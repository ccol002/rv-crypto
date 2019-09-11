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
           /* TID 0x28f2 */
    13 ms  0x28f2 SECKEY_DestroyPrivateKey()
    13 ms  0x28f2 privk:0x7fc15db83820::7fc15db83820  b0 fa b2 5d                                      ...]
    13 ms  0x28f2 privk:0x7fc15db83820::7fc15db83820  e5 e5 e5 e5                                      ....
    13 ms  0x28f2 SECKEY_DestroyPrivateKey()
    13 ms  0x28f2 privk:0x7fc15db81820::7fc15db81820  d0 f8 b2 5d                                      ...]
    13 ms  0x28f2 privk:0x7fc15db81820::7fc15db81820  e5 e5 e5 e5                                      ....
           /* TID 0x28fa */
   225 ms  0x28fa PR_Close()
   225 ms  0x28fa fd:0x7fc15d5198e0
           /* TID 0x28f2 */
   331 ms  0x28f2 SSL_ImportFD()
   331 ms  0x28f2 ret:0x7fc15d54c430
   331 ms  0x28f2 SSL_AuthCertificateHook()
   331 ms  0x28f2 fd:0x7fc15d54c430
   331 ms  0x28f2 ret:0x0
   331 ms  0x28f2 PR_Connect()
   331 ms  0x28f2 fd:0x7fc15d54c430
   549 ms  0x28f2 SECKEY_CreateECPrivateKey()
   549 ms  0x28f2 cx:0x7fc15d51ce28
   551 ms     | 0x28f2 EC_ValidatePublicKey()
   551 ms     | 0x28f2 ret:0x0
   551 ms  0x28f2 ret:0x7fc15dacb020::7fc15dacb020  70 3e b0 5d                                      p>.]
   551 ms  0x28f2 SECKEY_CreateECPrivateKey()
   551 ms  0x28f2 cx:0x7fc15d51ce28
   553 ms     | 0x28f2 EC_ValidatePublicKey()
   559 ms     | 0x28f2 ret:0x0
   559 ms  0x28f2 ret:0x7fc15dacd020::7fc15dacd020  30 3d b0 5d                                      0=.]
           /* TID 0x2957 */
   763 ms  0x2957 PR_Close()
   763 ms  0x2957 fd:0x7fc15d54cd60
   766 ms  0x2957 PR_Close()
   766 ms  0x2957 fd:0x7fc15d54cd60
   786 ms  0x2957 PR_Close()
   786 ms  0x2957 fd:0x7fc15d54cee0
           /* TID 0x28f2 */
   787 ms  SECKEY_ECParamsToKeySize()
   787 ms  0x28f2 ret:0x100
   787 ms  0x28f2 SECKEY_CreateECPrivateKey()
   787 ms  0x28f2 cx:0x7fc15d51ce28
   788 ms     | 0x28f2 EC_ValidatePublicKey()
   793 ms     | 0x28f2 ret:0x0
   793 ms  0x28f2 ret:0x7fc15db83020::7fc15db83020  b0 ea 70 5d                                      ..p]
   793 ms  0x28f2 PK11_PubDeriveWithKDF()
   793 ms  0x28f2 seckey:0x7fc15db83020
   793 ms     | 0x28f2 EC_ValidatePublicKey()
   797 ms     | 0x28f2 ret:0x0
   801 ms  0x28f2 ret:0x7fc15e8b1b00
   801 ms  0x28f2 PK11_DeriveWithFlags()
   801 ms  0x28f2 basekey:0x7fc15e8b1b00
   801 ms     | 0x28f2 PK11_DeriveWithTemplate()
   801 ms  0x28f2 ret:0x7fc15d702780
   801 ms  0x28f2 PK11_Derive()
   801 ms  0x28f2 basekey:0x7fc15d702780
   801 ms     | 0x28f2 PK11_DeriveWithTemplate()
   801 ms  0x28f2 ret:0x7fc15d702880
   801 ms  0x28f2 SECKEY_DestroyPrivateKey()
   801 ms  0x28f2 privk:0x7fc15db83020::7fc15db83020  b0 ea 70 5d                                      ..p]
   801 ms  0x28f2 privk:0x7fc15db83020::7fc15db83020  e5 e5 e5 e5                                      ....
   802 ms  0x28f2 PK11_Encrypt()
   802 ms  0x28f2 symkey:0x7fc15d702a00
   802 ms  0x28f2 PR_Connect()
   802 ms  0x28f2 fd:0x7fc15d54cf40
           /* TID 0x2954 */
   856 ms  0x2954 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   856 ms  0x2954 ret:0x0
           /* TID 0x28fa */
   857 ms  0x28fa PR_Close()
   857 ms  0x28fa fd:0x7fc15d54cdc0
           /* TID 0x28f2 */
   858 ms  0x28f2 SSL_AuthCertificateComplete()
   858 ms  0x28f2 fd:0x7fc15d54c430
   858 ms  0x28f2 err:0x0
   858 ms  0x28f2 PK11_Encrypt()
   858 ms  0x28f2 symkey:0x7fc15d702a00
  1020 ms  0x28f2 SECKEY_DestroyPrivateKey()
  1020 ms  0x28f2 privk:0x7fc15dacd020::7fc15dacd020  30 3d b0 5d                                      0=.]
  1020 ms  0x28f2 privk:0x7fc15dacd020::7fc15dacd020  e5 e5 e5 e5                                      ....
  1021 ms  0x28f2 SECKEY_DestroyPrivateKey()
  1021 ms  0x28f2 privk:0x7fc15dacb020::7fc15dacb020  70 3e b0 5d                                      p>.]
  1021 ms  0x28f2 privk:0x7fc15dacb020::7fc15dacb020  e5 e5 e5 e5                                      ....
  1301 ms  0x28f2 SSL_ImportFD()
  1301 ms  0x28f2 ret:0x7fc15d72d0a0
  1302 ms  0x28f2 SSL_AuthCertificateHook()
  1302 ms  0x28f2 fd:0x7fc15d72d0a0
  1302 ms  0x28f2 ret:0x0
  1302 ms  0x28f2 PR_Connect()
  1302 ms  0x28f2 fd:0x7fc15d72d0a0
  1328 ms  0x28f2 SECKEY_CreateECPrivateKey()
  1328 ms  0x28f2 cx:0x7fc15d70f8c8
  1330 ms     | 0x28f2 EC_ValidatePublicKey()
  1330 ms     | 0x28f2 ret:0x0
  1330 ms  0x28f2 ret:0x7fc15dacc820::7fc15dacc820  b0 ea 70 5d                                      ..p]
  1330 ms  0x28f2 SECKEY_CreateECPrivateKey()
  1330 ms  0x28f2 cx:0x7fc15d70f8c8
  1332 ms     | 0x28f2 EC_ValidatePublicKey()
  1337 ms     | 0x28f2 ret:0x0
  1338 ms  0x28f2 ret:0x7fc15dad2820::7fc15dad2820  70 e9 70 5d                                      p.p]
           /* TID 0x2954 */
  1391 ms  0x2954 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1392 ms  0x2954 ret:0x0
           /* TID 0x28f2 */
  1392 ms  SECKEY_ECParamsToKeySize()
  1392 ms  0x28f2 ret:0x100
  1392 ms  0x28f2 SECKEY_CreateECPrivateKey()
  1392 ms  0x28f2 cx:0x7fc15d70f8c8
  1394 ms     | 0x28f2 EC_ValidatePublicKey()
  1399 ms     | 0x28f2 ret:0x0
  1399 ms  0x28f2 ret:0x7fc15db83020::7fc15db83020  10 ef 70 5d                                      ..p]
  1399 ms  0x28f2 PK11_PubDeriveWithKDF()
  1399 ms  0x28f2 seckey:0x7fc15db83020
  1399 ms     | 0x28f2 EC_ValidatePublicKey()
  1404 ms     | 0x28f2 ret:0x0
  1408 ms  0x28f2 ret:0x7fc15e8b1b00
  1408 ms  0x28f2 PK11_DeriveWithFlags()
  1408 ms  0x28f2 basekey:0x7fc15e8b1b00
  1408 ms     | 0x28f2 PK11_DeriveWithTemplate()
  1408 ms  0x28f2 ret:0x7fc15d703580
  1408 ms  0x28f2 PK11_Derive()
  1408 ms  0x28f2 basekey:0x7fc15d703580
  1408 ms     | 0x28f2 PK11_DeriveWithTemplate()
  1408 ms  0x28f2 ret:0x7fc15d703600
  1408 ms  0x28f2 SECKEY_DestroyPrivateKey()
  1408 ms  0x28f2 privk:0x7fc15db83020::7fc15db83020  10 ef 70 5d                                      ..p]
  1409 ms  0x28f2 privk:0x7fc15db83020::7fc15db83020  e5 e5 e5 e5                                      ....
  1409 ms  0x28f2 PK11_Encrypt()
  1409 ms  0x28f2 symkey:0x7fc15d703780
  1409 ms  0x28f2 SSL_AuthCertificateComplete()
  1409 ms  0x28f2 fd:0x7fc15d72d0a0
  1409 ms  0x28f2 err:0x0
  1410 ms  0x28f2 PK11_Encrypt()
  1410 ms  0x28f2 symkey:0x7fc15d703780
  1461 ms  0x28f2 SECKEY_DestroyPrivateKey()
  1461 ms  0x28f2 privk:0x7fc15dad2820::7fc15dad2820  70 e9 70 5d                                      p.p]
  1461 ms  0x28f2 privk:0x7fc15dad2820::7fc15dad2820  e5 e5 e5 e5                                      ....
  1461 ms  0x28f2 SECKEY_DestroyPrivateKey()
  1461 ms  0x28f2 privk:0x7fc15dacc820::7fc15dacc820  b0 ea 70 5d                                      ..p]
  1462 ms  0x28f2 privk:0x7fc15dacc820::7fc15dacc820  e5 e5 e5 e5                                      ....
  1466 ms  0x28f2 PK11_Encrypt()
  1466 ms  0x28f2 symkey:0x7fc15d703780
  1497 ms  0x28f2 PK11_Encrypt()
  1497 ms  0x28f2 symkey:0x7fc15d703780
  1528 ms  0x28f2 PK11_Encrypt()
  1528 ms  0x28f2 symkey:0x7fc15d703780
  1558 ms  0x28f2 PK11_Encrypt()
  1558 ms  0x28f2 symkey:0x7fc15d703780
  1676 ms  0x28f2 PK11_Encrypt()
  1676 ms  0x28f2 symkey:0x7fc15d703780
  1709 ms  0x28f2 PK11_Encrypt()
  1709 ms  0x28f2 symkey:0x7fc15d703780
  1741 ms  0x28f2 PK11_Encrypt()
  1741 ms  0x28f2 symkey:0x7fc15d703780
           /* TID 0x2948 */
  1769 ms  0x2948 PR_Close()
  1769 ms  0x2948 fd:0x7fc15d72d190
  1769 ms  0x2948 PR_Close()
  1769 ms  0x2948 fd:0x7fc15d72d250
  1769 ms  0x2948 PR_Close()
  1769 ms  0x2948 fd:0x7fc15d72d190
  1769 ms  0x2948 PR_Close()
  1769 ms  0x2948 fd:0x7fc15d72d250
  1769 ms  0x2948 PR_Close()
  1769 ms  0x2948 fd:0x7fc15d72d190
  1769 ms  0x2948 PR_Close()
  1769 ms  0x2948 fd:0x7fc15d72d250
  1769 ms  0x2948 PR_Close()
  1769 ms  0x2948 fd:0x7fc15d72d190
  1770 ms  0x2948 PR_Close()
  1770 ms  0x2948 fd:0x7fc15d72d250
  1770 ms  0x2948 PR_Close()
  1770 ms  0x2948 fd:0x7fc15d72d190
  1770 ms  0x2948 PR_Close()
  1770 ms  0x2948 fd:0x7fc15d72d250
  1770 ms  0x2948 PR_Close()
  1770 ms  0x2948 fd:0x7fc15d72d190
  1770 ms  0x2948 PR_Close()
  1770 ms  0x2948 fd:0x7fc15d72d250
  1770 ms  0x2948 PR_Close()
  1770 ms  0x2948 fd:0x7fc15d72d190
  1770 ms  0x2948 PR_Close()
  1770 ms  0x2948 fd:0x7fc15d72d250
  1770 ms  0x2948 PR_Close()
  1770 ms  0x2948 fd:0x7fc15d72d190
  1770 ms  0x2948 PR_Close()
  1770 ms  0x2948 fd:0x7fc15d72d250
  1771 ms  0x2948 PR_Close()
  1771 ms  0x2948 fd:0x7fc15d72d190
  1771 ms  0x2948 PR_Close()
  1771 ms  0x2948 fd:0x7fc15d72d250
  1771 ms  0x2948 PR_Close()
  1771 ms  0x2948 fd:0x7fc15d72d190
  1771 ms  0x2948 PR_Close()
  1771 ms  0x2948 fd:0x7fc15d72d250
  1771 ms  0x2948 PR_Close()
  1771 ms  0x2948 fd:0x7fc15d72d190
  1771 ms  0x2948 PR_Close()
  1771 ms  0x2948 fd:0x7fc15d72d250
  1771 ms  0x2948 PR_Close()
  1771 ms  0x2948 fd:0x7fc15d72d190
  1771 ms  0x2948 PR_Close()
  1771 ms  0x2948 fd:0x7fc15d72d250
  1771 ms  0x2948 PR_Close()
  1771 ms  0x2948 fd:0x7fc15d72d190
  1771 ms  0x2948 PR_Close()
  1771 ms  0x2948 fd:0x7fc15d72d250
  1771 ms  0x2948 PR_Close()
  1771 ms  0x2948 fd:0x7fc15d72d190
  1772 ms  0x2948 PR_Close()
  1772 ms  0x2948 fd:0x7fc15d72d250
  1775 ms  0x2948 PR_Close()
  1775 ms  0x2948 fd:0x7fc15d72d190
  1775 ms  0x2948 PR_Close()
  1775 ms  0x2948 fd:0x7fc15d72d160
  1778 ms  0x2948 PR_Close()
  1778 ms  0x2948 fd:0x7fc15d72d160
  1778 ms  0x2948 PR_Close()
  1778 ms  0x2948 fd:0x7fc15d72d190
  1781 ms  0x2948 PR_Close()
  1781 ms  0x2948 fd:0x7fc15d72d190
  1781 ms  0x2948 PR_Close()
  1781 ms  0x2948 fd:0x7fc15d72d190
  1784 ms  0x2948 PR_Close()
  1784 ms  0x2948 fd:0x7fc15d72d190
  1784 ms  0x2948 PR_Close()
  1784 ms  0x2948 fd:0x7fc15d72d190
  1836 ms  0x2948 PR_Close()
  1836 ms  0x2948 fd:0x7fc15d72d190
  1837 ms  0x2948 PR_Close()
  1837 ms  0x2948 fd:0x7fc15d72d190
  1844 ms  0x2948 PR_Close()
  1844 ms  0x2948 fd:0x7fc15d72d190
  1844 ms  0x2948 PR_Close()
  1844 ms  0x2948 fd:0x7fc15d72d190
  1850 ms  0x2948 PR_Close()
  1850 ms  0x2948 fd:0x7fc15d72d190
  1851 ms  0x2948 PR_Close()
  1851 ms  0x2948 fd:0x7fc15d72d190
  1852 ms  0x2948 PR_Close()
  1852 ms  0x2948 fd:0x7fc15d72d190
  1853 ms  0x2948 PR_Close()
  1853 ms  0x2948 fd:0x7fc15d72d190
           /* TID 0x2946 */
  1853 ms  0x2946 PR_Close()
  1853 ms  0x2946 fd:0x7fc15d72d190
  1853 ms  0x2946 PR_Close()
  1853 ms  0x2946 fd:0x7fc15d72d190
  1853 ms  0x2946 PR_Close()
  1853 ms  0x2946 fd:0x7fc15d72d190
  1853 ms  0x2946 PR_Close()
  1853 ms  0x2946 fd:0x7fc15d72d190
  1853 ms  0x2946 PR_Close()
  1853 ms  0x2946 fd:0x7fc15d72d190
  1853 ms  0x2946 PR_Close()
  1853 ms  0x2946 fd:0x7fc15d72d190
  1853 ms  0x2946 PR_Close()
  1853 ms  0x2946 fd:0x7fc15d72d190
  1853 ms  0x2946 PR_Close()
  1853 ms  0x2946 fd:0x7fc15d72d190
  1853 ms  0x2946 PR_Close()
  1853 ms  0x2946 fd:0x7fc15d72d190
  1853 ms  0x2946 PR_Close()
  1853 ms  0x2946 fd:0x7fc15d72d190
  1853 ms  0x2946 PR_Close()
  1853 ms  0x2946 fd:0x7fc15d72d190
  1853 ms  0x2946 PR_Close()
  1853 ms  0x2946 fd:0x7fc15d72d190
  1853 ms  0x2946 PR_Close()
  1853 ms  0x2946 fd:0x7fc15d72d190
  1853 ms  0x2946 PR_Close()
  1853 ms  0x2946 fd:0x7fc15d72d190
  1853 ms  0x2946 PR_Close()
  1853 ms  0x2946 fd:0x7fc15d72d190
           /* TID 0x2957 */
  2356 ms  0x2957 PR_Close()
  2356 ms  0x2957 fd:0x7fc15d72d040
  2359 ms  0x2957 PR_Close()
  2359 ms  0x2957 fd:0x7fc15d72d040
  2797 ms  0x2957 PR_Close()
  2797 ms  0x2957 fd:0x7fc15d72d0d0
           /* TID 0x28fa */
  4146 ms  0x28fa PR_Close()
  4146 ms  0x28fa fd:0x7fc15d72d0d0
  4146 ms  0x28fa PR_Close()
  4146 ms  0x28fa fd:0x7fc15d72d220
           /* TID 0x28f2 */
  4544 ms  0x28f2 SSL_ImportFD()
  4544 ms  0x28f2 ret:0x7fc15edab8b0
  4544 ms  0x28f2 SSL_AuthCertificateHook()
  4544 ms  0x28f2 fd:0x7fc15edab8b0
  4544 ms  0x28f2 ret:0x0
  4545 ms  0x28f2 PR_Connect()
  4545 ms  0x28f2 fd:0x7fc15edab8b0
  4583 ms  0x28f2 SECKEY_CreateECPrivateKey()
  4583 ms  0x28f2 cx:0x7fc15d70fc08
  4585 ms     | 0x28f2 EC_ValidatePublicKey()
  4585 ms     | 0x28f2 ret:0x0
  4585 ms  0x28f2 ret:0x7fc14c893020::7fc14c893020  b0 9a dd 5e                                      ...^
  4585 ms  0x28f2 SECKEY_CreateECPrivateKey()
  4585 ms  0x28f2 cx:0x7fc15d70fc08
  4587 ms     | 0x28f2 EC_ValidatePublicKey()
  4592 ms     | 0x28f2 ret:0x0
  4592 ms  0x28f2 ret:0x7fc14c895020::7fc14c895020  30 9d dd 5e                                      0..^
  4647 ms  0x28f2 PK11_Derive()
  4647 ms  0x28f2 basekey:0x7fc15e8b1b00
  4648 ms     | 0x28f2 PK11_DeriveWithTemplate()
  4648 ms  0x28f2 ret:0x7fc15edb7980
  4648 ms  0x28f2 PK11_PubDeriveWithKDF()
  4648 ms  0x28f2 seckey:0x7fc14c893020
  4648 ms     | 0x28f2 EC_ValidatePublicKey()
  4648 ms     | 0x28f2 ret:0x0
  4649 ms  0x28f2 ret:0x7fc15e8b1b00
  4649 ms  SECKEY_ECParamsToKeySize()
  4650 ms  0x28f2 ret:0xff
  4650 ms  0x28f2 PK11_DeriveWithFlags()
  4650 ms  0x28f2 basekey:0x7fc15edb7980
  4650 ms     | 0x28f2 PK11_DeriveWithTemplate()
  4650 ms  0x28f2 ret:0x7fc15edb7a00
  4650 ms  0x28f2 PK11_Derive()
  4650 ms  0x28f2 basekey:0x7fc15e8b1b00
  4650 ms     | 0x28f2 PK11_DeriveWithTemplate()
  4650 ms  0x28f2 ret:0x7fc15edb7a80
  4650 ms  0x28f2 PK11_DeriveWithFlags()
  4650 ms  0x28f2 basekey:0x7fc15edb7a80
  4650 ms     | 0x28f2 PK11_DeriveWithTemplate()
  4650 ms  0x28f2 ret:0x7fc15edb7980
  4650 ms  0x28f2 PK11_DeriveWithFlags()
  4650 ms  0x28f2 basekey:0x7fc15edb7a80
  4650 ms     | 0x28f2 PK11_DeriveWithTemplate()
  4650 ms  0x28f2 ret:0x7fc15e8b1b00
  4650 ms  0x28f2 PK11_DeriveWithFlags()
  4650 ms  0x28f2 basekey:0x7fc15edb7a80
  4650 ms     | 0x28f2 PK11_DeriveWithTemplate()
  4650 ms  0x28f2 ret:0x7fc15edb7a00
  4650 ms  0x28f2 PK11_Derive()
  4650 ms  0x28f2 basekey:0x7fc15edb7b00
  4650 ms     | 0x28f2 PK11_DeriveWithTemplate()
  4650 ms  0x28f2 ret:0x7fc15edb7b80
  4651 ms  0x28f2 PK11_DeriveWithFlags()
  4651 ms  0x28f2 basekey:0x7fc15e8b1b00
  4651 ms     | 0x28f2 PK11_DeriveWithTemplate()
  4651 ms  0x28f2 ret:0x7fc15edb7a80
  4651 ms  0x28f2 PK11_DeriveWithFlags()
  4651 ms  0x28f2 basekey:0x7fc15e8b1b00
  4651 ms     | 0x28f2 PK11_DeriveWithTemplate()
  4651 ms  0x28f2 ret:0x7fc15edb7a00
  4656 ms  SECKEY_ECParamsToKeySize()
  4656 ms  0x28f2 ret:0x100
  4656 ms  SECKEY_ECParamsToBasePointOrderLen()
  4656 ms  0x28f2 ret:0x100
  4656 ms  SECKEY_ECParamsToBasePointOrderLen()
  4656 ms  0x28f2 ret:0x100
  4656 ms  0x28f2 EC_ValidatePublicKey()
  4661 ms  0x28f2 ret:0x0
  4668 ms  0x28f2 PK11_DeriveWithFlags()
  4668 ms  0x28f2 basekey:0x7fc15e8b1b00
  4668 ms     | 0x28f2 PK11_DeriveWithTemplate()
  4668 ms  0x28f2 ret:0x7fc15edb7a00
  4668 ms  0x28f2 PR_Connect()
  4668 ms  0x28f2 fd:0x7fc15edabdf0
           /* TID 0x28fa */
  4852 ms  0x28fa PR_Close()
  4852 ms  0x28fa fd:0x7fc15edab940
           /* TID 0x2954 */
  4852 ms  0x2954 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4853 ms  0x2954 ret:0x0
           /* TID 0x28f2 */
  4983 ms  0x28f2 SSL_AuthCertificateComplete()
  4983 ms  0x28f2 fd:0x7fc15edab8b0
  4983 ms  0x28f2 err:0x0
  4983 ms     | 0x28f2 PK11_DeriveWithFlags()
  4983 ms     | 0x28f2 basekey:0x7fc15edb7b80
  4983 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  4983 ms     | 0x28f2 ret:0x7fc15edb7a00
  4983 ms     | 0x28f2 PK11_DeriveWithFlags()
  4983 ms     | 0x28f2 basekey:0x7fc15edb7b80
  4983 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  4983 ms     | 0x28f2 ret:0x7fc15edb7b00
  4983 ms     | 0x28f2 PK11_DeriveWithFlags()
  4983 ms     | 0x28f2 basekey:0x7fc15edb7b80
  4983 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  4983 ms     | 0x28f2 ret:0x7fc15edb7d80
  4983 ms     | 0x28f2 PK11_DeriveWithFlags()
  4983 ms     | 0x28f2 basekey:0x7fc15edb7980
  4983 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  4983 ms     | 0x28f2 ret:0x7fc15edb7e80
  4983 ms     | 0x28f2 PK11_DeriveWithFlags()
  4983 ms     | 0x28f2 basekey:0x7fc15edb7980
  4983 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  4983 ms     | 0x28f2 ret:0x7fc15edb7f00
  4983 ms     | 0x28f2 PK11_DeriveWithFlags()
  4983 ms     | 0x28f2 basekey:0x7fc15edb7b00
  4984 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  4984 ms     | 0x28f2 ret:0x7fc15edb7f00
  4984 ms     | 0x28f2 PK11_DeriveWithFlags()
  4984 ms     | 0x28f2 basekey:0x7fc15edb7b00
  4984 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  4984 ms     | 0x28f2 ret:0x7fc15edb8000
  4984 ms     | 0x28f2 PK11_DeriveWithFlags()
  4984 ms     | 0x28f2 basekey:0x7fc15edb7980
  4984 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  4984 ms     | 0x28f2 ret:0x7fc15edb7a80
  4984 ms     | 0x28f2 PK11_Encrypt()
  4984 ms     | 0x28f2 symkey:0x7fc15edb7e80
  4984 ms     | 0x28f2 PK11_DeriveWithFlags()
  4984 ms     | 0x28f2 basekey:0x7fc15edb7a00
  4984 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  4984 ms     | 0x28f2 ret:0x7fc15edb7a80
  4984 ms     | 0x28f2 PK11_DeriveWithFlags()
  4984 ms     | 0x28f2 basekey:0x7fc15edb7a00
  4984 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  4984 ms     | 0x28f2 ret:0x7fc15edb8000
  4984 ms     | 0x28f2 PK11_DeriveWithFlags()
  4984 ms     | 0x28f2 basekey:0x7fc15edb7b80
  4984 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  4985 ms     | 0x28f2 ret:0x7fc15edb7e80
  4985 ms     | 0x28f2 SECKEY_DestroyPrivateKey()
  4985 ms     | 0x28f2 privk:0x7fc14c895020::7fc14c895020  30 9d dd 5e                                      0..^
  4985 ms     | 0x28f2 privk:0x7fc14c895020::7fc14c895020  e5 e5 e5 e5                                      ....
  4985 ms     | 0x28f2 SECKEY_DestroyPrivateKey()
  4985 ms     | 0x28f2 privk:0x7fc14c893020::7fc14c893020  b0 9a dd 5e                                      ...^
  4985 ms     | 0x28f2 privk:0x7fc14c893020::7fc14c893020  e5 e5 e5 e5                                      ....
  4986 ms  0x28f2 PK11_Encrypt()
  4986 ms  0x28f2 symkey:0x7fc15edb7a80
  4986 ms  0x28f2 PK11_Encrypt()
  4986 ms  0x28f2 symkey:0x7fc15edb7a80
  5063 ms  0x28f2 PK11_DeriveWithFlags()
  5063 ms  0x28f2 basekey:0x7fc15edb7e80
  5063 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5063 ms  0x28f2 ret:0x7fc15e8b1b00
  5063 ms  0x28f2 PK11_DeriveWithFlags()
  5063 ms  0x28f2 basekey:0x7fc15edb7e80
  5063 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5063 ms  0x28f2 ret:0x7fc15e8b1b00
  5063 ms  0x28f2 PK11_Encrypt()
  5063 ms  0x28f2 symkey:0x7fc15edb7a80
           /* TID 0x2909 */
  5157 ms  0x2909 PR_Close()
  5157 ms  0x2909 fd:0x7fc162fe1310
           /* TID 0x28f2 */
  5192 ms  0x28f2 PK11_Encrypt()
  5192 ms  0x28f2 symkey:0x7fc15edb7a80
           /* TID 0x28fa */
  5232 ms  0x28fa PR_Close()
  5232 ms  0x28fa fd:0x7fc15edab760
           /* TID 0x28f2 */
  5248 ms  0x28f2 PK11_Encrypt()
  5248 ms  0x28f2 symkey:0x7fc15edb7a80
  5249 ms  0x28f2 PK11_Encrypt()
  5249 ms  0x28f2 symkey:0x7fc15edb7a80
  5259 ms  0x28f2 SSL_ImportFD()
  5259 ms  0x28f2 ret:0x7fc14c841820
  5259 ms  0x28f2 SSL_AuthCertificateHook()
  5259 ms  0x28f2 fd:0x7fc14c841820
  5259 ms  0x28f2 ret:0x0
  5259 ms  0x28f2 PR_Connect()
  5259 ms  0x28f2 fd:0x7fc14c841820
  5260 ms  0x28f2 SSL_ImportFD()
  5260 ms  0x28f2 ret:0x7fc14c841a00
  5260 ms  0x28f2 SSL_AuthCertificateHook()
  5260 ms  0x28f2 fd:0x7fc14c841a00
  5260 ms  0x28f2 ret:0x0
  5260 ms  0x28f2 PR_Connect()
  5260 ms  0x28f2 fd:0x7fc14c841a00
  5267 ms  0x28f2 PK11_Encrypt()
  5267 ms  0x28f2 symkey:0x7fc15edb7a80
  5267 ms  0x28f2 SSL_ImportFD()
  5268 ms  0x28f2 ret:0x7fc14c8414f0
  5268 ms  0x28f2 SSL_AuthCertificateHook()
  5268 ms  0x28f2 fd:0x7fc14c8414f0
  5268 ms  0x28f2 ret:0x0
  5268 ms  0x28f2 PR_Connect()
  5268 ms  0x28f2 fd:0x7fc14c8414f0
  5272 ms  0x28f2 PK11_Encrypt()
  5272 ms  0x28f2 symkey:0x7fc15edb7a80
  5287 ms  0x28f2 PK11_Encrypt()
  5287 ms  0x28f2 symkey:0x7fc15edb7a80
           /* TID 0x28fa */
  5288 ms  0x28fa PR_Close()
  5288 ms  0x28fa fd:0x7fc14c64da30
           /* TID 0x28f2 */
  5289 ms  0x28f2 PK11_Encrypt()
  5289 ms  0x28f2 symkey:0x7fc15edb7a80
  5297 ms  0x28f2 SECKEY_CreateECPrivateKey()
  5297 ms  0x28f2 cx:0x7fc15d7105c8
  5297 ms     | 0x28f2 EC_ValidatePublicKey()
  5297 ms     | 0x28f2 ret:0x0
  5298 ms  0x28f2 ret:0x7fc14c81b020::7fc14c81b020  a0 3b 84 4c                                      .;.L
  5298 ms  0x28f2 SECKEY_CreateECPrivateKey()
  5298 ms  0x28f2 cx:0x7fc15d7105c8
  5298 ms     | 0x28f2 EC_ValidatePublicKey()
  5300 ms     | 0x28f2 ret:0x0
  5300 ms  0x28f2 ret:0x7fc14c81d020::7fc14c81d020  d0 3d 84 4c                                      .=.L
  5301 ms  0x28f2 SECKEY_CreateECPrivateKey()
  5301 ms  0x28f2 cx:0x7fc15d710768
  5302 ms     | 0x28f2 EC_ValidatePublicKey()
  5302 ms     | 0x28f2 ret:0x0
  5302 ms  0x28f2 ret:0x7fc14c81f820::7fc14c81f820  c0 3e 84 4c                                      .>.L
  5302 ms  0x28f2 SECKEY_CreateECPrivateKey()
  5302 ms  0x28f2 cx:0x7fc15d710768
  5302 ms     | 0x28f2 EC_ValidatePublicKey()
  5304 ms     | 0x28f2 ret:0x0
  5304 ms  0x28f2 ret:0x7fc14c821820::7fc14c821820  b0 e0 77 5d                                      ..w]
  5310 ms  0x28f2 SECKEY_CreateECPrivateKey()
  5310 ms  0x28f2 cx:0x7fc15d710908
  5311 ms     | 0x28f2 EC_ValidatePublicKey()
  5311 ms     | 0x28f2 ret:0x0
  5311 ms  0x28f2 ret:0x7fc15d789020::7fc15d789020  30 e3 77 5d                                      0.w]
  5311 ms  0x28f2 SECKEY_CreateECPrivateKey()
  5311 ms  0x28f2 cx:0x7fc15d710908
  5311 ms     | 0x28f2 EC_ValidatePublicKey()
  5313 ms     | 0x28f2 ret:0x0
  5313 ms  0x28f2 ret:0x7fc15d78b020::7fc15d78b020  10 e5 77 5d                                      ..w]
  5317 ms  0x28f2 PK11_Encrypt()
  5317 ms  0x28f2 symkey:0x7fc15edb7a80
           /* TID 0x28fa */
  5345 ms  0x28fa PR_Close()
  5345 ms  0x28fa fd:0x7fc14c64dfd0
  5347 ms  0x28fa PR_Close()
  5347 ms  0x28fa fd:0x7fc14c64da60
           /* TID 0x28f2 */
  5353 ms  0x28f2 PK11_Derive()
  5353 ms  0x28f2 basekey:0x7fc15e8b1b00
  5354 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5354 ms  0x28f2 ret:0x7fc15edb7980
  5354 ms  0x28f2 PK11_PubDeriveWithKDF()
  5354 ms  0x28f2 seckey:0x7fc14c81b020
  5354 ms     | 0x28f2 EC_ValidatePublicKey()
  5354 ms     | 0x28f2 ret:0x0
  5354 ms  0x28f2 ret:0x7fc15e8b1b00
  5354 ms  SECKEY_ECParamsToKeySize()
  5354 ms  0x28f2 ret:0xff
  5355 ms  0x28f2 PK11_DeriveWithFlags()
  5355 ms  0x28f2 basekey:0x7fc15edb7980
  5355 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5355 ms  0x28f2 ret:0x7fc15edb7b80
  5355 ms  0x28f2 PK11_Derive()
  5355 ms  0x28f2 basekey:0x7fc15e8b1b00
  5355 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5355 ms  0x28f2 ret:0x7fc15edb8000
  5355 ms  0x28f2 PK11_DeriveWithFlags()
  5355 ms  0x28f2 basekey:0x7fc15edb8000
  5355 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5355 ms  0x28f2 ret:0x7fc15edb7980
  5355 ms  0x28f2 PK11_DeriveWithFlags()
  5355 ms  0x28f2 basekey:0x7fc15edb8000
  5355 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5355 ms  0x28f2 ret:0x7fc15e8b1b00
  5355 ms  0x28f2 PK11_DeriveWithFlags()
  5355 ms  0x28f2 basekey:0x7fc15edb8000
  5355 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5355 ms  0x28f2 ret:0x7fc15edb7b80
  5355 ms  0x28f2 PK11_Derive()
  5355 ms  0x28f2 basekey:0x7fc14c826e00
  5355 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5355 ms  0x28f2 ret:0x7fc14c827b80
  5355 ms  0x28f2 PK11_DeriveWithFlags()
  5355 ms  0x28f2 basekey:0x7fc15e8b1b00
  5355 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5355 ms  0x28f2 ret:0x7fc15edb8000
  5355 ms  0x28f2 PK11_DeriveWithFlags()
  5355 ms  0x28f2 basekey:0x7fc15e8b1b00
  5355 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5355 ms  0x28f2 ret:0x7fc15edb7b80
  5357 ms  SECKEY_ECParamsToKeySize()
  5357 ms  0x28f2 ret:0x100
  5357 ms  SECKEY_ECParamsToBasePointOrderLen()
  5357 ms  0x28f2 ret:0x100
  5357 ms  SECKEY_ECParamsToBasePointOrderLen()
  5357 ms  0x28f2 ret:0x100
  5357 ms  0x28f2 EC_ValidatePublicKey()
  5359 ms  0x28f2 ret:0x0
  5362 ms  0x28f2 PK11_DeriveWithFlags()
  5362 ms  0x28f2 basekey:0x7fc15e8b1b00
  5362 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5362 ms  0x28f2 ret:0x7fc15edb7b80
  5362 ms  0x28f2 SSL_AuthCertificateComplete()
  5362 ms  0x28f2 fd:0x7fc14c841820
  5362 ms  0x28f2 err:0x0
  5362 ms     | 0x28f2 PK11_DeriveWithFlags()
  5362 ms     | 0x28f2 basekey:0x7fc14c827b80
  5362 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5362 ms     | 0x28f2 ret:0x7fc15edb7b80
  5362 ms     | 0x28f2 PK11_DeriveWithFlags()
  5362 ms     | 0x28f2 basekey:0x7fc14c827b80
  5362 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5362 ms     | 0x28f2 ret:0x7fc14c826e00
  5362 ms     | 0x28f2 PK11_DeriveWithFlags()
  5362 ms     | 0x28f2 basekey:0x7fc14c827b80
  5362 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5362 ms     | 0x28f2 ret:0x7fc14c87c380
  5362 ms     | 0x28f2 PK11_DeriveWithFlags()
  5362 ms     | 0x28f2 basekey:0x7fc15edb7980
  5362 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5362 ms     | 0x28f2 ret:0x7fc14c87c400
  5362 ms     | 0x28f2 PK11_DeriveWithFlags()
  5362 ms     | 0x28f2 basekey:0x7fc15edb7980
  5362 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5362 ms     | 0x28f2 ret:0x7fc14c87c500
  5362 ms     | 0x28f2 PK11_DeriveWithFlags()
  5362 ms     | 0x28f2 basekey:0x7fc14c826e00
  5362 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5362 ms     | 0x28f2 ret:0x7fc14c87c500
  5362 ms     | 0x28f2 PK11_DeriveWithFlags()
  5362 ms     | 0x28f2 basekey:0x7fc14c826e00
  5362 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5362 ms     | 0x28f2 ret:0x7fc14c87c580
  5362 ms     | 0x28f2 PK11_DeriveWithFlags()
  5362 ms     | 0x28f2 basekey:0x7fc15edb7980
  5362 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5362 ms     | 0x28f2 ret:0x7fc15edb8000
  5362 ms     | 0x28f2 PK11_Encrypt()
  5362 ms     | 0x28f2 symkey:0x7fc14c87c400
  5362 ms     | 0x28f2 PK11_DeriveWithFlags()
  5362 ms     | 0x28f2 basekey:0x7fc15edb7b80
  5362 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5362 ms     | 0x28f2 ret:0x7fc15edb8000
  5362 ms     | 0x28f2 PK11_DeriveWithFlags()
  5362 ms     | 0x28f2 basekey:0x7fc15edb7b80
  5362 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5362 ms     | 0x28f2 ret:0x7fc14c87c580
  5362 ms     | 0x28f2 PK11_DeriveWithFlags()
  5362 ms     | 0x28f2 basekey:0x7fc14c827b80
  5362 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5362 ms     | 0x28f2 ret:0x7fc14c87c400
  5362 ms     | 0x28f2 SECKEY_DestroyPrivateKey()
  5362 ms     | 0x28f2 privk:0x7fc14c81d020::7fc14c81d020  d0 3d 84 4c                                      .=.L
  5363 ms     | 0x28f2 privk:0x7fc14c81d020::7fc14c81d020  e5 e5 e5 e5                                      ....
  5363 ms     | 0x28f2 SECKEY_DestroyPrivateKey()
  5363 ms     | 0x28f2 privk:0x7fc14c81b020::7fc14c81b020  a0 3b 84 4c                                      .;.L
  5363 ms     | 0x28f2 privk:0x7fc14c81b020::7fc14c81b020  e5 e5 e5 e5                                      ....
  5363 ms  0x28f2 PK11_Encrypt()
  5363 ms  0x28f2 symkey:0x7fc15edb8000
  5363 ms  0x28f2 PK11_Encrypt()
  5363 ms  0x28f2 symkey:0x7fc15edb8000
  5364 ms  0x28f2 PK11_Derive()
  5364 ms  0x28f2 basekey:0x7fc15e8b1b00
  5364 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5364 ms  0x28f2 ret:0x7fc15edb7980
  5364 ms  0x28f2 PK11_PubDeriveWithKDF()
  5364 ms  0x28f2 seckey:0x7fc14c81f820
  5364 ms     | 0x28f2 EC_ValidatePublicKey()
  5364 ms     | 0x28f2 ret:0x0
  5364 ms  0x28f2 ret:0x7fc15e8b1b00
  5364 ms  SECKEY_ECParamsToKeySize()
  5364 ms  0x28f2 ret:0xff
  5364 ms  0x28f2 PK11_DeriveWithFlags()
  5364 ms  0x28f2 basekey:0x7fc15edb7980
  5364 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5364 ms  0x28f2 ret:0x7fc14c827b80
  5364 ms  0x28f2 PK11_Derive()
  5364 ms  0x28f2 basekey:0x7fc15e8b1b00
  5364 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5364 ms  0x28f2 ret:0x7fc14c87c580
  5364 ms  0x28f2 PK11_DeriveWithFlags()
  5364 ms  0x28f2 basekey:0x7fc14c87c580
  5364 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5365 ms  0x28f2 ret:0x7fc15edb7980
  5365 ms  0x28f2 PK11_DeriveWithFlags()
  5365 ms  0x28f2 basekey:0x7fc14c87c580
  5365 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5365 ms  0x28f2 ret:0x7fc15e8b1b00
  5365 ms  0x28f2 PK11_DeriveWithFlags()
  5365 ms  0x28f2 basekey:0x7fc14c87c580
  5365 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5365 ms  0x28f2 ret:0x7fc14c827b80
  5365 ms  0x28f2 PK11_Derive()
  5365 ms  0x28f2 basekey:0x7fc14c87c680
  5365 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5365 ms  0x28f2 ret:0x7fc14c87c700
  5365 ms  0x28f2 PK11_DeriveWithFlags()
  5365 ms  0x28f2 basekey:0x7fc15e8b1b00
  5365 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5365 ms  0x28f2 ret:0x7fc14c87c580
  5365 ms  0x28f2 PK11_DeriveWithFlags()
  5365 ms  0x28f2 basekey:0x7fc15e8b1b00
  5365 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5365 ms  0x28f2 ret:0x7fc14c827b80
  5365 ms  SECKEY_ECParamsToKeySize()
  5365 ms  0x28f2 ret:0x100
  5366 ms  SECKEY_ECParamsToBasePointOrderLen()
  5366 ms  0x28f2 ret:0x100
  5366 ms  SECKEY_ECParamsToBasePointOrderLen()
  5366 ms  0x28f2 ret:0x100
  5366 ms  0x28f2 EC_ValidatePublicKey()
  5368 ms  0x28f2 ret:0x0
  5370 ms  0x28f2 PK11_DeriveWithFlags()
  5370 ms  0x28f2 basekey:0x7fc15e8b1b00
  5370 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5370 ms  0x28f2 ret:0x7fc14c827b80
  5370 ms  0x28f2 SSL_AuthCertificateComplete()
  5370 ms  0x28f2 fd:0x7fc14c841a00
  5370 ms  0x28f2 err:0x0
  5370 ms     | 0x28f2 PK11_DeriveWithFlags()
  5370 ms     | 0x28f2 basekey:0x7fc14c87c700
  5370 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5370 ms     | 0x28f2 ret:0x7fc14c827b80
  5370 ms     | 0x28f2 PK11_DeriveWithFlags()
  5370 ms     | 0x28f2 basekey:0x7fc14c87c700
  5370 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5370 ms     | 0x28f2 ret:0x7fc14c87c680
  5370 ms     | 0x28f2 PK11_DeriveWithFlags()
  5370 ms     | 0x28f2 basekey:0x7fc14c87c700
  5370 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5370 ms     | 0x28f2 ret:0x7fc14c87b080
  5370 ms     | 0x28f2 PK11_DeriveWithFlags()
  5370 ms     | 0x28f2 basekey:0x7fc15edb7980
  5370 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5370 ms     | 0x28f2 ret:0x7fc14c87b300
  5370 ms     | 0x28f2 PK11_DeriveWithFlags()
  5370 ms     | 0x28f2 basekey:0x7fc15edb7980
  5370 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5370 ms     | 0x28f2 ret:0x7fc14c87c980
  5370 ms     | 0x28f2 PK11_DeriveWithFlags()
  5370 ms     | 0x28f2 basekey:0x7fc14c87c680
  5371 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5371 ms     | 0x28f2 ret:0x7fc14c87c980
  5371 ms     | 0x28f2 PK11_DeriveWithFlags()
  5371 ms     | 0x28f2 basekey:0x7fc14c87c680
  5371 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5371 ms     | 0x28f2 ret:0x7fc14c87ca00
  5371 ms     | 0x28f2 PK11_DeriveWithFlags()
  5371 ms     | 0x28f2 basekey:0x7fc15edb7980
  5371 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5371 ms     | 0x28f2 ret:0x7fc14c87c580
  5371 ms     | 0x28f2 PK11_Encrypt()
  5371 ms     | 0x28f2 symkey:0x7fc14c87b300
  5371 ms     | 0x28f2 PK11_DeriveWithFlags()
  5371 ms     | 0x28f2 basekey:0x7fc14c827b80
  5371 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5371 ms     | 0x28f2 ret:0x7fc14c87c580
  5371 ms     | 0x28f2 PK11_DeriveWithFlags()
  5371 ms     | 0x28f2 basekey:0x7fc14c827b80
  5371 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5371 ms     | 0x28f2 ret:0x7fc14c87ca00
  5371 ms     | 0x28f2 PK11_DeriveWithFlags()
  5371 ms     | 0x28f2 basekey:0x7fc14c87c700
  5371 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5371 ms     | 0x28f2 ret:0x7fc14c87b300
  5371 ms     | 0x28f2 SECKEY_DestroyPrivateKey()
  5371 ms     | 0x28f2 privk:0x7fc14c821820::7fc14c821820  b0 e0 77 5d                                      ..w]
  5371 ms     | 0x28f2 privk:0x7fc14c821820::7fc14c821820  e5 e5 e5 e5                                      ....
  5371 ms     | 0x28f2 SECKEY_DestroyPrivateKey()
  5371 ms     | 0x28f2 privk:0x7fc14c81f820::7fc14c81f820  c0 3e 84 4c                                      .>.L
  5371 ms     | 0x28f2 privk:0x7fc14c81f820::7fc14c81f820  e5 e5 e5 e5                                      ....
  5373 ms  0x28f2 PK11_Encrypt()
  5373 ms  0x28f2 symkey:0x7fc14c87c580
  5373 ms  0x28f2 PK11_Encrypt()
  5373 ms  0x28f2 symkey:0x7fc14c87c580
  5373 ms  0x28f2 PK11_Derive()
  5373 ms  0x28f2 basekey:0x7fc15e8b1b00
  5373 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5373 ms  0x28f2 ret:0x7fc15edb7980
  5373 ms  0x28f2 PK11_PubDeriveWithKDF()
  5373 ms  0x28f2 seckey:0x7fc15d789020
  5373 ms     | 0x28f2 EC_ValidatePublicKey()
  5373 ms     | 0x28f2 ret:0x0
  5374 ms  0x28f2 ret:0x7fc15e8b1b00
  5374 ms  SECKEY_ECParamsToKeySize()
  5374 ms  0x28f2 ret:0xff
  5374 ms  0x28f2 PK11_DeriveWithFlags()
  5374 ms  0x28f2 basekey:0x7fc15edb7980
  5374 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5374 ms  0x28f2 ret:0x7fc14c87c700
  5374 ms  0x28f2 PK11_Derive()
  5374 ms  0x28f2 basekey:0x7fc15e8b1b00
  5374 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5374 ms  0x28f2 ret:0x7fc14c87ca00
  5374 ms  0x28f2 PK11_DeriveWithFlags()
  5374 ms  0x28f2 basekey:0x7fc14c87ca00
  5374 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5374 ms  0x28f2 ret:0x7fc15edb7980
  5374 ms  0x28f2 PK11_DeriveWithFlags()
  5374 ms  0x28f2 basekey:0x7fc14c87ca00
  5374 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5374 ms  0x28f2 ret:0x7fc15e8b1b00
  5374 ms  0x28f2 PK11_DeriveWithFlags()
  5374 ms  0x28f2 basekey:0x7fc14c87ca00
  5374 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5374 ms  0x28f2 ret:0x7fc14c87c700
  5374 ms  0x28f2 PK11_Derive()
  5374 ms  0x28f2 basekey:0x7fc14c87cc00
  5374 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5374 ms  0x28f2 ret:0x7fc14c87cc80
  5374 ms  0x28f2 PK11_DeriveWithFlags()
  5374 ms  0x28f2 basekey:0x7fc15e8b1b00
  5374 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5374 ms  0x28f2 ret:0x7fc14c87ca00
  5374 ms  0x28f2 PK11_DeriveWithFlags()
  5374 ms  0x28f2 basekey:0x7fc15e8b1b00
  5374 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5374 ms  0x28f2 ret:0x7fc14c87c700
  5375 ms  SECKEY_ECParamsToKeySize()
  5375 ms  0x28f2 ret:0x100
  5375 ms  SECKEY_ECParamsToBasePointOrderLen()
  5375 ms  0x28f2 ret:0x100
  5375 ms  SECKEY_ECParamsToBasePointOrderLen()
  5375 ms  0x28f2 ret:0x100
  5375 ms  0x28f2 EC_ValidatePublicKey()
  5377 ms  0x28f2 ret:0x0
  5379 ms  0x28f2 PK11_DeriveWithFlags()
  5379 ms  0x28f2 basekey:0x7fc15e8b1b00
  5379 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5379 ms  0x28f2 ret:0x7fc14c87c700
  5379 ms  0x28f2 SSL_AuthCertificateComplete()
  5379 ms  0x28f2 fd:0x7fc14c8414f0
  5379 ms  0x28f2 err:0x0
  5379 ms     | 0x28f2 PK11_DeriveWithFlags()
  5379 ms     | 0x28f2 basekey:0x7fc14c87cc80
  5379 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5379 ms     | 0x28f2 ret:0x7fc14c87c700
  5379 ms     | 0x28f2 PK11_DeriveWithFlags()
  5379 ms     | 0x28f2 basekey:0x7fc14c87cc80
  5379 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5379 ms     | 0x28f2 ret:0x7fc14c87cc00
  5379 ms     | 0x28f2 PK11_DeriveWithFlags()
  5379 ms     | 0x28f2 basekey:0x7fc14c87cc80
  5379 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5379 ms     | 0x28f2 ret:0x7fc14c87cd80
  5379 ms     | 0x28f2 PK11_DeriveWithFlags()
  5379 ms     | 0x28f2 basekey:0x7fc15edb7980
  5379 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5379 ms     | 0x28f2 ret:0x7fc14c87ce00
  5379 ms     | 0x28f2 PK11_DeriveWithFlags()
  5379 ms     | 0x28f2 basekey:0x7fc15edb7980
  5379 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5379 ms     | 0x28f2 ret:0x7fc14c87ce80
  5379 ms     | 0x28f2 PK11_DeriveWithFlags()
  5379 ms     | 0x28f2 basekey:0x7fc14c87cc00
  5379 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5379 ms     | 0x28f2 ret:0x7fc14c87ce80
  5379 ms     | 0x28f2 PK11_DeriveWithFlags()
  5379 ms     | 0x28f2 basekey:0x7fc14c87cc00
  5379 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5379 ms     | 0x28f2 ret:0x7fc14c87cf00
  5379 ms     | 0x28f2 PK11_DeriveWithFlags()
  5379 ms     | 0x28f2 basekey:0x7fc15edb7980
  5379 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5379 ms     | 0x28f2 ret:0x7fc14c87ca00
  5379 ms     | 0x28f2 PK11_Encrypt()
  5379 ms     | 0x28f2 symkey:0x7fc14c87ce00
  5379 ms     | 0x28f2 PK11_DeriveWithFlags()
  5379 ms     | 0x28f2 basekey:0x7fc14c87c700
  5379 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5379 ms     | 0x28f2 ret:0x7fc14c87ca00
  5379 ms     | 0x28f2 PK11_DeriveWithFlags()
  5379 ms     | 0x28f2 basekey:0x7fc14c87c700
  5379 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5379 ms     | 0x28f2 ret:0x7fc14c87cf00
  5379 ms     | 0x28f2 PK11_DeriveWithFlags()
  5379 ms     | 0x28f2 basekey:0x7fc14c87cc80
  5379 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5379 ms     | 0x28f2 ret:0x7fc14c87ce00
  5379 ms     | 0x28f2 SECKEY_DestroyPrivateKey()
  5379 ms     | 0x28f2 privk:0x7fc15d78b020::7fc15d78b020  10 e5 77 5d                                      ..w]
  5380 ms     | 0x28f2 privk:0x7fc15d78b020::7fc15d78b020  e5 e5 e5 e5                                      ....
  5380 ms     | 0x28f2 SECKEY_DestroyPrivateKey()
  5380 ms     | 0x28f2 privk:0x7fc15d789020::7fc15d789020  30 e3 77 5d                                      0.w]
  5380 ms     | 0x28f2 privk:0x7fc15d789020::7fc15d789020  e5 e5 e5 e5                                      ....
  5381 ms  0x28f2 PK11_Encrypt()
  5381 ms  0x28f2 symkey:0x7fc14c87ca00
  5381 ms  0x28f2 PK11_Encrypt()
  5381 ms  0x28f2 symkey:0x7fc14c87ca00
  5401 ms  0x28f2 PK11_DeriveWithFlags()
  5401 ms  0x28f2 basekey:0x7fc14c87c400
  5401 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5401 ms  0x28f2 ret:0x7fc15e8b1b00
  5402 ms  0x28f2 PK11_DeriveWithFlags()
  5402 ms  0x28f2 basekey:0x7fc14c87c400
  5402 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5402 ms  0x28f2 ret:0x7fc15e8b1b00
  5402 ms  0x28f2 PK11_Encrypt()
  5402 ms  0x28f2 symkey:0x7fc15edb8000
  5408 ms  0x28f2 PK11_DeriveWithFlags()
  5408 ms  0x28f2 basekey:0x7fc14c87b300
  5408 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5408 ms  0x28f2 ret:0x7fc15e8b1b00
  5408 ms  0x28f2 PK11_DeriveWithFlags()
  5408 ms  0x28f2 basekey:0x7fc14c87b300
  5408 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5408 ms  0x28f2 ret:0x7fc15e8b1b00
  5408 ms  0x28f2 PK11_Encrypt()
  5408 ms  0x28f2 symkey:0x7fc14c87c580
  5417 ms  0x28f2 PK11_DeriveWithFlags()
  5417 ms  0x28f2 basekey:0x7fc14c87ce00
  5417 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5417 ms  0x28f2 ret:0x7fc15e8b1b00
  5417 ms  0x28f2 PK11_DeriveWithFlags()
  5417 ms  0x28f2 basekey:0x7fc14c87ce00
  5417 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5417 ms  0x28f2 ret:0x7fc15e8b1b00
  5417 ms  0x28f2 PK11_Encrypt()
  5417 ms  0x28f2 symkey:0x7fc14c87ca00
           /* TID 0x28fa */
  5421 ms  0x28fa PR_Close()
  5421 ms  0x28fa fd:0x7fc14c841760
           /* TID 0x28f2 */
  5428 ms  0x28f2 PK11_Encrypt()
  5428 ms  0x28f2 symkey:0x7fc15edb7a80
           /* TID 0x28fa */
  5429 ms  0x28fa PR_Close()
  5429 ms  0x28fa fd:0x7fc14c841760
           /* TID 0x28f2 */
  5431 ms  0x28f2 PK11_Encrypt()
  5431 ms  0x28f2 symkey:0x7fc15edb7a80
           /* TID 0x28fa */
  5435 ms  0x28fa PR_Close()
  5435 ms  0x28fa fd:0x7fc14c64dac0
           /* TID 0x28f2 */
  5436 ms  0x28f2 PK11_Encrypt()
  5436 ms  0x28f2 symkey:0x7fc15edb7a80
  5442 ms  0x28f2 PK11_Encrypt()
  5442 ms  0x28f2 symkey:0x7fc15edb8000
           /* TID 0x28fa */
  5443 ms  0x28fa PR_Close()
  5443 ms  0x28fa fd:0x7fc14c64dac0
           /* TID 0x28f2 */
  5446 ms  0x28f2 PK11_Encrypt()
  5446 ms  0x28f2 symkey:0x7fc14c87c580
           /* TID 0x28fa */
  5447 ms  0x28fa PR_Close()
  5447 ms  0x28fa fd:0x7fc14c64dac0
           /* TID 0x28f2 */
  5493 ms  0x28f2 PK11_Encrypt()
  5493 ms  0x28f2 symkey:0x7fc14c87ca00
  5494 ms  0x28f2 PK11_Encrypt()
  5494 ms  0x28f2 symkey:0x7fc15edb7a80
  5499 ms  0x28f2 PK11_Encrypt()
  5499 ms  0x28f2 symkey:0x7fc15edb7a80
  5499 ms  0x28f2 PK11_Encrypt()
  5499 ms  0x28f2 symkey:0x7fc15edb7a80
  5525 ms  0x28f2 PK11_Encrypt()
  5525 ms  0x28f2 symkey:0x7fc15edb7a80
           /* TID 0x28fa */
  5526 ms  0x28fa PR_Close()
  5526 ms  0x28fa fd:0x7fc14c8416d0
           /* TID 0x28f2 */
  5532 ms  0x28f2 PK11_Encrypt()
  5532 ms  0x28f2 symkey:0x7fc15edb7a80
  5536 ms  0x28f2 PK11_Encrypt()
  5536 ms  0x28f2 symkey:0x7fc14c87c580
           /* TID 0x28fa */
  5545 ms  0x28fa PR_Close()
  5545 ms  0x28fa fd:0x7fc14c841cd0
  5563 ms  0x28fa PR_Close()
  5563 ms  0x28fa fd:0x7fc14c52e070
           /* TID 0x28f2 */
  5588 ms  0x28f2 PK11_Encrypt()
  5588 ms  0x28f2 symkey:0x7fc15edb7a80
           /* TID 0x28fa */
  5592 ms  0x28fa PR_Close()
  5592 ms  0x28fa fd:0x7fc14c52e160
           /* TID 0x28f2 */
  5634 ms  0x28f2 PK11_Encrypt()
  5634 ms  0x28f2 symkey:0x7fc15edb7a80
  5635 ms  0x28f2 PK11_Encrypt()
  5635 ms  0x28f2 symkey:0x7fc15edb7a80
  5648 ms  0x28f2 PK11_Encrypt()
  5648 ms  0x28f2 symkey:0x7fc14c87c580
           /* TID 0x28fa */
  5649 ms  0x28fa PR_Close()
  5649 ms  0x28fa fd:0x7fc14c52e220
           /* TID 0x28f2 */
  5672 ms  0x28f2 SSL_ImportFD()
  5672 ms  0x28f2 ret:0x7fc14c52e550
  5672 ms  0x28f2 SSL_AuthCertificateHook()
  5672 ms  0x28f2 fd:0x7fc14c52e550
  5672 ms  0x28f2 ret:0x0
  5672 ms  0x28f2 PR_Connect()
  5672 ms  0x28f2 fd:0x7fc14c52e550
  5691 ms  0x28f2 PK11_Encrypt()
  5691 ms  0x28f2 symkey:0x7fc15edb7a80
           /* TID 0x28fa */
  5692 ms  0x28fa PR_Close()
  5692 ms  0x28fa fd:0x7fc14c52e2e0
           /* TID 0x28f2 */
  5710 ms  0x28f2 SECKEY_CreateECPrivateKey()
  5710 ms  0x28f2 cx:0x7fc15d710de8
  5710 ms     | 0x28f2 EC_ValidatePublicKey()
  5710 ms     | 0x28f2 ret:0x0
  5711 ms  0x28f2 ret:0x7fc15d78a820::7fc15d78a820  70 3e 84 4c                                      p>.L
  5711 ms  0x28f2 SECKEY_CreateECPrivateKey()
  5711 ms  0x28f2 cx:0x7fc15d710de8
  5711 ms     | 0x28f2 EC_ValidatePublicKey()
  5713 ms     | 0x28f2 ret:0x0
  5713 ms  0x28f2 ret:0x7fc15d78d020::7fc15d78d020  d0 d3 8f 4c                                      ...L
  5771 ms  0x28f2 PK11_Derive()
  5771 ms  0x28f2 basekey:0x7fc15e8b1b00
  5771 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5771 ms  0x28f2 ret:0x7fc15edb7980
  5771 ms  0x28f2 PK11_PubDeriveWithKDF()
  5771 ms  0x28f2 seckey:0x7fc15d78a820
  5771 ms     | 0x28f2 EC_ValidatePublicKey()
  5771 ms     | 0x28f2 ret:0x0
  5772 ms  0x28f2 ret:0x7fc15e8b1b00
  5772 ms  SECKEY_ECParamsToKeySize()
  5772 ms  0x28f2 ret:0xff
  5772 ms  0x28f2 PK11_DeriveWithFlags()
  5772 ms  0x28f2 basekey:0x7fc15edb7980
  5772 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5772 ms  0x28f2 ret:0x7fc14c87cc80
  5772 ms  0x28f2 PK11_Derive()
  5772 ms  0x28f2 basekey:0x7fc15e8b1b00
  5772 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5772 ms  0x28f2 ret:0x7fc14c87cf00
  5772 ms  0x28f2 PK11_DeriveWithFlags()
  5772 ms  0x28f2 basekey:0x7fc14c87cf00
  5772 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5773 ms  0x28f2 ret:0x7fc15edb7980
  5773 ms  0x28f2 PK11_DeriveWithFlags()
  5773 ms  0x28f2 basekey:0x7fc14c87cf00
  5773 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5773 ms  0x28f2 ret:0x7fc15e8b1b00
  5773 ms  0x28f2 PK11_DeriveWithFlags()
  5773 ms  0x28f2 basekey:0x7fc14c87cf00
  5773 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5773 ms  0x28f2 ret:0x7fc14c87cc80
  5773 ms  0x28f2 PK11_Derive()
  5773 ms  0x28f2 basekey:0x7fc14c524600
  5773 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5773 ms  0x28f2 ret:0x7fc14c524700
  5773 ms  0x28f2 PK11_DeriveWithFlags()
  5773 ms  0x28f2 basekey:0x7fc15e8b1b00
  5773 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5773 ms  0x28f2 ret:0x7fc14c87cf00
  5773 ms  0x28f2 PK11_DeriveWithFlags()
  5773 ms  0x28f2 basekey:0x7fc15e8b1b00
  5773 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5773 ms  0x28f2 ret:0x7fc14c87cc80
  5775 ms  0x28f2 PK11_DeriveWithFlags()
  5775 ms  0x28f2 basekey:0x7fc15e8b1b00
  5775 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5776 ms  0x28f2 ret:0x7fc14c87cc80
           /* TID 0x28fa */
  5921 ms  0x28fa PR_Close()
  5921 ms  0x28fa fd:0x7fc14c52e220
           /* TID 0x2954 */
  5921 ms  0x2954 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5922 ms  0x2954 ret:0x0
           /* TID 0x28f2 */
  5922 ms  0x28f2 SSL_AuthCertificateComplete()
  5922 ms  0x28f2 fd:0x7fc14c52e550
  5922 ms  0x28f2 err:0x0
  5922 ms     | 0x28f2 PK11_DeriveWithFlags()
  5922 ms     | 0x28f2 basekey:0x7fc14c524700
  5922 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5922 ms     | 0x28f2 ret:0x7fc14c87cc80
  5922 ms     | 0x28f2 PK11_DeriveWithFlags()
  5922 ms     | 0x28f2 basekey:0x7fc14c524700
  5922 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5923 ms     | 0x28f2 ret:0x7fc14c524600
  5923 ms     | 0x28f2 PK11_DeriveWithFlags()
  5923 ms     | 0x28f2 basekey:0x7fc14c524700
  5923 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5923 ms     | 0x28f2 ret:0x7fc14c524c80
  5923 ms     | 0x28f2 PK11_DeriveWithFlags()
  5923 ms     | 0x28f2 basekey:0x7fc15edb7980
  5923 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5923 ms     | 0x28f2 ret:0x7fc14c524d80
  5923 ms     | 0x28f2 PK11_DeriveWithFlags()
  5923 ms     | 0x28f2 basekey:0x7fc15edb7980
  5923 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5923 ms     | 0x28f2 ret:0x7fc14c524e00
  5923 ms     | 0x28f2 PK11_DeriveWithFlags()
  5923 ms     | 0x28f2 basekey:0x7fc14c524600
  5923 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5923 ms     | 0x28f2 ret:0x7fc14c524e00
  5923 ms     | 0x28f2 PK11_DeriveWithFlags()
  5923 ms     | 0x28f2 basekey:0x7fc14c524600
  5923 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5923 ms     | 0x28f2 ret:0x7fc14c524f00
  5923 ms     | 0x28f2 PK11_DeriveWithFlags()
  5923 ms     | 0x28f2 basekey:0x7fc15edb7980
  5923 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5923 ms     | 0x28f2 ret:0x7fc14c87cf00
  5923 ms     | 0x28f2 PK11_Encrypt()
  5923 ms     | 0x28f2 symkey:0x7fc14c524d80
  5924 ms     | 0x28f2 PK11_DeriveWithFlags()
  5924 ms     | 0x28f2 basekey:0x7fc14c87cc80
  5924 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5924 ms     | 0x28f2 ret:0x7fc14c87cf00
  5924 ms     | 0x28f2 PK11_DeriveWithFlags()
  5924 ms     | 0x28f2 basekey:0x7fc14c87cc80
  5924 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5924 ms     | 0x28f2 ret:0x7fc14c524f00
  5924 ms     | 0x28f2 PK11_DeriveWithFlags()
  5924 ms     | 0x28f2 basekey:0x7fc14c524700
  5924 ms     |    | 0x28f2 PK11_DeriveWithTemplate()
  5924 ms     | 0x28f2 ret:0x7fc14c524d80
  5924 ms     | 0x28f2 SECKEY_DestroyPrivateKey()
  5924 ms     | 0x28f2 privk:0x7fc15d78d020::7fc15d78d020  d0 d3 8f 4c                                      ...L
  5925 ms     | 0x28f2 privk:0x7fc15d78d020::7fc15d78d020  e5 e5 e5 e5                                      ....
  5925 ms     | 0x28f2 SECKEY_DestroyPrivateKey()
  5925 ms     | 0x28f2 privk:0x7fc15d78a820::7fc15d78a820  70 3e 84 4c                                      p>.L
  5925 ms     | 0x28f2 privk:0x7fc15d78a820::7fc15d78a820  e5 e5 e5 e5                                      ....
  5926 ms  0x28f2 PK11_Encrypt()
  5926 ms  0x28f2 symkey:0x7fc14c87cf00
  5926 ms  0x28f2 PK11_Encrypt()
  5926 ms  0x28f2 symkey:0x7fc14c87cf00
  5962 ms  0x28f2 PK11_DeriveWithFlags()
  5962 ms  0x28f2 basekey:0x7fc14c524d80
  5962 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5962 ms  0x28f2 ret:0x7fc15e8b1b00
  5962 ms  0x28f2 PK11_DeriveWithFlags()
  5962 ms  0x28f2 basekey:0x7fc14c524d80
  5962 ms     | 0x28f2 PK11_DeriveWithTemplate()
  5962 ms  0x28f2 ret:0x7fc15e8b1b00
  5964 ms  0x28f2 PK11_Encrypt()
  5964 ms  0x28f2 symkey:0x7fc14c87cf00
  6052 ms  0x28f2 PK11_Encrypt()
  6052 ms  0x28f2 symkey:0x7fc14c87cf00
           /* TID 0x28fa */
  6055 ms  0x28fa PR_Close()
  6055 ms  0x28fa fd:0x7fc14c52e3a0
           /* TID 0x28f2 */
  6092 ms  0x28f2 PK11_Encrypt()
  6092 ms  0x28f2 symkey:0x7fc15edb7a80
  6092 ms  0x28f2 PK11_Encrypt()
  6092 ms  0x28f2 symkey:0x7fc15edb7a80
  6097 ms  0x28f2 PR_Close()
  6097 ms  0x28f2 fd:0x7fc15f0faa00
           /* TID 0x28e7 */
  6098 ms  0x28e7 EC_ValidatePublicKey()
  6100 ms  0x28e7 ret:0x0
  6100 ms  0x28e7 EC_ValidatePublicKey()
  6101 ms  0x28e7 ret:0x0
  6101 ms  0x28e7 EC_ValidatePublicKey()
  6103 ms  0x28e7 ret:0x0
  6103 ms  0x28e7 EC_ValidatePublicKey()
  6104 ms  0x28e7 ret:0x0
  6104 ms  0x28e7 EC_ValidatePublicKey()
  6108 ms  0x28e7 ret:0x0
  6109 ms  0x28e7 EC_ValidatePublicKey()
  6110 ms  0x28e7 ret:0x0
  6110 ms  0x28e7 EC_ValidatePublicKey()
  6111 ms  0x28e7 ret:0x0
  6111 ms  0x28e7 EC_ValidatePublicKey()
  6113 ms  0x28e7 ret:0x0
  6113 ms  0x28e7 EC_ValidatePublicKey()
  6114 ms  0x28e7 ret:0x0
  6114 ms  0x28e7 EC_ValidatePublicKey()
  6118 ms  0x28e7 ret:0x0
           /* TID 0x28f2 */
  6118 ms  0x28f2 PK11_Encrypt()
  6118 ms  0x28f2 symkey:0x7fc14c87cf00
  6118 ms  0x28f2 PK11_Encrypt()
  6118 ms  0x28f2 symkey:0x7fc14c87ca00
  6118 ms  0x28f2 PK11_Encrypt()
  6118 ms  0x28f2 symkey:0x7fc14c87c580
  6118 ms  0x28f2 PK11_Encrypt()
  6118 ms  0x28f2 symkey:0x7fc15edb8000
  6118 ms  0x28f2 PR_Close()
  6118 ms  0x28f2 fd:0x7fc15edabdf0
  6119 ms  0x28f2 PR_Close()
  6119 ms  0x28f2 fd:0x7fc15d72d0a0
  6119 ms     | 0x28f2 PK11_Encrypt()
  6119 ms     | 0x28f2 symkey:0x7fc15d703780
  6119 ms  0x28f2 PR_Close()
  6119 ms  0x28f2 fd:0x7fc15d54cf40
  6119 ms  0x28f2 PR_Close()
  6119 ms  0x28f2 fd:0x7fc15d54c430
  6119 ms     | 0x28f2 PK11_Encrypt()
  6119 ms     | 0x28f2 symkey:0x7fc15d702a00
  6119 ms  0x28f2 PR_Close()
  6119 ms  0x28f2 fd:0x7fc15dd7afa0
  6119 ms  0x28f2 PR_Close()
  6119 ms  0x28f2 fd:0x7fc15dd7a1f0
  6119 ms     | 0x28f2 PK11_Encrypt()
  6119 ms     | 0x28f2 symkey:0x7fc15ec32900
  6119 ms  0x28f2 PR_Close()
  6119 ms  0x28f2 fd:0x7fc15dd203a0
  6119 ms     | 0x28f2 PK11_Encrypt()
  6119 ms     | 0x28f2 symkey:0x7fc15e8b1b80
  6119 ms  0x28f2 PR_Close()
  6119 ms  0x28f2 fd:0x7fc14c8414f0
  6119 ms     | 0x28f2 PK11_Encrypt()
  6119 ms     | 0x28f2 symkey:0x7fc14c87ca00
  6120 ms  0x28f2 PR_Close()
  6120 ms  0x28f2 fd:0x7fc14c841a00
  6120 ms     | 0x28f2 PK11_Encrypt()
  6120 ms     | 0x28f2 symkey:0x7fc14c87c580
  6120 ms  0x28f2 PR_Close()
  6120 ms  0x28f2 fd:0x7fc14c841820
  6120 ms     | 0x28f2 PK11_Encrypt()
  6120 ms     | 0x28f2 symkey:0x7fc15edb8000
  6120 ms  0x28f2 PR_Close()
  6120 ms  0x28f2 fd:0x7fc14c52e550
  6120 ms     | 0x28f2 PK11_Encrypt()
  6120 ms     | 0x28f2 symkey:0x7fc14c87cf00
           /* TID 0x2944 */
  6120 ms  0x2944 PR_Close()
  6120 ms  0x2944 fd:0x7fc14c52e3d0
  6120 ms  0x2944 PR_Close()
  6120 ms  0x2944 fd:0x7fc14c52e3d0
           /* TID 0x28e7 */
  6126 ms  0x28e7 PR_Close()
  6126 ms  0x28e7 fd:0x7fc15e849e50
  6126 ms  0x28e7 PR_Close()
  6126 ms  0x28e7 fd:0x7fc14c52ed60
  6127 ms  0x28e7 PR_Close()
  6127 ms  0x28e7 fd:0x7fc14c52edc0
  6127 ms  0x28e7 PR_Close()
  6127 ms  0x28e7 fd:0x7fc14c52ed60
  6127 ms  0x28e7 PR_Close()
  6127 ms  0x28e7 fd:0x7fc14c52edc0
  6127 ms  0x28e7 PR_Close()
  6127 ms  0x28e7 fd:0x7fc14c52ed60
           /* TID 0x2957 */
  6130 ms  0x2957 PR_Close()
  6130 ms  0x2957 fd:0x7fc14c52ee20
           /* TID 0x28f2 */
  6143 ms  0x28f2 SSL_ImportFD()
  6143 ms  0x28f2 ret:0x7fc14c841c40
  6143 ms  0x28f2 SSL_AuthCertificateHook()
  6143 ms  0x28f2 fd:0x7fc14c841c40
  6143 ms  0x28f2 ret:0x0
  6143 ms  0x28f2 PR_Connect()
  6143 ms  0x28f2 fd:0x7fc14c841c40
           /* TID 0x28e7 */
  6145 ms  0x28e7 PR_Close()
  6145 ms  0x28e7 fd:0x7fc14c52edc0
  6145 ms  0x28e7 PR_Close()
  6145 ms  0x28e7 fd:0x7fc15d54c3a0
  6146 ms  0x28e7 PR_Close()
  6146 ms  0x28e7 fd:0x7fc14c52edc0
  6146 ms  0x28e7 PR_Close()
  6146 ms  0x28e7 fd:0x7fc15d54c3a0
  6147 ms  0x28e7 PR_Close()
  6147 ms  0x28e7 fd:0x7fc1689c89a0
  6147 ms  0x28e7 PR_Close()
  6147 ms  0x28e7 fd:0x7fc1689c88b0
  6147 ms  0x28e7 PR_Close()
  6147 ms  0x28e7 fd:0x7fc1689c8a60
  6149 ms  0x28e7 PR_Close()
  6149 ms  0x28e7 fd:0x7fc15d54c3d0
  6150 ms  0x28e7 PR_Close()
  6150 ms  0x28e7 fd:0x7fc15d54c3d0
           /* TID 0x28f2 */
  6152 ms  0x28f2 PK11_Encrypt()
  6152 ms  0x28f2 symkey:0x7fc15edb7a80
  6152 ms  0x28f2 PR_Close()
  6152 ms  0x28f2 fd:0x7fc15edab8b0
  6152 ms     | 0x28f2 PK11_Encrypt()
  6152 ms     | 0x28f2 symkey:0x7fc15edb7a80
           /* TID 0x28e7 */
  6153 ms  0x28e7 PR_Close()
  6153 ms  0x28e7 fd:0x7fc14c52edc0
  6153 ms  0x28e7 PR_Close()
  6153 ms  0x28e7 fd:0x7fc15d54c490
  6153 ms  0x28e7 PR_Close()
  6153 ms  0x28e7 fd:0x7fc14c52edc0
  6153 ms  0x28e7 PR_Close()
  6153 ms  0x28e7 fd:0x7fc15d54c490
  6156 ms  0x28e7 PR_Close()
  6156 ms  0x28e7 fd:0x7fc15d54c4c0
  6157 ms  0x28e7 PR_Close()
  6157 ms  0x28e7 fd:0x7fc15d54c4c0
  6159 ms  0x28e7 PR_Close()
  6159 ms  0x28e7 fd:0x7fc14c52edc0
  6159 ms  0x28e7 PR_Close()
  6159 ms  0x28e7 fd:0x7fc15d54c550
  6160 ms  0x28e7 PR_Close()
  6160 ms  0x28e7 fd:0x7fc14c52edc0
  6160 ms  0x28e7 PR_Close()
  6160 ms  0x28e7 fd:0x7fc15d54c550
  6162 ms  0x28e7 PR_Close()
  6162 ms  0x28e7 fd:0x7fc15d54ca00
  6164 ms  0x28e7 PR_Close()
  6164 ms  0x28e7 fd:0x7fc15d54ca00
  6173 ms  0x28e7 PR_Close()
  6173 ms  0x28e7 fd:0x7fc15d59b9a0
  6174 ms  0x28e7 PR_Close()
  6174 ms  0x28e7 fd:0x7fc15d59b9a0
  6176 ms  0x28e7 PR_Close()
  6176 ms  0x28e7 fd:0x7fc15d59bb50
           /* TID 0x28f2 */
  6184 ms  0x28f2 SECKEY_CreateECPrivateKey()
  6184 ms  0x28f2 cx:0x7fc15d70fa68
  6184 ms     | 0x28f2 EC_ValidatePublicKey()
  6184 ms     | 0x28f2 ret:0x0
  6184 ms  0x28f2 ret:0x7fc14c81c820::7fc14c81c820  90 67 e7 63                                      .g.c
  6184 ms  0x28f2 SECKEY_CreateECPrivateKey()
  6184 ms  0x28f2 cx:0x7fc15d70fa68
  6185 ms     | 0x28f2 EC_ValidatePublicKey()
  6186 ms     | 0x28f2 ret:0x0
  6186 ms  0x28f2 ret:0x7fc14c81f020::7fc14c81f020  b0 6f e7 63                                      .o.c
           /* TID 0x2957 */
  6187 ms  0x2957 PR_Close()
  6187 ms  0x2957 fd:0x7fc14c52e880
           /* TID 0x28e7 */
  6188 ms  0x28e7 PR_Close()
  6188 ms  0x28e7 fd:0x7fc14c52edc0
  6188 ms  0x28e7 PR_Close()
  6188 ms  0x28e7 fd:0x7fc15d5d57c0
           /* TID 0x2957 */
  6189 ms  0x2957 PR_Close()
  6189 ms  0x2957 fd:0x7fc14c52e880
  6197 ms  0x2957 PR_Close()
  6197 ms  0x2957 fd:0x7fc14c52ee20
           /* TID 0x28fa */
  6201 ms  0x28fa PR_Close()
  6201 ms  0x28fa fd:0x7fc14c52e760
           /* TID 0x2957 */
  6220 ms  0x2957 PR_Close()
  6220 ms  0x2957 fd:0x7fc14c52e0a0
           /* TID 0x28f2 */
  6231 ms  0x28f2 PR_Close()
  6231 ms  0x28f2 fd:0x7fc14c841c40
  6231 ms     | 0x28f2 SECKEY_DestroyPrivateKey()
  6231 ms     | 0x28f2 privk:0x7fc14c81f020::7fc14c81f020  b0 6f e7 63                                      .o.c
  6231 ms     | 0x28f2 privk:0x7fc14c81f020::7fc14c81f020  e5 e5 e5 e5                                      ....
  6231 ms     | 0x28f2 SECKEY_DestroyPrivateKey()
  6231 ms     | 0x28f2 privk:0x7fc14c81c820::7fc14c81c820  90 67 e7 63                                      .g.c
  6231 ms     | 0x28f2 privk:0x7fc14c81c820::7fc14c81c820  e5 e5 e5 e5                                      ....
           /* TID 0x28ec */
  6232 ms  0x28ec PR_Close()
  6232 ms  0x28ec fd:0x7fc1676f8df0
           /* TID 0x2957 */
  6240 ms  0x2957 PR_Close()
  6240 ms  0x2957 fd:0x7fc15d5d50d0
           /* TID 0x28e7 */
  6257 ms  0x28e7 PR_Close()
  6257 ms  0x28e7 fd:0x7fc14c52edc0
  6257 ms  0x28e7 PR_Close()
  6257 ms  0x28e7 fd:0x7fc15d5d50a0
           /* TID 0x28ec */
  6257 ms  0x28ec PR_Close()
  6257 ms  0x28ec fd:0x7fc163b32820
           /* TID 0x28f2 */
  6257 ms  0x28f2 PR_Close()
  6257 ms  0x28f2 fd:0x7fc160c8ee20
           /* TID 0x2944 */
  6258 ms  0x2944 PR_Close()
  6258 ms  0x2944 fd:0x7fc15d72ddc0
  6258 ms  0x2944 PR_Close()
  6258 ms  0x2944 fd:0x7fc15d5d5040
  6258 ms  0x2944 PR_Close()
  6258 ms  0x2944 fd:0x7fc15d5d5040
  6258 ms  0x2944 PR_Close()
  6258 ms  0x2944 fd:0x7fc15d5d5040
           /* TID 0x2957 */
  6258 ms  0x2957 PR_Close()
  6258 ms  0x2957 fd:0x7fc15d5d5160
           /* TID 0x28fa */
  6261 ms  0x28fa PR_Close()
  6261 ms  0x28fa fd:0x7fc15dd204f0
  6261 ms  0x28fa PR_Close()
  6261 ms  0x28fa fd:0x7fc15dd209d0
           /* TID 0x28ec */
  6268 ms  0x28ec PR_Close()
  6268 ms  0x28ec fd:0x7fc15dd7a070
           /* TID 0x28e7 */
  6270 ms  0x28e7 PR_Close()
  6270 ms  0x28e7 fd:0x7fc14c52edc0
  6270 ms  0x28e7 PR_Close()
  6270 ms  0x28e7 fd:0x7fc15dd7a8b0
           /* TID 0x2957 */
  6272 ms  0x2957 PR_Close()
  6272 ms  0x2957 fd:0x7fc15dd7a8e0
  6274 ms  0x2957 PR_Close()
  6274 ms  0x2957 fd:0x7fc15d5d5280
  6298 ms  0x2957 PR_Close()
  6298 ms  0x2957 fd:0x7fc14c52e7f0
  6299 ms  0x2957 PR_Close()
  6299 ms  0x2957 fd:0x7fc14c52e7f0
  6324 ms  0x2957 PR_Close()
  6324 ms  0x2957 fd:0x7fc14c841310
  6325 ms  0x2957 PR_Close()
  6325 ms  0x2957 fd:0x7fc14c8413a0
  6332 ms  0x2957 PR_Close()
  6332 ms  0x2957 fd:0x7fc15d5d52b0
  6335 ms  0x2957 PR_Close()
  6335 ms  0x2957 fd:0x7fc15dd7a580
  6341 ms  0x2957 PR_Close()
  6341 ms  0x2957 fd:0x7fc15dd7a910
  6349 ms  0x2957 PR_Close()
  6349 ms  0x2957 fd:0x7fc15dd7ac70
  6352 ms  0x2957 PR_Close()
  6352 ms  0x2957 fd:0x7fc15dd7ac70
           /* TID 0x28e7 */
  6510 ms  0x28e7 PR_Close()
  6510 ms  0x28e7 fd:0x7fc14c64d160
  6510 ms  0x28e7 PR_Close()
  6510 ms  0x28e7 fd:0x7fc14c64d160
  6522 ms  0x28e7 PR_Close()
  6522 ms  0x28e7 fd:0x7fc185cda130
  6522 ms  0x28e7 PR_Close()
  6522 ms  0x28e7 fd:0x7fc185cda190
Process terminated
