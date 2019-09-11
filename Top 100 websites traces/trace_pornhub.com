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
           /* TID 0x76ac */
   264 ms  0x76ac SSL_ImportFD()
   264 ms  0x76ac ret:0x7f24e0bad1f0
   264 ms  0x76ac SSL_AuthCertificateHook()
   264 ms  0x76ac fd:0x7f24e0bad1f0
   264 ms  0x76ac ret:0x0
   264 ms  0x76ac PR_Connect()
   264 ms  0x76ac fd:0x7f24e0bad1f0
   482 ms  0x76ac SECKEY_CreateECPrivateKey()
   482 ms  0x76ac cx:0x7f24e0acfae8
   483 ms     | 0x76ac EC_ValidatePublicKey()
   483 ms     | 0x76ac ret:0x0
   483 ms  0x76ac ret:0x7f24e0b46820::7f24e0b46820  a0 8b ad e0                                      ....
   483 ms  0x76ac SECKEY_CreateECPrivateKey()
   483 ms  0x76ac cx:0x7f24e0acfae8
   485 ms     | 0x76ac EC_ValidatePublicKey()
   489 ms     | 0x76ac ret:0x0
   489 ms  0x76ac ret:0x7f24e0b48820::7f24e0b48820  60 8a ad e0                                      `...
           /* TID 0x7712 */
   525 ms  0x7712 PR_Close()
   525 ms  0x7712 fd:0x7f24e0b72790
   527 ms  0x7712 PR_Close()
   527 ms  0x7712 fd:0x7f24e0b72790
           /* TID 0x76ac */
   713 ms  SECKEY_ECParamsToKeySize()
   713 ms  0x76ac ret:0x100
   714 ms  0x76ac SECKEY_CreateECPrivateKey()
   714 ms  0x76ac cx:0x7f24e0acfae8
   715 ms     | 0x76ac EC_ValidatePublicKey()
   719 ms     | 0x76ac ret:0x0
   719 ms  0x76ac ret:0x7f24e0b51820::7f24e0b51820  e0 07 bf e0                                      ....
   719 ms  0x76ac PK11_PubDeriveWithKDF()
   719 ms  0x76ac seckey:0x7f24e0b51820
   719 ms     | 0x76ac EC_ValidatePublicKey()
   723 ms     | 0x76ac ret:0x0
   727 ms  0x76ac ret:0x7f24e26f4380
   727 ms  0x76ac PK11_DeriveWithFlags()
   727 ms  0x76ac basekey:0x7f24e26f4380
   727 ms     | 0x76ac PK11_DeriveWithTemplate()
   727 ms  0x76ac ret:0x7f24e0be1780
   727 ms  0x76ac PK11_Derive()
   727 ms  0x76ac basekey:0x7f24e0be1780
   727 ms     | 0x76ac PK11_DeriveWithTemplate()
   727 ms  0x76ac ret:0x7f24e0be1800
   727 ms  0x76ac SECKEY_DestroyPrivateKey()
   727 ms  0x76ac privk:0x7f24e0b51820::7f24e0b51820  e0 07 bf e0                                      ....
   727 ms  0x76ac privk:0x7f24e0b51820::7f24e0b51820  e5 e5 e5 e5                                      ....
   728 ms  0x76ac PK11_Encrypt()
   728 ms  0x76ac symkey:0x7f24e0be1980
   729 ms  0x76ac PR_Connect()
   729 ms  0x76ac fd:0x7f24e0badc40
           /* TID 0x7712 */
   750 ms  0x7712 PR_Close()
   750 ms  0x7712 fd:0x7f24e0badbe0
           /* TID 0x76b4 */
   782 ms  0x76b4 PR_Close()
   782 ms  0x76b4 fd:0x7f24e0badb80
           /* TID 0x7705 */
   782 ms  0x7705 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   782 ms  0x7705 ret:0x0
           /* TID 0x76ac */
   783 ms  0x76ac SSL_AuthCertificateComplete()
   783 ms  0x76ac fd:0x7f24e0bad1f0
   783 ms  0x76ac err:0x0
   783 ms  0x76ac PK11_Encrypt()
   783 ms  0x76ac symkey:0x7f24e0be1980
   946 ms  0x76ac SECKEY_DestroyPrivateKey()
   946 ms  0x76ac privk:0x7f24e0b48820::7f24e0b48820  60 8a ad e0                                      `...
   946 ms  0x76ac privk:0x7f24e0b48820::7f24e0b48820  e5 e5 e5 e5                                      ....
   946 ms  0x76ac SECKEY_DestroyPrivateKey()
   946 ms  0x76ac privk:0x7f24e0b46820::7f24e0b46820  a0 8b ad e0                                      ....
   946 ms  0x76ac privk:0x7f24e0b46820::7f24e0b46820  e5 e5 e5 e5                                      ....
  1214 ms  0x76ac SSL_ImportFD()
  1214 ms  0x76ac ret:0x7f24e0baddf0
  1214 ms  0x76ac SSL_AuthCertificateHook()
  1214 ms  0x76ac fd:0x7f24e0baddf0
  1214 ms  0x76ac ret:0x0
  1214 ms  0x76ac PR_Connect()
  1214 ms  0x76ac fd:0x7f24e0baddf0
  1240 ms  0x76ac SECKEY_CreateECPrivateKey()
  1240 ms  0x76ac cx:0x7f24e0bec588
  1240 ms     | 0x76ac EC_ValidatePublicKey()
  1240 ms     | 0x76ac ret:0x0
  1240 ms  0x76ac ret:0x7f24e0b48020::7f24e0b48020  e0 8c ad e0                                      ....
  1240 ms  0x76ac SECKEY_CreateECPrivateKey()
  1240 ms  0x76ac cx:0x7f24e0bec588
  1241 ms     | 0x76ac EC_ValidatePublicKey()
  1242 ms     | 0x76ac ret:0x0
  1242 ms  0x76ac ret:0x7f24e0b4e020::7f24e0b4e020  00 06 bf e0                                      ....
           /* TID 0x7705 */
  1297 ms  0x7705 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1297 ms  0x7705 ret:0x0
           /* TID 0x76ac */
  1298 ms  SECKEY_ECParamsToKeySize()
  1298 ms  0x76ac ret:0x100
  1298 ms  0x76ac SECKEY_CreateECPrivateKey()
  1298 ms  0x76ac cx:0x7f24e0bec588
  1300 ms     | 0x76ac EC_ValidatePublicKey()
  1303 ms     | 0x76ac ret:0x0
  1303 ms  0x76ac ret:0x7f24e0b51820::7f24e0b51820  80 08 bf e0                                      ....
  1303 ms  0x76ac PK11_PubDeriveWithKDF()
  1303 ms  0x76ac seckey:0x7f24e0b51820
  1303 ms     | 0x76ac EC_ValidatePublicKey()
  1307 ms     | 0x76ac ret:0x0
  1311 ms  0x76ac ret:0x7f24e26f4380
  1311 ms  0x76ac PK11_DeriveWithFlags()
  1311 ms  0x76ac basekey:0x7f24e26f4380
  1311 ms     | 0x76ac PK11_DeriveWithTemplate()
  1311 ms  0x76ac ret:0x7f24e0be2500
  1311 ms  0x76ac PK11_Derive()
  1311 ms  0x76ac basekey:0x7f24e0be2500
  1311 ms     | 0x76ac PK11_DeriveWithTemplate()
  1311 ms  0x76ac ret:0x7f24e0be2580
  1311 ms  0x76ac SECKEY_DestroyPrivateKey()
  1311 ms  0x76ac privk:0x7f24e0b51820::7f24e0b51820  80 08 bf e0                                      ....
  1312 ms  0x76ac privk:0x7f24e0b51820::7f24e0b51820  e5 e5 e5 e5                                      ....
  1312 ms  0x76ac PK11_Encrypt()
  1312 ms  0x76ac symkey:0x7f24e0be2700
  1312 ms  0x76ac SSL_AuthCertificateComplete()
  1312 ms  0x76ac fd:0x7f24e0baddf0
  1312 ms  0x76ac err:0x0
  1313 ms  0x76ac PK11_Encrypt()
  1313 ms  0x76ac symkey:0x7f24e0be2700
  1364 ms  0x76ac SECKEY_DestroyPrivateKey()
  1364 ms  0x76ac privk:0x7f24e0b4e020::7f24e0b4e020  00 06 bf e0                                      ....
  1364 ms  0x76ac privk:0x7f24e0b4e020::7f24e0b4e020  e5 e5 e5 e5                                      ....
  1364 ms  0x76ac SECKEY_DestroyPrivateKey()
  1364 ms  0x76ac privk:0x7f24e0b48020::7f24e0b48020  e0 8c ad e0                                      ....
  1364 ms  0x76ac privk:0x7f24e0b48020::7f24e0b48020  e5 e5 e5 e5                                      ....
  1367 ms  0x76ac PK11_Encrypt()
  1367 ms  0x76ac symkey:0x7f24e0be2700
  1396 ms  0x76ac PK11_Encrypt()
  1396 ms  0x76ac symkey:0x7f24e0be2700
  1425 ms  0x76ac PK11_Encrypt()
  1425 ms  0x76ac symkey:0x7f24e0be2700
  1453 ms  0x76ac PK11_Encrypt()
  1453 ms  0x76ac symkey:0x7f24e0be2700
  1570 ms  0x76ac PK11_Encrypt()
  1570 ms  0x76ac symkey:0x7f24e0be2700
  1602 ms  0x76ac PK11_Encrypt()
  1602 ms  0x76ac symkey:0x7f24e0be2700
  1634 ms  0x76ac PK11_Encrypt()
  1634 ms  0x76ac symkey:0x7f24e0be2700
           /* TID 0x76fe */
  1662 ms  0x76fe PR_Close()
  1662 ms  0x76fe fd:0x7f24cfb040a0
  1662 ms  0x76fe PR_Close()
  1662 ms  0x76fe fd:0x7f24cfb04100
  1662 ms  0x76fe PR_Close()
  1662 ms  0x76fe fd:0x7f24cfb040a0
  1662 ms  0x76fe PR_Close()
  1662 ms  0x76fe fd:0x7f24cfb04100
  1662 ms  0x76fe PR_Close()
  1662 ms  0x76fe fd:0x7f24cfb040a0
  1662 ms  0x76fe PR_Close()
  1662 ms  0x76fe fd:0x7f24cfb04100
  1662 ms  0x76fe PR_Close()
  1662 ms  0x76fe fd:0x7f24cfb040a0
  1662 ms  0x76fe PR_Close()
  1662 ms  0x76fe fd:0x7f24cfb04100
  1662 ms  0x76fe PR_Close()
  1662 ms  0x76fe fd:0x7f24cfb040a0
  1662 ms  0x76fe PR_Close()
  1662 ms  0x76fe fd:0x7f24cfb04100
  1662 ms  0x76fe PR_Close()
  1662 ms  0x76fe fd:0x7f24cfb040a0
  1663 ms  0x76fe PR_Close()
  1663 ms  0x76fe fd:0x7f24cfb04100
  1663 ms  0x76fe PR_Close()
  1663 ms  0x76fe fd:0x7f24cfb040a0
  1663 ms  0x76fe PR_Close()
  1663 ms  0x76fe fd:0x7f24cfb04100
  1663 ms  0x76fe PR_Close()
  1663 ms  0x76fe fd:0x7f24cfb040a0
  1663 ms  0x76fe PR_Close()
  1663 ms  0x76fe fd:0x7f24cfb04100
  1663 ms  0x76fe PR_Close()
  1663 ms  0x76fe fd:0x7f24cfb040a0
  1663 ms  0x76fe PR_Close()
  1663 ms  0x76fe fd:0x7f24cfb04100
  1663 ms  0x76fe PR_Close()
  1663 ms  0x76fe fd:0x7f24cfb040a0
  1663 ms  0x76fe PR_Close()
  1663 ms  0x76fe fd:0x7f24cfb04100
  1663 ms  0x76fe PR_Close()
  1663 ms  0x76fe fd:0x7f24cfb040a0
  1663 ms  0x76fe PR_Close()
  1663 ms  0x76fe fd:0x7f24cfb04100
  1663 ms  0x76fe PR_Close()
  1663 ms  0x76fe fd:0x7f24cfb040a0
  1663 ms  0x76fe PR_Close()
  1663 ms  0x76fe fd:0x7f24cfb04100
  1663 ms  0x76fe PR_Close()
  1663 ms  0x76fe fd:0x7f24cfb040a0
  1664 ms  0x76fe PR_Close()
  1664 ms  0x76fe fd:0x7f24cfb04100
  1664 ms  0x76fe PR_Close()
  1664 ms  0x76fe fd:0x7f24cfb040a0
  1664 ms  0x76fe PR_Close()
  1664 ms  0x76fe fd:0x7f24cfb04100
  1667 ms  0x76fe PR_Close()
  1667 ms  0x76fe fd:0x7f24cfb040a0
  1667 ms  0x76fe PR_Close()
  1667 ms  0x76fe fd:0x7f24cfb04070
  1670 ms  0x76fe PR_Close()
  1670 ms  0x76fe fd:0x7f24cfb04070
  1670 ms  0x76fe PR_Close()
  1670 ms  0x76fe fd:0x7f24cfb040a0
  1673 ms  0x76fe PR_Close()
  1673 ms  0x76fe fd:0x7f24cfb040a0
  1673 ms  0x76fe PR_Close()
  1673 ms  0x76fe fd:0x7f24cfb040a0
  1675 ms  0x76fe PR_Close()
  1675 ms  0x76fe fd:0x7f24cfb040a0
  1676 ms  0x76fe PR_Close()
  1676 ms  0x76fe fd:0x7f24cfb040a0
  1740 ms  0x76fe PR_Close()
  1740 ms  0x76fe fd:0x7f24cfb040a0
  1741 ms  0x76fe PR_Close()
  1741 ms  0x76fe fd:0x7f24cfb040a0
  1748 ms  0x76fe PR_Close()
  1748 ms  0x76fe fd:0x7f24cfb040a0
  1748 ms  0x76fe PR_Close()
  1748 ms  0x76fe fd:0x7f24cfb040a0
  1754 ms  0x76fe PR_Close()
  1754 ms  0x76fe fd:0x7f24cfb040a0
  1754 ms  0x76fe PR_Close()
  1754 ms  0x76fe fd:0x7f24cfb040a0
  1756 ms  0x76fe PR_Close()
  1756 ms  0x76fe fd:0x7f24cfb040a0
  1756 ms  0x76fe PR_Close()
  1756 ms  0x76fe fd:0x7f24cfb040a0
           /* TID 0x76fc */
  1756 ms  0x76fc PR_Close()
  1756 ms  0x76fc fd:0x7f24cfb040a0
  1757 ms  0x76fc PR_Close()
  1757 ms  0x76fc fd:0x7f24cfb040a0
  1757 ms  0x76fc PR_Close()
  1757 ms  0x76fc fd:0x7f24cfb040a0
  1757 ms  0x76fc PR_Close()
  1757 ms  0x76fc fd:0x7f24cfb040a0
  1757 ms  0x76fc PR_Close()
  1757 ms  0x76fc fd:0x7f24cfb040a0
  1757 ms  0x76fc PR_Close()
  1757 ms  0x76fc fd:0x7f24cfb040a0
  1757 ms  0x76fc PR_Close()
  1757 ms  0x76fc fd:0x7f24cfb040a0
  1757 ms  0x76fc PR_Close()
  1757 ms  0x76fc fd:0x7f24cfb040a0
  1757 ms  0x76fc PR_Close()
  1757 ms  0x76fc fd:0x7f24cfb040a0
  1757 ms  0x76fc PR_Close()
  1757 ms  0x76fc fd:0x7f24cfb040a0
  1757 ms  0x76fc PR_Close()
  1757 ms  0x76fc fd:0x7f24cfb040a0
  1757 ms  0x76fc PR_Close()
  1757 ms  0x76fc fd:0x7f24cfb040a0
  1757 ms  0x76fc PR_Close()
  1757 ms  0x76fc fd:0x7f24cfb040a0
  1757 ms  0x76fc PR_Close()
  1757 ms  0x76fc fd:0x7f24cfb040a0
  1757 ms  0x76fc PR_Close()
  1757 ms  0x76fc fd:0x7f24cfb040a0
           /* TID 0x7712 */
  2260 ms  0x7712 PR_Close()
  2260 ms  0x7712 fd:0x7f24cfb04460
  2263 ms  0x7712 PR_Close()
  2263 ms  0x7712 fd:0x7f24cfb04460
  2806 ms  0x7712 PR_Close()
  2806 ms  0x7712 fd:0x7f24cfb04460
           /* TID 0x76b4 */
  4145 ms  0x76b4 PR_Close()
  4145 ms  0x76b4 fd:0x7f24cfb04460
  4145 ms  0x76b4 PR_Close()
  4145 ms  0x76b4 fd:0x7f24cfb045b0
           /* TID 0x76ac */
  4488 ms  0x76ac SSL_ImportFD()
  4488 ms  0x76ac ret:0x7f24cfaea610
  4488 ms  0x76ac SSL_AuthCertificateHook()
  4488 ms  0x76ac fd:0x7f24cfaea610
  4488 ms  0x76ac ret:0x0
  4488 ms  0x76ac PR_Connect()
  4488 ms  0x76ac fd:0x7f24cfaea610
  4529 ms  0x76ac SECKEY_CreateECPrivateKey()
  4529 ms  0x76ac cx:0x7f24e0bec8c8
  4531 ms     | 0x76ac EC_ValidatePublicKey()
  4531 ms     | 0x76ac ret:0x0
  4531 ms  0x76ac ret:0x7f24cfa97020::7f24cfa97020  a0 86 ac cf                                      ....
  4531 ms  0x76ac SECKEY_CreateECPrivateKey()
  4531 ms  0x76ac cx:0x7f24e0bec8c8
  4534 ms     | 0x76ac EC_ValidatePublicKey()
  4541 ms     | 0x76ac ret:0x0
  4541 ms  0x76ac ret:0x7f24cfa99020::7f24cfa99020  80 88 ac cf                                      ....
  4587 ms  SECKEY_ECParamsToKeySize()
  4587 ms  0x76ac ret:0x100
  4587 ms  SECKEY_ECParamsToBasePointOrderLen()
  4587 ms  0x76ac ret:0x100
  4587 ms  SECKEY_ECParamsToBasePointOrderLen()
  4588 ms  0x76ac ret:0x100
  4588 ms  0x76ac EC_ValidatePublicKey()
  4593 ms  0x76ac ret:0x0
  4598 ms  SECKEY_ECParamsToKeySize()
  4598 ms  0x76ac ret:0x100
  4598 ms  0x76ac SECKEY_CreateECPrivateKey()
  4598 ms  0x76ac cx:0x7f24e0bec8c8
  4602 ms     | 0x76ac EC_ValidatePublicKey()
  4605 ms     | 0x76ac ret:0x0
  4606 ms  0x76ac ret:0x7f24cfaa6020::7f24cfaa6020  60 8f af cf                                      `...
  4606 ms  0x76ac PK11_PubDeriveWithKDF()
  4606 ms  0x76ac seckey:0x7f24cfaa6020
  4606 ms     | 0x76ac EC_ValidatePublicKey()
  4611 ms     | 0x76ac ret:0x0
  4614 ms  0x76ac ret:0x7f24e26f4380
  4614 ms  0x76ac PK11_DeriveWithFlags()
  4614 ms  0x76ac basekey:0x7f24e26f4380
  4614 ms     | 0x76ac PK11_DeriveWithTemplate()
  4614 ms  0x76ac ret:0x7f24cfab4c00
  4614 ms  0x76ac PK11_Derive()
  4614 ms  0x76ac basekey:0x7f24cfab4c00
  4614 ms     | 0x76ac PK11_DeriveWithTemplate()
  4614 ms  0x76ac ret:0x7f24cfab4c80
  4614 ms  0x76ac SECKEY_DestroyPrivateKey()
  4614 ms  0x76ac privk:0x7f24cfaa6020::7f24cfaa6020  60 8f af cf                                      `...
  4615 ms  0x76ac privk:0x7f24cfaa6020::7f24cfaa6020  e5 e5 e5 e5                                      ....
  4615 ms  0x76ac PK11_Encrypt()
  4615 ms  0x76ac symkey:0x7f24cfab4e00
           /* TID 0x76b4 */
  4641 ms  0x76b4 PR_Close()
  4641 ms  0x76b4 fd:0x7f24cfaea430
           /* TID 0x7705 */
  4642 ms  0x7705 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4642 ms  0x7705 ret:0x0
           /* TID 0x76ac */
  4647 ms  0x76ac SSL_AuthCertificateComplete()
  4647 ms  0x76ac fd:0x7f24cfaea610
  4647 ms  0x76ac err:0x0
  4648 ms  0x76ac PK11_Encrypt()
  4648 ms  0x76ac symkey:0x7f24cfab4e00
  4656 ms  0x76ac SECKEY_DestroyPrivateKey()
  4656 ms  0x76ac privk:0x7f24cfa99020::7f24cfa99020  80 88 ac cf                                      ....
  4656 ms  0x76ac privk:0x7f24cfa99020::7f24cfa99020  e5 e5 e5 e5                                      ....
  4656 ms  0x76ac SECKEY_DestroyPrivateKey()
  4656 ms  0x76ac privk:0x7f24cfa97020::7f24cfa97020  a0 86 ac cf                                      ....
  4656 ms  0x76ac privk:0x7f24cfa97020::7f24cfa97020  e5 e5 e5 e5                                      ....
           /* TID 0x76c3 */
  4800 ms  0x76c3 PR_Close()
  4800 ms  0x76c3 fd:0x7f24cfaead60
           /* TID 0x76b4 */
  4876 ms  0x76b4 PR_Close()
  4876 ms  0x76b4 fd:0x7f24e0b7cac0
           /* TID 0x76ac */
  4943 ms  0x76ac SSL_ImportFD()
  4943 ms  0x76ac ret:0x7f24cf91a670
  4944 ms  0x76ac SSL_AuthCertificateHook()
  4944 ms  0x76ac fd:0x7f24cf91a670
  4944 ms  0x76ac ret:0x0
  4944 ms  0x76ac PR_Connect()
  4944 ms  0x76ac fd:0x7f24cf91a670
  4944 ms  0x76ac SSL_ImportFD()
  4944 ms  0x76ac ret:0x7f24cf91acd0
  4944 ms  0x76ac SSL_AuthCertificateHook()
  4944 ms  0x76ac fd:0x7f24cf91acd0
  4944 ms  0x76ac ret:0x0
  4944 ms  0x76ac PR_Connect()
  4944 ms  0x76ac fd:0x7f24cf91acd0
  4944 ms  0x76ac SSL_ImportFD()
  4944 ms  0x76ac ret:0x7f24cf8be0a0
  4944 ms  0x76ac SSL_AuthCertificateHook()
  4944 ms  0x76ac fd:0x7f24cf8be0a0
  4944 ms  0x76ac ret:0x0
  4944 ms  0x76ac PR_Connect()
  4944 ms  0x76ac fd:0x7f24cf8be0a0
  4944 ms  0x76ac SSL_ImportFD()
  4944 ms  0x76ac ret:0x7f24cf8be190
  4944 ms  0x76ac SSL_AuthCertificateHook()
  4944 ms  0x76ac fd:0x7f24cf8be190
  4944 ms  0x76ac ret:0x0
  4944 ms  0x76ac PR_Connect()
  4944 ms  0x76ac fd:0x7f24cf8be190
  4944 ms  0x76ac SSL_ImportFD()
  4944 ms  0x76ac ret:0x7f24cf8becd0
  4944 ms  0x76ac SSL_AuthCertificateHook()
  4944 ms  0x76ac fd:0x7f24cf8becd0
  4944 ms  0x76ac ret:0x0
  4945 ms  0x76ac PR_Connect()
  4945 ms  0x76ac fd:0x7f24cf8becd0
  4945 ms  0x76ac SSL_ImportFD()
  4945 ms  0x76ac ret:0x7f24cf8bed00
  4945 ms  0x76ac SSL_AuthCertificateHook()
  4945 ms  0x76ac fd:0x7f24cf8bed00
  4945 ms  0x76ac ret:0x0
  4945 ms  0x76ac PR_Connect()
  4945 ms  0x76ac fd:0x7f24cf8bed00
  4945 ms  0x76ac SSL_ImportFD()
  4945 ms  0x76ac ret:0x7f24cf8bed30
  4945 ms  0x76ac SSL_AuthCertificateHook()
  4945 ms  0x76ac fd:0x7f24cf8bed30
  4945 ms  0x76ac ret:0x0
  4945 ms  0x76ac PR_Connect()
  4945 ms  0x76ac fd:0x7f24cf8bed30
  4945 ms  0x76ac SSL_ImportFD()
  4945 ms  0x76ac ret:0x7f24cf8bef40
  4945 ms  0x76ac SSL_AuthCertificateHook()
  4945 ms  0x76ac fd:0x7f24cf8bef40
  4945 ms  0x76ac ret:0x0
  4945 ms  0x76ac PR_Connect()
  4945 ms  0x76ac fd:0x7f24cf8bef40
  4949 ms  0x76ac SSL_ImportFD()
  4949 ms  0x76ac ret:0x7f24cf8b6910
  4949 ms  0x76ac SSL_AuthCertificateHook()
  4949 ms  0x76ac fd:0x7f24cf8b6910
  4949 ms  0x76ac ret:0x0
  4949 ms  0x76ac PR_Connect()
  4949 ms  0x76ac fd:0x7f24cf8b6910
  4985 ms  0x76ac SECKEY_CreateECPrivateKey()
  4985 ms  0x76ac cx:0x7f24e0becc08
  4987 ms     | 0x76ac EC_ValidatePublicKey()
  4987 ms     | 0x76ac ret:0x0
  4987 ms  0x76ac ret:0x7f24cfb53820::7f24cfb53820  50 7b a6 cf                                      P{..
  4987 ms  0x76ac SECKEY_CreateECPrivateKey()
  4987 ms  0x76ac cx:0x7f24e0becc08
  4989 ms     | 0x76ac EC_ValidatePublicKey()
  4994 ms     | 0x76ac ret:0x0
  4994 ms  0x76ac ret:0x7f24cfb55820::7f24cfb55820  80 78 a6 cf                                      .x..
  5001 ms  0x76ac SECKEY_CreateECPrivateKey()
  5001 ms  0x76ac cx:0x7f24e0bed428
  5002 ms     | 0x76ac EC_ValidatePublicKey()
  5002 ms     | 0x76ac ret:0x0
  5002 ms  0x76ac ret:0x7f24cfb58020::7f24cfb58020  90 7c a6 cf                                      .|..
  5002 ms  0x76ac SECKEY_CreateECPrivateKey()
  5002 ms  0x76ac cx:0x7f24e0bed428
  5004 ms     | 0x76ac EC_ValidatePublicKey()
  5007 ms     | 0x76ac ret:0x0
  5007 ms  0x76ac ret:0x7f24cfb5a020::7f24cfb5a020  c0 7e a6 cf                                      .~..
  5008 ms  0x76ac SECKEY_CreateECPrivateKey()
  5008 ms  0x76ac cx:0x7f24e0bed288
  5009 ms     | 0x76ac EC_ValidatePublicKey()
  5009 ms     | 0x76ac ret:0x0
  5009 ms  0x76ac ret:0x7f24cfb5c820::7f24cfb5c820  60 65 b4 cf                                      `e..
  5009 ms  0x76ac SECKEY_CreateECPrivateKey()
  5009 ms  0x76ac cx:0x7f24e0bed288
  5010 ms     | 0x76ac EC_ValidatePublicKey()
  5013 ms     | 0x76ac ret:0x0
  5013 ms  0x76ac ret:0x7f24cfb5e820::7f24cfb5e820  50 6b b4 cf                                      Pk..
  5014 ms  0x76ac SECKEY_CreateECPrivateKey()
  5014 ms  0x76ac cx:0x7f24e0bed0e8
  5015 ms     | 0x76ac EC_ValidatePublicKey()
  5015 ms     | 0x76ac ret:0x0
  5015 ms  0x76ac ret:0x7f24cfb61020::7f24cfb61020  10 6f b4 cf                                      .o..
  5015 ms  0x76ac SECKEY_CreateECPrivateKey()
  5015 ms  0x76ac cx:0x7f24e0bed0e8
  5017 ms     | 0x76ac EC_ValidatePublicKey()
  5019 ms     | 0x76ac ret:0x0
  5019 ms  0x76ac ret:0x7f24cfb63020::7f24cfb63020  f0 f1 bf cf                                      ....
  5020 ms  0x76ac SECKEY_CreateECPrivateKey()
  5020 ms  0x76ac cx:0x7f24e0becf48
  5020 ms     | 0x76ac EC_ValidatePublicKey()
  5020 ms     | 0x76ac ret:0x0
  5020 ms  0x76ac ret:0x7f24cfb65820::7f24cfb65820  30 f3 bf cf                                      0...
  5020 ms  0x76ac SECKEY_CreateECPrivateKey()
  5020 ms  0x76ac cx:0x7f24e0becf48
  5021 ms     | 0x76ac EC_ValidatePublicKey()
  5023 ms     | 0x76ac ret:0x0
  5023 ms  0x76ac ret:0x7f24cfb67820::7f24cfb67820  10 f5 bf cf                                      ....
  5024 ms  0x76ac SECKEY_CreateECPrivateKey()
  5024 ms  0x76ac cx:0x7f24e0bed908
  5024 ms     | 0x76ac EC_ValidatePublicKey()
  5024 ms     | 0x76ac ret:0x0
  5024 ms  0x76ac ret:0x7f24cfb6a020::7f24cfb6a020  50 f6 bf cf                                      P...
  5024 ms  0x76ac SECKEY_CreateECPrivateKey()
  5024 ms  0x76ac cx:0x7f24e0bed908
  5025 ms     | 0x76ac EC_ValidatePublicKey()
  5027 ms     | 0x76ac ret:0x0
  5027 ms  0x76ac ret:0x7f24cfb6c020::7f24cfb6c020  30 f8 bf cf                                      0...
  5027 ms  0x76ac SECKEY_CreateECPrivateKey()
  5027 ms  0x76ac cx:0x7f24e0bed768
  5028 ms     | 0x76ac EC_ValidatePublicKey()
  5028 ms     | 0x76ac ret:0x0
  5028 ms  0x76ac ret:0x7f24cfb6e820::7f24cfb6e820  70 f9 bf cf                                      p...
  5028 ms  0x76ac SECKEY_CreateECPrivateKey()
  5028 ms  0x76ac cx:0x7f24e0bed768
  5029 ms     | 0x76ac EC_ValidatePublicKey()
  5030 ms     | 0x76ac ret:0x0
  5030 ms  0x76ac ret:0x7f24e59a4020::7f24e59a4020  50 fb bf cf                                      P...
  5031 ms  0x76ac SECKEY_CreateECPrivateKey()
  5031 ms  0x76ac cx:0x7f24e0bed5c8
  5031 ms     | 0x76ac EC_ValidatePublicKey()
  5032 ms     | 0x76ac ret:0x0
  5032 ms  0x76ac ret:0x7f24cf722820::7f24cf722820  90 fc bf cf                                      ....
  5032 ms  0x76ac SECKEY_CreateECPrivateKey()
  5032 ms  0x76ac cx:0x7f24e0bed5c8
  5032 ms     | 0x76ac EC_ValidatePublicKey()
  5034 ms     | 0x76ac ret:0x0
  5034 ms  0x76ac ret:0x7f24cf724820::7f24cf724820  70 fe bf cf                                      p...
  5034 ms  0x76ac SECKEY_CreateECPrivateKey()
  5034 ms  0x76ac cx:0x7f24e0bedaa8
  5034 ms     | 0x76ac EC_ValidatePublicKey()
  5034 ms     | 0x76ac ret:0x0
  5034 ms  0x76ac ret:0x7f24cf727020::7f24cf727020  b0 ff bf cf                                      ....
  5035 ms  0x76ac SECKEY_CreateECPrivateKey()
  5035 ms  0x76ac cx:0x7f24e0bedaa8
  5035 ms     | 0x76ac EC_ValidatePublicKey()
  5037 ms     | 0x76ac ret:0x0
  5037 ms  0x76ac ret:0x7f24cf729020::7f24cf729020  f0 21 75 cf                                      .!u.
           /* TID 0x7705 */
  5038 ms  0x7705 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5038 ms  0x7705 ret:0x0
           /* TID 0x76ac */
  5038 ms  SECKEY_ECParamsToKeySize()
  5038 ms  0x76ac ret:0x100
  5038 ms  0x76ac SECKEY_CreateECPrivateKey()
  5038 ms  0x76ac cx:0x7f24e0becc08
  5039 ms     | 0x76ac EC_ValidatePublicKey()
  5040 ms     | 0x76ac ret:0x0
  5040 ms  0x76ac ret:0x7f24cf72f820::7f24cf72f820  00 26 75 cf                                      .&u.
  5040 ms  0x76ac PK11_PubDeriveWithKDF()
  5040 ms  0x76ac seckey:0x7f24cf72f820
  5040 ms     | 0x76ac EC_ValidatePublicKey()
  5042 ms     | 0x76ac ret:0x0
  5043 ms  0x76ac ret:0x7f24e26f4380
  5043 ms  0x76ac PK11_DeriveWithFlags()
  5043 ms  0x76ac basekey:0x7f24e26f4380
  5043 ms     | 0x76ac PK11_DeriveWithTemplate()
  5043 ms  0x76ac ret:0x7f24cfb3e400
  5043 ms  0x76ac PK11_Derive()
  5043 ms  0x76ac basekey:0x7f24cfb3e400
  5043 ms     | 0x76ac PK11_DeriveWithTemplate()
  5043 ms  0x76ac ret:0x7f24cfb3e480
  5043 ms  0x76ac SECKEY_DestroyPrivateKey()
  5043 ms  0x76ac privk:0x7f24cf72f820::7f24cf72f820  00 26 75 cf                                      .&u.
  5043 ms  0x76ac privk:0x7f24cf72f820::7f24cf72f820  e5 e5 e5 e5                                      ....
  5043 ms  0x76ac PK11_Encrypt()
  5043 ms  0x76ac symkey:0x7f24cfb3e600
  5043 ms  0x76ac SSL_AuthCertificateComplete()
  5043 ms  0x76ac fd:0x7f24cf91a670
  5043 ms  0x76ac err:0x0
  5044 ms  0x76ac PK11_Encrypt()
  5044 ms  0x76ac symkey:0x7f24cfb3e600
           /* TID 0x7705 */
  5057 ms  0x7705 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5057 ms  0x7705 ret:0x0
           /* TID 0x76ac */
  5057 ms  SECKEY_ECParamsToKeySize()
  5057 ms  0x76ac ret:0x100
  5057 ms  0x76ac SECKEY_CreateECPrivateKey()
  5057 ms  0x76ac cx:0x7f24e0bed428
  5058 ms     | 0x76ac EC_ValidatePublicKey()
  5062 ms     | 0x76ac ret:0x0
  5062 ms  0x76ac ret:0x7f24cf730820::7f24cf730820  f0 26 75 cf                                      .&u.
  5062 ms  0x76ac PK11_PubDeriveWithKDF()
  5062 ms  0x76ac seckey:0x7f24cf730820
  5062 ms     | 0x76ac EC_ValidatePublicKey()
  5065 ms     | 0x76ac ret:0x0
  5067 ms  0x76ac ret:0x7f24e26f4380
  5067 ms  0x76ac PK11_DeriveWithFlags()
  5067 ms  0x76ac basekey:0x7f24e26f4380
  5067 ms     | 0x76ac PK11_DeriveWithTemplate()
  5067 ms  0x76ac ret:0x7f24cf8ff680
  5067 ms  0x76ac PK11_Derive()
  5067 ms  0x76ac basekey:0x7f24cf8ff680
  5067 ms     | 0x76ac PK11_DeriveWithTemplate()
  5068 ms  0x76ac ret:0x7f24cfb3e780
  5068 ms  0x76ac SECKEY_DestroyPrivateKey()
  5068 ms  0x76ac privk:0x7f24cf730820::7f24cf730820  f0 26 75 cf                                      .&u.
  5068 ms  0x76ac privk:0x7f24cf730820::7f24cf730820  e5 e5 e5 e5                                      ....
  5068 ms  0x76ac PK11_Encrypt()
  5068 ms  0x76ac symkey:0x7f24cfb3e900
  5068 ms  0x76ac SSL_AuthCertificateComplete()
  5068 ms  0x76ac fd:0x7f24cf8becd0
  5068 ms  0x76ac err:0x0
  5069 ms  0x76ac PK11_Encrypt()
  5069 ms  0x76ac symkey:0x7f24cfb3e900
           /* TID 0x7705 */
  5070 ms  0x7705 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5070 ms  0x7705 ret:0x0
           /* TID 0x76ac */
  5070 ms  SECKEY_ECParamsToKeySize()
  5070 ms  0x76ac ret:0x100
  5070 ms  0x76ac SECKEY_CreateECPrivateKey()
  5070 ms  0x76ac cx:0x7f24e0bed288
  5071 ms     | 0x76ac EC_ValidatePublicKey()
  5073 ms     | 0x76ac ret:0x0
  5073 ms  0x76ac ret:0x7f24cf731820::7f24cf731820  d0 28 75 cf                                      .(u.
  5073 ms  0x76ac PK11_PubDeriveWithKDF()
  5073 ms  0x76ac seckey:0x7f24cf731820
  5073 ms     | 0x76ac EC_ValidatePublicKey()
  5074 ms     | 0x76ac ret:0x0
  5077 ms  0x76ac ret:0x7f24e26f4380
  5077 ms  0x76ac PK11_DeriveWithFlags()
  5077 ms  0x76ac basekey:0x7f24e26f4380
  5077 ms     | 0x76ac PK11_DeriveWithTemplate()
  5077 ms  0x76ac ret:0x7f24cfb3ea80
  5077 ms  0x76ac PK11_Derive()
  5077 ms  0x76ac basekey:0x7f24cfb3ea80
  5077 ms     | 0x76ac PK11_DeriveWithTemplate()
  5077 ms  0x76ac ret:0x7f24cfb3eb00
  5077 ms  0x76ac SECKEY_DestroyPrivateKey()
  5077 ms  0x76ac privk:0x7f24cf731820::7f24cf731820  d0 28 75 cf                                      .(u.
  5077 ms  0x76ac privk:0x7f24cf731820::7f24cf731820  e5 e5 e5 e5                                      ....
  5077 ms  0x76ac PK11_Encrypt()
  5077 ms  0x76ac symkey:0x7f24cfb3ec80
           /* TID 0x7705 */
  5078 ms  0x7705 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5078 ms  0x7705 ret:0x0
           /* TID 0x76ac */
  5078 ms  SECKEY_ECParamsToKeySize()
  5078 ms  0x76ac ret:0x100
  5078 ms  0x76ac SECKEY_CreateECPrivateKey()
  5078 ms  0x76ac cx:0x7f24e0bed0e8
  5079 ms     | 0x76ac EC_ValidatePublicKey()
  5080 ms     | 0x76ac ret:0x0
  5080 ms  0x76ac ret:0x7f24cf732820::7f24cf732820  60 2a 75 cf                                      `*u.
  5080 ms  0x76ac PK11_PubDeriveWithKDF()
  5080 ms  0x76ac seckey:0x7f24cf732820
  5080 ms     | 0x76ac EC_ValidatePublicKey()
  5082 ms     | 0x76ac ret:0x0
  5083 ms  0x76ac ret:0x7f24e26f4380
  5083 ms  0x76ac PK11_DeriveWithFlags()
  5083 ms  0x76ac basekey:0x7f24e26f4380
  5083 ms     | 0x76ac PK11_DeriveWithTemplate()
  5083 ms  0x76ac ret:0x7f24cfb3ed80
  5083 ms  0x76ac PK11_Derive()
  5083 ms  0x76ac basekey:0x7f24cfb3ed80
  5083 ms     | 0x76ac PK11_DeriveWithTemplate()
  5083 ms  0x76ac ret:0x7f24cfb3ee00
  5083 ms  0x76ac SECKEY_DestroyPrivateKey()
  5083 ms  0x76ac privk:0x7f24cf732820::7f24cf732820  60 2a 75 cf                                      `*u.
  5083 ms  0x76ac privk:0x7f24cf732820::7f24cf732820  e5 e5 e5 e5                                      ....
  5084 ms  0x76ac PK11_Encrypt()
  5084 ms  0x76ac symkey:0x7f24cfb3ef80
           /* TID 0x7705 */
  5084 ms  0x7705 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5084 ms  0x7705 ret:0x0
           /* TID 0x76ac */
  5084 ms  SECKEY_ECParamsToKeySize()
  5084 ms  0x76ac ret:0x100
  5084 ms  0x76ac SECKEY_CreateECPrivateKey()
  5084 ms  0x76ac cx:0x7f24e0becf48
  5085 ms     | 0x76ac EC_ValidatePublicKey()
  5086 ms     | 0x76ac ret:0x0
  5086 ms  0x76ac ret:0x7f24cf733820::7f24cf733820  a0 2b 75 cf                                      .+u.
  5087 ms  0x76ac PK11_PubDeriveWithKDF()
  5087 ms  0x76ac seckey:0x7f24cf733820
  5087 ms     | 0x76ac EC_ValidatePublicKey()
  5088 ms     | 0x76ac ret:0x0
  5089 ms  0x76ac ret:0x7f24e26f4380
  5089 ms  0x76ac PK11_DeriveWithFlags()
  5089 ms  0x76ac basekey:0x7f24e26f4380
  5089 ms     | 0x76ac PK11_DeriveWithTemplate()
  5089 ms  0x76ac ret:0x7f24cfb3f080
  5089 ms  0x76ac PK11_Derive()
  5089 ms  0x76ac basekey:0x7f24cfb3f080
  5089 ms     | 0x76ac PK11_DeriveWithTemplate()
  5089 ms  0x76ac ret:0x7f24cfb3f100
  5090 ms  0x76ac SECKEY_DestroyPrivateKey()
  5090 ms  0x76ac privk:0x7f24cf733820::7f24cf733820  a0 2b 75 cf                                      .+u.
  5090 ms  0x76ac privk:0x7f24cf733820::7f24cf733820  e5 e5 e5 e5                                      ....
  5090 ms  0x76ac PK11_Encrypt()
  5090 ms  0x76ac symkey:0x7f24cfb3f280
  5090 ms  0x76ac SSL_AuthCertificateComplete()
  5090 ms  0x76ac fd:0x7f24cf8be190
  5090 ms  0x76ac err:0x0
  5090 ms  0x76ac SSL_AuthCertificateComplete()
  5090 ms  0x76ac fd:0x7f24cf8be0a0
  5090 ms  0x76ac err:0x0
  5090 ms  0x76ac SSL_AuthCertificateComplete()
  5090 ms  0x76ac fd:0x7f24cf91acd0
  5090 ms  0x76ac err:0x0
           /* TID 0x7705 */
  5090 ms  0x7705 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5091 ms  0x7705 ret:0x0
           /* TID 0x76ac */
  5091 ms  SECKEY_ECParamsToKeySize()
  5091 ms  0x76ac ret:0x100
  5091 ms  0x76ac SECKEY_CreateECPrivateKey()
  5091 ms  0x76ac cx:0x7f24e0bed908
  5091 ms     | 0x76ac EC_ValidatePublicKey()
  5093 ms     | 0x76ac ret:0x0
  5093 ms  0x76ac ret:0x7f24cf734820::7f24cf734820  40 2c 75 cf                                      @,u.
  5093 ms  0x76ac PK11_PubDeriveWithKDF()
  5093 ms  0x76ac seckey:0x7f24cf734820
  5093 ms     | 0x76ac EC_ValidatePublicKey()
  5094 ms     | 0x76ac ret:0x0
  5096 ms  0x76ac ret:0x7f24e26f4380
  5096 ms  0x76ac PK11_DeriveWithFlags()
  5096 ms  0x76ac basekey:0x7f24e26f4380
  5096 ms     | 0x76ac PK11_DeriveWithTemplate()
  5096 ms  0x76ac ret:0x7f24cfb3f380
  5096 ms  0x76ac PK11_Derive()
  5096 ms  0x76ac basekey:0x7f24cfb3f380
  5096 ms     | 0x76ac PK11_DeriveWithTemplate()
  5096 ms  0x76ac ret:0x7f24cfb3f400
  5096 ms  0x76ac SECKEY_DestroyPrivateKey()
  5096 ms  0x76ac privk:0x7f24cf734820::7f24cf734820  40 2c 75 cf                                      @,u.
  5096 ms  0x76ac privk:0x7f24cf734820::7f24cf734820  e5 e5 e5 e5                                      ....
  5096 ms  0x76ac PK11_Encrypt()
  5096 ms  0x76ac symkey:0x7f24cfb3f580
           /* TID 0x7705 */
  5097 ms  0x7705 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5097 ms  0x7705 ret:0x0
           /* TID 0x76ac */
  5097 ms  SECKEY_ECParamsToKeySize()
  5097 ms  0x76ac ret:0x100
  5097 ms  0x76ac SECKEY_CreateECPrivateKey()
  5097 ms  0x76ac cx:0x7f24e0bed768
  5098 ms     | 0x76ac EC_ValidatePublicKey()
  5099 ms     | 0x76ac ret:0x0
  5099 ms  0x76ac ret:0x7f24cf735020::7f24cf735020  e0 2c 75 cf                                      .,u.
  5099 ms  0x76ac PK11_PubDeriveWithKDF()
  5099 ms  0x76ac seckey:0x7f24cf735020
  5099 ms     | 0x76ac EC_ValidatePublicKey()
  5101 ms     | 0x76ac ret:0x0
  5102 ms  0x76ac ret:0x7f24e26f4380
  5102 ms  0x76ac PK11_DeriveWithFlags()
  5102 ms  0x76ac basekey:0x7f24e26f4380
  5102 ms     | 0x76ac PK11_DeriveWithTemplate()
  5102 ms  0x76ac ret:0x7f24cfb3f680
  5102 ms  0x76ac PK11_Derive()
  5102 ms  0x76ac basekey:0x7f24cfb3f680
  5102 ms     | 0x76ac PK11_DeriveWithTemplate()
  5102 ms  0x76ac ret:0x7f24cfb3f700
  5102 ms  0x76ac SECKEY_DestroyPrivateKey()
  5102 ms  0x76ac privk:0x7f24cf735020::7f24cf735020  e0 2c 75 cf                                      .,u.
  5102 ms  0x76ac privk:0x7f24cf735020::7f24cf735020  e5 e5 e5 e5                                      ....
  5102 ms  0x76ac PK11_Encrypt()
  5102 ms  0x76ac symkey:0x7f24cfb3f880
           /* TID 0x7705 */
  5103 ms  0x7705 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5103 ms  0x7705 ret:0x0
           /* TID 0x76ac */
  5103 ms  SECKEY_ECParamsToKeySize()
  5103 ms  0x76ac ret:0x100
  5103 ms  0x76ac SECKEY_CreateECPrivateKey()
  5103 ms  0x76ac cx:0x7f24e0bed5c8
  5104 ms     | 0x76ac EC_ValidatePublicKey()
  5105 ms     | 0x76ac ret:0x0
  5105 ms  0x76ac ret:0x7f24cf735820::7f24cf735820  80 2d 75 cf                                      .-u.
  5105 ms  0x76ac PK11_PubDeriveWithKDF()
  5105 ms  0x76ac seckey:0x7f24cf735820
  5105 ms     | 0x76ac EC_ValidatePublicKey()
  5107 ms     | 0x76ac ret:0x0
  5108 ms  0x76ac ret:0x7f24e26f4380
  5108 ms  0x76ac PK11_DeriveWithFlags()
  5108 ms  0x76ac basekey:0x7f24e26f4380
  5108 ms     | 0x76ac PK11_DeriveWithTemplate()
  5108 ms  0x76ac ret:0x7f24cfb3f980
  5108 ms  0x76ac PK11_Derive()
  5108 ms  0x76ac basekey:0x7f24cfb3f980
  5108 ms     | 0x76ac PK11_DeriveWithTemplate()
  5113 ms  0x76ac ret:0x7f24cfb3fa00
  5113 ms  0x76ac SECKEY_DestroyPrivateKey()
  5113 ms  0x76ac privk:0x7f24cf735820::7f24cf735820  80 2d 75 cf                                      .-u.
  5113 ms  0x76ac privk:0x7f24cf735820::7f24cf735820  e5 e5 e5 e5                                      ....
  5113 ms  0x76ac PK11_Encrypt()
  5113 ms  0x76ac symkey:0x7f24cfb3fb80
  5114 ms  0x76ac PK11_Encrypt()
  5114 ms  0x76ac symkey:0x7f24cfb3ec80
  5115 ms  0x76ac PK11_Encrypt()
  5115 ms  0x76ac symkey:0x7f24cfb3ef80
  5115 ms  0x76ac PK11_Encrypt()
  5115 ms  0x76ac symkey:0x7f24cfb3f280
  5116 ms  0x76ac SECKEY_DestroyPrivateKey()
  5116 ms  0x76ac privk:0x7f24cfb55820::7f24cfb55820  80 78 a6 cf                                      .x..
  5116 ms  0x76ac privk:0x7f24cfb55820::7f24cfb55820  e5 e5 e5 e5                                      ....
  5116 ms  0x76ac SECKEY_DestroyPrivateKey()
  5116 ms  0x76ac privk:0x7f24cfb53820::7f24cfb53820  50 7b a6 cf                                      P{..
  5116 ms  0x76ac privk:0x7f24cfb53820::7f24cfb53820  e5 e5 e5 e5                                      ....
           /* TID 0x7705 */
  5116 ms  0x7705 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5117 ms  0x7705 ret:0x0
           /* TID 0x76ac */
  5117 ms  SECKEY_ECParamsToKeySize()
  5117 ms  0x76ac ret:0x100
  5117 ms  0x76ac SECKEY_CreateECPrivateKey()
  5117 ms  0x76ac cx:0x7f24e0bedaa8
  5117 ms     | 0x76ac EC_ValidatePublicKey()
  5119 ms     | 0x76ac ret:0x0
  5119 ms  0x76ac ret:0x7f24cf738820::7f24cf738820  b0 2f 75 cf                                      ./u.
  5119 ms  0x76ac PK11_PubDeriveWithKDF()
  5119 ms  0x76ac seckey:0x7f24cf738820
  5119 ms     | 0x76ac EC_ValidatePublicKey()
  5120 ms     | 0x76ac ret:0x0
  5122 ms  0x76ac ret:0x7f24e26f4380
  5122 ms  0x76ac PK11_DeriveWithFlags()
  5122 ms  0x76ac basekey:0x7f24e26f4380
  5122 ms     | 0x76ac PK11_DeriveWithTemplate()
  5122 ms  0x76ac ret:0x7f24cfb3fd00
  5122 ms  0x76ac PK11_Derive()
  5122 ms  0x76ac basekey:0x7f24cfb3fd00
  5122 ms     | 0x76ac PK11_DeriveWithTemplate()
  5122 ms  0x76ac ret:0x7f24cfb3fd80
  5122 ms  0x76ac SECKEY_DestroyPrivateKey()
  5122 ms  0x76ac privk:0x7f24cf738820::7f24cf738820  b0 2f 75 cf                                      ./u.
  5122 ms  0x76ac privk:0x7f24cf738820::7f24cf738820  e5 e5 e5 e5                                      ....
  5122 ms  0x76ac PK11_Encrypt()
  5122 ms  0x76ac symkey:0x7f24cfb3ff00
  5122 ms  0x76ac SSL_AuthCertificateComplete()
  5122 ms  0x76ac fd:0x7f24cf8bef40
  5122 ms  0x76ac err:0x0
  5122 ms  0x76ac SSL_AuthCertificateComplete()
  5122 ms  0x76ac fd:0x7f24cf8bed30
  5122 ms  0x76ac err:0x0
  5122 ms  0x76ac SSL_AuthCertificateComplete()
  5122 ms  0x76ac fd:0x7f24cf8bed00
  5122 ms  0x76ac err:0x0
  5122 ms  0x76ac SSL_AuthCertificateComplete()
  5122 ms  0x76ac fd:0x7f24cf8b6910
  5122 ms  0x76ac err:0x0
  5123 ms  0x76ac PK11_Encrypt()
  5123 ms  0x76ac symkey:0x7f24cfb3f580
  5123 ms  0x76ac PK11_Encrypt()
  5123 ms  0x76ac symkey:0x7f24cfb3f880
  5123 ms  0x76ac PK11_Encrypt()
  5123 ms  0x76ac symkey:0x7f24cfb3fb80
  5124 ms  0x76ac SECKEY_DestroyPrivateKey()
  5124 ms  0x76ac privk:0x7f24cfb5a020::7f24cfb5a020  c0 7e a6 cf                                      .~..
  5124 ms  0x76ac privk:0x7f24cfb5a020::7f24cfb5a020  e5 e5 e5 e5                                      ....
  5124 ms  0x76ac SECKEY_DestroyPrivateKey()
  5124 ms  0x76ac privk:0x7f24cfb58020::7f24cfb58020  90 7c a6 cf                                      .|..
  5124 ms  0x76ac privk:0x7f24cfb58020::7f24cfb58020  e5 e5 e5 e5                                      ....
  5124 ms  0x76ac SECKEY_DestroyPrivateKey()
  5124 ms  0x76ac privk:0x7f24cfb5e820::7f24cfb5e820  50 6b b4 cf                                      Pk..
  5124 ms  0x76ac privk:0x7f24cfb5e820::7f24cfb5e820  e5 e5 e5 e5                                      ....
  5124 ms  0x76ac SECKEY_DestroyPrivateKey()
  5124 ms  0x76ac privk:0x7f24cfb5c820::7f24cfb5c820  60 65 b4 cf                                      `e..
  5124 ms  0x76ac privk:0x7f24cfb5c820::7f24cfb5c820  e5 e5 e5 e5                                      ....
  5124 ms  0x76ac PK11_Encrypt()
  5124 ms  0x76ac symkey:0x7f24cfb3ff00
  5125 ms  0x76ac SSL_ImportFD()
  5125 ms  0x76ac ret:0x7f24cf8bea30
  5125 ms  0x76ac SSL_AuthCertificateHook()
  5125 ms  0x76ac fd:0x7f24cf8bea30
  5125 ms  0x76ac ret:0x0
  5125 ms  0x76ac PR_Connect()
  5125 ms  0x76ac fd:0x7f24cf8bea30
  5125 ms  0x76ac SECKEY_DestroyPrivateKey()
  5125 ms  0x76ac privk:0x7f24cfb63020::7f24cfb63020  f0 f1 bf cf                                      ....
  5125 ms  0x76ac privk:0x7f24cfb63020::7f24cfb63020  e5 e5 e5 e5                                      ....
  5125 ms  0x76ac SECKEY_DestroyPrivateKey()
  5125 ms  0x76ac privk:0x7f24cfb61020::7f24cfb61020  10 6f b4 cf                                      .o..
  5125 ms  0x76ac privk:0x7f24cfb61020::7f24cfb61020  e5 e5 e5 e5                                      ....
           /* TID 0x76b4 */
  5126 ms  0x76b4 PR_Close()
  5126 ms  0x76b4 fd:0x7f24cf897d00
           /* TID 0x76ac */
  5131 ms  0x76ac SECKEY_DestroyPrivateKey()
  5131 ms  0x76ac privk:0x7f24cfb67820::7f24cfb67820  10 f5 bf cf                                      ....
  5131 ms  0x76ac privk:0x7f24cfb67820::7f24cfb67820  e5 e5 e5 e5                                      ....
  5131 ms  0x76ac SECKEY_DestroyPrivateKey()
  5131 ms  0x76ac privk:0x7f24cfb65820::7f24cfb65820  30 f3 bf cf                                      0...
  5131 ms  0x76ac privk:0x7f24cfb65820::7f24cfb65820  e5 e5 e5 e5                                      ....
  5137 ms  0x76ac SECKEY_DestroyPrivateKey()
  5137 ms  0x76ac privk:0x7f24cfb6c020::7f24cfb6c020  30 f8 bf cf                                      0...
  5137 ms  0x76ac privk:0x7f24cfb6c020::7f24cfb6c020  e5 e5 e5 e5                                      ....
  5137 ms  0x76ac SECKEY_DestroyPrivateKey()
  5137 ms  0x76ac privk:0x7f24cfb6a020::7f24cfb6a020  50 f6 bf cf                                      P...
  5137 ms  0x76ac privk:0x7f24cfb6a020::7f24cfb6a020  e5 e5 e5 e5                                      ....
  5144 ms  0x76ac SECKEY_DestroyPrivateKey()
  5144 ms  0x76ac privk:0x7f24e59a4020::7f24e59a4020  50 fb bf cf                                      P...
  5144 ms  0x76ac privk:0x7f24e59a4020::7f24e59a4020  e5 e5 e5 e5                                      ....
  5144 ms  0x76ac SECKEY_DestroyPrivateKey()
  5144 ms  0x76ac privk:0x7f24cfb6e820::7f24cfb6e820  70 f9 bf cf                                      p...
  5144 ms  0x76ac privk:0x7f24cfb6e820::7f24cfb6e820  e5 e5 e5 e5                                      ....
           /* TID 0x76b4 */
  5152 ms  0x76b4 PR_Close()
  5152 ms  0x76b4 fd:0x7f24cf897c40
           /* TID 0x76ac */
  5155 ms  0x76ac PK11_Encrypt()
  5155 ms  0x76ac symkey:0x7f24cfb3e900
  5155 ms  0x76ac SECKEY_DestroyPrivateKey()
  5155 ms  0x76ac privk:0x7f24cf724820::7f24cf724820  70 fe bf cf                                      p...
  5155 ms  0x76ac privk:0x7f24cf724820::7f24cf724820  e5 e5 e5 e5                                      ....
  5155 ms  0x76ac SECKEY_DestroyPrivateKey()
  5155 ms  0x76ac privk:0x7f24cf722820::7f24cf722820  90 fc bf cf                                      ....
  5155 ms  0x76ac privk:0x7f24cf722820::7f24cf722820  e5 e5 e5 e5                                      ....
           /* TID 0x76b4 */
  5162 ms  0x76b4 PR_Close()
  5162 ms  0x76b4 fd:0x7f24cf897c10
           /* TID 0x76ac */
  5168 ms  0x76ac PK11_Encrypt()
  5168 ms  0x76ac symkey:0x7f24cfb3ec80
  5169 ms  0x76ac SECKEY_DestroyPrivateKey()
  5169 ms  0x76ac privk:0x7f24cf729020::7f24cf729020  f0 21 75 cf                                      .!u.
  5169 ms  0x76ac privk:0x7f24cf729020::7f24cf729020  e5 e5 e5 e5                                      ....
  5169 ms  0x76ac SECKEY_DestroyPrivateKey()
  5169 ms  0x76ac privk:0x7f24cf727020::7f24cf727020  b0 ff bf cf                                      ....
  5169 ms  0x76ac privk:0x7f24cf727020::7f24cf727020  e5 e5 e5 e5                                      ....
  5170 ms  0x76ac SECKEY_CreateECPrivateKey()
  5170 ms  0x76ac cx:0x7f24e0beeae8
  5171 ms     | 0x76ac EC_ValidatePublicKey()
  5171 ms     | 0x76ac ret:0x0
  5171 ms  0x76ac ret:0x7f24cf723020::7f24cf723020  50 21 75 cf                                      P!u.
  5171 ms  0x76ac SECKEY_CreateECPrivateKey()
  5171 ms  0x76ac cx:0x7f24e0beeae8
  5171 ms     | 0x76ac EC_ValidatePublicKey()
  5173 ms     | 0x76ac ret:0x0
  5173 ms  0x76ac ret:0x7f24cf725020::7f24cf725020  10 2f 75 cf                                      ./u.
           /* TID 0x76b4 */
  5180 ms  0x76b4 PR_Close()
  5180 ms  0x76b4 fd:0x7f24cf897d90
  5181 ms  0x76b4 PR_Close()
  5181 ms  0x76b4 fd:0x7f24cf897d90
           /* TID 0x76ac */
  5182 ms  0x76ac PK11_Encrypt()
  5182 ms  0x76ac symkey:0x7f24cfb3f580
           /* TID 0x76b4 */
  5198 ms  0x76b4 PR_Close()
  5198 ms  0x76b4 fd:0x7f24cf897d90
           /* TID 0x76ac */
  5202 ms  0x76ac PK11_Encrypt()
  5202 ms  0x76ac symkey:0x7f24cfb3fb80
           /* TID 0x76b4 */
  5203 ms  0x76b4 PR_Close()
  5203 ms  0x76b4 fd:0x7f24cf897c70
  5204 ms  0x76b4 PR_Close()
  5204 ms  0x76b4 fd:0x7f24cf897c70
           /* TID 0x76ac */
  5205 ms  0x76ac PK11_Encrypt()
  5205 ms  0x76ac symkey:0x7f24cfb3f880
  5205 ms  0x76ac SSL_ImportFD()
  5205 ms  0x76ac ret:0x7f24cf897e50
  5205 ms  0x76ac SSL_AuthCertificateHook()
  5205 ms  0x76ac fd:0x7f24cf897e50
  5205 ms  0x76ac ret:0x0
  5205 ms  0x76ac PR_Connect()
  5205 ms  0x76ac fd:0x7f24cf897e50
           /* TID 0x76b4 */
  5206 ms  0x76b4 PR_Close()
  5206 ms  0x76b4 fd:0x7f24cf897c70
  5209 ms  0x76b4 PR_Close()
  5209 ms  0x76b4 fd:0x7f24cf897c70
  5214 ms  0x76b4 PR_Close()
  5214 ms  0x76b4 fd:0x7f24cf897df0
           /* TID 0x76ac */
  5218 ms  SECKEY_ECParamsToKeySize()
  5218 ms  0x76ac ret:0x100
  5218 ms  0x76ac SECKEY_CreateECPrivateKey()
  5218 ms  0x76ac cx:0x7f24e0beeae8
  5220 ms     | 0x76ac EC_ValidatePublicKey()
  5222 ms     | 0x76ac ret:0x0
  5226 ms  0x76ac ret:0x7f24cfaaf820::7f24cfaaf820  b0 75 a6 cf                                      .u..
  5227 ms  0x76ac PK11_PubDeriveWithKDF()
  5227 ms  0x76ac seckey:0x7f24cfaaf820
  5227 ms     | 0x76ac EC_ValidatePublicKey()
  5229 ms     | 0x76ac ret:0x0
  5230 ms  0x76ac ret:0x7f24e26f4380
  5230 ms  0x76ac PK11_DeriveWithFlags()
  5230 ms  0x76ac basekey:0x7f24e26f4380
  5231 ms     | 0x76ac PK11_DeriveWithTemplate()
  5231 ms  0x76ac ret:0x7f24cf7ff280
  5231 ms  0x76ac PK11_Derive()
  5231 ms  0x76ac basekey:0x7f24cf7ff280
  5231 ms     | 0x76ac PK11_DeriveWithTemplate()
  5231 ms  0x76ac ret:0x7f24cf7ff380
  5231 ms  0x76ac SECKEY_DestroyPrivateKey()
  5231 ms  0x76ac privk:0x7f24cfaaf820::7f24cfaaf820  b0 75 a6 cf                                      .u..
  5231 ms  0x76ac privk:0x7f24cfaaf820::7f24cfaaf820  e5 e5 e5 e5                                      ....
  5231 ms  0x76ac PK11_Encrypt()
  5231 ms  0x76ac symkey:0x7f24cf7ff900
           /* TID 0x76b4 */
  5239 ms  0x76b4 PR_Close()
  5239 ms  0x76b4 fd:0x7f24cf813ee0
           /* TID 0x76ac */
  5243 ms  0x76ac SECKEY_CreateECPrivateKey()
  5243 ms  0x76ac cx:0x7f24e0beec88
  5243 ms     | 0x76ac EC_ValidatePublicKey()
  5243 ms     | 0x76ac ret:0x0
  5243 ms  0x76ac ret:0x7f24cfaaf820::7f24cfaaf820  50 ab 8b cf                                      P...
  5243 ms  0x76ac SECKEY_CreateECPrivateKey()
  5243 ms  0x76ac cx:0x7f24e0beec88
  5244 ms     | 0x76ac EC_ValidatePublicKey()
  5245 ms     | 0x76ac ret:0x0
  5245 ms  0x76ac ret:0x7f24cfb53020::7f24cfb53020  c0 79 a6 cf                                      .y..
           /* TID 0x76b4 */
  5250 ms  0x76b4 PR_Close()
  5250 ms  0x76b4 fd:0x7f24cf897c40
  5251 ms  0x76b4 PR_Close()
  5251 ms  0x76b4 fd:0x7f24cf897c40
           /* TID 0x76ac */
  5286 ms  0x76ac PR_Connect()
  5286 ms  0x76ac fd:0x7f24cf8b66d0
  5300 ms  0x76ac PK11_Derive()
  5300 ms  0x76ac basekey:0x7f24e26f4380
  5300 ms     | 0x76ac PK11_DeriveWithTemplate()
  5300 ms  0x76ac ret:0x7f24cf7ffe80
  5300 ms  0x76ac PK11_PubDeriveWithKDF()
  5300 ms  0x76ac seckey:0x7f24cfaaf820
  5300 ms     | 0x76ac EC_ValidatePublicKey()
  5300 ms     | 0x76ac ret:0x0
  5300 ms  0x76ac ret:0x7f24e26f4380
  5300 ms  SECKEY_ECParamsToKeySize()
  5300 ms  0x76ac ret:0xff
  5300 ms  0x76ac PK11_DeriveWithFlags()
  5300 ms  0x76ac basekey:0x7f24cf7ffe80
  5300 ms     | 0x76ac PK11_DeriveWithTemplate()
  5300 ms  0x76ac ret:0x7f24cf7fff00
  5300 ms  0x76ac PK11_Derive()
  5300 ms  0x76ac basekey:0x7f24e26f4380
  5300 ms     | 0x76ac PK11_DeriveWithTemplate()
  5300 ms  0x76ac ret:0x7f24cf7fff80
  5300 ms  0x76ac PK11_DeriveWithFlags()
  5300 ms  0x76ac basekey:0x7f24cf7fff80
  5300 ms     | 0x76ac PK11_DeriveWithTemplate()
  5300 ms  0x76ac ret:0x7f24cf7ffe80
  5300 ms  0x76ac PK11_DeriveWithFlags()
  5300 ms  0x76ac basekey:0x7f24cf7fff80
  5300 ms     | 0x76ac PK11_DeriveWithTemplate()
  5300 ms  0x76ac ret:0x7f24e26f4380
  5300 ms  0x76ac PK11_DeriveWithFlags()
  5300 ms  0x76ac basekey:0x7f24cf7fff80
  5300 ms     | 0x76ac PK11_DeriveWithTemplate()
  5300 ms  0x76ac ret:0x7f24cf7fff00
  5300 ms  0x76ac PK11_Derive()
  5300 ms  0x76ac basekey:0x7f24cf8f9700
  5300 ms     | 0x76ac PK11_DeriveWithTemplate()
  5300 ms  0x76ac ret:0x7f24cf8f9780
  5300 ms  0x76ac PK11_DeriveWithFlags()
  5300 ms  0x76ac basekey:0x7f24e26f4380
  5300 ms     | 0x76ac PK11_DeriveWithTemplate()
  5300 ms  0x76ac ret:0x7f24cf7fff80
  5300 ms  0x76ac PK11_DeriveWithFlags()
  5300 ms  0x76ac basekey:0x7f24e26f4380
  5301 ms     | 0x76ac PK11_DeriveWithTemplate()
  5301 ms  0x76ac ret:0x7f24cf7fff00
  5302 ms  SECKEY_ECParamsToKeySize()
  5302 ms  0x76ac ret:0x100
  5302 ms  SECKEY_ECParamsToBasePointOrderLen()
  5302 ms  0x76ac ret:0x100
  5303 ms  SECKEY_ECParamsToBasePointOrderLen()
  5303 ms  0x76ac ret:0x100
  5303 ms  0x76ac EC_ValidatePublicKey()
  5304 ms  0x76ac ret:0x0
  5307 ms  0x76ac PK11_DeriveWithFlags()
  5307 ms  0x76ac basekey:0x7f24e26f4380
  5307 ms     | 0x76ac PK11_DeriveWithTemplate()
  5307 ms  0x76ac ret:0x7f24cf7fff00
  5312 ms  0x76ac PR_Connect()
  5312 ms  0x76ac fd:0x7f24cfa69be0
           /* TID 0x76b4 */
  5432 ms  0x76b4 PR_Close()
  5432 ms  0x76b4 fd:0x7f24cf8b65b0
           /* TID 0x7705 */
  5432 ms  0x7705 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5433 ms  0x7705 ret:0x0
           /* TID 0x76ac */
  5445 ms  0x76ac SSL_AuthCertificateComplete()
  5445 ms  0x76ac fd:0x7f24cf8bea30
  5445 ms  0x76ac err:0x0
  5446 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  5446 ms     | 0x76ac privk:0x7f24cf725020::7f24cf725020  10 2f 75 cf                                      ./u.
  5446 ms     | 0x76ac privk:0x7f24cf725020::7f24cf725020  e5 e5 e5 e5                                      ....
  5446 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  5446 ms     | 0x76ac privk:0x7f24cf723020::7f24cf723020  50 21 75 cf                                      P!u.
  5446 ms     | 0x76ac privk:0x7f24cf723020::7f24cf723020  e5 e5 e5 e5                                      ....
  5447 ms  0x76ac PK11_Encrypt()
  5447 ms  0x76ac symkey:0x7f24cf7ff900
           /* TID 0x76b4 */
  5494 ms  0x76b4 PR_Close()
  5494 ms  0x76b4 fd:0x7f24cf813ee0
  5495 ms  0x76b4 PR_Close()
  5495 ms  0x76b4 fd:0x7f24cf813ee0
           /* TID 0x7748 */
  5495 ms  0x7748 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5495 ms  0x7748 ret:0x0
           /* TID 0x76ac */
  5502 ms  0x76ac SSL_AuthCertificateComplete()
  5502 ms  0x76ac fd:0x7f24cf897e50
  5502 ms  0x76ac err:0x0
  5502 ms     | 0x76ac PK11_DeriveWithFlags()
  5502 ms     | 0x76ac basekey:0x7f24cf8f9780
  5502 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5502 ms     | 0x76ac ret:0x7f24cf7fff00
  5502 ms     | 0x76ac PK11_DeriveWithFlags()
  5502 ms     | 0x76ac basekey:0x7f24cf8f9780
  5502 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5502 ms     | 0x76ac ret:0x7f24cf8f9700
  5502 ms     | 0x76ac PK11_DeriveWithFlags()
  5502 ms     | 0x76ac basekey:0x7f24cf8f9780
  5502 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5502 ms     | 0x76ac ret:0x7f24cf8f9b80
  5502 ms     | 0x76ac PK11_DeriveWithFlags()
  5502 ms     | 0x76ac basekey:0x7f24cf7ffe80
  5502 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5502 ms     | 0x76ac ret:0x7f24cf8f9f80
  5502 ms     | 0x76ac PK11_DeriveWithFlags()
  5502 ms     | 0x76ac basekey:0x7f24cf7ffe80
  5502 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5502 ms     | 0x76ac ret:0x7f24cf8fe200
  5502 ms     | 0x76ac PK11_DeriveWithFlags()
  5502 ms     | 0x76ac basekey:0x7f24cf8f9700
  5502 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5502 ms     | 0x76ac ret:0x7f24cf8fe200
  5502 ms     | 0x76ac PK11_DeriveWithFlags()
  5502 ms     | 0x76ac basekey:0x7f24cf8f9700
  5502 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5502 ms     | 0x76ac ret:0x7f24cfa64480
  5502 ms     | 0x76ac PK11_DeriveWithFlags()
  5502 ms     | 0x76ac basekey:0x7f24cf7ffe80
  5502 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5502 ms     | 0x76ac ret:0x7f24cf7fff80
  5502 ms     | 0x76ac PK11_Encrypt()
  5502 ms     | 0x76ac symkey:0x7f24cf8f9f80
  5502 ms     | 0x76ac PK11_DeriveWithFlags()
  5502 ms     | 0x76ac basekey:0x7f24cf7fff00
  5502 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5502 ms     | 0x76ac ret:0x7f24cf7fff80
  5502 ms     | 0x76ac PK11_DeriveWithFlags()
  5502 ms     | 0x76ac basekey:0x7f24cf7fff00
  5502 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5502 ms     | 0x76ac ret:0x7f24cfa64480
  5502 ms     | 0x76ac PK11_DeriveWithFlags()
  5502 ms     | 0x76ac basekey:0x7f24cf8f9780
  5502 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5502 ms     | 0x76ac ret:0x7f24cf8f9f80
  5503 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  5503 ms     | 0x76ac privk:0x7f24cfb53020::7f24cfb53020  c0 79 a6 cf                                      .y..
  5503 ms     | 0x76ac privk:0x7f24cfb53020::7f24cfb53020  e5 e5 e5 e5                                      ....
  5503 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  5503 ms     | 0x76ac privk:0x7f24cfaaf820::7f24cfaaf820  50 ab 8b cf                                      P...
  5503 ms     | 0x76ac privk:0x7f24cfaaf820::7f24cfaaf820  e5 e5 e5 e5                                      ....
  5503 ms  0x76ac PK11_Encrypt()
  5503 ms  0x76ac symkey:0x7f24cf7fff80
  5503 ms  0x76ac PK11_Encrypt()
  5503 ms  0x76ac symkey:0x7f24cf7fff80
  5540 ms  0x76ac PK11_DeriveWithFlags()
  5540 ms  0x76ac basekey:0x7f24cf8f9f80
  5540 ms     | 0x76ac PK11_DeriveWithTemplate()
  5540 ms  0x76ac ret:0x7f24e26f4380
  5540 ms  0x76ac PK11_DeriveWithFlags()
  5540 ms  0x76ac basekey:0x7f24cf8f9f80
  5541 ms     | 0x76ac PK11_DeriveWithTemplate()
  5541 ms  0x76ac ret:0x7f24e26f4380
  5541 ms  0x76ac PK11_Encrypt()
  5541 ms  0x76ac symkey:0x7f24cf7fff80
  5596 ms  0x76ac PK11_Encrypt()
  5596 ms  0x76ac symkey:0x7f24cf7fff80
  5597 ms  0x76ac PK11_Encrypt()
  5597 ms  0x76ac symkey:0x7f24cfb3ef80
  5597 ms  0x76ac PK11_Encrypt()
  5597 ms  0x76ac symkey:0x7f24cfb3f580
  5598 ms  0x76ac PK11_Encrypt()
  5598 ms  0x76ac symkey:0x7f24cfb3f880
  5598 ms  0x76ac SSL_ImportFD()
  5598 ms  0x76ac ret:0x7f24e0b7c580
  5598 ms  0x76ac SSL_AuthCertificateHook()
  5598 ms  0x76ac fd:0x7f24e0b7c580
  5598 ms  0x76ac ret:0x0
  5599 ms  0x76ac PR_Connect()
  5599 ms  0x76ac fd:0x7f24e0b7c580
  5599 ms  0x76ac SSL_ImportFD()
  5599 ms  0x76ac ret:0x7f24cf8bed60
  5599 ms  0x76ac SSL_AuthCertificateHook()
  5599 ms  0x76ac fd:0x7f24cf8bed60
  5599 ms  0x76ac ret:0x0
  5599 ms  0x76ac PR_Connect()
  5599 ms  0x76ac fd:0x7f24cf8bed60
  5599 ms  0x76ac SSL_ImportFD()
  5599 ms  0x76ac ret:0x7f24e0b7c640
  5599 ms  0x76ac SSL_AuthCertificateHook()
  5599 ms  0x76ac fd:0x7f24e0b7c640
  5599 ms  0x76ac ret:0x0
  5599 ms  0x76ac PR_Connect()
  5599 ms  0x76ac fd:0x7f24e0b7c640
  5600 ms  0x76ac SSL_ImportFD()
  5600 ms  0x76ac ret:0x7f24cfa69fd0
  5600 ms  0x76ac SSL_AuthCertificateHook()
  5600 ms  0x76ac fd:0x7f24cfa69fd0
  5600 ms  0x76ac ret:0x0
  5600 ms  0x76ac PR_Connect()
  5600 ms  0x76ac fd:0x7f24cfa69fd0
  5600 ms  0x76ac SSL_ImportFD()
  5600 ms  0x76ac ret:0x7f24cfaeaf10
  5600 ms  0x76ac SSL_AuthCertificateHook()
  5600 ms  0x76ac fd:0x7f24cfaeaf10
  5600 ms  0x76ac ret:0x0
  5600 ms  0x76ac PR_Connect()
  5600 ms  0x76ac fd:0x7f24cfaeaf10
  5600 ms  0x76ac SSL_ImportFD()
  5600 ms  0x76ac ret:0x7f24cf6510d0
  5600 ms  0x76ac SSL_AuthCertificateHook()
  5600 ms  0x76ac fd:0x7f24cf6510d0
  5600 ms  0x76ac ret:0x0
  5601 ms  0x76ac PR_Connect()
  5601 ms  0x76ac fd:0x7f24cf6510d0
           /* TID 0x76b4 */
  5604 ms  0x76b4 PR_Close()
  5604 ms  0x76b4 fd:0x7f24cf651220
           /* TID 0x76ac */
  5625 ms  0x76ac SECKEY_CreateECPrivateKey()
  5625 ms  0x76ac cx:0x7f24e0bef648
  5626 ms     | 0x76ac EC_ValidatePublicKey()
  5626 ms     | 0x76ac ret:0x0
  5626 ms  0x76ac ret:0x7f24cf73b020::7f24cf73b020  70 79 a6 cf                                      py..
  5626 ms  0x76ac SECKEY_CreateECPrivateKey()
  5626 ms  0x76ac cx:0x7f24e0bef648
  5628 ms     | 0x76ac EC_ValidatePublicKey()
  5631 ms     | 0x76ac ret:0x0
  5631 ms  0x76ac ret:0x7f24cfa99820::7f24cfa99820  80 7d a6 cf                                      .}..
  5631 ms  0x76ac SECKEY_CreateECPrivateKey()
  5631 ms  0x76ac cx:0x7f24e0bef4a8
  5640 ms     | 0x76ac EC_ValidatePublicKey()
  5640 ms     | 0x76ac ret:0x0
  5640 ms  0x76ac ret:0x7f24cfb57820::7f24cfb57820  60 65 b4 cf                                      `e..
  5641 ms  0x76ac SECKEY_CreateECPrivateKey()
  5641 ms  0x76ac cx:0x7f24e0bef4a8
  5642 ms     | 0x76ac EC_ValidatePublicKey()
  5644 ms     | 0x76ac ret:0x0
  5644 ms  0x76ac ret:0x7f24cfb5d020::7f24cfb5d020  60 30 68 cf                                      `0h.
           /* TID 0x76b4 */
  5651 ms  0x76b4 PR_Close()
  5651 ms  0x76b4 fd:0x7f24cf6519a0
  5652 ms  0x76b4 PR_Close()
  5652 ms  0x76b4 fd:0x7f24cf6519a0
  5653 ms  0x76b4 PR_Close()
  5653 ms  0x76b4 fd:0x7f24cf6519a0
           /* TID 0x76ac */
  5653 ms  0x76ac SECKEY_CreateECPrivateKey()
  5653 ms  0x76ac cx:0x7f24e0befcc8
  5654 ms     | 0x76ac EC_ValidatePublicKey()
  5654 ms     | 0x76ac ret:0x0
  5654 ms  0x76ac ret:0x7f24cfb60820::7f24cfb60820  f0 31 68 cf                                      .1h.
  5654 ms  0x76ac SECKEY_CreateECPrivateKey()
  5654 ms  0x76ac cx:0x7f24e0befcc8
  5655 ms     | 0x76ac EC_ValidatePublicKey()
  5656 ms     | 0x76ac ret:0x0
  5656 ms  0x76ac ret:0x7f24cfb62820::7f24cfb62820  d0 33 68 cf                                      .3h.
  5662 ms  0x76ac SECKEY_CreateECPrivateKey()
  5662 ms  0x76ac cx:0x7f24e0befb28
  5663 ms     | 0x76ac EC_ValidatePublicKey()
  5663 ms     | 0x76ac ret:0x0
  5663 ms  0x76ac ret:0x7f24cfb66020::7f24cfb66020  b0 35 68 cf                                      .5h.
  5663 ms  0x76ac SECKEY_CreateECPrivateKey()
  5663 ms  0x76ac cx:0x7f24e0befb28
  5664 ms     | 0x76ac EC_ValidatePublicKey()
  5665 ms     | 0x76ac ret:0x0
  5665 ms  0x76ac ret:0x7f24cfb68020::7f24cfb68020  90 37 68 cf                                      .7h.
  5666 ms  0x76ac SECKEY_CreateECPrivateKey()
  5666 ms  0x76ac cx:0x7f24e0bef988
  5666 ms     | 0x76ac EC_ValidatePublicKey()
  5666 ms     | 0x76ac ret:0x0
  5666 ms  0x76ac ret:0x7f24cfb6a820::7f24cfb6a820  20 39 68 cf                                       9h.
  5666 ms  0x76ac SECKEY_CreateECPrivateKey()
  5666 ms  0x76ac cx:0x7f24e0bef988
  5667 ms     | 0x76ac EC_ValidatePublicKey()
  5673 ms     | 0x76ac ret:0x0
  5673 ms  0x76ac ret:0x7f24cfb6d820::7f24cfb6d820  f0 3b 68 cf                                      .;h.
  5674 ms  0x76ac SECKEY_CreateECPrivateKey()
  5674 ms  0x76ac cx:0x7f24e0bef7e8
  5675 ms     | 0x76ac EC_ValidatePublicKey()
  5675 ms     | 0x76ac ret:0x0
  5675 ms  0x76ac ret:0x7f24e59a5020::7f24e59a5020  70 3e 68 cf                                      p>h.
  5675 ms  0x76ac SECKEY_CreateECPrivateKey()
  5675 ms  0x76ac cx:0x7f24e0bef7e8
  5676 ms     | 0x76ac EC_ValidatePublicKey()
  5677 ms     | 0x76ac ret:0x0
  5677 ms  0x76ac ret:0x7f24cf6c2820::7f24cf6c2820  80 ad 8b cf                                      ....
  5683 ms  0x76ac PK11_Encrypt()
  5683 ms  0x76ac symkey:0x7f24cfb3e600
  5683 ms  0x76ac PK11_Encrypt()
  5683 ms  0x76ac symkey:0x7f24cfb3f280
  5684 ms  0x76ac PK11_Derive()
  5684 ms  0x76ac basekey:0x7f24e26f4380
  5684 ms     | 0x76ac PK11_DeriveWithTemplate()
  5684 ms  0x76ac ret:0x7f24cf7ffe80
  5684 ms  0x76ac PK11_PubDeriveWithKDF()
  5684 ms  0x76ac seckey:0x7f24cfb62820
  5684 ms     | 0x76ac EC_ValidatePublicKey()
  5685 ms     | 0x76ac ret:0x0
  5687 ms  0x76ac ret:0x7f24e26f4380
  5687 ms  SECKEY_ECParamsToKeySize()
  5687 ms  0x76ac ret:0x100
  5687 ms  0x76ac PK11_DeriveWithFlags()
  5687 ms  0x76ac basekey:0x7f24cf7ffe80
  5687 ms     | 0x76ac PK11_DeriveWithTemplate()
  5687 ms  0x76ac ret:0x7f24cf8f9780
  5687 ms  0x76ac PK11_Derive()
  5687 ms  0x76ac basekey:0x7f24e26f4380
  5687 ms     | 0x76ac PK11_DeriveWithTemplate()
  5687 ms  0x76ac ret:0x7f24cfa64480
  5687 ms  0x76ac PK11_DeriveWithFlags()
  5687 ms  0x76ac basekey:0x7f24cfa64480
  5687 ms     | 0x76ac PK11_DeriveWithTemplate()
  5687 ms  0x76ac ret:0x7f24cf7ffe80
  5687 ms  0x76ac PK11_DeriveWithFlags()
  5687 ms  0x76ac basekey:0x7f24cfa64480
  5687 ms     | 0x76ac PK11_DeriveWithTemplate()
  5687 ms  0x76ac ret:0x7f24e26f4380
  5687 ms  0x76ac PK11_DeriveWithFlags()
  5687 ms  0x76ac basekey:0x7f24cfa64480
  5687 ms     | 0x76ac PK11_DeriveWithTemplate()
  5687 ms  0x76ac ret:0x7f24cf8f9780
  5687 ms  0x76ac PK11_Derive()
  5687 ms  0x76ac basekey:0x7f24e1ff4600
  5687 ms     | 0x76ac PK11_DeriveWithTemplate()
  5687 ms  0x76ac ret:0x7f24e1ff4680
  5687 ms  0x76ac PK11_DeriveWithFlags()
  5687 ms  0x76ac basekey:0x7f24e26f4380
  5687 ms     | 0x76ac PK11_DeriveWithTemplate()
  5687 ms  0x76ac ret:0x7f24cfa64480
  5687 ms  0x76ac PK11_DeriveWithFlags()
  5687 ms  0x76ac basekey:0x7f24e26f4380
  5687 ms     | 0x76ac PK11_DeriveWithTemplate()
  5687 ms  0x76ac ret:0x7f24cf8f9780
           /* TID 0x7705 */
  5692 ms  0x7705 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5692 ms  0x7705 ret:0x0
           /* TID 0x76ac */
  5692 ms  0x76ac PK11_DeriveWithFlags()
  5692 ms  0x76ac basekey:0x7f24e26f4380
  5693 ms     | 0x76ac PK11_DeriveWithTemplate()
  5693 ms  0x76ac ret:0x7f24cf8f9780
  5693 ms  0x76ac PK11_Derive()
  5693 ms  0x76ac basekey:0x7f24cf8f9780
  5693 ms     | 0x76ac PK11_DeriveWithTemplate()
  5693 ms  0x76ac ret:0x7f24e1ff4600
  5693 ms  0x76ac PK11_PubDeriveWithKDF()
  5693 ms  0x76ac seckey:0x7f24cfa99820
  5693 ms     | 0x76ac EC_ValidatePublicKey()
  5694 ms     | 0x76ac ret:0x0
  5696 ms  0x76ac ret:0x7f24cf8f9780
  5696 ms  SECKEY_ECParamsToKeySize()
  5696 ms  0x76ac ret:0x100
  5696 ms  0x76ac PK11_DeriveWithFlags()
  5696 ms  0x76ac basekey:0x7f24e1ff4600
  5696 ms     | 0x76ac PK11_DeriveWithTemplate()
  5696 ms  0x76ac ret:0x7f24cf6f4300
  5696 ms  0x76ac PK11_Derive()
  5696 ms  0x76ac basekey:0x7f24cf8f9780
  5696 ms     | 0x76ac PK11_DeriveWithTemplate()
  5696 ms  0x76ac ret:0x7f24cf6f4480
  5696 ms  0x76ac PK11_DeriveWithFlags()
  5696 ms  0x76ac basekey:0x7f24cf6f4480
  5696 ms     | 0x76ac PK11_DeriveWithTemplate()
  5696 ms  0x76ac ret:0x7f24e1ff4600
  5696 ms  0x76ac PK11_DeriveWithFlags()
  5696 ms  0x76ac basekey:0x7f24cf6f4480
  5696 ms     | 0x76ac PK11_DeriveWithTemplate()
  5696 ms  0x76ac ret:0x7f24cf8f9780
  5696 ms  0x76ac PK11_DeriveWithFlags()
  5696 ms  0x76ac basekey:0x7f24cf6f4480
  5696 ms     | 0x76ac PK11_DeriveWithTemplate()
  5696 ms  0x76ac ret:0x7f24cf6f4300
  5696 ms  0x76ac PK11_Derive()
  5696 ms  0x76ac basekey:0x7f24cf6f4500
  5696 ms     | 0x76ac PK11_DeriveWithTemplate()
  5696 ms  0x76ac ret:0x7f24cf6f4580
  5696 ms  0x76ac PK11_DeriveWithFlags()
  5696 ms  0x76ac basekey:0x7f24cf8f9780
  5696 ms     | 0x76ac PK11_DeriveWithTemplate()
  5696 ms  0x76ac ret:0x7f24cf6f4480
  5696 ms  0x76ac PK11_DeriveWithFlags()
  5696 ms  0x76ac basekey:0x7f24cf8f9780
  5696 ms     | 0x76ac PK11_DeriveWithTemplate()
  5696 ms  0x76ac ret:0x7f24cf6f4300
           /* TID 0x7748 */
  5707 ms  0x7748 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5707 ms  0x7748 ret:0x0
           /* TID 0x76ac */
  5707 ms  0x76ac PK11_DeriveWithFlags()
  5707 ms  0x76ac basekey:0x7f24cf8f9780
  5707 ms     | 0x76ac PK11_DeriveWithTemplate()
  5707 ms  0x76ac ret:0x7f24cf6f4300
  5707 ms  0x76ac PK11_Derive()
  5707 ms  0x76ac basekey:0x7f24cf6f4300
  5707 ms     | 0x76ac PK11_DeriveWithTemplate()
  5707 ms  0x76ac ret:0x7f24cf6f4500
  5707 ms  0x76ac PK11_PubDeriveWithKDF()
  5707 ms  0x76ac seckey:0x7f24cfb5d020
  5707 ms     | 0x76ac EC_ValidatePublicKey()
  5717 ms     | 0x76ac ret:0x0
  5719 ms  0x76ac ret:0x7f24cf6f4300
  5719 ms  SECKEY_ECParamsToKeySize()
  5719 ms  0x76ac ret:0x100
  5719 ms  0x76ac PK11_DeriveWithFlags()
  5719 ms  0x76ac basekey:0x7f24cf6f4500
  5719 ms     | 0x76ac PK11_DeriveWithTemplate()
  5719 ms  0x76ac ret:0x7f24cf6f5380
  5719 ms  0x76ac PK11_Derive()
  5719 ms  0x76ac basekey:0x7f24cf6f4300
  5719 ms     | 0x76ac PK11_DeriveWithTemplate()
  5719 ms  0x76ac ret:0x7f24cf6f5400
  5719 ms  0x76ac PK11_DeriveWithFlags()
  5719 ms  0x76ac basekey:0x7f24cf6f5400
  5719 ms     | 0x76ac PK11_DeriveWithTemplate()
  5719 ms  0x76ac ret:0x7f24cf6f4500
  5719 ms  0x76ac PK11_DeriveWithFlags()
  5719 ms  0x76ac basekey:0x7f24cf6f5400
  5720 ms     | 0x76ac PK11_DeriveWithTemplate()
  5720 ms  0x76ac ret:0x7f24cf6f4300
  5720 ms  0x76ac PK11_DeriveWithFlags()
  5720 ms  0x76ac basekey:0x7f24cf6f5400
  5720 ms     | 0x76ac PK11_DeriveWithTemplate()
  5720 ms  0x76ac ret:0x7f24cf6f5380
  5720 ms  0x76ac PK11_Derive()
  5720 ms  0x76ac basekey:0x7f24cf6f5480
  5720 ms     | 0x76ac PK11_DeriveWithTemplate()
  5720 ms  0x76ac ret:0x7f24cf6f5700
  5720 ms  0x76ac PK11_DeriveWithFlags()
  5720 ms  0x76ac basekey:0x7f24cf6f4300
  5720 ms     | 0x76ac PK11_DeriveWithTemplate()
  5720 ms  0x76ac ret:0x7f24cf6f5400
  5720 ms  0x76ac PK11_DeriveWithFlags()
  5720 ms  0x76ac basekey:0x7f24cf6f4300
  5720 ms     | 0x76ac PK11_DeriveWithTemplate()
  5720 ms  0x76ac ret:0x7f24cf6f5380
           /* TID 0x7705 */
  5720 ms  0x7705 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5720 ms  0x7705 ret:0x0
           /* TID 0x76ac */
  5721 ms  0x76ac PK11_DeriveWithFlags()
  5721 ms  0x76ac basekey:0x7f24cf6f4300
  5721 ms     | 0x76ac PK11_DeriveWithTemplate()
  5721 ms  0x76ac ret:0x7f24cf6f5380
  5721 ms  0x76ac PK11_Encrypt()
  5721 ms  0x76ac symkey:0x7f24cfb3ef80
  5721 ms  0x76ac PK11_Encrypt()
  5721 ms  0x76ac symkey:0x7f24cfb3f580
  5722 ms  0x76ac PK11_Encrypt()
  5722 ms  0x76ac symkey:0x7f24cfb3f880
  5722 ms  0x76ac SSL_AuthCertificateComplete()
  5722 ms  0x76ac fd:0x7f24cf6510d0
  5722 ms  0x76ac err:0x0
  5722 ms     | 0x76ac PK11_DeriveWithFlags()
  5722 ms     | 0x76ac basekey:0x7f24e1ff4680
  5722 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5722 ms     | 0x76ac ret:0x7f24cf6f5380
  5722 ms     | 0x76ac PK11_DeriveWithFlags()
  5722 ms     | 0x76ac basekey:0x7f24e1ff4680
  5722 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5722 ms     | 0x76ac ret:0x7f24cf6f5480
  5722 ms     | 0x76ac PK11_DeriveWithFlags()
  5722 ms     | 0x76ac basekey:0x7f24e1ff4680
  5722 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5722 ms     | 0x76ac ret:0x7f24cf6f5780
  5722 ms     | 0x76ac PK11_DeriveWithFlags()
  5722 ms     | 0x76ac basekey:0x7f24cf7ffe80
  5722 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5722 ms     | 0x76ac ret:0x7f24cf6f5800
  5722 ms     | 0x76ac PK11_DeriveWithFlags()
  5722 ms     | 0x76ac basekey:0x7f24cf7ffe80
  5722 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5722 ms     | 0x76ac ret:0x7f24cf6f5880
  5722 ms     | 0x76ac PK11_DeriveWithFlags()
  5722 ms     | 0x76ac basekey:0x7f24cf6f5480
  5722 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5722 ms     | 0x76ac ret:0x7f24cf6f5880
  5722 ms     | 0x76ac PK11_DeriveWithFlags()
  5722 ms     | 0x76ac basekey:0x7f24cf6f5480
  5722 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5722 ms     | 0x76ac ret:0x7f24cf6f5900
  5722 ms     | 0x76ac PK11_DeriveWithFlags()
  5722 ms     | 0x76ac basekey:0x7f24cf7ffe80
  5722 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5723 ms     | 0x76ac ret:0x7f24cfa64480
  5723 ms     | 0x76ac PK11_Encrypt()
  5723 ms     | 0x76ac symkey:0x7f24cf6f5800
  5723 ms     | 0x76ac PK11_DeriveWithFlags()
  5723 ms     | 0x76ac basekey:0x7f24cf6f5380
  5723 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5723 ms     | 0x76ac ret:0x7f24cfa64480
  5723 ms     | 0x76ac PK11_DeriveWithFlags()
  5723 ms     | 0x76ac basekey:0x7f24cf6f5380
  5723 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5723 ms     | 0x76ac ret:0x7f24cf6f5900
  5723 ms     | 0x76ac PK11_DeriveWithFlags()
  5723 ms     | 0x76ac basekey:0x7f24e1ff4680
  5723 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5723 ms     | 0x76ac ret:0x7f24cf6f5800
  5723 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  5723 ms     | 0x76ac privk:0x7f24cfb62820::7f24cfb62820  d0 33 68 cf                                      .3h.
  5723 ms     | 0x76ac privk:0x7f24cfb62820::7f24cfb62820  e5 e5 e5 e5                                      ....
  5723 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  5723 ms     | 0x76ac privk:0x7f24cfb60820::7f24cfb60820  f0 31 68 cf                                      .1h.
  5723 ms     | 0x76ac privk:0x7f24cfb60820::7f24cfb60820  e5 e5 e5 e5                                      ....
  5723 ms  0x76ac PK11_Encrypt()
  5723 ms  0x76ac symkey:0x7f24cfb3e900
  5723 ms  0x76ac PK11_Encrypt()
  5723 ms  0x76ac symkey:0x7f24cfb3ec80
  5724 ms  0x76ac SSL_AuthCertificateComplete()
  5724 ms  0x76ac fd:0x7f24cf8bed60
  5724 ms  0x76ac err:0x0
  5724 ms     | 0x76ac PK11_DeriveWithFlags()
  5724 ms     | 0x76ac basekey:0x7f24cf6f4580
  5724 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5724 ms     | 0x76ac ret:0x7f24e26f4380
  5724 ms     | 0x76ac PK11_DeriveWithFlags()
  5724 ms     | 0x76ac basekey:0x7f24cf6f4580
  5724 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5724 ms     | 0x76ac ret:0x7f24cf7ffe80
  5724 ms     | 0x76ac PK11_DeriveWithFlags()
  5724 ms     | 0x76ac basekey:0x7f24cf6f4580
  5724 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5724 ms     | 0x76ac ret:0x7f24e1ff4680
  5724 ms     | 0x76ac PK11_DeriveWithFlags()
  5724 ms     | 0x76ac basekey:0x7f24e1ff4600
  5724 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5724 ms     | 0x76ac ret:0x7f24cf6f5900
  5724 ms     | 0x76ac PK11_DeriveWithFlags()
  5724 ms     | 0x76ac basekey:0x7f24e1ff4600
  5724 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5724 ms     | 0x76ac ret:0x7f24cf6f5980
  5724 ms     | 0x76ac PK11_DeriveWithFlags()
  5724 ms     | 0x76ac basekey:0x7f24cf7ffe80
  5724 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5724 ms     | 0x76ac ret:0x7f24cf6f5980
  5724 ms     | 0x76ac PK11_DeriveWithFlags()
  5724 ms     | 0x76ac basekey:0x7f24cf7ffe80
  5724 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5724 ms     | 0x76ac ret:0x7f24cf6f5a00
  5724 ms     | 0x76ac PK11_DeriveWithFlags()
  5724 ms     | 0x76ac basekey:0x7f24e1ff4600
  5724 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5724 ms     | 0x76ac ret:0x7f24cf6f4480
  5724 ms     | 0x76ac PK11_Encrypt()
  5724 ms     | 0x76ac symkey:0x7f24cf6f5900
  5724 ms     | 0x76ac PK11_DeriveWithFlags()
  5724 ms     | 0x76ac basekey:0x7f24e26f4380
  5725 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5725 ms     | 0x76ac ret:0x7f24cf6f4480
  5725 ms     | 0x76ac PK11_DeriveWithFlags()
  5725 ms     | 0x76ac basekey:0x7f24e26f4380
  5725 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5725 ms     | 0x76ac ret:0x7f24cf6f5a00
  5725 ms     | 0x76ac PK11_DeriveWithFlags()
  5725 ms     | 0x76ac basekey:0x7f24cf6f4580
  5725 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5725 ms     | 0x76ac ret:0x7f24cf6f5900
  5725 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  5725 ms     | 0x76ac privk:0x7f24cfa99820::7f24cfa99820  80 7d a6 cf                                      .}..
  5725 ms     | 0x76ac privk:0x7f24cfa99820::7f24cfa99820  e5 e5 e5 e5                                      ....
  5725 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  5725 ms     | 0x76ac privk:0x7f24cf73b020::7f24cf73b020  70 79 a6 cf                                      py..
  5725 ms     | 0x76ac privk:0x7f24cf73b020::7f24cf73b020  e5 e5 e5 e5                                      ....
  5725 ms  0x76ac SSL_AuthCertificateComplete()
  5725 ms  0x76ac fd:0x7f24e0b7c580
  5725 ms  0x76ac err:0x0
  5725 ms     | 0x76ac PK11_DeriveWithFlags()
  5725 ms     | 0x76ac basekey:0x7f24cf6f5700
  5725 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5725 ms     | 0x76ac ret:0x7f24cf8f9780
  5725 ms     | 0x76ac PK11_DeriveWithFlags()
  5725 ms     | 0x76ac basekey:0x7f24cf6f5700
  5725 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5725 ms     | 0x76ac ret:0x7f24e1ff4600
  5725 ms     | 0x76ac PK11_DeriveWithFlags()
  5725 ms     | 0x76ac basekey:0x7f24cf6f5700
  5725 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5725 ms     | 0x76ac ret:0x7f24cf6f4580
  5725 ms     | 0x76ac PK11_DeriveWithFlags()
  5725 ms     | 0x76ac basekey:0x7f24cf6f4500
  5725 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5725 ms     | 0x76ac ret:0x7f24cf6f5a00
  5725 ms     | 0x76ac PK11_DeriveWithFlags()
  5725 ms     | 0x76ac basekey:0x7f24cf6f4500
  5725 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5725 ms     | 0x76ac ret:0x7f24cf6f5a80
  5725 ms     | 0x76ac PK11_DeriveWithFlags()
  5725 ms     | 0x76ac basekey:0x7f24e1ff4600
  5725 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5725 ms     | 0x76ac ret:0x7f24cf6f5a80
  5725 ms     | 0x76ac PK11_DeriveWithFlags()
  5725 ms     | 0x76ac basekey:0x7f24e1ff4600
  5725 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5725 ms     | 0x76ac ret:0x7f24cf6f5b00
  5725 ms     | 0x76ac PK11_DeriveWithFlags()
  5725 ms     | 0x76ac basekey:0x7f24cf6f4500
  5725 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5725 ms     | 0x76ac ret:0x7f24cf6f5400
  5725 ms     | 0x76ac PK11_Encrypt()
  5725 ms     | 0x76ac symkey:0x7f24cf6f5a00
  5725 ms     | 0x76ac PK11_DeriveWithFlags()
  5725 ms     | 0x76ac basekey:0x7f24cf8f9780
  5725 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5725 ms     | 0x76ac ret:0x7f24cf6f5400
  5726 ms     | 0x76ac PK11_DeriveWithFlags()
  5726 ms     | 0x76ac basekey:0x7f24cf8f9780
  5726 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5726 ms     | 0x76ac ret:0x7f24cf6f5b00
  5726 ms     | 0x76ac PK11_DeriveWithFlags()
  5726 ms     | 0x76ac basekey:0x7f24cf6f5700
  5726 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5726 ms     | 0x76ac ret:0x7f24cf6f5a00
  5726 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  5726 ms     | 0x76ac privk:0x7f24cfb5d020::7f24cfb5d020  60 30 68 cf                                      `0h.
  5726 ms     | 0x76ac privk:0x7f24cfb5d020::7f24cfb5d020  e5 e5 e5 e5                                      ....
  5726 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  5726 ms     | 0x76ac privk:0x7f24cfb57820::7f24cfb57820  60 65 b4 cf                                      `e..
  5726 ms     | 0x76ac privk:0x7f24cfb57820::7f24cfb57820  e5 e5 e5 e5                                      ....
           /* TID 0x76b4 */
  5727 ms  0x76b4 PR_Close()
  5727 ms  0x76b4 fd:0x7f24cf651a00
           /* TID 0x76ac */
  5728 ms  0x76ac PK11_Encrypt()
  5728 ms  0x76ac symkey:0x7f24cfa64480
  5728 ms  0x76ac PK11_Encrypt()
  5728 ms  0x76ac symkey:0x7f24cfa64480
  5728 ms  0x76ac PK11_Derive()
  5728 ms  0x76ac basekey:0x7f24cf6f4300
  5728 ms     | 0x76ac PK11_DeriveWithTemplate()
  5728 ms  0x76ac ret:0x7f24cf6f4500
  5728 ms  0x76ac PK11_PubDeriveWithKDF()
  5728 ms  0x76ac seckey:0x7f24cfb68020
  5728 ms     | 0x76ac EC_ValidatePublicKey()
  5730 ms     | 0x76ac ret:0x0
  5731 ms  0x76ac ret:0x7f24cf6f4300
  5731 ms  SECKEY_ECParamsToKeySize()
  5731 ms  0x76ac ret:0x100
  5731 ms  0x76ac PK11_DeriveWithFlags()
  5731 ms  0x76ac basekey:0x7f24cf6f4500
  5731 ms     | 0x76ac PK11_DeriveWithTemplate()
  5731 ms  0x76ac ret:0x7f24cf6f5700
  5731 ms  0x76ac PK11_Derive()
  5731 ms  0x76ac basekey:0x7f24cf6f4300
  5731 ms     | 0x76ac PK11_DeriveWithTemplate()
  5731 ms  0x76ac ret:0x7f24cf6f5b00
  5731 ms  0x76ac PK11_DeriveWithFlags()
  5731 ms  0x76ac basekey:0x7f24cf6f5b00
  5731 ms     | 0x76ac PK11_DeriveWithTemplate()
  5731 ms  0x76ac ret:0x7f24cf6f4500
  5731 ms  0x76ac PK11_DeriveWithFlags()
  5731 ms  0x76ac basekey:0x7f24cf6f5b00
  5731 ms     | 0x76ac PK11_DeriveWithTemplate()
  5731 ms  0x76ac ret:0x7f24cf6f4300
  5731 ms  0x76ac PK11_DeriveWithFlags()
  5731 ms  0x76ac basekey:0x7f24cf6f5b00
  5731 ms     | 0x76ac PK11_DeriveWithTemplate()
  5731 ms  0x76ac ret:0x7f24cf6f5700
  5731 ms  0x76ac PK11_Derive()
  5731 ms  0x76ac basekey:0x7f24cf6f5f00
  5731 ms     | 0x76ac PK11_DeriveWithTemplate()
  5731 ms  0x76ac ret:0x7f24cf6f5f80
  5731 ms  0x76ac PK11_DeriveWithFlags()
  5731 ms  0x76ac basekey:0x7f24cf6f4300
  5731 ms     | 0x76ac PK11_DeriveWithTemplate()
  5731 ms  0x76ac ret:0x7f24cf6f5b00
  5731 ms  0x76ac PK11_DeriveWithFlags()
  5731 ms  0x76ac basekey:0x7f24cf6f4300
  5731 ms     | 0x76ac PK11_DeriveWithTemplate()
  5731 ms  0x76ac ret:0x7f24cf6f5700
           /* TID 0x7748 */
  5734 ms  0x7748 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5735 ms  0x7748 ret:0x0
           /* TID 0x76ac */
  5735 ms  0x76ac PK11_DeriveWithFlags()
  5735 ms  0x76ac basekey:0x7f24cf6f4300
  5735 ms     | 0x76ac PK11_DeriveWithTemplate()
  5735 ms  0x76ac ret:0x7f24cf6f5700
  5735 ms  0x76ac PK11_Derive()
  5735 ms  0x76ac basekey:0x7f24cf6f5700
  5735 ms     | 0x76ac PK11_DeriveWithTemplate()
  5735 ms  0x76ac ret:0x7f24cf6f5f00
  5735 ms  0x76ac PK11_PubDeriveWithKDF()
  5735 ms  0x76ac seckey:0x7f24cfb6d820
  5735 ms     | 0x76ac EC_ValidatePublicKey()
  5736 ms     | 0x76ac ret:0x0
  5738 ms  0x76ac ret:0x7f24cf6f5700
  5738 ms  SECKEY_ECParamsToKeySize()
  5738 ms  0x76ac ret:0x100
  5738 ms  0x76ac PK11_DeriveWithFlags()
  5738 ms  0x76ac basekey:0x7f24cf6f5f00
  5738 ms     | 0x76ac PK11_DeriveWithTemplate()
  5738 ms  0x76ac ret:0x7f24cf689b80
  5738 ms  0x76ac PK11_Derive()
  5738 ms  0x76ac basekey:0x7f24cf6f5700
  5738 ms     | 0x76ac PK11_DeriveWithTemplate()
  5738 ms  0x76ac ret:0x7f24cf689c00
  5738 ms  0x76ac PK11_DeriveWithFlags()
  5738 ms  0x76ac basekey:0x7f24cf689c00
  5738 ms     | 0x76ac PK11_DeriveWithTemplate()
  5738 ms  0x76ac ret:0x7f24cf6f5f00
  5738 ms  0x76ac PK11_DeriveWithFlags()
  5738 ms  0x76ac basekey:0x7f24cf689c00
  5738 ms     | 0x76ac PK11_DeriveWithTemplate()
  5738 ms  0x76ac ret:0x7f24cf6f5700
  5738 ms  0x76ac PK11_DeriveWithFlags()
  5738 ms  0x76ac basekey:0x7f24cf689c00
  5738 ms     | 0x76ac PK11_DeriveWithTemplate()
  5738 ms  0x76ac ret:0x7f24cf689b80
  5738 ms  0x76ac PK11_Derive()
  5738 ms  0x76ac basekey:0x7f24cf689c80
  5738 ms     | 0x76ac PK11_DeriveWithTemplate()
  5738 ms  0x76ac ret:0x7f24cf689d00
  5738 ms  0x76ac PK11_DeriveWithFlags()
  5738 ms  0x76ac basekey:0x7f24cf6f5700
  5738 ms     | 0x76ac PK11_DeriveWithTemplate()
  5738 ms  0x76ac ret:0x7f24cf689c00
  5738 ms  0x76ac PK11_DeriveWithFlags()
  5738 ms  0x76ac basekey:0x7f24cf6f5700
  5738 ms     | 0x76ac PK11_DeriveWithTemplate()
  5738 ms  0x76ac ret:0x7f24cf689b80
           /* TID 0x7705 */
  5749 ms  0x7705 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5749 ms  0x7705 ret:0x0
           /* TID 0x76ac */
  5749 ms  0x76ac PK11_DeriveWithFlags()
  5749 ms  0x76ac basekey:0x7f24cf6f5700
  5749 ms     | 0x76ac PK11_DeriveWithTemplate()
  5749 ms  0x76ac ret:0x7f24cf689b80
  5749 ms  0x76ac PK11_Derive()
  5749 ms  0x76ac basekey:0x7f24cf689b80
  5749 ms     | 0x76ac PK11_DeriveWithTemplate()
  5749 ms  0x76ac ret:0x7f24cf689c80
  5749 ms  0x76ac PK11_PubDeriveWithKDF()
  5749 ms  0x76ac seckey:0x7f24cf6c2820
  5749 ms     | 0x76ac EC_ValidatePublicKey()
  5751 ms     | 0x76ac ret:0x0
  5752 ms  0x76ac ret:0x7f24cf689b80
  5752 ms  SECKEY_ECParamsToKeySize()
  5752 ms  0x76ac ret:0x100
  5752 ms  0x76ac PK11_DeriveWithFlags()
  5752 ms  0x76ac basekey:0x7f24cf689c80
  5752 ms     | 0x76ac PK11_DeriveWithTemplate()
  5752 ms  0x76ac ret:0x7f24cf689d80
  5752 ms  0x76ac PK11_Derive()
  5752 ms  0x76ac basekey:0x7f24cf689b80
  5752 ms     | 0x76ac PK11_DeriveWithTemplate()
  5752 ms  0x76ac ret:0x7f24cf689e00
  5753 ms  0x76ac PK11_DeriveWithFlags()
  5753 ms  0x76ac basekey:0x7f24cf689e00
  5753 ms     | 0x76ac PK11_DeriveWithTemplate()
  5753 ms  0x76ac ret:0x7f24cf689c80
  5753 ms  0x76ac PK11_DeriveWithFlags()
  5753 ms  0x76ac basekey:0x7f24cf689e00
  5753 ms     | 0x76ac PK11_DeriveWithTemplate()
  5753 ms  0x76ac ret:0x7f24cf689b80
  5753 ms  0x76ac PK11_DeriveWithFlags()
  5753 ms  0x76ac basekey:0x7f24cf689e00
  5753 ms     | 0x76ac PK11_DeriveWithTemplate()
  5753 ms  0x76ac ret:0x7f24cf689d80
  5753 ms  0x76ac PK11_Derive()
  5753 ms  0x76ac basekey:0x7f24cf689e80
  5753 ms     | 0x76ac PK11_DeriveWithTemplate()
  5753 ms  0x76ac ret:0x7f24cf689f00
  5753 ms  0x76ac PK11_DeriveWithFlags()
  5753 ms  0x76ac basekey:0x7f24cf689b80
  5753 ms     | 0x76ac PK11_DeriveWithTemplate()
  5753 ms  0x76ac ret:0x7f24cf689e00
  5753 ms  0x76ac PK11_DeriveWithFlags()
  5753 ms  0x76ac basekey:0x7f24cf689b80
  5753 ms     | 0x76ac PK11_DeriveWithTemplate()
  5753 ms  0x76ac ret:0x7f24cf689d80
           /* TID 0x7748 */
  5754 ms  0x7748 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5754 ms  0x7748 ret:0x0
           /* TID 0x76ac */
  5754 ms  0x76ac PK11_DeriveWithFlags()
  5754 ms  0x76ac basekey:0x7f24cf689b80
  5754 ms     | 0x76ac PK11_DeriveWithTemplate()
  5754 ms  0x76ac ret:0x7f24cf689d80
  5755 ms  0x76ac PK11_DeriveWithFlags()
  5755 ms  0x76ac basekey:0x7f24cf6f5800
  5755 ms     | 0x76ac PK11_DeriveWithTemplate()
  5755 ms  0x76ac ret:0x7f24cf689d80
  5755 ms  0x76ac PK11_DeriveWithFlags()
  5755 ms  0x76ac basekey:0x7f24cf6f5800
  5755 ms     | 0x76ac PK11_DeriveWithTemplate()
  5755 ms  0x76ac ret:0x7f24cf689d80
  5755 ms  0x76ac PK11_Encrypt()
  5755 ms  0x76ac symkey:0x7f24cf6f4480
  5756 ms  0x76ac PK11_Encrypt()
  5756 ms  0x76ac symkey:0x7f24cf6f5400
  5756 ms  0x76ac PK11_Encrypt()
  5756 ms  0x76ac symkey:0x7f24cfb3f280
  5757 ms  0x76ac PK11_Encrypt()
  5757 ms  0x76ac symkey:0x7f24cfb3e600
  5757 ms  0x76ac PK11_Encrypt()
  5757 ms  0x76ac symkey:0x7f24cfa64480
  5757 ms  0x76ac PK11_Encrypt()
  5757 ms  0x76ac symkey:0x7f24cfa64480
  5765 ms  0x76ac PK11_Encrypt()
  5765 ms  0x76ac symkey:0x7f24cfa64480
  5766 ms  0x76ac PK11_Encrypt()
  5766 ms  0x76ac symkey:0x7f24cfa64480
  5767 ms  0x76ac PK11_Encrypt()
  5767 ms  0x76ac symkey:0x7f24cfa64480
  5767 ms  0x76ac PK11_Encrypt()
  5767 ms  0x76ac symkey:0x7f24cfa64480
  5767 ms  0x76ac PK11_Encrypt()
  5767 ms  0x76ac symkey:0x7f24cfb3fb80
  5767 ms  0x76ac SSL_AuthCertificateComplete()
  5767 ms  0x76ac fd:0x7f24cfaeaf10
  5767 ms  0x76ac err:0x0
  5767 ms     | 0x76ac PK11_DeriveWithFlags()
  5767 ms     | 0x76ac basekey:0x7f24cf6f5f80
  5767 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5767 ms     | 0x76ac ret:0x7f24cf689d80
  5767 ms     | 0x76ac PK11_DeriveWithFlags()
  5767 ms     | 0x76ac basekey:0x7f24cf6f5f80
  5767 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5767 ms     | 0x76ac ret:0x7f24cf689e80
  5768 ms     | 0x76ac PK11_DeriveWithFlags()
  5768 ms     | 0x76ac basekey:0x7f24cf6f5f80
  5768 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5768 ms     | 0x76ac ret:0x7f24cf689f80
  5768 ms     | 0x76ac PK11_DeriveWithFlags()
  5768 ms     | 0x76ac basekey:0x7f24cf6f4500
  5768 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5768 ms     | 0x76ac ret:0x7f24cf68a000
  5768 ms     | 0x76ac PK11_DeriveWithFlags()
  5768 ms     | 0x76ac basekey:0x7f24cf6f4500
  5768 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5768 ms     | 0x76ac ret:0x7f24cf68a080
  5768 ms     | 0x76ac PK11_DeriveWithFlags()
  5768 ms     | 0x76ac basekey:0x7f24cf689e80
  5768 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5768 ms     | 0x76ac ret:0x7f24cf68a080
  5768 ms     | 0x76ac PK11_DeriveWithFlags()
  5768 ms     | 0x76ac basekey:0x7f24cf689e80
  5768 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5768 ms     | 0x76ac ret:0x7f24cf68a100
  5768 ms     | 0x76ac PK11_DeriveWithFlags()
  5768 ms     | 0x76ac basekey:0x7f24cf6f4500
  5768 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5768 ms     | 0x76ac ret:0x7f24cf6f5b00
  5768 ms     | 0x76ac PK11_Encrypt()
  5768 ms     | 0x76ac symkey:0x7f24cf68a000
  5768 ms     | 0x76ac PK11_DeriveWithFlags()
  5768 ms     | 0x76ac basekey:0x7f24cf689d80
  5768 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5768 ms     | 0x76ac ret:0x7f24cf6f5b00
  5768 ms     | 0x76ac PK11_DeriveWithFlags()
  5768 ms     | 0x76ac basekey:0x7f24cf689d80
  5768 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5768 ms     | 0x76ac ret:0x7f24cf68a100
  5768 ms     | 0x76ac PK11_DeriveWithFlags()
  5768 ms     | 0x76ac basekey:0x7f24cf6f5f80
  5768 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5768 ms     | 0x76ac ret:0x7f24cf68a000
  5768 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  5768 ms     | 0x76ac privk:0x7f24cfb68020::7f24cfb68020  90 37 68 cf                                      .7h.
  5768 ms     | 0x76ac privk:0x7f24cfb68020::7f24cfb68020  e5 e5 e5 e5                                      ....
  5768 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  5768 ms     | 0x76ac privk:0x7f24cfb66020::7f24cfb66020  b0 35 68 cf                                      .5h.
  5768 ms     | 0x76ac privk:0x7f24cfb66020::7f24cfb66020  e5 e5 e5 e5                                      ....
  5770 ms  0x76ac SSL_AuthCertificateComplete()
  5770 ms  0x76ac fd:0x7f24cfa69fd0
  5770 ms  0x76ac err:0x0
  5770 ms     | 0x76ac PK11_DeriveWithFlags()
  5770 ms     | 0x76ac basekey:0x7f24cf689d00
  5770 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5770 ms     | 0x76ac ret:0x7f24cf6f4300
  5770 ms     | 0x76ac PK11_DeriveWithFlags()
  5770 ms     | 0x76ac basekey:0x7f24cf689d00
  5770 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5770 ms     | 0x76ac ret:0x7f24cf6f4500
  5770 ms     | 0x76ac PK11_DeriveWithFlags()
  5770 ms     | 0x76ac basekey:0x7f24cf689d00
  5770 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5770 ms     | 0x76ac ret:0x7f24cf6f5f80
  5770 ms     | 0x76ac PK11_DeriveWithFlags()
  5770 ms     | 0x76ac basekey:0x7f24cf6f5f00
  5770 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5770 ms     | 0x76ac ret:0x7f24cf68a100
  5770 ms     | 0x76ac PK11_DeriveWithFlags()
  5770 ms     | 0x76ac basekey:0x7f24cf6f5f00
  5770 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5770 ms     | 0x76ac ret:0x7f24cf68a180
  5770 ms     | 0x76ac PK11_DeriveWithFlags()
  5770 ms     | 0x76ac basekey:0x7f24cf6f4500
  5770 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5770 ms     | 0x76ac ret:0x7f24cf68a180
  5770 ms     | 0x76ac PK11_DeriveWithFlags()
  5770 ms     | 0x76ac basekey:0x7f24cf6f4500
  5770 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5770 ms     | 0x76ac ret:0x7f24cf68a200
  5770 ms     | 0x76ac PK11_DeriveWithFlags()
  5770 ms     | 0x76ac basekey:0x7f24cf6f5f00
  5770 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5770 ms     | 0x76ac ret:0x7f24cf689c00
  5770 ms     | 0x76ac PK11_Encrypt()
  5770 ms     | 0x76ac symkey:0x7f24cf68a100
  5770 ms     | 0x76ac PK11_DeriveWithFlags()
  5770 ms     | 0x76ac basekey:0x7f24cf6f4300
  5770 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5770 ms     | 0x76ac ret:0x7f24cf689c00
  5770 ms     | 0x76ac PK11_DeriveWithFlags()
  5770 ms     | 0x76ac basekey:0x7f24cf6f4300
  5770 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5770 ms     | 0x76ac ret:0x7f24cf68a200
  5770 ms     | 0x76ac PK11_DeriveWithFlags()
  5770 ms     | 0x76ac basekey:0x7f24cf689d00
  5770 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5770 ms     | 0x76ac ret:0x7f24cf68a100
  5770 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  5770 ms     | 0x76ac privk:0x7f24cfb6d820::7f24cfb6d820  f0 3b 68 cf                                      .;h.
  5771 ms     | 0x76ac privk:0x7f24cfb6d820::7f24cfb6d820  e5 e5 e5 e5                                      ....
  5771 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  5771 ms     | 0x76ac privk:0x7f24cfb6a820::7f24cfb6a820  20 39 68 cf                                       9h.
  5771 ms     | 0x76ac privk:0x7f24cfb6a820::7f24cfb6a820  e5 e5 e5 e5                                      ....
  5771 ms  0x76ac SSL_AuthCertificateComplete()
  5771 ms  0x76ac fd:0x7f24e0b7c640
  5771 ms  0x76ac err:0x0
  5771 ms     | 0x76ac PK11_DeriveWithFlags()
  5771 ms     | 0x76ac basekey:0x7f24cf689f00
  5771 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5771 ms     | 0x76ac ret:0x7f24cf6f5700
  5771 ms     | 0x76ac PK11_DeriveWithFlags()
  5771 ms     | 0x76ac basekey:0x7f24cf689f00
  5771 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5771 ms     | 0x76ac ret:0x7f24cf6f5f00
  5771 ms     | 0x76ac PK11_DeriveWithFlags()
  5771 ms     | 0x76ac basekey:0x7f24cf689f00
  5771 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5771 ms     | 0x76ac ret:0x7f24cf689d00
  5771 ms     | 0x76ac PK11_DeriveWithFlags()
  5771 ms     | 0x76ac basekey:0x7f24cf689c80
  5771 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5771 ms     | 0x76ac ret:0x7f24cf68a200
  5771 ms     | 0x76ac PK11_DeriveWithFlags()
  5771 ms     | 0x76ac basekey:0x7f24cf689c80
  5771 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5771 ms     | 0x76ac ret:0x7f24cf68a280
  5771 ms     | 0x76ac PK11_DeriveWithFlags()
  5771 ms     | 0x76ac basekey:0x7f24cf6f5f00
  5771 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5771 ms     | 0x76ac ret:0x7f24cf68a280
  5771 ms     | 0x76ac PK11_DeriveWithFlags()
  5771 ms     | 0x76ac basekey:0x7f24cf6f5f00
  5771 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5778 ms     | 0x76ac ret:0x7f24cf68a300
  5778 ms     | 0x76ac PK11_DeriveWithFlags()
  5778 ms     | 0x76ac basekey:0x7f24cf689c80
  5779 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5779 ms     | 0x76ac ret:0x7f24cf689e00
  5779 ms     | 0x76ac PK11_Encrypt()
  5779 ms     | 0x76ac symkey:0x7f24cf68a200
  5779 ms     | 0x76ac PK11_DeriveWithFlags()
  5779 ms     | 0x76ac basekey:0x7f24cf6f5700
  5779 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5779 ms     | 0x76ac ret:0x7f24cf689e00
  5779 ms     | 0x76ac PK11_DeriveWithFlags()
  5779 ms     | 0x76ac basekey:0x7f24cf6f5700
  5779 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5779 ms     | 0x76ac ret:0x7f24cf68a300
  5779 ms     | 0x76ac PK11_DeriveWithFlags()
  5779 ms     | 0x76ac basekey:0x7f24cf689f00
  5779 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  5779 ms     | 0x76ac ret:0x7f24cf68a200
  5779 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  5779 ms     | 0x76ac privk:0x7f24cf6c2820::7f24cf6c2820  80 ad 8b cf                                      ....
  5779 ms     | 0x76ac privk:0x7f24cf6c2820::7f24cf6c2820  e5 e5 e5 e5                                      ....
  5779 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  5779 ms     | 0x76ac privk:0x7f24e59a5020::7f24e59a5020  70 3e 68 cf                                      p>h.
  5779 ms     | 0x76ac privk:0x7f24e59a5020::7f24e59a5020  e5 e5 e5 e5                                      ....
  5781 ms  0x76ac PK11_Encrypt()
  5781 ms  0x76ac symkey:0x7f24cfa64480
  5781 ms  0x76ac PK11_Encrypt()
  5781 ms  0x76ac symkey:0x7f24cfa64480
           /* TID 0x76b4 */
  5782 ms  0x76b4 PR_Close()
  5782 ms  0x76b4 fd:0x7f24cf651040
           /* TID 0x76ac */
  5782 ms  0x76ac SSL_ImportFD()
  5782 ms  0x76ac ret:0x7f24cf651b20
  5782 ms  0x76ac SSL_AuthCertificateHook()
  5782 ms  0x76ac fd:0x7f24cf651b20
  5782 ms  0x76ac ret:0x0
  5782 ms  0x76ac PR_Connect()
  5782 ms  0x76ac fd:0x7f24cf651b20
  5782 ms  0x76ac SSL_ImportFD()
  5782 ms  0x76ac ret:0x7f24cf6f3820
  5782 ms  0x76ac SSL_AuthCertificateHook()
  5782 ms  0x76ac fd:0x7f24cf6f3820
  5782 ms  0x76ac ret:0x0
  5783 ms  0x76ac PR_Connect()
  5783 ms  0x76ac fd:0x7f24cf6f3820
  5783 ms  0x76ac SSL_ImportFD()
  5783 ms  0x76ac ret:0x7f24cf6f37c0
  5783 ms  0x76ac SSL_AuthCertificateHook()
  5783 ms  0x76ac fd:0x7f24cf6f37c0
  5783 ms  0x76ac ret:0x0
  5783 ms  0x76ac PR_Connect()
  5783 ms  0x76ac fd:0x7f24cf6f37c0
  5783 ms  0x76ac SSL_ImportFD()
  5783 ms  0x76ac ret:0x7f24cf6f3760
  5783 ms  0x76ac SSL_AuthCertificateHook()
  5783 ms  0x76ac fd:0x7f24cf6f3760
  5783 ms  0x76ac ret:0x0
  5783 ms  0x76ac PR_Connect()
  5783 ms  0x76ac fd:0x7f24cf6f3760
           /* TID 0x76b4 */
  5784 ms  0x76b4 PR_Close()
  5784 ms  0x76b4 fd:0x7f24cf651040
  5785 ms  0x76b4 PR_Close()
  5785 ms  0x76b4 fd:0x7f24cf651040
  5785 ms  0x76b4 PR_Close()
  5785 ms  0x76b4 fd:0x7f24cf651040
  5786 ms  0x76b4 PR_Close()
  5786 ms  0x76b4 fd:0x7f24cf651040
           /* TID 0x76ac */
  5786 ms  0x76ac PK11_Encrypt()
  5786 ms  0x76ac symkey:0x7f24cfa64480
  5787 ms  0x76ac PK11_Encrypt()
  5787 ms  0x76ac symkey:0x7f24cf6f5b00
  5787 ms  0x76ac PK11_Encrypt()
  5787 ms  0x76ac symkey:0x7f24cf689c00
  5787 ms  0x76ac PK11_Encrypt()
  5787 ms  0x76ac symkey:0x7f24cf689e00
  5788 ms  0x76ac PK11_DeriveWithFlags()
  5788 ms  0x76ac basekey:0x7f24cf6f5900
  5788 ms     | 0x76ac PK11_DeriveWithTemplate()
  5788 ms  0x76ac ret:0x7f24cf689b80
  5788 ms  0x76ac PK11_DeriveWithFlags()
  5788 ms  0x76ac basekey:0x7f24cf6f5900
  5788 ms     | 0x76ac PK11_DeriveWithTemplate()
  5788 ms  0x76ac ret:0x7f24cf689b80
  5788 ms  0x76ac PK11_DeriveWithFlags()
  5788 ms  0x76ac basekey:0x7f24cf6f5a00
  5788 ms     | 0x76ac PK11_DeriveWithTemplate()
  5788 ms  0x76ac ret:0x7f24cf689b80
  5788 ms  0x76ac PK11_DeriveWithFlags()
  5788 ms  0x76ac basekey:0x7f24cf6f5a00
  5788 ms     | 0x76ac PK11_DeriveWithTemplate()
  5788 ms  0x76ac ret:0x7f24cf689b80
  5788 ms  0x76ac PR_Close()
  5788 ms  0x76ac fd:0x7f24e0b7c580
  5788 ms     | 0x76ac PK11_Encrypt()
  5788 ms     | 0x76ac symkey:0x7f24cf6f5400
  5788 ms  0x76ac PR_Close()
  5788 ms  0x76ac fd:0x7f24cf8bed60
  5788 ms     | 0x76ac PK11_Encrypt()
  5788 ms     | 0x76ac symkey:0x7f24cf6f4480
  5789 ms  0x76ac PK11_Encrypt()
  5789 ms  0x76ac symkey:0x7f24cfb3f580
  5789 ms  0x76ac PK11_Encrypt()
  5789 ms  0x76ac symkey:0x7f24cfb3f880
  5789 ms  0x76ac PK11_Encrypt()
  5789 ms  0x76ac symkey:0x7f24cfa64480
  5789 ms  0x76ac PK11_Encrypt()
  5789 ms  0x76ac symkey:0x7f24cfa64480
  5790 ms  0x76ac PK11_Encrypt()
  5790 ms  0x76ac symkey:0x7f24cfb3e900
  5790 ms  0x76ac PK11_Encrypt()
  5790 ms  0x76ac symkey:0x7f24cfb3ec80
  5790 ms  0x76ac PK11_Encrypt()
  5790 ms  0x76ac symkey:0x7f24cfa64480
  5791 ms  0x76ac PK11_Encrypt()
  5791 ms  0x76ac symkey:0x7f24cfa64480
  5792 ms  0x76ac PK11_Encrypt()
  5792 ms  0x76ac symkey:0x7f24cfa64480
  5792 ms  0x76ac PK11_Encrypt()
  5792 ms  0x76ac symkey:0x7f24cfa64480
  5795 ms  0x76ac PK11_DeriveWithFlags()
  5795 ms  0x76ac basekey:0x7f24cf68a000
  5795 ms     | 0x76ac PK11_DeriveWithTemplate()
  5796 ms  0x76ac ret:0x7f24e1ff4680
  5796 ms  0x76ac PK11_DeriveWithFlags()
  5796 ms  0x76ac basekey:0x7f24cf68a000
  5796 ms     | 0x76ac PK11_DeriveWithTemplate()
  5796 ms  0x76ac ret:0x7f24e1ff4680
  5796 ms  0x76ac PK11_DeriveWithFlags()
  5796 ms  0x76ac basekey:0x7f24cf68a100
  5796 ms     | 0x76ac PK11_DeriveWithTemplate()
  5796 ms  0x76ac ret:0x7f24e1ff4680
  5796 ms  0x76ac PK11_DeriveWithFlags()
  5796 ms  0x76ac basekey:0x7f24cf68a100
  5796 ms     | 0x76ac PK11_DeriveWithTemplate()
  5796 ms  0x76ac ret:0x7f24e1ff4680
  5796 ms  0x76ac PR_Close()
  5796 ms  0x76ac fd:0x7f24cfa69fd0
  5796 ms     | 0x76ac PK11_Encrypt()
  5796 ms     | 0x76ac symkey:0x7f24cf689c00
  5796 ms  0x76ac PR_Close()
  5796 ms  0x76ac fd:0x7f24cfaeaf10
  5796 ms     | 0x76ac PK11_Encrypt()
  5796 ms     | 0x76ac symkey:0x7f24cf6f5b00
  5797 ms  0x76ac PK11_Encrypt()
  5797 ms  0x76ac symkey:0x7f24cfb3f280
           /* TID 0x76b4 */
  5798 ms  0x76b4 PR_Close()
  5798 ms  0x76b4 fd:0x7f24cf651070
  5799 ms  0x76b4 PR_Close()
  5799 ms  0x76b4 fd:0x7f24cf651070
  5801 ms  0x76b4 PR_Close()
  5801 ms  0x76b4 fd:0x7f24cf651070
  5801 ms  0x76b4 PR_Close()
  5801 ms  0x76b4 fd:0x7f24cf651880
  5801 ms  0x76b4 PR_Close()
  5801 ms  0x76b4 fd:0x7f24cf651be0
           /* TID 0x76ac */
  5804 ms  0x76ac PK11_DeriveWithFlags()
  5804 ms  0x76ac basekey:0x7f24cf68a200
  5804 ms     | 0x76ac PK11_DeriveWithTemplate()
  5804 ms  0x76ac ret:0x7f24cf689f80
  5804 ms  0x76ac PK11_DeriveWithFlags()
  5804 ms  0x76ac basekey:0x7f24cf68a200
  5804 ms     | 0x76ac PK11_DeriveWithTemplate()
  5804 ms  0x76ac ret:0x7f24cf689f80
  5804 ms  0x76ac PR_Close()
  5804 ms  0x76ac fd:0x7f24e0b7c640
  5804 ms     | 0x76ac PK11_Encrypt()
  5804 ms     | 0x76ac symkey:0x7f24cf689e00
           /* TID 0x76b4 */
  5819 ms  0x76b4 PR_Close()
  5819 ms  0x76b4 fd:0x7f24cf651070
           /* TID 0x76ac */
  5823 ms  0x76ac SECKEY_CreateECPrivateKey()
  5823 ms  0x76ac cx:0x7f24cf670f48
  5823 ms     | 0x76ac EC_ValidatePublicKey()
  5823 ms     | 0x76ac ret:0x0
  5823 ms  0x76ac ret:0x7f24cf6cc020::7f24cf6cc020  c0 34 68 cf                                      .4h.
  5824 ms  0x76ac SECKEY_CreateECPrivateKey()
  5824 ms  0x76ac cx:0x7f24cf670f48
  5824 ms     | 0x76ac EC_ValidatePublicKey()
  5826 ms     | 0x76ac ret:0x0
  5826 ms  0x76ac ret:0x7f24cf6d0020::7f24cf6d0020  40 37 68 cf                                      @7h.
           /* TID 0x76b4 */
  5830 ms  0x76b4 PR_Close()
  5830 ms  0x76b4 fd:0x7f24cf651880
  5832 ms  0x76b4 PR_Close()
  5832 ms  0x76b4 fd:0x7f24cf651880
           /* TID 0x76ac */
  5835 ms  0x76ac SECKEY_CreateECPrivateKey()
  5835 ms  0x76ac cx:0x7f24cf671428
  5836 ms     | 0x76ac EC_ValidatePublicKey()
  5836 ms     | 0x76ac ret:0x0
  5836 ms  0x76ac ret:0x7f24cf6d2820::7f24cf6d2820  80 38 68 cf                                      .8h.
  5837 ms  0x76ac SECKEY_CreateECPrivateKey()
  5837 ms  0x76ac cx:0x7f24cf671428
  5837 ms     | 0x76ac EC_ValidatePublicKey()
  5839 ms     | 0x76ac ret:0x0
  5839 ms  0x76ac ret:0x7f24cf6d6820::7f24cf6d6820  60 3a 68 cf                                      `:h.
  5846 ms  0x76ac SECKEY_CreateECPrivateKey()
  5846 ms  0x76ac cx:0x7f24cf671288
  5847 ms     | 0x76ac EC_ValidatePublicKey()
  5847 ms     | 0x76ac ret:0x0
  5847 ms  0x76ac ret:0x7f24cf6d9020::7f24cf6d9020  f0 3b 68 cf                                      .;h.
  5847 ms  0x76ac SECKEY_CreateECPrivateKey()
  5847 ms  0x76ac cx:0x7f24cf671288
  5848 ms     | 0x76ac EC_ValidatePublicKey()
  5849 ms     | 0x76ac ret:0x0
  5849 ms  0x76ac ret:0x7f24cf6db020::7f24cf6db020  70 3e 68 cf                                      p>h.
  5850 ms  0x76ac SECKEY_CreateECPrivateKey()
  5850 ms  0x76ac cx:0x7f24cf6710e8
  5850 ms     | 0x76ac EC_ValidatePublicKey()
  5850 ms     | 0x76ac ret:0x0
  5850 ms  0x76ac ret:0x7f24cf6dd820::7f24cf6dd820  b0 3f 68 cf                                      .?h.
  5850 ms  0x76ac SECKEY_CreateECPrivateKey()
  5850 ms  0x76ac cx:0x7f24cf6710e8
  5851 ms     | 0x76ac EC_ValidatePublicKey()
  5852 ms     | 0x76ac ret:0x0
  5852 ms  0x76ac ret:0x7f24cf6df820::7f24cf6df820  e0 f2 6e cf                                      ..n.
           /* TID 0x76b4 */
  5857 ms  0x76b4 PR_Close()
  5857 ms  0x76b4 fd:0x7f24cf651c40
  5857 ms  0x76b4 PR_Close()
  5857 ms  0x76b4 fd:0x7f24cf651c40
  5858 ms  0x76b4 PR_Close()
  5858 ms  0x76b4 fd:0x7f24cf651c40
  5858 ms  0x76b4 PR_Close()
  5858 ms  0x76b4 fd:0x7f24cf651c40
  5859 ms  0x76b4 PR_Close()
  5859 ms  0x76b4 fd:0x7f24cf651c40
  5860 ms  0x76b4 PR_Close()
  5860 ms  0x76b4 fd:0x7f24cf651c40
  5860 ms  0x76b4 PR_Close()
  5860 ms  0x76b4 fd:0x7f24cf651c40
  5861 ms  0x76b4 PR_Close()
  5861 ms  0x76b4 fd:0x7f24cf651c40
  5862 ms  0x76b4 PR_Close()
  5862 ms  0x76b4 fd:0x7f24cf651c40
  5862 ms  0x76b4 PR_Close()
  5862 ms  0x76b4 fd:0x7f24cf651c40
  5863 ms  0x76b4 PR_Close()
  5863 ms  0x76b4 fd:0x7f24cf651c40
  5863 ms  0x76b4 PR_Close()
  5863 ms  0x76b4 fd:0x7f24cf651c40
  5864 ms  0x76b4 PR_Close()
  5864 ms  0x76b4 fd:0x7f24cf651c40
  5864 ms  0x76b4 PR_Close()
  5864 ms  0x76b4 fd:0x7f24cf651c40
  5865 ms  0x76b4 PR_Close()
  5865 ms  0x76b4 fd:0x7f24cf651c40
           /* TID 0x76ac */
  5867 ms  0x76ac PK11_Derive()
  5867 ms  0x76ac basekey:0x7f24cf6f5f00
  5867 ms     | 0x76ac PK11_DeriveWithTemplate()
  5867 ms  0x76ac ret:0x7f24cf689d00
  5867 ms  0x76ac PK11_Encrypt()
  5867 ms  0x76ac symkey:0x7f24cfa63380
  5867 ms  0x76ac _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5868 ms  0x76ac ret:0x0
  5868 ms  0x76ac SECKEY_DestroyPrivateKey()
  5868 ms  0x76ac privk:0x7f24cf6d0020::7f24cf6d0020  40 37 68 cf                                      @7h.
  5868 ms  0x76ac privk:0x7f24cf6d0020::7f24cf6d0020  e5 e5 e5 e5                                      ....
  5868 ms  0x76ac SECKEY_DestroyPrivateKey()
  5868 ms  0x76ac privk:0x7f24cf6cc020::7f24cf6cc020  c0 34 68 cf                                      .4h.
  5868 ms  0x76ac privk:0x7f24cf6cc020::7f24cf6cc020  e5 e5 e5 e5                                      ....
  5880 ms  SECKEY_ECParamsToKeySize()
  5880 ms  0x76ac ret:0x100
  5880 ms  SECKEY_ECParamsToBasePointOrderLen()
  5880 ms  0x76ac ret:0x100
  5880 ms  SECKEY_ECParamsToBasePointOrderLen()
  5880 ms  0x76ac ret:0x100
  5880 ms  0x76ac EC_ValidatePublicKey()
  5881 ms  0x76ac ret:0x0
  5883 ms  SECKEY_ECParamsToKeySize()
  5883 ms  0x76ac ret:0x100
  5883 ms  0x76ac SECKEY_CreateECPrivateKey()
  5883 ms  0x76ac cx:0x7f24cf671428
  5884 ms     | 0x76ac EC_ValidatePublicKey()
  5885 ms     | 0x76ac ret:0x0
  5885 ms  0x76ac ret:0x7f24cf6cc020::7f24cf6cc020  00 f6 6e cf                                      ..n.
  5885 ms  0x76ac PK11_PubDeriveWithKDF()
  5885 ms  0x76ac seckey:0x7f24cf6cc020
  5885 ms     | 0x76ac EC_ValidatePublicKey()
  5887 ms     | 0x76ac ret:0x0
  5888 ms  0x76ac ret:0x7f24cf6f5700
  5888 ms  0x76ac PK11_DeriveWithFlags()
  5888 ms  0x76ac basekey:0x7f24cf6f5700
  5888 ms     | 0x76ac PK11_DeriveWithTemplate()
  5888 ms  0x76ac ret:0x7f24cf68a200
  5888 ms  0x76ac PK11_Derive()
  5888 ms  0x76ac basekey:0x7f24cf68a200
  5888 ms     | 0x76ac PK11_DeriveWithTemplate()
  5888 ms  0x76ac ret:0x7f24cf68a280
  5888 ms  0x76ac SECKEY_DestroyPrivateKey()
  5888 ms  0x76ac privk:0x7f24cf6cc020::7f24cf6cc020  00 f6 6e cf                                      ..n.
  5888 ms  0x76ac privk:0x7f24cf6cc020::7f24cf6cc020  e5 e5 e5 e5                                      ....
  5902 ms  0x76ac PK11_Encrypt()
  5902 ms  0x76ac symkey:0x7f24cf311500
  5903 ms  0x76ac SSL_AuthCertificateComplete()
  5903 ms  0x76ac fd:0x7f24cf6f3760
  5903 ms  0x76ac err:0x0
  5903 ms  0x76ac PK11_Encrypt()
  5903 ms  0x76ac symkey:0x7f24cf311500
  5904 ms  0x76ac PK11_Derive()
  5904 ms  0x76ac basekey:0x7f24cf689e00
  5904 ms     | 0x76ac PK11_DeriveWithTemplate()
  5904 ms  0x76ac ret:0x7f24cf6f5700
  5904 ms  0x76ac PK11_Encrypt()
  5904 ms  0x76ac symkey:0x7f24cf311900
  5905 ms  0x76ac _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5905 ms  0x76ac ret:0x0
  5905 ms  0x76ac SECKEY_DestroyPrivateKey()
  5905 ms  0x76ac privk:0x7f24cf6db020::7f24cf6db020  70 3e 68 cf                                      p>h.
  5905 ms  0x76ac privk:0x7f24cf6db020::7f24cf6db020  e5 e5 e5 e5                                      ....
  5905 ms  0x76ac SECKEY_DestroyPrivateKey()
  5905 ms  0x76ac privk:0x7f24cf6d9020::7f24cf6d9020  f0 3b 68 cf                                      .;h.
  5905 ms  0x76ac privk:0x7f24cf6d9020::7f24cf6d9020  e5 e5 e5 e5                                      ....
  5905 ms  0x76ac PK11_Derive()
  5905 ms  0x76ac basekey:0x7f24cf689e80
  5905 ms     | 0x76ac PK11_DeriveWithTemplate()
  5905 ms  0x76ac ret:0x7f24cf689f80
  5905 ms  0x76ac PK11_Encrypt()
  5905 ms  0x76ac symkey:0x7f24cf311b00
  5908 ms  0x76ac _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5908 ms  0x76ac ret:0x0
  5908 ms  0x76ac SECKEY_DestroyPrivateKey()
  5908 ms  0x76ac privk:0x7f24cf6df820::7f24cf6df820  e0 f2 6e cf                                      ..n.
  5908 ms  0x76ac privk:0x7f24cf6df820::7f24cf6df820  e5 e5 e5 e5                                      ....
  5908 ms  0x76ac SECKEY_DestroyPrivateKey()
  5908 ms  0x76ac privk:0x7f24cf6dd820::7f24cf6dd820  b0 3f 68 cf                                      .?h.
  5908 ms  0x76ac privk:0x7f24cf6dd820::7f24cf6dd820  e5 e5 e5 e5                                      ....
  5921 ms  0x76ac PK11_Encrypt()
  5921 ms  0x76ac symkey:0x7f24cfab4e00
  5923 ms  0x76ac SSL_ImportFD()
  5923 ms  0x76ac ret:0x7f24cf6f3f10
  5923 ms  0x76ac SSL_AuthCertificateHook()
  5923 ms  0x76ac fd:0x7f24cf6f3f10
  5923 ms  0x76ac ret:0x0
  5923 ms  0x76ac PR_Connect()
  5923 ms  0x76ac fd:0x7f24cf6f3f10
  5923 ms  0x76ac SSL_ImportFD()
  5923 ms  0x76ac ret:0x7f24cf8be9a0
  5923 ms  0x76ac SSL_AuthCertificateHook()
  5923 ms  0x76ac fd:0x7f24cf8be9a0
  5923 ms  0x76ac ret:0x0
  5923 ms  0x76ac PR_Connect()
  5923 ms  0x76ac fd:0x7f24cf8be9a0
  5943 ms  0x76ac SECKEY_DestroyPrivateKey()
  5943 ms  0x76ac privk:0x7f24cf6d6820::7f24cf6d6820  60 3a 68 cf                                      `:h.
  5944 ms  0x76ac privk:0x7f24cf6d6820::7f24cf6d6820  e5 e5 e5 e5                                      ....
  5944 ms  0x76ac SECKEY_DestroyPrivateKey()
  5944 ms  0x76ac privk:0x7f24cf6d2820::7f24cf6d2820  80 38 68 cf                                      .8h.
  5944 ms  0x76ac privk:0x7f24cf6d2820::7f24cf6d2820  e5 e5 e5 e5                                      ....
  5964 ms  0x76ac SECKEY_CreateECPrivateKey()
  5964 ms  0x76ac cx:0x7f24cf671768
  5965 ms     | 0x76ac EC_ValidatePublicKey()
  5965 ms     | 0x76ac ret:0x0
  5965 ms  0x76ac ret:0x7f24cf6d0020::7f24cf6d0020  20 39 68 cf                                       9h.
  5965 ms  0x76ac SECKEY_CreateECPrivateKey()
  5965 ms  0x76ac cx:0x7f24cf671768
  5965 ms     | 0x76ac EC_ValidatePublicKey()
  5967 ms     | 0x76ac ret:0x0
  5967 ms  0x76ac ret:0x7f24cf6d2820::7f24cf6d2820  e0 37 68 cf                                      .7h.
  5970 ms  0x76ac SECKEY_CreateECPrivateKey()
  5970 ms  0x76ac cx:0x7f24cf671908
  5971 ms     | 0x76ac EC_ValidatePublicKey()
  5971 ms     | 0x76ac ret:0x0
  5971 ms  0x76ac ret:0x7f24cf6d5020::7f24cf6d5020  90 f7 6e cf                                      ..n.
  5971 ms  0x76ac SECKEY_CreateECPrivateKey()
  5971 ms  0x76ac cx:0x7f24cf671908
  5971 ms     | 0x76ac EC_ValidatePublicKey()
  5973 ms     | 0x76ac ret:0x0
  5973 ms  0x76ac ret:0x7f24cf6d7020::7f24cf6d7020  10 fa 6e cf                                      ..n.
           /* TID 0x76b4 */
  5988 ms  0x76b4 PR_Close()
  5988 ms  0x76b4 fd:0x7f24cf6f3d30
  6000 ms  0x76b4 PR_Close()
  6000 ms  0x76b4 fd:0x7f24cf6f3d30
           /* TID 0x76ac */
  6008 ms  SECKEY_ECParamsToKeySize()
  6008 ms  0x76ac ret:0x100
  6008 ms  SECKEY_ECParamsToBasePointOrderLen()
  6008 ms  0x76ac ret:0x100
  6008 ms  SECKEY_ECParamsToBasePointOrderLen()
  6008 ms  0x76ac ret:0x100
  6009 ms  0x76ac EC_ValidatePublicKey()
  6010 ms  0x76ac ret:0x0
  6012 ms  SECKEY_ECParamsToKeySize()
  6012 ms  0x76ac ret:0x100
  6012 ms  0x76ac SECKEY_CreateECPrivateKey()
  6012 ms  0x76ac cx:0x7f24cf671768
  6012 ms     | 0x76ac EC_ValidatePublicKey()
  6020 ms     | 0x76ac ret:0x0
  6022 ms  0x76ac ret:0x7f24cf6d8820::7f24cf6d8820  d0 fd 6e cf                                      ..n.
  6022 ms  0x76ac PK11_PubDeriveWithKDF()
  6022 ms  0x76ac seckey:0x7f24cf6d8820
  6022 ms     | 0x76ac EC_ValidatePublicKey()
  6024 ms     | 0x76ac ret:0x0
  6025 ms  0x76ac ret:0x7f24cf689d80
  6025 ms  0x76ac PK11_DeriveWithFlags()
  6025 ms  0x76ac basekey:0x7f24cf689d80
  6025 ms     | 0x76ac PK11_DeriveWithTemplate()
  6025 ms  0x76ac ret:0x7f24cf68a000
  6025 ms  0x76ac PK11_Derive()
  6025 ms  0x76ac basekey:0x7f24cf68a000
  6025 ms     | 0x76ac PK11_DeriveWithTemplate()
  6025 ms  0x76ac ret:0x7f24cf68a080
  6025 ms  0x76ac SECKEY_DestroyPrivateKey()
  6025 ms  0x76ac privk:0x7f24cf6d8820::7f24cf6d8820  d0 fd 6e cf                                      ..n.
  6025 ms  0x76ac privk:0x7f24cf6d8820::7f24cf6d8820  e5 e5 e5 e5                                      ....
  6025 ms  0x76ac PK11_Encrypt()
  6025 ms  0x76ac symkey:0x7f24cf312680
  6035 ms  0x76ac SSL_AuthCertificateComplete()
  6035 ms  0x76ac fd:0x7f24cf6f3f10
  6035 ms  0x76ac err:0x0
  6035 ms  0x76ac PK11_Encrypt()
  6035 ms  0x76ac symkey:0x7f24cf312680
  6036 ms  SECKEY_ECParamsToKeySize()
  6036 ms  0x76ac ret:0x100
  6036 ms  SECKEY_ECParamsToBasePointOrderLen()
  6036 ms  0x76ac ret:0x100
  6036 ms  SECKEY_ECParamsToBasePointOrderLen()
  6036 ms  0x76ac ret:0x100
  6036 ms  0x76ac EC_ValidatePublicKey()
  6037 ms  0x76ac ret:0x0
  6049 ms  SECKEY_ECParamsToKeySize()
  6049 ms  0x76ac ret:0x100
  6049 ms  0x76ac SECKEY_CreateECPrivateKey()
  6049 ms  0x76ac cx:0x7f24cf671908
  6050 ms     | 0x76ac EC_ValidatePublicKey()
  6051 ms     | 0x76ac ret:0x0
  6051 ms  0x76ac ret:0x7f24cf6db820::7f24cf6db820  e0 27 75 cf                                      .'u.
  6051 ms  0x76ac PK11_PubDeriveWithKDF()
  6051 ms  0x76ac seckey:0x7f24cf6db820
  6051 ms     | 0x76ac EC_ValidatePublicKey()
  6053 ms     | 0x76ac ret:0x0
  6054 ms  0x76ac ret:0x7f24cf689d80
  6054 ms  0x76ac PK11_DeriveWithFlags()
  6054 ms  0x76ac basekey:0x7f24cf689d80
  6054 ms     | 0x76ac PK11_DeriveWithTemplate()
  6054 ms  0x76ac ret:0x7f24cf6f5b00
  6054 ms  0x76ac PK11_Derive()
  6054 ms  0x76ac basekey:0x7f24cf6f5b00
  6054 ms     | 0x76ac PK11_DeriveWithTemplate()
  6055 ms  0x76ac ret:0x7f24cf6f5f80
  6055 ms  0x76ac SECKEY_DestroyPrivateKey()
  6055 ms  0x76ac privk:0x7f24cf6db820::7f24cf6db820  e0 27 75 cf                                      .'u.
  6055 ms  0x76ac privk:0x7f24cf6db820::7f24cf6db820  e5 e5 e5 e5                                      ....
  6055 ms  0x76ac PK11_Encrypt()
  6055 ms  0x76ac symkey:0x7f24cf6f4380
  6067 ms  0x76ac SSL_AuthCertificateComplete()
  6067 ms  0x76ac fd:0x7f24cf8be9a0
  6067 ms  0x76ac err:0x0
  6068 ms  0x76ac SECKEY_DestroyPrivateKey()
  6068 ms  0x76ac privk:0x7f24cf6d2820::7f24cf6d2820  e0 37 68 cf                                      .7h.
  6068 ms  0x76ac privk:0x7f24cf6d2820::7f24cf6d2820  e5 e5 e5 e5                                      ....
  6068 ms  0x76ac SECKEY_DestroyPrivateKey()
  6068 ms  0x76ac privk:0x7f24cf6d0020::7f24cf6d0020  20 39 68 cf                                       9h.
  6068 ms  0x76ac privk:0x7f24cf6d0020::7f24cf6d0020  e5 e5 e5 e5                                      ....
  6069 ms  0x76ac PK11_Encrypt()
  6069 ms  0x76ac symkey:0x7f24cf6f4380
  6072 ms  0x76ac PK11_Encrypt()
  6072 ms  0x76ac symkey:0x7f24cf311500
  6096 ms  0x76ac SECKEY_DestroyPrivateKey()
  6096 ms  0x76ac privk:0x7f24cf6d7020::7f24cf6d7020  10 fa 6e cf                                      ..n.
  6096 ms  0x76ac privk:0x7f24cf6d7020::7f24cf6d7020  e5 e5 e5 e5                                      ....
  6096 ms  0x76ac SECKEY_DestroyPrivateKey()
  6096 ms  0x76ac privk:0x7f24cf6d5020::7f24cf6d5020  90 f7 6e cf                                      ..n.
  6096 ms  0x76ac privk:0x7f24cf6d5020::7f24cf6d5020  e5 e5 e5 e5                                      ....
  6102 ms  0x76ac SSL_ImportFD()
  6102 ms  0x76ac ret:0x7f24e0b7c460
  6103 ms  0x76ac SSL_AuthCertificateHook()
  6103 ms  0x76ac fd:0x7f24e0b7c460
  6103 ms  0x76ac ret:0x0
  6103 ms  0x76ac PR_Connect()
  6103 ms  0x76ac fd:0x7f24e0b7c460
  6103 ms  0x76ac SSL_ImportFD()
  6103 ms  0x76ac ret:0x7f24e0b7c4c0
  6103 ms  0x76ac SSL_AuthCertificateHook()
  6103 ms  0x76ac fd:0x7f24e0b7c4c0
  6103 ms  0x76ac ret:0x0
  6103 ms  0x76ac PR_Connect()
  6103 ms  0x76ac fd:0x7f24e0b7c4c0
           /* TID 0x76b4 */
  6122 ms  0x76b4 PR_Close()
  6122 ms  0x76b4 fd:0x7f24cf651730
  6133 ms  0x76b4 PR_Close()
  6133 ms  0x76b4 fd:0x7f24cf651850
           /* TID 0x76ac */
  6144 ms  0x76ac SECKEY_CreateECPrivateKey()
  6144 ms  0x76ac cx:0x7f24cf671f88
  6144 ms     | 0x76ac EC_ValidatePublicKey()
  6144 ms     | 0x76ac ret:0x0
  6144 ms  0x76ac ret:0x7f24cf6d3020::7f24cf6d3020  40 f7 6e cf                                      @.n.
  6144 ms  0x76ac SECKEY_CreateECPrivateKey()
  6144 ms  0x76ac cx:0x7f24cf671f88
  6145 ms     | 0x76ac EC_ValidatePublicKey()
  6146 ms     | 0x76ac ret:0x0
  6146 ms  0x76ac ret:0x7f24cf6d5820::7f24cf6d5820  20 f9 6e cf                                       .n.
  6146 ms  0x76ac SECKEY_CreateECPrivateKey()
  6146 ms  0x76ac cx:0x7f24cf671de8
  6147 ms     | 0x76ac EC_ValidatePublicKey()
  6147 ms     | 0x76ac ret:0x0
  6147 ms  0x76ac ret:0x7f24cf6db020::7f24cf6db020  90 fc 6e cf                                      ..n.
  6147 ms  0x76ac SECKEY_CreateECPrivateKey()
  6147 ms  0x76ac cx:0x7f24cf671de8
  6148 ms     | 0x76ac EC_ValidatePublicKey()
  6150 ms     | 0x76ac ret:0x0
  6150 ms  0x76ac ret:0x7f24cf6d0820::7f24cf6d0820  d0 38 68 cf                                      .8h.
           /* TID 0x76b4 */
  6161 ms  0x76b4 PR_Close()
  6161 ms  0x76b4 fd:0x7f24cf6f3c40
           /* TID 0x76ac */
  6162 ms  0x76ac PK11_Encrypt()
  6162 ms  0x76ac symkey:0x7f24cfb3ef80
  6162 ms  0x76ac SSL_ImportFD()
  6162 ms  0x76ac ret:0x7f24cfa69e20
  6162 ms  0x76ac SSL_AuthCertificateHook()
  6162 ms  0x76ac fd:0x7f24cfa69e20
  6162 ms  0x76ac ret:0x0
  6162 ms  0x76ac PR_Connect()
  6162 ms  0x76ac fd:0x7f24cfa69e20
  6189 ms  SECKEY_ECParamsToKeySize()
  6189 ms  0x76ac ret:0x100
  6189 ms  SECKEY_ECParamsToBasePointOrderLen()
  6189 ms  0x76ac ret:0x100
  6189 ms  SECKEY_ECParamsToBasePointOrderLen()
  6189 ms  0x76ac ret:0x100
  6189 ms  0x76ac EC_ValidatePublicKey()
  6198 ms  0x76ac ret:0x0
  6201 ms  SECKEY_ECParamsToKeySize()
  6201 ms  0x76ac ret:0x100
  6201 ms  0x76ac SECKEY_CreateECPrivateKey()
  6201 ms  0x76ac cx:0x7f24cf671f88
  6201 ms     | 0x76ac EC_ValidatePublicKey()
  6204 ms     | 0x76ac ret:0x0
  6204 ms  0x76ac ret:0x7f24cf73c820::7f24cf73c820  c0 74 a6 cf                                      .t..
  6205 ms  0x76ac PK11_PubDeriveWithKDF()
  6205 ms  0x76ac seckey:0x7f24cf73c820
  6205 ms     | 0x76ac EC_ValidatePublicKey()
  6208 ms     | 0x76ac ret:0x0
  6210 ms  0x76ac ret:0x7f24cf689d80
  6210 ms  0x76ac PK11_DeriveWithFlags()
  6210 ms  0x76ac basekey:0x7f24cf689d80
  6210 ms     | 0x76ac PK11_DeriveWithTemplate()
  6210 ms  0x76ac ret:0x7f24cf6f4500
  6210 ms  0x76ac PK11_Derive()
  6210 ms  0x76ac basekey:0x7f24cf6f4500
  6210 ms     | 0x76ac PK11_DeriveWithTemplate()
  6210 ms  0x76ac ret:0x7f24cf6f4300
  6210 ms  0x76ac SECKEY_DestroyPrivateKey()
  6210 ms  0x76ac privk:0x7f24cf73c820::7f24cf73c820  c0 74 a6 cf                                      .t..
  6210 ms  0x76ac privk:0x7f24cf73c820::7f24cf73c820  e5 e5 e5 e5                                      ....
  6210 ms  0x76ac PK11_Encrypt()
  6210 ms  0x76ac symkey:0x7f24cf829680
  6214 ms  SECKEY_ECParamsToKeySize()
  6214 ms  0x76ac ret:0x100
  6214 ms  SECKEY_ECParamsToBasePointOrderLen()
  6214 ms  0x76ac ret:0x100
  6214 ms  SECKEY_ECParamsToBasePointOrderLen()
  6214 ms  0x76ac ret:0x100
  6214 ms  0x76ac EC_ValidatePublicKey()
           /* TID 0x76b4 */
  6217 ms  0x76b4 PR_Close()
  6217 ms  0x76b4 fd:0x7f24cf651550
           /* TID 0x76ac */
  6224 ms  0x76ac ret:0x0
  6226 ms  SECKEY_ECParamsToKeySize()
  6226 ms  0x76ac ret:0x100
  6226 ms  0x76ac SECKEY_CreateECPrivateKey()
  6226 ms  0x76ac cx:0x7f24cf671de8
  6226 ms     | 0x76ac EC_ValidatePublicKey()
  6228 ms     | 0x76ac ret:0x0
  6228 ms  0x76ac ret:0x7f24cf8d2820::7f24cf8d2820  90 a7 8b cf                                      ....
  6228 ms  0x76ac PK11_PubDeriveWithKDF()
  6228 ms  0x76ac seckey:0x7f24cf8d2820
  6228 ms     | 0x76ac EC_ValidatePublicKey()
  6234 ms     | 0x76ac ret:0x0
  6245 ms  0x76ac ret:0x7f24cf689d80
  6245 ms  0x76ac PK11_DeriveWithFlags()
  6245 ms  0x76ac basekey:0x7f24cf689d80
  6245 ms     | 0x76ac PK11_DeriveWithTemplate()
  6245 ms  0x76ac ret:0x7f24cf68a100
  6245 ms  0x76ac PK11_Derive()
  6245 ms  0x76ac basekey:0x7f24cf68a100
  6245 ms     | 0x76ac PK11_DeriveWithTemplate()
  6245 ms  0x76ac ret:0x7f24cf68a180
  6245 ms  0x76ac SECKEY_DestroyPrivateKey()
  6245 ms  0x76ac privk:0x7f24cf8d2820::7f24cf8d2820  90 a7 8b cf                                      ....
  6245 ms  0x76ac privk:0x7f24cf8d2820::7f24cf8d2820  e5 e5 e5 e5                                      ....
  6245 ms  0x76ac PK11_Encrypt()
  6245 ms  0x76ac symkey:0x7f24e0b32480
  6246 ms  0x76ac SECKEY_CreateECPrivateKey()
  6246 ms  0x76ac cx:0x7f24cf672128
  6247 ms     | 0x76ac EC_ValidatePublicKey()
  6247 ms     | 0x76ac ret:0x0
  6247 ms  0x76ac ret:0x7f24cf8d2820::7f24cf8d2820  50 26 8f cf                                      P&..
  6247 ms  0x76ac SECKEY_CreateECPrivateKey()
  6247 ms  0x76ac cx:0x7f24cf672128
  6247 ms     | 0x76ac EC_ValidatePublicKey()
  6249 ms     | 0x76ac ret:0x0
  6249 ms  0x76ac ret:0x7f24cf8db020::7f24cf8db020  40 d2 8f cf                                      @...
  6251 ms  0x76ac PR_Connect()
  6251 ms  0x76ac fd:0x7f24cf8be880
           /* TID 0x76b4 */
  6252 ms  0x76b4 PR_Close()
  6252 ms  0x76b4 fd:0x7f24cf651550
           /* TID 0x7748 */
  6252 ms  0x7748 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6253 ms  0x7748 ret:0x0
           /* TID 0x76ac */
  6253 ms  0x76ac SSL_AuthCertificateComplete()
  6253 ms  0x76ac fd:0x7f24e0b7c4c0
  6253 ms  0x76ac err:0x0
  6253 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  6253 ms     | 0x76ac privk:0x7f24cf6d5820::7f24cf6d5820  20 f9 6e cf                                       .n.
  6253 ms     | 0x76ac privk:0x7f24cf6d5820::7f24cf6d5820  e5 e5 e5 e5                                      ....
  6253 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  6253 ms     | 0x76ac privk:0x7f24cf6d3020::7f24cf6d3020  40 f7 6e cf                                      @.n.
  6253 ms     | 0x76ac privk:0x7f24cf6d3020::7f24cf6d3020  e5 e5 e5 e5                                      ....
  6253 ms  0x76ac PK11_Encrypt()
  6253 ms  0x76ac symkey:0x7f24cf829680
           /* TID 0x76b4 */
  6279 ms  0x76b4 PR_Close()
  6279 ms  0x76b4 fd:0x7f24cf8be130
           /* TID 0x7705 */
  6279 ms  0x7705 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6279 ms  0x7705 ret:0x0
           /* TID 0x76ac */
  6279 ms  0x76ac SSL_AuthCertificateComplete()
  6279 ms  0x76ac fd:0x7f24e0b7c460
  6279 ms  0x76ac err:0x0
  6279 ms  0x76ac PK11_Encrypt()
  6279 ms  0x76ac symkey:0x7f24e0b32480
  6286 ms  0x76ac SECKEY_DestroyPrivateKey()
  6286 ms  0x76ac privk:0x7f24cf6d0820::7f24cf6d0820  d0 38 68 cf                                      .8h.
  6286 ms  0x76ac privk:0x7f24cf6d0820::7f24cf6d0820  e5 e5 e5 e5                                      ....
  6286 ms  0x76ac SECKEY_DestroyPrivateKey()
  6286 ms  0x76ac privk:0x7f24cf6db020::7f24cf6db020  90 fc 6e cf                                      ..n.
  6286 ms  0x76ac privk:0x7f24cf6db020::7f24cf6db020  e5 e5 e5 e5                                      ....
  6304 ms  0x76ac PK11_Derive()
  6304 ms  0x76ac basekey:0x7f24cf689d80
  6304 ms     | 0x76ac PK11_DeriveWithTemplate()
  6304 ms  0x76ac ret:0x7f24cf689c00
  6304 ms  0x76ac PK11_PubDeriveWithKDF()
  6304 ms  0x76ac seckey:0x7f24cf8d2820
  6304 ms     | 0x76ac EC_ValidatePublicKey()
  6304 ms     | 0x76ac ret:0x0
  6305 ms  0x76ac ret:0x7f24cf689d80
  6305 ms  SECKEY_ECParamsToKeySize()
  6305 ms  0x76ac ret:0xff
  6305 ms  0x76ac PK11_DeriveWithFlags()
  6305 ms  0x76ac basekey:0x7f24cf689c00
  6305 ms     | 0x76ac PK11_DeriveWithTemplate()
  6305 ms  0x76ac ret:0x7f24e1ff4680
  6305 ms  0x76ac PK11_Derive()
  6305 ms  0x76ac basekey:0x7f24cf689d80
  6305 ms     | 0x76ac PK11_DeriveWithTemplate()
  6305 ms  0x76ac ret:0x7f24cf7ffe80
  6305 ms  0x76ac PK11_DeriveWithFlags()
  6305 ms  0x76ac basekey:0x7f24cf7ffe80
  6305 ms     | 0x76ac PK11_DeriveWithTemplate()
  6305 ms  0x76ac ret:0x7f24cf689c00
  6305 ms  0x76ac PK11_DeriveWithFlags()
  6305 ms  0x76ac basekey:0x7f24cf7ffe80
  6305 ms     | 0x76ac PK11_DeriveWithTemplate()
  6305 ms  0x76ac ret:0x7f24cf689d80
  6305 ms  0x76ac PK11_DeriveWithFlags()
  6305 ms  0x76ac basekey:0x7f24cf7ffe80
  6305 ms     | 0x76ac PK11_DeriveWithTemplate()
  6305 ms  0x76ac ret:0x7f24e1ff4680
  6305 ms  0x76ac PK11_Derive()
  6305 ms  0x76ac basekey:0x7f24e26f4380
  6305 ms     | 0x76ac PK11_DeriveWithTemplate()
  6305 ms  0x76ac ret:0x7f24cf6f5900
  6305 ms  0x76ac PK11_DeriveWithFlags()
  6305 ms  0x76ac basekey:0x7f24cf689d80
  6305 ms     | 0x76ac PK11_DeriveWithTemplate()
  6305 ms  0x76ac ret:0x7f24cf7ffe80
  6305 ms  0x76ac PK11_DeriveWithFlags()
  6305 ms  0x76ac basekey:0x7f24cf689d80
  6305 ms     | 0x76ac PK11_DeriveWithTemplate()
  6305 ms  0x76ac ret:0x7f24e1ff4680
  6307 ms  0x76ac PK11_DeriveWithFlags()
  6307 ms  0x76ac basekey:0x7f24cf689d80
  6308 ms     | 0x76ac PK11_DeriveWithTemplate()
  6308 ms  0x76ac ret:0x7f24e1ff4680
           /* TID 0x76b4 */
  6323 ms  0x76b4 PR_Close()
  6323 ms  0x76b4 fd:0x7f24e0accd60
  6325 ms  0x76b4 PR_Close()
  6325 ms  0x76b4 fd:0x7f24cfa69fd0
           /* TID 0x76ac */
  6328 ms  0x76ac PK11_Encrypt()
  6328 ms  0x76ac symkey:0x7f24cf829680
           /* TID 0x76b4 */
  6366 ms  0x76b4 PR_Close()
  6366 ms  0x76b4 fd:0x7f24e0b28130
           /* TID 0x76ac */
  6372 ms  0x76ac PK11_Encrypt()
  6372 ms  0x76ac symkey:0x7f24e0b32480
  6373 ms  0x76ac SSL_ImportFD()
  6373 ms  0x76ac ret:0x7f24e0b285e0
  6373 ms  0x76ac SSL_AuthCertificateHook()
  6373 ms  0x76ac fd:0x7f24e0b285e0
  6373 ms  0x76ac ret:0x0
  6373 ms  0x76ac PR_Connect()
  6373 ms  0x76ac fd:0x7f24e0b285e0
  6374 ms  0x76ac SSL_ImportFD()
  6374 ms  0x76ac ret:0x7f24e0b28490
  6374 ms  0x76ac SSL_AuthCertificateHook()
  6374 ms  0x76ac fd:0x7f24e0b28490
  6374 ms  0x76ac ret:0x0
  6374 ms  0x76ac PR_Connect()
  6374 ms  0x76ac fd:0x7f24e0b28490
  6382 ms  0x76ac PK11_Encrypt()
  6382 ms  0x76ac symkey:0x7f24cf829680
  6414 ms  0x76ac SECKEY_CreateECPrivateKey()
  6414 ms  0x76ac cx:0x7f24cf672ae8
  6414 ms     | 0x76ac EC_ValidatePublicKey()
  6414 ms     | 0x76ac ret:0x0
  6414 ms  0x76ac ret:0x7f24cf73c820::7f24cf73c820  10 aa 8b cf                                      ....
  6414 ms  0x76ac SECKEY_CreateECPrivateKey()
  6414 ms  0x76ac cx:0x7f24cf672ae8
  6415 ms     | 0x76ac EC_ValidatePublicKey()
  6417 ms     | 0x76ac ret:0x0
  6417 ms  0x76ac ret:0x7f24cf8df020::7f24cf8df020  90 d2 8f cf                                      ....
  6419 ms  0x76ac SECKEY_CreateECPrivateKey()
  6419 ms  0x76ac cx:0x7f24cf672c88
  6419 ms     | 0x76ac EC_ValidatePublicKey()
  6419 ms     | 0x76ac ret:0x0
  6419 ms  0x76ac ret:0x7f24cfa99820::7f24cfa99820  a0 d6 8f cf                                      ....
  6419 ms  0x76ac SECKEY_CreateECPrivateKey()
  6419 ms  0x76ac cx:0x7f24cf672c88
  6420 ms     | 0x76ac EC_ValidatePublicKey()
  6421 ms     | 0x76ac ret:0x0
  6421 ms  0x76ac ret:0x7f24cfb52020::7f24cfb52020  90 4c 92 cf                                      .L..
  6457 ms  0x76ac PK11_Derive()
  6457 ms  0x76ac basekey:0x7f24e26f4380
  6457 ms     | 0x76ac PK11_DeriveWithTemplate()
  6457 ms  0x76ac ret:0x7f24e1ff4680
  6457 ms  0x76ac PK11_Encrypt()
  6457 ms  0x76ac symkey:0x7f24cf828200
  6458 ms  0x76ac SECKEY_DestroyPrivateKey()
  6458 ms  0x76ac privk:0x7f24cf8df020::7f24cf8df020  90 d2 8f cf                                      ....
  6458 ms  0x76ac privk:0x7f24cf8df020::7f24cf8df020  e5 e5 e5 e5                                      ....
  6458 ms  0x76ac SECKEY_DestroyPrivateKey()
  6458 ms  0x76ac privk:0x7f24cf73c820::7f24cf73c820  10 aa 8b cf                                      ....
  6458 ms  0x76ac privk:0x7f24cf73c820::7f24cf73c820  e5 e5 e5 e5                                      ....
  6463 ms  SECKEY_ECParamsToKeySize()
  6463 ms  0x76ac ret:0x100
  6463 ms  SECKEY_ECParamsToBasePointOrderLen()
  6463 ms  0x76ac ret:0x100
  6463 ms  SECKEY_ECParamsToBasePointOrderLen()
  6463 ms  0x76ac ret:0x100
  6463 ms  0x76ac EC_ValidatePublicKey()
  6465 ms  0x76ac ret:0x0
  6467 ms  SECKEY_ECParamsToKeySize()
  6467 ms  0x76ac ret:0x100
  6467 ms  0x76ac SECKEY_CreateECPrivateKey()
  6467 ms  0x76ac cx:0x7f24cf672c88
  6467 ms     | 0x76ac EC_ValidatePublicKey()
           /* TID 0x76b4 */
  6469 ms  0x76b4 PR_Close()
  6469 ms  0x76b4 fd:0x7f24e1ef84c0
  6470 ms  0x76b4 PR_Close()
  6470 ms  0x76b4 fd:0x7f24cfa69cd0
           /* TID 0x7748 */
  6470 ms  0x7748 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x76ac */
  6475 ms     | 0x76ac ret:0x0
           /* TID 0x7748 */
  6476 ms  0x7748 ret:0x0
           /* TID 0x76ac */
  6476 ms  0x76ac ret:0x7f24cf6d5020::7f24cf6d5020  e0 f7 6e cf                                      ..n.
  6476 ms  0x76ac PK11_PubDeriveWithKDF()
  6476 ms  0x76ac seckey:0x7f24cf6d5020
  6476 ms     | 0x76ac EC_ValidatePublicKey()
  6477 ms     | 0x76ac ret:0x0
  6479 ms  0x76ac ret:0x7f24cf6f5980
  6479 ms  0x76ac PK11_DeriveWithFlags()
  6479 ms  0x76ac basekey:0x7f24cf6f5980
  6479 ms     | 0x76ac PK11_DeriveWithTemplate()
  6479 ms  0x76ac ret:0x7f24cf6f4480
  6479 ms  0x76ac PK11_Derive()
  6479 ms  0x76ac basekey:0x7f24cf6f4480
  6479 ms     | 0x76ac PK11_DeriveWithTemplate()
  6479 ms  0x76ac ret:0x7f24cf6f4580
  6479 ms  0x76ac SECKEY_DestroyPrivateKey()
  6479 ms  0x76ac privk:0x7f24cf6d5020::7f24cf6d5020  e0 f7 6e cf                                      ..n.
  6479 ms  0x76ac privk:0x7f24cf6d5020::7f24cf6d5020  e5 e5 e5 e5                                      ....
  6479 ms  0x76ac PK11_Encrypt()
  6479 ms  0x76ac symkey:0x7f24e0bdc000
  6480 ms  0x76ac SSL_AuthCertificateComplete()
  6480 ms  0x76ac fd:0x7f24cfa69e20
  6480 ms  0x76ac err:0x0
  6480 ms     | 0x76ac PK11_DeriveWithFlags()
  6480 ms     | 0x76ac basekey:0x7f24cf6f5900
  6480 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6480 ms     | 0x76ac ret:0x7f24cf6f5980
  6480 ms     | 0x76ac PK11_DeriveWithFlags()
  6480 ms     | 0x76ac basekey:0x7f24cf6f5900
  6480 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6480 ms     | 0x76ac ret:0x7f24e1ff4600
  6480 ms     | 0x76ac PK11_DeriveWithFlags()
  6480 ms     | 0x76ac basekey:0x7f24cf6f5900
  6480 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6480 ms     | 0x76ac ret:0x7f24cf8f9780
  6480 ms     | 0x76ac PK11_DeriveWithFlags()
  6480 ms     | 0x76ac basekey:0x7f24cf689c00
  6480 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6480 ms     | 0x76ac ret:0x7f24cf6f5a00
  6480 ms     | 0x76ac PK11_DeriveWithFlags()
  6480 ms     | 0x76ac basekey:0x7f24cf689c00
  6480 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6480 ms     | 0x76ac ret:0x7f24cf6f5a80
  6480 ms     | 0x76ac PK11_DeriveWithFlags()
  6480 ms     | 0x76ac basekey:0x7f24e1ff4600
  6480 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6480 ms     | 0x76ac ret:0x7f24cf6f5a80
  6480 ms     | 0x76ac PK11_DeriveWithFlags()
  6480 ms     | 0x76ac basekey:0x7f24e1ff4600
  6480 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6480 ms     | 0x76ac ret:0x7f24cf6f5400
  6480 ms     | 0x76ac PK11_DeriveWithFlags()
  6480 ms     | 0x76ac basekey:0x7f24cf689c00
  6480 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6480 ms     | 0x76ac ret:0x7f24cf7ffe80
  6480 ms     | 0x76ac PK11_Encrypt()
  6480 ms     | 0x76ac symkey:0x7f24cf6f5a00
  6481 ms     | 0x76ac PK11_DeriveWithFlags()
  6481 ms     | 0x76ac basekey:0x7f24cf6f5980
  6481 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6481 ms     | 0x76ac ret:0x7f24cf7ffe80
  6481 ms     | 0x76ac PK11_DeriveWithFlags()
  6481 ms     | 0x76ac basekey:0x7f24cf6f5980
  6481 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6481 ms     | 0x76ac ret:0x7f24cf6f5400
  6481 ms     | 0x76ac PK11_DeriveWithFlags()
  6481 ms     | 0x76ac basekey:0x7f24cf6f5900
  6481 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6481 ms     | 0x76ac ret:0x7f24cf6f5a00
  6481 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  6481 ms     | 0x76ac privk:0x7f24cf8db020::7f24cf8db020  40 d2 8f cf                                      @...
  6481 ms     | 0x76ac privk:0x7f24cf8db020::7f24cf8db020  e5 e5 e5 e5                                      ....
  6481 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  6481 ms     | 0x76ac privk:0x7f24cf8d2820::7f24cf8d2820  50 26 8f cf                                      P&..
  6481 ms     | 0x76ac privk:0x7f24cf8d2820::7f24cf8d2820  e5 e5 e5 e5                                      ....
  6482 ms  0x76ac PK11_Encrypt()
  6482 ms  0x76ac symkey:0x7f24cf7ffe80
  6482 ms  0x76ac PK11_Encrypt()
  6482 ms  0x76ac symkey:0x7f24cf7ffe80
           /* TID 0x76b4 */
  6507 ms  0x76b4 PR_Close()
  6507 ms  0x76b4 fd:0x7f24cf6517f0
           /* TID 0x7705 */
  6507 ms  0x7705 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6507 ms  0x7705 ret:0x0
           /* TID 0x76ac */
  6508 ms  0x76ac SSL_AuthCertificateComplete()
  6508 ms  0x76ac fd:0x7f24e0b28490
  6508 ms  0x76ac err:0x0
  6508 ms  0x76ac PK11_Encrypt()
  6508 ms  0x76ac symkey:0x7f24e0bdc000
  6518 ms  0x76ac PK11_DeriveWithFlags()
  6518 ms  0x76ac basekey:0x7f24cf6f5a00
  6518 ms     | 0x76ac PK11_DeriveWithTemplate()
  6518 ms  0x76ac ret:0x7f24cf689d80
  6518 ms  0x76ac PK11_DeriveWithFlags()
  6518 ms  0x76ac basekey:0x7f24cf6f5a00
  6518 ms     | 0x76ac PK11_DeriveWithTemplate()
  6518 ms  0x76ac ret:0x7f24cf689d80
  6518 ms  0x76ac PK11_Encrypt()
  6518 ms  0x76ac symkey:0x7f24cf7ffe80
  6520 ms  0x76ac SECKEY_DestroyPrivateKey()
  6520 ms  0x76ac privk:0x7f24cfb52020::7f24cfb52020  90 4c 92 cf                                      .L..
  6520 ms  0x76ac privk:0x7f24cfb52020::7f24cfb52020  e5 e5 e5 e5                                      ....
  6521 ms  0x76ac SECKEY_DestroyPrivateKey()
  6521 ms  0x76ac privk:0x7f24cfa99820::7f24cfa99820  a0 d6 8f cf                                      ....
  6521 ms  0x76ac privk:0x7f24cfa99820::7f24cfa99820  e5 e5 e5 e5                                      ....
  6566 ms  0x76ac PK11_Encrypt()
  6566 ms  0x76ac symkey:0x7f24cf7ffe80
           /* TID 0x76b4 */
  6567 ms  0x76b4 PR_Close()
  6567 ms  0x76b4 fd:0x7f24cf651eb0
           /* TID 0x76ac */
  6589 ms  0x76ac PK11_Encrypt()
  6589 ms  0x76ac symkey:0x7f24cf7ffe80
  6593 ms  0x76ac SSL_ImportFD()
  6593 ms  0x76ac ret:0x7f24cf8136d0
  6593 ms  0x76ac SSL_AuthCertificateHook()
  6593 ms  0x76ac fd:0x7f24cf8136d0
  6593 ms  0x76ac ret:0x0
  6593 ms  0x76ac PR_Connect()
  6593 ms  0x76ac fd:0x7f24cf8136d0
           /* TID 0x76b4 */
  6621 ms  0x76b4 PR_Close()
  6621 ms  0x76b4 fd:0x7f24cf6f3940
           /* TID 0x76ac */
  6641 ms  0x76ac SECKEY_CreateECPrivateKey()
  6641 ms  0x76ac cx:0x7f24cf672948
  6642 ms     | 0x76ac EC_ValidatePublicKey()
  6642 ms     | 0x76ac ret:0x0
  6642 ms  0x76ac ret:0x7f24cf6cc020::7f24cf6cc020  b0 b0 83 cf                                      ....
  6642 ms  0x76ac SECKEY_CreateECPrivateKey()
  6642 ms  0x76ac cx:0x7f24cf672948
  6642 ms     | 0x76ac EC_ValidatePublicKey()
  6644 ms     | 0x76ac ret:0x0
  6644 ms  0x76ac ret:0x7f24cf6dc820::7f24cf6dc820  80 a3 8b cf                                      ....
  6670 ms  0x76ac PK11_Encrypt()
  6670 ms  0x76ac symkey:0x7f24cf7ffe80
  6683 ms  0x76ac SSL_ImportFD()
  6683 ms  0x76ac ret:0x7f24cfb04340
  6683 ms  0x76ac SSL_AuthCertificateHook()
  6683 ms  0x76ac fd:0x7f24cfb04340
  6683 ms  0x76ac ret:0x0
  6683 ms  0x76ac PR_Connect()
  6683 ms  0x76ac fd:0x7f24cfb04340
  6684 ms  0x76ac SSL_ImportFD()
  6684 ms  0x76ac ret:0x7f24cfb04640
  6684 ms  0x76ac SSL_AuthCertificateHook()
  6684 ms  0x76ac fd:0x7f24cfb04640
  6684 ms  0x76ac ret:0x0
  6684 ms  0x76ac PR_Connect()
  6684 ms  0x76ac fd:0x7f24cfb04640
  6692 ms  0x76ac PK11_Derive()
  6692 ms  0x76ac basekey:0x7f24cf689d80
  6692 ms     | 0x76ac PK11_DeriveWithTemplate()
  6693 ms  0x76ac ret:0x7f24cf689c00
  6693 ms  0x76ac PK11_PubDeriveWithKDF()
  6693 ms  0x76ac seckey:0x7f24cf6cc020
  6693 ms     | 0x76ac EC_ValidatePublicKey()
  6693 ms     | 0x76ac ret:0x0
  6694 ms  0x76ac ret:0x7f24cf689d80
  6694 ms  SECKEY_ECParamsToKeySize()
  6694 ms  0x76ac ret:0xff
  6694 ms  0x76ac PK11_DeriveWithFlags()
  6694 ms  0x76ac basekey:0x7f24cf689c00
  6694 ms     | 0x76ac PK11_DeriveWithTemplate()
  6694 ms  0x76ac ret:0x7f24cf6f5900
  6694 ms  0x76ac PK11_Derive()
  6694 ms  0x76ac basekey:0x7f24cf689d80
  6694 ms     | 0x76ac PK11_DeriveWithTemplate()
  6694 ms  0x76ac ret:0x7f24cf6f5400
  6694 ms  0x76ac PK11_DeriveWithFlags()
  6694 ms  0x76ac basekey:0x7f24cf6f5400
  6694 ms     | 0x76ac PK11_DeriveWithTemplate()
  6694 ms  0x76ac ret:0x7f24cf689c00
  6694 ms  0x76ac PK11_DeriveWithFlags()
  6694 ms  0x76ac basekey:0x7f24cf6f5400
  6694 ms     | 0x76ac PK11_DeriveWithTemplate()
  6694 ms  0x76ac ret:0x7f24cf689d80
  6694 ms  0x76ac PK11_DeriveWithFlags()
  6694 ms  0x76ac basekey:0x7f24cf6f5400
  6694 ms     | 0x76ac PK11_DeriveWithTemplate()
  6694 ms  0x76ac ret:0x7f24cf6f5900
  6694 ms  0x76ac PK11_Derive()
  6694 ms  0x76ac basekey:0x7f24cf689b80
  6694 ms     | 0x76ac PK11_DeriveWithTemplate()
  6695 ms  0x76ac ret:0x7f24cf689c80
  6695 ms  0x76ac PK11_DeriveWithFlags()
  6695 ms  0x76ac basekey:0x7f24cf689d80
  6695 ms     | 0x76ac PK11_DeriveWithTemplate()
  6695 ms  0x76ac ret:0x7f24cf6f5400
  6695 ms  0x76ac PK11_DeriveWithFlags()
  6695 ms  0x76ac basekey:0x7f24cf689d80
  6695 ms     | 0x76ac PK11_DeriveWithTemplate()
  6695 ms  0x76ac ret:0x7f24cf6f5900
  6698 ms  SECKEY_ECParamsToKeySize()
  6698 ms  0x76ac ret:0x100
  6698 ms  SECKEY_ECParamsToBasePointOrderLen()
  6698 ms  0x76ac ret:0x100
  6698 ms  SECKEY_ECParamsToBasePointOrderLen()
  6698 ms  0x76ac ret:0x100
  6698 ms  0x76ac EC_ValidatePublicKey()
  6702 ms  0x76ac ret:0x0
  6707 ms  0x76ac PK11_DeriveWithFlags()
  6707 ms  0x76ac basekey:0x7f24cf689d80
  6707 ms     | 0x76ac PK11_DeriveWithTemplate()
  6707 ms  0x76ac ret:0x7f24cf6f5900
  6725 ms  0x76ac SECKEY_CreateECPrivateKey()
  6725 ms  0x76ac cx:0x7f24cf6737e8
  6726 ms     | 0x76ac EC_ValidatePublicKey()
  6726 ms     | 0x76ac ret:0x0
  6726 ms  0x76ac ret:0x7f24cf8c7820::7f24cf8c7820  40 d2 8f cf                                      @...
  6727 ms  0x76ac SECKEY_CreateECPrivateKey()
  6727 ms  0x76ac cx:0x7f24cf6737e8
  6728 ms     | 0x76ac EC_ValidatePublicKey()
  6731 ms     | 0x76ac ret:0x0
  6731 ms  0x76ac ret:0x7f24cf8c9820::7f24cf8c9820  f0 d6 8f cf                                      ....
  6732 ms  0x76ac SECKEY_CreateECPrivateKey()
  6732 ms  0x76ac cx:0x7f24cf673b28
  6733 ms     | 0x76ac EC_ValidatePublicKey()
  6733 ms     | 0x76ac ret:0x0
  6733 ms  0x76ac ret:0x7f24cf8cc020::7f24cf8cc020  d0 43 92 cf                                      .C..
  6733 ms  0x76ac SECKEY_CreateECPrivateKey()
  6733 ms  0x76ac cx:0x7f24cf673b28
  6734 ms     | 0x76ac EC_ValidatePublicKey()
  6737 ms     | 0x76ac ret:0x0
  6737 ms  0x76ac ret:0x7f24cf8ce020::7f24cf8ce020  90 4c 92 cf                                      .L..
           /* TID 0x76b4 */
  6853 ms  0x76b4 PR_Close()
  6853 ms  0x76b4 fd:0x7f24cfaeac40
           /* TID 0x7748 */
  6854 ms  0x7748 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6854 ms  0x7748 ret:0x0
           /* TID 0x76ac */
  6854 ms  0x76ac SSL_AuthCertificateComplete()
  6854 ms  0x76ac fd:0x7f24cf8136d0
  6854 ms  0x76ac err:0x0
  6855 ms     | 0x76ac PK11_DeriveWithFlags()
  6855 ms     | 0x76ac basekey:0x7f24cf689c80
  6855 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6855 ms     | 0x76ac ret:0x7f24cf6f5900
  6855 ms     | 0x76ac PK11_DeriveWithFlags()
  6855 ms     | 0x76ac basekey:0x7f24cf689c80
  6855 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6855 ms     | 0x76ac ret:0x7f24cf689b80
  6855 ms     | 0x76ac PK11_DeriveWithFlags()
  6855 ms     | 0x76ac basekey:0x7f24cf689c80
  6855 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6855 ms     | 0x76ac ret:0x7f24cf689f00
  6855 ms     | 0x76ac PK11_DeriveWithFlags()
  6855 ms     | 0x76ac basekey:0x7f24cf689c00
  6855 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6855 ms     | 0x76ac ret:0x7f24cf68a300
  6855 ms     | 0x76ac PK11_DeriveWithFlags()
  6855 ms     | 0x76ac basekey:0x7f24cf689c00
  6855 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6855 ms     | 0x76ac ret:0x7f24cf6f5580
  6855 ms     | 0x76ac PK11_DeriveWithFlags()
  6855 ms     | 0x76ac basekey:0x7f24cf689b80
  6855 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6855 ms     | 0x76ac ret:0x7f24cf6f5580
  6855 ms     | 0x76ac PK11_DeriveWithFlags()
  6855 ms     | 0x76ac basekey:0x7f24cf689b80
  6855 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6856 ms     | 0x76ac ret:0x7f24cf6f5600
  6856 ms     | 0x76ac PK11_DeriveWithFlags()
  6856 ms     | 0x76ac basekey:0x7f24cf689c00
  6856 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6856 ms     | 0x76ac ret:0x7f24cf6f5400
  6856 ms     | 0x76ac PK11_Encrypt()
  6856 ms     | 0x76ac symkey:0x7f24cf68a300
  6856 ms     | 0x76ac PK11_DeriveWithFlags()
  6856 ms     | 0x76ac basekey:0x7f24cf6f5900
  6856 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6856 ms     | 0x76ac ret:0x7f24cf6f5400
  6856 ms     | 0x76ac PK11_DeriveWithFlags()
  6856 ms     | 0x76ac basekey:0x7f24cf6f5900
  6856 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6856 ms     | 0x76ac ret:0x7f24cf6f5600
  6857 ms     | 0x76ac PK11_DeriveWithFlags()
  6857 ms     | 0x76ac basekey:0x7f24cf689c80
  6857 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  6857 ms     | 0x76ac ret:0x7f24cf68a300
  6857 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  6857 ms     | 0x76ac privk:0x7f24cf6dc820::7f24cf6dc820  80 a3 8b cf                                      ....
  6857 ms     | 0x76ac privk:0x7f24cf6dc820::7f24cf6dc820  e5 e5 e5 e5                                      ....
  6857 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  6857 ms     | 0x76ac privk:0x7f24cf6cc020::7f24cf6cc020  b0 b0 83 cf                                      ....
  6857 ms     | 0x76ac privk:0x7f24cf6cc020::7f24cf6cc020  e5 e5 e5 e5                                      ....
  6859 ms  0x76ac PK11_Encrypt()
  6859 ms  0x76ac symkey:0x7f24cf6f5400
  6859 ms  0x76ac PK11_Encrypt()
  6859 ms  0x76ac symkey:0x7f24cf6f5400
           /* TID 0x7705 */
  6861 ms  0x7705 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6861 ms  0x7705 ret:0x0
           /* TID 0x76ac */
  6862 ms  SECKEY_ECParamsToKeySize()
  6862 ms  0x76ac ret:0x100
  6862 ms  0x76ac SECKEY_CreateECPrivateKey()
  6862 ms  0x76ac cx:0x7f24cf6737e8
  6863 ms     | 0x76ac EC_ValidatePublicKey()
  6866 ms     | 0x76ac ret:0x0
  6866 ms  0x76ac ret:0x7f24cf6dc820::7f24cf6dc820  a0 a1 8b cf                                      ....
  6867 ms  0x76ac PK11_PubDeriveWithKDF()
  6867 ms  0x76ac seckey:0x7f24cf6dc820
  6867 ms     | 0x76ac EC_ValidatePublicKey()
  6872 ms     | 0x76ac ret:0x0
  6874 ms  0x76ac ret:0x7f24cf689d80
  6874 ms  0x76ac PK11_DeriveWithFlags()
  6874 ms  0x76ac basekey:0x7f24cf689d80
  6874 ms     | 0x76ac PK11_DeriveWithTemplate()
  6874 ms  0x76ac ret:0x7f24cf689c00
  6874 ms  0x76ac PK11_Derive()
  6874 ms  0x76ac basekey:0x7f24cf689c00
  6874 ms     | 0x76ac PK11_DeriveWithTemplate()
  6874 ms  0x76ac ret:0x7f24cf689c80
  6874 ms  0x76ac SECKEY_DestroyPrivateKey()
  6874 ms  0x76ac privk:0x7f24cf6dc820::7f24cf6dc820  a0 a1 8b cf                                      ....
  6874 ms  0x76ac privk:0x7f24cf6dc820::7f24cf6dc820  e5 e5 e5 e5                                      ....
  6875 ms  0x76ac PK11_Encrypt()
  6875 ms  0x76ac symkey:0x7f24cf6f5c80
  6875 ms  0x76ac SSL_AuthCertificateComplete()
  6875 ms  0x76ac fd:0x7f24cfb04340
  6875 ms  0x76ac err:0x0
           /* TID 0x7748 */
  6876 ms  0x7748 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6876 ms  0x7748 ret:0x0
           /* TID 0x76ac */
  6876 ms  SECKEY_ECParamsToKeySize()
  6876 ms  0x76ac ret:0x100
  6876 ms  0x76ac SECKEY_CreateECPrivateKey()
  6876 ms  0x76ac cx:0x7f24cf673b28
  6877 ms     | 0x76ac EC_ValidatePublicKey()
  6879 ms     | 0x76ac ret:0x0
  6879 ms  0x76ac ret:0x7f24cf8c3820::7f24cf8c3820  10 aa 8b cf                                      ....
  6879 ms  0x76ac PK11_PubDeriveWithKDF()
  6879 ms  0x76ac seckey:0x7f24cf8c3820
  6879 ms     | 0x76ac EC_ValidatePublicKey()
  6881 ms     | 0x76ac ret:0x0
  6883 ms  0x76ac ret:0x7f24cf689d80
  6883 ms  0x76ac PK11_DeriveWithFlags()
  6883 ms  0x76ac basekey:0x7f24cf689d80
  6883 ms     | 0x76ac PK11_DeriveWithTemplate()
  6883 ms  0x76ac ret:0x7f24cf6f5600
  6883 ms  0x76ac PK11_Derive()
  6883 ms  0x76ac basekey:0x7f24cf6f5600
  6883 ms     | 0x76ac PK11_DeriveWithTemplate()
  6883 ms  0x76ac ret:0x7f24cf6f5e00
  6883 ms  0x76ac SECKEY_DestroyPrivateKey()
  6883 ms  0x76ac privk:0x7f24cf8c3820::7f24cf8c3820  10 aa 8b cf                                      ....
  6883 ms  0x76ac privk:0x7f24cf8c3820::7f24cf8c3820  e5 e5 e5 e5                                      ....
  6883 ms  0x76ac PK11_Encrypt()
  6883 ms  0x76ac symkey:0x7f24cf7fe280
  6884 ms  0x76ac PK11_Encrypt()
  6884 ms  0x76ac symkey:0x7f24cf6f5c80
  6884 ms  0x76ac SSL_AuthCertificateComplete()
  6884 ms  0x76ac fd:0x7f24cfb04640
  6884 ms  0x76ac err:0x0
  6884 ms  0x76ac PK11_Encrypt()
  6884 ms  0x76ac symkey:0x7f24cf7fe280
  6904 ms  0x76ac PK11_DeriveWithFlags()
  6904 ms  0x76ac basekey:0x7f24cf68a300
  6904 ms     | 0x76ac PK11_DeriveWithTemplate()
  6904 ms  0x76ac ret:0x7f24cf689d80
  6904 ms  0x76ac PK11_DeriveWithFlags()
  6904 ms  0x76ac basekey:0x7f24cf68a300
  6904 ms     | 0x76ac PK11_DeriveWithTemplate()
  6904 ms  0x76ac ret:0x7f24cf689d80
  6904 ms  0x76ac PK11_Encrypt()
  6904 ms  0x76ac symkey:0x7f24cf6f5400
  6916 ms  0x76ac SECKEY_DestroyPrivateKey()
  6916 ms  0x76ac privk:0x7f24cf8c9820::7f24cf8c9820  f0 d6 8f cf                                      ....
  6917 ms  0x76ac privk:0x7f24cf8c9820::7f24cf8c9820  e5 e5 e5 e5                                      ....
  6917 ms  0x76ac SECKEY_DestroyPrivateKey()
  6917 ms  0x76ac privk:0x7f24cf8c7820::7f24cf8c7820  40 d2 8f cf                                      @...
  6917 ms  0x76ac privk:0x7f24cf8c7820::7f24cf8c7820  e5 e5 e5 e5                                      ....
  6925 ms  0x76ac SECKEY_DestroyPrivateKey()
  6925 ms  0x76ac privk:0x7f24cf8ce020::7f24cf8ce020  90 4c 92 cf                                      .L..
  6925 ms  0x76ac privk:0x7f24cf8ce020::7f24cf8ce020  e5 e5 e5 e5                                      ....
  6925 ms  0x76ac SECKEY_DestroyPrivateKey()
  6925 ms  0x76ac privk:0x7f24cf8cc020::7f24cf8cc020  d0 43 92 cf                                      .C..
  6926 ms  0x76ac privk:0x7f24cf8cc020::7f24cf8cc020  e5 e5 e5 e5                                      ....
  6953 ms  0x76ac PK11_Encrypt()
  6953 ms  0x76ac symkey:0x7f24cf6f5400
  6960 ms  0x76ac PK11_Encrypt()
  6960 ms  0x76ac symkey:0x7f24cf6f5c80
  6960 ms  0x76ac SSL_ImportFD()
  6960 ms  0x76ac ret:0x7f24e0acca00
  6960 ms  0x76ac SSL_AuthCertificateHook()
  6960 ms  0x76ac fd:0x7f24e0acca00
  6960 ms  0x76ac ret:0x0
  6961 ms  0x76ac PR_Connect()
  6961 ms  0x76ac fd:0x7f24e0acca00
  6965 ms  0x76ac PR_Close()
  6965 ms  0x76ac fd:0x7f24cfb04640
  6965 ms     | 0x76ac PK11_Encrypt()
  6965 ms     | 0x76ac symkey:0x7f24cf7fe280
  6978 ms  0x76ac SSL_ImportFD()
  6978 ms  0x76ac ret:0x7f24e0acc700
  6978 ms  0x76ac SSL_AuthCertificateHook()
  6978 ms  0x76ac fd:0x7f24e0acc700
  6978 ms  0x76ac ret:0x0
  6978 ms  0x76ac PR_Connect()
  6978 ms  0x76ac fd:0x7f24e0acc700
           /* TID 0x76b4 */
  6979 ms  0x76b4 PR_Close()
  6979 ms  0x76b4 fd:0x7f24e0b281f0
           /* TID 0x76ac */
  6984 ms  0x76ac SSL_ImportFD()
  6984 ms  0x76ac ret:0x7f24e0b28250
  6984 ms  0x76ac SSL_AuthCertificateHook()
  6984 ms  0x76ac fd:0x7f24e0b28250
  6985 ms  0x76ac ret:0x0
  6985 ms  0x76ac PR_Connect()
  6985 ms  0x76ac fd:0x7f24e0b28250
  6997 ms  0x76ac SSL_ImportFD()
  6997 ms  0x76ac ret:0x7f24e0b28730
  6997 ms  0x76ac SSL_AuthCertificateHook()
  6997 ms  0x76ac fd:0x7f24e0b28730
  6997 ms  0x76ac ret:0x0
  6997 ms  0x76ac PR_Connect()
  6997 ms  0x76ac fd:0x7f24e0b28730
  7001 ms  0x76ac SECKEY_CreateECPrivateKey()
  7001 ms  0x76ac cx:0x7f24cf673988
  7002 ms     | 0x76ac EC_ValidatePublicKey()
  7002 ms     | 0x76ac ret:0x0
  7002 ms  0x76ac ret:0x7f24cf8c3020::7f24cf8c3020  f0 d1 8f cf                                      ....
  7002 ms  0x76ac SECKEY_CreateECPrivateKey()
  7002 ms  0x76ac cx:0x7f24cf673988
  7003 ms     | 0x76ac EC_ValidatePublicKey()
  7006 ms     | 0x76ac ret:0x0
  7006 ms  0x76ac ret:0x7f24cf8c7020::7f24cf8c7020  80 ad 8b cf                                      ....
  7016 ms  0x76ac SECKEY_CreateECPrivateKey()
  7016 ms  0x76ac cx:0x7f24cf673b28
  7017 ms     | 0x76ac EC_ValidatePublicKey()
  7017 ms     | 0x76ac ret:0x0
  7017 ms  0x76ac ret:0x7f24cf8c9820::7f24cf8c9820  40 47 92 cf                                      @G..
  7017 ms  0x76ac SECKEY_CreateECPrivateKey()
  7017 ms  0x76ac cx:0x7f24cf673b28
  7017 ms     | 0x76ac EC_ValidatePublicKey()
  7019 ms     | 0x76ac ret:0x0
  7020 ms  0x76ac ret:0x7f24cf8cc020::7f24cf8cc020  a0 8b af cf                                      ....
  7025 ms  0x76ac SECKEY_CreateECPrivateKey()
  7025 ms  0x76ac cx:0x7f24e0bef7e8
  7026 ms     | 0x76ac EC_ValidatePublicKey()
  7026 ms     | 0x76ac ret:0x0
  7026 ms  0x76ac ret:0x7f24cf8cf020::7f24cf8cf020  80 8d af cf                                      ....
  7026 ms  0x76ac SECKEY_CreateECPrivateKey()
  7026 ms  0x76ac cx:0x7f24e0bef7e8
  7027 ms     | 0x76ac EC_ValidatePublicKey()
  7028 ms     | 0x76ac ret:0x0
  7028 ms  0x76ac ret:0x7f24cf8e0820::7f24cf8e0820  f0 66 b4 cf                                      .f..
  7038 ms  0x76ac SECKEY_CreateECPrivateKey()
  7038 ms  0x76ac cx:0x7f24e0bef988
  7039 ms     | 0x76ac EC_ValidatePublicKey()
  7039 ms     | 0x76ac ret:0x0
  7039 ms  0x76ac ret:0x7f24cfaa3820::7f24cfaa3820  20 69 b4 cf                                       i..
  7039 ms  0x76ac SECKEY_CreateECPrivateKey()
  7039 ms  0x76ac cx:0x7f24e0bef988
  7039 ms     | 0x76ac EC_ValidatePublicKey()
  7041 ms     | 0x76ac ret:0x0
  7041 ms  0x76ac ret:0x7f24cfaa5820::7f24cfaa5820  a0 6b b4 cf                                      .k..
  7048 ms  0x76ac PK11_Derive()
  7048 ms  0x76ac basekey:0x7f24cf6f5600
  7048 ms     | 0x76ac PK11_DeriveWithTemplate()
  7049 ms  0x76ac ret:0x7f24cf6f5e00
  7049 ms  0x76ac PK11_Encrypt()
  7049 ms  0x76ac symkey:0x7f24cf7fe180
  7049 ms  0x76ac _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7050 ms  0x76ac ret:0x0
  7050 ms  0x76ac SECKEY_DestroyPrivateKey()
  7050 ms  0x76ac privk:0x7f24cf8c7020::7f24cf8c7020  80 ad 8b cf                                      ....
  7050 ms  0x76ac privk:0x7f24cf8c7020::7f24cf8c7020  e5 e5 e5 e5                                      ....
  7050 ms  0x76ac SECKEY_DestroyPrivateKey()
  7050 ms  0x76ac privk:0x7f24cf8c3020::7f24cf8c3020  f0 d1 8f cf                                      ....
  7050 ms  0x76ac privk:0x7f24cf8c3020::7f24cf8c3020  e5 e5 e5 e5                                      ....
  7050 ms  0x76ac PK11_Encrypt()
  7050 ms  0x76ac symkey:0x7f24cf7fe180
  7074 ms  0x76ac PK11_Derive()
  7074 ms  0x76ac basekey:0x7f24cf689d80
  7074 ms     | 0x76ac PK11_DeriveWithTemplate()
  7075 ms  0x76ac ret:0x7f24cf7fe580
  7075 ms  0x76ac PK11_PubDeriveWithKDF()
  7075 ms  0x76ac seckey:0x7f24cf8c9820
  7075 ms     | 0x76ac EC_ValidatePublicKey()
  7075 ms     | 0x76ac ret:0x0
  7076 ms  0x76ac ret:0x7f24cf689d80
  7076 ms  SECKEY_ECParamsToKeySize()
  7076 ms  0x76ac ret:0xff
  7076 ms  0x76ac PK11_DeriveWithFlags()
  7076 ms  0x76ac basekey:0x7f24cf7fe580
  7076 ms     | 0x76ac PK11_DeriveWithTemplate()
  7076 ms  0x76ac ret:0x7f24cf8fe480
  7076 ms  0x76ac PK11_Derive()
  7076 ms  0x76ac basekey:0x7f24cf689d80
  7076 ms     | 0x76ac PK11_DeriveWithTemplate()
  7076 ms  0x76ac ret:0x7f24cf8fe900
  7076 ms  0x76ac PK11_DeriveWithFlags()
  7076 ms  0x76ac basekey:0x7f24cf8fe900
  7076 ms     | 0x76ac PK11_DeriveWithTemplate()
  7076 ms  0x76ac ret:0x7f24cf7fe580
  7076 ms  0x76ac PK11_DeriveWithFlags()
  7076 ms  0x76ac basekey:0x7f24cf8fe900
  7076 ms     | 0x76ac PK11_DeriveWithTemplate()
  7076 ms  0x76ac ret:0x7f24cf689d80
  7076 ms  0x76ac PK11_DeriveWithFlags()
  7076 ms  0x76ac basekey:0x7f24cf8fe900
  7076 ms     | 0x76ac PK11_DeriveWithTemplate()
  7076 ms  0x76ac ret:0x7f24cf8fe480
  7077 ms  0x76ac PK11_Derive()
  7077 ms  0x76ac basekey:0x7f24cf8ff480
  7077 ms     | 0x76ac PK11_DeriveWithTemplate()
  7077 ms  0x76ac ret:0x7f24cfa2e100
  7077 ms  0x76ac PK11_DeriveWithFlags()
  7077 ms  0x76ac basekey:0x7f24cf689d80
  7077 ms     | 0x76ac PK11_DeriveWithTemplate()
  7077 ms  0x76ac ret:0x7f24cf8fe900
  7077 ms  0x76ac PK11_DeriveWithFlags()
  7077 ms  0x76ac basekey:0x7f24cf689d80
  7077 ms     | 0x76ac PK11_DeriveWithTemplate()
  7077 ms  0x76ac ret:0x7f24cf8fe480
  7080 ms  SECKEY_ECParamsToKeySize()
  7080 ms  0x76ac ret:0x100
  7080 ms  SECKEY_ECParamsToBasePointOrderLen()
  7081 ms  0x76ac ret:0x100
  7081 ms  SECKEY_ECParamsToBasePointOrderLen()
  7081 ms  0x76ac ret:0x100
  7081 ms  0x76ac EC_ValidatePublicKey()
  7084 ms  0x76ac ret:0x0
  7089 ms  0x76ac PK11_DeriveWithFlags()
  7089 ms  0x76ac basekey:0x7f24cf689d80
  7089 ms     | 0x76ac PK11_DeriveWithTemplate()
  7089 ms  0x76ac ret:0x7f24cf8fe480
  7090 ms  0x76ac PK11_Derive()
  7090 ms  0x76ac basekey:0x7f24cf8ff480
  7090 ms     | 0x76ac PK11_DeriveWithTemplate()
  7090 ms  0x76ac ret:0x7f24cf8fe480
  7090 ms  0x76ac PK11_Encrypt()
  7090 ms  0x76ac symkey:0x7f24cfa63480
  7091 ms  0x76ac _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7091 ms  0x76ac ret:0x0
  7091 ms  0x76ac SECKEY_DestroyPrivateKey()
  7091 ms  0x76ac privk:0x7f24cf8e0820::7f24cf8e0820  f0 66 b4 cf                                      .f..
  7091 ms  0x76ac privk:0x7f24cf8e0820::7f24cf8e0820  e5 e5 e5 e5                                      ....
  7091 ms  0x76ac SECKEY_DestroyPrivateKey()
  7091 ms  0x76ac privk:0x7f24cf8cf020::7f24cf8cf020  80 8d af cf                                      ....
  7092 ms  0x76ac privk:0x7f24cf8cf020::7f24cf8cf020  e5 e5 e5 e5                                      ....
           /* TID 0x76b4 */
  7099 ms  0x76b4 PR_Close()
  7099 ms  0x76b4 fd:0x7f24e0b28340
           /* TID 0x76ac */
  7100 ms  0x76ac PK11_Encrypt()
  7100 ms  0x76ac symkey:0x7f24cfa63480
  7101 ms  0x76ac PK11_Derive()
  7101 ms  0x76ac basekey:0x7f24cfa63700
  7101 ms     | 0x76ac PK11_DeriveWithTemplate()
  7101 ms  0x76ac ret:0x7f24cf68aa00
  7101 ms  0x76ac PK11_Encrypt()
  7101 ms  0x76ac symkey:0x7f24cfa63880
  7102 ms  0x76ac _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7102 ms  0x76ac ret:0x0
  7102 ms  0x76ac SECKEY_DestroyPrivateKey()
  7102 ms  0x76ac privk:0x7f24cfaa5820::7f24cfaa5820  a0 6b b4 cf                                      .k..
  7102 ms  0x76ac privk:0x7f24cfaa5820::7f24cfaa5820  e5 e5 e5 e5                                      ....
  7102 ms  0x76ac SECKEY_DestroyPrivateKey()
  7102 ms  0x76ac privk:0x7f24cfaa3820::7f24cfaa3820  20 69 b4 cf                                       i..
  7102 ms  0x76ac privk:0x7f24cfaa3820::7f24cfaa3820  e5 e5 e5 e5                                      ....
  7102 ms  0x76ac PK11_Encrypt()
  7102 ms  0x76ac symkey:0x7f24cfa63880
           /* TID 0x76b4 */
  7224 ms  0x76b4 PR_Close()
  7224 ms  0x76b4 fd:0x7f24e0b28b20
  7240 ms  0x76b4 PR_Close()
  7240 ms  0x76b4 fd:0x7f24cf91a910
           /* TID 0x7705 */
  7240 ms  0x7705 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7240 ms  0x7705 ret:0x0
           /* TID 0x76ac */
  7241 ms  0x76ac SSL_AuthCertificateComplete()
  7241 ms  0x76ac fd:0x7f24e0acc700
  7241 ms  0x76ac err:0x0
  7241 ms     | 0x76ac PK11_DeriveWithFlags()
  7241 ms     | 0x76ac basekey:0x7f24cfa2e100
  7241 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7241 ms     | 0x76ac ret:0x7f24cfa63c80
  7241 ms     | 0x76ac PK11_DeriveWithFlags()
  7241 ms     | 0x76ac basekey:0x7f24cfa2e100
  7241 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7241 ms     | 0x76ac ret:0x7f24cfa63d80
  7241 ms     | 0x76ac PK11_DeriveWithFlags()
  7241 ms     | 0x76ac basekey:0x7f24cfa2e100
  7241 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7241 ms     | 0x76ac ret:0x7f24cfa63e80
  7241 ms     | 0x76ac PK11_DeriveWithFlags()
  7241 ms     | 0x76ac basekey:0x7f24cf7fe580
  7241 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7241 ms     | 0x76ac ret:0x7f24cfa63f00
  7241 ms     | 0x76ac PK11_DeriveWithFlags()
  7241 ms     | 0x76ac basekey:0x7f24cf7fe580
  7241 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7242 ms     | 0x76ac ret:0x7f24cfa63f80
  7242 ms     | 0x76ac PK11_DeriveWithFlags()
  7242 ms     | 0x76ac basekey:0x7f24cfa63d80
  7242 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7242 ms     | 0x76ac ret:0x7f24cfa63f80
  7242 ms     | 0x76ac PK11_DeriveWithFlags()
  7242 ms     | 0x76ac basekey:0x7f24cfa63d80
  7242 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7242 ms     | 0x76ac ret:0x7f24cfa64000
  7242 ms     | 0x76ac PK11_DeriveWithFlags()
  7242 ms     | 0x76ac basekey:0x7f24cf7fe580
  7242 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7242 ms     | 0x76ac ret:0x7f24cf8fe900
  7242 ms     | 0x76ac PK11_Encrypt()
  7242 ms     | 0x76ac symkey:0x7f24cfa63f00
  7242 ms     | 0x76ac PK11_DeriveWithFlags()
  7242 ms     | 0x76ac basekey:0x7f24cfa63c80
  7242 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7242 ms     | 0x76ac ret:0x7f24cf8fe900
  7242 ms     | 0x76ac PK11_DeriveWithFlags()
  7242 ms     | 0x76ac basekey:0x7f24cfa63c80
  7243 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7243 ms     | 0x76ac ret:0x7f24cfa64000
  7243 ms     | 0x76ac PK11_DeriveWithFlags()
  7243 ms     | 0x76ac basekey:0x7f24cfa2e100
  7243 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7243 ms     | 0x76ac ret:0x7f24cfa63f00
  7243 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  7243 ms     | 0x76ac privk:0x7f24cf8cc020::7f24cf8cc020  a0 8b af cf                                      ....
  7243 ms     | 0x76ac privk:0x7f24cf8cc020::7f24cf8cc020  e5 e5 e5 e5                                      ....
  7243 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  7243 ms     | 0x76ac privk:0x7f24cf8c9820::7f24cf8c9820  40 47 92 cf                                      @G..
  7243 ms     | 0x76ac privk:0x7f24cf8c9820::7f24cf8c9820  e5 e5 e5 e5                                      ....
  7244 ms  0x76ac PK11_Encrypt()
  7244 ms  0x76ac symkey:0x7f24cf8fe900
  7247 ms  0x76ac PK11_Encrypt()
  7247 ms  0x76ac symkey:0x7f24cf8fe900
           /* TID 0x76b4 */
  7336 ms  0x76b4 PR_Close()
  7336 ms  0x76b4 fd:0x7f24e0b28b20
  7350 ms  0x76b4 PR_Close()
  7350 ms  0x76b4 fd:0x7f24e0b28e80
           /* TID 0x76ac */
  7357 ms  0x76ac PK11_DeriveWithFlags()
  7357 ms  0x76ac basekey:0x7f24cfa63f00
  7357 ms     | 0x76ac PK11_DeriveWithTemplate()
  7357 ms  0x76ac ret:0x7f24cf689d80
  7357 ms  0x76ac PK11_DeriveWithFlags()
  7357 ms  0x76ac basekey:0x7f24cfa63f00
  7357 ms     | 0x76ac PK11_DeriveWithTemplate()
  7357 ms  0x76ac ret:0x7f24cf689d80
  7357 ms  0x76ac PK11_Encrypt()
  7357 ms  0x76ac symkey:0x7f24cf8fe900
  7379 ms  0x76ac PK11_Encrypt()
  7379 ms  0x76ac symkey:0x7f24cf8fe900
  7386 ms  0x76ac SSL_ImportFD()
  7386 ms  0x76ac ret:0x7f24e0b28bb0
  7386 ms  0x76ac SSL_AuthCertificateHook()
  7386 ms  0x76ac fd:0x7f24e0b28bb0
  7386 ms  0x76ac ret:0x0
  7386 ms  0x76ac PR_Connect()
  7386 ms  0x76ac fd:0x7f24e0b28bb0
  7424 ms  0x76ac SECKEY_CreateECPrivateKey()
  7424 ms  0x76ac cx:0x7f24e0befb28
  7426 ms     | 0x76ac EC_ValidatePublicKey()
  7426 ms     | 0x76ac ret:0x0
  7426 ms  0x76ac ret:0x7f24cf8cc020::7f24cf8cc020  b0 6a b4 cf                                      .j..
  7427 ms  0x76ac SECKEY_CreateECPrivateKey()
  7427 ms  0x76ac cx:0x7f24e0befb28
  7428 ms     | 0x76ac EC_ValidatePublicKey()
  7432 ms     | 0x76ac ret:0x0
  7433 ms  0x76ac ret:0x7f24cf8cf020::7f24cf8cf020  80 68 b4 cf                                      .h..
  7487 ms  0x76ac PK11_Derive()
  7487 ms  0x76ac basekey:0x7f24cf689d80
  7488 ms     | 0x76ac PK11_DeriveWithTemplate()
  7488 ms  0x76ac ret:0x7f24cf7fe580
  7488 ms  0x76ac PK11_PubDeriveWithKDF()
  7488 ms  0x76ac seckey:0x7f24cf8cc020
  7488 ms     | 0x76ac EC_ValidatePublicKey()
  7488 ms     | 0x76ac ret:0x0
  7489 ms  0x76ac ret:0x7f24cf689d80
  7489 ms  SECKEY_ECParamsToKeySize()
  7489 ms  0x76ac ret:0xff
  7489 ms  0x76ac PK11_DeriveWithFlags()
  7489 ms  0x76ac basekey:0x7f24cf7fe580
  7490 ms     | 0x76ac PK11_DeriveWithTemplate()
  7490 ms  0x76ac ret:0x7f24cfa2e100
  7490 ms  0x76ac PK11_Derive()
  7490 ms  0x76ac basekey:0x7f24cf689d80
  7490 ms     | 0x76ac PK11_DeriveWithTemplate()
  7490 ms  0x76ac ret:0x7f24cfa64000
  7490 ms  0x76ac PK11_DeriveWithFlags()
  7490 ms  0x76ac basekey:0x7f24cfa64000
  7490 ms     | 0x76ac PK11_DeriveWithTemplate()
  7491 ms  0x76ac ret:0x7f24cf7fe580
  7491 ms  0x76ac PK11_DeriveWithFlags()
  7491 ms  0x76ac basekey:0x7f24cfa64000
  7491 ms     | 0x76ac PK11_DeriveWithTemplate()
  7491 ms  0x76ac ret:0x7f24cf689d80
  7491 ms  0x76ac PK11_DeriveWithFlags()
  7491 ms  0x76ac basekey:0x7f24cfa64000
  7491 ms     | 0x76ac PK11_DeriveWithTemplate()
  7491 ms  0x76ac ret:0x7f24cfa2e100
  7491 ms  0x76ac PK11_Derive()
  7491 ms  0x76ac basekey:0x7f24cf7ffa00
  7491 ms     | 0x76ac PK11_DeriveWithTemplate()
  7491 ms  0x76ac ret:0x7f24cfa2ef80
  7491 ms  0x76ac PK11_DeriveWithFlags()
  7491 ms  0x76ac basekey:0x7f24cf689d80
  7491 ms     | 0x76ac PK11_DeriveWithTemplate()
  7491 ms  0x76ac ret:0x7f24cfa64000
  7491 ms  0x76ac PK11_DeriveWithFlags()
  7491 ms  0x76ac basekey:0x7f24cf689d80
  7491 ms     | 0x76ac PK11_DeriveWithTemplate()
  7491 ms  0x76ac ret:0x7f24cfa2e100
  7495 ms  0x76ac PK11_DeriveWithFlags()
  7495 ms  0x76ac basekey:0x7f24cf689d80
  7495 ms     | 0x76ac PK11_DeriveWithTemplate()
  7495 ms  0x76ac ret:0x7f24cfa2e100
           /* TID 0x76b4 */
  7639 ms  0x76b4 PR_Close()
  7639 ms  0x76b4 fd:0x7f24e0b28f10
           /* TID 0x7748 */
  7639 ms  0x7748 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7639 ms  0x7748 ret:0x0
           /* TID 0x76ac */
  7639 ms  0x76ac SSL_AuthCertificateComplete()
  7639 ms  0x76ac fd:0x7f24e0b28bb0
  7639 ms  0x76ac err:0x0
  7639 ms     | 0x76ac PK11_DeriveWithFlags()
  7639 ms     | 0x76ac basekey:0x7f24cfa2ef80
  7639 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7639 ms     | 0x76ac ret:0x7f24cfa2e100
  7639 ms     | 0x76ac PK11_DeriveWithFlags()
  7639 ms     | 0x76ac basekey:0x7f24cfa2ef80
  7639 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7639 ms     | 0x76ac ret:0x7f24cf7ffa00
  7639 ms     | 0x76ac PK11_DeriveWithFlags()
  7639 ms     | 0x76ac basekey:0x7f24cfa2ef80
  7639 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7639 ms     | 0x76ac ret:0x7f24cfa64180
  7639 ms     | 0x76ac PK11_DeriveWithFlags()
  7639 ms     | 0x76ac basekey:0x7f24cf7fe580
  7639 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7639 ms     | 0x76ac ret:0x7f24cfa64380
  7639 ms     | 0x76ac PK11_DeriveWithFlags()
  7639 ms     | 0x76ac basekey:0x7f24cf7fe580
  7639 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7639 ms     | 0x76ac ret:0x7f24cfa64400
  7639 ms     | 0x76ac PK11_DeriveWithFlags()
  7639 ms     | 0x76ac basekey:0x7f24cf7ffa00
  7639 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7639 ms     | 0x76ac ret:0x7f24cfa64400
  7639 ms     | 0x76ac PK11_DeriveWithFlags()
  7639 ms     | 0x76ac basekey:0x7f24cf7ffa00
  7639 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7639 ms     | 0x76ac ret:0x7f24cfa64500
  7639 ms     | 0x76ac PK11_DeriveWithFlags()
  7639 ms     | 0x76ac basekey:0x7f24cf7fe580
  7639 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7639 ms     | 0x76ac ret:0x7f24cfa64000
  7639 ms     | 0x76ac PK11_Encrypt()
  7639 ms     | 0x76ac symkey:0x7f24cfa64380
  7640 ms     | 0x76ac PK11_DeriveWithFlags()
  7640 ms     | 0x76ac basekey:0x7f24cfa2e100
  7640 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7640 ms     | 0x76ac ret:0x7f24cfa64000
  7640 ms     | 0x76ac PK11_DeriveWithFlags()
  7640 ms     | 0x76ac basekey:0x7f24cfa2e100
  7640 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7640 ms     | 0x76ac ret:0x7f24cfa64500
  7640 ms     | 0x76ac PK11_DeriveWithFlags()
  7640 ms     | 0x76ac basekey:0x7f24cfa2ef80
  7640 ms     |    | 0x76ac PK11_DeriveWithTemplate()
  7640 ms     | 0x76ac ret:0x7f24cfa64380
  7640 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  7640 ms     | 0x76ac privk:0x7f24cf8cf020::7f24cf8cf020  80 68 b4 cf                                      .h..
  7640 ms     | 0x76ac privk:0x7f24cf8cf020::7f24cf8cf020  e5 e5 e5 e5                                      ....
  7640 ms     | 0x76ac SECKEY_DestroyPrivateKey()
  7640 ms     | 0x76ac privk:0x7f24cf8cc020::7f24cf8cc020  b0 6a b4 cf                                      .j..
  7640 ms     | 0x76ac privk:0x7f24cf8cc020::7f24cf8cc020  e5 e5 e5 e5                                      ....
  7640 ms  0x76ac PK11_Encrypt()
  7640 ms  0x76ac symkey:0x7f24cfa64000
  7640 ms  0x76ac PK11_Encrypt()
  7640 ms  0x76ac symkey:0x7f24cfa64000
  7754 ms  0x76ac PK11_DeriveWithFlags()
  7754 ms  0x76ac basekey:0x7f24cfa64380
  7754 ms     | 0x76ac PK11_DeriveWithTemplate()
  7754 ms  0x76ac ret:0x7f24cf689d80
  7755 ms  0x76ac PK11_DeriveWithFlags()
  7755 ms  0x76ac basekey:0x7f24cfa64380
  7755 ms     | 0x76ac PK11_DeriveWithTemplate()
  7755 ms  0x76ac ret:0x7f24cf689d80
  7755 ms  0x76ac PK11_Encrypt()
  7755 ms  0x76ac symkey:0x7f24cfa64000
  7779 ms  0x76ac PK11_Encrypt()
  7779 ms  0x76ac symkey:0x7f24cfa64000
  7785 ms  0x76ac PR_Close()
  7785 ms  0x76ac fd:0x7f24e158dd60
           /* TID 0x76a1 */
  7786 ms  0x76a1 EC_ValidatePublicKey()
  7787 ms  0x76a1 ret:0x0
  7787 ms  0x76a1 EC_ValidatePublicKey()
  7791 ms  0x76a1 ret:0x0
  7791 ms  0x76a1 EC_ValidatePublicKey()
  7792 ms  0x76a1 ret:0x0
  7792 ms  0x76a1 EC_ValidatePublicKey()
  7794 ms  0x76a1 ret:0x0
  7794 ms  0x76a1 EC_ValidatePublicKey()
  7795 ms  0x76a1 ret:0x0
  7795 ms  0x76a1 EC_ValidatePublicKey()
  7797 ms  0x76a1 ret:0x0
  7797 ms  0x76a1 EC_ValidatePublicKey()
  7798 ms  0x76a1 ret:0x0
  7798 ms  0x76a1 EC_ValidatePublicKey()
  7804 ms  0x76a1 ret:0x0
  7804 ms  0x76a1 EC_ValidatePublicKey()
  7805 ms  0x76a1 ret:0x0
  7806 ms  0x76a1 EC_ValidatePublicKey()
  7807 ms  0x76a1 ret:0x0
           /* TID 0x76ac */
  7808 ms  0x76ac PK11_Encrypt()
  7808 ms  0x76ac symkey:0x7f24cfa64480
  7810 ms  0x76ac PK11_Encrypt()
  7810 ms  0x76ac symkey:0x7f24cf7fff80
  7810 ms  0x76ac PK11_Encrypt()
  7810 ms  0x76ac symkey:0x7f24cf8fe900
  7810 ms  0x76ac PK11_Encrypt()
  7810 ms  0x76ac symkey:0x7f24cf7ffe80
  7810 ms  0x76ac PK11_Encrypt()
  7810 ms  0x76ac symkey:0x7f24cf6f5400
  7810 ms  0x76ac PK11_Encrypt()
  7810 ms  0x76ac symkey:0x7f24cfa64000
  7810 ms  0x76ac PR_Close()
  7810 ms  0x76ac fd:0x7f24e0b28730
  7810 ms     | 0x76ac PK11_Encrypt()
  7810 ms     | 0x76ac symkey:0x7f24cfa63880
  7811 ms  0x76ac PR_Close()
  7811 ms  0x76ac fd:0x7f24e0b28250
  7811 ms     | 0x76ac PK11_Encrypt()
  7811 ms     | 0x76ac symkey:0x7f24cfa63480
  7811 ms  0x76ac PR_Close()
  7811 ms  0x76ac fd:0x7f24cfb04340
  7811 ms     | 0x76ac PK11_Encrypt()
  7811 ms     | 0x76ac symkey:0x7f24cf6f5c80
  7812 ms  0x76ac PR_Close()
  7812 ms  0x76ac fd:0x7f24e0acca00
  7812 ms     | 0x76ac PK11_Encrypt()
  7812 ms     | 0x76ac symkey:0x7f24cf7fe180
  7816 ms  0x76ac PR_Close()
  7816 ms  0x76ac fd:0x7f24e0b28490
  7816 ms     | 0x76ac PK11_Encrypt()
  7816 ms     | 0x76ac symkey:0x7f24e0bdc000
  7816 ms  0x76ac PR_Close()
  7816 ms  0x76ac fd:0x7f24e0b285e0
  7816 ms     | 0x76ac PK11_Encrypt()
  7816 ms     | 0x76ac symkey:0x7f24cf828200
  7816 ms  0x76ac PR_Close()
  7816 ms  0x76ac fd:0x7f24cf8be880
  7816 ms  0x76ac PR_Close()
  7816 ms  0x76ac fd:0x7f24e0b7c460
  7816 ms     | 0x76ac PK11_Encrypt()
  7816 ms     | 0x76ac symkey:0x7f24e0b32480
  7816 ms  0x76ac PR_Close()
  7816 ms  0x76ac fd:0x7f24e0b7c4c0
  7816 ms     | 0x76ac PK11_Encrypt()
  7816 ms     | 0x76ac symkey:0x7f24cf829680
  7816 ms  0x76ac PR_Close()
  7816 ms  0x76ac fd:0x7f24cf8be9a0
  7816 ms     | 0x76ac PK11_Encrypt()
  7816 ms     | 0x76ac symkey:0x7f24cf6f4380
  7817 ms  0x76ac PR_Close()
  7817 ms  0x76ac fd:0x7f24cf6f3f10
  7817 ms     | 0x76ac PK11_Encrypt()
  7817 ms     | 0x76ac symkey:0x7f24cf312680
  7817 ms  0x76ac PR_Close()
  7817 ms  0x76ac fd:0x7f24cf6f3820
  7817 ms     | 0x76ac PK11_Encrypt()
  7817 ms     | 0x76ac symkey:0x7f24cf311b00
  7817 ms  0x76ac PR_Close()
  7817 ms  0x76ac fd:0x7f24cf651b20
  7817 ms     | 0x76ac PK11_Encrypt()
  7817 ms     | 0x76ac symkey:0x7f24cfa63380
  7817 ms  0x76ac PR_Close()
  7817 ms  0x76ac fd:0x7f24cf6f37c0
  7817 ms     | 0x76ac PK11_Encrypt()
  7817 ms     | 0x76ac symkey:0x7f24cf311900
  7817 ms  0x76ac PR_Close()
  7817 ms  0x76ac fd:0x7f24cf6f3760
  7817 ms     | 0x76ac PK11_Encrypt()
  7817 ms     | 0x76ac symkey:0x7f24cf311500
  7818 ms  0x76ac PR_Close()
  7818 ms  0x76ac fd:0x7f24cfa69be0
           /* TID 0x76fa */
  7821 ms  0x76fa PR_Close()
  7821 ms  0x76fa fd:0x7f24cf651490
  7821 ms  0x76fa PR_Close()
  7821 ms  0x76fa fd:0x7f24cf651490
           /* TID 0x76ac */
  7826 ms  0x76ac PR_Close()
  7826 ms  0x76ac fd:0x7f24cf8b66d0
  7827 ms  0x76ac PR_Close()
  7827 ms  0x76ac fd:0x7f24cf8bea30
  7827 ms     | 0x76ac PK11_Encrypt()
  7827 ms     | 0x76ac symkey:0x7f24cf7ff900
  7827 ms  0x76ac PR_Close()
  7827 ms  0x76ac fd:0x7f24cf8b6910
  7827 ms     | 0x76ac PK11_Encrypt()
  7827 ms     | 0x76ac symkey:0x7f24cfb3ff00
  7827 ms  0x76ac PR_Close()
  7827 ms  0x76ac fd:0x7f24cf91a670
  7827 ms     | 0x76ac PK11_Encrypt()
  7827 ms     | 0x76ac symkey:0x7f24cfb3e600
  7828 ms  0x76ac PR_Close()
  7828 ms  0x76ac fd:0x7f24cf91acd0
  7828 ms     | 0x76ac PK11_Encrypt()
  7828 ms     | 0x76ac symkey:0x7f24cfb3f280
  7828 ms  0x76ac PR_Close()
  7828 ms  0x76ac fd:0x7f24cf8be0a0
  7828 ms     | 0x76ac PK11_Encrypt()
  7828 ms     | 0x76ac symkey:0x7f24cfb3ef80
  7828 ms  0x76ac PR_Close()
  7828 ms  0x76ac fd:0x7f24cf8be190
  7828 ms     | 0x76ac PK11_Encrypt()
  7828 ms     | 0x76ac symkey:0x7f24cfb3ec80
  7828 ms  0x76ac PR_Close()
  7828 ms  0x76ac fd:0x7f24cf8becd0
  7828 ms     | 0x76ac PK11_Encrypt()
  7828 ms     | 0x76ac symkey:0x7f24cfb3e900
  7828 ms  0x76ac PR_Close()
  7828 ms  0x76ac fd:0x7f24cf8bed00
  7828 ms     | 0x76ac PK11_Encrypt()
  7828 ms     | 0x76ac symkey:0x7f24cfb3fb80
  7829 ms  0x76ac PR_Close()
  7829 ms  0x76ac fd:0x7f24cf8bed30
  7829 ms     | 0x76ac PK11_Encrypt()
  7829 ms     | 0x76ac symkey:0x7f24cfb3f880
  7829 ms  0x76ac PR_Close()
  7829 ms  0x76ac fd:0x7f24cf8bef40
  7829 ms     | 0x76ac PK11_Encrypt()
  7829 ms     | 0x76ac symkey:0x7f24cfb3f580
  7829 ms  0x76ac PR_Close()
  7829 ms  0x76ac fd:0x7f24cfaea610
  7829 ms     | 0x76ac PK11_Encrypt()
  7829 ms     | 0x76ac symkey:0x7f24cfab4e00
  7829 ms  0x76ac PR_Close()
  7829 ms  0x76ac fd:0x7f24e0baddf0
  7829 ms     | 0x76ac PK11_Encrypt()
  7829 ms     | 0x76ac symkey:0x7f24e0be2700
  7829 ms  0x76ac PR_Close()
  7829 ms  0x76ac fd:0x7f24e0badc40
  7829 ms  0x76ac PR_Close()
  7829 ms  0x76ac fd:0x7f24e0bad1f0
  7829 ms     | 0x76ac PK11_Encrypt()
  7829 ms     | 0x76ac symkey:0x7f24e0be1980
  7830 ms  0x76ac PR_Close()
  7830 ms  0x76ac fd:0x7f24efdfd8e0
  7830 ms  0x76ac PR_Close()
  7830 ms  0x76ac fd:0x7f24e26af040
  7830 ms     | 0x76ac PK11_Encrypt()
  7830 ms     | 0x76ac symkey:0x7f24e26f4400
           /* TID 0x76a1 */
  7832 ms  0x76a1 PR_Close()
  7832 ms  0x76a1 fd:0x7f24e3d72970
  7832 ms  0x76a1 PR_Close()
  7832 ms  0x76a1 fd:0x7f24cf651ac0
  7833 ms  0x76a1 PR_Close()
  7833 ms  0x76a1 fd:0x7f24cf651b80
  7834 ms  0x76a1 PR_Close()
  7834 ms  0x76a1 fd:0x7f24cf651ac0
  7834 ms  0x76a1 PR_Close()
  7834 ms  0x76a1 fd:0x7f24cf651b80
  7834 ms  0x76a1 PR_Close()
  7834 ms  0x76a1 fd:0x7f24cf651ac0
           /* TID 0x76ac */
  7834 ms  0x76ac PR_Close()
  7834 ms  0x76ac fd:0x7f24cf6510d0
  7834 ms     | 0x76ac PK11_Encrypt()
  7834 ms     | 0x76ac symkey:0x7f24cfa64480
  7835 ms  0x76ac PR_Close()
  7835 ms  0x76ac fd:0x7f24cfa69e20
  7835 ms     | 0x76ac PK11_Encrypt()
  7835 ms     | 0x76ac symkey:0x7f24cf7ffe80
  7835 ms  0x76ac PR_Close()
  7835 ms  0x76ac fd:0x7f24cf8136d0
  7835 ms     | 0x76ac PK11_Encrypt()
  7835 ms     | 0x76ac symkey:0x7f24cf6f5400
  7837 ms  0x76ac PR_Close()
  7837 ms  0x76ac fd:0x7f24cf897e50
  7837 ms     | 0x76ac PK11_Encrypt()
  7837 ms     | 0x76ac symkey:0x7f24cf7fff80
  7837 ms  0x76ac PR_Close()
  7837 ms  0x76ac fd:0x7f24e0b28bb0
  7837 ms     | 0x76ac PK11_Encrypt()
  7837 ms     | 0x76ac symkey:0x7f24cfa64000
  7837 ms  0x76ac PR_Close()
  7837 ms  0x76ac fd:0x7f24e0acc700
  7837 ms     | 0x76ac PK11_Encrypt()
  7837 ms     | 0x76ac symkey:0x7f24cf8fe900
           /* TID 0x7712 */
  7840 ms  0x7712 PR_Close()
  7840 ms  0x7712 fd:0x7f24cf651100
           /* TID 0x76a1 */
  7860 ms  0x76a1 PR_Close()
  7860 ms  0x76a1 fd:0x7f24cf651b80
  7860 ms  0x76a1 PR_Close()
  7860 ms  0x76a1 fd:0x7f24cf6f3f40
  7861 ms  0x76a1 PR_Close()
  7861 ms  0x76a1 fd:0x7f24cf651b80
  7861 ms  0x76a1 PR_Close()
  7861 ms  0x76a1 fd:0x7f24cf6f3f40
  7861 ms  0x76a1 PR_Close()
  7861 ms  0x76a1 fd:0x7f24ebbc89a0
  7861 ms  0x76a1 PR_Close()
  7861 ms  0x76a1 fd:0x7f24ebbc88b0
  7861 ms  0x76a1 PR_Close()
  7861 ms  0x76a1 fd:0x7f24ebbc8a60
  7863 ms  0x76a1 PR_Close()
  7863 ms  0x76a1 fd:0x7f24cf6f3f70
  7865 ms  0x76a1 PR_Close()
  7865 ms  0x76a1 fd:0x7f24cf6f3f70
  7867 ms  0x76a1 PR_Close()
  7867 ms  0x76a1 fd:0x7f24cf651b80
  7867 ms  0x76a1 PR_Close()
  7867 ms  0x76a1 fd:0x7f24cf6f3fd0
  7875 ms  0x76a1 PR_Close()
  7875 ms  0x76a1 fd:0x7f24cf651b80
  7875 ms  0x76a1 PR_Close()
  7875 ms  0x76a1 fd:0x7f24cf6f3fd0
  7878 ms  0x76a1 PR_Close()
  7878 ms  0x76a1 fd:0x7f24cf813190
  7879 ms  0x76a1 PR_Close()
  7879 ms  0x76a1 fd:0x7f24cf813190
  7881 ms  0x76a1 PR_Close()
  7881 ms  0x76a1 fd:0x7f24cf651b80
  7881 ms  0x76a1 PR_Close()
  7881 ms  0x76a1 fd:0x7f24cf8136d0
  7882 ms  0x76a1 PR_Close()
  7882 ms  0x76a1 fd:0x7f24cf651b80
  7882 ms  0x76a1 PR_Close()
  7882 ms  0x76a1 fd:0x7f24cf8136d0
  7884 ms  0x76a1 PR_Close()
  7884 ms  0x76a1 fd:0x7f24cf8138b0
  7886 ms  0x76a1 PR_Close()
  7886 ms  0x76a1 fd:0x7f24cf8138b0
  7893 ms  0x76a1 PR_Close()
  7893 ms  0x76a1 fd:0x7f24cf897f10
  7894 ms  0x76a1 PR_Close()
  7894 ms  0x76a1 fd:0x7f24cf897f10
  7896 ms  0x76a1 PR_Close()
  7896 ms  0x76a1 fd:0x7f24cf897fd0
           /* TID 0x7712 */
  7906 ms  0x7712 PR_Close()
  7906 ms  0x7712 fd:0x7f24cf813520
  7908 ms  0x7712 PR_Close()
  7908 ms  0x7712 fd:0x7f24cf813520
           /* TID 0x76a1 */
  7909 ms  0x76a1 PR_Close()
  7909 ms  0x76a1 fd:0x7f24cf651b80
  7909 ms  0x76a1 PR_Close()
  7909 ms  0x76a1 fd:0x7f24cf8be4c0
           /* TID 0x7712 */
  7914 ms  0x7712 PR_Close()
  7914 ms  0x7712 fd:0x7f24cf651100
  7946 ms  0x7712 PR_Close()
  7946 ms  0x7712 fd:0x7f24cf651100
           /* TID 0x76ac */
  7951 ms  0x76ac SSL_ImportFD()
  7951 ms  0x76ac ret:0x7f24cf8b6310
  7951 ms  0x76ac SSL_AuthCertificateHook()
  7951 ms  0x76ac fd:0x7f24cf8b6310
  7951 ms  0x76ac ret:0x0
  7951 ms  0x76ac PR_Connect()
  7951 ms  0x76ac fd:0x7f24cf8b6310
  7951 ms  0x76ac SSL_ImportFD()
  7951 ms  0x76ac ret:0x7f24cf8beb20
  7951 ms  0x76ac SSL_AuthCertificateHook()
  7951 ms  0x76ac fd:0x7f24cf8beb20
  7951 ms  0x76ac ret:0x0
  7951 ms  0x76ac PR_Connect()
  7951 ms  0x76ac fd:0x7f24cf8beb20
  7951 ms  0x76ac SSL_ImportFD()
  7952 ms  0x76ac ret:0x7f24cf91a1c0
  7952 ms  0x76ac SSL_AuthCertificateHook()
  7952 ms  0x76ac fd:0x7f24cf91a1c0
  7952 ms  0x76ac ret:0x0
  7952 ms  0x76ac PR_Connect()
  7952 ms  0x76ac fd:0x7f24cf91a1c0
  7952 ms  0x76ac SSL_ImportFD()
  7952 ms  0x76ac ret:0x7f24cf91ad60
  7952 ms  0x76ac SSL_AuthCertificateHook()
  7952 ms  0x76ac fd:0x7f24cf91ad60
  7952 ms  0x76ac ret:0x0
  7952 ms  0x76ac PR_Connect()
  7952 ms  0x76ac fd:0x7f24cf91ad60
  7952 ms  0x76ac SSL_ImportFD()
  7952 ms  0x76ac ret:0x7f24e0accdc0
  7952 ms  0x76ac SSL_AuthCertificateHook()
  7952 ms  0x76ac fd:0x7f24e0accdc0
  7952 ms  0x76ac ret:0x0
  7952 ms  0x76ac PR_Connect()
  7952 ms  0x76ac fd:0x7f24e0accdc0
  7952 ms  0x76ac SSL_ImportFD()
  7952 ms  0x76ac ret:0x7f24e0b28250
  7952 ms  0x76ac SSL_AuthCertificateHook()
  7952 ms  0x76ac fd:0x7f24e0b28250
  7952 ms  0x76ac ret:0x0
  7952 ms  0x76ac PR_Connect()
  7952 ms  0x76ac fd:0x7f24e0b28250
  7953 ms  0x76ac SSL_ImportFD()
  7953 ms  0x76ac ret:0x7f24e0b285e0
  7953 ms  0x76ac SSL_AuthCertificateHook()
  7953 ms  0x76ac fd:0x7f24e0b285e0
  7953 ms  0x76ac ret:0x0
  7953 ms  0x76ac PR_Connect()
  7953 ms  0x76ac fd:0x7f24e0b285e0
  7953 ms  0x76ac SSL_ImportFD()
  7953 ms  0x76ac ret:0x7f24e0b28910
  7953 ms  0x76ac SSL_AuthCertificateHook()
  7953 ms  0x76ac fd:0x7f24e0b28910
  7953 ms  0x76ac ret:0x0
  7953 ms  0x76ac PR_Connect()
  7953 ms  0x76ac fd:0x7f24e0b28910
  7953 ms  0x76ac SSL_ImportFD()
  7953 ms  0x76ac ret:0x7f24e0b28ee0
  7953 ms  0x76ac SSL_AuthCertificateHook()
  7953 ms  0x76ac fd:0x7f24e0b28ee0
  7953 ms  0x76ac ret:0x0
  7953 ms  0x76ac PR_Connect()
  7953 ms  0x76ac fd:0x7f24e0b28ee0
  7954 ms  0x76ac SSL_ImportFD()
  7954 ms  0x76ac ret:0x7f24e0b72460
  7954 ms  0x76ac SSL_AuthCertificateHook()
  7954 ms  0x76ac fd:0x7f24e0b72460
  7954 ms  0x76ac ret:0x0
  7954 ms  0x76ac PR_Connect()
  7954 ms  0x76ac fd:0x7f24e0b72460
  7955 ms  0x76ac PR_Close()
  7955 ms  0x76ac fd:0x7f24cf8beb20
  7955 ms  0x76ac PR_Close()
  7955 ms  0x76ac fd:0x7f24e0accdc0
  7955 ms  0x76ac PR_Close()
  7955 ms  0x76ac fd:0x7f24cf91ad60
  7955 ms  0x76ac PR_Close()
  7955 ms  0x76ac fd:0x7f24e0b72460
  7955 ms  0x76ac PR_Close()
  7955 ms  0x76ac fd:0x7f24e0b28ee0
  7955 ms  0x76ac PR_Close()
  7955 ms  0x76ac fd:0x7f24e0b28910
  7955 ms  0x76ac PR_Close()
  7955 ms  0x76ac fd:0x7f24e0b285e0
  7956 ms  0x76ac PR_Close()
  7956 ms  0x76ac fd:0x7f24cf91a1c0
  7956 ms  0x76ac PR_Close()
  7956 ms  0x76ac fd:0x7f24e0b28250
  7956 ms  0x76ac PR_Close()
  7956 ms  0x76ac fd:0x7f24cf8b6310
           /* TID 0x76a6 */
  7971 ms  0x76a6 PR_Close()
  7971 ms  0x76a6 fd:0x7f24ea7fcdf0
           /* TID 0x7712 */
  7979 ms  0x7712 PR_Close()
  7979 ms  0x7712 fd:0x7f24cf651790
           /* TID 0x76a1 */
  7987 ms  0x76a1 PR_Close()
  7987 ms  0x76a1 fd:0x7f24cf651b80
  7987 ms  0x76a1 PR_Close()
  7987 ms  0x76a1 fd:0x7f24cf8b6670
           /* TID 0x76ac */
  7990 ms  0x76ac PR_Close()
  7990 ms  0x76ac fd:0x7f24e0d0bfd0
           /* TID 0x76fa */
  7995 ms  0x76fa PR_Close()
  7995 ms  0x76fa fd:0x7f24cf8be190
  7995 ms  0x76fa PR_Close()
  7995 ms  0x76fa fd:0x7f24cf8be190
  7995 ms  0x76fa PR_Close()
  7995 ms  0x76fa fd:0x7f24cf8be190
  7995 ms  0x76fa PR_Close()
  7995 ms  0x76fa fd:0x7f24cf8be370
           /* TID 0x7712 */
  7996 ms  0x7712 PR_Close()
  7996 ms  0x7712 fd:0x7f24cf8be370
           /* TID 0x76a6 */
  7996 ms  0x76a6 PR_Close()
  7996 ms  0x76a6 fd:0x7f24e6f32820
           /* TID 0x76b4 */
  8002 ms  0x76b4 PR_Close()
  8002 ms  0x76b4 fd:0x7f24cf91a0a0
  8002 ms  0x76b4 PR_Close()
  8002 ms  0x76b4 fd:0x7f24cf91a0d0
           /* TID 0x76a6 */
  8010 ms  0x76a6 PR_Close()
  8010 ms  0x76a6 fd:0x7f24efdfd070
           /* TID 0x76a1 */
  8013 ms  0x76a1 PR_Close()
  8013 ms  0x76a1 fd:0x7f24cf651b80
  8013 ms  0x76a1 PR_Close()
  8013 ms  0x76a1 fd:0x7f24cf91a520
           /* TID 0x7712 */
  8015 ms  0x7712 PR_Close()
  8015 ms  0x7712 fd:0x7f24cf91a580
  8017 ms  0x7712 PR_Close()
  8017 ms  0x7712 fd:0x7f24cf91a130
  8063 ms  0x7712 PR_Close()
  8063 ms  0x7712 fd:0x7f24cf651b50
  8064 ms  0x7712 PR_Close()
  8064 ms  0x7712 fd:0x7f24cf651b50
  8088 ms  0x7712 PR_Close()
  8088 ms  0x7712 fd:0x7f24cf6f3250
  8089 ms  0x7712 PR_Close()
  8089 ms  0x7712 fd:0x7f24cf6f3370
  8099 ms  0x7712 PR_Close()
  8099 ms  0x7712 fd:0x7f24cf813910
  8104 ms  0x7712 PR_Close()
  8104 ms  0x7712 fd:0x7f24cf8be160
  8111 ms  0x7712 PR_Close()
  8111 ms  0x7712 fd:0x7f24cf8bec10
  8122 ms  0x7712 PR_Close()
  8122 ms  0x7712 fd:0x7f24cf8befa0
  8123 ms  0x7712 PR_Close()
  8123 ms  0x7712 fd:0x7f24cf8befa0
           /* TID 0x76a1 */
  8282 ms  0x76a1 PR_Close()
  8282 ms  0x76a1 fd:0x7f24cf6f3f40
  8282 ms  0x76a1 PR_Close()
  8282 ms  0x76a1 fd:0x7f24cf6f3f40
  8287 ms  0x76a1 PR_Close()
  8287 ms  0x76a1 fd:0x7f2508eda130
  8287 ms  0x76a1 PR_Close()
  8287 ms  0x76a1 fd:0x7f2508eda190
Process terminated
