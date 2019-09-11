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
           /* TID 0x9be */
   274 ms  0x9be SSL_ImportFD()
   275 ms  0x9be ret:0x7f0bf22915e0
   275 ms  0x9be SSL_AuthCertificateHook()
   275 ms  0x9be fd:0x7f0bf22915e0
   275 ms  0x9be ret:0x0
   275 ms  0x9be PR_Connect()
   275 ms  0x9be fd:0x7f0bf22915e0
           /* TID 0xa2e */
   464 ms  0xa2e PR_Close()
   464 ms  0xa2e fd:0x7f0bf2291a60
   467 ms  0xa2e PR_Close()
   467 ms  0xa2e fd:0x7f0bf2291a60
           /* TID 0x9be */
   494 ms  0x9be SECKEY_CreateECPrivateKey()
   494 ms  0x9be cx:0x7f0bf1c96988
   495 ms     | 0x9be EC_ValidatePublicKey()
   495 ms     | 0x9be ret:0x0
   495 ms  0x9be ret:0x7f0bf1c34820::7f0bf1c34820  b0 cf c8 f1                                      ....
   496 ms  0x9be SECKEY_CreateECPrivateKey()
   496 ms  0x9be cx:0x7f0bf1c96988
   498 ms     | 0x9be EC_ValidatePublicKey()
   503 ms     | 0x9be ret:0x0
   503 ms  0x9be ret:0x7f0bf1c36820::7f0bf1c36820  50 21 c9 f1                                      P!..
   729 ms  SECKEY_ECParamsToKeySize()
   729 ms  0x9be ret:0x100
   729 ms  0x9be SECKEY_CreateECPrivateKey()
   729 ms  0x9be cx:0x7f0bf1c96988
   731 ms     | 0x9be EC_ValidatePublicKey()
   735 ms     | 0x9be ret:0x0
   736 ms  0x9be ret:0x7f0bf1c3f820::7f0bf1c3f820  90 27 c9 f1                                      .'..
   736 ms  0x9be PK11_PubDeriveWithKDF()
   736 ms  0x9be seckey:0x7f0bf1c3f820
   736 ms     | 0x9be EC_ValidatePublicKey()
   740 ms     | 0x9be ret:0x0
   744 ms  0x9be ret:0x7f0bf4084400
   744 ms  0x9be PK11_DeriveWithFlags()
   744 ms  0x9be basekey:0x7f0bf4084400
   744 ms     | 0x9be PK11_DeriveWithTemplate()
   744 ms  0x9be ret:0x7f0bf4084380
   744 ms  0x9be PK11_Derive()
   744 ms  0x9be basekey:0x7f0bf4084380
   744 ms     | 0x9be PK11_DeriveWithTemplate()
   744 ms  0x9be ret:0x7f0bf4084500
   744 ms  0x9be SECKEY_DestroyPrivateKey()
   744 ms  0x9be privk:0x7f0bf1c3f820::7f0bf1c3f820  90 27 c9 f1                                      .'..
   745 ms  0x9be privk:0x7f0bf1c3f820::7f0bf1c3f820  e5 e5 e5 e5                                      ....
   745 ms  0x9be PK11_Encrypt()
   745 ms  0x9be symkey:0x7f0bf4084300
   746 ms  0x9be PR_Connect()
   746 ms  0x9be fd:0x7f0bf2291b50
           /* TID 0xa2e */
   755 ms  0xa2e PR_Close()
   755 ms  0xa2e fd:0x7f0bf2291af0
           /* TID 0x9c6 */
   800 ms  0x9c6 PR_Close()
   800 ms  0x9c6 fd:0x7f0bf2291a90
           /* TID 0xa1e */
   800 ms  0xa1e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   801 ms  0xa1e ret:0x0
           /* TID 0x9be */
   801 ms  0x9be SSL_AuthCertificateComplete()
   801 ms  0x9be fd:0x7f0bf22915e0
   801 ms  0x9be err:0x0
   801 ms  0x9be PK11_Encrypt()
   801 ms  0x9be symkey:0x7f0bf4084300
   965 ms  0x9be SECKEY_DestroyPrivateKey()
   965 ms  0x9be privk:0x7f0bf1c36820::7f0bf1c36820  50 21 c9 f1                                      P!..
   965 ms  0x9be privk:0x7f0bf1c36820::7f0bf1c36820  e5 e5 e5 e5                                      ....
   965 ms  0x9be SECKEY_DestroyPrivateKey()
   965 ms  0x9be privk:0x7f0bf1c34820::7f0bf1c34820  b0 cf c8 f1                                      ....
   965 ms  0x9be privk:0x7f0bf1c34820::7f0bf1c34820  e5 e5 e5 e5                                      ....
  1187 ms  0x9be SSL_ImportFD()
  1187 ms  0x9be ret:0x7f0bf2291d60
  1187 ms  0x9be SSL_AuthCertificateHook()
  1187 ms  0x9be fd:0x7f0bf2291d60
  1187 ms  0x9be ret:0x0
  1187 ms  0x9be PR_Connect()
  1187 ms  0x9be fd:0x7f0bf2291d60
  1212 ms  0x9be SECKEY_CreateECPrivateKey()
  1212 ms  0x9be cx:0x7f0bf1cc6728
  1213 ms     | 0x9be EC_ValidatePublicKey()
  1213 ms     | 0x9be ret:0x0
  1213 ms  0x9be ret:0x7f0bf1c36020::7f0bf1c36020  50 21 c9 f1                                      P!..
  1213 ms  0x9be SECKEY_CreateECPrivateKey()
  1213 ms  0x9be cx:0x7f0bf1cc6728
  1213 ms     | 0x9be EC_ValidatePublicKey()
  1215 ms     | 0x9be ret:0x0
  1215 ms  0x9be ret:0x7f0bf1c3c020::7f0bf1c3c020  b0 25 c9 f1                                      .%..
           /* TID 0xa1e */
  1266 ms  0xa1e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1266 ms  0xa1e ret:0x0
           /* TID 0x9be */
  1266 ms  SECKEY_ECParamsToKeySize()
  1266 ms  0x9be ret:0x100
  1266 ms  0x9be SECKEY_CreateECPrivateKey()
  1266 ms  0x9be cx:0x7f0bf1cc6728
  1267 ms     | 0x9be EC_ValidatePublicKey()
  1268 ms     | 0x9be ret:0x0
  1268 ms  0x9be ret:0x7f0bf1c3f820::7f0bf1c3f820  30 28 c9 f1                                      0(..
  1268 ms  0x9be PK11_PubDeriveWithKDF()
  1268 ms  0x9be seckey:0x7f0bf1c3f820
  1268 ms     | 0x9be EC_ValidatePublicKey()
  1270 ms     | 0x9be ret:0x0
  1274 ms  0x9be ret:0x7f0bf4084400
  1274 ms  0x9be PK11_DeriveWithFlags()
  1274 ms  0x9be basekey:0x7f0bf4084400
  1274 ms     | 0x9be PK11_DeriveWithTemplate()
  1274 ms  0x9be ret:0x7f0bf1c8f480
  1274 ms  0x9be PK11_Derive()
  1274 ms  0x9be basekey:0x7f0bf1c8f480
  1274 ms     | 0x9be PK11_DeriveWithTemplate()
  1274 ms  0x9be ret:0x7f0bf1c8f500
  1274 ms  0x9be SECKEY_DestroyPrivateKey()
  1274 ms  0x9be privk:0x7f0bf1c3f820::7f0bf1c3f820  30 28 c9 f1                                      0(..
  1274 ms  0x9be privk:0x7f0bf1c3f820::7f0bf1c3f820  e5 e5 e5 e5                                      ....
  1274 ms  0x9be PK11_Encrypt()
  1274 ms  0x9be symkey:0x7f0bf1c8f680
  1276 ms  0x9be SSL_AuthCertificateComplete()
  1276 ms  0x9be fd:0x7f0bf2291d60
  1276 ms  0x9be err:0x0
  1276 ms  0x9be PK11_Encrypt()
  1276 ms  0x9be symkey:0x7f0bf1c8f680
  1325 ms  0x9be SECKEY_DestroyPrivateKey()
  1325 ms  0x9be privk:0x7f0bf1c3c020::7f0bf1c3c020  b0 25 c9 f1                                      .%..
  1325 ms  0x9be privk:0x7f0bf1c3c020::7f0bf1c3c020  e5 e5 e5 e5                                      ....
  1325 ms  0x9be SECKEY_DestroyPrivateKey()
  1325 ms  0x9be privk:0x7f0bf1c36020::7f0bf1c36020  50 21 c9 f1                                      P!..
  1325 ms  0x9be privk:0x7f0bf1c36020::7f0bf1c36020  e5 e5 e5 e5                                      ....
  1327 ms  0x9be PK11_Encrypt()
  1327 ms  0x9be symkey:0x7f0bf1c8f680
  1359 ms  0x9be PK11_Encrypt()
  1359 ms  0x9be symkey:0x7f0bf1c8f680
  1387 ms  0x9be PK11_Encrypt()
  1387 ms  0x9be symkey:0x7f0bf1c8f680
  1417 ms  0x9be PK11_Encrypt()
  1417 ms  0x9be symkey:0x7f0bf1c8f680
  1534 ms  0x9be PK11_Encrypt()
  1534 ms  0x9be symkey:0x7f0bf1c8f680
  1568 ms  0x9be PK11_Encrypt()
  1568 ms  0x9be symkey:0x7f0bf1c8f680
  1599 ms  0x9be PK11_Encrypt()
  1599 ms  0x9be symkey:0x7f0bf1c8f680
           /* TID 0xa14 */
  1627 ms  0xa14 PR_Close()
  1627 ms  0xa14 fd:0x7f0bf1ce6220
  1627 ms  0xa14 PR_Close()
  1627 ms  0xa14 fd:0x7f0bf1ce6370
  1627 ms  0xa14 PR_Close()
  1627 ms  0xa14 fd:0x7f0bf1ce6220
  1627 ms  0xa14 PR_Close()
  1627 ms  0xa14 fd:0x7f0bf1ce6370
  1628 ms  0xa14 PR_Close()
  1628 ms  0xa14 fd:0x7f0bf1ce6220
  1628 ms  0xa14 PR_Close()
  1628 ms  0xa14 fd:0x7f0bf1ce6370
  1628 ms  0xa14 PR_Close()
  1628 ms  0xa14 fd:0x7f0bf1ce6220
  1628 ms  0xa14 PR_Close()
  1628 ms  0xa14 fd:0x7f0bf1ce6370
  1628 ms  0xa14 PR_Close()
  1628 ms  0xa14 fd:0x7f0bf1ce6220
  1628 ms  0xa14 PR_Close()
  1628 ms  0xa14 fd:0x7f0bf1ce6370
  1628 ms  0xa14 PR_Close()
  1628 ms  0xa14 fd:0x7f0bf1ce6220
  1628 ms  0xa14 PR_Close()
  1628 ms  0xa14 fd:0x7f0bf1ce6370
  1628 ms  0xa14 PR_Close()
  1628 ms  0xa14 fd:0x7f0bf1ce6220
  1628 ms  0xa14 PR_Close()
  1628 ms  0xa14 fd:0x7f0bf1ce6370
  1628 ms  0xa14 PR_Close()
  1628 ms  0xa14 fd:0x7f0bf1ce6220
  1628 ms  0xa14 PR_Close()
  1628 ms  0xa14 fd:0x7f0bf1ce6370
  1628 ms  0xa14 PR_Close()
  1628 ms  0xa14 fd:0x7f0bf1ce6220
  1629 ms  0xa14 PR_Close()
  1629 ms  0xa14 fd:0x7f0bf1ce6370
  1629 ms  0xa14 PR_Close()
  1629 ms  0xa14 fd:0x7f0bf1ce6220
  1629 ms  0xa14 PR_Close()
  1629 ms  0xa14 fd:0x7f0bf1ce6370
  1629 ms  0xa14 PR_Close()
  1629 ms  0xa14 fd:0x7f0bf1ce6220
  1629 ms  0xa14 PR_Close()
  1629 ms  0xa14 fd:0x7f0bf1ce6370
  1629 ms  0xa14 PR_Close()
  1629 ms  0xa14 fd:0x7f0bf1ce6220
  1629 ms  0xa14 PR_Close()
  1629 ms  0xa14 fd:0x7f0bf1ce6370
  1629 ms  0xa14 PR_Close()
  1629 ms  0xa14 fd:0x7f0bf1ce6220
  1629 ms  0xa14 PR_Close()
  1629 ms  0xa14 fd:0x7f0bf1ce6370
  1629 ms  0xa14 PR_Close()
  1629 ms  0xa14 fd:0x7f0bf1ce6220
  1629 ms  0xa14 PR_Close()
  1629 ms  0xa14 fd:0x7f0bf1ce6370
  1632 ms  0xa14 PR_Close()
  1632 ms  0xa14 fd:0x7f0bf1ce6220
  1632 ms  0xa14 PR_Close()
  1632 ms  0xa14 fd:0x7f0bf1ce6220
  1634 ms  0xa14 PR_Close()
  1634 ms  0xa14 fd:0x7f0bf1ce6220
  1635 ms  0xa14 PR_Close()
  1635 ms  0xa14 fd:0x7f0bf1ce6340
  1637 ms  0xa14 PR_Close()
  1637 ms  0xa14 fd:0x7f0bf1ce6340
  1637 ms  0xa14 PR_Close()
  1637 ms  0xa14 fd:0x7f0bf1ce6340
  1640 ms  0xa14 PR_Close()
  1640 ms  0xa14 fd:0x7f0bf1ce6340
  1640 ms  0xa14 PR_Close()
  1640 ms  0xa14 fd:0x7f0bf1ce6340
  1686 ms  0xa14 PR_Close()
  1686 ms  0xa14 fd:0x7f0bf1ce6340
  1686 ms  0xa14 PR_Close()
  1686 ms  0xa14 fd:0x7f0bf1ce6340
  1693 ms  0xa14 PR_Close()
  1693 ms  0xa14 fd:0x7f0bf1ce6340
  1694 ms  0xa14 PR_Close()
  1694 ms  0xa14 fd:0x7f0bf1ce6340
  1700 ms  0xa14 PR_Close()
  1700 ms  0xa14 fd:0x7f0bf1ce6340
  1701 ms  0xa14 PR_Close()
  1701 ms  0xa14 fd:0x7f0bf1ce6340
  1702 ms  0xa14 PR_Close()
  1702 ms  0xa14 fd:0x7f0bf1ce6340
  1703 ms  0xa14 PR_Close()
  1703 ms  0xa14 fd:0x7f0bf1ce6340
           /* TID 0xa12 */
  1703 ms  0xa12 PR_Close()
  1703 ms  0xa12 fd:0x7f0bf1ce6340
  1703 ms  0xa12 PR_Close()
  1703 ms  0xa12 fd:0x7f0bf1ce6340
  1703 ms  0xa12 PR_Close()
  1703 ms  0xa12 fd:0x7f0bf1ce6340
  1703 ms  0xa12 PR_Close()
  1703 ms  0xa12 fd:0x7f0bf1ce6340
  1703 ms  0xa12 PR_Close()
  1703 ms  0xa12 fd:0x7f0bf1ce6340
  1703 ms  0xa12 PR_Close()
  1703 ms  0xa12 fd:0x7f0bf1ce6340
  1703 ms  0xa12 PR_Close()
  1703 ms  0xa12 fd:0x7f0bf1ce6340
  1703 ms  0xa12 PR_Close()
  1703 ms  0xa12 fd:0x7f0bf1ce6340
  1703 ms  0xa12 PR_Close()
  1703 ms  0xa12 fd:0x7f0bf1ce6340
  1703 ms  0xa12 PR_Close()
  1703 ms  0xa12 fd:0x7f0bf1ce6340
  1703 ms  0xa12 PR_Close()
  1703 ms  0xa12 fd:0x7f0bf1ce6340
  1703 ms  0xa12 PR_Close()
  1703 ms  0xa12 fd:0x7f0bf1ce6340
  1703 ms  0xa12 PR_Close()
  1703 ms  0xa12 fd:0x7f0bf1ce6340
  1703 ms  0xa12 PR_Close()
  1703 ms  0xa12 fd:0x7f0bf1ce6340
  1703 ms  0xa12 PR_Close()
  1703 ms  0xa12 fd:0x7f0bf1ce6340
           /* TID 0xa2e */
  2206 ms  0xa2e PR_Close()
  2206 ms  0xa2e fd:0x7f0bf1ce6370
  2209 ms  0xa2e PR_Close()
  2209 ms  0xa2e fd:0x7f0bf1ce6370
  2560 ms  0xa2e PR_Close()
  2560 ms  0xa2e fd:0x7f0bf1ce6370
           /* TID 0x9c6 */
  4124 ms  0x9c6 PR_Close()
  4124 ms  0x9c6 fd:0x7f0bf1ce6370
  4124 ms  0x9c6 PR_Close()
  4124 ms  0x9c6 fd:0x7f0bf1ce63d0
  4124 ms  0x9c6 PR_Close()
  4124 ms  0x9c6 fd:0x7f0bf1ce6430
           /* TID 0x9be */
  4706 ms  0x9be SSL_ImportFD()
  4706 ms  0x9be ret:0x7f0be0ded5b0
  4706 ms  0x9be SSL_AuthCertificateHook()
  4706 ms  0x9be fd:0x7f0be0ded5b0
  4706 ms  0x9be ret:0x0
  4707 ms  0x9be PR_Connect()
  4707 ms  0x9be fd:0x7f0be0ded5b0
  4764 ms  0x9be SECKEY_CreateECPrivateKey()
  4764 ms  0x9be cx:0x7f0bf1cc6a68
  4764 ms     | 0x9be EC_ValidatePublicKey()
  4764 ms     | 0x9be ret:0x0
  4764 ms  0x9be ret:0x7f0bf20b4020::7f0bf20b4020  50 66 2b f3                                      Pf+.
  4764 ms  0x9be SECKEY_CreateECPrivateKey()
  4764 ms  0x9be cx:0x7f0bf1cc6a68
  4765 ms     | 0x9be EC_ValidatePublicKey()
  4766 ms     | 0x9be ret:0x0
  4766 ms  0x9be ret:0x7f0bf69b9820::7f0bf69b9820  d0 68 2b f3                                      .h+.
  4831 ms  SECKEY_ECParamsToKeySize()
  4831 ms  0x9be ret:0x100
  4831 ms  0x9be SECKEY_CreateECPrivateKey()
  4831 ms  0x9be cx:0x7f0bf1cc6a68
  4833 ms     | 0x9be EC_ValidatePublicKey()
  4837 ms     | 0x9be ret:0x0
  4837 ms  0x9be ret:0x7f0be0c0b020::7f0be0c0b020  60 6f 2b f3                                      `o+.
  4838 ms  0x9be PK11_PubDeriveWithKDF()
  4838 ms  0x9be seckey:0x7f0be0c0b020
  4838 ms     | 0x9be EC_ValidatePublicKey()
  4843 ms     | 0x9be ret:0x0
  4847 ms  0x9be ret:0x7f0bf4084400
  4847 ms  0x9be PK11_DeriveWithFlags()
  4847 ms  0x9be basekey:0x7f0bf4084400
  4847 ms     | 0x9be PK11_DeriveWithTemplate()
  4847 ms  0x9be ret:0x7f0be0df1d80
  4847 ms  0x9be PK11_Derive()
  4847 ms  0x9be basekey:0x7f0be0df1d80
  4847 ms     | 0x9be PK11_DeriveWithTemplate()
  4847 ms  0x9be ret:0x7f0be0df1e00
  4847 ms  0x9be SECKEY_DestroyPrivateKey()
  4847 ms  0x9be privk:0x7f0be0c0b020::7f0be0c0b020  60 6f 2b f3                                      `o+.
  4848 ms  0x9be privk:0x7f0be0c0b020::7f0be0c0b020  e5 e5 e5 e5                                      ....
  4848 ms  0x9be PK11_Encrypt()
  4848 ms  0x9be symkey:0x7f0be0df1f80
  4951 ms  0x9be PR_Connect()
  4951 ms  0x9be fd:0x7f0be0ded820
           /* TID 0x9c6 */
  5005 ms  0x9c6 PR_Close()
  5005 ms  0x9c6 fd:0x7f0be0ded460
           /* TID 0xa1e */
  5006 ms  0xa1e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5006 ms  0xa1e ret:0x0
           /* TID 0x9be */
  5019 ms  0x9be SSL_AuthCertificateComplete()
  5019 ms  0x9be fd:0x7f0be0ded5b0
  5019 ms  0x9be err:0x0
  5019 ms     | 0x9be SECKEY_DestroyPrivateKey()
  5019 ms     | 0x9be privk:0x7f0bf69b9820::7f0bf69b9820  d0 68 2b f3                                      .h+.
  5019 ms     | 0x9be privk:0x7f0bf69b9820::7f0bf69b9820  e5 e5 e5 e5                                      ....
  5020 ms     | 0x9be SECKEY_DestroyPrivateKey()
  5020 ms     | 0x9be privk:0x7f0bf20b4020::7f0bf20b4020  50 66 2b f3                                      Pf+.
  5020 ms     | 0x9be privk:0x7f0bf20b4020::7f0bf20b4020  e5 e5 e5 e5                                      ....
  5020 ms  0x9be PK11_Encrypt()
  5020 ms  0x9be symkey:0x7f0be0df1f80
           /* TID 0x9d5 */
  5159 ms  0x9d5 PR_Close()
  5159 ms  0x9d5 fd:0x7f0be0dedca0
           /* TID 0x9c6 */
  5220 ms  0x9c6 PR_Close()
  5220 ms  0x9c6 fd:0x7f0be0b5f9a0
           /* TID 0x9be */
  5372 ms  0x9be SSL_ImportFD()
  5372 ms  0x9be ret:0x7f0be0b97610
  5372 ms  0x9be SSL_AuthCertificateHook()
  5372 ms  0x9be fd:0x7f0be0b97610
  5372 ms  0x9be ret:0x0
  5372 ms  0x9be PR_Connect()
  5372 ms  0x9be fd:0x7f0be0b97610
  5372 ms  0x9be SSL_ImportFD()
  5372 ms  0x9be ret:0x7f0be0b97640
  5372 ms  0x9be SSL_AuthCertificateHook()
  5372 ms  0x9be fd:0x7f0be0b97640
  5373 ms  0x9be ret:0x0
  5373 ms  0x9be PR_Connect()
  5373 ms  0x9be fd:0x7f0be0b97640
  5373 ms  0x9be SSL_ImportFD()
  5373 ms  0x9be ret:0x7f0be0b973d0
  5373 ms  0x9be SSL_AuthCertificateHook()
  5373 ms  0x9be fd:0x7f0be0b973d0
  5373 ms  0x9be ret:0x0
  5373 ms  0x9be PR_Connect()
  5373 ms  0x9be fd:0x7f0be0b973d0
  5373 ms  0x9be SSL_ImportFD()
  5373 ms  0x9be ret:0x7f0be0b97430
  5373 ms  0x9be SSL_AuthCertificateHook()
  5373 ms  0x9be fd:0x7f0be0b97430
  5373 ms  0x9be ret:0x0
  5374 ms  0x9be PR_Connect()
  5374 ms  0x9be fd:0x7f0be0b97430
  5374 ms  0x9be SSL_ImportFD()
  5374 ms  0x9be ret:0x7f0be0b975b0
  5374 ms  0x9be SSL_AuthCertificateHook()
  5374 ms  0x9be fd:0x7f0be0b975b0
  5374 ms  0x9be ret:0x0
  5374 ms  0x9be PR_Connect()
  5374 ms  0x9be fd:0x7f0be0b975b0
  5398 ms  0x9be SECKEY_CreateECPrivateKey()
  5398 ms  0x9be cx:0x7f0bf1cc70e8
  5400 ms     | 0x9be EC_ValidatePublicKey()
  5401 ms     | 0x9be ret:0x0
  5401 ms  0x9be ret:0x7f0be0bae820::7f0be0bae820  20 94 d2 e0                                       ...
  5401 ms  0x9be SECKEY_CreateECPrivateKey()
  5401 ms  0x9be cx:0x7f0bf1cc70e8
  5406 ms     | 0x9be EC_ValidatePublicKey()
  5414 ms     | 0x9be ret:0x0
  5414 ms  0x9be ret:0x7f0be0bb1020::7f0be0bb1020  40 92 d2 e0                                      @...
  5415 ms  0x9be SECKEY_CreateECPrivateKey()
  5415 ms  0x9be cx:0x7f0bf1cc6da8
  5416 ms     | 0x9be EC_ValidatePublicKey()
  5416 ms     | 0x9be ret:0x0
  5416 ms  0x9be ret:0x7f0be0bb3820::7f0be0bb3820  e0 97 d2 e0                                      ....
  5417 ms  0x9be SECKEY_CreateECPrivateKey()
  5417 ms  0x9be cx:0x7f0bf1cc6da8
  5418 ms     | 0x9be EC_ValidatePublicKey()
  5423 ms     | 0x9be ret:0x0
  5423 ms  0x9be ret:0x7f0be0bb5820::7f0be0bb5820  b0 95 d2 e0                                      ....
  5429 ms  0x9be SECKEY_CreateECPrivateKey()
  5429 ms  0x9be cx:0x7f0bf1cc75c8
  5430 ms     | 0x9be EC_ValidatePublicKey()
  5430 ms     | 0x9be ret:0x0
  5430 ms  0x9be ret:0x7f0be0bb8020::7f0be0bb8020  a0 9b d2 e0                                      ....
  5430 ms  0x9be SECKEY_CreateECPrivateKey()
  5430 ms  0x9be cx:0x7f0bf1cc75c8
  5431 ms     | 0x9be EC_ValidatePublicKey()
  5433 ms     | 0x9be ret:0x0
  5433 ms  0x9be ret:0x7f0be0bba020::7f0be0bba020  80 9d d2 e0                                      ....
  5433 ms  0x9be SECKEY_CreateECPrivateKey()
  5433 ms  0x9be cx:0x7f0bf1cc7428
  5434 ms     | 0x9be EC_ValidatePublicKey()
  5434 ms     | 0x9be ret:0x0
  5434 ms  0x9be ret:0x7f0be0bbc820::7f0be0bbc820  c0 9e d2 e0                                      ....
  5434 ms  0x9be SECKEY_CreateECPrivateKey()
  5434 ms  0x9be cx:0x7f0bf1cc7428
  5435 ms     | 0x9be EC_ValidatePublicKey()
  5437 ms     | 0x9be ret:0x0
  5437 ms  0x9be ret:0x7f0be0bbe820::7f0be0bbe820  80 9d d7 e0                                      ....
  5438 ms  0x9be SECKEY_CreateECPrivateKey()
  5438 ms  0x9be cx:0x7f0bf1cc7288
  5438 ms     | 0x9be EC_ValidatePublicKey()
  5438 ms     | 0x9be ret:0x0
  5438 ms  0x9be ret:0x7f0be0bc1020::7f0be0bc1020  a0 36 26 f8                                      .6&.
  5439 ms  0x9be SECKEY_CreateECPrivateKey()
  5439 ms  0x9be cx:0x7f0bf1cc7288
  5439 ms     | 0x9be EC_ValidatePublicKey()
  5441 ms     | 0x9be ret:0x0
  5441 ms  0x9be ret:0x7f0be0bc3020::7f0be0bc3020  f0 f1 e7 e0                                      ....
  5443 ms  0x9be PK11_Derive()
  5443 ms  0x9be basekey:0x7f0bf4084400
  5443 ms     | 0x9be PK11_DeriveWithTemplate()
  5443 ms  0x9be ret:0x7f0be0b98a00
  5443 ms  0x9be PK11_PubDeriveWithKDF()
  5443 ms  0x9be seckey:0x7f0be0bb1020
  5443 ms     | 0x9be EC_ValidatePublicKey()
  5445 ms     | 0x9be ret:0x0
  5446 ms  0x9be ret:0x7f0bf4084400
  5446 ms  SECKEY_ECParamsToKeySize()
  5446 ms  0x9be ret:0x100
  5446 ms  0x9be PK11_DeriveWithFlags()
  5446 ms  0x9be basekey:0x7f0be0b98a00
  5446 ms     | 0x9be PK11_DeriveWithTemplate()
  5447 ms  0x9be ret:0x7f0be0b98d00
  5447 ms  0x9be PK11_Derive()
  5447 ms  0x9be basekey:0x7f0bf4084400
  5447 ms     | 0x9be PK11_DeriveWithTemplate()
  5447 ms  0x9be ret:0x7f0be0b98e80
  5447 ms  0x9be PK11_DeriveWithFlags()
  5447 ms  0x9be basekey:0x7f0be0b98e80
  5447 ms     | 0x9be PK11_DeriveWithTemplate()
  5447 ms  0x9be ret:0x7f0be0b98a00
  5447 ms  0x9be PK11_DeriveWithFlags()
  5447 ms  0x9be basekey:0x7f0be0b98e80
  5447 ms     | 0x9be PK11_DeriveWithTemplate()
  5447 ms  0x9be ret:0x7f0bf4084400
  5447 ms  0x9be PK11_DeriveWithFlags()
  5447 ms  0x9be basekey:0x7f0be0b98e80
  5447 ms     | 0x9be PK11_DeriveWithTemplate()
  5447 ms  0x9be ret:0x7f0be0b98d00
  5447 ms  0x9be PK11_Derive()
  5447 ms  0x9be basekey:0x7f0be0b98f80
  5447 ms     | 0x9be PK11_DeriveWithTemplate()
  5447 ms  0x9be ret:0x7f0be0b99000
  5447 ms  0x9be PK11_DeriveWithFlags()
  5447 ms  0x9be basekey:0x7f0bf4084400
  5447 ms     | 0x9be PK11_DeriveWithTemplate()
  5447 ms  0x9be ret:0x7f0be0b98e80
  5447 ms  0x9be PK11_DeriveWithFlags()
  5447 ms  0x9be basekey:0x7f0bf4084400
  5447 ms     | 0x9be PK11_DeriveWithTemplate()
  5447 ms  0x9be ret:0x7f0be0b98d00
           /* TID 0xa1e */
  5448 ms  0xa1e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5448 ms  0xa1e ret:0x0
           /* TID 0x9be */
  5449 ms  0x9be PK11_DeriveWithFlags()
  5449 ms  0x9be basekey:0x7f0bf4084400
  5449 ms     | 0x9be PK11_DeriveWithTemplate()
  5450 ms  0x9be ret:0x7f0be0b98d00
  5450 ms  0x9be PK11_Derive()
  5450 ms  0x9be basekey:0x7f0be0b98d00
  5450 ms     | 0x9be PK11_DeriveWithTemplate()
  5450 ms  0x9be ret:0x7f0be0b98f80
  5450 ms  0x9be PK11_PubDeriveWithKDF()
  5450 ms  0x9be seckey:0x7f0be0bb5820
  5450 ms     | 0x9be EC_ValidatePublicKey()
  5452 ms     | 0x9be ret:0x0
  5454 ms  0x9be ret:0x7f0be0b98d00
  5454 ms  SECKEY_ECParamsToKeySize()
  5455 ms  0x9be ret:0x100
  5455 ms  0x9be PK11_DeriveWithFlags()
  5455 ms  0x9be basekey:0x7f0be0b98f80
  5455 ms     | 0x9be PK11_DeriveWithTemplate()
  5455 ms  0x9be ret:0x7f0be0b99300
  5455 ms  0x9be PK11_Derive()
  5455 ms  0x9be basekey:0x7f0be0b98d00
  5455 ms     | 0x9be PK11_DeriveWithTemplate()
  5455 ms  0x9be ret:0x7f0be0b99380
  5455 ms  0x9be PK11_DeriveWithFlags()
  5455 ms  0x9be basekey:0x7f0be0b99380
  5455 ms     | 0x9be PK11_DeriveWithTemplate()
  5455 ms  0x9be ret:0x7f0be0b98f80
  5455 ms  0x9be PK11_DeriveWithFlags()
  5455 ms  0x9be basekey:0x7f0be0b99380
  5455 ms     | 0x9be PK11_DeriveWithTemplate()
  5455 ms  0x9be ret:0x7f0be0b98d00
  5455 ms  0x9be PK11_DeriveWithFlags()
  5455 ms  0x9be basekey:0x7f0be0b99380
  5455 ms     | 0x9be PK11_DeriveWithTemplate()
  5455 ms  0x9be ret:0x7f0be0b99300
  5455 ms  0x9be PK11_Derive()
  5455 ms  0x9be basekey:0x7f0be0b99400
  5455 ms     | 0x9be PK11_DeriveWithTemplate()
  5455 ms  0x9be ret:0x7f0be0b99480
  5455 ms  0x9be PK11_DeriveWithFlags()
  5455 ms  0x9be basekey:0x7f0be0b98d00
  5455 ms     | 0x9be PK11_DeriveWithTemplate()
  5455 ms  0x9be ret:0x7f0be0b99380
  5455 ms  0x9be PK11_DeriveWithFlags()
  5455 ms  0x9be basekey:0x7f0be0b98d00
  5455 ms     | 0x9be PK11_DeriveWithTemplate()
  5455 ms  0x9be ret:0x7f0be0b99300
           /* TID 0xa1e */
  5455 ms  0xa1e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5456 ms  0xa1e ret:0x0
           /* TID 0x9be */
  5456 ms  0x9be PK11_DeriveWithFlags()
  5456 ms  0x9be basekey:0x7f0be0b98d00
  5456 ms     | 0x9be PK11_DeriveWithTemplate()
  5456 ms  0x9be ret:0x7f0be0b99300
  5456 ms  0x9be SSL_AuthCertificateComplete()
  5456 ms  0x9be fd:0x7f0be0b97640
  5456 ms  0x9be err:0x0
  5456 ms     | 0x9be PK11_DeriveWithFlags()
  5456 ms     | 0x9be basekey:0x7f0be0b99000
  5456 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5456 ms     | 0x9be ret:0x7f0be0b99300
  5456 ms     | 0x9be PK11_DeriveWithFlags()
  5456 ms     | 0x9be basekey:0x7f0be0b99000
  5456 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5456 ms     | 0x9be ret:0x7f0be0b99400
  5456 ms     | 0x9be PK11_DeriveWithFlags()
  5456 ms     | 0x9be basekey:0x7f0be0b99000
  5456 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5456 ms     | 0x9be ret:0x7f0be0b99580
  5456 ms     | 0x9be PK11_DeriveWithFlags()
  5456 ms     | 0x9be basekey:0x7f0be0b98a00
  5456 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5456 ms     | 0x9be ret:0x7f0be0b99600
  5456 ms     | 0x9be PK11_DeriveWithFlags()
  5456 ms     | 0x9be basekey:0x7f0be0b98a00
  5456 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5456 ms     | 0x9be ret:0x7f0be0b99680
  5456 ms     | 0x9be PK11_DeriveWithFlags()
  5456 ms     | 0x9be basekey:0x7f0be0b99400
  5456 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5456 ms     | 0x9be ret:0x7f0be0b99680
  5456 ms     | 0x9be PK11_DeriveWithFlags()
  5456 ms     | 0x9be basekey:0x7f0be0b99400
  5456 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5456 ms     | 0x9be ret:0x7f0be0b99700
  5456 ms     | 0x9be PK11_DeriveWithFlags()
  5456 ms     | 0x9be basekey:0x7f0be0b98a00
  5456 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5456 ms     | 0x9be ret:0x7f0be0b98e80
  5456 ms     | 0x9be PK11_Encrypt()
  5456 ms     | 0x9be symkey:0x7f0be0b99600
  5456 ms     | 0x9be PK11_DeriveWithFlags()
  5456 ms     | 0x9be basekey:0x7f0be0b99300
  5456 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5456 ms     | 0x9be ret:0x7f0be0b98e80
  5456 ms     | 0x9be PK11_DeriveWithFlags()
  5456 ms     | 0x9be basekey:0x7f0be0b99300
  5456 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5456 ms     | 0x9be ret:0x7f0be0b99700
  5456 ms     | 0x9be PK11_DeriveWithFlags()
  5456 ms     | 0x9be basekey:0x7f0be0b99000
  5457 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5457 ms     | 0x9be ret:0x7f0be0b99600
  5457 ms     | 0x9be SECKEY_DestroyPrivateKey()
  5457 ms     | 0x9be privk:0x7f0be0bb1020::7f0be0bb1020  40 92 d2 e0                                      @...
  5457 ms     | 0x9be privk:0x7f0be0bb1020::7f0be0bb1020  e5 e5 e5 e5                                      ....
  5457 ms     | 0x9be SECKEY_DestroyPrivateKey()
  5457 ms     | 0x9be privk:0x7f0be0bae820::7f0be0bae820  20 94 d2 e0                                       ...
  5457 ms     | 0x9be privk:0x7f0be0bae820::7f0be0bae820  e5 e5 e5 e5                                      ....
  5457 ms  0x9be SSL_AuthCertificateComplete()
  5457 ms  0x9be fd:0x7f0be0b97610
  5457 ms  0x9be err:0x0
  5457 ms     | 0x9be PK11_DeriveWithFlags()
  5457 ms     | 0x9be basekey:0x7f0be0b99480
  5457 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5457 ms     | 0x9be ret:0x7f0bf4084400
  5457 ms     | 0x9be PK11_DeriveWithFlags()
  5457 ms     | 0x9be basekey:0x7f0be0b99480
  5457 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5457 ms     | 0x9be ret:0x7f0be0b98a00
  5457 ms     | 0x9be PK11_DeriveWithFlags()
  5457 ms     | 0x9be basekey:0x7f0be0b99480
  5457 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5457 ms     | 0x9be ret:0x7f0be0b99000
  5457 ms     | 0x9be PK11_DeriveWithFlags()
  5457 ms     | 0x9be basekey:0x7f0be0b98f80
  5457 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5457 ms     | 0x9be ret:0x7f0be0b99700
  5457 ms     | 0x9be PK11_DeriveWithFlags()
  5457 ms     | 0x9be basekey:0x7f0be0b98f80
  5457 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5457 ms     | 0x9be ret:0x7f0be0b99780
  5457 ms     | 0x9be PK11_DeriveWithFlags()
  5457 ms     | 0x9be basekey:0x7f0be0b98a00
  5457 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5457 ms     | 0x9be ret:0x7f0be0b99780
  5457 ms     | 0x9be PK11_DeriveWithFlags()
  5457 ms     | 0x9be basekey:0x7f0be0b98a00
  5457 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5457 ms     | 0x9be ret:0x7f0be0b99800
  5457 ms     | 0x9be PK11_DeriveWithFlags()
  5457 ms     | 0x9be basekey:0x7f0be0b98f80
  5457 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5457 ms     | 0x9be ret:0x7f0be0b99380
  5457 ms     | 0x9be PK11_Encrypt()
  5457 ms     | 0x9be symkey:0x7f0be0b99700
  5457 ms     | 0x9be PK11_DeriveWithFlags()
  5457 ms     | 0x9be basekey:0x7f0bf4084400
  5457 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5457 ms     | 0x9be ret:0x7f0be0b99380
  5457 ms     | 0x9be PK11_DeriveWithFlags()
  5457 ms     | 0x9be basekey:0x7f0bf4084400
  5457 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5457 ms     | 0x9be ret:0x7f0be0b99800
  5457 ms     | 0x9be PK11_DeriveWithFlags()
  5457 ms     | 0x9be basekey:0x7f0be0b99480
  5457 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5457 ms     | 0x9be ret:0x7f0be0b99700
  5458 ms     | 0x9be SECKEY_DestroyPrivateKey()
  5458 ms     | 0x9be privk:0x7f0be0bb5820::7f0be0bb5820  b0 95 d2 e0                                      ....
  5458 ms     | 0x9be privk:0x7f0be0bb5820::7f0be0bb5820  e5 e5 e5 e5                                      ....
  5458 ms     | 0x9be SECKEY_DestroyPrivateKey()
  5458 ms     | 0x9be privk:0x7f0be0bb3820::7f0be0bb3820  e0 97 d2 e0                                      ....
  5458 ms     | 0x9be privk:0x7f0be0bb3820::7f0be0bb3820  e5 e5 e5 e5                                      ....
  5458 ms  0x9be PK11_Encrypt()
  5458 ms  0x9be symkey:0x7f0be0b98e80
  5458 ms  0x9be PK11_Encrypt()
  5458 ms  0x9be symkey:0x7f0be0b98e80
  5459 ms  0x9be PK11_Encrypt()
  5459 ms  0x9be symkey:0x7f0be0b99380
  5459 ms  0x9be PK11_Encrypt()
  5459 ms  0x9be symkey:0x7f0be0b98e80
  5459 ms  0x9be PK11_Encrypt()
  5459 ms  0x9be symkey:0x7f0be0b98e80
  5459 ms  0x9be PK11_Encrypt()
  5459 ms  0x9be symkey:0x7f0be0b98e80
  5460 ms  0x9be PK11_Derive()
  5460 ms  0x9be basekey:0x7f0be0b98d00
  5460 ms     | 0x9be PK11_DeriveWithTemplate()
  5460 ms  0x9be ret:0x7f0be0b98f80
  5460 ms  0x9be PK11_PubDeriveWithKDF()
  5460 ms  0x9be seckey:0x7f0be0bba020
  5460 ms     | 0x9be EC_ValidatePublicKey()
  5461 ms     | 0x9be ret:0x0
  5463 ms  0x9be ret:0x7f0be0b98d00
  5463 ms  SECKEY_ECParamsToKeySize()
  5463 ms  0x9be ret:0x100
  5463 ms  0x9be PK11_DeriveWithFlags()
  5463 ms  0x9be basekey:0x7f0be0b98f80
  5463 ms     | 0x9be PK11_DeriveWithTemplate()
  5463 ms  0x9be ret:0x7f0be0b99480
  5463 ms  0x9be PK11_Derive()
  5463 ms  0x9be basekey:0x7f0be0b98d00
  5463 ms     | 0x9be PK11_DeriveWithTemplate()
  5463 ms  0x9be ret:0x7f0be0b99800
  5463 ms  0x9be PK11_DeriveWithFlags()
  5463 ms  0x9be basekey:0x7f0be0b99800
  5463 ms     | 0x9be PK11_DeriveWithTemplate()
  5463 ms  0x9be ret:0x7f0be0b98f80
  5463 ms  0x9be PK11_DeriveWithFlags()
  5463 ms  0x9be basekey:0x7f0be0b99800
  5463 ms     | 0x9be PK11_DeriveWithTemplate()
  5463 ms  0x9be ret:0x7f0be0b98d00
  5463 ms  0x9be PK11_DeriveWithFlags()
  5463 ms  0x9be basekey:0x7f0be0b99800
  5463 ms     | 0x9be PK11_DeriveWithTemplate()
  5463 ms  0x9be ret:0x7f0be0b99480
  5463 ms  0x9be PK11_Derive()
  5463 ms  0x9be basekey:0x7f0be0b99a80
  5463 ms     | 0x9be PK11_DeriveWithTemplate()
  5463 ms  0x9be ret:0x7f0be0b99b00
  5463 ms  0x9be PK11_DeriveWithFlags()
  5463 ms  0x9be basekey:0x7f0be0b98d00
  5463 ms     | 0x9be PK11_DeriveWithTemplate()
  5463 ms  0x9be ret:0x7f0be0b99800
  5463 ms  0x9be PK11_DeriveWithFlags()
  5463 ms  0x9be basekey:0x7f0be0b98d00
  5463 ms     | 0x9be PK11_DeriveWithTemplate()
  5463 ms  0x9be ret:0x7f0be0b99480
           /* TID 0xa1e */
  5464 ms  0xa1e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5464 ms  0xa1e ret:0x0
           /* TID 0x9be */
  5464 ms  0x9be PK11_DeriveWithFlags()
  5464 ms  0x9be basekey:0x7f0be0b98d00
  5464 ms     | 0x9be PK11_DeriveWithTemplate()
  5464 ms  0x9be ret:0x7f0be0b99480
  5464 ms  0x9be SSL_AuthCertificateComplete()
  5464 ms  0x9be fd:0x7f0be0b975b0
  5464 ms  0x9be err:0x0
  5464 ms     | 0x9be PK11_DeriveWithFlags()
  5464 ms     | 0x9be basekey:0x7f0be0b99b00
  5464 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5464 ms     | 0x9be ret:0x7f0be0b99480
  5464 ms     | 0x9be PK11_DeriveWithFlags()
  5464 ms     | 0x9be basekey:0x7f0be0b99b00
  5464 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5464 ms     | 0x9be ret:0x7f0be0b99a80
  5464 ms     | 0x9be PK11_DeriveWithFlags()
  5464 ms     | 0x9be basekey:0x7f0be0b99b00
  5464 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5464 ms     | 0x9be ret:0x7f0be0b99c00
  5464 ms     | 0x9be PK11_DeriveWithFlags()
  5464 ms     | 0x9be basekey:0x7f0be0b98f80
  5464 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5464 ms     | 0x9be ret:0x7f0be0b99c80
  5464 ms     | 0x9be PK11_DeriveWithFlags()
  5464 ms     | 0x9be basekey:0x7f0be0b98f80
  5464 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5464 ms     | 0x9be ret:0x7f0be0b99d00
  5464 ms     | 0x9be PK11_DeriveWithFlags()
  5464 ms     | 0x9be basekey:0x7f0be0b99a80
  5464 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5465 ms     | 0x9be ret:0x7f0be0b99d00
  5465 ms     | 0x9be PK11_DeriveWithFlags()
  5465 ms     | 0x9be basekey:0x7f0be0b99a80
  5465 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5465 ms     | 0x9be ret:0x7f0be0b99d80
  5465 ms     | 0x9be PK11_DeriveWithFlags()
  5465 ms     | 0x9be basekey:0x7f0be0b98f80
  5465 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5465 ms     | 0x9be ret:0x7f0be0b99800
  5465 ms     | 0x9be PK11_Encrypt()
  5465 ms     | 0x9be symkey:0x7f0be0b99c80
  5465 ms     | 0x9be PK11_DeriveWithFlags()
  5465 ms     | 0x9be basekey:0x7f0be0b99480
  5465 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5465 ms     | 0x9be ret:0x7f0be0b99800
  5465 ms     | 0x9be PK11_DeriveWithFlags()
  5465 ms     | 0x9be basekey:0x7f0be0b99480
  5465 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5465 ms     | 0x9be ret:0x7f0be0b99d80
  5465 ms     | 0x9be PK11_DeriveWithFlags()
  5465 ms     | 0x9be basekey:0x7f0be0b99b00
  5465 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5465 ms     | 0x9be ret:0x7f0be0b99c80
  5465 ms     | 0x9be SECKEY_DestroyPrivateKey()
  5465 ms     | 0x9be privk:0x7f0be0bba020::7f0be0bba020  80 9d d2 e0                                      ....
  5465 ms     | 0x9be privk:0x7f0be0bba020::7f0be0bba020  e5 e5 e5 e5                                      ....
  5465 ms     | 0x9be SECKEY_DestroyPrivateKey()
  5465 ms     | 0x9be privk:0x7f0be0bb8020::7f0be0bb8020  a0 9b d2 e0                                      ....
  5465 ms     | 0x9be privk:0x7f0be0bb8020::7f0be0bb8020  e5 e5 e5 e5                                      ....
  5465 ms  0x9be PK11_Encrypt()
  5465 ms  0x9be symkey:0x7f0be0b99800
  5465 ms  0x9be PK11_Derive()
  5465 ms  0x9be basekey:0x7f0be0b98d00
  5465 ms     | 0x9be PK11_DeriveWithTemplate()
  5466 ms  0x9be ret:0x7f0be0b98f80
  5466 ms  0x9be PK11_PubDeriveWithKDF()
  5466 ms  0x9be seckey:0x7f0be0bbe820
  5466 ms     | 0x9be EC_ValidatePublicKey()
  5467 ms     | 0x9be ret:0x0
  5468 ms  0x9be ret:0x7f0be0b98d00
  5468 ms  SECKEY_ECParamsToKeySize()
  5469 ms  0x9be ret:0x100
  5469 ms  0x9be PK11_DeriveWithFlags()
  5469 ms  0x9be basekey:0x7f0be0b98f80
  5469 ms     | 0x9be PK11_DeriveWithTemplate()
  5469 ms  0x9be ret:0x7f0be0b99b00
  5469 ms  0x9be PK11_Derive()
  5469 ms  0x9be basekey:0x7f0be0b98d00
  5469 ms     | 0x9be PK11_DeriveWithTemplate()
  5469 ms  0x9be ret:0x7f0be0b99d80
  5469 ms  0x9be PK11_DeriveWithFlags()
  5469 ms  0x9be basekey:0x7f0be0b99d80
  5469 ms     | 0x9be PK11_DeriveWithTemplate()
  5469 ms  0x9be ret:0x7f0be0b98f80
  5469 ms  0x9be PK11_DeriveWithFlags()
  5469 ms  0x9be basekey:0x7f0be0b99d80
  5469 ms     | 0x9be PK11_DeriveWithTemplate()
  5469 ms  0x9be ret:0x7f0be0b98d00
  5469 ms  0x9be PK11_DeriveWithFlags()
  5469 ms  0x9be basekey:0x7f0be0b99d80
  5469 ms     | 0x9be PK11_DeriveWithTemplate()
  5469 ms  0x9be ret:0x7f0be0b99b00
  5469 ms  0x9be PK11_Derive()
  5469 ms  0x9be basekey:0x7f0be0b99e00
  5469 ms     | 0x9be PK11_DeriveWithTemplate()
  5469 ms  0x9be ret:0x7f0be0b99e80
  5469 ms  0x9be PK11_DeriveWithFlags()
  5469 ms  0x9be basekey:0x7f0be0b98d00
  5469 ms     | 0x9be PK11_DeriveWithTemplate()
  5469 ms  0x9be ret:0x7f0be0b99d80
  5469 ms  0x9be PK11_DeriveWithFlags()
  5469 ms  0x9be basekey:0x7f0be0b98d00
  5469 ms     | 0x9be PK11_DeriveWithTemplate()
  5469 ms  0x9be ret:0x7f0be0b99b00
           /* TID 0xa1e */
  5470 ms  0xa1e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5470 ms  0xa1e ret:0x0
           /* TID 0x9be */
  5470 ms  0x9be PK11_DeriveWithFlags()
  5470 ms  0x9be basekey:0x7f0be0b98d00
  5470 ms     | 0x9be PK11_DeriveWithTemplate()
  5470 ms  0x9be ret:0x7f0be0b99b00
  5470 ms  0x9be PK11_Encrypt()
  5470 ms  0x9be symkey:0x7f0be0b98e80
  5470 ms  0x9be SSL_AuthCertificateComplete()
  5470 ms  0x9be fd:0x7f0be0b97430
  5470 ms  0x9be err:0x0
  5470 ms     | 0x9be PK11_DeriveWithFlags()
  5470 ms     | 0x9be basekey:0x7f0be0b99e80
  5470 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5470 ms     | 0x9be ret:0x7f0be0b99b00
  5470 ms     | 0x9be PK11_DeriveWithFlags()
  5470 ms     | 0x9be basekey:0x7f0be0b99e80
  5470 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5470 ms     | 0x9be ret:0x7f0be0b99e00
  5470 ms     | 0x9be PK11_DeriveWithFlags()
  5470 ms     | 0x9be basekey:0x7f0be0b99e80
  5470 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5471 ms     | 0x9be ret:0x7f0be0b99f80
  5471 ms     | 0x9be PK11_DeriveWithFlags()
  5471 ms     | 0x9be basekey:0x7f0be0b98f80
  5471 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5471 ms     | 0x9be ret:0x7f0be0d97180
  5471 ms     | 0x9be PK11_DeriveWithFlags()
  5471 ms     | 0x9be basekey:0x7f0be0b98f80
  5471 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5471 ms     | 0x9be ret:0x7f0bfaccb880
  5471 ms     | 0x9be PK11_DeriveWithFlags()
  5471 ms     | 0x9be basekey:0x7f0be0b99e00
  5471 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5471 ms     | 0x9be ret:0x7f0bfaccb880
  5471 ms     | 0x9be PK11_DeriveWithFlags()
  5471 ms     | 0x9be basekey:0x7f0be0b99e00
  5471 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5471 ms     | 0x9be ret:0x7f0be0eed080
  5471 ms     | 0x9be PK11_DeriveWithFlags()
  5471 ms     | 0x9be basekey:0x7f0be0b98f80
  5471 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5471 ms     | 0x9be ret:0x7f0be0b99d80
  5471 ms     | 0x9be PK11_Encrypt()
  5471 ms     | 0x9be symkey:0x7f0be0d97180
  5471 ms     | 0x9be PK11_DeriveWithFlags()
  5471 ms     | 0x9be basekey:0x7f0be0b99b00
  5471 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5471 ms     | 0x9be ret:0x7f0be0b99d80
  5471 ms     | 0x9be PK11_DeriveWithFlags()
  5471 ms     | 0x9be basekey:0x7f0be0b99b00
  5471 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5471 ms     | 0x9be ret:0x7f0be0eed080
  5471 ms     | 0x9be PK11_DeriveWithFlags()
  5471 ms     | 0x9be basekey:0x7f0be0b99e80
  5471 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5471 ms     | 0x9be ret:0x7f0be0d97180
  5471 ms     | 0x9be SECKEY_DestroyPrivateKey()
  5471 ms     | 0x9be privk:0x7f0be0bbe820::7f0be0bbe820  80 9d d7 e0                                      ....
  5471 ms     | 0x9be privk:0x7f0be0bbe820::7f0be0bbe820  e5 e5 e5 e5                                      ....
  5471 ms     | 0x9be SECKEY_DestroyPrivateKey()
  5471 ms     | 0x9be privk:0x7f0be0bbc820::7f0be0bbc820  c0 9e d2 e0                                      ....
  5471 ms     | 0x9be privk:0x7f0be0bbc820::7f0be0bbc820  e5 e5 e5 e5                                      ....
  5471 ms  0x9be PK11_Encrypt()
  5471 ms  0x9be symkey:0x7f0be0b99d80
  5472 ms  0x9be PK11_Derive()
  5472 ms  0x9be basekey:0x7f0be0b98d00
  5472 ms     | 0x9be PK11_DeriveWithTemplate()
  5472 ms  0x9be ret:0x7f0be0b98f80
  5472 ms  0x9be PK11_PubDeriveWithKDF()
  5472 ms  0x9be seckey:0x7f0be0bc3020
  5472 ms     | 0x9be EC_ValidatePublicKey()
  5473 ms     | 0x9be ret:0x0
  5475 ms  0x9be ret:0x7f0be0b98d00
  5475 ms  SECKEY_ECParamsToKeySize()
  5475 ms  0x9be ret:0x100
  5475 ms  0x9be PK11_DeriveWithFlags()
  5475 ms  0x9be basekey:0x7f0be0b98f80
  5475 ms     | 0x9be PK11_DeriveWithTemplate()
  5475 ms  0x9be ret:0x7f0be0b99e80
  5475 ms  0x9be PK11_Derive()
  5475 ms  0x9be basekey:0x7f0be0b98d00
  5475 ms     | 0x9be PK11_DeriveWithTemplate()
  5475 ms  0x9be ret:0x7f0be0eed080
  5475 ms  0x9be PK11_DeriveWithFlags()
  5475 ms  0x9be basekey:0x7f0be0eed080
  5475 ms     | 0x9be PK11_DeriveWithTemplate()
  5475 ms  0x9be ret:0x7f0be0b98f80
  5475 ms  0x9be PK11_DeriveWithFlags()
  5475 ms  0x9be basekey:0x7f0be0eed080
  5475 ms     | 0x9be PK11_DeriveWithTemplate()
  5475 ms  0x9be ret:0x7f0be0b98d00
  5475 ms  0x9be PK11_DeriveWithFlags()
  5475 ms  0x9be basekey:0x7f0be0eed080
  5475 ms     | 0x9be PK11_DeriveWithTemplate()
  5475 ms  0x9be ret:0x7f0be0b99e80
  5475 ms  0x9be PK11_Derive()
  5475 ms  0x9be basekey:0x7f0be0eed100
  5475 ms     | 0x9be PK11_DeriveWithTemplate()
  5475 ms  0x9be ret:0x7f0be0eed180
  5475 ms  0x9be PK11_DeriveWithFlags()
  5475 ms  0x9be basekey:0x7f0be0b98d00
  5475 ms     | 0x9be PK11_DeriveWithTemplate()
  5475 ms  0x9be ret:0x7f0be0eed080
  5475 ms  0x9be PK11_DeriveWithFlags()
  5475 ms  0x9be basekey:0x7f0be0b98d00
  5475 ms     | 0x9be PK11_DeriveWithTemplate()
  5475 ms  0x9be ret:0x7f0be0b99e80
           /* TID 0xa1e */
  5475 ms  0xa1e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5476 ms  0xa1e ret:0x0
           /* TID 0x9be */
  5476 ms  0x9be PK11_DeriveWithFlags()
  5476 ms  0x9be basekey:0x7f0be0b98d00
  5476 ms     | 0x9be PK11_DeriveWithTemplate()
  5476 ms  0x9be ret:0x7f0be0b99e80
  5476 ms  0x9be PK11_Encrypt()
  5476 ms  0x9be symkey:0x7f0be0b98e80
  5476 ms  0x9be PK11_Encrypt()
  5476 ms  0x9be symkey:0x7f0be0b98e80
  5476 ms  0x9be SSL_AuthCertificateComplete()
  5476 ms  0x9be fd:0x7f0be0b973d0
  5476 ms  0x9be err:0x0
  5476 ms     | 0x9be PK11_DeriveWithFlags()
  5476 ms     | 0x9be basekey:0x7f0be0eed180
  5476 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5476 ms     | 0x9be ret:0x7f0be0b99e80
  5477 ms     | 0x9be PK11_DeriveWithFlags()
  5477 ms     | 0x9be basekey:0x7f0be0eed180
  5477 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5477 ms     | 0x9be ret:0x7f0be0eed100
  5477 ms     | 0x9be PK11_DeriveWithFlags()
  5477 ms     | 0x9be basekey:0x7f0be0eed180
  5477 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5477 ms     | 0x9be ret:0x7f0be0eed280
  5477 ms     | 0x9be PK11_DeriveWithFlags()
  5477 ms     | 0x9be basekey:0x7f0be0b98f80
  5477 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5477 ms     | 0x9be ret:0x7f0be0eed300
  5477 ms     | 0x9be PK11_DeriveWithFlags()
  5477 ms     | 0x9be basekey:0x7f0be0b98f80
  5477 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5477 ms     | 0x9be ret:0x7f0be0eed380
  5477 ms     | 0x9be PK11_DeriveWithFlags()
  5477 ms     | 0x9be basekey:0x7f0be0eed100
  5477 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5477 ms     | 0x9be ret:0x7f0be0eed380
  5477 ms     | 0x9be PK11_DeriveWithFlags()
  5477 ms     | 0x9be basekey:0x7f0be0eed100
  5477 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5477 ms     | 0x9be ret:0x7f0be0eed400
  5477 ms     | 0x9be PK11_DeriveWithFlags()
  5477 ms     | 0x9be basekey:0x7f0be0b98f80
  5477 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5477 ms     | 0x9be ret:0x7f0be0eed080
  5477 ms     | 0x9be PK11_Encrypt()
  5477 ms     | 0x9be symkey:0x7f0be0eed300
  5477 ms     | 0x9be PK11_DeriveWithFlags()
  5477 ms     | 0x9be basekey:0x7f0be0b99e80
  5477 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5477 ms     | 0x9be ret:0x7f0be0eed080
  5477 ms     | 0x9be PK11_DeriveWithFlags()
  5477 ms     | 0x9be basekey:0x7f0be0b99e80
  5477 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5477 ms     | 0x9be ret:0x7f0be0eed400
  5477 ms     | 0x9be PK11_DeriveWithFlags()
  5477 ms     | 0x9be basekey:0x7f0be0eed180
  5477 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5477 ms     | 0x9be ret:0x7f0be0eed300
  5477 ms     | 0x9be SECKEY_DestroyPrivateKey()
  5477 ms     | 0x9be privk:0x7f0be0bc3020::7f0be0bc3020  f0 f1 e7 e0                                      ....
  5477 ms     | 0x9be privk:0x7f0be0bc3020::7f0be0bc3020  e5 e5 e5 e5                                      ....
  5477 ms     | 0x9be SECKEY_DestroyPrivateKey()
  5477 ms     | 0x9be privk:0x7f0be0bc1020::7f0be0bc1020  a0 36 26 f8                                      .6&.
  5477 ms     | 0x9be privk:0x7f0be0bc1020::7f0be0bc1020  e5 e5 e5 e5                                      ....
  5478 ms  0x9be PK11_Encrypt()
  5478 ms  0x9be symkey:0x7f0be0eed080
  5478 ms  0x9be PK11_Encrypt()
  5478 ms  0x9be symkey:0x7f0be0b98e80
  5490 ms  0x9be PK11_DeriveWithFlags()
  5490 ms  0x9be basekey:0x7f0be0b99c80
  5490 ms     | 0x9be PK11_DeriveWithTemplate()
  5490 ms  0x9be ret:0x7f0be0b98d00
  5490 ms  0x9be PK11_DeriveWithFlags()
  5490 ms  0x9be basekey:0x7f0be0b99c80
  5490 ms     | 0x9be PK11_DeriveWithTemplate()
  5490 ms  0x9be ret:0x7f0be0b98d00
  5490 ms  0x9be PK11_DeriveWithFlags()
  5490 ms  0x9be basekey:0x7f0be0b99600
  5490 ms     | 0x9be PK11_DeriveWithTemplate()
  5490 ms  0x9be ret:0x7f0be0b98d00
  5490 ms  0x9be PK11_DeriveWithFlags()
  5490 ms  0x9be basekey:0x7f0be0b99600
  5490 ms     | 0x9be PK11_DeriveWithTemplate()
  5490 ms  0x9be ret:0x7f0be0b98d00
  5490 ms  0x9be PK11_Encrypt()
  5490 ms  0x9be symkey:0x7f0be0b98e80
  5490 ms  0x9be PK11_DeriveWithFlags()
  5490 ms  0x9be basekey:0x7f0be0b99700
  5491 ms     | 0x9be PK11_DeriveWithTemplate()
  5491 ms  0x9be ret:0x7f0be0b98d00
  5491 ms  0x9be PK11_DeriveWithFlags()
  5491 ms  0x9be basekey:0x7f0be0b99700
  5491 ms     | 0x9be PK11_DeriveWithTemplate()
  5491 ms  0x9be ret:0x7f0be0b98d00
  5491 ms  0x9be PR_Close()
  5491 ms  0x9be fd:0x7f0be0b97610
  5491 ms     | 0x9be PK11_Encrypt()
  5491 ms     | 0x9be symkey:0x7f0be0b99380
  5491 ms  0x9be PR_Close()
  5491 ms  0x9be fd:0x7f0be0b975b0
  5491 ms     | 0x9be PK11_Encrypt()
  5491 ms     | 0x9be symkey:0x7f0be0b99800
  5496 ms  0x9be PK11_DeriveWithFlags()
  5496 ms  0x9be basekey:0x7f0be0d97180
  5496 ms     | 0x9be PK11_DeriveWithTemplate()
  5496 ms  0x9be ret:0x7f0be0b99c00
  5496 ms  0x9be PK11_DeriveWithFlags()
  5496 ms  0x9be basekey:0x7f0be0d97180
  5497 ms     | 0x9be PK11_DeriveWithTemplate()
  5497 ms  0x9be ret:0x7f0be0b99c00
  5497 ms  0x9be PR_Close()
  5497 ms  0x9be fd:0x7f0be0b97430
  5497 ms     | 0x9be PK11_Encrypt()
  5497 ms     | 0x9be symkey:0x7f0be0b99d80
  5502 ms  0x9be PK11_DeriveWithFlags()
  5502 ms  0x9be basekey:0x7f0be0eed300
  5502 ms     | 0x9be PK11_DeriveWithTemplate()
  5502 ms  0x9be ret:0x7f0be0b99f80
  5502 ms  0x9be PK11_DeriveWithFlags()
  5502 ms  0x9be basekey:0x7f0be0eed300
  5502 ms     | 0x9be PK11_DeriveWithTemplate()
  5502 ms  0x9be ret:0x7f0be0b99f80
  5503 ms  0x9be PR_Close()
  5503 ms  0x9be fd:0x7f0be0b973d0
  5503 ms     | 0x9be PK11_Encrypt()
  5503 ms     | 0x9be symkey:0x7f0be0eed080
           /* TID 0x9c6 */
  5512 ms  0x9c6 PR_Close()
  5512 ms  0x9c6 fd:0x7f0be0b5f910
  5539 ms  0x9c6 PR_Close()
  5539 ms  0x9c6 fd:0x7f0be0b5f910
  5544 ms  0x9c6 PR_Close()
  5544 ms  0x9c6 fd:0x7f0be0b0c460
  5545 ms  0x9c6 PR_Close()
  5545 ms  0x9c6 fd:0x7f0be0b0c460
  5561 ms  0x9c6 PR_Close()
  5561 ms  0x9c6 fd:0x7f0be0b5f910
  5562 ms  0x9c6 PR_Close()
  5562 ms  0x9c6 fd:0x7f0be0b5f820
  5563 ms  0x9c6 PR_Close()
  5563 ms  0x9c6 fd:0x7f0be0b5f820
  5564 ms  0x9c6 PR_Close()
  5564 ms  0x9c6 fd:0x7f0be0b5f820
           /* TID 0x9be */
  5590 ms  0x9be PK11_Encrypt()
  5590 ms  0x9be symkey:0x7f0be0b98e80
           /* TID 0x9c6 */
  5617 ms  0x9c6 PR_Close()
  5617 ms  0x9c6 fd:0x7f0be0b979d0
           /* TID 0x9be */
  5624 ms  0x9be PK11_Encrypt()
  5624 ms  0x9be symkey:0x7f0be0b98e80
  5625 ms  0x9be PK11_Encrypt()
  5625 ms  0x9be symkey:0x7f0be0b98e80
  5635 ms  0x9be PK11_Encrypt()
  5635 ms  0x9be symkey:0x7f0be0b98e80
           /* TID 0x9c6 */
  5653 ms  0x9c6 PR_Close()
  5653 ms  0x9c6 fd:0x7f0be0b97a30
  5679 ms  0x9c6 PR_Close()
  5679 ms  0x9c6 fd:0x7f0be0d5cb80
  5680 ms  0x9c6 PR_Close()
  5680 ms  0x9c6 fd:0x7f0bfc962400
           /* TID 0x9be */
  5695 ms  0x9be SSL_ImportFD()
  5695 ms  0x9be ret:0x7f0be0e64b80
  5695 ms  0x9be SSL_AuthCertificateHook()
  5695 ms  0x9be fd:0x7f0be0e64b80
  5695 ms  0x9be ret:0x0
  5695 ms  0x9be PR_Connect()
  5695 ms  0x9be fd:0x7f0be0e64b80
  5695 ms  0x9be SSL_ImportFD()
  5695 ms  0x9be ret:0x7f0be093c5e0
  5695 ms  0x9be SSL_AuthCertificateHook()
  5695 ms  0x9be fd:0x7f0be093c5e0
  5695 ms  0x9be ret:0x0
  5695 ms  0x9be PR_Connect()
  5695 ms  0x9be fd:0x7f0be093c5e0
  5695 ms  0x9be SSL_ImportFD()
  5695 ms  0x9be ret:0x7f0be093cbe0
  5695 ms  0x9be SSL_AuthCertificateHook()
  5695 ms  0x9be fd:0x7f0be093cbe0
  5695 ms  0x9be ret:0x0
  5696 ms  0x9be PR_Connect()
  5696 ms  0x9be fd:0x7f0be093cbe0
  5696 ms  0x9be SSL_ImportFD()
  5696 ms  0x9be ret:0x7f0be093ccd0
  5696 ms  0x9be SSL_AuthCertificateHook()
  5696 ms  0x9be fd:0x7f0be093ccd0
  5696 ms  0x9be ret:0x0
  5696 ms  0x9be PR_Connect()
  5696 ms  0x9be fd:0x7f0be093ccd0
  5696 ms  0x9be SSL_ImportFD()
  5696 ms  0x9be ret:0x7f0be093cd90
  5696 ms  0x9be SSL_AuthCertificateHook()
  5696 ms  0x9be fd:0x7f0be093cd90
  5696 ms  0x9be ret:0x0
  5696 ms  0x9be PR_Connect()
  5696 ms  0x9be fd:0x7f0be093cd90
  5696 ms  0x9be SSL_ImportFD()
  5696 ms  0x9be ret:0x7f0be093ce50
  5696 ms  0x9be SSL_AuthCertificateHook()
  5696 ms  0x9be fd:0x7f0be093ce50
  5696 ms  0x9be ret:0x0
  5696 ms  0x9be PR_Connect()
  5696 ms  0x9be fd:0x7f0be093ce50
  5696 ms  0x9be SSL_ImportFD()
  5697 ms  0x9be ret:0x7f0be097c100
  5697 ms  0x9be SSL_AuthCertificateHook()
  5697 ms  0x9be fd:0x7f0be097c100
  5697 ms  0x9be ret:0x0
  5697 ms  0x9be PR_Connect()
  5697 ms  0x9be fd:0x7f0be097c100
  5697 ms  0x9be SSL_ImportFD()
  5697 ms  0x9be ret:0x7f0be093cfd0
  5697 ms  0x9be SSL_AuthCertificateHook()
  5697 ms  0x9be fd:0x7f0be093cfd0
  5697 ms  0x9be ret:0x0
  5697 ms  0x9be PR_Connect()
  5697 ms  0x9be fd:0x7f0be093cfd0
  5697 ms  0x9be SSL_ImportFD()
  5697 ms  0x9be ret:0x7f0be097c070
  5697 ms  0x9be SSL_AuthCertificateHook()
  5697 ms  0x9be fd:0x7f0be097c070
  5697 ms  0x9be ret:0x0
  5697 ms  0x9be PR_Connect()
  5697 ms  0x9be fd:0x7f0be097c070
  5722 ms  0x9be SECKEY_CreateECPrivateKey()
  5722 ms  0x9be cx:0x7f0bf1cc8948
  5722 ms     | 0x9be EC_ValidatePublicKey()
  5722 ms     | 0x9be ret:0x0
  5722 ms  0x9be ret:0x7f0be0eab820::7f0be0eab820  60 10 9b e0                                      `...
  5723 ms  0x9be SECKEY_CreateECPrivateKey()
  5723 ms  0x9be cx:0x7f0bf1cc8948
  5723 ms     | 0x9be EC_ValidatePublicKey()
  5725 ms     | 0x9be ret:0x0
  5725 ms  0x9be ret:0x7f0be0ead820::7f0be0ead820  40 12 9b e0                                      @...
  5725 ms  0x9be SECKEY_CreateECPrivateKey()
  5725 ms  0x9be cx:0x7f0bf1cc87a8
  5725 ms     | 0x9be EC_ValidatePublicKey()
  5725 ms     | 0x9be ret:0x0
  5725 ms  0x9be ret:0x7f0be0eb0020::7f0be0eb0020  d0 13 9b e0                                      ....
  5727 ms  0x9be SECKEY_CreateECPrivateKey()
  5727 ms  0x9be cx:0x7f0bf1cc87a8
  5727 ms     | 0x9be EC_ValidatePublicKey()
  5729 ms     | 0x9be ret:0x0
  5729 ms  0x9be ret:0x7f0bf40d9020::7f0bf40d9020  10 15 9b e0                                      ....
  5738 ms  0x9be SSL_ImportFD()
  5738 ms  0x9be ret:0x7f0be097ccd0
  5738 ms  0x9be SSL_AuthCertificateHook()
  5738 ms  0x9be fd:0x7f0be097ccd0
  5738 ms  0x9be ret:0x0
  5738 ms  0x9be PR_Connect()
  5738 ms  0x9be fd:0x7f0be097ccd0
  5738 ms  0x9be SECKEY_CreateECPrivateKey()
  5738 ms  0x9be cx:0x7f0bf1cc8608
  5739 ms     | 0x9be EC_ValidatePublicKey()
  5739 ms     | 0x9be ret:0x0
  5739 ms  0x9be ret:0x7f0be09c3820::7f0be09c3820  10 1a 9b e0                                      ....
  5739 ms  0x9be SECKEY_CreateECPrivateKey()
  5739 ms  0x9be cx:0x7f0bf1cc8608
  5739 ms     | 0x9be EC_ValidatePublicKey()
  5741 ms     | 0x9be ret:0x0
  5741 ms  0x9be ret:0x7f0be09c5820::7f0be09c5820  f0 1b 9b e0                                      ....
  5747 ms  0x9be SECKEY_CreateECPrivateKey()
  5747 ms  0x9be cx:0x7f0bf1cc8468
  5748 ms     | 0x9be EC_ValidatePublicKey()
  5748 ms     | 0x9be ret:0x0
  5748 ms  0x9be ret:0x7f0be09c8820::7f0be09c8820  80 1d 9b e0                                      ....
  5748 ms  0x9be SECKEY_CreateECPrivateKey()
  5748 ms  0x9be cx:0x7f0bf1cc8468
  5748 ms     | 0x9be EC_ValidatePublicKey()
  5750 ms     | 0x9be ret:0x0
  5750 ms  0x9be ret:0x7f0be09ca820::7f0be09ca820  60 1f 9b e0                                      `...
  5750 ms  0x9be SECKEY_CreateECPrivateKey()
  5750 ms  0x9be cx:0x7f0bf1cc7f88
  5751 ms     | 0x9be EC_ValidatePublicKey()
  5751 ms     | 0x9be ret:0x0
  5751 ms  0x9be ret:0x7f0be09cd020::7f0be09cd020  c0 e9 b5 e0                                      ....
  5751 ms  0x9be SECKEY_CreateECPrivateKey()
  5751 ms  0x9be cx:0x7f0bf1cc7f88
  5752 ms     | 0x9be EC_ValidatePublicKey()
  5753 ms     | 0x9be ret:0x0
  5753 ms  0x9be ret:0x7f0be09cf020::7f0be09cf020  70 9e d2 e0                                      p...
  5755 ms  0x9be SECKEY_CreateECPrivateKey()
  5755 ms  0x9be cx:0x7f0bf1cc7de8
  5756 ms     | 0x9be EC_ValidatePublicKey()
  5756 ms     | 0x9be ret:0x0
  5756 ms  0x9be ret:0x7f0be09d1820::7f0be09d1820  b0 90 60 e0                                      ..`.
  5756 ms  0x9be SECKEY_CreateECPrivateKey()
  5756 ms  0x9be cx:0x7f0bf1cc7de8
  5757 ms     | 0x9be EC_ValidatePublicKey()
  5758 ms     | 0x9be ret:0x0
  5758 ms  0x9be ret:0x7f0be09d3820::7f0be09d3820  90 92 60 e0                                      ..`.
  5759 ms  0x9be SECKEY_CreateECPrivateKey()
  5759 ms  0x9be cx:0x7f0bf1cc7908
  5759 ms     | 0x9be EC_ValidatePublicKey()
  5759 ms     | 0x9be ret:0x0
  5759 ms  0x9be ret:0x7f0be09d6020::7f0be09d6020  d0 93 60 e0                                      ..`.
  5759 ms  0x9be SECKEY_CreateECPrivateKey()
  5759 ms  0x9be cx:0x7f0bf1cc7908
  5760 ms     | 0x9be EC_ValidatePublicKey()
  5770 ms     | 0x9be ret:0x0
  5771 ms  0x9be ret:0x7f0be09d8020::7f0be09d8020  b0 95 60 e0                                      ..`.
  5771 ms  0x9be SECKEY_CreateECPrivateKey()
  5771 ms  0x9be cx:0x7f0bf1cc75c8
  5772 ms     | 0x9be EC_ValidatePublicKey()
  5772 ms     | 0x9be ret:0x0
  5772 ms  0x9be ret:0x7f0be09da820::7f0be09da820  f0 96 60 e0                                      ..`.
  5772 ms  0x9be SECKEY_CreateECPrivateKey()
  5772 ms  0x9be cx:0x7f0bf1cc75c8
  5772 ms     | 0x9be EC_ValidatePublicKey()
  5774 ms     | 0x9be ret:0x0
  5774 ms  0x9be ret:0x7f0be09dc820::7f0be09dc820  d0 98 60 e0                                      ..`.
  5774 ms  0x9be SECKEY_CreateECPrivateKey()
  5774 ms  0x9be cx:0x7f0bf1cc8ae8
  5775 ms     | 0x9be EC_ValidatePublicKey()
  5775 ms     | 0x9be ret:0x0
  5775 ms  0x9be ret:0x7f0be09df020::7f0be09df020  10 9a 60 e0                                      ..`.
  5775 ms  0x9be SECKEY_CreateECPrivateKey()
  5775 ms  0x9be cx:0x7f0bf1cc8ae8
  5775 ms     | 0x9be EC_ValidatePublicKey()
  5777 ms     | 0x9be ret:0x0
  5777 ms  0x9be ret:0x7f0c01a09020::7f0c01a09020  f0 9b 60 e0                                      ..`.
  5781 ms  0x9be PK11_Encrypt()
  5781 ms  0x9be symkey:0x7f0be0b98e80
  5781 ms  0x9be PK11_Derive()
  5781 ms  0x9be basekey:0x7f0be0eed280
  5781 ms     | 0x9be PK11_DeriveWithTemplate()
  5781 ms  0x9be ret:0x7f0be0eed100
  5781 ms  0x9be PK11_PubDeriveWithKDF()
  5781 ms  0x9be seckey:0x7f0be0ead820
  5781 ms     | 0x9be EC_ValidatePublicKey()
  5783 ms     | 0x9be ret:0x0
  5784 ms  0x9be ret:0x7f0be0eed280
  5784 ms  SECKEY_ECParamsToKeySize()
  5784 ms  0x9be ret:0x100
  5784 ms  0x9be PK11_DeriveWithFlags()
  5784 ms  0x9be basekey:0x7f0be0eed100
  5784 ms     | 0x9be PK11_DeriveWithTemplate()
  5785 ms  0x9be ret:0x7f0be0b99e80
  5785 ms  0x9be PK11_Derive()
  5785 ms  0x9be basekey:0x7f0be0eed280
  5785 ms     | 0x9be PK11_DeriveWithTemplate()
  5785 ms  0x9be ret:0x7f0be0eed300
  5785 ms  0x9be PK11_DeriveWithFlags()
  5785 ms  0x9be basekey:0x7f0be0eed300
  5785 ms     | 0x9be PK11_DeriveWithTemplate()
  5785 ms  0x9be ret:0x7f0be0eed100
  5785 ms  0x9be PK11_DeriveWithFlags()
  5785 ms  0x9be basekey:0x7f0be0eed300
  5785 ms     | 0x9be PK11_DeriveWithTemplate()
  5785 ms  0x9be ret:0x7f0be0eed280
  5785 ms  0x9be PK11_DeriveWithFlags()
  5785 ms  0x9be basekey:0x7f0be0eed300
  5785 ms     | 0x9be PK11_DeriveWithTemplate()
  5785 ms  0x9be ret:0x7f0be0b99e80
  5785 ms  0x9be PK11_Derive()
  5785 ms  0x9be basekey:0x7f0be0eed380
  5785 ms     | 0x9be PK11_DeriveWithTemplate()
  5785 ms  0x9be ret:0x7f0be0eed080
  5785 ms  0x9be PK11_DeriveWithFlags()
  5785 ms  0x9be basekey:0x7f0be0eed280
  5785 ms     | 0x9be PK11_DeriveWithTemplate()
  5785 ms  0x9be ret:0x7f0be0eed300
  5785 ms  0x9be PK11_DeriveWithFlags()
  5785 ms  0x9be basekey:0x7f0be0eed280
  5785 ms     | 0x9be PK11_DeriveWithTemplate()
  5785 ms  0x9be ret:0x7f0be0b99e80
           /* TID 0xa1e */
  5794 ms  0xa1e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5794 ms  0xa1e ret:0x0
           /* TID 0x9be */
  5795 ms  0x9be PK11_DeriveWithFlags()
  5795 ms  0x9be basekey:0x7f0be0eed280
  5795 ms     | 0x9be PK11_DeriveWithTemplate()
  5795 ms  0x9be ret:0x7f0be0b99e80
  5795 ms  0x9be PK11_Derive()
  5795 ms  0x9be basekey:0x7f0be0b99e80
  5795 ms     | 0x9be PK11_DeriveWithTemplate()
  5795 ms  0x9be ret:0x7f0be0eed380
  5795 ms  0x9be PK11_PubDeriveWithKDF()
  5795 ms  0x9be seckey:0x7f0bf40d9020
  5795 ms     | 0x9be EC_ValidatePublicKey()
  5797 ms     | 0x9be ret:0x0
  5798 ms  0x9be ret:0x7f0be0b99e80
  5798 ms  SECKEY_ECParamsToKeySize()
  5799 ms  0x9be ret:0x100
  5799 ms  0x9be PK11_DeriveWithFlags()
  5799 ms  0x9be basekey:0x7f0be0eed380
  5799 ms     | 0x9be PK11_DeriveWithTemplate()
  5799 ms  0x9be ret:0x7f0be0b99f80
  5799 ms  0x9be PK11_Derive()
  5799 ms  0x9be basekey:0x7f0be0b99e80
  5799 ms     | 0x9be PK11_DeriveWithTemplate()
  5799 ms  0x9be ret:0x7f0be0b99e00
  5799 ms  0x9be PK11_DeriveWithFlags()
  5799 ms  0x9be basekey:0x7f0be0b99e00
  5799 ms     | 0x9be PK11_DeriveWithTemplate()
  5799 ms  0x9be ret:0x7f0be0eed380
  5799 ms  0x9be PK11_DeriveWithFlags()
  5799 ms  0x9be basekey:0x7f0be0b99e00
  5799 ms     | 0x9be PK11_DeriveWithTemplate()
  5799 ms  0x9be ret:0x7f0be0b99e80
  5799 ms  0x9be PK11_DeriveWithFlags()
  5799 ms  0x9be basekey:0x7f0be0b99e00
  5799 ms     | 0x9be PK11_DeriveWithTemplate()
  5799 ms  0x9be ret:0x7f0be0b99f80
  5799 ms  0x9be PK11_Derive()
  5799 ms  0x9be basekey:0x7f0be0b99b00
  5799 ms     | 0x9be PK11_DeriveWithTemplate()
  5799 ms  0x9be ret:0x7f0be0d97180
  5799 ms  0x9be PK11_DeriveWithFlags()
  5799 ms  0x9be basekey:0x7f0be0b99e80
  5799 ms     | 0x9be PK11_DeriveWithTemplate()
  5799 ms  0x9be ret:0x7f0be0b99e00
  5799 ms  0x9be PK11_DeriveWithFlags()
  5799 ms  0x9be basekey:0x7f0be0b99e80
  5799 ms     | 0x9be PK11_DeriveWithTemplate()
  5799 ms  0x9be ret:0x7f0be0b99f80
           /* TID 0xa1e */
  5802 ms  0xa1e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5802 ms  0xa1e ret:0x0
           /* TID 0x9be */
  5803 ms  0x9be PK11_DeriveWithFlags()
  5803 ms  0x9be basekey:0x7f0be0b99e80
  5803 ms     | 0x9be PK11_DeriveWithTemplate()
  5803 ms  0x9be ret:0x7f0be0b99f80
  5803 ms  0x9be SSL_ImportFD()
  5803 ms  0x9be ret:0x7f0be0e64850
  5803 ms  0x9be SSL_AuthCertificateHook()
  5803 ms  0x9be fd:0x7f0be0e64850
  5803 ms  0x9be ret:0x0
  5803 ms  0x9be PR_Connect()
  5803 ms  0x9be fd:0x7f0be0e64850
  5804 ms  0x9be SSL_AuthCertificateComplete()
  5804 ms  0x9be fd:0x7f0be093cfd0
  5804 ms  0x9be err:0x0
  5804 ms     | 0x9be PK11_DeriveWithFlags()
  5804 ms     | 0x9be basekey:0x7f0be0eed080
  5804 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5804 ms     | 0x9be ret:0x7f0be0b99f80
  5804 ms     | 0x9be PK11_DeriveWithFlags()
  5804 ms     | 0x9be basekey:0x7f0be0eed080
  5804 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5804 ms     | 0x9be ret:0x7f0be0b99b00
  5804 ms     | 0x9be PK11_DeriveWithFlags()
  5804 ms     | 0x9be basekey:0x7f0be0eed080
  5804 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5804 ms     | 0x9be ret:0x7f0bfaccb880
  5804 ms     | 0x9be PK11_DeriveWithFlags()
  5804 ms     | 0x9be basekey:0x7f0be0eed100
  5804 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5804 ms     | 0x9be ret:0x7f0be0b99d80
  5804 ms     | 0x9be PK11_DeriveWithFlags()
  5804 ms     | 0x9be basekey:0x7f0be0eed100
  5804 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5804 ms     | 0x9be ret:0x7f0be0b99c00
  5804 ms     | 0x9be PK11_DeriveWithFlags()
  5804 ms     | 0x9be basekey:0x7f0be0b99b00
  5804 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5804 ms     | 0x9be ret:0x7f0be0b99c00
  5804 ms     | 0x9be PK11_DeriveWithFlags()
  5804 ms     | 0x9be basekey:0x7f0be0b99b00
  5804 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5804 ms     | 0x9be ret:0x7f0be0b99a80
  5804 ms     | 0x9be PK11_DeriveWithFlags()
  5804 ms     | 0x9be basekey:0x7f0be0eed100
  5804 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5804 ms     | 0x9be ret:0x7f0be0eed300
  5804 ms     | 0x9be PK11_Encrypt()
  5804 ms     | 0x9be symkey:0x7f0be0b99d80
  5804 ms     | 0x9be PK11_DeriveWithFlags()
  5804 ms     | 0x9be basekey:0x7f0be0b99f80
  5804 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5804 ms     | 0x9be ret:0x7f0be0eed300
  5804 ms     | 0x9be PK11_DeriveWithFlags()
  5804 ms     | 0x9be basekey:0x7f0be0b99f80
  5804 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5804 ms     | 0x9be ret:0x7f0be0b99a80
  5804 ms     | 0x9be PK11_DeriveWithFlags()
  5804 ms     | 0x9be basekey:0x7f0be0eed080
  5804 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5804 ms     | 0x9be ret:0x7f0be0b99d80
  5804 ms     | 0x9be SECKEY_DestroyPrivateKey()
  5804 ms     | 0x9be privk:0x7f0be0ead820::7f0be0ead820  40 12 9b e0                                      @...
  5804 ms     | 0x9be privk:0x7f0be0ead820::7f0be0ead820  e5 e5 e5 e5                                      ....
  5804 ms     | 0x9be SECKEY_DestroyPrivateKey()
  5804 ms     | 0x9be privk:0x7f0be0eab820::7f0be0eab820  60 10 9b e0                                      `...
  5805 ms     | 0x9be privk:0x7f0be0eab820::7f0be0eab820  e5 e5 e5 e5                                      ....
  5805 ms  0x9be SSL_AuthCertificateComplete()
  5805 ms  0x9be fd:0x7f0be097c100
  5805 ms  0x9be err:0x0
  5805 ms     | 0x9be PK11_DeriveWithFlags()
  5805 ms     | 0x9be basekey:0x7f0be0d97180
  5805 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5805 ms     | 0x9be ret:0x7f0be0eed280
  5805 ms     | 0x9be PK11_DeriveWithFlags()
  5805 ms     | 0x9be basekey:0x7f0be0d97180
  5805 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5805 ms     | 0x9be ret:0x7f0be0eed100
  5805 ms     | 0x9be PK11_DeriveWithFlags()
  5805 ms     | 0x9be basekey:0x7f0be0d97180
  5805 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5805 ms     | 0x9be ret:0x7f0be0eed080
  5805 ms     | 0x9be PK11_DeriveWithFlags()
  5805 ms     | 0x9be basekey:0x7f0be0eed380
  5805 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5805 ms     | 0x9be ret:0x7f0be0b99a80
  5805 ms     | 0x9be PK11_DeriveWithFlags()
  5805 ms     | 0x9be basekey:0x7f0be0eed380
  5805 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5805 ms     | 0x9be ret:0x7f0be0b99480
  5805 ms     | 0x9be PK11_DeriveWithFlags()
  5805 ms     | 0x9be basekey:0x7f0be0eed100
  5805 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5805 ms     | 0x9be ret:0x7f0be0b99480
  5805 ms     | 0x9be PK11_DeriveWithFlags()
  5805 ms     | 0x9be basekey:0x7f0be0eed100
  5805 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5805 ms     | 0x9be ret:0x7f0be0b99c80
  5805 ms     | 0x9be PK11_DeriveWithFlags()
  5805 ms     | 0x9be basekey:0x7f0be0eed380
  5805 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5805 ms     | 0x9be ret:0x7f0be0b99e00
  5805 ms     | 0x9be PK11_Encrypt()
  5805 ms     | 0x9be symkey:0x7f0be0b99a80
  5806 ms     | 0x9be PK11_DeriveWithFlags()
  5806 ms     | 0x9be basekey:0x7f0be0eed280
  5806 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5806 ms     | 0x9be ret:0x7f0be0b99e00
  5806 ms     | 0x9be PK11_DeriveWithFlags()
  5806 ms     | 0x9be basekey:0x7f0be0eed280
  5806 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5807 ms     | 0x9be ret:0x7f0be0b99c80
  5807 ms     | 0x9be PK11_DeriveWithFlags()
  5807 ms     | 0x9be basekey:0x7f0be0d97180
  5807 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5807 ms     | 0x9be ret:0x7f0be0b99a80
  5807 ms     | 0x9be SECKEY_DestroyPrivateKey()
  5807 ms     | 0x9be privk:0x7f0bf40d9020::7f0bf40d9020  10 15 9b e0                                      ....
  5807 ms     | 0x9be privk:0x7f0bf40d9020::7f0bf40d9020  e5 e5 e5 e5                                      ....
  5807 ms     | 0x9be SECKEY_DestroyPrivateKey()
  5807 ms     | 0x9be privk:0x7f0be0eb0020::7f0be0eb0020  d0 13 9b e0                                      ....
  5807 ms     | 0x9be privk:0x7f0be0eb0020::7f0be0eb0020  e5 e5 e5 e5                                      ....
  5808 ms  SECKEY_ECParamsToKeySize()
  5808 ms  0x9be ret:0x100
  5808 ms  0x9be SECKEY_CreateECPrivateKey()
  5808 ms  0x9be cx:0x7f0bf1cc8608
  5808 ms     | 0x9be EC_ValidatePublicKey()
  5811 ms     | 0x9be ret:0x0
  5811 ms  0x9be ret:0x7f0be0633820::7f0be0633820  00 11 9b e0                                      ....
  5812 ms  0x9be PK11_PubDeriveWithKDF()
  5812 ms  0x9be seckey:0x7f0be0633820
  5812 ms     | 0x9be EC_ValidatePublicKey()
  5814 ms     | 0x9be ret:0x0
  5823 ms  0x9be ret:0x7f0be0b99e80
  5823 ms  0x9be PK11_DeriveWithFlags()
  5823 ms  0x9be basekey:0x7f0be0b99e80
  5823 ms     | 0x9be PK11_DeriveWithTemplate()
  5823 ms  0x9be ret:0x7f0be0eed380
  5823 ms  0x9be PK11_Derive()
  5823 ms  0x9be basekey:0x7f0be0eed380
  5823 ms     | 0x9be PK11_DeriveWithTemplate()
  5824 ms  0x9be ret:0x7f0be0d97180
  5824 ms  0x9be SECKEY_DestroyPrivateKey()
  5824 ms  0x9be privk:0x7f0be0633820::7f0be0633820  00 11 9b e0                                      ....
  5824 ms  0x9be privk:0x7f0be0633820::7f0be0633820  e5 e5 e5 e5                                      ....
  5824 ms  0x9be PK11_Encrypt()
  5824 ms  0x9be symkey:0x7f0be09a5300
  5826 ms  SECKEY_ECParamsToKeySize()
  5826 ms  0x9be ret:0x100
  5826 ms  0x9be SECKEY_CreateECPrivateKey()
  5826 ms  0x9be cx:0x7f0bf1cc8468
  5827 ms     | 0x9be EC_ValidatePublicKey()
  5828 ms     | 0x9be ret:0x0
  5828 ms  0x9be ret:0x7f0be0634820::7f0be0634820  c0 14 9b e0                                      ....
  5828 ms  0x9be PK11_PubDeriveWithKDF()
  5828 ms  0x9be seckey:0x7f0be0634820
  5828 ms     | 0x9be EC_ValidatePublicKey()
  5833 ms     | 0x9be ret:0x0
  5834 ms  0x9be ret:0x7f0be0b99e80
  5834 ms  0x9be PK11_DeriveWithFlags()
  5834 ms  0x9be basekey:0x7f0be0b99e80
  5834 ms     | 0x9be PK11_DeriveWithTemplate()
  5834 ms  0x9be ret:0x7f0be0b99c80
  5834 ms  0x9be PK11_Derive()
  5834 ms  0x9be basekey:0x7f0be0b99c80
  5834 ms     | 0x9be PK11_DeriveWithTemplate()
  5835 ms  0x9be ret:0x7f0be0b99d00
  5835 ms  0x9be SECKEY_DestroyPrivateKey()
  5835 ms  0x9be privk:0x7f0be0634820::7f0be0634820  c0 14 9b e0                                      ....
  5835 ms  0x9be privk:0x7f0be0634820::7f0be0634820  e5 e5 e5 e5                                      ....
  5835 ms  0x9be PK11_Encrypt()
  5835 ms  0x9be symkey:0x7f0be09a5580
  5855 ms  SECKEY_ECParamsToKeySize()
  5855 ms  0x9be ret:0x100
  5855 ms  0x9be SECKEY_CreateECPrivateKey()
  5855 ms  0x9be cx:0x7f0bf1cc7f88
  5856 ms     | 0x9be EC_ValidatePublicKey()
  5857 ms     | 0x9be ret:0x0
  5857 ms  0x9be ret:0x7f0be0636820::7f0be0636820  c0 94 d7 e0                                      ....
  5857 ms  0x9be PK11_PubDeriveWithKDF()
  5857 ms  0x9be seckey:0x7f0be0636820
  5857 ms     | 0x9be EC_ValidatePublicKey()
  5859 ms     | 0x9be ret:0x0
  5860 ms  0x9be ret:0x7f0be0b99e80
  5860 ms  0x9be PK11_DeriveWithFlags()
  5860 ms  0x9be basekey:0x7f0be0b99e80
  5860 ms     | 0x9be PK11_DeriveWithTemplate()
  5860 ms  0x9be ret:0x7f0be0b99800
  5860 ms  0x9be PK11_Derive()
  5860 ms  0x9be basekey:0x7f0be0b99800
  5860 ms     | 0x9be PK11_DeriveWithTemplate()
  5871 ms  0x9be ret:0x7f0be0b99000
  5871 ms  0x9be SECKEY_DestroyPrivateKey()
  5871 ms  0x9be privk:0x7f0be0636820::7f0be0636820  c0 94 d7 e0                                      ....
  5871 ms  0x9be privk:0x7f0be0636820::7f0be0636820  e5 e5 e5 e5                                      ....
  5871 ms  0x9be PK11_Encrypt()
  5871 ms  0x9be symkey:0x7f0be09a5b00
  5872 ms  SECKEY_ECParamsToKeySize()
  5872 ms  0x9be ret:0x100
  5872 ms  0x9be SECKEY_CreateECPrivateKey()
  5872 ms  0x9be cx:0x7f0bf1cc7de8
  5873 ms     | 0x9be EC_ValidatePublicKey()
  5874 ms     | 0x9be ret:0x0
  5874 ms  0x9be ret:0x7f0be0637820::7f0be0637820  60 80 97 e0                                      `...
  5874 ms  0x9be PK11_PubDeriveWithKDF()
  5874 ms  0x9be seckey:0x7f0be0637820
  5874 ms     | 0x9be EC_ValidatePublicKey()
  5875 ms     | 0x9be ret:0x0
  5885 ms  0x9be ret:0x7f0be0b99e80
  5885 ms  0x9be PK11_DeriveWithFlags()
  5885 ms  0x9be basekey:0x7f0be0b99e80
  5885 ms     | 0x9be PK11_DeriveWithTemplate()
  5885 ms  0x9be ret:0x7f0be0b98a00
  5885 ms  0x9be PK11_Derive()
  5885 ms  0x9be basekey:0x7f0be0b98a00
  5885 ms     | 0x9be PK11_DeriveWithTemplate()
  5885 ms  0x9be ret:0x7f0bf4084400
  5885 ms  0x9be SECKEY_DestroyPrivateKey()
  5885 ms  0x9be privk:0x7f0be0637820::7f0be0637820  60 80 97 e0                                      `...
  5885 ms  0x9be privk:0x7f0be0637820::7f0be0637820  e5 e5 e5 e5                                      ....
  5885 ms  0x9be PK11_Encrypt()
  5885 ms  0x9be symkey:0x7f0be09a5e80
  5890 ms  0x9be PK11_Derive()
  5890 ms  0x9be basekey:0x7f0be0b99e80
  5890 ms     | 0x9be PK11_DeriveWithTemplate()
  5890 ms  0x9be ret:0x7f0be0b99700
  5890 ms  0x9be PK11_PubDeriveWithKDF()
  5890 ms  0x9be seckey:0x7f0c01a09020
  5890 ms     | 0x9be EC_ValidatePublicKey()
  5891 ms     | 0x9be ret:0x0
  5893 ms  0x9be ret:0x7f0be0b99e80
  5893 ms  SECKEY_ECParamsToKeySize()
  5893 ms  0x9be ret:0x100
  5893 ms  0x9be PK11_DeriveWithFlags()
  5893 ms  0x9be basekey:0x7f0be0b99700
  5893 ms     | 0x9be PK11_DeriveWithTemplate()
  5893 ms  0x9be ret:0x7f0be0b99780
  5893 ms  0x9be PK11_Derive()
  5893 ms  0x9be basekey:0x7f0be0b99e80
  5893 ms     | 0x9be PK11_DeriveWithTemplate()
  5893 ms  0x9be ret:0x7f0be0b99380
  5893 ms  0x9be PK11_DeriveWithFlags()
  5893 ms  0x9be basekey:0x7f0be0b99380
  5893 ms     | 0x9be PK11_DeriveWithTemplate()
  5893 ms  0x9be ret:0x7f0be0b99700
  5893 ms  0x9be PK11_DeriveWithFlags()
  5893 ms  0x9be basekey:0x7f0be0b99380
  5893 ms     | 0x9be PK11_DeriveWithTemplate()
  5893 ms  0x9be ret:0x7f0be0b99e80
  5893 ms  0x9be PK11_DeriveWithFlags()
  5893 ms  0x9be basekey:0x7f0be0b99380
  5893 ms     | 0x9be PK11_DeriveWithTemplate()
  5893 ms  0x9be ret:0x7f0be0b99780
  5893 ms  0x9be PK11_Derive()
  5893 ms  0x9be basekey:0x7f0be0b98d00
  5893 ms     | 0x9be PK11_DeriveWithTemplate()
  5893 ms  0x9be ret:0x7f0be0b98f80
  5893 ms  0x9be PK11_DeriveWithFlags()
  5893 ms  0x9be basekey:0x7f0be0b99e80
  5893 ms     | 0x9be PK11_DeriveWithTemplate()
  5893 ms  0x9be ret:0x7f0be0b99380
  5893 ms  0x9be PK11_DeriveWithFlags()
  5893 ms  0x9be basekey:0x7f0be0b99e80
  5893 ms     | 0x9be PK11_DeriveWithTemplate()
  5893 ms  0x9be ret:0x7f0be0b99780
           /* TID 0xa1e */
  5902 ms  0xa1e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5902 ms  0xa1e ret:0x0
           /* TID 0x9be */
  5902 ms  0x9be PK11_DeriveWithFlags()
  5902 ms  0x9be basekey:0x7f0be0b99e80
  5902 ms     | 0x9be PK11_DeriveWithTemplate()
  5902 ms  0x9be ret:0x7f0be0b99780
  5903 ms  0x9be PK11_DeriveWithFlags()
  5903 ms  0x9be basekey:0x7f0be0b99d80
  5903 ms     | 0x9be PK11_DeriveWithTemplate()
  5903 ms  0x9be ret:0x7f0be0b99780
  5903 ms  0x9be PK11_DeriveWithFlags()
  5903 ms  0x9be basekey:0x7f0be0b99d80
  5903 ms     | 0x9be PK11_DeriveWithTemplate()
  5903 ms  0x9be ret:0x7f0be0b99780
  5905 ms  0x9be PK11_Encrypt()
  5905 ms  0x9be symkey:0x7f0be0eed300
  5906 ms  0x9be PK11_Encrypt()
  5906 ms  0x9be symkey:0x7f0be0eed300
  5910 ms  0x9be PK11_Encrypt()
  5910 ms  0x9be symkey:0x7f0be0b99e00
  5911 ms  0x9be SECKEY_CreateECPrivateKey()
  5911 ms  0x9be cx:0x7f0bf1cc8c88
  5911 ms     | 0x9be EC_ValidatePublicKey()
  5911 ms     | 0x9be ret:0x0
  5911 ms  0x9be ret:0x7f0be063c020::7f0be063c020  00 86 97 e0                                      ....
  5911 ms  0x9be SECKEY_CreateECPrivateKey()
  5911 ms  0x9be cx:0x7f0bf1cc8c88
  5917 ms     | 0x9be EC_ValidatePublicKey()
  5919 ms     | 0x9be ret:0x0
  5919 ms  0x9be ret:0x7f0be063e020::7f0be063e020  e0 87 97 e0                                      ....
  5930 ms  0x9be PR_Close()
  5930 ms  0x9be fd:0x7f0be0e64850
  5930 ms  0x9be PK11_Encrypt()
  5930 ms  0x9be symkey:0x7f0be0eed300
  5930 ms  0x9be PK11_Encrypt()
  5930 ms  0x9be symkey:0x7f0be0eed300
  5930 ms  0x9be PK11_Encrypt()
  5930 ms  0x9be symkey:0x7f0be0eed300
  5931 ms  0x9be PK11_Encrypt()
  5931 ms  0x9be symkey:0x7f0be0eed300
  5931 ms  0x9be PK11_Encrypt()
  5931 ms  0x9be symkey:0x7f0be0eed300
  5931 ms  0x9be PK11_Encrypt()
  5931 ms  0x9be symkey:0x7f0be0eed300
  5931 ms  0x9be SSL_ImportFD()
  5931 ms  0x9be ret:0x7f0be093c520
  5931 ms  0x9be SSL_AuthCertificateHook()
  5931 ms  0x9be fd:0x7f0be093c520
  5931 ms  0x9be ret:0x0
  5931 ms  0x9be PR_Connect()
  5931 ms  0x9be fd:0x7f0be093c520
  5931 ms  0x9be SSL_ImportFD()
  5931 ms  0x9be ret:0x7f0be097c2e0
  5931 ms  0x9be SSL_AuthCertificateHook()
  5931 ms  0x9be fd:0x7f0be097c2e0
  5931 ms  0x9be ret:0x0
  5931 ms  0x9be PR_Connect()
  5931 ms  0x9be fd:0x7f0be097c2e0
  5931 ms  0x9be SSL_AuthCertificateComplete()
  5931 ms  0x9be fd:0x7f0be093ce50
  5931 ms  0x9be err:0x0
  5932 ms  0x9be SSL_AuthCertificateComplete()
  5932 ms  0x9be fd:0x7f0be093cd90
  5932 ms  0x9be err:0x0
  5932 ms  0x9be SSL_AuthCertificateComplete()
  5932 ms  0x9be fd:0x7f0be093ccd0
  5932 ms  0x9be err:0x0
  5932 ms  0x9be SSL_AuthCertificateComplete()
  5932 ms  0x9be fd:0x7f0be093cbe0
  5932 ms  0x9be err:0x0
  5932 ms  0x9be PR_Connect()
  5932 ms  0x9be fd:0x7f0be0efeeb0
  5932 ms  0x9be SSL_AuthCertificateComplete()
  5932 ms  0x9be fd:0x7f0be097c070
  5932 ms  0x9be err:0x0
  5932 ms     | 0x9be PK11_DeriveWithFlags()
  5932 ms     | 0x9be basekey:0x7f0be0b98f80
  5932 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5932 ms     | 0x9be ret:0x7f0be0b99780
  5932 ms     | 0x9be PK11_DeriveWithFlags()
  5932 ms     | 0x9be basekey:0x7f0be0b98f80
  5932 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5932 ms     | 0x9be ret:0x7f0be0b98d00
  5932 ms     | 0x9be PK11_DeriveWithFlags()
  5932 ms     | 0x9be basekey:0x7f0be0b98f80
  5932 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5932 ms     | 0x9be ret:0x7f0be0eed180
  5932 ms     | 0x9be PK11_DeriveWithFlags()
  5932 ms     | 0x9be basekey:0x7f0be0b99700
  5932 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5932 ms     | 0x9be ret:0x7f0be0eed400
  5932 ms     | 0x9be PK11_DeriveWithFlags()
  5932 ms     | 0x9be basekey:0x7f0be0b99700
  5932 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5932 ms     | 0x9be ret:0x7f0be0ba1700
  5932 ms     | 0x9be PK11_DeriveWithFlags()
  5932 ms     | 0x9be basekey:0x7f0be0b98d00
  5932 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5932 ms     | 0x9be ret:0x7f0be0ba1700
  5932 ms     | 0x9be PK11_DeriveWithFlags()
  5932 ms     | 0x9be basekey:0x7f0be0b98d00
  5932 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5932 ms     | 0x9be ret:0x7f0be0d89a00
  5933 ms     | 0x9be PK11_DeriveWithFlags()
  5933 ms     | 0x9be basekey:0x7f0be0b99700
  5933 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5933 ms     | 0x9be ret:0x7f0be0b99380
  5933 ms     | 0x9be PK11_Encrypt()
  5933 ms     | 0x9be symkey:0x7f0be0eed400
  5933 ms     | 0x9be PK11_DeriveWithFlags()
  5933 ms     | 0x9be basekey:0x7f0be0b99780
  5933 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5933 ms     | 0x9be ret:0x7f0be0b99380
  5933 ms     | 0x9be PK11_DeriveWithFlags()
  5933 ms     | 0x9be basekey:0x7f0be0b99780
  5933 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5933 ms     | 0x9be ret:0x7f0be0d89a00
  5933 ms     | 0x9be PK11_DeriveWithFlags()
  5933 ms     | 0x9be basekey:0x7f0be0b98f80
  5933 ms     |    | 0x9be PK11_DeriveWithTemplate()
  5933 ms     | 0x9be ret:0x7f0be0eed400
  5933 ms     | 0x9be SECKEY_DestroyPrivateKey()
  5933 ms     | 0x9be privk:0x7f0c01a09020::7f0c01a09020  f0 9b 60 e0                                      ..`.
  5933 ms     | 0x9be privk:0x7f0c01a09020::7f0c01a09020  e5 e5 e5 e5                                      ....
  5933 ms     | 0x9be SECKEY_DestroyPrivateKey()
  5933 ms     | 0x9be privk:0x7f0be09df020::7f0be09df020  10 9a 60 e0                                      ..`.
  5933 ms     | 0x9be privk:0x7f0be09df020::7f0be09df020  e5 e5 e5 e5                                      ....
  5936 ms  0x9be PK11_Encrypt()
  5936 ms  0x9be symkey:0x7f0be0eed300
           /* TID 0x9c6 */
  5937 ms  0x9c6 PR_Close()
  5937 ms  0x9c6 fd:0x7f0be093c580
           /* TID 0x9be */
  5937 ms  0x9be PK11_Encrypt()
  5937 ms  0x9be symkey:0x7f0be0eed300
  5937 ms  0x9be PR_Connect()
  5937 ms  0x9be fd:0x7f0be09bf2e0
  5938 ms  0x9be SSL_ImportFD()
  5938 ms  0x9be ret:0x7f0be09bf370
  5938 ms  0x9be SSL_AuthCertificateHook()
  5938 ms  0x9be fd:0x7f0be09bf370
  5938 ms  0x9be ret:0x0
  5938 ms  0x9be PR_Connect()
  5938 ms  0x9be fd:0x7f0be09bf370
  5938 ms  0x9be SSL_ImportFD()
  5938 ms  0x9be ret:0x7f0be09bf2b0
  5938 ms  0x9be SSL_AuthCertificateHook()
  5938 ms  0x9be fd:0x7f0be09bf2b0
  5938 ms  0x9be ret:0x0
  5938 ms  0x9be PR_Connect()
  5938 ms  0x9be fd:0x7f0be09bf2b0
  5939 ms  0x9be SSL_ImportFD()
  5939 ms  0x9be ret:0x7f0be09bf0a0
  5939 ms  0x9be SSL_AuthCertificateHook()
  5939 ms  0x9be fd:0x7f0be09bf0a0
  5939 ms  0x9be ret:0x0
  5940 ms  0x9be PR_Connect()
  5940 ms  0x9be fd:0x7f0be09bf0a0
  5941 ms  0x9be PR_Close()
  5941 ms  0x9be fd:0x7f0be0efeeb0
  5941 ms  0x9be PK11_Encrypt()
  5941 ms  0x9be symkey:0x7f0be09a5300
  5941 ms  0x9be PK11_Encrypt()
  5941 ms  0x9be symkey:0x7f0be09a5580
  5941 ms  0x9be PK11_Encrypt()
  5941 ms  0x9be symkey:0x7f0be09a5b00
  5941 ms  0x9be PK11_Encrypt()
  5941 ms  0x9be symkey:0x7f0be09a5e80
  5943 ms  SECKEY_ECParamsToKeySize()
  5943 ms  0x9be ret:0x100
  5943 ms  0x9be SECKEY_CreateECPrivateKey()
  5943 ms  0x9be cx:0x7f0bf1cc7908
  5943 ms     | 0x9be EC_ValidatePublicKey()
  5945 ms     | 0x9be ret:0x0
  5945 ms  0x9be ret:0x7f0be0648820::7f0be0648820  00 81 97 e0                                      ....
  5945 ms  0x9be PK11_PubDeriveWithKDF()
  5945 ms  0x9be seckey:0x7f0be0648820
  5945 ms     | 0x9be EC_ValidatePublicKey()
  5946 ms     | 0x9be ret:0x0
  5948 ms  0x9be ret:0x7f0be0b99e80
  5948 ms  0x9be PK11_DeriveWithFlags()
  5948 ms  0x9be basekey:0x7f0be0b99e80
  5948 ms     | 0x9be PK11_DeriveWithTemplate()
  5948 ms  0x9be ret:0x7f0be0b99700
  5948 ms  0x9be PK11_Derive()
  5948 ms  0x9be basekey:0x7f0be0b99700
  5948 ms     | 0x9be PK11_DeriveWithTemplate()
  5948 ms  0x9be ret:0x7f0be0b98f80
  5948 ms  0x9be SECKEY_DestroyPrivateKey()
  5948 ms  0x9be privk:0x7f0be0648820::7f0be0648820  00 81 97 e0                                      ....
  5948 ms  0x9be privk:0x7f0be0648820::7f0be0648820  e5 e5 e5 e5                                      ....
  5948 ms  0x9be PK11_Encrypt()
  5948 ms  0x9be symkey:0x7f0be06b6580
  5956 ms  SECKEY_ECParamsToKeySize()
  5956 ms  0x9be ret:0x100
  5956 ms  0x9be SECKEY_CreateECPrivateKey()
  5956 ms  0x9be cx:0x7f0bf1cc75c8
  5957 ms     | 0x9be EC_ValidatePublicKey()
  5960 ms     | 0x9be ret:0x0
  5960 ms  0x9be ret:0x7f0be0649820::7f0be0649820  b0 8a 97 e0                                      ....
  5960 ms  0x9be PK11_PubDeriveWithKDF()
  5960 ms  0x9be seckey:0x7f0be0649820
  5960 ms     | 0x9be EC_ValidatePublicKey()
  5979 ms     | 0x9be ret:0x0
  5986 ms  0x9be ret:0x7f0be0b99e80
  5986 ms  0x9be PK11_DeriveWithFlags()
  5986 ms  0x9be basekey:0x7f0be0b99e80
  5986 ms     | 0x9be PK11_DeriveWithTemplate()
  5986 ms  0x9be ret:0x7f0be0d89a00
  5986 ms  0x9be PK11_Derive()
  5986 ms  0x9be basekey:0x7f0be0d89a00
  5986 ms     | 0x9be PK11_DeriveWithTemplate()
  5986 ms  0x9be ret:0x7f0be06b6680
  5986 ms  0x9be SECKEY_DestroyPrivateKey()
  5986 ms  0x9be privk:0x7f0be0649820::7f0be0649820  b0 8a 97 e0                                      ....
  5986 ms  0x9be privk:0x7f0be0649820::7f0be0649820  e5 e5 e5 e5                                      ....
  5986 ms  0x9be PK11_Encrypt()
  5986 ms  0x9be symkey:0x7f0be06b6980
  6004 ms  0x9be PK11_Encrypt()
  6004 ms  0x9be symkey:0x7f0be0b99380
  6005 ms  0x9be PK11_Encrypt()
  6005 ms  0x9be symkey:0x7f0be0eed300
  6005 ms  0x9be PK11_DeriveWithFlags()
  6005 ms  0x9be basekey:0x7f0be0b99a80
  6005 ms     | 0x9be PK11_DeriveWithTemplate()
  6005 ms  0x9be ret:0x7f0be0b99e80
  6005 ms  0x9be PK11_DeriveWithFlags()
  6005 ms  0x9be basekey:0x7f0be0b99a80
  6005 ms     | 0x9be PK11_DeriveWithTemplate()
  6005 ms  0x9be ret:0x7f0be0b99e80
  6005 ms  0x9be PR_Close()
  6005 ms  0x9be fd:0x7f0be097c100
  6005 ms     | 0x9be PK11_Encrypt()
  6005 ms     | 0x9be symkey:0x7f0be0b99e00
  6005 ms  0x9be PK11_Encrypt()
  6005 ms  0x9be symkey:0x7f0be0b98e80
  6005 ms  0x9be SSL_AuthCertificateComplete()
  6005 ms  0x9be fd:0x7f0be093c5e0
  6005 ms  0x9be err:0x0
  6011 ms  0x9be SSL_AuthCertificateComplete()
  6011 ms  0x9be fd:0x7f0be0e64b80
  6011 ms  0x9be err:0x0
  6011 ms  0x9be PK11_Encrypt()
  6011 ms  0x9be symkey:0x7f0be0eed300
  6011 ms  0x9be PR_Close()
  6011 ms  0x9be fd:0x7f0be09bf2e0
  6012 ms  0x9be SECKEY_DestroyPrivateKey()
  6012 ms  0x9be privk:0x7f0be09c5820::7f0be09c5820  f0 1b 9b e0                                      ....
  6013 ms  0x9be privk:0x7f0be09c5820::7f0be09c5820  e5 e5 e5 e5                                      ....
  6013 ms  0x9be SECKEY_DestroyPrivateKey()
  6013 ms  0x9be privk:0x7f0be09c3820::7f0be09c3820  10 1a 9b e0                                      ....
  6013 ms  0x9be privk:0x7f0be09c3820::7f0be09c3820  e5 e5 e5 e5                                      ....
  6013 ms  0x9be SECKEY_DestroyPrivateKey()
  6013 ms  0x9be privk:0x7f0be09ca820::7f0be09ca820  60 1f 9b e0                                      `...
  6013 ms  0x9be privk:0x7f0be09ca820::7f0be09ca820  e5 e5 e5 e5                                      ....
  6013 ms  0x9be SECKEY_DestroyPrivateKey()
  6013 ms  0x9be privk:0x7f0be09c8820::7f0be09c8820  80 1d 9b e0                                      ....
  6013 ms  0x9be privk:0x7f0be09c8820::7f0be09c8820  e5 e5 e5 e5                                      ....
  6015 ms  0x9be SECKEY_DestroyPrivateKey()
  6015 ms  0x9be privk:0x7f0be09cf020::7f0be09cf020  70 9e d2 e0                                      p...
  6015 ms  0x9be privk:0x7f0be09cf020::7f0be09cf020  e5 e5 e5 e5                                      ....
  6015 ms  0x9be SECKEY_DestroyPrivateKey()
  6015 ms  0x9be privk:0x7f0be09cd020::7f0be09cd020  c0 e9 b5 e0                                      ....
  6015 ms  0x9be privk:0x7f0be09cd020::7f0be09cd020  e5 e5 e5 e5                                      ....
  6016 ms  0x9be SECKEY_DestroyPrivateKey()
  6016 ms  0x9be privk:0x7f0be09d3820::7f0be09d3820  90 92 60 e0                                      ..`.
  6016 ms  0x9be privk:0x7f0be09d3820::7f0be09d3820  e5 e5 e5 e5                                      ....
  6016 ms  0x9be SECKEY_DestroyPrivateKey()
  6016 ms  0x9be privk:0x7f0be09d1820::7f0be09d1820  b0 90 60 e0                                      ..`.
  6016 ms  0x9be privk:0x7f0be09d1820::7f0be09d1820  e5 e5 e5 e5                                      ....
  6016 ms  0x9be PK11_Encrypt()
  6016 ms  0x9be symkey:0x7f0be06b6580
  6017 ms  0x9be PK11_Encrypt()
  6017 ms  0x9be symkey:0x7f0be06b6980
  6018 ms  0x9be PK11_DeriveWithFlags()
  6018 ms  0x9be basekey:0x7f0be0eed400
  6018 ms     | 0x9be PK11_DeriveWithTemplate()
  6018 ms  0x9be ret:0x7f0be0eed080
  6018 ms  0x9be PK11_DeriveWithFlags()
  6018 ms  0x9be basekey:0x7f0be0eed400
  6018 ms     | 0x9be PK11_DeriveWithTemplate()
  6018 ms  0x9be ret:0x7f0be0eed080
  6020 ms  SECKEY_ECParamsToKeySize()
  6020 ms  0x9be ret:0xff
  6020 ms  0x9be SECKEY_CreateECPrivateKey()
  6020 ms  0x9be cx:0x7f0bf1cc8c88
  6021 ms     | 0x9be EC_ValidatePublicKey()
  6021 ms     | 0x9be ret:0x0
  6021 ms  0x9be ret:0x7f0be0648020::7f0be0648020  e0 ec b5 e0                                      ....
  6021 ms  0x9be PK11_PubDeriveWithKDF()
  6021 ms  0x9be seckey:0x7f0be0648020
  6021 ms     | 0x9be EC_ValidatePublicKey()
  6021 ms     | 0x9be ret:0x0
  6027 ms  0x9be ret:0x7f0be0eed080
  6028 ms  0x9be PK11_DeriveWithFlags()
  6028 ms  0x9be basekey:0x7f0be0eed080
  6028 ms     | 0x9be PK11_DeriveWithTemplate()
  6028 ms  0x9be ret:0x7f0be0eed100
  6028 ms  0x9be PK11_Derive()
  6028 ms  0x9be basekey:0x7f0be0eed100
  6028 ms     | 0x9be PK11_DeriveWithTemplate()
  6028 ms  0x9be ret:0x7f0be0eed280
  6028 ms  0x9be SECKEY_DestroyPrivateKey()
  6028 ms  0x9be privk:0x7f0be0648020::7f0be0648020  e0 ec b5 e0                                      ....
  6028 ms  0x9be privk:0x7f0be0648020::7f0be0648020  e5 e5 e5 e5                                      ....
  6028 ms  0x9be PK11_Encrypt()
  6028 ms  0x9be symkey:0x7f0be06b7680
  6029 ms  0x9be PR_Close()
  6029 ms  0x9be fd:0x7f0be097c070
  6029 ms     | 0x9be PK11_Encrypt()
  6029 ms     | 0x9be symkey:0x7f0be0b99380
  6033 ms  0x9be PK11_Encrypt()
  6033 ms  0x9be symkey:0x7f0be09a5300
           /* TID 0x9c6 */
  6034 ms  0x9c6 PR_Close()
  6034 ms  0x9c6 fd:0x7f0be093cd30
           /* TID 0x9be */
  6034 ms  0x9be PK11_Encrypt()
  6034 ms  0x9be symkey:0x7f0be09a5580
  6034 ms  0x9be PK11_Encrypt()
  6034 ms  0x9be symkey:0x7f0be09a5b00
  6035 ms  0x9be PK11_Encrypt()
  6035 ms  0x9be symkey:0x7f0be09a5e80
  6035 ms  0x9be SSL_AuthCertificateComplete()
  6035 ms  0x9be fd:0x7f0be097ccd0
  6035 ms  0x9be err:0x0
           /* TID 0x9c6 */
  6035 ms  0x9c6 PR_Close()
  6035 ms  0x9c6 fd:0x7f0be093c430
           /* TID 0x9be */
  6036 ms  0x9be SECKEY_DestroyPrivateKey()
  6036 ms  0x9be privk:0x7f0be09d8020::7f0be09d8020  b0 95 60 e0                                      ..`.
  6036 ms  0x9be privk:0x7f0be09d8020::7f0be09d8020  e5 e5 e5 e5                                      ....
  6036 ms  0x9be SECKEY_DestroyPrivateKey()
  6036 ms  0x9be privk:0x7f0be09d6020::7f0be09d6020  d0 93 60 e0                                      ..`.
  6036 ms  0x9be privk:0x7f0be09d6020::7f0be09d6020  e5 e5 e5 e5                                      ....
  6037 ms  0x9be SECKEY_DestroyPrivateKey()
  6037 ms  0x9be privk:0x7f0be09dc820::7f0be09dc820  d0 98 60 e0                                      ..`.
  6037 ms  0x9be privk:0x7f0be09dc820::7f0be09dc820  e5 e5 e5 e5                                      ....
  6037 ms  0x9be SECKEY_DestroyPrivateKey()
  6037 ms  0x9be privk:0x7f0be09da820::7f0be09da820  f0 96 60 e0                                      ..`.
  6037 ms  0x9be privk:0x7f0be09da820::7f0be09da820  e5 e5 e5 e5                                      ....
  6037 ms  0x9be PK11_Encrypt()
  6037 ms  0x9be symkey:0x7f0be0eed300
  6037 ms  0x9be PK11_Encrypt()
  6037 ms  0x9be symkey:0x7f0be0eed300
           /* TID 0x9c6 */
  6038 ms  0x9c6 PR_Close()
  6038 ms  0x9c6 fd:0x7f0be093c130
  6039 ms  0x9c6 PR_Close()
  6039 ms  0x9c6 fd:0x7f0be093c130
  6039 ms  0x9c6 PR_Close()
  6039 ms  0x9c6 fd:0x7f0be093c130
  6040 ms  0x9c6 PR_Close()
  6040 ms  0x9c6 fd:0x7f0be093c130
  6041 ms  0x9c6 PR_Close()
  6041 ms  0x9c6 fd:0x7f0be093c130
           /* TID 0x9be */
  6041 ms  0x9be SECKEY_CreateECPrivateKey()
  6041 ms  0x9be cx:0x7f0be06e0588
  6043 ms     | 0x9be EC_ValidatePublicKey()
  6043 ms     | 0x9be ret:0x0
  6043 ms  0x9be ret:0x7f0be0640820::7f0be0640820  60 95 60 e0                                      `.`.
  6043 ms  0x9be SECKEY_CreateECPrivateKey()
  6043 ms  0x9be cx:0x7f0be06e0588
  6043 ms     | 0x9be EC_ValidatePublicKey()
  6045 ms     | 0x9be ret:0x0
  6045 ms  0x9be ret:0x7f0be0648020::7f0be0648020  40 97 60 e0                                      @.`.
           /* TID 0x9c6 */
  6046 ms  0x9c6 PR_Close()
  6046 ms  0x9c6 fd:0x7f0be093c130
           /* TID 0x9be */
  6053 ms  0x9be PK11_Encrypt()
  6053 ms  0x9be symkey:0x7f0be06b7680
  6053 ms  0x9be SECKEY_CreateECPrivateKey()
  6053 ms  0x9be cx:0x7f0be06e0248
  6054 ms     | 0x9be EC_ValidatePublicKey()
  6054 ms     | 0x9be ret:0x0
  6054 ms  0x9be ret:0x7f0be064a820::7f0be064a820  e0 92 60 e0                                      ..`.
  6054 ms  0x9be SECKEY_CreateECPrivateKey()
  6054 ms  0x9be cx:0x7f0be06e0248
  6054 ms     | 0x9be EC_ValidatePublicKey()
  6056 ms     | 0x9be ret:0x0
  6056 ms  0x9be ret:0x7f0be064c820::7f0be064c820  30 98 60 e0                                      0.`.
  6060 ms  0x9be SECKEY_CreateECPrivateKey()
  6060 ms  0x9be cx:0x7f0be06e03e8
  6060 ms     | 0x9be EC_ValidatePublicKey()
  6060 ms     | 0x9be ret:0x0
  6060 ms  0x9be ret:0x7f0be09c3820::7f0be09c3820  80 98 60 e0                                      ..`.
  6060 ms  0x9be SECKEY_CreateECPrivateKey()
  6060 ms  0x9be cx:0x7f0be06e03e8
  6061 ms     | 0x9be EC_ValidatePublicKey()
  6062 ms     | 0x9be ret:0x0
  6062 ms  0x9be ret:0x7f0be09c5820::7f0be09c5820  e0 82 97 e0                                      ....
  6077 ms  0x9be SECKEY_CreateECPrivateKey()
  6077 ms  0x9be cx:0x7f0be06e08c8
  6077 ms     | 0x9be EC_ValidatePublicKey()
  6077 ms     | 0x9be ret:0x0
  6077 ms  0x9be ret:0x7f0be09c8820::7f0be09c8820  70 89 97 e0                                      p...
  6077 ms  0x9be SECKEY_CreateECPrivateKey()
  6077 ms  0x9be cx:0x7f0be06e08c8
  6078 ms     | 0x9be EC_ValidatePublicKey()
  6079 ms     | 0x9be ret:0x0
  6079 ms  0x9be ret:0x7f0be09ca820::7f0be09ca820  20 8e 97 e0                                       ...
  6082 ms  0x9be SECKEY_CreateECPrivateKey()
  6082 ms  0x9be cx:0x7f0be06e0728
  6083 ms     | 0x9be EC_ValidatePublicKey()
  6083 ms     | 0x9be ret:0x0
  6083 ms  0x9be ret:0x7f0be09cd020::7f0be09cd020  00 11 9b e0                                      ....
  6083 ms  0x9be SECKEY_CreateECPrivateKey()
  6083 ms  0x9be cx:0x7f0be06e0728
  6083 ms     | 0x9be EC_ValidatePublicKey()
  6092 ms     | 0x9be ret:0x0
  6093 ms  0x9be ret:0x7f0be09cf020::7f0be09cf020  70 14 9b e0                                      p...
           /* TID 0x9c6 */
  6103 ms  0x9c6 PR_Close()
  6103 ms  0x9c6 fd:0x7f0be097c3a0
  6105 ms  0x9c6 PR_Close()
  6105 ms  0x9c6 fd:0x7f0be093cd30
  6106 ms  0x9c6 PR_Close()
  6106 ms  0x9c6 fd:0x7f0be093cd30
  6106 ms  0x9c6 PR_Close()
  6106 ms  0x9c6 fd:0x7f0be093cd30
  6107 ms  0x9c6 PR_Close()
  6107 ms  0x9c6 fd:0x7f0be093cd30
  6108 ms  0x9c6 PR_Close()
  6108 ms  0x9c6 fd:0x7f0be093cd30
  6109 ms  0x9c6 PR_Close()
  6109 ms  0x9c6 fd:0x7f0be093cd30
  6109 ms  0x9c6 PR_Close()
  6109 ms  0x9c6 fd:0x7f0be093cd30
           /* TID 0x9be */
  6110 ms  SECKEY_ECParamsToKeySize()
  6110 ms  0x9be ret:0x100
  6110 ms  0x9be SECKEY_CreateECPrivateKey()
  6110 ms  0x9be cx:0x7f0be06e0588
  6112 ms     | 0x9be EC_ValidatePublicKey()
  6113 ms     | 0x9be ret:0x0
  6113 ms  0x9be ret:0x7f0be09d1820::7f0be09d1820  00 16 9b e0                                      ....
  6113 ms  0x9be PK11_PubDeriveWithKDF()
  6113 ms  0x9be seckey:0x7f0be09d1820
  6113 ms     | 0x9be EC_ValidatePublicKey()
  6115 ms     | 0x9be ret:0x0
  6116 ms  0x9be ret:0x7f0be0eed180
  6116 ms  0x9be PK11_DeriveWithFlags()
  6116 ms  0x9be basekey:0x7f0be0eed180
  6116 ms     | 0x9be PK11_DeriveWithTemplate()
  6116 ms  0x9be ret:0x7f0be0b98d00
  6116 ms  0x9be PK11_Derive()
  6116 ms  0x9be basekey:0x7f0be0b98d00
  6116 ms     | 0x9be PK11_DeriveWithTemplate()
  6116 ms  0x9be ret:0x7f0be0b99780
  6116 ms  0x9be SECKEY_DestroyPrivateKey()
  6116 ms  0x9be privk:0x7f0be09d1820::7f0be09d1820  00 16 9b e0                                      ....
  6116 ms  0x9be privk:0x7f0be09d1820::7f0be09d1820  e5 e5 e5 e5                                      ....
  6116 ms  0x9be PK11_Encrypt()
  6116 ms  0x9be symkey:0x7f0be06b7880
  6161 ms  0x9be SECKEY_DestroyPrivateKey()
  6161 ms  0x9be privk:0x7f0be063e020::7f0be063e020  e0 87 97 e0                                      ....
  6161 ms  0x9be privk:0x7f0be063e020::7f0be063e020  e5 e5 e5 e5                                      ....
  6161 ms  0x9be SECKEY_DestroyPrivateKey()
  6161 ms  0x9be privk:0x7f0be063c020::7f0be063c020  00 86 97 e0                                      ....
  6161 ms  0x9be privk:0x7f0be063c020::7f0be063c020  e5 e5 e5 e5                                      ....
  6168 ms  0x9be PK11_Encrypt()
  6168 ms  0x9be symkey:0x7f0be09a5300
  6168 ms  0x9be PK11_Encrypt()
  6168 ms  0x9be symkey:0x7f0be09a5580
  6168 ms  0x9be PK11_Encrypt()
  6168 ms  0x9be symkey:0x7f0be09a5b00
  6168 ms  0x9be PK11_Encrypt()
  6168 ms  0x9be symkey:0x7f0be09a5e80
  6169 ms  0x9be PK11_Encrypt()
  6169 ms  0x9be symkey:0x7f0be06b6580
  6169 ms  0x9be PK11_Encrypt()
  6169 ms  0x9be symkey:0x7f0be06b6980
  6169 ms  0x9be SSL_AuthCertificateComplete()
  6169 ms  0x9be fd:0x7f0be09bf370
  6169 ms  0x9be err:0x0
  6169 ms  0x9be PK11_Encrypt()
  6169 ms  0x9be symkey:0x7f0be0eed300
  6169 ms  0x9be PK11_Encrypt()
  6169 ms  0x9be symkey:0x7f0be06b7880
  6170 ms  SECKEY_ECParamsToKeySize()
  6170 ms  0x9be ret:0x100
  6170 ms  0x9be SECKEY_CreateECPrivateKey()
  6170 ms  0x9be cx:0x7f0be06e0248
  6171 ms     | 0x9be EC_ValidatePublicKey()
  6172 ms     | 0x9be ret:0x0
  6172 ms  0x9be ret:0x7f0be09d3020::7f0be09d3020  30 e8 b5 e0                                      0...
  6172 ms  0x9be PK11_PubDeriveWithKDF()
  6172 ms  0x9be seckey:0x7f0be09d3020
  6172 ms     | 0x9be EC_ValidatePublicKey()
  6174 ms     | 0x9be ret:0x0
  6175 ms  0x9be ret:0x7f0be0eed180
  6175 ms  0x9be PK11_DeriveWithFlags()
  6175 ms  0x9be basekey:0x7f0be0eed180
  6175 ms     | 0x9be PK11_DeriveWithTemplate()
  6175 ms  0x9be ret:0x7f0be0eed400
  6175 ms  0x9be PK11_Derive()
  6175 ms  0x9be basekey:0x7f0be0eed400
  6175 ms     | 0x9be PK11_DeriveWithTemplate()
  6175 ms  0x9be ret:0x7f0be0ba1700
  6175 ms  0x9be SECKEY_DestroyPrivateKey()
  6175 ms  0x9be privk:0x7f0be09d3020::7f0be09d3020  30 e8 b5 e0                                      0...
  6176 ms  0x9be privk:0x7f0be09d3020::7f0be09d3020  e5 e5 e5 e5                                      ....
  6176 ms  0x9be PK11_Encrypt()
  6176 ms  0x9be symkey:0x7f0be0d1a600
           /* TID 0x9c6 */
  6180 ms  0x9c6 PR_Close()
  6180 ms  0x9c6 fd:0x7f0be093ca60
  6195 ms  0x9c6 PR_Close()
  6195 ms  0x9c6 fd:0x7f0be093c220
           /* TID 0x9be */
  6201 ms  SECKEY_ECParamsToKeySize()
  6201 ms  0x9be ret:0x100
  6201 ms  0x9be SECKEY_CreateECPrivateKey()
  6201 ms  0x9be cx:0x7f0be06e03e8
  6201 ms     | 0x9be EC_ValidatePublicKey()
  6203 ms     | 0x9be ret:0x0
  6203 ms  0x9be ret:0x7f0be09d5820::7f0be09d5820  50 8b 97 e0                                      P...
  6203 ms  0x9be PK11_PubDeriveWithKDF()
  6203 ms  0x9be seckey:0x7f0be09d5820
  6203 ms     | 0x9be EC_ValidatePublicKey()
  6204 ms     | 0x9be ret:0x0
  6206 ms  0x9be ret:0x7f0be0eed180
  6206 ms  0x9be PK11_DeriveWithFlags()
  6206 ms  0x9be basekey:0x7f0be0eed180
  6206 ms     | 0x9be PK11_DeriveWithTemplate()
  6206 ms  0x9be ret:0x7f0be0b99380
  6206 ms  0x9be PK11_Derive()
  6206 ms  0x9be basekey:0x7f0be0b99380
  6206 ms     | 0x9be PK11_DeriveWithTemplate()
  6206 ms  0x9be ret:0x7f0be0eed080
  6206 ms  0x9be SECKEY_DestroyPrivateKey()
  6206 ms  0x9be privk:0x7f0be09d5820::7f0be09d5820  50 8b 97 e0                                      P...
  6206 ms  0x9be privk:0x7f0be09d5820::7f0be09d5820  e5 e5 e5 e5                                      ....
  6206 ms  0x9be PK11_Encrypt()
  6206 ms  0x9be symkey:0x7f0be09a5900
  6217 ms  SECKEY_ECParamsToKeySize()
  6217 ms  0x9be ret:0x100
  6217 ms  0x9be SECKEY_CreateECPrivateKey()
  6217 ms  0x9be cx:0x7f0be06e08c8
  6218 ms     | 0x9be EC_ValidatePublicKey()
  6219 ms     | 0x9be ret:0x0
  6219 ms  0x9be ret:0x7f0be09d9820::7f0be09d9820  c0 19 9b e0                                      ....
  6219 ms  0x9be PK11_PubDeriveWithKDF()
  6219 ms  0x9be seckey:0x7f0be09d9820
  6219 ms     | 0x9be EC_ValidatePublicKey()
  6221 ms     | 0x9be ret:0x0
  6222 ms  0x9be ret:0x7f0be0eed180
  6222 ms  0x9be PK11_DeriveWithFlags()
  6222 ms  0x9be basekey:0x7f0be0eed180
  6222 ms     | 0x9be PK11_DeriveWithTemplate()
  6222 ms  0x9be ret:0x7f0be0b99a80
  6222 ms  0x9be PK11_Derive()
  6222 ms  0x9be basekey:0x7f0be0b99a80
  6222 ms     | 0x9be PK11_DeriveWithTemplate()
  6222 ms  0x9be ret:0x7f0be0b99480
  6222 ms  0x9be SECKEY_DestroyPrivateKey()
  6222 ms  0x9be privk:0x7f0be09d9820::7f0be09d9820  c0 19 9b e0                                      ....
  6222 ms  0x9be privk:0x7f0be09d9820::7f0be09d9820  e5 e5 e5 e5                                      ....
  6222 ms  0x9be PK11_Encrypt()
  6222 ms  0x9be symkey:0x7f0be0d89f00
  6231 ms  SECKEY_ECParamsToKeySize()
  6231 ms  0x9be ret:0x100
  6231 ms  0x9be SECKEY_CreateECPrivateKey()
  6231 ms  0x9be cx:0x7f0be06e0728
  6231 ms     | 0x9be EC_ValidatePublicKey()
  6233 ms     | 0x9be ret:0x0
  6233 ms  0x9be ret:0x7f0be09d9820::7f0be09d9820  50 1b 9b e0                                      P...
  6233 ms  0x9be PK11_PubDeriveWithKDF()
  6233 ms  0x9be seckey:0x7f0be09d9820
  6233 ms     | 0x9be EC_ValidatePublicKey()
  6234 ms     | 0x9be ret:0x0
  6236 ms  0x9be ret:0x7f0be0eed180
  6236 ms  0x9be PK11_DeriveWithFlags()
  6236 ms  0x9be basekey:0x7f0be0eed180
  6236 ms     | 0x9be PK11_DeriveWithTemplate()
  6236 ms  0x9be ret:0x7f0be0b99e00
  6236 ms  0x9be PK11_Derive()
  6236 ms  0x9be basekey:0x7f0be0b99e00
  6236 ms     | 0x9be PK11_DeriveWithTemplate()
  6236 ms  0x9be ret:0x7f0be0b99e80
  6236 ms  0x9be SECKEY_DestroyPrivateKey()
  6236 ms  0x9be privk:0x7f0be09d9820::7f0be09d9820  50 1b 9b e0                                      P...
  6236 ms  0x9be privk:0x7f0be09d9820::7f0be09d9820  e5 e5 e5 e5                                      ....
  6236 ms  0x9be PK11_Encrypt()
  6236 ms  0x9be symkey:0x7f0be0e71500
  6241 ms  0x9be SSL_AuthCertificateComplete()
  6241 ms  0x9be fd:0x7f0be09bf0a0
  6241 ms  0x9be err:0x0
  6241 ms  0x9be SSL_AuthCertificateComplete()
  6241 ms  0x9be fd:0x7f0be09bf2b0
  6241 ms  0x9be err:0x0
           /* TID 0x9c6 */
  6242 ms  0x9c6 PR_Close()
  6242 ms  0x9c6 fd:0x7f0be093c040
  6243 ms  0x9c6 PR_Close()
  6243 ms  0x9c6 fd:0x7f0be093c040
  6243 ms  0x9c6 PR_Close()
  6243 ms  0x9c6 fd:0x7f0be093c040
  6244 ms  0x9c6 PR_Close()
  6244 ms  0x9c6 fd:0x7f0be093c040
  6245 ms  0x9c6 PR_Close()
  6245 ms  0x9c6 fd:0x7f0be093c040
  6246 ms  0x9c6 PR_Close()
  6246 ms  0x9c6 fd:0x7f0be093c040
  6246 ms  0x9c6 PR_Close()
  6246 ms  0x9c6 fd:0x7f0be093c040
           /* TID 0x9be */
  6247 ms  0x9be SECKEY_DestroyPrivateKey()
  6247 ms  0x9be privk:0x7f0be0648020::7f0be0648020  40 97 60 e0                                      @.`.
  6247 ms  0x9be privk:0x7f0be0648020::7f0be0648020  e5 e5 e5 e5                                      ....
  6247 ms  0x9be SECKEY_DestroyPrivateKey()
  6247 ms  0x9be privk:0x7f0be0640820::7f0be0640820  60 95 60 e0                                      `.`.
  6247 ms  0x9be privk:0x7f0be0640820::7f0be0640820  e5 e5 e5 e5                                      ....
           /* TID 0x9c6 */
  6248 ms  0x9c6 PR_Close()
  6248 ms  0x9c6 fd:0x7f0be093c040
           /* TID 0x9be */
  6248 ms  0x9be PK11_Encrypt()
  6248 ms  0x9be symkey:0x7f0be0d89f00
  6249 ms  0x9be PK11_Encrypt()
  6249 ms  0x9be symkey:0x7f0be0e71500
  6249 ms  0x9be SSL_ImportFD()
  6249 ms  0x9be ret:0x7f0be093c3a0
  6249 ms  0x9be SSL_AuthCertificateHook()
  6249 ms  0x9be fd:0x7f0be093c3a0
  6249 ms  0x9be ret:0x0
  6249 ms  0x9be PR_Connect()
  6249 ms  0x9be fd:0x7f0be093c3a0
  6249 ms  0x9be SSL_ImportFD()
  6249 ms  0x9be ret:0x7f0be097cac0
  6249 ms  0x9be SSL_AuthCertificateHook()
  6249 ms  0x9be fd:0x7f0be097cac0
  6249 ms  0x9be ret:0x0
  6249 ms  0x9be PR_Connect()
  6249 ms  0x9be fd:0x7f0be097cac0
  6250 ms  0x9be PK11_Encrypt()
  6250 ms  0x9be symkey:0x7f0be06b7880
           /* TID 0x9c6 */
  6256 ms  0x9c6 PR_Close()
  6256 ms  0x9c6 fd:0x7f0be093c040
  6257 ms  0x9c6 PR_Close()
  6257 ms  0x9c6 fd:0x7f0be093c040
           /* TID 0x9be */
  6257 ms  0x9be PR_Connect()
  6257 ms  0x9be fd:0x7f0be093c100
           /* TID 0x9c6 */
  6258 ms  0x9c6 PR_Close()
  6258 ms  0x9c6 fd:0x7f0be093c040
  6259 ms  0x9c6 PR_Close()
  6259 ms  0x9c6 fd:0x7f0be093c040
  6259 ms  0x9c6 PR_Close()
  6259 ms  0x9c6 fd:0x7f0be093c040
  6260 ms  0x9c6 PR_Close()
  6260 ms  0x9c6 fd:0x7f0be093c040
  6267 ms  0x9c6 PR_Close()
  6267 ms  0x9c6 fd:0x7f0be093c040
           /* TID 0xa1e */
  6267 ms  0xa1e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6267 ms  0xa1e ret:0x0
           /* TID 0x9be */
  6268 ms  0x9be SSL_AuthCertificateComplete()
  6268 ms  0x9be fd:0x7f0be093c520
  6268 ms  0x9be err:0x0
  6268 ms     | 0x9be SECKEY_DestroyPrivateKey()
  6268 ms     | 0x9be privk:0x7f0be064c820::7f0be064c820  30 98 60 e0                                      0.`.
  6268 ms     | 0x9be privk:0x7f0be064c820::7f0be064c820  e5 e5 e5 e5                                      ....
  6268 ms     | 0x9be SECKEY_DestroyPrivateKey()
  6268 ms     | 0x9be privk:0x7f0be064a820::7f0be064a820  e0 92 60 e0                                      ..`.
  6268 ms     | 0x9be privk:0x7f0be064a820::7f0be064a820  e5 e5 e5 e5                                      ....
  6268 ms  0x9be PK11_Encrypt()
  6268 ms  0x9be symkey:0x7f0be0d1a600
  6271 ms  0x9be SECKEY_DestroyPrivateKey()
  6271 ms  0x9be privk:0x7f0be09ca820::7f0be09ca820  20 8e 97 e0                                       ...
  6272 ms  0x9be privk:0x7f0be09ca820::7f0be09ca820  e5 e5 e5 e5                                      ....
  6272 ms  0x9be SECKEY_DestroyPrivateKey()
  6272 ms  0x9be privk:0x7f0be09c8820::7f0be09c8820  70 89 97 e0                                      p...
  6272 ms  0x9be privk:0x7f0be09c8820::7f0be09c8820  e5 e5 e5 e5                                      ....
  6284 ms  0x9be SECKEY_DestroyPrivateKey()
  6284 ms  0x9be privk:0x7f0be09cf020::7f0be09cf020  70 14 9b e0                                      p...
  6284 ms  0x9be privk:0x7f0be09cf020::7f0be09cf020  e5 e5 e5 e5                                      ....
  6284 ms  0x9be SECKEY_DestroyPrivateKey()
  6284 ms  0x9be privk:0x7f0be09cd020::7f0be09cd020  00 11 9b e0                                      ....
  6284 ms  0x9be privk:0x7f0be09cd020::7f0be09cd020  e5 e5 e5 e5                                      ....
           /* TID 0x9c6 */
  6293 ms  0x9c6 PR_Close()
  6293 ms  0x9c6 fd:0x7f0be093c850
           /* TID 0xc5d */
  6293 ms  0xc5d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6293 ms  0xc5d ret:0x0
           /* TID 0x9be */
  6293 ms  0x9be SSL_AuthCertificateComplete()
  6293 ms  0x9be fd:0x7f0be097c2e0
  6293 ms  0x9be err:0x0
  6293 ms     | 0x9be SECKEY_DestroyPrivateKey()
  6293 ms     | 0x9be privk:0x7f0be09c5820::7f0be09c5820  e0 82 97 e0                                      ....
  6293 ms     | 0x9be privk:0x7f0be09c5820::7f0be09c5820  e5 e5 e5 e5                                      ....
  6293 ms     | 0x9be SECKEY_DestroyPrivateKey()
  6293 ms     | 0x9be privk:0x7f0be09c3820::7f0be09c3820  80 98 60 e0                                      ..`.
  6293 ms     | 0x9be privk:0x7f0be09c3820::7f0be09c3820  e5 e5 e5 e5                                      ....
  6293 ms  0x9be PK11_Encrypt()
  6293 ms  0x9be symkey:0x7f0be09a5900
  6296 ms  0x9be SECKEY_CreateECPrivateKey()
  6296 ms  0x9be cx:0x7f0be06e1c48
  6297 ms     | 0x9be EC_ValidatePublicKey()
  6297 ms     | 0x9be ret:0x0
  6297 ms  0x9be ret:0x7f0be0640820::7f0be0640820  c0 94 60 e0                                      ..`.
  6297 ms  0x9be SECKEY_CreateECPrivateKey()
  6297 ms  0x9be cx:0x7f0be06e1c48
  6298 ms     | 0x9be EC_ValidatePublicKey()
  6299 ms     | 0x9be ret:0x0
  6299 ms  0x9be ret:0x7f0be0643020::7f0be0643020  a0 96 60 e0                                      ..`.
  6303 ms  0x9be SECKEY_CreateECPrivateKey()
  6303 ms  0x9be cx:0x7f0be06e1de8
  6306 ms     | 0x9be EC_ValidatePublicKey()
  6306 ms     | 0x9be ret:0x0
  6306 ms  0x9be ret:0x7f0be0645820::7f0be0645820  a0 9b 60 e0                                      ..`.
  6306 ms  0x9be SECKEY_CreateECPrivateKey()
  6306 ms  0x9be cx:0x7f0be06e1de8
  6306 ms     | 0x9be EC_ValidatePublicKey()
  6308 ms     | 0x9be ret:0x0
  6308 ms  0x9be ret:0x7f0be0649820::7f0be0649820  00 d6 92 e0                                      ....
  6311 ms  0x9be PK11_Encrypt()
  6311 ms  0x9be symkey:0x7f0be0b98e80
           /* TID 0x9c6 */
  6314 ms  0x9c6 PR_Close()
  6314 ms  0x9c6 fd:0x7f0be09bf130
           /* TID 0x9be */
  6315 ms  0x9be PK11_Encrypt()
  6315 ms  0x9be symkey:0x7f0be06b7880
  6315 ms  0x9be SSL_ImportFD()
  6315 ms  0x9be ret:0x7f0be09bf5b0
  6315 ms  0x9be SSL_AuthCertificateHook()
  6315 ms  0x9be fd:0x7f0be09bf5b0
  6315 ms  0x9be ret:0x0
  6315 ms  0x9be PR_Connect()
  6315 ms  0x9be fd:0x7f0be09bf5b0
           /* TID 0x9c6 */
  6321 ms  0x9c6 PR_Close()
  6321 ms  0x9c6 fd:0x7f0be09bfa00
           /* TID 0x9be */
  6321 ms  0x9be PK11_Encrypt()
  6321 ms  0x9be symkey:0x7f0be0d89f00
  6332 ms  0x9be PK11_Encrypt()
  6332 ms  0x9be symkey:0x7f0be0e71500
           /* TID 0x9c6 */
  6333 ms  0x9c6 PR_Close()
  6333 ms  0x9c6 fd:0x7f0be093ca30
  6341 ms  0x9c6 PR_Close()
  6341 ms  0x9c6 fd:0x7f0be093ca30
           /* TID 0x9be */
  6349 ms  0x9be PK11_Derive()
  6349 ms  0x9be basekey:0x7f0be06b6b80
  6349 ms     | 0x9be PK11_DeriveWithTemplate()
  6349 ms  0x9be ret:0x7f0be0eed180
  6349 ms  0x9be PK11_Encrypt()
  6349 ms  0x9be symkey:0x7f0be0e70a80
  6350 ms  0x9be SECKEY_DestroyPrivateKey()
  6350 ms  0x9be privk:0x7f0be0643020::7f0be0643020  a0 96 60 e0                                      ..`.
  6350 ms  0x9be privk:0x7f0be0643020::7f0be0643020  e5 e5 e5 e5                                      ....
  6350 ms  0x9be SECKEY_DestroyPrivateKey()
  6350 ms  0x9be privk:0x7f0be0640820::7f0be0640820  c0 94 60 e0                                      ..`.
  6350 ms  0x9be privk:0x7f0be0640820::7f0be0640820  e5 e5 e5 e5                                      ....
  6351 ms  0x9be PK11_Encrypt()
  6351 ms  0x9be symkey:0x7f0be0e70a80
  6356 ms  0x9be PK11_Derive()
  6356 ms  0x9be basekey:0x7f0be0e71d00
  6356 ms     | 0x9be PK11_DeriveWithTemplate()
  6356 ms  0x9be ret:0x7f0be0e71c00
  6356 ms  0x9be PK11_Encrypt()
  6356 ms  0x9be symkey:0x7f0be0ee8300
  6357 ms  0x9be SECKEY_DestroyPrivateKey()
  6357 ms  0x9be privk:0x7f0be0649820::7f0be0649820  00 d6 92 e0                                      ....
  6357 ms  0x9be privk:0x7f0be0649820::7f0be0649820  e5 e5 e5 e5                                      ....
  6357 ms  0x9be SECKEY_DestroyPrivateKey()
  6357 ms  0x9be privk:0x7f0be0645820::7f0be0645820  a0 9b 60 e0                                      ..`.
  6357 ms  0x9be privk:0x7f0be0645820::7f0be0645820  e5 e5 e5 e5                                      ....
  6357 ms  0x9be PK11_Encrypt()
  6357 ms  0x9be symkey:0x7f0be0ee8300
  6362 ms  0x9be SECKEY_CreateECPrivateKey()
  6362 ms  0x9be cx:0x7f0be06e1f88
  6363 ms     | 0x9be EC_ValidatePublicKey()
  6363 ms     | 0x9be ret:0x0
  6363 ms  0x9be ret:0x7f0be0641820::7f0be0641820  80 93 60 e0                                      ..`.
  6363 ms  0x9be SECKEY_CreateECPrivateKey()
  6363 ms  0x9be cx:0x7f0be06e1f88
  6363 ms     | 0x9be EC_ValidatePublicKey()
  6365 ms     | 0x9be ret:0x0
  6365 ms  0x9be ret:0x7f0be0644820::7f0be0644820  50 96 60 e0                                      P.`.
           /* TID 0x9c6 */
  6371 ms  0x9c6 PR_Close()
  6371 ms  0x9c6 fd:0x7f0be09bf280
           /* TID 0x9be */
  6371 ms  0x9be PK11_Encrypt()
  6371 ms  0x9be symkey:0x7f0be0d89f00
  6374 ms  0x9be PK11_Encrypt()
  6374 ms  0x9be symkey:0x7f0be06b7880
           /* TID 0x9c6 */
  6374 ms  0x9c6 PR_Close()
  6374 ms  0x9c6 fd:0x7f0be093c4c0
           /* TID 0x9be */
  6381 ms  0x9be PK11_Encrypt()
  6381 ms  0x9be symkey:0x7f0be0e71500
           /* TID 0x9c6 */
  6382 ms  0x9c6 PR_Close()
  6382 ms  0x9c6 fd:0x7f0be093c4c0
           /* TID 0x9be */
  6413 ms  0x9be PK11_Derive()
  6413 ms  0x9be basekey:0x7f0bf2fb4c00
  6413 ms     | 0x9be PK11_DeriveWithTemplate()
  6413 ms  0x9be ret:0x7f0be0eedd80
  6413 ms  0x9be PK11_Encrypt()
  6413 ms  0x9be symkey:0x7f0bf4e43a00
  6414 ms  0x9be SECKEY_DestroyPrivateKey()
  6414 ms  0x9be privk:0x7f0be0644820::7f0be0644820  50 96 60 e0                                      P.`.
  6414 ms  0x9be privk:0x7f0be0644820::7f0be0644820  e5 e5 e5 e5                                      ....
  6414 ms  0x9be SECKEY_DestroyPrivateKey()
  6414 ms  0x9be privk:0x7f0be0641820::7f0be0641820  80 93 60 e0                                      ..`.
  6414 ms  0x9be privk:0x7f0be0641820::7f0be0641820  e5 e5 e5 e5                                      ....
  6414 ms  0x9be PK11_Encrypt()
  6414 ms  0x9be symkey:0x7f0bf4e43a00
  6421 ms  0x9be PK11_Encrypt()
  6421 ms  0x9be symkey:0x7f0be0b98e80
  6423 ms  0x9be PK11_Encrypt()
  6423 ms  0x9be symkey:0x7f0be0d89f00
           /* TID 0x9c6 */
  6424 ms  0x9c6 PR_Close()
  6424 ms  0x9c6 fd:0x7f0be093c400
           /* TID 0x9be */
  6426 ms  0x9be PK11_Encrypt()
  6426 ms  0x9be symkey:0x7f0be06b7880
           /* TID 0x9c6 */
  6427 ms  0x9c6 PR_Close()
  6427 ms  0x9c6 fd:0x7f0be093c0d0
           /* TID 0x9be */
  6438 ms  0x9be PK11_Encrypt()
  6438 ms  0x9be symkey:0x7f0be0e71500
           /* TID 0x9c6 */
  6439 ms  0x9c6 PR_Close()
  6439 ms  0x9c6 fd:0x7f0be093c0d0
  6450 ms  0x9c6 PR_Close()
  6450 ms  0x9c6 fd:0x7f0be093c0d0
           /* TID 0x9be */
  6464 ms  0x9be SSL_ImportFD()
  6464 ms  0x9be ret:0x7f0be093c760
  6464 ms  0x9be SSL_AuthCertificateHook()
  6464 ms  0x9be fd:0x7f0be093c760
  6464 ms  0x9be ret:0x0
  6464 ms  0x9be PR_Connect()
  6464 ms  0x9be fd:0x7f0be093c760
  6476 ms  0x9be PK11_Encrypt()
  6476 ms  0x9be symkey:0x7f0be0d89f00
           /* TID 0x9c6 */
  6477 ms  0x9c6 PR_Close()
  6477 ms  0x9c6 fd:0x7f0be093c0d0
           /* TID 0x9be */
  6485 ms  0x9be PK11_Encrypt()
  6485 ms  0x9be symkey:0x7f0be0e70a80
           /* TID 0x9c6 */
  6486 ms  0x9c6 PR_Close()
  6486 ms  0x9c6 fd:0x7f0be093c0d0
           /* TID 0x9be */
  6486 ms  0x9be PK11_Encrypt()
  6486 ms  0x9be symkey:0x7f0be06b7880
           /* TID 0x9c6 */
  6486 ms  0x9c6 PR_Close()
  6486 ms  0x9c6 fd:0x7f0be093c400
           /* TID 0x9be */
  6489 ms  0x9be SECKEY_CreateECPrivateKey()
  6489 ms  0x9be cx:0x7f0be06e2128
           /* TID 0x9c6 */
  6490 ms  0x9c6 PR_Close()
  6490 ms  0x9c6 fd:0x7f0be097c4f0
           /* TID 0x9be */
  6491 ms     | 0x9be EC_ValidatePublicKey()
  6491 ms     | 0x9be ret:0x0
  6491 ms  0x9be ret:0x7f0be0641820::7f0be0641820  60 95 60 e0                                      `.`.
  6491 ms  0x9be SECKEY_CreateECPrivateKey()
  6491 ms  0x9be cx:0x7f0be06e2128
  6491 ms     | 0x9be EC_ValidatePublicKey()
  6493 ms     | 0x9be ret:0x0
  6493 ms  0x9be ret:0x7f0be0644820::7f0be0644820  90 d2 92 e0                                      ....
           /* TID 0x9c6 */
  6494 ms  0x9c6 PR_Close()
  6494 ms  0x9c6 fd:0x7f0be097c4f0
           /* TID 0x9be */
  6519 ms  0x9be PK11_Derive()
  6519 ms  0x9be basekey:0x7f0be0936d80
  6520 ms     | 0x9be PK11_DeriveWithTemplate()
  6520 ms  0x9be ret:0x7f0bf7de3500
  6520 ms  0x9be PK11_PubDeriveWithKDF()
  6520 ms  0x9be seckey:0x7f0be0644820
  6520 ms     | 0x9be EC_ValidatePublicKey()
  6521 ms     | 0x9be ret:0x0
  6523 ms  0x9be ret:0x7f0be0936d80
  6523 ms  SECKEY_ECParamsToKeySize()
  6523 ms  0x9be ret:0x100
  6523 ms  0x9be PK11_DeriveWithFlags()
  6523 ms  0x9be basekey:0x7f0bf7de3500
  6523 ms     | 0x9be PK11_DeriveWithTemplate()
  6523 ms  0x9be ret:0x7f0bf7de3e00
  6523 ms  0x9be PK11_Derive()
  6523 ms  0x9be basekey:0x7f0be0936d80
  6523 ms     | 0x9be PK11_DeriveWithTemplate()
  6523 ms  0x9be ret:0x7f0bf7dec500
  6523 ms  0x9be PK11_DeriveWithFlags()
  6523 ms  0x9be basekey:0x7f0bf7dec500
  6523 ms     | 0x9be PK11_DeriveWithTemplate()
  6523 ms  0x9be ret:0x7f0bf7de3500
  6523 ms  0x9be PK11_DeriveWithFlags()
  6523 ms  0x9be basekey:0x7f0bf7dec500
  6523 ms     | 0x9be PK11_DeriveWithTemplate()
  6523 ms  0x9be ret:0x7f0be0936d80
  6523 ms  0x9be PK11_DeriveWithFlags()
  6523 ms  0x9be basekey:0x7f0bf7dec500
  6523 ms     | 0x9be PK11_DeriveWithTemplate()
  6523 ms  0x9be ret:0x7f0bf7de3e00
  6523 ms  0x9be PK11_Derive()
  6523 ms  0x9be basekey:0x7f0bf7dedb00
  6523 ms     | 0x9be PK11_DeriveWithTemplate()
  6523 ms  0x9be ret:0x7f0bf7f05a00
  6523 ms  0x9be PK11_DeriveWithFlags()
  6523 ms  0x9be basekey:0x7f0be0936d80
  6523 ms     | 0x9be PK11_DeriveWithTemplate()
  6523 ms  0x9be ret:0x7f0bf7dec500
  6523 ms  0x9be PK11_DeriveWithFlags()
  6523 ms  0x9be basekey:0x7f0be0936d80
  6523 ms     | 0x9be PK11_DeriveWithTemplate()
  6523 ms  0x9be ret:0x7f0bf7de3e00
           /* TID 0xc5e */
  6535 ms  0xc5e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6535 ms  0xc5e ret:0x0
           /* TID 0x9be */
  6535 ms  0x9be PK11_DeriveWithFlags()
  6535 ms  0x9be basekey:0x7f0be0936d80
  6535 ms     | 0x9be PK11_DeriveWithTemplate()
  6535 ms  0x9be ret:0x7f0bf7de3e00
  6535 ms  0x9be SSL_AuthCertificateComplete()
  6535 ms  0x9be fd:0x7f0be093c760
  6535 ms  0x9be err:0x0
  6535 ms     | 0x9be PK11_DeriveWithFlags()
  6535 ms     | 0x9be basekey:0x7f0bf7f05a00
  6535 ms     |    | 0x9be PK11_DeriveWithTemplate()
  6535 ms     | 0x9be ret:0x7f0bf7de3e00
  6535 ms     | 0x9be PK11_DeriveWithFlags()
  6535 ms     | 0x9be basekey:0x7f0bf7f05a00
  6536 ms     |    | 0x9be PK11_DeriveWithTemplate()
  6536 ms     | 0x9be ret:0x7f0bf7dedb00
  6536 ms     | 0x9be PK11_DeriveWithFlags()
  6536 ms     | 0x9be basekey:0x7f0bf7f05a00
  6536 ms     |    | 0x9be PK11_DeriveWithTemplate()
  6536 ms     | 0x9be ret:0x7f0be0eed780
  6536 ms     | 0x9be PK11_DeriveWithFlags()
  6536 ms     | 0x9be basekey:0x7f0bf7de3500
  6536 ms     |    | 0x9be PK11_DeriveWithTemplate()
  6536 ms     | 0x9be ret:0x7f0bf7de3580
  6536 ms     | 0x9be PK11_DeriveWithFlags()
  6536 ms     | 0x9be basekey:0x7f0bf7de3500
  6536 ms     |    | 0x9be PK11_DeriveWithTemplate()
  6536 ms     | 0x9be ret:0x7f0bf7f05f80
  6536 ms     | 0x9be PK11_DeriveWithFlags()
  6536 ms     | 0x9be basekey:0x7f0bf7dedb00
  6536 ms     |    | 0x9be PK11_DeriveWithTemplate()
  6536 ms     | 0x9be ret:0x7f0bf7f05f80
  6536 ms     | 0x9be PK11_DeriveWithFlags()
  6536 ms     | 0x9be basekey:0x7f0bf7dedb00
  6536 ms     |    | 0x9be PK11_DeriveWithTemplate()
  6536 ms     | 0x9be ret:0x7f0bf7f06280
  6536 ms     | 0x9be PK11_DeriveWithFlags()
  6536 ms     | 0x9be basekey:0x7f0bf7de3500
  6536 ms     |    | 0x9be PK11_DeriveWithTemplate()
  6536 ms     | 0x9be ret:0x7f0bf7dec500
  6536 ms     | 0x9be PK11_Encrypt()
  6536 ms     | 0x9be symkey:0x7f0bf7de3580
  6536 ms     | 0x9be PK11_DeriveWithFlags()
  6536 ms     | 0x9be basekey:0x7f0bf7de3e00
  6536 ms     |    | 0x9be PK11_DeriveWithTemplate()
  6536 ms     | 0x9be ret:0x7f0bf7dec500
  6536 ms     | 0x9be PK11_DeriveWithFlags()
  6536 ms     | 0x9be basekey:0x7f0bf7de3e00
  6536 ms     |    | 0x9be PK11_DeriveWithTemplate()
  6536 ms     | 0x9be ret:0x7f0bf7f06280
  6536 ms     | 0x9be PK11_DeriveWithFlags()
  6536 ms     | 0x9be basekey:0x7f0bf7f05a00
  6536 ms     |    | 0x9be PK11_DeriveWithTemplate()
  6536 ms     | 0x9be ret:0x7f0bf7de3580
  6536 ms     | 0x9be SECKEY_DestroyPrivateKey()
  6536 ms     | 0x9be privk:0x7f0be0644820::7f0be0644820  90 d2 92 e0                                      ....
  6536 ms     | 0x9be privk:0x7f0be0644820::7f0be0644820  e5 e5 e5 e5                                      ....
  6536 ms     | 0x9be SECKEY_DestroyPrivateKey()
  6536 ms     | 0x9be privk:0x7f0be0641820::7f0be0641820  60 95 60 e0                                      `.`.
  6536 ms     | 0x9be privk:0x7f0be0641820::7f0be0641820  e5 e5 e5 e5                                      ....
  6537 ms  0x9be PK11_Encrypt()
  6537 ms  0x9be symkey:0x7f0bf7dec500
  6537 ms  0x9be PK11_Encrypt()
  6537 ms  0x9be symkey:0x7f0bf7dec500
           /* TID 0x9c6 */
  6542 ms  0x9c6 PR_Close()
  6542 ms  0x9c6 fd:0x7f0be097c520
  6543 ms  0x9c6 PR_Close()
  6543 ms  0x9c6 fd:0x7f0be097c520
  6547 ms  0x9c6 PR_Close()
  6547 ms  0x9c6 fd:0x7f0be097c520
  6551 ms  0x9c6 PR_Close()
  6551 ms  0x9c6 fd:0x7f0be097c520
           /* TID 0x9be */
  6561 ms  0x9be PK11_DeriveWithFlags()
  6561 ms  0x9be basekey:0x7f0bf7de3580
  6561 ms     | 0x9be PK11_DeriveWithTemplate()
  6561 ms  0x9be ret:0x7f0be0936d80
  6561 ms  0x9be PK11_DeriveWithFlags()
  6561 ms  0x9be basekey:0x7f0bf7de3580
  6561 ms     | 0x9be PK11_DeriveWithTemplate()
  6561 ms  0x9be ret:0x7f0be0936d80
  6561 ms  0x9be PK11_Encrypt()
  6561 ms  0x9be symkey:0x7f0bf7dec500
  6579 ms  0x9be PK11_Encrypt()
  6579 ms  0x9be symkey:0x7f0bf7dec500
           /* TID 0x9c6 */
  6590 ms  0x9c6 PR_Close()
  6590 ms  0x9c6 fd:0x7f0be093c880
  6629 ms  0x9c6 PR_Close()
  6629 ms  0x9c6 fd:0x7f0be097c6d0
           /* TID 0x9be */
  6630 ms  0x9be PK11_Encrypt()
  6630 ms  0x9be symkey:0x7f0be0df1f80
  6633 ms  0x9be SSL_ImportFD()
  6633 ms  0x9be ret:0x7f0be0b0ca00
  6633 ms  0x9be SSL_AuthCertificateHook()
  6633 ms  0x9be fd:0x7f0be0b0ca00
  6633 ms  0x9be ret:0x0
  6633 ms  0x9be PR_Connect()
  6633 ms  0x9be fd:0x7f0be0b0ca00
  6687 ms  0x9be SECKEY_CreateECPrivateKey()
  6687 ms  0x9be cx:0x7f0be06e2ae8
  6687 ms     | 0x9be EC_ValidatePublicKey()
  6687 ms     | 0x9be ret:0x0
  6687 ms  0x9be ret:0x7f0be0649020::7f0be0649020  90 82 97 e0                                      ....
  6687 ms  0x9be SECKEY_CreateECPrivateKey()
  6687 ms  0x9be cx:0x7f0be06e2ae8
  6688 ms     | 0x9be EC_ValidatePublicKey()
  6690 ms     | 0x9be ret:0x0
  6690 ms  0x9be ret:0x7f0be09c2820::7f0be09c2820  00 86 97 e0                                      ....
           /* TID 0x9c6 */
  6695 ms  0x9c6 PR_Close()
  6695 ms  0x9c6 fd:0x7f0be0b0c520
           /* TID 0x9be */
  6744 ms  0x9be PK11_Derive()
  6744 ms  0x9be basekey:0x7f0bf7de3500
  6744 ms     | 0x9be PK11_DeriveWithTemplate()
  6744 ms  0x9be ret:0x7f0be0936d80
  6744 ms  0x9be PK11_Encrypt()
  6744 ms  0x9be symkey:0x7f0be0936880
  6745 ms  0x9be SECKEY_DestroyPrivateKey()
  6745 ms  0x9be privk:0x7f0be09c2820::7f0be09c2820  00 86 97 e0                                      ....
  6745 ms  0x9be privk:0x7f0be09c2820::7f0be09c2820  e5 e5 e5 e5                                      ....
  6745 ms  0x9be SECKEY_DestroyPrivateKey()
  6745 ms  0x9be privk:0x7f0be0649020::7f0be0649020  90 82 97 e0                                      ....
  6745 ms  0x9be privk:0x7f0be0649020::7f0be0649020  e5 e5 e5 e5                                      ....
  6745 ms  0x9be PK11_Encrypt()
  6745 ms  0x9be symkey:0x7f0be0936880
  6776 ms  0x9be PR_Close()
  6776 ms  0x9be fd:0x7f0bf2c8bd30
           /* TID 0x9b3 */
  6777 ms  0x9b3 EC_ValidatePublicKey()
  6779 ms  0x9b3 ret:0x0
  6779 ms  0x9b3 EC_ValidatePublicKey()
  6780 ms  0x9b3 ret:0x0
  6780 ms  0x9b3 EC_ValidatePublicKey()
  6787 ms  0x9b3 ret:0x0
  6787 ms  0x9b3 EC_ValidatePublicKey()
  6788 ms  0x9b3 ret:0x0
  6788 ms  0x9b3 EC_ValidatePublicKey()
  6789 ms  0x9b3 ret:0x0
  6790 ms  0x9b3 EC_ValidatePublicKey()
  6802 ms  0x9b3 ret:0x0
  6802 ms  0x9b3 EC_ValidatePublicKey()
  6804 ms  0x9b3 ret:0x0
  6804 ms  0x9b3 EC_ValidatePublicKey()
  6805 ms  0x9b3 ret:0x0
  6805 ms  0x9b3 EC_ValidatePublicKey()
  6806 ms  0x9b3 ret:0x0
  6806 ms  0x9b3 EC_ValidatePublicKey()
  6808 ms  0x9b3 ret:0x0
           /* TID 0x9be */
  6811 ms  0x9be PK11_Encrypt()
  6811 ms  0x9be symkey:0x7f0be0eed300
  6811 ms  0x9be PK11_Encrypt()
  6811 ms  0x9be symkey:0x7f0be0b98e80
  6811 ms  0x9be PK11_Encrypt()
  6811 ms  0x9be symkey:0x7f0bf7dec500
  6811 ms  0x9be PR_Close()
  6811 ms  0x9be fd:0x7f0be09bf5b0
  6811 ms     | 0x9be PK11_Encrypt()
  6811 ms     | 0x9be symkey:0x7f0bf4e43a00
  6812 ms  0x9be PR_Close()
  6812 ms  0x9be fd:0x7f0be093c100
  6812 ms  0x9be PR_Close()
  6812 ms  0x9be fd:0x7f0be093c3a0
  6812 ms     | 0x9be PK11_Encrypt()
  6812 ms     | 0x9be symkey:0x7f0be0e70a80
  6812 ms  0x9be PR_Close()
  6812 ms  0x9be fd:0x7f0be097cac0
  6812 ms     | 0x9be PK11_Encrypt()
  6812 ms     | 0x9be symkey:0x7f0be0ee8300
  6812 ms  0x9be PR_Close()
  6812 ms  0x9be fd:0x7f0be09bf2b0
  6812 ms     | 0x9be PK11_Encrypt()
  6812 ms     | 0x9be symkey:0x7f0be0e71500
  6812 ms  0x9be PR_Close()
  6812 ms  0x9be fd:0x7f0be09bf0a0
  6812 ms     | 0x9be PK11_Encrypt()
  6812 ms     | 0x9be symkey:0x7f0be0d89f00
  6813 ms  0x9be PR_Close()
  6813 ms  0x9be fd:0x7f0be097c2e0
  6813 ms     | 0x9be PK11_Encrypt()
  6813 ms     | 0x9be symkey:0x7f0be09a5900
  6813 ms  0x9be PR_Close()
  6813 ms  0x9be fd:0x7f0be093c520
  6813 ms     | 0x9be PK11_Encrypt()
  6813 ms     | 0x9be symkey:0x7f0be0d1a600
  6813 ms  0x9be PR_Close()
  6813 ms  0x9be fd:0x7f0be097ccd0
  6813 ms     | 0x9be PK11_Encrypt()
  6813 ms     | 0x9be symkey:0x7f0be06b7680
  6813 ms  0x9be PR_Close()
  6813 ms  0x9be fd:0x7f0be09bf370
  6813 ms     | 0x9be PK11_Encrypt()
  6813 ms     | 0x9be symkey:0x7f0be06b7880
  6814 ms  0x9be PR_Close()
  6814 ms  0x9be fd:0x7f0be0e64b80
  6814 ms     | 0x9be PK11_Encrypt()
  6814 ms     | 0x9be symkey:0x7f0be06b6980
  6814 ms  0x9be PR_Close()
  6814 ms  0x9be fd:0x7f0be093c5e0
  6814 ms     | 0x9be PK11_Encrypt()
  6814 ms     | 0x9be symkey:0x7f0be06b6580
  6814 ms  0x9be PR_Close()
  6814 ms  0x9be fd:0x7f0be093cbe0
  6814 ms     | 0x9be PK11_Encrypt()
  6814 ms     | 0x9be symkey:0x7f0be09a5e80
  6814 ms  0x9be PR_Close()
  6814 ms  0x9be fd:0x7f0be093ccd0
  6814 ms     | 0x9be PK11_Encrypt()
  6814 ms     | 0x9be symkey:0x7f0be09a5b00
  6814 ms  0x9be PR_Close()
  6814 ms  0x9be fd:0x7f0be093cd90
  6814 ms     | 0x9be PK11_Encrypt()
  6814 ms     | 0x9be symkey:0x7f0be09a5580
  6815 ms  0x9be PR_Close()
  6815 ms  0x9be fd:0x7f0be093ce50
  6815 ms     | 0x9be PK11_Encrypt()
  6815 ms     | 0x9be symkey:0x7f0be09a5300
  6815 ms  0x9be PR_Close()
  6815 ms  0x9be fd:0x7f0be0ded820
  6815 ms  0x9be PR_Close()
  6815 ms  0x9be fd:0x7f0be0ded5b0
  6815 ms     | 0x9be PK11_Encrypt()
  6815 ms     | 0x9be symkey:0x7f0be0df1f80
  6815 ms  0x9be PR_Close()
  6815 ms  0x9be fd:0x7f0bf2291d60
  6815 ms     | 0x9be PK11_Encrypt()
  6815 ms     | 0x9be symkey:0x7f0bf1c8f680
  6815 ms  0x9be PR_Close()
  6815 ms  0x9be fd:0x7f0bf2291b50
  6815 ms  0x9be PR_Close()
  6815 ms  0x9be fd:0x7f0bf22915e0
  6815 ms     | 0x9be PK11_Encrypt()
  6815 ms     | 0x9be symkey:0x7f0bf4084300
           /* TID 0xa10 */
  6816 ms  0xa10 PR_Close()
  6816 ms  0xa10 fd:0x7f0be093c100
  6816 ms  0xa10 PR_Close()
  6816 ms  0xa10 fd:0x7f0be093c100
           /* TID 0x9be */
  6821 ms  0x9be PR_Close()
  6821 ms  0x9be fd:0x7f0bf2c8af40
  6821 ms  0x9be PR_Close()
  6821 ms  0x9be fd:0x7f0be0b97640
  6821 ms     | 0x9be PK11_Encrypt()
  6821 ms     | 0x9be symkey:0x7f0be0b98e80
  6822 ms  0x9be PR_Close()
  6822 ms  0x9be fd:0x7f0be093c760
  6822 ms     | 0x9be PK11_Encrypt()
  6822 ms     | 0x9be symkey:0x7f0bf7dec500
  6822 ms  0x9be PR_Close()
  6822 ms  0x9be fd:0x7f0be093cfd0
  6822 ms     | 0x9be PK11_Encrypt()
  6822 ms     | 0x9be symkey:0x7f0be0eed300
           /* TID 0x9b3 */
  6841 ms  0x9b3 PR_Close()
  6841 ms  0x9b3 fd:0x7f0bf2f92b20
  6846 ms  0x9b3 PR_Close()
  6846 ms  0x9b3 fd:0x7f0be093cf40
  6847 ms  0x9b3 PR_Close()
  6847 ms  0x9b3 fd:0x7f0be097c040
  6847 ms  0x9b3 PR_Close()
  6847 ms  0x9b3 fd:0x7f0be093cf40
  6848 ms  0x9b3 PR_Close()
  6848 ms  0x9b3 fd:0x7f0be097c040
  6848 ms  0x9b3 PR_Close()
  6848 ms  0x9b3 fd:0x7f0be093cf40
           /* TID 0xa2e */
  6858 ms  0xa2e PR_Close()
  6858 ms  0xa2e fd:0x7f0be093cf40
           /* TID 0x9b3 */
  6885 ms  0x9b3 PR_Close()
  6885 ms  0x9b3 fd:0x7f0be097c040
  6885 ms  0x9b3 PR_Close()
  6885 ms  0x9b3 fd:0x7f0be09bf310
  6886 ms  0x9b3 PR_Close()
  6886 ms  0x9b3 fd:0x7f0be097c040
  6886 ms  0x9b3 PR_Close()
  6886 ms  0x9b3 fd:0x7f0be09bf310
  6887 ms  0x9b3 PR_Close()
  6887 ms  0x9b3 fd:0x7f0bfcdc89a0
  6887 ms  0x9b3 PR_Close()
  6887 ms  0x9b3 fd:0x7f0bfcdc88b0
  6887 ms  0x9b3 PR_Close()
  6887 ms  0x9b3 fd:0x7f0bfcdc8a60
  6889 ms  0x9b3 PR_Close()
  6889 ms  0x9b3 fd:0x7f0be09bf340
  6890 ms  0x9b3 PR_Close()
  6890 ms  0x9b3 fd:0x7f0be09bf340
           /* TID 0x9be */
  6892 ms  0x9be PR_Close()
  6892 ms  0x9be fd:0x7f0be0b0ca00
  6892 ms     | 0x9be PK11_Encrypt()
  6892 ms     | 0x9be symkey:0x7f0be0936880
           /* TID 0x9b3 */
  6894 ms  0x9b3 PR_Close()
  6894 ms  0x9b3 fd:0x7f0be097c040
  6895 ms  0x9b3 PR_Close()
  6895 ms  0x9b3 fd:0x7f0be09bf430
  6895 ms  0x9b3 PR_Close()
  6895 ms  0x9b3 fd:0x7f0be097c040
  6895 ms  0x9b3 PR_Close()
  6895 ms  0x9b3 fd:0x7f0be09bf430
  6898 ms  0x9b3 PR_Close()
  6898 ms  0x9b3 fd:0x7f0be09bf460
  6899 ms  0x9b3 PR_Close()
  6899 ms  0x9b3 fd:0x7f0be09bf460
  6902 ms  0x9b3 PR_Close()
  6902 ms  0x9b3 fd:0x7f0be097c040
  6902 ms  0x9b3 PR_Close()
  6902 ms  0x9b3 fd:0x7f0be09bf4c0
  6903 ms  0x9b3 PR_Close()
  6903 ms  0x9b3 fd:0x7f0be097c040
  6903 ms  0x9b3 PR_Close()
  6903 ms  0x9b3 fd:0x7f0be09bf4c0
  6905 ms  0x9b3 PR_Close()
  6905 ms  0x9b3 fd:0x7f0be09bf4f0
  6907 ms  0x9b3 PR_Close()
  6907 ms  0x9b3 fd:0x7f0be09bf4f0
  6915 ms  0x9b3 PR_Close()
  6915 ms  0x9b3 fd:0x7f0be09bf730
  6916 ms  0x9b3 PR_Close()
  6916 ms  0x9b3 fd:0x7f0be09bf730
  6918 ms  0x9b3 PR_Close()
  6918 ms  0x9b3 fd:0x7f0be09bf760
           /* TID 0xa2e */
  6926 ms  0xa2e PR_Close()
  6926 ms  0xa2e fd:0x7f0be093cfd0
  6927 ms  0xa2e PR_Close()
  6927 ms  0xa2e fd:0x7f0be093cfd0
           /* TID 0x9b3 */
  6927 ms  0x9b3 PR_Close()
  6927 ms  0x9b3 fd:0x7f0be097c040
  6927 ms  0x9b3 PR_Close()
  6927 ms  0x9b3 fd:0x7f0be093cfd0
           /* TID 0xa2e */
  6936 ms  0xa2e PR_Close()
  6936 ms  0xa2e fd:0x7f0be093cf40
           /* TID 0x9c6 */
  6943 ms  0x9c6 PR_Close()
  6943 ms  0x9c6 fd:0x7f0be09bf040
           /* TID 0xa2e */
  6969 ms  0xa2e PR_Close()
  6969 ms  0xa2e fd:0x7f0be093c8b0
           /* TID 0x9b8 */
  6978 ms  0x9b8 PR_Close()
  6978 ms  0x9b8 fd:0x7f0bfb8e0e20
           /* TID 0xa2e */
  6991 ms  0xa2e PR_Close()
  6991 ms  0xa2e fd:0x7f0be093cac0
           /* TID 0x9b3 */
  6998 ms  0x9b3 PR_Close()
  6998 ms  0x9b3 fd:0x7f0be097c040
  6999 ms  0x9b3 PR_Close()
  6999 ms  0x9b3 fd:0x7f0be093cac0
           /* TID 0x9b8 */
  7002 ms  0x9b8 PR_Close()
  7002 ms  0x9b8 fd:0x7f0bf7f32820
           /* TID 0x9be */
  7006 ms  0x9be PR_Close()
  7006 ms  0x9be fd:0x7f0be097c760
  7006 ms  0x9be PR_Close()
  7006 ms  0x9be fd:0x7f0bf200bd00
           /* TID 0xa10 */
  7007 ms  0xa10 PR_Close()
  7007 ms  0xa10 fd:0x7f0be09bf6d0
  7007 ms  0xa10 PR_Close()
  7007 ms  0xa10 fd:0x7f0be093c430
  7007 ms  0xa10 PR_Close()
  7007 ms  0xa10 fd:0x7f0be093c430
  7007 ms  0xa10 PR_Close()
  7007 ms  0xa10 fd:0x7f0be093c430
           /* TID 0xa2e */
  7007 ms  0xa2e PR_Close()
  7007 ms  0xa2e fd:0x7f0be097c3d0
           /* TID 0x9c6 */
  7010 ms  0x9c6 PR_Close()
  7010 ms  0x9c6 fd:0x7f0be0b970d0
  7010 ms  0x9c6 PR_Close()
  7010 ms  0x9c6 fd:0x7f0be0b97190
           /* TID 0x9b8 */
  7017 ms  0x9b8 PR_Close()
  7017 ms  0x9b8 fd:0x7f0bf200ba60
           /* TID 0x9b3 */
  7019 ms  0x9b3 PR_Close()
  7019 ms  0x9b3 fd:0x7f0be093cbe0
  7019 ms  0x9b3 PR_Close()
  7019 ms  0x9b3 fd:0x7f0be0b973a0
           /* TID 0xa2e */
  7022 ms  0xa2e PR_Close()
  7022 ms  0xa2e fd:0x7f0be0b0c940
  7024 ms  0xa2e PR_Close()
  7024 ms  0xa2e fd:0x7f0be0b0c940
  7099 ms  0xa2e PR_Close()
  7099 ms  0xa2e fd:0x7f0be093c340
  7102 ms  0xa2e PR_Close()
  7102 ms  0xa2e fd:0x7f0be093c340
  7126 ms  0xa2e PR_Close()
  7126 ms  0xa2e fd:0x7f0be093c9d0
  7128 ms  0xa2e PR_Close()
  7128 ms  0xa2e fd:0x7f0be093cd30
  7148 ms  0xa2e PR_Close()
  7148 ms  0xa2e fd:0x7f0be097cb20
  7155 ms  0xa2e PR_Close()
  7155 ms  0xa2e fd:0x7f0be0b0cee0
  7163 ms  0xa2e PR_Close()
  7163 ms  0xa2e fd:0x7f0be0b972e0
  7172 ms  0xa2e PR_Close()
  7172 ms  0xa2e fd:0x7f0be0b97400
  7174 ms  0xa2e PR_Close()
  7174 ms  0xa2e fd:0x7f0be0b97400
           /* TID 0x9b3 */
  7331 ms  0x9b3 PR_Close()
  7331 ms  0x9b3 fd:0x7f0be093c1c0
  7332 ms  0x9b3 PR_Close()
  7332 ms  0x9b3 fd:0x7f0be093c1c0
  7338 ms  0x9b3 PR_Close()
  7338 ms  0x9b3 fd:0x7f0c1a0da130
  7338 ms  0x9b3 PR_Close()
  7338 ms  0x9b3 fd:0x7f0c1a0da190
Process terminated
