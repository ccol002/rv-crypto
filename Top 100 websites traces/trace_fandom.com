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
           /* TID 0x122e */
    65 ms  0x122e SECKEY_DestroyPrivateKey()
    65 ms  0x122e privk:0x7f6e91bd2820::7f6e91bd2820  60 3f 7e 96                                      `?~.
    65 ms  0x122e privk:0x7f6e91bd2820::7f6e91bd2820  e5 e5 e5 e5                                      ....
    65 ms  0x122e SECKEY_DestroyPrivateKey()
    65 ms  0x122e privk:0x7f6e91bd0820::7f6e91bd0820  b0 7f 4b 92                                      ..K.
    66 ms  0x122e privk:0x7f6e91bd0820::7f6e91bd0820  e5 e5 e5 e5                                      ....
           /* TID 0x1236 */
   281 ms  0x1236 PR_Close()
   281 ms  0x1236 fd:0x7f6e90f7f940
           /* TID 0x122e */
   291 ms  0x122e SSL_ImportFD()
   291 ms  0x122e ret:0x7f6e90f7fdf0
   291 ms  0x122e SSL_AuthCertificateHook()
   291 ms  0x122e fd:0x7f6e90f7fdf0
   291 ms  0x122e ret:0x0
   291 ms  0x122e PR_Connect()
   291 ms  0x122e fd:0x7f6e90f7fdf0
   509 ms  0x122e SECKEY_CreateECPrivateKey()
   509 ms  0x122e cx:0x7f6e90f82e28
   511 ms     | 0x122e EC_ValidatePublicKey()
   511 ms     | 0x122e ret:0x0
   511 ms  0x122e ret:0x7f6e9106b820::7f6e9106b820  30 dd 4c 92                                      0.L.
   511 ms  0x122e SECKEY_CreateECPrivateKey()
   511 ms  0x122e cx:0x7f6e90f82e28
   513 ms     | 0x122e EC_ValidatePublicKey()
   518 ms     | 0x122e ret:0x0
   519 ms  0x122e ret:0x7f6e9106d820::7f6e9106d820  f0 db 4c 92                                      ..L.
   744 ms  SECKEY_ECParamsToKeySize()
   744 ms  0x122e ret:0x100
   744 ms  0x122e SECKEY_CreateECPrivateKey()
   744 ms  0x122e cx:0x7f6e90f82e28
   746 ms     | 0x122e EC_ValidatePublicKey()
   752 ms     | 0x122e ret:0x0
   752 ms  0x122e ret:0x7f6e91077020::7f6e91077020  70 c9 30 80                                      p.0.
   752 ms  0x122e PK11_PubDeriveWithKDF()
   752 ms  0x122e seckey:0x7f6e91077020
   752 ms     | 0x122e EC_ValidatePublicKey()
   756 ms     | 0x122e ret:0x0
   760 ms  0x122e ret:0x7f6e92435600
   760 ms  0x122e PK11_DeriveWithFlags()
   760 ms  0x122e basekey:0x7f6e92435600
   760 ms     | 0x122e PK11_DeriveWithTemplate()
   760 ms  0x122e ret:0x7f6e910fba80
   760 ms  0x122e PK11_Derive()
   760 ms  0x122e basekey:0x7f6e910fba80
   761 ms     | 0x122e PK11_DeriveWithTemplate()
   761 ms  0x122e ret:0x7f6e910fbb00
   761 ms  0x122e SECKEY_DestroyPrivateKey()
   761 ms  0x122e privk:0x7f6e91077020::7f6e91077020  70 c9 30 80                                      p.0.
   761 ms  0x122e privk:0x7f6e91077020::7f6e91077020  e5 e5 e5 e5                                      ....
   761 ms  0x122e PK11_Encrypt()
   761 ms  0x122e symkey:0x7f6e910fbc80
   762 ms  0x122e PR_Connect()
   762 ms  0x122e fd:0x7f6e803270a0
           /* TID 0x1270 */
   770 ms  0x1270 PR_Close()
   770 ms  0x1270 fd:0x7f6e803270d0
           /* TID 0x1236 */
   816 ms  0x1236 PR_Close()
   816 ms  0x1236 fd:0x7f6e80327130
           /* TID 0x128f */
   816 ms  0x128f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   817 ms  0x128f ret:0x0
           /* TID 0x122e */
   817 ms  0x122e SSL_AuthCertificateComplete()
   817 ms  0x122e fd:0x7f6e90f7fdf0
   817 ms  0x122e err:0x0
   818 ms  0x122e PK11_Encrypt()
   818 ms  0x122e symkey:0x7f6e910fbc80
           /* TID 0x1270 */
   820 ms  0x1270 PR_Close()
   820 ms  0x1270 fd:0x7f6e80327160
   823 ms  0x1270 PR_Close()
   823 ms  0x1270 fd:0x7f6e80327160
           /* TID 0x122e */
   979 ms  0x122e SECKEY_DestroyPrivateKey()
   979 ms  0x122e privk:0x7f6e9106d820::7f6e9106d820  f0 db 4c 92                                      ..L.
   980 ms  0x122e privk:0x7f6e9106d820::7f6e9106d820  e5 e5 e5 e5                                      ....
   980 ms  0x122e SECKEY_DestroyPrivateKey()
   980 ms  0x122e privk:0x7f6e9106b820::7f6e9106b820  30 dd 4c 92                                      0.L.
   980 ms  0x122e privk:0x7f6e9106b820::7f6e9106b820  e5 e5 e5 e5                                      ....
  1204 ms  0x122e SSL_ImportFD()
  1204 ms  0x122e ret:0x7f6e803272e0
  1204 ms  0x122e SSL_AuthCertificateHook()
  1204 ms  0x122e fd:0x7f6e803272e0
  1204 ms  0x122e ret:0x0
  1204 ms  0x122e PR_Connect()
  1204 ms  0x122e fd:0x7f6e803272e0
  1230 ms  0x122e SECKEY_CreateECPrivateKey()
  1230 ms  0x122e cx:0x7f6e80308a68
  1231 ms     | 0x122e EC_ValidatePublicKey()
  1231 ms     | 0x122e ret:0x0
  1231 ms  0x122e ret:0x7f6e9106d020::7f6e9106d020  70 c9 30 80                                      p.0.
  1231 ms  0x122e SECKEY_CreateECPrivateKey()
  1231 ms  0x122e cx:0x7f6e80308a68
  1232 ms     | 0x122e EC_ValidatePublicKey()
  1234 ms     | 0x122e ret:0x0
  1234 ms  0x122e ret:0x7f6e91073820::7f6e91073820  50 cb 30 80                                      P.0.
           /* TID 0x128f */
  1287 ms  0x128f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1288 ms  0x128f ret:0x0
           /* TID 0x122e */
  1288 ms  SECKEY_ECParamsToKeySize()
  1288 ms  0x122e ret:0x100
  1288 ms  0x122e SECKEY_CreateECPrivateKey()
  1288 ms  0x122e cx:0x7f6e80308a68
  1290 ms     | 0x122e EC_ValidatePublicKey()
  1295 ms     | 0x122e ret:0x0
  1295 ms  0x122e ret:0x7f6e91077020::7f6e91077020  d0 cd 30 80                                      ..0.
  1296 ms  0x122e PK11_PubDeriveWithKDF()
  1296 ms  0x122e seckey:0x7f6e91077020
  1296 ms     | 0x122e EC_ValidatePublicKey()
  1300 ms     | 0x122e ret:0x0
  1304 ms  0x122e ret:0x7f6e92435600
  1304 ms  0x122e PK11_DeriveWithFlags()
  1304 ms  0x122e basekey:0x7f6e92435600
  1304 ms     | 0x122e PK11_DeriveWithTemplate()
  1305 ms  0x122e ret:0x7f6e910fc400
  1305 ms  0x122e PK11_Derive()
  1305 ms  0x122e basekey:0x7f6e910fc400
  1305 ms     | 0x122e PK11_DeriveWithTemplate()
  1305 ms  0x122e ret:0x7f6e910fc600
  1305 ms  0x122e SECKEY_DestroyPrivateKey()
  1305 ms  0x122e privk:0x7f6e91077020::7f6e91077020  d0 cd 30 80                                      ..0.
  1305 ms  0x122e privk:0x7f6e91077020::7f6e91077020  e5 e5 e5 e5                                      ....
  1305 ms  0x122e PK11_Encrypt()
  1305 ms  0x122e symkey:0x7f6e910fcb00
  1306 ms  0x122e SSL_AuthCertificateComplete()
  1306 ms  0x122e fd:0x7f6e803272e0
  1306 ms  0x122e err:0x0
  1306 ms  0x122e PK11_Encrypt()
  1306 ms  0x122e symkey:0x7f6e910fcb00
  1357 ms  0x122e SECKEY_DestroyPrivateKey()
  1357 ms  0x122e privk:0x7f6e91073820::7f6e91073820  50 cb 30 80                                      P.0.
  1357 ms  0x122e privk:0x7f6e91073820::7f6e91073820  e5 e5 e5 e5                                      ....
  1358 ms  0x122e SECKEY_DestroyPrivateKey()
  1358 ms  0x122e privk:0x7f6e9106d020::7f6e9106d020  70 c9 30 80                                      p.0.
  1358 ms  0x122e privk:0x7f6e9106d020::7f6e9106d020  e5 e5 e5 e5                                      ....
  1362 ms  0x122e PK11_Encrypt()
  1362 ms  0x122e symkey:0x7f6e910fcb00
  1392 ms  0x122e PK11_Encrypt()
  1392 ms  0x122e symkey:0x7f6e910fcb00
  1423 ms  0x122e PK11_Encrypt()
  1423 ms  0x122e symkey:0x7f6e910fcb00
  1453 ms  0x122e PK11_Encrypt()
  1453 ms  0x122e symkey:0x7f6e910fcb00
  1568 ms  0x122e PK11_Encrypt()
  1568 ms  0x122e symkey:0x7f6e910fcb00
  1602 ms  0x122e PK11_Encrypt()
  1602 ms  0x122e symkey:0x7f6e910fcb00
  1634 ms  0x122e PK11_Encrypt()
  1634 ms  0x122e symkey:0x7f6e910fcb00
           /* TID 0x1285 */
  1663 ms  0x1285 PR_Close()
  1663 ms  0x1285 fd:0x7f6e80327460
  1663 ms  0x1285 PR_Close()
  1663 ms  0x1285 fd:0x7f6e803274c0
  1663 ms  0x1285 PR_Close()
  1663 ms  0x1285 fd:0x7f6e80327460
  1663 ms  0x1285 PR_Close()
  1663 ms  0x1285 fd:0x7f6e803274c0
  1663 ms  0x1285 PR_Close()
  1663 ms  0x1285 fd:0x7f6e80327460
  1663 ms  0x1285 PR_Close()
  1663 ms  0x1285 fd:0x7f6e803274c0
  1664 ms  0x1285 PR_Close()
  1664 ms  0x1285 fd:0x7f6e80327460
  1664 ms  0x1285 PR_Close()
  1664 ms  0x1285 fd:0x7f6e803274c0
  1664 ms  0x1285 PR_Close()
  1664 ms  0x1285 fd:0x7f6e80327460
  1664 ms  0x1285 PR_Close()
  1664 ms  0x1285 fd:0x7f6e803274c0
  1664 ms  0x1285 PR_Close()
  1664 ms  0x1285 fd:0x7f6e80327460
  1664 ms  0x1285 PR_Close()
  1664 ms  0x1285 fd:0x7f6e803274c0
  1664 ms  0x1285 PR_Close()
  1664 ms  0x1285 fd:0x7f6e80327460
  1664 ms  0x1285 PR_Close()
  1664 ms  0x1285 fd:0x7f6e803274c0
  1664 ms  0x1285 PR_Close()
  1664 ms  0x1285 fd:0x7f6e80327460
  1665 ms  0x1285 PR_Close()
  1665 ms  0x1285 fd:0x7f6e803274c0
  1665 ms  0x1285 PR_Close()
  1665 ms  0x1285 fd:0x7f6e80327460
  1665 ms  0x1285 PR_Close()
  1665 ms  0x1285 fd:0x7f6e803274c0
  1665 ms  0x1285 PR_Close()
  1665 ms  0x1285 fd:0x7f6e80327460
  1665 ms  0x1285 PR_Close()
  1665 ms  0x1285 fd:0x7f6e803274c0
  1665 ms  0x1285 PR_Close()
  1665 ms  0x1285 fd:0x7f6e80327460
  1665 ms  0x1285 PR_Close()
  1665 ms  0x1285 fd:0x7f6e803274c0
  1665 ms  0x1285 PR_Close()
  1665 ms  0x1285 fd:0x7f6e80327460
  1665 ms  0x1285 PR_Close()
  1665 ms  0x1285 fd:0x7f6e803274c0
  1666 ms  0x1285 PR_Close()
  1666 ms  0x1285 fd:0x7f6e80327460
  1666 ms  0x1285 PR_Close()
  1666 ms  0x1285 fd:0x7f6e803274c0
  1666 ms  0x1285 PR_Close()
  1666 ms  0x1285 fd:0x7f6e80327460
  1666 ms  0x1285 PR_Close()
  1666 ms  0x1285 fd:0x7f6e803274c0
  1669 ms  0x1285 PR_Close()
  1669 ms  0x1285 fd:0x7f6e80327460
  1670 ms  0x1285 PR_Close()
  1670 ms  0x1285 fd:0x7f6e803273d0
  1672 ms  0x1285 PR_Close()
  1672 ms  0x1285 fd:0x7f6e803273d0
  1673 ms  0x1285 PR_Close()
  1673 ms  0x1285 fd:0x7f6e80327460
  1676 ms  0x1285 PR_Close()
  1676 ms  0x1285 fd:0x7f6e80327460
  1676 ms  0x1285 PR_Close()
  1676 ms  0x1285 fd:0x7f6e80327460
  1678 ms  0x1285 PR_Close()
  1678 ms  0x1285 fd:0x7f6e80327460
  1679 ms  0x1285 PR_Close()
  1679 ms  0x1285 fd:0x7f6e80327460
  1724 ms  0x1285 PR_Close()
  1724 ms  0x1285 fd:0x7f6e80327460
  1725 ms  0x1285 PR_Close()
  1725 ms  0x1285 fd:0x7f6e80327460
  1732 ms  0x1285 PR_Close()
  1732 ms  0x1285 fd:0x7f6e80327460
  1732 ms  0x1285 PR_Close()
  1732 ms  0x1285 fd:0x7f6e80327460
  1738 ms  0x1285 PR_Close()
  1738 ms  0x1285 fd:0x7f6e80327460
  1738 ms  0x1285 PR_Close()
  1738 ms  0x1285 fd:0x7f6e80327460
  1741 ms  0x1285 PR_Close()
  1741 ms  0x1285 fd:0x7f6e80327460
  1741 ms  0x1285 PR_Close()
  1741 ms  0x1285 fd:0x7f6e80327460
           /* TID 0x1282 */
  1741 ms  0x1282 PR_Close()
  1741 ms  0x1282 fd:0x7f6e80327460
  1741 ms  0x1282 PR_Close()
  1741 ms  0x1282 fd:0x7f6e80327460
  1741 ms  0x1282 PR_Close()
  1741 ms  0x1282 fd:0x7f6e80327460
  1741 ms  0x1282 PR_Close()
  1741 ms  0x1282 fd:0x7f6e80327460
  1741 ms  0x1282 PR_Close()
  1741 ms  0x1282 fd:0x7f6e80327460
  1741 ms  0x1282 PR_Close()
  1741 ms  0x1282 fd:0x7f6e80327460
  1741 ms  0x1282 PR_Close()
  1741 ms  0x1282 fd:0x7f6e80327460
  1741 ms  0x1282 PR_Close()
  1741 ms  0x1282 fd:0x7f6e80327460
  1741 ms  0x1282 PR_Close()
  1741 ms  0x1282 fd:0x7f6e80327460
  1741 ms  0x1282 PR_Close()
  1741 ms  0x1282 fd:0x7f6e80327460
  1741 ms  0x1282 PR_Close()
  1741 ms  0x1282 fd:0x7f6e80327460
  1741 ms  0x1282 PR_Close()
  1741 ms  0x1282 fd:0x7f6e80327460
  1741 ms  0x1282 PR_Close()
  1741 ms  0x1282 fd:0x7f6e80327460
  1741 ms  0x1282 PR_Close()
  1741 ms  0x1282 fd:0x7f6e80327460
  1741 ms  0x1282 PR_Close()
  1741 ms  0x1282 fd:0x7f6e80327460
           /* TID 0x1270 */
  2244 ms  0x1270 PR_Close()
  2244 ms  0x1270 fd:0x7f6e803277c0
  2247 ms  0x1270 PR_Close()
  2247 ms  0x1270 fd:0x7f6e803277c0
  2797 ms  0x1270 PR_Close()
  2797 ms  0x1270 fd:0x7f6e803277c0
           /* TID 0x1236 */
  4155 ms  0x1236 PR_Close()
  4155 ms  0x1236 fd:0x7f6e803277c0
  4156 ms  0x1236 PR_Close()
  4156 ms  0x1236 fd:0x7f6e80327910
           /* TID 0x122e */
  4573 ms  0x122e SSL_ImportFD()
  4573 ms  0x122e ret:0x7f6e802f5220
  4573 ms  0x122e SSL_AuthCertificateHook()
  4573 ms  0x122e fd:0x7f6e802f5220
  4573 ms  0x122e ret:0x0
  4573 ms  0x122e PR_Connect()
  4573 ms  0x122e fd:0x7f6e802f5220
  4600 ms  0x122e SECKEY_CreateECPrivateKey()
  4600 ms  0x122e cx:0x7f6e80308da8
  4602 ms     | 0x122e EC_ValidatePublicKey()
  4602 ms     | 0x122e ret:0x0
  4602 ms  0x122e ret:0x7f6e80105820::7f6e80105820  f0 a6 12 80                                      ....
  4602 ms  0x122e SECKEY_CreateECPrivateKey()
  4602 ms  0x122e cx:0x7f6e80308da8
  4604 ms     | 0x122e EC_ValidatePublicKey()
  4610 ms     | 0x122e ret:0x0
  4610 ms  0x122e ret:0x7f6e80107820::7f6e80107820  70 a4 12 80                                      p...
           /* TID 0x128f */
  4642 ms  0x128f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4642 ms  0x128f ret:0x0
  4642 ms  0x128f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4642 ms  0x128f ret:0x0
           /* TID 0x122e */
  4645 ms  SECKEY_ECParamsToKeySize()
  4645 ms  0x122e ret:0xff
  4645 ms  0x122e SECKEY_CreateECPrivateKey()
  4645 ms  0x122e cx:0x7f6e80308da8
  4647 ms     | 0x122e EC_ValidatePublicKey()
  4647 ms     | 0x122e ret:0x0
  4647 ms  0x122e ret:0x7f6e80114020::7f6e80114020  30 6d 29 80                                      0m).
  4648 ms  0x122e PK11_PubDeriveWithKDF()
  4648 ms  0x122e seckey:0x7f6e80114020
  4648 ms     | 0x122e EC_ValidatePublicKey()
  4648 ms     | 0x122e ret:0x0
  4650 ms  0x122e ret:0x7f6e92435600
  4650 ms  0x122e PK11_DeriveWithFlags()
  4650 ms  0x122e basekey:0x7f6e92435600
  4650 ms     | 0x122e PK11_DeriveWithTemplate()
  4651 ms  0x122e ret:0x7f6e921fa300
  4651 ms  0x122e PK11_Derive()
  4651 ms  0x122e basekey:0x7f6e921fa300
  4651 ms     | 0x122e PK11_DeriveWithTemplate()
  4651 ms  0x122e ret:0x7f6e921fa400
  4651 ms  0x122e SECKEY_DestroyPrivateKey()
  4651 ms  0x122e privk:0x7f6e80114020::7f6e80114020  30 6d 29 80                                      0m).
  4652 ms  0x122e privk:0x7f6e80114020::7f6e80114020  e5 e5 e5 e5                                      ....
  4652 ms  0x122e PK11_Encrypt()
  4652 ms  0x122e symkey:0x7f6e927dab80
  4654 ms  0x122e SSL_AuthCertificateComplete()
  4654 ms  0x122e fd:0x7f6e802f5220
  4654 ms  0x122e err:0x0
  4655 ms  0x122e PK11_Encrypt()
  4655 ms  0x122e symkey:0x7f6e927dab80
  4655 ms  0x122e PK11_Encrypt()
  4655 ms  0x122e symkey:0x7f6e927dab80
  4679 ms  0x122e SECKEY_DestroyPrivateKey()
  4679 ms  0x122e privk:0x7f6e80107820::7f6e80107820  70 a4 12 80                                      p...
  4679 ms  0x122e privk:0x7f6e80107820::7f6e80107820  e5 e5 e5 e5                                      ....
  4679 ms  0x122e SECKEY_DestroyPrivateKey()
  4679 ms  0x122e privk:0x7f6e80105820::7f6e80105820  f0 a6 12 80                                      ....
  4680 ms  0x122e privk:0x7f6e80105820::7f6e80105820  e5 e5 e5 e5                                      ....
  4704 ms  0x122e PK11_Encrypt()
  4704 ms  0x122e symkey:0x7f6e927dab80
           /* TID 0x1245 */
  4726 ms  0x1245 PR_Close()
  4726 ms  0x1245 fd:0x7f6e802f5c40
           /* TID 0x1236 */
  4758 ms  0x1236 PR_Close()
  4758 ms  0x1236 fd:0x7f6e802f5fd0
           /* TID 0x122e */
  4803 ms  0x122e SSL_ImportFD()
  4803 ms  0x122e ret:0x7f6e7fffec40
  4803 ms  0x122e SSL_AuthCertificateHook()
  4803 ms  0x122e fd:0x7f6e7fffec40
  4803 ms  0x122e ret:0x0
  4803 ms  0x122e PR_Connect()
  4803 ms  0x122e fd:0x7f6e7fffec40
  4833 ms  0x122e SSL_ImportFD()
  4833 ms  0x122e ret:0x7f6e7ff91e80
  4833 ms  0x122e SSL_AuthCertificateHook()
  4833 ms  0x122e fd:0x7f6e7ff91e80
  4833 ms  0x122e ret:0x0
  4833 ms  0x122e PR_Connect()
  4833 ms  0x122e fd:0x7f6e7ff91e80
  4841 ms  0x122e SECKEY_CreateECPrivateKey()
  4841 ms  0x122e cx:0x7f6e80309428
  4841 ms     | 0x122e EC_ValidatePublicKey()
  4841 ms     | 0x122e ret:0x0
  4841 ms  0x122e ret:0x7f6e8026a020::7f6e8026a020  40 dc ff 7f                                      @...
  4841 ms  0x122e SECKEY_CreateECPrivateKey()
  4841 ms  0x122e cx:0x7f6e80309428
  4842 ms     | 0x122e EC_ValidatePublicKey()
  4843 ms     | 0x122e ret:0x0
  4843 ms  0x122e ret:0x7f6e8026c020::7f6e8026c020  c0 de ff 7f                                      ....
  4859 ms  0x122e SECKEY_CreateECPrivateKey()
  4859 ms  0x122e cx:0x7f6e803095c8
  4859 ms     | 0x122e EC_ValidatePublicKey()
  4859 ms     | 0x122e ret:0x0
  4859 ms  0x122e ret:0x7f6e8026e820::7f6e8026e820  b0 df ff 7f                                      ....
  4859 ms  0x122e SECKEY_CreateECPrivateKey()
  4859 ms  0x122e cx:0x7f6e803095c8
  4860 ms     | 0x122e EC_ValidatePublicKey()
  4861 ms     | 0x122e ret:0x0
  4861 ms  0x122e ret:0x7f6e80270820::7f6e80270820  50 e1 38 80                                      P.8.
           /* TID 0x128f */
  4890 ms  0x128f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4890 ms  0x128f ret:0x0
  4891 ms  0x128f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4891 ms  0x128f ret:0x0
           /* TID 0x122e */
  4891 ms  SECKEY_ECParamsToKeySize()
  4891 ms  0x122e ret:0xff
  4891 ms  0x122e SECKEY_CreateECPrivateKey()
  4891 ms  0x122e cx:0x7f6e803095c8
  4892 ms     | 0x122e EC_ValidatePublicKey()
  4892 ms     | 0x122e ret:0x0
  4892 ms  0x122e ret:0x7f6e8039e820::7f6e8039e820  c0 e4 38 80                                      ..8.
  4892 ms  0x122e PK11_PubDeriveWithKDF()
  4892 ms  0x122e seckey:0x7f6e8039e820
  4892 ms     | 0x122e EC_ValidatePublicKey()
  4892 ms     | 0x122e ret:0x0
  4892 ms  0x122e ret:0x7f6e92435600
  4892 ms  0x122e PK11_DeriveWithFlags()
  4892 ms  0x122e basekey:0x7f6e92435600
  4892 ms     | 0x122e PK11_DeriveWithTemplate()
  4892 ms  0x122e ret:0x7f6e803c6680
  4893 ms  0x122e PK11_Derive()
  4893 ms  0x122e basekey:0x7f6e803c6680
  4893 ms     | 0x122e PK11_DeriveWithTemplate()
  4893 ms  0x122e ret:0x7f6e803c6700
  4893 ms  0x122e SECKEY_DestroyPrivateKey()
  4893 ms  0x122e privk:0x7f6e8039e820::7f6e8039e820  c0 e4 38 80                                      ..8.
  4893 ms  0x122e privk:0x7f6e8039e820::7f6e8039e820  e5 e5 e5 e5                                      ....
  4893 ms  0x122e PK11_Encrypt()
  4893 ms  0x122e symkey:0x7f6e803c6880
  4893 ms  0x122e SSL_AuthCertificateComplete()
  4893 ms  0x122e fd:0x7f6e7ff91e80
  4893 ms  0x122e err:0x0
  4893 ms  0x122e PK11_Encrypt()
  4893 ms  0x122e symkey:0x7f6e803c6880
  4897 ms  0x122e PK11_Derive()
  4897 ms  0x122e basekey:0x7f6e92435600
  4897 ms     | 0x122e PK11_DeriveWithTemplate()
  4898 ms  0x122e ret:0x7f6e803c6980
  4898 ms  0x122e PK11_PubDeriveWithKDF()
  4898 ms  0x122e seckey:0x7f6e8026a020
  4898 ms     | 0x122e EC_ValidatePublicKey()
  4899 ms     | 0x122e ret:0x0
  4899 ms  0x122e ret:0x7f6e92435600
  4899 ms  SECKEY_ECParamsToKeySize()
  4899 ms  0x122e ret:0xff
  4899 ms  0x122e PK11_DeriveWithFlags()
  4899 ms  0x122e basekey:0x7f6e803c6980
  4899 ms     | 0x122e PK11_DeriveWithTemplate()
  4900 ms  0x122e ret:0x7f6e803c6a00
  4900 ms  0x122e PK11_Derive()
  4900 ms  0x122e basekey:0x7f6e92435600
  4900 ms     | 0x122e PK11_DeriveWithTemplate()
  4900 ms  0x122e ret:0x7f6e803c6a80
  4900 ms  0x122e PK11_DeriveWithFlags()
  4900 ms  0x122e basekey:0x7f6e803c6a80
  4900 ms     | 0x122e PK11_DeriveWithTemplate()
  4900 ms  0x122e ret:0x7f6e803c6980
  4900 ms  0x122e PK11_DeriveWithFlags()
  4900 ms  0x122e basekey:0x7f6e803c6a80
  4900 ms     | 0x122e PK11_DeriveWithTemplate()
  4900 ms  0x122e ret:0x7f6e92435600
  4900 ms  0x122e PK11_DeriveWithFlags()
  4900 ms  0x122e basekey:0x7f6e803c6a80
  4900 ms     | 0x122e PK11_DeriveWithTemplate()
  4900 ms  0x122e ret:0x7f6e803c6a00
  4900 ms  0x122e PK11_Derive()
  4900 ms  0x122e basekey:0x7f6e803c6b00
  4900 ms     | 0x122e PK11_DeriveWithTemplate()
  4900 ms  0x122e ret:0x7f6e803c6b80
  4900 ms  0x122e PK11_DeriveWithFlags()
  4900 ms  0x122e basekey:0x7f6e92435600
  4900 ms     | 0x122e PK11_DeriveWithTemplate()
  4900 ms  0x122e ret:0x7f6e803c6a80
  4900 ms  0x122e PK11_DeriveWithFlags()
  4900 ms  0x122e basekey:0x7f6e92435600
  4900 ms     | 0x122e PK11_DeriveWithTemplate()
  4900 ms  0x122e ret:0x7f6e803c6a00
  4902 ms  SECKEY_ECParamsToKeySize()
  4902 ms  0x122e ret:0x100
  4902 ms  SECKEY_ECParamsToBasePointOrderLen()
  4902 ms  0x122e ret:0x100
  4902 ms  SECKEY_ECParamsToBasePointOrderLen()
  4902 ms  0x122e ret:0x100
  4902 ms  0x122e EC_ValidatePublicKey()
  4904 ms  0x122e ret:0x0
  4907 ms  0x122e PK11_DeriveWithFlags()
  4907 ms  0x122e basekey:0x7f6e92435600
  4907 ms     | 0x122e PK11_DeriveWithTemplate()
  4907 ms  0x122e ret:0x7f6e803c6a00
  4908 ms  0x122e PR_Connect()
  4908 ms  0x122e fd:0x7f6e7fffef70
  4919 ms  0x122e SECKEY_DestroyPrivateKey()
  4919 ms  0x122e privk:0x7f6e80270820::7f6e80270820  50 e1 38 80                                      P.8.
  4919 ms  0x122e privk:0x7f6e80270820::7f6e80270820  e5 e5 e5 e5                                      ....
  4919 ms  0x122e SECKEY_DestroyPrivateKey()
  4919 ms  0x122e privk:0x7f6e8026e820::7f6e8026e820  b0 df ff 7f                                      ....
  4920 ms  0x122e privk:0x7f6e8026e820::7f6e8026e820  e5 e5 e5 e5                                      ....
  4984 ms  0x122e SSL_ImportFD()
  4984 ms  0x122e ret:0x7f6e803e1070
  4984 ms  0x122e SSL_AuthCertificateHook()
  4984 ms  0x122e fd:0x7f6e803e1070
  4984 ms  0x122e ret:0x0
  4984 ms  0x122e PR_Connect()
  4984 ms  0x122e fd:0x7f6e803e1070
  4985 ms  0x122e SSL_ImportFD()
  4985 ms  0x122e ret:0x7f6e803e10a0
  4985 ms  0x122e SSL_AuthCertificateHook()
  4985 ms  0x122e fd:0x7f6e803e10a0
  4985 ms  0x122e ret:0x0
  4985 ms  0x122e PR_Connect()
  4985 ms  0x122e fd:0x7f6e803e10a0
  4985 ms  0x122e SSL_ImportFD()
  4985 ms  0x122e ret:0x7f6e803e10d0
  4985 ms  0x122e SSL_AuthCertificateHook()
  4985 ms  0x122e fd:0x7f6e803e10d0
  4985 ms  0x122e ret:0x0
  4985 ms  0x122e PR_Connect()
  4985 ms  0x122e fd:0x7f6e803e10d0
  4985 ms  0x122e SSL_ImportFD()
  4985 ms  0x122e ret:0x7f6e803e1100
  4985 ms  0x122e SSL_AuthCertificateHook()
  4985 ms  0x122e fd:0x7f6e803e1100
  4986 ms  0x122e ret:0x0
  4986 ms  0x122e PR_Connect()
  4986 ms  0x122e fd:0x7f6e803e1100
  5024 ms  0x122e SECKEY_CreateECPrivateKey()
  5024 ms  0x122e cx:0x7f6e80309c48
  5026 ms     | 0x122e EC_ValidatePublicKey()
  5026 ms     | 0x122e ret:0x0
  5026 ms  0x122e ret:0x7f6e8026e820::7f6e8026e820  b0 ea 38 80                                      ..8.
  5026 ms  0x122e SECKEY_CreateECPrivateKey()
  5026 ms  0x122e cx:0x7f6e80309c48
  5031 ms     | 0x122e EC_ValidatePublicKey()
  5035 ms     | 0x122e ret:0x0
  5036 ms  0x122e ret:0x7f6e80270820::7f6e80270820  40 ec 38 80                                      @.8.
  5040 ms  0x122e SECKEY_CreateECPrivateKey()
  5040 ms  0x122e cx:0x7f6e80309aa8
  5041 ms     | 0x122e EC_ValidatePublicKey()
  5041 ms     | 0x122e ret:0x0
  5041 ms  0x122e ret:0x7f6e803a8820::7f6e803a8820  80 ed 38 80                                      ..8.
  5042 ms  0x122e SECKEY_CreateECPrivateKey()
  5042 ms  0x122e cx:0x7f6e80309aa8
  5043 ms     | 0x122e EC_ValidatePublicKey()
  5047 ms     | 0x122e ret:0x0
  5047 ms  0x122e ret:0x7f6e803aa820::7f6e803aa820  60 ef 38 80                                      `.8.
  5048 ms  0x122e SECKEY_CreateECPrivateKey()
  5048 ms  0x122e cx:0x7f6e80309f88
  5050 ms     | 0x122e EC_ValidatePublicKey()
  5050 ms     | 0x122e ret:0x0
  5050 ms  0x122e ret:0x7f6e803ad020::7f6e803ad020  60 70 e1 7f                                      `p..
  5050 ms  0x122e SECKEY_CreateECPrivateKey()
  5050 ms  0x122e cx:0x7f6e80309f88
  5051 ms     | 0x122e EC_ValidatePublicKey()
  5054 ms     | 0x122e ret:0x0
  5054 ms  0x122e ret:0x7f6e803af020::7f6e803af020  40 72 e1 7f                                      @r..
  5055 ms  0x122e SECKEY_CreateECPrivateKey()
  5055 ms  0x122e cx:0x7f6e80309de8
  5056 ms     | 0x122e EC_ValidatePublicKey()
  5056 ms     | 0x122e ret:0x0
  5056 ms  0x122e ret:0x7f6e803b1820::7f6e803b1820  80 73 e1 7f                                      .s..
  5056 ms  0x122e SECKEY_CreateECPrivateKey()
  5056 ms  0x122e cx:0x7f6e80309de8
  5057 ms     | 0x122e EC_ValidatePublicKey()
  5060 ms     | 0x122e ret:0x0
  5060 ms  0x122e ret:0x7f6e803b3820::7f6e803b3820  60 75 e1 7f                                      `u..
  5079 ms  SECKEY_ECParamsToKeySize()
  5079 ms  0x122e ret:0x100
  5079 ms  0x122e SECKEY_CreateECPrivateKey()
  5079 ms  0x122e cx:0x7f6e80309c48
  5080 ms     | 0x122e EC_ValidatePublicKey()
  5082 ms     | 0x122e ret:0x0
  5082 ms  0x122e ret:0x7f6e92c76820::7f6e92c76820  70 79 e1 7f                                      py..
  5083 ms  0x122e PK11_PubDeriveWithKDF()
  5083 ms  0x122e seckey:0x7f6e92c76820
  5083 ms     | 0x122e EC_ValidatePublicKey()
  5085 ms     | 0x122e ret:0x0
  5088 ms  0x122e ret:0x7f6e803c6a00
  5088 ms  0x122e PK11_DeriveWithFlags()
  5088 ms  0x122e basekey:0x7f6e803c6a00
  5088 ms     | 0x122e PK11_DeriveWithTemplate()
  5088 ms  0x122e ret:0x7f6e803c6b00
  5088 ms  0x122e PK11_Derive()
  5088 ms  0x122e basekey:0x7f6e803c6b00
  5088 ms     | 0x122e PK11_DeriveWithTemplate()
  5089 ms  0x122e ret:0x7f6e803c7480
  5089 ms  0x122e SECKEY_DestroyPrivateKey()
  5089 ms  0x122e privk:0x7f6e92c76820::7f6e92c76820  70 79 e1 7f                                      py..
  5089 ms  0x122e privk:0x7f6e92c76820::7f6e92c76820  e5 e5 e5 e5                                      ....
  5089 ms  0x122e PK11_Encrypt()
  5089 ms  0x122e symkey:0x7f6e803c7600
  5093 ms  SECKEY_ECParamsToKeySize()
  5093 ms  0x122e ret:0x100
  5093 ms  0x122e SECKEY_CreateECPrivateKey()
  5093 ms  0x122e cx:0x7f6e80309aa8
  5094 ms     | 0x122e EC_ValidatePublicKey()
  5096 ms     | 0x122e ret:0x0
  5096 ms  0x122e ret:0x7f6e7fe3d020::7f6e7fe3d020  80 7d e1 7f                                      .}..
  5096 ms  0x122e PK11_PubDeriveWithKDF()
  5096 ms  0x122e seckey:0x7f6e7fe3d020
  5097 ms     | 0x122e EC_ValidatePublicKey()
  5100 ms     | 0x122e ret:0x0
  5102 ms  0x122e ret:0x7f6e803c6a00
  5102 ms  0x122e PK11_DeriveWithFlags()
  5102 ms  0x122e basekey:0x7f6e803c6a00
  5102 ms     | 0x122e PK11_DeriveWithTemplate()
  5102 ms  0x122e ret:0x7f6e803c7900
  5102 ms  0x122e PK11_Derive()
  5102 ms  0x122e basekey:0x7f6e803c7900
  5102 ms     | 0x122e PK11_DeriveWithTemplate()
  5102 ms  0x122e ret:0x7f6e803c7980
  5102 ms  0x122e SECKEY_DestroyPrivateKey()
  5102 ms  0x122e privk:0x7f6e7fe3d020::7f6e7fe3d020  80 7d e1 7f                                      .}..
  5102 ms  0x122e privk:0x7f6e7fe3d020::7f6e7fe3d020  e5 e5 e5 e5                                      ....
  5102 ms  0x122e PK11_Encrypt()
  5102 ms  0x122e symkey:0x7f6e803c7b00
           /* TID 0x128f */
  5103 ms  0x128f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5103 ms  0x128f ret:0x0
           /* TID 0x1236 */
  5104 ms  0x1236 PR_Close()
  5104 ms  0x1236 fd:0x7f6e7ff1fe80
           /* TID 0x122e */
  5105 ms  SECKEY_ECParamsToKeySize()
  5105 ms  0x122e ret:0x100
  5105 ms  0x122e SECKEY_CreateECPrivateKey()
  5105 ms  0x122e cx:0x7f6e80309f88
  5105 ms     | 0x122e EC_ValidatePublicKey()
  5108 ms     | 0x122e ret:0x0
  5108 ms  0x122e ret:0x7f6e7fe42820::7f6e7fe42820  20 84 fc 7f                                       ...
  5108 ms  0x122e PK11_PubDeriveWithKDF()
  5108 ms  0x122e seckey:0x7f6e7fe42820
  5108 ms     | 0x122e EC_ValidatePublicKey()
  5109 ms     | 0x122e ret:0x0
  5111 ms  0x122e ret:0x7f6e803c6a00
  5111 ms  0x122e PK11_DeriveWithFlags()
  5111 ms  0x122e basekey:0x7f6e803c6a00
  5111 ms     | 0x122e PK11_DeriveWithTemplate()
  5111 ms  0x122e ret:0x7f6e9a1cb900
  5111 ms  0x122e PK11_Derive()
  5111 ms  0x122e basekey:0x7f6e9a1cb900
  5111 ms     | 0x122e PK11_DeriveWithTemplate()
  5111 ms  0x122e ret:0x7f6e803c6d80
  5111 ms  0x122e SECKEY_DestroyPrivateKey()
  5111 ms  0x122e privk:0x7f6e7fe42820::7f6e7fe42820  20 84 fc 7f                                       ...
  5111 ms  0x122e privk:0x7f6e7fe42820::7f6e7fe42820  e5 e5 e5 e5                                      ....
  5111 ms  0x122e PK11_Encrypt()
  5111 ms  0x122e symkey:0x7f6e803c7c80
  5112 ms  SECKEY_ECParamsToKeySize()
  5112 ms  0x122e ret:0x100
  5112 ms  0x122e SECKEY_CreateECPrivateKey()
  5112 ms  0x122e cx:0x7f6e80309de8
  5112 ms     | 0x122e EC_ValidatePublicKey()
  5114 ms     | 0x122e ret:0x0
  5114 ms  0x122e ret:0x7f6e7fe44820::7f6e7fe44820  30 83 fc 7f                                      0...
  5114 ms  0x122e PK11_PubDeriveWithKDF()
  5114 ms  0x122e seckey:0x7f6e7fe44820
  5114 ms     | 0x122e EC_ValidatePublicKey()
  5116 ms     | 0x122e ret:0x0
  5117 ms  0x122e ret:0x7f6e803c6a00
  5117 ms  0x122e PK11_DeriveWithFlags()
  5117 ms  0x122e basekey:0x7f6e803c6a00
  5117 ms     | 0x122e PK11_DeriveWithTemplate()
  5117 ms  0x122e ret:0x7f6e803c7d80
  5117 ms  0x122e PK11_Derive()
  5117 ms  0x122e basekey:0x7f6e803c7d80
  5117 ms     | 0x122e PK11_DeriveWithTemplate()
  5117 ms  0x122e ret:0x7f6e803c7e00
  5117 ms  0x122e SECKEY_DestroyPrivateKey()
  5117 ms  0x122e privk:0x7f6e7fe44820::7f6e7fe44820  30 83 fc 7f                                      0...
  5117 ms  0x122e privk:0x7f6e7fe44820::7f6e7fe44820  e5 e5 e5 e5                                      ....
  5117 ms  0x122e PK11_Encrypt()
  5117 ms  0x122e symkey:0x7f6e803c7f80
           /* TID 0x1236 */
  5118 ms  0x1236 PR_Close()
  5118 ms  0x1236 fd:0x7f6e803e1040
           /* TID 0x12c4 */
  5118 ms  0x12c4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5118 ms  0x12c4 ret:0x0
           /* TID 0x122e */
  5119 ms  0x122e SSL_AuthCertificateComplete()
  5119 ms  0x122e fd:0x7f6e803e10a0
  5119 ms  0x122e err:0x0
  5119 ms  0x122e PK11_Encrypt()
  5119 ms  0x122e symkey:0x7f6e803c7600
  5119 ms  0x122e PK11_Encrypt()
  5119 ms  0x122e symkey:0x7f6e803c7600
  5119 ms  0x122e PR_Connect()
  5119 ms  0x122e fd:0x7f6e7fffe9d0
  5127 ms  0x122e SECKEY_DestroyPrivateKey()
  5127 ms  0x122e privk:0x7f6e80270820::7f6e80270820  40 ec 38 80                                      @.8.
  5127 ms  0x122e privk:0x7f6e80270820::7f6e80270820  e5 e5 e5 e5                                      ....
  5127 ms  0x122e SECKEY_DestroyPrivateKey()
  5127 ms  0x122e privk:0x7f6e8026e820::7f6e8026e820  b0 ea 38 80                                      ..8.
  5127 ms  0x122e privk:0x7f6e8026e820::7f6e8026e820  e5 e5 e5 e5                                      ....
           /* TID 0x1236 */
  5147 ms  0x1236 PR_Close()
  5147 ms  0x1236 fd:0x7f6e7fffe0a0
           /* TID 0x12c5 */
  5147 ms  0x12c5 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5147 ms  0x12c5 ret:0x0
           /* TID 0x122e */
  5147 ms  0x122e SSL_AuthCertificateComplete()
  5147 ms  0x122e fd:0x7f6e803e1070
  5147 ms  0x122e err:0x0
  5147 ms     | 0x122e SECKEY_DestroyPrivateKey()
  5147 ms     | 0x122e privk:0x7f6e803aa820::7f6e803aa820  60 ef 38 80                                      `.8.
  5148 ms     | 0x122e privk:0x7f6e803aa820::7f6e803aa820  e5 e5 e5 e5                                      ....
  5148 ms     | 0x122e SECKEY_DestroyPrivateKey()
  5148 ms     | 0x122e privk:0x7f6e803a8820::7f6e803a8820  80 ed 38 80                                      ..8.
  5148 ms     | 0x122e privk:0x7f6e803a8820::7f6e803a8820  e5 e5 e5 e5                                      ....
  5148 ms  0x122e PK11_Encrypt()
  5148 ms  0x122e symkey:0x7f6e803c7b00
  5149 ms  0x122e PK11_Encrypt()
  5149 ms  0x122e symkey:0x7f6e803c7600
  5165 ms  0x122e PK11_Encrypt()
  5165 ms  0x122e symkey:0x7f6e803c7600
  5187 ms  0x122e PR_Close()
  5187 ms  0x122e fd:0x7f6e803e1070
  5187 ms     | 0x122e PK11_Encrypt()
  5187 ms     | 0x122e symkey:0x7f6e803c7b00
           /* TID 0x1236 */
  5256 ms  0x1236 PR_Close()
  5256 ms  0x1236 fd:0x7f6e7ff1f430
  5276 ms  0x1236 PR_Close()
  5276 ms  0x1236 fd:0x7f6e7ff1f430
           /* TID 0x122e */
  6113 ms  0x122e SSL_AuthCertificateComplete()
  6113 ms  0x122e fd:0x7f6e803e1100
  6113 ms  0x122e err:0x0
  6113 ms     | 0x122e SECKEY_DestroyPrivateKey()
  6113 ms     | 0x122e privk:0x7f6e803af020::7f6e803af020  40 72 e1 7f                                      @r..
  6114 ms     | 0x122e privk:0x7f6e803af020::7f6e803af020  e5 e5 e5 e5                                      ....
  6114 ms     | 0x122e SECKEY_DestroyPrivateKey()
  6114 ms     | 0x122e privk:0x7f6e803ad020::7f6e803ad020  60 70 e1 7f                                      `p..
  6114 ms     | 0x122e privk:0x7f6e803ad020::7f6e803ad020  e5 e5 e5 e5                                      ....
  6114 ms  0x122e PK11_Encrypt()
  6114 ms  0x122e symkey:0x7f6e803c7c80
  6114 ms  0x122e SSL_AuthCertificateComplete()
  6114 ms  0x122e fd:0x7f6e7fffec40
  6114 ms  0x122e err:0x0
  6114 ms     | 0x122e PK11_DeriveWithFlags()
  6114 ms     | 0x122e basekey:0x7f6e803c6b80
  6114 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6114 ms     | 0x122e ret:0x7f6e803c7980
  6114 ms     | 0x122e PK11_DeriveWithFlags()
  6114 ms     | 0x122e basekey:0x7f6e803c6b80
  6114 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6114 ms     | 0x122e ret:0x7f6e803c7900
  6114 ms     | 0x122e PK11_DeriveWithFlags()
  6114 ms     | 0x122e basekey:0x7f6e803c6b80
  6114 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6114 ms     | 0x122e ret:0x7f6e803c6a00
  6115 ms     | 0x122e PK11_DeriveWithFlags()
  6115 ms     | 0x122e basekey:0x7f6e803c6980
  6115 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6115 ms     | 0x122e ret:0x7f6e803c7a80
  6115 ms     | 0x122e PK11_DeriveWithFlags()
  6115 ms     | 0x122e basekey:0x7f6e803c6980
  6115 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6115 ms     | 0x122e ret:0x7f6e803c7b80
  6115 ms     | 0x122e PK11_DeriveWithFlags()
  6115 ms     | 0x122e basekey:0x7f6e803c7900
  6115 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6115 ms     | 0x122e ret:0x7f6e803c7b80
  6115 ms     | 0x122e PK11_DeriveWithFlags()
  6115 ms     | 0x122e basekey:0x7f6e803c7900
  6115 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6115 ms     | 0x122e ret:0x7f6e803c7a00
  6115 ms     | 0x122e PK11_DeriveWithFlags()
  6115 ms     | 0x122e basekey:0x7f6e803c6980
  6115 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6115 ms     | 0x122e ret:0x7f6e803c6a80
  6115 ms     | 0x122e PK11_Encrypt()
  6115 ms     | 0x122e symkey:0x7f6e803c7a80
  6115 ms     | 0x122e PK11_DeriveWithFlags()
  6115 ms     | 0x122e basekey:0x7f6e803c7980
  6115 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6115 ms     | 0x122e ret:0x7f6e803c6a80
  6115 ms     | 0x122e PK11_DeriveWithFlags()
  6115 ms     | 0x122e basekey:0x7f6e803c7980
  6115 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6115 ms     | 0x122e ret:0x7f6e803c7a00
  6115 ms     | 0x122e PK11_DeriveWithFlags()
  6115 ms     | 0x122e basekey:0x7f6e803c6b80
  6115 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6115 ms     | 0x122e ret:0x7f6e803c7a80
  6115 ms     | 0x122e SECKEY_DestroyPrivateKey()
  6115 ms     | 0x122e privk:0x7f6e8026c020::7f6e8026c020  c0 de ff 7f                                      ....
  6115 ms     | 0x122e privk:0x7f6e8026c020::7f6e8026c020  e5 e5 e5 e5                                      ....
  6115 ms     | 0x122e SECKEY_DestroyPrivateKey()
  6115 ms     | 0x122e privk:0x7f6e8026a020::7f6e8026a020  40 dc ff 7f                                      @...
  6115 ms     | 0x122e privk:0x7f6e8026a020::7f6e8026a020  e5 e5 e5 e5                                      ....
  6115 ms  0x122e PK11_Encrypt()
  6115 ms  0x122e symkey:0x7f6e803c7600
  6116 ms  0x122e PK11_Encrypt()
  6116 ms  0x122e symkey:0x7f6e803c6a80
  6116 ms  0x122e PK11_Encrypt()
  6116 ms  0x122e symkey:0x7f6e803c6a80
  6116 ms  0x122e SSL_AuthCertificateComplete()
  6116 ms  0x122e fd:0x7f6e803e10d0
  6116 ms  0x122e err:0x0
  6116 ms     | 0x122e SECKEY_DestroyPrivateKey()
  6116 ms     | 0x122e privk:0x7f6e803b3820::7f6e803b3820  60 75 e1 7f                                      `u..
  6116 ms     | 0x122e privk:0x7f6e803b3820::7f6e803b3820  e5 e5 e5 e5                                      ....
  6116 ms     | 0x122e SECKEY_DestroyPrivateKey()
  6116 ms     | 0x122e privk:0x7f6e803b1820::7f6e803b1820  80 73 e1 7f                                      .s..
  6116 ms     | 0x122e privk:0x7f6e803b1820::7f6e803b1820  e5 e5 e5 e5                                      ....
  6117 ms  0x122e PK11_Encrypt()
  6117 ms  0x122e symkey:0x7f6e803c7f80
  6118 ms  0x122e PK11_Encrypt()
  6118 ms  0x122e symkey:0x7f6e803c7600
  6152 ms  0x122e PR_Close()
  6152 ms  0x122e fd:0x7f6e803e1100
  6152 ms     | 0x122e PK11_Encrypt()
  6152 ms     | 0x122e symkey:0x7f6e803c7c80
  6153 ms  0x122e PK11_DeriveWithFlags()
  6153 ms  0x122e basekey:0x7f6e803c7a80
  6153 ms     | 0x122e PK11_DeriveWithTemplate()
  6153 ms  0x122e ret:0x7f6e803c6d80
  6153 ms  0x122e PK11_DeriveWithFlags()
  6153 ms  0x122e basekey:0x7f6e803c7a80
  6153 ms     | 0x122e PK11_DeriveWithTemplate()
  6153 ms  0x122e ret:0x7f6e803c6d80
  6153 ms  0x122e PK11_Encrypt()
  6153 ms  0x122e symkey:0x7f6e803c6a80
  6155 ms  0x122e PR_Close()
  6155 ms  0x122e fd:0x7f6e803e10d0
  6155 ms     | 0x122e PK11_Encrypt()
  6155 ms     | 0x122e symkey:0x7f6e803c7f80
           /* TID 0x1236 */
  6164 ms  0x1236 PR_Close()
  6164 ms  0x1236 fd:0x7f6e7ff1f700
           /* TID 0x122e */
  6210 ms  0x122e PK11_Encrypt()
  6210 ms  0x122e symkey:0x7f6e803c6a80
  6212 ms  0x122e SSL_ImportFD()
  6212 ms  0x122e ret:0x7f6e803e13d0
  6212 ms  0x122e SSL_AuthCertificateHook()
  6212 ms  0x122e fd:0x7f6e803e13d0
  6212 ms  0x122e ret:0x0
           /* TID 0x1236 */
  6214 ms  0x1236 PR_Close()
  6214 ms  0x1236 fd:0x7f6e803e1880
           /* TID 0x122e */
  6220 ms  0x122e PK11_Encrypt()
  6220 ms  0x122e symkey:0x7f6e803c7600
  6221 ms  0x122e PK11_Encrypt()
  6221 ms  0x122e symkey:0x7f6e803c7600
  6222 ms  0x122e PK11_Encrypt()
  6222 ms  0x122e symkey:0x7f6e803c7600
  6223 ms  0x122e PK11_Encrypt()
  6223 ms  0x122e symkey:0x7f6e803c7600
  6225 ms  0x122e PK11_Encrypt()
  6225 ms  0x122e symkey:0x7f6e803c7600
  6226 ms  0x122e PK11_Encrypt()
  6226 ms  0x122e symkey:0x7f6e803c7600
  6226 ms  0x122e PR_Connect()
  6226 ms  0x122e fd:0x7f6e803e13d0
  6227 ms  0x122e SSL_ImportFD()
  6227 ms  0x122e ret:0x7f6e7ff91f40
  6227 ms  0x122e SSL_AuthCertificateHook()
  6227 ms  0x122e fd:0x7f6e7ff91f40
  6227 ms  0x122e ret:0x0
  6227 ms  0x122e PR_Connect()
  6227 ms  0x122e fd:0x7f6e7ff91f40
  6227 ms  0x122e SSL_ImportFD()
  6227 ms  0x122e ret:0x7f6e7fffeac0
  6227 ms  0x122e SSL_AuthCertificateHook()
  6227 ms  0x122e fd:0x7f6e7fffeac0
  6227 ms  0x122e ret:0x0
  6227 ms  0x122e PR_Connect()
  6227 ms  0x122e fd:0x7f6e7fffeac0
  6228 ms  0x122e SSL_ImportFD()
  6228 ms  0x122e ret:0x7f6e803e1430
  6228 ms  0x122e SSL_AuthCertificateHook()
  6228 ms  0x122e fd:0x7f6e803e1430
  6228 ms  0x122e ret:0x0
  6228 ms  0x122e PR_Connect()
  6228 ms  0x122e fd:0x7f6e803e1430
  6228 ms  0x122e SSL_ImportFD()
  6228 ms  0x122e ret:0x7f6e802f5070
  6228 ms  0x122e SSL_AuthCertificateHook()
  6228 ms  0x122e fd:0x7f6e802f5070
  6228 ms  0x122e ret:0x0
  6228 ms  0x122e PR_Connect()
  6228 ms  0x122e fd:0x7f6e802f5070
  6229 ms  0x122e SSL_ImportFD()
  6229 ms  0x122e ret:0x7f6e803e10d0
  6229 ms  0x122e SSL_AuthCertificateHook()
  6229 ms  0x122e fd:0x7f6e803e10d0
  6229 ms  0x122e ret:0x0
  6229 ms  0x122e PR_Connect()
  6229 ms  0x122e fd:0x7f6e803e10d0
  6229 ms  0x122e PK11_Encrypt()
  6229 ms  0x122e symkey:0x7f6e803c7600
  6230 ms  0x122e PK11_Encrypt()
  6230 ms  0x122e symkey:0x7f6e803c7600
  6231 ms  0x122e PK11_Encrypt()
  6231 ms  0x122e symkey:0x7f6e803c7600
  6233 ms  0x122e PK11_Encrypt()
  6233 ms  0x122e symkey:0x7f6e803c7600
  6264 ms  0x122e SECKEY_CreateECPrivateKey()
  6264 ms  0x122e cx:0x7f6e80309908
  6265 ms     | 0x122e EC_ValidatePublicKey()
  6265 ms     | 0x122e ret:0x0
  6265 ms  0x122e ret:0x7f6e7fe47020::7f6e7fe47020  b0 95 f2 7f                                      ....
  6265 ms  0x122e SECKEY_CreateECPrivateKey()
  6265 ms  0x122e cx:0x7f6e80309908
  6266 ms     | 0x122e EC_ValidatePublicKey()
  6268 ms     | 0x122e ret:0x0
  6268 ms  0x122e ret:0x7f6e7fe49020::7f6e7fe49020  80 9d f2 7f                                      ....
  6271 ms  0x122e SECKEY_CreateECPrivateKey()
  6271 ms  0x122e cx:0x7f6e8030ae28
  6272 ms     | 0x122e EC_ValidatePublicKey()
  6272 ms     | 0x122e ret:0x0
  6272 ms  0x122e ret:0x7f6e7fe4b820::7f6e7fe4b820  50 81 fc 7f                                      P...
  6272 ms  0x122e SECKEY_CreateECPrivateKey()
  6272 ms  0x122e cx:0x7f6e8030ae28
  6273 ms     | 0x122e EC_ValidatePublicKey()
  6275 ms     | 0x122e ret:0x0
  6275 ms  0x122e ret:0x7f6e7fe4e020::7f6e7fe4e020  d0 83 fc 7f                                      ....
  6278 ms  0x122e SECKEY_CreateECPrivateKey()
  6278 ms  0x122e cx:0x7f6e8030ac88
  6279 ms     | 0x122e EC_ValidatePublicKey()
  6279 ms     | 0x122e ret:0x0
  6279 ms  0x122e ret:0x7f6e7fe51020::7f6e7fe51020  f0 86 fc 7f                                      ....
  6279 ms  0x122e SECKEY_CreateECPrivateKey()
  6279 ms  0x122e cx:0x7f6e8030ac88
  6279 ms     | 0x122e EC_ValidatePublicKey()
  6281 ms     | 0x122e ret:0x0
  6281 ms  0x122e ret:0x7f6e7fe53020::7f6e7fe53020  d0 88 fc 7f                                      ....
  6281 ms  0x122e SECKEY_CreateECPrivateKey()
  6281 ms  0x122e cx:0x7f6e8030aae8
  6282 ms     | 0x122e EC_ValidatePublicKey()
  6282 ms     | 0x122e ret:0x0
  6282 ms  0x122e ret:0x7f6e7fe55820::7f6e7fe55820  10 8a fc 7f                                      ....
  6282 ms  0x122e SECKEY_CreateECPrivateKey()
  6282 ms  0x122e cx:0x7f6e8030aae8
  6283 ms     | 0x122e EC_ValidatePublicKey()
  6284 ms     | 0x122e ret:0x0
  6284 ms  0x122e ret:0x7f6e80268820::7f6e80268820  f0 8b fc 7f                                      ....
  6296 ms  0x122e SECKEY_CreateECPrivateKey()
  6296 ms  0x122e cx:0x7f6e80309f88
  6296 ms     | 0x122e EC_ValidatePublicKey()
  6296 ms     | 0x122e ret:0x0
  6296 ms  0x122e ret:0x7f6e803a3820::7f6e803a3820  00 e6 38 80                                      ..8.
  6296 ms  0x122e SECKEY_CreateECPrivateKey()
  6296 ms  0x122e cx:0x7f6e80309f88
  6302 ms     | 0x122e EC_ValidatePublicKey()
  6303 ms     | 0x122e ret:0x0
  6303 ms  0x122e ret:0x7f6e803a8020::7f6e803a8020  70 e9 38 80                                      p.8.
  6313 ms  0x122e SECKEY_CreateECPrivateKey()
  6313 ms  0x122e cx:0x7f6e80309de8
  6313 ms     | 0x122e EC_ValidatePublicKey()
  6313 ms     | 0x122e ret:0x0
  6313 ms  0x122e ret:0x7f6e803aa820::7f6e803aa820  50 eb 38 80                                      P.8.
  6313 ms  0x122e SECKEY_CreateECPrivateKey()
  6313 ms  0x122e cx:0x7f6e80309de8
  6314 ms     | 0x122e EC_ValidatePublicKey()
  6315 ms     | 0x122e ret:0x0
  6315 ms  0x122e ret:0x7f6e803ac820::7f6e803ac820  30 ed 38 80                                      0.8.
  6324 ms  0x122e PK11_Encrypt()
  6324 ms  0x122e symkey:0x7f6e803c7600
  6326 ms  0x122e PK11_Encrypt()
  6326 ms  0x122e symkey:0x7f6e803c7600
  6326 ms  0x122e PK11_Encrypt()
  6326 ms  0x122e symkey:0x7f6e803c7600
  6327 ms  0x122e PK11_Encrypt()
  6327 ms  0x122e symkey:0x7f6e803c7600
  6327 ms  0x122e PK11_Encrypt()
  6327 ms  0x122e symkey:0x7f6e803c7600
  6327 ms  0x122e PK11_Encrypt()
  6327 ms  0x122e symkey:0x7f6e803c7600
  6327 ms  0x122e PK11_Encrypt()
  6327 ms  0x122e symkey:0x7f6e803c7600
  6327 ms  0x122e PK11_Encrypt()
  6327 ms  0x122e symkey:0x7f6e803c7600
           /* TID 0x1236 */
  6330 ms  0x1236 PR_Close()
  6330 ms  0x1236 fd:0x7f6e7fe89100
           /* TID 0x122e */
  6331 ms  SECKEY_ECParamsToKeySize()
  6331 ms  0x122e ret:0x100
  6331 ms  0x122e SECKEY_CreateECPrivateKey()
  6331 ms  0x122e cx:0x7f6e8030ae28
  6332 ms     | 0x122e EC_ValidatePublicKey()
  6333 ms     | 0x122e ret:0x0
  6333 ms  0x122e ret:0x7f6e803ba020::7f6e803ba020  60 ef 38 80                                      `.8.
  6333 ms  0x122e PK11_PubDeriveWithKDF()
  6333 ms  0x122e seckey:0x7f6e803ba020
  6333 ms     | 0x122e EC_ValidatePublicKey()
  6335 ms     | 0x122e ret:0x0
           /* TID 0x1236 */
  6337 ms  0x1236 PR_Close()
  6337 ms  0x1236 fd:0x7f6e7fe89100
           /* TID 0x122e */
  6349 ms  0x122e ret:0x7f6e803c7e00
  6349 ms  0x122e PK11_DeriveWithFlags()
  6349 ms  0x122e basekey:0x7f6e803c7e00
  6349 ms     | 0x122e PK11_DeriveWithTemplate()
  6349 ms  0x122e ret:0x7f6e803c7d80
  6349 ms  0x122e PK11_Derive()
  6349 ms  0x122e basekey:0x7f6e803c7d80
  6349 ms     | 0x122e PK11_DeriveWithTemplate()
  6349 ms  0x122e ret:0x7f6e803c6d80
  6349 ms  0x122e SECKEY_DestroyPrivateKey()
  6349 ms  0x122e privk:0x7f6e803ba020::7f6e803ba020  60 ef 38 80                                      `.8.
  6349 ms  0x122e privk:0x7f6e803ba020::7f6e803ba020  e5 e5 e5 e5                                      ....
  6349 ms  0x122e PK11_Encrypt()
  6349 ms  0x122e symkey:0x7f6e803c7e80
  6350 ms  SECKEY_ECParamsToKeySize()
  6350 ms  0x122e ret:0x100
  6350 ms  0x122e SECKEY_CreateECPrivateKey()
  6350 ms  0x122e cx:0x7f6e8030ac88
  6351 ms     | 0x122e EC_ValidatePublicKey()
  6352 ms     | 0x122e ret:0x0
  6353 ms  0x122e ret:0x7f6e80259820::7f6e80259820  70 94 f2 7f                                      p...
  6353 ms  0x122e PK11_PubDeriveWithKDF()
  6353 ms  0x122e seckey:0x7f6e80259820
  6353 ms     | 0x122e EC_ValidatePublicKey()
  6354 ms     | 0x122e ret:0x0
  6355 ms  0x122e ret:0x7f6e803c7e00
  6356 ms  0x122e PK11_DeriveWithFlags()
  6356 ms  0x122e basekey:0x7f6e803c7e00
  6356 ms     | 0x122e PK11_DeriveWithTemplate()
  6356 ms  0x122e ret:0x7f6e9a1cb900
  6356 ms  0x122e PK11_Derive()
  6356 ms  0x122e basekey:0x7f6e9a1cb900
  6356 ms     | 0x122e PK11_DeriveWithTemplate()
  6356 ms  0x122e ret:0x7f6e92435600
  6356 ms  0x122e SECKEY_DestroyPrivateKey()
  6356 ms  0x122e privk:0x7f6e80259820::7f6e80259820  70 94 f2 7f                                      p...
  6356 ms  0x122e privk:0x7f6e80259820::7f6e80259820  e5 e5 e5 e5                                      ....
  6356 ms  0x122e PK11_Encrypt()
  6356 ms  0x122e symkey:0x7f6e803c6e80
  6368 ms  SECKEY_ECParamsToKeySize()
  6368 ms  0x122e ret:0x100
  6368 ms  0x122e SECKEY_CreateECPrivateKey()
  6368 ms  0x122e cx:0x7f6e8030aae8
  6368 ms     | 0x122e EC_ValidatePublicKey()
  6370 ms     | 0x122e ret:0x0
  6370 ms  0x122e ret:0x7f6e8025d020::7f6e8025d020  40 97 f2 7f                                      @...
  6370 ms  0x122e PK11_PubDeriveWithKDF()
  6370 ms  0x122e seckey:0x7f6e8025d020
  6370 ms     | 0x122e EC_ValidatePublicKey()
  6371 ms     | 0x122e ret:0x0
  6373 ms  0x122e ret:0x7f6e803c7e00
  6373 ms  0x122e PK11_DeriveWithFlags()
  6373 ms  0x122e basekey:0x7f6e803c7e00
  6373 ms     | 0x122e PK11_DeriveWithTemplate()
  6373 ms  0x122e ret:0x7f6e803c6980
  6373 ms  0x122e PK11_Derive()
  6373 ms  0x122e basekey:0x7f6e803c6980
  6373 ms     | 0x122e PK11_DeriveWithTemplate()
  6373 ms  0x122e ret:0x7f6e803c6b80
  6373 ms  0x122e SECKEY_DestroyPrivateKey()
  6373 ms  0x122e privk:0x7f6e8025d020::7f6e8025d020  40 97 f2 7f                                      @...
  6373 ms  0x122e privk:0x7f6e8025d020::7f6e8025d020  e5 e5 e5 e5                                      ....
  6373 ms  0x122e PK11_Encrypt()
  6373 ms  0x122e symkey:0x7f6e7feddc00
  6380 ms  SECKEY_ECParamsToKeySize()
  6380 ms  0x122e ret:0x100
  6380 ms  0x122e SECKEY_CreateECPrivateKey()
  6380 ms  0x122e cx:0x7f6e80309908
  6380 ms     | 0x122e EC_ValidatePublicKey()
  6382 ms     | 0x122e ret:0x0
  6382 ms  0x122e ret:0x7f6e8025d820::7f6e8025d820  e0 97 f2 7f                                      ....
  6382 ms  0x122e PK11_PubDeriveWithKDF()
  6382 ms  0x122e seckey:0x7f6e8025d820
  6382 ms     | 0x122e EC_ValidatePublicKey()
  6383 ms     | 0x122e ret:0x0
  6385 ms  0x122e ret:0x7f6e803c7e00
  6385 ms  0x122e PK11_DeriveWithFlags()
  6385 ms  0x122e basekey:0x7f6e803c7e00
  6385 ms     | 0x122e PK11_DeriveWithTemplate()
  6385 ms  0x122e ret:0x7f6e803c7a00
  6385 ms  0x122e PK11_Derive()
  6385 ms  0x122e basekey:0x7f6e803c7a00
  6385 ms     | 0x122e PK11_DeriveWithTemplate()
  6385 ms  0x122e ret:0x7f6e7feddd00
  6385 ms  0x122e SECKEY_DestroyPrivateKey()
  6385 ms  0x122e privk:0x7f6e8025d820::7f6e8025d820  e0 97 f2 7f                                      ....
  6385 ms  0x122e privk:0x7f6e8025d820::7f6e8025d820  e5 e5 e5 e5                                      ....
  6385 ms  0x122e PK11_Encrypt()
  6385 ms  0x122e symkey:0x7f6e7fedde80
  6391 ms  0x122e SSL_AuthCertificateComplete()
  6391 ms  0x122e fd:0x7f6e803e10d0
  6391 ms  0x122e err:0x0
  6391 ms  0x122e SSL_AuthCertificateComplete()
  6391 ms  0x122e fd:0x7f6e802f5070
  6391 ms  0x122e err:0x0
  6391 ms  0x122e SSL_AuthCertificateComplete()
  6391 ms  0x122e fd:0x7f6e803e1430
  6391 ms  0x122e err:0x0
  6391 ms  0x122e SSL_AuthCertificateComplete()
  6391 ms  0x122e fd:0x7f6e803e13d0
  6391 ms  0x122e err:0x0
  6392 ms  0x122e PK11_Encrypt()
  6392 ms  0x122e symkey:0x7f6e803c7600
           /* TID 0x1236 */
  6393 ms  0x1236 PR_Close()
  6393 ms  0x1236 fd:0x7f6e7fe89730
           /* TID 0x122e */
  6393 ms  0x122e PK11_Encrypt()
  6393 ms  0x122e symkey:0x7f6e803c7e80
  6394 ms  0x122e PK11_Encrypt()
  6394 ms  0x122e symkey:0x7f6e803c6e80
  6394 ms  0x122e PK11_Encrypt()
  6394 ms  0x122e symkey:0x7f6e7feddc00
  6395 ms  SECKEY_ECParamsToKeySize()
  6395 ms  0x122e ret:0x100
  6395 ms  0x122e SECKEY_CreateECPrivateKey()
  6395 ms  0x122e cx:0x7f6e80309f88
  6395 ms     | 0x122e EC_ValidatePublicKey()
  6397 ms     | 0x122e ret:0x0
  6397 ms  0x122e ret:0x7f6e803a9020::7f6e803a9020  80 98 f2 7f                                      ....
  6397 ms  0x122e PK11_PubDeriveWithKDF()
  6397 ms  0x122e seckey:0x7f6e803a9020
  6397 ms     | 0x122e EC_ValidatePublicKey()
  6398 ms     | 0x122e ret:0x0
  6400 ms  0x122e ret:0x7f6e803c7e00
  6400 ms  0x122e PK11_DeriveWithFlags()
  6400 ms  0x122e basekey:0x7f6e803c7e00
  6400 ms     | 0x122e PK11_DeriveWithTemplate()
  6400 ms  0x122e ret:0x7f6e7ff11180
  6400 ms  0x122e PK11_Derive()
  6400 ms  0x122e basekey:0x7f6e7ff11180
  6400 ms     | 0x122e PK11_DeriveWithTemplate()
  6400 ms  0x122e ret:0x7f6e7ff11b00
  6400 ms  0x122e SECKEY_DestroyPrivateKey()
  6400 ms  0x122e privk:0x7f6e803a9020::7f6e803a9020  80 98 f2 7f                                      ....
  6400 ms  0x122e privk:0x7f6e803a9020::7f6e803a9020  e5 e5 e5 e5                                      ....
  6400 ms  0x122e PK11_Encrypt()
  6400 ms  0x122e symkey:0x7f6e7fffb480
  6407 ms  SECKEY_ECParamsToKeySize()
  6407 ms  0x122e ret:0x100
  6407 ms  0x122e SECKEY_CreateECPrivateKey()
  6407 ms  0x122e cx:0x7f6e80309de8
  6408 ms     | 0x122e EC_ValidatePublicKey()
  6409 ms     | 0x122e ret:0x0
  6409 ms  0x122e ret:0x7f6e803b4820::7f6e803b4820  20 99 f2 7f                                       ...
  6409 ms  0x122e PK11_PubDeriveWithKDF()
  6409 ms  0x122e seckey:0x7f6e803b4820
  6409 ms     | 0x122e EC_ValidatePublicKey()
  6417 ms     | 0x122e ret:0x0
  6418 ms  0x122e ret:0x7f6e803c7e00
  6418 ms  0x122e PK11_DeriveWithFlags()
  6418 ms  0x122e basekey:0x7f6e803c7e00
  6418 ms     | 0x122e PK11_DeriveWithTemplate()
  6418 ms  0x122e ret:0x7f6e7fffbf00
  6418 ms  0x122e PK11_Derive()
  6418 ms  0x122e basekey:0x7f6e7fffbf00
  6418 ms     | 0x122e PK11_DeriveWithTemplate()
  6418 ms  0x122e ret:0x7f6e8023b680
  6418 ms  0x122e SECKEY_DestroyPrivateKey()
  6418 ms  0x122e privk:0x7f6e803b4820::7f6e803b4820  20 99 f2 7f                                       ...
  6418 ms  0x122e privk:0x7f6e803b4820::7f6e803b4820  e5 e5 e5 e5                                      ....
  6418 ms  0x122e PK11_Encrypt()
  6418 ms  0x122e symkey:0x7f6e8029bb00
  6419 ms  0x122e PK11_Encrypt()
  6419 ms  0x122e symkey:0x7f6e7fedde80
  6419 ms  0x122e SSL_ImportFD()
  6419 ms  0x122e ret:0x7f6e7fe89a90
  6419 ms  0x122e SSL_AuthCertificateHook()
  6419 ms  0x122e fd:0x7f6e7fe89a90
  6419 ms  0x122e ret:0x0
  6419 ms  0x122e PR_Connect()
  6419 ms  0x122e fd:0x7f6e7fe89a90
  6420 ms  0x122e SSL_ImportFD()
  6420 ms  0x122e ret:0x7f6e7fe89880
  6420 ms  0x122e SSL_AuthCertificateHook()
  6420 ms  0x122e fd:0x7f6e7fe89880
  6420 ms  0x122e ret:0x0
  6420 ms  0x122e PR_Connect()
  6420 ms  0x122e fd:0x7f6e7fe89880
  6420 ms  0x122e SSL_AuthCertificateComplete()
  6420 ms  0x122e fd:0x7f6e7fffeac0
  6420 ms  0x122e err:0x0
  6420 ms  0x122e SSL_AuthCertificateComplete()
  6420 ms  0x122e fd:0x7f6e7ff91f40
  6420 ms  0x122e err:0x0
           /* TID 0x1236 */
  6422 ms  0x1236 PR_Close()
  6422 ms  0x1236 fd:0x7f6e7fe892e0
           /* TID 0x122e */
  6422 ms  0x122e PK11_Encrypt()
  6422 ms  0x122e symkey:0x7f6e803c7600
  6422 ms  0x122e PK11_Encrypt()
  6422 ms  0x122e symkey:0x7f6e803c7600
  6435 ms  0x122e SECKEY_DestroyPrivateKey()
  6435 ms  0x122e privk:0x7f6e7fe4e020::7f6e7fe4e020  d0 83 fc 7f                                      ....
  6435 ms  0x122e privk:0x7f6e7fe4e020::7f6e7fe4e020  e5 e5 e5 e5                                      ....
  6435 ms  0x122e SECKEY_DestroyPrivateKey()
  6435 ms  0x122e privk:0x7f6e7fe4b820::7f6e7fe4b820  50 81 fc 7f                                      P...
  6435 ms  0x122e privk:0x7f6e7fe4b820::7f6e7fe4b820  e5 e5 e5 e5                                      ....
  6435 ms  0x122e SECKEY_DestroyPrivateKey()
  6435 ms  0x122e privk:0x7f6e7fe53020::7f6e7fe53020  d0 88 fc 7f                                      ....
  6435 ms  0x122e privk:0x7f6e7fe53020::7f6e7fe53020  e5 e5 e5 e5                                      ....
  6435 ms  0x122e SECKEY_DestroyPrivateKey()
  6435 ms  0x122e privk:0x7f6e7fe51020::7f6e7fe51020  f0 86 fc 7f                                      ....
  6435 ms  0x122e privk:0x7f6e7fe51020::7f6e7fe51020  e5 e5 e5 e5                                      ....
  6435 ms  0x122e SECKEY_DestroyPrivateKey()
  6435 ms  0x122e privk:0x7f6e80268820::7f6e80268820  f0 8b fc 7f                                      ....
  6435 ms  0x122e privk:0x7f6e80268820::7f6e80268820  e5 e5 e5 e5                                      ....
  6436 ms  0x122e SECKEY_DestroyPrivateKey()
  6436 ms  0x122e privk:0x7f6e7fe55820::7f6e7fe55820  10 8a fc 7f                                      ....
  6436 ms  0x122e privk:0x7f6e7fe55820::7f6e7fe55820  e5 e5 e5 e5                                      ....
  6436 ms  0x122e PK11_Encrypt()
  6436 ms  0x122e symkey:0x7f6e7fffb480
  6436 ms  0x122e PK11_Encrypt()
  6436 ms  0x122e symkey:0x7f6e8029bb00
  6436 ms  0x122e PR_Close()
  6436 ms  0x122e fd:0x7f6e803e1430
  6436 ms     | 0x122e PK11_Encrypt()
  6436 ms     | 0x122e symkey:0x7f6e7feddc00
  6437 ms  0x122e PR_Close()
  6437 ms  0x122e fd:0x7f6e802f5070
  6437 ms     | 0x122e PK11_Encrypt()
  6437 ms     | 0x122e symkey:0x7f6e803c6e80
  6437 ms  0x122e PR_Close()
  6437 ms  0x122e fd:0x7f6e803e10d0
  6437 ms     | 0x122e PK11_Encrypt()
  6437 ms     | 0x122e symkey:0x7f6e803c7e80
  6437 ms  0x122e SSL_ImportFD()
  6437 ms  0x122e ret:0x7f6e7fe89790
  6437 ms  0x122e SSL_AuthCertificateHook()
  6437 ms  0x122e fd:0x7f6e7fe89790
  6437 ms  0x122e ret:0x0
  6437 ms  0x122e PR_Connect()
  6437 ms  0x122e fd:0x7f6e7fe89790
  6438 ms  0x122e SSL_ImportFD()
  6438 ms  0x122e ret:0x7f6e7fe89640
  6438 ms  0x122e SSL_AuthCertificateHook()
  6438 ms  0x122e fd:0x7f6e7fe89640
  6438 ms  0x122e ret:0x0
  6438 ms  0x122e PR_Connect()
  6438 ms  0x122e fd:0x7f6e7fe89640
  6439 ms  0x122e PK11_Encrypt()
  6439 ms  0x122e symkey:0x7f6e803c7600
  6439 ms  0x122e SECKEY_DestroyPrivateKey()
  6439 ms  0x122e privk:0x7f6e7fe49020::7f6e7fe49020  80 9d f2 7f                                      ....
  6439 ms  0x122e privk:0x7f6e7fe49020::7f6e7fe49020  e5 e5 e5 e5                                      ....
  6439 ms  0x122e SECKEY_DestroyPrivateKey()
  6439 ms  0x122e privk:0x7f6e7fe47020::7f6e7fe47020  b0 95 f2 7f                                      ....
  6439 ms  0x122e privk:0x7f6e7fe47020::7f6e7fe47020  e5 e5 e5 e5                                      ....
  6439 ms  0x122e SECKEY_DestroyPrivateKey()
  6439 ms  0x122e privk:0x7f6e803a8020::7f6e803a8020  70 e9 38 80                                      p.8.
  6439 ms  0x122e privk:0x7f6e803a8020::7f6e803a8020  e5 e5 e5 e5                                      ....
  6440 ms  0x122e SECKEY_DestroyPrivateKey()
  6440 ms  0x122e privk:0x7f6e803a3820::7f6e803a3820  00 e6 38 80                                      ..8.
  6440 ms  0x122e privk:0x7f6e803a3820::7f6e803a3820  e5 e5 e5 e5                                      ....
  6440 ms  0x122e PR_Close()
  6440 ms  0x122e fd:0x7f6e7fffeac0
  6440 ms     | 0x122e PK11_Encrypt()
  6440 ms     | 0x122e symkey:0x7f6e7fffb480
  6440 ms  0x122e PR_Close()
  6440 ms  0x122e fd:0x7f6e803e13d0
  6440 ms     | 0x122e PK11_Encrypt()
  6440 ms     | 0x122e symkey:0x7f6e7fedde80
           /* TID 0x1236 */
  6442 ms  0x1236 PR_Close()
  6442 ms  0x1236 fd:0x7f6e7fe891c0
  6442 ms  0x1236 PR_Close()
  6442 ms  0x1236 fd:0x7f6e7fe891c0
  6443 ms  0x1236 PR_Close()
  6443 ms  0x1236 fd:0x7f6e7fe891c0
  6446 ms  0x1236 PR_Close()
  6446 ms  0x1236 fd:0x7f6e7fe891c0
  6447 ms  0x1236 PR_Close()
  6447 ms  0x1236 fd:0x7f6e7fe891c0
  6447 ms  0x1236 PR_Close()
  6447 ms  0x1236 fd:0x7f6e7fe891c0
  6450 ms  0x1236 PR_Close()
  6450 ms  0x1236 fd:0x7f6e7fe891c0
  6451 ms  0x1236 PR_Close()
  6451 ms  0x1236 fd:0x7f6e7fe891c0
           /* TID 0x122e */
  6457 ms  0x122e SECKEY_DestroyPrivateKey()
  6457 ms  0x122e privk:0x7f6e803ac820::7f6e803ac820  30 ed 38 80                                      0.8.
  6457 ms  0x122e privk:0x7f6e803ac820::7f6e803ac820  e5 e5 e5 e5                                      ....
  6457 ms  0x122e SECKEY_DestroyPrivateKey()
  6457 ms  0x122e privk:0x7f6e803aa820::7f6e803aa820  50 eb 38 80                                      P.8.
  6457 ms  0x122e privk:0x7f6e803aa820::7f6e803aa820  e5 e5 e5 e5                                      ....
  6457 ms  0x122e PR_Close()
  6457 ms  0x122e fd:0x7f6e7ff91f40
  6457 ms     | 0x122e PK11_Encrypt()
  6457 ms     | 0x122e symkey:0x7f6e8029bb00
           /* TID 0x1236 */
  6458 ms  0x1236 PR_Close()
  6458 ms  0x1236 fd:0x7f6e7fe891c0
           /* TID 0x122e */
  6459 ms  0x122e SECKEY_CreateECPrivateKey()
  6459 ms  0x122e cx:0x7f6e8030be68
  6459 ms     | 0x122e EC_ValidatePublicKey()
  6459 ms     | 0x122e ret:0x0
  6459 ms  0x122e ret:0x7f6e7fe3d020::7f6e7fe3d020  d0 93 f2 7f                                      ....
  6459 ms  0x122e SECKEY_CreateECPrivateKey()
  6459 ms  0x122e cx:0x7f6e8030be68
  6460 ms     | 0x122e EC_ValidatePublicKey()
  6461 ms     | 0x122e ret:0x0
  6461 ms  0x122e ret:0x7f6e7fe40020::7f6e7fe40020  50 96 f2 7f                                      P...
           /* TID 0x1236 */
  6462 ms  0x1236 PR_Close()
  6462 ms  0x1236 fd:0x7f6e7fe890a0
  6463 ms  0x1236 PR_Close()
  6463 ms  0x1236 fd:0x7f6e7fe890a0
  6463 ms  0x1236 PR_Close()
  6463 ms  0x1236 fd:0x7f6e7fe890a0
  6464 ms  0x1236 PR_Close()
  6464 ms  0x1236 fd:0x7f6e7fe890a0
  6465 ms  0x1236 PR_Close()
  6465 ms  0x1236 fd:0x7f6e7fe890a0
  6465 ms  0x1236 PR_Close()
  6465 ms  0x1236 fd:0x7f6e7fe890a0
  6466 ms  0x1236 PR_Close()
  6466 ms  0x1236 fd:0x7f6e7fe890a0
           /* TID 0x122e */
  6468 ms  0x122e SECKEY_CreateECPrivateKey()
  6468 ms  0x122e cx:0x7f6e8030bcc8
  6469 ms     | 0x122e EC_ValidatePublicKey()
  6469 ms     | 0x122e ret:0x0
  6469 ms  0x122e ret:0x7f6e7fe46020::7f6e7fe46020  f0 d1 f1 7f                                      ....
  6469 ms  0x122e SECKEY_CreateECPrivateKey()
  6469 ms  0x122e cx:0x7f6e8030bcc8
  6469 ms     | 0x122e EC_ValidatePublicKey()
  6471 ms     | 0x122e ret:0x0
  6471 ms  0x122e ret:0x7f6e7fe48020::7f6e7fe48020  e0 97 f2 7f                                      ....
  6475 ms  0x122e SECKEY_CreateECPrivateKey()
  6475 ms  0x122e cx:0x7f6e90f83e68
  6475 ms     | 0x122e EC_ValidatePublicKey()
  6475 ms     | 0x122e ret:0x0
  6475 ms  0x122e ret:0x7f6e7fe4a820::7f6e7fe4a820  d0 98 f2 7f                                      ....
  6476 ms  0x122e SECKEY_CreateECPrivateKey()
  6476 ms  0x122e cx:0x7f6e90f83e68
  6476 ms     | 0x122e EC_ValidatePublicKey()
  6478 ms     | 0x122e ret:0x0
  6478 ms  0x122e ret:0x7f6e7fe4c820::7f6e7fe4c820  40 9c f2 7f                                      @...
  6481 ms  0x122e SECKEY_CreateECPrivateKey()
  6481 ms  0x122e cx:0x7f6e7fea70a8
  6481 ms     | 0x122e EC_ValidatePublicKey()
  6481 ms     | 0x122e ret:0x0
  6481 ms  0x122e ret:0x7f6e7fe50820::7f6e7fe50820  10 9f f2 7f                                      ....
  6481 ms  0x122e SECKEY_CreateECPrivateKey()
  6481 ms  0x122e cx:0x7f6e7fea70a8
  6482 ms     | 0x122e EC_ValidatePublicKey()
  6490 ms     | 0x122e ret:0x0
  6490 ms  0x122e ret:0x7f6e7fe52820::7f6e7fe52820  70 44 fa 7f                                      pD..
           /* TID 0x1236 */
  6492 ms  0x1236 PR_Close()
  6492 ms  0x1236 fd:0x7f6e7fe89310
  6493 ms  0x1236 PR_Close()
  6493 ms  0x1236 fd:0x7f6e7fe89310
  6494 ms  0x1236 PR_Close()
  6494 ms  0x1236 fd:0x7f6e7fe89310
           /* TID 0x122e */
  6517 ms  0x122e PK11_Derive()
  6517 ms  0x122e basekey:0x7f6e8023b680
  6517 ms     | 0x122e PK11_DeriveWithTemplate()
  6517 ms  0x122e ret:0x7f6e7fffbf00
  6517 ms  0x122e PK11_PubDeriveWithKDF()
  6517 ms  0x122e seckey:0x7f6e7fe3d020
  6517 ms     | 0x122e EC_ValidatePublicKey()
  6517 ms     | 0x122e ret:0x0
  6517 ms  0x122e ret:0x7f6e8023b680
  6518 ms  SECKEY_ECParamsToKeySize()
  6518 ms  0x122e ret:0xff
  6518 ms  0x122e PK11_DeriveWithFlags()
  6518 ms  0x122e basekey:0x7f6e7fffbf00
  6518 ms     | 0x122e PK11_DeriveWithTemplate()
  6518 ms  0x122e ret:0x7f6e7feddd00
  6518 ms  0x122e PK11_Derive()
  6518 ms  0x122e basekey:0x7f6e8023b680
  6518 ms     | 0x122e PK11_DeriveWithTemplate()
  6518 ms  0x122e ret:0x7f6e803c7a00
  6518 ms  0x122e PK11_DeriveWithFlags()
  6518 ms  0x122e basekey:0x7f6e803c7a00
  6518 ms     | 0x122e PK11_DeriveWithTemplate()
  6518 ms  0x122e ret:0x7f6e7fffbf00
  6518 ms  0x122e PK11_DeriveWithFlags()
  6518 ms  0x122e basekey:0x7f6e803c7a00
  6518 ms     | 0x122e PK11_DeriveWithTemplate()
  6518 ms  0x122e ret:0x7f6e8023b680
  6518 ms  0x122e PK11_DeriveWithFlags()
  6518 ms  0x122e basekey:0x7f6e803c7a00
  6518 ms     | 0x122e PK11_DeriveWithTemplate()
  6518 ms  0x122e ret:0x7f6e7feddd00
  6518 ms  0x122e PK11_Derive()
  6518 ms  0x122e basekey:0x7f6e7ff11b00
  6518 ms     | 0x122e PK11_DeriveWithTemplate()
  6518 ms  0x122e ret:0x7f6e7ff11180
  6518 ms  0x122e PK11_DeriveWithFlags()
  6518 ms  0x122e basekey:0x7f6e8023b680
  6518 ms     | 0x122e PK11_DeriveWithTemplate()
  6518 ms  0x122e ret:0x7f6e803c7a00
  6518 ms  0x122e PK11_DeriveWithFlags()
  6518 ms  0x122e basekey:0x7f6e8023b680
  6518 ms     | 0x122e PK11_DeriveWithTemplate()
  6518 ms  0x122e ret:0x7f6e7feddd00
  6520 ms  SECKEY_ECParamsToKeySize()
  6520 ms  0x122e ret:0x100
  6520 ms  SECKEY_ECParamsToBasePointOrderLen()
  6520 ms  0x122e ret:0x100
  6520 ms  SECKEY_ECParamsToBasePointOrderLen()
  6520 ms  0x122e ret:0x100
  6520 ms  0x122e EC_ValidatePublicKey()
  6521 ms  0x122e ret:0x0
  6523 ms  0x122e PK11_DeriveWithFlags()
  6523 ms  0x122e basekey:0x7f6e8023b680
  6523 ms     | 0x122e PK11_DeriveWithTemplate()
  6523 ms  0x122e ret:0x7f6e7feddd00
  6527 ms  0x122e PK11_Derive()
  6527 ms  0x122e basekey:0x7f6e7feddd00
  6527 ms     | 0x122e PK11_DeriveWithTemplate()
  6527 ms  0x122e ret:0x7f6e7ff11b00
  6527 ms  0x122e PK11_PubDeriveWithKDF()
  6527 ms  0x122e seckey:0x7f6e7fe46020
  6527 ms     | 0x122e EC_ValidatePublicKey()
  6527 ms     | 0x122e ret:0x0
  6527 ms  0x122e ret:0x7f6e7feddd00
  6527 ms  SECKEY_ECParamsToKeySize()
  6527 ms  0x122e ret:0xff
  6527 ms  0x122e PK11_DeriveWithFlags()
  6527 ms  0x122e basekey:0x7f6e7ff11b00
  6527 ms     | 0x122e PK11_DeriveWithTemplate()
  6527 ms  0x122e ret:0x7f6e803c6d80
  6527 ms  0x122e PK11_Derive()
  6527 ms  0x122e basekey:0x7f6e7feddd00
  6527 ms     | 0x122e PK11_DeriveWithTemplate()
  6527 ms  0x122e ret:0x7f6e803c7d80
  6527 ms  0x122e PK11_DeriveWithFlags()
  6527 ms  0x122e basekey:0x7f6e803c7d80
  6527 ms     | 0x122e PK11_DeriveWithTemplate()
  6527 ms  0x122e ret:0x7f6e7ff11b00
  6527 ms  0x122e PK11_DeriveWithFlags()
  6527 ms  0x122e basekey:0x7f6e803c7d80
  6527 ms     | 0x122e PK11_DeriveWithTemplate()
  6527 ms  0x122e ret:0x7f6e7feddd00
  6527 ms  0x122e PK11_DeriveWithFlags()
  6527 ms  0x122e basekey:0x7f6e803c7d80
  6527 ms     | 0x122e PK11_DeriveWithTemplate()
  6527 ms  0x122e ret:0x7f6e803c6d80
  6527 ms  0x122e PK11_Derive()
  6527 ms  0x122e basekey:0x7f6e92435600
  6527 ms     | 0x122e PK11_DeriveWithTemplate()
  6528 ms  0x122e ret:0x7f6e9a1cb900
  6528 ms  0x122e PK11_DeriveWithFlags()
  6528 ms  0x122e basekey:0x7f6e7feddd00
  6528 ms     | 0x122e PK11_DeriveWithTemplate()
  6528 ms  0x122e ret:0x7f6e803c7d80
  6528 ms  0x122e PK11_DeriveWithFlags()
  6528 ms  0x122e basekey:0x7f6e7feddd00
  6528 ms     | 0x122e PK11_DeriveWithTemplate()
  6528 ms  0x122e ret:0x7f6e803c6d80
  6529 ms  SECKEY_ECParamsToKeySize()
  6529 ms  0x122e ret:0x100
  6529 ms  SECKEY_ECParamsToBasePointOrderLen()
  6529 ms  0x122e ret:0x100
  6529 ms  SECKEY_ECParamsToBasePointOrderLen()
  6529 ms  0x122e ret:0x100
  6529 ms  0x122e EC_ValidatePublicKey()
  6530 ms  0x122e ret:0x0
  6532 ms  0x122e PK11_DeriveWithFlags()
  6532 ms  0x122e basekey:0x7f6e7feddd00
  6532 ms     | 0x122e PK11_DeriveWithTemplate()
  6532 ms  0x122e ret:0x7f6e803c6d80
  6547 ms  0x122e PK11_Derive()
  6547 ms  0x122e basekey:0x7f6e803c6d80
  6547 ms     | 0x122e PK11_DeriveWithTemplate()
  6547 ms  0x122e ret:0x7f6e92435600
  6547 ms  0x122e PK11_PubDeriveWithKDF()
  6547 ms  0x122e seckey:0x7f6e7fe50820
  6547 ms     | 0x122e EC_ValidatePublicKey()
  6547 ms     | 0x122e ret:0x0
  6548 ms  0x122e ret:0x7f6e803c6d80
  6548 ms  SECKEY_ECParamsToKeySize()
  6548 ms  0x122e ret:0xff
  6548 ms  0x122e PK11_DeriveWithFlags()
  6548 ms  0x122e basekey:0x7f6e92435600
  6548 ms     | 0x122e PK11_DeriveWithTemplate()
  6548 ms  0x122e ret:0x7f6e803c6b80
  6548 ms  0x122e PK11_Derive()
  6548 ms  0x122e basekey:0x7f6e803c6d80
  6548 ms     | 0x122e PK11_DeriveWithTemplate()
  6548 ms  0x122e ret:0x7f6e803c6980
  6548 ms  0x122e PK11_DeriveWithFlags()
  6548 ms  0x122e basekey:0x7f6e803c6980
  6548 ms     | 0x122e PK11_DeriveWithTemplate()
  6548 ms  0x122e ret:0x7f6e92435600
  6548 ms  0x122e PK11_DeriveWithFlags()
  6548 ms  0x122e basekey:0x7f6e803c6980
  6548 ms     | 0x122e PK11_DeriveWithTemplate()
  6548 ms  0x122e ret:0x7f6e803c6d80
  6548 ms  0x122e PK11_DeriveWithFlags()
  6548 ms  0x122e basekey:0x7f6e803c6980
  6548 ms     | 0x122e PK11_DeriveWithTemplate()
  6548 ms  0x122e ret:0x7f6e803c6b80
  6548 ms  0x122e PK11_Derive()
  6548 ms  0x122e basekey:0x7f6e803c7e00
  6548 ms     | 0x122e PK11_DeriveWithTemplate()
  6548 ms  0x122e ret:0x7f6e8029a980
  6548 ms  0x122e PK11_DeriveWithFlags()
  6548 ms  0x122e basekey:0x7f6e803c6d80
  6548 ms     | 0x122e PK11_DeriveWithTemplate()
  6548 ms  0x122e ret:0x7f6e803c6980
  6548 ms  0x122e PK11_DeriveWithFlags()
  6548 ms  0x122e basekey:0x7f6e803c6d80
  6548 ms     | 0x122e PK11_DeriveWithTemplate()
  6548 ms  0x122e ret:0x7f6e803c6b80
  6549 ms  SECKEY_ECParamsToKeySize()
  6549 ms  0x122e ret:0x100
  6549 ms  SECKEY_ECParamsToBasePointOrderLen()
  6549 ms  0x122e ret:0x100
  6549 ms  SECKEY_ECParamsToBasePointOrderLen()
  6549 ms  0x122e ret:0x100
  6549 ms  0x122e EC_ValidatePublicKey()
  6550 ms  0x122e ret:0x0
  6552 ms  0x122e PK11_DeriveWithFlags()
  6552 ms  0x122e basekey:0x7f6e803c6d80
  6552 ms     | 0x122e PK11_DeriveWithTemplate()
  6552 ms  0x122e ret:0x7f6e803c6b80
  6552 ms  0x122e PK11_Derive()
  6552 ms  0x122e basekey:0x7f6e803c6b80
  6552 ms     | 0x122e PK11_DeriveWithTemplate()
  6552 ms  0x122e ret:0x7f6e803c7e00
  6552 ms  0x122e PK11_PubDeriveWithKDF()
  6552 ms  0x122e seckey:0x7f6e7fe4a820
  6552 ms     | 0x122e EC_ValidatePublicKey()
  6552 ms     | 0x122e ret:0x0
  6553 ms  0x122e ret:0x7f6e803c6b80
  6553 ms  SECKEY_ECParamsToKeySize()
  6553 ms  0x122e ret:0xff
  6553 ms  0x122e PK11_DeriveWithFlags()
  6553 ms  0x122e basekey:0x7f6e803c7e00
  6553 ms     | 0x122e PK11_DeriveWithTemplate()
  6553 ms  0x122e ret:0x7f6e802a7080
  6553 ms  0x122e PK11_Derive()
  6553 ms  0x122e basekey:0x7f6e803c6b80
  6553 ms     | 0x122e PK11_DeriveWithTemplate()
  6553 ms  0x122e ret:0x7f6e8029a300
  6553 ms  0x122e PK11_DeriveWithFlags()
  6553 ms  0x122e basekey:0x7f6e8029a300
  6553 ms     | 0x122e PK11_DeriveWithTemplate()
  6553 ms  0x122e ret:0x7f6e803c7e00
  6553 ms  0x122e PK11_DeriveWithFlags()
  6553 ms  0x122e basekey:0x7f6e8029a300
  6553 ms     | 0x122e PK11_DeriveWithTemplate()
  6553 ms  0x122e ret:0x7f6e803c6b80
  6553 ms  0x122e PK11_DeriveWithFlags()
  6553 ms  0x122e basekey:0x7f6e8029a300
  6553 ms     | 0x122e PK11_DeriveWithTemplate()
  6553 ms  0x122e ret:0x7f6e802a7080
  6553 ms  0x122e PK11_Derive()
  6553 ms  0x122e basekey:0x7f6e8029bb00
  6553 ms     | 0x122e PK11_DeriveWithTemplate()
  6553 ms  0x122e ret:0x7f6e7fedde00
  6553 ms  0x122e PK11_DeriveWithFlags()
  6553 ms  0x122e basekey:0x7f6e803c6b80
  6553 ms     | 0x122e PK11_DeriveWithTemplate()
  6553 ms  0x122e ret:0x7f6e8029a300
  6553 ms  0x122e PK11_DeriveWithFlags()
  6553 ms  0x122e basekey:0x7f6e803c6b80
  6553 ms     | 0x122e PK11_DeriveWithTemplate()
  6553 ms  0x122e ret:0x7f6e802a7080
  6567 ms  SECKEY_ECParamsToKeySize()
  6567 ms  0x122e ret:0x100
  6567 ms  SECKEY_ECParamsToBasePointOrderLen()
  6567 ms  0x122e ret:0x100
  6567 ms  SECKEY_ECParamsToBasePointOrderLen()
  6567 ms  0x122e ret:0x100
  6567 ms  0x122e EC_ValidatePublicKey()
  6569 ms  0x122e ret:0x0
  6571 ms  0x122e PK11_DeriveWithFlags()
  6571 ms  0x122e basekey:0x7f6e803c6b80
  6571 ms     | 0x122e PK11_DeriveWithTemplate()
  6571 ms  0x122e ret:0x7f6e802a7080
  6571 ms  0x122e PR_Connect()
  6571 ms  0x122e fd:0x7f6e7fe897f0
  6571 ms  0x122e PR_Connect()
  6571 ms  0x122e fd:0x7f6e7fe89eb0
  6571 ms  0x122e PR_Connect()
  6571 ms  0x122e fd:0x7f6e7fe89d00
  6634 ms  0x122e PK11_Encrypt()
  6634 ms  0x122e symkey:0x7f6e803c7600
           /* TID 0x1236 */
  6678 ms  0x1236 PR_Close()
  6678 ms  0x1236 fd:0x7f6e803e1100
  6691 ms  0x1236 PR_Close()
  6691 ms  0x1236 fd:0x7f6e7fe89ca0
           /* TID 0x128f */
  6691 ms  0x128f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6692 ms  0x128f ret:0x0
           /* TID 0x122e */
  6692 ms  0x122e SSL_AuthCertificateComplete()
  6692 ms  0x122e fd:0x7f6e7fe89880
  6692 ms  0x122e err:0x0
  6692 ms     | 0x122e PK11_DeriveWithFlags()
  6692 ms     | 0x122e basekey:0x7f6e7ff11180
  6692 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6692 ms     | 0x122e ret:0x7f6e802a7080
  6692 ms     | 0x122e PK11_DeriveWithFlags()
  6692 ms     | 0x122e basekey:0x7f6e7ff11180
  6692 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6692 ms     | 0x122e ret:0x7f6e8029bb00
  6692 ms     | 0x122e PK11_DeriveWithFlags()
  6692 ms     | 0x122e basekey:0x7f6e7ff11180
  6692 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6692 ms     | 0x122e ret:0x7f6e7feddf00
  6692 ms     | 0x122e PK11_DeriveWithFlags()
  6692 ms     | 0x122e basekey:0x7f6e7fffbf00
  6692 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6692 ms     | 0x122e ret:0x7f6e7feddd80
  6692 ms     | 0x122e PK11_DeriveWithFlags()
  6692 ms     | 0x122e basekey:0x7f6e7fffbf00
  6692 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6692 ms     | 0x122e ret:0x7f6e7fedde80
  6692 ms     | 0x122e PK11_DeriveWithFlags()
  6692 ms     | 0x122e basekey:0x7f6e8029bb00
  6692 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6692 ms     | 0x122e ret:0x7f6e7fedde80
  6692 ms     | 0x122e PK11_DeriveWithFlags()
  6692 ms     | 0x122e basekey:0x7f6e8029bb00
  6692 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6692 ms     | 0x122e ret:0x7f6e7ff12e80
  6692 ms     | 0x122e PK11_DeriveWithFlags()
  6692 ms     | 0x122e basekey:0x7f6e7fffbf00
  6692 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6692 ms     | 0x122e ret:0x7f6e803c7a00
  6692 ms     | 0x122e PK11_Encrypt()
  6692 ms     | 0x122e symkey:0x7f6e7feddd80
  6692 ms     | 0x122e PK11_DeriveWithFlags()
  6692 ms     | 0x122e basekey:0x7f6e802a7080
  6692 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6692 ms     | 0x122e ret:0x7f6e803c7a00
  6692 ms     | 0x122e PK11_DeriveWithFlags()
  6692 ms     | 0x122e basekey:0x7f6e802a7080
  6692 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6692 ms     | 0x122e ret:0x7f6e7ff12e80
  6692 ms     | 0x122e PK11_DeriveWithFlags()
  6692 ms     | 0x122e basekey:0x7f6e7ff11180
  6692 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6693 ms     | 0x122e ret:0x7f6e7feddd80
  6693 ms     | 0x122e SECKEY_DestroyPrivateKey()
  6693 ms     | 0x122e privk:0x7f6e7fe40020::7f6e7fe40020  50 96 f2 7f                                      P...
  6693 ms     | 0x122e privk:0x7f6e7fe40020::7f6e7fe40020  e5 e5 e5 e5                                      ....
  6693 ms     | 0x122e SECKEY_DestroyPrivateKey()
  6693 ms     | 0x122e privk:0x7f6e7fe3d020::7f6e7fe3d020  d0 93 f2 7f                                      ....
  6693 ms     | 0x122e privk:0x7f6e7fe3d020::7f6e7fe3d020  e5 e5 e5 e5                                      ....
  6693 ms  0x122e PK11_Encrypt()
  6693 ms  0x122e symkey:0x7f6e803c7a00
  6693 ms  0x122e PK11_Encrypt()
  6693 ms  0x122e symkey:0x7f6e803c7a00
  6730 ms  0x122e PK11_DeriveWithFlags()
  6730 ms  0x122e basekey:0x7f6e7feddd80
  6730 ms     | 0x122e PK11_DeriveWithTemplate()
  6730 ms  0x122e ret:0x7f6e8023b680
  6730 ms  0x122e PK11_DeriveWithFlags()
  6730 ms  0x122e basekey:0x7f6e7feddd80
  6730 ms     | 0x122e PK11_DeriveWithTemplate()
  6730 ms  0x122e ret:0x7f6e8023b680
  6730 ms  0x122e PK11_Encrypt()
  6730 ms  0x122e symkey:0x7f6e803c7a00
           /* TID 0x1236 */
  6763 ms  0x1236 PR_Close()
  6763 ms  0x1236 fd:0x7f6e7fe89cd0
           /* TID 0x12c7 */
  6763 ms  0x12c7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6763 ms  0x12c7 ret:0x0
           /* TID 0x122e */
  6764 ms  0x122e SSL_AuthCertificateComplete()
  6764 ms  0x122e fd:0x7f6e7fe89a90
  6764 ms  0x122e err:0x0
  6764 ms     | 0x122e PK11_DeriveWithFlags()
  6764 ms     | 0x122e basekey:0x7f6e9a1cb900
  6764 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6764 ms     | 0x122e ret:0x7f6e8023b680
  6764 ms     | 0x122e PK11_DeriveWithFlags()
  6764 ms     | 0x122e basekey:0x7f6e9a1cb900
  6764 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6764 ms     | 0x122e ret:0x7f6e7fffbf00
  6764 ms     | 0x122e PK11_DeriveWithFlags()
  6764 ms     | 0x122e basekey:0x7f6e9a1cb900
  6764 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6764 ms     | 0x122e ret:0x7f6e7ff11180
  6764 ms     | 0x122e PK11_DeriveWithFlags()
  6764 ms     | 0x122e basekey:0x7f6e7ff11b00
  6764 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6764 ms     | 0x122e ret:0x7f6e7ff12e80
  6764 ms     | 0x122e PK11_DeriveWithFlags()
  6764 ms     | 0x122e basekey:0x7f6e7ff11b00
  6764 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6764 ms     | 0x122e ret:0x7f6e7fffbe00
  6764 ms     | 0x122e PK11_DeriveWithFlags()
  6764 ms     | 0x122e basekey:0x7f6e7fffbf00
  6764 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6764 ms     | 0x122e ret:0x7f6e7fffbe00
  6764 ms     | 0x122e PK11_DeriveWithFlags()
  6764 ms     | 0x122e basekey:0x7f6e7fffbf00
  6764 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6764 ms     | 0x122e ret:0x7f6e7ff12480
  6764 ms     | 0x122e PK11_DeriveWithFlags()
  6764 ms     | 0x122e basekey:0x7f6e7ff11b00
  6764 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6764 ms     | 0x122e ret:0x7f6e803c7d80
  6764 ms     | 0x122e PK11_Encrypt()
  6764 ms     | 0x122e symkey:0x7f6e7ff12e80
  6764 ms     | 0x122e PK11_DeriveWithFlags()
  6764 ms     | 0x122e basekey:0x7f6e8023b680
  6764 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6764 ms     | 0x122e ret:0x7f6e803c7d80
  6764 ms     | 0x122e PK11_DeriveWithFlags()
  6764 ms     | 0x122e basekey:0x7f6e8023b680
  6764 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6764 ms     | 0x122e ret:0x7f6e7ff12480
  6764 ms     | 0x122e PK11_DeriveWithFlags()
  6764 ms     | 0x122e basekey:0x7f6e9a1cb900
  6765 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6765 ms     | 0x122e ret:0x7f6e7ff12e80
  6765 ms     | 0x122e SECKEY_DestroyPrivateKey()
  6765 ms     | 0x122e privk:0x7f6e7fe48020::7f6e7fe48020  e0 97 f2 7f                                      ....
  6765 ms     | 0x122e privk:0x7f6e7fe48020::7f6e7fe48020  e5 e5 e5 e5                                      ....
  6765 ms     | 0x122e SECKEY_DestroyPrivateKey()
  6765 ms     | 0x122e privk:0x7f6e7fe46020::7f6e7fe46020  f0 d1 f1 7f                                      ....
  6765 ms     | 0x122e privk:0x7f6e7fe46020::7f6e7fe46020  e5 e5 e5 e5                                      ....
  6765 ms  0x122e PK11_Encrypt()
  6765 ms  0x122e symkey:0x7f6e803c7d80
  6765 ms  0x122e PK11_Encrypt()
  6765 ms  0x122e symkey:0x7f6e803c7a00
           /* TID 0x1236 */
  6766 ms  0x1236 PR_Close()
  6766 ms  0x1236 fd:0x7f6e7fe89670
           /* TID 0x12c5 */
  6766 ms  0x12c5 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6766 ms  0x12c5 ret:0x0
           /* TID 0x122e */
  6766 ms  0x122e SSL_AuthCertificateComplete()
  6766 ms  0x122e fd:0x7f6e7fe89790
  6766 ms  0x122e err:0x0
  6767 ms     | 0x122e PK11_DeriveWithFlags()
  6767 ms     | 0x122e basekey:0x7f6e7fedde00
  6767 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6767 ms     | 0x122e ret:0x7f6e7feddd00
  6767 ms     | 0x122e PK11_DeriveWithFlags()
  6767 ms     | 0x122e basekey:0x7f6e7fedde00
  6767 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6767 ms     | 0x122e ret:0x7f6e7ff11b00
  6767 ms     | 0x122e PK11_DeriveWithFlags()
  6767 ms     | 0x122e basekey:0x7f6e7fedde00
  6767 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6767 ms     | 0x122e ret:0x7f6e9a1cb900
  6767 ms     | 0x122e PK11_DeriveWithFlags()
  6767 ms     | 0x122e basekey:0x7f6e803c7e00
  6767 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6767 ms     | 0x122e ret:0x7f6e7ff12480
  6767 ms     | 0x122e PK11_DeriveWithFlags()
  6767 ms     | 0x122e basekey:0x7f6e803c7e00
  6767 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6767 ms     | 0x122e ret:0x7f6e7fffb480
  6767 ms     | 0x122e PK11_DeriveWithFlags()
  6767 ms     | 0x122e basekey:0x7f6e7ff11b00
  6767 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6767 ms     | 0x122e ret:0x7f6e7fffb480
  6767 ms     | 0x122e PK11_DeriveWithFlags()
  6767 ms     | 0x122e basekey:0x7f6e7ff11b00
  6767 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6767 ms     | 0x122e ret:0x7f6e7fee7080
  6767 ms     | 0x122e PK11_DeriveWithFlags()
  6767 ms     | 0x122e basekey:0x7f6e803c7e00
  6767 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6767 ms     | 0x122e ret:0x7f6e8029a300
  6767 ms     | 0x122e PK11_Encrypt()
  6767 ms     | 0x122e symkey:0x7f6e7ff12480
  6767 ms     | 0x122e PK11_DeriveWithFlags()
  6767 ms     | 0x122e basekey:0x7f6e7feddd00
  6767 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6767 ms     | 0x122e ret:0x7f6e8029a300
  6767 ms     | 0x122e PK11_DeriveWithFlags()
  6767 ms     | 0x122e basekey:0x7f6e7feddd00
  6767 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6767 ms     | 0x122e ret:0x7f6e7fee7080
  6767 ms     | 0x122e PK11_DeriveWithFlags()
  6767 ms     | 0x122e basekey:0x7f6e7fedde00
  6767 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6767 ms     | 0x122e ret:0x7f6e7ff12480
  6767 ms     | 0x122e SECKEY_DestroyPrivateKey()
  6767 ms     | 0x122e privk:0x7f6e7fe4c820::7f6e7fe4c820  40 9c f2 7f                                      @...
  6767 ms     | 0x122e privk:0x7f6e7fe4c820::7f6e7fe4c820  e5 e5 e5 e5                                      ....
  6767 ms     | 0x122e SECKEY_DestroyPrivateKey()
  6767 ms     | 0x122e privk:0x7f6e7fe4a820::7f6e7fe4a820  d0 98 f2 7f                                      ....
  6768 ms     | 0x122e privk:0x7f6e7fe4a820::7f6e7fe4a820  e5 e5 e5 e5                                      ....
  6768 ms  0x122e PK11_Encrypt()
  6768 ms  0x122e symkey:0x7f6e8029a300
  6768 ms  0x122e PK11_Encrypt()
  6768 ms  0x122e symkey:0x7f6e803c7a00
           /* TID 0x1236 */
  6769 ms  0x1236 PR_Close()
  6769 ms  0x1236 fd:0x7f6e7fe89b50
           /* TID 0x12c4 */
  6769 ms  0x12c4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6769 ms  0x12c4 ret:0x0
           /* TID 0x122e */
  6769 ms  0x122e SSL_AuthCertificateComplete()
  6769 ms  0x122e fd:0x7f6e7fe89640
  6769 ms  0x122e err:0x0
  6769 ms     | 0x122e PK11_DeriveWithFlags()
  6769 ms     | 0x122e basekey:0x7f6e8029a980
  6769 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6769 ms     | 0x122e ret:0x7f6e803c6b80
  6769 ms     | 0x122e PK11_DeriveWithFlags()
  6769 ms     | 0x122e basekey:0x7f6e8029a980
  6769 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6769 ms     | 0x122e ret:0x7f6e803c7e00
  6769 ms     | 0x122e PK11_DeriveWithFlags()
  6769 ms     | 0x122e basekey:0x7f6e8029a980
  6769 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6769 ms     | 0x122e ret:0x7f6e7fedde00
  6769 ms     | 0x122e PK11_DeriveWithFlags()
  6769 ms     | 0x122e basekey:0x7f6e92435600
  6769 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6769 ms     | 0x122e ret:0x7f6e7fee7080
  6769 ms     | 0x122e PK11_DeriveWithFlags()
  6769 ms     | 0x122e basekey:0x7f6e92435600
  6769 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6769 ms     | 0x122e ret:0x7f6e803c7f80
  6769 ms     | 0x122e PK11_DeriveWithFlags()
  6769 ms     | 0x122e basekey:0x7f6e803c7e00
  6769 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6769 ms     | 0x122e ret:0x7f6e803c7f80
  6769 ms     | 0x122e PK11_DeriveWithFlags()
  6769 ms     | 0x122e basekey:0x7f6e803c7e00
  6769 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6769 ms     | 0x122e ret:0x7f6e803c7f00
  6769 ms     | 0x122e PK11_DeriveWithFlags()
  6769 ms     | 0x122e basekey:0x7f6e92435600
  6769 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6769 ms     | 0x122e ret:0x7f6e803c6980
  6769 ms     | 0x122e PK11_Encrypt()
  6769 ms     | 0x122e symkey:0x7f6e7fee7080
  6770 ms     | 0x122e PK11_DeriveWithFlags()
  6770 ms     | 0x122e basekey:0x7f6e803c6b80
  6770 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6770 ms     | 0x122e ret:0x7f6e803c6980
  6770 ms     | 0x122e PK11_DeriveWithFlags()
  6770 ms     | 0x122e basekey:0x7f6e803c6b80
  6770 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6770 ms     | 0x122e ret:0x7f6e803c7f00
  6770 ms     | 0x122e PK11_DeriveWithFlags()
  6770 ms     | 0x122e basekey:0x7f6e8029a980
  6770 ms     |    | 0x122e PK11_DeriveWithTemplate()
  6770 ms     | 0x122e ret:0x7f6e7fee7080
  6770 ms     | 0x122e SECKEY_DestroyPrivateKey()
  6770 ms     | 0x122e privk:0x7f6e7fe52820::7f6e7fe52820  70 44 fa 7f                                      pD..
  6770 ms     | 0x122e privk:0x7f6e7fe52820::7f6e7fe52820  e5 e5 e5 e5                                      ....
  6770 ms     | 0x122e SECKEY_DestroyPrivateKey()
  6770 ms     | 0x122e privk:0x7f6e7fe50820::7f6e7fe50820  10 9f f2 7f                                      ....
  6770 ms     | 0x122e privk:0x7f6e7fe50820::7f6e7fe50820  e5 e5 e5 e5                                      ....
  6771 ms  0x122e PK11_Encrypt()
  6771 ms  0x122e symkey:0x7f6e803c6980
  6772 ms  0x122e PK11_Encrypt()
  6772 ms  0x122e symkey:0x7f6e803c7a00
  6773 ms  0x122e PK11_Encrypt()
  6773 ms  0x122e symkey:0x7f6e927dab80
  6782 ms  0x122e PK11_Encrypt()
  6782 ms  0x122e symkey:0x7f6e803c7a00
           /* TID 0x1236 */
  6782 ms  0x1236 PR_Close()
  6782 ms  0x1236 fd:0x7f6e7ff1f580
           /* TID 0x122e */
  6802 ms  0x122e PK11_DeriveWithFlags()
  6802 ms  0x122e basekey:0x7f6e7ff12e80
  6802 ms     | 0x122e PK11_DeriveWithTemplate()
  6802 ms  0x122e ret:0x7f6e803c6d80
  6802 ms  0x122e PK11_DeriveWithFlags()
  6802 ms  0x122e basekey:0x7f6e7ff12e80
  6802 ms     | 0x122e PK11_DeriveWithTemplate()
  6802 ms  0x122e ret:0x7f6e803c6d80
  6802 ms  0x122e PR_Close()
  6802 ms  0x122e fd:0x7f6e7fe89a90
  6802 ms     | 0x122e PK11_Encrypt()
  6802 ms     | 0x122e symkey:0x7f6e803c7d80
  6805 ms  0x122e PK11_DeriveWithFlags()
  6805 ms  0x122e basekey:0x7f6e7ff12480
  6805 ms     | 0x122e PK11_DeriveWithTemplate()
  6805 ms  0x122e ret:0x7f6e7ff11180
  6805 ms  0x122e PK11_DeriveWithFlags()
  6805 ms  0x122e basekey:0x7f6e7ff12480
  6805 ms     | 0x122e PK11_DeriveWithTemplate()
  6805 ms  0x122e ret:0x7f6e7ff11180
  6805 ms  0x122e PR_Close()
  6805 ms  0x122e fd:0x7f6e7fe89790
  6805 ms     | 0x122e PK11_Encrypt()
  6805 ms     | 0x122e symkey:0x7f6e8029a300
  6809 ms  0x122e PK11_DeriveWithFlags()
  6809 ms  0x122e basekey:0x7f6e7fee7080
  6809 ms     | 0x122e PK11_DeriveWithTemplate()
  6809 ms  0x122e ret:0x7f6e9a1cb900
  6809 ms  0x122e PK11_DeriveWithFlags()
  6809 ms  0x122e basekey:0x7f6e7fee7080
  6809 ms     | 0x122e PK11_DeriveWithTemplate()
  6809 ms  0x122e ret:0x7f6e9a1cb900
  6809 ms  0x122e PR_Close()
  6809 ms  0x122e fd:0x7f6e7fe89640
  6809 ms     | 0x122e PK11_Encrypt()
  6809 ms     | 0x122e symkey:0x7f6e803c6980
  6814 ms  0x122e SSL_ImportFD()
  6814 ms  0x122e ret:0x7f6e7fe892e0
  6814 ms  0x122e SSL_AuthCertificateHook()
  6814 ms  0x122e fd:0x7f6e7fe892e0
  6814 ms  0x122e ret:0x0
  6814 ms  0x122e PK11_Encrypt()
  6814 ms  0x122e symkey:0x7f6e927dab80
  6818 ms  0x122e PR_Connect()
  6818 ms  0x122e fd:0x7f6e7fe892e0
           /* TID 0x1236 */
  6834 ms  0x1236 PR_Close()
  6834 ms  0x1236 fd:0x7f6e7fe891f0
  6835 ms  0x1236 PR_Close()
  6835 ms  0x1236 fd:0x7f6e7fe891f0
  6841 ms  0x1236 PR_Close()
  6841 ms  0x1236 fd:0x7f6e7fe891f0
           /* TID 0x122e */
  6843 ms  0x122e SECKEY_CreateECPrivateKey()
  6843 ms  0x122e cx:0x7f6e7fea70a8
  6844 ms     | 0x122e EC_ValidatePublicKey()
  6844 ms     | 0x122e ret:0x0
  6844 ms  0x122e ret:0x7f6e7fe3f820::7f6e7fe3f820  60 95 f2 7f                                      `...
  6844 ms  0x122e SECKEY_CreateECPrivateKey()
  6844 ms  0x122e cx:0x7f6e7fea70a8
  6845 ms     | 0x122e EC_ValidatePublicKey()
  6846 ms     | 0x122e ret:0x0
  6846 ms  0x122e ret:0x7f6e7fe47020::7f6e7fe47020  30 98 f2 7f                                      0...
  6852 ms  0x122e PK11_Encrypt()
  6852 ms  0x122e symkey:0x7f6e803c7a00
           /* TID 0x1236 */
  6853 ms  0x1236 PR_Close()
  6853 ms  0x1236 fd:0x7f6e7fe89280
  6863 ms  0x1236 PR_Close()
  6863 ms  0x1236 fd:0x7f6e7fe89280
           /* TID 0x122e */
  6864 ms  0x122e PK11_Encrypt()
  6864 ms  0x122e symkey:0x7f6e803c7600
  6864 ms  0x122e PK11_Encrypt()
  6864 ms  0x122e symkey:0x7f6e803c7600
  6864 ms  0x122e SSL_ImportFD()
  6864 ms  0x122e ret:0x7f6e7ff91df0
  6864 ms  0x122e SSL_AuthCertificateHook()
  6864 ms  0x122e fd:0x7f6e7ff91df0
  6864 ms  0x122e ret:0x0
  6864 ms  0x122e PR_Connect()
  6864 ms  0x122e fd:0x7f6e7ff91df0
  6864 ms  0x122e SSL_ImportFD()
  6864 ms  0x122e ret:0x7f6e7fe89dc0
  6864 ms  0x122e SSL_AuthCertificateHook()
  6864 ms  0x122e fd:0x7f6e7fe89dc0
  6864 ms  0x122e ret:0x0
  6864 ms  0x122e PR_Connect()
  6864 ms  0x122e fd:0x7f6e7fe89dc0
  6864 ms  0x122e SSL_ImportFD()
  6864 ms  0x122e ret:0x7f6e7fffe730
  6864 ms  0x122e SSL_AuthCertificateHook()
  6864 ms  0x122e fd:0x7f6e7fffe730
  6864 ms  0x122e ret:0x0
  6864 ms  0x122e PR_Connect()
  6864 ms  0x122e fd:0x7f6e7fffe730
  6874 ms  SECKEY_ECParamsToKeySize()
  6874 ms  0x122e ret:0xff
  6874 ms  0x122e SECKEY_CreateECPrivateKey()
  6874 ms  0x122e cx:0x7f6e7fea70a8
  6875 ms     | 0x122e EC_ValidatePublicKey()
  6875 ms     | 0x122e ret:0x0
  6875 ms  0x122e ret:0x7f6e7fe4b820::7f6e7fe4b820  70 5e f9 7f                                      p^..
  6875 ms  0x122e PK11_PubDeriveWithKDF()
  6875 ms  0x122e seckey:0x7f6e7fe4b820
  6875 ms     | 0x122e EC_ValidatePublicKey()
  6875 ms     | 0x122e ret:0x0
  6875 ms  0x122e ret:0x7f6e7fedde00
  6876 ms  0x122e PK11_DeriveWithFlags()
  6876 ms  0x122e basekey:0x7f6e7fedde00
  6876 ms     | 0x122e PK11_DeriveWithTemplate()
  6876 ms  0x122e ret:0x7f6e803c7e00
  6876 ms  0x122e PK11_Derive()
  6876 ms  0x122e basekey:0x7f6e803c7e00
  6876 ms     | 0x122e PK11_DeriveWithTemplate()
  6876 ms  0x122e ret:0x7f6e803c6b80
  6876 ms  0x122e SECKEY_DestroyPrivateKey()
  6876 ms  0x122e privk:0x7f6e7fe4b820::7f6e7fe4b820  70 5e f9 7f                                      p^..
  6876 ms  0x122e privk:0x7f6e7fe4b820::7f6e7fe4b820  e5 e5 e5 e5                                      ....
  6876 ms  0x122e PK11_Encrypt()
  6876 ms  0x122e symkey:0x7f6e803c7c80
           /* TID 0x128f */
  6877 ms  0x128f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6877 ms  0x128f ret:0x0
  6877 ms  0x128f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6877 ms  0x128f ret:0x0
           /* TID 0x122e */
  6879 ms  0x122e SSL_AuthCertificateComplete()
  6879 ms  0x122e fd:0x7f6e7fe892e0
  6879 ms  0x122e err:0x0
  6879 ms  0x122e PK11_Encrypt()
  6879 ms  0x122e symkey:0x7f6e803c7c80
  6901 ms  0x122e SECKEY_CreateECPrivateKey()
  6901 ms  0x122e cx:0x7f6e7fea8288
  6902 ms     | 0x122e EC_ValidatePublicKey()
  6902 ms     | 0x122e ret:0x0
  6902 ms  0x122e ret:0x7f6e7fe4b820::7f6e7fe4b820  10 5f f9 7f                                      ._..
  6902 ms  0x122e SECKEY_CreateECPrivateKey()
  6902 ms  0x122e cx:0x7f6e7fea8288
  6902 ms     | 0x122e EC_ValidatePublicKey()
  6904 ms     | 0x122e ret:0x0
  6904 ms  0x122e ret:0x7f6e7fe4f020::7f6e7fe4f020  a0 81 fc 7f                                      ....
           /* TID 0x1236 */
  6914 ms  0x1236 PR_Close()
  6914 ms  0x1236 fd:0x7f6e7fe89a30
           /* TID 0x122e */
  6915 ms  0x122e SECKEY_DestroyPrivateKey()
  6915 ms  0x122e privk:0x7f6e7fe47020::7f6e7fe47020  30 98 f2 7f                                      0...
  6915 ms  0x122e privk:0x7f6e7fe47020::7f6e7fe47020  e5 e5 e5 e5                                      ....
  6915 ms  0x122e SECKEY_DestroyPrivateKey()
  6915 ms  0x122e privk:0x7f6e7fe3f820::7f6e7fe3f820  60 95 f2 7f                                      `...
  6915 ms  0x122e privk:0x7f6e7fe3f820::7f6e7fe3f820  e5 e5 e5 e5                                      ....
  6916 ms  0x122e PR_Close()
  6916 ms  0x122e fd:0x7f6e7fe892e0
  6916 ms     | 0x122e PK11_Encrypt()
  6916 ms     | 0x122e symkey:0x7f6e803c7c80
  6918 ms  0x122e SECKEY_CreateECPrivateKey()
  6918 ms  0x122e cx:0x7f6e7fea7588
  6919 ms     | 0x122e EC_ValidatePublicKey()
  6919 ms     | 0x122e ret:0x0
  6919 ms  0x122e ret:0x7f6e7fe3e820::7f6e7fe3e820  90 92 f2 7f                                      ....
  6919 ms  0x122e SECKEY_CreateECPrivateKey()
  6919 ms  0x122e cx:0x7f6e7fea7588
  6919 ms     | 0x122e EC_ValidatePublicKey()
  6921 ms     | 0x122e ret:0x0
  6921 ms  0x122e ret:0x7f6e7fe45820::7f6e7fe45820  e0 97 f2 7f                                      ....
  6928 ms  0x122e SECKEY_CreateECPrivateKey()
  6928 ms  0x122e cx:0x7f6e7fea80e8
  6929 ms     | 0x122e EC_ValidatePublicKey()
  6929 ms     | 0x122e ret:0x0
  6929 ms  0x122e ret:0x7f6e7fe49820::7f6e7fe49820  50 9b f2 7f                                      P...
  6929 ms  0x122e SECKEY_CreateECPrivateKey()
  6929 ms  0x122e cx:0x7f6e7fea80e8
  6930 ms     | 0x122e EC_ValidatePublicKey()
  6931 ms     | 0x122e ret:0x0
  6931 ms  0x122e ret:0x7f6e7fe51820::7f6e7fe51820  d0 83 fc 7f                                      ....
           /* TID 0x1236 */
  6941 ms  0x1236 PR_Close()
  6941 ms  0x1236 fd:0x7f6e7fe892e0
           /* TID 0x122e */
  6941 ms  SECKEY_ECParamsToKeySize()
  6941 ms  0x122e ret:0x100
  6941 ms  SECKEY_ECParamsToBasePointOrderLen()
  6941 ms  0x122e ret:0x100
  6941 ms  SECKEY_ECParamsToBasePointOrderLen()
  6941 ms  0x122e ret:0x100
  6941 ms  0x122e EC_ValidatePublicKey()
  6943 ms  0x122e ret:0x0
  6945 ms  SECKEY_ECParamsToKeySize()
  6945 ms  0x122e ret:0x100
  6945 ms  0x122e SECKEY_CreateECPrivateKey()
  6945 ms  0x122e cx:0x7f6e7fea8288
  6945 ms     | 0x122e EC_ValidatePublicKey()
  6951 ms     | 0x122e ret:0x0
           /* TID 0x12c7 */
  6951 ms  SECKEY_ECParamsToBasePointOrderLen()
  6951 ms  0x12c7 ret:0x180
  6951 ms  SECKEY_ECParamsToBasePointOrderLen()
  6951 ms  0x12c7 ret:0x180
  6951 ms  0x12c7 EC_ValidatePublicKey()
  6953 ms  0x12c7 ret:0x0
  6955 ms  0x12c7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6955 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6955 ms     | 0x12c7 ret:0x180
  6955 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6955 ms     | 0x12c7 ret:0x180
  6955 ms     | 0x12c7 EC_ValidatePublicKey()
  6967 ms     | 0x12c7 ret:0x0
           /* TID 0x122e */
  6967 ms  0x122e ret:0x7f6e803a9020::7f6e803a9020  b0 da ff 7f                                      ....
  6967 ms  0x122e PK11_PubDeriveWithKDF()
  6967 ms  0x122e seckey:0x7f6e803a9020
  6967 ms     | 0x122e EC_ValidatePublicKey()
  6969 ms     | 0x122e ret:0x0
  6970 ms  0x122e ret:0x7f6e803c6b80
  6970 ms  0x122e PK11_DeriveWithFlags()
  6970 ms  0x122e basekey:0x7f6e803c6b80
  6970 ms     | 0x122e PK11_DeriveWithTemplate()
  6970 ms  0x122e ret:0x7f6e803c7e00
  6970 ms  0x122e PK11_Derive()
  6970 ms  0x122e basekey:0x7f6e803c7e00
  6970 ms     | 0x122e PK11_DeriveWithTemplate()
  6970 ms  0x122e ret:0x7f6e7fedde00
  6970 ms  0x122e SECKEY_DestroyPrivateKey()
  6970 ms  0x122e privk:0x7f6e803a9020::7f6e803a9020  b0 da ff 7f                                      ....
  6970 ms  0x122e privk:0x7f6e803a9020::7f6e803a9020  e5 e5 e5 e5                                      ....
  6970 ms  0x122e PK11_Encrypt()
  6970 ms  0x122e symkey:0x7f6e803c7e80
           /* TID 0x12c7 */
  6974 ms  0x12c7 ret:0x0
           /* TID 0x122e */
  6975 ms  0x122e PK11_Encrypt()
  6975 ms  0x122e symkey:0x7f6e803c7600
  6975 ms  0x122e PK11_Encrypt()
  6975 ms  0x122e symkey:0x7f6e803c7600
  6975 ms  0x122e PK11_Encrypt()
  6975 ms  0x122e symkey:0x7f6e803c7600
  6976 ms  0x122e PK11_Encrypt()
  6976 ms  0x122e symkey:0x7f6e803c7600
  6976 ms  0x122e PK11_Derive()
  6976 ms  0x122e basekey:0x7f6e803c6b80
  6976 ms     | 0x122e PK11_DeriveWithTemplate()
  6976 ms  0x122e ret:0x7f6e7fee7080
  6976 ms  0x122e PK11_PubDeriveWithKDF()
  6976 ms  0x122e seckey:0x7f6e7fe3e820
  6976 ms     | 0x122e EC_ValidatePublicKey()
  6976 ms     | 0x122e ret:0x0
  6976 ms  0x122e ret:0x7f6e803c6b80
  6976 ms  SECKEY_ECParamsToKeySize()
  6976 ms  0x122e ret:0xff
  6976 ms  0x122e PK11_DeriveWithFlags()
  6976 ms  0x122e basekey:0x7f6e7fee7080
  6976 ms     | 0x122e PK11_DeriveWithTemplate()
  6976 ms  0x122e ret:0x7f6e803c7f80
  6976 ms  0x122e PK11_Derive()
  6976 ms  0x122e basekey:0x7f6e803c6b80
  6976 ms     | 0x122e PK11_DeriveWithTemplate()
  6976 ms  0x122e ret:0x7f6e803c6980
  6976 ms  0x122e PK11_DeriveWithFlags()
  6976 ms  0x122e basekey:0x7f6e803c6980
  6977 ms     | 0x122e PK11_DeriveWithTemplate()
  6977 ms  0x122e ret:0x7f6e7fee7080
  6977 ms  0x122e PK11_DeriveWithFlags()
  6977 ms  0x122e basekey:0x7f6e803c6980
  6977 ms     | 0x122e PK11_DeriveWithTemplate()
  6977 ms  0x122e ret:0x7f6e803c6b80
  6977 ms  0x122e PK11_DeriveWithFlags()
  6977 ms  0x122e basekey:0x7f6e803c6980
  6977 ms     | 0x122e PK11_DeriveWithTemplate()
  6977 ms  0x122e ret:0x7f6e803c7f80
  6977 ms  0x122e PK11_Derive()
  6977 ms  0x122e basekey:0x7f6e9a1cb900
  6977 ms     | 0x122e PK11_DeriveWithTemplate()
  6977 ms  0x122e ret:0x7f6e7ff11b00
  6977 ms  0x122e PK11_DeriveWithFlags()
  6977 ms  0x122e basekey:0x7f6e803c6b80
  6977 ms     | 0x122e PK11_DeriveWithTemplate()
  6977 ms  0x122e ret:0x7f6e803c6980
  6977 ms  0x122e PK11_DeriveWithFlags()
  6977 ms  0x122e basekey:0x7f6e803c6b80
  6977 ms     | 0x122e PK11_DeriveWithTemplate()
  6977 ms  0x122e ret:0x7f6e803c7f80
  6989 ms  SECKEY_ECParamsToKeySize()
  6989 ms  0x122e ret:0x100
  6989 ms  SECKEY_ECParamsToBasePointOrderLen()
  6989 ms  0x122e ret:0x100
  6989 ms  SECKEY_ECParamsToBasePointOrderLen()
  6989 ms  0x122e ret:0x100
  6989 ms  0x122e EC_ValidatePublicKey()
  6991 ms  0x122e ret:0x0
  6993 ms  0x122e PK11_DeriveWithFlags()
  6993 ms  0x122e basekey:0x7f6e803c6b80
  6993 ms     | 0x122e PK11_DeriveWithTemplate()
  6993 ms  0x122e ret:0x7f6e803c7f80
  6994 ms  0x122e PK11_Encrypt()
  6994 ms  0x122e symkey:0x7f6e803c7600
  6994 ms  0x122e PK11_Derive()
  6994 ms  0x122e basekey:0x7f6e803c7f80
  6994 ms     | 0x122e PK11_DeriveWithTemplate()
  6994 ms  0x122e ret:0x7f6e9a1cb900
  6994 ms  0x122e PK11_PubDeriveWithKDF()
  6994 ms  0x122e seckey:0x7f6e7fe49820
  6995 ms     | 0x122e EC_ValidatePublicKey()
  6995 ms     | 0x122e ret:0x0
  6995 ms  0x122e ret:0x7f6e803c7f80
  6995 ms  SECKEY_ECParamsToKeySize()
  6995 ms  0x122e ret:0xff
  6995 ms  0x122e PK11_DeriveWithFlags()
  6995 ms  0x122e basekey:0x7f6e9a1cb900
  6995 ms     | 0x122e PK11_DeriveWithTemplate()
  6995 ms  0x122e ret:0x7f6e7feddd00
  6995 ms  0x122e PK11_Derive()
  6995 ms  0x122e basekey:0x7f6e803c7f80
  6995 ms     | 0x122e PK11_DeriveWithTemplate()
  6995 ms  0x122e ret:0x7f6e7ff12480
  6995 ms  0x122e PK11_DeriveWithFlags()
  6995 ms  0x122e basekey:0x7f6e7ff12480
  6995 ms     | 0x122e PK11_DeriveWithTemplate()
  6995 ms  0x122e ret:0x7f6e9a1cb900
  6995 ms  0x122e PK11_DeriveWithFlags()
  6995 ms  0x122e basekey:0x7f6e7ff12480
  6995 ms     | 0x122e PK11_DeriveWithTemplate()
  6995 ms  0x122e ret:0x7f6e803c7f80
  6995 ms  0x122e PK11_DeriveWithFlags()
  6995 ms  0x122e basekey:0x7f6e7ff12480
  6995 ms     | 0x122e PK11_DeriveWithTemplate()
  6995 ms  0x122e ret:0x7f6e7feddd00
  6995 ms  0x122e PK11_Derive()
  6995 ms  0x122e basekey:0x7f6e7fffb480
  6995 ms     | 0x122e PK11_DeriveWithTemplate()
  6995 ms  0x122e ret:0x7f6e8029a300
  6995 ms  0x122e PK11_DeriveWithFlags()
  6995 ms  0x122e basekey:0x7f6e803c7f80
  6996 ms     | 0x122e PK11_DeriveWithTemplate()
  6996 ms  0x122e ret:0x7f6e7ff12480
  6996 ms  0x122e PK11_DeriveWithFlags()
  6996 ms  0x122e basekey:0x7f6e803c7f80
  6996 ms     | 0x122e PK11_DeriveWithTemplate()
  6996 ms  0x122e ret:0x7f6e7feddd00
  7997 ms  0x122e PK11_DeriveWithFlags()
  7997 ms  0x122e basekey:0x7f6e803c7f80
  7999 ms     | 0x122e PK11_DeriveWithTemplate()
  7999 ms  0x122e ret:0x7f6e7feddd00
  7999 ms  0x122e SSL_AuthCertificateComplete()
  7999 ms  0x122e fd:0x7f6e7fffe730
  7999 ms  0x122e err:0x0
  8000 ms  0x122e PK11_Encrypt()
  8000 ms  0x122e symkey:0x7f6e803c7e80
           /* TID 0x1236 */
  8002 ms  0x1236 PR_Close()
  8002 ms  0x1236 fd:0x7f6e90f7fb50
           /* TID 0x12c5 */
  8003 ms  0x12c5 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8003 ms  0x12c5 ret:0x0
           /* TID 0x122e */
  8004 ms  0x122e SSL_AuthCertificateComplete()
  8004 ms  0x122e fd:0x7f6e7ff91df0
  8004 ms  0x122e err:0x0
  8004 ms     | 0x122e PK11_DeriveWithFlags()
  8004 ms     | 0x122e basekey:0x7f6e7ff11b00
  8004 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8004 ms     | 0x122e ret:0x7f6e7feddd00
  8004 ms     | 0x122e PK11_DeriveWithFlags()
  8004 ms     | 0x122e basekey:0x7f6e7ff11b00
  8004 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8004 ms     | 0x122e ret:0x7f6e7fffb480
  8004 ms     | 0x122e PK11_DeriveWithFlags()
  8004 ms     | 0x122e basekey:0x7f6e7ff11b00
  8004 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8004 ms     | 0x122e ret:0x7f6e7ff11180
  8004 ms     | 0x122e PK11_DeriveWithFlags()
  8004 ms     | 0x122e basekey:0x7f6e7fee7080
  8004 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8004 ms     | 0x122e ret:0x7f6e7fffbf00
  8004 ms     | 0x122e PK11_DeriveWithFlags()
  8004 ms     | 0x122e basekey:0x7f6e7fee7080
  8004 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8004 ms     | 0x122e ret:0x7f6e8023b680
  8005 ms     | 0x122e PK11_DeriveWithFlags()
  8005 ms     | 0x122e basekey:0x7f6e7fffb480
  8005 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8005 ms     | 0x122e ret:0x7f6e8023b680
  8005 ms     | 0x122e PK11_DeriveWithFlags()
  8005 ms     | 0x122e basekey:0x7f6e7fffb480
  8005 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8005 ms     | 0x122e ret:0x7f6e7ff12e80
  8005 ms     | 0x122e PK11_DeriveWithFlags()
  8005 ms     | 0x122e basekey:0x7f6e7fee7080
  8005 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8005 ms     | 0x122e ret:0x7f6e803c6980
  8005 ms     | 0x122e PK11_Encrypt()
  8005 ms     | 0x122e symkey:0x7f6e7fffbf00
           /* TID 0x1236 */
  8006 ms  0x1236 PR_Close()
  8006 ms  0x1236 fd:0x7f6e7fffe490
           /* TID 0x122e */
  8009 ms     | 0x122e PK11_DeriveWithFlags()
  8009 ms     | 0x122e basekey:0x7f6e7feddd00
  8009 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8009 ms     | 0x122e ret:0x7f6e803c6980
  8009 ms     | 0x122e PK11_DeriveWithFlags()
  8009 ms     | 0x122e basekey:0x7f6e7feddd00
  8009 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8009 ms     | 0x122e ret:0x7f6e7ff12e80
  8009 ms     | 0x122e PK11_DeriveWithFlags()
  8009 ms     | 0x122e basekey:0x7f6e7ff11b00
  8009 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8009 ms     | 0x122e ret:0x7f6e7fffbf00
  8009 ms     | 0x122e SECKEY_DestroyPrivateKey()
  8009 ms     | 0x122e privk:0x7f6e7fe45820::7f6e7fe45820  e0 97 f2 7f                                      ....
  8009 ms     | 0x122e privk:0x7f6e7fe45820::7f6e7fe45820  e5 e5 e5 e5                                      ....
  8009 ms     | 0x122e SECKEY_DestroyPrivateKey()
  8009 ms     | 0x122e privk:0x7f6e7fe3e820::7f6e7fe3e820  90 92 f2 7f                                      ....
  8010 ms     | 0x122e privk:0x7f6e7fe3e820::7f6e7fe3e820  e5 e5 e5 e5                                      ....
           /* TID 0x1236 */
  8015 ms  0x1236 PR_Close()
  8015 ms  0x1236 fd:0x7f6e7fe89cd0
           /* TID 0x122e */
  8022 ms  0x122e PK11_Encrypt()
  8022 ms  0x122e symkey:0x7f6e803c6980
  8022 ms  0x122e PK11_Encrypt()
  8022 ms  0x122e symkey:0x7f6e803c6980
  8023 ms  0x122e SECKEY_DestroyPrivateKey()
  8023 ms  0x122e privk:0x7f6e7fe4f020::7f6e7fe4f020  a0 81 fc 7f                                      ....
  8023 ms  0x122e privk:0x7f6e7fe4f020::7f6e7fe4f020  e5 e5 e5 e5                                      ....
  8023 ms  0x122e SECKEY_DestroyPrivateKey()
  8023 ms  0x122e privk:0x7f6e7fe4b820::7f6e7fe4b820  10 5f f9 7f                                      ._..
  8023 ms  0x122e privk:0x7f6e7fe4b820::7f6e7fe4b820  e5 e5 e5 e5                                      ....
           /* TID 0x1236 */
  8027 ms  0x1236 PR_Close()
  8027 ms  0x1236 fd:0x7f6e7fffe820
  8029 ms  0x1236 PR_Close()
  8029 ms  0x1236 fd:0x7f6e7fffe5b0
  8034 ms  0x1236 PR_Close()
  8034 ms  0x1236 fd:0x7f6e7fffe5b0
  8044 ms  0x1236 PR_Close()
  8044 ms  0x1236 fd:0x7f6e7fe89ac0
           /* TID 0x122e */
  8044 ms  0x122e PK11_DeriveWithFlags()
  8044 ms  0x122e basekey:0x7f6e7fffbf00
  8044 ms     | 0x122e PK11_DeriveWithTemplate()
  8044 ms  0x122e ret:0x7f6e803c6b80
  8044 ms  0x122e PK11_DeriveWithFlags()
  8044 ms  0x122e basekey:0x7f6e7fffbf00
  8044 ms     | 0x122e PK11_DeriveWithTemplate()
  8044 ms  0x122e ret:0x7f6e803c6b80
  8045 ms  0x122e PK11_Encrypt()
  8045 ms  0x122e symkey:0x7f6e803c6980
  8131 ms  0x122e PK11_Encrypt()
  8131 ms  0x122e symkey:0x7f6e803c6980
           /* TID 0x1236 */
  8132 ms  0x1236 PR_Close()
  8132 ms  0x1236 fd:0x7f6e7fe89ac0
           /* TID 0x122e */
  8162 ms  0x122e SSL_ImportFD()
  8162 ms  0x122e ret:0x7f6e803e19a0
  8162 ms  0x122e SSL_AuthCertificateHook()
  8162 ms  0x122e fd:0x7f6e803e19a0
  8162 ms  0x122e ret:0x0
  8163 ms  0x122e PR_Connect()
  8163 ms  0x122e fd:0x7f6e803e19a0
           /* TID 0x1236 */
  8168 ms  0x1236 PR_Close()
  8168 ms  0x1236 fd:0x7f6e7fe89ac0
           /* TID 0x12c7 */
  8168 ms  0x12c7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8169 ms  0x12c7 ret:0x0
           /* TID 0x122e */
  8169 ms  0x122e SSL_AuthCertificateComplete()
  8169 ms  0x122e fd:0x7f6e7fe89dc0
  8169 ms  0x122e err:0x0
  8169 ms     | 0x122e PK11_DeriveWithFlags()
  8169 ms     | 0x122e basekey:0x7f6e8029a300
  8169 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8169 ms     | 0x122e ret:0x7f6e803c6b80
  8169 ms     | 0x122e PK11_DeriveWithFlags()
  8169 ms     | 0x122e basekey:0x7f6e8029a300
  8169 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8169 ms     | 0x122e ret:0x7f6e7fee7080
  8169 ms     | 0x122e PK11_DeriveWithFlags()
  8169 ms     | 0x122e basekey:0x7f6e8029a300
  8169 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8169 ms     | 0x122e ret:0x7f6e7ff11b00
  8169 ms     | 0x122e PK11_DeriveWithFlags()
  8169 ms     | 0x122e basekey:0x7f6e9a1cb900
  8170 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8170 ms     | 0x122e ret:0x7f6e7ff12e80
  8170 ms     | 0x122e PK11_DeriveWithFlags()
  8170 ms     | 0x122e basekey:0x7f6e9a1cb900
  8170 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8170 ms     | 0x122e ret:0x7f6e7fffbe00
  8170 ms     | 0x122e PK11_DeriveWithFlags()
  8170 ms     | 0x122e basekey:0x7f6e7fee7080
  8170 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8170 ms     | 0x122e ret:0x7f6e7fffbe00
  8170 ms     | 0x122e PK11_DeriveWithFlags()
  8170 ms     | 0x122e basekey:0x7f6e7fee7080
  8170 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8170 ms     | 0x122e ret:0x7f6e803c7d80
  8170 ms     | 0x122e PK11_DeriveWithFlags()
  8170 ms     | 0x122e basekey:0x7f6e9a1cb900
  8170 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8170 ms     | 0x122e ret:0x7f6e7ff12480
  8170 ms     | 0x122e PK11_Encrypt()
  8170 ms     | 0x122e symkey:0x7f6e7ff12e80
  8170 ms     | 0x122e PK11_DeriveWithFlags()
  8170 ms     | 0x122e basekey:0x7f6e803c6b80
  8170 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8170 ms     | 0x122e ret:0x7f6e7ff12480
  8170 ms     | 0x122e PK11_DeriveWithFlags()
  8170 ms     | 0x122e basekey:0x7f6e803c6b80
  8170 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8170 ms     | 0x122e ret:0x7f6e803c7d80
  8170 ms     | 0x122e PK11_DeriveWithFlags()
  8170 ms     | 0x122e basekey:0x7f6e8029a300
  8170 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8170 ms     | 0x122e ret:0x7f6e7ff12e80
  8170 ms     | 0x122e SECKEY_DestroyPrivateKey()
  8170 ms     | 0x122e privk:0x7f6e7fe51820::7f6e7fe51820  d0 83 fc 7f                                      ....
  8171 ms     | 0x122e privk:0x7f6e7fe51820::7f6e7fe51820  e5 e5 e5 e5                                      ....
  8171 ms     | 0x122e SECKEY_DestroyPrivateKey()
  8171 ms     | 0x122e privk:0x7f6e7fe49820::7f6e7fe49820  50 9b f2 7f                                      P...
  8171 ms     | 0x122e privk:0x7f6e7fe49820::7f6e7fe49820  e5 e5 e5 e5                                      ....
  8171 ms  0x122e PK11_Encrypt()
  8171 ms  0x122e symkey:0x7f6e7ff12480
  8171 ms  0x122e PK11_Encrypt()
  8171 ms  0x122e symkey:0x7f6e7ff12480
  8201 ms  0x122e SECKEY_CreateECPrivateKey()
  8201 ms  0x122e cx:0x7f6e7fea8428
  8201 ms     | 0x122e EC_ValidatePublicKey()
  8201 ms     | 0x122e ret:0x0
  8201 ms  0x122e ret:0x7f6e7fe4b820::7f6e7fe4b820  d0 98 f2 7f                                      ....
  8201 ms  0x122e SECKEY_CreateECPrivateKey()
  8201 ms  0x122e cx:0x7f6e7fea8428
  8202 ms     | 0x122e EC_ValidatePublicKey()
  8203 ms     | 0x122e ret:0x0
  8203 ms  0x122e ret:0x7f6e7fe4f020::7f6e7fe4f020  70 5e f9 7f                                      p^..
  8208 ms  0x122e PK11_DeriveWithFlags()
  8208 ms  0x122e basekey:0x7f6e7ff12e80
  8208 ms     | 0x122e PK11_DeriveWithTemplate()
  8208 ms  0x122e ret:0x7f6e803c7f80
  8208 ms  0x122e PK11_DeriveWithFlags()
  8208 ms  0x122e basekey:0x7f6e7ff12e80
  8208 ms     | 0x122e PK11_DeriveWithTemplate()
  8208 ms  0x122e ret:0x7f6e803c7f80
  8208 ms  0x122e PK11_Encrypt()
  8208 ms  0x122e symkey:0x7f6e7ff12480
           /* TID 0x1236 */
  8258 ms  0x1236 PR_Close()
  8258 ms  0x1236 fd:0x7f6e7fe895b0
           /* TID 0x122e */
  8267 ms  0x122e PK11_Encrypt()
  8267 ms  0x122e symkey:0x7f6e7ff12480
  8268 ms  0x122e PK11_Derive()
  8268 ms  0x122e basekey:0x7f6e803c7f80
  8268 ms     | 0x122e PK11_DeriveWithTemplate()
  8268 ms  0x122e ret:0x7f6e9a1cb900
  8268 ms  0x122e PK11_PubDeriveWithKDF()
  8268 ms  0x122e seckey:0x7f6e7fe4b820
  8268 ms     | 0x122e EC_ValidatePublicKey()
  8268 ms     | 0x122e ret:0x0
  8269 ms  0x122e ret:0x7f6e803c7f80
  8269 ms  SECKEY_ECParamsToKeySize()
  8269 ms  0x122e ret:0xff
  8269 ms  0x122e PK11_DeriveWithFlags()
  8269 ms  0x122e basekey:0x7f6e9a1cb900
  8269 ms     | 0x122e PK11_DeriveWithTemplate()
  8269 ms  0x122e ret:0x7f6e8029a300
  8269 ms  0x122e PK11_Derive()
  8269 ms  0x122e basekey:0x7f6e803c7f80
  8269 ms     | 0x122e PK11_DeriveWithTemplate()
  8269 ms  0x122e ret:0x7f6e803c7d80
  8269 ms  0x122e PK11_DeriveWithFlags()
  8269 ms  0x122e basekey:0x7f6e803c7d80
  8269 ms     | 0x122e PK11_DeriveWithTemplate()
  8269 ms  0x122e ret:0x7f6e9a1cb900
  8269 ms  0x122e PK11_DeriveWithFlags()
  8269 ms  0x122e basekey:0x7f6e803c7d80
  8269 ms     | 0x122e PK11_DeriveWithTemplate()
  8269 ms  0x122e ret:0x7f6e803c7f80
  8269 ms  0x122e PK11_DeriveWithFlags()
  8269 ms  0x122e basekey:0x7f6e803c7d80
  8269 ms     | 0x122e PK11_DeriveWithTemplate()
  8270 ms  0x122e ret:0x7f6e8029a300
  8270 ms  0x122e PK11_Derive()
  8270 ms  0x122e basekey:0x7f6e803c6d80
  8270 ms     | 0x122e PK11_DeriveWithTemplate()
  8270 ms  0x122e ret:0x7f6e92435600
  8270 ms  0x122e PK11_DeriveWithFlags()
  8270 ms  0x122e basekey:0x7f6e803c7f80
  8270 ms     | 0x122e PK11_DeriveWithTemplate()
  8270 ms  0x122e ret:0x7f6e803c7d80
  8270 ms  0x122e PK11_DeriveWithFlags()
  8270 ms  0x122e basekey:0x7f6e803c7f80
  8270 ms     | 0x122e PK11_DeriveWithTemplate()
  8270 ms  0x122e ret:0x7f6e8029a300
  8273 ms  0x122e PK11_DeriveWithFlags()
  8273 ms  0x122e basekey:0x7f6e803c7f80
  8273 ms     | 0x122e PK11_DeriveWithTemplate()
  8273 ms  0x122e ret:0x7f6e8029a300
  8275 ms  0x122e SSL_ImportFD()
  8275 ms  0x122e ret:0x7f6e90f89460
  8275 ms  0x122e SSL_AuthCertificateHook()
  8275 ms  0x122e fd:0x7f6e90f89460
  8275 ms  0x122e ret:0x0
  8276 ms  0x122e PR_Connect()
  8276 ms  0x122e fd:0x7f6e90f89460
  8276 ms  0x122e SSL_ImportFD()
  8276 ms  0x122e ret:0x7f6e90f89370
  8276 ms  0x122e SSL_AuthCertificateHook()
  8276 ms  0x122e fd:0x7f6e90f89370
  8276 ms  0x122e ret:0x0
  8278 ms  0x122e PK11_Encrypt()
  8278 ms  0x122e symkey:0x7f6e803c6980
  8278 ms  0x122e PR_Connect()
  8278 ms  0x122e fd:0x7f6e90f89370
  8314 ms  0x122e SECKEY_CreateECPrivateKey()
  8314 ms  0x122e cx:0x7f6e7fea8aa8
  8315 ms     | 0x122e EC_ValidatePublicKey()
  8315 ms     | 0x122e ret:0x0
  8315 ms  0x122e ret:0x7f6e80269020::7f6e80269020  40 8c fc 7f                                      @...
  8316 ms  0x122e SECKEY_CreateECPrivateKey()
  8316 ms  0x122e cx:0x7f6e7fea8aa8
  8317 ms     | 0x122e EC_ValidatePublicKey()
  8320 ms     | 0x122e ret:0x0
  8320 ms  0x122e ret:0x7f6e803ab020::7f6e803ab020  a0 d6 ff 7f                                      ....
  8321 ms  0x122e SECKEY_CreateECPrivateKey()
  8321 ms  0x122e cx:0x7f6e7fea8c48
  8322 ms     | 0x122e EC_ValidatePublicKey()
  8322 ms     | 0x122e ret:0x0
  8322 ms  0x122e ret:0x7f6e803af820::7f6e803af820  90 dc ff 7f                                      ....
  8322 ms  0x122e SECKEY_CreateECPrivateKey()
  8322 ms  0x122e cx:0x7f6e7fea8c48
  8323 ms     | 0x122e EC_ValidatePublicKey()
  8326 ms     | 0x122e ret:0x0
  8326 ms  0x122e ret:0x7f6e803b1820::7f6e803b1820  40 a2 12 80                                      @...
  8374 ms  0x122e PK11_Derive()
  8374 ms  0x122e basekey:0x7f6e8029a300
  8374 ms     | 0x122e PK11_DeriveWithTemplate()
  8374 ms  0x122e ret:0x7f6e803c6d80
  8374 ms  0x122e PK11_PubDeriveWithKDF()
  8374 ms  0x122e seckey:0x7f6e80269020
  8374 ms     | 0x122e EC_ValidatePublicKey()
  8374 ms     | 0x122e ret:0x0
  8375 ms  0x122e ret:0x7f6e8029a300
  8375 ms  SECKEY_ECParamsToKeySize()
  8375 ms  0x122e ret:0xff
  8375 ms  0x122e PK11_DeriveWithFlags()
  8375 ms  0x122e basekey:0x7f6e803c6d80
  8375 ms     | 0x122e PK11_DeriveWithTemplate()
  8375 ms  0x122e ret:0x7f6e8029a980
  8375 ms  0x122e PK11_Derive()
  8375 ms  0x122e basekey:0x7f6e8029a300
  8375 ms     | 0x122e PK11_DeriveWithTemplate()
  8375 ms  0x122e ret:0x7f6e803c7f00
  8375 ms  0x122e PK11_DeriveWithFlags()
  8375 ms  0x122e basekey:0x7f6e803c7f00
  8375 ms     | 0x122e PK11_DeriveWithTemplate()
  8376 ms  0x122e ret:0x7f6e803c6d80
  8376 ms  0x122e PK11_DeriveWithFlags()
  8376 ms  0x122e basekey:0x7f6e803c7f00
  8376 ms     | 0x122e PK11_DeriveWithTemplate()
  8376 ms  0x122e ret:0x7f6e8029a300
  8376 ms  0x122e PK11_DeriveWithFlags()
  8376 ms  0x122e basekey:0x7f6e803c7f00
  8376 ms     | 0x122e PK11_DeriveWithTemplate()
  8376 ms  0x122e ret:0x7f6e8029a980
  8377 ms  0x122e PK11_Derive()
  8377 ms  0x122e basekey:0x7f6e803c6e80
  8377 ms     | 0x122e PK11_DeriveWithTemplate()
  8377 ms  0x122e ret:0x7f6e7feddb80
  8377 ms  0x122e PK11_DeriveWithFlags()
  8377 ms  0x122e basekey:0x7f6e8029a300
  8377 ms     | 0x122e PK11_DeriveWithTemplate()
  8377 ms  0x122e ret:0x7f6e803c7f00
  8377 ms  0x122e PK11_DeriveWithFlags()
  8377 ms  0x122e basekey:0x7f6e8029a300
  8377 ms     | 0x122e PK11_DeriveWithTemplate()
  8377 ms  0x122e ret:0x7f6e8029a980
  8379 ms  SECKEY_ECParamsToKeySize()
  8379 ms  0x122e ret:0x100
  8379 ms  SECKEY_ECParamsToBasePointOrderLen()
  8379 ms  0x122e ret:0x100
  8379 ms  SECKEY_ECParamsToBasePointOrderLen()
  8379 ms  0x122e ret:0x100
  8379 ms  0x122e EC_ValidatePublicKey()
  8383 ms  0x122e ret:0x0
  8387 ms  0x122e PK11_DeriveWithFlags()
  8387 ms  0x122e basekey:0x7f6e8029a300
  8388 ms     | 0x122e PK11_DeriveWithTemplate()
  8388 ms  0x122e ret:0x7f6e8029a980
  8388 ms  0x122e SSL_AuthCertificateComplete()
  8388 ms  0x122e fd:0x7f6e90f89460
  8388 ms  0x122e err:0x0
  8388 ms     | 0x122e PK11_DeriveWithFlags()
  8388 ms     | 0x122e basekey:0x7f6e7feddb80
  8388 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8388 ms     | 0x122e ret:0x7f6e8029a980
  8388 ms     | 0x122e PK11_DeriveWithFlags()
  8388 ms     | 0x122e basekey:0x7f6e7feddb80
  8388 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8388 ms     | 0x122e ret:0x7f6e803c6e80
  8388 ms     | 0x122e PK11_DeriveWithFlags()
  8388 ms     | 0x122e basekey:0x7f6e7feddb80
  8388 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8388 ms     | 0x122e ret:0x7f6e7feddc80
  8388 ms     | 0x122e PK11_DeriveWithFlags()
  8388 ms     | 0x122e basekey:0x7f6e803c6d80
  8388 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8388 ms     | 0x122e ret:0x7f6e803c7b00
  8388 ms     | 0x122e PK11_DeriveWithFlags()
  8388 ms     | 0x122e basekey:0x7f6e803c6d80
  8388 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8388 ms     | 0x122e ret:0x7f6e7feddc00
  8388 ms     | 0x122e PK11_DeriveWithFlags()
  8388 ms     | 0x122e basekey:0x7f6e803c6e80
  8388 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8388 ms     | 0x122e ret:0x7f6e7feddc00
  8388 ms     | 0x122e PK11_DeriveWithFlags()
  8388 ms     | 0x122e basekey:0x7f6e803c6e80
  8388 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8388 ms     | 0x122e ret:0x7f6e8023bf80
  8388 ms     | 0x122e PK11_DeriveWithFlags()
  8388 ms     | 0x122e basekey:0x7f6e803c6d80
  8388 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8388 ms     | 0x122e ret:0x7f6e803c7f00
  8388 ms     | 0x122e PK11_Encrypt()
  8388 ms     | 0x122e symkey:0x7f6e803c7b00
  8389 ms     | 0x122e PK11_DeriveWithFlags()
  8389 ms     | 0x122e basekey:0x7f6e8029a980
  8389 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8389 ms     | 0x122e ret:0x7f6e803c7f00
  8389 ms     | 0x122e PK11_DeriveWithFlags()
  8389 ms     | 0x122e basekey:0x7f6e8029a980
  8389 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8389 ms     | 0x122e ret:0x7f6e8023bf80
  8389 ms     | 0x122e PK11_DeriveWithFlags()
  8389 ms     | 0x122e basekey:0x7f6e7feddb80
  8389 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8389 ms     | 0x122e ret:0x7f6e803c7b00
  8389 ms     | 0x122e SECKEY_DestroyPrivateKey()
  8389 ms     | 0x122e privk:0x7f6e803ab020::7f6e803ab020  a0 d6 ff 7f                                      ....
  8389 ms     | 0x122e privk:0x7f6e803ab020::7f6e803ab020  e5 e5 e5 e5                                      ....
  8389 ms     | 0x122e SECKEY_DestroyPrivateKey()
  8389 ms     | 0x122e privk:0x7f6e80269020::7f6e80269020  40 8c fc 7f                                      @...
  8389 ms     | 0x122e privk:0x7f6e80269020::7f6e80269020  e5 e5 e5 e5                                      ....
  8391 ms  0x122e PK11_Derive()
  8391 ms  0x122e basekey:0x7f6e8029a300
  8391 ms     | 0x122e PK11_DeriveWithTemplate()
  8391 ms  0x122e ret:0x7f6e803c6d80
  8391 ms  0x122e PK11_PubDeriveWithKDF()
  8391 ms  0x122e seckey:0x7f6e803af820
  8391 ms     | 0x122e EC_ValidatePublicKey()
  8391 ms     | 0x122e ret:0x0
  8393 ms  0x122e ret:0x7f6e8029a300
  8393 ms  SECKEY_ECParamsToKeySize()
  8393 ms  0x122e ret:0xff
  8393 ms  0x122e PK11_DeriveWithFlags()
  8393 ms  0x122e basekey:0x7f6e803c6d80
  8393 ms     | 0x122e PK11_DeriveWithTemplate()
  8393 ms  0x122e ret:0x7f6e7feddb80
  8393 ms  0x122e PK11_Derive()
  8393 ms  0x122e basekey:0x7f6e8029a300
  8393 ms     | 0x122e PK11_DeriveWithTemplate()
  8393 ms  0x122e ret:0x7f6e8023bf80
  8393 ms  0x122e PK11_DeriveWithFlags()
  8393 ms  0x122e basekey:0x7f6e8023bf80
  8393 ms     | 0x122e PK11_DeriveWithTemplate()
  8393 ms  0x122e ret:0x7f6e803c6d80
  8393 ms  0x122e PK11_DeriveWithFlags()
  8393 ms  0x122e basekey:0x7f6e8023bf80
  8393 ms     | 0x122e PK11_DeriveWithTemplate()
  8393 ms  0x122e ret:0x7f6e8029a300
  8393 ms  0x122e PK11_DeriveWithFlags()
  8393 ms  0x122e basekey:0x7f6e8023bf80
  8393 ms     | 0x122e PK11_DeriveWithTemplate()
  8393 ms  0x122e ret:0x7f6e7feddb80
  8393 ms  0x122e PK11_Derive()
  8393 ms  0x122e basekey:0x7f6e8029bc80
  8393 ms     | 0x122e PK11_DeriveWithTemplate()
  8393 ms  0x122e ret:0x7f6e802fd280
  8393 ms  0x122e PK11_DeriveWithFlags()
  8393 ms  0x122e basekey:0x7f6e8029a300
  8393 ms     | 0x122e PK11_DeriveWithTemplate()
  8393 ms  0x122e ret:0x7f6e8023bf80
  8393 ms  0x122e PK11_DeriveWithFlags()
  8393 ms  0x122e basekey:0x7f6e8029a300
  8393 ms     | 0x122e PK11_DeriveWithTemplate()
  8393 ms  0x122e ret:0x7f6e7feddb80
  8394 ms  SECKEY_ECParamsToKeySize()
  8394 ms  0x122e ret:0x100
  8394 ms  SECKEY_ECParamsToBasePointOrderLen()
  8394 ms  0x122e ret:0x100
  8394 ms  SECKEY_ECParamsToBasePointOrderLen()
  8394 ms  0x122e ret:0x100
  8394 ms  0x122e EC_ValidatePublicKey()
  8397 ms  0x122e ret:0x0
  8400 ms  0x122e PK11_DeriveWithFlags()
  8400 ms  0x122e basekey:0x7f6e8029a300
  8400 ms     | 0x122e PK11_DeriveWithTemplate()
  8400 ms  0x122e ret:0x7f6e7feddb80
  8400 ms  0x122e PK11_Encrypt()
  8400 ms  0x122e symkey:0x7f6e803c7f00
  8400 ms  0x122e PK11_Encrypt()
  8400 ms  0x122e symkey:0x7f6e803c7f00
  8400 ms  0x122e SSL_AuthCertificateComplete()
  8400 ms  0x122e fd:0x7f6e90f89370
  8400 ms  0x122e err:0x0
  8401 ms     | 0x122e PK11_DeriveWithFlags()
  8401 ms     | 0x122e basekey:0x7f6e802fd280
  8401 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8401 ms     | 0x122e ret:0x7f6e7feddb80
  8401 ms     | 0x122e PK11_DeriveWithFlags()
  8401 ms     | 0x122e basekey:0x7f6e802fd280
  8401 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8401 ms     | 0x122e ret:0x7f6e8029bc80
  8401 ms     | 0x122e PK11_DeriveWithFlags()
  8401 ms     | 0x122e basekey:0x7f6e802fd280
  8401 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8401 ms     | 0x122e ret:0x7f6e8031f100
  8401 ms     | 0x122e PK11_DeriveWithFlags()
  8401 ms     | 0x122e basekey:0x7f6e803c6d80
  8401 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8401 ms     | 0x122e ret:0x7f6e8031f180
  8401 ms     | 0x122e PK11_DeriveWithFlags()
  8401 ms     | 0x122e basekey:0x7f6e803c6d80
  8401 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8401 ms     | 0x122e ret:0x7f6e8031f280
  8401 ms     | 0x122e PK11_DeriveWithFlags()
  8401 ms     | 0x122e basekey:0x7f6e8029bc80
  8401 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8401 ms     | 0x122e ret:0x7f6e8031f280
  8401 ms     | 0x122e PK11_DeriveWithFlags()
  8401 ms     | 0x122e basekey:0x7f6e8029bc80
  8401 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8401 ms     | 0x122e ret:0x7f6e8031f300
  8401 ms     | 0x122e PK11_DeriveWithFlags()
  8401 ms     | 0x122e basekey:0x7f6e803c6d80
  8401 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8401 ms     | 0x122e ret:0x7f6e8023bf80
  8401 ms     | 0x122e PK11_Encrypt()
  8401 ms     | 0x122e symkey:0x7f6e8031f180
  8401 ms     | 0x122e PK11_DeriveWithFlags()
  8401 ms     | 0x122e basekey:0x7f6e7feddb80
  8401 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8401 ms     | 0x122e ret:0x7f6e8023bf80
  8401 ms     | 0x122e PK11_DeriveWithFlags()
  8401 ms     | 0x122e basekey:0x7f6e7feddb80
  8401 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8401 ms     | 0x122e ret:0x7f6e8031f300
  8401 ms     | 0x122e PK11_DeriveWithFlags()
  8401 ms     | 0x122e basekey:0x7f6e802fd280
  8401 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8401 ms     | 0x122e ret:0x7f6e8031f180
  8402 ms     | 0x122e SECKEY_DestroyPrivateKey()
  8402 ms     | 0x122e privk:0x7f6e803b1820::7f6e803b1820  40 a2 12 80                                      @...
  8402 ms     | 0x122e privk:0x7f6e803b1820::7f6e803b1820  e5 e5 e5 e5                                      ....
  8402 ms     | 0x122e SECKEY_DestroyPrivateKey()
  8402 ms     | 0x122e privk:0x7f6e803af820::7f6e803af820  90 dc ff 7f                                      ....
  8402 ms     | 0x122e privk:0x7f6e803af820::7f6e803af820  e5 e5 e5 e5                                      ....
  8403 ms  0x122e PK11_Encrypt()
  8403 ms  0x122e symkey:0x7f6e8023bf80
           /* TID 0x1236 */
  8405 ms  0x1236 PR_Close()
  8405 ms  0x1236 fd:0x7f6e90f7fcd0
           /* TID 0x122e */
  8413 ms  0x122e PK11_Encrypt()
  8413 ms  0x122e symkey:0x7f6e803c6980
           /* TID 0x1236 */
  8417 ms  0x1236 PR_Close()
  8417 ms  0x1236 fd:0x7f6e80327f40
           /* TID 0x128f */
  8417 ms  0x128f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8417 ms  0x128f ret:0x0
           /* TID 0x122e */
  8417 ms  0x122e SSL_AuthCertificateComplete()
  8417 ms  0x122e fd:0x7f6e803e19a0
  8417 ms  0x122e err:0x0
  8417 ms     | 0x122e PK11_DeriveWithFlags()
  8417 ms     | 0x122e basekey:0x7f6e92435600
  8417 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8417 ms     | 0x122e ret:0x7f6e8029a300
  8417 ms     | 0x122e PK11_DeriveWithFlags()
  8417 ms     | 0x122e basekey:0x7f6e92435600
  8417 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8417 ms     | 0x122e ret:0x7f6e803c6d80
  8417 ms     | 0x122e PK11_DeriveWithFlags()
  8417 ms     | 0x122e basekey:0x7f6e92435600
  8417 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8417 ms     | 0x122e ret:0x7f6e802fd280
  8417 ms     | 0x122e PK11_DeriveWithFlags()
  8417 ms     | 0x122e basekey:0x7f6e9a1cb900
  8417 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8417 ms     | 0x122e ret:0x7f6e8031f300
  8417 ms     | 0x122e PK11_DeriveWithFlags()
  8417 ms     | 0x122e basekey:0x7f6e9a1cb900
  8417 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8417 ms     | 0x122e ret:0x7f6e7fffcc80
  8418 ms     | 0x122e PK11_DeriveWithFlags()
  8418 ms     | 0x122e basekey:0x7f6e803c6d80
  8418 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8418 ms     | 0x122e ret:0x7f6e7fffcc80
  8418 ms     | 0x122e PK11_DeriveWithFlags()
  8418 ms     | 0x122e basekey:0x7f6e803c6d80
  8418 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8418 ms     | 0x122e ret:0x7f6e801fe180
  8418 ms     | 0x122e PK11_DeriveWithFlags()
  8418 ms     | 0x122e basekey:0x7f6e9a1cb900
  8418 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8418 ms     | 0x122e ret:0x7f6e803c7d80
  8418 ms     | 0x122e PK11_Encrypt()
  8418 ms     | 0x122e symkey:0x7f6e8031f300
  8418 ms     | 0x122e PK11_DeriveWithFlags()
  8418 ms     | 0x122e basekey:0x7f6e8029a300
  8418 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8418 ms     | 0x122e ret:0x7f6e803c7d80
  8418 ms     | 0x122e PK11_DeriveWithFlags()
  8418 ms     | 0x122e basekey:0x7f6e8029a300
  8418 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8418 ms     | 0x122e ret:0x7f6e801fe180
  8418 ms     | 0x122e PK11_DeriveWithFlags()
  8418 ms     | 0x122e basekey:0x7f6e92435600
  8418 ms     |    | 0x122e PK11_DeriveWithTemplate()
  8418 ms     | 0x122e ret:0x7f6e8031f300
  8418 ms     | 0x122e SECKEY_DestroyPrivateKey()
  8418 ms     | 0x122e privk:0x7f6e7fe4f020::7f6e7fe4f020  70 5e f9 7f                                      p^..
  8418 ms     | 0x122e privk:0x7f6e7fe4f020::7f6e7fe4f020  e5 e5 e5 e5                                      ....
  8418 ms     | 0x122e SECKEY_DestroyPrivateKey()
  8418 ms     | 0x122e privk:0x7f6e7fe4b820::7f6e7fe4b820  d0 98 f2 7f                                      ....
  8418 ms     | 0x122e privk:0x7f6e7fe4b820::7f6e7fe4b820  e5 e5 e5 e5                                      ....
  8418 ms  0x122e PK11_Encrypt()
  8418 ms  0x122e symkey:0x7f6e803c7d80
  8418 ms  0x122e PK11_Encrypt()
  8418 ms  0x122e symkey:0x7f6e803c7d80
  8427 ms  0x122e PK11_DeriveWithFlags()
  8427 ms  0x122e basekey:0x7f6e803c7b00
  8427 ms     | 0x122e PK11_DeriveWithTemplate()
  8427 ms  0x122e ret:0x7f6e803c7f80
  8427 ms  0x122e PK11_DeriveWithFlags()
  8427 ms  0x122e basekey:0x7f6e803c7b00
  8427 ms     | 0x122e PK11_DeriveWithTemplate()
  8427 ms  0x122e ret:0x7f6e803c7f80
  8427 ms  0x122e PK11_Encrypt()
  8427 ms  0x122e symkey:0x7f6e803c7f00
  8441 ms  0x122e PK11_DeriveWithFlags()
  8441 ms  0x122e basekey:0x7f6e8031f180
  8441 ms     | 0x122e PK11_DeriveWithTemplate()
  8441 ms  0x122e ret:0x7f6e803c7f80
  8441 ms  0x122e PK11_DeriveWithFlags()
  8441 ms  0x122e basekey:0x7f6e8031f180
  8441 ms     | 0x122e PK11_DeriveWithTemplate()
  8441 ms  0x122e ret:0x7f6e803c7f80
  8441 ms  0x122e PR_Close()
  8441 ms  0x122e fd:0x7f6e90f89370
  8441 ms     | 0x122e PK11_Encrypt()
  8441 ms     | 0x122e symkey:0x7f6e8023bf80
  8456 ms  0x122e PK11_DeriveWithFlags()
  8456 ms  0x122e basekey:0x7f6e8031f300
  8456 ms     | 0x122e PK11_DeriveWithTemplate()
  8456 ms  0x122e ret:0x7f6e8031f100
  8456 ms  0x122e PK11_DeriveWithFlags()
  8456 ms  0x122e basekey:0x7f6e8031f300
  8456 ms     | 0x122e PK11_DeriveWithTemplate()
  8456 ms  0x122e ret:0x7f6e8031f100
  8456 ms  0x122e PK11_Encrypt()
  8456 ms  0x122e symkey:0x7f6e803c7d80
  8484 ms  0x122e PK11_Encrypt()
  8484 ms  0x122e symkey:0x7f6e803c7f00
  8512 ms  0x122e PK11_Encrypt()
  8512 ms  0x122e symkey:0x7f6e803c7d80
  8534 ms  0x122e PK11_Encrypt()
  8534 ms  0x122e symkey:0x7f6e927dab80
  8551 ms  0x122e PK11_Encrypt()
  8551 ms  0x122e symkey:0x7f6e927dab80
  8555 ms  0x122e PK11_Encrypt()
  8555 ms  0x122e symkey:0x7f6e927dab80
  8558 ms  0x122e PK11_Encrypt()
  8558 ms  0x122e symkey:0x7f6e927dab80
  8561 ms  0x122e PR_Close()
  8561 ms  0x122e fd:0x7f6e927505b0
           /* TID 0x1223 */
  8563 ms  0x1223 EC_ValidatePublicKey()
  8565 ms  0x1223 ret:0x0
  8565 ms  0x1223 EC_ValidatePublicKey()
  8566 ms  0x1223 ret:0x0
  8566 ms  0x1223 EC_ValidatePublicKey()
  8570 ms  0x1223 ret:0x0
  8570 ms  0x1223 EC_ValidatePublicKey()
  8571 ms  0x1223 ret:0x0
  8571 ms  0x1223 EC_ValidatePublicKey()
  8573 ms  0x1223 ret:0x0
  8573 ms  0x1223 EC_ValidatePublicKey()
  8574 ms  0x1223 ret:0x0
  8574 ms  0x1223 EC_ValidatePublicKey()
  8576 ms  0x1223 ret:0x0
  8576 ms  0x1223 EC_ValidatePublicKey()
  8579 ms  0x1223 ret:0x0
  8579 ms  0x1223 EC_ValidatePublicKey()
  8581 ms  0x1223 ret:0x0
  8581 ms  0x1223 EC_ValidatePublicKey()
  8582 ms  0x1223 ret:0x0
           /* TID 0x122e */
  8583 ms  0x122e PK11_Encrypt()
  8583 ms  0x122e symkey:0x7f6e803c7d80
  8583 ms  0x122e PK11_Encrypt()
  8583 ms  0x122e symkey:0x7f6e803c6a80
  8583 ms  0x122e PK11_Encrypt()
  8583 ms  0x122e symkey:0x7f6e803c7f00
  8583 ms  0x122e PK11_Encrypt()
  8583 ms  0x122e symkey:0x7f6e803c6980
  8583 ms  0x122e PK11_Encrypt()
  8583 ms  0x122e symkey:0x7f6e803c7600
  8584 ms  0x122e PK11_Encrypt()
  8584 ms  0x122e symkey:0x7f6e803c7a00
  8584 ms  0x122e PK11_Encrypt()
  8584 ms  0x122e symkey:0x7f6e7ff12480
  8584 ms  0x122e PR_Close()
  8584 ms  0x122e fd:0x7f6e7fffe730
  8584 ms     | 0x122e PK11_Encrypt()
  8584 ms     | 0x122e symkey:0x7f6e803c7e80
  8584 ms  0x122e PR_Close()
  8584 ms  0x122e fd:0x7f6e7fe89d00
  8584 ms  0x122e PR_Close()
  8584 ms  0x122e fd:0x7f6e7fe89eb0
  8584 ms  0x122e PR_Close()
  8584 ms  0x122e fd:0x7f6e7fe897f0
  8584 ms  0x122e PR_Close()
  8584 ms  0x122e fd:0x7f6e7fffe9d0
  8584 ms  0x122e PR_Close()
  8584 ms  0x122e fd:0x7f6e7fffef70
  8584 ms  0x122e PR_Close()
  8584 ms  0x122e fd:0x7f6e7ff91e80
  8584 ms     | 0x122e PK11_Encrypt()
  8584 ms     | 0x122e symkey:0x7f6e803c6880
  8584 ms  0x122e PR_Close()
  8584 ms  0x122e fd:0x7f6e803272e0
  8584 ms     | 0x122e PK11_Encrypt()
  8584 ms     | 0x122e symkey:0x7f6e910fcb00
  8585 ms  0x122e PR_Close()
  8585 ms  0x122e fd:0x7f6e803270a0
  8585 ms  0x122e PR_Close()
  8585 ms  0x122e fd:0x7f6e90f7fdf0
  8585 ms     | 0x122e PK11_Encrypt()
  8585 ms     | 0x122e symkey:0x7f6e910fbc80
  8585 ms  0x122e PR_Close()
  8585 ms  0x122e fd:0x7f6e9747bca0
  8585 ms  0x122e PR_Close()
  8585 ms  0x122e fd:0x7f6e924fdbe0
  8585 ms     | 0x122e PK11_Encrypt()
  8585 ms     | 0x122e symkey:0x7f6e92435800
  8585 ms  0x122e PR_Close()
  8585 ms  0x122e fd:0x7f6e95f71f70
  8585 ms     | 0x122e PK11_Encrypt()
  8585 ms     | 0x122e symkey:0x7f6e91405800
  8585 ms  0x122e PR_Close()
  8585 ms  0x122e fd:0x7f6e7ff91df0
  8585 ms     | 0x122e PK11_Encrypt()
  8585 ms     | 0x122e symkey:0x7f6e803c6980
  8586 ms  0x122e PR_Close()
  8586 ms  0x122e fd:0x7f6e803e10a0
  8586 ms     | 0x122e PK11_Encrypt()
  8586 ms     | 0x122e symkey:0x7f6e803c7600
  8586 ms  0x122e PR_Close()
  8586 ms  0x122e fd:0x7f6e7fe89dc0
  8586 ms     | 0x122e PK11_Encrypt()
  8586 ms     | 0x122e symkey:0x7f6e7ff12480
  8586 ms  0x122e PR_Close()
  8586 ms  0x122e fd:0x7f6e803e19a0
  8586 ms     | 0x122e PK11_Encrypt()
  8586 ms     | 0x122e symkey:0x7f6e803c7d80
  8586 ms  0x122e PR_Close()
  8586 ms  0x122e fd:0x7f6e7fe89880
  8586 ms     | 0x122e PK11_Encrypt()
  8586 ms     | 0x122e symkey:0x7f6e803c7a00
  8587 ms  0x122e PR_Close()
  8587 ms  0x122e fd:0x7f6e7fffec40
  8587 ms     | 0x122e PK11_Encrypt()
  8587 ms     | 0x122e symkey:0x7f6e803c6a80
  8587 ms  0x122e PR_Close()
  8587 ms  0x122e fd:0x7f6e90f89460
  8587 ms     | 0x122e PK11_Encrypt()
  8587 ms     | 0x122e symkey:0x7f6e803c7f00
           /* TID 0x1280 */
  8587 ms  0x1280 PR_Close()
  8587 ms  0x1280 fd:0x7f6e7fe89220
  8587 ms  0x1280 PR_Close()
  8587 ms  0x1280 fd:0x7f6e7fe89220
           /* TID 0x122e */
  8589 ms  0x122e PK11_Encrypt()
  8589 ms  0x122e symkey:0x7f6e927dab80
  8589 ms  0x122e PR_Close()
  8589 ms  0x122e fd:0x7f6e802f5220
  8590 ms     | 0x122e PK11_Encrypt()
  8590 ms     | 0x122e symkey:0x7f6e927dab80
           /* TID 0x1223 */
  8591 ms  0x1223 PR_Close()
  8591 ms  0x1223 fd:0x7f6e924fd8b0
  8591 ms  0x1223 PR_Close()
  8591 ms  0x1223 fd:0x7f6e7fe89850
  8592 ms  0x1223 PR_Close()
  8592 ms  0x1223 fd:0x7f6e7fe89a60
  8592 ms  0x1223 PR_Close()
  8592 ms  0x1223 fd:0x7f6e7fe89850
  8592 ms  0x1223 PR_Close()
  8592 ms  0x1223 fd:0x7f6e7fe89a60
  8592 ms  0x1223 PR_Close()
  8592 ms  0x1223 fd:0x7f6e7fe89850
           /* TID 0x1270 */
  8596 ms  0x1270 PR_Close()
  8596 ms  0x1270 fd:0x7f6e7fe89880
           /* TID 0x1223 */
  8619 ms  0x1223 PR_Close()
  8619 ms  0x1223 fd:0x7f6e7fe89a60
  8619 ms  0x1223 PR_Close()
  8619 ms  0x1223 fd:0x7f6e7fffef40
  8621 ms  0x1223 PR_Close()
  8621 ms  0x1223 fd:0x7f6e7fe89a60
  8621 ms  0x1223 PR_Close()
  8621 ms  0x1223 fd:0x7f6e7fffef40
  8622 ms  0x1223 PR_Close()
  8622 ms  0x1223 fd:0x7f6e9c2c89a0
  8622 ms  0x1223 PR_Close()
  8622 ms  0x1223 fd:0x7f6e9c2c88b0
  8622 ms  0x1223 PR_Close()
  8622 ms  0x1223 fd:0x7f6e9c2c8a60
  8624 ms  0x1223 PR_Close()
  8624 ms  0x1223 fd:0x7f6e7fffef70
  8626 ms  0x1223 PR_Close()
  8626 ms  0x1223 fd:0x7f6e7fffef70
  8628 ms  0x1223 PR_Close()
  8628 ms  0x1223 fd:0x7f6e7fe89a60
  8628 ms  0x1223 PR_Close()
  8628 ms  0x1223 fd:0x7f6e802f50a0
  8628 ms  0x1223 PR_Close()
  8628 ms  0x1223 fd:0x7f6e7fe89a60
  8628 ms  0x1223 PR_Close()
  8628 ms  0x1223 fd:0x7f6e802f50a0
  8631 ms  0x1223 PR_Close()
  8631 ms  0x1223 fd:0x7f6e802f5160
  8632 ms  0x1223 PR_Close()
  8632 ms  0x1223 fd:0x7f6e802f5160
  8634 ms  0x1223 PR_Close()
  8634 ms  0x1223 fd:0x7f6e7fe89a60
  8634 ms  0x1223 PR_Close()
  8634 ms  0x1223 fd:0x7f6e802f51c0
  8634 ms  0x1223 PR_Close()
  8634 ms  0x1223 fd:0x7f6e7fe89a60
  8634 ms  0x1223 PR_Close()
  8634 ms  0x1223 fd:0x7f6e802f51c0
  8638 ms  0x1223 PR_Close()
  8638 ms  0x1223 fd:0x7f6e802f5220
  8639 ms  0x1223 PR_Close()
  8639 ms  0x1223 fd:0x7f6e802f5220
  8645 ms  0x1223 PR_Close()
  8645 ms  0x1223 fd:0x7f6e80327130
  8646 ms  0x1223 PR_Close()
  8646 ms  0x1223 fd:0x7f6e80327130
  8648 ms  0x1223 PR_Close()
  8648 ms  0x1223 fd:0x7f6e80327190
           /* TID 0x1236 */
  8652 ms  0x1236 PR_Close()
  8652 ms  0x1236 fd:0x7f6e803271f0
  8656 ms  0x1236 PR_Close()
  8656 ms  0x1236 fd:0x7f6e7fe893a0
  8658 ms  0x1236 PR_Close()
  8658 ms  0x1236 fd:0x7f6e7fe893a0
  8660 ms  0x1236 PR_Close()
  8660 ms  0x1236 fd:0x7f6e7fe893a0
           /* TID 0x1270 */
  8662 ms  0x1270 PR_Close()
  8662 ms  0x1270 fd:0x7f6e7fe893a0
  8664 ms  0x1270 PR_Close()
  8664 ms  0x1270 fd:0x7f6e7fe893a0
           /* TID 0x1223 */
  8664 ms  0x1223 PR_Close()
  8664 ms  0x1223 fd:0x7f6e7fe89a60
  8664 ms  0x1223 PR_Close()
  8664 ms  0x1223 fd:0x7f6e803e1640
           /* TID 0x1270 */
  8670 ms  0x1270 PR_Close()
  8670 ms  0x1270 fd:0x7f6e7fe89880
  8695 ms  0x1270 PR_Close()
  8695 ms  0x1270 fd:0x7f6e7fe89880
           /* TID 0x122e */
  8699 ms  0x122e SSL_ImportFD()
  8699 ms  0x122e ret:0x7f6e7ff91220
  8699 ms  0x122e SSL_AuthCertificateHook()
  8699 ms  0x122e fd:0x7f6e7ff91220
  8699 ms  0x122e ret:0x0
  8699 ms  0x122e PR_Connect()
  8699 ms  0x122e fd:0x7f6e7ff91220
  8700 ms  0x122e PR_Close()
  8700 ms  0x122e fd:0x7f6e7ff91220
           /* TID 0x1228 */
  8706 ms  0x1228 PR_Close()
  8706 ms  0x1228 fd:0x7f6e9b0f7dc0
           /* TID 0x1270 */
  8717 ms  0x1270 PR_Close()
  8717 ms  0x1270 fd:0x7f6e7fe89730
           /* TID 0x1228 */
  8723 ms  0x1228 PR_Close()
  8723 ms  0x1228 fd:0x7f6e9744a820
           /* TID 0x122e */
  8723 ms  0x122e PR_Close()
  8723 ms  0x122e fd:0x7f6e967d0a00
           /* TID 0x1280 */
  8724 ms  0x1280 PR_Close()
  8724 ms  0x1280 fd:0x7f6e7fe89520
  8724 ms  0x1280 PR_Close()
  8724 ms  0x1280 fd:0x7f6e7fe89520
  8724 ms  0x1280 PR_Close()
  8724 ms  0x1280 fd:0x7f6e7fe89520
  8724 ms  0x1280 PR_Close()
  8724 ms  0x1280 fd:0x7f6e7ff1f850
           /* TID 0x1270 */
  8725 ms  0x1270 PR_Close()
  8725 ms  0x1270 fd:0x7f6e7ff1f850
           /* TID 0x1236 */
  8728 ms  0x1236 PR_Close()
  8728 ms  0x1236 fd:0x7f6e7ff91e20
  8728 ms  0x1236 PR_Close()
  8728 ms  0x1236 fd:0x7f6e7ff91e50
           /* TID 0x1228 */
  8735 ms  0x1228 PR_Close()
  8735 ms  0x1228 fd:0x7f6e924b6b80
           /* TID 0x1223 */
  8737 ms  0x1223 PR_Close()
  8737 ms  0x1223 fd:0x7f6e7fe893a0
  8737 ms  0x1223 PR_Close()
  8737 ms  0x1223 fd:0x7f6e7fffee50
           /* TID 0x1270 */
  8739 ms  0x1270 PR_Close()
  8739 ms  0x1270 fd:0x7f6e802f5100
  8741 ms  0x1270 PR_Close()
  8741 ms  0x1270 fd:0x7f6e7fffedc0
  8822 ms  0x1270 PR_Close()
  8822 ms  0x1270 fd:0x7f6e7fe89130
  8823 ms  0x1270 PR_Close()
  8823 ms  0x1270 fd:0x7f6e7fe89130
  8829 ms  0x1270 PR_Close()
  8829 ms  0x1270 fd:0x7f6e7fe894f0
  8831 ms  0x1270 PR_Close()
  8831 ms  0x1270 fd:0x7f6e7fe89580
  8845 ms  0x1270 PR_Close()
  8845 ms  0x1270 fd:0x7f6e7fe89ac0
  8851 ms  0x1270 PR_Close()
  8851 ms  0x1270 fd:0x7f6e7ff1f9a0
  8857 ms  0x1270 PR_Close()
  8857 ms  0x1270 fd:0x7f6e7fffe490
  8867 ms  0x1270 PR_Close()
  8867 ms  0x1270 fd:0x7f6e7fffedc0
  8869 ms  0x1270 PR_Close()
  8869 ms  0x1270 fd:0x7f6e7fffedc0
           /* TID 0x1223 */
  9025 ms  0x1223 PR_Close()
  9025 ms  0x1223 fd:0x7f6e7ff1f0d0
  9025 ms  0x1223 PR_Close()
  9025 ms  0x1223 fd:0x7f6e7ff1f0d0
  9030 ms  0x1223 PR_Close()
  9030 ms  0x1223 fd:0x7f6eb95da130
  9030 ms  0x1223 PR_Close()
  9030 ms  0x1223 fd:0x7f6eb95da190
Process terminated
