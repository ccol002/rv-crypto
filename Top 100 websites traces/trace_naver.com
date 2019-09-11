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
           /* TID 0x7bb6 */
   179 ms  0x7bb6 SSL_ImportFD()
   180 ms  0x7bb6 ret:0x7fb2192a68b0
   180 ms  0x7bb6 SSL_AuthCertificateHook()
   180 ms  0x7bb6 fd:0x7fb2192a68b0
   180 ms  0x7bb6 ret:0x0
   180 ms  0x7bb6 PR_Connect()
   180 ms  0x7bb6 fd:0x7fb2192a68b0
           /* TID 0x7bbe */
   182 ms  0x7bbe PR_Close()
   182 ms  0x7bbe fd:0x7fb2192a6a30
           /* TID 0x7bb6 */
   397 ms  0x7bb6 SECKEY_CreateECPrivateKey()
   397 ms  0x7bb6 cx:0x7fb2192a9e28
   399 ms     | 0x7bb6 EC_ValidatePublicKey()
   399 ms     | 0x7bb6 ret:0x0
   399 ms  0x7bb6 ret:0x7fb21946d020::7fb21946d020  60 ca 4d 19                                      `.M.
   400 ms  0x7bb6 SECKEY_CreateECPrivateKey()
   400 ms  0x7bb6 cx:0x7fb2192a9e28
   402 ms     | 0x7bb6 EC_ValidatePublicKey()
   407 ms     | 0x7bb6 ret:0x0
   407 ms  0x7bb6 ret:0x7fb21946f020::7fb21946f020  40 cc 4d 19                                      @.M.
   630 ms  SECKEY_ECParamsToKeySize()
   630 ms  0x7bb6 ret:0x100
   630 ms  0x7bb6 SECKEY_CreateECPrivateKey()
   630 ms  0x7bb6 cx:0x7fb2192a9e28
   632 ms     | 0x7bb6 EC_ValidatePublicKey()
   635 ms     | 0x7bb6 ret:0x0
   635 ms  0x7bb6 ret:0x7fb219478020::7fb219478020  90 72 41 08                                      .rA.
   636 ms  0x7bb6 PK11_PubDeriveWithKDF()
   636 ms  0x7bb6 seckey:0x7fb219478020
   636 ms     | 0x7bb6 EC_ValidatePublicKey()
   639 ms     | 0x7bb6 ret:0x0
   644 ms  0x7bb6 ret:0x7fb2234af500
   644 ms  0x7bb6 PK11_DeriveWithFlags()
   644 ms  0x7bb6 basekey:0x7fb2234af500
   644 ms     | 0x7bb6 PK11_DeriveWithTemplate()
   644 ms  0x7bb6 ret:0x7fb208413600
   644 ms  0x7bb6 PK11_Derive()
   644 ms  0x7bb6 basekey:0x7fb208413600
   644 ms     | 0x7bb6 PK11_DeriveWithTemplate()
   644 ms  0x7bb6 ret:0x7fb208413680
   644 ms  0x7bb6 SECKEY_DestroyPrivateKey()
   644 ms  0x7bb6 privk:0x7fb219478020::7fb219478020  90 72 41 08                                      .rA.
   644 ms  0x7bb6 privk:0x7fb219478020::7fb219478020  e5 e5 e5 e5                                      ....
   644 ms  0x7bb6 PK11_Encrypt()
   644 ms  0x7bb6 symkey:0x7fb208413800
   645 ms  0x7bb6 PR_Connect()
   645 ms  0x7bb6 fd:0x7fb219429be0
           /* TID 0x7c0f */
   663 ms  0x7c0f PR_Close()
   663 ms  0x7c0f fd:0x7fb219429790
           /* TID 0x7bbe */
   699 ms  0x7bbe PR_Close()
   699 ms  0x7bbe fd:0x7fb219429730
           /* TID 0x7c14 */
   699 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   699 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
   700 ms  0x7bb6 SSL_AuthCertificateComplete()
   700 ms  0x7bb6 fd:0x7fb2192a68b0
   700 ms  0x7bb6 err:0x0
   700 ms  0x7bb6 PK11_Encrypt()
   700 ms  0x7bb6 symkey:0x7fb208413800
           /* TID 0x7c0f */
   717 ms  0x7c0f PR_Close()
   717 ms  0x7c0f fd:0x7fb219429760
   721 ms  0x7c0f PR_Close()
   721 ms  0x7c0f fd:0x7fb219429760
           /* TID 0x7bb6 */
   863 ms  0x7bb6 SECKEY_DestroyPrivateKey()
   863 ms  0x7bb6 privk:0x7fb21946f020::7fb21946f020  40 cc 4d 19                                      @.M.
   863 ms  0x7bb6 privk:0x7fb21946f020::7fb21946f020  e5 e5 e5 e5                                      ....
   863 ms  0x7bb6 SECKEY_DestroyPrivateKey()
   863 ms  0x7bb6 privk:0x7fb21946d020::7fb21946d020  60 ca 4d 19                                      `.M.
   864 ms  0x7bb6 privk:0x7fb21946d020::7fb21946d020  e5 e5 e5 e5                                      ....
  1087 ms  0x7bb6 SSL_ImportFD()
  1087 ms  0x7bb6 ret:0x7fb219429cd0
  1087 ms  0x7bb6 SSL_AuthCertificateHook()
  1087 ms  0x7bb6 fd:0x7fb219429cd0
  1087 ms  0x7bb6 ret:0x0
  1088 ms  0x7bb6 PR_Connect()
  1088 ms  0x7bb6 fd:0x7fb219429cd0
  1113 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  1113 ms  0x7bb6 cx:0x7fb208428728
  1114 ms     | 0x7bb6 EC_ValidatePublicKey()
  1114 ms     | 0x7bb6 ret:0x0
  1114 ms  0x7bb6 ret:0x7fb21946e020::7fb21946e020  d0 78 41 08                                      .xA.
  1114 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  1114 ms  0x7bb6 cx:0x7fb208428728
  1115 ms     | 0x7bb6 EC_ValidatePublicKey()
  1117 ms     | 0x7bb6 ret:0x0
  1117 ms  0x7bb6 ret:0x7fb219474020::7fb219474020  b0 7a 41 08                                      .zA.
           /* TID 0x7c14 */
  1170 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1170 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
  1171 ms  SECKEY_ECParamsToKeySize()
  1171 ms  0x7bb6 ret:0x100
  1171 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  1171 ms  0x7bb6 cx:0x7fb208428728
  1173 ms     | 0x7bb6 EC_ValidatePublicKey()
  1178 ms     | 0x7bb6 ret:0x0
  1178 ms  0x7bb6 ret:0x7fb219477820::7fb219477820  30 7d 41 08                                      0}A.
  1178 ms  0x7bb6 PK11_PubDeriveWithKDF()
  1178 ms  0x7bb6 seckey:0x7fb219477820
  1178 ms     | 0x7bb6 EC_ValidatePublicKey()
  1182 ms     | 0x7bb6 ret:0x0
  1186 ms  0x7bb6 ret:0x7fb2234af500
  1186 ms  0x7bb6 PK11_DeriveWithFlags()
  1186 ms  0x7bb6 basekey:0x7fb2234af500
  1186 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  1186 ms  0x7bb6 ret:0x7fb208414500
  1186 ms  0x7bb6 PK11_Derive()
  1186 ms  0x7bb6 basekey:0x7fb208414500
  1186 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  1186 ms  0x7bb6 ret:0x7fb208414580
  1187 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  1187 ms  0x7bb6 privk:0x7fb219477820::7fb219477820  30 7d 41 08                                      0}A.
  1187 ms  0x7bb6 privk:0x7fb219477820::7fb219477820  e5 e5 e5 e5                                      ....
  1187 ms  0x7bb6 PK11_Encrypt()
  1187 ms  0x7bb6 symkey:0x7fb208414700
  1187 ms  0x7bb6 SSL_AuthCertificateComplete()
  1187 ms  0x7bb6 fd:0x7fb219429cd0
  1187 ms  0x7bb6 err:0x0
  1188 ms  0x7bb6 PK11_Encrypt()
  1188 ms  0x7bb6 symkey:0x7fb208414700
  1242 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  1242 ms  0x7bb6 privk:0x7fb219474020::7fb219474020  b0 7a 41 08                                      .zA.
  1242 ms  0x7bb6 privk:0x7fb219474020::7fb219474020  e5 e5 e5 e5                                      ....
  1243 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  1243 ms  0x7bb6 privk:0x7fb21946e020::7fb21946e020  d0 78 41 08                                      .xA.
  1243 ms  0x7bb6 privk:0x7fb21946e020::7fb21946e020  e5 e5 e5 e5                                      ....
  1246 ms  0x7bb6 PK11_Encrypt()
  1246 ms  0x7bb6 symkey:0x7fb208414700
  1276 ms  0x7bb6 PK11_Encrypt()
  1276 ms  0x7bb6 symkey:0x7fb208414700
  1307 ms  0x7bb6 PK11_Encrypt()
  1307 ms  0x7bb6 symkey:0x7fb208414700
  1339 ms  0x7bb6 PK11_Encrypt()
  1339 ms  0x7bb6 symkey:0x7fb208414700
  1455 ms  0x7bb6 PK11_Encrypt()
  1455 ms  0x7bb6 symkey:0x7fb208414700
  1487 ms  0x7bb6 PK11_Encrypt()
  1487 ms  0x7bb6 symkey:0x7fb208414700
  1518 ms  0x7bb6 PK11_Encrypt()
  1518 ms  0x7bb6 symkey:0x7fb208414700
           /* TID 0x7c0c */
  1546 ms  0x7c0c PR_Close()
  1546 ms  0x7c0c fd:0x7fb219429e80
  1546 ms  0x7c0c PR_Close()
  1546 ms  0x7c0c fd:0x7fb219429ee0
  1546 ms  0x7c0c PR_Close()
  1546 ms  0x7c0c fd:0x7fb219429e80
  1546 ms  0x7c0c PR_Close()
  1546 ms  0x7c0c fd:0x7fb219429ee0
  1546 ms  0x7c0c PR_Close()
  1546 ms  0x7c0c fd:0x7fb219429e80
  1546 ms  0x7c0c PR_Close()
  1546 ms  0x7c0c fd:0x7fb219429ee0
  1546 ms  0x7c0c PR_Close()
  1546 ms  0x7c0c fd:0x7fb219429e80
  1546 ms  0x7c0c PR_Close()
  1546 ms  0x7c0c fd:0x7fb219429ee0
  1546 ms  0x7c0c PR_Close()
  1546 ms  0x7c0c fd:0x7fb219429e80
  1546 ms  0x7c0c PR_Close()
  1546 ms  0x7c0c fd:0x7fb219429ee0
  1546 ms  0x7c0c PR_Close()
  1546 ms  0x7c0c fd:0x7fb219429e80
  1546 ms  0x7c0c PR_Close()
  1546 ms  0x7c0c fd:0x7fb219429ee0
  1547 ms  0x7c0c PR_Close()
  1547 ms  0x7c0c fd:0x7fb219429e80
  1547 ms  0x7c0c PR_Close()
  1547 ms  0x7c0c fd:0x7fb219429ee0
  1547 ms  0x7c0c PR_Close()
  1547 ms  0x7c0c fd:0x7fb219429e80
  1547 ms  0x7c0c PR_Close()
  1547 ms  0x7c0c fd:0x7fb219429ee0
  1547 ms  0x7c0c PR_Close()
  1547 ms  0x7c0c fd:0x7fb219429e80
  1547 ms  0x7c0c PR_Close()
  1547 ms  0x7c0c fd:0x7fb219429ee0
  1547 ms  0x7c0c PR_Close()
  1547 ms  0x7c0c fd:0x7fb219429e80
  1547 ms  0x7c0c PR_Close()
  1547 ms  0x7c0c fd:0x7fb219429ee0
  1547 ms  0x7c0c PR_Close()
  1547 ms  0x7c0c fd:0x7fb219429e80
  1547 ms  0x7c0c PR_Close()
  1547 ms  0x7c0c fd:0x7fb219429ee0
  1547 ms  0x7c0c PR_Close()
  1547 ms  0x7c0c fd:0x7fb219429e80
  1547 ms  0x7c0c PR_Close()
  1547 ms  0x7c0c fd:0x7fb219429ee0
  1547 ms  0x7c0c PR_Close()
  1547 ms  0x7c0c fd:0x7fb219429e80
  1547 ms  0x7c0c PR_Close()
  1547 ms  0x7c0c fd:0x7fb219429ee0
  1548 ms  0x7c0c PR_Close()
  1548 ms  0x7c0c fd:0x7fb219429e80
  1548 ms  0x7c0c PR_Close()
  1548 ms  0x7c0c fd:0x7fb219429ee0
  1550 ms  0x7c0c PR_Close()
  1550 ms  0x7c0c fd:0x7fb219429e80
  1550 ms  0x7c0c PR_Close()
  1550 ms  0x7c0c fd:0x7fb219429dc0
  1552 ms  0x7c0c PR_Close()
  1552 ms  0x7c0c fd:0x7fb219429dc0
  1552 ms  0x7c0c PR_Close()
  1552 ms  0x7c0c fd:0x7fb219429e80
  1554 ms  0x7c0c PR_Close()
  1554 ms  0x7c0c fd:0x7fb219429e80
  1555 ms  0x7c0c PR_Close()
  1555 ms  0x7c0c fd:0x7fb219429e80
  1557 ms  0x7c0c PR_Close()
  1557 ms  0x7c0c fd:0x7fb219429e80
  1557 ms  0x7c0c PR_Close()
  1557 ms  0x7c0c fd:0x7fb219429e80
  1605 ms  0x7c0c PR_Close()
  1605 ms  0x7c0c fd:0x7fb219429e80
  1606 ms  0x7c0c PR_Close()
  1606 ms  0x7c0c fd:0x7fb219429e80
  1613 ms  0x7c0c PR_Close()
  1613 ms  0x7c0c fd:0x7fb219429e80
  1613 ms  0x7c0c PR_Close()
  1613 ms  0x7c0c fd:0x7fb219429e80
  1620 ms  0x7c0c PR_Close()
  1620 ms  0x7c0c fd:0x7fb219429e80
  1620 ms  0x7c0c PR_Close()
  1620 ms  0x7c0c fd:0x7fb219429e80
  1622 ms  0x7c0c PR_Close()
  1622 ms  0x7c0c fd:0x7fb219429e80
  1622 ms  0x7c0c PR_Close()
  1622 ms  0x7c0c fd:0x7fb219429e80
           /* TID 0x7c09 */
  1622 ms  0x7c09 PR_Close()
  1622 ms  0x7c09 fd:0x7fb219429e80
  1622 ms  0x7c09 PR_Close()
  1622 ms  0x7c09 fd:0x7fb219429e80
  1622 ms  0x7c09 PR_Close()
  1622 ms  0x7c09 fd:0x7fb219429e80
  1622 ms  0x7c09 PR_Close()
  1622 ms  0x7c09 fd:0x7fb219429e80
  1622 ms  0x7c09 PR_Close()
  1622 ms  0x7c09 fd:0x7fb219429e80
  1622 ms  0x7c09 PR_Close()
  1622 ms  0x7c09 fd:0x7fb219429e80
  1622 ms  0x7c09 PR_Close()
  1622 ms  0x7c09 fd:0x7fb219429e80
  1622 ms  0x7c09 PR_Close()
  1622 ms  0x7c09 fd:0x7fb219429e80
  1622 ms  0x7c09 PR_Close()
  1622 ms  0x7c09 fd:0x7fb219429e80
  1622 ms  0x7c09 PR_Close()
  1622 ms  0x7c09 fd:0x7fb219429e80
  1622 ms  0x7c09 PR_Close()
  1622 ms  0x7c09 fd:0x7fb219429e80
  1622 ms  0x7c09 PR_Close()
  1622 ms  0x7c09 fd:0x7fb219429e80
  1622 ms  0x7c09 PR_Close()
  1622 ms  0x7c09 fd:0x7fb219429e80
  1622 ms  0x7c09 PR_Close()
  1622 ms  0x7c09 fd:0x7fb219429e80
  1622 ms  0x7c09 PR_Close()
  1622 ms  0x7c09 fd:0x7fb219429e80
           /* TID 0x7c0f */
  2125 ms  0x7c0f PR_Close()
  2125 ms  0x7c0f fd:0x7fb2083fa220
  2128 ms  0x7c0f PR_Close()
  2128 ms  0x7c0f fd:0x7fb2083fa220
  2844 ms  0x7c0f PR_Close()
  2844 ms  0x7c0f fd:0x7fb2083fa340
           /* TID 0x7bbe */
  4289 ms  0x7bbe PR_Close()
  4289 ms  0x7bbe fd:0x7fb2083fa430
  4290 ms  0x7bbe PR_Close()
  4290 ms  0x7bbe fd:0x7fb2083fa490
           /* TID 0x7bb6 */
  4845 ms  0x7bb6 SSL_ImportFD()
  4845 ms  0x7bb6 ret:0x7fb2083b9df0
  4845 ms  0x7bb6 SSL_AuthCertificateHook()
  4845 ms  0x7bb6 fd:0x7fb2083b9df0
  4845 ms  0x7bb6 ret:0x0
  4846 ms  0x7bb6 PR_Connect()
  4846 ms  0x7bb6 fd:0x7fb2083b9df0
  4929 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  4929 ms  0x7bb6 cx:0x7fb208428a68
  4931 ms     | 0x7bb6 EC_ValidatePublicKey()
  4931 ms     | 0x7bb6 ret:0x0
  4931 ms  0x7bb6 ret:0x7fb21f061820::7fb21f061820  50 66 25 08                                      Pf%.
  4931 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  4931 ms  0x7bb6 cx:0x7fb208428a68
  4934 ms     | 0x7bb6 EC_ValidatePublicKey()
  4939 ms     | 0x7bb6 ret:0x0
  4939 ms  0x7bb6 ret:0x7fb208210020::7fb208210020  d0 68 25 08                                      .h%.
           /* TID 0x7c14 */
  5027 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5028 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
  5031 ms  SECKEY_ECParamsToKeySize()
  5031 ms  0x7bb6 ret:0x100
  5031 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  5031 ms  0x7bb6 cx:0x7fb208428a68
  5035 ms     | 0x7bb6 EC_ValidatePublicKey()
  5043 ms     | 0x7bb6 ret:0x0
  5044 ms  0x7bb6 ret:0x7fb208216820::7fb208216820  90 6c 25 08                                      .l%.
  5044 ms  0x7bb6 PK11_PubDeriveWithKDF()
  5044 ms  0x7bb6 seckey:0x7fb208216820
  5044 ms     | 0x7bb6 EC_ValidatePublicKey()
  5049 ms     | 0x7bb6 ret:0x0
  5053 ms  0x7bb6 ret:0x7fb2234af500
  5053 ms  0x7bb6 PK11_DeriveWithFlags()
  5053 ms  0x7bb6 basekey:0x7fb2234af500
  5053 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  5053 ms  0x7bb6 ret:0x7fb2083e8680
  5053 ms  0x7bb6 PK11_Derive()
  5053 ms  0x7bb6 basekey:0x7fb2083e8680
  5053 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  5053 ms  0x7bb6 ret:0x7fb2083e8780
  5053 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  5053 ms  0x7bb6 privk:0x7fb208216820::7fb208216820  90 6c 25 08                                      .l%.
  5053 ms  0x7bb6 privk:0x7fb208216820::7fb208216820  e5 e5 e5 e5                                      ....
  5054 ms  0x7bb6 PK11_Encrypt()
  5054 ms  0x7bb6 symkey:0x7fb2083e8b80
  5054 ms  0x7bb6 SSL_AuthCertificateComplete()
  5054 ms  0x7bb6 fd:0x7fb2083b9df0
  5054 ms  0x7bb6 err:0x0
  5056 ms  0x7bb6 PK11_Encrypt()
  5056 ms  0x7bb6 symkey:0x7fb2083e8b80
  5056 ms  0x7bb6 PK11_Encrypt()
  5056 ms  0x7bb6 symkey:0x7fb2083e8b80
  5137 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  5137 ms  0x7bb6 privk:0x7fb208210020::7fb208210020  d0 68 25 08                                      .h%.
  5138 ms  0x7bb6 privk:0x7fb208210020::7fb208210020  e5 e5 e5 e5                                      ....
  5138 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  5138 ms  0x7bb6 privk:0x7fb21f061820::7fb21f061820  50 66 25 08                                      Pf%.
  5138 ms  0x7bb6 privk:0x7fb21f061820::7fb21f061820  e5 e5 e5 e5                                      ....
  5220 ms  0x7bb6 PK11_Encrypt()
  5220 ms  0x7bb6 symkey:0x7fb2083e8b80
           /* TID 0x7bcd */
  6011 ms  0x7bcd PR_Close()
  6011 ms  0x7bcd fd:0x7fb219f690d0
           /* TID 0x7bb6 */
  6125 ms  0x7bb6 SSL_ImportFD()
  6125 ms  0x7bb6 ret:0x7fb20834e3d0
  6125 ms  0x7bb6 SSL_AuthCertificateHook()
  6125 ms  0x7bb6 fd:0x7fb20834e3d0
  6125 ms  0x7bb6 ret:0x0
  6125 ms  0x7bb6 PR_Connect()
  6125 ms  0x7bb6 fd:0x7fb20834e3d0
  6125 ms  0x7bb6 SSL_ImportFD()
  6125 ms  0x7bb6 ret:0x7fb20834e400
  6125 ms  0x7bb6 SSL_AuthCertificateHook()
  6125 ms  0x7bb6 fd:0x7fb20834e400
  6125 ms  0x7bb6 ret:0x0
  6125 ms  0x7bb6 PR_Connect()
  6125 ms  0x7bb6 fd:0x7fb20834e400
  6125 ms  0x7bb6 SSL_ImportFD()
  6125 ms  0x7bb6 ret:0x7fb20834e2e0
  6125 ms  0x7bb6 SSL_AuthCertificateHook()
  6125 ms  0x7bb6 fd:0x7fb20834e2e0
  6125 ms  0x7bb6 ret:0x0
  6125 ms  0x7bb6 PR_Connect()
  6125 ms  0x7bb6 fd:0x7fb20834e2e0
  6126 ms  0x7bb6 SSL_ImportFD()
  6126 ms  0x7bb6 ret:0x7fb20834e310
  6126 ms  0x7bb6 SSL_AuthCertificateHook()
  6126 ms  0x7bb6 fd:0x7fb20834e310
  6126 ms  0x7bb6 ret:0x0
  6126 ms  0x7bb6 PR_Connect()
  6126 ms  0x7bb6 fd:0x7fb20834e310
  6162 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6162 ms  0x7bb6 cx:0x7fb208429768
  6163 ms     | 0x7bb6 EC_ValidatePublicKey()
  6163 ms     | 0x7bb6 ret:0x0
  6163 ms  0x7bb6 ret:0x7fb20846d020::7fb20846d020  10 c5 33 08                                      ..3.
  6164 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6164 ms  0x7bb6 cx:0x7fb208429768
  6165 ms     | 0x7bb6 EC_ValidatePublicKey()
  6168 ms     | 0x7bb6 ret:0x0
  6168 ms  0x7bb6 ret:0x7fb20846f020::7fb20846f020  b0 ca 33 08                                      ..3.
  6170 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6170 ms  0x7bb6 cx:0x7fb2084295c8
  6172 ms     | 0x7bb6 EC_ValidatePublicKey()
  6172 ms     | 0x7bb6 ret:0x0
  6172 ms  0x7bb6 ret:0x7fb208471820::7fb208471820  20 9e 33 08                                       .3.
  6172 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6172 ms  0x7bb6 cx:0x7fb2084295c8
  6174 ms     | 0x7bb6 EC_ValidatePublicKey()
  6178 ms     | 0x7bb6 ret:0x0
  6178 ms  0x7bb6 ret:0x7fb21f4af820::7fb21f4af820  60 cf 33 08                                      `.3.
  6182 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6182 ms  0x7bb6 cx:0x7fb208429428
  6184 ms     | 0x7bb6 EC_ValidatePublicKey()
  6184 ms     | 0x7bb6 ret:0x0
  6184 ms  0x7bb6 ret:0x7fb20818a820::7fb20818a820  80 23 34 08                                      .#4.
  6184 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6184 ms  0x7bb6 cx:0x7fb208429428
  6185 ms     | 0x7bb6 EC_ValidatePublicKey()
  6189 ms     | 0x7bb6 ret:0x0
  6189 ms  0x7bb6 ret:0x7fb20818c820::7fb20818c820  70 29 34 08                                      p)4.
  6190 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6190 ms  0x7bb6 cx:0x7fb208429288
  6191 ms     | 0x7bb6 EC_ValidatePublicKey()
  6191 ms     | 0x7bb6 ret:0x0
  6191 ms  0x7bb6 ret:0x7fb20818f020::7fb20818f020  b0 2a 34 08                                      .*4.
  6191 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6191 ms  0x7bb6 cx:0x7fb208429288
  6193 ms     | 0x7bb6 EC_ValidatePublicKey()
  6196 ms     | 0x7bb6 ret:0x0
  6196 ms  0x7bb6 ret:0x7fb208191020::7fb208191020  90 2c 34 08                                      .,4.
           /* TID 0x7c14 */
  6208 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6208 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
  6208 ms  SECKEY_ECParamsToKeySize()
  6209 ms  0x7bb6 ret:0x100
  6209 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6209 ms  0x7bb6 cx:0x7fb208429768
  6210 ms     | 0x7bb6 EC_ValidatePublicKey()
  6212 ms     | 0x7bb6 ret:0x0
  6212 ms  0x7bb6 ret:0x7fb208197820::7fb208197820  50 96 3e 08                                      P.>.
  6212 ms  0x7bb6 PK11_PubDeriveWithKDF()
  6212 ms  0x7bb6 seckey:0x7fb208197820
  6212 ms     | 0x7bb6 EC_ValidatePublicKey()
  6215 ms     | 0x7bb6 ret:0x0
  6222 ms  0x7bb6 ret:0x7fb2234af500
  6222 ms  0x7bb6 PK11_DeriveWithFlags()
  6222 ms  0x7bb6 basekey:0x7fb2234af500
  6222 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6222 ms  0x7bb6 ret:0x7fb208341580
  6222 ms  0x7bb6 PK11_Derive()
  6222 ms  0x7bb6 basekey:0x7fb208341580
  6222 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6222 ms  0x7bb6 ret:0x7fb208341680
  6223 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6223 ms  0x7bb6 privk:0x7fb208197820::7fb208197820  50 96 3e 08                                      P.>.
  6223 ms  0x7bb6 privk:0x7fb208197820::7fb208197820  e5 e5 e5 e5                                      ....
  6223 ms  0x7bb6 PK11_Encrypt()
  6223 ms  0x7bb6 symkey:0x7fb208341800
  6223 ms  0x7bb6 SSL_AuthCertificateComplete()
  6223 ms  0x7bb6 fd:0x7fb20834e310
  6223 ms  0x7bb6 err:0x0
  6224 ms  0x7bb6 PK11_Encrypt()
  6224 ms  0x7bb6 symkey:0x7fb208341800
  6224 ms  0x7bb6 PK11_Encrypt()
  6224 ms  0x7bb6 symkey:0x7fb208341800
           /* TID 0x7c14 */
  6225 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6225 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
  6225 ms  SECKEY_ECParamsToKeySize()
  6225 ms  0x7bb6 ret:0x100
  6225 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6225 ms  0x7bb6 cx:0x7fb2084295c8
  6226 ms     | 0x7bb6 EC_ValidatePublicKey()
  6228 ms     | 0x7bb6 ret:0x0
  6228 ms  0x7bb6 ret:0x7fb208199820::7fb208199820  60 3f 49 08                                      `?I.
  6228 ms  0x7bb6 PK11_PubDeriveWithKDF()
  6228 ms  0x7bb6 seckey:0x7fb208199820
  6228 ms     | 0x7bb6 EC_ValidatePublicKey()
  6230 ms     | 0x7bb6 ret:0x0
  6232 ms  0x7bb6 ret:0x7fb2234af500
  6232 ms  0x7bb6 PK11_DeriveWithFlags()
  6232 ms  0x7bb6 basekey:0x7fb2234af500
  6232 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6232 ms  0x7bb6 ret:0x7fb208341980
  6232 ms  0x7bb6 PK11_Derive()
  6232 ms  0x7bb6 basekey:0x7fb208341980
  6232 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6232 ms  0x7bb6 ret:0x7fb208341a00
  6232 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6232 ms  0x7bb6 privk:0x7fb208199820::7fb208199820  60 3f 49 08                                      `?I.
  6232 ms  0x7bb6 privk:0x7fb208199820::7fb208199820  e5 e5 e5 e5                                      ....
  6232 ms  0x7bb6 PK11_Encrypt()
  6232 ms  0x7bb6 symkey:0x7fb208341b80
  6232 ms  0x7bb6 SSL_AuthCertificateComplete()
  6232 ms  0x7bb6 fd:0x7fb20834e2e0
  6232 ms  0x7bb6 err:0x0
  6235 ms  0x7bb6 PK11_Encrypt()
  6235 ms  0x7bb6 symkey:0x7fb208341b80
           /* TID 0x7c14 */
  6236 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6236 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
  6236 ms  SECKEY_ECParamsToKeySize()
  6236 ms  0x7bb6 ret:0x100
  6236 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6236 ms  0x7bb6 cx:0x7fb208429428
  6236 ms     | 0x7bb6 EC_ValidatePublicKey()
  6238 ms     | 0x7bb6 ret:0x0
  6238 ms  0x7bb6 ret:0x7fb20819b020::7fb20819b020  e0 c2 1f 28                                      ...(
  6238 ms  0x7bb6 PK11_PubDeriveWithKDF()
  6238 ms  0x7bb6 seckey:0x7fb20819b020
  6238 ms     | 0x7bb6 EC_ValidatePublicKey()
  6239 ms     | 0x7bb6 ret:0x0
  6241 ms  0x7bb6 ret:0x7fb2234af500
  6241 ms  0x7bb6 PK11_DeriveWithFlags()
  6241 ms  0x7bb6 basekey:0x7fb2234af500
  6241 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6241 ms  0x7bb6 ret:0x7fb208341c80
  6241 ms  0x7bb6 PK11_Derive()
  6241 ms  0x7bb6 basekey:0x7fb208341c80
  6241 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6241 ms  0x7bb6 ret:0x7fb208341d00
  6241 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6241 ms  0x7bb6 privk:0x7fb20819b020::7fb20819b020  e0 c2 1f 28                                      ...(
  6241 ms  0x7bb6 privk:0x7fb20819b020::7fb20819b020  e5 e5 e5 e5                                      ....
  6241 ms  0x7bb6 PK11_Encrypt()
  6241 ms  0x7bb6 symkey:0x7fb208341e80
  6242 ms  0x7bb6 PK11_Encrypt()
  6242 ms  0x7bb6 symkey:0x7fb208341800
  6242 ms  0x7bb6 SSL_AuthCertificateComplete()
  6242 ms  0x7bb6 fd:0x7fb20834e400
  6242 ms  0x7bb6 err:0x0
  6242 ms  0x7bb6 PK11_Encrypt()
  6242 ms  0x7bb6 symkey:0x7fb208341e80
           /* TID 0x7c14 */
  6243 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6243 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
  6243 ms  SECKEY_ECParamsToKeySize()
  6243 ms  0x7bb6 ret:0x100
  6243 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6243 ms  0x7bb6 cx:0x7fb208429288
  6243 ms     | 0x7bb6 EC_ValidatePublicKey()
  6245 ms     | 0x7bb6 ret:0x0
  6245 ms  0x7bb6 ret:0x7fb20819d820::7fb20819d820  60 c5 1f 28                                      `..(
  6245 ms  0x7bb6 PK11_PubDeriveWithKDF()
  6245 ms  0x7bb6 seckey:0x7fb20819d820
  6245 ms     | 0x7bb6 EC_ValidatePublicKey()
  6246 ms     | 0x7bb6 ret:0x0
  6248 ms  0x7bb6 ret:0x7fb2234af500
  6248 ms  0x7bb6 PK11_DeriveWithFlags()
  6248 ms  0x7bb6 basekey:0x7fb2234af500
  6248 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6248 ms  0x7bb6 ret:0x7fb208341f80
  6248 ms  0x7bb6 PK11_Derive()
  6248 ms  0x7bb6 basekey:0x7fb208341f80
  6248 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6248 ms  0x7bb6 ret:0x7fb2083e7400
  6248 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6248 ms  0x7bb6 privk:0x7fb20819d820::7fb20819d820  60 c5 1f 28                                      `..(
  6248 ms  0x7bb6 privk:0x7fb20819d820::7fb20819d820  e5 e5 e5 e5                                      ....
  6248 ms  0x7bb6 PK11_Encrypt()
  6248 ms  0x7bb6 symkey:0x7fb20802c180
  6253 ms  0x7bb6 PK11_Encrypt()
  6253 ms  0x7bb6 symkey:0x7fb208341800
  6253 ms  0x7bb6 SSL_AuthCertificateComplete()
  6253 ms  0x7bb6 fd:0x7fb20834e3d0
  6253 ms  0x7bb6 err:0x0
  6253 ms  0x7bb6 PK11_Encrypt()
  6253 ms  0x7bb6 symkey:0x7fb20802c180
  6253 ms  0x7bb6 PK11_Encrypt()
  6253 ms  0x7bb6 symkey:0x7fb208341800
  6260 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6260 ms  0x7bb6 privk:0x7fb20846f020::7fb20846f020  b0 ca 33 08                                      ..3.
  6260 ms  0x7bb6 privk:0x7fb20846f020::7fb20846f020  e5 e5 e5 e5                                      ....
  6260 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6260 ms  0x7bb6 privk:0x7fb20846d020::7fb20846d020  10 c5 33 08                                      ..3.
  6260 ms  0x7bb6 privk:0x7fb20846d020::7fb20846d020  e5 e5 e5 e5                                      ....
  6269 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6269 ms  0x7bb6 privk:0x7fb21f4af820::7fb21f4af820  60 cf 33 08                                      `.3.
  6269 ms  0x7bb6 privk:0x7fb21f4af820::7fb21f4af820  e5 e5 e5 e5                                      ....
  6269 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6269 ms  0x7bb6 privk:0x7fb208471820::7fb208471820  20 9e 33 08                                       .3.
  6269 ms  0x7bb6 privk:0x7fb208471820::7fb208471820  e5 e5 e5 e5                                      ....
  6269 ms  0x7bb6 PR_Close()
  6269 ms  0x7bb6 fd:0x7fb20834e2e0
  6269 ms     | 0x7bb6 PK11_Encrypt()
  6269 ms     | 0x7bb6 symkey:0x7fb208341b80
  6278 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6278 ms  0x7bb6 privk:0x7fb20818c820::7fb20818c820  70 29 34 08                                      p)4.
  6278 ms  0x7bb6 privk:0x7fb20818c820::7fb20818c820  e5 e5 e5 e5                                      ....
  6278 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6278 ms  0x7bb6 privk:0x7fb20818a820::7fb20818a820  80 23 34 08                                      .#4.
  6278 ms  0x7bb6 privk:0x7fb20818a820::7fb20818a820  e5 e5 e5 e5                                      ....
  6278 ms  0x7bb6 PR_Close()
  6278 ms  0x7bb6 fd:0x7fb20834e400
  6279 ms     | 0x7bb6 PK11_Encrypt()
  6279 ms     | 0x7bb6 symkey:0x7fb208341e80
  6285 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6285 ms  0x7bb6 privk:0x7fb208191020::7fb208191020  90 2c 34 08                                      .,4.
  6285 ms  0x7bb6 privk:0x7fb208191020::7fb208191020  e5 e5 e5 e5                                      ....
  6285 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6285 ms  0x7bb6 privk:0x7fb20818f020::7fb20818f020  b0 2a 34 08                                      .*4.
  6286 ms  0x7bb6 privk:0x7fb20818f020::7fb20818f020  e5 e5 e5 e5                                      ....
  6286 ms  0x7bb6 PR_Close()
  6286 ms  0x7bb6 fd:0x7fb20834e3d0
  6286 ms     | 0x7bb6 PK11_Encrypt()
  6286 ms     | 0x7bb6 symkey:0x7fb20802c180
  6296 ms  0x7bb6 PK11_Encrypt()
  6296 ms  0x7bb6 symkey:0x7fb208341800
           /* TID 0x7bbe */
  6300 ms  0x7bbe PR_Close()
  6300 ms  0x7bbe fd:0x7fb2082d55e0
  6302 ms  0x7bbe PR_Close()
  6302 ms  0x7bbe fd:0x7fb2082d5d60
  6377 ms  0x7bbe PR_Close()
  6377 ms  0x7bbe fd:0x7fb208302bb0
  6379 ms  0x7bbe PR_Close()
  6379 ms  0x7bbe fd:0x7fb2082d5610
           /* TID 0x7bb6 */
  6470 ms  0x7bb6 SSL_ImportFD()
  6470 ms  0x7bb6 ret:0x7fb2082d5400
  6470 ms  0x7bb6 SSL_AuthCertificateHook()
  6470 ms  0x7bb6 fd:0x7fb2082d5400
  6470 ms  0x7bb6 ret:0x0
  6471 ms  0x7bb6 PR_Connect()
  6471 ms  0x7bb6 fd:0x7fb2082d5400
  6471 ms  0x7bb6 SSL_ImportFD()
  6471 ms  0x7bb6 ret:0x7fb2082d5460
  6471 ms  0x7bb6 SSL_AuthCertificateHook()
  6471 ms  0x7bb6 fd:0x7fb2082d5460
  6471 ms  0x7bb6 ret:0x0
  6471 ms  0x7bb6 PR_Connect()
  6471 ms  0x7bb6 fd:0x7fb2082d5460
  6507 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6507 ms  0x7bb6 cx:0x7fb208429428
  6508 ms     | 0x7bb6 EC_ValidatePublicKey()
  6508 ms     | 0x7bb6 ret:0x0
  6508 ms  0x7bb6 ret:0x7fb20818b820::7fb20818b820  c0 6e 25 08                                      .n%.
  6508 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6508 ms  0x7bb6 cx:0x7fb208429428
  6509 ms     | 0x7bb6 EC_ValidatePublicKey()
  6510 ms     | 0x7bb6 ret:0x0
  6510 ms  0x7bb6 ret:0x7fb20818d820::7fb20818d820  60 c0 33 08                                      `.3.
  6511 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6511 ms  0x7bb6 cx:0x7fb208429288
  6511 ms     | 0x7bb6 EC_ValidatePublicKey()
  6511 ms     | 0x7bb6 ret:0x0
  6511 ms  0x7bb6 ret:0x7fb208190020::7fb208190020  20 c4 33 08                                       .3.
  6512 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6512 ms  0x7bb6 cx:0x7fb208429288
  6512 ms     | 0x7bb6 EC_ValidatePublicKey()
  6514 ms     | 0x7bb6 ret:0x0
  6514 ms  0x7bb6 ret:0x7fb208197020::7fb208197020  c0 c9 33 08                                      ..3.
           /* TID 0x7c14 */
  6549 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6550 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
  6550 ms  SECKEY_ECParamsToKeySize()
  6550 ms  0x7bb6 ret:0x100
  6550 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6550 ms  0x7bb6 cx:0x7fb208429428
  6551 ms     | 0x7bb6 EC_ValidatePublicKey()
  6554 ms     | 0x7bb6 ret:0x0
  6554 ms  0x7bb6 ret:0x7fb20819a020::7fb20819a020  90 22 34 08                                      ."4.
  6554 ms  0x7bb6 PK11_PubDeriveWithKDF()
  6554 ms  0x7bb6 seckey:0x7fb20819a020
  6554 ms     | 0x7bb6 EC_ValidatePublicKey()
  6556 ms     | 0x7bb6 ret:0x0
  6558 ms  0x7bb6 ret:0x7fb2083e7400
  6558 ms  0x7bb6 PK11_DeriveWithFlags()
  6558 ms  0x7bb6 basekey:0x7fb2083e7400
  6558 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6558 ms  0x7bb6 ret:0x7fb208341f80
  6558 ms  0x7bb6 PK11_Derive()
  6558 ms  0x7bb6 basekey:0x7fb208341f80
  6558 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6558 ms  0x7bb6 ret:0x7fb208341d00
  6558 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6558 ms  0x7bb6 privk:0x7fb20819a020::7fb20819a020  90 22 34 08                                      ."4.
  6558 ms  0x7bb6 privk:0x7fb20819a020::7fb20819a020  e5 e5 e5 e5                                      ....
  6559 ms  0x7bb6 PK11_Encrypt()
  6559 ms  0x7bb6 symkey:0x7fb20802c080
  6559 ms  0x7bb6 SSL_AuthCertificateComplete()
  6559 ms  0x7bb6 fd:0x7fb2082d5460
  6559 ms  0x7bb6 err:0x0
  6560 ms  0x7bb6 PK11_Encrypt()
  6560 ms  0x7bb6 symkey:0x7fb20802c080
  6560 ms  0x7bb6 PK11_Encrypt()
  6560 ms  0x7bb6 symkey:0x7fb20802c080
           /* TID 0x7c14 */
  6561 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6561 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
  6561 ms  SECKEY_ECParamsToKeySize()
  6561 ms  0x7bb6 ret:0x100
  6562 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6562 ms  0x7bb6 cx:0x7fb208429288
  6562 ms     | 0x7bb6 EC_ValidatePublicKey()
  6565 ms     | 0x7bb6 ret:0x0
  6565 ms  0x7bb6 ret:0x7fb20819c020::7fb20819c020  70 24 34 08                                      p$4.
  6565 ms  0x7bb6 PK11_PubDeriveWithKDF()
  6565 ms  0x7bb6 seckey:0x7fb20819c020
  6565 ms     | 0x7bb6 EC_ValidatePublicKey()
  6567 ms     | 0x7bb6 ret:0x0
  6569 ms  0x7bb6 ret:0x7fb2083e7400
  6569 ms  0x7bb6 PK11_DeriveWithFlags()
  6569 ms  0x7bb6 basekey:0x7fb2083e7400
  6569 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6569 ms  0x7bb6 ret:0x7fb208341c80
  6569 ms  0x7bb6 PK11_Derive()
  6569 ms  0x7bb6 basekey:0x7fb208341c80
  6569 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6569 ms  0x7bb6 ret:0x7fb208341a00
  6569 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6569 ms  0x7bb6 privk:0x7fb20819c020::7fb20819c020  70 24 34 08                                      p$4.
  6569 ms  0x7bb6 privk:0x7fb20819c020::7fb20819c020  e5 e5 e5 e5                                      ....
  6570 ms  0x7bb6 PK11_Encrypt()
  6570 ms  0x7bb6 symkey:0x7fb208341d80
  6571 ms  0x7bb6 SSL_AuthCertificateComplete()
  6571 ms  0x7bb6 fd:0x7fb2082d5400
  6571 ms  0x7bb6 err:0x0
  6571 ms  0x7bb6 PK11_Encrypt()
  6571 ms  0x7bb6 symkey:0x7fb208341d80
  6572 ms  0x7bb6 PK11_Encrypt()
  6572 ms  0x7bb6 symkey:0x7fb20802c080
  6596 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6596 ms  0x7bb6 privk:0x7fb20818d820::7fb20818d820  60 c0 33 08                                      `.3.
  6596 ms  0x7bb6 privk:0x7fb20818d820::7fb20818d820  e5 e5 e5 e5                                      ....
  6596 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6596 ms  0x7bb6 privk:0x7fb20818b820::7fb20818b820  c0 6e 25 08                                      .n%.
  6596 ms  0x7bb6 privk:0x7fb20818b820::7fb20818b820  e5 e5 e5 e5                                      ....
  6607 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6607 ms  0x7bb6 privk:0x7fb208197020::7fb208197020  c0 c9 33 08                                      ..3.
  6607 ms  0x7bb6 privk:0x7fb208197020::7fb208197020  e5 e5 e5 e5                                      ....
  6607 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6607 ms  0x7bb6 privk:0x7fb208190020::7fb208190020  20 c4 33 08                                       .3.
  6608 ms  0x7bb6 privk:0x7fb208190020::7fb208190020  e5 e5 e5 e5                                      ....
  6608 ms  0x7bb6 PR_Close()
  6608 ms  0x7bb6 fd:0x7fb2082d5400
  6608 ms     | 0x7bb6 PK11_Encrypt()
  6608 ms     | 0x7bb6 symkey:0x7fb208341d80
  6632 ms  0x7bb6 PK11_Encrypt()
  6632 ms  0x7bb6 symkey:0x7fb20802c080
           /* TID 0x7bbe */
  6636 ms  0x7bbe PR_Close()
  6636 ms  0x7bbe fd:0x7fb2082d5280
           /* TID 0x7bb6 */
  6639 ms  0x7bb6 SSL_ImportFD()
  6639 ms  0x7bb6 ret:0x7fb20834e400
  6639 ms  0x7bb6 SSL_AuthCertificateHook()
  6639 ms  0x7bb6 fd:0x7fb20834e400
  6639 ms  0x7bb6 ret:0x0
  6640 ms  0x7bb6 PK11_Encrypt()
  6640 ms  0x7bb6 symkey:0x7fb208341800
           /* TID 0x7bbe */
  6641 ms  0x7bbe PR_Close()
  6641 ms  0x7bbe fd:0x7fb208302520
           /* TID 0x7bb6 */
  6649 ms  0x7bb6 PK11_Encrypt()
  6649 ms  0x7bb6 symkey:0x7fb208341800
  6649 ms  0x7bb6 PK11_Encrypt()
  6649 ms  0x7bb6 symkey:0x7fb208341800
  6650 ms  0x7bb6 PK11_Encrypt()
  6650 ms  0x7bb6 symkey:0x7fb208341800
  6650 ms  0x7bb6 PK11_Encrypt()
  6650 ms  0x7bb6 symkey:0x7fb208341800
  6652 ms  0x7bb6 PK11_Encrypt()
  6652 ms  0x7bb6 symkey:0x7fb208341800
  6652 ms  0x7bb6 PK11_Encrypt()
  6652 ms  0x7bb6 symkey:0x7fb208341800
  6655 ms  0x7bb6 PK11_Encrypt()
  6655 ms  0x7bb6 symkey:0x7fb208341800
  6655 ms  0x7bb6 PK11_Encrypt()
  6655 ms  0x7bb6 symkey:0x7fb208341800
  6656 ms  0x7bb6 PK11_Encrypt()
  6656 ms  0x7bb6 symkey:0x7fb208341800
  6656 ms  0x7bb6 PK11_Encrypt()
  6656 ms  0x7bb6 symkey:0x7fb208341800
  6657 ms  0x7bb6 PK11_Encrypt()
  6657 ms  0x7bb6 symkey:0x7fb208341800
  6657 ms  0x7bb6 PK11_Encrypt()
  6657 ms  0x7bb6 symkey:0x7fb208341800
  6661 ms  0x7bb6 PK11_Encrypt()
  6661 ms  0x7bb6 symkey:0x7fb208341800
  6662 ms  0x7bb6 PK11_Encrypt()
  6662 ms  0x7bb6 symkey:0x7fb208341800
  6662 ms  0x7bb6 PK11_Encrypt()
  6662 ms  0x7bb6 symkey:0x7fb208341800
  6663 ms  0x7bb6 PK11_Encrypt()
  6663 ms  0x7bb6 symkey:0x7fb208341800
  6663 ms  0x7bb6 PR_Connect()
  6663 ms  0x7bb6 fd:0x7fb20834e400
  6664 ms  0x7bb6 SSL_ImportFD()
  6664 ms  0x7bb6 ret:0x7fb2082d54c0
  6664 ms  0x7bb6 SSL_AuthCertificateHook()
  6664 ms  0x7bb6 fd:0x7fb2082d54c0
  6664 ms  0x7bb6 ret:0x0
  6664 ms  0x7bb6 PR_Connect()
  6664 ms  0x7bb6 fd:0x7fb2082d54c0
  6665 ms  0x7bb6 SSL_ImportFD()
  6665 ms  0x7bb6 ret:0x7fb20834e460
  6665 ms  0x7bb6 SSL_AuthCertificateHook()
  6665 ms  0x7bb6 fd:0x7fb20834e460
  6665 ms  0x7bb6 ret:0x0
  6665 ms  0x7bb6 PR_Connect()
  6665 ms  0x7bb6 fd:0x7fb20834e460
  6666 ms  0x7bb6 SSL_ImportFD()
  6666 ms  0x7bb6 ret:0x7fb20834e490
  6666 ms  0x7bb6 SSL_AuthCertificateHook()
  6666 ms  0x7bb6 fd:0x7fb20834e490
  6666 ms  0x7bb6 ret:0x0
  6666 ms  0x7bb6 PR_Connect()
  6666 ms  0x7bb6 fd:0x7fb20834e490
  6666 ms  0x7bb6 SSL_ImportFD()
  6666 ms  0x7bb6 ret:0x7fb2082d5b50
  6666 ms  0x7bb6 SSL_AuthCertificateHook()
  6666 ms  0x7bb6 fd:0x7fb2082d5b50
  6666 ms  0x7bb6 ret:0x0
  6666 ms  0x7bb6 PR_Connect()
  6666 ms  0x7bb6 fd:0x7fb2082d5b50
  6668 ms  0x7bb6 SSL_ImportFD()
  6668 ms  0x7bb6 ret:0x7fb208302e50
  6668 ms  0x7bb6 SSL_AuthCertificateHook()
  6668 ms  0x7bb6 fd:0x7fb208302e50
  6668 ms  0x7bb6 ret:0x0
  6668 ms  0x7bb6 PR_Connect()
  6668 ms  0x7bb6 fd:0x7fb208302e50
  6668 ms  0x7bb6 PK11_Encrypt()
  6668 ms  0x7bb6 symkey:0x7fb208341800
  6668 ms  0x7bb6 PK11_Encrypt()
  6668 ms  0x7bb6 symkey:0x7fb208341800
  6669 ms  0x7bb6 PK11_Encrypt()
  6669 ms  0x7bb6 symkey:0x7fb208341800
  6669 ms  0x7bb6 PK11_Encrypt()
  6669 ms  0x7bb6 symkey:0x7fb208341800
  6670 ms  0x7bb6 PK11_Encrypt()
  6670 ms  0x7bb6 symkey:0x7fb208341800
  6671 ms  0x7bb6 PK11_Encrypt()
  6671 ms  0x7bb6 symkey:0x7fb208341800
  6671 ms  0x7bb6 PK11_Encrypt()
  6671 ms  0x7bb6 symkey:0x7fb208341800
  6671 ms  0x7bb6 PK11_Encrypt()
  6671 ms  0x7bb6 symkey:0x7fb208341800
  6672 ms  0x7bb6 PK11_Encrypt()
  6672 ms  0x7bb6 symkey:0x7fb208341800
  6672 ms  0x7bb6 PK11_Encrypt()
  6672 ms  0x7bb6 symkey:0x7fb208341800
  6673 ms  0x7bb6 PK11_Encrypt()
  6673 ms  0x7bb6 symkey:0x7fb208341800
           /* TID 0x7bbe */
  6679 ms  0x7bbe PR_Close()
  6679 ms  0x7bbe fd:0x7fb20834efd0
           /* TID 0x7bb6 */
  6700 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6700 ms  0x7bb6 cx:0x7fb208429288
  6701 ms     | 0x7bb6 EC_ValidatePublicKey()
  6701 ms     | 0x7bb6 ret:0x0
  6701 ms  0x7bb6 ret:0x7fb2081a5020::7fb2081a5020  b0 9a 33 08                                      ..3.
  6701 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6701 ms  0x7bb6 cx:0x7fb208429288
  6701 ms     | 0x7bb6 EC_ValidatePublicKey()
  6703 ms     | 0x7bb6 ret:0x0
  6703 ms  0x7bb6 ret:0x7fb2081a7020::7fb2081a7020  60 c0 33 08                                      `.3.
           /* TID 0x7bbe */
  6708 ms  0x7bbe PR_Close()
  6708 ms  0x7bbe fd:0x7fb2082d5400
           /* TID 0x7bb6 */
  6711 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6711 ms  0x7bb6 cx:0x7fb20842ac88
  6711 ms     | 0x7bb6 EC_ValidatePublicKey()
  6711 ms     | 0x7bb6 ret:0x0
  6711 ms  0x7bb6 ret:0x7fb20822d020::7fb20822d020  f0 c6 33 08                                      ..3.
  6711 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6711 ms  0x7bb6 cx:0x7fb20842ac88
  6712 ms     | 0x7bb6 EC_ValidatePublicKey()
  6716 ms     | 0x7bb6 ret:0x0
  6718 ms  0x7bb6 ret:0x7fb208455820::7fb208455820  60 cf 33 08                                      `.3.
  6718 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6718 ms  0x7bb6 cx:0x7fb20842aae8
  6719 ms     | 0x7bb6 EC_ValidatePublicKey()
  6719 ms     | 0x7bb6 ret:0x0
  6719 ms  0x7bb6 ret:0x7fb20845c820::7fb20845c820  80 23 34 08                                      .#4.
  6719 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6719 ms  0x7bb6 cx:0x7fb20842aae8
  6719 ms     | 0x7bb6 EC_ValidatePublicKey()
  6721 ms     | 0x7bb6 ret:0x0
  6721 ms  0x7bb6 ret:0x7fb208460820::7fb208460820  a0 26 34 08                                      .&4.
  6725 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6725 ms  0x7bb6 cx:0x7fb20842a948
  6726 ms     | 0x7bb6 EC_ValidatePublicKey()
  6726 ms     | 0x7bb6 ret:0x0
  6726 ms  0x7bb6 ret:0x7fb208465020::7fb208465020  70 29 34 08                                      p)4.
  6726 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6726 ms  0x7bb6 cx:0x7fb20842a948
  6726 ms     | 0x7bb6 EC_ValidatePublicKey()
  6728 ms     | 0x7bb6 ret:0x0
  6728 ms  0x7bb6 ret:0x7fb20846c020::7fb20846c020  50 2b 34 08                                      P+4.
  6733 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6733 ms  0x7bb6 cx:0x7fb20842a7a8
  6734 ms     | 0x7bb6 EC_ValidatePublicKey()
  6734 ms     | 0x7bb6 ret:0x0
  6734 ms  0x7bb6 ret:0x7fb208470820::7fb208470820  b0 5f 3d 08                                      ._=.
  6734 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6734 ms  0x7bb6 cx:0x7fb20842a7a8
  6734 ms     | 0x7bb6 EC_ValidatePublicKey()
  6736 ms     | 0x7bb6 ret:0x0
  6736 ms  0x7bb6 ret:0x7fb208472820::7fb208472820  40 97 3e 08                                      @.>.
  6739 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6739 ms  0x7bb6 cx:0x7fb20842a608
  6740 ms     | 0x7bb6 EC_ValidatePublicKey()
  6740 ms     | 0x7bb6 ret:0x0
  6740 ms  0x7bb6 ret:0x7fb219221020::7fb219221020  d0 9d 3e 08                                      ..>.
  6740 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6740 ms  0x7bb6 cx:0x7fb20842a608
  6741 ms     | 0x7bb6 EC_ValidatePublicKey()
  6747 ms     | 0x7bb6 ret:0x0
  6747 ms  0x7bb6 ret:0x7fb219224820::7fb219224820  40 37 49 08                                      @7I.
  6749 ms  0x7bb6 PK11_Encrypt()
  6749 ms  0x7bb6 symkey:0x7fb208341800
  6750 ms  0x7bb6 PK11_Encrypt()
  6750 ms  0x7bb6 symkey:0x7fb208341800
  6750 ms  0x7bb6 PK11_Encrypt()
  6750 ms  0x7bb6 symkey:0x7fb208341800
  6751 ms  0x7bb6 PK11_Encrypt()
  6751 ms  0x7bb6 symkey:0x7fb208341800
           /* TID 0x7bbe */
  6752 ms  0x7bbe PR_Close()
  6752 ms  0x7bbe fd:0x7fb2082d5580
           /* TID 0x7bb6 */
  6752 ms  0x7bb6 PK11_Encrypt()
  6752 ms  0x7bb6 symkey:0x7fb208341800
  6754 ms  0x7bb6 PK11_Encrypt()
  6754 ms  0x7bb6 symkey:0x7fb208341800
           /* TID 0x7bbe */
  6756 ms  0x7bbe PR_Close()
  6756 ms  0x7bbe fd:0x7fb2082d5580
           /* TID 0x7c14 */
  6756 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6756 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
  6757 ms  SECKEY_ECParamsToKeySize()
  6757 ms  0x7bb6 ret:0x100
  6757 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6757 ms  0x7bb6 cx:0x7fb208429288
  6758 ms     | 0x7bb6 EC_ValidatePublicKey()
  6759 ms     | 0x7bb6 ret:0x0
  6759 ms  0x7bb6 ret:0x7fb21946c820::7fb21946c820  10 3f 49 08                                      .?I.
  6759 ms  0x7bb6 PK11_PubDeriveWithKDF()
  6759 ms  0x7bb6 seckey:0x7fb21946c820
  6759 ms     | 0x7bb6 EC_ValidatePublicKey()
  6764 ms     | 0x7bb6 ret:0x0
  6771 ms  0x7bb6 ret:0x7fb208341a00
  6771 ms  0x7bb6 PK11_DeriveWithFlags()
  6771 ms  0x7bb6 basekey:0x7fb208341a00
  6771 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6771 ms  0x7bb6 ret:0x7fb208341c80
  6771 ms  0x7bb6 PK11_Derive()
  6771 ms  0x7bb6 basekey:0x7fb208341c80
  6771 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6771 ms  0x7bb6 ret:0x7fb2083e7400
  6771 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6771 ms  0x7bb6 privk:0x7fb21946c820::7fb21946c820  10 3f 49 08                                      .?I.
  6771 ms  0x7bb6 privk:0x7fb21946c820::7fb21946c820  e5 e5 e5 e5                                      ....
  6771 ms  0x7bb6 PK11_Encrypt()
  6771 ms  0x7bb6 symkey:0x7fb208341e00
  6774 ms  0x7bb6 SSL_AuthCertificateComplete()
  6774 ms  0x7bb6 fd:0x7fb20834e400
  6774 ms  0x7bb6 err:0x0
           /* TID 0x7bbe */
  6776 ms  0x7bbe PR_Close()
  6776 ms  0x7bbe fd:0x7fb208452160
           /* TID 0x7bb6 */
  6776 ms  0x7bb6 PK11_Encrypt()
  6776 ms  0x7bb6 symkey:0x7fb208341800
           /* TID 0x7c14 */
  6780 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6780 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
  6780 ms  SECKEY_ECParamsToKeySize()
  6780 ms  0x7bb6 ret:0x100
  6780 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6780 ms  0x7bb6 cx:0x7fb20842ac88
  6781 ms     | 0x7bb6 EC_ValidatePublicKey()
           /* TID 0x7bbe */
  6781 ms  0x7bbe PR_Close()
  6781 ms  0x7bbe fd:0x7fb208452160
           /* TID 0x7bb6 */
  6787 ms     | 0x7bb6 ret:0x0
  6787 ms  0x7bb6 ret:0x7fb21946b820::7fb21946b820  d0 9d 33 08                                      ..3.
  6787 ms  0x7bb6 PK11_PubDeriveWithKDF()
  6787 ms  0x7bb6 seckey:0x7fb21946b820
  6787 ms     | 0x7bb6 EC_ValidatePublicKey()
  6788 ms     | 0x7bb6 ret:0x0
  6790 ms  0x7bb6 ret:0x7fb208341a00
  6790 ms  0x7bb6 PK11_DeriveWithFlags()
  6790 ms  0x7bb6 basekey:0x7fb208341a00
  6790 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6790 ms  0x7bb6 ret:0x7fb208341980
  6790 ms  0x7bb6 PK11_Derive()
  6790 ms  0x7bb6 basekey:0x7fb208341980
  6790 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6790 ms  0x7bb6 ret:0x7fb2234af500
  6790 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6790 ms  0x7bb6 privk:0x7fb21946b820::7fb21946b820  d0 9d 33 08                                      ..3.
  6790 ms  0x7bb6 privk:0x7fb21946b820::7fb21946b820  e5 e5 e5 e5                                      ....
  6790 ms  0x7bb6 PK11_Encrypt()
  6790 ms  0x7bb6 symkey:0x7fb208341a80
           /* TID 0x7c14 */
  6807 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6807 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
  6807 ms  SECKEY_ECParamsToKeySize()
  6807 ms  0x7bb6 ret:0x100
  6807 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6807 ms  0x7bb6 cx:0x7fb20842aae8
  6808 ms     | 0x7bb6 EC_ValidatePublicKey()
  6809 ms     | 0x7bb6 ret:0x0
  6809 ms  0x7bb6 ret:0x7fb21946d020::7fb21946d020  60 10 2a 19                                      `.*.
  6810 ms  0x7bb6 PK11_PubDeriveWithKDF()
  6810 ms  0x7bb6 seckey:0x7fb21946d020
  6810 ms     | 0x7bb6 EC_ValidatePublicKey()
  6811 ms     | 0x7bb6 ret:0x0
  6815 ms  0x7bb6 ret:0x7fb208341a00
  6815 ms  0x7bb6 PK11_DeriveWithFlags()
  6815 ms  0x7bb6 basekey:0x7fb208341a00
  6815 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6816 ms  0x7bb6 ret:0x7fb208414100
  6816 ms  0x7bb6 PK11_Derive()
  6816 ms  0x7bb6 basekey:0x7fb208414100
  6816 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6816 ms  0x7bb6 ret:0x7fb208414980
  6816 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6816 ms  0x7bb6 privk:0x7fb21946d020::7fb21946d020  60 10 2a 19                                      `.*.
  6816 ms  0x7bb6 privk:0x7fb21946d020::7fb21946d020  e5 e5 e5 e5                                      ....
  6816 ms  0x7bb6 PK11_Encrypt()
  6816 ms  0x7bb6 symkey:0x7fb208414d00
           /* TID 0x7c14 */
  6817 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6817 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
  6817 ms  SECKEY_ECParamsToKeySize()
  6817 ms  0x7bb6 ret:0x100
  6817 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6817 ms  0x7bb6 cx:0x7fb20842a948
  6817 ms     | 0x7bb6 EC_ValidatePublicKey()
  6819 ms     | 0x7bb6 ret:0x0
  6819 ms  0x7bb6 ret:0x7fb219461820::7fb219461820  00 11 2a 19                                      ..*.
  6819 ms  0x7bb6 PK11_PubDeriveWithKDF()
  6819 ms  0x7bb6 seckey:0x7fb219461820
  6819 ms     | 0x7bb6 EC_ValidatePublicKey()
  6820 ms     | 0x7bb6 ret:0x0
  6822 ms  0x7bb6 ret:0x7fb208341a00
  6822 ms  0x7bb6 PK11_DeriveWithFlags()
  6822 ms  0x7bb6 basekey:0x7fb208341a00
  6822 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6822 ms  0x7bb6 ret:0x7fb208414e00
  6822 ms  0x7bb6 PK11_Derive()
  6822 ms  0x7bb6 basekey:0x7fb208414e00
  6822 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6822 ms  0x7bb6 ret:0x7fb208414e80
  6822 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6822 ms  0x7bb6 privk:0x7fb219461820::7fb219461820  00 11 2a 19                                      ..*.
  6822 ms  0x7bb6 privk:0x7fb219461820::7fb219461820  e5 e5 e5 e5                                      ....
  6822 ms  0x7bb6 PK11_Encrypt()
  6822 ms  0x7bb6 symkey:0x7fb2084a9800
           /* TID 0x7c14 */
  6834 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6834 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
  6835 ms  SECKEY_ECParamsToKeySize()
  6835 ms  0x7bb6 ret:0x100
  6835 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6835 ms  0x7bb6 cx:0x7fb20842a7a8
  6836 ms     | 0x7bb6 EC_ValidatePublicKey()
  6837 ms     | 0x7bb6 ret:0x0
  6838 ms  0x7bb6 ret:0x7fb219462820::7fb219462820  a0 11 2a 19                                      ..*.
  6838 ms  0x7bb6 PK11_PubDeriveWithKDF()
  6838 ms  0x7bb6 seckey:0x7fb219462820
  6838 ms     | 0x7bb6 EC_ValidatePublicKey()
  6839 ms     | 0x7bb6 ret:0x0
  6840 ms  0x7bb6 ret:0x7fb208341a00
  6840 ms  0x7bb6 PK11_DeriveWithFlags()
  6840 ms  0x7bb6 basekey:0x7fb208341a00
  6840 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6840 ms  0x7bb6 ret:0x7fb208175500
  6840 ms  0x7bb6 PK11_Derive()
  6840 ms  0x7bb6 basekey:0x7fb208175500
  6840 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6841 ms  0x7bb6 ret:0x7fb2084a9e00
  6841 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6841 ms  0x7bb6 privk:0x7fb219462820::7fb219462820  a0 11 2a 19                                      ..*.
  6841 ms  0x7bb6 privk:0x7fb219462820::7fb219462820  e5 e5 e5 e5                                      ....
  6841 ms  0x7bb6 PK11_Encrypt()
  6841 ms  0x7bb6 symkey:0x7fb2084aa100
  6848 ms  0x7bb6 PK11_Encrypt()
  6848 ms  0x7bb6 symkey:0x7fb208341e00
  6848 ms  0x7bb6 SSL_AuthCertificateComplete()
  6848 ms  0x7bb6 fd:0x7fb208302e50
  6848 ms  0x7bb6 err:0x0
  6849 ms  0x7bb6 SSL_AuthCertificateComplete()
  6849 ms  0x7bb6 fd:0x7fb2082d5b50
  6849 ms  0x7bb6 err:0x0
  6849 ms  0x7bb6 SSL_AuthCertificateComplete()
  6849 ms  0x7bb6 fd:0x7fb20834e490
  6849 ms  0x7bb6 err:0x0
  6849 ms  0x7bb6 SSL_AuthCertificateComplete()
  6849 ms  0x7bb6 fd:0x7fb20834e460
  6849 ms  0x7bb6 err:0x0
           /* TID 0x7bbe */
  6856 ms  0x7bbe PR_Close()
  6856 ms  0x7bbe fd:0x7fb208499400
  6857 ms  0x7bbe PR_Close()
  6857 ms  0x7bbe fd:0x7fb2084525b0
           /* TID 0x7bb6 */
  6857 ms  0x7bb6 PK11_Encrypt()
  6857 ms  0x7bb6 symkey:0x7fb208341a80
  6858 ms  0x7bb6 PK11_Encrypt()
  6858 ms  0x7bb6 symkey:0x7fb208414d00
           /* TID 0x7bbe */
  6858 ms  0x7bbe PR_Close()
  6858 ms  0x7bbe fd:0x7fb2084525b0
           /* TID 0x7bb6 */
  6860 ms  0x7bb6 PK11_Encrypt()
  6860 ms  0x7bb6 symkey:0x7fb2084a9800
  6860 ms  0x7bb6 PK11_Encrypt()
  6860 ms  0x7bb6 symkey:0x7fb2084aa100
           /* TID 0x7c14 */
  6861 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6861 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
  6861 ms  SECKEY_ECParamsToKeySize()
  6861 ms  0x7bb6 ret:0x100
  6861 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  6861 ms  0x7bb6 cx:0x7fb20842a608
  6862 ms     | 0x7bb6 EC_ValidatePublicKey()
  6865 ms     | 0x7bb6 ret:0x0
  6865 ms  0x7bb6 ret:0x7fb219476820::7fb219476820  60 15 2a 19                                      `.*.
  6865 ms  0x7bb6 PK11_PubDeriveWithKDF()
  6865 ms  0x7bb6 seckey:0x7fb219476820
  6865 ms     | 0x7bb6 EC_ValidatePublicKey()
  6866 ms     | 0x7bb6 ret:0x0
  6868 ms  0x7bb6 ret:0x7fb208341a00
  6868 ms  0x7bb6 PK11_DeriveWithFlags()
  6868 ms  0x7bb6 basekey:0x7fb208341a00
  6868 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6868 ms  0x7bb6 ret:0x7fb2192ac680
  6868 ms  0x7bb6 PK11_Derive()
  6868 ms  0x7bb6 basekey:0x7fb2192ac680
  6868 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  6868 ms  0x7bb6 ret:0x7fb2192ac700
  6868 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6868 ms  0x7bb6 privk:0x7fb219476820::7fb219476820  60 15 2a 19                                      `.*.
  6868 ms  0x7bb6 privk:0x7fb219476820::7fb219476820  e5 e5 e5 e5                                      ....
  6868 ms  0x7bb6 PK11_Encrypt()
  6868 ms  0x7bb6 symkey:0x7fb2192ac900
  6881 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6881 ms  0x7bb6 privk:0x7fb2081a7020::7fb2081a7020  60 c0 33 08                                      `.3.
  6881 ms  0x7bb6 privk:0x7fb2081a7020::7fb2081a7020  e5 e5 e5 e5                                      ....
  6881 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6881 ms  0x7bb6 privk:0x7fb2081a5020::7fb2081a5020  b0 9a 33 08                                      ..3.
  6881 ms  0x7bb6 privk:0x7fb2081a5020::7fb2081a5020  e5 e5 e5 e5                                      ....
  6881 ms  0x7bb6 PR_Close()
  6881 ms  0x7bb6 fd:0x7fb20834e400
  6881 ms     | 0x7bb6 PK11_Encrypt()
  6881 ms     | 0x7bb6 symkey:0x7fb208341e00
  6883 ms  0x7bb6 SSL_AuthCertificateComplete()
  6883 ms  0x7bb6 fd:0x7fb2082d54c0
  6883 ms  0x7bb6 err:0x0
           /* TID 0x7bbe */
  6888 ms  0x7bbe PR_Close()
  6888 ms  0x7bbe fd:0x7fb2083027c0
  6892 ms  0x7bbe PR_Close()
  6892 ms  0x7bbe fd:0x7fb2083027c0
  6893 ms  0x7bbe PR_Close()
  6893 ms  0x7bbe fd:0x7fb2083027c0
  6895 ms  0x7bbe PR_Close()
  6895 ms  0x7bbe fd:0x7fb2083027c0
  6897 ms  0x7bbe PR_Close()
  6897 ms  0x7bbe fd:0x7fb2083027c0
  6898 ms  0x7bbe PR_Close()
  6898 ms  0x7bbe fd:0x7fb2082d5070
           /* TID 0x7bb6 */
  6898 ms  0x7bb6 PK11_Encrypt()
  6898 ms  0x7bb6 symkey:0x7fb208341800
  6898 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6898 ms  0x7bb6 privk:0x7fb208455820::7fb208455820  60 cf 33 08                                      `.3.
  6898 ms  0x7bb6 privk:0x7fb208455820::7fb208455820  e5 e5 e5 e5                                      ....
  6899 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6899 ms  0x7bb6 privk:0x7fb20822d020::7fb20822d020  f0 c6 33 08                                      ..3.
  6899 ms  0x7bb6 privk:0x7fb20822d020::7fb20822d020  e5 e5 e5 e5                                      ....
  6899 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6899 ms  0x7bb6 privk:0x7fb208460820::7fb208460820  a0 26 34 08                                      .&4.
  6899 ms  0x7bb6 privk:0x7fb208460820::7fb208460820  e5 e5 e5 e5                                      ....
  6899 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6899 ms  0x7bb6 privk:0x7fb20845c820::7fb20845c820  80 23 34 08                                      .#4.
  6899 ms  0x7bb6 privk:0x7fb20845c820::7fb20845c820  e5 e5 e5 e5                                      ....
  6899 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6899 ms  0x7bb6 privk:0x7fb20846c020::7fb20846c020  50 2b 34 08                                      P+4.
  6899 ms  0x7bb6 privk:0x7fb20846c020::7fb20846c020  e5 e5 e5 e5                                      ....
  6899 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6899 ms  0x7bb6 privk:0x7fb208465020::7fb208465020  70 29 34 08                                      p)4.
  6899 ms  0x7bb6 privk:0x7fb208465020::7fb208465020  e5 e5 e5 e5                                      ....
  6899 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6899 ms  0x7bb6 privk:0x7fb208472820::7fb208472820  40 97 3e 08                                      @.>.
  6900 ms  0x7bb6 privk:0x7fb208472820::7fb208472820  e5 e5 e5 e5                                      ....
  6900 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6900 ms  0x7bb6 privk:0x7fb208470820::7fb208470820  b0 5f 3d 08                                      ._=.
  6900 ms  0x7bb6 privk:0x7fb208470820::7fb208470820  e5 e5 e5 e5                                      ....
           /* TID 0x7bbe */
  6904 ms  0x7bbe PR_Close()
  6904 ms  0x7bbe fd:0x7fb20834e520
  6904 ms  0x7bbe PR_Close()
  6904 ms  0x7bbe fd:0x7fb20834e5b0
           /* TID 0x7bb6 */
  6904 ms  0x7bb6 PK11_Encrypt()
  6904 ms  0x7bb6 symkey:0x7fb2192ac900
  6906 ms  0x7bb6 PR_Close()
  6906 ms  0x7bb6 fd:0x7fb20834e460
  6906 ms     | 0x7bb6 PK11_Encrypt()
  6906 ms     | 0x7bb6 symkey:0x7fb2084aa100
  6907 ms  0x7bb6 PR_Close()
  6907 ms  0x7bb6 fd:0x7fb20834e490
  6907 ms     | 0x7bb6 PK11_Encrypt()
  6907 ms     | 0x7bb6 symkey:0x7fb2084a9800
  6907 ms  0x7bb6 PR_Close()
  6907 ms  0x7bb6 fd:0x7fb2082d5b50
  6907 ms     | 0x7bb6 PK11_Encrypt()
  6907 ms     | 0x7bb6 symkey:0x7fb208414d00
  6907 ms  0x7bb6 PR_Close()
  6907 ms  0x7bb6 fd:0x7fb208302e50
  6907 ms     | 0x7bb6 PK11_Encrypt()
  6907 ms     | 0x7bb6 symkey:0x7fb208341a80
           /* TID 0x7bbe */
  6911 ms  0x7bbe PR_Close()
  6911 ms  0x7bbe fd:0x7fb2082d5070
  6912 ms  0x7bbe PR_Close()
  6912 ms  0x7bbe fd:0x7fb2082d5070
  6915 ms  0x7bbe PR_Close()
  6915 ms  0x7bbe fd:0x7fb2082d5070
           /* TID 0x7bb6 */
  6916 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6916 ms  0x7bb6 privk:0x7fb219224820::7fb219224820  40 37 49 08                                      @7I.
  6916 ms  0x7bb6 privk:0x7fb219224820::7fb219224820  e5 e5 e5 e5                                      ....
  6916 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  6916 ms  0x7bb6 privk:0x7fb219221020::7fb219221020  d0 9d 3e 08                                      ..>.
  6916 ms  0x7bb6 privk:0x7fb219221020::7fb219221020  e5 e5 e5 e5                                      ....
  6916 ms  0x7bb6 PR_Close()
  6916 ms  0x7bb6 fd:0x7fb2082d54c0
  6916 ms     | 0x7bb6 PK11_Encrypt()
  6916 ms     | 0x7bb6 symkey:0x7fb2192ac900
           /* TID 0x7bbe */
  6930 ms  0x7bbe PR_Close()
  6930 ms  0x7bbe fd:0x7fb2082d5070
  6931 ms  0x7bbe PR_Close()
  6931 ms  0x7bbe fd:0x7fb2082d5070
  6932 ms  0x7bbe PR_Close()
  6932 ms  0x7bbe fd:0x7fb2082d5070
  6934 ms  0x7bbe PR_Close()
  6934 ms  0x7bbe fd:0x7fb2082d5070
  6935 ms  0x7bbe PR_Close()
  6935 ms  0x7bbe fd:0x7fb2082d5070
  6938 ms  0x7bbe PR_Close()
  6938 ms  0x7bbe fd:0x7fb2082d5070
  6939 ms  0x7bbe PR_Close()
  6939 ms  0x7bbe fd:0x7fb208302f40
  6944 ms  0x7bbe PR_Close()
  6944 ms  0x7bbe fd:0x7fb2082d5550
  6950 ms  0x7bbe PR_Close()
  6950 ms  0x7bbe fd:0x7fb2082d5550
  6951 ms  0x7bbe PR_Close()
  6951 ms  0x7bbe fd:0x7fb2082d5550
  6954 ms  0x7bbe PR_Close()
  6954 ms  0x7bbe fd:0x7fb2082d5550
  6955 ms  0x7bbe PR_Close()
  6955 ms  0x7bbe fd:0x7fb2082d5550
  6958 ms  0x7bbe PR_Close()
  6958 ms  0x7bbe fd:0x7fb2082d5550
  6960 ms  0x7bbe PR_Close()
  6960 ms  0x7bbe fd:0x7fb2082d5550
  6963 ms  0x7bbe PR_Close()
  6963 ms  0x7bbe fd:0x7fb2082d5550
  6967 ms  0x7bbe PR_Close()
  6967 ms  0x7bbe fd:0x7fb2082d5070
           /* TID 0x7bb6 */
  6972 ms  0x7bb6 PK11_Encrypt()
  6972 ms  0x7bb6 symkey:0x7fb2083e8b80
  7002 ms  0x7bb6 SSL_ImportFD()
  7002 ms  0x7bb6 ret:0x7fb2082d52b0
  7002 ms  0x7bb6 SSL_AuthCertificateHook()
  7002 ms  0x7bb6 fd:0x7fb2082d52b0
  7002 ms  0x7bb6 ret:0x0
  7002 ms  0x7bb6 PR_Connect()
  7002 ms  0x7bb6 fd:0x7fb2082d52b0
           /* TID 0x7bbe */
  7060 ms  0x7bbe PR_Close()
  7060 ms  0x7bbe fd:0x7fb2082d5130
           /* TID 0x7bb6 */
  7252 ms  0x7bb6 SSL_ImportFD()
  7252 ms  0x7bb6 ret:0x7fb208302fd0
  7253 ms  0x7bb6 SSL_AuthCertificateHook()
  7253 ms  0x7bb6 fd:0x7fb208302fd0
  7253 ms  0x7bb6 ret:0x0
  7253 ms  0x7bb6 PR_Connect()
  7253 ms  0x7bb6 fd:0x7fb208302fd0
  7320 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  7320 ms  0x7bb6 cx:0x7fb208429288
  7322 ms     | 0x7bb6 EC_ValidatePublicKey()
  7322 ms     | 0x7bb6 ret:0x0
  7322 ms  0x7bb6 ret:0x7fb20818c820::7fb20818c820  b0 9f 33 08                                      ..3.
  7323 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  7323 ms  0x7bb6 cx:0x7fb208429288
  7325 ms     | 0x7bb6 EC_ValidatePublicKey()
  7330 ms     | 0x7bb6 ret:0x0
  7330 ms  0x7bb6 ret:0x7fb20818f820::7fb20818f820  c0 c4 33 08                                      ..3.
  7412 ms  0x7bb6 SSL_ImportFD()
  7413 ms  0x7bb6 ret:0x7fb20834e4c0
  7413 ms  0x7bb6 SSL_AuthCertificateHook()
  7413 ms  0x7bb6 fd:0x7fb20834e4c0
  7413 ms  0x7bb6 ret:0x0
  7413 ms  0x7bb6 PR_Connect()
  7413 ms  0x7bb6 fd:0x7fb20834e4c0
  7414 ms  0x7bb6 SSL_ImportFD()
  7414 ms  0x7bb6 ret:0x7fb2082d53d0
  7414 ms  0x7bb6 SSL_AuthCertificateHook()
  7414 ms  0x7bb6 fd:0x7fb2082d53d0
  7414 ms  0x7bb6 ret:0x0
  7414 ms  0x7bb6 PR_Connect()
  7414 ms  0x7bb6 fd:0x7fb2082d53d0
  7416 ms  0x7bb6 SSL_ImportFD()
  7416 ms  0x7bb6 ret:0x7fb208302f40
  7416 ms  0x7bb6 SSL_AuthCertificateHook()
  7416 ms  0x7bb6 fd:0x7fb208302f40
  7416 ms  0x7bb6 ret:0x0
  7416 ms  0x7bb6 PR_Connect()
  7416 ms  0x7bb6 fd:0x7fb208302f40
  7569 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  7569 ms  0x7bb6 cx:0x7fb20842a608
  7571 ms     | 0x7bb6 EC_ValidatePublicKey()
  7571 ms     | 0x7bb6 ret:0x0
  7571 ms  0x7bb6 ret:0x7fb208197020::7fb208197020  50 c6 33 08                                      P.3.
  7571 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  7571 ms  0x7bb6 cx:0x7fb20842a608
  7574 ms     | 0x7bb6 EC_ValidatePublicKey()
  7579 ms     | 0x7bb6 ret:0x0
  7579 ms  0x7bb6 ret:0x7fb20819a820::7fb20819a820  d0 c8 33 08                                      ..3.
  7659 ms  SECKEY_ECParamsToKeySize()
  7659 ms  0x7bb6 ret:0x100
  7659 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  7659 ms  0x7bb6 cx:0x7fb208429288
  7661 ms     | 0x7bb6 EC_ValidatePublicKey()
  7666 ms     | 0x7bb6 ret:0x0
  7666 ms  0x7bb6 ret:0x7fb208465820::7fb208465820  d0 23 34 08                                      .#4.
  7667 ms  0x7bb6 PK11_PubDeriveWithKDF()
  7667 ms  0x7bb6 seckey:0x7fb208465820
  7667 ms     | 0x7bb6 EC_ValidatePublicKey()
  7671 ms     | 0x7bb6 ret:0x0
  7676 ms  0x7bb6 ret:0x7fb2192ac700
  7676 ms  0x7bb6 PK11_DeriveWithFlags()
  7676 ms  0x7bb6 basekey:0x7fb2192ac700
  7676 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  7676 ms  0x7bb6 ret:0x7fb2192ac680
  7676 ms  0x7bb6 PK11_Derive()
  7676 ms  0x7bb6 basekey:0x7fb2192ac680
  7676 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  7676 ms  0x7bb6 ret:0x7fb2234af500
  7676 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  7676 ms  0x7bb6 privk:0x7fb208465820::7fb208465820  d0 23 34 08                                      .#4.
  7676 ms  0x7bb6 privk:0x7fb208465820::7fb208465820  e5 e5 e5 e5                                      ....
  7677 ms  0x7bb6 PK11_Encrypt()
  7677 ms  0x7bb6 symkey:0x7fb2192ac780
  7678 ms  0x7bb6 PR_Connect()
  7678 ms  0x7bb6 fd:0x7fb208452610
  7678 ms  0x7bb6 SSL_ImportFD()
  7678 ms  0x7bb6 ret:0x7fb208452190
  7678 ms  0x7bb6 SSL_AuthCertificateHook()
  7678 ms  0x7bb6 fd:0x7fb208452190
  7678 ms  0x7bb6 ret:0x0
  7678 ms  0x7bb6 PR_Connect()
  7678 ms  0x7bb6 fd:0x7fb208452190
  7678 ms  0x7bb6 SSL_ImportFD()
  7678 ms  0x7bb6 ret:0x7fb2084526a0
  7678 ms  0x7bb6 SSL_AuthCertificateHook()
  7678 ms  0x7bb6 fd:0x7fb2084526a0
  7678 ms  0x7bb6 ret:0x0
  7678 ms  0x7bb6 PR_Connect()
  7678 ms  0x7bb6 fd:0x7fb2084526a0
  7678 ms  0x7bb6 SSL_ImportFD()
  7679 ms  0x7bb6 ret:0x7fb208452730
  7679 ms  0x7bb6 SSL_AuthCertificateHook()
  7679 ms  0x7bb6 fd:0x7fb208452730
  7679 ms  0x7bb6 ret:0x0
  7679 ms  0x7bb6 PR_Connect()
  7679 ms  0x7bb6 fd:0x7fb208452730
  7733 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  7733 ms  0x7bb6 cx:0x7fb20842a7a8
  7734 ms     | 0x7bb6 EC_ValidatePublicKey()
  7734 ms     | 0x7bb6 ret:0x0
  7734 ms  0x7bb6 ret:0x7fb208465820::7fb208465820  d0 23 34 08                                      .#4.
  7734 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  7734 ms  0x7bb6 cx:0x7fb20842a7a8
  7735 ms     | 0x7bb6 EC_ValidatePublicKey()
  7736 ms     | 0x7bb6 ret:0x0
  7736 ms  0x7bb6 ret:0x7fb20846b820::7fb20846b820  00 26 34 08                                      .&4.
  7737 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  7737 ms  0x7bb6 cx:0x7fb20842ac88
  7737 ms     | 0x7bb6 EC_ValidatePublicKey()
  7737 ms     | 0x7bb6 ret:0x0
  7737 ms  0x7bb6 ret:0x7fb208470820::7fb208470820  20 29 34 08                                       )4.
  7737 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  7737 ms  0x7bb6 cx:0x7fb20842ac88
  7738 ms     | 0x7bb6 EC_ValidatePublicKey()
  7739 ms     | 0x7bb6 ret:0x0
  7739 ms  0x7bb6 ret:0x7fb208472820::7fb208472820  00 2b 34 08                                      .+4.
  7740 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  7740 ms  0x7bb6 cx:0x7fb20842aae8
  7740 ms     | 0x7bb6 EC_ValidatePublicKey()
  7740 ms     | 0x7bb6 ret:0x0
  7740 ms  0x7bb6 ret:0x7fb219220820::7fb219220820  40 2c 34 08                                      @,4.
  7740 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  7740 ms  0x7bb6 cx:0x7fb20842aae8
  7741 ms     | 0x7bb6 EC_ValidatePublicKey()
  7742 ms     | 0x7bb6 ret:0x0
  7742 ms  0x7bb6 ret:0x7fb219223020::7fb219223020  40 8c 3a 08                                      @.:.
           /* TID 0x7c14 */
  7767 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7767 ms  0x7c14 ret:0x0
           /* TID 0x7bbe */
  7768 ms  0x7bbe PR_Close()
  7768 ms  0x7bbe fd:0x7fb20834ed00
           /* TID 0x7bb6 */
  7793 ms  0x7bb6 SSL_AuthCertificateComplete()
  7793 ms  0x7bb6 fd:0x7fb2082d52b0
  7793 ms  0x7bb6 err:0x0
  7794 ms  0x7bb6 PK11_Encrypt()
  7794 ms  0x7bb6 symkey:0x7fb2192ac780
  7795 ms  0x7bb6 PK11_Encrypt()
  7795 ms  0x7bb6 symkey:0x7fb2192ac780
  7901 ms  SECKEY_ECParamsToKeySize()
  7901 ms  0x7bb6 ret:0x100
  7901 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  7901 ms  0x7bb6 cx:0x7fb20842a608
  7903 ms     | 0x7bb6 EC_ValidatePublicKey()
  7908 ms     | 0x7bb6 ret:0x0
  7908 ms  0x7bb6 ret:0x7fb219463020::7fb219463020  b0 95 3e 08                                      ..>.
  7908 ms  0x7bb6 PK11_PubDeriveWithKDF()
  7908 ms  0x7bb6 seckey:0x7fb219463020
  7908 ms     | 0x7bb6 EC_ValidatePublicKey()
  7913 ms     | 0x7bb6 ret:0x0
  7917 ms  0x7bb6 ret:0x7fb2192ac700
  7917 ms  0x7bb6 PK11_DeriveWithFlags()
  7917 ms  0x7bb6 basekey:0x7fb2192ac700
  7917 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  7917 ms  0x7bb6 ret:0x7fb208341980
  7917 ms  0x7bb6 PK11_Derive()
  7917 ms  0x7bb6 basekey:0x7fb208341980
  7918 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  7918 ms  0x7bb6 ret:0x7fb208414980
  7918 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  7918 ms  0x7bb6 privk:0x7fb219463020::7fb219463020  b0 95 3e 08                                      ..>.
  7918 ms  0x7bb6 privk:0x7fb219463020::7fb219463020  e5 e5 e5 e5                                      ....
  7918 ms  0x7bb6 PK11_Encrypt()
  7918 ms  0x7bb6 symkey:0x7fb208341b00
  7919 ms  0x7bb6 SSL_AuthCertificateComplete()
  7919 ms  0x7bb6 fd:0x7fb208302fd0
  7919 ms  0x7bb6 err:0x0
  7919 ms  0x7bb6 PK11_Encrypt()
  7919 ms  0x7bb6 symkey:0x7fb208341b00
  7996 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  7996 ms  0x7bb6 cx:0x7fb20842bb28
  7998 ms     | 0x7bb6 EC_ValidatePublicKey()
  7998 ms     | 0x7bb6 ret:0x0
  7998 ms  0x7bb6 ret:0x7fb219464820::7fb219464820  a0 5b 3d 08                                      .[=.
  7998 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  7998 ms  0x7bb6 cx:0x7fb20842bb28
  8000 ms     | 0x7bb6 EC_ValidatePublicKey()
  8005 ms     | 0x7bb6 ret:0x0
  8005 ms  0x7bb6 ret:0x7fb219467020::7fb219467020  f0 96 3e 08                                      ..>.
  8006 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  8006 ms  0x7bb6 cx:0x7fb20842b7e8
  8008 ms     | 0x7bb6 EC_ValidatePublicKey()
  8008 ms     | 0x7bb6 ret:0x0
  8008 ms  0x7bb6 ret:0x7fb21946d020::7fb21946d020  30 98 3e 08                                      0.>.
  8008 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  8008 ms  0x7bb6 cx:0x7fb20842b7e8
  8010 ms     | 0x7bb6 EC_ValidatePublicKey()
  8015 ms     | 0x7bb6 ret:0x0
  8015 ms  0x7bb6 ret:0x7fb219473820::7fb219473820  60 9f 3e 08                                      `.>.
  8016 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8016 ms  0x7bb6 privk:0x7fb20818f820::7fb20818f820  c0 c4 33 08                                      ..3.
  8016 ms  0x7bb6 privk:0x7fb20818f820::7fb20818f820  e5 e5 e5 e5                                      ....
  8016 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8016 ms  0x7bb6 privk:0x7fb20818c820::7fb20818c820  b0 9f 33 08                                      ..3.
  8016 ms  0x7bb6 privk:0x7fb20818c820::7fb20818c820  e5 e5 e5 e5                                      ....
  8017 ms  0x7bb6 PK11_Encrypt()
  8017 ms  0x7bb6 symkey:0x7fb2192ac780
  8017 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  8017 ms  0x7bb6 cx:0x7fb20842bcc8
  8018 ms     | 0x7bb6 EC_ValidatePublicKey()
  8018 ms     | 0x7bb6 ret:0x0
  8019 ms  0x7bb6 ret:0x7fb20818c820::7fb20818c820  b0 9f 33 08                                      ..3.
  8019 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  8019 ms  0x7bb6 cx:0x7fb20842bcc8
  8020 ms     | 0x7bb6 EC_ValidatePublicKey()
  8024 ms     | 0x7bb6 ret:0x0
  8024 ms  0x7bb6 ret:0x7fb20818f820::7fb20818f820  c0 c4 33 08                                      ..3.
           /* TID 0x7c14 */
  8056 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8057 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
  8057 ms  SECKEY_ECParamsToKeySize()
  8057 ms  0x7bb6 ret:0x100
  8057 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  8057 ms  0x7bb6 cx:0x7fb20842a7a8
  8058 ms     | 0x7bb6 EC_ValidatePublicKey()
  8062 ms     | 0x7bb6 ret:0x0
  8062 ms  0x7bb6 ret:0x7fb2199ad020::7fb2199ad020  60 15 2a 19                                      `.*.
  8062 ms  0x7bb6 PK11_PubDeriveWithKDF()
  8062 ms  0x7bb6 seckey:0x7fb2199ad020
  8062 ms     | 0x7bb6 EC_ValidatePublicKey()
  8066 ms     | 0x7bb6 ret:0x0
  8069 ms  0x7bb6 ret:0x7fb2192ac700
  8069 ms  0x7bb6 PK11_DeriveWithFlags()
  8069 ms  0x7bb6 basekey:0x7fb2192ac700
  8069 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  8069 ms  0x7bb6 ret:0x7fb208414100
  8069 ms  0x7bb6 PK11_Derive()
  8069 ms  0x7bb6 basekey:0x7fb208414100
  8069 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  8069 ms  0x7bb6 ret:0x7fb208414e80
  8069 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8069 ms  0x7bb6 privk:0x7fb2199ad020::7fb2199ad020  60 15 2a 19                                      `.*.
  8069 ms  0x7bb6 privk:0x7fb2199ad020::7fb2199ad020  e5 e5 e5 e5                                      ....
  8069 ms  0x7bb6 PK11_Encrypt()
  8069 ms  0x7bb6 symkey:0x7fb208414b00
  8070 ms  0x7bb6 SSL_AuthCertificateComplete()
  8070 ms  0x7bb6 fd:0x7fb20834e4c0
  8070 ms  0x7bb6 err:0x0
           /* TID 0x7c14 */
  8071 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8071 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
  8072 ms  SECKEY_ECParamsToKeySize()
  8072 ms  0x7bb6 ret:0x100
  8072 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  8072 ms  0x7bb6 cx:0x7fb20842ac88
  8073 ms     | 0x7bb6 EC_ValidatePublicKey()
  8075 ms     | 0x7bb6 ret:0x0
  8075 ms  0x7bb6 ret:0x7fb2199b1020::7fb2199b1020  50 16 2a 19                                      P.*.
  8076 ms  0x7bb6 PK11_PubDeriveWithKDF()
  8076 ms  0x7bb6 seckey:0x7fb2199b1020
  8076 ms     | 0x7bb6 EC_ValidatePublicKey()
  8078 ms     | 0x7bb6 ret:0x0
  8080 ms  0x7bb6 ret:0x7fb2192ac700
  8080 ms  0x7bb6 PK11_DeriveWithFlags()
  8080 ms  0x7bb6 basekey:0x7fb2192ac700
  8080 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  8080 ms  0x7bb6 ret:0x7fb208414e00
  8080 ms  0x7bb6 PK11_Derive()
  8080 ms  0x7bb6 basekey:0x7fb208414e00
  8080 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  8080 ms  0x7bb6 ret:0x7fb2084a9e00
  8080 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8080 ms  0x7bb6 privk:0x7fb2199b1020::7fb2199b1020  50 16 2a 19                                      P.*.
  8081 ms  0x7bb6 privk:0x7fb2199b1020::7fb2199b1020  e5 e5 e5 e5                                      ....
  8081 ms  0x7bb6 PK11_Encrypt()
  8081 ms  0x7bb6 symkey:0x7fb208414f80
           /* TID 0x7c14 */
  8082 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8082 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
  8082 ms  SECKEY_ECParamsToKeySize()
  8082 ms  0x7bb6 ret:0x100
  8083 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  8083 ms  0x7bb6 cx:0x7fb20842aae8
  8083 ms     | 0x7bb6 EC_ValidatePublicKey()
  8085 ms     | 0x7bb6 ret:0x0
  8085 ms  0x7bb6 ret:0x7fb21b2b2820::7fb21b2b2820  40 17 2a 19                                      @.*.
  8085 ms  0x7bb6 PK11_PubDeriveWithKDF()
  8085 ms  0x7bb6 seckey:0x7fb21b2b2820
  8085 ms     | 0x7bb6 EC_ValidatePublicKey()
  8087 ms     | 0x7bb6 ret:0x0
  8089 ms  0x7bb6 ret:0x7fb2192ac700
  8089 ms  0x7bb6 PK11_DeriveWithFlags()
  8089 ms  0x7bb6 basekey:0x7fb2192ac700
  8089 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  8089 ms  0x7bb6 ret:0x7fb208175500
  8089 ms  0x7bb6 PK11_Derive()
  8089 ms  0x7bb6 basekey:0x7fb208175500
  8089 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  8089 ms  0x7bb6 ret:0x7fb2083e7400
  8089 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8089 ms  0x7bb6 privk:0x7fb21b2b2820::7fb21b2b2820  40 17 2a 19                                      @.*.
  8089 ms  0x7bb6 privk:0x7fb21b2b2820::7fb21b2b2820  e5 e5 e5 e5                                      ....
  8089 ms  0x7bb6 PK11_Encrypt()
  8089 ms  0x7bb6 symkey:0x7fb2084a9f00
  8090 ms  0x7bb6 PK11_Encrypt()
  8090 ms  0x7bb6 symkey:0x7fb208414b00
  8090 ms  0x7bb6 PK11_Encrypt()
  8090 ms  0x7bb6 symkey:0x7fb208414b00
  8091 ms  0x7bb6 SSL_AuthCertificateComplete()
  8091 ms  0x7bb6 fd:0x7fb208302f40
  8091 ms  0x7bb6 err:0x0
  8091 ms  0x7bb6 SSL_AuthCertificateComplete()
  8091 ms  0x7bb6 fd:0x7fb2082d53d0
  8091 ms  0x7bb6 err:0x0
  8091 ms  0x7bb6 PK11_Encrypt()
  8091 ms  0x7bb6 symkey:0x7fb208414f80
  8091 ms  0x7bb6 PK11_Encrypt()
  8091 ms  0x7bb6 symkey:0x7fb2084a9f00
  8092 ms  0x7bb6 PK11_Encrypt()
  8092 ms  0x7bb6 symkey:0x7fb208414b00
  8092 ms  0x7bb6 PK11_Encrypt()
  8092 ms  0x7bb6 symkey:0x7fb208414b00
  8236 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8236 ms  0x7bb6 privk:0x7fb20819a820::7fb20819a820  d0 c8 33 08                                      ..3.
  8236 ms  0x7bb6 privk:0x7fb20819a820::7fb20819a820  e5 e5 e5 e5                                      ....
  8237 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8237 ms  0x7bb6 privk:0x7fb208197020::7fb208197020  50 c6 33 08                                      P.3.
  8237 ms  0x7bb6 privk:0x7fb208197020::7fb208197020  e5 e5 e5 e5                                      ....
  8237 ms  0x7bb6 PR_Close()
  8237 ms  0x7bb6 fd:0x7fb208302fd0
  8237 ms     | 0x7bb6 PK11_Encrypt()
  8237 ms     | 0x7bb6 symkey:0x7fb208341b00
           /* TID 0x7c14 */
  8326 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8326 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
  8327 ms  SECKEY_ECParamsToKeySize()
  8327 ms  0x7bb6 ret:0x100
  8327 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  8327 ms  0x7bb6 cx:0x7fb20842bb28
  8329 ms     | 0x7bb6 EC_ValidatePublicKey()
  8335 ms     | 0x7bb6 ret:0x0
  8335 ms  0x7bb6 ret:0x7fb208199820::7fb208199820  10 5f 3d 08                                      ._=.
  8335 ms  0x7bb6 PK11_PubDeriveWithKDF()
  8335 ms  0x7bb6 seckey:0x7fb208199820
  8336 ms     | 0x7bb6 EC_ValidatePublicKey()
  8341 ms     | 0x7bb6 ret:0x0
  8346 ms  0x7bb6 ret:0x7fb208414980
  8346 ms  0x7bb6 PK11_DeriveWithFlags()
  8346 ms  0x7bb6 basekey:0x7fb208414980
  8346 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  8346 ms  0x7bb6 ret:0x7fb208341980
  8346 ms  0x7bb6 PK11_Derive()
  8346 ms  0x7bb6 basekey:0x7fb208341980
  8346 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  8346 ms  0x7bb6 ret:0x7fb2192ac700
  8346 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8346 ms  0x7bb6 privk:0x7fb208199820::7fb208199820  10 5f 3d 08                                      ._=.
  8346 ms  0x7bb6 privk:0x7fb208199820::7fb208199820  e5 e5 e5 e5                                      ....
  8347 ms  0x7bb6 PK11_Encrypt()
  8347 ms  0x7bb6 symkey:0x7fb208341c00
  8347 ms  0x7bb6 SSL_AuthCertificateComplete()
  8347 ms  0x7bb6 fd:0x7fb2084526a0
  8347 ms  0x7bb6 err:0x0
           /* TID 0x7c14 */
  8350 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8350 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
  8351 ms  SECKEY_ECParamsToKeySize()
  8351 ms  0x7bb6 ret:0x100
  8351 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  8351 ms  0x7bb6 cx:0x7fb20842bcc8
  8352 ms     | 0x7bb6 EC_ValidatePublicKey()
  8356 ms     | 0x7bb6 ret:0x0
  8356 ms  0x7bb6 ret:0x7fb20819a820::7fb20819a820  c0 14 2a 19                                      ..*.
  8356 ms  0x7bb6 PK11_PubDeriveWithKDF()
  8356 ms  0x7bb6 seckey:0x7fb20819a820
  8356 ms     | 0x7bb6 EC_ValidatePublicKey()
  8359 ms     | 0x7bb6 ret:0x0
  8361 ms  0x7bb6 ret:0x7fb208414980
  8362 ms  0x7bb6 PK11_DeriveWithFlags()
  8362 ms  0x7bb6 basekey:0x7fb208414980
  8362 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  8362 ms  0x7bb6 ret:0x7fb208341c80
  8362 ms  0x7bb6 PK11_Derive()
  8362 ms  0x7bb6 basekey:0x7fb208341c80
  8362 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  8362 ms  0x7bb6 ret:0x7fb208341a00
  8362 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8362 ms  0x7bb6 privk:0x7fb20819a820::7fb20819a820  c0 14 2a 19                                      ..*.
  8362 ms  0x7bb6 privk:0x7fb20819a820::7fb20819a820  e5 e5 e5 e5                                      ....
  8362 ms  0x7bb6 PK11_Encrypt()
  8362 ms  0x7bb6 symkey:0x7fb208341f00
  8362 ms  0x7bb6 PK11_Encrypt()
  8362 ms  0x7bb6 symkey:0x7fb208341c00
           /* TID 0x7c14 */
  8364 ms  0x7c14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8364 ms  0x7c14 ret:0x0
           /* TID 0x7bb6 */
  8364 ms  SECKEY_ECParamsToKeySize()
  8364 ms  0x7bb6 ret:0x100
  8364 ms  0x7bb6 SECKEY_CreateECPrivateKey()
  8364 ms  0x7bb6 cx:0x7fb20842b7e8
  8365 ms     | 0x7bb6 EC_ValidatePublicKey()
  8367 ms     | 0x7bb6 ret:0x0
  8367 ms  0x7bb6 ret:0x7fb219461820::7fb219461820  b0 15 2a 19                                      ..*.
  8367 ms  0x7bb6 PK11_PubDeriveWithKDF()
  8367 ms  0x7bb6 seckey:0x7fb219461820
  8367 ms     | 0x7bb6 EC_ValidatePublicKey()
  8369 ms     | 0x7bb6 ret:0x0
  8371 ms  0x7bb6 ret:0x7fb208414980
  8371 ms  0x7bb6 PK11_DeriveWithFlags()
  8371 ms  0x7bb6 basekey:0x7fb208414980
  8371 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  8371 ms  0x7bb6 ret:0x7fb208309380
  8371 ms  0x7bb6 PK11_Derive()
  8371 ms  0x7bb6 basekey:0x7fb208309380
  8371 ms     | 0x7bb6 PK11_DeriveWithTemplate()
  8371 ms  0x7bb6 ret:0x7fb208309780
  8371 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8371 ms  0x7bb6 privk:0x7fb219461820::7fb219461820  b0 15 2a 19                                      ..*.
  8371 ms  0x7bb6 privk:0x7fb219461820::7fb219461820  e5 e5 e5 e5                                      ....
  8371 ms  0x7bb6 PK11_Encrypt()
  8371 ms  0x7bb6 symkey:0x7fb208322380
  8372 ms  0x7bb6 SSL_AuthCertificateComplete()
  8372 ms  0x7bb6 fd:0x7fb208452730
  8372 ms  0x7bb6 err:0x0
  8372 ms  0x7bb6 SSL_AuthCertificateComplete()
  8372 ms  0x7bb6 fd:0x7fb208452190
  8372 ms  0x7bb6 err:0x0
  8372 ms  0x7bb6 PK11_Encrypt()
  8372 ms  0x7bb6 symkey:0x7fb208341f00
  8372 ms  0x7bb6 PK11_Encrypt()
  8372 ms  0x7bb6 symkey:0x7fb208322380
  8386 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8386 ms  0x7bb6 privk:0x7fb20846b820::7fb20846b820  00 26 34 08                                      .&4.
  8386 ms  0x7bb6 privk:0x7fb20846b820::7fb20846b820  e5 e5 e5 e5                                      ....
  8386 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8386 ms  0x7bb6 privk:0x7fb208465820::7fb208465820  d0 23 34 08                                      .#4.
  8386 ms  0x7bb6 privk:0x7fb208465820::7fb208465820  e5 e5 e5 e5                                      ....
  8386 ms  0x7bb6 PK11_Encrypt()
  8386 ms  0x7bb6 symkey:0x7fb208414b00
  8397 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8397 ms  0x7bb6 privk:0x7fb208472820::7fb208472820  00 2b 34 08                                      .+4.
  8397 ms  0x7bb6 privk:0x7fb208472820::7fb208472820  e5 e5 e5 e5                                      ....
  8397 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8397 ms  0x7bb6 privk:0x7fb208470820::7fb208470820  20 29 34 08                                       )4.
  8397 ms  0x7bb6 privk:0x7fb208470820::7fb208470820  e5 e5 e5 e5                                      ....
  8397 ms  0x7bb6 PR_Close()
  8397 ms  0x7bb6 fd:0x7fb208302f40
  8397 ms     | 0x7bb6 PK11_Encrypt()
  8397 ms     | 0x7bb6 symkey:0x7fb208414f80
  8406 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8406 ms  0x7bb6 privk:0x7fb219223020::7fb219223020  40 8c 3a 08                                      @.:.
  8406 ms  0x7bb6 privk:0x7fb219223020::7fb219223020  e5 e5 e5 e5                                      ....
  8407 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8407 ms  0x7bb6 privk:0x7fb219220820::7fb219220820  40 2c 34 08                                      @,4.
  8407 ms  0x7bb6 privk:0x7fb219220820::7fb219220820  e5 e5 e5 e5                                      ....
  8407 ms  0x7bb6 PR_Close()
  8407 ms  0x7bb6 fd:0x7fb2082d53d0
  8407 ms     | 0x7bb6 PK11_Encrypt()
  8407 ms     | 0x7bb6 symkey:0x7fb2084a9f00
  8640 ms  0x7bb6 PK11_Encrypt()
  8640 ms  0x7bb6 symkey:0x7fb208341800
  8664 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8664 ms  0x7bb6 privk:0x7fb219467020::7fb219467020  f0 96 3e 08                                      ..>.
  8664 ms  0x7bb6 privk:0x7fb219467020::7fb219467020  e5 e5 e5 e5                                      ....
  8664 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8664 ms  0x7bb6 privk:0x7fb219464820::7fb219464820  a0 5b 3d 08                                      .[=.
  8664 ms  0x7bb6 privk:0x7fb219464820::7fb219464820  e5 e5 e5 e5                                      ....
  8664 ms  0x7bb6 PR_Close()
  8664 ms  0x7bb6 fd:0x7fb2084526a0
  8664 ms     | 0x7bb6 PK11_Encrypt()
  8664 ms     | 0x7bb6 symkey:0x7fb208341c00
  8674 ms  0x7bb6 PK11_Encrypt()
  8674 ms  0x7bb6 symkey:0x7fb208341800
  8680 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8680 ms  0x7bb6 privk:0x7fb20818f820::7fb20818f820  c0 c4 33 08                                      ..3.
  8680 ms  0x7bb6 privk:0x7fb20818f820::7fb20818f820  e5 e5 e5 e5                                      ....
  8680 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8680 ms  0x7bb6 privk:0x7fb20818c820::7fb20818c820  b0 9f 33 08                                      ..3.
  8680 ms  0x7bb6 privk:0x7fb20818c820::7fb20818c820  e5 e5 e5 e5                                      ....
  8680 ms  0x7bb6 PR_Close()
  8680 ms  0x7bb6 fd:0x7fb208452730
  8680 ms     | 0x7bb6 PK11_Encrypt()
  8680 ms     | 0x7bb6 symkey:0x7fb208341f00
           /* TID 0x7bbe */
  8681 ms  0x7bbe PR_Close()
  8681 ms  0x7bbe fd:0x7fb2082d5490
           /* TID 0x7bb6 */
  8688 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8688 ms  0x7bb6 privk:0x7fb219473820::7fb219473820  60 9f 3e 08                                      `.>.
  8688 ms  0x7bb6 privk:0x7fb219473820::7fb219473820  e5 e5 e5 e5                                      ....
  8688 ms  0x7bb6 SECKEY_DestroyPrivateKey()
  8688 ms  0x7bb6 privk:0x7fb21946d020::7fb21946d020  30 98 3e 08                                      0.>.
  8688 ms  0x7bb6 privk:0x7fb21946d020::7fb21946d020  e5 e5 e5 e5                                      ....
  8688 ms  0x7bb6 PR_Close()
  8688 ms  0x7bb6 fd:0x7fb208452190
  8688 ms     | 0x7bb6 PK11_Encrypt()
  8688 ms     | 0x7bb6 symkey:0x7fb208322380
  8696 ms  0x7bb6 PK11_Encrypt()
  8696 ms  0x7bb6 symkey:0x7fb208341800
           /* TID 0x7bbe */
  8715 ms  0x7bbe PR_Close()
  8715 ms  0x7bbe fd:0x7fb2082d5490
           /* TID 0x7bb6 */
  8719 ms  0x7bb6 PK11_Encrypt()
  8719 ms  0x7bb6 symkey:0x7fb20802c080
  8720 ms  0x7bb6 PK11_Encrypt()
  8720 ms  0x7bb6 symkey:0x7fb20802c080
  8722 ms  0x7bb6 PK11_Encrypt()
  8722 ms  0x7bb6 symkey:0x7fb20802c080
  8723 ms  0x7bb6 PK11_Encrypt()
  8723 ms  0x7bb6 symkey:0x7fb20802c080
  8724 ms  0x7bb6 PK11_Encrypt()
  8724 ms  0x7bb6 symkey:0x7fb20802c080
  8749 ms  0x7bb6 PK11_Encrypt()
  8749 ms  0x7bb6 symkey:0x7fb20802c080
  8750 ms  0x7bb6 PK11_Encrypt()
  8750 ms  0x7bb6 symkey:0x7fb20802c080
           /* TID 0x7bbe */
  8753 ms  0x7bbe PR_Close()
  8753 ms  0x7bbe fd:0x7fb20834e460
  8771 ms  0x7bbe PR_Close()
  8771 ms  0x7bbe fd:0x7fb20834e250
  8808 ms  0x7bbe PR_Close()
  8808 ms  0x7bbe fd:0x7fb20834e250
  8808 ms  0x7bbe PR_Close()
  8808 ms  0x7bbe fd:0x7fb20834eaf0
           /* TID 0x7bb6 */
  8826 ms  0x7bb6 PK11_Encrypt()
  8826 ms  0x7bb6 symkey:0x7fb20802c080
           /* TID 0x7bbe */
  8832 ms  0x7bbe PR_Close()
  8832 ms  0x7bbe fd:0x7fb20834ec40
  8832 ms  0x7bbe PR_Close()
  8832 ms  0x7bbe fd:0x7fb2083b9400
  8832 ms  0x7bbe PR_Close()
  8832 ms  0x7bbe fd:0x7fb20834ec40
           /* TID 0x7bb6 */
  8839 ms  0x7bb6 PK11_Encrypt()
  8839 ms  0x7bb6 symkey:0x7fb20802c080
           /* TID 0x7bbe */
  8844 ms  0x7bbe PR_Close()
  8844 ms  0x7bbe fd:0x7fb20834ef70
  8865 ms  0x7bbe PR_Close()
  8865 ms  0x7bbe fd:0x7fb20834e8b0
           /* TID 0x7bb6 */
  8871 ms  0x7bb6 PK11_Encrypt()
  8871 ms  0x7bb6 symkey:0x7fb208414b00
           /* TID 0x7bbe */
  8908 ms  0x7bbe PR_Close()
  8908 ms  0x7bbe fd:0x7fb20834ef70
  8974 ms  0x7bbe PR_Close()
  8974 ms  0x7bbe fd:0x7fb20834eee0
           /* TID 0x7bb6 */
  8976 ms  0x7bb6 PK11_Encrypt()
  8976 ms  0x7bb6 symkey:0x7fb2192ac780
  9022 ms  0x7bb6 PK11_Encrypt()
  9022 ms  0x7bb6 symkey:0x7fb20802c080
           /* TID 0x7bbe */
  9067 ms  0x7bbe PR_Close()
  9067 ms  0x7bbe fd:0x7fb2083fa430
           /* TID 0x7bb6 */
  9076 ms  0x7bb6 PK11_Encrypt()
  9076 ms  0x7bb6 symkey:0x7fb208414b00
           /* TID 0x7bbe */
  9299 ms  0x7bbe PR_Close()
  9299 ms  0x7bbe fd:0x7fb2082d50d0
           /* TID 0x7bb6 */
  9320 ms  0x7bb6 PK11_Encrypt()
  9320 ms  0x7bb6 symkey:0x7fb208341800
  9324 ms  0x7bb6 PK11_Encrypt()
  9324 ms  0x7bb6 symkey:0x7fb20802c080
  9335 ms  0x7bb6 PR_Close()
  9335 ms  0x7bb6 fd:0x7fb21e0b3910
           /* TID 0x7bab */
  9342 ms  0x7bab EC_ValidatePublicKey()
  9345 ms  0x7bab ret:0x0
  9345 ms  0x7bab EC_ValidatePublicKey()
  9347 ms  0x7bab ret:0x0
  9347 ms  0x7bab EC_ValidatePublicKey()
  9349 ms  0x7bab ret:0x0
  9349 ms  0x7bab EC_ValidatePublicKey()
  9351 ms  0x7bab ret:0x0
  9351 ms  0x7bab EC_ValidatePublicKey()
  9360 ms  0x7bab ret:0x0
  9360 ms  0x7bab EC_ValidatePublicKey()
  9364 ms  0x7bab ret:0x0
  9364 ms  0x7bab EC_ValidatePublicKey()
  9366 ms  0x7bab ret:0x0
  9366 ms  0x7bab EC_ValidatePublicKey()
  9367 ms  0x7bab ret:0x0
  9367 ms  0x7bab EC_ValidatePublicKey()
  9369 ms  0x7bab ret:0x0
  9369 ms  0x7bab EC_ValidatePublicKey()
  9370 ms  0x7bab ret:0x0
           /* TID 0x7bb6 */
  9372 ms  0x7bb6 PK11_Encrypt()
  9372 ms  0x7bb6 symkey:0x7fb20802c080
  9372 ms  0x7bb6 PK11_Encrypt()
  9372 ms  0x7bb6 symkey:0x7fb2083e8b80
  9372 ms  0x7bb6 PK11_Encrypt()
  9372 ms  0x7bb6 symkey:0x7fb2192ac780
  9372 ms  0x7bb6 PR_Close()
  9372 ms  0x7bb6 fd:0x7fb208452610
  9372 ms  0x7bb6 PR_Close()
  9372 ms  0x7bb6 fd:0x7fb219429cd0
  9372 ms     | 0x7bb6 PK11_Encrypt()
  9372 ms     | 0x7bb6 symkey:0x7fb208414700
  9372 ms  0x7bb6 PR_Close()
  9372 ms  0x7bb6 fd:0x7fb219429be0
  9373 ms  0x7bb6 PR_Close()
  9373 ms  0x7bb6 fd:0x7fb2192a68b0
  9373 ms     | 0x7bb6 PK11_Encrypt()
  9373 ms     | 0x7bb6 symkey:0x7fb208413800
  9373 ms  0x7bb6 PR_Close()
  9373 ms  0x7bb6 fd:0x7fb219995b80
  9373 ms  0x7bb6 PR_Close()
  9373 ms  0x7bb6 fd:0x7fb21990b550
  9373 ms     | 0x7bb6 PK11_Encrypt()
  9373 ms     | 0x7bb6 symkey:0x7fb2234af680
  9373 ms  0x7bb6 PR_Close()
  9373 ms  0x7bb6 fd:0x7fb21e04e790
  9373 ms     | 0x7bb6 PK11_Encrypt()
  9373 ms     | 0x7bb6 symkey:0x7fb219fbbe00
  9374 ms  0x7bb6 PR_Close()
  9374 ms  0x7bb6 fd:0x7fb2083b9df0
  9374 ms     | 0x7bb6 PK11_Encrypt()
  9374 ms     | 0x7bb6 symkey:0x7fb2083e8b80
  9375 ms  0x7bb6 PR_Close()
  9375 ms  0x7bb6 fd:0x7fb2082d52b0
  9375 ms     | 0x7bb6 PK11_Encrypt()
  9375 ms     | 0x7bb6 symkey:0x7fb2192ac780
  9375 ms  0x7bb6 PR_Close()
  9375 ms  0x7bb6 fd:0x7fb2082d5460
  9375 ms     | 0x7bb6 PK11_Encrypt()
  9375 ms     | 0x7bb6 symkey:0x7fb20802c080
           /* TID 0x7c07 */
  9375 ms  0x7c07 PR_Close()
  9375 ms  0x7c07 fd:0x7fb2082d52b0
  9375 ms  0x7c07 PR_Close()
  9375 ms  0x7c07 fd:0x7fb2082d52b0
           /* TID 0x7bab */
  9379 ms  0x7bab PR_Close()
  9379 ms  0x7bab fd:0x7fb21aefb610
  9379 ms  0x7bab PR_Close()
  9379 ms  0x7bab fd:0x7fb2083025e0
  9380 ms  0x7bab PR_Close()
  9380 ms  0x7bab fd:0x7fb2083027f0
  9380 ms  0x7bab PR_Close()
  9380 ms  0x7bab fd:0x7fb2083025e0
  9380 ms  0x7bab PR_Close()
  9380 ms  0x7bab fd:0x7fb2083027f0
  9380 ms  0x7bab PR_Close()
  9380 ms  0x7bab fd:0x7fb2083025e0
           /* TID 0x7c0f */
  9385 ms  0x7c0f PR_Close()
  9385 ms  0x7c0f fd:0x7fb2083025e0
           /* TID 0x7bbe */
  9392 ms  0x7bbe PR_Close()
  9392 ms  0x7bbe fd:0x7fb208452ca0
  9392 ms  0x7bbe PR_Close()
  9392 ms  0x7bbe fd:0x7fb208452d30
  9392 ms  0x7bbe PR_Close()
  9392 ms  0x7bbe fd:0x7fb208452fd0
  9392 ms  0x7bbe PR_Close()
  9392 ms  0x7bbe fd:0x7fb2084990d0
  9392 ms  0x7bbe PR_Close()
  9392 ms  0x7bbe fd:0x7fb2192a6760
  9392 ms  0x7bbe PR_Close()
  9392 ms  0x7bbe fd:0x7fb2192a6820
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb208452ca0
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb208452d30
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb208452fd0
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb2084990d0
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb2192a6760
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb2192a6820
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb2192a68b0
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb2192a6940
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb2192a69a0
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb2194296d0
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb219429760
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb219429880
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb219429c10
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb219429cd0
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb219429d30
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb219429df0
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb2194940a0
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb219494100
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb219494160
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb2194941c0
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb219494220
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb2194942b0
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb219494310
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb2194943a0
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb219494400
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb219494520
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb219494580
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb2194945e0
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb219494640
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb2194946a0
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb219494700
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb219494760
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb2194947f0
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb2194948e0
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb219494940
  9393 ms  0x7bbe PR_Close()
  9393 ms  0x7bbe fd:0x7fb2194949a0
           /* TID 0x7bab */
  9404 ms  0x7bab PR_Close()
  9404 ms  0x7bab fd:0x7fb2083027f0
  9404 ms  0x7bab PR_Close()
  9404 ms  0x7bab fd:0x7fb219429760
  9405 ms  0x7bab PR_Close()
  9405 ms  0x7bab fd:0x7fb2083027f0
  9405 ms  0x7bab PR_Close()
  9405 ms  0x7bab fd:0x7fb219429760
  9406 ms  0x7bab PR_Close()
  9406 ms  0x7bab fd:0x7fb2243c89a0
  9406 ms  0x7bab PR_Close()
  9406 ms  0x7bab fd:0x7fb2243c88b0
  9406 ms  0x7bab PR_Close()
  9406 ms  0x7bab fd:0x7fb2243c8a60
  9408 ms  0x7bab PR_Close()
  9408 ms  0x7bab fd:0x7fb219429790
  9410 ms  0x7bab PR_Close()
  9410 ms  0x7bab fd:0x7fb219429790
           /* TID 0x7bb6 */
  9410 ms  0x7bb6 PK11_Encrypt()
  9410 ms  0x7bb6 symkey:0x7fb208341800
  9410 ms  0x7bb6 PR_Close()
  9410 ms  0x7bb6 fd:0x7fb20834e310
  9411 ms     | 0x7bb6 PK11_Encrypt()
  9411 ms     | 0x7bb6 symkey:0x7fb208341800
           /* TID 0x7bab */
  9417 ms  0x7bab PR_Close()
  9417 ms  0x7bab fd:0x7fb2083027f0
  9417 ms  0x7bab PR_Close()
  9417 ms  0x7bab fd:0x7fb208302640
  9417 ms  0x7bab PR_Close()
  9417 ms  0x7bab fd:0x7fb2083027f0
  9417 ms  0x7bab PR_Close()
  9417 ms  0x7bab fd:0x7fb208302640
  9420 ms  0x7bab PR_Close()
  9420 ms  0x7bab fd:0x7fb20834e310
  9421 ms  0x7bab PR_Close()
  9421 ms  0x7bab fd:0x7fb20834e310
  9423 ms  0x7bab PR_Close()
  9423 ms  0x7bab fd:0x7fb2083027f0
  9423 ms  0x7bab PR_Close()
  9423 ms  0x7bab fd:0x7fb20834e790
  9423 ms  0x7bab PR_Close()
  9423 ms  0x7bab fd:0x7fb2083027f0
  9423 ms  0x7bab PR_Close()
  9423 ms  0x7bab fd:0x7fb20834e790
  9426 ms  0x7bab PR_Close()
  9426 ms  0x7bab fd:0x7fb20834e7c0
  9427 ms  0x7bab PR_Close()
  9427 ms  0x7bab fd:0x7fb20834e7c0
  9433 ms  0x7bab PR_Close()
  9433 ms  0x7bab fd:0x7fb219429d60
  9434 ms  0x7bab PR_Close()
  9434 ms  0x7bab fd:0x7fb219429d60
  9436 ms  0x7bab PR_Close()
  9436 ms  0x7bab fd:0x7fb219429df0
           /* TID 0x7bbe */
  9444 ms  0x7bbe PR_Close()
  9444 ms  0x7bbe fd:0x7fb208302ee0
  9450 ms  0x7bbe PR_Close()
  9450 ms  0x7bbe fd:0x7fb208452520
           /* TID 0x7c0f */
  9465 ms  0x7c0f PR_Close()
  9465 ms  0x7c0f fd:0x7fb2082d5340
  9466 ms  0x7c0f PR_Close()
  9466 ms  0x7c0f fd:0x7fb2082d5340
           /* TID 0x7bab */
  9467 ms  0x7bab PR_Close()
  9467 ms  0x7bab fd:0x7fb2083027f0
  9467 ms  0x7bab PR_Close()
  9467 ms  0x7bab fd:0x7fb2083fabb0
           /* TID 0x7c0f */
  9476 ms  0x7c0f PR_Close()
  9476 ms  0x7c0f fd:0x7fb2083025e0
  9514 ms  0x7c0f PR_Close()
  9514 ms  0x7c0f fd:0x7fb2083025e0
           /* TID 0x7bb6 */
  9517 ms  0x7bb6 SSL_ImportFD()
  9518 ms  0x7bb6 ret:0x7fb2083facd0
  9518 ms  0x7bb6 SSL_AuthCertificateHook()
  9518 ms  0x7bb6 fd:0x7fb2083facd0
  9518 ms  0x7bb6 ret:0x0
  9518 ms  0x7bb6 PR_Connect()
  9518 ms  0x7bb6 fd:0x7fb2083facd0
           /* TID 0x7bb0 */
  9528 ms  0x7bb0 PR_Close()
  9528 ms  0x7bb0 fd:0x7fb222f2ee20
           /* TID 0x7bb6 */
  9534 ms  0x7bb6 PK11_Encrypt()
  9534 ms  0x7bb6 symkey:0x7fb208414b00
  9534 ms  0x7bb6 PR_Close()
  9534 ms  0x7bb6 fd:0x7fb2083facd0
  9534 ms  0x7bb6 PR_Close()
  9534 ms  0x7bb6 fd:0x7fb20834e4c0
  9534 ms     | 0x7bb6 PK11_Encrypt()
  9534 ms     | 0x7bb6 symkey:0x7fb208414b00
           /* TID 0x7c0f */
  9543 ms  0x7c0f PR_Close()
  9543 ms  0x7c0f fd:0x7fb2082d54f0
           /* TID 0x7bab */
  9553 ms  0x7bab PR_Close()
  9553 ms  0x7bab fd:0x7fb2082d5340
  9553 ms  0x7bab PR_Close()
  9553 ms  0x7bab fd:0x7fb2082d54f0
           /* TID 0x7bb6 */
  9553 ms  0x7bb6 PR_Close()
  9553 ms  0x7bb6 fd:0x7fb21a4f5250
           /* TID 0x7c07 */
  9554 ms  0x7c07 PR_Close()
  9554 ms  0x7c07 fd:0x7fb20834ef70
  9554 ms  0x7c07 PR_Close()
  9554 ms  0x7c07 fd:0x7fb20834ef70
  9554 ms  0x7c07 PR_Close()
  9554 ms  0x7c07 fd:0x7fb20834ef70
  9554 ms  0x7c07 PR_Close()
  9554 ms  0x7c07 fd:0x7fb2083b91f0
           /* TID 0x7c0f */
  9555 ms  0x7c0f PR_Close()
  9555 ms  0x7c0f fd:0x7fb2083b91f0
           /* TID 0x7bbe */
  9558 ms  0x7bbe PR_Close()
  9558 ms  0x7bbe fd:0x7fb208499f70
  9558 ms  0x7bbe PR_Close()
  9558 ms  0x7bbe fd:0x7fb219429880
           /* TID 0x7bb0 */
  9568 ms  0x7bb0 PR_Close()
  9568 ms  0x7bb0 fd:0x7fb21990b490
           /* TID 0x7bab */
  9652 ms  0x7bab PR_Close()
  9652 ms  0x7bab fd:0x7fb2082d5340
  9652 ms  0x7bab PR_Close()
  9652 ms  0x7bab fd:0x7fb219494a30
           /* TID 0x7c0f */
  9654 ms  0x7c0f PR_Close()
  9654 ms  0x7c0f fd:0x7fb2194949a0
           /* TID 0x7bb0 */
  9656 ms  0x7bb0 PR_Close()
  9656 ms  0x7bb0 fd:0x7fb21f64a820
           /* TID 0x7c0f */
  9656 ms  0x7c0f PR_Close()
  9656 ms  0x7c0f fd:0x7fb208499dc0
  9717 ms  0x7c0f PR_Close()
  9717 ms  0x7c0f fd:0x7fb2082d5640
  9719 ms  0x7c0f PR_Close()
  9719 ms  0x7c0f fd:0x7fb2082d5640
  9722 ms  0x7c0f PR_Close()
  9722 ms  0x7c0f fd:0x7fb2083025b0
  9723 ms  0x7c0f PR_Close()
  9723 ms  0x7c0f fd:0x7fb2083026a0
  9733 ms  0x7c0f PR_Close()
  9733 ms  0x7c0f fd:0x7fb208302f10
  9738 ms  0x7c0f PR_Close()
  9738 ms  0x7c0f fd:0x7fb2083b9400
  9745 ms  0x7c0f PR_Close()
  9745 ms  0x7c0f fd:0x7fb2084521c0
  9754 ms  0x7c0f PR_Close()
  9754 ms  0x7c0f fd:0x7fb208452310
  9756 ms  0x7c0f PR_Close()
  9756 ms  0x7c0f fd:0x7fb208452310
           /* TID 0x7bab */
 10049 ms  0x7bab PR_Close()
 10049 ms  0x7bab fd:0x7fb2082d58e0
 10049 ms  0x7bab PR_Close()
 10049 ms  0x7bab fd:0x7fb2082d58e0
 10054 ms  0x7bab PR_Close()
 10054 ms  0x7bab fd:0x7fb2416da130
 10055 ms  0x7bab PR_Close()
 10055 ms  0x7bab fd:0x7fb2416da190
Process terminated
