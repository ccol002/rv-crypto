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
           /* TID 0x20a2 */
   109 ms  0x20a2 PR_Close()
   109 ms  0x20a2 fd:0x7f00b18ca910
           /* TID 0x209a */
   345 ms  0x209a SSL_ImportFD()
   345 ms  0x209a ret:0x7f00b18d14f0
   345 ms  0x209a SSL_AuthCertificateHook()
   345 ms  0x209a fd:0x7f00b18d14f0
   345 ms  0x209a ret:0x0
   346 ms  0x209a PR_Connect()
   346 ms  0x209a fd:0x7f00b18d14f0
   553 ms  0x209a SECKEY_CreateECPrivateKey()
   553 ms  0x209a cx:0x7f00b18cdfc8
   554 ms     | 0x209a EC_ValidatePublicKey()
   554 ms     | 0x209a ret:0x0
   554 ms  0x209a ret:0x7f00b1519020::7f00b1519020  20 6e 8d b1                                       n..
   555 ms  0x209a SECKEY_CreateECPrivateKey()
   555 ms  0x209a cx:0x7f00b18cdfc8
   556 ms     | 0x209a EC_ValidatePublicKey()
   560 ms     | 0x209a ret:0x0
   560 ms  0x209a ret:0x7f00b151b020::7f00b151b020  e0 6c 8d b1                                      .l..
           /* TID 0x2106 */
   641 ms  0x2106 PR_Close()
   641 ms  0x2106 fd:0x7f00b18d1430
   647 ms  0x2106 PR_Close()
   647 ms  0x2106 fd:0x7f00b18d1430
           /* TID 0x209a */
   773 ms  SECKEY_ECParamsToKeySize()
   773 ms  0x209a ret:0x100
   773 ms  0x209a SECKEY_CreateECPrivateKey()
   773 ms  0x209a cx:0x7f00b18cdfc8
   775 ms     | 0x209a EC_ValidatePublicKey()
   779 ms     | 0x209a ret:0x0
   779 ms  0x209a ret:0x7f00a082c820::7f00a082c820  60 4a 81 a0                                      `J..
   779 ms  0x209a PK11_PubDeriveWithKDF()
   779 ms  0x209a seckey:0x7f00a082c820
   779 ms     | 0x209a EC_ValidatePublicKey()
   783 ms     | 0x209a ret:0x0
   786 ms  0x209a ret:0x7f00b33e5d00
   786 ms  0x209a PK11_DeriveWithFlags()
   786 ms  0x209a basekey:0x7f00b33e5d00
   787 ms     | 0x209a PK11_DeriveWithTemplate()
   787 ms  0x209a ret:0x7f00a0804c80
   787 ms  0x209a PK11_Derive()
   787 ms  0x209a basekey:0x7f00a0804c80
   787 ms     | 0x209a PK11_DeriveWithTemplate()
   787 ms  0x209a ret:0x7f00a0804d80
   787 ms  0x209a SECKEY_DestroyPrivateKey()
   787 ms  0x209a privk:0x7f00a082c820::7f00a082c820  60 4a 81 a0                                      `J..
   787 ms  0x209a privk:0x7f00a082c820::7f00a082c820  e5 e5 e5 e5                                      ....
   787 ms  0x209a PK11_Encrypt()
   787 ms  0x209a symkey:0x7f00a0804f00
   789 ms  0x209a PR_Connect()
   789 ms  0x209a fd:0x7f00a084f070
           /* TID 0x2106 */
   795 ms  0x2106 PR_Close()
   795 ms  0x2106 fd:0x7f00a084f0a0
           /* TID 0x20a2 */
   842 ms  0x20a2 PR_Close()
   842 ms  0x20a2 fd:0x7f00a084f100
           /* TID 0x20fb */
   842 ms  0x20fb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   843 ms  0x20fb ret:0x0
           /* TID 0x209a */
   843 ms  0x209a SSL_AuthCertificateComplete()
   843 ms  0x209a fd:0x7f00b18d14f0
   843 ms  0x209a err:0x0
   843 ms  0x209a PK11_Encrypt()
   843 ms  0x209a symkey:0x7f00a0804f00
   995 ms  0x209a SECKEY_DestroyPrivateKey()
   995 ms  0x209a privk:0x7f00b151b020::7f00b151b020  e0 6c 8d b1                                      .l..
   996 ms  0x209a privk:0x7f00b151b020::7f00b151b020  e5 e5 e5 e5                                      ....
   997 ms  0x209a SECKEY_DestroyPrivateKey()
   997 ms  0x209a privk:0x7f00b1519020::7f00b1519020  20 6e 8d b1                                       n..
   997 ms  0x209a privk:0x7f00b1519020::7f00b1519020  e5 e5 e5 e5                                      ....
  1212 ms  0x209a SSL_ImportFD()
  1212 ms  0x209a ret:0x7f00a084f2e0
  1212 ms  0x209a SSL_AuthCertificateHook()
  1212 ms  0x209a fd:0x7f00a084f2e0
  1212 ms  0x209a ret:0x0
  1212 ms  0x209a PR_Connect()
  1212 ms  0x209a fd:0x7f00a084f2e0
  1238 ms  0x209a SECKEY_CreateECPrivateKey()
  1238 ms  0x209a cx:0x7f00a0807c08
  1240 ms     | 0x209a EC_ValidatePublicKey()
  1240 ms     | 0x209a ret:0x0
  1240 ms  0x209a ret:0x7f00b151a820::7f00b151a820  60 4a 81 a0                                      `J..
  1240 ms  0x209a SECKEY_CreateECPrivateKey()
  1240 ms  0x209a cx:0x7f00a0807c08
  1242 ms     | 0x209a EC_ValidatePublicKey()
  1247 ms     | 0x209a ret:0x0
  1247 ms  0x209a ret:0x7f00b1520820::7f00b1520820  20 49 81 a0                                       I..
           /* TID 0x20fb */
  1300 ms  0x20fb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1300 ms  0x20fb ret:0x0
           /* TID 0x209a */
  1301 ms  SECKEY_ECParamsToKeySize()
  1301 ms  0x209a ret:0x100
  1301 ms  0x209a SECKEY_CreateECPrivateKey()
  1301 ms  0x209a cx:0x7f00a0807c08
  1303 ms     | 0x209a EC_ValidatePublicKey()
  1307 ms     | 0x209a ret:0x0
  1307 ms  0x209a ret:0x7f00a085a820::7f00a085a820  c0 4e 81 a0                                      .N..
  1307 ms  0x209a PK11_PubDeriveWithKDF()
  1307 ms  0x209a seckey:0x7f00a085a820
  1307 ms     | 0x209a EC_ValidatePublicKey()
  1311 ms     | 0x209a ret:0x0
  1315 ms  0x209a ret:0x7f00b33e5d00
  1315 ms  0x209a PK11_DeriveWithFlags()
  1315 ms  0x209a basekey:0x7f00b33e5d00
  1315 ms     | 0x209a PK11_DeriveWithTemplate()
  1315 ms  0x209a ret:0x7f00a0805680
  1315 ms  0x209a PK11_Derive()
  1315 ms  0x209a basekey:0x7f00a0805680
  1315 ms     | 0x209a PK11_DeriveWithTemplate()
  1315 ms  0x209a ret:0x7f00a0805880
  1315 ms  0x209a SECKEY_DestroyPrivateKey()
  1315 ms  0x209a privk:0x7f00a085a820::7f00a085a820  c0 4e 81 a0                                      .N..
  1315 ms  0x209a privk:0x7f00a085a820::7f00a085a820  e5 e5 e5 e5                                      ....
  1316 ms  0x209a PK11_Encrypt()
  1316 ms  0x209a symkey:0x7f00a0805d80
  1316 ms  0x209a SSL_AuthCertificateComplete()
  1316 ms  0x209a fd:0x7f00a084f2e0
  1316 ms  0x209a err:0x0
  1316 ms  0x209a PK11_Encrypt()
  1316 ms  0x209a symkey:0x7f00a0805d80
  1367 ms  0x209a SECKEY_DestroyPrivateKey()
  1367 ms  0x209a privk:0x7f00b1520820::7f00b1520820  20 49 81 a0                                       I..
  1368 ms  0x209a privk:0x7f00b1520820::7f00b1520820  e5 e5 e5 e5                                      ....
  1368 ms  0x209a SECKEY_DestroyPrivateKey()
  1368 ms  0x209a privk:0x7f00b151a820::7f00b151a820  60 4a 81 a0                                      `J..
  1368 ms  0x209a privk:0x7f00b151a820::7f00b151a820  e5 e5 e5 e5                                      ....
  1371 ms  0x209a PK11_Encrypt()
  1371 ms  0x209a symkey:0x7f00a0805d80
  1401 ms  0x209a PK11_Encrypt()
  1401 ms  0x209a symkey:0x7f00a0805d80
  1430 ms  0x209a PK11_Encrypt()
  1430 ms  0x209a symkey:0x7f00a0805d80
  1459 ms  0x209a PK11_Encrypt()
  1459 ms  0x209a symkey:0x7f00a0805d80
  1574 ms  0x209a PK11_Encrypt()
  1574 ms  0x209a symkey:0x7f00a0805d80
  1606 ms  0x209a PK11_Encrypt()
  1606 ms  0x209a symkey:0x7f00a0805d80
  1637 ms  0x209a PK11_Encrypt()
  1637 ms  0x209a symkey:0x7f00a0805d80
           /* TID 0x20f0 */
  1666 ms  0x20f0 PR_Close()
  1666 ms  0x20f0 fd:0x7f00a084f3d0
  1666 ms  0x20f0 PR_Close()
  1666 ms  0x20f0 fd:0x7f00a084f490
  1666 ms  0x20f0 PR_Close()
  1666 ms  0x20f0 fd:0x7f00a084f3d0
  1666 ms  0x20f0 PR_Close()
  1666 ms  0x20f0 fd:0x7f00a084f490
  1667 ms  0x20f0 PR_Close()
  1667 ms  0x20f0 fd:0x7f00a084f3d0
  1667 ms  0x20f0 PR_Close()
  1667 ms  0x20f0 fd:0x7f00a084f490
  1667 ms  0x20f0 PR_Close()
  1667 ms  0x20f0 fd:0x7f00a084f3d0
  1667 ms  0x20f0 PR_Close()
  1667 ms  0x20f0 fd:0x7f00a084f490
  1667 ms  0x20f0 PR_Close()
  1667 ms  0x20f0 fd:0x7f00a084f3d0
  1667 ms  0x20f0 PR_Close()
  1667 ms  0x20f0 fd:0x7f00a084f490
  1667 ms  0x20f0 PR_Close()
  1667 ms  0x20f0 fd:0x7f00a084f3d0
  1667 ms  0x20f0 PR_Close()
  1667 ms  0x20f0 fd:0x7f00a084f490
  1667 ms  0x20f0 PR_Close()
  1667 ms  0x20f0 fd:0x7f00a084f3d0
  1667 ms  0x20f0 PR_Close()
  1667 ms  0x20f0 fd:0x7f00a084f490
  1667 ms  0x20f0 PR_Close()
  1667 ms  0x20f0 fd:0x7f00a084f3d0
  1667 ms  0x20f0 PR_Close()
  1667 ms  0x20f0 fd:0x7f00a084f490
  1668 ms  0x20f0 PR_Close()
  1668 ms  0x20f0 fd:0x7f00a084f3d0
  1668 ms  0x20f0 PR_Close()
  1668 ms  0x20f0 fd:0x7f00a084f490
  1668 ms  0x20f0 PR_Close()
  1668 ms  0x20f0 fd:0x7f00a084f3d0
  1668 ms  0x20f0 PR_Close()
  1668 ms  0x20f0 fd:0x7f00a084f490
  1668 ms  0x20f0 PR_Close()
  1668 ms  0x20f0 fd:0x7f00a084f3d0
  1668 ms  0x20f0 PR_Close()
  1668 ms  0x20f0 fd:0x7f00a084f490
  1668 ms  0x20f0 PR_Close()
  1668 ms  0x20f0 fd:0x7f00a084f3d0
  1668 ms  0x20f0 PR_Close()
  1668 ms  0x20f0 fd:0x7f00a084f490
  1668 ms  0x20f0 PR_Close()
  1668 ms  0x20f0 fd:0x7f00a084f3d0
  1668 ms  0x20f0 PR_Close()
  1668 ms  0x20f0 fd:0x7f00a084f490
  1668 ms  0x20f0 PR_Close()
  1668 ms  0x20f0 fd:0x7f00a084f3d0
  1668 ms  0x20f0 PR_Close()
  1668 ms  0x20f0 fd:0x7f00a084f490
  1672 ms  0x20f0 PR_Close()
  1672 ms  0x20f0 fd:0x7f00a084f3d0
  1672 ms  0x20f0 PR_Close()
  1672 ms  0x20f0 fd:0x7f00a084f3a0
  1675 ms  0x20f0 PR_Close()
  1675 ms  0x20f0 fd:0x7f00a084f3a0
  1675 ms  0x20f0 PR_Close()
  1675 ms  0x20f0 fd:0x7f00a084f3d0
  1677 ms  0x20f0 PR_Close()
  1677 ms  0x20f0 fd:0x7f00a084f3d0
  1678 ms  0x20f0 PR_Close()
  1678 ms  0x20f0 fd:0x7f00a084f3d0
  1680 ms  0x20f0 PR_Close()
  1680 ms  0x20f0 fd:0x7f00a084f3d0
  1681 ms  0x20f0 PR_Close()
  1681 ms  0x20f0 fd:0x7f00a084f3d0
  1737 ms  0x20f0 PR_Close()
  1737 ms  0x20f0 fd:0x7f00a084f3d0
  1738 ms  0x20f0 PR_Close()
  1738 ms  0x20f0 fd:0x7f00a084f3d0
  1746 ms  0x20f0 PR_Close()
  1746 ms  0x20f0 fd:0x7f00a084f3d0
  1746 ms  0x20f0 PR_Close()
  1746 ms  0x20f0 fd:0x7f00a084f3d0
  1752 ms  0x20f0 PR_Close()
  1752 ms  0x20f0 fd:0x7f00a084f3d0
  1752 ms  0x20f0 PR_Close()
  1752 ms  0x20f0 fd:0x7f00a084f3d0
  1754 ms  0x20f0 PR_Close()
  1754 ms  0x20f0 fd:0x7f00a084f3d0
  1754 ms  0x20f0 PR_Close()
  1754 ms  0x20f0 fd:0x7f00a084f3d0
           /* TID 0x20ee */
  1754 ms  0x20ee PR_Close()
  1754 ms  0x20ee fd:0x7f00a084f3d0
  1754 ms  0x20ee PR_Close()
  1754 ms  0x20ee fd:0x7f00a084f3d0
  1754 ms  0x20ee PR_Close()
  1754 ms  0x20ee fd:0x7f00a084f3d0
  1754 ms  0x20ee PR_Close()
  1754 ms  0x20ee fd:0x7f00a084f3d0
  1754 ms  0x20ee PR_Close()
  1754 ms  0x20ee fd:0x7f00a084f3d0
  1754 ms  0x20ee PR_Close()
  1754 ms  0x20ee fd:0x7f00a084f3d0
  1754 ms  0x20ee PR_Close()
  1754 ms  0x20ee fd:0x7f00a084f3d0
  1754 ms  0x20ee PR_Close()
  1754 ms  0x20ee fd:0x7f00a084f3d0
  1755 ms  0x20ee PR_Close()
  1755 ms  0x20ee fd:0x7f00a084f3d0
  1755 ms  0x20ee PR_Close()
  1755 ms  0x20ee fd:0x7f00a084f3d0
  1755 ms  0x20ee PR_Close()
  1755 ms  0x20ee fd:0x7f00a084f3d0
  1755 ms  0x20ee PR_Close()
  1755 ms  0x20ee fd:0x7f00a084f3d0
  1755 ms  0x20ee PR_Close()
  1755 ms  0x20ee fd:0x7f00a084f3d0
  1755 ms  0x20ee PR_Close()
  1755 ms  0x20ee fd:0x7f00a084f3d0
  1755 ms  0x20ee PR_Close()
  1755 ms  0x20ee fd:0x7f00a084f3d0
           /* TID 0x2106 */
  2257 ms  0x2106 PR_Close()
  2257 ms  0x2106 fd:0x7f00a084f790
  2259 ms  0x2106 PR_Close()
  2259 ms  0x2106 fd:0x7f00a084f790
  2815 ms  0x2106 PR_Close()
  2815 ms  0x2106 fd:0x7f00a084f790
           /* TID 0x20a2 */
  4220 ms  0x20a2 PR_Close()
  4220 ms  0x20a2 fd:0x7f00a084f790
  4221 ms  0x20a2 PR_Close()
  4221 ms  0x20a2 fd:0x7f00a084f8e0
  4221 ms  0x20a2 PR_Close()
  4221 ms  0x20a2 fd:0x7f00a084f940
           /* TID 0x209a */
  4708 ms  0x209a SSL_ImportFD()
  4708 ms  0x209a ret:0x7f00bb67a0a0
  4708 ms  0x209a SSL_AuthCertificateHook()
  4708 ms  0x209a fd:0x7f00bb67a0a0
  4708 ms  0x209a ret:0x0
  4708 ms  0x209a PR_Connect()
  4708 ms  0x209a fd:0x7f00bb67a0a0
  4839 ms  0x209a SECKEY_CreateECPrivateKey()
  4839 ms  0x209a cx:0x7f00a0807f48
  4841 ms     | 0x209a EC_ValidatePublicKey()
  4841 ms     | 0x209a ret:0x0
  4841 ms  0x209a ret:0x7f00a07a3020::7f00a07a3020  20 09 68 bb                                       .h.
  4841 ms  0x209a SECKEY_CreateECPrivateKey()
  4841 ms  0x209a cx:0x7f00a0807f48
  4843 ms     | 0x209a EC_ValidatePublicKey()
  4849 ms     | 0x209a ret:0x0
  4849 ms  0x209a ret:0x7f00a07a5020::7f00a07a5020  c0 04 68 bb                                      ..h.
  5117 ms  SECKEY_ECParamsToKeySize()
  5117 ms  0x209a ret:0x100
  5118 ms  0x209a SECKEY_CreateECPrivateKey()
  5118 ms  0x209a cx:0x7f00a0807f48
  5119 ms     | 0x209a EC_ValidatePublicKey()
  5121 ms     | 0x209a ret:0x0
  5121 ms  0x209a ret:0x7f00a07ad020::7f00a07ad020  b0 90 7f a0                                      ....
  5121 ms  0x209a PK11_PubDeriveWithKDF()
  5121 ms  0x209a seckey:0x7f00a07ad020
  5121 ms     | 0x209a EC_ValidatePublicKey()
  5122 ms     | 0x209a ret:0x0
  5124 ms  0x209a ret:0x7f00b33e5d00
  5124 ms  0x209a PK11_DeriveWithFlags()
  5124 ms  0x209a basekey:0x7f00b33e5d00
  5124 ms     | 0x209a PK11_DeriveWithTemplate()
  5124 ms  0x209a ret:0x7f00bb67bc00
  5124 ms  0x209a PK11_Derive()
  5124 ms  0x209a basekey:0x7f00bb67bc00
  5124 ms     | 0x209a PK11_DeriveWithTemplate()
  5124 ms  0x209a ret:0x7f00bb67be00
  5124 ms  0x209a SECKEY_DestroyPrivateKey()
  5124 ms  0x209a privk:0x7f00a07ad020::7f00a07ad020  b0 90 7f a0                                      ....
  5124 ms  0x209a privk:0x7f00a07ad020::7f00a07ad020  e5 e5 e5 e5                                      ....
  5124 ms  0x209a PK11_Encrypt()
  5124 ms  0x209a symkey:0x7f00bb67c080
           /* TID 0x20fb */
  5151 ms  0x20fb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5151 ms  0x20fb ret:0x0
           /* TID 0x20a2 */
  5151 ms  0x20a2 PR_Close()
  5151 ms  0x20a2 fd:0x7f00bb67a760
           /* TID 0x209a */
  5151 ms  0x209a SSL_AuthCertificateComplete()
  5151 ms  0x209a fd:0x7f00bb67a0a0
  5151 ms  0x209a err:0x0
  5152 ms  0x209a PK11_Encrypt()
  5152 ms  0x209a symkey:0x7f00bb67c080
  5257 ms  0x209a SECKEY_DestroyPrivateKey()
  5257 ms  0x209a privk:0x7f00a07a5020::7f00a07a5020  c0 04 68 bb                                      ..h.
  5258 ms  0x209a privk:0x7f00a07a5020::7f00a07a5020  e5 e5 e5 e5                                      ....
  5258 ms  0x209a SECKEY_DestroyPrivateKey()
  5258 ms  0x209a privk:0x7f00a07a3020::7f00a07a3020  20 09 68 bb                                       .h.
  5258 ms  0x209a privk:0x7f00a07a3020::7f00a07a3020  e5 e5 e5 e5                                      ....
  5450 ms  0x209a PR_Close()
  5450 ms  0x209a fd:0x7f00bb67a0a0
  5450 ms     | 0x209a PK11_Encrypt()
  5450 ms     | 0x209a symkey:0x7f00bb67c080
           /* TID 0x20b1 */
  5458 ms  0x20b1 PR_Close()
  5458 ms  0x20b1 fd:0x7f00bb67a5e0
           /* TID 0x209a */
  5473 ms  0x209a SSL_ImportFD()
  5473 ms  0x209a ret:0x7f00a06560a0
  5473 ms  0x209a SSL_AuthCertificateHook()
  5473 ms  0x209a fd:0x7f00a06560a0
  5473 ms  0x209a ret:0x0
  5473 ms  0x209a PR_Connect()
  5473 ms  0x209a fd:0x7f00a06560a0
  5602 ms  0x209a SECKEY_CreateECPrivateKey()
  5602 ms  0x209a cx:0x7f00a0808288
  5604 ms     | 0x209a EC_ValidatePublicKey()
  5604 ms     | 0x209a ret:0x0
  5604 ms  0x209a ret:0x7f00a07ad020::7f00a07ad020  f0 bb 60 a0                                      ..`.
  5605 ms  0x209a SECKEY_CreateECPrivateKey()
  5605 ms  0x209a cx:0x7f00a0808288
  5607 ms     | 0x209a EC_ValidatePublicKey()
  5612 ms     | 0x209a ret:0x0
  5612 ms  0x209a ret:0x7f00a07af820::7f00a07af820  70 be 60 a0                                      p.`.
  5872 ms  SECKEY_ECParamsToKeySize()
  5876 ms  0x209a ret:0x100
  5876 ms  0x209a SECKEY_CreateECPrivateKey()
  5876 ms  0x209a cx:0x7f00a0808288
  5877 ms     | 0x209a EC_ValidatePublicKey()
  5882 ms     | 0x209a ret:0x0
  5882 ms  0x209a ret:0x7f00a07b2820::7f00a07b2820  f0 6b e9 b2                                      .k..
  5882 ms  0x209a PK11_PubDeriveWithKDF()
  5882 ms  0x209a seckey:0x7f00a07b2820
  5882 ms     | 0x209a EC_ValidatePublicKey()
  5886 ms     | 0x209a ret:0x0
  5890 ms  0x209a ret:0x7f00bb67be00
  5890 ms  0x209a PK11_DeriveWithFlags()
  5890 ms  0x209a basekey:0x7f00bb67be00
  5890 ms     | 0x209a PK11_DeriveWithTemplate()
  5890 ms  0x209a ret:0x7f00bb67bc00
  5890 ms  0x209a PK11_Derive()
  5890 ms  0x209a basekey:0x7f00bb67bc00
  5890 ms     | 0x209a PK11_DeriveWithTemplate()
  5890 ms  0x209a ret:0x7f00b33e5d00
  5890 ms  0x209a SECKEY_DestroyPrivateKey()
  5890 ms  0x209a privk:0x7f00a07b2820::7f00a07b2820  f0 6b e9 b2                                      .k..
  5891 ms  0x209a privk:0x7f00a07b2820::7f00a07b2820  e5 e5 e5 e5                                      ....
  5891 ms  0x209a PK11_Encrypt()
  5891 ms  0x209a symkey:0x7f00bb67be80
  5891 ms  0x209a SSL_AuthCertificateComplete()
  5891 ms  0x209a fd:0x7f00a06560a0
  5891 ms  0x209a err:0x0
  5892 ms  0x209a PK11_Encrypt()
  5892 ms  0x209a symkey:0x7f00bb67be80
  6022 ms  0x209a SECKEY_DestroyPrivateKey()
  6022 ms  0x209a privk:0x7f00a07af820::7f00a07af820  70 be 60 a0                                      p.`.
  6023 ms  0x209a privk:0x7f00a07af820::7f00a07af820  e5 e5 e5 e5                                      ....
  6023 ms  0x209a SECKEY_DestroyPrivateKey()
  6023 ms  0x209a privk:0x7f00a07ad020::7f00a07ad020  f0 bb 60 a0                                      ..`.
  6023 ms  0x209a privk:0x7f00a07ad020::7f00a07ad020  e5 e5 e5 e5                                      ....
           /* TID 0x20b1 */
  6240 ms  0x20b1 PR_Close()
  6240 ms  0x20b1 fd:0x7f00a06564f0
           /* TID 0x209a */
  6308 ms  0x209a PR_Close()
  6308 ms  0x209a fd:0x7f00a06560a0
  6309 ms     | 0x209a PK11_Encrypt()
  6309 ms     | 0x209a symkey:0x7f00bb67be80
           /* TID 0x20a2 */
  6314 ms  0x20a2 PR_Close()
  6314 ms  0x20a2 fd:0x7f00a077b250
           /* TID 0x209a */
  6319 ms  0x209a SSL_ImportFD()
  6319 ms  0x209a ret:0x7f00a077b2b0
  6319 ms  0x209a SSL_AuthCertificateHook()
  6319 ms  0x209a fd:0x7f00a077b2b0
  6319 ms  0x209a ret:0x0
  6319 ms  0x209a PR_Connect()
  6319 ms  0x209a fd:0x7f00a077b2b0
  6321 ms  0x209a SSL_ImportFD()
  6321 ms  0x209a ret:0x7f00a077bd90
  6321 ms  0x209a SSL_AuthCertificateHook()
  6321 ms  0x209a fd:0x7f00a077bd90
  6321 ms  0x209a ret:0x0
  6321 ms  0x209a PR_Connect()
  6321 ms  0x209a fd:0x7f00a077bd90
  6406 ms  0x209a PR_Close()
  6406 ms  0x209a fd:0x7f00a077b2b0
  6454 ms  0x209a SECKEY_CreateECPrivateKey()
  6454 ms  0x209a cx:0x7f00a0808908
  6455 ms     | 0x209a EC_ValidatePublicKey()
  6455 ms     | 0x209a ret:0x0
  6455 ms  0x209a ret:0x7f00a079f020::7f00a079f020  20 be 60 a0                                       .`.
  6455 ms  0x209a SECKEY_CreateECPrivateKey()
  6455 ms  0x209a cx:0x7f00a0808908
  6456 ms     | 0x209a EC_ValidatePublicKey()
  6460 ms     | 0x209a ret:0x0
  6461 ms  0x209a ret:0x7f00a07b4020::7f00a07b4020  e0 dc 5f a0                                      .._.
  6584 ms  0x209a SSL_ImportFD()
  6585 ms  0x209a ret:0x7f00a06563d0
  6585 ms  0x209a SSL_AuthCertificateHook()
  6585 ms  0x209a fd:0x7f00a06563d0
  6585 ms  0x209a ret:0x0
  6585 ms  0x209a PR_Connect()
  6585 ms  0x209a fd:0x7f00a06563d0
  6595 ms  0x209a PK11_Derive()
  6595 ms  0x209a basekey:0x7f00bb67bc00
  6595 ms     | 0x209a PK11_DeriveWithTemplate()
  6595 ms  0x209a ret:0x7f00b33e5d00
  6595 ms  0x209a PK11_Encrypt()
  6595 ms  0x209a symkey:0x7f00bb67c000
  6596 ms  0x209a SECKEY_DestroyPrivateKey()
  6596 ms  0x209a privk:0x7f00a07b4020::7f00a07b4020  e0 dc 5f a0                                      .._.
  6596 ms  0x209a privk:0x7f00a07b4020::7f00a07b4020  e5 e5 e5 e5                                      ....
  6597 ms  0x209a SECKEY_DestroyPrivateKey()
  6597 ms  0x209a privk:0x7f00a079f020::7f00a079f020  20 be 60 a0                                       .`.
  6597 ms  0x209a privk:0x7f00a079f020::7f00a079f020  e5 e5 e5 e5                                      ....
  6598 ms  0x209a PK11_Encrypt()
  6598 ms  0x209a symkey:0x7f00bb67c000
  6644 ms  0x209a SECKEY_CreateECPrivateKey()
  6644 ms  0x209a cx:0x7f00a0808768
  6645 ms     | 0x209a EC_ValidatePublicKey()
  6645 ms     | 0x209a ret:0x0
  6645 ms  0x209a ret:0x7f00a079f020::7f00a079f020  f0 d6 5f a0                                      .._.
  6645 ms  0x209a SECKEY_CreateECPrivateKey()
  6645 ms  0x209a cx:0x7f00a0808768
  6647 ms     | 0x209a EC_ValidatePublicKey()
  6650 ms     | 0x209a ret:0x0
  6650 ms  0x209a ret:0x7f00a07b1020::7f00a07b1020  20 b4 60 a0                                       .`.
           /* TID 0x20fb */
  6718 ms  0x20fb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6719 ms  0x20fb ret:0x0
           /* TID 0x209a */
  6719 ms  SECKEY_ECParamsToKeySize()
  6719 ms  0x209a ret:0x100
  6719 ms  0x209a SECKEY_CreateECPrivateKey()
  6719 ms  0x209a cx:0x7f00a0808768
  6720 ms     | 0x209a EC_ValidatePublicKey()
  6722 ms     | 0x209a ret:0x0
  6722 ms  0x209a ret:0x7f00a0863820::7f00a0863820  00 8b 77 a0                                      ..w.
  6722 ms  0x209a PK11_PubDeriveWithKDF()
  6722 ms  0x209a seckey:0x7f00a0863820
  6722 ms     | 0x209a EC_ValidatePublicKey()
  6723 ms     | 0x209a ret:0x0
  6725 ms  0x209a ret:0x7f00bb67be00
  6725 ms  0x209a PK11_DeriveWithFlags()
  6725 ms  0x209a basekey:0x7f00bb67be00
  6725 ms     | 0x209a PK11_DeriveWithTemplate()
  6725 ms  0x209a ret:0x7f00a058f900
  6725 ms  0x209a PK11_Derive()
  6725 ms  0x209a basekey:0x7f00a058f900
  6725 ms     | 0x209a PK11_DeriveWithTemplate()
  6725 ms  0x209a ret:0x7f00a058fa00
  6725 ms  0x209a SECKEY_DestroyPrivateKey()
  6725 ms  0x209a privk:0x7f00a0863820::7f00a0863820  00 8b 77 a0                                      ..w.
  6725 ms  0x209a privk:0x7f00a0863820::7f00a0863820  e5 e5 e5 e5                                      ....
  6725 ms  0x209a PK11_Encrypt()
  6725 ms  0x209a symkey:0x7f00a05fea00
  6725 ms  0x209a SSL_AuthCertificateComplete()
  6725 ms  0x209a fd:0x7f00a06563d0
  6725 ms  0x209a err:0x0
  6726 ms  0x209a PK11_Encrypt()
  6726 ms  0x209a symkey:0x7f00a05fea00
  6726 ms  0x209a PK11_Encrypt()
  6726 ms  0x209a symkey:0x7f00a05fea00
  6785 ms  0x209a SECKEY_DestroyPrivateKey()
  6785 ms  0x209a privk:0x7f00a07b1020::7f00a07b1020  20 b4 60 a0                                       .`.
  6786 ms  0x209a privk:0x7f00a07b1020::7f00a07b1020  e5 e5 e5 e5                                      ....
  6786 ms  0x209a SECKEY_DestroyPrivateKey()
  6786 ms  0x209a privk:0x7f00a079f020::7f00a079f020  f0 d6 5f a0                                      .._.
  6786 ms  0x209a privk:0x7f00a079f020::7f00a079f020  e5 e5 e5 e5                                      ....
  6844 ms  0x209a PK11_Encrypt()
  6844 ms  0x209a symkey:0x7f00a05fea00
           /* TID 0x20a2 */
  6850 ms  0x20a2 PR_Close()
  6850 ms  0x20a2 fd:0x7f00a0656dc0
  7086 ms  0x20a2 PR_Close()
  7086 ms  0x20a2 fd:0x7f00b15902e0
           /* TID 0x209a */
  7256 ms  0x209a PK11_Encrypt()
  7256 ms  0x209a symkey:0x7f00a05fea00
  7256 ms  0x209a PK11_Encrypt()
  7256 ms  0x209a symkey:0x7f00a05fea00
  7257 ms  0x209a PK11_Encrypt()
  7257 ms  0x209a symkey:0x7f00a05fea00
  7257 ms  0x209a PK11_Encrypt()
  7257 ms  0x209a symkey:0x7f00a05fea00
  7257 ms  0x209a PK11_Encrypt()
  7257 ms  0x209a symkey:0x7f00a05fea00
  7258 ms  0x209a PK11_Encrypt()
  7258 ms  0x209a symkey:0x7f00a05fea00
  7258 ms  0x209a PK11_Encrypt()
  7258 ms  0x209a symkey:0x7f00a05fea00
  7258 ms  0x209a PK11_Encrypt()
  7258 ms  0x209a symkey:0x7f00a05fea00
  7259 ms  0x209a PK11_Encrypt()
  7259 ms  0x209a symkey:0x7f00a05fea00
  7259 ms  0x209a PK11_Encrypt()
  7259 ms  0x209a symkey:0x7f00a05fea00
  7259 ms  0x209a PK11_Encrypt()
  7259 ms  0x209a symkey:0x7f00a05fea00
  7259 ms  0x209a PK11_Encrypt()
  7259 ms  0x209a symkey:0x7f00a05fea00
  7260 ms  0x209a PK11_Encrypt()
  7260 ms  0x209a symkey:0x7f00a05fea00
  7260 ms  0x209a PK11_Encrypt()
  7260 ms  0x209a symkey:0x7f00a05fea00
  7262 ms  0x209a PK11_Encrypt()
  7262 ms  0x209a symkey:0x7f00a05fea00
  7262 ms  0x209a PK11_Encrypt()
  7262 ms  0x209a symkey:0x7f00a05fea00
  7263 ms  0x209a PK11_Encrypt()
  7263 ms  0x209a symkey:0x7f00a05fea00
  7263 ms  0x209a PK11_Encrypt()
  7263 ms  0x209a symkey:0x7f00a05fea00
  7263 ms  0x209a PK11_Encrypt()
  7263 ms  0x209a symkey:0x7f00a05fea00
  7263 ms  0x209a PK11_Encrypt()
  7263 ms  0x209a symkey:0x7f00a05fea00
  7263 ms  0x209a PK11_Encrypt()
  7263 ms  0x209a symkey:0x7f00a05fea00
  7263 ms  0x209a PK11_Encrypt()
  7263 ms  0x209a symkey:0x7f00a05fea00
  7263 ms  0x209a PK11_Encrypt()
  7263 ms  0x209a symkey:0x7f00a05fea00
  7343 ms  0x209a SSL_ImportFD()
  7343 ms  0x209a ret:0x7f00b18caf10
  7343 ms  0x209a SSL_AuthCertificateHook()
  7343 ms  0x209a fd:0x7f00b18caf10
  7343 ms  0x209a ret:0x0
  7343 ms  0x209a PR_Connect()
  7343 ms  0x209a fd:0x7f00b18caf10
           /* TID 0x20a2 */
  7347 ms  0x20a2 PR_Close()
  7347 ms  0x20a2 fd:0x7f00a077bca0
           /* TID 0x209a */
  7353 ms  0x209a PK11_Encrypt()
  7353 ms  0x209a symkey:0x7f00a05fea00
  7357 ms  0x209a PK11_Encrypt()
  7357 ms  0x209a symkey:0x7f00a05fea00
  7358 ms  0x209a PK11_Encrypt()
  7358 ms  0x209a symkey:0x7f00a05fea00
  7368 ms  0x209a PK11_Encrypt()
  7368 ms  0x209a symkey:0x7f00a05fea00
  7373 ms  0x209a PK11_Encrypt()
  7373 ms  0x209a symkey:0x7f00a05fea00
  7373 ms  0x209a PK11_Encrypt()
  7373 ms  0x209a symkey:0x7f00a05fea00
  7373 ms  0x209a PK11_Encrypt()
  7373 ms  0x209a symkey:0x7f00a05fea00
  7374 ms  0x209a PK11_Encrypt()
  7374 ms  0x209a symkey:0x7f00a05fea00
  7374 ms  0x209a PK11_Encrypt()
  7374 ms  0x209a symkey:0x7f00a05fea00
  7374 ms  0x209a PK11_Encrypt()
  7374 ms  0x209a symkey:0x7f00a05fea00
  7375 ms  0x209a PK11_Encrypt()
  7375 ms  0x209a symkey:0x7f00a05fea00
  7375 ms  0x209a PK11_Encrypt()
  7375 ms  0x209a symkey:0x7f00a05fea00
  7375 ms  0x209a PK11_Encrypt()
  7375 ms  0x209a symkey:0x7f00a05fea00
           /* TID 0x20a2 */
  7378 ms  0x20a2 PR_Close()
  7378 ms  0x20a2 fd:0x7f00b15908b0
           /* TID 0x209a */
  7382 ms  0x209a SECKEY_CreateECPrivateKey()
  7382 ms  0x209a cx:0x7f00a0809608
  7383 ms     | 0x209a EC_ValidatePublicKey()
  7383 ms     | 0x209a ret:0x0
  7383 ms  0x209a ret:0x7f00b1518020::7f00b1518020  70 44 8c b1                                      pD..
  7383 ms  0x209a SECKEY_CreateECPrivateKey()
  7383 ms  0x209a cx:0x7f00a0809608
  7384 ms     | 0x209a EC_ValidatePublicKey()
  7385 ms     | 0x209a ret:0x0
  7385 ms  0x209a ret:0x7f00b66ab020::7f00b66ab020  b0 4a 8c b1                                      .J..
           /* TID 0x20a2 */
  7387 ms  0x20a2 PR_Close()
  7387 ms  0x20a2 fd:0x7f00b18cab80
  7388 ms  0x20a2 PR_Close()
  7388 ms  0x20a2 fd:0x7f00b1590b20
  7391 ms  0x20a2 PR_Close()
  7391 ms  0x20a2 fd:0x7f00b1590b20
  7392 ms  0x20a2 PR_Close()
  7392 ms  0x20a2 fd:0x7f00b1590b20
  7393 ms  0x20a2 PR_Close()
  7393 ms  0x20a2 fd:0x7f00b1590880
  7396 ms  0x20a2 PR_Close()
  7396 ms  0x20a2 fd:0x7f00b1590880
  7398 ms  0x20a2 PR_Close()
  7398 ms  0x20a2 fd:0x7f00b1590880
           /* TID 0x209a */
  7406 ms  0x209a SSL_ImportFD()
  7406 ms  0x209a ret:0x7f00b1590d30
  7406 ms  0x209a SSL_AuthCertificateHook()
  7406 ms  0x209a fd:0x7f00b1590d30
  7406 ms  0x209a ret:0x0
  7407 ms  0x209a PK11_Encrypt()
  7407 ms  0x209a symkey:0x7f00a05fea00
  7407 ms  0x209a PR_Connect()
  7407 ms  0x209a fd:0x7f00b1590d30
  7419 ms  0x209a PK11_Encrypt()
  7419 ms  0x209a symkey:0x7f00bb67c000
  7425 ms  SECKEY_ECParamsToKeySize()
  7425 ms  0x209a ret:0x100
  7425 ms  0x209a SECKEY_CreateECPrivateKey()
  7425 ms  0x209a cx:0x7f00a0809608
  7425 ms     | 0x209a EC_ValidatePublicKey()
  7427 ms     | 0x209a ret:0x0
           /* TID 0x20fb */
  7427 ms  0x20fb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7427 ms  0x20fb ret:0x0
           /* TID 0x209a */
  7428 ms  0x209a ret:0x7f00b7834820::7f00b7834820  a0 c6 58 b1                                      ..X.
  7428 ms  0x209a PK11_PubDeriveWithKDF()
  7428 ms  0x209a seckey:0x7f00b7834820
  7429 ms     | 0x209a EC_ValidatePublicKey()
  7430 ms     | 0x209a ret:0x0
  7433 ms  0x209a ret:0x7f00bb67be00
  7433 ms  0x209a PK11_DeriveWithFlags()
  7433 ms  0x209a basekey:0x7f00bb67be00
  7433 ms     | 0x209a PK11_DeriveWithTemplate()
  7433 ms  0x209a ret:0x7f00b1570880
  7433 ms  0x209a PK11_Derive()
  7433 ms  0x209a basekey:0x7f00b1570880
  7433 ms     | 0x209a PK11_DeriveWithTemplate()
  7433 ms  0x209a ret:0x7f00b1589600
  7433 ms  0x209a SECKEY_DestroyPrivateKey()
  7433 ms  0x209a privk:0x7f00b7834820::7f00b7834820  a0 c6 58 b1                                      ..X.
  7433 ms  0x209a privk:0x7f00b7834820::7f00b7834820  e5 e5 e5 e5                                      ....
  7433 ms  0x209a PK11_Encrypt()
  7433 ms  0x209a symkey:0x7f00b4ab9f00
  7433 ms  0x209a SSL_AuthCertificateComplete()
  7433 ms  0x209a fd:0x7f00b18caf10
  7433 ms  0x209a err:0x0
  7434 ms  0x209a PK11_Encrypt()
  7434 ms  0x209a symkey:0x7f00b4ab9f00
  7434 ms  0x209a PK11_Encrypt()
  7434 ms  0x209a symkey:0x7f00b4ab9f00
           /* TID 0x20a2 */
  7448 ms  0x20a2 PR_Close()
  7448 ms  0x20a2 fd:0x7f00b15e2d00
  7452 ms  0x20a2 PR_Close()
  7452 ms  0x20a2 fd:0x7f00b15909d0
  7455 ms  0x20a2 PR_Close()
  7455 ms  0x20a2 fd:0x7f00b15909d0
  7457 ms  0x20a2 PR_Close()
  7457 ms  0x20a2 fd:0x7f00b15909d0
  7458 ms  0x20a2 PR_Close()
  7458 ms  0x20a2 fd:0x7f00b15909d0
  7460 ms  0x20a2 PR_Close()
  7460 ms  0x20a2 fd:0x7f00b15e2d60
  7461 ms  0x20a2 PR_Close()
  7461 ms  0x20a2 fd:0x7f00b15e2ee0
  7465 ms  0x20a2 PR_Close()
  7465 ms  0x20a2 fd:0x7f00b15e2d00
           /* TID 0x209a */
  7465 ms  0x209a SECKEY_CreateECPrivateKey()
  7465 ms  0x209a cx:0x7f00a08097a8
  7466 ms     | 0x209a EC_ValidatePublicKey()
  7466 ms     | 0x209a ret:0x0
  7466 ms  0x209a ret:0x7f00b1507820::7f00b1507820  f0 c6 58 b1                                      ..X.
  7466 ms  0x209a SECKEY_CreateECPrivateKey()
  7466 ms  0x209a cx:0x7f00a08097a8
  7470 ms     | 0x209a EC_ValidatePublicKey()
  7472 ms     | 0x209a ret:0x0
  7472 ms  0x209a ret:0x7f00b782c820::7f00b782c820  90 1c 57 b1                                      ..W.
           /* TID 0x20a2 */
  7474 ms  0x20a2 PR_Close()
  7474 ms  0x20a2 fd:0x7f00b15909d0
           /* TID 0x209a */
  7476 ms  0x209a SECKEY_DestroyPrivateKey()
  7476 ms  0x209a privk:0x7f00b66ab020::7f00b66ab020  b0 4a 8c b1                                      .J..
  7476 ms  0x209a privk:0x7f00b66ab020::7f00b66ab020  e5 e5 e5 e5                                      ....
  7476 ms  0x209a SECKEY_DestroyPrivateKey()
  7476 ms  0x209a privk:0x7f00b1518020::7f00b1518020  70 44 8c b1                                      pD..
  7476 ms  0x209a privk:0x7f00b1518020::7f00b1518020  e5 e5 e5 e5                                      ....
           /* TID 0x20a2 */
  7493 ms  0x20a2 PR_Close()
  7493 ms  0x20a2 fd:0x7f00b15909d0
  7501 ms  0x20a2 PR_Close()
  7501 ms  0x20a2 fd:0x7f00b15909d0
  7504 ms  0x20a2 PR_Close()
  7504 ms  0x20a2 fd:0x7f00b15909d0
  7505 ms  0x20a2 PR_Close()
  7505 ms  0x20a2 fd:0x7f00b15909d0
           /* TID 0x209a */
  7507 ms  0x209a PK11_Encrypt()
  7507 ms  0x209a symkey:0x7f00b4ab9f00
  7513 ms  0x209a SSL_ImportFD()
  7513 ms  0x209a ret:0x7f00b15e2ee0
  7513 ms  0x209a SSL_AuthCertificateHook()
  7513 ms  0x209a fd:0x7f00b15e2ee0
  7513 ms  0x209a ret:0x0
  7513 ms  0x209a PR_Connect()
  7513 ms  0x209a fd:0x7f00b15e2ee0
           /* TID 0x20a2 */
  7521 ms  0x20a2 PR_Close()
  7521 ms  0x20a2 fd:0x7f00b15909d0
  7523 ms  0x20a2 PR_Close()
  7523 ms  0x20a2 fd:0x7f00b15909d0
  7523 ms  0x20a2 PR_Close()
  7523 ms  0x20a2 fd:0x7f00b18caa90
  7527 ms  0x20a2 PR_Close()
  7527 ms  0x20a2 fd:0x7f00b15909d0
  7528 ms  0x20a2 PR_Close()
  7528 ms  0x20a2 fd:0x7f00b15e24c0
  7528 ms  0x20a2 PR_Close()
  7528 ms  0x20a2 fd:0x7f00b15e24c0
           /* TID 0x209a */
  7532 ms  SECKEY_ECParamsToKeySize()
  7532 ms  0x209a ret:0x100
  7532 ms  0x209a SECKEY_CreateECPrivateKey()
  7532 ms  0x209a cx:0x7f00a08097a8
  7533 ms     | 0x209a EC_ValidatePublicKey()
  7534 ms     | 0x209a ret:0x0
           /* TID 0x20fb */
  7535 ms  0x20fb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7535 ms  0x20fb ret:0x0
           /* TID 0x209a */
  7535 ms  0x209a ret:0x7f00b150b820::7f00b150b820  60 1f 57 b1                                      `.W.
  7535 ms  0x209a PK11_PubDeriveWithKDF()
  7535 ms  0x209a seckey:0x7f00b150b820
  7535 ms     | 0x209a EC_ValidatePublicKey()
  7537 ms     | 0x209a ret:0x0
  7542 ms  0x209a ret:0x7f00bb67be00
  7542 ms  0x209a PK11_DeriveWithFlags()
  7542 ms  0x209a basekey:0x7f00bb67be00
  7542 ms     | 0x209a PK11_DeriveWithTemplate()
  7542 ms  0x209a ret:0x7f00b4ab8480
  7542 ms  0x209a PK11_Derive()
  7542 ms  0x209a basekey:0x7f00b4ab8480
  7542 ms     | 0x209a PK11_DeriveWithTemplate()
  7542 ms  0x209a ret:0x7f00b4ab8680
  7542 ms  0x209a SECKEY_DestroyPrivateKey()
  7542 ms  0x209a privk:0x7f00b150b820::7f00b150b820  60 1f 57 b1                                      `.W.
  7542 ms  0x209a privk:0x7f00b150b820::7f00b150b820  e5 e5 e5 e5                                      ....
  7543 ms  0x209a PK11_Encrypt()
  7543 ms  0x209a symkey:0x7f00b4acc180
  7544 ms  0x209a SSL_AuthCertificateComplete()
  7544 ms  0x209a fd:0x7f00b1590d30
  7544 ms  0x209a err:0x0
           /* TID 0x20a2 */
  7545 ms  0x20a2 PR_Close()
  7545 ms  0x20a2 fd:0x7f00b15e2880
  7548 ms  0x20a2 PR_Close()
  7548 ms  0x20a2 fd:0x7f00b18db430
           /* TID 0x209a */
  7549 ms  0x209a SECKEY_CreateECPrivateKey()
  7549 ms  0x209a cx:0x7f00a0809ae8
  7550 ms     | 0x209a EC_ValidatePublicKey()
  7550 ms     | 0x209a ret:0x0
  7550 ms  0x209a ret:0x7f00b150c020::7f00b150c020  20 c4 58 b1                                       .X.
  7550 ms  0x209a SECKEY_CreateECPrivateKey()
  7550 ms  0x209a cx:0x7f00a0809ae8
  7551 ms     | 0x209a EC_ValidatePublicKey()
  7556 ms     | 0x209a ret:0x0
  7557 ms  0x209a ret:0x7f00b150f020::7f00b150f020  10 ca 58 b1                                      ..X.
           /* TID 0x20a2 */
  7559 ms  0x20a2 PR_Close()
  7559 ms  0x20a2 fd:0x7f00b1590430
  7560 ms  0x20a2 PR_Close()
  7560 ms  0x20a2 fd:0x7f00b1590430
  7562 ms  0x20a2 PR_Close()
  7562 ms  0x20a2 fd:0x7f00b1590430
  7563 ms  0x20a2 PR_Close()
  7563 ms  0x20a2 fd:0x7f00b1590430
  7564 ms  0x20a2 PR_Close()
  7564 ms  0x20a2 fd:0x7f00b1590430
  7565 ms  0x20a2 PR_Close()
  7565 ms  0x20a2 fd:0x7f00b1590430
  7571 ms  0x20a2 PR_Close()
  7571 ms  0x20a2 fd:0x7f00a077bca0
  7576 ms  0x20a2 PR_Close()
  7576 ms  0x20a2 fd:0x7f00a077b6d0
           /* TID 0x209a */
  7602 ms  0x209a SECKEY_DestroyPrivateKey()
  7602 ms  0x209a privk:0x7f00b782c820::7f00b782c820  90 1c 57 b1                                      ..W.
  7602 ms  0x209a privk:0x7f00b782c820::7f00b782c820  e5 e5 e5 e5                                      ....
  7602 ms  0x209a SECKEY_DestroyPrivateKey()
  7602 ms  0x209a privk:0x7f00b1507820::7f00b1507820  f0 c6 58 b1                                      ..X.
  7602 ms  0x209a privk:0x7f00b1507820::7f00b1507820  e5 e5 e5 e5                                      ....
  7608 ms  SECKEY_ECParamsToKeySize()
  7608 ms  0x209a ret:0x100
  7608 ms  0x209a SECKEY_CreateECPrivateKey()
  7608 ms  0x209a cx:0x7f00a0809ae8
  7609 ms     | 0x209a EC_ValidatePublicKey()
  7610 ms     | 0x209a ret:0x0
  7610 ms  0x209a ret:0x7f00b66a9820::7f00b66a9820  10 c5 58 b1                                      ..X.
  7611 ms  0x209a PK11_PubDeriveWithKDF()
  7611 ms  0x209a seckey:0x7f00b66a9820
           /* TID 0x20fb */
  7611 ms  0x20fb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7611 ms  0x20fb ret:0x0
  7611 ms  0x20fb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7611 ms  0x20fb ret:0x0
           /* TID 0x209a */
  7612 ms     | 0x209a EC_ValidatePublicKey()
  7614 ms     | 0x209a ret:0x0
  7617 ms  0x209a ret:0x7f00bb67be00
  7617 ms  0x209a PK11_DeriveWithFlags()
  7617 ms  0x209a basekey:0x7f00bb67be00
  7617 ms     | 0x209a PK11_DeriveWithTemplate()
  7617 ms  0x209a ret:0x7f00b2ef3200
  7617 ms  0x209a PK11_Derive()
  7617 ms  0x209a basekey:0x7f00b2ef3200
  7617 ms     | 0x209a PK11_DeriveWithTemplate()
  7617 ms  0x209a ret:0x7f00b37eee00
  7617 ms  0x209a SECKEY_DestroyPrivateKey()
  7617 ms  0x209a privk:0x7f00b66a9820::7f00b66a9820  10 c5 58 b1                                      ..X.
  7617 ms  0x209a privk:0x7f00b66a9820::7f00b66a9820  e5 e5 e5 e5                                      ....
  7617 ms  0x209a PK11_Encrypt()
  7617 ms  0x209a symkey:0x7f00b3c7f900
  7617 ms  0x209a SSL_AuthCertificateComplete()
  7617 ms  0x209a fd:0x7f00b15e2ee0
  7617 ms  0x209a err:0x0
  7617 ms  0x209a PK11_Encrypt()
  7617 ms  0x209a symkey:0x7f00b3c7f900
           /* TID 0x20a2 */
  7654 ms  0x20a2 PR_Close()
  7654 ms  0x20a2 fd:0x7f00b18dbf10
           /* TID 0x209a */
  7669 ms  0x209a SECKEY_DestroyPrivateKey()
  7669 ms  0x209a privk:0x7f00b150f020::7f00b150f020  10 ca 58 b1                                      ..X.
  7669 ms  0x209a privk:0x7f00b150f020::7f00b150f020  e5 e5 e5 e5                                      ....
  7669 ms  0x209a SECKEY_DestroyPrivateKey()
  7669 ms  0x209a privk:0x7f00b150c020::7f00b150c020  20 c4 58 b1                                       .X.
  7669 ms  0x209a privk:0x7f00b150c020::7f00b150c020  e5 e5 e5 e5                                      ....
           /* TID 0x20a2 */
  7733 ms  0x20a2 PR_Close()
  7733 ms  0x20a2 fd:0x7f00b15a20d0
  7736 ms  0x20a2 PR_Close()
  7736 ms  0x20a2 fd:0x7f00b15a20d0
           /* TID 0x209a */
  7809 ms  0x209a PK11_Encrypt()
  7809 ms  0x209a symkey:0x7f00a05fea00
  7837 ms  0x209a PK11_Encrypt()
  7837 ms  0x209a symkey:0x7f00bb67c000
  7859 ms  0x209a SSL_ImportFD()
  7859 ms  0x209a ret:0x7f00b2cd7a60
  7859 ms  0x209a SSL_AuthCertificateHook()
  7859 ms  0x209a fd:0x7f00b2cd7a60
  7859 ms  0x209a ret:0x0
  7859 ms  0x209a PR_Connect()
  7859 ms  0x209a fd:0x7f00b2cd7a60
           /* TID 0x20a2 */
  7872 ms  0x20a2 PR_Close()
  7872 ms  0x20a2 fd:0x7f00b18db3d0
           /* TID 0x209a */
  7876 ms  0x209a SSL_ImportFD()
  7876 ms  0x209a ret:0x7f00b2836ca0
  7876 ms  0x209a SSL_AuthCertificateHook()
  7876 ms  0x209a fd:0x7f00b2836ca0
  7876 ms  0x209a ret:0x0
  7877 ms  0x209a PR_Connect()
  7877 ms  0x209a fd:0x7f00b2836ca0
  7885 ms  0x209a SSL_ImportFD()
  7885 ms  0x209a ret:0x7f00b2836dc0
  7885 ms  0x209a SSL_AuthCertificateHook()
  7885 ms  0x209a fd:0x7f00b2836dc0
  7885 ms  0x209a ret:0x0
  7885 ms  0x209a PR_Connect()
  7885 ms  0x209a fd:0x7f00b2836dc0
  7897 ms  0x209a SECKEY_CreateECPrivateKey()
  7897 ms  0x209a cx:0x7f00a0809fc8
  7897 ms     | 0x209a EC_ValidatePublicKey()
  7897 ms     | 0x209a ret:0x0
  7897 ms  0x209a ret:0x7f00b150f020::7f00b150f020  00 41 8c b1                                      .A..
  7898 ms  0x209a SECKEY_CreateECPrivateKey()
  7898 ms  0x209a cx:0x7f00a0809fc8
  7898 ms     | 0x209a EC_ValidatePublicKey()
  7901 ms     | 0x209a ret:0x0
  7901 ms  0x209a ret:0x7f00b7834020::7f00b7834020  30 43 8c b1                                      0C..
  7912 ms  0x209a SECKEY_CreateECPrivateKey()
  7912 ms  0x209a cx:0x7f00a080a308
  7913 ms     | 0x209a EC_ValidatePublicKey()
  7913 ms     | 0x209a ret:0x0
  7913 ms  0x209a ret:0x7f00b7839020::7f00b7839020  70 44 8c b1                                      pD..
  7913 ms  0x209a SECKEY_CreateECPrivateKey()
  7913 ms  0x209a cx:0x7f00a080a308
  7914 ms     | 0x209a EC_ValidatePublicKey()
  7916 ms     | 0x209a ret:0x0
  7916 ms  0x209a ret:0x7f00b783e820::7f00b783e820  40 47 8c b1                                      @G..
  7935 ms  0x209a SECKEY_CreateECPrivateKey()
  7935 ms  0x209a cx:0x7f00a080a168
  7936 ms     | 0x209a EC_ValidatePublicKey()
  7936 ms     | 0x209a ret:0x0
  7936 ms  0x209a ret:0x7f00b7c72820::7f00b7c72820  d0 48 8c b1                                      .H..
  7936 ms  0x209a SECKEY_CreateECPrivateKey()
  7936 ms  0x209a cx:0x7f00a080a168
  7937 ms     | 0x209a EC_ValidatePublicKey()
  7939 ms     | 0x209a ret:0x0
  7939 ms  0x209a ret:0x7f00b7c75020::7f00b7c75020  b0 4a 8c b1                                      .J..
           /* TID 0x20fb */
  7953 ms  0x20fb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7953 ms  0x20fb ret:0x0
  7953 ms  0x20fb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7953 ms  0x20fb ret:0x0
           /* TID 0x209a */
  7954 ms  0x209a SSL_AuthCertificateComplete()
  7954 ms  0x209a fd:0x7f00b2836dc0
  7954 ms  0x209a err:0x0
  7956 ms  0x209a PK11_Derive()
  7956 ms  0x209a basekey:0x7f00bb67be00
  7956 ms     | 0x209a PK11_DeriveWithTemplate()
  7956 ms  0x209a ret:0x7f00b79deb80
  7956 ms  0x209a PK11_PubDeriveWithKDF()
  7956 ms  0x209a seckey:0x7f00b150f020
  7956 ms     | 0x209a EC_ValidatePublicKey()
  7957 ms     | 0x209a ret:0x0
  7957 ms  0x209a ret:0x7f00bb67be00
  7957 ms  SECKEY_ECParamsToKeySize()
  7957 ms  0x209a ret:0xff
  7957 ms  0x209a PK11_DeriveWithFlags()
  7957 ms  0x209a basekey:0x7f00b79deb80
  7957 ms     | 0x209a PK11_DeriveWithTemplate()
  7957 ms  0x209a ret:0x7f00b79e1300
  7957 ms  0x209a PK11_Derive()
  7957 ms  0x209a basekey:0x7f00bb67be00
  7957 ms     | 0x209a PK11_DeriveWithTemplate()
  7957 ms  0x209a ret:0x7f00b79e1380
  7957 ms  0x209a PK11_DeriveWithFlags()
  7957 ms  0x209a basekey:0x7f00b79e1380
  7957 ms     | 0x209a PK11_DeriveWithTemplate()
  7957 ms  0x209a ret:0x7f00b79deb80
  7957 ms  0x209a PK11_DeriveWithFlags()
  7957 ms  0x209a basekey:0x7f00b79e1380
  7957 ms     | 0x209a PK11_DeriveWithTemplate()
  7957 ms  0x209a ret:0x7f00bb67be00
  7958 ms  0x209a PK11_DeriveWithFlags()
  7958 ms  0x209a basekey:0x7f00b79e1380
  7958 ms     | 0x209a PK11_DeriveWithTemplate()
  7958 ms  0x209a ret:0x7f00b79e1300
  7958 ms  0x209a PK11_Derive()
  7958 ms  0x209a basekey:0x7f00b79e1400
  7958 ms     | 0x209a PK11_DeriveWithTemplate()
  7958 ms  0x209a ret:0x7f00b79e1480
  7958 ms  0x209a PK11_DeriveWithFlags()
  7958 ms  0x209a basekey:0x7f00bb67be00
  7958 ms     | 0x209a PK11_DeriveWithTemplate()
  7958 ms  0x209a ret:0x7f00b79e1380
  7958 ms  0x209a PK11_DeriveWithFlags()
  7958 ms  0x209a basekey:0x7f00bb67be00
  7958 ms     | 0x209a PK11_DeriveWithTemplate()
  7958 ms  0x209a ret:0x7f00b79e1300
  7961 ms  0x209a PK11_DeriveWithFlags()
  7961 ms  0x209a basekey:0x7f00bb67be00
  7961 ms     | 0x209a PK11_DeriveWithTemplate()
  7961 ms  0x209a ret:0x7f00b79e1300
  7962 ms  0x209a PR_Connect()
  7962 ms  0x209a fd:0x7f00b2ef5be0
  7977 ms  SECKEY_ECParamsToKeySize()
  7977 ms  0x209a ret:0x100
  7977 ms  0x209a SECKEY_CreateECPrivateKey()
  7977 ms  0x209a cx:0x7f00a080a308
  7978 ms     | 0x209a EC_ValidatePublicKey()
  7980 ms     | 0x209a ret:0x0
  7980 ms  0x209a ret:0x7f00b808f820::7f00b808f820  10 d5 b9 b1                                      ....
  7980 ms  0x209a PK11_PubDeriveWithKDF()
  7980 ms  0x209a seckey:0x7f00b808f820
  7980 ms     | 0x209a EC_ValidatePublicKey()
  7982 ms     | 0x209a ret:0x0
  7988 ms  0x209a ret:0x7f00b79e1300
  7988 ms  0x209a PK11_DeriveWithFlags()
  7988 ms  0x209a basekey:0x7f00b79e1300
  7988 ms     | 0x209a PK11_DeriveWithTemplate()
  7988 ms  0x209a ret:0x7f00b79e1400
  7988 ms  0x209a PK11_Derive()
  7988 ms  0x209a basekey:0x7f00b79e1400
  7988 ms     | 0x209a PK11_DeriveWithTemplate()
  7988 ms  0x209a ret:0x7f00b79e1b00
  7988 ms  0x209a SECKEY_DestroyPrivateKey()
  7988 ms  0x209a privk:0x7f00b808f820::7f00b808f820  10 d5 b9 b1                                      ....
  7989 ms  0x209a privk:0x7f00b808f820::7f00b808f820  e5 e5 e5 e5                                      ....
  7989 ms  0x209a PK11_Encrypt()
  7989 ms  0x209a symkey:0x7f00b79e1f80
           /* TID 0x20a2 */
  7991 ms  0x20a2 PR_Close()
  7991 ms  0x20a2 fd:0x7f00b28873d0
           /* TID 0x209a */
  7994 ms  0x209a PK11_Encrypt()
  7994 ms  0x209a symkey:0x7f00b79e1f80
  7994 ms  0x209a SSL_ImportFD()
  7994 ms  0x209a ret:0x7f00b2cd72e0
  7994 ms  0x209a SSL_AuthCertificateHook()
  7994 ms  0x209a fd:0x7f00b2cd72e0
  7994 ms  0x209a ret:0x0
  7995 ms  0x209a PR_Connect()
  7995 ms  0x209a fd:0x7f00b2cd72e0
  7999 ms  SECKEY_ECParamsToKeySize()
  7999 ms  0x209a ret:0x100
  7999 ms  0x209a SECKEY_CreateECPrivateKey()
  7999 ms  0x209a cx:0x7f00a080a168
  8000 ms     | 0x209a EC_ValidatePublicKey()
  8002 ms     | 0x209a ret:0x0
  8002 ms  0x209a ret:0x7f00b8094020::7f00b8094020  b0 d5 db b1                                      ....
  8002 ms  0x209a PK11_PubDeriveWithKDF()
  8002 ms  0x209a seckey:0x7f00b8094020
  8002 ms     | 0x209a EC_ValidatePublicKey()
  8004 ms     | 0x209a ret:0x0
  8007 ms  0x209a ret:0x7f00b79e1300
  8007 ms  0x209a PK11_DeriveWithFlags()
  8007 ms  0x209a basekey:0x7f00b79e1300
  8007 ms     | 0x209a PK11_DeriveWithTemplate()
  8007 ms  0x209a ret:0x7f00b79e2480
  8007 ms  0x209a PK11_Derive()
  8007 ms  0x209a basekey:0x7f00b79e2480
  8007 ms     | 0x209a PK11_DeriveWithTemplate()
  8007 ms  0x209a ret:0x7f00b79e2580
  8007 ms  0x209a SECKEY_DestroyPrivateKey()
  8007 ms  0x209a privk:0x7f00b8094020::7f00b8094020  b0 d5 db b1                                      ....
  8008 ms  0x209a privk:0x7f00b8094020::7f00b8094020  e5 e5 e5 e5                                      ....
  8008 ms  0x209a PK11_Encrypt()
  8008 ms  0x209a symkey:0x7f00b79e2800
  8032 ms  0x209a SECKEY_CreateECPrivateKey()
  8032 ms  0x209a cx:0x7f00a080a7e8
  8032 ms     | 0x209a EC_ValidatePublicKey()
  8032 ms     | 0x209a ret:0x0
  8032 ms  0x209a ret:0x7f00b8094020::7f00b8094020  40 d7 b9 b1                                      @...
  8032 ms  0x209a SECKEY_CreateECPrivateKey()
  8032 ms  0x209a cx:0x7f00a080a7e8
  8033 ms     | 0x209a EC_ValidatePublicKey()
  8034 ms     | 0x209a ret:0x0
  8034 ms  0x209a ret:0x7f00b8098020::7f00b8098020  a0 5b de b1                                      .[..
           /* TID 0x213c */
  8035 ms  0x213c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8035 ms  0x213c ret:0x0
           /* TID 0x20a2 */
  8035 ms  0x20a2 PR_Close()
  8035 ms  0x20a2 fd:0x7f00b2ef5040
           /* TID 0x209a */
  8036 ms  0x209a SSL_AuthCertificateComplete()
  8036 ms  0x209a fd:0x7f00b2836ca0
  8036 ms  0x209a err:0x0
  8036 ms  0x209a PK11_Encrypt()
  8036 ms  0x209a symkey:0x7f00b79e2800
  8066 ms  0x209a SECKEY_DestroyPrivateKey()
  8066 ms  0x209a privk:0x7f00b7c75020::7f00b7c75020  b0 4a 8c b1                                      .J..
  8066 ms  0x209a privk:0x7f00b7c75020::7f00b7c75020  e5 e5 e5 e5                                      ....
  8066 ms  0x209a SECKEY_DestroyPrivateKey()
  8066 ms  0x209a privk:0x7f00b7c72820::7f00b7c72820  d0 48 8c b1                                      .H..
  8066 ms  0x209a privk:0x7f00b7c72820::7f00b7c72820  e5 e5 e5 e5                                      ....
           /* TID 0x213c */
  8074 ms  0x213c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8074 ms  0x213c ret:0x0
           /* TID 0x209a */
  8074 ms  SECKEY_ECParamsToKeySize()
  8074 ms  0x209a ret:0x100
  8074 ms  0x209a SECKEY_CreateECPrivateKey()
  8074 ms  0x209a cx:0x7f00a080a7e8
  8075 ms     | 0x209a EC_ValidatePublicKey()
  8077 ms     | 0x209a ret:0x0
  8077 ms  0x209a ret:0x7f00b8095020::7f00b8095020  30 58 de b1                                      0X..
  8077 ms  0x209a PK11_PubDeriveWithKDF()
  8077 ms  0x209a seckey:0x7f00b8095020
  8077 ms     | 0x209a EC_ValidatePublicKey()
  8079 ms     | 0x209a ret:0x0
  8081 ms  0x209a ret:0x7f00b79e1300
  8081 ms  0x209a PK11_DeriveWithFlags()
  8081 ms  0x209a basekey:0x7f00b79e1300
  8081 ms     | 0x209a PK11_DeriveWithTemplate()
  8081 ms  0x209a ret:0x7f00b79e2380
  8081 ms  0x209a PK11_Derive()
  8081 ms  0x209a basekey:0x7f00b79e2380
  8081 ms     | 0x209a PK11_DeriveWithTemplate()
  8081 ms  0x209a ret:0x7f00b79e2400
  8081 ms  0x209a SECKEY_DestroyPrivateKey()
  8081 ms  0x209a privk:0x7f00b8095020::7f00b8095020  30 58 de b1                                      0X..
  8082 ms  0x209a privk:0x7f00b8095020::7f00b8095020  e5 e5 e5 e5                                      ....
  8082 ms  0x209a PK11_Encrypt()
  8082 ms  0x209a symkey:0x7f00b79e2b00
  8082 ms  0x209a SSL_AuthCertificateComplete()
  8082 ms  0x209a fd:0x7f00b2cd72e0
  8082 ms  0x209a err:0x0
  8082 ms  0x209a SECKEY_DestroyPrivateKey()
  8082 ms  0x209a privk:0x7f00b783e820::7f00b783e820  40 47 8c b1                                      @G..
  8082 ms  0x209a privk:0x7f00b783e820::7f00b783e820  e5 e5 e5 e5                                      ....
  8082 ms  0x209a SECKEY_DestroyPrivateKey()
  8082 ms  0x209a privk:0x7f00b7839020::7f00b7839020  70 44 8c b1                                      pD..
  8082 ms  0x209a privk:0x7f00b7839020::7f00b7839020  e5 e5 e5 e5                                      ....
  8083 ms  0x209a PK11_Encrypt()
  8083 ms  0x209a symkey:0x7f00b79e2b00
  8101 ms  0x209a SSL_ImportFD()
  8101 ms  0x209a ret:0x7f00b2836a00
  8101 ms  0x209a SSL_AuthCertificateHook()
  8101 ms  0x209a fd:0x7f00b2836a00
  8101 ms  0x209a ret:0x0
  8101 ms  0x209a PR_Connect()
  8101 ms  0x209a fd:0x7f00b2836a00
  8119 ms  0x209a SECKEY_DestroyPrivateKey()
  8119 ms  0x209a privk:0x7f00b8098020::7f00b8098020  a0 5b de b1                                      .[..
  8119 ms  0x209a privk:0x7f00b8098020::7f00b8098020  e5 e5 e5 e5                                      ....
  8119 ms  0x209a SECKEY_DestroyPrivateKey()
  8119 ms  0x209a privk:0x7f00b8094020::7f00b8094020  40 d7 b9 b1                                      @...
  8119 ms  0x209a privk:0x7f00b8094020::7f00b8094020  e5 e5 e5 e5                                      ....
  8129 ms  0x209a PK11_Encrypt()
  8129 ms  0x209a symkey:0x7f00b79e2800
           /* TID 0x20a2 */
  8153 ms  0x20a2 PR_Close()
  8153 ms  0x20a2 fd:0x7f00b2836310
           /* TID 0x20fb */
  8153 ms  0x20fb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8154 ms  0x20fb ret:0x0
           /* TID 0x209a */
  8162 ms  0x209a SECKEY_CreateECPrivateKey()
  8162 ms  0x209a cx:0x7f00a080acc8
           /* TID 0x20a2 */
  8164 ms  0x20a2 PR_Close()
  8164 ms  0x20a2 fd:0x7f00b1dea670
           /* TID 0x209a */
  8170 ms     | 0x209a EC_ValidatePublicKey()
  8170 ms     | 0x209a ret:0x0
  8171 ms  0x209a ret:0x7f00b783d020::7f00b783d020  20 44 8c b1                                       D..
  8171 ms  0x209a SECKEY_CreateECPrivateKey()
  8171 ms  0x209a cx:0x7f00a080acc8
  8172 ms     | 0x209a EC_ValidatePublicKey()
  8187 ms     | 0x209a ret:0x0
  8188 ms  0x209a ret:0x7f00b8085020::7f00b8085020  80 48 8c b1                                      .H..
  8188 ms  0x209a SSL_AuthCertificateComplete()
  8188 ms  0x209a fd:0x7f00b2cd7a60
  8188 ms  0x209a err:0x0
  8188 ms     | 0x209a PK11_DeriveWithFlags()
  8188 ms     | 0x209a basekey:0x7f00b79e1480
  8188 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8188 ms     | 0x209a ret:0x7f00b79e1300
  8188 ms     | 0x209a PK11_DeriveWithFlags()
  8188 ms     | 0x209a basekey:0x7f00b79e1480
  8188 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8188 ms     | 0x209a ret:0x7f00b796a700
  8188 ms     | 0x209a PK11_DeriveWithFlags()
  8188 ms     | 0x209a basekey:0x7f00b79e1480
  8188 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8188 ms     | 0x209a ret:0x7f00b79e1780
  8188 ms     | 0x209a PK11_DeriveWithFlags()
  8188 ms     | 0x209a basekey:0x7f00b79deb80
  8188 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8188 ms     | 0x209a ret:0x7f00b79e1800
  8188 ms     | 0x209a PK11_DeriveWithFlags()
  8188 ms     | 0x209a basekey:0x7f00b79deb80
  8188 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8188 ms     | 0x209a ret:0x7f00b7cfaa00
  8188 ms     | 0x209a PK11_DeriveWithFlags()
  8188 ms     | 0x209a basekey:0x7f00b796a700
  8188 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8189 ms     | 0x209a ret:0x7f00b7cfaa00
  8189 ms     | 0x209a PK11_DeriveWithFlags()
  8189 ms     | 0x209a basekey:0x7f00b796a700
  8189 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8189 ms     | 0x209a ret:0x7f00b7cfab00
  8189 ms     | 0x209a PK11_DeriveWithFlags()
  8189 ms     | 0x209a basekey:0x7f00b79deb80
  8189 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8189 ms     | 0x209a ret:0x7f00b79e1380
  8189 ms     | 0x209a PK11_Encrypt()
  8189 ms     | 0x209a symkey:0x7f00b79e1800
  8189 ms     | 0x209a PK11_DeriveWithFlags()
  8189 ms     | 0x209a basekey:0x7f00b79e1300
  8189 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8189 ms     | 0x209a ret:0x7f00b79e1380
  8189 ms     | 0x209a PK11_DeriveWithFlags()
  8189 ms     | 0x209a basekey:0x7f00b79e1300
  8189 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8189 ms     | 0x209a ret:0x7f00b7cfab00
  8189 ms     | 0x209a PK11_DeriveWithFlags()
  8189 ms     | 0x209a basekey:0x7f00b79e1480
  8189 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8189 ms     | 0x209a ret:0x7f00b79e1800
  8189 ms     | 0x209a SECKEY_DestroyPrivateKey()
  8189 ms     | 0x209a privk:0x7f00b7834020::7f00b7834020  30 43 8c b1                                      0C..
  8189 ms     | 0x209a privk:0x7f00b7834020::7f00b7834020  e5 e5 e5 e5                                      ....
  8189 ms     | 0x209a SECKEY_DestroyPrivateKey()
  8189 ms     | 0x209a privk:0x7f00b150f020::7f00b150f020  00 41 8c b1                                      .A..
  8189 ms     | 0x209a privk:0x7f00b150f020::7f00b150f020  e5 e5 e5 e5                                      ....
  8192 ms  0x209a PK11_Encrypt()
  8192 ms  0x209a symkey:0x7f00b79e1380
  8193 ms  0x209a PK11_Encrypt()
  8193 ms  0x209a symkey:0x7f00b79e1380
  8205 ms  0x209a PK11_Encrypt()
  8205 ms  0x209a symkey:0x7f00b4ab9f00
  8227 ms  0x209a PK11_DeriveWithFlags()
  8227 ms  0x209a basekey:0x7f00b79e1800
  8227 ms     | 0x209a PK11_DeriveWithTemplate()
  8227 ms  0x209a ret:0x7f00bb67be00
  8227 ms  0x209a PK11_DeriveWithFlags()
  8227 ms  0x209a basekey:0x7f00b79e1800
  8227 ms     | 0x209a PK11_DeriveWithTemplate()
  8227 ms  0x209a ret:0x7f00bb67be00
  8227 ms  0x209a PK11_Encrypt()
  8227 ms  0x209a symkey:0x7f00b79e1380
  8242 ms  SECKEY_ECParamsToKeySize()
  8242 ms  0x209a ret:0x100
  8242 ms  0x209a SECKEY_CreateECPrivateKey()
  8242 ms  0x209a cx:0x7f00a080acc8
  8243 ms     | 0x209a EC_ValidatePublicKey()
  8244 ms     | 0x209a ret:0x0
  8244 ms  0x209a ret:0x7f00b8097020::7f00b8097020  a0 61 8d b1                                      .a..
  8244 ms  0x209a PK11_PubDeriveWithKDF()
  8244 ms  0x209a seckey:0x7f00b8097020
  8244 ms     | 0x209a EC_ValidatePublicKey()
  8247 ms     | 0x209a ret:0x0
  8249 ms  0x209a ret:0x7f00bb67be00
  8249 ms  0x209a PK11_DeriveWithFlags()
  8249 ms  0x209a basekey:0x7f00bb67be00
  8249 ms     | 0x209a PK11_DeriveWithTemplate()
  8249 ms  0x209a ret:0x7f00b79deb80
  8249 ms  0x209a PK11_Derive()
  8249 ms  0x209a basekey:0x7f00b79deb80
  8249 ms     | 0x209a PK11_DeriveWithTemplate()
  8249 ms  0x209a ret:0x7f00b79e1480
  8249 ms  0x209a SECKEY_DestroyPrivateKey()
  8249 ms  0x209a privk:0x7f00b8097020::7f00b8097020  a0 61 8d b1                                      .a..
  8249 ms  0x209a privk:0x7f00b8097020::7f00b8097020  e5 e5 e5 e5                                      ....
  8249 ms  0x209a PK11_Encrypt()
  8249 ms  0x209a symkey:0x7f00b7eb8f00
           /* TID 0x20a2 */
  8250 ms  0x20a2 PR_Close()
  8250 ms  0x20a2 fd:0x7f00b2ef5c70
  8275 ms  0x20a2 PR_Close()
  8275 ms  0x20a2 fd:0x7f00b2cd7160
           /* TID 0x213c */
  8275 ms  0x213c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8276 ms  0x213c ret:0x0
           /* TID 0x209a */
  8276 ms  0x209a SSL_AuthCertificateComplete()
  8276 ms  0x209a fd:0x7f00b2836a00
  8276 ms  0x209a err:0x0
  8276 ms  0x209a PK11_Encrypt()
  8276 ms  0x209a symkey:0x7f00b7eb8f00
           /* TID 0x20a2 */
  8295 ms  0x20a2 PR_Close()
  8295 ms  0x20a2 fd:0x7f00b30e1a60
           /* TID 0x209a */
  8296 ms  0x209a PK11_Encrypt()
  8296 ms  0x209a symkey:0x7f00b79e1380
           /* TID 0x20a2 */
  8296 ms  0x20a2 PR_Close()
  8296 ms  0x20a2 fd:0x7f00b2ef5fd0
           /* TID 0x209a */
  8301 ms  0x209a SECKEY_DestroyPrivateKey()
  8301 ms  0x209a privk:0x7f00b8085020::7f00b8085020  80 48 8c b1                                      .H..
  8301 ms  0x209a privk:0x7f00b8085020::7f00b8085020  e5 e5 e5 e5                                      ....
  8301 ms  0x209a SECKEY_DestroyPrivateKey()
  8301 ms  0x209a privk:0x7f00b783d020::7f00b783d020  20 44 8c b1                                       D..
  8301 ms  0x209a privk:0x7f00b783d020::7f00b783d020  e5 e5 e5 e5                                      ....
  8315 ms  0x209a PK11_Encrypt()
  8315 ms  0x209a symkey:0x7f00a05fea00
  8315 ms  0x209a PK11_Encrypt()
  8315 ms  0x209a symkey:0x7f00a05fea00
  8315 ms  0x209a PK11_Encrypt()
  8315 ms  0x209a symkey:0x7f00a05fea00
  8316 ms  0x209a PK11_Encrypt()
  8316 ms  0x209a symkey:0x7f00a05fea00
  8316 ms  0x209a PK11_Encrypt()
  8316 ms  0x209a symkey:0x7f00a05fea00
  8316 ms  0x209a SSL_ImportFD()
  8316 ms  0x209a ret:0x7f00b33547f0
  8316 ms  0x209a SSL_AuthCertificateHook()
  8316 ms  0x209a fd:0x7f00b33547f0
  8316 ms  0x209a ret:0x0
  8316 ms  0x209a PR_Connect()
  8316 ms  0x209a fd:0x7f00b33547f0
  8316 ms  0x209a PK11_Encrypt()
  8316 ms  0x209a symkey:0x7f00a05fea00
  8321 ms  0x209a PK11_Encrypt()
  8321 ms  0x209a symkey:0x7f00a05fea00
  8324 ms  0x209a PK11_Encrypt()
  8324 ms  0x209a symkey:0x7f00a05fea00
  8327 ms  0x209a PK11_Encrypt()
  8327 ms  0x209a symkey:0x7f00a05fea00
  8328 ms  0x209a PK11_Encrypt()
  8328 ms  0x209a symkey:0x7f00a05fea00
  8332 ms  0x209a PK11_Encrypt()
  8332 ms  0x209a symkey:0x7f00a05fea00
           /* TID 0x20a2 */
  8355 ms  0x20a2 PR_Close()
  8355 ms  0x20a2 fd:0x7f00b1dea130
           /* TID 0x209a */
  8374 ms  0x209a SECKEY_CreateECPrivateKey()
  8374 ms  0x209a cx:0x7f00b18cee68
  8374 ms     | 0x209a EC_ValidatePublicKey()
  8374 ms     | 0x209a ret:0x0
  8374 ms  0x209a ret:0x7f00b80a0820::7f00b80a0820  70 f4 cd b2                                      p...
  8374 ms  0x209a SECKEY_CreateECPrivateKey()
  8374 ms  0x209a cx:0x7f00b18cee68
  8375 ms     | 0x209a EC_ValidatePublicKey()
  8377 ms     | 0x209a ret:0x0
  8377 ms  0x209a ret:0x7f00b80af020::7f00b80af020  30 f3 cd b2                                      0...
           /* TID 0x20a2 */
  8378 ms  0x20a2 PR_Close()
  8378 ms  0x20a2 fd:0x7f00b15e2e80
           /* TID 0x209a */
  8413 ms  0x209a SSL_ImportFD()
  8413 ms  0x209a ret:0x7f00b33de310
  8413 ms  0x209a SSL_AuthCertificateHook()
  8413 ms  0x209a fd:0x7f00b33de310
  8413 ms  0x209a ret:0x0
  8413 ms  0x209a PR_Connect()
  8413 ms  0x209a fd:0x7f00b33de310
  8437 ms  SECKEY_ECParamsToKeySize()
  8437 ms  0x209a ret:0x100
  8437 ms  0x209a SECKEY_CreateECPrivateKey()
  8437 ms  0x209a cx:0x7f00b18cee68
  8438 ms     | 0x209a EC_ValidatePublicKey()
  8439 ms     | 0x209a ret:0x0
  8439 ms  0x209a ret:0x7f00b80bf020::7f00b80bf020  80 fd cd b2                                      ....
  8439 ms  0x209a PK11_PubDeriveWithKDF()
  8439 ms  0x209a seckey:0x7f00b80bf020
  8439 ms     | 0x209a EC_ValidatePublicKey()
  8441 ms     | 0x209a ret:0x0
  8442 ms  0x209a ret:0x7f00bb67be00
  8442 ms  0x209a PK11_DeriveWithFlags()
  8442 ms  0x209a basekey:0x7f00bb67be00
  8442 ms     | 0x209a PK11_DeriveWithTemplate()
  8442 ms  0x209a ret:0x7f00b7cfab00
  8442 ms  0x209a PK11_Derive()
  8442 ms  0x209a basekey:0x7f00b7cfab00
  8442 ms     | 0x209a PK11_DeriveWithTemplate()
  8442 ms  0x209a ret:0x7f00b304f780
  8442 ms  0x209a SECKEY_DestroyPrivateKey()
  8442 ms  0x209a privk:0x7f00b80bf020::7f00b80bf020  80 fd cd b2                                      ....
  8443 ms  0x209a privk:0x7f00b80bf020::7f00b80bf020  e5 e5 e5 e5                                      ....
  8443 ms  0x209a PK11_Encrypt()
  8443 ms  0x209a symkey:0x7f00b3c0d380
           /* TID 0x20a2 */
  8458 ms  0x20a2 PR_Close()
  8458 ms  0x20a2 fd:0x7f00b2887f10
  8461 ms  0x20a2 PR_Close()
  8461 ms  0x20a2 fd:0x7f00b2887f10
  8468 ms  0x20a2 PR_Close()
  8468 ms  0x20a2 fd:0x7f00b37e23a0
           /* TID 0x209a */
  8468 ms  0x209a PK11_Encrypt()
  8468 ms  0x209a symkey:0x7f00b4ab9f00
  8470 ms  0x209a PK11_Encrypt()
  8470 ms  0x209a symkey:0x7f00a05fea00
  8471 ms  0x209a SECKEY_CreateECPrivateKey()
  8471 ms  0x209a cx:0x7f00bbd8bae8
  8472 ms     | 0x209a EC_ValidatePublicKey()
  8472 ms     | 0x209a ret:0x0
  8472 ms  0x209a ret:0x7f00b80c3820::7f00b80c3820  b0 ff cd b2                                      ....
  8472 ms  0x209a SECKEY_CreateECPrivateKey()
  8472 ms  0x209a cx:0x7f00bbd8bae8
  8472 ms     | 0x209a EC_ValidatePublicKey()
  8474 ms     | 0x209a ret:0x0
  8474 ms  0x209a ret:0x7f00b80c5820::7f00b80c5820  90 62 cf b2                                      .b..
           /* TID 0x20a2 */
  8476 ms  0x20a2 PR_Close()
  8476 ms  0x20a2 fd:0x7f00b30e1550
  8482 ms  0x20a2 PR_Close()
  8482 ms  0x20a2 fd:0x7f00b30e11f0
           /* TID 0x20fb */
  8482 ms  0x20fb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8483 ms  0x20fb ret:0x0
           /* TID 0x209a */
  8483 ms  0x209a SSL_AuthCertificateComplete()
  8483 ms  0x209a fd:0x7f00b33547f0
  8483 ms  0x209a err:0x0
  8483 ms  0x209a PK11_Encrypt()
  8483 ms  0x209a symkey:0x7f00b3c0d380
           /* TID 0x20a2 */
  8489 ms  0x20a2 PR_Close()
  8489 ms  0x20a2 fd:0x7f00b6681a00
  8489 ms  0x20a2 PR_Close()
  8489 ms  0x20a2 fd:0x7f00b30e1670
           /* TID 0x209a */
  8493 ms  0x209a PK11_Encrypt()
  8493 ms  0x209a symkey:0x7f00b79e1380
  8501 ms  0x209a SECKEY_DestroyPrivateKey()
  8501 ms  0x209a privk:0x7f00b80af020::7f00b80af020  30 f3 cd b2                                      0...
  8501 ms  0x209a privk:0x7f00b80af020::7f00b80af020  e5 e5 e5 e5                                      ....
  8501 ms  0x209a SECKEY_DestroyPrivateKey()
  8501 ms  0x209a privk:0x7f00b80a0820::7f00b80a0820  70 f4 cd b2                                      p...
  8501 ms  0x209a privk:0x7f00b80a0820::7f00b80a0820  e5 e5 e5 e5                                      ....
           /* TID 0x20a2 */
  8506 ms  0x20a2 PR_Close()
  8506 ms  0x20a2 fd:0x7f00b33de3a0
  8522 ms  0x20a2 PR_Close()
  8522 ms  0x20a2 fd:0x7f00b30e1e50
           /* TID 0x209a */
  8533 ms  SECKEY_ECParamsToKeySize()
  8533 ms  0x209a ret:0x100
  8533 ms  0x209a SECKEY_CreateECPrivateKey()
  8533 ms  0x209a cx:0x7f00bbd8bae8
  8533 ms     | 0x209a EC_ValidatePublicKey()
  8535 ms     | 0x209a ret:0x0
  8536 ms  0x209a ret:0x7f00b80a0020::7f00b80a0020  40 ac ea b2                                      @...
  8536 ms  0x209a PK11_PubDeriveWithKDF()
  8536 ms  0x209a seckey:0x7f00b80a0020
  8536 ms     | 0x209a EC_ValidatePublicKey()
  8537 ms     | 0x209a ret:0x0
           /* TID 0x20a2 */
  8539 ms  0x20a2 PR_Close()
  8539 ms  0x20a2 fd:0x7f00b30e1a60
           /* TID 0x209a */
  8543 ms  0x209a ret:0x7f00bb67be00
  8543 ms  0x209a PK11_DeriveWithFlags()
  8543 ms  0x209a basekey:0x7f00bb67be00
  8543 ms     | 0x209a PK11_DeriveWithTemplate()
  8543 ms  0x209a ret:0x7f00b7ff7c00
  8543 ms  0x209a PK11_Derive()
  8543 ms  0x209a basekey:0x7f00b7ff7c00
  8543 ms     | 0x209a PK11_DeriveWithTemplate()
  8543 ms  0x209a ret:0x7f00ba999080
  8543 ms  0x209a SECKEY_DestroyPrivateKey()
  8543 ms  0x209a privk:0x7f00b80a0020::7f00b80a0020  40 ac ea b2                                      @...
  8543 ms  0x209a privk:0x7f00b80a0020::7f00b80a0020  e5 e5 e5 e5                                      ....
  8543 ms  0x209a PK11_Encrypt()
  8543 ms  0x209a symkey:0x7f00bb830800
  8546 ms  0x209a SSL_AuthCertificateComplete()
  8546 ms  0x209a fd:0x7f00b33de310
  8546 ms  0x209a err:0x0
           /* TID 0x20a2 */
  8551 ms  0x20a2 PR_Close()
  8551 ms  0x20a2 fd:0x7f00b30e1610
  8553 ms  0x20a2 PR_Close()
  8553 ms  0x20a2 fd:0x7f00b30e1610
  8554 ms  0x20a2 PR_Close()
  8554 ms  0x20a2 fd:0x7f00b30e1610
  8556 ms  0x20a2 PR_Close()
  8556 ms  0x20a2 fd:0x7f00b30e1610
           /* TID 0x209a */
  8556 ms  0x209a PK11_Encrypt()
  8556 ms  0x209a symkey:0x7f00bb830800
           /* TID 0x20a2 */
  8560 ms  0x20a2 PR_Close()
  8560 ms  0x20a2 fd:0x7f00b30e10d0
           /* TID 0x209a */
  8569 ms  0x209a PK11_Encrypt()
  8569 ms  0x209a symkey:0x7f00b79e1380
           /* TID 0x20a2 */
  8570 ms  0x20a2 PR_Close()
  8570 ms  0x20a2 fd:0x7f00b30e1040
           /* TID 0x209a */
  8601 ms  0x209a SECKEY_DestroyPrivateKey()
  8601 ms  0x209a privk:0x7f00b80c5820::7f00b80c5820  90 62 cf b2                                      .b..
  8601 ms  0x209a privk:0x7f00b80c5820::7f00b80c5820  e5 e5 e5 e5                                      ....
  8601 ms  0x209a SECKEY_DestroyPrivateKey()
  8601 ms  0x209a privk:0x7f00b80c3820::7f00b80c3820  b0 ff cd b2                                      ....
  8602 ms  0x209a privk:0x7f00b80c3820::7f00b80c3820  e5 e5 e5 e5                                      ....
  8652 ms  0x209a SSL_ImportFD()
  8652 ms  0x209a ret:0x7f00b30e1970
  8652 ms  0x209a SSL_AuthCertificateHook()
  8652 ms  0x209a fd:0x7f00b30e1970
  8652 ms  0x209a ret:0x0
  8652 ms  0x209a PR_Connect()
  8652 ms  0x209a fd:0x7f00b30e1970
           /* TID 0x20a2 */
  8662 ms  0x20a2 PR_Close()
  8662 ms  0x20a2 fd:0x7f00b2887f10
           /* TID 0x209a */
  8677 ms  0x209a SECKEY_CreateECPrivateKey()
  8677 ms  0x209a cx:0x7f00bfcacc08
  8677 ms     | 0x209a EC_ValidatePublicKey()
  8678 ms     | 0x209a ret:0x0
  8678 ms  0x209a ret:0x7f00b809a820::7f00b809a820  00 61 8d b1                                      .a..
  8678 ms  0x209a SECKEY_CreateECPrivateKey()
  8678 ms  0x209a cx:0x7f00bfcacc08
  8678 ms     | 0x209a EC_ValidatePublicKey()
  8680 ms     | 0x209a ret:0x0
  8680 ms  0x209a ret:0x7f00b80a0020::7f00b80a0020  10 da db b1                                      ....
  8730 ms  SECKEY_ECParamsToKeySize()
  8730 ms  0x209a ret:0x100
  8730 ms  0x209a SECKEY_CreateECPrivateKey()
  8730 ms  0x209a cx:0x7f00bfcacc08
  8731 ms     | 0x209a EC_ValidatePublicKey()
  8732 ms     | 0x209a ret:0x0
  8732 ms  0x209a ret:0x7f00b80c5820::7f00b80c5820  10 ff cd b2                                      ....
  8732 ms  0x209a PK11_PubDeriveWithKDF()
  8732 ms  0x209a seckey:0x7f00b80c5820
  8732 ms     | 0x209a EC_ValidatePublicKey()
  8734 ms     | 0x209a ret:0x0
  8735 ms  0x209a ret:0x7f00bb67be00
  8735 ms  0x209a PK11_DeriveWithFlags()
  8735 ms  0x209a basekey:0x7f00bb67be00
  8735 ms     | 0x209a PK11_DeriveWithTemplate()
  8735 ms  0x209a ret:0x7f00b4a74300
  8735 ms  0x209a PK11_Derive()
  8735 ms  0x209a basekey:0x7f00b4a74300
  8735 ms     | 0x209a PK11_DeriveWithTemplate()
  8735 ms  0x209a ret:0x7f00b4a75680
  8735 ms  0x209a SECKEY_DestroyPrivateKey()
  8735 ms  0x209a privk:0x7f00b80c5820::7f00b80c5820  10 ff cd b2                                      ....
  8735 ms  0x209a privk:0x7f00b80c5820::7f00b80c5820  e5 e5 e5 e5                                      ....
  8743 ms  0x209a PK11_Encrypt()
  8743 ms  0x209a symkey:0x7f00b4ab6900
           /* TID 0x20fb */
  8743 ms  0x20fb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8743 ms  0x20fb ret:0x0
           /* TID 0x209a */
  8750 ms  0x209a SSL_AuthCertificateComplete()
  8750 ms  0x209a fd:0x7f00b30e1970
  8750 ms  0x209a err:0x0
  8750 ms  0x209a PK11_Encrypt()
  8750 ms  0x209a symkey:0x7f00b4ab6900
  8750 ms  0x209a PK11_Encrypt()
  8750 ms  0x209a symkey:0x7f00b4ab6900
  8770 ms  0x209a SECKEY_DestroyPrivateKey()
  8770 ms  0x209a privk:0x7f00b80a0020::7f00b80a0020  10 da db b1                                      ....
  8770 ms  0x209a privk:0x7f00b80a0020::7f00b80a0020  e5 e5 e5 e5                                      ....
  8770 ms  0x209a SECKEY_DestroyPrivateKey()
  8770 ms  0x209a privk:0x7f00b809a820::7f00b809a820  00 61 8d b1                                      .a..
  8770 ms  0x209a privk:0x7f00b809a820::7f00b809a820  e5 e5 e5 e5                                      ....
  8771 ms  0x209a PK11_Encrypt()
  8771 ms  0x209a symkey:0x7f00b4ab6900
           /* TID 0x20a2 */
  8798 ms  0x20a2 PR_Close()
  8798 ms  0x20a2 fd:0x7f00b2ef58e0
           /* TID 0x209a */
  8799 ms  0x209a SSL_ImportFD()
  8799 ms  0x209a ret:0x7f00b7542cd0
  8799 ms  0x209a SSL_AuthCertificateHook()
  8799 ms  0x209a fd:0x7f00b7542cd0
  8799 ms  0x209a ret:0x0
  8799 ms  0x209a PR_Connect()
  8799 ms  0x209a fd:0x7f00b7542cd0
  8799 ms  0x209a SSL_ImportFD()
  8799 ms  0x209a ret:0x7f00b7542b20
  8799 ms  0x209a SSL_AuthCertificateHook()
  8799 ms  0x209a fd:0x7f00b7542b20
  8799 ms  0x209a ret:0x0
  8799 ms  0x209a PR_Connect()
  8799 ms  0x209a fd:0x7f00b7542b20
  8802 ms  0x209a PK11_Encrypt()
  8802 ms  0x209a symkey:0x7f00bb67c000
  8809 ms  0x209a SSL_ImportFD()
  8809 ms  0x209a ret:0x7f00b7925190
  8809 ms  0x209a SSL_AuthCertificateHook()
  8809 ms  0x209a fd:0x7f00b7925190
  8809 ms  0x209a ret:0x0
  8809 ms  0x209a PR_Connect()
  8809 ms  0x209a fd:0x7f00b7925190
  8836 ms  0x209a SECKEY_CreateECPrivateKey()
  8836 ms  0x209a cx:0x7f00bfcad0e8
  8837 ms     | 0x209a EC_ValidatePublicKey()
  8837 ms     | 0x209a ret:0x0
  8837 ms  0x209a ret:0x7f00b80c4020::7f00b80c4020  50 f6 cd b2                                      P...
  8837 ms  0x209a SECKEY_CreateECPrivateKey()
  8837 ms  0x209a cx:0x7f00bfcad0e8
  8837 ms     | 0x209a EC_ValidatePublicKey()
  8839 ms     | 0x209a ret:0x0
  8839 ms  0x209a ret:0x7f00ba9bd020::7f00ba9bd020  00 61 cf b2                                      .a..
  8852 ms  0x209a SECKEY_CreateECPrivateKey()
  8852 ms  0x209a cx:0x7f00bfcacf48
  8852 ms     | 0x209a EC_ValidatePublicKey()
  8852 ms     | 0x209a ret:0x0
  8852 ms  0x209a ret:0x7f00ba9c4020::7f00ba9c4020  10 6f e9 b2                                      .o..
  8852 ms  0x209a SECKEY_CreateECPrivateKey()
  8852 ms  0x209a cx:0x7f00bfcacf48
  8853 ms     | 0x209a EC_ValidatePublicKey()
  8854 ms     | 0x209a ret:0x0
  8854 ms  0x209a ret:0x7f00ba9c7020::7f00ba9c7020  80 a8 ea b2                                      ....
  8858 ms  0x209a PK11_Encrypt()
  8858 ms  0x209a symkey:0x7f00a05fea00
  8860 ms  0x209a PK11_Encrypt()
  8860 ms  0x209a symkey:0x7f00a05fea00
  8861 ms  0x209a PK11_Encrypt()
  8861 ms  0x209a symkey:0x7f00a05fea00
  8894 ms  0x209a PK11_Derive()
  8894 ms  0x209a basekey:0x7f00bb67be00
  8894 ms     | 0x209a PK11_DeriveWithTemplate()
  8894 ms  0x209a ret:0x7f00bef68480
  8894 ms  0x209a PK11_PubDeriveWithKDF()
  8894 ms  0x209a seckey:0x7f00b80c4020
  8894 ms     | 0x209a EC_ValidatePublicKey()
  8894 ms     | 0x209a ret:0x0
  8895 ms  0x209a ret:0x7f00bb67be00
  8895 ms  SECKEY_ECParamsToKeySize()
  8895 ms  0x209a ret:0xff
  8895 ms  0x209a PK11_DeriveWithFlags()
  8895 ms  0x209a basekey:0x7f00bef68480
  8895 ms     | 0x209a PK11_DeriveWithTemplate()
  8895 ms  0x209a ret:0x7f00bef68500
  8895 ms  0x209a PK11_Derive()
  8895 ms  0x209a basekey:0x7f00bb67be00
  8895 ms     | 0x209a PK11_DeriveWithTemplate()
  8895 ms  0x209a ret:0x7f00bef68600
  8895 ms  0x209a PK11_DeriveWithFlags()
  8895 ms  0x209a basekey:0x7f00bef68600
  8895 ms     | 0x209a PK11_DeriveWithTemplate()
  8895 ms  0x209a ret:0x7f00bef68480
  8895 ms  0x209a PK11_DeriveWithFlags()
  8895 ms  0x209a basekey:0x7f00bef68600
  8895 ms     | 0x209a PK11_DeriveWithTemplate()
  8895 ms  0x209a ret:0x7f00bb67be00
  8895 ms  0x209a PK11_DeriveWithFlags()
  8895 ms  0x209a basekey:0x7f00bef68600
  8895 ms     | 0x209a PK11_DeriveWithTemplate()
  8895 ms  0x209a ret:0x7f00bef68500
  8895 ms  0x209a PK11_Derive()
  8895 ms  0x209a basekey:0x7f00bef68680
  8895 ms     | 0x209a PK11_DeriveWithTemplate()
  8895 ms  0x209a ret:0x7f00bef68b80
  8895 ms  0x209a PK11_DeriveWithFlags()
  8895 ms  0x209a basekey:0x7f00bb67be00
  8895 ms     | 0x209a PK11_DeriveWithTemplate()
  8895 ms  0x209a ret:0x7f00bef68600
  8895 ms  0x209a PK11_DeriveWithFlags()
  8895 ms  0x209a basekey:0x7f00bb67be00
  8895 ms     | 0x209a PK11_DeriveWithTemplate()
  8895 ms  0x209a ret:0x7f00bef68500
  8896 ms  0x209a PK11_DeriveWithFlags()
  8896 ms  0x209a basekey:0x7f00bb67be00
  8896 ms     | 0x209a PK11_DeriveWithTemplate()
  8896 ms  0x209a ret:0x7f00bef68500
  8896 ms  0x209a SSL_AuthCertificateComplete()
  8896 ms  0x209a fd:0x7f00b7542b20
  8896 ms  0x209a err:0x0
  8896 ms     | 0x209a PK11_DeriveWithFlags()
  8896 ms     | 0x209a basekey:0x7f00bef68b80
  8896 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8896 ms     | 0x209a ret:0x7f00bef68500
  8896 ms     | 0x209a PK11_DeriveWithFlags()
  8896 ms     | 0x209a basekey:0x7f00bef68b80
  8896 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8896 ms     | 0x209a ret:0x7f00bef68680
  8896 ms     | 0x209a PK11_DeriveWithFlags()
  8896 ms     | 0x209a basekey:0x7f00bef68b80
  8896 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8896 ms     | 0x209a ret:0x7f00bef68c80
  8896 ms     | 0x209a PK11_DeriveWithFlags()
  8896 ms     | 0x209a basekey:0x7f00bef68480
  8896 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8896 ms     | 0x209a ret:0x7f00bef68d80
  8896 ms     | 0x209a PK11_DeriveWithFlags()
  8896 ms     | 0x209a basekey:0x7f00bef68480
  8896 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8896 ms     | 0x209a ret:0x7f00bef68e00
  8896 ms     | 0x209a PK11_DeriveWithFlags()
  8896 ms     | 0x209a basekey:0x7f00bef68680
  8896 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8896 ms     | 0x209a ret:0x7f00bef68e00
  8896 ms     | 0x209a PK11_DeriveWithFlags()
  8896 ms     | 0x209a basekey:0x7f00bef68680
  8896 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8896 ms     | 0x209a ret:0x7f00bef68e80
  8896 ms     | 0x209a PK11_DeriveWithFlags()
  8896 ms     | 0x209a basekey:0x7f00bef68480
  8896 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8896 ms     | 0x209a ret:0x7f00bef68600
  8896 ms     | 0x209a PK11_Encrypt()
  8896 ms     | 0x209a symkey:0x7f00bef68d80
  8896 ms     | 0x209a PK11_DeriveWithFlags()
  8896 ms     | 0x209a basekey:0x7f00bef68500
  8896 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8896 ms     | 0x209a ret:0x7f00bef68600
  8896 ms     | 0x209a PK11_DeriveWithFlags()
  8896 ms     | 0x209a basekey:0x7f00bef68500
  8897 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8897 ms     | 0x209a ret:0x7f00bef68e80
  8897 ms     | 0x209a PK11_DeriveWithFlags()
  8897 ms     | 0x209a basekey:0x7f00bef68b80
  8897 ms     |    | 0x209a PK11_DeriveWithTemplate()
  8897 ms     | 0x209a ret:0x7f00bef68d80
  8897 ms     | 0x209a SECKEY_DestroyPrivateKey()
  8897 ms     | 0x209a privk:0x7f00ba9bd020::7f00ba9bd020  00 61 cf b2                                      .a..
  8897 ms     | 0x209a privk:0x7f00ba9bd020::7f00ba9bd020  e5 e5 e5 e5                                      ....
  8897 ms     | 0x209a SECKEY_DestroyPrivateKey()
  8897 ms     | 0x209a privk:0x7f00b80c4020::7f00b80c4020  50 f6 cd b2                                      P...
  8897 ms     | 0x209a privk:0x7f00b80c4020::7f00b80c4020  e5 e5 e5 e5                                      ....
  8897 ms  0x209a PK11_Encrypt()
  8897 ms  0x209a symkey:0x7f00bef68600
  8897 ms  0x209a PK11_Encrypt()
  8897 ms  0x209a symkey:0x7f00bef68600
  8908 ms  0x209a PK11_DeriveWithFlags()
  8908 ms  0x209a basekey:0x7f00bb67be00
  8908 ms     | 0x209a PK11_DeriveWithTemplate()
  8908 ms  0x209a ret:0x7f00bef68480
  8908 ms  0x209a PK11_Derive()
  8908 ms  0x209a basekey:0x7f00bef68480
  8908 ms     | 0x209a PK11_DeriveWithTemplate()
  8908 ms  0x209a ret:0x7f00bef68b80
  8914 ms  0x209a PK11_Encrypt()
  8914 ms  0x209a symkey:0x7f00b3c7f900
           /* TID 0x20a2 */
  8918 ms  0x20a2 PR_Close()
  8918 ms  0x20a2 fd:0x7f00b7925ac0
           /* TID 0x209a */
  8934 ms  0x209a PK11_DeriveWithFlags()
  8934 ms  0x209a basekey:0x7f00bef68d80
  8934 ms     | 0x209a PK11_DeriveWithTemplate()
  8934 ms  0x209a ret:0x7f00bb67be00
  8934 ms  0x209a PK11_DeriveWithFlags()
  8934 ms  0x209a basekey:0x7f00bef68d80
  8934 ms     | 0x209a PK11_DeriveWithTemplate()
  8934 ms  0x209a ret:0x7f00bb67be00
  8934 ms  0x209a PK11_Encrypt()
  8934 ms  0x209a symkey:0x7f00bef68600
           /* TID 0x20a2 */
  8935 ms  0x20a2 PR_Close()
  8935 ms  0x20a2 fd:0x7f00b78f7370
           /* TID 0x20fb */
  8935 ms  0x20fb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8935 ms  0x20fb ret:0x0
           /* TID 0x209a */
  8935 ms  0x209a SSL_AuthCertificateComplete()
  8935 ms  0x209a fd:0x7f00b7542cd0
  8935 ms  0x209a err:0x0
  8938 ms  0x209a SECKEY_CreateECPrivateKey()
  8938 ms  0x209a cx:0x7f00bfcad288
  8938 ms     | 0x209a EC_ValidatePublicKey()
  8938 ms     | 0x209a ret:0x0
  8938 ms  0x209a ret:0x7f00bbae5820::7f00bbae5820  b0 aa ea b2                                      ....
  8938 ms  0x209a SECKEY_CreateECPrivateKey()
  8938 ms  0x209a cx:0x7f00bfcad288
  8939 ms     | 0x209a EC_ValidatePublicKey()
  8940 ms     | 0x209a ret:0x0
  8941 ms  0x209a ret:0x7f00bbae9820::7f00bbae9820  b0 ff cd b2                                      ....
           /* TID 0x20a2 */
  8943 ms  0x20a2 PR_Close()
  8943 ms  0x20a2 fd:0x7f00b78f7fa0
           /* TID 0x209a */
  8975 ms  0x209a SECKEY_DestroyPrivateKey()
  8975 ms  0x209a privk:0x7f00ba9c7020::7f00ba9c7020  80 a8 ea b2                                      ....
  8975 ms  0x209a privk:0x7f00ba9c7020::7f00ba9c7020  e5 e5 e5 e5                                      ....
  8975 ms  0x209a SECKEY_DestroyPrivateKey()
  8975 ms  0x209a privk:0x7f00ba9c4020::7f00ba9c4020  10 6f e9 b2                                      .o..
  8975 ms  0x209a privk:0x7f00ba9c4020::7f00ba9c4020  e5 e5 e5 e5                                      ....
           /* TID 0x20a2 */
  8978 ms  0x20a2 PR_Close()
  8978 ms  0x20a2 fd:0x7f00b7542fa0
           /* TID 0x209a */
  8978 ms  0x209a PK11_Encrypt()
  8978 ms  0x209a symkey:0x7f00bef68600
           /* TID 0x20a2 */
  8978 ms  0x20a2 PR_Close()
  8978 ms  0x20a2 fd:0x7f00b33dec40
  8983 ms  0x20a2 PR_Close()
  8983 ms  0x20a2 fd:0x7f00b33dec40
  9004 ms  0x20a2 PR_Close()
  9004 ms  0x20a2 fd:0x7f00b33dec40
           /* TID 0x209a */
  9024 ms  0x209a PK11_Encrypt()
  9024 ms  0x209a symkey:0x7f00bb67c000
  9027 ms  0x209a SSL_ImportFD()
  9027 ms  0x209a ret:0x7f00b795e4f0
  9027 ms  0x209a SSL_AuthCertificateHook()
  9027 ms  0x209a fd:0x7f00b795e4f0
  9027 ms  0x209a ret:0x0
  9027 ms  0x209a PR_Connect()
  9027 ms  0x209a fd:0x7f00b795e4f0
  9028 ms  0x209a SSL_ImportFD()
  9028 ms  0x209a ret:0x7f00b795e8e0
  9028 ms  0x209a SSL_AuthCertificateHook()
  9028 ms  0x209a fd:0x7f00b795e8e0
  9028 ms  0x209a ret:0x0
  9028 ms  0x209a PR_Connect()
  9028 ms  0x209a fd:0x7f00b795e8e0
  9030 ms  0x209a SSL_ImportFD()
  9030 ms  0x209a ret:0x7f00b79ed910
  9030 ms  0x209a SSL_AuthCertificateHook()
  9030 ms  0x209a fd:0x7f00b79ed910
  9030 ms  0x209a ret:0x0
  9030 ms  0x209a PR_Connect()
  9030 ms  0x209a fd:0x7f00b79ed910
  9031 ms  0x209a SSL_ImportFD()
  9031 ms  0x209a ret:0x7f00b79fb0d0
  9031 ms  0x209a SSL_AuthCertificateHook()
  9031 ms  0x209a fd:0x7f00b79fb0d0
  9031 ms  0x209a ret:0x0
  9031 ms  0x209a PR_Connect()
  9031 ms  0x209a fd:0x7f00b79fb0d0
  9034 ms  0x209a PK11_Encrypt()
  9034 ms  0x209a symkey:0x7f00a05fea00
           /* TID 0x20a2 */
  9099 ms  0x20a2 PR_Close()
  9099 ms  0x20a2 fd:0x7f00b33de3a0
           /* TID 0x209a */
  9157 ms  0x209a SECKEY_CreateECPrivateKey()
  9157 ms  0x209a cx:0x7f00bfcad428
  9158 ms     | 0x209a EC_ValidatePublicKey()
  9158 ms     | 0x209a ret:0x0
  9158 ms  0x209a ret:0x7f00bbb87020::7f00bbb87020  30 bd 04 b3                                      0...
  9158 ms  0x209a SECKEY_CreateECPrivateKey()
  9158 ms  0x209a cx:0x7f00bfcad428
  9158 ms     | 0x209a EC_ValidatePublicKey()
  9160 ms     | 0x209a ret:0x0
  9160 ms  0x209a ret:0x7f00bbb89820::7f00bbb89820  60 af ea b2                                      `...
  9163 ms  0x209a SECKEY_CreateECPrivateKey()
  9163 ms  0x209a cx:0x7f00bfcadaa8
  9164 ms     | 0x209a EC_ValidatePublicKey()
  9164 ms     | 0x209a ret:0x0
  9164 ms  0x209a ret:0x7f00bbb8c020::7f00bbb8c020  b0 30 0f b3                                      .0..
  9164 ms  0x209a SECKEY_CreateECPrivateKey()
  9164 ms  0x209a cx:0x7f00bfcadaa8
  9164 ms     | 0x209a EC_ValidatePublicKey()
  9166 ms     | 0x209a ret:0x0
  9166 ms  0x209a ret:0x7f00bbb8e020::7f00bbb8e020  b0 3a 0f b3                                      .:..
  9171 ms  0x209a SECKEY_CreateECPrivateKey()
  9171 ms  0x209a cx:0x7f00bfcadc48
  9171 ms     | 0x209a EC_ValidatePublicKey()
  9171 ms     | 0x209a ret:0x0
  9171 ms  0x209a ret:0x7f00bbb90820::7f00bbb90820  90 3c 0f b3                                      .<..
  9171 ms  0x209a SECKEY_CreateECPrivateKey()
  9171 ms  0x209a cx:0x7f00bfcadc48
  9172 ms     | 0x209a EC_ValidatePublicKey()
  9173 ms     | 0x209a ret:0x0
  9174 ms  0x209a ret:0x7f00bbb92820::7f00bbb92820  30 78 35 b3                                      0x5.
  9174 ms  0x209a SECKEY_CreateECPrivateKey()
  9174 ms  0x209a cx:0x7f00bfcadde8
  9176 ms     | 0x209a EC_ValidatePublicKey()
  9176 ms     | 0x209a ret:0x0
  9176 ms  0x209a ret:0x7f00bbb95020::7f00bbb95020  10 7f 35 b3                                      ..5.
  9176 ms  0x209a SECKEY_CreateECPrivateKey()
  9176 ms  0x209a cx:0x7f00bfcadde8
  9177 ms     | 0x209a EC_ValidatePublicKey()
  9178 ms     | 0x209a ret:0x0
  9178 ms  0x209a ret:0x7f00bbb97020::7f00bbb97020  90 b2 3d b3                                      ..=.
  9181 ms  0x209a SSL_ImportFD()
  9181 ms  0x209a ret:0x7f00b37e2d90
  9181 ms  0x209a SSL_AuthCertificateHook()
  9181 ms  0x209a fd:0x7f00b37e2d90
  9181 ms  0x209a ret:0x0
  9182 ms  0x209a PR_Connect()
  9182 ms  0x209a fd:0x7f00b37e2d90
  9200 ms  SECKEY_ECParamsToKeySize()
  9200 ms  0x209a ret:0x100
  9200 ms  0x209a SECKEY_CreateECPrivateKey()
  9200 ms  0x209a cx:0x7f00bfcad288
  9201 ms     | 0x209a EC_ValidatePublicKey()
  9202 ms     | 0x209a ret:0x0
  9203 ms  0x209a ret:0x7f00bc33f020::7f00bc33f020  30 b8 3d b3                                      0.=.
  9203 ms  0x209a PK11_PubDeriveWithKDF()
  9203 ms  0x209a seckey:0x7f00bc33f020
  9203 ms     | 0x209a EC_ValidatePublicKey()
  9204 ms     | 0x209a ret:0x0
  9205 ms  0x209a ret:0x7f00bb67be00
  9214 ms  0x209a PK11_DeriveWithFlags()
  9214 ms  0x209a basekey:0x7f00bb67be00
  9214 ms     | 0x209a PK11_DeriveWithTemplate()
  9214 ms  0x209a ret:0x7f00bef68e80
  9214 ms  0x209a PK11_Derive()
  9214 ms  0x209a basekey:0x7f00bef68e80
  9214 ms     | 0x209a PK11_DeriveWithTemplate()
  9214 ms  0x209a ret:0x7f00bef9c080
  9214 ms  0x209a SECKEY_DestroyPrivateKey()
  9214 ms  0x209a privk:0x7f00bc33f020::7f00bc33f020  30 b8 3d b3                                      0.=.
  9214 ms  0x209a privk:0x7f00bc33f020::7f00bc33f020  e5 e5 e5 e5                                      ....
  9214 ms  0x209a PK11_Encrypt()
  9214 ms  0x209a symkey:0x7f00bef9cc80
  9217 ms  0x209a SSL_AuthCertificateComplete()
  9217 ms  0x209a fd:0x7f00b7925190
  9217 ms  0x209a err:0x0
  9218 ms  0x209a PK11_Encrypt()
  9218 ms  0x209a symkey:0x7f00bef9cc80
  9218 ms  0x209a SECKEY_CreateECPrivateKey()
  9218 ms  0x209a cx:0x7f00bfcadf88
  9219 ms     | 0x209a EC_ValidatePublicKey()
  9219 ms     | 0x209a ret:0x0
  9219 ms  0x209a ret:0x7f00bc33f020::7f00bc33f020  80 b3 3d b3                                      ..=.
  9219 ms  0x209a SECKEY_CreateECPrivateKey()
  9219 ms  0x209a cx:0x7f00bfcadf88
  9219 ms     | 0x209a EC_ValidatePublicKey()
  9221 ms     | 0x209a ret:0x0
  9221 ms  0x209a ret:0x7f00bc405820::7f00bc405820  00 bb 3d b3                                      ..=.
  9240 ms  0x209a PK11_Encrypt()
  9240 ms  0x209a symkey:0x7f00bb67c000
           /* TID 0x20a2 */
  9241 ms  0x20a2 PR_Close()
  9241 ms  0x20a2 fd:0x7f00b33de3a0
           /* TID 0x209a */
  9271 ms  SECKEY_ECParamsToKeySize()
  9271 ms  0x209a ret:0x100
  9272 ms  0x209a SECKEY_CreateECPrivateKey()
  9272 ms  0x209a cx:0x7f00bfcadf88
  9272 ms     | 0x209a EC_ValidatePublicKey()
  9274 ms     | 0x209a ret:0x0
  9274 ms  0x209a ret:0x7f00bc40a820::7f00bc40a820  d0 98 3f b3                                      ..?.
  9274 ms  0x209a PK11_PubDeriveWithKDF()
  9274 ms  0x209a seckey:0x7f00bc40a820
  9274 ms     | 0x209a EC_ValidatePublicKey()
  9275 ms     | 0x209a ret:0x0
           /* TID 0x20fb */
  9276 ms  0x20fb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9276 ms  0x20fb ret:0x0
           /* TID 0x209a */
  9279 ms  0x209a ret:0x7f00bb67be00
  9279 ms  0x209a PK11_DeriveWithFlags()
  9279 ms  0x209a basekey:0x7f00bb67be00
  9279 ms     | 0x209a PK11_DeriveWithTemplate()
  9279 ms  0x209a ret:0x7f00bef76700
  9279 ms  0x209a PK11_Derive()
  9279 ms  0x209a basekey:0x7f00bef76700
  9279 ms     | 0x209a PK11_DeriveWithTemplate()
  9279 ms  0x209a ret:0x7f00bef9cf00
  9279 ms  0x209a SECKEY_DestroyPrivateKey()
  9279 ms  0x209a privk:0x7f00bc40a820::7f00bc40a820  d0 98 3f b3                                      ..?.
  9279 ms  0x209a privk:0x7f00bc40a820::7f00bc40a820  e5 e5 e5 e5                                      ....
  9279 ms  0x209a PK11_Encrypt()
  9279 ms  0x209a symkey:0x7f00bef9d080
  9281 ms  0x209a SSL_AuthCertificateComplete()
  9281 ms  0x209a fd:0x7f00b37e2d90
  9281 ms  0x209a err:0x0
  9282 ms  0x209a PK11_Encrypt()
  9282 ms  0x209a symkey:0x7f00bef9d080
  9283 ms  0x209a PK11_Encrypt()
  9283 ms  0x209a symkey:0x7f00bef9d080
  9307 ms  0x209a SECKEY_DestroyPrivateKey()
  9307 ms  0x209a privk:0x7f00bc405820::7f00bc405820  00 bb 3d b3                                      ..=.
  9307 ms  0x209a privk:0x7f00bc405820::7f00bc405820  e5 e5 e5 e5                                      ....
  9307 ms  0x209a SECKEY_DestroyPrivateKey()
  9307 ms  0x209a privk:0x7f00bc33f020::7f00bc33f020  80 b3 3d b3                                      ..=.
  9307 ms  0x209a privk:0x7f00bc33f020::7f00bc33f020  e5 e5 e5 e5                                      ....
  9307 ms  0x209a PK11_Encrypt()
  9307 ms  0x209a symkey:0x7f00bef9d080
           /* TID 0x20a2 */
  9333 ms  0x20a2 PR_Close()
  9333 ms  0x20a2 fd:0x7f00b7542c70
           /* TID 0x209a */
  9345 ms  0x209a SECKEY_DestroyPrivateKey()
  9345 ms  0x209a privk:0x7f00bbae9820::7f00bbae9820  b0 ff cd b2                                      ....
  9345 ms  0x209a privk:0x7f00bbae9820::7f00bbae9820  e5 e5 e5 e5                                      ....
  9345 ms  0x209a SECKEY_DestroyPrivateKey()
  9345 ms  0x209a privk:0x7f00bbae5820::7f00bbae5820  b0 aa ea b2                                      ....
  9345 ms  0x209a privk:0x7f00bbae5820::7f00bbae5820  e5 e5 e5 e5                                      ....
  9391 ms  0x209a SSL_ImportFD()
  9391 ms  0x209a ret:0x7f00b7ca3190
  9391 ms  0x209a SSL_AuthCertificateHook()
  9391 ms  0x209a fd:0x7f00b7ca3190
  9391 ms  0x209a ret:0x0
  9391 ms  0x209a PR_Connect()
  9391 ms  0x209a fd:0x7f00b7ca3190
           /* TID 0x20a2 */
  9420 ms  0x20a2 PR_Close()
  9420 ms  0x20a2 fd:0x7f00b7925580
  9421 ms  0x20a2 PR_Close()
  9421 ms  0x20a2 fd:0x7f00b79edbe0
  9421 ms  0x20a2 PR_Close()
  9421 ms  0x20a2 fd:0x7f00b7b31160
  9421 ms  0x20a2 PR_Close()
  9421 ms  0x20a2 fd:0x7f00b7b311f0
  9421 ms  0x20a2 PR_Close()
  9421 ms  0x20a2 fd:0x7f00b7ca3b20
  9421 ms  0x20a2 PR_Close()
  9421 ms  0x20a2 fd:0x7f00b7ca3eb0
  9421 ms  0x20a2 PR_Close()
  9421 ms  0x20a2 fd:0x7f00b7cab040
  9421 ms  0x20a2 PR_Close()
  9421 ms  0x20a2 fd:0x7f00b7cab1f0
  9421 ms  0x20a2 PR_Close()
  9421 ms  0x20a2 fd:0x7f00b7cab250
  9421 ms  0x20a2 PR_Close()
  9421 ms  0x20a2 fd:0x7f00b7cab2b0
  9421 ms  0x20a2 PR_Close()
  9421 ms  0x20a2 fd:0x7f00b7cab340
  9421 ms  0x20a2 PR_Close()
  9421 ms  0x20a2 fd:0x7f00b7cab3d0
  9421 ms  0x20a2 PR_Close()
  9421 ms  0x20a2 fd:0x7f00b7cab4c0
  9421 ms  0x20a2 PR_Close()
  9421 ms  0x20a2 fd:0x7f00b7cab550
  9421 ms  0x20a2 PR_Close()
  9421 ms  0x20a2 fd:0x7f00b7cab5e0
  9421 ms  0x20a2 PR_Close()
  9421 ms  0x20a2 fd:0x7f00b7cab9a0
  9421 ms  0x20a2 PR_Close()
  9421 ms  0x20a2 fd:0x7f00b7e49070
  9421 ms  0x20a2 PR_Close()
  9421 ms  0x20a2 fd:0x7f00b7e49160
  9421 ms  0x20a2 PR_Close()
  9421 ms  0x20a2 fd:0x7f00b7e491c0
  9421 ms  0x20a2 PR_Close()
  9421 ms  0x20a2 fd:0x7f00b7e49700
  9422 ms  0x20a2 PR_Close()
  9422 ms  0x20a2 fd:0x7f00b7925580
  9422 ms  0x20a2 PR_Close()
  9422 ms  0x20a2 fd:0x7f00b79edbe0
  9422 ms  0x20a2 PR_Close()
  9422 ms  0x20a2 fd:0x7f00b7b31160
  9422 ms  0x20a2 PR_Close()
  9422 ms  0x20a2 fd:0x7f00b7b311f0
  9422 ms  0x20a2 PR_Close()
  9422 ms  0x20a2 fd:0x7f00b7ca3b20
  9422 ms  0x20a2 PR_Close()
  9422 ms  0x20a2 fd:0x7f00b7ca3eb0
  9422 ms  0x20a2 PR_Close()
  9422 ms  0x20a2 fd:0x7f00b7cab040
  9422 ms  0x20a2 PR_Close()
  9422 ms  0x20a2 fd:0x7f00b7cab1f0
  9422 ms  0x20a2 PR_Close()
  9422 ms  0x20a2 fd:0x7f00b7cab250
  9422 ms  0x20a2 PR_Close()
  9422 ms  0x20a2 fd:0x7f00b7cab2b0
  9422 ms  0x20a2 PR_Close()
  9422 ms  0x20a2 fd:0x7f00b7cab340
  9423 ms  0x20a2 PR_Close()
  9423 ms  0x20a2 fd:0x7f00b7cab3d0
  9423 ms  0x20a2 PR_Close()
  9423 ms  0x20a2 fd:0x7f00b7cab4c0
  9423 ms  0x20a2 PR_Close()
  9423 ms  0x20a2 fd:0x7f00b7cab550
           /* TID 0x209a */
  9424 ms  SECKEY_ECParamsToKeySize()
  9424 ms  0x209a ret:0x100
  9424 ms  0x209a SECKEY_CreateECPrivateKey()
  9424 ms  0x209a cx:0x7f00bfcad428
  9424 ms     | 0x209a EC_ValidatePublicKey()
  9426 ms     | 0x209a ret:0x0
  9426 ms  0x209a ret:0x7f00bbae9020::7f00bbae9020  30 b3 3d b3                                      0.=.
  9427 ms  0x209a PK11_PubDeriveWithKDF()
  9427 ms  0x209a seckey:0x7f00bbae9020
  9427 ms     | 0x209a EC_ValidatePublicKey()
  9428 ms     | 0x209a ret:0x0
           /* TID 0x20a2 */
  9433 ms  0x20a2 PR_Close()
  9433 ms  0x20a2 fd:0x7f00b7cab5e0
  9433 ms  0x20a2 PR_Close()
  9433 ms  0x20a2 fd:0x7f00b7cab9a0
  9433 ms  0x20a2 PR_Close()
  9433 ms  0x20a2 fd:0x7f00b7e49070
  9433 ms  0x20a2 PR_Close()
  9433 ms  0x20a2 fd:0x7f00b7e49160
  9433 ms  0x20a2 PR_Close()
  9433 ms  0x20a2 fd:0x7f00b7e491c0
  9433 ms  0x20a2 PR_Close()
  9433 ms  0x20a2 fd:0x7f00b7e49700
  9433 ms  0x20a2 PR_Close()
  9433 ms  0x20a2 fd:0x7f00b7e49790
  9433 ms  0x20a2 PR_Close()
  9433 ms  0x20a2 fd:0x7f00b7e497f0
           /* TID 0x209a */
  9434 ms  0x209a ret:0x7f00bb67be00
  9434 ms  0x209a PK11_DeriveWithFlags()
  9434 ms  0x209a basekey:0x7f00bb67be00
  9434 ms     | 0x209a PK11_DeriveWithTemplate()
  9434 ms  0x209a ret:0x7f00bef8cc00
  9434 ms  0x209a PK11_Derive()
  9434 ms  0x209a basekey:0x7f00bef8cc00
  9434 ms     | 0x209a PK11_DeriveWithTemplate()
  9434 ms  0x209a ret:0x7f00bef9d800
  9434 ms  0x209a SECKEY_DestroyPrivateKey()
  9434 ms  0x209a privk:0x7f00bbae9020::7f00bbae9020  30 b3 3d b3                                      0.=.
  9435 ms  0x209a privk:0x7f00bbae9020::7f00bbae9020  e5 e5 e5 e5                                      ....
  9435 ms  0x209a PK11_Encrypt()
  9435 ms  0x209a symkey:0x7f00bef9de80
  9436 ms  0x209a SSL_AuthCertificateComplete()
  9436 ms  0x209a fd:0x7f00b795e4f0
  9436 ms  0x209a err:0x0
  9436 ms  0x209a PK11_Encrypt()
  9436 ms  0x209a symkey:0x7f00bef9de80
  9437 ms  SECKEY_ECParamsToKeySize()
  9437 ms  0x209a ret:0x100
  9437 ms  0x209a SECKEY_CreateECPrivateKey()
  9437 ms  0x209a cx:0x7f00bfcadaa8
  9438 ms     | 0x209a EC_ValidatePublicKey()
  9439 ms     | 0x209a ret:0x0
  9439 ms  0x209a ret:0x7f00bbae9820::7f00bbae9820  00 b6 3d b3                                      ..=.
  9439 ms  0x209a PK11_PubDeriveWithKDF()
  9439 ms  0x209a seckey:0x7f00bbae9820
  9439 ms     | 0x209a EC_ValidatePublicKey()
  9443 ms     | 0x209a ret:0x0
  9444 ms  0x209a ret:0x7f00bb67be00
  9444 ms  0x209a PK11_DeriveWithFlags()
  9444 ms  0x209a basekey:0x7f00bb67be00
  9444 ms     | 0x209a PK11_DeriveWithTemplate()
  9444 ms  0x209a ret:0x7f00befa4d80
  9444 ms  0x209a PK11_Derive()
  9444 ms  0x209a basekey:0x7f00befa4d80
  9444 ms     | 0x209a PK11_DeriveWithTemplate()
  9444 ms  0x209a ret:0x7f00befa4e00
  9444 ms  0x209a SECKEY_DestroyPrivateKey()
  9444 ms  0x209a privk:0x7f00bbae9820::7f00bbae9820  00 b6 3d b3                                      ..=.
  9444 ms  0x209a privk:0x7f00bbae9820::7f00bbae9820  e5 e5 e5 e5                                      ....
  9445 ms  0x209a PK11_Encrypt()
  9445 ms  0x209a symkey:0x7f00befa5000
  9451 ms  0x209a SSL_AuthCertificateComplete()
  9451 ms  0x209a fd:0x7f00b795e8e0
  9451 ms  0x209a err:0x0
           /* TID 0x20a2 */
  9452 ms  0x20a2 PR_Close()
  9452 ms  0x20a2 fd:0x7f00b15e2580
           /* TID 0x209a */
  9456 ms  0x209a PK11_Encrypt()
  9456 ms  0x209a symkey:0x7f00befa5000
  9457 ms  SECKEY_ECParamsToKeySize()
  9457 ms  0x209a ret:0x100
  9457 ms  0x209a SECKEY_CreateECPrivateKey()
  9457 ms  0x209a cx:0x7f00bfcadc48
  9458 ms     | 0x209a EC_ValidatePublicKey()
  9459 ms     | 0x209a ret:0x0
  9459 ms  0x209a ret:0x7f00bbb8f020::7f00bbb8f020  00 b6 3d b3                                      ..=.
  9459 ms  0x209a PK11_PubDeriveWithKDF()
  9459 ms  0x209a seckey:0x7f00bbb8f020
  9459 ms     | 0x209a EC_ValidatePublicKey()
  9460 ms     | 0x209a ret:0x0
  9462 ms  0x209a ret:0x7f00bb67be00
  9462 ms  0x209a PK11_DeriveWithFlags()
  9462 ms  0x209a basekey:0x7f00bb67be00
  9462 ms     | 0x209a PK11_DeriveWithTemplate()
  9462 ms  0x209a ret:0x7f00befa5680
  9462 ms  0x209a PK11_Derive()
  9462 ms  0x209a basekey:0x7f00befa5680
  9462 ms     | 0x209a PK11_DeriveWithTemplate()
  9462 ms  0x209a ret:0x7f00befa5700
  9462 ms  0x209a SECKEY_DestroyPrivateKey()
  9462 ms  0x209a privk:0x7f00bbb8f020::7f00bbb8f020  00 b6 3d b3                                      ..=.
  9462 ms  0x209a privk:0x7f00bbb8f020::7f00bbb8f020  e5 e5 e5 e5                                      ....
  9462 ms  0x209a PK11_Encrypt()
  9462 ms  0x209a symkey:0x7f00befa5d00
  9472 ms  SECKEY_ECParamsToKeySize()
  9472 ms  0x209a ret:0x100
  9472 ms  0x209a SECKEY_CreateECPrivateKey()
  9472 ms  0x209a cx:0x7f00bfcadde8
  9472 ms     | 0x209a EC_ValidatePublicKey()
  9474 ms     | 0x209a ret:0x0
  9474 ms  0x209a ret:0x7f00bc33f020::7f00bc33f020  90 b7 3d b3                                      ..=.
  9474 ms  0x209a PK11_PubDeriveWithKDF()
  9474 ms  0x209a seckey:0x7f00bc33f020
  9474 ms     | 0x209a EC_ValidatePublicKey()
  9478 ms     | 0x209a ret:0x0
  9479 ms  0x209a ret:0x7f00bb67be00
  9479 ms  0x209a PK11_DeriveWithFlags()
  9479 ms  0x209a basekey:0x7f00bb67be00
  9479 ms     | 0x209a PK11_DeriveWithTemplate()
  9479 ms  0x209a ret:0x7f00bfa06e00
  9479 ms  0x209a PK11_Derive()
  9479 ms  0x209a basekey:0x7f00bfa06e00
  9480 ms     | 0x209a PK11_DeriveWithTemplate()
  9480 ms  0x209a ret:0x7f00bfa06f00
  9480 ms  0x209a SECKEY_DestroyPrivateKey()
  9480 ms  0x209a privk:0x7f00bc33f020::7f00bc33f020  90 b7 3d b3                                      ..=.
  9480 ms  0x209a privk:0x7f00bc33f020::7f00bc33f020  e5 e5 e5 e5                                      ....
  9480 ms  0x209a PK11_Encrypt()
  9480 ms  0x209a symkey:0x7f00bfa07180
  9484 ms  0x209a SSL_AuthCertificateComplete()
  9484 ms  0x209a fd:0x7f00b79ed910
  9484 ms  0x209a err:0x0
  9484 ms  0x209a SSL_AuthCertificateComplete()
  9484 ms  0x209a fd:0x7f00b79fb0d0
  9484 ms  0x209a err:0x0
  9484 ms  0x209a PK11_Encrypt()
  9484 ms  0x209a symkey:0x7f00bb67c000
  9484 ms  0x209a PK11_Encrypt()
  9484 ms  0x209a symkey:0x7f00befa5d00
  9484 ms  0x209a PK11_Encrypt()
  9484 ms  0x209a symkey:0x7f00bfa07180
  9529 ms  0x209a SECKEY_CreateECPrivateKey()
  9529 ms  0x209a cx:0x7f00bfcae948
  9530 ms     | 0x209a EC_ValidatePublicKey()
  9530 ms     | 0x209a ret:0x0
  9530 ms  0x209a ret:0x7f00bc33e020::7f00bc33e020  40 b7 3d b3                                      @.=.
  9530 ms  0x209a SECKEY_CreateECPrivateKey()
  9530 ms  0x209a cx:0x7f00bfcae948
  9530 ms     | 0x209a EC_ValidatePublicKey()
  9532 ms     | 0x209a ret:0x0
  9532 ms  0x209a ret:0x7f00bc409820::7f00bc409820  f0 96 3f b3                                      ..?.
  9566 ms  0x209a SECKEY_DestroyPrivateKey()
  9566 ms  0x209a privk:0x7f00bbb89820::7f00bbb89820  60 af ea b2                                      `...
  9566 ms  0x209a privk:0x7f00bbb89820::7f00bbb89820  e5 e5 e5 e5                                      ....
  9566 ms  0x209a SECKEY_DestroyPrivateKey()
  9566 ms  0x209a privk:0x7f00bbb87020::7f00bbb87020  30 bd 04 b3                                      0...
  9566 ms  0x209a privk:0x7f00bbb87020::7f00bbb87020  e5 e5 e5 e5                                      ....
  9576 ms  0x209a SECKEY_DestroyPrivateKey()
  9576 ms  0x209a privk:0x7f00bbb8e020::7f00bbb8e020  b0 3a 0f b3                                      .:..
  9576 ms  0x209a privk:0x7f00bbb8e020::7f00bbb8e020  e5 e5 e5 e5                                      ....
  9576 ms  0x209a SECKEY_DestroyPrivateKey()
  9576 ms  0x209a privk:0x7f00bbb8c020::7f00bbb8c020  b0 30 0f b3                                      .0..
  9576 ms  0x209a privk:0x7f00bbb8c020::7f00bbb8c020  e5 e5 e5 e5                                      ....
  9597 ms  0x209a SECKEY_DestroyPrivateKey()
  9597 ms  0x209a privk:0x7f00bbb92820::7f00bbb92820  30 78 35 b3                                      0x5.
  9597 ms  0x209a privk:0x7f00bbb92820::7f00bbb92820  e5 e5 e5 e5                                      ....
  9598 ms  0x209a SECKEY_DestroyPrivateKey()
  9598 ms  0x209a privk:0x7f00bbb90820::7f00bbb90820  90 3c 0f b3                                      .<..
  9598 ms  0x209a privk:0x7f00bbb90820::7f00bbb90820  e5 e5 e5 e5                                      ....
  9614 ms  0x209a SECKEY_DestroyPrivateKey()
  9614 ms  0x209a privk:0x7f00bbb97020::7f00bbb97020  90 b2 3d b3                                      ..=.
  9614 ms  0x209a privk:0x7f00bbb97020::7f00bbb97020  e5 e5 e5 e5                                      ....
  9614 ms  0x209a SECKEY_DestroyPrivateKey()
  9614 ms  0x209a privk:0x7f00bbb95020::7f00bbb95020  10 7f 35 b3                                      ..5.
  9614 ms  0x209a privk:0x7f00bbb95020::7f00bbb95020  e5 e5 e5 e5                                      ....
  9672 ms  SECKEY_ECParamsToKeySize()
  9672 ms  0x209a ret:0x100
  9672 ms  0x209a SECKEY_CreateECPrivateKey()
  9672 ms  0x209a cx:0x7f00bfcae948
  9673 ms     | 0x209a EC_ValidatePublicKey()
  9675 ms     | 0x209a ret:0x0
  9678 ms  0x209a ret:0x7f00bbb88820::7f00bbb88820  f0 bb 04 b3                                      ....
  9678 ms  0x209a PK11_PubDeriveWithKDF()
  9678 ms  0x209a seckey:0x7f00bbb88820
  9678 ms     | 0x209a EC_ValidatePublicKey()
  9680 ms     | 0x209a ret:0x0
  9682 ms  0x209a ret:0x7f00bb67be00
  9682 ms  0x209a PK11_DeriveWithFlags()
  9682 ms  0x209a basekey:0x7f00bb67be00
  9682 ms     | 0x209a PK11_DeriveWithTemplate()
  9682 ms  0x209a ret:0x7f00bef76380
  9682 ms  0x209a PK11_Derive()
  9682 ms  0x209a basekey:0x7f00bef76380
  9682 ms     | 0x209a PK11_DeriveWithTemplate()
  9682 ms  0x209a ret:0x7f00bfa07300
  9682 ms  0x209a SECKEY_DestroyPrivateKey()
  9682 ms  0x209a privk:0x7f00bbb88820::7f00bbb88820  f0 bb 04 b3                                      ....
  9682 ms  0x209a privk:0x7f00bbb88820::7f00bbb88820  e5 e5 e5 e5                                      ....
  9682 ms  0x209a PK11_Encrypt()
  9682 ms  0x209a symkey:0x7f00bfa07580
  9685 ms  0x209a SSL_AuthCertificateComplete()
  9685 ms  0x209a fd:0x7f00b7ca3190
  9685 ms  0x209a err:0x0
  9685 ms  0x209a PK11_Encrypt()
  9685 ms  0x209a symkey:0x7f00bfa07580
           /* TID 0x20a2 */
  9700 ms  0x20a2 PR_Close()
  9700 ms  0x20a2 fd:0x7f00b79fb0a0
  9700 ms  0x20a2 PR_Close()
  9700 ms  0x20a2 fd:0x7f00b7ca3250
           /* TID 0x209a */
  9703 ms  0x209a PK11_Encrypt()
  9703 ms  0x209a symkey:0x7f00a05fea00
           /* TID 0x20a2 */
  9784 ms  0x20a2 PR_Close()
  9784 ms  0x20a2 fd:0x7f00b7542c70
           /* TID 0x209a */
  9821 ms  0x209a SECKEY_DestroyPrivateKey()
  9821 ms  0x209a privk:0x7f00bc409820::7f00bc409820  f0 96 3f b3                                      ..?.
  9821 ms  0x209a privk:0x7f00bc409820::7f00bc409820  e5 e5 e5 e5                                      ....
  9822 ms  0x209a SECKEY_DestroyPrivateKey()
  9822 ms  0x209a privk:0x7f00bc33e020::7f00bc33e020  40 b7 3d b3                                      @.=.
  9822 ms  0x209a privk:0x7f00bc33e020::7f00bc33e020  e5 e5 e5 e5                                      ....
           /* TID 0x20a2 */
  9864 ms  0x20a2 PR_Close()
  9864 ms  0x20a2 fd:0x7f00b7925e50
  9935 ms  0x20a2 PR_Close()
  9935 ms  0x20a2 fd:0x7f00b78f72e0
  9961 ms  0x20a2 PR_Close()
  9961 ms  0x20a2 fd:0x7f00b78f72e0
 10095 ms  0x20a2 PR_Close()
 10095 ms  0x20a2 fd:0x7f00b78f72e0
 10182 ms  0x20a2 PR_Close()
 10182 ms  0x20a2 fd:0x7f00b7542c70
           /* TID 0x209a */
 10184 ms  0x209a PK11_Encrypt()
 10184 ms  0x209a symkey:0x7f00b4ab9f00
 10184 ms  0x209a PK11_Encrypt()
 10184 ms  0x209a symkey:0x7f00b4ab9f00
 10184 ms  0x209a PK11_Encrypt()
 10184 ms  0x209a symkey:0x7f00b4ab9f00
 10184 ms  0x209a PK11_Encrypt()
 10184 ms  0x209a symkey:0x7f00b4ab9f00
 10185 ms  0x209a PK11_Encrypt()
 10185 ms  0x209a symkey:0x7f00bef68600
 10185 ms  0x209a PK11_Encrypt()
 10185 ms  0x209a symkey:0x7f00bef68600
 10185 ms  0x209a PK11_Encrypt()
 10185 ms  0x209a symkey:0x7f00b4ab9f00
 10185 ms  0x209a PK11_Encrypt()
 10185 ms  0x209a symkey:0x7f00b4ab9f00
 10186 ms  0x209a PK11_Encrypt()
 10186 ms  0x209a symkey:0x7f00b79e2800
           /* TID 0x20a2 */
 10221 ms  0x20a2 PR_Close()
 10221 ms  0x20a2 fd:0x7f00b7925ca0
 10223 ms  0x20a2 PR_Close()
 10223 ms  0x20a2 fd:0x7f00b7925ca0
           /* TID 0x209a */
 10223 ms  0x209a PK11_Encrypt()
 10223 ms  0x209a symkey:0x7f00bef68600
           /* TID 0x20a2 */
 10258 ms  0x20a2 PR_Close()
 10258 ms  0x20a2 fd:0x7f00b7925ca0
 10260 ms  0x20a2 PR_Close()
 10260 ms  0x20a2 fd:0x7f00b7925ca0
 10260 ms  0x20a2 PR_Close()
 10260 ms  0x20a2 fd:0x7f00b795e4c0
 10263 ms  0x20a2 PR_Close()
 10263 ms  0x20a2 fd:0x7f00b7925ca0
 10264 ms  0x20a2 PR_Close()
 10264 ms  0x20a2 fd:0x7f00b7925ca0
 10291 ms  0x20a2 PR_Close()
 10291 ms  0x20a2 fd:0x7f00b7925ca0
           /* TID 0x209a */
 10409 ms  0x209a SSL_ImportFD()
 10410 ms  0x209a ret:0x7f00b79edca0
 10410 ms  0x209a SSL_AuthCertificateHook()
 10410 ms  0x209a fd:0x7f00b79edca0
 10410 ms  0x209a ret:0x0
 10410 ms  0x209a PR_Connect()
 10410 ms  0x209a fd:0x7f00b79edca0
 10418 ms  0x209a PK11_Encrypt()
 10418 ms  0x209a symkey:0x7f00bef68600
 10423 ms  0x209a SSL_ImportFD()
 10423 ms  0x209a ret:0x7f00b7ca3ee0
 10423 ms  0x209a SSL_AuthCertificateHook()
 10423 ms  0x209a fd:0x7f00b7ca3ee0
 10423 ms  0x209a ret:0x0
 10423 ms  0x209a PR_Connect()
 10423 ms  0x209a fd:0x7f00b7ca3ee0
 10425 ms  0x209a PK11_Encrypt()
 10425 ms  0x209a symkey:0x7f00a05fea00
 10438 ms  0x209a SSL_ImportFD()
 10438 ms  0x209a ret:0x7f00b7cab9d0
 10438 ms  0x209a SSL_AuthCertificateHook()
 10438 ms  0x209a fd:0x7f00b7cab9d0
 10438 ms  0x209a ret:0x0
 10438 ms  0x209a PR_Connect()
 10438 ms  0x209a fd:0x7f00b7cab9d0
 10456 ms  0x209a PK11_Encrypt()
 10456 ms  0x209a symkey:0x7f00bef68600
 10470 ms  0x209a SECKEY_CreateECPrivateKey()
 10470 ms  0x209a cx:0x7f00bfcaee28
 10471 ms     | 0x209a EC_ValidatePublicKey()
 10471 ms     | 0x209a ret:0x0
 10471 ms  0x209a ret:0x7f00bbb91820::7f00bbb91820  c0 be 04 b3                                      ....
 10471 ms  0x209a SECKEY_CreateECPrivateKey()
 10471 ms  0x209a cx:0x7f00bfcaee28
 10471 ms     | 0x209a EC_ValidatePublicKey()
 10473 ms     | 0x209a ret:0x0
 10473 ms  0x209a ret:0x7f00bbb93820::7f00bbb93820  f0 31 0f b3                                      .1..
           /* TID 0x20a2 */
 10486 ms  0x20a2 PR_Close()
 10486 ms  0x20a2 fd:0x7f00b79470a0
           /* TID 0x209a */
 10496 ms  0x209a SECKEY_CreateECPrivateKey()
 10496 ms  0x209a cx:0x7f00bfcaefc8
 10497 ms     | 0x209a EC_ValidatePublicKey()
 10497 ms     | 0x209a ret:0x0
 10497 ms  0x209a ret:0x7f00bbb96020::7f00bbb96020  00 76 35 b3                                      .v5.
 10497 ms  0x209a SECKEY_CreateECPrivateKey()
 10497 ms  0x209a cx:0x7f00bfcaefc8
 10497 ms     | 0x209a EC_ValidatePublicKey()
 10499 ms     | 0x209a ret:0x0
 10499 ms  0x209a ret:0x7f00bbb99020::7f00bbb99020  70 7e 35 b3                                      p~5.
 10520 ms  0x209a PK11_Derive()
 10520 ms  0x209a basekey:0x7f00bb67be00
 10520 ms     | 0x209a PK11_DeriveWithTemplate()
 10520 ms  0x209a ret:0x7f00bef68880
 10521 ms  0x209a PK11_PubDeriveWithKDF()
 10521 ms  0x209a seckey:0x7f00bbb91820
 10521 ms     | 0x209a EC_ValidatePublicKey()
 10521 ms     | 0x209a ret:0x0
 10521 ms  0x209a ret:0x7f00bb67be00
 10521 ms  SECKEY_ECParamsToKeySize()
 10521 ms  0x209a ret:0xff
 10521 ms  0x209a PK11_DeriveWithFlags()
 10521 ms  0x209a basekey:0x7f00bef68880
 10521 ms     | 0x209a PK11_DeriveWithTemplate()
 10521 ms  0x209a ret:0x7f00bef9c300
 10521 ms  0x209a PK11_Derive()
 10521 ms  0x209a basekey:0x7f00bb67be00
 10521 ms     | 0x209a PK11_DeriveWithTemplate()
 10521 ms  0x209a ret:0x7f00bef9c900
 10521 ms  0x209a PK11_DeriveWithFlags()
 10521 ms  0x209a basekey:0x7f00bef9c900
 10521 ms     | 0x209a PK11_DeriveWithTemplate()
 10521 ms  0x209a ret:0x7f00bef68880
 10521 ms  0x209a PK11_DeriveWithFlags()
 10521 ms  0x209a basekey:0x7f00bef9c900
 10521 ms     | 0x209a PK11_DeriveWithTemplate()
 10521 ms  0x209a ret:0x7f00bb67be00
 10521 ms  0x209a PK11_DeriveWithFlags()
 10521 ms  0x209a basekey:0x7f00bef9c900
 10521 ms     | 0x209a PK11_DeriveWithTemplate()
 10521 ms  0x209a ret:0x7f00bef9c300
 10521 ms  0x209a PK11_Derive()
 10521 ms  0x209a basekey:0x7f00bfad2f80
 10521 ms     | 0x209a PK11_DeriveWithTemplate()
 10521 ms  0x209a ret:0x7f00bfc0d400
 10521 ms  0x209a PK11_DeriveWithFlags()
 10521 ms  0x209a basekey:0x7f00bb67be00
 10521 ms     | 0x209a PK11_DeriveWithTemplate()
 10521 ms  0x209a ret:0x7f00bef9c900
 10521 ms  0x209a PK11_DeriveWithFlags()
 10521 ms  0x209a basekey:0x7f00bb67be00
 10521 ms     | 0x209a PK11_DeriveWithTemplate()
 10521 ms  0x209a ret:0x7f00bef9c300
 10523 ms  SECKEY_ECParamsToKeySize()
 10523 ms  0x209a ret:0x100
 10523 ms  SECKEY_ECParamsToBasePointOrderLen()
 10523 ms  0x209a ret:0x100
 10523 ms  SECKEY_ECParamsToBasePointOrderLen()
 10523 ms  0x209a ret:0x100
 10523 ms  0x209a EC_ValidatePublicKey()
 10524 ms  0x209a ret:0x0
 10537 ms  0x209a PK11_DeriveWithFlags()
 10537 ms  0x209a basekey:0x7f00bb67be00
 10537 ms     | 0x209a PK11_DeriveWithTemplate()
 10537 ms  0x209a ret:0x7f00bef9c300
 10543 ms  0x209a SECKEY_CreateECPrivateKey()
 10543 ms  0x209a cx:0x7f00bfcaec88
 10543 ms     | 0x209a EC_ValidatePublicKey()
 10543 ms     | 0x209a ret:0x0
 10543 ms  0x209a ret:0x7f00bc459820::7f00bc459820  f0 96 3f b3                                      ..?.
 10544 ms  0x209a SECKEY_CreateECPrivateKey()
 10544 ms  0x209a cx:0x7f00bfcaec88
 10544 ms     | 0x209a EC_ValidatePublicKey()
 10546 ms     | 0x209a ret:0x0
 10546 ms  0x209a ret:0x7f00bc45b820::7f00bc45b820  90 b7 3d b3                                      ..=.
 10559 ms  SECKEY_ECParamsToKeySize()
 10559 ms  0x209a ret:0x100
 10559 ms  0x209a SECKEY_CreateECPrivateKey()
 10559 ms  0x209a cx:0x7f00bfcaefc8
 10560 ms     | 0x209a EC_ValidatePublicKey()
 10561 ms     | 0x209a ret:0x0
 10564 ms  0x209a ret:0x7f00bc45f020::7f00bc45f020  f0 9b 3f b3                                      ..?.
 10564 ms  0x209a PK11_PubDeriveWithKDF()
 10564 ms  0x209a seckey:0x7f00bc45f020
 10564 ms     | 0x209a EC_ValidatePublicKey()
 10565 ms     | 0x209a ret:0x0
 10567 ms  0x209a ret:0x7f00bef9c300
 10567 ms  0x209a PK11_DeriveWithFlags()
 10567 ms  0x209a basekey:0x7f00bef9c300
 10567 ms     | 0x209a PK11_DeriveWithTemplate()
 10567 ms  0x209a ret:0x7f00bfad2f80
 10567 ms  0x209a PK11_Derive()
 10567 ms  0x209a basekey:0x7f00bfad2f80
 10567 ms     | 0x209a PK11_DeriveWithTemplate()
 10567 ms  0x209a ret:0x7f00bef77780
 10567 ms  0x209a SECKEY_DestroyPrivateKey()
 10567 ms  0x209a privk:0x7f00bc45f020::7f00bc45f020  f0 9b 3f b3                                      ..?.
 10567 ms  0x209a privk:0x7f00bc45f020::7f00bc45f020  e5 e5 e5 e5                                      ....
 10567 ms  0x209a PK11_Encrypt()
 10567 ms  0x209a symkey:0x7f00bfc2f480
 10567 ms  0x209a SSL_AuthCertificateComplete()
 10567 ms  0x209a fd:0x7f00b7cab9d0
 10567 ms  0x209a err:0x0
 10568 ms  0x209a PK11_Encrypt()
 10568 ms  0x209a symkey:0x7f00bfc2f480
 10586 ms  0x209a PK11_Encrypt()
 10586 ms  0x209a symkey:0x7f00bef68600
 10586 ms  0x209a SSL_ImportFD()
 10586 ms  0x209a ret:0x7f00b7e49be0
 10586 ms  0x209a SSL_AuthCertificateHook()
 10586 ms  0x209a fd:0x7f00b7e49be0
 10586 ms  0x209a ret:0x0
 10586 ms  0x209a PR_Connect()
 10586 ms  0x209a fd:0x7f00b7e49be0
 10624 ms  0x209a PK11_Encrypt()
 10624 ms  0x209a symkey:0x7f00bef68600
 10626 ms  0x209a SECKEY_DestroyPrivateKey()
 10626 ms  0x209a privk:0x7f00bbb99020::7f00bbb99020  70 7e 35 b3                                      p~5.
 10626 ms  0x209a privk:0x7f00bbb99020::7f00bbb99020  e5 e5 e5 e5                                      ....
 10626 ms  0x209a SECKEY_DestroyPrivateKey()
 10626 ms  0x209a privk:0x7f00bbb96020::7f00bbb96020  00 76 35 b3                                      .v5.
 10627 ms  0x209a privk:0x7f00bbb96020::7f00bbb96020  e5 e5 e5 e5                                      ....
 10634 ms  0x209a SECKEY_CreateECPrivateKey()
 10634 ms  0x209a cx:0x7f00bfcaf648
 10635 ms     | 0x209a EC_ValidatePublicKey()
 10635 ms     | 0x209a ret:0x0
 10636 ms  0x209a ret:0x7f00bbb95020::7f00bbb95020  80 48 8c b1                                      .H..
 10637 ms  0x209a SECKEY_CreateECPrivateKey()
 10637 ms  0x209a cx:0x7f00bfcaf648
 10638 ms     | 0x209a EC_ValidatePublicKey()
 10642 ms     | 0x209a ret:0x0
 10642 ms  0x209a ret:0x7f00bbb97020::7f00bbb97020  f0 7b 35 b3                                      .{5.
 10682 ms  0x209a PK11_DeriveWithFlags()
 10682 ms  0x209a basekey:0x7f00bef9c300
 10682 ms     | 0x209a PK11_DeriveWithTemplate()
 10682 ms  0x209a ret:0x7f00bfc30980
 10682 ms  0x209a PK11_Derive()
 10682 ms  0x209a basekey:0x7f00bfc30980
 10682 ms     | 0x209a PK11_DeriveWithTemplate()
 10682 ms  0x209a ret:0x7f00bfc30a00
           /* TID 0x20fb */
 10683 ms  0x20fb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10684 ms  0x20fb ret:0x0
           /* TID 0x20a2 */
 10685 ms  0x20a2 PR_Close()
 10685 ms  0x20a2 fd:0x7f00b7ebb6d0
           /* TID 0x209a */
 10687 ms  0x209a PR_Connect()
 10687 ms  0x209a fd:0x7f00b7e49c10
 10691 ms  0x209a PK11_Derive()
 10691 ms  0x209a basekey:0x7f00bef9c300
 10691 ms     | 0x209a PK11_DeriveWithTemplate()
 10691 ms  0x209a ret:0x7f00bfc18c00
 10691 ms  0x209a PK11_PubDeriveWithKDF()
 10691 ms  0x209a seckey:0x7f00bbb95020
 10691 ms     | 0x209a EC_ValidatePublicKey()
 10691 ms     | 0x209a ret:0x0
 10692 ms  0x209a ret:0x7f00bef9c300
 10692 ms  SECKEY_ECParamsToKeySize()
 10692 ms  0x209a ret:0xff
 10692 ms  0x209a PK11_DeriveWithFlags()
 10692 ms  0x209a basekey:0x7f00bfc18c00
 10692 ms     | 0x209a PK11_DeriveWithTemplate()
 10692 ms  0x209a ret:0x7f00bfc18d00
 10692 ms  0x209a PK11_Derive()
 10692 ms  0x209a basekey:0x7f00bef9c300
 10692 ms     | 0x209a PK11_DeriveWithTemplate()
 10692 ms  0x209a ret:0x7f00bfc2f080
 10692 ms  0x209a PK11_DeriveWithFlags()
 10692 ms  0x209a basekey:0x7f00bfc2f080
 10692 ms     | 0x209a PK11_DeriveWithTemplate()
 10692 ms  0x209a ret:0x7f00bfc18c00
 10692 ms  0x209a PK11_DeriveWithFlags()
 10692 ms  0x209a basekey:0x7f00bfc2f080
 10692 ms     | 0x209a PK11_DeriveWithTemplate()
 10692 ms  0x209a ret:0x7f00bef9c300
 10692 ms  0x209a PK11_DeriveWithFlags()
 10692 ms  0x209a basekey:0x7f00bfc2f080
 10692 ms     | 0x209a PK11_DeriveWithTemplate()
 10692 ms  0x209a ret:0x7f00bfc18d00
 10692 ms  0x209a PK11_Derive()
 10692 ms  0x209a basekey:0x7f00bfc2f180
 10692 ms     | 0x209a PK11_DeriveWithTemplate()
 10692 ms  0x209a ret:0x7f00bfc30d00
 10692 ms  0x209a PK11_DeriveWithFlags()
 10692 ms  0x209a basekey:0x7f00bef9c300
 10692 ms     | 0x209a PK11_DeriveWithTemplate()
 10692 ms  0x209a ret:0x7f00bfc2f080
 10692 ms  0x209a PK11_DeriveWithFlags()
 10692 ms  0x209a basekey:0x7f00bef9c300
 10692 ms     | 0x209a PK11_DeriveWithTemplate()
 10692 ms  0x209a ret:0x7f00bfc18d00
 10693 ms  SECKEY_ECParamsToKeySize()
 10693 ms  0x209a ret:0x100
 10693 ms  SECKEY_ECParamsToBasePointOrderLen()
 10693 ms  0x209a ret:0x100
 10693 ms  SECKEY_ECParamsToBasePointOrderLen()
 10693 ms  0x209a ret:0x100
 10693 ms  0x209a EC_ValidatePublicKey()
 10695 ms  0x209a ret:0x0
 10698 ms  0x209a PK11_DeriveWithFlags()
 10698 ms  0x209a basekey:0x7f00bef9c300
 10698 ms     | 0x209a PK11_DeriveWithTemplate()
 10698 ms  0x209a ret:0x7f00bfc18d00
 10698 ms  0x209a SSL_AuthCertificateComplete()
 10698 ms  0x209a fd:0x7f00b7ca3ee0
 10698 ms  0x209a err:0x0
 10698 ms     | 0x209a PK11_DeriveWithFlags()
 10698 ms     | 0x209a basekey:0x7f00bfc0d400
 10698 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10698 ms     | 0x209a ret:0x7f00bfc18d00
 10698 ms     | 0x209a PK11_DeriveWithFlags()
 10698 ms     | 0x209a basekey:0x7f00bfc0d400
 10698 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10698 ms     | 0x209a ret:0x7f00bfc2f180
 10698 ms     | 0x209a PK11_DeriveWithFlags()
 10698 ms     | 0x209a basekey:0x7f00bfc0d400
 10698 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10698 ms     | 0x209a ret:0x7f00bfc18e80
 10698 ms     | 0x209a PK11_DeriveWithFlags()
 10698 ms     | 0x209a basekey:0x7f00bef68880
 10698 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10698 ms     | 0x209a ret:0x7f00bfc30e00
 10698 ms     | 0x209a PK11_DeriveWithFlags()
 10698 ms     | 0x209a basekey:0x7f00bef68880
 10698 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10698 ms     | 0x209a ret:0x7f00bfc30e80
 10698 ms     | 0x209a PK11_DeriveWithFlags()
 10698 ms     | 0x209a basekey:0x7f00bfc2f180
 10698 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10698 ms     | 0x209a ret:0x7f00bfc30e80
 10698 ms     | 0x209a PK11_DeriveWithFlags()
 10698 ms     | 0x209a basekey:0x7f00bfc2f180
 10698 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10698 ms     | 0x209a ret:0x7f00bfc32100
 10698 ms     | 0x209a PK11_DeriveWithFlags()
 10698 ms     | 0x209a basekey:0x7f00bef68880
 10698 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10698 ms     | 0x209a ret:0x7f00bef9c900
 10698 ms     | 0x209a PK11_Encrypt()
 10698 ms     | 0x209a symkey:0x7f00bfc30e00
 10698 ms     | 0x209a PK11_DeriveWithFlags()
 10698 ms     | 0x209a basekey:0x7f00bfc18d00
 10698 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10698 ms     | 0x209a ret:0x7f00bef9c900
 10698 ms     | 0x209a PK11_DeriveWithFlags()
 10698 ms     | 0x209a basekey:0x7f00bfc18d00
 10698 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10698 ms     | 0x209a ret:0x7f00bfc32100
 10698 ms     | 0x209a PK11_DeriveWithFlags()
 10698 ms     | 0x209a basekey:0x7f00bfc0d400
 10698 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10698 ms     | 0x209a ret:0x7f00bfc30e00
 10699 ms     | 0x209a SECKEY_DestroyPrivateKey()
 10699 ms     | 0x209a privk:0x7f00bbb93820::7f00bbb93820  f0 31 0f b3                                      .1..
 10699 ms     | 0x209a privk:0x7f00bbb93820::7f00bbb93820  e5 e5 e5 e5                                      ....
 10699 ms     | 0x209a SECKEY_DestroyPrivateKey()
 10699 ms     | 0x209a privk:0x7f00bbb91820::7f00bbb91820  c0 be 04 b3                                      ....
 10699 ms     | 0x209a privk:0x7f00bbb91820::7f00bbb91820  e5 e5 e5 e5                                      ....
 10699 ms  0x209a SSL_AuthCertificateComplete()
 10699 ms  0x209a fd:0x7f00b7e49be0
 10699 ms  0x209a err:0x0
 10699 ms     | 0x209a PK11_DeriveWithFlags()
 10699 ms     | 0x209a basekey:0x7f00bfc30d00
 10699 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10699 ms     | 0x209a ret:0x7f00bb67be00
 10699 ms     | 0x209a PK11_DeriveWithFlags()
 10699 ms     | 0x209a basekey:0x7f00bfc30d00
 10699 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10699 ms     | 0x209a ret:0x7f00bef68880
 10699 ms     | 0x209a PK11_DeriveWithFlags()
 10699 ms     | 0x209a basekey:0x7f00bfc30d00
 10699 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10699 ms     | 0x209a ret:0x7f00bfc0d400
 10699 ms     | 0x209a PK11_DeriveWithFlags()
 10699 ms     | 0x209a basekey:0x7f00bfc18c00
 10699 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10699 ms     | 0x209a ret:0x7f00bfc32100
 10699 ms     | 0x209a PK11_DeriveWithFlags()
 10699 ms     | 0x209a basekey:0x7f00bfc18c00
 10699 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10699 ms     | 0x209a ret:0x7f00bfc32480
 10699 ms     | 0x209a PK11_DeriveWithFlags()
 10699 ms     | 0x209a basekey:0x7f00bef68880
 10699 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10699 ms     | 0x209a ret:0x7f00bfc32480
 10699 ms     | 0x209a PK11_DeriveWithFlags()
 10699 ms     | 0x209a basekey:0x7f00bef68880
 10699 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10699 ms     | 0x209a ret:0x7f00bfc32500
 10699 ms     | 0x209a PK11_DeriveWithFlags()
 10699 ms     | 0x209a basekey:0x7f00bfc18c00
 10699 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10699 ms     | 0x209a ret:0x7f00bfc2f080
 10699 ms     | 0x209a PK11_Encrypt()
 10699 ms     | 0x209a symkey:0x7f00bfc32100
 10699 ms     | 0x209a PK11_DeriveWithFlags()
 10699 ms     | 0x209a basekey:0x7f00bb67be00
 10699 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10699 ms     | 0x209a ret:0x7f00bfc2f080
 10699 ms     | 0x209a PK11_DeriveWithFlags()
 10699 ms     | 0x209a basekey:0x7f00bb67be00
 10699 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10699 ms     | 0x209a ret:0x7f00bfc32500
 10700 ms     | 0x209a PK11_DeriveWithFlags()
 10700 ms     | 0x209a basekey:0x7f00bfc30d00
 10700 ms     |    | 0x209a PK11_DeriveWithTemplate()
 10700 ms     | 0x209a ret:0x7f00bfc32100
 10700 ms     | 0x209a SECKEY_DestroyPrivateKey()
 10700 ms     | 0x209a privk:0x7f00bbb97020::7f00bbb97020  f0 7b 35 b3                                      .{5.
 10700 ms     | 0x209a privk:0x7f00bbb97020::7f00bbb97020  e5 e5 e5 e5                                      ....
 10700 ms     | 0x209a SECKEY_DestroyPrivateKey()
 10700 ms     | 0x209a privk:0x7f00bbb95020::7f00bbb95020  80 48 8c b1                                      .H..
 10700 ms     | 0x209a privk:0x7f00bbb95020::7f00bbb95020  e5 e5 e5 e5                                      ....
 10700 ms  0x209a PK11_Encrypt()
 10700 ms  0x209a symkey:0x7f00bef9c900
 10700 ms  0x209a PK11_Encrypt()
 10700 ms  0x209a symkey:0x7f00bef9c900
 10701 ms  0x209a PK11_Encrypt()
 10701 ms  0x209a symkey:0x7f00bfc2f080
 10702 ms  0x209a PK11_Encrypt()
 10702 ms  0x209a symkey:0x7f00bef9c900
 10746 ms  0x209a PK11_DeriveWithFlags()
 10746 ms  0x209a basekey:0x7f00bfc30e00
 10746 ms     | 0x209a PK11_DeriveWithTemplate()
 10746 ms  0x209a ret:0x7f00bef9c300
 10746 ms  0x209a PK11_DeriveWithFlags()
 10746 ms  0x209a basekey:0x7f00bfc30e00
 10746 ms     | 0x209a PK11_DeriveWithTemplate()
 10746 ms  0x209a ret:0x7f00bef9c300
 10746 ms  0x209a PK11_Encrypt()
 10746 ms  0x209a symkey:0x7f00bef9c900
 10747 ms  0x209a PK11_DeriveWithFlags()
 10747 ms  0x209a basekey:0x7f00bfc32100
 10747 ms     | 0x209a PK11_DeriveWithTemplate()
 10747 ms  0x209a ret:0x7f00bef9c300
 10747 ms  0x209a PK11_DeriveWithFlags()
 10747 ms  0x209a basekey:0x7f00bfc32100
 10747 ms     | 0x209a PK11_DeriveWithTemplate()
 10747 ms  0x209a ret:0x7f00bef9c300
 10748 ms  0x209a PR_Close()
 10748 ms  0x209a fd:0x7f00b7e49be0
 10748 ms     | 0x209a PK11_Encrypt()
 10748 ms     | 0x209a symkey:0x7f00bfc2f080
           /* TID 0x20a2 */
 10774 ms  0x20a2 PR_Close()
 10774 ms  0x20a2 fd:0x7f00b795e4c0
           /* TID 0x213c */
 10774 ms  0x213c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10774 ms  0x213c ret:0x0
           /* TID 0x209a */
 10782 ms  0x209a SSL_AuthCertificateComplete()
 10782 ms  0x209a fd:0x7f00b79edca0
 10782 ms  0x209a err:0x0
 10795 ms  0x209a PK11_Encrypt()
 10795 ms  0x209a symkey:0x7f00bef9c900
 10818 ms  0x209a SECKEY_DestroyPrivateKey()
 10818 ms  0x209a privk:0x7f00bc45b820::7f00bc45b820  90 b7 3d b3                                      ..=.
 10819 ms  0x209a privk:0x7f00bc45b820::7f00bc45b820  e5 e5 e5 e5                                      ....
 10819 ms  0x209a SECKEY_DestroyPrivateKey()
 10819 ms  0x209a privk:0x7f00bc459820::7f00bc459820  f0 96 3f b3                                      ..?.
 10819 ms  0x209a privk:0x7f00bc459820::7f00bc459820  e5 e5 e5 e5                                      ....
 10838 ms  0x209a SSL_ImportFD()
 10838 ms  0x209a ret:0x7f00b7cab3d0
 10838 ms  0x209a SSL_AuthCertificateHook()
 10838 ms  0x209a fd:0x7f00b7cab3d0
 10839 ms  0x209a ret:0x0
 10839 ms  0x209a PR_Connect()
 10839 ms  0x209a fd:0x7f00b7cab3d0
 10901 ms  0x209a SSL_ImportFD()
 10901 ms  0x209a ret:0x7f00b7f08d60
 10901 ms  0x209a SSL_AuthCertificateHook()
 10901 ms  0x209a fd:0x7f00b7f08d60
 10901 ms  0x209a ret:0x0
 10901 ms  0x209a PR_Connect()
 10901 ms  0x209a fd:0x7f00b7f08d60
 10901 ms  0x209a SSL_ImportFD()
 10901 ms  0x209a ret:0x7f00b7f08d90
 10901 ms  0x209a SSL_AuthCertificateHook()
 10901 ms  0x209a fd:0x7f00b7f08d90
 10901 ms  0x209a ret:0x0
 10901 ms  0x209a PR_Connect()
 10901 ms  0x209a fd:0x7f00b7f08d90
 10939 ms  0x209a SECKEY_CreateECPrivateKey()
 10939 ms  0x209a cx:0x7f00bfcafb28
 10940 ms     | 0x209a EC_ValidatePublicKey()
 10940 ms     | 0x209a ret:0x0
 10940 ms  0x209a ret:0x7f00bbb93820::7f00bbb93820  f0 7b 35 b3                                      .{5.
 10940 ms  0x209a SECKEY_CreateECPrivateKey()
 10940 ms  0x209a cx:0x7f00bfcafb28
 10943 ms     | 0x209a EC_ValidatePublicKey()
 10948 ms     | 0x209a ret:0x0
 10948 ms  0x209a ret:0x7f00bbb96820::7f00bbb96820  b0 30 0f b3                                      .0..
 10949 ms  0x209a SECKEY_CreateECPrivateKey()
 10949 ms  0x209a cx:0x7f00bfcafe68
 10951 ms     | 0x209a EC_ValidatePublicKey()
 10951 ms     | 0x209a ret:0x0
 10951 ms  0x209a ret:0x7f00bc457820::7f00bc457820  90 b7 3d b3                                      ..=.
 10951 ms  0x209a SECKEY_CreateECPrivateKey()
 10951 ms  0x209a cx:0x7f00bfcafe68
 10952 ms     | 0x209a EC_ValidatePublicKey()
 10960 ms     | 0x209a ret:0x0
 10960 ms  0x209a ret:0x7f00bc45a020::7f00bc45a020  90 97 3f b3                                      ..?.
           /* TID 0x20a2 */
 10967 ms  0x20a2 PR_Close()
 10967 ms  0x20a2 fd:0x7f00b7925e50
           /* TID 0x209a */
 10978 ms  0x209a SECKEY_CreateECPrivateKey()
 10978 ms  0x209a cx:0x7f00bfcaf648
 10978 ms     | 0x209a EC_ValidatePublicKey()
 10978 ms     | 0x209a ret:0x0
 10978 ms  0x209a ret:0x7f00bc460820::7f00bc460820  20 99 3f b3                                       .?.
 10978 ms  0x209a SECKEY_CreateECPrivateKey()
 10978 ms  0x209a cx:0x7f00bfcaf648
 10979 ms     | 0x209a EC_ValidatePublicKey()
 10981 ms     | 0x209a ret:0x0
 10981 ms  0x209a ret:0x7f00bc46d020::7f00bc46d020  10 c5 cc b3                                      ....
 11002 ms  0x209a PK11_Derive()
 11002 ms  0x209a basekey:0x7f00bfc0d400
 11002 ms     | 0x209a PK11_DeriveWithTemplate()
 11002 ms  0x209a ret:0x7f00bef68880
 11002 ms  0x209a PK11_PubDeriveWithKDF()
 11002 ms  0x209a seckey:0x7f00bbb93820
 11002 ms     | 0x209a EC_ValidatePublicKey()
 11002 ms     | 0x209a ret:0x0
 11002 ms  0x209a ret:0x7f00bfc0d400
 11002 ms  SECKEY_ECParamsToKeySize()
 11002 ms  0x209a ret:0xff
 11002 ms  0x209a PK11_DeriveWithFlags()
 11002 ms  0x209a basekey:0x7f00bef68880
 11002 ms     | 0x209a PK11_DeriveWithTemplate()
 11002 ms  0x209a ret:0x7f00bb67be00
 11002 ms  0x209a PK11_Derive()
 11002 ms  0x209a basekey:0x7f00bfc0d400
 11002 ms     | 0x209a PK11_DeriveWithTemplate()
 11003 ms  0x209a ret:0x7f00bfc32100
 11003 ms  0x209a PK11_DeriveWithFlags()
 11003 ms  0x209a basekey:0x7f00bfc32100
 11003 ms     | 0x209a PK11_DeriveWithTemplate()
 11003 ms  0x209a ret:0x7f00bef68880
 11003 ms  0x209a PK11_DeriveWithFlags()
 11003 ms  0x209a basekey:0x7f00bfc32100
 11003 ms     | 0x209a PK11_DeriveWithTemplate()
 11003 ms  0x209a ret:0x7f00bfc0d400
 11003 ms  0x209a PK11_DeriveWithFlags()
 11003 ms  0x209a basekey:0x7f00bfc32100
 11003 ms     | 0x209a PK11_DeriveWithTemplate()
 11003 ms  0x209a ret:0x7f00bb67be00
 11003 ms  0x209a PK11_Derive()
 11003 ms  0x209a basekey:0x7f00bfc32480
 11003 ms     | 0x209a PK11_DeriveWithTemplate()
 11003 ms  0x209a ret:0x7f00bfc2f080
 11003 ms  0x209a PK11_DeriveWithFlags()
 11003 ms  0x209a basekey:0x7f00bfc0d400
 11003 ms     | 0x209a PK11_DeriveWithTemplate()
 11003 ms  0x209a ret:0x7f00bfc32100
 11003 ms  0x209a PK11_DeriveWithFlags()
 11003 ms  0x209a basekey:0x7f00bfc0d400
 11003 ms     | 0x209a PK11_DeriveWithTemplate()
 11003 ms  0x209a ret:0x7f00bb67be00
 11004 ms  SECKEY_ECParamsToKeySize()
 11004 ms  0x209a ret:0x100
 11004 ms  SECKEY_ECParamsToBasePointOrderLen()
 11004 ms  0x209a ret:0x100
 11004 ms  SECKEY_ECParamsToBasePointOrderLen()
 11004 ms  0x209a ret:0x100
 11004 ms  0x209a EC_ValidatePublicKey()
 11006 ms  0x209a ret:0x0
 11008 ms  0x209a PK11_DeriveWithFlags()
 11008 ms  0x209a basekey:0x7f00bfc0d400
 11008 ms     | 0x209a PK11_DeriveWithTemplate()
 11008 ms  0x209a ret:0x7f00bb67be00
 11015 ms  0x209a PK11_Derive()
 11015 ms  0x209a basekey:0x7f00bb67be00
 11015 ms     | 0x209a PK11_DeriveWithTemplate()
 11015 ms  0x209a ret:0x7f00bfc32480
 11015 ms  0x209a PK11_PubDeriveWithKDF()
 11015 ms  0x209a seckey:0x7f00bc457820
 11015 ms     | 0x209a EC_ValidatePublicKey()
 11015 ms     | 0x209a ret:0x0
 11015 ms  0x209a ret:0x7f00bb67be00
 11015 ms  SECKEY_ECParamsToKeySize()
 11015 ms  0x209a ret:0xff
 11015 ms  0x209a PK11_DeriveWithFlags()
 11015 ms  0x209a basekey:0x7f00bfc32480
 11015 ms     | 0x209a PK11_DeriveWithTemplate()
 11015 ms  0x209a ret:0x7f00bef9c300
 11015 ms  0x209a PK11_Derive()
 11015 ms  0x209a basekey:0x7f00bb67be00
 11015 ms     | 0x209a PK11_DeriveWithTemplate()
 11015 ms  0x209a ret:0x7f00bfc18c00
 11015 ms  0x209a PK11_DeriveWithFlags()
 11015 ms  0x209a basekey:0x7f00bfc18c00
 11015 ms     | 0x209a PK11_DeriveWithTemplate()
 11015 ms  0x209a ret:0x7f00bfc32480
 11015 ms  0x209a PK11_DeriveWithFlags()
 11015 ms  0x209a basekey:0x7f00bfc18c00
 11015 ms     | 0x209a PK11_DeriveWithTemplate()
 11015 ms  0x209a ret:0x7f00bb67be00
 11015 ms  0x209a PK11_DeriveWithFlags()
 11015 ms  0x209a basekey:0x7f00bfc18c00
 11015 ms     | 0x209a PK11_DeriveWithTemplate()
 11015 ms  0x209a ret:0x7f00bef9c300
 11015 ms  0x209a PK11_Derive()
 11015 ms  0x209a basekey:0x7f00bfc30d00
 11015 ms     | 0x209a PK11_DeriveWithTemplate()
 11015 ms  0x209a ret:0x7f00bfc32500
 11015 ms  0x209a PK11_DeriveWithFlags()
 11015 ms  0x209a basekey:0x7f00bb67be00
 11015 ms     | 0x209a PK11_DeriveWithTemplate()
 11015 ms  0x209a ret:0x7f00bfc18c00
 11015 ms  0x209a PK11_DeriveWithFlags()
 11015 ms  0x209a basekey:0x7f00bb67be00
 11016 ms     | 0x209a PK11_DeriveWithTemplate()
 11016 ms  0x209a ret:0x7f00bef9c300
 11017 ms  SECKEY_ECParamsToKeySize()
 11017 ms  0x209a ret:0x100
 11017 ms  SECKEY_ECParamsToBasePointOrderLen()
 11017 ms  0x209a ret:0x100
 11017 ms  SECKEY_ECParamsToBasePointOrderLen()
 11017 ms  0x209a ret:0x100
 11017 ms  0x209a EC_ValidatePublicKey()
 11018 ms  0x209a ret:0x0
 11020 ms  0x209a PK11_DeriveWithFlags()
 11020 ms  0x209a basekey:0x7f00bb67be00
 11020 ms     | 0x209a PK11_DeriveWithTemplate()
 11020 ms  0x209a ret:0x7f00bef9c300
 11020 ms  0x209a PR_Connect()
 11020 ms  0x209a fd:0x7f00b7f14280
 11121 ms  SECKEY_ECParamsToKeySize()
 11121 ms  0x209a ret:0x100
 11121 ms  0x209a SECKEY_CreateECPrivateKey()
 11121 ms  0x209a cx:0x7f00bfcaf648
 11122 ms     | 0x209a EC_ValidatePublicKey()
 11123 ms     | 0x209a ret:0x0
 11123 ms  0x209a ret:0x7f00a0864820::7f00a0864820  a0 16 57 b1                                      ..W.
 11123 ms  0x209a PK11_PubDeriveWithKDF()
 11123 ms  0x209a seckey:0x7f00a0864820
 11123 ms     | 0x209a EC_ValidatePublicKey()
 11125 ms     | 0x209a ret:0x0
 11128 ms  0x209a ret:0x7f00bef9c300
 11128 ms  0x209a PK11_DeriveWithFlags()
 11128 ms  0x209a basekey:0x7f00bef9c300
 11129 ms     | 0x209a PK11_DeriveWithTemplate()
 11129 ms  0x209a ret:0x7f00bfc30d00
 11129 ms  0x209a PK11_Derive()
 11129 ms  0x209a basekey:0x7f00bfc30d00
 11129 ms     | 0x209a PK11_DeriveWithTemplate()
 11129 ms  0x209a ret:0x7f00a0565c00
 11129 ms  0x209a SECKEY_DestroyPrivateKey()
 11129 ms  0x209a privk:0x7f00a0864820::7f00a0864820  a0 16 57 b1                                      ..W.
 11129 ms  0x209a privk:0x7f00a0864820::7f00a0864820  e5 e5 e5 e5                                      ....
 11129 ms  0x209a PK11_Encrypt()
 11129 ms  0x209a symkey:0x7f00a0590080
 11129 ms  0x209a PR_Connect()
 11129 ms  0x209a fd:0x7f00a077b7f0
           /* TID 0x20fb */
 11152 ms  0x20fb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11152 ms  0x20fb ret:0x0
           /* TID 0x20a2 */
 11152 ms  0x20a2 PR_Close()
 11152 ms  0x20a2 fd:0x7f00a0656610
           /* TID 0x209a */
 11152 ms  0x209a SSL_AuthCertificateComplete()
 11152 ms  0x209a fd:0x7f00b7f08d60
 11152 ms  0x209a err:0x0
 11153 ms     | 0x209a PK11_DeriveWithFlags()
 11153 ms     | 0x209a basekey:0x7f00bfc2f080
 11153 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11153 ms     | 0x209a ret:0x7f00bef9c300
 11153 ms     | 0x209a PK11_DeriveWithFlags()
 11153 ms     | 0x209a basekey:0x7f00bfc2f080
 11153 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11153 ms     | 0x209a ret:0x7f00a0590500
 11153 ms     | 0x209a PK11_DeriveWithFlags()
 11153 ms     | 0x209a basekey:0x7f00bfc2f080
 11153 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11153 ms     | 0x209a ret:0x7f00a0590900
 11153 ms     | 0x209a PK11_DeriveWithFlags()
 11153 ms     | 0x209a basekey:0x7f00bef68880
 11153 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11153 ms     | 0x209a ret:0x7f00a0590a00
 11153 ms     | 0x209a PK11_DeriveWithFlags()
 11153 ms     | 0x209a basekey:0x7f00bef68880
 11153 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11153 ms     | 0x209a ret:0x7f00a0590b80
 11153 ms     | 0x209a PK11_DeriveWithFlags()
 11153 ms     | 0x209a basekey:0x7f00a0590500
 11153 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11153 ms     | 0x209a ret:0x7f00a0590b80
 11153 ms     | 0x209a PK11_DeriveWithFlags()
 11153 ms     | 0x209a basekey:0x7f00a0590500
 11153 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11153 ms     | 0x209a ret:0x7f00a0590c00
 11153 ms     | 0x209a PK11_DeriveWithFlags()
 11153 ms     | 0x209a basekey:0x7f00bef68880
 11153 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11153 ms     | 0x209a ret:0x7f00bfc32100
 11153 ms     | 0x209a PK11_Encrypt()
 11153 ms     | 0x209a symkey:0x7f00a0590a00
 11153 ms     | 0x209a PK11_DeriveWithFlags()
 11153 ms     | 0x209a basekey:0x7f00bef9c300
 11153 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11153 ms     | 0x209a ret:0x7f00bfc32100
 11153 ms     | 0x209a PK11_DeriveWithFlags()
 11153 ms     | 0x209a basekey:0x7f00bef9c300
 11153 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11153 ms     | 0x209a ret:0x7f00a0590c00
 11153 ms     | 0x209a PK11_DeriveWithFlags()
 11153 ms     | 0x209a basekey:0x7f00bfc2f080
 11153 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11153 ms     | 0x209a ret:0x7f00a0590a00
 11153 ms     | 0x209a SECKEY_DestroyPrivateKey()
 11153 ms     | 0x209a privk:0x7f00bbb96820::7f00bbb96820  b0 30 0f b3                                      .0..
 11153 ms     | 0x209a privk:0x7f00bbb96820::7f00bbb96820  e5 e5 e5 e5                                      ....
 11153 ms     | 0x209a SECKEY_DestroyPrivateKey()
 11153 ms     | 0x209a privk:0x7f00bbb93820::7f00bbb93820  f0 7b 35 b3                                      .{5.
 11153 ms     | 0x209a privk:0x7f00bbb93820::7f00bbb93820  e5 e5 e5 e5                                      ....
 11154 ms  0x209a PK11_Encrypt()
 11154 ms  0x209a symkey:0x7f00bfc32100
 11155 ms  0x209a PK11_Encrypt()
 11155 ms  0x209a symkey:0x7f00bfc32100
           /* TID 0x20a2 */
 11205 ms  0x20a2 PR_Close()
 11205 ms  0x20a2 fd:0x7f00a0656610
           /* TID 0x213c */
 11205 ms  0x213c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11205 ms  0x213c ret:0x0
           /* TID 0x209a */
 11205 ms  0x209a SSL_AuthCertificateComplete()
 11205 ms  0x209a fd:0x7f00b7f08d90
 11205 ms  0x209a err:0x0
 11205 ms     | 0x209a PK11_DeriveWithFlags()
 11205 ms     | 0x209a basekey:0x7f00bfc32500
 11205 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11205 ms     | 0x209a ret:0x7f00bfc0d400
 11205 ms     | 0x209a PK11_DeriveWithFlags()
 11205 ms     | 0x209a basekey:0x7f00bfc32500
 11205 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11205 ms     | 0x209a ret:0x7f00bef68880
 11206 ms     | 0x209a PK11_DeriveWithFlags()
 11206 ms     | 0x209a basekey:0x7f00bfc32500
 11206 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11206 ms     | 0x209a ret:0x7f00bfc2f080
 11206 ms     | 0x209a PK11_DeriveWithFlags()
 11206 ms     | 0x209a basekey:0x7f00bfc32480
 11206 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11206 ms     | 0x209a ret:0x7f00a0590c00
 11206 ms     | 0x209a PK11_DeriveWithFlags()
 11206 ms     | 0x209a basekey:0x7f00bfc32480
 11206 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11206 ms     | 0x209a ret:0x7f00a05fe500
 11206 ms     | 0x209a PK11_DeriveWithFlags()
 11206 ms     | 0x209a basekey:0x7f00bef68880
 11206 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11206 ms     | 0x209a ret:0x7f00a05fe500
 11206 ms     | 0x209a PK11_DeriveWithFlags()
 11206 ms     | 0x209a basekey:0x7f00bef68880
 11206 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11206 ms     | 0x209a ret:0x7f00a05feb00
 11206 ms     | 0x209a PK11_DeriveWithFlags()
 11206 ms     | 0x209a basekey:0x7f00bfc32480
 11206 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11206 ms     | 0x209a ret:0x7f00bfc18c00
 11206 ms     | 0x209a PK11_Encrypt()
 11206 ms     | 0x209a symkey:0x7f00a0590c00
 11207 ms     | 0x209a PK11_DeriveWithFlags()
 11207 ms     | 0x209a basekey:0x7f00bfc0d400
 11207 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11207 ms     | 0x209a ret:0x7f00bfc18c00
 11207 ms     | 0x209a PK11_DeriveWithFlags()
 11207 ms     | 0x209a basekey:0x7f00bfc0d400
 11207 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11208 ms     | 0x209a ret:0x7f00a05feb00
 11208 ms     | 0x209a PK11_DeriveWithFlags()
 11208 ms     | 0x209a basekey:0x7f00bfc32500
 11208 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11208 ms     | 0x209a ret:0x7f00a0590c00
 11208 ms     | 0x209a SECKEY_DestroyPrivateKey()
 11208 ms     | 0x209a privk:0x7f00bc45a020::7f00bc45a020  90 97 3f b3                                      ..?.
 11208 ms     | 0x209a privk:0x7f00bc45a020::7f00bc45a020  e5 e5 e5 e5                                      ....
 11208 ms     | 0x209a SECKEY_DestroyPrivateKey()
 11208 ms     | 0x209a privk:0x7f00bc457820::7f00bc457820  90 b7 3d b3                                      ..=.
 11208 ms     | 0x209a privk:0x7f00bc457820::7f00bc457820  e5 e5 e5 e5                                      ....
 11208 ms  0x209a PK11_Encrypt()
 11208 ms  0x209a symkey:0x7f00bfc18c00
 11209 ms  0x209a PK11_Encrypt()
 11209 ms  0x209a symkey:0x7f00bfc32100
 11267 ms  0x209a PK11_DeriveWithFlags()
 11267 ms  0x209a basekey:0x7f00a0590a00
 11267 ms     | 0x209a PK11_DeriveWithTemplate()
 11267 ms  0x209a ret:0x7f00bb67be00
 11267 ms  0x209a PK11_DeriveWithFlags()
 11267 ms  0x209a basekey:0x7f00a0590a00
 11267 ms     | 0x209a PK11_DeriveWithTemplate()
 11267 ms  0x209a ret:0x7f00bb67be00
 11267 ms  0x209a PK11_Encrypt()
 11267 ms  0x209a symkey:0x7f00bfc32100
 11290 ms  0x209a PK11_Encrypt()
 11290 ms  0x209a symkey:0x7f00bfc32100
 11300 ms  0x209a SSL_ImportFD()
 11300 ms  0x209a ret:0x7f00b1590790
 11300 ms  0x209a SSL_AuthCertificateHook()
 11300 ms  0x209a fd:0x7f00b1590790
 11300 ms  0x209a ret:0x0
 11300 ms  0x209a PR_Connect()
 11300 ms  0x209a fd:0x7f00b1590790
 11303 ms  0x209a SSL_ImportFD()
 11303 ms  0x209a ret:0x7f00b1590e80
 11303 ms  0x209a SSL_AuthCertificateHook()
 11303 ms  0x209a fd:0x7f00b1590e80
 11303 ms  0x209a ret:0x0
 11303 ms  0x209a PR_Connect()
 11303 ms  0x209a fd:0x7f00b1590e80
 11321 ms  0x209a PK11_DeriveWithFlags()
 11321 ms  0x209a basekey:0x7f00a0590c00
 11321 ms     | 0x209a PK11_DeriveWithTemplate()
 11322 ms  0x209a ret:0x7f00bb67be00
 11322 ms  0x209a PK11_DeriveWithFlags()
 11322 ms  0x209a basekey:0x7f00a0590c00
 11322 ms     | 0x209a PK11_DeriveWithTemplate()
 11322 ms  0x209a ret:0x7f00bb67be00
 11322 ms  0x209a PR_Close()
 11322 ms  0x209a fd:0x7f00b7f08d90
 11322 ms     | 0x209a PK11_Encrypt()
 11322 ms     | 0x209a symkey:0x7f00bfc18c00
 11338 ms  0x209a SECKEY_CreateECPrivateKey()
 11338 ms  0x209a cx:0x7f00a08d80a8
 11339 ms     | 0x209a EC_ValidatePublicKey()
 11339 ms     | 0x209a ret:0x0
 11339 ms  0x209a ret:0x7f00a086f820::7f00a086f820  70 64 8d b1                                      pd..
 11340 ms  0x209a SECKEY_CreateECPrivateKey()
 11340 ms  0x209a cx:0x7f00a08d80a8
 11341 ms     | 0x209a EC_ValidatePublicKey()
 11345 ms     | 0x209a ret:0x0
 11345 ms  0x209a ret:0x7f00a0872020::7f00a0872020  20 59 de b1                                       Y..
 11350 ms  0x209a SECKEY_CreateECPrivateKey()
 11350 ms  0x209a cx:0x7f00a08d8588
 11352 ms     | 0x209a EC_ValidatePublicKey()
 11352 ms     | 0x209a ret:0x0
 11352 ms  0x209a ret:0x7f00a0874020::7f00a0874020  60 ff cd b2                                      `...
 11352 ms  0x209a SECKEY_CreateECPrivateKey()
 11352 ms  0x209a cx:0x7f00a08d8588
 11353 ms     | 0x209a EC_ValidatePublicKey()
 11356 ms     | 0x209a ret:0x0
 11356 ms  0x209a ret:0x7f00a0877020::7f00a0877020  60 a0 ea b2                                      `...
 11400 ms  0x209a PK11_Derive()
 11400 ms  0x209a basekey:0x7f00bfc2f080
 11400 ms     | 0x209a PK11_DeriveWithTemplate()
 11401 ms  0x209a ret:0x7f00bef68880
 11401 ms  0x209a PK11_PubDeriveWithKDF()
 11401 ms  0x209a seckey:0x7f00a086f820
 11401 ms     | 0x209a EC_ValidatePublicKey()
 11401 ms     | 0x209a ret:0x0
 11402 ms  0x209a ret:0x7f00bfc2f080
 11402 ms  SECKEY_ECParamsToKeySize()
 11402 ms  0x209a ret:0xff
 11402 ms  0x209a PK11_DeriveWithFlags()
 11402 ms  0x209a basekey:0x7f00bef68880
 11402 ms     | 0x209a PK11_DeriveWithTemplate()
 11402 ms  0x209a ret:0x7f00bfc0d400
 11402 ms  0x209a PK11_Derive()
 11402 ms  0x209a basekey:0x7f00bfc2f080
 11402 ms     | 0x209a PK11_DeriveWithTemplate()
 11402 ms  0x209a ret:0x7f00a0590c00
 11402 ms  0x209a PK11_DeriveWithFlags()
 11402 ms  0x209a basekey:0x7f00a0590c00
 11402 ms     | 0x209a PK11_DeriveWithTemplate()
 11402 ms  0x209a ret:0x7f00bef68880
 11402 ms  0x209a PK11_DeriveWithFlags()
 11402 ms  0x209a basekey:0x7f00a0590c00
 11402 ms     | 0x209a PK11_DeriveWithTemplate()
 11402 ms  0x209a ret:0x7f00bfc2f080
 11402 ms  0x209a PK11_DeriveWithFlags()
 11402 ms  0x209a basekey:0x7f00a0590c00
 11402 ms     | 0x209a PK11_DeriveWithTemplate()
 11402 ms  0x209a ret:0x7f00bfc0d400
 11402 ms  0x209a PK11_Derive()
 11402 ms  0x209a basekey:0x7f00a05fe500
 11402 ms     | 0x209a PK11_DeriveWithTemplate()
 11402 ms  0x209a ret:0x7f00bfc18c00
 11402 ms  0x209a PK11_DeriveWithFlags()
 11402 ms  0x209a basekey:0x7f00bfc2f080
 11402 ms     | 0x209a PK11_DeriveWithTemplate()
 11403 ms  0x209a ret:0x7f00a0590c00
 11403 ms  0x209a PK11_DeriveWithFlags()
 11403 ms  0x209a basekey:0x7f00bfc2f080
 11403 ms     | 0x209a PK11_DeriveWithTemplate()
 11403 ms  0x209a ret:0x7f00bfc0d400
 11406 ms  0x209a PK11_DeriveWithFlags()
 11406 ms  0x209a basekey:0x7f00bfc2f080
 11406 ms     | 0x209a PK11_DeriveWithTemplate()
 11407 ms  0x209a ret:0x7f00bfc0d400
 11412 ms  0x209a PK11_Derive()
 11412 ms  0x209a basekey:0x7f00bfc0d400
 11413 ms     | 0x209a PK11_DeriveWithTemplate()
 11413 ms  0x209a ret:0x7f00a05fe500
 11413 ms  0x209a PK11_PubDeriveWithKDF()
 11413 ms  0x209a seckey:0x7f00a0874020
 11413 ms     | 0x209a EC_ValidatePublicKey()
 11413 ms     | 0x209a ret:0x0
 11414 ms  0x209a ret:0x7f00bfc0d400
 11414 ms  SECKEY_ECParamsToKeySize()
 11414 ms  0x209a ret:0xff
 11414 ms  0x209a PK11_DeriveWithFlags()
 11414 ms  0x209a basekey:0x7f00a05fe500
 11414 ms     | 0x209a PK11_DeriveWithTemplate()
 11414 ms  0x209a ret:0x7f00bb67be00
 11414 ms  0x209a PK11_Derive()
 11414 ms  0x209a basekey:0x7f00bfc0d400
 11414 ms     | 0x209a PK11_DeriveWithTemplate()
 11414 ms  0x209a ret:0x7f00bfc32480
 11414 ms  0x209a PK11_DeriveWithFlags()
 11414 ms  0x209a basekey:0x7f00bfc32480
 11414 ms     | 0x209a PK11_DeriveWithTemplate()
 11415 ms  0x209a ret:0x7f00a05fe500
 11415 ms  0x209a PK11_DeriveWithFlags()
 11415 ms  0x209a basekey:0x7f00bfc32480
 11415 ms     | 0x209a PK11_DeriveWithTemplate()
 11415 ms  0x209a ret:0x7f00bfc0d400
 11415 ms  0x209a PK11_DeriveWithFlags()
 11415 ms  0x209a basekey:0x7f00bfc32480
 11415 ms     | 0x209a PK11_DeriveWithTemplate()
 11415 ms  0x209a ret:0x7f00bb67be00
 11415 ms  0x209a PK11_Derive()
 11415 ms  0x209a basekey:0x7f00bfc32500
 11415 ms     | 0x209a PK11_DeriveWithTemplate()
 11415 ms  0x209a ret:0x7f00a05feb00
 11415 ms  0x209a PK11_DeriveWithFlags()
 11415 ms  0x209a basekey:0x7f00bfc0d400
 11415 ms     | 0x209a PK11_DeriveWithTemplate()
 11415 ms  0x209a ret:0x7f00bfc32480
 11415 ms  0x209a PK11_DeriveWithFlags()
 11415 ms  0x209a basekey:0x7f00bfc0d400
 11415 ms     | 0x209a PK11_DeriveWithTemplate()
 11415 ms  0x209a ret:0x7f00bb67be00
 11418 ms  0x209a PK11_DeriveWithFlags()
 11418 ms  0x209a basekey:0x7f00bfc0d400
 11419 ms     | 0x209a PK11_DeriveWithTemplate()
 11419 ms  0x209a ret:0x7f00bb67be00
 11515 ms  0x209a PR_Close()
 11515 ms  0x209a fd:0x7f00a077b7f0
           /* TID 0x20a2 */
 11517 ms  0x20a2 PR_Close()
 11517 ms  0x20a2 fd:0x7f00a077ba60
           /* TID 0x213f */
 11517 ms  0x213f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11518 ms  0x213f ret:0x0
 11518 ms  0x213f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11518 ms  0x213f ret:0x0
           /* TID 0x209a */
 11518 ms  0x209a SSL_AuthCertificateComplete()
 11518 ms  0x209a fd:0x7f00b7cab3d0
 11518 ms  0x209a err:0x0
 11518 ms     | 0x209a SECKEY_DestroyPrivateKey()
 11518 ms     | 0x209a privk:0x7f00bc46d020::7f00bc46d020  10 c5 cc b3                                      ....
 11518 ms     | 0x209a privk:0x7f00bc46d020::7f00bc46d020  e5 e5 e5 e5                                      ....
 11518 ms     | 0x209a SECKEY_DestroyPrivateKey()
 11518 ms     | 0x209a privk:0x7f00bc460820::7f00bc460820  20 99 3f b3                                       .?.
 11518 ms     | 0x209a privk:0x7f00bc460820::7f00bc460820  e5 e5 e5 e5                                      ....
 11518 ms  0x209a PK11_Encrypt()
 11518 ms  0x209a symkey:0x7f00a0590080
           /* TID 0x20a2 */
 11551 ms  0x20a2 PR_Close()
 11551 ms  0x20a2 fd:0x7f00a077b940
           /* TID 0x20fb */
 11551 ms  0x20fb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11551 ms  0x20fb ret:0x0
           /* TID 0x209a */
 11551 ms  0x209a SSL_AuthCertificateComplete()
 11551 ms  0x209a fd:0x7f00b1590790
 11551 ms  0x209a err:0x0
 11551 ms     | 0x209a PK11_DeriveWithFlags()
 11551 ms     | 0x209a basekey:0x7f00bfc18c00
 11551 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11551 ms     | 0x209a ret:0x7f00bb67be00
 11551 ms     | 0x209a PK11_DeriveWithFlags()
 11551 ms     | 0x209a basekey:0x7f00bfc18c00
 11551 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11551 ms     | 0x209a ret:0x7f00bfc32500
 11552 ms     | 0x209a PK11_DeriveWithFlags()
 11552 ms     | 0x209a basekey:0x7f00bfc18c00
 11552 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11552 ms     | 0x209a ret:0x7f00a077fd80
 11552 ms     | 0x209a PK11_DeriveWithFlags()
 11552 ms     | 0x209a basekey:0x7f00bef68880
 11552 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11552 ms     | 0x209a ret:0x7f00a0780700
 11552 ms     | 0x209a PK11_DeriveWithFlags()
 11552 ms     | 0x209a basekey:0x7f00bef68880
 11552 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11552 ms     | 0x209a ret:0x7f00a0780900
 11552 ms     | 0x209a PK11_DeriveWithFlags()
 11552 ms     | 0x209a basekey:0x7f00bfc32500
 11552 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11552 ms     | 0x209a ret:0x7f00a0780900
 11552 ms     | 0x209a PK11_DeriveWithFlags()
 11552 ms     | 0x209a basekey:0x7f00bfc32500
 11552 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11552 ms     | 0x209a ret:0x7f00a0780980
 11552 ms     | 0x209a PK11_DeriveWithFlags()
 11552 ms     | 0x209a basekey:0x7f00bef68880
 11552 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11552 ms     | 0x209a ret:0x7f00a0590c00
 11552 ms     | 0x209a PK11_Encrypt()
 11552 ms     | 0x209a symkey:0x7f00a0780700
 11552 ms     | 0x209a PK11_DeriveWithFlags()
 11552 ms     | 0x209a basekey:0x7f00bb67be00
 11552 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11552 ms     | 0x209a ret:0x7f00a0590c00
 11552 ms     | 0x209a PK11_DeriveWithFlags()
 11552 ms     | 0x209a basekey:0x7f00bb67be00
 11552 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11552 ms     | 0x209a ret:0x7f00a0780980
 11552 ms     | 0x209a PK11_DeriveWithFlags()
 11552 ms     | 0x209a basekey:0x7f00bfc18c00
 11552 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11552 ms     | 0x209a ret:0x7f00a0780700
 11552 ms     | 0x209a SECKEY_DestroyPrivateKey()
 11552 ms     | 0x209a privk:0x7f00a0872020::7f00a0872020  20 59 de b1                                       Y..
 11553 ms     | 0x209a privk:0x7f00a0872020::7f00a0872020  e5 e5 e5 e5                                      ....
 11553 ms     | 0x209a SECKEY_DestroyPrivateKey()
 11553 ms     | 0x209a privk:0x7f00a086f820::7f00a086f820  70 64 8d b1                                      pd..
 11553 ms     | 0x209a privk:0x7f00a086f820::7f00a086f820  e5 e5 e5 e5                                      ....
 11553 ms  0x209a PK11_Encrypt()
 11553 ms  0x209a symkey:0x7f00a0590c00
 11553 ms  0x209a PK11_Encrypt()
 11553 ms  0x209a symkey:0x7f00a0590c00
           /* TID 0x213c */
 11563 ms  0x213c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11563 ms  0x213c ret:0x0
           /* TID 0x20a2 */
 11564 ms  0x20a2 PR_Close()
 11564 ms  0x20a2 fd:0x7f00a077be80
           /* TID 0x209a */
 11564 ms  0x209a SSL_AuthCertificateComplete()
 11564 ms  0x209a fd:0x7f00b1590e80
 11564 ms  0x209a err:0x0
 11564 ms     | 0x209a PK11_DeriveWithFlags()
 11564 ms     | 0x209a basekey:0x7f00a05feb00
 11564 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11564 ms     | 0x209a ret:0x7f00bfc2f080
 11564 ms     | 0x209a PK11_DeriveWithFlags()
 11564 ms     | 0x209a basekey:0x7f00a05feb00
 11564 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11564 ms     | 0x209a ret:0x7f00bef68880
 11564 ms     | 0x209a PK11_DeriveWithFlags()
 11564 ms     | 0x209a basekey:0x7f00a05feb00
 11564 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11564 ms     | 0x209a ret:0x7f00bfc18c00
 11564 ms     | 0x209a PK11_DeriveWithFlags()
 11564 ms     | 0x209a basekey:0x7f00a05fe500
 11564 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11564 ms     | 0x209a ret:0x7f00a0780980
 11564 ms     | 0x209a PK11_DeriveWithFlags()
 11564 ms     | 0x209a basekey:0x7f00a05fe500
 11564 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11564 ms     | 0x209a ret:0x7f00a0780a00
 11564 ms     | 0x209a PK11_DeriveWithFlags()
 11564 ms     | 0x209a basekey:0x7f00bef68880
 11564 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11564 ms     | 0x209a ret:0x7f00a0780a00
 11564 ms     | 0x209a PK11_DeriveWithFlags()
 11564 ms     | 0x209a basekey:0x7f00bef68880
 11564 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11564 ms     | 0x209a ret:0x7f00a0780b00
 11564 ms     | 0x209a PK11_DeriveWithFlags()
 11564 ms     | 0x209a basekey:0x7f00a05fe500
 11564 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11564 ms     | 0x209a ret:0x7f00bfc32480
 11564 ms     | 0x209a PK11_Encrypt()
 11564 ms     | 0x209a symkey:0x7f00a0780980
 11564 ms     | 0x209a PK11_DeriveWithFlags()
 11564 ms     | 0x209a basekey:0x7f00bfc2f080
 11565 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11565 ms     | 0x209a ret:0x7f00bfc32480
 11565 ms     | 0x209a PK11_DeriveWithFlags()
 11565 ms     | 0x209a basekey:0x7f00bfc2f080
 11565 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11565 ms     | 0x209a ret:0x7f00a0780b00
 11565 ms     | 0x209a PK11_DeriveWithFlags()
 11565 ms     | 0x209a basekey:0x7f00a05feb00
 11565 ms     |    | 0x209a PK11_DeriveWithTemplate()
 11565 ms     | 0x209a ret:0x7f00a0780980
 11565 ms     | 0x209a SECKEY_DestroyPrivateKey()
 11565 ms     | 0x209a privk:0x7f00a0877020::7f00a0877020  60 a0 ea b2                                      `...
 11565 ms     | 0x209a privk:0x7f00a0877020::7f00a0877020  e5 e5 e5 e5                                      ....
 11565 ms     | 0x209a SECKEY_DestroyPrivateKey()
 11565 ms     | 0x209a privk:0x7f00a0874020::7f00a0874020  60 ff cd b2                                      `...
 11565 ms     | 0x209a privk:0x7f00a0874020::7f00a0874020  e5 e5 e5 e5                                      ....
 11570 ms  0x209a PK11_Encrypt()
 11570 ms  0x209a symkey:0x7f00bfc32480
 11575 ms  0x209a PK11_Encrypt()
 11575 ms  0x209a symkey:0x7f00a0590c00
 11669 ms  0x209a PK11_DeriveWithFlags()
 11669 ms  0x209a basekey:0x7f00a0780700
 11669 ms     | 0x209a PK11_DeriveWithTemplate()
 11669 ms  0x209a ret:0x7f00bfc0d400
 11669 ms  0x209a PK11_DeriveWithFlags()
 11669 ms  0x209a basekey:0x7f00a0780700
 11669 ms     | 0x209a PK11_DeriveWithTemplate()
 11669 ms  0x209a ret:0x7f00bfc0d400
 11670 ms  0x209a PK11_Encrypt()
 11670 ms  0x209a symkey:0x7f00a0590c00
 11678 ms  0x209a PK11_DeriveWithFlags()
 11678 ms  0x209a basekey:0x7f00a0780980
 11678 ms     | 0x209a PK11_DeriveWithTemplate()
 11678 ms  0x209a ret:0x7f00bfc0d400
 11678 ms  0x209a PK11_DeriveWithFlags()
 11678 ms  0x209a basekey:0x7f00a0780980
 11678 ms     | 0x209a PK11_DeriveWithTemplate()
 11678 ms  0x209a ret:0x7f00bfc0d400
 11678 ms  0x209a PR_Close()
 11678 ms  0x209a fd:0x7f00b1590e80
 11678 ms     | 0x209a PK11_Encrypt()
 11678 ms     | 0x209a symkey:0x7f00bfc32480
           /* TID 0x208f */
 11688 ms  0x208f PR_Close()
 11688 ms  0x208f fd:0x7f00b15e28e0
           /* TID 0x20a2 */
 11688 ms  0x20a2 PR_Close()
 11688 ms  0x20a2 fd:0x7f00a077b970
           /* TID 0x209a */
 11691 ms  0x209a PK11_Encrypt()
 11691 ms  0x209a symkey:0x7f00a0590c00
 11775 ms  0x209a PR_Close()
 11775 ms  0x209a fd:0x7f00b2887e20
           /* TID 0x208f */
 11776 ms  0x208f EC_ValidatePublicKey()
 11778 ms  0x208f ret:0x0
 11778 ms  0x208f EC_ValidatePublicKey()
 11779 ms  0x208f ret:0x0
 11779 ms  0x208f EC_ValidatePublicKey()
 11781 ms  0x208f ret:0x0
 11781 ms  0x208f EC_ValidatePublicKey()
 11782 ms  0x208f ret:0x0
 11782 ms  0x208f EC_ValidatePublicKey()
 11784 ms  0x208f ret:0x0
 11784 ms  0x208f EC_ValidatePublicKey()
 11785 ms  0x208f ret:0x0
 11785 ms  0x208f EC_ValidatePublicKey()
           /* TID 0x209a */
 11800 ms  0x209a SSL_ImportFD()
 11800 ms  0x209a ret:0x7f00b18db040
 11800 ms  0x209a SSL_AuthCertificateHook()
 11800 ms  0x209a fd:0x7f00b18db040
 11800 ms  0x209a ret:0x0
 11800 ms  0x209a PR_Connect()
 11800 ms  0x209a fd:0x7f00b18db040
           /* TID 0x208f */
 11803 ms  0x208f ret:0x0
 11803 ms  0x208f EC_ValidatePublicKey()
 11805 ms  0x208f ret:0x0
 11805 ms  0x208f EC_ValidatePublicKey()
 11808 ms  0x208f ret:0x0
 11808 ms  0x208f EC_ValidatePublicKey()
 11810 ms  0x208f ret:0x0
           /* TID 0x209a */
 11810 ms  0x209a PK11_Encrypt()
 11810 ms  0x209a symkey:0x7f00a0590c00
 11810 ms  0x209a PK11_Encrypt()
 11810 ms  0x209a symkey:0x7f00b4ab9f00
 11811 ms  0x209a PK11_Encrypt()
 11811 ms  0x209a symkey:0x7f00bfc32100
 11811 ms  0x209a PK11_Encrypt()
 11811 ms  0x209a symkey:0x7f00bef68600
 11811 ms  0x209a PK11_Encrypt()
 11811 ms  0x209a symkey:0x7f00a05fea00
 11811 ms  0x209a PK11_Encrypt()
 11811 ms  0x209a symkey:0x7f00bef9c900
 11811 ms  0x209a PK11_Encrypt()
 11811 ms  0x209a symkey:0x7f00b4ab6900
 11811 ms  0x209a PK11_Encrypt()
 11811 ms  0x209a symkey:0x7f00bef9d080
 11811 ms  0x209a PK11_Encrypt()
 11811 ms  0x209a symkey:0x7f00b79e1380
 11811 ms  0x209a PR_Close()
 11811 ms  0x209a fd:0x7f00b7cab3d0
 11811 ms     | 0x209a PK11_Encrypt()
 11811 ms     | 0x209a symkey:0x7f00a0590080
 11812 ms  0x209a PR_Close()
 11812 ms  0x209a fd:0x7f00b7e49c10
 11813 ms  0x209a PR_Close()
 11813 ms  0x209a fd:0x7f00b7cab9d0
 11814 ms     | 0x209a PK11_Encrypt()
 11814 ms     | 0x209a symkey:0x7f00bfc2f480
 11814 ms  0x209a PR_Close()
 11814 ms  0x209a fd:0x7f00b79edca0
 11814 ms  0x209a PR_Close()
 11814 ms  0x209a fd:0x7f00b7ca3190
 11814 ms     | 0x209a PK11_Encrypt()
 11814 ms     | 0x209a symkey:0x7f00bfa07580
 11814 ms  0x209a PR_Close()
 11814 ms  0x209a fd:0x7f00b79fb0d0
 11814 ms     | 0x209a PK11_Encrypt()
 11814 ms     | 0x209a symkey:0x7f00bfa07180
 11814 ms  0x209a PR_Close()
 11814 ms  0x209a fd:0x7f00b79ed910
 11815 ms     | 0x209a PK11_Encrypt()
 11815 ms     | 0x209a symkey:0x7f00befa5d00
 11815 ms  0x209a PR_Close()
 11815 ms  0x209a fd:0x7f00b795e8e0
 11815 ms     | 0x209a PK11_Encrypt()
 11815 ms     | 0x209a symkey:0x7f00befa5000
 11815 ms  0x209a PR_Close()
 11815 ms  0x209a fd:0x7f00b795e4f0
 11815 ms     | 0x209a PK11_Encrypt()
 11815 ms     | 0x209a symkey:0x7f00bef9de80
 11815 ms  0x209a PR_Close()
 11815 ms  0x209a fd:0x7f00b7925190
 11815 ms     | 0x209a PK11_Encrypt()
 11815 ms     | 0x209a symkey:0x7f00bef9cc80
 11815 ms  0x209a PR_Close()
 11815 ms  0x209a fd:0x7f00b7542cd0
 11816 ms  0x209a PR_Close()
 11816 ms  0x209a fd:0x7f00b33de310
 11816 ms     | 0x209a PK11_Encrypt()
 11816 ms     | 0x209a symkey:0x7f00bb830800
 11816 ms  0x209a PR_Close()
 11816 ms  0x209a fd:0x7f00b33547f0
 11816 ms     | 0x209a PK11_Encrypt()
 11816 ms     | 0x209a symkey:0x7f00b3c0d380
 11816 ms  0x209a PR_Close()
 11816 ms  0x209a fd:0x7f00b2836a00
 11816 ms     | 0x209a PK11_Encrypt()
 11816 ms     | 0x209a symkey:0x7f00b7eb8f00
 11816 ms  0x209a PR_Close()
 11816 ms  0x209a fd:0x7f00b2cd72e0
 11816 ms     | 0x209a PK11_Encrypt()
 11816 ms     | 0x209a symkey:0x7f00b79e2b00
 11817 ms  0x209a PR_Close()
 11817 ms  0x209a fd:0x7f00b2ef5be0
 11817 ms  0x209a PR_Close()
 11817 ms  0x209a fd:0x7f00b2836dc0
 11817 ms     | 0x209a PK11_Encrypt()
 11817 ms     | 0x209a symkey:0x7f00b79e1f80
 11817 ms  0x209a PR_Close()
 11817 ms  0x209a fd:0x7f00b2836ca0
 11817 ms     | 0x209a PK11_Encrypt()
 11817 ms     | 0x209a symkey:0x7f00b79e2800
 11817 ms  0x209a PR_Close()
 11817 ms  0x209a fd:0x7f00b15e2ee0
 11817 ms     | 0x209a PK11_Encrypt()
 11817 ms     | 0x209a symkey:0x7f00b3c7f900
 11817 ms  0x209a PR_Close()
 11817 ms  0x209a fd:0x7f00a077bd90
 11817 ms     | 0x209a PK11_Encrypt()
 11817 ms     | 0x209a symkey:0x7f00bb67c000
 11817 ms  0x209a PR_Close()
 11817 ms  0x209a fd:0x7f00a084f2e0
 11817 ms     | 0x209a PK11_Encrypt()
 11817 ms     | 0x209a symkey:0x7f00a0805d80
 11818 ms  0x209a PR_Close()
 11818 ms  0x209a fd:0x7f00a084f070
 11818 ms  0x209a PR_Close()
 11818 ms  0x209a fd:0x7f00b18d14f0
 11818 ms     | 0x209a PK11_Encrypt()
 11818 ms     | 0x209a symkey:0x7f00a0804f00
 11818 ms  0x209a PR_Close()
 11818 ms  0x209a fd:0x7f00b28871c0
           /* TID 0x20ec */
 11818 ms  0x20ec PR_Close()
 11818 ms  0x20ec fd:0x7f00a051c430
 11818 ms  0x20ec PR_Close()
 11818 ms  0x20ec fd:0x7f00a051c430
           /* TID 0x209a */
 11829 ms  0x209a PR_Close()
 11829 ms  0x209a fd:0x7f00b1dead60
 11829 ms     | 0x209a PK11_Encrypt()
 11829 ms     | 0x209a symkey:0x7f00b33e5f00
 11831 ms  0x209a PR_Close()
 11831 ms  0x209a fd:0x7f00b7f14280
 11831 ms  0x209a PR_Close()
 11831 ms  0x209a fd:0x7f00befaac40
 11831 ms     | 0x209a PK11_Encrypt()
 11831 ms     | 0x209a symkey:0x7f00b18dd580
 11831 ms  0x209a PR_Close()
 11831 ms  0x209a fd:0x7f00b1590d30
 11831 ms     | 0x209a PK11_Encrypt()
 11831 ms     | 0x209a symkey:0x7f00b4acc180
 11831 ms  0x209a PR_Close()
 11831 ms  0x209a fd:0x7f00b18caf10
 11831 ms     | 0x209a PK11_Encrypt()
 11831 ms     | 0x209a symkey:0x7f00b4ab9f00
 11832 ms  0x209a PR_Close()
 11832 ms  0x209a fd:0x7f00a06563d0
 11832 ms     | 0x209a PK11_Encrypt()
 11832 ms     | 0x209a symkey:0x7f00a05fea00
 11832 ms  0x209a PR_Close()
 11832 ms  0x209a fd:0x7f00b7f08d60
 11832 ms     | 0x209a PK11_Encrypt()
 11832 ms     | 0x209a symkey:0x7f00bfc32100
 11832 ms  0x209a PR_Close()
 11832 ms  0x209a fd:0x7f00b37e2d90
 11832 ms     | 0x209a PK11_Encrypt()
 11832 ms     | 0x209a symkey:0x7f00bef9d080
 11832 ms  0x209a PR_Close()
 11832 ms  0x209a fd:0x7f00b1590790
 11832 ms     | 0x209a PK11_Encrypt()
 11832 ms     | 0x209a symkey:0x7f00a0590c00
 11833 ms  0x209a PR_Close()
 11833 ms  0x209a fd:0x7f00b7542b20
 11833 ms     | 0x209a PK11_Encrypt()
 11833 ms     | 0x209a symkey:0x7f00bef68600
 11833 ms  0x209a PR_Close()
 11833 ms  0x209a fd:0x7f00b30e1970
 11833 ms     | 0x209a PK11_Encrypt()
 11833 ms     | 0x209a symkey:0x7f00b4ab6900
 11833 ms  0x209a PR_Close()
 11833 ms  0x209a fd:0x7f00b2cd7a60
 11833 ms     | 0x209a PK11_Encrypt()
 11833 ms     | 0x209a symkey:0x7f00b79e1380
 11834 ms  0x209a PR_Close()
 11834 ms  0x209a fd:0x7f00b7ca3ee0
 11834 ms     | 0x209a PK11_Encrypt()
 11834 ms     | 0x209a symkey:0x7f00bef9c900
           /* TID 0x208f */
 11835 ms  0x208f PR_Close()
 11835 ms  0x208f fd:0x7f00b6693b20
 11835 ms  0x208f PR_Close()
 11835 ms  0x208f fd:0x7f00a077b3a0
 11836 ms  0x208f PR_Close()
 11836 ms  0x208f fd:0x7f00a077b580
 11836 ms  0x208f PR_Close()
 11836 ms  0x208f fd:0x7f00a077b3a0
           /* TID 0x209a */
 11836 ms  0x209a SECKEY_CreateECPrivateKey()
 11836 ms  0x209a cx:0x7f00a08080e8
 11836 ms     | 0x209a EC_ValidatePublicKey()
 11836 ms     | 0x209a ret:0x0
 11836 ms  0x209a ret:0x7f00a085f820::7f00a085f820  e0 4c 81 a0                                      .L..
 11836 ms  0x209a SECKEY_CreateECPrivateKey()
 11836 ms  0x209a cx:0x7f00a08080e8
 11837 ms     | 0x209a EC_ValidatePublicKey()
 11838 ms     | 0x209a ret:0x0
 11838 ms  0x209a ret:0x7f00a0863820::7f00a0863820  00 1b 57 b1                                      ..W.
           /* TID 0x208f */
 11840 ms  0x208f PR_Close()
 11840 ms  0x208f fd:0x7f00a077b580
 11840 ms  0x208f PR_Close()
 11840 ms  0x208f fd:0x7f00a077b520
           /* TID 0x2106 */
 11843 ms  0x2106 PR_Close()
 11843 ms  0x2106 fd:0x7f00a077b520
           /* TID 0x208f */
 11861 ms  0x208f PR_Close()
 11861 ms  0x208f fd:0x7f00a077b580
 11861 ms  0x208f PR_Close()
 11861 ms  0x208f fd:0x7f00b18cafa0
 11862 ms  0x208f PR_Close()
 11862 ms  0x208f fd:0x7f00a077b580
 11862 ms  0x208f PR_Close()
 11862 ms  0x208f fd:0x7f00b18cafa0
 11863 ms  0x208f PR_Close()
 11863 ms  0x208f fd:0x7f00bc9c89a0
 11863 ms  0x208f PR_Close()
 11863 ms  0x208f fd:0x7f00bc9c88b0
 11863 ms  0x208f PR_Close()
 11863 ms  0x208f fd:0x7f00bc9c8a60
 11865 ms  0x208f PR_Close()
 11865 ms  0x208f fd:0x7f00b18cafa0
           /* TID 0x209a */
 11867 ms  SECKEY_ECParamsToKeySize()
 11867 ms  0x209a ret:0xff
 11867 ms  0x209a SECKEY_CreateECPrivateKey()
 11867 ms  0x209a cx:0x7f00a08080e8
 11867 ms     | 0x209a EC_ValidatePublicKey()
 11868 ms     | 0x209a ret:0x0
 11868 ms  0x209a ret:0x7f00b151d020::7f00b151d020  d0 3d 0f b3                                      .=..
 11868 ms  0x209a PK11_PubDeriveWithKDF()
 11868 ms  0x209a seckey:0x7f00b151d020
 11868 ms     | 0x209a EC_ValidatePublicKey()
 11868 ms     | 0x209a ret:0x0
 11868 ms  0x209a ret:0x7f00bfc18e80
 11868 ms  0x209a PK11_DeriveWithFlags()
 11868 ms  0x209a basekey:0x7f00bfc18e80
 11868 ms     | 0x209a PK11_DeriveWithTemplate()
 11868 ms  0x209a ret:0x7f00bfc2f180
 11868 ms  0x209a PK11_Derive()
 11868 ms  0x209a basekey:0x7f00bfc2f180
 11868 ms     | 0x209a PK11_DeriveWithTemplate()
 11868 ms  0x209a ret:0x7f00bfc18d00
 11868 ms  0x209a SECKEY_DestroyPrivateKey()
 11868 ms  0x209a privk:0x7f00b151d020::7f00b151d020  d0 3d 0f b3                                      .=..
 11869 ms  0x209a privk:0x7f00b151d020::7f00b151d020  e5 e5 e5 e5                                      ....
 11869 ms  0x209a PK11_Encrypt()
 11869 ms  0x209a symkey:0x7f00b4a97a80
           /* TID 0x213f */
 11870 ms  0x213f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11870 ms  0x213f ret:0x0
 11870 ms  0x213f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11870 ms  0x213f ret:0x0
           /* TID 0x208f */
 11873 ms  0x208f PR_Close()
 11873 ms  0x208f fd:0x7f00b1590d30
 11875 ms  0x208f PR_Close()
 11875 ms  0x208f fd:0x7f00a077b580
 11875 ms  0x208f PR_Close()
 11875 ms  0x208f fd:0x7f00b18db0d0
 11876 ms  0x208f PR_Close()
 11876 ms  0x208f fd:0x7f00a077b580
 11876 ms  0x208f PR_Close()
 11876 ms  0x208f fd:0x7f00b18db0d0
 11879 ms  0x208f PR_Close()
 11879 ms  0x208f fd:0x7f00b18db5e0
 11880 ms  0x208f PR_Close()
 11880 ms  0x208f fd:0x7f00b18db5e0
 11885 ms  0x208f PR_Close()
 11885 ms  0x208f fd:0x7f00a077b580
 11885 ms  0x208f PR_Close()
 11885 ms  0x208f fd:0x7f00b18db850
 11888 ms  0x208f PR_Close()
 11888 ms  0x208f fd:0x7f00a077b580
 11888 ms  0x208f PR_Close()
 11888 ms  0x208f fd:0x7f00b1590ca0
 11890 ms  0x208f PR_Close()
 11890 ms  0x208f fd:0x7f00b18cafd0
 11892 ms  0x208f PR_Close()
 11892 ms  0x208f fd:0x7f00b18cafd0
 11903 ms  0x208f PR_Close()
 11903 ms  0x208f fd:0x7f00b1dead00
 11904 ms  0x208f PR_Close()
 11904 ms  0x208f fd:0x7f00b1dead00
 11916 ms  0x208f PR_Close()
 11916 ms  0x208f fd:0x7f00b18dbb20
           /* TID 0x2106 */
 11921 ms  0x2106 PR_Close()
 11921 ms  0x2106 fd:0x7f00a06562b0
           /* TID 0x208f */
 11922 ms  0x208f PR_Close()
 11922 ms  0x208f fd:0x7f00a077b580
 11922 ms  0x208f PR_Close()
 11922 ms  0x208f fd:0x7f00b15902e0
           /* TID 0x2141 */
 11931 ms  0x2141 PR_Close()
 11931 ms  0x2141 fd:0x7f00b1dea100
 11961 ms  0x2141 PR_Close()
 11961 ms  0x2141 fd:0x7f00a084ff70
           /* TID 0x209a */
 11962 ms  0x209a PR_Close()
 11962 ms  0x209a fd:0x7f00b18db040
 11963 ms     | 0x209a SECKEY_DestroyPrivateKey()
 11963 ms     | 0x209a privk:0x7f00a0863820::7f00a0863820  00 1b 57 b1                                      ..W.
 11963 ms     | 0x209a privk:0x7f00a0863820::7f00a0863820  e5 e5 e5 e5                                      ....
 11963 ms     | 0x209a SECKEY_DestroyPrivateKey()
 11963 ms     | 0x209a privk:0x7f00a085f820::7f00a085f820  e0 4c 81 a0                                      .L..
 11963 ms     | 0x209a privk:0x7f00a085f820::7f00a085f820  e5 e5 e5 e5                                      ....
           /* TID 0x2094 */
 11969 ms  0x2094 PR_Close()
 11969 ms  0x2094 fd:0x7f00bb6fcdf0
           /* TID 0x2106 */
 11974 ms  0x2106 PR_Close()
 11974 ms  0x2106 fd:0x7f00a06562b0
           /* TID 0x2141 */
 11976 ms  0x2141 PR_Close()
 11976 ms  0x2141 fd:0x7f00b1590370
           /* TID 0x209a */
 11989 ms  0x209a PR_Close()
 11989 ms  0x209a fd:0x7f00b79edb50
           /* TID 0x2094 */
 11991 ms  0x2094 PR_Close()
 11991 ms  0x2094 fd:0x7f00b7b31820
           /* TID 0x20ec */
 11996 ms  0x20ec PR_Close()
 11996 ms  0x20ec fd:0x7f00a077b070
 11996 ms  0x20ec PR_Close()
 11996 ms  0x20ec fd:0x7f00a077b070
 11996 ms  0x20ec PR_Close()
 11996 ms  0x20ec fd:0x7f00a077b070
 11996 ms  0x20ec PR_Close()
 11996 ms  0x20ec fd:0x7f00a077b340
           /* TID 0x2141 */
 11997 ms  0x2141 PR_Close()
 11997 ms  0x2141 fd:0x7f00a077b340
           /* TID 0x20a2 */
 12000 ms  0x20a2 PR_Close()
 12000 ms  0x20a2 fd:0x7f00b15a2b80
 12000 ms  0x20a2 PR_Close()
 12000 ms  0x20a2 fd:0x7f00b15a2bb0
           /* TID 0x2094 */
 12007 ms  0x2094 PR_Close()
 12007 ms  0x2094 fd:0x7f00b28366a0
           /* TID 0x208f */
 12009 ms  0x208f PR_Close()
 12009 ms  0x208f fd:0x7f00a077b580
 12009 ms  0x208f PR_Close()
 12009 ms  0x208f fd:0x7f00b15e22b0
           /* TID 0x2141 */
 12011 ms  0x2141 PR_Close()
 12011 ms  0x2141 fd:0x7f00b15e2760
 12013 ms  0x2141 PR_Close()
 12013 ms  0x2141 fd:0x7f00b15a2ee0
 12047 ms  0x2141 PR_Close()
 12047 ms  0x2141 fd:0x7f00a077b2b0
 12049 ms  0x2141 PR_Close()
 12049 ms  0x2141 fd:0x7f00a077b2b0
 12073 ms  0x2141 PR_Close()
 12073 ms  0x2141 fd:0x7f00b1590100
 12074 ms  0x2141 PR_Close()
 12074 ms  0x2141 fd:0x7f00b1590730
 12082 ms  0x2141 PR_Close()
 12082 ms  0x2141 fd:0x7f00b15e2040
 12087 ms  0x2141 PR_Close()
 12087 ms  0x2141 fd:0x7f00b15e2dc0
 12093 ms  0x2141 PR_Close()
 12093 ms  0x2141 fd:0x7f00b18cad90
 12103 ms  0x2141 PR_Close()
 12103 ms  0x2141 fd:0x7f00b18d10a0
 12105 ms  0x2141 PR_Close()
 12105 ms  0x2141 fd:0x7f00b18d10a0
           /* TID 0x208f */
 12262 ms  0x208f PR_Close()
 12262 ms  0x208f fd:0x7f00a051c790
 12262 ms  0x208f PR_Close()
 12262 ms  0x208f fd:0x7f00a051c790
 12268 ms  0x208f PR_Close()
 12268 ms  0x208f fd:0x7f00d9cda130
 12268 ms  0x208f PR_Close()
 12268 ms  0x208f fd:0x7f00d9cda190
Process terminated
