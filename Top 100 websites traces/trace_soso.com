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
           /* TID 0x235d */
    73 ms  0x235d PR_Close()
    73 ms  0x235d fd:0x7fbab04a2790
           /* TID 0x2355 */
   338 ms  0x2355 SSL_ImportFD()
   338 ms  0x2355 ret:0x7fbab04e13a0
   338 ms  0x2355 SSL_AuthCertificateHook()
   338 ms  0x2355 fd:0x7fbab04e13a0
   338 ms  0x2355 ret:0x0
   338 ms  0x2355 PR_Connect()
   338 ms  0x2355 fd:0x7fbab04e13a0
   555 ms  0x2355 SECKEY_CreateECPrivateKey()
   555 ms  0x2355 cx:0x7fbab02e80a8
   556 ms     | 0x2355 EC_ValidatePublicKey()
   556 ms     | 0x2355 ret:0x0
   556 ms  0x2355 ret:0x7fbab025b820::7fbab025b820  a0 9b 2b b0                                      ..+.
   556 ms  0x2355 SECKEY_CreateECPrivateKey()
   556 ms  0x2355 cx:0x7fbab02e80a8
   557 ms     | 0x2355 EC_ValidatePublicKey()
   558 ms     | 0x2355 ret:0x0
   558 ms  0x2355 ret:0x7fbab025d820::7fbab025d820  80 9d 2b b0                                      ..+.
           /* TID 0x237c */
   606 ms  0x237c PR_Close()
   606 ms  0x237c fd:0x7fbab04e12b0
   610 ms  0x237c PR_Close()
   610 ms  0x237c fd:0x7fbab04e12b0
           /* TID 0x2355 */
   779 ms  SECKEY_ECParamsToKeySize()
   779 ms  0x2355 ret:0x100
   779 ms  0x2355 SECKEY_CreateECPrivateKey()
   779 ms  0x2355 cx:0x7fbab02e80a8
           /* TID 0x237c */
   781 ms  0x237c PR_Close()
   781 ms  0x237c fd:0x7fbab04e1cd0
           /* TID 0x2355 */
   782 ms     | 0x2355 EC_ValidatePublicKey()
   787 ms     | 0x2355 ret:0x0
   787 ms  0x2355 ret:0x7fbab0266820::7fbab0266820  e0 d7 2f b0                                      ../.
   787 ms  0x2355 PK11_PubDeriveWithKDF()
   787 ms  0x2355 seckey:0x7fbab0266820
   787 ms     | 0x2355 EC_ValidatePublicKey()
   791 ms     | 0x2355 ret:0x0
   794 ms  0x2355 ret:0x7fbaba1b8600
   794 ms  0x2355 PK11_DeriveWithFlags()
   794 ms  0x2355 basekey:0x7fbaba1b8600
   794 ms     | 0x2355 PK11_DeriveWithTemplate()
   794 ms  0x2355 ret:0x7fbab02f0580
   795 ms  0x2355 PK11_Derive()
   795 ms  0x2355 basekey:0x7fbab02f0580
   795 ms     | 0x2355 PK11_DeriveWithTemplate()
   795 ms  0x2355 ret:0x7fbab02f0680
   795 ms  0x2355 SECKEY_DestroyPrivateKey()
   795 ms  0x2355 privk:0x7fbab0266820::7fbab0266820  e0 d7 2f b0                                      ../.
   795 ms  0x2355 privk:0x7fbab0266820::7fbab0266820  e5 e5 e5 e5                                      ....
   795 ms  0x2355 PK11_Encrypt()
   795 ms  0x2355 symkey:0x7fbab02f0800
   796 ms  0x2355 PR_Connect()
   796 ms  0x2355 fd:0x7fbab04e1dc0
           /* TID 0x23c3 */
   848 ms  0x23c3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   848 ms  0x23c3 ret:0x0
           /* TID 0x235d */
   849 ms  0x235d PR_Close()
   849 ms  0x235d fd:0x7fbab04e1d00
           /* TID 0x2355 */
   849 ms  0x2355 SSL_AuthCertificateComplete()
   849 ms  0x2355 fd:0x7fbab04e13a0
   849 ms  0x2355 err:0x0
   849 ms  0x2355 PK11_Encrypt()
   849 ms  0x2355 symkey:0x7fbab02f0800
  1013 ms  0x2355 SECKEY_DestroyPrivateKey()
  1013 ms  0x2355 privk:0x7fbab025d820::7fbab025d820  80 9d 2b b0                                      ..+.
  1013 ms  0x2355 privk:0x7fbab025d820::7fbab025d820  e5 e5 e5 e5                                      ....
  1013 ms  0x2355 SECKEY_DestroyPrivateKey()
  1013 ms  0x2355 privk:0x7fbab025b820::7fbab025b820  a0 9b 2b b0                                      ..+.
  1014 ms  0x2355 privk:0x7fbab025b820::7fbab025b820  e5 e5 e5 e5                                      ....
  1239 ms  0x2355 SSL_ImportFD()
  1239 ms  0x2355 ret:0x7fbab04e1fa0
  1239 ms  0x2355 SSL_AuthCertificateHook()
  1239 ms  0x2355 fd:0x7fbab04e1fa0
  1240 ms  0x2355 ret:0x0
  1240 ms  0x2355 PR_Connect()
  1240 ms  0x2355 fd:0x7fbab04e1fa0
  1266 ms  0x2355 SECKEY_CreateECPrivateKey()
  1266 ms  0x2355 cx:0x7fbab02e9aa8
  1268 ms     | 0x2355 EC_ValidatePublicKey()
  1268 ms     | 0x2355 ret:0x0
  1268 ms  0x2355 ret:0x7fbab025d020::7fbab025d020  30 d3 2f b0                                      0./.
  1268 ms  0x2355 SECKEY_CreateECPrivateKey()
  1268 ms  0x2355 cx:0x7fbab02e9aa8
  1270 ms     | 0x2355 EC_ValidatePublicKey()
  1275 ms     | 0x2355 ret:0x0
  1275 ms  0x2355 ret:0x7fbab0263020::7fbab0263020  40 9c 2b b0                                      @.+.
           /* TID 0x23c3 */
  1328 ms  0x23c3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1328 ms  0x23c3 ret:0x0
           /* TID 0x2355 */
  1329 ms  SECKEY_ECParamsToKeySize()
  1329 ms  0x2355 ret:0x100
  1329 ms  0x2355 SECKEY_CreateECPrivateKey()
  1329 ms  0x2355 cx:0x7fbab02e9aa8
  1331 ms     | 0x2355 EC_ValidatePublicKey()
  1335 ms     | 0x2355 ret:0x0
  1335 ms  0x2355 ret:0x7fbab0266820::7fbab0266820  d0 d8 2f b0                                      ../.
  1336 ms  0x2355 PK11_PubDeriveWithKDF()
  1336 ms  0x2355 seckey:0x7fbab0266820
  1336 ms     | 0x2355 EC_ValidatePublicKey()
  1340 ms     | 0x2355 ret:0x0
  1344 ms  0x2355 ret:0x7fbaba1b8600
  1344 ms  0x2355 PK11_DeriveWithFlags()
  1344 ms  0x2355 basekey:0x7fbaba1b8600
  1344 ms     | 0x2355 PK11_DeriveWithTemplate()
  1344 ms  0x2355 ret:0x7fbab027e880
  1344 ms  0x2355 PK11_Derive()
  1344 ms  0x2355 basekey:0x7fbab027e880
  1344 ms     | 0x2355 PK11_DeriveWithTemplate()
  1344 ms  0x2355 ret:0x7fbab02f1080
  1344 ms  0x2355 SECKEY_DestroyPrivateKey()
  1344 ms  0x2355 privk:0x7fbab0266820::7fbab0266820  d0 d8 2f b0                                      ../.
  1344 ms  0x2355 privk:0x7fbab0266820::7fbab0266820  e5 e5 e5 e5                                      ....
  1345 ms  0x2355 PK11_Encrypt()
  1345 ms  0x2355 symkey:0x7fbab02f1580
  1345 ms  0x2355 SSL_AuthCertificateComplete()
  1345 ms  0x2355 fd:0x7fbab04e1fa0
  1345 ms  0x2355 err:0x0
  1345 ms  0x2355 PK11_Encrypt()
  1345 ms  0x2355 symkey:0x7fbab02f1580
  1397 ms  0x2355 SECKEY_DestroyPrivateKey()
  1397 ms  0x2355 privk:0x7fbab0263020::7fbab0263020  40 9c 2b b0                                      @.+.
  1397 ms  0x2355 privk:0x7fbab0263020::7fbab0263020  e5 e5 e5 e5                                      ....
  1397 ms  0x2355 SECKEY_DestroyPrivateKey()
  1397 ms  0x2355 privk:0x7fbab025d020::7fbab025d020  30 d3 2f b0                                      0./.
  1397 ms  0x2355 privk:0x7fbab025d020::7fbab025d020  e5 e5 e5 e5                                      ....
  1401 ms  0x2355 PK11_Encrypt()
  1401 ms  0x2355 symkey:0x7fbab02f1580
  1432 ms  0x2355 PK11_Encrypt()
  1432 ms  0x2355 symkey:0x7fbab02f1580
  1463 ms  0x2355 PK11_Encrypt()
  1463 ms  0x2355 symkey:0x7fbab02f1580
  1493 ms  0x2355 PK11_Encrypt()
  1493 ms  0x2355 symkey:0x7fbab02f1580
  1609 ms  0x2355 PK11_Encrypt()
  1609 ms  0x2355 symkey:0x7fbab02f1580
  1641 ms  0x2355 PK11_Encrypt()
  1641 ms  0x2355 symkey:0x7fbab02f1580
  1672 ms  0x2355 PK11_Encrypt()
  1672 ms  0x2355 symkey:0x7fbab02f1580
           /* TID 0x23be */
  1700 ms  0x23be PR_Close()
  1700 ms  0x23be fd:0x7fba9f3091c0
  1700 ms  0x23be PR_Close()
  1700 ms  0x23be fd:0x7fba9f309280
  1700 ms  0x23be PR_Close()
  1700 ms  0x23be fd:0x7fba9f3091c0
  1700 ms  0x23be PR_Close()
  1700 ms  0x23be fd:0x7fba9f309280
  1700 ms  0x23be PR_Close()
  1700 ms  0x23be fd:0x7fba9f3091c0
  1701 ms  0x23be PR_Close()
  1701 ms  0x23be fd:0x7fba9f309280
  1701 ms  0x23be PR_Close()
  1701 ms  0x23be fd:0x7fba9f3091c0
  1701 ms  0x23be PR_Close()
  1701 ms  0x23be fd:0x7fba9f309280
  1701 ms  0x23be PR_Close()
  1701 ms  0x23be fd:0x7fba9f3091c0
  1701 ms  0x23be PR_Close()
  1701 ms  0x23be fd:0x7fba9f309280
  1701 ms  0x23be PR_Close()
  1701 ms  0x23be fd:0x7fba9f3091c0
  1701 ms  0x23be PR_Close()
  1701 ms  0x23be fd:0x7fba9f309280
  1701 ms  0x23be PR_Close()
  1701 ms  0x23be fd:0x7fba9f3091c0
  1701 ms  0x23be PR_Close()
  1701 ms  0x23be fd:0x7fba9f309280
  1701 ms  0x23be PR_Close()
  1701 ms  0x23be fd:0x7fba9f3091c0
  1701 ms  0x23be PR_Close()
  1701 ms  0x23be fd:0x7fba9f309280
  1701 ms  0x23be PR_Close()
  1701 ms  0x23be fd:0x7fba9f3091c0
  1702 ms  0x23be PR_Close()
  1702 ms  0x23be fd:0x7fba9f309280
  1702 ms  0x23be PR_Close()
  1702 ms  0x23be fd:0x7fba9f3091c0
  1702 ms  0x23be PR_Close()
  1702 ms  0x23be fd:0x7fba9f309280
  1702 ms  0x23be PR_Close()
  1702 ms  0x23be fd:0x7fba9f3091c0
  1702 ms  0x23be PR_Close()
  1702 ms  0x23be fd:0x7fba9f309280
  1702 ms  0x23be PR_Close()
  1702 ms  0x23be fd:0x7fba9f3091c0
  1702 ms  0x23be PR_Close()
  1702 ms  0x23be fd:0x7fba9f309280
  1702 ms  0x23be PR_Close()
  1702 ms  0x23be fd:0x7fba9f3091c0
  1702 ms  0x23be PR_Close()
  1702 ms  0x23be fd:0x7fba9f309280
  1702 ms  0x23be PR_Close()
  1702 ms  0x23be fd:0x7fba9f3091c0
  1702 ms  0x23be PR_Close()
  1702 ms  0x23be fd:0x7fba9f309280
  1705 ms  0x23be PR_Close()
  1705 ms  0x23be fd:0x7fba9f3091c0
  1705 ms  0x23be PR_Close()
  1705 ms  0x23be fd:0x7fba9f309220
  1707 ms  0x23be PR_Close()
  1707 ms  0x23be fd:0x7fba9f309220
  1708 ms  0x23be PR_Close()
  1708 ms  0x23be fd:0x7fba9f309250
  1710 ms  0x23be PR_Close()
  1710 ms  0x23be fd:0x7fba9f309250
  1710 ms  0x23be PR_Close()
  1710 ms  0x23be fd:0x7fba9f309250
  1712 ms  0x23be PR_Close()
  1712 ms  0x23be fd:0x7fba9f309250
  1712 ms  0x23be PR_Close()
  1712 ms  0x23be fd:0x7fba9f309250
  1760 ms  0x23be PR_Close()
  1760 ms  0x23be fd:0x7fba9f309250
  1761 ms  0x23be PR_Close()
  1761 ms  0x23be fd:0x7fba9f309250
  1768 ms  0x23be PR_Close()
  1768 ms  0x23be fd:0x7fba9f309250
  1768 ms  0x23be PR_Close()
  1768 ms  0x23be fd:0x7fba9f309250
  1774 ms  0x23be PR_Close()
  1774 ms  0x23be fd:0x7fba9f309250
  1774 ms  0x23be PR_Close()
  1774 ms  0x23be fd:0x7fba9f309250
  1776 ms  0x23be PR_Close()
  1776 ms  0x23be fd:0x7fba9f309250
  1776 ms  0x23be PR_Close()
  1776 ms  0x23be fd:0x7fba9f309250
           /* TID 0x23bb */
  1776 ms  0x23bb PR_Close()
  1776 ms  0x23bb fd:0x7fba9f309250
  1776 ms  0x23bb PR_Close()
  1776 ms  0x23bb fd:0x7fba9f309250
  1776 ms  0x23bb PR_Close()
  1776 ms  0x23bb fd:0x7fba9f309250
  1776 ms  0x23bb PR_Close()
  1776 ms  0x23bb fd:0x7fba9f309250
  1776 ms  0x23bb PR_Close()
  1776 ms  0x23bb fd:0x7fba9f309250
  1776 ms  0x23bb PR_Close()
  1776 ms  0x23bb fd:0x7fba9f309250
  1776 ms  0x23bb PR_Close()
  1776 ms  0x23bb fd:0x7fba9f309250
  1776 ms  0x23bb PR_Close()
  1776 ms  0x23bb fd:0x7fba9f309250
  1776 ms  0x23bb PR_Close()
  1776 ms  0x23bb fd:0x7fba9f309250
  1776 ms  0x23bb PR_Close()
  1776 ms  0x23bb fd:0x7fba9f309250
  1777 ms  0x23bb PR_Close()
  1777 ms  0x23bb fd:0x7fba9f309250
  1777 ms  0x23bb PR_Close()
  1777 ms  0x23bb fd:0x7fba9f309250
  1777 ms  0x23bb PR_Close()
  1777 ms  0x23bb fd:0x7fba9f309250
  1777 ms  0x23bb PR_Close()
  1777 ms  0x23bb fd:0x7fba9f309250
  1777 ms  0x23bb PR_Close()
  1777 ms  0x23bb fd:0x7fba9f309250
           /* TID 0x237c */
  2280 ms  0x237c PR_Close()
  2280 ms  0x237c fd:0x7fba9f3095b0
  2283 ms  0x237c PR_Close()
  2283 ms  0x237c fd:0x7fba9f3095b0
  2853 ms  0x237c PR_Close()
  2853 ms  0x237c fd:0x7fba9f3095b0
           /* TID 0x235d */
  4188 ms  0x235d PR_Close()
  4188 ms  0x235d fd:0x7fba9f3095b0
  4188 ms  0x235d PR_Close()
  4188 ms  0x235d fd:0x7fba9f309700
           /* TID 0x2355 */
  5300 ms  0x2355 SSL_ImportFD()
  5301 ms  0x2355 ret:0x7fba9f2e0790
  5301 ms  0x2355 SSL_AuthCertificateHook()
  5301 ms  0x2355 fd:0x7fba9f2e0790
  5301 ms  0x2355 ret:0x0
  5301 ms  0x2355 PR_Connect()
  5301 ms  0x2355 fd:0x7fba9f2e0790
  5552 ms  0x2355 SSL_ImportFD()
  5552 ms  0x2355 ret:0x7fba9f2e0940
  5552 ms  0x2355 SSL_AuthCertificateHook()
  5552 ms  0x2355 fd:0x7fba9f2e0940
  5552 ms  0x2355 ret:0x0
  5552 ms  0x2355 PR_Connect()
  5552 ms  0x2355 fd:0x7fba9f2e0940
  5594 ms  0x2355 SECKEY_CreateECPrivateKey()
  5594 ms  0x2355 cx:0x7fbab02e9de8
  5596 ms     | 0x2355 EC_ValidatePublicKey()
  5596 ms     | 0x2355 ret:0x0
  5596 ms  0x2355 ret:0x7fbab54d3820::7fbab54d3820  90 77 c0 b0                                      .w..
  5596 ms  0x2355 SECKEY_CreateECPrivateKey()
  5596 ms  0x2355 cx:0x7fbab02e9de8
  5598 ms     | 0x2355 EC_ValidatePublicKey()
  5606 ms     | 0x2355 ret:0x0
  5606 ms  0x2355 ret:0x7fba9f102820::7fba9f102820  10 7a c0 b0                                      .z..
  5847 ms  0x2355 SECKEY_CreateECPrivateKey()
  5847 ms  0x2355 cx:0x7fbab02e9f88
  5849 ms     | 0x2355 EC_ValidatePublicKey()
  5849 ms     | 0x2355 ret:0x0
  5849 ms  0x2355 ret:0x7fba9f105020::7fba9f105020  e0 77 c0 b0                                      .w..
  5849 ms  0x2355 SECKEY_CreateECPrivateKey()
  5849 ms  0x2355 cx:0x7fbab02e9f88
  5850 ms     | 0x2355 EC_ValidatePublicKey()
  5855 ms     | 0x2355 ret:0x0
  5855 ms  0x2355 ret:0x7fba9f107020::7fba9f107020  e0 7c c0 b0                                      .|..
  5908 ms  SECKEY_ECParamsToKeySize()
  5908 ms  0x2355 ret:0xff
  5908 ms  0x2355 SECKEY_CreateECPrivateKey()
  5908 ms  0x2355 cx:0x7fbab02e9de8
  5910 ms     | 0x2355 EC_ValidatePublicKey()
  5910 ms     | 0x2355 ret:0x0
  5910 ms  0x2355 ret:0x7fba9f114020::7fba9f114020  60 e5 5c b1                                      `.\.
  5911 ms  0x2355 PK11_PubDeriveWithKDF()
  5911 ms  0x2355 seckey:0x7fba9f114020
  5911 ms     | 0x2355 EC_ValidatePublicKey()
  5911 ms     | 0x2355 ret:0x0
  5912 ms  0x2355 ret:0x7fbaba1b8600
  5912 ms  0x2355 PK11_DeriveWithFlags()
  5912 ms  0x2355 basekey:0x7fbaba1b8600
  5912 ms     | 0x2355 PK11_DeriveWithTemplate()
  5912 ms  0x2355 ret:0x7fba9f2e4f80
  5912 ms  0x2355 PK11_Derive()
  5912 ms  0x2355 basekey:0x7fba9f2e4f80
  5912 ms     | 0x2355 PK11_DeriveWithTemplate()
  5912 ms  0x2355 ret:0x7fba9f2e5000
  5912 ms  0x2355 SECKEY_DestroyPrivateKey()
  5912 ms  0x2355 privk:0x7fba9f114020::7fba9f114020  60 e5 5c b1                                      `.\.
  5913 ms  0x2355 privk:0x7fba9f114020::7fba9f114020  e5 e5 e5 e5                                      ....
  5913 ms  0x2355 PK11_Encrypt()
  5913 ms  0x2355 symkey:0x7fba9f2e5180
  5913 ms  0x2355 PR_Connect()
  5913 ms  0x2355 fd:0x7fba9f2e0e80
           /* TID 0x23c3 */
  5970 ms  0x23c3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5971 ms  0x23c3 ret:0x0
  5971 ms  0x23c3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5971 ms  0x23c3 ret:0x0
           /* TID 0x235d */
  5972 ms  0x235d PR_Close()
  5972 ms  0x235d fd:0x7fba9f2e0d30
           /* TID 0x2355 */
  5972 ms  0x2355 SSL_AuthCertificateComplete()
  5972 ms  0x2355 fd:0x7fba9f2e0790
  5972 ms  0x2355 err:0x0
  5973 ms  0x2355 PK11_Encrypt()
  5973 ms  0x2355 symkey:0x7fba9f2e5180
  6151 ms  SECKEY_ECParamsToKeySize()
  6151 ms  0x2355 ret:0xff
  6152 ms  0x2355 SECKEY_CreateECPrivateKey()
  6152 ms  0x2355 cx:0x7fbab02e9f88
  6153 ms     | 0x2355 EC_ValidatePublicKey()
  6153 ms     | 0x2355 ret:0x0
  6153 ms  0x2355 ret:0x7fba9f110020::7fba9f110020  10 e5 5c b1                                      ..\.
  6153 ms  0x2355 PK11_PubDeriveWithKDF()
  6153 ms  0x2355 seckey:0x7fba9f110020
  6153 ms     | 0x2355 EC_ValidatePublicKey()
  6153 ms     | 0x2355 ret:0x0
  6156 ms  0x2355 ret:0x7fbaba1b8600
  6156 ms  0x2355 PK11_DeriveWithFlags()
  6156 ms  0x2355 basekey:0x7fbaba1b8600
  6156 ms     | 0x2355 PK11_DeriveWithTemplate()
  6156 ms  0x2355 ret:0x7fba9f2e4b00
  6156 ms  0x2355 PK11_Derive()
  6156 ms  0x2355 basekey:0x7fba9f2e4b00
  6156 ms     | 0x2355 PK11_DeriveWithTemplate()
  6156 ms  0x2355 ret:0x7fba9f2e4d00
  6156 ms  0x2355 SECKEY_DestroyPrivateKey()
  6156 ms  0x2355 privk:0x7fba9f110020::7fba9f110020  10 e5 5c b1                                      ..\.
  6156 ms  0x2355 privk:0x7fba9f110020::7fba9f110020  e5 e5 e5 e5                                      ....
  6157 ms  0x2355 PK11_Encrypt()
  6157 ms  0x2355 symkey:0x7fba9f2e5300
  6157 ms  0x2355 SSL_AuthCertificateComplete()
  6157 ms  0x2355 fd:0x7fba9f2e0940
  6157 ms  0x2355 err:0x0
  6206 ms  0x2355 SECKEY_DestroyPrivateKey()
  6206 ms  0x2355 privk:0x7fba9f102820::7fba9f102820  10 7a c0 b0                                      .z..
  6207 ms  0x2355 privk:0x7fba9f102820::7fba9f102820  e5 e5 e5 e5                                      ....
  6207 ms  0x2355 SECKEY_DestroyPrivateKey()
  6207 ms  0x2355 privk:0x7fbab54d3820::7fbab54d3820  90 77 c0 b0                                      .w..
  6207 ms  0x2355 privk:0x7fbab54d3820::7fbab54d3820  e5 e5 e5 e5                                      ....
  6453 ms  0x2355 SECKEY_DestroyPrivateKey()
  6453 ms  0x2355 privk:0x7fba9f107020::7fba9f107020  e0 7c c0 b0                                      .|..
  6453 ms  0x2355 privk:0x7fba9f107020::7fba9f107020  e5 e5 e5 e5                                      ....
  6454 ms  0x2355 SECKEY_DestroyPrivateKey()
  6454 ms  0x2355 privk:0x7fba9f105020::7fba9f105020  e0 77 c0 b0                                      .w..
  6454 ms  0x2355 privk:0x7fba9f105020::7fba9f105020  e5 e5 e5 e5                                      ....
           /* TID 0x235d */
  6506 ms  0x235d PR_Close()
  6506 ms  0x235d fd:0x7fbab00c81c0
           /* TID 0x236c */
  6509 ms  0x236c PR_Close()
  6509 ms  0x236c fd:0x7fbab00c8280
           /* TID 0x2355 */
  6572 ms  0x2355 PK11_Encrypt()
  6572 ms  0x2355 symkey:0x7fba9f2e5180
  6579 ms  0x2355 PR_Close()
  6579 ms  0x2355 fd:0x7fbab0c8cd90
           /* TID 0x234a */
  6581 ms  0x234a EC_ValidatePublicKey()
  6582 ms  0x234a ret:0x0
  6582 ms  0x234a EC_ValidatePublicKey()
  6584 ms  0x234a ret:0x0
  6584 ms  0x234a EC_ValidatePublicKey()
  6585 ms  0x234a ret:0x0
  6585 ms  0x234a EC_ValidatePublicKey()
  6587 ms  0x234a ret:0x0
  6587 ms  0x234a EC_ValidatePublicKey()
  6588 ms  0x234a ret:0x0
  6588 ms  0x234a EC_ValidatePublicKey()
  6589 ms  0x234a ret:0x0
  6589 ms  0x234a EC_ValidatePublicKey()
  6591 ms  0x234a ret:0x0
  6591 ms  0x234a EC_ValidatePublicKey()
  6592 ms  0x234a ret:0x0
  6593 ms  0x234a EC_ValidatePublicKey()
  6595 ms  0x234a ret:0x0
  6595 ms  0x234a EC_ValidatePublicKey()
  6596 ms  0x234a ret:0x0
           /* TID 0x2355 */
  6597 ms  0x2355 PR_Close()
  6597 ms  0x2355 fd:0x7fbab04e1fa0
  6597 ms     | 0x2355 PK11_Encrypt()
  6597 ms     | 0x2355 symkey:0x7fbab02f1580
  6597 ms  0x2355 PR_Close()
  6597 ms  0x2355 fd:0x7fbab04e1dc0
  6597 ms  0x2355 PR_Close()
  6597 ms  0x2355 fd:0x7fbab04e13a0
  6597 ms     | 0x2355 PK11_Encrypt()
  6597 ms     | 0x2355 symkey:0x7fbab02f0800
  6597 ms  0x2355 PR_Close()
  6597 ms  0x2355 fd:0x7fbab0630dc0
  6597 ms  0x2355 PR_Close()
  6597 ms  0x2355 fd:0x7fbab060bee0
  6597 ms     | 0x2355 PK11_Encrypt()
  6597 ms     | 0x2355 symkey:0x7fbaba1b8700
  6597 ms  0x2355 PR_Close()
  6597 ms  0x2355 fd:0x7fba9f2e0e80
  6597 ms  0x2355 PR_Close()
  6597 ms  0x2355 fd:0x7fbab13e18b0
  6597 ms     | 0x2355 PK11_Encrypt()
  6597 ms     | 0x2355 symkey:0x7fbabe864700
  6598 ms  0x2355 PR_Close()
  6598 ms  0x2355 fd:0x7fba9f2e0940
  6598 ms     | 0x2355 PK11_Encrypt()
  6598 ms     | 0x2355 symkey:0x7fba9f2e5300
           /* TID 0x23b9 */
  6598 ms  0x23b9 PR_Close()
  6598 ms  0x23b9 fd:0x7fba9f2e0760
  6598 ms  0x23b9 PR_Close()
  6598 ms  0x23b9 fd:0x7fba9f2e0760
           /* TID 0x234a */
  6601 ms  0x234a PR_Close()
  6601 ms  0x234a fd:0x7fbab235beb0
  6601 ms  0x234a PR_Close()
  6601 ms  0x234a fd:0x7fba9f2e0e80
  6602 ms  0x234a PR_Close()
  6602 ms  0x234a fd:0x7fba9f2e0f10
  6602 ms  0x234a PR_Close()
  6602 ms  0x234a fd:0x7fba9f2e0e80
  6602 ms  0x234a PR_Close()
  6602 ms  0x234a fd:0x7fba9f2e0f10
  6602 ms  0x234a PR_Close()
  6602 ms  0x234a fd:0x7fba9f2e0e80
           /* TID 0x237c */
  6605 ms  0x237c PR_Close()
  6605 ms  0x237c fd:0x7fba9f309040
           /* TID 0x234a */
  6625 ms  0x234a PR_Close()
  6625 ms  0x234a fd:0x7fba9f2e0f10
  6625 ms  0x234a PR_Close()
  6625 ms  0x234a fd:0x7fbab13e18b0
  6626 ms  0x234a PR_Close()
  6626 ms  0x234a fd:0x7fba9f2e0f10
  6626 ms  0x234a PR_Close()
  6626 ms  0x234a fd:0x7fbab13e18b0
  6627 ms  0x234a PR_Close()
  6627 ms  0x234a fd:0x7fbabb2c89a0
  6627 ms  0x234a PR_Close()
  6627 ms  0x234a fd:0x7fbabb2c88b0
  6627 ms  0x234a PR_Close()
  6627 ms  0x234a fd:0x7fbabb2c8a60
  6629 ms  0x234a PR_Close()
  6629 ms  0x234a fd:0x7fbab1354220
  6630 ms  0x234a PR_Close()
  6630 ms  0x234a fd:0x7fbab1354220
  6632 ms  0x234a PR_Close()
  6632 ms  0x234a fd:0x7fba9f2e0f10
  6632 ms  0x234a PR_Close()
  6632 ms  0x234a fd:0x7fbab13e18b0
  6633 ms  0x234a PR_Close()
  6633 ms  0x234a fd:0x7fba9f2e0f10
  6633 ms  0x234a PR_Close()
  6633 ms  0x234a fd:0x7fbab13e18b0
  6635 ms  0x234a PR_Close()
  6635 ms  0x234a fd:0x7fbab13e18e0
  6637 ms  0x234a PR_Close()
  6637 ms  0x234a fd:0x7fbab13e18e0
  6638 ms  0x234a PR_Close()
  6638 ms  0x234a fd:0x7fba9f2e0f10
  6638 ms  0x234a PR_Close()
  6638 ms  0x234a fd:0x7fbab13e1940
  6639 ms  0x234a PR_Close()
  6639 ms  0x234a fd:0x7fba9f2e0f10
  6639 ms  0x234a PR_Close()
  6639 ms  0x234a fd:0x7fbab13e1940
  6641 ms  0x234a PR_Close()
  6641 ms  0x234a fd:0x7fbab13e19d0
  6643 ms  0x234a PR_Close()
  6643 ms  0x234a fd:0x7fbab13e19d0
  6648 ms  0x234a PR_Close()
  6648 ms  0x234a fd:0x7fbab1ebb1c0
  6649 ms  0x234a PR_Close()
  6649 ms  0x234a fd:0x7fbab1ebb1c0
  6652 ms  0x234a PR_Close()
  6652 ms  0x234a fd:0x7fbab1ebb220
           /* TID 0x237c */
  6657 ms  0x237c PR_Close()
  6657 ms  0x237c fd:0x7fba9f2e0940
  6658 ms  0x237c PR_Close()
  6658 ms  0x237c fd:0x7fba9f2e0940
           /* TID 0x234a */
  6658 ms  0x234a PR_Close()
  6658 ms  0x234a fd:0x7fba9f2e0f10
  6658 ms  0x234a PR_Close()
  6658 ms  0x234a fd:0x7fbab235bee0
           /* TID 0x237c */
  6664 ms  0x237c PR_Close()
  6664 ms  0x237c fd:0x7fba9f309040
  6683 ms  0x237c PR_Close()
  6683 ms  0x237c fd:0x7fba9f309040
           /* TID 0x2355 */
  6689 ms  0x2355 PR_Close()
  6689 ms  0x2355 fd:0x7fba9f2e0790
  6689 ms     | 0x2355 PK11_Encrypt()
  6689 ms     | 0x2355 symkey:0x7fba9f2e5180
           /* TID 0x234f */
  6697 ms  0x234f PR_Close()
  6697 ms  0x234f fd:0x7fbab9a98e20
  6701 ms  0x234f PR_Close()
  6701 ms  0x234f fd:0x7fbab63ea7f0
           /* TID 0x237c */
  6714 ms  0x237c PR_Close()
  6714 ms  0x237c fd:0x7fba9f309e50
           /* TID 0x2355 */
  6719 ms  0x2355 PR_Close()
  6719 ms  0x2355 fd:0x7fbab060bdf0
           /* TID 0x23b9 */
  6719 ms  0x23b9 PR_Close()
  6719 ms  0x23b9 fd:0x7fbab06304f0
  6720 ms  0x23b9 PR_Close()
  6720 ms  0x23b9 fd:0x7fba9f2e05b0
  6720 ms  0x23b9 PR_Close()
  6720 ms  0x23b9 fd:0x7fba9f2e05b0
  6720 ms  0x23b9 PR_Close()
  6720 ms  0x23b9 fd:0x7fba9f2e05b0
           /* TID 0x237c */
  6720 ms  0x237c PR_Close()
  6720 ms  0x237c fd:0x7fbab06302e0
           /* TID 0x235d */
  6723 ms  0x235d PR_Close()
  6723 ms  0x235d fd:0x7fbab1751970
  6723 ms  0x235d PR_Close()
  6723 ms  0x235d fd:0x7fbab1751e20
           /* TID 0x234f */
  6730 ms  0x234f PR_Close()
  6730 ms  0x234f fd:0x7fbab0630040
           /* TID 0x234a */
  6732 ms  0x234a PR_Close()
  6732 ms  0x234a fd:0x7fba9f2e0940
  6732 ms  0x234a PR_Close()
  6732 ms  0x234a fd:0x7fbab0630520
           /* TID 0x237c */
  6733 ms  0x237c PR_Close()
  6733 ms  0x237c fd:0x7fbab0630760
  6736 ms  0x237c PR_Close()
  6736 ms  0x237c fd:0x7fbab0630400
  6854 ms  0x237c PR_Close()
  6854 ms  0x237c fd:0x7fba9f2e0d00
  6877 ms  0x237c PR_Close()
  6877 ms  0x237c fd:0x7fba9f2e0d00
  6906 ms  0x237c PR_Close()
  6906 ms  0x237c fd:0x7fbab00c85e0
  6907 ms  0x237c PR_Close()
  6907 ms  0x237c fd:0x7fbab00c8610
  6916 ms  0x237c PR_Close()
  6916 ms  0x237c fd:0x7fbab00c8e80
  6920 ms  0x237c PR_Close()
  6920 ms  0x237c fd:0x7fbab0630760
  6927 ms  0x237c PR_Close()
  6927 ms  0x237c fd:0x7fbab1354460
  6935 ms  0x237c PR_Close()
  6935 ms  0x237c fd:0x7fbab13e1430
  6937 ms  0x237c PR_Close()
  6937 ms  0x237c fd:0x7fbab13e1430
           /* TID 0x234a */
  7092 ms  0x234a PR_Close()
  7092 ms  0x234a fd:0x7fba9f3094f0
  7093 ms  0x234a PR_Close()
  7093 ms  0x234a fd:0x7fba9f3094f0
  7099 ms  0x234a PR_Close()
  7099 ms  0x234a fd:0x7fbad85da130
  7099 ms  0x234a PR_Close()
  7099 ms  0x234a fd:0x7fbad85da190
Process terminated
