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
           /* TID 0x7d22 */
   107 ms  0x7d22 PR_Close()
   107 ms  0x7d22 fd:0x7f58e0494790
           /* TID 0x7d1a */
   341 ms  0x7d1a SSL_ImportFD()
   341 ms  0x7d1a ret:0x7f58dd80f340
   341 ms  0x7d1a SSL_AuthCertificateHook()
   341 ms  0x7d1a fd:0x7f58dd80f340
   341 ms  0x7d1a ret:0x0
   342 ms  0x7d1a PR_Connect()
   342 ms  0x7d1a fd:0x7f58dd80f340
   559 ms  0x7d1a SECKEY_CreateECPrivateKey()
   559 ms  0x7d1a cx:0x7f58d06c2ae8
   561 ms     | 0x7d1a EC_ValidatePublicKey()
   561 ms     | 0x7d1a ret:0x0
   561 ms  0x7d1a ret:0x7f58d055e020::7f58d055e020  90 cc 5b d0                                      ..[.
   562 ms  0x7d1a SECKEY_CreateECPrivateKey()
   562 ms  0x7d1a cx:0x7f58d06c2ae8
   564 ms     | 0x7d1a EC_ValidatePublicKey()
   570 ms     | 0x7d1a ret:0x0
   570 ms  0x7d1a ret:0x7f58d0560020::7f58d0560020  d0 cd 5b d0                                      ..[.
           /* TID 0x7d7c */
   634 ms  0x7d7c PR_Close()
   634 ms  0x7d7c fd:0x7f58dd80fc70
   696 ms  0x7d7c PR_Close()
   696 ms  0x7d7c fd:0x7f58dd80fc70
   795 ms  0x7d7c PR_Close()
   795 ms  0x7d7c fd:0x7f58dd80fdc0
           /* TID 0x7d1a */
   795 ms  SECKEY_ECParamsToKeySize()
   795 ms  0x7d1a ret:0x100
   795 ms  0x7d1a SECKEY_CreateECPrivateKey()
   795 ms  0x7d1a cx:0x7f58d06c2ae8
   796 ms     | 0x7d1a EC_ValidatePublicKey()
   797 ms     | 0x7d1a ret:0x0
   797 ms  0x7d1a ret:0x7f58d0569020::7f58d0569020  d0 a8 5f d0                                      .._.
   797 ms  0x7d1a PK11_PubDeriveWithKDF()
   797 ms  0x7d1a seckey:0x7f58d0569020
   797 ms     | 0x7d1a EC_ValidatePublicKey()
   799 ms     | 0x7d1a ret:0x0
   800 ms  0x7d1a ret:0x7f58d21ac600
   800 ms  0x7d1a PK11_DeriveWithFlags()
   800 ms  0x7d1a basekey:0x7f58d21ac600
   800 ms     | 0x7d1a PK11_DeriveWithTemplate()
   800 ms  0x7d1a ret:0x7f58d05efa00
   800 ms  0x7d1a PK11_Derive()
   800 ms  0x7d1a basekey:0x7f58d05efa00
   800 ms     | 0x7d1a PK11_DeriveWithTemplate()
   800 ms  0x7d1a ret:0x7f58d05efb00
   800 ms  0x7d1a SECKEY_DestroyPrivateKey()
   800 ms  0x7d1a privk:0x7f58d0569020::7f58d0569020  d0 a8 5f d0                                      .._.
   800 ms  0x7d1a privk:0x7f58d0569020::7f58d0569020  e5 e5 e5 e5                                      ....
   800 ms  0x7d1a PK11_Encrypt()
   800 ms  0x7d1a symkey:0x7f58d05efc80
   801 ms  0x7d1a PR_Connect()
   801 ms  0x7d1a fd:0x7f58dd80fe20
           /* TID 0x7d74 */
   853 ms  0x7d74 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   853 ms  0x7d74 ret:0x0
           /* TID 0x7d22 */
   854 ms  0x7d22 PR_Close()
   854 ms  0x7d22 fd:0x7f58dd80fca0
           /* TID 0x7d1a */
   855 ms  0x7d1a SSL_AuthCertificateComplete()
   855 ms  0x7d1a fd:0x7f58dd80f340
   855 ms  0x7d1a err:0x0
   855 ms  0x7d1a PK11_Encrypt()
   855 ms  0x7d1a symkey:0x7f58d05efc80
  1019 ms  0x7d1a SECKEY_DestroyPrivateKey()
  1019 ms  0x7d1a privk:0x7f58d0560020::7f58d0560020  d0 cd 5b d0                                      ..[.
  1020 ms  0x7d1a privk:0x7f58d0560020::7f58d0560020  e5 e5 e5 e5                                      ....
  1020 ms  0x7d1a SECKEY_DestroyPrivateKey()
  1020 ms  0x7d1a privk:0x7f58d055e020::7f58d055e020  90 cc 5b d0                                      ..[.
  1020 ms  0x7d1a privk:0x7f58d055e020::7f58d055e020  e5 e5 e5 e5                                      ....
  1244 ms  0x7d1a SSL_ImportFD()
  1244 ms  0x7d1a ret:0x7f58dd80ff10
  1244 ms  0x7d1a SSL_AuthCertificateHook()
  1244 ms  0x7d1a fd:0x7f58dd80ff10
  1244 ms  0x7d1a ret:0x0
  1245 ms  0x7d1a PR_Connect()
  1245 ms  0x7d1a fd:0x7f58dd80ff10
  1271 ms  0x7d1a SECKEY_CreateECPrivateKey()
  1271 ms  0x7d1a cx:0x7f58d05fb728
  1273 ms     | 0x7d1a EC_ValidatePublicKey()
  1273 ms     | 0x7d1a ret:0x0
  1273 ms  0x7d1a ret:0x7f58d055f020::7f58d055f020  d0 cd 5b d0                                      ..[.
  1273 ms  0x7d1a SECKEY_CreateECPrivateKey()
  1273 ms  0x7d1a cx:0x7f58d05fb728
  1275 ms     | 0x7d1a EC_ValidatePublicKey()
  1280 ms     | 0x7d1a ret:0x0
  1280 ms  0x7d1a ret:0x7f58d0565020::7f58d0565020  f0 a6 5f d0                                      .._.
           /* TID 0x7d74 */
  1334 ms  0x7d74 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1334 ms  0x7d74 ret:0x0
           /* TID 0x7d1a */
  1335 ms  SECKEY_ECParamsToKeySize()
  1335 ms  0x7d1a ret:0x100
  1335 ms  0x7d1a SECKEY_CreateECPrivateKey()
  1335 ms  0x7d1a cx:0x7f58d05fb728
  1337 ms     | 0x7d1a EC_ValidatePublicKey()
  1342 ms     | 0x7d1a ret:0x0
  1342 ms  0x7d1a ret:0x7f58d0568820::7f58d0568820  70 a9 5f d0                                      p._.
  1342 ms  0x7d1a PK11_PubDeriveWithKDF()
  1342 ms  0x7d1a seckey:0x7f58d0568820
  1342 ms     | 0x7d1a EC_ValidatePublicKey()
  1347 ms     | 0x7d1a ret:0x0
  1351 ms  0x7d1a ret:0x7f58d21ac600
  1351 ms  0x7d1a PK11_DeriveWithFlags()
  1351 ms  0x7d1a basekey:0x7f58d21ac600
  1351 ms     | 0x7d1a PK11_DeriveWithTemplate()
  1351 ms  0x7d1a ret:0x7f58d0582b00
  1351 ms  0x7d1a PK11_Derive()
  1351 ms  0x7d1a basekey:0x7f58d0582b00
  1351 ms     | 0x7d1a PK11_DeriveWithTemplate()
  1351 ms  0x7d1a ret:0x7f58d05f0500
  1351 ms  0x7d1a SECKEY_DestroyPrivateKey()
  1351 ms  0x7d1a privk:0x7f58d0568820::7f58d0568820  70 a9 5f d0                                      p._.
  1351 ms  0x7d1a privk:0x7f58d0568820::7f58d0568820  e5 e5 e5 e5                                      ....
  1352 ms  0x7d1a PK11_Encrypt()
  1352 ms  0x7d1a symkey:0x7f58d05f0a00
  1352 ms  0x7d1a SSL_AuthCertificateComplete()
  1352 ms  0x7d1a fd:0x7f58dd80ff10
  1352 ms  0x7d1a err:0x0
  1352 ms  0x7d1a PK11_Encrypt()
  1352 ms  0x7d1a symkey:0x7f58d05f0a00
  1404 ms  0x7d1a SECKEY_DestroyPrivateKey()
  1404 ms  0x7d1a privk:0x7f58d0565020::7f58d0565020  f0 a6 5f d0                                      .._.
  1404 ms  0x7d1a privk:0x7f58d0565020::7f58d0565020  e5 e5 e5 e5                                      ....
  1405 ms  0x7d1a SECKEY_DestroyPrivateKey()
  1405 ms  0x7d1a privk:0x7f58d055f020::7f58d055f020  d0 cd 5b d0                                      ..[.
  1405 ms  0x7d1a privk:0x7f58d055f020::7f58d055f020  e5 e5 e5 e5                                      ....
  1409 ms  0x7d1a PK11_Encrypt()
  1409 ms  0x7d1a symkey:0x7f58d05f0a00
  1439 ms  0x7d1a PK11_Encrypt()
  1439 ms  0x7d1a symkey:0x7f58d05f0a00
  1474 ms  0x7d1a PK11_Encrypt()
  1474 ms  0x7d1a symkey:0x7f58d05f0a00
  1504 ms  0x7d1a PK11_Encrypt()
  1504 ms  0x7d1a symkey:0x7f58d05f0a00
  1620 ms  0x7d1a PK11_Encrypt()
  1620 ms  0x7d1a symkey:0x7f58d05f0a00
  1652 ms  0x7d1a PK11_Encrypt()
  1652 ms  0x7d1a symkey:0x7f58d05f0a00
  1683 ms  0x7d1a PK11_Encrypt()
  1683 ms  0x7d1a symkey:0x7f58d05f0a00
           /* TID 0x7d6b */
  1711 ms  0x7d6b PR_Close()
  1711 ms  0x7d6b fd:0x7f58d0216250
  1711 ms  0x7d6b PR_Close()
  1711 ms  0x7d6b fd:0x7f58d02162b0
  1711 ms  0x7d6b PR_Close()
  1711 ms  0x7d6b fd:0x7f58d0216250
  1711 ms  0x7d6b PR_Close()
  1711 ms  0x7d6b fd:0x7f58d02162b0
  1711 ms  0x7d6b PR_Close()
  1711 ms  0x7d6b fd:0x7f58d0216250
  1712 ms  0x7d6b PR_Close()
  1712 ms  0x7d6b fd:0x7f58d02162b0
  1712 ms  0x7d6b PR_Close()
  1712 ms  0x7d6b fd:0x7f58d0216250
  1712 ms  0x7d6b PR_Close()
  1712 ms  0x7d6b fd:0x7f58d02162b0
  1712 ms  0x7d6b PR_Close()
  1712 ms  0x7d6b fd:0x7f58d0216250
  1712 ms  0x7d6b PR_Close()
  1712 ms  0x7d6b fd:0x7f58d02162b0
  1712 ms  0x7d6b PR_Close()
  1712 ms  0x7d6b fd:0x7f58d0216250
  1712 ms  0x7d6b PR_Close()
  1712 ms  0x7d6b fd:0x7f58d02162b0
  1712 ms  0x7d6b PR_Close()
  1712 ms  0x7d6b fd:0x7f58d0216250
  1712 ms  0x7d6b PR_Close()
  1712 ms  0x7d6b fd:0x7f58d02162b0
  1713 ms  0x7d6b PR_Close()
  1713 ms  0x7d6b fd:0x7f58d0216250
  1713 ms  0x7d6b PR_Close()
  1713 ms  0x7d6b fd:0x7f58d02162b0
  1713 ms  0x7d6b PR_Close()
  1713 ms  0x7d6b fd:0x7f58d0216250
  1713 ms  0x7d6b PR_Close()
  1713 ms  0x7d6b fd:0x7f58d02162b0
  1713 ms  0x7d6b PR_Close()
  1713 ms  0x7d6b fd:0x7f58d0216250
  1713 ms  0x7d6b PR_Close()
  1713 ms  0x7d6b fd:0x7f58d02162b0
  1713 ms  0x7d6b PR_Close()
  1713 ms  0x7d6b fd:0x7f58d0216250
  1713 ms  0x7d6b PR_Close()
  1713 ms  0x7d6b fd:0x7f58d02162b0
  1713 ms  0x7d6b PR_Close()
  1713 ms  0x7d6b fd:0x7f58d0216250
  1713 ms  0x7d6b PR_Close()
  1713 ms  0x7d6b fd:0x7f58d02162b0
  1714 ms  0x7d6b PR_Close()
  1714 ms  0x7d6b fd:0x7f58d0216250
  1714 ms  0x7d6b PR_Close()
  1714 ms  0x7d6b fd:0x7f58d02162b0
  1714 ms  0x7d6b PR_Close()
  1714 ms  0x7d6b fd:0x7f58d0216250
  1714 ms  0x7d6b PR_Close()
  1714 ms  0x7d6b fd:0x7f58d02162b0
  1717 ms  0x7d6b PR_Close()
  1717 ms  0x7d6b fd:0x7f58d0216250
  1717 ms  0x7d6b PR_Close()
  1717 ms  0x7d6b fd:0x7f58d0216220
  1719 ms  0x7d6b PR_Close()
  1719 ms  0x7d6b fd:0x7f58d0216220
  1719 ms  0x7d6b PR_Close()
  1719 ms  0x7d6b fd:0x7f58d0216250
  1722 ms  0x7d6b PR_Close()
  1722 ms  0x7d6b fd:0x7f58d0216250
  1722 ms  0x7d6b PR_Close()
  1722 ms  0x7d6b fd:0x7f58d0216250
  1724 ms  0x7d6b PR_Close()
  1724 ms  0x7d6b fd:0x7f58d0216250
  1724 ms  0x7d6b PR_Close()
  1724 ms  0x7d6b fd:0x7f58d0216250
  1784 ms  0x7d6b PR_Close()
  1784 ms  0x7d6b fd:0x7f58d0216250
  1785 ms  0x7d6b PR_Close()
  1785 ms  0x7d6b fd:0x7f58d0216250
  1792 ms  0x7d6b PR_Close()
  1792 ms  0x7d6b fd:0x7f58d0216250
  1792 ms  0x7d6b PR_Close()
  1792 ms  0x7d6b fd:0x7f58d0216250
  1798 ms  0x7d6b PR_Close()
  1798 ms  0x7d6b fd:0x7f58d0216250
  1798 ms  0x7d6b PR_Close()
  1798 ms  0x7d6b fd:0x7f58d0216250
  1800 ms  0x7d6b PR_Close()
  1800 ms  0x7d6b fd:0x7f58d0216250
  1801 ms  0x7d6b PR_Close()
  1801 ms  0x7d6b fd:0x7f58d0216250
           /* TID 0x7d68 */
  1801 ms  0x7d68 PR_Close()
  1801 ms  0x7d68 fd:0x7f58d0216250
  1801 ms  0x7d68 PR_Close()
  1801 ms  0x7d68 fd:0x7f58d0216250
  1801 ms  0x7d68 PR_Close()
  1801 ms  0x7d68 fd:0x7f58d0216250
  1801 ms  0x7d68 PR_Close()
  1801 ms  0x7d68 fd:0x7f58d0216250
  1801 ms  0x7d68 PR_Close()
  1801 ms  0x7d68 fd:0x7f58d0216250
  1801 ms  0x7d68 PR_Close()
  1801 ms  0x7d68 fd:0x7f58d0216250
  1801 ms  0x7d68 PR_Close()
  1801 ms  0x7d68 fd:0x7f58d0216250
  1801 ms  0x7d68 PR_Close()
  1801 ms  0x7d68 fd:0x7f58d0216250
  1801 ms  0x7d68 PR_Close()
  1801 ms  0x7d68 fd:0x7f58d0216250
  1801 ms  0x7d68 PR_Close()
  1801 ms  0x7d68 fd:0x7f58d0216250
  1801 ms  0x7d68 PR_Close()
  1801 ms  0x7d68 fd:0x7f58d0216250
  1801 ms  0x7d68 PR_Close()
  1801 ms  0x7d68 fd:0x7f58d0216250
  1801 ms  0x7d68 PR_Close()
  1801 ms  0x7d68 fd:0x7f58d0216250
  1801 ms  0x7d68 PR_Close()
  1801 ms  0x7d68 fd:0x7f58d0216250
  1801 ms  0x7d68 PR_Close()
  1801 ms  0x7d68 fd:0x7f58d0216250
           /* TID 0x7d7c */
  2304 ms  0x7d7c PR_Close()
  2304 ms  0x7d7c fd:0x7f58d02165b0
  2307 ms  0x7d7c PR_Close()
  2307 ms  0x7d7c fd:0x7f58d02165b0
  2797 ms  0x7d7c PR_Close()
  2797 ms  0x7d7c fd:0x7f58d02165b0
           /* TID 0x7d22 */
  4179 ms  0x7d22 PR_Close()
  4179 ms  0x7d22 fd:0x7f58d02165b0
  4179 ms  0x7d22 PR_Close()
  4179 ms  0x7d22 fd:0x7f58d0216700
           /* TID 0x7d1a */
  4470 ms  0x7d1a SSL_ImportFD()
  4470 ms  0x7d1a ret:0x7f58d19cc670
  4470 ms  0x7d1a SSL_AuthCertificateHook()
  4470 ms  0x7d1a fd:0x7f58d19cc670
  4470 ms  0x7d1a ret:0x0
  4470 ms  0x7d1a PR_Connect()
  4470 ms  0x7d1a fd:0x7f58d19cc670
  4507 ms  0x7d1a SECKEY_CreateECPrivateKey()
  4507 ms  0x7d1a cx:0x7f58d05fba68
  4509 ms     | 0x7d1a EC_ValidatePublicKey()
  4509 ms     | 0x7d1a ret:0x0
  4509 ms  0x7d1a ret:0x7f58bf69d020::7f58bf69d020  90 37 6c bf                                      .7l.
  4509 ms  0x7d1a SECKEY_CreateECPrivateKey()
  4509 ms  0x7d1a cx:0x7f58d05fba68
  4511 ms     | 0x7d1a EC_ValidatePublicKey()
  4517 ms     | 0x7d1a ret:0x0
  4517 ms  0x7d1a ret:0x7f58bf69f020::7f58bf69f020  70 34 6c bf                                      p4l.
  4556 ms  0x7d1a PK11_Derive()
  4556 ms  0x7d1a basekey:0x7f58d21ac600
  4556 ms     | 0x7d1a PK11_DeriveWithTemplate()
  4557 ms  0x7d1a ret:0x7f58bf6b7c80
  4557 ms  0x7d1a PK11_PubDeriveWithKDF()
  4557 ms  0x7d1a seckey:0x7f58bf69d020
  4557 ms     | 0x7d1a EC_ValidatePublicKey()
  4557 ms     | 0x7d1a ret:0x0
  4559 ms  0x7d1a ret:0x7f58d21ac600
  4559 ms  SECKEY_ECParamsToKeySize()
  4559 ms  0x7d1a ret:0xff
  4559 ms  0x7d1a PK11_DeriveWithFlags()
  4559 ms  0x7d1a basekey:0x7f58bf6b7c80
  4559 ms     | 0x7d1a PK11_DeriveWithTemplate()
  4559 ms  0x7d1a ret:0x7f58bf6b7d00
  4559 ms  0x7d1a PK11_Derive()
  4559 ms  0x7d1a basekey:0x7f58d21ac600
  4559 ms     | 0x7d1a PK11_DeriveWithTemplate()
  4559 ms  0x7d1a ret:0x7f58bf6b7d80
  4559 ms  0x7d1a PK11_DeriveWithFlags()
  4559 ms  0x7d1a basekey:0x7f58bf6b7d80
  4559 ms     | 0x7d1a PK11_DeriveWithTemplate()
  4559 ms  0x7d1a ret:0x7f58bf6b7c80
  4559 ms  0x7d1a PK11_DeriveWithFlags()
  4559 ms  0x7d1a basekey:0x7f58bf6b7d80
  4559 ms     | 0x7d1a PK11_DeriveWithTemplate()
  4559 ms  0x7d1a ret:0x7f58d21ac600
  4559 ms  0x7d1a PK11_DeriveWithFlags()
  4559 ms  0x7d1a basekey:0x7f58bf6b7d80
  4559 ms     | 0x7d1a PK11_DeriveWithTemplate()
  4559 ms  0x7d1a ret:0x7f58bf6b7d00
  4560 ms  0x7d1a PK11_Derive()
  4560 ms  0x7d1a basekey:0x7f58bf6b7e00
  4560 ms     | 0x7d1a PK11_DeriveWithTemplate()
  4560 ms  0x7d1a ret:0x7f58bf6b7e80
  4560 ms  0x7d1a PK11_DeriveWithFlags()
  4560 ms  0x7d1a basekey:0x7f58d21ac600
  4560 ms     | 0x7d1a PK11_DeriveWithTemplate()
  4560 ms  0x7d1a ret:0x7f58bf6b7d80
  4560 ms  0x7d1a PK11_DeriveWithFlags()
  4560 ms  0x7d1a basekey:0x7f58d21ac600
  4560 ms     | 0x7d1a PK11_DeriveWithTemplate()
  4560 ms  0x7d1a ret:0x7f58bf6b7d00
  4564 ms  SECKEY_ECParamsToKeySize()
  4564 ms  0x7d1a ret:0x100
  4564 ms  SECKEY_ECParamsToBasePointOrderLen()
  4564 ms  0x7d1a ret:0x100
  4564 ms  SECKEY_ECParamsToBasePointOrderLen()
  4564 ms  0x7d1a ret:0x100
  4564 ms  0x7d1a EC_ValidatePublicKey()
  4569 ms  0x7d1a ret:0x0
  4575 ms  0x7d1a PK11_DeriveWithFlags()
  4575 ms  0x7d1a basekey:0x7f58d21ac600
  4575 ms     | 0x7d1a PK11_DeriveWithTemplate()
  4576 ms  0x7d1a ret:0x7f58bf6b7d00
           /* TID 0x7d22 */
  4603 ms  0x7d22 PR_Close()
  4603 ms  0x7d22 fd:0x7f58d1005cd0
           /* TID 0x7d74 */
  4603 ms  0x7d74 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4604 ms  0x7d74 ret:0x0
           /* TID 0x7d1a */
  4635 ms  0x7d1a SSL_AuthCertificateComplete()
  4635 ms  0x7d1a fd:0x7f58d19cc670
  4635 ms  0x7d1a err:0x0
  4635 ms     | 0x7d1a PK11_DeriveWithFlags()
  4635 ms     | 0x7d1a basekey:0x7f58bf6b7e80
  4635 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  4635 ms     | 0x7d1a ret:0x7f58bf6b7d00
  4635 ms     | 0x7d1a PK11_DeriveWithFlags()
  4635 ms     | 0x7d1a basekey:0x7f58bf6b7e80
  4635 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  4635 ms     | 0x7d1a ret:0x7f58bf6b7e00
  4635 ms     | 0x7d1a PK11_DeriveWithFlags()
  4635 ms     | 0x7d1a basekey:0x7f58bf6b7e80
  4635 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  4635 ms     | 0x7d1a ret:0x7f58bf6b7880
  4635 ms     | 0x7d1a PK11_DeriveWithFlags()
  4635 ms     | 0x7d1a basekey:0x7f58bf6b7c80
  4635 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  4635 ms     | 0x7d1a ret:0x7f58bf6b7a00
  4635 ms     | 0x7d1a PK11_DeriveWithFlags()
  4635 ms     | 0x7d1a basekey:0x7f58bf6b7c80
  4635 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  4635 ms     | 0x7d1a ret:0x7f58bf6b7b00
  4635 ms     | 0x7d1a PK11_DeriveWithFlags()
  4635 ms     | 0x7d1a basekey:0x7f58bf6b7e00
  4636 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  4636 ms     | 0x7d1a ret:0x7f58bf6b7b00
  4636 ms     | 0x7d1a PK11_DeriveWithFlags()
  4636 ms     | 0x7d1a basekey:0x7f58bf6b7e00
  4636 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  4636 ms     | 0x7d1a ret:0x7f58bf6b8080
  4636 ms     | 0x7d1a PK11_DeriveWithFlags()
  4636 ms     | 0x7d1a basekey:0x7f58bf6b7c80
  4636 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  4636 ms     | 0x7d1a ret:0x7f58bf6b7d80
  4636 ms     | 0x7d1a PK11_Encrypt()
  4636 ms     | 0x7d1a symkey:0x7f58bf6b7a00
  4636 ms     | 0x7d1a PK11_DeriveWithFlags()
  4636 ms     | 0x7d1a basekey:0x7f58bf6b7d00
  4636 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  4636 ms     | 0x7d1a ret:0x7f58bf6b7d80
  4636 ms     | 0x7d1a PK11_DeriveWithFlags()
  4636 ms     | 0x7d1a basekey:0x7f58bf6b7d00
  4636 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  4636 ms     | 0x7d1a ret:0x7f58bf6b8080
  4637 ms     | 0x7d1a PK11_DeriveWithFlags()
  4637 ms     | 0x7d1a basekey:0x7f58bf6b7e80
  4637 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  4637 ms     | 0x7d1a ret:0x7f58bf6b7a00
  4637 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  4637 ms     | 0x7d1a privk:0x7f58bf69f020::7f58bf69f020  70 34 6c bf                                      p4l.
  4637 ms     | 0x7d1a privk:0x7f58bf69f020::7f58bf69f020  e5 e5 e5 e5                                      ....
  4637 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  4637 ms     | 0x7d1a privk:0x7f58bf69d020::7f58bf69d020  90 37 6c bf                                      .7l.
  4637 ms     | 0x7d1a privk:0x7f58bf69d020::7f58bf69d020  e5 e5 e5 e5                                      ....
  4640 ms  0x7d1a PK11_Encrypt()
  4640 ms  0x7d1a symkey:0x7f58bf6b7d80
  4642 ms  0x7d1a PK11_Encrypt()
  4642 ms  0x7d1a symkey:0x7f58bf6b7d80
  4673 ms  0x7d1a PK11_DeriveWithFlags()
  4673 ms  0x7d1a basekey:0x7f58bf6b7a00
  4673 ms     | 0x7d1a PK11_DeriveWithTemplate()
  4674 ms  0x7d1a ret:0x7f58d21ac600
  4674 ms  0x7d1a PK11_Encrypt()
  4674 ms  0x7d1a symkey:0x7f58bf6b7d80
           /* TID 0x7d31 */
  4940 ms  0x7d31 PR_Close()
  4940 ms  0x7d31 fd:0x7f58bf6c8280
           /* TID 0x7d1a */
  5010 ms  0x7d1a SSL_ImportFD()
  5010 ms  0x7d1a ret:0x7f58bf406580
  5010 ms  0x7d1a SSL_AuthCertificateHook()
  5010 ms  0x7d1a fd:0x7f58bf406580
  5010 ms  0x7d1a ret:0x0
  5010 ms  0x7d1a PR_Connect()
  5010 ms  0x7d1a fd:0x7f58bf406580
  5011 ms  0x7d1a SSL_ImportFD()
  5011 ms  0x7d1a ret:0x7f58bf406850
  5011 ms  0x7d1a SSL_AuthCertificateHook()
  5011 ms  0x7d1a fd:0x7f58bf406850
  5011 ms  0x7d1a ret:0x0
  5011 ms  0x7d1a PR_Connect()
  5011 ms  0x7d1a fd:0x7f58bf406850
  5011 ms  0x7d1a SSL_ImportFD()
  5012 ms  0x7d1a ret:0x7f58bf406a90
  5012 ms  0x7d1a SSL_AuthCertificateHook()
  5012 ms  0x7d1a fd:0x7f58bf406a90
  5012 ms  0x7d1a ret:0x0
  5012 ms  0x7d1a PR_Connect()
  5012 ms  0x7d1a fd:0x7f58bf406a90
  5012 ms  0x7d1a SSL_ImportFD()
  5012 ms  0x7d1a ret:0x7f58bf406cd0
  5012 ms  0x7d1a SSL_AuthCertificateHook()
  5012 ms  0x7d1a fd:0x7f58bf406cd0
  5012 ms  0x7d1a ret:0x0
  5012 ms  0x7d1a PR_Connect()
  5012 ms  0x7d1a fd:0x7f58bf406cd0
  5012 ms  0x7d1a SSL_ImportFD()
  5012 ms  0x7d1a ret:0x7f58bf406ca0
  5012 ms  0x7d1a SSL_AuthCertificateHook()
  5012 ms  0x7d1a fd:0x7f58bf406ca0
  5012 ms  0x7d1a ret:0x0
  5012 ms  0x7d1a PR_Connect()
  5012 ms  0x7d1a fd:0x7f58bf406ca0
  5012 ms  0x7d1a SSL_ImportFD()
  5012 ms  0x7d1a ret:0x7f58bf4a4940
  5012 ms  0x7d1a SSL_AuthCertificateHook()
  5012 ms  0x7d1a fd:0x7f58bf4a4940
  5012 ms  0x7d1a ret:0x0
  5012 ms  0x7d1a PR_Connect()
  5012 ms  0x7d1a fd:0x7f58bf4a4940
  5018 ms  0x7d1a PK11_Encrypt()
  5018 ms  0x7d1a symkey:0x7f58bf6b7d80
  5048 ms  0x7d1a SECKEY_CreateECPrivateKey()
  5048 ms  0x7d1a cx:0x7f58d05fc288
  5048 ms     | 0x7d1a EC_ValidatePublicKey()
  5048 ms     | 0x7d1a ret:0x0
  5049 ms  0x7d1a ret:0x7f58bf422820::7f58bf422820  10 cf 44 bf                                      ..D.
  5049 ms  0x7d1a SECKEY_CreateECPrivateKey()
  5049 ms  0x7d1a cx:0x7f58d05fc288
  5049 ms     | 0x7d1a EC_ValidatePublicKey()
  5051 ms     | 0x7d1a ret:0x0
  5051 ms  0x7d1a ret:0x7f58bf424820::7f58bf424820  f0 cb 44 bf                                      ..D.
  5052 ms  0x7d1a SECKEY_CreateECPrivateKey()
  5052 ms  0x7d1a cx:0x7f58d05fc428
  5052 ms     | 0x7d1a EC_ValidatePublicKey()
  5052 ms     | 0x7d1a ret:0x0
  5052 ms  0x7d1a ret:0x7f58bf427020::7f58bf427020  80 98 66 bf                                      ..f.
  5052 ms  0x7d1a SECKEY_CreateECPrivateKey()
  5052 ms  0x7d1a cx:0x7f58d05fc428
  5053 ms     | 0x7d1a EC_ValidatePublicKey()
  5054 ms     | 0x7d1a ret:0x0
  5054 ms  0x7d1a ret:0x7f58bf429020::7f58bf429020  f0 9b 66 bf                                      ..f.
  5055 ms  0x7d1a SECKEY_CreateECPrivateKey()
  5055 ms  0x7d1a cx:0x7f58d05fc5c8
  5055 ms     | 0x7d1a EC_ValidatePublicKey()
  5055 ms     | 0x7d1a ret:0x0
  5055 ms  0x7d1a ret:0x7f58d68a6820::7f58d68a6820  d0 9d 66 bf                                      ..f.
  5055 ms  0x7d1a SECKEY_CreateECPrivateKey()
  5055 ms  0x7d1a cx:0x7f58d05fc5c8
  5056 ms     | 0x7d1a EC_ValidatePublicKey()
  5057 ms     | 0x7d1a ret:0x0
  5057 ms  0x7d1a ret:0x7f58d02bc020::7f58d02bc020  a0 1b 6f bf                                      ..o.
  5058 ms  0x7d1a SECKEY_CreateECPrivateKey()
  5058 ms  0x7d1a cx:0x7f58d05fc768
  5058 ms     | 0x7d1a EC_ValidatePublicKey()
  5058 ms     | 0x7d1a ret:0x0
  5058 ms  0x7d1a ret:0x7f58d02be820::7f58d02be820  50 f1 2d d0                                      P.-.
  5058 ms  0x7d1a SECKEY_CreateECPrivateKey()
  5058 ms  0x7d1a cx:0x7f58d05fc768
  5059 ms     | 0x7d1a EC_ValidatePublicKey()
  5060 ms     | 0x7d1a ret:0x0
  5060 ms  0x7d1a ret:0x7f58d02c0820::7f58d02c0820  30 f3 2d d0                                      0.-.
  5063 ms  0x7d1a SECKEY_CreateECPrivateKey()
  5063 ms  0x7d1a cx:0x7f58d05fc908
  5063 ms     | 0x7d1a EC_ValidatePublicKey()
  5063 ms     | 0x7d1a ret:0x0
  5063 ms  0x7d1a ret:0x7f58d02c3020::7f58d02c3020  70 f4 2d d0                                      p.-.
  5063 ms  0x7d1a SECKEY_CreateECPrivateKey()
  5063 ms  0x7d1a cx:0x7f58d05fc908
  5064 ms     | 0x7d1a EC_ValidatePublicKey()
  5065 ms     | 0x7d1a ret:0x0
  5065 ms  0x7d1a ret:0x7f58d02c5020::7f58d02c5020  50 f6 2d d0                                      P.-.
  5066 ms  0x7d1a SECKEY_CreateECPrivateKey()
  5066 ms  0x7d1a cx:0x7f58d05fcaa8
  5066 ms     | 0x7d1a EC_ValidatePublicKey()
  5066 ms     | 0x7d1a ret:0x0
  5066 ms  0x7d1a ret:0x7f58d02c7820::7f58d02c7820  90 f7 2d d0                                      ..-.
  5066 ms  0x7d1a SECKEY_CreateECPrivateKey()
  5066 ms  0x7d1a cx:0x7f58d05fcaa8
  5067 ms     | 0x7d1a EC_ValidatePublicKey()
  5068 ms     | 0x7d1a ret:0x0
  5068 ms  0x7d1a ret:0x7f58d02c9820::7f58d02c9820  70 f9 2d d0                                      p.-.
  5089 ms  0x7d1a PK11_Derive()
  5089 ms  0x7d1a basekey:0x7f58d21ac600
  5089 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5089 ms  0x7d1a ret:0x7f58bf6b7c80
  5089 ms  0x7d1a PK11_PubDeriveWithKDF()
  5089 ms  0x7d1a seckey:0x7f58bf422820
  5090 ms     | 0x7d1a EC_ValidatePublicKey()
  5090 ms     | 0x7d1a ret:0x0
  5091 ms  0x7d1a ret:0x7f58d21ac600
  5091 ms  SECKEY_ECParamsToKeySize()
  5091 ms  0x7d1a ret:0xff
  5091 ms  0x7d1a PK11_DeriveWithFlags()
  5091 ms  0x7d1a basekey:0x7f58bf6b7c80
  5091 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5091 ms  0x7d1a ret:0x7f58bf6b7e80
  5091 ms  0x7d1a PK11_Derive()
  5091 ms  0x7d1a basekey:0x7f58d21ac600
  5091 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5091 ms  0x7d1a ret:0x7f58bf6b8080
  5091 ms  0x7d1a PK11_DeriveWithFlags()
  5091 ms  0x7d1a basekey:0x7f58bf6b8080
  5091 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5091 ms  0x7d1a ret:0x7f58bf6b7c80
  5091 ms  0x7d1a PK11_DeriveWithFlags()
  5091 ms  0x7d1a basekey:0x7f58bf6b8080
  5091 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5091 ms  0x7d1a ret:0x7f58d21ac600
  5091 ms  0x7d1a PK11_DeriveWithFlags()
  5091 ms  0x7d1a basekey:0x7f58bf6b8080
  5091 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5091 ms  0x7d1a ret:0x7f58bf6b7e80
  5091 ms  0x7d1a PK11_Derive()
  5091 ms  0x7d1a basekey:0x7f58d024be00
  5091 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5091 ms  0x7d1a ret:0x7f58d024bf00
  5092 ms  0x7d1a PK11_DeriveWithFlags()
  5092 ms  0x7d1a basekey:0x7f58d21ac600
  5092 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5092 ms  0x7d1a ret:0x7f58bf6b8080
  5092 ms  0x7d1a PK11_DeriveWithFlags()
  5092 ms  0x7d1a basekey:0x7f58d21ac600
  5092 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5092 ms  0x7d1a ret:0x7f58bf6b7e80
  5094 ms  SECKEY_ECParamsToKeySize()
  5094 ms  0x7d1a ret:0x100
  5094 ms  SECKEY_ECParamsToBasePointOrderLen()
  5094 ms  0x7d1a ret:0x100
  5094 ms  SECKEY_ECParamsToBasePointOrderLen()
  5094 ms  0x7d1a ret:0x100
  5094 ms  0x7d1a EC_ValidatePublicKey()
  5099 ms  0x7d1a ret:0x0
  5104 ms  0x7d1a PK11_DeriveWithFlags()
  5104 ms  0x7d1a basekey:0x7f58d21ac600
  5104 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5104 ms  0x7d1a ret:0x7f58bf6b7e80
  5104 ms  0x7d1a SSL_AuthCertificateComplete()
  5104 ms  0x7d1a fd:0x7f58bf406580
  5104 ms  0x7d1a err:0x0
  5104 ms     | 0x7d1a PK11_DeriveWithFlags()
  5104 ms     | 0x7d1a basekey:0x7f58d024bf00
  5104 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5104 ms     | 0x7d1a ret:0x7f58bf6b7e80
  5104 ms     | 0x7d1a PK11_DeriveWithFlags()
  5104 ms     | 0x7d1a basekey:0x7f58d024bf00
  5104 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5104 ms     | 0x7d1a ret:0x7f58d024be00
  5104 ms     | 0x7d1a PK11_DeriveWithFlags()
  5104 ms     | 0x7d1a basekey:0x7f58d024bf00
  5104 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5104 ms     | 0x7d1a ret:0x7f58db038e80
  5104 ms     | 0x7d1a PK11_DeriveWithFlags()
  5104 ms     | 0x7d1a basekey:0x7f58bf6b7c80
  5104 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5104 ms     | 0x7d1a ret:0x7f58bf219080
  5104 ms     | 0x7d1a PK11_DeriveWithFlags()
  5104 ms     | 0x7d1a basekey:0x7f58bf6b7c80
  5104 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5104 ms     | 0x7d1a ret:0x7f58bf219100
  5104 ms     | 0x7d1a PK11_DeriveWithFlags()
  5104 ms     | 0x7d1a basekey:0x7f58d024be00
  5104 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5104 ms     | 0x7d1a ret:0x7f58bf219100
  5104 ms     | 0x7d1a PK11_DeriveWithFlags()
  5104 ms     | 0x7d1a basekey:0x7f58d024be00
  5104 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5104 ms     | 0x7d1a ret:0x7f58bf219180
  5105 ms     | 0x7d1a PK11_DeriveWithFlags()
  5105 ms     | 0x7d1a basekey:0x7f58bf6b7c80
  5105 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5105 ms     | 0x7d1a ret:0x7f58bf6b8080
  5105 ms     | 0x7d1a PK11_Encrypt()
  5105 ms     | 0x7d1a symkey:0x7f58bf219080
  5105 ms     | 0x7d1a PK11_DeriveWithFlags()
  5105 ms     | 0x7d1a basekey:0x7f58bf6b7e80
  5105 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5105 ms     | 0x7d1a ret:0x7f58bf6b8080
  5105 ms     | 0x7d1a PK11_DeriveWithFlags()
  5105 ms     | 0x7d1a basekey:0x7f58bf6b7e80
  5105 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5105 ms     | 0x7d1a ret:0x7f58bf219180
  5105 ms     | 0x7d1a PK11_DeriveWithFlags()
  5105 ms     | 0x7d1a basekey:0x7f58d024bf00
  5105 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5105 ms     | 0x7d1a ret:0x7f58bf219080
  5105 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  5105 ms     | 0x7d1a privk:0x7f58bf424820::7f58bf424820  f0 cb 44 bf                                      ..D.
  5105 ms     | 0x7d1a privk:0x7f58bf424820::7f58bf424820  e5 e5 e5 e5                                      ....
  5106 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  5106 ms     | 0x7d1a privk:0x7f58bf422820::7f58bf422820  10 cf 44 bf                                      ..D.
  5106 ms     | 0x7d1a privk:0x7f58bf422820::7f58bf422820  e5 e5 e5 e5                                      ....
  5107 ms  0x7d1a PK11_Encrypt()
  5107 ms  0x7d1a symkey:0x7f58bf6b8080
  5107 ms  0x7d1a PK11_Encrypt()
  5107 ms  0x7d1a symkey:0x7f58bf6b8080
  5107 ms  0x7d1a PK11_Derive()
  5107 ms  0x7d1a basekey:0x7f58d21ac600
  5107 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5107 ms  0x7d1a ret:0x7f58bf6b7c80
  5107 ms  0x7d1a PK11_PubDeriveWithKDF()
  5107 ms  0x7d1a seckey:0x7f58bf427020
  5107 ms     | 0x7d1a EC_ValidatePublicKey()
  5107 ms     | 0x7d1a ret:0x0
  5108 ms  0x7d1a ret:0x7f58d21ac600
  5108 ms  SECKEY_ECParamsToKeySize()
  5108 ms  0x7d1a ret:0xff
  5108 ms  0x7d1a PK11_DeriveWithFlags()
  5108 ms  0x7d1a basekey:0x7f58bf6b7c80
  5108 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5108 ms  0x7d1a ret:0x7f58d024bf00
  5108 ms  0x7d1a PK11_Derive()
  5108 ms  0x7d1a basekey:0x7f58d21ac600
  5108 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5108 ms  0x7d1a ret:0x7f58bf219180
  5109 ms  0x7d1a PK11_DeriveWithFlags()
  5109 ms  0x7d1a basekey:0x7f58bf219180
  5109 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5109 ms  0x7d1a ret:0x7f58bf6b7c80
  5109 ms  0x7d1a PK11_DeriveWithFlags()
  5109 ms  0x7d1a basekey:0x7f58bf219180
  5109 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5109 ms  0x7d1a ret:0x7f58d21ac600
  5109 ms  0x7d1a PK11_DeriveWithFlags()
  5109 ms  0x7d1a basekey:0x7f58bf219180
  5109 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5109 ms  0x7d1a ret:0x7f58d024bf00
  5109 ms  0x7d1a PK11_Derive()
  5109 ms  0x7d1a basekey:0x7f58bf219280
  5109 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5109 ms  0x7d1a ret:0x7f58bf219300
  5109 ms  0x7d1a PK11_DeriveWithFlags()
  5109 ms  0x7d1a basekey:0x7f58d21ac600
  5109 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5109 ms  0x7d1a ret:0x7f58bf219180
  5109 ms  0x7d1a PK11_DeriveWithFlags()
  5109 ms  0x7d1a basekey:0x7f58d21ac600
  5109 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5109 ms  0x7d1a ret:0x7f58d024bf00
  5110 ms  SECKEY_ECParamsToKeySize()
  5110 ms  0x7d1a ret:0x100
  5110 ms  SECKEY_ECParamsToBasePointOrderLen()
  5110 ms  0x7d1a ret:0x100
  5110 ms  SECKEY_ECParamsToBasePointOrderLen()
  5110 ms  0x7d1a ret:0x100
  5110 ms  0x7d1a EC_ValidatePublicKey()
  5113 ms  0x7d1a ret:0x0
  5121 ms  0x7d1a PK11_DeriveWithFlags()
  5121 ms  0x7d1a basekey:0x7f58d21ac600
  5121 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5121 ms  0x7d1a ret:0x7f58d024bf00
  5122 ms  0x7d1a PK11_Derive()
  5122 ms  0x7d1a basekey:0x7f58d024bf00
  5122 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5122 ms  0x7d1a ret:0x7f58bf219280
  5122 ms  0x7d1a PK11_PubDeriveWithKDF()
  5122 ms  0x7d1a seckey:0x7f58d68a6820
  5122 ms     | 0x7d1a EC_ValidatePublicKey()
  5122 ms     | 0x7d1a ret:0x0
  5122 ms  0x7d1a ret:0x7f58d024bf00
  5122 ms  SECKEY_ECParamsToKeySize()
  5122 ms  0x7d1a ret:0xff
  5122 ms  0x7d1a PK11_DeriveWithFlags()
  5122 ms  0x7d1a basekey:0x7f58bf219280
  5122 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5122 ms  0x7d1a ret:0x7f58bf219400
  5122 ms  0x7d1a PK11_Derive()
  5122 ms  0x7d1a basekey:0x7f58d024bf00
  5122 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5122 ms  0x7d1a ret:0x7f58bf219480
  5122 ms  0x7d1a PK11_DeriveWithFlags()
  5122 ms  0x7d1a basekey:0x7f58bf219480
  5122 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5122 ms  0x7d1a ret:0x7f58bf219280
  5122 ms  0x7d1a PK11_DeriveWithFlags()
  5122 ms  0x7d1a basekey:0x7f58bf219480
  5122 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5122 ms  0x7d1a ret:0x7f58d024bf00
  5122 ms  0x7d1a PK11_DeriveWithFlags()
  5122 ms  0x7d1a basekey:0x7f58bf219480
  5122 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5122 ms  0x7d1a ret:0x7f58bf219400
  5123 ms  0x7d1a PK11_Derive()
  5123 ms  0x7d1a basekey:0x7f58bf219500
  5123 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5123 ms  0x7d1a ret:0x7f58bf219580
  5123 ms  0x7d1a PK11_DeriveWithFlags()
  5123 ms  0x7d1a basekey:0x7f58d024bf00
  5123 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5123 ms  0x7d1a ret:0x7f58bf219480
  5123 ms  0x7d1a PK11_DeriveWithFlags()
  5123 ms  0x7d1a basekey:0x7f58d024bf00
  5123 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5123 ms  0x7d1a ret:0x7f58bf219400
  5123 ms  SECKEY_ECParamsToKeySize()
  5123 ms  0x7d1a ret:0x100
  5123 ms  SECKEY_ECParamsToBasePointOrderLen()
  5123 ms  0x7d1a ret:0x100
  5123 ms  SECKEY_ECParamsToBasePointOrderLen()
  5123 ms  0x7d1a ret:0x100
  5123 ms  0x7d1a EC_ValidatePublicKey()
  5125 ms  0x7d1a ret:0x0
  5127 ms  0x7d1a PK11_DeriveWithFlags()
  5127 ms  0x7d1a basekey:0x7f58d024bf00
  5127 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5127 ms  0x7d1a ret:0x7f58bf219400
  5127 ms  0x7d1a PK11_Derive()
  5127 ms  0x7d1a basekey:0x7f58bf219400
  5127 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5127 ms  0x7d1a ret:0x7f58bf219500
  5127 ms  0x7d1a PK11_PubDeriveWithKDF()
  5127 ms  0x7d1a seckey:0x7f58d02be820
  5127 ms     | 0x7d1a EC_ValidatePublicKey()
  5127 ms     | 0x7d1a ret:0x0
  5128 ms  0x7d1a ret:0x7f58bf219400
  5128 ms  SECKEY_ECParamsToKeySize()
  5128 ms  0x7d1a ret:0xff
  5128 ms  0x7d1a PK11_DeriveWithFlags()
  5128 ms  0x7d1a basekey:0x7f58bf219500
  5128 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5128 ms  0x7d1a ret:0x7f58bf219680
  5128 ms  0x7d1a PK11_Derive()
  5128 ms  0x7d1a basekey:0x7f58bf219400
  5128 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5128 ms  0x7d1a ret:0x7f58bf219700
  5128 ms  0x7d1a PK11_DeriveWithFlags()
  5128 ms  0x7d1a basekey:0x7f58bf219700
  5128 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5128 ms  0x7d1a ret:0x7f58bf219500
  5128 ms  0x7d1a PK11_DeriveWithFlags()
  5128 ms  0x7d1a basekey:0x7f58bf219700
  5128 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5128 ms  0x7d1a ret:0x7f58bf219400
  5128 ms  0x7d1a PK11_DeriveWithFlags()
  5128 ms  0x7d1a basekey:0x7f58bf219700
  5128 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5128 ms  0x7d1a ret:0x7f58bf219680
  5128 ms  0x7d1a PK11_Derive()
  5128 ms  0x7d1a basekey:0x7f58bf219780
  5128 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5128 ms  0x7d1a ret:0x7f58bf219800
  5128 ms  0x7d1a PK11_DeriveWithFlags()
  5128 ms  0x7d1a basekey:0x7f58bf219400
  5128 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5128 ms  0x7d1a ret:0x7f58bf219700
  5128 ms  0x7d1a PK11_DeriveWithFlags()
  5128 ms  0x7d1a basekey:0x7f58bf219400
  5128 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5128 ms  0x7d1a ret:0x7f58bf219680
  5129 ms  SECKEY_ECParamsToKeySize()
  5129 ms  0x7d1a ret:0x100
  5129 ms  SECKEY_ECParamsToBasePointOrderLen()
  5129 ms  0x7d1a ret:0x100
  5129 ms  SECKEY_ECParamsToBasePointOrderLen()
  5129 ms  0x7d1a ret:0x100
  5129 ms  0x7d1a EC_ValidatePublicKey()
  5130 ms  0x7d1a ret:0x0
  5132 ms  0x7d1a PK11_DeriveWithFlags()
  5132 ms  0x7d1a basekey:0x7f58bf219400
  5132 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5132 ms  0x7d1a ret:0x7f58bf219680
  5132 ms  0x7d1a PK11_Derive()
  5132 ms  0x7d1a basekey:0x7f58bf219680
  5132 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5132 ms  0x7d1a ret:0x7f58bf219780
  5132 ms  0x7d1a PK11_PubDeriveWithKDF()
  5132 ms  0x7d1a seckey:0x7f58d02c3020
  5132 ms     | 0x7d1a EC_ValidatePublicKey()
  5132 ms     | 0x7d1a ret:0x0
  5133 ms  0x7d1a ret:0x7f58bf219680
  5133 ms  SECKEY_ECParamsToKeySize()
  5133 ms  0x7d1a ret:0xff
  5133 ms  0x7d1a PK11_DeriveWithFlags()
  5133 ms  0x7d1a basekey:0x7f58bf219780
  5133 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5133 ms  0x7d1a ret:0x7f58bf219900
  5133 ms  0x7d1a PK11_Derive()
  5133 ms  0x7d1a basekey:0x7f58bf219680
  5133 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5133 ms  0x7d1a ret:0x7f58bf219980
  5133 ms  0x7d1a PK11_DeriveWithFlags()
  5133 ms  0x7d1a basekey:0x7f58bf219980
  5133 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5133 ms  0x7d1a ret:0x7f58bf219780
  5133 ms  0x7d1a PK11_DeriveWithFlags()
  5133 ms  0x7d1a basekey:0x7f58bf219980
  5133 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5133 ms  0x7d1a ret:0x7f58bf219680
  5133 ms  0x7d1a PK11_DeriveWithFlags()
  5133 ms  0x7d1a basekey:0x7f58bf219980
  5133 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5133 ms  0x7d1a ret:0x7f58bf219900
  5133 ms  0x7d1a PK11_Derive()
  5133 ms  0x7d1a basekey:0x7f58bf219a00
  5133 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5133 ms  0x7d1a ret:0x7f58bf219a80
  5133 ms  0x7d1a PK11_DeriveWithFlags()
  5133 ms  0x7d1a basekey:0x7f58bf219680
  5133 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5133 ms  0x7d1a ret:0x7f58bf219980
  5133 ms  0x7d1a PK11_DeriveWithFlags()
  5133 ms  0x7d1a basekey:0x7f58bf219680
  5133 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5133 ms  0x7d1a ret:0x7f58bf219900
  5134 ms  SECKEY_ECParamsToKeySize()
  5134 ms  0x7d1a ret:0x100
  5134 ms  SECKEY_ECParamsToBasePointOrderLen()
  5134 ms  0x7d1a ret:0x100
  5134 ms  SECKEY_ECParamsToBasePointOrderLen()
  5134 ms  0x7d1a ret:0x100
  5134 ms  0x7d1a EC_ValidatePublicKey()
  5135 ms  0x7d1a ret:0x0
  5137 ms  0x7d1a PK11_DeriveWithFlags()
  5137 ms  0x7d1a basekey:0x7f58bf219680
  5137 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5137 ms  0x7d1a ret:0x7f58bf219900
  5137 ms  0x7d1a PK11_Derive()
  5137 ms  0x7d1a basekey:0x7f58bf219900
  5137 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5137 ms  0x7d1a ret:0x7f58bf219a00
  5137 ms  0x7d1a PK11_PubDeriveWithKDF()
  5137 ms  0x7d1a seckey:0x7f58d02c7820
  5137 ms     | 0x7d1a EC_ValidatePublicKey()
  5137 ms     | 0x7d1a ret:0x0
  5138 ms  0x7d1a ret:0x7f58bf219900
  5138 ms  SECKEY_ECParamsToKeySize()
  5138 ms  0x7d1a ret:0xff
  5138 ms  0x7d1a PK11_DeriveWithFlags()
  5138 ms  0x7d1a basekey:0x7f58bf219a00
  5138 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5138 ms  0x7d1a ret:0x7f58bf219b80
  5138 ms  0x7d1a PK11_Derive()
  5138 ms  0x7d1a basekey:0x7f58bf219900
  5138 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5138 ms  0x7d1a ret:0x7f58bf219c00
  5138 ms  0x7d1a PK11_DeriveWithFlags()
  5138 ms  0x7d1a basekey:0x7f58bf219c00
  5138 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5138 ms  0x7d1a ret:0x7f58bf219a00
  5138 ms  0x7d1a PK11_DeriveWithFlags()
  5138 ms  0x7d1a basekey:0x7f58bf219c00
  5138 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5138 ms  0x7d1a ret:0x7f58bf219900
  5138 ms  0x7d1a PK11_DeriveWithFlags()
  5138 ms  0x7d1a basekey:0x7f58bf219c00
  5138 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5138 ms  0x7d1a ret:0x7f58bf219b80
  5138 ms  0x7d1a PK11_Derive()
  5138 ms  0x7d1a basekey:0x7f58bf219c80
  5138 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5138 ms  0x7d1a ret:0x7f58bf219d00
  5138 ms  0x7d1a PK11_DeriveWithFlags()
  5138 ms  0x7d1a basekey:0x7f58bf219900
  5138 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5138 ms  0x7d1a ret:0x7f58bf219c00
  5138 ms  0x7d1a PK11_DeriveWithFlags()
  5138 ms  0x7d1a basekey:0x7f58bf219900
  5138 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5138 ms  0x7d1a ret:0x7f58bf219b80
  5139 ms  SECKEY_ECParamsToKeySize()
  5139 ms  0x7d1a ret:0x100
  5139 ms  SECKEY_ECParamsToBasePointOrderLen()
  5139 ms  0x7d1a ret:0x100
  5139 ms  SECKEY_ECParamsToBasePointOrderLen()
  5139 ms  0x7d1a ret:0x100
  5139 ms  0x7d1a EC_ValidatePublicKey()
  5140 ms  0x7d1a ret:0x0
  5142 ms  0x7d1a PK11_DeriveWithFlags()
  5142 ms  0x7d1a basekey:0x7f58bf219900
  5142 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5142 ms  0x7d1a ret:0x7f58bf219b80
  5142 ms  0x7d1a PK11_DeriveWithFlags()
  5142 ms  0x7d1a basekey:0x7f58bf219080
  5142 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5142 ms  0x7d1a ret:0x7f58bf219b80
  5142 ms  0x7d1a PK11_Encrypt()
  5142 ms  0x7d1a symkey:0x7f58bf6b8080
  5143 ms  0x7d1a SSL_AuthCertificateComplete()
  5143 ms  0x7d1a fd:0x7f58bf406850
  5143 ms  0x7d1a err:0x0
  5143 ms     | 0x7d1a PK11_DeriveWithFlags()
  5143 ms     | 0x7d1a basekey:0x7f58bf219300
  5143 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5143 ms     | 0x7d1a ret:0x7f58bf219b80
  5143 ms     | 0x7d1a PK11_DeriveWithFlags()
  5143 ms     | 0x7d1a basekey:0x7f58bf219300
  5143 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5143 ms     | 0x7d1a ret:0x7f58bf219c80
  5143 ms     | 0x7d1a PK11_DeriveWithFlags()
  5143 ms     | 0x7d1a basekey:0x7f58bf219300
  5143 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5143 ms     | 0x7d1a ret:0x7f58bf219f00
  5143 ms     | 0x7d1a PK11_DeriveWithFlags()
  5143 ms     | 0x7d1a basekey:0x7f58bf6b7c80
  5143 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5143 ms     | 0x7d1a ret:0x7f58bf219f80
  5143 ms     | 0x7d1a PK11_DeriveWithFlags()
  5143 ms     | 0x7d1a basekey:0x7f58bf6b7c80
  5143 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5143 ms     | 0x7d1a ret:0x7f58bf21a000
  5143 ms     | 0x7d1a PK11_DeriveWithFlags()
  5143 ms     | 0x7d1a basekey:0x7f58bf219c80
  5143 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5143 ms     | 0x7d1a ret:0x7f58bf21a000
  5143 ms     | 0x7d1a PK11_DeriveWithFlags()
  5143 ms     | 0x7d1a basekey:0x7f58bf219c80
  5143 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5143 ms     | 0x7d1a ret:0x7f58bf21a080
  5143 ms     | 0x7d1a PK11_DeriveWithFlags()
  5143 ms     | 0x7d1a basekey:0x7f58bf6b7c80
  5143 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5143 ms     | 0x7d1a ret:0x7f58bf219180
  5143 ms     | 0x7d1a PK11_Encrypt()
  5143 ms     | 0x7d1a symkey:0x7f58bf219f80
  5143 ms     | 0x7d1a PK11_DeriveWithFlags()
  5143 ms     | 0x7d1a basekey:0x7f58bf219b80
  5143 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5143 ms     | 0x7d1a ret:0x7f58bf219180
  5143 ms     | 0x7d1a PK11_DeriveWithFlags()
  5143 ms     | 0x7d1a basekey:0x7f58bf219b80
  5143 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5143 ms     | 0x7d1a ret:0x7f58bf21a080
  5143 ms     | 0x7d1a PK11_DeriveWithFlags()
  5143 ms     | 0x7d1a basekey:0x7f58bf219300
  5143 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5143 ms     | 0x7d1a ret:0x7f58bf219f80
  5143 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  5143 ms     | 0x7d1a privk:0x7f58bf429020::7f58bf429020  f0 9b 66 bf                                      ..f.
  5144 ms     | 0x7d1a privk:0x7f58bf429020::7f58bf429020  e5 e5 e5 e5                                      ....
  5144 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  5144 ms     | 0x7d1a privk:0x7f58bf427020::7f58bf427020  80 98 66 bf                                      ..f.
  5144 ms     | 0x7d1a privk:0x7f58bf427020::7f58bf427020  e5 e5 e5 e5                                      ....
  5144 ms  0x7d1a SSL_AuthCertificateComplete()
  5144 ms  0x7d1a fd:0x7f58bf406a90
  5144 ms  0x7d1a err:0x0
  5144 ms     | 0x7d1a PK11_DeriveWithFlags()
  5144 ms     | 0x7d1a basekey:0x7f58bf219580
  5144 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5144 ms     | 0x7d1a ret:0x7f58d21ac600
  5144 ms     | 0x7d1a PK11_DeriveWithFlags()
  5144 ms     | 0x7d1a basekey:0x7f58bf219580
  5144 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5144 ms     | 0x7d1a ret:0x7f58bf6b7c80
  5144 ms     | 0x7d1a PK11_DeriveWithFlags()
  5144 ms     | 0x7d1a basekey:0x7f58bf219580
  5144 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5144 ms     | 0x7d1a ret:0x7f58bf219300
  5144 ms     | 0x7d1a PK11_DeriveWithFlags()
  5144 ms     | 0x7d1a basekey:0x7f58bf219280
  5144 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5144 ms     | 0x7d1a ret:0x7f58bf21a080
  5144 ms     | 0x7d1a PK11_DeriveWithFlags()
  5144 ms     | 0x7d1a basekey:0x7f58bf219280
  5144 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5144 ms     | 0x7d1a ret:0x7f58bf21a100
  5144 ms     | 0x7d1a PK11_DeriveWithFlags()
  5144 ms     | 0x7d1a basekey:0x7f58bf6b7c80
  5144 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5144 ms     | 0x7d1a ret:0x7f58bf21a100
  5144 ms     | 0x7d1a PK11_DeriveWithFlags()
  5144 ms     | 0x7d1a basekey:0x7f58bf6b7c80
  5144 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5144 ms     | 0x7d1a ret:0x7f58bf21a180
  5144 ms     | 0x7d1a PK11_DeriveWithFlags()
  5144 ms     | 0x7d1a basekey:0x7f58bf219280
  5144 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5144 ms     | 0x7d1a ret:0x7f58bf219480
  5144 ms     | 0x7d1a PK11_Encrypt()
  5144 ms     | 0x7d1a symkey:0x7f58bf21a080
  5144 ms     | 0x7d1a PK11_DeriveWithFlags()
  5144 ms     | 0x7d1a basekey:0x7f58d21ac600
  5144 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5144 ms     | 0x7d1a ret:0x7f58bf219480
  5144 ms     | 0x7d1a PK11_DeriveWithFlags()
  5144 ms     | 0x7d1a basekey:0x7f58d21ac600
  5144 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5144 ms     | 0x7d1a ret:0x7f58bf21a180
  5144 ms     | 0x7d1a PK11_DeriveWithFlags()
  5144 ms     | 0x7d1a basekey:0x7f58bf219580
  5144 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5144 ms     | 0x7d1a ret:0x7f58bf21a080
  5144 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  5144 ms     | 0x7d1a privk:0x7f58d02bc020::7f58d02bc020  a0 1b 6f bf                                      ..o.
  5144 ms     | 0x7d1a privk:0x7f58d02bc020::7f58d02bc020  e5 e5 e5 e5                                      ....
  5145 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  5145 ms     | 0x7d1a privk:0x7f58d68a6820::7f58d68a6820  d0 9d 66 bf                                      ..f.
  5145 ms     | 0x7d1a privk:0x7f58d68a6820::7f58d68a6820  e5 e5 e5 e5                                      ....
  5145 ms  0x7d1a SSL_AuthCertificateComplete()
  5145 ms  0x7d1a fd:0x7f58bf406cd0
  5145 ms  0x7d1a err:0x0
  5145 ms     | 0x7d1a PK11_DeriveWithFlags()
  5145 ms     | 0x7d1a basekey:0x7f58bf219800
  5145 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5145 ms     | 0x7d1a ret:0x7f58d024bf00
  5145 ms     | 0x7d1a PK11_DeriveWithFlags()
  5145 ms     | 0x7d1a basekey:0x7f58bf219800
  5145 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5145 ms     | 0x7d1a ret:0x7f58bf219280
  5145 ms     | 0x7d1a PK11_DeriveWithFlags()
  5145 ms     | 0x7d1a basekey:0x7f58bf219800
  5145 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5145 ms     | 0x7d1a ret:0x7f58bf219580
  5145 ms     | 0x7d1a PK11_DeriveWithFlags()
  5145 ms     | 0x7d1a basekey:0x7f58bf219500
  5145 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5145 ms     | 0x7d1a ret:0x7f58bf21a180
  5145 ms     | 0x7d1a PK11_DeriveWithFlags()
  5145 ms     | 0x7d1a basekey:0x7f58bf219500
  5145 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5145 ms     | 0x7d1a ret:0x7f58bf21a200
  5145 ms     | 0x7d1a PK11_DeriveWithFlags()
  5145 ms     | 0x7d1a basekey:0x7f58bf219280
  5145 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5145 ms     | 0x7d1a ret:0x7f58bf21a200
  5145 ms     | 0x7d1a PK11_DeriveWithFlags()
  5145 ms     | 0x7d1a basekey:0x7f58bf219280
  5145 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5145 ms     | 0x7d1a ret:0x7f58bf21a280
  5145 ms     | 0x7d1a PK11_DeriveWithFlags()
  5145 ms     | 0x7d1a basekey:0x7f58bf219500
  5145 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5145 ms     | 0x7d1a ret:0x7f58bf219700
  5145 ms     | 0x7d1a PK11_Encrypt()
  5145 ms     | 0x7d1a symkey:0x7f58bf21a180
  5145 ms     | 0x7d1a PK11_DeriveWithFlags()
  5145 ms     | 0x7d1a basekey:0x7f58d024bf00
  5145 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5145 ms     | 0x7d1a ret:0x7f58bf219700
  5145 ms     | 0x7d1a PK11_DeriveWithFlags()
  5145 ms     | 0x7d1a basekey:0x7f58d024bf00
  5145 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5145 ms     | 0x7d1a ret:0x7f58bf21a280
  5145 ms     | 0x7d1a PK11_DeriveWithFlags()
  5145 ms     | 0x7d1a basekey:0x7f58bf219800
  5145 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5145 ms     | 0x7d1a ret:0x7f58bf21a180
  5145 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  5145 ms     | 0x7d1a privk:0x7f58d02c0820::7f58d02c0820  30 f3 2d d0                                      0.-.
  5145 ms     | 0x7d1a privk:0x7f58d02c0820::7f58d02c0820  e5 e5 e5 e5                                      ....
  5145 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  5145 ms     | 0x7d1a privk:0x7f58d02be820::7f58d02be820  50 f1 2d d0                                      P.-.
  5146 ms     | 0x7d1a privk:0x7f58d02be820::7f58d02be820  e5 e5 e5 e5                                      ....
  5146 ms  0x7d1a SSL_AuthCertificateComplete()
  5146 ms  0x7d1a fd:0x7f58bf406ca0
  5146 ms  0x7d1a err:0x0
  5146 ms     | 0x7d1a PK11_DeriveWithFlags()
  5146 ms     | 0x7d1a basekey:0x7f58bf219a80
  5146 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5146 ms     | 0x7d1a ret:0x7f58bf219400
  5146 ms     | 0x7d1a PK11_DeriveWithFlags()
  5146 ms     | 0x7d1a basekey:0x7f58bf219a80
  5146 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5146 ms     | 0x7d1a ret:0x7f58bf219500
  5146 ms     | 0x7d1a PK11_DeriveWithFlags()
  5146 ms     | 0x7d1a basekey:0x7f58bf219a80
  5146 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5146 ms     | 0x7d1a ret:0x7f58bf219800
  5146 ms     | 0x7d1a PK11_DeriveWithFlags()
  5146 ms     | 0x7d1a basekey:0x7f58bf219780
  5146 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5146 ms     | 0x7d1a ret:0x7f58bf21a280
  5146 ms     | 0x7d1a PK11_DeriveWithFlags()
  5146 ms     | 0x7d1a basekey:0x7f58bf219780
  5146 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5146 ms     | 0x7d1a ret:0x7f58bf21a300
  5146 ms     | 0x7d1a PK11_DeriveWithFlags()
  5146 ms     | 0x7d1a basekey:0x7f58bf219500
  5146 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5146 ms     | 0x7d1a ret:0x7f58bf21a300
  5146 ms     | 0x7d1a PK11_DeriveWithFlags()
  5146 ms     | 0x7d1a basekey:0x7f58bf219500
  5146 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5146 ms     | 0x7d1a ret:0x7f58bf21a380
  5146 ms     | 0x7d1a PK11_DeriveWithFlags()
  5146 ms     | 0x7d1a basekey:0x7f58bf219780
  5146 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5146 ms     | 0x7d1a ret:0x7f58bf219980
  5146 ms     | 0x7d1a PK11_Encrypt()
  5146 ms     | 0x7d1a symkey:0x7f58bf21a280
  5146 ms     | 0x7d1a PK11_DeriveWithFlags()
  5146 ms     | 0x7d1a basekey:0x7f58bf219400
  5146 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5146 ms     | 0x7d1a ret:0x7f58bf219980
  5146 ms     | 0x7d1a PK11_DeriveWithFlags()
  5146 ms     | 0x7d1a basekey:0x7f58bf219400
  5146 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5146 ms     | 0x7d1a ret:0x7f58bf21a380
  5146 ms     | 0x7d1a PK11_DeriveWithFlags()
  5146 ms     | 0x7d1a basekey:0x7f58bf219a80
  5146 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5146 ms     | 0x7d1a ret:0x7f58bf21a280
  5146 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  5146 ms     | 0x7d1a privk:0x7f58d02c5020::7f58d02c5020  50 f6 2d d0                                      P.-.
  5146 ms     | 0x7d1a privk:0x7f58d02c5020::7f58d02c5020  e5 e5 e5 e5                                      ....
  5146 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  5146 ms     | 0x7d1a privk:0x7f58d02c3020::7f58d02c3020  70 f4 2d d0                                      p.-.
  5147 ms     | 0x7d1a privk:0x7f58d02c3020::7f58d02c3020  e5 e5 e5 e5                                      ....
  5147 ms  0x7d1a SSL_AuthCertificateComplete()
  5147 ms  0x7d1a fd:0x7f58bf4a4940
  5147 ms  0x7d1a err:0x0
  5147 ms     | 0x7d1a PK11_DeriveWithFlags()
  5147 ms     | 0x7d1a basekey:0x7f58bf219d00
  5147 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5147 ms     | 0x7d1a ret:0x7f58bf219680
  5147 ms     | 0x7d1a PK11_DeriveWithFlags()
  5147 ms     | 0x7d1a basekey:0x7f58bf219d00
  5147 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5147 ms     | 0x7d1a ret:0x7f58bf219780
  5147 ms     | 0x7d1a PK11_DeriveWithFlags()
  5147 ms     | 0x7d1a basekey:0x7f58bf219d00
  5147 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5147 ms     | 0x7d1a ret:0x7f58bf219a80
  5147 ms     | 0x7d1a PK11_DeriveWithFlags()
  5147 ms     | 0x7d1a basekey:0x7f58bf219a00
  5147 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5147 ms     | 0x7d1a ret:0x7f58bf21a380
  5147 ms     | 0x7d1a PK11_DeriveWithFlags()
  5147 ms     | 0x7d1a basekey:0x7f58bf219a00
  5147 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5147 ms     | 0x7d1a ret:0x7f58bf21a400
  5147 ms     | 0x7d1a PK11_DeriveWithFlags()
  5147 ms     | 0x7d1a basekey:0x7f58bf219780
  5147 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5147 ms     | 0x7d1a ret:0x7f58bf21a400
  5147 ms     | 0x7d1a PK11_DeriveWithFlags()
  5147 ms     | 0x7d1a basekey:0x7f58bf219780
  5147 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5147 ms     | 0x7d1a ret:0x7f58bf21a480
  5147 ms     | 0x7d1a PK11_DeriveWithFlags()
  5147 ms     | 0x7d1a basekey:0x7f58bf219a00
  5147 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5147 ms     | 0x7d1a ret:0x7f58bf219c00
  5147 ms     | 0x7d1a PK11_Encrypt()
  5147 ms     | 0x7d1a symkey:0x7f58bf21a380
  5147 ms     | 0x7d1a PK11_DeriveWithFlags()
  5147 ms     | 0x7d1a basekey:0x7f58bf219680
  5147 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5147 ms     | 0x7d1a ret:0x7f58bf219c00
  5147 ms     | 0x7d1a PK11_DeriveWithFlags()
  5147 ms     | 0x7d1a basekey:0x7f58bf219680
  5147 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5147 ms     | 0x7d1a ret:0x7f58bf21a480
  5147 ms     | 0x7d1a PK11_DeriveWithFlags()
  5147 ms     | 0x7d1a basekey:0x7f58bf219d00
  5147 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5147 ms     | 0x7d1a ret:0x7f58bf21a380
  5147 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  5147 ms     | 0x7d1a privk:0x7f58d02c9820::7f58d02c9820  70 f9 2d d0                                      p.-.
  5147 ms     | 0x7d1a privk:0x7f58d02c9820::7f58d02c9820  e5 e5 e5 e5                                      ....
  5148 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  5148 ms     | 0x7d1a privk:0x7f58d02c7820::7f58d02c7820  90 f7 2d d0                                      ..-.
  5148 ms     | 0x7d1a privk:0x7f58d02c7820::7f58d02c7820  e5 e5 e5 e5                                      ....
  5148 ms  0x7d1a PK11_Encrypt()
  5148 ms  0x7d1a symkey:0x7f58bf6b8080
  5148 ms  0x7d1a PK11_Encrypt()
  5148 ms  0x7d1a symkey:0x7f58bf219180
  5148 ms  0x7d1a PK11_Encrypt()
  5148 ms  0x7d1a symkey:0x7f58bf219480
  5149 ms  0x7d1a PK11_Encrypt()
  5149 ms  0x7d1a symkey:0x7f58bf219700
  5149 ms  0x7d1a PK11_Encrypt()
  5149 ms  0x7d1a symkey:0x7f58bf219980
  5149 ms  0x7d1a PK11_Encrypt()
  5149 ms  0x7d1a symkey:0x7f58bf219c00
  5149 ms  0x7d1a PK11_Encrypt()
  5149 ms  0x7d1a symkey:0x7f58bf6b8080
  5150 ms  0x7d1a PK11_Encrypt()
  5150 ms  0x7d1a symkey:0x7f58bf6b8080
  5150 ms  0x7d1a PK11_Encrypt()
  5150 ms  0x7d1a symkey:0x7f58bf6b8080
  5150 ms  0x7d1a PK11_Encrypt()
  5150 ms  0x7d1a symkey:0x7f58bf6b8080
  5151 ms  0x7d1a PK11_Encrypt()
  5151 ms  0x7d1a symkey:0x7f58bf6b8080
  5185 ms  0x7d1a PK11_DeriveWithFlags()
  5185 ms  0x7d1a basekey:0x7f58bf219f80
           /* TID 0x7d22 */
  5190 ms  0x7d22 PR_Close()
  5190 ms  0x7d22 fd:0x7f58d027c2e0
           /* TID 0x7d1a */
  5190 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5190 ms  0x7d1a ret:0x7f58bf219900
  5190 ms  0x7d1a PK11_DeriveWithFlags()
  5190 ms  0x7d1a basekey:0x7f58bf21a080
  5190 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5190 ms  0x7d1a ret:0x7f58bf219900
  5190 ms  0x7d1a PK11_DeriveWithFlags()
  5190 ms  0x7d1a basekey:0x7f58bf21a180
  5190 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5190 ms  0x7d1a ret:0x7f58bf219900
  5190 ms  0x7d1a PK11_DeriveWithFlags()
  5190 ms  0x7d1a basekey:0x7f58bf21a280
  5190 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5190 ms  0x7d1a ret:0x7f58bf219900
  5190 ms  0x7d1a PK11_DeriveWithFlags()
  5190 ms  0x7d1a basekey:0x7f58bf21a380
  5190 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5190 ms  0x7d1a ret:0x7f58bf219900
  5191 ms  0x7d1a PR_Close()
  5191 ms  0x7d1a fd:0x7f58bf4a4940
  5191 ms     | 0x7d1a PK11_Encrypt()
  5191 ms     | 0x7d1a symkey:0x7f58bf219c00
  5191 ms  0x7d1a PR_Close()
  5191 ms  0x7d1a fd:0x7f58bf406ca0
  5191 ms     | 0x7d1a PK11_Encrypt()
  5191 ms     | 0x7d1a symkey:0x7f58bf219980
  5192 ms  0x7d1a PR_Close()
  5192 ms  0x7d1a fd:0x7f58bf406cd0
  5192 ms     | 0x7d1a PK11_Encrypt()
  5192 ms     | 0x7d1a symkey:0x7f58bf219700
  5192 ms  0x7d1a PR_Close()
  5192 ms  0x7d1a fd:0x7f58bf406a90
  5192 ms     | 0x7d1a PK11_Encrypt()
  5192 ms     | 0x7d1a symkey:0x7f58bf219480
  5192 ms  0x7d1a PR_Close()
  5192 ms  0x7d1a fd:0x7f58bf406850
  5192 ms     | 0x7d1a PK11_Encrypt()
  5192 ms     | 0x7d1a symkey:0x7f58bf219180
           /* TID 0x7d22 */
  5217 ms  0x7d22 PR_Close()
  5217 ms  0x7d22 fd:0x7f58bf4060d0
  5263 ms  0x7d22 PR_Close()
  5263 ms  0x7d22 fd:0x7f58bf4060d0
  5265 ms  0x7d22 PR_Close()
  5265 ms  0x7d22 fd:0x7f58bf4060d0
  5267 ms  0x7d22 PR_Close()
  5267 ms  0x7d22 fd:0x7f58bf4060d0
  5275 ms  0x7d22 PR_Close()
  5275 ms  0x7d22 fd:0x7f58bf406070
           /* TID 0x7d1a */
  5329 ms  0x7d1a SSL_ImportFD()
  5330 ms  0x7d1a ret:0x7f58bf406850
  5330 ms  0x7d1a SSL_AuthCertificateHook()
  5330 ms  0x7d1a fd:0x7f58bf406850
  5330 ms  0x7d1a ret:0x0
  5331 ms  0x7d1a PK11_Encrypt()
  5331 ms  0x7d1a symkey:0x7f58bf6b7d80
           /* TID 0x7d22 */
  5332 ms  0x7d22 PR_Close()
  5332 ms  0x7d22 fd:0x7f58bf406220
           /* TID 0x7d1a */
  5333 ms  0x7d1a PK11_Encrypt()
  5333 ms  0x7d1a symkey:0x7f58bf6b7d80
  5334 ms  0x7d1a PK11_Encrypt()
  5334 ms  0x7d1a symkey:0x7f58bf6b7d80
  5334 ms  0x7d1a PR_Connect()
  5334 ms  0x7d1a fd:0x7f58bf406850
  5336 ms  0x7d1a SSL_ImportFD()
  5336 ms  0x7d1a ret:0x7f58bf4060d0
  5336 ms  0x7d1a SSL_AuthCertificateHook()
  5336 ms  0x7d1a fd:0x7f58bf4060d0
  5336 ms  0x7d1a ret:0x0
  5336 ms  0x7d1a PR_Connect()
  5336 ms  0x7d1a fd:0x7f58bf4060d0
  5344 ms  0x7d1a SSL_ImportFD()
  5344 ms  0x7d1a ret:0x7f58bf406bb0
  5344 ms  0x7d1a SSL_AuthCertificateHook()
  5344 ms  0x7d1a fd:0x7f58bf406bb0
  5344 ms  0x7d1a ret:0x0
  5344 ms  0x7d1a PR_Connect()
  5344 ms  0x7d1a fd:0x7f58bf406bb0
  5345 ms  0x7d1a SSL_ImportFD()
  5345 ms  0x7d1a ret:0x7f58bf4064f0
  5345 ms  0x7d1a SSL_AuthCertificateHook()
  5345 ms  0x7d1a fd:0x7f58bf4064f0
  5345 ms  0x7d1a ret:0x0
  5345 ms  0x7d1a PR_Connect()
  5345 ms  0x7d1a fd:0x7f58bf4064f0
  5345 ms  0x7d1a PK11_Encrypt()
  5345 ms  0x7d1a symkey:0x7f58bf6b7d80
           /* TID 0x7d22 */
  5368 ms  0x7d22 PR_Close()
  5368 ms  0x7d22 fd:0x7f58bf406040
           /* TID 0x7d1a */
  5371 ms  0x7d1a SECKEY_CreateECPrivateKey()
  5371 ms  0x7d1a cx:0x7f58d05fc428
  5371 ms     | 0x7d1a EC_ValidatePublicKey()
  5371 ms     | 0x7d1a ret:0x0
  5371 ms  0x7d1a ret:0x7f58bf426020::7f58bf426020  70 ce 44 bf                                      p.D.
  5371 ms  0x7d1a SECKEY_CreateECPrivateKey()
  5371 ms  0x7d1a cx:0x7f58d05fc428
  5372 ms     | 0x7d1a EC_ValidatePublicKey()
  5374 ms     | 0x7d1a ret:0x0
  5374 ms  0x7d1a ret:0x7f58bf428020::7f58bf428020  f0 9b 51 bf                                      ..Q.
  5374 ms  0x7d1a SECKEY_CreateECPrivateKey()
  5374 ms  0x7d1a cx:0x7f58d05fc5c8
  5374 ms     | 0x7d1a EC_ValidatePublicKey()
  5374 ms     | 0x7d1a ret:0x0
  5380 ms  0x7d1a ret:0x7f58bf69a020::7f58bf69a020  50 91 51 bf                                      P.Q.
  5380 ms  0x7d1a SECKEY_CreateECPrivateKey()
  5380 ms  0x7d1a cx:0x7f58d05fc5c8
  5381 ms     | 0x7d1a EC_ValidatePublicKey()
  5384 ms     | 0x7d1a ret:0x0
  5384 ms  0x7d1a ret:0x7f58d02ba820::7f58d02ba820  30 9d 66 bf                                      0.f.
  5385 ms  0x7d1a SECKEY_CreateECPrivateKey()
  5385 ms  0x7d1a cx:0x7f58d05fc908
  5385 ms     | 0x7d1a EC_ValidatePublicKey()
  5385 ms     | 0x7d1a ret:0x0
  5385 ms  0x7d1a ret:0x7f58d02bd020::7f58d02bd020  70 9e 66 bf                                      p.f.
  5385 ms  0x7d1a SECKEY_CreateECPrivateKey()
  5385 ms  0x7d1a cx:0x7f58d05fc908
  5386 ms     | 0x7d1a EC_ValidatePublicKey()
  5387 ms     | 0x7d1a ret:0x0
  5387 ms  0x7d1a ret:0x7f58d02bf820::7f58d02bf820  a0 1b 6f bf                                      ..o.
  5394 ms  0x7d1a SECKEY_CreateECPrivateKey()
  5394 ms  0x7d1a cx:0x7f58d05fc768
  5394 ms     | 0x7d1a EC_ValidatePublicKey()
  5394 ms     | 0x7d1a ret:0x0
  5394 ms  0x7d1a ret:0x7f58d02c2020::7f58d02c2020  a0 f1 2d d0                                      ..-.
  5394 ms  0x7d1a SECKEY_CreateECPrivateKey()
  5394 ms  0x7d1a cx:0x7f58d05fc768
  5395 ms     | 0x7d1a EC_ValidatePublicKey()
  5396 ms     | 0x7d1a ret:0x0
  5396 ms  0x7d1a ret:0x7f58d02c4020::7f58d02c4020  80 f3 2d d0                                      ..-.
           /* TID 0x7d22 */
  5406 ms  0x7d22 PR_Close()
  5406 ms  0x7d22 fd:0x7f58bf406f10
  5406 ms  0x7d22 PR_Close()
  5406 ms  0x7d22 fd:0x7f58bf406130
  5407 ms  0x7d22 PR_Close()
  5407 ms  0x7d22 fd:0x7f58bf406130
           /* TID 0x7d1a */
  5411 ms  0x7d1a PK11_Derive()
  5411 ms  0x7d1a basekey:0x7f58bf219f00
  5411 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5411 ms  0x7d1a ret:0x7f58bf219c80
  5411 ms  0x7d1a PK11_PubDeriveWithKDF()
  5411 ms  0x7d1a seckey:0x7f58bf426020
  5412 ms     | 0x7d1a EC_ValidatePublicKey()
  5412 ms     | 0x7d1a ret:0x0
  5412 ms  0x7d1a ret:0x7f58bf219f00
  5412 ms  SECKEY_ECParamsToKeySize()
  5412 ms  0x7d1a ret:0xff
  5412 ms  0x7d1a PK11_DeriveWithFlags()
  5412 ms  0x7d1a basekey:0x7f58bf219c80
  5412 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5412 ms  0x7d1a ret:0x7f58bf219b80
  5412 ms  0x7d1a PK11_Derive()
  5412 ms  0x7d1a basekey:0x7f58bf219f00
  5412 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5412 ms  0x7d1a ret:0x7f58bf219f80
  5412 ms  0x7d1a PK11_DeriveWithFlags()
  5412 ms  0x7d1a basekey:0x7f58bf219f80
  5412 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5412 ms  0x7d1a ret:0x7f58bf219c80
  5412 ms  0x7d1a PK11_DeriveWithFlags()
  5412 ms  0x7d1a basekey:0x7f58bf219f80
  5412 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5412 ms  0x7d1a ret:0x7f58bf219f00
  5412 ms  0x7d1a PK11_DeriveWithFlags()
  5412 ms  0x7d1a basekey:0x7f58bf219f80
  5412 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5412 ms  0x7d1a ret:0x7f58bf219b80
  5412 ms  0x7d1a PK11_Derive()
  5412 ms  0x7d1a basekey:0x7f58bf21a000
  5412 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5412 ms  0x7d1a ret:0x7f58bf219180
  5412 ms  0x7d1a PK11_DeriveWithFlags()
  5412 ms  0x7d1a basekey:0x7f58bf219f00
  5412 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5412 ms  0x7d1a ret:0x7f58bf219f80
  5412 ms  0x7d1a PK11_DeriveWithFlags()
  5412 ms  0x7d1a basekey:0x7f58bf219f00
  5412 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5412 ms  0x7d1a ret:0x7f58bf219b80
  5413 ms  SECKEY_ECParamsToKeySize()
  5413 ms  0x7d1a ret:0x100
  5413 ms  SECKEY_ECParamsToBasePointOrderLen()
  5413 ms  0x7d1a ret:0x100
  5413 ms  SECKEY_ECParamsToBasePointOrderLen()
  5413 ms  0x7d1a ret:0x100
  5413 ms  0x7d1a EC_ValidatePublicKey()
  5414 ms  0x7d1a ret:0x0
  5416 ms  0x7d1a PK11_DeriveWithFlags()
  5416 ms  0x7d1a basekey:0x7f58bf219f00
  5416 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5416 ms  0x7d1a ret:0x7f58bf219b80
  5416 ms  0x7d1a SSL_AuthCertificateComplete()
  5416 ms  0x7d1a fd:0x7f58bf406850
  5416 ms  0x7d1a err:0x0
  5416 ms     | 0x7d1a PK11_DeriveWithFlags()
  5416 ms     | 0x7d1a basekey:0x7f58bf219180
  5416 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5416 ms     | 0x7d1a ret:0x7f58bf219b80
  5416 ms     | 0x7d1a PK11_DeriveWithFlags()
  5416 ms     | 0x7d1a basekey:0x7f58bf219180
  5416 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5416 ms     | 0x7d1a ret:0x7f58bf21a000
  5416 ms     | 0x7d1a PK11_DeriveWithFlags()
  5416 ms     | 0x7d1a basekey:0x7f58bf219180
  5416 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5417 ms     | 0x7d1a ret:0x7f58bf219300
  5417 ms     | 0x7d1a PK11_DeriveWithFlags()
  5417 ms     | 0x7d1a basekey:0x7f58bf219c80
  5417 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5417 ms     | 0x7d1a ret:0x7f58bf6b7c80
  5417 ms     | 0x7d1a PK11_DeriveWithFlags()
  5417 ms     | 0x7d1a basekey:0x7f58bf219c80
  5417 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5417 ms     | 0x7d1a ret:0x7f58d21ac600
  5417 ms     | 0x7d1a PK11_DeriveWithFlags()
  5417 ms     | 0x7d1a basekey:0x7f58bf21a000
  5417 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5417 ms     | 0x7d1a ret:0x7f58d21ac600
  5417 ms     | 0x7d1a PK11_DeriveWithFlags()
  5417 ms     | 0x7d1a basekey:0x7f58bf21a000
  5417 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5417 ms     | 0x7d1a ret:0x7f58bf21a080
  5417 ms     | 0x7d1a PK11_DeriveWithFlags()
  5417 ms     | 0x7d1a basekey:0x7f58bf219c80
  5417 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5417 ms     | 0x7d1a ret:0x7f58bf219f80
  5417 ms     | 0x7d1a PK11_Encrypt()
  5417 ms     | 0x7d1a symkey:0x7f58bf6b7c80
  5422 ms     | 0x7d1a PK11_DeriveWithFlags()
  5422 ms     | 0x7d1a basekey:0x7f58bf219b80
  5422 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5422 ms     | 0x7d1a ret:0x7f58bf219f80
  5422 ms     | 0x7d1a PK11_DeriveWithFlags()
  5422 ms     | 0x7d1a basekey:0x7f58bf219b80
  5422 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5422 ms     | 0x7d1a ret:0x7f58bf21a080
  5422 ms     | 0x7d1a PK11_DeriveWithFlags()
  5422 ms     | 0x7d1a basekey:0x7f58bf219180
  5422 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5422 ms     | 0x7d1a ret:0x7f58bf6b7c80
  5422 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  5422 ms     | 0x7d1a privk:0x7f58bf428020::7f58bf428020  f0 9b 51 bf                                      ..Q.
  5422 ms     | 0x7d1a privk:0x7f58bf428020::7f58bf428020  e5 e5 e5 e5                                      ....
  5422 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  5422 ms     | 0x7d1a privk:0x7f58bf426020::7f58bf426020  70 ce 44 bf                                      p.D.
  5422 ms     | 0x7d1a privk:0x7f58bf426020::7f58bf426020  e5 e5 e5 e5                                      ....
  5422 ms  0x7d1a PK11_Derive()
  5422 ms  0x7d1a basekey:0x7f58bf219f00
  5422 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5422 ms  0x7d1a ret:0x7f58bf219c80
  5422 ms  0x7d1a PK11_PubDeriveWithKDF()
  5422 ms  0x7d1a seckey:0x7f58bf69a020
  5422 ms     | 0x7d1a EC_ValidatePublicKey()
  5422 ms     | 0x7d1a ret:0x0
  5423 ms  0x7d1a ret:0x7f58bf219f00
  5423 ms  SECKEY_ECParamsToKeySize()
  5423 ms  0x7d1a ret:0xff
  5423 ms  0x7d1a PK11_DeriveWithFlags()
  5423 ms  0x7d1a basekey:0x7f58bf219c80
  5423 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5423 ms  0x7d1a ret:0x7f58bf219180
  5423 ms  0x7d1a PK11_Derive()
  5423 ms  0x7d1a basekey:0x7f58bf219f00
  5423 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5423 ms  0x7d1a ret:0x7f58bf21a080
  5423 ms  0x7d1a PK11_DeriveWithFlags()
  5423 ms  0x7d1a basekey:0x7f58bf21a080
  5423 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5423 ms  0x7d1a ret:0x7f58bf219c80
  5423 ms  0x7d1a PK11_DeriveWithFlags()
  5423 ms  0x7d1a basekey:0x7f58bf21a080
  5423 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5423 ms  0x7d1a ret:0x7f58bf219f00
  5423 ms  0x7d1a PK11_DeriveWithFlags()
  5423 ms  0x7d1a basekey:0x7f58bf21a080
  5423 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5423 ms  0x7d1a ret:0x7f58bf219180
  5423 ms  0x7d1a PK11_Derive()
  5423 ms  0x7d1a basekey:0x7f58bf21a100
  5423 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5423 ms  0x7d1a ret:0x7f58bf219480
  5423 ms  0x7d1a PK11_DeriveWithFlags()
  5423 ms  0x7d1a basekey:0x7f58bf219f00
  5423 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5423 ms  0x7d1a ret:0x7f58bf21a080
  5423 ms  0x7d1a PK11_DeriveWithFlags()
  5423 ms  0x7d1a basekey:0x7f58bf219f00
  5423 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5423 ms  0x7d1a ret:0x7f58bf219180
  5424 ms  SECKEY_ECParamsToKeySize()
  5424 ms  0x7d1a ret:0x100
  5424 ms  SECKEY_ECParamsToBasePointOrderLen()
  5424 ms  0x7d1a ret:0x100
  5424 ms  SECKEY_ECParamsToBasePointOrderLen()
  5424 ms  0x7d1a ret:0x100
  5424 ms  0x7d1a EC_ValidatePublicKey()
  5425 ms  0x7d1a ret:0x0
  5427 ms  0x7d1a PK11_DeriveWithFlags()
  5427 ms  0x7d1a basekey:0x7f58bf219f00
  5427 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5427 ms  0x7d1a ret:0x7f58bf219180
  5434 ms  0x7d1a PK11_Encrypt()
  5434 ms  0x7d1a symkey:0x7f58bf219f80
  5434 ms  0x7d1a SSL_AuthCertificateComplete()
  5434 ms  0x7d1a fd:0x7f58bf4060d0
  5434 ms  0x7d1a err:0x0
  5434 ms     | 0x7d1a PK11_DeriveWithFlags()
  5434 ms     | 0x7d1a basekey:0x7f58bf219480
  5434 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5434 ms     | 0x7d1a ret:0x7f58bf219180
  5434 ms     | 0x7d1a PK11_DeriveWithFlags()
  5434 ms     | 0x7d1a basekey:0x7f58bf219480
  5434 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5434 ms     | 0x7d1a ret:0x7f58bf21a100
  5434 ms     | 0x7d1a PK11_DeriveWithFlags()
  5434 ms     | 0x7d1a basekey:0x7f58bf219480
  5434 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5434 ms     | 0x7d1a ret:0x7f58bf219580
  5434 ms     | 0x7d1a PK11_DeriveWithFlags()
  5434 ms     | 0x7d1a basekey:0x7f58bf219c80
  5434 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5434 ms     | 0x7d1a ret:0x7f58bf219280
  5434 ms     | 0x7d1a PK11_DeriveWithFlags()
  5434 ms     | 0x7d1a basekey:0x7f58bf219c80
  5434 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5434 ms     | 0x7d1a ret:0x7f58d024bf00
  5434 ms     | 0x7d1a PK11_DeriveWithFlags()
  5434 ms     | 0x7d1a basekey:0x7f58bf21a100
  5434 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5434 ms     | 0x7d1a ret:0x7f58d024bf00
  5434 ms     | 0x7d1a PK11_DeriveWithFlags()
  5434 ms     | 0x7d1a basekey:0x7f58bf21a100
  5434 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5434 ms     | 0x7d1a ret:0x7f58bf21a180
  5434 ms     | 0x7d1a PK11_DeriveWithFlags()
  5434 ms     | 0x7d1a basekey:0x7f58bf219c80
  5434 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5434 ms     | 0x7d1a ret:0x7f58bf21a080
  5434 ms     | 0x7d1a PK11_Encrypt()
  5434 ms     | 0x7d1a symkey:0x7f58bf219280
  5439 ms     | 0x7d1a PK11_DeriveWithFlags()
  5439 ms     | 0x7d1a basekey:0x7f58bf219180
  5439 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5439 ms     | 0x7d1a ret:0x7f58bf21a080
  5439 ms     | 0x7d1a PK11_DeriveWithFlags()
  5439 ms     | 0x7d1a basekey:0x7f58bf219180
  5439 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5439 ms     | 0x7d1a ret:0x7f58bf21a180
  5439 ms     | 0x7d1a PK11_DeriveWithFlags()
  5439 ms     | 0x7d1a basekey:0x7f58bf219480
  5439 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5439 ms     | 0x7d1a ret:0x7f58bf219280
  5440 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  5440 ms     | 0x7d1a privk:0x7f58d02ba820::7f58d02ba820  30 9d 66 bf                                      0.f.
  5440 ms     | 0x7d1a privk:0x7f58d02ba820::7f58d02ba820  e5 e5 e5 e5                                      ....
  5440 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  5440 ms     | 0x7d1a privk:0x7f58bf69a020::7f58bf69a020  50 91 51 bf                                      P.Q.
  5440 ms     | 0x7d1a privk:0x7f58bf69a020::7f58bf69a020  e5 e5 e5 e5                                      ....
  5440 ms  0x7d1a PK11_Derive()
  5440 ms  0x7d1a basekey:0x7f58bf219f00
  5440 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5440 ms  0x7d1a ret:0x7f58bf219c80
  5440 ms  0x7d1a PK11_PubDeriveWithKDF()
  5440 ms  0x7d1a seckey:0x7f58d02bd020
  5440 ms     | 0x7d1a EC_ValidatePublicKey()
  5440 ms     | 0x7d1a ret:0x0
  5440 ms  0x7d1a ret:0x7f58bf219f00
  5440 ms  SECKEY_ECParamsToKeySize()
  5440 ms  0x7d1a ret:0xff
  5440 ms  0x7d1a PK11_DeriveWithFlags()
  5440 ms  0x7d1a basekey:0x7f58bf219c80
  5440 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5440 ms  0x7d1a ret:0x7f58bf219480
  5440 ms  0x7d1a PK11_Derive()
  5440 ms  0x7d1a basekey:0x7f58bf219f00
  5440 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5440 ms  0x7d1a ret:0x7f58bf21a180
  5440 ms  0x7d1a PK11_DeriveWithFlags()
  5440 ms  0x7d1a basekey:0x7f58bf21a180
  5440 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5441 ms  0x7d1a ret:0x7f58bf219c80
  5441 ms  0x7d1a PK11_DeriveWithFlags()
  5441 ms  0x7d1a basekey:0x7f58bf21a180
  5441 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5441 ms  0x7d1a ret:0x7f58bf219f00
  5441 ms  0x7d1a PK11_DeriveWithFlags()
  5441 ms  0x7d1a basekey:0x7f58bf21a180
  5441 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5441 ms  0x7d1a ret:0x7f58bf219480
  5441 ms  0x7d1a PK11_Derive()
  5441 ms  0x7d1a basekey:0x7f58bf21a200
  5441 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5441 ms  0x7d1a ret:0x7f58bf219700
  5441 ms  0x7d1a PK11_DeriveWithFlags()
  5441 ms  0x7d1a basekey:0x7f58bf219f00
  5441 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5441 ms  0x7d1a ret:0x7f58bf21a180
  5441 ms  0x7d1a PK11_DeriveWithFlags()
  5441 ms  0x7d1a basekey:0x7f58bf219f00
  5441 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5441 ms  0x7d1a ret:0x7f58bf219480
  5441 ms  SECKEY_ECParamsToKeySize()
  5441 ms  0x7d1a ret:0x100
  5441 ms  SECKEY_ECParamsToBasePointOrderLen()
  5441 ms  0x7d1a ret:0x100
  5441 ms  SECKEY_ECParamsToBasePointOrderLen()
  5441 ms  0x7d1a ret:0x100
  5441 ms  0x7d1a EC_ValidatePublicKey()
  5443 ms  0x7d1a ret:0x0
  5455 ms  0x7d1a PK11_DeriveWithFlags()
  5455 ms  0x7d1a basekey:0x7f58bf219f00
  5455 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5455 ms  0x7d1a ret:0x7f58bf219480
  5455 ms  0x7d1a PK11_Derive()
  5455 ms  0x7d1a basekey:0x7f58bf219480
  5455 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5455 ms  0x7d1a ret:0x7f58bf21a200
  5455 ms  0x7d1a PK11_PubDeriveWithKDF()
  5455 ms  0x7d1a seckey:0x7f58d02c2020
  5455 ms     | 0x7d1a EC_ValidatePublicKey()
  5455 ms     | 0x7d1a ret:0x0
  5455 ms  0x7d1a ret:0x7f58bf219480
  5455 ms  SECKEY_ECParamsToKeySize()
  5455 ms  0x7d1a ret:0xff
  5455 ms  0x7d1a PK11_DeriveWithFlags()
  5455 ms  0x7d1a basekey:0x7f58bf21a200
  5455 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5455 ms  0x7d1a ret:0x7f58bf219800
  5455 ms  0x7d1a PK11_Derive()
  5455 ms  0x7d1a basekey:0x7f58bf219480
  5455 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5455 ms  0x7d1a ret:0x7f58bf219500
  5455 ms  0x7d1a PK11_DeriveWithFlags()
  5455 ms  0x7d1a basekey:0x7f58bf219500
  5455 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5455 ms  0x7d1a ret:0x7f58bf21a200
  5455 ms  0x7d1a PK11_DeriveWithFlags()
  5455 ms  0x7d1a basekey:0x7f58bf219500
  5455 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5455 ms  0x7d1a ret:0x7f58bf219480
  5455 ms  0x7d1a PK11_DeriveWithFlags()
  5455 ms  0x7d1a basekey:0x7f58bf219500
  5455 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5455 ms  0x7d1a ret:0x7f58bf219800
  5455 ms  0x7d1a PK11_Derive()
  5455 ms  0x7d1a basekey:0x7f58bf219400
  5455 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5456 ms  0x7d1a ret:0x7f58bf21a280
  5456 ms  0x7d1a PK11_DeriveWithFlags()
  5456 ms  0x7d1a basekey:0x7f58bf219480
  5456 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5456 ms  0x7d1a ret:0x7f58bf219500
  5456 ms  0x7d1a PK11_DeriveWithFlags()
  5456 ms  0x7d1a basekey:0x7f58bf219480
  5456 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5456 ms  0x7d1a ret:0x7f58bf219800
  5456 ms  SECKEY_ECParamsToKeySize()
  5456 ms  0x7d1a ret:0x100
  5456 ms  SECKEY_ECParamsToBasePointOrderLen()
  5456 ms  0x7d1a ret:0x100
  5456 ms  SECKEY_ECParamsToBasePointOrderLen()
  5456 ms  0x7d1a ret:0x100
  5456 ms  0x7d1a EC_ValidatePublicKey()
  5458 ms  0x7d1a ret:0x0
  5460 ms  0x7d1a PK11_DeriveWithFlags()
  5460 ms  0x7d1a basekey:0x7f58bf219480
  5460 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5460 ms  0x7d1a ret:0x7f58bf219800
  5460 ms  0x7d1a PK11_Encrypt()
  5460 ms  0x7d1a symkey:0x7f58bf21a080
  5460 ms  0x7d1a SSL_AuthCertificateComplete()
  5460 ms  0x7d1a fd:0x7f58bf4064f0
  5460 ms  0x7d1a err:0x0
  5460 ms     | 0x7d1a PK11_DeriveWithFlags()
  5460 ms     | 0x7d1a basekey:0x7f58bf219700
  5460 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5460 ms     | 0x7d1a ret:0x7f58bf219800
  5460 ms     | 0x7d1a PK11_DeriveWithFlags()
  5460 ms     | 0x7d1a basekey:0x7f58bf219700
  5460 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5460 ms     | 0x7d1a ret:0x7f58bf219400
  5460 ms     | 0x7d1a PK11_DeriveWithFlags()
  5460 ms     | 0x7d1a basekey:0x7f58bf219700
  5460 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5460 ms     | 0x7d1a ret:0x7f58bf21a300
  5460 ms     | 0x7d1a PK11_DeriveWithFlags()
  5460 ms     | 0x7d1a basekey:0x7f58bf219c80
  5460 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5460 ms     | 0x7d1a ret:0x7f58bf219980
  5460 ms     | 0x7d1a PK11_DeriveWithFlags()
  5460 ms     | 0x7d1a basekey:0x7f58bf219c80
  5460 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5460 ms     | 0x7d1a ret:0x7f58bf219a80
  5460 ms     | 0x7d1a PK11_DeriveWithFlags()
  5460 ms     | 0x7d1a basekey:0x7f58bf219400
  5460 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5460 ms     | 0x7d1a ret:0x7f58bf219a80
  5460 ms     | 0x7d1a PK11_DeriveWithFlags()
  5460 ms     | 0x7d1a basekey:0x7f58bf219400
  5460 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5460 ms     | 0x7d1a ret:0x7f58bf219780
  5460 ms     | 0x7d1a PK11_DeriveWithFlags()
  5460 ms     | 0x7d1a basekey:0x7f58bf219c80
  5460 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5460 ms     | 0x7d1a ret:0x7f58bf21a180
  5460 ms     | 0x7d1a PK11_Encrypt()
  5460 ms     | 0x7d1a symkey:0x7f58bf219980
  5461 ms     | 0x7d1a PK11_DeriveWithFlags()
  5461 ms     | 0x7d1a basekey:0x7f58bf219800
  5461 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5461 ms     | 0x7d1a ret:0x7f58bf21a180
  5461 ms     | 0x7d1a PK11_DeriveWithFlags()
  5461 ms     | 0x7d1a basekey:0x7f58bf219800
  5461 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5461 ms     | 0x7d1a ret:0x7f58bf219780
  5461 ms     | 0x7d1a PK11_DeriveWithFlags()
  5461 ms     | 0x7d1a basekey:0x7f58bf219700
  5461 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5461 ms     | 0x7d1a ret:0x7f58bf219980
  5461 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  5461 ms     | 0x7d1a privk:0x7f58d02bf820::7f58d02bf820  a0 1b 6f bf                                      ..o.
  5461 ms     | 0x7d1a privk:0x7f58d02bf820::7f58d02bf820  e5 e5 e5 e5                                      ....
  5461 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  5461 ms     | 0x7d1a privk:0x7f58d02bd020::7f58d02bd020  70 9e 66 bf                                      p.f.
  5461 ms     | 0x7d1a privk:0x7f58d02bd020::7f58d02bd020  e5 e5 e5 e5                                      ....
  5461 ms  0x7d1a SSL_AuthCertificateComplete()
  5461 ms  0x7d1a fd:0x7f58bf406bb0
  5461 ms  0x7d1a err:0x0
  5461 ms     | 0x7d1a PK11_DeriveWithFlags()
  5461 ms     | 0x7d1a basekey:0x7f58bf21a280
  5461 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5461 ms     | 0x7d1a ret:0x7f58bf219f00
  5461 ms     | 0x7d1a PK11_DeriveWithFlags()
  5461 ms     | 0x7d1a basekey:0x7f58bf21a280
  5461 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5461 ms     | 0x7d1a ret:0x7f58bf219c80
  5461 ms     | 0x7d1a PK11_DeriveWithFlags()
  5461 ms     | 0x7d1a basekey:0x7f58bf21a280
  5461 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5461 ms     | 0x7d1a ret:0x7f58bf219700
  5461 ms     | 0x7d1a PK11_DeriveWithFlags()
  5461 ms     | 0x7d1a basekey:0x7f58bf21a200
  5461 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5461 ms     | 0x7d1a ret:0x7f58bf219780
  5461 ms     | 0x7d1a PK11_DeriveWithFlags()
  5461 ms     | 0x7d1a basekey:0x7f58bf21a200
  5461 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5461 ms     | 0x7d1a ret:0x7f58bf219680
  5461 ms     | 0x7d1a PK11_DeriveWithFlags()
  5461 ms     | 0x7d1a basekey:0x7f58bf219c80
  5461 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5461 ms     | 0x7d1a ret:0x7f58bf219680
  5461 ms     | 0x7d1a PK11_DeriveWithFlags()
  5461 ms     | 0x7d1a basekey:0x7f58bf219c80
  5461 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5461 ms     | 0x7d1a ret:0x7f58bf21a380
  5461 ms     | 0x7d1a PK11_DeriveWithFlags()
  5461 ms     | 0x7d1a basekey:0x7f58bf21a200
  5461 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5461 ms     | 0x7d1a ret:0x7f58bf219500
  5461 ms     | 0x7d1a PK11_Encrypt()
  5461 ms     | 0x7d1a symkey:0x7f58bf219780
  5462 ms     | 0x7d1a PK11_DeriveWithFlags()
  5462 ms     | 0x7d1a basekey:0x7f58bf219f00
  5462 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5462 ms     | 0x7d1a ret:0x7f58bf219500
  5462 ms     | 0x7d1a PK11_DeriveWithFlags()
  5462 ms     | 0x7d1a basekey:0x7f58bf219f00
  5462 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5462 ms     | 0x7d1a ret:0x7f58bf21a380
  5462 ms     | 0x7d1a PK11_DeriveWithFlags()
  5462 ms     | 0x7d1a basekey:0x7f58bf21a280
  5462 ms     |    | 0x7d1a PK11_DeriveWithTemplate()
  5462 ms     | 0x7d1a ret:0x7f58bf219780
  5462 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  5462 ms     | 0x7d1a privk:0x7f58d02c4020::7f58d02c4020  80 f3 2d d0                                      ..-.
  5462 ms     | 0x7d1a privk:0x7f58d02c4020::7f58d02c4020  e5 e5 e5 e5                                      ....
  5462 ms     | 0x7d1a SECKEY_DestroyPrivateKey()
  5462 ms     | 0x7d1a privk:0x7f58d02c2020::7f58d02c2020  a0 f1 2d d0                                      ..-.
  5462 ms     | 0x7d1a privk:0x7f58d02c2020::7f58d02c2020  e5 e5 e5 e5                                      ....
  5462 ms  0x7d1a PK11_Encrypt()
  5462 ms  0x7d1a symkey:0x7f58bf21a180
  5462 ms  0x7d1a PK11_Encrypt()
  5462 ms  0x7d1a symkey:0x7f58bf219500
  5463 ms  0x7d1a PK11_DeriveWithFlags()
  5463 ms  0x7d1a basekey:0x7f58bf6b7c80
  5463 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5463 ms  0x7d1a ret:0x7f58bf219480
  5463 ms  0x7d1a PR_Close()
  5463 ms  0x7d1a fd:0x7f58bf406850
  5463 ms     | 0x7d1a PK11_Encrypt()
  5463 ms     | 0x7d1a symkey:0x7f58bf219f80
  5471 ms  0x7d1a PK11_DeriveWithFlags()
  5471 ms  0x7d1a basekey:0x7f58bf219280
  5471 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5471 ms  0x7d1a ret:0x7f58bf219300
  5471 ms  0x7d1a PR_Close()
  5471 ms  0x7d1a fd:0x7f58bf4060d0
  5471 ms     | 0x7d1a PK11_Encrypt()
  5471 ms     | 0x7d1a symkey:0x7f58bf21a080
  5485 ms  0x7d1a PK11_Encrypt()
  5485 ms  0x7d1a symkey:0x7f58bf6b7d80
  5497 ms  0x7d1a PK11_DeriveWithFlags()
  5497 ms  0x7d1a basekey:0x7f58bf219980
  5497 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5497 ms  0x7d1a ret:0x7f58bf219580
  5497 ms  0x7d1a PR_Close()
  5497 ms  0x7d1a fd:0x7f58bf4064f0
  5497 ms     | 0x7d1a PK11_Encrypt()
  5497 ms     | 0x7d1a symkey:0x7f58bf21a180
  5498 ms  0x7d1a PK11_DeriveWithFlags()
  5498 ms  0x7d1a basekey:0x7f58bf219780
  5498 ms     | 0x7d1a PK11_DeriveWithTemplate()
  5498 ms  0x7d1a ret:0x7f58bf21a300
  5498 ms  0x7d1a PR_Close()
  5498 ms  0x7d1a fd:0x7f58bf406bb0
  5498 ms     | 0x7d1a PK11_Encrypt()
  5498 ms     | 0x7d1a symkey:0x7f58bf219500
  5513 ms  0x7d1a PK11_Encrypt()
  5513 ms  0x7d1a symkey:0x7f58bf6b7d80
           /* TID 0x7d22 */
  5523 ms  0x7d22 PR_Close()
  5523 ms  0x7d22 fd:0x7f58bf2283a0
           /* TID 0x7d1a */
  5524 ms  0x7d1a PK11_Encrypt()
  5524 ms  0x7d1a symkey:0x7f58bf6b7d80
  5524 ms  0x7d1a PK11_Encrypt()
  5524 ms  0x7d1a symkey:0x7f58bf6b7d80
           /* TID 0x7d22 */
  5559 ms  0x7d22 PR_Close()
  5559 ms  0x7d22 fd:0x7f58bf2282b0
           /* TID 0x7d1a */
  5574 ms  0x7d1a PK11_Encrypt()
  5574 ms  0x7d1a symkey:0x7f58bf6b8080
  5576 ms  0x7d1a PK11_Encrypt()
  5576 ms  0x7d1a symkey:0x7f58bf6b8080
  5577 ms  0x7d1a PK11_Encrypt()
  5577 ms  0x7d1a symkey:0x7f58bf6b8080
  5578 ms  0x7d1a PK11_Encrypt()
  5578 ms  0x7d1a symkey:0x7f58bf6b8080
  5579 ms  0x7d1a PK11_Encrypt()
  5579 ms  0x7d1a symkey:0x7f58bf6b8080
  5579 ms  0x7d1a PK11_Encrypt()
  5579 ms  0x7d1a symkey:0x7f58bf6b8080
  5581 ms  0x7d1a PK11_Encrypt()
  5581 ms  0x7d1a symkey:0x7f58bf6b8080
  5582 ms  0x7d1a PK11_Encrypt()
  5582 ms  0x7d1a symkey:0x7f58bf6b8080
  5583 ms  0x7d1a PK11_Encrypt()
  5583 ms  0x7d1a symkey:0x7f58bf6b8080
  5586 ms  0x7d1a PK11_Encrypt()
  5586 ms  0x7d1a symkey:0x7f58bf6b8080
  5588 ms  0x7d1a PK11_Encrypt()
  5588 ms  0x7d1a symkey:0x7f58bf6b8080
  5589 ms  0x7d1a PK11_Encrypt()
  5589 ms  0x7d1a symkey:0x7f58bf6b8080
  5592 ms  0x7d1a PK11_Encrypt()
  5592 ms  0x7d1a symkey:0x7f58bf6b8080
  5593 ms  0x7d1a PK11_Encrypt()
  5593 ms  0x7d1a symkey:0x7f58bf6b8080
  5593 ms  0x7d1a PK11_Encrypt()
  5593 ms  0x7d1a symkey:0x7f58bf6b8080
  5595 ms  0x7d1a PK11_Encrypt()
  5595 ms  0x7d1a symkey:0x7f58bf6b8080
  5598 ms  0x7d1a PK11_Encrypt()
  5598 ms  0x7d1a symkey:0x7f58bf6b8080
  5598 ms  0x7d1a PK11_Encrypt()
  5598 ms  0x7d1a symkey:0x7f58bf6b8080
  5599 ms  0x7d1a PK11_Encrypt()
  5599 ms  0x7d1a symkey:0x7f58bf6b8080
  5600 ms  0x7d1a PK11_Encrypt()
  5600 ms  0x7d1a symkey:0x7f58bf6b8080
  5600 ms  0x7d1a PK11_Encrypt()
  5600 ms  0x7d1a symkey:0x7f58bf6b8080
  5600 ms  0x7d1a PK11_Encrypt()
  5600 ms  0x7d1a symkey:0x7f58bf6b8080
  5602 ms  0x7d1a PK11_Encrypt()
  5602 ms  0x7d1a symkey:0x7f58bf6b8080
  5603 ms  0x7d1a PK11_Encrypt()
  5603 ms  0x7d1a symkey:0x7f58bf6b8080
           /* TID 0x7d22 */
  5613 ms  0x7d22 PR_Close()
  5613 ms  0x7d22 fd:0x7f58bf228550
           /* TID 0x7d1a */
  5620 ms  0x7d1a PK11_Encrypt()
  5620 ms  0x7d1a symkey:0x7f58bf6b7d80
  5635 ms  0x7d1a PK11_Encrypt()
  5635 ms  0x7d1a symkey:0x7f58bf6b7d80
           /* TID 0x7d22 */
  5640 ms  0x7d22 PR_Close()
  5640 ms  0x7d22 fd:0x7f58bf184070
  5645 ms  0x7d22 PR_Close()
  5645 ms  0x7d22 fd:0x7f58bf184040
  5650 ms  0x7d22 PR_Close()
  5650 ms  0x7d22 fd:0x7f58bf184040
  5656 ms  0x7d22 PR_Close()
  5656 ms  0x7d22 fd:0x7f58bf184040
  5656 ms  0x7d22 PR_Close()
  5656 ms  0x7d22 fd:0x7f58bf184040
  5660 ms  0x7d22 PR_Close()
  5660 ms  0x7d22 fd:0x7f58bf184040
  5660 ms  0x7d22 PR_Close()
  5660 ms  0x7d22 fd:0x7f58bf184280
  5674 ms  0x7d22 PR_Close()
  5674 ms  0x7d22 fd:0x7f58bf184040
  5675 ms  0x7d22 PR_Close()
  5675 ms  0x7d22 fd:0x7f58bf184040
  5676 ms  0x7d22 PR_Close()
  5676 ms  0x7d22 fd:0x7f58bf184040
  5682 ms  0x7d22 PR_Close()
  5682 ms  0x7d22 fd:0x7f58bf184040
  5683 ms  0x7d22 PR_Close()
  5683 ms  0x7d22 fd:0x7f58bf184040
  5683 ms  0x7d22 PR_Close()
  5683 ms  0x7d22 fd:0x7f58bf184040
  5685 ms  0x7d22 PR_Close()
  5685 ms  0x7d22 fd:0x7f58bf184040
  5686 ms  0x7d22 PR_Close()
  5686 ms  0x7d22 fd:0x7f58bf184040
  5686 ms  0x7d22 PR_Close()
  5686 ms  0x7d22 fd:0x7f58bf184040
  5688 ms  0x7d22 PR_Close()
  5688 ms  0x7d22 fd:0x7f58bf184190
  5690 ms  0x7d22 PR_Close()
  5690 ms  0x7d22 fd:0x7f58bf184190
  5691 ms  0x7d22 PR_Close()
  5691 ms  0x7d22 fd:0x7f58bf1841c0
  5691 ms  0x7d22 PR_Close()
  5691 ms  0x7d22 fd:0x7f58bf1841c0
  5692 ms  0x7d22 PR_Close()
  5692 ms  0x7d22 fd:0x7f58bf184100
  5693 ms  0x7d22 PR_Close()
  5693 ms  0x7d22 fd:0x7f58bf184100
  5695 ms  0x7d22 PR_Close()
  5695 ms  0x7d22 fd:0x7f58bf184100
  5696 ms  0x7d22 PR_Close()
  5696 ms  0x7d22 fd:0x7f58bf184100
  5697 ms  0x7d22 PR_Close()
  5697 ms  0x7d22 fd:0x7f58bf184100
  5715 ms  0x7d22 PR_Close()
  5715 ms  0x7d22 fd:0x7f58bf184040
           /* TID 0x7d1a */
  5824 ms  0x7d1a PK11_Encrypt()
  5824 ms  0x7d1a symkey:0x7f58bf6b7d80
  5850 ms  0x7d1a PK11_Encrypt()
  5850 ms  0x7d1a symkey:0x7f58bf6b7d80
           /* TID 0x7d22 */
  5863 ms  0x7d22 PR_Close()
  5863 ms  0x7d22 fd:0x7f58bf184100
           /* TID 0x7d1a */
  5864 ms  0x7d1a PK11_Encrypt()
  5864 ms  0x7d1a symkey:0x7f58bf6b7d80
           /* TID 0x7d22 */
  5901 ms  0x7d22 PR_Close()
  5901 ms  0x7d22 fd:0x7f58bf184220
  5906 ms  0x7d22 PR_Close()
  5906 ms  0x7d22 fd:0x7f58bf184610
           /* TID 0x7d1a */
  5910 ms  0x7d1a PK11_Encrypt()
  5910 ms  0x7d1a symkey:0x7f58bf6b7d80
  5919 ms  0x7d1a PK11_Encrypt()
  5919 ms  0x7d1a symkey:0x7f58bf6b7d80
  5924 ms  0x7d1a PK11_Encrypt()
  5924 ms  0x7d1a symkey:0x7f58bf6b7d80
  5926 ms  0x7d1a PK11_Encrypt()
  5926 ms  0x7d1a symkey:0x7f58bf6b7d80
  5932 ms  0x7d1a PK11_Encrypt()
  5932 ms  0x7d1a symkey:0x7f58bf6b7d80
           /* TID 0x7d22 */
  5934 ms  0x7d22 PR_Close()
  5934 ms  0x7d22 fd:0x7f58bf184190
           /* TID 0x7d1a */
  5935 ms  0x7d1a PK11_Encrypt()
  5935 ms  0x7d1a symkey:0x7f58bf6b7d80
  5939 ms  0x7d1a PK11_Encrypt()
  5939 ms  0x7d1a symkey:0x7f58bf6b7d80
  5948 ms  0x7d1a PK11_Encrypt()
  5948 ms  0x7d1a symkey:0x7f58bf6b7d80
           /* TID 0x7d22 */
  5972 ms  0x7d22 PR_Close()
  5972 ms  0x7d22 fd:0x7f58bf184130
  5972 ms  0x7d22 PR_Close()
  5972 ms  0x7d22 fd:0x7f58bf184760
  5972 ms  0x7d22 PR_Close()
  5972 ms  0x7d22 fd:0x7f58bf184850
  5972 ms  0x7d22 PR_Close()
  5972 ms  0x7d22 fd:0x7f58bf184b80
  6008 ms  0x7d22 PR_Close()
  6008 ms  0x7d22 fd:0x7f58bf184130
  6008 ms  0x7d22 PR_Close()
  6008 ms  0x7d22 fd:0x7f58bf1846a0
  6009 ms  0x7d22 PR_Close()
  6009 ms  0x7d22 fd:0x7f58bf1840a0
           /* TID 0x7d1a */
  6266 ms  0x7d1a PR_Close()
  6266 ms  0x7d1a fd:0x7f58d108cd60
           /* TID 0x7d0f */
  6271 ms  0x7d0f EC_ValidatePublicKey()
  6272 ms  0x7d0f ret:0x0
  6272 ms  0x7d0f EC_ValidatePublicKey()
  6274 ms  0x7d0f ret:0x0
  6274 ms  0x7d0f EC_ValidatePublicKey()
  6275 ms  0x7d0f ret:0x0
  6275 ms  0x7d0f EC_ValidatePublicKey()
  6277 ms  0x7d0f ret:0x0
  6277 ms  0x7d0f EC_ValidatePublicKey()
  6278 ms  0x7d0f ret:0x0
  6278 ms  0x7d0f EC_ValidatePublicKey()
  6280 ms  0x7d0f ret:0x0
  6280 ms  0x7d0f EC_ValidatePublicKey()
  6281 ms  0x7d0f ret:0x0
  6281 ms  0x7d0f EC_ValidatePublicKey()
  6283 ms  0x7d0f ret:0x0
  6283 ms  0x7d0f EC_ValidatePublicKey()
  6285 ms  0x7d0f ret:0x0
  6285 ms  0x7d0f EC_ValidatePublicKey()
  6287 ms  0x7d0f ret:0x0
           /* TID 0x7d1a */
  6287 ms  0x7d1a PK11_Encrypt()
  6287 ms  0x7d1a symkey:0x7f58bf6b8080
  6287 ms  0x7d1a PR_Close()
  6287 ms  0x7d1a fd:0x7f58dd80ff10
  6287 ms     | 0x7d1a PK11_Encrypt()
  6287 ms     | 0x7d1a symkey:0x7f58d05f0a00
  6287 ms  0x7d1a PR_Close()
  6287 ms  0x7d1a fd:0x7f58dd80fe20
  6287 ms  0x7d1a PR_Close()
  6287 ms  0x7d1a fd:0x7f58dd80f340
  6287 ms     | 0x7d1a PK11_Encrypt()
  6287 ms     | 0x7d1a symkey:0x7f58d05efc80
  6288 ms  0x7d1a PR_Close()
  6288 ms  0x7d1a fd:0x7f58d096eca0
  6288 ms  0x7d1a PR_Close()
  6288 ms  0x7d1a fd:0x7f58d0935310
  6288 ms     | 0x7d1a PK11_Encrypt()
  6288 ms     | 0x7d1a symkey:0x7f58d21ac700
  6288 ms  0x7d1a PR_Close()
  6288 ms  0x7d1a fd:0x7f58dddab5b0
  6288 ms     | 0x7d1a PK11_Encrypt()
  6288 ms     | 0x7d1a symkey:0x7f58d06eb880
  6288 ms  0x7d1a PR_Close()
  6288 ms  0x7d1a fd:0x7f58bf406580
  6288 ms     | 0x7d1a PK11_Encrypt()
  6288 ms     | 0x7d1a symkey:0x7f58bf6b8080
           /* TID 0x7d66 */
  6288 ms  0x7d66 PR_Close()
  6288 ms  0x7d66 fd:0x7f58bf184df0
  6288 ms  0x7d66 PR_Close()
  6288 ms  0x7d66 fd:0x7f58bf184df0
           /* TID 0x7d0f */
  6296 ms  0x7d0f PR_Close()
  6296 ms  0x7d0f fd:0x7f58d39776d0
  6296 ms  0x7d0f PR_Close()
  6296 ms  0x7d0f fd:0x7f58bf228a60
  6297 ms  0x7d0f PR_Close()
  6297 ms  0x7d0f fd:0x7f58bf228af0
  6297 ms  0x7d0f PR_Close()
  6297 ms  0x7d0f fd:0x7f58bf228a60
  6297 ms  0x7d0f PR_Close()
  6297 ms  0x7d0f fd:0x7f58bf228af0
  6297 ms  0x7d0f PR_Close()
  6297 ms  0x7d0f fd:0x7f58bf228a60
           /* TID 0x7d7c */
  6301 ms  0x7d7c PR_Close()
  6301 ms  0x7d7c fd:0x7f58bf228bb0
           /* TID 0x7d0f */
  6316 ms  0x7d0f PR_Close()
  6316 ms  0x7d0f fd:0x7f58bf228af0
  6316 ms  0x7d0f PR_Close()
  6316 ms  0x7d0f fd:0x7f58bf406c10
  6317 ms  0x7d0f PR_Close()
  6317 ms  0x7d0f fd:0x7f58bf228af0
  6317 ms  0x7d0f PR_Close()
  6317 ms  0x7d0f fd:0x7f58bf406c10
  6318 ms  0x7d0f PR_Close()
  6318 ms  0x7d0f fd:0x7f58db7c89a0
  6318 ms  0x7d0f PR_Close()
  6318 ms  0x7d0f fd:0x7f58db7c88b0
  6318 ms  0x7d0f PR_Close()
  6318 ms  0x7d0f fd:0x7f58db7c8a60
  6320 ms  0x7d0f PR_Close()
  6320 ms  0x7d0f fd:0x7f58bf406c40
  6321 ms  0x7d0f PR_Close()
  6321 ms  0x7d0f fd:0x7f58bf406c40
  6323 ms  0x7d0f PR_Close()
  6323 ms  0x7d0f fd:0x7f58bf228af0
  6323 ms  0x7d0f PR_Close()
  6323 ms  0x7d0f fd:0x7f58bf406d00
  6326 ms  0x7d0f PR_Close()
  6326 ms  0x7d0f fd:0x7f58bf228af0
  6326 ms  0x7d0f PR_Close()
  6326 ms  0x7d0f fd:0x7f58bf406d00
  6328 ms  0x7d0f PR_Close()
  6328 ms  0x7d0f fd:0x7f58bf406d60
  6330 ms  0x7d0f PR_Close()
  6330 ms  0x7d0f fd:0x7f58bf406d60
  6331 ms  0x7d0f PR_Close()
  6331 ms  0x7d0f fd:0x7f58bf228af0
  6331 ms  0x7d0f PR_Close()
  6331 ms  0x7d0f fd:0x7f58bf406e80
  6332 ms  0x7d0f PR_Close()
  6332 ms  0x7d0f fd:0x7f58bf228af0
  6332 ms  0x7d0f PR_Close()
  6332 ms  0x7d0f fd:0x7f58bf406e80
  6335 ms  0x7d0f PR_Close()
  6335 ms  0x7d0f fd:0x7f58bf406eb0
  6336 ms  0x7d0f PR_Close()
  6336 ms  0x7d0f fd:0x7f58bf406eb0
  6342 ms  0x7d0f PR_Close()
  6342 ms  0x7d0f fd:0x7f58bf4a4e20
  6343 ms  0x7d0f PR_Close()
  6343 ms  0x7d0f fd:0x7f58bf4a4e20
  6345 ms  0x7d0f PR_Close()
  6345 ms  0x7d0f fd:0x7f58bf4a4f10
           /* TID 0x7d7c */
  6350 ms  0x7d7c PR_Close()
  6350 ms  0x7d7c fd:0x7f58bf228730
  6351 ms  0x7d7c PR_Close()
  6351 ms  0x7d7c fd:0x7f58bf228730
           /* TID 0x7d0f */
  6351 ms  0x7d0f PR_Close()
  6351 ms  0x7d0f fd:0x7f58bf228af0
  6351 ms  0x7d0f PR_Close()
  6351 ms  0x7d0f fd:0x7f58d02160d0
           /* TID 0x7d7c */
  6356 ms  0x7d7c PR_Close()
  6356 ms  0x7d7c fd:0x7f58bf228bb0
           /* TID 0x7d1a */
  6364 ms  0x7d1a PK11_Encrypt()
  6364 ms  0x7d1a symkey:0x7f58bf6b7d80
  6365 ms  0x7d1a PR_Close()
  6365 ms  0x7d1a fd:0x7f58d19cc670
  6365 ms     | 0x7d1a PK11_Encrypt()
  6365 ms     | 0x7d1a symkey:0x7f58bf6b7d80
           /* TID 0x7d7c */
  6386 ms  0x7d7c PR_Close()
  6386 ms  0x7d7c fd:0x7f58bf184160
           /* TID 0x7d22 */
  6390 ms  0x7d22 PR_Close()
  6390 ms  0x7d22 fd:0x7f58bf184670
           /* TID 0x7d14 */
  6395 ms  0x7d14 PR_Close()
  6395 ms  0x7d14 fd:0x7f58da34fdf0
           /* TID 0x7d7c */
  6401 ms  0x7d7c PR_Close()
  6401 ms  0x7d7c fd:0x7f58bf184640
           /* TID 0x7d0f */
  6416 ms  0x7d0f PR_Close()
  6416 ms  0x7d0f fd:0x7f58bf228730
  6416 ms  0x7d0f PR_Close()
  6416 ms  0x7d0f fd:0x7f58bf184a30
           /* TID 0x7d1a */
  6427 ms  0x7d1a PR_Close()
  6427 ms  0x7d1a fd:0x7f58d6d5e460
           /* TID 0x7d66 */
  6428 ms  0x7d66 PR_Close()
  6428 ms  0x7d66 fd:0x7f58bf184c10
  6428 ms  0x7d66 PR_Close()
  6428 ms  0x7d66 fd:0x7f58bf184c10
  6428 ms  0x7d66 PR_Close()
  6428 ms  0x7d66 fd:0x7f58bf184c10
  6428 ms  0x7d66 PR_Close()
  6428 ms  0x7d66 fd:0x7f58bf2286a0
           /* TID 0x7d7c */
  6429 ms  0x7d7c PR_Close()
  6429 ms  0x7d7c fd:0x7f58bf2286a0
           /* TID 0x7d22 */
  6432 ms  0x7d22 PR_Close()
  6432 ms  0x7d22 fd:0x7f58bf406a90
  6432 ms  0x7d22 PR_Close()
  6432 ms  0x7d22 fd:0x7f58bf406f70
           /* TID 0x7d14 */
  6441 ms  0x7d14 PR_Close()
  6441 ms  0x7d14 fd:0x7f58d096e100
           /* TID 0x7d0f */
  6454 ms  0x7d0f PR_Close()
  6454 ms  0x7d0f fd:0x7f58bf2285e0
  6455 ms  0x7d0f PR_Close()
  6455 ms  0x7d0f fd:0x7f58bf6418e0
           /* TID 0x7d7c */
  6456 ms  0x7d7c PR_Close()
  6456 ms  0x7d7c fd:0x7f58bf641040
           /* TID 0x7d14 */
  6458 ms  0x7d14 PR_Close()
  6458 ms  0x7d14 fd:0x7f58d6a2d790
           /* TID 0x7d7c */
  6459 ms  0x7d7c PR_Close()
  6459 ms  0x7d7c fd:0x7f58bf641040
  6512 ms  0x7d7c PR_Close()
  6512 ms  0x7d7c fd:0x7f58bf1840d0
  6519 ms  0x7d7c PR_Close()
  6519 ms  0x7d7c fd:0x7f58bf1840d0
  6523 ms  0x7d7c PR_Close()
  6523 ms  0x7d7c fd:0x7f58bf184940
  6524 ms  0x7d7c PR_Close()
  6524 ms  0x7d7c fd:0x7f58bf2282b0
  6536 ms  0x7d7c PR_Close()
  6536 ms  0x7d7c fd:0x7f58bf2289a0
  6541 ms  0x7d7c PR_Close()
  6541 ms  0x7d7c fd:0x7f58bf406d30
  6549 ms  0x7d7c PR_Close()
  6549 ms  0x7d7c fd:0x7f58bf6418e0
  6559 ms  0x7d7c PR_Close()
  6559 ms  0x7d7c fd:0x7f58bf641ac0
  6561 ms  0x7d7c PR_Close()
  6561 ms  0x7d7c fd:0x7f58bf641ac0
           /* TID 0x7d0f */
  6717 ms  0x7d0f PR_Close()
  6717 ms  0x7d0f fd:0x7f58bf406c10
  6717 ms  0x7d0f PR_Close()
  6717 ms  0x7d0f fd:0x7f58bf406c10
  6725 ms  0x7d0f PR_Close()
  6725 ms  0x7d0f fd:0x7f58f8ada130
  6725 ms  0x7d0f PR_Close()
  6725 ms  0x7d0f fd:0x7f58f8ada190
Process terminated
