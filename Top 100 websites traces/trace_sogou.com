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
           /* TID 0x2b1d */
   129 ms  0x2b1d PR_Close()
   129 ms  0x2b1d fd:0x7f73af2a2910
           /* TID 0x2b15 */
   396 ms  0x2b15 SSL_ImportFD()
   396 ms  0x2b15 ret:0x7f73af2ada00
   396 ms  0x2b15 SSL_AuthCertificateHook()
   396 ms  0x2b15 fd:0x7f73af2ada00
   397 ms  0x2b15 ret:0x0
   397 ms  0x2b15 PR_Connect()
   397 ms  0x2b15 fd:0x7f73af2ada00
   606 ms  0x2b15 SECKEY_CreateECPrivateKey()
   606 ms  0x2b15 cx:0x7f73af2a6b28
   608 ms     | 0x2b15 EC_ValidatePublicKey()
   608 ms     | 0x2b15 ret:0x0
   608 ms  0x2b15 ret:0x7f73af151020::7f73af151020  90 8c 1b af                                      ....
   608 ms  0x2b15 SECKEY_CreateECPrivateKey()
   608 ms  0x2b15 cx:0x7f73af2a6b28
   610 ms     | 0x2b15 EC_ValidatePublicKey()
   615 ms     | 0x2b15 ret:0x0
   615 ms  0x2b15 ret:0x7f73af153020::7f73af153020  50 8b 1b af                                      P...
           /* TID 0x2b2f */
   665 ms  0x2b2f PR_Close()
   665 ms  0x2b2f fd:0x7f73af2addf0
   670 ms  0x2b2f PR_Close()
   670 ms  0x2b2f fd:0x7f73af2addf0
   784 ms  0x2b2f PR_Close()
   784 ms  0x2b2f fd:0x7f73af2addf0
           /* TID 0x2b15 */
   832 ms  SECKEY_ECParamsToKeySize()
   832 ms  0x2b15 ret:0x100
   832 ms  0x2b15 SECKEY_CreateECPrivateKey()
   832 ms  0x2b15 cx:0x7f73af2a6b28
   836 ms     | 0x2b15 EC_ValidatePublicKey()
   840 ms     | 0x2b15 ret:0x0
   840 ms  0x2b15 ret:0x7f73af15c020::7f73af15c020  d0 c8 1f af                                      ....
   840 ms  0x2b15 PK11_PubDeriveWithKDF()
   840 ms  0x2b15 seckey:0x7f73af15c020
   841 ms     | 0x2b15 EC_ValidatePublicKey()
   846 ms     | 0x2b15 ret:0x0
   850 ms  0x2b15 ret:0x7f73b0904300
   850 ms  0x2b15 PK11_DeriveWithFlags()
   850 ms  0x2b15 basekey:0x7f73b0904300
   850 ms     | 0x2b15 PK11_DeriveWithTemplate()
   850 ms  0x2b15 ret:0x7f73af1e9c00
   850 ms  0x2b15 PK11_Derive()
   850 ms  0x2b15 basekey:0x7f73af1e9c00
   850 ms     | 0x2b15 PK11_DeriveWithTemplate()
   850 ms  0x2b15 ret:0x7f73af1e9d00
   850 ms  0x2b15 SECKEY_DestroyPrivateKey()
   850 ms  0x2b15 privk:0x7f73af15c020::7f73af15c020  d0 c8 1f af                                      ....
   850 ms  0x2b15 privk:0x7f73af15c020::7f73af15c020  e5 e5 e5 e5                                      ....
   850 ms  0x2b15 PK11_Encrypt()
   850 ms  0x2b15 symkey:0x7f73af1e9e80
   851 ms  0x2b15 PR_Connect()
   851 ms  0x2b15 fd:0x7f739e21d070
           /* TID 0x2b73 */
   905 ms  0x2b73 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   905 ms  0x2b73 ret:0x0
           /* TID 0x2b1d */
   906 ms  0x2b1d PR_Close()
   906 ms  0x2b1d fd:0x7f739e21d0a0
           /* TID 0x2b15 */
   906 ms  0x2b15 SSL_AuthCertificateComplete()
   906 ms  0x2b15 fd:0x7f73af2ada00
   906 ms  0x2b15 err:0x0
   906 ms  0x2b15 PK11_Encrypt()
   906 ms  0x2b15 symkey:0x7f73af1e9e80
  1060 ms  0x2b15 SECKEY_DestroyPrivateKey()
  1060 ms  0x2b15 privk:0x7f73af153020::7f73af153020  50 8b 1b af                                      P...
  1061 ms  0x2b15 privk:0x7f73af153020::7f73af153020  e5 e5 e5 e5                                      ....
  1061 ms  0x2b15 SECKEY_DestroyPrivateKey()
  1061 ms  0x2b15 privk:0x7f73af151020::7f73af151020  90 8c 1b af                                      ....
  1061 ms  0x2b15 privk:0x7f73af151020::7f73af151020  e5 e5 e5 e5                                      ....
  1276 ms  0x2b15 SSL_ImportFD()
  1276 ms  0x2b15 ret:0x7f739e21d2e0
  1276 ms  0x2b15 SSL_AuthCertificateHook()
  1276 ms  0x2b15 fd:0x7f739e21d2e0
  1276 ms  0x2b15 ret:0x0
  1276 ms  0x2b15 PR_Connect()
  1276 ms  0x2b15 fd:0x7f739e21d2e0
  1303 ms  0x2b15 SECKEY_CreateECPrivateKey()
  1303 ms  0x2b15 cx:0x7f73af1f8a68
  1305 ms     | 0x2b15 EC_ValidatePublicKey()
  1305 ms     | 0x2b15 ret:0x0
  1305 ms  0x2b15 ret:0x7f73af152020::7f73af152020  20 c4 1f af                                       ...
  1305 ms  0x2b15 SECKEY_CreateECPrivateKey()
  1305 ms  0x2b15 cx:0x7f73af1f8a68
  1307 ms     | 0x2b15 EC_ValidatePublicKey()
  1309 ms     | 0x2b15 ret:0x0
  1309 ms  0x2b15 ret:0x7f73af158020::7f73af158020  40 c7 1f af                                      @...
           /* TID 0x2b73 */
  1362 ms  0x2b73 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1362 ms  0x2b73 ret:0x0
           /* TID 0x2b15 */
  1362 ms  SECKEY_ECParamsToKeySize()
  1362 ms  0x2b15 ret:0x100
  1362 ms  0x2b15 SECKEY_CreateECPrivateKey()
  1362 ms  0x2b15 cx:0x7f73af1f8a68
  1363 ms     | 0x2b15 EC_ValidatePublicKey()
  1365 ms     | 0x2b15 ret:0x0
  1365 ms  0x2b15 ret:0x7f73af15b820::7f73af15b820  c0 c9 1f af                                      ....
  1365 ms  0x2b15 PK11_PubDeriveWithKDF()
  1365 ms  0x2b15 seckey:0x7f73af15b820
  1365 ms     | 0x2b15 EC_ValidatePublicKey()
  1366 ms     | 0x2b15 ret:0x0
  1368 ms  0x2b15 ret:0x7f73b0904300
  1368 ms  0x2b15 PK11_DeriveWithFlags()
  1368 ms  0x2b15 basekey:0x7f73b0904300
  1368 ms     | 0x2b15 PK11_DeriveWithTemplate()
  1368 ms  0x2b15 ret:0x7f73af17dd00
  1368 ms  0x2b15 PK11_Derive()
  1368 ms  0x2b15 basekey:0x7f73af17dd00
  1368 ms     | 0x2b15 PK11_DeriveWithTemplate()
  1368 ms  0x2b15 ret:0x7f73af1ea700
  1368 ms  0x2b15 SECKEY_DestroyPrivateKey()
  1368 ms  0x2b15 privk:0x7f73af15b820::7f73af15b820  c0 c9 1f af                                      ....
  1368 ms  0x2b15 privk:0x7f73af15b820::7f73af15b820  e5 e5 e5 e5                                      ....
  1369 ms  0x2b15 PK11_Encrypt()
  1369 ms  0x2b15 symkey:0x7f73af1eac00
  1369 ms  0x2b15 SSL_AuthCertificateComplete()
  1369 ms  0x2b15 fd:0x7f739e21d2e0
  1369 ms  0x2b15 err:0x0
  1369 ms  0x2b15 PK11_Encrypt()
  1369 ms  0x2b15 symkey:0x7f73af1eac00
  1420 ms  0x2b15 SECKEY_DestroyPrivateKey()
  1420 ms  0x2b15 privk:0x7f73af158020::7f73af158020  40 c7 1f af                                      @...
  1421 ms  0x2b15 privk:0x7f73af158020::7f73af158020  e5 e5 e5 e5                                      ....
  1421 ms  0x2b15 SECKEY_DestroyPrivateKey()
  1421 ms  0x2b15 privk:0x7f73af152020::7f73af152020  20 c4 1f af                                       ...
  1421 ms  0x2b15 privk:0x7f73af152020::7f73af152020  e5 e5 e5 e5                                      ....
  1424 ms  0x2b15 PK11_Encrypt()
  1424 ms  0x2b15 symkey:0x7f73af1eac00
  1454 ms  0x2b15 PK11_Encrypt()
  1454 ms  0x2b15 symkey:0x7f73af1eac00
  1484 ms  0x2b15 PK11_Encrypt()
  1484 ms  0x2b15 symkey:0x7f73af1eac00
  1513 ms  0x2b15 PK11_Encrypt()
  1513 ms  0x2b15 symkey:0x7f73af1eac00
  1630 ms  0x2b15 PK11_Encrypt()
  1630 ms  0x2b15 symkey:0x7f73af1eac00
  1662 ms  0x2b15 PK11_Encrypt()
  1662 ms  0x2b15 symkey:0x7f73af1eac00
  1694 ms  0x2b15 PK11_Encrypt()
  1694 ms  0x2b15 symkey:0x7f73af1eac00
           /* TID 0x2b6d */
  1724 ms  0x2b6d PR_Close()
  1724 ms  0x2b6d fd:0x7f739e21d3d0
  1724 ms  0x2b6d PR_Close()
  1724 ms  0x2b6d fd:0x7f739e21d490
  1724 ms  0x2b6d PR_Close()
  1724 ms  0x2b6d fd:0x7f739e21d3d0
  1724 ms  0x2b6d PR_Close()
  1724 ms  0x2b6d fd:0x7f739e21d490
  1725 ms  0x2b6d PR_Close()
  1725 ms  0x2b6d fd:0x7f739e21d3d0
  1725 ms  0x2b6d PR_Close()
  1725 ms  0x2b6d fd:0x7f739e21d490
  1725 ms  0x2b6d PR_Close()
  1725 ms  0x2b6d fd:0x7f739e21d3d0
  1725 ms  0x2b6d PR_Close()
  1725 ms  0x2b6d fd:0x7f739e21d490
  1725 ms  0x2b6d PR_Close()
  1725 ms  0x2b6d fd:0x7f739e21d3d0
  1725 ms  0x2b6d PR_Close()
  1725 ms  0x2b6d fd:0x7f739e21d490
  1725 ms  0x2b6d PR_Close()
  1725 ms  0x2b6d fd:0x7f739e21d3d0
  1725 ms  0x2b6d PR_Close()
  1725 ms  0x2b6d fd:0x7f739e21d490
  1725 ms  0x2b6d PR_Close()
  1725 ms  0x2b6d fd:0x7f739e21d3d0
  1725 ms  0x2b6d PR_Close()
  1725 ms  0x2b6d fd:0x7f739e21d490
  1726 ms  0x2b6d PR_Close()
  1726 ms  0x2b6d fd:0x7f739e21d3d0
  1726 ms  0x2b6d PR_Close()
  1726 ms  0x2b6d fd:0x7f739e21d490
  1726 ms  0x2b6d PR_Close()
  1726 ms  0x2b6d fd:0x7f739e21d3d0
  1726 ms  0x2b6d PR_Close()
  1726 ms  0x2b6d fd:0x7f739e21d490
  1726 ms  0x2b6d PR_Close()
  1726 ms  0x2b6d fd:0x7f739e21d3d0
  1726 ms  0x2b6d PR_Close()
  1726 ms  0x2b6d fd:0x7f739e21d490
  1726 ms  0x2b6d PR_Close()
  1726 ms  0x2b6d fd:0x7f739e21d3d0
  1726 ms  0x2b6d PR_Close()
  1726 ms  0x2b6d fd:0x7f739e21d490
  1726 ms  0x2b6d PR_Close()
  1726 ms  0x2b6d fd:0x7f739e21d3d0
  1726 ms  0x2b6d PR_Close()
  1726 ms  0x2b6d fd:0x7f739e21d490
  1726 ms  0x2b6d PR_Close()
  1726 ms  0x2b6d fd:0x7f739e21d3d0
  1727 ms  0x2b6d PR_Close()
  1727 ms  0x2b6d fd:0x7f739e21d490
  1727 ms  0x2b6d PR_Close()
  1727 ms  0x2b6d fd:0x7f739e21d3d0
  1727 ms  0x2b6d PR_Close()
  1727 ms  0x2b6d fd:0x7f739e21d490
  1731 ms  0x2b6d PR_Close()
  1731 ms  0x2b6d fd:0x7f739e21d3d0
  1732 ms  0x2b6d PR_Close()
  1732 ms  0x2b6d fd:0x7f739e21d3a0
  1736 ms  0x2b6d PR_Close()
  1736 ms  0x2b6d fd:0x7f739e21d3a0
  1736 ms  0x2b6d PR_Close()
  1736 ms  0x2b6d fd:0x7f739e21d3d0
  1739 ms  0x2b6d PR_Close()
  1739 ms  0x2b6d fd:0x7f739e21d3d0
  1740 ms  0x2b6d PR_Close()
  1740 ms  0x2b6d fd:0x7f739e21d3d0
  1742 ms  0x2b6d PR_Close()
  1742 ms  0x2b6d fd:0x7f739e21d3d0
  1743 ms  0x2b6d PR_Close()
  1743 ms  0x2b6d fd:0x7f739e21d3d0
  1790 ms  0x2b6d PR_Close()
  1790 ms  0x2b6d fd:0x7f739e21d3d0
  1791 ms  0x2b6d PR_Close()
  1791 ms  0x2b6d fd:0x7f739e21d3d0
  1798 ms  0x2b6d PR_Close()
  1798 ms  0x2b6d fd:0x7f739e21d3d0
  1798 ms  0x2b6d PR_Close()
  1798 ms  0x2b6d fd:0x7f739e21d3d0
  1805 ms  0x2b6d PR_Close()
  1805 ms  0x2b6d fd:0x7f739e21d3d0
  1805 ms  0x2b6d PR_Close()
  1805 ms  0x2b6d fd:0x7f739e21d3d0
  1814 ms  0x2b6d PR_Close()
  1814 ms  0x2b6d fd:0x7f739e21d3d0
  1814 ms  0x2b6d PR_Close()
  1814 ms  0x2b6d fd:0x7f739e21d3d0
           /* TID 0x2b6a */
  1814 ms  0x2b6a PR_Close()
  1814 ms  0x2b6a fd:0x7f739e21d3d0
  1814 ms  0x2b6a PR_Close()
  1814 ms  0x2b6a fd:0x7f739e21d3d0
  1814 ms  0x2b6a PR_Close()
  1814 ms  0x2b6a fd:0x7f739e21d3d0
  1814 ms  0x2b6a PR_Close()
  1814 ms  0x2b6a fd:0x7f739e21d3d0
  1814 ms  0x2b6a PR_Close()
  1814 ms  0x2b6a fd:0x7f739e21d3d0
  1814 ms  0x2b6a PR_Close()
  1814 ms  0x2b6a fd:0x7f739e21d3d0
  1814 ms  0x2b6a PR_Close()
  1814 ms  0x2b6a fd:0x7f739e21d3d0
  1814 ms  0x2b6a PR_Close()
  1814 ms  0x2b6a fd:0x7f739e21d3d0
  1814 ms  0x2b6a PR_Close()
  1814 ms  0x2b6a fd:0x7f739e21d3d0
  1814 ms  0x2b6a PR_Close()
  1814 ms  0x2b6a fd:0x7f739e21d3d0
  1814 ms  0x2b6a PR_Close()
  1814 ms  0x2b6a fd:0x7f739e21d3d0
  1815 ms  0x2b6a PR_Close()
  1815 ms  0x2b6a fd:0x7f739e21d3d0
  1815 ms  0x2b6a PR_Close()
  1815 ms  0x2b6a fd:0x7f739e21d3d0
  1815 ms  0x2b6a PR_Close()
  1815 ms  0x2b6a fd:0x7f739e21d3d0
  1815 ms  0x2b6a PR_Close()
  1815 ms  0x2b6a fd:0x7f739e21d3d0
           /* TID 0x2b2f */
  2317 ms  0x2b2f PR_Close()
  2317 ms  0x2b2f fd:0x7f739e21d790
  2320 ms  0x2b2f PR_Close()
  2320 ms  0x2b2f fd:0x7f739e21d790
  2802 ms  0x2b2f PR_Close()
  2802 ms  0x2b2f fd:0x7f739e21d790
           /* TID 0x2b1d */
  4204 ms  0x2b1d PR_Close()
  4204 ms  0x2b1d fd:0x7f739e21d790
  4204 ms  0x2b1d PR_Close()
  4204 ms  0x2b1d fd:0x7f739e21d8e0
           /* TID 0x2b15 */
  4829 ms  0x2b15 SSL_ImportFD()
  4829 ms  0x2b15 ret:0x7f73b239b7f0
  4829 ms  0x2b15 SSL_AuthCertificateHook()
  4829 ms  0x2b15 fd:0x7f73b239b7f0
  4829 ms  0x2b15 ret:0x0
  4829 ms  0x2b15 PR_Connect()
  4829 ms  0x2b15 fd:0x7f73b239b7f0
  5080 ms  0x2b15 SSL_ImportFD()
  5080 ms  0x2b15 ret:0x7f73b239ba00
  5080 ms  0x2b15 SSL_AuthCertificateHook()
  5080 ms  0x2b15 fd:0x7f73b239ba00
  5080 ms  0x2b15 ret:0x0
  5080 ms  0x2b15 PR_Connect()
  5080 ms  0x2b15 fd:0x7f73b239ba00
  5201 ms  0x2b15 SECKEY_CreateECPrivateKey()
  5201 ms  0x2b15 cx:0x7f73af1f8da8
  5203 ms     | 0x2b15 EC_ValidatePublicKey()
  5203 ms     | 0x2b15 ret:0x0
  5203 ms  0x2b15 ret:0x7f739e002820::7f739e002820  10 2a 1e 9e                                      .*..
  5203 ms  0x2b15 SECKEY_CreateECPrivateKey()
  5203 ms  0x2b15 cx:0x7f73af1f8da8
  5208 ms     | 0x2b15 EC_ValidatePublicKey()
  5213 ms     | 0x2b15 ret:0x0
  5213 ms  0x2b15 ret:0x7f739e004820::7f739e004820  f0 2b 1e 9e                                      .+..
  5450 ms  0x2b15 SECKEY_CreateECPrivateKey()
  5450 ms  0x2b15 cx:0x7f73af1f8f48
  5453 ms     | 0x2b15 EC_ValidatePublicKey()
  5453 ms     | 0x2b15 ret:0x0
  5453 ms  0x2b15 ret:0x7f739e007020::7f739e007020  70 29 1e 9e                                      p)..
  5453 ms  0x2b15 SECKEY_CreateECPrivateKey()
  5453 ms  0x2b15 cx:0x7f73af1f8f48
  5455 ms     | 0x2b15 EC_ValidatePublicKey()
  5462 ms     | 0x2b15 ret:0x0
  5462 ms  0x2b15 ret:0x7f739e009020::7f739e009020  c0 2e 1e 9e                                      ....
  5593 ms  SECKEY_ECParamsToKeySize()
  5593 ms  0x2b15 ret:0xff
  5593 ms  0x2b15 SECKEY_CreateECPrivateKey()
  5593 ms  0x2b15 cx:0x7f73af1f8da8
  5595 ms     | 0x2b15 EC_ValidatePublicKey()
  5595 ms     | 0x2b15 ret:0x0
  5596 ms  0x2b15 ret:0x7f739e016020::7f739e016020  50 16 1b 9e                                      P...
  5597 ms  0x2b15 PK11_PubDeriveWithKDF()
  5597 ms  0x2b15 seckey:0x7f739e016020
  5598 ms     | 0x2b15 EC_ValidatePublicKey()
  5598 ms     | 0x2b15 ret:0x0
  5599 ms  0x2b15 ret:0x7f73b0904300
  5599 ms  0x2b15 PK11_DeriveWithFlags()
  5599 ms  0x2b15 basekey:0x7f73b0904300
  5599 ms     | 0x2b15 PK11_DeriveWithTemplate()
  5599 ms  0x2b15 ret:0x7f73b8d8b400
  5599 ms  0x2b15 PK11_Derive()
  5599 ms  0x2b15 basekey:0x7f73b8d8b400
  5599 ms     | 0x2b15 PK11_DeriveWithTemplate()
  5600 ms  0x2b15 ret:0x7f73b8d8b480
  5600 ms  0x2b15 SECKEY_DestroyPrivateKey()
  5600 ms  0x2b15 privk:0x7f739e016020::7f739e016020  50 16 1b 9e                                      P...
  5600 ms  0x2b15 privk:0x7f739e016020::7f739e016020  e5 e5 e5 e5                                      ....
  5600 ms  0x2b15 PK11_Encrypt()
  5600 ms  0x2b15 symkey:0x7f73b8d8b600
  5627 ms  0x2b15 PR_Connect()
  5627 ms  0x2b15 fd:0x7f73b239bf70
           /* TID 0x2b1d */
  5685 ms  0x2b1d PR_Close()
  5685 ms  0x2b1d fd:0x7f73b239be80
           /* TID 0x2b73 */
  5686 ms  0x2b73 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5687 ms  0x2b73 ret:0x0
  5687 ms  0x2b73 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5687 ms  0x2b73 ret:0x0
           /* TID 0x2b15 */
  5717 ms  0x2b15 SSL_AuthCertificateComplete()
  5717 ms  0x2b15 fd:0x7f73b239b7f0
  5717 ms  0x2b15 err:0x0
  5717 ms  0x2b15 PK11_Encrypt()
  5717 ms  0x2b15 symkey:0x7f73b8d8b600
  5832 ms  SECKEY_ECParamsToKeySize()
  5833 ms  0x2b15 ret:0xff
  5833 ms  0x2b15 SECKEY_CreateECPrivateKey()
  5833 ms  0x2b15 cx:0x7f73af1f8f48
  5834 ms     | 0x2b15 EC_ValidatePublicKey()
  5834 ms     | 0x2b15 ret:0x0
  5834 ms  0x2b15 ret:0x7f739e015820::7f739e015820  80 18 1b 9e                                      ....
  5835 ms  0x2b15 PK11_PubDeriveWithKDF()
  5835 ms  0x2b15 seckey:0x7f739e015820
  5835 ms     | 0x2b15 EC_ValidatePublicKey()
  5835 ms     | 0x2b15 ret:0x0
  5836 ms  0x2b15 ret:0x7f73b0904300
  5837 ms  0x2b15 PK11_DeriveWithFlags()
  5837 ms  0x2b15 basekey:0x7f73b0904300
  5837 ms     | 0x2b15 PK11_DeriveWithTemplate()
  5837 ms  0x2b15 ret:0x7f73b8d8b180
  5837 ms  0x2b15 PK11_Derive()
  5837 ms  0x2b15 basekey:0x7f73b8d8b180
  5837 ms     | 0x2b15 PK11_DeriveWithTemplate()
  5837 ms  0x2b15 ret:0x7f73b8d8b200
  5837 ms  0x2b15 SECKEY_DestroyPrivateKey()
  5837 ms  0x2b15 privk:0x7f739e015820::7f739e015820  80 18 1b 9e                                      ....
  5837 ms  0x2b15 privk:0x7f739e015820::7f739e015820  e5 e5 e5 e5                                      ....
  5838 ms  0x2b15 PK11_Encrypt()
  5838 ms  0x2b15 symkey:0x7f73b8d8b780
  5840 ms  0x2b15 SSL_AuthCertificateComplete()
  5840 ms  0x2b15 fd:0x7f73b239ba00
  5840 ms  0x2b15 err:0x0
  5972 ms  0x2b15 SECKEY_DestroyPrivateKey()
  5972 ms  0x2b15 privk:0x7f739e004820::7f739e004820  f0 2b 1e 9e                                      .+..
  5973 ms  0x2b15 privk:0x7f739e004820::7f739e004820  e5 e5 e5 e5                                      ....
  5973 ms  0x2b15 SECKEY_DestroyPrivateKey()
  5973 ms  0x2b15 privk:0x7f739e002820::7f739e002820  10 2a 1e 9e                                      .*..
  5973 ms  0x2b15 privk:0x7f739e002820::7f739e002820  e5 e5 e5 e5                                      ....
  6206 ms  0x2b15 SECKEY_DestroyPrivateKey()
  6206 ms  0x2b15 privk:0x7f739e009020::7f739e009020  c0 2e 1e 9e                                      ....
  6206 ms  0x2b15 privk:0x7f739e009020::7f739e009020  e5 e5 e5 e5                                      ....
  6206 ms  0x2b15 SECKEY_DestroyPrivateKey()
  6206 ms  0x2b15 privk:0x7f739e007020::7f739e007020  70 29 1e 9e                                      p)..
  6207 ms  0x2b15 privk:0x7f739e007020::7f739e007020  e5 e5 e5 e5                                      ....
           /* TID 0x2b1d */
  6500 ms  0x2b1d PR_Close()
  6500 ms  0x2b1d fd:0x7f73af17b190
           /* TID 0x2b2c */
  6512 ms  0x2b2c PR_Close()
  6512 ms  0x2b2c fd:0x7f73af17b100
           /* TID 0x2b15 */
  6592 ms  0x2b15 PK11_Encrypt()
  6592 ms  0x2b15 symkey:0x7f73b8d8b600
  6592 ms  0x2b15 PK11_Encrypt()
  6592 ms  0x2b15 symkey:0x7f73b8d8b780
  6593 ms  0x2b15 SSL_ImportFD()
  6593 ms  0x2b15 ret:0x7f73b5902100
  6593 ms  0x2b15 SSL_AuthCertificateHook()
  6593 ms  0x2b15 fd:0x7f73b5902100
  6593 ms  0x2b15 ret:0x0
  6593 ms  0x2b15 PR_Connect()
  6593 ms  0x2b15 fd:0x7f73b5902100
  6593 ms  0x2b15 SSL_ImportFD()
  6593 ms  0x2b15 ret:0x7f73b5902640
  6593 ms  0x2b15 SSL_AuthCertificateHook()
  6593 ms  0x2b15 fd:0x7f73b5902640
  6593 ms  0x2b15 ret:0x0
  6593 ms  0x2b15 PR_Connect()
  6593 ms  0x2b15 fd:0x7f73b5902640
  6593 ms  0x2b15 SSL_ImportFD()
  6593 ms  0x2b15 ret:0x7f73b5902dc0
  6593 ms  0x2b15 SSL_AuthCertificateHook()
  6593 ms  0x2b15 fd:0x7f73b5902dc0
  6594 ms  0x2b15 ret:0x0
  6594 ms  0x2b15 PR_Connect()
  6594 ms  0x2b15 fd:0x7f73b5902dc0
  6594 ms  0x2b15 SSL_ImportFD()
  6595 ms  0x2b15 ret:0x7f73b5932a90
  6595 ms  0x2b15 SSL_AuthCertificateHook()
  6595 ms  0x2b15 fd:0x7f73b5932a90
  6595 ms  0x2b15 ret:0x0
  6595 ms  0x2b15 PR_Connect()
  6595 ms  0x2b15 fd:0x7f73b5932a90
  6844 ms  0x2b15 SSL_ImportFD()
  6844 ms  0x2b15 ret:0x7f73af17b370
  6844 ms  0x2b15 SSL_AuthCertificateHook()
  6844 ms  0x2b15 fd:0x7f73af17b370
  6844 ms  0x2b15 ret:0x0
  6845 ms  0x2b15 PR_Connect()
  6845 ms  0x2b15 fd:0x7f73af17b370
  6847 ms  0x2b15 SSL_ImportFD()
  6847 ms  0x2b15 ret:0x7f739e21d6a0
  6847 ms  0x2b15 SSL_AuthCertificateHook()
  6847 ms  0x2b15 fd:0x7f739e21d6a0
  6847 ms  0x2b15 ret:0x0
  6847 ms  0x2b15 PR_Connect()
  6847 ms  0x2b15 fd:0x7f739e21d6a0
  6849 ms  0x2b15 SSL_ImportFD()
  6849 ms  0x2b15 ret:0x7f73af17b910
  6849 ms  0x2b15 SSL_AuthCertificateHook()
  6849 ms  0x2b15 fd:0x7f73af17b910
  6849 ms  0x2b15 ret:0x0
  6849 ms  0x2b15 PR_Connect()
  6849 ms  0x2b15 fd:0x7f73af17b910
  6850 ms  0x2b15 SSL_ImportFD()
  6850 ms  0x2b15 ret:0x7f73af17b3a0
  6850 ms  0x2b15 SSL_AuthCertificateHook()
  6850 ms  0x2b15 fd:0x7f73af17b3a0
  6850 ms  0x2b15 ret:0x0
  6850 ms  0x2b15 PR_Connect()
  6850 ms  0x2b15 fd:0x7f73af17b3a0
  6953 ms  0x2b15 SECKEY_CreateECPrivateKey()
  6953 ms  0x2b15 cx:0x7f73af1f9c48
  6954 ms     | 0x2b15 EC_ValidatePublicKey()
  6954 ms     | 0x2b15 ret:0x0
  6954 ms  0x2b15 ret:0x7f739e021820::7f739e021820  00 26 1e 9e                                      .&..
  6955 ms  0x2b15 SECKEY_CreateECPrivateKey()
  6955 ms  0x2b15 cx:0x7f73af1f9c48
  6956 ms     | 0x2b15 EC_ValidatePublicKey()
  6961 ms     | 0x2b15 ret:0x0
  6961 ms  0x2b15 ret:0x7f73af14a020::7f73af14a020  a0 2b 17 af                                      .+..
  6963 ms  0x2b15 SECKEY_CreateECPrivateKey()
  6963 ms  0x2b15 cx:0x7f73af1f9908
  6964 ms     | 0x2b15 EC_ValidatePublicKey()
  6964 ms     | 0x2b15 ret:0x0
  6964 ms  0x2b15 ret:0x7f73af151020::7f73af151020  e0 82 1b af                                      ....
  6964 ms  0x2b15 SECKEY_CreateECPrivateKey()
  6964 ms  0x2b15 cx:0x7f73af1f9908
  6966 ms     | 0x2b15 EC_ValidatePublicKey()
  6970 ms     | 0x2b15 ret:0x0
  6970 ms  0x2b15 ret:0x7f73af153020::7f73af153020  c0 84 1b af                                      ....
  6972 ms  0x2b15 SECKEY_CreateECPrivateKey()
  6972 ms  0x2b15 cx:0x7f73af1f9aa8
  6974 ms     | 0x2b15 EC_ValidatePublicKey()
  6974 ms     | 0x2b15 ret:0x0
  6974 ms  0x2b15 ret:0x7f73af21c020::7f73af21c020  00 01 2a af                                      ..*.
  6974 ms  0x2b15 SECKEY_CreateECPrivateKey()
  6974 ms  0x2b15 cx:0x7f73af1f9aa8
  6976 ms     | 0x2b15 EC_ValidatePublicKey()
  6979 ms     | 0x2b15 ret:0x0
  6979 ms  0x2b15 ret:0x7f73af220820::7f73af220820  c0 99 41 af                                      ..A.
  6980 ms  0x2b15 SECKEY_CreateECPrivateKey()
  6980 ms  0x2b15 cx:0x7f73af1f9de8
  6982 ms     | 0x2b15 EC_ValidatePublicKey()
  6982 ms     | 0x2b15 ret:0x0
  6982 ms  0x2b15 ret:0x7f73b06e5820::7f73b06e5820  e0 02 f1 af                                      ....
  6982 ms  0x2b15 SECKEY_CreateECPrivateKey()
  6982 ms  0x2b15 cx:0x7f73af1f9de8
  6983 ms     | 0x2b15 EC_ValidatePublicKey()
  6986 ms     | 0x2b15 ret:0x0
  6986 ms  0x2b15 ret:0x7f73b11e6820::7f73b11e6820  70 0e f1 af                                      p...
  7131 ms  0x2b15 PK11_Encrypt()
  7131 ms  0x2b15 symkey:0x7f73b8d8b600
           /* TID 0x2b1d */
  7137 ms  0x2b1d PR_Close()
  7137 ms  0x2b1d fd:0x7f739e21d970
           /* TID 0x2b15 */
  7219 ms  0x2b15 SECKEY_CreateECPrivateKey()
  7219 ms  0x2b15 cx:0x7f73af1fa128
  7220 ms     | 0x2b15 EC_ValidatePublicKey()
  7220 ms     | 0x2b15 ret:0x0
  7220 ms  0x2b15 ret:0x7f73af21a820::7f73af21a820  50 26 17 af                                      P&..
  7220 ms  0x2b15 SECKEY_CreateECPrivateKey()
  7220 ms  0x2b15 cx:0x7f73af1fa128
  7220 ms     | 0x2b15 EC_ValidatePublicKey()
  7222 ms     | 0x2b15 ret:0x0
  7222 ms  0x2b15 ret:0x7f73b11fa820::7f73b11fa820  80 28 17 af                                      .(..
  7222 ms  0x2b15 SECKEY_CreateECPrivateKey()
  7222 ms  0x2b15 cx:0x7f73af1fa468
  7223 ms     | 0x2b15 EC_ValidatePublicKey()
  7223 ms     | 0x2b15 ret:0x0
  7223 ms  0x2b15 ret:0x7f73b495d020::7f73b495d020  a0 06 2a af                                      ..*.
  7224 ms  0x2b15 SECKEY_CreateECPrivateKey()
  7224 ms  0x2b15 cx:0x7f73af1fa468
  7224 ms     | 0x2b15 EC_ValidatePublicKey()
  7226 ms     | 0x2b15 ret:0x0
  7226 ms  0x2b15 ret:0x7f73b552b020::7f73b552b020  a0 0b 2a af                                      ..*.
  7226 ms  0x2b15 SECKEY_CreateECPrivateKey()
  7226 ms  0x2b15 cx:0x7f73af1f9f88
  7227 ms     | 0x2b15 EC_ValidatePublicKey()
  7227 ms     | 0x2b15 ret:0x0
  7227 ms  0x2b15 ret:0x7f73b5533820::7f73b5533820  40 1c 1b 9e                                      @...
  7227 ms  0x2b15 SECKEY_CreateECPrivateKey()
  7227 ms  0x2b15 cx:0x7f73af1f9f88
  7227 ms     | 0x2b15 EC_ValidatePublicKey()
  7229 ms     | 0x2b15 ret:0x0
  7229 ms  0x2b15 ret:0x7f73b557e020::7f73b557e020  b0 0f 2a af                                      ..*.
  7229 ms  0x2b15 SECKEY_CreateECPrivateKey()
  7229 ms  0x2b15 cx:0x7f73af1fa2c8
  7230 ms     | 0x2b15 EC_ValidatePublicKey()
  7230 ms     | 0x2b15 ret:0x0
  7230 ms  0x2b15 ret:0x7f73b5581020::7f73b5581020  e0 27 2c af                                      .',.
  7230 ms  0x2b15 SECKEY_CreateECPrivateKey()
  7230 ms  0x2b15 cx:0x7f73af1fa2c8
  7230 ms     | 0x2b15 EC_ValidatePublicKey()
  7232 ms     | 0x2b15 ret:0x0
  7232 ms  0x2b15 ret:0x7f73b5587020::7f73b5587020  c0 2e 2c af                                      ..,.
  7328 ms  SECKEY_ECParamsToKeySize()
  7328 ms  0x2b15 ret:0xff
  7328 ms  0x2b15 SECKEY_CreateECPrivateKey()
  7328 ms  0x2b15 cx:0x7f73af1f9c48
  7330 ms     | 0x2b15 EC_ValidatePublicKey()
  7330 ms     | 0x2b15 ret:0x0
  7330 ms  0x2b15 ret:0x7f73b558c020::7f73b558c020  00 3b 9e b0                                      .;..
  7330 ms  0x2b15 PK11_PubDeriveWithKDF()
  7330 ms  0x2b15 seckey:0x7f73b558c020
  7330 ms     | 0x2b15 EC_ValidatePublicKey()
  7330 ms     | 0x2b15 ret:0x0
  7332 ms  0x2b15 ret:0x7f73b0904300
  7332 ms  0x2b15 PK11_DeriveWithFlags()
  7332 ms  0x2b15 basekey:0x7f73b0904300
  7332 ms     | 0x2b15 PK11_DeriveWithTemplate()
  7332 ms  0x2b15 ret:0x7f73af16f480
  7332 ms  0x2b15 PK11_Derive()
  7332 ms  0x2b15 basekey:0x7f73af16f480
  7332 ms     | 0x2b15 PK11_DeriveWithTemplate()
  7332 ms  0x2b15 ret:0x7f73af16f580
  7332 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7332 ms  0x2b15 privk:0x7f73b558c020::7f73b558c020  00 3b 9e b0                                      .;..
  7333 ms  0x2b15 privk:0x7f73b558c020::7f73b558c020  e5 e5 e5 e5                                      ....
  7334 ms  0x2b15 PK11_Encrypt()
  7334 ms  0x2b15 symkey:0x7f73af16f700
  7335 ms  0x2b15 SSL_AuthCertificateComplete()
  7335 ms  0x2b15 fd:0x7f73b5902dc0
  7335 ms  0x2b15 err:0x0
  7337 ms  SECKEY_ECParamsToKeySize()
  7337 ms  0x2b15 ret:0xff
  7337 ms  0x2b15 SECKEY_CreateECPrivateKey()
  7337 ms  0x2b15 cx:0x7f73af1f9908
  7339 ms     | 0x2b15 EC_ValidatePublicKey()
  7339 ms     | 0x2b15 ret:0x0
  7339 ms  0x2b15 ret:0x7f73b5982820::7f73b5982820  90 3c 9e b0                                      .<..
  7339 ms  0x2b15 PK11_PubDeriveWithKDF()
  7339 ms  0x2b15 seckey:0x7f73b5982820
  7339 ms     | 0x2b15 EC_ValidatePublicKey()
  7339 ms     | 0x2b15 ret:0x0
  7340 ms  0x2b15 ret:0x7f73b0904300
  7340 ms  0x2b15 PK11_DeriveWithFlags()
  7340 ms  0x2b15 basekey:0x7f73b0904300
  7340 ms     | 0x2b15 PK11_DeriveWithTemplate()
  7340 ms  0x2b15 ret:0x7f739e22f380
  7340 ms  0x2b15 PK11_Derive()
  7340 ms  0x2b15 basekey:0x7f739e22f380
  7341 ms     | 0x2b15 PK11_DeriveWithTemplate()
  7341 ms  0x2b15 ret:0x7f73af16f500
  7341 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7341 ms  0x2b15 privk:0x7f73b5982820::7f73b5982820  90 3c 9e b0                                      .<..
  7342 ms  0x2b15 privk:0x7f73b5982820::7f73b5982820  e5 e5 e5 e5                                      ....
  7342 ms  0x2b15 PK11_Encrypt()
  7342 ms  0x2b15 symkey:0x7f73af16f980
  7343 ms  0x2b15 PK11_Encrypt()
  7343 ms  0x2b15 symkey:0x7f73af16f700
  7344 ms  0x2b15 SSL_ImportFD()
  7344 ms  0x2b15 ret:0x7f73af17bb80
  7345 ms  0x2b15 SSL_AuthCertificateHook()
  7345 ms  0x2b15 fd:0x7f73af17bb80
  7345 ms  0x2b15 ret:0x0
  7345 ms  0x2b15 PR_Connect()
  7345 ms  0x2b15 fd:0x7f73af17bb80
  7345 ms  0x2b15 SSL_AuthCertificateComplete()
  7345 ms  0x2b15 fd:0x7f73b5902100
  7345 ms  0x2b15 err:0x0
  7346 ms  0x2b15 PK11_Encrypt()
  7346 ms  0x2b15 symkey:0x7f73af16f980
  7348 ms  SECKEY_ECParamsToKeySize()
  7348 ms  0x2b15 ret:0xff
  7348 ms  0x2b15 SECKEY_CreateECPrivateKey()
  7348 ms  0x2b15 cx:0x7f73af1f9aa8
  7349 ms     | 0x2b15 EC_ValidatePublicKey()
  7349 ms     | 0x2b15 ret:0x0
  7349 ms  0x2b15 ret:0x7f73b5983020::7f73b5983020  40 d7 cb b0                                      @...
  7349 ms  0x2b15 PK11_PubDeriveWithKDF()
  7349 ms  0x2b15 seckey:0x7f73b5983020
  7349 ms     | 0x2b15 EC_ValidatePublicKey()
  7349 ms     | 0x2b15 ret:0x0
  7350 ms  0x2b15 ret:0x7f73b0904300
  7351 ms  0x2b15 PK11_DeriveWithFlags()
  7351 ms  0x2b15 basekey:0x7f73b0904300
  7351 ms     | 0x2b15 PK11_DeriveWithTemplate()
  7351 ms  0x2b15 ret:0x7f73af170500
  7351 ms  0x2b15 PK11_Derive()
  7351 ms  0x2b15 basekey:0x7f73af170500
  7351 ms     | 0x2b15 PK11_DeriveWithTemplate()
  7351 ms  0x2b15 ret:0x7f73af170580
  7351 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7351 ms  0x2b15 privk:0x7f73b5983020::7f73b5983020  40 d7 cb b0                                      @...
  7351 ms  0x2b15 privk:0x7f73b5983020::7f73b5983020  e5 e5 e5 e5                                      ....
  7351 ms  0x2b15 PK11_Encrypt()
  7351 ms  0x2b15 symkey:0x7f73af170700
  7351 ms  0x2b15 SSL_AuthCertificateComplete()
  7351 ms  0x2b15 fd:0x7f73b5902640
  7351 ms  0x2b15 err:0x0
  7352 ms  0x2b15 PK11_Encrypt()
  7352 ms  0x2b15 symkey:0x7f73af170700
  7368 ms  0x2b15 PK11_Derive()
  7368 ms  0x2b15 basekey:0x7f73af170800
  7368 ms     | 0x2b15 PK11_DeriveWithTemplate()
  7368 ms  0x2b15 ret:0x7f73b0904300
  7368 ms  0x2b15 PK11_Encrypt()
  7368 ms  0x2b15 symkey:0x7f73af170980
  7370 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7370 ms  0x2b15 privk:0x7f73b11e6820::7f73b11e6820  70 0e f1 af                                      p...
  7370 ms  0x2b15 privk:0x7f73b11e6820::7f73b11e6820  e5 e5 e5 e5                                      ....
  7370 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7370 ms  0x2b15 privk:0x7f73b06e5820::7f73b06e5820  e0 02 f1 af                                      ....
  7370 ms  0x2b15 privk:0x7f73b06e5820::7f73b06e5820  e5 e5 e5 e5                                      ....
  7371 ms  0x2b15 PK11_Encrypt()
  7371 ms  0x2b15 symkey:0x7f73af170980
  7402 ms  0x2b15 SECKEY_CreateECPrivateKey()
  7402 ms  0x2b15 cx:0x7f73af1fa948
  7403 ms     | 0x2b15 EC_ValidatePublicKey()
  7403 ms     | 0x2b15 ret:0x0
  7403 ms  0x2b15 ret:0x7f73b06e5820::7f73b06e5820  e0 02 f1 af                                      ....
  7404 ms  0x2b15 SECKEY_CreateECPrivateKey()
  7404 ms  0x2b15 cx:0x7f73af1fa948
  7405 ms     | 0x2b15 EC_ValidatePublicKey()
  7407 ms     | 0x2b15 ret:0x0
  7407 ms  0x2b15 ret:0x7f73b11e6820::7f73b11e6820  70 0e f1 af                                      p...
  7474 ms  SECKEY_ECParamsToKeySize()
  7474 ms  0x2b15 ret:0x100
  7474 ms  0x2b15 SECKEY_CreateECPrivateKey()
  7474 ms  0x2b15 cx:0x7f73af1fa948
  7476 ms     | 0x2b15 EC_ValidatePublicKey()
  7486 ms     | 0x2b15 ret:0x0
  7486 ms  0x2b15 ret:0x7f73b598c820::7f73b598c820  60 2f 2c af                                      `/,.
  7487 ms  0x2b15 PK11_PubDeriveWithKDF()
  7487 ms  0x2b15 seckey:0x7f73b598c820
  7487 ms     | 0x2b15 EC_ValidatePublicKey()
  7491 ms     | 0x2b15 ret:0x0
  7495 ms  0x2b15 ret:0x7f73af170e00
  7495 ms  0x2b15 PK11_DeriveWithFlags()
  7495 ms  0x2b15 basekey:0x7f73af170e00
  7495 ms     | 0x2b15 PK11_DeriveWithTemplate()
  7495 ms  0x2b15 ret:0x7f73af170e80
  7495 ms  0x2b15 PK11_Derive()
  7495 ms  0x2b15 basekey:0x7f73af170e80
  7495 ms     | 0x2b15 PK11_DeriveWithTemplate()
  7495 ms  0x2b15 ret:0x7f73af170f00
  7495 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7495 ms  0x2b15 privk:0x7f73b598c820::7f73b598c820  60 2f 2c af                                      `/,.
  7495 ms  0x2b15 privk:0x7f73b598c820::7f73b598c820  e5 e5 e5 e5                                      ....
  7496 ms  0x2b15 PK11_Encrypt()
  7496 ms  0x2b15 symkey:0x7f73af17c100
  7511 ms  0x2b15 SSL_ImportFD()
  7511 ms  0x2b15 ret:0x7f73af2ad190
  7511 ms  0x2b15 SSL_AuthCertificateHook()
  7511 ms  0x2b15 fd:0x7f73af2ad190
  7511 ms  0x2b15 ret:0x0
  7511 ms  0x2b15 PR_Connect()
  7511 ms  0x2b15 fd:0x7f73af2ad190
           /* TID 0x2b1d */
  7529 ms  0x2b1d PR_Close()
  7529 ms  0x2b1d fd:0x7f73af2a2ac0
           /* TID 0x2b73 */
  7529 ms  0x2b73 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7530 ms  0x2b73 ret:0x0
  7530 ms  0x2b73 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7530 ms  0x2b73 ret:0x0
           /* TID 0x2b15 */
  7530 ms  0x2b15 SSL_AuthCertificateComplete()
  7530 ms  0x2b15 fd:0x7f73af17bb80
  7530 ms  0x2b15 err:0x0
  7530 ms  0x2b15 PK11_Encrypt()
  7530 ms  0x2b15 symkey:0x7f73af17c100
  7553 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7553 ms  0x2b15 privk:0x7f73b11e6820::7f73b11e6820  70 0e f1 af                                      p...
  7553 ms  0x2b15 privk:0x7f73b11e6820::7f73b11e6820  e5 e5 e5 e5                                      ....
  7553 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7553 ms  0x2b15 privk:0x7f73b06e5820::7f73b06e5820  e0 02 f1 af                                      ....
  7553 ms  0x2b15 privk:0x7f73b06e5820::7f73b06e5820  e5 e5 e5 e5                                      ....
           /* TID 0x2b1d */
  7560 ms  0x2b1d PR_Close()
  7560 ms  0x2b1d fd:0x7f73af2ad100
           /* TID 0x2b15 */
  7595 ms  0x2b15 PK11_Derive()
  7595 ms  0x2b15 basekey:0x7f73af17c380
  7595 ms     | 0x2b15 PK11_DeriveWithTemplate()
  7595 ms  0x2b15 ret:0x7f73af170e00
  7595 ms  0x2b15 PK11_Encrypt()
  7595 ms  0x2b15 symkey:0x7f73af17cb80
  7598 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7598 ms  0x2b15 privk:0x7f73b11fa820::7f73b11fa820  80 28 17 af                                      .(..
  7598 ms  0x2b15 privk:0x7f73b11fa820::7f73b11fa820  e5 e5 e5 e5                                      ....
  7598 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7598 ms  0x2b15 privk:0x7f73af21a820::7f73af21a820  50 26 17 af                                      P&..
  7599 ms  0x2b15 privk:0x7f73af21a820::7f73af21a820  e5 e5 e5 e5                                      ....
  7601 ms  SECKEY_ECParamsToKeySize()
  7601 ms  0x2b15 ret:0xff
  7601 ms  0x2b15 SECKEY_CreateECPrivateKey()
  7601 ms  0x2b15 cx:0x7f73af1fa468
  7602 ms     | 0x2b15 EC_ValidatePublicKey()
  7602 ms     | 0x2b15 ret:0x0
  7602 ms  0x2b15 ret:0x7f73af220020::7f73af220020  90 27 17 af                                      .'..
  7602 ms  0x2b15 PK11_PubDeriveWithKDF()
  7602 ms  0x2b15 seckey:0x7f73af220020
  7602 ms     | 0x2b15 EC_ValidatePublicKey()
  7602 ms     | 0x2b15 ret:0x0
  7603 ms  0x2b15 ret:0x7f73af17cd80
  7603 ms  0x2b15 PK11_DeriveWithFlags()
  7603 ms  0x2b15 basekey:0x7f73af17cd80
  7603 ms     | 0x2b15 PK11_DeriveWithTemplate()
  7603 ms  0x2b15 ret:0x7f73af17cf80
  7603 ms  0x2b15 PK11_Derive()
  7603 ms  0x2b15 basekey:0x7f73af17cf80
  7604 ms     | 0x2b15 PK11_DeriveWithTemplate()
  7604 ms  0x2b15 ret:0x7f73af17d000
  7604 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7604 ms  0x2b15 privk:0x7f73af220020::7f73af220020  90 27 17 af                                      .'..
  7604 ms  0x2b15 privk:0x7f73af220020::7f73af220020  e5 e5 e5 e5                                      ....
  7604 ms  0x2b15 PK11_Encrypt()
  7604 ms  0x2b15 symkey:0x7f73af17d800
  7605 ms  0x2b15 SSL_AuthCertificateComplete()
  7605 ms  0x2b15 fd:0x7f73af17b3a0
  7605 ms  0x2b15 err:0x0
  7607 ms  SECKEY_ECParamsToKeySize()
  7607 ms  0x2b15 ret:0xff
  7607 ms  0x2b15 SECKEY_CreateECPrivateKey()
  7607 ms  0x2b15 cx:0x7f73af1fa2c8
  7608 ms     | 0x2b15 EC_ValidatePublicKey()
  7608 ms     | 0x2b15 ret:0x0
  7608 ms  0x2b15 ret:0x7f73b06e0020::7f73b06e0020  30 28 17 af                                      0(..
  7608 ms  0x2b15 PK11_PubDeriveWithKDF()
  7608 ms  0x2b15 seckey:0x7f73b06e0020
  7608 ms     | 0x2b15 EC_ValidatePublicKey()
  7608 ms     | 0x2b15 ret:0x0
  7610 ms  0x2b15 ret:0x7f73af17cd80
  7610 ms  0x2b15 PK11_DeriveWithFlags()
  7610 ms  0x2b15 basekey:0x7f73af17cd80
  7610 ms     | 0x2b15 PK11_DeriveWithTemplate()
  7610 ms  0x2b15 ret:0x7f73af1e9f80
  7610 ms  0x2b15 PK11_Derive()
  7610 ms  0x2b15 basekey:0x7f73af1e9f80
  7610 ms     | 0x2b15 PK11_DeriveWithTemplate()
  7611 ms  0x2b15 ret:0x7f73af1ea500
  7611 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7611 ms  0x2b15 privk:0x7f73b06e0020::7f73b06e0020  30 28 17 af                                      0(..
  7611 ms  0x2b15 privk:0x7f73b06e0020::7f73b06e0020  e5 e5 e5 e5                                      ....
  7611 ms  0x2b15 PK11_Encrypt()
  7611 ms  0x2b15 symkey:0x7f73af1eae80
  7611 ms  0x2b15 SSL_AuthCertificateComplete()
  7611 ms  0x2b15 fd:0x7f73af17b910
  7611 ms  0x2b15 err:0x0
  7613 ms  SECKEY_ECParamsToKeySize()
  7613 ms  0x2b15 ret:0xff
  7613 ms  0x2b15 SECKEY_CreateECPrivateKey()
  7613 ms  0x2b15 cx:0x7f73af1f9f88
  7615 ms     | 0x2b15 EC_ValidatePublicKey()
  7615 ms     | 0x2b15 ret:0x0
  7615 ms  0x2b15 ret:0x7f73b06e6020::7f73b06e6020  40 9c 41 af                                      @.A.
  7615 ms  0x2b15 PK11_PubDeriveWithKDF()
  7615 ms  0x2b15 seckey:0x7f73b06e6020
  7615 ms     | 0x2b15 EC_ValidatePublicKey()
  7615 ms     | 0x2b15 ret:0x0
  7616 ms  0x2b15 ret:0x7f73af17cd80
  7616 ms  0x2b15 PK11_DeriveWithFlags()
  7616 ms  0x2b15 basekey:0x7f73af17cd80
  7616 ms     | 0x2b15 PK11_DeriveWithTemplate()
  7616 ms  0x2b15 ret:0x7f73af2c0100
  7616 ms  0x2b15 PK11_Derive()
  7616 ms  0x2b15 basekey:0x7f73af2c0100
  7616 ms     | 0x2b15 PK11_DeriveWithTemplate()
  7617 ms  0x2b15 ret:0x7f73af2c0180
  7617 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7617 ms  0x2b15 privk:0x7f73b06e6020::7f73b06e6020  40 9c 41 af                                      @.A.
  7617 ms  0x2b15 privk:0x7f73b06e6020::7f73b06e6020  e5 e5 e5 e5                                      ....
  7617 ms  0x2b15 PK11_Encrypt()
  7617 ms  0x2b15 symkey:0x7f73af2c0300
  7618 ms  0x2b15 SSL_AuthCertificateComplete()
  7618 ms  0x2b15 fd:0x7f73af17b370
  7618 ms  0x2b15 err:0x0
  7618 ms  0x2b15 PK11_Encrypt()
  7618 ms  0x2b15 symkey:0x7f73b8d8b780
           /* TID 0x2b1d */
  7671 ms  0x2b1d PR_Close()
  7671 ms  0x2b1d fd:0x7f73af17b280
           /* TID 0x2b15 */
  7694 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7694 ms  0x2b15 privk:0x7f73af14a020::7f73af14a020  a0 2b 17 af                                      .+..
  7694 ms  0x2b15 privk:0x7f73af14a020::7f73af14a020  e5 e5 e5 e5                                      ....
  7694 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7694 ms  0x2b15 privk:0x7f739e021820::7f739e021820  00 26 1e 9e                                      .&..
  7694 ms  0x2b15 privk:0x7f739e021820::7f739e021820  e5 e5 e5 e5                                      ....
  7705 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7705 ms  0x2b15 privk:0x7f73af153020::7f73af153020  c0 84 1b af                                      ....
  7705 ms  0x2b15 privk:0x7f73af153020::7f73af153020  e5 e5 e5 e5                                      ....
  7705 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7705 ms  0x2b15 privk:0x7f73af151020::7f73af151020  e0 82 1b af                                      ....
  7705 ms  0x2b15 privk:0x7f73af151020::7f73af151020  e5 e5 e5 e5                                      ....
  7710 ms  0x2b15 PK11_Encrypt()
  7710 ms  0x2b15 symkey:0x7f73af17cb80
  7714 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7714 ms  0x2b15 privk:0x7f73af220820::7f73af220820  c0 99 41 af                                      ..A.
  7714 ms  0x2b15 privk:0x7f73af220820::7f73af220820  e5 e5 e5 e5                                      ....
  7714 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7714 ms  0x2b15 privk:0x7f73af21c020::7f73af21c020  00 01 2a af                                      ..*.
  7714 ms  0x2b15 privk:0x7f73af21c020::7f73af21c020  e5 e5 e5 e5                                      ....
  7761 ms  0x2b15 SSL_ImportFD()
  7761 ms  0x2b15 ret:0x7f73aff7bdf0
  7761 ms  0x2b15 SSL_AuthCertificateHook()
  7761 ms  0x2b15 fd:0x7f73aff7bdf0
  7761 ms  0x2b15 ret:0x0
  7762 ms  0x2b15 PR_Connect()
  7762 ms  0x2b15 fd:0x7f73aff7bdf0
  7933 ms  0x2b15 SECKEY_CreateECPrivateKey()
  7933 ms  0x2b15 cx:0x7f73af1fae28
  7935 ms     | 0x2b15 EC_ValidatePublicKey()
  7935 ms     | 0x2b15 ret:0x0
  7935 ms  0x2b15 ret:0x7f73af143820::7f73af143820  20 84 1b af                                       ...
  7935 ms  0x2b15 SECKEY_CreateECPrivateKey()
  7935 ms  0x2b15 cx:0x7f73af1fae28
  7937 ms     | 0x2b15 EC_ValidatePublicKey()
  7941 ms     | 0x2b15 ret:0x0
  7941 ms  0x2b15 ret:0x7f73af14a820::7f73af14a820  b0 2f 2c af                                      ./,.
  7975 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7975 ms  0x2b15 privk:0x7f73b552b020::7f73b552b020  a0 0b 2a af                                      ..*.
  7976 ms  0x2b15 privk:0x7f73b552b020::7f73b552b020  e5 e5 e5 e5                                      ....
  7976 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7976 ms  0x2b15 privk:0x7f73b495d020::7f73b495d020  a0 06 2a af                                      ..*.
  7976 ms  0x2b15 privk:0x7f73b495d020::7f73b495d020  e5 e5 e5 e5                                      ....
  7982 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7982 ms  0x2b15 privk:0x7f73b5587020::7f73b5587020  c0 2e 2c af                                      ..,.
  7982 ms  0x2b15 privk:0x7f73b5587020::7f73b5587020  e5 e5 e5 e5                                      ....
  7982 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7982 ms  0x2b15 privk:0x7f73b5581020::7f73b5581020  e0 27 2c af                                      .',.
  7983 ms  0x2b15 privk:0x7f73b5581020::7f73b5581020  e5 e5 e5 e5                                      ....
  7997 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7997 ms  0x2b15 privk:0x7f73b557e020::7f73b557e020  b0 0f 2a af                                      ..*.
  7997 ms  0x2b15 privk:0x7f73b557e020::7f73b557e020  e5 e5 e5 e5                                      ....
  7997 ms  0x2b15 SECKEY_DestroyPrivateKey()
  7997 ms  0x2b15 privk:0x7f73b5533820::7f73b5533820  40 1c 1b 9e                                      @...
  7998 ms  0x2b15 privk:0x7f73b5533820::7f73b5533820  e5 e5 e5 e5                                      ....
           /* TID 0x2b1d */
  8120 ms  0x2b1d PR_Close()
  8120 ms  0x2b1d fd:0x7f73af17b280
           /* TID 0x2b15 */
  8183 ms  0x2b15 PK11_Encrypt()
  8183 ms  0x2b15 symkey:0x7f73b8d8b600
  8184 ms  0x2b15 SECKEY_CreateECPrivateKey()
  8184 ms  0x2b15 cx:0x7f73af1fb4a8
  8186 ms     | 0x2b15 EC_ValidatePublicKey()
  8186 ms     | 0x2b15 ret:0x0
  8186 ms  0x2b15 ret:0x7f73af152820::7f73af152820  40 07 2a af                                      @.*.
  8187 ms  0x2b15 SECKEY_CreateECPrivateKey()
  8187 ms  0x2b15 cx:0x7f73af1fb4a8
  8189 ms     | 0x2b15 EC_ValidatePublicKey()
           /* TID 0x2b1d */
  8200 ms  0x2b1d PR_Close()
  8200 ms  0x2b1d fd:0x7f73af17bf70
           /* TID 0x2b15 */
  8202 ms     | 0x2b15 ret:0x0
  8202 ms  0x2b15 ret:0x7f73af21b020::7f73af21b020  90 1c 1b 9e                                      ....
           /* TID 0x2b1d */
  8215 ms  0x2b1d PR_Close()
  8215 ms  0x2b1d fd:0x7f73af17bf70
  8231 ms  0x2b1d PR_Close()
  8231 ms  0x2b1d fd:0x7f73af17bf70
  8241 ms  0x2b1d PR_Close()
  8241 ms  0x2b1d fd:0x7f73af7db190
  8328 ms  0x2b1d PR_Close()
  8328 ms  0x2b1d fd:0x7f73af17b670
           /* TID 0x2b15 */
  8330 ms  SECKEY_ECParamsToKeySize()
  8330 ms  0x2b15 ret:0xff
  8330 ms  0x2b15 SECKEY_CreateECPrivateKey()
  8330 ms  0x2b15 cx:0x7f73af1fae28
  8332 ms     | 0x2b15 EC_ValidatePublicKey()
  8332 ms     | 0x2b15 ret:0x0
  8332 ms  0x2b15 ret:0x7f73b06e7020::7f73b06e7020  b0 0f 2a af                                      ..*.
  8332 ms  0x2b15 PK11_PubDeriveWithKDF()
  8332 ms  0x2b15 seckey:0x7f73b06e7020
  8332 ms     | 0x2b15 EC_ValidatePublicKey()
  8332 ms     | 0x2b15 ret:0x0
  8334 ms  0x2b15 ret:0x7f73af17cd80
  8340 ms  0x2b15 PK11_DeriveWithFlags()
  8340 ms  0x2b15 basekey:0x7f73af17cd80
  8340 ms     | 0x2b15 PK11_DeriveWithTemplate()
  8340 ms  0x2b15 ret:0x7f73af2c1280
  8340 ms  0x2b15 PK11_Derive()
  8340 ms  0x2b15 basekey:0x7f73af2c1280
  8340 ms     | 0x2b15 PK11_DeriveWithTemplate()
  8340 ms  0x2b15 ret:0x7f73af2c1300
  8340 ms  0x2b15 SECKEY_DestroyPrivateKey()
  8340 ms  0x2b15 privk:0x7f73b06e7020::7f73b06e7020  b0 0f 2a af                                      ..*.
  8341 ms  0x2b15 privk:0x7f73b06e7020::7f73b06e7020  e5 e5 e5 e5                                      ....
  8341 ms  0x2b15 PK11_Encrypt()
  8341 ms  0x2b15 symkey:0x7f73af2c1480
  8344 ms  0x2b15 SSL_AuthCertificateComplete()
  8344 ms  0x2b15 fd:0x7f73af2ad190
  8344 ms  0x2b15 err:0x0
  8345 ms  0x2b15 PK11_Encrypt()
  8345 ms  0x2b15 symkey:0x7f73af2c1480
  8346 ms  0x2b15 PK11_Encrypt()
  8346 ms  0x2b15 symkey:0x7f73af2c1480
  8484 ms  0x2b15 SSL_ImportFD()
  8485 ms  0x2b15 ret:0x7f73b06a3040
  8485 ms  0x2b15 SSL_AuthCertificateHook()
  8485 ms  0x2b15 fd:0x7f73b06a3040
  8485 ms  0x2b15 ret:0x0
  8485 ms  0x2b15 PR_Connect()
  8485 ms  0x2b15 fd:0x7f73b06a3040
  8527 ms  0x2b15 SECKEY_CreateECPrivateKey()
  8527 ms  0x2b15 cx:0x7f73af1fb7e8
  8529 ms     | 0x2b15 EC_ValidatePublicKey()
  8529 ms     | 0x2b15 ret:0x0
  8529 ms  0x2b15 ret:0x7f73b11e6020::7f73b11e6020  b0 1f 1c b1                                      ....
  8529 ms  0x2b15 SECKEY_CreateECPrivateKey()
  8529 ms  0x2b15 cx:0x7f73af1fb7e8
  8531 ms     | 0x2b15 EC_ValidatePublicKey()
  8546 ms     | 0x2b15 ret:0x0
  8548 ms  0x2b15 ret:0x7f73b3fac020::7f73b3fac020  b0 85 5d b1                                      ..].
  8556 ms  0x2b15 PK11_Encrypt()
  8556 ms  0x2b15 symkey:0x7f73b8d8b780
           /* TID 0x2b1d */
  8558 ms  0x2b1d PR_Close()
  8558 ms  0x2b1d fd:0x7f73af7dbfd0
           /* TID 0x2b15 */
  8562 ms  0x2b15 PK11_Encrypt()
  8562 ms  0x2b15 symkey:0x7f73af170980
  8562 ms  0x2b15 PK11_Encrypt()
  8562 ms  0x2b15 symkey:0x7f73af16f700
  8562 ms  0x2b15 PK11_Encrypt()
  8562 ms  0x2b15 symkey:0x7f73af16f980
  8563 ms  0x2b15 PK11_Encrypt()
  8563 ms  0x2b15 symkey:0x7f73af17cb80
  8563 ms  0x2b15 SSL_ImportFD()
  8563 ms  0x2b15 ret:0x7f73af2a2d30
  8563 ms  0x2b15 SSL_AuthCertificateHook()
  8563 ms  0x2b15 fd:0x7f73af2a2d30
  8563 ms  0x2b15 ret:0x0
  8563 ms  0x2b15 PR_Connect()
  8563 ms  0x2b15 fd:0x7f73af2a2d30
  8591 ms  SECKEY_ECParamsToKeySize()
  8591 ms  0x2b15 ret:0xff
  8591 ms  0x2b15 SECKEY_CreateECPrivateKey()
  8591 ms  0x2b15 cx:0x7f73af1fb7e8
  8592 ms     | 0x2b15 EC_ValidatePublicKey()
  8592 ms     | 0x2b15 ret:0x0
  8592 ms  0x2b15 ret:0x7f73b552a820::7f73b552a820  30 88 5d b1                                      0.].
  8592 ms  0x2b15 PK11_PubDeriveWithKDF()
  8592 ms  0x2b15 seckey:0x7f73b552a820
  8592 ms     | 0x2b15 EC_ValidatePublicKey()
  8592 ms     | 0x2b15 ret:0x0
  8593 ms  0x2b15 ret:0x7f73af17cd80
  8593 ms  0x2b15 PK11_DeriveWithFlags()
  8593 ms  0x2b15 basekey:0x7f73af17cd80
  8593 ms     | 0x2b15 PK11_DeriveWithTemplate()
  8593 ms  0x2b15 ret:0x7f73af2c0a80
  8593 ms  0x2b15 PK11_Derive()
  8593 ms  0x2b15 basekey:0x7f73af2c0a80
  8593 ms     | 0x2b15 PK11_DeriveWithTemplate()
  8593 ms  0x2b15 ret:0x7f73af414480
  8593 ms  0x2b15 SECKEY_DestroyPrivateKey()
  8593 ms  0x2b15 privk:0x7f73b552a820::7f73b552a820  30 88 5d b1                                      0.].
  8593 ms  0x2b15 privk:0x7f73b552a820::7f73b552a820  e5 e5 e5 e5                                      ....
  8593 ms  0x2b15 PK11_Encrypt()
  8593 ms  0x2b15 symkey:0x7f73af414880
  8594 ms  0x2b15 SSL_AuthCertificateComplete()
  8594 ms  0x2b15 fd:0x7f73b06a3040
  8594 ms  0x2b15 err:0x0
  8594 ms  0x2b15 PK11_Encrypt()
  8594 ms  0x2b15 symkey:0x7f73af414880
  8610 ms  SECKEY_ECParamsToKeySize()
  8610 ms  0x2b15 ret:0xff
  8610 ms  0x2b15 SECKEY_CreateECPrivateKey()
  8610 ms  0x2b15 cx:0x7f73af1fb4a8
  8610 ms     | 0x2b15 EC_ValidatePublicKey()
  8610 ms     | 0x2b15 ret:0x0
  8610 ms  0x2b15 ret:0x7f73b552a820::7f73b552a820  f0 8b 5d b1                                      ..].
  8611 ms  0x2b15 PK11_PubDeriveWithKDF()
  8611 ms  0x2b15 seckey:0x7f73b552a820
  8611 ms     | 0x2b15 EC_ValidatePublicKey()
  8611 ms     | 0x2b15 ret:0x0
  8611 ms  0x2b15 ret:0x7f73af17cd80
  8611 ms  0x2b15 PK11_DeriveWithFlags()
  8611 ms  0x2b15 basekey:0x7f73af17cd80
  8611 ms     | 0x2b15 PK11_DeriveWithTemplate()
  8611 ms  0x2b15 ret:0x7f73af7cb180
  8611 ms  0x2b15 PK11_Derive()
  8611 ms  0x2b15 basekey:0x7f73af7cb180
  8611 ms     | 0x2b15 PK11_DeriveWithTemplate()
  8611 ms  0x2b15 ret:0x7f73af7cb200
  8611 ms  0x2b15 SECKEY_DestroyPrivateKey()
  8611 ms  0x2b15 privk:0x7f73b552a820::7f73b552a820  f0 8b 5d b1                                      ..].
  8611 ms  0x2b15 privk:0x7f73b552a820::7f73b552a820  e5 e5 e5 e5                                      ....
  8612 ms  0x2b15 PK11_Encrypt()
  8612 ms  0x2b15 symkey:0x7f73af7cb780
  8612 ms  0x2b15 SSL_AuthCertificateComplete()
  8612 ms  0x2b15 fd:0x7f73aff7bdf0
  8612 ms  0x2b15 err:0x0
  8612 ms  0x2b15 PK11_Encrypt()
  8612 ms  0x2b15 symkey:0x7f73af7cb780
  8636 ms  0x2b15 SECKEY_DestroyPrivateKey()
  8636 ms  0x2b15 privk:0x7f73b3fac020::7f73b3fac020  b0 85 5d b1                                      ..].
  8636 ms  0x2b15 privk:0x7f73b3fac020::7f73b3fac020  e5 e5 e5 e5                                      ....
  8636 ms  0x2b15 SECKEY_DestroyPrivateKey()
  8636 ms  0x2b15 privk:0x7f73b11e6020::7f73b11e6020  b0 1f 1c b1                                      ....
  8637 ms  0x2b15 privk:0x7f73b11e6020::7f73b11e6020  e5 e5 e5 e5                                      ....
  8719 ms  0x2b15 PK11_Encrypt()
  8719 ms  0x2b15 symkey:0x7f73b8d8b600
           /* TID 0x2b1d */
  8724 ms  0x2b1d PR_Close()
  8724 ms  0x2b1d fd:0x7f73af2b31f0
           /* TID 0x2b15 */
  8746 ms  0x2b15 SECKEY_DestroyPrivateKey()
  8746 ms  0x2b15 privk:0x7f73af14a820::7f73af14a820  b0 2f 2c af                                      ./,.
  8746 ms  0x2b15 privk:0x7f73af14a820::7f73af14a820  e5 e5 e5 e5                                      ....
  8746 ms  0x2b15 SECKEY_DestroyPrivateKey()
  8746 ms  0x2b15 privk:0x7f73af143820::7f73af143820  20 84 1b af                                       ...
  8747 ms  0x2b15 privk:0x7f73af143820::7f73af143820  e5 e5 e5 e5                                      ....
  8747 ms  0x2b15 PK11_Encrypt()
  8747 ms  0x2b15 symkey:0x7f73af2c1480
  8814 ms  0x2b15 SSL_ImportFD()
  8814 ms  0x2b15 ret:0x7f73b09f02e0
  8814 ms  0x2b15 SSL_AuthCertificateHook()
  8814 ms  0x2b15 fd:0x7f73b09f02e0
  8814 ms  0x2b15 ret:0x0
  8814 ms  0x2b15 PR_Connect()
  8814 ms  0x2b15 fd:0x7f73b09f02e0
  8912 ms  0x2b15 SECKEY_CreateECPrivateKey()
  8912 ms  0x2b15 cx:0x7f73b958a7a8
  8916 ms     | 0x2b15 EC_ValidatePublicKey()
  8916 ms     | 0x2b15 ret:0x0
  8916 ms  0x2b15 ret:0x7f739e021820::7f739e021820  30 18 1c b1                                      0...
  8917 ms  0x2b15 SECKEY_CreateECPrivateKey()
  8917 ms  0x2b15 cx:0x7f73b958a7a8
  8919 ms     | 0x2b15 EC_ValidatePublicKey()
  8924 ms     | 0x2b15 ret:0x0
  8926 ms  0x2b15 ret:0x7f73af14a020::7f73af14a020  d0 83 5d b1                                      ..].
           /* TID 0x2b1d */
  8974 ms  0x2b1d PR_Close()
  8974 ms  0x2b1d fd:0x7f73af2b31f0
           /* TID 0x2b15 */
  8987 ms  0x2b15 PK11_Encrypt()
  8987 ms  0x2b15 symkey:0x7f73af414880
  9043 ms  0x2b15 PK11_Encrypt()
  9043 ms  0x2b15 symkey:0x7f73af170700
  9046 ms  0x2b15 SECKEY_DestroyPrivateKey()
  9046 ms  0x2b15 privk:0x7f73af21b020::7f73af21b020  90 1c 1b 9e                                      ....
  9046 ms  0x2b15 privk:0x7f73af21b020::7f73af21b020  e5 e5 e5 e5                                      ....
  9046 ms  0x2b15 SECKEY_DestroyPrivateKey()
  9046 ms  0x2b15 privk:0x7f73af152820::7f73af152820  40 07 2a af                                      @.*.
  9046 ms  0x2b15 privk:0x7f73af152820::7f73af152820  e5 e5 e5 e5                                      ....
  9046 ms  0x2b15 PR_Close()
  9046 ms  0x2b15 fd:0x7f73aff7bdf0
  9046 ms     | 0x2b15 PK11_Encrypt()
  9046 ms     | 0x2b15 symkey:0x7f73af7cb780
  9053 ms  0x2b15 PK11_Encrypt()
  9053 ms  0x2b15 symkey:0x7f73af17d800
  9060 ms  0x2b15 PK11_Encrypt()
  9060 ms  0x2b15 symkey:0x7f73af1eae80
           /* TID 0x2b1d */
  9089 ms  0x2b1d PR_Close()
  9089 ms  0x2b1d fd:0x7f73af2a2af0
  9092 ms  0x2b1d PR_Close()
  9092 ms  0x2b1d fd:0x7f73af2a2af0
  9102 ms  0x2b1d PR_Close()
  9102 ms  0x2b1d fd:0x7f73af2a2b20
  9108 ms  0x2b1d PR_Close()
  9108 ms  0x2b1d fd:0x7f73af2a2b20
  9110 ms  0x2b1d PR_Close()
  9110 ms  0x2b1d fd:0x7f739e21d940
  9168 ms  0x2b1d PR_Close()
  9168 ms  0x2b1d fd:0x7f73af2a2b80
           /* TID 0x2b15 */
  9200 ms  0x2b15 SECKEY_CreateECPrivateKey()
  9200 ms  0x2b15 cx:0x7f73bd3ac248
  9201 ms     | 0x2b15 EC_ValidatePublicKey()
  9202 ms     | 0x2b15 ret:0x0
  9202 ms  0x2b15 ret:0x7f73af15f820::7f73af15f820  a0 0b 2a af                                      ..*.
  9202 ms  0x2b15 SECKEY_CreateECPrivateKey()
  9202 ms  0x2b15 cx:0x7f73bd3ac248
  9204 ms     | 0x2b15 EC_ValidatePublicKey()
  9208 ms     | 0x2b15 ret:0x0
  9208 ms  0x2b15 ret:0x7f73b06e5820::7f73b06e5820  10 85 f1 af                                      ....
           /* TID 0x2b1d */
  9253 ms  0x2b1d PR_Close()
  9253 ms  0x2b1d fd:0x7f73af2a2cd0
           /* TID 0x2b15 */
  9279 ms  SECKEY_ECParamsToKeySize()
  9279 ms  0x2b15 ret:0xff
  9279 ms  0x2b15 SECKEY_CreateECPrivateKey()
  9279 ms  0x2b15 cx:0x7f73b958a7a8
  9280 ms     | 0x2b15 EC_ValidatePublicKey()
  9281 ms     | 0x2b15 ret:0x0
  9281 ms  0x2b15 ret:0x7f73b5526820::7f73b5526820  e0 87 5d b1                                      ..].
  9281 ms  0x2b15 PK11_PubDeriveWithKDF()
  9281 ms  0x2b15 seckey:0x7f73b5526820
  9281 ms     | 0x2b15 EC_ValidatePublicKey()
  9281 ms     | 0x2b15 ret:0x0
  9282 ms  0x2b15 ret:0x7f73af7cb200
  9282 ms  0x2b15 PK11_DeriveWithFlags()
  9282 ms  0x2b15 basekey:0x7f73af7cb200
  9282 ms     | 0x2b15 PK11_DeriveWithTemplate()
  9282 ms  0x2b15 ret:0x7f73af7cb180
  9282 ms  0x2b15 PK11_Derive()
  9282 ms  0x2b15 basekey:0x7f73af7cb180
  9282 ms     | 0x2b15 PK11_DeriveWithTemplate()
  9283 ms  0x2b15 ret:0x7f73af17cd80
  9283 ms  0x2b15 SECKEY_DestroyPrivateKey()
  9283 ms  0x2b15 privk:0x7f73b5526820::7f73b5526820  e0 87 5d b1                                      ..].
  9283 ms  0x2b15 privk:0x7f73b5526820::7f73b5526820  e5 e5 e5 e5                                      ....
  9283 ms  0x2b15 PK11_Encrypt()
  9283 ms  0x2b15 symkey:0x7f73af7cb300
  9283 ms  0x2b15 SSL_AuthCertificateComplete()
  9283 ms  0x2b15 fd:0x7f73af2a2d30
  9283 ms  0x2b15 err:0x0
  9284 ms  0x2b15 PK11_Encrypt()
  9284 ms  0x2b15 symkey:0x7f73af7cb300
           /* TID 0x2b1d */
  9472 ms  0x2b1d PR_Close()
  9472 ms  0x2b1d fd:0x7f73af2a2af0
  9472 ms  0x2b1d PR_Close()
  9472 ms  0x2b1d fd:0x7f73af2b3130
  9472 ms  0x2b1d PR_Close()
  9472 ms  0x2b1d fd:0x7f73b06a3190
  9473 ms  0x2b1d PR_Close()
  9473 ms  0x2b1d fd:0x7f73af2a2af0
  9473 ms  0x2b1d PR_Close()
  9473 ms  0x2b1d fd:0x7f73af2b3130
  9473 ms  0x2b1d PR_Close()
  9473 ms  0x2b1d fd:0x7f73b06a3190
  9473 ms  0x2b1d PR_Close()
  9473 ms  0x2b1d fd:0x7f73b09f0160
  9474 ms  0x2b1d PR_Close()
  9474 ms  0x2b1d fd:0x7f73b09f01f0
  9474 ms  0x2b1d PR_Close()
  9474 ms  0x2b1d fd:0x7f73b09f03a0
  9474 ms  0x2b1d PR_Close()
  9474 ms  0x2b1d fd:0x7f73b09f05e0
  9474 ms  0x2b1d PR_Close()
  9474 ms  0x2b1d fd:0x7f73b09f0ca0
  9474 ms  0x2b1d PR_Close()
  9474 ms  0x2b1d fd:0x7f73b09f0d30
  9474 ms  0x2b1d PR_Close()
  9474 ms  0x2b1d fd:0x7f73b09f0d90
  9474 ms  0x2b1d PR_Close()
  9474 ms  0x2b1d fd:0x7f73b09f0df0
  9474 ms  0x2b1d PR_Close()
  9474 ms  0x2b1d fd:0x7f73b09f0e80
  9474 ms  0x2b1d PR_Close()
  9474 ms  0x2b1d fd:0x7f73b09f0f40
  9474 ms  0x2b1d PR_Close()
  9474 ms  0x2b1d fd:0x7f73b09f0fa0
  9474 ms  0x2b1d PR_Close()
  9474 ms  0x2b1d fd:0x7f73b11cf280
  9474 ms  0x2b1d PR_Close()
  9474 ms  0x2b1d fd:0x7f73b11cf310
  9474 ms  0x2b1d PR_Close()
  9474 ms  0x2b1d fd:0x7f73b11cf970
  9474 ms  0x2b1d PR_Close()
  9474 ms  0x2b1d fd:0x7f73b11cfc70
  9474 ms  0x2b1d PR_Close()
  9474 ms  0x2b1d fd:0x7f73b1539730
  9474 ms  0x2b1d PR_Close()
  9474 ms  0x2b1d fd:0x7f73b1539c70
  9474 ms  0x2b1d PR_Close()
  9474 ms  0x2b1d fd:0x7f73b1539cd0
  9506 ms  0x2b1d PR_Close()
  9506 ms  0x2b1d fd:0x7f73af2a2af0
  9575 ms  0x2b1d PR_Close()
  9575 ms  0x2b1d fd:0x7f73af2a2cd0
  9583 ms  0x2b1d PR_Close()
  9583 ms  0x2b1d fd:0x7f73af2a2cd0
  9593 ms  0x2b1d PR_Close()
  9593 ms  0x2b1d fd:0x7f73af2a2cd0
           /* TID 0x2b15 */
  9596 ms  SECKEY_ECParamsToKeySize()
  9596 ms  0x2b15 ret:0xff
  9596 ms  0x2b15 SECKEY_CreateECPrivateKey()
  9596 ms  0x2b15 cx:0x7f73bd3ac248
  9597 ms     | 0x2b15 EC_ValidatePublicKey()
  9597 ms     | 0x2b15 ret:0x0
  9597 ms  0x2b15 ret:0x7f73b552a820::7f73b552a820  30 1d 1c b1                                      0...
  9597 ms  0x2b15 PK11_PubDeriveWithKDF()
  9597 ms  0x2b15 seckey:0x7f73b552a820
  9597 ms     | 0x2b15 EC_ValidatePublicKey()
  9597 ms     | 0x2b15 ret:0x0
  9599 ms  0x2b15 ret:0x7f73af7cb200
  9599 ms  0x2b15 PK11_DeriveWithFlags()
  9599 ms  0x2b15 basekey:0x7f73af7cb200
  9599 ms     | 0x2b15 PK11_DeriveWithTemplate()
  9599 ms  0x2b15 ret:0x7f73af7dfa80
  9599 ms  0x2b15 PK11_Derive()
  9599 ms  0x2b15 basekey:0x7f73af7dfa80
  9599 ms     | 0x2b15 PK11_DeriveWithTemplate()
  9599 ms  0x2b15 ret:0x7f73aff0ef00
  9599 ms  0x2b15 SECKEY_DestroyPrivateKey()
  9599 ms  0x2b15 privk:0x7f73b552a820::7f73b552a820  30 1d 1c b1                                      0...
  9599 ms  0x2b15 privk:0x7f73b552a820::7f73b552a820  e5 e5 e5 e5                                      ....
  9600 ms  0x2b15 PK11_Encrypt()
  9600 ms  0x2b15 symkey:0x7f73aff0f500
  9606 ms  0x2b15 SSL_AuthCertificateComplete()
  9606 ms  0x2b15 fd:0x7f73b09f02e0
  9606 ms  0x2b15 err:0x0
  9606 ms  0x2b15 PK11_Encrypt()
  9606 ms  0x2b15 symkey:0x7f73b8d8b600
  9606 ms  0x2b15 PK11_Encrypt()
  9606 ms  0x2b15 symkey:0x7f73b8d8b780
  9618 ms  0x2b15 PK11_Encrypt()
  9618 ms  0x2b15 symkey:0x7f73af17cb80
  9632 ms  0x2b15 SECKEY_DestroyPrivateKey()
  9632 ms  0x2b15 privk:0x7f73af14a020::7f73af14a020  d0 83 5d b1                                      ..].
  9632 ms  0x2b15 privk:0x7f73af14a020::7f73af14a020  e5 e5 e5 e5                                      ....
  9633 ms  0x2b15 SECKEY_DestroyPrivateKey()
  9633 ms  0x2b15 privk:0x7f739e021820::7f739e021820  30 18 1c b1                                      0...
  9633 ms  0x2b15 privk:0x7f739e021820::7f739e021820  e5 e5 e5 e5                                      ....
  9985 ms  0x2b15 SECKEY_DestroyPrivateKey()
  9985 ms  0x2b15 privk:0x7f73b06e5820::7f73b06e5820  10 85 f1 af                                      ....
  9986 ms  0x2b15 privk:0x7f73b06e5820::7f73b06e5820  e5 e5 e5 e5                                      ....
  9986 ms  0x2b15 SECKEY_DestroyPrivateKey()
  9986 ms  0x2b15 privk:0x7f73af15f820::7f73af15f820  a0 0b 2a af                                      ..*.
  9986 ms  0x2b15 privk:0x7f73af15f820::7f73af15f820  e5 e5 e5 e5                                      ....
 10019 ms  0x2b15 PK11_Encrypt()
 10019 ms  0x2b15 symkey:0x7f73af170700
           /* TID 0x2b1d */
 10134 ms  0x2b1d PR_Close()
 10134 ms  0x2b1d fd:0x7f73af2a2af0
 10149 ms  0x2b1d PR_Close()
 10149 ms  0x2b1d fd:0x7f73af2a2af0
 10153 ms  0x2b1d PR_Close()
 10153 ms  0x2b1d fd:0x7f73af2a2af0
           /* TID 0x2b15 */
 10169 ms  0x2b15 PR_Close()
 10169 ms  0x2b15 fd:0x7f73aff7bd90
           /* TID 0x2b0a */
 10172 ms  0x2b0a EC_ValidatePublicKey()
 10174 ms  0x2b0a ret:0x0
 10174 ms  0x2b0a EC_ValidatePublicKey()
 10176 ms  0x2b0a ret:0x0
 10176 ms  0x2b0a EC_ValidatePublicKey()
 10177 ms  0x2b0a ret:0x0
 10177 ms  0x2b0a EC_ValidatePublicKey()
 10179 ms  0x2b0a ret:0x0
 10179 ms  0x2b0a EC_ValidatePublicKey()
 10181 ms  0x2b0a ret:0x0
 10181 ms  0x2b0a EC_ValidatePublicKey()
 10182 ms  0x2b0a ret:0x0
 10182 ms  0x2b0a EC_ValidatePublicKey()
 10184 ms  0x2b0a ret:0x0
 10184 ms  0x2b0a EC_ValidatePublicKey()
 10186 ms  0x2b0a ret:0x0
 10186 ms  0x2b0a EC_ValidatePublicKey()
 10187 ms  0x2b0a ret:0x0
 10187 ms  0x2b0a EC_ValidatePublicKey()
 10189 ms  0x2b0a ret:0x0
           /* TID 0x2b15 */
 10189 ms  0x2b15 PK11_Encrypt()
 10189 ms  0x2b15 symkey:0x7f73af2c1480
 10191 ms  0x2b15 PR_Close()
 10191 ms  0x2b15 fd:0x7f73af2a2d30
 10191 ms     | 0x2b15 PK11_Encrypt()
 10191 ms     | 0x2b15 symkey:0x7f73af7cb300
 10191 ms  0x2b15 PR_Close()
 10191 ms  0x2b15 fd:0x7f73b06a3040
 10191 ms     | 0x2b15 PK11_Encrypt()
 10191 ms     | 0x2b15 symkey:0x7f73af414880
 10191 ms  0x2b15 PR_Close()
 10191 ms  0x2b15 fd:0x7f73af17b910
 10191 ms     | 0x2b15 PK11_Encrypt()
 10191 ms     | 0x2b15 symkey:0x7f73af1eae80
 10191 ms  0x2b15 PR_Close()
 10191 ms  0x2b15 fd:0x7f73af17bb80
 10191 ms     | 0x2b15 PK11_Encrypt()
 10191 ms     | 0x2b15 symkey:0x7f73af17c100
 10192 ms  0x2b15 PR_Close()
 10192 ms  0x2b15 fd:0x7f739e21d6a0
 10192 ms     | 0x2b15 PK11_Encrypt()
 10192 ms     | 0x2b15 symkey:0x7f73af17cb80
 10192 ms  0x2b15 PR_Close()
 10192 ms  0x2b15 fd:0x7f73b5932a90
 10192 ms     | 0x2b15 PK11_Encrypt()
 10192 ms     | 0x2b15 symkey:0x7f73af170980
 10192 ms  0x2b15 PR_Close()
 10192 ms  0x2b15 fd:0x7f73b5902dc0
 10192 ms     | 0x2b15 PK11_Encrypt()
 10192 ms     | 0x2b15 symkey:0x7f73af16f700
 10192 ms  0x2b15 PR_Close()
 10192 ms  0x2b15 fd:0x7f73b5902100
 10192 ms     | 0x2b15 PK11_Encrypt()
 10192 ms     | 0x2b15 symkey:0x7f73af16f980
 10192 ms  0x2b15 PR_Close()
 10192 ms  0x2b15 fd:0x7f73b239ba00
 10192 ms     | 0x2b15 PK11_Encrypt()
 10192 ms     | 0x2b15 symkey:0x7f73b8d8b780
 10192 ms  0x2b15 PR_Close()
 10192 ms  0x2b15 fd:0x7f73b239bf70
 10193 ms  0x2b15 PR_Close()
 10193 ms  0x2b15 fd:0x7f73b239b7f0
 10193 ms     | 0x2b15 PK11_Encrypt()
 10193 ms     | 0x2b15 symkey:0x7f73b8d8b600
 10193 ms  0x2b15 PR_Close()
 10193 ms  0x2b15 fd:0x7f739e21d2e0
 10193 ms     | 0x2b15 PK11_Encrypt()
 10193 ms     | 0x2b15 symkey:0x7f73af1eac00
 10193 ms  0x2b15 PR_Close()
 10193 ms  0x2b15 fd:0x7f739e21d070
 10193 ms  0x2b15 PR_Close()
 10193 ms  0x2b15 fd:0x7f73af2ada00
 10193 ms     | 0x2b15 PK11_Encrypt()
 10193 ms     | 0x2b15 symkey:0x7f73af1e9e80
 10193 ms  0x2b15 PR_Close()
 10193 ms  0x2b15 fd:0x7f73af7db100
 10193 ms  0x2b15 PR_Close()
 10193 ms  0x2b15 fd:0x7f73af2d2a90
 10193 ms     | 0x2b15 PK11_Encrypt()
 10193 ms     | 0x2b15 symkey:0x7f73b0904500
 10194 ms  0x2b15 PR_Close()
 10194 ms  0x2b15 fd:0x7f73af17b3a0
 10194 ms     | 0x2b15 PK11_Encrypt()
 10194 ms     | 0x2b15 symkey:0x7f73af17d800
 10194 ms  0x2b15 PR_Close()
 10194 ms  0x2b15 fd:0x7f73b231a0d0
 10194 ms     | 0x2b15 PK11_Encrypt()
 10194 ms     | 0x2b15 symkey:0x7f73af2cec80
 10194 ms  0x2b15 PR_Close()
 10194 ms  0x2b15 fd:0x7f73b09f02e0
 10194 ms     | 0x2b15 PK11_Encrypt()
 10194 ms     | 0x2b15 symkey:0x7f73aff0f500
 10194 ms  0x2b15 PR_Close()
 10194 ms  0x2b15 fd:0x7f73af17b370
 10194 ms     | 0x2b15 PK11_Encrypt()
 10194 ms     | 0x2b15 symkey:0x7f73af2c0300
 10194 ms  0x2b15 PR_Close()
 10194 ms  0x2b15 fd:0x7f73af2ad190
 10195 ms     | 0x2b15 PK11_Encrypt()
 10195 ms     | 0x2b15 symkey:0x7f73af2c1480
           /* TID 0x2b68 */
 10195 ms  0x2b68 PR_Close()
 10195 ms  0x2b68 fd:0x7f739e21d0d0
 10195 ms  0x2b68 PR_Close()
 10195 ms  0x2b68 fd:0x7f739e21d0d0
           /* TID 0x2b0a */
 10198 ms  0x2b0a PR_Close()
 10198 ms  0x2b0a fd:0x7f73b0936ac0
 10198 ms  0x2b0a PR_Close()
 10198 ms  0x2b0a fd:0x7f739e21d370
 10199 ms  0x2b0a PR_Close()
 10199 ms  0x2b0a fd:0x7f739e21d430
 10199 ms  0x2b0a PR_Close()
 10199 ms  0x2b0a fd:0x7f739e21d370
 10199 ms  0x2b0a PR_Close()
 10199 ms  0x2b0a fd:0x7f739e21d430
 10199 ms  0x2b0a PR_Close()
 10199 ms  0x2b0a fd:0x7f739e21d370
           /* TID 0x2b2f */
 10202 ms  0x2b2f PR_Close()
 10202 ms  0x2b2f fd:0x7f739e21d370
           /* TID 0x2b0a */
 10219 ms  0x2b0a PR_Close()
 10219 ms  0x2b0a fd:0x7f739e21d430
 10219 ms  0x2b0a PR_Close()
 10219 ms  0x2b0a fd:0x7f73af17bf70
 10220 ms  0x2b0a PR_Close()
 10220 ms  0x2b0a fd:0x7f739e21d430
 10220 ms  0x2b0a PR_Close()
 10220 ms  0x2b0a fd:0x7f73af17bf70
 10221 ms  0x2b0a PR_Close()
 10221 ms  0x2b0a fd:0x7f73ba1c89a0
 10221 ms  0x2b0a PR_Close()
 10221 ms  0x2b0a fd:0x7f73ba1c88b0
 10221 ms  0x2b0a PR_Close()
 10221 ms  0x2b0a fd:0x7f73ba1c8a60
 10223 ms  0x2b0a PR_Close()
 10223 ms  0x2b0a fd:0x7f73af17bf70
 10224 ms  0x2b0a PR_Close()
 10224 ms  0x2b0a fd:0x7f73af17bf70
 10226 ms  0x2b0a PR_Close()
 10226 ms  0x2b0a fd:0x7f739e21d430
 10226 ms  0x2b0a PR_Close()
 10226 ms  0x2b0a fd:0x7f73af17bfd0
 10227 ms  0x2b0a PR_Close()
 10227 ms  0x2b0a fd:0x7f739e21d430
 10227 ms  0x2b0a PR_Close()
 10227 ms  0x2b0a fd:0x7f73af17bfd0
 10229 ms  0x2b0a PR_Close()
 10229 ms  0x2b0a fd:0x7f73af2a2910
 10230 ms  0x2b0a PR_Close()
 10230 ms  0x2b0a fd:0x7f73af2a2910
 10232 ms  0x2b0a PR_Close()
 10232 ms  0x2b0a fd:0x7f739e21d430
 10232 ms  0x2b0a PR_Close()
 10232 ms  0x2b0a fd:0x7f73af2a2970
 10233 ms  0x2b0a PR_Close()
 10233 ms  0x2b0a fd:0x7f739e21d430
 10233 ms  0x2b0a PR_Close()
 10233 ms  0x2b0a fd:0x7f73af2a2970
 10236 ms  0x2b0a PR_Close()
 10236 ms  0x2b0a fd:0x7f73af2a2a30
 10237 ms  0x2b0a PR_Close()
 10237 ms  0x2b0a fd:0x7f73af2a2a30
 10243 ms  0x2b0a PR_Close()
 10243 ms  0x2b0a fd:0x7f73af2ad190
 10251 ms  0x2b0a PR_Close()
 10251 ms  0x2b0a fd:0x7f73af2ad190
 10253 ms  0x2b0a PR_Close()
 10253 ms  0x2b0a fd:0x7f73af2ad1c0
           /* TID 0x2b2f */
 10259 ms  0x2b2f PR_Close()
 10259 ms  0x2b2f fd:0x7f739e21d130
 10262 ms  0x2b2f PR_Close()
 10262 ms  0x2b2f fd:0x7f739e21d130
           /* TID 0x2b0a */
 10262 ms  0x2b0a PR_Close()
 10262 ms  0x2b0a fd:0x7f739e21d430
 10262 ms  0x2b0a PR_Close()
 10262 ms  0x2b0a fd:0x7f73af2b3550
           /* TID 0x2b2f */
 10269 ms  0x2b2f PR_Close()
 10269 ms  0x2b2f fd:0x7f739e21d370
 10290 ms  0x2b2f PR_Close()
 10290 ms  0x2b2f fd:0x7f739e21d370
           /* TID 0x2b15 */
 10294 ms  0x2b15 PR_Close()
 10294 ms  0x2b15 fd:0x7f73b5902640
 10294 ms     | 0x2b15 PK11_Encrypt()
 10294 ms     | 0x2b15 symkey:0x7f73af170700
           /* TID 0x2b0f */
 10301 ms  0x2b0f PR_Close()
 10301 ms  0x2b0f fd:0x7f73b8d2ee20
 10306 ms  0x2b0f PR_Close()
 10306 ms  0x2b0f fd:0x7f73b544a820
           /* TID 0x2b2f */
 10314 ms  0x2b2f PR_Close()
 10314 ms  0x2b2f fd:0x7f73af2d2940
           /* TID 0x2b0a */
 10317 ms  0x2b0a PR_Close()
 10317 ms  0x2b0a fd:0x7f739e21d130
 10317 ms  0x2b0a PR_Close()
 10317 ms  0x2b0a fd:0x7f73af2d2940
           /* TID 0x2b15 */
 10317 ms  0x2b15 PR_Close()
 10317 ms  0x2b15 fd:0x7f73af7db430
           /* TID 0x2b68 */
 10318 ms  0x2b68 PR_Close()
 10318 ms  0x2b68 fd:0x7f73af7db430
 10318 ms  0x2b68 PR_Close()
 10318 ms  0x2b68 fd:0x7f73af7db430
 10318 ms  0x2b68 PR_Close()
 10318 ms  0x2b68 fd:0x7f73af7db430
 10318 ms  0x2b68 PR_Close()
 10318 ms  0x2b68 fd:0x7f73af7db610
           /* TID 0x2b2f */
 10318 ms  0x2b2f PR_Close()
 10318 ms  0x2b2f fd:0x7f73af7db610
           /* TID 0x2b1d */
 10321 ms  0x2b1d PR_Close()
 10321 ms  0x2b1d fd:0x7f73b06a3940
 10321 ms  0x2b1d PR_Close()
 10321 ms  0x2b1d fd:0x7f73b06a3970
           /* TID 0x2b0f */
 10328 ms  0x2b0f PR_Close()
 10328 ms  0x2b0f fd:0x7f73b04d8130
           /* TID 0x2b0a */
 10330 ms  0x2b0a PR_Close()
 10330 ms  0x2b0a fd:0x7f739e21d130
 10330 ms  0x2b0a PR_Close()
 10330 ms  0x2b0a fd:0x7f73af7dbf10
           /* TID 0x2b2f */
 10332 ms  0x2b2f PR_Close()
 10332 ms  0x2b2f fd:0x7f73aff7b1f0
 10334 ms  0x2b2f PR_Close()
 10334 ms  0x2b2f fd:0x7f73af2d26d0
 10372 ms  0x2b2f PR_Close()
 10372 ms  0x2b2f fd:0x7f73af17b280
 10402 ms  0x2b2f PR_Close()
 10402 ms  0x2b2f fd:0x7f73af17b280
 10408 ms  0x2b2f PR_Close()
 10408 ms  0x2b2f fd:0x7f73af2a2e20
 10410 ms  0x2b2f PR_Close()
 10410 ms  0x2b2f fd:0x7f73af2a2e80
 10433 ms  0x2b2f PR_Close()
 10433 ms  0x2b2f fd:0x7f73af2b3220
 10441 ms  0x2b2f PR_Close()
 10441 ms  0x2b2f fd:0x7f73af2d2c10
 10449 ms  0x2b2f PR_Close()
 10449 ms  0x2b2f fd:0x7f73aff7b250
 10459 ms  0x2b2f PR_Close()
 10459 ms  0x2b2f fd:0x7f73b04d8220
 10461 ms  0x2b2f PR_Close()
 10461 ms  0x2b2f fd:0x7f73b04d8220
           /* TID 0x2b0a */
 10620 ms  0x2b0a PR_Close()
 10620 ms  0x2b0a fd:0x7f739e21d6d0
 10620 ms  0x2b0a PR_Close()
 10620 ms  0x2b0a fd:0x7f739e21d6d0
 10625 ms  0x2b0a PR_Close()
 10625 ms  0x2b0a fd:0x7f73d74da130
 10626 ms  0x2b0a PR_Close()
 10626 ms  0x2b0a fd:0x7f73d74da190
Process terminated
