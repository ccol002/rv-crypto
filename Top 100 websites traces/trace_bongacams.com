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
           /* TID 0x170a */
    61 ms  0x170a PR_Close()
    61 ms  0x170a fd:0x7ffb80ef6dc0
    61 ms     | 0x170a PK11_Encrypt()
    61 ms     | 0x170a symkey:0x7ffb812e0480
           /* TID 0x1712 */
    62 ms  0x1712 PR_Close()
    62 ms  0x1712 fd:0x7ffb7f6c6550
           /* TID 0x170a */
   276 ms  0x170a SSL_ImportFD()
   276 ms  0x170a ret:0x7ffb7f3ca100
   276 ms  0x170a SSL_AuthCertificateHook()
   276 ms  0x170a fd:0x7ffb7f3ca100
   276 ms  0x170a ret:0x0
   276 ms  0x170a PR_Connect()
   276 ms  0x170a fd:0x7ffb7f3ca100
   489 ms  0x170a SECKEY_CreateECPrivateKey()
   489 ms  0x170a cx:0x7ffb7f694c88
   491 ms     | 0x170a EC_ValidatePublicKey()
   491 ms     | 0x170a ret:0x0
   491 ms  0x170a ret:0x7ffb7f34f820::7ffb7f34f820  80 18 3c 7f                                      ..<.
   492 ms  0x170a SECKEY_CreateECPrivateKey()
   492 ms  0x170a cx:0x7ffb7f694c88
   493 ms     | 0x170a EC_ValidatePublicKey()
   498 ms     | 0x170a ret:0x0
   498 ms  0x170a ret:0x7ffb7f351820::7ffb7f351820  60 1a 3c 7f                                      `.<.
           /* TID 0x176d */
   580 ms  0x176d PR_Close()
   580 ms  0x176d fd:0x7ffb7f3ca1c0
   583 ms  0x176d PR_Close()
   583 ms  0x176d fd:0x7ffb7f3ca1c0
           /* TID 0x170a */
   719 ms  SECKEY_ECParamsToKeySize()
   719 ms  0x170a ret:0x100
   719 ms  0x170a SECKEY_CreateECPrivateKey()
   719 ms  0x170a cx:0x7ffb7f694c88
   721 ms     | 0x170a EC_ValidatePublicKey()
   726 ms     | 0x170a ret:0x0
   726 ms  0x170a ret:0x7ffb7f35a820::7ffb7f35a820  c0 44 3e 7f                                      .D>.
   726 ms  0x170a PK11_PubDeriveWithKDF()
   726 ms  0x170a seckey:0x7ffb7f35a820
   726 ms     | 0x170a EC_ValidatePublicKey()
   730 ms     | 0x170a ret:0x0
   736 ms  0x170a ret:0x7ffb812e0400
   736 ms  0x170a PK11_DeriveWithFlags()
   736 ms  0x170a basekey:0x7ffb812e0400
   736 ms     | 0x170a PK11_DeriveWithTemplate()
   736 ms  0x170a ret:0x7ffb812e0380
   736 ms  0x170a PK11_Derive()
   736 ms  0x170a basekey:0x7ffb812e0380
   736 ms     | 0x170a PK11_DeriveWithTemplate()
   736 ms  0x170a ret:0x7ffb812e0500
   736 ms  0x170a SECKEY_DestroyPrivateKey()
   736 ms  0x170a privk:0x7ffb7f35a820::7ffb7f35a820  c0 44 3e 7f                                      .D>.
   736 ms  0x170a privk:0x7ffb7f35a820::7ffb7f35a820  e5 e5 e5 e5                                      ....
   737 ms  0x170a PK11_Encrypt()
   737 ms  0x170a symkey:0x7ffb816fa000
   738 ms  0x170a PR_Connect()
   738 ms  0x170a fd:0x7ffb7f3cabb0
           /* TID 0x176d */
   754 ms  0x176d PR_Close()
   754 ms  0x176d fd:0x7ffb7f3cab50
           /* TID 0x1712 */
   792 ms  0x1712 PR_Close()
   792 ms  0x1712 fd:0x7ffb7f3caa90
           /* TID 0x1765 */
   792 ms  0x1765 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   792 ms  0x1765 ret:0x0
           /* TID 0x170a */
   793 ms  0x170a SSL_AuthCertificateComplete()
   793 ms  0x170a fd:0x7ffb7f3ca100
   793 ms  0x170a err:0x0
   793 ms  0x170a PK11_Encrypt()
   793 ms  0x170a symkey:0x7ffb816fa000
   950 ms  0x170a SECKEY_DestroyPrivateKey()
   950 ms  0x170a privk:0x7ffb7f351820::7ffb7f351820  60 1a 3c 7f                                      `.<.
   950 ms  0x170a privk:0x7ffb7f351820::7ffb7f351820  e5 e5 e5 e5                                      ....
   951 ms  0x170a SECKEY_DestroyPrivateKey()
   951 ms  0x170a privk:0x7ffb7f34f820::7ffb7f34f820  80 18 3c 7f                                      ..<.
   951 ms  0x170a privk:0x7ffb7f34f820::7ffb7f34f820  e5 e5 e5 e5                                      ....
  1221 ms  0x170a SSL_ImportFD()
  1221 ms  0x170a ret:0x7ffb7f3caeb0
  1221 ms  0x170a SSL_AuthCertificateHook()
  1221 ms  0x170a fd:0x7ffb7f3caeb0
  1221 ms  0x170a ret:0x0
  1222 ms  0x170a PR_Connect()
  1222 ms  0x170a fd:0x7ffb7f3caeb0
  1248 ms  0x170a SECKEY_CreateECPrivateKey()
  1248 ms  0x170a cx:0x7ffb7f3d98c8
  1250 ms     | 0x170a EC_ValidatePublicKey()
  1250 ms     | 0x170a ret:0x0
  1250 ms  0x170a ret:0x7ffb7f350820::7ffb7f350820  60 1a 3c 7f                                      `.<.
  1250 ms  0x170a SECKEY_CreateECPrivateKey()
  1250 ms  0x170a cx:0x7ffb7f3d98c8
  1252 ms     | 0x170a EC_ValidatePublicKey()
  1257 ms     | 0x170a ret:0x0
  1257 ms  0x170a ret:0x7ffb7f356820::7ffb7f356820  f0 41 3e 7f                                      .A>.
           /* TID 0x1765 */
  1310 ms  0x1765 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1310 ms  0x1765 ret:0x0
           /* TID 0x170a */
  1311 ms  SECKEY_ECParamsToKeySize()
  1311 ms  0x170a ret:0x100
  1311 ms  0x170a SECKEY_CreateECPrivateKey()
  1311 ms  0x170a cx:0x7ffb7f3d98c8
  1313 ms     | 0x170a EC_ValidatePublicKey()
  1317 ms     | 0x170a ret:0x0
  1318 ms  0x170a ret:0x7ffb7f35a020::7ffb7f35a020  60 45 3e 7f                                      `E>.
  1318 ms  0x170a PK11_PubDeriveWithKDF()
  1318 ms  0x170a seckey:0x7ffb7f35a020
  1318 ms     | 0x170a EC_ValidatePublicKey()
  1322 ms     | 0x170a ret:0x0
  1327 ms  0x170a ret:0x7ffb812e0400
  1327 ms  0x170a PK11_DeriveWithFlags()
  1327 ms  0x170a basekey:0x7ffb812e0400
  1327 ms     | 0x170a PK11_DeriveWithTemplate()
  1327 ms  0x170a ret:0x7ffb7f3cf480
  1327 ms  0x170a PK11_Derive()
  1327 ms  0x170a basekey:0x7ffb7f3cf480
  1327 ms     | 0x170a PK11_DeriveWithTemplate()
  1327 ms  0x170a ret:0x7ffb7f3cf500
  1327 ms  0x170a SECKEY_DestroyPrivateKey()
  1327 ms  0x170a privk:0x7ffb7f35a020::7ffb7f35a020  60 45 3e 7f                                      `E>.
  1327 ms  0x170a privk:0x7ffb7f35a020::7ffb7f35a020  e5 e5 e5 e5                                      ....
  1327 ms  0x170a PK11_Encrypt()
  1327 ms  0x170a symkey:0x7ffb7f3cf680
  1328 ms  0x170a SSL_AuthCertificateComplete()
  1328 ms  0x170a fd:0x7ffb7f3caeb0
  1328 ms  0x170a err:0x0
  1328 ms  0x170a PK11_Encrypt()
  1328 ms  0x170a symkey:0x7ffb7f3cf680
  1380 ms  0x170a SECKEY_DestroyPrivateKey()
  1380 ms  0x170a privk:0x7ffb7f356820::7ffb7f356820  f0 41 3e 7f                                      .A>.
  1380 ms  0x170a privk:0x7ffb7f356820::7ffb7f356820  e5 e5 e5 e5                                      ....
  1380 ms  0x170a SECKEY_DestroyPrivateKey()
  1380 ms  0x170a privk:0x7ffb7f350820::7ffb7f350820  60 1a 3c 7f                                      `.<.
  1381 ms  0x170a privk:0x7ffb7f350820::7ffb7f350820  e5 e5 e5 e5                                      ....
  1384 ms  0x170a PK11_Encrypt()
  1384 ms  0x170a symkey:0x7ffb7f3cf680
  1412 ms  0x170a PK11_Encrypt()
  1412 ms  0x170a symkey:0x7ffb7f3cf680
  1439 ms  0x170a PK11_Encrypt()
  1439 ms  0x170a symkey:0x7ffb7f3cf680
  1467 ms  0x170a PK11_Encrypt()
  1467 ms  0x170a symkey:0x7ffb7f3cf680
  1581 ms  0x170a PK11_Encrypt()
  1581 ms  0x170a symkey:0x7ffb7f3cf680
  1612 ms  0x170a PK11_Encrypt()
  1612 ms  0x170a symkey:0x7ffb7f3cf680
  1642 ms  0x170a PK11_Encrypt()
  1642 ms  0x170a symkey:0x7ffb7f3cf680
           /* TID 0x175f */
  1668 ms  0x175f PR_Close()
  1668 ms  0x175f fd:0x7ffb7f3cadc0
  1668 ms  0x175f PR_Close()
  1668 ms  0x175f fd:0x7ffb7f3cae20
  1668 ms  0x175f PR_Close()
  1668 ms  0x175f fd:0x7ffb7f3cadc0
  1668 ms  0x175f PR_Close()
  1668 ms  0x175f fd:0x7ffb7f3cae20
  1668 ms  0x175f PR_Close()
  1668 ms  0x175f fd:0x7ffb7f3cadc0
  1668 ms  0x175f PR_Close()
  1668 ms  0x175f fd:0x7ffb7f3cae20
  1668 ms  0x175f PR_Close()
  1668 ms  0x175f fd:0x7ffb7f3cadc0
  1668 ms  0x175f PR_Close()
  1668 ms  0x175f fd:0x7ffb7f3cae20
  1668 ms  0x175f PR_Close()
  1668 ms  0x175f fd:0x7ffb7f3cadc0
  1669 ms  0x175f PR_Close()
  1669 ms  0x175f fd:0x7ffb7f3cae20
  1669 ms  0x175f PR_Close()
  1669 ms  0x175f fd:0x7ffb7f3cadc0
  1669 ms  0x175f PR_Close()
  1669 ms  0x175f fd:0x7ffb7f3cae20
  1669 ms  0x175f PR_Close()
  1669 ms  0x175f fd:0x7ffb7f3cadc0
  1669 ms  0x175f PR_Close()
  1669 ms  0x175f fd:0x7ffb7f3cae20
  1669 ms  0x175f PR_Close()
  1669 ms  0x175f fd:0x7ffb7f3cadc0
  1669 ms  0x175f PR_Close()
  1669 ms  0x175f fd:0x7ffb7f3cae20
  1669 ms  0x175f PR_Close()
  1669 ms  0x175f fd:0x7ffb7f3cadc0
  1669 ms  0x175f PR_Close()
  1669 ms  0x175f fd:0x7ffb7f3cae20
  1669 ms  0x175f PR_Close()
  1669 ms  0x175f fd:0x7ffb7f3cadc0
  1669 ms  0x175f PR_Close()
  1669 ms  0x175f fd:0x7ffb7f3cae20
  1669 ms  0x175f PR_Close()
  1669 ms  0x175f fd:0x7ffb7f3cadc0
  1669 ms  0x175f PR_Close()
  1669 ms  0x175f fd:0x7ffb7f3cae20
  1669 ms  0x175f PR_Close()
  1669 ms  0x175f fd:0x7ffb7f3cadc0
  1669 ms  0x175f PR_Close()
  1669 ms  0x175f fd:0x7ffb7f3cae20
  1669 ms  0x175f PR_Close()
  1669 ms  0x175f fd:0x7ffb7f3cadc0
  1669 ms  0x175f PR_Close()
  1669 ms  0x175f fd:0x7ffb7f3cae20
  1669 ms  0x175f PR_Close()
  1669 ms  0x175f fd:0x7ffb7f3cadc0
  1669 ms  0x175f PR_Close()
  1669 ms  0x175f fd:0x7ffb7f3cae20
  1671 ms  0x175f PR_Close()
  1671 ms  0x175f fd:0x7ffb7f3cadc0
  1671 ms  0x175f PR_Close()
  1671 ms  0x175f fd:0x7ffb7f3cad90
  1672 ms  0x175f PR_Close()
  1672 ms  0x175f fd:0x7ffb7f3cad90
  1672 ms  0x175f PR_Close()
  1672 ms  0x175f fd:0x7ffb7f3cadc0
  1674 ms  0x175f PR_Close()
  1674 ms  0x175f fd:0x7ffb7f3cadc0
  1674 ms  0x175f PR_Close()
  1674 ms  0x175f fd:0x7ffb7f3cadc0
  1675 ms  0x175f PR_Close()
  1675 ms  0x175f fd:0x7ffb7f3cadc0
  1675 ms  0x175f PR_Close()
  1675 ms  0x175f fd:0x7ffb7f3cadc0
  1705 ms  0x175f PR_Close()
  1705 ms  0x175f fd:0x7ffb7f3cadc0
  1706 ms  0x175f PR_Close()
  1706 ms  0x175f fd:0x7ffb7f3cadc0
  1713 ms  0x175f PR_Close()
  1713 ms  0x175f fd:0x7ffb7f3cadc0
  1713 ms  0x175f PR_Close()
  1713 ms  0x175f fd:0x7ffb7f3cadc0
  1719 ms  0x175f PR_Close()
  1719 ms  0x175f fd:0x7ffb7f3cadc0
  1719 ms  0x175f PR_Close()
  1719 ms  0x175f fd:0x7ffb7f3cadc0
  1721 ms  0x175f PR_Close()
  1721 ms  0x175f fd:0x7ffb7f3cadc0
  1721 ms  0x175f PR_Close()
  1721 ms  0x175f fd:0x7ffb7f3cadc0
           /* TID 0x175c */
  1721 ms  0x175c PR_Close()
  1721 ms  0x175c fd:0x7ffb7f3cadc0
  1721 ms  0x175c PR_Close()
  1721 ms  0x175c fd:0x7ffb7f3cadc0
  1721 ms  0x175c PR_Close()
  1721 ms  0x175c fd:0x7ffb7f3cadc0
  1722 ms  0x175c PR_Close()
  1722 ms  0x175c fd:0x7ffb7f3cadc0
  1722 ms  0x175c PR_Close()
  1722 ms  0x175c fd:0x7ffb7f3cadc0
  1722 ms  0x175c PR_Close()
  1722 ms  0x175c fd:0x7ffb7f3cadc0
  1722 ms  0x175c PR_Close()
  1722 ms  0x175c fd:0x7ffb7f3cadc0
  1722 ms  0x175c PR_Close()
  1722 ms  0x175c fd:0x7ffb7f3cadc0
  1722 ms  0x175c PR_Close()
  1722 ms  0x175c fd:0x7ffb7f3cadc0
  1722 ms  0x175c PR_Close()
  1722 ms  0x175c fd:0x7ffb7f3cadc0
  1722 ms  0x175c PR_Close()
  1722 ms  0x175c fd:0x7ffb7f3cadc0
  1722 ms  0x175c PR_Close()
  1722 ms  0x175c fd:0x7ffb7f3cadc0
  1722 ms  0x175c PR_Close()
  1722 ms  0x175c fd:0x7ffb7f3cadc0
  1722 ms  0x175c PR_Close()
  1722 ms  0x175c fd:0x7ffb7f3cadc0
  1722 ms  0x175c PR_Close()
  1722 ms  0x175c fd:0x7ffb7f3cadc0
           /* TID 0x176d */
  2224 ms  0x176d PR_Close()
  2224 ms  0x176d fd:0x7ffb6e60c1f0
  2226 ms  0x176d PR_Close()
  2226 ms  0x176d fd:0x7ffb6e60c1f0
  2759 ms  0x176d PR_Close()
  2759 ms  0x176d fd:0x7ffb6e60c310
           /* TID 0x1712 */
  4161 ms  0x1712 PR_Close()
  4161 ms  0x1712 fd:0x7ffb6e60c310
  4161 ms  0x1712 PR_Close()
  4161 ms  0x1712 fd:0x7ffb6e60c370
  4161 ms  0x1712 PR_Close()
  4161 ms  0x1712 fd:0x7ffb6e60c3d0
           /* TID 0x170a */
  4686 ms  0x170a SSL_ImportFD()
  4686 ms  0x170a ret:0x7ffb85cac850
  4686 ms  0x170a SSL_AuthCertificateHook()
  4686 ms  0x170a fd:0x7ffb85cac850
  4686 ms  0x170a ret:0x0
  4686 ms  0x170a PR_Connect()
  4686 ms  0x170a fd:0x7ffb85cac850
  4726 ms  0x170a SECKEY_CreateECPrivateKey()
  4726 ms  0x170a cx:0x7ffb7f3d9c08
  4727 ms     | 0x170a EC_ValidatePublicKey()
  4727 ms     | 0x170a ret:0x0
  4727 ms  0x170a ret:0x7ffb857b0020::7ffb857b0020  40 57 5b 6e                                      @W[n
  4727 ms  0x170a SECKEY_CreateECPrivateKey()
  4727 ms  0x170a cx:0x7ffb7f3d9c08
  4728 ms     | 0x170a EC_ValidatePublicKey()
  4729 ms     | 0x170a ret:0x0
  4729 ms  0x170a ret:0x7ffb6e503020::7ffb6e503020  c0 59 5b 6e                                      .Y[n
  4772 ms  SECKEY_ECParamsToKeySize()
  4772 ms  0x170a ret:0x100
  4772 ms  0x170a SECKEY_CreateECPrivateKey()
  4772 ms  0x170a cx:0x7ffb7f3d9c08
  4773 ms     | 0x170a EC_ValidatePublicKey()
  4775 ms     | 0x170a ret:0x0
  4775 ms  0x170a ret:0x7ffb6e515020::7ffb6e515020  60 20 52 6e                                      ` Rn
  4775 ms  0x170a PK11_PubDeriveWithKDF()
  4775 ms  0x170a seckey:0x7ffb6e515020
  4776 ms     | 0x170a EC_ValidatePublicKey()
  4777 ms     | 0x170a ret:0x0
  4779 ms  0x170a ret:0x7ffb812e0400
  4779 ms  0x170a PK11_DeriveWithFlags()
  4779 ms  0x170a basekey:0x7ffb812e0400
  4779 ms     | 0x170a PK11_DeriveWithTemplate()
  4779 ms  0x170a ret:0x7ffb89236b00
  4779 ms  0x170a PK11_Derive()
  4779 ms  0x170a basekey:0x7ffb89236b00
  4779 ms     | 0x170a PK11_DeriveWithTemplate()
  4779 ms  0x170a ret:0x7ffb89236b80
  4779 ms  0x170a SECKEY_DestroyPrivateKey()
  4779 ms  0x170a privk:0x7ffb6e515020::7ffb6e515020  60 20 52 6e                                      ` Rn
  4779 ms  0x170a privk:0x7ffb6e515020::7ffb6e515020  e5 e5 e5 e5                                      ....
  4779 ms  0x170a PK11_Encrypt()
  4779 ms  0x170a symkey:0x7ffb89236d00
  4962 ms  0x170a PR_Connect()
  4962 ms  0x170a fd:0x7ffb89232670
           /* TID 0x1712 */
  5046 ms  0x1712 PR_Close()
  5046 ms  0x1712 fd:0x7ffb892326d0
           /* TID 0x1765 */
  5046 ms  0x1765 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5046 ms  0x1765 ret:0x0
           /* TID 0x170a */
  5053 ms  0x170a SSL_AuthCertificateComplete()
  5053 ms  0x170a fd:0x7ffb85cac850
  5053 ms  0x170a err:0x0
  5053 ms     | 0x170a SECKEY_DestroyPrivateKey()
  5053 ms     | 0x170a privk:0x7ffb6e503020::7ffb6e503020  c0 59 5b 6e                                      .Y[n
  5053 ms     | 0x170a privk:0x7ffb6e503020::7ffb6e503020  e5 e5 e5 e5                                      ....
  5053 ms     | 0x170a SECKEY_DestroyPrivateKey()
  5053 ms     | 0x170a privk:0x7ffb857b0020::7ffb857b0020  40 57 5b 6e                                      @W[n
  5053 ms     | 0x170a privk:0x7ffb857b0020::7ffb857b0020  e5 e5 e5 e5                                      ....
  5053 ms  0x170a PK11_Encrypt()
  5053 ms  0x170a symkey:0x7ffb89236d00
           /* TID 0x1721 */
  5119 ms  0x1721 PR_Close()
  5119 ms  0x1721 fd:0x7ffb89232940
           /* TID 0x170a */
  5179 ms  0x170a PR_Connect()
  5179 ms  0x170a fd:0x7ffb6e550220
           /* TID 0x1721 */
  5306 ms  0x1721 PR_Close()
  5306 ms  0x1721 fd:0x7ffb6e5503d0
           /* TID 0x170a */
  5308 ms  0x170a SSL_ImportFD()
  5308 ms  0x170a ret:0x7ffb6e550760
  5308 ms  0x170a SSL_AuthCertificateHook()
  5308 ms  0x170a fd:0x7ffb6e550760
  5308 ms  0x170a ret:0x0
  5308 ms  0x170a PR_Connect()
  5308 ms  0x170a fd:0x7ffb6e550760
  5349 ms  0x170a SECKEY_CreateECPrivateKey()
  5349 ms  0x170a cx:0x7ffb7f3d9f48
  5349 ms     | 0x170a EC_ValidatePublicKey()
  5349 ms     | 0x170a ret:0x0
  5349 ms  0x170a ret:0x7ffb6e51b820::7ffb6e51b820  b0 2f 52 6e                                      ./Rn
  5350 ms  0x170a SECKEY_CreateECPrivateKey()
  5350 ms  0x170a cx:0x7ffb7f3d9f48
  5350 ms     | 0x170a EC_ValidatePublicKey()
  5352 ms     | 0x170a ret:0x0
  5352 ms  0x170a ret:0x7ffb6e51d820::7ffb6e51d820  30 2d 52 6e                                      0-Rn
  5395 ms  SECKEY_ECParamsToKeySize()
  5395 ms  0x170a ret:0x100
  5395 ms  0x170a SECKEY_CreateECPrivateKey()
  5395 ms  0x170a cx:0x7ffb7f3d9f48
  5396 ms     | 0x170a EC_ValidatePublicKey()
  5398 ms     | 0x170a ret:0x0
  5398 ms  0x170a ret:0x7ffb6e520820::7ffb6e520820  40 57 5b 6e                                      @W[n
  5398 ms  0x170a PK11_PubDeriveWithKDF()
  5398 ms  0x170a seckey:0x7ffb6e520820
  5398 ms     | 0x170a EC_ValidatePublicKey()
  5400 ms     | 0x170a ret:0x0
  5402 ms  0x170a ret:0x7ffb812e0400
  5402 ms  0x170a PK11_DeriveWithFlags()
  5402 ms  0x170a basekey:0x7ffb812e0400
  5402 ms     | 0x170a PK11_DeriveWithTemplate()
  5402 ms  0x170a ret:0x7ffb6e6b0180
  5403 ms  0x170a PK11_Derive()
  5403 ms  0x170a basekey:0x7ffb6e6b0180
  5403 ms     | 0x170a PK11_DeriveWithTemplate()
  5403 ms  0x170a ret:0x7ffb6e6b0200
  5403 ms  0x170a SECKEY_DestroyPrivateKey()
  5403 ms  0x170a privk:0x7ffb6e520820::7ffb6e520820  40 57 5b 6e                                      @W[n
  5403 ms  0x170a privk:0x7ffb6e520820::7ffb6e520820  e5 e5 e5 e5                                      ....
  5403 ms  0x170a PK11_Encrypt()
  5403 ms  0x170a symkey:0x7ffb6e6b0380
  5403 ms  0x170a SSL_AuthCertificateComplete()
  5403 ms  0x170a fd:0x7ffb6e550760
  5403 ms  0x170a err:0x0
  5403 ms  0x170a PK11_Encrypt()
  5403 ms  0x170a symkey:0x7ffb6e6b0380
  5444 ms  0x170a SECKEY_DestroyPrivateKey()
  5444 ms  0x170a privk:0x7ffb6e51d820::7ffb6e51d820  30 2d 52 6e                                      0-Rn
  5444 ms  0x170a privk:0x7ffb6e51d820::7ffb6e51d820  e5 e5 e5 e5                                      ....
  5444 ms  0x170a SECKEY_DestroyPrivateKey()
  5444 ms  0x170a privk:0x7ffb6e51b820::7ffb6e51b820  b0 2f 52 6e                                      ./Rn
  5444 ms  0x170a privk:0x7ffb6e51b820::7ffb6e51b820  e5 e5 e5 e5                                      ....
           /* TID 0x1721 */
  5689 ms  0x1721 PR_Close()
  5689 ms  0x1721 fd:0x7ffb6e550820
           /* TID 0x1712 */
  5765 ms  0x1712 PR_Close()
  5765 ms  0x1712 fd:0x7ffb892321f0
           /* TID 0x170a */
  5797 ms  0x170a SSL_ImportFD()
  5797 ms  0x170a ret:0x7ffb6e24c550
  5797 ms  0x170a SSL_AuthCertificateHook()
  5797 ms  0x170a fd:0x7ffb6e24c550
  5798 ms  0x170a ret:0x0
  5798 ms  0x170a PR_Connect()
  5798 ms  0x170a fd:0x7ffb6e24c550
  5836 ms  0x170a SECKEY_CreateECPrivateKey()
  5836 ms  0x170a cx:0x7ffb7f3da428
  5836 ms     | 0x170a EC_ValidatePublicKey()
  5836 ms     | 0x170a ret:0x0
  5836 ms  0x170a ret:0x7ffb6e4ae020::7ffb6e4ae020  30 2d 25 6e                                      0-%n
  5837 ms  0x170a SECKEY_CreateECPrivateKey()
  5837 ms  0x170a cx:0x7ffb7f3da428
  5837 ms     | 0x170a EC_ValidatePublicKey()
  5839 ms     | 0x170a ret:0x0
  5839 ms  0x170a ret:0x7ffb6e4b0020::7ffb6e4b0020  e0 a7 25 6e                                      ..%n
  5893 ms  0x170a PK11_Derive()
  5893 ms  0x170a basekey:0x7ffb812e0400
  5893 ms     | 0x170a PK11_DeriveWithTemplate()
  5893 ms  0x170a ret:0x7ffb6e258880
  5893 ms  0x170a PK11_PubDeriveWithKDF()
  5893 ms  0x170a seckey:0x7ffb6e4ae020
  5893 ms     | 0x170a EC_ValidatePublicKey()
  5893 ms     | 0x170a ret:0x0
  5894 ms  0x170a ret:0x7ffb812e0400
  5894 ms  SECKEY_ECParamsToKeySize()
  5894 ms  0x170a ret:0xff
  5894 ms  0x170a PK11_DeriveWithFlags()
  5894 ms  0x170a basekey:0x7ffb6e258880
  5894 ms     | 0x170a PK11_DeriveWithTemplate()
  5894 ms  0x170a ret:0x7ffb6e258b80
  5895 ms  0x170a PK11_Derive()
  5895 ms  0x170a basekey:0x7ffb812e0400
  5895 ms     | 0x170a PK11_DeriveWithTemplate()
  5895 ms  0x170a ret:0x7ffb6e258c00
  5895 ms  0x170a PK11_DeriveWithFlags()
  5895 ms  0x170a basekey:0x7ffb6e258c00
  5895 ms     | 0x170a PK11_DeriveWithTemplate()
  5895 ms  0x170a ret:0x7ffb6e258880
  5895 ms  0x170a PK11_DeriveWithFlags()
  5895 ms  0x170a basekey:0x7ffb6e258c00
  5895 ms     | 0x170a PK11_DeriveWithTemplate()
  5895 ms  0x170a ret:0x7ffb812e0400
  5895 ms  0x170a PK11_DeriveWithFlags()
  5895 ms  0x170a basekey:0x7ffb6e258c00
  5895 ms     | 0x170a PK11_DeriveWithTemplate()
  5895 ms  0x170a ret:0x7ffb6e258b80
  5895 ms  0x170a PK11_Derive()
  5895 ms  0x170a basekey:0x7ffb6e258c80
  5895 ms     | 0x170a PK11_DeriveWithTemplate()
  5895 ms  0x170a ret:0x7ffb6e258d80
  5895 ms  0x170a PK11_DeriveWithFlags()
  5895 ms  0x170a basekey:0x7ffb812e0400
  5895 ms     | 0x170a PK11_DeriveWithTemplate()
  5895 ms  0x170a ret:0x7ffb6e258c00
  5895 ms  0x170a PK11_DeriveWithFlags()
  5895 ms  0x170a basekey:0x7ffb812e0400
  5895 ms     | 0x170a PK11_DeriveWithTemplate()
  5895 ms  0x170a ret:0x7ffb6e258b80
  5899 ms  SECKEY_ECParamsToKeySize()
  5899 ms  0x170a ret:0x100
  5900 ms  SECKEY_ECParamsToBasePointOrderLen()
  5900 ms  0x170a ret:0x100
  5900 ms  SECKEY_ECParamsToBasePointOrderLen()
  5900 ms  0x170a ret:0x100
  5900 ms  0x170a EC_ValidatePublicKey()
  5904 ms  0x170a ret:0x0
  5909 ms  0x170a PK11_DeriveWithFlags()
  5909 ms  0x170a basekey:0x7ffb812e0400
  5909 ms     | 0x170a PK11_DeriveWithTemplate()
  5909 ms  0x170a ret:0x7ffb6e258b80
  5909 ms  0x170a PR_Connect()
  5909 ms  0x170a fd:0x7ffb6e256520
  5933 ms  0x170a SSL_ImportFD()
  5933 ms  0x170a ret:0x7ffb6e256820
  5933 ms  0x170a SSL_AuthCertificateHook()
  5933 ms  0x170a fd:0x7ffb6e256820
  5933 ms  0x170a ret:0x0
  5933 ms  0x170a PR_Connect()
  5933 ms  0x170a fd:0x7ffb6e256820
  5934 ms  0x170a SSL_ImportFD()
  5934 ms  0x170a ret:0x7ffb6e24cd90
  5934 ms  0x170a SSL_AuthCertificateHook()
  5934 ms  0x170a fd:0x7ffb6e24cd90
  5934 ms  0x170a ret:0x0
  5934 ms  0x170a PR_Connect()
  5934 ms  0x170a fd:0x7ffb6e24cd90
  5935 ms  0x170a SSL_ImportFD()
  5935 ms  0x170a ret:0x7ffb6e256220
  5935 ms  0x170a SSL_AuthCertificateHook()
  5935 ms  0x170a fd:0x7ffb6e256220
  5935 ms  0x170a ret:0x0
  5935 ms  0x170a PR_Connect()
  5935 ms  0x170a fd:0x7ffb6e256220
  5936 ms  0x170a SSL_ImportFD()
  5936 ms  0x170a ret:0x7ffb6e2564c0
  5936 ms  0x170a SSL_AuthCertificateHook()
  5936 ms  0x170a fd:0x7ffb6e2564c0
  5936 ms  0x170a ret:0x0
  5936 ms  0x170a PR_Connect()
  5936 ms  0x170a fd:0x7ffb6e2564c0
  5961 ms  0x170a SECKEY_CreateECPrivateKey()
  5961 ms  0x170a cx:0x7ffb7f3da768
  5963 ms     | 0x170a EC_ValidatePublicKey()
  5963 ms     | 0x170a ret:0x0
  5963 ms  0x170a ret:0x7ffb8121f020::7ffb8121f020  b0 af 25 6e                                      ..%n
  5963 ms  0x170a SECKEY_CreateECPrivateKey()
  5963 ms  0x170a cx:0x7ffb7f3da768
  5964 ms     | 0x170a EC_ValidatePublicKey()
  5968 ms     | 0x170a ret:0x0
  5968 ms  0x170a ret:0x7ffb6e104020::7ffb6e104020  b0 20 52 6e                                      . Rn
  5971 ms  0x170a SECKEY_CreateECPrivateKey()
  5971 ms  0x170a cx:0x7ffb7f3da908
  5973 ms     | 0x170a EC_ValidatePublicKey()
  5973 ms     | 0x170a ret:0x0
  5973 ms  0x170a ret:0x7ffb6e106820::7ffb6e106820  e0 22 52 6e                                      ."Rn
  5973 ms  0x170a SECKEY_CreateECPrivateKey()
  5973 ms  0x170a cx:0x7ffb7f3da908
  5974 ms     | 0x170a EC_ValidatePublicKey()
  5978 ms     | 0x170a ret:0x0
  5978 ms  0x170a ret:0x7ffb6e108820::7ffb6e108820  00 16 5d 6e                                      ..]n
  5979 ms  0x170a SECKEY_CreateECPrivateKey()
  5979 ms  0x170a cx:0x7ffb7f3dac48
  5979 ms     | 0x170a EC_ValidatePublicKey()
  5979 ms     | 0x170a ret:0x0
  5980 ms  0x170a ret:0x7ffb6e10b020::7ffb6e10b020  c0 19 5d 6e                                      ..]n
  5980 ms  0x170a SECKEY_CreateECPrivateKey()
  5980 ms  0x170a cx:0x7ffb7f3dac48
  5981 ms     | 0x170a EC_ValidatePublicKey()
  5983 ms     | 0x170a ret:0x0
  5984 ms  0x170a ret:0x7ffb6e10d020::7ffb6e10d020  60 1f 5d 6e                                      `.]n
  5984 ms  0x170a SECKEY_CreateECPrivateKey()
  5984 ms  0x170a cx:0x7ffb7f3daaa8
  5985 ms     | 0x170a EC_ValidatePublicKey()
  5985 ms     | 0x170a ret:0x0
  5985 ms  0x170a ret:0x7ffb6e10f820::7ffb6e10f820  b0 a0 12 6e                                      ...n
  5985 ms  0x170a SECKEY_CreateECPrivateKey()
  5985 ms  0x170a cx:0x7ffb7f3daaa8
  5986 ms     | 0x170a EC_ValidatePublicKey()
  5988 ms     | 0x170a ret:0x0
  5988 ms  0x170a ret:0x7ffb6e111820::7ffb6e111820  90 a2 12 6e                                      ...n
  6000 ms  0x170a PK11_Derive()
  6000 ms  0x170a basekey:0x7ffb6e258b80
  6000 ms     | 0x170a PK11_DeriveWithTemplate()
  6000 ms  0x170a ret:0x7ffb6e258c80
  6000 ms  0x170a PK11_PubDeriveWithKDF()
  6000 ms  0x170a seckey:0x7ffb8121f020
  6000 ms     | 0x170a EC_ValidatePublicKey()
  6001 ms     | 0x170a ret:0x0
  6001 ms  0x170a ret:0x7ffb6e258b80
  6001 ms  SECKEY_ECParamsToKeySize()
  6001 ms  0x170a ret:0xff
  6001 ms  0x170a PK11_DeriveWithFlags()
  6001 ms  0x170a basekey:0x7ffb6e258c80
  6001 ms     | 0x170a PK11_DeriveWithTemplate()
  6001 ms  0x170a ret:0x7ffb6e2c6280
  6001 ms  0x170a PK11_Derive()
  6001 ms  0x170a basekey:0x7ffb6e258b80
  6001 ms     | 0x170a PK11_DeriveWithTemplate()
  6001 ms  0x170a ret:0x7ffb6e2c6380
  6001 ms  0x170a PK11_DeriveWithFlags()
  6001 ms  0x170a basekey:0x7ffb6e2c6380
  6001 ms     | 0x170a PK11_DeriveWithTemplate()
  6001 ms  0x170a ret:0x7ffb6e258c80
  6001 ms  0x170a PK11_DeriveWithFlags()
  6001 ms  0x170a basekey:0x7ffb6e2c6380
  6001 ms     | 0x170a PK11_DeriveWithTemplate()
  6001 ms  0x170a ret:0x7ffb6e258b80
  6001 ms  0x170a PK11_DeriveWithFlags()
  6001 ms  0x170a basekey:0x7ffb6e2c6380
  6001 ms     | 0x170a PK11_DeriveWithTemplate()
  6001 ms  0x170a ret:0x7ffb6e2c6280
  6002 ms  0x170a PK11_Derive()
  6002 ms  0x170a basekey:0x7ffb6e2c6400
  6002 ms     | 0x170a PK11_DeriveWithTemplate()
  6002 ms  0x170a ret:0x7ffb6e2c6480
  6002 ms  0x170a PK11_DeriveWithFlags()
  6002 ms  0x170a basekey:0x7ffb6e258b80
  6002 ms     | 0x170a PK11_DeriveWithTemplate()
  6002 ms  0x170a ret:0x7ffb6e2c6380
  6002 ms  0x170a PK11_DeriveWithFlags()
  6002 ms  0x170a basekey:0x7ffb6e258b80
  6002 ms     | 0x170a PK11_DeriveWithTemplate()
  6002 ms  0x170a ret:0x7ffb6e2c6280
  6003 ms  0x170a PK11_DeriveWithFlags()
  6003 ms  0x170a basekey:0x7ffb6e258b80
  6003 ms     | 0x170a PK11_DeriveWithTemplate()
  6003 ms  0x170a ret:0x7ffb6e2c6280
           /* TID 0x17a4 */
  6003 ms  0x17a4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6004 ms  0x17a4 ret:0x0
           /* TID 0x170a */
  6010 ms  0x170a PK11_Derive()
  6010 ms  0x170a basekey:0x7ffb6e2c6280
  6010 ms     | 0x170a PK11_DeriveWithTemplate()
  6010 ms  0x170a ret:0x7ffb6e2c6400
  6010 ms  0x170a PK11_PubDeriveWithKDF()
  6010 ms  0x170a seckey:0x7ffb6e106820
  6010 ms     | 0x170a EC_ValidatePublicKey()
  6010 ms     | 0x170a ret:0x0
  6011 ms  0x170a ret:0x7ffb6e2c6280
  6011 ms  SECKEY_ECParamsToKeySize()
  6011 ms  0x170a ret:0xff
  6011 ms  0x170a PK11_DeriveWithFlags()
  6011 ms  0x170a basekey:0x7ffb6e2c6400
  6011 ms     | 0x170a PK11_DeriveWithTemplate()
  6011 ms  0x170a ret:0x7ffb6e2c6c00
  6011 ms  0x170a PK11_Derive()
  6011 ms  0x170a basekey:0x7ffb6e2c6280
  6011 ms     | 0x170a PK11_DeriveWithTemplate()
  6011 ms  0x170a ret:0x7ffb6e2c6c80
  6011 ms  0x170a PK11_DeriveWithFlags()
  6011 ms  0x170a basekey:0x7ffb6e2c6c80
  6011 ms     | 0x170a PK11_DeriveWithTemplate()
  6011 ms  0x170a ret:0x7ffb6e2c6400
  6011 ms  0x170a PK11_DeriveWithFlags()
  6011 ms  0x170a basekey:0x7ffb6e2c6c80
  6011 ms     | 0x170a PK11_DeriveWithTemplate()
  6011 ms  0x170a ret:0x7ffb6e2c6280
  6011 ms  0x170a PK11_DeriveWithFlags()
  6011 ms  0x170a basekey:0x7ffb6e2c6c80
  6011 ms     | 0x170a PK11_DeriveWithTemplate()
  6011 ms  0x170a ret:0x7ffb6e2c6c00
  6011 ms  0x170a PK11_Derive()
  6011 ms  0x170a basekey:0x7ffb6e2c6d00
  6011 ms     | 0x170a PK11_DeriveWithTemplate()
  6011 ms  0x170a ret:0x7ffb6e2c6d80
  6011 ms  0x170a PK11_DeriveWithFlags()
  6011 ms  0x170a basekey:0x7ffb6e2c6280
  6011 ms     | 0x170a PK11_DeriveWithTemplate()
  6011 ms  0x170a ret:0x7ffb6e2c6c80
  6011 ms  0x170a PK11_DeriveWithFlags()
  6011 ms  0x170a basekey:0x7ffb6e2c6280
  6011 ms     | 0x170a PK11_DeriveWithTemplate()
  6015 ms  0x170a ret:0x7ffb6e2c6c00
           /* TID 0x17a4 */
  6017 ms  0x17a4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6017 ms  0x17a4 ret:0x0
           /* TID 0x170a */
  6017 ms  0x170a PK11_DeriveWithFlags()
  6017 ms  0x170a basekey:0x7ffb6e2c6280
  6017 ms     | 0x170a PK11_DeriveWithTemplate()
  6017 ms  0x170a ret:0x7ffb6e2c6c00
  6017 ms  0x170a SSL_AuthCertificateComplete()
  6017 ms  0x170a fd:0x7ffb6e256820
  6017 ms  0x170a err:0x0
  6017 ms     | 0x170a PK11_DeriveWithFlags()
  6017 ms     | 0x170a basekey:0x7ffb6e2c6480
  6017 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6017 ms     | 0x170a ret:0x7ffb6e2c6c00
  6017 ms     | 0x170a PK11_DeriveWithFlags()
  6017 ms     | 0x170a basekey:0x7ffb6e2c6480
  6017 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6017 ms     | 0x170a ret:0x7ffb6e2c6d00
  6017 ms     | 0x170a PK11_DeriveWithFlags()
  6017 ms     | 0x170a basekey:0x7ffb6e2c6480
  6017 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6017 ms     | 0x170a ret:0x7ffb6e2c6700
  6017 ms     | 0x170a PK11_DeriveWithFlags()
  6017 ms     | 0x170a basekey:0x7ffb6e258c80
  6017 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6017 ms     | 0x170a ret:0x7ffb6e2c6780
  6017 ms     | 0x170a PK11_DeriveWithFlags()
  6017 ms     | 0x170a basekey:0x7ffb6e258c80
  6017 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6017 ms     | 0x170a ret:0x7ffb6e2c6800
  6017 ms     | 0x170a PK11_DeriveWithFlags()
  6017 ms     | 0x170a basekey:0x7ffb6e2c6d00
  6017 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6017 ms     | 0x170a ret:0x7ffb6e2c6800
  6017 ms     | 0x170a PK11_DeriveWithFlags()
  6017 ms     | 0x170a basekey:0x7ffb6e2c6d00
  6017 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6017 ms     | 0x170a ret:0x7ffb6e2c6880
  6017 ms     | 0x170a PK11_DeriveWithFlags()
  6017 ms     | 0x170a basekey:0x7ffb6e258c80
  6017 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6018 ms     | 0x170a ret:0x7ffb6e2c6380
  6018 ms     | 0x170a PK11_Encrypt()
  6018 ms     | 0x170a symkey:0x7ffb6e2c6780
  6018 ms     | 0x170a PK11_DeriveWithFlags()
  6018 ms     | 0x170a basekey:0x7ffb6e2c6c00
  6018 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6018 ms     | 0x170a ret:0x7ffb6e2c6380
  6018 ms     | 0x170a PK11_DeriveWithFlags()
  6018 ms     | 0x170a basekey:0x7ffb6e2c6c00
  6018 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6018 ms     | 0x170a ret:0x7ffb6e2c6880
  6018 ms     | 0x170a PK11_DeriveWithFlags()
  6018 ms     | 0x170a basekey:0x7ffb6e2c6480
  6018 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6018 ms     | 0x170a ret:0x7ffb6e2c6780
  6018 ms     | 0x170a SECKEY_DestroyPrivateKey()
  6018 ms     | 0x170a privk:0x7ffb6e104020::7ffb6e104020  b0 20 52 6e                                      . Rn
  6018 ms     | 0x170a privk:0x7ffb6e104020::7ffb6e104020  e5 e5 e5 e5                                      ....
  6018 ms     | 0x170a SECKEY_DestroyPrivateKey()
  6018 ms     | 0x170a privk:0x7ffb8121f020::7ffb8121f020  b0 af 25 6e                                      ..%n
  6018 ms     | 0x170a privk:0x7ffb8121f020::7ffb8121f020  e5 e5 e5 e5                                      ....
  6018 ms  0x170a SSL_AuthCertificateComplete()
  6018 ms  0x170a fd:0x7ffb6e24cd90
  6018 ms  0x170a err:0x0
  6018 ms     | 0x170a PK11_DeriveWithFlags()
  6018 ms     | 0x170a basekey:0x7ffb6e2c6d80
  6018 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6018 ms     | 0x170a ret:0x7ffb6e258b80
  6018 ms     | 0x170a PK11_DeriveWithFlags()
  6018 ms     | 0x170a basekey:0x7ffb6e2c6d80
  6018 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6018 ms     | 0x170a ret:0x7ffb6e258c80
  6018 ms     | 0x170a PK11_DeriveWithFlags()
  6018 ms     | 0x170a basekey:0x7ffb6e2c6d80
  6018 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6018 ms     | 0x170a ret:0x7ffb6e2c6480
  6018 ms     | 0x170a PK11_DeriveWithFlags()
  6018 ms     | 0x170a basekey:0x7ffb6e2c6400
  6018 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6018 ms     | 0x170a ret:0x7ffb6e2c6880
  6018 ms     | 0x170a PK11_DeriveWithFlags()
  6018 ms     | 0x170a basekey:0x7ffb6e2c6400
  6018 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6018 ms     | 0x170a ret:0x7ffb6e2c6900
  6019 ms     | 0x170a PK11_DeriveWithFlags()
  6019 ms     | 0x170a basekey:0x7ffb6e258c80
  6019 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6019 ms     | 0x170a ret:0x7ffb6e2c6900
  6019 ms     | 0x170a PK11_DeriveWithFlags()
  6019 ms     | 0x170a basekey:0x7ffb6e258c80
  6019 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6019 ms     | 0x170a ret:0x7ffb6e2c6980
  6019 ms     | 0x170a PK11_DeriveWithFlags()
  6019 ms     | 0x170a basekey:0x7ffb6e2c6400
  6019 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6019 ms     | 0x170a ret:0x7ffb6e2c6c80
  6019 ms     | 0x170a PK11_Encrypt()
  6019 ms     | 0x170a symkey:0x7ffb6e2c6880
  6019 ms     | 0x170a PK11_DeriveWithFlags()
  6019 ms     | 0x170a basekey:0x7ffb6e258b80
  6019 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6019 ms     | 0x170a ret:0x7ffb6e2c6c80
  6019 ms     | 0x170a PK11_DeriveWithFlags()
  6019 ms     | 0x170a basekey:0x7ffb6e258b80
  6019 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6019 ms     | 0x170a ret:0x7ffb6e2c6980
  6019 ms     | 0x170a PK11_DeriveWithFlags()
  6019 ms     | 0x170a basekey:0x7ffb6e2c6d80
  6019 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6019 ms     | 0x170a ret:0x7ffb6e2c6880
  6019 ms     | 0x170a SECKEY_DestroyPrivateKey()
  6019 ms     | 0x170a privk:0x7ffb6e108820::7ffb6e108820  00 16 5d 6e                                      ..]n
  6019 ms     | 0x170a privk:0x7ffb6e108820::7ffb6e108820  e5 e5 e5 e5                                      ....
  6019 ms     | 0x170a SECKEY_DestroyPrivateKey()
  6019 ms     | 0x170a privk:0x7ffb6e106820::7ffb6e106820  e0 22 52 6e                                      ."Rn
  6019 ms     | 0x170a privk:0x7ffb6e106820::7ffb6e106820  e5 e5 e5 e5                                      ....
  6019 ms  0x170a PK11_Derive()
  6019 ms  0x170a basekey:0x7ffb6e2c6280
  6019 ms     | 0x170a PK11_DeriveWithTemplate()
  6019 ms  0x170a ret:0x7ffb6e2c6400
  6019 ms  0x170a PK11_PubDeriveWithKDF()
  6019 ms  0x170a seckey:0x7ffb6e10f820
  6019 ms     | 0x170a EC_ValidatePublicKey()
  6019 ms     | 0x170a ret:0x0
  6020 ms  0x170a ret:0x7ffb6e2c6280
  6020 ms  SECKEY_ECParamsToKeySize()
  6020 ms  0x170a ret:0xff
  6020 ms  0x170a PK11_DeriveWithFlags()
  6020 ms  0x170a basekey:0x7ffb6e2c6400
  6020 ms     | 0x170a PK11_DeriveWithTemplate()
  6020 ms  0x170a ret:0x7ffb6e2c6d80
  6020 ms  0x170a PK11_Derive()
  6020 ms  0x170a basekey:0x7ffb6e2c6280
  6020 ms     | 0x170a PK11_DeriveWithTemplate()
  6020 ms  0x170a ret:0x7ffb6e2c6980
  6020 ms  0x170a PK11_DeriveWithFlags()
  6020 ms  0x170a basekey:0x7ffb6e2c6980
  6020 ms     | 0x170a PK11_DeriveWithTemplate()
  6020 ms  0x170a ret:0x7ffb6e2c6400
  6020 ms  0x170a PK11_DeriveWithFlags()
  6020 ms  0x170a basekey:0x7ffb6e2c6980
  6020 ms     | 0x170a PK11_DeriveWithTemplate()
  6020 ms  0x170a ret:0x7ffb6e2c6280
  6020 ms  0x170a PK11_DeriveWithFlags()
  6020 ms  0x170a basekey:0x7ffb6e2c6980
  6020 ms     | 0x170a PK11_DeriveWithTemplate()
  6020 ms  0x170a ret:0x7ffb6e2c6d80
  6020 ms  0x170a PK11_Derive()
  6020 ms  0x170a basekey:0x7ffb6e2c6a00
  6020 ms     | 0x170a PK11_DeriveWithTemplate()
  6020 ms  0x170a ret:0x7ffb6e2c6a80
  6020 ms  0x170a PK11_DeriveWithFlags()
  6020 ms  0x170a basekey:0x7ffb6e2c6280
  6020 ms     | 0x170a PK11_DeriveWithTemplate()
  6020 ms  0x170a ret:0x7ffb6e2c6980
  6020 ms  0x170a PK11_DeriveWithFlags()
  6020 ms  0x170a basekey:0x7ffb6e2c6280
  6020 ms     | 0x170a PK11_DeriveWithTemplate()
  6020 ms  0x170a ret:0x7ffb6e2c6d80
           /* TID 0x17a4 */
  6021 ms  0x17a4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6021 ms  0x17a4 ret:0x0
           /* TID 0x170a */
  6021 ms  0x170a PK11_DeriveWithFlags()
  6021 ms  0x170a basekey:0x7ffb6e2c6280
  6021 ms     | 0x170a PK11_DeriveWithTemplate()
  6021 ms  0x170a ret:0x7ffb6e2c6d80
  6022 ms  0x170a PK11_Encrypt()
  6022 ms  0x170a symkey:0x7ffb6e2c6c80
  6022 ms  0x170a PK11_Encrypt()
  6022 ms  0x170a symkey:0x7ffb6e2c6c80
  6022 ms  0x170a PK11_Encrypt()
  6022 ms  0x170a symkey:0x7ffb6e2c6380
  6023 ms  0x170a SSL_AuthCertificateComplete()
  6023 ms  0x170a fd:0x7ffb6e256220
  6023 ms  0x170a err:0x0
  6023 ms     | 0x170a PK11_DeriveWithFlags()
  6023 ms     | 0x170a basekey:0x7ffb6e2c6a80
  6023 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6023 ms     | 0x170a ret:0x7ffb6e2c6d80
  6023 ms     | 0x170a PK11_DeriveWithFlags()
  6023 ms     | 0x170a basekey:0x7ffb6e2c6a80
  6023 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6023 ms     | 0x170a ret:0x7ffb6e2c6a00
  6023 ms     | 0x170a PK11_DeriveWithFlags()
  6023 ms     | 0x170a basekey:0x7ffb6e2c6a80
  6023 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6023 ms     | 0x170a ret:0x7ffb6e2c6f00
  6023 ms     | 0x170a PK11_DeriveWithFlags()
  6023 ms     | 0x170a basekey:0x7ffb6e2c6400
  6023 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6023 ms     | 0x170a ret:0x7ffb6e2c6f80
  6023 ms     | 0x170a PK11_DeriveWithFlags()
  6023 ms     | 0x170a basekey:0x7ffb6e2c6400
  6023 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6023 ms     | 0x170a ret:0x7ffb6e2c7000
  6023 ms     | 0x170a PK11_DeriveWithFlags()
  6023 ms     | 0x170a basekey:0x7ffb6e2c6a00
  6023 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6023 ms     | 0x170a ret:0x7ffb6e2c7000
  6023 ms     | 0x170a PK11_DeriveWithFlags()
  6023 ms     | 0x170a basekey:0x7ffb6e2c6a00
  6023 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6023 ms     | 0x170a ret:0x7ffb6e2c7080
  6023 ms     | 0x170a PK11_DeriveWithFlags()
  6023 ms     | 0x170a basekey:0x7ffb6e2c6400
  6023 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6023 ms     | 0x170a ret:0x7ffb6e2c6980
  6023 ms     | 0x170a PK11_Encrypt()
  6023 ms     | 0x170a symkey:0x7ffb6e2c6f80
  6023 ms     | 0x170a PK11_DeriveWithFlags()
  6023 ms     | 0x170a basekey:0x7ffb6e2c6d80
  6023 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6023 ms     | 0x170a ret:0x7ffb6e2c6980
  6023 ms     | 0x170a PK11_DeriveWithFlags()
  6023 ms     | 0x170a basekey:0x7ffb6e2c6d80
  6023 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6023 ms     | 0x170a ret:0x7ffb6e2c7080
  6023 ms     | 0x170a PK11_DeriveWithFlags()
  6023 ms     | 0x170a basekey:0x7ffb6e2c6a80
  6023 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6023 ms     | 0x170a ret:0x7ffb6e2c6f80
  6023 ms     | 0x170a SECKEY_DestroyPrivateKey()
  6023 ms     | 0x170a privk:0x7ffb6e111820::7ffb6e111820  90 a2 12 6e                                      ...n
  6023 ms     | 0x170a privk:0x7ffb6e111820::7ffb6e111820  e5 e5 e5 e5                                      ....
  6023 ms     | 0x170a SECKEY_DestroyPrivateKey()
  6023 ms     | 0x170a privk:0x7ffb6e10f820::7ffb6e10f820  b0 a0 12 6e                                      ...n
  6023 ms     | 0x170a privk:0x7ffb6e10f820::7ffb6e10f820  e5 e5 e5 e5                                      ....
  6024 ms  0x170a PK11_Encrypt()
  6024 ms  0x170a symkey:0x7ffb6e2c6c80
  6024 ms  0x170a PK11_Encrypt()
  6024 ms  0x170a symkey:0x7ffb6e2c6c80
  6024 ms  0x170a PK11_Encrypt()
  6024 ms  0x170a symkey:0x7ffb6e2c6c80
  6024 ms  0x170a PK11_Encrypt()
  6024 ms  0x170a symkey:0x7ffb6e2c6c80
  6025 ms  0x170a PK11_Encrypt()
  6025 ms  0x170a symkey:0x7ffb6e2c6c80
  6025 ms  0x170a PK11_Encrypt()
  6025 ms  0x170a symkey:0x7ffb6e2c6c80
  6025 ms  0x170a PK11_Encrypt()
  6025 ms  0x170a symkey:0x7ffb6e2c6c80
  6025 ms  0x170a PK11_Encrypt()
  6025 ms  0x170a symkey:0x7ffb6e2c6c80
  6026 ms  0x170a PK11_Encrypt()
  6026 ms  0x170a symkey:0x7ffb6e2c6c80
  6026 ms  0x170a PK11_Encrypt()
  6026 ms  0x170a symkey:0x7ffb6e2c6c80
  6026 ms  0x170a PK11_Encrypt()
  6026 ms  0x170a symkey:0x7ffb6e2c6c80
  6026 ms  0x170a PK11_Encrypt()
  6026 ms  0x170a symkey:0x7ffb6e2c6c80
  6027 ms  0x170a PK11_Encrypt()
  6027 ms  0x170a symkey:0x7ffb6e2c6c80
  6027 ms  0x170a PK11_Encrypt()
  6027 ms  0x170a symkey:0x7ffb6e2c6c80
  6027 ms  0x170a PK11_Encrypt()
  6027 ms  0x170a symkey:0x7ffb6e2c6c80
  6027 ms  0x170a PK11_Encrypt()
  6027 ms  0x170a symkey:0x7ffb6e2c6c80
  6028 ms  0x170a PK11_Encrypt()
  6028 ms  0x170a symkey:0x7ffb6e2c6c80
  6028 ms  0x170a PK11_Encrypt()
  6028 ms  0x170a symkey:0x7ffb6e2c6c80
  6028 ms  0x170a PK11_Encrypt()
  6028 ms  0x170a symkey:0x7ffb6e2c6c80
  6028 ms  0x170a PK11_Encrypt()
  6028 ms  0x170a symkey:0x7ffb6e2c6c80
  6028 ms  0x170a PK11_Encrypt()
  6028 ms  0x170a symkey:0x7ffb6e2c6c80
  6029 ms  0x170a PK11_Encrypt()
  6029 ms  0x170a symkey:0x7ffb6e2c6c80
  6029 ms  0x170a PK11_Encrypt()
  6029 ms  0x170a symkey:0x7ffb6e2c6c80
  6029 ms  0x170a PK11_Encrypt()
  6029 ms  0x170a symkey:0x7ffb6e2c6c80
  6029 ms  0x170a PK11_Encrypt()
  6029 ms  0x170a symkey:0x7ffb6e2c6c80
  6030 ms  0x170a PK11_Encrypt()
  6030 ms  0x170a symkey:0x7ffb6e2c6c80
  6030 ms  0x170a PK11_Encrypt()
  6030 ms  0x170a symkey:0x7ffb6e2c6c80
  6030 ms  0x170a PK11_Encrypt()
  6030 ms  0x170a symkey:0x7ffb6e2c6c80
  6030 ms  0x170a PK11_Encrypt()
  6030 ms  0x170a symkey:0x7ffb6e2c6c80
  6031 ms  0x170a PK11_Encrypt()
  6031 ms  0x170a symkey:0x7ffb6e2c6c80
  6031 ms  0x170a PK11_Encrypt()
  6031 ms  0x170a symkey:0x7ffb6e2c6c80
  6031 ms  0x170a PK11_Encrypt()
  6031 ms  0x170a symkey:0x7ffb6e2c6c80
  6031 ms  0x170a PK11_Encrypt()
  6031 ms  0x170a symkey:0x7ffb6e2c6c80
  6032 ms  0x170a PK11_Encrypt()
  6032 ms  0x170a symkey:0x7ffb6e2c6c80
  6032 ms  0x170a PK11_Encrypt()
  6032 ms  0x170a symkey:0x7ffb6e2c6c80
  6032 ms  0x170a PK11_Encrypt()
  6032 ms  0x170a symkey:0x7ffb6e2c6c80
  6032 ms  0x170a PK11_Encrypt()
  6032 ms  0x170a symkey:0x7ffb6e2c6c80
  6032 ms  0x170a PK11_Encrypt()
  6032 ms  0x170a symkey:0x7ffb6e2c6c80
  6033 ms  0x170a PK11_Derive()
  6033 ms  0x170a basekey:0x7ffb6e2c6280
  6033 ms     | 0x170a PK11_DeriveWithTemplate()
  6033 ms  0x170a ret:0x7ffb6e2c6400
  6033 ms  0x170a PK11_PubDeriveWithKDF()
  6033 ms  0x170a seckey:0x7ffb6e10b020
  6033 ms     | 0x170a EC_ValidatePublicKey()
  6033 ms     | 0x170a ret:0x0
  6033 ms  0x170a ret:0x7ffb6e2c6280
  6033 ms  SECKEY_ECParamsToKeySize()
  6033 ms  0x170a ret:0xff
  6033 ms  0x170a PK11_DeriveWithFlags()
  6033 ms  0x170a basekey:0x7ffb6e2c6400
  6033 ms     | 0x170a PK11_DeriveWithTemplate()
  6033 ms  0x170a ret:0x7ffb6e2c6a80
  6033 ms  0x170a PK11_Derive()
  6033 ms  0x170a basekey:0x7ffb6e2c6280
  6033 ms     | 0x170a PK11_DeriveWithTemplate()
  6033 ms  0x170a ret:0x7ffb6e2c7080
  6033 ms  0x170a PK11_DeriveWithFlags()
  6033 ms  0x170a basekey:0x7ffb6e2c7080
  6033 ms     | 0x170a PK11_DeriveWithTemplate()
  6033 ms  0x170a ret:0x7ffb6e2c6400
  6033 ms  0x170a PK11_DeriveWithFlags()
  6033 ms  0x170a basekey:0x7ffb6e2c7080
  6033 ms     | 0x170a PK11_DeriveWithTemplate()
  6033 ms  0x170a ret:0x7ffb6e2c6280
  6033 ms  0x170a PK11_DeriveWithFlags()
  6033 ms  0x170a basekey:0x7ffb6e2c7080
  6033 ms     | 0x170a PK11_DeriveWithTemplate()
  6033 ms  0x170a ret:0x7ffb6e2c6a80
  6033 ms  0x170a PK11_Derive()
  6033 ms  0x170a basekey:0x7ffb6e2c7100
  6034 ms     | 0x170a PK11_DeriveWithTemplate()
  6034 ms  0x170a ret:0x7ffb6e2c7180
  6034 ms  0x170a PK11_DeriveWithFlags()
  6034 ms  0x170a basekey:0x7ffb6e2c6280
  6034 ms     | 0x170a PK11_DeriveWithTemplate()
  6034 ms  0x170a ret:0x7ffb6e2c7080
  6034 ms  0x170a PK11_DeriveWithFlags()
  6034 ms  0x170a basekey:0x7ffb6e2c6280
  6034 ms     | 0x170a PK11_DeriveWithTemplate()
  6034 ms  0x170a ret:0x7ffb6e2c6a80
           /* TID 0x17a4 */
  6034 ms  0x17a4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6034 ms  0x17a4 ret:0x0
           /* TID 0x170a */
  6035 ms  0x170a PK11_DeriveWithFlags()
  6035 ms  0x170a basekey:0x7ffb6e2c6280
  6035 ms     | 0x170a PK11_DeriveWithTemplate()
  6035 ms  0x170a ret:0x7ffb6e2c6a80
  6035 ms  0x170a PK11_Encrypt()
  6035 ms  0x170a symkey:0x7ffb6e2c6980
  6035 ms  0x170a PK11_Encrypt()
  6035 ms  0x170a symkey:0x7ffb6e2c6c80
  6035 ms  0x170a PK11_Encrypt()
  6035 ms  0x170a symkey:0x7ffb6e2c6c80
  6035 ms  0x170a SSL_AuthCertificateComplete()
  6035 ms  0x170a fd:0x7ffb6e2564c0
  6035 ms  0x170a err:0x0
  6035 ms     | 0x170a PK11_DeriveWithFlags()
  6035 ms     | 0x170a basekey:0x7ffb6e2c7180
  6035 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6035 ms     | 0x170a ret:0x7ffb6e2c6a80
  6035 ms     | 0x170a PK11_DeriveWithFlags()
  6035 ms     | 0x170a basekey:0x7ffb6e2c7180
  6035 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6035 ms     | 0x170a ret:0x7ffb6e2c7100
  6035 ms     | 0x170a PK11_DeriveWithFlags()
  6035 ms     | 0x170a basekey:0x7ffb6e2c7180
  6035 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6035 ms     | 0x170a ret:0x7ffb6e2c7200
  6036 ms     | 0x170a PK11_DeriveWithFlags()
  6036 ms     | 0x170a basekey:0x7ffb6e2c6400
  6036 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6036 ms     | 0x170a ret:0x7ffb6e2c7280
  6036 ms     | 0x170a PK11_DeriveWithFlags()
  6036 ms     | 0x170a basekey:0x7ffb6e2c6400
  6036 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6036 ms     | 0x170a ret:0x7ffb6e2c7300
  6036 ms     | 0x170a PK11_DeriveWithFlags()
  6036 ms     | 0x170a basekey:0x7ffb6e2c7100
  6036 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6036 ms     | 0x170a ret:0x7ffb6e2c7300
  6036 ms     | 0x170a PK11_DeriveWithFlags()
  6036 ms     | 0x170a basekey:0x7ffb6e2c7100
  6036 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6036 ms     | 0x170a ret:0x7ffb6e2c7380
  6036 ms     | 0x170a PK11_DeriveWithFlags()
  6036 ms     | 0x170a basekey:0x7ffb6e2c6400
  6036 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6036 ms     | 0x170a ret:0x7ffb6e2c7080
  6036 ms     | 0x170a PK11_Encrypt()
  6036 ms     | 0x170a symkey:0x7ffb6e2c7280
  6036 ms     | 0x170a PK11_DeriveWithFlags()
  6036 ms     | 0x170a basekey:0x7ffb6e2c6a80
  6036 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6036 ms     | 0x170a ret:0x7ffb6e2c7080
  6036 ms     | 0x170a PK11_DeriveWithFlags()
  6036 ms     | 0x170a basekey:0x7ffb6e2c6a80
  6036 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6036 ms     | 0x170a ret:0x7ffb6e2c7380
  6036 ms     | 0x170a PK11_DeriveWithFlags()
  6036 ms     | 0x170a basekey:0x7ffb6e2c7180
  6036 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6036 ms     | 0x170a ret:0x7ffb6e2c7280
  6036 ms     | 0x170a SECKEY_DestroyPrivateKey()
  6036 ms     | 0x170a privk:0x7ffb6e10d020::7ffb6e10d020  60 1f 5d 6e                                      `.]n
  6036 ms     | 0x170a privk:0x7ffb6e10d020::7ffb6e10d020  e5 e5 e5 e5                                      ....
  6036 ms     | 0x170a SECKEY_DestroyPrivateKey()
  6036 ms     | 0x170a privk:0x7ffb6e10b020::7ffb6e10b020  c0 19 5d 6e                                      ..]n
  6036 ms     | 0x170a privk:0x7ffb6e10b020::7ffb6e10b020  e5 e5 e5 e5                                      ....
  6036 ms  0x170a PK11_Encrypt()
  6036 ms  0x170a symkey:0x7ffb6e2c6c80
  6037 ms  0x170a PK11_Encrypt()
  6037 ms  0x170a symkey:0x7ffb6e2c7080
  6037 ms  0x170a PK11_Encrypt()
  6037 ms  0x170a symkey:0x7ffb6e2c6c80
  6037 ms  0x170a PK11_Encrypt()
  6037 ms  0x170a symkey:0x7ffb6e2c6c80
  6037 ms  0x170a PK11_Encrypt()
  6037 ms  0x170a symkey:0x7ffb6e2c6c80
  6038 ms  0x170a PK11_Encrypt()
  6038 ms  0x170a symkey:0x7ffb6e2c6c80
  6038 ms  0x170a PK11_Encrypt()
  6038 ms  0x170a symkey:0x7ffb6e2c6c80
  6038 ms  0x170a PK11_Encrypt()
  6038 ms  0x170a symkey:0x7ffb6e2c6c80
  6038 ms  0x170a PK11_Encrypt()
  6038 ms  0x170a symkey:0x7ffb6e2c6c80
  6039 ms  0x170a PK11_Encrypt()
  6039 ms  0x170a symkey:0x7ffb6e2c6c80
  6039 ms  0x170a PK11_Encrypt()
  6039 ms  0x170a symkey:0x7ffb6e2c6c80
  6039 ms  0x170a PK11_Encrypt()
  6039 ms  0x170a symkey:0x7ffb6e2c6c80
  6039 ms  0x170a PK11_Encrypt()
  6039 ms  0x170a symkey:0x7ffb6e2c6c80
  6040 ms  0x170a PK11_Encrypt()
  6040 ms  0x170a symkey:0x7ffb6e2c6c80
  6040 ms  0x170a PK11_Encrypt()
  6040 ms  0x170a symkey:0x7ffb6e2c6c80
  6040 ms  0x170a PK11_Encrypt()
  6040 ms  0x170a symkey:0x7ffb6e2c6c80
  6040 ms  0x170a PK11_Encrypt()
  6040 ms  0x170a symkey:0x7ffb6e2c6c80
  6041 ms  0x170a PK11_Encrypt()
  6041 ms  0x170a symkey:0x7ffb6e2c6c80
  6041 ms  0x170a PK11_Encrypt()
  6041 ms  0x170a symkey:0x7ffb6e2c6c80
  6041 ms  0x170a PK11_Encrypt()
  6041 ms  0x170a symkey:0x7ffb6e2c6c80
  6041 ms  0x170a PK11_Encrypt()
  6041 ms  0x170a symkey:0x7ffb6e2c6c80
  6041 ms  0x170a PK11_Encrypt()
  6041 ms  0x170a symkey:0x7ffb6e2c6c80
  6042 ms  0x170a PK11_Encrypt()
  6042 ms  0x170a symkey:0x7ffb6e2c6c80
  6042 ms  0x170a PK11_Encrypt()
  6042 ms  0x170a symkey:0x7ffb6e2c6c80
  6042 ms  0x170a PK11_Encrypt()
  6042 ms  0x170a symkey:0x7ffb6e2c6c80
  6044 ms  0x170a PK11_DeriveWithFlags()
  6044 ms  0x170a basekey:0x7ffb6e2c6880
  6044 ms     | 0x170a PK11_DeriveWithTemplate()
  6044 ms  0x170a ret:0x7ffb6e2c6280
  6044 ms  0x170a PK11_DeriveWithFlags()
  6044 ms  0x170a basekey:0x7ffb6e2c6880
  6044 ms     | 0x170a PK11_DeriveWithTemplate()
  6044 ms  0x170a ret:0x7ffb6e2c6280
  6044 ms  0x170a PK11_Encrypt()
  6044 ms  0x170a symkey:0x7ffb6e2c6c80
  6048 ms  0x170a PK11_DeriveWithFlags()
  6048 ms  0x170a basekey:0x7ffb6e2c6f80
  6048 ms     | 0x170a PK11_DeriveWithTemplate()
  6048 ms  0x170a ret:0x7ffb6e2c6280
  6048 ms  0x170a PK11_DeriveWithFlags()
  6048 ms  0x170a basekey:0x7ffb6e2c6f80
  6048 ms     | 0x170a PK11_DeriveWithTemplate()
  6048 ms  0x170a ret:0x7ffb6e2c6280
  6048 ms  0x170a PR_Close()
  6048 ms  0x170a fd:0x7ffb6e256220
  6048 ms     | 0x170a PK11_Encrypt()
  6048 ms     | 0x170a symkey:0x7ffb6e2c6980
  6056 ms  0x170a PK11_DeriveWithFlags()
  6056 ms  0x170a basekey:0x7ffb6e2c6780
  6056 ms     | 0x170a PK11_DeriveWithTemplate()
  6056 ms  0x170a ret:0x7ffb6e2c6f00
  6057 ms  0x170a PK11_DeriveWithFlags()
  6057 ms  0x170a basekey:0x7ffb6e2c6780
  6057 ms     | 0x170a PK11_DeriveWithTemplate()
  6057 ms  0x170a ret:0x7ffb6e2c6f00
  6057 ms  0x170a PR_Close()
  6057 ms  0x170a fd:0x7ffb6e256820
  6057 ms     | 0x170a PK11_Encrypt()
  6057 ms     | 0x170a symkey:0x7ffb6e2c6380
  6061 ms  0x170a PK11_DeriveWithFlags()
  6061 ms  0x170a basekey:0x7ffb6e2c7280
  6061 ms     | 0x170a PK11_DeriveWithTemplate()
  6061 ms  0x170a ret:0x7ffb6e2c6700
  6061 ms  0x170a PK11_DeriveWithFlags()
  6061 ms  0x170a basekey:0x7ffb6e2c7280
  6061 ms     | 0x170a PK11_DeriveWithTemplate()
  6061 ms  0x170a ret:0x7ffb6e2c6700
  6061 ms  0x170a PR_Close()
  6061 ms  0x170a fd:0x7ffb6e2564c0
  6061 ms     | 0x170a PK11_Encrypt()
  6061 ms     | 0x170a symkey:0x7ffb6e2c7080
           /* TID 0x1712 */
  6062 ms  0x1712 PR_Close()
  6062 ms  0x1712 fd:0x7ffb6e24c070
  6063 ms  0x1712 PR_Close()
  6063 ms  0x1712 fd:0x7ffb6e24c070
  6065 ms  0x1712 PR_Close()
  6065 ms  0x1712 fd:0x7ffb6e24c070
  6079 ms  0x1712 PR_Close()
  6079 ms  0x1712 fd:0x7ffb6e24c100
  6085 ms  0x1712 PR_Close()
  6085 ms  0x1712 fd:0x7ffb6e24c100
  6094 ms  0x1712 PR_Close()
  6094 ms  0x1712 fd:0x7ffb6e24c100
           /* TID 0x1765 */
  6095 ms  0x1765 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6095 ms  0x1765 ret:0x0
           /* TID 0x170a */
  6102 ms  0x170a SSL_AuthCertificateComplete()
  6102 ms  0x170a fd:0x7ffb6e24c550
  6102 ms  0x170a err:0x0
  6102 ms     | 0x170a PK11_DeriveWithFlags()
  6102 ms     | 0x170a basekey:0x7ffb6e258d80
  6102 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6102 ms     | 0x170a ret:0x7ffb6e2c7200
  6102 ms     | 0x170a PK11_DeriveWithFlags()
  6102 ms     | 0x170a basekey:0x7ffb6e258d80
  6102 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6102 ms     | 0x170a ret:0x7ffb6e2c7100
  6102 ms     | 0x170a PK11_DeriveWithFlags()
  6102 ms     | 0x170a basekey:0x7ffb6e258d80
  6102 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6102 ms     | 0x170a ret:0x7ffb6e2c6a80
  6102 ms     | 0x170a PK11_DeriveWithFlags()
  6102 ms     | 0x170a basekey:0x7ffb6e258880
  6103 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6103 ms     | 0x170a ret:0x7ffb6e2c7280
  6103 ms     | 0x170a PK11_DeriveWithFlags()
  6103 ms     | 0x170a basekey:0x7ffb6e258880
  6103 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6103 ms     | 0x170a ret:0x7ffb6e2c7300
  6103 ms     | 0x170a PK11_DeriveWithFlags()
  6103 ms     | 0x170a basekey:0x7ffb6e2c7100
  6103 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6103 ms     | 0x170a ret:0x7ffb6e2c7300
  6103 ms     | 0x170a PK11_DeriveWithFlags()
  6103 ms     | 0x170a basekey:0x7ffb6e2c7100
  6103 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6103 ms     | 0x170a ret:0x7ffb6e2c7080
  6103 ms     | 0x170a PK11_DeriveWithFlags()
  6103 ms     | 0x170a basekey:0x7ffb6e258880
  6103 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6103 ms     | 0x170a ret:0x7ffb6e258c00
  6103 ms     | 0x170a PK11_Encrypt()
  6103 ms     | 0x170a symkey:0x7ffb6e2c7280
  6103 ms     | 0x170a PK11_DeriveWithFlags()
  6103 ms     | 0x170a basekey:0x7ffb6e2c7200
  6103 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6103 ms     | 0x170a ret:0x7ffb6e258c00
  6103 ms     | 0x170a PK11_DeriveWithFlags()
  6103 ms     | 0x170a basekey:0x7ffb6e2c7200
  6103 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6103 ms     | 0x170a ret:0x7ffb6e2c7080
  6103 ms     | 0x170a PK11_DeriveWithFlags()
  6103 ms     | 0x170a basekey:0x7ffb6e258d80
  6103 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6103 ms     | 0x170a ret:0x7ffb6e2c7280
  6103 ms     | 0x170a SECKEY_DestroyPrivateKey()
  6103 ms     | 0x170a privk:0x7ffb6e4b0020::7ffb6e4b0020  e0 a7 25 6e                                      ..%n
  6103 ms     | 0x170a privk:0x7ffb6e4b0020::7ffb6e4b0020  e5 e5 e5 e5                                      ....
  6103 ms     | 0x170a SECKEY_DestroyPrivateKey()
  6103 ms     | 0x170a privk:0x7ffb6e4ae020::7ffb6e4ae020  30 2d 25 6e                                      0-%n
  6103 ms     | 0x170a privk:0x7ffb6e4ae020::7ffb6e4ae020  e5 e5 e5 e5                                      ....
  6107 ms  0x170a PK11_Encrypt()
  6107 ms  0x170a symkey:0x7ffb6e258c00
  6107 ms  0x170a PK11_Encrypt()
  6107 ms  0x170a symkey:0x7ffb6e258c00
           /* TID 0x1712 */
  6131 ms  0x1712 PR_Close()
  6131 ms  0x1712 fd:0x7ffb6e24c9d0
  6135 ms  0x1712 PR_Close()
  6135 ms  0x1712 fd:0x7ffb6e26d280
  6195 ms  0x1712 PR_Close()
  6195 ms  0x1712 fd:0x7ffb6e256370
  6199 ms  0x1712 PR_Close()
  6199 ms  0x1712 fd:0x7ffb6e256310
  6205 ms  0x1712 PR_Close()
  6205 ms  0x1712 fd:0x7ffb6e256190
  6207 ms  0x1712 PR_Close()
  6207 ms  0x1712 fd:0x7ffb6e256190
  6211 ms  0x1712 PR_Close()
  6211 ms  0x1712 fd:0x7ffb6e256190
  6212 ms  0x1712 PR_Close()
  6212 ms  0x1712 fd:0x7ffb6e256190
  6213 ms  0x1712 PR_Close()
  6213 ms  0x1712 fd:0x7ffb6e256190
  6213 ms  0x1712 PR_Close()
  6213 ms  0x1712 fd:0x7ffb6e256070
  6214 ms  0x1712 PR_Close()
  6214 ms  0x1712 fd:0x7ffb6e256070
  6215 ms  0x1712 PR_Close()
  6215 ms  0x1712 fd:0x7ffb6e24c490
  6216 ms  0x1712 PR_Close()
  6216 ms  0x1712 fd:0x7ffb6e24c490
  6217 ms  0x1712 PR_Close()
  6217 ms  0x1712 fd:0x7ffb6e24c490
           /* TID 0x170a */
  6217 ms  0x170a PK11_DeriveWithFlags()
  6217 ms  0x170a basekey:0x7ffb6e2c7280
  6217 ms     | 0x170a PK11_DeriveWithTemplate()
  6217 ms  0x170a ret:0x7ffb812e0400
  6217 ms  0x170a PK11_DeriveWithFlags()
  6217 ms  0x170a basekey:0x7ffb6e2c7280
  6217 ms     | 0x170a PK11_DeriveWithTemplate()
  6217 ms  0x170a ret:0x7ffb812e0400
  6218 ms  0x170a PK11_Encrypt()
  6218 ms  0x170a symkey:0x7ffb6e258c00
           /* TID 0x1712 */
  6218 ms  0x1712 PR_Close()
  6218 ms  0x1712 fd:0x7ffb6e24c160
  6224 ms  0x1712 PR_Close()
  6224 ms  0x1712 fd:0x7ffb6e24c160
  6225 ms  0x1712 PR_Close()
  6225 ms  0x1712 fd:0x7ffb6e24c160
  6225 ms  0x1712 PR_Close()
  6225 ms  0x1712 fd:0x7ffb6e24c160
  6225 ms  0x1712 PR_Close()
  6225 ms  0x1712 fd:0x7ffb6e24c160
  6226 ms  0x1712 PR_Close()
  6226 ms  0x1712 fd:0x7ffb6e24c160
  6226 ms  0x1712 PR_Close()
  6226 ms  0x1712 fd:0x7ffb6e24c160
  6228 ms  0x1712 PR_Close()
  6228 ms  0x1712 fd:0x7ffb6e24c160
  6228 ms  0x1712 PR_Close()
  6228 ms  0x1712 fd:0x7ffb6e24c130
  6229 ms  0x1712 PR_Close()
  6229 ms  0x1712 fd:0x7ffb6e24c130
  6229 ms  0x1712 PR_Close()
  6229 ms  0x1712 fd:0x7ffb6e24c130
  6229 ms  0x1712 PR_Close()
  6229 ms  0x1712 fd:0x7ffb6e24c130
  6230 ms  0x1712 PR_Close()
  6230 ms  0x1712 fd:0x7ffb6e24c130
  6230 ms  0x1712 PR_Close()
  6230 ms  0x1712 fd:0x7ffb6e24c130
  6230 ms  0x1712 PR_Close()
  6230 ms  0x1712 fd:0x7ffb6e24c130
  6231 ms  0x1712 PR_Close()
  6231 ms  0x1712 fd:0x7ffb6e24c130
  6231 ms  0x1712 PR_Close()
  6231 ms  0x1712 fd:0x7ffb6e24c130
  6231 ms  0x1712 PR_Close()
  6231 ms  0x1712 fd:0x7ffb6e24c130
  6232 ms  0x1712 PR_Close()
  6232 ms  0x1712 fd:0x7ffb6e24c130
  6232 ms  0x1712 PR_Close()
  6232 ms  0x1712 fd:0x7ffb6e24c130
  6232 ms  0x1712 PR_Close()
  6232 ms  0x1712 fd:0x7ffb6e24c130
  6233 ms  0x1712 PR_Close()
  6233 ms  0x1712 fd:0x7ffb6e24c130
  6233 ms  0x1712 PR_Close()
  6233 ms  0x1712 fd:0x7ffb6e24c130
  6233 ms  0x1712 PR_Close()
  6233 ms  0x1712 fd:0x7ffb6e24c130
  6233 ms  0x1712 PR_Close()
  6233 ms  0x1712 fd:0x7ffb6e24c130
  6236 ms  0x1712 PR_Close()
  6236 ms  0x1712 fd:0x7ffb6e24c130
  6236 ms  0x1712 PR_Close()
  6236 ms  0x1712 fd:0x7ffb6e24c760
           /* TID 0x170a */
  6238 ms  0x170a PK11_Encrypt()
  6238 ms  0x170a symkey:0x7ffb6e258c00
           /* TID 0x1712 */
  6239 ms  0x1712 PR_Close()
  6239 ms  0x1712 fd:0x7ffb6e24c130
  6239 ms  0x1712 PR_Close()
  6239 ms  0x1712 fd:0x7ffb6e24c760
  6239 ms  0x1712 PR_Close()
  6239 ms  0x1712 fd:0x7ffb6e364490
  6239 ms  0x1712 PR_Close()
  6239 ms  0x1712 fd:0x7ffb6e3648b0
  6249 ms  0x1712 PR_Close()
  6249 ms  0x1712 fd:0x7ffb6e24c0a0
  6249 ms  0x1712 PR_Close()
  6249 ms  0x1712 fd:0x7ffb6e24c760
  6249 ms  0x1712 PR_Close()
  6249 ms  0x1712 fd:0x7ffb6e24cc70
  6249 ms  0x1712 PR_Close()
  6249 ms  0x1712 fd:0x7ffb6e2563d0
  6249 ms  0x1712 PR_Close()
  6249 ms  0x1712 fd:0x7ffb6e364670
  6249 ms  0x1712 PR_Close()
  6249 ms  0x1712 fd:0x7ffb6e3648b0
  6249 ms  0x1712 PR_Close()
  6249 ms  0x1712 fd:0x7ffb6e364eb0
  6249 ms  0x1712 PR_Close()
  6249 ms  0x1712 fd:0x7ffb6e4eaa60
  6249 ms  0x1712 PR_Close()
  6249 ms  0x1712 fd:0x7ffb6e4eab20
  6250 ms  0x1712 PR_Close()
  6250 ms  0x1712 fd:0x7ffb6e4eabe0
  6250 ms  0x1712 PR_Close()
  6250 ms  0x1712 fd:0x7ffb6e24c0a0
  6250 ms  0x1712 PR_Close()
  6250 ms  0x1712 fd:0x7ffb6e24c760
  6250 ms  0x1712 PR_Close()
  6250 ms  0x1712 fd:0x7ffb6e256130
  6250 ms  0x1712 PR_Close()
  6250 ms  0x1712 fd:0x7ffb6e2563d0
  6250 ms  0x1712 PR_Close()
  6250 ms  0x1712 fd:0x7ffb6e256310
  6264 ms  0x1712 PR_Close()
  6264 ms  0x1712 fd:0x7ffb6e24c0a0
           /* TID 0x170a */
  6289 ms  0x170a SSL_ImportFD()
  6289 ms  0x170a ret:0x7ffb6e24c790
  6289 ms  0x170a SSL_AuthCertificateHook()
  6289 ms  0x170a fd:0x7ffb6e24c790
  6289 ms  0x170a ret:0x0
  6289 ms  0x170a PR_Connect()
  6289 ms  0x170a fd:0x7ffb6e24c790
  6314 ms  0x170a SECKEY_CreateECPrivateKey()
  6314 ms  0x170a cx:0x7ffb7f3da5c8
  6315 ms     | 0x170a EC_ValidatePublicKey()
  6315 ms     | 0x170a ret:0x0
  6315 ms  0x170a ret:0x7ffb6e10c020::7ffb6e10c020  70 f4 24 6e                                      p.$n
  6315 ms  0x170a SECKEY_CreateECPrivateKey()
  6315 ms  0x170a cx:0x7ffb7f3da5c8
  6316 ms     | 0x170a EC_ValidatePublicKey()
  6317 ms     | 0x170a ret:0x0
  6317 ms  0x170a ret:0x7ffb6e10e020::7ffb6e10e020  50 f6 24 6e                                      P.$n
  6370 ms  SECKEY_ECParamsToKeySize()
  6370 ms  0x170a ret:0x100
  6370 ms  0x170a SECKEY_CreateECPrivateKey()
  6370 ms  0x170a cx:0x7ffb7f3da5c8
  6370 ms     | 0x170a EC_ValidatePublicKey()
  6372 ms     | 0x170a ret:0x0
           /* TID 0x17a5 */
  6373 ms  0x17a5 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6373 ms  0x17a5 ret:0x0
           /* TID 0x170a */
  6374 ms  0x170a ret:0x7ffb6e1d3020::7ffb6e1d3020  10 25 25 6e                                      .%%n
  6385 ms  0x170a PK11_PubDeriveWithKDF()
  6385 ms  0x170a seckey:0x7ffb6e1d3020
  6385 ms     | 0x170a EC_ValidatePublicKey()
  6387 ms     | 0x170a ret:0x0
  6388 ms  0x170a ret:0x7ffb812e0400
  6388 ms  0x170a PK11_DeriveWithFlags()
  6388 ms  0x170a basekey:0x7ffb812e0400
  6388 ms     | 0x170a PK11_DeriveWithTemplate()
  6388 ms  0x170a ret:0x7ffb6e258880
  6388 ms  0x170a PK11_Derive()
  6388 ms  0x170a basekey:0x7ffb6e258880
  6388 ms     | 0x170a PK11_DeriveWithTemplate()
  6388 ms  0x170a ret:0x7ffb6e258d80
  6388 ms  0x170a SECKEY_DestroyPrivateKey()
  6388 ms  0x170a privk:0x7ffb6e1d3020::7ffb6e1d3020  10 25 25 6e                                      .%%n
  6388 ms  0x170a privk:0x7ffb6e1d3020::7ffb6e1d3020  e5 e5 e5 e5                                      ....
  6388 ms  0x170a PK11_Encrypt()
  6388 ms  0x170a symkey:0x7ffb6dd2b200
  6403 ms  0x170a PK11_Encrypt()
  6403 ms  0x170a symkey:0x7ffb6e2c6c80
  6405 ms  0x170a PK11_Encrypt()
  6405 ms  0x170a symkey:0x7ffb6e2c6c80
  6406 ms  0x170a PK11_Encrypt()
  6406 ms  0x170a symkey:0x7ffb6e2c6c80
  6408 ms  0x170a PK11_Encrypt()
  6408 ms  0x170a symkey:0x7ffb6e2c6c80
  6409 ms  0x170a PK11_Encrypt()
  6409 ms  0x170a symkey:0x7ffb6e2c6c80
  6420 ms  0x170a PK11_Encrypt()
  6420 ms  0x170a symkey:0x7ffb6e2c6c80
  6421 ms  0x170a PK11_Encrypt()
  6421 ms  0x170a symkey:0x7ffb6e2c6c80
  6424 ms  0x170a PK11_Encrypt()
  6424 ms  0x170a symkey:0x7ffb6e2c6c80
           /* TID 0x1712 */
  6434 ms  0x1712 PR_Close()
  6434 ms  0x1712 fd:0x7ffb6e256670
           /* TID 0x170a */
  6435 ms  0x170a PK11_Encrypt()
  6435 ms  0x170a symkey:0x7ffb6e2c6c80
  6436 ms  0x170a PK11_Encrypt()
  6436 ms  0x170a symkey:0x7ffb6e2c6c80
           /* TID 0x1712 */
  6464 ms  0x1712 PR_Close()
  6464 ms  0x1712 fd:0x7ffb6e256790
           /* TID 0x170a */
  6466 ms  0x170a SSL_AuthCertificateComplete()
  6466 ms  0x170a fd:0x7ffb6e24c790
  6466 ms  0x170a err:0x0
  6466 ms  0x170a PK11_Encrypt()
  6466 ms  0x170a symkey:0x7ffb6dd2b200
           /* TID 0x1712 */
  6466 ms  0x1712 PR_Close()
  6466 ms  0x1712 fd:0x7ffb6e256790
  6467 ms  0x1712 PR_Close()
  6467 ms  0x1712 fd:0x7ffb6e2564f0
  6467 ms  0x1712 PR_Close()
  6467 ms  0x1712 fd:0x7ffb6e2564f0
  6468 ms  0x1712 PR_Close()
  6468 ms  0x1712 fd:0x7ffb6e2564f0
  6468 ms  0x1712 PR_Close()
  6468 ms  0x1712 fd:0x7ffb6e2564f0
  6469 ms  0x1712 PR_Close()
  6469 ms  0x1712 fd:0x7ffb6e2564f0
           /* TID 0x170a */
  6483 ms  0x170a SECKEY_DestroyPrivateKey()
  6483 ms  0x170a privk:0x7ffb6e10e020::7ffb6e10e020  50 f6 24 6e                                      P.$n
  6483 ms  0x170a privk:0x7ffb6e10e020::7ffb6e10e020  e5 e5 e5 e5                                      ....
  6483 ms  0x170a SECKEY_DestroyPrivateKey()
  6483 ms  0x170a privk:0x7ffb6e10c020::7ffb6e10c020  70 f4 24 6e                                      p.$n
  6483 ms  0x170a privk:0x7ffb6e10c020::7ffb6e10c020  e5 e5 e5 e5                                      ....
           /* TID 0x1712 */
  6534 ms  0x1712 PR_Close()
  6534 ms  0x1712 fd:0x7ffb6e24ca30
  6535 ms  0x1712 PR_Close()
  6535 ms  0x1712 fd:0x7ffb6e24c370
  6536 ms  0x1712 PR_Close()
  6536 ms  0x1712 fd:0x7ffb6e24c370
           /* TID 0x170a */
  6677 ms  0x170a SSL_ImportFD()
  6678 ms  0x170a ret:0x7ffb6e26de50
  6678 ms  0x170a SSL_AuthCertificateHook()
  6678 ms  0x170a fd:0x7ffb6e26de50
  6678 ms  0x170a ret:0x0
  6678 ms  0x170a PR_Connect()
  6678 ms  0x170a fd:0x7ffb6e26de50
  6715 ms  0x170a SECKEY_CreateECPrivateKey()
  6715 ms  0x170a cx:0x7ffb7f3dbc88
  6716 ms     | 0x170a EC_ValidatePublicKey()
  6716 ms     | 0x170a ret:0x0
  6716 ms  0x170a ret:0x7ffb6e10d020::7ffb6e10d020  80 2d 25 6e                                      .-%n
  6716 ms  0x170a SECKEY_CreateECPrivateKey()
  6716 ms  0x170a cx:0x7ffb7f3dbc88
  6716 ms     | 0x170a EC_ValidatePublicKey()
  6718 ms     | 0x170a ret:0x0
  6718 ms  0x170a ret:0x7ffb6e1cd820::7ffb6e1cd820  60 2f 25 6e                                      `/%n
  6772 ms  0x170a PK11_Derive()
  6772 ms  0x170a basekey:0x7ffb812e0400
  6772 ms     | 0x170a PK11_DeriveWithTemplate()
  6772 ms  0x170a ret:0x7ffb6e2c7080
  6772 ms  0x170a PK11_PubDeriveWithKDF()
  6772 ms  0x170a seckey:0x7ffb6e10d020
  6772 ms     | 0x170a EC_ValidatePublicKey()
  6772 ms     | 0x170a ret:0x0
  6772 ms  0x170a ret:0x7ffb812e0400
  6772 ms  SECKEY_ECParamsToKeySize()
  6772 ms  0x170a ret:0xff
  6772 ms  0x170a PK11_DeriveWithFlags()
  6772 ms  0x170a basekey:0x7ffb6e2c7080
  6772 ms     | 0x170a PK11_DeriveWithTemplate()
  6773 ms  0x170a ret:0x7ffb6e2c6700
  6773 ms  0x170a PK11_Derive()
  6773 ms  0x170a basekey:0x7ffb812e0400
  6773 ms     | 0x170a PK11_DeriveWithTemplate()
  6773 ms  0x170a ret:0x7ffb6e2c6d00
  6773 ms  0x170a PK11_DeriveWithFlags()
  6773 ms  0x170a basekey:0x7ffb6e2c6d00
  6773 ms     | 0x170a PK11_DeriveWithTemplate()
  6773 ms  0x170a ret:0x7ffb6e2c7080
  6773 ms  0x170a PK11_DeriveWithFlags()
  6773 ms  0x170a basekey:0x7ffb6e2c6d00
  6773 ms     | 0x170a PK11_DeriveWithTemplate()
  6773 ms  0x170a ret:0x7ffb812e0400
  6773 ms  0x170a PK11_DeriveWithFlags()
  6773 ms  0x170a basekey:0x7ffb6e2c6d00
  6773 ms     | 0x170a PK11_DeriveWithTemplate()
  6773 ms  0x170a ret:0x7ffb6e2c6700
  6773 ms  0x170a PK11_Derive()
  6773 ms  0x170a basekey:0x7ffb6e2c6c00
  6773 ms     | 0x170a PK11_DeriveWithTemplate()
  6773 ms  0x170a ret:0x7ffb6e2c6780
  6773 ms  0x170a PK11_DeriveWithFlags()
  6773 ms  0x170a basekey:0x7ffb812e0400
  6773 ms     | 0x170a PK11_DeriveWithTemplate()
  6773 ms  0x170a ret:0x7ffb6e2c6d00
  6773 ms  0x170a PK11_DeriveWithFlags()
  6773 ms  0x170a basekey:0x7ffb812e0400
  6773 ms     | 0x170a PK11_DeriveWithTemplate()
  6773 ms  0x170a ret:0x7ffb6e2c6700
  6774 ms  SECKEY_ECParamsToKeySize()
  6774 ms  0x170a ret:0x100
  6774 ms  SECKEY_ECParamsToBasePointOrderLen()
  6774 ms  0x170a ret:0x100
  6774 ms  SECKEY_ECParamsToBasePointOrderLen()
  6774 ms  0x170a ret:0x100
  6775 ms  0x170a EC_ValidatePublicKey()
  6776 ms  0x170a ret:0x0
  6778 ms  0x170a PK11_DeriveWithFlags()
  6778 ms  0x170a basekey:0x7ffb812e0400
  6778 ms     | 0x170a PK11_DeriveWithTemplate()
  6778 ms  0x170a ret:0x7ffb6e2c6700
  6813 ms  0x170a PK11_Encrypt()
  6813 ms  0x170a symkey:0x7ffb6e2c6c80
  6813 ms  0x170a PK11_Encrypt()
  6813 ms  0x170a symkey:0x7ffb6e6b0380
  6813 ms  0x170a SSL_ImportFD()
  6813 ms  0x170a ret:0x7ffb6e3647c0
  6813 ms  0x170a SSL_AuthCertificateHook()
  6813 ms  0x170a fd:0x7ffb6e3647c0
  6813 ms  0x170a ret:0x0
  6813 ms  0x170a PR_Connect()
  6813 ms  0x170a fd:0x7ffb6e3647c0
           /* TID 0x1712 */
  6843 ms  0x1712 PR_Close()
  6843 ms  0x1712 fd:0x7ffb6e364520
           /* TID 0x170a */
  6846 ms  0x170a SSL_ImportFD()
  6846 ms  0x170a ret:0x7ffb6e364a30
  6846 ms  0x170a SSL_AuthCertificateHook()
  6846 ms  0x170a fd:0x7ffb6e364a30
  6846 ms  0x170a ret:0x0
  6846 ms  0x170a PR_Connect()
  6846 ms  0x170a fd:0x7ffb6e364a30
  6851 ms  0x170a SECKEY_CreateECPrivateKey()
  6851 ms  0x170a cx:0x7ffb7f3dc168
  6851 ms     | 0x170a EC_ValidatePublicKey()
  6851 ms     | 0x170a ret:0x0
  6851 ms  0x170a ret:0x7ffb6e1de020::7ffb6e1de020  40 ac 25 6e                                      @.%n
  6852 ms  0x170a SECKEY_CreateECPrivateKey()
  6852 ms  0x170a cx:0x7ffb7f3dc168
  6852 ms     | 0x170a EC_ValidatePublicKey()
  6854 ms     | 0x170a ret:0x0
  6854 ms  0x170a ret:0x7ffb6e1e0020::7ffb6e1e0020  70 ae 25 6e                                      p.%n
  6860 ms  0x170a PK11_Encrypt()
  6860 ms  0x170a symkey:0x7ffb6e2c6c80
  6885 ms  0x170a PK11_Encrypt()
  6885 ms  0x170a symkey:0x7ffb6e6b0380
           /* TID 0x1712 */
  6886 ms  0x1712 PR_Close()
  6886 ms  0x1712 fd:0x7ffb6e26dd00
           /* TID 0x170a */
  6887 ms  0x170a SECKEY_CreateECPrivateKey()
  6887 ms  0x170a cx:0x7ffb7f3dc308
  6887 ms     | 0x170a EC_ValidatePublicKey()
  6887 ms     | 0x170a ret:0x0
  6887 ms  0x170a ret:0x7ffb6e1e3820::7ffb6e1e3820  30 cd 31 6e                                      0.1n
  6887 ms  0x170a SECKEY_CreateECPrivateKey()
  6887 ms  0x170a cx:0x7ffb7f3dc308
  6888 ms     | 0x170a EC_ValidatePublicKey()
  6889 ms     | 0x170a ret:0x0
  6890 ms  0x170a ret:0x7ffb6e1e5820::7ffb6e1e5820  d0 83 45 6e                                      ..En
           /* TID 0x1712 */
  6897 ms  0x1712 PR_Close()
  6897 ms  0x1712 fd:0x7ffb6e364070
           /* TID 0x16ff */
  6899 ms  0x16ff PR_Close()
  6899 ms  0x16ff fd:0x7ffb6e364070
  6900 ms  0x16ff PR_Close()
  6900 ms  0x16ff fd:0x7ffb6e364070
           /* TID 0x170a */
  6910 ms  0x170a PK11_Derive()
  6910 ms  0x170a basekey:0x7ffb6e2c6700
  6910 ms     | 0x170a PK11_DeriveWithTemplate()
  6910 ms  0x170a ret:0x7ffb6e2c6c00
  6910 ms  0x170a PK11_PubDeriveWithKDF()
  6910 ms  0x170a seckey:0x7ffb6e1de020
  6910 ms     | 0x170a EC_ValidatePublicKey()
  6910 ms     | 0x170a ret:0x0
  6910 ms  0x170a ret:0x7ffb6e2c6700
  6910 ms  SECKEY_ECParamsToKeySize()
  6910 ms  0x170a ret:0xff
  6910 ms  0x170a PK11_DeriveWithFlags()
  6910 ms  0x170a basekey:0x7ffb6e2c6c00
  6910 ms     | 0x170a PK11_DeriveWithTemplate()
  6910 ms  0x170a ret:0x7ffb6e2c6800
  6910 ms  0x170a PK11_Derive()
  6910 ms  0x170a basekey:0x7ffb6e2c6700
  6910 ms     | 0x170a PK11_DeriveWithTemplate()
  6910 ms  0x170a ret:0x7ffb6e2c6380
  6911 ms  0x170a PK11_DeriveWithFlags()
  6911 ms  0x170a basekey:0x7ffb6e2c6380
  6911 ms     | 0x170a PK11_DeriveWithTemplate()
  6911 ms  0x170a ret:0x7ffb6e2c6c00
  6911 ms  0x170a PK11_DeriveWithFlags()
  6911 ms  0x170a basekey:0x7ffb6e2c6380
  6911 ms     | 0x170a PK11_DeriveWithTemplate()
  6911 ms  0x170a ret:0x7ffb6e2c6700
  6911 ms  0x170a PK11_DeriveWithFlags()
  6911 ms  0x170a basekey:0x7ffb6e2c6380
  6911 ms     | 0x170a PK11_DeriveWithTemplate()
  6911 ms  0x170a ret:0x7ffb6e2c6800
  6911 ms  0x170a PK11_Derive()
  6911 ms  0x170a basekey:0x7ffb6e2c6f00
  6911 ms     | 0x170a PK11_DeriveWithTemplate()
  6911 ms  0x170a ret:0x7ffb6e2c6a00
  6911 ms  0x170a PK11_DeriveWithFlags()
  6911 ms  0x170a basekey:0x7ffb6e2c6700
  6911 ms     | 0x170a PK11_DeriveWithTemplate()
  6911 ms  0x170a ret:0x7ffb6e2c6380
  6911 ms  0x170a PK11_DeriveWithFlags()
  6911 ms  0x170a basekey:0x7ffb6e2c6700
  6911 ms     | 0x170a PK11_DeriveWithTemplate()
  6911 ms  0x170a ret:0x7ffb6e2c6800
  6912 ms  0x170a PK11_DeriveWithFlags()
  6912 ms  0x170a basekey:0x7ffb6e2c6700
  6913 ms     | 0x170a PK11_DeriveWithTemplate()
  6913 ms  0x170a ret:0x7ffb6e2c6800
  6915 ms  0x170a PR_Connect()
  6915 ms  0x170a fd:0x7ffb6e364e80
           /* TID 0x1712 */
  6927 ms  0x1712 PR_Close()
  6927 ms  0x1712 fd:0x7ffb6e3645b0
           /* TID 0x17a4 */
  6927 ms  0x17a4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6927 ms  0x17a4 ret:0x0
           /* TID 0x170a */
  6927 ms  0x170a SSL_AuthCertificateComplete()
  6927 ms  0x170a fd:0x7ffb6e26de50
  6927 ms  0x170a err:0x0
  6927 ms     | 0x170a PK11_DeriveWithFlags()
  6927 ms     | 0x170a basekey:0x7ffb6e2c6780
  6927 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6927 ms     | 0x170a ret:0x7ffb6e2c6800
  6927 ms     | 0x170a PK11_DeriveWithFlags()
  6927 ms     | 0x170a basekey:0x7ffb6e2c6780
  6927 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6927 ms     | 0x170a ret:0x7ffb6e2c6f00
  6927 ms     | 0x170a PK11_DeriveWithFlags()
  6927 ms     | 0x170a basekey:0x7ffb6e2c6780
  6927 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6927 ms     | 0x170a ret:0x7ffb6e2c6d80
  6927 ms     | 0x170a PK11_DeriveWithFlags()
  6927 ms     | 0x170a basekey:0x7ffb6e2c7080
  6927 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6927 ms     | 0x170a ret:0x7ffb6e2c6f80
  6927 ms     | 0x170a PK11_DeriveWithFlags()
  6927 ms     | 0x170a basekey:0x7ffb6e2c7080
  6927 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6927 ms     | 0x170a ret:0x7ffb6e2c7000
  6927 ms     | 0x170a PK11_DeriveWithFlags()
  6927 ms     | 0x170a basekey:0x7ffb6e2c6f00
  6927 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6927 ms     | 0x170a ret:0x7ffb6e2c7000
  6927 ms     | 0x170a PK11_DeriveWithFlags()
  6927 ms     | 0x170a basekey:0x7ffb6e2c6f00
  6927 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6927 ms     | 0x170a ret:0x7ffb6e2c6980
  6927 ms     | 0x170a PK11_DeriveWithFlags()
  6927 ms     | 0x170a basekey:0x7ffb6e2c7080
  6927 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6927 ms     | 0x170a ret:0x7ffb6e2c6d00
  6927 ms     | 0x170a PK11_Encrypt()
  6927 ms     | 0x170a symkey:0x7ffb6e2c6f80
  6927 ms     | 0x170a PK11_DeriveWithFlags()
  6927 ms     | 0x170a basekey:0x7ffb6e2c6800
  6927 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6928 ms     | 0x170a ret:0x7ffb6e2c6d00
  6928 ms     | 0x170a PK11_DeriveWithFlags()
  6928 ms     | 0x170a basekey:0x7ffb6e2c6800
  6928 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6928 ms     | 0x170a ret:0x7ffb6e2c6980
  6928 ms     | 0x170a PK11_DeriveWithFlags()
  6928 ms     | 0x170a basekey:0x7ffb6e2c6780
  6928 ms     |    | 0x170a PK11_DeriveWithTemplate()
  6928 ms     | 0x170a ret:0x7ffb6e2c6f80
  6928 ms     | 0x170a SECKEY_DestroyPrivateKey()
  6928 ms     | 0x170a privk:0x7ffb6e1cd820::7ffb6e1cd820  60 2f 25 6e                                      `/%n
  6928 ms     | 0x170a privk:0x7ffb6e1cd820::7ffb6e1cd820  e5 e5 e5 e5                                      ....
  6928 ms     | 0x170a SECKEY_DestroyPrivateKey()
  6928 ms     | 0x170a privk:0x7ffb6e10d020::7ffb6e10d020  80 2d 25 6e                                      .-%n
  6928 ms     | 0x170a privk:0x7ffb6e10d020::7ffb6e10d020  e5 e5 e5 e5                                      ....
  6928 ms  0x170a PK11_Encrypt()
  6928 ms  0x170a symkey:0x7ffb6e2c6d00
  6928 ms  0x170a PK11_Encrypt()
  6928 ms  0x170a symkey:0x7ffb6e2c6d00
  6930 ms  0x170a PK11_Derive()
  6930 ms  0x170a basekey:0x7ffb6e2c7080
  6930 ms     | 0x170a PK11_DeriveWithTemplate()
  6930 ms  0x170a ret:0x7ffb812e0400
  6930 ms  0x170a PK11_Encrypt()
  6930 ms  0x170a symkey:0x7ffb6e2c1d00
  6936 ms  0x170a SECKEY_DestroyPrivateKey()
  6936 ms  0x170a privk:0x7ffb6e1e5820::7ffb6e1e5820  d0 83 45 6e                                      ..En
  6936 ms  0x170a privk:0x7ffb6e1e5820::7ffb6e1e5820  e5 e5 e5 e5                                      ....
  6936 ms  0x170a SECKEY_DestroyPrivateKey()
  6936 ms  0x170a privk:0x7ffb6e1e3820::7ffb6e1e3820  30 cd 31 6e                                      0.1n
  6936 ms  0x170a privk:0x7ffb6e1e3820::7ffb6e1e3820  e5 e5 e5 e5                                      ....
           /* TID 0x1712 */
  6944 ms  0x1712 PR_Close()
  6944 ms  0x1712 fd:0x7ffb6e3645e0
           /* TID 0x170a */
  6966 ms  0x170a PK11_DeriveWithFlags()
  6966 ms  0x170a basekey:0x7ffb6e2c6f80
  6966 ms     | 0x170a PK11_DeriveWithTemplate()
  6966 ms  0x170a ret:0x7ffb6e2c6780
  6966 ms  0x170a PK11_DeriveWithFlags()
  6966 ms  0x170a basekey:0x7ffb6e2c6f80
  6966 ms     | 0x170a PK11_DeriveWithTemplate()
  6966 ms  0x170a ret:0x7ffb6e2c6780
  6966 ms  0x170a PK11_Encrypt()
  6966 ms  0x170a symkey:0x7ffb6e2c6d00
           /* TID 0x1712 */
  7069 ms  0x1712 PR_Close()
  7069 ms  0x1712 fd:0x7ffb6e26d130
           /* TID 0x1765 */
  7069 ms  0x1765 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7069 ms  0x1765 ret:0x0
           /* TID 0x170a */
  7070 ms  0x170a SSL_AuthCertificateComplete()
  7070 ms  0x170a fd:0x7ffb6e3647c0
  7070 ms  0x170a err:0x0
  7070 ms     | 0x170a PK11_DeriveWithFlags()
  7070 ms     | 0x170a basekey:0x7ffb6e2c6a00
  7070 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7070 ms     | 0x170a ret:0x7ffb6e2c6780
  7070 ms     | 0x170a PK11_DeriveWithFlags()
  7070 ms     | 0x170a basekey:0x7ffb6e2c6a00
  7070 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7070 ms     | 0x170a ret:0x7ffb6e2c6980
  7070 ms     | 0x170a PK11_DeriveWithFlags()
  7070 ms     | 0x170a basekey:0x7ffb6e2c6a00
  7070 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7070 ms     | 0x170a ret:0x7ffb6e2c6280
  7070 ms     | 0x170a PK11_DeriveWithFlags()
  7070 ms     | 0x170a basekey:0x7ffb6e2c6c00
  7070 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7070 ms     | 0x170a ret:0x7ffb6e2c6400
  7070 ms     | 0x170a PK11_DeriveWithFlags()
  7070 ms     | 0x170a basekey:0x7ffb6e2c6c00
  7070 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7070 ms     | 0x170a ret:0x7ffb6e2c7180
  7070 ms     | 0x170a PK11_DeriveWithFlags()
  7070 ms     | 0x170a basekey:0x7ffb6e2c6980
  7070 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7070 ms     | 0x170a ret:0x7ffb6e2c7180
  7070 ms     | 0x170a PK11_DeriveWithFlags()
  7070 ms     | 0x170a basekey:0x7ffb6e2c6980
  7070 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7070 ms     | 0x170a ret:0x7ffb6e2c7380
  7070 ms     | 0x170a PK11_DeriveWithFlags()
  7070 ms     | 0x170a basekey:0x7ffb6e2c6c00
  7070 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7070 ms     | 0x170a ret:0x7ffb6e2c6380
  7070 ms     | 0x170a PK11_Encrypt()
  7070 ms     | 0x170a symkey:0x7ffb6e2c6400
  7070 ms     | 0x170a PK11_DeriveWithFlags()
  7070 ms     | 0x170a basekey:0x7ffb6e2c6780
  7070 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7070 ms     | 0x170a ret:0x7ffb6e2c6380
  7070 ms     | 0x170a PK11_DeriveWithFlags()
  7070 ms     | 0x170a basekey:0x7ffb6e2c6780
  7070 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7070 ms     | 0x170a ret:0x7ffb6e2c7380
  7070 ms     | 0x170a PK11_DeriveWithFlags()
  7070 ms     | 0x170a basekey:0x7ffb6e2c6a00
  7070 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7070 ms     | 0x170a ret:0x7ffb6e2c6400
  7070 ms     | 0x170a SECKEY_DestroyPrivateKey()
  7070 ms     | 0x170a privk:0x7ffb6e1e0020::7ffb6e1e0020  70 ae 25 6e                                      p.%n
  7071 ms     | 0x170a privk:0x7ffb6e1e0020::7ffb6e1e0020  e5 e5 e5 e5                                      ....
  7071 ms     | 0x170a SECKEY_DestroyPrivateKey()
  7071 ms     | 0x170a privk:0x7ffb6e1de020::7ffb6e1de020  40 ac 25 6e                                      @.%n
  7071 ms     | 0x170a privk:0x7ffb6e1de020::7ffb6e1de020  e5 e5 e5 e5                                      ....
  7071 ms  0x170a PK11_Encrypt()
  7071 ms  0x170a symkey:0x7ffb6e2c6380
  7071 ms  0x170a PK11_Encrypt()
  7071 ms  0x170a symkey:0x7ffb6e2c6380
  7082 ms  0x170a PK11_Encrypt()
  7082 ms  0x170a symkey:0x7ffb6e2c6d00
           /* TID 0x1712 */
  7083 ms  0x1712 PR_Close()
  7083 ms  0x1712 fd:0x7ffb6e256d00
           /* TID 0x170a */
  7083 ms  0x170a SSL_ImportFD()
  7083 ms  0x170a ret:0x7ffb6e4eaa30
  7083 ms  0x170a SSL_AuthCertificateHook()
  7083 ms  0x170a fd:0x7ffb6e4eaa30
  7083 ms  0x170a ret:0x0
  7083 ms  0x170a PR_Connect()
  7083 ms  0x170a fd:0x7ffb6e4eaa30
  7085 ms  0x170a PK11_Encrypt()
  7085 ms  0x170a symkey:0x7ffb6e2c6c80
  7108 ms  0x170a PK11_DeriveWithFlags()
  7108 ms  0x170a basekey:0x7ffb6e2c6400
  7108 ms     | 0x170a PK11_DeriveWithTemplate()
  7108 ms  0x170a ret:0x7ffb6e2c6700
  7108 ms  0x170a PK11_DeriveWithFlags()
  7108 ms  0x170a basekey:0x7ffb6e2c6400
  7108 ms     | 0x170a PK11_DeriveWithTemplate()
  7108 ms  0x170a ret:0x7ffb6e2c6700
  7108 ms  0x170a PK11_Encrypt()
  7108 ms  0x170a symkey:0x7ffb6e2c6380
  7109 ms  0x170a SECKEY_CreateECPrivateKey()
  7109 ms  0x170a cx:0x7ffb7f3dbfc8
  7109 ms     | 0x170a EC_ValidatePublicKey()
  7109 ms     | 0x170a ret:0x0
  7109 ms  0x170a ret:0x7ffb6e1e0020::7ffb6e1e0020  a0 a6 25 6e                                      ..%n
  7109 ms  0x170a SECKEY_CreateECPrivateKey()
  7109 ms  0x170a cx:0x7ffb7f3dbfc8
  7110 ms     | 0x170a EC_ValidatePublicKey()
  7111 ms     | 0x170a ret:0x0
  7111 ms  0x170a ret:0x7ffb6e1e4020::7ffb6e1e4020  90 ac 25 6e                                      ..%n
           /* TID 0x1712 */
  7119 ms  0x1712 PR_Close()
  7119 ms  0x1712 fd:0x7ffb6e4ea220
           /* TID 0x170a */
  7156 ms  0x170a PK11_Encrypt()
  7156 ms  0x170a symkey:0x7ffb6e2c6380
           /* TID 0x1712 */
  7157 ms  0x1712 PR_Close()
  7157 ms  0x1712 fd:0x7ffb6e256d60
           /* TID 0x170a */
  7162 ms  SECKEY_ECParamsToKeySize()
  7162 ms  0x170a ret:0x100
  7162 ms  0x170a SECKEY_CreateECPrivateKey()
  7162 ms  0x170a cx:0x7ffb7f3dbfc8
  7163 ms     | 0x170a EC_ValidatePublicKey()
  7164 ms     | 0x170a ret:0x0
  7164 ms  0x170a ret:0x7ffb6e4a3020::7ffb6e4a3020  e0 b7 4b 6e                                      ..Kn
  7164 ms  0x170a PK11_PubDeriveWithKDF()
  7164 ms  0x170a seckey:0x7ffb6e4a3020
  7165 ms     | 0x170a EC_ValidatePublicKey()
  7166 ms     | 0x170a ret:0x0
  7167 ms  0x170a ret:0x7ffb6e2c6700
  7167 ms  0x170a PK11_DeriveWithFlags()
  7167 ms  0x170a basekey:0x7ffb6e2c6700
  7167 ms     | 0x170a PK11_DeriveWithTemplate()
  7167 ms  0x170a ret:0x7ffb6e2c6c00
  7167 ms  0x170a PK11_Derive()
  7167 ms  0x170a basekey:0x7ffb6e2c6c00
  7167 ms     | 0x170a PK11_DeriveWithTemplate()
  7168 ms  0x170a ret:0x7ffb6e2c6a00
  7168 ms  0x170a SECKEY_DestroyPrivateKey()
  7168 ms  0x170a privk:0x7ffb6e4a3020::7ffb6e4a3020  e0 b7 4b 6e                                      ..Kn
  7168 ms  0x170a privk:0x7ffb6e4a3020::7ffb6e4a3020  e5 e5 e5 e5                                      ....
  7168 ms  0x170a PK11_Encrypt()
  7168 ms  0x170a symkey:0x7ffb6e36e780
           /* TID 0x17a5 */
  7169 ms  0x17a5 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7169 ms  0x17a5 ret:0x0
           /* TID 0x170a */
  7182 ms  0x170a SSL_AuthCertificateComplete()
  7182 ms  0x170a fd:0x7ffb6e4eaa30
  7182 ms  0x170a err:0x0
  7182 ms  0x170a PK11_Encrypt()
  7182 ms  0x170a symkey:0x7ffb6e36e780
  7187 ms  0x170a PR_Connect()
  7187 ms  0x170a fd:0x7ffb6e4ea580
  7187 ms  0x170a PR_Connect()
  7187 ms  0x170a fd:0x7ffb6e550490
  7188 ms  0x170a PR_Close()
  7188 ms  0x170a fd:0x7ffb6e4ea580
  7188 ms  0x170a PK11_Encrypt()
  7188 ms  0x170a symkey:0x7ffb6e2c6c80
  7189 ms  0x170a PK11_Encrypt()
  7189 ms  0x170a symkey:0x7ffb6e2c6c80
  7189 ms  0x170a PR_Close()
  7189 ms  0x170a fd:0x7ffb6e550490
  7189 ms  0x170a PK11_Encrypt()
  7189 ms  0x170a symkey:0x7ffb6e2c6c80
  7219 ms  0x170a SECKEY_DestroyPrivateKey()
  7219 ms  0x170a privk:0x7ffb6e1e4020::7ffb6e1e4020  90 ac 25 6e                                      ..%n
  7219 ms  0x170a privk:0x7ffb6e1e4020::7ffb6e1e4020  e5 e5 e5 e5                                      ....
  7219 ms  0x170a SECKEY_DestroyPrivateKey()
  7219 ms  0x170a privk:0x7ffb6e1e0020::7ffb6e1e0020  a0 a6 25 6e                                      ..%n
  7219 ms  0x170a privk:0x7ffb6e1e0020::7ffb6e1e0020  e5 e5 e5 e5                                      ....
           /* TID 0x1712 */
  7220 ms  0x1712 PR_Close()
  7220 ms  0x1712 fd:0x7ffb6e26d2b0
  7250 ms  0x1712 PR_Close()
  7250 ms  0x1712 fd:0x7ffb6e4eae50
  7299 ms  0x1712 PR_Close()
  7299 ms  0x1712 fd:0x7ffb6e4ea190
  7300 ms  0x1712 PR_Close()
  7300 ms  0x1712 fd:0x7ffb6e4ea190
           /* TID 0x170a */
  7344 ms  0x170a PK11_Encrypt()
  7344 ms  0x170a symkey:0x7ffb6e2c6380
  7401 ms  0x170a PK11_Encrypt()
  7401 ms  0x170a symkey:0x7ffb6e2c6380
  7408 ms  0x170a SSL_ImportFD()
  7408 ms  0x170a ret:0x7ffb7f363bb0
  7408 ms  0x170a SSL_AuthCertificateHook()
  7408 ms  0x170a fd:0x7ffb7f363bb0
  7408 ms  0x170a ret:0x0
  7408 ms  0x170a PR_Connect()
  7408 ms  0x170a fd:0x7ffb7f363bb0
  7456 ms  0x170a SECKEY_CreateECPrivateKey()
  7456 ms  0x170a cx:0x7ffb7f3dccc8
  7456 ms     | 0x170a EC_ValidatePublicKey()
  7456 ms     | 0x170a ret:0x0
  7456 ms  0x170a ret:0x7ffb6e4af820::7ffb6e4af820  70 2e 4c 6e                                      p.Ln
  7456 ms  0x170a SECKEY_CreateECPrivateKey()
  7456 ms  0x170a cx:0x7ffb7f3dccc8
  7457 ms     | 0x170a EC_ValidatePublicKey()
  7459 ms     | 0x170a ret:0x0
  7459 ms  0x170a ret:0x7ffb6e4b5820::7ffb6e4b5820  60 aa 25 6e                                      `.%n
  7507 ms  0x170a PK11_Derive()
  7507 ms  0x170a basekey:0x7ffb6e2c6700
  7507 ms     | 0x170a PK11_DeriveWithTemplate()
  7507 ms  0x170a ret:0x7ffb6e2c7380
  7507 ms  0x170a PK11_PubDeriveWithKDF()
  7507 ms  0x170a seckey:0x7ffb6e4af820
  7507 ms     | 0x170a EC_ValidatePublicKey()
  7507 ms     | 0x170a ret:0x0
  7508 ms  0x170a ret:0x7ffb6e2c6700
  7508 ms  SECKEY_ECParamsToKeySize()
  7508 ms  0x170a ret:0xff
  7508 ms  0x170a PK11_DeriveWithFlags()
  7508 ms  0x170a basekey:0x7ffb6e2c7380
  7508 ms     | 0x170a PK11_DeriveWithTemplate()
  7508 ms  0x170a ret:0x7ffb6e36f880
  7508 ms  0x170a PK11_Derive()
  7508 ms  0x170a basekey:0x7ffb6e2c6700
  7508 ms     | 0x170a PK11_DeriveWithTemplate()
  7508 ms  0x170a ret:0x7ffb6e407600
  7508 ms  0x170a PK11_DeriveWithFlags()
  7508 ms  0x170a basekey:0x7ffb6e407600
  7508 ms     | 0x170a PK11_DeriveWithTemplate()
  7508 ms  0x170a ret:0x7ffb6e2c7380
  7508 ms  0x170a PK11_DeriveWithFlags()
  7508 ms  0x170a basekey:0x7ffb6e407600
  7508 ms     | 0x170a PK11_DeriveWithTemplate()
  7508 ms  0x170a ret:0x7ffb6e2c6700
  7508 ms  0x170a PK11_DeriveWithFlags()
  7508 ms  0x170a basekey:0x7ffb6e407600
  7508 ms     | 0x170a PK11_DeriveWithTemplate()
  7508 ms  0x170a ret:0x7ffb6e36f880
  7508 ms  0x170a PK11_Derive()
  7508 ms  0x170a basekey:0x7ffb6e407800
  7508 ms     | 0x170a PK11_DeriveWithTemplate()
  7508 ms  0x170a ret:0x7ffb6e407980
  7508 ms  0x170a PK11_DeriveWithFlags()
  7508 ms  0x170a basekey:0x7ffb6e2c6700
  7508 ms     | 0x170a PK11_DeriveWithTemplate()
  7508 ms  0x170a ret:0x7ffb6e407600
  7508 ms  0x170a PK11_DeriveWithFlags()
  7508 ms  0x170a basekey:0x7ffb6e2c6700
  7508 ms     | 0x170a PK11_DeriveWithTemplate()
  7508 ms  0x170a ret:0x7ffb6e36f880
  7510 ms  SECKEY_ECParamsToKeySize()
  7510 ms  0x170a ret:0x100
  7510 ms  SECKEY_ECParamsToBasePointOrderLen()
  7510 ms  0x170a ret:0x100
  7510 ms  SECKEY_ECParamsToBasePointOrderLen()
  7510 ms  0x170a ret:0x100
  7510 ms  0x170a EC_ValidatePublicKey()
  7511 ms  0x170a ret:0x0
  7516 ms  0x170a PK11_DeriveWithFlags()
  7516 ms  0x170a basekey:0x7ffb6e2c6700
  7516 ms     | 0x170a PK11_DeriveWithTemplate()
  7516 ms  0x170a ret:0x7ffb6e36f880
           /* TID 0x1712 */
  7661 ms  0x1712 PR_Close()
  7661 ms  0x1712 fd:0x7ffb6e4ea580
           /* TID 0x17a4 */
  7661 ms  0x17a4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7661 ms  0x17a4 ret:0x0
           /* TID 0x170a */
  7661 ms  0x170a SSL_AuthCertificateComplete()
  7661 ms  0x170a fd:0x7ffb7f363bb0
  7661 ms  0x170a err:0x0
  7661 ms     | 0x170a PK11_DeriveWithFlags()
  7661 ms     | 0x170a basekey:0x7ffb6e407980
  7662 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7662 ms     | 0x170a ret:0x7ffb6e36f880
  7662 ms     | 0x170a PK11_DeriveWithFlags()
  7662 ms     | 0x170a basekey:0x7ffb6e407980
  7662 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7662 ms     | 0x170a ret:0x7ffb6e407800
  7662 ms     | 0x170a PK11_DeriveWithFlags()
  7662 ms     | 0x170a basekey:0x7ffb6e407980
  7662 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7662 ms     | 0x170a ret:0x7ffb6e2c1880
  7662 ms     | 0x170a PK11_DeriveWithFlags()
  7662 ms     | 0x170a basekey:0x7ffb6e2c7380
  7662 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7662 ms     | 0x170a ret:0x7ffb6e2c1900
  7662 ms     | 0x170a PK11_DeriveWithFlags()
  7662 ms     | 0x170a basekey:0x7ffb6e2c7380
  7662 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7662 ms     | 0x170a ret:0x7ffb6e36fc00
  7662 ms     | 0x170a PK11_DeriveWithFlags()
  7662 ms     | 0x170a basekey:0x7ffb6e407800
  7662 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7662 ms     | 0x170a ret:0x7ffb6e36fc00
  7662 ms     | 0x170a PK11_DeriveWithFlags()
  7662 ms     | 0x170a basekey:0x7ffb6e407800
  7662 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7662 ms     | 0x170a ret:0x7ffb6e408000
  7662 ms     | 0x170a PK11_DeriveWithFlags()
  7662 ms     | 0x170a basekey:0x7ffb6e2c7380
  7662 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7662 ms     | 0x170a ret:0x7ffb6e407600
  7662 ms     | 0x170a PK11_Encrypt()
  7662 ms     | 0x170a symkey:0x7ffb6e2c1900
  7662 ms     | 0x170a PK11_DeriveWithFlags()
  7662 ms     | 0x170a basekey:0x7ffb6e36f880
  7662 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7663 ms     | 0x170a ret:0x7ffb6e407600
  7663 ms     | 0x170a PK11_DeriveWithFlags()
  7663 ms     | 0x170a basekey:0x7ffb6e36f880
  7663 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7663 ms     | 0x170a ret:0x7ffb6e408000
  7663 ms     | 0x170a PK11_DeriveWithFlags()
  7663 ms     | 0x170a basekey:0x7ffb6e407980
  7663 ms     |    | 0x170a PK11_DeriveWithTemplate()
  7663 ms     | 0x170a ret:0x7ffb6e2c1900
  7663 ms     | 0x170a SECKEY_DestroyPrivateKey()
  7663 ms     | 0x170a privk:0x7ffb6e4b5820::7ffb6e4b5820  60 aa 25 6e                                      `.%n
  7663 ms     | 0x170a privk:0x7ffb6e4b5820::7ffb6e4b5820  e5 e5 e5 e5                                      ....
  7663 ms     | 0x170a SECKEY_DestroyPrivateKey()
  7663 ms     | 0x170a privk:0x7ffb6e4af820::7ffb6e4af820  70 2e 4c 6e                                      p.Ln
  7663 ms     | 0x170a privk:0x7ffb6e4af820::7ffb6e4af820  e5 e5 e5 e5                                      ....
  7663 ms  0x170a PK11_Encrypt()
  7663 ms  0x170a symkey:0x7ffb6e407600
  7664 ms  0x170a PK11_Encrypt()
  7664 ms  0x170a symkey:0x7ffb6e407600
  7710 ms  0x170a PK11_DeriveWithFlags()
  7710 ms  0x170a basekey:0x7ffb6e2c1900
  7710 ms     | 0x170a PK11_DeriveWithTemplate()
  7710 ms  0x170a ret:0x7ffb6e2c6700
  7710 ms  0x170a PK11_DeriveWithFlags()
  7710 ms  0x170a basekey:0x7ffb6e2c1900
  7710 ms     | 0x170a PK11_DeriveWithTemplate()
  7710 ms  0x170a ret:0x7ffb6e2c6700
  7710 ms  0x170a PK11_Encrypt()
  7710 ms  0x170a symkey:0x7ffb6e407600
  7758 ms  0x170a PK11_Encrypt()
  7758 ms  0x170a symkey:0x7ffb6e407600
  7762 ms  0x170a PK11_Encrypt()
  7762 ms  0x170a symkey:0x7ffb6e258c00
  7820 ms  0x170a PK11_Encrypt()
  7820 ms  0x170a symkey:0x7ffb6e258c00
  7839 ms  0x170a SSL_ImportFD()
  7839 ms  0x170a ret:0x7ffb7f363e20
  7839 ms  0x170a SSL_AuthCertificateHook()
  7839 ms  0x170a fd:0x7ffb7f363e20
  7839 ms  0x170a ret:0x0
  7839 ms  0x170a PR_Connect()
  7839 ms  0x170a fd:0x7ffb7f363e20
  7877 ms  0x170a SECKEY_CreateECPrivateKey()
  7877 ms  0x170a cx:0x7ffb7f3dce68
  7878 ms     | 0x170a EC_ValidatePublicKey()
  7878 ms     | 0x170a ret:0x0
  7878 ms  0x170a ret:0x7ffb6e51c820::7ffb6e51c820  00 26 52 6e                                      .&Rn
  7878 ms  0x170a SECKEY_CreateECPrivateKey()
  7878 ms  0x170a cx:0x7ffb7f3dce68
  7878 ms     | 0x170a EC_ValidatePublicKey()
  7880 ms     | 0x170a ret:0x0
  7880 ms  0x170a ret:0x7ffb7f345820::7ffb7f345820  30 2d 52 6e                                      0-Rn
  7935 ms  0x170a PK11_Derive()
  7935 ms  0x170a basekey:0x7ffb6e2c6700
  7935 ms     | 0x170a PK11_DeriveWithTemplate()
  7935 ms  0x170a ret:0x7ffb6e2c7380
  7935 ms  0x170a PK11_PubDeriveWithKDF()
  7935 ms  0x170a seckey:0x7ffb6e51c820
  7935 ms     | 0x170a EC_ValidatePublicKey()
  7935 ms     | 0x170a ret:0x0
  7936 ms  0x170a ret:0x7ffb6e2c6700
  7936 ms  SECKEY_ECParamsToKeySize()
  7936 ms  0x170a ret:0xff
  7936 ms  0x170a PK11_DeriveWithFlags()
  7936 ms  0x170a basekey:0x7ffb6e2c7380
  7936 ms     | 0x170a PK11_DeriveWithTemplate()
  7936 ms  0x170a ret:0x7ffb6e407980
  7936 ms  0x170a PK11_Derive()
  7936 ms  0x170a basekey:0x7ffb6e2c6700
  7936 ms     | 0x170a PK11_DeriveWithTemplate()
  7936 ms  0x170a ret:0x7ffb6e408000
  7936 ms  0x170a PK11_DeriveWithFlags()
  7936 ms  0x170a basekey:0x7ffb6e408000
  7936 ms     | 0x170a PK11_DeriveWithTemplate()
  7936 ms  0x170a ret:0x7ffb6e2c7380
  7936 ms  0x170a PK11_DeriveWithFlags()
  7936 ms  0x170a basekey:0x7ffb6e408000
  7936 ms     | 0x170a PK11_DeriveWithTemplate()
  7936 ms  0x170a ret:0x7ffb6e2c6700
  7936 ms  0x170a PK11_DeriveWithFlags()
  7936 ms  0x170a basekey:0x7ffb6e408000
  7936 ms     | 0x170a PK11_DeriveWithTemplate()
  7936 ms  0x170a ret:0x7ffb6e407980
  7936 ms  0x170a PK11_Derive()
  7936 ms  0x170a basekey:0x7ffb6e467580
  7936 ms     | 0x170a PK11_DeriveWithTemplate()
  7936 ms  0x170a ret:0x7ffb6e467780
  7936 ms  0x170a PK11_DeriveWithFlags()
  7936 ms  0x170a basekey:0x7ffb6e2c6700
  7936 ms     | 0x170a PK11_DeriveWithTemplate()
  7936 ms  0x170a ret:0x7ffb6e408000
  7936 ms  0x170a PK11_DeriveWithFlags()
  7936 ms  0x170a basekey:0x7ffb6e2c6700
  7936 ms     | 0x170a PK11_DeriveWithTemplate()
  7936 ms  0x170a ret:0x7ffb6e407980
  7938 ms  0x170a PK11_DeriveWithFlags()
  7938 ms  0x170a basekey:0x7ffb6e2c6700
  7938 ms     | 0x170a PK11_DeriveWithTemplate()
  7938 ms  0x170a ret:0x7ffb6e407980
           /* TID 0x1712 */
  8081 ms  0x1712 PR_Close()
  8081 ms  0x1712 fd:0x7ffb7f363760
           /* TID 0x1765 */
  8081 ms  0x1765 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8082 ms  0x1765 ret:0x0
           /* TID 0x170a */
  8082 ms  0x170a SSL_AuthCertificateComplete()
  8082 ms  0x170a fd:0x7ffb7f363e20
  8082 ms  0x170a err:0x0
  8082 ms     | 0x170a PK11_DeriveWithFlags()
  8082 ms     | 0x170a basekey:0x7ffb6e467780
  8082 ms     |    | 0x170a PK11_DeriveWithTemplate()
  8082 ms     | 0x170a ret:0x7ffb6e407980
  8082 ms     | 0x170a PK11_DeriveWithFlags()
  8082 ms     | 0x170a basekey:0x7ffb6e467780
  8082 ms     |    | 0x170a PK11_DeriveWithTemplate()
  8082 ms     | 0x170a ret:0x7ffb6e467580
  8082 ms     | 0x170a PK11_DeriveWithFlags()
  8082 ms     | 0x170a basekey:0x7ffb6e467780
  8082 ms     |    | 0x170a PK11_DeriveWithTemplate()
  8082 ms     | 0x170a ret:0x7ffb6e467b80
  8082 ms     | 0x170a PK11_DeriveWithFlags()
  8082 ms     | 0x170a basekey:0x7ffb6e2c7380
  8082 ms     |    | 0x170a PK11_DeriveWithTemplate()
  8082 ms     | 0x170a ret:0x7ffb6e468000
  8082 ms     | 0x170a PK11_DeriveWithFlags()
  8082 ms     | 0x170a basekey:0x7ffb6e2c7380
  8082 ms     |    | 0x170a PK11_DeriveWithTemplate()
  8082 ms     | 0x170a ret:0x7ffb6e467f80
  8082 ms     | 0x170a PK11_DeriveWithFlags()
  8082 ms     | 0x170a basekey:0x7ffb6e467580
  8082 ms     |    | 0x170a PK11_DeriveWithTemplate()
  8082 ms     | 0x170a ret:0x7ffb6e467f80
  8082 ms     | 0x170a PK11_DeriveWithFlags()
  8082 ms     | 0x170a basekey:0x7ffb6e467580
  8082 ms     |    | 0x170a PK11_DeriveWithTemplate()
  8082 ms     | 0x170a ret:0x7ffb6e468200
  8082 ms     | 0x170a PK11_DeriveWithFlags()
  8082 ms     | 0x170a basekey:0x7ffb6e2c7380
  8082 ms     |    | 0x170a PK11_DeriveWithTemplate()
  8082 ms     | 0x170a ret:0x7ffb6e408000
  8082 ms     | 0x170a PK11_Encrypt()
  8082 ms     | 0x170a symkey:0x7ffb6e468000
  8083 ms     | 0x170a PK11_DeriveWithFlags()
  8083 ms     | 0x170a basekey:0x7ffb6e407980
  8083 ms     |    | 0x170a PK11_DeriveWithTemplate()
  8083 ms     | 0x170a ret:0x7ffb6e408000
  8083 ms     | 0x170a PK11_DeriveWithFlags()
  8083 ms     | 0x170a basekey:0x7ffb6e407980
  8083 ms     |    | 0x170a PK11_DeriveWithTemplate()
  8083 ms     | 0x170a ret:0x7ffb6e468200
  8083 ms     | 0x170a PK11_DeriveWithFlags()
  8083 ms     | 0x170a basekey:0x7ffb6e467780
  8083 ms     |    | 0x170a PK11_DeriveWithTemplate()
  8083 ms     | 0x170a ret:0x7ffb6e468000
  8083 ms     | 0x170a SECKEY_DestroyPrivateKey()
  8083 ms     | 0x170a privk:0x7ffb7f345820::7ffb7f345820  30 2d 52 6e                                      0-Rn
  8083 ms     | 0x170a privk:0x7ffb7f345820::7ffb7f345820  e5 e5 e5 e5                                      ....
  8083 ms     | 0x170a SECKEY_DestroyPrivateKey()
  8083 ms     | 0x170a privk:0x7ffb6e51c820::7ffb6e51c820  00 26 52 6e                                      .&Rn
  8083 ms     | 0x170a privk:0x7ffb6e51c820::7ffb6e51c820  e5 e5 e5 e5                                      ....
  8083 ms  0x170a PK11_Encrypt()
  8083 ms  0x170a symkey:0x7ffb6e408000
  8084 ms  0x170a PK11_Encrypt()
  8084 ms  0x170a symkey:0x7ffb6e408000
  8117 ms  0x170a PR_Close()
  8117 ms  0x170a fd:0x7ffb85cac850
  8117 ms     | 0x170a PK11_Encrypt()
  8117 ms     | 0x170a symkey:0x7ffb89236d00
  8197 ms  0x170a PK11_DeriveWithFlags()
  8197 ms  0x170a basekey:0x7ffb6e468000
  8197 ms     | 0x170a PK11_DeriveWithTemplate()
  8197 ms  0x170a ret:0x7ffb89236b80
  8197 ms  0x170a PK11_DeriveWithFlags()
  8197 ms  0x170a basekey:0x7ffb6e468000
  8197 ms     | 0x170a PK11_DeriveWithTemplate()
  8197 ms  0x170a ret:0x7ffb89236b80
  8197 ms  0x170a PK11_Encrypt()
  8197 ms  0x170a symkey:0x7ffb6e408000
  8219 ms  0x170a PK11_Encrypt()
  8219 ms  0x170a symkey:0x7ffb6e408000
  8227 ms  0x170a PR_Close()
  8227 ms  0x170a fd:0x7ffb80688ca0
           /* TID 0x16ff */
  8229 ms  0x16ff EC_ValidatePublicKey()
  8232 ms  0x16ff ret:0x0
  8232 ms  0x16ff EC_ValidatePublicKey()
  8238 ms  0x16ff ret:0x0
  8238 ms  0x16ff EC_ValidatePublicKey()
  8240 ms  0x16ff ret:0x0
  8240 ms  0x16ff EC_ValidatePublicKey()
  8241 ms  0x16ff ret:0x0
  8241 ms  0x16ff EC_ValidatePublicKey()
  8245 ms  0x16ff ret:0x0
  8245 ms  0x16ff EC_ValidatePublicKey()
  8247 ms  0x16ff ret:0x0
  8247 ms  0x16ff EC_ValidatePublicKey()
  8249 ms  0x16ff ret:0x0
  8249 ms  0x16ff EC_ValidatePublicKey()
  8251 ms  0x16ff ret:0x0
  8251 ms  0x16ff EC_ValidatePublicKey()
  8252 ms  0x16ff ret:0x0
  8252 ms  0x16ff EC_ValidatePublicKey()
  8254 ms  0x16ff ret:0x0
           /* TID 0x170a */
  8254 ms  0x170a PK11_Encrypt()
  8254 ms  0x170a symkey:0x7ffb6e408000
  8254 ms  0x170a PK11_Encrypt()
  8254 ms  0x170a symkey:0x7ffb6e2c6380
  8254 ms  0x170a PK11_Encrypt()
  8254 ms  0x170a symkey:0x7ffb6e2c6d00
  8255 ms  0x170a PK11_Encrypt()
  8255 ms  0x170a symkey:0x7ffb6e2c6c80
  8255 ms  0x170a PK11_Encrypt()
  8255 ms  0x170a symkey:0x7ffb6e407600
  8255 ms  0x170a PK11_Encrypt()
  8255 ms  0x170a symkey:0x7ffb6e258c00
  8255 ms  0x170a PR_Close()
  8255 ms  0x170a fd:0x7ffb6e4eaa30
  8255 ms     | 0x170a PK11_Encrypt()
  8255 ms     | 0x170a symkey:0x7ffb6e36e780
  8255 ms  0x170a PR_Close()
  8255 ms  0x170a fd:0x7ffb6e364e80
  8255 ms  0x170a PR_Close()
  8255 ms  0x170a fd:0x7ffb6e364a30
  8255 ms     | 0x170a PK11_Encrypt()
  8255 ms     | 0x170a symkey:0x7ffb6e2c1d00
  8255 ms  0x170a PR_Close()
  8255 ms  0x170a fd:0x7ffb6e24c790
  8255 ms     | 0x170a PK11_Encrypt()
  8255 ms     | 0x170a symkey:0x7ffb6dd2b200
  8256 ms  0x170a PR_Close()
  8256 ms  0x170a fd:0x7ffb6e256520
  8256 ms  0x170a PR_Close()
  8256 ms  0x170a fd:0x7ffb6e550760
  8256 ms     | 0x170a PK11_Encrypt()
  8256 ms     | 0x170a symkey:0x7ffb6e6b0380
  8256 ms  0x170a PR_Close()
  8256 ms  0x170a fd:0x7ffb6e550220
  8256 ms  0x170a PR_Close()
  8256 ms  0x170a fd:0x7ffb89232670
  8256 ms  0x170a PR_Close()
  8256 ms  0x170a fd:0x7ffb7f3caeb0
  8256 ms     | 0x170a PK11_Encrypt()
  8256 ms     | 0x170a symkey:0x7ffb7f3cf680
  8256 ms  0x170a PR_Close()
  8256 ms  0x170a fd:0x7ffb7f3cabb0
  8256 ms  0x170a PR_Close()
  8256 ms  0x170a fd:0x7ffb7f3ca100
  8257 ms     | 0x170a PK11_Encrypt()
  8257 ms     | 0x170a symkey:0x7ffb816fa000
  8257 ms  0x170a PR_Close()
  8257 ms  0x170a fd:0x7ffb7fbfcee0
  8257 ms  0x170a PR_Close()
  8257 ms  0x170a fd:0x7ffb6e24cd90
  8257 ms     | 0x170a PK11_Encrypt()
  8257 ms     | 0x170a symkey:0x7ffb6e2c6c80
  8257 ms  0x170a PR_Close()
  8257 ms  0x170a fd:0x7ffb7f363e20
  8257 ms     | 0x170a PK11_Encrypt()
  8257 ms     | 0x170a symkey:0x7ffb6e408000
  8257 ms  0x170a PR_Close()
  8257 ms  0x170a fd:0x7ffb6e3647c0
  8257 ms     | 0x170a PK11_Encrypt()
  8257 ms     | 0x170a symkey:0x7ffb6e2c6380
  8258 ms  0x170a PR_Close()
  8258 ms  0x170a fd:0x7ffb6e24c550
  8258 ms     | 0x170a PK11_Encrypt()
  8258 ms     | 0x170a symkey:0x7ffb6e258c00
  8258 ms  0x170a PR_Close()
  8258 ms  0x170a fd:0x7ffb6e26de50
  8258 ms     | 0x170a PK11_Encrypt()
  8258 ms     | 0x170a symkey:0x7ffb6e2c6d00
  8258 ms  0x170a PR_Close()
  8258 ms  0x170a fd:0x7ffb7f363bb0
  8258 ms     | 0x170a PK11_Encrypt()
  8258 ms     | 0x170a symkey:0x7ffb6e407600
           /* TID 0x175a */
  8259 ms  0x175a PR_Close()
  8259 ms  0x175a fd:0x7ffb6e24c280
  8259 ms  0x175a PR_Close()
  8259 ms  0x175a fd:0x7ffb6e24c280
           /* TID 0x16ff */
  8266 ms  0x16ff PR_Close()
  8266 ms  0x16ff fd:0x7ffb84394be0
  8269 ms  0x16ff PR_Close()
  8269 ms  0x16ff fd:0x7ffb6e24c820
  8271 ms  0x16ff PR_Close()
  8271 ms  0x16ff fd:0x7ffb6e24c8b0
  8271 ms  0x16ff PR_Close()
  8271 ms  0x16ff fd:0x7ffb6e24c820
  8272 ms  0x16ff PR_Close()
  8272 ms  0x16ff fd:0x7ffb6e24c8b0
  8272 ms  0x16ff PR_Close()
  8272 ms  0x16ff fd:0x7ffb6e24c820
           /* TID 0x176d */
  8275 ms  0x176d PR_Close()
  8275 ms  0x176d fd:0x7ffb6e24c820
           /* TID 0x16ff */
  8307 ms  0x16ff PR_Close()
  8307 ms  0x16ff fd:0x7ffb6e24c8b0
  8307 ms  0x16ff PR_Close()
  8307 ms  0x16ff fd:0x7ffb6e364b80
  8308 ms  0x16ff PR_Close()
  8308 ms  0x16ff fd:0x7ffb6e24c8b0
  8308 ms  0x16ff PR_Close()
  8308 ms  0x16ff fd:0x7ffb6e26d850
  8309 ms  0x16ff PR_Close()
  8309 ms  0x16ff fd:0x7ffb8a6c89a0
  8309 ms  0x16ff PR_Close()
  8309 ms  0x16ff fd:0x7ffb8a6c88b0
  8309 ms  0x16ff PR_Close()
  8309 ms  0x16ff fd:0x7ffb8a6c8a60
  8311 ms  0x16ff PR_Close()
  8311 ms  0x16ff fd:0x7ffb6e26dd00
  8316 ms  0x16ff PR_Close()
  8316 ms  0x16ff fd:0x7ffb6e26dd00
  8318 ms  0x16ff PR_Close()
  8318 ms  0x16ff fd:0x7ffb6e24c8b0
  8318 ms  0x16ff PR_Close()
  8318 ms  0x16ff fd:0x7ffb6e26dee0
  8319 ms  0x16ff PR_Close()
  8319 ms  0x16ff fd:0x7ffb6e24c8b0
  8319 ms  0x16ff PR_Close()
  8319 ms  0x16ff fd:0x7ffb6e26dee0
  8322 ms  0x16ff PR_Close()
  8322 ms  0x16ff fd:0x7ffb6e3648e0
  8324 ms  0x16ff PR_Close()
  8324 ms  0x16ff fd:0x7ffb6e3648e0
  8326 ms  0x16ff PR_Close()
  8326 ms  0x16ff fd:0x7ffb6e24c8b0
  8326 ms  0x16ff PR_Close()
  8326 ms  0x16ff fd:0x7ffb6e364e80
  8326 ms  0x16ff PR_Close()
  8326 ms  0x16ff fd:0x7ffb6e24c8b0
  8326 ms  0x16ff PR_Close()
  8326 ms  0x16ff fd:0x7ffb6e364e80
  8333 ms  0x16ff PR_Close()
  8333 ms  0x16ff fd:0x7ffb6e364f40
  8334 ms  0x16ff PR_Close()
  8334 ms  0x16ff fd:0x7ffb6e364f40
  8342 ms  0x16ff PR_Close()
  8342 ms  0x16ff fd:0x7ffb6e364c10
  8343 ms  0x16ff PR_Close()
  8343 ms  0x16ff fd:0x7ffb6e364c10
  8349 ms  0x16ff PR_Close()
  8349 ms  0x16ff fd:0x7ffb6e364c10
           /* TID 0x176d */
  8360 ms  0x176d PR_Close()
  8360 ms  0x176d fd:0x7ffb6e24c4c0
  8361 ms  0x176d PR_Close()
  8361 ms  0x176d fd:0x7ffb6e24c4c0
           /* TID 0x16ff */
  8366 ms  0x16ff PR_Close()
  8366 ms  0x16ff fd:0x7ffb6e24c8b0
  8366 ms  0x16ff PR_Close()
  8366 ms  0x16ff fd:0x7ffb6e24c4c0
           /* TID 0x176d */
  8374 ms  0x176d PR_Close()
  8374 ms  0x176d fd:0x7ffb6e24c820
  8406 ms  0x176d PR_Close()
  8406 ms  0x176d fd:0x7ffb6e24c430
           /* TID 0x1704 */
  8418 ms  0x1704 PR_Close()
  8418 ms  0x1704 fd:0x7ffb89231a60
           /* TID 0x176d */
  8425 ms  0x176d PR_Close()
  8425 ms  0x176d fd:0x7ffb6e24cb80
           /* TID 0x170a */
  8440 ms  0x170a PR_Close()
  8440 ms  0x170a fd:0x7ffb8093b8e0
  8440 ms  0x170a PR_Close()
  8440 ms  0x170a fd:0x7ffb6e550550
           /* TID 0x1704 */
  8442 ms  0x1704 PR_Close()
  8442 ms  0x1704 fd:0x7ffb85968820
           /* TID 0x16ff */
  8445 ms  0x16ff PR_Close()
  8445 ms  0x16ff fd:0x7ffb6e24c8b0
  8445 ms  0x16ff PR_Close()
  8445 ms  0x16ff fd:0x7ffb6e4ea640
           /* TID 0x175a */
  8446 ms  0x175a PR_Close()
  8446 ms  0x175a fd:0x7ffb6e256a00
  8446 ms  0x175a PR_Close()
  8446 ms  0x175a fd:0x7ffb6e256a00
  8446 ms  0x175a PR_Close()
  8446 ms  0x175a fd:0x7ffb6e256a00
  8446 ms  0x175a PR_Close()
  8446 ms  0x175a fd:0x7ffb6e256e20
           /* TID 0x176d */
  8447 ms  0x176d PR_Close()
  8447 ms  0x176d fd:0x7ffb6e256e20
           /* TID 0x1712 */
  8451 ms  0x1712 PR_Close()
  8451 ms  0x1712 fd:0x7ffb7f6c69d0
  8451 ms  0x1712 PR_Close()
  8451 ms  0x1712 fd:0x7ffb7f6c6a00
           /* TID 0x1704 */
  8462 ms  0x1704 PR_Close()
  8462 ms  0x1704 fd:0x7ffb80688340
           /* TID 0x16ff */
  8464 ms  0x16ff PR_Close()
  8464 ms  0x16ff fd:0x7ffb6e24c8b0
  8464 ms  0x16ff PR_Close()
  8464 ms  0x16ff fd:0x7ffb6e2562b0
           /* TID 0x176d */
  8466 ms  0x176d PR_Close()
  8466 ms  0x176d fd:0x7ffb6e2562e0
  8471 ms  0x176d PR_Close()
  8471 ms  0x176d fd:0x7ffb6e2561f0
  8541 ms  0x176d PR_Close()
  8541 ms  0x176d fd:0x7ffb6e24ce80
  8553 ms  0x176d PR_Close()
  8553 ms  0x176d fd:0x7ffb6e24ce80
  8558 ms  0x176d PR_Close()
  8558 ms  0x176d fd:0x7ffb6e2562b0
  8560 ms  0x176d PR_Close()
  8560 ms  0x176d fd:0x7ffb6e2562e0
  8573 ms  0x176d PR_Close()
  8573 ms  0x176d fd:0x7ffb6e26d0a0
  8580 ms  0x176d PR_Close()
  8580 ms  0x176d fd:0x7ffb6e364520
  8590 ms  0x176d PR_Close()
  8590 ms  0x176d fd:0x7ffb6e4ea310
  8602 ms  0x176d PR_Close()
  8602 ms  0x176d fd:0x7ffb6e4ea3d0
  8603 ms  0x176d PR_Close()
  8603 ms  0x176d fd:0x7ffb6e4ea3d0
           /* TID 0x16ff */
  8774 ms  0x16ff PR_Close()
  8774 ms  0x16ff fd:0x7ffb6e24c040
  8774 ms  0x16ff PR_Close()
  8774 ms  0x16ff fd:0x7ffb6e24c040
  8780 ms  0x16ff PR_Close()
  8780 ms  0x16ff fd:0x7ffba79da130
  8781 ms  0x16ff PR_Close()
  8781 ms  0x16ff fd:0x7ffba79da190
Process terminated
