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
           /* TID 0x6d4f */
    84 ms  0x6d4f PR_Close()
    84 ms  0x6d4f fd:0x7f52a84bd610
           /* TID 0x6d47 */
   307 ms  0x6d47 SSL_ImportFD()
   307 ms  0x6d47 ret:0x7f52a84c5700
   307 ms  0x6d47 SSL_AuthCertificateHook()
   307 ms  0x6d47 fd:0x7f52a84c5700
   307 ms  0x6d47 ret:0x0
   308 ms  0x6d47 PR_Connect()
   308 ms  0x6d47 fd:0x7f52a84c5700
   526 ms  0x6d47 SECKEY_CreateECPrivateKey()
   526 ms  0x6d47 cx:0x7f52a85af728
   528 ms     | 0x6d47 EC_ValidatePublicKey()
   528 ms     | 0x6d47 ret:0x0
   529 ms  0x6d47 ret:0x7f52a8557820::7f52a8557820  10 ef 5a a8                                      ..Z.
   529 ms  0x6d47 SECKEY_CreateECPrivateKey()
   529 ms  0x6d47 cx:0x7f52a85af728
   531 ms     | 0x6d47 EC_ValidatePublicKey()
   536 ms     | 0x6d47 ret:0x0
   536 ms  0x6d47 ret:0x7f52a8559820::7f52a8559820  d0 ed 5a a8                                      ..Z.
           /* TID 0x6db0 */
   621 ms  0x6db0 PR_Close()
   621 ms  0x6db0 fd:0x7f52a84c5610
   624 ms  0x6db0 PR_Close()
   624 ms  0x6db0 fd:0x7f52a84c5610
   683 ms  0x6db0 PR_Close()
   683 ms  0x6db0 fd:0x7f52a84c57c0
           /* TID 0x6d47 */
   757 ms  SECKEY_ECParamsToKeySize()
   758 ms  0x6d47 ret:0x100
   758 ms  0x6d47 SECKEY_CreateECPrivateKey()
   758 ms  0x6d47 cx:0x7f52a85af728
   758 ms     | 0x6d47 EC_ValidatePublicKey()
   760 ms     | 0x6d47 ret:0x0
   760 ms  0x6d47 ret:0x7f52a8562820::7f52a8562820  f0 06 5f a8                                      .._.
   760 ms  0x6d47 PK11_PubDeriveWithKDF()
   760 ms  0x6d47 seckey:0x7f52a8562820
   760 ms     | 0x6d47 EC_ValidatePublicKey()
   762 ms     | 0x6d47 ret:0x0
   763 ms  0x6d47 ret:0x7f52aa0fbb00
   763 ms  0x6d47 PK11_DeriveWithFlags()
   763 ms  0x6d47 basekey:0x7f52aa0fbb00
   763 ms     | 0x6d47 PK11_DeriveWithTemplate()
   763 ms  0x6d47 ret:0x7f52a85e6700
   763 ms  0x6d47 PK11_Derive()
   763 ms  0x6d47 basekey:0x7f52a85e6700
   763 ms     | 0x6d47 PK11_DeriveWithTemplate()
   763 ms  0x6d47 ret:0x7f52a85e6800
   763 ms  0x6d47 SECKEY_DestroyPrivateKey()
   763 ms  0x6d47 privk:0x7f52a8562820::7f52a8562820  f0 06 5f a8                                      .._.
   763 ms  0x6d47 privk:0x7f52a8562820::7f52a8562820  e5 e5 e5 e5                                      ....
   763 ms  0x6d47 PK11_Encrypt()
   763 ms  0x6d47 symkey:0x7f52a85e6980
   764 ms  0x6d47 PR_Connect()
   764 ms  0x6d47 fd:0x7f52a84c5ca0
           /* TID 0x6dac */
   816 ms  0x6dac _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   816 ms  0x6dac ret:0x0
           /* TID 0x6d4f */
   817 ms  0x6d4f PR_Close()
   817 ms  0x6d4f fd:0x7f52a84c5b80
           /* TID 0x6d47 */
   817 ms  0x6d47 SSL_AuthCertificateComplete()
   817 ms  0x6d47 fd:0x7f52a84c5700
   817 ms  0x6d47 err:0x0
   818 ms  0x6d47 PK11_Encrypt()
   818 ms  0x6d47 symkey:0x7f52a85e6980
   981 ms  0x6d47 SECKEY_DestroyPrivateKey()
   981 ms  0x6d47 privk:0x7f52a8559820::7f52a8559820  d0 ed 5a a8                                      ..Z.
   982 ms  0x6d47 privk:0x7f52a8559820::7f52a8559820  e5 e5 e5 e5                                      ....
   982 ms  0x6d47 SECKEY_DestroyPrivateKey()
   982 ms  0x6d47 privk:0x7f52a8557820::7f52a8557820  10 ef 5a a8                                      ..Z.
   982 ms  0x6d47 privk:0x7f52a8557820::7f52a8557820  e5 e5 e5 e5                                      ....
  1255 ms  0x6d47 SSL_ImportFD()
  1255 ms  0x6d47 ret:0x7f52a84c5e20
  1255 ms  0x6d47 SSL_AuthCertificateHook()
  1255 ms  0x6d47 fd:0x7f52a84c5e20
  1255 ms  0x6d47 ret:0x0
  1255 ms  0x6d47 PR_Connect()
  1255 ms  0x6d47 fd:0x7f52a84c5e20
  1281 ms  0x6d47 SECKEY_CreateECPrivateKey()
  1281 ms  0x6d47 cx:0x7f52a85b0428
  1283 ms     | 0x6d47 EC_ValidatePublicKey()
  1283 ms     | 0x6d47 ret:0x0
  1283 ms  0x6d47 ret:0x7f52a8558820::7f52a8558820  b0 00 5f a8                                      .._.
  1283 ms  0x6d47 SECKEY_CreateECPrivateKey()
  1283 ms  0x6d47 cx:0x7f52a85b0428
  1284 ms     | 0x6d47 EC_ValidatePublicKey()
  1288 ms     | 0x6d47 ret:0x0
  1288 ms  0x6d47 ret:0x7f52a855e820::7f52a855e820  10 ef 5a a8                                      ..Z.
           /* TID 0x6dac */
  1341 ms  0x6dac _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1342 ms  0x6dac ret:0x0
           /* TID 0x6d47 */
  1342 ms  SECKEY_ECParamsToKeySize()
  1342 ms  0x6d47 ret:0x100
  1342 ms  0x6d47 SECKEY_CreateECPrivateKey()
  1342 ms  0x6d47 cx:0x7f52a85b0428
  1345 ms     | 0x6d47 EC_ValidatePublicKey()
  1349 ms     | 0x6d47 ret:0x0
  1349 ms  0x6d47 ret:0x7f52a8562020::7f52a8562020  90 07 5f a8                                      .._.
  1349 ms  0x6d47 PK11_PubDeriveWithKDF()
  1349 ms  0x6d47 seckey:0x7f52a8562020
  1349 ms     | 0x6d47 EC_ValidatePublicKey()
  1353 ms     | 0x6d47 ret:0x0
  1357 ms  0x6d47 ret:0x7f52aa0fbb00
  1357 ms  0x6d47 PK11_DeriveWithFlags()
  1357 ms  0x6d47 basekey:0x7f52aa0fbb00
  1357 ms     | 0x6d47 PK11_DeriveWithTemplate()
  1357 ms  0x6d47 ret:0x7f52a85e7500
  1357 ms  0x6d47 PK11_Derive()
  1357 ms  0x6d47 basekey:0x7f52a85e7500
  1357 ms     | 0x6d47 PK11_DeriveWithTemplate()
  1357 ms  0x6d47 ret:0x7f52a85e7580
  1357 ms  0x6d47 SECKEY_DestroyPrivateKey()
  1357 ms  0x6d47 privk:0x7f52a8562020::7f52a8562020  90 07 5f a8                                      .._.
  1358 ms  0x6d47 privk:0x7f52a8562020::7f52a8562020  e5 e5 e5 e5                                      ....
  1358 ms  0x6d47 PK11_Encrypt()
  1358 ms  0x6d47 symkey:0x7f52a85e7700
  1358 ms  0x6d47 SSL_AuthCertificateComplete()
  1358 ms  0x6d47 fd:0x7f52a84c5e20
  1358 ms  0x6d47 err:0x0
  1358 ms  0x6d47 PK11_Encrypt()
  1358 ms  0x6d47 symkey:0x7f52a85e7700
  1409 ms  0x6d47 SECKEY_DestroyPrivateKey()
  1409 ms  0x6d47 privk:0x7f52a855e820::7f52a855e820  10 ef 5a a8                                      ..Z.
  1410 ms  0x6d47 privk:0x7f52a855e820::7f52a855e820  e5 e5 e5 e5                                      ....
  1410 ms  0x6d47 SECKEY_DestroyPrivateKey()
  1410 ms  0x6d47 privk:0x7f52a8558820::7f52a8558820  b0 00 5f a8                                      .._.
  1410 ms  0x6d47 privk:0x7f52a8558820::7f52a8558820  e5 e5 e5 e5                                      ....
  1414 ms  0x6d47 PK11_Encrypt()
  1414 ms  0x6d47 symkey:0x7f52a85e7700
  1444 ms  0x6d47 PK11_Encrypt()
  1444 ms  0x6d47 symkey:0x7f52a85e7700
  1475 ms  0x6d47 PK11_Encrypt()
  1475 ms  0x6d47 symkey:0x7f52a85e7700
  1514 ms  0x6d47 PK11_Encrypt()
  1514 ms  0x6d47 symkey:0x7f52a85e7700
  1630 ms  0x6d47 PK11_Encrypt()
  1630 ms  0x6d47 symkey:0x7f52a85e7700
  1663 ms  0x6d47 PK11_Encrypt()
  1663 ms  0x6d47 symkey:0x7f52a85e7700
  1693 ms  0x6d47 PK11_Encrypt()
  1693 ms  0x6d47 symkey:0x7f52a85e7700
           /* TID 0x6da4 */
  1721 ms  0x6da4 PR_Close()
  1721 ms  0x6da4 fd:0x7f52a85e12e0
  1721 ms  0x6da4 PR_Close()
  1721 ms  0x6da4 fd:0x7f52a85e1430
  1721 ms  0x6da4 PR_Close()
  1721 ms  0x6da4 fd:0x7f52a85e12e0
  1721 ms  0x6da4 PR_Close()
  1721 ms  0x6da4 fd:0x7f52a85e1430
  1722 ms  0x6da4 PR_Close()
  1722 ms  0x6da4 fd:0x7f52a85e12e0
  1722 ms  0x6da4 PR_Close()
  1722 ms  0x6da4 fd:0x7f52a85e1430
  1722 ms  0x6da4 PR_Close()
  1722 ms  0x6da4 fd:0x7f52a85e12e0
  1722 ms  0x6da4 PR_Close()
  1722 ms  0x6da4 fd:0x7f52a85e1430
  1722 ms  0x6da4 PR_Close()
  1722 ms  0x6da4 fd:0x7f52a85e12e0
  1722 ms  0x6da4 PR_Close()
  1722 ms  0x6da4 fd:0x7f52a85e1430
  1722 ms  0x6da4 PR_Close()
  1722 ms  0x6da4 fd:0x7f52a85e12e0
  1722 ms  0x6da4 PR_Close()
  1722 ms  0x6da4 fd:0x7f52a85e1430
  1722 ms  0x6da4 PR_Close()
  1722 ms  0x6da4 fd:0x7f52a85e12e0
  1722 ms  0x6da4 PR_Close()
  1722 ms  0x6da4 fd:0x7f52a85e1430
  1723 ms  0x6da4 PR_Close()
  1723 ms  0x6da4 fd:0x7f52a85e12e0
  1723 ms  0x6da4 PR_Close()
  1723 ms  0x6da4 fd:0x7f52a85e1430
  1723 ms  0x6da4 PR_Close()
  1723 ms  0x6da4 fd:0x7f52a85e12e0
  1723 ms  0x6da4 PR_Close()
  1723 ms  0x6da4 fd:0x7f52a85e1430
  1723 ms  0x6da4 PR_Close()
  1723 ms  0x6da4 fd:0x7f52a85e12e0
  1723 ms  0x6da4 PR_Close()
  1723 ms  0x6da4 fd:0x7f52a85e1430
  1723 ms  0x6da4 PR_Close()
  1723 ms  0x6da4 fd:0x7f52a85e12e0
  1723 ms  0x6da4 PR_Close()
  1723 ms  0x6da4 fd:0x7f52a85e1430
  1723 ms  0x6da4 PR_Close()
  1723 ms  0x6da4 fd:0x7f52a85e12e0
  1723 ms  0x6da4 PR_Close()
  1723 ms  0x6da4 fd:0x7f52a85e1430
  1723 ms  0x6da4 PR_Close()
  1723 ms  0x6da4 fd:0x7f52a85e12e0
  1723 ms  0x6da4 PR_Close()
  1723 ms  0x6da4 fd:0x7f52a85e1430
  1724 ms  0x6da4 PR_Close()
  1724 ms  0x6da4 fd:0x7f52a85e12e0
  1724 ms  0x6da4 PR_Close()
  1724 ms  0x6da4 fd:0x7f52a85e1430
  1727 ms  0x6da4 PR_Close()
  1727 ms  0x6da4 fd:0x7f52a85e12e0
  1727 ms  0x6da4 PR_Close()
  1727 ms  0x6da4 fd:0x7f52a85e12e0
  1730 ms  0x6da4 PR_Close()
  1730 ms  0x6da4 fd:0x7f52a85e12e0
  1730 ms  0x6da4 PR_Close()
  1730 ms  0x6da4 fd:0x7f52a85e1400
  1732 ms  0x6da4 PR_Close()
  1732 ms  0x6da4 fd:0x7f52a85e1400
  1733 ms  0x6da4 PR_Close()
  1733 ms  0x6da4 fd:0x7f52a85e1400
  1735 ms  0x6da4 PR_Close()
  1735 ms  0x6da4 fd:0x7f52a85e1400
  1735 ms  0x6da4 PR_Close()
  1735 ms  0x6da4 fd:0x7f52a85e1400
  1778 ms  0x6da4 PR_Close()
  1778 ms  0x6da4 fd:0x7f52a85e1400
  1779 ms  0x6da4 PR_Close()
  1779 ms  0x6da4 fd:0x7f52a85e1400
  1786 ms  0x6da4 PR_Close()
  1786 ms  0x6da4 fd:0x7f52a85e1400
  1786 ms  0x6da4 PR_Close()
  1786 ms  0x6da4 fd:0x7f52a85e1400
  1793 ms  0x6da4 PR_Close()
  1793 ms  0x6da4 fd:0x7f52a85e1400
  1793 ms  0x6da4 PR_Close()
  1793 ms  0x6da4 fd:0x7f52a85e1400
  1795 ms  0x6da4 PR_Close()
  1795 ms  0x6da4 fd:0x7f52a85e1400
  1795 ms  0x6da4 PR_Close()
  1795 ms  0x6da4 fd:0x7f52a85e1400
           /* TID 0x6da1 */
  1796 ms  0x6da1 PR_Close()
  1796 ms  0x6da1 fd:0x7f52a85e1400
  1796 ms  0x6da1 PR_Close()
  1796 ms  0x6da1 fd:0x7f52a85e1400
  1796 ms  0x6da1 PR_Close()
  1796 ms  0x6da1 fd:0x7f52a85e1400
  1796 ms  0x6da1 PR_Close()
  1796 ms  0x6da1 fd:0x7f52a85e1400
  1796 ms  0x6da1 PR_Close()
  1796 ms  0x6da1 fd:0x7f52a85e1400
  1796 ms  0x6da1 PR_Close()
  1796 ms  0x6da1 fd:0x7f52a85e1400
  1796 ms  0x6da1 PR_Close()
  1796 ms  0x6da1 fd:0x7f52a85e1400
  1796 ms  0x6da1 PR_Close()
  1796 ms  0x6da1 fd:0x7f52a85e1400
  1796 ms  0x6da1 PR_Close()
  1796 ms  0x6da1 fd:0x7f52a85e1400
  1796 ms  0x6da1 PR_Close()
  1796 ms  0x6da1 fd:0x7f52a85e1400
  1796 ms  0x6da1 PR_Close()
  1796 ms  0x6da1 fd:0x7f52a85e1400
  1796 ms  0x6da1 PR_Close()
  1796 ms  0x6da1 fd:0x7f52a85e1400
  1796 ms  0x6da1 PR_Close()
  1796 ms  0x6da1 fd:0x7f52a85e1400
  1796 ms  0x6da1 PR_Close()
  1796 ms  0x6da1 fd:0x7f52a85e1400
  1796 ms  0x6da1 PR_Close()
  1796 ms  0x6da1 fd:0x7f52a85e1400
           /* TID 0x6db0 */
  2299 ms  0x6db0 PR_Close()
  2299 ms  0x6db0 fd:0x7f52a84c5dc0
  2302 ms  0x6db0 PR_Close()
  2302 ms  0x6db0 fd:0x7f52a84c5dc0
  2599 ms  0x6db0 PR_Close()
  2599 ms  0x6db0 fd:0x7f52a84c5e50
           /* TID 0x6d4f */
  4073 ms  0x6d4f PR_Close()
  4073 ms  0x6d4f fd:0x7f52a84c5e50
  4073 ms  0x6d4f PR_Close()
  4073 ms  0x6d4f fd:0x7f52a85e1430
  4073 ms  0x6d4f PR_Close()
  4073 ms  0x6d4f fd:0x7f52a85e1490
           /* TID 0x6d47 */
  4472 ms  0x6d47 SSL_ImportFD()
  4472 ms  0x6d47 ret:0x7f52a978f610
  4472 ms  0x6d47 SSL_AuthCertificateHook()
  4472 ms  0x6d47 fd:0x7f52a978f610
  4472 ms  0x6d47 ret:0x0
  4472 ms  0x6d47 PR_Connect()
  4472 ms  0x6d47 fd:0x7f52a978f610
  4498 ms  0x6d47 SECKEY_CreateECPrivateKey()
  4498 ms  0x6d47 cx:0x7f52a85b0768
  4499 ms     | 0x6d47 EC_ValidatePublicKey()
  4499 ms     | 0x6d47 ret:0x0
  4499 ms  0x6d47 ret:0x7f52ae33e820::7f52ae33e820  50 c6 89 97                                      P...
  4499 ms  0x6d47 SECKEY_CreateECPrivateKey()
  4499 ms  0x6d47 cx:0x7f52a85b0768
  4501 ms     | 0x6d47 EC_ValidatePublicKey()
  4504 ms     | 0x6d47 ret:0x0
  4504 ms  0x6d47 ret:0x7f52b28ce820::7f52b28ce820  d0 c8 89 97                                      ....
           /* TID 0x6dac */
  4536 ms  0x6dac _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4536 ms  0x6dac ret:0x0
           /* TID 0x6d47 */
  4539 ms  SECKEY_ECParamsToKeySize()
  4540 ms  0x6d47 ret:0xff
  4540 ms  0x6d47 SECKEY_CreateECPrivateKey()
  4540 ms  0x6d47 cx:0x7f52a85b0768
  4542 ms     | 0x6d47 EC_ValidatePublicKey()
  4542 ms     | 0x6d47 ret:0x0
  4542 ms  0x6d47 ret:0x7f529770d020::7f529770d020  c0 ce 89 97                                      ....
  4543 ms  0x6d47 PK11_PubDeriveWithKDF()
  4543 ms  0x6d47 seckey:0x7f529770d020
  4543 ms     | 0x6d47 EC_ValidatePublicKey()
  4543 ms     | 0x6d47 ret:0x0
  4545 ms  0x6d47 ret:0x7f52aa0fbb00
  4545 ms  0x6d47 PK11_DeriveWithFlags()
  4545 ms  0x6d47 basekey:0x7f52aa0fbb00
  4546 ms     | 0x6d47 PK11_DeriveWithTemplate()
  4546 ms  0x6d47 ret:0x7f52a9ba7f80
  4546 ms  0x6d47 PK11_Derive()
  4546 ms  0x6d47 basekey:0x7f52a9ba7f80
  4546 ms     | 0x6d47 PK11_DeriveWithTemplate()
  4546 ms  0x6d47 ret:0x7f52a9ba8000
  4546 ms  0x6d47 SECKEY_DestroyPrivateKey()
  4546 ms  0x6d47 privk:0x7f529770d020::7f529770d020  c0 ce 89 97                                      ....
  4546 ms  0x6d47 privk:0x7f529770d020::7f529770d020  e5 e5 e5 e5                                      ....
  4547 ms  0x6d47 PK11_Encrypt()
  4547 ms  0x6d47 symkey:0x7f52a9ba8180
  4549 ms  0x6d47 SSL_AuthCertificateComplete()
  4549 ms  0x6d47 fd:0x7f52a978f610
  4549 ms  0x6d47 err:0x0
  4549 ms  0x6d47 PK11_Encrypt()
  4549 ms  0x6d47 symkey:0x7f52a9ba8180
  4550 ms  0x6d47 PK11_Encrypt()
  4550 ms  0x6d47 symkey:0x7f52a9ba8180
  4573 ms  0x6d47 SECKEY_DestroyPrivateKey()
  4573 ms  0x6d47 privk:0x7f52b28ce820::7f52b28ce820  d0 c8 89 97                                      ....
  4573 ms  0x6d47 privk:0x7f52b28ce820::7f52b28ce820  e5 e5 e5 e5                                      ....
  4574 ms  0x6d47 SECKEY_DestroyPrivateKey()
  4574 ms  0x6d47 privk:0x7f52ae33e820::7f52ae33e820  50 c6 89 97                                      P...
  4574 ms  0x6d47 privk:0x7f52ae33e820::7f52ae33e820  e5 e5 e5 e5                                      ....
  4574 ms  0x6d47 PK11_Encrypt()
  4574 ms  0x6d47 symkey:0x7f52a9ba8180
           /* TID 0x6d5e */
  4605 ms  0x6d5e PR_Close()
  4605 ms  0x6d5e fd:0x7f52a978fb80
           /* TID 0x6d47 */
  4630 ms  0x6d47 SSL_ImportFD()
  4630 ms  0x6d47 ret:0x7f529774e370
  4630 ms  0x6d47 SSL_AuthCertificateHook()
  4630 ms  0x6d47 fd:0x7f529774e370
  4630 ms  0x6d47 ret:0x0
  4630 ms  0x6d47 PR_Connect()
  4630 ms  0x6d47 fd:0x7f529774e370
  4656 ms  0x6d47 SECKEY_CreateECPrivateKey()
  4656 ms  0x6d47 cx:0x7f52a85b0de8
  4657 ms     | 0x6d47 EC_ValidatePublicKey()
  4657 ms     | 0x6d47 ret:0x0
  4657 ms  0x6d47 ret:0x7f5297712820::7f5297712820  30 a8 89 97                                      0...
  4658 ms  0x6d47 SECKEY_CreateECPrivateKey()
  4658 ms  0x6d47 cx:0x7f52a85b0de8
  4659 ms     | 0x6d47 EC_ValidatePublicKey()
  4663 ms     | 0x6d47 ret:0x0
  4663 ms  0x6d47 ret:0x7f5297714820::7f5297714820  10 aa 89 97                                      ....
           /* TID 0x6dac */
  4692 ms  0x6dac _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4692 ms  0x6dac ret:0x0
           /* TID 0x6d47 */
  4692 ms  SECKEY_ECParamsToKeySize()
  4692 ms  0x6d47 ret:0xff
  4692 ms  0x6d47 SECKEY_CreateECPrivateKey()
  4692 ms  0x6d47 cx:0x7f52a85b0de8
  4694 ms     | 0x6d47 EC_ValidatePublicKey()
  4694 ms     | 0x6d47 ret:0x0
  4694 ms  0x6d47 ret:0x7f5297717820::7f5297717820  a0 ab 89 97                                      ....
  4694 ms  0x6d47 PK11_PubDeriveWithKDF()
  4694 ms  0x6d47 seckey:0x7f5297717820
  4694 ms     | 0x6d47 EC_ValidatePublicKey()
  4694 ms     | 0x6d47 ret:0x0
  4695 ms  0x6d47 ret:0x7f52aa0fbb00
  4695 ms  0x6d47 PK11_DeriveWithFlags()
  4695 ms  0x6d47 basekey:0x7f52aa0fbb00
  4695 ms     | 0x6d47 PK11_DeriveWithTemplate()
  4695 ms  0x6d47 ret:0x7f52a9ba8e80
  4695 ms  0x6d47 PK11_Derive()
  4695 ms  0x6d47 basekey:0x7f52a9ba8e80
  4696 ms     | 0x6d47 PK11_DeriveWithTemplate()
  4696 ms  0x6d47 ret:0x7f52a9ba8f00
  4696 ms  0x6d47 SECKEY_DestroyPrivateKey()
  4696 ms  0x6d47 privk:0x7f5297717820::7f5297717820  a0 ab 89 97                                      ....
  4696 ms  0x6d47 privk:0x7f5297717820::7f5297717820  e5 e5 e5 e5                                      ....
  4696 ms  0x6d47 PK11_Encrypt()
  4696 ms  0x6d47 symkey:0x7f5297825100
  4696 ms  0x6d47 SSL_AuthCertificateComplete()
  4696 ms  0x6d47 fd:0x7f529774e370
  4696 ms  0x6d47 err:0x0
  4697 ms  0x6d47 PK11_Encrypt()
  4697 ms  0x6d47 symkey:0x7f5297825100
  4698 ms  0x6d47 PK11_Encrypt()
  4698 ms  0x6d47 symkey:0x7f5297825100
  4723 ms  0x6d47 SECKEY_DestroyPrivateKey()
  4723 ms  0x6d47 privk:0x7f5297714820::7f5297714820  10 aa 89 97                                      ....
  4723 ms  0x6d47 privk:0x7f5297714820::7f5297714820  e5 e5 e5 e5                                      ....
  4724 ms  0x6d47 SECKEY_DestroyPrivateKey()
  4724 ms  0x6d47 privk:0x7f5297712820::7f5297712820  30 a8 89 97                                      0...
  4724 ms  0x6d47 privk:0x7f5297712820::7f5297712820  e5 e5 e5 e5                                      ....
  4724 ms  0x6d47 PK11_Encrypt()
  4724 ms  0x6d47 symkey:0x7f5297825100
           /* TID 0x6d4f */
  4790 ms  0x6d4f PR_Close()
  4790 ms  0x6d4f fd:0x7f529774e5b0
           /* TID 0x6d5e */
  4807 ms  0x6d5e PR_Close()
  4807 ms  0x6d5e fd:0x7f529774e580
           /* TID 0x6d47 */
  4986 ms  0x6d47 SSL_ImportFD()
  4986 ms  0x6d47 ret:0x7f5297654af0
  4986 ms  0x6d47 SSL_AuthCertificateHook()
  4986 ms  0x6d47 fd:0x7f5297654af0
  4986 ms  0x6d47 ret:0x0
  4986 ms  0x6d47 PR_Connect()
  4986 ms  0x6d47 fd:0x7f5297654af0
  5023 ms  0x6d47 SSL_ImportFD()
  5023 ms  0x6d47 ret:0x7f5297654ca0
  5023 ms  0x6d47 SSL_AuthCertificateHook()
  5023 ms  0x6d47 fd:0x7f5297654ca0
  5023 ms  0x6d47 ret:0x0
  5023 ms  0x6d47 PR_Connect()
  5023 ms  0x6d47 fd:0x7f5297654ca0
  5024 ms  0x6d47 SSL_ImportFD()
  5024 ms  0x6d47 ret:0x7f5297654cd0
  5024 ms  0x6d47 SSL_AuthCertificateHook()
  5024 ms  0x6d47 fd:0x7f5297654cd0
  5024 ms  0x6d47 ret:0x0
  5024 ms  0x6d47 PR_Connect()
  5024 ms  0x6d47 fd:0x7f5297654cd0
  5024 ms  0x6d47 SECKEY_CreateECPrivateKey()
  5024 ms  0x6d47 cx:0x7f52a85b12c8
  5026 ms     | 0x6d47 EC_ValidatePublicKey()
  5026 ms     | 0x6d47 ret:0x0
  5026 ms  0x6d47 ret:0x7f529762c820::7f529762c820  30 18 6b a8                                      0.k.
  5031 ms  0x6d47 SECKEY_CreateECPrivateKey()
  5031 ms  0x6d47 cx:0x7f52a85b12c8
  5033 ms     | 0x6d47 EC_ValidatePublicKey()
  5041 ms     | 0x6d47 ret:0x0
  5041 ms  0x6d47 ret:0x7f529762e820::7f529762e820  c0 14 6b a8                                      ..k.
  5061 ms  0x6d47 SECKEY_CreateECPrivateKey()
  5061 ms  0x6d47 cx:0x7f52a85b1468
  5063 ms     | 0x6d47 EC_ValidatePublicKey()
  5063 ms     | 0x6d47 ret:0x0
  5063 ms  0x6d47 ret:0x7f5297631020::7f5297631020  a0 16 6b a8                                      ..k.
  5063 ms  0x6d47 SECKEY_CreateECPrivateKey()
  5063 ms  0x6d47 cx:0x7f52a85b1468
  5064 ms     | 0x6d47 EC_ValidatePublicKey()
  5067 ms     | 0x6d47 ret:0x0
  5067 ms  0x6d47 ret:0x7f5297633020::7f5297633020  00 1b 6b a8                                      ..k.
  5068 ms  0x6d47 SECKEY_CreateECPrivateKey()
  5068 ms  0x6d47 cx:0x7f52a85b1608
  5069 ms     | 0x6d47 EC_ValidatePublicKey()
  5069 ms     | 0x6d47 ret:0x0
  5069 ms  0x6d47 ret:0x7f5297635820::7f5297635820  90 1c 6b a8                                      ..k.
  5070 ms  0x6d47 SECKEY_CreateECPrivateKey()
  5070 ms  0x6d47 cx:0x7f52a85b1608
  5071 ms     | 0x6d47 EC_ValidatePublicKey()
  5074 ms     | 0x6d47 ret:0x0
  5074 ms  0x6d47 ret:0x7f5297637820::7f5297637820  70 1e 6b a8                                      p.k.
           /* TID 0x6dac */
  5081 ms  0x6dac _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5082 ms  0x6dac ret:0x0
  5082 ms  0x6dac _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5082 ms  0x6dac ret:0x0
  6110 ms  0x6dac _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6111 ms  0x6dac ret:0x0
  6111 ms  0x6dac _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6111 ms  0x6dac ret:0x0
           /* TID 0x6d47 */
  6112 ms  SECKEY_ECParamsToKeySize()
  6112 ms  0x6d47 ret:0x100
  6112 ms  0x6d47 SECKEY_CreateECPrivateKey()
  6112 ms  0x6d47 cx:0x7f52a85b1468
  6114 ms     | 0x6d47 EC_ValidatePublicKey()
  6119 ms     | 0x6d47 ret:0x0
  6119 ms  0x6d47 ret:0x7f52a8568020::7f52a8568020  00 8b 60 97                                      ..`.
  6119 ms  0x6d47 PK11_PubDeriveWithKDF()
  6119 ms  0x6d47 seckey:0x7f52a8568020
  6119 ms     | 0x6d47 EC_ValidatePublicKey()
  6129 ms     | 0x6d47 ret:0x0
  6132 ms  0x6d47 ret:0x7f52aa0fbb00
  6132 ms  0x6d47 PK11_DeriveWithFlags()
  6132 ms  0x6d47 basekey:0x7f52aa0fbb00
  6132 ms     | 0x6d47 PK11_DeriveWithTemplate()
  6132 ms  0x6d47 ret:0x7f529760ca80
  6132 ms  0x6d47 PK11_Derive()
  6132 ms  0x6d47 basekey:0x7f529760ca80
  6132 ms     | 0x6d47 PK11_DeriveWithTemplate()
  6132 ms  0x6d47 ret:0x7f529760cb00
  6132 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6132 ms  0x6d47 privk:0x7f52a8568020::7f52a8568020  00 8b 60 97                                      ..`.
  6132 ms  0x6d47 privk:0x7f52a8568020::7f52a8568020  e5 e5 e5 e5                                      ....
  6133 ms  0x6d47 PK11_Encrypt()
  6133 ms  0x6d47 symkey:0x7f529760cc80
  6134 ms  0x6d47 SSL_AuthCertificateComplete()
  6134 ms  0x6d47 fd:0x7f5297654af0
  6134 ms  0x6d47 err:0x0
  6134 ms  0x6d47 SSL_AuthCertificateComplete()
  6134 ms  0x6d47 fd:0x7f5297654ca0
  6134 ms  0x6d47 err:0x0
  6134 ms  SECKEY_ECParamsToKeySize()
  6134 ms  0x6d47 ret:0x100
  6134 ms  0x6d47 SECKEY_CreateECPrivateKey()
  6134 ms  0x6d47 cx:0x7f52a85b12c8
  6135 ms     | 0x6d47 EC_ValidatePublicKey()
  6137 ms     | 0x6d47 ret:0x0
  6137 ms  0x6d47 ret:0x7f52a856b020::7f52a856b020  00 8b 60 97                                      ..`.
  6137 ms  0x6d47 PK11_PubDeriveWithKDF()
  6137 ms  0x6d47 seckey:0x7f52a856b020
  6137 ms     | 0x6d47 EC_ValidatePublicKey()
  6139 ms     | 0x6d47 ret:0x0
  6141 ms  0x6d47 ret:0x7f52aa0fbb00
  6141 ms  0x6d47 PK11_DeriveWithFlags()
  6141 ms  0x6d47 basekey:0x7f52aa0fbb00
  6141 ms     | 0x6d47 PK11_DeriveWithTemplate()
  6142 ms  0x6d47 ret:0x7f529760cd80
  6142 ms  0x6d47 PK11_Derive()
  6142 ms  0x6d47 basekey:0x7f529760cd80
  6142 ms     | 0x6d47 PK11_DeriveWithTemplate()
  6142 ms  0x6d47 ret:0x7f529760ce00
  6142 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6142 ms  0x6d47 privk:0x7f52a856b020::7f52a856b020  00 8b 60 97                                      ..`.
  6142 ms  0x6d47 privk:0x7f52a856b020::7f52a856b020  e5 e5 e5 e5                                      ....
  6142 ms  0x6d47 PK11_Encrypt()
  6142 ms  0x6d47 symkey:0x7f529760cf80
           /* TID 0x6dac */
  6143 ms  0x6dac _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6143 ms  0x6dac ret:0x0
  6143 ms  0x6dac _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6144 ms  0x6dac ret:0x0
           /* TID 0x6d47 */
  6144 ms  SECKEY_ECParamsToKeySize()
  6144 ms  0x6d47 ret:0x100
  6144 ms  0x6d47 SECKEY_CreateECPrivateKey()
  6144 ms  0x6d47 cx:0x7f52a85b1608
  6145 ms     | 0x6d47 EC_ValidatePublicKey()
  6146 ms     | 0x6d47 ret:0x0
  6146 ms  0x6d47 ret:0x7f52a86db020::7f52a86db020  90 52 64 97                                      .Rd.
  6146 ms  0x6d47 PK11_PubDeriveWithKDF()
  6146 ms  0x6d47 seckey:0x7f52a86db020
  6146 ms     | 0x6d47 EC_ValidatePublicKey()
  6148 ms     | 0x6d47 ret:0x0
  6150 ms  0x6d47 ret:0x7f52aa0fbb00
  6150 ms  0x6d47 PK11_DeriveWithFlags()
  6150 ms  0x6d47 basekey:0x7f52aa0fbb00
  6150 ms     | 0x6d47 PK11_DeriveWithTemplate()
  6150 ms  0x6d47 ret:0x7f5297825e80
  6150 ms  0x6d47 PK11_Derive()
  6150 ms  0x6d47 basekey:0x7f5297825e80
  6150 ms     | 0x6d47 PK11_DeriveWithTemplate()
  6150 ms  0x6d47 ret:0x7f5297826400
  6150 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6150 ms  0x6d47 privk:0x7f52a86db020::7f52a86db020  90 52 64 97                                      .Rd.
  6150 ms  0x6d47 privk:0x7f52a86db020::7f52a86db020  e5 e5 e5 e5                                      ....
  6150 ms  0x6d47 PK11_Encrypt()
  6150 ms  0x6d47 symkey:0x7f52a9ba7800
  6151 ms  0x6d47 PK11_Encrypt()
  6151 ms  0x6d47 symkey:0x7f529760cc80
  6151 ms  0x6d47 PK11_Encrypt()
  6151 ms  0x6d47 symkey:0x7f529760cc80
  6152 ms  0x6d47 SSL_AuthCertificateComplete()
  6152 ms  0x6d47 fd:0x7f5297654cd0
  6152 ms  0x6d47 err:0x0
  6152 ms  0x6d47 PK11_Encrypt()
  6152 ms  0x6d47 symkey:0x7f529760cf80
  6152 ms  0x6d47 PK11_Encrypt()
  6152 ms  0x6d47 symkey:0x7f52a9ba7800
  6152 ms  0x6d47 PK11_Encrypt()
  6152 ms  0x6d47 symkey:0x7f529760cc80
  6171 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6171 ms  0x6d47 privk:0x7f5297633020::7f5297633020  00 1b 6b a8                                      ..k.
  6172 ms  0x6d47 privk:0x7f5297633020::7f5297633020  e5 e5 e5 e5                                      ....
  6172 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6172 ms  0x6d47 privk:0x7f5297631020::7f5297631020  a0 16 6b a8                                      ..k.
  6172 ms  0x6d47 privk:0x7f5297631020::7f5297631020  e5 e5 e5 e5                                      ....
  6187 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6187 ms  0x6d47 privk:0x7f5297637820::7f5297637820  70 1e 6b a8                                      p.k.
  6187 ms  0x6d47 privk:0x7f5297637820::7f5297637820  e5 e5 e5 e5                                      ....
  6187 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6187 ms  0x6d47 privk:0x7f5297635820::7f5297635820  90 1c 6b a8                                      ..k.
  6187 ms  0x6d47 privk:0x7f5297635820::7f5297635820  e5 e5 e5 e5                                      ....
  6187 ms  0x6d47 PR_Close()
  6187 ms  0x6d47 fd:0x7f5297654cd0
  6187 ms     | 0x6d47 PK11_Encrypt()
  6187 ms     | 0x6d47 symkey:0x7f52a9ba7800
  6206 ms  0x6d47 PK11_Encrypt()
  6206 ms  0x6d47 symkey:0x7f529760cc80
           /* TID 0x6d4f */
  6209 ms  0x6d4f PR_Close()
  6209 ms  0x6d4f fd:0x7f5297654520
  6213 ms  0x6d4f PR_Close()
  6213 ms  0x6d4f fd:0x7f5297654250
           /* TID 0x6d47 */
  6234 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6234 ms  0x6d47 privk:0x7f529762e820::7f529762e820  c0 14 6b a8                                      ..k.
  6235 ms  0x6d47 privk:0x7f529762e820::7f529762e820  e5 e5 e5 e5                                      ....
  6235 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6235 ms  0x6d47 privk:0x7f529762c820::7f529762c820  30 18 6b a8                                      0.k.
  6235 ms  0x6d47 privk:0x7f529762c820::7f529762c820  e5 e5 e5 e5                                      ....
           /* TID 0x6d4f */
  6600 ms  0x6d4f PR_Close()
  6600 ms  0x6d4f fd:0x7f529774e790
           /* TID 0x6d47 */
  6644 ms  0x6d47 PK11_Encrypt()
  6644 ms  0x6d47 symkey:0x7f529760cf80
  6648 ms  0x6d47 SSL_ImportFD()
  6648 ms  0x6d47 ret:0x7f52a84c5dc0
  6648 ms  0x6d47 SSL_AuthCertificateHook()
  6648 ms  0x6d47 fd:0x7f52a84c5dc0
  6648 ms  0x6d47 ret:0x0
  6648 ms  0x6d47 PR_Connect()
  6648 ms  0x6d47 fd:0x7f52a84c5dc0
  6652 ms  0x6d47 SSL_ImportFD()
  6652 ms  0x6d47 ret:0x7f52a84d23d0
  6652 ms  0x6d47 SSL_AuthCertificateHook()
  6652 ms  0x6d47 fd:0x7f52a84d23d0
  6652 ms  0x6d47 ret:0x0
  6652 ms  0x6d47 PR_Connect()
  6652 ms  0x6d47 fd:0x7f52a84d23d0
  6654 ms  0x6d47 SSL_ImportFD()
  6654 ms  0x6d47 ret:0x7f52a84d27c0
  6654 ms  0x6d47 SSL_AuthCertificateHook()
  6654 ms  0x6d47 fd:0x7f52a84d27c0
  6654 ms  0x6d47 ret:0x0
  6654 ms  0x6d47 PR_Connect()
  6654 ms  0x6d47 fd:0x7f52a84d27c0
  6656 ms  0x6d47 SSL_ImportFD()
  6656 ms  0x6d47 ret:0x7f52a84d2a90
  6656 ms  0x6d47 SSL_AuthCertificateHook()
  6656 ms  0x6d47 fd:0x7f52a84d2a90
  6656 ms  0x6d47 ret:0x0
  6656 ms  0x6d47 PR_Connect()
  6656 ms  0x6d47 fd:0x7f52a84d2a90
  6657 ms  0x6d47 SSL_ImportFD()
  6657 ms  0x6d47 ret:0x7f52a84d2d60
  6658 ms  0x6d47 SSL_AuthCertificateHook()
  6658 ms  0x6d47 fd:0x7f52a84d2d60
  6658 ms  0x6d47 ret:0x0
  6658 ms  0x6d47 PR_Connect()
  6658 ms  0x6d47 fd:0x7f52a84d2d60
  6683 ms  0x6d47 PK11_Encrypt()
  6683 ms  0x6d47 symkey:0x7f529760cf80
           /* TID 0x6d4f */
  6684 ms  0x6d4f PR_Close()
  6684 ms  0x6d4f fd:0x7f52a84bde50
           /* TID 0x6d47 */
  6684 ms  0x6d47 SECKEY_CreateECPrivateKey()
  6684 ms  0x6d47 cx:0x7f52a85b1608
  6685 ms     | 0x6d47 EC_ValidatePublicKey()
  6685 ms     | 0x6d47 ret:0x0
  6685 ms  0x6d47 ret:0x7f5297635820::7f5297635820  c0 9e 4d a8                                      ..M.
  6685 ms  0x6d47 SECKEY_CreateECPrivateKey()
  6685 ms  0x6d47 cx:0x7f52a85b1608
  6686 ms     | 0x6d47 EC_ValidatePublicKey()
  6687 ms     | 0x6d47 ret:0x0
  6687 ms  0x6d47 ret:0x7f5297637820::7f5297637820  50 d1 56 a8                                      P.V.
  6690 ms  0x6d47 SECKEY_CreateECPrivateKey()
  6690 ms  0x6d47 cx:0x7f52a85b2168
  6690 ms     | 0x6d47 EC_ValidatePublicKey()
  6690 ms     | 0x6d47 ret:0x0
  6690 ms  0x6d47 ret:0x7f5297713020::7f5297713020  e0 d2 56 a8                                      ..V.
  6690 ms  0x6d47 SECKEY_CreateECPrivateKey()
  6690 ms  0x6d47 cx:0x7f52a85b2168
  6691 ms     | 0x6d47 EC_ValidatePublicKey()
  6696 ms     | 0x6d47 ret:0x0
  6696 ms  0x6d47 ret:0x7f52a843d020::7f52a843d020  30 d8 56 a8                                      0.V.
  6699 ms  0x6d47 PK11_Encrypt()
  6699 ms  0x6d47 symkey:0x7f5297825100
  6701 ms  0x6d47 SECKEY_CreateECPrivateKey()
  6701 ms  0x6d47 cx:0x7f52a85b2308
  6701 ms     | 0x6d47 EC_ValidatePublicKey()
  6701 ms     | 0x6d47 ret:0x0
  6702 ms  0x6d47 ret:0x7f52a8442020::7f52a8442020  f0 db 56 a8                                      ..V.
  6702 ms  0x6d47 SECKEY_CreateECPrivateKey()
  6702 ms  0x6d47 cx:0x7f52a85b2308
  6702 ms     | 0x6d47 EC_ValidatePublicKey()
  6704 ms     | 0x6d47 ret:0x0
  6704 ms  0x6d47 ret:0x7f52a8444820::7f52a8444820  d0 dd 56 a8                                      ..V.
  6711 ms  0x6d47 SECKEY_CreateECPrivateKey()
  6711 ms  0x6d47 cx:0x7f52a85b24a8
  6712 ms     | 0x6d47 EC_ValidatePublicKey()
  6712 ms     | 0x6d47 ret:0x0
  6712 ms  0x6d47 ret:0x7f52a8550020::7f52a8550020  a0 e6 5a a8                                      ..Z.
  6712 ms  0x6d47 SECKEY_CreateECPrivateKey()
  6712 ms  0x6d47 cx:0x7f52a85b24a8
  6713 ms     | 0x6d47 EC_ValidatePublicKey()
  6714 ms     | 0x6d47 ret:0x0
  6714 ms  0x6d47 ret:0x7f52a8556020::7f52a8556020  40 07 5f a8                                      @._.
  6719 ms  0x6d47 SECKEY_CreateECPrivateKey()
  6719 ms  0x6d47 cx:0x7f52a85b2648
  6720 ms     | 0x6d47 EC_ValidatePublicKey()
  6720 ms     | 0x6d47 ret:0x0
  6720 ms  0x6d47 ret:0x7f52a8559820::7f52a8559820  40 a7 64 a8                                      @.d.
  6720 ms  0x6d47 SECKEY_CreateECPrivateKey()
  6720 ms  0x6d47 cx:0x7f52a85b2648
  6724 ms     | 0x6d47 EC_ValidatePublicKey()
  6726 ms     | 0x6d47 ret:0x0
  6726 ms  0x6d47 ret:0x7f52a8560820::7f52a8560820  20 14 6b a8                                       .k.
  6727 ms  0x6d47 PK11_Encrypt()
  6727 ms  0x6d47 symkey:0x7f529760cc80
           /* TID 0x6d4f */
  6729 ms  0x6d4f PR_Close()
  6729 ms  0x6d4f fd:0x7f52a84bdee0
           /* TID 0x6de5 */
  6730 ms  0x6de5 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6730 ms  0x6de5 ret:0x0
  6730 ms  0x6de5 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6730 ms  0x6de5 ret:0x0
           /* TID 0x6d47 */
  6730 ms  0x6d47 PK11_Encrypt()
  6730 ms  0x6d47 symkey:0x7f529760cf80
  6731 ms  0x6d47 SSL_AuthCertificateComplete()
  6731 ms  0x6d47 fd:0x7f52a84c5dc0
  6731 ms  0x6d47 err:0x0
  6735 ms  0x6d47 PK11_Derive()
  6735 ms  0x6d47 basekey:0x7f5297825e80
  6735 ms     | 0x6d47 PK11_DeriveWithTemplate()
  6735 ms  0x6d47 ret:0x7f5297826400
  6735 ms  0x6d47 PK11_Encrypt()
  6735 ms  0x6d47 symkey:0x7f52a9ba7500
  6736 ms  0x6d47 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6736 ms  0x6d47 ret:0x0
  6736 ms  0x6d47 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6736 ms  0x6d47 ret:0x0
  6736 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6736 ms  0x6d47 privk:0x7f52a843d020::7f52a843d020  30 d8 56 a8                                      0.V.
  6737 ms  0x6d47 privk:0x7f52a843d020::7f52a843d020  e5 e5 e5 e5                                      ....
  6737 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6737 ms  0x6d47 privk:0x7f5297713020::7f5297713020  e0 d2 56 a8                                      ..V.
  6737 ms  0x6d47 privk:0x7f5297713020::7f5297713020  e5 e5 e5 e5                                      ....
  6740 ms  0x6d47 PK11_Encrypt()
  6740 ms  0x6d47 symkey:0x7f52a9ba7500
  6740 ms  0x6d47 PK11_Derive()
  6740 ms  0x6d47 basekey:0x7f529760bc80
  6740 ms     | 0x6d47 PK11_DeriveWithTemplate()
  6741 ms  0x6d47 ret:0x7f52aa0fbb00
  6741 ms  0x6d47 PK11_Encrypt()
  6741 ms  0x6d47 symkey:0x7f52a84e7c80
  6742 ms  0x6d47 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6742 ms  0x6d47 ret:0x0
  6742 ms  0x6d47 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6742 ms  0x6d47 ret:0x0
  6742 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6742 ms  0x6d47 privk:0x7f52a8444820::7f52a8444820  d0 dd 56 a8                                      ..V.
  6742 ms  0x6d47 privk:0x7f52a8444820::7f52a8444820  e5 e5 e5 e5                                      ....
  6742 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6742 ms  0x6d47 privk:0x7f52a8442020::7f52a8442020  f0 db 56 a8                                      ..V.
  6742 ms  0x6d47 privk:0x7f52a8442020::7f52a8442020  e5 e5 e5 e5                                      ....
  6743 ms  0x6d47 PK11_Encrypt()
  6743 ms  0x6d47 symkey:0x7f52a84e7c80
  6751 ms  0x6d47 PK11_Derive()
  6751 ms  0x6d47 basekey:0x7f52a84e7f00
  6751 ms     | 0x6d47 PK11_DeriveWithTemplate()
  6751 ms  0x6d47 ret:0x7f52a84e7e80
  6751 ms  0x6d47 PK11_Encrypt()
  6751 ms  0x6d47 symkey:0x7f52a84e8080
  6756 ms  0x6d47 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6756 ms  0x6d47 ret:0x0
  6756 ms  0x6d47 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6756 ms  0x6d47 ret:0x0
  6756 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6756 ms  0x6d47 privk:0x7f52a8556020::7f52a8556020  40 07 5f a8                                      @._.
  6756 ms  0x6d47 privk:0x7f52a8556020::7f52a8556020  e5 e5 e5 e5                                      ....
  6757 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6757 ms  0x6d47 privk:0x7f52a8550020::7f52a8550020  a0 e6 5a a8                                      ..Z.
  6757 ms  0x6d47 privk:0x7f52a8550020::7f52a8550020  e5 e5 e5 e5                                      ....
  6757 ms  0x6d47 PK11_Encrypt()
  6757 ms  0x6d47 symkey:0x7f52a84e8080
  6760 ms  SECKEY_ECParamsToKeySize()
  6760 ms  0x6d47 ret:0x100
  6760 ms  0x6d47 SECKEY_CreateECPrivateKey()
  6760 ms  0x6d47 cx:0x7f52a85b1608
  6761 ms     | 0x6d47 EC_ValidatePublicKey()
  6762 ms     | 0x6d47 ret:0x0
  6762 ms  0x6d47 ret:0x7f52a8445020::7f52a8445020  d0 03 5f a8                                      .._.
  6762 ms  0x6d47 PK11_PubDeriveWithKDF()
  6762 ms  0x6d47 seckey:0x7f52a8445020
  6762 ms     | 0x6d47 EC_ValidatePublicKey()
  6770 ms     | 0x6d47 ret:0x0
  6774 ms  0x6d47 ret:0x7f52a8575100
  6774 ms  0x6d47 PK11_DeriveWithFlags()
  6774 ms  0x6d47 basekey:0x7f52a8575100
  6774 ms     | 0x6d47 PK11_DeriveWithTemplate()
  6774 ms  0x6d47 ret:0x7f529760b600
  6774 ms  0x6d47 PK11_Derive()
  6774 ms  0x6d47 basekey:0x7f529760b600
  6774 ms     | 0x6d47 PK11_DeriveWithTemplate()
  6774 ms  0x6d47 ret:0x7f52a84e7780
  6774 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6774 ms  0x6d47 privk:0x7f52a8445020::7f52a8445020  d0 03 5f a8                                      .._.
  6774 ms  0x6d47 privk:0x7f52a8445020::7f52a8445020  e5 e5 e5 e5                                      ....
  6774 ms  0x6d47 PK11_Encrypt()
  6774 ms  0x6d47 symkey:0x7f52a84e8900
           /* TID 0x6d4f */
  6779 ms  0x6d4f PR_Close()
  6779 ms  0x6d4f fd:0x7f52a84d2f40
           /* TID 0x6d47 */
  6779 ms  0x6d47 PK11_Encrypt()
  6779 ms  0x6d47 symkey:0x7f52a84e8900
  6780 ms  0x6d47 PK11_Derive()
  6780 ms  0x6d47 basekey:0x7f52a84e7500
  6780 ms     | 0x6d47 PK11_DeriveWithTemplate()
  6780 ms  0x6d47 ret:0x7f52a8575100
  6780 ms  0x6d47 PK11_Encrypt()
  6780 ms  0x6d47 symkey:0x7f52a8575680
  6782 ms  0x6d47 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6782 ms  0x6d47 ret:0x0
  6782 ms  0x6d47 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6782 ms  0x6d47 ret:0x0
  6782 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6782 ms  0x6d47 privk:0x7f52a8560820::7f52a8560820  20 14 6b a8                                       .k.
  6782 ms  0x6d47 privk:0x7f52a8560820::7f52a8560820  e5 e5 e5 e5                                      ....
  6783 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6783 ms  0x6d47 privk:0x7f52a8559820::7f52a8559820  40 a7 64 a8                                      @.d.
  6783 ms  0x6d47 privk:0x7f52a8559820::7f52a8559820  e5 e5 e5 e5                                      ....
  6787 ms  0x6d47 PK11_Encrypt()
  6787 ms  0x6d47 symkey:0x7f529760cf80
  6787 ms  0x6d47 PK11_Encrypt()
  6787 ms  0x6d47 symkey:0x7f52a8575680
  6789 ms  0x6d47 SSL_ImportFD()
  6789 ms  0x6d47 ret:0x7f52a8573070
  6789 ms  0x6d47 SSL_AuthCertificateHook()
  6789 ms  0x6d47 fd:0x7f52a8573070
  6789 ms  0x6d47 ret:0x0
  6789 ms  0x6d47 PR_Connect()
  6789 ms  0x6d47 fd:0x7f52a8573070
  6811 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6811 ms  0x6d47 privk:0x7f5297637820::7f5297637820  50 d1 56 a8                                      P.V.
  6811 ms  0x6d47 privk:0x7f5297637820::7f5297637820  e5 e5 e5 e5                                      ....
  6812 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6812 ms  0x6d47 privk:0x7f5297635820::7f5297635820  c0 9e 4d a8                                      ..M.
  6812 ms  0x6d47 privk:0x7f5297635820::7f5297635820  e5 e5 e5 e5                                      ....
  6826 ms  0x6d47 PK11_Encrypt()
  6826 ms  0x6d47 symkey:0x7f529760cf80
  6826 ms  0x6d47 SECKEY_CreateECPrivateKey()
  6826 ms  0x6d47 cx:0x7f52a85b2988
  6826 ms     | 0x6d47 EC_ValidatePublicKey()
  6826 ms     | 0x6d47 ret:0x0
  6827 ms  0x6d47 ret:0x7f5297635020::7f5297635020  60 e5 5a a8                                      `.Z.
  6827 ms  0x6d47 SECKEY_CreateECPrivateKey()
  6827 ms  0x6d47 cx:0x7f52a85b2988
  6827 ms     | 0x6d47 EC_ValidatePublicKey()
           /* TID 0x6d4f */
  6828 ms  0x6d4f PR_Close()
  6828 ms  0x6d4f fd:0x7f52a84d2a30
           /* TID 0x6d47 */
  6829 ms     | 0x6d47 ret:0x0
  6829 ms  0x6d47 ret:0x7f5297637020::7f5297637020  50 9b 4d a8                                      P.M.
           /* TID 0x6d4f */
  6863 ms  0x6d4f PR_Close()
  6863 ms  0x6d4f fd:0x7f52a85730a0
           /* TID 0x6d47 */
  6863 ms  0x6d47 PK11_Encrypt()
  6863 ms  0x6d47 symkey:0x7f529760cf80
           /* TID 0x6dac */
  6868 ms  0x6dac _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6868 ms  0x6dac ret:0x0
  6868 ms  0x6dac _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6869 ms  0x6dac ret:0x0
           /* TID 0x6d47 */
  6869 ms  0x6d47 SSL_AuthCertificateComplete()
  6869 ms  0x6d47 fd:0x7f52a8573070
  6869 ms  0x6d47 err:0x0
           /* TID 0x6d4f */
  6894 ms  0x6d4f PR_Close()
  6894 ms  0x6d4f fd:0x7f52a84d2ca0
           /* TID 0x6d47 */
  6902 ms  SECKEY_ECParamsToKeySize()
  6902 ms  0x6d47 ret:0x100
  6902 ms  0x6d47 SECKEY_CreateECPrivateKey()
  6902 ms  0x6d47 cx:0x7f52a85b2988
  6904 ms     | 0x6d47 EC_ValidatePublicKey()
  6906 ms     | 0x6d47 ret:0x0
  6906 ms  0x6d47 ret:0x7f52a8550020::7f52a8550020  e0 e7 5a a8                                      ..Z.
  6906 ms  0x6d47 PK11_PubDeriveWithKDF()
  6906 ms  0x6d47 seckey:0x7f52a8550020
  6907 ms     | 0x6d47 EC_ValidatePublicKey()
  6908 ms     | 0x6d47 ret:0x0
  6909 ms  0x6d47 ret:0x7f52a84e7200
  6909 ms  0x6d47 PK11_DeriveWithFlags()
  6909 ms  0x6d47 basekey:0x7f52a84e7200
  6909 ms     | 0x6d47 PK11_DeriveWithTemplate()
  6909 ms  0x6d47 ret:0x7f52a85e6f00
  6909 ms  0x6d47 PK11_Derive()
  6909 ms  0x6d47 basekey:0x7f52a85e6f00
  6909 ms     | 0x6d47 PK11_DeriveWithTemplate()
  6909 ms  0x6d47 ret:0x7f52a85e6f80
  6910 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6910 ms  0x6d47 privk:0x7f52a8550020::7f52a8550020  e0 e7 5a a8                                      ..Z.
  6910 ms  0x6d47 privk:0x7f52a8550020::7f52a8550020  e5 e5 e5 e5                                      ....
  6910 ms  0x6d47 PK11_Encrypt()
  6910 ms  0x6d47 symkey:0x7f52a85e7280
           /* TID 0x6d4f */
  6915 ms  0x6d4f PR_Close()
  6915 ms  0x6d4f fd:0x7f52a84d21f0
           /* TID 0x6d47 */
  6916 ms  0x6d47 PK11_Encrypt()
  6916 ms  0x6d47 symkey:0x7f52a85e7280
  6920 ms  0x6d47 PK11_Encrypt()
  6920 ms  0x6d47 symkey:0x7f52a85e7280
  6947 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6947 ms  0x6d47 privk:0x7f5297637020::7f5297637020  50 9b 4d a8                                      P.M.
  6947 ms  0x6d47 privk:0x7f5297637020::7f5297637020  e5 e5 e5 e5                                      ....
  6947 ms  0x6d47 SECKEY_DestroyPrivateKey()
  6947 ms  0x6d47 privk:0x7f5297635020::7f5297635020  60 e5 5a a8                                      `.Z.
  6947 ms  0x6d47 privk:0x7f5297635020::7f5297635020  e5 e5 e5 e5                                      ....
           /* TID 0x6d4f */
  6978 ms  0x6d4f PR_Close()
  6978 ms  0x6d4f fd:0x7f52a84d26d0
           /* TID 0x6d47 */
  6983 ms  0x6d47 PK11_Encrypt()
  6983 ms  0x6d47 symkey:0x7f52a85e7280
           /* TID 0x6d4f */
  7008 ms  0x6d4f PR_Close()
  7008 ms  0x6d4f fd:0x7f52a8573310
  7009 ms  0x6d4f PR_Close()
  7009 ms  0x6d4f fd:0x7f52a84d26d0
  7010 ms  0x6d4f PR_Close()
  7010 ms  0x6d4f fd:0x7f52a84d21f0
           /* TID 0x6d47 */
  7011 ms  0x6d47 PK11_Encrypt()
  7011 ms  0x6d47 symkey:0x7f5297825100
  7061 ms  0x6d47 PR_Close()
  7061 ms  0x6d47 fd:0x7f52a9afeca0
           /* TID 0x6d3c */
  7062 ms  0x6d3c EC_ValidatePublicKey()
  7064 ms  0x6d3c ret:0x0
  7064 ms  0x6d3c EC_ValidatePublicKey()
  7071 ms  0x6d3c ret:0x0
  7071 ms  0x6d3c EC_ValidatePublicKey()
  7073 ms  0x6d3c ret:0x0
  7073 ms  0x6d3c EC_ValidatePublicKey()
  7076 ms  0x6d3c ret:0x0
  7076 ms  0x6d3c EC_ValidatePublicKey()
  7081 ms  0x6d3c ret:0x0
  7081 ms  0x6d3c EC_ValidatePublicKey()
  7084 ms  0x6d3c ret:0x0
  7084 ms  0x6d3c EC_ValidatePublicKey()
  7096 ms  0x6d3c ret:0x0
  7096 ms  0x6d3c EC_ValidatePublicKey()
  7098 ms  0x6d3c ret:0x0
  7098 ms  0x6d3c EC_ValidatePublicKey()
  7099 ms  0x6d3c ret:0x0
  7099 ms  0x6d3c EC_ValidatePublicKey()
  7101 ms  0x6d3c ret:0x0
           /* TID 0x6d47 */
  7101 ms  0x6d47 PK11_Encrypt()
  7101 ms  0x6d47 symkey:0x7f5297825100
  7101 ms  0x6d47 PK11_Encrypt()
  7101 ms  0x6d47 symkey:0x7f529760cc80
  7102 ms  0x6d47 PK11_Encrypt()
  7102 ms  0x6d47 symkey:0x7f52a9ba8180
  7102 ms  0x6d47 PR_Close()
  7102 ms  0x6d47 fd:0x7f52a84d2d60
  7102 ms     | 0x6d47 PK11_Encrypt()
  7102 ms     | 0x6d47 symkey:0x7f52a8575680
  7102 ms  0x6d47 PR_Close()
  7102 ms  0x6d47 fd:0x7f52a84d2a90
  7102 ms     | 0x6d47 PK11_Encrypt()
  7102 ms     | 0x6d47 symkey:0x7f52a84e8080
  7102 ms  0x6d47 PR_Close()
  7102 ms  0x6d47 fd:0x7f52a84d27c0
  7102 ms     | 0x6d47 PK11_Encrypt()
  7102 ms     | 0x6d47 symkey:0x7f52a84e7c80
  7103 ms  0x6d47 PR_Close()
  7103 ms  0x6d47 fd:0x7f52a84d23d0
  7103 ms     | 0x6d47 PK11_Encrypt()
  7103 ms     | 0x6d47 symkey:0x7f52a9ba7500
  7103 ms  0x6d47 PR_Close()
  7103 ms  0x6d47 fd:0x7f52a84c5dc0
  7103 ms     | 0x6d47 PK11_Encrypt()
  7103 ms     | 0x6d47 symkey:0x7f52a84e8900
  7103 ms  0x6d47 PR_Close()
  7103 ms  0x6d47 fd:0x7f5297654af0
  7103 ms     | 0x6d47 PK11_Encrypt()
  7103 ms     | 0x6d47 symkey:0x7f529760cf80
  7103 ms  0x6d47 PR_Close()
  7103 ms  0x6d47 fd:0x7f52a84c5e20
  7103 ms     | 0x6d47 PK11_Encrypt()
  7103 ms     | 0x6d47 symkey:0x7f52a85e7700
  7103 ms  0x6d47 PR_Close()
  7103 ms  0x6d47 fd:0x7f52a84c5ca0
  7103 ms  0x6d47 PR_Close()
  7103 ms  0x6d47 fd:0x7f52a84c5700
  7103 ms     | 0x6d47 PK11_Encrypt()
  7103 ms     | 0x6d47 symkey:0x7f52a85e6980
  7104 ms  0x6d47 PR_Close()
  7104 ms  0x6d47 fd:0x7f52adceda60
  7104 ms  0x6d47 PR_Close()
  7104 ms  0x6d47 fd:0x7f52a9afe280
  7104 ms     | 0x6d47 PK11_Encrypt()
  7104 ms     | 0x6d47 symkey:0x7f52aa0fc080
  7104 ms  0x6d47 PR_Close()
  7104 ms  0x6d47 fd:0x7f52a978f610
  7104 ms     | 0x6d47 PK11_Encrypt()
  7104 ms     | 0x6d47 symkey:0x7f52a9ba8180
  7104 ms  0x6d47 PR_Close()
  7104 ms  0x6d47 fd:0x7f5297654ca0
  7104 ms     | 0x6d47 PK11_Encrypt()
  7104 ms     | 0x6d47 symkey:0x7f529760cc80
  7105 ms  0x6d47 PR_Close()
  7105 ms  0x6d47 fd:0x7f529774e370
  7105 ms     | 0x6d47 PK11_Encrypt()
  7105 ms     | 0x6d47 symkey:0x7f5297825100
           /* TID 0x6d9f */
  7105 ms  0x6d9f PR_Close()
  7105 ms  0x6d9f fd:0x7f52976547f0
  7105 ms  0x6d9f PR_Close()
  7105 ms  0x6d9f fd:0x7f52976547f0
           /* TID 0x6d3c */
  7108 ms  0x6d3c PR_Close()
  7108 ms  0x6d3c fd:0x7f52aa5e7bb0
  7108 ms  0x6d3c PR_Close()
  7108 ms  0x6d3c fd:0x7f5297654ca0
  7109 ms  0x6d3c PR_Close()
  7109 ms  0x6d3c fd:0x7f5297654d30
  7109 ms  0x6d3c PR_Close()
  7109 ms  0x6d3c fd:0x7f5297654ca0
           /* TID 0x6d47 */
  7110 ms  0x6d47 PK11_Encrypt()
  7110 ms  0x6d47 symkey:0x7f52a85e7280
  7110 ms  0x6d47 PR_Close()
  7110 ms  0x6d47 fd:0x7f52a8573070
  7110 ms     | 0x6d47 PK11_Encrypt()
  7110 ms     | 0x6d47 symkey:0x7f52a85e7280
           /* TID 0x6d3c */
  7111 ms  0x6d3c PR_Close()
  7111 ms  0x6d3c fd:0x7f5297654d30
  7111 ms  0x6d3c PR_Close()
  7111 ms  0x6d3c fd:0x7f5297654ca0
           /* TID 0x6db0 */
  7118 ms  0x6db0 PR_Close()
  7118 ms  0x6db0 fd:0x7f5297654ca0
           /* TID 0x6d3c */
  7146 ms  0x6d3c PR_Close()
  7146 ms  0x6d3c fd:0x7f5297654d30
  7146 ms  0x6d3c PR_Close()
  7146 ms  0x6d3c fd:0x7f52a84d22b0
  7149 ms  0x6d3c PR_Close()
  7149 ms  0x6d3c fd:0x7f5297654d30
  7149 ms  0x6d3c PR_Close()
  7149 ms  0x6d3c fd:0x7f52a84d22b0
  7150 ms  0x6d3c PR_Close()
  7150 ms  0x6d3c fd:0x7f52b38c89a0
  7150 ms  0x6d3c PR_Close()
  7150 ms  0x6d3c fd:0x7f52b38c88b0
  7150 ms  0x6d3c PR_Close()
  7150 ms  0x6d3c fd:0x7f52b38c8a60
  7156 ms  0x6d3c PR_Close()
  7156 ms  0x6d3c fd:0x7f52a84d23d0
  7157 ms  0x6d3c PR_Close()
  7157 ms  0x6d3c fd:0x7f52a84d23d0
  7159 ms  0x6d3c PR_Close()
  7159 ms  0x6d3c fd:0x7f5297654d30
  7159 ms  0x6d3c PR_Close()
  7159 ms  0x6d3c fd:0x7f52a84d2550
  7160 ms  0x6d3c PR_Close()
  7160 ms  0x6d3c fd:0x7f5297654d30
  7160 ms  0x6d3c PR_Close()
  7160 ms  0x6d3c fd:0x7f52a84d2550
  7162 ms  0x6d3c PR_Close()
  7162 ms  0x6d3c fd:0x7f52a84d2580
  7163 ms  0x6d3c PR_Close()
  7163 ms  0x6d3c fd:0x7f52a84d2580
  7165 ms  0x6d3c PR_Close()
  7165 ms  0x6d3c fd:0x7f5297654d30
  7165 ms  0x6d3c PR_Close()
  7165 ms  0x6d3c fd:0x7f52a84d2730
  7166 ms  0x6d3c PR_Close()
  7166 ms  0x6d3c fd:0x7f5297654d30
  7166 ms  0x6d3c PR_Close()
  7166 ms  0x6d3c fd:0x7f52a84d2730
  7177 ms  0x6d3c PR_Close()
  7177 ms  0x6d3c fd:0x7f52a84d27c0
  7179 ms  0x6d3c PR_Close()
  7179 ms  0x6d3c fd:0x7f52a84d27c0
  7185 ms  0x6d3c PR_Close()
  7185 ms  0x6d3c fd:0x7f52a84d2b20
  7186 ms  0x6d3c PR_Close()
  7186 ms  0x6d3c fd:0x7f52a84d2b20
  7188 ms  0x6d3c PR_Close()
  7188 ms  0x6d3c fd:0x7f52a84d2b50
           /* TID 0x6d4f */
  7194 ms  0x6d4f PR_Close()
  7194 ms  0x6d4f fd:0x7f52a84bd640
           /* TID 0x6db0 */
  7208 ms  0x6db0 PR_Close()
  7208 ms  0x6db0 fd:0x7f52976541f0
           /* TID 0x6d3c */
  7210 ms  0x6d3c PR_Close()
  7210 ms  0x6d3c fd:0x7f5297654d30
  7210 ms  0x6d3c PR_Close()
  7210 ms  0x6d3c fd:0x7f529774e1f0
           /* TID 0x6db0 */
  7211 ms  0x6db0 PR_Close()
  7211 ms  0x6db0 fd:0x7f52976541f0
  7216 ms  0x6db0 PR_Close()
  7216 ms  0x6db0 fd:0x7f5297654ca0
  7255 ms  0x6db0 PR_Close()
  7255 ms  0x6db0 fd:0x7f5297654ca0
           /* TID 0x6d47 */
  7258 ms  0x6d47 SSL_ImportFD()
  7258 ms  0x6d47 ret:0x7f52976a8280
  7258 ms  0x6d47 SSL_AuthCertificateHook()
  7258 ms  0x6d47 fd:0x7f52976a8280
  7258 ms  0x6d47 ret:0x0
  7258 ms  0x6d47 PR_Connect()
  7258 ms  0x6d47 fd:0x7f52976a8280
  7259 ms  0x6d47 PR_Close()
  7259 ms  0x6d47 fd:0x7f52976a8280
           /* TID 0x6d41 */
  7267 ms  0x6d41 PR_Close()
  7267 ms  0x6d41 fd:0x7f52b222edf0
  7269 ms  0x6d41 PR_Close()
  7269 ms  0x6d41 fd:0x7f52aebe7760
           /* TID 0x6db0 */
  7284 ms  0x6db0 PR_Close()
  7284 ms  0x6db0 fd:0x7f52976a8880
           /* TID 0x6d47 */
  7288 ms  0x6d47 PR_Close()
  7288 ms  0x6d47 fd:0x7f52a8c12a00
           /* TID 0x6d9f */
  7289 ms  0x6d9f PR_Close()
  7289 ms  0x6d9f fd:0x7f52a84c5be0
  7289 ms  0x6d9f PR_Close()
  7289 ms  0x6d9f fd:0x7f5297654a30
  7289 ms  0x6d9f PR_Close()
  7289 ms  0x6d9f fd:0x7f5297654a30
  7289 ms  0x6d9f PR_Close()
  7289 ms  0x6d9f fd:0x7f5297654a30
           /* TID 0x6db0 */
  7289 ms  0x6db0 PR_Close()
  7289 ms  0x6db0 fd:0x7f52a84bdfd0
           /* TID 0x6d4f */
  7292 ms  0x6d4f PR_Close()
  7292 ms  0x6d4f fd:0x7f52a84d2ca0
  7292 ms  0x6d4f PR_Close()
  7292 ms  0x6d4f fd:0x7f52a84d2cd0
           /* TID 0x6d41 */
  7298 ms  0x6d41 PR_Close()
  7298 ms  0x6d41 fd:0x7f52a8c12940
           /* TID 0x6d3c */
  7300 ms  0x6d3c PR_Close()
  7300 ms  0x6d3c fd:0x7f5297654d30
  7300 ms  0x6d3c PR_Close()
  7300 ms  0x6d3c fd:0x7f52a8573370
           /* TID 0x6db0 */
  7302 ms  0x6db0 PR_Close()
  7302 ms  0x6db0 fd:0x7f52a8573400
  7304 ms  0x6db0 PR_Close()
  7304 ms  0x6db0 fd:0x7f52976a8c70
  7341 ms  0x6db0 PR_Close()
  7341 ms  0x6db0 fd:0x7f52976a8b80
  7342 ms  0x6db0 PR_Close()
  7342 ms  0x6db0 fd:0x7f52976a8b80
  7346 ms  0x6db0 PR_Close()
  7346 ms  0x6db0 fd:0x7f529774e670
  7347 ms  0x6db0 PR_Close()
  7347 ms  0x6db0 fd:0x7f529774e6d0
  7356 ms  0x6db0 PR_Close()
  7356 ms  0x6db0 fd:0x7f52a84d2a60
  7360 ms  0x6db0 PR_Close()
  7360 ms  0x6db0 fd:0x7f52a8573c70
  7366 ms  0x6db0 PR_Close()
  7366 ms  0x6db0 fd:0x7f52a8581700
  7375 ms  0x6db0 PR_Close()
  7375 ms  0x6db0 fd:0x7f52a8581af0
  7377 ms  0x6db0 PR_Close()
  7377 ms  0x6db0 fd:0x7f52a8581af0
           /* TID 0x6d3c */
  7537 ms  0x6d3c PR_Close()
  7537 ms  0x6d3c fd:0x7f52976540a0
  7537 ms  0x6d3c PR_Close()
  7537 ms  0x6d3c fd:0x7f52976540a0
  7542 ms  0x6d3c PR_Close()
  7542 ms  0x6d3c fd:0x7f52d0bda130
  7543 ms  0x6d3c PR_Close()
  7543 ms  0x6d3c fd:0x7f52d0bda190
Process terminated
