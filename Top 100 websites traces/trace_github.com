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
           /* TID 0x1c5 */
   367 ms  0x1c5 SSL_ImportFD()
   367 ms  0x1c5 ret:0x7fd859e0f700
   367 ms  0x1c5 SSL_AuthCertificateHook()
   367 ms  0x1c5 fd:0x7fd859e0f700
   367 ms  0x1c5 ret:0x0
   368 ms  0x1c5 PR_Connect()
   368 ms  0x1c5 fd:0x7fd859e0f700
   568 ms  0x1c5 SECKEY_CreateECPrivateKey()
   568 ms  0x1c5 cx:0x7fd84b0cee28
   570 ms     | 0x1c5 EC_ValidatePublicKey()
   570 ms     | 0x1c5 ret:0x0
   570 ms  0x1c5 ret:0x7fd84b02d020::7fd84b02d020  b0 af 0c 51                                      ...Q
   570 ms  0x1c5 SECKEY_CreateECPrivateKey()
   570 ms  0x1c5 cx:0x7fd84b0cee28
   572 ms     | 0x1c5 EC_ValidatePublicKey()
   577 ms     | 0x1c5 ret:0x0
   577 ms  0x1c5 ret:0x7fd84c212020::7fd84c212020  f0 41 0d 4b                                      .A.K
   784 ms  SECKEY_ECParamsToKeySize()
   784 ms  0x1c5 ret:0x100
   784 ms  0x1c5 SECKEY_CreateECPrivateKey()
   784 ms  0x1c5 cx:0x7fd84b0cee28
   785 ms     | 0x1c5 EC_ValidatePublicKey()
   786 ms     | 0x1c5 ret:0x0
   786 ms  0x1c5 ret:0x7fd84af3c820::7fd84af3c820  90 4c 0d 4b                                      .L.K
   786 ms  0x1c5 PK11_PubDeriveWithKDF()
   786 ms  0x1c5 seckey:0x7fd84af3c820
   786 ms     | 0x1c5 EC_ValidatePublicKey()
   788 ms     | 0x1c5 ret:0x0
   789 ms  0x1c5 ret:0x7fd84cefbf00
   789 ms  0x1c5 PK11_DeriveWithFlags()
   789 ms  0x1c5 basekey:0x7fd84cefbf00
   789 ms     | 0x1c5 PK11_DeriveWithTemplate()
   789 ms  0x1c5 ret:0x7fd85ac91e80
   789 ms  0x1c5 PK11_Derive()
   789 ms  0x1c5 basekey:0x7fd85ac91e80
   789 ms     | 0x1c5 PK11_DeriveWithTemplate()
   789 ms  0x1c5 ret:0x7fd85acfd880
   789 ms  0x1c5 SECKEY_DestroyPrivateKey()
   789 ms  0x1c5 privk:0x7fd84af3c820::7fd84af3c820  90 4c 0d 4b                                      .L.K
   789 ms  0x1c5 privk:0x7fd84af3c820::7fd84af3c820  e5 e5 e5 e5                                      ....
   789 ms  0x1c5 PK11_Encrypt()
   789 ms  0x1c5 symkey:0x7fd873317900
   790 ms  0x1c5 PR_Connect()
   790 ms  0x1c5 fd:0x7fd85ac52190
           /* TID 0x22f */
   808 ms  0x22f PR_Close()
   808 ms  0x22f fd:0x7fd85ac52130
           /* TID 0x1cd */
   843 ms  0x1cd PR_Close()
   843 ms  0x1cd fd:0x7fd85ac520d0
           /* TID 0x220 */
   843 ms  0x220 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   843 ms  0x220 ret:0x0
           /* TID 0x1c5 */
   844 ms  0x1c5 SSL_AuthCertificateComplete()
   844 ms  0x1c5 fd:0x7fd859e0f700
   844 ms  0x1c5 err:0x0
   844 ms  0x1c5 PK11_Encrypt()
   844 ms  0x1c5 symkey:0x7fd873317900
   990 ms  0x1c5 SECKEY_DestroyPrivateKey()
   990 ms  0x1c5 privk:0x7fd84c212020::7fd84c212020  f0 41 0d 4b                                      .A.K
   991 ms  0x1c5 privk:0x7fd84c212020::7fd84c212020  e5 e5 e5 e5                                      ....
   991 ms  0x1c5 SECKEY_DestroyPrivateKey()
   991 ms  0x1c5 privk:0x7fd84b02d020::7fd84b02d020  b0 af 0c 51                                      ...Q
   991 ms  0x1c5 privk:0x7fd84b02d020::7fd84b02d020  e5 e5 e5 e5                                      ....
  1252 ms  0x1c5 SSL_ImportFD()
  1252 ms  0x1c5 ret:0x7fd85ac52310
  1252 ms  0x1c5 SSL_AuthCertificateHook()
  1252 ms  0x1c5 fd:0x7fd85ac52310
  1252 ms  0x1c5 ret:0x0
  1252 ms  0x1c5 PR_Connect()
  1252 ms  0x1c5 fd:0x7fd85ac52310
  1278 ms  0x1c5 SECKEY_CreateECPrivateKey()
  1278 ms  0x1c5 cx:0x7fd84b0d8728
  1280 ms     | 0x1c5 EC_ValidatePublicKey()
  1280 ms     | 0x1c5 ret:0x0
  1280 ms  0x1c5 ret:0x7fd84af3b020::7fd84af3b020  60 4a 0d 4b                                      `J.K
  1280 ms  0x1c5 SECKEY_CreateECPrivateKey()
  1280 ms  0x1c5 cx:0x7fd84b0d8728
  1282 ms     | 0x1c5 EC_ValidatePublicKey()
  1287 ms     | 0x1c5 ret:0x0
  1287 ms  0x1c5 ret:0x7fd84af3d020::7fd84af3d020  40 4c 0d 4b                                      @L.K
           /* TID 0x220 */
  1340 ms  0x220 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1340 ms  0x220 ret:0x0
           /* TID 0x1c5 */
  1341 ms  SECKEY_ECParamsToKeySize()
  1341 ms  0x1c5 ret:0x100
  1341 ms  0x1c5 SECKEY_CreateECPrivateKey()
  1341 ms  0x1c5 cx:0x7fd84b0d8728
  1343 ms     | 0x1c5 EC_ValidatePublicKey()
  1347 ms     | 0x1c5 ret:0x0
  1347 ms  0x1c5 ret:0x7fd84af40020::7fd84af40020  10 4f 0d 4b                                      .O.K
  1348 ms  0x1c5 PK11_PubDeriveWithKDF()
  1348 ms  0x1c5 seckey:0x7fd84af40020
  1348 ms     | 0x1c5 EC_ValidatePublicKey()
  1352 ms     | 0x1c5 ret:0x0
  1356 ms  0x1c5 ret:0x7fd84cefbf00
  1356 ms  0x1c5 PK11_DeriveWithFlags()
  1356 ms  0x1c5 basekey:0x7fd84cefbf00
  1356 ms     | 0x1c5 PK11_DeriveWithTemplate()
  1356 ms  0x1c5 ret:0x7fd84af6ae80
  1356 ms  0x1c5 PK11_Derive()
  1356 ms  0x1c5 basekey:0x7fd84af6ae80
  1356 ms     | 0x1c5 PK11_DeriveWithTemplate()
  1356 ms  0x1c5 ret:0x7fd84af6af00
  1356 ms  0x1c5 SECKEY_DestroyPrivateKey()
  1356 ms  0x1c5 privk:0x7fd84af40020::7fd84af40020  10 4f 0d 4b                                      .O.K
  1356 ms  0x1c5 privk:0x7fd84af40020::7fd84af40020  e5 e5 e5 e5                                      ....
  1356 ms  0x1c5 PK11_Encrypt()
  1356 ms  0x1c5 symkey:0x7fd84af6b080
  1357 ms  0x1c5 SSL_AuthCertificateComplete()
  1357 ms  0x1c5 fd:0x7fd85ac52310
  1357 ms  0x1c5 err:0x0
  1357 ms  0x1c5 PK11_Encrypt()
  1357 ms  0x1c5 symkey:0x7fd84af6b080
  1408 ms  0x1c5 SECKEY_DestroyPrivateKey()
  1408 ms  0x1c5 privk:0x7fd84af3d020::7fd84af3d020  40 4c 0d 4b                                      @L.K
  1409 ms  0x1c5 privk:0x7fd84af3d020::7fd84af3d020  e5 e5 e5 e5                                      ....
  1409 ms  0x1c5 SECKEY_DestroyPrivateKey()
  1409 ms  0x1c5 privk:0x7fd84af3b020::7fd84af3b020  60 4a 0d 4b                                      `J.K
  1409 ms  0x1c5 privk:0x7fd84af3b020::7fd84af3b020  e5 e5 e5 e5                                      ....
  1413 ms  0x1c5 PK11_Encrypt()
  1413 ms  0x1c5 symkey:0x7fd84af6b080
  1443 ms  0x1c5 PK11_Encrypt()
  1443 ms  0x1c5 symkey:0x7fd84af6b080
  1470 ms  0x1c5 PK11_Encrypt()
  1470 ms  0x1c5 symkey:0x7fd84af6b080
  1498 ms  0x1c5 PK11_Encrypt()
  1498 ms  0x1c5 symkey:0x7fd84af6b080
  1616 ms  0x1c5 PK11_Encrypt()
  1616 ms  0x1c5 symkey:0x7fd84af6b080
  1647 ms  0x1c5 PK11_Encrypt()
  1647 ms  0x1c5 symkey:0x7fd84af6b080
  1677 ms  0x1c5 PK11_Encrypt()
  1677 ms  0x1c5 symkey:0x7fd84af6b080
           /* TID 0x21a */
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac52400
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac524c0
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac52400
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac524c0
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac52400
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac524c0
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac52400
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac524c0
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac52400
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac524c0
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac52400
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac524c0
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac52400
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac524c0
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac52400
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac524c0
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac52400
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac524c0
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac52400
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac524c0
  1704 ms  0x21a PR_Close()
  1704 ms  0x21a fd:0x7fd85ac52400
  1705 ms  0x21a PR_Close()
  1705 ms  0x21a fd:0x7fd85ac524c0
  1705 ms  0x21a PR_Close()
  1705 ms  0x21a fd:0x7fd85ac52400
  1705 ms  0x21a PR_Close()
  1705 ms  0x21a fd:0x7fd85ac524c0
  1705 ms  0x21a PR_Close()
  1705 ms  0x21a fd:0x7fd85ac52400
  1705 ms  0x21a PR_Close()
  1705 ms  0x21a fd:0x7fd85ac524c0
  1705 ms  0x21a PR_Close()
  1705 ms  0x21a fd:0x7fd85ac52400
  1705 ms  0x21a PR_Close()
  1705 ms  0x21a fd:0x7fd85ac524c0
  1707 ms  0x21a PR_Close()
  1707 ms  0x21a fd:0x7fd85ac52400
  1707 ms  0x21a PR_Close()
  1707 ms  0x21a fd:0x7fd85ac52400
  1708 ms  0x21a PR_Close()
  1708 ms  0x21a fd:0x7fd85ac52400
  1708 ms  0x21a PR_Close()
  1708 ms  0x21a fd:0x7fd85ac52430
  1710 ms  0x21a PR_Close()
  1710 ms  0x21a fd:0x7fd85ac52430
  1710 ms  0x21a PR_Close()
  1710 ms  0x21a fd:0x7fd85ac52430
  1711 ms  0x21a PR_Close()
  1711 ms  0x21a fd:0x7fd85ac52430
  1711 ms  0x21a PR_Close()
  1711 ms  0x21a fd:0x7fd85ac52430
  1745 ms  0x21a PR_Close()
  1745 ms  0x21a fd:0x7fd85ac52430
  1746 ms  0x21a PR_Close()
  1746 ms  0x21a fd:0x7fd85ac52430
  1753 ms  0x21a PR_Close()
  1753 ms  0x21a fd:0x7fd85ac52430
  1753 ms  0x21a PR_Close()
  1753 ms  0x21a fd:0x7fd85ac52430
  1760 ms  0x21a PR_Close()
  1760 ms  0x21a fd:0x7fd85ac52430
  1760 ms  0x21a PR_Close()
  1760 ms  0x21a fd:0x7fd85ac52430
  1762 ms  0x21a PR_Close()
  1762 ms  0x21a fd:0x7fd85ac52430
  1762 ms  0x21a PR_Close()
  1762 ms  0x21a fd:0x7fd85ac52430
           /* TID 0x217 */
  1762 ms  0x217 PR_Close()
  1762 ms  0x217 fd:0x7fd85ac52430
  1762 ms  0x217 PR_Close()
  1762 ms  0x217 fd:0x7fd85ac52430
  1762 ms  0x217 PR_Close()
  1762 ms  0x217 fd:0x7fd85ac52430
  1762 ms  0x217 PR_Close()
  1762 ms  0x217 fd:0x7fd85ac52430
  1762 ms  0x217 PR_Close()
  1762 ms  0x217 fd:0x7fd85ac52430
  1762 ms  0x217 PR_Close()
  1762 ms  0x217 fd:0x7fd85ac52430
  1762 ms  0x217 PR_Close()
  1762 ms  0x217 fd:0x7fd85ac52430
  1762 ms  0x217 PR_Close()
  1762 ms  0x217 fd:0x7fd85ac52430
  1763 ms  0x217 PR_Close()
  1763 ms  0x217 fd:0x7fd85ac52430
  1763 ms  0x217 PR_Close()
  1763 ms  0x217 fd:0x7fd85ac52430
  1763 ms  0x217 PR_Close()
  1763 ms  0x217 fd:0x7fd85ac52430
  1763 ms  0x217 PR_Close()
  1763 ms  0x217 fd:0x7fd85ac52430
  1763 ms  0x217 PR_Close()
  1763 ms  0x217 fd:0x7fd85ac52430
  1763 ms  0x217 PR_Close()
  1763 ms  0x217 fd:0x7fd85ac52430
  1763 ms  0x217 PR_Close()
  1763 ms  0x217 fd:0x7fd85ac52430
           /* TID 0x22f */
  2266 ms  0x22f PR_Close()
  2266 ms  0x22f fd:0x7fd84ace4ac0
  2269 ms  0x22f PR_Close()
  2269 ms  0x22f fd:0x7fd84ace4ac0
  2812 ms  0x22f PR_Close()
  2812 ms  0x22f fd:0x7fd84ace4af0
           /* TID 0x1cd */
  4223 ms  0x1cd PR_Close()
  4223 ms  0x1cd fd:0x7fd84ace4af0
           /* TID 0x1c5 */
  4607 ms  0x1c5 SSL_ImportFD()
  4607 ms  0x1c5 ret:0x7fd84e19ab20
  4607 ms  0x1c5 SSL_AuthCertificateHook()
  4607 ms  0x1c5 fd:0x7fd84e19ab20
  4607 ms  0x1c5 ret:0x0
  4607 ms  0x1c5 PR_Connect()
  4607 ms  0x1c5 fd:0x7fd84e19ab20
  4664 ms  0x1c5 SECKEY_CreateECPrivateKey()
  4664 ms  0x1c5 cx:0x7fd84b0d8a68
  4665 ms     | 0x1c5 EC_ValidatePublicKey()
  4665 ms     | 0x1c5 ret:0x0
  4665 ms  0x1c5 ret:0x7fd84ac42020::7fd84ac42020  60 cf c5 4a                                      `..J
  4665 ms  0x1c5 SECKEY_CreateECPrivateKey()
  4665 ms  0x1c5 cx:0x7fd84b0d8a68
  4665 ms     | 0x1c5 EC_ValidatePublicKey()
  4667 ms     | 0x1c5 ret:0x0
  4667 ms  0x1c5 ret:0x7fd84ac44020::7fd84ac44020  a0 e1 c6 4a                                      ...J
  4724 ms  0x1c5 PK11_Derive()
  4724 ms  0x1c5 basekey:0x7fd84cefbf00
  4724 ms     | 0x1c5 PK11_DeriveWithTemplate()
  4725 ms  0x1c5 ret:0x7fd84ac77180
  4725 ms  0x1c5 PK11_PubDeriveWithKDF()
  4725 ms  0x1c5 seckey:0x7fd84ac42020
  4725 ms     | 0x1c5 EC_ValidatePublicKey()
  4725 ms     | 0x1c5 ret:0x0
  4725 ms  0x1c5 ret:0x7fd84cefbf00
  4725 ms  SECKEY_ECParamsToKeySize()
  4725 ms  0x1c5 ret:0xff
  4725 ms  0x1c5 PK11_DeriveWithFlags()
  4725 ms  0x1c5 basekey:0x7fd84ac77180
  4725 ms     | 0x1c5 PK11_DeriveWithTemplate()
  4725 ms  0x1c5 ret:0x7fd84ac77480
  4725 ms  0x1c5 PK11_Derive()
  4725 ms  0x1c5 basekey:0x7fd84cefbf00
  4725 ms     | 0x1c5 PK11_DeriveWithTemplate()
  4725 ms  0x1c5 ret:0x7fd84ac77500
  4725 ms  0x1c5 PK11_DeriveWithFlags()
  4725 ms  0x1c5 basekey:0x7fd84ac77500
  4725 ms     | 0x1c5 PK11_DeriveWithTemplate()
  4725 ms  0x1c5 ret:0x7fd84ac77180
  4725 ms  0x1c5 PK11_DeriveWithFlags()
  4725 ms  0x1c5 basekey:0x7fd84ac77500
  4725 ms     | 0x1c5 PK11_DeriveWithTemplate()
  4725 ms  0x1c5 ret:0x7fd84cefbf00
  4725 ms  0x1c5 PK11_DeriveWithFlags()
  4725 ms  0x1c5 basekey:0x7fd84ac77500
  4725 ms     | 0x1c5 PK11_DeriveWithTemplate()
  4725 ms  0x1c5 ret:0x7fd84ac77480
  4725 ms  0x1c5 PK11_Derive()
  4725 ms  0x1c5 basekey:0x7fd84ac77580
  4725 ms     | 0x1c5 PK11_DeriveWithTemplate()
  4725 ms  0x1c5 ret:0x7fd84ac77600
  4725 ms  0x1c5 PK11_DeriveWithFlags()
  4725 ms  0x1c5 basekey:0x7fd84cefbf00
  4725 ms     | 0x1c5 PK11_DeriveWithTemplate()
  4725 ms  0x1c5 ret:0x7fd84ac77500
  4725 ms  0x1c5 PK11_DeriveWithFlags()
  4725 ms  0x1c5 basekey:0x7fd84cefbf00
  4725 ms     | 0x1c5 PK11_DeriveWithTemplate()
  4725 ms  0x1c5 ret:0x7fd84ac77480
  4727 ms  0x1c5 PK11_DeriveWithFlags()
  4727 ms  0x1c5 basekey:0x7fd84cefbf00
  4727 ms     | 0x1c5 PK11_DeriveWithTemplate()
  4727 ms  0x1c5 ret:0x7fd84ac77480
  4727 ms  0x1c5 PR_Connect()
  4727 ms  0x1c5 fd:0x7fd8515270d0
           /* TID 0x1cd */
  4782 ms  0x1cd PR_Close()
  4782 ms  0x1cd fd:0x7fd84ac6f0a0
           /* TID 0x220 */
  4782 ms  0x220 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4782 ms  0x220 ret:0x0
           /* TID 0x1cd */
  4809 ms  0x1cd PR_Close()
  4809 ms  0x1cd fd:0x7fd84ac6f0a0
           /* TID 0x220 */
  4809 ms  0x220 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4809 ms  0x220 ret:0x0
           /* TID 0x1c5 */
  4815 ms  0x1c5 SSL_AuthCertificateComplete()
  4815 ms  0x1c5 fd:0x7fd84e19ab20
  4815 ms  0x1c5 err:0x0
  4815 ms     | 0x1c5 PK11_DeriveWithFlags()
  4815 ms     | 0x1c5 basekey:0x7fd84ac77600
  4815 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  4815 ms     | 0x1c5 ret:0x7fd84ac77480
  4815 ms     | 0x1c5 PK11_DeriveWithFlags()
  4815 ms     | 0x1c5 basekey:0x7fd84ac77600
  4815 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  4815 ms     | 0x1c5 ret:0x7fd84ac77580
  4815 ms     | 0x1c5 PK11_DeriveWithFlags()
  4815 ms     | 0x1c5 basekey:0x7fd84ac77600
  4815 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  4815 ms     | 0x1c5 ret:0x7fd84ac77200
  4815 ms     | 0x1c5 PK11_DeriveWithFlags()
  4815 ms     | 0x1c5 basekey:0x7fd84ac77180
  4815 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  4815 ms     | 0x1c5 ret:0x7fd84ac77a80
  4815 ms     | 0x1c5 PK11_DeriveWithFlags()
  4815 ms     | 0x1c5 basekey:0x7fd84ac77180
  4815 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  4815 ms     | 0x1c5 ret:0x7fd84ac77c80
  4815 ms     | 0x1c5 PK11_DeriveWithFlags()
  4815 ms     | 0x1c5 basekey:0x7fd84ac77580
  4815 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  4815 ms     | 0x1c5 ret:0x7fd84ac77c80
  4815 ms     | 0x1c5 PK11_DeriveWithFlags()
  4815 ms     | 0x1c5 basekey:0x7fd84ac77580
  4815 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  4815 ms     | 0x1c5 ret:0x7fd84ac77d80
  4815 ms     | 0x1c5 PK11_DeriveWithFlags()
  4815 ms     | 0x1c5 basekey:0x7fd84ac77180
  4815 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  4815 ms     | 0x1c5 ret:0x7fd84ac77500
  4815 ms     | 0x1c5 PK11_Encrypt()
  4815 ms     | 0x1c5 symkey:0x7fd84ac77a80
  4815 ms     | 0x1c5 PK11_DeriveWithFlags()
  4815 ms     | 0x1c5 basekey:0x7fd84ac77480
  4815 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  4815 ms     | 0x1c5 ret:0x7fd84ac77500
  4815 ms     | 0x1c5 PK11_DeriveWithFlags()
  4815 ms     | 0x1c5 basekey:0x7fd84ac77480
  4815 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  4815 ms     | 0x1c5 ret:0x7fd84ac77d80
  4815 ms     | 0x1c5 PK11_DeriveWithFlags()
  4815 ms     | 0x1c5 basekey:0x7fd84ac77600
  4815 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  4815 ms     | 0x1c5 ret:0x7fd84ac77a80
  4815 ms     | 0x1c5 SECKEY_DestroyPrivateKey()
  4815 ms     | 0x1c5 privk:0x7fd84ac44020::7fd84ac44020  a0 e1 c6 4a                                      ...J
  4815 ms     | 0x1c5 privk:0x7fd84ac44020::7fd84ac44020  e5 e5 e5 e5                                      ....
  4815 ms     | 0x1c5 SECKEY_DestroyPrivateKey()
  4815 ms     | 0x1c5 privk:0x7fd84ac42020::7fd84ac42020  60 cf c5 4a                                      `..J
  4816 ms     | 0x1c5 privk:0x7fd84ac42020::7fd84ac42020  e5 e5 e5 e5                                      ....
  4816 ms  0x1c5 PK11_Encrypt()
  4816 ms  0x1c5 symkey:0x7fd84ac77500
  4872 ms  0x1c5 PK11_DeriveWithFlags()
  4872 ms  0x1c5 basekey:0x7fd84ac77a80
  4872 ms     | 0x1c5 PK11_DeriveWithTemplate()
  4872 ms  0x1c5 ret:0x7fd84cefbf00
  4872 ms  0x1c5 PK11_DeriveWithFlags()
  4872 ms  0x1c5 basekey:0x7fd84ac77a80
  4872 ms     | 0x1c5 PK11_DeriveWithTemplate()
  4872 ms  0x1c5 ret:0x7fd84cefbf00
           /* TID 0x1dc */
  4930 ms  0x1dc PR_Close()
  4930 ms  0x1dc fd:0x7fd84ac6f370
           /* TID 0x1c5 */
  4941 ms  0x1c5 SSL_ImportFD()
  4941 ms  0x1c5 ret:0x7fd84ac6fb20
  4941 ms  0x1c5 SSL_AuthCertificateHook()
  4941 ms  0x1c5 fd:0x7fd84ac6fb20
  4941 ms  0x1c5 ret:0x0
  4941 ms  0x1c5 PR_Connect()
  4941 ms  0x1c5 fd:0x7fd84ac6fb20
  4996 ms  0x1c5 SECKEY_CreateECPrivateKey()
  4996 ms  0x1c5 cx:0x7fd84b0d8c08
  4996 ms     | 0x1c5 EC_ValidatePublicKey()
  4996 ms     | 0x1c5 ret:0x0
  4996 ms  0x1c5 ret:0x7fd84ac52820::7fd84ac52820  60 ea c6 4a                                      `..J
  4997 ms  0x1c5 SECKEY_CreateECPrivateKey()
  4997 ms  0x1c5 cx:0x7fd84b0d8c08
  4997 ms     | 0x1c5 EC_ValidatePublicKey()
  4999 ms     | 0x1c5 ret:0x0
  4999 ms  0x1c5 ret:0x7fd84ac54820::7fd84ac54820  80 ed c6 4a                                      ...J
  5055 ms  0x1c5 PK11_Derive()
  5055 ms  0x1c5 basekey:0x7fd84cefbf00
  5055 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5055 ms  0x1c5 ret:0x7fd84ac77180
  5055 ms  0x1c5 PK11_PubDeriveWithKDF()
  5055 ms  0x1c5 seckey:0x7fd84ac52820
  5055 ms     | 0x1c5 EC_ValidatePublicKey()
  5055 ms     | 0x1c5 ret:0x0
  5055 ms  0x1c5 ret:0x7fd84cefbf00
  5056 ms  SECKEY_ECParamsToKeySize()
  5056 ms  0x1c5 ret:0xff
  5056 ms  0x1c5 PK11_DeriveWithFlags()
  5056 ms  0x1c5 basekey:0x7fd84ac77180
  5056 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5056 ms  0x1c5 ret:0x7fd84ac77600
  5056 ms  0x1c5 PK11_Derive()
  5056 ms  0x1c5 basekey:0x7fd84cefbf00
  5056 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5056 ms  0x1c5 ret:0x7fd84ac77d80
  5056 ms  0x1c5 PK11_DeriveWithFlags()
  5056 ms  0x1c5 basekey:0x7fd84ac77d80
  5056 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5057 ms  0x1c5 ret:0x7fd84ac77180
  5057 ms  0x1c5 PK11_DeriveWithFlags()
  5057 ms  0x1c5 basekey:0x7fd84ac77d80
  5057 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5057 ms  0x1c5 ret:0x7fd84cefbf00
  5057 ms  0x1c5 PK11_DeriveWithFlags()
  5057 ms  0x1c5 basekey:0x7fd84ac77d80
  5057 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5057 ms  0x1c5 ret:0x7fd84ac77600
  5057 ms  0x1c5 PK11_Derive()
  5057 ms  0x1c5 basekey:0x7fd84ac77e80
  5057 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5057 ms  0x1c5 ret:0x7fd84ac78a00
  5057 ms  0x1c5 PK11_DeriveWithFlags()
  5057 ms  0x1c5 basekey:0x7fd84cefbf00
  5057 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5057 ms  0x1c5 ret:0x7fd84ac77d80
  5057 ms  0x1c5 PK11_DeriveWithFlags()
  5057 ms  0x1c5 basekey:0x7fd84cefbf00
  5057 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5057 ms  0x1c5 ret:0x7fd84ac77600
  5058 ms  0x1c5 PK11_DeriveWithFlags()
  5058 ms  0x1c5 basekey:0x7fd84cefbf00
  5058 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5058 ms  0x1c5 ret:0x7fd84ac77600
  5058 ms  0x1c5 SSL_AuthCertificateComplete()
  5058 ms  0x1c5 fd:0x7fd84ac6fb20
  5058 ms  0x1c5 err:0x0
  5058 ms     | 0x1c5 PK11_DeriveWithFlags()
  5058 ms     | 0x1c5 basekey:0x7fd84ac78a00
  5058 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  5058 ms     | 0x1c5 ret:0x7fd84ac77600
  5058 ms     | 0x1c5 PK11_DeriveWithFlags()
  5058 ms     | 0x1c5 basekey:0x7fd84ac78a00
  5058 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  5058 ms     | 0x1c5 ret:0x7fd84ac77e80
  5058 ms     | 0x1c5 PK11_DeriveWithFlags()
  5058 ms     | 0x1c5 basekey:0x7fd84ac78a00
  5058 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  5058 ms     | 0x1c5 ret:0x7fd84ac78b00
  5058 ms     | 0x1c5 PK11_DeriveWithFlags()
  5058 ms     | 0x1c5 basekey:0x7fd84ac77180
  5058 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  5058 ms     | 0x1c5 ret:0x7fd84ac78b80
  5058 ms     | 0x1c5 PK11_DeriveWithFlags()
  5058 ms     | 0x1c5 basekey:0x7fd84ac77180
  5058 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  5058 ms     | 0x1c5 ret:0x7fd84ac78c00
  5058 ms     | 0x1c5 PK11_DeriveWithFlags()
  5058 ms     | 0x1c5 basekey:0x7fd84ac77e80
  5058 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  5058 ms     | 0x1c5 ret:0x7fd84ac78c00
  5058 ms     | 0x1c5 PK11_DeriveWithFlags()
  5058 ms     | 0x1c5 basekey:0x7fd84ac77e80
  5058 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  5058 ms     | 0x1c5 ret:0x7fd84ac78c80
  5058 ms     | 0x1c5 PK11_DeriveWithFlags()
  5058 ms     | 0x1c5 basekey:0x7fd84ac77180
  5058 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  5058 ms     | 0x1c5 ret:0x7fd84ac77d80
  5058 ms     | 0x1c5 PK11_Encrypt()
  5058 ms     | 0x1c5 symkey:0x7fd84ac78b80
  5058 ms     | 0x1c5 PK11_DeriveWithFlags()
  5058 ms     | 0x1c5 basekey:0x7fd84ac77600
  5058 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  5058 ms     | 0x1c5 ret:0x7fd84ac77d80
  5058 ms     | 0x1c5 PK11_DeriveWithFlags()
  5058 ms     | 0x1c5 basekey:0x7fd84ac77600
  5058 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  5058 ms     | 0x1c5 ret:0x7fd84ac78c80
  5058 ms     | 0x1c5 PK11_DeriveWithFlags()
  5058 ms     | 0x1c5 basekey:0x7fd84ac78a00
  5058 ms     |    | 0x1c5 PK11_DeriveWithTemplate()
  5058 ms     | 0x1c5 ret:0x7fd84ac78b80
  5058 ms     | 0x1c5 SECKEY_DestroyPrivateKey()
  5058 ms     | 0x1c5 privk:0x7fd84ac54820::7fd84ac54820  80 ed c6 4a                                      ...J
  5058 ms     | 0x1c5 privk:0x7fd84ac54820::7fd84ac54820  e5 e5 e5 e5                                      ....
  5058 ms     | 0x1c5 SECKEY_DestroyPrivateKey()
  5058 ms     | 0x1c5 privk:0x7fd84ac52820::7fd84ac52820  60 ea c6 4a                                      `..J
  5058 ms     | 0x1c5 privk:0x7fd84ac52820::7fd84ac52820  e5 e5 e5 e5                                      ....
  5059 ms  0x1c5 PK11_Encrypt()
  5059 ms  0x1c5 symkey:0x7fd84ac77d80
  5118 ms  0x1c5 PK11_DeriveWithFlags()
  5118 ms  0x1c5 basekey:0x7fd84ac78b80
  5118 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5118 ms  0x1c5 ret:0x7fd84cefbf00
  5118 ms  0x1c5 PK11_DeriveWithFlags()
  5118 ms  0x1c5 basekey:0x7fd84ac78b80
  5118 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5118 ms  0x1c5 ret:0x7fd84cefbf00
           /* TID 0x1dc */
  5374 ms  0x1dc PR_Close()
  5374 ms  0x1dc fd:0x7fd84ac6fdf0
           /* TID 0x1cd */
  5515 ms  0x1cd PR_Close()
  5515 ms  0x1cd fd:0x7fd839c32070
           /* TID 0x1c5 */
  5542 ms  0x1c5 SSL_ImportFD()
  5542 ms  0x1c5 ret:0x7fd839c32a60
  5542 ms  0x1c5 SSL_AuthCertificateHook()
  5542 ms  0x1c5 fd:0x7fd839c32a60
  5542 ms  0x1c5 ret:0x0
  5542 ms  0x1c5 PR_Connect()
  5542 ms  0x1c5 fd:0x7fd839c32a60
  5542 ms  0x1c5 SSL_ImportFD()
  5542 ms  0x1c5 ret:0x7fd839c32970
  5542 ms  0x1c5 SSL_AuthCertificateHook()
  5542 ms  0x1c5 fd:0x7fd839c32970
  5542 ms  0x1c5 ret:0x0
  5542 ms  0x1c5 PR_Connect()
  5542 ms  0x1c5 fd:0x7fd839c32970
  5543 ms  0x1c5 SSL_ImportFD()
  5543 ms  0x1c5 ret:0x7fd839c329a0
  5543 ms  0x1c5 SSL_AuthCertificateHook()
  5543 ms  0x1c5 fd:0x7fd839c329a0
  5543 ms  0x1c5 ret:0x0
  5543 ms  0x1c5 PR_Connect()
  5543 ms  0x1c5 fd:0x7fd839c329a0
  5543 ms  0x1c5 SSL_ImportFD()
  5543 ms  0x1c5 ret:0x7fd839c329d0
  5543 ms  0x1c5 SSL_AuthCertificateHook()
  5543 ms  0x1c5 fd:0x7fd839c329d0
  5543 ms  0x1c5 ret:0x0
  5543 ms  0x1c5 PR_Connect()
  5543 ms  0x1c5 fd:0x7fd839c329d0
  5543 ms  0x1c5 SSL_ImportFD()
  5543 ms  0x1c5 ret:0x7fd839c32a00
  5543 ms  0x1c5 SSL_AuthCertificateHook()
  5543 ms  0x1c5 fd:0x7fd839c32a00
  5543 ms  0x1c5 ret:0x0
  5543 ms  0x1c5 PR_Connect()
  5543 ms  0x1c5 fd:0x7fd839c32a00
  5569 ms  0x1c5 SECKEY_CreateECPrivateKey()
  5569 ms  0x1c5 cx:0x7fd84b0d9908
  5569 ms     | 0x1c5 EC_ValidatePublicKey()
  5569 ms     | 0x1c5 ret:0x0
  5569 ms  0x1c5 ret:0x7fd839c39820::7fd839c39820  10 4a c3 39                                      .J.9
  5569 ms  0x1c5 SECKEY_CreateECPrivateKey()
  5569 ms  0x1c5 cx:0x7fd84b0d9908
  5570 ms     | 0x1c5 EC_ValidatePublicKey()
  5571 ms     | 0x1c5 ret:0x0
  5571 ms  0x1c5 ret:0x7fd839c3b820::7fd839c3b820  f0 4b c3 39                                      .K.9
  5587 ms  0x1c5 SECKEY_CreateECPrivateKey()
  5587 ms  0x1c5 cx:0x7fd84b0d9768
  5588 ms     | 0x1c5 EC_ValidatePublicKey()
  5588 ms     | 0x1c5 ret:0x0
  5588 ms  0x1c5 ret:0x7fd839c44820::7fd839c44820  60 2a d0 39                                      `*.9
  5588 ms  0x1c5 SECKEY_CreateECPrivateKey()
  5588 ms  0x1c5 cx:0x7fd84b0d9768
  5589 ms     | 0x1c5 EC_ValidatePublicKey()
  5590 ms     | 0x1c5 ret:0x0
  5590 ms  0x1c5 ret:0x7fd839c46820::7fd839c46820  f0 fb d4 39                                      ...9
  5604 ms  0x1c5 SECKEY_CreateECPrivateKey()
  5604 ms  0x1c5 cx:0x7fd84b0d95c8
  5605 ms     | 0x1c5 EC_ValidatePublicKey()
  5605 ms     | 0x1c5 ret:0x0
  5605 ms  0x1c5 ret:0x7fd839c49820::7fd839c49820  30 38 3e 4c                                      08>L
  5605 ms  0x1c5 SECKEY_CreateECPrivateKey()
  5605 ms  0x1c5 cx:0x7fd84b0d95c8
  5606 ms     | 0x1c5 EC_ValidatePublicKey()
  5607 ms     | 0x1c5 ret:0x0
  5607 ms  0x1c5 ret:0x7fd839c4b820::7fd839c4b820  f0 21 cb 39                                      .!.9
  5607 ms  0x1c5 SECKEY_CreateECPrivateKey()
  5607 ms  0x1c5 cx:0x7fd84b0d9428
  5608 ms     | 0x1c5 EC_ValidatePublicKey()
  5608 ms     | 0x1c5 ret:0x0
  5608 ms  0x1c5 ret:0x7fd839c4e020::7fd839c4e020  80 23 cb 39                                      .#.9
  5608 ms  0x1c5 SECKEY_CreateECPrivateKey()
  5608 ms  0x1c5 cx:0x7fd84b0d9428
  5609 ms     | 0x1c5 EC_ValidatePublicKey()
  5610 ms     | 0x1c5 ret:0x0
  5610 ms  0x1c5 ret:0x7fd839c50020::7fd839c50020  60 25 cb 39                                      `%.9
  5627 ms  0x1c5 SECKEY_CreateECPrivateKey()
  5627 ms  0x1c5 cx:0x7fd84b0d8f48
  5635 ms     | 0x1c5 EC_ValidatePublicKey()
  5635 ms     | 0x1c5 ret:0x0
  5635 ms  0x1c5 ret:0x7fd839c52820::7fd839c52820  50 26 cb 39                                      P&.9
  5635 ms  0x1c5 SECKEY_CreateECPrivateKey()
  5635 ms  0x1c5 cx:0x7fd84b0d8f48
  5636 ms     | 0x1c5 EC_ValidatePublicKey()
  5637 ms     | 0x1c5 ret:0x0
  5637 ms  0x1c5 ret:0x7fd839c54820::7fd839c54820  30 28 cb 39                                      0(.9
           /* TID 0x220 */
  5640 ms  0x220 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5640 ms  0x220 ret:0x0
           /* TID 0x1c5 */
  5641 ms  SECKEY_ECParamsToKeySize()
  5641 ms  0x1c5 ret:0xff
  5641 ms  0x1c5 SECKEY_CreateECPrivateKey()
  5641 ms  0x1c5 cx:0x7fd84b0d9908
  5642 ms     | 0x1c5 EC_ValidatePublicKey()
  5642 ms     | 0x1c5 ret:0x0
  5642 ms  0x1c5 ret:0x7fd839cd3820::7fd839cd3820  70 2e cb 39                                      p..9
  5642 ms  0x1c5 PK11_PubDeriveWithKDF()
  5642 ms  0x1c5 seckey:0x7fd839cd3820
  5642 ms     | 0x1c5 EC_ValidatePublicKey()
  5642 ms     | 0x1c5 ret:0x0
  5642 ms  0x1c5 ret:0x7fd84cefbf00
  5642 ms  0x1c5 PK11_DeriveWithFlags()
  5642 ms  0x1c5 basekey:0x7fd84cefbf00
  5642 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5642 ms  0x1c5 ret:0x7fd84ac77180
  5642 ms  0x1c5 PK11_Derive()
  5642 ms  0x1c5 basekey:0x7fd84ac77180
  5642 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5642 ms  0x1c5 ret:0x7fd84ac78a00
  5642 ms  0x1c5 SECKEY_DestroyPrivateKey()
  5642 ms  0x1c5 privk:0x7fd839cd3820::7fd839cd3820  70 2e cb 39                                      p..9
  5643 ms  0x1c5 privk:0x7fd839cd3820::7fd839cd3820  e5 e5 e5 e5                                      ....
  5643 ms  0x1c5 PK11_Encrypt()
  5643 ms  0x1c5 symkey:0x7fd839cf9580
  5658 ms  SECKEY_ECParamsToKeySize()
  5658 ms  0x1c5 ret:0xff
  5658 ms  0x1c5 SECKEY_CreateECPrivateKey()
  5658 ms  0x1c5 cx:0x7fd84b0d9768
  5659 ms     | 0x1c5 EC_ValidatePublicKey()
  5659 ms     | 0x1c5 ret:0x0
  5659 ms  0x1c5 ret:0x7fd839cd5820::7fd839cd5820  90 37 e7 39                                      .7.9
  5659 ms  0x1c5 PK11_PubDeriveWithKDF()
  5659 ms  0x1c5 seckey:0x7fd839cd5820
  5659 ms     | 0x1c5 EC_ValidatePublicKey()
  5659 ms     | 0x1c5 ret:0x0
  5659 ms  0x1c5 ret:0x7fd84cefbf00
  5659 ms  0x1c5 PK11_DeriveWithFlags()
  5659 ms  0x1c5 basekey:0x7fd84cefbf00
  5659 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5659 ms  0x1c5 ret:0x7fd84ac78c80
  5659 ms  0x1c5 PK11_Derive()
  5659 ms  0x1c5 basekey:0x7fd84ac78c80
  5659 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5660 ms  0x1c5 ret:0x7fd839cf9680
  5660 ms  0x1c5 SECKEY_DestroyPrivateKey()
  5660 ms  0x1c5 privk:0x7fd839cd5820::7fd839cd5820  90 37 e7 39                                      .7.9
  5660 ms  0x1c5 privk:0x7fd839cd5820::7fd839cd5820  e5 e5 e5 e5                                      ....
  5660 ms  0x1c5 PK11_Encrypt()
  5660 ms  0x1c5 symkey:0x7fd839cf9800
  5664 ms  SECKEY_ECParamsToKeySize()
  5664 ms  0x1c5 ret:0xff
  5664 ms  0x1c5 SECKEY_CreateECPrivateKey()
  5664 ms  0x1c5 cx:0x7fd84b0d95c8
  5664 ms     | 0x1c5 EC_ValidatePublicKey()
  5664 ms     | 0x1c5 ret:0x0
  5665 ms  0x1c5 ret:0x7fd839cd8020::7fd839cd8020  90 42 d3 4a                                      .B.J
  5665 ms  0x1c5 PK11_PubDeriveWithKDF()
  5665 ms  0x1c5 seckey:0x7fd839cd8020
  5665 ms     | 0x1c5 EC_ValidatePublicKey()
  5665 ms     | 0x1c5 ret:0x0
  5665 ms  0x1c5 ret:0x7fd84cefbf00
  5665 ms  0x1c5 PK11_DeriveWithFlags()
  5665 ms  0x1c5 basekey:0x7fd84cefbf00
  5665 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5665 ms  0x1c5 ret:0x7fd839cf9900
  5665 ms  0x1c5 PK11_Derive()
  5665 ms  0x1c5 basekey:0x7fd839cf9900
  5665 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5665 ms  0x1c5 ret:0x7fd839cf9980
  5665 ms  0x1c5 SECKEY_DestroyPrivateKey()
  5665 ms  0x1c5 privk:0x7fd839cd8020::7fd839cd8020  90 42 d3 4a                                      .B.J
  5665 ms  0x1c5 privk:0x7fd839cd8020::7fd839cd8020  e5 e5 e5 e5                                      ....
  5665 ms  0x1c5 PK11_Encrypt()
  5665 ms  0x1c5 symkey:0x7fd839cf9b00
  5674 ms  SECKEY_ECParamsToKeySize()
  5674 ms  0x1c5 ret:0xff
  5674 ms  0x1c5 SECKEY_CreateECPrivateKey()
  5674 ms  0x1c5 cx:0x7fd84b0d9428
  5674 ms     | 0x1c5 EC_ValidatePublicKey()
  5674 ms     | 0x1c5 ret:0x0
  5674 ms  0x1c5 ret:0x7fd839cda820::7fd839cda820  00 46 d3 4a                                      .F.J
  5675 ms  0x1c5 PK11_PubDeriveWithKDF()
  5675 ms  0x1c5 seckey:0x7fd839cda820
  5675 ms     | 0x1c5 EC_ValidatePublicKey()
  5675 ms     | 0x1c5 ret:0x0
  5675 ms  0x1c5 ret:0x7fd84cefbf00
  5675 ms  0x1c5 PK11_DeriveWithFlags()
  5675 ms  0x1c5 basekey:0x7fd84cefbf00
  5675 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5675 ms  0x1c5 ret:0x7fd839cf9c00
  5675 ms  0x1c5 PK11_Derive()
  5675 ms  0x1c5 basekey:0x7fd839cf9c00
  5675 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5675 ms  0x1c5 ret:0x7fd839cf9c80
  5675 ms  0x1c5 SECKEY_DestroyPrivateKey()
  5675 ms  0x1c5 privk:0x7fd839cda820::7fd839cda820  00 46 d3 4a                                      .F.J
  5675 ms  0x1c5 privk:0x7fd839cda820::7fd839cda820  e5 e5 e5 e5                                      ....
  5675 ms  0x1c5 PK11_Encrypt()
  5675 ms  0x1c5 symkey:0x7fd839cf9e00
  5682 ms  SECKEY_ECParamsToKeySize()
  5682 ms  0x1c5 ret:0xff
  5682 ms  0x1c5 SECKEY_CreateECPrivateKey()
  5682 ms  0x1c5 cx:0x7fd84b0d8f48
  5682 ms     | 0x1c5 EC_ValidatePublicKey()
  5682 ms     | 0x1c5 ret:0x0
  5682 ms  0x1c5 ret:0x7fd839cdd020::7fd839cdd020  20 49 d3 4a                                       I.J
  5682 ms  0x1c5 PK11_PubDeriveWithKDF()
  5682 ms  0x1c5 seckey:0x7fd839cdd020
  5682 ms     | 0x1c5 EC_ValidatePublicKey()
  5682 ms     | 0x1c5 ret:0x0
  5683 ms  0x1c5 ret:0x7fd84cefbf00
  5683 ms  0x1c5 PK11_DeriveWithFlags()
  5683 ms  0x1c5 basekey:0x7fd84cefbf00
  5683 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5683 ms  0x1c5 ret:0x7fd839cf9f00
  5683 ms  0x1c5 PK11_Derive()
  5683 ms  0x1c5 basekey:0x7fd839cf9f00
  5683 ms     | 0x1c5 PK11_DeriveWithTemplate()
  5683 ms  0x1c5 ret:0x7fd839cf9f80
  5683 ms  0x1c5 SECKEY_DestroyPrivateKey()
  5683 ms  0x1c5 privk:0x7fd839cdd020::7fd839cdd020  20 49 d3 4a                                       I.J
  5683 ms  0x1c5 privk:0x7fd839cdd020::7fd839cdd020  e5 e5 e5 e5                                      ....
  5683 ms  0x1c5 PK11_Encrypt()
  5683 ms  0x1c5 symkey:0x7fd839cfa100
           /* TID 0x2cd */
  6664 ms  0x2cd _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x1c5 */
  6672 ms  0x1c5 SSL_AuthCertificateComplete()
  6672 ms  0x1c5 fd:0x7fd839c32a00
  6672 ms  0x1c5 err:0x0
  6672 ms     | 0x1c5 SECKEY_DestroyPrivateKey()
  6672 ms     | 0x1c5 privk:0x7fd839c3b820::7fd839c3b820  f0 4b c3 39                                      .K.9
  6672 ms     | 0x1c5 privk:0x7fd839c3b820::7fd839c3b820  e5 e5 e5 e5                                      ....
  6672 ms     | 0x1c5 SECKEY_DestroyPrivateKey()
  6672 ms     | 0x1c5 privk:0x7fd839c39820::7fd839c39820  10 4a c3 39                                      .J.9
  6673 ms     | 0x1c5 privk:0x7fd839c39820::7fd839c39820  e5 e5 e5 e5                                      ....
           /* TID 0x2cf */
  6673 ms  0x2cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6673 ms  0x2cf ret:0x0
           /* TID 0x2d0 */
  6673 ms  0x2d0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6674 ms  0x2d0 ret:0x0
           /* TID 0x1c5 */
  6674 ms  0x1c5 PK11_Encrypt()
  6674 ms  0x1c5 symkey:0x7fd839cf9580
           /* TID 0x2ce */
  6675 ms  0x2ce _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6675 ms  0x2ce ret:0x0
           /* TID 0x1c5 */
  6676 ms  0x1c5 PK11_Encrypt()
  6676 ms  0x1c5 symkey:0x7fd839cf9580
  6676 ms  0x1c5 SSL_AuthCertificateComplete()
  6676 ms  0x1c5 fd:0x7fd839c32970
  6676 ms  0x1c5 err:0x0
  6676 ms     | 0x1c5 SECKEY_DestroyPrivateKey()
  6676 ms     | 0x1c5 privk:0x7fd839c50020::7fd839c50020  60 25 cb 39                                      `%.9
  6676 ms     | 0x1c5 privk:0x7fd839c50020::7fd839c50020  e5 e5 e5 e5                                      ....
  6676 ms     | 0x1c5 SECKEY_DestroyPrivateKey()
  6676 ms     | 0x1c5 privk:0x7fd839c4e020::7fd839c4e020  80 23 cb 39                                      .#.9
  6677 ms     | 0x1c5 privk:0x7fd839c4e020::7fd839c4e020  e5 e5 e5 e5                                      ....
  6677 ms  0x1c5 SSL_AuthCertificateComplete()
  6677 ms  0x1c5 fd:0x7fd839c32a60
  6677 ms  0x1c5 err:0x0
  6677 ms     | 0x1c5 SECKEY_DestroyPrivateKey()
  6677 ms     | 0x1c5 privk:0x7fd839c54820::7fd839c54820  30 28 cb 39                                      0(.9
  6677 ms     | 0x1c5 privk:0x7fd839c54820::7fd839c54820  e5 e5 e5 e5                                      ....
  6677 ms     | 0x1c5 SECKEY_DestroyPrivateKey()
  6677 ms     | 0x1c5 privk:0x7fd839c52820::7fd839c52820  50 26 cb 39                                      P&.9
  6681 ms     | 0x1c5 privk:0x7fd839c52820::7fd839c52820  e5 e5 e5 e5                                      ....
  6682 ms  0x1c5 SSL_AuthCertificateComplete()
  6682 ms  0x1c5 fd:0x7fd839c329a0
  6682 ms  0x1c5 err:0x0
  6682 ms     | 0x1c5 SECKEY_DestroyPrivateKey()
  6682 ms     | 0x1c5 privk:0x7fd839c4b820::7fd839c4b820  f0 21 cb 39                                      .!.9
  6683 ms     | 0x1c5 privk:0x7fd839c4b820::7fd839c4b820  e5 e5 e5 e5                                      ....
  6683 ms     | 0x1c5 SECKEY_DestroyPrivateKey()
  6683 ms     | 0x1c5 privk:0x7fd839c49820::7fd839c49820  30 38 3e 4c                                      08>L
  6683 ms     | 0x1c5 privk:0x7fd839c49820::7fd839c49820  e5 e5 e5 e5                                      ....
           /* TID 0x2cd */
  6684 ms  0x2cd ret:0x0
           /* TID 0x1c5 */
  6688 ms  0x1c5 PK11_Encrypt()
  6688 ms  0x1c5 symkey:0x7fd839cf9b00
  6689 ms  0x1c5 PK11_Encrypt()
  6689 ms  0x1c5 symkey:0x7fd839cf9e00
  6689 ms  0x1c5 PK11_Encrypt()
  6689 ms  0x1c5 symkey:0x7fd839cfa100
  6689 ms  0x1c5 SSL_AuthCertificateComplete()
  6689 ms  0x1c5 fd:0x7fd839c329d0
  6689 ms  0x1c5 err:0x0
  6690 ms     | 0x1c5 SECKEY_DestroyPrivateKey()
  6690 ms     | 0x1c5 privk:0x7fd839c46820::7fd839c46820  f0 fb d4 39                                      ...9
  6690 ms     | 0x1c5 privk:0x7fd839c46820::7fd839c46820  e5 e5 e5 e5                                      ....
  6695 ms     | 0x1c5 SECKEY_DestroyPrivateKey()
  6695 ms     | 0x1c5 privk:0x7fd839c44820::7fd839c44820  60 2a d0 39                                      `*.9
  6695 ms     | 0x1c5 privk:0x7fd839c44820::7fd839c44820  e5 e5 e5 e5                                      ....
  6695 ms  0x1c5 PK11_Encrypt()
  6695 ms  0x1c5 symkey:0x7fd839cf9580
  6696 ms  0x1c5 PK11_Encrypt()
  6696 ms  0x1c5 symkey:0x7fd839cf9580
  6696 ms  0x1c5 PK11_Encrypt()
  6696 ms  0x1c5 symkey:0x7fd839cf9580
  6697 ms  0x1c5 PK11_Encrypt()
  6697 ms  0x1c5 symkey:0x7fd839cf9800
  6697 ms  0x1c5 PK11_Encrypt()
  6697 ms  0x1c5 symkey:0x7fd839cf9580
  6698 ms  0x1c5 SSL_ImportFD()
  6698 ms  0x1c5 ret:0x7fd839dec430
  6698 ms  0x1c5 SSL_AuthCertificateHook()
  6698 ms  0x1c5 fd:0x7fd839dec430
  6698 ms  0x1c5 ret:0x0
  6698 ms  0x1c5 PR_Connect()
  6698 ms  0x1c5 fd:0x7fd839dec430
  6698 ms  0x1c5 SSL_ImportFD()
  6698 ms  0x1c5 ret:0x7fd839c96970
  6698 ms  0x1c5 SSL_AuthCertificateHook()
  6698 ms  0x1c5 fd:0x7fd839c96970
  6698 ms  0x1c5 ret:0x0
  6698 ms  0x1c5 PR_Connect()
  6698 ms  0x1c5 fd:0x7fd839c96970
  6698 ms  0x1c5 SSL_ImportFD()
  6698 ms  0x1c5 ret:0x7fd839dec4f0
  6698 ms  0x1c5 SSL_AuthCertificateHook()
  6698 ms  0x1c5 fd:0x7fd839dec4f0
  6698 ms  0x1c5 ret:0x0
  6698 ms  0x1c5 PR_Connect()
  6698 ms  0x1c5 fd:0x7fd839dec4f0
  6698 ms  0x1c5 SSL_ImportFD()
  6698 ms  0x1c5 ret:0x7fd839dec520
  6698 ms  0x1c5 SSL_AuthCertificateHook()
  6698 ms  0x1c5 fd:0x7fd839dec520
  6698 ms  0x1c5 ret:0x0
  6698 ms  0x1c5 PR_Connect()
  6698 ms  0x1c5 fd:0x7fd839dec520
  6699 ms  0x1c5 SSL_ImportFD()
  6699 ms  0x1c5 ret:0x7fd839d3c5e0
  6699 ms  0x1c5 SSL_AuthCertificateHook()
  6699 ms  0x1c5 fd:0x7fd839d3c5e0
  6699 ms  0x1c5 ret:0x0
  6699 ms  0x1c5 PR_Connect()
  6699 ms  0x1c5 fd:0x7fd839d3c5e0
  6699 ms  0x1c5 SSL_ImportFD()
  6699 ms  0x1c5 ret:0x7fd839d3c850
  6699 ms  0x1c5 SSL_AuthCertificateHook()
  6699 ms  0x1c5 fd:0x7fd839d3c850
  6699 ms  0x1c5 ret:0x0
  6699 ms  0x1c5 PR_Connect()
  6699 ms  0x1c5 fd:0x7fd839d3c850
  6699 ms  0x1c5 SSL_ImportFD()
  6699 ms  0x1c5 ret:0x7fd839d3c9d0
  6699 ms  0x1c5 SSL_AuthCertificateHook()
  6699 ms  0x1c5 fd:0x7fd839d3c9d0
  6699 ms  0x1c5 ret:0x0
  6699 ms  0x1c5 PR_Connect()
  6699 ms  0x1c5 fd:0x7fd839d3c9d0
  6699 ms  0x1c5 SSL_ImportFD()
  6699 ms  0x1c5 ret:0x7fd839d3cac0
  6699 ms  0x1c5 SSL_AuthCertificateHook()
  6699 ms  0x1c5 fd:0x7fd839d3cac0
  6699 ms  0x1c5 ret:0x0
  6699 ms  0x1c5 PR_Connect()
  6699 ms  0x1c5 fd:0x7fd839d3cac0
  6699 ms  0x1c5 SSL_ImportFD()
  6699 ms  0x1c5 ret:0x7fd839dec100
  6700 ms  0x1c5 SSL_AuthCertificateHook()
  6700 ms  0x1c5 fd:0x7fd839dec100
  6700 ms  0x1c5 ret:0x0
  6700 ms  0x1c5 PR_Connect()
  6700 ms  0x1c5 fd:0x7fd839dec100
  6711 ms  0x1c5 SSL_ImportFD()
  6711 ms  0x1c5 ret:0x7fd839dec280
  6711 ms  0x1c5 SSL_AuthCertificateHook()
  6711 ms  0x1c5 fd:0x7fd839dec280
  6711 ms  0x1c5 ret:0x0
  6711 ms  0x1c5 PR_Connect()
  6711 ms  0x1c5 fd:0x7fd839dec280
  6711 ms  0x1c5 PK11_Encrypt()
  6711 ms  0x1c5 symkey:0x7fd839cf9580
  6713 ms  0x1c5 PR_Close()
  6713 ms  0x1c5 fd:0x7fd839c329a0
  6713 ms     | 0x1c5 PK11_Encrypt()
  6713 ms     | 0x1c5 symkey:0x7fd839cf9b00
  6714 ms  0x1c5 PR_Close()
  6714 ms  0x1c5 fd:0x7fd839c32970
  6714 ms     | 0x1c5 PK11_Encrypt()
  6714 ms     | 0x1c5 symkey:0x7fd839cf9e00
  6714 ms  0x1c5 PR_Close()
  6714 ms  0x1c5 fd:0x7fd839c32a60
  6714 ms     | 0x1c5 PK11_Encrypt()
  6714 ms     | 0x1c5 symkey:0x7fd839cfa100
  6722 ms  0x1c5 PR_Close()
  6722 ms  0x1c5 fd:0x7fd839c329d0
  6722 ms     | 0x1c5 PK11_Encrypt()
  6722 ms     | 0x1c5 symkey:0x7fd839cf9800
  6723 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6723 ms  0x1c5 cx:0x7fd84b0da948
  6724 ms     | 0x1c5 EC_ValidatePublicKey()
  6724 ms     | 0x1c5 ret:0x0
  6724 ms  0x1c5 ret:0x7fd839c3b820::7fd839c3b820  b0 20 cb 39                                      . .9
  6724 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6724 ms  0x1c5 cx:0x7fd84b0da948
  6724 ms     | 0x1c5 EC_ValidatePublicKey()
  6726 ms     | 0x1c5 ret:0x0
  6726 ms  0x1c5 ret:0x7fd839c45020::7fd839c45020  30 23 cb 39                                      0#.9
  6733 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6733 ms  0x1c5 cx:0x7fd84b0dae28
  6733 ms     | 0x1c5 EC_ValidatePublicKey()
  6733 ms     | 0x1c5 ret:0x0
  6733 ms  0x1c5 ret:0x7fd839c49820::7fd839c49820  f0 26 cb 39                                      .&.9
  6733 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6733 ms  0x1c5 cx:0x7fd84b0dae28
  6734 ms     | 0x1c5 EC_ValidatePublicKey()
  6736 ms     | 0x1c5 ret:0x0
  6736 ms  0x1c5 ret:0x7fd839c4b820::7fd839c4b820  00 2b cb 39                                      .+.9
  6740 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6740 ms  0x1c5 cx:0x7fd84b0daae8
  6741 ms     | 0x1c5 EC_ValidatePublicKey()
  6741 ms     | 0x1c5 ret:0x0
  6741 ms  0x1c5 ret:0x7fd839c4e020::7fd839c4e020  20 24 cb 39                                       $.9
  6741 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6741 ms  0x1c5 cx:0x7fd84b0daae8
  6742 ms     | 0x1c5 EC_ValidatePublicKey()
  6743 ms     | 0x1c5 ret:0x0
  6743 ms  0x1c5 ret:0x7fd839c50020::7fd839c50020  60 2f cb 39                                      `/.9
  6743 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6743 ms  0x1c5 cx:0x7fd84b0dac88
  6744 ms     | 0x1c5 EC_ValidatePublicKey()
  6744 ms     | 0x1c5 ret:0x0
  6744 ms  0x1c5 ret:0x7fd839c52820::7fd839c52820  80 2d d0 39                                      .-.9
  6744 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6744 ms  0x1c5 cx:0x7fd84b0dac88
  6745 ms     | 0x1c5 EC_ValidatePublicKey()
  6746 ms     | 0x1c5 ret:0x0
  6746 ms  0x1c5 ret:0x7fd839c54820::7fd839c54820  30 93 d5 39                                      0..9
  6748 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6748 ms  0x1c5 cx:0x7fd84b0db648
  6748 ms     | 0x1c5 EC_ValidatePublicKey()
  6748 ms     | 0x1c5 ret:0x0
  6748 ms  0x1c5 ret:0x7fd839cd1020::7fd839cd1020  20 49 c3 39                                       I.9
  6748 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6748 ms  0x1c5 cx:0x7fd84b0db648
  6749 ms     | 0x1c5 EC_ValidatePublicKey()
  6750 ms     | 0x1c5 ret:0x0
  6750 ms  0x1c5 ret:0x7fd839cd3020::7fd839cd3020  e0 2c d0 39                                      .,.9
  6751 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6751 ms  0x1c5 cx:0x7fd84b0db4a8
  6751 ms     | 0x1c5 EC_ValidatePublicKey()
  6751 ms     | 0x1c5 ret:0x0
  6751 ms  0x1c5 ret:0x7fd839cd7020::7fd839cd7020  f0 ab d8 39                                      ...9
  6751 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6751 ms  0x1c5 cx:0x7fd84b0db4a8
  6752 ms     | 0x1c5 EC_ValidatePublicKey()
  6754 ms     | 0x1c5 ret:0x0
  6754 ms  0x1c5 ret:0x7fd839cda020::7fd839cda020  60 cf d9 39                                      `..9
  6754 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6754 ms  0x1c5 cx:0x7fd84b0db308
  6754 ms     | 0x1c5 EC_ValidatePublicKey()
  6754 ms     | 0x1c5 ret:0x0
  6754 ms  0x1c5 ret:0x7fd839cde020::7fd839cde020  60 3a e7 39                                      `:.9
  6755 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6755 ms  0x1c5 cx:0x7fd84b0db308
  6755 ms     | 0x1c5 EC_ValidatePublicKey()
  6757 ms     | 0x1c5 ret:0x0
  6757 ms  0x1c5 ret:0x7fd839ce0020::7fd839ce0020  40 c2 c5 4a                                      @..J
  6757 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6757 ms  0x1c5 cx:0x7fd84b0db168
  6757 ms     | 0x1c5 EC_ValidatePublicKey()
  6757 ms     | 0x1c5 ret:0x0
  6758 ms  0x1c5 ret:0x7fd839ce2820::7fd839ce2820  d0 c3 c5 4a                                      ...J
  6758 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6758 ms  0x1c5 cx:0x7fd84b0db168
  6758 ms     | 0x1c5 EC_ValidatePublicKey()
  6760 ms     | 0x1c5 ret:0x0
  6760 ms  0x1c5 ret:0x7fd839ce4820::7fd839ce4820  f0 cb c5 4a                                      ...J
  6760 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6760 ms  0x1c5 cx:0x7fd84b0dafc8
  6760 ms     | 0x1c5 EC_ValidatePublicKey()
  6760 ms     | 0x1c5 ret:0x0
  6760 ms  0x1c5 ret:0x7fd839ce7020::7fd839ce7020  50 e6 c6 4a                                      P..J
  6761 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6761 ms  0x1c5 cx:0x7fd84b0dafc8
  6761 ms     | 0x1c5 EC_ValidatePublicKey()
  6763 ms     | 0x1c5 ret:0x0
  6763 ms  0x1c5 ret:0x7fd839ce9020::7fd839ce9020  70 e9 c6 4a                                      p..J
           /* TID 0x220 */
  6766 ms  0x220 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6766 ms  0x220 ret:0x0
           /* TID 0x1c5 */
  6766 ms  SECKEY_ECParamsToKeySize()
  6766 ms  0x1c5 ret:0xff
  6766 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6766 ms  0x1c5 cx:0x7fd84b0da948
  6767 ms     | 0x1c5 EC_ValidatePublicKey()
  6767 ms     | 0x1c5 ret:0x0
  6767 ms  0x1c5 ret:0x7fd839d6a020::7fd839d6a020  e0 17 ce 4a                                      ...J
  6767 ms  0x1c5 PK11_PubDeriveWithKDF()
  6767 ms  0x1c5 seckey:0x7fd839d6a020
  6767 ms     | 0x1c5 EC_ValidatePublicKey()
  6767 ms     | 0x1c5 ret:0x0
  6768 ms  0x1c5 ret:0x7fd839cf9680
  6768 ms  0x1c5 PK11_DeriveWithFlags()
  6768 ms  0x1c5 basekey:0x7fd839cf9680
  6768 ms     | 0x1c5 PK11_DeriveWithTemplate()
  6768 ms  0x1c5 ret:0x7fd84ac78c80
  6768 ms  0x1c5 PK11_Derive()
  6768 ms  0x1c5 basekey:0x7fd84ac78c80
  6768 ms     | 0x1c5 PK11_DeriveWithTemplate()
  6768 ms  0x1c5 ret:0x7fd839cf9f80
  6768 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6768 ms  0x1c5 privk:0x7fd839d6a020::7fd839d6a020  e0 17 ce 4a                                      ...J
  6768 ms  0x1c5 privk:0x7fd839d6a020::7fd839d6a020  e5 e5 e5 e5                                      ....
  6768 ms  0x1c5 PK11_Encrypt()
  6768 ms  0x1c5 symkey:0x7fd839cf9700
  6768 ms  0x1c5 SSL_AuthCertificateComplete()
  6768 ms  0x1c5 fd:0x7fd839dec430
  6768 ms  0x1c5 err:0x0
           /* TID 0x2cf */
  6769 ms  0x2cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6769 ms  0x2cf ret:0x0
           /* TID 0x1c5 */
  6769 ms  SECKEY_ECParamsToKeySize()
  6769 ms  0x1c5 ret:0xff
  6769 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6769 ms  0x1c5 cx:0x7fd84b0dae28
  6770 ms     | 0x1c5 EC_ValidatePublicKey()
  6770 ms     | 0x1c5 ret:0x0
  6770 ms  0x1c5 ret:0x7fd839d6a820::7fd839d6a820  80 18 ce 4a                                      ...J
  6770 ms  0x1c5 PK11_PubDeriveWithKDF()
  6770 ms  0x1c5 seckey:0x7fd839d6a820
  6770 ms     | 0x1c5 EC_ValidatePublicKey()
  6770 ms     | 0x1c5 ret:0x0
  6770 ms  0x1c5 ret:0x7fd839cf9680
  6770 ms  0x1c5 PK11_DeriveWithFlags()
  6770 ms  0x1c5 basekey:0x7fd839cf9680
  6771 ms     | 0x1c5 PK11_DeriveWithTemplate()
  6771 ms  0x1c5 ret:0x7fd839cf9f00
  6771 ms  0x1c5 PK11_Derive()
  6771 ms  0x1c5 basekey:0x7fd839cf9f00
  6771 ms     | 0x1c5 PK11_DeriveWithTemplate()
  6771 ms  0x1c5 ret:0x7fd839cf9c80
  6771 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6771 ms  0x1c5 privk:0x7fd839d6a820::7fd839d6a820  80 18 ce 4a                                      ...J
  6771 ms  0x1c5 privk:0x7fd839d6a820::7fd839d6a820  e5 e5 e5 e5                                      ....
  6771 ms  0x1c5 PK11_Encrypt()
  6771 ms  0x1c5 symkey:0x7fd839cfa000
  6771 ms  0x1c5 PK11_Encrypt()
  6771 ms  0x1c5 symkey:0x7fd839cf9700
  6771 ms  0x1c5 PK11_Encrypt()
  6771 ms  0x1c5 symkey:0x7fd839cf9700
  6772 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6772 ms  0x1c5 cx:0x7fd84b0db7e8
  6772 ms     | 0x1c5 EC_ValidatePublicKey()
  6772 ms     | 0x1c5 ret:0x0
  6772 ms  0x1c5 ret:0x7fd839d6e020::7fd839d6e020  30 18 ce 4a                                      0..J
  6772 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6772 ms  0x1c5 cx:0x7fd84b0db7e8
  6773 ms     | 0x1c5 EC_ValidatePublicKey()
  6779 ms     | 0x1c5 ret:0x0
  6779 ms  0x1c5 ret:0x7fd839d72020::7fd839d72020  10 1a ce 4a                                      ...J
  6779 ms  0x1c5 SSL_AuthCertificateComplete()
  6779 ms  0x1c5 fd:0x7fd839dec520
  6779 ms  0x1c5 err:0x0
  6779 ms  0x1c5 PK11_Encrypt()
  6779 ms  0x1c5 symkey:0x7fd839cf9700
  6779 ms  0x1c5 PK11_Encrypt()
  6779 ms  0x1c5 symkey:0x7fd839cf9700
  6780 ms  0x1c5 PK11_Encrypt()
  6780 ms  0x1c5 symkey:0x7fd839cf9700
  6780 ms  0x1c5 PK11_Encrypt()
  6780 ms  0x1c5 symkey:0x7fd839cf9700
  6780 ms  0x1c5 PK11_Encrypt()
  6780 ms  0x1c5 symkey:0x7fd839cf9700
  6780 ms  0x1c5 PK11_Encrypt()
  6780 ms  0x1c5 symkey:0x7fd839cf9700
  6781 ms  0x1c5 PK11_Encrypt()
  6781 ms  0x1c5 symkey:0x7fd839cf9700
  6781 ms  0x1c5 PK11_Encrypt()
  6781 ms  0x1c5 symkey:0x7fd839cf9700
  6781 ms  0x1c5 PK11_Encrypt()
  6781 ms  0x1c5 symkey:0x7fd839cf9700
  6781 ms  0x1c5 PK11_Encrypt()
  6781 ms  0x1c5 symkey:0x7fd839cf9700
  6782 ms  0x1c5 PK11_Encrypt()
  6782 ms  0x1c5 symkey:0x7fd839cf9700
  6782 ms  0x1c5 PK11_Encrypt()
  6782 ms  0x1c5 symkey:0x7fd839cf9700
  6782 ms  0x1c5 PK11_Encrypt()
  6782 ms  0x1c5 symkey:0x7fd839cf9700
  6782 ms  0x1c5 PK11_Encrypt()
  6782 ms  0x1c5 symkey:0x7fd839cf9700
  6783 ms  0x1c5 PK11_Encrypt()
  6783 ms  0x1c5 symkey:0x7fd839cfa000
  6783 ms  0x1c5 PK11_Encrypt()
  6783 ms  0x1c5 symkey:0x7fd839cf9700
  6783 ms  0x1c5 PK11_Encrypt()
  6783 ms  0x1c5 symkey:0x7fd839cf9700
           /* TID 0x2d0 */
  6784 ms  0x2d0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6784 ms  0x2d0 ret:0x0
           /* TID 0x1c5 */
  6784 ms  SECKEY_ECParamsToKeySize()
  6784 ms  0x1c5 ret:0xff
  6785 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6785 ms  0x1c5 cx:0x7fd84b0daae8
  6785 ms     | 0x1c5 EC_ValidatePublicKey()
  6785 ms     | 0x1c5 ret:0x0
  6785 ms  0x1c5 ret:0x7fd84af46020::7fd84af46020  40 1c ce 4a                                      @..J
  6785 ms  0x1c5 PK11_PubDeriveWithKDF()
  6785 ms  0x1c5 seckey:0x7fd84af46020
  6785 ms     | 0x1c5 EC_ValidatePublicKey()
  6785 ms     | 0x1c5 ret:0x0
  6786 ms  0x1c5 ret:0x7fd839cf9680
  6786 ms  0x1c5 PK11_DeriveWithFlags()
  6786 ms  0x1c5 basekey:0x7fd839cf9680
  6786 ms     | 0x1c5 PK11_DeriveWithTemplate()
  6786 ms  0x1c5 ret:0x7fd839cf9c00
  6786 ms  0x1c5 PK11_Derive()
  6786 ms  0x1c5 basekey:0x7fd839cf9c00
  6786 ms     | 0x1c5 PK11_DeriveWithTemplate()
  6786 ms  0x1c5 ret:0x7fd839cf9980
  6786 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6786 ms  0x1c5 privk:0x7fd84af46020::7fd84af46020  40 1c ce 4a                                      @..J
  6786 ms  0x1c5 privk:0x7fd84af46020::7fd84af46020  e5 e5 e5 e5                                      ....
  6786 ms  0x1c5 PK11_Encrypt()
  6786 ms  0x1c5 symkey:0x7fd839cf9d00
           /* TID 0x2ce */
  6787 ms  0x2ce _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6787 ms  0x2ce ret:0x0
           /* TID 0x1c5 */
  6787 ms  SECKEY_ECParamsToKeySize()
  6787 ms  0x1c5 ret:0xff
  6787 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6787 ms  0x1c5 cx:0x7fd84b0dac88
  6788 ms     | 0x1c5 EC_ValidatePublicKey()
  6788 ms     | 0x1c5 ret:0x0
  6788 ms  0x1c5 ret:0x7fd84af46820::7fd84af46820  e0 1c ce 4a                                      ...J
  6788 ms  0x1c5 PK11_PubDeriveWithKDF()
  6788 ms  0x1c5 seckey:0x7fd84af46820
  6788 ms     | 0x1c5 EC_ValidatePublicKey()
  6788 ms     | 0x1c5 ret:0x0
  6788 ms  0x1c5 ret:0x7fd839cf9680
  6788 ms  0x1c5 PK11_DeriveWithFlags()
  6788 ms  0x1c5 basekey:0x7fd839cf9680
  6788 ms     | 0x1c5 PK11_DeriveWithTemplate()
  6788 ms  0x1c5 ret:0x7fd839cf9900
  6788 ms  0x1c5 PK11_Derive()
  6788 ms  0x1c5 basekey:0x7fd839cf9900
  6788 ms     | 0x1c5 PK11_DeriveWithTemplate()
  6788 ms  0x1c5 ret:0x7fd84cefbf00
  6788 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6788 ms  0x1c5 privk:0x7fd84af46820::7fd84af46820  e0 1c ce 4a                                      ...J
  6789 ms  0x1c5 privk:0x7fd84af46820::7fd84af46820  e5 e5 e5 e5                                      ....
  6789 ms  0x1c5 PK11_Encrypt()
  6789 ms  0x1c5 symkey:0x7fd839cf9a00
           /* TID 0x220 */
  6790 ms  0x220 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6790 ms  0x220 ret:0x0
           /* TID 0x1c5 */
  6790 ms  SECKEY_ECParamsToKeySize()
  6790 ms  0x1c5 ret:0xff
  6790 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6790 ms  0x1c5 cx:0x7fd84b0db648
  6791 ms     | 0x1c5 EC_ValidatePublicKey()
  6791 ms     | 0x1c5 ret:0x0
  6791 ms  0x1c5 ret:0x7fd84af4d820::7fd84af4d820  30 43 d3 4a                                      0C.J
  6791 ms  0x1c5 PK11_PubDeriveWithKDF()
  6791 ms  0x1c5 seckey:0x7fd84af4d820
  6791 ms     | 0x1c5 EC_ValidatePublicKey()
  6791 ms     | 0x1c5 ret:0x0
  6791 ms  0x1c5 ret:0x7fd839cf9680
  6791 ms  0x1c5 PK11_DeriveWithFlags()
  6791 ms  0x1c5 basekey:0x7fd839cf9680
  6791 ms     | 0x1c5 PK11_DeriveWithTemplate()
  6791 ms  0x1c5 ret:0x7fd839c93c00
  6791 ms  0x1c5 PK11_Derive()
  6791 ms  0x1c5 basekey:0x7fd839c93c00
  6791 ms     | 0x1c5 PK11_DeriveWithTemplate()
  6791 ms  0x1c5 ret:0x7fd839d84d80
  6791 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6791 ms  0x1c5 privk:0x7fd84af4d820::7fd84af4d820  30 43 d3 4a                                      0C.J
  6791 ms  0x1c5 privk:0x7fd84af4d820::7fd84af4d820  e5 e5 e5 e5                                      ....
  6792 ms  0x1c5 PK11_Encrypt()
  6792 ms  0x1c5 symkey:0x7fd839d9b100
           /* TID 0x2cf */
  6793 ms  0x2cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6793 ms  0x2cf ret:0x0
           /* TID 0x1c5 */
  6793 ms  SECKEY_ECParamsToKeySize()
  6793 ms  0x1c5 ret:0xff
  6793 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6793 ms  0x1c5 cx:0x7fd84b0db4a8
  6794 ms     | 0x1c5 EC_ValidatePublicKey()
  6794 ms     | 0x1c5 ret:0x0
  6794 ms  0x1c5 ret:0x7fd84af4e020::7fd84af4e020  00 46 d3 4a                                      .F.J
  6794 ms  0x1c5 PK11_PubDeriveWithKDF()
  6794 ms  0x1c5 seckey:0x7fd84af4e020
  6794 ms     | 0x1c5 EC_ValidatePublicKey()
  6794 ms     | 0x1c5 ret:0x0
  6794 ms  0x1c5 ret:0x7fd839cf9680
  6794 ms  0x1c5 PK11_DeriveWithFlags()
  6794 ms  0x1c5 basekey:0x7fd839cf9680
  6794 ms     | 0x1c5 PK11_DeriveWithTemplate()
  6794 ms  0x1c5 ret:0x7fd839d9b400
  6794 ms  0x1c5 PK11_Derive()
  6794 ms  0x1c5 basekey:0x7fd839d9b400
  6794 ms     | 0x1c5 PK11_DeriveWithTemplate()
  6794 ms  0x1c5 ret:0x7fd839d9b880
  6794 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6794 ms  0x1c5 privk:0x7fd84af4e020::7fd84af4e020  00 46 d3 4a                                      .F.J
  6794 ms  0x1c5 privk:0x7fd84af4e020::7fd84af4e020  e5 e5 e5 e5                                      ....
  6795 ms  0x1c5 PK11_Encrypt()
  6795 ms  0x1c5 symkey:0x7fd839d9ba00
  6795 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6795 ms  0x1c5 privk:0x7fd839c45020::7fd839c45020  30 23 cb 39                                      0#.9
  6795 ms  0x1c5 privk:0x7fd839c45020::7fd839c45020  e5 e5 e5 e5                                      ....
  6795 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6795 ms  0x1c5 privk:0x7fd839c3b820::7fd839c3b820  b0 20 cb 39                                      . .9
  6795 ms  0x1c5 privk:0x7fd839c3b820::7fd839c3b820  e5 e5 e5 e5                                      ....
  6795 ms  0x1c5 PK11_Encrypt()
  6795 ms  0x1c5 symkey:0x7fd839cf9700
  6796 ms  0x1c5 SSL_AuthCertificateComplete()
  6796 ms  0x1c5 fd:0x7fd839c96970
  6796 ms  0x1c5 err:0x0
  6796 ms  0x1c5 SSL_AuthCertificateComplete()
  6796 ms  0x1c5 fd:0x7fd839dec4f0
  6796 ms  0x1c5 err:0x0
  6796 ms  0x1c5 SSL_AuthCertificateComplete()
  6796 ms  0x1c5 fd:0x7fd839dec100
  6796 ms  0x1c5 err:0x0
  6796 ms  0x1c5 SSL_AuthCertificateComplete()
  6796 ms  0x1c5 fd:0x7fd839d3cac0
  6796 ms  0x1c5 err:0x0
           /* TID 0x1cd */
  6797 ms  0x1cd PR_Close()
  6797 ms  0x1cd fd:0x7fd839c32130
  6798 ms  0x1cd PR_Close()
  6798 ms  0x1cd fd:0x7fd839c32130
           /* TID 0x1c5 */
  6801 ms  0x1c5 SSL_ImportFD()
  6801 ms  0x1c5 ret:0x7fd839c325b0
  6801 ms  0x1c5 SSL_AuthCertificateHook()
  6801 ms  0x1c5 fd:0x7fd839c325b0
  6801 ms  0x1c5 ret:0x0
  6802 ms  0x1c5 PR_Connect()
  6802 ms  0x1c5 fd:0x7fd839c325b0
  6803 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6803 ms  0x1c5 privk:0x7fd839c4b820::7fd839c4b820  00 2b cb 39                                      .+.9
  6803 ms  0x1c5 privk:0x7fd839c4b820::7fd839c4b820  e5 e5 e5 e5                                      ....
  6803 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6803 ms  0x1c5 privk:0x7fd839c49820::7fd839c49820  f0 26 cb 39                                      .&.9
  6803 ms  0x1c5 privk:0x7fd839c49820::7fd839c49820  e5 e5 e5 e5                                      ....
  6805 ms  0x1c5 PK11_Encrypt()
  6805 ms  0x1c5 symkey:0x7fd839cf9d00
  6805 ms  0x1c5 PK11_Encrypt()
  6805 ms  0x1c5 symkey:0x7fd839cf9a00
  6806 ms  0x1c5 PK11_Encrypt()
  6806 ms  0x1c5 symkey:0x7fd839d9b100
  6806 ms  0x1c5 PK11_Encrypt()
  6806 ms  0x1c5 symkey:0x7fd839d9b100
  6806 ms  0x1c5 PK11_Encrypt()
  6806 ms  0x1c5 symkey:0x7fd839d9ba00
           /* TID 0x2d0 */
  6807 ms  0x2d0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6807 ms  0x2d0 ret:0x0
           /* TID 0x1c5 */
  6807 ms  SECKEY_ECParamsToKeySize()
  6807 ms  0x1c5 ret:0xff
  6807 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6807 ms  0x1c5 cx:0x7fd84b0db308
  6808 ms     | 0x1c5 EC_ValidatePublicKey()
  6808 ms     | 0x1c5 ret:0x0
  6808 ms  0x1c5 ret:0x7fd84af41820::7fd84af41820  f0 21 cb 39                                      .!.9
  6808 ms  0x1c5 PK11_PubDeriveWithKDF()
  6808 ms  0x1c5 seckey:0x7fd84af41820
  6808 ms     | 0x1c5 EC_ValidatePublicKey()
  6808 ms     | 0x1c5 ret:0x0
  6812 ms  0x1c5 ret:0x7fd839cf9680
  6812 ms  0x1c5 PK11_DeriveWithFlags()
  6812 ms  0x1c5 basekey:0x7fd839cf9680
  6812 ms     | 0x1c5 PK11_DeriveWithTemplate()
  6812 ms  0x1c5 ret:0x7fd839e99b80
  6812 ms  0x1c5 PK11_Derive()
  6812 ms  0x1c5 basekey:0x7fd839e99b80
  6812 ms     | 0x1c5 PK11_DeriveWithTemplate()
  6812 ms  0x1c5 ret:0x7fd839e99d00
  6812 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6812 ms  0x1c5 privk:0x7fd84af41820::7fd84af41820  f0 21 cb 39                                      .!.9
  6813 ms  0x1c5 privk:0x7fd84af41820::7fd84af41820  e5 e5 e5 e5                                      ....
  6813 ms  0x1c5 PK11_Encrypt()
  6813 ms  0x1c5 symkey:0x7fd84ac77a00
           /* TID 0x2ce */
  6814 ms  0x2ce _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6814 ms  0x2ce ret:0x0
           /* TID 0x1c5 */
  6814 ms  SECKEY_ECParamsToKeySize()
  6814 ms  0x1c5 ret:0xff
  6814 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6814 ms  0x1c5 cx:0x7fd84b0db168
  6814 ms     | 0x1c5 EC_ValidatePublicKey()
  6814 ms     | 0x1c5 ret:0x0
  6814 ms  0x1c5 ret:0x7fd84af4c820::7fd84af4c820  90 22 cb 39                                      .".9
  6815 ms  0x1c5 PK11_PubDeriveWithKDF()
  6815 ms  0x1c5 seckey:0x7fd84af4c820
  6815 ms     | 0x1c5 EC_ValidatePublicKey()
  6815 ms     | 0x1c5 ret:0x0
  6815 ms  0x1c5 ret:0x7fd839cf9680
  6815 ms  0x1c5 PK11_DeriveWithFlags()
  6815 ms  0x1c5 basekey:0x7fd839cf9680
  6815 ms     | 0x1c5 PK11_DeriveWithTemplate()
  6815 ms  0x1c5 ret:0x7fd84ac77c00
  6815 ms  0x1c5 PK11_Derive()
  6815 ms  0x1c5 basekey:0x7fd84ac77c00
  6815 ms     | 0x1c5 PK11_DeriveWithTemplate()
  6815 ms  0x1c5 ret:0x7fd84ac77d00
  6815 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6815 ms  0x1c5 privk:0x7fd84af4c820::7fd84af4c820  90 22 cb 39                                      .".9
  6815 ms  0x1c5 privk:0x7fd84af4c820::7fd84af4c820  e5 e5 e5 e5                                      ....
  6815 ms  0x1c5 PK11_Encrypt()
  6815 ms  0x1c5 symkey:0x7fd84ac78000
           /* TID 0x220 */
  6817 ms  0x220 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6818 ms  0x220 ret:0x0
           /* TID 0x1c5 */
  6818 ms  SECKEY_ECParamsToKeySize()
  6818 ms  0x1c5 ret:0xff
  6818 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6818 ms  0x1c5 cx:0x7fd84b0dafc8
  6818 ms     | 0x1c5 EC_ValidatePublicKey()
  6818 ms     | 0x1c5 ret:0x0
  6818 ms  0x1c5 ret:0x7fd84af4d020::7fd84af4d020  30 23 cb 39                                      0#.9
  6818 ms  0x1c5 PK11_PubDeriveWithKDF()
  6818 ms  0x1c5 seckey:0x7fd84af4d020
  6818 ms     | 0x1c5 EC_ValidatePublicKey()
  6818 ms     | 0x1c5 ret:0x0
  6819 ms  0x1c5 ret:0x7fd839cf9680
  6819 ms  0x1c5 PK11_DeriveWithFlags()
  6819 ms  0x1c5 basekey:0x7fd839cf9680
  6819 ms     | 0x1c5 PK11_DeriveWithTemplate()
  6819 ms  0x1c5 ret:0x7fd84ac78180
  6819 ms  0x1c5 PK11_Derive()
  6819 ms  0x1c5 basekey:0x7fd84ac78180
  6819 ms     | 0x1c5 PK11_DeriveWithTemplate()
  6819 ms  0x1c5 ret:0x7fd84ac78d00
  6819 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6819 ms  0x1c5 privk:0x7fd84af4d020::7fd84af4d020  30 23 cb 39                                      0#.9
  6819 ms  0x1c5 privk:0x7fd84af4d020::7fd84af4d020  e5 e5 e5 e5                                      ....
  6819 ms  0x1c5 PK11_Encrypt()
  6819 ms  0x1c5 symkey:0x7fd84ac78f00
  6819 ms  0x1c5 PR_Close()
  6819 ms  0x1c5 fd:0x7fd839c325b0
  6819 ms  0x1c5 PR_Close()
  6819 ms  0x1c5 fd:0x7fd839dec520
  6819 ms     | 0x1c5 PK11_Encrypt()
  6819 ms     | 0x1c5 symkey:0x7fd839cfa000
  6820 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6820 ms  0x1c5 privk:0x7fd839cd3020::7fd839cd3020  e0 2c d0 39                                      .,.9
  6820 ms  0x1c5 privk:0x7fd839cd3020::7fd839cd3020  e5 e5 e5 e5                                      ....
  6820 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6820 ms  0x1c5 privk:0x7fd839cd1020::7fd839cd1020  20 49 c3 39                                       I.9
  6820 ms  0x1c5 privk:0x7fd839cd1020::7fd839cd1020  e5 e5 e5 e5                                      ....
  6820 ms  0x1c5 PK11_Encrypt()
  6820 ms  0x1c5 symkey:0x7fd839d9b100
  6824 ms  0x1c5 PK11_Encrypt()
  6824 ms  0x1c5 symkey:0x7fd839d9b100
  6825 ms  0x1c5 PK11_Encrypt()
  6825 ms  0x1c5 symkey:0x7fd839d9b100
  6825 ms  0x1c5 PK11_Encrypt()
  6825 ms  0x1c5 symkey:0x7fd839cf9700
  6825 ms  0x1c5 PK11_Encrypt()
  6825 ms  0x1c5 symkey:0x7fd839cf9700
  6825 ms  0x1c5 SSL_AuthCertificateComplete()
  6825 ms  0x1c5 fd:0x7fd839d3c9d0
  6825 ms  0x1c5 err:0x0
  6825 ms  0x1c5 SSL_AuthCertificateComplete()
  6825 ms  0x1c5 fd:0x7fd839d3c850
  6825 ms  0x1c5 err:0x0
  6825 ms  0x1c5 SSL_AuthCertificateComplete()
  6825 ms  0x1c5 fd:0x7fd839d3c5e0
  6825 ms  0x1c5 err:0x0
           /* TID 0x1cd */
  6827 ms  0x1cd PR_Close()
  6827 ms  0x1cd fd:0x7fd839c32130
           /* TID 0x1c5 */
  6827 ms  0x1c5 PK11_Encrypt()
  6827 ms  0x1c5 symkey:0x7fd839cf9700
  6829 ms  0x1c5 PK11_Encrypt()
  6829 ms  0x1c5 symkey:0x7fd84ac78f00
  6836 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6836 ms  0x1c5 privk:0x7fd839c50020::7fd839c50020  60 2f cb 39                                      `/.9
  6836 ms  0x1c5 privk:0x7fd839c50020::7fd839c50020  e5 e5 e5 e5                                      ....
  6836 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6836 ms  0x1c5 privk:0x7fd839c4e020::7fd839c4e020  20 24 cb 39                                       $.9
  6836 ms  0x1c5 privk:0x7fd839c4e020::7fd839c4e020  e5 e5 e5 e5                                      ....
  6836 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6836 ms  0x1c5 privk:0x7fd839c54820::7fd839c54820  30 93 d5 39                                      0..9
  6837 ms  0x1c5 privk:0x7fd839c54820::7fd839c54820  e5 e5 e5 e5                                      ....
  6837 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6837 ms  0x1c5 privk:0x7fd839c52820::7fd839c52820  80 2d d0 39                                      .-.9
  6837 ms  0x1c5 privk:0x7fd839c52820::7fd839c52820  e5 e5 e5 e5                                      ....
           /* TID 0x2cf */
  6839 ms  0x2cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6839 ms  0x2cf ret:0x0
           /* TID 0x1c5 */
  6839 ms  SECKEY_ECParamsToKeySize()
  6839 ms  0x1c5 ret:0xff
  6839 ms  0x1c5 SECKEY_CreateECPrivateKey()
  6839 ms  0x1c5 cx:0x7fd84b0db7e8
  6840 ms     | 0x1c5 EC_ValidatePublicKey()
  6840 ms     | 0x1c5 ret:0x0
  6840 ms  0x1c5 ret:0x7fd839c4d020::7fd839c4d020  f0 21 cb 39                                      .!.9
  6840 ms  0x1c5 PK11_PubDeriveWithKDF()
  6840 ms  0x1c5 seckey:0x7fd839c4d020
  6840 ms     | 0x1c5 EC_ValidatePublicKey()
  6840 ms     | 0x1c5 ret:0x0
  6840 ms  0x1c5 ret:0x7fd839cf9c80
  6840 ms  0x1c5 PK11_DeriveWithFlags()
  6840 ms  0x1c5 basekey:0x7fd839cf9c80
  6840 ms     | 0x1c5 PK11_DeriveWithTemplate()
  6840 ms  0x1c5 ret:0x7fd839cf9f00
  6840 ms  0x1c5 PK11_Derive()
  6840 ms  0x1c5 basekey:0x7fd839cf9f00
  6840 ms     | 0x1c5 PK11_DeriveWithTemplate()
  6840 ms  0x1c5 ret:0x7fd839cf9680
  6840 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6840 ms  0x1c5 privk:0x7fd839c4d020::7fd839c4d020  f0 21 cb 39                                      .!.9
  6840 ms  0x1c5 privk:0x7fd839c4d020::7fd839c4d020  e5 e5 e5 e5                                      ....
  6841 ms  0x1c5 PK11_Encrypt()
  6841 ms  0x1c5 symkey:0x7fd839cfa080
  6845 ms  0x1c5 PK11_Encrypt()
  6845 ms  0x1c5 symkey:0x7fd839d9b100
  6845 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6845 ms  0x1c5 privk:0x7fd839cda020::7fd839cda020  60 cf d9 39                                      `..9
  6845 ms  0x1c5 privk:0x7fd839cda020::7fd839cda020  e5 e5 e5 e5                                      ....
  6845 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6845 ms  0x1c5 privk:0x7fd839cd7020::7fd839cd7020  f0 ab d8 39                                      ...9
  6845 ms  0x1c5 privk:0x7fd839cd7020::7fd839cd7020  e5 e5 e5 e5                                      ....
  6846 ms  0x1c5 PK11_Encrypt()
  6846 ms  0x1c5 symkey:0x7fd84ac77a00
  6846 ms  0x1c5 PK11_Encrypt()
  6846 ms  0x1c5 symkey:0x7fd84ac78000
  6846 ms  0x1c5 PR_Close()
  6846 ms  0x1c5 fd:0x7fd839d3cac0
  6846 ms     | 0x1c5 PK11_Encrypt()
  6846 ms     | 0x1c5 symkey:0x7fd839d9ba00
  6846 ms  0x1c5 PR_Close()
  6846 ms  0x1c5 fd:0x7fd839dec4f0
  6846 ms     | 0x1c5 PK11_Encrypt()
  6846 ms     | 0x1c5 symkey:0x7fd839cf9a00
  6847 ms  0x1c5 PR_Close()
  6847 ms  0x1c5 fd:0x7fd839c96970
  6847 ms     | 0x1c5 PK11_Encrypt()
  6847 ms     | 0x1c5 symkey:0x7fd839cf9d00
  6847 ms  0x1c5 PK11_Encrypt()
  6847 ms  0x1c5 symkey:0x7fd839cf9700
  6847 ms  0x1c5 SSL_AuthCertificateComplete()
  6847 ms  0x1c5 fd:0x7fd839dec280
  6847 ms  0x1c5 err:0x0
  6847 ms  0x1c5 PK11_Encrypt()
  6847 ms  0x1c5 symkey:0x7fd839d9b100
  6848 ms  0x1c5 PK11_Encrypt()
  6848 ms  0x1c5 symkey:0x7fd839cf9700
           /* TID 0x1cd */
  6848 ms  0x1cd PR_Close()
  6848 ms  0x1cd fd:0x7fd839c32130
  6849 ms  0x1cd PR_Close()
  6849 ms  0x1cd fd:0x7fd839c32130
           /* TID 0x1c5 */
  6849 ms  0x1c5 PK11_Encrypt()
  6849 ms  0x1c5 symkey:0x7fd839d9b100
           /* TID 0x1cd */
  6851 ms  0x1cd PR_Close()
  6851 ms  0x1cd fd:0x7fd839c32130
  6851 ms  0x1cd PR_Close()
  6851 ms  0x1cd fd:0x7fd839c32130
           /* TID 0x1c5 */
  6852 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6852 ms  0x1c5 privk:0x7fd839ce9020::7fd839ce9020  70 e9 c6 4a                                      p..J
  6852 ms  0x1c5 privk:0x7fd839ce9020::7fd839ce9020  e5 e5 e5 e5                                      ....
  6852 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6852 ms  0x1c5 privk:0x7fd839ce7020::7fd839ce7020  50 e6 c6 4a                                      P..J
  6852 ms  0x1c5 privk:0x7fd839ce7020::7fd839ce7020  e5 e5 e5 e5                                      ....
           /* TID 0x1cd */
  6862 ms  0x1cd PR_Close()
  6862 ms  0x1cd fd:0x7fd839c32190
           /* TID 0x1c5 */
  6862 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6862 ms  0x1c5 privk:0x7fd839ce4820::7fd839ce4820  f0 cb c5 4a                                      ...J
  6862 ms  0x1c5 privk:0x7fd839ce4820::7fd839ce4820  e5 e5 e5 e5                                      ....
  6862 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6862 ms  0x1c5 privk:0x7fd839ce2820::7fd839ce2820  d0 c3 c5 4a                                      ...J
  6862 ms  0x1c5 privk:0x7fd839ce2820::7fd839ce2820  e5 e5 e5 e5                                      ....
  6862 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6862 ms  0x1c5 privk:0x7fd839ce0020::7fd839ce0020  40 c2 c5 4a                                      @..J
  6862 ms  0x1c5 privk:0x7fd839ce0020::7fd839ce0020  e5 e5 e5 e5                                      ....
  6862 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6862 ms  0x1c5 privk:0x7fd839cde020::7fd839cde020  60 3a e7 39                                      `:.9
  6862 ms  0x1c5 privk:0x7fd839cde020::7fd839cde020  e5 e5 e5 e5                                      ....
  6863 ms  0x1c5 PK11_Encrypt()
  6863 ms  0x1c5 symkey:0x7fd839cfa080
  6864 ms  0x1c5 PR_Close()
  6864 ms  0x1c5 fd:0x7fd839d3c9d0
  6864 ms     | 0x1c5 PK11_Encrypt()
  6864 ms     | 0x1c5 symkey:0x7fd84ac77a00
  6864 ms  0x1c5 PR_Close()
  6864 ms  0x1c5 fd:0x7fd839d3c850
  6864 ms     | 0x1c5 PK11_Encrypt()
  6864 ms     | 0x1c5 symkey:0x7fd84ac78000
  6864 ms  0x1c5 PR_Close()
  6864 ms  0x1c5 fd:0x7fd839d3c5e0
  6864 ms     | 0x1c5 PK11_Encrypt()
  6864 ms     | 0x1c5 symkey:0x7fd84ac78f00
  6864 ms  0x1c5 PK11_Encrypt()
  6864 ms  0x1c5 symkey:0x7fd839d9b100
           /* TID 0x1cd */
  6865 ms  0x1cd PR_Close()
  6865 ms  0x1cd fd:0x7fd839c32130
  6866 ms  0x1cd PR_Close()
  6866 ms  0x1cd fd:0x7fd839c32130
  6867 ms  0x1cd PR_Close()
  6867 ms  0x1cd fd:0x7fd839c32130
  6868 ms  0x1cd PR_Close()
  6868 ms  0x1cd fd:0x7fd839c32130
  6869 ms  0x1cd PR_Close()
  6869 ms  0x1cd fd:0x7fd839c32130
           /* TID 0x1c5 */
  6870 ms  0x1c5 PK11_Encrypt()
  6870 ms  0x1c5 symkey:0x7fd839cf9700
  6870 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6870 ms  0x1c5 privk:0x7fd839d72020::7fd839d72020  10 1a ce 4a                                      ...J
  6870 ms  0x1c5 privk:0x7fd839d72020::7fd839d72020  e5 e5 e5 e5                                      ....
  6870 ms  0x1c5 SECKEY_DestroyPrivateKey()
  6870 ms  0x1c5 privk:0x7fd839d6e020::7fd839d6e020  30 18 ce 4a                                      0..J
  6870 ms  0x1c5 privk:0x7fd839d6e020::7fd839d6e020  e5 e5 e5 e5                                      ....
  6870 ms  0x1c5 PR_Close()
  6870 ms  0x1c5 fd:0x7fd839dec280
  6870 ms     | 0x1c5 PK11_Encrypt()
  6870 ms     | 0x1c5 symkey:0x7fd839cfa080
  6871 ms  0x1c5 PK11_Encrypt()
  6871 ms  0x1c5 symkey:0x7fd839d9b100
  6871 ms  0x1c5 PK11_Encrypt()
  6871 ms  0x1c5 symkey:0x7fd839cf9700
  6871 ms  0x1c5 PK11_Encrypt()
  6871 ms  0x1c5 symkey:0x7fd839cf9700
  6872 ms  0x1c5 PK11_Encrypt()
  6872 ms  0x1c5 symkey:0x7fd839cf9700
  6872 ms  0x1c5 PK11_Encrypt()
  6872 ms  0x1c5 symkey:0x7fd839cf9700
  6872 ms  0x1c5 PK11_Encrypt()
  6872 ms  0x1c5 symkey:0x7fd839cf9700
  6872 ms  0x1c5 PK11_Encrypt()
  6872 ms  0x1c5 symkey:0x7fd839cf9700
           /* TID 0x1cd */
  6872 ms  0x1cd PR_Close()
  6872 ms  0x1cd fd:0x7fd839c32040
  6873 ms  0x1cd PR_Close()
  6873 ms  0x1cd fd:0x7fd839c32040
  6874 ms  0x1cd PR_Close()
  6874 ms  0x1cd fd:0x7fd839c32040
           /* TID 0x1c5 */
  6881 ms  0x1c5 PK11_Encrypt()
  6881 ms  0x1c5 symkey:0x7fd839cf9700
  6882 ms  0x1c5 PK11_Encrypt()
  6882 ms  0x1c5 symkey:0x7fd839cf9700
           /* TID 0x1cd */
  6884 ms  0x1cd PR_Close()
  6884 ms  0x1cd fd:0x7fd839c320d0
  6885 ms  0x1cd PR_Close()
  6885 ms  0x1cd fd:0x7fd839c320d0
           /* TID 0x1c5 */
  6887 ms  0x1c5 PK11_Encrypt()
  6887 ms  0x1c5 symkey:0x7fd839cf9700
           /* TID 0x1cd */
  6894 ms  0x1cd PR_Close()
  6894 ms  0x1cd fd:0x7fd839c324f0
           /* TID 0x1c5 */
  6903 ms  0x1c5 PK11_Encrypt()
  6903 ms  0x1c5 symkey:0x7fd839cf9580
  6905 ms  0x1c5 PK11_Encrypt()
  6905 ms  0x1c5 symkey:0x7fd839cf9580
           /* TID 0x1cd */
  6909 ms  0x1cd PR_Close()
  6909 ms  0x1cd fd:0x7fd839c32670
  6911 ms  0x1cd PR_Close()
  6911 ms  0x1cd fd:0x7fd839c32430
  6911 ms  0x1cd PR_Close()
  6911 ms  0x1cd fd:0x7fd839c32760
  6919 ms  0x1cd PR_Close()
  6919 ms  0x1cd fd:0x7fd839c32430
  6931 ms  0x1cd PR_Close()
  6931 ms  0x1cd fd:0x7fd839c32430
  6936 ms  0x1cd PR_Close()
  6936 ms  0x1cd fd:0x7fd839c32430
  6936 ms  0x1cd PR_Close()
  6936 ms  0x1cd fd:0x7fd839c32d90
  6937 ms  0x1cd PR_Close()
  6937 ms  0x1cd fd:0x7fd839c32430
  6947 ms  0x1cd PR_Close()
  6947 ms  0x1cd fd:0x7fd839c32370
  6948 ms  0x1cd PR_Close()
  6948 ms  0x1cd fd:0x7fd839c32310
  6950 ms  0x1cd PR_Close()
  6950 ms  0x1cd fd:0x7fd839c32310
  6956 ms  0x1cd PR_Close()
  6956 ms  0x1cd fd:0x7fd839c32310
  6957 ms  0x1cd PR_Close()
  6957 ms  0x1cd fd:0x7fd839c32280
  6958 ms  0x1cd PR_Close()
  6958 ms  0x1cd fd:0x7fd839c321f0
  6963 ms  0x1cd PR_Close()
  6963 ms  0x1cd fd:0x7fd839d03970
  6966 ms  0x1cd PR_Close()
  6966 ms  0x1cd fd:0x7fd839c325b0
  6967 ms  0x1cd PR_Close()
  6967 ms  0x1cd fd:0x7fd839c324c0
  6970 ms  0x1cd PR_Close()
  6970 ms  0x1cd fd:0x7fd839c321c0
  6972 ms  0x1cd PR_Close()
  6972 ms  0x1cd fd:0x7fd839c32130
  6973 ms  0x1cd PR_Close()
  6973 ms  0x1cd fd:0x7fd839c32130
  6976 ms  0x1cd PR_Close()
  6976 ms  0x1cd fd:0x7fd839c32130
  6977 ms  0x1cd PR_Close()
  6977 ms  0x1cd fd:0x7fd839c32430
  6986 ms  0x1cd PR_Close()
  6986 ms  0x1cd fd:0x7fd839d03970
  6987 ms  0x1cd PR_Close()
  6987 ms  0x1cd fd:0x7fd839c321f0
  6997 ms  0x1cd PR_Close()
  6997 ms  0x1cd fd:0x7fd839c321c0
  6999 ms  0x1cd PR_Close()
  6999 ms  0x1cd fd:0x7fd839c321c0
  7003 ms  0x1cd PR_Close()
  7003 ms  0x1cd fd:0x7fd839c321c0
  7003 ms  0x1cd PR_Close()
  7003 ms  0x1cd fd:0x7fd839c321c0
           /* TID 0x1c5 */
  7309 ms  0x1c5 PK11_Encrypt()
  7309 ms  0x1c5 symkey:0x7fd84ac77d80
  7310 ms  0x1c5 PK11_Encrypt()
  7310 ms  0x1c5 symkey:0x7fd839cf9700
           /* TID 0x1cd */
  7338 ms  0x1cd PR_Close()
  7338 ms  0x1cd fd:0x7fd839c32430
  7463 ms  0x1cd PR_Close()
  7463 ms  0x1cd fd:0x7fd839c32430
           /* TID 0x1c5 */
  7614 ms  0x1c5 PR_Close()
  7614 ms  0x1c5 fd:0x7fd84bf88b80
           /* TID 0x1ba */
  7619 ms  0x1ba EC_ValidatePublicKey()
  7621 ms  0x1ba ret:0x0
  7621 ms  0x1ba EC_ValidatePublicKey()
  7622 ms  0x1ba ret:0x0
  7622 ms  0x1ba EC_ValidatePublicKey()
  7623 ms  0x1ba ret:0x0
  7624 ms  0x1ba EC_ValidatePublicKey()
  7625 ms  0x1ba ret:0x0
  7625 ms  0x1ba EC_ValidatePublicKey()
  7626 ms  0x1ba ret:0x0
  7626 ms  0x1ba EC_ValidatePublicKey()
  7648 ms  0x1ba ret:0x0
  7648 ms  0x1ba EC_ValidatePublicKey()
  7649 ms  0x1ba ret:0x0
  7649 ms  0x1ba EC_ValidatePublicKey()
  7651 ms  0x1ba ret:0x0
  7651 ms  0x1ba EC_ValidatePublicKey()
  7652 ms  0x1ba ret:0x0
  7652 ms  0x1ba EC_ValidatePublicKey()
  7654 ms  0x1ba ret:0x0
           /* TID 0x1c5 */
  7654 ms  0x1c5 PK11_Encrypt()
  7654 ms  0x1c5 symkey:0x7fd839cf9580
  7654 ms  0x1c5 PK11_Encrypt()
  7654 ms  0x1c5 symkey:0x7fd839cf9700
  7655 ms  0x1c5 PK11_Encrypt()
  7655 ms  0x1c5 symkey:0x7fd839d9b100
  7655 ms  0x1c5 PR_Close()
  7655 ms  0x1c5 fd:0x7fd84ac6fb20
  7655 ms     | 0x1c5 PK11_Encrypt()
  7655 ms     | 0x1c5 symkey:0x7fd84ac77d80
  7655 ms  0x1c5 PR_Close()
  7655 ms  0x1c5 fd:0x7fd8515270d0
  7655 ms  0x1c5 PR_Close()
  7655 ms  0x1c5 fd:0x7fd84e19ab20
  7655 ms     | 0x1c5 PK11_Encrypt()
  7655 ms     | 0x1c5 symkey:0x7fd84ac77500
  7655 ms  0x1c5 PR_Close()
  7655 ms  0x1c5 fd:0x7fd85ac52310
  7655 ms     | 0x1c5 PK11_Encrypt()
  7655 ms     | 0x1c5 symkey:0x7fd84af6b080
  7656 ms  0x1c5 PR_Close()
  7656 ms  0x1c5 fd:0x7fd85ac52190
  7656 ms  0x1c5 PR_Close()
  7656 ms  0x1c5 fd:0x7fd859e0f700
  7656 ms     | 0x1c5 PK11_Encrypt()
  7656 ms     | 0x1c5 symkey:0x7fd873317900
  7656 ms  0x1c5 PR_Close()
  7656 ms  0x1c5 fd:0x7fd84b6dc9d0
  7656 ms     | 0x1c5 PK11_Encrypt()
  7656 ms     | 0x1c5 symkey:0x7fd84b6ac900
  7656 ms  0x1c5 PR_Close()
  7656 ms  0x1c5 fd:0x7fd839c32a00
  7656 ms     | 0x1c5 PK11_Encrypt()
  7656 ms     | 0x1c5 symkey:0x7fd839cf9580
  7656 ms  0x1c5 PR_Close()
  7656 ms  0x1c5 fd:0x7fd839dec100
  7656 ms     | 0x1c5 PK11_Encrypt()
  7656 ms     | 0x1c5 symkey:0x7fd839d9b100
  7657 ms  0x1c5 PR_Close()
  7657 ms  0x1c5 fd:0x7fd839dec430
  7657 ms     | 0x1c5 PK11_Encrypt()
  7657 ms     | 0x1c5 symkey:0x7fd839cf9700
           /* TID 0x215 */
  7657 ms  0x215 PR_Close()
  7657 ms  0x215 fd:0x7fd839c32610
  7657 ms  0x215 PR_Close()
  7657 ms  0x215 fd:0x7fd839c32610
           /* TID 0x1ba */
  7670 ms  0x1ba PR_Close()
  7670 ms  0x1ba fd:0x7fd84c2bfe80
  7670 ms  0x1ba PR_Close()
  7670 ms  0x1ba fd:0x7fd839c32eb0
  7671 ms  0x1ba PR_Close()
  7671 ms  0x1ba fd:0x7fd839c32f10
  7671 ms  0x1ba PR_Close()
  7671 ms  0x1ba fd:0x7fd839c32eb0
  7672 ms  0x1ba PR_Close()
  7672 ms  0x1ba fd:0x7fd839c32f10
  7672 ms  0x1ba PR_Close()
  7672 ms  0x1ba fd:0x7fd839c32eb0
           /* TID 0x22f */
  7675 ms  0x22f PR_Close()
  7675 ms  0x22f fd:0x7fd839c32eb0
           /* TID 0x1ba */
  7711 ms  0x1ba PR_Close()
  7711 ms  0x1ba fd:0x7fd839c32f10
  7711 ms  0x1ba PR_Close()
  7711 ms  0x1ba fd:0x7fd839ea15e0
  7717 ms  0x1ba PR_Close()
  7717 ms  0x1ba fd:0x7fd839c32f10
  7717 ms  0x1ba PR_Close()
  7717 ms  0x1ba fd:0x7fd839ea15e0
  7718 ms  0x1ba PR_Close()
  7718 ms  0x1ba fd:0x7fd855fc89a0
  7718 ms  0x1ba PR_Close()
  7718 ms  0x1ba fd:0x7fd855fc88b0
  7718 ms  0x1ba PR_Close()
  7718 ms  0x1ba fd:0x7fd855fc8a60
  7721 ms  0x1ba PR_Close()
  7721 ms  0x1ba fd:0x7fd839ea1670
  7722 ms  0x1ba PR_Close()
  7722 ms  0x1ba fd:0x7fd839ea1670
  7727 ms  0x1ba PR_Close()
  7727 ms  0x1ba fd:0x7fd839c32f10
  7727 ms  0x1ba PR_Close()
  7727 ms  0x1ba fd:0x7fd839ea1730
  7730 ms  0x1ba PR_Close()
  7730 ms  0x1ba fd:0x7fd839c32f10
  7731 ms  0x1ba PR_Close()
  7731 ms  0x1ba fd:0x7fd839ea1730
  7737 ms  0x1ba PR_Close()
  7737 ms  0x1ba fd:0x7fd839decd30
  7739 ms  0x1ba PR_Close()
  7739 ms  0x1ba fd:0x7fd839decdf0
  7742 ms  0x1ba PR_Close()
  7742 ms  0x1ba fd:0x7fd839c32f10
  7742 ms  0x1ba PR_Close()
  7742 ms  0x1ba fd:0x7fd839ea18b0
  7743 ms  0x1ba PR_Close()
  7743 ms  0x1ba fd:0x7fd839c32f10
  7744 ms  0x1ba PR_Close()
  7744 ms  0x1ba fd:0x7fd839ea18b0
  7747 ms  0x1ba PR_Close()
  7747 ms  0x1ba fd:0x7fd839ea1b50
  7752 ms  0x1ba PR_Close()
  7752 ms  0x1ba fd:0x7fd839ea1bb0
  7762 ms  0x1ba PR_Close()
  7762 ms  0x1ba fd:0x7fd84ac6f340
  7763 ms  0x1ba PR_Close()
  7763 ms  0x1ba fd:0x7fd84ac6f340
  7765 ms  0x1ba PR_Close()
  7765 ms  0x1ba fd:0x7fd84ac6f460
           /* TID 0x22f */
  7776 ms  0x22f PR_Close()
  7776 ms  0x22f fd:0x7fd839dec580
           /* TID 0x1ba */
  7777 ms  0x1ba PR_Close()
  7777 ms  0x1ba fd:0x7fd839c32f10
  7777 ms  0x1ba PR_Close()
  7777 ms  0x1ba fd:0x7fd839decf40
           /* TID 0x22f */
  7777 ms  0x22f PR_Close()
  7777 ms  0x22f fd:0x7fd839dec580
  7781 ms  0x22f PR_Close()
  7781 ms  0x22f fd:0x7fd839ea1160
           /* TID 0x1c5 */
  7796 ms  0x1c5 SSL_ImportFD()
  7796 ms  0x1c5 ret:0x7fd84ace4550
  7796 ms  0x1c5 SSL_AuthCertificateHook()
  7796 ms  0x1c5 fd:0x7fd84ace4550
  7796 ms  0x1c5 ret:0x0
  7796 ms  0x1c5 PR_Connect()
  7796 ms  0x1c5 fd:0x7fd84ace4550
  7796 ms  0x1c5 SSL_ImportFD()
  7796 ms  0x1c5 ret:0x7fd84ace4580
  7796 ms  0x1c5 SSL_AuthCertificateHook()
  7796 ms  0x1c5 fd:0x7fd84ace4580
  7796 ms  0x1c5 ret:0x0
  7796 ms  0x1c5 PR_Connect()
  7796 ms  0x1c5 fd:0x7fd84ace4580
  7796 ms  0x1c5 SSL_ImportFD()
  7796 ms  0x1c5 ret:0x7fd84ace4460
  7796 ms  0x1c5 SSL_AuthCertificateHook()
  7796 ms  0x1c5 fd:0x7fd84ace4460
  7796 ms  0x1c5 ret:0x0
  7796 ms  0x1c5 PR_Connect()
  7796 ms  0x1c5 fd:0x7fd84ace4460
           /* TID 0x22f */
  7823 ms  0x22f PR_Close()
  7823 ms  0x22f fd:0x7fd839c326d0
           /* TID 0x1c5 */
  7835 ms  0x1c5 PR_Close()
  7835 ms  0x1c5 fd:0x7fd84ace4460
           /* TID 0x1bf */
  7840 ms  0x1bf PR_Close()
  7840 ms  0x1bf fd:0x7fd854bf8df0
           /* TID 0x1c5 */
  7841 ms  0x1c5 PR_Close()
  7841 ms  0x1c5 fd:0x7fd84ace4580
  7841 ms  0x1c5 PR_Close()
  7841 ms  0x1c5 fd:0x7fd84ace4550
  7841 ms  0x1c5 PR_Close()
  7841 ms  0x1c5 fd:0x7fd84e173fd0
  7841 ms     | 0x1c5 PK11_Encrypt()
  7841 ms     | 0x1c5 symkey:0x7fd84cad4e00
           /* TID 0x22f */
  7849 ms  0x22f PR_Close()
  7849 ms  0x22f fd:0x7fd839c326a0
           /* TID 0x1bf */
  7861 ms  0x1bf PR_Close()
  7861 ms  0x1bf fd:0x7fd851251790
           /* TID 0x1ba */
  7861 ms  0x1ba PR_Close()
  7861 ms  0x1ba fd:0x7fd839c32f10
  7861 ms  0x1ba PR_Close()
  7861 ms  0x1ba fd:0x7fd839c326a0
           /* TID 0x1c5 */
  7862 ms  0x1c5 PR_Close()
  7862 ms  0x1c5 fd:0x7fd84bf884c0
           /* TID 0x215 */
  7863 ms  0x215 PR_Close()
  7863 ms  0x215 fd:0x7fd839c960a0
  7863 ms  0x215 PR_Close()
  7863 ms  0x215 fd:0x7fd839c960a0
  7863 ms  0x215 PR_Close()
  7863 ms  0x215 fd:0x7fd839c960a0
  7863 ms  0x215 PR_Close()
  7863 ms  0x215 fd:0x7fd839c96160
           /* TID 0x22f */
  7863 ms  0x22f PR_Close()
  7863 ms  0x22f fd:0x7fd839c96160
           /* TID 0x1cd */
  7866 ms  0x1cd PR_Close()
  7866 ms  0x1cd fd:0x7fd84ace4970
  7866 ms  0x1cd PR_Close()
  7866 ms  0x1cd fd:0x7fd84ace4a90
           /* TID 0x1bf */
  7872 ms  0x1bf PR_Close()
  7872 ms  0x1bf fd:0x7fd850cfb070
           /* TID 0x1ba */
  7874 ms  0x1ba PR_Close()
  7874 ms  0x1ba fd:0x7fd839c32f10
  7874 ms  0x1ba PR_Close()
  7874 ms  0x1ba fd:0x7fd84ac6f880
           /* TID 0x22f */
  7876 ms  0x22f PR_Close()
  7876 ms  0x22f fd:0x7fd839d03c40
  7878 ms  0x22f PR_Close()
  7878 ms  0x22f fd:0x7fd839d03c40
  7922 ms  0x22f PR_Close()
  7922 ms  0x22f fd:0x7fd839c320d0
  7923 ms  0x22f PR_Close()
  7923 ms  0x22f fd:0x7fd839c320d0
  7928 ms  0x22f PR_Close()
  7928 ms  0x22f fd:0x7fd839c32700
  7928 ms  0x22f PR_Close()
  7928 ms  0x22f fd:0x7fd839c32cd0
  7937 ms  0x22f PR_Close()
  7937 ms  0x22f fd:0x7fd839d03ac0
  7942 ms  0x22f PR_Close()
  7942 ms  0x22f fd:0x7fd839dec5e0
  7948 ms  0x22f PR_Close()
  7948 ms  0x22f fd:0x7fd839dec880
  7958 ms  0x22f PR_Close()
  7958 ms  0x22f fd:0x7fd839dec940
  7959 ms  0x22f PR_Close()
  7959 ms  0x22f fd:0x7fd839dec940
           /* TID 0x1ba */
  8121 ms  0x1ba PR_Close()
  8121 ms  0x1ba fd:0x7fd839c32cd0
  8121 ms  0x1ba PR_Close()
  8121 ms  0x1ba fd:0x7fd839c32cd0
  8128 ms  0x1ba PR_Close()
  8128 ms  0x1ba fd:0x7fd8733da130
  8128 ms  0x1ba PR_Close()
  8128 ms  0x1ba fd:0x7fd8733da190
Process terminated
