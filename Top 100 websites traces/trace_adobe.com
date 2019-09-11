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
           /* TID 0x14f0 */
    91 ms  0x14f0 PR_Close()
    91 ms  0x14f0 fd:0x7f0d93cff940
           /* TID 0x14e8 */
   311 ms  0x14e8 SSL_ImportFD()
   311 ms  0x14e8 ret:0x7f0d82e0a4f0
   311 ms  0x14e8 SSL_AuthCertificateHook()
   311 ms  0x14e8 fd:0x7f0d82e0a4f0
   311 ms  0x14e8 ret:0x0
   311 ms  0x14e8 PR_Connect()
   311 ms  0x14e8 fd:0x7f0d82e0a4f0
   519 ms  0x14e8 SECKEY_CreateECPrivateKey()
   519 ms  0x14e8 cx:0x7f0d82e05988
   521 ms     | 0x14e8 EC_ValidatePublicKey()
   521 ms     | 0x14e8 ret:0x0
   521 ms  0x14e8 ret:0x7f0d82e77820::7f0d82e77820  f0 fb ed 82                                      ....
   521 ms  0x14e8 SECKEY_CreateECPrivateKey()
   521 ms  0x14e8 cx:0x7f0d82e05988
   523 ms     | 0x14e8 EC_ValidatePublicKey()
   528 ms     | 0x14e8 ret:0x0
   528 ms  0x14e8 ret:0x7f0d82e79820::7f0d82e79820  d0 fd ed 82                                      ....
           /* TID 0x1502 */
   629 ms  0x1502 PR_Close()
   629 ms  0x1502 fd:0x7f0d82e0a430
   632 ms  0x1502 PR_Close()
   632 ms  0x1502 fd:0x7f0d82e0a430
           /* TID 0x14e8 */
   743 ms  SECKEY_ECParamsToKeySize()
   743 ms  0x14e8 ret:0x100
   744 ms  0x14e8 SECKEY_CreateECPrivateKey()
   744 ms  0x14e8 cx:0x7f0d82e05988
   745 ms     | 0x14e8 EC_ValidatePublicKey()
   749 ms     | 0x14e8 ret:0x0
   749 ms  0x14e8 ret:0x7f0d82e82820::7f0d82e82820  30 38 b2 82                                      08..
   749 ms  0x14e8 PK11_PubDeriveWithKDF()
   749 ms  0x14e8 seckey:0x7f0d82e82820
   749 ms     | 0x14e8 EC_ValidatePublicKey()
   753 ms     | 0x14e8 ret:0x0
   756 ms  0x14e8 ret:0x7f0d956fef80
   756 ms  0x14e8 PK11_DeriveWithFlags()
   756 ms  0x14e8 basekey:0x7f0d956fef80
   757 ms     | 0x14e8 PK11_DeriveWithTemplate()
   757 ms  0x14e8 ret:0x7f0d82b14a80
   757 ms  0x14e8 PK11_Derive()
   757 ms  0x14e8 basekey:0x7f0d82b14a80
   757 ms     | 0x14e8 PK11_DeriveWithTemplate()
   757 ms  0x14e8 ret:0x7f0d82b14b80
   757 ms  0x14e8 SECKEY_DestroyPrivateKey()
   757 ms  0x14e8 privk:0x7f0d82e82820::7f0d82e82820  30 38 b2 82                                      08..
   757 ms  0x14e8 privk:0x7f0d82e82820::7f0d82e82820  e5 e5 e5 e5                                      ....
   757 ms  0x14e8 PK11_Encrypt()
   757 ms  0x14e8 symkey:0x7f0d82b14d00
   758 ms  0x14e8 PR_Connect()
   758 ms  0x14e8 fd:0x7f0d82b3e070
           /* TID 0x1502 */
   798 ms  0x1502 PR_Close()
   798 ms  0x1502 fd:0x7f0d82b3e100
           /* TID 0x14f0 */
   812 ms  0x14f0 PR_Close()
   812 ms  0x14f0 fd:0x7f0d82b3e100
           /* TID 0x154e */
   812 ms  0x154e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   813 ms  0x154e ret:0x0
           /* TID 0x14e8 */
   813 ms  0x14e8 SSL_AuthCertificateComplete()
   813 ms  0x14e8 fd:0x7f0d82e0a4f0
   813 ms  0x14e8 err:0x0
   813 ms  0x14e8 PK11_Encrypt()
   813 ms  0x14e8 symkey:0x7f0d82b14d00
   966 ms  0x14e8 SECKEY_DestroyPrivateKey()
   966 ms  0x14e8 privk:0x7f0d82e79820::7f0d82e79820  d0 fd ed 82                                      ....
   967 ms  0x14e8 privk:0x7f0d82e79820::7f0d82e79820  e5 e5 e5 e5                                      ....
   967 ms  0x14e8 SECKEY_DestroyPrivateKey()
   967 ms  0x14e8 privk:0x7f0d82e77820::7f0d82e77820  f0 fb ed 82                                      ....
   967 ms  0x14e8 privk:0x7f0d82e77820::7f0d82e77820  e5 e5 e5 e5                                      ....
  1181 ms  0x14e8 SSL_ImportFD()
  1181 ms  0x14e8 ret:0x7f0d82b3e2e0
  1181 ms  0x14e8 SSL_AuthCertificateHook()
  1181 ms  0x14e8 fd:0x7f0d82b3e2e0
  1181 ms  0x14e8 ret:0x0
  1182 ms  0x14e8 PR_Connect()
  1182 ms  0x14e8 fd:0x7f0d82b3e2e0
  1208 ms  0x14e8 SECKEY_CreateECPrivateKey()
  1208 ms  0x14e8 cx:0x7f0d82b17428
  1209 ms     | 0x14e8 EC_ValidatePublicKey()
  1209 ms     | 0x14e8 ret:0x0
  1209 ms  0x14e8 ret:0x7f0d82e79020::7f0d82e79020  30 38 b2 82                                      08..
  1210 ms  0x14e8 SECKEY_CreateECPrivateKey()
  1210 ms  0x14e8 cx:0x7f0d82b17428
  1212 ms     | 0x14e8 EC_ValidatePublicKey()
  1216 ms     | 0x14e8 ret:0x0
  1216 ms  0x14e8 ret:0x7f0d82e7f020::7f0d82e7f020  10 3a b2 82                                      .:..
           /* TID 0x154e */
  1269 ms  0x154e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1270 ms  0x154e ret:0x0
           /* TID 0x14e8 */
  1270 ms  SECKEY_ECParamsToKeySize()
  1270 ms  0x14e8 ret:0x100
  1271 ms  0x14e8 SECKEY_CreateECPrivateKey()
  1271 ms  0x14e8 cx:0x7f0d82b17428
  1272 ms     | 0x14e8 EC_ValidatePublicKey()
  1277 ms     | 0x14e8 ret:0x0
  1277 ms  0x14e8 ret:0x7f0d82e82820::7f0d82e82820  90 3c b2 82                                      .<..
  1277 ms  0x14e8 PK11_PubDeriveWithKDF()
  1277 ms  0x14e8 seckey:0x7f0d82e82820
  1277 ms     | 0x14e8 EC_ValidatePublicKey()
  1282 ms     | 0x14e8 ret:0x0
  1286 ms  0x14e8 ret:0x7f0d956fef80
  1286 ms  0x14e8 PK11_DeriveWithFlags()
  1286 ms  0x14e8 basekey:0x7f0d956fef80
  1286 ms     | 0x14e8 PK11_DeriveWithTemplate()
  1286 ms  0x14e8 ret:0x7f0d82b15480
  1286 ms  0x14e8 PK11_Derive()
  1286 ms  0x14e8 basekey:0x7f0d82b15480
  1286 ms     | 0x14e8 PK11_DeriveWithTemplate()
  1286 ms  0x14e8 ret:0x7f0d82b15680
  1286 ms  0x14e8 SECKEY_DestroyPrivateKey()
  1286 ms  0x14e8 privk:0x7f0d82e82820::7f0d82e82820  90 3c b2 82                                      .<..
  1287 ms  0x14e8 privk:0x7f0d82e82820::7f0d82e82820  e5 e5 e5 e5                                      ....
  1287 ms  0x14e8 PK11_Encrypt()
  1287 ms  0x14e8 symkey:0x7f0d82b15b80
  1288 ms  0x14e8 SSL_AuthCertificateComplete()
  1288 ms  0x14e8 fd:0x7f0d82b3e2e0
  1288 ms  0x14e8 err:0x0
  1288 ms  0x14e8 PK11_Encrypt()
  1288 ms  0x14e8 symkey:0x7f0d82b15b80
  1340 ms  0x14e8 SECKEY_DestroyPrivateKey()
  1340 ms  0x14e8 privk:0x7f0d82e7f020::7f0d82e7f020  10 3a b2 82                                      .:..
  1341 ms  0x14e8 privk:0x7f0d82e7f020::7f0d82e7f020  e5 e5 e5 e5                                      ....
  1341 ms  0x14e8 SECKEY_DestroyPrivateKey()
  1341 ms  0x14e8 privk:0x7f0d82e79020::7f0d82e79020  30 38 b2 82                                      08..
  1341 ms  0x14e8 privk:0x7f0d82e79020::7f0d82e79020  e5 e5 e5 e5                                      ....
  1345 ms  0x14e8 PK11_Encrypt()
  1345 ms  0x14e8 symkey:0x7f0d82b15b80
  1375 ms  0x14e8 PK11_Encrypt()
  1375 ms  0x14e8 symkey:0x7f0d82b15b80
  1406 ms  0x14e8 PK11_Encrypt()
  1406 ms  0x14e8 symkey:0x7f0d82b15b80
  1436 ms  0x14e8 PK11_Encrypt()
  1436 ms  0x14e8 symkey:0x7f0d82b15b80
  1551 ms  0x14e8 PK11_Encrypt()
  1551 ms  0x14e8 symkey:0x7f0d82b15b80
  1583 ms  0x14e8 PK11_Encrypt()
  1583 ms  0x14e8 symkey:0x7f0d82b15b80
  1613 ms  0x14e8 PK11_Encrypt()
  1613 ms  0x14e8 symkey:0x7f0d82b15b80
           /* TID 0x1545 */
  1641 ms  0x1545 PR_Close()
  1641 ms  0x1545 fd:0x7f0d82b3e3d0
  1641 ms  0x1545 PR_Close()
  1641 ms  0x1545 fd:0x7f0d82b3e490
  1641 ms  0x1545 PR_Close()
  1641 ms  0x1545 fd:0x7f0d82b3e3d0
  1641 ms  0x1545 PR_Close()
  1641 ms  0x1545 fd:0x7f0d82b3e490
  1641 ms  0x1545 PR_Close()
  1641 ms  0x1545 fd:0x7f0d82b3e3d0
  1641 ms  0x1545 PR_Close()
  1641 ms  0x1545 fd:0x7f0d82b3e490
  1641 ms  0x1545 PR_Close()
  1641 ms  0x1545 fd:0x7f0d82b3e3d0
  1641 ms  0x1545 PR_Close()
  1641 ms  0x1545 fd:0x7f0d82b3e490
  1641 ms  0x1545 PR_Close()
  1641 ms  0x1545 fd:0x7f0d82b3e3d0
  1641 ms  0x1545 PR_Close()
  1641 ms  0x1545 fd:0x7f0d82b3e490
  1642 ms  0x1545 PR_Close()
  1642 ms  0x1545 fd:0x7f0d82b3e3d0
  1642 ms  0x1545 PR_Close()
  1642 ms  0x1545 fd:0x7f0d82b3e490
  1642 ms  0x1545 PR_Close()
  1642 ms  0x1545 fd:0x7f0d82b3e3d0
  1642 ms  0x1545 PR_Close()
  1642 ms  0x1545 fd:0x7f0d82b3e490
  1642 ms  0x1545 PR_Close()
  1642 ms  0x1545 fd:0x7f0d82b3e3d0
  1642 ms  0x1545 PR_Close()
  1642 ms  0x1545 fd:0x7f0d82b3e490
  1642 ms  0x1545 PR_Close()
  1642 ms  0x1545 fd:0x7f0d82b3e3d0
  1642 ms  0x1545 PR_Close()
  1642 ms  0x1545 fd:0x7f0d82b3e490
  1642 ms  0x1545 PR_Close()
  1642 ms  0x1545 fd:0x7f0d82b3e3d0
  1642 ms  0x1545 PR_Close()
  1642 ms  0x1545 fd:0x7f0d82b3e490
  1642 ms  0x1545 PR_Close()
  1642 ms  0x1545 fd:0x7f0d82b3e3d0
  1642 ms  0x1545 PR_Close()
  1642 ms  0x1545 fd:0x7f0d82b3e490
  1642 ms  0x1545 PR_Close()
  1642 ms  0x1545 fd:0x7f0d82b3e3d0
  1642 ms  0x1545 PR_Close()
  1642 ms  0x1545 fd:0x7f0d82b3e490
  1643 ms  0x1545 PR_Close()
  1643 ms  0x1545 fd:0x7f0d82b3e3d0
  1643 ms  0x1545 PR_Close()
  1643 ms  0x1545 fd:0x7f0d82b3e490
  1643 ms  0x1545 PR_Close()
  1643 ms  0x1545 fd:0x7f0d82b3e3d0
  1643 ms  0x1545 PR_Close()
  1643 ms  0x1545 fd:0x7f0d82b3e490
  1646 ms  0x1545 PR_Close()
  1646 ms  0x1545 fd:0x7f0d82b3e3d0
  1646 ms  0x1545 PR_Close()
  1646 ms  0x1545 fd:0x7f0d82b3e3a0
  1649 ms  0x1545 PR_Close()
  1649 ms  0x1545 fd:0x7f0d82b3e3a0
  1649 ms  0x1545 PR_Close()
  1649 ms  0x1545 fd:0x7f0d82b3e3d0
  1651 ms  0x1545 PR_Close()
  1651 ms  0x1545 fd:0x7f0d82b3e3d0
  1651 ms  0x1545 PR_Close()
  1651 ms  0x1545 fd:0x7f0d82b3e3d0
  1654 ms  0x1545 PR_Close()
  1654 ms  0x1545 fd:0x7f0d82b3e3d0
  1654 ms  0x1545 PR_Close()
  1654 ms  0x1545 fd:0x7f0d82b3e3d0
  1718 ms  0x1545 PR_Close()
  1718 ms  0x1545 fd:0x7f0d82b3e3d0
  1719 ms  0x1545 PR_Close()
  1719 ms  0x1545 fd:0x7f0d82b3e3d0
  1726 ms  0x1545 PR_Close()
  1726 ms  0x1545 fd:0x7f0d82b3e3d0
  1726 ms  0x1545 PR_Close()
  1726 ms  0x1545 fd:0x7f0d82b3e3d0
  1732 ms  0x1545 PR_Close()
  1732 ms  0x1545 fd:0x7f0d82b3e3d0
  1732 ms  0x1545 PR_Close()
  1732 ms  0x1545 fd:0x7f0d82b3e3d0
  1734 ms  0x1545 PR_Close()
  1734 ms  0x1545 fd:0x7f0d82b3e3d0
  1734 ms  0x1545 PR_Close()
  1734 ms  0x1545 fd:0x7f0d82b3e3d0
           /* TID 0x1542 */
  1734 ms  0x1542 PR_Close()
  1734 ms  0x1542 fd:0x7f0d82b3e3d0
  1734 ms  0x1542 PR_Close()
  1734 ms  0x1542 fd:0x7f0d82b3e3d0
  1734 ms  0x1542 PR_Close()
  1734 ms  0x1542 fd:0x7f0d82b3e3d0
  1734 ms  0x1542 PR_Close()
  1734 ms  0x1542 fd:0x7f0d82b3e3d0
  1734 ms  0x1542 PR_Close()
  1734 ms  0x1542 fd:0x7f0d82b3e3d0
  1734 ms  0x1542 PR_Close()
  1734 ms  0x1542 fd:0x7f0d82b3e3d0
  1734 ms  0x1542 PR_Close()
  1734 ms  0x1542 fd:0x7f0d82b3e3d0
  1734 ms  0x1542 PR_Close()
  1734 ms  0x1542 fd:0x7f0d82b3e3d0
  1734 ms  0x1542 PR_Close()
  1734 ms  0x1542 fd:0x7f0d82b3e3d0
  1734 ms  0x1542 PR_Close()
  1734 ms  0x1542 fd:0x7f0d82b3e3d0
  1734 ms  0x1542 PR_Close()
  1734 ms  0x1542 fd:0x7f0d82b3e3d0
  1734 ms  0x1542 PR_Close()
  1734 ms  0x1542 fd:0x7f0d82b3e3d0
  1734 ms  0x1542 PR_Close()
  1734 ms  0x1542 fd:0x7f0d82b3e3d0
  1734 ms  0x1542 PR_Close()
  1734 ms  0x1542 fd:0x7f0d82b3e3d0
  1734 ms  0x1542 PR_Close()
  1734 ms  0x1542 fd:0x7f0d82b3e3d0
           /* TID 0x1502 */
  2237 ms  0x1502 PR_Close()
  2237 ms  0x1502 fd:0x7f0d82b3e790
  2240 ms  0x1502 PR_Close()
  2240 ms  0x1502 fd:0x7f0d82b3e790
  2903 ms  0x1502 PR_Close()
  2903 ms  0x1502 fd:0x7f0d82b3e790
           /* TID 0x14f0 */
  4208 ms  0x14f0 PR_Close()
  4208 ms  0x14f0 fd:0x7f0d82b3e790
  4209 ms  0x14f0 PR_Close()
  4209 ms  0x14f0 fd:0x7f0d82b3e8e0
           /* TID 0x14e8 */
  4468 ms  0x14e8 SSL_ImportFD()
  4468 ms  0x14e8 ret:0x7f0d94eca850
  4468 ms  0x14e8 SSL_AuthCertificateHook()
  4468 ms  0x14e8 fd:0x7f0d94eca850
  4468 ms  0x14e8 ret:0x0
  4468 ms  0x14e8 PR_Connect()
  4468 ms  0x14e8 fd:0x7f0d94eca850
  4527 ms  0x14e8 SECKEY_CreateECPrivateKey()
  4527 ms  0x14e8 cx:0x7f0d82b17768
  4528 ms     | 0x14e8 EC_ValidatePublicKey()
  4528 ms     | 0x14e8 ret:0x0
  4528 ms  0x14e8 ret:0x7f0d82bb7020::7f0d82bb7020  f0 66 be 82                                      .f..
  4529 ms  0x14e8 SECKEY_CreateECPrivateKey()
  4529 ms  0x14e8 cx:0x7f0d82b17768
  4532 ms     | 0x14e8 EC_ValidatePublicKey()
  4537 ms     | 0x14e8 ret:0x0
  4537 ms  0x14e8 ret:0x7f0d82bb9020::7f0d82bb9020  d0 68 be 82                                      .h..
           /* TID 0x154e */
  4601 ms  0x154e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4601 ms  0x154e ret:0x0
           /* TID 0x14e8 */
  4602 ms  SECKEY_ECParamsToKeySize()
  4602 ms  0x14e8 ret:0x100
  4602 ms  0x14e8 SECKEY_CreateECPrivateKey()
  4602 ms  0x14e8 cx:0x7f0d82b17768
  4604 ms     | 0x14e8 EC_ValidatePublicKey()
  4608 ms     | 0x14e8 ret:0x0
  4608 ms  0x14e8 ret:0x7f0d82bbf820::7f0d82bbf820  20 6e be 82                                       n..
  4608 ms  0x14e8 PK11_PubDeriveWithKDF()
  4608 ms  0x14e8 seckey:0x7f0d82bbf820
  4608 ms     | 0x14e8 EC_ValidatePublicKey()
  4614 ms     | 0x14e8 ret:0x0
  4618 ms  0x14e8 ret:0x7f0d956fef80
  4618 ms  0x14e8 PK11_DeriveWithFlags()
  4618 ms  0x14e8 basekey:0x7f0d956fef80
  4618 ms     | 0x14e8 PK11_DeriveWithTemplate()
  4618 ms  0x14e8 ret:0x7f0d94d76780
  4618 ms  0x14e8 PK11_Derive()
  4618 ms  0x14e8 basekey:0x7f0d94d76780
  4618 ms     | 0x14e8 PK11_DeriveWithTemplate()
  4618 ms  0x14e8 ret:0x7f0d94d76800
  4618 ms  0x14e8 SECKEY_DestroyPrivateKey()
  4618 ms  0x14e8 privk:0x7f0d82bbf820::7f0d82bbf820  20 6e be 82                                       n..
  4618 ms  0x14e8 privk:0x7f0d82bbf820::7f0d82bbf820  e5 e5 e5 e5                                      ....
  4619 ms  0x14e8 PK11_Encrypt()
  4619 ms  0x14e8 symkey:0x7f0d94d76d00
  4619 ms  0x14e8 SSL_AuthCertificateComplete()
  4619 ms  0x14e8 fd:0x7f0d94eca850
  4619 ms  0x14e8 err:0x0
  4621 ms  0x14e8 PK11_Encrypt()
  4621 ms  0x14e8 symkey:0x7f0d94d76d00
  4621 ms  0x14e8 PK11_Encrypt()
  4621 ms  0x14e8 symkey:0x7f0d94d76d00
  4677 ms  0x14e8 SECKEY_DestroyPrivateKey()
  4677 ms  0x14e8 privk:0x7f0d82bb9020::7f0d82bb9020  d0 68 be 82                                      .h..
  4678 ms  0x14e8 privk:0x7f0d82bb9020::7f0d82bb9020  e5 e5 e5 e5                                      ....
  4678 ms  0x14e8 SECKEY_DestroyPrivateKey()
  4678 ms  0x14e8 privk:0x7f0d82bb7020::7f0d82bb7020  f0 66 be 82                                      .f..
  4678 ms  0x14e8 privk:0x7f0d82bb7020::7f0d82bb7020  e5 e5 e5 e5                                      ....
  4735 ms  0x14e8 PK11_Encrypt()
  4735 ms  0x14e8 symkey:0x7f0d94d76d00
  4740 ms  0x14e8 PK11_Encrypt()
  4740 ms  0x14e8 symkey:0x7f0d94d76d00
  4740 ms  0x14e8 PK11_Encrypt()
  4740 ms  0x14e8 symkey:0x7f0d94d76d00
  4741 ms  0x14e8 PK11_Encrypt()
  4741 ms  0x14e8 symkey:0x7f0d94d76d00
  4742 ms  0x14e8 PK11_Encrypt()
  4742 ms  0x14e8 symkey:0x7f0d94d76d00
  4742 ms  0x14e8 PK11_Encrypt()
  4742 ms  0x14e8 symkey:0x7f0d94d76d00
  4743 ms  0x14e8 PK11_Encrypt()
  4743 ms  0x14e8 symkey:0x7f0d94d76d00
  4744 ms  0x14e8 PK11_Encrypt()
  4744 ms  0x14e8 symkey:0x7f0d94d76d00
  4744 ms  0x14e8 PK11_Encrypt()
  4744 ms  0x14e8 symkey:0x7f0d94d76d00
  4745 ms  0x14e8 PK11_Encrypt()
  4745 ms  0x14e8 symkey:0x7f0d94d76d00
  4745 ms  0x14e8 PK11_Encrypt()
  4745 ms  0x14e8 symkey:0x7f0d94d76d00
  4746 ms  0x14e8 PK11_Encrypt()
  4746 ms  0x14e8 symkey:0x7f0d94d76d00
  4747 ms  0x14e8 PK11_Encrypt()
  4747 ms  0x14e8 symkey:0x7f0d94d76d00
  4747 ms  0x14e8 PK11_Encrypt()
  4747 ms  0x14e8 symkey:0x7f0d94d76d00
  4748 ms  0x14e8 PK11_Encrypt()
  4748 ms  0x14e8 symkey:0x7f0d94d76d00
           /* TID 0x14ff */
  4951 ms  0x14ff PR_Close()
  4951 ms  0x14ff fd:0x7f0d82abb4f0
           /* TID 0x14e8 */
  5025 ms  0x14e8 PK11_Encrypt()
  5025 ms  0x14e8 symkey:0x7f0d94d76d00
  5026 ms  0x14e8 PK11_Encrypt()
  5026 ms  0x14e8 symkey:0x7f0d94d76d00
  5026 ms  0x14e8 PK11_Encrypt()
  5026 ms  0x14e8 symkey:0x7f0d94d76d00
  5029 ms  0x14e8 PK11_Encrypt()
  5029 ms  0x14e8 symkey:0x7f0d94d76d00
  5029 ms  0x14e8 PK11_Encrypt()
  5029 ms  0x14e8 symkey:0x7f0d94d76d00
           /* TID 0x14f0 */
  5031 ms  0x14f0 PR_Close()
  5031 ms  0x14f0 fd:0x7f0d94825490
           /* TID 0x14e8 */
  5034 ms  0x14e8 PK11_Encrypt()
  5034 ms  0x14e8 symkey:0x7f0d94d76d00
  5035 ms  0x14e8 PK11_Encrypt()
  5035 ms  0x14e8 symkey:0x7f0d94d76d00
           /* TID 0x14f0 */
  5037 ms  0x14f0 PR_Close()
  5037 ms  0x14f0 fd:0x7f0d827b6e80
           /* TID 0x14e8 */
  5037 ms  0x14e8 SSL_ImportFD()
  5037 ms  0x14e8 ret:0x7f0d948a65e0
  5037 ms  0x14e8 SSL_AuthCertificateHook()
  5037 ms  0x14e8 fd:0x7f0d948a65e0
  5037 ms  0x14e8 ret:0x0
  5037 ms  0x14e8 PR_Connect()
  5037 ms  0x14e8 fd:0x7f0d948a65e0
           /* TID 0x14f0 */
  5039 ms  0x14f0 PR_Close()
  5039 ms  0x14f0 fd:0x7f0d94825ca0
           /* TID 0x14e8 */
  5040 ms  0x14e8 PK11_Encrypt()
  5040 ms  0x14e8 symkey:0x7f0d94d76d00
  5040 ms  0x14e8 PK11_Encrypt()
  5040 ms  0x14e8 symkey:0x7f0d94d76d00
  5041 ms  0x14e8 PK11_Encrypt()
  5041 ms  0x14e8 symkey:0x7f0d94d76d00
           /* TID 0x14f0 */
  5042 ms  0x14f0 PR_Close()
  5042 ms  0x14f0 fd:0x7f0d94825ca0
           /* TID 0x14e8 */
  5043 ms  0x14e8 PK11_Encrypt()
  5043 ms  0x14e8 symkey:0x7f0d94d76d00
  5043 ms  0x14e8 PK11_Encrypt()
  5043 ms  0x14e8 symkey:0x7f0d94d76d00
  5043 ms  0x14e8 PK11_Encrypt()
  5043 ms  0x14e8 symkey:0x7f0d94d76d00
           /* TID 0x14f0 */
  5044 ms  0x14f0 PR_Close()
  5044 ms  0x14f0 fd:0x7f0d94825ca0
           /* TID 0x14e8 */
  5044 ms  0x14e8 PK11_Encrypt()
  5044 ms  0x14e8 symkey:0x7f0d94d76d00
  5044 ms  0x14e8 PK11_Encrypt()
  5044 ms  0x14e8 symkey:0x7f0d94d76d00
  5044 ms  0x14e8 PK11_Encrypt()
  5044 ms  0x14e8 symkey:0x7f0d94d76d00
           /* TID 0x14f0 */
  5045 ms  0x14f0 PR_Close()
  5045 ms  0x14f0 fd:0x7f0d94825ca0
           /* TID 0x14e8 */
  5047 ms  0x14e8 PK11_Encrypt()
  5047 ms  0x14e8 symkey:0x7f0d94d76d00
  5047 ms  0x14e8 PK11_Encrypt()
  5047 ms  0x14e8 symkey:0x7f0d94d76d00
  5047 ms  0x14e8 PK11_Encrypt()
  5047 ms  0x14e8 symkey:0x7f0d94d76d00
  5047 ms  0x14e8 PK11_Encrypt()
  5047 ms  0x14e8 symkey:0x7f0d94d76d00
  5048 ms  0x14e8 PK11_Encrypt()
  5048 ms  0x14e8 symkey:0x7f0d94d76d00
  5049 ms  0x14e8 PK11_Encrypt()
  5049 ms  0x14e8 symkey:0x7f0d94d76d00
           /* TID 0x14f0 */
  5049 ms  0x14f0 PR_Close()
  5049 ms  0x14f0 fd:0x7f0d948a6730
  5050 ms  0x14f0 PR_Close()
  5050 ms  0x14f0 fd:0x7f0d948a6730
  5053 ms  0x14f0 PR_Close()
  5053 ms  0x14f0 fd:0x7f0d948a6730
           /* TID 0x14e8 */
  5056 ms  0x14e8 PK11_Encrypt()
  5056 ms  0x14e8 symkey:0x7f0d94d76d00
           /* TID 0x14f0 */
  5057 ms  0x14f0 PR_Close()
  5057 ms  0x14f0 fd:0x7f0d948a6040
  5058 ms  0x14f0 PR_Close()
  5058 ms  0x14f0 fd:0x7f0d948a6040
  5060 ms  0x14f0 PR_Close()
  5060 ms  0x14f0 fd:0x7f0d827b6b50
  5061 ms  0x14f0 PR_Close()
  5061 ms  0x14f0 fd:0x7f0d827b6b50
           /* TID 0x14e8 */
  5074 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5074 ms  0x14e8 cx:0x7f0d82b17f88
  5074 ms     | 0x14e8 EC_ValidatePublicKey()
  5074 ms     | 0x14e8 ret:0x0
  5074 ms  0x14e8 ret:0x7f0d82bce020::7f0d82bce020  40 5c 7d 82                                      @\}.
  5074 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5074 ms  0x14e8 cx:0x7f0d82b17f88
  5075 ms     | 0x14e8 EC_ValidatePublicKey()
  5083 ms     | 0x14e8 ret:0x0
  5090 ms  0x14e8 ret:0x7f0d82bd0820::7f0d82bd0820  10 5a 7d 82                                      .Z}.
           /* TID 0x14f0 */
  5092 ms  0x14f0 PR_Close()
  5092 ms  0x14f0 fd:0x7f0d827b6ee0
           /* TID 0x14e8 */
  5128 ms  SECKEY_ECParamsToKeySize()
  5129 ms  0x14e8 ret:0x100
  5129 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5129 ms  0x14e8 cx:0x7f0d82b17f88
  5129 ms     | 0x14e8 EC_ValidatePublicKey()
  5131 ms     | 0x14e8 ret:0x0
  5131 ms  0x14e8 ret:0x7f0d82731020::7f0d82731020  30 bd 99 82                                      0...
           /* TID 0x154e */
  5131 ms  0x154e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5131 ms  0x154e ret:0x0
           /* TID 0x14e8 */
  5132 ms  0x14e8 PK11_PubDeriveWithKDF()
  5132 ms  0x14e8 seckey:0x7f0d82731020
  5132 ms     | 0x14e8 EC_ValidatePublicKey()
  5134 ms     | 0x14e8 ret:0x0
  5141 ms  0x14e8 ret:0x7f0d956fef80
  5141 ms  0x14e8 PK11_DeriveWithFlags()
  5141 ms  0x14e8 basekey:0x7f0d956fef80
  5141 ms     | 0x14e8 PK11_DeriveWithTemplate()
  5141 ms  0x14e8 ret:0x7f0d82ad2880
  5141 ms  0x14e8 PK11_Derive()
  5141 ms  0x14e8 basekey:0x7f0d82ad2880
  5141 ms     | 0x14e8 PK11_DeriveWithTemplate()
  5141 ms  0x14e8 ret:0x7f0d82ad2900
  5141 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5141 ms  0x14e8 privk:0x7f0d82731020::7f0d82731020  30 bd 99 82                                      0...
  5141 ms  0x14e8 privk:0x7f0d82731020::7f0d82731020  e5 e5 e5 e5                                      ....
  5141 ms  0x14e8 PK11_Encrypt()
  5141 ms  0x14e8 symkey:0x7f0d82ad2a80
  5141 ms  0x14e8 SSL_AuthCertificateComplete()
  5141 ms  0x14e8 fd:0x7f0d948a65e0
  5141 ms  0x14e8 err:0x0
  5150 ms  0x14e8 PK11_Encrypt()
  5150 ms  0x14e8 symkey:0x7f0d82ad2a80
  5150 ms  0x14e8 PK11_Encrypt()
  5150 ms  0x14e8 symkey:0x7f0d82ad2a80
  5169 ms  0x14e8 SSL_ImportFD()
  5169 ms  0x14e8 ret:0x7f0d948a6e20
  5169 ms  0x14e8 SSL_AuthCertificateHook()
  5169 ms  0x14e8 fd:0x7f0d948a6e20
  5169 ms  0x14e8 ret:0x0
  5169 ms  0x14e8 PR_Connect()
  5169 ms  0x14e8 fd:0x7f0d948a6e20
           /* TID 0x14f0 */
  5175 ms  0x14f0 PR_Close()
  5175 ms  0x14f0 fd:0x7f0d827b6b20
           /* TID 0x14e8 */
  5178 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5178 ms  0x14e8 privk:0x7f0d82bd0820::7f0d82bd0820  10 5a 7d 82                                      .Z}.
  5178 ms  0x14e8 privk:0x7f0d82bd0820::7f0d82bd0820  e5 e5 e5 e5                                      ....
  5178 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5178 ms  0x14e8 privk:0x7f0d82bce020::7f0d82bce020  40 5c 7d 82                                      @\}.
  5178 ms  0x14e8 privk:0x7f0d82bce020::7f0d82bce020  e5 e5 e5 e5                                      ....
           /* TID 0x14f0 */
  5181 ms  0x14f0 PR_Close()
  5181 ms  0x14f0 fd:0x7f0d827b6b20
           /* TID 0x14e8 */
  5205 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5205 ms  0x14e8 cx:0x7f0d82b18468
  5206 ms     | 0x14e8 EC_ValidatePublicKey()
  5206 ms     | 0x14e8 ret:0x0
  5206 ms  0x14e8 ret:0x7f0d82667820::7f0d82667820  40 5c 7d 82                                      @\}.
  5206 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5206 ms  0x14e8 cx:0x7f0d82b18468
  5206 ms     | 0x14e8 EC_ValidatePublicKey()
  5208 ms     | 0x14e8 ret:0x0
  5208 ms  0x14e8 ret:0x7f0d82669820::7f0d82669820  10 5f 7d 82                                      ._}.
  5214 ms  0x14e8 PK11_Encrypt()
  5214 ms  0x14e8 symkey:0x7f0d82ad2a80
           /* TID 0x14f0 */
  5216 ms  0x14f0 PR_Close()
  5216 ms  0x14f0 fd:0x7f0d827b6f40
           /* TID 0x14e8 */
  5221 ms  0x14e8 SSL_ImportFD()
  5221 ms  0x14e8 ret:0x7f0d9e1e8310
  5221 ms  0x14e8 SSL_AuthCertificateHook()
  5221 ms  0x14e8 fd:0x7f0d9e1e8310
  5221 ms  0x14e8 ret:0x0
  5221 ms  0x14e8 PK11_Encrypt()
  5221 ms  0x14e8 symkey:0x7f0d82ad2a80
  5222 ms  0x14e8 PR_Connect()
  5222 ms  0x14e8 fd:0x7f0d9e1e8310
           /* TID 0x154e */
  5246 ms  0x154e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5247 ms  0x154e ret:0x0
           /* TID 0x14e8 */
  5247 ms  SECKEY_ECParamsToKeySize()
  5247 ms  0x14e8 ret:0x100
  5247 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5247 ms  0x14e8 cx:0x7f0d82b18468
  5247 ms     | 0x14e8 EC_ValidatePublicKey()
  5249 ms     | 0x14e8 ret:0x0
  5249 ms  0x14e8 ret:0x7f0d82670820::7f0d82670820  60 bf 99 82                                      `...
  5249 ms  0x14e8 PK11_PubDeriveWithKDF()
  5249 ms  0x14e8 seckey:0x7f0d82670820
  5249 ms     | 0x14e8 EC_ValidatePublicKey()
  5251 ms     | 0x14e8 ret:0x0
  5252 ms  0x14e8 ret:0x7f0d956fef80
  5252 ms  0x14e8 PK11_DeriveWithFlags()
  5252 ms  0x14e8 basekey:0x7f0d956fef80
  5252 ms     | 0x14e8 PK11_DeriveWithTemplate()
  5252 ms  0x14e8 ret:0x7f0d82ad2d00
  5252 ms  0x14e8 PK11_Derive()
  5252 ms  0x14e8 basekey:0x7f0d82ad2d00
  5252 ms     | 0x14e8 PK11_DeriveWithTemplate()
  5252 ms  0x14e8 ret:0x7f0d82ad2d80
  5252 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5252 ms  0x14e8 privk:0x7f0d82670820::7f0d82670820  60 bf 99 82                                      `...
  5253 ms  0x14e8 privk:0x7f0d82670820::7f0d82670820  e5 e5 e5 e5                                      ....
  5253 ms  0x14e8 PK11_Encrypt()
  5253 ms  0x14e8 symkey:0x7f0d82ad2f00
  5253 ms  0x14e8 SSL_AuthCertificateComplete()
  5253 ms  0x14e8 fd:0x7f0d948a6e20
  5253 ms  0x14e8 err:0x0
  5253 ms  0x14e8 PK11_Encrypt()
  5253 ms  0x14e8 symkey:0x7f0d82ad2f00
           /* TID 0x14f0 */
  5262 ms  0x14f0 PR_Close()
  5262 ms  0x14f0 fd:0x7f0d94bba670
  5268 ms  0x14f0 PR_Close()
  5268 ms  0x14f0 fd:0x7f0d948254c0
           /* TID 0x14e8 */
  5269 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5269 ms  0x14e8 cx:0x7f0d82b18608
  5269 ms     | 0x14e8 EC_ValidatePublicKey()
  5269 ms     | 0x14e8 ret:0x0
  5269 ms  0x14e8 ret:0x7f0d82671020::7f0d82671020  c0 b9 99 82                                      ....
  5269 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5269 ms  0x14e8 cx:0x7f0d82b18608
  5270 ms     | 0x14e8 EC_ValidatePublicKey()
  5272 ms     | 0x14e8 ret:0x0
  5272 ms  0x14e8 ret:0x7f0d82673020::7f0d82673020  10 bf 99 82                                      ....
  5290 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5290 ms  0x14e8 privk:0x7f0d82669820::7f0d82669820  10 5f 7d 82                                      ._}.
  5290 ms  0x14e8 privk:0x7f0d82669820::7f0d82669820  e5 e5 e5 e5                                      ....
  5290 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5290 ms  0x14e8 privk:0x7f0d82667820::7f0d82667820  40 5c 7d 82                                      @\}.
  5290 ms  0x14e8 privk:0x7f0d82667820::7f0d82667820  e5 e5 e5 e5                                      ....
           /* TID 0x154e */
  5311 ms  0x154e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5311 ms  0x154e ret:0x0
           /* TID 0x14e8 */
  5312 ms  SECKEY_ECParamsToKeySize()
  5312 ms  0x14e8 ret:0x100
  5312 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5312 ms  0x14e8 cx:0x7f0d82b18608
  5313 ms     | 0x14e8 EC_ValidatePublicKey()
  5315 ms     | 0x14e8 ret:0x0
  5315 ms  0x14e8 ret:0x7f0d82668820::7f0d82668820  c0 5e 7d 82                                      .^}.
  5315 ms  0x14e8 PK11_PubDeriveWithKDF()
  5315 ms  0x14e8 seckey:0x7f0d82668820
  5315 ms     | 0x14e8 EC_ValidatePublicKey()
  5317 ms     | 0x14e8 ret:0x0
  5319 ms  0x14e8 ret:0x7f0d956fef80
  5319 ms  0x14e8 PK11_DeriveWithFlags()
  5319 ms  0x14e8 basekey:0x7f0d956fef80
  5319 ms     | 0x14e8 PK11_DeriveWithTemplate()
  5319 ms  0x14e8 ret:0x7f0d82634100
  5319 ms  0x14e8 PK11_Derive()
  5319 ms  0x14e8 basekey:0x7f0d82634100
  5319 ms     | 0x14e8 PK11_DeriveWithTemplate()
  5319 ms  0x14e8 ret:0x7f0d82a4c300
  5319 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5319 ms  0x14e8 privk:0x7f0d82668820::7f0d82668820  c0 5e 7d 82                                      .^}.
  5319 ms  0x14e8 privk:0x7f0d82668820::7f0d82668820  e5 e5 e5 e5                                      ....
  5319 ms  0x14e8 PK11_Encrypt()
  5319 ms  0x14e8 symkey:0x7f0d82ad3000
  5322 ms  0x14e8 SSL_AuthCertificateComplete()
  5322 ms  0x14e8 fd:0x7f0d9e1e8310
  5322 ms  0x14e8 err:0x0
           /* TID 0x14f0 */
  5328 ms  0x14f0 PR_Close()
  5328 ms  0x14f0 fd:0x7f0d94bba670
  5338 ms  0x14f0 PR_Close()
  5338 ms  0x14f0 fd:0x7f0d948255b0
           /* TID 0x14e8 */
  5352 ms  0x14e8 SSL_ImportFD()
  5352 ms  0x14e8 ret:0x7f0d948a6d60
  5352 ms  0x14e8 SSL_AuthCertificateHook()
  5352 ms  0x14e8 fd:0x7f0d948a6d60
  5352 ms  0x14e8 ret:0x0
  5352 ms  0x14e8 PR_Connect()
  5352 ms  0x14e8 fd:0x7f0d948a6d60
  5356 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5356 ms  0x14e8 privk:0x7f0d82673020::7f0d82673020  10 bf 99 82                                      ....
  5357 ms  0x14e8 privk:0x7f0d82673020::7f0d82673020  e5 e5 e5 e5                                      ....
  5357 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5357 ms  0x14e8 privk:0x7f0d82671020::7f0d82671020  c0 b9 99 82                                      ....
  5357 ms  0x14e8 privk:0x7f0d82671020::7f0d82671020  e5 e5 e5 e5                                      ....
  5365 ms  0x14e8 SSL_ImportFD()
  5365 ms  0x14e8 ret:0x7f0d9e1e8af0
  5365 ms  0x14e8 SSL_AuthCertificateHook()
  5365 ms  0x14e8 fd:0x7f0d9e1e8af0
  5365 ms  0x14e8 ret:0x0
  5365 ms  0x14e8 PR_Connect()
  5365 ms  0x14e8 fd:0x7f0d9e1e8af0
           /* TID 0x14f0 */
  5373 ms  0x14f0 PR_Close()
  5373 ms  0x14f0 fd:0x7f0d94825550
           /* TID 0x14e8 */
  5377 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5377 ms  0x14e8 cx:0x7f0d82b18ae8
  5378 ms     | 0x14e8 EC_ValidatePublicKey()
  5378 ms     | 0x14e8 ret:0x0
  5378 ms  0x14e8 ret:0x7f0d82669820::7f0d82669820  40 bc 99 82                                      @...
  5378 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5378 ms  0x14e8 cx:0x7f0d82b18ae8
  5379 ms     | 0x14e8 EC_ValidatePublicKey()
  5380 ms     | 0x14e8 ret:0x0
  5380 ms  0x14e8 ret:0x7f0d82670820::7f0d82670820  40 62 a1 82                                      @b..
  5395 ms  0x14e8 PK11_Encrypt()
  5395 ms  0x14e8 symkey:0x7f0d82ad2a80
  5396 ms  0x14e8 PK11_Encrypt()
  5396 ms  0x14e8 symkey:0x7f0d94d76d00
  5399 ms  0x14e8 PK11_Encrypt()
  5399 ms  0x14e8 symkey:0x7f0d82ad2a80
  5402 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5402 ms  0x14e8 cx:0x7f0d82b18c88
  5402 ms     | 0x14e8 EC_ValidatePublicKey()
  5402 ms     | 0x14e8 ret:0x0
  5402 ms  0x14e8 ret:0x7f0d82676020::7f0d82676020  f0 66 a1 82                                      .f..
  5402 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5402 ms  0x14e8 cx:0x7f0d82b18c88
  5403 ms     | 0x14e8 EC_ValidatePublicKey()
  5404 ms     | 0x14e8 ret:0x0
  5404 ms  0x14e8 ret:0x7f0d82678020::7f0d82678020  70 69 a1 82                                      pi..
  5405 ms  0x14e8 PK11_Encrypt()
  5405 ms  0x14e8 symkey:0x7f0d82ad2a80
  5408 ms  0x14e8 PK11_Encrypt()
  5408 ms  0x14e8 symkey:0x7f0d82ad2a80
  5431 ms  SECKEY_ECParamsToKeySize()
  5431 ms  0x14e8 ret:0x100
  5431 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5431 ms  0x14e8 cx:0x7f0d82b18ae8
  5431 ms     | 0x14e8 EC_ValidatePublicKey()
  5433 ms     | 0x14e8 ret:0x0
  5433 ms  0x14e8 ret:0x7f0d82682020::7f0d82682020  90 67 be 82                                      .g..
  5433 ms  0x14e8 PK11_PubDeriveWithKDF()
  5433 ms  0x14e8 seckey:0x7f0d82682020
  5433 ms     | 0x14e8 EC_ValidatePublicKey()
           /* TID 0x154e */
  5434 ms  0x154e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5434 ms  0x154e ret:0x0
           /* TID 0x14e8 */
  5442 ms     | 0x14e8 ret:0x0
  5443 ms  0x14e8 ret:0x7f0d956fef80
  5443 ms  0x14e8 PK11_DeriveWithFlags()
  5443 ms  0x14e8 basekey:0x7f0d956fef80
  5443 ms     | 0x14e8 PK11_DeriveWithTemplate()
  5443 ms  0x14e8 ret:0x7f0d82734480
  5443 ms  0x14e8 PK11_Derive()
  5443 ms  0x14e8 basekey:0x7f0d82734480
  5443 ms     | 0x14e8 PK11_DeriveWithTemplate()
  5443 ms  0x14e8 ret:0x7f0d82734500
  5444 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5444 ms  0x14e8 privk:0x7f0d82682020::7f0d82682020  90 67 be 82                                      .g..
  5444 ms  0x14e8 privk:0x7f0d82682020::7f0d82682020  e5 e5 e5 e5                                      ....
  5444 ms  0x14e8 PK11_Encrypt()
  5444 ms  0x14e8 symkey:0x7f0d82734680
  5444 ms  0x14e8 SSL_AuthCertificateComplete()
  5444 ms  0x14e8 fd:0x7f0d948a6d60
  5444 ms  0x14e8 err:0x0
  5446 ms  0x14e8 PK11_Encrypt()
  5446 ms  0x14e8 symkey:0x7f0d82734680
  5449 ms  0x14e8 PK11_Encrypt()
  5449 ms  0x14e8 symkey:0x7f0d82734680
           /* TID 0x154e */
  5450 ms  0x154e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5451 ms  0x154e ret:0x0
           /* TID 0x14e8 */
  5452 ms  SECKEY_ECParamsToKeySize()
  5452 ms  0x14e8 ret:0x100
  5452 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5452 ms  0x14e8 cx:0x7f0d82b18c88
  5452 ms     | 0x14e8 EC_ValidatePublicKey()
  5455 ms     | 0x14e8 ret:0x0
  5457 ms  0x14e8 ret:0x7f0d82bd0820::7f0d82bd0820  c0 24 78 82                                      .$x.
  5457 ms  0x14e8 PK11_PubDeriveWithKDF()
  5457 ms  0x14e8 seckey:0x7f0d82bd0820
  5457 ms     | 0x14e8 EC_ValidatePublicKey()
  5459 ms     | 0x14e8 ret:0x0
  5460 ms  0x14e8 ret:0x7f0d956fef80
  5460 ms  0x14e8 PK11_DeriveWithFlags()
  5460 ms  0x14e8 basekey:0x7f0d956fef80
  5460 ms     | 0x14e8 PK11_DeriveWithTemplate()
  5460 ms  0x14e8 ret:0x7f0d82734a80
  5464 ms  0x14e8 PK11_Derive()
  5464 ms  0x14e8 basekey:0x7f0d82734a80
  5464 ms     | 0x14e8 PK11_DeriveWithTemplate()
  5464 ms  0x14e8 ret:0x7f0d82734b00
  5464 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5464 ms  0x14e8 privk:0x7f0d82bd0820::7f0d82bd0820  c0 24 78 82                                      .$x.
  5464 ms  0x14e8 privk:0x7f0d82bd0820::7f0d82bd0820  e5 e5 e5 e5                                      ....
  5464 ms  0x14e8 PK11_Encrypt()
  5464 ms  0x14e8 symkey:0x7f0d82734c80
  5465 ms  0x14e8 SSL_ImportFD()
  5465 ms  0x14e8 ret:0x7f0d9e7a1a30
  5465 ms  0x14e8 SSL_AuthCertificateHook()
  5465 ms  0x14e8 fd:0x7f0d9e7a1a30
  5465 ms  0x14e8 ret:0x0
  5465 ms  0x14e8 PR_Connect()
  5465 ms  0x14e8 fd:0x7f0d9e7a1a30
  5465 ms  0x14e8 SSL_AuthCertificateComplete()
  5465 ms  0x14e8 fd:0x7f0d9e1e8af0
  5465 ms  0x14e8 err:0x0
           /* TID 0x14f0 */
  5476 ms  0x14f0 PR_Close()
  5476 ms  0x14f0 fd:0x7f0d995f54f0
  5479 ms  0x14f0 PR_Close()
  5479 ms  0x14f0 fd:0x7f0d995f54f0
           /* TID 0x14e8 */
  5486 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5486 ms  0x14e8 privk:0x7f0d82670820::7f0d82670820  40 62 a1 82                                      @b..
  5486 ms  0x14e8 privk:0x7f0d82670820::7f0d82670820  e5 e5 e5 e5                                      ....
  5486 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5486 ms  0x14e8 privk:0x7f0d82669820::7f0d82669820  40 bc 99 82                                      @...
  5486 ms  0x14e8 privk:0x7f0d82669820::7f0d82669820  e5 e5 e5 e5                                      ....
  5486 ms  0x14e8 PK11_Encrypt()
  5486 ms  0x14e8 symkey:0x7f0d82734680
  5487 ms  0x14e8 PK11_Encrypt()
  5487 ms  0x14e8 symkey:0x7f0d82734c80
  5487 ms  0x14e8 PK11_Encrypt()
  5487 ms  0x14e8 symkey:0x7f0d82734c80
           /* TID 0x14f0 */
  5502 ms  0x14f0 PR_Close()
  5502 ms  0x14f0 fd:0x7f0d99b676d0
           /* TID 0x14e8 */
  5502 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5502 ms  0x14e8 privk:0x7f0d82678020::7f0d82678020  70 69 a1 82                                      pi..
  5502 ms  0x14e8 privk:0x7f0d82678020::7f0d82678020  e5 e5 e5 e5                                      ....
  5502 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5502 ms  0x14e8 privk:0x7f0d82676020::7f0d82676020  f0 66 a1 82                                      .f..
  5502 ms  0x14e8 privk:0x7f0d82676020::7f0d82676020  e5 e5 e5 e5                                      ....
           /* TID 0x14f0 */
  5518 ms  0x14f0 PR_Close()
  5518 ms  0x14f0 fd:0x7f0d9e1e8dc0
           /* TID 0x14e8 */
  5529 ms  0x14e8 PK11_Encrypt()
  5529 ms  0x14e8 symkey:0x7f0d94d76d00
  5530 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5530 ms  0x14e8 cx:0x7f0d82b19168
  5530 ms     | 0x14e8 EC_ValidatePublicKey()
  5530 ms     | 0x14e8 ret:0x0
  5531 ms  0x14e8 ret:0x7f0d82672820::7f0d82672820  00 2b 78 82                                      .+x.
  5531 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5531 ms  0x14e8 cx:0x7f0d82b19168
  5531 ms     | 0x14e8 EC_ValidatePublicKey()
  5533 ms     | 0x14e8 ret:0x0
  5533 ms  0x14e8 ret:0x7f0d82675820::7f0d82675820  e0 2c 78 82                                      .,x.
  5537 ms  0x14e8 PK11_Encrypt()
  5537 ms  0x14e8 symkey:0x7f0d82734c80
           /* TID 0x14f0 */
  5546 ms  0x14f0 PR_Close()
  5546 ms  0x14f0 fd:0x7f0d9e1e8d60
  5547 ms  0x14f0 PR_Close()
  5547 ms  0x14f0 fd:0x7f0d9e1e8d60
           /* TID 0x14e8 */
  5599 ms  SECKEY_ECParamsToKeySize()
  5599 ms  0x14e8 ret:0x100
  5599 ms  SECKEY_ECParamsToBasePointOrderLen()
  5599 ms  0x14e8 ret:0x100
  5599 ms  SECKEY_ECParamsToBasePointOrderLen()
  5599 ms  0x14e8 ret:0x100
  5599 ms  0x14e8 EC_ValidatePublicKey()
  5601 ms  0x14e8 ret:0x0
  5603 ms  SECKEY_ECParamsToKeySize()
  5603 ms  0x14e8 ret:0x100
  5603 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5603 ms  0x14e8 cx:0x7f0d82b19168
  5603 ms     | 0x14e8 EC_ValidatePublicKey()
  5605 ms     | 0x14e8 ret:0x0
  5605 ms  0x14e8 ret:0x7f0d82bd0820::7f0d82bd0820  70 9e 7b 82                                      p.{.
  5605 ms  0x14e8 PK11_PubDeriveWithKDF()
  5605 ms  0x14e8 seckey:0x7f0d82bd0820
  5605 ms     | 0x14e8 EC_ValidatePublicKey()
  5606 ms     | 0x14e8 ret:0x0
  5608 ms  0x14e8 ret:0x7f0d956fef80
  5608 ms  0x14e8 PK11_DeriveWithFlags()
  5608 ms  0x14e8 basekey:0x7f0d956fef80
  5608 ms     | 0x14e8 PK11_DeriveWithTemplate()
  5608 ms  0x14e8 ret:0x7f0d826e5780
  5608 ms  0x14e8 PK11_Derive()
  5608 ms  0x14e8 basekey:0x7f0d826e5780
  5608 ms     | 0x14e8 PK11_DeriveWithTemplate()
  5608 ms  0x14e8 ret:0x7f0d826e5800
  5608 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5608 ms  0x14e8 privk:0x7f0d82bd0820::7f0d82bd0820  70 9e 7b 82                                      p.{.
  5608 ms  0x14e8 privk:0x7f0d82bd0820::7f0d82bd0820  e5 e5 e5 e5                                      ....
  5608 ms  0x14e8 PK11_Encrypt()
  5608 ms  0x14e8 symkey:0x7f0d826e5980
           /* TID 0x154e */
  5609 ms  SECKEY_ECParamsToBasePointOrderLen()
  5609 ms  0x154e ret:0x180
  5609 ms  SECKEY_ECParamsToBasePointOrderLen()
  5609 ms  0x154e ret:0x180
  5609 ms  0x154e EC_ValidatePublicKey()
  5610 ms  0x154e ret:0x0
  5613 ms  0x154e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5613 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5613 ms     | 0x154e ret:0x180
  5613 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5613 ms     | 0x154e ret:0x180
  5613 ms     | 0x154e EC_ValidatePublicKey()
  5615 ms     | 0x154e ret:0x0
  5618 ms  0x154e ret:0x0
           /* TID 0x14e8 */
  5635 ms  0x14e8 SSL_AuthCertificateComplete()
  5635 ms  0x14e8 fd:0x7f0d9e7a1a30
  5635 ms  0x14e8 err:0x0
  5636 ms  0x14e8 PK11_Encrypt()
  5636 ms  0x14e8 symkey:0x7f0d826e5980
           /* TID 0x14f0 */
  5655 ms  0x14f0 PR_Close()
  5655 ms  0x14f0 fd:0x7f0d9e1e8550
  5658 ms  0x14f0 PR_Close()
  5658 ms  0x14f0 fd:0x7f0d9e1e8dc0
           /* TID 0x14e8 */
  5663 ms  0x14e8 PK11_Encrypt()
  5663 ms  0x14e8 symkey:0x7f0d94d76d00
  5673 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5673 ms  0x14e8 privk:0x7f0d82675820::7f0d82675820  e0 2c 78 82                                      .,x.
  5674 ms  0x14e8 privk:0x7f0d82675820::7f0d82675820  e5 e5 e5 e5                                      ....
  5674 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5674 ms  0x14e8 privk:0x7f0d82672820::7f0d82672820  00 2b 78 82                                      .+x.
  5674 ms  0x14e8 privk:0x7f0d82672820::7f0d82672820  e5 e5 e5 e5                                      ....
  5682 ms  0x14e8 PK11_Encrypt()
  5682 ms  0x14e8 symkey:0x7f0d94d76d00
  5704 ms  0x14e8 SSL_ImportFD()
  5704 ms  0x14e8 ret:0x7f0d9e7a1be0
  5704 ms  0x14e8 SSL_AuthCertificateHook()
  5704 ms  0x14e8 fd:0x7f0d9e7a1be0
  5704 ms  0x14e8 ret:0x0
  5704 ms  0x14e8 PR_Connect()
  5704 ms  0x14e8 fd:0x7f0d9e7a1be0
           /* TID 0x14f0 */
  5740 ms  0x14f0 PR_Close()
  5740 ms  0x14f0 fd:0x7f0d825d3040
           /* TID 0x14e8 */
  5763 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5763 ms  0x14e8 cx:0x7f0d82b194a8
  5763 ms     | 0x14e8 EC_ValidatePublicKey()
  5763 ms     | 0x14e8 ret:0x0
  5763 ms  0x14e8 ret:0x7f0d82bce020::7f0d82bce020  70 9e 7b 82                                      p.{.
  5763 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5763 ms  0x14e8 cx:0x7f0d82b194a8
  5764 ms     | 0x14e8 EC_ValidatePublicKey()
  5765 ms     | 0x14e8 ret:0x0
  5765 ms  0x14e8 ret:0x7f0d82bd0820::7f0d82bd0820  80 e3 98 82                                      ....
  5776 ms  0x14e8 SSL_ImportFD()
  5776 ms  0x14e8 ret:0x7f0d826c00a0
  5776 ms  0x14e8 SSL_AuthCertificateHook()
  5776 ms  0x14e8 fd:0x7f0d826c00a0
  5776 ms  0x14e8 ret:0x0
  5776 ms  0x14e8 PR_Connect()
  5776 ms  0x14e8 fd:0x7f0d826c00a0
           /* TID 0x14f0 */
  5782 ms  0x14f0 PR_Close()
  5782 ms  0x14f0 fd:0x7f0d826c0220
           /* TID 0x14e8 */
  5824 ms  0x14e8 SSL_ImportFD()
  5824 ms  0x14e8 ret:0x7f0d826c0310
  5824 ms  0x14e8 SSL_AuthCertificateHook()
  5824 ms  0x14e8 fd:0x7f0d826c0310
  5824 ms  0x14e8 ret:0x0
  5824 ms  0x14e8 PR_Connect()
  5824 ms  0x14e8 fd:0x7f0d826c0310
  5829 ms  SECKEY_ECParamsToKeySize()
  5829 ms  0x14e8 ret:0x100
  5829 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5829 ms  0x14e8 cx:0x7f0d82b194a8
  5830 ms     | 0x14e8 EC_ValidatePublicKey()
  5831 ms     | 0x14e8 ret:0x0
  5832 ms  0x14e8 ret:0x7f0d8250c020::7f0d8250c020  40 62 a1 82                                      @b..
  5832 ms  0x14e8 PK11_PubDeriveWithKDF()
  5832 ms  0x14e8 seckey:0x7f0d8250c020
  5832 ms     | 0x14e8 EC_ValidatePublicKey()
  5833 ms     | 0x14e8 ret:0x0
           /* TID 0x154e */
  5834 ms  0x154e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5834 ms  0x154e ret:0x0
           /* TID 0x14e8 */
  5841 ms  0x14e8 ret:0x7f0d956fef80
  5841 ms  0x14e8 PK11_DeriveWithFlags()
  5841 ms  0x14e8 basekey:0x7f0d956fef80
  5841 ms     | 0x14e8 PK11_DeriveWithTemplate()
  5841 ms  0x14e8 ret:0x7f0d826e5f00
  5841 ms  0x14e8 PK11_Derive()
  5841 ms  0x14e8 basekey:0x7f0d826e5f00
  5841 ms     | 0x14e8 PK11_DeriveWithTemplate()
  5841 ms  0x14e8 ret:0x7f0d826e6e80
  5841 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5841 ms  0x14e8 privk:0x7f0d8250c020::7f0d8250c020  40 62 a1 82                                      @b..
  5841 ms  0x14e8 privk:0x7f0d8250c020::7f0d8250c020  e5 e5 e5 e5                                      ....
  5841 ms  0x14e8 PK11_Encrypt()
  5841 ms  0x14e8 symkey:0x7f0d82733080
  5841 ms  0x14e8 SSL_AuthCertificateComplete()
  5841 ms  0x14e8 fd:0x7f0d9e7a1be0
  5841 ms  0x14e8 err:0x0
  5842 ms  0x14e8 PK11_Encrypt()
  5842 ms  0x14e8 symkey:0x7f0d82733080
  5842 ms  0x14e8 PK11_Encrypt()
  5842 ms  0x14e8 symkey:0x7f0d82733080
  5842 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5842 ms  0x14e8 cx:0x7f0d82b19648
  5843 ms     | 0x14e8 EC_ValidatePublicKey()
  5843 ms     | 0x14e8 ret:0x0
  5843 ms  0x14e8 ret:0x7f0d8250d820::7f0d8250d820  d0 bd 99 82                                      ....
  5843 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5843 ms  0x14e8 cx:0x7f0d82b19648
  5843 ms     | 0x14e8 EC_ValidatePublicKey()
  5845 ms     | 0x14e8 ret:0x0
  5845 ms  0x14e8 ret:0x7f0d82511020::7f0d82511020  90 62 a1 82                                      .b..
  5882 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5882 ms  0x14e8 cx:0x7f0d82b19988
  5884 ms     | 0x14e8 EC_ValidatePublicKey()
  5884 ms     | 0x14e8 ret:0x0
  5884 ms  0x14e8 ret:0x7f0d82513820::7f0d82513820  f0 66 a1 82                                      .f..
  5884 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5884 ms  0x14e8 cx:0x7f0d82b19988
  5887 ms     | 0x14e8 EC_ValidatePublicKey()
  5891 ms     | 0x14e8 ret:0x0
  5891 ms  0x14e8 ret:0x7f0d82515820::7f0d82515820  f0 6b a1 82                                      .k..
  5904 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5904 ms  0x14e8 privk:0x7f0d82bd0820::7f0d82bd0820  80 e3 98 82                                      ....
  5904 ms  0x14e8 privk:0x7f0d82bd0820::7f0d82bd0820  e5 e5 e5 e5                                      ....
  5904 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5904 ms  0x14e8 privk:0x7f0d82bce020::7f0d82bce020  70 9e 7b 82                                      p.{.
  5904 ms  0x14e8 privk:0x7f0d82bce020::7f0d82bce020  e5 e5 e5 e5                                      ....
  5907 ms  SECKEY_ECParamsToKeySize()
  5907 ms  0x14e8 ret:0x100
  5907 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5907 ms  0x14e8 cx:0x7f0d82b19648
  5908 ms     | 0x14e8 EC_ValidatePublicKey()
  5911 ms     | 0x14e8 ret:0x0
  5911 ms  0x14e8 ret:0x7f0d8251e020::7f0d8251e020  10 6f be 82                                      .o..
  5912 ms  0x14e8 PK11_PubDeriveWithKDF()
  5912 ms  0x14e8 seckey:0x7f0d8251e020
  5912 ms     | 0x14e8 EC_ValidatePublicKey()
  5915 ms     | 0x14e8 ret:0x0
  5917 ms  0x14e8 ret:0x7f0d956fef80
  5917 ms  0x14e8 PK11_DeriveWithFlags()
  5917 ms  0x14e8 basekey:0x7f0d956fef80
  5917 ms     | 0x14e8 PK11_DeriveWithTemplate()
  5917 ms  0x14e8 ret:0x7f0d82ad3480
  5917 ms  0x14e8 PK11_Derive()
  5917 ms  0x14e8 basekey:0x7f0d82ad3480
  5917 ms     | 0x14e8 PK11_DeriveWithTemplate()
  5917 ms  0x14e8 ret:0x7f0d82ad3780
  5917 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5917 ms  0x14e8 privk:0x7f0d8251e020::7f0d8251e020  10 6f be 82                                      .o..
  5917 ms  0x14e8 privk:0x7f0d8251e020::7f0d8251e020  e5 e5 e5 e5                                      ....
  5918 ms  0x14e8 PK11_Encrypt()
  5918 ms  0x14e8 symkey:0x7f0d82ad3c80
           /* TID 0x14f0 */
  5944 ms  0x14f0 PR_Close()
  5944 ms  0x14f0 fd:0x7f0d826c07f0
  5945 ms  0x14f0 PR_Close()
  5945 ms  0x14f0 fd:0x7f0d826c0040
           /* TID 0x154e */
  5945 ms  0x154e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5945 ms  0x154e ret:0x0
           /* TID 0x14e8 */
  5946 ms  0x14e8 SSL_AuthCertificateComplete()
  5946 ms  0x14e8 fd:0x7f0d826c00a0
  5946 ms  0x14e8 err:0x0
  5946 ms  0x14e8 PK11_Encrypt()
  5946 ms  0x14e8 symkey:0x7f0d82ad3c80
  5951 ms  SECKEY_ECParamsToKeySize()
  5951 ms  0x14e8 ret:0x100
  5951 ms  0x14e8 SECKEY_CreateECPrivateKey()
  5951 ms  0x14e8 cx:0x7f0d82b19988
  5952 ms     | 0x14e8 EC_ValidatePublicKey()
  5954 ms     | 0x14e8 ret:0x0
  5954 ms  0x14e8 ret:0x7f0d82521020::7f0d82521020  c0 6e be 82                                      .n..
  5954 ms  0x14e8 PK11_PubDeriveWithKDF()
  5954 ms  0x14e8 seckey:0x7f0d82521020
  5954 ms     | 0x14e8 EC_ValidatePublicKey()
  5961 ms     | 0x14e8 ret:0x0
  5962 ms  0x14e8 ret:0x7f0d956fef80
  5962 ms  0x14e8 PK11_DeriveWithFlags()
  5962 ms  0x14e8 basekey:0x7f0d956fef80
  5962 ms     | 0x14e8 PK11_DeriveWithTemplate()
  5962 ms  0x14e8 ret:0x7f0d8255d380
  5962 ms  0x14e8 PK11_Derive()
  5962 ms  0x14e8 basekey:0x7f0d8255d380
  5962 ms     | 0x14e8 PK11_DeriveWithTemplate()
  5962 ms  0x14e8 ret:0x7f0d8255d400
  5962 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5962 ms  0x14e8 privk:0x7f0d82521020::7f0d82521020  c0 6e be 82                                      .n..
  5963 ms  0x14e8 privk:0x7f0d82521020::7f0d82521020  e5 e5 e5 e5                                      ....
  5963 ms  0x14e8 PK11_Encrypt()
  5963 ms  0x14e8 symkey:0x7f0d8255d580
  5966 ms  0x14e8 PK11_Encrypt()
  5966 ms  0x14e8 symkey:0x7f0d82733080
  5967 ms  0x14e8 PK11_Encrypt()
  5967 ms  0x14e8 symkey:0x7f0d82ad2a80
  5975 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5975 ms  0x14e8 privk:0x7f0d82511020::7f0d82511020  90 62 a1 82                                      .b..
  5975 ms  0x14e8 privk:0x7f0d82511020::7f0d82511020  e5 e5 e5 e5                                      ....
  5975 ms  0x14e8 SECKEY_DestroyPrivateKey()
  5975 ms  0x14e8 privk:0x7f0d8250d820::7f0d8250d820  d0 bd 99 82                                      ....
  5975 ms  0x14e8 privk:0x7f0d8250d820::7f0d8250d820  e5 e5 e5 e5                                      ....
           /* TID 0x14f0 */
  5992 ms  0x14f0 PR_Close()
  5992 ms  0x14f0 fd:0x7f0d826c0190
           /* TID 0x154e */
  5992 ms  0x154e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5993 ms  0x154e ret:0x0
           /* TID 0x14e8 */
  5993 ms  0x14e8 SSL_AuthCertificateComplete()
  5993 ms  0x14e8 fd:0x7f0d826c0310
  5993 ms  0x14e8 err:0x0
  5993 ms  0x14e8 PK11_Encrypt()
  5993 ms  0x14e8 symkey:0x7f0d8255d580
           /* TID 0x14f0 */
  6011 ms  0x14f0 PR_Close()
  6011 ms  0x14f0 fd:0x7f0d826c0250
           /* TID 0x14e8 */
  6021 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6021 ms  0x14e8 privk:0x7f0d82515820::7f0d82515820  f0 6b a1 82                                      .k..
  6021 ms  0x14e8 privk:0x7f0d82515820::7f0d82515820  e5 e5 e5 e5                                      ....
  6021 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6021 ms  0x14e8 privk:0x7f0d82513820::7f0d82513820  f0 66 a1 82                                      .f..
  6021 ms  0x14e8 privk:0x7f0d82513820::7f0d82513820  e5 e5 e5 e5                                      ....
  6039 ms  0x14e8 PK11_Encrypt()
  6039 ms  0x14e8 symkey:0x7f0d82ad3c80
           /* TID 0x14f0 */
  6075 ms  0x14f0 PR_Close()
  6075 ms  0x14f0 fd:0x7f0d826c09a0
           /* TID 0x14e8 */
  6114 ms  0x14e8 SSL_ImportFD()
  6114 ms  0x14e8 ret:0x7f0d826c0dc0
  6114 ms  0x14e8 SSL_AuthCertificateHook()
  6114 ms  0x14e8 fd:0x7f0d826c0dc0
  6114 ms  0x14e8 ret:0x0
  6114 ms  0x14e8 PR_Connect()
  6114 ms  0x14e8 fd:0x7f0d826c0dc0
  6172 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6172 ms  0x14e8 cx:0x7f0d82b19e68
  6173 ms     | 0x14e8 EC_ValidatePublicKey()
  6173 ms     | 0x14e8 ret:0x0
  6173 ms  0x14e8 ret:0x7f0d82514820::7f0d82514820  60 ba 68 82                                      `.h.
  6173 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6173 ms  0x14e8 cx:0x7f0d82b19e68
  6174 ms     | 0x14e8 EC_ValidatePublicKey()
  6176 ms     | 0x14e8 ret:0x0
  6176 ms  0x14e8 ret:0x7f0d8251f020::7f0d8251f020  40 bc 68 82                                      @.h.
  6233 ms  0x14e8 PK11_Encrypt()
  6233 ms  0x14e8 symkey:0x7f0d94d76d00
  6235 ms  0x14e8 PK11_Encrypt()
  6235 ms  0x14e8 symkey:0x7f0d94d76d00
  6236 ms  0x14e8 PK11_Encrypt()
  6236 ms  0x14e8 symkey:0x7f0d94d76d00
  6237 ms  SECKEY_ECParamsToKeySize()
  6237 ms  0x14e8 ret:0x100
  6237 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6237 ms  0x14e8 cx:0x7f0d82b19e68
  6238 ms     | 0x14e8 EC_ValidatePublicKey()
  6240 ms     | 0x14e8 ret:0x0
           /* TID 0x154e */
  6240 ms  0x154e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6240 ms  0x154e ret:0x0
           /* TID 0x14e8 */
  6240 ms  0x14e8 ret:0x7f0d8232e020::7f0d8232e020  a0 5b 7d 82                                      .[}.
  6241 ms  0x14e8 PK11_PubDeriveWithKDF()
  6241 ms  0x14e8 seckey:0x7f0d8232e020
  6241 ms     | 0x14e8 EC_ValidatePublicKey()
  6242 ms     | 0x14e8 ret:0x0
  6243 ms  0x14e8 ret:0x7f0d956fef80
  6243 ms  0x14e8 PK11_DeriveWithFlags()
  6243 ms  0x14e8 basekey:0x7f0d956fef80
  6244 ms     | 0x14e8 PK11_DeriveWithTemplate()
  6244 ms  0x14e8 ret:0x7f0d826e6280
  6244 ms  0x14e8 PK11_Derive()
  6244 ms  0x14e8 basekey:0x7f0d826e6280
  6244 ms     | 0x14e8 PK11_DeriveWithTemplate()
  6244 ms  0x14e8 ret:0x7f0d826e6300
  6244 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6244 ms  0x14e8 privk:0x7f0d8232e020::7f0d8232e020  a0 5b 7d 82                                      .[}.
  6244 ms  0x14e8 privk:0x7f0d8232e020::7f0d8232e020  e5 e5 e5 e5                                      ....
  6244 ms  0x14e8 PK11_Encrypt()
  6244 ms  0x14e8 symkey:0x7f0d82733300
  6251 ms  0x14e8 SSL_AuthCertificateComplete()
  6251 ms  0x14e8 fd:0x7f0d826c0dc0
  6251 ms  0x14e8 err:0x0
  6251 ms  0x14e8 PK11_Encrypt()
  6251 ms  0x14e8 symkey:0x7f0d82733300
  6258 ms  0x14e8 SSL_ImportFD()
  6258 ms  0x14e8 ret:0x7f0d82a61340
  6258 ms  0x14e8 SSL_AuthCertificateHook()
  6258 ms  0x14e8 fd:0x7f0d82a61340
  6258 ms  0x14e8 ret:0x0
  6258 ms  0x14e8 PR_Connect()
  6258 ms  0x14e8 fd:0x7f0d82a61340
           /* TID 0x14f0 */
  6298 ms  0x14f0 PR_Close()
  6298 ms  0x14f0 fd:0x7f0d826c03d0
           /* TID 0x14e8 */
  6302 ms  0x14e8 SSL_ImportFD()
  6302 ms  0x14e8 ret:0x7f0d826c0ca0
  6302 ms  0x14e8 SSL_AuthCertificateHook()
  6302 ms  0x14e8 fd:0x7f0d826c0ca0
  6302 ms  0x14e8 ret:0x0
  6302 ms  0x14e8 PR_Connect()
  6302 ms  0x14e8 fd:0x7f0d826c0ca0
  6302 ms  0x14e8 SSL_ImportFD()
  6302 ms  0x14e8 ret:0x7f0d826c0820
  6302 ms  0x14e8 SSL_AuthCertificateHook()
  6302 ms  0x14e8 fd:0x7f0d826c0820
  6302 ms  0x14e8 ret:0x0
  6302 ms  0x14e8 PR_Connect()
  6302 ms  0x14e8 fd:0x7f0d826c0820
  6304 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6304 ms  0x14e8 privk:0x7f0d8251f020::7f0d8251f020  40 bc 68 82                                      @.h.
  6304 ms  0x14e8 privk:0x7f0d8251f020::7f0d8251f020  e5 e5 e5 e5                                      ....
  6304 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6304 ms  0x14e8 privk:0x7f0d82514820::7f0d82514820  60 ba 68 82                                      `.h.
  6304 ms  0x14e8 privk:0x7f0d82514820::7f0d82514820  e5 e5 e5 e5                                      ....
  6315 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6315 ms  0x14e8 cx:0x7f0d82543248
  6316 ms     | 0x14e8 EC_ValidatePublicKey()
  6316 ms     | 0x14e8 ret:0x0
  6316 ms  0x14e8 ret:0x7f0d82335020::7f0d82335020  00 bb 68 82                                      ..h.
  6316 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6316 ms  0x14e8 cx:0x7f0d82543248
  6316 ms     | 0x14e8 EC_ValidatePublicKey()
  6318 ms     | 0x14e8 ret:0x0
  6318 ms  0x14e8 ret:0x7f0d82337020::7f0d82337020  90 bc 99 82                                      ....
  6319 ms  0x14e8 SSL_ImportFD()
  6319 ms  0x14e8 ret:0x7f0d826c0fd0
  6319 ms  0x14e8 SSL_AuthCertificateHook()
  6319 ms  0x14e8 fd:0x7f0d826c0fd0
  6319 ms  0x14e8 ret:0x0
  6319 ms  0x14e8 PR_Connect()
  6319 ms  0x14e8 fd:0x7f0d826c0fd0
  6327 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6327 ms  0x14e8 cx:0x7f0d825433e8
  6328 ms     | 0x14e8 EC_ValidatePublicKey()
  6328 ms     | 0x14e8 ret:0x0
  6328 ms  0x14e8 ret:0x7f0d82339820::7f0d82339820  c0 be 99 82                                      ....
  6328 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6328 ms  0x14e8 cx:0x7f0d825433e8
  6328 ms     | 0x14e8 EC_ValidatePublicKey()
  6330 ms     | 0x14e8 ret:0x0
  6330 ms  0x14e8 ret:0x7f0d8233b820::7f0d8233b820  e0 bc 99 82                                      ....
  6330 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6330 ms  0x14e8 cx:0x7f0d82543588
  6331 ms     | 0x14e8 EC_ValidatePublicKey()
  6331 ms     | 0x14e8 ret:0x0
  6331 ms  0x14e8 ret:0x7f0d8233e020::7f0d8233e020  f0 66 a1 82                                      .f..
  6331 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6331 ms  0x14e8 cx:0x7f0d82543588
  6331 ms     | 0x14e8 EC_ValidatePublicKey()
  6333 ms     | 0x14e8 ret:0x0
  6333 ms  0x14e8 ret:0x7f0d82340020::7f0d82340020  00 6b a1 82                                      .k..
  6356 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6356 ms  0x14e8 cx:0x7f0d82543728
  6356 ms     | 0x14e8 EC_ValidatePublicKey()
  6356 ms     | 0x14e8 ret:0x0
  6356 ms  0x14e8 ret:0x7f0d82342820::7f0d82342820  10 25 aa 82                                      .%..
  6356 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6356 ms  0x14e8 cx:0x7f0d82543728
  6357 ms     | 0x14e8 EC_ValidatePublicKey()
  6359 ms     | 0x14e8 ret:0x0
  6359 ms  0x14e8 ret:0x7f0d82344820::7f0d82344820  c0 6e be 82                                      .n..
           /* TID 0x14f0 */
  6370 ms  0x14f0 PR_Close()
  6370 ms  0x14f0 fd:0x7f0d82a612b0
           /* TID 0x14e8 */
  6377 ms  SECKEY_ECParamsToKeySize()
  6377 ms  0x14e8 ret:0x100
  6377 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6377 ms  0x14e8 cx:0x7f0d82543248
  6378 ms     | 0x14e8 EC_ValidatePublicKey()
  6380 ms     | 0x14e8 ret:0x0
  6380 ms  0x14e8 ret:0x7f0d82513820::7f0d82513820  10 c5 9f a2                                      ....
  6380 ms  0x14e8 PK11_PubDeriveWithKDF()
  6380 ms  0x14e8 seckey:0x7f0d82513820
  6380 ms     | 0x14e8 EC_ValidatePublicKey()
  6381 ms     | 0x14e8 ret:0x0
  6388 ms  0x14e8 ret:0x7f0d956fef80
  6388 ms  0x14e8 PK11_DeriveWithFlags()
  6388 ms  0x14e8 basekey:0x7f0d956fef80
  6389 ms     | 0x14e8 PK11_DeriveWithTemplate()
  6389 ms  0x14e8 ret:0x7f0d8268c780
  6389 ms  0x14e8 PK11_Derive()
  6389 ms  0x14e8 basekey:0x7f0d8268c780
  6389 ms     | 0x14e8 PK11_DeriveWithTemplate()
  6389 ms  0x14e8 ret:0x7f0d8268c800
  6389 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6389 ms  0x14e8 privk:0x7f0d82513820::7f0d82513820  10 c5 9f a2                                      ....
  6389 ms  0x14e8 privk:0x7f0d82513820::7f0d82513820  e5 e5 e5 e5                                      ....
  6389 ms  0x14e8 PK11_Encrypt()
  6389 ms  0x14e8 symkey:0x7f0d8268c980
  6396 ms  SECKEY_ECParamsToKeySize()
  6396 ms  0x14e8 ret:0x100
  6396 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6396 ms  0x14e8 cx:0x7f0d82543588
  6397 ms     | 0x14e8 EC_ValidatePublicKey()
  6398 ms     | 0x14e8 ret:0x0
  6398 ms  0x14e8 ret:0x7f0d82374820::7f0d82374820  c0 74 35 82                                      .t5.
  6398 ms  0x14e8 PK11_PubDeriveWithKDF()
  6398 ms  0x14e8 seckey:0x7f0d82374820
  6398 ms     | 0x14e8 EC_ValidatePublicKey()
           /* TID 0x1586 */
  6400 ms  0x1586 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6400 ms  0x1586 ret:0x0
           /* TID 0x14f0 */
  6401 ms  0x14f0 PR_Close()
  6401 ms  0x14f0 fd:0x7f0d82a618b0
           /* TID 0x14e8 */
  6402 ms     | 0x14e8 ret:0x0
  6403 ms  0x14e8 ret:0x7f0d956fef80
  6403 ms  0x14e8 PK11_DeriveWithFlags()
  6403 ms  0x14e8 basekey:0x7f0d956fef80
  6403 ms     | 0x14e8 PK11_DeriveWithTemplate()
  6403 ms  0x14e8 ret:0x7f0d8268c700
  6403 ms  0x14e8 PK11_Derive()
  6403 ms  0x14e8 basekey:0x7f0d8268c700
  6403 ms     | 0x14e8 PK11_DeriveWithTemplate()
  6403 ms  0x14e8 ret:0x7f0d8268cf00
  6403 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6403 ms  0x14e8 privk:0x7f0d82374820::7f0d82374820  c0 74 35 82                                      .t5.
  6404 ms  0x14e8 privk:0x7f0d82374820::7f0d82374820  e5 e5 e5 e5                                      ....
  6404 ms  0x14e8 PK11_Encrypt()
  6404 ms  0x14e8 symkey:0x7f0d8268d080
           /* TID 0x1586 */
  6419 ms  0x1586 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6420 ms  0x1586 ret:0x0
           /* TID 0x14e8 */
  6420 ms  SECKEY_ECParamsToKeySize()
  6420 ms  0x14e8 ret:0x100
  6420 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6420 ms  0x14e8 cx:0x7f0d825433e8
  6420 ms     | 0x14e8 EC_ValidatePublicKey()
  6422 ms     | 0x14e8 ret:0x0
  6422 ms  0x14e8 ret:0x7f0d8265c020::7f0d8265c020  90 77 35 82                                      .w5.
  6422 ms  0x14e8 PK11_PubDeriveWithKDF()
  6422 ms  0x14e8 seckey:0x7f0d8265c020
  6422 ms     | 0x14e8 EC_ValidatePublicKey()
  6423 ms     | 0x14e8 ret:0x0
  6425 ms  0x14e8 ret:0x7f0d956fef80
  6425 ms  0x14e8 PK11_DeriveWithFlags()
  6425 ms  0x14e8 basekey:0x7f0d956fef80
  6425 ms     | 0x14e8 PK11_DeriveWithTemplate()
  6425 ms  0x14e8 ret:0x7f0d8268d180
  6425 ms  0x14e8 PK11_Derive()
  6425 ms  0x14e8 basekey:0x7f0d8268d180
  6425 ms     | 0x14e8 PK11_DeriveWithTemplate()
  6425 ms  0x14e8 ret:0x7f0d8268d200
  6425 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6425 ms  0x14e8 privk:0x7f0d8265c020::7f0d8265c020  90 77 35 82                                      .w5.
  6425 ms  0x14e8 privk:0x7f0d8265c020::7f0d8265c020  e5 e5 e5 e5                                      ....
  6425 ms  0x14e8 PK11_Encrypt()
  6425 ms  0x14e8 symkey:0x7f0d8268d380
  6425 ms  0x14e8 SSL_AuthCertificateComplete()
  6425 ms  0x14e8 fd:0x7f0d826c0820
  6425 ms  0x14e8 err:0x0
  6426 ms  0x14e8 SSL_AuthCertificateComplete()
  6426 ms  0x14e8 fd:0x7f0d826c0ca0
  6426 ms  0x14e8 err:0x0
           /* TID 0x14f0 */
  6427 ms  0x14f0 PR_Close()
  6427 ms  0x14f0 fd:0x7f0d826c0b80
           /* TID 0x14e8 */
  6427 ms  0x14e8 PK11_Encrypt()
  6427 ms  0x14e8 symkey:0x7f0d8268d080
  6427 ms  0x14e8 PK11_Encrypt()
  6427 ms  0x14e8 symkey:0x7f0d8268d380
           /* TID 0x1586 */
  6428 ms  SECKEY_ECParamsToBasePointOrderLen()
  6428 ms  0x1586 ret:0x180
  6428 ms  SECKEY_ECParamsToBasePointOrderLen()
  6428 ms  0x1586 ret:0x180
  6428 ms  0x1586 EC_ValidatePublicKey()
  6429 ms  0x1586 ret:0x0
  6432 ms  0x1586 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6432 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6432 ms     | 0x1586 ret:0x180
  6432 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6432 ms     | 0x1586 ret:0x180
  6432 ms     | 0x1586 EC_ValidatePublicKey()
  6434 ms     | 0x1586 ret:0x0
  6436 ms  0x1586 ret:0x0
           /* TID 0x14e8 */
  6437 ms  SECKEY_ECParamsToKeySize()
  6437 ms  0x14e8 ret:0x100
  6437 ms  SECKEY_ECParamsToBasePointOrderLen()
  6437 ms  0x14e8 ret:0x100
  6437 ms  SECKEY_ECParamsToBasePointOrderLen()
  6437 ms  0x14e8 ret:0x100
  6437 ms  0x14e8 EC_ValidatePublicKey()
  6438 ms  0x14e8 ret:0x0
  6446 ms  SECKEY_ECParamsToKeySize()
  6446 ms  0x14e8 ret:0x100
  6446 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6446 ms  0x14e8 cx:0x7f0d82543728
  6447 ms     | 0x14e8 EC_ValidatePublicKey()
  6448 ms     | 0x14e8 ret:0x0
  6448 ms  0x14e8 ret:0x7f0d8266b820::7f0d8266b820  b0 7a 35 82                                      .z5.
  6448 ms  0x14e8 PK11_PubDeriveWithKDF()
  6448 ms  0x14e8 seckey:0x7f0d8266b820
  6448 ms     | 0x14e8 EC_ValidatePublicKey()
  6460 ms     | 0x14e8 ret:0x0
  6461 ms  0x14e8 ret:0x7f0d956fef80
  6461 ms  0x14e8 PK11_DeriveWithFlags()
  6461 ms  0x14e8 basekey:0x7f0d956fef80
  6461 ms     | 0x14e8 PK11_DeriveWithTemplate()
  6461 ms  0x14e8 ret:0x7f0d8268df00
  6461 ms  0x14e8 PK11_Derive()
  6461 ms  0x14e8 basekey:0x7f0d8268df00
  6461 ms     | 0x14e8 PK11_DeriveWithTemplate()
  6461 ms  0x14e8 ret:0x7f0d8268df80
  6461 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6461 ms  0x14e8 privk:0x7f0d8266b820::7f0d8266b820  b0 7a 35 82                                      .z5.
  6462 ms  0x14e8 privk:0x7f0d8266b820::7f0d8266b820  e5 e5 e5 e5                                      ....
  6462 ms  0x14e8 PK11_Encrypt()
  6462 ms  0x14e8 symkey:0x7f0d826e6000
  6462 ms  0x14e8 SSL_AuthCertificateComplete()
  6462 ms  0x14e8 fd:0x7f0d826c0fd0
  6462 ms  0x14e8 err:0x0
  6470 ms  0x14e8 PK11_Encrypt()
  6470 ms  0x14e8 symkey:0x7f0d94d76d00
  6472 ms  0x14e8 PK11_Encrypt()
  6472 ms  0x14e8 symkey:0x7f0d94d76d00
           /* TID 0x154e */
  6473 ms  0x154e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6473 ms  0x154e ret:0x0
           /* TID 0x14f0 */
  6473 ms  0x14f0 PR_Close()
  6473 ms  0x14f0 fd:0x7f0d827bf400
           /* TID 0x14e8 */
  6473 ms  0x14e8 PK11_Encrypt()
  6473 ms  0x14e8 symkey:0x7f0d94d76d00
  6474 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6474 ms  0x14e8 privk:0x7f0d82340020::7f0d82340020  00 6b a1 82                                      .k..
  6474 ms  0x14e8 privk:0x7f0d82340020::7f0d82340020  e5 e5 e5 e5                                      ....
  6474 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6474 ms  0x14e8 privk:0x7f0d8233e020::7f0d8233e020  f0 66 a1 82                                      .f..
  6474 ms  0x14e8 privk:0x7f0d8233e020::7f0d8233e020  e5 e5 e5 e5                                      ....
           /* TID 0x14f0 */
  6477 ms  0x14f0 PR_Close()
  6477 ms  0x14f0 fd:0x7f0d827bf400
           /* TID 0x14e8 */
  6477 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6477 ms  0x14e8 privk:0x7f0d8233b820::7f0d8233b820  e0 bc 99 82                                      ....
  6477 ms  0x14e8 privk:0x7f0d8233b820::7f0d8233b820  e5 e5 e5 e5                                      ....
  6477 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6477 ms  0x14e8 privk:0x7f0d82339820::7f0d82339820  c0 be 99 82                                      ....
  6477 ms  0x14e8 privk:0x7f0d82339820::7f0d82339820  e5 e5 e5 e5                                      ....
           /* TID 0x14f0 */
  6491 ms  0x14f0 PR_Close()
  6491 ms  0x14f0 fd:0x7f0d827bf400
           /* TID 0x14e8 */
  6499 ms  0x14e8 PK11_Encrypt()
  6499 ms  0x14e8 symkey:0x7f0d826e6000
  6499 ms  0x14e8 PK11_Encrypt()
  6499 ms  0x14e8 symkey:0x7f0d826e6000
  6499 ms  0x14e8 SSL_AuthCertificateComplete()
  6499 ms  0x14e8 fd:0x7f0d82a61340
  6499 ms  0x14e8 err:0x0
  6499 ms     | 0x14e8 SECKEY_DestroyPrivateKey()
  6499 ms     | 0x14e8 privk:0x7f0d82337020::7f0d82337020  90 bc 99 82                                      ....
  6499 ms     | 0x14e8 privk:0x7f0d82337020::7f0d82337020  e5 e5 e5 e5                                      ....
  6499 ms     | 0x14e8 SECKEY_DestroyPrivateKey()
  6499 ms     | 0x14e8 privk:0x7f0d82335020::7f0d82335020  00 bb 68 82                                      ..h.
  6499 ms     | 0x14e8 privk:0x7f0d82335020::7f0d82335020  e5 e5 e5 e5                                      ....
  6499 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6499 ms  0x14e8 privk:0x7f0d82344820::7f0d82344820  c0 6e be 82                                      .n..
  6499 ms  0x14e8 privk:0x7f0d82344820::7f0d82344820  e5 e5 e5 e5                                      ....
  6500 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6500 ms  0x14e8 privk:0x7f0d82342820::7f0d82342820  10 25 aa 82                                      .%..
  6500 ms  0x14e8 privk:0x7f0d82342820::7f0d82342820  e5 e5 e5 e5                                      ....
  6500 ms  0x14e8 PK11_Encrypt()
  6500 ms  0x14e8 symkey:0x7f0d8268c980
  6501 ms  0x14e8 SSL_ImportFD()
  6501 ms  0x14e8 ret:0x7f0d82a61520
  6501 ms  0x14e8 SSL_AuthCertificateHook()
  6501 ms  0x14e8 fd:0x7f0d82a61520
  6501 ms  0x14e8 ret:0x0
  6501 ms  0x14e8 PR_Connect()
  6501 ms  0x14e8 fd:0x7f0d82a61520
  6507 ms  0x14e8 PK11_Encrypt()
  6507 ms  0x14e8 symkey:0x7f0d94d76d00
  6535 ms  0x14e8 PK11_Encrypt()
  6535 ms  0x14e8 symkey:0x7f0d826e6000
  6558 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6558 ms  0x14e8 cx:0x7f0d82544aa8
  6559 ms     | 0x14e8 EC_ValidatePublicKey()
  6559 ms     | 0x14e8 ret:0x0
  6559 ms  0x14e8 ret:0x7f0d82339020::7f0d82339020  10 7a 35 82                                      .z5.
  6559 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6559 ms  0x14e8 cx:0x7f0d82544aa8
  6561 ms     | 0x14e8 EC_ValidatePublicKey()
  6564 ms     | 0x14e8 ret:0x0
  6564 ms  0x14e8 ret:0x7f0d8233b020::7f0d8233b020  10 ba 68 82                                      ..h.
           /* TID 0x14f0 */
  6567 ms  0x14f0 PR_Close()
  6567 ms  0x14f0 fd:0x7f0d826c09a0
           /* TID 0x14e8 */
  6571 ms  0x14e8 PK11_Encrypt()
  6571 ms  0x14e8 symkey:0x7f0d82ad3c80
           /* TID 0x14f0 */
  6575 ms  0x14f0 PR_Close()
  6575 ms  0x14f0 fd:0x7f0d826c0b50
           /* TID 0x14e8 */
  6584 ms  0x14e8 PK11_Encrypt()
  6584 ms  0x14e8 symkey:0x7f0d94d76d00
  6584 ms  0x14e8 SSL_ImportFD()
  6584 ms  0x14e8 ret:0x7f0d93819910
  6584 ms  0x14e8 SSL_AuthCertificateHook()
  6584 ms  0x14e8 fd:0x7f0d93819910
  6584 ms  0x14e8 ret:0x0
  6584 ms  0x14e8 PR_Connect()
  6584 ms  0x14e8 fd:0x7f0d93819910
  6586 ms  0x14e8 PK11_Encrypt()
  6586 ms  0x14e8 symkey:0x7f0d826e6000
  6623 ms  SECKEY_ECParamsToKeySize()
  6623 ms  0x14e8 ret:0x100
  6623 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6623 ms  0x14e8 cx:0x7f0d82544aa8
  6624 ms     | 0x14e8 EC_ValidatePublicKey()
  6625 ms     | 0x14e8 ret:0x0
  6626 ms  0x14e8 ret:0x7f0d82514820::7f0d82514820  00 51 7d 82                                      .Q}.
  6626 ms  0x14e8 PK11_PubDeriveWithKDF()
  6626 ms  0x14e8 seckey:0x7f0d82514820
  6626 ms     | 0x14e8 EC_ValidatePublicKey()
  6627 ms     | 0x14e8 ret:0x0
  6628 ms  0x14e8 ret:0x7f0d956fef80
  6628 ms  0x14e8 PK11_DeriveWithFlags()
  6628 ms  0x14e8 basekey:0x7f0d956fef80
  6628 ms     | 0x14e8 PK11_DeriveWithTemplate()
  6628 ms  0x14e8 ret:0x7f0d99c0d800
  6629 ms  0x14e8 PK11_Derive()
  6629 ms  0x14e8 basekey:0x7f0d99c0d800
  6629 ms     | 0x14e8 PK11_DeriveWithTemplate()
  6629 ms  0x14e8 ret:0x7f0d99c0dc00
  6629 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6629 ms  0x14e8 privk:0x7f0d82514820::7f0d82514820  00 51 7d 82                                      .Q}.
  6629 ms  0x14e8 privk:0x7f0d82514820::7f0d82514820  e5 e5 e5 e5                                      ....
  6629 ms  0x14e8 PK11_Encrypt()
  6629 ms  0x14e8 symkey:0x7f0d99c65900
  6646 ms  0x14e8 SSL_ImportFD()
  6646 ms  0x14e8 ret:0x7f0d93cffe80
  6646 ms  0x14e8 SSL_AuthCertificateHook()
  6646 ms  0x14e8 fd:0x7f0d93cffe80
  6646 ms  0x14e8 ret:0x0
  6646 ms  0x14e8 PR_Connect()
  6646 ms  0x14e8 fd:0x7f0d93cffe80
           /* TID 0x14f0 */
  6663 ms  0x14f0 PR_Close()
  6663 ms  0x14f0 fd:0x7f0d827bf970
           /* TID 0x1586 */
  6664 ms  0x1586 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6664 ms  0x1586 ret:0x0
           /* TID 0x14e8 */
  6664 ms  0x14e8 SSL_AuthCertificateComplete()
  6664 ms  0x14e8 fd:0x7f0d82a61520
  6664 ms  0x14e8 err:0x0
  6664 ms  0x14e8 PK11_Encrypt()
  6664 ms  0x14e8 symkey:0x7f0d99c65900
           /* TID 0x14f0 */
  6665 ms  0x14f0 PR_Close()
  6665 ms  0x14f0 fd:0x7f0d82a61af0
  6672 ms  0x14f0 PR_Close()
  6672 ms  0x14f0 fd:0x7f0d82a615e0
           /* TID 0x14e8 */
  6686 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6686 ms  0x14e8 privk:0x7f0d8233b020::7f0d8233b020  10 ba 68 82                                      ..h.
  6687 ms  0x14e8 privk:0x7f0d8233b020::7f0d8233b020  e5 e5 e5 e5                                      ....
  6687 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6687 ms  0x14e8 privk:0x7f0d82339020::7f0d82339020  10 7a 35 82                                      .z5.
  6687 ms  0x14e8 privk:0x7f0d82339020::7f0d82339020  e5 e5 e5 e5                                      ....
           /* TID 0x14f0 */
  6690 ms  0x14f0 PR_Close()
  6690 ms  0x14f0 fd:0x7f0d82a61a30
           /* TID 0x14e8 */
  6693 ms  0x14e8 SSL_ImportFD()
  6693 ms  0x14e8 ret:0x7f0d94825370
  6693 ms  0x14e8 SSL_AuthCertificateHook()
  6693 ms  0x14e8 fd:0x7f0d94825370
  6693 ms  0x14e8 ret:0x0
  6693 ms  0x14e8 PR_Connect()
  6693 ms  0x14e8 fd:0x7f0d94825370
  6694 ms  0x14e8 SSL_ImportFD()
  6694 ms  0x14e8 ret:0x7f0d94825eb0
  6694 ms  0x14e8 SSL_AuthCertificateHook()
  6694 ms  0x14e8 fd:0x7f0d94825eb0
  6694 ms  0x14e8 ret:0x0
  6694 ms  0x14e8 PR_Connect()
  6694 ms  0x14e8 fd:0x7f0d94825eb0
  6696 ms  0x14e8 SSL_ImportFD()
  6696 ms  0x14e8 ret:0x7f0d948a6bb0
  6696 ms  0x14e8 SSL_AuthCertificateHook()
  6696 ms  0x14e8 fd:0x7f0d948a6bb0
  6696 ms  0x14e8 ret:0x0
  6696 ms  0x14e8 PR_Connect()
  6696 ms  0x14e8 fd:0x7f0d948a6bb0
  6698 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6698 ms  0x14e8 cx:0x7f0d82544f88
  6699 ms     | 0x14e8 EC_ValidatePublicKey()
  6699 ms     | 0x14e8 ret:0x0
  6699 ms  0x14e8 ret:0x7f0d8233b020::7f0d8233b020  60 ba 68 82                                      `.h.
  6699 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6699 ms  0x14e8 cx:0x7f0d82544f88
  6699 ms     | 0x14e8 EC_ValidatePublicKey()
  6701 ms     | 0x14e8 ret:0x0
  6701 ms  0x14e8 ret:0x7f0d82349820::7f0d82349820  60 7a 35 82                                      `z5.
  6723 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6723 ms  0x14e8 cx:0x7f0d82544c48
  6723 ms     | 0x14e8 EC_ValidatePublicKey()
  6723 ms     | 0x14e8 ret:0x0
  6723 ms  0x14e8 ret:0x7f0d82660020::7f0d82660020  40 52 7d 82                                      @R}.
  6723 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6723 ms  0x14e8 cx:0x7f0d82544c48
  6724 ms     | 0x14e8 EC_ValidatePublicKey()
  6725 ms     | 0x14e8 ret:0x0
  6726 ms  0x14e8 ret:0x7f0d82bb8820::7f0d82bb8820  60 50 7d 82                                      `P}.
           /* TID 0x14f0 */
  6748 ms  0x14f0 PR_Close()
  6748 ms  0x14f0 fd:0x7f0d938197c0
           /* TID 0x14e8 */
  6760 ms  0x14e8 SSL_ImportFD()
  6760 ms  0x14e8 ret:0x7f0d938197c0
  6760 ms  0x14e8 SSL_AuthCertificateHook()
  6760 ms  0x14e8 fd:0x7f0d938197c0
  6760 ms  0x14e8 ret:0x0
  6760 ms  0x14e8 PR_Connect()
  6760 ms  0x14e8 fd:0x7f0d938197c0
  6765 ms  SECKEY_ECParamsToKeySize()
  6765 ms  0x14e8 ret:0x100
  6765 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6765 ms  0x14e8 cx:0x7f0d82544f88
  6766 ms     | 0x14e8 EC_ValidatePublicKey()
  6767 ms     | 0x14e8 ret:0x0
  6767 ms  0x14e8 ret:0x7f0d82e71020::7f0d82e71020  60 35 99 82                                      `5..
  6767 ms  0x14e8 PK11_PubDeriveWithKDF()
  6767 ms  0x14e8 seckey:0x7f0d82e71020
  6767 ms     | 0x14e8 EC_ValidatePublicKey()
  6769 ms     | 0x14e8 ret:0x0
  6772 ms  0x14e8 ret:0x7f0d956fef80
  6772 ms  0x14e8 PK11_DeriveWithFlags()
  6772 ms  0x14e8 basekey:0x7f0d956fef80
  6772 ms     | 0x14e8 PK11_DeriveWithTemplate()
  6772 ms  0x14e8 ret:0x7f0d9c8d4a80
  6772 ms  0x14e8 PK11_Derive()
  6772 ms  0x14e8 basekey:0x7f0d9c8d4a80
  6772 ms     | 0x14e8 PK11_DeriveWithTemplate()
  6772 ms  0x14e8 ret:0x7f0d9d5a1700
  6772 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6772 ms  0x14e8 privk:0x7f0d82e71020::7f0d82e71020  60 35 99 82                                      `5..
  6772 ms  0x14e8 privk:0x7f0d82e71020::7f0d82e71020  e5 e5 e5 e5                                      ....
  6772 ms  0x14e8 PK11_Encrypt()
  6772 ms  0x14e8 symkey:0x7f0d9d710380
  6797 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6797 ms  0x14e8 cx:0x7f0d82545608
  6802 ms     | 0x14e8 EC_ValidatePublicKey()
  6802 ms     | 0x14e8 ret:0x0
  6802 ms  0x14e8 ret:0x7f0d82e71020::7f0d82e71020  60 35 99 82                                      `5..
  6802 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6802 ms  0x14e8 cx:0x7f0d82545608
  6803 ms     | 0x14e8 EC_ValidatePublicKey()
  6807 ms     | 0x14e8 ret:0x0
  6807 ms  0x14e8 ret:0x7f0d93c76020::7f0d93c76020  e0 bc 99 82                                      ....
  6832 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6832 ms  0x14e8 cx:0x7f0d82545128
  6833 ms     | 0x14e8 EC_ValidatePublicKey()
  6833 ms     | 0x14e8 ret:0x0
  6833 ms  0x14e8 ret:0x7f0d93c79820::7f0d93c79820  60 ba 99 82                                      `...
  6833 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6833 ms  0x14e8 cx:0x7f0d82545128
  6834 ms     | 0x14e8 EC_ValidatePublicKey()
           /* TID 0x14f0 */
  6836 ms  0x14f0 PR_Close()
  6836 ms  0x14f0 fd:0x7f0d93cffd90
           /* TID 0x154e */
  6836 ms  0x154e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x14e8 */
  6837 ms     | 0x14e8 ret:0x0
           /* TID 0x154e */
  6837 ms  0x154e ret:0x0
           /* TID 0x14e8 */
  6838 ms  0x14e8 ret:0x7f0d82e6a820::7f0d82e6a820  90 e2 98 82                                      ....
  6838 ms  0x14e8 SSL_AuthCertificateComplete()
  6838 ms  0x14e8 fd:0x7f0d93cffe80
  6838 ms  0x14e8 err:0x0
  6838 ms     | 0x14e8 SECKEY_DestroyPrivateKey()
  6838 ms     | 0x14e8 privk:0x7f0d82349820::7f0d82349820  60 7a 35 82                                      `z5.
  6838 ms     | 0x14e8 privk:0x7f0d82349820::7f0d82349820  e5 e5 e5 e5                                      ....
  6838 ms     | 0x14e8 SECKEY_DestroyPrivateKey()
  6838 ms     | 0x14e8 privk:0x7f0d8233b020::7f0d8233b020  60 ba 68 82                                      `.h.
  6838 ms     | 0x14e8 privk:0x7f0d8233b020::7f0d8233b020  e5 e5 e5 e5                                      ....
  6838 ms  0x14e8 PK11_Encrypt()
  6838 ms  0x14e8 symkey:0x7f0d9d710380
  6838 ms  0x14e8 PK11_Encrypt()
  6838 ms  0x14e8 symkey:0x7f0d9d710380
  6839 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6839 ms  0x14e8 cx:0x7f0d825452c8
  6839 ms     | 0x14e8 EC_ValidatePublicKey()
  6839 ms     | 0x14e8 ret:0x0
  6839 ms  0x14e8 ret:0x7f0d82344820::7f0d82344820  10 ba 68 82                                      ..h.
  6839 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6839 ms  0x14e8 cx:0x7f0d825452c8
  6840 ms     | 0x14e8 EC_ValidatePublicKey()
  6841 ms     | 0x14e8 ret:0x0
  6841 ms  0x14e8 ret:0x7f0d93c7c820::7f0d93c7c820  b0 e5 98 82                                      ....
  6842 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6842 ms  0x14e8 cx:0x7f0d82545468
  6843 ms     | 0x14e8 EC_ValidatePublicKey()
  6843 ms     | 0x14e8 ret:0x0
  6843 ms  0x14e8 ret:0x7f0d985a5020::7f0d985a5020  c0 3e 99 82                                      .>..
  6843 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6843 ms  0x14e8 cx:0x7f0d82545468
  6843 ms     | 0x14e8 EC_ValidatePublicKey()
  6845 ms     | 0x14e8 ret:0x0
  6845 ms  0x14e8 ret:0x7f0d99704820::7f0d99704820  e0 62 a1 82                                      .b..
  6846 ms  0x14e8 PK11_Encrypt()
  6846 ms  0x14e8 symkey:0x7f0d9d710380
           /* TID 0x1586 */
  6846 ms  0x1586 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6847 ms  0x1586 ret:0x0
           /* TID 0x14e8 */
  6847 ms  SECKEY_ECParamsToKeySize()
  6847 ms  0x14e8 ret:0x100
  6847 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6847 ms  0x14e8 cx:0x7f0d82545608
  6847 ms     | 0x14e8 EC_ValidatePublicKey()
  6849 ms     | 0x14e8 ret:0x0
  6849 ms  0x14e8 ret:0x7f0d9970c820::7f0d9970c820  c0 69 a1 82                                      .i..
  6849 ms  0x14e8 PK11_PubDeriveWithKDF()
  6849 ms  0x14e8 seckey:0x7f0d9970c820
  6849 ms     | 0x14e8 EC_ValidatePublicKey()
  6850 ms     | 0x14e8 ret:0x0
  6852 ms  0x14e8 ret:0x7f0d956fef80
  6852 ms  0x14e8 PK11_DeriveWithFlags()
  6852 ms  0x14e8 basekey:0x7f0d956fef80
  6852 ms     | 0x14e8 PK11_DeriveWithTemplate()
  6852 ms  0x14e8 ret:0x7f0d82902d00
  6852 ms  0x14e8 PK11_Derive()
  6852 ms  0x14e8 basekey:0x7f0d82902d00
  6852 ms     | 0x14e8 PK11_DeriveWithTemplate()
  6852 ms  0x14e8 ret:0x7f0d82b15400
  6852 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6852 ms  0x14e8 privk:0x7f0d9970c820::7f0d9970c820  c0 69 a1 82                                      .i..
  6852 ms  0x14e8 privk:0x7f0d9970c820::7f0d9970c820  e5 e5 e5 e5                                      ....
  6852 ms  0x14e8 PK11_Encrypt()
  6852 ms  0x14e8 symkey:0x7f0d82b51200
  6862 ms  0x14e8 SSL_AuthCertificateComplete()
  6862 ms  0x14e8 fd:0x7f0d938197c0
  6862 ms  0x14e8 err:0x0
  6862 ms  0x14e8 PK11_Encrypt()
  6862 ms  0x14e8 symkey:0x7f0d82b51200
  6866 ms  SECKEY_ECParamsToKeySize()
  6866 ms  0x14e8 ret:0x100
  6866 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6866 ms  0x14e8 cx:0x7f0d82544c48
  6867 ms     | 0x14e8 EC_ValidatePublicKey()
  6868 ms     | 0x14e8 ret:0x0
  6868 ms  0x14e8 ret:0x7f0d99898020::7f0d99898020  60 10 e6 82                                      `...
  6868 ms  0x14e8 PK11_PubDeriveWithKDF()
  6868 ms  0x14e8 seckey:0x7f0d99898020
  6868 ms     | 0x14e8 EC_ValidatePublicKey()
  6873 ms     | 0x14e8 ret:0x0
  6875 ms  0x14e8 ret:0x7f0d956fef80
  6875 ms  0x14e8 PK11_DeriveWithFlags()
  6875 ms  0x14e8 basekey:0x7f0d956fef80
  6875 ms     | 0x14e8 PK11_DeriveWithTemplate()
  6875 ms  0x14e8 ret:0x7f0d82b55f80
  6875 ms  0x14e8 PK11_Derive()
  6875 ms  0x14e8 basekey:0x7f0d82b55f80
  6875 ms     | 0x14e8 PK11_DeriveWithTemplate()
  6875 ms  0x14e8 ret:0x7f0d82b56000
  6875 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6875 ms  0x14e8 privk:0x7f0d99898020::7f0d99898020  60 10 e6 82                                      `...
  6875 ms  0x14e8 privk:0x7f0d99898020::7f0d99898020  e5 e5 e5 e5                                      ....
  6875 ms  0x14e8 PK11_Encrypt()
  6875 ms  0x14e8 symkey:0x7f0d82b56380
  6876 ms  0x14e8 PR_Connect()
  6876 ms  0x14e8 fd:0x7f0d956ee9d0
  6889 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6889 ms  0x14e8 privk:0x7f0d93c76020::7f0d93c76020  e0 bc 99 82                                      ....
  6890 ms  0x14e8 privk:0x7f0d93c76020::7f0d93c76020  e5 e5 e5 e5                                      ....
  6890 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6890 ms  0x14e8 privk:0x7f0d82e71020::7f0d82e71020  60 35 99 82                                      `5..
  6890 ms  0x14e8 privk:0x7f0d82e71020::7f0d82e71020  e5 e5 e5 e5                                      ....
  6978 ms  SECKEY_ECParamsToKeySize()
  6978 ms  0x14e8 ret:0x100
  6978 ms  0x14e8 SECKEY_CreateECPrivateKey()
  6978 ms  0x14e8 cx:0x7f0d82545128
  6980 ms     | 0x14e8 EC_ValidatePublicKey()
  6987 ms     | 0x14e8 ret:0x0
  6989 ms  0x14e8 ret:0x7f0d82647020::7f0d82647020  f0 5b 7d 82                                      .[}.
  6989 ms  0x14e8 PK11_PubDeriveWithKDF()
  6989 ms  0x14e8 seckey:0x7f0d82647020
  6989 ms     | 0x14e8 EC_ValidatePublicKey()
  6993 ms     | 0x14e8 ret:0x0
  6996 ms  0x14e8 ret:0x7f0d956fef80
  6996 ms  0x14e8 PK11_DeriveWithFlags()
  6996 ms  0x14e8 basekey:0x7f0d956fef80
  6996 ms     | 0x14e8 PK11_DeriveWithTemplate()
  6996 ms  0x14e8 ret:0x7f0d8255d680
  6996 ms  0x14e8 PK11_Derive()
  6996 ms  0x14e8 basekey:0x7f0d8255d680
  6996 ms     | 0x14e8 PK11_DeriveWithTemplate()
  6997 ms  0x14e8 ret:0x7f0d8255d700
  6997 ms  0x14e8 SECKEY_DestroyPrivateKey()
  6997 ms  0x14e8 privk:0x7f0d82647020::7f0d82647020  f0 5b 7d 82                                      .[}.
  6997 ms  0x14e8 privk:0x7f0d82647020::7f0d82647020  e5 e5 e5 e5                                      ....
  6997 ms  0x14e8 PK11_Encrypt()
  6997 ms  0x14e8 symkey:0x7f0d8255d900
           /* TID 0x14f0 */
  7002 ms  0x14f0 PR_Close()
  7002 ms  0x14f0 fd:0x7f0d827bf4c0
           /* TID 0x14e8 */
  7009 ms  SECKEY_ECParamsToKeySize()
  7009 ms  0x14e8 ret:0x100
  7009 ms  0x14e8 SECKEY_CreateECPrivateKey()
  7009 ms  0x14e8 cx:0x7f0d825452c8
  7010 ms     | 0x14e8 EC_ValidatePublicKey()
  7012 ms     | 0x14e8 ret:0x0
  7012 ms  0x14e8 ret:0x7f0d8264d020::7f0d8264d020  90 5c 7d 82                                      .\}.
  7012 ms  0x14e8 PK11_PubDeriveWithKDF()
  7012 ms  0x14e8 seckey:0x7f0d8264d020
  7012 ms     | 0x14e8 EC_ValidatePublicKey()
  7018 ms     | 0x14e8 ret:0x0
  7031 ms  0x14e8 ret:0x7f0d956fef80
  7031 ms  0x14e8 PK11_DeriveWithFlags()
  7031 ms  0x14e8 basekey:0x7f0d956fef80
  7031 ms     | 0x14e8 PK11_DeriveWithTemplate()
  7031 ms  0x14e8 ret:0x7f0d8255e600
  7031 ms  0x14e8 PK11_Derive()
  7031 ms  0x14e8 basekey:0x7f0d8255e600
  7031 ms     | 0x14e8 PK11_DeriveWithTemplate()
  7031 ms  0x14e8 ret:0x7f0d8255e900
  7031 ms  0x14e8 SECKEY_DestroyPrivateKey()
  7031 ms  0x14e8 privk:0x7f0d8264d020::7f0d8264d020  90 5c 7d 82                                      .\}.
  7031 ms  0x14e8 privk:0x7f0d8264d020::7f0d8264d020  e5 e5 e5 e5                                      ....
  7031 ms  0x14e8 PK11_Encrypt()
  7031 ms  0x14e8 symkey:0x7f0d82634200
  7032 ms  SECKEY_ECParamsToKeySize()
  7032 ms  0x14e8 ret:0x100
  7032 ms  0x14e8 SECKEY_CreateECPrivateKey()
  7032 ms  0x14e8 cx:0x7f0d82545468
  7033 ms     | 0x14e8 EC_ValidatePublicKey()
  7034 ms     | 0x14e8 ret:0x0
  7034 ms  0x14e8 ret:0x7f0d82651820::7f0d82651820  b0 20 aa 82                                      . ..
  7034 ms  0x14e8 PK11_PubDeriveWithKDF()
  7034 ms  0x14e8 seckey:0x7f0d82651820
  7034 ms     | 0x14e8 EC_ValidatePublicKey()
  7037 ms     | 0x14e8 ret:0x0
  7039 ms  0x14e8 ret:0x7f0d956fef80
  7039 ms  0x14e8 PK11_DeriveWithFlags()
  7039 ms  0x14e8 basekey:0x7f0d956fef80
  7039 ms     | 0x14e8 PK11_DeriveWithTemplate()
  7039 ms  0x14e8 ret:0x7f0d82634980
  7039 ms  0x14e8 PK11_Derive()
  7039 ms  0x14e8 basekey:0x7f0d82634980
  7039 ms     | 0x14e8 PK11_DeriveWithTemplate()
  7039 ms  0x14e8 ret:0x7f0d82634a80
  7039 ms  0x14e8 SECKEY_DestroyPrivateKey()
  7039 ms  0x14e8 privk:0x7f0d82651820::7f0d82651820  b0 20 aa 82                                      . ..
  7039 ms  0x14e8 privk:0x7f0d82651820::7f0d82651820  e5 e5 e5 e5                                      ....
  7039 ms  0x14e8 PK11_Encrypt()
  7039 ms  0x14e8 symkey:0x7f0d8268c200
           /* TID 0x14f0 */
  7041 ms  0x14f0 PR_Close()
  7041 ms  0x14f0 fd:0x7f0d82a61640
           /* TID 0x14e8 */
  7041 ms  0x14e8 PR_Connect()
  7041 ms  0x14e8 fd:0x7f0d82b3e3d0
  7041 ms  0x14e8 PR_Connect()
  7041 ms  0x14e8 fd:0x7f0d82ea34c0
  7042 ms  0x14e8 PR_Connect()
  7042 ms  0x14e8 fd:0x7f0d82ea3370
  7239 ms  0x14e8 PR_Close()
  7239 ms  0x14e8 fd:0x7f0d956ee9d0
           /* TID 0x14f0 */
  7240 ms  0x14f0 PR_Close()
  7240 ms  0x14f0 fd:0x7f0d82a61640
           /* TID 0x154e */
  7241 ms  0x154e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7241 ms  0x154e ret:0x0
  7241 ms  0x154e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7241 ms  0x154e ret:0x0
           /* TID 0x14e8 */
  7251 ms  0x14e8 SSL_AuthCertificateComplete()
  7251 ms  0x14e8 fd:0x7f0d93819910
  7251 ms  0x14e8 err:0x0
  7251 ms     | 0x14e8 SECKEY_DestroyPrivateKey()
  7251 ms     | 0x14e8 privk:0x7f0d82bb8820::7f0d82bb8820  60 50 7d 82                                      `P}.
  7251 ms     | 0x14e8 privk:0x7f0d82bb8820::7f0d82bb8820  e5 e5 e5 e5                                      ....
  7251 ms     | 0x14e8 SECKEY_DestroyPrivateKey()
  7251 ms     | 0x14e8 privk:0x7f0d82660020::7f0d82660020  40 52 7d 82                                      @R}.
  7251 ms     | 0x14e8 privk:0x7f0d82660020::7f0d82660020  e5 e5 e5 e5                                      ....
  7251 ms  0x14e8 PK11_Encrypt()
  7251 ms  0x14e8 symkey:0x7f0d82b56380
  7252 ms  0x14e8 PK11_Encrypt()
  7252 ms  0x14e8 symkey:0x7f0d82b56380
  7252 ms  0x14e8 PK11_Encrypt()
  7252 ms  0x14e8 symkey:0x7f0d82b56380
  7405 ms  0x14e8 PR_Close()
  7405 ms  0x14e8 fd:0x7f0d82ea3370
           /* TID 0x14f0 */
  7408 ms  0x14f0 PR_Close()
  7408 ms  0x14f0 fd:0x7f0d82b3e6a0
           /* TID 0x1588 */
  7409 ms  0x1588 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7409 ms  0x1588 ret:0x0
  7409 ms  0x1588 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7411 ms  0x1588 ret:0x0
           /* TID 0x14e8 */
  7411 ms  0x14e8 SSL_AuthCertificateComplete()
  7411 ms  0x14e8 fd:0x7f0d948a6bb0
  7411 ms  0x14e8 err:0x0
  7411 ms     | 0x14e8 SECKEY_DestroyPrivateKey()
  7411 ms     | 0x14e8 privk:0x7f0d99704820::7f0d99704820  e0 62 a1 82                                      .b..
  7412 ms     | 0x14e8 privk:0x7f0d99704820::7f0d99704820  e5 e5 e5 e5                                      ....
  7412 ms     | 0x14e8 SECKEY_DestroyPrivateKey()
  7412 ms     | 0x14e8 privk:0x7f0d985a5020::7f0d985a5020  c0 3e 99 82                                      .>..
  7412 ms     | 0x14e8 privk:0x7f0d985a5020::7f0d985a5020  e5 e5 e5 e5                                      ....
  7413 ms  0x14e8 PK11_Encrypt()
  7413 ms  0x14e8 symkey:0x7f0d8268c200
  7414 ms  0x14e8 PK11_Encrypt()
  7414 ms  0x14e8 symkey:0x7f0d82b56380
  7416 ms  0x14e8 PR_Close()
  7416 ms  0x14e8 fd:0x7f0d948a6bb0
  7416 ms     | 0x14e8 PK11_Encrypt()
  7416 ms     | 0x14e8 symkey:0x7f0d8268c200
           /* TID 0x14f0 */
  7431 ms  0x14f0 PR_Close()
  7431 ms  0x14f0 fd:0x7f0d82b3e6a0
           /* TID 0x1586 */
  7432 ms  0x1586 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7432 ms  0x1586 ret:0x0
  7432 ms  0x1586 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7433 ms  0x1586 ret:0x0
           /* TID 0x14f0 */
  7434 ms  0x14f0 PR_Close()
  7434 ms  0x14f0 fd:0x7f0d82abbd60
           /* TID 0x1587 */
  7435 ms  0x1587 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7435 ms  0x1587 ret:0x0
  7435 ms  0x1587 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7436 ms  0x1587 ret:0x0
           /* TID 0x14e8 */
  7436 ms  0x14e8 SSL_AuthCertificateComplete()
  7436 ms  0x14e8 fd:0x7f0d94825370
  7436 ms  0x14e8 err:0x0
  7437 ms     | 0x14e8 SECKEY_DestroyPrivateKey()
  7437 ms     | 0x14e8 privk:0x7f0d82e6a820::7f0d82e6a820  90 e2 98 82                                      ....
  7437 ms     | 0x14e8 privk:0x7f0d82e6a820::7f0d82e6a820  e5 e5 e5 e5                                      ....
  7437 ms     | 0x14e8 SECKEY_DestroyPrivateKey()
  7437 ms     | 0x14e8 privk:0x7f0d93c79820::7f0d93c79820  60 ba 99 82                                      `...
  7437 ms     | 0x14e8 privk:0x7f0d93c79820::7f0d93c79820  e5 e5 e5 e5                                      ....
  7438 ms  0x14e8 SSL_AuthCertificateComplete()
  7438 ms  0x14e8 fd:0x7f0d94825eb0
  7438 ms  0x14e8 err:0x0
  7438 ms     | 0x14e8 SECKEY_DestroyPrivateKey()
  7438 ms     | 0x14e8 privk:0x7f0d93c7c820::7f0d93c7c820  b0 e5 98 82                                      ....
  7438 ms     | 0x14e8 privk:0x7f0d93c7c820::7f0d93c7c820  e5 e5 e5 e5                                      ....
  7438 ms     | 0x14e8 SECKEY_DestroyPrivateKey()
  7438 ms     | 0x14e8 privk:0x7f0d82344820::7f0d82344820  10 ba 68 82                                      ..h.
  7438 ms     | 0x14e8 privk:0x7f0d82344820::7f0d82344820  e5 e5 e5 e5                                      ....
  7438 ms  0x14e8 PR_Close()
  7438 ms  0x14e8 fd:0x7f0d82ea34c0
  7442 ms  0x14e8 PR_Close()
  7442 ms  0x14e8 fd:0x7f0d82b3e3d0
  7445 ms  0x14e8 PK11_Encrypt()
  7445 ms  0x14e8 symkey:0x7f0d8255d900
  7446 ms  0x14e8 PK11_Encrypt()
  7446 ms  0x14e8 symkey:0x7f0d82634200
  7446 ms  0x14e8 PK11_Encrypt()
  7446 ms  0x14e8 symkey:0x7f0d94d76d00
  7447 ms  0x14e8 PK11_Encrypt()
  7447 ms  0x14e8 symkey:0x7f0d82b56380
  7448 ms  0x14e8 PK11_Encrypt()
  7448 ms  0x14e8 symkey:0x7f0d82b56380
  7449 ms  0x14e8 PR_Close()
  7449 ms  0x14e8 fd:0x7f0d94825eb0
  7449 ms     | 0x14e8 PK11_Encrypt()
  7449 ms     | 0x14e8 symkey:0x7f0d82634200
  7449 ms  0x14e8 PR_Close()
  7449 ms  0x14e8 fd:0x7f0d94825370
  7449 ms     | 0x14e8 PK11_Encrypt()
  7449 ms     | 0x14e8 symkey:0x7f0d8255d900
  7450 ms  0x14e8 SSL_ImportFD()
  7450 ms  0x14e8 ret:0x7f0d82b3e6a0
  7450 ms  0x14e8 SSL_AuthCertificateHook()
  7450 ms  0x14e8 fd:0x7f0d82b3e6a0
  7451 ms  0x14e8 ret:0x0
  7451 ms  0x14e8 PR_Connect()
  7451 ms  0x14e8 fd:0x7f0d82b3e6a0
  7478 ms  0x14e8 SECKEY_CreateECPrivateKey()
  7478 ms  0x14e8 cx:0x7f0d82545128
  7479 ms     | 0x14e8 EC_ValidatePublicKey()
  7479 ms     | 0x14e8 ret:0x0
  7479 ms  0x14e8 ret:0x7f0d82344820::7f0d82344820  30 63 5a 82                                      0cZ.
  7479 ms  0x14e8 SECKEY_CreateECPrivateKey()
  7479 ms  0x14e8 cx:0x7f0d82545128
  7481 ms     | 0x14e8 EC_ValidatePublicKey()
  7483 ms     | 0x14e8 ret:0x0
  7483 ms  0x14e8 ret:0x7f0d82512820::7f0d82512820  a0 2b 78 82                                      .+x.
           /* TID 0x154e */
  7512 ms  0x154e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7512 ms  0x154e ret:0x0
  7512 ms  0x154e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7512 ms  0x154e ret:0x0
           /* TID 0x14e8 */
  7512 ms  0x14e8 SSL_AuthCertificateComplete()
  7512 ms  0x14e8 fd:0x7f0d82b3e6a0
  7512 ms  0x14e8 err:0x0
           /* TID 0x14f0 */
  7513 ms  0x14f0 PR_Close()
  7513 ms  0x14f0 fd:0x7f0d82ea36a0
  7531 ms  0x14f0 PR_Close()
  7531 ms  0x14f0 fd:0x7f0d82e0a280
           /* TID 0x14e8 */
  7534 ms  SECKEY_ECParamsToKeySize()
  7534 ms  0x14e8 ret:0x100
  7534 ms  0x14e8 SECKEY_CreateECPrivateKey()
  7534 ms  0x14e8 cx:0x7f0d82545128
  7534 ms     | 0x14e8 EC_ValidatePublicKey()
  7536 ms     | 0x14e8 ret:0x0
  7536 ms  0x14e8 ret:0x7f0d8265d020::7f0d8265d020  90 e2 98 82                                      ....
  7536 ms  0x14e8 PK11_PubDeriveWithKDF()
  7536 ms  0x14e8 seckey:0x7f0d8265d020
  7536 ms     | 0x14e8 EC_ValidatePublicKey()
  7537 ms     | 0x14e8 ret:0x0
  7539 ms  0x14e8 ret:0x7f0d8255d700
  7539 ms  0x14e8 PK11_DeriveWithFlags()
  7539 ms  0x14e8 basekey:0x7f0d8255d700
  7539 ms     | 0x14e8 PK11_DeriveWithTemplate()
  7539 ms  0x14e8 ret:0x7f0d8255d680
  7539 ms  0x14e8 PK11_Derive()
  7539 ms  0x14e8 basekey:0x7f0d8255d680
  7539 ms     | 0x14e8 PK11_DeriveWithTemplate()
  7539 ms  0x14e8 ret:0x7f0d8255e900
  7539 ms  0x14e8 SECKEY_DestroyPrivateKey()
  7539 ms  0x14e8 privk:0x7f0d8265d020::7f0d8265d020  90 e2 98 82                                      ....
  7539 ms  0x14e8 privk:0x7f0d8265d020::7f0d8265d020  e5 e5 e5 e5                                      ....
  7539 ms  0x14e8 PK11_Encrypt()
  7539 ms  0x14e8 symkey:0x7f0d8255d780
  7540 ms  0x14e8 PK11_Encrypt()
  7540 ms  0x14e8 symkey:0x7f0d8255d780
  7633 ms  0x14e8 SECKEY_DestroyPrivateKey()
  7633 ms  0x14e8 privk:0x7f0d82512820::7f0d82512820  a0 2b 78 82                                      .+x.
  7634 ms  0x14e8 privk:0x7f0d82512820::7f0d82512820  e5 e5 e5 e5                                      ....
  7634 ms  0x14e8 SECKEY_DestroyPrivateKey()
  7634 ms  0x14e8 privk:0x7f0d82344820::7f0d82344820  30 63 5a 82                                      0cZ.
  7634 ms  0x14e8 privk:0x7f0d82344820::7f0d82344820  e5 e5 e5 e5                                      ....
           /* TID 0x14f0 */
  7672 ms  0x14f0 PR_Close()
  7672 ms  0x14f0 fd:0x7f0d826c0220
  7673 ms  0x14f0 PR_Close()
  7673 ms  0x14f0 fd:0x7f0d82ea3250
  7675 ms  0x14f0 PR_Close()
  7675 ms  0x14f0 fd:0x7f0d826c0220
           /* TID 0x14e8 */
  7684 ms  0x14e8 PK11_Encrypt()
  7684 ms  0x14e8 symkey:0x7f0d82734c80
  7695 ms  0x14e8 PR_Close()
  7695 ms  0x14e8 fd:0x7f0d9482bdf0
           /* TID 0x14dd */
  7700 ms  0x14dd EC_ValidatePublicKey()
  7702 ms  0x14dd ret:0x0
  7702 ms  0x14dd EC_ValidatePublicKey()
  7704 ms  0x14dd ret:0x0
  7704 ms  0x14dd EC_ValidatePublicKey()
  7706 ms  0x14dd ret:0x0
  7706 ms  0x14dd EC_ValidatePublicKey()
  7707 ms  0x14dd ret:0x0
  7707 ms  0x14dd EC_ValidatePublicKey()
  7709 ms  0x14dd ret:0x0
  7709 ms  0x14dd EC_ValidatePublicKey()
  7721 ms  0x14dd ret:0x0
  7721 ms  0x14dd EC_ValidatePublicKey()
  7722 ms  0x14dd ret:0x0
  7722 ms  0x14dd EC_ValidatePublicKey()
  7724 ms  0x14dd ret:0x0
  7724 ms  0x14dd EC_ValidatePublicKey()
  7725 ms  0x14dd ret:0x0
  7725 ms  0x14dd EC_ValidatePublicKey()
  7727 ms  0x14dd ret:0x0
           /* TID 0x14e8 */
  7740 ms  0x14e8 PK11_Encrypt()
  7740 ms  0x14e8 symkey:0x7f0d82b56380
  7740 ms  0x14e8 PK11_Encrypt()
  7740 ms  0x14e8 symkey:0x7f0d826e6000
  7740 ms  0x14e8 PK11_Encrypt()
  7740 ms  0x14e8 symkey:0x7f0d82734680
  7740 ms  0x14e8 PK11_Encrypt()
  7740 ms  0x14e8 symkey:0x7f0d82733080
  7740 ms  0x14e8 PK11_Encrypt()
  7740 ms  0x14e8 symkey:0x7f0d94d76d00
  7741 ms  0x14e8 PK11_Encrypt()
  7741 ms  0x14e8 symkey:0x7f0d82ad2a80
  7741 ms  0x14e8 PK11_Encrypt()
  7741 ms  0x14e8 symkey:0x7f0d82734c80
  7741 ms  0x14e8 PK11_Encrypt()
  7741 ms  0x14e8 symkey:0x7f0d9d710380
  7741 ms  0x14e8 PR_Close()
  7741 ms  0x14e8 fd:0x7f0d938197c0
  7741 ms     | 0x14e8 PK11_Encrypt()
  7741 ms     | 0x14e8 symkey:0x7f0d82b51200
  7741 ms  0x14e8 PR_Close()
  7741 ms  0x14e8 fd:0x7f0d82a61520
  7741 ms     | 0x14e8 PK11_Encrypt()
  7741 ms     | 0x14e8 symkey:0x7f0d99c65900
  7741 ms  0x14e8 PR_Close()
  7741 ms  0x14e8 fd:0x7f0d826c0ca0
  7741 ms     | 0x14e8 PK11_Encrypt()
  7741 ms     | 0x14e8 symkey:0x7f0d8268d380
  7742 ms  0x14e8 PR_Close()
  7742 ms  0x14e8 fd:0x7f0d826c0820
  7742 ms     | 0x14e8 PK11_Encrypt()
  7742 ms     | 0x14e8 symkey:0x7f0d8268d080
  7742 ms  0x14e8 PR_Close()
  7742 ms  0x14e8 fd:0x7f0d82a61340
  7742 ms     | 0x14e8 PK11_Encrypt()
  7742 ms     | 0x14e8 symkey:0x7f0d8268c980
  7742 ms  0x14e8 PR_Close()
  7742 ms  0x14e8 fd:0x7f0d826c0dc0
  7742 ms     | 0x14e8 PK11_Encrypt()
  7742 ms     | 0x14e8 symkey:0x7f0d82733300
  7742 ms  0x14e8 PR_Close()
  7742 ms  0x14e8 fd:0x7f0d826c0310
  7742 ms     | 0x14e8 PK11_Encrypt()
  7742 ms     | 0x14e8 symkey:0x7f0d8255d580
  7744 ms  0x14e8 PR_Close()
  7744 ms  0x14e8 fd:0x7f0d826c00a0
  7744 ms     | 0x14e8 PK11_Encrypt()
  7744 ms     | 0x14e8 symkey:0x7f0d82ad3c80
  7744 ms  0x14e8 PR_Close()
  7744 ms  0x14e8 fd:0x7f0d9e7a1a30
  7744 ms     | 0x14e8 PK11_Encrypt()
  7744 ms     | 0x14e8 symkey:0x7f0d826e5980
  7744 ms  0x14e8 PR_Close()
  7744 ms  0x14e8 fd:0x7f0d948a6e20
  7744 ms     | 0x14e8 PK11_Encrypt()
  7744 ms     | 0x14e8 symkey:0x7f0d82ad2f00
  7744 ms  0x14e8 PR_Close()
  7744 ms  0x14e8 fd:0x7f0d82b3e2e0
  7744 ms     | 0x14e8 PK11_Encrypt()
  7744 ms     | 0x14e8 symkey:0x7f0d82b15b80
  7745 ms  0x14e8 PR_Close()
  7745 ms  0x14e8 fd:0x7f0d82b3e070
           /* TID 0x1540 */
  7745 ms  0x1540 PR_Close()
  7745 ms  0x1540 fd:0x7f0d826c00d0
  7745 ms  0x1540 PR_Close()
  7745 ms  0x1540 fd:0x7f0d826c00d0
           /* TID 0x14e8 */
  7748 ms  0x14e8 PR_Close()
  7748 ms  0x14e8 fd:0x7f0d82e0a4f0
  7749 ms     | 0x14e8 PK11_Encrypt()
  7749 ms     | 0x14e8 symkey:0x7f0d82b14d00
  7749 ms  0x14e8 PR_Close()
  7749 ms  0x14e8 fd:0x7f0d9853fc70
  7749 ms  0x14e8 PR_Close()
  7749 ms  0x14e8 fd:0x7f0d940fcf40
  7749 ms     | 0x14e8 PK11_Encrypt()
  7749 ms     | 0x14e8 symkey:0x7f0d9d934180
  7749 ms  0x14e8 PR_Close()
  7749 ms  0x14e8 fd:0x7f0d82b3e6a0
  7749 ms     | 0x14e8 PK11_Encrypt()
  7749 ms     | 0x14e8 symkey:0x7f0d8255d780
  7750 ms  0x14e8 PR_Close()
  7750 ms  0x14e8 fd:0x7f0d9692a760
  7750 ms     | 0x14e8 PK11_Encrypt()
  7750 ms     | 0x14e8 symkey:0x7f0d93a77580
  7750 ms  0x14e8 PR_Close()
  7750 ms  0x14e8 fd:0x7f0d9e1e8310
  7750 ms     | 0x14e8 PK11_Encrypt()
  7750 ms     | 0x14e8 symkey:0x7f0d82ad3000
  7752 ms  0x14e8 PR_Close()
  7752 ms  0x14e8 fd:0x7f0d94eca850
  7752 ms     | 0x14e8 PK11_Encrypt()
  7752 ms     | 0x14e8 symkey:0x7f0d94d76d00
  7752 ms  0x14e8 PR_Close()
  7752 ms  0x14e8 fd:0x7f0d826c0fd0
  7752 ms     | 0x14e8 PK11_Encrypt()
  7752 ms     | 0x14e8 symkey:0x7f0d826e6000
           /* TID 0x14f0 */
  7752 ms  0x14f0 PR_Close()
  7752 ms  0x14f0 fd:0x7f0d826c0310
           /* TID 0x14e8 */
  7753 ms  0x14e8 PR_Close()
  7753 ms  0x14e8 fd:0x7f0d9e7a1be0
  7753 ms     | 0x14e8 PK11_Encrypt()
  7753 ms     | 0x14e8 symkey:0x7f0d82733080
  7754 ms  0x14e8 PR_Close()
  7754 ms  0x14e8 fd:0x7f0d93819910
  7754 ms     | 0x14e8 PK11_Encrypt()
  7754 ms     | 0x14e8 symkey:0x7f0d82b56380
  7754 ms  0x14e8 PR_Close()
  7754 ms  0x14e8 fd:0x7f0d9e1e8af0
  7754 ms     | 0x14e8 PK11_Encrypt()
  7754 ms     | 0x14e8 symkey:0x7f0d82734c80
  7754 ms  0x14e8 PR_Close()
  7754 ms  0x14e8 fd:0x7f0d948a6d60
  7754 ms     | 0x14e8 PK11_Encrypt()
  7754 ms     | 0x14e8 symkey:0x7f0d82734680
  7754 ms  0x14e8 PR_Close()
  7754 ms  0x14e8 fd:0x7f0d93cffe80
  7754 ms     | 0x14e8 PK11_Encrypt()
  7754 ms     | 0x14e8 symkey:0x7f0d9d710380
  7755 ms  0x14e8 PR_Close()
  7755 ms  0x14e8 fd:0x7f0d948a65e0
  7755 ms     | 0x14e8 PK11_Encrypt()
  7755 ms     | 0x14e8 symkey:0x7f0d82ad2a80
  7792 ms  0x14e8 SSL_ImportFD()
  7792 ms  0x14e8 ret:0x7f0d82a61520
  7792 ms  0x14e8 SSL_AuthCertificateHook()
  7792 ms  0x14e8 fd:0x7f0d82a61520
  7792 ms  0x14e8 ret:0x0
  7792 ms  0x14e8 PR_Connect()
  7792 ms  0x14e8 fd:0x7f0d82a61520
  7809 ms  0x14e8 SSL_ImportFD()
  7809 ms  0x14e8 ret:0x7f0d82a61820
  7809 ms  0x14e8 SSL_AuthCertificateHook()
  7809 ms  0x14e8 fd:0x7f0d82a61820
  7809 ms  0x14e8 ret:0x0
  7809 ms  0x14e8 PR_Connect()
  7809 ms  0x14e8 fd:0x7f0d82a61820
           /* TID 0x14dd */
  7814 ms  0x14dd PR_Close()
  7814 ms  0x14dd fd:0x7f0d956b0f10
  7814 ms  0x14dd PR_Close()
  7814 ms  0x14dd fd:0x7f0d82b3e190
  7815 ms  0x14dd PR_Close()
  7815 ms  0x14dd fd:0x7f0d82b3e1f0
  7815 ms  0x14dd PR_Close()
  7815 ms  0x14dd fd:0x7f0d82b3e190
  7817 ms  0x14dd PR_Close()
  7817 ms  0x14dd fd:0x7f0d82b3e1f0
  7817 ms  0x14dd PR_Close()
  7817 ms  0x14dd fd:0x7f0d82b3e190
           /* TID 0x1502 */
  7820 ms  0x1502 PR_Close()
  7820 ms  0x1502 fd:0x7f0d82b3e190
           /* TID 0x14dd */
  7839 ms  0x14dd PR_Close()
  7839 ms  0x14dd fd:0x7f0d82b3e1f0
  7839 ms  0x14dd PR_Close()
  7839 ms  0x14dd fd:0x7f0d82ea3eb0
  7841 ms  0x14dd PR_Close()
  7841 ms  0x14dd fd:0x7f0d82b3e1f0
  7841 ms  0x14dd PR_Close()
  7841 ms  0x14dd fd:0x7f0d82ea3eb0
  7841 ms  0x14dd PR_Close()
  7841 ms  0x14dd fd:0x7f0d9eac89a0
  7841 ms  0x14dd PR_Close()
  7841 ms  0x14dd fd:0x7f0d9eac88b0
  7841 ms  0x14dd PR_Close()
  7841 ms  0x14dd fd:0x7f0d9eac8a60
  7843 ms  0x14dd PR_Close()
  7843 ms  0x14dd fd:0x7f0d82ea3eb0
  7845 ms  0x14dd PR_Close()
  7845 ms  0x14dd fd:0x7f0d82ea3eb0
  7846 ms  0x14dd PR_Close()
  7846 ms  0x14dd fd:0x7f0d82b3e1f0
  7846 ms  0x14dd PR_Close()
  7846 ms  0x14dd fd:0x7f0d82ea3f10
  7847 ms  0x14dd PR_Close()
  7847 ms  0x14dd fd:0x7f0d82b3e1f0
  7847 ms  0x14dd PR_Close()
  7847 ms  0x14dd fd:0x7f0d82ea3f10
           /* TID 0x14e8 */
  7850 ms  0x14e8 SECKEY_CreateECPrivateKey()
  7850 ms  0x14e8 cx:0x7f0d82543a68
  7850 ms     | 0x14e8 EC_ValidatePublicKey()
  7850 ms     | 0x14e8 ret:0x0
  7850 ms  0x14e8 ret:0x7f0d8250a020::7f0d8250a020  10 1a e6 82                                      ....
  7850 ms  0x14e8 SECKEY_CreateECPrivateKey()
  7850 ms  0x14e8 cx:0x7f0d82543a68
  7851 ms     | 0x14e8 EC_ValidatePublicKey()
  7852 ms     | 0x14e8 ret:0x0
  7853 ms  0x14e8 ret:0x7f0d82519020::7f0d82519020  90 1c e6 82                                      ....
           /* TID 0x14dd */
  7853 ms  0x14dd PR_Close()
  7853 ms  0x14dd fd:0x7f0d82a61280
  7854 ms  0x14dd PR_Close()
  7854 ms  0x14dd fd:0x7f0d82a61280
  7856 ms  0x14dd PR_Close()
  7856 ms  0x14dd fd:0x7f0d82b3e1f0
  7856 ms  0x14dd PR_Close()
  7856 ms  0x14dd fd:0x7f0d82ea3fa0
  7857 ms  0x14dd PR_Close()
  7857 ms  0x14dd fd:0x7f0d82b3e1f0
  7857 ms  0x14dd PR_Close()
  7857 ms  0x14dd fd:0x7f0d82ea3fa0
  7859 ms  0x14dd PR_Close()
  7859 ms  0x14dd fd:0x7f0d82ea3fd0
  7863 ms  0x14dd PR_Close()
  7863 ms  0x14dd fd:0x7f0d82ea3fd0
           /* TID 0x14e8 */
  7866 ms  0x14e8 SECKEY_CreateECPrivateKey()
  7866 ms  0x14e8 cx:0x7f0d82543c08
  7867 ms     | 0x14e8 EC_ValidatePublicKey()
  7867 ms     | 0x14e8 ret:0x0
  7867 ms  0x14e8 ret:0x7f0d8251d020::7f0d8251d020  d0 d8 e9 82                                      ....
  7867 ms  0x14e8 SECKEY_CreateECPrivateKey()
  7867 ms  0x14e8 cx:0x7f0d82543c08
  7867 ms     | 0x14e8 EC_ValidatePublicKey()
  7869 ms     | 0x14e8 ret:0x0
  7869 ms  0x14e8 ret:0x7f0d8251f020::7f0d8251f020  f0 db e9 82                                      ....
           /* TID 0x14dd */
  7872 ms  0x14dd PR_Close()
  7872 ms  0x14dd fd:0x7f0d938194c0
  7873 ms  0x14dd PR_Close()
  7873 ms  0x14dd fd:0x7f0d938194c0
  7875 ms  0x14dd PR_Close()
  7875 ms  0x14dd fd:0x7f0d938194f0
           /* TID 0x1502 */
  7882 ms  0x1502 PR_Close()
  7882 ms  0x1502 fd:0x7f0d82e0aee0
           /* TID 0x14dd */
  7883 ms  0x14dd PR_Close()
  7883 ms  0x14dd fd:0x7f0d82b3e1f0
           /* TID 0x1502 */
  7883 ms  0x1502 PR_Close()
  7883 ms  0x1502 fd:0x7f0d82e0aee0
           /* TID 0x14dd */
  7883 ms  0x14dd PR_Close()
  7883 ms  0x14dd fd:0x7f0d93819610
           /* TID 0x1502 */
  7886 ms  0x1502 PR_Close()
  7886 ms  0x1502 fd:0x7f0d93819550
  7910 ms  0x1502 PR_Close()
  7910 ms  0x1502 fd:0x7f0d826c07f0
           /* TID 0x14e8 */
  7912 ms  SECKEY_ECParamsToKeySize()
  7912 ms  0x14e8 ret:0x100
  7912 ms  0x14e8 SECKEY_CreateECPrivateKey()
  7912 ms  0x14e8 cx:0x7f0d82543a68
  7913 ms     | 0x14e8 EC_ValidatePublicKey()
  7914 ms     | 0x14e8 ret:0x0
  7914 ms  0x14e8 ret:0x7f0d82e6c820::7f0d82e6c820  b0 b0 68 82                                      ..h.
  7914 ms  0x14e8 PK11_PubDeriveWithKDF()
  7914 ms  0x14e8 seckey:0x7f0d82e6c820
  7914 ms     | 0x14e8 EC_ValidatePublicKey()
  7916 ms     | 0x14e8 ret:0x0
  7917 ms  0x14e8 ret:0x7f0d82ad2900
  7917 ms  0x14e8 PK11_DeriveWithFlags()
  7917 ms  0x14e8 basekey:0x7f0d82ad2900
  7917 ms     | 0x14e8 PK11_DeriveWithTemplate()
  7917 ms  0x14e8 ret:0x7f0d82ad2880
  7917 ms  0x14e8 PK11_Derive()
  7917 ms  0x14e8 basekey:0x7f0d82ad2880
  7917 ms     | 0x14e8 PK11_DeriveWithTemplate()
  7917 ms  0x14e8 ret:0x7f0d9d5a1700
  7917 ms  0x14e8 SECKEY_DestroyPrivateKey()
  7917 ms  0x14e8 privk:0x7f0d82e6c820::7f0d82e6c820  b0 b0 68 82                                      ..h.
  7917 ms  0x14e8 privk:0x7f0d82e6c820::7f0d82e6c820  e5 e5 e5 e5                                      ....
  7917 ms  0x14e8 PK11_Encrypt()
  7917 ms  0x14e8 symkey:0x7f0d82ad2980
           /* TID 0x14e2 */
  7932 ms  0x14e2 PR_Close()
  7932 ms  0x14e2 fd:0x7f0d9d50ce20
           /* TID 0x14e8 */
  7933 ms  SECKEY_ECParamsToKeySize()
  7933 ms  0x14e8 ret:0x100
  7934 ms  0x14e8 SECKEY_CreateECPrivateKey()
  7934 ms  0x14e8 cx:0x7f0d82543c08
  7934 ms     | 0x14e8 EC_ValidatePublicKey()
  7936 ms     | 0x14e8 ret:0x0
  7936 ms  0x14e8 ret:0x7f0d82e71020::7f0d82e71020  20 24 78 82                                       $x.
  7936 ms  0x14e8 PK11_PubDeriveWithKDF()
  7936 ms  0x14e8 seckey:0x7f0d82e71020
  7936 ms     | 0x14e8 EC_ValidatePublicKey()
  7937 ms     | 0x14e8 ret:0x0
  7938 ms  0x14e8 ret:0x7f0d82ad2900
  7938 ms  0x14e8 PK11_DeriveWithFlags()
  7938 ms  0x14e8 basekey:0x7f0d82ad2900
  7938 ms     | 0x14e8 PK11_DeriveWithTemplate()
  7938 ms  0x14e8 ret:0x7f0d9c8d4a80
  7938 ms  0x14e8 PK11_Derive()
  7938 ms  0x14e8 basekey:0x7f0d9c8d4a80
  7939 ms     | 0x14e8 PK11_DeriveWithTemplate()
  7939 ms  0x14e8 ret:0x7f0d82734500
  7939 ms  0x14e8 SECKEY_DestroyPrivateKey()
  7939 ms  0x14e8 privk:0x7f0d82e71020::7f0d82e71020  20 24 78 82                                       $x.
  7939 ms  0x14e8 privk:0x7f0d82e71020::7f0d82e71020  e5 e5 e5 e5                                      ....
  7939 ms  0x14e8 PK11_Encrypt()
  7939 ms  0x14e8 symkey:0x7f0d9d5a2f00
           /* TID 0x1502 */
  7940 ms  0x1502 PR_Close()
  7940 ms  0x1502 fd:0x7f0d826c0d90
           /* TID 0x14e2 */
  7943 ms  0x14e2 PR_Close()
  7943 ms  0x14e2 fd:0x7f0d99b677f0
           /* TID 0x14dd */
  7951 ms  0x14dd PR_Close()
  7951 ms  0x14dd fd:0x7f0d82b3e1f0
  7951 ms  0x14dd PR_Close()
  7951 ms  0x14dd fd:0x7f0d827bfb20
           /* TID 0x14e8 */
  7951 ms  0x14e8 SSL_AuthCertificateComplete()
  7951 ms  0x14e8 fd:0x7f0d82a61820
  7951 ms  0x14e8 err:0x0
  7951 ms  0x14e8 PR_Close()
  7951 ms  0x14e8 fd:0x7f0d82a61820
  7952 ms     | 0x14e8 SECKEY_DestroyPrivateKey()
  7952 ms     | 0x14e8 privk:0x7f0d8251f020::7f0d8251f020  f0 db e9 82                                      ....
  7952 ms     | 0x14e8 privk:0x7f0d8251f020::7f0d8251f020  e5 e5 e5 e5                                      ....
  7952 ms     | 0x14e8 SECKEY_DestroyPrivateKey()
  7952 ms     | 0x14e8 privk:0x7f0d8251d020::7f0d8251d020  d0 d8 e9 82                                      ....
  7952 ms     | 0x14e8 privk:0x7f0d8251d020::7f0d8251d020  e5 e5 e5 e5                                      ....
  7952 ms  0x14e8 PR_Close()
  7952 ms  0x14e8 fd:0x7f0d82a61520
  7952 ms     | 0x14e8 SECKEY_DestroyPrivateKey()
  7952 ms     | 0x14e8 privk:0x7f0d82519020::7f0d82519020  90 1c e6 82                                      ....
  7952 ms     | 0x14e8 privk:0x7f0d82519020::7f0d82519020  e5 e5 e5 e5                                      ....
  7952 ms     | 0x14e8 SECKEY_DestroyPrivateKey()
  7952 ms     | 0x14e8 privk:0x7f0d8250a020::7f0d8250a020  10 1a e6 82                                      ....
  7952 ms     | 0x14e8 privk:0x7f0d8250a020::7f0d8250a020  e5 e5 e5 e5                                      ....
  7953 ms  0x14e8 PR_Close()
  7953 ms  0x14e8 fd:0x7f0d940fc850
           /* TID 0x1540 */
  7953 ms  0x1540 PR_Close()
  7953 ms  0x1540 fd:0x7f0d826c0a00
  7953 ms  0x1540 PR_Close()
  7953 ms  0x1540 fd:0x7f0d826c0a00
  7953 ms  0x1540 PR_Close()
  7953 ms  0x1540 fd:0x7f0d826c0a00
  7954 ms  0x1540 PR_Close()
  7954 ms  0x1540 fd:0x7f0d826c0a90
           /* TID 0x1502 */
  7954 ms  0x1502 PR_Close()
  7954 ms  0x1502 fd:0x7f0d826c0a90
           /* TID 0x14f0 */
  7957 ms  0x14f0 PR_Close()
  7957 ms  0x14f0 fd:0x7f0d827bfe20
  7957 ms  0x14f0 PR_Close()
  7957 ms  0x14f0 fd:0x7f0d827bfe50
           /* TID 0x14e2 */
  7964 ms  0x14e2 PR_Close()
  7964 ms  0x14e2 fd:0x7f0d9853f3d0
           /* TID 0x14dd */
  7966 ms  0x14dd PR_Close()
  7966 ms  0x14dd fd:0x7f0d827bfb80
  7967 ms  0x14dd PR_Close()
  7967 ms  0x14dd fd:0x7f0d827bff10
           /* TID 0x1502 */
  7968 ms  0x1502 PR_Close()
  7968 ms  0x1502 fd:0x7f0d827bff40
  7970 ms  0x1502 PR_Close()
  7970 ms  0x1502 fd:0x7f0d827bf580
  8002 ms  0x1502 PR_Close()
  8002 ms  0x1502 fd:0x7f0d826c0880
  8013 ms  0x1502 PR_Close()
  8013 ms  0x1502 fd:0x7f0d826c0880
  8019 ms  0x1502 PR_Close()
  8019 ms  0x1502 fd:0x7f0d826c0c40
  8021 ms  0x1502 PR_Close()
  8021 ms  0x1502 fd:0x7f0d826c0d30
  8039 ms  0x1502 PR_Close()
  8039 ms  0x1502 fd:0x7f0d827bf670
  8046 ms  0x1502 PR_Close()
  8046 ms  0x1502 fd:0x7f0d82a611f0
  8053 ms  0x1502 PR_Close()
  8053 ms  0x1502 fd:0x7f0d82a61be0
  8063 ms  0x1502 PR_Close()
  8063 ms  0x1502 fd:0x7f0d82abb130
  8065 ms  0x1502 PR_Close()
  8065 ms  0x1502 fd:0x7f0d82abb130
           /* TID 0x14dd */
  8222 ms  0x14dd PR_Close()
  8222 ms  0x14dd fd:0x7f0d827bf850
  8222 ms  0x14dd PR_Close()
  8222 ms  0x14dd fd:0x7f0d827bf850
  8228 ms  0x14dd PR_Close()
  8228 ms  0x14dd fd:0x7f0dbbdda130
  8228 ms  0x14dd PR_Close()
  8228 ms  0x14dd fd:0x7f0dbbdda190
Process terminated
