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
           /* TID 0x1670 */
    27 ms  0x1670 PR_Close()
    27 ms  0x1670 fd:0x7fa2edfa6700
    29 ms  0x1670 PR_Close()
    29 ms  0x1670 fd:0x7fa2edfa6700
           /* TID 0x1649 */
    39 ms  SECKEY_ECParamsToKeySize()
    39 ms  0x1649 ret:0x100
    39 ms  0x1649 SECKEY_CreateECPrivateKey()
    39 ms  0x1649 cx:0x7fa2ee0053e8
    40 ms     | 0x1649 EC_ValidatePublicKey()
    41 ms     | 0x1649 ret:0x0
    42 ms  0x1649 ret:0x7fa2edf27820::7fa2edf27820  20 b4 c5 fc                                       ...
    42 ms  0x1649 PK11_PubDeriveWithKDF()
    42 ms  0x1649 seckey:0x7fa2edf27820
    42 ms     | 0x1649 EC_ValidatePublicKey()
    44 ms     | 0x1649 ret:0x0
    45 ms  0x1649 ret:0x7fa2ef1a6b00
    45 ms  0x1649 PK11_DeriveWithFlags()
    45 ms  0x1649 basekey:0x7fa2ef1a6b00
    45 ms     | 0x1649 PK11_DeriveWithTemplate()
    45 ms  0x1649 ret:0x7fa2ef1a6a80
    45 ms  0x1649 PK11_Derive()
    45 ms  0x1649 basekey:0x7fa2ef1a6a80
    45 ms     | 0x1649 PK11_DeriveWithTemplate()
    45 ms  0x1649 ret:0x7fa2ef1a6780
    45 ms  0x1649 SECKEY_DestroyPrivateKey()
    45 ms  0x1649 privk:0x7fa2edf27820::7fa2edf27820  20 b4 c5 fc                                       ...
    45 ms  0x1649 privk:0x7fa2edf27820::7fa2edf27820  e5 e5 e5 e5                                      ....
    46 ms  0x1649 PK11_Encrypt()
    46 ms  0x1649 symkey:0x7fa2ef1a6b80
    46 ms  0x1649 PR_Connect()
    46 ms  0x1649 fd:0x7fa2edfa6880
           /* TID 0x16b0 */
    98 ms  0x16b0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
    98 ms  0x16b0 ret:0x0
           /* TID 0x1651 */
    99 ms  0x1651 PR_Close()
    99 ms  0x1651 fd:0x7fa2edfa6760
           /* TID 0x1649 */
    99 ms  0x1649 SSL_AuthCertificateComplete()
    99 ms  0x1649 fd:0x7fa2ee230cd0
    99 ms  0x1649 err:0x0
   100 ms  0x1649 PK11_Encrypt()
   100 ms  0x1649 symkey:0x7fa2ef1a6b80
   253 ms  0x1649 SECKEY_DestroyPrivateKey()
   253 ms  0x1649 privk:0x7fa2ee0cd020::7fa2ee0cd020  e0 6c 6e ef                                      .ln.
   253 ms  0x1649 privk:0x7fa2ee0cd020::7fa2ee0cd020  e5 e5 e5 e5                                      ....
   253 ms  0x1649 SECKEY_DestroyPrivateKey()
   253 ms  0x1649 privk:0x7fa2ee0cb020::7fa2ee0cb020  90 52 e3 ee                                      .R..
   253 ms  0x1649 privk:0x7fa2ee0cb020::7fa2ee0cb020  e5 e5 e5 e5                                      ....
   295 ms  0x1649 SSL_ImportFD()
   295 ms  0x1649 ret:0x7fa2edfa6940
   295 ms  0x1649 SSL_AuthCertificateHook()
   295 ms  0x1649 fd:0x7fa2edfa6940
   295 ms  0x1649 ret:0x0
   295 ms  0x1649 PR_Connect()
   295 ms  0x1649 fd:0x7fa2edfa6940
           /* TID 0x1651 */
   464 ms  0x1651 PR_Close()
   464 ms  0x1651 fd:0x7fa2edfa6fd0
           /* TID 0x1649 */
   505 ms  0x1649 SECKEY_CreateECPrivateKey()
   505 ms  0x1649 cx:0x7fa2edfa5cc8
   505 ms     | 0x1649 EC_ValidatePublicKey()
   505 ms     | 0x1649 ret:0x0
   505 ms  0x1649 ret:0x7fa2edd5f820::7fa2edd5f820  a0 06 d9 ed                                      ....
   505 ms  0x1649 SECKEY_CreateECPrivateKey()
   505 ms  0x1649 cx:0x7fa2edfa5cc8
   506 ms     | 0x1649 EC_ValidatePublicKey()
   508 ms     | 0x1649 ret:0x0
   508 ms  0x1649 ret:0x7fa2edd61820::7fa2edd61820  80 08 d9 ed                                      ....
   721 ms  SECKEY_ECParamsToKeySize()
   722 ms  0x1649 ret:0x100
   722 ms  0x1649 SECKEY_CreateECPrivateKey()
   722 ms  0x1649 cx:0x7fa2edfa5cc8
   724 ms     | 0x1649 EC_ValidatePublicKey()
   728 ms     | 0x1649 ret:0x0
   728 ms  0x1649 ret:0x7fa2edd6c020::7fa2edd6c020  a0 96 df ed                                      ....
   728 ms  0x1649 PK11_PubDeriveWithKDF()
   728 ms  0x1649 seckey:0x7fa2edd6c020
   728 ms     | 0x1649 EC_ValidatePublicKey()
   735 ms     | 0x1649 ret:0x0
   739 ms  0x1649 ret:0x7fa2ef1a6b00
   739 ms  0x1649 PK11_DeriveWithFlags()
   739 ms  0x1649 basekey:0x7fa2ef1a6b00
   739 ms     | 0x1649 PK11_DeriveWithTemplate()
   739 ms  0x1649 ret:0x7fa2edde4800
   739 ms  0x1649 PK11_Derive()
   739 ms  0x1649 basekey:0x7fa2edde4800
   739 ms     | 0x1649 PK11_DeriveWithTemplate()
   739 ms  0x1649 ret:0x7fa2edde4900
   739 ms  0x1649 SECKEY_DestroyPrivateKey()
   739 ms  0x1649 privk:0x7fa2edd6c020::7fa2edd6c020  a0 96 df ed                                      ....
   739 ms  0x1649 privk:0x7fa2edd6c020::7fa2edd6c020  e5 e5 e5 e5                                      ....
   739 ms  0x1649 PK11_Encrypt()
   739 ms  0x1649 symkey:0x7fa2edde4a80
   740 ms  0x1649 PR_Connect()
   740 ms  0x1649 fd:0x7fa2efbc1e50
           /* TID 0x1670 */
   773 ms  0x1670 PR_Close()
   773 ms  0x1670 fd:0x7fa2efbc1dc0
           /* TID 0x1651 */
   794 ms  0x1651 PR_Close()
   794 ms  0x1651 fd:0x7fa2efbc1dc0
           /* TID 0x16b0 */
   794 ms  0x16b0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   795 ms  0x16b0 ret:0x0
           /* TID 0x1649 */
   795 ms  0x1649 SSL_AuthCertificateComplete()
   795 ms  0x1649 fd:0x7fa2edfa6940
   795 ms  0x1649 err:0x0
   795 ms  0x1649 PK11_Encrypt()
   795 ms  0x1649 symkey:0x7fa2edde4a80
   949 ms  0x1649 SECKEY_DestroyPrivateKey()
   949 ms  0x1649 privk:0x7fa2edd61820::7fa2edd61820  80 08 d9 ed                                      ....
   950 ms  0x1649 privk:0x7fa2edd61820::7fa2edd61820  e5 e5 e5 e5                                      ....
   950 ms  0x1649 SECKEY_DestroyPrivateKey()
   950 ms  0x1649 privk:0x7fa2edd5f820::7fa2edd5f820  a0 06 d9 ed                                      ....
   950 ms  0x1649 privk:0x7fa2edd5f820::7fa2edd5f820  e5 e5 e5 e5                                      ....
           /* TID 0x1670 */
  1006 ms  0x1670 PR_Close()
  1006 ms  0x1670 fd:0x7fa2edfa6ac0
  1010 ms  0x1670 PR_Close()
  1010 ms  0x1670 fd:0x7fa2edfa6ac0
           /* TID 0x1649 */
  1171 ms  0x1649 SSL_ImportFD()
  1171 ms  0x1649 ret:0x7fa2dcf160d0
  1171 ms  0x1649 SSL_AuthCertificateHook()
  1171 ms  0x1649 fd:0x7fa2dcf160d0
  1171 ms  0x1649 ret:0x0
  1171 ms  0x1649 PR_Connect()
  1171 ms  0x1649 fd:0x7fa2dcf160d0
  1197 ms  0x1649 SECKEY_CreateECPrivateKey()
  1197 ms  0x1649 cx:0x7fa2edfd85c8
  1199 ms     | 0x1649 EC_ValidatePublicKey()
  1199 ms     | 0x1649 ret:0x0
  1199 ms  0x1649 ret:0x7fa2edd61020::7fa2edd61020  c0 94 df ed                                      ....
  1199 ms  0x1649 SECKEY_CreateECPrivateKey()
  1199 ms  0x1649 cx:0x7fa2edfd85c8
  1201 ms     | 0x1649 EC_ValidatePublicKey()
  1205 ms     | 0x1649 ret:0x0
  1205 ms  0x1649 ret:0x7fa2edd69820::7fa2edd69820  a0 96 df ed                                      ....
           /* TID 0x16b0 */
  1258 ms  0x16b0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1258 ms  0x16b0 ret:0x0
           /* TID 0x1649 */
  1259 ms  SECKEY_ECParamsToKeySize()
  1259 ms  0x1649 ret:0x100
  1259 ms  0x1649 SECKEY_CreateECPrivateKey()
  1259 ms  0x1649 cx:0x7fa2edfd85c8
  1261 ms     | 0x1649 EC_ValidatePublicKey()
  1265 ms     | 0x1649 ret:0x0
  1265 ms  0x1649 ret:0x7fa2edd6d020::7fa2edd6d020  c0 99 df ed                                      ....
  1265 ms  0x1649 PK11_PubDeriveWithKDF()
  1265 ms  0x1649 seckey:0x7fa2edd6d020
  1266 ms     | 0x1649 EC_ValidatePublicKey()
  1270 ms     | 0x1649 ret:0x0
  1274 ms  0x1649 ret:0x7fa2ef1a6b00
  1274 ms  0x1649 PK11_DeriveWithFlags()
  1274 ms  0x1649 basekey:0x7fa2ef1a6b00
  1274 ms     | 0x1649 PK11_DeriveWithTemplate()
  1274 ms  0x1649 ret:0x7fa2edde5200
  1274 ms  0x1649 PK11_Derive()
  1274 ms  0x1649 basekey:0x7fa2edde5200
  1274 ms     | 0x1649 PK11_DeriveWithTemplate()
  1274 ms  0x1649 ret:0x7fa2edde5400
  1274 ms  0x1649 SECKEY_DestroyPrivateKey()
  1274 ms  0x1649 privk:0x7fa2edd6d020::7fa2edd6d020  c0 99 df ed                                      ....
  1274 ms  0x1649 privk:0x7fa2edd6d020::7fa2edd6d020  e5 e5 e5 e5                                      ....
  1274 ms  0x1649 PK11_Encrypt()
  1274 ms  0x1649 symkey:0x7fa2edde5900
  1275 ms  0x1649 SSL_AuthCertificateComplete()
  1275 ms  0x1649 fd:0x7fa2dcf160d0
  1275 ms  0x1649 err:0x0
  1275 ms  0x1649 PK11_Encrypt()
  1275 ms  0x1649 symkey:0x7fa2edde5900
  1326 ms  0x1649 SECKEY_DestroyPrivateKey()
  1326 ms  0x1649 privk:0x7fa2edd69820::7fa2edd69820  a0 96 df ed                                      ....
  1326 ms  0x1649 privk:0x7fa2edd69820::7fa2edd69820  e5 e5 e5 e5                                      ....
  1326 ms  0x1649 SECKEY_DestroyPrivateKey()
  1326 ms  0x1649 privk:0x7fa2edd61020::7fa2edd61020  c0 94 df ed                                      ....
  1326 ms  0x1649 privk:0x7fa2edd61020::7fa2edd61020  e5 e5 e5 e5                                      ....
  1328 ms  0x1649 PK11_Encrypt()
  1328 ms  0x1649 symkey:0x7fa2edde5900
  1356 ms  0x1649 PK11_Encrypt()
  1356 ms  0x1649 symkey:0x7fa2edde5900
  1387 ms  0x1649 PK11_Encrypt()
  1387 ms  0x1649 symkey:0x7fa2edde5900
  1416 ms  0x1649 PK11_Encrypt()
  1416 ms  0x1649 symkey:0x7fa2edde5900
  1531 ms  0x1649 PK11_Encrypt()
  1531 ms  0x1649 symkey:0x7fa2edde5900
  1564 ms  0x1649 PK11_Encrypt()
  1564 ms  0x1649 symkey:0x7fa2edde5900
  1596 ms  0x1649 PK11_Encrypt()
  1596 ms  0x1649 symkey:0x7fa2edde5900
           /* TID 0x16a8 */
  1624 ms  0x16a8 PR_Close()
  1624 ms  0x16a8 fd:0x7fa2dcf16310
  1624 ms  0x16a8 PR_Close()
  1624 ms  0x16a8 fd:0x7fa2dcf16370
  1624 ms  0x16a8 PR_Close()
  1624 ms  0x16a8 fd:0x7fa2dcf16310
  1624 ms  0x16a8 PR_Close()
  1624 ms  0x16a8 fd:0x7fa2dcf16370
  1625 ms  0x16a8 PR_Close()
  1625 ms  0x16a8 fd:0x7fa2dcf16310
  1625 ms  0x16a8 PR_Close()
  1625 ms  0x16a8 fd:0x7fa2dcf16370
  1625 ms  0x16a8 PR_Close()
  1625 ms  0x16a8 fd:0x7fa2dcf16310
  1625 ms  0x16a8 PR_Close()
  1625 ms  0x16a8 fd:0x7fa2dcf16370
  1625 ms  0x16a8 PR_Close()
  1625 ms  0x16a8 fd:0x7fa2dcf16310
  1625 ms  0x16a8 PR_Close()
  1625 ms  0x16a8 fd:0x7fa2dcf16370
  1625 ms  0x16a8 PR_Close()
  1625 ms  0x16a8 fd:0x7fa2dcf16310
  1625 ms  0x16a8 PR_Close()
  1625 ms  0x16a8 fd:0x7fa2dcf16370
  1625 ms  0x16a8 PR_Close()
  1625 ms  0x16a8 fd:0x7fa2dcf16310
  1625 ms  0x16a8 PR_Close()
  1625 ms  0x16a8 fd:0x7fa2dcf16370
  1626 ms  0x16a8 PR_Close()
  1626 ms  0x16a8 fd:0x7fa2dcf16310
  1626 ms  0x16a8 PR_Close()
  1626 ms  0x16a8 fd:0x7fa2dcf16370
  1626 ms  0x16a8 PR_Close()
  1626 ms  0x16a8 fd:0x7fa2dcf16310
  1626 ms  0x16a8 PR_Close()
  1626 ms  0x16a8 fd:0x7fa2dcf16370
  1626 ms  0x16a8 PR_Close()
  1626 ms  0x16a8 fd:0x7fa2dcf16310
  1626 ms  0x16a8 PR_Close()
  1626 ms  0x16a8 fd:0x7fa2dcf16370
  1626 ms  0x16a8 PR_Close()
  1626 ms  0x16a8 fd:0x7fa2dcf16310
  1626 ms  0x16a8 PR_Close()
  1626 ms  0x16a8 fd:0x7fa2dcf16370
  1626 ms  0x16a8 PR_Close()
  1626 ms  0x16a8 fd:0x7fa2dcf16310
  1626 ms  0x16a8 PR_Close()
  1626 ms  0x16a8 fd:0x7fa2dcf16370
  1626 ms  0x16a8 PR_Close()
  1626 ms  0x16a8 fd:0x7fa2dcf16310
  1626 ms  0x16a8 PR_Close()
  1626 ms  0x16a8 fd:0x7fa2dcf16370
  1627 ms  0x16a8 PR_Close()
  1627 ms  0x16a8 fd:0x7fa2dcf16310
  1627 ms  0x16a8 PR_Close()
  1627 ms  0x16a8 fd:0x7fa2dcf16370
  1630 ms  0x16a8 PR_Close()
  1630 ms  0x16a8 fd:0x7fa2dcf16310
  1630 ms  0x16a8 PR_Close()
  1630 ms  0x16a8 fd:0x7fa2dcf16310
  1633 ms  0x16a8 PR_Close()
  1633 ms  0x16a8 fd:0x7fa2dcf16310
  1633 ms  0x16a8 PR_Close()
  1633 ms  0x16a8 fd:0x7fa2dcf16340
  1636 ms  0x16a8 PR_Close()
  1636 ms  0x16a8 fd:0x7fa2dcf16340
  1636 ms  0x16a8 PR_Close()
  1636 ms  0x16a8 fd:0x7fa2dcf16340
  1638 ms  0x16a8 PR_Close()
  1638 ms  0x16a8 fd:0x7fa2dcf16340
  1639 ms  0x16a8 PR_Close()
  1639 ms  0x16a8 fd:0x7fa2dcf16340
  1691 ms  0x16a8 PR_Close()
  1691 ms  0x16a8 fd:0x7fa2dcf16340
  1692 ms  0x16a8 PR_Close()
  1692 ms  0x16a8 fd:0x7fa2dcf16340
  1700 ms  0x16a8 PR_Close()
  1700 ms  0x16a8 fd:0x7fa2dcf16340
  1700 ms  0x16a8 PR_Close()
  1700 ms  0x16a8 fd:0x7fa2dcf16340
  1706 ms  0x16a8 PR_Close()
  1706 ms  0x16a8 fd:0x7fa2dcf16340
  1707 ms  0x16a8 PR_Close()
  1707 ms  0x16a8 fd:0x7fa2dcf16340
  1710 ms  0x16a8 PR_Close()
  1710 ms  0x16a8 fd:0x7fa2dcf16340
  1710 ms  0x16a8 PR_Close()
  1710 ms  0x16a8 fd:0x7fa2dcf16340
           /* TID 0x16a5 */
  1711 ms  0x16a5 PR_Close()
  1711 ms  0x16a5 fd:0x7fa2dcf16340
  1711 ms  0x16a5 PR_Close()
  1711 ms  0x16a5 fd:0x7fa2dcf16340
  1711 ms  0x16a5 PR_Close()
  1711 ms  0x16a5 fd:0x7fa2dcf16340
  1711 ms  0x16a5 PR_Close()
  1711 ms  0x16a5 fd:0x7fa2dcf16340
  1711 ms  0x16a5 PR_Close()
  1711 ms  0x16a5 fd:0x7fa2dcf16340
  1711 ms  0x16a5 PR_Close()
  1711 ms  0x16a5 fd:0x7fa2dcf16340
  1711 ms  0x16a5 PR_Close()
  1711 ms  0x16a5 fd:0x7fa2dcf16340
  1711 ms  0x16a5 PR_Close()
  1711 ms  0x16a5 fd:0x7fa2dcf16340
  1711 ms  0x16a5 PR_Close()
  1711 ms  0x16a5 fd:0x7fa2dcf16340
  1711 ms  0x16a5 PR_Close()
  1711 ms  0x16a5 fd:0x7fa2dcf16340
  1711 ms  0x16a5 PR_Close()
  1711 ms  0x16a5 fd:0x7fa2dcf16340
  1711 ms  0x16a5 PR_Close()
  1711 ms  0x16a5 fd:0x7fa2dcf16340
  1711 ms  0x16a5 PR_Close()
  1711 ms  0x16a5 fd:0x7fa2dcf16340
  1711 ms  0x16a5 PR_Close()
  1711 ms  0x16a5 fd:0x7fa2dcf16340
  1711 ms  0x16a5 PR_Close()
  1711 ms  0x16a5 fd:0x7fa2dcf16340
           /* TID 0x1670 */
  2213 ms  0x1670 PR_Close()
  2213 ms  0x1670 fd:0x7fa2dcf166a0
  2216 ms  0x1670 PR_Close()
  2216 ms  0x1670 fd:0x7fa2dcf166a0
  2803 ms  0x1670 PR_Close()
  2803 ms  0x1670 fd:0x7fa2dcf166a0
           /* TID 0x1651 */
  4149 ms  0x1651 PR_Close()
  4149 ms  0x1651 fd:0x7fa2dcf166a0
  4149 ms  0x1651 PR_Close()
  4149 ms  0x1651 fd:0x7fa2dcf167f0
           /* TID 0x1649 */
  4699 ms  0x1649 SSL_ImportFD()
  4699 ms  0x1649 ret:0x7fa2eeef26a0
  4699 ms  0x1649 SSL_AuthCertificateHook()
  4699 ms  0x1649 fd:0x7fa2eeef26a0
  4699 ms  0x1649 ret:0x0
  4699 ms  0x1649 PR_Connect()
  4699 ms  0x1649 fd:0x7fa2eeef26a0
  4950 ms  0x1649 SSL_ImportFD()
  4950 ms  0x1649 ret:0x7fa2eeef2850
  4950 ms  0x1649 SSL_AuthCertificateHook()
  4950 ms  0x1649 fd:0x7fa2eeef2850
  4950 ms  0x1649 ret:0x0
  4950 ms  0x1649 PR_Connect()
  4950 ms  0x1649 fd:0x7fa2eeef2850
  4994 ms  0x1649 SECKEY_CreateECPrivateKey()
  4994 ms  0x1649 cx:0x7fa2edfd8908
  4996 ms     | 0x1649 EC_ValidatePublicKey()
  4996 ms     | 0x1649 ret:0x0
  4996 ms  0x1649 ret:0x7fa2f3839020::7fa2f3839020  c0 29 d7 ee                                      .)..
  4996 ms  0x1649 SECKEY_CreateECPrivateKey()
  4996 ms  0x1649 cx:0x7fa2edfd8908
  5000 ms     | 0x1649 EC_ValidatePublicKey()
  5005 ms     | 0x1649 ret:0x0
  5005 ms  0x1649 ret:0x7fa2dcd03820::7fa2dcd03820  50 2b d7 ee                                      P+..
  5206 ms  0x1649 SECKEY_CreateECPrivateKey()
  5206 ms  0x1649 cx:0x7fa2edfd8aa8
  5209 ms     | 0x1649 EC_ValidatePublicKey()
  5209 ms     | 0x1649 ret:0x0
  5209 ms  0x1649 ret:0x7fa2dcd06020::7fa2dcd06020  20 29 d7 ee                                       )..
  5209 ms  0x1649 SECKEY_CreateECPrivateKey()
  5209 ms  0x1649 cx:0x7fa2edfd8aa8
  5211 ms     | 0x1649 EC_ValidatePublicKey()
  5217 ms     | 0x1649 ret:0x0
  5217 ms  0x1649 ret:0x7fa2dcd08020::7fa2dcd08020  c0 2e d7 ee                                      ....
           /* TID 0x16b0 */
  5306 ms  0x16b0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5306 ms  0x16b0 ret:0x0
           /* TID 0x1649 */
  5309 ms  SECKEY_ECParamsToKeySize()
  5309 ms  0x1649 ret:0x100
  5309 ms  0x1649 SECKEY_CreateECPrivateKey()
  5309 ms  0x1649 cx:0x7fa2edfd8908
  5312 ms     | 0x1649 EC_ValidatePublicKey()
  5317 ms     | 0x1649 ret:0x0
  5317 ms  0x1649 ret:0x7fa2dcd11820::7fa2dcd11820  60 25 ec dc                                      `%..
  5317 ms  0x1649 PK11_PubDeriveWithKDF()
  5317 ms  0x1649 seckey:0x7fa2dcd11820
  5317 ms     | 0x1649 EC_ValidatePublicKey()
  5323 ms     | 0x1649 ret:0x0
  5327 ms  0x1649 ret:0x7fa2ef1a6b00
  5327 ms  0x1649 PK11_DeriveWithFlags()
  5327 ms  0x1649 basekey:0x7fa2ef1a6b00
  5327 ms     | 0x1649 PK11_DeriveWithTemplate()
  5327 ms  0x1649 ret:0x7fa2eeed8180
  5327 ms  0x1649 PK11_Derive()
  5327 ms  0x1649 basekey:0x7fa2eeed8180
  5327 ms     | 0x1649 PK11_DeriveWithTemplate()
  5328 ms  0x1649 ret:0x7fa2eeed8200
  5328 ms  0x1649 SECKEY_DestroyPrivateKey()
  5328 ms  0x1649 privk:0x7fa2dcd11820::7fa2dcd11820  60 25 ec dc                                      `%..
  5328 ms  0x1649 privk:0x7fa2dcd11820::7fa2dcd11820  e5 e5 e5 e5                                      ....
  5329 ms  0x1649 PK11_Encrypt()
  5329 ms  0x1649 symkey:0x7fa2eeed8380
  5344 ms  0x1649 SSL_AuthCertificateComplete()
  5344 ms  0x1649 fd:0x7fa2eeef26a0
  5344 ms  0x1649 err:0x0
  5345 ms  0x1649 PK11_Encrypt()
  5345 ms  0x1649 symkey:0x7fa2eeed8380
           /* TID 0x16b0 */
  5477 ms  0x16b0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5478 ms  0x16b0 ret:0x0
           /* TID 0x1649 */
  5478 ms  SECKEY_ECParamsToKeySize()
  5478 ms  0x1649 ret:0x100
  5478 ms  0x1649 SECKEY_CreateECPrivateKey()
  5478 ms  0x1649 cx:0x7fa2edfd8aa8
  5481 ms     | 0x1649 EC_ValidatePublicKey()
  5486 ms     | 0x1649 ret:0x0
  5486 ms  0x1649 ret:0x7fa2dcd10020::7fa2dcd10020  80 28 ec dc                                      .(..
  5486 ms  0x1649 PK11_PubDeriveWithKDF()
  5486 ms  0x1649 seckey:0x7fa2dcd10020
  5486 ms     | 0x1649 EC_ValidatePublicKey()
  5491 ms     | 0x1649 ret:0x0
  5496 ms  0x1649 ret:0x7fa2ef1a6b00
  5496 ms  0x1649 PK11_DeriveWithFlags()
  5496 ms  0x1649 basekey:0x7fa2ef1a6b00
  5496 ms     | 0x1649 PK11_DeriveWithTemplate()
  5496 ms  0x1649 ret:0x7fa2eeed7b80
  5496 ms  0x1649 PK11_Derive()
  5496 ms  0x1649 basekey:0x7fa2eeed7b80
  5496 ms     | 0x1649 PK11_DeriveWithTemplate()
  5496 ms  0x1649 ret:0x7fa2eeed7c00
  5496 ms  0x1649 SECKEY_DestroyPrivateKey()
  5496 ms  0x1649 privk:0x7fa2dcd10020::7fa2dcd10020  80 28 ec dc                                      .(..
  5497 ms  0x1649 privk:0x7fa2dcd10020::7fa2dcd10020  e5 e5 e5 e5                                      ....
  5497 ms  0x1649 PK11_Encrypt()
  5497 ms  0x1649 symkey:0x7fa2eeed7d80
  5497 ms  0x1649 SSL_AuthCertificateComplete()
  5497 ms  0x1649 fd:0x7fa2eeef2850
  5497 ms  0x1649 err:0x0
  5624 ms  0x1649 SECKEY_DestroyPrivateKey()
  5624 ms  0x1649 privk:0x7fa2dcd03820::7fa2dcd03820  50 2b d7 ee                                      P+..
  5625 ms  0x1649 privk:0x7fa2dcd03820::7fa2dcd03820  e5 e5 e5 e5                                      ....
  5628 ms  0x1649 SECKEY_DestroyPrivateKey()
  5628 ms  0x1649 privk:0x7fa2f3839020::7fa2f3839020  c0 29 d7 ee                                      .)..
  5628 ms  0x1649 privk:0x7fa2f3839020::7fa2f3839020  e5 e5 e5 e5                                      ....
  5754 ms  0x1649 SECKEY_DestroyPrivateKey()
  5754 ms  0x1649 privk:0x7fa2dcd08020::7fa2dcd08020  c0 2e d7 ee                                      ....
  5754 ms  0x1649 privk:0x7fa2dcd08020::7fa2dcd08020  e5 e5 e5 e5                                      ....
  5754 ms  0x1649 SECKEY_DestroyPrivateKey()
  5754 ms  0x1649 privk:0x7fa2dcd06020::7fa2dcd06020  20 29 d7 ee                                       )..
  5755 ms  0x1649 privk:0x7fa2dcd06020::7fa2dcd06020  e5 e5 e5 e5                                      ....
           /* TID 0x1651 */
  6366 ms  0x1651 PR_Close()
  6366 ms  0x1651 fd:0x7fa2edfdf9a0
           /* TID 0x1660 */
  6384 ms  0x1660 PR_Close()
  6384 ms  0x1660 fd:0x7fa2edfdf550
           /* TID 0x1649 */
  6774 ms  0x1649 SSL_ImportFD()
  6775 ms  0x1649 ret:0x7fa2dcf165b0
  6775 ms  0x1649 SSL_AuthCertificateHook()
  6775 ms  0x1649 fd:0x7fa2dcf165b0
  6775 ms  0x1649 ret:0x0
  6775 ms  0x1649 PR_Connect()
  6775 ms  0x1649 fd:0x7fa2dcf165b0
  6976 ms  0x1649 SECKEY_CreateECPrivateKey()
  6976 ms  0x1649 cx:0x7fa2edfd92c8
  6978 ms     | 0x1649 EC_ValidatePublicKey()
  6978 ms     | 0x1649 ret:0x0
  6978 ms  0x1649 ret:0x7fa2edd60820::7fa2edd60820  e0 47 d8 ed                                      .G..
  6979 ms  0x1649 SECKEY_CreateECPrivateKey()
  6979 ms  0x1649 cx:0x7fa2edfd92c8
  6981 ms     | 0x1649 EC_ValidatePublicKey()
  6986 ms     | 0x1649 ret:0x0
  6986 ms  0x1649 ret:0x7fa2edd69020::7fa2edd69020  b0 4a d8 ed                                      .J..
  7190 ms  SECKEY_ECParamsToKeySize()
  7190 ms  0x1649 ret:0x100
  7190 ms  0x1649 SECKEY_CreateECPrivateKey()
  7190 ms  0x1649 cx:0x7fa2edfd92c8
  7192 ms     | 0x1649 EC_ValidatePublicKey()
  7194 ms     | 0x1649 ret:0x0
  7195 ms  0x1649 ret:0x7fa2edf24020::7fa2edf24020  b0 c5 d3 ed                                      ....
  7195 ms  0x1649 PK11_PubDeriveWithKDF()
  7195 ms  0x1649 seckey:0x7fa2edf24020
  7195 ms     | 0x1649 EC_ValidatePublicKey()
  7198 ms     | 0x1649 ret:0x0
  7201 ms  0x1649 ret:0x7fa2ef1a6b00
  7201 ms  0x1649 PK11_DeriveWithFlags()
  7201 ms  0x1649 basekey:0x7fa2ef1a6b00
  7201 ms     | 0x1649 PK11_DeriveWithTemplate()
  7201 ms  0x1649 ret:0x7fa2dcdf8e80
  7201 ms  0x1649 PK11_Derive()
  7201 ms  0x1649 basekey:0x7fa2dcdf8e80
  7201 ms     | 0x1649 PK11_DeriveWithTemplate()
  7201 ms  0x1649 ret:0x7fa2dcdf9100
  7201 ms  0x1649 SECKEY_DestroyPrivateKey()
  7201 ms  0x1649 privk:0x7fa2edf24020::7fa2edf24020  b0 c5 d3 ed                                      ....
  7202 ms  0x1649 privk:0x7fa2edf24020::7fa2edf24020  e5 e5 e5 e5                                      ....
  7202 ms  0x1649 PK11_Encrypt()
  7202 ms  0x1649 symkey:0x7fa2dcdf9380
  7202 ms  0x1649 SSL_AuthCertificateComplete()
  7202 ms  0x1649 fd:0x7fa2dcf165b0
  7202 ms  0x1649 err:0x0
  7203 ms  0x1649 PK11_Encrypt()
  7203 ms  0x1649 symkey:0x7fa2dcdf9380
  7403 ms  0x1649 SECKEY_DestroyPrivateKey()
  7403 ms  0x1649 privk:0x7fa2edd69020::7fa2edd69020  b0 4a d8 ed                                      .J..
  7404 ms  0x1649 privk:0x7fa2edd69020::7fa2edd69020  e5 e5 e5 e5                                      ....
  7404 ms  0x1649 SECKEY_DestroyPrivateKey()
  7404 ms  0x1649 privk:0x7fa2edd60820::7fa2edd60820  e0 47 d8 ed                                      .G..
  7404 ms  0x1649 privk:0x7fa2edd60820::7fa2edd60820  e5 e5 e5 e5                                      ....
           /* TID 0x1651 */
  7641 ms  0x1651 PR_Close()
  7641 ms  0x1651 fd:0x7fa2edd83880
           /* TID 0x1649 */
  9118 ms  0x1649 SSL_ImportFD()
  9118 ms  0x1649 ret:0x7fa2ee2176a0
  9118 ms  0x1649 SSL_AuthCertificateHook()
  9118 ms  0x1649 fd:0x7fa2ee2176a0
  9118 ms  0x1649 ret:0x0
  9118 ms  0x1649 PR_Connect()
  9118 ms  0x1649 fd:0x7fa2ee2176a0
  9118 ms  0x1649 SSL_ImportFD()
  9118 ms  0x1649 ret:0x7fa2ee217a00
  9118 ms  0x1649 SSL_AuthCertificateHook()
  9118 ms  0x1649 fd:0x7fa2ee217a00
  9118 ms  0x1649 ret:0x0
  9119 ms  0x1649 PR_Connect()
  9119 ms  0x1649 fd:0x7fa2ee217a00
  9119 ms  0x1649 SSL_ImportFD()
  9119 ms  0x1649 ret:0x7fa2edfdfcd0
  9119 ms  0x1649 SSL_AuthCertificateHook()
  9119 ms  0x1649 fd:0x7fa2edfdfcd0
  9119 ms  0x1649 ret:0x0
  9119 ms  0x1649 PR_Connect()
  9119 ms  0x1649 fd:0x7fa2edfdfcd0
  9119 ms  0x1649 SSL_ImportFD()
  9119 ms  0x1649 ret:0x7fa2edfdfd30
  9119 ms  0x1649 SSL_AuthCertificateHook()
  9119 ms  0x1649 fd:0x7fa2edfdfd30
  9119 ms  0x1649 ret:0x0
  9119 ms  0x1649 PR_Connect()
  9119 ms  0x1649 fd:0x7fa2edfdfd30
  9120 ms  0x1649 SSL_ImportFD()
  9120 ms  0x1649 ret:0x7fa2edfdfd90
  9120 ms  0x1649 SSL_AuthCertificateHook()
  9120 ms  0x1649 fd:0x7fa2edfdfd90
  9120 ms  0x1649 ret:0x0
  9120 ms  0x1649 PR_Connect()
  9120 ms  0x1649 fd:0x7fa2edfdfd90
  9120 ms  0x1649 SSL_ImportFD()
  9120 ms  0x1649 ret:0x7fa2edfdfdc0
  9120 ms  0x1649 SSL_AuthCertificateHook()
  9120 ms  0x1649 fd:0x7fa2edfdfdc0
  9120 ms  0x1649 ret:0x0
  9120 ms  0x1649 PR_Connect()
  9120 ms  0x1649 fd:0x7fa2edfdfdc0
  9186 ms  0x1649 SECKEY_CreateECPrivateKey()
  9186 ms  0x1649 cx:0x7fa2edfd9e28
  9189 ms     | 0x1649 EC_ValidatePublicKey()
  9189 ms     | 0x1649 ret:0x0
  9189 ms  0x1649 ret:0x7fa2edf23820::7fa2edf23820  30 0d d9 ed                                      0...
  9189 ms  0x1649 SECKEY_CreateECPrivateKey()
  9189 ms  0x1649 cx:0x7fa2edfd9e28
  9191 ms     | 0x1649 EC_ValidatePublicKey()
  9196 ms     | 0x1649 ret:0x0
  9196 ms  0x1649 ret:0x7fa2edf26020::7fa2edf26020  10 45 20 ee                                      .E .
  9198 ms  0x1649 SECKEY_CreateECPrivateKey()
  9198 ms  0x1649 cx:0x7fa2edfd9c88
  9199 ms     | 0x1649 EC_ValidatePublicKey()
  9199 ms     | 0x1649 ret:0x0
  9199 ms  0x1649 ret:0x7fa2ee0ba020::7fa2ee0ba020  30 48 20 ee                                      0H .
  9200 ms  0x1649 SECKEY_CreateECPrivateKey()
  9200 ms  0x1649 cx:0x7fa2edfd9c88
  9201 ms     | 0x1649 EC_ValidatePublicKey()
  9205 ms     | 0x1649 ret:0x0
  9205 ms  0x1649 ret:0x7fa2ee0cb820::7fa2ee0cb820  b0 30 d1 ee                                      .0..
  9207 ms  0x1649 SECKEY_CreateECPrivateKey()
  9207 ms  0x1649 cx:0x7fa2edfda4a8
  9208 ms     | 0x1649 EC_ValidatePublicKey()
  9208 ms     | 0x1649 ret:0x0
  9208 ms  0x1649 ret:0x7fa2ef681820::7fa2ef681820  20 39 d1 ee                                       9..
  9208 ms  0x1649 SECKEY_CreateECPrivateKey()
  9208 ms  0x1649 cx:0x7fa2edfda4a8
  9210 ms     | 0x1649 EC_ValidatePublicKey()
  9213 ms     | 0x1649 ret:0x0
  9213 ms  0x1649 ret:0x7fa2f28a5020::7fa2f28a5020  e0 3c d1 ee                                      .<..
  9214 ms  0x1649 SECKEY_CreateECPrivateKey()
  9214 ms  0x1649 cx:0x7fa2edfda308
  9214 ms     | 0x1649 EC_ValidatePublicKey()
  9215 ms     | 0x1649 ret:0x0
  9215 ms  0x1649 ret:0x7fa2f3839020::7fa2f3839020  b0 3f d1 ee                                      .?..
  9215 ms  0x1649 SECKEY_CreateECPrivateKey()
  9215 ms  0x1649 cx:0x7fa2edfda308
  9216 ms     | 0x1649 EC_ValidatePublicKey()
  9218 ms     | 0x1649 ret:0x0
  9218 ms  0x1649 ret:0x7fa2f3b06020::7fa2f3b06020  f0 2b d7 ee                                      .+..
  9219 ms  0x1649 SECKEY_CreateECPrivateKey()
  9219 ms  0x1649 cx:0x7fa2edfda168
  9219 ms     | 0x1649 EC_ValidatePublicKey()
  9219 ms     | 0x1649 ret:0x0
  9219 ms  0x1649 ret:0x7fa2f3b0b820::7fa2f3b0b820  80 53 e3 ee                                      .S..
  9220 ms  0x1649 SECKEY_CreateECPrivateKey()
  9220 ms  0x1649 cx:0x7fa2edfda168
  9220 ms     | 0x1649 EC_ValidatePublicKey()
  9222 ms     | 0x1649 ret:0x0
  9223 ms  0x1649 ret:0x7fa2f3b12820::7fa2f3b12820  30 5d e3 ee                                      0]..
  9223 ms  0x1649 SECKEY_CreateECPrivateKey()
  9223 ms  0x1649 cx:0x7fa2edfd9fc8
  9224 ms     | 0x1649 EC_ValidatePublicKey()
  9224 ms     | 0x1649 ret:0x0
  9224 ms  0x1649 ret:0x7fa2f3b18820::7fa2f3b18820  a0 51 e8 ee                                      .Q..
  9224 ms  0x1649 SECKEY_CreateECPrivateKey()
  9224 ms  0x1649 cx:0x7fa2edfd9fc8
  9225 ms     | 0x1649 EC_ValidatePublicKey()
  9226 ms     | 0x1649 ret:0x0
  9226 ms  0x1649 ret:0x7fa2f3b1c820::7fa2f3b1c820  60 85 1b ef                                      `...
  9268 ms  SECKEY_ECParamsToKeySize()
  9268 ms  0x1649 ret:0xff
  9268 ms  0x1649 SECKEY_CreateECPrivateKey()
  9268 ms  0x1649 cx:0x7fa2edfd9e28
  9269 ms     | 0x1649 EC_ValidatePublicKey()
  9269 ms     | 0x1649 ret:0x0
  9269 ms  0x1649 ret:0x7fa2f41d5020::7fa2f41d5020  80 f8 4d ef                                      ..M.
  9269 ms  0x1649 PK11_PubDeriveWithKDF()
  9269 ms  0x1649 seckey:0x7fa2f41d5020
  9269 ms     | 0x1649 EC_ValidatePublicKey()
  9269 ms     | 0x1649 ret:0x0
  9269 ms  0x1649 ret:0x7fa2ef1a6b00
  9269 ms  0x1649 PK11_DeriveWithFlags()
  9269 ms  0x1649 basekey:0x7fa2ef1a6b00
  9269 ms     | 0x1649 PK11_DeriveWithTemplate()
  9269 ms  0x1649 ret:0x7fa2edd47780
  9269 ms  0x1649 PK11_Derive()
  9269 ms  0x1649 basekey:0x7fa2edd47780
  9270 ms     | 0x1649 PK11_DeriveWithTemplate()
  9270 ms  0x1649 ret:0x7fa2edd47800
  9270 ms  0x1649 SECKEY_DestroyPrivateKey()
  9270 ms  0x1649 privk:0x7fa2f41d5020::7fa2f41d5020  80 f8 4d ef                                      ..M.
  9270 ms  0x1649 privk:0x7fa2f41d5020::7fa2f41d5020  e5 e5 e5 e5                                      ....
  9270 ms  0x1649 PK11_Encrypt()
  9270 ms  0x1649 symkey:0x7fa2edd47980
  9270 ms  0x1649 PR_Connect()
  9270 ms  0x1649 fd:0x7fa2edd8cfa0
  9278 ms  SECKEY_ECParamsToKeySize()
  9278 ms  0x1649 ret:0xff
  9278 ms  0x1649 SECKEY_CreateECPrivateKey()
  9278 ms  0x1649 cx:0x7fa2edfd9c88
  9279 ms     | 0x1649 EC_ValidatePublicKey()
  9279 ms     | 0x1649 ret:0x0
  9279 ms  0x1649 ret:0x7fa2f41db020::7fa2f41db020  60 fa 4d ef                                      `.M.
  9279 ms  0x1649 PK11_PubDeriveWithKDF()
  9279 ms  0x1649 seckey:0x7fa2f41db020
  9279 ms     | 0x1649 EC_ValidatePublicKey()
  9279 ms     | 0x1649 ret:0x0
  9280 ms  0x1649 ret:0x7fa2ef1a6b00
  9280 ms  0x1649 PK11_DeriveWithFlags()
  9280 ms  0x1649 basekey:0x7fa2ef1a6b00
  9280 ms     | 0x1649 PK11_DeriveWithTemplate()
  9280 ms  0x1649 ret:0x7fa2edd47a80
  9280 ms  0x1649 PK11_Derive()
  9280 ms  0x1649 basekey:0x7fa2edd47a80
  9280 ms     | 0x1649 PK11_DeriveWithTemplate()
  9280 ms  0x1649 ret:0x7fa2edd47b00
  9280 ms  0x1649 SECKEY_DestroyPrivateKey()
  9280 ms  0x1649 privk:0x7fa2f41db020::7fa2f41db020  60 fa 4d ef                                      `.M.
  9280 ms  0x1649 privk:0x7fa2f41db020::7fa2f41db020  e5 e5 e5 e5                                      ....
  9280 ms  0x1649 PK11_Encrypt()
  9280 ms  0x1649 symkey:0x7fa2edd47c80
  9281 ms  0x1649 PR_Connect()
  9281 ms  0x1649 fd:0x7fa2edfdf220
  9283 ms  SECKEY_ECParamsToKeySize()
  9283 ms  0x1649 ret:0xff
  9283 ms  0x1649 SECKEY_CreateECPrivateKey()
  9283 ms  0x1649 cx:0x7fa2edfda4a8
  9283 ms     | 0x1649 EC_ValidatePublicKey()
  9283 ms     | 0x1649 ret:0x0
  9283 ms  0x1649 ret:0x7fa2f4204820::7fa2f4204820  70 ae 6b ef                                      p.k.
  9283 ms  0x1649 PK11_PubDeriveWithKDF()
  9283 ms  0x1649 seckey:0x7fa2f4204820
  9283 ms     | 0x1649 EC_ValidatePublicKey()
  9283 ms     | 0x1649 ret:0x0
  9284 ms  0x1649 ret:0x7fa2ef1a6b00
  9284 ms  0x1649 PK11_DeriveWithFlags()
  9284 ms  0x1649 basekey:0x7fa2ef1a6b00
  9284 ms     | 0x1649 PK11_DeriveWithTemplate()
  9284 ms  0x1649 ret:0x7fa2edd54080
  9284 ms  0x1649 PK11_Derive()
  9284 ms  0x1649 basekey:0x7fa2edd54080
  9284 ms     | 0x1649 PK11_DeriveWithTemplate()
  9284 ms  0x1649 ret:0x7fa2edd54100
  9284 ms  0x1649 SECKEY_DestroyPrivateKey()
  9284 ms  0x1649 privk:0x7fa2f4204820::7fa2f4204820  70 ae 6b ef                                      p.k.
  9284 ms  0x1649 privk:0x7fa2f4204820::7fa2f4204820  e5 e5 e5 e5                                      ....
  9284 ms  0x1649 PK11_Encrypt()
  9284 ms  0x1649 symkey:0x7fa2edd54500
  9285 ms  0x1649 PR_Connect()
  9285 ms  0x1649 fd:0x7fa2edfdf6d0
  9288 ms  SECKEY_ECParamsToKeySize()
  9288 ms  0x1649 ret:0xff
  9288 ms  0x1649 SECKEY_CreateECPrivateKey()
  9288 ms  0x1649 cx:0x7fa2edfda308
  9289 ms     | 0x1649 EC_ValidatePublicKey()
  9289 ms     | 0x1649 ret:0x0
  9289 ms  0x1649 ret:0x7fa2f420b020::7fa2f420b020  40 2c b4 ef                                      @,..
  9289 ms  0x1649 PK11_PubDeriveWithKDF()
  9289 ms  0x1649 seckey:0x7fa2f420b020
  9289 ms     | 0x1649 EC_ValidatePublicKey()
  9289 ms     | 0x1649 ret:0x0
  9290 ms  0x1649 ret:0x7fa2ef1a6b00
  9290 ms  0x1649 PK11_DeriveWithFlags()
  9290 ms  0x1649 basekey:0x7fa2ef1a6b00
  9290 ms     | 0x1649 PK11_DeriveWithTemplate()
  9290 ms  0x1649 ret:0x7fa2edd47500
  9290 ms  0x1649 PK11_Derive()
  9290 ms  0x1649 basekey:0x7fa2edd47500
  9290 ms     | 0x1649 PK11_DeriveWithTemplate()
  9290 ms  0x1649 ret:0x7fa2edd54800
  9290 ms  0x1649 SECKEY_DestroyPrivateKey()
  9290 ms  0x1649 privk:0x7fa2f420b020::7fa2f420b020  40 2c b4 ef                                      @,..
  9290 ms  0x1649 privk:0x7fa2f420b020::7fa2f420b020  e5 e5 e5 e5                                      ....
  9290 ms  0x1649 PK11_Encrypt()
  9290 ms  0x1649 symkey:0x7fa2edd54980
  9291 ms  0x1649 PR_Connect()
  9291 ms  0x1649 fd:0x7fa2edfdf940
  9292 ms  SECKEY_ECParamsToKeySize()
  9292 ms  0x1649 ret:0xff
  9293 ms  0x1649 SECKEY_CreateECPrivateKey()
  9293 ms  0x1649 cx:0x7fa2edfda168
  9293 ms     | 0x1649 EC_ValidatePublicKey()
  9293 ms     | 0x1649 ret:0x0
  9293 ms  0x1649 ret:0x7fa2f4215820::7fa2f4215820  70 e4 e4 f0                                      p...
  9293 ms  0x1649 PK11_PubDeriveWithKDF()
  9293 ms  0x1649 seckey:0x7fa2f4215820
  9293 ms     | 0x1649 EC_ValidatePublicKey()
  9293 ms     | 0x1649 ret:0x0
  9294 ms  0x1649 ret:0x7fa2ef1a6b00
  9294 ms  0x1649 PK11_DeriveWithFlags()
  9294 ms  0x1649 basekey:0x7fa2ef1a6b00
  9294 ms     | 0x1649 PK11_DeriveWithTemplate()
  9294 ms  0x1649 ret:0x7fa2edd54c80
  9294 ms  0x1649 PK11_Derive()
  9294 ms  0x1649 basekey:0x7fa2edd54c80
  9294 ms     | 0x1649 PK11_DeriveWithTemplate()
  9294 ms  0x1649 ret:0x7fa2edd54d00
  9294 ms  0x1649 SECKEY_DestroyPrivateKey()
  9294 ms  0x1649 privk:0x7fa2f4215820::7fa2f4215820  70 e4 e4 f0                                      p...
  9294 ms  0x1649 privk:0x7fa2f4215820::7fa2f4215820  e5 e5 e5 e5                                      ....
  9294 ms  0x1649 PK11_Encrypt()
  9294 ms  0x1649 symkey:0x7fa2edd54e80
  9296 ms  SECKEY_ECParamsToKeySize()
  9296 ms  0x1649 ret:0xff
  9296 ms  0x1649 SECKEY_CreateECPrivateKey()
  9296 ms  0x1649 cx:0x7fa2edfd9fc8
  9296 ms     | 0x1649 EC_ValidatePublicKey()
  9296 ms     | 0x1649 ret:0x0
  9296 ms  0x1649 ret:0x7fa2f421c820::7fa2f421c820  10 45 e6 f0                                      .E..
  9297 ms  0x1649 PK11_PubDeriveWithKDF()
  9297 ms  0x1649 seckey:0x7fa2f421c820
  9297 ms     | 0x1649 EC_ValidatePublicKey()
  9297 ms     | 0x1649 ret:0x0
  9297 ms  0x1649 ret:0x7fa2ef1a6b00
  9297 ms  0x1649 PK11_DeriveWithFlags()
  9297 ms  0x1649 basekey:0x7fa2ef1a6b00
  9297 ms     | 0x1649 PK11_DeriveWithTemplate()
  9297 ms  0x1649 ret:0x7fa2edd54f80
  9297 ms  0x1649 PK11_Derive()
  9297 ms  0x1649 basekey:0x7fa2edd54f80
  9297 ms     | 0x1649 PK11_DeriveWithTemplate()
  9297 ms  0x1649 ret:0x7fa2edd55000
  9297 ms  0x1649 SECKEY_DestroyPrivateKey()
  9297 ms  0x1649 privk:0x7fa2f421c820::7fa2f421c820  10 45 e6 f0                                      .E..
  9297 ms  0x1649 privk:0x7fa2f421c820::7fa2f421c820  e5 e5 e5 e5                                      ....
  9298 ms  0x1649 PK11_Encrypt()
  9298 ms  0x1649 symkey:0x7fa2edd55180
  9299 ms  0x1649 PR_Connect()
  9299 ms  0x1649 fd:0x7fa2ee217f70
           /* TID 0x16b0 */
  9322 ms  0x16b0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9323 ms  0x16b0 ret:0x0
           /* TID 0x1651 */
  9323 ms  0x1651 PR_Close()
  9323 ms  0x1651 fd:0x7fa2edd9aee0
           /* TID 0x1649 */
  9324 ms  0x1649 SSL_AuthCertificateComplete()
  9324 ms  0x1649 fd:0x7fa2ee217a00
  9324 ms  0x1649 err:0x0
  9324 ms  0x1649 SSL_AuthCertificateComplete()
  9324 ms  0x1649 fd:0x7fa2edfdfcd0
  9324 ms  0x1649 err:0x0
  9325 ms  0x1649 PK11_Encrypt()
  9325 ms  0x1649 symkey:0x7fa2edd55180
  9325 ms  0x1649 PK11_Encrypt()
  9325 ms  0x1649 symkey:0x7fa2edd55180
  9325 ms  0x1649 PK11_Encrypt()
  9325 ms  0x1649 symkey:0x7fa2edd47980
  9326 ms  0x1649 PK11_Encrypt()
  9326 ms  0x1649 symkey:0x7fa2edd55180
  9326 ms  0x1649 PK11_Encrypt()
  9326 ms  0x1649 symkey:0x7fa2edd55180
  9326 ms  0x1649 PK11_Encrypt()
  9326 ms  0x1649 symkey:0x7fa2edd55180
  9326 ms  0x1649 PK11_Encrypt()
  9326 ms  0x1649 symkey:0x7fa2edd55180
  9328 ms  0x1649 PK11_Encrypt()
  9328 ms  0x1649 symkey:0x7fa2edd55180
  9328 ms  0x1649 PK11_Encrypt()
  9328 ms  0x1649 symkey:0x7fa2edd55180
  9328 ms  0x1649 PK11_Encrypt()
  9328 ms  0x1649 symkey:0x7fa2edd55180
  9329 ms  0x1649 PK11_Encrypt()
  9329 ms  0x1649 symkey:0x7fa2edd55180
  9329 ms  0x1649 PK11_Encrypt()
  9329 ms  0x1649 symkey:0x7fa2edd55180
  9329 ms  0x1649 PK11_Encrypt()
  9329 ms  0x1649 symkey:0x7fa2edd55180
  9329 ms  0x1649 PK11_Encrypt()
  9329 ms  0x1649 symkey:0x7fa2edd55180
  9330 ms  0x1649 PK11_Encrypt()
  9330 ms  0x1649 symkey:0x7fa2edd55180
  9330 ms  0x1649 PK11_Encrypt()
  9330 ms  0x1649 symkey:0x7fa2edd55180
  9330 ms  0x1649 PK11_Encrypt()
  9330 ms  0x1649 symkey:0x7fa2edd55180
  9330 ms  0x1649 PK11_Encrypt()
  9330 ms  0x1649 symkey:0x7fa2edd55180
  9331 ms  0x1649 PK11_Encrypt()
  9331 ms  0x1649 symkey:0x7fa2edd55180
  9331 ms  0x1649 PK11_Encrypt()
  9331 ms  0x1649 symkey:0x7fa2edd55180
  9331 ms  0x1649 PK11_Encrypt()
  9331 ms  0x1649 symkey:0x7fa2edd55180
  9332 ms  0x1649 PK11_Encrypt()
  9332 ms  0x1649 symkey:0x7fa2edd55180
  9332 ms  0x1649 PK11_Encrypt()
  9332 ms  0x1649 symkey:0x7fa2edd55180
  9332 ms  0x1649 PK11_Encrypt()
  9332 ms  0x1649 symkey:0x7fa2edd55180
  9332 ms  0x1649 PK11_Encrypt()
  9332 ms  0x1649 symkey:0x7fa2edd55180
           /* TID 0x16e6 */
  9333 ms  0x16e6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x1651 */
  9333 ms  0x1651 PR_Close()
  9333 ms  0x1651 fd:0x7fa2edd83100
           /* TID 0x16e6 */
  9333 ms  0x16e6 ret:0x0
           /* TID 0x1649 */
  9334 ms  0x1649 SSL_AuthCertificateComplete()
  9334 ms  0x1649 fd:0x7fa2ee2176a0
  9334 ms  0x1649 err:0x0
  9334 ms  0x1649 PK11_Encrypt()
  9334 ms  0x1649 symkey:0x7fa2edd55180
  9334 ms  0x1649 PK11_Encrypt()
  9334 ms  0x1649 symkey:0x7fa2edd55180
  9334 ms  0x1649 PK11_Encrypt()
  9334 ms  0x1649 symkey:0x7fa2edd47c80
  9335 ms  0x1649 PK11_Encrypt()
  9335 ms  0x1649 symkey:0x7fa2edd55180
  9335 ms  0x1649 SSL_ImportFD()
  9335 ms  0x1649 ret:0x7fa2eed8ac40
  9335 ms  0x1649 SSL_AuthCertificateHook()
  9335 ms  0x1649 fd:0x7fa2eed8ac40
  9335 ms  0x1649 ret:0x0
  9336 ms  0x1649 PR_Connect()
  9336 ms  0x1649 fd:0x7fa2eed8ac40
  9336 ms  0x1649 SSL_ImportFD()
  9336 ms  0x1649 ret:0x7fa2edd83d30
  9336 ms  0x1649 SSL_AuthCertificateHook()
  9336 ms  0x1649 fd:0x7fa2edd83d30
  9336 ms  0x1649 ret:0x0
  9336 ms  0x1649 PR_Connect()
  9336 ms  0x1649 fd:0x7fa2edd83d30
  9336 ms  0x1649 SSL_ImportFD()
  9336 ms  0x1649 ret:0x7fa2eee594f0
  9336 ms  0x1649 SSL_AuthCertificateHook()
  9336 ms  0x1649 fd:0x7fa2eee594f0
  9336 ms  0x1649 ret:0x0
  9336 ms  0x1649 PR_Connect()
  9336 ms  0x1649 fd:0x7fa2eee594f0
  9337 ms  0x1649 SSL_ImportFD()
  9337 ms  0x1649 ret:0x7fa2eee59520
  9337 ms  0x1649 SSL_AuthCertificateHook()
  9337 ms  0x1649 fd:0x7fa2eee59520
  9337 ms  0x1649 ret:0x0
  9337 ms  0x1649 PR_Connect()
  9337 ms  0x1649 fd:0x7fa2eee59520
           /* TID 0x16e7 */
  9337 ms  0x16e7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x1651 */
  9337 ms  0x1651 PR_Close()
  9337 ms  0x1651 fd:0x7fa2edd83190
           /* TID 0x16e7 */
  9337 ms  0x16e7 ret:0x0
           /* TID 0x1649 */
  9338 ms  0x1649 SSL_AuthCertificateComplete()
  9338 ms  0x1649 fd:0x7fa2edfdfdc0
  9338 ms  0x1649 err:0x0
  9338 ms  0x1649 PK11_Encrypt()
  9338 ms  0x1649 symkey:0x7fa2edd54500
  9338 ms  0x1649 SECKEY_DestroyPrivateKey()
  9338 ms  0x1649 privk:0x7fa2edf26020::7fa2edf26020  10 45 20 ee                                      .E .
  9338 ms  0x1649 privk:0x7fa2edf26020::7fa2edf26020  e5 e5 e5 e5                                      ....
  9338 ms  0x1649 SECKEY_DestroyPrivateKey()
  9338 ms  0x1649 privk:0x7fa2edf23820::7fa2edf23820  30 0d d9 ed                                      0...
  9338 ms  0x1649 privk:0x7fa2edf23820::7fa2edf23820  e5 e5 e5 e5                                      ....
  9338 ms  0x1649 PR_Close()
  9338 ms  0x1649 fd:0x7fa2ee217a00
  9338 ms     | 0x1649 PK11_Encrypt()
  9338 ms     | 0x1649 symkey:0x7fa2edd47980
  9339 ms  0x1649 PK11_Encrypt()
  9339 ms  0x1649 symkey:0x7fa2edd55180
  9339 ms  0x1649 PK11_Encrypt()
  9339 ms  0x1649 symkey:0x7fa2edd55180
  9348 ms  0x1649 SECKEY_DestroyPrivateKey()
  9348 ms  0x1649 privk:0x7fa2ee0cb820::7fa2ee0cb820  b0 30 d1 ee                                      .0..
  9348 ms  0x1649 privk:0x7fa2ee0cb820::7fa2ee0cb820  e5 e5 e5 e5                                      ....
  9348 ms  0x1649 SECKEY_DestroyPrivateKey()
  9348 ms  0x1649 privk:0x7fa2ee0ba020::7fa2ee0ba020  30 48 20 ee                                      0H .
  9348 ms  0x1649 privk:0x7fa2ee0ba020::7fa2ee0ba020  e5 e5 e5 e5                                      ....
  9348 ms  0x1649 PR_Close()
  9348 ms  0x1649 fd:0x7fa2ee2176a0
  9348 ms     | 0x1649 PK11_Encrypt()
  9348 ms     | 0x1649 symkey:0x7fa2edd47c80
           /* TID 0x16e9 */
  9350 ms  0x16e9 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9350 ms  0x16e9 ret:0x0
           /* TID 0x1651 */
  9350 ms  0x1651 PR_Close()
  9350 ms  0x1651 fd:0x7fa2dcf16df0
           /* TID 0x1649 */
  9350 ms  0x1649 SSL_AuthCertificateComplete()
  9350 ms  0x1649 fd:0x7fa2edfdfd30
  9350 ms  0x1649 err:0x0
  9350 ms  0x1649 PK11_Encrypt()
  9350 ms  0x1649 symkey:0x7fa2edd54e80
  9351 ms  0x1649 PK11_Encrypt()
  9351 ms  0x1649 symkey:0x7fa2edd55180
  9352 ms  0x1649 SECKEY_DestroyPrivateKey()
  9352 ms  0x1649 privk:0x7fa2f28a5020::7fa2f28a5020  e0 3c d1 ee                                      .<..
  9352 ms  0x1649 privk:0x7fa2f28a5020::7fa2f28a5020  e5 e5 e5 e5                                      ....
  9352 ms  0x1649 SECKEY_DestroyPrivateKey()
  9352 ms  0x1649 privk:0x7fa2ef681820::7fa2ef681820  20 39 d1 ee                                       9..
  9352 ms  0x1649 privk:0x7fa2ef681820::7fa2ef681820  e5 e5 e5 e5                                      ....
  9352 ms  0x1649 PR_Close()
  9352 ms  0x1649 fd:0x7fa2edfdfdc0
  9352 ms     | 0x1649 PK11_Encrypt()
  9352 ms     | 0x1649 symkey:0x7fa2edd54500
  9362 ms  0x1649 SECKEY_DestroyPrivateKey()
  9362 ms  0x1649 privk:0x7fa2f3b12820::7fa2f3b12820  30 5d e3 ee                                      0]..
  9362 ms  0x1649 privk:0x7fa2f3b12820::7fa2f3b12820  e5 e5 e5 e5                                      ....
  9362 ms  0x1649 SECKEY_DestroyPrivateKey()
  9362 ms  0x1649 privk:0x7fa2f3b0b820::7fa2f3b0b820  80 53 e3 ee                                      .S..
  9362 ms  0x1649 privk:0x7fa2f3b0b820::7fa2f3b0b820  e5 e5 e5 e5                                      ....
  9362 ms  0x1649 PR_Close()
  9362 ms  0x1649 fd:0x7fa2edfdfd30
  9362 ms     | 0x1649 PK11_Encrypt()
  9362 ms     | 0x1649 symkey:0x7fa2edd54e80
  9365 ms  0x1649 SECKEY_DestroyPrivateKey()
  9365 ms  0x1649 privk:0x7fa2f3b1c820::7fa2f3b1c820  60 85 1b ef                                      `...
  9365 ms  0x1649 privk:0x7fa2f3b1c820::7fa2f3b1c820  e5 e5 e5 e5                                      ....
  9365 ms  0x1649 SECKEY_DestroyPrivateKey()
  9365 ms  0x1649 privk:0x7fa2f3b18820::7fa2f3b18820  a0 51 e8 ee                                      .Q..
  9366 ms  0x1649 privk:0x7fa2f3b18820::7fa2f3b18820  e5 e5 e5 e5                                      ....
  9366 ms  0x1649 PK11_Encrypt()
  9366 ms  0x1649 symkey:0x7fa2edd55180
           /* TID 0x16e8 */
  9386 ms  0x16e8 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9386 ms  0x16e8 ret:0x0
           /* TID 0x1651 */
  9387 ms  0x1651 PR_Close()
  9387 ms  0x1651 fd:0x7fa2edd83190
           /* TID 0x1649 */
  9387 ms  0x1649 SSL_AuthCertificateComplete()
  9387 ms  0x1649 fd:0x7fa2edfdfd90
  9387 ms  0x1649 err:0x0
  9387 ms     | 0x1649 SECKEY_DestroyPrivateKey()
  9387 ms     | 0x1649 privk:0x7fa2f3b06020::7fa2f3b06020  f0 2b d7 ee                                      .+..
  9388 ms     | 0x1649 privk:0x7fa2f3b06020::7fa2f3b06020  e5 e5 e5 e5                                      ....
  9388 ms     | 0x1649 SECKEY_DestroyPrivateKey()
  9388 ms     | 0x1649 privk:0x7fa2f3839020::7fa2f3839020  b0 3f d1 ee                                      .?..
  9388 ms     | 0x1649 privk:0x7fa2f3839020::7fa2f3839020  e5 e5 e5 e5                                      ....
  9389 ms  0x1649 PK11_Encrypt()
  9389 ms  0x1649 symkey:0x7fa2edd54980
  9390 ms  0x1649 PK11_Encrypt()
  9390 ms  0x1649 symkey:0x7fa2edd55180
  9391 ms  0x1649 SECKEY_CreateECPrivateKey()
  9391 ms  0x1649 cx:0x7fa2f0eaf3e8
  9393 ms     | 0x1649 EC_ValidatePublicKey()
  9393 ms     | 0x1649 ret:0x0
  9393 ms  0x1649 ret:0x7fa2edf26020::7fa2edf26020  30 0d d9 ed                                      0...
  9393 ms  0x1649 SECKEY_CreateECPrivateKey()
  9393 ms  0x1649 cx:0x7fa2f0eaf3e8
  9394 ms     | 0x1649 EC_ValidatePublicKey()
  9397 ms     | 0x1649 ret:0x0
  9397 ms  0x1649 ret:0x7fa2ee0ba020::7fa2ee0ba020  c0 44 20 ee                                      .D .
  9398 ms  0x1649 SECKEY_CreateECPrivateKey()
  9398 ms  0x1649 cx:0x7fa2f0eaf588
  9399 ms     | 0x1649 EC_ValidatePublicKey()
  9399 ms     | 0x1649 ret:0x0
  9399 ms  0x1649 ret:0x7fa2ee0cb020::7fa2ee0cb020  d0 48 20 ee                                      .H .
  9400 ms  0x1649 SECKEY_CreateECPrivateKey()
  9400 ms  0x1649 cx:0x7fa2f0eaf588
  9401 ms     | 0x1649 EC_ValidatePublicKey()
  9403 ms     | 0x1649 ret:0x0
  9403 ms  0x1649 ret:0x7fa2ee0ce020::7fa2ee0ce020  d0 33 d1 ee                                      .3..
  9404 ms  0x1649 SECKEY_CreateECPrivateKey()
  9404 ms  0x1649 cx:0x7fa2f0eaf248
           /* TID 0x1651 */
  9405 ms  0x1651 PR_Close()
  9405 ms  0x1651 fd:0x7fa2edd8c760
  9405 ms  0x1651 PR_Close()
  9405 ms  0x1651 fd:0x7fa2edd9af40
  9405 ms  0x1651 PR_Close()
  9405 ms  0x1651 fd:0x7fa2edfdf370
  9405 ms  0x1651 PR_Close()
  9405 ms  0x1651 fd:0x7fa2edfdf430
  9405 ms  0x1651 PR_Close()
  9405 ms  0x1651 fd:0x7fa2edfdf910
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2edd8c760
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2edd9af40
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2edfdf370
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2edfdf430
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2edfdf910
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2edfdfd00
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2edfdfdc0
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2ee217a00
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2ee217c70
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2ee2301f0
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2ee230850
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2ee230ac0
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2ee230b80
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2eed8abb0
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2eed8ad30
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2eed8af70
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2eee592e0
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2eee593a0
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2eee59400
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2eee59a00
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2eee6c820
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2eeef62e0
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2eeef6340
  9408 ms  0x1651 PR_Close()
  9408 ms  0x1651 fd:0x7fa2eeef63a0
  9409 ms  0x1651 PR_Close()
  9409 ms  0x1651 fd:0x7fa2eeef6400
  9409 ms  0x1651 PR_Close()
  9409 ms  0x1651 fd:0x7fa2eeef6580
  9409 ms  0x1651 PR_Close()
  9409 ms  0x1651 fd:0x7fa2eeef69a0
  9409 ms  0x1651 PR_Close()
  9409 ms  0x1651 fd:0x7fa2eeef6e50
  9409 ms  0x1651 PR_Close()
  9409 ms  0x1651 fd:0x7fa2ef1a9130
  9409 ms  0x1651 PR_Close()
  9409 ms  0x1651 fd:0x7fa2ef1a91c0
  9409 ms  0x1651 PR_Close()
  9409 ms  0x1651 fd:0x7fa2ef1a9220
  9409 ms  0x1651 PR_Close()
  9409 ms  0x1651 fd:0x7fa2ef1a9550
  9409 ms  0x1651 PR_Close()
  9409 ms  0x1651 fd:0x7fa2ef1a95e0
           /* TID 0x1649 */
  9409 ms     | 0x1649 EC_ValidatePublicKey()
  9409 ms     | 0x1649 ret:0x0
  9409 ms  0x1649 ret:0x7fa2f28a4820::7fa2f28a4820  60 3a d1 ee                                      `:..
  9409 ms  0x1649 SECKEY_CreateECPrivateKey()
  9409 ms  0x1649 cx:0x7fa2f0eaf248
  9410 ms     | 0x1649 EC_ValidatePublicKey()
  9412 ms     | 0x1649 ret:0x0
  9412 ms  0x1649 ret:0x7fa2f28af820::7fa2f28af820  70 3e d1 ee                                      p>..
  9412 ms  0x1649 PR_Close()
  9412 ms  0x1649 fd:0x7fa2edfdfd90
  9412 ms     | 0x1649 PK11_Encrypt()
  9412 ms     | 0x1649 symkey:0x7fa2edd54980
           /* TID 0x1651 */
  9415 ms  0x1651 PR_Close()
  9415 ms  0x1651 fd:0x7fa2edfdf2e0
  9416 ms  0x1651 PR_Close()
  9416 ms  0x1651 fd:0x7fa2edd83a60
           /* TID 0x1649 */
  9456 ms  SECKEY_ECParamsToKeySize()
  9456 ms  0x1649 ret:0xff
  9456 ms  0x1649 SECKEY_CreateECPrivateKey()
  9456 ms  0x1649 cx:0x7fa2f0eaf3e8
  9457 ms     | 0x1649 EC_ValidatePublicKey()
  9457 ms     | 0x1649 ret:0x0
  9457 ms  0x1649 ret:0x7fa2f3b06020::7fa2f3b06020  f0 2b d7 ee                                      .+..
  9457 ms  0x1649 PK11_PubDeriveWithKDF()
  9457 ms  0x1649 seckey:0x7fa2f3b06020
  9457 ms     | 0x1649 EC_ValidatePublicKey()
  9457 ms     | 0x1649 ret:0x0
  9457 ms  0x1649 ret:0x7fa2edd54800
  9457 ms  0x1649 PK11_DeriveWithFlags()
  9457 ms  0x1649 basekey:0x7fa2edd54800
  9457 ms     | 0x1649 PK11_DeriveWithTemplate()
  9457 ms  0x1649 ret:0x7fa2edd47500
  9457 ms  0x1649 PK11_Derive()
  9457 ms  0x1649 basekey:0x7fa2edd47500
  9457 ms     | 0x1649 PK11_DeriveWithTemplate()
  9457 ms  0x1649 ret:0x7fa2edd54d00
  9457 ms  0x1649 SECKEY_DestroyPrivateKey()
  9457 ms  0x1649 privk:0x7fa2f3b06020::7fa2f3b06020  f0 2b d7 ee                                      .+..
  9457 ms  0x1649 privk:0x7fa2f3b06020::7fa2f3b06020  e5 e5 e5 e5                                      ....
  9458 ms  0x1649 PK11_Encrypt()
  9458 ms  0x1649 symkey:0x7fa2edd54880
  9458 ms  0x1649 SSL_AuthCertificateComplete()
  9458 ms  0x1649 fd:0x7fa2eee594f0
  9458 ms  0x1649 err:0x0
  9458 ms  0x1649 PK11_Encrypt()
  9458 ms  0x1649 symkey:0x7fa2edd54880
  9458 ms  0x1649 PK11_Encrypt()
  9458 ms  0x1649 symkey:0x7fa2edd54880
  9460 ms  SECKEY_ECParamsToKeySize()
  9460 ms  0x1649 ret:0xff
  9461 ms  0x1649 SECKEY_CreateECPrivateKey()
  9461 ms  0x1649 cx:0x7fa2f0eaf588
  9461 ms     | 0x1649 EC_ValidatePublicKey()
  9461 ms     | 0x1649 ret:0x0
  9461 ms  0x1649 ret:0x7fa2f3b0b020::7fa2f3b0b020  f0 51 e3 ee                                      .Q..
  9461 ms  0x1649 PK11_PubDeriveWithKDF()
  9461 ms  0x1649 seckey:0x7fa2f3b0b020
  9461 ms     | 0x1649 EC_ValidatePublicKey()
  9461 ms     | 0x1649 ret:0x0
  9462 ms  0x1649 ret:0x7fa2edd54800
  9462 ms  0x1649 PK11_DeriveWithFlags()
  9462 ms  0x1649 basekey:0x7fa2edd54800
  9462 ms     | 0x1649 PK11_DeriveWithTemplate()
  9462 ms  0x1649 ret:0x7fa2edd54c80
  9462 ms  0x1649 PK11_Derive()
  9462 ms  0x1649 basekey:0x7fa2edd54c80
  9462 ms     | 0x1649 PK11_DeriveWithTemplate()
  9462 ms  0x1649 ret:0x7fa2edd54100
  9462 ms  0x1649 SECKEY_DestroyPrivateKey()
  9462 ms  0x1649 privk:0x7fa2f3b0b020::7fa2f3b0b020  f0 51 e3 ee                                      .Q..
  9462 ms  0x1649 privk:0x7fa2f3b0b020::7fa2f3b0b020  e5 e5 e5 e5                                      ....
  9462 ms  0x1649 PK11_Encrypt()
  9462 ms  0x1649 symkey:0x7fa2edd54d80
  9462 ms  0x1649 SSL_AuthCertificateComplete()
  9462 ms  0x1649 fd:0x7fa2eee59520
  9462 ms  0x1649 err:0x0
  9462 ms  0x1649 PK11_Encrypt()
  9462 ms  0x1649 symkey:0x7fa2edd54d80
  9462 ms  0x1649 PK11_Encrypt()
  9462 ms  0x1649 symkey:0x7fa2edd54880
  9471 ms  SECKEY_ECParamsToKeySize()
  9471 ms  0x1649 ret:0xff
  9471 ms  0x1649 SECKEY_CreateECPrivateKey()
  9471 ms  0x1649 cx:0x7fa2f0eaf248
  9471 ms     | 0x1649 EC_ValidatePublicKey()
  9471 ms     | 0x1649 ret:0x0
  9471 ms  0x1649 ret:0x7fa2f3b0f820::7fa2f3b0f820  d0 53 e3 ee                                      .S..
  9471 ms  0x1649 PK11_PubDeriveWithKDF()
  9471 ms  0x1649 seckey:0x7fa2f3b0f820
  9471 ms     | 0x1649 EC_ValidatePublicKey()
  9471 ms     | 0x1649 ret:0x0
  9472 ms  0x1649 ret:0x7fa2edd54800
  9472 ms  0x1649 PK11_DeriveWithFlags()
  9472 ms  0x1649 basekey:0x7fa2edd54800
  9472 ms     | 0x1649 PK11_DeriveWithTemplate()
  9472 ms  0x1649 ret:0x7fa2edd54080
  9472 ms  0x1649 PK11_Derive()
  9472 ms  0x1649 basekey:0x7fa2edd54080
  9472 ms     | 0x1649 PK11_DeriveWithTemplate()
  9472 ms  0x1649 ret:0x7fa2edd47b00
  9472 ms  0x1649 SECKEY_DestroyPrivateKey()
  9472 ms  0x1649 privk:0x7fa2f3b0f820::7fa2f3b0f820  d0 53 e3 ee                                      .S..
  9472 ms  0x1649 privk:0x7fa2f3b0f820::7fa2f3b0f820  e5 e5 e5 e5                                      ....
  9472 ms  0x1649 PK11_Encrypt()
  9472 ms  0x1649 symkey:0x7fa2edd54200
  9472 ms  0x1649 SSL_AuthCertificateComplete()
  9472 ms  0x1649 fd:0x7fa2edd83d30
  9472 ms  0x1649 err:0x0
  9473 ms  0x1649 PK11_Encrypt()
  9473 ms  0x1649 symkey:0x7fa2edd54200
  9473 ms  0x1649 PK11_Encrypt()
  9473 ms  0x1649 symkey:0x7fa2edd54880
           /* TID 0x1651 */
  9499 ms  0x1651 PR_Close()
  9499 ms  0x1651 fd:0x7fa2edd83cd0
  9502 ms  0x1651 PR_Close()
  9502 ms  0x1651 fd:0x7fa2edd83cd0
           /* TID 0x1649 */
  9510 ms  0x1649 SECKEY_DestroyPrivateKey()
  9510 ms  0x1649 privk:0x7fa2ee0ba020::7fa2ee0ba020  c0 44 20 ee                                      .D .
  9510 ms  0x1649 privk:0x7fa2ee0ba020::7fa2ee0ba020  e5 e5 e5 e5                                      ....
  9510 ms  0x1649 SECKEY_DestroyPrivateKey()
  9510 ms  0x1649 privk:0x7fa2edf26020::7fa2edf26020  30 0d d9 ed                                      0...
  9510 ms  0x1649 privk:0x7fa2edf26020::7fa2edf26020  e5 e5 e5 e5                                      ....
  9510 ms  0x1649 PK11_Encrypt()
  9510 ms  0x1649 symkey:0x7fa2edd54880
  9513 ms  0x1649 SECKEY_DestroyPrivateKey()
  9513 ms  0x1649 privk:0x7fa2ee0ce020::7fa2ee0ce020  d0 33 d1 ee                                      .3..
  9513 ms  0x1649 privk:0x7fa2ee0ce020::7fa2ee0ce020  e5 e5 e5 e5                                      ....
  9513 ms  0x1649 SECKEY_DestroyPrivateKey()
  9513 ms  0x1649 privk:0x7fa2ee0cb020::7fa2ee0cb020  d0 48 20 ee                                      .H .
  9513 ms  0x1649 privk:0x7fa2ee0cb020::7fa2ee0cb020  e5 e5 e5 e5                                      ....
  9513 ms  0x1649 PR_Close()
  9513 ms  0x1649 fd:0x7fa2eee59520
  9513 ms     | 0x1649 PK11_Encrypt()
  9513 ms     | 0x1649 symkey:0x7fa2edd54d80
           /* TID 0x1651 */
  9544 ms  0x1651 PR_Close()
  9544 ms  0x1651 fd:0x7fa2edd83e50
           /* TID 0x1649 */
  9549 ms  0x1649 SECKEY_DestroyPrivateKey()
  9549 ms  0x1649 privk:0x7fa2f28af820::7fa2f28af820  70 3e d1 ee                                      p>..
  9550 ms  0x1649 privk:0x7fa2f28af820::7fa2f28af820  e5 e5 e5 e5                                      ....
  9550 ms  0x1649 SECKEY_DestroyPrivateKey()
  9550 ms  0x1649 privk:0x7fa2f28a4820::7fa2f28a4820  60 3a d1 ee                                      `:..
  9550 ms  0x1649 privk:0x7fa2f28a4820::7fa2f28a4820  e5 e5 e5 e5                                      ....
  9550 ms  0x1649 PR_Close()
  9550 ms  0x1649 fd:0x7fa2edd83d30
  9550 ms     | 0x1649 PK11_Encrypt()
  9550 ms     | 0x1649 symkey:0x7fa2edd54200
           /* TID 0x1651 */
  9567 ms  0x1651 PR_Close()
  9567 ms  0x1651 fd:0x7fa2edd83d30
  9578 ms  0x1651 PR_Close()
  9578 ms  0x1651 fd:0x7fa2edd83d30
           /* TID 0x1649 */
  9581 ms  0x1649 PK11_Encrypt()
  9581 ms  0x1649 symkey:0x7fa2edd55180
  9584 ms  0x1649 PK11_Encrypt()
  9584 ms  0x1649 symkey:0x7fa2edd55180
  9585 ms  0x1649 PK11_Encrypt()
  9585 ms  0x1649 symkey:0x7fa2edd55180
  9586 ms  0x1649 SSL_ImportFD()
  9586 ms  0x1649 ret:0x7fa2edfdfd00
  9586 ms  0x1649 SSL_AuthCertificateHook()
  9586 ms  0x1649 fd:0x7fa2edfdfd00
  9586 ms  0x1649 ret:0x0
  9586 ms  0x1649 PR_Connect()
  9586 ms  0x1649 fd:0x7fa2edfdfd00
  9587 ms  0x1649 PK11_Encrypt()
  9587 ms  0x1649 symkey:0x7fa2edd55180
  9589 ms  0x1649 PK11_Encrypt()
  9589 ms  0x1649 symkey:0x7fa2edd55180
  9592 ms  0x1649 SECKEY_CreateECPrivateKey()
  9592 ms  0x1649 cx:0x7fa2f0eaf0a8
  9592 ms     | 0x1649 EC_ValidatePublicKey()
  9592 ms     | 0x1649 ret:0x0
  9592 ms  0x1649 ret:0x7fa2ee0ce020::7fa2ee0ce020  d0 33 d1 ee                                      .3..
  9593 ms  0x1649 SECKEY_CreateECPrivateKey()
  9593 ms  0x1649 cx:0x7fa2f0eaf0a8
  9594 ms     | 0x1649 EC_ValidatePublicKey()
  9595 ms     | 0x1649 ret:0x0
  9595 ms  0x1649 ret:0x7fa2f28a4020::7fa2f28a4020  60 3a d1 ee                                      `:..
           /* TID 0x1651 */
  9600 ms  0x1651 PR_Close()
  9600 ms  0x1651 fd:0x7fa2edd83220
  9602 ms  0x1651 PR_Close()
  9602 ms  0x1651 fd:0x7fa2edd83220
           /* TID 0x1649 */
  9616 ms  0x1649 PK11_Encrypt()
  9616 ms  0x1649 symkey:0x7fa2edd55180
  9623 ms  0x1649 PK11_Encrypt()
  9623 ms  0x1649 symkey:0x7fa2edd55180
  9624 ms  0x1649 PK11_Encrypt()
  9624 ms  0x1649 symkey:0x7fa2edd55180
  9626 ms  0x1649 PK11_Encrypt()
  9626 ms  0x1649 symkey:0x7fa2edd55180
  9627 ms  0x1649 PK11_Encrypt()
  9627 ms  0x1649 symkey:0x7fa2edd55180
           /* TID 0x1651 */
  9628 ms  0x1651 PR_Close()
  9628 ms  0x1651 fd:0x7fa2edd8cbb0
           /* TID 0x1649 */
  9630 ms  0x1649 PK11_Encrypt()
  9630 ms  0x1649 symkey:0x7fa2edd55180
  9632 ms  0x1649 PK11_Encrypt()
  9632 ms  0x1649 symkey:0x7fa2edd55180
           /* TID 0x1651 */
  9633 ms  0x1651 PR_Close()
  9633 ms  0x1651 fd:0x7fa2edd83310
  9634 ms  0x1651 PR_Close()
  9634 ms  0x1651 fd:0x7fa2edd83310
           /* TID 0x1649 */
  9635 ms  0x1649 PK11_Encrypt()
  9635 ms  0x1649 symkey:0x7fa2edd55180
  9636 ms  0x1649 PK11_Encrypt()
  9636 ms  0x1649 symkey:0x7fa2edd55180
  9637 ms  0x1649 PK11_Encrypt()
  9637 ms  0x1649 symkey:0x7fa2edd55180
  9637 ms  0x1649 PK11_Encrypt()
  9637 ms  0x1649 symkey:0x7fa2edd55180
  9638 ms  0x1649 PK11_Encrypt()
  9638 ms  0x1649 symkey:0x7fa2edd55180
  9694 ms  0x1649 PK11_Encrypt()
  9694 ms  0x1649 symkey:0x7fa2edd55180
  9698 ms  0x1649 PK11_Encrypt()
  9698 ms  0x1649 symkey:0x7fa2edd55180
           /* TID 0x1651 */
  9701 ms  0x1651 PR_Close()
  9701 ms  0x1651 fd:0x7fa2edd9a850
  9701 ms  0x1651 PR_Close()
  9701 ms  0x1651 fd:0x7fa2ef1a95e0
           /* TID 0x1649 */
  9702 ms  0x1649 SSL_ImportFD()
  9702 ms  0x1649 ret:0x7fa2ef1a9790
  9702 ms  0x1649 SSL_AuthCertificateHook()
  9702 ms  0x1649 fd:0x7fa2ef1a9790
  9702 ms  0x1649 ret:0x0
  9702 ms  0x1649 PR_Connect()
  9702 ms  0x1649 fd:0x7fa2ef1a9790
  9705 ms  0x1649 PK11_Encrypt()
  9705 ms  0x1649 symkey:0x7fa2edd55180
           /* TID 0x1651 */
  9731 ms  0x1651 PR_Close()
  9731 ms  0x1651 fd:0x7fa2edd8c670
  9738 ms  0x1651 PR_Close()
  9738 ms  0x1651 fd:0x7fa2edd831c0
  9738 ms  0x1651 PR_Close()
  9738 ms  0x1651 fd:0x7fa2edd9a940
  9740 ms  0x1651 PR_Close()
  9740 ms  0x1651 fd:0x7fa2edd830a0
  9740 ms  0x1651 PR_Close()
  9740 ms  0x1651 fd:0x7fa2edd8c670
  9740 ms  0x1651 PR_Close()
  9740 ms  0x1651 fd:0x7fa2edd9ac10
  9740 ms  0x1651 PR_Close()
  9740 ms  0x1651 fd:0x7fa2edd9ae50
  9740 ms  0x1651 PR_Close()
  9740 ms  0x1651 fd:0x7fa2eeef2df0
  9740 ms  0x1651 PR_Close()
  9740 ms  0x1651 fd:0x7fa2ef1a9b20
  9740 ms  0x1651 PR_Close()
  9740 ms  0x1651 fd:0x7fa2ef6bf340
  9740 ms  0x1651 PR_Close()
  9740 ms  0x1651 fd:0x7fa2ef6bf4f0
  9740 ms  0x1651 PR_Close()
  9740 ms  0x1651 fd:0x7fa2ef6bfaf0
  9740 ms  0x1651 PR_Close()
  9740 ms  0x1651 fd:0x7fa2efbae4c0
  9746 ms  0x1651 PR_Close()
  9746 ms  0x1651 fd:0x7fa2edd830a0
  9746 ms  0x1651 PR_Close()
  9746 ms  0x1651 fd:0x7fa2edd9a9d0
  9746 ms  0x1651 PR_Close()
  9746 ms  0x1651 fd:0x7fa2edd9abb0
  9746 ms  0x1651 PR_Close()
  9746 ms  0x1651 fd:0x7fa2edd9ad90
  9746 ms  0x1651 PR_Close()
  9746 ms  0x1651 fd:0x7fa2ef1a9760
           /* TID 0x1649 */
  9750 ms  0x1649 SECKEY_CreateECPrivateKey()
  9750 ms  0x1649 cx:0x7fa2f0eaf588
  9751 ms     | 0x1649 EC_ValidatePublicKey()
  9751 ms     | 0x1649 ret:0x0
  9751 ms  0x1649 ret:0x7fa2ee0ba020::7fa2ee0ba020  90 42 20 ee                                      .B .
  9751 ms  0x1649 SECKEY_CreateECPrivateKey()
  9751 ms  0x1649 cx:0x7fa2f0eaf588
  9752 ms     | 0x1649 EC_ValidatePublicKey()
  9753 ms     | 0x1649 ret:0x0
  9754 ms  0x1649 ret:0x7fa2f3b06820::7fa2f3b06820  10 ff 4d ef                                      ..M.
           /* TID 0x1651 */
  9755 ms  0x1651 PR_Close()
  9755 ms  0x1651 fd:0x7fa2edd830a0
  9755 ms  0x1651 PR_Close()
  9755 ms  0x1651 fd:0x7fa2edd8ce80
  9755 ms  0x1651 PR_Close()
  9755 ms  0x1651 fd:0x7fa2edd9a910
  9756 ms  0x1651 PR_Close()
  9756 ms  0x1651 fd:0x7fa2edd830a0
  9756 ms  0x1651 PR_Close()
  9756 ms  0x1651 fd:0x7fa2edd9a520
  9759 ms  0x1651 PR_Close()
  9759 ms  0x1651 fd:0x7fa2edd830a0
  9759 ms  0x1651 PR_Close()
  9759 ms  0x1651 fd:0x7fa2edd830a0
  9760 ms  0x1651 PR_Close()
  9760 ms  0x1651 fd:0x7fa2edd830a0
  9761 ms  0x1651 PR_Close()
  9761 ms  0x1651 fd:0x7fa2edd830a0
  9762 ms  0x1651 PR_Close()
  9762 ms  0x1651 fd:0x7fa2edd830a0
  9767 ms  0x1651 PR_Close()
  9767 ms  0x1651 fd:0x7fa2edd830a0
  9770 ms  0x1651 PR_Close()
  9770 ms  0x1651 fd:0x7fa2edd830a0
  9771 ms  0x1651 PR_Close()
  9771 ms  0x1651 fd:0x7fa2edd830a0
  9771 ms  0x1651 PR_Close()
  9771 ms  0x1651 fd:0x7fa2edd830a0
  9807 ms  0x1651 PR_Close()
  9807 ms  0x1651 fd:0x7fa2edd83ca0
  9808 ms  0x1651 PR_Close()
  9808 ms  0x1651 fd:0x7fa2edd830a0
  9809 ms  0x1651 PR_Close()
  9809 ms  0x1651 fd:0x7fa2edd830a0
           /* TID 0x1649 */
  9810 ms  0x1649 PK11_Derive()
  9810 ms  0x1649 basekey:0x7fa2edd47b00
  9810 ms     | 0x1649 PK11_DeriveWithTemplate()
  9810 ms  0x1649 ret:0x7fa2edd54080
  9810 ms  0x1649 PK11_PubDeriveWithKDF()
  9810 ms  0x1649 seckey:0x7fa2ee0ba020
  9810 ms     | 0x1649 EC_ValidatePublicKey()
  9810 ms     | 0x1649 ret:0x0
  9810 ms  0x1649 ret:0x7fa2edd47b00
  9810 ms  SECKEY_ECParamsToKeySize()
  9810 ms  0x1649 ret:0xff
  9810 ms  0x1649 PK11_DeriveWithFlags()
  9810 ms  0x1649 basekey:0x7fa2edd54080
  9810 ms     | 0x1649 PK11_DeriveWithTemplate()
  9810 ms  0x1649 ret:0x7fa2edd54100
  9810 ms  0x1649 PK11_Derive()
  9810 ms  0x1649 basekey:0x7fa2edd47b00
  9810 ms     | 0x1649 PK11_DeriveWithTemplate()
  9810 ms  0x1649 ret:0x7fa2edd54c80
  9810 ms  0x1649 PK11_DeriveWithFlags()
  9810 ms  0x1649 basekey:0x7fa2edd54c80
  9810 ms     | 0x1649 PK11_DeriveWithTemplate()
  9811 ms  0x1649 ret:0x7fa2edd54080
  9811 ms  0x1649 PK11_DeriveWithFlags()
  9811 ms  0x1649 basekey:0x7fa2edd54c80
  9811 ms     | 0x1649 PK11_DeriveWithTemplate()
  9811 ms  0x1649 ret:0x7fa2edd47b00
  9811 ms  0x1649 PK11_DeriveWithFlags()
  9811 ms  0x1649 basekey:0x7fa2edd54c80
  9811 ms     | 0x1649 PK11_DeriveWithTemplate()
  9811 ms  0x1649 ret:0x7fa2edd54100
  9811 ms  0x1649 PK11_Derive()
  9811 ms  0x1649 basekey:0x7fa2edd54800
  9811 ms     | 0x1649 PK11_DeriveWithTemplate()
  9811 ms  0x1649 ret:0x7fa2edd47a80
  9811 ms  0x1649 PK11_DeriveWithFlags()
  9811 ms  0x1649 basekey:0x7fa2edd47b00
  9811 ms     | 0x1649 PK11_DeriveWithTemplate()
  9811 ms  0x1649 ret:0x7fa2edd54c80
  9811 ms  0x1649 PK11_DeriveWithFlags()
  9811 ms  0x1649 basekey:0x7fa2edd47b00
  9811 ms     | 0x1649 PK11_DeriveWithTemplate()
  9811 ms  0x1649 ret:0x7fa2edd54100
           /* TID 0x1651 */
  9812 ms  0x1651 PR_Close()
  9812 ms  0x1651 fd:0x7fa2edd9a670
  9814 ms  0x1651 PR_Close()
  9814 ms  0x1651 fd:0x7fa2edd9a670
  9817 ms  0x1651 PR_Close()
  9817 ms  0x1651 fd:0x7fa2edd9a670
           /* TID 0x1649 */
  9819 ms  0x1649 PK11_DeriveWithFlags()
  9819 ms  0x1649 basekey:0x7fa2edd47b00
  9819 ms     | 0x1649 PK11_DeriveWithTemplate()
  9819 ms  0x1649 ret:0x7fa2edd54100
           /* TID 0x1651 */
  9821 ms  0x1651 PR_Close()
  9821 ms  0x1651 fd:0x7fa2edd9a670
           /* TID 0x1649 */
  9831 ms  0x1649 PR_Connect()
  9831 ms  0x1649 fd:0x7fa2edd8cdf0
  9842 ms  0x1649 SECKEY_CreateECPrivateKey()
  9842 ms  0x1649 cx:0x7fa2f0eaf248
  9842 ms     | 0x1649 EC_ValidatePublicKey()
  9842 ms     | 0x1649 ret:0x0
  9842 ms  0x1649 ret:0x7fa2f4205820::7fa2f4205820  e0 52 e3 ee                                      .R..
  9842 ms  0x1649 SECKEY_CreateECPrivateKey()
  9842 ms  0x1649 cx:0x7fa2f0eaf248
  9843 ms     | 0x1649 EC_ValidatePublicKey()
  9844 ms     | 0x1649 ret:0x0
  9844 ms  0x1649 ret:0x7fa2f4209820::7fa2f4209820  30 5d e3 ee                                      0]..
  9855 ms  SECKEY_ECParamsToKeySize()
  9855 ms  0x1649 ret:0x100
  9855 ms  0x1649 SECKEY_CreateECPrivateKey()
  9855 ms  0x1649 cx:0x7fa2f0eaf0a8
  9856 ms     | 0x1649 EC_ValidatePublicKey()
  9857 ms     | 0x1649 ret:0x0
  9857 ms  0x1649 ret:0x7fa2f421d820::7fa2f421d820  b0 c5 6f ef                                      ..o.
  9857 ms  0x1649 PK11_PubDeriveWithKDF()
  9857 ms  0x1649 seckey:0x7fa2f421d820
  9857 ms     | 0x1649 EC_ValidatePublicKey()
  9864 ms     | 0x1649 ret:0x0
  9866 ms  0x1649 ret:0x7fa2edd54100
  9866 ms  0x1649 PK11_DeriveWithFlags()
  9866 ms  0x1649 basekey:0x7fa2edd54100
  9866 ms     | 0x1649 PK11_DeriveWithTemplate()
  9866 ms  0x1649 ret:0x7fa2edd54800
  9866 ms  0x1649 PK11_Derive()
  9866 ms  0x1649 basekey:0x7fa2edd54800
  9866 ms     | 0x1649 PK11_DeriveWithTemplate()
  9866 ms  0x1649 ret:0x7fa2edd47800
  9866 ms  0x1649 SECKEY_DestroyPrivateKey()
  9866 ms  0x1649 privk:0x7fa2f421d820::7fa2f421d820  b0 c5 6f ef                                      ..o.
  9866 ms  0x1649 privk:0x7fa2f421d820::7fa2f421d820  e5 e5 e5 e5                                      ....
  9866 ms  0x1649 PK11_Encrypt()
  9866 ms  0x1649 symkey:0x7fa2edd54280
  9870 ms  0x1649 SSL_AuthCertificateComplete()
  9870 ms  0x1649 fd:0x7fa2eed8ac40
  9870 ms  0x1649 err:0x0
  9870 ms  0x1649 PK11_Encrypt()
  9870 ms  0x1649 symkey:0x7fa2edd55180
  9873 ms  0x1649 PK11_Encrypt()
  9873 ms  0x1649 symkey:0x7fa2edd55180
  9873 ms  0x1649 PK11_Encrypt()
  9873 ms  0x1649 symkey:0x7fa2edd54280
  9883 ms  0x1649 PK11_Encrypt()
  9883 ms  0x1649 symkey:0x7fa2edd55180
  9913 ms  0x1649 SSL_ImportFD()
  9913 ms  0x1649 ret:0x7fa2eed8ad30
  9913 ms  0x1649 SSL_AuthCertificateHook()
  9913 ms  0x1649 fd:0x7fa2eed8ad30
  9913 ms  0x1649 ret:0x0
  9913 ms  0x1649 PR_Connect()
  9913 ms  0x1649 fd:0x7fa2eed8ad30
  9914 ms  0x1649 SSL_ImportFD()
  9914 ms  0x1649 ret:0x7fa2eee59730
  9914 ms  0x1649 SSL_AuthCertificateHook()
  9914 ms  0x1649 fd:0x7fa2eee59730
  9914 ms  0x1649 ret:0x0
  9914 ms  0x1649 PR_Connect()
  9914 ms  0x1649 fd:0x7fa2eee59730
  9917 ms  0x1649 SSL_ImportFD()
  9917 ms  0x1649 ret:0x7fa2eeef69a0
  9917 ms  0x1649 SSL_AuthCertificateHook()
  9917 ms  0x1649 fd:0x7fa2eeef69a0
  9917 ms  0x1649 ret:0x0
  9917 ms  0x1649 PR_Connect()
  9917 ms  0x1649 fd:0x7fa2eeef69a0
  9918 ms  0x1649 SSL_ImportFD()
  9918 ms  0x1649 ret:0x7fa2ef6bf040
  9918 ms  0x1649 SSL_AuthCertificateHook()
  9918 ms  0x1649 fd:0x7fa2ef6bf040
  9918 ms  0x1649 ret:0x0
  9918 ms  0x1649 PR_Connect()
  9918 ms  0x1649 fd:0x7fa2ef6bf040
           /* TID 0x1651 */
  9939 ms  0x1651 PR_Close()
  9939 ms  0x1651 fd:0x7fa2edd9a8b0
  9956 ms  0x1651 PR_Close()
  9956 ms  0x1651 fd:0x7fa2efbc1700
 10007 ms  0x1651 PR_Close()
 10007 ms  0x1651 fd:0x7fa2edd9a6d0
 10007 ms  0x1651 PR_Close()
 10007 ms  0x1651 fd:0x7fa2edd9a6d0
           /* TID 0x1649 */
 10011 ms  0x1649 PK11_Encrypt()
 10011 ms  0x1649 symkey:0x7fa2edd55180
           /* TID 0x1651 */
 10018 ms  0x1651 PR_Close()
 10018 ms  0x1651 fd:0x7fa2edd83310
           /* TID 0x16e9 */
 10018 ms  0x16e9 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10018 ms  0x16e9 ret:0x0
           /* TID 0x1649 */
 10024 ms  0x1649 SSL_AuthCertificateComplete()
 10024 ms  0x1649 fd:0x7fa2ef1a9790
 10024 ms  0x1649 err:0x0
 10024 ms     | 0x1649 PK11_DeriveWithFlags()
 10024 ms     | 0x1649 basekey:0x7fa2edd47a80
 10024 ms     |    | 0x1649 PK11_DeriveWithTemplate()
 10024 ms     | 0x1649 ret:0x7fa2edd54100
 10024 ms     | 0x1649 PK11_DeriveWithFlags()
 10024 ms     | 0x1649 basekey:0x7fa2edd47a80
 10024 ms     |    | 0x1649 PK11_DeriveWithTemplate()
 10024 ms     | 0x1649 ret:0x7fa2edd47780
 10024 ms     | 0x1649 PK11_DeriveWithFlags()
 10024 ms     | 0x1649 basekey:0x7fa2edd47a80
 10024 ms     |    | 0x1649 PK11_DeriveWithTemplate()
 10024 ms     | 0x1649 ret:0x7fa2ef1a6b00
 10024 ms     | 0x1649 PK11_DeriveWithFlags()
 10024 ms     | 0x1649 basekey:0x7fa2edd54080
 10024 ms     |    | 0x1649 PK11_DeriveWithTemplate()
 10024 ms     | 0x1649 ret:0x7fa2edd54f00
 10024 ms     | 0x1649 PK11_DeriveWithFlags()
 10024 ms     | 0x1649 basekey:0x7fa2edd54080
 10024 ms     |    | 0x1649 PK11_DeriveWithTemplate()
 10024 ms     | 0x1649 ret:0x7fa2edd54e80
 10024 ms     | 0x1649 PK11_DeriveWithFlags()
 10024 ms     | 0x1649 basekey:0x7fa2edd47780
 10024 ms     |    | 0x1649 PK11_DeriveWithTemplate()
 10024 ms     | 0x1649 ret:0x7fa2edd54e80
 10024 ms     | 0x1649 PK11_DeriveWithFlags()
 10024 ms     | 0x1649 basekey:0x7fa2edd47780
 10024 ms     |    | 0x1649 PK11_DeriveWithTemplate()
 10024 ms     | 0x1649 ret:0x7fa2edd54e00
 10024 ms     | 0x1649 PK11_DeriveWithFlags()
 10024 ms     | 0x1649 basekey:0x7fa2edd54080
 10024 ms     |    | 0x1649 PK11_DeriveWithTemplate()
 10024 ms     | 0x1649 ret:0x7fa2edd54c80
 10024 ms     | 0x1649 PK11_Encrypt()
 10024 ms     | 0x1649 symkey:0x7fa2edd54f00
 10024 ms     | 0x1649 PK11_DeriveWithFlags()
 10024 ms     | 0x1649 basekey:0x7fa2edd54100
 10024 ms     |    | 0x1649 PK11_DeriveWithTemplate()
 10024 ms     | 0x1649 ret:0x7fa2edd54c80
 10024 ms     | 0x1649 PK11_DeriveWithFlags()
 10024 ms     | 0x1649 basekey:0x7fa2edd54100
 10024 ms     |    | 0x1649 PK11_DeriveWithTemplate()
 10024 ms     | 0x1649 ret:0x7fa2edd54e00
 10024 ms     | 0x1649 PK11_DeriveWithFlags()
 10024 ms     | 0x1649 basekey:0x7fa2edd47a80
 10024 ms     |    | 0x1649 PK11_DeriveWithTemplate()
 10024 ms     | 0x1649 ret:0x7fa2edd54f00
 10024 ms     | 0x1649 SECKEY_DestroyPrivateKey()
 10024 ms     | 0x1649 privk:0x7fa2f3b06820::7fa2f3b06820  10 ff 4d ef                                      ..M.
 10025 ms     | 0x1649 privk:0x7fa2f3b06820::7fa2f3b06820  e5 e5 e5 e5                                      ....
 10025 ms     | 0x1649 SECKEY_DestroyPrivateKey()
 10025 ms     | 0x1649 privk:0x7fa2ee0ba020::7fa2ee0ba020  90 42 20 ee                                      .B .
 10025 ms     | 0x1649 privk:0x7fa2ee0ba020::7fa2ee0ba020  e5 e5 e5 e5                                      ....
 10025 ms  0x1649 PK11_Encrypt()
 10025 ms  0x1649 symkey:0x7fa2edd54c80
 10025 ms  0x1649 PK11_Encrypt()
 10025 ms  0x1649 symkey:0x7fa2edd54c80
 10026 ms  0x1649 PK11_Encrypt()
 10026 ms  0x1649 symkey:0x7fa2edd55180
 10027 ms  0x1649 PK11_Encrypt()
 10027 ms  0x1649 symkey:0x7fa2edd55180
 10028 ms  0x1649 PK11_Encrypt()
 10028 ms  0x1649 symkey:0x7fa2edd55180
 10062 ms  0x1649 PK11_DeriveWithFlags()
 10062 ms  0x1649 basekey:0x7fa2edd54f00
 10062 ms     | 0x1649 PK11_DeriveWithTemplate()
 10062 ms  0x1649 ret:0x7fa2edd47b00
 10062 ms  0x1649 PK11_DeriveWithFlags()
 10062 ms  0x1649 basekey:0x7fa2edd54f00
 10062 ms     | 0x1649 PK11_DeriveWithTemplate()
 10062 ms  0x1649 ret:0x7fa2edd47b00
 10062 ms  0x1649 PK11_Encrypt()
 10062 ms  0x1649 symkey:0x7fa2edd54c80
           /* TID 0x1651 */
 10081 ms  0x1651 PR_Close()
 10081 ms  0x1651 fd:0x7fa2edd830a0
           /* TID 0x1649 */
 10102 ms  SECKEY_ECParamsToKeySize()
 10102 ms  0x1649 ret:0x100
 10102 ms  0x1649 SECKEY_CreateECPrivateKey()
 10102 ms  0x1649 cx:0x7fa2f0eaf248
 10103 ms     | 0x1649 EC_ValidatePublicKey()
 10104 ms     | 0x1649 ret:0x0
 10104 ms  0x1649 ret:0x7fa2f436d020::7fa2f436d020  b0 c5 6f ef                                      ..o.
 10105 ms  0x1649 PK11_PubDeriveWithKDF()
 10105 ms  0x1649 seckey:0x7fa2f436d020
 10105 ms     | 0x1649 EC_ValidatePublicKey()
 10106 ms     | 0x1649 ret:0x0
 10107 ms  0x1649 ret:0x7fa2edd47b00
 10107 ms  0x1649 PK11_DeriveWithFlags()
 10107 ms  0x1649 basekey:0x7fa2edd47b00
 10107 ms     | 0x1649 PK11_DeriveWithTemplate()
 10107 ms  0x1649 ret:0x7fa2edd54080
 10107 ms  0x1649 PK11_Derive()
 10107 ms  0x1649 basekey:0x7fa2edd54080
 10108 ms     | 0x1649 PK11_DeriveWithTemplate()
 10108 ms  0x1649 ret:0x7fa2edd47a80
 10108 ms  0x1649 SECKEY_DestroyPrivateKey()
 10108 ms  0x1649 privk:0x7fa2f436d020::7fa2f436d020  b0 c5 6f ef                                      ..o.
 10108 ms  0x1649 privk:0x7fa2f436d020::7fa2f436d020  e5 e5 e5 e5                                      ....
 10108 ms  0x1649 PK11_Encrypt()
 10108 ms  0x1649 symkey:0x7fa2edd47d00
 10110 ms  0x1649 SSL_AuthCertificateComplete()
 10110 ms  0x1649 fd:0x7fa2edfdfd00
 10110 ms  0x1649 err:0x0
 10110 ms  0x1649 PK11_Encrypt()
 10110 ms  0x1649 symkey:0x7fa2edd47d00
 10121 ms  0x1649 SECKEY_DestroyPrivateKey()
 10121 ms  0x1649 privk:0x7fa2f28a4020::7fa2f28a4020  60 3a d1 ee                                      `:..
 10121 ms  0x1649 privk:0x7fa2f28a4020::7fa2f28a4020  e5 e5 e5 e5                                      ....
 10121 ms  0x1649 SECKEY_DestroyPrivateKey()
 10121 ms  0x1649 privk:0x7fa2ee0ce020::7fa2ee0ce020  d0 33 d1 ee                                      .3..
 10121 ms  0x1649 privk:0x7fa2ee0ce020::7fa2ee0ce020  e5 e5 e5 e5                                      ....
 10127 ms  0x1649 PK11_Encrypt()
 10127 ms  0x1649 symkey:0x7fa2edd54880
 10127 ms  0x1649 PK11_Encrypt()
 10127 ms  0x1649 symkey:0x7fa2edd55180
 10128 ms  0x1649 PK11_Encrypt()
 10128 ms  0x1649 symkey:0x7fa2edd54880
 10128 ms  0x1649 PK11_Encrypt()
 10128 ms  0x1649 symkey:0x7fa2edd55180
           /* TID 0x1651 */
 10131 ms  0x1651 PR_Close()
 10131 ms  0x1651 fd:0x7fa2f0effa30
           /* TID 0x1649 */
 10135 ms  0x1649 PK11_Encrypt()
 10135 ms  0x1649 symkey:0x7fa2edd54c80
           /* TID 0x1651 */
 10149 ms  0x1651 PR_Close()
 10149 ms  0x1651 fd:0x7fa2ef1a9550
 10152 ms  0x1651 PR_Close()
 10152 ms  0x1651 fd:0x7fa2ef1a9550
 10152 ms  0x1651 PR_Close()
 10152 ms  0x1651 fd:0x7fa2ef1a9550
           /* TID 0x1649 */
 10164 ms  0x1649 PK11_Encrypt()
 10164 ms  0x1649 symkey:0x7fa2edd55180
 10164 ms  0x1649 SSL_ImportFD()
 10164 ms  0x1649 ret:0x7fa2f2847a30
 10164 ms  0x1649 SSL_AuthCertificateHook()
 10164 ms  0x1649 fd:0x7fa2f2847a30
 10164 ms  0x1649 ret:0x0
 10164 ms  0x1649 PR_Connect()
 10164 ms  0x1649 fd:0x7fa2f2847a30
 10164 ms  0x1649 SSL_ImportFD()
 10164 ms  0x1649 ret:0x7fa2f0eae970
 10164 ms  0x1649 SSL_AuthCertificateHook()
 10164 ms  0x1649 fd:0x7fa2f0eae970
 10164 ms  0x1649 ret:0x0
 10165 ms  0x1649 PR_Connect()
 10165 ms  0x1649 fd:0x7fa2f0eae970
 10169 ms  0x1649 SSL_ImportFD()
 10169 ms  0x1649 ret:0x7fa2f385ecd0
 10169 ms  0x1649 SSL_AuthCertificateHook()
 10169 ms  0x1649 fd:0x7fa2f385ecd0
 10169 ms  0x1649 ret:0x0
 10169 ms  0x1649 PR_Connect()
 10169 ms  0x1649 fd:0x7fa2f385ecd0
 10169 ms  0x1649 SSL_ImportFD()
 10169 ms  0x1649 ret:0x7fa2eed8afd0
 10169 ms  0x1649 SSL_AuthCertificateHook()
 10169 ms  0x1649 fd:0x7fa2eed8afd0
 10169 ms  0x1649 ret:0x0
 10169 ms  0x1649 PR_Connect()
 10169 ms  0x1649 fd:0x7fa2eed8afd0
 10169 ms  0x1649 SECKEY_CreateECPrivateKey()
 10169 ms  0x1649 cx:0x7fa2f0eafda8
 10170 ms     | 0x1649 EC_ValidatePublicKey()
 10170 ms     | 0x1649 ret:0x0
 10170 ms  0x1649 ret:0x7fa2f436b820::7fa2f436b820  60 60 6e ef                                      ``n.
 10170 ms  0x1649 SECKEY_CreateECPrivateKey()
 10170 ms  0x1649 cx:0x7fa2f0eafda8
 10170 ms     | 0x1649 EC_ValidatePublicKey()
 10176 ms     | 0x1649 ret:0x0
 10176 ms  0x1649 ret:0x7fa2f436d820::7fa2f436d820  70 99 df ed                                      p...
 10177 ms  0x1649 SECKEY_CreateECPrivateKey()
 10177 ms  0x1649 cx:0x7fa2f0eaff48
 10177 ms     | 0x1649 EC_ValidatePublicKey()
 10177 ms     | 0x1649 ret:0x0
 10177 ms  0x1649 ret:0x7fa2f4373020::7fa2f4373020  10 4a 1e f3                                      .J..
 10178 ms  0x1649 SECKEY_CreateECPrivateKey()
 10178 ms  0x1649 cx:0x7fa2f0eaff48
 10178 ms     | 0x1649 EC_ValidatePublicKey()
 10179 ms     | 0x1649 ret:0x0
 10180 ms  0x1649 ret:0x7fa2f4375020::7fa2f4375020  e0 47 be f3                                      .G..
 10189 ms  0x1649 SECKEY_CreateECPrivateKey()
 10189 ms  0x1649 cx:0x7fa2f0eb00e8
 10189 ms     | 0x1649 EC_ValidatePublicKey()
 10189 ms     | 0x1649 ret:0x0
 10189 ms  0x1649 ret:0x7fa2f4377820::7fa2f4377820  c0 94 c0 f3                                      ....
 10189 ms  0x1649 SECKEY_CreateECPrivateKey()
 10189 ms  0x1649 cx:0x7fa2f0eb00e8
 10190 ms     | 0x1649 EC_ValidatePublicKey()
 10191 ms     | 0x1649 ret:0x0
 10191 ms  0x1649 ret:0x7fa2f4379820::7fa2f4379820  00 01 c3 f3                                      ....
 10207 ms  0x1649 SECKEY_CreateECPrivateKey()
 10207 ms  0x1649 cx:0x7fa2f0eafa68
 10207 ms     | 0x1649 EC_ValidatePublicKey()
 10207 ms     | 0x1649 ret:0x0
 10207 ms  0x1649 ret:0x7fa2f437c020::7fa2f437c020  20 1e c5 f3                                       ...
 10207 ms  0x1649 SECKEY_CreateECPrivateKey()
 10207 ms  0x1649 cx:0x7fa2f0eafa68
 10208 ms     | 0x1649 EC_ValidatePublicKey()
 10209 ms     | 0x1649 ret:0x0
 10209 ms  0x1649 ret:0x7fa2f437e020::7fa2f437e020  a0 61 f0 f3                                      .a..
           /* TID 0x1651 */
 10217 ms  0x1651 PR_Close()
 10217 ms  0x1651 fd:0x7fa2ee230af0
 10219 ms  0x1651 PR_Close()
 10219 ms  0x1651 fd:0x7fa2ee230af0
 10230 ms  0x1651 PR_Close()
 10230 ms  0x1651 fd:0x7fa2ee230af0
           /* TID 0x1649 */
 10236 ms  0x1649 SSL_ImportFD()
 10236 ms  0x1649 ret:0x7fa2ef1a9af0
 10236 ms  0x1649 SSL_AuthCertificateHook()
 10236 ms  0x1649 fd:0x7fa2ef1a9af0
 10236 ms  0x1649 ret:0x0
 10236 ms  0x1649 PR_Connect()
 10236 ms  0x1649 fd:0x7fa2ef1a9af0
           /* TID 0x1651 */
 10278 ms  0x1651 PR_Close()
 10278 ms  0x1651 fd:0x7fa2ee230af0
 10284 ms  0x1651 PR_Close()
 10284 ms  0x1651 fd:0x7fa2ee230af0
           /* TID 0x1649 */
 10344 ms  0x1649 SSL_ImportFD()
 10345 ms  0x1649 ret:0x7fa2f2891f40
 10345 ms  0x1649 SSL_AuthCertificateHook()
 10345 ms  0x1649 fd:0x7fa2f2891f40
 10345 ms  0x1649 ret:0x0
 10345 ms  0x1649 PR_Connect()
 10345 ms  0x1649 fd:0x7fa2f2891f40
 10345 ms  0x1649 SSL_ImportFD()
 10345 ms  0x1649 ret:0x7fa2edd830a0
 10345 ms  0x1649 SSL_AuthCertificateHook()
 10345 ms  0x1649 fd:0x7fa2edd830a0
 10345 ms  0x1649 ret:0x0
 10345 ms  0x1649 PR_Connect()
 10345 ms  0x1649 fd:0x7fa2edd830a0
 10365 ms  0x1649 SECKEY_DestroyPrivateKey()
 10365 ms  0x1649 privk:0x7fa2f4209820::7fa2f4209820  30 5d e3 ee                                      0]..
 10365 ms  0x1649 privk:0x7fa2f4209820::7fa2f4209820  e5 e5 e5 e5                                      ....
 10365 ms  0x1649 SECKEY_DestroyPrivateKey()
 10365 ms  0x1649 privk:0x7fa2f4205820::7fa2f4205820  e0 52 e3 ee                                      .R..
 10366 ms  0x1649 privk:0x7fa2f4205820::7fa2f4205820  e5 e5 e5 e5                                      ....
 10382 ms  0x1649 PK11_Encrypt()
 10382 ms  0x1649 symkey:0x7fa2edd54280
           /* TID 0x1651 */
 10386 ms  0x1651 PR_Close()
 10386 ms  0x1651 fd:0x7fa2efbc1820
           /* TID 0x1649 */
 10421 ms  0x1649 SECKEY_CreateECPrivateKey()
 10421 ms  0x1649 cx:0x7fa2f0eafc08
 10422 ms     | 0x1649 EC_ValidatePublicKey()
 10423 ms     | 0x1649 ret:0x0
 10423 ms  0x1649 ret:0x7fa2f28a4020::7fa2f28a4020  70 29 d7 ee                                      p)..
 10423 ms  0x1649 SECKEY_CreateECPrivateKey()
 10423 ms  0x1649 cx:0x7fa2f0eafc08
 10425 ms     | 0x1649 EC_ValidatePublicKey()
 10430 ms     | 0x1649 ret:0x0
 10431 ms  0x1649 ret:0x7fa2f4203020::7fa2f4203020  b0 55 e3 ee                                      .U..
 10432 ms  0x1649 SECKEY_CreateECPrivateKey()
 10432 ms  0x1649 cx:0x7fa2f0eb0768
 10433 ms     | 0x1649 EC_ValidatePublicKey()
 10433 ms     | 0x1649 ret:0x0
 10433 ms  0x1649 ret:0x7fa2f4209020::7fa2f4209020  20 fe 4d ef                                       .M.
 10433 ms  0x1649 SECKEY_CreateECPrivateKey()
 10433 ms  0x1649 cx:0x7fa2f0eb0768
 10435 ms     | 0x1649 EC_ValidatePublicKey()
 10440 ms     | 0x1649 ret:0x0
 10440 ms  0x1649 ret:0x7fa2f437f820::7fa2f437f820  60 65 f0 f3                                      `e..
 10440 ms  0x1649 PK11_Derive()
 10440 ms  0x1649 basekey:0x7fa2edd54e00
 10440 ms     | 0x1649 PK11_DeriveWithTemplate()
 10441 ms  0x1649 ret:0x7fa2edd47b00
 10441 ms  0x1649 PK11_Encrypt()
 10441 ms  0x1649 symkey:0x7fa2edd47a00
 10442 ms  0x1649 SECKEY_DestroyPrivateKey()
 10442 ms  0x1649 privk:0x7fa2f436d820::7fa2f436d820  70 99 df ed                                      p...
 10442 ms  0x1649 privk:0x7fa2f436d820::7fa2f436d820  e5 e5 e5 e5                                      ....
 10442 ms  0x1649 SECKEY_DestroyPrivateKey()
 10442 ms  0x1649 privk:0x7fa2f436b820::7fa2f436b820  60 60 6e ef                                      ``n.
 10442 ms  0x1649 privk:0x7fa2f436b820::7fa2f436b820  e5 e5 e5 e5                                      ....
 10443 ms  0x1649 PK11_Derive()
 10443 ms  0x1649 basekey:0x7fa2f0e4d900
 10443 ms     | 0x1649 PK11_DeriveWithTemplate()
 10443 ms  0x1649 ret:0x7fa2edd47980
 10443 ms  0x1649 PK11_Encrypt()
 10443 ms  0x1649 symkey:0x7fa2f0e4da80
 10444 ms  0x1649 SECKEY_DestroyPrivateKey()
 10444 ms  0x1649 privk:0x7fa2f4375020::7fa2f4375020  e0 47 be f3                                      .G..
 10444 ms  0x1649 privk:0x7fa2f4375020::7fa2f4375020  e5 e5 e5 e5                                      ....
 10444 ms  0x1649 SECKEY_DestroyPrivateKey()
 10444 ms  0x1649 privk:0x7fa2f4373020::7fa2f4373020  10 4a 1e f3                                      .J..
 10445 ms  0x1649 privk:0x7fa2f4373020::7fa2f4373020  e5 e5 e5 e5                                      ....
 10445 ms  0x1649 PK11_Encrypt()
 10445 ms  0x1649 symkey:0x7fa2edd47a00
 10447 ms  0x1649 PK11_Encrypt()
 10447 ms  0x1649 symkey:0x7fa2f0e4da80
 10448 ms  0x1649 SECKEY_CreateECPrivateKey()
 10448 ms  0x1649 cx:0x7fa2f0eb0908
 10449 ms     | 0x1649 EC_ValidatePublicKey()
 10449 ms     | 0x1649 ret:0x0
 10449 ms  0x1649 ret:0x7fa2f436c020::7fa2f436c020  10 ff 4d ef                                      ..M.
 10449 ms  0x1649 SECKEY_CreateECPrivateKey()
 10449 ms  0x1649 cx:0x7fa2f0eb0908
 10450 ms     | 0x1649 EC_ValidatePublicKey()
 10452 ms     | 0x1649 ret:0x0
 10452 ms  0x1649 ret:0x7fa2f436f020::7fa2f436f020  00 e1 e4 f0                                      ....
 10453 ms  0x1649 PK11_Derive()
 10453 ms  0x1649 basekey:0x7fa2f0e4dc00
 10453 ms     | 0x1649 PK11_DeriveWithTemplate()
 10453 ms  0x1649 ret:0x7fa2f0e4db80
 10453 ms  0x1649 PK11_Encrypt()
 10453 ms  0x1649 symkey:0x7fa2f0e4dd80
 10454 ms  0x1649 SECKEY_DestroyPrivateKey()
 10454 ms  0x1649 privk:0x7fa2f4379820::7fa2f4379820  00 01 c3 f3                                      ....
 10454 ms  0x1649 privk:0x7fa2f4379820::7fa2f4379820  e5 e5 e5 e5                                      ....
 10454 ms  0x1649 SECKEY_DestroyPrivateKey()
 10454 ms  0x1649 privk:0x7fa2f4377820::7fa2f4377820  c0 94 c0 f3                                      ....
 10454 ms  0x1649 privk:0x7fa2f4377820::7fa2f4377820  e5 e5 e5 e5                                      ....
 10454 ms  0x1649 PK11_Encrypt()
 10454 ms  0x1649 symkey:0x7fa2f0e4dd80
 10459 ms  0x1649 SECKEY_CreateECPrivateKey()
 10459 ms  0x1649 cx:0x7fa2f0eb0428
 10459 ms     | 0x1649 EC_ValidatePublicKey()
 10459 ms     | 0x1649 ret:0x0
 10459 ms  0x1649 ret:0x7fa2f4374820::7fa2f4374820  90 4c 1e f3                                      .L..
 10459 ms  0x1649 SECKEY_CreateECPrivateKey()
 10459 ms  0x1649 cx:0x7fa2f0eb0428
 10460 ms     | 0x1649 EC_ValidatePublicKey()
 10462 ms     | 0x1649 ret:0x0
 10462 ms  0x1649 ret:0x7fa2f4377020::7fa2f4377020  c0 4e be f3                                      .N..
 10463 ms  0x1649 SECKEY_CreateECPrivateKey()
 10463 ms  0x1649 cx:0x7fa2f0eb05c8
 10464 ms     | 0x1649 EC_ValidatePublicKey()
 10464 ms     | 0x1649 ret:0x0
 10464 ms  0x1649 ret:0x7fa2f4379820::7fa2f4379820  c0 99 c0 f3                                      ....
 10464 ms  0x1649 SECKEY_CreateECPrivateKey()
 10464 ms  0x1649 cx:0x7fa2f0eb05c8
 10465 ms     | 0x1649 EC_ValidatePublicKey()
 10466 ms     | 0x1649 ret:0x0
 10466 ms  0x1649 ret:0x7fa2f4382820::7fa2f4382820  50 66 f0 f3                                      Pf..
 10498 ms  0x1649 PR_Close()
 10498 ms  0x1649 fd:0x7fa2eeef2850
 10498 ms     | 0x1649 PK11_Encrypt()
 10498 ms     | 0x1649 symkey:0x7fa2eeed7d80
 10505 ms  0x1649 PK11_Derive()
 10505 ms  0x1649 basekey:0x7fa2eeed7b80
 10505 ms     | 0x1649 PK11_DeriveWithTemplate()
 10505 ms  0x1649 ret:0x7fa2eeed7c00
 10505 ms  0x1649 PK11_Encrypt()
 10505 ms  0x1649 symkey:0x7fa2eeed7c80
 10506 ms  0x1649 SECKEY_DestroyPrivateKey()
 10506 ms  0x1649 privk:0x7fa2f437e020::7fa2f437e020  a0 61 f0 f3                                      .a..
 10506 ms  0x1649 privk:0x7fa2f437e020::7fa2f437e020  e5 e5 e5 e5                                      ....
 10506 ms  0x1649 SECKEY_DestroyPrivateKey()
 10506 ms  0x1649 privk:0x7fa2f437c020::7fa2f437c020  20 1e c5 f3                                       ...
 10506 ms  0x1649 privk:0x7fa2f437c020::7fa2f437c020  e5 e5 e5 e5                                      ....
 10507 ms  0x1649 PK11_Encrypt()
 10507 ms  0x1649 symkey:0x7fa2eeed7c80
 10552 ms  0x1649 SECKEY_CreateECPrivateKey()
 10552 ms  0x1649 cx:0x7fa2f0eb0c48
 10553 ms     | 0x1649 EC_ValidatePublicKey()
 10553 ms     | 0x1649 ret:0x0
 10553 ms  0x1649 ret:0x7fa2f437b820::7fa2f437b820  f0 5b ce f3                                      .[..
 10553 ms  0x1649 SECKEY_CreateECPrivateKey()
 10553 ms  0x1649 cx:0x7fa2f0eb0c48
 10555 ms     | 0x1649 EC_ValidatePublicKey()
 10568 ms     | 0x1649 ret:0x0
 10568 ms  0x1649 ret:0x7fa2f437d820::7fa2f437d820  10 1a c5 f3                                      ....
 10569 ms  0x1649 SECKEY_CreateECPrivateKey()
 10569 ms  0x1649 cx:0x7fa2f0eb0aa8
 10570 ms     | 0x1649 EC_ValidatePublicKey()
 10570 ms     | 0x1649 ret:0x0
 10570 ms  0x1649 ret:0x7fa2f4385020::7fa2f4385020  80 cd f2 f3                                      ....
 10570 ms  0x1649 SECKEY_CreateECPrivateKey()
 10570 ms  0x1649 cx:0x7fa2f0eb0aa8
 10571 ms     | 0x1649 EC_ValidatePublicKey()
 10574 ms     | 0x1649 ret:0x0
 10574 ms  0x1649 ret:0x7fa2f6cad020::7fa2f6cad020  40 d2 fe f3                                      @...
           /* TID 0x1651 */
 10625 ms  0x1651 PR_Close()
 10625 ms  0x1651 fd:0x7fa2edd9af10
           /* TID 0x1649 */
 10627 ms  0x1649 PK11_Encrypt()
 10627 ms  0x1649 symkey:0x7fa2edd47d00
           /* TID 0x1651 */
 10654 ms  0x1651 PR_Close()
 10654 ms  0x1651 fd:0x7fa2edd9af10
           /* TID 0x1649 */
 10659 ms  SECKEY_ECParamsToKeySize()
 10659 ms  0x1649 ret:0x100
 10659 ms  0x1649 SECKEY_CreateECPrivateKey()
 10659 ms  0x1649 cx:0x7fa2f0eb0908
 10660 ms     | 0x1649 EC_ValidatePublicKey()
 10663 ms     | 0x1649 ret:0x0
 10663 ms  0x1649 ret:0x7fa2f6cb7820::7fa2f6cb7820  30 2d 01 f4                                      0-..
 10663 ms  0x1649 PK11_PubDeriveWithKDF()
 10663 ms  0x1649 seckey:0x7fa2f6cb7820
 10663 ms     | 0x1649 EC_ValidatePublicKey()
 10668 ms     | 0x1649 ret:0x0
 10671 ms  0x1649 ret:0x7fa2f0e4de80
 10671 ms  0x1649 PK11_DeriveWithFlags()
 10671 ms  0x1649 basekey:0x7fa2f0e4de80
 10671 ms     | 0x1649 PK11_DeriveWithTemplate()
 10671 ms  0x1649 ret:0x7fa2edfacb80
 10671 ms  0x1649 PK11_Derive()
 10671 ms  0x1649 basekey:0x7fa2edfacb80
 10671 ms     | 0x1649 PK11_DeriveWithTemplate()
 10671 ms  0x1649 ret:0x7fa2edfacd00
 10671 ms  0x1649 SECKEY_DestroyPrivateKey()
 10671 ms  0x1649 privk:0x7fa2f6cb7820::7fa2f6cb7820  30 2d 01 f4                                      0-..
 10672 ms  0x1649 privk:0x7fa2f6cb7820::7fa2f6cb7820  e5 e5 e5 e5                                      ....
 10672 ms  0x1649 PK11_Encrypt()
 10672 ms  0x1649 symkey:0x7fa2edface80
 10672 ms  0x1649 SSL_AuthCertificateComplete()
 10672 ms  0x1649 fd:0x7fa2ef1a9af0
 10672 ms  0x1649 err:0x0
 10672 ms  0x1649 PK11_Encrypt()
 10672 ms  0x1649 symkey:0x7fa2edd54280
 10673 ms  0x1649 PK11_Encrypt()
 10673 ms  0x1649 symkey:0x7fa2edface80
 10686 ms  0x1649 PK11_Derive()
 10686 ms  0x1649 basekey:0x7fa2edfacf80
 10686 ms     | 0x1649 PK11_DeriveWithTemplate()
 10687 ms  0x1649 ret:0x7fa2f0e4de80
 10687 ms  0x1649 PK11_Encrypt()
 10687 ms  0x1649 symkey:0x7fa2edfad400
 10688 ms  0x1649 SECKEY_DestroyPrivateKey()
 10688 ms  0x1649 privk:0x7fa2f4203020::7fa2f4203020  b0 55 e3 ee                                      .U..
 10688 ms  0x1649 privk:0x7fa2f4203020::7fa2f4203020  e5 e5 e5 e5                                      ....
 10688 ms  0x1649 SECKEY_DestroyPrivateKey()
 10688 ms  0x1649 privk:0x7fa2f28a4020::7fa2f28a4020  70 29 d7 ee                                      p)..
 10689 ms  0x1649 privk:0x7fa2f28a4020::7fa2f28a4020  e5 e5 e5 e5                                      ....
 10695 ms  0x1649 PK11_Derive()
 10695 ms  0x1649 basekey:0x7fa2edfad680
 10695 ms     | 0x1649 PK11_DeriveWithTemplate()
 10696 ms  0x1649 ret:0x7fa2edfad600
 10696 ms  0x1649 PK11_Encrypt()
 10696 ms  0x1649 symkey:0x7fa2edfad800
 10697 ms  0x1649 SECKEY_DestroyPrivateKey()
 10697 ms  0x1649 privk:0x7fa2f437f820::7fa2f437f820  60 65 f0 f3                                      `e..
 10698 ms  0x1649 privk:0x7fa2f437f820::7fa2f437f820  e5 e5 e5 e5                                      ....
 10698 ms  0x1649 SECKEY_DestroyPrivateKey()
 10698 ms  0x1649 privk:0x7fa2f4209020::7fa2f4209020  20 fe 4d ef                                       .M.
 10698 ms  0x1649 privk:0x7fa2f4209020::7fa2f4209020  e5 e5 e5 e5                                      ....
 10757 ms  0x1649 PK11_Derive()
 10757 ms  0x1649 basekey:0x7fa2edfada80
 10757 ms     | 0x1649 PK11_DeriveWithTemplate()
 10757 ms  0x1649 ret:0x7fa2dcf76100
 10757 ms  0x1649 PK11_Encrypt()
 10757 ms  0x1649 symkey:0x7fa2edfadc00
 10759 ms  0x1649 SECKEY_DestroyPrivateKey()
 10759 ms  0x1649 privk:0x7fa2f4377020::7fa2f4377020  c0 4e be f3                                      .N..
 10760 ms  0x1649 privk:0x7fa2f4377020::7fa2f4377020  e5 e5 e5 e5                                      ....
 10760 ms  0x1649 SECKEY_DestroyPrivateKey()
 10760 ms  0x1649 privk:0x7fa2f4374820::7fa2f4374820  90 4c 1e f3                                      .L..
 10760 ms  0x1649 privk:0x7fa2f4374820::7fa2f4374820  e5 e5 e5 e5                                      ....
 10761 ms  0x1649 PK11_Derive()
 10761 ms  0x1649 basekey:0x7fa2ee4ac480
 10761 ms     | 0x1649 PK11_DeriveWithTemplate()
 10761 ms  0x1649 ret:0x7fa2ee4ac300
 10762 ms  0x1649 PK11_Encrypt()
 10762 ms  0x1649 symkey:0x7fa2ee4fe480
 10763 ms  0x1649 SECKEY_DestroyPrivateKey()
 10763 ms  0x1649 privk:0x7fa2f4382820::7fa2f4382820  50 66 f0 f3                                      Pf..
 10764 ms  0x1649 privk:0x7fa2f4382820::7fa2f4382820  e5 e5 e5 e5                                      ....
 10764 ms  0x1649 SECKEY_DestroyPrivateKey()
 10764 ms  0x1649 privk:0x7fa2f4379820::7fa2f4379820  c0 99 c0 f3                                      ....
 10764 ms  0x1649 privk:0x7fa2f4379820::7fa2f4379820  e5 e5 e5 e5                                      ....
 10782 ms  SECKEY_ECParamsToKeySize()
 10782 ms  0x1649 ret:0x100
 10782 ms  0x1649 SECKEY_CreateECPrivateKey()
 10782 ms  0x1649 cx:0x7fa2f0eb0c48
 10786 ms     | 0x1649 EC_ValidatePublicKey()
 10792 ms     | 0x1649 ret:0x0
 10792 ms  0x1649 ret:0x7fa2f4205020::7fa2f4205020  a0 4b 1e f3                                      .K..
 10792 ms  0x1649 PK11_PubDeriveWithKDF()
 10792 ms  0x1649 seckey:0x7fa2f4205020
 10792 ms     | 0x1649 EC_ValidatePublicKey()
 10797 ms     | 0x1649 ret:0x0
 10801 ms  0x1649 ret:0x7fa2edfac800
 10801 ms  0x1649 PK11_DeriveWithFlags()
 10801 ms  0x1649 basekey:0x7fa2edfac800
 10801 ms     | 0x1649 PK11_DeriveWithTemplate()
 10801 ms  0x1649 ret:0x7fa2eee38880
 10801 ms  0x1649 PK11_Derive()
 10801 ms  0x1649 basekey:0x7fa2eee38880
 10801 ms     | 0x1649 PK11_DeriveWithTemplate()
 10801 ms  0x1649 ret:0x7fa2eee38900
 10801 ms  0x1649 SECKEY_DestroyPrivateKey()
 10801 ms  0x1649 privk:0x7fa2f4205020::7fa2f4205020  a0 4b 1e f3                                      .K..
 10801 ms  0x1649 privk:0x7fa2f4205020::7fa2f4205020  e5 e5 e5 e5                                      ....
 10802 ms  0x1649 PK11_Encrypt()
 10802 ms  0x1649 symkey:0x7fa2eee39b00
 10804 ms  0x1649 SSL_AuthCertificateComplete()
 10804 ms  0x1649 fd:0x7fa2edd830a0
 10804 ms  0x1649 err:0x0
 10804 ms  0x1649 PK11_Encrypt()
 10804 ms  0x1649 symkey:0x7fa2eee39b00
 10877 ms  0x1649 SECKEY_DestroyPrivateKey()
 10877 ms  0x1649 privk:0x7fa2f436f020::7fa2f436f020  00 e1 e4 f0                                      ....
 10877 ms  0x1649 privk:0x7fa2f436f020::7fa2f436f020  e5 e5 e5 e5                                      ....
 10877 ms  0x1649 SECKEY_DestroyPrivateKey()
 10877 ms  0x1649 privk:0x7fa2f436c020::7fa2f436c020  10 ff 4d ef                                      ..M.
 10878 ms  0x1649 privk:0x7fa2f436c020::7fa2f436c020  e5 e5 e5 e5                                      ....
           /* TID 0x1651 */
 10901 ms  0x1651 PR_Close()
 10901 ms  0x1651 fd:0x7fa2eeef2610
           /* TID 0x1649 */
 10906 ms  0x1649 PK11_Encrypt()
 10906 ms  0x1649 symkey:0x7fa2edd47d00
 10908 ms  0x1649 PK11_Encrypt()
 10908 ms  0x1649 symkey:0x7fa2edfad400
           /* TID 0x1651 */
 10935 ms  0x1651 PR_Close()
 10935 ms  0x1651 fd:0x7fa2ee217eb0
           /* TID 0x1649 */
 10942 ms  0x1649 PK11_Encrypt()
 10942 ms  0x1649 symkey:0x7fa2edd54280
           /* TID 0x1651 */
 10995 ms  0x1651 PR_Close()
 10995 ms  0x1651 fd:0x7fa2f0eaec70
 11002 ms  0x1651 PR_Close()
 11002 ms  0x1651 fd:0x7fa2f288c160
           /* TID 0x1649 */
 11009 ms  0x1649 SECKEY_DestroyPrivateKey()
 11009 ms  0x1649 privk:0x7fa2f437d820::7fa2f437d820  10 1a c5 f3                                      ....
 11009 ms  0x1649 privk:0x7fa2f437d820::7fa2f437d820  e5 e5 e5 e5                                      ....
 11009 ms  0x1649 SECKEY_DestroyPrivateKey()
 11009 ms  0x1649 privk:0x7fa2f437b820::7fa2f437b820  f0 5b ce f3                                      .[..
 11009 ms  0x1649 privk:0x7fa2f437b820::7fa2f437b820  e5 e5 e5 e5                                      ....
           /* TID 0x1651 */
 11011 ms  0x1651 PR_Close()
 11011 ms  0x1651 fd:0x7fa2f385e040
           /* TID 0x1649 */
 11016 ms  0x1649 PK11_Encrypt()
 11016 ms  0x1649 symkey:0x7fa2f0e4da80
 11018 ms  0x1649 PK11_Encrypt()
 11018 ms  0x1649 symkey:0x7fa2edd47a00
 11019 ms  0x1649 PK11_Encrypt()
 11019 ms  0x1649 symkey:0x7fa2f0e4dd80
           /* TID 0x1651 */
 11080 ms  0x1651 PR_Close()
 11080 ms  0x1651 fd:0x7fa2ef1a9f70
 11147 ms  0x1651 PR_Close()
 11147 ms  0x1651 fd:0x7fa2eee590d0
 11168 ms  0x1651 PR_Close()
 11168 ms  0x1651 fd:0x7fa2eee59130
           /* TID 0x1649 */
 11171 ms  0x1649 PK11_Encrypt()
 11171 ms  0x1649 symkey:0x7fa2edd55180
 11172 ms  0x1649 PK11_Encrypt()
 11172 ms  0x1649 symkey:0x7fa2eeed7c80
           /* TID 0x1651 */
 11174 ms  0x1651 PR_Close()
 11174 ms  0x1651 fd:0x7fa2ef6bfb20
           /* TID 0x1649 */
 11186 ms  0x1649 PK11_Encrypt()
 11186 ms  0x1649 symkey:0x7fa2edd47d00
           /* TID 0x1651 */
 11207 ms  0x1651 PR_Close()
 11207 ms  0x1651 fd:0x7fa2efbae820
 11228 ms  0x1651 PR_Close()
 11228 ms  0x1651 fd:0x7fa2efbae8b0
 11242 ms  0x1651 PR_Close()
 11242 ms  0x1651 fd:0x7fa2efbae8e0
 11250 ms  0x1651 PR_Close()
 11250 ms  0x1651 fd:0x7fa2eeef2610
 11281 ms  0x1651 PR_Close()
 11281 ms  0x1651 fd:0x7fa2edfdfb50
           /* TID 0x1649 */
 11284 ms  0x1649 PK11_Encrypt()
 11284 ms  0x1649 symkey:0x7fa2edd55180
 11285 ms  0x1649 PK11_Encrypt()
 11285 ms  0x1649 symkey:0x7fa2edd54880
 11285 ms  0x1649 PK11_Encrypt()
 11285 ms  0x1649 symkey:0x7fa2edd55180
 11286 ms  0x1649 PK11_Encrypt()
 11286 ms  0x1649 symkey:0x7fa2edfad400
           /* TID 0x1651 */
 11294 ms  0x1651 PR_Close()
 11294 ms  0x1651 fd:0x7fa2edfdfb50
 11298 ms  0x1651 PR_Close()
 11298 ms  0x1651 fd:0x7fa2eee59520
           /* TID 0x1649 */
 11305 ms  0x1649 PK11_Encrypt()
 11305 ms  0x1649 symkey:0x7fa2f0e4da80
 11305 ms  0x1649 PK11_Encrypt()
 11305 ms  0x1649 symkey:0x7fa2edd47a00
 11306 ms  SECKEY_ECParamsToKeySize()
 11306 ms  0x1649 ret:0x100
 11306 ms  0x1649 SECKEY_CreateECPrivateKey()
 11306 ms  0x1649 cx:0x7fa2f0eb0aa8
 11307 ms     | 0x1649 EC_ValidatePublicKey()
 11309 ms     | 0x1649 ret:0x0
 11309 ms  0x1649 ret:0x7fa2f436d020::7fa2f436d020  60 f5 4d ef                                      `.M.
 11309 ms  0x1649 PK11_PubDeriveWithKDF()
 11309 ms  0x1649 seckey:0x7fa2f436d020
 11312 ms     | 0x1649 EC_ValidatePublicKey()
 11314 ms     | 0x1649 ret:0x0
 11315 ms  0x1649 ret:0x7fa2edfac800
 11315 ms  0x1649 PK11_DeriveWithFlags()
 11315 ms  0x1649 basekey:0x7fa2edfac800
 11315 ms     | 0x1649 PK11_DeriveWithTemplate()
 11315 ms  0x1649 ret:0x7fa2ef60fb80
 11315 ms  0x1649 PK11_Derive()
 11315 ms  0x1649 basekey:0x7fa2ef60fb80
 11315 ms     | 0x1649 PK11_DeriveWithTemplate()
 11315 ms  0x1649 ret:0x7fa2ef60fc00
 11315 ms  0x1649 SECKEY_DestroyPrivateKey()
 11315 ms  0x1649 privk:0x7fa2f436d020::7fa2f436d020  60 f5 4d ef                                      `.M.
 11316 ms  0x1649 privk:0x7fa2f436d020::7fa2f436d020  e5 e5 e5 e5                                      ....
 11316 ms  0x1649 PK11_Encrypt()
 11316 ms  0x1649 symkey:0x7fa2ef60fd80
 11317 ms  0x1649 SSL_AuthCertificateComplete()
 11317 ms  0x1649 fd:0x7fa2f2891f40
 11317 ms  0x1649 err:0x0
 11317 ms  0x1649 PK11_Encrypt()
 11317 ms  0x1649 symkey:0x7fa2ef60fd80
           /* TID 0x1651 */
 11363 ms  0x1651 PR_Close()
 11363 ms  0x1651 fd:0x7fa2ef1a9760
 11449 ms  0x1651 PR_Close()
 11449 ms  0x1651 fd:0x7fa2ef1a9fd0
 11453 ms  0x1651 PR_Close()
 11453 ms  0x1651 fd:0x7fa2ef1a9f70
           /* TID 0x1649 */
 11459 ms  0x1649 PK11_Encrypt()
 11459 ms  0x1649 symkey:0x7fa2edd47d00
           /* TID 0x1651 */
 11480 ms  0x1651 PR_Close()
 11480 ms  0x1651 fd:0x7fa2edfdfa90
           /* TID 0x1649 */
 11523 ms  0x1649 SECKEY_DestroyPrivateKey()
 11523 ms  0x1649 privk:0x7fa2f6cad020::7fa2f6cad020  40 d2 fe f3                                      @...
 11523 ms  0x1649 privk:0x7fa2f6cad020::7fa2f6cad020  e5 e5 e5 e5                                      ....
 11523 ms  0x1649 SECKEY_DestroyPrivateKey()
 11523 ms  0x1649 privk:0x7fa2f4385020::7fa2f4385020  80 cd f2 f3                                      ....
 11523 ms  0x1649 privk:0x7fa2f4385020::7fa2f4385020  e5 e5 e5 e5                                      ....
           /* TID 0x1651 */
 11535 ms  0x1651 PR_Close()
 11535 ms  0x1651 fd:0x7fa2dcf16a60
 11545 ms  0x1651 PR_Close()
 11545 ms  0x1651 fd:0x7fa2dcf16a60
 11575 ms  0x1651 PR_Close()
 11575 ms  0x1651 fd:0x7fa2dcf16a60
 11576 ms  0x1651 PR_Close()
 11576 ms  0x1651 fd:0x7fa2dcf16ac0
 11724 ms  0x1651 PR_Close()
 11724 ms  0x1651 fd:0x7fa2edd83d60
 11744 ms  0x1651 PR_Close()
 11744 ms  0x1651 fd:0x7fa2edd83d60
           /* TID 0x1649 */
 11748 ms  0x1649 PK11_Encrypt()
 11748 ms  0x1649 symkey:0x7fa2eeed8380
 11748 ms  0x1649 SSL_ImportFD()
 11749 ms  0x1649 ret:0x7fa2edfdfdf0
 11749 ms  0x1649 SSL_AuthCertificateHook()
 11749 ms  0x1649 fd:0x7fa2edfdfdf0
 11749 ms  0x1649 ret:0x0
 11749 ms  0x1649 PR_Connect()
 11749 ms  0x1649 fd:0x7fa2edfdfdf0
 11768 ms  0x1649 PR_Close()
 11768 ms  0x1649 fd:0x7fa2eed8ab50
           /* TID 0x163e */
 11774 ms  0x163e EC_ValidatePublicKey()
 11775 ms  0x163e ret:0x0
 11775 ms  0x163e EC_ValidatePublicKey()
 11777 ms  0x163e ret:0x0
 11777 ms  0x163e EC_ValidatePublicKey()
 11784 ms  0x163e ret:0x0
 11784 ms  0x163e EC_ValidatePublicKey()
 11786 ms  0x163e ret:0x0
 11786 ms  0x163e EC_ValidatePublicKey()
           /* TID 0x1649 */
 11787 ms  0x1649 SECKEY_CreateECPrivateKey()
 11787 ms  0x1649 cx:0x7fa2f0eb1948
           /* TID 0x163e */
 11791 ms  0x163e ret:0x0
           /* TID 0x1649 */
 11791 ms     | 0x1649 EC_ValidatePublicKey()
 11791 ms     | 0x1649 ret:0x0
 11791 ms  0x1649 ret:0x7fa2dcd18820::7fa2dcd18820  80 38 d1 ee                                      .8..
 11791 ms  0x1649 SECKEY_CreateECPrivateKey()
 11791 ms  0x1649 cx:0x7fa2f0eb1948
 11792 ms     | 0x1649 EC_ValidatePublicKey()
 11793 ms     | 0x1649 ret:0x0
 11793 ms  0x1649 ret:0x7fa2dcd1a820::7fa2dcd1a820  80 3d d1 ee                                      .=..
           /* TID 0x163e */
 11794 ms  0x163e EC_ValidatePublicKey()
 11796 ms  0x163e ret:0x0
 11796 ms  0x163e EC_ValidatePublicKey()
 11797 ms  0x163e ret:0x0
 11797 ms  0x163e EC_ValidatePublicKey()
 11809 ms  0x163e ret:0x0
 11809 ms  0x163e EC_ValidatePublicKey()
 11810 ms  0x163e ret:0x0
 11810 ms  0x163e EC_ValidatePublicKey()
 11812 ms  0x163e ret:0x0
           /* TID 0x1649 */
 11816 ms  0x1649 PK11_Encrypt()
 11816 ms  0x1649 symkey:0x7fa2edd54880
 11820 ms  0x1649 PK11_Encrypt()
 11820 ms  0x1649 symkey:0x7fa2edd55180
 11820 ms  0x1649 PK11_Encrypt()
 11820 ms  0x1649 symkey:0x7fa2edd54c80
 11820 ms  0x1649 PR_Close()
 11820 ms  0x1649 fd:0x7fa2f2891f40
 11820 ms     | 0x1649 PK11_Encrypt()
 11820 ms     | 0x1649 symkey:0x7fa2ef60fd80
 11820 ms  0x1649 PR_Close()
 11820 ms  0x1649 fd:0x7fa2edd830a0
 11820 ms     | 0x1649 PK11_Encrypt()
 11820 ms     | 0x1649 symkey:0x7fa2eee39b00
 11821 ms  0x1649 PR_Close()
 11821 ms  0x1649 fd:0x7fa2ef1a9af0
 11821 ms     | 0x1649 PK11_Encrypt()
 11821 ms     | 0x1649 symkey:0x7fa2edface80
 11821 ms  0x1649 PR_Close()
 11821 ms  0x1649 fd:0x7fa2f385ecd0
 11821 ms     | 0x1649 PK11_Encrypt()
 11821 ms     | 0x1649 symkey:0x7fa2ee4fe480
 11821 ms  0x1649 PR_Close()
 11821 ms  0x1649 fd:0x7fa2eed8afd0
 11821 ms     | 0x1649 PK11_Encrypt()
 11821 ms     | 0x1649 symkey:0x7fa2edfad800
 11821 ms  0x1649 PR_Close()
 11821 ms  0x1649 fd:0x7fa2f2847a30
 11821 ms     | 0x1649 PK11_Encrypt()
 11821 ms     | 0x1649 symkey:0x7fa2edfad400
 11822 ms  0x1649 PR_Close()
 11822 ms  0x1649 fd:0x7fa2f0eae970
 11822 ms     | 0x1649 PK11_Encrypt()
 11822 ms     | 0x1649 symkey:0x7fa2edfadc00
 11822 ms  0x1649 PR_Close()
 11822 ms  0x1649 fd:0x7fa2ef6bf040
 11822 ms     | 0x1649 PK11_Encrypt()
 11822 ms     | 0x1649 symkey:0x7fa2f0e4dd80
 11822 ms  0x1649 PR_Close()
 11822 ms  0x1649 fd:0x7fa2eeef69a0
 11822 ms     | 0x1649 PK11_Encrypt()
 11822 ms     | 0x1649 symkey:0x7fa2f0e4da80
 11822 ms  0x1649 PR_Close()
 11822 ms  0x1649 fd:0x7fa2eee59730
 11822 ms     | 0x1649 PK11_Encrypt()
 11822 ms     | 0x1649 symkey:0x7fa2edd47a00
 11822 ms  0x1649 PR_Close()
 11822 ms  0x1649 fd:0x7fa2eed8ad30
 11822 ms     | 0x1649 PK11_Encrypt()
 11822 ms     | 0x1649 symkey:0x7fa2eeed7c80
 11822 ms  0x1649 PR_Close()
 11822 ms  0x1649 fd:0x7fa2edd8cdf0
 11822 ms  0x1649 PR_Close()
 11822 ms  0x1649 fd:0x7fa2edfdfd00
 11822 ms     | 0x1649 PK11_Encrypt()
 11822 ms     | 0x1649 symkey:0x7fa2edd47d00
 11823 ms  0x1649 PR_Close()
 11823 ms  0x1649 fd:0x7fa2edfdf220
 11823 ms  0x1649 PR_Close()
 11823 ms  0x1649 fd:0x7fa2edd8cfa0
 11823 ms  0x1649 PR_Close()
 11823 ms  0x1649 fd:0x7fa2edfdf6d0
 11823 ms  0x1649 PR_Close()
 11823 ms  0x1649 fd:0x7fa2eed8ac40
 11823 ms     | 0x1649 PK11_Encrypt()
 11823 ms     | 0x1649 symkey:0x7fa2edd54280
 11823 ms  0x1649 PR_Close()
 11823 ms  0x1649 fd:0x7fa2edfdf940
 11823 ms  0x1649 PR_Close()
 11823 ms  0x1649 fd:0x7fa2ee217f70
 11823 ms  0x1649 PR_Close()
 11823 ms  0x1649 fd:0x7fa2dcf165b0
 11823 ms     | 0x1649 PK11_Encrypt()
 11823 ms     | 0x1649 symkey:0x7fa2dcdf9380
 11823 ms  0x1649 PR_Close()
 11823 ms  0x1649 fd:0x7fa2dcf160d0
 11823 ms     | 0x1649 PK11_Encrypt()
 11823 ms     | 0x1649 symkey:0x7fa2edde5900
 11823 ms  0x1649 PR_Close()
 11823 ms  0x1649 fd:0x7fa2efbc1e50
 11824 ms  0x1649 PR_Close()
 11824 ms  0x1649 fd:0x7fa2edfa6940
 11824 ms     | 0x1649 PK11_Encrypt()
 11824 ms     | 0x1649 symkey:0x7fa2edde4a80
 11824 ms  0x1649 PR_Close()
 11824 ms  0x1649 fd:0x7fa2edfa6880
 11824 ms  0x1649 PR_Close()
 11824 ms  0x1649 fd:0x7fa2ee230cd0
 11824 ms     | 0x1649 PK11_Encrypt()
 11824 ms     | 0x1649 symkey:0x7fa2ef1a6b80
 11824 ms  0x1649 PR_Close()
 11824 ms  0x1649 fd:0x7fa2ee230340
 11824 ms     | 0x1649 PK11_Encrypt()
 11824 ms     | 0x1649 symkey:0x7fa2f2851b80
 11824 ms  0x1649 PR_Close()
 11824 ms  0x1649 fd:0x7fa2ef1a9790
 11824 ms     | 0x1649 PK11_Encrypt()
 11824 ms     | 0x1649 symkey:0x7fa2edd54c80
 11825 ms  0x1649 PR_Close()
 11825 ms  0x1649 fd:0x7fa2edfdfcd0
 11825 ms     | 0x1649 PK11_Encrypt()
 11825 ms     | 0x1649 symkey:0x7fa2edd55180
 11825 ms  0x1649 PR_Close()
 11825 ms  0x1649 fd:0x7fa2eee594f0
 11825 ms     | 0x1649 PK11_Encrypt()
 11825 ms     | 0x1649 symkey:0x7fa2edd54880
           /* TID 0x16a3 */
 11825 ms  0x16a3 PR_Close()
 11825 ms  0x16a3 fd:0x7fa2dcf160d0
 11825 ms  0x16a3 PR_Close()
 11825 ms  0x16a3 fd:0x7fa2dcf160d0
           /* TID 0x163e */
 11835 ms  0x163e PR_Close()
 11835 ms  0x163e fd:0x7fa2eee6ca30
 11835 ms  0x163e PR_Close()
 11835 ms  0x163e fd:0x7fa2edfa6a60
 11835 ms  0x163e PR_Close()
 11835 ms  0x163e fd:0x7fa2edfdf220
 11835 ms  0x163e PR_Close()
 11835 ms  0x163e fd:0x7fa2edfa6a60
 11836 ms  0x163e PR_Close()
 11836 ms  0x163e fd:0x7fa2edfdf220
 11836 ms  0x163e PR_Close()
 11836 ms  0x163e fd:0x7fa2edfa6a60
           /* TID 0x1670 */
 11843 ms  0x1670 PR_Close()
 11843 ms  0x1670 fd:0x7fa2edfa6a60
           /* TID 0x1649 */
 11849 ms  0x1649 PK11_Derive()
 11849 ms  0x1649 basekey:0x7fa2edd54d00
 11849 ms     | 0x1649 PK11_DeriveWithTemplate()
 11849 ms  0x1649 ret:0x7fa2edd47500
 11849 ms  0x1649 PK11_PubDeriveWithKDF()
 11849 ms  0x1649 seckey:0x7fa2dcd18820
 11849 ms     | 0x1649 EC_ValidatePublicKey()
 11849 ms     | 0x1649 ret:0x0
 11850 ms  0x1649 ret:0x7fa2edd54d00
 11850 ms  SECKEY_ECParamsToKeySize()
 11850 ms  0x1649 ret:0xff
 11850 ms  0x1649 PK11_DeriveWithFlags()
 11850 ms  0x1649 basekey:0x7fa2edd47500
 11850 ms     | 0x1649 PK11_DeriveWithTemplate()
 11850 ms  0x1649 ret:0x7fa2edd55000
 11850 ms  0x1649 PK11_Derive()
 11850 ms  0x1649 basekey:0x7fa2edd54d00
 11850 ms     | 0x1649 PK11_DeriveWithTemplate()
 11850 ms  0x1649 ret:0x7fa2edd54f80
 11850 ms  0x1649 PK11_DeriveWithFlags()
 11850 ms  0x1649 basekey:0x7fa2edd54f80
 11850 ms     | 0x1649 PK11_DeriveWithTemplate()
 11850 ms  0x1649 ret:0x7fa2edd47500
 11850 ms  0x1649 PK11_DeriveWithFlags()
 11850 ms  0x1649 basekey:0x7fa2edd54f80
 11850 ms     | 0x1649 PK11_DeriveWithTemplate()
 11850 ms  0x1649 ret:0x7fa2edd54d00
 11850 ms  0x1649 PK11_DeriveWithFlags()
 11850 ms  0x1649 basekey:0x7fa2edd54f80
 11850 ms     | 0x1649 PK11_DeriveWithTemplate()
 11850 ms  0x1649 ret:0x7fa2edd55000
 11850 ms  0x1649 PK11_Derive()
 11850 ms  0x1649 basekey:0x7fa2ef1a6b00
 11850 ms     | 0x1649 PK11_DeriveWithTemplate()
 11850 ms  0x1649 ret:0x7fa2edd47780
 11850 ms  0x1649 PK11_DeriveWithFlags()
 11850 ms  0x1649 basekey:0x7fa2edd54d00
 11850 ms     | 0x1649 PK11_DeriveWithTemplate()
 11850 ms  0x1649 ret:0x7fa2edd54f80
 11850 ms  0x1649 PK11_DeriveWithFlags()
 11850 ms  0x1649 basekey:0x7fa2edd54d00
 11850 ms     | 0x1649 PK11_DeriveWithTemplate()
 11850 ms  0x1649 ret:0x7fa2edd55000
 11851 ms  0x1649 PK11_DeriveWithFlags()
 11851 ms  0x1649 basekey:0x7fa2edd54d00
 11851 ms     | 0x1649 PK11_DeriveWithTemplate()
 11851 ms  0x1649 ret:0x7fa2edd55000
           /* TID 0x163e */
 11862 ms  0x163e PR_Close()
 11862 ms  0x163e fd:0x7fa2edfdf220
 11862 ms  0x163e PR_Close()
 11862 ms  0x163e fd:0x7fa2eed8a1f0
 11863 ms  0x163e PR_Close()
 11863 ms  0x163e fd:0x7fa2edfdf220
 11863 ms  0x163e PR_Close()
 11863 ms  0x163e fd:0x7fa2eed8a1f0
 11864 ms  0x163e PR_Close()
 11864 ms  0x163e fd:0x7fa2f8dc89a0
 11864 ms  0x163e PR_Close()
 11864 ms  0x163e fd:0x7fa2f8dc88b0
 11864 ms  0x163e PR_Close()
 11864 ms  0x163e fd:0x7fa2f8dc8a60
 11866 ms  0x163e PR_Close()
 11866 ms  0x163e fd:0x7fa2ee230310
 11867 ms  0x163e PR_Close()
 11867 ms  0x163e fd:0x7fa2ee230310
 11869 ms  0x163e PR_Close()
 11869 ms  0x163e fd:0x7fa2edfdf220
 11869 ms  0x163e PR_Close()
 11869 ms  0x163e fd:0x7fa2eed8a220
 11870 ms  0x163e PR_Close()
 11870 ms  0x163e fd:0x7fa2edfdf220
 11870 ms  0x163e PR_Close()
 11870 ms  0x163e fd:0x7fa2eed8a220
 11872 ms  0x163e PR_Close()
 11872 ms  0x163e fd:0x7fa2eed8ab50
 11874 ms  0x163e PR_Close()
 11874 ms  0x163e fd:0x7fa2eed8ab50
 11875 ms  0x163e PR_Close()
 11875 ms  0x163e fd:0x7fa2edfdf220
 11875 ms  0x163e PR_Close()
 11875 ms  0x163e fd:0x7fa2eed8ad30
 11876 ms  0x163e PR_Close()
 11876 ms  0x163e fd:0x7fa2edfdf220
 11876 ms  0x163e PR_Close()
 11876 ms  0x163e fd:0x7fa2eed8ad30
 11879 ms  0x163e PR_Close()
 11879 ms  0x163e fd:0x7fa2eed8ad60
 11880 ms  0x163e PR_Close()
 11880 ms  0x163e fd:0x7fa2eed8ad60
 11886 ms  0x163e PR_Close()
 11886 ms  0x163e fd:0x7fa2eee595b0
 11887 ms  0x163e PR_Close()
 11887 ms  0x163e fd:0x7fa2eee595b0
 11889 ms  0x163e PR_Close()
 11889 ms  0x163e fd:0x7fa2eee595e0
           /* TID 0x1670 */
 11895 ms  0x1670 PR_Close()
 11895 ms  0x1670 fd:0x7fa2edd9a940
 11898 ms  0x1670 PR_Close()
 11898 ms  0x1670 fd:0x7fa2edd9a940
           /* TID 0x163e */
 11899 ms  0x163e PR_Close()
 11899 ms  0x163e fd:0x7fa2edfdf220
 11899 ms  0x163e PR_Close()
 11899 ms  0x163e fd:0x7fa2edd9aa90
           /* TID 0x1670 */
 11905 ms  0x1670 PR_Close()
 11905 ms  0x1670 fd:0x7fa2edd9ab50
 11927 ms  0x1670 PR_Close()
 11927 ms  0x1670 fd:0x7fa2dcf16e80
           /* TID 0x1649 */
 11927 ms  0x1649 PR_Connect()
 11927 ms  0x1649 fd:0x7fa2edfa6a60
 11932 ms  0x1649 SSL_ImportFD()
 11932 ms  0x1649 ret:0x7fa2eed8af10
 11932 ms  0x1649 SSL_AuthCertificateHook()
 11932 ms  0x1649 fd:0x7fa2eed8af10
 11932 ms  0x1649 ret:0x0
 11932 ms  0x1649 PR_Connect()
 11932 ms  0x1649 fd:0x7fa2eed8af10
 11933 ms  0x1649 PR_Close()
 11933 ms  0x1649 fd:0x7fa2eeef26a0
 11933 ms     | 0x1649 PK11_Encrypt()
 11933 ms     | 0x1649 symkey:0x7fa2eeed8380
 11934 ms  0x1649 PR_Close()
 11934 ms  0x1649 fd:0x7fa2edfdfdf0
 11934 ms     | 0x1649 SECKEY_DestroyPrivateKey()
 11934 ms     | 0x1649 privk:0x7fa2dcd1a820::7fa2dcd1a820  80 3d d1 ee                                      .=..
 11934 ms     | 0x1649 privk:0x7fa2dcd1a820::7fa2dcd1a820  e5 e5 e5 e5                                      ....
 11934 ms     | 0x1649 SECKEY_DestroyPrivateKey()
 11934 ms     | 0x1649 privk:0x7fa2dcd18820::7fa2dcd18820  80 38 d1 ee                                      .8..
 11934 ms     | 0x1649 privk:0x7fa2dcd18820::7fa2dcd18820  e5 e5 e5 e5                                      ....
 11936 ms  0x1649 PR_Close()
 11936 ms  0x1649 fd:0x7fa2eed8af10
 11936 ms  0x1649 SSL_ImportFD()
 11936 ms  0x1649 ret:0x7fa2dcf16f70
 11936 ms  0x1649 SSL_AuthCertificateHook()
 11936 ms  0x1649 fd:0x7fa2dcf16f70
 11936 ms  0x1649 ret:0x0
 11936 ms  0x1649 PR_Connect()
 11936 ms  0x1649 fd:0x7fa2dcf16f70
 11939 ms  0x1649 PR_Close()
 11939 ms  0x1649 fd:0x7fa2dcf16f70
 11939 ms  0x1649 SSL_ImportFD()
 11939 ms  0x1649 ret:0x7fa2edd8c700
 11939 ms  0x1649 SSL_AuthCertificateHook()
 11939 ms  0x1649 fd:0x7fa2edd8c700
 11939 ms  0x1649 ret:0x0
 11939 ms  0x1649 PR_Connect()
 11939 ms  0x1649 fd:0x7fa2edd8c700
 11939 ms  0x1649 PR_Close()
 11939 ms  0x1649 fd:0x7fa2edd8c700
           /* TID 0x1643 */
 11943 ms  0x1643 PR_Close()
 11943 ms  0x1643 fd:0x7fa2fd0a1c70
           /* TID 0x1649 */
 11946 ms  0x1649 PR_Close()
 11946 ms  0x1649 fd:0x7fa2edfa6a60
           /* TID 0x1670 */
 11959 ms  0x1670 PR_Close()
 11959 ms  0x1670 fd:0x7fa2dcf16eb0
           /* TID 0x1643 */
 11968 ms  0x1643 PR_Close()
 11968 ms  0x1643 fd:0x7fa2f3f4b8b0
           /* TID 0x1649 */
 11969 ms  0x1649 PR_Close()
 11969 ms  0x1649 fd:0x7fa2f41785e0
           /* TID 0x163e */
 11969 ms  0x163e PR_Close()
 11969 ms  0x163e fd:0x7fa2edd9ad30
 11969 ms  0x163e PR_Close()
 11969 ms  0x163e fd:0x7fa2edd830d0
           /* TID 0x16a3 */
 11970 ms  0x16a3 PR_Close()
 11970 ms  0x16a3 fd:0x7fa2edd9aca0
 11970 ms  0x16a3 PR_Close()
 11970 ms  0x16a3 fd:0x7fa2dcf16ac0
 11970 ms  0x16a3 PR_Close()
 11970 ms  0x16a3 fd:0x7fa2dcf16ac0
 11970 ms  0x16a3 PR_Close()
 11970 ms  0x16a3 fd:0x7fa2dcf16ac0
           /* TID 0x1670 */
 11971 ms  0x1670 PR_Close()
 11971 ms  0x1670 fd:0x7fa2edd83dc0
           /* TID 0x1651 */
 11974 ms  0x1651 PR_Close()
 11974 ms  0x1651 fd:0x7fa2ee217bb0
 11974 ms  0x1651 PR_Close()
 11974 ms  0x1651 fd:0x7fa2ee217c10
           /* TID 0x1643 */
 11981 ms  0x1643 PR_Close()
 11981 ms  0x1643 fd:0x7fa2ee217e20
           /* TID 0x163e */
 11983 ms  0x163e PR_Close()
 11983 ms  0x163e fd:0x7fa2edd8c700
 11983 ms  0x163e PR_Close()
 11983 ms  0x163e fd:0x7fa2ee217dc0
           /* TID 0x1670 */
 11985 ms  0x1670 PR_Close()
 11985 ms  0x1670 fd:0x7fa2edd9a580
 11987 ms  0x1670 PR_Close()
 11987 ms  0x1670 fd:0x7fa2edd9a580
 12025 ms  0x1670 PR_Close()
 12025 ms  0x1670 fd:0x7fa2edd83d30
 12026 ms  0x1670 PR_Close()
 12026 ms  0x1670 fd:0x7fa2edd83d30
 12029 ms  0x1670 PR_Close()
 12029 ms  0x1670 fd:0x7fa2edd83f40
 12030 ms  0x1670 PR_Close()
 12030 ms  0x1670 fd:0x7fa2edd83f70
 12039 ms  0x1670 PR_Close()
 12039 ms  0x1670 fd:0x7fa2edd8cc40
 12044 ms  0x1670 PR_Close()
 12044 ms  0x1670 fd:0x7fa2edd9adf0
 12050 ms  0x1670 PR_Close()
 12050 ms  0x1670 fd:0x7fa2edfa6970
 12059 ms  0x1670 PR_Close()
 12059 ms  0x1670 fd:0x7fa2edfdf310
 12060 ms  0x1670 PR_Close()
 12060 ms  0x1670 fd:0x7fa2edfdf310
           /* TID 0x163e */
 12217 ms  0x163e PR_Close()
 12217 ms  0x163e fd:0x7fa2dcf165e0
 12218 ms  0x163e PR_Close()
 12218 ms  0x163e fd:0x7fa2dcf165e0
 12223 ms  0x163e PR_Close()
 12223 ms  0x163e fd:0x7fa3161da130
 12223 ms  0x163e PR_Close()
 12223 ms  0x163e fd:0x7fa3161da190
Process terminated
