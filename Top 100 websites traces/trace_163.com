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
           /* TID 0x1003 */
   200 ms  0x1003 PR_Close()
   200 ms  0x1003 fd:0x7faa3ded6e20
           /* TID 0xffb */
   312 ms  0xffb SSL_ImportFD()
   312 ms  0xffb ret:0x7faa43591940
   312 ms  0xffb SSL_AuthCertificateHook()
   312 ms  0xffb fd:0x7faa43591940
   312 ms  0xffb ret:0x0
   312 ms  0xffb PR_Connect()
   312 ms  0xffb fd:0x7faa43591940
   531 ms  0xffb SECKEY_CreateECPrivateKey()
   531 ms  0xffb cx:0x7faa3deda988
   532 ms     | 0xffb EC_ValidatePublicKey()
   532 ms     | 0xffb ret:0x0
   532 ms  0xffb ret:0x7faa3dd66020::7faa3dd66020  c0 fe d9 3d                                      ...=
   533 ms  0xffb SECKEY_CreateECPrivateKey()
   533 ms  0xffb cx:0x7faa3deda988
   534 ms     | 0xffb EC_ValidatePublicKey()
   539 ms     | 0xffb ret:0x0
   539 ms  0xffb ret:0x7faa3dd68020::7faa3dd68020  00 f1 10 2d                                      ...-
           /* TID 0x105e */
   717 ms  0x105e PR_Close()
   717 ms  0x105e fd:0x7faa43591880
   720 ms  0x105e PR_Close()
   720 ms  0x105e fd:0x7faa43591880
           /* TID 0xffb */
   770 ms  SECKEY_ECParamsToKeySize()
   770 ms  0xffb ret:0x100
   770 ms  0xffb SECKEY_CreateECPrivateKey()
   770 ms  0xffb cx:0x7faa3deda988
   772 ms     | 0xffb EC_ValidatePublicKey()
   776 ms     | 0xffb ret:0x0
   776 ms  0xffb ret:0x7faa3dd71020::7faa3dd71020  40 f7 10 2d                                      @..-
   776 ms  0xffb PK11_PubDeriveWithKDF()
   776 ms  0xffb seckey:0x7faa3dd71020
   776 ms     | 0xffb EC_ValidatePublicKey()
   781 ms     | 0xffb ret:0x0
   785 ms  0xffb ret:0x7faa482aea80
   785 ms  0xffb PK11_DeriveWithFlags()
   785 ms  0xffb basekey:0x7faa482aea80
   785 ms     | 0xffb PK11_DeriveWithTemplate()
   785 ms  0xffb ret:0x7faa3ddfe880
   785 ms  0xffb PK11_Derive()
   785 ms  0xffb basekey:0x7faa3ddfe880
   785 ms     | 0xffb PK11_DeriveWithTemplate()
   785 ms  0xffb ret:0x7faa3ddfe980
   785 ms  0xffb SECKEY_DestroyPrivateKey()
   785 ms  0xffb privk:0x7faa3dd71020::7faa3dd71020  40 f7 10 2d                                      @..-
   785 ms  0xffb privk:0x7faa3dd71020::7faa3dd71020  e5 e5 e5 e5                                      ....
   785 ms  0xffb PK11_Encrypt()
   785 ms  0xffb symkey:0x7faa3ddfeb00
   786 ms  0xffb PR_Connect()
   786 ms  0xffb fd:0x7faa43591ee0
           /* TID 0x105e */
   794 ms  0x105e PR_Close()
   794 ms  0x105e fd:0x7faa43591e80
           /* TID 0x1003 */
   840 ms  0x1003 PR_Close()
   840 ms  0x1003 fd:0x7faa43591a00
           /* TID 0x1058 */
   840 ms  0x1058 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   841 ms  0x1058 ret:0x0
           /* TID 0xffb */
   841 ms  0xffb SSL_AuthCertificateComplete()
   841 ms  0xffb fd:0x7faa43591940
   841 ms  0xffb err:0x0
   841 ms  0xffb PK11_Encrypt()
   841 ms  0xffb symkey:0x7faa3ddfeb00
  1006 ms  0xffb SECKEY_DestroyPrivateKey()
  1006 ms  0xffb privk:0x7faa3dd68020::7faa3dd68020  00 f1 10 2d                                      ...-
  1006 ms  0xffb privk:0x7faa3dd68020::7faa3dd68020  e5 e5 e5 e5                                      ....
  1006 ms  0xffb SECKEY_DestroyPrivateKey()
  1006 ms  0xffb privk:0x7faa3dd66020::7faa3dd66020  c0 fe d9 3d                                      ...=
  1006 ms  0xffb privk:0x7faa3dd66020::7faa3dd66020  e5 e5 e5 e5                                      ....
  1232 ms  0xffb SSL_ImportFD()
  1232 ms  0xffb ret:0x7faa2d12a220
  1232 ms  0xffb SSL_AuthCertificateHook()
  1232 ms  0xffb fd:0x7faa2d12a220
  1232 ms  0xffb ret:0x0
  1232 ms  0xffb PR_Connect()
  1232 ms  0xffb fd:0x7faa2d12a220
  1258 ms  0xffb SECKEY_CreateECPrivateKey()
  1258 ms  0xffb cx:0x7faa2d103728
  1260 ms     | 0xffb EC_ValidatePublicKey()
  1260 ms     | 0xffb ret:0x0
  1260 ms  0xffb ret:0x7faa3dd67020::7faa3dd67020  50 f6 10 2d                                      P..-
  1260 ms  0xffb SECKEY_CreateECPrivateKey()
  1260 ms  0xffb cx:0x7faa2d103728
  1262 ms     | 0xffb EC_ValidatePublicKey()
  1267 ms     | 0xffb ret:0x0
  1267 ms  0xffb ret:0x7faa3dd6d020::7faa3dd6d020  30 f8 10 2d                                      0..-
           /* TID 0x1058 */
  1319 ms  0x1058 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1319 ms  0x1058 ret:0x0
           /* TID 0xffb */
  1320 ms  SECKEY_ECParamsToKeySize()
  1320 ms  0xffb ret:0x100
  1320 ms  0xffb SECKEY_CreateECPrivateKey()
  1320 ms  0xffb cx:0x7faa2d103728
  1321 ms     | 0xffb EC_ValidatePublicKey()
  1325 ms     | 0xffb ret:0x0
  1325 ms  0xffb ret:0x7faa3dd70820::7faa3dd70820  b0 fa 10 2d                                      ...-
  1325 ms  0xffb PK11_PubDeriveWithKDF()
  1325 ms  0xffb seckey:0x7faa3dd70820
  1325 ms     | 0xffb EC_ValidatePublicKey()
  1329 ms     | 0xffb ret:0x0
  1332 ms  0xffb ret:0x7faa482aea80
  1332 ms  0xffb PK11_DeriveWithFlags()
  1332 ms  0xffb basekey:0x7faa482aea80
  1333 ms     | 0xffb PK11_DeriveWithTemplate()
  1333 ms  0xffb ret:0x7faa3dd92e00
  1333 ms  0xffb PK11_Derive()
  1333 ms  0xffb basekey:0x7faa3dd92e00
  1333 ms     | 0xffb PK11_DeriveWithTemplate()
  1333 ms  0xffb ret:0x7faa3ddff380
  1333 ms  0xffb SECKEY_DestroyPrivateKey()
  1333 ms  0xffb privk:0x7faa3dd70820::7faa3dd70820  b0 fa 10 2d                                      ...-
  1333 ms  0xffb privk:0x7faa3dd70820::7faa3dd70820  e5 e5 e5 e5                                      ....
  1333 ms  0xffb PK11_Encrypt()
  1333 ms  0xffb symkey:0x7faa3ddff880
  1334 ms  0xffb SSL_AuthCertificateComplete()
  1334 ms  0xffb fd:0x7faa2d12a220
  1334 ms  0xffb err:0x0
  1334 ms  0xffb PK11_Encrypt()
  1334 ms  0xffb symkey:0x7faa3ddff880
  1385 ms  0xffb SECKEY_DestroyPrivateKey()
  1385 ms  0xffb privk:0x7faa3dd6d020::7faa3dd6d020  30 f8 10 2d                                      0..-
  1385 ms  0xffb privk:0x7faa3dd6d020::7faa3dd6d020  e5 e5 e5 e5                                      ....
  1385 ms  0xffb SECKEY_DestroyPrivateKey()
  1385 ms  0xffb privk:0x7faa3dd67020::7faa3dd67020  50 f6 10 2d                                      P..-
  1386 ms  0xffb privk:0x7faa3dd67020::7faa3dd67020  e5 e5 e5 e5                                      ....
  1389 ms  0xffb PK11_Encrypt()
  1389 ms  0xffb symkey:0x7faa3ddff880
  1423 ms  0xffb PK11_Encrypt()
  1423 ms  0xffb symkey:0x7faa3ddff880
  1462 ms  0xffb PK11_Encrypt()
  1462 ms  0xffb symkey:0x7faa3ddff880
  1491 ms  0xffb PK11_Encrypt()
  1491 ms  0xffb symkey:0x7faa3ddff880
  1606 ms  0xffb PK11_Encrypt()
  1606 ms  0xffb symkey:0x7faa3ddff880
  1638 ms  0xffb PK11_Encrypt()
  1638 ms  0xffb symkey:0x7faa3ddff880
  1670 ms  0xffb PK11_Encrypt()
  1670 ms  0xffb symkey:0x7faa3ddff880
           /* TID 0x1051 */
  1700 ms  0x1051 PR_Close()
  1700 ms  0x1051 fd:0x7faa2d12a400
  1700 ms  0x1051 PR_Close()
  1700 ms  0x1051 fd:0x7faa2d12a730
  1700 ms  0x1051 PR_Close()
  1700 ms  0x1051 fd:0x7faa2d12a400
  1700 ms  0x1051 PR_Close()
  1700 ms  0x1051 fd:0x7faa2d12a730
  1700 ms  0x1051 PR_Close()
  1700 ms  0x1051 fd:0x7faa2d12a400
  1700 ms  0x1051 PR_Close()
  1700 ms  0x1051 fd:0x7faa2d12a730
  1701 ms  0x1051 PR_Close()
  1701 ms  0x1051 fd:0x7faa2d12a400
  1701 ms  0x1051 PR_Close()
  1701 ms  0x1051 fd:0x7faa2d12a730
  1701 ms  0x1051 PR_Close()
  1701 ms  0x1051 fd:0x7faa2d12a400
  1701 ms  0x1051 PR_Close()
  1701 ms  0x1051 fd:0x7faa2d12a730
  1701 ms  0x1051 PR_Close()
  1701 ms  0x1051 fd:0x7faa2d12a400
  1701 ms  0x1051 PR_Close()
  1701 ms  0x1051 fd:0x7faa2d12a730
  1701 ms  0x1051 PR_Close()
  1701 ms  0x1051 fd:0x7faa2d12a400
  1701 ms  0x1051 PR_Close()
  1701 ms  0x1051 fd:0x7faa2d12a730
  1701 ms  0x1051 PR_Close()
  1701 ms  0x1051 fd:0x7faa2d12a400
  1701 ms  0x1051 PR_Close()
  1701 ms  0x1051 fd:0x7faa2d12a730
  1701 ms  0x1051 PR_Close()
  1701 ms  0x1051 fd:0x7faa2d12a400
  1701 ms  0x1051 PR_Close()
  1701 ms  0x1051 fd:0x7faa2d12a730
  1701 ms  0x1051 PR_Close()
  1701 ms  0x1051 fd:0x7faa2d12a400
  1701 ms  0x1051 PR_Close()
  1701 ms  0x1051 fd:0x7faa2d12a730
  1702 ms  0x1051 PR_Close()
  1702 ms  0x1051 fd:0x7faa2d12a400
  1702 ms  0x1051 PR_Close()
  1702 ms  0x1051 fd:0x7faa2d12a730
  1702 ms  0x1051 PR_Close()
  1702 ms  0x1051 fd:0x7faa2d12a400
  1702 ms  0x1051 PR_Close()
  1702 ms  0x1051 fd:0x7faa2d12a730
  1702 ms  0x1051 PR_Close()
  1702 ms  0x1051 fd:0x7faa2d12a400
  1702 ms  0x1051 PR_Close()
  1702 ms  0x1051 fd:0x7faa2d12a730
  1702 ms  0x1051 PR_Close()
  1702 ms  0x1051 fd:0x7faa2d12a400
  1702 ms  0x1051 PR_Close()
  1702 ms  0x1051 fd:0x7faa2d12a730
  1705 ms  0x1051 PR_Close()
  1705 ms  0x1051 fd:0x7faa2d12a400
  1705 ms  0x1051 PR_Close()
  1705 ms  0x1051 fd:0x7faa2d12a400
  1708 ms  0x1051 PR_Close()
  1708 ms  0x1051 fd:0x7faa2d12a400
  1708 ms  0x1051 PR_Close()
  1708 ms  0x1051 fd:0x7faa2d12a430
  1710 ms  0x1051 PR_Close()
  1710 ms  0x1051 fd:0x7faa2d12a430
  1710 ms  0x1051 PR_Close()
  1710 ms  0x1051 fd:0x7faa2d12a430
  1712 ms  0x1051 PR_Close()
  1712 ms  0x1051 fd:0x7faa2d12a430
  1713 ms  0x1051 PR_Close()
  1713 ms  0x1051 fd:0x7faa2d12a430
  1760 ms  0x1051 PR_Close()
  1760 ms  0x1051 fd:0x7faa2d12a430
  1761 ms  0x1051 PR_Close()
  1761 ms  0x1051 fd:0x7faa2d12a430
  1769 ms  0x1051 PR_Close()
  1769 ms  0x1051 fd:0x7faa2d12a430
  1769 ms  0x1051 PR_Close()
  1769 ms  0x1051 fd:0x7faa2d12a430
  1776 ms  0x1051 PR_Close()
  1776 ms  0x1051 fd:0x7faa2d12a430
  1776 ms  0x1051 PR_Close()
  1776 ms  0x1051 fd:0x7faa2d12a430
  1778 ms  0x1051 PR_Close()
  1778 ms  0x1051 fd:0x7faa2d12a430
  1778 ms  0x1051 PR_Close()
  1778 ms  0x1051 fd:0x7faa2d12a430
           /* TID 0x104e */
  1778 ms  0x104e PR_Close()
  1778 ms  0x104e fd:0x7faa2d12a430
  1779 ms  0x104e PR_Close()
  1779 ms  0x104e fd:0x7faa2d12a430
  1779 ms  0x104e PR_Close()
  1779 ms  0x104e fd:0x7faa2d12a430
  1779 ms  0x104e PR_Close()
  1779 ms  0x104e fd:0x7faa2d12a430
  1779 ms  0x104e PR_Close()
  1779 ms  0x104e fd:0x7faa2d12a430
  1779 ms  0x104e PR_Close()
  1779 ms  0x104e fd:0x7faa2d12a430
  1779 ms  0x104e PR_Close()
  1779 ms  0x104e fd:0x7faa2d12a430
  1779 ms  0x104e PR_Close()
  1779 ms  0x104e fd:0x7faa2d12a430
  1779 ms  0x104e PR_Close()
  1779 ms  0x104e fd:0x7faa2d12a430
  1779 ms  0x104e PR_Close()
  1779 ms  0x104e fd:0x7faa2d12a430
  1779 ms  0x104e PR_Close()
  1779 ms  0x104e fd:0x7faa2d12a430
  1779 ms  0x104e PR_Close()
  1779 ms  0x104e fd:0x7faa2d12a430
  1779 ms  0x104e PR_Close()
  1779 ms  0x104e fd:0x7faa2d12a430
  1779 ms  0x104e PR_Close()
  1779 ms  0x104e fd:0x7faa2d12a430
  1779 ms  0x104e PR_Close()
  1779 ms  0x104e fd:0x7faa2d12a430
           /* TID 0x105e */
  2281 ms  0x105e PR_Close()
  2281 ms  0x105e fd:0x7faa2d12a1f0
  2284 ms  0x105e PR_Close()
  2284 ms  0x105e fd:0x7faa2d12a1f0
  2635 ms  0x105e PR_Close()
  2635 ms  0x105e fd:0x7faa2d12a250
           /* TID 0x1003 */
  4193 ms  0x1003 PR_Close()
  4193 ms  0x1003 fd:0x7faa2d12a250
  4193 ms  0x1003 PR_Close()
  4193 ms  0x1003 fd:0x7faa2d12a730
           /* TID 0xffb */
  6452 ms  0xffb SSL_ImportFD()
  6452 ms  0xffb ret:0x7faa3dd840d0
  6452 ms  0xffb SSL_AuthCertificateHook()
  6452 ms  0xffb fd:0x7faa3dd840d0
  6452 ms  0xffb ret:0x0
  6453 ms  0xffb PR_Connect()
  6453 ms  0xffb fd:0x7faa3dd840d0
  6506 ms  0xffb SECKEY_CreateECPrivateKey()
  6506 ms  0xffb cx:0x7faa2d103da8
  6507 ms     | 0xffb EC_ValidatePublicKey()
  6509 ms     | 0xffb ret:0x0
  6509 ms  0xffb ret:0x7faa2d14c820::7faa2d14c820  70 a9 1e 2d                                      p..-
  6509 ms  0xffb SECKEY_CreateECPrivateKey()
  6509 ms  0xffb cx:0x7faa2d103da8
  6511 ms     | 0xffb EC_ValidatePublicKey()
  6513 ms     | 0xffb ret:0x0
  6513 ms  0xffb ret:0x7faa2d14e820::7faa2d14e820  f0 ab 1e 2d                                      ...-
  6571 ms  SECKEY_ECParamsToKeySize()
  6571 ms  0xffb ret:0x100
  6571 ms  0xffb SECKEY_CreateECPrivateKey()
  6571 ms  0xffb cx:0x7faa2d103da8
  6572 ms     | 0xffb EC_ValidatePublicKey()
  6575 ms     | 0xffb ret:0x0
  6575 ms  0xffb ret:0x7faa2d156820::7faa2d156820  20 84 d4 3d                                       ..=
  6575 ms  0xffb PK11_PubDeriveWithKDF()
  6575 ms  0xffb seckey:0x7faa2d156820
  6575 ms     | 0xffb EC_ValidatePublicKey()
  6577 ms     | 0xffb ret:0x0
  6579 ms  0xffb ret:0x7faa482aea80
  6579 ms  0xffb PK11_DeriveWithFlags()
  6579 ms  0xffb basekey:0x7faa482aea80
  6579 ms     | 0xffb PK11_DeriveWithTemplate()
  6579 ms  0xffb ret:0x7faa412fa300
  6579 ms  0xffb PK11_Derive()
  6579 ms  0xffb basekey:0x7faa412fa300
  6579 ms     | 0xffb PK11_DeriveWithTemplate()
  6579 ms  0xffb ret:0x7faa42ccd400
  6579 ms  0xffb SECKEY_DestroyPrivateKey()
  6579 ms  0xffb privk:0x7faa2d156820::7faa2d156820  20 84 d4 3d                                       ..=
  6580 ms  0xffb privk:0x7faa2d156820::7faa2d156820  e5 e5 e5 e5                                      ....
  6580 ms  0xffb PK11_Encrypt()
  6580 ms  0xffb symkey:0x7faa43575c00
           /* TID 0x1058 */
  6607 ms  0x1058 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6607 ms  0x1058 ret:0x0
           /* TID 0x1003 */
  6608 ms  0x1003 PR_Close()
  6608 ms  0x1003 fd:0x7faa3dd845e0
           /* TID 0xffb */
  6608 ms  0xffb SSL_AuthCertificateComplete()
  6608 ms  0xffb fd:0x7faa3dd840d0
  6608 ms  0xffb err:0x0
  6608 ms  0xffb PK11_Encrypt()
  6608 ms  0xffb symkey:0x7faa43575c00
  6635 ms  0xffb SECKEY_DestroyPrivateKey()
  6635 ms  0xffb privk:0x7faa2d14e820::7faa2d14e820  f0 ab 1e 2d                                      ...-
  6635 ms  0xffb privk:0x7faa2d14e820::7faa2d14e820  e5 e5 e5 e5                                      ....
  6635 ms  0xffb SECKEY_DestroyPrivateKey()
  6635 ms  0xffb privk:0x7faa2d14c820::7faa2d14c820  70 a9 1e 2d                                      p..-
  6636 ms  0xffb privk:0x7faa2d14c820::7faa2d14c820  e5 e5 e5 e5                                      ....
           /* TID 0x1012 */
  7200 ms  0x1012 PR_Close()
  7200 ms  0x1012 fd:0x7faa3dd84940
           /* TID 0xffb */
  7282 ms  0xffb SSL_ImportFD()
  7282 ms  0xffb ret:0x7faa412a8910
  7282 ms  0xffb SSL_AuthCertificateHook()
  7282 ms  0xffb fd:0x7faa412a8910
  7282 ms  0xffb ret:0x0
  7282 ms  0xffb PR_Connect()
  7282 ms  0xffb fd:0x7faa412a8910
  7333 ms  0xffb SECKEY_CreateECPrivateKey()
  7333 ms  0xffb cx:0x7faa2d104428
  7333 ms     | 0xffb EC_ValidatePublicKey()
  7333 ms     | 0xffb ret:0x0
  7333 ms  0xffb ret:0x7faa3dd5b020::7faa3dd5b020  40 17 fb 3f                                      @..?
  7334 ms  0xffb SECKEY_CreateECPrivateKey()
  7334 ms  0xffb cx:0x7faa2d104428
  7334 ms     | 0xffb EC_ValidatePublicKey()
  7336 ms     | 0xffb ret:0x0
  7336 ms  0xffb ret:0x7faa3dd63020::7faa3dd63020  f0 41 c5 42                                      .A.B
  7391 ms  0xffb SSL_ImportFD()
  7391 ms  0xffb ret:0x7faa3f440df0
  7391 ms  0xffb SSL_AuthCertificateHook()
  7391 ms  0xffb fd:0x7faa3f440df0
  7391 ms  0xffb ret:0x0
  7391 ms  0xffb PR_Connect()
  7391 ms  0xffb fd:0x7faa3f440df0
  7395 ms  SECKEY_ECParamsToKeySize()
  7395 ms  0xffb ret:0x100
  7395 ms  0xffb SECKEY_CreateECPrivateKey()
  7395 ms  0xffb cx:0x7faa2d104428
  7397 ms     | 0xffb EC_ValidatePublicKey()
  7402 ms     | 0xffb ret:0x0
  7404 ms  0xffb ret:0x7faa3dd74820::7faa3dd74820  70 74 70 43                                      ptpC
  7404 ms  0xffb PK11_PubDeriveWithKDF()
  7404 ms  0xffb seckey:0x7faa3dd74820
  7404 ms     | 0xffb EC_ValidatePublicKey()
  7408 ms     | 0xffb ret:0x0
  7412 ms  0xffb ret:0x7faa482aea80
  7413 ms  0xffb PK11_DeriveWithFlags()
  7413 ms  0xffb basekey:0x7faa482aea80
  7413 ms     | 0xffb PK11_DeriveWithTemplate()
  7413 ms  0xffb ret:0x7faa4128e980
  7413 ms  0xffb PK11_Derive()
  7413 ms  0xffb basekey:0x7faa4128e980
  7413 ms     | 0xffb PK11_DeriveWithTemplate()
  7413 ms  0xffb ret:0x7faa4128ea00
  7413 ms  0xffb SECKEY_DestroyPrivateKey()
  7413 ms  0xffb privk:0x7faa3dd74820::7faa3dd74820  70 74 70 43                                      ptpC
  7413 ms  0xffb privk:0x7faa3dd74820::7faa3dd74820  e5 e5 e5 e5                                      ....
  7413 ms  0xffb PK11_Encrypt()
  7413 ms  0xffb symkey:0x7faa4128eb80
  7414 ms  0xffb SSL_AuthCertificateComplete()
  7414 ms  0xffb fd:0x7faa412a8910
  7414 ms  0xffb err:0x0
  7426 ms  0xffb PK11_Encrypt()
  7426 ms  0xffb symkey:0x7faa4128eb80
  7449 ms  0xffb SECKEY_CreateECPrivateKey()
  7449 ms  0xffb cx:0x7faa2d1045c8
  7451 ms     | 0xffb EC_ValidatePublicKey()
  7451 ms     | 0xffb ret:0x0
  7451 ms  0xffb ret:0x7faa3ffea020::7faa3ffea020  40 f7 01 44                                      @..D
  7451 ms  0xffb SECKEY_CreateECPrivateKey()
  7451 ms  0xffb cx:0x7faa2d1045c8
  7452 ms     | 0xffb EC_ValidatePublicKey()
  7456 ms     | 0xffb ret:0x0
  7456 ms  0xffb ret:0x7faa42caa820::7faa42caa820  f0 71 0e 44                                      .q.D
  7465 ms  0xffb SECKEY_DestroyPrivateKey()
  7465 ms  0xffb privk:0x7faa3dd63020::7faa3dd63020  f0 41 c5 42                                      .A.B
  7465 ms  0xffb privk:0x7faa3dd63020::7faa3dd63020  e5 e5 e5 e5                                      ....
  7466 ms  0xffb SECKEY_DestroyPrivateKey()
  7466 ms  0xffb privk:0x7faa3dd5b020::7faa3dd5b020  40 17 fb 3f                                      @..?
  7466 ms  0xffb privk:0x7faa3dd5b020::7faa3dd5b020  e5 e5 e5 e5                                      ....
  7530 ms  SECKEY_ECParamsToKeySize()
  7530 ms  0xffb ret:0x100
  7530 ms  0xffb SECKEY_CreateECPrivateKey()
  7530 ms  0xffb cx:0x7faa2d1045c8
  7532 ms     | 0xffb EC_ValidatePublicKey()
  7536 ms     | 0xffb ret:0x0
  7536 ms  0xffb ret:0x7faa3dd5f020::7faa3dd5f020  80 fd 24 41                                      ..$A
  7536 ms  0xffb PK11_PubDeriveWithKDF()
  7536 ms  0xffb seckey:0x7faa3dd5f020
  7536 ms     | 0xffb EC_ValidatePublicKey()
  7541 ms     | 0xffb ret:0x0
  7545 ms  0xffb ret:0x7faa482aea80
  7545 ms  0xffb PK11_DeriveWithFlags()
  7545 ms  0xffb basekey:0x7faa482aea80
  7545 ms     | 0xffb PK11_DeriveWithTemplate()
  7545 ms  0xffb ret:0x7faa3f43c900
  7545 ms  0xffb PK11_Derive()
  7545 ms  0xffb basekey:0x7faa3f43c900
  7545 ms     | 0xffb PK11_DeriveWithTemplate()
  7546 ms  0xffb ret:0x7faa412fa480
  7546 ms  0xffb SECKEY_DestroyPrivateKey()
  7546 ms  0xffb privk:0x7faa3dd5f020::7faa3dd5f020  80 fd 24 41                                      ..$A
  7546 ms  0xffb privk:0x7faa3dd5f020::7faa3dd5f020  e5 e5 e5 e5                                      ....
  7546 ms  0xffb PK11_Encrypt()
  7546 ms  0xffb symkey:0x7faa412fab80
  7548 ms  0xffb SSL_AuthCertificateComplete()
  7548 ms  0xffb fd:0x7faa3f440df0
  7548 ms  0xffb err:0x0
  7549 ms  0xffb PK11_Encrypt()
  7549 ms  0xffb symkey:0x7faa412fab80
  7567 ms  0xffb SSL_ImportFD()
  7567 ms  0xffb ret:0x7faa440483d0
  7567 ms  0xffb SSL_AuthCertificateHook()
  7567 ms  0xffb fd:0x7faa440483d0
  7567 ms  0xffb ret:0x0
  7567 ms  0xffb PR_Connect()
  7567 ms  0xffb fd:0x7faa440483d0
  7606 ms  0xffb SECKEY_DestroyPrivateKey()
  7606 ms  0xffb privk:0x7faa42caa820::7faa42caa820  f0 71 0e 44                                      .q.D
  7606 ms  0xffb privk:0x7faa42caa820::7faa42caa820  e5 e5 e5 e5                                      ....
  7606 ms  0xffb SECKEY_DestroyPrivateKey()
  7606 ms  0xffb privk:0x7faa3ffea020::7faa3ffea020  40 f7 01 44                                      @..D
  7606 ms  0xffb privk:0x7faa3ffea020::7faa3ffea020  e5 e5 e5 e5                                      ....
  7608 ms  0xffb SSL_ImportFD()
  7608 ms  0xffb ret:0x7faa3ffc8a90
  7608 ms  0xffb SSL_AuthCertificateHook()
  7608 ms  0xffb fd:0x7faa3ffc8a90
  7608 ms  0xffb ret:0x0
  7609 ms  0xffb PR_Connect()
  7609 ms  0xffb fd:0x7faa3ffc8a90
  7610 ms  0xffb SSL_ImportFD()
  7610 ms  0xffb ret:0x7faa3deeaa60
  7610 ms  0xffb SSL_AuthCertificateHook()
  7610 ms  0xffb fd:0x7faa3deeaa60
  7610 ms  0xffb ret:0x0
  7611 ms  0xffb PR_Connect()
  7611 ms  0xffb fd:0x7faa3deeaa60
  7612 ms  0xffb SSL_ImportFD()
  7612 ms  0xffb ret:0x7faa3ffc8a30
  7612 ms  0xffb SSL_AuthCertificateHook()
  7612 ms  0xffb fd:0x7faa3ffc8a30
  7612 ms  0xffb ret:0x0
  7612 ms  0xffb PR_Connect()
  7612 ms  0xffb fd:0x7faa3ffc8a30
  7622 ms  0xffb SECKEY_CreateECPrivateKey()
  7622 ms  0xffb cx:0x7faa2d104aa8
  7625 ms     | 0xffb EC_ValidatePublicKey()
  7625 ms     | 0xffb ret:0x0
  7625 ms  0xffb ret:0x7faa3ffe7820::7faa3ffe7820  40 f7 01 44                                      @..D
  7625 ms  0xffb SECKEY_CreateECPrivateKey()
  7625 ms  0xffb cx:0x7faa2d104aa8
  7629 ms     | 0xffb EC_ValidatePublicKey()
  7632 ms     | 0xffb ret:0x0
  7632 ms  0xffb ret:0x7faa3ffea020::7faa3ffea020  30 bd 20 44                                      0. D
           /* TID 0x1003 */
  7638 ms  0x1003 PR_Close()
  7638 ms  0x1003 fd:0x7faa3ffc8880
  7666 ms  0x1003 PR_Close()
  7666 ms  0x1003 fd:0x7faa3ffc8880
           /* TID 0xffb */
  7671 ms  0xffb SECKEY_CreateECPrivateKey()
  7671 ms  0xffb cx:0x7faa2d104de8
  7672 ms     | 0xffb EC_ValidatePublicKey()
  7672 ms     | 0xffb ret:0x0
  7672 ms  0xffb ret:0x7faa42cac820::7faa42cac820  60 2a 0e 44                                      `*.D
  7672 ms  0xffb SECKEY_CreateECPrivateKey()
  7672 ms  0xffb cx:0x7faa2d104de8
  7676 ms     | 0xffb EC_ValidatePublicKey()
  7679 ms     | 0xffb ret:0x0
  7679 ms  0xffb ret:0x7faa44308020::7faa44308020  70 19 2f 44                                      p./D
  7680 ms  0xffb SECKEY_CreateECPrivateKey()
  7680 ms  0xffb cx:0x7faa2d104c48
  7680 ms     | 0xffb EC_ValidatePublicKey()
  7680 ms     | 0xffb ret:0x0
  7680 ms  0xffb ret:0x7faa4430f020::7faa4430f020  f0 1b 2f 44                                      ../D
  7680 ms  0xffb SECKEY_CreateECPrivateKey()
  7680 ms  0xffb cx:0x7faa2d104c48
  7681 ms     | 0xffb EC_ValidatePublicKey()
  7683 ms     | 0xffb ret:0x0
  7683 ms  0xffb ret:0x7faa443b0820::7faa443b0820  60 1f 2f 44                                      `./D
  7685 ms  SECKEY_ECParamsToKeySize()
  7685 ms  0xffb ret:0x100
  7685 ms  0xffb SECKEY_CreateECPrivateKey()
  7685 ms  0xffb cx:0x7faa2d104aa8
  7685 ms     | 0xffb EC_ValidatePublicKey()
  7687 ms     | 0xffb ret:0x0
  7687 ms  0xffb ret:0x7faa443cb020::7faa443cb020  80 33 52 44                                      .3RD
  7687 ms  0xffb PK11_PubDeriveWithKDF()
  7687 ms  0xffb seckey:0x7faa443cb020
  7687 ms     | 0xffb EC_ValidatePublicKey()
  7688 ms     | 0xffb ret:0x0
  7690 ms  0xffb ret:0x7faa482aea80
  7690 ms  0xffb PK11_DeriveWithFlags()
  7690 ms  0xffb basekey:0x7faa482aea80
  7690 ms     | 0xffb PK11_DeriveWithTemplate()
  7690 ms  0xffb ret:0x7faa43f66800
  7690 ms  0xffb PK11_Derive()
  7690 ms  0xffb basekey:0x7faa43f66800
  7690 ms     | 0xffb PK11_DeriveWithTemplate()
  7690 ms  0xffb ret:0x7faa43f66880
  7690 ms  0xffb SECKEY_DestroyPrivateKey()
  7690 ms  0xffb privk:0x7faa443cb020::7faa443cb020  80 33 52 44                                      .3RD
  7690 ms  0xffb privk:0x7faa443cb020::7faa443cb020  e5 e5 e5 e5                                      ....
  7690 ms  0xffb PK11_Encrypt()
  7690 ms  0xffb symkey:0x7faa43f66a00
  7690 ms  0xffb SECKEY_CreateECPrivateKey()
  7690 ms  0xffb cx:0x7faa2d104f88
  7691 ms     | 0xffb EC_ValidatePublicKey()
  7691 ms     | 0xffb ret:0x0
  7691 ms  0xffb ret:0x7faa443cb020::7faa443cb020  a0 4b 3e 44                                      .K>D
  7691 ms  0xffb SECKEY_CreateECPrivateKey()
  7691 ms  0xffb cx:0x7faa2d104f88
  7692 ms     | 0xffb EC_ValidatePublicKey()
  7693 ms     | 0xffb ret:0x0
  7693 ms  0xffb ret:0x7faa446a6020::7faa446a6020  50 9b 52 44                                      P.RD
  7693 ms  0xffb PR_Connect()
  7693 ms  0xffb fd:0x7faa440e1b50
  7742 ms  SECKEY_ECParamsToKeySize()
  7742 ms  0xffb ret:0x100
  7742 ms  0xffb SECKEY_CreateECPrivateKey()
  7742 ms  0xffb cx:0x7faa2d104de8
  7743 ms     | 0xffb EC_ValidatePublicKey()
  7744 ms     | 0xffb ret:0x0
  7744 ms  0xffb ret:0x7faa446b7820::7faa446b7820  40 f2 54 44                                      @.TD
  7744 ms  0xffb PK11_PubDeriveWithKDF()
  7744 ms  0xffb seckey:0x7faa446b7820
  7744 ms     | 0xffb EC_ValidatePublicKey()
  7746 ms     | 0xffb ret:0x0
  7748 ms  0xffb ret:0x7faa482aea80
  7748 ms  0xffb PK11_DeriveWithFlags()
  7748 ms  0xffb basekey:0x7faa482aea80
  7748 ms     | 0xffb PK11_DeriveWithTemplate()
  7748 ms  0xffb ret:0x7faa43f66e00
  7748 ms  0xffb PK11_Derive()
  7748 ms  0xffb basekey:0x7faa43f66e00
  7748 ms     | 0xffb PK11_DeriveWithTemplate()
  7748 ms  0xffb ret:0x7faa43f66e80
  7748 ms  0xffb SECKEY_DestroyPrivateKey()
  7748 ms  0xffb privk:0x7faa446b7820::7faa446b7820  40 f2 54 44                                      @.TD
  7748 ms  0xffb privk:0x7faa446b7820::7faa446b7820  e5 e5 e5 e5                                      ....
  7749 ms  0xffb PK11_Encrypt()
  7749 ms  0xffb symkey:0x7faa43fd1300
           /* TID 0x1003 */
  7750 ms  0x1003 PR_Close()
  7750 ms  0x1003 fd:0x7faa442130d0
           /* TID 0x1058 */
  7750 ms  0x1058 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7750 ms  0x1058 ret:0x0
           /* TID 0xffb */
  7752 ms  0xffb PR_Connect()
  7752 ms  0xffb fd:0x7faa44213190
  7758 ms  SECKEY_ECParamsToKeySize()
  7758 ms  0xffb ret:0x100
  7758 ms  0xffb SECKEY_CreateECPrivateKey()
  7758 ms  0xffb cx:0x7faa2d104c48
  7759 ms     | 0xffb EC_ValidatePublicKey()
  7760 ms     | 0xffb ret:0x0
  7760 ms  0xffb ret:0x7faa446bc820::7faa446bc820  60 45 58 44                                      `EXD
  7760 ms  0xffb PK11_PubDeriveWithKDF()
  7760 ms  0xffb seckey:0x7faa446bc820
  7760 ms     | 0xffb EC_ValidatePublicKey()
  7762 ms     | 0xffb ret:0x0
  7764 ms  0xffb ret:0x7faa482aea80
  7764 ms  0xffb PK11_DeriveWithFlags()
  7764 ms  0xffb basekey:0x7faa482aea80
  7764 ms     | 0xffb PK11_DeriveWithTemplate()
  7765 ms  0xffb ret:0x7faa4406d980
  7765 ms  0xffb PK11_Derive()
  7765 ms  0xffb basekey:0x7faa4406d980
  7765 ms     | 0xffb PK11_DeriveWithTemplate()
  7765 ms  0xffb ret:0x7faa4406da00
  7765 ms  0xffb SECKEY_DestroyPrivateKey()
  7765 ms  0xffb privk:0x7faa446bc820::7faa446bc820  60 45 58 44                                      `EXD
  7765 ms  0xffb privk:0x7faa446bc820::7faa446bc820  e5 e5 e5 e5                                      ....
  7765 ms  0xffb PK11_Encrypt()
  7765 ms  0xffb symkey:0x7faa4406de00
  7765 ms  0xffb SSL_AuthCertificateComplete()
  7765 ms  0xffb fd:0x7faa440483d0
  7765 ms  0xffb err:0x0
  7765 ms     | 0xffb SECKEY_DestroyPrivateKey()
  7765 ms     | 0xffb privk:0x7faa3ffea020::7faa3ffea020  30 bd 20 44                                      0. D
  7765 ms     | 0xffb privk:0x7faa3ffea020::7faa3ffea020  e5 e5 e5 e5                                      ....
  7765 ms     | 0xffb SECKEY_DestroyPrivateKey()
  7765 ms     | 0xffb privk:0x7faa3ffe7820::7faa3ffe7820  40 f7 01 44                                      @..D
  7765 ms     | 0xffb privk:0x7faa3ffe7820::7faa3ffe7820  e5 e5 e5 e5                                      ....
  7766 ms  0xffb PK11_Encrypt()
  7766 ms  0xffb symkey:0x7faa43f66a00
  7767 ms  SECKEY_ECParamsToKeySize()
  7767 ms  0xffb ret:0x100
  7767 ms  0xffb SECKEY_CreateECPrivateKey()
  7767 ms  0xffb cx:0x7faa2d104f88
  7768 ms     | 0xffb EC_ValidatePublicKey()
  7769 ms     | 0xffb ret:0x0
  7769 ms  0xffb ret:0x7faa446bb820::7faa446bb820  80 48 58 44                                      .HXD
  7769 ms  0xffb PK11_PubDeriveWithKDF()
  7769 ms  0xffb seckey:0x7faa446bb820
  7769 ms     | 0xffb EC_ValidatePublicKey()
  7771 ms     | 0xffb ret:0x0
  7773 ms  0xffb ret:0x7faa482aea80
  7773 ms  0xffb PK11_DeriveWithFlags()
  7773 ms  0xffb basekey:0x7faa482aea80
  7773 ms     | 0xffb PK11_DeriveWithTemplate()
  7773 ms  0xffb ret:0x7faa440dcc80
  7773 ms  0xffb PK11_Derive()
  7773 ms  0xffb basekey:0x7faa440dcc80
  7773 ms     | 0xffb PK11_DeriveWithTemplate()
  7773 ms  0xffb ret:0x7faa440dd080
  7773 ms  0xffb SECKEY_DestroyPrivateKey()
  7773 ms  0xffb privk:0x7faa446bb820::7faa446bb820  80 48 58 44                                      .HXD
  7773 ms  0xffb privk:0x7faa446bb820::7faa446bb820  e5 e5 e5 e5                                      ....
  7773 ms  0xffb PK11_Encrypt()
  7773 ms  0xffb symkey:0x7faa440dd500
  7774 ms  0xffb PR_Connect()
  7774 ms  0xffb fd:0x7faa44219790
           /* TID 0x1093 */
  7778 ms  0x1093 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7778 ms  0x1093 ret:0x0
           /* TID 0x1003 */
  7779 ms  0x1003 PR_Close()
  7779 ms  0x1003 fd:0x7faa44062970
           /* TID 0xffb */
  7779 ms  0xffb SSL_AuthCertificateComplete()
  7779 ms  0xffb fd:0x7faa3deeaa60
  7779 ms  0xffb err:0x0
  7779 ms  0xffb PK11_Encrypt()
  7779 ms  0xffb symkey:0x7faa43fd1300
  7808 ms  0xffb SECKEY_DestroyPrivateKey()
  7808 ms  0xffb privk:0x7faa44308020::7faa44308020  70 19 2f 44                                      p./D
  7808 ms  0xffb privk:0x7faa44308020::7faa44308020  e5 e5 e5 e5                                      ....
  7808 ms  0xffb SECKEY_DestroyPrivateKey()
  7808 ms  0xffb privk:0x7faa42cac820::7faa42cac820  60 2a 0e 44                                      `*.D
  7808 ms  0xffb privk:0x7faa42cac820::7faa42cac820  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
  7811 ms  0x1003 PR_Close()
  7811 ms  0x1003 fd:0x7faa3f4404c0
           /* TID 0xffb */
  7836 ms  0xffb SSL_ImportFD()
  7836 ms  0xffb ret:0x7faa4454b250
  7836 ms  0xffb SSL_AuthCertificateHook()
  7836 ms  0xffb fd:0x7faa4454b250
  7836 ms  0xffb ret:0x0
  7836 ms  0xffb PR_Connect()
  7836 ms  0xffb fd:0x7faa4454b250
  7837 ms  0xffb SSL_ImportFD()
  7837 ms  0xffb ret:0x7faa4454bc40
  7837 ms  0xffb SSL_AuthCertificateHook()
  7837 ms  0xffb fd:0x7faa4454bc40
  7837 ms  0xffb ret:0x0
  7837 ms  0xffb PR_Connect()
  7837 ms  0xffb fd:0x7faa4454bc40
  7837 ms  0xffb SSL_ImportFD()
  7837 ms  0xffb ret:0x7faa445742b0
  7837 ms  0xffb SSL_AuthCertificateHook()
  7837 ms  0xffb fd:0x7faa445742b0
  7837 ms  0xffb ret:0x0
  7837 ms  0xffb PR_Connect()
  7837 ms  0xffb fd:0x7faa445742b0
           /* TID 0x1003 */
  7838 ms  0x1003 PR_Close()
  7838 ms  0x1003 fd:0x7faa4451ee50
           /* TID 0xffb */
  7839 ms  0xffb SSL_ImportFD()
  7839 ms  0xffb ret:0x7faa44574940
  7839 ms  0xffb SSL_AuthCertificateHook()
  7839 ms  0xffb fd:0x7faa44574940
  7839 ms  0xffb ret:0x0
  7839 ms  0xffb PR_Connect()
  7839 ms  0xffb fd:0x7faa44574940
  7841 ms  0xffb SSL_ImportFD()
  7841 ms  0xffb ret:0x7faa44585190
  7841 ms  0xffb SSL_AuthCertificateHook()
  7841 ms  0xffb fd:0x7faa44585190
  7841 ms  0xffb ret:0x0
  7841 ms  0xffb PR_Connect()
  7841 ms  0xffb fd:0x7faa44585190
           /* TID 0x1003 */
  7853 ms  0x1003 PR_Close()
  7853 ms  0x1003 fd:0x7faa4451e3d0
           /* TID 0x1058 */
  7853 ms  0x1058 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7853 ms  0x1058 ret:0x0
           /* TID 0xffb */
  7854 ms  0xffb SSL_AuthCertificateComplete()
  7854 ms  0xffb fd:0x7faa3ffc8a90
  7854 ms  0xffb err:0x0
  7854 ms     | 0xffb SECKEY_DestroyPrivateKey()
  7854 ms     | 0xffb privk:0x7faa443b0820::7faa443b0820  60 1f 2f 44                                      `./D
  7854 ms     | 0xffb privk:0x7faa443b0820::7faa443b0820  e5 e5 e5 e5                                      ....
  7854 ms     | 0xffb SECKEY_DestroyPrivateKey()
  7854 ms     | 0xffb privk:0x7faa4430f020::7faa4430f020  f0 1b 2f 44                                      ../D
  7854 ms     | 0xffb privk:0x7faa4430f020::7faa4430f020  e5 e5 e5 e5                                      ....
  7854 ms  0xffb PK11_Encrypt()
  7854 ms  0xffb symkey:0x7faa4406de00
           /* TID 0x1003 */
  7862 ms  0x1003 PR_Close()
  7862 ms  0x1003 fd:0x7faa43591700
           /* TID 0x1094 */
  7862 ms  0x1094 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7862 ms  0x1094 ret:0x0
           /* TID 0xffb */
  7862 ms  0xffb SSL_AuthCertificateComplete()
  7862 ms  0xffb fd:0x7faa3ffc8a30
  7862 ms  0xffb err:0x0
  7862 ms     | 0xffb SECKEY_DestroyPrivateKey()
  7862 ms     | 0xffb privk:0x7faa446a6020::7faa446a6020  50 9b 52 44                                      P.RD
  7862 ms     | 0xffb privk:0x7faa446a6020::7faa446a6020  e5 e5 e5 e5                                      ....
  7862 ms     | 0xffb SECKEY_DestroyPrivateKey()
  7862 ms     | 0xffb privk:0x7faa443cb020::7faa443cb020  a0 4b 3e 44                                      .K>D
  7862 ms     | 0xffb privk:0x7faa443cb020::7faa443cb020  e5 e5 e5 e5                                      ....
  7862 ms  0xffb PK11_Encrypt()
  7862 ms  0xffb symkey:0x7faa440dd500
  7881 ms  0xffb PK11_Encrypt()
  7881 ms  0xffb symkey:0x7faa43fd1300
           /* TID 0x1003 */
  7882 ms  0x1003 PR_Close()
  7882 ms  0x1003 fd:0x7faa44219760
           /* TID 0xffb */
  7895 ms  0xffb SECKEY_CreateECPrivateKey()
  7895 ms  0xffb cx:0x7faa2d105948
  7896 ms     | 0xffb EC_ValidatePublicKey()
  7896 ms     | 0xffb ret:0x0
  7896 ms  0xffb ret:0x7faa3ffe9020::7faa3ffe9020  30 bd 20 44                                      0. D
  7896 ms  0xffb SECKEY_CreateECPrivateKey()
  7896 ms  0xffb cx:0x7faa2d105948
  7896 ms     | 0xffb EC_ValidatePublicKey()
  7899 ms     | 0xffb ret:0x0
  7899 ms  0xffb ret:0x7faa4430f020::7faa4430f020  20 2e 0e 44                                       ..D
  7899 ms  0xffb SECKEY_CreateECPrivateKey()
  7899 ms  0xffb cx:0x7faa2d105ae8
  7900 ms     | 0xffb EC_ValidatePublicKey()
  7900 ms     | 0xffb ret:0x0
  7900 ms  0xffb ret:0x7faa443bf020::7faa443bf020  70 1e 2f 44                                      p./D
  7900 ms  0xffb SECKEY_CreateECPrivateKey()
  7900 ms  0xffb cx:0x7faa2d105ae8
  7901 ms     | 0xffb EC_ValidatePublicKey()
  7902 ms     | 0xffb ret:0x0
  7902 ms  0xffb ret:0x7faa443c6820::7faa443c6820  80 43 3e 44                                      .C>D
  7903 ms  0xffb SECKEY_CreateECPrivateKey()
  7903 ms  0xffb cx:0x7faa2d105c88
  7904 ms     | 0xffb EC_ValidatePublicKey()
  7904 ms     | 0xffb ret:0x0
  7904 ms  0xffb ret:0x7faa443cc820::7faa443cc820  30 4d 3e 44                                      0M>D
  7904 ms  0xffb SECKEY_CreateECPrivateKey()
  7904 ms  0xffb cx:0x7faa2d105c88
  7905 ms     | 0xffb EC_ValidatePublicKey()
  7906 ms     | 0xffb ret:0x0
  7906 ms  0xffb ret:0x7faa446c0020::7faa446c0020  a0 f1 54 44                                      ..TD
  7907 ms  0xffb SECKEY_CreateECPrivateKey()
  7907 ms  0xffb cx:0x7faa2d105e28
  7907 ms     | 0xffb EC_ValidatePublicKey()
  7907 ms     | 0xffb ret:0x0
  7907 ms  0xffb ret:0x7faa446c3820::7faa446c3820  80 48 58 44                                      .HXD
  7907 ms  0xffb SECKEY_CreateECPrivateKey()
  7907 ms  0xffb cx:0x7faa2d105e28
  7908 ms     | 0xffb EC_ValidatePublicKey()
  7910 ms     | 0xffb ret:0x0
  7910 ms  0xffb ret:0x7faa44781020::7faa44781020  e0 ac 5b 44                                      ..[D
           /* TID 0x1003 */
  7944 ms  0x1003 PR_Close()
  7944 ms  0x1003 fd:0x7faa44574520
           /* TID 0xffb */
  7962 ms  SECKEY_ECParamsToKeySize()
  7962 ms  0xffb ret:0x100
  7963 ms  0xffb SECKEY_CreateECPrivateKey()
  7963 ms  0xffb cx:0x7faa2d105948
  7964 ms     | 0xffb EC_ValidatePublicKey()
  7968 ms     | 0xffb ret:0x0
  7968 ms  0xffb ret:0x7faa44788020::7faa44788020  e0 07 5c 44                                      ..\D
  7968 ms  0xffb PK11_PubDeriveWithKDF()
  7968 ms  0xffb seckey:0x7faa44788020
  7968 ms     | 0xffb EC_ValidatePublicKey()
  7972 ms     | 0xffb ret:0x0
  7976 ms  0xffb ret:0x7faa482aea80
  7976 ms  0xffb PK11_DeriveWithFlags()
  7976 ms  0xffb basekey:0x7faa482aea80
  7976 ms     | 0xffb PK11_DeriveWithTemplate()
  7976 ms  0xffb ret:0x7faa445e4100
  7976 ms  0xffb PK11_Derive()
  7976 ms  0xffb basekey:0x7faa445e4100
  7976 ms     | 0xffb PK11_DeriveWithTemplate()
  7976 ms  0xffb ret:0x7faa446fa980
  7976 ms  0xffb SECKEY_DestroyPrivateKey()
  7976 ms  0xffb privk:0x7faa44788020::7faa44788020  e0 07 5c 44                                      ..\D
  7977 ms  0xffb privk:0x7faa44788020::7faa44788020  e5 e5 e5 e5                                      ....
  7977 ms  0xffb PK11_Encrypt()
  7977 ms  0xffb symkey:0x7faa447e8b00
  7980 ms  0xffb SSL_AuthCertificateComplete()
  7980 ms  0xffb fd:0x7faa4454bc40
  7980 ms  0xffb err:0x0
  7980 ms  0xffb PK11_Encrypt()
  7980 ms  0xffb symkey:0x7faa447e8b00
  7982 ms  SECKEY_ECParamsToKeySize()
  7982 ms  0xffb ret:0x100
  7983 ms  0xffb SECKEY_CreateECPrivateKey()
  7983 ms  0xffb cx:0x7faa2d105c88
  7984 ms     | 0xffb EC_ValidatePublicKey()
  7987 ms     | 0xffb ret:0x0
  7987 ms  0xffb ret:0x7faa44788820::7faa44788820  60 0f 5c 44                                      `.\D
  7987 ms  0xffb PK11_PubDeriveWithKDF()
  7987 ms  0xffb seckey:0x7faa44788820
  7987 ms     | 0xffb EC_ValidatePublicKey()
  7990 ms     | 0xffb ret:0x0
  7992 ms  0xffb ret:0x7faa482aea80
  7992 ms  0xffb PK11_DeriveWithFlags()
  7992 ms  0xffb basekey:0x7faa482aea80
  7992 ms     | 0xffb PK11_DeriveWithTemplate()
  7992 ms  0xffb ret:0x7faa4406d300
  7992 ms  0xffb PK11_Derive()
  7992 ms  0xffb basekey:0x7faa4406d300
  7992 ms     | 0xffb PK11_DeriveWithTemplate()
  7992 ms  0xffb ret:0x7faa46f90880
  7992 ms  0xffb SECKEY_DestroyPrivateKey()
  7992 ms  0xffb privk:0x7faa44788820::7faa44788820  60 0f 5c 44                                      `.\D
  7993 ms  0xffb privk:0x7faa44788820::7faa44788820  e5 e5 e5 e5                                      ....
  7993 ms  0xffb PK11_Encrypt()
  7993 ms  0xffb symkey:0x7faa47015b80
  7994 ms  SECKEY_ECParamsToKeySize()
  7994 ms  0xffb ret:0x100
  7994 ms  0xffb SECKEY_CreateECPrivateKey()
  7994 ms  0xffb cx:0x7faa2d105e28
  7995 ms     | 0xffb EC_ValidatePublicKey()
  7997 ms     | 0xffb ret:0x0
  7997 ms  0xffb ret:0x7faa44789020::7faa44789020  80 28 5d 44                                      .(]D
  7997 ms  0xffb PK11_PubDeriveWithKDF()
  7997 ms  0xffb seckey:0x7faa44789020
  7997 ms     | 0xffb EC_ValidatePublicKey()
  8001 ms     | 0xffb ret:0x0
  8003 ms  0xffb ret:0x7faa482aea80
  8003 ms  0xffb PK11_DeriveWithFlags()
  8003 ms  0xffb basekey:0x7faa482aea80
  8003 ms     | 0xffb PK11_DeriveWithTemplate()
  8003 ms  0xffb ret:0x7faa4707d880
  8003 ms  0xffb PK11_Derive()
  8003 ms  0xffb basekey:0x7faa4707d880
  8003 ms     | 0xffb PK11_DeriveWithTemplate()
  8003 ms  0xffb ret:0x7faa4707dc80
  8003 ms  0xffb SECKEY_DestroyPrivateKey()
  8003 ms  0xffb privk:0x7faa44789020::7faa44789020  80 28 5d 44                                      .(]D
  8003 ms  0xffb privk:0x7faa44789020::7faa44789020  e5 e5 e5 e5                                      ....
  8004 ms  0xffb PK11_Encrypt()
  8004 ms  0xffb symkey:0x7faa47092600
  8004 ms  0xffb SSL_AuthCertificateComplete()
  8004 ms  0xffb fd:0x7faa44574940
  8004 ms  0xffb err:0x0
  8004 ms  0xffb SSL_AuthCertificateComplete()
  8004 ms  0xffb fd:0x7faa44585190
  8004 ms  0xffb err:0x0
           /* TID 0x1003 */
  8005 ms  0x1003 PR_Close()
  8005 ms  0x1003 fd:0x7faa3deea610
           /* TID 0xffb */
  8010 ms  0xffb PK11_Encrypt()
  8010 ms  0xffb symkey:0x7faa47015b80
  8010 ms  0xffb PK11_Encrypt()
  8010 ms  0xffb symkey:0x7faa47092600
  8011 ms  0xffb PK11_Encrypt()
  8011 ms  0xffb symkey:0x7faa43fd1300
  8012 ms  0xffb PR_Connect()
  8012 ms  0xffb fd:0x7faa445bddf0
  8012 ms  0xffb PR_Connect()
  8012 ms  0xffb fd:0x7faa44574880
  8012 ms  0xffb PR_Connect()
  8012 ms  0xffb fd:0x7faa44585d30
  8012 ms  0xffb PR_Connect()
  8012 ms  0xffb fd:0x7faa445bd610
  8012 ms  0xffb PR_Connect()
  8012 ms  0xffb fd:0x7faa445bd6a0
  8013 ms  0xffb PR_Connect()
  8013 ms  0xffb fd:0x7faa445bd850
  8028 ms  0xffb PR_Connect()
  8028 ms  0xffb fd:0x7faa445f4070
  8033 ms  0xffb SSL_ImportFD()
  8033 ms  0xffb ret:0x7faa445f4100
  8033 ms  0xffb SSL_AuthCertificateHook()
  8033 ms  0xffb fd:0x7faa445f4100
  8033 ms  0xffb ret:0x0
  8033 ms  0xffb PR_Connect()
  8033 ms  0xffb fd:0x7faa445f4100
  8036 ms  0xffb SECKEY_DestroyPrivateKey()
  8036 ms  0xffb privk:0x7faa4430f020::7faa4430f020  20 2e 0e 44                                       ..D
  8036 ms  0xffb privk:0x7faa4430f020::7faa4430f020  e5 e5 e5 e5                                      ....
  8036 ms  0xffb SECKEY_DestroyPrivateKey()
  8036 ms  0xffb privk:0x7faa3ffe9020::7faa3ffe9020  30 bd 20 44                                      0. D
  8036 ms  0xffb privk:0x7faa3ffe9020::7faa3ffe9020  e5 e5 e5 e5                                      ....
  8043 ms  0xffb PR_Connect()
  8043 ms  0xffb fd:0x7faa4454bf10
  8043 ms  0xffb PR_Connect()
  8043 ms  0xffb fd:0x7faa3f7ff760
  8043 ms  0xffb PR_Connect()
  8043 ms  0xffb fd:0x7faa3ffc8be0
  8051 ms  0xffb SECKEY_DestroyPrivateKey()
  8051 ms  0xffb privk:0x7faa446c0020::7faa446c0020  a0 f1 54 44                                      ..TD
  8051 ms  0xffb privk:0x7faa446c0020::7faa446c0020  e5 e5 e5 e5                                      ....
  8051 ms  0xffb SECKEY_DestroyPrivateKey()
  8051 ms  0xffb privk:0x7faa443cc820::7faa443cc820  30 4d 3e 44                                      0M>D
  8051 ms  0xffb privk:0x7faa443cc820::7faa443cc820  e5 e5 e5 e5                                      ....
  8055 ms  0xffb PR_Connect()
  8055 ms  0xffb fd:0x7faa443fe3d0
  8058 ms  0xffb SECKEY_CreateECPrivateKey()
  8058 ms  0xffb cx:0x7faa2d1057a8
  8059 ms     | 0xffb EC_ValidatePublicKey()
  8059 ms     | 0xffb ret:0x0
  8059 ms  0xffb ret:0x7faa3ffe9020::7faa3ffe9020  a0 1b 2f 44                                      ../D
  8059 ms  0xffb SECKEY_CreateECPrivateKey()
  8059 ms  0xffb cx:0x7faa2d1057a8
  8059 ms     | 0xffb EC_ValidatePublicKey()
  8061 ms     | 0xffb ret:0x0
  8061 ms  0xffb ret:0x7faa4430f020::7faa4430f020  d0 4d 3e 44                                      .M>D
           /* TID 0x1003 */
  8074 ms  0x1003 PR_Close()
  8074 ms  0x1003 fd:0x7faa3f440520
           /* TID 0xffb */
  8075 ms  0xffb SSL_ImportFD()
  8075 ms  0xffb ret:0x7faa445bd5e0
  8075 ms  0xffb SSL_AuthCertificateHook()
  8075 ms  0xffb fd:0x7faa445bd5e0
  8075 ms  0xffb ret:0x0
  8075 ms  0xffb PR_Connect()
  8075 ms  0xffb fd:0x7faa445bd5e0
  8086 ms  0xffb SSL_ImportFD()
  8086 ms  0xffb ret:0x7faa445f4b50
  8086 ms  0xffb SSL_AuthCertificateHook()
  8086 ms  0xffb fd:0x7faa445f4b50
  8086 ms  0xffb ret:0x0
  8087 ms  0xffb PR_Connect()
  8087 ms  0xffb fd:0x7faa445f4b50
           /* TID 0x1003 */
  8099 ms  0x1003 PR_Close()
  8099 ms  0x1003 fd:0x7faa3f440520
           /* TID 0xffb */
  8100 ms  0xffb SECKEY_DestroyPrivateKey()
  8100 ms  0xffb privk:0x7faa44781020::7faa44781020  e0 ac 5b 44                                      ..[D
  8100 ms  0xffb privk:0x7faa44781020::7faa44781020  e5 e5 e5 e5                                      ....
  8100 ms  0xffb SECKEY_DestroyPrivateKey()
  8100 ms  0xffb privk:0x7faa446c3820::7faa446c3820  80 48 58 44                                      .HXD
  8100 ms  0xffb privk:0x7faa446c3820::7faa446c3820  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
  8101 ms  0x1003 PR_Close()
  8101 ms  0x1003 fd:0x7faa3f440520
  8103 ms  0x1003 PR_Close()
  8103 ms  0x1003 fd:0x7faa3f440520
  8105 ms  0x1003 PR_Close()
  8105 ms  0x1003 fd:0x7faa3f440520
  8109 ms  0x1003 PR_Close()
  8109 ms  0x1003 fd:0x7faa3f440520
           /* TID 0xffb */
  8110 ms  0xffb PK11_Encrypt()
  8110 ms  0xffb symkey:0x7faa4406de00
  8111 ms  0xffb PR_Connect()
  8111 ms  0xffb fd:0x7faa42c8be20
           /* TID 0x1003 */
  8113 ms  0x1003 PR_Close()
  8113 ms  0x1003 fd:0x7faa42c78a00
  8120 ms  0x1003 PR_Close()
  8120 ms  0x1003 fd:0x7faa3f440820
           /* TID 0xffb */
  8124 ms  0xffb PK11_Encrypt()
  8124 ms  0xffb symkey:0x7faa43fd1300
  8136 ms  0xffb SSL_ImportFD()
  8136 ms  0xffb ret:0x7faa43591310
  8136 ms  0xffb SSL_AuthCertificateHook()
  8136 ms  0xffb fd:0x7faa43591310
  8136 ms  0xffb ret:0x0
  8136 ms  0xffb PR_Connect()
  8136 ms  0xffb fd:0x7faa43591310
           /* TID 0x1003 */
  8147 ms  0x1003 PR_Close()
  8147 ms  0x1003 fd:0x7faa3f440820
  8150 ms  0x1003 PR_Close()
  8150 ms  0x1003 fd:0x7faa3f7ff3d0
  8169 ms  0x1003 PR_Close()
  8169 ms  0x1003 fd:0x7faa3f440820
  8173 ms  0x1003 PR_Close()
  8173 ms  0x1003 fd:0x7faa3f4407f0
  8174 ms  0x1003 PR_Close()
  8174 ms  0x1003 fd:0x7faa3f4407f0
           /* TID 0xffb */
  8178 ms  0xffb PR_Connect()
  8178 ms  0xffb fd:0x7faa43fbbeb0
  8188 ms  0xffb SSL_ImportFD()
  8188 ms  0xffb ret:0x7faa443fe2b0
  8188 ms  0xffb SSL_AuthCertificateHook()
  8188 ms  0xffb fd:0x7faa443fe2b0
  8188 ms  0xffb ret:0x0
  8188 ms  0xffb PR_Connect()
  8188 ms  0xffb fd:0x7faa443fe2b0
           /* TID 0x1003 */
  8195 ms  0x1003 PR_Close()
  8195 ms  0x1003 fd:0x7faa3e690520
  8195 ms  0x1003 PR_Close()
  8195 ms  0x1003 fd:0x7faa3e690520
  8197 ms  0x1003 PR_Close()
  8197 ms  0x1003 fd:0x7faa3e690520
  8198 ms  0x1003 PR_Close()
  8198 ms  0x1003 fd:0x7faa3e690520
           /* TID 0xffb */
  8199 ms  0xffb SSL_ImportFD()
  8199 ms  0xffb ret:0x7faa440420d0
  8199 ms  0xffb SSL_AuthCertificateHook()
  8199 ms  0xffb fd:0x7faa440420d0
  8199 ms  0xffb ret:0x0
  8199 ms  0xffb PR_Connect()
  8199 ms  0xffb fd:0x7faa440420d0
           /* TID 0x1003 */
  8212 ms  0x1003 PR_Close()
  8212 ms  0x1003 fd:0x7faa443fe130
  8214 ms  0x1003 PR_Close()
  8214 ms  0x1003 fd:0x7faa3f7ff3d0
  8224 ms  0x1003 PR_Close()
  8224 ms  0x1003 fd:0x7faa3f440460
           /* TID 0xffb */
  8225 ms  0xffb PK11_Encrypt()
  8225 ms  0xffb symkey:0x7faa47092600
  8237 ms  0xffb PK11_Encrypt()
  8237 ms  0xffb symkey:0x7faa4406de00
           /* TID 0x1003 */
  8238 ms  0x1003 PR_Close()
  8238 ms  0x1003 fd:0x7faa3f440460
           /* TID 0xffb */
  8254 ms  0xffb PK11_Encrypt()
  8254 ms  0xffb symkey:0x7faa43fd1300
           /* TID 0x1003 */
  8255 ms  0x1003 PR_Close()
  8255 ms  0x1003 fd:0x7faa3f7ff4c0
           /* TID 0xffb */
  8265 ms  0xffb PK11_Encrypt()
  8265 ms  0xffb symkey:0x7faa447e8b00
           /* TID 0x1003 */
  8267 ms  0x1003 PR_Close()
  8267 ms  0x1003 fd:0x7faa3f7ff7c0
           /* TID 0xffb */
  8284 ms  SECKEY_ECParamsToKeySize()
  8284 ms  0xffb ret:0xff
  8284 ms  0xffb SECKEY_CreateECPrivateKey()
  8284 ms  0xffb cx:0x7faa2d1057a8
  8285 ms     | 0xffb EC_ValidatePublicKey()
  8285 ms     | 0xffb ret:0x0
  8285 ms  0xffb ret:0x7faa44794820::7faa44794820  40 6c 57 44                                      @lWD
  8285 ms  0xffb PK11_PubDeriveWithKDF()
  8285 ms  0xffb seckey:0x7faa44794820
  8285 ms     | 0xffb EC_ValidatePublicKey()
  8285 ms     | 0xffb ret:0x0
  8285 ms  0xffb ret:0x7faa482aea80
  8285 ms  0xffb PK11_DeriveWithFlags()
  8285 ms  0xffb basekey:0x7faa482aea80
  8285 ms     | 0xffb PK11_DeriveWithTemplate()
  8285 ms  0xffb ret:0x7faa3ef0f500
  8285 ms  0xffb PK11_Derive()
  8285 ms  0xffb basekey:0x7faa3ef0f500
  8285 ms     | 0xffb PK11_DeriveWithTemplate()
  8285 ms  0xffb ret:0x7faa3ef0f880
  8285 ms  0xffb SECKEY_DestroyPrivateKey()
  8285 ms  0xffb privk:0x7faa44794820::7faa44794820  40 6c 57 44                                      @lWD
  8285 ms  0xffb privk:0x7faa44794820::7faa44794820  e5 e5 e5 e5                                      ....
  8286 ms  0xffb PK11_Encrypt()
  8286 ms  0xffb symkey:0x7faa3f236700
  8288 ms  0xffb PK11_Encrypt()
  8288 ms  0xffb symkey:0x7faa440dd500
  8288 ms  0xffb SSL_ImportFD()
  8288 ms  0xffb ret:0x7faa4454b070
  8288 ms  0xffb SSL_AuthCertificateHook()
  8288 ms  0xffb fd:0x7faa4454b070
  8289 ms  0xffb ret:0x0
  8289 ms  0xffb PR_Connect()
  8289 ms  0xffb fd:0x7faa4454b070
  8293 ms  0xffb PR_Connect()
  8293 ms  0xffb fd:0x7faa4467f940
  8293 ms  0xffb PR_Connect()
  8293 ms  0xffb fd:0x7faa4467f880
  8293 ms  0xffb PR_Connect()
  8293 ms  0xffb fd:0x7faa4467f9d0
  8298 ms  0xffb SECKEY_CreateECPrivateKey()
  8298 ms  0xffb cx:0x7faa2d106648
  8298 ms     | 0xffb EC_ValidatePublicKey()
  8298 ms     | 0xffb ret:0x0
  8298 ms  0xffb ret:0x7faa44797820::7faa44797820  e0 07 5c 44                                      ..\D
  8298 ms  0xffb SECKEY_CreateECPrivateKey()
  8298 ms  0xffb cx:0x7faa2d106648
  8299 ms     | 0xffb EC_ValidatePublicKey()
  8300 ms     | 0xffb ret:0x0
  8300 ms  0xffb ret:0x7faa4479b020::7faa4479b020  b0 0f 5c 44                                      ..\D
  8308 ms  SECKEY_ECParamsToKeySize()
  8308 ms  0xffb ret:0x100
  8308 ms  0xffb SECKEY_CreateECPrivateKey()
  8308 ms  0xffb cx:0x7faa2d105ae8
  8309 ms     | 0xffb EC_ValidatePublicKey()
  8310 ms     | 0xffb ret:0x0
  8310 ms  0xffb ret:0x7faa46f15820::7faa46f15820  40 2c 5d 44                                      @,]D
  8310 ms  0xffb PK11_PubDeriveWithKDF()
  8310 ms  0xffb seckey:0x7faa46f15820
  8310 ms     | 0xffb EC_ValidatePublicKey()
  8312 ms     | 0xffb ret:0x0
  8313 ms  0xffb ret:0x7faa482aea80
  8313 ms  0xffb PK11_DeriveWithFlags()
  8313 ms  0xffb basekey:0x7faa482aea80
  8313 ms     | 0xffb PK11_DeriveWithTemplate()
  8313 ms  0xffb ret:0x7faa48486980
  8313 ms  0xffb PK11_Derive()
  8313 ms  0xffb basekey:0x7faa48486980
  8313 ms     | 0xffb PK11_DeriveWithTemplate()
  8313 ms  0xffb ret:0x7faa48491e00
  8313 ms  0xffb SECKEY_DestroyPrivateKey()
  8313 ms  0xffb privk:0x7faa46f15820::7faa46f15820  40 2c 5d 44                                      @,]D
  8313 ms  0xffb privk:0x7faa46f15820::7faa46f15820  e5 e5 e5 e5                                      ....
  8313 ms  0xffb PK11_Encrypt()
  8313 ms  0xffb symkey:0x7faa48492080
  8322 ms  0xffb SSL_AuthCertificateComplete()
  8322 ms  0xffb fd:0x7faa445742b0
  8322 ms  0xffb err:0x0
           /* TID 0x1003 */
  8323 ms  0x1003 PR_Close()
  8323 ms  0x1003 fd:0x7faa3f7ff850
           /* TID 0xffb */
  8323 ms  0xffb PK11_Encrypt()
  8323 ms  0xffb symkey:0x7faa48492080
           /* TID 0x1003 */
  8329 ms  0x1003 PR_Close()
  8329 ms  0x1003 fd:0x7faa3f7ff850
           /* TID 0xffb */
  8330 ms  0xffb SECKEY_CreateECPrivateKey()
  8330 ms  0xffb cx:0x7faa2d106988
  8330 ms     | 0xffb EC_ValidatePublicKey()
  8330 ms     | 0xffb ret:0x0
  8330 ms  0xffb ret:0x7faa46f16820::7faa46f16820  b0 10 2f 44                                      ../D
  8330 ms  0xffb SECKEY_CreateECPrivateKey()
  8330 ms  0xffb cx:0x7faa2d106988
  8331 ms     | 0xffb EC_ValidatePublicKey()
  8332 ms     | 0xffb ret:0x0
  8332 ms  0xffb ret:0x7faa46f1b820::7faa46f1b820  50 2b 5d 44                                      P+]D
           /* TID 0x1003 */
  8349 ms  0x1003 PR_Close()
  8349 ms  0x1003 fd:0x7faa3f7ff6d0
           /* TID 0xffb */
  8350 ms  0xffb SECKEY_CreateECPrivateKey()
  8350 ms  0xffb cx:0x7faa2d1064a8
  8351 ms     | 0xffb EC_ValidatePublicKey()
  8351 ms     | 0xffb ret:0x0
  8351 ms  0xffb ret:0x7faa46f20020::7faa46f20020  a0 b6 20 44                                      .. D
  8351 ms  0xffb SECKEY_CreateECPrivateKey()
  8351 ms  0xffb cx:0x7faa2d1064a8
  8352 ms     | 0xffb EC_ValidatePublicKey()
  8353 ms     | 0xffb ret:0x0
  8353 ms  0xffb ret:0x7faa46f24020::7faa46f24020  c0 74 5e 44                                      .t^D
           /* TID 0x1003 */
  8368 ms  0x1003 PR_Close()
  8368 ms  0x1003 fd:0x7faa43ffaf40
  8369 ms  0x1003 PR_Close()
  8369 ms  0x1003 fd:0x7faa3f7ff1c0
  8371 ms  0x1003 PR_Close()
  8371 ms  0x1003 fd:0x7faa3ef4f8b0
  8384 ms  0x1003 PR_Close()
  8384 ms  0x1003 fd:0x7faa3ffce4f0
           /* TID 0xffb */
  8388 ms  0xffb SSL_ImportFD()
  8388 ms  0xffb ret:0x7faa4126df10
  8388 ms  0xffb SSL_AuthCertificateHook()
  8388 ms  0xffb fd:0x7faa4126df10
  8388 ms  0xffb ret:0x0
  8388 ms  0xffb PR_Connect()
  8388 ms  0xffb fd:0x7faa4126df10
           /* TID 0x1003 */
  8394 ms  0x1003 PR_Close()
  8394 ms  0x1003 fd:0x7faa3ffc8880
  8396 ms  0x1003 PR_Close()
  8396 ms  0x1003 fd:0x7faa3ffc8880
           /* TID 0xffb */
  8410 ms  0xffb PR_Connect()
  8410 ms  0xffb fd:0x7faa3ffce760
           /* TID 0x1003 */
  8412 ms  0x1003 PR_Close()
  8412 ms  0x1003 fd:0x7faa3ffc8880
  8420 ms  0x1003 PR_Close()
  8420 ms  0x1003 fd:0x7faa3ffc8880
           /* TID 0xffb */
  8421 ms  0xffb SECKEY_CreateECPrivateKey()
  8421 ms  0xffb cx:0x7faa2d106cc8
  8421 ms     | 0xffb EC_ValidatePublicKey()
  8422 ms     | 0xffb ret:0x0
  8422 ms  0xffb ret:0x7faa46f2a820::7faa46f2a820  c0 74 03 44                                      .t.D
  8422 ms  0xffb SECKEY_CreateECPrivateKey()
  8422 ms  0xffb cx:0x7faa2d106cc8
  8422 ms     | 0xffb EC_ValidatePublicKey()
  8424 ms     | 0xffb ret:0x0
  8424 ms  0xffb ret:0x7faa46f2c820::7faa46f2c820  f0 b6 20 44                                      .. D
  8427 ms  0xffb SECKEY_DestroyPrivateKey()
  8427 ms  0xffb privk:0x7faa443c6820::7faa443c6820  80 43 3e 44                                      .C>D
  8427 ms  0xffb privk:0x7faa443c6820::7faa443c6820  e5 e5 e5 e5                                      ....
  8427 ms  0xffb SECKEY_DestroyPrivateKey()
  8427 ms  0xffb privk:0x7faa443bf020::7faa443bf020  70 1e 2f 44                                      p./D
  8427 ms  0xffb privk:0x7faa443bf020::7faa443bf020  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
  8430 ms  0x1003 PR_Close()
  8430 ms  0x1003 fd:0x7faa3e690700
           /* TID 0xffb */
  8431 ms  0xffb SECKEY_CreateECPrivateKey()
  8431 ms  0xffb cx:0x7faa2d106e68
  8431 ms     | 0xffb EC_ValidatePublicKey()
  8431 ms     | 0xffb ret:0x0
  8431 ms  0xffb ret:0x7faa443c1820::7faa443c1820  c0 f4 26 44                                      ..&D
  8431 ms  0xffb SECKEY_CreateECPrivateKey()
  8431 ms  0xffb cx:0x7faa2d106e68
  8432 ms     | 0xffb EC_ValidatePublicKey()
  8433 ms     | 0xffb ret:0x0
  8433 ms  0xffb ret:0x7faa46f2d020::7faa46f2d020  10 1f 2f 44                                      ../D
  8436 ms  0xffb SECKEY_CreateECPrivateKey()
  8436 ms  0xffb cx:0x7faa2d106b28
  8436 ms     | 0xffb EC_ValidatePublicKey()
  8436 ms     | 0xffb ret:0x0
  8436 ms  0xffb ret:0x7faa46f30020::7faa46f30020  10 65 3a 44                                      .e:D
  8436 ms  0xffb SECKEY_CreateECPrivateKey()
  8436 ms  0xffb cx:0x7faa2d106b28
  8437 ms     | 0xffb EC_ValidatePublicKey()
  8439 ms     | 0xffb ret:0x0
  8439 ms  0xffb ret:0x7faa4702f020::7faa4702f020  60 7f 5e 44                                      `.^D
           /* TID 0x1003 */
  8447 ms  0x1003 PR_Close()
  8447 ms  0x1003 fd:0x7faa3ffce8e0
  8457 ms  0x1003 PR_Close()
  8457 ms  0x1003 fd:0x7faa3ffce8e0
  8467 ms  0x1003 PR_Close()
  8467 ms  0x1003 fd:0x7faa2d12adf0
  8482 ms  0x1003 PR_Close()
  8482 ms  0x1003 fd:0x7faa2d12adf0
           /* TID 0xffb */
  8490 ms  0xffb SSL_ImportFD()
  8490 ms  0xffb ret:0x7faa43fbb400
  8490 ms  0xffb SSL_AuthCertificateHook()
  8490 ms  0xffb fd:0x7faa43fbb400
  8490 ms  0xffb ret:0x0
  8490 ms  0xffb PR_Connect()
  8490 ms  0xffb fd:0x7faa43fbb400
           /* TID 0x1003 */
  8495 ms  0x1003 PR_Close()
  8495 ms  0x1003 fd:0x7faa3f7ff160
  8507 ms  0x1003 PR_Close()
  8507 ms  0x1003 fd:0x7faa3f7ff160
  8521 ms  0x1003 PR_Close()
  8521 ms  0x1003 fd:0x7faa2d12ae20
           /* TID 0x1093 */
  8522 ms  0x1093 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8523 ms  0x1093 ret:0x0
           /* TID 0x1003 */
  8523 ms  0x1003 PR_Close()
  8523 ms  0x1003 fd:0x7faa3f7ff160
           /* TID 0xffb */
  8523 ms  0xffb SSL_AuthCertificateComplete()
  8523 ms  0xffb fd:0x7faa4454b250
  8523 ms  0xffb err:0x0
  8523 ms     | 0xffb SECKEY_DestroyPrivateKey()
  8523 ms     | 0xffb privk:0x7faa4430f020::7faa4430f020  d0 4d 3e 44                                      .M>D
  8523 ms     | 0xffb privk:0x7faa4430f020::7faa4430f020  e5 e5 e5 e5                                      ....
  8523 ms     | 0xffb SECKEY_DestroyPrivateKey()
  8523 ms     | 0xffb privk:0x7faa3ffe9020::7faa3ffe9020  a0 1b 2f 44                                      ../D
  8523 ms     | 0xffb privk:0x7faa3ffe9020::7faa3ffe9020  e5 e5 e5 e5                                      ....
  8523 ms  0xffb PK11_Encrypt()
  8523 ms  0xffb symkey:0x7faa3f236700
  8524 ms  SECKEY_ECParamsToKeySize()
  8524 ms  0xffb ret:0xff
  8524 ms  0xffb SECKEY_CreateECPrivateKey()
  8524 ms  0xffb cx:0x7faa2d106648
  8525 ms     | 0xffb EC_ValidatePublicKey()
  8525 ms     | 0xffb ret:0x0
  8526 ms  0xffb ret:0x7faa4430e820::7faa4430e820  a0 1b 2f 44                                      ../D
  8526 ms  0xffb PK11_PubDeriveWithKDF()
  8526 ms  0xffb seckey:0x7faa4430e820
  8526 ms     | 0xffb EC_ValidatePublicKey()
  8526 ms     | 0xffb ret:0x0
  8526 ms  0xffb ret:0x7faa482aea80
  8527 ms  0xffb PK11_DeriveWithFlags()
  8527 ms  0xffb basekey:0x7faa482aea80
  8527 ms     | 0xffb PK11_DeriveWithTemplate()
  8527 ms  0xffb ret:0x7faa4128ed80
  8527 ms  0xffb PK11_Derive()
  8527 ms  0xffb basekey:0x7faa4128ed80
  8527 ms     | 0xffb PK11_DeriveWithTemplate()
  8527 ms  0xffb ret:0x7faa412c3800
  8527 ms  0xffb SECKEY_DestroyPrivateKey()
  8527 ms  0xffb privk:0x7faa4430e820::7faa4430e820  a0 1b 2f 44                                      ../D
  8527 ms  0xffb privk:0x7faa4430e820::7faa4430e820  e5 e5 e5 e5                                      ....
  8527 ms  0xffb PK11_Encrypt()
  8527 ms  0xffb symkey:0x7faa44206d80
  8527 ms  0xffb SSL_AuthCertificateComplete()
  8527 ms  0xffb fd:0x7faa445bd5e0
  8527 ms  0xffb err:0x0
  8527 ms  0xffb PK11_Encrypt()
  8527 ms  0xffb symkey:0x7faa44206d80
  8547 ms  0xffb SECKEY_CreateECPrivateKey()
  8547 ms  0xffb cx:0x7faa44239588
  8548 ms     | 0xffb EC_ValidatePublicKey()
  8548 ms     | 0xffb ret:0x0
  8548 ms  0xffb ret:0x7faa4430c020::7faa4430c020  d0 28 6f 44                                      .(oD
  8548 ms  0xffb SECKEY_CreateECPrivateKey()
  8548 ms  0xffb cx:0x7faa44239588
  8548 ms     | 0xffb EC_ValidatePublicKey()
  8550 ms     | 0xffb ret:0x0
  8550 ms  0xffb ret:0x7faa44793020::7faa44793020  d0 bd 6f 44                                      ..oD
           /* TID 0x1003 */
  8554 ms  0x1003 PR_Close()
  8554 ms  0x1003 fd:0x7faa3dd846d0
           /* TID 0xffb */
  8565 ms  SECKEY_ECParamsToKeySize()
  8565 ms  0xffb ret:0xff
  8565 ms  0xffb SECKEY_CreateECPrivateKey()
  8565 ms  0xffb cx:0x7faa2d106988
  8566 ms     | 0xffb EC_ValidatePublicKey()
  8566 ms     | 0xffb ret:0x0
  8566 ms  0xffb ret:0x7faa480e8020::7faa480e8020  c0 34 70 44                                      .4pD
  8566 ms  0xffb PK11_PubDeriveWithKDF()
  8566 ms  0xffb seckey:0x7faa480e8020
  8566 ms     | 0xffb EC_ValidatePublicKey()
  8566 ms     | 0xffb ret:0x0
  8566 ms  0xffb ret:0x7faa482aea80
  8566 ms  0xffb PK11_DeriveWithFlags()
  8566 ms  0xffb basekey:0x7faa482aea80
  8566 ms     | 0xffb PK11_DeriveWithTemplate()
  8566 ms  0xffb ret:0x7faa48780080
  8566 ms  0xffb PK11_Derive()
  8566 ms  0xffb basekey:0x7faa48780080
  8566 ms     | 0xffb PK11_DeriveWithTemplate()
  8566 ms  0xffb ret:0x7faa48780b80
  8566 ms  0xffb SECKEY_DestroyPrivateKey()
  8566 ms  0xffb privk:0x7faa480e8020::7faa480e8020  c0 34 70 44                                      .4pD
  8566 ms  0xffb privk:0x7faa480e8020::7faa480e8020  e5 e5 e5 e5                                      ....
  8567 ms  0xffb PK11_Encrypt()
  8567 ms  0xffb symkey:0x7faa487d8180
  8567 ms  0xffb SSL_AuthCertificateComplete()
  8567 ms  0xffb fd:0x7faa445f4b50
  8567 ms  0xffb err:0x0
  8568 ms  0xffb PK11_Encrypt()
  8568 ms  0xffb symkey:0x7faa487d8180
  8602 ms  0xffb SECKEY_CreateECPrivateKey()
  8602 ms  0xffb cx:0x7faa484582c8
  8603 ms     | 0xffb EC_ValidatePublicKey()
  8603 ms     | 0xffb ret:0x0
  8603 ms  0xffb ret:0x7faa480e7820::7faa480e7820  60 bf 6f 44                                      `.oD
  8603 ms  0xffb SECKEY_CreateECPrivateKey()
  8603 ms  0xffb cx:0x7faa484582c8
  8605 ms     | 0xffb EC_ValidatePublicKey()
  8615 ms     | 0xffb ret:0x0
  8615 ms  0xffb ret:0x7faa480ea820::7faa480ea820  f0 0b 72 44                                      ..rD
  8619 ms  SECKEY_ECParamsToKeySize()
  8619 ms  0xffb ret:0x100
  8619 ms  0xffb SECKEY_CreateECPrivateKey()
  8619 ms  0xffb cx:0x7faa44239588
  8620 ms     | 0xffb EC_ValidatePublicKey()
  8623 ms     | 0xffb ret:0x0
  8623 ms  0xffb ret:0x7faa481ec820::7faa481ec820  d0 f3 f3 46                                      ...F
  8623 ms  0xffb PK11_PubDeriveWithKDF()
  8623 ms  0xffb seckey:0x7faa481ec820
  8623 ms     | 0xffb EC_ValidatePublicKey()
  8626 ms     | 0xffb ret:0x0
  8632 ms  0xffb ret:0x7faa482aea80
  8632 ms  0xffb PK11_DeriveWithFlags()
  8632 ms  0xffb basekey:0x7faa482aea80
  8632 ms     | 0xffb PK11_DeriveWithTemplate()
  8632 ms  0xffb ret:0x7faa487d8700
  8632 ms  0xffb PK11_Derive()
  8632 ms  0xffb basekey:0x7faa487d8700
  8632 ms     | 0xffb PK11_DeriveWithTemplate()
  8632 ms  0xffb ret:0x7faa487d8780
  8632 ms  0xffb SECKEY_DestroyPrivateKey()
  8632 ms  0xffb privk:0x7faa481ec820::7faa481ec820  d0 f3 f3 46                                      ...F
  8632 ms  0xffb privk:0x7faa481ec820::7faa481ec820  e5 e5 e5 e5                                      ....
  8632 ms  0xffb PK11_Encrypt()
  8632 ms  0xffb symkey:0x7faa487d8980
           /* TID 0x1093 */
  8659 ms  0x1093 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8659 ms  0x1093 ret:0x0
           /* TID 0x1003 */
  8660 ms  0x1003 PR_Close()
  8660 ms  0x1003 fd:0x7faa446e5850
           /* TID 0xffb */
  8660 ms  0xffb SSL_AuthCertificateComplete()
  8660 ms  0xffb fd:0x7faa43fbb400
  8660 ms  0xffb err:0x0
  8661 ms  SECKEY_ECParamsToKeySize()
  8661 ms  0xffb ret:0xff
  8661 ms  0xffb SECKEY_CreateECPrivateKey()
  8661 ms  0xffb cx:0x7faa2d106cc8
  8662 ms     | 0xffb EC_ValidatePublicKey()
  8662 ms     | 0xffb ret:0x0
  8662 ms  0xffb ret:0x7faa481e7020::7faa481e7020  70 99 7e 44                                      p.~D
  8662 ms  0xffb PK11_PubDeriveWithKDF()
  8662 ms  0xffb seckey:0x7faa481e7020
  8662 ms     | 0xffb EC_ValidatePublicKey()
  8662 ms     | 0xffb ret:0x0
  8662 ms  0xffb ret:0x7faa482aea80
  8662 ms  0xffb PK11_DeriveWithFlags()
  8662 ms  0xffb basekey:0x7faa482aea80
  8662 ms     | 0xffb PK11_DeriveWithTemplate()
  8662 ms  0xffb ret:0x7faa487d8500
  8662 ms  0xffb PK11_Derive()
  8662 ms  0xffb basekey:0x7faa487d8500
  8662 ms     | 0xffb PK11_DeriveWithTemplate()
  8662 ms  0xffb ret:0x7faa487d8580
  8663 ms  0xffb SECKEY_DestroyPrivateKey()
  8663 ms  0xffb privk:0x7faa481e7020::7faa481e7020  70 99 7e 44                                      p.~D
  8663 ms  0xffb privk:0x7faa481e7020::7faa481e7020  e5 e5 e5 e5                                      ....
  8663 ms  0xffb PK11_Encrypt()
  8663 ms  0xffb symkey:0x7faa487d8c80
  8666 ms  0xffb PK11_Encrypt()
  8666 ms  0xffb symkey:0x7faa487d8980
  8666 ms  0xffb SSL_AuthCertificateComplete()
  8666 ms  0xffb fd:0x7faa443fe2b0
  8666 ms  0xffb err:0x0
  8666 ms  0xffb PK11_Encrypt()
  8666 ms  0xffb symkey:0x7faa487d8c80
  8669 ms  SECKEY_ECParamsToKeySize()
  8669 ms  0xffb ret:0xff
  8669 ms  0xffb SECKEY_CreateECPrivateKey()
  8669 ms  0xffb cx:0x7faa2d106e68
  8669 ms     | 0xffb EC_ValidatePublicKey()
  8669 ms     | 0xffb ret:0x0
  8669 ms  0xffb ret:0x7faa481ea020::7faa481ea020  c0 9e 7e 44                                      ..~D
  8669 ms  0xffb PK11_PubDeriveWithKDF()
  8669 ms  0xffb seckey:0x7faa481ea020
  8669 ms     | 0xffb EC_ValidatePublicKey()
  8669 ms     | 0xffb ret:0x0
  8670 ms  0xffb ret:0x7faa482aea80
  8670 ms  0xffb PK11_DeriveWithFlags()
  8670 ms  0xffb basekey:0x7faa482aea80
  8670 ms     | 0xffb PK11_DeriveWithTemplate()
  8670 ms  0xffb ret:0x7faa487d8e00
  8670 ms  0xffb PK11_Derive()
  8670 ms  0xffb basekey:0x7faa487d8e00
  8670 ms     | 0xffb PK11_DeriveWithTemplate()
  8670 ms  0xffb ret:0x7faa48acc280
  8670 ms  0xffb SECKEY_DestroyPrivateKey()
  8670 ms  0xffb privk:0x7faa481ea020::7faa481ea020  c0 9e 7e 44                                      ..~D
  8670 ms  0xffb privk:0x7faa481ea020::7faa481ea020  e5 e5 e5 e5                                      ....
  8671 ms  0xffb PK11_Encrypt()
  8671 ms  0xffb symkey:0x7faa48acc680
  8671 ms  0xffb SSL_AuthCertificateComplete()
  8671 ms  0xffb fd:0x7faa440420d0
  8671 ms  0xffb err:0x0
  8672 ms  0xffb PK11_Encrypt()
  8672 ms  0xffb symkey:0x7faa48acc680
  8687 ms  0xffb SECKEY_CreateECPrivateKey()
  8687 ms  0xffb cx:0x7faa442390a8
  8688 ms     | 0xffb EC_ValidatePublicKey()
  8688 ms     | 0xffb ret:0x0
  8688 ms  0xffb ret:0x7faa481ec020::7faa481ec020  10 9f 7e 44                                      ..~D
  8688 ms  0xffb SECKEY_CreateECPrivateKey()
  8688 ms  0xffb cx:0x7faa442390a8
  8688 ms     | 0xffb EC_ValidatePublicKey()
  8690 ms     | 0xffb ret:0x0
  8690 ms  0xffb ret:0x7faa481ef020::7faa481ef020  40 fc f4 46                                      @..F
           /* TID 0x1003 */
  8691 ms  0x1003 PR_Close()
  8691 ms  0x1003 fd:0x7faa3deea040
  8693 ms  0x1003 PR_Close()
  8693 ms  0x1003 fd:0x7faa3deea040
           /* TID 0xffb */
  8697 ms  0xffb SECKEY_DestroyPrivateKey()
  8697 ms  0xffb privk:0x7faa44793020::7faa44793020  d0 bd 6f 44                                      ..oD
  8697 ms  0xffb privk:0x7faa44793020::7faa44793020  e5 e5 e5 e5                                      ....
  8697 ms  0xffb SECKEY_DestroyPrivateKey()
  8697 ms  0xffb privk:0x7faa4430c020::7faa4430c020  d0 28 6f 44                                      .(oD
  8698 ms  0xffb privk:0x7faa4430c020::7faa4430c020  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
  8749 ms  0x1003 PR_Close()
  8749 ms  0x1003 fd:0x7faa44042160
           /* TID 0xffb */
  8753 ms  0xffb SECKEY_DestroyPrivateKey()
  8753 ms  0xffb privk:0x7faa4479b020::7faa4479b020  b0 0f 5c 44                                      ..\D
  8753 ms  0xffb privk:0x7faa4479b020::7faa4479b020  e5 e5 e5 e5                                      ....
  8753 ms  0xffb SECKEY_DestroyPrivateKey()
  8753 ms  0xffb privk:0x7faa44797820::7faa44797820  e0 07 5c 44                                      ..\D
  8753 ms  0xffb privk:0x7faa44797820::7faa44797820  e5 e5 e5 e5                                      ....
  8755 ms  SECKEY_ECParamsToKeySize()
  8755 ms  0xffb ret:0xff
  8755 ms  0xffb SECKEY_CreateECPrivateKey()
  8755 ms  0xffb cx:0x7faa2d106b28
  8755 ms     | 0xffb EC_ValidatePublicKey()
  8755 ms     | 0xffb ret:0x0
  8755 ms  0xffb ret:0x7faa44796820::7faa44796820  20 09 5c 44                                       .\D
  8755 ms  0xffb PK11_PubDeriveWithKDF()
  8755 ms  0xffb seckey:0x7faa44796820
  8755 ms     | 0xffb EC_ValidatePublicKey()
  8755 ms     | 0xffb ret:0x0
  8756 ms  0xffb ret:0x7faa482aea80
  8756 ms  0xffb PK11_DeriveWithFlags()
  8756 ms  0xffb basekey:0x7faa482aea80
  8756 ms     | 0xffb PK11_DeriveWithTemplate()
  8756 ms  0xffb ret:0x7faa43576880
  8756 ms  0xffb PK11_Derive()
  8756 ms  0xffb basekey:0x7faa43576880
  8756 ms     | 0xffb PK11_DeriveWithTemplate()
  8756 ms  0xffb ret:0x7faa48b30580
  8756 ms  0xffb SECKEY_DestroyPrivateKey()
  8756 ms  0xffb privk:0x7faa44796820::7faa44796820  20 09 5c 44                                       .\D
  8756 ms  0xffb privk:0x7faa44796820::7faa44796820  e5 e5 e5 e5                                      ....
  8756 ms  0xffb PK11_Encrypt()
  8756 ms  0xffb symkey:0x7faa48d0a000
           /* TID 0x1003 */
  8761 ms  0x1003 PR_Close()
  8761 ms  0x1003 fd:0x7faa445f47c0
           /* TID 0xffb */
  8762 ms  0xffb SSL_AuthCertificateComplete()
  8762 ms  0xffb fd:0x7faa43591310
  8762 ms  0xffb err:0x0
  8762 ms  0xffb PK11_Encrypt()
  8762 ms  0xffb symkey:0x7faa48d0a000
  8762 ms  0xffb PK11_Encrypt()
  8762 ms  0xffb symkey:0x7faa48d0a000
  8798 ms  0xffb SECKEY_DestroyPrivateKey()
  8798 ms  0xffb privk:0x7faa46f1b820::7faa46f1b820  50 2b 5d 44                                      P+]D
  8799 ms  0xffb privk:0x7faa46f1b820::7faa46f1b820  e5 e5 e5 e5                                      ....
  8799 ms  0xffb SECKEY_DestroyPrivateKey()
  8799 ms  0xffb privk:0x7faa46f16820::7faa46f16820  b0 10 2f 44                                      ../D
  8799 ms  0xffb privk:0x7faa46f16820::7faa46f16820  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
  8887 ms  0x1003 PR_Close()
  8887 ms  0x1003 fd:0x7faa3f7ff700
           /* TID 0xffb */
  8896 ms  0xffb SECKEY_DestroyPrivateKey()
  8896 ms  0xffb privk:0x7faa46f2c820::7faa46f2c820  f0 b6 20 44                                      .. D
  8897 ms  0xffb privk:0x7faa46f2c820::7faa46f2c820  e5 e5 e5 e5                                      ....
  8897 ms  0xffb SECKEY_DestroyPrivateKey()
  8897 ms  0xffb privk:0x7faa46f2a820::7faa46f2a820  c0 74 03 44                                      .t.D
  8897 ms  0xffb privk:0x7faa46f2a820::7faa46f2a820  e5 e5 e5 e5                                      ....
  8901 ms  0xffb SECKEY_DestroyPrivateKey()
  8901 ms  0xffb privk:0x7faa46f2d020::7faa46f2d020  10 1f 2f 44                                      ../D
  8901 ms  0xffb privk:0x7faa46f2d020::7faa46f2d020  e5 e5 e5 e5                                      ....
  8901 ms  0xffb SECKEY_DestroyPrivateKey()
  8901 ms  0xffb privk:0x7faa443c1820::7faa443c1820  c0 f4 26 44                                      ..&D
  8902 ms  0xffb privk:0x7faa443c1820::7faa443c1820  e5 e5 e5 e5                                      ....
  8917 ms  SECKEY_ECParamsToKeySize()
  8917 ms  0xffb ret:0xff
  8917 ms  0xffb SECKEY_CreateECPrivateKey()
  8917 ms  0xffb cx:0x7faa484582c8
  8920 ms     | 0xffb EC_ValidatePublicKey()
  8920 ms     | 0xffb ret:0x0
  8920 ms  0xffb ret:0x7faa46f29020::7faa46f29020  10 1f 2f 44                                      ../D
  8920 ms  0xffb PK11_PubDeriveWithKDF()
  8920 ms  0xffb seckey:0x7faa46f29020
  8920 ms     | 0xffb EC_ValidatePublicKey()
  8920 ms     | 0xffb ret:0x0
  8921 ms  0xffb ret:0x7faa482aea80
  8921 ms  0xffb PK11_DeriveWithFlags()
  8921 ms  0xffb basekey:0x7faa482aea80
  8921 ms     | 0xffb PK11_DeriveWithTemplate()
  8921 ms  0xffb ret:0x7faa48dac900
  8921 ms  0xffb PK11_Derive()
  8921 ms  0xffb basekey:0x7faa48dac900
  8921 ms     | 0xffb PK11_DeriveWithTemplate()
  8921 ms  0xffb ret:0x7faa48daca00
  8921 ms  0xffb SECKEY_DestroyPrivateKey()
  8921 ms  0xffb privk:0x7faa46f29020::7faa46f29020  10 1f 2f 44                                      ../D
  8922 ms  0xffb privk:0x7faa46f29020::7faa46f29020  e5 e5 e5 e5                                      ....
  8922 ms  0xffb PK11_Encrypt()
  8922 ms  0xffb symkey:0x7faa48dacd80
  8948 ms  0xffb PR_Connect()
  8948 ms  0xffb fd:0x7faa446fef40
           /* TID 0x1003 */
  8976 ms  0x1003 PR_Close()
  8976 ms  0x1003 fd:0x7faa4126da90
  9000 ms  0x1003 PR_Close()
  9000 ms  0x1003 fd:0x7faa4126da90
           /* TID 0x1094 */
  9001 ms  0x1094 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9001 ms  0x1094 ret:0x0
  9001 ms  0x1094 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9001 ms  0x1094 ret:0x0
           /* TID 0x1003 */
  9525 ms  0x1003 PR_Close()
  9525 ms  0x1003 fd:0x7faa3deea040
  9525 ms  0x1003 PR_Close()
  9525 ms  0x1003 fd:0x7faa446e5c10
  9525 ms  0x1003 PR_Close()
  9525 ms  0x1003 fd:0x7faa447027f0
  9525 ms  0x1003 PR_Close()
  9525 ms  0x1003 fd:0x7faa44702d60
  9525 ms  0x1003 PR_Close()
  9525 ms  0x1003 fd:0x7faa44702df0
  9527 ms  0x1003 PR_Close()
  9527 ms  0x1003 fd:0x7faa3deea040
  9527 ms  0x1003 PR_Close()
  9527 ms  0x1003 fd:0x7faa446e5c10
  9527 ms  0x1003 PR_Close()
  9527 ms  0x1003 fd:0x7faa447027f0
  9527 ms  0x1003 PR_Close()
  9527 ms  0x1003 fd:0x7faa44702d60
  9527 ms  0x1003 PR_Close()
  9527 ms  0x1003 fd:0x7faa44702df0
  9527 ms  0x1003 PR_Close()
  9527 ms  0x1003 fd:0x7faa44702ee0
  9527 ms  0x1003 PR_Close()
  9527 ms  0x1003 fd:0x7faa447210d0
  9527 ms  0x1003 PR_Close()
  9527 ms  0x1003 fd:0x7faa44721250
  9527 ms  0x1003 PR_Close()
  9527 ms  0x1003 fd:0x7faa447212e0
  9527 ms  0x1003 PR_Close()
  9527 ms  0x1003 fd:0x7faa447213a0
  9527 ms  0x1003 PR_Close()
  9527 ms  0x1003 fd:0x7faa44721f10
  9527 ms  0x1003 PR_Close()
  9527 ms  0x1003 fd:0x7faa44733880
           /* TID 0xffb */
 10005 ms  SECKEY_ECParamsToKeySize()
 10005 ms  0xffb ret:0xff
 10005 ms  0xffb SECKEY_CreateECPrivateKey()
 10005 ms  0xffb cx:0x7faa442390a8
 10007 ms     | 0xffb EC_ValidatePublicKey()
 10007 ms     | 0xffb ret:0x0
 10007 ms  0xffb ret:0x7faa446c3820::7faa446c3820  c0 f4 26 44                                      ..&D
 10007 ms  0xffb PK11_PubDeriveWithKDF()
 10007 ms  0xffb seckey:0x7faa446c3820
 10007 ms     | 0xffb EC_ValidatePublicKey()
 10007 ms     | 0xffb ret:0x0
 10009 ms  0xffb ret:0x7faa482aea80
 10009 ms  0xffb PK11_DeriveWithFlags()
 10009 ms  0xffb basekey:0x7faa482aea80
 10009 ms     | 0xffb PK11_DeriveWithTemplate()
 10009 ms  0xffb ret:0x7faa41246500
 10009 ms  0xffb PK11_Derive()
 10009 ms  0xffb basekey:0x7faa41246500
 10009 ms     | 0xffb PK11_DeriveWithTemplate()
 10009 ms  0xffb ret:0x7faa41246600
 10009 ms  0xffb SECKEY_DestroyPrivateKey()
 10009 ms  0xffb privk:0x7faa446c3820::7faa446c3820  c0 f4 26 44                                      ..&D
 10010 ms  0xffb privk:0x7faa446c3820::7faa446c3820  e5 e5 e5 e5                                      ....
 10010 ms  0xffb PK11_Encrypt()
 10010 ms  0xffb symkey:0x7faa41246a00
 10015 ms  0xffb SSL_AuthCertificateComplete()
 10015 ms  0xffb fd:0x7faa4126df10
 10015 ms  0xffb err:0x0
 10016 ms  0xffb SSL_AuthCertificateComplete()
 10016 ms  0xffb fd:0x7faa4454b070
 10016 ms  0xffb err:0x0
 10018 ms  SECKEY_ECParamsToKeySize()
 10018 ms  0xffb ret:0xff
 10018 ms  0xffb SECKEY_CreateECPrivateKey()
 10018 ms  0xffb cx:0x7faa2d1064a8
 10019 ms     | 0xffb EC_ValidatePublicKey()
 10019 ms     | 0xffb ret:0x0
 10019 ms  0xffb ret:0x7faa44780020::7faa44780020  20 1e 2f 44                                       ./D
 10019 ms  0xffb PK11_PubDeriveWithKDF()
 10019 ms  0xffb seckey:0x7faa44780020
 10019 ms     | 0xffb EC_ValidatePublicKey()
 10019 ms     | 0xffb ret:0x0
 10021 ms  0xffb ret:0x7faa482aea80
 10021 ms  0xffb PK11_DeriveWithFlags()
 10021 ms  0xffb basekey:0x7faa482aea80
 10021 ms     | 0xffb PK11_DeriveWithTemplate()
 10021 ms  0xffb ret:0x7faa4128ee80
 10021 ms  0xffb PK11_Derive()
 10021 ms  0xffb basekey:0x7faa4128ee80
 10021 ms     | 0xffb PK11_DeriveWithTemplate()
 10021 ms  0xffb ret:0x7faa4128f080
 10021 ms  0xffb SECKEY_DestroyPrivateKey()
 10021 ms  0xffb privk:0x7faa44780020::7faa44780020  20 1e 2f 44                                       ./D
 10021 ms  0xffb privk:0x7faa44780020::7faa44780020  e5 e5 e5 e5                                      ....
 10022 ms  0xffb PK11_Encrypt()
 10022 ms  0xffb symkey:0x7faa4128f680
           /* TID 0x1003 */
 10023 ms  0x1003 PR_Close()
 10023 ms  0x1003 fd:0x7faa4439f7f0
 10026 ms  0x1003 PR_Close()
 10026 ms  0x1003 fd:0x7faa4439f5e0
           /* TID 0xffb */
 10027 ms  0xffb SECKEY_DestroyPrivateKey()
 10027 ms  0xffb privk:0x7faa4702f020::7faa4702f020  60 7f 5e 44                                      `.^D
 10027 ms  0xffb privk:0x7faa4702f020::7faa4702f020  e5 e5 e5 e5                                      ....
 10027 ms  0xffb SECKEY_DestroyPrivateKey()
 10027 ms  0xffb privk:0x7faa46f30020::7faa46f30020  10 65 3a 44                                      .e:D
 10032 ms  0xffb privk:0x7faa46f30020::7faa46f30020  e5 e5 e5 e5                                      ....
 10032 ms  0xffb PK11_Encrypt()
 10032 ms  0xffb symkey:0x7faa48d0a000
           /* TID 0x1003 */
 10034 ms  0x1003 PR_Close()
 10034 ms  0x1003 fd:0x7faa44702d60
           /* TID 0xffb */
 10037 ms  0xffb SECKEY_DestroyPrivateKey()
 10037 ms  0xffb privk:0x7faa480ea820::7faa480ea820  f0 0b 72 44                                      ..rD
 10037 ms  0xffb privk:0x7faa480ea820::7faa480ea820  e5 e5 e5 e5                                      ....
 10037 ms  0xffb SECKEY_DestroyPrivateKey()
 10037 ms  0xffb privk:0x7faa480e7820::7faa480e7820  60 bf 6f 44                                      `.oD
 10037 ms  0xffb privk:0x7faa480e7820::7faa480e7820  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
 10038 ms  0x1003 PR_Close()
 10038 ms  0x1003 fd:0x7faa443fe040
 10039 ms  0x1003 PR_Close()
 10039 ms  0x1003 fd:0x7faa3f7ff4c0
           /* TID 0xffb */
 10039 ms  0xffb PK11_Encrypt()
 10039 ms  0xffb symkey:0x7faa48dacd80
 10040 ms  0xffb PK11_Encrypt()
 10040 ms  0xffb symkey:0x7faa41246a00
 10041 ms  0xffb SSL_AuthCertificateComplete()
 10041 ms  0xffb fd:0x7faa445f4100
 10041 ms  0xffb err:0x0
 10041 ms  0xffb PK11_Encrypt()
 10041 ms  0xffb symkey:0x7faa48dacd80
 10043 ms  0xffb PK11_Encrypt()
 10043 ms  0xffb symkey:0x7faa4128f680
 10043 ms  0xffb PK11_Encrypt()
 10043 ms  0xffb symkey:0x7faa48dacd80
 10306 ms  0xffb SECKEY_DestroyPrivateKey()
 10306 ms  0xffb privk:0x7faa481ef020::7faa481ef020  40 fc f4 46                                      @..F
 10307 ms  0xffb privk:0x7faa481ef020::7faa481ef020  e5 e5 e5 e5                                      ....
 10307 ms  0xffb SECKEY_DestroyPrivateKey()
 10307 ms  0xffb privk:0x7faa481ec020::7faa481ec020  10 9f 7e 44                                      ..~D
 10307 ms  0xffb privk:0x7faa481ec020::7faa481ec020  e5 e5 e5 e5                                      ....
 10308 ms  0xffb PR_Close()
 10308 ms  0xffb fd:0x7faa4126df10
 10308 ms     | 0xffb PK11_Encrypt()
 10308 ms     | 0xffb symkey:0x7faa41246a00
 10341 ms  0xffb SECKEY_DestroyPrivateKey()
 10341 ms  0xffb privk:0x7faa46f24020::7faa46f24020  c0 74 5e 44                                      .t^D
 10341 ms  0xffb privk:0x7faa46f24020::7faa46f24020  e5 e5 e5 e5                                      ....
 10342 ms  0xffb SECKEY_DestroyPrivateKey()
 10342 ms  0xffb privk:0x7faa46f20020::7faa46f20020  a0 b6 20 44                                      .. D
 10343 ms  0xffb privk:0x7faa46f20020::7faa46f20020  e5 e5 e5 e5                                      ....
 10343 ms  0xffb PR_Close()
 10343 ms  0xffb fd:0x7faa445f4100
 10343 ms     | 0xffb PK11_Encrypt()
 10343 ms     | 0xffb symkey:0x7faa4128f680
 10415 ms  0xffb SSL_ImportFD()
 10415 ms  0xffb ret:0x7faa43591370
 10415 ms  0xffb SSL_AuthCertificateHook()
 10415 ms  0xffb fd:0x7faa43591370
 10415 ms  0xffb ret:0x0
 10415 ms  0xffb PR_Connect()
 10415 ms  0xffb fd:0x7faa43591370
 10475 ms  0xffb SECKEY_CreateECPrivateKey()
 10475 ms  0xffb cx:0x7faa2d1064a8
 10477 ms     | 0xffb EC_ValidatePublicKey()
 10477 ms     | 0xffb ret:0x0
 10478 ms  0xffb ret:0x7faa446ba020::7faa446ba020  c0 29 5d 44                                      .)]D
 10478 ms  0xffb SECKEY_CreateECPrivateKey()
 10478 ms  0xffb cx:0x7faa2d1064a8
 10480 ms     | 0xffb EC_ValidatePublicKey()
 10485 ms     | 0xffb ret:0x0
 10485 ms  0xffb ret:0x7faa44788820::7faa44788820  e0 2c 5d 44                                      .,]D
 10639 ms  SECKEY_ECParamsToKeySize()
 10641 ms  0xffb ret:0x100
 10641 ms  0xffb SECKEY_CreateECPrivateKey()
 10641 ms  0xffb cx:0x7faa2d1064a8
 10643 ms     | 0xffb EC_ValidatePublicKey()
 10647 ms     | 0xffb ret:0x0
 10647 ms  0xffb ret:0x7faa4479b020::7faa4479b020  70 0e 6a 44                                      p.jD
 10648 ms  0xffb PK11_PubDeriveWithKDF()
 10648 ms  0xffb seckey:0x7faa4479b020
 10648 ms     | 0xffb EC_ValidatePublicKey()
 10653 ms     | 0xffb ret:0x0
 10658 ms  0xffb ret:0x7faa4128f080
 10658 ms  0xffb PK11_DeriveWithFlags()
 10658 ms  0xffb basekey:0x7faa4128f080
 10658 ms     | 0xffb PK11_DeriveWithTemplate()
 10658 ms  0xffb ret:0x7faa4128ee80
 10658 ms  0xffb PK11_Derive()
 10658 ms  0xffb basekey:0x7faa4128ee80
 10658 ms     | 0xffb PK11_DeriveWithTemplate()
 10658 ms  0xffb ret:0x7faa41246600
 10658 ms  0xffb SECKEY_DestroyPrivateKey()
 10658 ms  0xffb privk:0x7faa4479b020::7faa4479b020  70 0e 6a 44                                      p.jD
 10658 ms  0xffb privk:0x7faa4479b020::7faa4479b020  e5 e5 e5 e5                                      ....
 10659 ms  0xffb PK11_Encrypt()
 10659 ms  0xffb symkey:0x7faa4128f280
 10659 ms  0xffb SSL_AuthCertificateComplete()
 10659 ms  0xffb fd:0x7faa43591370
 10659 ms  0xffb err:0x0
 10660 ms  0xffb PK11_Encrypt()
 10660 ms  0xffb symkey:0x7faa4128f280
 10783 ms  0xffb SECKEY_DestroyPrivateKey()
 10783 ms  0xffb privk:0x7faa44788820::7faa44788820  e0 2c 5d 44                                      .,]D
 10784 ms  0xffb privk:0x7faa44788820::7faa44788820  e5 e5 e5 e5                                      ....
 10784 ms  0xffb SECKEY_DestroyPrivateKey()
 10784 ms  0xffb privk:0x7faa446ba020::7faa446ba020  c0 29 5d 44                                      .)]D
 10784 ms  0xffb privk:0x7faa446ba020::7faa446ba020  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
 10973 ms  0x1003 PR_Close()
 10973 ms  0x1003 fd:0x7faa445f4340
 11005 ms  0x1003 PR_Close()
 11005 ms  0x1003 fd:0x7faa43591430
           /* TID 0xffb */
 11406 ms  0xffb SSL_ImportFD()
 11406 ms  0xffb ret:0x7faa3deea160
 11406 ms  0xffb SSL_AuthCertificateHook()
 11406 ms  0xffb fd:0x7faa3deea160
 11406 ms  0xffb ret:0x0
 11406 ms  0xffb PR_Connect()
 11406 ms  0xffb fd:0x7faa3deea160
 11639 ms  0xffb SECKEY_CreateECPrivateKey()
 11639 ms  0xffb cx:0x7faa2d1040e8
 11641 ms     | 0xffb EC_ValidatePublicKey()
 11641 ms     | 0xffb ret:0x0
 11641 ms  0xffb ret:0x7faa2d14c020::7faa2d14c020  a0 f1 d9 3d                                      ...=
 11641 ms  0xffb SECKEY_CreateECPrivateKey()
 11641 ms  0xffb cx:0x7faa2d1040e8
 11643 ms     | 0xffb EC_ValidatePublicKey()
 11653 ms     | 0xffb ret:0x0
 11654 ms  0xffb ret:0x7faa2d155820::7faa2d155820  e0 42 43 3f                                      .BC?
 11890 ms  0xffb SSL_AuthCertificateComplete()
 11890 ms  0xffb fd:0x7faa3deea160
 11890 ms  0xffb err:0x0
 11906 ms  SECKEY_ECParamsToKeySize()
 11906 ms  0xffb ret:0x100
 11906 ms  0xffb SECKEY_CreateECPrivateKey()
 11906 ms  0xffb cx:0x7faa2d1040e8
 11908 ms     | 0xffb EC_ValidatePublicKey()
 11913 ms     | 0xffb ret:0x0
 11913 ms  0xffb ret:0x7faa2d158820::7faa2d158820  50 46 43 3f                                      PFC?
 11914 ms  0xffb PK11_PubDeriveWithKDF()
 11914 ms  0xffb seckey:0x7faa2d158820
 11914 ms     | 0xffb EC_ValidatePublicKey()
 11919 ms     | 0xffb ret:0x0
 11924 ms  0xffb ret:0x7faa4128f080
 11924 ms  0xffb PK11_DeriveWithFlags()
 11924 ms  0xffb basekey:0x7faa4128f080
 11924 ms     | 0xffb PK11_DeriveWithTemplate()
 11924 ms  0xffb ret:0x7faa41246500
 11924 ms  0xffb PK11_Derive()
 11924 ms  0xffb basekey:0x7faa41246500
 11924 ms     | 0xffb PK11_DeriveWithTemplate()
 11924 ms  0xffb ret:0x7faa482aea80
 11924 ms  0xffb SECKEY_DestroyPrivateKey()
 11924 ms  0xffb privk:0x7faa2d158820::7faa2d158820  50 46 43 3f                                      PFC?
 11925 ms  0xffb privk:0x7faa2d158820::7faa2d158820  e5 e5 e5 e5                                      ....
 11925 ms  0xffb PK11_Encrypt()
 11925 ms  0xffb symkey:0x7faa41246680
 11927 ms  0xffb PK11_Encrypt()
 11927 ms  0xffb symkey:0x7faa41246680
 12122 ms  0xffb SSL_ImportFD()
 12122 ms  0xffb ret:0x7faa3deea8e0
 12122 ms  0xffb SSL_AuthCertificateHook()
 12122 ms  0xffb fd:0x7faa3deea8e0
 12122 ms  0xffb ret:0x0
 12122 ms  0xffb PR_Connect()
 12122 ms  0xffb fd:0x7faa3deea8e0
 12159 ms  0xffb SECKEY_DestroyPrivateKey()
 12159 ms  0xffb privk:0x7faa2d155820::7faa2d155820  e0 42 43 3f                                      .BC?
 12159 ms  0xffb privk:0x7faa2d155820::7faa2d155820  e5 e5 e5 e5                                      ....
 12159 ms  0xffb SECKEY_DestroyPrivateKey()
 12159 ms  0xffb privk:0x7faa2d14c020::7faa2d14c020  a0 f1 d9 3d                                      ...=
 12159 ms  0xffb privk:0x7faa2d14c020::7faa2d14c020  e5 e5 e5 e5                                      ....
 12176 ms  0xffb SECKEY_CreateECPrivateKey()
 12176 ms  0xffb cx:0x7faa4423b128
 12179 ms     | 0xffb EC_ValidatePublicKey()
 12179 ms     | 0xffb ret:0x0
 12179 ms  0xffb ret:0x7faa2d14c020::7faa2d14c020  b0 7f d8 3d                                      ...=
 12180 ms  0xffb SECKEY_CreateECPrivateKey()
 12180 ms  0xffb cx:0x7faa4423b128
 12182 ms     | 0xffb EC_ValidatePublicKey()
 12187 ms     | 0xffb ret:0x0
 12187 ms  0xffb ret:0x7faa2d155820::7faa2d155820  e0 42 43 3f                                      .BC?
 12230 ms  0xffb PK11_Encrypt()
 12230 ms  0xffb symkey:0x7faa47092600
 12231 ms  0xffb PK11_Encrypt()
 12231 ms  0xffb symkey:0x7faa43575c00
 12242 ms  SECKEY_ECParamsToKeySize()
 12242 ms  0xffb ret:0xff
 12242 ms  0xffb SECKEY_CreateECPrivateKey()
 12242 ms  0xffb cx:0x7faa4423b128
 12244 ms     | 0xffb EC_ValidatePublicKey()
 12244 ms     | 0xffb ret:0x0
 12244 ms  0xffb ret:0x7faa2d159820::7faa2d159820  80 48 43 3f                                      .HC?
 12244 ms  0xffb PK11_PubDeriveWithKDF()
 12244 ms  0xffb seckey:0x7faa2d159820
 12244 ms     | 0xffb EC_ValidatePublicKey()
 12244 ms     | 0xffb ret:0x0
 12246 ms  0xffb ret:0x7faa4128f080
 12246 ms  0xffb PK11_DeriveWithFlags()
 12246 ms  0xffb basekey:0x7faa4128f080
 12246 ms     | 0xffb PK11_DeriveWithTemplate()
 12246 ms  0xffb ret:0x7faa3dd4b800
 12246 ms  0xffb PK11_Derive()
 12246 ms  0xffb basekey:0x7faa3dd4b800
 12246 ms     | 0xffb PK11_DeriveWithTemplate()
 12246 ms  0xffb ret:0x7faa3dd4b900
 12246 ms  0xffb SECKEY_DestroyPrivateKey()
 12246 ms  0xffb privk:0x7faa2d159820::7faa2d159820  80 48 43 3f                                      .HC?
 12246 ms  0xffb privk:0x7faa2d159820::7faa2d159820  e5 e5 e5 e5                                      ....
 12247 ms  0xffb PK11_Encrypt()
 12247 ms  0xffb symkey:0x7faa3dd86080
 12247 ms  0xffb SSL_AuthCertificateComplete()
 12247 ms  0xffb fd:0x7faa3deea8e0
 12247 ms  0xffb err:0x0
 12248 ms  0xffb PK11_Encrypt()
 12248 ms  0xffb symkey:0x7faa3dd86080
 12249 ms  0xffb PK11_Encrypt()
 12249 ms  0xffb symkey:0x7faa3dd86080
 12298 ms  0xffb SECKEY_DestroyPrivateKey()
 12298 ms  0xffb privk:0x7faa2d155820::7faa2d155820  e0 42 43 3f                                      .BC?
 12298 ms  0xffb privk:0x7faa2d155820::7faa2d155820  e5 e5 e5 e5                                      ....
 12298 ms  0xffb SECKEY_DestroyPrivateKey()
 12298 ms  0xffb privk:0x7faa2d14c020::7faa2d14c020  b0 7f d8 3d                                      ...=
 12299 ms  0xffb privk:0x7faa2d14c020::7faa2d14c020  e5 e5 e5 e5                                      ....
 12299 ms  0xffb PK11_Encrypt()
 12299 ms  0xffb symkey:0x7faa3dd86080
           /* TID 0x1003 */
 12367 ms  0x1003 PR_Close()
 12367 ms  0x1003 fd:0x7faa3e690b80
 12369 ms  0x1003 PR_Close()
 12369 ms  0x1003 fd:0x7faa3e690b80
 12410 ms  0x1003 PR_Close()
 12410 ms  0x1003 fd:0x7faa3f440be0
 12675 ms  0x1003 PR_Close()
 12675 ms  0x1003 fd:0x7faa3deea910
           /* TID 0xffb */
 12717 ms  0xffb SSL_ImportFD()
 12717 ms  0xffb ret:0x7faa3ffc8f40
 12717 ms  0xffb SSL_AuthCertificateHook()
 12717 ms  0xffb fd:0x7faa3ffc8f40
 12717 ms  0xffb ret:0x0
 12717 ms  0xffb PR_Connect()
 12717 ms  0xffb fd:0x7faa3ffc8f40
 12968 ms  0xffb SSL_ImportFD()
 12968 ms  0xffb ret:0x7faa4439fb20
 12968 ms  0xffb SSL_AuthCertificateHook()
 12968 ms  0xffb fd:0x7faa4439fb20
 12968 ms  0xffb ret:0x0
 12968 ms  0xffb PR_Connect()
 12968 ms  0xffb fd:0x7faa4439fb20
 13011 ms  0xffb SECKEY_CreateECPrivateKey()
 13011 ms  0xffb cx:0x7faa4423b608
 13013 ms     | 0xffb EC_ValidatePublicKey()
 13013 ms     | 0xffb ret:0x0
 13013 ms  0xffb ret:0x7faa2d15b020::7faa2d15b020  40 fc bc 3f                                      @..?
 13013 ms  0xffb SECKEY_CreateECPrivateKey()
 13013 ms  0xffb cx:0x7faa4423b608
 13015 ms     | 0xffb EC_ValidatePublicKey()
 13022 ms     | 0xffb ret:0x0
 13022 ms  0xffb ret:0x7faa2d162020::7faa2d162020  00 fb bc 3f                                      ...?
 13045 ms  0xffb PR_Close()
 13045 ms  0xffb fd:0x7faa44219790
 13053 ms  0xffb SSL_ImportFD()
 13053 ms  0xffb ret:0x7faa3ef4fc10
 13053 ms  0xffb SSL_AuthCertificateHook()
 13053 ms  0xffb fd:0x7faa3ef4fc10
 13053 ms  0xffb ret:0x0
 13053 ms  0xffb PR_Connect()
 13053 ms  0xffb fd:0x7faa3ef4fc10
 13259 ms  0xffb SECKEY_CreateECPrivateKey()
 13259 ms  0xffb cx:0x7faa4423bae8
 13261 ms     | 0xffb EC_ValidatePublicKey()
 13261 ms     | 0xffb ret:0x0
 13261 ms  0xffb ret:0x7faa3dd5a820::7faa3dd5a820  20 f9 24 41                                       .$A
 13261 ms  0xffb SECKEY_CreateECPrivateKey()
 13261 ms  0xffb cx:0x7faa4423bae8
 13263 ms     | 0xffb EC_ValidatePublicKey()
 13270 ms     | 0xffb ret:0x0
 13270 ms  0xffb ret:0x7faa3dd6c820::7faa3dd6c820  20 7e 70 43                                       ~pC
 13303 ms  SECKEY_ECParamsToKeySize()
 13303 ms  0xffb ret:0x100
 13303 ms  0xffb SECKEY_CreateECPrivateKey()
 13303 ms  0xffb cx:0x7faa4423b608
 13304 ms     | 0xffb EC_ValidatePublicKey()
 13307 ms     | 0xffb ret:0x0
 13307 ms  0xffb ret:0x7faa3de44820::7faa3de44820  f0 76 0e 44                                      .v.D
 13307 ms  0xffb PK11_PubDeriveWithKDF()
 13307 ms  0xffb seckey:0x7faa3de44820
 13307 ms     | 0xffb EC_ValidatePublicKey()
 13308 ms     | 0xffb ret:0x0
 13311 ms  0xffb ret:0x7faa4128f080
 13311 ms  0xffb PK11_DeriveWithFlags()
 13311 ms  0xffb basekey:0x7faa4128f080
 13311 ms     | 0xffb PK11_DeriveWithTemplate()
 13311 ms  0xffb ret:0x7faa3e16bd80
 13311 ms  0xffb PK11_Derive()
 13311 ms  0xffb basekey:0x7faa3e16bd80
 13311 ms     | 0xffb PK11_DeriveWithTemplate()
 13311 ms  0xffb ret:0x7faa3e16c600
 13311 ms  0xffb SECKEY_DestroyPrivateKey()
 13311 ms  0xffb privk:0x7faa3de44820::7faa3de44820  f0 76 0e 44                                      .v.D
 13311 ms  0xffb privk:0x7faa3de44820::7faa3de44820  e5 e5 e5 e5                                      ....
 13311 ms  0xffb PK11_Encrypt()
 13311 ms  0xffb symkey:0x7faa3e16ce80
 13311 ms  0xffb SSL_AuthCertificateComplete()
 13311 ms  0xffb fd:0x7faa3ffc8f40
 13311 ms  0xffb err:0x0
 13312 ms  0xffb PK11_Encrypt()
 13312 ms  0xffb symkey:0x7faa3e16ce80
 13312 ms  0xffb SSL_ImportFD()
 13312 ms  0xffb ret:0x7faa4123af70
 13312 ms  0xffb SSL_AuthCertificateHook()
 13312 ms  0xffb fd:0x7faa4123af70
 13312 ms  0xffb ret:0x0
 13312 ms  0xffb PR_Connect()
 13312 ms  0xffb fd:0x7faa4123af70
 13370 ms  0xffb SECKEY_CreateECPrivateKey()
 13370 ms  0xffb cx:0x7faa4423bc88
 13372 ms     | 0xffb EC_ValidatePublicKey()
 13372 ms     | 0xffb ret:0x0
 13372 ms  0xffb ret:0x7faa3de44820::7faa3de44820  00 71 0e 44                                      .q.D
 13372 ms  0xffb SECKEY_CreateECPrivateKey()
 13372 ms  0xffb cx:0x7faa4423bc88
 13374 ms     | 0xffb EC_ValidatePublicKey()
 13379 ms     | 0xffb ret:0x0
 13379 ms  0xffb ret:0x7faa3de4e820::7faa3de4e820  10 b5 20 44                                      .. D
 13606 ms  0xffb SECKEY_DestroyPrivateKey()
 13606 ms  0xffb privk:0x7faa2d162020::7faa2d162020  00 fb bc 3f                                      ...?
 13606 ms  0xffb privk:0x7faa2d162020::7faa2d162020  e5 e5 e5 e5                                      ....
 13606 ms  0xffb SECKEY_DestroyPrivateKey()
 13606 ms  0xffb privk:0x7faa2d15b020::7faa2d15b020  40 fc bc 3f                                      @..?
 13607 ms  0xffb privk:0x7faa2d15b020::7faa2d15b020  e5 e5 e5 e5                                      ....
 13625 ms  0xffb SECKEY_CreateECPrivateKey()
 13625 ms  0xffb cx:0x7faa4423bfc8
 13626 ms     | 0xffb EC_ValidatePublicKey()
 13626 ms     | 0xffb ret:0x0
 13627 ms  0xffb ret:0x7faa2d15b020::7faa2d15b020  a0 fb bc 3f                                      ...?
 13627 ms  0xffb SECKEY_CreateECPrivateKey()
 13627 ms  0xffb cx:0x7faa4423bfc8
 13629 ms     | 0xffb EC_ValidatePublicKey()
 13635 ms     | 0xffb ret:0x0
 13635 ms  0xffb ret:0x7faa2d162020::7faa2d162020  70 fe bc 3f                                      p..?
 13684 ms  SECKEY_ECParamsToKeySize()
 13684 ms  0xffb ret:0xff
 13684 ms  0xffb SECKEY_CreateECPrivateKey()
 13684 ms  0xffb cx:0x7faa4423bc88
 13686 ms     | 0xffb EC_ValidatePublicKey()
 13686 ms     | 0xffb ret:0x0
 13686 ms  0xffb ret:0x7faa3f212820::7faa3f212820  30 18 2f 44                                      0./D
 13686 ms  0xffb PK11_PubDeriveWithKDF()
 13686 ms  0xffb seckey:0x7faa3f212820
 13686 ms     | 0xffb EC_ValidatePublicKey()
 13686 ms     | 0xffb ret:0x0
 13688 ms  0xffb ret:0x7faa4128f080
 13688 ms  0xffb PK11_DeriveWithFlags()
 13688 ms  0xffb basekey:0x7faa4128f080
 13688 ms     | 0xffb PK11_DeriveWithTemplate()
 13688 ms  0xffb ret:0x7faa3e435d80
 13688 ms  0xffb PK11_Derive()
 13688 ms  0xffb basekey:0x7faa3e435d80
 13688 ms     | 0xffb PK11_DeriveWithTemplate()
 13689 ms  0xffb ret:0x7faa3e691d00
 13689 ms  0xffb SECKEY_DestroyPrivateKey()
 13689 ms  0xffb privk:0x7faa3f212820::7faa3f212820  30 18 2f 44                                      0./D
 13689 ms  0xffb privk:0x7faa3f212820::7faa3f212820  e5 e5 e5 e5                                      ....
 13689 ms  0xffb PK11_Encrypt()
 13689 ms  0xffb symkey:0x7faa3e692900
 13690 ms  0xffb SSL_AuthCertificateComplete()
 13690 ms  0xffb fd:0x7faa3ef4fc10
 13690 ms  0xffb err:0x0
 13692 ms  0xffb PK11_Encrypt()
 13692 ms  0xffb symkey:0x7faa3e692900
 13693 ms  0xffb PK11_Encrypt()
 13693 ms  0xffb symkey:0x7faa3e692900
 13694 ms  0xffb PR_Close()
 13694 ms  0xffb fd:0x7faa4454bf10
 13694 ms  0xffb PR_Close()
 13694 ms  0xffb fd:0x7faa3f7ff760
 13746 ms  0xffb PR_Close()
 13746 ms  0xffb fd:0x7faa4454b250
 13746 ms     | 0xffb PK11_Encrypt()
 13746 ms     | 0xffb symkey:0x7faa3f236700
 13886 ms  0xffb PR_Close()
 13886 ms  0xffb fd:0x7faa4467f9d0
           /* TID 0x1003 */
 13903 ms  0x1003 PR_Close()
 13903 ms  0x1003 fd:0x7faa3dd84dc0
           /* TID 0xffb */
 13935 ms  SECKEY_ECParamsToKeySize()
 13935 ms  0xffb ret:0xff
 13935 ms  0xffb SECKEY_CreateECPrivateKey()
 13935 ms  0xffb cx:0x7faa4423bfc8
 13937 ms     | 0xffb EC_ValidatePublicKey()
 13937 ms     | 0xffb ret:0x0
 13937 ms  0xffb ret:0x7faa3ffe9820::7faa3ffe9820  50 1b 2f 44                                      P./D
 13937 ms  0xffb PK11_PubDeriveWithKDF()
 13937 ms  0xffb seckey:0x7faa3ffe9820
 13937 ms     | 0xffb EC_ValidatePublicKey()
 13937 ms     | 0xffb ret:0x0
 13944 ms  0xffb ret:0x7faa3ef0f880
 13944 ms  0xffb PK11_DeriveWithFlags()
 13944 ms  0xffb basekey:0x7faa3ef0f880
 13944 ms     | 0xffb PK11_DeriveWithTemplate()
 13944 ms  0xffb ret:0x7faa3ef0f500
 13944 ms  0xffb PK11_Derive()
 13944 ms  0xffb basekey:0x7faa3ef0f500
 13944 ms     | 0xffb PK11_DeriveWithTemplate()
 13944 ms  0xffb ret:0x7faa4128f080
 13944 ms  0xffb SECKEY_DestroyPrivateKey()
 13944 ms  0xffb privk:0x7faa3ffe9820::7faa3ffe9820  50 1b 2f 44                                      P./D
 13945 ms  0xffb privk:0x7faa3ffe9820::7faa3ffe9820  e5 e5 e5 e5                                      ....
 13945 ms  0xffb PK11_Encrypt()
 13945 ms  0xffb symkey:0x7faa3efb6200
 13946 ms  0xffb SSL_AuthCertificateComplete()
 13946 ms  0xffb fd:0x7faa4123af70
 13946 ms  0xffb err:0x0
 13946 ms  0xffb PK11_Encrypt()
 13946 ms  0xffb symkey:0x7faa3efb6200
 13974 ms  0xffb PR_Close()
 13974 ms  0xffb fd:0x7faa445bd5e0
 13974 ms     | 0xffb PK11_Encrypt()
 13974 ms     | 0xffb symkey:0x7faa44206d80
 14007 ms  0xffb SECKEY_DestroyPrivateKey()
 14007 ms  0xffb privk:0x7faa3de4e820::7faa3de4e820  10 b5 20 44                                      .. D
 14007 ms  0xffb privk:0x7faa3de4e820::7faa3de4e820  e5 e5 e5 e5                                      ....
 14007 ms  0xffb SECKEY_DestroyPrivateKey()
 14007 ms  0xffb privk:0x7faa3de44820::7faa3de44820  00 71 0e 44                                      .q.D
 14007 ms  0xffb privk:0x7faa3de44820::7faa3de44820  e5 e5 e5 e5                                      ....
 14008 ms  0xffb PK11_Encrypt()
 14008 ms  0xffb symkey:0x7faa3e692900
 14030 ms  0xffb PR_Close()
 14030 ms  0xffb fd:0x7faa445f4b50
 14030 ms     | 0xffb PK11_Encrypt()
 14030 ms     | 0xffb symkey:0x7faa487d8180
 14046 ms  0xffb PR_Close()
 14046 ms  0xffb fd:0x7faa4467f940
 14046 ms  0xffb PR_Close()
 14046 ms  0xffb fd:0x7faa4467f880
 14128 ms  0xffb PR_Close()
 14128 ms  0xffb fd:0x7faa443fe2b0
 14128 ms     | 0xffb PK11_Encrypt()
 14128 ms     | 0xffb symkey:0x7faa487d8c80
 14132 ms  0xffb PR_Close()
 14132 ms  0xffb fd:0x7faa440420d0
 14132 ms     | 0xffb PK11_Encrypt()
 14132 ms     | 0xffb symkey:0x7faa48acc680
 14231 ms  SECKEY_ECParamsToKeySize()
 14231 ms  0xffb ret:0x100
 14231 ms  0xffb SECKEY_CreateECPrivateKey()
 14231 ms  0xffb cx:0x7faa4423bae8
 14233 ms     | 0xffb EC_ValidatePublicKey()
 14239 ms     | 0xffb ret:0x0
 14239 ms  0xffb ret:0x7faa3de4c820::7faa3de4c820  80 78 0e 44                                      .x.D
 14240 ms  0xffb PK11_PubDeriveWithKDF()
 14240 ms  0xffb seckey:0x7faa3de4c820
 14240 ms     | 0xffb EC_ValidatePublicKey()
 14245 ms     | 0xffb ret:0x0
 14249 ms  0xffb ret:0x7faa48acc280
 14249 ms  0xffb PK11_DeriveWithFlags()
 14249 ms  0xffb basekey:0x7faa48acc280
 14249 ms     | 0xffb PK11_DeriveWithTemplate()
 14249 ms  0xffb ret:0x7faa487d8e00
 14249 ms  0xffb PK11_Derive()
 14249 ms  0xffb basekey:0x7faa487d8e00
 14250 ms     | 0xffb PK11_DeriveWithTemplate()
 14250 ms  0xffb ret:0x7faa487d8580
 14250 ms  0xffb SECKEY_DestroyPrivateKey()
 14250 ms  0xffb privk:0x7faa3de4c820::7faa3de4c820  80 78 0e 44                                      .x.D
 14250 ms  0xffb privk:0x7faa3de4c820::7faa3de4c820  e5 e5 e5 e5                                      ....
 14250 ms  0xffb PK11_Encrypt()
 14250 ms  0xffb symkey:0x7faa48acc500
 14251 ms  0xffb SSL_AuthCertificateComplete()
 14251 ms  0xffb fd:0x7faa4439fb20
 14251 ms  0xffb err:0x0
 14556 ms  0xffb SECKEY_DestroyPrivateKey()
 14556 ms  0xffb privk:0x7faa3dd6c820::7faa3dd6c820  20 7e 70 43                                       ~pC
 14556 ms  0xffb privk:0x7faa3dd6c820::7faa3dd6c820  e5 e5 e5 e5                                      ....
 14557 ms  0xffb SECKEY_DestroyPrivateKey()
 14557 ms  0xffb privk:0x7faa3dd5a820::7faa3dd5a820  20 f9 24 41                                       .$A
 14557 ms  0xffb privk:0x7faa3dd5a820::7faa3dd5a820  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
 14645 ms  0x1003 PR_Close()
 14645 ms  0x1003 fd:0x7faa3f440be0
           /* TID 0xffb */
 14687 ms  0xffb PK11_Encrypt()
 14687 ms  0xffb symkey:0x7faa41246680
 14690 ms  0xffb SSL_ImportFD()
 14690 ms  0xffb ret:0x7faa440e1580
 14690 ms  0xffb SSL_AuthCertificateHook()
 14690 ms  0xffb fd:0x7faa440e1580
 14690 ms  0xffb ret:0x0
 14690 ms  0xffb PR_Connect()
 14690 ms  0xffb fd:0x7faa440e1580
 14699 ms  0xffb SSL_ImportFD()
 14699 ms  0xffb ret:0x7faa445bd700
 14699 ms  0xffb SSL_AuthCertificateHook()
 14699 ms  0xffb fd:0x7faa445bd700
 14699 ms  0xffb ret:0x0
 14699 ms  0xffb PR_Connect()
 14699 ms  0xffb fd:0x7faa445bd700
 14921 ms  0xffb SECKEY_CreateECPrivateKey()
 14921 ms  0xffb cx:0x7faa4423c168
 14923 ms     | 0xffb EC_ValidatePublicKey()
 14923 ms     | 0xffb ret:0x0
 14923 ms  0xffb ret:0x7faa3dd76820::7faa3dd76820  10 b5 20 44                                      .. D
 14923 ms  0xffb SECKEY_CreateECPrivateKey()
 14923 ms  0xffb cx:0x7faa4423c168
 14925 ms     | 0xffb EC_ValidatePublicKey()
 14930 ms     | 0xffb ret:0x0
 14930 ms  0xffb ret:0x7faa3de4e020::7faa3de4e020  10 7f 0e 44                                      ...D
           /* TID 0x1003 */
 14934 ms  0x1003 PR_Close()
 14934 ms  0x1003 fd:0x7faa3f7ff6a0
           /* TID 0xffb */
 14940 ms  0xffb PK11_Encrypt()
 14940 ms  0xffb symkey:0x7faa41246680
 14941 ms  0xffb SECKEY_CreateECPrivateKey()
 14941 ms  0xffb cx:0x7faa4423c648
 14943 ms     | 0xffb EC_ValidatePublicKey()
 14943 ms     | 0xffb ret:0x0
 14943 ms  0xffb ret:0x7faa3ffe7820::7faa3ffe7820  20 1e 2f 44                                       ./D
 14943 ms  0xffb SECKEY_CreateECPrivateKey()
 14943 ms  0xffb cx:0x7faa4423c648
 14945 ms     | 0xffb EC_ValidatePublicKey()
 14958 ms     | 0xffb ret:0x0
 14958 ms  0xffb ret:0x7faa3fff8820::7faa3fff8820  40 f2 54 44                                      @.TD
           /* TID 0x1003 */
 15026 ms  0x1003 PR_Close()
 15026 ms  0x1003 fd:0x7faa3f7ff5e0
 15026 ms  0x1003 PR_Close()
 15026 ms  0x1003 fd:0x7faa445f4b50
 15026 ms  0x1003 PR_Close()
 15026 ms  0x1003 fd:0x7faa445f4d30
 15026 ms  0x1003 PR_Close()
 15026 ms  0x1003 fd:0x7faa445f4ee0
 15027 ms  0x1003 PR_Close()
 15027 ms  0x1003 fd:0x7faa3f7ff5e0
 15027 ms  0x1003 PR_Close()
 15027 ms  0x1003 fd:0x7faa445f4b50
 15027 ms  0x1003 PR_Close()
 15027 ms  0x1003 fd:0x7faa445f4d30
 15027 ms  0x1003 PR_Close()
 15027 ms  0x1003 fd:0x7faa445f4ee0
 15027 ms  0x1003 PR_Close()
 15027 ms  0x1003 fd:0x7faa445f4f40
 15027 ms  0x1003 PR_Close()
 15027 ms  0x1003 fd:0x7faa4460bd30
 15027 ms  0x1003 PR_Close()
 15027 ms  0x1003 fd:0x7faa4460bdc0
 15027 ms  0x1003 PR_Close()
 15027 ms  0x1003 fd:0x7faa4460be20
 15027 ms  0x1003 PR_Close()
 15027 ms  0x1003 fd:0x7faa4460be80
 15027 ms  0x1003 PR_Close()
 15027 ms  0x1003 fd:0x7faa4467f8b0
 15027 ms  0x1003 PR_Close()
 15027 ms  0x1003 fd:0x7faa4467f910
 15027 ms  0x1003 PR_Close()
 15027 ms  0x1003 fd:0x7faa4467f9d0
           /* TID 0xffb */
 15164 ms  SECKEY_ECParamsToKeySize()
 15165 ms  0xffb ret:0xff
 15165 ms  0xffb SECKEY_CreateECPrivateKey()
 15165 ms  0xffb cx:0x7faa4423c168
 15166 ms     | 0xffb EC_ValidatePublicKey()
 15166 ms     | 0xffb ret:0x0
 15166 ms  0xffb ret:0x7faa42cac820::7faa42cac820  40 2c 5d 44                                      @,]D
 15166 ms  0xffb PK11_PubDeriveWithKDF()
 15166 ms  0xffb seckey:0x7faa42cac820
 15166 ms     | 0xffb EC_ValidatePublicKey()
 15167 ms     | 0xffb ret:0x0
 15169 ms  0xffb ret:0x7faa48acc280
 15170 ms  0xffb PK11_DeriveWithFlags()
 15170 ms  0xffb basekey:0x7faa48acc280
 15170 ms     | 0xffb PK11_DeriveWithTemplate()
 15170 ms  0xffb ret:0x7faa487d8500
 15170 ms  0xffb PK11_Derive()
 15170 ms  0xffb basekey:0x7faa487d8500
 15170 ms     | 0xffb PK11_DeriveWithTemplate()
 15170 ms  0xffb ret:0x7faa48780b80
 15170 ms  0xffb SECKEY_DestroyPrivateKey()
 15170 ms  0xffb privk:0x7faa42cac820::7faa42cac820  40 2c 5d 44                                      @,]D
 15170 ms  0xffb privk:0x7faa42cac820::7faa42cac820  e5 e5 e5 e5                                      ....
 15171 ms  0xffb PK11_Encrypt()
 15171 ms  0xffb symkey:0x7faa487d8b00
 15171 ms  0xffb SSL_AuthCertificateComplete()
 15171 ms  0xffb fd:0x7faa440e1580
 15171 ms  0xffb err:0x0
 15172 ms  0xffb PK11_Encrypt()
 15172 ms  0xffb symkey:0x7faa487d8b00
           /* TID 0x1003 */
 15193 ms  0x1003 PR_Close()
 15193 ms  0x1003 fd:0x7faa4123ae80
           /* TID 0xffb */
 15197 ms  0xffb PK11_Encrypt()
 15197 ms  0xffb symkey:0x7faa41246680
 15199 ms  0xffb PK11_Derive()
 15199 ms  0xffb basekey:0x7faa48780080
 15199 ms     | 0xffb PK11_DeriveWithTemplate()
 15199 ms  0xffb ret:0x7faa48acc280
 15199 ms  0xffb PK11_Encrypt()
 15199 ms  0xffb symkey:0x7faa48781600
           /* TID 0x1003 */
 15202 ms  0x1003 PR_Close()
 15202 ms  0x1003 fd:0x7faa445f4f70
           /* TID 0xffb */
 15204 ms  0xffb SECKEY_DestroyPrivateKey()
 15204 ms  0xffb privk:0x7faa3fff8820::7faa3fff8820  40 f2 54 44                                      @.TD
 15204 ms  0xffb privk:0x7faa3fff8820::7faa3fff8820  e5 e5 e5 e5                                      ....
 15205 ms  0xffb SECKEY_DestroyPrivateKey()
 15205 ms  0xffb privk:0x7faa3ffe7820::7faa3ffe7820  20 1e 2f 44                                       ./D
 15205 ms  0xffb privk:0x7faa3ffe7820::7faa3ffe7820  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
 15213 ms  0x1003 PR_Close()
 15213 ms  0x1003 fd:0x7faa4467fac0
           /* TID 0xffb */
 15251 ms  0xffb PK11_Encrypt()
 15251 ms  0xffb symkey:0x7faa48781600
 15264 ms  0xffb SSL_ImportFD()
 15264 ms  0xffb ret:0x7faa4467fa30
 15264 ms  0xffb SSL_AuthCertificateHook()
 15264 ms  0xffb fd:0x7faa4467fa30
 15264 ms  0xffb ret:0x0
 15264 ms  0xffb PR_Connect()
 15264 ms  0xffb fd:0x7faa4467fa30
 15266 ms  0xffb SSL_ImportFD()
 15266 ms  0xffb ret:0x7faa447ec1c0
 15266 ms  0xffb SSL_AuthCertificateHook()
 15266 ms  0xffb fd:0x7faa447ec1c0
 15266 ms  0xffb ret:0x0
 15266 ms  0xffb PR_Connect()
 15266 ms  0xffb fd:0x7faa447ec1c0
 15267 ms  0xffb SSL_ImportFD()
 15267 ms  0xffb ret:0x7faa447f33d0
 15267 ms  0xffb SSL_AuthCertificateHook()
 15267 ms  0xffb fd:0x7faa447f33d0
 15267 ms  0xffb ret:0x0
 15268 ms  0xffb PR_Connect()
 15268 ms  0xffb fd:0x7faa447f33d0
 15270 ms  0xffb SSL_ImportFD()
 15270 ms  0xffb ret:0x7faa447f36a0
 15270 ms  0xffb SSL_AuthCertificateHook()
 15270 ms  0xffb fd:0x7faa447f36a0
 15270 ms  0xffb ret:0x0
 15270 ms  0xffb PR_Connect()
 15270 ms  0xffb fd:0x7faa447f36a0
 15272 ms  0xffb SSL_ImportFD()
 15272 ms  0xffb ret:0x7faa447f3df0
 15272 ms  0xffb SSL_AuthCertificateHook()
 15272 ms  0xffb fd:0x7faa447f3df0
 15272 ms  0xffb ret:0x0
 15272 ms  0xffb PR_Connect()
 15272 ms  0xffb fd:0x7faa447f3df0
 15283 ms  0xffb PK11_Encrypt()
 15283 ms  0xffb symkey:0x7faa487d8980
 15303 ms  0xffb PR_Connect()
 15303 ms  0xffb fd:0x7faa46f50f40
 15335 ms  0xffb PK11_Encrypt()
 15335 ms  0xffb symkey:0x7faa48d0a000
 15346 ms  0xffb SECKEY_DestroyPrivateKey()
 15346 ms  0xffb privk:0x7faa2d162020::7faa2d162020  70 fe bc 3f                                      p..?
 15346 ms  0xffb privk:0x7faa2d162020::7faa2d162020  e5 e5 e5 e5                                      ....
 15347 ms  0xffb SECKEY_DestroyPrivateKey()
 15347 ms  0xffb privk:0x7faa2d15b020::7faa2d15b020  a0 fb bc 3f                                      ...?
 15347 ms  0xffb privk:0x7faa2d15b020::7faa2d15b020  e5 e5 e5 e5                                      ....
 15347 ms  0xffb PR_Close()
 15347 ms  0xffb fd:0x7faa4123af70
 15347 ms     | 0xffb PK11_Encrypt()
 15347 ms     | 0xffb symkey:0x7faa3efb6200
 15361 ms  0xffb SSL_ImportFD()
 15362 ms  0xffb ret:0x7faa46f50e80
 15362 ms  0xffb SSL_AuthCertificateHook()
 15362 ms  0xffb fd:0x7faa46f50e80
 15362 ms  0xffb ret:0x0
 15362 ms  0xffb PR_Connect()
 15362 ms  0xffb fd:0x7faa46f50e80
 15393 ms  0xffb PK11_Encrypt()
 15393 ms  0xffb symkey:0x7faa47092600
           /* TID 0x1003 */
 15400 ms  0x1003 PR_Close()
 15400 ms  0x1003 fd:0x7faa3f7ff2e0
           /* TID 0xffb */
 15402 ms  0xffb SECKEY_DestroyPrivateKey()
 15402 ms  0xffb privk:0x7faa3de4e020::7faa3de4e020  10 7f 0e 44                                      ...D
 15402 ms  0xffb privk:0x7faa3de4e020::7faa3de4e020  e5 e5 e5 e5                                      ....
 15402 ms  0xffb SECKEY_DestroyPrivateKey()
 15402 ms  0xffb privk:0x7faa3dd76820::7faa3dd76820  10 b5 20 44                                      .. D
 15402 ms  0xffb privk:0x7faa3dd76820::7faa3dd76820  e5 e5 e5 e5                                      ....
 15478 ms  0xffb SECKEY_CreateECPrivateKey()
 15478 ms  0xffb cx:0x7faa4423ccc8
 15479 ms     | 0xffb EC_ValidatePublicKey()
 15479 ms     | 0xffb ret:0x0
 15479 ms  0xffb ret:0x7faa2d15e820::7faa2d15e820  10 b5 20 44                                      .. D
 15479 ms  0xffb SECKEY_CreateECPrivateKey()
 15479 ms  0xffb cx:0x7faa4423ccc8
 15479 ms     | 0xffb EC_ValidatePublicKey()
 15481 ms     | 0xffb ret:0x0
 15481 ms  0xffb ret:0x7faa3dd75820::7faa3dd75820  e0 b7 6f 44                                      ..oD
 15488 ms  0xffb SECKEY_CreateECPrivateKey()
 15488 ms  0xffb cx:0x7faa4423cb28
 15488 ms     | 0xffb EC_ValidatePublicKey()
 15488 ms     | 0xffb ret:0x0
 15488 ms  0xffb ret:0x7faa3de4e020::7faa3de4e020  b0 95 72 44                                      ..rD
 15489 ms  0xffb SECKEY_CreateECPrivateKey()
 15489 ms  0xffb cx:0x7faa4423cb28
 15489 ms     | 0xffb EC_ValidatePublicKey()
 15491 ms     | 0xffb ret:0x0
 15491 ms  0xffb ret:0x7faa3ffe6020::7faa3ffe6020  c0 9e 7e 44                                      ..~D
 15497 ms  0xffb SECKEY_CreateECPrivateKey()
 15497 ms  0xffb cx:0x7faa4423c988
 15498 ms     | 0xffb EC_ValidatePublicKey()
 15498 ms     | 0xffb ret:0x0
 15498 ms  0xffb ret:0x7faa44306020::7faa44306020  b0 fa f4 46                                      ...F
 15498 ms  0xffb SECKEY_CreateECPrivateKey()
 15498 ms  0xffb cx:0x7faa4423c988
 15498 ms     | 0xffb EC_ValidatePublicKey()
 15500 ms     | 0xffb ret:0x0
 15500 ms  0xffb ret:0x7faa443c3020::7faa443c3020  50 56 f6 46                                      PV.F
 15503 ms  0xffb SECKEY_CreateECPrivateKey()
 15503 ms  0xffb cx:0x7faa4423ce68
 15504 ms     | 0xffb EC_ValidatePublicKey()
 15504 ms     | 0xffb ret:0x0
 15504 ms  0xffb ret:0x7faa446b6020::7faa446b6020  50 e1 fa 46                                      P..F
 15504 ms  0xffb SECKEY_CreateECPrivateKey()
 15504 ms  0xffb cx:0x7faa4423ce68
 15505 ms     | 0xffb EC_ValidatePublicKey()
 15506 ms     | 0xffb ret:0x0
 15506 ms  0xffb ret:0x7faa446ba020::7faa446ba020  e0 32 fc 46                                      .2.F
 15509 ms  0xffb SECKEY_CreateECPrivateKey()
 15509 ms  0xffb cx:0x7faa48458e28
 15509 ms     | 0xffb EC_ValidatePublicKey()
 15509 ms     | 0xffb ret:0x0
 15509 ms  0xffb ret:0x7faa446c0020::7faa446c0020  d0 38 fc 46                                      .8.F
 15509 ms  0xffb SECKEY_CreateECPrivateKey()
 15509 ms  0xffb cx:0x7faa48458e28
 15510 ms     | 0xffb EC_ValidatePublicKey()
 15511 ms     | 0xffb ret:0x0
 15511 ms  0xffb ret:0x7faa4477f820::7faa4477f820  80 3d fc 46                                      .=.F
           /* TID 0x1003 */
 15565 ms  0x1003 PR_Close()
 15565 ms  0x1003 fd:0x7faa445bd670
 15578 ms  0x1003 PR_Close()
 15578 ms  0x1003 fd:0x7faa445bd670
           /* TID 0xffb */
 15587 ms  0xffb SECKEY_CreateECPrivateKey()
 15587 ms  0xffb cx:0x7faa4423bfc8
 15587 ms     | 0xffb EC_ValidatePublicKey()
 15587 ms     | 0xffb ret:0x0
 15587 ms  0xffb ret:0x7faa4478a020::7faa4478a020  b0 2a 5d 44                                      .*]D
 15587 ms  0xffb SECKEY_CreateECPrivateKey()
 15587 ms  0xffb cx:0x7faa4423bfc8
 15588 ms     | 0xffb EC_ValidatePublicKey()
 15589 ms     | 0xffb ret:0x0
 15589 ms  0xffb ret:0x7faa4478c020::7faa4478c020  30 48 05 47                                      0H.G
 15634 ms  0xffb PK11_Encrypt()
 15634 ms  0xffb symkey:0x7faa487d8b00
           /* TID 0x1003 */
 15635 ms  0x1003 PR_Close()
 15635 ms  0x1003 fd:0x7faa4454b250
 15649 ms  0x1003 PR_Close()
 15649 ms  0x1003 fd:0x7faa43591550
 15675 ms  0x1003 PR_Close()
 15675 ms  0x1003 fd:0x7faa43591550
           /* TID 0xffb */
 15694 ms  SECKEY_ECParamsToKeySize()
 15694 ms  0xffb ret:0xff
 15694 ms  0xffb SECKEY_CreateECPrivateKey()
 15694 ms  0xffb cx:0x7faa4423ccc8
 15695 ms     | 0xffb EC_ValidatePublicKey()
 15695 ms     | 0xffb ret:0x0
 15695 ms  0xffb ret:0x7faa44795820::7faa44795820  00 81 06 47                                      ...G
 15695 ms  0xffb PK11_PubDeriveWithKDF()
 15695 ms  0xffb seckey:0x7faa44795820
 15695 ms     | 0xffb EC_ValidatePublicKey()
 15695 ms     | 0xffb ret:0x0
 15695 ms  0xffb ret:0x7faa4128f080
 15695 ms  0xffb PK11_DeriveWithFlags()
 15695 ms  0xffb basekey:0x7faa4128f080
 15695 ms     | 0xffb PK11_DeriveWithTemplate()
 15696 ms  0xffb ret:0x7faa3ef0f500
 15696 ms  0xffb PK11_Derive()
 15696 ms  0xffb basekey:0x7faa3ef0f500
 15696 ms     | 0xffb PK11_DeriveWithTemplate()
 15696 ms  0xffb ret:0x7faa412c3800
 15696 ms  0xffb SECKEY_DestroyPrivateKey()
 15696 ms  0xffb privk:0x7faa44795820::7faa44795820  00 81 06 47                                      ...G
 15696 ms  0xffb privk:0x7faa44795820::7faa44795820  e5 e5 e5 e5                                      ....
 15696 ms  0xffb PK11_Encrypt()
 15696 ms  0xffb symkey:0x7faa3f236080
 15697 ms  0xffb SSL_AuthCertificateComplete()
 15697 ms  0xffb fd:0x7faa447f33d0
 15697 ms  0xffb err:0x0
 15697 ms  0xffb PK11_Encrypt()
 15697 ms  0xffb symkey:0x7faa3f236080
 15710 ms  SECKEY_ECParamsToKeySize()
 15710 ms  0xffb ret:0xff
 15710 ms  0xffb SECKEY_CreateECPrivateKey()
 15710 ms  0xffb cx:0x7faa4423cb28
 15711 ms     | 0xffb EC_ValidatePublicKey()
 15711 ms     | 0xffb ret:0x0
 15711 ms  0xffb ret:0x7faa44796020::7faa44796020  e0 72 b0 47                                      .r.G
 15711 ms  0xffb PK11_PubDeriveWithKDF()
 15711 ms  0xffb seckey:0x7faa44796020
 15711 ms     | 0xffb EC_ValidatePublicKey()
 15711 ms     | 0xffb ret:0x0
 15711 ms  0xffb ret:0x7faa4128f080
 15711 ms  0xffb PK11_DeriveWithFlags()
 15711 ms  0xffb basekey:0x7faa4128f080
 15711 ms     | 0xffb PK11_DeriveWithTemplate()
 15711 ms  0xffb ret:0x7faa4128ed80
 15711 ms  0xffb PK11_Derive()
 15711 ms  0xffb basekey:0x7faa4128ed80
 15711 ms     | 0xffb PK11_DeriveWithTemplate()
 15711 ms  0xffb ret:0x7faa3ef0f880
 15711 ms  0xffb SECKEY_DestroyPrivateKey()
 15711 ms  0xffb privk:0x7faa44796020::7faa44796020  e0 72 b0 47                                      .r.G
 15711 ms  0xffb privk:0x7faa44796020::7faa44796020  e5 e5 e5 e5                                      ....
 15712 ms  0xffb PK11_Encrypt()
 15712 ms  0xffb symkey:0x7faa440e6700
 15712 ms  0xffb SSL_AuthCertificateComplete()
 15712 ms  0xffb fd:0x7faa447ec1c0
 15712 ms  0xffb err:0x0
 15713 ms  0xffb PK11_Encrypt()
 15713 ms  0xffb symkey:0x7faa440e6700
 15734 ms  SECKEY_ECParamsToKeySize()
 15734 ms  0xffb ret:0xff
 15734 ms  0xffb SECKEY_CreateECPrivateKey()
 15734 ms  0xffb cx:0x7faa4423c988
 15735 ms     | 0xffb EC_ValidatePublicKey()
 15735 ms     | 0xffb ret:0x0
 15735 ms  0xffb ret:0x7faa4479b020::7faa4479b020  60 9f b1 47                                      `..G
 15735 ms  0xffb PK11_PubDeriveWithKDF()
 15735 ms  0xffb seckey:0x7faa4479b020
 15735 ms     | 0xffb EC_ValidatePublicKey()
 15735 ms     | 0xffb ret:0x0
 15735 ms  0xffb ret:0x7faa4128f080
 15735 ms  0xffb PK11_DeriveWithFlags()
 15735 ms  0xffb basekey:0x7faa4128f080
 15735 ms     | 0xffb PK11_DeriveWithTemplate()
 15735 ms  0xffb ret:0x7faa4126b480
 15735 ms  0xffb PK11_Derive()
 15735 ms  0xffb basekey:0x7faa4126b480
 15735 ms     | 0xffb PK11_DeriveWithTemplate()
 15735 ms  0xffb ret:0x7faa4126b500
 15735 ms  0xffb SECKEY_DestroyPrivateKey()
 15735 ms  0xffb privk:0x7faa4479b020::7faa4479b020  60 9f b1 47                                      `..G
 15735 ms  0xffb privk:0x7faa4479b020::7faa4479b020  e5 e5 e5 e5                                      ....
 15735 ms  0xffb PK11_Encrypt()
 15735 ms  0xffb symkey:0x7faa4126b880
 15736 ms  0xffb SSL_AuthCertificateComplete()
 15736 ms  0xffb fd:0x7faa4467fa30
 15736 ms  0xffb err:0x0
 15736 ms  0xffb PK11_Encrypt()
 15736 ms  0xffb symkey:0x7faa4126b880
 15738 ms  0xffb PK11_Derive()
 15738 ms  0xffb basekey:0x7faa4126ba00
 15738 ms     | 0xffb PK11_DeriveWithTemplate()
 15738 ms  0xffb ret:0x7faa4128f080
 15738 ms  0xffb PK11_Encrypt()
 15738 ms  0xffb symkey:0x7faa4126bc80
 15739 ms  0xffb SECKEY_DestroyPrivateKey()
 15739 ms  0xffb privk:0x7faa446ba020::7faa446ba020  e0 32 fc 46                                      .2.F
 15739 ms  0xffb privk:0x7faa446ba020::7faa446ba020  e5 e5 e5 e5                                      ....
 15739 ms  0xffb SECKEY_DestroyPrivateKey()
 15739 ms  0xffb privk:0x7faa446b6020::7faa446b6020  50 e1 fa 46                                      P..F
 15739 ms  0xffb privk:0x7faa446b6020::7faa446b6020  e5 e5 e5 e5                                      ....
 15740 ms  0xffb PK11_Encrypt()
 15740 ms  0xffb symkey:0x7faa4126bc80
 15744 ms  SECKEY_ECParamsToKeySize()
 15744 ms  0xffb ret:0xff
 15744 ms  0xffb SECKEY_CreateECPrivateKey()
 15744 ms  0xffb cx:0x7faa48458e28
 15748 ms     | 0xffb EC_ValidatePublicKey()
 15748 ms     | 0xffb ret:0x0
 15748 ms  0xffb ret:0x7faa446ba020::7faa446ba020  80 ed fa 46                                      ...F
 15748 ms  0xffb PK11_PubDeriveWithKDF()
 15748 ms  0xffb seckey:0x7faa446ba020
 15748 ms     | 0xffb EC_ValidatePublicKey()
 15748 ms     | 0xffb ret:0x0
 15748 ms  0xffb ret:0x7faa41285180
 15748 ms  0xffb PK11_DeriveWithFlags()
 15748 ms  0xffb basekey:0x7faa41285180
 15748 ms     | 0xffb PK11_DeriveWithTemplate()
 15748 ms  0xffb ret:0x7faa41285200
 15748 ms  0xffb PK11_Derive()
 15748 ms  0xffb basekey:0x7faa41285200
 15748 ms     | 0xffb PK11_DeriveWithTemplate()
 15749 ms  0xffb ret:0x7faa41285280
 15749 ms  0xffb SECKEY_DestroyPrivateKey()
 15749 ms  0xffb privk:0x7faa446ba020::7faa446ba020  80 ed fa 46                                      ...F
 15749 ms  0xffb privk:0x7faa446ba020::7faa446ba020  e5 e5 e5 e5                                      ....
 15749 ms  0xffb PK11_Encrypt()
 15749 ms  0xffb symkey:0x7faa41285480
           /* TID 0x1003 */
 15750 ms  0x1003 PR_Close()
 15750 ms  0x1003 fd:0x7faa445bd5e0
           /* TID 0xffb */
 15750 ms  0xffb SSL_ImportFD()
 15750 ms  0xffb ret:0x7faa445f4df0
 15750 ms  0xffb SSL_AuthCertificateHook()
 15750 ms  0xffb fd:0x7faa445f4df0
 15750 ms  0xffb ret:0x0
 15751 ms  0xffb PR_Connect()
 15751 ms  0xffb fd:0x7faa445f4df0
 15751 ms  0xffb SSL_AuthCertificateComplete()
 15751 ms  0xffb fd:0x7faa447f3df0
 15751 ms  0xffb err:0x0
 15751 ms  0xffb SSL_ImportFD()
 15751 ms  0xffb ret:0x7faa46f69700
 15751 ms  0xffb SSL_AuthCertificateHook()
 15751 ms  0xffb fd:0x7faa46f69700
 15751 ms  0xffb ret:0x0
 15751 ms  0xffb PR_Connect()
 15751 ms  0xffb fd:0x7faa46f69700
 15751 ms  0xffb PK11_Encrypt()
 15751 ms  0xffb symkey:0x7faa41285480
 15771 ms  0xffb SSL_ImportFD()
 15771 ms  0xffb ret:0x7faa46fbdaf0
 15771 ms  0xffb SSL_AuthCertificateHook()
 15771 ms  0xffb fd:0x7faa46fbdaf0
 15771 ms  0xffb ret:0x0
 15771 ms  0xffb PR_Connect()
 15771 ms  0xffb fd:0x7faa46fbdaf0
 15803 ms  0xffb SSL_ImportFD()
 15803 ms  0xffb ret:0x7faa46fbac40
 15803 ms  0xffb SSL_AuthCertificateHook()
 15803 ms  0xffb fd:0x7faa46fbac40
 15803 ms  0xffb ret:0x0
 15803 ms  0xffb PR_Connect()
 15803 ms  0xffb fd:0x7faa46fbac40
 15812 ms  0xffb SSL_ImportFD()
 15812 ms  0xffb ret:0x7faa4701fee0
 15812 ms  0xffb SSL_AuthCertificateHook()
 15812 ms  0xffb fd:0x7faa4701fee0
 15812 ms  0xffb ret:0x0
 15812 ms  0xffb PR_Connect()
 15812 ms  0xffb fd:0x7faa4701fee0
 15815 ms  0xffb PK11_Derive()
 15815 ms  0xffb basekey:0x7faa41286e00
 15815 ms     | 0xffb PK11_DeriveWithTemplate()
 15815 ms  0xffb ret:0x7faa41285180
 15815 ms  0xffb PK11_Encrypt()
 15815 ms  0xffb symkey:0x7faa4128e080
 15816 ms  0xffb SECKEY_DestroyPrivateKey()
 15816 ms  0xffb privk:0x7faa4478c020::7faa4478c020  30 48 05 47                                      0H.G
 15816 ms  0xffb privk:0x7faa4478c020::7faa4478c020  e5 e5 e5 e5                                      ....
 15816 ms  0xffb SECKEY_DestroyPrivateKey()
 15816 ms  0xffb privk:0x7faa4478a020::7faa4478a020  b0 2a 5d 44                                      .*]D
 15816 ms  0xffb privk:0x7faa4478a020::7faa4478a020  e5 e5 e5 e5                                      ....
 15816 ms  0xffb PK11_Encrypt()
 15816 ms  0xffb symkey:0x7faa4128e080
 15828 ms  0xffb SSL_ImportFD()
 15828 ms  0xffb ret:0x7faa470535e0
 15828 ms  0xffb SSL_AuthCertificateHook()
 15828 ms  0xffb fd:0x7faa470535e0
 15828 ms  0xffb ret:0x0
 15828 ms  0xffb PR_Connect()
 15828 ms  0xffb fd:0x7faa470535e0
 15836 ms  0xffb SSL_ImportFD()
 15836 ms  0xffb ret:0x7faa470539a0
 15836 ms  0xffb SSL_AuthCertificateHook()
 15836 ms  0xffb fd:0x7faa470539a0
 15836 ms  0xffb ret:0x0
 15836 ms  0xffb PR_Connect()
 15836 ms  0xffb fd:0x7faa470539a0
 15867 ms  0xffb PK11_Encrypt()
 15867 ms  0xffb symkey:0x7faa487d8b00
           /* TID 0x1003 */
 15868 ms  0x1003 PR_Close()
 15868 ms  0x1003 fd:0x7faa46f506d0
           /* TID 0xffb */
 15908 ms  0xffb SECKEY_DestroyPrivateKey()
 15908 ms  0xffb privk:0x7faa3dd75820::7faa3dd75820  e0 b7 6f 44                                      ..oD
 15908 ms  0xffb privk:0x7faa3dd75820::7faa3dd75820  e5 e5 e5 e5                                      ....
 15908 ms  0xffb SECKEY_DestroyPrivateKey()
 15908 ms  0xffb privk:0x7faa2d15e820::7faa2d15e820  10 b5 20 44                                      .. D
 15909 ms  0xffb privk:0x7faa2d15e820::7faa2d15e820  e5 e5 e5 e5                                      ....
 15931 ms  0xffb SECKEY_DestroyPrivateKey()
 15931 ms  0xffb privk:0x7faa3ffe6020::7faa3ffe6020  c0 9e 7e 44                                      ..~D
 15931 ms  0xffb privk:0x7faa3ffe6020::7faa3ffe6020  e5 e5 e5 e5                                      ....
 15931 ms  0xffb SECKEY_DestroyPrivateKey()
 15931 ms  0xffb privk:0x7faa3de4e020::7faa3de4e020  b0 95 72 44                                      ..rD
 15931 ms  0xffb privk:0x7faa3de4e020::7faa3de4e020  e5 e5 e5 e5                                      ....
 15944 ms  0xffb SSL_ImportFD()
 15944 ms  0xffb ret:0x7faa47b1b7c0
 15944 ms  0xffb SSL_AuthCertificateHook()
 15944 ms  0xffb fd:0x7faa47b1b7c0
 15944 ms  0xffb ret:0x0
 15944 ms  0xffb PR_Connect()
 15944 ms  0xffb fd:0x7faa47b1b7c0
 15964 ms  0xffb PK11_Encrypt()
 15964 ms  0xffb symkey:0x7faa3e692900
 15966 ms  0xffb PK11_Encrypt()
 15966 ms  0xffb symkey:0x7faa3e692900
 15968 ms  0xffb SECKEY_DestroyPrivateKey()
 15968 ms  0xffb privk:0x7faa443c3020::7faa443c3020  50 56 f6 46                                      PV.F
 15969 ms  0xffb privk:0x7faa443c3020::7faa443c3020  e5 e5 e5 e5                                      ....
 15969 ms  0xffb SECKEY_DestroyPrivateKey()
 15969 ms  0xffb privk:0x7faa44306020::7faa44306020  b0 fa f4 46                                      ...F
 15969 ms  0xffb privk:0x7faa44306020::7faa44306020  e5 e5 e5 e5                                      ....
 15976 ms  0xffb PK11_Encrypt()
 15976 ms  0xffb symkey:0x7faa41246680
 15980 ms  0xffb SECKEY_DestroyPrivateKey()
 15980 ms  0xffb privk:0x7faa4477f820::7faa4477f820  80 3d fc 46                                      .=.F
 15980 ms  0xffb privk:0x7faa4477f820::7faa4477f820  e5 e5 e5 e5                                      ....
 15980 ms  0xffb SECKEY_DestroyPrivateKey()
 15980 ms  0xffb privk:0x7faa446c0020::7faa446c0020  d0 38 fc 46                                      .8.F
 15981 ms  0xffb privk:0x7faa446c0020::7faa446c0020  e5 e5 e5 e5                                      ....
 15983 ms  0xffb SECKEY_CreateECPrivateKey()
 15983 ms  0xffb cx:0x7faa4d2678c8
 15984 ms     | 0xffb EC_ValidatePublicKey()
 15984 ms     | 0xffb ret:0x0
 15984 ms  0xffb ret:0x7faa44304020::7faa44304020  50 56 f6 46                                      PV.F
 15984 ms  0xffb SECKEY_CreateECPrivateKey()
 15984 ms  0xffb cx:0x7faa4d2678c8
 15984 ms     | 0xffb EC_ValidatePublicKey()
 15986 ms     | 0xffb ret:0x0
 15986 ms  0xffb ret:0x7faa44306820::7faa44306820  d0 38 fc 46                                      .8.F
 15986 ms  0xffb SECKEY_CreateECPrivateKey()
 15986 ms  0xffb cx:0x7faa4d267728
 15986 ms     | 0xffb EC_ValidatePublicKey()
 15986 ms     | 0xffb ret:0x0
 15986 ms  0xffb ret:0x7faa446bd020::7faa446bd020  e0 3c fc 46                                      .<.F
 15987 ms  0xffb SECKEY_CreateECPrivateKey()
 15987 ms  0xffb cx:0x7faa4d267728
 15987 ms     | 0xffb EC_ValidatePublicKey()
 15991 ms     | 0xffb ret:0x0
 15991 ms  0xffb ret:0x7faa446c1020::7faa446c1020  40 fc f4 46                                      @..F
 16000 ms  0xffb SSL_ImportFD()
 16000 ms  0xffb ret:0x7faa47be4340
 16000 ms  0xffb SSL_AuthCertificateHook()
 16000 ms  0xffb fd:0x7faa47be4340
 16000 ms  0xffb ret:0x0
 16000 ms  0xffb PR_Connect()
 16000 ms  0xffb fd:0x7faa47be4340
 16002 ms  0xffb SECKEY_CreateECPrivateKey()
 16002 ms  0xffb cx:0x7faa4d267a68
 16003 ms     | 0xffb EC_ValidatePublicKey()
 16003 ms     | 0xffb ret:0x0
 16003 ms  0xffb ret:0x7faa4478a820::7faa4478a820  10 da b1 47                                      ...G
 16003 ms  0xffb SECKEY_CreateECPrivateKey()
 16003 ms  0xffb cx:0x7faa4d267a68
 16004 ms     | 0xffb EC_ValidatePublicKey()
 16005 ms     | 0xffb ret:0x0
 16005 ms  0xffb ret:0x7faa44792020::7faa44792020  f0 36 b2 47                                      .6.G
 16022 ms  0xffb SECKEY_CreateECPrivateKey()
 16022 ms  0xffb cx:0x7faa4d267c08
 16023 ms     | 0xffb EC_ValidatePublicKey()
 16023 ms     | 0xffb ret:0x0
 16023 ms  0xffb ret:0x7faa46f16820::7faa46f16820  30 d3 b3 47                                      0..G
 16023 ms  0xffb SECKEY_CreateECPrivateKey()
 16023 ms  0xffb cx:0x7faa4d267c08
 16024 ms     | 0xffb EC_ValidatePublicKey()
 16025 ms     | 0xffb ret:0x0
 16025 ms  0xffb ret:0x7faa46f1b820::7faa46f1b820  00 0b b8 47                                      ...G
 16026 ms  0xffb SECKEY_CreateECPrivateKey()
 16026 ms  0xffb cx:0x7faa4d268428
 16029 ms     | 0xffb EC_ValidatePublicKey()
 16029 ms     | 0xffb ret:0x0
 16029 ms  0xffb ret:0x7faa46f20820::7faa46f20820  80 0d b8 47                                      ...G
 16029 ms  0xffb SECKEY_CreateECPrivateKey()
 16029 ms  0xffb cx:0x7faa4d268428
 16029 ms     | 0xffb EC_ValidatePublicKey()
 16033 ms     | 0xffb ret:0x0
 16033 ms  0xffb ret:0x7faa46f24820::7faa46f24820  a0 11 be 47                                      ...G
 16037 ms  0xffb SECKEY_CreateECPrivateKey()
 16037 ms  0xffb cx:0x7faa4d268288
 16037 ms     | 0xffb EC_ValidatePublicKey()
 16037 ms     | 0xffb ret:0x0
 16037 ms  0xffb ret:0x7faa46f28020::7faa46f28020  60 1a be 47                                      `..G
 16039 ms  0xffb SECKEY_CreateECPrivateKey()
 16039 ms  0xffb cx:0x7faa4d268288
 16040 ms     | 0xffb EC_ValidatePublicKey()
 16042 ms     | 0xffb ret:0x0
 16042 ms  0xffb ret:0x7faa46f2a020::7faa46f2a020  10 f5 08 48                                      ...H
 16046 ms  0xffb SECKEY_CreateECPrivateKey()
 16046 ms  0xffb cx:0x7faa4d267da8
 16046 ms     | 0xffb EC_ValidatePublicKey()
 16046 ms     | 0xffb ret:0x0
 16046 ms  0xffb ret:0x7faa46f2c820::7faa46f2c820  50 f6 08 48                                      P..H
 16046 ms  0xffb SECKEY_CreateECPrivateKey()
 16046 ms  0xffb cx:0x7faa4d267da8
 16047 ms     | 0xffb EC_ValidatePublicKey()
 16049 ms     | 0xffb ret:0x0
 16049 ms  0xffb ret:0x7faa46f2e820::7faa46f2e820  60 fa 08 48                                      `..H
 16053 ms  0xffb SECKEY_CreateECPrivateKey()
 16053 ms  0xffb cx:0x7faa4d2680e8
 16054 ms     | 0xffb EC_ValidatePublicKey()
 16054 ms     | 0xffb ret:0x0
 16054 ms  0xffb ret:0x7faa480d8020::7faa480d8020  50 6b 0f 48                                      Pk.H
 16054 ms  0xffb SECKEY_CreateECPrivateKey()
 16054 ms  0xffb cx:0x7faa4d2680e8
 16055 ms     | 0xffb EC_ValidatePublicKey()
 16061 ms     | 0xffb ret:0x0
 16061 ms  0xffb ret:0x7faa480dc020::7faa480dc020  d0 7d 14 48                                      .}.H
 16062 ms  0xffb SECKEY_CreateECPrivateKey()
 16062 ms  0xffb cx:0x7faa4d267f48
 16062 ms     | 0xffb EC_ValidatePublicKey()
 16062 ms     | 0xffb ret:0x0
 16062 ms  0xffb ret:0x7faa480e7820::7faa480e7820  80 48 19 48                                      .H.H
 16062 ms  0xffb SECKEY_CreateECPrivateKey()
 16062 ms  0xffb cx:0x7faa4d267f48
 16063 ms     | 0xffb EC_ValidatePublicKey()
 16064 ms     | 0xffb ret:0x0
 16064 ms  0xffb ret:0x7faa480ea820::7faa480ea820  80 a8 1c 48                                      ...H
 16082 ms  0xffb PK11_Encrypt()
 16082 ms  0xffb symkey:0x7faa43575c00
 16091 ms  0xffb PK11_Derive()
 16091 ms  0xffb basekey:0x7faa4128ff00
 16091 ms     | 0xffb PK11_DeriveWithTemplate()
 16091 ms  0xffb ret:0x7faa482a5580
 16091 ms  0xffb PK11_PubDeriveWithKDF()
 16091 ms  0xffb seckey:0x7faa46f20820
 16092 ms     | 0xffb EC_ValidatePublicKey()
 16092 ms     | 0xffb ret:0x0
 16092 ms  0xffb ret:0x7faa4128ff00
 16092 ms  SECKEY_ECParamsToKeySize()
 16092 ms  0xffb ret:0xff
 16092 ms  0xffb PK11_DeriveWithFlags()
 16092 ms  0xffb basekey:0x7faa482a5580
 16092 ms     | 0xffb PK11_DeriveWithTemplate()
 16092 ms  0xffb ret:0x7faa482a5800
 16092 ms  0xffb PK11_Derive()
 16092 ms  0xffb basekey:0x7faa4128ff00
 16092 ms     | 0xffb PK11_DeriveWithTemplate()
 16092 ms  0xffb ret:0x7faa482a5a00
 16092 ms  0xffb PK11_DeriveWithFlags()
 16092 ms  0xffb basekey:0x7faa482a5a00
 16092 ms     | 0xffb PK11_DeriveWithTemplate()
 16092 ms  0xffb ret:0x7faa482a5580
 16092 ms  0xffb PK11_DeriveWithFlags()
 16092 ms  0xffb basekey:0x7faa482a5a00
 16092 ms     | 0xffb PK11_DeriveWithTemplate()
 16092 ms  0xffb ret:0x7faa4128ff00
 16092 ms  0xffb PK11_DeriveWithFlags()
 16092 ms  0xffb basekey:0x7faa482a5a00
 16092 ms     | 0xffb PK11_DeriveWithTemplate()
 16092 ms  0xffb ret:0x7faa482a5800
 16092 ms  0xffb PK11_Derive()
 16092 ms  0xffb basekey:0x7faa482a5d00
 16092 ms     | 0xffb PK11_DeriveWithTemplate()
 16092 ms  0xffb ret:0x7faa482a5e00
 16092 ms  0xffb PK11_DeriveWithFlags()
 16092 ms  0xffb basekey:0x7faa4128ff00
 16092 ms     | 0xffb PK11_DeriveWithTemplate()
 16092 ms  0xffb ret:0x7faa482a5a00
 16092 ms  0xffb PK11_DeriveWithFlags()
 16092 ms  0xffb basekey:0x7faa4128ff00
 16092 ms     | 0xffb PK11_DeriveWithTemplate()
 16092 ms  0xffb ret:0x7faa482a5800
           /* TID 0x1058 */
 16093 ms  SECKEY_ECParamsToBasePointOrderLen()
 16093 ms  0x1058 ret:0x180
 16093 ms  SECKEY_ECParamsToBasePointOrderLen()
 16093 ms  0x1058 ret:0x180
 16093 ms  0x1058 EC_ValidatePublicKey()
 16095 ms  0x1058 ret:0x0
           /* TID 0xffb */
 16097 ms  SECKEY_ECParamsToKeySize()
 16097 ms  0xffb ret:0x100
 16098 ms  SECKEY_ECParamsToBasePointOrderLen()
 16098 ms  0xffb ret:0x100
 16098 ms  SECKEY_ECParamsToBasePointOrderLen()
 16098 ms  0xffb ret:0x100
 16098 ms  0xffb EC_ValidatePublicKey()
 16099 ms  0xffb ret:0x0
 16101 ms  0xffb PK11_DeriveWithFlags()
 16101 ms  0xffb basekey:0x7faa4128ff00
 16101 ms     | 0xffb PK11_DeriveWithTemplate()
 16101 ms  0xffb ret:0x7faa482a5800
           /* TID 0x1058 */
 16104 ms  SECKEY_ECParamsToBasePointOrderLen()
 16104 ms  0x1058 ret:0x100
 16104 ms  SECKEY_ECParamsToBasePointOrderLen()
 16104 ms  0x1058 ret:0x100
 16104 ms  0x1058 EC_ValidatePublicKey()
 16105 ms  0x1058 ret:0x0
           /* TID 0x1003 */
 16118 ms  0x1003 PR_Close()
 16118 ms  0x1003 fd:0x7faa46f50790
           /* TID 0xffb */
 16119 ms  0xffb PK11_Encrypt()
 16119 ms  0xffb symkey:0x7faa487d8b00
 16121 ms  0xffb PK11_Encrypt()
 16121 ms  0xffb symkey:0x7faa3f236080
           /* TID 0x1003 */
 16122 ms  0x1003 PR_Close()
 16122 ms  0x1003 fd:0x7faa4439f070
           /* TID 0x1058 */
 16123 ms  0x1058 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16123 ms     | SECKEY_ECParamsToBasePointOrderLen()
 16123 ms     | 0x1058 ret:0x100
 16123 ms     | SECKEY_ECParamsToBasePointOrderLen()
 16123 ms     | 0x1058 ret:0x100
 16123 ms     | 0x1058 EC_ValidatePublicKey()
 16125 ms     | 0x1058 ret:0x0
           /* TID 0xffb */
 16125 ms  SECKEY_ECParamsToKeySize()
 16125 ms  0xffb ret:0x100
 16125 ms  SECKEY_ECParamsToBasePointOrderLen()
 16125 ms  0xffb ret:0x100
 16125 ms  SECKEY_ECParamsToBasePointOrderLen()
 16125 ms  0xffb ret:0x100
 16125 ms  0xffb EC_ValidatePublicKey()
 16127 ms  0xffb ret:0x0
           /* TID 0x1094 */
 16128 ms  SECKEY_ECParamsToBasePointOrderLen()
 16128 ms  0x1094 ret:0x180
 16128 ms  SECKEY_ECParamsToBasePointOrderLen()
 16128 ms  0x1094 ret:0x180
 16128 ms  0x1094 EC_ValidatePublicKey()
 16129 ms  0x1094 ret:0x0
 16132 ms  0x1094 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16132 ms     | SECKEY_ECParamsToBasePointOrderLen()
 16132 ms     | 0x1094 ret:0x180
 16132 ms     | SECKEY_ECParamsToBasePointOrderLen()
 16132 ms     | 0x1094 ret:0x180
 16132 ms     | 0x1094 EC_ValidatePublicKey()
 16138 ms     | 0x1094 ret:0x0
           /* TID 0xffb */
 16138 ms  SECKEY_ECParamsToKeySize()
 16138 ms  0xffb ret:0x100
 16138 ms  0xffb SECKEY_CreateECPrivateKey()
 16138 ms  0xffb cx:0x7faa4d268288
 16139 ms     | 0xffb EC_ValidatePublicKey()
 16140 ms     | 0xffb ret:0x0
           /* TID 0x1058 */
 16140 ms  0x1058 ret:0x0
           /* TID 0xffb */
 16141 ms  0xffb ret:0x7faa48283820::7faa48283820  10 3f 2b 48                                      .?+H
 16141 ms  0xffb PK11_PubDeriveWithKDF()
 16141 ms  0xffb seckey:0x7faa48283820
 16141 ms     | 0xffb EC_ValidatePublicKey()
 16149 ms     | 0xffb ret:0x0
 16152 ms  0xffb ret:0x7faa482a5800
 16152 ms  0xffb PK11_DeriveWithFlags()
 16152 ms  0xffb basekey:0x7faa482a5800
 16152 ms     | 0xffb PK11_DeriveWithTemplate()
 16152 ms  0xffb ret:0x7faa482a5d00
 16152 ms  0xffb PK11_Derive()
 16152 ms  0xffb basekey:0x7faa482a5d00
 16152 ms     | 0xffb PK11_DeriveWithTemplate()
 16152 ms  0xffb ret:0x7faa482a6d00
 16152 ms  0xffb SECKEY_DestroyPrivateKey()
 16152 ms  0xffb privk:0x7faa48283820::7faa48283820  10 3f 2b 48                                      .?+H
 16152 ms  0xffb privk:0x7faa48283820::7faa48283820  e5 e5 e5 e5                                      ....
 16152 ms  0xffb PK11_Encrypt()
 16152 ms  0xffb symkey:0x7faa482ad380
 16153 ms  0xffb SSL_AuthCertificateComplete()
 16153 ms  0xffb fd:0x7faa47be4340
 16153 ms  0xffb err:0x0
 16153 ms     | 0xffb PK11_DeriveWithFlags()
 16153 ms     | 0xffb basekey:0x7faa482a5e00
 16153 ms     |    | 0xffb PK11_DeriveWithTemplate()
           /* TID 0x1094 */
 16154 ms  0x1094 ret:0x0
           /* TID 0xffb */
 16157 ms     | 0xffb ret:0x7faa482a5800
 16157 ms     | 0xffb PK11_DeriveWithFlags()
 16157 ms     | 0xffb basekey:0x7faa482a5e00
 16157 ms     |    | 0xffb PK11_DeriveWithTemplate()
 16157 ms     | 0xffb ret:0x7faa482adb80
 16157 ms     | 0xffb PK11_DeriveWithFlags()
 16157 ms     | 0xffb basekey:0x7faa482a5e00
 16157 ms     |    | 0xffb PK11_DeriveWithTemplate()
 16157 ms     | 0xffb ret:0x7faa482adc00
 16157 ms     | 0xffb PK11_DeriveWithFlags()
 16157 ms     | 0xffb basekey:0x7faa482a5580
 16157 ms     |    | 0xffb PK11_DeriveWithTemplate()
 16157 ms     | 0xffb ret:0x7faa482adc80
 16157 ms     | 0xffb PK11_DeriveWithFlags()
 16157 ms     | 0xffb basekey:0x7faa482a5580
 16157 ms     |    | 0xffb PK11_DeriveWithTemplate()
 16157 ms     | 0xffb ret:0x7faa482add00
 16157 ms     | 0xffb PK11_DeriveWithFlags()
 16157 ms     | 0xffb basekey:0x7faa482adb80
 16157 ms     |    | 0xffb PK11_DeriveWithTemplate()
 16157 ms     | 0xffb ret:0x7faa482add00
 16157 ms     | 0xffb PK11_DeriveWithFlags()
 16157 ms     | 0xffb basekey:0x7faa482adb80
 16157 ms     |    | 0xffb PK11_DeriveWithTemplate()
 16157 ms     | 0xffb ret:0x7faa482add80
 16157 ms     | 0xffb PK11_DeriveWithFlags()
 16157 ms     | 0xffb basekey:0x7faa482a5580
 16157 ms     |    | 0xffb PK11_DeriveWithTemplate()
 16157 ms     | 0xffb ret:0x7faa482a5a00
 16157 ms     | 0xffb PK11_Encrypt()
 16157 ms     | 0xffb symkey:0x7faa482adc80
 16158 ms     | 0xffb PK11_DeriveWithFlags()
 16158 ms     | 0xffb basekey:0x7faa482a5800
 16159 ms     |    | 0xffb PK11_DeriveWithTemplate()
 16159 ms     | 0xffb ret:0x7faa482a5a00
 16159 ms     | 0xffb PK11_DeriveWithFlags()
 16159 ms     | 0xffb basekey:0x7faa482a5800
 16159 ms     |    | 0xffb PK11_DeriveWithTemplate()
 16159 ms     | 0xffb ret:0x7faa482add80
 16159 ms     | 0xffb PK11_DeriveWithFlags()
 16159 ms     | 0xffb basekey:0x7faa482a5e00
 16159 ms     |    | 0xffb PK11_DeriveWithTemplate()
 16159 ms     | 0xffb ret:0x7faa482adc80
 16160 ms     | 0xffb SECKEY_DestroyPrivateKey()
 16160 ms     | 0xffb privk:0x7faa46f24820::7faa46f24820  a0 11 be 47                                      ...G
 16160 ms     | 0xffb privk:0x7faa46f24820::7faa46f24820  e5 e5 e5 e5                                      ....
 16160 ms     | 0xffb SECKEY_DestroyPrivateKey()
 16160 ms     | 0xffb privk:0x7faa46f20820::7faa46f20820  80 0d b8 47                                      ...G
 16160 ms     | 0xffb privk:0x7faa46f20820::7faa46f20820  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
 16162 ms  0x1003 PR_Close()
 16162 ms  0x1003 fd:0x7faa4126d2b0
           /* TID 0xffb */
 16163 ms  0xffb PK11_Encrypt()
 16163 ms  0xffb symkey:0x7faa482a5a00
 16163 ms  0xffb PK11_Encrypt()
 16163 ms  0xffb symkey:0x7faa482a5a00
 16163 ms  0xffb PK11_Encrypt()
 16163 ms  0xffb symkey:0x7faa440e6700
 16165 ms  0xffb SSL_AuthCertificateComplete()
 16165 ms  0xffb fd:0x7faa47b1b7c0
 16165 ms  0xffb err:0x0
 16166 ms  0xffb PK11_Encrypt()
 16166 ms  0xffb symkey:0x7faa482ad380
 16166 ms  0xffb PK11_Encrypt()
 16166 ms  0xffb symkey:0x7faa482ad380
 16183 ms  0xffb PK11_DeriveWithFlags()
 16183 ms  0xffb basekey:0x7faa482adc80
 16183 ms     | 0xffb PK11_DeriveWithTemplate()
 16183 ms  0xffb ret:0x7faa4128ff00
 16183 ms  0xffb PK11_DeriveWithFlags()
 16183 ms  0xffb basekey:0x7faa482adc80
 16183 ms     | 0xffb PK11_DeriveWithTemplate()
 16183 ms  0xffb ret:0x7faa4128ff00
 16183 ms  0xffb PK11_Encrypt()
 16183 ms  0xffb symkey:0x7faa482a5a00
 16202 ms  0xffb PK11_Encrypt()
 16202 ms  0xffb symkey:0x7faa4126b880
           /* TID 0x1003 */
 16209 ms  0x1003 PR_Close()
 16209 ms  0x1003 fd:0x7faa4467f8e0
           /* TID 0xffb */
 16213 ms  0xffb PK11_Encrypt()
 16213 ms  0xffb symkey:0x7faa41285480
           /* TID 0x1003 */
 16215 ms  0x1003 PR_Close()
 16215 ms  0x1003 fd:0x7faa46f50c70
           /* TID 0xffb */
 16221 ms  SECKEY_ECParamsToKeySize()
 16221 ms  0xffb ret:0xff
 16221 ms  0xffb SECKEY_CreateECPrivateKey()
 16221 ms  0xffb cx:0x7faa4d2678c8
 16222 ms     | 0xffb EC_ValidatePublicKey()
 16222 ms     | 0xffb ret:0x0
 16222 ms  0xffb ret:0x7faa4828b820::7faa4828b820  00 11 be 47                                      ...G
 16223 ms  0xffb PK11_PubDeriveWithKDF()
 16223 ms  0xffb seckey:0x7faa4828b820
 16223 ms     | 0xffb EC_ValidatePublicKey()
 16223 ms     | 0xffb ret:0x0
 16223 ms  0xffb ret:0x7faa4128ff00
 16224 ms  0xffb PK11_DeriveWithFlags()
 16224 ms  0xffb basekey:0x7faa4128ff00
 16224 ms     | 0xffb PK11_DeriveWithTemplate()
 16224 ms  0xffb ret:0x7faa482a5580
 16224 ms  0xffb PK11_Derive()
 16224 ms  0xffb basekey:0x7faa482a5580
 16224 ms     | 0xffb PK11_DeriveWithTemplate()
 16224 ms  0xffb ret:0x7faa482a5e00
 16224 ms  0xffb SECKEY_DestroyPrivateKey()
 16224 ms  0xffb privk:0x7faa4828b820::7faa4828b820  00 11 be 47                                      ...G
 16224 ms  0xffb privk:0x7faa4828b820::7faa4828b820  e5 e5 e5 e5                                      ....
 16231 ms  0xffb SSL_AuthCertificateComplete()
 16231 ms  0xffb fd:0x7faa46f69700
 16231 ms  0xffb err:0x0
 16232 ms  SECKEY_ECParamsToKeySize()
 16232 ms  0xffb ret:0xff
 16232 ms  0xffb SECKEY_CreateECPrivateKey()
 16232 ms  0xffb cx:0x7faa4d267728
 16233 ms     | 0xffb EC_ValidatePublicKey()
 16233 ms     | 0xffb ret:0x0
 16233 ms  0xffb ret:0x7faa4828c820::7faa4828c820  60 30 2b 48                                      `0+H
 16233 ms  0xffb PK11_PubDeriveWithKDF()
 16233 ms  0xffb seckey:0x7faa4828c820
 16233 ms     | 0xffb EC_ValidatePublicKey()
 16233 ms     | 0xffb ret:0x0
 16234 ms  0xffb ret:0x7faa4128ff00
 16234 ms  0xffb PK11_DeriveWithFlags()
 16234 ms  0xffb basekey:0x7faa4128ff00
 16234 ms     | 0xffb PK11_DeriveWithTemplate()
 16234 ms  0xffb ret:0x7faa482add80
 16234 ms  0xffb PK11_Derive()
 16234 ms  0xffb basekey:0x7faa482add80
 16234 ms     | 0xffb PK11_DeriveWithTemplate()
 16234 ms  0xffb ret:0x7faa3ffdcf00
 16234 ms  0xffb SECKEY_DestroyPrivateKey()
 16234 ms  0xffb privk:0x7faa4828c820::7faa4828c820  60 30 2b 48                                      `0+H
 16243 ms  0xffb privk:0x7faa4828c820::7faa4828c820  e5 e5 e5 e5                                      ....
 16243 ms  0xffb SSL_AuthCertificateComplete()
 16243 ms  0xffb fd:0x7faa445f4df0
 16243 ms  0xffb err:0x0
           /* TID 0x1003 */
 16245 ms  0x1003 PR_Close()
 16245 ms  0x1003 fd:0x7faa447f3340
           /* TID 0xffb */
 16247 ms  SECKEY_ECParamsToKeySize()
 16247 ms  0xffb ret:0xff
 16247 ms  0xffb SECKEY_CreateECPrivateKey()
 16247 ms  0xffb cx:0x7faa4d267a68
 16247 ms     | 0xffb EC_ValidatePublicKey()
 16247 ms     | 0xffb ret:0x0
 16247 ms  0xffb ret:0x7faa4828d020::7faa4828d020  a0 11 be 47                                      ...G
 16247 ms  0xffb PK11_PubDeriveWithKDF()
 16247 ms  0xffb seckey:0x7faa4828d020
 16247 ms     | 0xffb EC_ValidatePublicKey()
 16247 ms     | 0xffb ret:0x0
 16248 ms  0xffb ret:0x7faa4128ff00
 16248 ms  0xffb PK11_DeriveWithFlags()
 16248 ms  0xffb basekey:0x7faa4128ff00
 16248 ms     | 0xffb PK11_DeriveWithTemplate()
 16248 ms  0xffb ret:0x7faa3ef0f100
 16248 ms  0xffb PK11_Derive()
 16248 ms  0xffb basekey:0x7faa3ef0f100
 16248 ms     | 0xffb PK11_DeriveWithTemplate()
 16248 ms  0xffb ret:0x7faa3f7fe600
 16248 ms  0xffb SECKEY_DestroyPrivateKey()
 16248 ms  0xffb privk:0x7faa4828d020::7faa4828d020  a0 11 be 47                                      ...G
 16248 ms  0xffb privk:0x7faa4828d020::7faa4828d020  e5 e5 e5 e5                                      ....
 16248 ms  0xffb SECKEY_DestroyPrivateKey()
 16248 ms  0xffb privk:0x7faa46f2a020::7faa46f2a020  10 f5 08 48                                      ...H
 16248 ms  0xffb privk:0x7faa46f2a020::7faa46f2a020  e5 e5 e5 e5                                      ....
 16248 ms  0xffb SECKEY_DestroyPrivateKey()
 16248 ms  0xffb privk:0x7faa46f28020::7faa46f28020  60 1a be 47                                      `..G
 16248 ms  0xffb privk:0x7faa46f28020::7faa46f28020  e5 e5 e5 e5                                      ....
 16249 ms  0xffb PK11_Encrypt()
 16249 ms  0xffb symkey:0x7faa4126bc80
 16252 ms  0xffb SSL_AuthCertificateComplete()
 16252 ms  0xffb fd:0x7faa46fbdaf0
 16252 ms  0xffb err:0x0
 16257 ms  SECKEY_ECParamsToKeySize()
 16257 ms  0xffb ret:0xff
 16257 ms  0xffb SECKEY_CreateECPrivateKey()
 16257 ms  0xffb cx:0x7faa4d267c08
 16257 ms     | 0xffb EC_ValidatePublicKey()
 16257 ms     | 0xffb ret:0x0
 16257 ms  0xffb ret:0x7faa4828e820::7faa4828e820  40 32 2b 48                                      @2+H
 16258 ms  0xffb PK11_PubDeriveWithKDF()
 16258 ms  0xffb seckey:0x7faa4828e820
 16258 ms     | 0xffb EC_ValidatePublicKey()
 16258 ms     | 0xffb ret:0x0
 16258 ms  0xffb ret:0x7faa4128ff00
 16259 ms  0xffb PK11_DeriveWithFlags()
 16259 ms  0xffb basekey:0x7faa4128ff00
 16259 ms     | 0xffb PK11_DeriveWithTemplate()
 16259 ms  0xffb ret:0x7faa487d8380
 16259 ms  0xffb PK11_Derive()
 16259 ms  0xffb basekey:0x7faa487d8380
 16259 ms     | 0xffb PK11_DeriveWithTemplate()
 16259 ms  0xffb ret:0x7faa487d8480
 16259 ms  0xffb SECKEY_DestroyPrivateKey()
 16259 ms  0xffb privk:0x7faa4828e820::7faa4828e820  40 32 2b 48                                      @2+H
 16259 ms  0xffb privk:0x7faa4828e820::7faa4828e820  e5 e5 e5 e5                                      ....
 16259 ms  0xffb PK11_Encrypt()
 16259 ms  0xffb symkey:0x7faa48d0a400
 16267 ms  0xffb PK11_Encrypt()
 16267 ms  0xffb symkey:0x7faa3dd86080
           /* TID 0x1003 */
 16269 ms  0x1003 PR_Close()
 16269 ms  0x1003 fd:0x7faa47b2f640
 16271 ms  0x1003 PR_Close()
 16271 ms  0x1003 fd:0x7faa47b1ba30
           /* TID 0xffb */
 16274 ms  SECKEY_ECParamsToKeySize()
 16274 ms  0xffb ret:0xff
 16274 ms  0xffb SECKEY_CreateECPrivateKey()
 16274 ms  0xffb cx:0x7faa4d2680e8
 16275 ms     | 0xffb EC_ValidatePublicKey()
 16275 ms     | 0xffb ret:0x0
 16275 ms  0xffb ret:0x7faa48292020::7faa48292020  50 3b 2b 48                                      P;+H
 16275 ms  0xffb PK11_PubDeriveWithKDF()
 16275 ms  0xffb seckey:0x7faa48292020
 16275 ms     | 0xffb EC_ValidatePublicKey()
 16275 ms     | 0xffb ret:0x0
 16275 ms  0xffb ret:0x7faa4128ff00
 16275 ms  0xffb PK11_DeriveWithFlags()
 16275 ms  0xffb basekey:0x7faa4128ff00
 16275 ms     | 0xffb PK11_DeriveWithTemplate()
 16275 ms  0xffb ret:0x7faa482aed80
 16276 ms  0xffb PK11_Derive()
 16276 ms  0xffb basekey:0x7faa482aed80
 16276 ms     | 0xffb PK11_DeriveWithTemplate()
 16276 ms  0xffb ret:0x7faa482aee00
 16276 ms  0xffb SECKEY_DestroyPrivateKey()
 16276 ms  0xffb privk:0x7faa48292020::7faa48292020  50 3b 2b 48                                      P;+H
 16276 ms  0xffb privk:0x7faa48292020::7faa48292020  e5 e5 e5 e5                                      ....
 16276 ms  0xffb SSL_AuthCertificateComplete()
 16276 ms  0xffb fd:0x7faa470539a0
 16276 ms  0xffb err:0x0
 16285 ms  SECKEY_ECParamsToKeySize()
 16285 ms  0xffb ret:0xff
 16285 ms  0xffb SECKEY_CreateECPrivateKey()
 16285 ms  0xffb cx:0x7faa4d267da8
 16285 ms     | 0xffb EC_ValidatePublicKey()
 16285 ms     | 0xffb ret:0x0
 16285 ms  0xffb ret:0x7faa48293020::7faa48293020  f0 3b 2b 48                                      .;+H
 16285 ms  0xffb PK11_PubDeriveWithKDF()
 16285 ms  0xffb seckey:0x7faa48293020
 16286 ms     | 0xffb EC_ValidatePublicKey()
 16286 ms     | 0xffb ret:0x0
 16286 ms  0xffb ret:0x7faa4128ff00
 16286 ms  0xffb PK11_DeriveWithFlags()
 16286 ms  0xffb basekey:0x7faa4128ff00
 16286 ms     | 0xffb PK11_DeriveWithTemplate()
 16286 ms  0xffb ret:0x7faa49062880
 16286 ms  0xffb PK11_Derive()
 16286 ms  0xffb basekey:0x7faa49062880
 16286 ms     | 0xffb PK11_DeriveWithTemplate()
 16286 ms  0xffb ret:0x7faa49062c00
 16286 ms  0xffb SECKEY_DestroyPrivateKey()
 16286 ms  0xffb privk:0x7faa48293020::7faa48293020  f0 3b 2b 48                                      .;+H
 16286 ms  0xffb privk:0x7faa48293020::7faa48293020  e5 e5 e5 e5                                      ....
 16287 ms  0xffb SSL_AuthCertificateComplete()
 16287 ms  0xffb fd:0x7faa4701fee0
 16287 ms  0xffb err:0x0
           /* TID 0x1093 */
 16288 ms  0x1093 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16288 ms  0x1093 ret:0x0
           /* TID 0x1003 */
 16288 ms  0x1003 PR_Close()
 16288 ms  0x1003 fd:0x7faa47be43a0
           /* TID 0xffb */
 16288 ms  0xffb SSL_AuthCertificateComplete()
 16288 ms  0xffb fd:0x7faa46fbac40
 16288 ms  0xffb err:0x0
 16289 ms  0xffb PK11_Encrypt()
 16289 ms  0xffb symkey:0x7faa48d0a400
           /* TID 0x1003 */
 16291 ms  0x1003 PR_Close()
 16291 ms  0x1003 fd:0x7faa481ff220
           /* TID 0xffb */
 16298 ms  SECKEY_ECParamsToKeySize()
 16298 ms  0xffb ret:0xff
 16298 ms  0xffb SECKEY_CreateECPrivateKey()
 16298 ms  0xffb cx:0x7faa4d267f48
 16299 ms     | 0xffb EC_ValidatePublicKey()
 16299 ms     | 0xffb ret:0x0
 16299 ms  0xffb ret:0x7faa48292820::7faa48292820  00 3b 2b 48                                      .;+H
 16299 ms  0xffb PK11_PubDeriveWithKDF()
 16299 ms  0xffb seckey:0x7faa48292820
 16299 ms     | 0xffb EC_ValidatePublicKey()
 16299 ms     | 0xffb ret:0x0
 16299 ms  0xffb ret:0x7faa4128ff00
 16299 ms  0xffb PK11_DeriveWithFlags()
 16299 ms  0xffb basekey:0x7faa4128ff00
 16299 ms     | 0xffb PK11_DeriveWithTemplate()
 16299 ms  0xffb ret:0x7faa3ffc5f00
 16299 ms  0xffb PK11_Derive()
 16299 ms  0xffb basekey:0x7faa3ffc5f00
 16299 ms     | 0xffb PK11_DeriveWithTemplate()
 16299 ms  0xffb ret:0x7faa482aec00
 16299 ms  0xffb SECKEY_DestroyPrivateKey()
 16299 ms  0xffb privk:0x7faa48292820::7faa48292820  00 3b 2b 48                                      .;+H
 16300 ms  0xffb privk:0x7faa48292820::7faa48292820  e5 e5 e5 e5                                      ....
 16301 ms  0xffb SSL_AuthCertificateComplete()
 16301 ms  0xffb fd:0x7faa470535e0
 16301 ms  0xffb err:0x0
 16315 ms  0xffb SSL_ImportFD()
 16315 ms  0xffb ret:0x7faa4808deb0
 16315 ms  0xffb SSL_AuthCertificateHook()
 16315 ms  0xffb fd:0x7faa4808deb0
 16315 ms  0xffb ret:0x0
 16315 ms  0xffb PR_Connect()
 16315 ms  0xffb fd:0x7faa4808deb0
 16317 ms  0xffb PK11_Encrypt()
 16317 ms  0xffb symkey:0x7faa482ad380
           /* TID 0x1003 */
 16320 ms  0x1003 PR_Close()
 16320 ms  0x1003 fd:0x7faa4126daf0
           /* TID 0xffb */
 16324 ms  0xffb SSL_ImportFD()
 16324 ms  0xffb ret:0x7faa47b1b460
 16324 ms  0xffb SSL_AuthCertificateHook()
 16324 ms  0xffb fd:0x7faa47b1b460
 16324 ms  0xffb ret:0x0
 16324 ms  0xffb PR_Connect()
 16324 ms  0xffb fd:0x7faa47b1b460
 16326 ms  0xffb SSL_ImportFD()
 16326 ms  0xffb ret:0x7faa490c8190
 16328 ms  0xffb SSL_AuthCertificateHook()
 16328 ms  0xffb fd:0x7faa490c8190
 16328 ms  0xffb ret:0x0
 16328 ms  0xffb PR_Connect()
 16328 ms  0xffb fd:0x7faa490c8190
 16328 ms  0xffb SSL_ImportFD()
 16328 ms  0xffb ret:0x7faa48b8e1c0
 16328 ms  0xffb SSL_AuthCertificateHook()
 16328 ms  0xffb fd:0x7faa48b8e1c0
 16328 ms  0xffb ret:0x0
 16328 ms  0xffb PR_Connect()
 16328 ms  0xffb fd:0x7faa48b8e1c0
 16335 ms  0xffb PK11_Encrypt()
 16335 ms  0xffb symkey:0x7faa3f236080
           /* TID 0x1003 */
 16340 ms  0x1003 PR_Close()
 16340 ms  0x1003 fd:0x7faa4126daf0
           /* TID 0xffb */
 16354 ms  0xffb PK11_Encrypt()
 16354 ms  0xffb symkey:0x7faa487d8b00
           /* TID 0x1003 */
 16358 ms  0x1003 PR_Close()
 16358 ms  0x1003 fd:0x7faa447f3dc0
           /* TID 0xffb */
 16372 ms  0xffb PK11_Encrypt()
 16372 ms  0xffb symkey:0x7faa3dd86080
           /* TID 0x1003 */
 16379 ms  0x1003 PR_Close()
 16379 ms  0x1003 fd:0x7faa482c6400
           /* TID 0xffb */
 16384 ms  0xffb PK11_Encrypt()
 16384 ms  0xffb symkey:0x7faa440e6700
           /* TID 0x1003 */
 16385 ms  0x1003 PR_Close()
 16385 ms  0x1003 fd:0x7faa46f501f0
           /* TID 0xffb */
 16399 ms  0xffb PK11_Encrypt()
 16399 ms  0xffb symkey:0x7faa482a5a00
 16435 ms  0xffb PK11_Encrypt()
 16435 ms  0xffb symkey:0x7faa48781600
 16437 ms  0xffb PK11_Encrypt()
 16437 ms  0xffb symkey:0x7faa4126b880
           /* TID 0x1003 */
 16438 ms  0x1003 PR_Close()
 16438 ms  0x1003 fd:0x7faa47be4160
           /* TID 0xffb */
 16445 ms  0xffb PK11_Encrypt()
 16445 ms  0xffb symkey:0x7faa41285480
           /* TID 0x1003 */
 16446 ms  0x1003 PR_Close()
 16446 ms  0x1003 fd:0x7faa46f503d0
 16449 ms  0x1003 PR_Close()
 16449 ms  0x1003 fd:0x7faa46f503d0
           /* TID 0xffb */
 16449 ms  0xffb PK11_Encrypt()
 16449 ms  0xffb symkey:0x7faa3e692900
           /* TID 0x1003 */
 16453 ms  0x1003 PR_Close()
 16453 ms  0x1003 fd:0x7faa4808d820
           /* TID 0xffb */
 16456 ms  0xffb SECKEY_DestroyPrivateKey()
 16456 ms  0xffb privk:0x7faa44306820::7faa44306820  d0 38 fc 46                                      .8.F
 16456 ms  0xffb privk:0x7faa44306820::7faa44306820  e5 e5 e5 e5                                      ....
 16456 ms  0xffb SECKEY_DestroyPrivateKey()
 16456 ms  0xffb privk:0x7faa44304020::7faa44304020  50 56 f6 46                                      PV.F
 16456 ms  0xffb privk:0x7faa44304020::7faa44304020  e5 e5 e5 e5                                      ....
 16478 ms  0xffb SECKEY_DestroyPrivateKey()
 16478 ms  0xffb privk:0x7faa446c1020::7faa446c1020  40 fc f4 46                                      @..F
 16478 ms  0xffb privk:0x7faa446c1020::7faa446c1020  e5 e5 e5 e5                                      ....
 16478 ms  0xffb SECKEY_DestroyPrivateKey()
 16478 ms  0xffb privk:0x7faa446bd020::7faa446bd020  e0 3c fc 46                                      .<.F
 16478 ms  0xffb privk:0x7faa446bd020::7faa446bd020  e5 e5 e5 e5                                      ....
 16479 ms  0xffb SECKEY_DestroyPrivateKey()
 16479 ms  0xffb privk:0x7faa46f1b820::7faa46f1b820  00 0b b8 47                                      ...G
 16479 ms  0xffb privk:0x7faa46f1b820::7faa46f1b820  e5 e5 e5 e5                                      ....
 16479 ms  0xffb SECKEY_DestroyPrivateKey()
 16479 ms  0xffb privk:0x7faa46f16820::7faa46f16820  30 d3 b3 47                                      0..G
 16479 ms  0xffb privk:0x7faa46f16820::7faa46f16820  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
 16483 ms  0x1003 PR_Close()
 16483 ms  0x1003 fd:0x7faa46fbab80
           /* TID 0xffb */
 16483 ms  0xffb PK11_Encrypt()
 16483 ms  0xffb symkey:0x7faa4126bc80
 16483 ms  0xffb SECKEY_DestroyPrivateKey()
 16483 ms  0xffb privk:0x7faa44792020::7faa44792020  f0 36 b2 47                                      .6.G
 16483 ms  0xffb privk:0x7faa44792020::7faa44792020  e5 e5 e5 e5                                      ....
 16483 ms  0xffb SECKEY_DestroyPrivateKey()
 16483 ms  0xffb privk:0x7faa4478a820::7faa4478a820  10 da b1 47                                      ...G
 16484 ms  0xffb privk:0x7faa4478a820::7faa4478a820  e5 e5 e5 e5                                      ....
 16490 ms  0xffb SECKEY_DestroyPrivateKey()
 16490 ms  0xffb privk:0x7faa480dc020::7faa480dc020  d0 7d 14 48                                      .}.H
 16490 ms  0xffb privk:0x7faa480dc020::7faa480dc020  e5 e5 e5 e5                                      ....
 16490 ms  0xffb SECKEY_DestroyPrivateKey()
 16490 ms  0xffb privk:0x7faa480d8020::7faa480d8020  50 6b 0f 48                                      Pk.H
 16490 ms  0xffb privk:0x7faa480d8020::7faa480d8020  e5 e5 e5 e5                                      ....
 16521 ms  0xffb SECKEY_DestroyPrivateKey()
 16521 ms  0xffb privk:0x7faa46f2e820::7faa46f2e820  60 fa 08 48                                      `..H
 16521 ms  0xffb privk:0x7faa46f2e820::7faa46f2e820  e5 e5 e5 e5                                      ....
 16521 ms  0xffb SECKEY_DestroyPrivateKey()
 16521 ms  0xffb privk:0x7faa46f2c820::7faa46f2c820  50 f6 08 48                                      P..H
 16521 ms  0xffb privk:0x7faa46f2c820::7faa46f2c820  e5 e5 e5 e5                                      ....
 16522 ms  0xffb SSL_ImportFD()
 16522 ms  0xffb ret:0x7faa4701ffd0
 16522 ms  0xffb SSL_AuthCertificateHook()
 16522 ms  0xffb fd:0x7faa4701ffd0
 16522 ms  0xffb ret:0x0
 16522 ms  0xffb PR_Connect()
 16522 ms  0xffb fd:0x7faa4701ffd0
 16524 ms  0xffb PK11_Encrypt()
 16524 ms  0xffb symkey:0x7faa4128e080
 16532 ms  0xffb SECKEY_DestroyPrivateKey()
 16532 ms  0xffb privk:0x7faa480ea820::7faa480ea820  80 a8 1c 48                                      ...H
 16532 ms  0xffb privk:0x7faa480ea820::7faa480ea820  e5 e5 e5 e5                                      ....
 16532 ms  0xffb SECKEY_DestroyPrivateKey()
 16532 ms  0xffb privk:0x7faa480e7820::7faa480e7820  80 48 19 48                                      .H.H
 16532 ms  0xffb privk:0x7faa480e7820::7faa480e7820  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
 16532 ms  0x1003 PR_Close()
 16532 ms  0x1003 fd:0x7faa482c65b0
           /* TID 0xffb */
 16549 ms  0xffb PK11_Encrypt()
 16549 ms  0xffb symkey:0x7faa3f236080
           /* TID 0x1003 */
 16550 ms  0x1003 PR_Close()
 16550 ms  0x1003 fd:0x7faa47be45b0
           /* TID 0xffb */
 16552 ms  0xffb PK11_Encrypt()
 16552 ms  0xffb symkey:0x7faa3dd86080
 16560 ms  0xffb PK11_Encrypt()
 16560 ms  0xffb symkey:0x7faa3dd86080
 16563 ms  0xffb SECKEY_CreateECPrivateKey()
 16563 ms  0xffb cx:0x7faa4d269ae8
 16563 ms     | 0xffb EC_ValidatePublicKey()
 16563 ms     | 0xffb ret:0x0
 16563 ms  0xffb ret:0x7faa446bb820::7faa446bb820  10 45 05 47                                      .E.G
 16563 ms  0xffb SECKEY_CreateECPrivateKey()
 16563 ms  0xffb cx:0x7faa4d269ae8
 16564 ms     | 0xffb EC_ValidatePublicKey()
 16565 ms     | 0xffb ret:0x0
 16565 ms  0xffb ret:0x7faa446c0820::7faa446c0820  90 d7 b1 47                                      ...G
 16567 ms  0xffb SSL_ImportFD()
 16567 ms  0xffb ret:0x7faa482c65b0
 16567 ms  0xffb SSL_AuthCertificateHook()
 16567 ms  0xffb fd:0x7faa482c65b0
 16567 ms  0xffb ret:0x0
 16567 ms  0xffb PR_Connect()
 16567 ms  0xffb fd:0x7faa482c65b0
 16570 ms  0xffb SECKEY_CreateECPrivateKey()
 16570 ms  0xffb cx:0x7faa4d269608
 16571 ms     | 0xffb EC_ValidatePublicKey()
 16571 ms     | 0xffb ret:0x0
 16571 ms  0xffb ret:0x7faa4478a820::7faa4478a820  b0 da b1 47                                      ...G
 16571 ms  0xffb SECKEY_CreateECPrivateKey()
 16571 ms  0xffb cx:0x7faa4d269608
 16572 ms     | 0xffb EC_ValidatePublicKey()
 16573 ms     | 0xffb ret:0x0
 16573 ms  0xffb ret:0x7faa44792020::7faa44792020  90 37 b2 47                                      .7.G
 16579 ms  0xffb SSL_ImportFD()
 16579 ms  0xffb ret:0x7faa482c69d0
 16579 ms  0xffb SSL_AuthCertificateHook()
 16579 ms  0xffb fd:0x7faa482c69d0
 16579 ms  0xffb ret:0x0
 16579 ms  0xffb PR_Connect()
 16579 ms  0xffb fd:0x7faa482c69d0
 16579 ms  0xffb SSL_ImportFD()
 16579 ms  0xffb ret:0x7faa4808daf0
 16579 ms  0xffb SSL_AuthCertificateHook()
 16579 ms  0xffb fd:0x7faa4808daf0
 16579 ms  0xffb ret:0x0
 16579 ms  0xffb PR_Connect()
 16579 ms  0xffb fd:0x7faa4808daf0
           /* TID 0x1003 */
 16580 ms  0x1003 PR_Close()
 16580 ms  0x1003 fd:0x7faa46fbda90
           /* TID 0xffb */
 16580 ms  0xffb PK11_Encrypt()
 16580 ms  0xffb symkey:0x7faa3e692900
 16580 ms  0xffb SECKEY_CreateECPrivateKey()
 16580 ms  0xffb cx:0x7faa4d2697a8
 16581 ms     | 0xffb EC_ValidatePublicKey()
 16581 ms     | 0xffb ret:0x0
 16581 ms  0xffb ret:0x7faa4479d820::7faa4479d820  40 d2 b3 47                                      @..G
 16581 ms  0xffb SECKEY_CreateECPrivateKey()
 16581 ms  0xffb cx:0x7faa4d2697a8
 16582 ms     | 0xffb EC_ValidatePublicKey()
 16583 ms     | 0xffb ret:0x0
 16583 ms  0xffb ret:0x7faa46f1b020::7faa46f1b020  00 0b b8 47                                      ...G
           /* TID 0x1003 */
 16589 ms  0x1003 PR_Close()
 16589 ms  0x1003 fd:0x7faa46f50400
           /* TID 0xffb */
 16589 ms  0xffb PK11_Encrypt()
 16589 ms  0xffb symkey:0x7faa487d8b00
           /* TID 0x1003 */
 16603 ms  0x1003 PR_Close()
 16603 ms  0x1003 fd:0x7faa46f503a0
           /* TID 0xffb */
 16611 ms  SECKEY_ECParamsToKeySize()
 16611 ms  0xffb ret:0x100
 16611 ms  0xffb SECKEY_CreateECPrivateKey()
 16611 ms  0xffb cx:0x7faa4d269ae8
 16612 ms     | 0xffb EC_ValidatePublicKey()
 16613 ms     | 0xffb ret:0x0
 16613 ms  0xffb ret:0x7faa480d8020::7faa480d8020  c0 f9 08 48                                      ...H
 16613 ms  0xffb PK11_PubDeriveWithKDF()
 16613 ms  0xffb seckey:0x7faa480d8020
 16613 ms     | 0xffb EC_ValidatePublicKey()
 16615 ms     | 0xffb ret:0x0
 16616 ms  0xffb ret:0x7faa4128ff00
 16616 ms  0xffb PK11_DeriveWithFlags()
 16616 ms  0xffb basekey:0x7faa4128ff00
 16616 ms     | 0xffb PK11_DeriveWithTemplate()
 16617 ms  0xffb ret:0x7faa480a9a00
 16617 ms  0xffb PK11_Derive()
 16617 ms  0xffb basekey:0x7faa480a9a00
 16617 ms     | 0xffb PK11_DeriveWithTemplate()
 16617 ms  0xffb ret:0x7faa4b0a3400
 16617 ms  0xffb SECKEY_DestroyPrivateKey()
 16617 ms  0xffb privk:0x7faa480d8020::7faa480d8020  c0 f9 08 48                                      ...H
 16617 ms  0xffb privk:0x7faa480d8020::7faa480d8020  e5 e5 e5 e5                                      ....
 16617 ms  0xffb PK11_Encrypt()
 16617 ms  0xffb symkey:0x7faa4b681480
 16626 ms  0xffb SECKEY_CreateECPrivateKey()
 16626 ms  0xffb cx:0x7faa4d269948
 16627 ms     | 0xffb EC_ValidatePublicKey()
 16627 ms     | 0xffb ret:0x0
 16627 ms  0xffb ret:0x7faa480dc820::7faa480dc820  e0 fc 08 48                                      ...H
 16627 ms  0xffb SECKEY_CreateECPrivateKey()
 16627 ms  0xffb cx:0x7faa4d269948
 16627 ms     | 0xffb EC_ValidatePublicKey()
 16633 ms     | 0xffb ret:0x0
 16633 ms  0xffb ret:0x7faa480e8820::7faa480e8820  d0 83 12 48                                      ...H
 16634 ms  0xffb SSL_ImportFD()
 16634 ms  0xffb ret:0x7faa482c6f10
 16634 ms  0xffb SSL_AuthCertificateHook()
 16634 ms  0xffb fd:0x7faa482c6f10
 16634 ms  0xffb ret:0x0
 16634 ms  0xffb PR_Connect()
 16634 ms  0xffb fd:0x7faa482c6f10
 16635 ms  0xffb SSL_ImportFD()
 16635 ms  0xffb ret:0x7faa4877d730
 16635 ms  0xffb SSL_AuthCertificateHook()
 16635 ms  0xffb fd:0x7faa4877d730
 16635 ms  0xffb ret:0x0
 16635 ms  0xffb PR_Connect()
 16635 ms  0xffb fd:0x7faa4877d730
 16637 ms  0xffb SSL_ImportFD()
 16637 ms  0xffb ret:0x7faa4878a160
 16637 ms  0xffb SSL_AuthCertificateHook()
 16637 ms  0xffb fd:0x7faa4878a160
 16637 ms  0xffb ret:0x0
 16637 ms  0xffb PR_Connect()
 16637 ms  0xffb fd:0x7faa4878a160
 16639 ms  0xffb SSL_ImportFD()
 16639 ms  0xffb ret:0x7faa4878ac10
 16639 ms  0xffb SSL_AuthCertificateHook()
 16639 ms  0xffb fd:0x7faa4878ac10
 16639 ms  0xffb ret:0x0
 16639 ms  0xffb PR_Connect()
 16639 ms  0xffb fd:0x7faa4878ac10
 16640 ms  0xffb PK11_Encrypt()
 16640 ms  0xffb symkey:0x7faa482a5a00
           /* TID 0xff0 */
 16644 ms  0xff0 PR_Close()
 16644 ms  0xff0 fd:0x7faa46f69400
 16644 ms  0xff0 PR_Close()
 16644 ms  0xff0 fd:0x7faa46f69400
 16644 ms  0xff0 PR_Close()
 16644 ms  0xff0 fd:0x7faa46f69400
 16644 ms  0xff0 PR_Close()
 16644 ms  0xff0 fd:0x7faa46f69400
           /* TID 0xffb */
 16646 ms  0xffb SSL_ImportFD()
 16646 ms  0xffb ret:0x7faa48a41cd0
 16646 ms  0xffb SSL_AuthCertificateHook()
 16646 ms  0xffb fd:0x7faa48a41cd0
 16646 ms  0xffb ret:0x0
 16646 ms  0xffb PR_Connect()
 16646 ms  0xffb fd:0x7faa48a41cd0
           /* TID 0x1003 */
 16651 ms  0x1003 PR_Close()
 16651 ms  0x1003 fd:0x7faa48089a60
           /* TID 0x1094 */
 16651 ms  0x1094 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16651 ms  0x1094 ret:0x0
           /* TID 0xffb */
 16651 ms  0xffb SSL_AuthCertificateComplete()
 16651 ms  0xffb fd:0x7faa4701ffd0
 16651 ms  0xffb err:0x0
 16651 ms  0xffb PK11_Encrypt()
 16651 ms  0xffb symkey:0x7faa4b681480
 16655 ms  0xffb SECKEY_CreateECPrivateKey()
 16655 ms  0xffb cx:0x7faa4d269468
 16656 ms     | 0xffb EC_ValidatePublicKey()
 16656 ms     | 0xffb ret:0x0
 16656 ms  0xffb ret:0x7faa4702f020::7faa4702f020  d0 48 19 48                                      .H.H
 16656 ms  0xffb SECKEY_CreateECPrivateKey()
 16656 ms  0xffb cx:0x7faa4d269468
 16656 ms     | 0xffb EC_ValidatePublicKey()
 16660 ms     | 0xffb ret:0x0
 16661 ms  0xffb ret:0x7faa48a0c820::7faa48a0c820  00 f6 08 48                                      ...H
 16668 ms  0xffb SECKEY_DestroyPrivateKey()
 16668 ms  0xffb privk:0x7faa446c0820::7faa446c0820  90 d7 b1 47                                      ...G
 16668 ms  0xffb privk:0x7faa446c0820::7faa446c0820  e5 e5 e5 e5                                      ....
 16668 ms  0xffb SECKEY_DestroyPrivateKey()
 16668 ms  0xffb privk:0x7faa446bb820::7faa446bb820  10 45 05 47                                      .E.G
 16668 ms  0xffb privk:0x7faa446bb820::7faa446bb820  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
 16671 ms  0x1003 PR_Close()
 16671 ms  0x1003 fd:0x7faa47bbbe80
           /* TID 0xffb */
 16674 ms  0xffb PK11_Encrypt()
 16674 ms  0xffb symkey:0x7faa48781600
           /* TID 0x1003 */
 16675 ms  0x1003 PR_Close()
 16675 ms  0x1003 fd:0x7faa47b2fa30
 16676 ms  0x1003 PR_Close()
 16676 ms  0x1003 fd:0x7faa47b2fa30
 16677 ms  0x1003 PR_Close()
 16677 ms  0x1003 fd:0x7faa47b2fa30
 16692 ms  0x1003 PR_Close()
 16692 ms  0x1003 fd:0x7faa46f693a0
 16715 ms  0x1003 PR_Close()
 16715 ms  0x1003 fd:0x7faa47091eb0
           /* TID 0xffb */
 16720 ms  0xffb PK11_Encrypt()
 16720 ms  0xffb symkey:0x7faa4128f280
           /* TID 0x1003 */
 16723 ms  0x1003 PR_Close()
 16723 ms  0x1003 fd:0x7faa46f6d8b0
 16726 ms  0x1003 PR_Close()
 16726 ms  0x1003 fd:0x7faa447f35e0
 16731 ms  0x1003 PR_Close()
 16731 ms  0x1003 fd:0x7faa47bbbfa0
           /* TID 0xffb */
 16740 ms  0xffb PK11_Encrypt()
 16740 ms  0xffb symkey:0x7faa3dd86080
 16743 ms  0xffb PK11_Encrypt()
 16743 ms  0xffb symkey:0x7faa3dd86080
           /* TID 0x1003 */
 16748 ms  0x1003 PR_Close()
 16748 ms  0x1003 fd:0x7faa470538b0
           /* TID 0xffb */
 16757 ms  0xffb PK11_Encrypt()
 16757 ms  0xffb symkey:0x7faa3dd86080
           /* TID 0x1003 */
 16763 ms  0x1003 PR_Close()
 16763 ms  0x1003 fd:0x7faa46fbde80
 16765 ms  0x1003 PR_Close()
 16765 ms  0x1003 fd:0x7faa46fbde80
 16769 ms  0x1003 PR_Close()
 16769 ms  0x1003 fd:0x7faa46fbac10
           /* TID 0xffb */
 16779 ms  0xffb PK11_Encrypt()
 16779 ms  0xffb symkey:0x7faa41246680
           /* TID 0x1003 */
 16782 ms  0x1003 PR_Close()
 16782 ms  0x1003 fd:0x7faa4b63a130
 16784 ms  0x1003 PR_Close()
 16784 ms  0x1003 fd:0x7faa47bbbb20
           /* TID 0xffb */
 16787 ms  0xffb PK11_Encrypt()
 16787 ms  0xffb symkey:0x7faa3e16ce80
 16789 ms  0xffb PK11_Encrypt()
 16789 ms  0xffb symkey:0x7faa4128e080
           /* TID 0x1003 */
 16789 ms  0x1003 PR_Close()
 16789 ms  0x1003 fd:0x7faa447f3d30
 16798 ms  0x1003 PR_Close()
 16798 ms  0x1003 fd:0x7faa480894f0
           /* TID 0xffb */
 16800 ms  0xffb PK11_Encrypt()
 16800 ms  0xffb symkey:0x7faa4128f280
 16820 ms  SECKEY_ECParamsToKeySize()
 16820 ms  0xffb ret:0xff
 16820 ms  0xffb SECKEY_CreateECPrivateKey()
 16820 ms  0xffb cx:0x7faa4d269608
 16821 ms     | 0xffb EC_ValidatePublicKey()
 16821 ms     | 0xffb ret:0x0
 16821 ms  0xffb ret:0x7faa2cf0d820::7faa2cf0d820  20 49 19 48                                       I.H
 16821 ms  0xffb PK11_PubDeriveWithKDF()
 16821 ms  0xffb seckey:0x7faa2cf0d820
 16821 ms     | 0xffb EC_ValidatePublicKey()
 16821 ms     | 0xffb ret:0x0
 16821 ms  0xffb ret:0x7faa4128ff00
 16821 ms  0xffb PK11_DeriveWithFlags()
 16821 ms  0xffb basekey:0x7faa4128ff00
 16821 ms     | 0xffb PK11_DeriveWithTemplate()
 16821 ms  0xffb ret:0x7faa4c00e500
 16821 ms  0xffb PK11_Derive()
 16821 ms  0xffb basekey:0x7faa4c00e500
 16821 ms     | 0xffb PK11_DeriveWithTemplate()
 16821 ms  0xffb ret:0x7faa4c00e580
 16821 ms  0xffb SECKEY_DestroyPrivateKey()
 16821 ms  0xffb privk:0x7faa2cf0d820::7faa2cf0d820  20 49 19 48                                       I.H
 16822 ms  0xffb privk:0x7faa2cf0d820::7faa2cf0d820  e5 e5 e5 e5                                      ....
 16822 ms  0xffb PK11_Encrypt()
 16822 ms  0xffb symkey:0x7faa4c00e700
           /* TID 0x1003 */
 16823 ms  0x1003 PR_Close()
 16823 ms  0x1003 fd:0x7faa46f69070
 16828 ms  0x1003 PR_Close()
 16828 ms  0x1003 fd:0x7faa46f69070
 16829 ms  0x1003 PR_Close()
 16829 ms  0x1003 fd:0x7faa46f50280
           /* TID 0xffb */
 16835 ms  0xffb SECKEY_CreateECPrivateKey()
 16835 ms  0xffb cx:0x7faa4d269fc8
 16836 ms     | 0xffb EC_ValidatePublicKey()
 16836 ms     | 0xffb ret:0x0
 16836 ms  0xffb ret:0x7faa2cf10020::7faa2cf10020  b0 45 05 47                                      .E.G
 16836 ms  0xffb SECKEY_CreateECPrivateKey()
 16836 ms  0xffb cx:0x7faa4d269fc8
 16836 ms     | 0xffb EC_ValidatePublicKey()
 16838 ms     | 0xffb ret:0x0
 16838 ms  0xffb ret:0x7faa2cf12020::7faa2cf12020  c0 a9 1c 48                                      ...H
 16843 ms  SECKEY_ECParamsToKeySize()
 16843 ms  0xffb ret:0x100
 16843 ms  0xffb SECKEY_CreateECPrivateKey()
 16843 ms  0xffb cx:0x7faa4d2697a8
 16844 ms     | 0xffb EC_ValidatePublicKey()
 16846 ms     | 0xffb ret:0x0
 16846 ms  0xffb ret:0x7faa2cf15820::7faa2cf15820  70 ae 1c 48                                      p..H
 16846 ms  0xffb PK11_PubDeriveWithKDF()
 16846 ms  0xffb seckey:0x7faa2cf15820
 16846 ms     | 0xffb EC_ValidatePublicKey()
 16847 ms     | 0xffb ret:0x0
 16852 ms  0xffb ret:0x7faa4128ff00
 16852 ms  0xffb PK11_DeriveWithFlags()
 16852 ms  0xffb basekey:0x7faa4128ff00
 16852 ms     | 0xffb PK11_DeriveWithTemplate()
 16852 ms  0xffb ret:0x7faa4c00e400
 16852 ms  0xffb PK11_Derive()
 16852 ms  0xffb basekey:0x7faa4c00e400
 16852 ms     | 0xffb PK11_DeriveWithTemplate()
 16852 ms  0xffb ret:0x7faa4c00ee00
 16852 ms  0xffb SECKEY_DestroyPrivateKey()
 16852 ms  0xffb privk:0x7faa2cf15820::7faa2cf15820  70 ae 1c 48                                      p..H
 16857 ms  0xffb privk:0x7faa2cf15820::7faa2cf15820  e5 e5 e5 e5                                      ....
 16857 ms  0xffb PK11_Encrypt()
 16857 ms  0xffb symkey:0x7faa4c00ef80
 16858 ms  0xffb SSL_AuthCertificateComplete()
 16858 ms  0xffb fd:0x7faa490c8190
 16858 ms  0xffb err:0x0
 16858 ms  0xffb PK11_Encrypt()
 16858 ms  0xffb symkey:0x7faa4c00ef80
           /* TID 0x1003 */
 16864 ms  0x1003 PR_Close()
 16864 ms  0x1003 fd:0x7faa4b63a400
           /* TID 0xffb */
 16864 ms  0xffb PK11_Encrypt()
 16864 ms  0xffb symkey:0x7faa3e692900
 16865 ms  0xffb PK11_Encrypt()
 16865 ms  0xffb symkey:0x7faa3e692900
           /* TID 0x1003 */
 16882 ms  0x1003 PR_Close()
 16882 ms  0x1003 fd:0x7faa470538b0
 16882 ms  0x1003 PR_Close()
 16882 ms  0x1003 fd:0x7faa4808df70
 16882 ms  0x1003 PR_Close()
 16882 ms  0x1003 fd:0x7faa4b63a610
 16885 ms  0x1003 PR_Close()
 16885 ms  0x1003 fd:0x7faa47053730
 16888 ms  0x1003 PR_Close()
 16888 ms  0x1003 fd:0x7faa47053730
           /* TID 0xffb */
 16888 ms  0xffb SECKEY_CreateECPrivateKey()
 16888 ms  0xffb cx:0x7faa4d269c88
 16889 ms     | 0xffb EC_ValidatePublicKey()
 16889 ms     | 0xffb ret:0x0
 16889 ms  0xffb ret:0x7faa2cf1a020::7faa2cf1a020  90 8c 6e 44                                      ..nD
 16890 ms  0xffb SECKEY_CreateECPrivateKey()
 16890 ms  0xffb cx:0x7faa4d269c88
 16891 ms     | 0xffb EC_ValidatePublicKey()
 16892 ms     | 0xffb ret:0x0
 16892 ms  0xffb ret:0x7faa2cf1c820::7faa2cf1c820  c0 44 05 47                                      .D.G
 16897 ms  0xffb PK11_Encrypt()
 16897 ms  0xffb symkey:0x7faa3e692900
 16898 ms  0xffb SECKEY_CreateECPrivateKey()
 16898 ms  0xffb cx:0x7faa4d26a4a8
 16898 ms     | 0xffb EC_ValidatePublicKey()
 16898 ms     | 0xffb ret:0x0
 16898 ms  0xffb ret:0x7faa2cf20020::7faa2cf20020  e0 32 2b 48                                      .2+H
 16899 ms  0xffb SECKEY_CreateECPrivateKey()
 16899 ms  0xffb cx:0x7faa4d26a4a8
 16899 ms     | 0xffb EC_ValidatePublicKey()
 16901 ms     | 0xffb ret:0x0
 16901 ms  0xffb ret:0x7faa2cf22020::7faa2cf22020  f0 3b 2b 48                                      .;+H
 16901 ms  0xffb SSL_ImportFD()
 16901 ms  0xffb ret:0x7faa4b63a7f0
 16901 ms  0xffb SSL_AuthCertificateHook()
 16901 ms  0xffb fd:0x7faa4b63a7f0
 16901 ms  0xffb ret:0x0
 16901 ms  0xffb PR_Connect()
 16901 ms  0xffb fd:0x7faa4b63a7f0
 16901 ms  0xffb SSL_ImportFD()
 16901 ms  0xffb ret:0x7faa4b63a730
 16901 ms  0xffb SSL_AuthCertificateHook()
 16901 ms  0xffb fd:0x7faa4b63a730
 16901 ms  0xffb ret:0x0
 16901 ms  0xffb PR_Connect()
 16901 ms  0xffb fd:0x7faa4b63a730
 16901 ms  0xffb SSL_ImportFD()
 16901 ms  0xffb ret:0x7faa4b63a700
 16901 ms  0xffb SSL_AuthCertificateHook()
 16901 ms  0xffb fd:0x7faa4b63a700
 16901 ms  0xffb ret:0x0
 16901 ms  0xffb PR_Connect()
 16901 ms  0xffb fd:0x7faa4b63a700
           /* TID 0x1093 */
 16908 ms  0x1093 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16908 ms  0x1093 ret:0x0
           /* TID 0x1003 */
 16909 ms  0x1003 PR_Close()
 16909 ms  0x1003 fd:0x7faa481ff1c0
           /* TID 0xffb */
 16909 ms  0xffb SSL_ImportFD()
 16909 ms  0xffb ret:0x7faa4b63a2e0
 16909 ms  0xffb SSL_AuthCertificateHook()
 16909 ms  0xffb fd:0x7faa4b63a2e0
 16909 ms  0xffb ret:0x0
 16909 ms  0xffb PR_Connect()
 16909 ms  0xffb fd:0x7faa4b63a2e0
 16909 ms  0xffb SSL_AuthCertificateComplete()
 16909 ms  0xffb fd:0x7faa47b1b460
 16909 ms  0xffb err:0x0
 16909 ms  0xffb PK11_Encrypt()
 16909 ms  0xffb symkey:0x7faa4c00e700
 16910 ms  0xffb SECKEY_CreateECPrivateKey()
 16910 ms  0xffb cx:0x7faa4d26ae68
 16910 ms     | 0xffb EC_ValidatePublicKey()
 16910 ms     | 0xffb ret:0x0
 16910 ms  0xffb ret:0x7faa2cf0d020::7faa2cf0d020  60 9f b1 47                                      `..G
 16910 ms  0xffb SECKEY_CreateECPrivateKey()
 16910 ms  0xffb cx:0x7faa4d26ae68
 16911 ms     | 0xffb EC_ValidatePublicKey()
 16912 ms     | 0xffb ret:0x0
 16912 ms  0xffb ret:0x7faa3de4e020::7faa3de4e020  d0 3d 2b 48                                      .=+H
 16917 ms  0xffb SSL_ImportFD()
 16917 ms  0xffb ret:0x7faa4b63ae80
 16917 ms  0xffb SSL_AuthCertificateHook()
 16917 ms  0xffb fd:0x7faa4b63ae80
 16917 ms  0xffb ret:0x0
 16917 ms  0xffb PR_Connect()
 16917 ms  0xffb fd:0x7faa4b63ae80
           /* TID 0x1003 */
 16918 ms  0x1003 PR_Close()
 16918 ms  0x1003 fd:0x7faa4808d760
           /* TID 0xffb */
 16919 ms  0xffb SECKEY_CreateECPrivateKey()
 16919 ms  0xffb cx:0x7faa4d26a308
 16919 ms     | 0xffb EC_ValidatePublicKey()
 16919 ms     | 0xffb ret:0x0
 16919 ms  0xffb ret:0x7faa46f29820::7faa46f29820  60 3f 2b 48                                      `?+H
 16919 ms  0xffb SECKEY_CreateECPrivateKey()
 16919 ms  0xffb cx:0x7faa4d26a308
 16920 ms     | 0xffb EC_ValidatePublicKey()
 16921 ms     | 0xffb ret:0x0
 16921 ms  0xffb ret:0x7faa48291820::7faa48291820  a0 a1 2b 48                                      ..+H
 16925 ms  0xffb PK11_Encrypt()
 16925 ms  0xffb symkey:0x7faa4128f280
 16928 ms  SECKEY_ECParamsToKeySize()
 16928 ms  0xffb ret:0x100
 16928 ms  0xffb SECKEY_CreateECPrivateKey()
 16928 ms  0xffb cx:0x7faa4d269948
 16928 ms     | 0xffb EC_ValidatePublicKey()
 16931 ms     | 0xffb ret:0x0
 16931 ms  0xffb ret:0x7faa48b69820::7faa48b69820  d0 a8 2b 48                                      ..+H
 16931 ms  0xffb PK11_PubDeriveWithKDF()
 16931 ms  0xffb seckey:0x7faa48b69820
 16931 ms     | 0xffb EC_ValidatePublicKey()
 16933 ms     | 0xffb ret:0x0
 16935 ms  0xffb ret:0x7faa4128ff00
 16935 ms  0xffb PK11_DeriveWithFlags()
 16935 ms  0xffb basekey:0x7faa4128ff00
 16935 ms     | 0xffb PK11_DeriveWithTemplate()
 16935 ms  0xffb ret:0x7faa4c0c3880
 16935 ms  0xffb PK11_Derive()
 16935 ms  0xffb basekey:0x7faa4c0c3880
 16935 ms     | 0xffb PK11_DeriveWithTemplate()
 16935 ms  0xffb ret:0x7faa4c0c3900
 16935 ms  0xffb SECKEY_DestroyPrivateKey()
 16935 ms  0xffb privk:0x7faa48b69820::7faa48b69820  d0 a8 2b 48                                      ..+H
 16935 ms  0xffb privk:0x7faa48b69820::7faa48b69820  e5 e5 e5 e5                                      ....
 16935 ms  0xffb PK11_Encrypt()
 16935 ms  0xffb symkey:0x7faa4c0c3a80
 16947 ms  0xffb PK11_Encrypt()
 16947 ms  0xffb symkey:0x7faa3dd86080
           /* TID 0x1003 */
 16948 ms  0x1003 PR_Close()
 16948 ms  0x1003 fd:0x7faa4bfe7130
 16949 ms  0x1003 PR_Close()
 16949 ms  0x1003 fd:0x7faa47053970
           /* TID 0xffb */
 16951 ms  0xffb SECKEY_CreateECPrivateKey()
 16951 ms  0xffb cx:0x7faa4d26acc8
 16952 ms     | 0xffb EC_ValidatePublicKey()
 16952 ms     | 0xffb ret:0x0
 16952 ms  0xffb ret:0x7faa48b6a020::7faa48b6a020  30 a8 2b 48                                      0.+H
 16952 ms  0xffb SECKEY_CreateECPrivateKey()
 16952 ms  0xffb cx:0x7faa4d26acc8
 16952 ms     | 0xffb EC_ValidatePublicKey()
 16954 ms     | 0xffb ret:0x0
 16954 ms  0xffb ret:0x7faa48b6c020::7faa48b6c020  10 aa 2b 48                                      ..+H
           /* TID 0x1003 */
 16960 ms  0x1003 PR_Close()
 16960 ms  0x1003 fd:0x7faa4bfe72b0
 16961 ms  0x1003 PR_Close()
 16961 ms  0x1003 fd:0x7faa4878a8b0
 16964 ms  0x1003 PR_Close()
 16964 ms  0x1003 fd:0x7faa47b08e20
           /* TID 0xffb */
 16967 ms  0xffb SECKEY_CreateECPrivateKey()
 16967 ms  0xffb cx:0x7faa4d26ab28
 16967 ms     | 0xffb EC_ValidatePublicKey()
 16967 ms     | 0xffb ret:0x0
 16967 ms  0xffb ret:0x7faa48b6f820::7faa48b6f820  a0 ab 2b 48                                      ..+H
 16967 ms  0xffb SECKEY_CreateECPrivateKey()
 16967 ms  0xffb cx:0x7faa4d26ab28
 16968 ms     | 0xffb EC_ValidatePublicKey()
 16969 ms     | 0xffb ret:0x0
 16969 ms  0xffb ret:0x7faa48b71820::7faa48b71820  80 ad 2b 48                                      ..+H
 16978 ms  0xffb SSL_ImportFD()
 16978 ms  0xffb ret:0x7faa482c63d0
 16978 ms  0xffb SSL_AuthCertificateHook()
 16978 ms  0xffb fd:0x7faa482c63d0
 16978 ms  0xffb ret:0x0
 16978 ms  0xffb PR_Connect()
 16978 ms  0xffb fd:0x7faa482c63d0
 16986 ms  0xffb PK11_Encrypt()
 16986 ms  0xffb symkey:0x7faa48781600
           /* TID 0x1003 */
 16999 ms  0x1003 PR_Close()
 16999 ms  0x1003 fd:0x7faa46f50d30
 17004 ms  0x1003 PR_Close()
 17004 ms  0x1003 fd:0x7faa46f50d30
 17008 ms  0x1003 PR_Close()
 17008 ms  0x1003 fd:0x7faa46f50d30
           /* TID 0xffb */
 17008 ms  SECKEY_ECParamsToKeySize()
 17008 ms  0xffb ret:0xff
 17008 ms  0xffb SECKEY_CreateECPrivateKey()
 17008 ms  0xffb cx:0x7faa4d269468
 17009 ms     | 0xffb EC_ValidatePublicKey()
 17009 ms     | 0xffb ret:0x0
 17009 ms  0xffb ret:0x7faa48b74820::7faa48b74820  70 ae 2b 48                                      p.+H
 17009 ms  0xffb PK11_PubDeriveWithKDF()
 17009 ms  0xffb seckey:0x7faa48b74820
 17009 ms     | 0xffb EC_ValidatePublicKey()
 17009 ms     | 0xffb ret:0x0
 17009 ms  0xffb ret:0x7faa4128ff00
 17009 ms  0xffb PK11_DeriveWithFlags()
 17009 ms  0xffb basekey:0x7faa4128ff00
 17009 ms     | 0xffb PK11_DeriveWithTemplate()
 17009 ms  0xffb ret:0x7faa4128fe80
 17009 ms  0xffb PK11_Derive()
 17009 ms  0xffb basekey:0x7faa4128fe80
 17009 ms     | 0xffb PK11_DeriveWithTemplate()
 17010 ms  0xffb ret:0x7faa4c0d3180
 17010 ms  0xffb SECKEY_DestroyPrivateKey()
 17010 ms  0xffb privk:0x7faa48b74820::7faa48b74820  70 ae 2b 48                                      p.+H
 17010 ms  0xffb privk:0x7faa48b74820::7faa48b74820  e5 e5 e5 e5                                      ....
 17010 ms  0xffb PK11_Encrypt()
 17010 ms  0xffb symkey:0x7faa4c0d3300
 17011 ms  0xffb SSL_AuthCertificateComplete()
 17011 ms  0xffb fd:0x7faa4808deb0
 17011 ms  0xffb err:0x0
 17011 ms  0xffb PK11_Encrypt()
 17011 ms  0xffb symkey:0x7faa4c0d3300
           /* TID 0x1003 */
 17015 ms  0x1003 PR_Close()
 17015 ms  0x1003 fd:0x7faa47091e80
 17022 ms  0x1003 PR_Close()
 17022 ms  0x1003 fd:0x7faa48089f40
           /* TID 0x1094 */
 17022 ms  0x1094 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17022 ms  0x1094 ret:0x0
           /* TID 0xffb */
 17022 ms  0xffb SSL_AuthCertificateComplete()
 17022 ms  0xffb fd:0x7faa48b8e1c0
 17022 ms  0xffb err:0x0
 17022 ms  0xffb PK11_Encrypt()
 17022 ms  0xffb symkey:0x7faa4c0c3a80
           /* TID 0x1003 */
 17024 ms  0x1003 PR_Close()
 17024 ms  0x1003 fd:0x7faa482c68b0
           /* TID 0xffb */
 17026 ms  0xffb PK11_Encrypt()
 17026 ms  0xffb symkey:0x7faa4128f280
           /* TID 0x1003 */
 17028 ms  0x1003 PR_Close()
 17028 ms  0x1003 fd:0x7faa4bfe7070
 17036 ms  0x1003 PR_Close()
 17036 ms  0x1003 fd:0x7faa4bfe7490
 17041 ms  0x1003 PR_Close()
 17041 ms  0x1003 fd:0x7faa4bfe7580
 17042 ms  0x1003 PR_Close()
 17042 ms  0x1003 fd:0x7faa48089220
           /* TID 0xffb */
 17052 ms  0xffb PK11_Encrypt()
 17052 ms  0xffb symkey:0x7faa3dd86080
 17054 ms  0xffb PR_Close()
 17054 ms  0xffb fd:0x7faa3ffc8be0
 17062 ms  0xffb PK11_Encrypt()
 17062 ms  0xffb symkey:0x7faa3dd86080
           /* TID 0x1003 */
 17064 ms  0x1003 PR_Close()
 17064 ms  0x1003 fd:0x7faa445f4490
           /* TID 0xffb */
 17068 ms  0xffb SECKEY_DestroyPrivateKey()
 17068 ms  0xffb privk:0x7faa44792020::7faa44792020  90 37 b2 47                                      .7.G
 17068 ms  0xffb privk:0x7faa44792020::7faa44792020  e5 e5 e5 e5                                      ....
 17068 ms  0xffb SECKEY_DestroyPrivateKey()
 17068 ms  0xffb privk:0x7faa4478a820::7faa4478a820  b0 da b1 47                                      ...G
 17068 ms  0xffb privk:0x7faa4478a820::7faa4478a820  e5 e5 e5 e5                                      ....
 17073 ms  0xffb PK11_Encrypt()
 17073 ms  0xffb symkey:0x7faa41246680
 17078 ms  0xffb PK11_Encrypt()
 17078 ms  0xffb symkey:0x7faa48acc500
           /* TID 0x1003 */
 17082 ms  0x1003 PR_Close()
 17082 ms  0x1003 fd:0x7faa47be4100
           /* TID 0xffb */
 17093 ms  0xffb SSL_AuthCertificateComplete()
 17093 ms  0xffb fd:0x7faa482c69d0
 17093 ms  0xffb err:0x0
 17094 ms  SECKEY_ECParamsToKeySize()
 17094 ms  0xffb ret:0x100
 17094 ms  0xffb SECKEY_CreateECPrivateKey()
 17094 ms  0xffb cx:0x7faa4d269fc8
 17094 ms     | 0xffb EC_ValidatePublicKey()
 17096 ms     | 0xffb ret:0x0
 17096 ms  0xffb ret:0x7faa48b74020::7faa48b74020  10 af 2b 48                                      ..+H
 17096 ms  0xffb PK11_PubDeriveWithKDF()
 17096 ms  0xffb seckey:0x7faa48b74020
 17096 ms     | 0xffb EC_ValidatePublicKey()
 17100 ms     | 0xffb ret:0x0
 17101 ms  0xffb ret:0x7faa4128ff00
 17101 ms  0xffb PK11_DeriveWithFlags()
 17101 ms  0xffb basekey:0x7faa4128ff00
 17101 ms     | 0xffb PK11_DeriveWithTemplate()
 17101 ms  0xffb ret:0x7faa4c0e4a00
 17101 ms  0xffb PK11_Derive()
 17101 ms  0xffb basekey:0x7faa4c0e4a00
 17101 ms     | 0xffb PK11_DeriveWithTemplate()
 17101 ms  0xffb ret:0x7faa4c0e5600
 17102 ms  0xffb SECKEY_DestroyPrivateKey()
 17102 ms  0xffb privk:0x7faa48b74020::7faa48b74020  10 af 2b 48                                      ..+H
 17102 ms  0xffb privk:0x7faa48b74020::7faa48b74020  e5 e5 e5 e5                                      ....
 17102 ms  0xffb PK11_Encrypt()
 17102 ms  0xffb symkey:0x7faa4c0e5780
           /* TID 0x1003 */
 17113 ms  0x1003 PR_Close()
 17113 ms  0x1003 fd:0x7faa47bbbe80
           /* TID 0xffb */
 17114 ms  0xffb PK11_Encrypt()
 17114 ms  0xffb symkey:0x7faa4c0e5780
 17114 ms  0xffb SECKEY_DestroyPrivateKey()
 17114 ms  0xffb privk:0x7faa46f1b020::7faa46f1b020  00 0b b8 47                                      ...G
 17114 ms  0xffb privk:0x7faa46f1b020::7faa46f1b020  e5 e5 e5 e5                                      ....
 17114 ms  0xffb SECKEY_DestroyPrivateKey()
 17114 ms  0xffb privk:0x7faa4479d820::7faa4479d820  40 d2 b3 47                                      @..G
 17114 ms  0xffb privk:0x7faa4479d820::7faa4479d820  e5 e5 e5 e5                                      ....
 17116 ms  0xffb PK11_Encrypt()
 17116 ms  0xffb symkey:0x7faa3e16ce80
           /* TID 0x1003 */
 17133 ms  0x1003 PR_Close()
 17133 ms  0x1003 fd:0x7faa4bfe7820
 17134 ms  0x1003 PR_Close()
 17134 ms  0x1003 fd:0x7faa4bfe74f0
           /* TID 0xffb */
 17135 ms  0xffb SECKEY_CreateECPrivateKey()
 17135 ms  0xffb cx:0x7faa4afa6728
 17136 ms     | 0xffb EC_ValidatePublicKey()
 17136 ms     | 0xffb ret:0x0
 17136 ms  0xffb ret:0x7faa4479d820::7faa4479d820  a0 06 b8 47                                      ...G
 17136 ms  0xffb SECKEY_CreateECPrivateKey()
 17136 ms  0xffb cx:0x7faa4afa6728
 17136 ms     | 0xffb EC_ValidatePublicKey()
 17138 ms     | 0xffb ret:0x0
 17138 ms  0xffb ret:0x7faa46f1b020::7faa46f1b020  c0 ae 2b 48                                      ..+H
 17152 ms  0xffb PK11_Derive()
 17152 ms  0xffb basekey:0x7faa4c20da00
 17152 ms     | 0xffb PK11_DeriveWithTemplate()
 17152 ms  0xffb ret:0x7faa4128ff00
 17152 ms  0xffb PK11_Encrypt()
 17152 ms  0xffb symkey:0x7faa4c20e480
 17153 ms  0xffb SECKEY_DestroyPrivateKey()
 17153 ms  0xffb privk:0x7faa2cf22020::7faa2cf22020  f0 3b 2b 48                                      .;+H
 17153 ms  0xffb privk:0x7faa2cf22020::7faa2cf22020  e5 e5 e5 e5                                      ....
 17153 ms  0xffb SECKEY_DestroyPrivateKey()
 17153 ms  0xffb privk:0x7faa2cf20020::7faa2cf20020  e0 32 2b 48                                      .2+H
 17153 ms  0xffb privk:0x7faa2cf20020::7faa2cf20020  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
 17155 ms  0x1003 PR_Close()
 17155 ms  0x1003 fd:0x7faa440e1070
           /* TID 0xffb */
 17176 ms  0xffb PK11_Encrypt()
 17176 ms  0xffb symkey:0x7faa4c20e480
 17183 ms  0xffb PK11_Encrypt()
 17183 ms  0xffb symkey:0x7faa3dd86080
           /* TID 0x1003 */
 17187 ms  0x1003 PR_Close()
 17187 ms  0x1003 fd:0x7faa4bfe7850
 17190 ms  0x1003 PR_Close()
 17190 ms  0x1003 fd:0x7faa4b63a310
 17190 ms  0x1003 PR_Close()
 17190 ms  0x1003 fd:0x7faa4b63a400
           /* TID 0xffb */
 17197 ms  0xffb SSL_ImportFD()
 17197 ms  0xffb ret:0x7faa4bfe79d0
 17197 ms  0xffb SSL_AuthCertificateHook()
 17197 ms  0xffb fd:0x7faa4bfe79d0
 17197 ms  0xffb ret:0x0
 17197 ms  0xffb PR_Connect()
 17197 ms  0xffb fd:0x7faa4bfe79d0
 17203 ms  0xffb PK11_Encrypt()
 17203 ms  0xffb symkey:0x7faa3dd86080
 17205 ms  0xffb SECKEY_CreateECPrivateKey()
 17205 ms  0xffb cx:0x7faa4afa6c08
 17205 ms     | 0xffb EC_ValidatePublicKey()
 17205 ms     | 0xffb ret:0x0
 17205 ms  0xffb ret:0x7faa48b75820::7faa48b75820  e0 a7 2b 48                                      ..+H
 17205 ms  0xffb SECKEY_CreateECPrivateKey()
 17205 ms  0xffb cx:0x7faa4afa6c08
 17206 ms     | 0xffb EC_ValidatePublicKey()
 17207 ms     | 0xffb ret:0x0
 17207 ms  0xffb ret:0x7faa48b77820::7faa48b77820  10 bf 44 48                                      ..DH
           /* TID 0x1003 */
 17209 ms  0x1003 PR_Close()
 17209 ms  0x1003 fd:0x7faa4877d4f0
 17214 ms  0x1003 PR_Close()
 17214 ms  0x1003 fd:0x7faa4877d4f0
           /* TID 0xffb */
 17215 ms  0xffb SECKEY_CreateECPrivateKey()
 17215 ms  0xffb cx:0x7faa4afa6a68
 17215 ms     | 0xffb EC_ValidatePublicKey()
 17215 ms     | 0xffb ret:0x0
 17215 ms  0xffb ret:0x7faa48b7a820::7faa48b7a820  20 44 4a 48                                       DJH
 17215 ms  0xffb SECKEY_CreateECPrivateKey()
 17215 ms  0xffb cx:0x7faa4afa6a68
 17216 ms     | 0xffb EC_ValidatePublicKey()
 17217 ms     | 0xffb ret:0x0
 17217 ms  0xffb ret:0x7faa48b7c820::7faa48b7c820  80 4d 4a 48                                      .MJH
 17218 ms  0xffb SECKEY_CreateECPrivateKey()
 17218 ms  0xffb cx:0x7faa4afa6f48
 17218 ms     | 0xffb EC_ValidatePublicKey()
 17218 ms     | 0xffb ret:0x0
 17218 ms  0xffb ret:0x7faa4907e820::7faa4907e820  a0 eb 77 48                                      ..wH
 17218 ms  0xffb SECKEY_CreateECPrivateKey()
 17218 ms  0xffb cx:0x7faa4afa6f48
 17219 ms     | 0xffb EC_ValidatePublicKey()
 17224 ms     | 0xffb ret:0x0
 17224 ms  0xffb ret:0x7faa49086820::7faa49086820  a0 41 4a 48                                      .AJH
           /* TID 0x1003 */
 17227 ms  0x1003 PR_Close()
 17227 ms  0x1003 fd:0x7faa4bfe7040
           /* TID 0xffb */
 17230 ms  0xffb SECKEY_DestroyPrivateKey()
 17230 ms  0xffb privk:0x7faa480e8820::7faa480e8820  d0 83 12 48                                      ...H
 17230 ms  0xffb privk:0x7faa480e8820::7faa480e8820  e5 e5 e5 e5                                      ....
 17230 ms  0xffb SECKEY_DestroyPrivateKey()
 17230 ms  0xffb privk:0x7faa480dc820::7faa480dc820  e0 fc 08 48                                      ...H
 17230 ms  0xffb privk:0x7faa480dc820::7faa480dc820  e5 e5 e5 e5                                      ....
 17232 ms  SECKEY_ECParamsToKeySize()
 17232 ms  0xffb ret:0xff
 17232 ms  0xffb SECKEY_CreateECPrivateKey()
 17232 ms  0xffb cx:0x7faa4d269c88
 17233 ms     | 0xffb EC_ValidatePublicKey()
 17233 ms     | 0xffb ret:0x0
 17233 ms  0xffb ret:0x7faa480dd820::7faa480dd820  30 6d 0f 48                                      0m.H
 17233 ms  0xffb PK11_PubDeriveWithKDF()
 17233 ms  0xffb seckey:0x7faa480dd820
 17233 ms     | 0xffb EC_ValidatePublicKey()
 17233 ms     | 0xffb ret:0x0
 17233 ms  0xffb ret:0x7faa4126a100
 17233 ms  0xffb PK11_DeriveWithFlags()
 17233 ms  0xffb basekey:0x7faa4126a100
 17233 ms     | 0xffb PK11_DeriveWithTemplate()
 17233 ms  0xffb ret:0x7faa4c268600
 17233 ms  0xffb PK11_Derive()
 17233 ms  0xffb basekey:0x7faa4c268600
 17233 ms     | 0xffb PK11_DeriveWithTemplate()
 17233 ms  0xffb ret:0x7faa4c268680
 17233 ms  0xffb SECKEY_DestroyPrivateKey()
 17233 ms  0xffb privk:0x7faa480dd820::7faa480dd820  30 6d 0f 48                                      0m.H
 17233 ms  0xffb privk:0x7faa480dd820::7faa480dd820  e5 e5 e5 e5                                      ....
 17234 ms  0xffb PK11_Encrypt()
 17234 ms  0xffb symkey:0x7faa4c268800
           /* TID 0x1003 */
 17234 ms  0x1003 PR_Close()
 17234 ms  0x1003 fd:0x7faa4bfe7d00
           /* TID 0xffb */
 17238 ms  0xffb PK11_Encrypt()
 17238 ms  0xffb symkey:0x7faa3dd86080
 17238 ms  0xffb SSL_AuthCertificateComplete()
 17238 ms  0xffb fd:0x7faa482c65b0
 17238 ms  0xffb err:0x0
           /* TID 0x1003 */
 17240 ms  0x1003 PR_Close()
 17240 ms  0x1003 fd:0x7faa4bfe7820
           /* TID 0xffb */
 17240 ms  0xffb SECKEY_CreateECPrivateKey()
 17240 ms  0xffb cx:0x7faa4afa6da8
 17241 ms     | 0xffb EC_ValidatePublicKey()
 17241 ms     | 0xffb ret:0x0
 17241 ms  0xffb ret:0x7faa480e7020::7faa480e7020  b0 6f 0f 48                                      .o.H
 17241 ms  0xffb SECKEY_CreateECPrivateKey()
 17241 ms  0xffb cx:0x7faa4afa6da8
 17242 ms     | 0xffb EC_ValidatePublicKey()
 17243 ms     | 0xffb ret:0x0
 17243 ms  0xffb ret:0x7faa4bf64020::7faa4bf64020  40 d2 d0 48                                      @..H
 17247 ms  0xffb SSL_ImportFD()
 17247 ms  0xffb ret:0x7faa4bfe7d30
 17247 ms  0xffb SSL_AuthCertificateHook()
 17247 ms  0xffb fd:0x7faa4bfe7d30
 17247 ms  0xffb ret:0x0
 17247 ms  0xffb PR_Connect()
 17247 ms  0xffb fd:0x7faa4bfe7d30
 17249 ms  0xffb PK11_Encrypt()
 17249 ms  0xffb symkey:0x7faa48781600
           /* TID 0x1003 */
 17250 ms  0x1003 PR_Close()
 17250 ms  0x1003 fd:0x7faa46f69160
           /* TID 0xffb */
 17251 ms  0xffb SSL_ImportFD()
 17251 ms  0xffb ret:0x7faa4bfe7f40
 17251 ms  0xffb SSL_AuthCertificateHook()
 17251 ms  0xffb fd:0x7faa4bfe7f40
 17251 ms  0xffb ret:0x0
 17251 ms  0xffb PR_Connect()
 17251 ms  0xffb fd:0x7faa4bfe7f40
 17260 ms  SECKEY_ECParamsToKeySize()
 17260 ms  0xffb ret:0x100
 17260 ms  0xffb SECKEY_CreateECPrivateKey()
 17260 ms  0xffb cx:0x7faa4d26a308
 17260 ms     | 0xffb EC_ValidatePublicKey()
 17262 ms     | 0xffb ret:0x0
 17262 ms  0xffb ret:0x7faa4dc09820::7faa4dc09820  40 7c 07 4b                                      @|.K
 17262 ms  0xffb PK11_PubDeriveWithKDF()
 17262 ms  0xffb seckey:0x7faa4dc09820
 17262 ms     | 0xffb EC_ValidatePublicKey()
 17263 ms     | 0xffb ret:0x0
 17265 ms  0xffb ret:0x7faa4126a100
 17265 ms  0xffb PK11_DeriveWithFlags()
 17265 ms  0xffb basekey:0x7faa4126a100
 17265 ms     | 0xffb PK11_DeriveWithTemplate()
 17265 ms  0xffb ret:0x7faa4b69e380
 17265 ms  0xffb PK11_Derive()
 17265 ms  0xffb basekey:0x7faa4b69e380
 17265 ms     | 0xffb PK11_DeriveWithTemplate()
 17265 ms  0xffb ret:0x7faa4c0c6580
 17265 ms  0xffb SECKEY_DestroyPrivateKey()
 17265 ms  0xffb privk:0x7faa4dc09820::7faa4dc09820  40 7c 07 4b                                      @|.K
 17265 ms  0xffb privk:0x7faa4dc09820::7faa4dc09820  e5 e5 e5 e5                                      ....
 17265 ms  0xffb PK11_Encrypt()
 17265 ms  0xffb symkey:0x7faa4c274a00
 17278 ms  0xffb SSL_AuthCertificateComplete()
 17278 ms  0xffb fd:0x7faa4808daf0
 17278 ms  0xffb err:0x0
 17279 ms  SECKEY_ECParamsToKeySize()
 17279 ms  0xffb ret:0x100
 17279 ms  0xffb SECKEY_CreateECPrivateKey()
 17279 ms  0xffb cx:0x7faa4d26acc8
 17280 ms     | 0xffb EC_ValidatePublicKey()
 17281 ms     | 0xffb ret:0x0
 17281 ms  0xffb ret:0x7faa4dc09820::7faa4dc09820  90 7c 07 4b                                      .|.K
 17281 ms  0xffb PK11_PubDeriveWithKDF()
 17281 ms  0xffb seckey:0x7faa4dc09820
 17281 ms     | 0xffb EC_ValidatePublicKey()
 17283 ms     | 0xffb ret:0x0
 17287 ms  0xffb ret:0x7faa4126a100
 17287 ms  0xffb PK11_DeriveWithFlags()
 17287 ms  0xffb basekey:0x7faa4126a100
 17287 ms     | 0xffb PK11_DeriveWithTemplate()
 17287 ms  0xffb ret:0x7faa4c274b80
 17287 ms  0xffb PK11_Derive()
 17287 ms  0xffb basekey:0x7faa4c274b80
 17287 ms     | 0xffb PK11_DeriveWithTemplate()
 17287 ms  0xffb ret:0x7faa4c274c00
 17287 ms  0xffb SECKEY_DestroyPrivateKey()
 17287 ms  0xffb privk:0x7faa4dc09820::7faa4dc09820  90 7c 07 4b                                      .|.K
 17287 ms  0xffb privk:0x7faa4dc09820::7faa4dc09820  e5 e5 e5 e5                                      ....
 17287 ms  0xffb PK11_Encrypt()
 17287 ms  0xffb symkey:0x7faa4c274d80
 17287 ms  0xffb SSL_AuthCertificateComplete()
 17287 ms  0xffb fd:0x7faa4878ac10
 17287 ms  0xffb err:0x0
           /* TID 0x1003 */
 17289 ms  0x1003 PR_Close()
 17289 ms  0x1003 fd:0x7faa4bfe7a30
           /* TID 0xffb */
 17290 ms  0xffb PK11_Encrypt()
 17290 ms  0xffb symkey:0x7faa4c274d80
 17299 ms  SECKEY_ECParamsToKeySize()
 17299 ms  0xffb ret:0x100
 17299 ms  0xffb SECKEY_CreateECPrivateKey()
 17299 ms  0xffb cx:0x7faa4d26ab28
 17300 ms     | 0xffb EC_ValidatePublicKey()
 17301 ms     | 0xffb ret:0x0
 17301 ms  0xffb ret:0x7faa4dc0c820::7faa4dc0c820  90 7c 07 4b                                      .|.K
 17301 ms  0xffb PK11_PubDeriveWithKDF()
 17301 ms  0xffb seckey:0x7faa4dc0c820
 17301 ms     | 0xffb EC_ValidatePublicKey()
 17303 ms     | 0xffb ret:0x0
 17304 ms  0xffb ret:0x7faa4126a100
 17304 ms  0xffb PK11_DeriveWithFlags()
 17304 ms  0xffb basekey:0x7faa4126a100
 17304 ms     | 0xffb PK11_DeriveWithTemplate()
 17304 ms  0xffb ret:0x7faa4b69d880
 17304 ms  0xffb PK11_Derive()
 17304 ms  0xffb basekey:0x7faa4b69d880
 17304 ms     | 0xffb PK11_DeriveWithTemplate()
 17304 ms  0xffb ret:0x7faa4c274f00
 17304 ms  0xffb SECKEY_DestroyPrivateKey()
 17304 ms  0xffb privk:0x7faa4dc0c820::7faa4dc0c820  90 7c 07 4b                                      .|.K
 17304 ms  0xffb privk:0x7faa4dc0c820::7faa4dc0c820  e5 e5 e5 e5                                      ....
 17304 ms  0xffb PK11_Encrypt()
 17304 ms  0xffb symkey:0x7faa4c275080
 17315 ms  0xffb SSL_AuthCertificateComplete()
 17315 ms  0xffb fd:0x7faa4878a160
 17315 ms  0xffb err:0x0
           /* TID 0x1003 */
 17316 ms  0x1003 PR_Close()
 17316 ms  0x1003 fd:0x7faa47b1b0d0
           /* TID 0xffb */
 17316 ms  0xffb PK11_Encrypt()
 17316 ms  0xffb symkey:0x7faa4c275080
 17319 ms  0xffb SSL_ImportFD()
 17319 ms  0xffb ret:0x7faa4c207130
 17319 ms  0xffb SSL_AuthCertificateHook()
 17319 ms  0xffb fd:0x7faa4c207130
 17319 ms  0xffb ret:0x0
 17319 ms  0xffb PR_Connect()
 17319 ms  0xffb fd:0x7faa4c207130
 17328 ms  0xffb SECKEY_CreateECPrivateKey()
 17328 ms  0xffb cx:0x7faa4afa75c8
 17328 ms     | 0xffb EC_ValidatePublicKey()
 17328 ms     | 0xffb ret:0x0
 17328 ms  0xffb ret:0x7faa4dc0c820::7faa4dc0c820  e0 7c 07 4b                                      .|.K
 17329 ms  0xffb SECKEY_CreateECPrivateKey()
 17329 ms  0xffb cx:0x7faa4afa75c8
 17329 ms     | 0xffb EC_ValidatePublicKey()
 17331 ms     | 0xffb ret:0x0
 17331 ms  0xffb ret:0x7faa4dc1e020::7faa4dc1e020  00 01 6a 4b                                      ..jK
           /* TID 0x1003 */
 17337 ms  0x1003 PR_Close()
 17337 ms  0x1003 fd:0x7faa4bfe7340
 17343 ms  0x1003 PR_Close()
 17343 ms  0x1003 fd:0x7faa4bfe7040
 17344 ms  0x1003 PR_Close()
 17344 ms  0x1003 fd:0x7faa4bfe7040
           /* TID 0xffb */
 17347 ms  0xffb PK11_Encrypt()
 17347 ms  0xffb symkey:0x7faa4128e080
           /* TID 0x1003 */
 17348 ms  0x1003 PR_Close()
 17348 ms  0x1003 fd:0x7faa4b63a1c0
           /* TID 0xffb */
 17355 ms  0xffb SECKEY_DestroyPrivateKey()
 17355 ms  0xffb privk:0x7faa48a0c820::7faa48a0c820  00 f6 08 48                                      ...H
 17355 ms  0xffb privk:0x7faa48a0c820::7faa48a0c820  e5 e5 e5 e5                                      ....
 17355 ms  0xffb SECKEY_DestroyPrivateKey()
 17355 ms  0xffb privk:0x7faa4702f020::7faa4702f020  d0 48 19 48                                      .H.H
 17355 ms  0xffb privk:0x7faa4702f020::7faa4702f020  e5 e5 e5 e5                                      ....
 17355 ms  0xffb SECKEY_DestroyPrivateKey()
 17355 ms  0xffb privk:0x7faa2cf12020::7faa2cf12020  c0 a9 1c 48                                      ...H
 17355 ms  0xffb privk:0x7faa2cf12020::7faa2cf12020  e5 e5 e5 e5                                      ....
 17355 ms  0xffb SECKEY_DestroyPrivateKey()
 17355 ms  0xffb privk:0x7faa2cf10020::7faa2cf10020  b0 45 05 47                                      .E.G
 17356 ms  0xffb privk:0x7faa2cf10020::7faa2cf10020  e5 e5 e5 e5                                      ....
 17373 ms  0xffb PK11_Derive()
 17373 ms  0xffb basekey:0x7faa4c20d680
 17373 ms     | 0xffb PK11_DeriveWithTemplate()
 17373 ms  0xffb ret:0x7faa4126a100
 17373 ms  0xffb PK11_Encrypt()
 17373 ms  0xffb symkey:0x7faa4c275900
 17374 ms  0xffb SECKEY_DestroyPrivateKey()
 17374 ms  0xffb privk:0x7faa46f1b020::7faa46f1b020  c0 ae 2b 48                                      ..+H
 17374 ms  0xffb privk:0x7faa46f1b020::7faa46f1b020  e5 e5 e5 e5                                      ....
 17374 ms  0xffb SECKEY_DestroyPrivateKey()
 17374 ms  0xffb privk:0x7faa4479d820::7faa4479d820  a0 06 b8 47                                      ...G
 17374 ms  0xffb privk:0x7faa4479d820::7faa4479d820  e5 e5 e5 e5                                      ....
 17375 ms  0xffb PK11_Encrypt()
 17375 ms  0xffb symkey:0x7faa4c275900
 17384 ms  0xffb PK11_Encrypt()
 17384 ms  0xffb symkey:0x7faa48acc500
           /* TID 0x1003 */
 17385 ms  0x1003 PR_Close()
 17385 ms  0x1003 fd:0x7faa4bfe7670
 17410 ms  0x1003 PR_Close()
 17410 ms  0x1003 fd:0x7faa47be4100
           /* TID 0xffb */
 17417 ms  0xffb PK11_Encrypt()
 17417 ms  0xffb symkey:0x7faa4c00ef80
           /* TID 0x1003 */
 17418 ms  0x1003 PR_Close()
 17418 ms  0x1003 fd:0x7faa47be4100
 17418 ms  0x1003 PR_Close()
 17418 ms  0x1003 fd:0x7faa47b2fb50
 17419 ms  0x1003 PR_Close()
 17419 ms  0x1003 fd:0x7faa4c207430
 17426 ms  0x1003 PR_Close()
 17426 ms  0x1003 fd:0x7faa47b2fb50
 17429 ms  0x1003 PR_Close()
 17429 ms  0x1003 fd:0x7faa47b2fb50
           /* TID 0xffb */
 17448 ms  0xffb SSL_ImportFD()
 17448 ms  0xffb ret:0x7faa4bfe7670
 17448 ms  0xffb SSL_AuthCertificateHook()
 17448 ms  0xffb fd:0x7faa4bfe7670
 17448 ms  0xffb ret:0x0
 17448 ms  0xffb PR_Connect()
 17448 ms  0xffb fd:0x7faa4bfe7670
           /* TID 0x1003 */
 17483 ms  0x1003 PR_Close()
 17483 ms  0x1003 fd:0x7faa4c207b80
 17485 ms  0x1003 PR_Close()
 17485 ms  0x1003 fd:0x7faa4c207bb0
 17496 ms  0x1003 PR_Close()
 17496 ms  0x1003 fd:0x7faa4c207bb0
           /* TID 0xffb */
 17497 ms  SECKEY_ECParamsToKeySize()
 17498 ms  0xffb ret:0x100
 17498 ms  0xffb SECKEY_CreateECPrivateKey()
 17498 ms  0xffb cx:0x7faa4afa6c08
 17498 ms     | 0xffb EC_ValidatePublicKey()
 17499 ms     | 0xffb ret:0x0
 17500 ms  0xffb ret:0x7faa4349a020::7faa4349a020  10 f5 08 48                                      ...H
 17500 ms  0xffb PK11_PubDeriveWithKDF()
 17500 ms  0xffb seckey:0x7faa4349a020
 17500 ms     | 0xffb EC_ValidatePublicKey()
 17501 ms     | 0xffb ret:0x0
 17502 ms  0xffb ret:0x7faa4c0c6380
 17502 ms  0xffb PK11_DeriveWithFlags()
 17502 ms  0xffb basekey:0x7faa4c0c6380
 17503 ms     | 0xffb PK11_DeriveWithTemplate()
 17503 ms  0xffb ret:0x7faa4c0d4500
 17503 ms  0xffb PK11_Derive()
 17503 ms  0xffb basekey:0x7faa4c0d4500
 17503 ms     | 0xffb PK11_DeriveWithTemplate()
 17503 ms  0xffb ret:0x7faa4c20e400
 17503 ms  0xffb SECKEY_DestroyPrivateKey()
 17503 ms  0xffb privk:0x7faa4349a020::7faa4349a020  10 f5 08 48                                      ...H
 17503 ms  0xffb privk:0x7faa4349a020::7faa4349a020  e5 e5 e5 e5                                      ....
 17503 ms  0xffb PK11_Encrypt()
 17503 ms  0xffb symkey:0x7faa4c67a700
 17504 ms  0xffb SSL_AuthCertificateComplete()
 17504 ms  0xffb fd:0x7faa4b63a700
 17504 ms  0xffb err:0x0
           /* TID 0x1003 */
 17510 ms  0x1003 PR_Close()
 17510 ms  0x1003 fd:0x7faa47091e80
           /* TID 0xffb */
 17510 ms  0xffb PK11_Encrypt()
 17510 ms  0xffb symkey:0x7faa4c67a700
 17511 ms  0xffb SSL_ImportFD()
 17511 ms  0xffb ret:0x7faa4c207af0
 17511 ms  0xffb SSL_AuthCertificateHook()
 17511 ms  0xffb fd:0x7faa4c207af0
 17511 ms  0xffb ret:0x0
 17511 ms  0xffb PR_Connect()
 17511 ms  0xffb fd:0x7faa4c207af0
 17518 ms  0xffb SSL_ImportFD()
 17518 ms  0xffb ret:0x7faa4c207d90
 17518 ms  0xffb SSL_AuthCertificateHook()
 17518 ms  0xffb fd:0x7faa4c207d90
 17518 ms  0xffb ret:0x0
 17518 ms  0xffb PR_Connect()
 17518 ms  0xffb fd:0x7faa4c207d90
           /* TID 0x1003 */
 17519 ms  0x1003 PR_Close()
 17519 ms  0x1003 fd:0x7faa4808d910
           /* TID 0xffb */
 17522 ms  0xffb PK11_Encrypt()
 17522 ms  0xffb symkey:0x7faa487d8980
 17524 ms  0xffb PK11_Derive()
 17524 ms  0xffb basekey:0x7faa4c67ae80
 17524 ms     | 0xffb PK11_DeriveWithTemplate()
 17524 ms  0xffb ret:0x7faa4c0c6380
 17524 ms  0xffb PK11_Encrypt()
 17524 ms  0xffb symkey:0x7faa4c6bb500
 17525 ms  0xffb SECKEY_DestroyPrivateKey()
 17525 ms  0xffb privk:0x7faa49086820::7faa49086820  a0 41 4a 48                                      .AJH
 17525 ms  0xffb privk:0x7faa49086820::7faa49086820  e5 e5 e5 e5                                      ....
 17525 ms  0xffb SECKEY_DestroyPrivateKey()
 17525 ms  0xffb privk:0x7faa4907e820::7faa4907e820  a0 eb 77 48                                      ..wH
 17525 ms  0xffb privk:0x7faa4907e820::7faa4907e820  e5 e5 e5 e5                                      ....
 17526 ms  0xffb PK11_Encrypt()
 17526 ms  0xffb symkey:0x7faa4c6bb500
 17529 ms  SECKEY_ECParamsToKeySize()
 17529 ms  0xffb ret:0x100
 17529 ms  0xffb SECKEY_CreateECPrivateKey()
 17529 ms  0xffb cx:0x7faa4afa6a68
 17529 ms     | 0xffb EC_ValidatePublicKey()
 17531 ms     | 0xffb ret:0x0
 17531 ms  0xffb ret:0x7faa4349b820::7faa4349b820  c0 49 19 48                                      .I.H
 17531 ms  0xffb PK11_PubDeriveWithKDF()
 17531 ms  0xffb seckey:0x7faa4349b820
 17531 ms     | 0xffb EC_ValidatePublicKey()
 17533 ms     | 0xffb ret:0x0
 17534 ms  0xffb ret:0x7faa4c6bb700
 17534 ms  0xffb PK11_DeriveWithFlags()
 17534 ms  0xffb basekey:0x7faa4c6bb700
 17534 ms     | 0xffb PK11_DeriveWithTemplate()
 17534 ms  0xffb ret:0x7faa4c6bb780
 17534 ms  0xffb PK11_Derive()
 17534 ms  0xffb basekey:0x7faa4c6bb780
 17534 ms     | 0xffb PK11_DeriveWithTemplate()
 17534 ms  0xffb ret:0x7faa4c6bb800
 17534 ms  0xffb SECKEY_DestroyPrivateKey()
 17534 ms  0xffb privk:0x7faa4349b820::7faa4349b820  c0 49 19 48                                      .I.H
 17534 ms  0xffb privk:0x7faa4349b820::7faa4349b820  e5 e5 e5 e5                                      ....
 17534 ms  0xffb PK11_Encrypt()
 17534 ms  0xffb symkey:0x7faa4c6bb980
 17537 ms  0xffb SSL_AuthCertificateComplete()
 17537 ms  0xffb fd:0x7faa4b63a730
 17537 ms  0xffb err:0x0
 17537 ms  0xffb SECKEY_CreateECPrivateKey()
 17537 ms  0xffb cx:0x7faa4afa8948
 17538 ms     | 0xffb EC_ValidatePublicKey()
 17538 ms     | 0xffb ret:0x0
 17538 ms  0xffb ret:0x7faa4349b820::7faa4349b820  30 43 19 48                                      0C.H
 17538 ms  0xffb SECKEY_CreateECPrivateKey()
 17538 ms  0xffb cx:0x7faa4afa8948
 17539 ms     | 0xffb EC_ValidatePublicKey()
 17540 ms     | 0xffb ret:0x0
 17540 ms  0xffb ret:0x7faa4349d820::7faa4349d820  20 a9 1c 48                                       ..H
           /* TID 0x1003 */
 17552 ms  0x1003 PR_Close()
 17552 ms  0x1003 fd:0x7faa4c2580a0
 17555 ms  0x1003 PR_Close()
 17555 ms  0x1003 fd:0x7faa4c2581c0
           /* TID 0xffb */
 17555 ms  0xffb SECKEY_DestroyPrivateKey()
 17555 ms  0xffb privk:0x7faa2cf1c820::7faa2cf1c820  c0 44 05 47                                      .D.G
 17555 ms  0xffb privk:0x7faa2cf1c820::7faa2cf1c820  e5 e5 e5 e5                                      ....
 17555 ms  0xffb SECKEY_DestroyPrivateKey()
 17555 ms  0xffb privk:0x7faa2cf1a020::7faa2cf1a020  90 8c 6e 44                                      ..nD
 17555 ms  0xffb privk:0x7faa2cf1a020::7faa2cf1a020  e5 e5 e5 e5                                      ....
 17556 ms  0xffb SECKEY_CreateECPrivateKey()
 17556 ms  0xffb cx:0x7faa4afa7f88
 17556 ms     | 0xffb EC_ValidatePublicKey()
 17556 ms     | 0xffb ret:0x0
 17556 ms  0xffb ret:0x7faa2cf1a020::7faa2cf1a020  b0 3a fc 46                                      .:.F
 17556 ms  0xffb SECKEY_CreateECPrivateKey()
 17556 ms  0xffb cx:0x7faa4afa7f88
 17557 ms     | 0xffb EC_ValidatePublicKey()
 17562 ms     | 0xffb ret:0x0
 17562 ms  0xffb ret:0x7faa2cf17820::7faa2cf17820  a0 36 2b 48                                      .6+H
 17564 ms  0xffb SECKEY_CreateECPrivateKey()
 17564 ms  0xffb cx:0x7faa4afa87a8
 17564 ms     | 0xffb EC_ValidatePublicKey()
 17564 ms     | 0xffb ret:0x0
 17564 ms  0xffb ret:0x7faa434a1020::7faa434a1020  70 ae 2b 48                                      p.+H
 17564 ms  0xffb SECKEY_CreateECPrivateKey()
 17564 ms  0xffb cx:0x7faa4afa87a8
 17565 ms     | 0xffb EC_ValidatePublicKey()
 17566 ms     | 0xffb ret:0x0
 17566 ms  0xffb ret:0x7faa434a3020::7faa434a3020  a0 eb 77 48                                      ..wH
 17567 ms  0xffb SSL_ImportFD()
 17567 ms  0xffb ret:0x7faa4c0e3dc0
 17567 ms  0xffb SSL_AuthCertificateHook()
 17567 ms  0xffb fd:0x7faa4c0e3dc0
 17567 ms  0xffb ret:0x0
 17567 ms  0xffb PR_Connect()
 17567 ms  0xffb fd:0x7faa4c0e3dc0
 17567 ms  0xffb SSL_ImportFD()
 17567 ms  0xffb ret:0x7faa480d3100
 17567 ms  0xffb SSL_AuthCertificateHook()
 17567 ms  0xffb fd:0x7faa480d3100
 17567 ms  0xffb ret:0x0
 17568 ms  0xffb PR_Connect()
 17568 ms  0xffb fd:0x7faa480d3100
 17568 ms  0xffb SSL_ImportFD()
 17568 ms  0xffb ret:0x7faa4b63a460
 17568 ms  0xffb SSL_AuthCertificateHook()
 17568 ms  0xffb fd:0x7faa4b63a460
 17568 ms  0xffb ret:0x0
 17568 ms  0xffb PR_Connect()
 17568 ms  0xffb fd:0x7faa4b63a460
 17568 ms  0xffb SSL_ImportFD()
 17568 ms  0xffb ret:0x7faa4b63a520
 17568 ms  0xffb SSL_AuthCertificateHook()
 17568 ms  0xffb fd:0x7faa4b63a520
 17568 ms  0xffb ret:0x0
 17569 ms  0xffb PR_Connect()
 17569 ms  0xffb fd:0x7faa4b63a520
 17569 ms  0xffb SSL_ImportFD()
 17569 ms  0xffb ret:0x7faa4bfe78b0
 17569 ms  0xffb SSL_AuthCertificateHook()
 17569 ms  0xffb fd:0x7faa4bfe78b0
 17569 ms  0xffb ret:0x0
 17569 ms  0xffb PR_Connect()
 17569 ms  0xffb fd:0x7faa4bfe78b0
 17569 ms  0xffb SSL_ImportFD()
 17569 ms  0xffb ret:0x7faa4bfe7af0
 17569 ms  0xffb SSL_AuthCertificateHook()
 17569 ms  0xffb fd:0x7faa4bfe7af0
 17569 ms  0xffb ret:0x0
 17569 ms  0xffb PR_Connect()
 17569 ms  0xffb fd:0x7faa4bfe7af0
           /* TID 0x1003 */
 17580 ms  0x1003 PR_Close()
 17580 ms  0x1003 fd:0x7faa48089a90
           /* TID 0xffb */
 17580 ms  0xffb PK11_Encrypt()
 17580 ms  0xffb symkey:0x7faa4128e080
 17590 ms  SECKEY_ECParamsToKeySize()
 17590 ms  0xffb ret:0x100
 17590 ms  0xffb SECKEY_CreateECPrivateKey()
 17590 ms  0xffb cx:0x7faa4afa6da8
 17591 ms     | 0xffb EC_ValidatePublicKey()
 17592 ms     | 0xffb ret:0x0
 17592 ms  0xffb ret:0x7faa434a8020::7faa434a8020  f0 01 6a 4b                                      ..jK
 17592 ms  0xffb PK11_PubDeriveWithKDF()
 17592 ms  0xffb seckey:0x7faa434a8020
 17592 ms     | 0xffb EC_ValidatePublicKey()
 17594 ms     | 0xffb ret:0x0
 17595 ms  0xffb ret:0x7faa4c6bb700
 17595 ms  0xffb PK11_DeriveWithFlags()
 17595 ms  0xffb basekey:0x7faa4c6bb700
 17595 ms     | 0xffb PK11_DeriveWithTemplate()
 17596 ms  0xffb ret:0x7faa4c6c9a00
 17596 ms  0xffb PK11_Derive()
 17596 ms  0xffb basekey:0x7faa4c6c9a00
 17596 ms     | 0xffb PK11_DeriveWithTemplate()
 17596 ms  0xffb ret:0x7faa4c6c9a80
 17596 ms  0xffb SECKEY_DestroyPrivateKey()
 17596 ms  0xffb privk:0x7faa434a8020::7faa434a8020  f0 01 6a 4b                                      ..jK
 17596 ms  0xffb privk:0x7faa434a8020::7faa434a8020  e5 e5 e5 e5                                      ....
 17596 ms  0xffb PK11_Encrypt()
 17596 ms  0xffb symkey:0x7faa4c6c9c00
 17602 ms  0xffb SSL_AuthCertificateComplete()
 17602 ms  0xffb fd:0x7faa4b63a2e0
 17602 ms  0xffb err:0x0
 17602 ms  0xffb PK11_Encrypt()
 17602 ms  0xffb symkey:0x7faa3e16ce80
 17603 ms  0xffb SECKEY_DestroyPrivateKey()
 17603 ms  0xffb privk:0x7faa48291820::7faa48291820  a0 a1 2b 48                                      ..+H
 17603 ms  0xffb privk:0x7faa48291820::7faa48291820  e5 e5 e5 e5                                      ....
 17603 ms  0xffb SECKEY_DestroyPrivateKey()
 17603 ms  0xffb privk:0x7faa46f29820::7faa46f29820  60 3f 2b 48                                      `?+H
 17603 ms  0xffb privk:0x7faa46f29820::7faa46f29820  e5 e5 e5 e5                                      ....
 17605 ms  0xffb SECKEY_DestroyPrivateKey()
 17605 ms  0xffb privk:0x7faa48b6c020::7faa48b6c020  10 aa 2b 48                                      ..+H
 17606 ms  0xffb privk:0x7faa48b6c020::7faa48b6c020  e5 e5 e5 e5                                      ....
 17606 ms  0xffb SECKEY_DestroyPrivateKey()
 17606 ms  0xffb privk:0x7faa48b6a020::7faa48b6a020  30 a8 2b 48                                      0.+H
 17606 ms  0xffb privk:0x7faa48b6a020::7faa48b6a020  e5 e5 e5 e5                                      ....
 17606 ms  0xffb SECKEY_CreateECPrivateKey()
 17606 ms  0xffb cx:0x7faa4afa8128
 17606 ms     | 0xffb EC_ValidatePublicKey()
 17606 ms     | 0xffb ret:0x0
 17606 ms  0xffb ret:0x7faa434a8020::7faa434a8020  70 3e 2b 48                                      p>+H
 17606 ms  0xffb SECKEY_CreateECPrivateKey()
 17606 ms  0xffb cx:0x7faa4afa8128
 17609 ms     | 0xffb EC_ValidatePublicKey()
 17610 ms     | 0xffb ret:0x0
 17610 ms  0xffb ret:0x7faa434aa020::7faa434aa020  00 a1 2b 48                                      ..+H
 17634 ms  0xffb SECKEY_DestroyPrivateKey()
 17634 ms  0xffb privk:0x7faa48b71820::7faa48b71820  80 ad 2b 48                                      ..+H
 17634 ms  0xffb privk:0x7faa48b71820::7faa48b71820  e5 e5 e5 e5                                      ....
 17634 ms  0xffb SECKEY_DestroyPrivateKey()
 17634 ms  0xffb privk:0x7faa48b6f820::7faa48b6f820  a0 ab 2b 48                                      ..+H
 17634 ms  0xffb privk:0x7faa48b6f820::7faa48b6f820  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
 17640 ms  0x1003 PR_Close()
 17640 ms  0x1003 fd:0x7faa4878a520
           /* TID 0xff0 */
 17645 ms  0xff0 PR_Close()
 17645 ms  0xff0 fd:0x7faa4c207f40
 17645 ms  0xff0 PR_Close()
 17645 ms  0xff0 fd:0x7faa4c207f40
 17645 ms  0xff0 PR_Close()
 17645 ms  0xff0 fd:0x7faa4c207f40
 17645 ms  0xff0 PR_Close()
 17645 ms  0xff0 fd:0x7faa4c207f40
 17646 ms  0xff0 PR_Close()
 17646 ms  0xff0 fd:0x7faa4c207f40
 17646 ms  0xff0 PR_Close()
 17646 ms  0xff0 fd:0x7faa4c207f40
 17646 ms  0xff0 PR_Close()
 17646 ms  0xff0 fd:0x7faa4c207f40
 17646 ms  0xff0 PR_Close()
 17646 ms  0xff0 fd:0x7faa4c207f40
 17647 ms  0xff0 PR_Close()
 17647 ms  0xff0 fd:0x7faa4c207f40
 17647 ms  0xff0 PR_Close()
 17647 ms  0xff0 fd:0x7faa4c207f40
 17647 ms  0xff0 PR_Close()
 17647 ms  0xff0 fd:0x7faa4c207f40
 17647 ms  0xff0 PR_Close()
 17647 ms  0xff0 fd:0x7faa4c207f40
 17649 ms  0xff0 PR_Close()
 17649 ms  0xff0 fd:0x7faa4c207f40
 17649 ms  0xff0 PR_Close()
 17649 ms  0xff0 fd:0x7faa4c207f40
 17649 ms  0xff0 PR_Close()
 17649 ms  0xff0 fd:0x7faa4c207f40
 17649 ms  0xff0 PR_Close()
 17649 ms  0xff0 fd:0x7faa4c207f40
           /* TID 0xffb */
 17659 ms  0xffb PK11_Encrypt()
 17659 ms  0xffb symkey:0x7faa4c0e5780
           /* TID 0x1003 */
 17660 ms  0x1003 PR_Close()
 17660 ms  0x1003 fd:0x7faa4c207f40
           /* TID 0xffb */
 17660 ms  0xffb PK11_Encrypt()
 17660 ms  0xffb symkey:0x7faa4c20e480
           /* TID 0x1003 */
 17661 ms  0x1003 PR_Close()
 17661 ms  0x1003 fd:0x7faa482c6190
           /* TID 0xffb */
 17673 ms  0xffb PK11_Encrypt()
 17673 ms  0xffb symkey:0x7faa48acc500
           /* TID 0x1003 */
 17674 ms  0x1003 PR_Close()
 17674 ms  0x1003 fd:0x7faa4c258a00
           /* TID 0xffb */
 17682 ms  SECKEY_ECParamsToKeySize()
 17682 ms  0xffb ret:0x100
 17682 ms  0xffb SECKEY_CreateECPrivateKey()
 17682 ms  0xffb cx:0x7faa4afa75c8
 17682 ms     | 0xffb EC_ValidatePublicKey()
 17685 ms     | 0xffb ret:0x0
 17686 ms  0xffb ret:0x7faa4479c820::7faa4479c820  a0 01 6a 4b                                      ..jK
 17686 ms  0xffb PK11_PubDeriveWithKDF()
 17686 ms  0xffb seckey:0x7faa4479c820
 17686 ms     | 0xffb EC_ValidatePublicKey()
 17688 ms     | 0xffb ret:0x0
 17689 ms  0xffb ret:0x7faa4c6bb700
 17689 ms  0xffb PK11_DeriveWithFlags()
 17689 ms  0xffb basekey:0x7faa4c6bb700
 17689 ms     | 0xffb PK11_DeriveWithTemplate()
 17689 ms  0xffb ret:0x7faa4c6e9200
 17689 ms  0xffb PK11_Derive()
 17689 ms  0xffb basekey:0x7faa4c6e9200
 17689 ms     | 0xffb PK11_DeriveWithTemplate()
 17689 ms  0xffb ret:0x7faa4c6e9280
 17689 ms  0xffb SECKEY_DestroyPrivateKey()
 17689 ms  0xffb privk:0x7faa4479c820::7faa4479c820  a0 01 6a 4b                                      ..jK
 17690 ms  0xffb privk:0x7faa4479c820::7faa4479c820  e5 e5 e5 e5                                      ....
 17690 ms  0xffb PK11_Encrypt()
 17690 ms  0xffb symkey:0x7faa4c6e9480
           /* TID 0x1003 */
 17691 ms  0x1003 PR_Close()
 17691 ms  0x1003 fd:0x7faa47b2fa60
 17718 ms  0x1003 PR_Close()
 17718 ms  0x1003 fd:0x7faa47be4130
           /* TID 0x1094 */
 17719 ms  0x1094 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17719 ms  0x1094 ret:0x0
 17719 ms  0x1094 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17719 ms  0x1094 ret:0x0
           /* TID 0xffb */
 17719 ms  0xffb SSL_AuthCertificateComplete()
 17719 ms  0xffb fd:0x7faa482c63d0
 17719 ms  0xffb err:0x0
 17719 ms  0xffb PK11_Encrypt()
 17719 ms  0xffb symkey:0x7faa4c6e9480
           /* TID 0x1003 */
 17728 ms  0x1003 PR_Close()
 17728 ms  0x1003 fd:0x7faa4bfe7340
           /* TID 0xffb */
 17754 ms  0xffb PK11_Derive()
 17754 ms  0xffb basekey:0x7faa4c275600
 17754 ms     | 0xffb PK11_DeriveWithTemplate()
 17754 ms  0xffb ret:0x7faa4c6bb700
 17754 ms  0xffb PK11_Encrypt()
 17754 ms  0xffb symkey:0x7faa4c6e9080
 17755 ms  0xffb SECKEY_DestroyPrivateKey()
 17755 ms  0xffb privk:0x7faa4349d820::7faa4349d820  20 a9 1c 48                                       ..H
 17755 ms  0xffb privk:0x7faa4349d820::7faa4349d820  e5 e5 e5 e5                                      ....
 17755 ms  0xffb SECKEY_DestroyPrivateKey()
 17755 ms  0xffb privk:0x7faa4349b820::7faa4349b820  30 43 19 48                                      0C.H
 17755 ms  0xffb privk:0x7faa4349b820::7faa4349b820  e5 e5 e5 e5                                      ....
 17755 ms  0xffb PK11_Encrypt()
 17755 ms  0xffb symkey:0x7faa4c6e9080
 17770 ms  0xffb SSL_ImportFD()
 17770 ms  0xffb ret:0x7faa4c2d9220
 17770 ms  0xffb SSL_AuthCertificateHook()
 17770 ms  0xffb fd:0x7faa4c2d9220
 17770 ms  0xffb ret:0x0
 17770 ms  0xffb PR_Connect()
 17770 ms  0xffb fd:0x7faa4c2d9220
           /* TID 0x1003 */
 17787 ms  0x1003 PR_Close()
 17787 ms  0x1003 fd:0x7faa4bfe7640
           /* TID 0xffb */
 17787 ms  0xffb PK11_Encrypt()
 17787 ms  0xffb symkey:0x7faa48781600
 17792 ms  0xffb SSL_ImportFD()
 17792 ms  0xffb ret:0x7faa4c2d9850
 17792 ms  0xffb SSL_AuthCertificateHook()
 17792 ms  0xffb fd:0x7faa4c2d9850
 17792 ms  0xffb ret:0x0
 17792 ms  0xffb PR_Connect()
 17792 ms  0xffb fd:0x7faa4c2d9850
 17794 ms  0xffb SSL_ImportFD()
 17794 ms  0xffb ret:0x7faa4c2d9c10
 17794 ms  0xffb SSL_AuthCertificateHook()
 17794 ms  0xffb fd:0x7faa4c2d9c10
 17794 ms  0xffb ret:0x0
 17794 ms  0xffb PR_Connect()
 17794 ms  0xffb fd:0x7faa4c2d9c10
 17794 ms  0xffb SECKEY_CreateECPrivateKey()
 17794 ms  0xffb cx:0x7faa4afa8ae8
 17795 ms     | 0xffb EC_ValidatePublicKey()
 17795 ms     | 0xffb ret:0x0
 17795 ms  0xffb ret:0x7faa4349c820::7faa4349c820  20 a9 1c 48                                       ..H
 17795 ms  0xffb SECKEY_CreateECPrivateKey()
 17795 ms  0xffb cx:0x7faa4afa8ae8
 17796 ms     | 0xffb EC_ValidatePublicKey()
 17804 ms     | 0xffb ret:0x0
 17804 ms  0xffb ret:0x7faa4479c820::7faa4479c820  90 d7 d0 48                                      ...H
 17805 ms  0xffb SSL_ImportFD()
 17805 ms  0xffb ret:0x7faa4c62b6a0
 17805 ms  0xffb SSL_AuthCertificateHook()
 17805 ms  0xffb fd:0x7faa4c62b6a0
 17805 ms  0xffb ret:0x0
 17805 ms  0xffb PR_Connect()
 17805 ms  0xffb fd:0x7faa4c62b6a0
 17805 ms  0xffb SSL_ImportFD()
 17805 ms  0xffb ret:0x7faa4c2d9f70
 17805 ms  0xffb SSL_AuthCertificateHook()
 17805 ms  0xffb fd:0x7faa4c2d9f70
 17805 ms  0xffb ret:0x0
 17806 ms  0xffb PR_Connect()
 17806 ms  0xffb fd:0x7faa4c2d9f70
 17807 ms  0xffb SECKEY_DestroyPrivateKey()
 17807 ms  0xffb privk:0x7faa48b77820::7faa48b77820  10 bf 44 48                                      ..DH
 17807 ms  0xffb privk:0x7faa48b77820::7faa48b77820  e5 e5 e5 e5                                      ....
 17808 ms  0xffb SECKEY_DestroyPrivateKey()
 17808 ms  0xffb privk:0x7faa48b75820::7faa48b75820  e0 a7 2b 48                                      ..+H
 17808 ms  0xffb privk:0x7faa48b75820::7faa48b75820  e5 e5 e5 e5                                      ....
 17815 ms  0xffb SECKEY_CreateECPrivateKey()
 17815 ms  0xffb cx:0x7faa4afa8e28
 17816 ms     | 0xffb EC_ValidatePublicKey()
 17816 ms     | 0xffb ret:0x0
 17816 ms  0xffb ret:0x7faa46f1a020::7faa46f1a020  e0 a7 2b 48                                      ..+H
 17816 ms  0xffb SECKEY_CreateECPrivateKey()
 17816 ms  0xffb cx:0x7faa4afa8e28
 17816 ms     | 0xffb EC_ValidatePublicKey()
 17819 ms     | 0xffb ret:0x0
 17819 ms  0xffb ret:0x7faa46f2e820::7faa46f2e820  10 bf 44 48                                      ..DH
 17821 ms  0xffb SSL_ImportFD()
 17821 ms  0xffb ret:0x7faa4ce06dc0
 17821 ms  0xffb SSL_AuthCertificateHook()
 17821 ms  0xffb fd:0x7faa4ce06dc0
 17821 ms  0xffb ret:0x0
 17821 ms  0xffb PR_Connect()
 17821 ms  0xffb fd:0x7faa4ce06dc0
 17823 ms  0xffb SSL_ImportFD()
 17823 ms  0xffb ret:0x7faa4c2d9f40
 17823 ms  0xffb SSL_AuthCertificateHook()
 17823 ms  0xffb fd:0x7faa4c2d9f40
 17823 ms  0xffb ret:0x0
 17823 ms  0xffb PR_Connect()
 17823 ms  0xffb fd:0x7faa4c2d9f40
 17824 ms  0xffb SSL_ImportFD()
 17824 ms  0xffb ret:0x7faa4ce07040
 17824 ms  0xffb SSL_AuthCertificateHook()
 17824 ms  0xffb fd:0x7faa4ce07040
 17824 ms  0xffb ret:0x0
 17824 ms  0xffb PR_Connect()
 17824 ms  0xffb fd:0x7faa4ce07040
 17824 ms  0xffb SSL_ImportFD()
 17824 ms  0xffb ret:0x7faa4ceb9100
 17824 ms  0xffb SSL_AuthCertificateHook()
 17824 ms  0xffb fd:0x7faa4ceb9100
 17824 ms  0xffb ret:0x0
 17824 ms  0xffb PR_Connect()
 17824 ms  0xffb fd:0x7faa4ceb9100
 17824 ms  0xffb SSL_ImportFD()
 17824 ms  0xffb ret:0x7faa4ce068e0
 17824 ms  0xffb SSL_AuthCertificateHook()
 17824 ms  0xffb fd:0x7faa4ce068e0
 17824 ms  0xffb ret:0x0
 17824 ms  0xffb PR_Connect()
 17824 ms  0xffb fd:0x7faa4ce068e0
 17824 ms  0xffb SSL_ImportFD()
 17824 ms  0xffb ret:0x7faa4ce06970
 17824 ms  0xffb SSL_AuthCertificateHook()
 17824 ms  0xffb fd:0x7faa4ce06970
 17824 ms  0xffb ret:0x0
 17824 ms  0xffb PR_Connect()
 17824 ms  0xffb fd:0x7faa4ce06970
 17845 ms  0xffb SECKEY_CreateECPrivateKey()
 17845 ms  0xffb cx:0x7faa4afa8fc8
 17846 ms     | 0xffb EC_ValidatePublicKey()
 17846 ms     | 0xffb ret:0x0
 17846 ms  0xffb ret:0x7faa480ea020::7faa480ea020  90 02 6a 4b                                      ..jK
 17846 ms  0xffb SECKEY_CreateECPrivateKey()
 17846 ms  0xffb cx:0x7faa4afa8fc8
 17848 ms     | 0xffb EC_ValidatePublicKey()
 17855 ms     | 0xffb ret:0x0
 17855 ms  0xffb ret:0x7faa48291820::7faa48291820  40 ac 2b 48                                      @.+H
 17866 ms  0xffb SECKEY_DestroyPrivateKey()
 17866 ms  0xffb privk:0x7faa48b7c820::7faa48b7c820  80 4d 4a 48                                      .MJH
 17866 ms  0xffb privk:0x7faa48b7c820::7faa48b7c820  e5 e5 e5 e5                                      ....
 17866 ms  0xffb SECKEY_DestroyPrivateKey()
 17866 ms  0xffb privk:0x7faa48b7a820::7faa48b7a820  20 44 4a 48                                       DJH
 17866 ms  0xffb privk:0x7faa48b7a820::7faa48b7a820  e5 e5 e5 e5                                      ....
 17866 ms  0xffb PK11_Derive()
 17866 ms  0xffb basekey:0x7faa4c672600
 17866 ms     | 0xffb PK11_DeriveWithTemplate()
 17867 ms  0xffb ret:0x7faa4c6ea380
 17867 ms  0xffb PK11_Encrypt()
 17867 ms  0xffb symkey:0x7faa4c6ea900
 17873 ms  0xffb SECKEY_DestroyPrivateKey()
 17873 ms  0xffb privk:0x7faa434a3020::7faa434a3020  a0 eb 77 48                                      ..wH
 17873 ms  0xffb privk:0x7faa434a3020::7faa434a3020  e5 e5 e5 e5                                      ....
 17873 ms  0xffb SECKEY_DestroyPrivateKey()
 17873 ms  0xffb privk:0x7faa434a1020::7faa434a1020  70 ae 2b 48                                      p.+H
 17873 ms  0xffb privk:0x7faa434a1020::7faa434a1020  e5 e5 e5 e5                                      ....
 17873 ms  0xffb SECKEY_CreateECPrivateKey()
 17873 ms  0xffb cx:0x7faa4afa9168
           /* TID 0x1003 */
 17878 ms  0x1003 PR_Close()
 17878 ms  0x1003 fd:0x7faa4c207040
           /* TID 0xffb */
 17882 ms     | 0xffb EC_ValidatePublicKey()
 17882 ms     | 0xffb ret:0x0
 17882 ms  0xffb ret:0x7faa434a3020::7faa434a3020  a0 a6 2b 48                                      ..+H
 17882 ms  0xffb SECKEY_CreateECPrivateKey()
 17882 ms  0xffb cx:0x7faa4afa9168
 17883 ms     | 0xffb EC_ValidatePublicKey()
 17884 ms     | 0xffb ret:0x0
 17884 ms  0xffb ret:0x7faa48a0c820::7faa48a0c820  a0 41 4a 48                                      .AJH
           /* TID 0x1003 */
 17885 ms  0x1003 PR_Close()
 17885 ms  0x1003 fd:0x7faa4d2a3df0
 17887 ms  0x1003 PR_Close()
 17887 ms  0x1003 fd:0x7faa4dc57250
           /* TID 0xffb */
 17890 ms  0xffb SECKEY_CreateECPrivateKey()
 17890 ms  0xffb cx:0x7faa4afa97e8
 17891 ms     | 0xffb EC_ValidatePublicKey()
 17891 ms     | 0xffb ret:0x0
 17891 ms  0xffb ret:0x7faa48b6b020::7faa48b6b020  d0 4d 4a 48                                      .MJH
 17891 ms  0xffb SECKEY_CreateECPrivateKey()
 17891 ms  0xffb cx:0x7faa4afa97e8
 17891 ms     | 0xffb EC_ValidatePublicKey()
 17893 ms     | 0xffb ret:0x0
 17893 ms  0xffb ret:0x7faa48b6d820::7faa48b6d820  60 05 6a 4b                                      `.jK
 17898 ms  0xffb SECKEY_CreateECPrivateKey()
 17898 ms  0xffb cx:0x7faa4afa94a8
 17898 ms     | 0xffb EC_ValidatePublicKey()
 17898 ms     | 0xffb ret:0x0
 17898 ms  0xffb ret:0x7faa48b72020::7faa48b72020  d0 08 6a 4b                                      ..jK
 17898 ms  0xffb SECKEY_CreateECPrivateKey()
 17898 ms  0xffb cx:0x7faa4afa94a8
 17899 ms     | 0xffb EC_ValidatePublicKey()
 17901 ms     | 0xffb ret:0x0
 17901 ms  0xffb ret:0x7faa48b76020::7faa48b76020  b0 0a 6a 4b                                      ..jK
 17906 ms  0xffb PK11_Encrypt()
 17906 ms  0xffb symkey:0x7faa41246680
 17906 ms  0xffb PK11_Encrypt()
 17906 ms  0xffb symkey:0x7faa4c00ef80
           /* TID 0x1003 */
 17908 ms  0x1003 PR_Close()
 17908 ms  0x1003 fd:0x7faa470538b0
 17908 ms  0x1003 PR_Close()
 17908 ms  0x1003 fd:0x7faa470538b0
           /* TID 0xffb */
 17909 ms  0xffb SECKEY_CreateECPrivateKey()
 17909 ms  0xffb cx:0x7faa4afa9b28
 17909 ms     | 0xffb EC_ValidatePublicKey()
 17909 ms     | 0xffb ret:0x0
 17909 ms  0xffb ret:0x7faa48b79020::7faa48b79020  a0 a1 2b 48                                      ..+H
 17909 ms  0xffb SECKEY_CreateECPrivateKey()
 17909 ms  0xffb cx:0x7faa4afa9b28
 17910 ms     | 0xffb EC_ValidatePublicKey()
 17914 ms     | 0xffb ret:0x0
 17914 ms  0xffb ret:0x7faa48b7b020::7faa48b7b020  f0 0b 6a 4b                                      ..jK
 17915 ms  0xffb SECKEY_CreateECPrivateKey()
 17915 ms  0xffb cx:0x7faa4afa9988
 17916 ms     | 0xffb EC_ValidatePublicKey()
 17916 ms     | 0xffb ret:0x0
 17916 ms  0xffb ret:0x7faa48b81020::7faa48b81020  70 0e 6a 4b                                      p.jK
 17916 ms  0xffb SECKEY_CreateECPrivateKey()
 17916 ms  0xffb cx:0x7faa4afa9988
 17916 ms     | 0xffb EC_ValidatePublicKey()
 17923 ms     | 0xffb ret:0x0
 17923 ms  0xffb ret:0x7faa49084020::7faa49084020  f0 61 f0 4b                                      .a.K
 17926 ms  0xffb SECKEY_CreateECPrivateKey()
 17926 ms  0xffb cx:0x7faa4afa9648
 17927 ms     | 0xffb EC_ValidatePublicKey()
 17927 ms     | 0xffb ret:0x0
 17927 ms  0xffb ret:0x7faa4dc1f020::7faa4dc1f020  20 64 f0 4b                                       d.K
 17927 ms  0xffb SECKEY_CreateECPrivateKey()
 17927 ms  0xffb cx:0x7faa4afa9648
 17927 ms     | 0xffb EC_ValidatePublicKey()
 17930 ms     | 0xffb ret:0x0
 17930 ms  0xffb ret:0x7faa2be52820::7faa2be52820  00 66 f0 4b                                      .f.K
           /* TID 0x1003 */
 17936 ms  0x1003 PR_Close()
 17936 ms  0x1003 fd:0x7faa47091e80
           /* TID 0xffb */
 17937 ms  0xffb SECKEY_DestroyPrivateKey()
 17937 ms  0xffb privk:0x7faa4bf64020::7faa4bf64020  40 d2 d0 48                                      @..H
 17937 ms  0xffb privk:0x7faa4bf64020::7faa4bf64020  e5 e5 e5 e5                                      ....
 17937 ms  0xffb SECKEY_DestroyPrivateKey()
 17937 ms  0xffb privk:0x7faa480e7020::7faa480e7020  b0 6f 0f 48                                      .o.H
 17937 ms  0xffb privk:0x7faa480e7020::7faa480e7020  e5 e5 e5 e5                                      ....
 17938 ms  SECKEY_ECParamsToKeySize()
 17938 ms  0xffb ret:0x100
 17938 ms  0xffb SECKEY_CreateECPrivateKey()
 17938 ms  0xffb cx:0x7faa4afa7f88
 17939 ms     | 0xffb EC_ValidatePublicKey()
 17940 ms     | 0xffb ret:0x0
 17940 ms  0xffb ret:0x7faa2be56020::7faa2be56020  70 ae 1c 48                                      p..H
 17940 ms  0xffb PK11_PubDeriveWithKDF()
 17940 ms  0xffb seckey:0x7faa2be56020
 17940 ms     | 0xffb EC_ValidatePublicKey()
 17942 ms     | 0xffb ret:0x0
 17943 ms  0xffb ret:0x7faa4c6ba900
 17943 ms  0xffb PK11_DeriveWithFlags()
 17943 ms  0xffb basekey:0x7faa4c6ba900
 17943 ms     | 0xffb PK11_DeriveWithTemplate()
 17943 ms  0xffb ret:0x7faa4c6bae80
 17943 ms  0xffb PK11_Derive()
 17943 ms  0xffb basekey:0x7faa4c6bae80
 17943 ms     | 0xffb PK11_DeriveWithTemplate()
 17943 ms  0xffb ret:0x7faa4c6bb300
 17943 ms  0xffb SECKEY_DestroyPrivateKey()
 17943 ms  0xffb privk:0x7faa2be56020::7faa2be56020  70 ae 1c 48                                      p..H
 17944 ms  0xffb privk:0x7faa2be56020::7faa2be56020  e5 e5 e5 e5                                      ....
 17944 ms  0xffb PK11_Encrypt()
 17944 ms  0xffb symkey:0x7faa4c6ece00
 17951 ms  0xffb SSL_AuthCertificateComplete()
 17951 ms  0xffb fd:0x7faa4bfe79d0
 17951 ms  0xffb err:0x0
 17952 ms  0xffb PK11_Encrypt()
 17952 ms  0xffb symkey:0x7faa4c6ece00
 17953 ms  0xffb SSL_ImportFD()
 17953 ms  0xffb ret:0x7faa4b63aca0
 17953 ms  0xffb SSL_AuthCertificateHook()
 17953 ms  0xffb fd:0x7faa4b63aca0
 17953 ms  0xffb ret:0x0
 17953 ms  0xffb PR_Connect()
 17953 ms  0xffb fd:0x7faa4b63aca0
 17953 ms  0xffb SSL_ImportFD()
 17953 ms  0xffb ret:0x7faa4c207730
 17953 ms  0xffb SSL_AuthCertificateHook()
 17953 ms  0xffb fd:0x7faa4c207730
 17953 ms  0xffb ret:0x0
 17953 ms  0xffb PR_Connect()
 17953 ms  0xffb fd:0x7faa4c207730
 17954 ms  0xffb SSL_ImportFD()
 17954 ms  0xffb ret:0x7faa4c207e80
 17954 ms  0xffb SSL_AuthCertificateHook()
 17954 ms  0xffb fd:0x7faa4c207e80
 17954 ms  0xffb ret:0x0
 17954 ms  0xffb PR_Connect()
 17954 ms  0xffb fd:0x7faa4c207e80
 17954 ms  0xffb SSL_ImportFD()
 17954 ms  0xffb ret:0x7faa4d2a3ee0
 17954 ms  0xffb SSL_AuthCertificateHook()
 17954 ms  0xffb fd:0x7faa4d2a3ee0
 17954 ms  0xffb ret:0x0
 17954 ms  0xffb PR_Connect()
 17954 ms  0xffb fd:0x7faa4d2a3ee0
 17955 ms  0xffb SSL_ImportFD()
 17955 ms  0xffb ret:0x7faa4dcc9490
 17955 ms  0xffb SSL_AuthCertificateHook()
 17955 ms  0xffb fd:0x7faa4dcc9490
 17955 ms  0xffb ret:0x0
 17955 ms  0xffb PR_Connect()
 17955 ms  0xffb fd:0x7faa4dcc9490
 17957 ms  0xffb SSL_ImportFD()
 17957 ms  0xffb ret:0x7faa4ed3b970
 17957 ms  0xffb SSL_AuthCertificateHook()
 17957 ms  0xffb fd:0x7faa4ed3b970
 17957 ms  0xffb ret:0x0
 17957 ms  0xffb PR_Connect()
 17957 ms  0xffb fd:0x7faa4ed3b970
 17959 ms  0xffb SSL_ImportFD()
 17959 ms  0xffb ret:0x7faa4ed609d0
 17959 ms  0xffb SSL_AuthCertificateHook()
 17959 ms  0xffb fd:0x7faa4ed609d0
 17959 ms  0xffb ret:0x0
 17959 ms  0xffb PR_Connect()
 17959 ms  0xffb fd:0x7faa4ed609d0
 17962 ms  0xffb SSL_ImportFD()
 17962 ms  0xffb ret:0x7faa47be4940
 17962 ms  0xffb SSL_AuthCertificateHook()
 17962 ms  0xffb fd:0x7faa47be4940
 17962 ms  0xffb ret:0x0
 17962 ms  0xffb PR_Connect()
 17962 ms  0xffb fd:0x7faa47be4940
 17962 ms  0xffb SECKEY_CreateECPrivateKey()
 17962 ms  0xffb cx:0x7faa4d26a988
 17963 ms     | 0xffb EC_ValidatePublicKey()
 17963 ms     | 0xffb ret:0x0
 17964 ms  0xffb ret:0x7faa2be59820::7faa2be59820  80 d3 b3 47                                      ...G
 17964 ms  0xffb SECKEY_CreateECPrivateKey()
 17964 ms  0xffb cx:0x7faa4d26a988
 17964 ms     | 0xffb EC_ValidatePublicKey()
 17968 ms     | 0xffb ret:0x0
 17968 ms  0xffb ret:0x7faa2be5b820::7faa2be5b820  f0 a6 2b 48                                      ..+H
           /* TID 0x1003 */
 17971 ms  0x1003 PR_Close()
 17971 ms  0x1003 fd:0x7faa3f43a040
 17971 ms  0x1003 PR_Close()
 17971 ms  0x1003 fd:0x7faa3f43a040
           /* TID 0xffb */
 17972 ms  SECKEY_ECParamsToKeySize()
 17972 ms  0xffb ret:0x100
 17972 ms  0xffb SECKEY_CreateECPrivateKey()
 17972 ms  0xffb cx:0x7faa4afa8128
 17973 ms     | 0xffb EC_ValidatePublicKey()
 17975 ms     | 0xffb ret:0x0
 17975 ms  0xffb ret:0x7faa2be5f020::7faa2be5f020  a0 d6 d0 48                                      ...H
 17975 ms  0xffb PK11_PubDeriveWithKDF()
 17975 ms  0xffb seckey:0x7faa2be5f020
 17975 ms     | 0xffb EC_ValidatePublicKey()
 17976 ms     | 0xffb ret:0x0
 17985 ms  0xffb ret:0x7faa4c6ba900
 17985 ms  0xffb PK11_DeriveWithFlags()
 17985 ms  0xffb basekey:0x7faa4c6ba900
 17985 ms     | 0xffb PK11_DeriveWithTemplate()
 17985 ms  0xffb ret:0x7faa445e5100
 17985 ms  0xffb PK11_Derive()
 17985 ms  0xffb basekey:0x7faa445e5100
 17985 ms     | 0xffb PK11_DeriveWithTemplate()
 17986 ms  0xffb ret:0x7faa4707d780
 17986 ms  0xffb SECKEY_DestroyPrivateKey()
 17986 ms  0xffb privk:0x7faa2be5f020::7faa2be5f020  a0 d6 d0 48                                      ...H
 17986 ms  0xffb privk:0x7faa2be5f020::7faa2be5f020  e5 e5 e5 e5                                      ....
 17986 ms  0xffb PK11_Encrypt()
 17986 ms  0xffb symkey:0x7faa480a9f00
 17991 ms  0xffb SSL_AuthCertificateComplete()
 17991 ms  0xffb fd:0x7faa4bfe7d30
 17991 ms  0xffb err:0x0
 17993 ms  0xffb SSL_ImportFD()
 17993 ms  0xffb ret:0x7faa4877d910
 17993 ms  0xffb SSL_AuthCertificateHook()
 17993 ms  0xffb fd:0x7faa4877d910
 17993 ms  0xffb ret:0x0
 17994 ms  0xffb PR_Connect()
 17994 ms  0xffb fd:0x7faa4877d910
           /* TID 0x1003 */
 17999 ms  0x1003 PR_Close()
 17999 ms  0x1003 fd:0x7faa2cf59070
 18000 ms  0x1003 PR_Close()
 18000 ms  0x1003 fd:0x7faa2cf59070
           /* TID 0xffb */
 18001 ms  0xffb PK11_Encrypt()
 18001 ms  0xffb symkey:0x7faa4c0e5780
 18040 ms  0xffb SECKEY_DestroyPrivateKey()
 18040 ms  0xffb privk:0x7faa4dc1e020::7faa4dc1e020  00 01 6a 4b                                      ..jK
 18041 ms  0xffb privk:0x7faa4dc1e020::7faa4dc1e020  e5 e5 e5 e5                                      ....
 18041 ms  0xffb SECKEY_DestroyPrivateKey()
 18041 ms  0xffb privk:0x7faa4dc0c820::7faa4dc0c820  e0 7c 07 4b                                      .|.K
 18041 ms  0xffb privk:0x7faa4dc0c820::7faa4dc0c820  e5 e5 e5 e5                                      ....
 18045 ms  0xffb SSL_ImportFD()
 18045 ms  0xffb ret:0x7faa2cf59730
 18045 ms  0xffb SSL_AuthCertificateHook()
 18045 ms  0xffb fd:0x7faa2cf59730
 18045 ms  0xffb ret:0x0
 18045 ms  0xffb PR_Connect()
 18045 ms  0xffb fd:0x7faa2cf59730
 18045 ms  0xffb SSL_ImportFD()
 18045 ms  0xffb ret:0x7faa2cf596a0
 18045 ms  0xffb SSL_AuthCertificateHook()
 18045 ms  0xffb fd:0x7faa2cf596a0
 18045 ms  0xffb ret:0x0
 18045 ms  0xffb PR_Connect()
 18045 ms  0xffb fd:0x7faa2cf596a0
 18050 ms  0xffb SECKEY_CreateECPrivateKey()
 18050 ms  0xffb cx:0x7faa2cff1ae8
 18051 ms     | 0xffb EC_ValidatePublicKey()
 18051 ms     | 0xffb ret:0x0
 18051 ms  0xffb ret:0x7faa2be62820::7faa2be62820  e0 7c 07 4b                                      .|.K
 18051 ms  0xffb SECKEY_CreateECPrivateKey()
 18051 ms  0xffb cx:0x7faa2cff1ae8
 18051 ms     | 0xffb EC_ValidatePublicKey()
 18054 ms     | 0xffb ret:0x0
 18054 ms  0xffb ret:0x7faa2be64820::7faa2be64820  90 4c 4a 48                                      .LJH
 18055 ms  0xffb SSL_ImportFD()
 18055 ms  0xffb ret:0x7faa2cf59b80
 18055 ms  0xffb SSL_AuthCertificateHook()
 18055 ms  0xffb fd:0x7faa2cf59b80
 18055 ms  0xffb ret:0x0
 18056 ms  0xffb PR_Connect()
 18056 ms  0xffb fd:0x7faa2cf59b80
 18056 ms  0xffb SSL_ImportFD()
 18056 ms  0xffb ret:0x7faa2cf59d30
 18056 ms  0xffb SSL_AuthCertificateHook()
 18056 ms  0xffb fd:0x7faa2cf59d30
 18056 ms  0xffb ret:0x0
 18056 ms  0xffb PR_Connect()
 18056 ms  0xffb fd:0x7faa2cf59d30
 18068 ms  0xffb SECKEY_CreateECPrivateKey()
 18068 ms  0xffb cx:0x7faa4d26a168
 18069 ms     | 0xffb EC_ValidatePublicKey()
 18069 ms     | 0xffb ret:0x0
 18069 ms  0xffb ret:0x7faa2be67020::7faa2be67020  60 6a f0 4b                                      `j.K
 18069 ms  0xffb SECKEY_CreateECPrivateKey()
 18069 ms  0xffb cx:0x7faa4d26a168
 18070 ms     | 0xffb EC_ValidatePublicKey()
 18072 ms     | 0xffb ret:0x0
 18072 ms  0xffb ret:0x7faa2be69020::7faa2be69020  40 6c f0 4b                                      @l.K
           /* TID 0x1003 */
 18080 ms  0x1003 PR_Close()
 18080 ms  0x1003 fd:0x7faa2cf59b50
           /* TID 0xffb */
 18081 ms  0xffb SECKEY_CreateECPrivateKey()
 18081 ms  0xffb cx:0x7faa2cfef248
 18082 ms     | 0xffb EC_ValidatePublicKey()
 18082 ms     | 0xffb ret:0x0
 18082 ms  0xffb ret:0x7faa2be6b820::7faa2be6b820  90 6c f0 4b                                      .l.K
 18082 ms  0xffb SECKEY_CreateECPrivateKey()
 18082 ms  0xffb cx:0x7faa2cfef248
 18083 ms     | 0xffb EC_ValidatePublicKey()
 18085 ms     | 0xffb ret:0x0
 18085 ms  0xffb ret:0x7faa2be6d820::7faa2be6d820  c0 6e f0 4b                                      .n.K
 18087 ms  0xffb SECKEY_CreateECPrivateKey()
 18087 ms  0xffb cx:0x7faa2cfef3e8
 18088 ms     | 0xffb EC_ValidatePublicKey()
 18088 ms     | 0xffb ret:0x0
 18088 ms  0xffb ret:0x7faa2be70020::7faa2be70020  60 40 f8 4b                                      `@.K
 18088 ms  0xffb SECKEY_CreateECPrivateKey()
 18088 ms  0xffb cx:0x7faa2cfef3e8
 18088 ms     | 0xffb EC_ValidatePublicKey()
 18090 ms     | 0xffb ret:0x0
 18090 ms  0xffb ret:0x7faa2cf15820::7faa2cf15820  40 42 f8 4b                                      @B.K
 18090 ms  0xffb SECKEY_CreateECPrivateKey()
 18090 ms  0xffb cx:0x7faa4afa9cc8
 18091 ms     | 0xffb EC_ValidatePublicKey()
 18091 ms     | 0xffb ret:0x0
 18091 ms  0xffb ret:0x7faa434a0020::7faa434a0020  80 43 f8 4b                                      .C.K
 18091 ms  0xffb SECKEY_CreateECPrivateKey()
 18091 ms  0xffb cx:0x7faa4afa9cc8
 18091 ms     | 0xffb EC_ValidatePublicKey()
 18093 ms     | 0xffb ret:0x0
 18093 ms  0xffb ret:0x7faa44787820::7faa44787820  60 45 f8 4b                                      `E.K
 18093 ms  0xffb SECKEY_CreateECPrivateKey()
 18093 ms  0xffb cx:0x7faa4d26a648
 18094 ms     | 0xffb EC_ValidatePublicKey()
 18094 ms     | 0xffb ret:0x0
 18094 ms  0xffb ret:0x7faa480e7020::7faa480e7020  a0 46 f8 4b                                      .F.K
 18094 ms  0xffb SECKEY_CreateECPrivateKey()
 18094 ms  0xffb cx:0x7faa4d26a648
 18095 ms     | 0xffb EC_ValidatePublicKey()
 18096 ms     | 0xffb ret:0x0
 18096 ms  0xffb ret:0x7faa4bf64020::7faa4bf64020  d0 48 f8 4b                                      .H.K
 18103 ms  0xffb SECKEY_CreateECPrivateKey()
 18103 ms  0xffb cx:0x7faa2cfef588
 18104 ms     | 0xffb EC_ValidatePublicKey()
 18104 ms     | 0xffb ret:0x0
 18104 ms  0xffb ret:0x7faa4dc0f820::7faa4dc0f820  10 4a f8 4b                                      .J.K
 18104 ms  0xffb SECKEY_CreateECPrivateKey()
 18104 ms  0xffb cx:0x7faa2cfef588
 18104 ms     | 0xffb EC_ValidatePublicKey()
 18106 ms     | 0xffb ret:0x0
 18106 ms  0xffb ret:0x7faa2beba820::7faa2beba820  f0 4b f8 4b                                      .K.K
 18107 ms  0xffb SECKEY_CreateECPrivateKey()
 18107 ms  0xffb cx:0x7faa2cfefda8
 18107 ms     | 0xffb EC_ValidatePublicKey()
 18107 ms     | 0xffb ret:0x0
 18107 ms  0xffb ret:0x7faa2bebd020::7faa2bebd020  30 4d f8 4b                                      0M.K
 18107 ms  0xffb SECKEY_CreateECPrivateKey()
 18107 ms  0xffb cx:0x7faa2cfefda8
 18108 ms     | 0xffb EC_ValidatePublicKey()
 18109 ms     | 0xffb ret:0x0
 18109 ms  0xffb ret:0x7faa2bebf020::7faa2bebf020  10 4f f8 4b                                      .O.K
 18110 ms  0xffb SECKEY_CreateECPrivateKey()
 18110 ms  0xffb cx:0x7faa2cfefa68
 18110 ms     | 0xffb EC_ValidatePublicKey()
 18110 ms     | 0xffb ret:0x0
 18110 ms  0xffb ret:0x7faa2bec1820::7faa2bec1820  b0 a0 02 4c                                      ...L
 18110 ms  0xffb SECKEY_CreateECPrivateKey()
 18110 ms  0xffb cx:0x7faa2cfefa68
 18111 ms     | 0xffb EC_ValidatePublicKey()
 18113 ms     | 0xffb ret:0x0
 18113 ms  0xffb ret:0x7faa2bec3820::7faa2bec3820  90 a2 02 4c                                      ...L
 18115 ms  0xffb SECKEY_CreateECPrivateKey()
 18115 ms  0xffb cx:0x7faa2cfef8c8
 18115 ms     | 0xffb EC_ValidatePublicKey()
 18115 ms     | 0xffb ret:0x0
 18115 ms  0xffb ret:0x7faa2bec6020::7faa2bec6020  d0 a3 02 4c                                      ...L
 18115 ms  0xffb SECKEY_CreateECPrivateKey()
 18115 ms  0xffb cx:0x7faa2cfef8c8
 18116 ms     | 0xffb EC_ValidatePublicKey()
 18120 ms     | 0xffb ret:0x0
 18120 ms  0xffb ret:0x7faa2bec8020::7faa2bec8020  00 a6 02 4c                                      ...L
           /* TID 0x1003 */
 18122 ms  0x1003 PR_Close()
 18122 ms  0x1003 fd:0x7faa481ff2b0
           /* TID 0xffb */
 18128 ms  0xffb PK11_Derive()
 18128 ms  0xffb basekey:0x7faa4b682080
 18128 ms     | 0xffb PK11_DeriveWithTemplate()
 18128 ms  0xffb ret:0x7faa4c6ba900
 18128 ms  0xffb PK11_Encrypt()
 18128 ms  0xffb symkey:0x7faa4c0c3180
 18129 ms  0xffb SECKEY_DestroyPrivateKey()
 18129 ms  0xffb privk:0x7faa46f2e820::7faa46f2e820  10 bf 44 48                                      ..DH
 18129 ms  0xffb privk:0x7faa46f2e820::7faa46f2e820  e5 e5 e5 e5                                      ....
 18129 ms  0xffb SECKEY_DestroyPrivateKey()
 18129 ms  0xffb privk:0x7faa46f1a020::7faa46f1a020  e0 a7 2b 48                                      ..+H
 18129 ms  0xffb privk:0x7faa46f1a020::7faa46f1a020  e5 e5 e5 e5                                      ....
 18130 ms  SECKEY_ECParamsToKeySize()
 18130 ms  0xffb ret:0x100
 18130 ms  0xffb SECKEY_CreateECPrivateKey()
 18130 ms  0xffb cx:0x7faa2cff1ae8
 18131 ms     | 0xffb EC_ValidatePublicKey()
 18132 ms     | 0xffb ret:0x0
 18132 ms  0xffb ret:0x7faa2becb820::7faa2becb820  b0 da 43 48                                      ..CH
 18132 ms  0xffb PK11_PubDeriveWithKDF()
 18132 ms  0xffb seckey:0x7faa2becb820
 18132 ms     | 0xffb EC_ValidatePublicKey()
 18134 ms     | 0xffb ret:0x0
 18135 ms  0xffb ret:0x7faa4c0c5700
 18135 ms  0xffb PK11_DeriveWithFlags()
 18135 ms  0xffb basekey:0x7faa4c0c5700
 18135 ms     | 0xffb PK11_DeriveWithTemplate()
 18135 ms  0xffb ret:0x7faa4c0c5780
 18135 ms  0xffb PK11_Derive()
 18135 ms  0xffb basekey:0x7faa4c0c5780
 18135 ms     | 0xffb PK11_DeriveWithTemplate()
 18135 ms  0xffb ret:0x7faa4c0c5900
 18135 ms  0xffb SECKEY_DestroyPrivateKey()
 18135 ms  0xffb privk:0x7faa2becb820::7faa2becb820  b0 da 43 48                                      ..CH
 18135 ms  0xffb privk:0x7faa2becb820::7faa2becb820  e5 e5 e5 e5                                      ....
 18141 ms  0xffb PK11_Encrypt()
 18141 ms  0xffb symkey:0x7faa4c0c5d00
 18142 ms  0xffb SSL_AuthCertificateComplete()
 18142 ms  0xffb fd:0x7faa4877d910
 18142 ms  0xffb err:0x0
 18143 ms  0xffb SECKEY_CreateECPrivateKey()
 18143 ms  0xffb cx:0x7faa2cfef728
 18144 ms     | 0xffb EC_ValidatePublicKey()
 18144 ms     | 0xffb ret:0x0
 18144 ms  0xffb ret:0x7faa2becb820::7faa2becb820  10 af 2b 48                                      ..+H
 18144 ms  0xffb SECKEY_CreateECPrivateKey()
 18144 ms  0xffb cx:0x7faa2cfef728
 18145 ms     | 0xffb EC_ValidatePublicKey()
 18146 ms     | 0xffb ret:0x0
 18146 ms  0xffb ret:0x7faa2becd820::7faa2becd820  60 a5 02 4c                                      `..L
 18150 ms  0xffb SECKEY_CreateECPrivateKey()
 18150 ms  0xffb cx:0x7faa2cfefc08
 18150 ms     | 0xffb EC_ValidatePublicKey()
 18150 ms     | 0xffb ret:0x0
 18150 ms  0xffb ret:0x7faa2bed0020::7faa2bed0020  40 a7 02 4c                                      @..L
 18150 ms  0xffb SECKEY_CreateECPrivateKey()
 18150 ms  0xffb cx:0x7faa2cfefc08
 18151 ms     | 0xffb EC_ValidatePublicKey()
           /* TID 0x1003 */
 18153 ms  0x1003 PR_Close()
 18153 ms  0x1003 fd:0x7faa4bfe7dc0
 18154 ms  0x1003 PR_Close()
 18154 ms  0x1003 fd:0x7faa4bfe7dc0
           /* TID 0xffb */
 18157 ms     | 0xffb ret:0x0
 18157 ms  0xffb ret:0x7faa2bed4020::7faa2bed4020  60 aa 02 4c                                      `..L
 18164 ms  0xffb PK11_Encrypt()
 18164 ms  0xffb symkey:0x7faa4c0c5d00
 18166 ms  SECKEY_ECParamsToKeySize()
 18166 ms  0xffb ret:0x100
 18166 ms  0xffb SECKEY_CreateECPrivateKey()
 18166 ms  0xffb cx:0x7faa4afa8ae8
 18166 ms     | 0xffb EC_ValidatePublicKey()
 18170 ms     | 0xffb ret:0x0
 18170 ms  0xffb ret:0x7faa2bed7820::7faa2bed7820  30 ad 02 4c                                      0..L
 18171 ms  0xffb PK11_PubDeriveWithKDF()
 18171 ms  0xffb seckey:0x7faa2bed7820
 18171 ms     | 0xffb EC_ValidatePublicKey()
 18172 ms     | 0xffb ret:0x0
 18174 ms  0xffb ret:0x7faa4c0c5700
 18174 ms  0xffb PK11_DeriveWithFlags()
 18174 ms  0xffb basekey:0x7faa4c0c5700
 18174 ms     | 0xffb PK11_DeriveWithTemplate()
 18174 ms  0xffb ret:0x7faa4c0c6200
 18174 ms  0xffb PK11_Derive()
 18174 ms  0xffb basekey:0x7faa4c0c6200
 18174 ms     | 0xffb PK11_DeriveWithTemplate()
 18174 ms  0xffb ret:0x7faa4c0d3780
 18174 ms  0xffb SECKEY_DestroyPrivateKey()
 18174 ms  0xffb privk:0x7faa2bed7820::7faa2bed7820  30 ad 02 4c                                      0..L
 18174 ms  0xffb privk:0x7faa2bed7820::7faa2bed7820  e5 e5 e5 e5                                      ....
 18174 ms  0xffb PK11_Encrypt()
 18174 ms  0xffb symkey:0x7faa4c0d3900
 18179 ms  0xffb SSL_AuthCertificateComplete()
 18179 ms  0xffb fd:0x7faa4bfe7670
 18179 ms  0xffb err:0x0
 18181 ms  SECKEY_ECParamsToKeySize()
 18181 ms  0xffb ret:0xff
 18181 ms  0xffb SECKEY_CreateECPrivateKey()
 18181 ms  0xffb cx:0x7faa4afa9168
 18181 ms     | 0xffb EC_ValidatePublicKey()
 18181 ms     | 0xffb ret:0x0
 18181 ms  0xffb ret:0x7faa2bed8820::7faa2bed8820  80 ad 02 4c                                      ...L
 18181 ms  0xffb PK11_PubDeriveWithKDF()
 18181 ms  0xffb seckey:0x7faa2bed8820
 18181 ms     | 0xffb EC_ValidatePublicKey()
 18181 ms     | 0xffb ret:0x0
 18182 ms  0xffb ret:0x7faa4c0c5700
 18182 ms  0xffb PK11_DeriveWithFlags()
 18182 ms  0xffb basekey:0x7faa4c0c5700
 18182 ms     | 0xffb PK11_DeriveWithTemplate()
 18182 ms  0xffb ret:0x7faa4b682880
 18182 ms  0xffb PK11_Derive()
 18182 ms  0xffb basekey:0x7faa4b682880
 18182 ms     | 0xffb PK11_DeriveWithTemplate()
 18182 ms  0xffb ret:0x7faa4c0d3b80
 18182 ms  0xffb SECKEY_DestroyPrivateKey()
 18182 ms  0xffb privk:0x7faa2bed8820::7faa2bed8820  80 ad 02 4c                                      ...L
 18182 ms  0xffb privk:0x7faa2bed8820::7faa2bed8820  e5 e5 e5 e5                                      ....
 18182 ms  0xffb PK11_Encrypt()
 18182 ms  0xffb symkey:0x7faa4c0d3f00
           /* TID 0x1003 */
 18187 ms  0x1003 PR_Close()
 18187 ms  0x1003 fd:0x7faa4bfe7700
 18188 ms  0x1003 PR_Close()
 18188 ms  0x1003 fd:0x7faa47bbb130
           /* TID 0xffb */
 18189 ms  SECKEY_ECParamsToKeySize()
 18189 ms  0xffb ret:0xff
 18189 ms  0xffb SECKEY_CreateECPrivateKey()
 18189 ms  0xffb cx:0x7faa4afa97e8
 18190 ms     | 0xffb EC_ValidatePublicKey()
 18190 ms     | 0xffb ret:0x0
 18190 ms  0xffb ret:0x7faa3dd6c820::7faa3dd6c820  40 ac 02 4c                                      @..L
 18190 ms  0xffb PK11_PubDeriveWithKDF()
 18190 ms  0xffb seckey:0x7faa3dd6c820
 18190 ms     | 0xffb EC_ValidatePublicKey()
 18190 ms     | 0xffb ret:0x0
 18190 ms  0xffb ret:0x7faa4c0c5700
 18190 ms  0xffb PK11_DeriveWithFlags()
 18190 ms  0xffb basekey:0x7faa4c0c5700
 18190 ms     | 0xffb PK11_DeriveWithTemplate()
 18191 ms  0xffb ret:0x7faa4c0d4180
 18191 ms  0xffb PK11_Derive()
 18191 ms  0xffb basekey:0x7faa4c0d4180
 18191 ms     | 0xffb PK11_DeriveWithTemplate()
 18191 ms  0xffb ret:0x7faa4c0d4200
 18191 ms  0xffb SECKEY_DestroyPrivateKey()
 18191 ms  0xffb privk:0x7faa3dd6c820::7faa3dd6c820  40 ac 02 4c                                      @..L
 18191 ms  0xffb privk:0x7faa3dd6c820::7faa3dd6c820  e5 e5 e5 e5                                      ....
 18191 ms  0xffb PK11_Encrypt()
 18191 ms  0xffb symkey:0x7faa4c0d4380
 18198 ms  0xffb SSL_AuthCertificateComplete()
 18198 ms  0xffb fd:0x7faa4c0e3dc0
 18198 ms  0xffb err:0x0
 18198 ms  0xffb PK11_Encrypt()
 18198 ms  0xffb symkey:0x7faa4c6bb500
 18198 ms  0xffb SSL_AuthCertificateComplete()
 18198 ms  0xffb fd:0x7faa4b63a520
 18198 ms  0xffb err:0x0
 18199 ms  SECKEY_ECParamsToKeySize()
 18199 ms  0xffb ret:0x100
 18199 ms  0xffb SECKEY_CreateECPrivateKey()
 18199 ms  0xffb cx:0x7faa4afa8fc8
 18200 ms     | 0xffb EC_ValidatePublicKey()
 18201 ms     | 0xffb ret:0x0
 18201 ms  0xffb ret:0x7faa3de4c820::7faa3de4c820  d0 ad 02 4c                                      ...L
 18201 ms  0xffb PK11_PubDeriveWithKDF()
 18201 ms  0xffb seckey:0x7faa3de4c820
 18201 ms     | 0xffb EC_ValidatePublicKey()
 18203 ms     | 0xffb ret:0x0
 18204 ms  0xffb ret:0x7faa4c0c5700
 18205 ms  0xffb PK11_DeriveWithFlags()
 18205 ms  0xffb basekey:0x7faa4c0c5700
 18205 ms     | 0xffb PK11_DeriveWithTemplate()
 18205 ms  0xffb ret:0x7faa4c0d4700
 18205 ms  0xffb PK11_Derive()
 18205 ms  0xffb basekey:0x7faa4c0d4700
 18205 ms     | 0xffb PK11_DeriveWithTemplate()
 18205 ms  0xffb ret:0x7faa4c0d4780
 18205 ms  0xffb SECKEY_DestroyPrivateKey()
 18205 ms  0xffb privk:0x7faa3de4c820::7faa3de4c820  d0 ad 02 4c                                      ...L
 18205 ms  0xffb privk:0x7faa3de4c820::7faa3de4c820  e5 e5 e5 e5                                      ....
 18205 ms  0xffb PK11_Encrypt()
 18205 ms  0xffb symkey:0x7faa4c0d4f00
 18209 ms  0xffb PK11_Encrypt()
 18209 ms  0xffb symkey:0x7faa4c0d3f00
 18209 ms  0xffb PK11_Encrypt()
 18209 ms  0xffb symkey:0x7faa4c0d3f00
 18211 ms  0xffb PK11_Encrypt()
 18211 ms  0xffb symkey:0x7faa4c0d4380
 18212 ms  0xffb PK11_Encrypt()
 18212 ms  0xffb symkey:0x7faa4c0d4380
 18213 ms  SECKEY_ECParamsToKeySize()
 18213 ms  0xffb ret:0xff
 18213 ms  0xffb SECKEY_CreateECPrivateKey()
 18213 ms  0xffb cx:0x7faa4afa94a8
 18214 ms     | 0xffb EC_ValidatePublicKey()
 18214 ms     | 0xffb ret:0x0
 18214 ms  0xffb ret:0x7faa4bf75820::7faa4bf75820  a0 51 04 4c                                      .Q.L
 18214 ms  0xffb PK11_PubDeriveWithKDF()
 18214 ms  0xffb seckey:0x7faa4bf75820
 18214 ms     | 0xffb EC_ValidatePublicKey()
 18214 ms     | 0xffb ret:0x0
 18214 ms  0xffb ret:0x7faa4c0c5700
 18214 ms  0xffb PK11_DeriveWithFlags()
 18214 ms  0xffb basekey:0x7faa4c0c5700
 18214 ms     | 0xffb PK11_DeriveWithTemplate()
 18214 ms  0xffb ret:0x7faa4c20de00
 18214 ms  0xffb PK11_Derive()
 18214 ms  0xffb basekey:0x7faa4c20de00
 18214 ms     | 0xffb PK11_DeriveWithTemplate()
 18215 ms  0xffb ret:0x7faa4c20df00
 18215 ms  0xffb SECKEY_DestroyPrivateKey()
 18215 ms  0xffb privk:0x7faa4bf75820::7faa4bf75820  a0 51 04 4c                                      .Q.L
 18215 ms  0xffb privk:0x7faa4bf75820::7faa4bf75820  e5 e5 e5 e5                                      ....
 18215 ms  0xffb PK11_Encrypt()
 18215 ms  0xffb symkey:0x7faa4c20e300
 18226 ms  0xffb PR_Close()
 18226 ms  0xffb fd:0x7faa2cf59d30
 18226 ms  0xffb PR_Close()
 18226 ms  0xffb fd:0x7faa4c207e80
 18226 ms  0xffb PR_Close()
 18226 ms  0xffb fd:0x7faa4d2a3ee0
 18226 ms  0xffb SSL_AuthCertificateComplete()
 18226 ms  0xffb fd:0x7faa4c207d90
 18226 ms  0xffb err:0x0
 18228 ms  0xffb PK11_Encrypt()
 18228 ms  0xffb symkey:0x7faa4c0d4380
 18228 ms  0xffb SSL_AuthCertificateComplete()
 18228 ms  0xffb fd:0x7faa480d3100
 18228 ms  0xffb err:0x0
 18228 ms  0xffb PK11_Encrypt()
 18228 ms  0xffb symkey:0x7faa4c0d4380
 18229 ms  0xffb PK11_Encrypt()
 18229 ms  0xffb symkey:0x7faa4c0d4380
           /* TID 0x1003 */
 18230 ms  0x1003 PR_Close()
 18230 ms  0x1003 fd:0x7faa2ba4f850
           /* TID 0xffb */
 18231 ms  0xffb PK11_Encrypt()
 18231 ms  0xffb symkey:0x7faa4c0d4f00
           /* TID 0x1003 */
 18232 ms  0x1003 PR_Close()
 18232 ms  0x1003 fd:0x7faa2ba4f850
           /* TID 0xffb */
 18233 ms  SECKEY_ECParamsToKeySize()
 18233 ms  0xffb ret:0xff
 18233 ms  0xffb SECKEY_CreateECPrivateKey()
 18233 ms  0xffb cx:0x7faa4afa9b28
 18233 ms     | 0xffb EC_ValidatePublicKey()
 18233 ms     | 0xffb ret:0x0
 18233 ms  0xffb ret:0x7faa2ba84020::7faa2ba84020  10 55 04 4c                                      .U.L
 18233 ms  0xffb PK11_PubDeriveWithKDF()
 18233 ms  0xffb seckey:0x7faa2ba84020
 18233 ms     | 0xffb EC_ValidatePublicKey()
 18233 ms     | 0xffb ret:0x0
 18234 ms  0xffb ret:0x7faa4c0c5700
 18234 ms  0xffb PK11_DeriveWithFlags()
 18234 ms  0xffb basekey:0x7faa4c0c5700
 18234 ms     | 0xffb PK11_DeriveWithTemplate()
 18234 ms  0xffb ret:0x7faa4c267800
 18234 ms  0xffb PK11_Derive()
 18234 ms  0xffb basekey:0x7faa4c267800
 18234 ms     | 0xffb PK11_DeriveWithTemplate()
 18234 ms  0xffb ret:0x7faa4c267900
 18234 ms  0xffb SECKEY_DestroyPrivateKey()
 18234 ms  0xffb privk:0x7faa2ba84020::7faa2ba84020  10 55 04 4c                                      .U.L
 18234 ms  0xffb privk:0x7faa2ba84020::7faa2ba84020  e5 e5 e5 e5                                      ....
 18234 ms  0xffb PK11_Encrypt()
 18234 ms  0xffb symkey:0x7faa4c267d00
 18239 ms  SECKEY_ECParamsToKeySize()
 18239 ms  0xffb ret:0xff
 18239 ms  0xffb SECKEY_CreateECPrivateKey()
 18239 ms  0xffb cx:0x7faa4afa9988
 18239 ms     | 0xffb EC_ValidatePublicKey()
 18239 ms     | 0xffb ret:0x0
 18239 ms  0xffb ret:0x7faa2ba85020::7faa2ba85020  00 56 04 4c                                      .V.L
 18239 ms  0xffb PK11_PubDeriveWithKDF()
 18239 ms  0xffb seckey:0x7faa2ba85020
 18239 ms     | 0xffb EC_ValidatePublicKey()
 18239 ms     | 0xffb ret:0x0
 18240 ms  0xffb ret:0x7faa4c0c5700
 18240 ms  0xffb PK11_DeriveWithFlags()
 18240 ms  0xffb basekey:0x7faa4c0c5700
 18240 ms     | 0xffb PK11_DeriveWithTemplate()
 18240 ms  0xffb ret:0x7faa4c267e00
 18240 ms  0xffb PK11_Derive()
 18240 ms  0xffb basekey:0x7faa4c267e00
 18240 ms     | 0xffb PK11_DeriveWithTemplate()
 18240 ms  0xffb ret:0x7faa4c267e80
 18240 ms  0xffb SECKEY_DestroyPrivateKey()
 18240 ms  0xffb privk:0x7faa2ba85020::7faa2ba85020  00 56 04 4c                                      .V.L
 18240 ms  0xffb privk:0x7faa2ba85020::7faa2ba85020  e5 e5 e5 e5                                      ....
 18240 ms  0xffb PK11_Encrypt()
 18240 ms  0xffb symkey:0x7faa4c268000
 18243 ms  SECKEY_ECParamsToKeySize()
 18243 ms  0xffb ret:0xff
 18243 ms  0xffb SECKEY_CreateECPrivateKey()
 18243 ms  0xffb cx:0x7faa4afa9648
 18244 ms     | 0xffb EC_ValidatePublicKey()
 18244 ms     | 0xffb ret:0x0
 18244 ms  0xffb ret:0x7faa2ba86020::7faa2ba86020  a0 56 04 4c                                      .V.L
 18244 ms  0xffb PK11_PubDeriveWithKDF()
 18244 ms  0xffb seckey:0x7faa2ba86020
 18244 ms     | 0xffb EC_ValidatePublicKey()
 18244 ms     | 0xffb ret:0x0
 18244 ms  0xffb ret:0x7faa4c0c5700
 18244 ms  0xffb PK11_DeriveWithFlags()
 18244 ms  0xffb basekey:0x7faa4c0c5700
 18244 ms     | 0xffb PK11_DeriveWithTemplate()
 18244 ms  0xffb ret:0x7faa4c268100
 18244 ms  0xffb PK11_Derive()
 18244 ms  0xffb basekey:0x7faa4c268100
 18244 ms     | 0xffb PK11_DeriveWithTemplate()
 18244 ms  0xffb ret:0x7faa4c268180
 18244 ms  0xffb SECKEY_DestroyPrivateKey()
 18244 ms  0xffb privk:0x7faa2ba86020::7faa2ba86020  a0 56 04 4c                                      .V.L
 18244 ms  0xffb privk:0x7faa2ba86020::7faa2ba86020  e5 e5 e5 e5                                      ....
 18245 ms  0xffb PK11_Encrypt()
 18245 ms  0xffb symkey:0x7faa4c268480
 18247 ms  0xffb PK11_Encrypt()
 18247 ms  0xffb symkey:0x7faa4c20e300
 18247 ms  0xffb PK11_Encrypt()
 18247 ms  0xffb symkey:0x7faa4c20e300
 18248 ms  0xffb SECKEY_DestroyPrivateKey()
 18248 ms  0xffb privk:0x7faa2be64820::7faa2be64820  90 4c 4a 48                                      .LJH
 18248 ms  0xffb privk:0x7faa2be64820::7faa2be64820  e5 e5 e5 e5                                      ....
 18248 ms  0xffb SECKEY_DestroyPrivateKey()
 18248 ms  0xffb privk:0x7faa2be62820::7faa2be62820  e0 7c 07 4b                                      .|.K
 18248 ms  0xffb privk:0x7faa2be62820::7faa2be62820  e5 e5 e5 e5                                      ....
 18248 ms  0xffb PR_Close()
 18248 ms  0xffb fd:0x7faa2cf596a0
 18248 ms  0xffb PR_Close()
 18248 ms  0xffb fd:0x7faa4b63aca0
 18248 ms  0xffb PR_Close()
 18248 ms  0xffb fd:0x7faa4c207730
 18248 ms  0xffb PR_Close()
 18248 ms  0xffb fd:0x7faa2cf59730
 18249 ms  0xffb PK11_Encrypt()
 18249 ms  0xffb symkey:0x7faa4c20e300
 18250 ms  0xffb SSL_AuthCertificateComplete()
 18250 ms  0xffb fd:0x7faa4bfe7af0
 18250 ms  0xffb err:0x0
 18250 ms  0xffb SSL_AuthCertificateComplete()
 18250 ms  0xffb fd:0x7faa4bfe78b0
 18250 ms  0xffb err:0x0
 18250 ms  0xffb SSL_AuthCertificateComplete()
 18250 ms  0xffb fd:0x7faa4b63a460
 18250 ms  0xffb err:0x0
 18252 ms  0xffb PK11_Encrypt()
 18252 ms  0xffb symkey:0x7faa4c267d00
 18254 ms  0xffb PK11_Encrypt()
 18254 ms  0xffb symkey:0x7faa4c268000
 18254 ms  0xffb PK11_Encrypt()
 18254 ms  0xffb symkey:0x7faa4c0d4380
 18255 ms  0xffb PK11_Encrypt()
 18255 ms  0xffb symkey:0x7faa4c268480
 18255 ms  0xffb PK11_Encrypt()
 18255 ms  0xffb symkey:0x7faa4c268480
 18256 ms  0xffb PK11_Encrypt()
 18256 ms  0xffb symkey:0x7faa4c20e300
 18257 ms  0xffb SECKEY_CreateECPrivateKey()
 18257 ms  0xffb cx:0x7faa2cff12c8
 18257 ms     | 0xffb EC_ValidatePublicKey()
 18257 ms     | 0xffb ret:0x0
 18257 ms  0xffb ret:0x7faa2ba8c820::7faa2ba8c820  90 7c 07 4b                                      .|.K
 18257 ms  0xffb SECKEY_CreateECPrivateKey()
 18257 ms  0xffb cx:0x7faa2cff12c8
 18258 ms     | 0xffb EC_ValidatePublicKey()
 18259 ms     | 0xffb ret:0x0
 18259 ms  0xffb ret:0x7faa2ba8e820::7faa2ba8e820  20 54 04 4c                                       T.L
 18265 ms  0xffb PR_Close()
 18265 ms  0xffb fd:0x7faa47be4940
 18265 ms  0xffb PR_Close()
 18265 ms  0xffb fd:0x7faa4ed609d0
 18266 ms  0xffb PK11_Encrypt()
 18266 ms  0xffb symkey:0x7faa4c268480
 18266 ms  0xffb PK11_Encrypt()
 18266 ms  0xffb symkey:0x7faa4c268480
 18266 ms  0xffb PK11_Encrypt()
 18266 ms  0xffb symkey:0x7faa4c0d4380
 18267 ms  0xffb PK11_Encrypt()
 18267 ms  0xffb symkey:0x7faa4c0d4380
 18269 ms  0xffb PK11_Encrypt()
 18269 ms  0xffb symkey:0x7faa4c268480
 18269 ms  0xffb SECKEY_CreateECPrivateKey()
 18269 ms  0xffb cx:0x7faa2cff1468
 18270 ms     | 0xffb EC_ValidatePublicKey()
 18270 ms     | 0xffb ret:0x0
 18270 ms  0xffb ret:0x7faa2ba95020::7faa2ba95020  90 57 04 4c                                      .W.L
 18270 ms  0xffb SECKEY_CreateECPrivateKey()
 18270 ms  0xffb cx:0x7faa2cff1468
 18271 ms     | 0xffb EC_ValidatePublicKey()
 18272 ms     | 0xffb ret:0x0
 18272 ms  0xffb ret:0x7faa2ba97020::7faa2ba97020  70 59 04 4c                                      pY.L
 18276 ms  0xffb SSL_ImportFD()
 18276 ms  0xffb ret:0x7faa2cf59820
 18276 ms  0xffb SSL_AuthCertificateHook()
 18276 ms  0xffb fd:0x7faa2cf59820
 18277 ms  0xffb ret:0x0
 18277 ms  0xffb PR_Connect()
 18277 ms  0xffb fd:0x7faa2cf59820
 18282 ms  0xffb SSL_ImportFD()
 18282 ms  0xffb ret:0x7faa2ba4f0d0
 18282 ms  0xffb SSL_AuthCertificateHook()
 18282 ms  0xffb fd:0x7faa2ba4f0d0
 18282 ms  0xffb ret:0x0
 18282 ms  0xffb PR_Connect()
 18282 ms  0xffb fd:0x7faa2ba4f0d0
 18286 ms  0xffb SSL_ImportFD()
 18286 ms  0xffb ret:0x7faa2ba4f070
 18286 ms  0xffb SSL_AuthCertificateHook()
 18286 ms  0xffb fd:0x7faa2ba4f070
 18286 ms  0xffb ret:0x0
 18286 ms  0xffb PR_Connect()
 18286 ms  0xffb fd:0x7faa2ba4f070
 18287 ms  0xffb SSL_ImportFD()
 18287 ms  0xffb ret:0x7faa2ba4f760
 18287 ms  0xffb SSL_AuthCertificateHook()
 18287 ms  0xffb fd:0x7faa2ba4f760
 18287 ms  0xffb ret:0x0
 18287 ms  0xffb PR_Connect()
 18287 ms  0xffb fd:0x7faa2ba4f760
 18287 ms  0xffb SSL_ImportFD()
 18287 ms  0xffb ret:0x7faa2ba4fd90
 18287 ms  0xffb SSL_AuthCertificateHook()
 18287 ms  0xffb fd:0x7faa2ba4fd90
 18287 ms  0xffb ret:0x0
 18287 ms  0xffb PR_Connect()
 18287 ms  0xffb fd:0x7faa2ba4fd90
 18287 ms  0xffb SSL_ImportFD()
 18287 ms  0xffb ret:0x7faa2ba4f220
 18287 ms  0xffb SSL_AuthCertificateHook()
 18287 ms  0xffb fd:0x7faa2ba4f220
 18287 ms  0xffb ret:0x0
 18287 ms  0xffb PR_Connect()
 18287 ms  0xffb fd:0x7faa2ba4f220
 18288 ms  0xffb SSL_ImportFD()
 18288 ms  0xffb ret:0x7faa2ba4f340
 18288 ms  0xffb SSL_AuthCertificateHook()
 18288 ms  0xffb fd:0x7faa2ba4f340
 18288 ms  0xffb ret:0x0
 18288 ms  0xffb PR_Connect()
 18288 ms  0xffb fd:0x7faa2ba4f340
 18288 ms  0xffb PK11_Encrypt()
 18288 ms  0xffb symkey:0x7faa4128e080
 18288 ms  0xffb PK11_Encrypt()
 18288 ms  0xffb symkey:0x7faa4c6ea900
 18289 ms  SECKEY_ECParamsToKeySize()
 18289 ms  0xffb ret:0x100
 18289 ms  0xffb SECKEY_CreateECPrivateKey()
 18289 ms  0xffb cx:0x7faa4d26a988
 18290 ms     | 0xffb EC_ValidatePublicKey()
 18292 ms     | 0xffb ret:0x0
 18292 ms  0xffb ret:0x7faa2ba9b020::7faa2ba9b020  30 5d 04 4c                                      0].L
 18292 ms  0xffb PK11_PubDeriveWithKDF()
 18292 ms  0xffb seckey:0x7faa2ba9b020
 18292 ms     | 0xffb EC_ValidatePublicKey()
 18293 ms     | 0xffb ret:0x0
 18295 ms  0xffb ret:0x7faa4c0c5700
 18295 ms  0xffb PK11_DeriveWithFlags()
 18295 ms  0xffb basekey:0x7faa4c0c5700
 18295 ms     | 0xffb PK11_DeriveWithTemplate()
 18295 ms  0xffb ret:0x7faa4c0d4680
 18295 ms  0xffb PK11_Derive()
 18295 ms  0xffb basekey:0x7faa4c0d4680
 18295 ms     | 0xffb PK11_DeriveWithTemplate()
 18295 ms  0xffb ret:0x7faa4c6cae80
 18295 ms  0xffb SECKEY_DestroyPrivateKey()
 18295 ms  0xffb privk:0x7faa2ba9b020::7faa2ba9b020  30 5d 04 4c                                      0].L
 18295 ms  0xffb privk:0x7faa2ba9b020::7faa2ba9b020  e5 e5 e5 e5                                      ....
 18296 ms  0xffb PK11_Encrypt()
 18296 ms  0xffb symkey:0x7faa4c6ea780
           /* TID 0x1003 */
 18299 ms  0x1003 PR_Close()
 18299 ms  0x1003 fd:0x7faa2ba4ff10
 18300 ms  0x1003 PR_Close()
 18300 ms  0x1003 fd:0x7faa2ba4ff10
 18306 ms  0x1003 PR_Close()
 18306 ms  0x1003 fd:0x7faa4c2078b0
           /* TID 0xffb */
 18306 ms  0xffb SSL_AuthCertificateComplete()
 18306 ms  0xffb fd:0x7faa4877d730
 18306 ms  0xffb err:0x0
 18306 ms  0xffb PK11_Encrypt()
 18306 ms  0xffb symkey:0x7faa4c00ef80
           /* TID 0x1003 */
 18308 ms  0x1003 PR_Close()
 18308 ms  0x1003 fd:0x7faa2ba4fee0
           /* TID 0xffb */
 18309 ms  0xffb SECKEY_DestroyPrivateKey()
 18309 ms  0xffb privk:0x7faa2cf17820::7faa2cf17820  a0 36 2b 48                                      .6+H
 18309 ms  0xffb privk:0x7faa2cf17820::7faa2cf17820  e5 e5 e5 e5                                      ....
 18309 ms  0xffb SECKEY_DestroyPrivateKey()
 18309 ms  0xffb privk:0x7faa2cf1a020::7faa2cf1a020  b0 3a fc 46                                      .:.F
 18309 ms  0xffb privk:0x7faa2cf1a020::7faa2cf1a020  e5 e5 e5 e5                                      ....
 18310 ms  0xffb PR_Connect()
 18310 ms  0xffb fd:0x7faa2ba4ff10
 18311 ms  0xffb SSL_ImportFD()
 18311 ms  0xffb ret:0x7faa2cf59130
 18311 ms  0xffb SSL_AuthCertificateHook()
 18311 ms  0xffb fd:0x7faa2cf59130
 18311 ms  0xffb ret:0x0
 18311 ms  0xffb PR_Connect()
 18311 ms  0xffb fd:0x7faa2cf59130
 18311 ms  0xffb SSL_ImportFD()
 18311 ms  0xffb ret:0x7faa2cf59a00
 18311 ms  0xffb SSL_AuthCertificateHook()
 18311 ms  0xffb fd:0x7faa2cf59a00
 18311 ms  0xffb ret:0x0
 18312 ms  0xffb PR_Connect()
 18312 ms  0xffb fd:0x7faa2cf59a00
 18340 ms  0xffb SECKEY_DestroyPrivateKey()
 18340 ms  0xffb privk:0x7faa434aa020::7faa434aa020  00 a1 2b 48                                      ..+H
 18340 ms  0xffb privk:0x7faa434aa020::7faa434aa020  e5 e5 e5 e5                                      ....
 18340 ms  0xffb SECKEY_DestroyPrivateKey()
 18340 ms  0xffb privk:0x7faa434a8020::7faa434a8020  70 3e 2b 48                                      p>+H
 18340 ms  0xffb privk:0x7faa434a8020::7faa434a8020  e5 e5 e5 e5                                      ....
 18351 ms  0xffb SECKEY_CreateECPrivateKey()
 18351 ms  0xffb cx:0x7faa2cff1fc8
 18352 ms     | 0xffb EC_ValidatePublicKey()
 18352 ms     | 0xffb ret:0x0
 18352 ms  0xffb ret:0x7faa2be55820::7faa2be55820  c0 e9 fa 46                                      ...F
 18352 ms  0xffb SECKEY_CreateECPrivateKey()
 18352 ms  0xffb cx:0x7faa2cff1fc8
 18352 ms     | 0xffb EC_ValidatePublicKey()
 18354 ms     | 0xffb ret:0x0
 18354 ms  0xffb ret:0x7faa2be61820::7faa2be61820  c0 44 05 47                                      .D.G
 18356 ms  SECKEY_ECParamsToKeySize()
 18356 ms  0xffb ret:0xff
 18356 ms  0xffb SECKEY_CreateECPrivateKey()
 18356 ms  0xffb cx:0x7faa4d26a168
 18356 ms     | 0xffb EC_ValidatePublicKey()
 18356 ms     | 0xffb ret:0x0
 18356 ms  0xffb ret:0x7faa2be6a020::7faa2be6a020  10 3f 2b 48                                      .?+H
 18357 ms  0xffb PK11_PubDeriveWithKDF()
 18357 ms  0xffb seckey:0x7faa2be6a020
 18357 ms     | 0xffb EC_ValidatePublicKey()
 18357 ms     | 0xffb ret:0x0
 18357 ms  0xffb ret:0x7faa4c0c5700
 18357 ms  0xffb PK11_DeriveWithFlags()
 18357 ms  0xffb basekey:0x7faa4c0c5700
 18357 ms     | 0xffb PK11_DeriveWithTemplate()
 18357 ms  0xffb ret:0x7faa4c0d3700
 18357 ms  0xffb PK11_Derive()
 18357 ms  0xffb basekey:0x7faa4c0d3700
 18357 ms     | 0xffb PK11_DeriveWithTemplate()
 18357 ms  0xffb ret:0x7faa4c6e9800
 18357 ms  0xffb SECKEY_DestroyPrivateKey()
 18357 ms  0xffb privk:0x7faa2be6a020::7faa2be6a020  10 3f 2b 48                                      .?+H
 18357 ms  0xffb privk:0x7faa2be6a020::7faa2be6a020  e5 e5 e5 e5                                      ....
 18358 ms  0xffb PK11_Encrypt()
 18358 ms  0xffb symkey:0x7faa4c6ede00
 18358 ms  0xffb SSL_AuthCertificateComplete()
 18358 ms  0xffb fd:0x7faa4c2d9850
 18358 ms  0xffb err:0x0
 18359 ms  0xffb PK11_Encrypt()
 18359 ms  0xffb symkey:0x7faa4c6ede00
 18359 ms  0xffb SECKEY_CreateECPrivateKey()
 18359 ms  0xffb cx:0x7faa2b9460a8
 18360 ms     | 0xffb EC_ValidatePublicKey()
 18360 ms     | 0xffb ret:0x0
 18360 ms  0xffb ret:0x7faa2cf14820::7faa2cf14820  10 3f 2b 48                                      .?+H
 18360 ms  0xffb SECKEY_CreateECPrivateKey()
 18360 ms  0xffb cx:0x7faa2b9460a8
 18360 ms     | 0xffb EC_ValidatePublicKey()
 18362 ms     | 0xffb ret:0x0
 18362 ms  0xffb ret:0x7faa2cf19020::7faa2cf19020  00 ab 2b 48                                      ..+H
 18362 ms  0xffb SECKEY_CreateECPrivateKey()
 18362 ms  0xffb cx:0x7faa4d26a7e8
 18363 ms     | 0xffb EC_ValidatePublicKey()
 18363 ms     | 0xffb ret:0x0
 18363 ms  0xffb ret:0x7faa434a7020::7faa434a7020  e0 5c 04 4c                                      .\.L
 18363 ms  0xffb SECKEY_CreateECPrivateKey()
 18363 ms  0xffb cx:0x7faa4d26a7e8
 18364 ms     | 0xffb EC_ValidatePublicKey()
 18365 ms     | 0xffb ret:0x0
 18365 ms  0xffb ret:0x7faa434a9020::7faa434a9020  c0 5e 04 4c                                      .^.L
 18366 ms  0xffb PK11_Encrypt()
 18366 ms  0xffb symkey:0x7faa4c20e300
 18367 ms  SECKEY_ECParamsToKeySize()
 18367 ms  0xffb ret:0xff
 18367 ms  0xffb SECKEY_CreateECPrivateKey()
 18367 ms  0xffb cx:0x7faa2cfef3e8
 18367 ms     | 0xffb EC_ValidatePublicKey()
 18367 ms     | 0xffb ret:0x0
 18367 ms  0xffb ret:0x7faa2b98a820::7faa2b98a820  50 d1 04 4c                                      P..L
 18368 ms  0xffb PK11_PubDeriveWithKDF()
 18368 ms  0xffb seckey:0x7faa2b98a820
 18368 ms     | 0xffb EC_ValidatePublicKey()
 18368 ms     | 0xffb ret:0x0
 18368 ms  0xffb ret:0x7faa4c0c5700
 18368 ms  0xffb PK11_DeriveWithFlags()
 18368 ms  0xffb basekey:0x7faa4c0c5700
 18368 ms     | 0xffb PK11_DeriveWithTemplate()
 18368 ms  0xffb ret:0x7faa4ce02100
 18368 ms  0xffb PK11_Derive()
 18368 ms  0xffb basekey:0x7faa4ce02100
 18368 ms     | 0xffb PK11_DeriveWithTemplate()
 18369 ms  0xffb ret:0x7faa4ce02180
 18369 ms  0xffb SECKEY_DestroyPrivateKey()
 18369 ms  0xffb privk:0x7faa2b98a820::7faa2b98a820  50 d1 04 4c                                      P..L
 18369 ms  0xffb privk:0x7faa2b98a820::7faa2b98a820  e5 e5 e5 e5                                      ....
 18369 ms  0xffb PK11_Encrypt()
 18369 ms  0xffb symkey:0x7faa4ce02f00
 18370 ms  SECKEY_ECParamsToKeySize()
 18370 ms  0xffb ret:0xff
 18370 ms  0xffb SECKEY_CreateECPrivateKey()
 18370 ms  0xffb cx:0x7faa2cfef248
 18371 ms     | 0xffb EC_ValidatePublicKey()
 18371 ms     | 0xffb ret:0x0
 18371 ms  0xffb ret:0x7faa2b9b9020::7faa2b9b9020  f0 d1 04 4c                                      ...L
 18371 ms  0xffb PK11_PubDeriveWithKDF()
 18371 ms  0xffb seckey:0x7faa2b9b9020
 18371 ms     | 0xffb EC_ValidatePublicKey()
 18371 ms     | 0xffb ret:0x0
 18371 ms  0xffb ret:0x7faa4c0c5700
 18371 ms  0xffb PK11_DeriveWithFlags()
 18371 ms  0xffb basekey:0x7faa4c0c5700
 18371 ms     | 0xffb PK11_DeriveWithTemplate()
 18371 ms  0xffb ret:0x7faa4ce03000
 18371 ms  0xffb PK11_Derive()
 18371 ms  0xffb basekey:0x7faa4ce03000
 18371 ms     | 0xffb PK11_DeriveWithTemplate()
 18372 ms  0xffb ret:0x7faa4ce03080
 18372 ms  0xffb SECKEY_DestroyPrivateKey()
 18372 ms  0xffb privk:0x7faa2b9b9020::7faa2b9b9020  f0 d1 04 4c                                      ...L
 18372 ms  0xffb privk:0x7faa2b9b9020::7faa2b9b9020  e5 e5 e5 e5                                      ....
 18372 ms  0xffb PK11_Encrypt()
 18372 ms  0xffb symkey:0x7faa4ce03280
 18373 ms  0xffb SSL_ImportFD()
 18373 ms  0xffb ret:0x7faa4bfe7d90
 18373 ms  0xffb SSL_AuthCertificateHook()
 18373 ms  0xffb fd:0x7faa4bfe7d90
 18373 ms  0xffb ret:0x0
 18374 ms  0xffb PK11_Encrypt()
 18374 ms  0xffb symkey:0x7faa3dd86080
 18374 ms  0xffb PR_Connect()
 18374 ms  0xffb fd:0x7faa4bfe7d90
 18374 ms  0xffb SSL_AuthCertificateComplete()
 18374 ms  0xffb fd:0x7faa4c2d9f70
 18374 ms  0xffb err:0x0
 18374 ms  0xffb SSL_AuthCertificateComplete()
 18374 ms  0xffb fd:0x7faa4c62b6a0
 18374 ms  0xffb err:0x0
           /* TID 0x1003 */
 18379 ms  0x1003 PR_Close()
 18379 ms  0x1003 fd:0x7faa2cf59280
           /* TID 0xffb */
 18380 ms  0xffb PK11_Encrypt()
 18380 ms  0xffb symkey:0x7faa4ce02f00
 18380 ms  0xffb PK11_Encrypt()
 18380 ms  0xffb symkey:0x7faa4ce03280
 18380 ms  0xffb PK11_Encrypt()
 18380 ms  0xffb symkey:0x7faa4ce03280
 18380 ms  0xffb PR_Close()
 18380 ms  0xffb fd:0x7faa2ba4f0d0
 18380 ms  0xffb PR_Close()
 18380 ms  0xffb fd:0x7faa2ba4fd90
 18380 ms  0xffb PR_Close()
 18380 ms  0xffb fd:0x7faa2ba4f340
 18381 ms  0xffb PK11_Encrypt()
 18381 ms  0xffb symkey:0x7faa4ce03280
 18381 ms  0xffb PK11_Encrypt()
 18381 ms  0xffb symkey:0x7faa4c0d3f00
 18388 ms  0xffb PK11_Encrypt()
 18388 ms  0xffb symkey:0x7faa4c268480
 18388 ms  0xffb PK11_Encrypt()
 18388 ms  0xffb symkey:0x7faa4ce03280
 18391 ms  SECKEY_ECParamsToKeySize()
 18391 ms  0xffb ret:0xff
 18391 ms  0xffb SECKEY_CreateECPrivateKey()
 18391 ms  0xffb cx:0x7faa2cfef588
 18392 ms     | 0xffb EC_ValidatePublicKey()
 18392 ms     | 0xffb ret:0x0
 18392 ms  0xffb ret:0x7faa2b9c0820::7faa2b9c0820  e0 d2 04 4c                                      ...L
 18392 ms  0xffb PK11_PubDeriveWithKDF()
 18392 ms  0xffb seckey:0x7faa2b9c0820
 18392 ms     | 0xffb EC_ValidatePublicKey()
 18392 ms     | 0xffb ret:0x0
 18392 ms  0xffb ret:0x7faa4c0c5700
 18392 ms  0xffb PK11_DeriveWithFlags()
 18392 ms  0xffb basekey:0x7faa4c0c5700
 18392 ms     | 0xffb PK11_DeriveWithTemplate()
 18393 ms  0xffb ret:0x7faa4cea1b00
 18393 ms  0xffb PK11_Derive()
 18393 ms  0xffb basekey:0x7faa4cea1b00
 18393 ms     | 0xffb PK11_DeriveWithTemplate()
 18393 ms  0xffb ret:0x7faa4cea1b80
 18393 ms  0xffb SECKEY_DestroyPrivateKey()
 18393 ms  0xffb privk:0x7faa2b9c0820::7faa2b9c0820  e0 d2 04 4c                                      ...L
 18393 ms  0xffb privk:0x7faa2b9c0820::7faa2b9c0820  e5 e5 e5 e5                                      ....
 18393 ms  0xffb PK11_Encrypt()
 18393 ms  0xffb symkey:0x7faa4cea1d00
 18398 ms  SECKEY_ECParamsToKeySize()
 18398 ms  0xffb ret:0xff
 18398 ms  0xffb SECKEY_CreateECPrivateKey()
 18398 ms  0xffb cx:0x7faa4d26a648
 18398 ms     | 0xffb EC_ValidatePublicKey()
 18399 ms     | 0xffb ret:0x0
 18399 ms  0xffb ret:0x7faa2b9c1020::7faa2b9c1020  80 d3 04 4c                                      ...L
 18399 ms  0xffb PK11_PubDeriveWithKDF()
 18399 ms  0xffb seckey:0x7faa2b9c1020
 18399 ms     | 0xffb EC_ValidatePublicKey()
 18399 ms     | 0xffb ret:0x0
 18399 ms  0xffb ret:0x7faa4c0c5700
 18399 ms  0xffb PK11_DeriveWithFlags()
 18399 ms  0xffb basekey:0x7faa4c0c5700
 18399 ms     | 0xffb PK11_DeriveWithTemplate()
 18399 ms  0xffb ret:0x7faa4cea1e00
 18399 ms  0xffb PK11_Derive()
 18399 ms  0xffb basekey:0x7faa4cea1e00
 18399 ms     | 0xffb PK11_DeriveWithTemplate()
 18399 ms  0xffb ret:0x7faa4cea1e80
 18399 ms  0xffb SECKEY_DestroyPrivateKey()
 18399 ms  0xffb privk:0x7faa2b9c1020::7faa2b9c1020  80 d3 04 4c                                      ...L
 18399 ms  0xffb privk:0x7faa2b9c1020::7faa2b9c1020  e5 e5 e5 e5                                      ....
 18399 ms  0xffb PK11_Encrypt()
 18399 ms  0xffb symkey:0x7faa4cec5180
 18402 ms  SECKEY_ECParamsToKeySize()
 18402 ms  0xffb ret:0xff
 18402 ms  0xffb SECKEY_CreateECPrivateKey()
 18402 ms  0xffb cx:0x7faa2cfefda8
 18402 ms     | 0xffb EC_ValidatePublicKey()
 18402 ms     | 0xffb ret:0x0
 18402 ms  0xffb ret:0x7faa2b9c2020::7faa2b9c2020  20 d4 04 4c                                       ..L
 18402 ms  0xffb PK11_PubDeriveWithKDF()
 18402 ms  0xffb seckey:0x7faa2b9c2020
 18402 ms     | 0xffb EC_ValidatePublicKey()
 18402 ms     | 0xffb ret:0x0
 18403 ms  0xffb ret:0x7faa4c0c5700
 18403 ms  0xffb PK11_DeriveWithFlags()
 18403 ms  0xffb basekey:0x7faa4c0c5700
 18403 ms     | 0xffb PK11_DeriveWithTemplate()
 18403 ms  0xffb ret:0x7faa4cec5280
 18403 ms  0xffb PK11_Derive()
 18403 ms  0xffb basekey:0x7faa4cec5280
 18403 ms     | 0xffb PK11_DeriveWithTemplate()
 18403 ms  0xffb ret:0x7faa4cec5380
 18403 ms  0xffb SECKEY_DestroyPrivateKey()
 18403 ms  0xffb privk:0x7faa2b9c2020::7faa2b9c2020  20 d4 04 4c                                       ..L
 18403 ms  0xffb privk:0x7faa2b9c2020::7faa2b9c2020  e5 e5 e5 e5                                      ....
 18403 ms  0xffb PK11_Encrypt()
 18403 ms  0xffb symkey:0x7faa4cec5600
 18405 ms  0xffb SSL_AuthCertificateComplete()
 18405 ms  0xffb fd:0x7faa4ce06dc0
 18405 ms  0xffb err:0x0
 18405 ms  0xffb SSL_AuthCertificateComplete()
 18405 ms  0xffb fd:0x7faa4c2d9c10
 18405 ms  0xffb err:0x0
 18405 ms  0xffb SSL_AuthCertificateComplete()
 18405 ms  0xffb fd:0x7faa4ce06970
 18405 ms  0xffb err:0x0
 18406 ms  0xffb PK11_Encrypt()
 18406 ms  0xffb symkey:0x7faa4cea1d00
           /* TID 0x1003 */
 18408 ms  0x1003 PR_Close()
 18408 ms  0x1003 fd:0x7faa2ba4fd90
           /* TID 0xffb */
 18408 ms  0xffb PK11_Encrypt()
 18408 ms  0xffb symkey:0x7faa4cec5180
 18408 ms  0xffb PK11_Encrypt()
 18408 ms  0xffb symkey:0x7faa4cec5600
 18410 ms  SECKEY_ECParamsToKeySize()
 18410 ms  0xffb ret:0xff
 18410 ms  0xffb SECKEY_CreateECPrivateKey()
 18410 ms  0xffb cx:0x7faa2cfefa68
 18411 ms     | 0xffb EC_ValidatePublicKey()
 18411 ms     | 0xffb ret:0x0
 18411 ms  0xffb ret:0x7faa2b9c6020::7faa2b9c6020  20 d4 04 4c                                       ..L
 18411 ms  0xffb PK11_PubDeriveWithKDF()
 18411 ms  0xffb seckey:0x7faa2b9c6020
 18411 ms     | 0xffb EC_ValidatePublicKey()
 18411 ms     | 0xffb ret:0x0
 18411 ms  0xffb ret:0x7faa4c0c5700
 18411 ms  0xffb PK11_DeriveWithFlags()
 18411 ms  0xffb basekey:0x7faa4c0c5700
 18411 ms     | 0xffb PK11_DeriveWithTemplate()
 18411 ms  0xffb ret:0x7faa4c6ecd80
 18411 ms  0xffb PK11_Derive()
 18411 ms  0xffb basekey:0x7faa4c6ecd80
 18411 ms     | 0xffb PK11_DeriveWithTemplate()
 18411 ms  0xffb ret:0x7faa4cec5c80
 18411 ms  0xffb SECKEY_DestroyPrivateKey()
 18411 ms  0xffb privk:0x7faa2b9c6020::7faa2b9c6020  20 d4 04 4c                                       ..L
 18411 ms  0xffb privk:0x7faa2b9c6020::7faa2b9c6020  e5 e5 e5 e5                                      ....
 18412 ms  0xffb PK11_Encrypt()
 18412 ms  0xffb symkey:0x7faa4cec5e00
 18414 ms  0xffb PK11_Encrypt()
 18414 ms  0xffb symkey:0x7faa4c0d3f00
 18414 ms  0xffb PK11_Encrypt()
 18414 ms  0xffb symkey:0x7faa4c20e300
 18415 ms  0xffb PK11_Encrypt()
 18415 ms  0xffb symkey:0x7faa4c0d4380
 18415 ms  0xffb SSL_AuthCertificateComplete()
 18415 ms  0xffb fd:0x7faa4ceb9100
 18415 ms  0xffb err:0x0
 18415 ms  0xffb PK11_Encrypt()
 18415 ms  0xffb symkey:0x7faa4cec5e00
 18417 ms  SECKEY_ECParamsToKeySize()
 18417 ms  0xffb ret:0xff
 18417 ms  0xffb SECKEY_CreateECPrivateKey()
 18417 ms  0xffb cx:0x7faa2cfef8c8
 18417 ms     | 0xffb EC_ValidatePublicKey()
 18417 ms     | 0xffb ret:0x0
 18417 ms  0xffb ret:0x7faa2b9c9820::7faa2b9c9820  10 d5 04 4c                                      ...L
 18417 ms  0xffb PK11_PubDeriveWithKDF()
 18417 ms  0xffb seckey:0x7faa2b9c9820
 18417 ms     | 0xffb EC_ValidatePublicKey()
 18417 ms     | 0xffb ret:0x0
 18418 ms  0xffb ret:0x7faa4c0c5700
 18418 ms  0xffb PK11_DeriveWithFlags()
 18418 ms  0xffb basekey:0x7faa4c0c5700
 18418 ms     | 0xffb PK11_DeriveWithTemplate()
 18418 ms  0xffb ret:0x7faa4cec5f00
 18418 ms  0xffb PK11_Derive()
 18418 ms  0xffb basekey:0x7faa4cec5f00
 18418 ms     | 0xffb PK11_DeriveWithTemplate()
 18418 ms  0xffb ret:0x7faa4cec5f80
 18418 ms  0xffb SECKEY_DestroyPrivateKey()
 18418 ms  0xffb privk:0x7faa2b9c9820::7faa2b9c9820  10 d5 04 4c                                      ...L
 18418 ms  0xffb privk:0x7faa2b9c9820::7faa2b9c9820  e5 e5 e5 e5                                      ....
 18418 ms  0xffb PK11_Encrypt()
 18418 ms  0xffb symkey:0x7faa4cec6100
 18419 ms  SECKEY_ECParamsToKeySize()
 18419 ms  0xffb ret:0x100
 18419 ms  0xffb SECKEY_CreateECPrivateKey()
 18419 ms  0xffb cx:0x7faa2b9460a8
 18420 ms     | 0xffb EC_ValidatePublicKey()
 18422 ms     | 0xffb ret:0x0
 18422 ms  0xffb ret:0x7faa2b9ca820::7faa2b9ca820  50 d6 04 4c                                      P..L
 18422 ms  0xffb PK11_PubDeriveWithKDF()
 18422 ms  0xffb seckey:0x7faa2b9ca820
 18422 ms     | 0xffb EC_ValidatePublicKey()
 18423 ms     | 0xffb ret:0x0
 18425 ms  0xffb ret:0x7faa4c0c5700
 18425 ms  0xffb PK11_DeriveWithFlags()
 18425 ms  0xffb basekey:0x7faa4c0c5700
 18425 ms     | 0xffb PK11_DeriveWithTemplate()
 18425 ms  0xffb ret:0x7faa4cec6300
 18425 ms  0xffb PK11_Derive()
 18425 ms  0xffb basekey:0x7faa4cec6300
 18425 ms     | 0xffb PK11_DeriveWithTemplate()
 18425 ms  0xffb ret:0x7faa4cec6400
 18425 ms  0xffb SECKEY_DestroyPrivateKey()
 18425 ms  0xffb privk:0x7faa2b9ca820::7faa2b9ca820  50 d6 04 4c                                      P..L
 18425 ms  0xffb privk:0x7faa2b9ca820::7faa2b9ca820  e5 e5 e5 e5                                      ....
 18426 ms  0xffb PK11_Encrypt()
 18426 ms  0xffb symkey:0x7faa4cec6600
 18427 ms  SECKEY_ECParamsToKeySize()
 18427 ms  0xffb ret:0x100
 18427 ms  0xffb SECKEY_CreateECPrivateKey()
 18427 ms  0xffb cx:0x7faa4d26a7e8
 18427 ms     | 0xffb EC_ValidatePublicKey()
 18429 ms     | 0xffb ret:0x0
 18429 ms  0xffb ret:0x7faa2b9cb820::7faa2b9cb820  f0 d6 04 4c                                      ...L
 18429 ms  0xffb PK11_PubDeriveWithKDF()
 18429 ms  0xffb seckey:0x7faa2b9cb820
 18429 ms     | 0xffb EC_ValidatePublicKey()
 18430 ms     | 0xffb ret:0x0
 18432 ms  0xffb ret:0x7faa4c0c5700
 18432 ms  0xffb PK11_DeriveWithFlags()
 18432 ms  0xffb basekey:0x7faa4c0c5700
 18432 ms     | 0xffb PK11_DeriveWithTemplate()
 18432 ms  0xffb ret:0x7faa4cec6880
 18432 ms  0xffb PK11_Derive()
 18432 ms  0xffb basekey:0x7faa4cec6880
 18432 ms     | 0xffb PK11_DeriveWithTemplate()
 18432 ms  0xffb ret:0x7faa4cec6900
 18432 ms  0xffb SECKEY_DestroyPrivateKey()
 18432 ms  0xffb privk:0x7faa2b9cb820::7faa2b9cb820  f0 d6 04 4c                                      ...L
 18432 ms  0xffb privk:0x7faa2b9cb820::7faa2b9cb820  e5 e5 e5 e5                                      ....
 18432 ms  0xffb PK11_Encrypt()
 18432 ms  0xffb symkey:0x7faa4cec6f80
 18433 ms  0xffb SSL_AuthCertificateComplete()
 18433 ms  0xffb fd:0x7faa4ce07040
 18433 ms  0xffb err:0x0
 18433 ms  0xffb SSL_AuthCertificateComplete()
 18433 ms  0xffb fd:0x7faa2cf59a00
 18433 ms  0xffb err:0x0
 18433 ms  0xffb SSL_AuthCertificateComplete()
 18433 ms  0xffb fd:0x7faa2cf59130
 18433 ms  0xffb err:0x0
           /* TID 0x1003 */
 18435 ms  0x1003 PR_Close()
 18435 ms  0x1003 fd:0x7faa2cf59340
           /* TID 0xffb */
 18436 ms  0xffb PK11_Encrypt()
 18436 ms  0xffb symkey:0x7faa4cec6100
 18436 ms  0xffb PK11_Encrypt()
 18436 ms  0xffb symkey:0x7faa4cec6600
 18436 ms  0xffb PK11_Encrypt()
 18436 ms  0xffb symkey:0x7faa4cec6f80
 18437 ms  0xffb PK11_Encrypt()
 18437 ms  0xffb symkey:0x7faa4c268480
 18437 ms  0xffb SECKEY_CreateECPrivateKey()
 18437 ms  0xffb cx:0x7faa2b946c08
 18438 ms     | 0xffb EC_ValidatePublicKey()
 18438 ms     | 0xffb ret:0x0
 18438 ms  0xffb ret:0x7faa2b9cd020::7faa2b9cd020  b0 d5 04 4c                                      ...L
 18438 ms  0xffb SECKEY_CreateECPrivateKey()
 18438 ms  0xffb cx:0x7faa2b946c08
 18438 ms     | 0xffb EC_ValidatePublicKey()
 18440 ms     | 0xffb ret:0x0
 18440 ms  0xffb ret:0x7faa2b9cf020::7faa2b9cf020  90 d7 04 4c                                      ...L
 18448 ms  SECKEY_ECParamsToKeySize()
 18448 ms  0xffb ret:0xff
 18448 ms  0xffb SECKEY_CreateECPrivateKey()
 18448 ms  0xffb cx:0x7faa2cfef728
 18448 ms     | 0xffb EC_ValidatePublicKey()
 18448 ms     | 0xffb ret:0x0
 18448 ms  0xffb ret:0x7faa2b9d2820::7faa2b9d2820  c0 d9 04 4c                                      ...L
 18448 ms  0xffb PK11_PubDeriveWithKDF()
 18448 ms  0xffb seckey:0x7faa2b9d2820
 18448 ms     | 0xffb EC_ValidatePublicKey()
 18448 ms     | 0xffb ret:0x0
 18449 ms  0xffb ret:0x7faa4c0c5700
 18449 ms  0xffb PK11_DeriveWithFlags()
 18449 ms  0xffb basekey:0x7faa4c0c5700
 18449 ms     | 0xffb PK11_DeriveWithTemplate()
 18449 ms  0xffb ret:0x7faa4c0c2300
 18449 ms  0xffb PK11_Derive()
 18449 ms  0xffb basekey:0x7faa4c0c2300
 18449 ms     | 0xffb PK11_DeriveWithTemplate()
 18449 ms  0xffb ret:0x7faa4d261d80
 18449 ms  0xffb SECKEY_DestroyPrivateKey()
 18449 ms  0xffb privk:0x7faa2b9d2820::7faa2b9d2820  c0 d9 04 4c                                      ...L
 18449 ms  0xffb privk:0x7faa2b9d2820::7faa2b9d2820  e5 e5 e5 e5                                      ....
 18449 ms  0xffb PK11_Encrypt()
 18449 ms  0xffb symkey:0x7faa4d288600
 18449 ms  0xffb SSL_AuthCertificateComplete()
 18449 ms  0xffb fd:0x7faa4c2d9f40
 18449 ms  0xffb err:0x0
 18450 ms  0xffb PK11_Encrypt()
 18450 ms  0xffb symkey:0x7faa4d288600
 18450 ms  0xffb PK11_Encrypt()
 18450 ms  0xffb symkey:0x7faa4c20e300
 18452 ms  SECKEY_ECParamsToKeySize()
 18452 ms  0xffb ret:0xff
 18452 ms  0xffb SECKEY_CreateECPrivateKey()
 18452 ms  0xffb cx:0x7faa2cfefc08
 18452 ms     | 0xffb EC_ValidatePublicKey()
 18452 ms     | 0xffb ret:0x0
 18452 ms  0xffb ret:0x7faa2b9d5020::7faa2b9d5020  60 da 04 4c                                      `..L
 18452 ms  0xffb PK11_PubDeriveWithKDF()
 18452 ms  0xffb seckey:0x7faa2b9d5020
 18452 ms     | 0xffb EC_ValidatePublicKey()
 18452 ms     | 0xffb ret:0x0
 18453 ms  0xffb ret:0x7faa4c0c5700
 18453 ms  0xffb PK11_DeriveWithFlags()
 18453 ms  0xffb basekey:0x7faa4c0c5700
 18453 ms     | 0xffb PK11_DeriveWithTemplate()
 18453 ms  0xffb ret:0x7faa4d288a80
 18453 ms  0xffb PK11_Derive()
 18453 ms  0xffb basekey:0x7faa4d288a80
 18453 ms     | 0xffb PK11_DeriveWithTemplate()
 18453 ms  0xffb ret:0x7faa4d288b00
 18453 ms  0xffb SECKEY_DestroyPrivateKey()
 18453 ms  0xffb privk:0x7faa2b9d5020::7faa2b9d5020  60 da 04 4c                                      `..L
 18453 ms  0xffb privk:0x7faa2b9d5020::7faa2b9d5020  e5 e5 e5 e5                                      ....
 18453 ms  0xffb PK11_Encrypt()
 18453 ms  0xffb symkey:0x7faa4d289a80
 18454 ms  0xffb SSL_AuthCertificateComplete()
 18454 ms  0xffb fd:0x7faa4ce068e0
 18454 ms  0xffb err:0x0
 18454 ms  0xffb PK11_Encrypt()
 18454 ms  0xffb symkey:0x7faa4d289a80
 18468 ms  0xffb SECKEY_DestroyPrivateKey()
 18468 ms  0xffb privk:0x7faa2cf19020::7faa2cf19020  00 ab 2b 48                                      ..+H
 18468 ms  0xffb privk:0x7faa2cf19020::7faa2cf19020  e5 e5 e5 e5                                      ....
 18468 ms  0xffb SECKEY_DestroyPrivateKey()
 18468 ms  0xffb privk:0x7faa2cf14820::7faa2cf14820  10 3f 2b 48                                      .?+H
 18468 ms  0xffb privk:0x7faa2cf14820::7faa2cf14820  e5 e5 e5 e5                                      ....
 18471 ms  0xffb SECKEY_DestroyPrivateKey()
 18471 ms  0xffb privk:0x7faa48a0c820::7faa48a0c820  a0 41 4a 48                                      .AJH
 18471 ms  0xffb privk:0x7faa48a0c820::7faa48a0c820  e5 e5 e5 e5                                      ....
 18471 ms  0xffb SECKEY_DestroyPrivateKey()
 18471 ms  0xffb privk:0x7faa434a3020::7faa434a3020  a0 a6 2b 48                                      ..+H
 18472 ms  0xffb privk:0x7faa434a3020::7faa434a3020  e5 e5 e5 e5                                      ....
 18472 ms  0xffb PK11_Encrypt()
 18472 ms  0xffb symkey:0x7faa4c0d3f00
 18474 ms  0xffb SECKEY_DestroyPrivateKey()
 18474 ms  0xffb privk:0x7faa434a9020::7faa434a9020  c0 5e 04 4c                                      .^.L
 18474 ms  0xffb privk:0x7faa434a9020::7faa434a9020  e5 e5 e5 e5                                      ....
 18474 ms  0xffb SECKEY_DestroyPrivateKey()
 18474 ms  0xffb privk:0x7faa434a7020::7faa434a7020  e0 5c 04 4c                                      .\.L
 18475 ms  0xffb privk:0x7faa434a7020::7faa434a7020  e5 e5 e5 e5                                      ....
 18475 ms  0xffb SECKEY_DestroyPrivateKey()
 18475 ms  0xffb privk:0x7faa48b6d820::7faa48b6d820  60 05 6a 4b                                      `.jK
 18475 ms  0xffb privk:0x7faa48b6d820::7faa48b6d820  e5 e5 e5 e5                                      ....
 18475 ms  0xffb SECKEY_DestroyPrivateKey()
 18475 ms  0xffb privk:0x7faa48b6b020::7faa48b6b020  d0 4d 4a 48                                      .MJH
 18475 ms  0xffb privk:0x7faa48b6b020::7faa48b6b020  e5 e5 e5 e5                                      ....
 18475 ms  0xffb PK11_Encrypt()
 18475 ms  0xffb symkey:0x7faa4c0d4380
 18484 ms  SECKEY_ECParamsToKeySize()
 18484 ms  0xffb ret:0xff
 18484 ms  0xffb SECKEY_CreateECPrivateKey()
 18484 ms  0xffb cx:0x7faa2b946c08
 18485 ms     | 0xffb EC_ValidatePublicKey()
 18485 ms     | 0xffb ret:0x0
 18485 ms  0xffb ret:0x7faa2b9d6820::7faa2b9d6820  10 3f 2b 48                                      .?+H
 18485 ms  0xffb PK11_PubDeriveWithKDF()
 18485 ms  0xffb seckey:0x7faa2b9d6820
 18485 ms     | 0xffb EC_ValidatePublicKey()
 18485 ms     | 0xffb ret:0x0
 18486 ms  0xffb ret:0x7faa4c0c5700
 18486 ms  0xffb PK11_DeriveWithFlags()
 18486 ms  0xffb basekey:0x7faa4c0c5700
 18486 ms     | 0xffb PK11_DeriveWithTemplate()
 18486 ms  0xffb ret:0x7faa4d289c00
 18486 ms  0xffb PK11_Derive()
 18486 ms  0xffb basekey:0x7faa4d289c00
 18486 ms     | 0xffb PK11_DeriveWithTemplate()
 18486 ms  0xffb ret:0x7faa4d289c80
 18486 ms  0xffb SECKEY_DestroyPrivateKey()
 18486 ms  0xffb privk:0x7faa2b9d6820::7faa2b9d6820  10 3f 2b 48                                      .?+H
 18486 ms  0xffb privk:0x7faa2b9d6820::7faa2b9d6820  e5 e5 e5 e5                                      ....
 18486 ms  0xffb PK11_Encrypt()
 18486 ms  0xffb symkey:0x7faa4d289e00
 18486 ms  0xffb SSL_AuthCertificateComplete()
 18486 ms  0xffb fd:0x7faa4bfe7d90
 18486 ms  0xffb err:0x0
 18487 ms  0xffb PK11_Encrypt()
 18487 ms  0xffb symkey:0x7faa4d289e00
 18488 ms  0xffb PK11_Encrypt()
 18488 ms  0xffb symkey:0x7faa4c0d3f00
 18488 ms  0xffb PK11_Encrypt()
 18488 ms  0xffb symkey:0x7faa4c0d3f00
 18489 ms  0xffb PK11_Encrypt()
 18489 ms  0xffb symkey:0x7faa4c0d3f00
 18503 ms  0xffb SECKEY_DestroyPrivateKey()
 18503 ms  0xffb privk:0x7faa48b76020::7faa48b76020  b0 0a 6a 4b                                      ..jK
 18503 ms  0xffb privk:0x7faa48b76020::7faa48b76020  e5 e5 e5 e5                                      ....
 18504 ms  0xffb SECKEY_DestroyPrivateKey()
 18504 ms  0xffb privk:0x7faa48b72020::7faa48b72020  d0 08 6a 4b                                      ..jK
 18504 ms  0xffb privk:0x7faa48b72020::7faa48b72020  e5 e5 e5 e5                                      ....
 18504 ms  0xffb PK11_Encrypt()
 18504 ms  0xffb symkey:0x7faa4c20e300
           /* TID 0x1003 */
 18511 ms  0x1003 PR_Close()
 18511 ms  0x1003 fd:0x7faa2ba4f250
 18516 ms  0x1003 PR_Close()
 18516 ms  0x1003 fd:0x7faa2ba4f250
           /* TID 0xffb */
 18517 ms  0xffb SECKEY_DestroyPrivateKey()
 18517 ms  0xffb privk:0x7faa48291820::7faa48291820  40 ac 2b 48                                      @.+H
 18517 ms  0xffb privk:0x7faa48291820::7faa48291820  e5 e5 e5 e5                                      ....
 18518 ms  0xffb SECKEY_DestroyPrivateKey()
 18518 ms  0xffb privk:0x7faa480ea020::7faa480ea020  90 02 6a 4b                                      ..jK
 18518 ms  0xffb privk:0x7faa480ea020::7faa480ea020  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
 18519 ms  0x1003 PR_Close()
 18519 ms  0x1003 fd:0x7faa2ba4f130
           /* TID 0xffb */
 18523 ms  0xffb SECKEY_DestroyPrivateKey()
 18523 ms  0xffb privk:0x7faa4479c820::7faa4479c820  90 d7 d0 48                                      ...H
 18523 ms  0xffb privk:0x7faa4479c820::7faa4479c820  e5 e5 e5 e5                                      ....
 18523 ms  0xffb SECKEY_DestroyPrivateKey()
 18523 ms  0xffb privk:0x7faa4349c820::7faa4349c820  20 a9 1c 48                                       ..H
 18523 ms  0xffb privk:0x7faa4349c820::7faa4349c820  e5 e5 e5 e5                                      ....
 18528 ms  0xffb SECKEY_DestroyPrivateKey()
 18528 ms  0xffb privk:0x7faa2b9cf020::7faa2b9cf020  90 d7 04 4c                                      ...L
 18528 ms  0xffb privk:0x7faa2b9cf020::7faa2b9cf020  e5 e5 e5 e5                                      ....
 18528 ms  0xffb SECKEY_DestroyPrivateKey()
 18528 ms  0xffb privk:0x7faa2b9cd020::7faa2b9cd020  b0 d5 04 4c                                      ...L
 18528 ms  0xffb privk:0x7faa2b9cd020::7faa2b9cd020  e5 e5 e5 e5                                      ....
 18528 ms  0xffb PR_Close()
 18528 ms  0xffb fd:0x7faa4bfe7d90
 18528 ms     | 0xffb PK11_Encrypt()
 18528 ms     | 0xffb symkey:0x7faa4d289e00
 18529 ms  0xffb SECKEY_DestroyPrivateKey()
 18529 ms  0xffb privk:0x7faa48b7b020::7faa48b7b020  f0 0b 6a 4b                                      ..jK
 18529 ms  0xffb privk:0x7faa48b7b020::7faa48b7b020  e5 e5 e5 e5                                      ....
 18529 ms  0xffb SECKEY_DestroyPrivateKey()
 18529 ms  0xffb privk:0x7faa48b79020::7faa48b79020  a0 a1 2b 48                                      ..+H
 18529 ms  0xffb privk:0x7faa48b79020::7faa48b79020  e5 e5 e5 e5                                      ....
 18529 ms  0xffb PR_Close()
 18529 ms  0xffb fd:0x7faa4bfe7af0
 18529 ms     | 0xffb PK11_Encrypt()
 18529 ms     | 0xffb symkey:0x7faa4c267d00
 18530 ms  0xffb SECKEY_DestroyPrivateKey()
 18530 ms  0xffb privk:0x7faa49084020::7faa49084020  f0 61 f0 4b                                      .a.K
 18530 ms  0xffb privk:0x7faa49084020::7faa49084020  e5 e5 e5 e5                                      ....
 18531 ms  0xffb SECKEY_DestroyPrivateKey()
 18531 ms  0xffb privk:0x7faa48b81020::7faa48b81020  70 0e 6a 4b                                      p.jK
 18531 ms  0xffb privk:0x7faa48b81020::7faa48b81020  e5 e5 e5 e5                                      ....
 18531 ms  0xffb PR_Close()
 18531 ms  0xffb fd:0x7faa4bfe78b0
 18531 ms     | 0xffb PK11_Encrypt()
 18531 ms     | 0xffb symkey:0x7faa4c268000
 18535 ms  SECKEY_ECParamsToKeySize()
 18535 ms  0xffb ret:0xff
 18535 ms  0xffb SECKEY_CreateECPrivateKey()
 18535 ms  0xffb cx:0x7faa2cff12c8
 18535 ms     | 0xffb EC_ValidatePublicKey()
 18535 ms     | 0xffb ret:0x0
 18535 ms  0xffb ret:0x7faa2b9ce020::7faa2b9ce020  10 fa 08 48                                      ...H
 18536 ms  0xffb PK11_PubDeriveWithKDF()
 18536 ms  0xffb seckey:0x7faa2b9ce020
 18536 ms     | 0xffb EC_ValidatePublicKey()
 18536 ms     | 0xffb ret:0x0
 18536 ms  0xffb ret:0x7faa4c267e80
 18536 ms  0xffb PK11_DeriveWithFlags()
 18536 ms  0xffb basekey:0x7faa4c267e80
 18536 ms     | 0xffb PK11_DeriveWithTemplate()
 18536 ms  0xffb ret:0x7faa4c267e00
 18536 ms  0xffb PK11_Derive()
 18536 ms  0xffb basekey:0x7faa4c267e00
 18536 ms     | 0xffb PK11_DeriveWithTemplate()
 18536 ms  0xffb ret:0x7faa4c267900
 18536 ms  0xffb SECKEY_DestroyPrivateKey()
 18536 ms  0xffb privk:0x7faa2b9ce020::7faa2b9ce020  10 fa 08 48                                      ...H
 18536 ms  0xffb privk:0x7faa2b9ce020::7faa2b9ce020  e5 e5 e5 e5                                      ....
 18536 ms  0xffb PK11_Encrypt()
 18536 ms  0xffb symkey:0x7faa4c267f00
 18537 ms  0xffb SSL_AuthCertificateComplete()
 18537 ms  0xffb fd:0x7faa4dcc9490
 18537 ms  0xffb err:0x0
 18537 ms  0xffb SECKEY_DestroyPrivateKey()
 18537 ms  0xffb privk:0x7faa2be52820::7faa2be52820  00 66 f0 4b                                      .f.K
 18537 ms  0xffb privk:0x7faa2be52820::7faa2be52820  e5 e5 e5 e5                                      ....
 18537 ms  0xffb SECKEY_DestroyPrivateKey()
 18537 ms  0xffb privk:0x7faa4dc1f020::7faa4dc1f020  20 64 f0 4b                                       d.K
 18537 ms  0xffb privk:0x7faa4dc1f020::7faa4dc1f020  e5 e5 e5 e5                                      ....
 18537 ms  0xffb PK11_Encrypt()
 18537 ms  0xffb symkey:0x7faa4c268480
 18538 ms  0xffb PK11_Encrypt()
 18538 ms  0xffb symkey:0x7faa4c267f00
 18538 ms  0xffb PK11_Encrypt()
 18538 ms  0xffb symkey:0x7faa4c0d3f00
 18539 ms  0xffb SSL_ImportFD()
 18539 ms  0xffb ret:0x7faa2ba4f880
 18539 ms  0xffb SSL_AuthCertificateHook()
 18539 ms  0xffb fd:0x7faa2ba4f880
 18539 ms  0xffb ret:0x0
 18539 ms  0xffb PR_Connect()
 18539 ms  0xffb fd:0x7faa2ba4f880
 18539 ms  0xffb SSL_ImportFD()
 18539 ms  0xffb ret:0x7faa2cf59220
 18539 ms  0xffb SSL_AuthCertificateHook()
 18539 ms  0xffb fd:0x7faa2cf59220
 18539 ms  0xffb ret:0x0
 18539 ms  0xffb PR_Connect()
 18539 ms  0xffb fd:0x7faa2cf59220
 18539 ms  0xffb SSL_ImportFD()
 18540 ms  0xffb ret:0x7faa2cf59ac0
 18540 ms  0xffb SSL_AuthCertificateHook()
 18540 ms  0xffb fd:0x7faa2cf59ac0
 18540 ms  0xffb ret:0x0
 18540 ms  0xffb PR_Connect()
 18540 ms  0xffb fd:0x7faa2cf59ac0
           /* TID 0x1003 */
 18561 ms  0x1003 PR_Close()
 18561 ms  0x1003 fd:0x7faa2ba4f520
           /* TID 0xffb */
 18564 ms  SECKEY_ECParamsToKeySize()
 18564 ms  0xffb ret:0xff
 18564 ms  0xffb SECKEY_CreateECPrivateKey()
 18564 ms  0xffb cx:0x7faa2cff1468
 18565 ms     | 0xffb EC_ValidatePublicKey()
 18565 ms     | 0xffb ret:0x0
 18565 ms  0xffb ret:0x7faa2ba7f020::7faa2ba7f020  f0 41 19 48                                      .A.H
 18565 ms  0xffb PK11_PubDeriveWithKDF()
 18565 ms  0xffb seckey:0x7faa2ba7f020
 18565 ms     | 0xffb EC_ValidatePublicKey()
 18565 ms     | 0xffb ret:0x0
 18565 ms  0xffb ret:0x7faa4c267e80
 18565 ms  0xffb PK11_DeriveWithFlags()
 18565 ms  0xffb basekey:0x7faa4c267e80
 18565 ms     | 0xffb PK11_DeriveWithTemplate()
 18565 ms  0xffb ret:0x7faa4c267800
 18565 ms  0xffb PK11_Derive()
 18565 ms  0xffb basekey:0x7faa4c267800
 18565 ms     | 0xffb PK11_DeriveWithTemplate()
 18565 ms  0xffb ret:0x7faa4d289c80
 18565 ms  0xffb SECKEY_DestroyPrivateKey()
 18565 ms  0xffb privk:0x7faa2ba7f020::7faa2ba7f020  f0 41 19 48                                      .A.H
 18566 ms  0xffb privk:0x7faa2ba7f020::7faa2ba7f020  e5 e5 e5 e5                                      ....
 18566 ms  0xffb PK11_Encrypt()
 18566 ms  0xffb symkey:0x7faa4c267980
 18566 ms  0xffb SSL_AuthCertificateComplete()
 18566 ms  0xffb fd:0x7faa4ed3b970
 18566 ms  0xffb err:0x0
 18567 ms  0xffb PK11_Encrypt()
 18567 ms  0xffb symkey:0x7faa4c267980
 18567 ms  0xffb PK11_Encrypt()
 18567 ms  0xffb symkey:0x7faa4ce03280
 18568 ms  0xffb SECKEY_CreateECPrivateKey()
 18568 ms  0xffb cx:0x7faa2cff0c48
 18568 ms     | 0xffb EC_ValidatePublicKey()
 18568 ms     | 0xffb ret:0x0
 18568 ms  0xffb ret:0x7faa2ba82820::7faa2ba82820  f0 41 19 48                                      .A.H
 18568 ms  0xffb SECKEY_CreateECPrivateKey()
 18568 ms  0xffb cx:0x7faa2cff0c48
 18569 ms     | 0xffb EC_ValidatePublicKey()
 18571 ms     | 0xffb ret:0x0
 18571 ms  0xffb ret:0x7faa2ba88020::7faa2ba88020  70 a9 1c 48                                      p..H
 18573 ms  0xffb SECKEY_CreateECPrivateKey()
 18573 ms  0xffb cx:0x7faa2cff1608
 18574 ms     | 0xffb EC_ValidatePublicKey()
 18574 ms     | 0xffb ret:0x0
 18574 ms  0xffb ret:0x7faa2be51820::7faa2be51820  60 3f 2b 48                                      `?+H
 18574 ms  0xffb SECKEY_CreateECPrivateKey()
 18574 ms  0xffb cx:0x7faa2cff1608
 18574 ms     | 0xffb EC_ValidatePublicKey()
 18576 ms     | 0xffb ret:0x0
 18576 ms  0xffb ret:0x7faa2be6a020::7faa2be6a020  10 aa 2b 48                                      ..+H
 18581 ms  0xffb SECKEY_CreateECPrivateKey()
 18581 ms  0xffb cx:0x7faa2cff1e28
 18581 ms     | 0xffb EC_ValidatePublicKey()
 18581 ms     | 0xffb ret:0x0
 18581 ms  0xffb ret:0x7faa2bece820::7faa2bece820  40 ac 2b 48                                      @.+H
 18581 ms  0xffb SECKEY_CreateECPrivateKey()
 18581 ms  0xffb cx:0x7faa2cff1e28
 18582 ms     | 0xffb EC_ValidatePublicKey()
 18584 ms     | 0xffb ret:0x0
 18584 ms  0xffb ret:0x7faa2cf06020::7faa2cf06020  c0 ae 2b 48                                      ..+H
 18585 ms  0xffb SECKEY_CreateECPrivateKey()
 18585 ms  0xffb cx:0x7faa2cff17a8
 18585 ms     | 0xffb EC_ValidatePublicKey()
 18585 ms     | 0xffb ret:0x0
 18585 ms  0xffb ret:0x7faa2cf19020::7faa2cf19020  10 45 4a 48                                      .EJH
 18586 ms  0xffb SECKEY_CreateECPrivateKey()
 18586 ms  0xffb cx:0x7faa2cff17a8
 18586 ms     | 0xffb EC_ValidatePublicKey()
 18588 ms     | 0xffb ret:0x0
 18588 ms  0xffb ret:0x7faa2cf1c020::7faa2cf1c020  a0 d6 d0 48                                      ...H
           /* TID 0x1003 */
 18596 ms  0x1003 PR_Close()
 18596 ms  0x1003 fd:0x7faa4c258400
 18598 ms  0x1003 PR_Close()
 18598 ms  0x1003 fd:0x7faa4c258520
           /* TID 0xffb */
 18598 ms  0xffb PK11_Encrypt()
 18598 ms  0xffb symkey:0x7faa4c0e5780
           /* TID 0x1003 */
 18599 ms  0x1003 PR_Close()
 18599 ms  0x1003 fd:0x7faa2ba4f280
           /* TID 0xffb */
 18612 ms  0xffb SECKEY_DestroyPrivateKey()
 18612 ms  0xffb privk:0x7faa2be5b820::7faa2be5b820  f0 a6 2b 48                                      ..+H
 18612 ms  0xffb privk:0x7faa2be5b820::7faa2be5b820  e5 e5 e5 e5                                      ....
 18612 ms  0xffb SECKEY_DestroyPrivateKey()
 18612 ms  0xffb privk:0x7faa2be59820::7faa2be59820  80 d3 b3 47                                      ...G
 18612 ms  0xffb privk:0x7faa2be59820::7faa2be59820  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
 18615 ms  0x1003 PR_Close()
 18615 ms  0x1003 fd:0x7faa2ba4ff40
           /* TID 0xffb */
 18619 ms  0xffb SSL_ImportFD()
 18619 ms  0xffb ret:0x7faa4c2584c0
 18619 ms  0xffb SSL_AuthCertificateHook()
 18619 ms  0xffb fd:0x7faa4c2584c0
 18619 ms  0xffb ret:0x0
 18619 ms  0xffb PR_Connect()
 18619 ms  0xffb fd:0x7faa4c2584c0
 18619 ms  0xffb SSL_ImportFD()
 18619 ms  0xffb ret:0x7faa4c2583d0
 18619 ms  0xffb SSL_AuthCertificateHook()
 18619 ms  0xffb fd:0x7faa4c2583d0
 18619 ms  0xffb ret:0x0
 18619 ms  0xffb PR_Connect()
 18619 ms  0xffb fd:0x7faa4c2583d0
 18634 ms  0xffb SECKEY_DestroyPrivateKey()
 18634 ms  0xffb privk:0x7faa2be69020::7faa2be69020  40 6c f0 4b                                      @l.K
 18634 ms  0xffb privk:0x7faa2be69020::7faa2be69020  e5 e5 e5 e5                                      ....
 18634 ms  0xffb SECKEY_DestroyPrivateKey()
 18634 ms  0xffb privk:0x7faa2be67020::7faa2be67020  60 6a f0 4b                                      `j.K
 18634 ms  0xffb privk:0x7faa2be67020::7faa2be67020  e5 e5 e5 e5                                      ....
 18634 ms  0xffb PR_Close()
 18634 ms  0xffb fd:0x7faa4c2d9850
 18634 ms     | 0xffb PK11_Encrypt()
 18634 ms     | 0xffb symkey:0x7faa4c6ede00
 18642 ms  0xffb SECKEY_DestroyPrivateKey()
 18642 ms  0xffb privk:0x7faa2cf15820::7faa2cf15820  40 42 f8 4b                                      @B.K
 18642 ms  0xffb privk:0x7faa2cf15820::7faa2cf15820  e5 e5 e5 e5                                      ....
 18642 ms  0xffb SECKEY_DestroyPrivateKey()
 18642 ms  0xffb privk:0x7faa2be70020::7faa2be70020  60 40 f8 4b                                      `@.K
 18642 ms  0xffb privk:0x7faa2be70020::7faa2be70020  e5 e5 e5 e5                                      ....
 18642 ms  0xffb PR_Close()
 18642 ms  0xffb fd:0x7faa4c2d9f70
 18642 ms     | 0xffb PK11_Encrypt()
 18642 ms     | 0xffb symkey:0x7faa4ce02f00
 18645 ms  0xffb SECKEY_DestroyPrivateKey()
 18645 ms  0xffb privk:0x7faa2be6d820::7faa2be6d820  c0 6e f0 4b                                      .n.K
 18645 ms  0xffb privk:0x7faa2be6d820::7faa2be6d820  e5 e5 e5 e5                                      ....
 18645 ms  0xffb SECKEY_DestroyPrivateKey()
 18645 ms  0xffb privk:0x7faa2be6b820::7faa2be6b820  90 6c f0 4b                                      .l.K
 18645 ms  0xffb privk:0x7faa2be6b820::7faa2be6b820  e5 e5 e5 e5                                      ....
 18645 ms  0xffb PK11_Encrypt()
 18645 ms  0xffb symkey:0x7faa4ce03280
 18652 ms  SECKEY_ECParamsToKeySize()
 18652 ms  0xffb ret:0xff
 18652 ms  0xffb SECKEY_CreateECPrivateKey()
 18652 ms  0xffb cx:0x7faa2cff1fc8
 18653 ms     | 0xffb EC_ValidatePublicKey()
 18653 ms     | 0xffb ret:0x0
 18653 ms  0xffb ret:0x7faa2be59020::7faa2be59020  d0 ad 29 48                                      ..)H
 18653 ms  0xffb PK11_PubDeriveWithKDF()
 18653 ms  0xffb seckey:0x7faa2be59020
 18653 ms     | 0xffb EC_ValidatePublicKey()
 18653 ms     | 0xffb ret:0x0
 18654 ms  0xffb ret:0x7faa4ce02180
 18654 ms  0xffb PK11_DeriveWithFlags()
 18654 ms  0xffb basekey:0x7faa4ce02180
 18654 ms     | 0xffb PK11_DeriveWithTemplate()
 18654 ms  0xffb ret:0x7faa4ce02100
 18654 ms  0xffb PK11_Derive()
 18654 ms  0xffb basekey:0x7faa4ce02100
 18654 ms     | 0xffb PK11_DeriveWithTemplate()
 18654 ms  0xffb ret:0x7faa4c6e9800
 18654 ms  0xffb SECKEY_DestroyPrivateKey()
 18654 ms  0xffb privk:0x7faa2be59020::7faa2be59020  d0 ad 29 48                                      ..)H
 18654 ms  0xffb privk:0x7faa2be59020::7faa2be59020  e5 e5 e5 e5                                      ....
 18654 ms  0xffb PK11_Encrypt()
 18654 ms  0xffb symkey:0x7faa4ce02280
 18654 ms  0xffb SSL_AuthCertificateComplete()
 18654 ms  0xffb fd:0x7faa2cf59b80
 18654 ms  0xffb err:0x0
 18655 ms  0xffb PK11_Encrypt()
 18655 ms  0xffb symkey:0x7faa4ce02280
 18655 ms  0xffb PK11_Encrypt()
 18655 ms  0xffb symkey:0x7faa4ce03280
 18675 ms  0xffb SSL_AuthCertificateComplete()
 18675 ms  0xffb fd:0x7faa48a41cd0
 18675 ms  0xffb err:0x0
 18675 ms  0xffb SECKEY_DestroyPrivateKey()
 18675 ms  0xffb privk:0x7faa2beba820::7faa2beba820  f0 4b f8 4b                                      .K.K
 18676 ms  0xffb privk:0x7faa2beba820::7faa2beba820  e5 e5 e5 e5                                      ....
 18676 ms  0xffb SECKEY_DestroyPrivateKey()
 18676 ms  0xffb privk:0x7faa4dc0f820::7faa4dc0f820  10 4a f8 4b                                      .J.K
 18676 ms  0xffb privk:0x7faa4dc0f820::7faa4dc0f820  e5 e5 e5 e5                                      ....
 18676 ms  0xffb PR_Close()
 18676 ms  0xffb fd:0x7faa4ce06dc0
 18676 ms     | 0xffb PK11_Encrypt()
 18676 ms     | 0xffb symkey:0x7faa4cea1d00
 18676 ms  SECKEY_ECParamsToKeySize()
 18676 ms  0xffb ret:0x100
 18676 ms  0xffb SECKEY_CreateECPrivateKey()
 18676 ms  0xffb cx:0x7faa4d26ae68
 18677 ms     | 0xffb EC_ValidatePublicKey()
 18678 ms     | 0xffb ret:0x0
 18678 ms  0xffb ret:0x7faa2be59820::7faa2be59820  f0 a1 2b 48                                      ..+H
 18678 ms  0xffb PK11_PubDeriveWithKDF()
 18678 ms  0xffb seckey:0x7faa2be59820
 18678 ms     | 0xffb EC_ValidatePublicKey()
 18680 ms     | 0xffb ret:0x0
 18681 ms  0xffb ret:0x7faa4cea1b80
 18681 ms  0xffb PK11_DeriveWithFlags()
 18681 ms  0xffb basekey:0x7faa4cea1b80
 18681 ms     | 0xffb PK11_DeriveWithTemplate()
 18681 ms  0xffb ret:0x7faa4cea1b00
 18681 ms  0xffb PK11_Derive()
 18681 ms  0xffb basekey:0x7faa4cea1b00
 18681 ms     | 0xffb PK11_DeriveWithTemplate()
 18681 ms  0xffb ret:0x7faa4ce02180
 18681 ms  0xffb SECKEY_DestroyPrivateKey()
 18681 ms  0xffb privk:0x7faa2be59820::7faa2be59820  f0 a1 2b 48                                      ..+H
 18682 ms  0xffb privk:0x7faa2be59820::7faa2be59820  e5 e5 e5 e5                                      ....
 18682 ms  0xffb PK11_Encrypt()
 18682 ms  0xffb symkey:0x7faa4cea1c00
 18683 ms  0xffb SECKEY_DestroyPrivateKey()
 18683 ms  0xffb privk:0x7faa2bebf020::7faa2bebf020  10 4f f8 4b                                      .O.K
 18683 ms  0xffb privk:0x7faa2bebf020::7faa2bebf020  e5 e5 e5 e5                                      ....
 18683 ms  0xffb SECKEY_DestroyPrivateKey()
 18683 ms  0xffb privk:0x7faa2bebd020::7faa2bebd020  30 4d f8 4b                                      0M.K
 18683 ms  0xffb privk:0x7faa2bebd020::7faa2bebd020  e5 e5 e5 e5                                      ....
 18683 ms  0xffb PR_Close()
 18683 ms  0xffb fd:0x7faa4ce06970
 18683 ms     | 0xffb PK11_Encrypt()
 18683 ms     | 0xffb symkey:0x7faa4cec5600
 18692 ms  0xffb SECKEY_DestroyPrivateKey()
 18692 ms  0xffb privk:0x7faa2bec3820::7faa2bec3820  90 a2 02 4c                                      ...L
 18692 ms  0xffb privk:0x7faa2bec3820::7faa2bec3820  e5 e5 e5 e5                                      ....
 18692 ms  0xffb SECKEY_DestroyPrivateKey()
 18692 ms  0xffb privk:0x7faa2bec1820::7faa2bec1820  b0 a0 02 4c                                      ...L
 18692 ms  0xffb privk:0x7faa2bec1820::7faa2bec1820  e5 e5 e5 e5                                      ....
 18692 ms  0xffb PR_Close()
 18692 ms  0xffb fd:0x7faa4ceb9100
 18692 ms     | 0xffb PK11_Encrypt()
 18692 ms     | 0xffb symkey:0x7faa4cec5e00
 18693 ms  0xffb SECKEY_DestroyPrivateKey()
 18693 ms  0xffb privk:0x7faa4bf64020::7faa4bf64020  d0 48 f8 4b                                      .H.K
 18693 ms  0xffb privk:0x7faa4bf64020::7faa4bf64020  e5 e5 e5 e5                                      ....
 18693 ms  0xffb SECKEY_DestroyPrivateKey()
 18693 ms  0xffb privk:0x7faa480e7020::7faa480e7020  a0 46 f8 4b                                      .F.K
 18693 ms  0xffb privk:0x7faa480e7020::7faa480e7020  e5 e5 e5 e5                                      ....
 18693 ms  0xffb PR_Close()
 18693 ms  0xffb fd:0x7faa4c2d9c10
 18693 ms     | 0xffb PK11_Encrypt()
 18693 ms     | 0xffb symkey:0x7faa4cec5180
           /* TID 0x1003 */
 18702 ms  0x1003 PR_Close()
 18702 ms  0x1003 fd:0x7faa2ba4fd60
           /* TID 0xffb */
 18702 ms  0xffb SECKEY_DestroyPrivateKey()
 18702 ms  0xffb privk:0x7faa2bec8020::7faa2bec8020  00 a6 02 4c                                      ...L
 18703 ms  0xffb privk:0x7faa2bec8020::7faa2bec8020  e5 e5 e5 e5                                      ....
 18703 ms  0xffb SECKEY_DestroyPrivateKey()
 18703 ms  0xffb privk:0x7faa2bec6020::7faa2bec6020  d0 a3 02 4c                                      ...L
 18703 ms  0xffb privk:0x7faa2bec6020::7faa2bec6020  e5 e5 e5 e5                                      ....
 18703 ms  0xffb PR_Close()
 18703 ms  0xffb fd:0x7faa4ce07040
 18703 ms     | 0xffb PK11_Encrypt()
 18703 ms     | 0xffb symkey:0x7faa4cec6100
 18705 ms  0xffb PK11_Encrypt()
 18705 ms  0xffb symkey:0x7faa4ce03280
 18706 ms  0xffb PK11_Encrypt()
 18706 ms  0xffb symkey:0x7faa4c0d3f00
 18743 ms  0xffb SECKEY_DestroyPrivateKey()
 18743 ms  0xffb privk:0x7faa2becd820::7faa2becd820  60 a5 02 4c                                      `..L
 18743 ms  0xffb privk:0x7faa2becd820::7faa2becd820  e5 e5 e5 e5                                      ....
 18744 ms  0xffb SECKEY_DestroyPrivateKey()
 18744 ms  0xffb privk:0x7faa2becb820::7faa2becb820  10 af 2b 48                                      ..+H
 18744 ms  0xffb privk:0x7faa2becb820::7faa2becb820  e5 e5 e5 e5                                      ....
 18744 ms  0xffb PR_Close()
 18744 ms  0xffb fd:0x7faa4c2d9f40
 18744 ms     | 0xffb PK11_Encrypt()
 18744 ms     | 0xffb symkey:0x7faa4d288600
 18745 ms  0xffb SECKEY_DestroyPrivateKey()
 18745 ms  0xffb privk:0x7faa2bed4020::7faa2bed4020  60 aa 02 4c                                      `..L
 18745 ms  0xffb privk:0x7faa2bed4020::7faa2bed4020  e5 e5 e5 e5                                      ....
 18745 ms  0xffb SECKEY_DestroyPrivateKey()
 18745 ms  0xffb privk:0x7faa2bed0020::7faa2bed0020  40 a7 02 4c                                      @..L
 18745 ms  0xffb privk:0x7faa2bed0020::7faa2bed0020  e5 e5 e5 e5                                      ....
 18745 ms  0xffb PR_Close()
 18745 ms  0xffb fd:0x7faa4ce068e0
 18745 ms     | 0xffb PK11_Encrypt()
 18745 ms     | 0xffb symkey:0x7faa4d289a80
           /* TID 0x1003 */
 18758 ms  0x1003 PR_Close()
 18758 ms  0x1003 fd:0x7faa2cf59760
           /* TID 0xffb */
 18775 ms  0xffb PR_Close()
 18775 ms  0xffb fd:0x7faa4bfe79d0
 18775 ms     | 0xffb PK11_Encrypt()
 18775 ms     | 0xffb symkey:0x7faa4c6ece00
           /* TID 0x1003 */
 18777 ms  0x1003 PR_Close()
 18777 ms  0x1003 fd:0x7faa2cf597f0
 18799 ms  0x1003 PR_Close()
 18799 ms  0x1003 fd:0x7faa4808d820
           /* TID 0xffb */
 18810 ms  0xffb SECKEY_DestroyPrivateKey()
 18810 ms  0xffb privk:0x7faa2ba8e820::7faa2ba8e820  20 54 04 4c                                       T.L
 18810 ms  0xffb privk:0x7faa2ba8e820::7faa2ba8e820  e5 e5 e5 e5                                      ....
 18810 ms  0xffb SECKEY_DestroyPrivateKey()
 18810 ms  0xffb privk:0x7faa2ba8c820::7faa2ba8c820  90 7c 07 4b                                      .|.K
 18810 ms  0xffb privk:0x7faa2ba8c820::7faa2ba8c820  e5 e5 e5 e5                                      ....
 18810 ms  0xffb PR_Close()
 18810 ms  0xffb fd:0x7faa4dcc9490
 18810 ms     | 0xffb PK11_Encrypt()
 18810 ms     | 0xffb symkey:0x7faa4c267f00
           /* TID 0x1003 */
 18811 ms  0x1003 PR_Close()
 18811 ms  0x1003 fd:0x7faa2ba4f250
           /* TID 0xffb */
 18817 ms  0xffb PK11_Encrypt()
 18817 ms  0xffb symkey:0x7faa4c20e300
 18818 ms  0xffb PK11_Encrypt()
 18818 ms  0xffb symkey:0x7faa4c0d3f00
 18820 ms  0xffb PK11_Encrypt()
 18820 ms  0xffb symkey:0x7faa4ce03280
 18821 ms  0xffb PK11_Encrypt()
 18821 ms  0xffb symkey:0x7faa4ce03280
 18822 ms  0xffb SECKEY_CreateECPrivateKey()
 18822 ms  0xffb cx:0x7faa2b947c48
 18823 ms     | 0xffb EC_ValidatePublicKey()
 18823 ms     | 0xffb ret:0x0
 18823 ms  0xffb ret:0x7faa2b9cb820::7faa2b9cb820  90 d2 43 48                                      ..CH
 18823 ms  0xffb SECKEY_CreateECPrivateKey()
 18823 ms  0xffb cx:0x7faa2b947c48
 18823 ms     | 0xffb EC_ValidatePublicKey()
 18825 ms     | 0xffb ret:0x0
 18825 ms  0xffb ret:0x7faa2b9cf820::7faa2b9cf820  30 ed 77 48                                      0.wH
 18828 ms  0xffb SECKEY_CreateECPrivateKey()
 18828 ms  0xffb cx:0x7faa2b947de8
 18828 ms     | 0xffb EC_ValidatePublicKey()
 18828 ms     | 0xffb ret:0x0
 18828 ms  0xffb ret:0x7faa2b9d3020::7faa2b9d3020  40 7c 07 4b                                      @|.K
 18828 ms  0xffb SECKEY_CreateECPrivateKey()
 18828 ms  0xffb cx:0x7faa2b947de8
 18829 ms     | 0xffb EC_ValidatePublicKey()
 18831 ms     | 0xffb ret:0x0
 18831 ms  0xffb ret:0x7faa2ba8b020::7faa2ba8b020  60 00 6a 4b                                      `.jK
 18834 ms  0xffb SECKEY_CreateECPrivateKey()
 18834 ms  0xffb cx:0x7faa2b947aa8
 18834 ms     | 0xffb EC_ValidatePublicKey()
 18835 ms     | 0xffb ret:0x0
 18835 ms  0xffb ret:0x7faa2ba8d820::7faa2ba8d820  40 02 6a 4b                                      @.jK
 18835 ms  0xffb SECKEY_CreateECPrivateKey()
 18835 ms  0xffb cx:0x7faa2b947aa8
 18835 ms     | 0xffb EC_ValidatePublicKey()
 18837 ms     | 0xffb ret:0x0
 18837 ms  0xffb ret:0x7faa2be53020::7faa2be53020  70 04 6a 4b                                      p.jK
           /* TID 0x1003 */
 18847 ms  0x1003 PR_Close()
 18847 ms  0x1003 fd:0x7faa2cf594c0
           /* TID 0xffb */
 18855 ms  0xffb SECKEY_DestroyPrivateKey()
 18855 ms  0xffb privk:0x7faa2ba97020::7faa2ba97020  70 59 04 4c                                      pY.L
 18855 ms  0xffb privk:0x7faa2ba97020::7faa2ba97020  e5 e5 e5 e5                                      ....
 18855 ms  0xffb SECKEY_DestroyPrivateKey()
 18855 ms  0xffb privk:0x7faa2ba95020::7faa2ba95020  90 57 04 4c                                      .W.L
 18855 ms  0xffb privk:0x7faa2ba95020::7faa2ba95020  e5 e5 e5 e5                                      ....
 18855 ms  0xffb PR_Close()
 18855 ms  0xffb fd:0x7faa4ed3b970
 18855 ms     | 0xffb PK11_Encrypt()
 18855 ms     | 0xffb symkey:0x7faa4c267980
 18862 ms  SECKEY_ECParamsToKeySize()
 18862 ms  0xffb ret:0xff
 18862 ms  0xffb SECKEY_CreateECPrivateKey()
 18862 ms  0xffb cx:0x7faa2cff1608
 18863 ms     | 0xffb EC_ValidatePublicKey()
 18863 ms     | 0xffb ret:0x0
 18863 ms  0xffb ret:0x7faa2ba94020::7faa2ba94020  d0 08 6a 4b                                      ..jK
 18864 ms  0xffb PK11_PubDeriveWithKDF()
 18864 ms  0xffb seckey:0x7faa2ba94020
 18864 ms     | 0xffb EC_ValidatePublicKey()
 18864 ms     | 0xffb ret:0x0
 18864 ms  0xffb ret:0x7faa4d289c80
 18864 ms  0xffb PK11_DeriveWithFlags()
 18864 ms  0xffb basekey:0x7faa4d289c80
 18864 ms     | 0xffb PK11_DeriveWithTemplate()
 18864 ms  0xffb ret:0x7faa4c267800
 18864 ms  0xffb PK11_Derive()
 18864 ms  0xffb basekey:0x7faa4c267800
 18864 ms     | 0xffb PK11_DeriveWithTemplate()
 18864 ms  0xffb ret:0x7faa4c267900
 18864 ms  0xffb SECKEY_DestroyPrivateKey()
 18864 ms  0xffb privk:0x7faa2ba94020::7faa2ba94020  d0 08 6a 4b                                      ..jK
 18864 ms  0xffb privk:0x7faa2ba94020::7faa2ba94020  e5 e5 e5 e5                                      ....
 18864 ms  0xffb PK11_Encrypt()
 18864 ms  0xffb symkey:0x7faa4c267c00
 18864 ms  0xffb SSL_AuthCertificateComplete()
 18864 ms  0xffb fd:0x7faa2ba4f070
 18864 ms  0xffb err:0x0
 18865 ms  SECKEY_ECParamsToKeySize()
 18865 ms  0xffb ret:0xff
 18865 ms  0xffb SECKEY_CreateECPrivateKey()
 18865 ms  0xffb cx:0x7faa2cff0c48
 18866 ms     | 0xffb EC_ValidatePublicKey()
 18866 ms     | 0xffb ret:0x0
 18866 ms  0xffb ret:0x7faa2ba94820::7faa2ba94820  70 09 6a 4b                                      p.jK
 18866 ms  0xffb PK11_PubDeriveWithKDF()
 18866 ms  0xffb seckey:0x7faa2ba94820
 18866 ms     | 0xffb EC_ValidatePublicKey()
 18866 ms     | 0xffb ret:0x0
 18866 ms  0xffb ret:0x7faa4d289c80
 18867 ms  0xffb PK11_DeriveWithFlags()
 18867 ms  0xffb basekey:0x7faa4d289c80
 18867 ms     | 0xffb PK11_DeriveWithTemplate()
 18867 ms  0xffb ret:0x7faa4c267e00
 18867 ms  0xffb PK11_Derive()
 18867 ms  0xffb basekey:0x7faa4c267e00
 18867 ms     | 0xffb PK11_DeriveWithTemplate()
 18867 ms  0xffb ret:0x7faa4c6bb300
 18867 ms  0xffb SECKEY_DestroyPrivateKey()
 18867 ms  0xffb privk:0x7faa2ba94820::7faa2ba94820  70 09 6a 4b                                      p.jK
 18867 ms  0xffb privk:0x7faa2ba94820::7faa2ba94820  e5 e5 e5 e5                                      ....
 18867 ms  0xffb PK11_Encrypt()
 18867 ms  0xffb symkey:0x7faa4c267f80
 18868 ms  0xffb PK11_Encrypt()
 18868 ms  0xffb symkey:0x7faa4c267c00
 18868 ms  0xffb SSL_AuthCertificateComplete()
 18868 ms  0xffb fd:0x7faa2cf59820
 18868 ms  0xffb err:0x0
 18868 ms  0xffb PK11_Encrypt()
 18868 ms  0xffb symkey:0x7faa4c267f80
 18869 ms  0xffb SSL_ImportFD()
 18869 ms  0xffb ret:0x7faa4c207760
 18869 ms  0xffb SSL_AuthCertificateHook()
 18869 ms  0xffb fd:0x7faa4c207760
 18870 ms  0xffb ret:0x0
 18870 ms  0xffb PR_Connect()
 18870 ms  0xffb fd:0x7faa4c207760
 18870 ms  0xffb SSL_ImportFD()
 18870 ms  0xffb ret:0x7faa4c207100
 18870 ms  0xffb SSL_AuthCertificateHook()
 18870 ms  0xffb fd:0x7faa4c207100
 18870 ms  0xffb ret:0x0
 18870 ms  0xffb PR_Connect()
 18870 ms  0xffb fd:0x7faa4c207100
 18881 ms  SECKEY_ECParamsToKeySize()
 18881 ms  0xffb ret:0xff
 18881 ms  0xffb SECKEY_CreateECPrivateKey()
 18881 ms  0xffb cx:0x7faa2cff1e28
 18881 ms     | 0xffb EC_ValidatePublicKey()
 18881 ms     | 0xffb ret:0x0
 18881 ms  0xffb ret:0x7faa2be54020::7faa2be54020  10 0a 6a 4b                                      ..jK
 18881 ms  0xffb PK11_PubDeriveWithKDF()
 18881 ms  0xffb seckey:0x7faa2be54020
 18881 ms     | 0xffb EC_ValidatePublicKey()
 18881 ms     | 0xffb ret:0x0
 18882 ms  0xffb ret:0x7faa4d289c80
 18882 ms  0xffb PK11_DeriveWithFlags()
 18882 ms  0xffb basekey:0x7faa4d289c80
 18882 ms     | 0xffb PK11_DeriveWithTemplate()
 18882 ms  0xffb ret:0x7faa4c6bae80
 18882 ms  0xffb PK11_Derive()
 18882 ms  0xffb basekey:0x7faa4c6bae80
 18882 ms     | 0xffb PK11_DeriveWithTemplate()
 18882 ms  0xffb ret:0x7faa4d288b00
 18882 ms  0xffb SECKEY_DestroyPrivateKey()
 18882 ms  0xffb privk:0x7faa2be54020::7faa2be54020  10 0a 6a 4b                                      ..jK
 18882 ms  0xffb privk:0x7faa2be54020::7faa2be54020  e5 e5 e5 e5                                      ....
 18882 ms  0xffb PK11_Encrypt()
 18882 ms  0xffb symkey:0x7faa4c6c9f80
 18882 ms  0xffb SSL_AuthCertificateComplete()
 18882 ms  0xffb fd:0x7faa2ba4f220
 18882 ms  0xffb err:0x0
 18882 ms  0xffb PK11_Encrypt()
 18882 ms  0xffb symkey:0x7faa4c6c9f80
 18888 ms  SECKEY_ECParamsToKeySize()
 18888 ms  0xffb ret:0xff
 18888 ms  0xffb SECKEY_CreateECPrivateKey()
 18888 ms  0xffb cx:0x7faa2cff17a8
 18889 ms     | 0xffb EC_ValidatePublicKey()
 18889 ms     | 0xffb ret:0x0
 18889 ms  0xffb ret:0x7faa2be5b820::7faa2be5b820  b0 0a 6a 4b                                      ..jK
 18889 ms  0xffb PK11_PubDeriveWithKDF()
 18889 ms  0xffb seckey:0x7faa2be5b820
 18889 ms     | 0xffb EC_ValidatePublicKey()
 18889 ms     | 0xffb ret:0x0
 18889 ms  0xffb ret:0x7faa4d289c80
 18889 ms  0xffb PK11_DeriveWithFlags()
 18889 ms  0xffb basekey:0x7faa4d289c80
 18889 ms     | 0xffb PK11_DeriveWithTemplate()
 18889 ms  0xffb ret:0x7faa4d288a80
 18889 ms  0xffb PK11_Derive()
 18889 ms  0xffb basekey:0x7faa4d288a80
 18889 ms     | 0xffb PK11_DeriveWithTemplate()
 18890 ms  0xffb ret:0x7faa4d261d80
 18890 ms  0xffb SECKEY_DestroyPrivateKey()
 18890 ms  0xffb privk:0x7faa2be5b820::7faa2be5b820  b0 0a 6a 4b                                      ..jK
 18890 ms  0xffb privk:0x7faa2be5b820::7faa2be5b820  e5 e5 e5 e5                                      ....
 18890 ms  0xffb PK11_Encrypt()
 18890 ms  0xffb symkey:0x7faa4d289700
 18890 ms  0xffb SSL_AuthCertificateComplete()
 18890 ms  0xffb fd:0x7faa2ba4f760
 18890 ms  0xffb err:0x0
 18890 ms  0xffb PK11_Encrypt()
 18890 ms  0xffb symkey:0x7faa4d289700
 18891 ms  0xffb SECKEY_CreateECPrivateKey()
 18891 ms  0xffb cx:0x7faa2b948948
 18891 ms     | 0xffb EC_ValidatePublicKey()
 18891 ms     | 0xffb ret:0x0
 18891 ms  0xffb ret:0x7faa2be62020::7faa2be62020  60 0a 6a 4b                                      `.jK
 18891 ms  0xffb SECKEY_CreateECPrivateKey()
 18891 ms  0xffb cx:0x7faa2b948948
 18892 ms     | 0xffb EC_ValidatePublicKey()
 18894 ms     | 0xffb ret:0x0
 18894 ms  0xffb ret:0x7faa2be64020::7faa2be64020  40 0c 6a 4b                                      @.jK
           /* TID 0x1003 */
 18904 ms  0x1003 PR_Close()
 18904 ms  0x1003 fd:0x7faa2ba4fca0
 18918 ms  0x1003 PR_Close()
 18918 ms  0x1003 fd:0x7faa4c2d9f10
           /* TID 0xffb */
 18918 ms  0xffb PR_Close()
 18918 ms  0xffb fd:0x7faa482c63d0
 18918 ms     | 0xffb PK11_Encrypt()
 18918 ms     | 0xffb symkey:0x7faa4c6e9480
 18936 ms  0xffb SECKEY_DestroyPrivateKey()
 18936 ms  0xffb privk:0x7faa3de4e020::7faa3de4e020  d0 3d 2b 48                                      .=+H
 18936 ms  0xffb privk:0x7faa3de4e020::7faa3de4e020  e5 e5 e5 e5                                      ....
 18936 ms  0xffb SECKEY_DestroyPrivateKey()
 18936 ms  0xffb privk:0x7faa2cf0d020::7faa2cf0d020  60 9f b1 47                                      `..G
 18936 ms  0xffb privk:0x7faa2cf0d020::7faa2cf0d020  e5 e5 e5 e5                                      ....
 18949 ms  0xffb SECKEY_DestroyPrivateKey()
 18949 ms  0xffb privk:0x7faa2be61820::7faa2be61820  c0 44 05 47                                      .D.G
 18950 ms  0xffb privk:0x7faa2be61820::7faa2be61820  e5 e5 e5 e5                                      ....
 18950 ms  0xffb SECKEY_DestroyPrivateKey()
 18950 ms  0xffb privk:0x7faa2be55820::7faa2be55820  c0 e9 fa 46                                      ...F
 18950 ms  0xffb privk:0x7faa2be55820::7faa2be55820  e5 e5 e5 e5                                      ....
 18950 ms  0xffb PR_Close()
 18950 ms  0xffb fd:0x7faa2cf59b80
 18950 ms     | 0xffb PK11_Encrypt()
 18950 ms     | 0xffb symkey:0x7faa4ce02280
 18959 ms  0xffb SECKEY_CreateECPrivateKey()
 18959 ms  0xffb cx:0x7faa2b948128
 18959 ms     | 0xffb EC_ValidatePublicKey()
 18959 ms     | 0xffb ret:0x0
 18959 ms  0xffb ret:0x7faa2ba9c020::7faa2ba9c020  b0 3a fc 46                                      .:.F
 18960 ms  0xffb SECKEY_CreateECPrivateKey()
 18960 ms  0xffb cx:0x7faa2b948128
 18961 ms     | 0xffb EC_ValidatePublicKey()
 18962 ms     | 0xffb ret:0x0
 18962 ms  0xffb ret:0x7faa2be56020::7faa2be56020  b0 80 06 47                                      ...G
 19095 ms  SECKEY_ECParamsToKeySize()
 19095 ms  0xffb ret:0x100
 19095 ms  0xffb SECKEY_CreateECPrivateKey()
 19095 ms  0xffb cx:0x7faa4afa9cc8
 19098 ms     | 0xffb EC_ValidatePublicKey()
 19101 ms     | 0xffb ret:0x0
 19107 ms  0xffb ret:0x7faa2cf0c020::7faa2cf0c020  c0 64 f0 4b                                      .d.K
 19107 ms  0xffb PK11_PubDeriveWithKDF()
 19107 ms  0xffb seckey:0x7faa2cf0c020
 19107 ms     | 0xffb EC_ValidatePublicKey()
 19110 ms     | 0xffb ret:0x0
 19112 ms  0xffb ret:0x7faa4c6e9800
 19112 ms  0xffb PK11_DeriveWithFlags()
 19112 ms  0xffb basekey:0x7faa4c6e9800
 19112 ms     | 0xffb PK11_DeriveWithTemplate()
 19112 ms  0xffb ret:0x7faa4ce02100
 19113 ms  0xffb PK11_Derive()
 19113 ms  0xffb basekey:0x7faa4ce02100
 19113 ms     | 0xffb PK11_DeriveWithTemplate()
 19113 ms  0xffb ret:0x7faa4c6e9280
 19113 ms  0xffb SECKEY_DestroyPrivateKey()
 19113 ms  0xffb privk:0x7faa2cf0c020::7faa2cf0c020  c0 64 f0 4b                                      .d.K
 19113 ms  0xffb privk:0x7faa2cf0c020::7faa2cf0c020  e5 e5 e5 e5                                      ....
 19113 ms  0xffb PK11_Encrypt()
 19113 ms  0xffb symkey:0x7faa4ce02e00
 19118 ms  0xffb SSL_AuthCertificateComplete()
 19118 ms  0xffb fd:0x7faa4c2d9220
 19118 ms  0xffb err:0x0
 19119 ms  0xffb PK11_Derive()
 19119 ms  0xffb basekey:0x7faa4c6e9200
 19119 ms     | 0xffb PK11_DeriveWithTemplate()
 19119 ms  0xffb ret:0x7faa4c6e9800
 19119 ms  0xffb PK11_Encrypt()
 19119 ms  0xffb symkey:0x7faa4c6e9300
 19123 ms  0xffb SECKEY_DestroyPrivateKey()
 19123 ms  0xffb privk:0x7faa2b9cf820::7faa2b9cf820  30 ed 77 48                                      0.wH
 19123 ms  0xffb privk:0x7faa2b9cf820::7faa2b9cf820  e5 e5 e5 e5                                      ....
 19123 ms  0xffb SECKEY_DestroyPrivateKey()
 19123 ms  0xffb privk:0x7faa2b9cb820::7faa2b9cb820  90 d2 43 48                                      ..CH
 19123 ms  0xffb privk:0x7faa2b9cb820::7faa2b9cb820  e5 e5 e5 e5                                      ....
 19123 ms  0xffb PK11_Derive()
 19123 ms  0xffb basekey:0x7faa4c0c2300
 19123 ms     | 0xffb PK11_DeriveWithTemplate()
 19123 ms  0xffb ret:0x7faa4d289c80
 19123 ms  0xffb PK11_Encrypt()
 19123 ms  0xffb symkey:0x7faa4d288100
 19125 ms  0xffb SECKEY_DestroyPrivateKey()
 19125 ms  0xffb privk:0x7faa2ba8b020::7faa2ba8b020  60 00 6a 4b                                      `.jK
 19126 ms  0xffb privk:0x7faa2ba8b020::7faa2ba8b020  e5 e5 e5 e5                                      ....
 19126 ms  0xffb SECKEY_DestroyPrivateKey()
 19126 ms  0xffb privk:0x7faa2b9d3020::7faa2b9d3020  40 7c 07 4b                                      @|.K
 19126 ms  0xffb privk:0x7faa2b9d3020::7faa2b9d3020  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
 19128 ms  0x1003 PR_Close()
 19128 ms  0x1003 fd:0x7faa47053520
           /* TID 0xffb */
 19130 ms  0xffb PK11_Encrypt()
 19130 ms  0xffb symkey:0x7faa4c6e9300
 19133 ms  0xffb PK11_Encrypt()
 19133 ms  0xffb symkey:0x7faa4d288100
 19134 ms  0xffb PK11_Derive()
 19134 ms  0xffb basekey:0x7faa4cec5f00
 19134 ms     | 0xffb PK11_DeriveWithTemplate()
 19134 ms  0xffb ret:0x7faa4cec5f80
 19134 ms  0xffb PK11_Encrypt()
 19134 ms  0xffb symkey:0x7faa4cec6000
 19135 ms  0xffb SECKEY_DestroyPrivateKey()
 19135 ms  0xffb privk:0x7faa2be53020::7faa2be53020  70 04 6a 4b                                      p.jK
 19135 ms  0xffb privk:0x7faa2be53020::7faa2be53020  e5 e5 e5 e5                                      ....
 19135 ms  0xffb SECKEY_DestroyPrivateKey()
 19135 ms  0xffb privk:0x7faa2ba8d820::7faa2ba8d820  40 02 6a 4b                                      @.jK
 19135 ms  0xffb privk:0x7faa2ba8d820::7faa2ba8d820  e5 e5 e5 e5                                      ....
 19135 ms  0xffb SSL_ImportFD()
 19135 ms  0xffb ret:0x7faa4dcfc550
 19136 ms  0xffb SSL_AuthCertificateHook()
 19136 ms  0xffb fd:0x7faa4dcfc550
 19136 ms  0xffb ret:0x0
 19136 ms  0xffb PR_Connect()
 19136 ms  0xffb fd:0x7faa4dcfc550
           /* TID 0x1003 */
 19138 ms  0x1003 PR_Close()
 19138 ms  0x1003 fd:0x7faa470538b0
           /* TID 0xffb */
 19139 ms  0xffb PK11_Encrypt()
 19139 ms  0xffb symkey:0x7faa4cec6000
 19140 ms  0xffb SECKEY_CreateECPrivateKey()
 19140 ms  0xffb cx:0x7faa2b948e28
 19141 ms     | 0xffb EC_ValidatePublicKey()
 19141 ms     | 0xffb ret:0x0
 19141 ms  0xffb ret:0x7faa2b9d3020::7faa2b9d3020  e0 d7 43 48                                      ..CH
 19141 ms  0xffb SECKEY_CreateECPrivateKey()
 19141 ms  0xffb cx:0x7faa2b948e28
 19142 ms     | 0xffb EC_ValidatePublicKey()
 19143 ms     | 0xffb ret:0x0
 19143 ms  0xffb ret:0x7faa2ba85820::7faa2ba85820  90 d7 d0 48                                      ...H
 19144 ms  0xffb SECKEY_CreateECPrivateKey()
 19144 ms  0xffb cx:0x7faa2b948c88
 19144 ms     | 0xffb EC_ValidatePublicKey()
 19144 ms     | 0xffb ret:0x0
 19144 ms  0xffb ret:0x7faa2ba8d020::7faa2ba8d020  90 7c 07 4b                                      .|.K
 19144 ms  0xffb SECKEY_CreateECPrivateKey()
 19144 ms  0xffb cx:0x7faa2b948c88
 19145 ms     | 0xffb EC_ValidatePublicKey()
 19152 ms     | 0xffb ret:0x0
 19152 ms  0xffb ret:0x7faa2ba93020::7faa2ba93020  90 d7 b1 47                                      ...G
 19153 ms  0xffb SECKEY_DestroyPrivateKey()
 19153 ms  0xffb privk:0x7faa2be6a020::7faa2be6a020  10 aa 2b 48                                      ..+H
 19153 ms  0xffb privk:0x7faa2be6a020::7faa2be6a020  e5 e5 e5 e5                                      ....
 19153 ms  0xffb SECKEY_DestroyPrivateKey()
 19153 ms  0xffb privk:0x7faa2be51820::7faa2be51820  60 3f 2b 48                                      `?+H
 19153 ms  0xffb privk:0x7faa2be51820::7faa2be51820  e5 e5 e5 e5                                      ....
 19153 ms  0xffb PR_Close()
 19153 ms  0xffb fd:0x7faa2ba4f070
 19153 ms     | 0xffb PK11_Encrypt()
 19153 ms     | 0xffb symkey:0x7faa4c267c00
 19157 ms  0xffb SECKEY_DestroyPrivateKey()
 19157 ms  0xffb privk:0x7faa2ba88020::7faa2ba88020  70 a9 1c 48                                      p..H
 19157 ms  0xffb privk:0x7faa2ba88020::7faa2ba88020  e5 e5 e5 e5                                      ....
 19157 ms  0xffb SECKEY_DestroyPrivateKey()
 19157 ms  0xffb privk:0x7faa2ba82820::7faa2ba82820  f0 41 19 48                                      .A.H
 19157 ms  0xffb privk:0x7faa2ba82820::7faa2ba82820  e5 e5 e5 e5                                      ....
 19157 ms  0xffb PR_Close()
 19157 ms  0xffb fd:0x7faa2cf59820
 19157 ms     | 0xffb PK11_Encrypt()
 19157 ms     | 0xffb symkey:0x7faa4c267f80
 19168 ms  SECKEY_ECParamsToKeySize()
 19168 ms  0xffb ret:0xff
 19168 ms  0xffb SECKEY_CreateECPrivateKey()
 19168 ms  0xffb cx:0x7faa2b948948
 19168 ms     | 0xffb EC_ValidatePublicKey()
 19168 ms     | 0xffb ret:0x0
 19168 ms  0xffb ret:0x7faa2ba94020::7faa2ba94020  a0 a6 2b 48                                      ..+H
 19169 ms  0xffb PK11_PubDeriveWithKDF()
 19169 ms  0xffb seckey:0x7faa2ba94020
 19169 ms     | 0xffb EC_ValidatePublicKey()
 19169 ms     | 0xffb ret:0x0
 19169 ms  0xffb ret:0x7faa4c6bb300
 19169 ms  0xffb PK11_DeriveWithFlags()
 19169 ms  0xffb basekey:0x7faa4c6bb300
 19169 ms     | 0xffb PK11_DeriveWithTemplate()
 19169 ms  0xffb ret:0x7faa4c267e00
 19169 ms  0xffb PK11_Derive()
 19169 ms  0xffb basekey:0x7faa4c267e00
 19169 ms     | 0xffb PK11_DeriveWithTemplate()
 19169 ms  0xffb ret:0x7faa4c267900
 19169 ms  0xffb SECKEY_DestroyPrivateKey()
 19169 ms  0xffb privk:0x7faa2ba94020::7faa2ba94020  a0 a6 2b 48                                      ..+H
 19169 ms  0xffb privk:0x7faa2ba94020::7faa2ba94020  e5 e5 e5 e5                                      ....
 19169 ms  0xffb PK11_Encrypt()
 19169 ms  0xffb symkey:0x7faa4c268080
 19175 ms  0xffb SECKEY_DestroyPrivateKey()
 19175 ms  0xffb privk:0x7faa2cf06020::7faa2cf06020  c0 ae 2b 48                                      ..+H
 19175 ms  0xffb privk:0x7faa2cf06020::7faa2cf06020  e5 e5 e5 e5                                      ....
 19176 ms  0xffb SECKEY_DestroyPrivateKey()
 19176 ms  0xffb privk:0x7faa2bece820::7faa2bece820  40 ac 2b 48                                      @.+H
 19176 ms  0xffb privk:0x7faa2bece820::7faa2bece820  e5 e5 e5 e5                                      ....
 19176 ms  0xffb PR_Close()
 19176 ms  0xffb fd:0x7faa2ba4f220
 19176 ms     | 0xffb PK11_Encrypt()
 19176 ms     | 0xffb symkey:0x7faa4c6c9f80
 19187 ms  0xffb SECKEY_DestroyPrivateKey()
 19187 ms  0xffb privk:0x7faa2cf1c020::7faa2cf1c020  a0 d6 d0 48                                      ...H
 19187 ms  0xffb privk:0x7faa2cf1c020::7faa2cf1c020  e5 e5 e5 e5                                      ....
 19187 ms  0xffb SECKEY_DestroyPrivateKey()
 19187 ms  0xffb privk:0x7faa2cf19020::7faa2cf19020  10 45 4a 48                                      .EJH
 19187 ms  0xffb privk:0x7faa2cf19020::7faa2cf19020  e5 e5 e5 e5                                      ....
 19187 ms  0xffb PR_Close()
 19187 ms  0xffb fd:0x7faa2ba4f760
 19187 ms     | 0xffb PK11_Encrypt()
 19187 ms     | 0xffb symkey:0x7faa4d289700
           /* TID 0x1003 */
 19190 ms  0x1003 PR_Close()
 19190 ms  0x1003 fd:0x7faa2ba4f100
           /* TID 0x1093 */
 19197 ms  0x1093 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19197 ms  0x1093 ret:0x0
 19197 ms  0x1093 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19197 ms  0x1093 ret:0x0
           /* TID 0x1003 */
 19198 ms  0x1003 PR_Close()
 19198 ms  0x1003 fd:0x7faa2ba4f100
           /* TID 0xffb */
 19198 ms  0xffb SSL_AuthCertificateComplete()
 19198 ms  0xffb fd:0x7faa4c2583d0
 19198 ms  0xffb err:0x0
 19198 ms  0xffb PK11_Encrypt()
 19198 ms  0xffb symkey:0x7faa4c268080
 19198 ms  0xffb PK11_Encrypt()
 19198 ms  0xffb symkey:0x7faa4c268080
           /* TID 0x1003 */
 19284 ms  0x1003 PR_Close()
 19284 ms  0x1003 fd:0x7faa2ba4f100
           /* TID 0xffb */
 19312 ms  SECKEY_ECParamsToKeySize()
 19312 ms  0xffb ret:0xff
 19313 ms  0xffb SECKEY_CreateECPrivateKey()
 19313 ms  0xffb cx:0x7faa2b948128
 19313 ms     | 0xffb EC_ValidatePublicKey()
 19313 ms     | 0xffb ret:0x0
 19313 ms  0xffb ret:0x7faa2ba95020::7faa2ba95020  c0 3e 2b 48                                      .>+H
 19313 ms  0xffb PK11_PubDeriveWithKDF()
 19313 ms  0xffb seckey:0x7faa2ba95020
 19314 ms     | 0xffb EC_ValidatePublicKey()
 19314 ms     | 0xffb ret:0x0
 19314 ms  0xffb ret:0x7faa4d261d80
 19314 ms  0xffb PK11_DeriveWithFlags()
 19314 ms  0xffb basekey:0x7faa4d261d80
 19314 ms     | 0xffb PK11_DeriveWithTemplate()
 19314 ms  0xffb ret:0x7faa4d288a80
 19314 ms  0xffb PK11_Derive()
 19314 ms  0xffb basekey:0x7faa4d288a80
 19314 ms     | 0xffb PK11_DeriveWithTemplate()
 19314 ms  0xffb ret:0x7faa4d288b00
 19314 ms  0xffb SECKEY_DestroyPrivateKey()
 19314 ms  0xffb privk:0x7faa2ba95020::7faa2ba95020  c0 3e 2b 48                                      .>+H
 19315 ms  0xffb privk:0x7faa2ba95020::7faa2ba95020  e5 e5 e5 e5                                      ....
 19315 ms  0xffb PK11_Encrypt()
 19315 ms  0xffb symkey:0x7faa4d289980
 19316 ms  0xffb SSL_AuthCertificateComplete()
 19316 ms  0xffb fd:0x7faa4c2584c0
 19316 ms  0xffb err:0x0
 19317 ms  0xffb PK11_Encrypt()
 19317 ms  0xffb symkey:0x7faa4d289980
 19317 ms  0xffb PK11_Encrypt()
 19317 ms  0xffb symkey:0x7faa4c268080
 19353 ms  0xffb SECKEY_CreateECPrivateKey()
 19353 ms  0xffb cx:0x7faa2b9494a8
 19354 ms     | 0xffb EC_ValidatePublicKey()
 19354 ms     | 0xffb ret:0x0
 19354 ms  0xffb ret:0x7faa2ba96020::7faa2ba96020  10 3f 2b 48                                      .?+H
 19354 ms  0xffb SECKEY_CreateECPrivateKey()
 19354 ms  0xffb cx:0x7faa2b9494a8
 19355 ms     | 0xffb EC_ValidatePublicKey()
 19356 ms     | 0xffb ret:0x0
 19356 ms  0xffb ret:0x7faa2be51820::7faa2be51820  40 a7 2b 48                                      @.+H
           /* TID 0x1003 */
 19366 ms  0x1003 PR_Close()
 19366 ms  0x1003 fd:0x7faa2ba4fc40
 19402 ms  0x1003 PR_Close()
 19402 ms  0x1003 fd:0x7faa2ba4fb50
           /* TID 0xffb */
 19406 ms  0xffb PR_Close()
 19406 ms  0xffb fd:0x7faa2cf59220
 19406 ms     | 0xffb PK11_Encrypt()
 19406 ms     | 0xffb symkey:0x7faa4c6e9300
 19408 ms  0xffb PR_Close()
 19408 ms  0xffb fd:0x7faa2cf59ac0
 19408 ms     | 0xffb PK11_Encrypt()
 19408 ms     | 0xffb symkey:0x7faa4d288100
 19420 ms  SECKEY_ECParamsToKeySize()
 19420 ms  0xffb ret:0xff
 19420 ms  0xffb SECKEY_CreateECPrivateKey()
 19420 ms  0xffb cx:0x7faa2b948e28
 19422 ms     | 0xffb EC_ValidatePublicKey()
 19422 ms     | 0xffb ret:0x0
 19422 ms  0xffb ret:0x7faa2b9d1020::7faa2b9d1020  00 ab 2b 48                                      ..+H
 19422 ms  0xffb PK11_PubDeriveWithKDF()
 19422 ms  0xffb seckey:0x7faa2b9d1020
 19422 ms     | 0xffb EC_ValidatePublicKey()
 19422 ms     | 0xffb ret:0x0
 19425 ms  0xffb ret:0x7faa4d289c80
 19425 ms  0xffb PK11_DeriveWithFlags()
 19425 ms  0xffb basekey:0x7faa4d289c80
 19425 ms     | 0xffb PK11_DeriveWithTemplate()
 19425 ms  0xffb ret:0x7faa4c0c2300
 19425 ms  0xffb PK11_Derive()
 19425 ms  0xffb basekey:0x7faa4c0c2300
 19425 ms     | 0xffb PK11_DeriveWithTemplate()
 19425 ms  0xffb ret:0x7faa4c6e9800
 19425 ms  0xffb SECKEY_DestroyPrivateKey()
 19425 ms  0xffb privk:0x7faa2b9d1020::7faa2b9d1020  00 ab 2b 48                                      ..+H
 19425 ms  0xffb privk:0x7faa2b9d1020::7faa2b9d1020  e5 e5 e5 e5                                      ....
 19426 ms  0xffb PK11_Encrypt()
 19426 ms  0xffb symkey:0x7faa4d288280
 19426 ms  0xffb PR_Close()
 19426 ms  0xffb fd:0x7faa2ba4f880
 19426 ms     | 0xffb PK11_Encrypt()
 19426 ms     | 0xffb symkey:0x7faa4cec6000
 19427 ms  0xffb SSL_AuthCertificateComplete()
 19427 ms  0xffb fd:0x7faa4c207100
 19427 ms  0xffb err:0x0
 19429 ms  SECKEY_ECParamsToKeySize()
 19429 ms  0xffb ret:0xff
 19429 ms  0xffb SECKEY_CreateECPrivateKey()
 19429 ms  0xffb cx:0x7faa2b948c88
 19431 ms     | 0xffb EC_ValidatePublicKey()
 19431 ms     | 0xffb ret:0x0
 19431 ms  0xffb ret:0x7faa2b9cf820::7faa2b9cf820  40 ac 2b 48                                      @.+H
 19431 ms  0xffb PK11_PubDeriveWithKDF()
 19431 ms  0xffb seckey:0x7faa2b9cf820
 19431 ms     | 0xffb EC_ValidatePublicKey()
 19431 ms     | 0xffb ret:0x0
 19432 ms  0xffb ret:0x7faa4cec5f80
 19432 ms  0xffb PK11_DeriveWithFlags()
 19432 ms  0xffb basekey:0x7faa4cec5f80
 19432 ms     | 0xffb PK11_DeriveWithTemplate()
 19432 ms  0xffb ret:0x7faa4cec5f00
 19432 ms  0xffb PK11_Derive()
 19432 ms  0xffb basekey:0x7faa4cec5f00
 19432 ms     | 0xffb PK11_DeriveWithTemplate()
 19433 ms  0xffb ret:0x7faa4d289c80
 19433 ms  0xffb SECKEY_DestroyPrivateKey()
 19433 ms  0xffb privk:0x7faa2b9cf820::7faa2b9cf820  40 ac 2b 48                                      @.+H
 19433 ms  0xffb privk:0x7faa2b9cf820::7faa2b9cf820  e5 e5 e5 e5                                      ....
 19433 ms  0xffb PK11_Encrypt()
 19433 ms  0xffb symkey:0x7faa4cec6080
 19434 ms  0xffb PK11_Encrypt()
 19434 ms  0xffb symkey:0x7faa4d288280
           /* TID 0x1003 */
 19436 ms  0x1003 PR_Close()
 19436 ms  0x1003 fd:0x7faa2ba4fd30
           /* TID 0xffb */
 19437 ms  0xffb SSL_AuthCertificateComplete()
 19437 ms  0xffb fd:0x7faa4c207760
 19437 ms  0xffb err:0x0
 19438 ms  0xffb PK11_Encrypt()
 19438 ms  0xffb symkey:0x7faa4cec6080
 19442 ms  0xffb SECKEY_DestroyPrivateKey()
 19442 ms  0xffb privk:0x7faa44787820::7faa44787820  60 45 f8 4b                                      `E.K
 19442 ms  0xffb privk:0x7faa44787820::7faa44787820  e5 e5 e5 e5                                      ....
 19442 ms  0xffb SECKEY_DestroyPrivateKey()
 19442 ms  0xffb privk:0x7faa434a0020::7faa434a0020  80 43 f8 4b                                      .C.K
 19443 ms  0xffb privk:0x7faa434a0020::7faa434a0020  e5 e5 e5 e5                                      ....
 19443 ms  0xffb SECKEY_DestroyPrivateKey()
 19443 ms  0xffb privk:0x7faa2be64020::7faa2be64020  40 0c 6a 4b                                      @.jK
 19443 ms  0xffb privk:0x7faa2be64020::7faa2be64020  e5 e5 e5 e5                                      ....
 19443 ms  0xffb SECKEY_DestroyPrivateKey()
 19443 ms  0xffb privk:0x7faa2be62020::7faa2be62020  60 0a 6a 4b                                      `.jK
 19443 ms  0xffb privk:0x7faa2be62020::7faa2be62020  e5 e5 e5 e5                                      ....
 19444 ms  0xffb PK11_Encrypt()
 19444 ms  0xffb symkey:0x7faa4c268080
           /* TID 0x105e */
 19486 ms  0x105e PR_Close()
 19486 ms  0x105e fd:0x7faa2ba4fd00
 19491 ms  0x105e PR_Close()
 19491 ms  0x105e fd:0x7faa2ba4fd00
           /* TID 0x1003 */
 19578 ms  0x1003 PR_Close()
 19578 ms  0x1003 fd:0x7faa2ba4fd30
           /* TID 0xffb */
 19582 ms  SECKEY_ECParamsToKeySize()
 19582 ms  0xffb ret:0x100
 19582 ms  0xffb SECKEY_CreateECPrivateKey()
 19582 ms  0xffb cx:0x7faa2b9494a8
 19584 ms     | 0xffb EC_ValidatePublicKey()
 19598 ms     | 0xffb ret:0x0
 19598 ms  0xffb ret:0x7faa2be5c820::7faa2be5c820  10 45 4a 48                                      .EJH
 19599 ms  0xffb PK11_PubDeriveWithKDF()
 19599 ms  0xffb seckey:0x7faa2be5c820
 19599 ms     | 0xffb EC_ValidatePublicKey()
 19601 ms     | 0xffb ret:0x0
 19604 ms  0xffb ret:0x7faa4cec5f80
 19604 ms  0xffb PK11_DeriveWithFlags()
 19604 ms  0xffb basekey:0x7faa4cec5f80
 19604 ms     | 0xffb PK11_DeriveWithTemplate()
 19604 ms  0xffb ret:0x7faa4c6e9200
 19604 ms  0xffb PK11_Derive()
 19604 ms  0xffb basekey:0x7faa4c6e9200
 19604 ms     | 0xffb PK11_DeriveWithTemplate()
 19604 ms  0xffb ret:0x7faa4d261d80
 19604 ms  0xffb SECKEY_DestroyPrivateKey()
 19604 ms  0xffb privk:0x7faa2be5c820::7faa2be5c820  10 45 4a 48                                      .EJH
 19604 ms  0xffb privk:0x7faa2be5c820::7faa2be5c820  e5 e5 e5 e5                                      ....
 19604 ms  0xffb PK11_Encrypt()
 19604 ms  0xffb symkey:0x7faa4c6e9400
 19608 ms  0xffb SSL_ImportFD()
 19608 ms  0xffb ret:0x7faa2cf59220
 19608 ms  0xffb SSL_AuthCertificateHook()
 19608 ms  0xffb fd:0x7faa2cf59220
 19608 ms  0xffb ret:0x0
 19609 ms  0xffb PR_Connect()
 19609 ms  0xffb fd:0x7faa2cf59220
 19609 ms  0xffb SSL_ImportFD()
 19609 ms  0xffb ret:0x7faa2ba4f430
 19609 ms  0xffb SSL_AuthCertificateHook()
 19609 ms  0xffb fd:0x7faa2ba4f430
 19609 ms  0xffb ret:0x0
 19609 ms  0xffb PR_Connect()
 19609 ms  0xffb fd:0x7faa2ba4f430
 19609 ms  0xffb SSL_ImportFD()
 19609 ms  0xffb ret:0x7faa2ba4fe20
 19609 ms  0xffb SSL_AuthCertificateHook()
 19609 ms  0xffb fd:0x7faa2ba4fe20
 19609 ms  0xffb ret:0x0
 19610 ms  0xffb PR_Connect()
 19610 ms  0xffb fd:0x7faa2ba4fe20
 19610 ms  0xffb SSL_ImportFD()
 19610 ms  0xffb ret:0x7faa2cf59160
 19610 ms  0xffb SSL_AuthCertificateHook()
 19610 ms  0xffb fd:0x7faa2cf59160
 19610 ms  0xffb ret:0x0
 19610 ms  0xffb PR_Connect()
 19610 ms  0xffb fd:0x7faa2cf59160
 19620 ms  0xffb SECKEY_DestroyPrivateKey()
 19620 ms  0xffb privk:0x7faa2be56020::7faa2be56020  b0 80 06 47                                      ...G
 19620 ms  0xffb privk:0x7faa2be56020::7faa2be56020  e5 e5 e5 e5                                      ....
 19620 ms  0xffb SECKEY_DestroyPrivateKey()
 19620 ms  0xffb privk:0x7faa2ba9c020::7faa2ba9c020  b0 3a fc 46                                      .:.F
 19621 ms  0xffb privk:0x7faa2ba9c020::7faa2ba9c020  e5 e5 e5 e5                                      ....
 19621 ms  0xffb PR_Close()
 19621 ms  0xffb fd:0x7faa4c2584c0
 19621 ms     | 0xffb PK11_Encrypt()
 19621 ms     | 0xffb symkey:0x7faa4d289980
           /* TID 0x1094 */
 19631 ms  0x1094 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19631 ms  0x1094 ret:0x0
           /* TID 0x1003 */
 19632 ms  0x1003 PR_Close()
 19632 ms  0x1003 fd:0x7faa2ba4f550
           /* TID 0xffb */
 19632 ms  0xffb SSL_AuthCertificateComplete()
 19632 ms  0xffb fd:0x7faa4dcfc550
 19632 ms  0xffb err:0x0
 19632 ms  0xffb PK11_Encrypt()
 19632 ms  0xffb symkey:0x7faa4c6e9400
 19634 ms  0xffb SECKEY_CreateECPrivateKey()
 19634 ms  0xffb cx:0x7faa2b949648
 19635 ms     | 0xffb EC_ValidatePublicKey()
 19635 ms     | 0xffb ret:0x0
 19635 ms  0xffb ret:0x7faa2ba8a820::7faa2ba8a820  b0 35 fc 46                                      .5.F
 19635 ms  0xffb SECKEY_CreateECPrivateKey()
 19635 ms  0xffb cx:0x7faa2b949648
 19636 ms     | 0xffb EC_ValidatePublicKey()
 19637 ms     | 0xffb ret:0x0
 19637 ms  0xffb ret:0x7faa2ba9c020::7faa2ba9c020  60 9a b1 47                                      `..G
 19638 ms  0xffb SECKEY_CreateECPrivateKey()
 19638 ms  0xffb cx:0x7faa2b9497e8
 19639 ms     | 0xffb EC_ValidatePublicKey()
 19639 ms     | 0xffb ret:0x0
 19639 ms  0xffb ret:0x7faa2be54020::7faa2be54020  f0 a1 2b 48                                      ..+H
 19639 ms  0xffb SECKEY_CreateECPrivateKey()
 19639 ms  0xffb cx:0x7faa2b9497e8
 19639 ms     | 0xffb EC_ValidatePublicKey()
 19641 ms     | 0xffb ret:0x0
 19641 ms  0xffb ret:0x7faa2be5a020::7faa2be5a020  70 ae 2b 48                                      p.+H
 19641 ms  0xffb SECKEY_CreateECPrivateKey()
 19641 ms  0xffb cx:0x7faa2b949b28
 19642 ms     | 0xffb EC_ValidatePublicKey()
 19642 ms     | 0xffb ret:0x0
 19642 ms  0xffb ret:0x7faa2be62020::7faa2be62020  10 45 4a 48                                      .EJH
 19642 ms  0xffb SECKEY_CreateECPrivateKey()
 19642 ms  0xffb cx:0x7faa2b949b28
 19643 ms     | 0xffb EC_ValidatePublicKey()
 19644 ms     | 0xffb ret:0x0
 19644 ms  0xffb ret:0x7faa2be64020::7faa2be64020  a0 d6 d0 48                                      ...H
 19645 ms  0xffb SECKEY_CreateECPrivateKey()
 19645 ms  0xffb cx:0x7faa2b949988
 19645 ms     | 0xffb EC_ValidatePublicKey()
 19645 ms     | 0xffb ret:0x0
 19645 ms  0xffb ret:0x7faa2bec4820::7faa2bec4820  f0 01 6a 4b                                      ..jK
 19645 ms  0xffb SECKEY_CreateECPrivateKey()
 19645 ms  0xffb cx:0x7faa2b949988
 19646 ms     | 0xffb EC_ValidatePublicKey()
 19648 ms     | 0xffb ret:0x0
 19648 ms  0xffb ret:0x7faa2bed3820::7faa2bed3820  20 04 6a 4b                                       .jK
 19663 ms  0xffb PK11_Derive()
 19663 ms  0xffb basekey:0x7faa4d288b00
 19664 ms     | 0xffb PK11_DeriveWithTemplate()
 19664 ms  0xffb ret:0x7faa4d288a80
 19664 ms  0xffb PK11_PubDeriveWithKDF()
 19664 ms  0xffb seckey:0x7faa2ba9c020
 19664 ms     | 0xffb EC_ValidatePublicKey()
 19665 ms     | 0xffb ret:0x0
 19667 ms  0xffb ret:0x7faa4d288b00
 19667 ms  SECKEY_ECParamsToKeySize()
 19667 ms  0xffb ret:0x100
 19667 ms  0xffb PK11_DeriveWithFlags()
 19667 ms  0xffb basekey:0x7faa4d288a80
 19667 ms     | 0xffb PK11_DeriveWithTemplate()
 19667 ms  0xffb ret:0x7faa4cec5f80
 19667 ms  0xffb PK11_Derive()
 19667 ms  0xffb basekey:0x7faa4d288b00
 19667 ms     | 0xffb PK11_DeriveWithTemplate()
 19667 ms  0xffb ret:0x7faa4c6bae80
 19667 ms  0xffb PK11_DeriveWithFlags()
 19667 ms  0xffb basekey:0x7faa4c6bae80
 19667 ms     | 0xffb PK11_DeriveWithTemplate()
 19667 ms  0xffb ret:0x7faa4d288a80
 19667 ms  0xffb PK11_DeriveWithFlags()
 19667 ms  0xffb basekey:0x7faa4c6bae80
 19667 ms     | 0xffb PK11_DeriveWithTemplate()
 19667 ms  0xffb ret:0x7faa4d288b00
 19667 ms  0xffb PK11_DeriveWithFlags()
 19667 ms  0xffb basekey:0x7faa4c6bae80
 19667 ms     | 0xffb PK11_DeriveWithTemplate()
 19667 ms  0xffb ret:0x7faa4cec5f80
 19667 ms  0xffb PK11_Derive()
 19667 ms  0xffb basekey:0x7faa4c6bb300
 19667 ms     | 0xffb PK11_DeriveWithTemplate()
 19667 ms  0xffb ret:0x7faa4c267800
 19667 ms  0xffb PK11_DeriveWithFlags()
 19667 ms  0xffb basekey:0x7faa4d288b00
 19667 ms     | 0xffb PK11_DeriveWithTemplate()
 19667 ms  0xffb ret:0x7faa4c6bae80
 19667 ms  0xffb PK11_DeriveWithFlags()
 19667 ms  0xffb basekey:0x7faa4d288b00
 19667 ms     | 0xffb PK11_DeriveWithTemplate()
 19667 ms  0xffb ret:0x7faa4cec5f80
           /* TID 0x1058 */
 19668 ms  0x1058 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19669 ms  0x1058 ret:0x0
 19669 ms  0x1058 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19669 ms  0x1058 ret:0x0
           /* TID 0xffb */
 19669 ms  0xffb PK11_DeriveWithFlags()
 19669 ms  0xffb basekey:0x7faa4d288b00
 19669 ms     | 0xffb PK11_DeriveWithTemplate()
 19669 ms  0xffb ret:0x7faa4cec5f80
 19669 ms  0xffb SSL_AuthCertificateComplete()
 19669 ms  0xffb fd:0x7faa2cf59220
 19669 ms  0xffb err:0x0
 19669 ms     | 0xffb PK11_DeriveWithFlags()
 19669 ms     | 0xffb basekey:0x7faa4c267800
 19669 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19669 ms     | 0xffb ret:0x7faa4cec5f80
 19669 ms     | 0xffb PK11_DeriveWithFlags()
 19669 ms     | 0xffb basekey:0x7faa4c267800
 19669 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19669 ms     | 0xffb ret:0x7faa4c6bb300
 19669 ms     | 0xffb PK11_DeriveWithFlags()
 19669 ms     | 0xffb basekey:0x7faa4c267800
 19669 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19669 ms     | 0xffb ret:0x7faa4cea1e80
 19669 ms     | 0xffb PK11_DeriveWithFlags()
 19669 ms     | 0xffb basekey:0x7faa4d288a80
 19669 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19669 ms     | 0xffb ret:0x7faa4cea1e00
 19669 ms     | 0xffb PK11_DeriveWithFlags()
 19669 ms     | 0xffb basekey:0x7faa4d288a80
 19669 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19669 ms     | 0xffb ret:0x7faa4cec5c80
 19669 ms     | 0xffb PK11_DeriveWithFlags()
 19669 ms     | 0xffb basekey:0x7faa4c6bb300
 19669 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19669 ms     | 0xffb ret:0x7faa4cec5c80
 19669 ms     | 0xffb PK11_DeriveWithFlags()
 19669 ms     | 0xffb basekey:0x7faa4c6bb300
 19669 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19669 ms     | 0xffb ret:0x7faa4c6ecd80
 19671 ms     | 0xffb PK11_DeriveWithFlags()
 19671 ms     | 0xffb basekey:0x7faa4d288a80
 19671 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19671 ms     | 0xffb ret:0x7faa4c6bae80
 19671 ms     | 0xffb PK11_Encrypt()
 19671 ms     | 0xffb symkey:0x7faa4cea1e00
 19671 ms     | 0xffb PK11_DeriveWithFlags()
 19671 ms     | 0xffb basekey:0x7faa4cec5f80
 19671 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19671 ms     | 0xffb ret:0x7faa4c6bae80
 19671 ms     | 0xffb PK11_DeriveWithFlags()
 19671 ms     | 0xffb basekey:0x7faa4cec5f80
 19671 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19671 ms     | 0xffb ret:0x7faa4c6ecd80
 19671 ms     | 0xffb PK11_DeriveWithFlags()
 19671 ms     | 0xffb basekey:0x7faa4c267800
 19671 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19671 ms     | 0xffb ret:0x7faa4cea1e00
 19671 ms     | 0xffb SECKEY_DestroyPrivateKey()
 19671 ms     | 0xffb privk:0x7faa2ba9c020::7faa2ba9c020  60 9a b1 47                                      `..G
 19671 ms     | 0xffb privk:0x7faa2ba9c020::7faa2ba9c020  e5 e5 e5 e5                                      ....
 19672 ms     | 0xffb SECKEY_DestroyPrivateKey()
 19672 ms     | 0xffb privk:0x7faa2ba8a820::7faa2ba8a820  b0 35 fc 46                                      .5.F
 19672 ms     | 0xffb privk:0x7faa2ba8a820::7faa2ba8a820  e5 e5 e5 e5                                      ....
 19672 ms  0xffb PK11_Encrypt()
 19672 ms  0xffb symkey:0x7faa4c6bae80
 19672 ms  0xffb PK11_Encrypt()
 19672 ms  0xffb symkey:0x7faa4c6bae80
 19672 ms  0xffb PK11_Derive()
 19672 ms  0xffb basekey:0x7faa4d288b00
 19672 ms     | 0xffb PK11_DeriveWithTemplate()
 19672 ms  0xffb ret:0x7faa4d288a80
 19672 ms  0xffb PK11_PubDeriveWithKDF()
 19672 ms  0xffb seckey:0x7faa2be64020
 19673 ms     | 0xffb EC_ValidatePublicKey()
 19674 ms     | 0xffb ret:0x0
 19676 ms  0xffb ret:0x7faa4d288b00
 19676 ms  SECKEY_ECParamsToKeySize()
 19676 ms  0xffb ret:0x100
 19676 ms  0xffb PK11_DeriveWithFlags()
 19676 ms  0xffb basekey:0x7faa4d288a80
 19676 ms     | 0xffb PK11_DeriveWithTemplate()
 19676 ms  0xffb ret:0x7faa4c267800
 19676 ms  0xffb PK11_Derive()
 19676 ms  0xffb basekey:0x7faa4d288b00
 19676 ms     | 0xffb PK11_DeriveWithTemplate()
 19676 ms  0xffb ret:0x7faa4c6ecd80
 19676 ms  0xffb PK11_DeriveWithFlags()
 19676 ms  0xffb basekey:0x7faa4c6ecd80
 19676 ms     | 0xffb PK11_DeriveWithTemplate()
 19676 ms  0xffb ret:0x7faa4d288a80
 19676 ms  0xffb PK11_DeriveWithFlags()
 19676 ms  0xffb basekey:0x7faa4c6ecd80
 19676 ms     | 0xffb PK11_DeriveWithTemplate()
 19676 ms  0xffb ret:0x7faa4d288b00
 19676 ms  0xffb PK11_DeriveWithFlags()
 19676 ms  0xffb basekey:0x7faa4c6ecd80
 19676 ms     | 0xffb PK11_DeriveWithTemplate()
 19676 ms  0xffb ret:0x7faa4c267800
 19676 ms  0xffb PK11_Derive()
 19676 ms  0xffb basekey:0x7faa4cec5380
 19676 ms     | 0xffb PK11_DeriveWithTemplate()
 19676 ms  0xffb ret:0x7faa4cec5280
 19676 ms  0xffb PK11_DeriveWithFlags()
 19676 ms  0xffb basekey:0x7faa4d288b00
 19676 ms     | 0xffb PK11_DeriveWithTemplate()
 19676 ms  0xffb ret:0x7faa4c6ecd80
 19676 ms  0xffb PK11_DeriveWithFlags()
 19676 ms  0xffb basekey:0x7faa4d288b00
 19676 ms     | 0xffb PK11_DeriveWithTemplate()
 19676 ms  0xffb ret:0x7faa4c267800
           /* TID 0x1093 */
 19677 ms  0x1093 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19677 ms  0x1093 ret:0x0
 19677 ms  0x1093 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19677 ms  0x1093 ret:0x0
           /* TID 0xffb */
 19678 ms  0xffb PK11_DeriveWithFlags()
 19678 ms  0xffb basekey:0x7faa4d288b00
 19678 ms     | 0xffb PK11_DeriveWithTemplate()
 19678 ms  0xffb ret:0x7faa4c267800
 19678 ms  0xffb PK11_Derive()
 19678 ms  0xffb basekey:0x7faa4c267800
 19678 ms     | 0xffb PK11_DeriveWithTemplate()
 19678 ms  0xffb ret:0x7faa4cec5380
 19678 ms  0xffb PK11_PubDeriveWithKDF()
 19678 ms  0xffb seckey:0x7faa2be5a020
 19678 ms     | 0xffb EC_ValidatePublicKey()
 19679 ms     | 0xffb ret:0x0
 19681 ms  0xffb ret:0x7faa4c267800
 19681 ms  SECKEY_ECParamsToKeySize()
 19681 ms  0xffb ret:0x100
 19681 ms  0xffb PK11_DeriveWithFlags()
 19681 ms  0xffb basekey:0x7faa4cec5380
 19681 ms     | 0xffb PK11_DeriveWithTemplate()
 19681 ms  0xffb ret:0x7faa4cea1b80
 19681 ms  0xffb PK11_Derive()
 19681 ms  0xffb basekey:0x7faa4c267800
 19681 ms     | 0xffb PK11_DeriveWithTemplate()
 19681 ms  0xffb ret:0x7faa4c0d3700
 19681 ms  0xffb PK11_DeriveWithFlags()
 19681 ms  0xffb basekey:0x7faa4c0d3700
 19681 ms     | 0xffb PK11_DeriveWithTemplate()
 19681 ms  0xffb ret:0x7faa4cec5380
 19681 ms  0xffb PK11_DeriveWithFlags()
 19681 ms  0xffb basekey:0x7faa4c0d3700
 19681 ms     | 0xffb PK11_DeriveWithTemplate()
 19681 ms  0xffb ret:0x7faa4c267800
 19681 ms  0xffb PK11_DeriveWithFlags()
 19681 ms  0xffb basekey:0x7faa4c0d3700
 19681 ms     | 0xffb PK11_DeriveWithTemplate()
 19681 ms  0xffb ret:0x7faa4cea1b80
 19681 ms  0xffb PK11_Derive()
 19681 ms  0xffb basekey:0x7faa4c267e80
 19681 ms     | 0xffb PK11_DeriveWithTemplate()
 19681 ms  0xffb ret:0x7faa4d289c00
 19681 ms  0xffb PK11_DeriveWithFlags()
 19681 ms  0xffb basekey:0x7faa4c267800
 19681 ms     | 0xffb PK11_DeriveWithTemplate()
 19681 ms  0xffb ret:0x7faa4c0d3700
 19681 ms  0xffb PK11_DeriveWithFlags()
 19681 ms  0xffb basekey:0x7faa4c267800
 19681 ms     | 0xffb PK11_DeriveWithTemplate()
 19681 ms  0xffb ret:0x7faa4cea1b80
           /* TID 0x1094 */
 19682 ms  0x1094 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19682 ms  0x1094 ret:0x0
 19682 ms  0x1094 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19682 ms  0x1094 ret:0x0
           /* TID 0xffb */
 19682 ms  0xffb PK11_DeriveWithFlags()
 19682 ms  0xffb basekey:0x7faa4c267800
 19682 ms     | 0xffb PK11_DeriveWithTemplate()
 19682 ms  0xffb ret:0x7faa4cea1b80
 19682 ms  0xffb SSL_AuthCertificateComplete()
 19682 ms  0xffb fd:0x7faa2cf59160
 19682 ms  0xffb err:0x0
 19682 ms     | 0xffb PK11_DeriveWithFlags()
 19682 ms     | 0xffb basekey:0x7faa4cec5280
 19682 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19682 ms     | 0xffb ret:0x7faa4cea1b80
 19682 ms     | 0xffb PK11_DeriveWithFlags()
 19682 ms     | 0xffb basekey:0x7faa4cec5280
 19682 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19682 ms     | 0xffb ret:0x7faa4c267e80
 19683 ms     | 0xffb PK11_DeriveWithFlags()
 19683 ms     | 0xffb basekey:0x7faa4cec5280
 19683 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19683 ms     | 0xffb ret:0x7faa4c0c5700
 19683 ms     | 0xffb PK11_DeriveWithFlags()
 19683 ms     | 0xffb basekey:0x7faa4d288a80
 19683 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19683 ms     | 0xffb ret:0x7faa4d289a80
 19683 ms     | 0xffb PK11_DeriveWithFlags()
 19683 ms     | 0xffb basekey:0x7faa4d288a80
 19683 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19683 ms     | 0xffb ret:0x7faa4d289700
 19683 ms     | 0xffb PK11_DeriveWithFlags()
 19683 ms     | 0xffb basekey:0x7faa4c267e80
 19683 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19683 ms     | 0xffb ret:0x7faa4d289700
 19683 ms     | 0xffb PK11_DeriveWithFlags()
 19683 ms     | 0xffb basekey:0x7faa4c267e80
 19683 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19683 ms     | 0xffb ret:0x7faa4d289b00
 19683 ms     | 0xffb PK11_DeriveWithFlags()
 19683 ms     | 0xffb basekey:0x7faa4d288a80
 19683 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19683 ms     | 0xffb ret:0x7faa4c6ecd80
 19683 ms     | 0xffb PK11_Encrypt()
 19683 ms     | 0xffb symkey:0x7faa4d289a80
 19689 ms     | 0xffb PK11_DeriveWithFlags()
 19689 ms     | 0xffb basekey:0x7faa4cea1b80
 19692 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19692 ms     | 0xffb ret:0x7faa4c6ecd80
 19692 ms     | 0xffb PK11_DeriveWithFlags()
 19692 ms     | 0xffb basekey:0x7faa4cea1b80
 19692 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19692 ms     | 0xffb ret:0x7faa4d289b00
 19692 ms     | 0xffb PK11_DeriveWithFlags()
 19692 ms     | 0xffb basekey:0x7faa4cec5280
 19692 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19692 ms     | 0xffb ret:0x7faa4d289a80
 19692 ms     | 0xffb SECKEY_DestroyPrivateKey()
 19692 ms     | 0xffb privk:0x7faa2be64020::7faa2be64020  a0 d6 d0 48                                      ...H
 19692 ms     | 0xffb privk:0x7faa2be64020::7faa2be64020  e5 e5 e5 e5                                      ....
 19692 ms     | 0xffb SECKEY_DestroyPrivateKey()
 19692 ms     | 0xffb privk:0x7faa2be62020::7faa2be62020  10 45 4a 48                                      .EJH
 19692 ms     | 0xffb privk:0x7faa2be62020::7faa2be62020  e5 e5 e5 e5                                      ....
 19692 ms  0xffb SSL_AuthCertificateComplete()
 19692 ms  0xffb fd:0x7faa2ba4f430
 19692 ms  0xffb err:0x0
 19692 ms     | 0xffb PK11_DeriveWithFlags()
 19692 ms     | 0xffb basekey:0x7faa4d289c00
 19692 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19692 ms     | 0xffb ret:0x7faa4d288b00
 19692 ms     | 0xffb PK11_DeriveWithFlags()
 19692 ms     | 0xffb basekey:0x7faa4d289c00
 19692 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19692 ms     | 0xffb ret:0x7faa4d288a80
 19692 ms     | 0xffb PK11_DeriveWithFlags()
 19692 ms     | 0xffb basekey:0x7faa4d289c00
 19692 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19692 ms     | 0xffb ret:0x7faa4cec5280
 19692 ms     | 0xffb PK11_DeriveWithFlags()
 19692 ms     | 0xffb basekey:0x7faa4cec5380
 19692 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19692 ms     | 0xffb ret:0x7faa4d289b00
 19692 ms     | 0xffb PK11_DeriveWithFlags()
 19692 ms     | 0xffb basekey:0x7faa4cec5380
 19692 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19692 ms     | 0xffb ret:0x7faa4d289980
 19692 ms     | 0xffb PK11_DeriveWithFlags()
 19692 ms     | 0xffb basekey:0x7faa4d288a80
 19692 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19692 ms     | 0xffb ret:0x7faa4d289980
 19692 ms     | 0xffb PK11_DeriveWithFlags()
 19692 ms     | 0xffb basekey:0x7faa4d288a80
 19692 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19693 ms     | 0xffb ret:0x7faa4c6ecf00
 19693 ms     | 0xffb PK11_DeriveWithFlags()
 19693 ms     | 0xffb basekey:0x7faa4cec5380
 19693 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19693 ms     | 0xffb ret:0x7faa4c0d3700
 19693 ms     | 0xffb PK11_Encrypt()
 19693 ms     | 0xffb symkey:0x7faa4d289b00
 19693 ms     | 0xffb PK11_DeriveWithFlags()
 19693 ms     | 0xffb basekey:0x7faa4d288b00
 19693 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19693 ms     | 0xffb ret:0x7faa4c0d3700
 19693 ms     | 0xffb PK11_DeriveWithFlags()
 19693 ms     | 0xffb basekey:0x7faa4d288b00
 19693 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19693 ms     | 0xffb ret:0x7faa4c6ecf00
 19693 ms     | 0xffb PK11_DeriveWithFlags()
 19693 ms     | 0xffb basekey:0x7faa4d289c00
 19693 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19693 ms     | 0xffb ret:0x7faa4d289b00
 19693 ms     | 0xffb SECKEY_DestroyPrivateKey()
 19693 ms     | 0xffb privk:0x7faa2be5a020::7faa2be5a020  70 ae 2b 48                                      p.+H
 19693 ms     | 0xffb privk:0x7faa2be5a020::7faa2be5a020  e5 e5 e5 e5                                      ....
 19693 ms     | 0xffb SECKEY_DestroyPrivateKey()
 19693 ms     | 0xffb privk:0x7faa2be54020::7faa2be54020  f0 a1 2b 48                                      ..+H
 19693 ms     | 0xffb privk:0x7faa2be54020::7faa2be54020  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
 19695 ms  0x1003 PR_Close()
 19695 ms  0x1003 fd:0x7faa2ba4ffa0
           /* TID 0xffb */
 19696 ms  0xffb PK11_Encrypt()
 19696 ms  0xffb symkey:0x7faa4c6ecd80
 19696 ms  0xffb PK11_Derive()
 19696 ms  0xffb basekey:0x7faa4c267800
 19696 ms     | 0xffb PK11_DeriveWithTemplate()
 19696 ms  0xffb ret:0x7faa4cec5380
 19696 ms  0xffb PK11_PubDeriveWithKDF()
 19696 ms  0xffb seckey:0x7faa2bed3820
 19696 ms     | 0xffb EC_ValidatePublicKey()
 19698 ms     | 0xffb ret:0x0
 19699 ms  0xffb ret:0x7faa4c267800
 19699 ms  SECKEY_ECParamsToKeySize()
 19699 ms  0xffb ret:0x100
 19699 ms  0xffb PK11_DeriveWithFlags()
 19699 ms  0xffb basekey:0x7faa4cec5380
 19700 ms     | 0xffb PK11_DeriveWithTemplate()
 19700 ms  0xffb ret:0x7faa4d289c00
 19700 ms  0xffb PK11_Derive()
 19700 ms  0xffb basekey:0x7faa4c267800
 19700 ms     | 0xffb PK11_DeriveWithTemplate()
 19700 ms  0xffb ret:0x7faa4c6ecf00
 19700 ms  0xffb PK11_DeriveWithFlags()
 19700 ms  0xffb basekey:0x7faa4c6ecf00
 19700 ms     | 0xffb PK11_DeriveWithTemplate()
 19700 ms  0xffb ret:0x7faa4cec5380
 19700 ms  0xffb PK11_DeriveWithFlags()
 19700 ms  0xffb basekey:0x7faa4c6ecf00
 19700 ms     | 0xffb PK11_DeriveWithTemplate()
 19700 ms  0xffb ret:0x7faa4c267800
 19700 ms  0xffb PK11_DeriveWithFlags()
 19700 ms  0xffb basekey:0x7faa4c6ecf00
 19700 ms     | 0xffb PK11_DeriveWithTemplate()
 19700 ms  0xffb ret:0x7faa4d289c00
 19700 ms  0xffb PK11_Derive()
 19700 ms  0xffb basekey:0x7faa4c6ece00
 19700 ms     | 0xffb PK11_DeriveWithTemplate()
 19700 ms  0xffb ret:0x7faa4c6eac00
 19700 ms  0xffb PK11_DeriveWithFlags()
 19700 ms  0xffb basekey:0x7faa4c267800
 19700 ms     | 0xffb PK11_DeriveWithTemplate()
 19700 ms  0xffb ret:0x7faa4c6ecf00
 19700 ms  0xffb PK11_DeriveWithFlags()
 19700 ms  0xffb basekey:0x7faa4c267800
 19700 ms     | 0xffb PK11_DeriveWithTemplate()
 19700 ms  0xffb ret:0x7faa4d289c00
           /* TID 0x1058 */
 19701 ms  0x1058 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19701 ms  0x1058 ret:0x0
 19701 ms  0x1058 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19701 ms  0x1058 ret:0x0
           /* TID 0xffb */
 19701 ms  0xffb PK11_DeriveWithFlags()
 19701 ms  0xffb basekey:0x7faa4c267800
 19701 ms     | 0xffb PK11_DeriveWithTemplate()
 19701 ms  0xffb ret:0x7faa4d289c00
 19701 ms  0xffb PK11_DeriveWithFlags()
 19701 ms  0xffb basekey:0x7faa4cea1e00
 19702 ms     | 0xffb PK11_DeriveWithTemplate()
 19702 ms  0xffb ret:0x7faa4d289c00
 19702 ms  0xffb PK11_DeriveWithFlags()
 19702 ms  0xffb basekey:0x7faa4cea1e00
 19702 ms     | 0xffb PK11_DeriveWithTemplate()
 19702 ms  0xffb ret:0x7faa4d289c00
 19702 ms  0xffb PK11_Encrypt()
 19702 ms  0xffb symkey:0x7faa4c0d3700
 19702 ms  0xffb PK11_Encrypt()
 19702 ms  0xffb symkey:0x7faa4c6bae80
 19702 ms  0xffb SSL_AuthCertificateComplete()
 19702 ms  0xffb fd:0x7faa2ba4fe20
 19702 ms  0xffb err:0x0
 19702 ms     | 0xffb PK11_DeriveWithFlags()
 19702 ms     | 0xffb basekey:0x7faa4c6eac00
 19703 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19703 ms     | 0xffb ret:0x7faa4d289c00
 19703 ms     | 0xffb PK11_DeriveWithFlags()
 19703 ms     | 0xffb basekey:0x7faa4c6eac00
 19703 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19703 ms     | 0xffb ret:0x7faa4c6ece00
 19703 ms     | 0xffb PK11_DeriveWithFlags()
 19703 ms     | 0xffb basekey:0x7faa4c6eac00
 19703 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19703 ms     | 0xffb ret:0x7faa4c6c9f80
 19703 ms     | 0xffb PK11_DeriveWithFlags()
 19703 ms     | 0xffb basekey:0x7faa4cec5380
 19703 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19703 ms     | 0xffb ret:0x7faa4c267d00
 19703 ms     | 0xffb PK11_DeriveWithFlags()
 19703 ms     | 0xffb basekey:0x7faa4cec5380
 19703 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19703 ms     | 0xffb ret:0x7faa4c267980
 19703 ms     | 0xffb PK11_DeriveWithFlags()
 19703 ms     | 0xffb basekey:0x7faa4c6ece00
 19703 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19703 ms     | 0xffb ret:0x7faa4c267980
 19703 ms     | 0xffb PK11_DeriveWithFlags()
 19703 ms     | 0xffb basekey:0x7faa4c6ece00
 19703 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19703 ms     | 0xffb ret:0x7faa4c267d80
 19703 ms     | 0xffb PK11_DeriveWithFlags()
 19703 ms     | 0xffb basekey:0x7faa4cec5380
 19703 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19703 ms     | 0xffb ret:0x7faa4c6ecf00
 19703 ms     | 0xffb PK11_Encrypt()
 19703 ms     | 0xffb symkey:0x7faa4c267d00
 19703 ms     | 0xffb PK11_DeriveWithFlags()
 19703 ms     | 0xffb basekey:0x7faa4d289c00
 19703 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19703 ms     | 0xffb ret:0x7faa4c6ecf00
 19703 ms     | 0xffb PK11_DeriveWithFlags()
 19703 ms     | 0xffb basekey:0x7faa4d289c00
 19703 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19703 ms     | 0xffb ret:0x7faa4c267d80
 19703 ms     | 0xffb PK11_DeriveWithFlags()
 19703 ms     | 0xffb basekey:0x7faa4c6eac00
 19703 ms     |    | 0xffb PK11_DeriveWithTemplate()
 19703 ms     | 0xffb ret:0x7faa4c267d00
 19703 ms     | 0xffb SECKEY_DestroyPrivateKey()
 19703 ms     | 0xffb privk:0x7faa2bed3820::7faa2bed3820  20 04 6a 4b                                       .jK
 19703 ms     | 0xffb privk:0x7faa2bed3820::7faa2bed3820  e5 e5 e5 e5                                      ....
 19703 ms     | 0xffb SECKEY_DestroyPrivateKey()
 19703 ms     | 0xffb privk:0x7faa2bec4820::7faa2bec4820  f0 01 6a 4b                                      ..jK
 19704 ms     | 0xffb privk:0x7faa2bec4820::7faa2bec4820  e5 e5 e5 e5                                      ....
 19705 ms  0xffb PK11_Encrypt()
 19705 ms  0xffb symkey:0x7faa4c6bae80
 19708 ms  0xffb SECKEY_DestroyPrivateKey()
 19708 ms  0xffb privk:0x7faa2ba93020::7faa2ba93020  90 d7 b1 47                                      ...G
 19708 ms  0xffb privk:0x7faa2ba93020::7faa2ba93020  e5 e5 e5 e5                                      ....
 19708 ms  0xffb SECKEY_DestroyPrivateKey()
 19708 ms  0xffb privk:0x7faa2ba8d020::7faa2ba8d020  90 7c 07 4b                                      .|.K
 19708 ms  0xffb privk:0x7faa2ba8d020::7faa2ba8d020  e5 e5 e5 e5                                      ....
 19708 ms  0xffb SECKEY_DestroyPrivateKey()
 19708 ms  0xffb privk:0x7faa2ba85820::7faa2ba85820  90 d7 d0 48                                      ...H
 19708 ms  0xffb privk:0x7faa2ba85820::7faa2ba85820  e5 e5 e5 e5                                      ....
 19708 ms  0xffb SECKEY_DestroyPrivateKey()
 19708 ms  0xffb privk:0x7faa2b9d3020::7faa2b9d3020  e0 d7 43 48                                      ..CH
 19708 ms  0xffb privk:0x7faa2b9d3020::7faa2b9d3020  e5 e5 e5 e5                                      ....
 19708 ms  0xffb PK11_Encrypt()
 19708 ms  0xffb symkey:0x7faa4c6bae80
 19709 ms  0xffb PK11_Encrypt()
 19709 ms  0xffb symkey:0x7faa4c6ecf00
 19709 ms  0xffb PR_Close()
 19709 ms  0xffb fd:0x7faa4c207100
 19709 ms     | 0xffb PK11_Encrypt()
 19709 ms     | 0xffb symkey:0x7faa4d288280
 19709 ms  0xffb PR_Close()
 19709 ms  0xffb fd:0x7faa4c207760
 19709 ms     | 0xffb PK11_Encrypt()
 19709 ms     | 0xffb symkey:0x7faa4cec6080
 19709 ms  0xffb PK11_Encrypt()
 19709 ms  0xffb symkey:0x7faa4c6bae80
           /* TID 0x1003 */
 19711 ms  0x1003 PR_Close()
 19711 ms  0x1003 fd:0x7faa2ba4f9a0
           /* TID 0xffb */
 19717 ms  0xffb PK11_DeriveWithFlags()
 19717 ms  0xffb basekey:0x7faa4d289a80
 19717 ms     | 0xffb PK11_DeriveWithTemplate()
 19717 ms  0xffb ret:0x7faa4d289c80
 19717 ms  0xffb PK11_DeriveWithFlags()
 19717 ms  0xffb basekey:0x7faa4d289a80
 19717 ms     | 0xffb PK11_DeriveWithTemplate()
 19717 ms  0xffb ret:0x7faa4d289c80
 19717 ms  0xffb PR_Close()
 19717 ms  0xffb fd:0x7faa2cf59160
 19717 ms     | 0xffb PK11_Encrypt()
 19717 ms     | 0xffb symkey:0x7faa4c6ecd80
           /* TID 0x1003 */
 19718 ms  0x1003 PR_Close()
 19718 ms  0x1003 fd:0x7faa2ba4f9a0
           /* TID 0xffb */
 19721 ms  0xffb PK11_DeriveWithFlags()
 19721 ms  0xffb basekey:0x7faa4d289b00
 19721 ms     | 0xffb PK11_DeriveWithTemplate()
 19721 ms  0xffb ret:0x7faa4c0c5700
 19721 ms  0xffb PK11_DeriveWithFlags()
 19721 ms  0xffb basekey:0x7faa4d289b00
 19721 ms     | 0xffb PK11_DeriveWithTemplate()
 19721 ms  0xffb ret:0x7faa4c0c5700
 19721 ms  0xffb PR_Close()
 19721 ms  0xffb fd:0x7faa2ba4f430
 19721 ms     | 0xffb PK11_Encrypt()
 19721 ms     | 0xffb symkey:0x7faa4c0d3700
 19729 ms  0xffb PK11_DeriveWithFlags()
 19729 ms  0xffb basekey:0x7faa4c267d00
 19729 ms     | 0xffb PK11_DeriveWithTemplate()
 19729 ms  0xffb ret:0x7faa4cec5280
 19729 ms  0xffb PK11_DeriveWithFlags()
 19729 ms  0xffb basekey:0x7faa4c267d00
 19729 ms     | 0xffb PK11_DeriveWithTemplate()
 19729 ms  0xffb ret:0x7faa4cec5280
 19729 ms  0xffb PR_Close()
 19729 ms  0xffb fd:0x7faa2ba4fe20
 19729 ms     | 0xffb PK11_Encrypt()
 19729 ms     | 0xffb symkey:0x7faa4c6ecf00
           /* TID 0x1003 */
 19751 ms  0x1003 PR_Close()
 19751 ms  0x1003 fd:0x7faa2cf59d90
           /* TID 0xffb */
 19805 ms  0xffb SSL_ImportFD()
 19805 ms  0xffb ret:0x7faa480d3850
 19805 ms  0xffb SSL_AuthCertificateHook()
 19805 ms  0xffb fd:0x7faa480d3850
 19805 ms  0xffb ret:0x0
 19806 ms  0xffb PK11_Encrypt()
 19806 ms  0xffb symkey:0x7faa4c268080
 19806 ms  0xffb PR_Connect()
 19806 ms  0xffb fd:0x7faa480d3850
 19807 ms  0xffb SSL_ImportFD()
 19807 ms  0xffb ret:0x7faa2ba4fc40
 19807 ms  0xffb SSL_AuthCertificateHook()
 19807 ms  0xffb fd:0x7faa2ba4fc40
 19807 ms  0xffb ret:0x0
 19807 ms  0xffb PR_Connect()
 19807 ms  0xffb fd:0x7faa2ba4fc40
 19807 ms  0xffb PK11_Encrypt()
 19807 ms  0xffb symkey:0x7faa4c268080
 19822 ms  0xffb SECKEY_DestroyPrivateKey()
 19822 ms  0xffb privk:0x7faa2be51820::7faa2be51820  40 a7 2b 48                                      @.+H
 19822 ms  0xffb privk:0x7faa2be51820::7faa2be51820  e5 e5 e5 e5                                      ....
 19822 ms  0xffb SECKEY_DestroyPrivateKey()
 19822 ms  0xffb privk:0x7faa2ba96020::7faa2ba96020  10 3f 2b 48                                      .?+H
 19822 ms  0xffb privk:0x7faa2ba96020::7faa2ba96020  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
 19864 ms  0x1003 PR_Close()
 19864 ms  0x1003 fd:0x7faa447f3dc0
 19870 ms  0x1003 PR_Close()
 19870 ms  0x1003 fd:0x7faa447f3dc0
 19979 ms  0x1003 PR_Close()
 19979 ms  0x1003 fd:0x7faa2ba4fbe0
           /* TID 0xffb */
 20041 ms  0xffb PK11_Encrypt()
 20041 ms  0xffb symkey:0x7faa4c6e9400
 20057 ms  0xffb SSL_ImportFD()
 20058 ms  0xffb ret:0x7faa4bfe7040
 20058 ms  0xffb SSL_AuthCertificateHook()
 20058 ms  0xffb fd:0x7faa4bfe7040
 20058 ms  0xffb ret:0x0
 20058 ms  0xffb PR_Connect()
 20058 ms  0xffb fd:0x7faa4bfe7040
 20058 ms  0xffb SSL_ImportFD()
 20058 ms  0xffb ret:0x7faa4b63a400
 20058 ms  0xffb SSL_AuthCertificateHook()
 20058 ms  0xffb fd:0x7faa4b63a400
 20058 ms  0xffb ret:0x0
 20058 ms  0xffb PR_Connect()
 20058 ms  0xffb fd:0x7faa4b63a400
 20069 ms  0xffb SSL_ImportFD()
 20069 ms  0xffb ret:0x7faa2cf59df0
 20069 ms  0xffb SSL_AuthCertificateHook()
 20069 ms  0xffb fd:0x7faa2cf59df0
 20069 ms  0xffb ret:0x0
 20070 ms  0xffb PR_Connect()
 20070 ms  0xffb fd:0x7faa2cf59df0
 20070 ms  0xffb SSL_ImportFD()
 20070 ms  0xffb ret:0x7faa2ba4f430
 20070 ms  0xffb SSL_AuthCertificateHook()
 20070 ms  0xffb fd:0x7faa2ba4f430
 20070 ms  0xffb ret:0x0
 20071 ms  0xffb PR_Connect()
 20071 ms  0xffb fd:0x7faa2ba4f430
 20081 ms  0xffb SECKEY_CreateECPrivateKey()
 20081 ms  0xffb cx:0x7faa2b949b28
 20083 ms     | 0xffb EC_ValidatePublicKey()
 20083 ms     | 0xffb ret:0x0
 20083 ms  0xffb ret:0x7faa2b9d2020::7faa2b9d2020  b0 45 05 47                                      .E.G
 20083 ms  0xffb SECKEY_CreateECPrivateKey()
 20083 ms  0xffb cx:0x7faa2b949b28
 20085 ms     | 0xffb EC_ValidatePublicKey()
 20089 ms     | 0xffb ret:0x0
 20089 ms  0xffb ret:0x7faa2b9d4020::7faa2b9d4020  a0 fb 08 48                                      ...H
 20122 ms  0xffb SECKEY_CreateECPrivateKey()
 20122 ms  0xffb cx:0x7faa2b949988
 20123 ms     | 0xffb EC_ValidatePublicKey()
 20123 ms     | 0xffb ret:0x0
 20123 ms  0xffb ret:0x7faa2ba8a020::7faa2ba8a020  80 a8 1c 48                                      ...H
 20123 ms  0xffb SECKEY_CreateECPrivateKey()
 20123 ms  0xffb cx:0x7faa2b949988
 20125 ms     | 0xffb EC_ValidatePublicKey()
 20134 ms     | 0xffb ret:0x0
 20134 ms  0xffb ret:0x7faa2ba8d020::7faa2ba8d020  b0 3f 2b 48                                      .?+H
           /* TID 0x1003 */
 20197 ms  0x1003 PR_Close()
 20197 ms  0x1003 fd:0x7faa2cf59bb0
 20197 ms  0x1003 PR_Close()
 20197 ms  0x1003 fd:0x7faa4c207880
 20197 ms  0x1003 PR_Close()
 20197 ms  0x1003 fd:0x7faa4c207f70
 20197 ms  0x1003 PR_Close()
 20197 ms  0x1003 fd:0x7faa4c258490
 20197 ms  0x1003 PR_Close()
 20197 ms  0x1003 fd:0x7faa4c2584f0
 20197 ms  0x1003 PR_Close()
 20197 ms  0x1003 fd:0x7faa4c258580
 20198 ms  0x1003 PR_Close()
 20198 ms  0x1003 fd:0x7faa4c258670
 20198 ms  0x1003 PR_Close()
 20198 ms  0x1003 fd:0x7faa4c258b20
 20198 ms  0x1003 PR_Close()
 20198 ms  0x1003 fd:0x7faa4c258cd0
 20198 ms  0x1003 PR_Close()
 20198 ms  0x1003 fd:0x7faa4c2d9130
 20198 ms  0x1003 PR_Close()
 20198 ms  0x1003 fd:0x7faa4c2d9280
 20198 ms  0x1003 PR_Close()
 20198 ms  0x1003 fd:0x7faa4c2d9850
 20198 ms  0x1003 PR_Close()
 20198 ms  0x1003 fd:0x7faa4c2d98e0
 20198 ms  0x1003 PR_Close()
 20198 ms  0x1003 fd:0x7faa4c2d9970
 20198 ms  0x1003 PR_Close()
 20198 ms  0x1003 fd:0x7faa4c2d9af0
 20198 ms  0x1003 PR_Close()
 20198 ms  0x1003 fd:0x7faa4c2d9c10
 20199 ms  0x1003 PR_Close()
 20199 ms  0x1003 fd:0x7faa4c2d9dc0
 20199 ms  0x1003 PR_Close()
 20199 ms  0x1003 fd:0x7faa4c2d9ee0
 20199 ms  0x1003 PR_Close()
 20199 ms  0x1003 fd:0x7faa4c2d9f70
 20199 ms  0x1003 PR_Close()
 20199 ms  0x1003 fd:0x7faa4c62b8b0
 20199 ms  0x1003 PR_Close()
 20199 ms  0x1003 fd:0x7faa4d2a3df0
 20199 ms  0x1003 PR_Close()
 20199 ms  0x1003 fd:0x7faa4dc25d90
 20199 ms  0x1003 PR_Close()
 20199 ms  0x1003 fd:0x7faa4dcc9490
 20199 ms  0x1003 PR_Close()
 20199 ms  0x1003 fd:0x7faa4dcfc520
 20199 ms  0x1003 PR_Close()
 20199 ms  0x1003 fd:0x7faa4ed3bb20
 20199 ms  0x1003 PR_Close()
 20199 ms  0x1003 fd:0x7faa4ed3bc40
 20199 ms  0x1003 PR_Close()
 20199 ms  0x1003 fd:0x7faa4ed607f0
 20199 ms  0x1003 PR_Close()
 20199 ms  0x1003 fd:0x7faa4ed609a0
 20199 ms  0x1003 PR_Close()
 20199 ms  0x1003 fd:0x7faa4ed60a00
 20199 ms  0x1003 PR_Close()
 20199 ms  0x1003 fd:0x7faa4ed60ca0
 20206 ms  0x1003 PR_Close()
 20206 ms  0x1003 fd:0x7faa2cf59bb0
 20206 ms  0x1003 PR_Close()
 20206 ms  0x1003 fd:0x7faa4c207880
 20206 ms  0x1003 PR_Close()
 20206 ms  0x1003 fd:0x7faa4c207f70
 20206 ms  0x1003 PR_Close()
 20206 ms  0x1003 fd:0x7faa4c258490
 20206 ms  0x1003 PR_Close()
 20206 ms  0x1003 fd:0x7faa4c2584f0
 20206 ms  0x1003 PR_Close()
 20206 ms  0x1003 fd:0x7faa4c258580
 20206 ms  0x1003 PR_Close()
 20206 ms  0x1003 fd:0x7faa4c258670
 20206 ms  0x1003 PR_Close()
 20206 ms  0x1003 fd:0x7faa4c258b20
 20206 ms  0x1003 PR_Close()
 20206 ms  0x1003 fd:0x7faa4c258cd0
 20206 ms  0x1003 PR_Close()
 20206 ms  0x1003 fd:0x7faa4c2d9130
 20206 ms  0x1003 PR_Close()
 20206 ms  0x1003 fd:0x7faa4c2d9280
 20206 ms  0x1003 PR_Close()
 20206 ms  0x1003 fd:0x7faa4c2d9850
 20206 ms  0x1003 PR_Close()
 20206 ms  0x1003 fd:0x7faa4c2d98e0
 20207 ms  0x1003 PR_Close()
 20207 ms  0x1003 fd:0x7faa4c2d9970
 20207 ms  0x1003 PR_Close()
 20207 ms  0x1003 fd:0x7faa4c2d9af0
 20207 ms  0x1003 PR_Close()
 20207 ms  0x1003 fd:0x7faa4c2d9c10
 20207 ms  0x1003 PR_Close()
 20207 ms  0x1003 fd:0x7faa4c2d9dc0
 20207 ms  0x1003 PR_Close()
 20207 ms  0x1003 fd:0x7faa4c2d9ee0
 20207 ms  0x1003 PR_Close()
 20207 ms  0x1003 fd:0x7faa4c2d9f70
 20207 ms  0x1003 PR_Close()
 20207 ms  0x1003 fd:0x7faa4c62b8b0
 20207 ms  0x1003 PR_Close()
 20207 ms  0x1003 fd:0x7faa4d2a3df0
 20207 ms  0x1003 PR_Close()
 20207 ms  0x1003 fd:0x7faa4dc25d90
 20207 ms  0x1003 PR_Close()
 20207 ms  0x1003 fd:0x7faa4dcc9490
 20207 ms  0x1003 PR_Close()
 20207 ms  0x1003 fd:0x7faa4dcfc520
 20207 ms  0x1003 PR_Close()
 20207 ms  0x1003 fd:0x7faa4ed3bb20
 20207 ms  0x1003 PR_Close()
 20207 ms  0x1003 fd:0x7faa4ed3bc40
 20207 ms  0x1003 PR_Close()
 20207 ms  0x1003 fd:0x7faa4ed607f0
 20207 ms  0x1003 PR_Close()
 20207 ms  0x1003 fd:0x7faa4ed609a0
 20207 ms  0x1003 PR_Close()
 20207 ms  0x1003 fd:0x7faa4ed60a00
 20207 ms  0x1003 PR_Close()
 20207 ms  0x1003 fd:0x7faa4ed60ca0
 20207 ms  0x1003 PR_Close()
 20207 ms  0x1003 fd:0x7faa4ed6d190
 20207 ms  0x1003 PR_Close()
 20207 ms  0x1003 fd:0x7faa4ed6d5e0
 20207 ms  0x1003 PR_Close()
 20207 ms  0x1003 fd:0x7faa4ed6dbb0
 20209 ms  0x1003 PR_Close()
 20209 ms  0x1003 fd:0x7faa4ed6dd30
 20209 ms  0x1003 PR_Close()
 20209 ms  0x1003 fd:0x7faa4ed6dd90
 20209 ms  0x1003 PR_Close()
 20209 ms  0x1003 fd:0x7faa2cfdc070
 20209 ms  0x1003 PR_Close()
 20209 ms  0x1003 fd:0x7faa2cfdc0d0
 20209 ms  0x1003 PR_Close()
 20209 ms  0x1003 fd:0x7faa2cfdc130
 20209 ms  0x1003 PR_Close()
 20209 ms  0x1003 fd:0x7faa2cfdc190
 20209 ms  0x1003 PR_Close()
 20209 ms  0x1003 fd:0x7faa2cfdc1f0
 20209 ms  0x1003 PR_Close()
 20209 ms  0x1003 fd:0x7faa2cfdc250
 20209 ms  0x1003 PR_Close()
 20209 ms  0x1003 fd:0x7faa2cfdc2b0
 20209 ms  0x1003 PR_Close()
 20209 ms  0x1003 fd:0x7faa2cfdc310
 20209 ms  0x1003 PR_Close()
 20209 ms  0x1003 fd:0x7faa2cfdc370
 20210 ms  0x1003 PR_Close()
 20210 ms  0x1003 fd:0x7faa2cfdc3d0
 20210 ms  0x1003 PR_Close()
 20210 ms  0x1003 fd:0x7faa2cfdc430
 20210 ms  0x1003 PR_Close()
 20210 ms  0x1003 fd:0x7faa2cfdc490
 20210 ms  0x1003 PR_Close()
 20210 ms  0x1003 fd:0x7faa2cfdc4f0
 20210 ms  0x1003 PR_Close()
 20210 ms  0x1003 fd:0x7faa2cfdc550
           /* TID 0xffb */
 20273 ms  0xffb PK11_Encrypt()
 20273 ms  0xffb symkey:0x7faa4c6e9400
 20277 ms  0xffb SECKEY_CreateECPrivateKey()
 20277 ms  0xffb cx:0x7faa2cfef3e8
 20278 ms     | 0xffb EC_ValidatePublicKey()
 20278 ms     | 0xffb ret:0x0
 20278 ms  0xffb ret:0x7faa2ba93820::7faa2ba93820  80 4d 4a 48                                      .MJH
 20278 ms  0xffb SECKEY_CreateECPrivateKey()
 20278 ms  0xffb cx:0x7faa2cfef3e8
 20279 ms     | 0xffb EC_ValidatePublicKey()
 20281 ms     | 0xffb ret:0x0
 20282 ms  0xffb ret:0x7faa2ba95820::7faa2ba95820  a0 d6 d0 48                                      ...H
 20283 ms  0xffb SECKEY_CreateECPrivateKey()
 20283 ms  0xffb cx:0x7faa2cfef728
 20284 ms     | 0xffb EC_ValidatePublicKey()
 20284 ms     | 0xffb ret:0x0
 20284 ms  0xffb ret:0x7faa2ba9b020::7faa2ba9b020  f0 7b 07 4b                                      .{.K
 20284 ms  0xffb SECKEY_CreateECPrivateKey()
 20284 ms  0xffb cx:0x7faa2cfef728
 20285 ms     | 0xffb EC_ValidatePublicKey()
 20287 ms     | 0xffb ret:0x0
 20287 ms  0xffb ret:0x7faa2be52820::7faa2be52820  40 8c 1d 4b                                      @..K
           /* TID 0x1003 */
 20295 ms  0x1003 PR_Close()
 20295 ms  0x1003 fd:0x7faa4c207e50
 20298 ms  0x1003 PR_Close()
 20298 ms  0x1003 fd:0x7faa2cf59790
 20300 ms  0x1003 PR_Close()
 20300 ms  0x1003 fd:0x7faa2cf59790
           /* TID 0xffb */
 20319 ms  0xffb SECKEY_CreateECPrivateKey()
 20319 ms  0xffb cx:0x7faa2b949e68
 20320 ms     | 0xffb EC_ValidatePublicKey()
 20320 ms     | 0xffb ret:0x0
 20320 ms  0xffb ret:0x7faa2be53020::7faa2be53020  30 43 19 48                                      0C.H
 20320 ms  0xffb SECKEY_CreateECPrivateKey()
 20320 ms  0xffb cx:0x7faa2b949e68
 20320 ms     | 0xffb EC_ValidatePublicKey()
 20322 ms     | 0xffb ret:0x0
 20322 ms  0xffb ret:0x7faa2be56020::7faa2be56020  90 02 6a 4b                                      ..jK
 20329 ms  0xffb SECKEY_CreateECPrivateKey()
 20329 ms  0xffb cx:0x7faa2b949cc8
 20330 ms     | 0xffb EC_ValidatePublicKey()
 20330 ms     | 0xffb ret:0x0
 20330 ms  0xffb ret:0x7faa2be5c820::7faa2be5c820  d0 03 6a 4b                                      ..jK
 20330 ms  0xffb SECKEY_CreateECPrivateKey()
 20330 ms  0xffb cx:0x7faa2b949cc8
 20330 ms     | 0xffb EC_ValidatePublicKey()
 20332 ms     | 0xffb ret:0x0
 20332 ms  0xffb ret:0x7faa2be63020::7faa2be63020  90 07 6a 4b                                      ..jK
 20366 ms  SECKEY_ECParamsToKeySize()
 20366 ms  0xffb ret:0xff
 20366 ms  0xffb SECKEY_CreateECPrivateKey()
 20366 ms  0xffb cx:0x7faa2b949b28
 20367 ms     | 0xffb EC_ValidatePublicKey()
 20367 ms     | 0xffb ret:0x0
 20367 ms  0xffb ret:0x7faa2bebb820::7faa2bebb820  60 0a 6a 4b                                      `.jK
 20367 ms  0xffb PK11_PubDeriveWithKDF()
 20367 ms  0xffb seckey:0x7faa2bebb820
 20367 ms     | 0xffb EC_ValidatePublicKey()
 20367 ms     | 0xffb ret:0x0
 20368 ms  0xffb ret:0x7faa4c6c9f80
 20368 ms  0xffb PK11_DeriveWithFlags()
 20368 ms  0xffb basekey:0x7faa4c6c9f80
 20368 ms     | 0xffb PK11_DeriveWithTemplate()
 20368 ms  0xffb ret:0x7faa4c6ece00
 20368 ms  0xffb PK11_Derive()
 20368 ms  0xffb basekey:0x7faa4c6ece00
 20368 ms     | 0xffb PK11_DeriveWithTemplate()
 20368 ms  0xffb ret:0x7faa4d289c00
 20368 ms  0xffb SECKEY_DestroyPrivateKey()
 20368 ms  0xffb privk:0x7faa2bebb820::7faa2bebb820  60 0a 6a 4b                                      `.jK
 20368 ms  0xffb privk:0x7faa2bebb820::7faa2bebb820  e5 e5 e5 e5                                      ....
 20368 ms  0xffb PK11_Encrypt()
 20368 ms  0xffb symkey:0x7faa4cec6180
 20368 ms  0xffb SSL_AuthCertificateComplete()
 20368 ms  0xffb fd:0x7faa2ba4fc40
 20368 ms  0xffb err:0x0
 20368 ms  0xffb PK11_Encrypt()
 20368 ms  0xffb symkey:0x7faa4cec6180
           /* TID 0x1003 */
 20439 ms  0x1003 PR_Close()
 20439 ms  0x1003 fd:0x7faa4bfe7af0
 20442 ms  0x1003 PR_Close()
 20442 ms  0x1003 fd:0x7faa2ba4f820
           /* TID 0xffb */
 20470 ms  SECKEY_ECParamsToKeySize()
 20470 ms  0xffb ret:0xff
 20470 ms  0xffb SECKEY_CreateECPrivateKey()
 20470 ms  0xffb cx:0x7faa2b949988
 20471 ms     | 0xffb EC_ValidatePublicKey()
 20471 ms     | 0xffb ret:0x0
 20471 ms  0xffb ret:0x7faa2bec4820::7faa2bec4820  b0 0a 6a 4b                                      ..jK
 20471 ms  0xffb PK11_PubDeriveWithKDF()
 20471 ms  0xffb seckey:0x7faa2bec4820
 20471 ms     | 0xffb EC_ValidatePublicKey()
 20471 ms     | 0xffb ret:0x0
 20471 ms  0xffb ret:0x7faa4c6c9f80
 20471 ms  0xffb PK11_DeriveWithFlags()
 20471 ms  0xffb basekey:0x7faa4c6c9f80
 20471 ms     | 0xffb PK11_DeriveWithTemplate()
 20472 ms  0xffb ret:0x7faa4c267d00
 20472 ms  0xffb PK11_Derive()
 20472 ms  0xffb basekey:0x7faa4c267d00
 20472 ms     | 0xffb PK11_DeriveWithTemplate()
 20472 ms  0xffb ret:0x7faa4c267980
 20472 ms  0xffb SECKEY_DestroyPrivateKey()
 20472 ms  0xffb privk:0x7faa2bec4820::7faa2bec4820  b0 0a 6a 4b                                      ..jK
 20472 ms  0xffb privk:0x7faa2bec4820::7faa2bec4820  e5 e5 e5 e5                                      ....
 20472 ms  0xffb PK11_Encrypt()
 20472 ms  0xffb symkey:0x7faa4d288780
 20472 ms  0xffb SSL_AuthCertificateComplete()
 20472 ms  0xffb fd:0x7faa480d3850
 20472 ms  0xffb err:0x0
 20472 ms  0xffb PK11_Encrypt()
 20472 ms  0xffb symkey:0x7faa4d288780
 20495 ms  SECKEY_ECParamsToKeySize()
 20495 ms  0xffb ret:0x100
 20495 ms  0xffb SECKEY_CreateECPrivateKey()
 20495 ms  0xffb cx:0x7faa2cfef3e8
 20496 ms     | 0xffb EC_ValidatePublicKey()
 20501 ms     | 0xffb ret:0x0
 20501 ms  0xffb ret:0x7faa2bed3020::7faa2bed3020  a0 61 f0 4b                                      .a.K
 20501 ms  0xffb PK11_PubDeriveWithKDF()
 20501 ms  0xffb seckey:0x7faa2bed3020
 20501 ms     | 0xffb EC_ValidatePublicKey()
 20503 ms     | 0xffb ret:0x0
           /* TID 0x105e */
 20504 ms  0x105e PR_Close()
 20504 ms  0x105e fd:0x7faa4c2d9f40
           /* TID 0xffb */
 20507 ms  0xffb ret:0x7faa4c6c9f80
 20507 ms  0xffb PK11_DeriveWithFlags()
 20507 ms  0xffb basekey:0x7faa4c6c9f80
 20507 ms     | 0xffb PK11_DeriveWithTemplate()
 20507 ms  0xffb ret:0x7faa4c6ecf00
 20507 ms  0xffb PK11_Derive()
 20507 ms  0xffb basekey:0x7faa4c6ecf00
 20507 ms     | 0xffb PK11_DeriveWithTemplate()
 20507 ms  0xffb ret:0x7faa4cec5280
 20507 ms  0xffb SECKEY_DestroyPrivateKey()
 20507 ms  0xffb privk:0x7faa2bed3020::7faa2bed3020  a0 61 f0 4b                                      .a.K
 20507 ms  0xffb privk:0x7faa2bed3020::7faa2bed3020  e5 e5 e5 e5                                      ....
 20507 ms  0xffb PK11_Encrypt()
 20507 ms  0xffb symkey:0x7faa4cec5200
 20508 ms  0xffb SSL_AuthCertificateComplete()
 20508 ms  0xffb fd:0x7faa2cf59df0
 20508 ms  0xffb err:0x0
 20511 ms  SECKEY_ECParamsToKeySize()
 20511 ms  0xffb ret:0x100
 20511 ms  0xffb SECKEY_CreateECPrivateKey()
 20511 ms  0xffb cx:0x7faa2cfef728
 20511 ms     | 0xffb EC_ValidatePublicKey()
 20513 ms     | 0xffb ret:0x0
 20513 ms  0xffb ret:0x7faa2bed3820::7faa2bed3820  70 64 f0 4b                                      pd.K
 20513 ms  0xffb PK11_PubDeriveWithKDF()
 20513 ms  0xffb seckey:0x7faa2bed3820
 20513 ms     | 0xffb EC_ValidatePublicKey()
 20515 ms     | 0xffb ret:0x0
 20516 ms  0xffb ret:0x7faa4c6c9f80
 20516 ms  0xffb PK11_DeriveWithFlags()
 20516 ms  0xffb basekey:0x7faa4c6c9f80
 20516 ms     | 0xffb PK11_DeriveWithTemplate()
 20516 ms  0xffb ret:0x7faa4d288a80
 20516 ms  0xffb PK11_Derive()
 20516 ms  0xffb basekey:0x7faa4d288a80
 20516 ms     | 0xffb PK11_DeriveWithTemplate()
 20516 ms  0xffb ret:0x7faa4d288b00
 20516 ms  0xffb SECKEY_DestroyPrivateKey()
 20516 ms  0xffb privk:0x7faa2bed3820::7faa2bed3820  70 64 f0 4b                                      pd.K
 20516 ms  0xffb privk:0x7faa2bed3820::7faa2bed3820  e5 e5 e5 e5                                      ....
 20516 ms  0xffb PK11_Encrypt()
 20516 ms  0xffb symkey:0x7faa4cec5e80
 20520 ms  0xffb PK11_Encrypt()
 20520 ms  0xffb symkey:0x7faa4cec5200
 20521 ms  0xffb PK11_Encrypt()
 20521 ms  0xffb symkey:0x7faa4cec5200
 20521 ms  0xffb SSL_AuthCertificateComplete()
 20521 ms  0xffb fd:0x7faa2ba4f430
 20521 ms  0xffb err:0x0
 20521 ms  0xffb PK11_Encrypt()
 20521 ms  0xffb symkey:0x7faa4cec5e80
 20521 ms  0xffb PK11_Encrypt()
 20521 ms  0xffb symkey:0x7faa4cec5200
           /* TID 0x1003 */
 20544 ms  0x1003 PR_Close()
 20544 ms  0x1003 fd:0x7faa4bfe7cd0
 20549 ms  0x1003 PR_Close()
 20549 ms  0x1003 fd:0x7faa2ba4f640
 20559 ms  0x1003 PR_Close()
 20559 ms  0x1003 fd:0x7faa4bfe7cd0
           /* TID 0xffb */
 20585 ms  SECKEY_ECParamsToKeySize()
 20585 ms  0xffb ret:0xff
 20585 ms  0xffb SECKEY_CreateECPrivateKey()
 20585 ms  0xffb cx:0x7faa2b949e68
 20586 ms     | 0xffb EC_ValidatePublicKey()
 20586 ms     | 0xffb ret:0x0
 20586 ms  0xffb ret:0x7faa2cf18020::7faa2cf18020  a0 61 f0 4b                                      .a.K
 20586 ms  0xffb PK11_PubDeriveWithKDF()
 20586 ms  0xffb seckey:0x7faa2cf18020
 20586 ms     | 0xffb EC_ValidatePublicKey()
 20586 ms     | 0xffb ret:0x0
 20587 ms  0xffb ret:0x7faa4c6c9f80
 20587 ms  0xffb PK11_DeriveWithFlags()
 20587 ms  0xffb basekey:0x7faa4c6c9f80
 20587 ms     | 0xffb PK11_DeriveWithTemplate()
 20587 ms  0xffb ret:0x7faa4d289b00
 20587 ms  0xffb PK11_Derive()
 20587 ms  0xffb basekey:0x7faa4d289b00
 20587 ms     | 0xffb PK11_DeriveWithTemplate()
 20587 ms  0xffb ret:0x7faa4d289980
 20587 ms  0xffb SECKEY_DestroyPrivateKey()
 20587 ms  0xffb privk:0x7faa2cf18020::7faa2cf18020  a0 61 f0 4b                                      .a.K
 20587 ms  0xffb privk:0x7faa2cf18020::7faa2cf18020  e5 e5 e5 e5                                      ....
 20588 ms  0xffb PK11_Encrypt()
 20588 ms  0xffb symkey:0x7faa4cec5880
 20589 ms  0xffb SSL_AuthCertificateComplete()
 20589 ms  0xffb fd:0x7faa4b63a400
 20589 ms  0xffb err:0x0
 20589 ms  0xffb PK11_Encrypt()
 20589 ms  0xffb symkey:0x7faa4cec5880
 20606 ms  SECKEY_ECParamsToKeySize()
 20606 ms  0xffb ret:0xff
 20606 ms  0xffb SECKEY_CreateECPrivateKey()
 20606 ms  0xffb cx:0x7faa2b949cc8
 20606 ms     | 0xffb EC_ValidatePublicKey()
 20606 ms     | 0xffb ret:0x0
 20606 ms  0xffb ret:0x7faa2cf1a020::7faa2cf1a020  70 64 f0 4b                                      pd.K
 20606 ms  0xffb PK11_PubDeriveWithKDF()
 20606 ms  0xffb seckey:0x7faa2cf1a020
 20606 ms     | 0xffb EC_ValidatePublicKey()
 20606 ms     | 0xffb ret:0x0
 20607 ms  0xffb ret:0x7faa4c6c9f80
 20607 ms  0xffb PK11_DeriveWithFlags()
 20607 ms  0xffb basekey:0x7faa4c6c9f80
 20607 ms     | 0xffb PK11_DeriveWithTemplate()
 20607 ms  0xffb ret:0x7faa4c0d3700
 20607 ms  0xffb PK11_Derive()
 20607 ms  0xffb basekey:0x7faa4c0d3700
 20607 ms     | 0xffb PK11_DeriveWithTemplate()
 20607 ms  0xffb ret:0x7faa4c0c5700
 20607 ms  0xffb SECKEY_DestroyPrivateKey()
 20607 ms  0xffb privk:0x7faa2cf1a020::7faa2cf1a020  70 64 f0 4b                                      pd.K
 20607 ms  0xffb privk:0x7faa2cf1a020::7faa2cf1a020  e5 e5 e5 e5                                      ....
 20607 ms  0xffb PK11_Encrypt()
 20607 ms  0xffb symkey:0x7faa4c6edf80
 20609 ms  0xffb SSL_AuthCertificateComplete()
 20609 ms  0xffb fd:0x7faa4bfe7040
 20609 ms  0xffb err:0x0
 20609 ms  0xffb PK11_Encrypt()
 20609 ms  0xffb symkey:0x7faa4c6edf80
 20641 ms  0xffb SECKEY_DestroyPrivateKey()
 20641 ms  0xffb privk:0x7faa2b9d4020::7faa2b9d4020  a0 fb 08 48                                      ...H
 20641 ms  0xffb privk:0x7faa2b9d4020::7faa2b9d4020  e5 e5 e5 e5                                      ....
 20641 ms  0xffb SECKEY_DestroyPrivateKey()
 20641 ms  0xffb privk:0x7faa2b9d2020::7faa2b9d2020  b0 45 05 47                                      .E.G
 20641 ms  0xffb privk:0x7faa2b9d2020::7faa2b9d2020  e5 e5 e5 e5                                      ....
 20641 ms  0xffb PR_Close()
 20641 ms  0xffb fd:0x7faa2ba4fc40
 20641 ms     | 0xffb PK11_Encrypt()
 20641 ms     | 0xffb symkey:0x7faa4cec6180
 20714 ms  0xffb SECKEY_DestroyPrivateKey()
 20714 ms  0xffb privk:0x7faa2ba95820::7faa2ba95820  a0 d6 d0 48                                      ...H
 20714 ms  0xffb privk:0x7faa2ba95820::7faa2ba95820  e5 e5 e5 e5                                      ....
 20714 ms  0xffb SECKEY_DestroyPrivateKey()
 20714 ms  0xffb privk:0x7faa2ba93820::7faa2ba93820  80 4d 4a 48                                      .MJH
 20714 ms  0xffb privk:0x7faa2ba93820::7faa2ba93820  e5 e5 e5 e5                                      ....
 20714 ms  0xffb PK11_Encrypt()
 20714 ms  0xffb symkey:0x7faa4cec5200
 20725 ms  0xffb SECKEY_DestroyPrivateKey()
 20725 ms  0xffb privk:0x7faa2be52820::7faa2be52820  40 8c 1d 4b                                      @..K
 20725 ms  0xffb privk:0x7faa2be52820::7faa2be52820  e5 e5 e5 e5                                      ....
 20725 ms  0xffb SECKEY_DestroyPrivateKey()
 20725 ms  0xffb privk:0x7faa2ba9b020::7faa2ba9b020  f0 7b 07 4b                                      .{.K
 20725 ms  0xffb privk:0x7faa2ba9b020::7faa2ba9b020  e5 e5 e5 e5                                      ....
 20725 ms  0xffb PR_Close()
 20725 ms  0xffb fd:0x7faa2ba4f430
 20725 ms     | 0xffb PK11_Encrypt()
 20725 ms     | 0xffb symkey:0x7faa4cec5e80
           /* TID 0x1003 */
 20728 ms  0x1003 PR_Close()
 20728 ms  0x1003 fd:0x7faa2ba4f430
 20728 ms  0x1003 PR_Close()
 20728 ms  0x1003 fd:0x7faa2cf591f0
           /* TID 0x105e */
 20772 ms  0x105e PR_Close()
 20772 ms  0x105e fd:0x7faa2ba4f280
 20775 ms  0x105e PR_Close()
 20775 ms  0x105e fd:0x7faa2ba4f280
           /* TID 0x1003 */
 20784 ms  0x1003 PR_Close()
 20784 ms  0x1003 fd:0x7faa2ba4f430
           /* TID 0xffb */
 20793 ms  0xffb PK11_Encrypt()
 20793 ms  0xffb symkey:0x7faa4c6bae80
 20808 ms  0xffb SECKEY_DestroyPrivateKey()
 20808 ms  0xffb privk:0x7faa2ba8d020::7faa2ba8d020  b0 3f 2b 48                                      .?+H
 20808 ms  0xffb privk:0x7faa2ba8d020::7faa2ba8d020  e5 e5 e5 e5                                      ....
 20808 ms  0xffb SECKEY_DestroyPrivateKey()
 20808 ms  0xffb privk:0x7faa2ba8a020::7faa2ba8a020  80 a8 1c 48                                      ...H
 20808 ms  0xffb privk:0x7faa2ba8a020::7faa2ba8a020  e5 e5 e5 e5                                      ....
 20808 ms  0xffb PR_Close()
 20808 ms  0xffb fd:0x7faa480d3850
 20809 ms     | 0xffb PK11_Encrypt()
 20809 ms     | 0xffb symkey:0x7faa4d288780
           /* TID 0x1003 */
 20810 ms  0x1003 PR_Close()
 20810 ms  0x1003 fd:0x7faa2ba4f430
           /* TID 0xffb */
 20814 ms  0xffb PK11_Encrypt()
 20814 ms  0xffb symkey:0x7faa4c6bae80
 20816 ms  0xffb PK11_Encrypt()
 20816 ms  0xffb symkey:0x7faa4c6bae80
 20817 ms  0xffb PK11_Encrypt()
 20817 ms  0xffb symkey:0x7faa4c6bae80
           /* TID 0x1003 */
 20842 ms  0x1003 PR_Close()
 20842 ms  0x1003 fd:0x7faa2b6a7430
 20842 ms  0x1003 PR_Close()
 20842 ms  0x1003 fd:0x7faa2b6a7640
 20844 ms  0x1003 PR_Close()
 20844 ms  0x1003 fd:0x7faa2b6a7430
           /* TID 0xffb */
 20849 ms  0xffb SECKEY_DestroyPrivateKey()
 20849 ms  0xffb privk:0x7faa2be56020::7faa2be56020  90 02 6a 4b                                      ..jK
 20849 ms  0xffb privk:0x7faa2be56020::7faa2be56020  e5 e5 e5 e5                                      ....
 20849 ms  0xffb SECKEY_DestroyPrivateKey()
 20849 ms  0xffb privk:0x7faa2be53020::7faa2be53020  30 43 19 48                                      0C.H
 20849 ms  0xffb privk:0x7faa2be53020::7faa2be53020  e5 e5 e5 e5                                      ....
 20849 ms  0xffb PR_Close()
 20849 ms  0xffb fd:0x7faa4b63a400
 20849 ms     | 0xffb PK11_Encrypt()
 20849 ms     | 0xffb symkey:0x7faa4cec5880
 20857 ms  0xffb PK11_Encrypt()
 20857 ms  0xffb symkey:0x7faa4c6bae80
           /* TID 0x1003 */
 20869 ms  0x1003 PR_Close()
 20869 ms  0x1003 fd:0x7faa2b6a7790
           /* TID 0xffb */
 20878 ms  0xffb SECKEY_DestroyPrivateKey()
 20878 ms  0xffb privk:0x7faa2be63020::7faa2be63020  90 07 6a 4b                                      ..jK
 20878 ms  0xffb privk:0x7faa2be63020::7faa2be63020  e5 e5 e5 e5                                      ....
 20879 ms  0xffb SECKEY_DestroyPrivateKey()
 20879 ms  0xffb privk:0x7faa2be5c820::7faa2be5c820  d0 03 6a 4b                                      ..jK
 20879 ms  0xffb privk:0x7faa2be5c820::7faa2be5c820  e5 e5 e5 e5                                      ....
 20879 ms  0xffb PR_Close()
 20879 ms  0xffb fd:0x7faa4bfe7040
 20879 ms     | 0xffb PK11_Encrypt()
 20879 ms     | 0xffb symkey:0x7faa4c6edf80
           /* TID 0x1003 */
 20923 ms  0x1003 PR_Close()
 20923 ms  0x1003 fd:0x7faa2b6a7550
 20923 ms  0x1003 PR_Close()
 20923 ms  0x1003 fd:0x7faa2b6a7bb0
 21013 ms  0x1003 PR_Close()
 21013 ms  0x1003 fd:0x7faa2b6a7550
 21074 ms  0x1003 PR_Close()
 21074 ms  0x1003 fd:0x7faa2b6a75e0
 21152 ms  0x1003 PR_Close()
 21152 ms  0x1003 fd:0x7faa2b6a7130
 21156 ms  0x1003 PR_Close()
 21156 ms  0x1003 fd:0x7faa2b6a70d0
 21353 ms  0x1003 PR_Close()
 21353 ms  0x1003 fd:0x7faa2b6a70d0
 21353 ms  0x1003 PR_Close()
 21353 ms  0x1003 fd:0x7faa2b6a7550
 21353 ms  0x1003 PR_Close()
 21353 ms  0x1003 fd:0x7faa2b6a7c10
 21353 ms  0x1003 PR_Close()
 21353 ms  0x1003 fd:0x7faa2b6a7d00
           /* TID 0xffb */
 21359 ms  0xffb PK11_Encrypt()
 21359 ms  0xffb symkey:0x7faa41246680
 21373 ms  0xffb PK11_Encrypt()
 21373 ms  0xffb symkey:0x7faa4128e080
           /* TID 0x1003 */
 21379 ms  0x1003 PR_Close()
 21379 ms  0x1003 fd:0x7faa2b6a7c70
 21382 ms  0x1003 PR_Close()
 21382 ms  0x1003 fd:0x7faa2b6a7c70
 21386 ms  0x1003 PR_Close()
 21386 ms  0x1003 fd:0x7faa2b6a7550
           /* TID 0xffb */
 21412 ms  0xffb PR_Connect()
 21412 ms  0xffb fd:0x7faa2b6a79d0
 21413 ms  0xffb PR_Connect()
 21413 ms  0xffb fd:0x7faa2b6a73d0
 21437 ms  0xffb SSL_ImportFD()
 21437 ms  0xffb ret:0x7faa2b6a75b0
 21437 ms  0xffb SSL_AuthCertificateHook()
 21437 ms  0xffb fd:0x7faa2b6a75b0
 21437 ms  0xffb ret:0x0
 21437 ms  0xffb PR_Connect()
 21437 ms  0xffb fd:0x7faa2b6a75b0
 21437 ms  0xffb SSL_ImportFD()
 21437 ms  0xffb ret:0x7faa2b6a7250
 21437 ms  0xffb SSL_AuthCertificateHook()
 21437 ms  0xffb fd:0x7faa2b6a7250
 21437 ms  0xffb ret:0x0
 21437 ms  0xffb PR_Connect()
 21437 ms  0xffb fd:0x7faa2b6a7250
           /* TID 0x1003 */
 21447 ms  0x1003 PR_Close()
 21447 ms  0x1003 fd:0x7faa2b6a7070
 21450 ms  0x1003 PR_Close()
 21450 ms  0x1003 fd:0x7faa2b6a7eb0
           /* TID 0xffb */
 21451 ms  0xffb PK11_Encrypt()
 21451 ms  0xffb symkey:0x7faa48781600
 21603 ms  0xffb PR_Close()
 21603 ms  0xffb fd:0x7faa447ec1c0
 21604 ms     | 0xffb PK11_Encrypt()
 21604 ms     | 0xffb symkey:0x7faa440e6700
 21607 ms  0xffb PR_Close()
 21607 ms  0xffb fd:0x7faa445bd700
 21607 ms     | 0xffb PK11_Encrypt()
 21607 ms     | 0xffb symkey:0x7faa48781600
           /* TID 0x1003 */
 21615 ms  0x1003 PR_Close()
 21615 ms  0x1003 fd:0x7faa2b6a7070
           /* TID 0xffb */
 21633 ms  0xffb PK11_Encrypt()
 21633 ms  0xffb symkey:0x7faa48dacd80
 21635 ms  0xffb PK11_Encrypt()
 21635 ms  0xffb symkey:0x7faa48dacd80
 21646 ms  0xffb PK11_Encrypt()
 21646 ms  0xffb symkey:0x7faa48dacd80
 21646 ms  0xffb PK11_Encrypt()
 21646 ms  0xffb symkey:0x7faa48dacd80
 21646 ms  0xffb PK11_Encrypt()
 21646 ms  0xffb symkey:0x7faa48dacd80
 21647 ms  0xffb PK11_Encrypt()
 21647 ms  0xffb symkey:0x7faa48dacd80
 21655 ms  0xffb SSL_ImportFD()
 21655 ms  0xffb ret:0x7faa2b6a7760
 21655 ms  0xffb SSL_AuthCertificateHook()
 21655 ms  0xffb fd:0x7faa2b6a7760
 21655 ms  0xffb ret:0x0
 21655 ms  0xffb PR_Connect()
 21655 ms  0xffb fd:0x7faa2b6a7760
 21655 ms  0xffb SSL_ImportFD()
 21655 ms  0xffb ret:0x7faa2b6a7b80
 21655 ms  0xffb SSL_AuthCertificateHook()
 21655 ms  0xffb fd:0x7faa2b6a7b80
 21655 ms  0xffb ret:0x0
 21655 ms  0xffb PR_Connect()
 21655 ms  0xffb fd:0x7faa2b6a7b80
 21655 ms  0xffb SSL_ImportFD()
 21655 ms  0xffb ret:0x7faa2ba4f430
 21655 ms  0xffb SSL_AuthCertificateHook()
 21655 ms  0xffb fd:0x7faa2ba4f430
 21655 ms  0xffb ret:0x0
 21655 ms  0xffb PR_Connect()
 21655 ms  0xffb fd:0x7faa2ba4f430
 21655 ms  0xffb SSL_ImportFD()
 21655 ms  0xffb ret:0x7faa2ba4f5e0
 21655 ms  0xffb SSL_AuthCertificateHook()
 21655 ms  0xffb fd:0x7faa2ba4f5e0
 21655 ms  0xffb ret:0x0
 21655 ms  0xffb PR_Connect()
 21655 ms  0xffb fd:0x7faa2ba4f5e0
 21656 ms  0xffb SSL_ImportFD()
 21656 ms  0xffb ret:0x7faa2ba4f6d0
 21656 ms  0xffb SSL_AuthCertificateHook()
 21656 ms  0xffb fd:0x7faa2ba4f6d0
 21656 ms  0xffb ret:0x0
 21656 ms  0xffb PR_Connect()
 21656 ms  0xffb fd:0x7faa2ba4f6d0
 21656 ms  0xffb SSL_ImportFD()
 21656 ms  0xffb ret:0x7faa2ba4f700
 21656 ms  0xffb SSL_AuthCertificateHook()
 21656 ms  0xffb fd:0x7faa2ba4f700
 21656 ms  0xffb ret:0x0
 21656 ms  0xffb PR_Connect()
 21656 ms  0xffb fd:0x7faa2ba4f700
           /* TID 0x1003 */
 21658 ms  0x1003 PR_Close()
 21658 ms  0x1003 fd:0x7faa2b6a7670
 21662 ms  0x1003 PR_Close()
 21662 ms  0x1003 fd:0x7faa2b6a7910
           /* TID 0xffb */
 21668 ms  0xffb PR_Connect()
 21668 ms  0xffb fd:0x7faa4b63adf0
 21668 ms  0xffb PK11_Encrypt()
 21668 ms  0xffb symkey:0x7faa48dacd80
 21668 ms  0xffb PK11_Encrypt()
 21668 ms  0xffb symkey:0x7faa48dacd80
 21670 ms  0xffb PR_Close()
 21670 ms  0xffb fd:0x7faa4467fa30
 21670 ms     | 0xffb PK11_Encrypt()
 21670 ms     | 0xffb symkey:0x7faa4126b880
 21674 ms  0xffb PR_Close()
 21674 ms  0xffb fd:0x7faa447f3df0
 21674 ms     | 0xffb PK11_Encrypt()
 21674 ms     | 0xffb symkey:0x7faa41285480
           /* TID 0x1003 */
 21675 ms  0x1003 PR_Close()
 21675 ms  0x1003 fd:0x7faa4467fac0
           /* TID 0xffb */
 21687 ms  0xffb SSL_ImportFD()
 21687 ms  0xffb ret:0x7faa447024f0
 21687 ms  0xffb SSL_AuthCertificateHook()
 21687 ms  0xffb fd:0x7faa447024f0
 21687 ms  0xffb ret:0x0
 21687 ms  0xffb PR_Connect()
 21687 ms  0xffb fd:0x7faa447024f0
 21687 ms  0xffb SSL_ImportFD()
 21687 ms  0xffb ret:0x7faa4467fa30
 21687 ms  0xffb SSL_AuthCertificateHook()
 21687 ms  0xffb fd:0x7faa4467fa30
 21687 ms  0xffb ret:0x0
 21687 ms  0xffb PR_Connect()
 21687 ms  0xffb fd:0x7faa4467fa30
 21706 ms  0xffb SECKEY_CreateECPrivateKey()
 21706 ms  0xffb cx:0x7faa2b949e68
 21707 ms     | 0xffb EC_ValidatePublicKey()
 21707 ms     | 0xffb ret:0x0
 21707 ms  0xffb ret:0x7faa2be51820::7faa2be51820  60 30 da 48                                      `0.H
 21707 ms  0xffb SECKEY_CreateECPrivateKey()
 21707 ms  0xffb cx:0x7faa2b949e68
 21708 ms     | 0xffb EC_ValidatePublicKey()
 21709 ms     | 0xffb ret:0x0
 21709 ms  0xffb ret:0x7faa2be54020::7faa2be54020  80 83 1d 4b                                      ...K
 21709 ms  0xffb SECKEY_CreateECPrivateKey()
 21709 ms  0xffb cx:0x7faa2b949cc8
 21714 ms     | 0xffb EC_ValidatePublicKey()
 21714 ms     | 0xffb ret:0x0
 21714 ms  0xffb ret:0x7faa2be59820::7faa2be59820  40 8c 1d 4b                                      @..K
 21714 ms  0xffb SECKEY_CreateECPrivateKey()
 21714 ms  0xffb cx:0x7faa2b949cc8
 21715 ms     | 0xffb EC_ValidatePublicKey()
 21716 ms     | 0xffb ret:0x0
 21716 ms  0xffb ret:0x7faa2be5c820::7faa2be5c820  e0 02 6a 4b                                      ..jK
 21720 ms  0xffb SECKEY_CreateECPrivateKey()
 21720 ms  0xffb cx:0x7faa2cff12c8
 21720 ms     | 0xffb EC_ValidatePublicKey()
 21720 ms     | 0xffb ret:0x0
 21720 ms  0xffb ret:0x7faa2be63820::7faa2be63820  00 06 6a 4b                                      ..jK
 21720 ms  0xffb SECKEY_CreateECPrivateKey()
 21720 ms  0xffb cx:0x7faa2cff12c8
 21721 ms     | 0xffb EC_ValidatePublicKey()
 21722 ms     | 0xffb ret:0x0
 21722 ms  0xffb ret:0x7faa2be6a020::7faa2be6a020  e0 07 6a 4b                                      ..jK
 21723 ms  0xffb SECKEY_CreateECPrivateKey()
 21723 ms  0xffb cx:0x7faa2cff1128
 21723 ms     | 0xffb EC_ValidatePublicKey()
 21723 ms     | 0xffb ret:0x0
 21723 ms  0xffb ret:0x7faa2cf10020::7faa2cf10020  c0 09 6a 4b                                      ..jK
 21723 ms  0xffb SECKEY_CreateECPrivateKey()
 21723 ms  0xffb cx:0x7faa2cff1128
 21724 ms     | 0xffb EC_ValidatePublicKey()
 21725 ms     | 0xffb ret:0x0
 21725 ms  0xffb ret:0x7faa2cf17820::7faa2cf17820  90 0c 6a 4b                                      ..jK
 21726 ms  0xffb SECKEY_CreateECPrivateKey()
 21726 ms  0xffb cx:0x7faa2cff0f88
 21726 ms     | 0xffb EC_ValidatePublicKey()
 21726 ms     | 0xffb ret:0x0
 21726 ms  0xffb ret:0x7faa2cf1a020::7faa2cf1a020  90 62 f0 4b                                      .b.K
 21726 ms  0xffb SECKEY_CreateECPrivateKey()
 21726 ms  0xffb cx:0x7faa2cff0f88
 21727 ms     | 0xffb EC_ValidatePublicKey()
 21728 ms     | 0xffb ret:0x0
 21728 ms  0xffb ret:0x7faa2cf1c820::7faa2cf1c820  10 65 f0 4b                                      .e.K
 21729 ms  0xffb SECKEY_CreateECPrivateKey()
 21729 ms  0xffb cx:0x7faa2cfef728
 21729 ms     | 0xffb EC_ValidatePublicKey()
 21729 ms     | 0xffb ret:0x0
 21729 ms  0xffb ret:0x7faa2d162020::7faa2d162020  50 66 f0 4b                                      Pf.K
 21729 ms  0xffb SECKEY_CreateECPrivateKey()
 21729 ms  0xffb cx:0x7faa2cfef728
 21730 ms     | 0xffb EC_ValidatePublicKey()
 21731 ms     | 0xffb ret:0x0
 21731 ms  0xffb ret:0x7faa3fffc820::7faa3fffc820  c0 69 f0 4b                                      .i.K
 21732 ms  0xffb PR_Close()
 21732 ms  0xffb fd:0x7faa447f36a0
 21732 ms     | 0xffb PK11_Encrypt()
 21732 ms     | 0xffb symkey:0x7faa4126bc80
           /* TID 0x1003 */
 21736 ms  0x1003 PR_Close()
 21736 ms  0x1003 fd:0x7faa4467f940
 21740 ms  0x1003 PR_Close()
 21740 ms  0x1003 fd:0x7faa4467f940
           /* TID 0xffb */
 21747 ms  0xffb PK11_Encrypt()
 21747 ms  0xffb symkey:0x7faa48dacd80
 21747 ms  0xffb PK11_Encrypt()
 21747 ms  0xffb symkey:0x7faa48dacd80
           /* TID 0x1003 */
 21751 ms  0x1003 PR_Close()
 21751 ms  0x1003 fd:0x7faa4bfe7d90
 21753 ms  0x1003 PR_Close()
 21753 ms  0x1003 fd:0x7faa4bfe7d90
           /* TID 0xffb */
 21760 ms  0xffb PR_Close()
 21760 ms  0xffb fd:0x7faa4701fee0
 21764 ms  0xffb PR_Close()
 21764 ms  0xffb fd:0x7faa447f33d0
 21764 ms     | 0xffb PK11_Encrypt()
 21764 ms     | 0xffb symkey:0x7faa3f236080
 21768 ms  SECKEY_ECParamsToKeySize()
 21769 ms  0xffb ret:0x100
 21769 ms  0xffb SECKEY_CreateECPrivateKey()
 21769 ms  0xffb cx:0x7faa2b949e68
 21769 ms     | 0xffb EC_ValidatePublicKey()
 21771 ms     | 0xffb ret:0x0
 21771 ms  0xffb ret:0x7faa434a8020::7faa434a8020  60 40 f8 4b                                      `@.K
 21771 ms  0xffb PK11_PubDeriveWithKDF()
 21771 ms  0xffb seckey:0x7faa434a8020
 21771 ms     | 0xffb EC_ValidatePublicKey()
 21772 ms     | 0xffb ret:0x0
 21774 ms  0xffb ret:0x7faa412c3800
 21774 ms  0xffb PK11_DeriveWithFlags()
 21774 ms  0xffb basekey:0x7faa412c3800
 21774 ms     | 0xffb PK11_DeriveWithTemplate()
 21774 ms  0xffb ret:0x7faa3ef0f500
 21774 ms  0xffb PK11_Derive()
 21774 ms  0xffb basekey:0x7faa3ef0f500
 21774 ms     | 0xffb PK11_DeriveWithTemplate()
 21774 ms  0xffb ret:0x7faa49062c00
 21774 ms  0xffb SECKEY_DestroyPrivateKey()
 21774 ms  0xffb privk:0x7faa434a8020::7faa434a8020  60 40 f8 4b                                      `@.K
 21774 ms  0xffb privk:0x7faa434a8020::7faa434a8020  e5 e5 e5 e5                                      ....
 21774 ms  0xffb PK11_Encrypt()
 21774 ms  0xffb symkey:0x7faa3f28c700
 21776 ms  0xffb PR_Close()
 21776 ms  0xffb fd:0x7faa470535e0
 21778 ms  SECKEY_ECParamsToKeySize()
 21778 ms  0xffb ret:0x100
 21778 ms  0xffb SECKEY_CreateECPrivateKey()
 21778 ms  0xffb cx:0x7faa2b949cc8
 21779 ms     | 0xffb EC_ValidatePublicKey()
 21781 ms     | 0xffb ret:0x0
 21781 ms  0xffb ret:0x7faa434ab020::7faa434ab020  e0 42 f8 4b                                      .B.K
 21781 ms  0xffb PK11_PubDeriveWithKDF()
 21781 ms  0xffb seckey:0x7faa434ab020
 21781 ms     | 0xffb EC_ValidatePublicKey()
 21783 ms     | 0xffb ret:0x0
 21786 ms  0xffb ret:0x7faa482aec00
 21786 ms  0xffb PK11_DeriveWithFlags()
 21786 ms  0xffb basekey:0x7faa482aec00
 21787 ms     | 0xffb PK11_DeriveWithTemplate()
 21787 ms  0xffb ret:0x7faa3ffc5f00
 21787 ms  0xffb PK11_Derive()
 21787 ms  0xffb basekey:0x7faa3ffc5f00
 21787 ms     | 0xffb PK11_DeriveWithTemplate()
 21787 ms  0xffb ret:0x7faa412c3800
 21787 ms  0xffb SECKEY_DestroyPrivateKey()
 21787 ms  0xffb privk:0x7faa434ab020::7faa434ab020  e0 42 f8 4b                                      .B.K
 21787 ms  0xffb privk:0x7faa434ab020::7faa434ab020  e5 e5 e5 e5                                      ....
 21787 ms  0xffb PK11_Encrypt()
 21787 ms  0xffb symkey:0x7faa490c3a80
 21788 ms  SECKEY_ECParamsToKeySize()
 21788 ms  0xffb ret:0x100
 21788 ms  0xffb SECKEY_CreateECPrivateKey()
 21788 ms  0xffb cx:0x7faa2cff12c8
 21789 ms     | 0xffb EC_ValidatePublicKey()
 21790 ms     | 0xffb ret:0x0
 21791 ms  0xffb ret:0x7faa44304820::7faa44304820  b0 45 f8 4b                                      .E.K
 21791 ms  0xffb PK11_PubDeriveWithKDF()
 21791 ms  0xffb seckey:0x7faa44304820
 21791 ms     | 0xffb EC_ValidatePublicKey()
 21792 ms     | 0xffb ret:0x0
 21793 ms  0xffb ret:0x7faa482aec00
 21793 ms  0xffb PK11_DeriveWithFlags()
 21793 ms  0xffb basekey:0x7faa482aec00
 21793 ms     | 0xffb PK11_DeriveWithTemplate()
 21794 ms  0xffb ret:0x7faa49062880
 21794 ms  0xffb PK11_Derive()
 21794 ms  0xffb basekey:0x7faa49062880
 21794 ms     | 0xffb PK11_DeriveWithTemplate()
 21794 ms  0xffb ret:0x7faa4128f080
 21794 ms  0xffb SECKEY_DestroyPrivateKey()
 21794 ms  0xffb privk:0x7faa44304820::7faa44304820  b0 45 f8 4b                                      .E.K
 21794 ms  0xffb privk:0x7faa44304820::7faa44304820  e5 e5 e5 e5                                      ....
 21794 ms  0xffb PK11_Encrypt()
 21794 ms  0xffb symkey:0x7faa49062c80
 21795 ms  0xffb SECKEY_CreateECPrivateKey()
 21795 ms  0xffb cx:0x7faa2b949b28
 21795 ms     | 0xffb EC_ValidatePublicKey()
 21795 ms     | 0xffb ret:0x0
 21795 ms  0xffb ret:0x7faa44304820::7faa44304820  10 45 f8 4b                                      .E.K
 21795 ms  0xffb SECKEY_CreateECPrivateKey()
 21795 ms  0xffb cx:0x7faa2b949b28
 21796 ms     | 0xffb EC_ValidatePublicKey()
 21797 ms     | 0xffb ret:0x0
 21797 ms  0xffb ret:0x7faa446a7020::7faa446a7020  f0 46 f8 4b                                      .F.K
 21798 ms  SECKEY_ECParamsToKeySize()
 21798 ms  0xffb ret:0x100
 21798 ms  0xffb SECKEY_CreateECPrivateKey()
 21798 ms  0xffb cx:0x7faa2cfef728
 21798 ms     | 0xffb EC_ValidatePublicKey()
 21800 ms     | 0xffb ret:0x0
 21800 ms  0xffb ret:0x7faa44796020::7faa44796020  60 4a f8 4b                                      `J.K
 21800 ms  0xffb PK11_PubDeriveWithKDF()
 21800 ms  0xffb seckey:0x7faa44796020
 21800 ms     | 0xffb EC_ValidatePublicKey()
 21806 ms     | 0xffb ret:0x0
 21808 ms  0xffb ret:0x7faa482aec00
 21808 ms  0xffb PK11_DeriveWithFlags()
 21808 ms  0xffb basekey:0x7faa482aec00
 21808 ms     | 0xffb PK11_DeriveWithTemplate()
 21808 ms  0xffb ret:0x7faa4126ba00
 21808 ms  0xffb PK11_Derive()
 21808 ms  0xffb basekey:0x7faa4126ba00
 21808 ms     | 0xffb PK11_DeriveWithTemplate()
 21808 ms  0xffb ret:0x7faa41285280
 21808 ms  0xffb SECKEY_DestroyPrivateKey()
 21808 ms  0xffb privk:0x7faa44796020::7faa44796020  60 4a f8 4b                                      `J.K
 21808 ms  0xffb privk:0x7faa44796020::7faa44796020  e5 e5 e5 e5                                      ....
 21808 ms  0xffb PK11_Encrypt()
 21808 ms  0xffb symkey:0x7faa4126bb00
 21809 ms  SECKEY_ECParamsToKeySize()
 21809 ms  0xffb ret:0x100
 21809 ms  0xffb SECKEY_CreateECPrivateKey()
 21809 ms  0xffb cx:0x7faa2cff1128
 21809 ms     | 0xffb EC_ValidatePublicKey()
 21811 ms     | 0xffb ret:0x0
 21811 ms  0xffb ret:0x7faa46f31820::7faa46f31820  70 4e f8 4b                                      pN.K
 21811 ms  0xffb PK11_PubDeriveWithKDF()
 21811 ms  0xffb seckey:0x7faa46f31820
 21811 ms     | 0xffb EC_ValidatePublicKey()
 21812 ms     | 0xffb ret:0x0
 21814 ms  0xffb ret:0x7faa482aec00
 21814 ms  0xffb PK11_DeriveWithFlags()
 21814 ms  0xffb basekey:0x7faa482aec00
 21814 ms     | 0xffb PK11_DeriveWithTemplate()
 21814 ms  0xffb ret:0x7faa41285200
 21814 ms  0xffb PK11_Derive()
 21814 ms  0xffb basekey:0x7faa41285200
 21814 ms     | 0xffb PK11_DeriveWithTemplate()
 21814 ms  0xffb ret:0x7faa4126b500
 21814 ms  0xffb SECKEY_DestroyPrivateKey()
 21814 ms  0xffb privk:0x7faa46f31820::7faa46f31820  70 4e f8 4b                                      pN.K
 21814 ms  0xffb privk:0x7faa46f31820::7faa46f31820  e5 e5 e5 e5                                      ....
 21814 ms  0xffb PK11_Encrypt()
 21814 ms  0xffb symkey:0x7faa41285300
 21815 ms  SECKEY_ECParamsToKeySize()
 21815 ms  0xffb ret:0x100
 21816 ms  0xffb SECKEY_CreateECPrivateKey()
 21816 ms  0xffb cx:0x7faa2cff0f88
 21816 ms     | 0xffb EC_ValidatePublicKey()
 21818 ms     | 0xffb ret:0x0
 21818 ms  0xffb ret:0x7faa480e7020::7faa480e7020  90 a2 02 4c                                      ...L
 21818 ms  0xffb PK11_PubDeriveWithKDF()
 21818 ms  0xffb seckey:0x7faa480e7020
 21818 ms     | 0xffb EC_ValidatePublicKey()
 21819 ms     | 0xffb ret:0x0
 21826 ms  0xffb ret:0x7faa482aec00
 21826 ms  0xffb PK11_DeriveWithFlags()
 21826 ms  0xffb basekey:0x7faa482aec00
 21826 ms     | 0xffb PK11_DeriveWithTemplate()
 21826 ms  0xffb ret:0x7faa4126b480
 21826 ms  0xffb PK11_Derive()
 21826 ms  0xffb basekey:0x7faa4126b480
 21826 ms     | 0xffb PK11_DeriveWithTemplate()
 21826 ms  0xffb ret:0x7faa48acc280
 21826 ms  0xffb SECKEY_DestroyPrivateKey()
 21826 ms  0xffb privk:0x7faa480e7020::7faa480e7020  90 a2 02 4c                                      ...L
 21826 ms  0xffb privk:0x7faa480e7020::7faa480e7020  e5 e5 e5 e5                                      ....
 21826 ms  0xffb PK11_Encrypt()
 21826 ms  0xffb symkey:0x7faa4126b700
           /* TID 0x1003 */
 21828 ms  0x1003 PR_Close()
 21828 ms  0x1003 fd:0x7faa2b6a7af0
           /* TID 0x1093 */
 21828 ms  0x1093 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 21828 ms  0x1093 ret:0x0
 21828 ms  0x1093 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 21828 ms  0x1093 ret:0x0
           /* TID 0xffb */
 21829 ms  0xffb SECKEY_CreateECPrivateKey()
 21829 ms  0xffb cx:0x7faa2b949988
 21830 ms     | 0xffb EC_ValidatePublicKey()
 21830 ms     | 0xffb ret:0x0
 21830 ms  0xffb ret:0x7faa434a3020::7faa434a3020  70 6e f0 4b                                      pn.K
 21830 ms  0xffb SECKEY_CreateECPrivateKey()
 21830 ms  0xffb cx:0x7faa2b949988
 21830 ms     | 0xffb EC_ValidatePublicKey()
 21832 ms     | 0xffb ret:0x0
 21832 ms  0xffb ret:0x7faa480e7020::7faa480e7020  40 a2 02 4c                                      @..L
 21832 ms  0xffb PR_Close()
 21832 ms  0xffb fd:0x7faa46fbac40
 21832 ms     | 0xffb PK11_Encrypt()
 21832 ms     | 0xffb symkey:0x7faa48d0a400
 21834 ms  0xffb SSL_AuthCertificateComplete()
 21834 ms  0xffb fd:0x7faa2b6a7b80
 21834 ms  0xffb err:0x0
 21834 ms     | 0xffb SECKEY_DestroyPrivateKey()
 21834 ms     | 0xffb privk:0x7faa2be54020::7faa2be54020  80 83 1d 4b                                      ...K
 21835 ms     | 0xffb privk:0x7faa2be54020::7faa2be54020  e5 e5 e5 e5                                      ....
 21835 ms     | 0xffb SECKEY_DestroyPrivateKey()
 21835 ms     | 0xffb privk:0x7faa2be51820::7faa2be51820  60 30 da 48                                      `0.H
 21835 ms     | 0xffb privk:0x7faa2be51820::7faa2be51820  e5 e5 e5 e5                                      ....
 21835 ms  0xffb SSL_AuthCertificateComplete()
 21835 ms  0xffb fd:0x7faa2ba4f5e0
 21835 ms  0xffb err:0x0
 21835 ms  0xffb PK11_Encrypt()
 21835 ms  0xffb symkey:0x7faa3f28c700
 21835 ms  0xffb PK11_Encrypt()
 21835 ms  0xffb symkey:0x7faa4126b700
 21836 ms  0xffb PR_Close()
 21836 ms  0xffb fd:0x7faa440e1580
 21836 ms     | 0xffb PK11_Encrypt()
 21836 ms     | 0xffb symkey:0x7faa487d8b00
 21836 ms  0xffb PR_Connect()
 21836 ms  0xffb fd:0x7faa2cf59a90
 21839 ms  0xffb PR_Connect()
 21839 ms  0xffb fd:0x7faa2b6a7c70
 21840 ms  0xffb PR_Connect()
 21840 ms  0xffb fd:0x7faa4439f7f0
 21840 ms  0xffb PR_Connect()
 21840 ms  0xffb fd:0x7faa3ffce160
           /* TID 0x1094 */
 21861 ms  0x1094 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 21861 ms  0x1094 ret:0x0
 21861 ms  0x1094 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 21861 ms  0x1094 ret:0x0
           /* TID 0x1003 */
 21861 ms  0x1003 PR_Close()
 21861 ms  0x1003 fd:0x7faa2b6a74f0
           /* TID 0xffb */
 21862 ms  0xffb SSL_AuthCertificateComplete()
 21862 ms  0xffb fd:0x7faa2b6a7760
 21862 ms  0xffb err:0x0
 21862 ms     | 0xffb SECKEY_DestroyPrivateKey()
 21862 ms     | 0xffb privk:0x7faa2be5c820::7faa2be5c820  e0 02 6a 4b                                      ..jK
 21862 ms     | 0xffb privk:0x7faa2be5c820::7faa2be5c820  e5 e5 e5 e5                                      ....
 21862 ms     | 0xffb SECKEY_DestroyPrivateKey()
 21862 ms     | 0xffb privk:0x7faa2be59820::7faa2be59820  40 8c 1d 4b                                      @..K
 21862 ms     | 0xffb privk:0x7faa2be59820::7faa2be59820  e5 e5 e5 e5                                      ....
 21862 ms  0xffb PK11_Encrypt()
 21862 ms  0xffb symkey:0x7faa490c3a80
 21879 ms  0xffb SECKEY_DestroyPrivateKey()
 21879 ms  0xffb privk:0x7faa2cf1c820::7faa2cf1c820  10 65 f0 4b                                      .e.K
 21879 ms  0xffb privk:0x7faa2cf1c820::7faa2cf1c820  e5 e5 e5 e5                                      ....
 21879 ms  0xffb SECKEY_DestroyPrivateKey()
 21879 ms  0xffb privk:0x7faa2cf1a020::7faa2cf1a020  90 62 f0 4b                                      .b.K
 21879 ms  0xffb privk:0x7faa2cf1a020::7faa2cf1a020  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
 21889 ms  0x1003 PR_Close()
 21889 ms  0x1003 fd:0x7faa445f47c0
           /* TID 0x1058 */
 21890 ms  0x1058 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 21890 ms  0x1058 ret:0x0
 21890 ms  0x1058 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 21890 ms  0x1058 ret:0x0
           /* TID 0xffb */
 21890 ms  0xffb SSL_AuthCertificateComplete()
 21890 ms  0xffb fd:0x7faa2ba4f700
 21890 ms  0xffb err:0x0
 21890 ms     | 0xffb SECKEY_DestroyPrivateKey()
 21890 ms     | 0xffb privk:0x7faa2be6a020::7faa2be6a020  e0 07 6a 4b                                      ..jK
 21890 ms     | 0xffb privk:0x7faa2be6a020::7faa2be6a020  e5 e5 e5 e5                                      ....
 21891 ms     | 0xffb SECKEY_DestroyPrivateKey()
 21891 ms     | 0xffb privk:0x7faa2be63820::7faa2be63820  00 06 6a 4b                                      ..jK
 21891 ms     | 0xffb privk:0x7faa2be63820::7faa2be63820  e5 e5 e5 e5                                      ....
 21891 ms  0xffb PK11_Encrypt()
 21891 ms  0xffb symkey:0x7faa49062c80
           /* TID 0x1003 */
 21892 ms  0x1003 PR_Close()
 21892 ms  0x1003 fd:0x7faa447f3460
           /* TID 0x109a */
 21892 ms  0x109a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 21892 ms  0x109a ret:0x0
 21892 ms  0x109a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 21892 ms  0x109a ret:0x0
           /* TID 0x1099 */
 21893 ms  0x1099 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 21893 ms  0x1099 ret:0x0
 21893 ms  0x1099 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 21893 ms  0x1099 ret:0x0
           /* TID 0x1003 */
 21893 ms  0x1003 PR_Close()
 21893 ms  0x1003 fd:0x7faa46f694c0
           /* TID 0xffb */
 21893 ms  0xffb SSL_AuthCertificateComplete()
 21893 ms  0xffb fd:0x7faa2ba4f6d0
 21893 ms  0xffb err:0x0
 21894 ms     | 0xffb SECKEY_DestroyPrivateKey()
 21894 ms     | 0xffb privk:0x7faa2cf17820::7faa2cf17820  90 0c 6a 4b                                      ..jK
 21894 ms     | 0xffb privk:0x7faa2cf17820::7faa2cf17820  e5 e5 e5 e5                                      ....
 21894 ms     | 0xffb SECKEY_DestroyPrivateKey()
 21894 ms     | 0xffb privk:0x7faa2cf10020::7faa2cf10020  c0 09 6a 4b                                      ..jK
 21894 ms     | 0xffb privk:0x7faa2cf10020::7faa2cf10020  e5 e5 e5 e5                                      ....
 21894 ms  0xffb SSL_AuthCertificateComplete()
 21894 ms  0xffb fd:0x7faa2ba4f430
 21894 ms  0xffb err:0x0
 21894 ms     | 0xffb SECKEY_DestroyPrivateKey()
 21894 ms     | 0xffb privk:0x7faa3fffc820::7faa3fffc820  c0 69 f0 4b                                      .i.K
 21894 ms     | 0xffb privk:0x7faa3fffc820::7faa3fffc820  e5 e5 e5 e5                                      ....
 21894 ms     | 0xffb SECKEY_DestroyPrivateKey()
 21894 ms     | 0xffb privk:0x7faa2d162020::7faa2d162020  50 66 f0 4b                                      Pf.K
 21894 ms     | 0xffb privk:0x7faa2d162020::7faa2d162020  e5 e5 e5 e5                                      ....
 21895 ms  0xffb PK11_Encrypt()
 21895 ms  0xffb symkey:0x7faa41285300
 21895 ms  0xffb PK11_Encrypt()
 21895 ms  0xffb symkey:0x7faa4126bb00
           /* TID 0x1003 */
 21897 ms  0x1003 PR_Close()
 21897 ms  0x1003 fd:0x7faa2b6a7dc0
 21906 ms  0x1003 PR_Close()
 21906 ms  0x1003 fd:0x7faa2b6a77f0
           /* TID 0xffb */
 21921 ms  0xffb PK11_Encrypt()
 21921 ms  0xffb symkey:0x7faa4cec5200
 21922 ms  0xffb PR_Close()
 21922 ms  0xffb fd:0x7faa2cf59df0
 21922 ms     | 0xffb PK11_Encrypt()
 21922 ms     | 0xffb symkey:0x7faa4cec5200
 21926 ms  0xffb PR_Close()
 21926 ms  0xffb fd:0x7faa46f69700
           /* TID 0x1003 */
 21932 ms  0x1003 PR_Close()
 21932 ms  0x1003 fd:0x7faa2ba4ff70
           /* TID 0xffb */
 21948 ms  0xffb PK11_Encrypt()
 21948 ms  0xffb symkey:0x7faa4126bb00
           /* TID 0x1003 */
 21949 ms  0x1003 PR_Close()
 21949 ms  0x1003 fd:0x7faa2b6a7dc0
           /* TID 0xffb */
 21961 ms  0xffb PR_Close()
 21961 ms  0xffb fd:0x7faa470539a0
           /* TID 0x1003 */
 21971 ms  0x1003 PR_Close()
 21971 ms  0x1003 fd:0x7faa2b6a70a0
           /* TID 0xffb */
 21978 ms  0xffb PK11_Encrypt()
 21978 ms  0xffb symkey:0x7faa490c3a80
           /* TID 0x1003 */
 21979 ms  0x1003 PR_Close()
 21979 ms  0x1003 fd:0x7faa2b6a70a0
 21981 ms  0x1003 PR_Close()
 21981 ms  0x1003 fd:0x7faa2b6a70a0
           /* TID 0xffb */
 21995 ms  0xffb PR_Close()
 21995 ms  0xffb fd:0x7faa445f4df0
 22003 ms  0xffb PK11_Encrypt()
 22003 ms  0xffb symkey:0x7faa41285300
           /* TID 0x1003 */
 22004 ms  0x1003 PR_Close()
 22004 ms  0x1003 fd:0x7faa2b6a70a0
           /* TID 0xffb */
 22006 ms  0xffb PR_Close()
 22006 ms  0xffb fd:0x7faa46fbdaf0
           /* TID 0x1003 */
 22016 ms  0x1003 PR_Close()
 22016 ms  0x1003 fd:0x7faa2b6a70a0
 22023 ms  0x1003 PR_Close()
 22023 ms  0x1003 fd:0x7faa2b6a7100
           /* TID 0xffb */
 22025 ms  0xffb PK11_Encrypt()
 22025 ms  0xffb symkey:0x7faa48dacd80
 22025 ms  0xffb PK11_Encrypt()
 22025 ms  0xffb symkey:0x7faa48dacd80
 22025 ms  0xffb PK11_Encrypt()
 22025 ms  0xffb symkey:0x7faa48dacd80
 22025 ms  0xffb PK11_Encrypt()
 22025 ms  0xffb symkey:0x7faa48dacd80
 22027 ms  0xffb SECKEY_CreateECPrivateKey()
 22027 ms  0xffb cx:0x7faa2cff1468
 22028 ms     | 0xffb EC_ValidatePublicKey()
 22028 ms     | 0xffb ret:0x0
 22028 ms  0xffb ret:0x7faa2b9d1820::7faa2b9d1820  e0 fc bc 3f                                      ...?
 22028 ms  0xffb SECKEY_CreateECPrivateKey()
 22028 ms  0xffb cx:0x7faa2cff1468
 22029 ms     | 0xffb EC_ValidatePublicKey()
 22030 ms     | 0xffb ret:0x0
 22030 ms  0xffb ret:0x7faa2ba8e020::7faa2ba8e020  10 da b1 47                                      ...G
 22035 ms  0xffb SECKEY_CreateECPrivateKey()
 22035 ms  0xffb cx:0x7faa2cff1608
 22035 ms     | 0xffb EC_ValidatePublicKey()
 22035 ms     | 0xffb ret:0x0
 22035 ms  0xffb ret:0x7faa2be51820::7faa2be51820  40 f2 08 48                                      @..H
 22035 ms  0xffb SECKEY_CreateECPrivateKey()
 22035 ms  0xffb cx:0x7faa2cff1608
 22036 ms     | 0xffb EC_ValidatePublicKey()
 22037 ms     | 0xffb ret:0x0
 22037 ms  0xffb ret:0x7faa2be55020::7faa2be55020  10 3a 2b 48                                      .:+H
 22040 ms  0xffb PK11_Encrypt()
 22040 ms  0xffb symkey:0x7faa3e16ce80
 22049 ms  0xffb PK11_Encrypt()
 22049 ms  0xffb symkey:0x7faa4c0c3180
 22054 ms  0xffb PK11_Encrypt()
 22054 ms  0xffb symkey:0x7faa4126bb00
           /* TID 0x1003 */
 22055 ms  0x1003 PR_Close()
 22055 ms  0x1003 fd:0x7faa2b6a7730
           /* TID 0xffb */
 22058 ms  0xffb PK11_Encrypt()
 22058 ms  0xffb symkey:0x7faa4c6ea900
 22066 ms  0xffb PK11_Encrypt()
 22066 ms  0xffb symkey:0x7faa48acc500
 22072 ms  0xffb SSL_ImportFD()
 22072 ms  0xffb ret:0x7faa447f3f40
 22072 ms  0xffb SSL_AuthCertificateHook()
 22072 ms  0xffb fd:0x7faa447f3f40
 22072 ms  0xffb ret:0x0
 22072 ms  0xffb PR_Connect()
 22072 ms  0xffb fd:0x7faa447f3f40
           /* TID 0x1003 */
 22081 ms  0x1003 PR_Close()
 22081 ms  0x1003 fd:0x7faa2cf59d90
 22107 ms  0x1003 PR_Close()
 22107 ms  0x1003 fd:0x7faa2cf59d90
 22108 ms  0x1003 PR_Close()
 22108 ms  0x1003 fd:0x7faa2b6a7640
           /* TID 0xffb */
 22138 ms  SECKEY_ECParamsToKeySize()
 22138 ms  0xffb ret:0x100
 22138 ms  0xffb SECKEY_CreateECPrivateKey()
 22138 ms  0xffb cx:0x7faa2b949b28
 22139 ms     | 0xffb EC_ValidatePublicKey()
 22140 ms     | 0xffb ret:0x0
 22140 ms  0xffb ret:0x7faa2be5f820::7faa2be5f820  00 01 6a 4b                                      ..jK
 22140 ms  0xffb PK11_PubDeriveWithKDF()
 22140 ms  0xffb seckey:0x7faa2be5f820
 22140 ms     | 0xffb EC_ValidatePublicKey()
 22142 ms     | 0xffb ret:0x0
 22143 ms  0xffb ret:0x7faa3f7fe600
 22143 ms  0xffb PK11_DeriveWithFlags()
 22143 ms  0xffb basekey:0x7faa3f7fe600
 22143 ms     | 0xffb PK11_DeriveWithTemplate()
 22143 ms  0xffb ret:0x7faa3ef0f100
 22143 ms  0xffb PK11_Derive()
 22143 ms  0xffb basekey:0x7faa3ef0f100
 22143 ms     | 0xffb PK11_DeriveWithTemplate()
 22143 ms  0xffb ret:0x7faa3ffdcf00
 22143 ms  0xffb SECKEY_DestroyPrivateKey()
 22143 ms  0xffb privk:0x7faa2be5f820::7faa2be5f820  00 01 6a 4b                                      ..jK
 22143 ms  0xffb privk:0x7faa2be5f820::7faa2be5f820  e5 e5 e5 e5                                      ....
 22144 ms  0xffb PK11_Encrypt()
 22144 ms  0xffb symkey:0x7faa48486680
 22148 ms  0xffb SSL_AuthCertificateComplete()
 22148 ms  0xffb fd:0x7faa2b6a7250
 22148 ms  0xffb err:0x0
 22148 ms  0xffb PK11_Encrypt()
 22148 ms  0xffb symkey:0x7faa48486680
 22180 ms  SECKEY_ECParamsToKeySize()
 22180 ms  0xffb ret:0x100
 22180 ms  0xffb SECKEY_CreateECPrivateKey()
 22180 ms  0xffb cx:0x7faa2b949988
 22181 ms     | 0xffb EC_ValidatePublicKey()
 22183 ms     | 0xffb ret:0x0
 22183 ms  0xffb ret:0x7faa2be61820::7faa2be61820  f0 01 6a 4b                                      ..jK
 22183 ms  0xffb PK11_PubDeriveWithKDF()
 22183 ms  0xffb seckey:0x7faa2be61820
 22183 ms     | 0xffb EC_ValidatePublicKey()
 22185 ms     | 0xffb ret:0x0
 22187 ms  0xffb ret:0x7faa3f7fe600
 22187 ms  0xffb PK11_DeriveWithFlags()
 22187 ms  0xffb basekey:0x7faa3f7fe600
 22187 ms     | 0xffb PK11_DeriveWithTemplate()
 22187 ms  0xffb ret:0x7faa482add80
 22187 ms  0xffb PK11_Derive()
 22187 ms  0xffb basekey:0x7faa482add80
 22187 ms     | 0xffb PK11_DeriveWithTemplate()
 22187 ms  0xffb ret:0x7faa482aee00
 22187 ms  0xffb SECKEY_DestroyPrivateKey()
 22187 ms  0xffb privk:0x7faa2be61820::7faa2be61820  f0 01 6a 4b                                      ..jK
 22187 ms  0xffb privk:0x7faa2be61820::7faa2be61820  e5 e5 e5 e5                                      ....
 22187 ms  0xffb PK11_Encrypt()
 22187 ms  0xffb symkey:0x7faa48492c00
 22188 ms  0xffb SSL_AuthCertificateComplete()
 22188 ms  0xffb fd:0x7faa2b6a75b0
 22188 ms  0xffb err:0x0
 22188 ms  0xffb PK11_Encrypt()
 22188 ms  0xffb symkey:0x7faa48492c00
           /* TID 0x1003 */
 22189 ms  0x1003 PR_Close()
 22189 ms  0x1003 fd:0x7faa2b6a7700
 22209 ms  0x1003 PR_Close()
 22209 ms  0x1003 fd:0x7faa2b6a7700
 22211 ms  0x1003 PR_Close()
 22211 ms  0x1003 fd:0x7faa2b6a7700
 22215 ms  0x1003 PR_Close()
 22215 ms  0x1003 fd:0x7faa2b6a7700
 22219 ms  0x1003 PR_Close()
 22219 ms  0x1003 fd:0x7faa447f35b0
           /* TID 0xffb */
 22226 ms  0xffb SSL_ImportFD()
 22226 ms  0xffb ret:0x7faa46fbac40
 22226 ms  0xffb SSL_AuthCertificateHook()
 22226 ms  0xffb fd:0x7faa46fbac40
 22226 ms  0xffb ret:0x0
 22226 ms  0xffb PR_Connect()
 22226 ms  0xffb fd:0x7faa46fbac40
 22226 ms  0xffb PK11_Encrypt()
 22226 ms  0xffb symkey:0x7faa48dacd80
           /* TID 0x1003 */
 22230 ms  0x1003 PR_Close()
 22230 ms  0x1003 fd:0x7faa4701fee0
           /* TID 0xffb */
 22315 ms  0xffb PR_Close()
 22315 ms  0xffb fd:0x7faa47b1b460
 22316 ms     | 0xffb PK11_Encrypt()
 22316 ms     | 0xffb symkey:0x7faa4c00e700
 22323 ms  0xffb SSL_ImportFD()
 22323 ms  0xffb ret:0x7faa46fbab20
 22323 ms  0xffb SSL_AuthCertificateHook()
 22323 ms  0xffb fd:0x7faa46fbab20
 22323 ms  0xffb ret:0x0
 22323 ms  0xffb PR_Connect()
 22323 ms  0xffb fd:0x7faa46fbab20
           /* TID 0x1003 */
 22347 ms  0x1003 PR_Close()
 22347 ms  0x1003 fd:0x7faa2b6a7610
           /* TID 0xffb */
 22347 ms  0xffb PK11_Encrypt()
 22347 ms  0xffb symkey:0x7faa3e16ce80
 22353 ms  0xffb PK11_Encrypt()
 22353 ms  0xffb symkey:0x7faa4c6ea900
           /* TID 0x1003 */
 22355 ms  0x1003 PR_Close()
 22355 ms  0x1003 fd:0x7faa2b6a7610
 22359 ms  0x1003 PR_Close()
 22359 ms  0x1003 fd:0x7faa2b6a7610
           /* TID 0xffb */
 22372 ms  SECKEY_ECParamsToKeySize()
 22375 ms  0xffb ret:0x100
 22375 ms  0xffb SECKEY_CreateECPrivateKey()
 22375 ms  0xffb cx:0x7faa2cff1468
 22376 ms     | 0xffb EC_ValidatePublicKey()
 22378 ms     | 0xffb ret:0x0
 22378 ms  0xffb ret:0x7faa2be64820::7faa2be64820  f0 a6 2b 48                                      ..+H
           /* TID 0x1003 */
 22381 ms  0x1003 PR_Close()
 22381 ms  0x1003 fd:0x7faa2b6a7610
           /* TID 0xffb */
 22382 ms  0xffb PK11_PubDeriveWithKDF()
 22382 ms  0xffb seckey:0x7faa2be64820
 22382 ms     | 0xffb EC_ValidatePublicKey()
 22383 ms     | 0xffb ret:0x0
 22385 ms  0xffb ret:0x7faa4c00e580
 22385 ms  0xffb PK11_DeriveWithFlags()
 22385 ms  0xffb basekey:0x7faa4c00e580
 22385 ms     | 0xffb PK11_DeriveWithTemplate()
 22385 ms  0xffb ret:0x7faa4c00e500
 22385 ms  0xffb PK11_Derive()
 22385 ms  0xffb basekey:0x7faa4c00e500
 22385 ms     | 0xffb PK11_DeriveWithTemplate()
 22385 ms  0xffb ret:0x7faa3f7fe600
 22385 ms  0xffb SECKEY_DestroyPrivateKey()
 22385 ms  0xffb privk:0x7faa2be64820::7faa2be64820  f0 a6 2b 48                                      ..+H
 22385 ms  0xffb privk:0x7faa2be64820::7faa2be64820  e5 e5 e5 e5                                      ....
 22386 ms  0xffb PK11_Encrypt()
 22386 ms  0xffb symkey:0x7faa4c00e600
 22390 ms  0xffb SSL_AuthCertificateComplete()
 22390 ms  0xffb fd:0x7faa447024f0
 22390 ms  0xffb err:0x0
 22391 ms  SECKEY_ECParamsToKeySize()
 22391 ms  0xffb ret:0x100
 22391 ms  0xffb SECKEY_CreateECPrivateKey()
 22391 ms  0xffb cx:0x7faa2cff1608
 22391 ms     | 0xffb EC_ValidatePublicKey()
 22394 ms     | 0xffb ret:0x0
 22394 ms  0xffb ret:0x7faa2be66020::7faa2be66020  30 4d 4a 48                                      0MJH
 22394 ms  0xffb PK11_PubDeriveWithKDF()
 22394 ms  0xffb seckey:0x7faa2be66020
 22395 ms     | 0xffb EC_ValidatePublicKey()
 22396 ms     | 0xffb ret:0x0
 22398 ms  0xffb ret:0x7faa4c00e580
 22398 ms  0xffb PK11_DeriveWithFlags()
 22398 ms  0xffb basekey:0x7faa4c00e580
 22398 ms     | 0xffb PK11_DeriveWithTemplate()
 22398 ms  0xffb ret:0x7faa482aed80
 22398 ms  0xffb PK11_Derive()
 22398 ms  0xffb basekey:0x7faa482aed80
 22398 ms     | 0xffb PK11_DeriveWithTemplate()
 22398 ms  0xffb ret:0x7faa482a5e00
 22398 ms  0xffb SECKEY_DestroyPrivateKey()
 22398 ms  0xffb privk:0x7faa2be66020::7faa2be66020  30 4d 4a 48                                      0MJH
 22398 ms  0xffb privk:0x7faa2be66020::7faa2be66020  e5 e5 e5 e5                                      ....
 22398 ms  0xffb PK11_Encrypt()
 22398 ms  0xffb symkey:0x7faa482aef00
 22398 ms  0xffb SSL_AuthCertificateComplete()
 22398 ms  0xffb fd:0x7faa4467fa30
 22398 ms  0xffb err:0x0
 22399 ms  0xffb SECKEY_CreateECPrivateKey()
 22399 ms  0xffb cx:0x7faa2cff2cc8
 22400 ms     | 0xffb EC_ValidatePublicKey()
 22400 ms     | 0xffb ret:0x0
 22400 ms  0xffb ret:0x7faa2be66020::7faa2be66020  f0 a6 2b 48                                      ..+H
 22400 ms  0xffb SECKEY_CreateECPrivateKey()
 22400 ms  0xffb cx:0x7faa2cff2cc8
 22401 ms     | 0xffb EC_ValidatePublicKey()
 22402 ms     | 0xffb ret:0x0
 22402 ms  0xffb ret:0x7faa2bec9020::7faa2bec9020  80 83 1d 4b                                      ...K
           /* TID 0x1003 */
 22405 ms  0x1003 PR_Close()
 22405 ms  0x1003 fd:0x7faa2ba4fd00
           /* TID 0xffb */
 22476 ms  0xffb SSL_ImportFD()
 22476 ms  0xffb ret:0x7faa2cf59670
 22476 ms  0xffb SSL_AuthCertificateHook()
 22476 ms  0xffb fd:0x7faa2cf59670
 22476 ms  0xffb ret:0x0
 22476 ms  0xffb PR_Connect()
 22476 ms  0xffb fd:0x7faa2cf59670
 22484 ms  0xffb SECKEY_DestroyPrivateKey()
 22484 ms  0xffb privk:0x7faa446a7020::7faa446a7020  f0 46 f8 4b                                      .F.K
 22484 ms  0xffb privk:0x7faa446a7020::7faa446a7020  e5 e5 e5 e5                                      ....
 22485 ms  0xffb SECKEY_DestroyPrivateKey()
 22485 ms  0xffb privk:0x7faa44304820::7faa44304820  10 45 f8 4b                                      .E.K
 22485 ms  0xffb privk:0x7faa44304820::7faa44304820  e5 e5 e5 e5                                      ....
 22523 ms  0xffb PR_Close()
 22523 ms  0xffb fd:0x7faa48a41cd0
 22524 ms     | 0xffb PK11_Encrypt()
 22524 ms     | 0xffb symkey:0x7faa4cea1c00
 22525 ms  0xffb PR_Close()
 22525 ms  0xffb fd:0x7faa4b63a2e0
 22525 ms     | 0xffb PK11_Encrypt()
 22525 ms     | 0xffb symkey:0x7faa4c6c9c00
 22526 ms  0xffb PR_Close()
 22526 ms  0xffb fd:0x7faa4b63a730
 22526 ms     | 0xffb PK11_Encrypt()
 22526 ms     | 0xffb symkey:0x7faa4c6bb980
 22526 ms  0xffb PR_Close()
 22526 ms  0xffb fd:0x7faa4808daf0
 22526 ms     | 0xffb PK11_Encrypt()
 22526 ms     | 0xffb symkey:0x7faa4c274a00
 22531 ms  0xffb PR_Close()
 22531 ms  0xffb fd:0x7faa482c65b0
 22531 ms     | 0xffb PK11_Encrypt()
 22531 ms     | 0xffb symkey:0x7faa4c268800
 22535 ms  0xffb SECKEY_DestroyPrivateKey()
 22535 ms  0xffb privk:0x7faa480e7020::7faa480e7020  40 a2 02 4c                                      @..L
 22535 ms  0xffb privk:0x7faa480e7020::7faa480e7020  e5 e5 e5 e5                                      ....
 22535 ms  0xffb SECKEY_DestroyPrivateKey()
 22535 ms  0xffb privk:0x7faa434a3020::7faa434a3020  70 6e f0 4b                                      pn.K
 22536 ms  0xffb privk:0x7faa434a3020::7faa434a3020  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
 22605 ms  0x1003 PR_Close()
 22605 ms  0x1003 fd:0x7faa2b6a78b0
 22616 ms  0x1003 PR_Close()
 22616 ms  0x1003 fd:0x7faa2b6a78b0
           /* TID 0xffb */
 22617 ms  0xffb SECKEY_CreateECPrivateKey()
 22617 ms  0xffb cx:0x7faa2d106e68
 22618 ms     | 0xffb EC_ValidatePublicKey()
 22618 ms     | 0xffb ret:0x0
 22618 ms  0xffb ret:0x7faa2bece820::7faa2bece820  e0 fc 08 48                                      ...H
 22618 ms  0xffb SECKEY_CreateECPrivateKey()
 22618 ms  0xffb cx:0x7faa2d106e68
 22619 ms     | 0xffb EC_ValidatePublicKey()
 22622 ms     | 0xffb ret:0x0
 22622 ms  0xffb ret:0x7faa2cf10020::7faa2cf10020  60 ea 77 48                                      `.wH
           /* TID 0x1003 */
 22634 ms  0x1003 PR_Close()
 22634 ms  0x1003 fd:0x7faa2b6a7fd0
           /* TID 0xffb */
 22634 ms  0xffb PK11_Encrypt()
 22634 ms  0xffb symkey:0x7faa48dacd80
 22635 ms  0xffb PK11_Encrypt()
 22635 ms  0xffb symkey:0x7faa48dacd80
 22635 ms  0xffb PK11_Encrypt()
 22635 ms  0xffb symkey:0x7faa48dacd80
           /* TID 0x1003 */
 22637 ms  0x1003 PR_Close()
 22637 ms  0x1003 fd:0x7faa44702130
 22639 ms  0x1003 PR_Close()
 22639 ms  0x1003 fd:0x7faa447f3820
 22641 ms  0x1003 PR_Close()
 22641 ms  0x1003 fd:0x7faa2b6a7bb0
           /* TID 0xffb */
 22650 ms  0xffb PK11_Encrypt()
 22650 ms  0xffb symkey:0x7faa4c0c3180
           /* TID 0x1003 */
 22661 ms  0x1003 PR_Close()
 22661 ms  0x1003 fd:0x7faa2ba4f5b0
 22665 ms  0x1003 PR_Close()
 22665 ms  0x1003 fd:0x7faa2cf59d90
 22669 ms  0x1003 PR_Close()
 22669 ms  0x1003 fd:0x7faa2cf59d90
 22671 ms  0x1003 PR_Close()
 22671 ms  0x1003 fd:0x7faa2cf59d90
           /* TID 0xffb */
 22680 ms  0xffb PR_Close()
 22680 ms  0xffb fd:0x7faa4808deb0
 22680 ms     | 0xffb PK11_Encrypt()
 22680 ms     | 0xffb symkey:0x7faa4c0d3300
           /* TID 0x1003 */
 22684 ms  0x1003 PR_Close()
 22684 ms  0x1003 fd:0x7faa2cf59d90
 22687 ms  0x1003 PR_Close()
 22687 ms  0x1003 fd:0x7faa2cf59d90
 22688 ms  0x1003 PR_Close()
 22688 ms  0x1003 fd:0x7faa2b6a7700
 22691 ms  0x1003 PR_Close()
 22691 ms  0x1003 fd:0x7faa2cf59d90
 22691 ms  0x1003 PR_Close()
 22691 ms  0x1003 fd:0x7faa2cf59d90
 22693 ms  0x1003 PR_Close()
 22693 ms  0x1003 fd:0x7faa2cf59d90
 22694 ms  0x1003 PR_Close()
 22694 ms  0x1003 fd:0x7faa2cf59d90
           /* TID 0xffb */
 22725 ms  0xffb PK11_Derive()
 22725 ms  0xffb basekey:0x7faa4128fe80
 22725 ms     | 0xffb PK11_DeriveWithTemplate()
 22726 ms  0xffb ret:0x7faa4c0d3180
 22726 ms  0xffb PK11_Encrypt()
 22726 ms  0xffb symkey:0x7faa4c0d3200
 22727 ms  0xffb SECKEY_DestroyPrivateKey()
 22727 ms  0xffb privk:0x7faa2bec9020::7faa2bec9020  80 83 1d 4b                                      ...K
 22727 ms  0xffb privk:0x7faa2bec9020::7faa2bec9020  e5 e5 e5 e5                                      ....
 22727 ms  0xffb SECKEY_DestroyPrivateKey()
 22727 ms  0xffb privk:0x7faa2be66020::7faa2be66020  f0 a6 2b 48                                      ..+H
 22727 ms  0xffb privk:0x7faa2be66020::7faa2be66020  e5 e5 e5 e5                                      ....
 22727 ms  0xffb SECKEY_DestroyPrivateKey()
 22727 ms  0xffb privk:0x7faa2ba8e020::7faa2ba8e020  10 da b1 47                                      ...G
 22727 ms  0xffb privk:0x7faa2ba8e020::7faa2ba8e020  e5 e5 e5 e5                                      ....
 22727 ms  0xffb SECKEY_DestroyPrivateKey()
 22727 ms  0xffb privk:0x7faa2b9d1820::7faa2b9d1820  e0 fc bc 3f                                      ...?
 22727 ms  0xffb privk:0x7faa2b9d1820::7faa2b9d1820  e5 e5 e5 e5                                      ....
 22739 ms  0xffb SECKEY_DestroyPrivateKey()
 22739 ms  0xffb privk:0x7faa2be55020::7faa2be55020  10 3a 2b 48                                      .:+H
 22739 ms  0xffb privk:0x7faa2be55020::7faa2be55020  e5 e5 e5 e5                                      ....
 22739 ms  0xffb SECKEY_DestroyPrivateKey()
 22739 ms  0xffb privk:0x7faa2be51820::7faa2be51820  40 f2 08 48                                      @..H
 22740 ms  0xffb privk:0x7faa2be51820::7faa2be51820  e5 e5 e5 e5                                      ....
 22908 ms  0xffb PR_Close()
 22908 ms  0xffb fd:0x7faa4878ac10
 22908 ms     | 0xffb PK11_Encrypt()
 22908 ms     | 0xffb symkey:0x7faa4c274d80
 22912 ms  0xffb PR_Close()
 22912 ms  0xffb fd:0x7faa2b6a7250
 22912 ms     | 0xffb PK11_Encrypt()
 22912 ms     | 0xffb symkey:0x7faa48486680
           /* TID 0x1003 */
 22913 ms  0x1003 PR_Close()
 22913 ms  0x1003 fd:0x7faa2b6a7250
           /* TID 0xffb */
 22916 ms  0xffb PK11_Derive()
 22916 ms  0xffb basekey:0x7faa3ef0f100
 22916 ms     | 0xffb PK11_DeriveWithTemplate()
 22916 ms  0xffb ret:0x7faa3ffdcf00
 22916 ms  0xffb PK11_Encrypt()
 22916 ms  0xffb symkey:0x7faa487d8b80
 22917 ms  0xffb SECKEY_DestroyPrivateKey()
 22917 ms  0xffb privk:0x7faa2cf10020::7faa2cf10020  60 ea 77 48                                      `.wH
 22917 ms  0xffb privk:0x7faa2cf10020::7faa2cf10020  e5 e5 e5 e5                                      ....
 22917 ms  0xffb SECKEY_DestroyPrivateKey()
 22917 ms  0xffb privk:0x7faa2bece820::7faa2bece820  e0 fc 08 48                                      ...H
 22917 ms  0xffb privk:0x7faa2bece820::7faa2bece820  e5 e5 e5 e5                                      ....
           /* TID 0x1003 */
 22960 ms  0x1003 PR_Close()
 22960 ms  0x1003 fd:0x7faa2b6a7970
           /* TID 0xffb */
 22964 ms  0xffb PR_Close()
 22964 ms  0xffb fd:0x7faa4878a160
 22964 ms     | 0xffb PK11_Encrypt()
 22964 ms     | 0xffb symkey:0x7faa4c275080
 22965 ms  0xffb PR_Close()
 22965 ms  0xffb fd:0x7faa2b6a75b0
 22965 ms     | 0xffb PK11_Encrypt()
 22965 ms     | 0xffb symkey:0x7faa48492c00
           /* TID 0x1003 */
 22967 ms  0x1003 PR_Close()
 22967 ms  0x1003 fd:0x7faa2b6a73a0
 22979 ms  0x1003 PR_Close()
 22979 ms  0x1003 fd:0x7faa2b6a7520
           /* TID 0xffb */
 23112 ms  0xffb PR_Close()
 23112 ms  0xffb fd:0x7faa4b63a700
 23112 ms     | 0xffb PK11_Encrypt()
 23112 ms     | 0xffb symkey:0x7faa4c67a700
           /* TID 0x1003 */
 23382 ms  0x1003 PR_Close()
 23382 ms  0x1003 fd:0x7faa2b6a75b0
 23403 ms  0x1003 PR_Close()
 23403 ms  0x1003 fd:0x7faa2cf595e0
           /* TID 0xffb */
 23409 ms  0xffb PR_Close()
 23409 ms  0xffb fd:0x7faa3efa3970
           /* TID 0xff0 */
 23419 ms  0xff0 EC_ValidatePublicKey()
 23421 ms  0xff0 ret:0x0
 23421 ms  0xff0 EC_ValidatePublicKey()
 23423 ms  0xff0 ret:0x0
 23423 ms  0xff0 EC_ValidatePublicKey()
 23425 ms  0xff0 ret:0x0
 23425 ms  0xff0 EC_ValidatePublicKey()
 23426 ms  0xff0 ret:0x0
 23426 ms  0xff0 EC_ValidatePublicKey()
 23436 ms  0xff0 ret:0x0
 23436 ms  0xff0 EC_ValidatePublicKey()
 23441 ms  0xff0 ret:0x0
 23442 ms  0xff0 EC_ValidatePublicKey()
 23443 ms  0xff0 ret:0x0
 23443 ms  0xff0 EC_ValidatePublicKey()
 23445 ms  0xff0 ret:0x0
 23445 ms  0xff0 EC_ValidatePublicKey()
 23446 ms  0xff0 ret:0x0
 23446 ms  0xff0 EC_ValidatePublicKey()
 23451 ms  0xff0 ret:0x0
           /* TID 0xffb */
 23452 ms  0xffb PK11_Encrypt()
 23452 ms  0xffb symkey:0x7faa48dacd80
 23452 ms  0xffb PK11_Encrypt()
 23452 ms  0xffb symkey:0x7faa4c268080
 23452 ms  0xffb PK11_Encrypt()
 23452 ms  0xffb symkey:0x7faa482a5a00
 23452 ms  0xffb PK11_Encrypt()
 23452 ms  0xffb symkey:0x7faa3e692900
 23452 ms  0xffb PK11_Encrypt()
 23452 ms  0xffb symkey:0x7faa3dd86080
 23452 ms  0xffb PK11_Encrypt()
 23452 ms  0xffb symkey:0x7faa48d0a000
 23453 ms  0xffb PK11_Encrypt()
 23453 ms  0xffb symkey:0x7faa4c20e300
 23453 ms  0xffb PK11_Encrypt()
 23453 ms  0xffb symkey:0x7faa4c268480
 23453 ms  0xffb PK11_Encrypt()
 23453 ms  0xffb symkey:0x7faa482ad380
 23453 ms  0xffb PK11_Encrypt()
 23453 ms  0xffb symkey:0x7faa4c6bae80
 23453 ms  0xffb PK11_Encrypt()
 23453 ms  0xffb symkey:0x7faa4c0d4380
 23453 ms  0xffb PK11_Encrypt()
 23453 ms  0xffb symkey:0x7faa4c0d3f00
 23453 ms  0xffb PK11_Encrypt()
 23453 ms  0xffb symkey:0x7faa4ce03280
 23454 ms  0xffb PR_Close()
 23454 ms  0xffb fd:0x7faa4c207af0
 23454 ms     | 0xffb PK11_Encrypt()
 23454 ms     | 0xffb symkey:0x7faa4c0c3180
 23454 ms  0xffb PR_Close()
 23454 ms  0xffb fd:0x7faa2cf59a00
 23454 ms     | 0xffb PK11_Encrypt()
 23454 ms     | 0xffb symkey:0x7faa4cec6600
 23454 ms  0xffb PR_Close()
 23454 ms  0xffb fd:0x7faa4c207130
 23454 ms     | 0xffb PK11_Encrypt()
 23454 ms     | 0xffb symkey:0x7faa4c6e9080
 23454 ms  0xffb PR_Close()
 23454 ms  0xffb fd:0x7faa4bfe7f40
 23454 ms     | 0xffb PK11_Encrypt()
 23454 ms     | 0xffb symkey:0x7faa4c6ea900
 23455 ms  0xffb PR_Close()
 23455 ms  0xffb fd:0x7faa2ba4ff10
 23455 ms  0xffb PR_Close()
 23455 ms  0xffb fd:0x7faa2cf59130
 23455 ms     | 0xffb PK11_Encrypt()
 23455 ms     | 0xffb symkey:0x7faa4cec6f80
 23455 ms  0xffb PR_Close()
 23455 ms  0xffb fd:0x7faa4439fb20
 23455 ms     | 0xffb PK11_Encrypt()
 23455 ms     | 0xffb symkey:0x7faa48acc500
 23455 ms  0xffb PR_Close()
 23455 ms  0xffb fd:0x7faa4b63ae80
 23455 ms     | 0xffb PK11_Encrypt()
 23455 ms     | 0xffb symkey:0x7faa4c6bb500
 23455 ms  0xffb PR_Close()
 23455 ms  0xffb fd:0x7faa4877d910
 23455 ms     | 0xffb PK11_Encrypt()
 23455 ms     | 0xffb symkey:0x7faa4c0c5d00
 23456 ms  0xffb PR_Close()
 23456 ms  0xffb fd:0x7faa4b63a7f0
 23456 ms     | 0xffb PK11_Encrypt()
 23456 ms     | 0xffb symkey:0x7faa4c275900
 23456 ms  0xffb PR_Close()
 23456 ms  0xffb fd:0x7faa2b6a79d0
 23456 ms  0xffb PR_Close()
 23456 ms  0xffb fd:0x7faa4439f7f0
 23456 ms  0xffb PR_Close()
 23456 ms  0xffb fd:0x7faa482c6f10
 23456 ms     | 0xffb PK11_Encrypt()
 23456 ms     | 0xffb symkey:0x7faa4c20e480
 23456 ms  0xffb PR_Close()
 23456 ms  0xffb fd:0x7faa482c69d0
 23456 ms     | 0xffb PK11_Encrypt()
 23456 ms     | 0xffb symkey:0x7faa4c0e5780
 23456 ms  0xffb PR_Close()
 23456 ms  0xffb fd:0x7faa4c207d90
 23456 ms     | 0xffb PK11_Encrypt()
 23456 ms     | 0xffb symkey:0x7faa4c0d4f00
 23457 ms  0xffb PR_Close()
 23457 ms  0xffb fd:0x7faa4701ffd0
 23457 ms     | 0xffb PK11_Encrypt()
 23457 ms     | 0xffb symkey:0x7faa4b681480
 23457 ms  0xffb PR_Close()
 23457 ms  0xffb fd:0x7faa490c8190
 23457 ms     | 0xffb PK11_Encrypt()
 23457 ms     | 0xffb symkey:0x7faa4c00ef80
 23457 ms  0xffb PR_Close()
 23457 ms  0xffb fd:0x7faa48b8e1c0
 23457 ms     | 0xffb PK11_Encrypt()
 23457 ms     | 0xffb symkey:0x7faa4c0c3a80
 23457 ms  0xffb PR_Close()
 23457 ms  0xffb fd:0x7faa2cf59a90
 23457 ms  0xffb PR_Close()
 23457 ms  0xffb fd:0x7faa2ba4f430
 23457 ms     | 0xffb PK11_Encrypt()
 23457 ms     | 0xffb symkey:0x7faa4126bb00
 23457 ms  0xffb PR_Close()
 23457 ms  0xffb fd:0x7faa447f3f40
 23457 ms     | 0xffb PK11_Encrypt()
 23457 ms     | 0xffb symkey:0x7faa4c0d3200
 23458 ms  0xffb PR_Close()
 23458 ms  0xffb fd:0x7faa2ba4f5e0
 23458 ms     | 0xffb PK11_Encrypt()
 23458 ms     | 0xffb symkey:0x7faa4126b700
 23458 ms  0xffb PR_Close()
 23458 ms  0xffb fd:0x7faa2ba4f700
 23458 ms     | 0xffb PK11_Encrypt()
 23458 ms     | 0xffb symkey:0x7faa49062c80
           /* TID 0x104c */
 23458 ms  0x104c PR_Close()
 23458 ms  0x104c fd:0x7faa2b6a71f0
 23458 ms  0x104c PR_Close()
 23458 ms  0x104c fd:0x7faa2b6a71f0
           /* TID 0xffb */
 23472 ms  0xffb PR_Close()
 23472 ms  0xffb fd:0x7faa2b6a7c70
 23472 ms  0xffb PR_Close()
 23472 ms  0xffb fd:0x7faa3ffce160
 23472 ms  0xffb PR_Close()
 23472 ms  0xffb fd:0x7faa46f50e80
 23472 ms     | 0xffb PK11_Encrypt()
 23472 ms     | 0xffb symkey:0x7faa4128e080
 23472 ms  0xffb PR_Close()
 23472 ms  0xffb fd:0x7faa2b6a7760
 23472 ms     | 0xffb PK11_Encrypt()
 23472 ms     | 0xffb symkey:0x7faa490c3a80
 23473 ms  0xffb PR_Close()
 23473 ms  0xffb fd:0x7faa46fbab20
 23473 ms     | 0xffb PK11_Encrypt()
 23473 ms     | 0xffb symkey:0x7faa487d8b80
 23473 ms  0xffb PR_Close()
 23473 ms  0xffb fd:0x7faa2b6a7b80
 23473 ms     | 0xffb PK11_Encrypt()
 23473 ms     | 0xffb symkey:0x7faa3f28c700
 23473 ms  0xffb PR_Close()
 23473 ms  0xffb fd:0x7faa4b63adf0
 23473 ms  0xffb PR_Close()
 23473 ms  0xffb fd:0x7faa2b6a73d0
 23473 ms  0xffb PR_Close()
 23473 ms  0xffb fd:0x7faa2ba4f6d0
 23473 ms     | 0xffb PK11_Encrypt()
 23473 ms     | 0xffb symkey:0x7faa41285300
 23474 ms  0xffb PR_Close()
 23474 ms  0xffb fd:0x7faa446fef40
 23474 ms  0xffb PR_Close()
 23474 ms  0xffb fd:0x7faa3ffce760
 23474 ms  0xffb PR_Close()
 23474 ms  0xffb fd:0x7faa43fbbeb0
 23474 ms  0xffb PR_Close()
 23474 ms  0xffb fd:0x7faa42c8be20
 23474 ms  0xffb PR_Close()
 23474 ms  0xffb fd:0x7faa43591370
 23474 ms     | 0xffb PK11_Encrypt()
 23474 ms     | 0xffb symkey:0x7faa4128f280
 23474 ms  0xffb PR_Close()
 23474 ms  0xffb fd:0x7faa3deea160
 23474 ms     | 0xffb PK11_Encrypt()
 23474 ms     | 0xffb symkey:0x7faa41246680
 23479 ms  0xffb PR_Close()
 23479 ms  0xffb fd:0x7faa443fe3d0
 23479 ms  0xffb PR_Close()
 23479 ms  0xffb fd:0x7faa46f50f40
 23479 ms  0xffb PR_Close()
 23479 ms  0xffb fd:0x7faa43fbb400
 23479 ms     | 0xffb PK11_Encrypt()
 23479 ms     | 0xffb symkey:0x7faa487d8980
 23479 ms  0xffb PR_Close()
 23479 ms  0xffb fd:0x7faa445f4070
 23479 ms  0xffb PR_Close()
 23479 ms  0xffb fd:0x7faa445bddf0
 23479 ms  0xffb PR_Close()
 23479 ms  0xffb fd:0x7faa44574880
 23480 ms  0xffb PR_Close()
 23480 ms  0xffb fd:0x7faa44585d30
 23480 ms  0xffb PR_Close()
 23480 ms  0xffb fd:0x7faa445bd610
 23480 ms  0xffb PR_Close()
 23480 ms  0xffb fd:0x7faa445bd6a0
 23480 ms  0xffb PR_Close()
 23480 ms  0xffb fd:0x7faa445bd850
 23480 ms  0xffb PR_Close()
 23480 ms  0xffb fd:0x7faa44585190
 23480 ms     | 0xffb PK11_Encrypt()
 23480 ms     | 0xffb symkey:0x7faa47092600
 23480 ms  0xffb PR_Close()
 23480 ms  0xffb fd:0x7faa44574940
 23480 ms     | 0xffb PK11_Encrypt()
 23480 ms     | 0xffb symkey:0x7faa47015b80
 23481 ms  0xffb PR_Close()
 23481 ms  0xffb fd:0x7faa445742b0
 23481 ms     | 0xffb PK11_Encrypt()
 23481 ms     | 0xffb symkey:0x7faa48492080
 23481 ms  0xffb PR_Close()
 23481 ms  0xffb fd:0x7faa4454bc40
 23481 ms     | 0xffb PK11_Encrypt()
 23481 ms     | 0xffb symkey:0x7faa447e8b00
 23481 ms  0xffb PR_Close()
 23481 ms  0xffb fd:0x7faa3ffc8f40
 23481 ms     | 0xffb PK11_Encrypt()
 23481 ms     | 0xffb symkey:0x7faa3e16ce80
 23481 ms  0xffb PR_Close()
 23481 ms  0xffb fd:0x7faa44213190
 23481 ms  0xffb PR_Close()
 23481 ms  0xffb fd:0x7faa440e1b50
 23482 ms  0xffb PR_Close()
 23482 ms  0xffb fd:0x7faa3ffc8a90
 23482 ms     | 0xffb PK11_Encrypt()
 23482 ms     | 0xffb symkey:0x7faa4406de00
 23482 ms  0xffb PR_Close()
 23482 ms  0xffb fd:0x7faa3deeaa60
 23482 ms     | 0xffb PK11_Encrypt()
 23482 ms     | 0xffb symkey:0x7faa43fd1300
 23482 ms  0xffb PR_Close()
 23482 ms  0xffb fd:0x7faa3ffc8a30
 23482 ms     | 0xffb PK11_Encrypt()
 23482 ms     | 0xffb symkey:0x7faa440dd500
           /* TID 0x1003 */
 23484 ms  0x1003 PR_Close()
 23484 ms  0x1003 fd:0x7faa2ba4f3d0
 23489 ms  0x1003 PR_Close()
 23489 ms  0x1003 fd:0x7faa2cf590a0
           /* TID 0xffb */
 23491 ms  0xffb PR_Close()
 23491 ms  0xffb fd:0x7faa440483d0
 23491 ms     | 0xffb PK11_Encrypt()
 23491 ms     | 0xffb symkey:0x7faa43f66a00
 23495 ms  0xffb PR_Close()
 23495 ms  0xffb fd:0x7faa3f440df0
 23497 ms     | 0xffb PK11_Encrypt()
 23497 ms     | 0xffb symkey:0x7faa412fab80
 23497 ms  0xffb PR_Close()
 23497 ms  0xffb fd:0x7faa412a8910
 23497 ms     | 0xffb PK11_Encrypt()
 23497 ms     | 0xffb symkey:0x7faa4128eb80
 23497 ms  0xffb PR_Close()
 23497 ms  0xffb fd:0x7faa3dd840d0
 23497 ms     | 0xffb PK11_Encrypt()
 23497 ms     | 0xffb symkey:0x7faa43575c00
 23498 ms  0xffb PR_Close()
 23498 ms  0xffb fd:0x7faa2d12a220
 23498 ms     | 0xffb PK11_Encrypt()
 23498 ms     | 0xffb symkey:0x7faa3ddff880
 23498 ms  0xffb PR_Close()
 23498 ms  0xffb fd:0x7faa43591ee0
 23498 ms  0xffb PR_Close()
 23498 ms  0xffb fd:0x7faa43591940
 23498 ms     | 0xffb PK11_Encrypt()
 23498 ms     | 0xffb symkey:0x7faa3ddfeb00
 23498 ms  0xffb PR_Close()
 23498 ms  0xffb fd:0x7faa3ef5e370
 23498 ms  0xffb PR_Close()
 23498 ms  0xffb fd:0x7faa3e40bf10
 23498 ms     | 0xffb PK11_Encrypt()
 23498 ms     | 0xffb symkey:0x7faa482aeb80
 23499 ms  0xffb PR_Close()
 23499 ms  0xffb fd:0x7faa412fdf70
 23499 ms     | 0xffb PK11_Encrypt()
 23499 ms     | 0xffb symkey:0x7faa4cea0280
 23499 ms  0xffb PR_Close()
 23499 ms  0xffb fd:0x7faa4467fa30
 23499 ms     | 0xffb PK11_Encrypt()
 23499 ms     | 0xffb symkey:0x7faa482aef00
 23499 ms  0xffb PR_Close()
 23499 ms  0xffb fd:0x7faa447024f0
 23499 ms     | 0xffb PK11_Encrypt()
 23499 ms     | 0xffb symkey:0x7faa4c00e600
 23500 ms  0xffb PR_Close()
 23500 ms  0xffb fd:0x7faa4c2d9220
 23500 ms     | 0xffb PK11_Encrypt()
 23500 ms     | 0xffb symkey:0x7faa4ce02e00
 23500 ms  0xffb PR_Close()
 23500 ms  0xffb fd:0x7faa4877d730
 23500 ms     | 0xffb PK11_Encrypt()
 23500 ms     | 0xffb symkey:0x7faa4c6ea780
 23500 ms  0xffb PR_Close()
 23500 ms  0xffb fd:0x7faa4bfe7670
 23500 ms     | 0xffb PK11_Encrypt()
 23500 ms     | 0xffb symkey:0x7faa4c0d3900
 23500 ms  0xffb PR_Close()
 23500 ms  0xffb fd:0x7faa4bfe7d30
 23500 ms     | 0xffb PK11_Encrypt()
 23500 ms     | 0xffb symkey:0x7faa480a9f00
 23507 ms  0xffb PR_Close()
 23507 ms  0xffb fd:0x7faa2cf59220
 23507 ms     | 0xffb PK11_Encrypt()
 23507 ms     | 0xffb symkey:0x7faa4c6bae80
 23510 ms  0xffb PR_Close()
 23510 ms  0xffb fd:0x7faa480d3100
 23510 ms     | 0xffb PK11_Encrypt()
 23510 ms     | 0xffb symkey:0x7faa4c20e300
 23511 ms  0xffb PR_Close()
 23511 ms  0xffb fd:0x7faa4b63a460
 23511 ms     | 0xffb PK11_Encrypt()
 23511 ms     | 0xffb symkey:0x7faa4c268480
 23511 ms  0xffb PR_Close()
 23511 ms  0xffb fd:0x7faa4454b070
 23511 ms     | 0xffb PK11_Encrypt()
 23511 ms     | 0xffb symkey:0x7faa48dacd80
 23511 ms  0xffb PR_Close()
 23511 ms  0xffb fd:0x7faa47be4340
 23511 ms     | 0xffb PK11_Encrypt()
 23511 ms     | 0xffb symkey:0x7faa482a5a00
 23511 ms  0xffb PR_Close()
 23511 ms  0xffb fd:0x7faa43591310
 23511 ms     | 0xffb PK11_Encrypt()
 23511 ms     | 0xffb symkey:0x7faa48d0a000
 23512 ms  0xffb PR_Close()
 23512 ms  0xffb fd:0x7faa47b1b7c0
 23512 ms     | 0xffb PK11_Encrypt()
 23512 ms     | 0xffb symkey:0x7faa482ad380
 23512 ms  0xffb PR_Close()
 23512 ms  0xffb fd:0x7faa4c0e3dc0
 23512 ms     | 0xffb PK11_Encrypt()
 23512 ms     | 0xffb symkey:0x7faa4c0d3f00
 23512 ms  0xffb PR_Close()
 23512 ms  0xffb fd:0x7faa4c62b6a0
 23512 ms     | 0xffb PK11_Encrypt()
 23512 ms     | 0xffb symkey:0x7faa4ce03280
 23512 ms  0xffb PR_Close()
 23512 ms  0xffb fd:0x7faa4b63a520
 23512 ms     | 0xffb PK11_Encrypt()
 23512 ms     | 0xffb symkey:0x7faa4c0d4380
 23513 ms  0xffb PR_Close()
 23513 ms  0xffb fd:0x7faa4c2583d0
 23513 ms     | 0xffb PK11_Encrypt()
 23513 ms     | 0xffb symkey:0x7faa4c268080
 23513 ms  0xffb PR_Close()
 23513 ms  0xffb fd:0x7faa3ef4fc10
 23513 ms     | 0xffb PK11_Encrypt()
 23513 ms     | 0xffb symkey:0x7faa3e692900
 23514 ms  0xffb PR_Close()
 23514 ms  0xffb fd:0x7faa3deea8e0
 23514 ms     | 0xffb PK11_Encrypt()
 23514 ms     | 0xffb symkey:0x7faa3dd86080
 23515 ms  0xffb SSL_ImportFD()
 23515 ms  0xffb ret:0x7faa2ba4f190
 23515 ms  0xffb SSL_AuthCertificateHook()
 23515 ms  0xffb fd:0x7faa2ba4f190
 23515 ms  0xffb ret:0x0
 23515 ms  0xffb PR_Connect()
 23515 ms  0xffb fd:0x7faa2ba4f190
 23515 ms  0xffb SSL_ImportFD()
 23515 ms  0xffb ret:0x7faa2b6a7dc0
 23515 ms  0xffb SSL_AuthCertificateHook()
 23515 ms  0xffb fd:0x7faa2b6a7dc0
 23515 ms  0xffb ret:0x0
 23515 ms  0xffb PR_Connect()
 23515 ms  0xffb fd:0x7faa2b6a7dc0
 23522 ms  0xffb SSL_ImportFD()
 23522 ms  0xffb ret:0x7faa2cf59550
 23522 ms  0xffb SSL_AuthCertificateHook()
 23522 ms  0xffb fd:0x7faa2cf59550
 23522 ms  0xffb ret:0x0
 23522 ms  0xffb PR_Connect()
 23522 ms  0xffb fd:0x7faa2cf59550
 23536 ms  0xffb SSL_ImportFD()
 23537 ms  0xffb ret:0x7faa2cf59c10
 23537 ms  0xffb SSL_AuthCertificateHook()
 23537 ms  0xffb fd:0x7faa2cf59c10
 23537 ms  0xffb ret:0x0
 23537 ms  0xffb PR_Connect()
 23537 ms  0xffb fd:0x7faa2cf59c10
 23551 ms  0xffb SSL_ImportFD()
 23551 ms  0xffb ret:0x7faa2d12a100
 23551 ms  0xffb SSL_AuthCertificateHook()
 23551 ms  0xffb fd:0x7faa2d12a100
 23551 ms  0xffb ret:0x0
 23551 ms  0xffb PR_Connect()
 23551 ms  0xffb fd:0x7faa2d12a100
           /* TID 0xff0 */
 23605 ms  0xff0 PR_Close()
 23605 ms  0xff0 fd:0x7faa3ef4f520
 23605 ms  0xff0 PR_Close()
 23605 ms  0xff0 fd:0x7faa3dd84f40
 23606 ms  0xff0 PR_Close()
 23606 ms  0xff0 fd:0x7faa3deea040
 23606 ms  0xff0 PR_Close()
 23606 ms  0xff0 fd:0x7faa3dd84f40
 23606 ms  0xff0 PR_Close()
 23606 ms  0xff0 fd:0x7faa3deea040
 23606 ms  0xff0 PR_Close()
 23606 ms  0xff0 fd:0x7faa3dd84f40
           /* TID 0x105e */
 23613 ms  0x105e PR_Close()
 23613 ms  0x105e fd:0x7faa3deea220
           /* TID 0xff0 */
 23637 ms  0xff0 PR_Close()
 23637 ms  0xff0 fd:0x7faa3deea040
 23637 ms  0xff0 PR_Close()
 23637 ms  0xff0 fd:0x7faa3ef4fcd0
 23642 ms  0xff0 PR_Close()
 23642 ms  0xff0 fd:0x7faa3deea040
 23642 ms  0xff0 PR_Close()
 23642 ms  0xff0 fd:0x7faa3ef4fcd0
 23648 ms  0xff0 PR_Close()
 23648 ms  0xff0 fd:0x7faa490c89a0
 23649 ms  0xff0 PR_Close()
 23649 ms  0xff0 fd:0x7faa490c88b0
 23649 ms  0xff0 PR_Close()
 23649 ms  0xff0 fd:0x7faa490c8a60
 23650 ms  0xff0 PR_Close()
 23650 ms  0xff0 fd:0x7faa3e40bdf0
 23651 ms  0xff0 PR_Close()
 23651 ms  0xff0 fd:0x7faa3e40bdf0
 23653 ms  0xff0 PR_Close()
 23653 ms  0xff0 fd:0x7faa3deea040
 23653 ms  0xff0 PR_Close()
 23653 ms  0xff0 fd:0x7faa3ef4fcd0
 23654 ms  0xff0 PR_Close()
 23654 ms  0xff0 fd:0x7faa3deea040
 23654 ms  0xff0 PR_Close()
 23654 ms  0xff0 fd:0x7faa3ef4fcd0
 23657 ms  0xff0 PR_Close()
 23657 ms  0xff0 fd:0x7faa3ef4fd00
 23658 ms  0xff0 PR_Close()
 23658 ms  0xff0 fd:0x7faa3ef4fd00
 23660 ms  0xff0 PR_Close()
 23660 ms  0xff0 fd:0x7faa3deea040
 23660 ms  0xff0 PR_Close()
 23660 ms  0xff0 fd:0x7faa3ef4fd60
 23662 ms  0xff0 PR_Close()
 23662 ms  0xff0 fd:0x7faa3deea040
 23662 ms  0xff0 PR_Close()
 23662 ms  0xff0 fd:0x7faa3ef4fd60
 23664 ms  0xff0 PR_Close()
 23664 ms  0xff0 fd:0x7faa3ef4fd90
 23666 ms  0xff0 PR_Close()
 23666 ms  0xff0 fd:0x7faa3ef4fd90
 23675 ms  0xff0 PR_Close()
 23675 ms  0xff0 fd:0x7faa3efa39a0
 23676 ms  0xff0 PR_Close()
 23676 ms  0xff0 fd:0x7faa3efa39a0
 23680 ms  0xff0 PR_Close()
 23680 ms  0xff0 fd:0x7faa3f440130
           /* TID 0x105e */
 23691 ms  0x105e PR_Close()
 23691 ms  0x105e fd:0x7faa3e690a30
           /* TID 0xff0 */
 23692 ms  0xff0 PR_Close()
 23692 ms  0xff0 fd:0x7faa3deea040
           /* TID 0x105e */
 23692 ms  0x105e PR_Close()
 23692 ms  0x105e fd:0x7faa3e690a30
           /* TID 0xff0 */
 23692 ms  0xff0 PR_Close()
 23692 ms  0xff0 fd:0x7faa3f440ac0
           /* TID 0xffb */
 23695 ms  0xffb PK11_Encrypt()
 23695 ms  0xffb symkey:0x7faa4c6e9400
           /* TID 0x105e */
 23695 ms  0x105e PR_Close()
 23695 ms  0x105e fd:0x7faa3e40b2e0
           /* TID 0x1003 */
 23701 ms  0x1003 PR_Close()
 23701 ms  0x1003 fd:0x7faa3f440580
 23701 ms  0x1003 PR_Close()
 23701 ms  0x1003 fd:0x7faa3f7ff280
 23702 ms  0x1003 PR_Close()
 23702 ms  0x1003 fd:0x7faa3f7ff550
 23702 ms  0x1003 PR_Close()
 23702 ms  0x1003 fd:0x7faa3f7ff790
           /* TID 0x105e */
 23730 ms  0x105e PR_Close()
 23730 ms  0x105e fd:0x7faa2b6a70a0
           /* TID 0xff5 */
 23738 ms  0xff5 PR_Close()
 23738 ms  0xff5 fd:0x7faa47b2fe20
           /* TID 0xffb */
 23739 ms  0xffb PR_Close()
 23739 ms  0xffb fd:0x7faa2d12a100
 23739 ms  0xffb PR_Close()
 23739 ms  0xffb fd:0x7faa2cf59c10
 23739 ms  0xffb PR_Close()
 23739 ms  0xffb fd:0x7faa2cf59550
 23739 ms  0xffb PR_Close()
 23739 ms  0xffb fd:0x7faa2ba4f190
 23739 ms  0xffb PR_Close()
 23739 ms  0xffb fd:0x7faa2b6a7dc0
 23739 ms  0xffb PR_Close()
 23739 ms  0xffb fd:0x7faa2cf59670
 23739 ms  0xffb PR_Close()
 23739 ms  0xffb fd:0x7faa46fbac40
           /* TID 0x105e */
 23748 ms  0x105e PR_Close()
 23748 ms  0x105e fd:0x7faa2b6a7100
           /* TID 0xffb */
 23761 ms  0xffb PR_Close()
 23761 ms  0xffb fd:0x7faa4dcfc550
 23761 ms     | 0xffb PK11_Encrypt()
 23761 ms     | 0xffb symkey:0x7faa4c6e9400
 23761 ms  0xffb PR_Close()
 23761 ms  0xffb fd:0x7faa3e40bbb0
           /* TID 0x104c */
 23762 ms  0x104c PR_Close()
 23762 ms  0x104c fd:0x7faa2b6a7100
 23762 ms  0x104c PR_Close()
 23762 ms  0x104c fd:0x7faa2b6a7100
 23762 ms  0x104c PR_Close()
 23762 ms  0x104c fd:0x7faa2b6a7100
 23762 ms  0x104c PR_Close()
 23762 ms  0x104c fd:0x7faa2b6a74f0
           /* TID 0x105e */
 23763 ms  0x105e PR_Close()
 23763 ms  0x105e fd:0x7faa2b6a74f0
           /* TID 0x1003 */
 23775 ms  0x1003 PR_Close()
 23775 ms  0x1003 fd:0x7faa2cf59220
 23775 ms  0x1003 PR_Close()
 23775 ms  0x1003 fd:0x7faa2cf593a0
           /* TID 0xff5 */
 23782 ms  0xff5 PR_Close()
 23782 ms  0xff5 fd:0x7faa3e40baf0
           /* TID 0xff0 */
 23786 ms  0xff0 PR_Close()
 23786 ms  0xff0 fd:0x7faa3deea040
 23786 ms  0xff0 PR_Close()
 23786 ms  0xff0 fd:0x7faa2cf594f0
 23827 ms  0xff0 PR_Close()
 23827 ms  0xff0 fd:0x7faa2cf59550
 23827 ms  0xff0 PR_Close()
 23827 ms  0xff0 fd:0x7faa2cf598e0
           /* TID 0x105e */
 23830 ms  0x105e PR_Close()
 23830 ms  0x105e fd:0x7faa2cf596a0
           /* TID 0xff5 */
 23832 ms  0xff5 PR_Close()
 23832 ms  0xff5 fd:0x7faa44213820
           /* TID 0x105e */
 23833 ms  0x105e PR_Close()
 23833 ms  0x105e fd:0x7faa2cf59520
           /* TID 0x1003 */
 23874 ms  0x1003 PR_Close()
 23874 ms  0x1003 fd:0x7faa3f440520
 23874 ms  0x1003 PR_Close()
 23874 ms  0x1003 fd:0x7faa3f7ff100
           /* TID 0x105e */
 23878 ms  0x105e PR_Close()
 23878 ms  0x105e fd:0x7faa2b6a7220
 23880 ms  0x105e PR_Close()
 23880 ms  0x105e fd:0x7faa2b6a7220
 23883 ms  0x105e PR_Close()
 23883 ms  0x105e fd:0x7faa2b6a76a0
 23884 ms  0x105e PR_Close()
 23884 ms  0x105e fd:0x7faa2b6a7730
 23894 ms  0x105e PR_Close()
 23894 ms  0x105e fd:0x7faa2ba4f2e0
 23898 ms  0x105e PR_Close()
 23898 ms  0x105e fd:0x7faa2ba4fe80
 23906 ms  0x105e PR_Close()
 23906 ms  0x105e fd:0x7faa2cf591c0
 23917 ms  0x105e PR_Close()
 23917 ms  0x105e fd:0x7faa2cf59340
 23919 ms  0x105e PR_Close()
 23919 ms  0x105e fd:0x7faa2cf59340
           /* TID 0xff0 */
 24092 ms  0xff0 PR_Close()
 24092 ms  0xff0 fd:0x7faa2b6a75b0
 24092 ms  0xff0 PR_Close()
 24092 ms  0xff0 fd:0x7faa2b6a75b0
 24099 ms  0xff0 PR_Close()
 24099 ms  0xff0 fd:0x7faa663da130
 24100 ms  0xff0 PR_Close()
 24100 ms  0xff0 fd:0x7faa663da190
Process terminated
