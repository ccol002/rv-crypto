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
           /* TID 0x2e11 */
    10 ms  0x2e11 PR_Close()
    10 ms  0x2e11 fd:0x7f861c1ed910
           /* TID 0x2e09 */
   259 ms  0x2e09 SSL_ImportFD()
   259 ms  0x2e09 ret:0x7f861c1f54f0
   259 ms  0x2e09 SSL_AuthCertificateHook()
   259 ms  0x2e09 fd:0x7f861c1f54f0
   259 ms  0x2e09 ret:0x0
   259 ms  0x2e09 PR_Connect()
   259 ms  0x2e09 fd:0x7f861c1f54f0
   468 ms  0x2e09 SECKEY_CreateECPrivateKey()
   468 ms  0x2e09 cx:0x7f861c1f0fc8
   470 ms     | 0x2e09 EC_ValidatePublicKey()
   470 ms     | 0x2e09 ret:0x0
   470 ms  0x2e09 ret:0x7f861c367820::7f861c367820  40 1c 3d 1c                                      @.=.
   470 ms  0x2e09 SECKEY_CreateECPrivateKey()
   470 ms  0x2e09 cx:0x7f861c1f0fc8
   471 ms     | 0x2e09 EC_ValidatePublicKey()
   475 ms     | 0x2e09 ret:0x0
   475 ms  0x2e09 ret:0x7f861c369820::7f861c369820  00 1b 3d 1c                                      ..=.
           /* TID 0x2e25 */
   521 ms  0x2e25 PR_Close()
   521 ms  0x2e25 fd:0x7f861c1f5400
   524 ms  0x2e25 PR_Close()
   524 ms  0x2e25 fd:0x7f861c1f5400
           /* TID 0x2e09 */
   692 ms  SECKEY_ECParamsToKeySize()
   692 ms  0x2e09 ret:0x100
   692 ms  0x2e09 SECKEY_CreateECPrivateKey()
   692 ms  0x2e09 cx:0x7f861c1f0fc8
   693 ms     | 0x2e09 EC_ValidatePublicKey()
   694 ms     | 0x2e09 ret:0x0
   694 ms  0x2e09 ret:0x7f861c372820::7f861c372820  80 58 21 0b                                      .X!.
   694 ms  0x2e09 PK11_PubDeriveWithKDF()
   694 ms  0x2e09 seckey:0x7f861c372820
   694 ms     | 0x2e09 EC_ValidatePublicKey()
   696 ms     | 0x2e09 ret:0x0
   697 ms  0x2e09 ret:0x7f861e0c0780
   697 ms  0x2e09 PK11_DeriveWithFlags()
   697 ms  0x2e09 basekey:0x7f861e0c0780
   697 ms     | 0x2e09 PK11_DeriveWithTemplate()
   697 ms  0x2e09 ret:0x7f860b204c80
   697 ms  0x2e09 PK11_Derive()
   697 ms  0x2e09 basekey:0x7f860b204c80
   697 ms     | 0x2e09 PK11_DeriveWithTemplate()
   697 ms  0x2e09 ret:0x7f860b204d80
   697 ms  0x2e09 SECKEY_DestroyPrivateKey()
   697 ms  0x2e09 privk:0x7f861c372820::7f861c372820  80 58 21 0b                                      .X!.
   697 ms  0x2e09 privk:0x7f861c372820::7f861c372820  e5 e5 e5 e5                                      ....
   697 ms  0x2e09 PK11_Encrypt()
   697 ms  0x2e09 symkey:0x7f860b204f00
   698 ms  0x2e09 PR_Connect()
   698 ms  0x2e09 fd:0x7f860b22f070
           /* TID 0x2e25 */
   733 ms  0x2e25 PR_Close()
   733 ms  0x2e25 fd:0x7f860b22f100
           /* TID 0x2e11 */
   752 ms  0x2e11 PR_Close()
   752 ms  0x2e11 fd:0x7f860b22f100
           /* TID 0x2e65 */
   752 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   752 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
   753 ms  0x2e09 SSL_AuthCertificateComplete()
   753 ms  0x2e09 fd:0x7f861c1f54f0
   753 ms  0x2e09 err:0x0
   753 ms  0x2e09 PK11_Encrypt()
   753 ms  0x2e09 symkey:0x7f860b204f00
   907 ms  0x2e09 SECKEY_DestroyPrivateKey()
   907 ms  0x2e09 privk:0x7f861c369820::7f861c369820  00 1b 3d 1c                                      ..=.
   907 ms  0x2e09 privk:0x7f861c369820::7f861c369820  e5 e5 e5 e5                                      ....
   908 ms  0x2e09 SECKEY_DestroyPrivateKey()
   908 ms  0x2e09 privk:0x7f861c367820::7f861c367820  40 1c 3d 1c                                      @.=.
   908 ms  0x2e09 privk:0x7f861c367820::7f861c367820  e5 e5 e5 e5                                      ....
  1125 ms  0x2e09 SSL_ImportFD()
  1125 ms  0x2e09 ret:0x7f860b22f2e0
  1125 ms  0x2e09 SSL_AuthCertificateHook()
  1125 ms  0x2e09 fd:0x7f860b22f2e0
  1125 ms  0x2e09 ret:0x0
  1126 ms  0x2e09 PR_Connect()
  1126 ms  0x2e09 fd:0x7f860b22f2e0
  1152 ms  0x2e09 SECKEY_CreateECPrivateKey()
  1152 ms  0x2e09 cx:0x7f860b207c08
  1154 ms     | 0x2e09 EC_ValidatePublicKey()
  1154 ms     | 0x2e09 ret:0x0
  1154 ms  0x2e09 ret:0x7f861c368820::7f861c368820  80 58 21 0b                                      .X!.
  1154 ms  0x2e09 SECKEY_CreateECPrivateKey()
  1154 ms  0x2e09 cx:0x7f860b207c08
  1156 ms     | 0x2e09 EC_ValidatePublicKey()
  1161 ms     | 0x2e09 ret:0x0
  1161 ms  0x2e09 ret:0x7f861c36e820::7f861c36e820  60 5a 21 0b                                      `Z!.
           /* TID 0x2e65 */
  1213 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1213 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
  1214 ms  SECKEY_ECParamsToKeySize()
  1214 ms  0x2e09 ret:0x100
  1214 ms  0x2e09 SECKEY_CreateECPrivateKey()
  1214 ms  0x2e09 cx:0x7f860b207c08
  1216 ms     | 0x2e09 EC_ValidatePublicKey()
  1220 ms     | 0x2e09 ret:0x0
  1220 ms  0x2e09 ret:0x7f861c372020::7f861c372020  e0 5c 21 0b                                      .\!.
  1220 ms  0x2e09 PK11_PubDeriveWithKDF()
  1220 ms  0x2e09 seckey:0x7f861c372020
  1220 ms     | 0x2e09 EC_ValidatePublicKey()
  1224 ms     | 0x2e09 ret:0x0
  1228 ms  0x2e09 ret:0x7f861e0c0780
  1228 ms  0x2e09 PK11_DeriveWithFlags()
  1228 ms  0x2e09 basekey:0x7f861e0c0780
  1228 ms     | 0x2e09 PK11_DeriveWithTemplate()
  1228 ms  0x2e09 ret:0x7f860b205680
  1228 ms  0x2e09 PK11_Derive()
  1228 ms  0x2e09 basekey:0x7f860b205680
  1228 ms     | 0x2e09 PK11_DeriveWithTemplate()
  1228 ms  0x2e09 ret:0x7f860b205880
  1228 ms  0x2e09 SECKEY_DestroyPrivateKey()
  1228 ms  0x2e09 privk:0x7f861c372020::7f861c372020  e0 5c 21 0b                                      .\!.
  1228 ms  0x2e09 privk:0x7f861c372020::7f861c372020  e5 e5 e5 e5                                      ....
  1229 ms  0x2e09 PK11_Encrypt()
  1229 ms  0x2e09 symkey:0x7f860b205d80
  1229 ms  0x2e09 SSL_AuthCertificateComplete()
  1229 ms  0x2e09 fd:0x7f860b22f2e0
  1229 ms  0x2e09 err:0x0
  1229 ms  0x2e09 PK11_Encrypt()
  1229 ms  0x2e09 symkey:0x7f860b205d80
  1280 ms  0x2e09 SECKEY_DestroyPrivateKey()
  1280 ms  0x2e09 privk:0x7f861c36e820::7f861c36e820  60 5a 21 0b                                      `Z!.
  1280 ms  0x2e09 privk:0x7f861c36e820::7f861c36e820  e5 e5 e5 e5                                      ....
  1281 ms  0x2e09 SECKEY_DestroyPrivateKey()
  1281 ms  0x2e09 privk:0x7f861c368820::7f861c368820  80 58 21 0b                                      .X!.
  1281 ms  0x2e09 privk:0x7f861c368820::7f861c368820  e5 e5 e5 e5                                      ....
  1284 ms  0x2e09 PK11_Encrypt()
  1284 ms  0x2e09 symkey:0x7f860b205d80
  1313 ms  0x2e09 PK11_Encrypt()
  1313 ms  0x2e09 symkey:0x7f860b205d80
  1343 ms  0x2e09 PK11_Encrypt()
  1343 ms  0x2e09 symkey:0x7f860b205d80
  1375 ms  0x2e09 PK11_Encrypt()
  1375 ms  0x2e09 symkey:0x7f860b205d80
  1492 ms  0x2e09 PK11_Encrypt()
  1492 ms  0x2e09 symkey:0x7f860b205d80
  1525 ms  0x2e09 PK11_Encrypt()
  1525 ms  0x2e09 symkey:0x7f860b205d80
  1557 ms  0x2e09 PK11_Encrypt()
  1557 ms  0x2e09 symkey:0x7f860b205d80
           /* TID 0x2e5d */
  1586 ms  0x2e5d PR_Close()
  1586 ms  0x2e5d fd:0x7f860b22f3a0
  1586 ms  0x2e5d PR_Close()
  1586 ms  0x2e5d fd:0x7f860b22f460
  1589 ms  0x2e5d PR_Close()
  1589 ms  0x2e5d fd:0x7f860b22f3a0
  1589 ms  0x2e5d PR_Close()
  1589 ms  0x2e5d fd:0x7f860b22f460
  1589 ms  0x2e5d PR_Close()
  1589 ms  0x2e5d fd:0x7f860b22f3a0
  1589 ms  0x2e5d PR_Close()
  1589 ms  0x2e5d fd:0x7f860b22f460
  1589 ms  0x2e5d PR_Close()
  1589 ms  0x2e5d fd:0x7f860b22f3a0
  1589 ms  0x2e5d PR_Close()
  1589 ms  0x2e5d fd:0x7f860b22f460
  1589 ms  0x2e5d PR_Close()
  1589 ms  0x2e5d fd:0x7f860b22f3a0
  1589 ms  0x2e5d PR_Close()
  1589 ms  0x2e5d fd:0x7f860b22f460
  1589 ms  0x2e5d PR_Close()
  1589 ms  0x2e5d fd:0x7f860b22f3a0
  1589 ms  0x2e5d PR_Close()
  1589 ms  0x2e5d fd:0x7f860b22f460
  1590 ms  0x2e5d PR_Close()
  1590 ms  0x2e5d fd:0x7f860b22f3a0
  1590 ms  0x2e5d PR_Close()
  1590 ms  0x2e5d fd:0x7f860b22f460
  1590 ms  0x2e5d PR_Close()
  1590 ms  0x2e5d fd:0x7f860b22f3a0
  1590 ms  0x2e5d PR_Close()
  1590 ms  0x2e5d fd:0x7f860b22f460
  1590 ms  0x2e5d PR_Close()
  1590 ms  0x2e5d fd:0x7f860b22f3a0
  1590 ms  0x2e5d PR_Close()
  1590 ms  0x2e5d fd:0x7f860b22f460
  1590 ms  0x2e5d PR_Close()
  1590 ms  0x2e5d fd:0x7f860b22f3a0
  1590 ms  0x2e5d PR_Close()
  1590 ms  0x2e5d fd:0x7f860b22f460
  1590 ms  0x2e5d PR_Close()
  1590 ms  0x2e5d fd:0x7f860b22f160
  1590 ms  0x2e5d PR_Close()
  1590 ms  0x2e5d fd:0x7f860b22f3d0
  1591 ms  0x2e5d PR_Close()
  1591 ms  0x2e5d fd:0x7f860b22f160
  1591 ms  0x2e5d PR_Close()
  1591 ms  0x2e5d fd:0x7f860b22f3d0
  1591 ms  0x2e5d PR_Close()
  1591 ms  0x2e5d fd:0x7f860b22f160
  1591 ms  0x2e5d PR_Close()
  1591 ms  0x2e5d fd:0x7f860b22f3d0
  1591 ms  0x2e5d PR_Close()
  1591 ms  0x2e5d fd:0x7f860b22f160
  1591 ms  0x2e5d PR_Close()
  1591 ms  0x2e5d fd:0x7f860b22f3d0
  1594 ms  0x2e5d PR_Close()
  1594 ms  0x2e5d fd:0x7f860b22f160
  1594 ms  0x2e5d PR_Close()
  1594 ms  0x2e5d fd:0x7f860b22f3a0
  1598 ms  0x2e5d PR_Close()
  1598 ms  0x2e5d fd:0x7f860b22f3a0
  1599 ms  0x2e5d PR_Close()
  1599 ms  0x2e5d fd:0x7f860b22f3d0
  1601 ms  0x2e5d PR_Close()
  1601 ms  0x2e5d fd:0x7f860b22f3d0
  1602 ms  0x2e5d PR_Close()
  1602 ms  0x2e5d fd:0x7f860b22f3d0
  1606 ms  0x2e5d PR_Close()
  1606 ms  0x2e5d fd:0x7f860b22f3d0
  1606 ms  0x2e5d PR_Close()
  1606 ms  0x2e5d fd:0x7f860b22f3d0
  1649 ms  0x2e5d PR_Close()
  1649 ms  0x2e5d fd:0x7f860b22f3d0
  1650 ms  0x2e5d PR_Close()
  1650 ms  0x2e5d fd:0x7f860b22f3d0
  1657 ms  0x2e5d PR_Close()
  1657 ms  0x2e5d fd:0x7f860b22f3d0
  1657 ms  0x2e5d PR_Close()
  1657 ms  0x2e5d fd:0x7f860b22f3d0
  1663 ms  0x2e5d PR_Close()
  1663 ms  0x2e5d fd:0x7f860b22f3d0
  1664 ms  0x2e5d PR_Close()
  1664 ms  0x2e5d fd:0x7f860b22f3d0
  1665 ms  0x2e5d PR_Close()
  1665 ms  0x2e5d fd:0x7f860b22f3d0
  1665 ms  0x2e5d PR_Close()
  1665 ms  0x2e5d fd:0x7f860b22f3d0
           /* TID 0x2e5a */
  1666 ms  0x2e5a PR_Close()
  1666 ms  0x2e5a fd:0x7f860b22f3d0
  1666 ms  0x2e5a PR_Close()
  1666 ms  0x2e5a fd:0x7f860b22f3d0
  1666 ms  0x2e5a PR_Close()
  1666 ms  0x2e5a fd:0x7f860b22f3d0
  1666 ms  0x2e5a PR_Close()
  1666 ms  0x2e5a fd:0x7f860b22f3d0
  1666 ms  0x2e5a PR_Close()
  1666 ms  0x2e5a fd:0x7f860b22f3d0
  1666 ms  0x2e5a PR_Close()
  1666 ms  0x2e5a fd:0x7f860b22f3d0
  1666 ms  0x2e5a PR_Close()
  1666 ms  0x2e5a fd:0x7f860b22f3d0
  1666 ms  0x2e5a PR_Close()
  1666 ms  0x2e5a fd:0x7f860b22f3d0
  1666 ms  0x2e5a PR_Close()
  1666 ms  0x2e5a fd:0x7f860b22f3d0
  1666 ms  0x2e5a PR_Close()
  1666 ms  0x2e5a fd:0x7f860b22f3d0
  1666 ms  0x2e5a PR_Close()
  1666 ms  0x2e5a fd:0x7f860b22f3d0
  1666 ms  0x2e5a PR_Close()
  1666 ms  0x2e5a fd:0x7f860b22f3d0
  1666 ms  0x2e5a PR_Close()
  1666 ms  0x2e5a fd:0x7f860b22f3d0
  1666 ms  0x2e5a PR_Close()
  1666 ms  0x2e5a fd:0x7f860b22f3d0
  1666 ms  0x2e5a PR_Close()
  1666 ms  0x2e5a fd:0x7f860b22f3d0
           /* TID 0x2e25 */
  2169 ms  0x2e25 PR_Close()
  2169 ms  0x2e25 fd:0x7f860b22f790
  2171 ms  0x2e25 PR_Close()
  2171 ms  0x2e25 fd:0x7f860b22f790
  2823 ms  0x2e25 PR_Close()
  2823 ms  0x2e25 fd:0x7f860b22f790
           /* TID 0x2e11 */
  4136 ms  0x2e11 PR_Close()
  4136 ms  0x2e11 fd:0x7f860b22f790
  4136 ms  0x2e11 PR_Close()
  4136 ms  0x2e11 fd:0x7f860b22f8e0
           /* TID 0x2e09 */
  4525 ms  0x2e09 SSL_ImportFD()
  4525 ms  0x2e09 ret:0x7f860b198a30
  4525 ms  0x2e09 SSL_AuthCertificateHook()
  4525 ms  0x2e09 fd:0x7f860b198a30
  4525 ms  0x2e09 ret:0x0
  4525 ms  0x2e09 PR_Connect()
  4525 ms  0x2e09 fd:0x7f860b198a30
  4574 ms  0x2e09 SECKEY_CreateECPrivateKey()
  4574 ms  0x2e09 cx:0x7f860b207f48
  4576 ms     | 0x2e09 EC_ValidatePublicKey()
  4576 ms     | 0x2e09 ret:0x0
  4576 ms  0x2e09 ret:0x7f8622810820::7f8622810820  f0 66 4c 1d                                      .fL.
  4576 ms  0x2e09 SECKEY_CreateECPrivateKey()
  4576 ms  0x2e09 cx:0x7f860b207f48
  4578 ms     | 0x2e09 EC_ValidatePublicKey()
  4583 ms     | 0x2e09 ret:0x0
  4583 ms  0x2e09 ret:0x7f860b003020::7f860b003020  70 69 4c 1d                                      piL.
           /* TID 0x2e65 */
  4636 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4636 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
  4637 ms  SECKEY_ECParamsToKeySize()
  4637 ms  0x2e09 ret:0x100
  4637 ms  0x2e09 SECKEY_CreateECPrivateKey()
  4637 ms  0x2e09 cx:0x7f860b207f48
  4639 ms     | 0x2e09 EC_ValidatePublicKey()
  4643 ms     | 0x2e09 ret:0x0
  4643 ms  0x2e09 ret:0x7f860b008820::7f860b008820  e0 6c 4c 1d                                      .lL.
  4643 ms  0x2e09 PK11_PubDeriveWithKDF()
  4643 ms  0x2e09 seckey:0x7f860b008820
  4645 ms     | 0x2e09 EC_ValidatePublicKey()
  4649 ms     | 0x2e09 ret:0x0
  4656 ms  0x2e09 ret:0x7f861e0c0780
  4656 ms  0x2e09 PK11_DeriveWithFlags()
  4656 ms  0x2e09 basekey:0x7f861e0c0780
  4656 ms     | 0x2e09 PK11_DeriveWithTemplate()
  4656 ms  0x2e09 ret:0x7f860b199980
  4656 ms  0x2e09 PK11_Derive()
  4656 ms  0x2e09 basekey:0x7f860b199980
  4656 ms     | 0x2e09 PK11_DeriveWithTemplate()
  4656 ms  0x2e09 ret:0x7f860b199a00
  4657 ms  0x2e09 SECKEY_DestroyPrivateKey()
  4657 ms  0x2e09 privk:0x7f860b008820::7f860b008820  e0 6c 4c 1d                                      .lL.
  4657 ms  0x2e09 privk:0x7f860b008820::7f860b008820  e5 e5 e5 e5                                      ....
  4657 ms  0x2e09 PK11_Encrypt()
  4657 ms  0x2e09 symkey:0x7f860b199e80
  4657 ms  0x2e09 SSL_AuthCertificateComplete()
  4657 ms  0x2e09 fd:0x7f860b198a30
  4657 ms  0x2e09 err:0x0
  4658 ms  0x2e09 PK11_Encrypt()
  4658 ms  0x2e09 symkey:0x7f860b199e80
  4706 ms  0x2e09 SECKEY_DestroyPrivateKey()
  4706 ms  0x2e09 privk:0x7f860b003020::7f860b003020  70 69 4c 1d                                      piL.
  4706 ms  0x2e09 privk:0x7f860b003020::7f860b003020  e5 e5 e5 e5                                      ....
  4707 ms  0x2e09 SECKEY_DestroyPrivateKey()
  4707 ms  0x2e09 privk:0x7f8622810820::7f8622810820  f0 66 4c 1d                                      .fL.
  4707 ms  0x2e09 privk:0x7f8622810820::7f8622810820  e5 e5 e5 e5                                      ....
           /* TID 0x2e20 */
  4770 ms  0x2e20 PR_Close()
  4770 ms  0x2e20 fd:0x7f860b198c40
           /* TID 0x2e09 */
  4784 ms  0x2e09 PK11_Encrypt()
  4784 ms  0x2e09 symkey:0x7f860b199e80
           /* TID 0x2e11 */
  4930 ms  0x2e11 PR_Close()
  4930 ms  0x2e11 fd:0x7f860b0fd700
           /* TID 0x2e20 */
  4941 ms  0x2e20 PR_Close()
  4941 ms  0x2e20 fd:0x7f860b0fd520
           /* TID 0x2e09 */
  5031 ms  0x2e09 SSL_ImportFD()
  5031 ms  0x2e09 ret:0x7f860af28e20
  5031 ms  0x2e09 SSL_AuthCertificateHook()
  5031 ms  0x2e09 fd:0x7f860af28e20
  5031 ms  0x2e09 ret:0x0
  5031 ms  0x2e09 PR_Connect()
  5031 ms  0x2e09 fd:0x7f860af28e20
  5056 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5056 ms  0x2e09 cx:0x7f860b208288
  5057 ms     | 0x2e09 EC_ValidatePublicKey()
  5057 ms     | 0x2e09 ret:0x0
  5057 ms  0x2e09 ret:0x7f860b25c020::7f860b25c020  00 76 f2 0a                                      .v..
  5057 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5057 ms  0x2e09 cx:0x7f860b208288
  5058 ms     | 0x2e09 EC_ValidatePublicKey()
  5059 ms     | 0x2e09 ret:0x0
  5059 ms  0x2e09 ret:0x7f860b25e020::7f860b25e020  30 78 f2 0a                                      0x..
           /* TID 0x2e65 */
  5088 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5088 ms  0x2e65 ret:0x0
  5088 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5088 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
  5090 ms  SECKEY_ECParamsToKeySize()
  5090 ms  0x2e09 ret:0xff
  5090 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5090 ms  0x2e09 cx:0x7f860b208288
  5091 ms     | 0x2e09 EC_ValidatePublicKey()
  5091 ms     | 0x2e09 ret:0x0
  5091 ms  0x2e09 ret:0x7f860b26a820::7f860b26a820  c0 7e f2 0a                                      .~..
  5091 ms  0x2e09 PK11_PubDeriveWithKDF()
  5091 ms  0x2e09 seckey:0x7f860b26a820
  5091 ms     | 0x2e09 EC_ValidatePublicKey()
  5091 ms     | 0x2e09 ret:0x0
  5092 ms  0x2e09 ret:0x7f861e0c0780
  5092 ms  0x2e09 PK11_DeriveWithFlags()
  5092 ms  0x2e09 basekey:0x7f861e0c0780
  5092 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5092 ms  0x2e09 ret:0x7f860af23400
  5092 ms  0x2e09 PK11_Derive()
  5092 ms  0x2e09 basekey:0x7f860af23400
  5092 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5092 ms  0x2e09 ret:0x7f860af23480
  5092 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5092 ms  0x2e09 privk:0x7f860b26a820::7f860b26a820  c0 7e f2 0a                                      .~..
  5092 ms  0x2e09 privk:0x7f860b26a820::7f860b26a820  e5 e5 e5 e5                                      ....
  5092 ms  0x2e09 PK11_Encrypt()
  5092 ms  0x2e09 symkey:0x7f860af23600
  5109 ms  0x2e09 SSL_AuthCertificateComplete()
  5109 ms  0x2e09 fd:0x7f860af28e20
  5109 ms  0x2e09 err:0x0
  5110 ms  0x2e09 PK11_Encrypt()
  5110 ms  0x2e09 symkey:0x7f860af23600
  5119 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5119 ms  0x2e09 privk:0x7f860b25e020::7f860b25e020  30 78 f2 0a                                      0x..
  5119 ms  0x2e09 privk:0x7f860b25e020::7f860b25e020  e5 e5 e5 e5                                      ....
  5119 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5119 ms  0x2e09 privk:0x7f860b25c020::7f860b25c020  00 76 f2 0a                                      .v..
  5119 ms  0x2e09 privk:0x7f860b25c020::7f860b25c020  e5 e5 e5 e5                                      ....
  5137 ms  0x2e09 SSL_ImportFD()
  5137 ms  0x2e09 ret:0x7f860af28f40
  5137 ms  0x2e09 SSL_AuthCertificateHook()
  5137 ms  0x2e09 fd:0x7f860af28f40
  5137 ms  0x2e09 ret:0x0
  5138 ms  0x2e09 PR_Connect()
  5138 ms  0x2e09 fd:0x7f860af28f40
  5154 ms  0x2e09 SSL_ImportFD()
  5154 ms  0x2e09 ret:0x7f861c3e1d00
  5154 ms  0x2e09 SSL_AuthCertificateHook()
  5154 ms  0x2e09 fd:0x7f861c3e1d00
  5154 ms  0x2e09 ret:0x0
  5154 ms  0x2e09 PR_Connect()
  5154 ms  0x2e09 fd:0x7f861c3e1d00
  5155 ms  0x2e09 SSL_ImportFD()
  5155 ms  0x2e09 ret:0x7f860af28ac0
  5155 ms  0x2e09 SSL_AuthCertificateHook()
  5155 ms  0x2e09 fd:0x7f860af28ac0
  5155 ms  0x2e09 ret:0x0
  5155 ms  0x2e09 PR_Connect()
  5155 ms  0x2e09 fd:0x7f860af28ac0
  5156 ms  0x2e09 SSL_ImportFD()
  5158 ms  0x2e09 ret:0x7f860af32fd0
  5158 ms  0x2e09 SSL_AuthCertificateHook()
  5158 ms  0x2e09 fd:0x7f860af32fd0
  5158 ms  0x2e09 ret:0x0
  5159 ms  0x2e09 PR_Connect()
  5159 ms  0x2e09 fd:0x7f860af32fd0
  5160 ms  0x2e09 SSL_ImportFD()
  5160 ms  0x2e09 ret:0x7f860b198eb0
  5160 ms  0x2e09 SSL_AuthCertificateHook()
  5160 ms  0x2e09 fd:0x7f860b198eb0
  5160 ms  0x2e09 ret:0x0
  5161 ms  0x2e09 PR_Connect()
  5161 ms  0x2e09 fd:0x7f860b198eb0
  5164 ms  0x2e09 SSL_ImportFD()
  5164 ms  0x2e09 ret:0x7f860af28b80
  5164 ms  0x2e09 SSL_AuthCertificateHook()
  5164 ms  0x2e09 fd:0x7f860af28b80
  5164 ms  0x2e09 ret:0x0
  5164 ms  0x2e09 PR_Connect()
  5164 ms  0x2e09 fd:0x7f860af28b80
  5166 ms  0x2e09 SSL_ImportFD()
  5166 ms  0x2e09 ret:0x7f860b0fd460
  5166 ms  0x2e09 SSL_AuthCertificateHook()
  5166 ms  0x2e09 fd:0x7f860b0fd460
  5166 ms  0x2e09 ret:0x0
  5166 ms  0x2e09 PR_Connect()
  5166 ms  0x2e09 fd:0x7f860b0fd460
  5167 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5167 ms  0x2e09 cx:0x7f860b208768
  5168 ms     | 0x2e09 EC_ValidatePublicKey()
  5168 ms     | 0x2e09 ret:0x0
  5168 ms  0x2e09 ret:0x7f860b25b820::7f860b25b820  e0 7c f2 0a                                      .|..
  5168 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5168 ms  0x2e09 cx:0x7f860b208768
  5170 ms     | 0x2e09 EC_ValidatePublicKey()
  5173 ms     | 0x2e09 ret:0x0
  5173 ms  0x2e09 ret:0x7f860b25d820::7f860b25d820  c0 7e f2 0a                                      .~..
  5180 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5180 ms  0x2e09 cx:0x7f860b208908
  5181 ms     | 0x2e09 EC_ValidatePublicKey()
  5181 ms     | 0x2e09 ret:0x0
  5181 ms  0x2e09 ret:0x7f860b265820::7f860b265820  b0 7f f2 0a                                      ....
  5181 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5181 ms  0x2e09 cx:0x7f860b208908
  5182 ms     | 0x2e09 EC_ValidatePublicKey()
  5184 ms     | 0x2e09 ret:0x0
  5184 ms  0x2e09 ret:0x7f860b269820::7f860b269820  d0 98 f2 0a                                      ....
  5185 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5185 ms  0x2e09 cx:0x7f860b208c48
  5186 ms     | 0x2e09 EC_ValidatePublicKey()
  5186 ms     | 0x2e09 ret:0x0
  5186 ms  0x2e09 ret:0x7f860b26c020::7f860b26c020  90 9c f2 0a                                      ....
  5186 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5186 ms  0x2e09 cx:0x7f860b208c48
  5187 ms     | 0x2e09 EC_ValidatePublicKey()
  5189 ms     | 0x2e09 ret:0x0
  5189 ms  0x2e09 ret:0x7f860b26e020::7f860b26e020  00 41 d3 0a                                      .A..
  5189 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5189 ms  0x2e09 cx:0x7f860b208aa8
  5190 ms     | 0x2e09 EC_ValidatePublicKey()
  5190 ms     | 0x2e09 ret:0x0
  5190 ms  0x2e09 ret:0x7f860b270820::7f860b270820  40 42 d3 0a                                      @B..
  5190 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5190 ms  0x2e09 cx:0x7f860b208aa8
  5190 ms     | 0x2e09 EC_ValidatePublicKey()
  5192 ms     | 0x2e09 ret:0x0
  5192 ms  0x2e09 ret:0x7f860ad3f020::7f860ad3f020  20 44 d3 0a                                       D..
  5193 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5193 ms  0x2e09 cx:0x7f860b209128
  5194 ms     | 0x2e09 EC_ValidatePublicKey()
  5194 ms     | 0x2e09 ret:0x0
  5194 ms  0x2e09 ret:0x7f860ad41820::7f860ad41820  60 45 d3 0a                                      `E..
  5194 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5194 ms  0x2e09 cx:0x7f860b209128
  5194 ms     | 0x2e09 EC_ValidatePublicKey()
  5196 ms     | 0x2e09 ret:0x0
  5196 ms  0x2e09 ret:0x7f860ad43820::7f860ad43820  40 47 d3 0a                                      @G..
  5196 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5196 ms  0x2e09 cx:0x7f860b208f88
  5197 ms     | 0x2e09 EC_ValidatePublicKey()
  5197 ms     | 0x2e09 ret:0x0
  5197 ms  0x2e09 ret:0x7f860ad46020::7f860ad46020  80 48 d3 0a                                      .H..
  5197 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5197 ms  0x2e09 cx:0x7f860b208f88
  5197 ms     | 0x2e09 EC_ValidatePublicKey()
  5199 ms     | 0x2e09 ret:0x0
  5199 ms  0x2e09 ret:0x7f860ad48020::7f860ad48020  60 4a d3 0a                                      `J..
  5199 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5199 ms  0x2e09 cx:0x7f860b208de8
  5200 ms     | 0x2e09 EC_ValidatePublicKey()
  5200 ms     | 0x2e09 ret:0x0
  5200 ms  0x2e09 ret:0x7f860ad4a820::7f860ad4a820  a0 4b d3 0a                                      .K..
  5200 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5200 ms  0x2e09 cx:0x7f860b208de8
  5200 ms     | 0x2e09 EC_ValidatePublicKey()
  5202 ms     | 0x2e09 ret:0x0
  5202 ms  0x2e09 ret:0x7f860ad4c820::7f860ad4c820  80 4d d3 0a                                      .M..
           /* TID 0x2e65 */
  5212 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5212 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
  5212 ms  SECKEY_ECParamsToKeySize()
  5212 ms  0x2e09 ret:0xff
  5212 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5212 ms  0x2e09 cx:0x7f860b208908
  5213 ms     | 0x2e09 EC_ValidatePublicKey()
  5213 ms     | 0x2e09 ret:0x0
  5213 ms  0x2e09 ret:0x7f860ad53020::7f860ad53020  50 81 d9 0a                                      P...
  5213 ms  0x2e09 PK11_PubDeriveWithKDF()
  5213 ms  0x2e09 seckey:0x7f860ad53020
  5213 ms     | 0x2e09 EC_ValidatePublicKey()
  5213 ms     | 0x2e09 ret:0x0
  5214 ms  0x2e09 ret:0x7f861e0c0780
  5214 ms  0x2e09 PK11_DeriveWithFlags()
  5214 ms  0x2e09 basekey:0x7f861e0c0780
  5214 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5214 ms  0x2e09 ret:0x7f860af22e80
  5214 ms  0x2e09 PK11_Derive()
  5214 ms  0x2e09 basekey:0x7f860af22e80
  5214 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5214 ms  0x2e09 ret:0x7f860af23e00
  5214 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5214 ms  0x2e09 privk:0x7f860ad53020::7f860ad53020  50 81 d9 0a                                      P...
  5214 ms  0x2e09 privk:0x7f860ad53020::7f860ad53020  e5 e5 e5 e5                                      ....
  5214 ms  0x2e09 PK11_Encrypt()
  5214 ms  0x2e09 symkey:0x7f860af48900
  5214 ms  0x2e09 SSL_AuthCertificateComplete()
  5214 ms  0x2e09 fd:0x7f861c3e1d00
  5214 ms  0x2e09 err:0x0
  5214 ms  0x2e09 PK11_Encrypt()
  5214 ms  0x2e09 symkey:0x7f860af48900
           /* TID 0x2e65 */
  5217 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5217 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
  5217 ms  SECKEY_ECParamsToKeySize()
  5217 ms  0x2e09 ret:0xff
  5217 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5217 ms  0x2e09 cx:0x7f860b208c48
  5217 ms     | 0x2e09 EC_ValidatePublicKey()
  5217 ms     | 0x2e09 ret:0x0
  5217 ms  0x2e09 ret:0x7f860ad54020::7f860ad54020  f0 81 d9 0a                                      ....
  5217 ms  0x2e09 PK11_PubDeriveWithKDF()
  5217 ms  0x2e09 seckey:0x7f860ad54020
  5217 ms     | 0x2e09 EC_ValidatePublicKey()
  5217 ms     | 0x2e09 ret:0x0
  5218 ms  0x2e09 ret:0x7f861e0c0780
  5218 ms  0x2e09 PK11_DeriveWithFlags()
  5218 ms  0x2e09 basekey:0x7f861e0c0780
  5218 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5218 ms  0x2e09 ret:0x7f860adaa100
  5218 ms  0x2e09 PK11_Derive()
  5218 ms  0x2e09 basekey:0x7f860adaa100
  5218 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5218 ms  0x2e09 ret:0x7f860adaa180
  5218 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5218 ms  0x2e09 privk:0x7f860ad54020::7f860ad54020  f0 81 d9 0a                                      ....
  5218 ms  0x2e09 privk:0x7f860ad54020::7f860ad54020  e5 e5 e5 e5                                      ....
  5218 ms  0x2e09 PK11_Encrypt()
  5218 ms  0x2e09 symkey:0x7f860adaa300
  5218 ms  0x2e09 SSL_AuthCertificateComplete()
  5218 ms  0x2e09 fd:0x7f860af32fd0
  5218 ms  0x2e09 err:0x0
  5219 ms  0x2e09 PK11_Encrypt()
  5219 ms  0x2e09 symkey:0x7f860adaa300
           /* TID 0x2e65 */
  5220 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5220 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
  5220 ms  SECKEY_ECParamsToKeySize()
  5220 ms  0x2e09 ret:0xff
  5220 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5220 ms  0x2e09 cx:0x7f860b208aa8
  5221 ms     | 0x2e09 EC_ValidatePublicKey()
  5221 ms     | 0x2e09 ret:0x0
  5221 ms  0x2e09 ret:0x7f860ad55020::7f860ad55020  90 82 d9 0a                                      ....
  5221 ms  0x2e09 PK11_PubDeriveWithKDF()
  5221 ms  0x2e09 seckey:0x7f860ad55020
  5221 ms     | 0x2e09 EC_ValidatePublicKey()
  5221 ms     | 0x2e09 ret:0x0
  5221 ms  0x2e09 ret:0x7f861e0c0780
  5221 ms  0x2e09 PK11_DeriveWithFlags()
  5221 ms  0x2e09 basekey:0x7f861e0c0780
  5221 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5221 ms  0x2e09 ret:0x7f860adaa400
  5221 ms  0x2e09 PK11_Derive()
  5221 ms  0x2e09 basekey:0x7f860adaa400
  5221 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5221 ms  0x2e09 ret:0x7f860adaa480
  5221 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5221 ms  0x2e09 privk:0x7f860ad55020::7f860ad55020  90 82 d9 0a                                      ....
  5221 ms  0x2e09 privk:0x7f860ad55020::7f860ad55020  e5 e5 e5 e5                                      ....
  5222 ms  0x2e09 PK11_Encrypt()
  5222 ms  0x2e09 symkey:0x7f860adaa600
  5222 ms  0x2e09 SSL_AuthCertificateComplete()
  5222 ms  0x2e09 fd:0x7f860af28ac0
  5222 ms  0x2e09 err:0x0
  5222 ms  0x2e09 PK11_Encrypt()
  5222 ms  0x2e09 symkey:0x7f860adaa600
           /* TID 0x2e65 */
  5223 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5223 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
  5223 ms  SECKEY_ECParamsToKeySize()
  5223 ms  0x2e09 ret:0xff
  5223 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5223 ms  0x2e09 cx:0x7f860b209128
  5224 ms     | 0x2e09 EC_ValidatePublicKey()
  5224 ms     | 0x2e09 ret:0x0
  5224 ms  0x2e09 ret:0x7f860ad56020::7f860ad56020  30 83 d9 0a                                      0...
  5224 ms  0x2e09 PK11_PubDeriveWithKDF()
  5224 ms  0x2e09 seckey:0x7f860ad56020
  5224 ms     | 0x2e09 EC_ValidatePublicKey()
  5224 ms     | 0x2e09 ret:0x0
  5224 ms  0x2e09 ret:0x7f861e0c0780
  5224 ms  0x2e09 PK11_DeriveWithFlags()
  5224 ms  0x2e09 basekey:0x7f861e0c0780
  5224 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5224 ms  0x2e09 ret:0x7f860adaa700
  5224 ms  0x2e09 PK11_Derive()
  5224 ms  0x2e09 basekey:0x7f860adaa700
  5224 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5224 ms  0x2e09 ret:0x7f860adaa780
  5224 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5224 ms  0x2e09 privk:0x7f860ad56020::7f860ad56020  30 83 d9 0a                                      0...
  5224 ms  0x2e09 privk:0x7f860ad56020::7f860ad56020  e5 e5 e5 e5                                      ....
  5225 ms  0x2e09 PK11_Encrypt()
  5225 ms  0x2e09 symkey:0x7f860adaa900
  5225 ms  0x2e09 SSL_AuthCertificateComplete()
  5225 ms  0x2e09 fd:0x7f860b0fd460
  5225 ms  0x2e09 err:0x0
           /* TID 0x2e65 */
  5226 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5226 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
  5227 ms  SECKEY_ECParamsToKeySize()
  5227 ms  0x2e09 ret:0x100
  5227 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5227 ms  0x2e09 cx:0x7f860b208768
  5228 ms     | 0x2e09 EC_ValidatePublicKey()
  5230 ms     | 0x2e09 ret:0x0
  5230 ms  0x2e09 ret:0x7f860ac07020::7f860ac07020  a0 8b d9 0a                                      ....
  5230 ms  0x2e09 PK11_PubDeriveWithKDF()
  5230 ms  0x2e09 seckey:0x7f860ac07020
  5230 ms     | 0x2e09 EC_ValidatePublicKey()
  5232 ms     | 0x2e09 ret:0x0
  5233 ms  0x2e09 ret:0x7f861e0c0780
  5233 ms  0x2e09 PK11_DeriveWithFlags()
  5233 ms  0x2e09 basekey:0x7f861e0c0780
  5233 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5234 ms  0x2e09 ret:0x7f860adaac80
  5234 ms  0x2e09 PK11_Derive()
  5234 ms  0x2e09 basekey:0x7f860adaac80
  5234 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5234 ms  0x2e09 ret:0x7f860adaad00
  5234 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5234 ms  0x2e09 privk:0x7f860ac07020::7f860ac07020  a0 8b d9 0a                                      ....
  5234 ms  0x2e09 privk:0x7f860ac07020::7f860ac07020  e5 e5 e5 e5                                      ....
  5234 ms  0x2e09 PK11_Encrypt()
  5234 ms  0x2e09 symkey:0x7f860adaae80
  5234 ms  0x2e09 PK11_Encrypt()
  5234 ms  0x2e09 symkey:0x7f860adaa900
  5234 ms  0x2e09 SSL_AuthCertificateComplete()
  5234 ms  0x2e09 fd:0x7f860af28f40
  5234 ms  0x2e09 err:0x0
  5234 ms  0x2e09 PK11_Encrypt()
  5234 ms  0x2e09 symkey:0x7f860adaae80
           /* TID 0x2e65 */
  5235 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5235 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
  5235 ms  SECKEY_ECParamsToKeySize()
  5235 ms  0x2e09 ret:0xff
  5235 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5235 ms  0x2e09 cx:0x7f860b208f88
  5236 ms     | 0x2e09 EC_ValidatePublicKey()
  5236 ms     | 0x2e09 ret:0x0
  5236 ms  0x2e09 ret:0x7f860ac07020::7f860ac07020  70 89 d9 0a                                      p...
  5236 ms  0x2e09 PK11_PubDeriveWithKDF()
  5236 ms  0x2e09 seckey:0x7f860ac07020
  5236 ms     | 0x2e09 EC_ValidatePublicKey()
  5236 ms     | 0x2e09 ret:0x0
  5236 ms  0x2e09 ret:0x7f861e0c0780
  5236 ms  0x2e09 PK11_DeriveWithFlags()
  5236 ms  0x2e09 basekey:0x7f861e0c0780
  5236 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5237 ms  0x2e09 ret:0x7f860adaaf80
  5237 ms  0x2e09 PK11_Derive()
  5237 ms  0x2e09 basekey:0x7f860adaaf80
  5237 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5237 ms  0x2e09 ret:0x7f860adab000
  5237 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5237 ms  0x2e09 privk:0x7f860ac07020::7f860ac07020  70 89 d9 0a                                      p...
  5237 ms  0x2e09 privk:0x7f860ac07020::7f860ac07020  e5 e5 e5 e5                                      ....
  5237 ms  0x2e09 PK11_Encrypt()
  5237 ms  0x2e09 symkey:0x7f860adab180
           /* TID 0x2e65 */
  5237 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5237 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
  5238 ms  SECKEY_ECParamsToKeySize()
  5238 ms  0x2e09 ret:0xff
  5238 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5238 ms  0x2e09 cx:0x7f860b208de8
  5238 ms     | 0x2e09 EC_ValidatePublicKey()
  5238 ms     | 0x2e09 ret:0x0
  5238 ms  0x2e09 ret:0x7f860ac08020::7f860ac08020  10 8a d9 0a                                      ....
  5238 ms  0x2e09 PK11_PubDeriveWithKDF()
  5238 ms  0x2e09 seckey:0x7f860ac08020
  5238 ms     | 0x2e09 EC_ValidatePublicKey()
  5238 ms     | 0x2e09 ret:0x0
  5239 ms  0x2e09 ret:0x7f861e0c0780
  5239 ms  0x2e09 PK11_DeriveWithFlags()
  5239 ms  0x2e09 basekey:0x7f861e0c0780
  5239 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5239 ms  0x2e09 ret:0x7f860adab280
  5239 ms  0x2e09 PK11_Derive()
  5239 ms  0x2e09 basekey:0x7f860adab280
  5239 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5239 ms  0x2e09 ret:0x7f860adab300
  5239 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5239 ms  0x2e09 privk:0x7f860ac08020::7f860ac08020  10 8a d9 0a                                      ....
  5239 ms  0x2e09 privk:0x7f860ac08020::7f860ac08020  e5 e5 e5 e5                                      ....
  5239 ms  0x2e09 PK11_Encrypt()
  5239 ms  0x2e09 symkey:0x7f860adab480
  5239 ms  0x2e09 SSL_AuthCertificateComplete()
  5239 ms  0x2e09 fd:0x7f860af28b80
  5239 ms  0x2e09 err:0x0
  5239 ms  0x2e09 SSL_AuthCertificateComplete()
  5239 ms  0x2e09 fd:0x7f860b198eb0
  5239 ms  0x2e09 err:0x0
  5239 ms  0x2e09 PK11_Encrypt()
  5239 ms  0x2e09 symkey:0x7f860adab180
  5240 ms  0x2e09 PK11_Encrypt()
  5240 ms  0x2e09 symkey:0x7f860adab480
  5240 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5240 ms  0x2e09 privk:0x7f860b269820::7f860b269820  d0 98 f2 0a                                      ....
  5240 ms  0x2e09 privk:0x7f860b269820::7f860b269820  e5 e5 e5 e5                                      ....
  5240 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5240 ms  0x2e09 privk:0x7f860b265820::7f860b265820  b0 7f f2 0a                                      ....
  5240 ms  0x2e09 privk:0x7f860b265820::7f860b265820  e5 e5 e5 e5                                      ....
  5248 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5248 ms  0x2e09 privk:0x7f860ad3f020::7f860ad3f020  20 44 d3 0a                                       D..
  5248 ms  0x2e09 privk:0x7f860ad3f020::7f860ad3f020  e5 e5 e5 e5                                      ....
  5248 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5248 ms  0x2e09 privk:0x7f860b270820::7f860b270820  40 42 d3 0a                                      @B..
  5248 ms  0x2e09 privk:0x7f860b270820::7f860b270820  e5 e5 e5 e5                                      ....
  5249 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5249 ms  0x2e09 privk:0x7f860b26e020::7f860b26e020  00 41 d3 0a                                      .A..
  5249 ms  0x2e09 privk:0x7f860b26e020::7f860b26e020  e5 e5 e5 e5                                      ....
  5249 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5249 ms  0x2e09 privk:0x7f860b26c020::7f860b26c020  90 9c f2 0a                                      ....
  5249 ms  0x2e09 privk:0x7f860b26c020::7f860b26c020  e5 e5 e5 e5                                      ....
  5250 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5250 ms  0x2e09 privk:0x7f860ad43820::7f860ad43820  40 47 d3 0a                                      @G..
  5250 ms  0x2e09 privk:0x7f860ad43820::7f860ad43820  e5 e5 e5 e5                                      ....
  5250 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5250 ms  0x2e09 privk:0x7f860ad41820::7f860ad41820  60 45 d3 0a                                      `E..
  5250 ms  0x2e09 privk:0x7f860ad41820::7f860ad41820  e5 e5 e5 e5                                      ....
  5262 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5262 ms  0x2e09 privk:0x7f860ad48020::7f860ad48020  60 4a d3 0a                                      `J..
  5263 ms  0x2e09 privk:0x7f860ad48020::7f860ad48020  e5 e5 e5 e5                                      ....
  5263 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5263 ms  0x2e09 privk:0x7f860ad46020::7f860ad46020  80 48 d3 0a                                      .H..
  5263 ms  0x2e09 privk:0x7f860ad46020::7f860ad46020  e5 e5 e5 e5                                      ....
  5269 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5269 ms  0x2e09 privk:0x7f860ad4c820::7f860ad4c820  80 4d d3 0a                                      .M..
  5269 ms  0x2e09 privk:0x7f860ad4c820::7f860ad4c820  e5 e5 e5 e5                                      ....
  5269 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5269 ms  0x2e09 privk:0x7f860ad4a820::7f860ad4a820  a0 4b d3 0a                                      .K..
  5269 ms  0x2e09 privk:0x7f860ad4a820::7f860ad4a820  e5 e5 e5 e5                                      ....
           /* TID 0x2e11 */
  5271 ms  0x2e11 PR_Close()
  5271 ms  0x2e11 fd:0x7f860b0fd790
           /* TID 0x2e09 */
  5275 ms  0x2e09 PK11_Encrypt()
  5275 ms  0x2e09 symkey:0x7f860af48900
           /* TID 0x2e11 */
  5276 ms  0x2e11 PR_Close()
  5276 ms  0x2e11 fd:0x7f860af28460
  5277 ms  0x2e11 PR_Close()
  5277 ms  0x2e11 fd:0x7f860af28460
           /* TID 0x2e09 */
  5285 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5285 ms  0x2e09 privk:0x7f860b25d820::7f860b25d820  c0 7e f2 0a                                      .~..
  5285 ms  0x2e09 privk:0x7f860b25d820::7f860b25d820  e5 e5 e5 e5                                      ....
  5285 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5285 ms  0x2e09 privk:0x7f860b25b820::7f860b25b820  e0 7c f2 0a                                      .|..
  5285 ms  0x2e09 privk:0x7f860b25b820::7f860b25b820  e5 e5 e5 e5                                      ....
           /* TID 0x2e11 */
  5286 ms  0x2e11 PR_Close()
  5286 ms  0x2e11 fd:0x7f860af28460
  5288 ms  0x2e11 PR_Close()
  5288 ms  0x2e11 fd:0x7f860af28460
  5290 ms  0x2e11 PR_Close()
  5290 ms  0x2e11 fd:0x7f860af28460
  5299 ms  0x2e11 PR_Close()
  5299 ms  0x2e11 fd:0x7f860af28460
  5301 ms  0x2e11 PR_Close()
  5301 ms  0x2e11 fd:0x7f860af28460
           /* TID 0x2e09 */
  5307 ms  0x2e09 SSL_ImportFD()
  5307 ms  0x2e09 ret:0x7f860b0fd310
  5307 ms  0x2e09 SSL_AuthCertificateHook()
  5307 ms  0x2e09 fd:0x7f860b0fd310
  5307 ms  0x2e09 ret:0x0
  5307 ms  0x2e09 PR_Connect()
  5307 ms  0x2e09 fd:0x7f860b0fd310
  5327 ms  0x2e09 PK11_Encrypt()
  5327 ms  0x2e09 symkey:0x7f860af48900
  5344 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5344 ms  0x2e09 cx:0x7f860b209e28
  5345 ms     | 0x2e09 EC_ValidatePublicKey()
  5345 ms     | 0x2e09 ret:0x0
  5345 ms  0x2e09 ret:0x7f860ac0c020::7f860ac0c020  a0 4b d3 0a                                      .K..
  5345 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5345 ms  0x2e09 cx:0x7f860b209e28
  5346 ms     | 0x2e09 EC_ValidatePublicKey()
  5347 ms     | 0x2e09 ret:0x0
  5347 ms  0x2e09 ret:0x7f860ac0e020::7f860ac0e020  10 8a d9 0a                                      ....
           /* TID 0x2e11 */
  5356 ms  0x2e11 PR_Close()
  5356 ms  0x2e11 fd:0x7f860ad6c340
           /* TID 0x2e09 */
  5363 ms  0x2e09 PK11_Encrypt()
  5363 ms  0x2e09 symkey:0x7f860af48900
           /* TID 0x2e11 */
  5389 ms  0x2e11 PR_Close()
  5389 ms  0x2e11 fd:0x7f860ad6c550
           /* TID 0x2e09 */
  5393 ms  0x2e09 SSL_ImportFD()
  5393 ms  0x2e09 ret:0x7f861c3e1a90
  5393 ms  0x2e09 SSL_AuthCertificateHook()
  5393 ms  0x2e09 fd:0x7f861c3e1a90
  5393 ms  0x2e09 ret:0x0
  5393 ms  0x2e09 PR_Connect()
  5393 ms  0x2e09 fd:0x7f861c3e1a90
  5393 ms  0x2e09 SSL_ImportFD()
  5393 ms  0x2e09 ret:0x7f860ac5f0d0
  5393 ms  0x2e09 SSL_AuthCertificateHook()
  5393 ms  0x2e09 fd:0x7f860ac5f0d0
  5393 ms  0x2e09 ret:0x0
  5394 ms  0x2e09 PR_Connect()
  5394 ms  0x2e09 fd:0x7f860ac5f0d0
  5394 ms  0x2e09 SSL_ImportFD()
  5394 ms  0x2e09 ret:0x7f860ac5f220
  5394 ms  0x2e09 SSL_AuthCertificateHook()
  5394 ms  0x2e09 fd:0x7f860ac5f220
  5394 ms  0x2e09 ret:0x0
  5394 ms  0x2e09 PR_Connect()
  5394 ms  0x2e09 fd:0x7f860ac5f220
  5394 ms  0x2e09 SSL_ImportFD()
  5394 ms  0x2e09 ret:0x7f860ac5f370
  5394 ms  0x2e09 SSL_AuthCertificateHook()
  5394 ms  0x2e09 fd:0x7f860ac5f370
  5394 ms  0x2e09 ret:0x0
  5394 ms  0x2e09 PR_Connect()
  5394 ms  0x2e09 fd:0x7f860ac5f370
  5402 ms  0x2e09 PK11_Derive()
  5402 ms  0x2e09 basekey:0x7f861e0c0780
  5402 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5402 ms  0x2e09 ret:0x7f860ac59880
  5402 ms  0x2e09 PK11_PubDeriveWithKDF()
  5402 ms  0x2e09 seckey:0x7f860ac0c020
  5402 ms     | 0x2e09 EC_ValidatePublicKey()
  5402 ms     | 0x2e09 ret:0x0
  5403 ms  0x2e09 ret:0x7f861e0c0780
  5403 ms  SECKEY_ECParamsToKeySize()
  5403 ms  0x2e09 ret:0xff
  5403 ms  0x2e09 PK11_DeriveWithFlags()
  5403 ms  0x2e09 basekey:0x7f860ac59880
  5403 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5403 ms  0x2e09 ret:0x7f860ac59900
  5403 ms  0x2e09 PK11_Derive()
  5403 ms  0x2e09 basekey:0x7f861e0c0780
  5403 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5403 ms  0x2e09 ret:0x7f860ac59980
  5403 ms  0x2e09 PK11_DeriveWithFlags()
  5403 ms  0x2e09 basekey:0x7f860ac59980
  5403 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5403 ms  0x2e09 ret:0x7f860ac59880
  5403 ms  0x2e09 PK11_DeriveWithFlags()
  5403 ms  0x2e09 basekey:0x7f860ac59980
  5403 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5403 ms  0x2e09 ret:0x7f861e0c0780
  5403 ms  0x2e09 PK11_DeriveWithFlags()
  5403 ms  0x2e09 basekey:0x7f860ac59980
  5403 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5403 ms  0x2e09 ret:0x7f860ac59900
  5403 ms  0x2e09 PK11_Derive()
  5403 ms  0x2e09 basekey:0x7f860ac59a00
  5403 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5403 ms  0x2e09 ret:0x7f860ac59a80
  5403 ms  0x2e09 PK11_DeriveWithFlags()
  5403 ms  0x2e09 basekey:0x7f861e0c0780
  5403 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5403 ms  0x2e09 ret:0x7f860ac59980
  5403 ms  0x2e09 PK11_DeriveWithFlags()
  5403 ms  0x2e09 basekey:0x7f861e0c0780
  5403 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5403 ms  0x2e09 ret:0x7f860ac59900
  5405 ms  0x2e09 PK11_DeriveWithFlags()
  5405 ms  0x2e09 basekey:0x7f861e0c0780
  5405 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5405 ms  0x2e09 ret:0x7f860ac59900
  5407 ms  0x2e09 PK11_Encrypt()
  5407 ms  0x2e09 symkey:0x7f860b199e80
  5409 ms  0x2e09 PR_Connect()
  5409 ms  0x2e09 fd:0x7f860ac5fca0
  5419 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5419 ms  0x2e09 cx:0x7f860b20a4a8
  5419 ms     | 0x2e09 EC_ValidatePublicKey()
  5419 ms     | 0x2e09 ret:0x0
  5419 ms  0x2e09 ret:0x7f860ad3f820::7f860ad3f820  30 9d f2 0a                                      0...
  5419 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5419 ms  0x2e09 cx:0x7f860b20a4a8
  5420 ms     | 0x2e09 EC_ValidatePublicKey()
  5421 ms     | 0x2e09 ret:0x0
  5421 ms  0x2e09 ret:0x7f860ad42020::7f860ad42020  80 98 1f 0b                                      ....
  5422 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5422 ms  0x2e09 cx:0x7f860b20a308
  5423 ms     | 0x2e09 EC_ValidatePublicKey()
  5423 ms     | 0x2e09 ret:0x0
  5423 ms  0x2e09 ret:0x7f860ad45020::7f860ad45020  f0 9b f2 0a                                      ....
  5423 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5423 ms  0x2e09 cx:0x7f860b20a308
  5423 ms     | 0x2e09 EC_ValidatePublicKey()
  5425 ms     | 0x2e09 ret:0x0
  5425 ms  0x2e09 ret:0x7f860ad47020::7f860ad47020  b0 d0 cb 0a                                      ....
  5428 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5428 ms  0x2e09 cx:0x7f860b209fc8
  5428 ms     | 0x2e09 EC_ValidatePublicKey()
  5428 ms     | 0x2e09 ret:0x0
  5428 ms  0x2e09 ret:0x7f860ad4a020::7f860ad4a020  c0 d4 cb 0a                                      ....
  5428 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5428 ms  0x2e09 cx:0x7f860b209fc8
  5429 ms     | 0x2e09 EC_ValidatePublicKey()
  5430 ms     | 0x2e09 ret:0x0
  5430 ms  0x2e09 ret:0x7f860ad4c020::7f860ad4c020  80 d8 cb 0a                                      ....
  5431 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5431 ms  0x2e09 cx:0x7f860b20a648
  5431 ms     | 0x2e09 EC_ValidatePublicKey()
  5432 ms     | 0x2e09 ret:0x0
  5432 ms  0x2e09 ret:0x7f860ad5d820::7f860ad5d820  c0 d9 cb 0a                                      ....
  5432 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5432 ms  0x2e09 cx:0x7f860b20a648
  5432 ms     | 0x2e09 EC_ValidatePublicKey()
  5434 ms     | 0x2e09 ret:0x0
  5434 ms  0x2e09 ret:0x7f860b258820::7f860b258820  a0 db cb 0a                                      ....
  5436 ms  0x2e09 SSL_ImportFD()
  5436 ms  0x2e09 ret:0x7f860ad6c760
  5436 ms  0x2e09 SSL_AuthCertificateHook()
  5436 ms  0x2e09 fd:0x7f860ad6c760
  5436 ms  0x2e09 ret:0x0
  5436 ms  0x2e09 PR_Connect()
  5436 ms  0x2e09 fd:0x7f860ad6c760
  5436 ms  0x2e09 SSL_ImportFD()
  5436 ms  0x2e09 ret:0x7f860ac5f7f0
  5436 ms  0x2e09 SSL_AuthCertificateHook()
  5436 ms  0x2e09 fd:0x7f860ac5f7f0
  5437 ms  0x2e09 ret:0x0
  5437 ms  0x2e09 PR_Connect()
  5437 ms  0x2e09 fd:0x7f860ac5f7f0
  5437 ms  0x2e09 SSL_ImportFD()
  5437 ms  0x2e09 ret:0x7f860ac5feb0
  5437 ms  0x2e09 SSL_AuthCertificateHook()
  5437 ms  0x2e09 fd:0x7f860ac5feb0
  5437 ms  0x2e09 ret:0x0
  5437 ms  0x2e09 PR_Connect()
  5437 ms  0x2e09 fd:0x7f860ac5feb0
  5437 ms  0x2e09 SSL_ImportFD()
  5437 ms  0x2e09 ret:0x7f860ac5ffa0
  5437 ms  0x2e09 SSL_AuthCertificateHook()
  5437 ms  0x2e09 fd:0x7f860ac5ffa0
  5437 ms  0x2e09 ret:0x0
  5437 ms  0x2e09 PR_Connect()
  5437 ms  0x2e09 fd:0x7f860ac5ffa0
  5438 ms  0x2e09 SSL_ImportFD()
  5438 ms  0x2e09 ret:0x7f860ad6c460
  5438 ms  0x2e09 SSL_AuthCertificateHook()
  5438 ms  0x2e09 fd:0x7f860ad6c460
  5438 ms  0x2e09 ret:0x0
  5438 ms  0x2e09 PR_Connect()
  5438 ms  0x2e09 fd:0x7f860ad6c460
  5438 ms  0x2e09 SSL_ImportFD()
  5438 ms  0x2e09 ret:0x7f860ad6c520
  5438 ms  0x2e09 SSL_AuthCertificateHook()
  5438 ms  0x2e09 fd:0x7f860ad6c520
  5438 ms  0x2e09 ret:0x0
  5438 ms  0x2e09 PR_Connect()
  5438 ms  0x2e09 fd:0x7f860ad6c520
  5450 ms  SECKEY_ECParamsToKeySize()
  5450 ms  0x2e09 ret:0xff
  5450 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5450 ms  0x2e09 cx:0x7f860b20a4a8
  5450 ms     | 0x2e09 EC_ValidatePublicKey()
  5450 ms     | 0x2e09 ret:0x0
  5450 ms  0x2e09 ret:0x7f860b269820::7f860b269820  60 df cb 0a                                      `...
  5450 ms  0x2e09 PK11_PubDeriveWithKDF()
  5450 ms  0x2e09 seckey:0x7f860b269820
  5450 ms     | 0x2e09 EC_ValidatePublicKey()
  5450 ms     | 0x2e09 ret:0x0
  5451 ms  0x2e09 ret:0x7f860ac59900
  5451 ms  0x2e09 PK11_DeriveWithFlags()
  5451 ms  0x2e09 basekey:0x7f860ac59900
  5451 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5451 ms  0x2e09 ret:0x7f860ac59a00
  5451 ms  0x2e09 PK11_Derive()
  5451 ms  0x2e09 basekey:0x7f860ac59a00
  5451 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5451 ms  0x2e09 ret:0x7f860ac5a500
  5451 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5451 ms  0x2e09 privk:0x7f860b269820::7f860b269820  60 df cb 0a                                      `...
  5451 ms  0x2e09 privk:0x7f860b269820::7f860b269820  e5 e5 e5 e5                                      ....
  5451 ms  0x2e09 PK11_Encrypt()
  5451 ms  0x2e09 symkey:0x7f860ac5a680
           /* TID 0x2e9a */
  5452 ms  0x2e9a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5452 ms  0x2e9a ret:0x0
  5452 ms  0x2e9a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5452 ms  0x2e9a ret:0x0
  5453 ms  0x2e9a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5453 ms  0x2e9a ret:0x0
  5453 ms  0x2e9a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5453 ms  0x2e9a ret:0x0
           /* TID 0x2e09 */
  5453 ms  SECKEY_ECParamsToKeySize()
  5453 ms  0x2e09 ret:0xff
  5453 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5453 ms  0x2e09 cx:0x7f860b20a308
  5454 ms     | 0x2e09 EC_ValidatePublicKey()
  5454 ms     | 0x2e09 ret:0x0
  5454 ms  0x2e09 ret:0x7f860b26b820::7f860b26b820  40 4c d3 0a                                      @L..
  5454 ms  0x2e09 PK11_PubDeriveWithKDF()
  5454 ms  0x2e09 seckey:0x7f860b26b820
  5454 ms     | 0x2e09 EC_ValidatePublicKey()
  5454 ms     | 0x2e09 ret:0x0
  5455 ms  0x2e09 ret:0x7f860ac59900
  5455 ms  0x2e09 PK11_DeriveWithFlags()
  5455 ms  0x2e09 basekey:0x7f860ac59900
  5455 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5455 ms  0x2e09 ret:0x7f860ac5a780
  5455 ms  0x2e09 PK11_Derive()
  5455 ms  0x2e09 basekey:0x7f860ac5a780
  5455 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5455 ms  0x2e09 ret:0x7f860ac5a800
  5455 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5455 ms  0x2e09 privk:0x7f860b26b820::7f860b26b820  40 4c d3 0a                                      @L..
  5455 ms  0x2e09 privk:0x7f860b26b820::7f860b26b820  e5 e5 e5 e5                                      ....
  5455 ms  0x2e09 PK11_Encrypt()
  5455 ms  0x2e09 symkey:0x7f860ac5a980
  5455 ms  0x2e09 SSL_AuthCertificateComplete()
  5455 ms  0x2e09 fd:0x7f860ac5f220
  5455 ms  0x2e09 err:0x0
  5455 ms  0x2e09 SSL_AuthCertificateComplete()
  5455 ms  0x2e09 fd:0x7f860ac5f0d0
  5455 ms  0x2e09 err:0x0
  5455 ms  0x2e09 PK11_Encrypt()
  5455 ms  0x2e09 symkey:0x7f860ac5a680
  5456 ms  0x2e09 PK11_Encrypt()
  5456 ms  0x2e09 symkey:0x7f860ac5a980
  5458 ms  SECKEY_ECParamsToKeySize()
  5458 ms  0x2e09 ret:0xff
  5458 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5458 ms  0x2e09 cx:0x7f860b209fc8
  5458 ms     | 0x2e09 EC_ValidatePublicKey()
  5458 ms     | 0x2e09 ret:0x0
  5458 ms  0x2e09 ret:0x7f860b26d820::7f860b26d820  f0 71 f2 0a                                      .q..
  5459 ms  0x2e09 PK11_PubDeriveWithKDF()
  5459 ms  0x2e09 seckey:0x7f860b26d820
  5459 ms     | 0x2e09 EC_ValidatePublicKey()
  5459 ms     | 0x2e09 ret:0x0
  5459 ms  0x2e09 ret:0x7f860ac59900
  5459 ms  0x2e09 PK11_DeriveWithFlags()
  5459 ms  0x2e09 basekey:0x7f860ac59900
  5459 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5459 ms  0x2e09 ret:0x7f860ac5aa80
  5459 ms  0x2e09 PK11_Derive()
  5459 ms  0x2e09 basekey:0x7f860ac5aa80
  5459 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5459 ms  0x2e09 ret:0x7f860ac5ab00
  5459 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5459 ms  0x2e09 privk:0x7f860b26d820::7f860b26d820  f0 71 f2 0a                                      .q..
  5459 ms  0x2e09 privk:0x7f860b26d820::7f860b26d820  e5 e5 e5 e5                                      ....
  5460 ms  0x2e09 PK11_Encrypt()
  5460 ms  0x2e09 symkey:0x7f860ac5ac80
           /* TID 0x2e9a */
  5460 ms  0x2e9a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5460 ms  0x2e9a ret:0x0
  5460 ms  0x2e9a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5460 ms  0x2e9a ret:0x0
           /* TID 0x2e09 */
  5460 ms  0x2e09 SSL_AuthCertificateComplete()
  5460 ms  0x2e09 fd:0x7f861c3e1a90
  5460 ms  0x2e09 err:0x0
  5460 ms  0x2e09 PK11_Encrypt()
  5460 ms  0x2e09 symkey:0x7f860ac5ac80
           /* TID 0x2e9b */
  5462 ms  0x2e9b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5462 ms  0x2e9b ret:0x0
  5462 ms  0x2e9b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5462 ms  0x2e9b ret:0x0
           /* TID 0x2e09 */
  5462 ms  SECKEY_ECParamsToKeySize()
  5462 ms  0x2e09 ret:0xff
  5462 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5462 ms  0x2e09 cx:0x7f860b20a648
  5463 ms     | 0x2e09 EC_ValidatePublicKey()
  5463 ms     | 0x2e09 ret:0x0
  5463 ms  0x2e09 ret:0x7f860b26d820::7f860b26d820  b0 9a 1f 0b                                      ....
  5463 ms  0x2e09 PK11_PubDeriveWithKDF()
  5463 ms  0x2e09 seckey:0x7f860b26d820
  5463 ms     | 0x2e09 EC_ValidatePublicKey()
  5463 ms     | 0x2e09 ret:0x0
  5464 ms  0x2e09 ret:0x7f860ac59900
  5464 ms  0x2e09 PK11_DeriveWithFlags()
  5464 ms  0x2e09 basekey:0x7f860ac59900
  5464 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5464 ms  0x2e09 ret:0x7f860ac5ad80
  5464 ms  0x2e09 PK11_Derive()
  5464 ms  0x2e09 basekey:0x7f860ac5ad80
  5464 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5464 ms  0x2e09 ret:0x7f860ac5ae00
  5464 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5464 ms  0x2e09 privk:0x7f860b26d820::7f860b26d820  b0 9a 1f 0b                                      ....
  5464 ms  0x2e09 privk:0x7f860b26d820::7f860b26d820  e5 e5 e5 e5                                      ....
  5464 ms  0x2e09 PK11_Encrypt()
  5464 ms  0x2e09 symkey:0x7f860ac5af80
  5464 ms  0x2e09 SSL_AuthCertificateComplete()
  5464 ms  0x2e09 fd:0x7f860ac5f370
  5464 ms  0x2e09 err:0x0
  5464 ms  0x2e09 PK11_Encrypt()
  5464 ms  0x2e09 symkey:0x7f860ac5af80
  5476 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5476 ms  0x2e09 cx:0x7f860b20a7e8
  5477 ms     | 0x2e09 EC_ValidatePublicKey()
  5477 ms     | 0x2e09 ret:0x0
  5477 ms  0x2e09 ret:0x7f860b26d820::7f860b26d820  30 98 1f 0b                                      0...
  5477 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5477 ms  0x2e09 cx:0x7f860b20a7e8
  5477 ms     | 0x2e09 EC_ValidatePublicKey()
  5479 ms     | 0x2e09 ret:0x0
  5479 ms  0x2e09 ret:0x7f860b26f820::7f860b26f820  00 e1 c5 0a                                      ....
  5481 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5481 ms  0x2e09 privk:0x7f860ad42020::7f860ad42020  80 98 1f 0b                                      ....
  5481 ms  0x2e09 privk:0x7f860ad42020::7f860ad42020  e5 e5 e5 e5                                      ....
  5481 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5481 ms  0x2e09 privk:0x7f860ad3f820::7f860ad3f820  30 9d f2 0a                                      0...
  5481 ms  0x2e09 privk:0x7f860ad3f820::7f860ad3f820  e5 e5 e5 e5                                      ....
  5481 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5481 ms  0x2e09 cx:0x7f860acd3248
  5482 ms     | 0x2e09 EC_ValidatePublicKey()
  5482 ms     | 0x2e09 ret:0x0
  5482 ms  0x2e09 ret:0x7f860ad3f820::7f860ad3f820  40 e2 c5 0a                                      @...
  5482 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5482 ms  0x2e09 cx:0x7f860acd3248
  5483 ms     | 0x2e09 EC_ValidatePublicKey()
  5484 ms     | 0x2e09 ret:0x0
  5484 ms  0x2e09 ret:0x7f860ad42020::7f860ad42020  20 e4 c5 0a                                       ...
  5484 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5484 ms  0x2e09 cx:0x7f860acd30a8
  5485 ms     | 0x2e09 EC_ValidatePublicKey()
  5485 ms     | 0x2e09 ret:0x0
  5485 ms  0x2e09 ret:0x7f860aa41820::7f860aa41820  60 e5 c5 0a                                      `...
  5485 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5485 ms  0x2e09 cx:0x7f860acd30a8
  5486 ms     | 0x2e09 EC_ValidatePublicKey()
  5487 ms     | 0x2e09 ret:0x0
  5487 ms  0x2e09 ret:0x7f860aa43820::7f860aa43820  e0 e7 c5 0a                                      ....
  5488 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5488 ms  0x2e09 cx:0x7f861c1f1e68
  5488 ms     | 0x2e09 EC_ValidatePublicKey()
  5488 ms     | 0x2e09 ret:0x0
  5488 ms  0x2e09 ret:0x7f860aa46020::7f860aa46020  20 e9 c5 0a                                       ...
  5488 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5488 ms  0x2e09 cx:0x7f861c1f1e68
  5489 ms     | 0x2e09 EC_ValidatePublicKey()
  5490 ms     | 0x2e09 ret:0x0
  5490 ms  0x2e09 ret:0x7f860aa48020::7f860aa48020  00 eb c5 0a                                      ....
  5491 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5491 ms  0x2e09 privk:0x7f860b258820::7f860b258820  a0 db cb 0a                                      ....
  5491 ms  0x2e09 privk:0x7f860b258820::7f860b258820  e5 e5 e5 e5                                      ....
  5491 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5491 ms  0x2e09 privk:0x7f860ad5d820::7f860ad5d820  c0 d9 cb 0a                                      ....
  5491 ms  0x2e09 privk:0x7f860ad5d820::7f860ad5d820  e5 e5 e5 e5                                      ....
  5491 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5491 ms  0x2e09 privk:0x7f860ad47020::7f860ad47020  b0 d0 cb 0a                                      ....
  5491 ms  0x2e09 privk:0x7f860ad47020::7f860ad47020  e5 e5 e5 e5                                      ....
  5491 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5491 ms  0x2e09 privk:0x7f860ad45020::7f860ad45020  f0 9b f2 0a                                      ....
  5491 ms  0x2e09 privk:0x7f860ad45020::7f860ad45020  e5 e5 e5 e5                                      ....
  5491 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5491 ms  0x2e09 privk:0x7f860ad4c020::7f860ad4c020  80 d8 cb 0a                                      ....
  5491 ms  0x2e09 privk:0x7f860ad4c020::7f860ad4c020  e5 e5 e5 e5                                      ....
  5491 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5491 ms  0x2e09 privk:0x7f860ad4a020::7f860ad4a020  c0 d4 cb 0a                                      ....
  5492 ms  0x2e09 privk:0x7f860ad4a020::7f860ad4a020  e5 e5 e5 e5                                      ....
  5492 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5492 ms  0x2e09 cx:0x7f860acd3588
  5492 ms     | 0x2e09 EC_ValidatePublicKey()
  5492 ms     | 0x2e09 ret:0x0
  5492 ms  0x2e09 ret:0x7f860aa4a820::7f860aa4a820  40 ec c5 0a                                      @...
  5492 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5492 ms  0x2e09 cx:0x7f860acd3588
  5493 ms     | 0x2e09 EC_ValidatePublicKey()
  5495 ms     | 0x2e09 ret:0x0
  5495 ms  0x2e09 ret:0x7f860aa4c820::7f860aa4c820  60 d0 cb 0a                                      `...
  5496 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5496 ms  0x2e09 cx:0x7f860acd33e8
  5496 ms     | 0x2e09 EC_ValidatePublicKey()
  5496 ms     | 0x2e09 ret:0x0
  5496 ms  0x2e09 ret:0x7f860aa4f020::7f860aa4f020  c0 d4 cb 0a                                      ....
  5496 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5496 ms  0x2e09 cx:0x7f860acd33e8
  5497 ms     | 0x2e09 EC_ValidatePublicKey()
  5498 ms     | 0x2e09 ret:0x0
  5498 ms  0x2e09 ret:0x7f860aa51020::7f860aa51020  f0 d6 cb 0a                                      ....
           /* TID 0x2e11 */
  5513 ms  0x2e11 PR_Close()
  5513 ms  0x2e11 fd:0x7f860ac5f5e0
           /* TID 0x2e09 */
  5521 ms  SECKEY_ECParamsToKeySize()
  5521 ms  0x2e09 ret:0x100
  5521 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5521 ms  0x2e09 cx:0x7f860b20a7e8
  5522 ms     | 0x2e09 EC_ValidatePublicKey()
  5524 ms     | 0x2e09 ret:0x0
  5524 ms  0x2e09 ret:0x7f860ad47820::7f860ad47820  00 61 61 22                                      .aa"
  5524 ms  0x2e09 PK11_PubDeriveWithKDF()
  5524 ms  0x2e09 seckey:0x7f860ad47820
  5524 ms     | 0x2e09 EC_ValidatePublicKey()
  5525 ms     | 0x2e09 ret:0x0
  5529 ms  0x2e09 ret:0x7f860ac59900
  5529 ms  0x2e09 PK11_DeriveWithFlags()
  5529 ms  0x2e09 basekey:0x7f860ac59900
  5529 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5529 ms  0x2e09 ret:0x7f860aa9e880
  5529 ms  0x2e09 PK11_Derive()
  5529 ms  0x2e09 basekey:0x7f860aa9e880
  5529 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5529 ms  0x2e09 ret:0x7f860aa9ea00
  5529 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5529 ms  0x2e09 privk:0x7f860ad47820::7f860ad47820  00 61 61 22                                      .aa"
  5529 ms  0x2e09 privk:0x7f860ad47820::7f860ad47820  e5 e5 e5 e5                                      ....
  5529 ms  0x2e09 PK11_Encrypt()
  5529 ms  0x2e09 symkey:0x7f860aa9eb80
  5531 ms  SECKEY_ECParamsToKeySize()
  5531 ms  0x2e09 ret:0x100
  5531 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5531 ms  0x2e09 cx:0x7f860acd3248
  5532 ms     | 0x2e09 EC_ValidatePublicKey()
  5533 ms     | 0x2e09 ret:0x0
  5533 ms  0x2e09 ret:0x7f860ad52820::7f860ad52820  d0 43 cc 0a                                      .C..
  5533 ms  0x2e09 PK11_PubDeriveWithKDF()
  5533 ms  0x2e09 seckey:0x7f860ad52820
  5533 ms     | 0x2e09 EC_ValidatePublicKey()
  5535 ms     | 0x2e09 ret:0x0
  5537 ms  0x2e09 ret:0x7f860ac59900
  5537 ms  0x2e09 PK11_DeriveWithFlags()
  5537 ms  0x2e09 basekey:0x7f860ac59900
  5537 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5537 ms  0x2e09 ret:0x7f860aa9ee80
  5537 ms  0x2e09 PK11_Derive()
  5537 ms  0x2e09 basekey:0x7f860aa9ee80
  5537 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5537 ms  0x2e09 ret:0x7f860aa9ef00
  5537 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5537 ms  0x2e09 privk:0x7f860ad52820::7f860ad52820  d0 43 cc 0a                                      .C..
  5537 ms  0x2e09 privk:0x7f860ad52820::7f860ad52820  e5 e5 e5 e5                                      ....
  5537 ms  0x2e09 PK11_Encrypt()
  5537 ms  0x2e09 symkey:0x7f860aa9f080
  5537 ms  SECKEY_ECParamsToKeySize()
  5538 ms  0x2e09 ret:0x100
  5538 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5538 ms  0x2e09 cx:0x7f860acd30a8
  5538 ms     | 0x2e09 EC_ValidatePublicKey()
  5540 ms     | 0x2e09 ret:0x0
  5540 ms  0x2e09 ret:0x7f860b257020::7f860b257020  c0 44 cc 0a                                      .D..
  5540 ms  0x2e09 PK11_PubDeriveWithKDF()
  5540 ms  0x2e09 seckey:0x7f860b257020
  5540 ms     | 0x2e09 EC_ValidatePublicKey()
  5541 ms     | 0x2e09 ret:0x0
  5544 ms  0x2e09 ret:0x7f860ac59900
  5544 ms  0x2e09 PK11_DeriveWithFlags()
  5544 ms  0x2e09 basekey:0x7f860ac59900
  5544 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5544 ms  0x2e09 ret:0x7f860aa9f380
  5544 ms  0x2e09 PK11_Derive()
  5544 ms  0x2e09 basekey:0x7f860aa9f380
  5544 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5544 ms  0x2e09 ret:0x7f860aa9f400
  5544 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5544 ms  0x2e09 privk:0x7f860b257020::7f860b257020  c0 44 cc 0a                                      .D..
  5544 ms  0x2e09 privk:0x7f860b257020::7f860b257020  e5 e5 e5 e5                                      ....
  5544 ms  0x2e09 PK11_Encrypt()
  5544 ms  0x2e09 symkey:0x7f860aa9f580
  5545 ms  SECKEY_ECParamsToKeySize()
  5545 ms  0x2e09 ret:0x100
  5545 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5545 ms  0x2e09 cx:0x7f861c1f1e68
  5545 ms     | 0x2e09 EC_ValidatePublicKey()
  5547 ms     | 0x2e09 ret:0x0
  5547 ms  0x2e09 ret:0x7f860a813020::7f860a813020  d0 48 cc 0a                                      .H..
  5547 ms  0x2e09 PK11_PubDeriveWithKDF()
  5547 ms  0x2e09 seckey:0x7f860a813020
  5547 ms     | 0x2e09 EC_ValidatePublicKey()
  5548 ms     | 0x2e09 ret:0x0
  5551 ms  0x2e09 ret:0x7f860ac59900
  5551 ms  0x2e09 PK11_DeriveWithFlags()
  5551 ms  0x2e09 basekey:0x7f860ac59900
  5551 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5551 ms  0x2e09 ret:0x7f860aa9f880
  5551 ms  0x2e09 PK11_Derive()
  5551 ms  0x2e09 basekey:0x7f860aa9f880
  5551 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5551 ms  0x2e09 ret:0x7f860aa9f900
  5551 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5551 ms  0x2e09 privk:0x7f860a813020::7f860a813020  d0 48 cc 0a                                      .H..
  5551 ms  0x2e09 privk:0x7f860a813020::7f860a813020  e5 e5 e5 e5                                      ....
  5551 ms  0x2e09 PK11_Encrypt()
  5551 ms  0x2e09 symkey:0x7f860aa9fa80
  5552 ms  SECKEY_ECParamsToKeySize()
  5552 ms  0x2e09 ret:0x100
  5552 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5552 ms  0x2e09 cx:0x7f860acd3588
  5553 ms     | 0x2e09 EC_ValidatePublicKey()
  5554 ms     | 0x2e09 ret:0x0
  5554 ms  0x2e09 ret:0x7f860a817020::7f860a817020  40 4c cc 0a                                      @L..
  5555 ms  0x2e09 PK11_PubDeriveWithKDF()
  5555 ms  0x2e09 seckey:0x7f860a817020
  5555 ms     | 0x2e09 EC_ValidatePublicKey()
  5556 ms     | 0x2e09 ret:0x0
  5558 ms  0x2e09 ret:0x7f860ac59900
  5558 ms  0x2e09 PK11_DeriveWithFlags()
  5558 ms  0x2e09 basekey:0x7f860ac59900
  5558 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5558 ms  0x2e09 ret:0x7f860aa9fb80
  5558 ms  0x2e09 PK11_Derive()
  5558 ms  0x2e09 basekey:0x7f860aa9fb80
  5558 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5558 ms  0x2e09 ret:0x7f860aa9fc00
  5558 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5558 ms  0x2e09 privk:0x7f860a817020::7f860a817020  40 4c cc 0a                                      @L..
  5558 ms  0x2e09 privk:0x7f860a817020::7f860a817020  e5 e5 e5 e5                                      ....
  5558 ms  0x2e09 PK11_Encrypt()
  5558 ms  0x2e09 symkey:0x7f860aa9fd80
  5558 ms  SECKEY_ECParamsToKeySize()
  5558 ms  0x2e09 ret:0x100
  5558 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5558 ms  0x2e09 cx:0x7f860acd33e8
  5559 ms     | 0x2e09 EC_ValidatePublicKey()
  5561 ms     | 0x2e09 ret:0x0
  5561 ms  0x2e09 ret:0x7f860a818820::7f860a818820  30 4d cc 0a                                      0M..
  5561 ms  0x2e09 PK11_PubDeriveWithKDF()
  5561 ms  0x2e09 seckey:0x7f860a818820
  5561 ms     | 0x2e09 EC_ValidatePublicKey()
  5562 ms     | 0x2e09 ret:0x0
  5567 ms  0x2e09 ret:0x7f860ac59900
  5567 ms  0x2e09 PK11_DeriveWithFlags()
  5567 ms  0x2e09 basekey:0x7f860ac59900
  5567 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5567 ms  0x2e09 ret:0x7f860aa9fe80
  5567 ms  0x2e09 PK11_Derive()
  5567 ms  0x2e09 basekey:0x7f860aa9fe80
  5567 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5567 ms  0x2e09 ret:0x7f860aa9ff00
  5567 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5567 ms  0x2e09 privk:0x7f860a818820::7f860a818820  30 4d cc 0a                                      0M..
  5567 ms  0x2e09 privk:0x7f860a818820::7f860a818820  e5 e5 e5 e5                                      ....
  5567 ms  0x2e09 PK11_Encrypt()
  5567 ms  0x2e09 symkey:0x7f860ac5a080
           /* TID 0x2e11 */
  5569 ms  0x2e11 PR_Close()
  5569 ms  0x2e11 fd:0x7f860ace1850
  5572 ms  0x2e11 PR_Close()
  5572 ms  0x2e11 fd:0x7f860ace1820
  5574 ms  0x2e11 PR_Close()
  5574 ms  0x2e11 fd:0x7f860ace1700
           /* TID 0x2e09 */
  5574 ms  0x2e09 PR_Connect()
  5574 ms  0x2e09 fd:0x7f860ace1760
  5575 ms  0x2e09 PR_Connect()
  5575 ms  0x2e09 fd:0x7f860ace1c10
  5575 ms  0x2e09 PR_Connect()
  5575 ms  0x2e09 fd:0x7f860ace1850
  5575 ms  0x2e09 PR_Connect()
  5575 ms  0x2e09 fd:0x7f860ace1c70
           /* TID 0x2e11 */
  5591 ms  0x2e11 PR_Close()
  5591 ms  0x2e11 fd:0x7f860ac5fc70
           /* TID 0x2e65 */
  5591 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5591 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
  5598 ms  0x2e09 SSL_AuthCertificateComplete()
  5598 ms  0x2e09 fd:0x7f860b0fd310
  5598 ms  0x2e09 err:0x0
  5598 ms     | 0x2e09 PK11_DeriveWithFlags()
  5598 ms     | 0x2e09 basekey:0x7f860ac59a80
  5598 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
  5598 ms     | 0x2e09 ret:0x7f860ac59900
  5598 ms     | 0x2e09 PK11_DeriveWithFlags()
  5598 ms     | 0x2e09 basekey:0x7f860ac59a80
  5598 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
  5598 ms     | 0x2e09 ret:0x7f860ac59c80
  5598 ms     | 0x2e09 PK11_DeriveWithFlags()
  5598 ms     | 0x2e09 basekey:0x7f860ac59a80
  5598 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
  5598 ms     | 0x2e09 ret:0x7f860ac59d80
  5598 ms     | 0x2e09 PK11_DeriveWithFlags()
  5598 ms     | 0x2e09 basekey:0x7f860ac59880
  5598 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
  5598 ms     | 0x2e09 ret:0x7f860ac59e00
  5598 ms     | 0x2e09 PK11_DeriveWithFlags()
  5598 ms     | 0x2e09 basekey:0x7f860ac59880
  5598 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
  5598 ms     | 0x2e09 ret:0x7f860ad78580
  5598 ms     | 0x2e09 PK11_DeriveWithFlags()
  5598 ms     | 0x2e09 basekey:0x7f860ac59c80
  5598 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
  5598 ms     | 0x2e09 ret:0x7f860ad78580
  5598 ms     | 0x2e09 PK11_DeriveWithFlags()
  5598 ms     | 0x2e09 basekey:0x7f860ac59c80
  5599 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
  5599 ms     | 0x2e09 ret:0x7f860ad78800
  5599 ms     | 0x2e09 PK11_DeriveWithFlags()
  5599 ms     | 0x2e09 basekey:0x7f860ac59880
  5599 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
  5599 ms     | 0x2e09 ret:0x7f860ac59980
  5599 ms     | 0x2e09 PK11_Encrypt()
  5599 ms     | 0x2e09 symkey:0x7f860ac59e00
  5599 ms     | 0x2e09 PK11_DeriveWithFlags()
  5599 ms     | 0x2e09 basekey:0x7f860ac59900
  5599 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
  5599 ms     | 0x2e09 ret:0x7f860ac59980
  5599 ms     | 0x2e09 PK11_DeriveWithFlags()
  5599 ms     | 0x2e09 basekey:0x7f860ac59900
  5599 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
  5599 ms     | 0x2e09 ret:0x7f860ad78800
  5599 ms     | 0x2e09 PK11_DeriveWithFlags()
  5599 ms     | 0x2e09 basekey:0x7f860ac59a80
  5599 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
  5599 ms     | 0x2e09 ret:0x7f860ac59e00
  5599 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
  5599 ms     | 0x2e09 privk:0x7f860ac0e020::7f860ac0e020  10 8a d9 0a                                      ....
  5599 ms     | 0x2e09 privk:0x7f860ac0e020::7f860ac0e020  e5 e5 e5 e5                                      ....
  5599 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
  5599 ms     | 0x2e09 privk:0x7f860ac0c020::7f860ac0c020  a0 4b d3 0a                                      .K..
  5599 ms     | 0x2e09 privk:0x7f860ac0c020::7f860ac0c020  e5 e5 e5 e5                                      ....
  5600 ms  0x2e09 PK11_Encrypt()
  5600 ms  0x2e09 symkey:0x7f860ac59980
  5600 ms  0x2e09 PK11_Encrypt()
  5600 ms  0x2e09 symkey:0x7f860ac59980
  5600 ms  0x2e09 PR_Connect()
  5600 ms  0x2e09 fd:0x7f860ad6cbe0
  5636 ms  0x2e09 PK11_DeriveWithFlags()
  5636 ms  0x2e09 basekey:0x7f860ac59e00
  5636 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5636 ms  0x2e09 ret:0x7f861e0c0780
  5637 ms  0x2e09 PK11_DeriveWithFlags()
  5637 ms  0x2e09 basekey:0x7f860ac59e00
  5637 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5637 ms  0x2e09 ret:0x7f861e0c0780
  5637 ms  0x2e09 PK11_Encrypt()
  5637 ms  0x2e09 symkey:0x7f860ac59980
  5653 ms  0x2e09 SSL_ImportFD()
  5654 ms  0x2e09 ret:0x7f860ad6c580
  5654 ms  0x2e09 SSL_AuthCertificateHook()
  5654 ms  0x2e09 fd:0x7f860ad6c580
  5654 ms  0x2e09 ret:0x0
  5654 ms  0x2e09 PR_Connect()
  5654 ms  0x2e09 fd:0x7f860ad6c580
           /* TID 0x2e11 */
  5659 ms  0x2e11 PR_Close()
  5659 ms  0x2e11 fd:0x7f860aca0070
           /* TID 0x2e9b */
  5660 ms  0x2e9b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5660 ms  0x2e9b ret:0x0
           /* TID 0x2e11 */
  5662 ms  0x2e11 PR_Close()
  5662 ms  0x2e11 fd:0x7f860aca0040
           /* TID 0x2e9f */
  5662 ms  0x2e9f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5662 ms  0x2e9f ret:0x0
           /* TID 0x2e11 */
  5663 ms  0x2e11 PR_Close()
  5663 ms  0x2e11 fd:0x7f860aca00d0
           /* TID 0x2e9e */
  5663 ms  0x2e9e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5663 ms  0x2e9e ret:0x0
           /* TID 0x2e11 */
  5686 ms  0x2e11 PR_Close()
  5686 ms  0x2e11 fd:0x7f860aca00a0
           /* TID 0x2e65 */
  5686 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5686 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
  5701 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5701 ms  0x2e09 cx:0x7f860acd4aa8
  5702 ms     | 0x2e09 EC_ValidatePublicKey()
  5702 ms     | 0x2e09 ret:0x0
  5702 ms  0x2e09 ret:0x7f860a81f820::7f860a81f820  70 89 d9 0a                                      p...
  5702 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5702 ms  0x2e09 cx:0x7f860acd4aa8
           /* TID 0x2e11 */
  5704 ms  0x2e11 PR_Close()
  5704 ms  0x2e11 fd:0x7f860aca0460
           /* TID 0x2e9a */
  5704 ms  0x2e9a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x2e09 */
  5705 ms     | 0x2e09 EC_ValidatePublicKey()
  5707 ms     | 0x2e09 ret:0x0
           /* TID 0x2e9a */
  5708 ms  0x2e9a ret:0x0
           /* TID 0x2e09 */
  5708 ms  0x2e09 ret:0x7f860a822820::7f860a822820  a0 8b d9 0a                                      ....
           /* TID 0x2e11 */
  5752 ms  0x2e11 PR_Close()
  5752 ms  0x2e11 fd:0x7f860aca0520
           /* TID 0x2e09 */
  5760 ms  0x2e09 PK11_Encrypt()
  5760 ms  0x2e09 symkey:0x7f860ac59980
  5761 ms  SECKEY_ECParamsToKeySize()
  5761 ms  0x2e09 ret:0x100
  5761 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5761 ms  0x2e09 cx:0x7f860acd4aa8
  5762 ms     | 0x2e09 EC_ValidatePublicKey()
  5774 ms     | 0x2e09 ret:0x0
  5774 ms  0x2e09 ret:0x7f860a825820::7f860a825820  40 92 f2 0a                                      @...
  5774 ms  0x2e09 PK11_PubDeriveWithKDF()
  5774 ms  0x2e09 seckey:0x7f860a825820
  5774 ms     | 0x2e09 EC_ValidatePublicKey()
  5776 ms     | 0x2e09 ret:0x0
  5778 ms  0x2e09 ret:0x7f861e0c0780
  5778 ms  0x2e09 PK11_DeriveWithFlags()
  5778 ms  0x2e09 basekey:0x7f861e0c0780
  5778 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5778 ms  0x2e09 ret:0x7f860ac59880
  5778 ms  0x2e09 PK11_Derive()
  5778 ms  0x2e09 basekey:0x7f860ac59880
  5778 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5778 ms  0x2e09 ret:0x7f860ac59a80
  5778 ms  0x2e09 SECKEY_DestroyPrivateKey()
  5778 ms  0x2e09 privk:0x7f860a825820::7f860a825820  40 92 f2 0a                                      @...
  5778 ms  0x2e09 privk:0x7f860a825820::7f860a825820  e5 e5 e5 e5                                      ....
  5778 ms  0x2e09 PK11_Encrypt()
  5778 ms  0x2e09 symkey:0x7f860aa9f780
  5833 ms  0x2e09 SSL_ImportFD()
  5833 ms  0x2e09 ret:0x7f860aca0b80
  5833 ms  0x2e09 SSL_AuthCertificateHook()
  5833 ms  0x2e09 fd:0x7f860aca0b80
  5833 ms  0x2e09 ret:0x0
  5834 ms  0x2e09 PR_Connect()
  5834 ms  0x2e09 fd:0x7f860aca0b80
  5837 ms  0x2e09 SSL_ImportFD()
  5837 ms  0x2e09 ret:0x7f860aca0dc0
  5837 ms  0x2e09 SSL_AuthCertificateHook()
  5837 ms  0x2e09 fd:0x7f860aca0dc0
  5837 ms  0x2e09 ret:0x0
  5837 ms  0x2e09 PR_Connect()
  5837 ms  0x2e09 fd:0x7f860aca0dc0
  5849 ms  0x2e09 SSL_ImportFD()
  5849 ms  0x2e09 ret:0x7f860ad6cdf0
  5849 ms  0x2e09 SSL_AuthCertificateHook()
  5849 ms  0x2e09 fd:0x7f860ad6cdf0
  5849 ms  0x2e09 ret:0x0
  5849 ms  0x2e09 PR_Connect()
  5849 ms  0x2e09 fd:0x7f860ad6cdf0
  5856 ms  0x2e09 PK11_Encrypt()
  5856 ms  0x2e09 symkey:0x7f860ac59980
  5867 ms  0x2e09 SSL_ImportFD()
  5867 ms  0x2e09 ret:0x7f860aadb490
  5867 ms  0x2e09 SSL_AuthCertificateHook()
  5867 ms  0x2e09 fd:0x7f860aadb490
  5867 ms  0x2e09 ret:0x0
  5867 ms  0x2e09 PR_Connect()
  5867 ms  0x2e09 fd:0x7f860aadb490
  5871 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5871 ms  0x2e09 cx:0x7f860acd4f88
  5871 ms     | 0x2e09 EC_ValidatePublicKey()
  5871 ms     | 0x2e09 ret:0x0
  5871 ms  0x2e09 ret:0x7f860a82f820::7f860a82f820  e0 22 0c 29                                      .".)
  5871 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5871 ms  0x2e09 cx:0x7f860acd4f88
  5872 ms     | 0x2e09 EC_ValidatePublicKey()
  5874 ms     | 0x2e09 ret:0x0
  5874 ms  0x2e09 ret:0x7f860aa52020::7f860aa52020  c0 24 0c 29                                      .$.)
  5875 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5875 ms  0x2e09 cx:0x7f860acd5128
  5875 ms     | 0x2e09 EC_ValidatePublicKey()
  5875 ms     | 0x2e09 ret:0x0
  5875 ms  0x2e09 ret:0x7f860ac0a820::7f860ac0a820  60 25 0c 29                                      `%.)
  5875 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5875 ms  0x2e09 cx:0x7f860acd5128
  5876 ms     | 0x2e09 EC_ValidatePublicKey()
  5877 ms     | 0x2e09 ret:0x0
  5877 ms  0x2e09 ret:0x7f860ac0c820::7f860ac0c820  40 27 0c 29                                      @'.)
  5878 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5878 ms  0x2e09 cx:0x7f860acd52c8
  5878 ms     | 0x2e09 EC_ValidatePublicKey()
  5878 ms     | 0x2e09 ret:0x0
  5878 ms  0x2e09 ret:0x7f860ac1c020::7f860ac1c020  80 28 0c 29                                      .(.)
  5878 ms  0x2e09 SECKEY_CreateECPrivateKey()
  5878 ms  0x2e09 cx:0x7f860acd52c8
  5879 ms     | 0x2e09 EC_ValidatePublicKey()
  5880 ms     | 0x2e09 ret:0x0
  5880 ms  0x2e09 ret:0x7f860ad46020::7f860ad46020  60 2a 0c 29                                      `*.)
  5897 ms  0x2e09 SSL_ImportFD()
  5897 ms  0x2e09 ret:0x7f860aadb640
  5897 ms  0x2e09 SSL_AuthCertificateHook()
  5897 ms  0x2e09 fd:0x7f860aadb640
  5897 ms  0x2e09 ret:0x0
  5897 ms  0x2e09 PR_Connect()
  5897 ms  0x2e09 fd:0x7f860aadb640
  5907 ms  0x2e09 PK11_Derive()
  5907 ms  0x2e09 basekey:0x7f861e0c0780
  5907 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5907 ms  0x2e09 ret:0x7f860ad78800
  5907 ms  0x2e09 PK11_PubDeriveWithKDF()
  5907 ms  0x2e09 seckey:0x7f860ad46020
  5907 ms     | 0x2e09 EC_ValidatePublicKey()
  5909 ms     | 0x2e09 ret:0x0
  5910 ms  0x2e09 ret:0x7f861e0c0780
  5910 ms  SECKEY_ECParamsToKeySize()
  5910 ms  0x2e09 ret:0x100
  5910 ms  0x2e09 PK11_DeriveWithFlags()
  5910 ms  0x2e09 basekey:0x7f860ad78800
  5910 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5910 ms  0x2e09 ret:0x7f860aa9e680
  5910 ms  0x2e09 PK11_Derive()
  5910 ms  0x2e09 basekey:0x7f861e0c0780
  5910 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5910 ms  0x2e09 ret:0x7f860ac87600
  5910 ms  0x2e09 PK11_DeriveWithFlags()
  5910 ms  0x2e09 basekey:0x7f860ac87600
  5910 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5910 ms  0x2e09 ret:0x7f860ad78800
  5910 ms  0x2e09 PK11_DeriveWithFlags()
  5910 ms  0x2e09 basekey:0x7f860ac87600
  5910 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5910 ms  0x2e09 ret:0x7f861e0c0780
  5910 ms  0x2e09 PK11_DeriveWithFlags()
  5910 ms  0x2e09 basekey:0x7f860ac87600
  5910 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5910 ms  0x2e09 ret:0x7f860aa9e680
  5910 ms  0x2e09 PK11_Derive()
  5910 ms  0x2e09 basekey:0x7f860ac87780
  5910 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5911 ms  0x2e09 ret:0x7f860ac87800
  5911 ms  0x2e09 PK11_DeriveWithFlags()
  5911 ms  0x2e09 basekey:0x7f861e0c0780
  5911 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5911 ms  0x2e09 ret:0x7f860ac87600
  5911 ms  0x2e09 PK11_DeriveWithFlags()
  5911 ms  0x2e09 basekey:0x7f861e0c0780
  5911 ms     | 0x2e09 PK11_DeriveWithTemplate()
  5911 ms  0x2e09 ret:0x7f860aa9e680
  6668 ms  0x2e09 PK11_DeriveWithFlags()
  6668 ms  0x2e09 basekey:0x7f861e0c0780
  6675 ms     | 0x2e09 PK11_DeriveWithTemplate()
  6676 ms  0x2e09 ret:0x7f860aa9e680
  6676 ms  0x2e09 SSL_AuthCertificateComplete()
  6676 ms  0x2e09 fd:0x7f860ac5ffa0
  6676 ms  0x2e09 err:0x0
  6676 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
  6676 ms     | 0x2e09 privk:0x7f860ad42020::7f860ad42020  20 e4 c5 0a                                       ...
  6676 ms     | 0x2e09 privk:0x7f860ad42020::7f860ad42020  e5 e5 e5 e5                                      ....
  6676 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
  6676 ms     | 0x2e09 privk:0x7f860ad3f820::7f860ad3f820  40 e2 c5 0a                                      @...
  6677 ms     | 0x2e09 privk:0x7f860ad3f820::7f860ad3f820  e5 e5 e5 e5                                      ....
  6677 ms  0x2e09 SSL_AuthCertificateComplete()
  6677 ms  0x2e09 fd:0x7f860ad6c460
  6677 ms  0x2e09 err:0x0
  6677 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
  6677 ms     | 0x2e09 privk:0x7f860aa51020::7f860aa51020  f0 d6 cb 0a                                      ....
  6677 ms     | 0x2e09 privk:0x7f860aa51020::7f860aa51020  e5 e5 e5 e5                                      ....
  6677 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
  6677 ms     | 0x2e09 privk:0x7f860aa4f020::7f860aa4f020  c0 d4 cb 0a                                      ....
  6677 ms     | 0x2e09 privk:0x7f860aa4f020::7f860aa4f020  e5 e5 e5 e5                                      ....
  6678 ms  0x2e09 PK11_Encrypt()
  6678 ms  0x2e09 symkey:0x7f860ac5a080
           /* TID 0x2e9b */
  6683 ms  0x2e9b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6683 ms  0x2e9b ret:0x0
           /* TID 0x2e09 */
  6685 ms  0x2e09 PK11_Encrypt()
  6685 ms  0x2e09 symkey:0x7f860aa9f080
  6686 ms  0x2e09 PK11_Derive()
  6686 ms  0x2e09 basekey:0x7f860aa9e680
  6686 ms     | 0x2e09 PK11_DeriveWithTemplate()
  6686 ms  0x2e09 ret:0x7f860ac87780
  6686 ms  0x2e09 PK11_PubDeriveWithKDF()
  6686 ms  0x2e09 seckey:0x7f860a82f820
  6686 ms     | 0x2e09 EC_ValidatePublicKey()
  6686 ms     | 0x2e09 ret:0x0
  6687 ms  0x2e09 ret:0x7f860aa9e680
  6687 ms  SECKEY_ECParamsToKeySize()
  6687 ms  0x2e09 ret:0xff
  6687 ms  0x2e09 PK11_DeriveWithFlags()
  6687 ms  0x2e09 basekey:0x7f860ac87780
  6687 ms     | 0x2e09 PK11_DeriveWithTemplate()
  6687 ms  0x2e09 ret:0x7f860adab900
  6687 ms  0x2e09 PK11_Derive()
  6687 ms  0x2e09 basekey:0x7f860aa9e680
  6687 ms     | 0x2e09 PK11_DeriveWithTemplate()
  6688 ms  0x2e09 ret:0x7f860adab980
  6688 ms  0x2e09 PK11_DeriveWithFlags()
  6688 ms  0x2e09 basekey:0x7f860adab980
  6688 ms     | 0x2e09 PK11_DeriveWithTemplate()
  6688 ms  0x2e09 ret:0x7f860ac87780
  6688 ms  0x2e09 PK11_DeriveWithFlags()
  6688 ms  0x2e09 basekey:0x7f860adab980
  6688 ms     | 0x2e09 PK11_DeriveWithTemplate()
  6688 ms  0x2e09 ret:0x7f860aa9e680
  6688 ms  0x2e09 PK11_DeriveWithFlags()
  6688 ms  0x2e09 basekey:0x7f860adab980
  6688 ms     | 0x2e09 PK11_DeriveWithTemplate()
  6688 ms  0x2e09 ret:0x7f860adab900
  6688 ms  0x2e09 PK11_Derive()
  6688 ms  0x2e09 basekey:0x7f860af22100
  6688 ms     | 0x2e09 PK11_DeriveWithTemplate()
  6688 ms  0x2e09 ret:0x7f860af22200
  6688 ms  0x2e09 PK11_DeriveWithFlags()
  6688 ms  0x2e09 basekey:0x7f860aa9e680
  6688 ms     | 0x2e09 PK11_DeriveWithTemplate()
  6688 ms  0x2e09 ret:0x7f860adab980
  6688 ms  0x2e09 PK11_DeriveWithFlags()
  6688 ms  0x2e09 basekey:0x7f860aa9e680
  6688 ms     | 0x2e09 PK11_DeriveWithTemplate()
  6688 ms  0x2e09 ret:0x7f860adab900
           /* TID 0x2e11 */
  6691 ms  0x2e11 PR_Close()
  6691 ms  0x2e11 fd:0x7f860aadb340
           /* TID 0x2e09 */
  7691 ms  0x2e09 PK11_DeriveWithFlags()
  7691 ms  0x2e09 basekey:0x7f860aa9e680
  7693 ms     | 0x2e09 PK11_DeriveWithTemplate()
  7693 ms  0x2e09 ret:0x7f860adab900
  7693 ms  0x2e09 PK11_Derive()
  7693 ms  0x2e09 basekey:0x7f860adab900
  7693 ms     | 0x2e09 PK11_DeriveWithTemplate()
  7694 ms  0x2e09 ret:0x7f860af22100
  7694 ms  0x2e09 PK11_PubDeriveWithKDF()
  7694 ms  0x2e09 seckey:0x7f860ac0a820
  7694 ms     | 0x2e09 EC_ValidatePublicKey()
  7694 ms     | 0x2e09 ret:0x0
  7697 ms  0x2e09 ret:0x7f860adab900
  7697 ms  SECKEY_ECParamsToKeySize()
  7697 ms  0x2e09 ret:0xff
  7697 ms  0x2e09 PK11_DeriveWithFlags()
  7697 ms  0x2e09 basekey:0x7f860af22100
  7697 ms     | 0x2e09 PK11_DeriveWithTemplate()
  7697 ms  0x2e09 ret:0x7f860af22480
  7697 ms  0x2e09 PK11_Derive()
  7697 ms  0x2e09 basekey:0x7f860adab900
  7697 ms     | 0x2e09 PK11_DeriveWithTemplate()
  7697 ms  0x2e09 ret:0x7f860af22500
  7698 ms  0x2e09 PK11_DeriveWithFlags()
  7698 ms  0x2e09 basekey:0x7f860af22500
  7698 ms     | 0x2e09 PK11_DeriveWithTemplate()
  7698 ms  0x2e09 ret:0x7f860af22100
  7698 ms  0x2e09 PK11_DeriveWithFlags()
  7698 ms  0x2e09 basekey:0x7f860af22500
  7698 ms     | 0x2e09 PK11_DeriveWithTemplate()
  7698 ms  0x2e09 ret:0x7f860adab900
  7699 ms  0x2e09 PK11_DeriveWithFlags()
  7699 ms  0x2e09 basekey:0x7f860af22500
  7699 ms     | 0x2e09 PK11_DeriveWithTemplate()
  7699 ms  0x2e09 ret:0x7f860af22480
  7699 ms  0x2e09 PK11_Derive()
  7699 ms  0x2e09 basekey:0x7f860af22580
  7699 ms     | 0x2e09 PK11_DeriveWithTemplate()
  7699 ms  0x2e09 ret:0x7f860af22600
  7699 ms  0x2e09 PK11_DeriveWithFlags()
  7699 ms  0x2e09 basekey:0x7f860adab900
  7699 ms     | 0x2e09 PK11_DeriveWithTemplate()
  7699 ms  0x2e09 ret:0x7f860af22500
  7699 ms  0x2e09 PK11_DeriveWithFlags()
  7699 ms  0x2e09 basekey:0x7f860adab900
  7699 ms     | 0x2e09 PK11_DeriveWithTemplate()
  7699 ms  0x2e09 ret:0x7f860af22480
  8696 ms  0x2e09 PK11_DeriveWithFlags()
  8696 ms  0x2e09 basekey:0x7f860adab900
  8696 ms     | 0x2e09 PK11_DeriveWithTemplate()
  8696 ms  0x2e09 ret:0x7f860af22480
  8696 ms  0x2e09 SSL_ImportFD()
  8696 ms  0x2e09 ret:0x7f861bfde3a0
  8696 ms  0x2e09 SSL_AuthCertificateHook()
  8696 ms  0x2e09 fd:0x7f861bfde3a0
  8696 ms  0x2e09 ret:0x0
  8697 ms  0x2e09 PR_Connect()
  8697 ms  0x2e09 fd:0x7f861bfde3a0
  8701 ms  0x2e09 SSL_AuthCertificateComplete()
  8701 ms  0x2e09 fd:0x7f860ad6c580
  8701 ms  0x2e09 err:0x0
  8701 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
  8701 ms     | 0x2e09 privk:0x7f860a822820::7f860a822820  a0 8b d9 0a                                      ....
  8702 ms     | 0x2e09 privk:0x7f860a822820::7f860a822820  e5 e5 e5 e5                                      ....
  8702 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
  8702 ms     | 0x2e09 privk:0x7f860a81f820::7f860a81f820  70 89 d9 0a                                      p...
  8702 ms     | 0x2e09 privk:0x7f860a81f820::7f860a81f820  e5 e5 e5 e5                                      ....
           /* TID 0x2e9b */
  8708 ms  0x2e9b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8708 ms  0x2e9b ret:0x0
           /* TID 0x2e09 */
  8709 ms  0x2e09 PK11_Encrypt()
  8709 ms  0x2e09 symkey:0x7f860af48900
  8711 ms  0x2e09 PK11_Encrypt()
  8711 ms  0x2e09 symkey:0x7f860adaa300
  8712 ms  0x2e09 SSL_AuthCertificateComplete()
  8712 ms  0x2e09 fd:0x7f860ad6c520
  8712 ms  0x2e09 err:0x0
  8712 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
  8712 ms     | 0x2e09 privk:0x7f860aa4c820::7f860aa4c820  60 d0 cb 0a                                      `...
  8712 ms     | 0x2e09 privk:0x7f860aa4c820::7f860aa4c820  e5 e5 e5 e5                                      ....
  8712 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
  8712 ms     | 0x2e09 privk:0x7f860aa4a820::7f860aa4a820  40 ec c5 0a                                      @...
  8712 ms     | 0x2e09 privk:0x7f860aa4a820::7f860aa4a820  e5 e5 e5 e5                                      ....
  8713 ms  0x2e09 PK11_Encrypt()
  8713 ms  0x2e09 symkey:0x7f860ac59980
  8713 ms  0x2e09 PK11_Encrypt()
  8713 ms  0x2e09 symkey:0x7f860aa9fd80
  8720 ms  0x2e09 PK11_Encrypt()
  8720 ms  0x2e09 symkey:0x7f860aa9f780
  8721 ms  0x2e09 SECKEY_CreateECPrivateKey()
  8721 ms  0x2e09 cx:0x7f860acd5608
  8723 ms     | 0x2e09 EC_ValidatePublicKey()
  8723 ms     | 0x2e09 ret:0x0
  8723 ms  0x2e09 ret:0x7f860a822820::7f860a822820  80 8d fc 1b                                      ....
  8723 ms  0x2e09 SECKEY_CreateECPrivateKey()
  8723 ms  0x2e09 cx:0x7f860acd5608
  8724 ms     | 0x2e09 EC_ValidatePublicKey()
  8732 ms     | 0x2e09 ret:0x0
  8732 ms  0x2e09 ret:0x7f860aa4a820::7f860aa4a820  30 ed c5 0a                                      0...
  8732 ms  0x2e09 SECKEY_CreateECPrivateKey()
  8732 ms  0x2e09 cx:0x7f860acd57a8
  8733 ms     | 0x2e09 EC_ValidatePublicKey()
  8733 ms     | 0x2e09 ret:0x0
  8733 ms  0x2e09 ret:0x7f860aa53820::7f860aa53820  50 76 f2 0a                                      Pv..
  8733 ms  0x2e09 SECKEY_CreateECPrivateKey()
  8733 ms  0x2e09 cx:0x7f860acd57a8
  8734 ms     | 0x2e09 EC_ValidatePublicKey()
  8736 ms     | 0x2e09 ret:0x0
  8736 ms  0x2e09 ret:0x7f860ad3f820::7f860ad3f820  b0 8f fc 1b                                      ....
  8737 ms  0x2e09 PK11_Encrypt()
  8737 ms  0x2e09 symkey:0x7f860ac5a080
  8738 ms  0x2e09 PK11_Encrypt()
  8738 ms  0x2e09 symkey:0x7f860aa9f080
           /* TID 0x2e11 */
  8739 ms  0x2e11 PR_Close()
  8739 ms  0x2e11 fd:0x7f860aadb250
  8747 ms  0x2e11 PR_Close()
  8747 ms  0x2e11 fd:0x7f860aadb250
           /* TID 0x2e09 */
  8747 ms  0x2e09 SSL_ImportFD()
  8747 ms  0x2e09 ret:0x7f860ac5f580
  8747 ms  0x2e09 SSL_AuthCertificateHook()
  8747 ms  0x2e09 fd:0x7f860ac5f580
  8747 ms  0x2e09 ret:0x0
  8747 ms  0x2e09 PR_Connect()
  8747 ms  0x2e09 fd:0x7f860ac5f580
  8747 ms  0x2e09 SSL_ImportFD()
  8747 ms  0x2e09 ret:0x7f860aadb280
  8747 ms  0x2e09 SSL_AuthCertificateHook()
  8747 ms  0x2e09 fd:0x7f860aadb280
  8747 ms  0x2e09 ret:0x0
  8747 ms  0x2e09 PR_Connect()
  8747 ms  0x2e09 fd:0x7f860aadb280
  8750 ms  0x2e09 SSL_ImportFD()
  8750 ms  0x2e09 ret:0x7f861bfded60
  8750 ms  0x2e09 SSL_AuthCertificateHook()
  8750 ms  0x2e09 fd:0x7f861bfded60
  8750 ms  0x2e09 ret:0x0
  8750 ms  0x2e09 PR_Connect()
  8750 ms  0x2e09 fd:0x7f861bfded60
  8750 ms  0x2e09 SSL_ImportFD()
  8750 ms  0x2e09 ret:0x7f860b22fbb0
  8750 ms  0x2e09 SSL_AuthCertificateHook()
  8750 ms  0x2e09 fd:0x7f860b22fbb0
  8750 ms  0x2e09 ret:0x0
  8750 ms  0x2e09 PR_Connect()
  8750 ms  0x2e09 fd:0x7f860b22fbb0
  8750 ms  0x2e09 SSL_ImportFD()
  8750 ms  0x2e09 ret:0x7f861c1eda00
  8750 ms  0x2e09 SSL_AuthCertificateHook()
  8750 ms  0x2e09 fd:0x7f861c1eda00
  8750 ms  0x2e09 ret:0x0
  8751 ms  0x2e09 PR_Connect()
  8751 ms  0x2e09 fd:0x7f861c1eda00
  8751 ms  0x2e09 SSL_ImportFD()
  8751 ms  0x2e09 ret:0x7f860b0fdc70
  8751 ms  0x2e09 SSL_AuthCertificateHook()
  8751 ms  0x2e09 fd:0x7f860b0fdc70
  8751 ms  0x2e09 ret:0x0
  8751 ms  0x2e09 PR_Connect()
  8751 ms  0x2e09 fd:0x7f860b0fdc70
  8751 ms  0x2e09 SSL_ImportFD()
  8751 ms  0x2e09 ret:0x7f861bfded30
  8751 ms  0x2e09 SSL_AuthCertificateHook()
  8751 ms  0x2e09 fd:0x7f861bfded30
  8751 ms  0x2e09 ret:0x0
  8751 ms  0x2e09 PR_Connect()
  8751 ms  0x2e09 fd:0x7f861bfded30
  8751 ms  0x2e09 SSL_ImportFD()
  8751 ms  0x2e09 ret:0x7f860b22fe80
  8751 ms  0x2e09 SSL_AuthCertificateHook()
  8751 ms  0x2e09 fd:0x7f860b22fe80
  8751 ms  0x2e09 ret:0x0
  8752 ms  0x2e09 PR_Connect()
  8752 ms  0x2e09 fd:0x7f860b22fe80
  8752 ms  0x2e09 SSL_ImportFD()
  8752 ms  0x2e09 ret:0x7f860af32a60
  8752 ms  0x2e09 SSL_AuthCertificateHook()
  8752 ms  0x2e09 fd:0x7f860af32a60
  8752 ms  0x2e09 ret:0x0
  8752 ms  0x2e09 PR_Connect()
  8752 ms  0x2e09 fd:0x7f860af32a60
  8753 ms  0x2e09 SSL_ImportFD()
  8753 ms  0x2e09 ret:0x7f860b2c7f10
  8753 ms  0x2e09 SSL_AuthCertificateHook()
  8753 ms  0x2e09 fd:0x7f860b2c7f10
  8753 ms  0x2e09 ret:0x0
  8753 ms  0x2e09 PR_Connect()
  8753 ms  0x2e09 fd:0x7f860b2c7f10
  8764 ms  0x2e09 SECKEY_CreateECPrivateKey()
  8764 ms  0x2e09 cx:0x7f860acd67e8
  8765 ms     | 0x2e09 EC_ValidatePublicKey()
  8765 ms     | 0x2e09 ret:0x0
  8765 ms  0x2e09 ret:0x7f860ad4a820::7f860ad4a820  30 3d 12 0b                                      0=..
  8765 ms  0x2e09 SECKEY_CreateECPrivateKey()
  8765 ms  0x2e09 cx:0x7f860acd67e8
  8766 ms     | 0x2e09 EC_ValidatePublicKey()
  8767 ms     | 0x2e09 ret:0x0
  8767 ms  0x2e09 ret:0x7f860b003020::7f860b003020  e0 82 fd 1b                                      ....
           /* TID 0x2e11 */
  8770 ms  0x2e11 PR_Close()
  8770 ms  0x2e11 fd:0x7f861c38f670
           /* TID 0x2e09 */
  8773 ms  0x2e09 SECKEY_CreateECPrivateKey()
  8773 ms  0x2e09 cx:0x7f860b20a988
  8773 ms     | 0x2e09 EC_ValidatePublicKey()
  8774 ms     | 0x2e09 ret:0x0
  8774 ms  0x2e09 ret:0x7f860b010020::7f860b010020  20 84 fd 1b                                       ...
  8774 ms  0x2e09 SECKEY_CreateECPrivateKey()
  8774 ms  0x2e09 cx:0x7f860b20a988
  8774 ms     | 0x2e09 EC_ValidatePublicKey()
  8778 ms     | 0x2e09 ret:0x0
  8778 ms  0x2e09 ret:0x7f860b012020::7f860b012020  50 86 fd 1b                                      P...
  8779 ms  0x2e09 SECKEY_CreateECPrivateKey()
  8779 ms  0x2e09 cx:0x7f86444a84a8
  8779 ms     | 0x2e09 EC_ValidatePublicKey()
  8779 ms     | 0x2e09 ret:0x0
  8779 ms  0x2e09 ret:0x7f860b01c020::7f860b01c020  90 87 fd 1b                                      ....
  8779 ms  0x2e09 SECKEY_CreateECPrivateKey()
  8779 ms  0x2e09 cx:0x7f86444a84a8
  8780 ms     | 0x2e09 EC_ValidatePublicKey()
  8782 ms     | 0x2e09 ret:0x0
  8782 ms  0x2e09 ret:0x7f860b020020::7f860b020020  c0 89 fd 1b                                      ....
  8782 ms  0x2e09 SECKEY_CreateECPrivateKey()
  8782 ms  0x2e09 cx:0x7f860b20acc8
  8783 ms     | 0x2e09 EC_ValidatePublicKey()
  8783 ms     | 0x2e09 ret:0x0
  8783 ms  0x2e09 ret:0x7f860b255820::7f860b255820  00 8b fd 1b                                      ....
  8783 ms  0x2e09 SECKEY_CreateECPrivateKey()
  8783 ms  0x2e09 cx:0x7f860b20acc8
  8783 ms     | 0x2e09 EC_ValidatePublicKey()
  8785 ms     | 0x2e09 ret:0x0
  8785 ms  0x2e09 ret:0x7f860b258020::7f860b258020  80 8d fd 1b                                      ....
  8786 ms  SECKEY_ECParamsToKeySize()
  8786 ms  0x2e09 ret:0x100
  8786 ms  0x2e09 SECKEY_CreateECPrivateKey()
  8786 ms  0x2e09 cx:0x7f860acd5608
  8786 ms     | 0x2e09 EC_ValidatePublicKey()
  8788 ms     | 0x2e09 ret:0x0
  8788 ms  0x2e09 ret:0x7f861c169020::7f861c169020  00 11 35 1c                                      ..5.
  8788 ms  0x2e09 PK11_PubDeriveWithKDF()
  8788 ms  0x2e09 seckey:0x7f861c169020
  8788 ms     | 0x2e09 EC_ValidatePublicKey()
  8790 ms     | 0x2e09 ret:0x0
  8791 ms  0x2e09 ret:0x7f860af22480
  8791 ms  0x2e09 PK11_DeriveWithFlags()
  8791 ms  0x2e09 basekey:0x7f860af22480
  8791 ms     | 0x2e09 PK11_DeriveWithTemplate()
  8791 ms  0x2e09 ret:0x7f860af22580
  8791 ms  0x2e09 PK11_Derive()
  8791 ms  0x2e09 basekey:0x7f860af22580
  8791 ms     | 0x2e09 PK11_DeriveWithTemplate()
  8792 ms  0x2e09 ret:0x7f860ad79980
  8792 ms  0x2e09 SECKEY_DestroyPrivateKey()
  8792 ms  0x2e09 privk:0x7f861c169020::7f861c169020  00 11 35 1c                                      ..5.
  8792 ms  0x2e09 privk:0x7f861c169020::7f861c169020  e5 e5 e5 e5                                      ....
  8792 ms  0x2e09 PK11_Encrypt()
  8792 ms  0x2e09 symkey:0x7f860b246400
           /* TID 0x2e11 */
  9476 ms  0x2e11 PR_Close()
  9476 ms  0x2e11 fd:0x7f860aadb2b0
  9476 ms  0x2e11 PR_Close()
  9476 ms  0x2e11 fd:0x7f860ace10a0
  9476 ms  0x2e11 PR_Close()
  9476 ms  0x2e11 fd:0x7f860af32e20
  9476 ms  0x2e11 PR_Close()
  9476 ms  0x2e11 fd:0x7f860b0fd1f0
  9476 ms  0x2e11 PR_Close()
  9476 ms  0x2e11 fd:0x7f861bfdef70
  9476 ms  0x2e11 PR_Close()
  9476 ms  0x2e11 fd:0x7f861c1ed9d0
  9480 ms  0x2e11 PR_Close()
  9480 ms  0x2e11 fd:0x7f860aadb2b0
  9480 ms  0x2e11 PR_Close()
  9480 ms  0x2e11 fd:0x7f860ace10a0
  9480 ms  0x2e11 PR_Close()
  9480 ms  0x2e11 fd:0x7f860af32e20
  9480 ms  0x2e11 PR_Close()
  9480 ms  0x2e11 fd:0x7f860b0fd1f0
  9480 ms  0x2e11 PR_Close()
  9480 ms  0x2e11 fd:0x7f861bfdef70
  9480 ms  0x2e11 PR_Close()
  9480 ms  0x2e11 fd:0x7f861c1ed9d0
  9480 ms  0x2e11 PR_Close()
  9480 ms  0x2e11 fd:0x7f861c38f8b0
  9481 ms  0x2e11 PR_Close()
  9481 ms  0x2e11 fd:0x7f861c38f970
  9481 ms  0x2e11 PR_Close()
  9481 ms  0x2e11 fd:0x7f861c38f9d0
  9481 ms  0x2e11 PR_Close()
  9481 ms  0x2e11 fd:0x7f861c38faf0
  9481 ms  0x2e11 PR_Close()
  9481 ms  0x2e11 fd:0x7f861c38fb50
  9481 ms  0x2e11 PR_Close()
  9481 ms  0x2e11 fd:0x7f861c38fd30
  9481 ms  0x2e11 PR_Close()
  9481 ms  0x2e11 fd:0x7f861c38fd90
  9481 ms  0x2e11 PR_Close()
  9481 ms  0x2e11 fd:0x7f861c38fdf0
  9481 ms  0x2e11 PR_Close()
  9481 ms  0x2e11 fd:0x7f861c38fe50
  9481 ms  0x2e11 PR_Close()
  9481 ms  0x2e11 fd:0x7f861c38feb0
  9481 ms  0x2e11 PR_Close()
  9481 ms  0x2e11 fd:0x7f861c38ff10
  9481 ms  0x2e11 PR_Close()
  9481 ms  0x2e11 fd:0x7f861c38ff70
  9481 ms  0x2e11 PR_Close()
  9481 ms  0x2e11 fd:0x7f861c38ffd0
           /* TID 0x2e9a */
  9706 ms  0x2e9a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x2e09 */
  9706 ms  SECKEY_ECParamsToKeySize()
  9706 ms  0x2e09 ret:0x100
  9706 ms  0x2e09 SECKEY_CreateECPrivateKey()
  9706 ms  0x2e09 cx:0x7f860acd57a8
  9707 ms     | 0x2e09 EC_ValidatePublicKey()
  9708 ms     | 0x2e09 ret:0x0
  9708 ms  0x2e09 ret:0x7f861c35f020::7f861c35f020  00 16 35 1c                                      ..5.
  9708 ms  0x2e09 PK11_PubDeriveWithKDF()
  9708 ms  0x2e09 seckey:0x7f861c35f020
  9708 ms     | 0x2e09 EC_ValidatePublicKey()
  9710 ms     | 0x2e09 ret:0x0
  9711 ms  0x2e09 ret:0x7f860af22480
  9711 ms  0x2e09 PK11_DeriveWithFlags()
  9711 ms  0x2e09 basekey:0x7f860af22480
  9711 ms     | 0x2e09 PK11_DeriveWithTemplate()
  9711 ms  0x2e09 ret:0x7f860b246e80
  9711 ms  0x2e09 PK11_Derive()
  9711 ms  0x2e09 basekey:0x7f860b246e80
  9711 ms     | 0x2e09 PK11_DeriveWithTemplate()
  9711 ms  0x2e09 ret:0x7f860b246f80
  9711 ms  0x2e09 SECKEY_DestroyPrivateKey()
  9711 ms  0x2e09 privk:0x7f861c35f020::7f861c35f020  00 16 35 1c                                      ..5.
  9711 ms  0x2e09 privk:0x7f861c35f020::7f861c35f020  e5 e5 e5 e5                                      ....
  9712 ms  0x2e09 PK11_Encrypt()
  9712 ms  0x2e09 symkey:0x7f860b247100
           /* TID 0x2e9a */
  9713 ms  0x2e9a ret:0x0
           /* TID 0x2e09 */
  9717 ms  0x2e09 SSL_AuthCertificateComplete()
  9717 ms  0x2e09 fd:0x7f860ac5feb0
  9717 ms  0x2e09 err:0x0
  9717 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
  9717 ms     | 0x2e09 privk:0x7f860aa43820::7f860aa43820  e0 e7 c5 0a                                      ....
  9717 ms     | 0x2e09 privk:0x7f860aa43820::7f860aa43820  e5 e5 e5 e5                                      ....
  9717 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
  9717 ms     | 0x2e09 privk:0x7f860aa41820::7f860aa41820  60 e5 c5 0a                                      `...
  9717 ms     | 0x2e09 privk:0x7f860aa41820::7f860aa41820  e5 e5 e5 e5                                      ....
  9717 ms  0x2e09 SSL_AuthCertificateComplete()
  9717 ms  0x2e09 fd:0x7f860ad6c760
  9717 ms  0x2e09 err:0x0
  9717 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
  9717 ms     | 0x2e09 privk:0x7f860b26f820::7f860b26f820  00 e1 c5 0a                                      ....
  9717 ms     | 0x2e09 privk:0x7f860b26f820::7f860b26f820  e5 e5 e5 e5                                      ....
  9717 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
  9717 ms     | 0x2e09 privk:0x7f860b26d820::7f860b26d820  30 98 1f 0b                                      0...
  9717 ms     | 0x2e09 privk:0x7f860b26d820::7f860b26d820  e5 e5 e5 e5                                      ....
  9717 ms  0x2e09 SSL_AuthCertificateComplete()
  9717 ms  0x2e09 fd:0x7f860aadb490
  9717 ms  0x2e09 err:0x0
  9718 ms  0x2e09 PK11_Encrypt()
  9718 ms  0x2e09 symkey:0x7f860aa9f580
  9719 ms  0x2e09 PK11_Encrypt()
  9719 ms  0x2e09 symkey:0x7f860aa9eb80
  9719 ms  0x2e09 PK11_Encrypt()
  9719 ms  0x2e09 symkey:0x7f860b246400
           /* TID 0x2e9a */
 11719 ms  0x2e9a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x2e09 */
 11723 ms  SECKEY_ECParamsToKeySize()
 11723 ms  0x2e09 ret:0x100
 11723 ms  0x2e09 SECKEY_CreateECPrivateKey()
 11723 ms  0x2e09 cx:0x7f860acd67e8
 11726 ms     | 0x2e09 EC_ValidatePublicKey()
 11731 ms     | 0x2e09 ret:0x0
 11732 ms  0x2e09 ret:0x7f860ad4b020::7f860ad4b020  60 8f fc 1b                                      `...
 11732 ms  0x2e09 PK11_PubDeriveWithKDF()
 11732 ms  0x2e09 seckey:0x7f860ad4b020
 11732 ms     | 0x2e09 EC_ValidatePublicKey()
           /* TID 0x2e65 */
 11734 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11734 ms  0x2e65 ret:0x0
           /* TID 0x2e9a */
 11735 ms  0x2e9a ret:0x0
           /* TID 0x2e09 */
 11742 ms     | 0x2e09 ret:0x0
 11749 ms  0x2e09 ret:0x7f860af22480
 11749 ms  0x2e09 PK11_DeriveWithFlags()
 11749 ms  0x2e09 basekey:0x7f860af22480
 11749 ms     | 0x2e09 PK11_DeriveWithTemplate()
 11749 ms  0x2e09 ret:0x7f860ac87f00
 11749 ms  0x2e09 PK11_Derive()
 11749 ms  0x2e09 basekey:0x7f860ac87f00
 11749 ms     | 0x2e09 PK11_DeriveWithTemplate()
 11750 ms  0x2e09 ret:0x7f860ad22080
 11750 ms  0x2e09 SECKEY_DestroyPrivateKey()
 11750 ms  0x2e09 privk:0x7f860ad4b020::7f860ad4b020  60 8f fc 1b                                      `...
 11750 ms  0x2e09 privk:0x7f860ad4b020::7f860ad4b020  e5 e5 e5 e5                                      ....
 11750 ms  0x2e09 PK11_Encrypt()
 11750 ms  0x2e09 symkey:0x7f860ad78e80
 11751 ms  SECKEY_ECParamsToKeySize()
 11751 ms  0x2e09 ret:0x100
 11751 ms  0x2e09 SECKEY_CreateECPrivateKey()
 11751 ms  0x2e09 cx:0x7f860b20a988
 11753 ms     | 0x2e09 EC_ValidatePublicKey()
 11757 ms     | 0x2e09 ret:0x0
 11757 ms  0x2e09 ret:0x7f860b00e820::7f860b00e820  10 8f fd 1b                                      ....
 11757 ms  0x2e09 PK11_PubDeriveWithKDF()
 11757 ms  0x2e09 seckey:0x7f860b00e820
 11758 ms     | 0x2e09 EC_ValidatePublicKey()
 11763 ms     | 0x2e09 ret:0x0
 11765 ms  0x2e09 ret:0x7f860af22480
 11765 ms  0x2e09 PK11_DeriveWithFlags()
 11765 ms  0x2e09 basekey:0x7f860af22480
 11765 ms     | 0x2e09 PK11_DeriveWithTemplate()
 11765 ms  0x2e09 ret:0x7f860ac59580
 11765 ms  0x2e09 PK11_Derive()
 11765 ms  0x2e09 basekey:0x7f860ac59580
 11765 ms     | 0x2e09 PK11_DeriveWithTemplate()
 11765 ms  0x2e09 ret:0x7f860ac59600
 11765 ms  0x2e09 SECKEY_DestroyPrivateKey()
 11765 ms  0x2e09 privk:0x7f860b00e820::7f860b00e820  10 8f fd 1b                                      ....
 11765 ms  0x2e09 privk:0x7f860b00e820::7f860b00e820  e5 e5 e5 e5                                      ....
 11766 ms  0x2e09 PK11_Encrypt()
 11766 ms  0x2e09 symkey:0x7f860ac86080
 11768 ms  0x2e09 SECKEY_CreateECPrivateKey()
 11768 ms  0x2e09 cx:0x7f861c3540a8
 11769 ms     | 0x2e09 EC_ValidatePublicKey()
 11769 ms     | 0x2e09 ret:0x0
 11769 ms  0x2e09 ret:0x7f860ad4c020::7f860ad4c020  40 9c 1f 0b                                      @...
 11769 ms  0x2e09 SECKEY_CreateECPrivateKey()
 11769 ms  0x2e09 cx:0x7f861c3540a8
 11770 ms     | 0x2e09 EC_ValidatePublicKey()
 11776 ms     | 0x2e09 ret:0x0
 11776 ms  0x2e09 ret:0x7f860b268820::7f860b268820  a0 d1 cb 0a                                      ....
 12756 ms  SECKEY_ECParamsToKeySize()
 12758 ms  0x2e09 ret:0xff
 12758 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12758 ms  0x2e09 cx:0x7f86444a84a8
 12760 ms     | 0x2e09 EC_ValidatePublicKey()
 12760 ms     | 0x2e09 ret:0x0
 12760 ms  0x2e09 ret:0x7f861c35b820::7f861c35b820  40 17 35 1c                                      @.5.
 12760 ms  0x2e09 PK11_PubDeriveWithKDF()
 12760 ms  0x2e09 seckey:0x7f861c35b820
 12760 ms     | 0x2e09 EC_ValidatePublicKey()
 12760 ms     | 0x2e09 ret:0x0
 12762 ms  0x2e09 ret:0x7f860af22480
 12762 ms  0x2e09 PK11_DeriveWithFlags()
 12762 ms  0x2e09 basekey:0x7f860af22480
 12762 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12762 ms  0x2e09 ret:0x7f860ac87d80
 12762 ms  0x2e09 PK11_Derive()
 12762 ms  0x2e09 basekey:0x7f860ac87d80
 12762 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12763 ms  0x2e09 ret:0x7f860ad79280
 12763 ms  0x2e09 SECKEY_DestroyPrivateKey()
 12763 ms  0x2e09 privk:0x7f861c35b820::7f861c35b820  40 17 35 1c                                      @.5.
 12763 ms  0x2e09 privk:0x7f861c35b820::7f861c35b820  e5 e5 e5 e5                                      ....
 12763 ms  0x2e09 PK11_Encrypt()
 12763 ms  0x2e09 symkey:0x7f860af48400
           /* TID 0x2e9f */
 12764 ms  0x2e9f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12764 ms  0x2e9f ret:0x0
           /* TID 0x2e9b */
 12766 ms  0x2e9b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12766 ms  0x2e9b ret:0x0
           /* TID 0x2e09 */
 12771 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12771 ms  0x2e09 cx:0x7f86263ea308
 12772 ms     | 0x2e09 EC_ValidatePublicKey()
 12772 ms     | 0x2e09 ret:0x0
 12772 ms  0x2e09 ret:0x7f860b26d020::7f860b26d020  b0 8f fd 1b                                      ....
 12773 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12773 ms  0x2e09 cx:0x7f86263ea308
 12775 ms     | 0x2e09 EC_ValidatePublicKey()
 12779 ms     | 0x2e09 ret:0x0
 12780 ms  0x2e09 ret:0x7f861c16a020::7f861c16a020  50 16 35 1c                                      P.5.
 12783 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12783 ms  0x2e09 cx:0x7f86263e97a8
 12784 ms     | 0x2e09 EC_ValidatePublicKey()
 12784 ms     | 0x2e09 ret:0x0
 12784 ms  0x2e09 ret:0x7f861c35c020::7f861c35c020  90 17 35 1c                                      ..5.
 12784 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12784 ms  0x2e09 cx:0x7f86263e97a8
 12786 ms     | 0x2e09 EC_ValidatePublicKey()
 12789 ms     | 0x2e09 ret:0x0
 12789 ms  0x2e09 ret:0x7f861c35f020::7f861c35f020  c0 19 35 1c                                      ..5.
 12790 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12790 ms  0x2e09 cx:0x7f860b20ae68
 12791 ms     | 0x2e09 EC_ValidatePublicKey()
 12791 ms     | 0x2e09 ret:0x0
 12791 ms  0x2e09 ret:0x7f861c364820::7f861c364820  50 1b 35 1c                                      P.5.
 12791 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12791 ms  0x2e09 cx:0x7f860b20ae68
 12792 ms     | 0x2e09 EC_ValidatePublicKey()
 12794 ms     | 0x2e09 ret:0x0
 12795 ms  0x2e09 ret:0x7f861c368020::7f861c368020  30 1d 35 1c                                      0.5.
           /* TID 0x2e65 */
 12796 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12796 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
 12796 ms  SECKEY_ECParamsToKeySize()
 12796 ms  0x2e09 ret:0x100
 12796 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12796 ms  0x2e09 cx:0x7f860b20acc8
 12797 ms     | 0x2e09 EC_ValidatePublicKey()
 12799 ms     | 0x2e09 ret:0x0
 12799 ms  0x2e09 ret:0x7f861c37a020::7f861c37a020  a0 c1 38 1c                                      ..8.
 12800 ms  0x2e09 PK11_PubDeriveWithKDF()
 12800 ms  0x2e09 seckey:0x7f861c37a020
 12800 ms     | 0x2e09 EC_ValidatePublicKey()
 12802 ms     | 0x2e09 ret:0x0
 12804 ms  0x2e09 ret:0x7f860af22480
 12804 ms  0x2e09 PK11_DeriveWithFlags()
 12804 ms  0x2e09 basekey:0x7f860af22480
 12804 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12804 ms  0x2e09 ret:0x7f860af48a80
 12804 ms  0x2e09 PK11_Derive()
 12804 ms  0x2e09 basekey:0x7f860af48a80
 12804 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12804 ms  0x2e09 ret:0x7f860af48d80
 12804 ms  0x2e09 SECKEY_DestroyPrivateKey()
 12804 ms  0x2e09 privk:0x7f861c37a020::7f861c37a020  a0 c1 38 1c                                      ..8.
 12804 ms  0x2e09 privk:0x7f861c37a020::7f861c37a020  e5 e5 e5 e5                                      ....
 12804 ms  0x2e09 PK11_Encrypt()
 12804 ms  0x2e09 symkey:0x7f860afeb380
 12805 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12805 ms  0x2e09 cx:0x7f860b20ab28
 12805 ms     | 0x2e09 EC_ValidatePublicKey()
 12805 ms     | 0x2e09 ret:0x0
 12805 ms  0x2e09 ret:0x7f861c37a020::7f861c37a020  b0 c0 38 1c                                      ..8.
 12805 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12805 ms  0x2e09 cx:0x7f860b20ab28
 12806 ms     | 0x2e09 EC_ValidatePublicKey()
 12808 ms     | 0x2e09 ret:0x0
 12808 ms  0x2e09 ret:0x7f861d42d820::7f861d42d820  90 c2 38 1c                                      ..8.
 12811 ms  0x2e09 SSL_AuthCertificateComplete()
 12811 ms  0x2e09 fd:0x7f860aca0b80
 12811 ms  0x2e09 err:0x0
 12811 ms     | 0x2e09 PK11_DeriveWithFlags()
 12811 ms     | 0x2e09 basekey:0x7f860af22200
 12811 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12811 ms     | 0x2e09 ret:0x7f860af22480
 12811 ms     | 0x2e09 PK11_DeriveWithFlags()
 12811 ms     | 0x2e09 basekey:0x7f860af22200
 12811 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12811 ms     | 0x2e09 ret:0x7f860ac59e80
 12811 ms     | 0x2e09 PK11_DeriveWithFlags()
 12811 ms     | 0x2e09 basekey:0x7f860af22200
 12811 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12811 ms     | 0x2e09 ret:0x7f860afeba80
 12811 ms     | 0x2e09 PK11_DeriveWithFlags()
 12811 ms     | 0x2e09 basekey:0x7f860ac87780
 12811 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12811 ms     | 0x2e09 ret:0x7f860afebc80
 12811 ms     | 0x2e09 PK11_DeriveWithFlags()
 12811 ms     | 0x2e09 basekey:0x7f860ac87780
 12811 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12811 ms     | 0x2e09 ret:0x7f860afebe80
 12811 ms     | 0x2e09 PK11_DeriveWithFlags()
 12811 ms     | 0x2e09 basekey:0x7f860ac59e80
 12811 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12811 ms     | 0x2e09 ret:0x7f860afebe80
 12811 ms     | 0x2e09 PK11_DeriveWithFlags()
 12811 ms     | 0x2e09 basekey:0x7f860ac59e80
 12811 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12811 ms     | 0x2e09 ret:0x7f860b19af00
 12811 ms     | 0x2e09 PK11_DeriveWithFlags()
 12811 ms     | 0x2e09 basekey:0x7f860ac87780
 12811 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12812 ms     | 0x2e09 ret:0x7f860adab980
 12812 ms     | 0x2e09 PK11_Encrypt()
 12812 ms     | 0x2e09 symkey:0x7f860afebc80
 12812 ms     | 0x2e09 PK11_DeriveWithFlags()
 12812 ms     | 0x2e09 basekey:0x7f860af22480
 12812 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12812 ms     | 0x2e09 ret:0x7f860adab980
 12812 ms     | 0x2e09 PK11_DeriveWithFlags()
 12812 ms     | 0x2e09 basekey:0x7f860af22480
 12812 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12812 ms     | 0x2e09 ret:0x7f860b19af00
 12812 ms     | 0x2e09 PK11_DeriveWithFlags()
 12812 ms     | 0x2e09 basekey:0x7f860af22200
 12812 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12812 ms     | 0x2e09 ret:0x7f860afebc80
 12812 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 12812 ms     | 0x2e09 privk:0x7f860aa52020::7f860aa52020  c0 24 0c 29                                      .$.)
 12812 ms     | 0x2e09 privk:0x7f860aa52020::7f860aa52020  e5 e5 e5 e5                                      ....
 12812 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 12812 ms     | 0x2e09 privk:0x7f860a82f820::7f860a82f820  e0 22 0c 29                                      .".)
 12812 ms     | 0x2e09 privk:0x7f860a82f820::7f860a82f820  e5 e5 e5 e5                                      ....
 12812 ms  0x2e09 SSL_AuthCertificateComplete()
 12812 ms  0x2e09 fd:0x7f860ad6cdf0
 12812 ms  0x2e09 err:0x0
 12812 ms     | 0x2e09 PK11_DeriveWithFlags()
 12812 ms     | 0x2e09 basekey:0x7f860ac87800
 12812 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12812 ms     | 0x2e09 ret:0x7f860aa9e680
 12812 ms     | 0x2e09 PK11_DeriveWithFlags()
 12812 ms     | 0x2e09 basekey:0x7f860ac87800
 12812 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12812 ms     | 0x2e09 ret:0x7f860ac87780
 12812 ms     | 0x2e09 PK11_DeriveWithFlags()
 12812 ms     | 0x2e09 basekey:0x7f860ac87800
 12812 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12812 ms     | 0x2e09 ret:0x7f860af22200
 12812 ms     | 0x2e09 PK11_DeriveWithFlags()
 12812 ms     | 0x2e09 basekey:0x7f860ad78800
 12812 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12812 ms     | 0x2e09 ret:0x7f860b19af00
 12812 ms     | 0x2e09 PK11_DeriveWithFlags()
 12812 ms     | 0x2e09 basekey:0x7f860ad78800
 12812 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12812 ms     | 0x2e09 ret:0x7f860b19af80
 12812 ms     | 0x2e09 PK11_DeriveWithFlags()
 12812 ms     | 0x2e09 basekey:0x7f860ac87780
 12812 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12812 ms     | 0x2e09 ret:0x7f860b19af80
 12812 ms     | 0x2e09 PK11_DeriveWithFlags()
 12812 ms     | 0x2e09 basekey:0x7f860ac87780
 12813 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12813 ms     | 0x2e09 ret:0x7f860b1f3680
 12813 ms     | 0x2e09 PK11_DeriveWithFlags()
 12813 ms     | 0x2e09 basekey:0x7f860ad78800
 12813 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12813 ms     | 0x2e09 ret:0x7f860ac87600
 12813 ms     | 0x2e09 PK11_Encrypt()
 12813 ms     | 0x2e09 symkey:0x7f860b19af00
 12813 ms     | 0x2e09 PK11_DeriveWithFlags()
 12813 ms     | 0x2e09 basekey:0x7f860aa9e680
 12813 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12813 ms     | 0x2e09 ret:0x7f860ac87600
 12813 ms     | 0x2e09 PK11_DeriveWithFlags()
 12813 ms     | 0x2e09 basekey:0x7f860aa9e680
 12813 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12813 ms     | 0x2e09 ret:0x7f860b1f3680
 12813 ms     | 0x2e09 PK11_DeriveWithFlags()
 12813 ms     | 0x2e09 basekey:0x7f860ac87800
 12813 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12813 ms     | 0x2e09 ret:0x7f860b19af00
 12813 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 12813 ms     | 0x2e09 privk:0x7f860ad46020::7f860ad46020  60 2a 0c 29                                      `*.)
 12813 ms     | 0x2e09 privk:0x7f860ad46020::7f860ad46020  e5 e5 e5 e5                                      ....
 12813 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 12813 ms     | 0x2e09 privk:0x7f860ac1c020::7f860ac1c020  80 28 0c 29                                      .(.)
 12813 ms     | 0x2e09 privk:0x7f860ac1c020::7f860ac1c020  e5 e5 e5 e5                                      ....
 12813 ms  0x2e09 SSL_AuthCertificateComplete()
 12813 ms  0x2e09 fd:0x7f860ac5f7f0
 12813 ms  0x2e09 err:0x0
 12813 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 12813 ms     | 0x2e09 privk:0x7f860aa48020::7f860aa48020  00 eb c5 0a                                      ....
 12813 ms     | 0x2e09 privk:0x7f860aa48020::7f860aa48020  e5 e5 e5 e5                                      ....
 12813 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 12813 ms     | 0x2e09 privk:0x7f860aa46020::7f860aa46020  20 e9 c5 0a                                       ...
 12814 ms     | 0x2e09 privk:0x7f860aa46020::7f860aa46020  e5 e5 e5 e5                                      ....
 12814 ms  0x2e09 SSL_AuthCertificateComplete()
 12814 ms  0x2e09 fd:0x7f861bfde3a0
 12814 ms  0x2e09 err:0x0
 12814 ms  0x2e09 SSL_AuthCertificateComplete()
 12814 ms  0x2e09 fd:0x7f860aca0dc0
 12814 ms  0x2e09 err:0x0
 12814 ms     | 0x2e09 PK11_DeriveWithFlags()
 12814 ms     | 0x2e09 basekey:0x7f860af22600
 12814 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12814 ms     | 0x2e09 ret:0x7f861e0c0780
 12814 ms     | 0x2e09 PK11_DeriveWithFlags()
 12814 ms     | 0x2e09 basekey:0x7f860af22600
 12814 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12814 ms     | 0x2e09 ret:0x7f860ad78800
 12814 ms     | 0x2e09 PK11_DeriveWithFlags()
 12814 ms     | 0x2e09 basekey:0x7f860af22600
 12814 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12814 ms     | 0x2e09 ret:0x7f860ac87800
 12814 ms     | 0x2e09 PK11_DeriveWithFlags()
 12814 ms     | 0x2e09 basekey:0x7f860af22100
 12814 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12814 ms     | 0x2e09 ret:0x7f860b1f3680
 12814 ms     | 0x2e09 PK11_DeriveWithFlags()
 12814 ms     | 0x2e09 basekey:0x7f860af22100
 12814 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12814 ms     | 0x2e09 ret:0x7f860b1f3700
 12814 ms     | 0x2e09 PK11_DeriveWithFlags()
 12814 ms     | 0x2e09 basekey:0x7f860ad78800
 12814 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12814 ms     | 0x2e09 ret:0x7f860b1f3700
 12814 ms     | 0x2e09 PK11_DeriveWithFlags()
 12814 ms     | 0x2e09 basekey:0x7f860ad78800
 12814 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12814 ms     | 0x2e09 ret:0x7f860b1f3900
 12814 ms     | 0x2e09 PK11_DeriveWithFlags()
 12814 ms     | 0x2e09 basekey:0x7f860af22100
 12814 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12814 ms     | 0x2e09 ret:0x7f860af22500
 12814 ms     | 0x2e09 PK11_Encrypt()
 12814 ms     | 0x2e09 symkey:0x7f860b1f3680
 12814 ms     | 0x2e09 PK11_DeriveWithFlags()
 12814 ms     | 0x2e09 basekey:0x7f861e0c0780
 12814 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12814 ms     | 0x2e09 ret:0x7f860af22500
 12814 ms     | 0x2e09 PK11_DeriveWithFlags()
 12814 ms     | 0x2e09 basekey:0x7f861e0c0780
 12814 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12814 ms     | 0x2e09 ret:0x7f860b1f3900
 12814 ms     | 0x2e09 PK11_DeriveWithFlags()
 12814 ms     | 0x2e09 basekey:0x7f860af22600
 12814 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12814 ms     | 0x2e09 ret:0x7f860b1f3680
 12814 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 12814 ms     | 0x2e09 privk:0x7f860ac0c820::7f860ac0c820  40 27 0c 29                                      @'.)
 12814 ms     | 0x2e09 privk:0x7f860ac0c820::7f860ac0c820  e5 e5 e5 e5                                      ....
 12815 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 12815 ms     | 0x2e09 privk:0x7f860ac0a820::7f860ac0a820  60 25 0c 29                                      `%.)
 12815 ms     | 0x2e09 privk:0x7f860ac0a820::7f860ac0a820  e5 e5 e5 e5                                      ....
 12815 ms  0x2e09 SSL_AuthCertificateComplete()
 12815 ms  0x2e09 fd:0x7f860aadb640
 12815 ms  0x2e09 err:0x0
 12815 ms  0x2e09 SSL_AuthCertificateComplete()
 12815 ms  0x2e09 fd:0x7f860af32a60
 12815 ms  0x2e09 err:0x0
 12815 ms  0x2e09 SSL_AuthCertificateComplete()
 12815 ms  0x2e09 fd:0x7f860aadb280
 12815 ms  0x2e09 err:0x0
 12815 ms  0x2e09 SSL_AuthCertificateComplete()
 12815 ms  0x2e09 fd:0x7f860b22fbb0
 12815 ms  0x2e09 err:0x0
           /* TID 0x2e11 */
 12816 ms  0x2e11 PR_Close()
 12816 ms  0x2e11 fd:0x7f860aadb040
 12817 ms  0x2e11 PR_Close()
 12817 ms  0x2e11 fd:0x7f860ace13d0
           /* TID 0x2e09 */
 12818 ms  0x2e09 PK11_Encrypt()
 12818 ms  0x2e09 symkey:0x7f860aa9fa80
 12821 ms  0x2e09 PK11_Encrypt()
 12821 ms  0x2e09 symkey:0x7f860adab980
 12821 ms  0x2e09 PK11_Encrypt()
 12821 ms  0x2e09 symkey:0x7f860adab980
 12821 ms  0x2e09 PK11_Encrypt()
 12821 ms  0x2e09 symkey:0x7f860af22500
 12821 ms  0x2e09 PK11_Encrypt()
 12821 ms  0x2e09 symkey:0x7f860ac87600
 12822 ms  0x2e09 SECKEY_DestroyPrivateKey()
 12822 ms  0x2e09 privk:0x7f860aa4a820::7f860aa4a820  30 ed c5 0a                                      0...
 12822 ms  0x2e09 privk:0x7f860aa4a820::7f860aa4a820  e5 e5 e5 e5                                      ....
 12822 ms  0x2e09 SECKEY_DestroyPrivateKey()
 12822 ms  0x2e09 privk:0x7f860a822820::7f860a822820  80 8d fc 1b                                      ....
 12822 ms  0x2e09 privk:0x7f860a822820::7f860a822820  e5 e5 e5 e5                                      ....
           /* TID 0x2e11 */
 12823 ms  0x2e11 PR_Close()
 12823 ms  0x2e11 fd:0x7f860aadb580
           /* TID 0x2e09 */
 12827 ms  0x2e09 PK11_Encrypt()
 12827 ms  0x2e09 symkey:0x7f860b247100
 12827 ms  0x2e09 SECKEY_DestroyPrivateKey()
 12827 ms  0x2e09 privk:0x7f860b003020::7f860b003020  e0 82 fd 1b                                      ....
 12827 ms  0x2e09 privk:0x7f860b003020::7f860b003020  e5 e5 e5 e5                                      ....
 12827 ms  0x2e09 SECKEY_DestroyPrivateKey()
 12827 ms  0x2e09 privk:0x7f860ad4a820::7f860ad4a820  30 3d 12 0b                                      0=..
 12827 ms  0x2e09 privk:0x7f860ad4a820::7f860ad4a820  e5 e5 e5 e5                                      ....
 12828 ms  0x2e09 PK11_Encrypt()
 12828 ms  0x2e09 symkey:0x7f860ad78e80
 12828 ms  0x2e09 PK11_Encrypt()
 12828 ms  0x2e09 symkey:0x7f860ad78e80
 12828 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12828 ms  0x2e09 cx:0x7f860acd6cc8
 12828 ms     | 0x2e09 EC_ValidatePublicKey()
 12828 ms     | 0x2e09 ret:0x0
 12828 ms  0x2e09 ret:0x7f860aa49820::7f860aa49820  40 7c f2 0a                                      @|..
 12828 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12828 ms  0x2e09 cx:0x7f860acd6cc8
 12829 ms     | 0x2e09 EC_ValidatePublicKey()
 12834 ms     | 0x2e09 ret:0x0
 12835 ms  0x2e09 ret:0x7f860aa52020::7f860aa52020  30 3d 12 0b                                      0=..
 12836 ms  0x2e09 PK11_Derive()
 12836 ms  0x2e09 basekey:0x7f860adab900
 12836 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12836 ms  0x2e09 ret:0x7f860af22100
 12836 ms  0x2e09 PK11_PubDeriveWithKDF()
 12836 ms  0x2e09 seckey:0x7f860ad4c020
 12836 ms     | 0x2e09 EC_ValidatePublicKey()
 12836 ms     | 0x2e09 ret:0x0
 12837 ms  0x2e09 ret:0x7f860adab900
 12837 ms  SECKEY_ECParamsToKeySize()
 12837 ms  0x2e09 ret:0xff
 12837 ms  0x2e09 PK11_DeriveWithFlags()
 12837 ms  0x2e09 basekey:0x7f860af22100
 12837 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12837 ms  0x2e09 ret:0x7f860af22600
 12837 ms  0x2e09 PK11_Derive()
 12837 ms  0x2e09 basekey:0x7f860adab900
 12837 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12837 ms  0x2e09 ret:0x7f860b1f3900
 12837 ms  0x2e09 PK11_DeriveWithFlags()
 12837 ms  0x2e09 basekey:0x7f860b1f3900
 12837 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12837 ms  0x2e09 ret:0x7f860af22100
 12837 ms  0x2e09 PK11_DeriveWithFlags()
 12837 ms  0x2e09 basekey:0x7f860b1f3900
 12837 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12837 ms  0x2e09 ret:0x7f860adab900
 12837 ms  0x2e09 PK11_DeriveWithFlags()
 12837 ms  0x2e09 basekey:0x7f860b1f3900
 12837 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12837 ms  0x2e09 ret:0x7f860af22600
 12837 ms  0x2e09 PK11_Derive()
 12837 ms  0x2e09 basekey:0x7f860ac86580
 12837 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12837 ms  0x2e09 ret:0x7f860b246900
 12837 ms  0x2e09 PK11_DeriveWithFlags()
 12837 ms  0x2e09 basekey:0x7f860adab900
 12837 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12837 ms  0x2e09 ret:0x7f860b1f3900
 12837 ms  0x2e09 PK11_DeriveWithFlags()
 12837 ms  0x2e09 basekey:0x7f860adab900
 12837 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12837 ms  0x2e09 ret:0x7f860af22600
 12838 ms  SECKEY_ECParamsToKeySize()
 12838 ms  0x2e09 ret:0x100
 12839 ms  SECKEY_ECParamsToBasePointOrderLen()
 12839 ms  0x2e09 ret:0x100
 12839 ms  SECKEY_ECParamsToBasePointOrderLen()
 12839 ms  0x2e09 ret:0x100
 12839 ms  0x2e09 EC_ValidatePublicKey()
 12840 ms  0x2e09 ret:0x0
 12842 ms  0x2e09 PK11_DeriveWithFlags()
 12842 ms  0x2e09 basekey:0x7f860adab900
 12842 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12842 ms  0x2e09 ret:0x7f860af22600
 12842 ms  0x2e09 SECKEY_DestroyPrivateKey()
 12842 ms  0x2e09 privk:0x7f860b020020::7f860b020020  c0 89 fd 1b                                      ....
 12842 ms  0x2e09 privk:0x7f860b020020::7f860b020020  e5 e5 e5 e5                                      ....
 12842 ms  0x2e09 SECKEY_DestroyPrivateKey()
 12842 ms  0x2e09 privk:0x7f860b01c020::7f860b01c020  90 87 fd 1b                                      ....
 12842 ms  0x2e09 privk:0x7f860b01c020::7f860b01c020  e5 e5 e5 e5                                      ....
 12843 ms  0x2e09 PK11_Encrypt()
 12843 ms  0x2e09 symkey:0x7f860af48400
 12843 ms  0x2e09 PK11_Encrypt()
 12843 ms  0x2e09 symkey:0x7f860af48400
 12843 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12843 ms  0x2e09 cx:0x7f86444a72c8
 12844 ms     | 0x2e09 EC_ValidatePublicKey()
 12844 ms     | 0x2e09 ret:0x0
 12844 ms  0x2e09 ret:0x7f860ad59020::7f860ad59020  a0 86 fd 1b                                      ....
 12844 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12844 ms  0x2e09 cx:0x7f86444a72c8
 12844 ms     | 0x2e09 EC_ValidatePublicKey()
 12846 ms     | 0x2e09 ret:0x0
 12846 ms  0x2e09 ret:0x7f860b01b020::7f860b01b020  80 88 fd 1b                                      ....
 12846 ms  0x2e09 SECKEY_DestroyPrivateKey()
 12846 ms  0x2e09 privk:0x7f860b258020::7f860b258020  80 8d fd 1b                                      ....
 12846 ms  0x2e09 privk:0x7f860b258020::7f860b258020  e5 e5 e5 e5                                      ....
 12846 ms  0x2e09 SECKEY_DestroyPrivateKey()
 12846 ms  0x2e09 privk:0x7f860b255820::7f860b255820  00 8b fd 1b                                      ....
 12846 ms  0x2e09 privk:0x7f860b255820::7f860b255820  e5 e5 e5 e5                                      ....
 12846 ms  0x2e09 PK11_Encrypt()
 12846 ms  0x2e09 symkey:0x7f860afeb380
 12847 ms  0x2e09 PK11_Encrypt()
 12847 ms  0x2e09 symkey:0x7f860afeb380
 12847 ms  0x2e09 PK11_Encrypt()
 12847 ms  0x2e09 symkey:0x7f860adab980
 12848 ms  0x2e09 PK11_Encrypt()
 12848 ms  0x2e09 symkey:0x7f860aa9f780
 12848 ms  0x2e09 SECKEY_DestroyPrivateKey()
 12848 ms  0x2e09 privk:0x7f860b012020::7f860b012020  50 86 fd 1b                                      P...
 12848 ms  0x2e09 privk:0x7f860b012020::7f860b012020  e5 e5 e5 e5                                      ....
 12848 ms  0x2e09 SECKEY_DestroyPrivateKey()
 12848 ms  0x2e09 privk:0x7f860b010020::7f860b010020  20 84 fd 1b                                       ...
 12848 ms  0x2e09 privk:0x7f860b010020::7f860b010020  e5 e5 e5 e5                                      ....
 12849 ms  0x2e09 PK11_Encrypt()
 12849 ms  0x2e09 symkey:0x7f860afeb380
 12849 ms  0x2e09 SSL_ImportFD()
 12849 ms  0x2e09 ret:0x7f860ace10a0
 12849 ms  0x2e09 SSL_AuthCertificateHook()
 12849 ms  0x2e09 fd:0x7f860ace10a0
 12849 ms  0x2e09 ret:0x0
 12849 ms  0x2e09 PR_Connect()
 12849 ms  0x2e09 fd:0x7f860ace10a0
 12849 ms  0x2e09 SSL_ImportFD()
 12849 ms  0x2e09 ret:0x7f861bfde0d0
 12849 ms  0x2e09 SSL_AuthCertificateHook()
 12849 ms  0x2e09 fd:0x7f861bfde0d0
 12849 ms  0x2e09 ret:0x0
 12849 ms  0x2e09 PR_Connect()
 12849 ms  0x2e09 fd:0x7f861bfde0d0
 12850 ms  0x2e09 SSL_ImportFD()
 12850 ms  0x2e09 ret:0x7f861c1edc70
 12850 ms  0x2e09 SSL_AuthCertificateHook()
 12850 ms  0x2e09 fd:0x7f861c1edc70
 12850 ms  0x2e09 ret:0x0
 12850 ms  0x2e09 PR_Connect()
 12850 ms  0x2e09 fd:0x7f861c1edc70
 12850 ms  0x2e09 PK11_DeriveWithFlags()
 12850 ms  0x2e09 basekey:0x7f860afebc80
 12850 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12850 ms  0x2e09 ret:0x7f860af22600
 12850 ms  0x2e09 PK11_DeriveWithFlags()
 12850 ms  0x2e09 basekey:0x7f860afebc80
 12850 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12850 ms  0x2e09 ret:0x7f860af22600
 12850 ms  0x2e09 PK11_Encrypt()
 12850 ms  0x2e09 symkey:0x7f860adab980
 12850 ms  0x2e09 PK11_DeriveWithFlags()
 12850 ms  0x2e09 basekey:0x7f860b19af00
 12850 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12850 ms  0x2e09 ret:0x7f860af22600
 12850 ms  0x2e09 PK11_DeriveWithFlags()
 12850 ms  0x2e09 basekey:0x7f860b19af00
 12850 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12850 ms  0x2e09 ret:0x7f860af22600
 12850 ms  0x2e09 SECKEY_DestroyPrivateKey()
 12850 ms  0x2e09 privk:0x7f860ad3f820::7f860ad3f820  b0 8f fc 1b                                      ....
 12850 ms  0x2e09 privk:0x7f860ad3f820::7f860ad3f820  e5 e5 e5 e5                                      ....
 12851 ms  0x2e09 SECKEY_DestroyPrivateKey()
 12851 ms  0x2e09 privk:0x7f860aa53820::7f860aa53820  50 76 f2 0a                                      Pv..
 12851 ms  0x2e09 privk:0x7f860aa53820::7f860aa53820  e5 e5 e5 e5                                      ....
 12851 ms  0x2e09 PK11_Derive()
 12851 ms  0x2e09 basekey:0x7f860af22600
 12851 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12851 ms  0x2e09 ret:0x7f860ac86580
 12851 ms  0x2e09 PK11_PubDeriveWithKDF()
 12851 ms  0x2e09 seckey:0x7f860b26d020
 12851 ms     | 0x2e09 EC_ValidatePublicKey()
 12851 ms     | 0x2e09 ret:0x0
 12851 ms  0x2e09 ret:0x7f860af22600
 12851 ms  SECKEY_ECParamsToKeySize()
 12851 ms  0x2e09 ret:0xff
 12851 ms  0x2e09 PK11_DeriveWithFlags()
 12851 ms  0x2e09 basekey:0x7f860ac86580
 12851 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12851 ms  0x2e09 ret:0x7f860b247580
 12851 ms  0x2e09 PK11_Derive()
 12851 ms  0x2e09 basekey:0x7f860af22600
 12851 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12851 ms  0x2e09 ret:0x7f861c080d00
 12851 ms  0x2e09 PK11_DeriveWithFlags()
 12851 ms  0x2e09 basekey:0x7f861c080d00
 12851 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12851 ms  0x2e09 ret:0x7f860ac86580
 12851 ms  0x2e09 PK11_DeriveWithFlags()
 12851 ms  0x2e09 basekey:0x7f861c080d00
 12851 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12851 ms  0x2e09 ret:0x7f860af22600
 12851 ms  0x2e09 PK11_DeriveWithFlags()
 12851 ms  0x2e09 basekey:0x7f861c080d00
 12851 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12851 ms  0x2e09 ret:0x7f860b247580
 12851 ms  0x2e09 PK11_Derive()
 12851 ms  0x2e09 basekey:0x7f861c080f00
 12851 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12851 ms  0x2e09 ret:0x7f861c080f80
 12851 ms  0x2e09 PK11_DeriveWithFlags()
 12851 ms  0x2e09 basekey:0x7f860af22600
 12851 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12852 ms  0x2e09 ret:0x7f861c080d00
 12852 ms  0x2e09 PK11_DeriveWithFlags()
 12852 ms  0x2e09 basekey:0x7f860af22600
 12852 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12852 ms  0x2e09 ret:0x7f860b247580
 12853 ms  0x2e09 PK11_DeriveWithFlags()
 12853 ms  0x2e09 basekey:0x7f860af22600
 12853 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12853 ms  0x2e09 ret:0x7f860b247580
 12854 ms  SECKEY_ECParamsToKeySize()
 12854 ms  0x2e09 ret:0xff
 12854 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12854 ms  0x2e09 cx:0x7f86263e97a8
 12855 ms     | 0x2e09 EC_ValidatePublicKey()
 12855 ms     | 0x2e09 ret:0x0
 12855 ms  0x2e09 ret:0x7f860b251820::7f860b251820  10 85 fd 1b                                      ....
 12855 ms  0x2e09 PK11_PubDeriveWithKDF()
 12855 ms  0x2e09 seckey:0x7f860b251820
 12855 ms     | 0x2e09 EC_ValidatePublicKey()
 12855 ms     | 0x2e09 ret:0x0
 12855 ms  0x2e09 ret:0x7f860b247580
 12855 ms  0x2e09 PK11_DeriveWithFlags()
 12855 ms  0x2e09 basekey:0x7f860b247580
 12855 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12855 ms  0x2e09 ret:0x7f861c080f00
 12855 ms  0x2e09 PK11_Derive()
 12855 ms  0x2e09 basekey:0x7f861c080f00
 12855 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12855 ms  0x2e09 ret:0x7f861c081b80
 12855 ms  0x2e09 SECKEY_DestroyPrivateKey()
 12855 ms  0x2e09 privk:0x7f860b251820::7f860b251820  10 85 fd 1b                                      ....
 12855 ms  0x2e09 privk:0x7f860b251820::7f860b251820  e5 e5 e5 e5                                      ....
 12856 ms  0x2e09 PK11_Encrypt()
 12856 ms  0x2e09 symkey:0x7f861c0fa580
 12856 ms  0x2e09 PK11_Derive()
 12856 ms  0x2e09 basekey:0x7f860b247580
 12856 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12856 ms  0x2e09 ret:0x7f861c0fa680
 12856 ms  0x2e09 PK11_PubDeriveWithKDF()
 12856 ms  0x2e09 seckey:0x7f861c364820
 12856 ms     | 0x2e09 EC_ValidatePublicKey()
 12856 ms     | 0x2e09 ret:0x0
 12856 ms  0x2e09 ret:0x7f860b247580
 12856 ms  SECKEY_ECParamsToKeySize()
 12856 ms  0x2e09 ret:0xff
 12856 ms  0x2e09 PK11_DeriveWithFlags()
 12856 ms  0x2e09 basekey:0x7f861c0fa680
 12856 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12856 ms  0x2e09 ret:0x7f861c0fa700
 12856 ms  0x2e09 PK11_Derive()
 12856 ms  0x2e09 basekey:0x7f860b247580
 12856 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12856 ms  0x2e09 ret:0x7f861c0fa780
 12856 ms  0x2e09 PK11_DeriveWithFlags()
 12856 ms  0x2e09 basekey:0x7f861c0fa780
 12856 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12856 ms  0x2e09 ret:0x7f861c0fa680
 12856 ms  0x2e09 PK11_DeriveWithFlags()
 12856 ms  0x2e09 basekey:0x7f861c0fa780
 12856 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12856 ms  0x2e09 ret:0x7f860b247580
 12856 ms  0x2e09 PK11_DeriveWithFlags()
 12856 ms  0x2e09 basekey:0x7f861c0fa780
 12856 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12856 ms  0x2e09 ret:0x7f861c0fa700
 12856 ms  0x2e09 PK11_Derive()
 12856 ms  0x2e09 basekey:0x7f861c0faa80
 12856 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12857 ms  0x2e09 ret:0x7f861c0fab00
 12857 ms  0x2e09 PK11_DeriveWithFlags()
 12857 ms  0x2e09 basekey:0x7f860b247580
 12857 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12857 ms  0x2e09 ret:0x7f861c0fa780
 12857 ms  0x2e09 PK11_DeriveWithFlags()
 12857 ms  0x2e09 basekey:0x7f860b247580
 12857 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12857 ms  0x2e09 ret:0x7f861c0fa700
 12857 ms  0x2e09 PK11_DeriveWithFlags()
 12857 ms  0x2e09 basekey:0x7f860b247580
 12857 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12857 ms  0x2e09 ret:0x7f861c0fa700
 12857 ms  0x2e09 PR_Connect()
 12857 ms  0x2e09 fd:0x7f861c3e1ee0
 12858 ms  0x2e09 SSL_AuthCertificateComplete()
 12858 ms  0x2e09 fd:0x7f861bfded30
 12858 ms  0x2e09 err:0x0
 12858 ms     | 0x2e09 PK11_DeriveWithFlags()
 12858 ms     | 0x2e09 basekey:0x7f861c080f80
 12858 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12858 ms     | 0x2e09 ret:0x7f861c0fa700
 12858 ms     | 0x2e09 PK11_DeriveWithFlags()
 12858 ms     | 0x2e09 basekey:0x7f861c080f80
 12858 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12858 ms     | 0x2e09 ret:0x7f861c0faa80
 12858 ms     | 0x2e09 PK11_DeriveWithFlags()
 12858 ms     | 0x2e09 basekey:0x7f861c080f80
 12858 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12858 ms     | 0x2e09 ret:0x7f861c0fab80
 12858 ms     | 0x2e09 PK11_DeriveWithFlags()
 12858 ms     | 0x2e09 basekey:0x7f860ac86580
 12858 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12858 ms     | 0x2e09 ret:0x7f861c0fbc00
 12858 ms     | 0x2e09 PK11_DeriveWithFlags()
 12858 ms     | 0x2e09 basekey:0x7f860ac86580
 12858 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12858 ms     | 0x2e09 ret:0x7f861c0fbc80
 12858 ms     | 0x2e09 PK11_DeriveWithFlags()
 12858 ms     | 0x2e09 basekey:0x7f861c0faa80
 12858 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12858 ms     | 0x2e09 ret:0x7f861c0fbc80
 12858 ms     | 0x2e09 PK11_DeriveWithFlags()
 12858 ms     | 0x2e09 basekey:0x7f861c0faa80
 12858 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12858 ms     | 0x2e09 ret:0x7f861c0fbd00
 12858 ms     | 0x2e09 PK11_DeriveWithFlags()
 12858 ms     | 0x2e09 basekey:0x7f860ac86580
 12858 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12858 ms     | 0x2e09 ret:0x7f861c080d00
 12858 ms     | 0x2e09 PK11_Encrypt()
 12858 ms     | 0x2e09 symkey:0x7f861c0fbc00
 12858 ms     | 0x2e09 PK11_DeriveWithFlags()
 12858 ms     | 0x2e09 basekey:0x7f861c0fa700
 12858 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12858 ms     | 0x2e09 ret:0x7f861c080d00
 12858 ms     | 0x2e09 PK11_DeriveWithFlags()
 12858 ms     | 0x2e09 basekey:0x7f861c0fa700
 12858 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12858 ms     | 0x2e09 ret:0x7f861c0fbd00
 12858 ms     | 0x2e09 PK11_DeriveWithFlags()
 12858 ms     | 0x2e09 basekey:0x7f861c080f80
 12858 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12858 ms     | 0x2e09 ret:0x7f861c0fbc00
 12858 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 12858 ms     | 0x2e09 privk:0x7f861c16a020::7f861c16a020  50 16 35 1c                                      P.5.
 12858 ms     | 0x2e09 privk:0x7f861c16a020::7f861c16a020  e5 e5 e5 e5                                      ....
 12858 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 12858 ms     | 0x2e09 privk:0x7f860b26d020::7f860b26d020  b0 8f fd 1b                                      ....
 12858 ms     | 0x2e09 privk:0x7f860b26d020::7f860b26d020  e5 e5 e5 e5                                      ....
 12859 ms  0x2e09 SSL_AuthCertificateComplete()
 12859 ms  0x2e09 fd:0x7f861c1eda00
 12859 ms  0x2e09 err:0x0
 12859 ms     | 0x2e09 PK11_DeriveWithFlags()
 12859 ms     | 0x2e09 basekey:0x7f861c0fab00
 12859 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12859 ms     | 0x2e09 ret:0x7f860af22600
 12859 ms     | 0x2e09 PK11_DeriveWithFlags()
 12859 ms     | 0x2e09 basekey:0x7f861c0fab00
 12859 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12859 ms     | 0x2e09 ret:0x7f860ac86580
 12859 ms     | 0x2e09 PK11_DeriveWithFlags()
 12859 ms     | 0x2e09 basekey:0x7f861c0fab00
 12859 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12859 ms     | 0x2e09 ret:0x7f861c080f80
 12859 ms     | 0x2e09 PK11_DeriveWithFlags()
 12859 ms     | 0x2e09 basekey:0x7f861c0fa680
 12859 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12859 ms     | 0x2e09 ret:0x7f861c0fbd00
 12859 ms     | 0x2e09 PK11_DeriveWithFlags()
 12859 ms     | 0x2e09 basekey:0x7f861c0fa680
 12859 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12859 ms     | 0x2e09 ret:0x7f861c0fbd80
 12859 ms     | 0x2e09 PK11_DeriveWithFlags()
 12859 ms     | 0x2e09 basekey:0x7f860ac86580
 12859 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12859 ms     | 0x2e09 ret:0x7f861c0fbd80
 12859 ms     | 0x2e09 PK11_DeriveWithFlags()
 12859 ms     | 0x2e09 basekey:0x7f860ac86580
 12859 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12859 ms     | 0x2e09 ret:0x7f861c0fbe00
 12859 ms     | 0x2e09 PK11_DeriveWithFlags()
 12859 ms     | 0x2e09 basekey:0x7f861c0fa680
 12859 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12859 ms     | 0x2e09 ret:0x7f861c0fa780
 12859 ms     | 0x2e09 PK11_Encrypt()
 12859 ms     | 0x2e09 symkey:0x7f861c0fbd00
 12859 ms     | 0x2e09 PK11_DeriveWithFlags()
 12859 ms     | 0x2e09 basekey:0x7f860af22600
 12859 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12859 ms     | 0x2e09 ret:0x7f861c0fa780
 12859 ms     | 0x2e09 PK11_DeriveWithFlags()
 12859 ms     | 0x2e09 basekey:0x7f860af22600
 12859 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12859 ms     | 0x2e09 ret:0x7f861c0fbe00
 12859 ms     | 0x2e09 PK11_DeriveWithFlags()
 12859 ms     | 0x2e09 basekey:0x7f861c0fab00
 12859 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12859 ms     | 0x2e09 ret:0x7f861c0fbd00
 12859 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 12859 ms     | 0x2e09 privk:0x7f861c368020::7f861c368020  30 1d 35 1c                                      0.5.
 12859 ms     | 0x2e09 privk:0x7f861c368020::7f861c368020  e5 e5 e5 e5                                      ....
 12859 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 12859 ms     | 0x2e09 privk:0x7f861c364820::7f861c364820  50 1b 35 1c                                      P.5.
 12859 ms     | 0x2e09 privk:0x7f861c364820::7f861c364820  e5 e5 e5 e5                                      ....
 12868 ms  0x2e09 PK11_DeriveWithFlags()
 12868 ms  0x2e09 basekey:0x7f860b1f3680
 12869 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12869 ms  0x2e09 ret:0x7f860b247580
 12869 ms  0x2e09 PK11_DeriveWithFlags()
 12869 ms  0x2e09 basekey:0x7f860b1f3680
 12869 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12869 ms  0x2e09 ret:0x7f860b247580
           /* TID 0x2e11 */
 12871 ms  0x2e11 PR_Close()
 12871 ms  0x2e11 fd:0x7f860aadb460
           /* TID 0x2e09 */
 12872 ms  0x2e09 PK11_Encrypt()
 12872 ms  0x2e09 symkey:0x7f861c080d00
 12872 ms  0x2e09 PK11_Encrypt()
 12872 ms  0x2e09 symkey:0x7f861c080d00
 12873 ms  0x2e09 PK11_Encrypt()
 12873 ms  0x2e09 symkey:0x7f861c0fa780
 12873 ms  0x2e09 PR_Close()
 12873 ms  0x2e09 fd:0x7f860aca0dc0
 12873 ms     | 0x2e09 PK11_Encrypt()
 12873 ms     | 0x2e09 symkey:0x7f860af22500
 12873 ms  0x2e09 PK11_Encrypt()
 12873 ms  0x2e09 symkey:0x7f860ac5a080
 12881 ms  0x2e09 PK11_Encrypt()
 12881 ms  0x2e09 symkey:0x7f861c080d00
 12881 ms  0x2e09 PK11_Encrypt()
 12881 ms  0x2e09 symkey:0x7f860af48400
           /* TID 0x2e11 */
 12882 ms  0x2e11 PR_Close()
 12882 ms  0x2e11 fd:0x7f860aadb130
           /* TID 0x2e9e */
 12882 ms  0x2e9e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12882 ms  0x2e9e ret:0x0
           /* TID 0x2e09 */
 12884 ms  0x2e09 PK11_Derive()
 12884 ms  0x2e09 basekey:0x7f860ac87800
 12884 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12884 ms  0x2e09 ret:0x7f860ad78800
 12884 ms  0x2e09 PK11_PubDeriveWithKDF()
 12884 ms  0x2e09 seckey:0x7f861c37a020
 12884 ms     | 0x2e09 EC_ValidatePublicKey()
 12884 ms     | 0x2e09 ret:0x0
 12885 ms  0x2e09 ret:0x7f860ac87800
 12885 ms  SECKEY_ECParamsToKeySize()
 12885 ms  0x2e09 ret:0xff
 12885 ms  0x2e09 PK11_DeriveWithFlags()
 12885 ms  0x2e09 basekey:0x7f860ad78800
 12885 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12885 ms  0x2e09 ret:0x7f861e0c0780
 12885 ms  0x2e09 PK11_Derive()
 12885 ms  0x2e09 basekey:0x7f860ac87800
 12885 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12885 ms  0x2e09 ret:0x7f860b1f3680
 12885 ms  0x2e09 PK11_DeriveWithFlags()
 12885 ms  0x2e09 basekey:0x7f860b1f3680
 12885 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12885 ms  0x2e09 ret:0x7f860ad78800
 12885 ms  0x2e09 PK11_DeriveWithFlags()
 12885 ms  0x2e09 basekey:0x7f860b1f3680
 12885 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12885 ms  0x2e09 ret:0x7f860ac87800
 12885 ms  0x2e09 PK11_DeriveWithFlags()
 12885 ms  0x2e09 basekey:0x7f860b1f3680
 12885 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12885 ms  0x2e09 ret:0x7f861e0c0780
 12885 ms  0x2e09 PK11_Derive()
 12885 ms  0x2e09 basekey:0x7f860b1f3700
 12885 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12885 ms  0x2e09 ret:0x7f860af22500
 12885 ms  0x2e09 PK11_DeriveWithFlags()
 12885 ms  0x2e09 basekey:0x7f860ac87800
 12885 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12885 ms  0x2e09 ret:0x7f860b1f3680
 12885 ms  0x2e09 PK11_DeriveWithFlags()
 12885 ms  0x2e09 basekey:0x7f860ac87800
 12885 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12886 ms  0x2e09 ret:0x7f861e0c0780
 12886 ms  0x2e09 PK11_DeriveWithFlags()
 12886 ms  0x2e09 basekey:0x7f860ac87800
 12886 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12886 ms  0x2e09 ret:0x7f861e0c0780
 12886 ms  0x2e09 PR_Connect()
 12886 ms  0x2e09 fd:0x7f861c3e19d0
 12887 ms  0x2e09 SSL_AuthCertificateComplete()
 12887 ms  0x2e09 fd:0x7f860b2c7f10
 12887 ms  0x2e09 err:0x0
 12887 ms     | 0x2e09 PK11_DeriveWithFlags()
 12887 ms     | 0x2e09 basekey:0x7f860b246900
 12887 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12887 ms     | 0x2e09 ret:0x7f861e0c0780
 12887 ms     | 0x2e09 PK11_DeriveWithFlags()
 12887 ms     | 0x2e09 basekey:0x7f860b246900
 12887 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12887 ms     | 0x2e09 ret:0x7f860b1f3700
 12887 ms     | 0x2e09 PK11_DeriveWithFlags()
 12887 ms     | 0x2e09 basekey:0x7f860b246900
 12887 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12887 ms     | 0x2e09 ret:0x7f860b247580
 12887 ms     | 0x2e09 PK11_DeriveWithFlags()
 12887 ms     | 0x2e09 basekey:0x7f860af22100
 12887 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12887 ms     | 0x2e09 ret:0x7f861c0fa680
 12887 ms     | 0x2e09 PK11_DeriveWithFlags()
 12887 ms     | 0x2e09 basekey:0x7f860af22100
 12887 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12887 ms     | 0x2e09 ret:0x7f861c0fab00
 12887 ms     | 0x2e09 PK11_DeriveWithFlags()
 12887 ms     | 0x2e09 basekey:0x7f860b1f3700
 12887 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12887 ms     | 0x2e09 ret:0x7f861c0fab00
 12887 ms     | 0x2e09 PK11_DeriveWithFlags()
 12887 ms     | 0x2e09 basekey:0x7f860b1f3700
 12887 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12887 ms     | 0x2e09 ret:0x7f861c0fbe00
 12887 ms     | 0x2e09 PK11_DeriveWithFlags()
 12887 ms     | 0x2e09 basekey:0x7f860af22100
 12887 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12887 ms     | 0x2e09 ret:0x7f860b1f3900
 12887 ms     | 0x2e09 PK11_Encrypt()
 12887 ms     | 0x2e09 symkey:0x7f861c0fa680
 12887 ms     | 0x2e09 PK11_DeriveWithFlags()
 12887 ms     | 0x2e09 basekey:0x7f861e0c0780
 12887 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12887 ms     | 0x2e09 ret:0x7f860b1f3900
 12887 ms     | 0x2e09 PK11_DeriveWithFlags()
 12887 ms     | 0x2e09 basekey:0x7f861e0c0780
 12887 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12887 ms     | 0x2e09 ret:0x7f861c0fbe00
 12887 ms     | 0x2e09 PK11_DeriveWithFlags()
 12887 ms     | 0x2e09 basekey:0x7f860b246900
 12887 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12887 ms     | 0x2e09 ret:0x7f861c0fa680
 12887 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 12887 ms     | 0x2e09 privk:0x7f860b268820::7f860b268820  a0 d1 cb 0a                                      ....
 12888 ms     | 0x2e09 privk:0x7f860b268820::7f860b268820  e5 e5 e5 e5                                      ....
 12888 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 12888 ms     | 0x2e09 privk:0x7f860ad4c020::7f860ad4c020  40 9c 1f 0b                                      @...
 12888 ms     | 0x2e09 privk:0x7f860ad4c020::7f860ad4c020  e5 e5 e5 e5                                      ....
 12888 ms  0x2e09 PK11_Encrypt()
 12888 ms  0x2e09 symkey:0x7f860af48400
 12888 ms  0x2e09 SSL_AuthCertificateComplete()
 12888 ms  0x2e09 fd:0x7f861bfded60
 12888 ms  0x2e09 err:0x0
 12888 ms     | 0x2e09 PK11_DeriveWithFlags()
 12888 ms     | 0x2e09 basekey:0x7f860af22500
 12888 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12888 ms     | 0x2e09 ret:0x7f860adab900
 12888 ms     | 0x2e09 PK11_DeriveWithFlags()
 12888 ms     | 0x2e09 basekey:0x7f860af22500
 12888 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12888 ms     | 0x2e09 ret:0x7f860af22100
 12888 ms     | 0x2e09 PK11_DeriveWithFlags()
 12888 ms     | 0x2e09 basekey:0x7f860af22500
 12888 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12888 ms     | 0x2e09 ret:0x7f860b246900
 12888 ms     | 0x2e09 PK11_DeriveWithFlags()
 12888 ms     | 0x2e09 basekey:0x7f860ad78800
 12888 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12888 ms     | 0x2e09 ret:0x7f861c0fbe00
 12888 ms     | 0x2e09 PK11_DeriveWithFlags()
 12888 ms     | 0x2e09 basekey:0x7f860ad78800
 12888 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12888 ms     | 0x2e09 ret:0x7f860ac87080
 12888 ms     | 0x2e09 PK11_DeriveWithFlags()
 12888 ms     | 0x2e09 basekey:0x7f860af22100
 12888 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12888 ms     | 0x2e09 ret:0x7f860ac87080
 12888 ms     | 0x2e09 PK11_DeriveWithFlags()
 12888 ms     | 0x2e09 basekey:0x7f860af22100
 12888 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12889 ms     | 0x2e09 ret:0x7f861c1faa00
 12889 ms     | 0x2e09 PK11_DeriveWithFlags()
 12889 ms     | 0x2e09 basekey:0x7f860ad78800
 12889 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12889 ms     | 0x2e09 ret:0x7f860b1f3680
 12889 ms     | 0x2e09 PK11_Encrypt()
 12889 ms     | 0x2e09 symkey:0x7f861c0fbe00
 12889 ms     | 0x2e09 PK11_DeriveWithFlags()
 12889 ms     | 0x2e09 basekey:0x7f860adab900
 12889 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12889 ms     | 0x2e09 ret:0x7f860b1f3680
 12889 ms     | 0x2e09 PK11_DeriveWithFlags()
 12889 ms     | 0x2e09 basekey:0x7f860adab900
 12889 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12889 ms     | 0x2e09 ret:0x7f861c1faa00
 12889 ms     | 0x2e09 PK11_DeriveWithFlags()
 12889 ms     | 0x2e09 basekey:0x7f860af22500
 12889 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12889 ms     | 0x2e09 ret:0x7f861c0fbe00
 12889 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 12889 ms     | 0x2e09 privk:0x7f861d42d820::7f861d42d820  90 c2 38 1c                                      ..8.
 12889 ms     | 0x2e09 privk:0x7f861d42d820::7f861d42d820  e5 e5 e5 e5                                      ....
 12889 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 12889 ms     | 0x2e09 privk:0x7f861c37a020::7f861c37a020  b0 c0 38 1c                                      ..8.
 12889 ms     | 0x2e09 privk:0x7f861c37a020::7f861c37a020  e5 e5 e5 e5                                      ....
           /* TID 0x2e65 */
 12890 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12890 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
 12890 ms  SECKEY_ECParamsToKeySize()
 12890 ms  0x2e09 ret:0x100
 12890 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12890 ms  0x2e09 cx:0x7f860acd6cc8
 12891 ms     | 0x2e09 EC_ValidatePublicKey()
 12892 ms     | 0x2e09 ret:0x0
 12892 ms  0x2e09 ret:0x7f860ad5d820::7f860ad5d820  70 8e fc 1b                                      p...
 12892 ms  0x2e09 PK11_PubDeriveWithKDF()
 12892 ms  0x2e09 seckey:0x7f860ad5d820
 12892 ms     | 0x2e09 EC_ValidatePublicKey()
 12894 ms     | 0x2e09 ret:0x0
 12895 ms  0x2e09 ret:0x7f860ac87800
 12896 ms  0x2e09 PK11_DeriveWithFlags()
 12896 ms  0x2e09 basekey:0x7f860ac87800
 12896 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12896 ms  0x2e09 ret:0x7f860ad78800
 12896 ms  0x2e09 PK11_Derive()
 12896 ms  0x2e09 basekey:0x7f860ad78800
 12896 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12896 ms  0x2e09 ret:0x7f860af22500
 12896 ms  0x2e09 SECKEY_DestroyPrivateKey()
 12896 ms  0x2e09 privk:0x7f860ad5d820::7f860ad5d820  70 8e fc 1b                                      p...
 12896 ms  0x2e09 privk:0x7f860ad5d820::7f860ad5d820  e5 e5 e5 e5                                      ....
 12896 ms  0x2e09 PK11_Encrypt()
 12896 ms  0x2e09 symkey:0x7f861c1fab80
 12896 ms  0x2e09 PK11_Encrypt()
 12896 ms  0x2e09 symkey:0x7f860b1f3900
 12896 ms  0x2e09 PK11_Encrypt()
 12896 ms  0x2e09 symkey:0x7f860b1f3900
 12897 ms  0x2e09 PK11_Encrypt()
 12897 ms  0x2e09 symkey:0x7f860b1f3680
 12897 ms  0x2e09 SSL_AuthCertificateComplete()
 12897 ms  0x2e09 fd:0x7f860ac5f580
 12897 ms  0x2e09 err:0x0
 12897 ms  0x2e09 PK11_DeriveWithFlags()
 12897 ms  0x2e09 basekey:0x7f861c0fbc00
 12897 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12897 ms  0x2e09 ret:0x7f860ac87800
 12897 ms  0x2e09 PK11_DeriveWithFlags()
 12897 ms  0x2e09 basekey:0x7f861c0fbc00
 12897 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12897 ms  0x2e09 ret:0x7f860ac87800
 12897 ms  0x2e09 PK11_Encrypt()
 12897 ms  0x2e09 symkey:0x7f860adab980
 12897 ms  0x2e09 PK11_Encrypt()
 12897 ms  0x2e09 symkey:0x7f860ad78e80
           /* TID 0x2e11 */
 12899 ms  0x2e11 PR_Close()
 12899 ms  0x2e11 fd:0x7f860aadb0d0
           /* TID 0x2e09 */
 12904 ms  0x2e09 PK11_Encrypt()
 12904 ms  0x2e09 symkey:0x7f861c080d00
           /* TID 0x2e11 */
 12906 ms  0x2e11 PR_Close()
 12906 ms  0x2e11 fd:0x7f860aadb0d0
           /* TID 0x2e09 */
 12907 ms  0x2e09 PK11_DeriveWithFlags()
 12907 ms  0x2e09 basekey:0x7f861c0fbd00
 12907 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12907 ms  0x2e09 ret:0x7f860ac87800
 12907 ms  0x2e09 PK11_DeriveWithFlags()
 12907 ms  0x2e09 basekey:0x7f861c0fbd00
 12907 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12907 ms  0x2e09 ret:0x7f860ac87800
           /* TID 0x2e11 */
 12910 ms  0x2e11 PR_Close()
 12910 ms  0x2e11 fd:0x7f860ace1520
           /* TID 0x2e09 */
 12910 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12910 ms  0x2e09 cx:0x7f861c3555c8
 12912 ms     | 0x2e09 EC_ValidatePublicKey()
 12912 ms     | 0x2e09 ret:0x0
 12912 ms  0x2e09 ret:0x7f860b256820::7f860b256820  40 9c 1a 0b                                      @...
 12912 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12912 ms  0x2e09 cx:0x7f861c3555c8
 12913 ms     | 0x2e09 EC_ValidatePublicKey()
 12914 ms     | 0x2e09 ret:0x0
 12914 ms  0x2e09 ret:0x7f860b26b020::7f860b26b020  50 81 fd 1b                                      P...
 12919 ms  0x2e09 PR_Close()
 12919 ms  0x2e09 fd:0x7f861c1eda00
 12919 ms     | 0x2e09 PK11_Encrypt()
 12919 ms     | 0x2e09 symkey:0x7f861c0fa780
 12927 ms  0x2e09 PK11_Encrypt()
 12927 ms  0x2e09 symkey:0x7f860aa9fd80
           /* TID 0x2e11 */
 12929 ms  0x2e11 PR_Close()
 12929 ms  0x2e11 fd:0x7f860aadb2b0
           /* TID 0x2e9f */
 12929 ms  0x2e9f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12929 ms  0x2e9f ret:0x0
           /* TID 0x2e11 */
 12931 ms  0x2e11 PR_Close()
 12931 ms  0x2e11 fd:0x7f861bfded00
           /* TID 0x2e09 */
 12931 ms  0x2e09 PK11_Encrypt()
 12931 ms  0x2e09 symkey:0x7f860adab980
 12932 ms  0x2e09 PK11_DeriveWithFlags()
 12932 ms  0x2e09 basekey:0x7f861c0fa680
 12932 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12932 ms  0x2e09 ret:0x7f861c080f80
 12932 ms  0x2e09 PK11_Encrypt()
 12932 ms  0x2e09 symkey:0x7f860b1f3900
           /* TID 0x2e11 */
 12933 ms  0x2e11 PR_Close()
 12933 ms  0x2e11 fd:0x7f860aca0e50
 12934 ms  0x2e11 PR_Close()
 12934 ms  0x2e11 fd:0x7f860ad6cac0
           /* TID 0x2e9e */
 12939 ms  0x2e9e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12939 ms  0x2e9e ret:0x0
           /* TID 0x2e09 */
 12940 ms  0x2e09 PK11_DeriveWithFlags()
 12940 ms  0x2e09 basekey:0x7f861c0fbe00
 12940 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12940 ms  0x2e09 ret:0x7f861c080f80
 12940 ms  0x2e09 PK11_DeriveWithFlags()
 12940 ms  0x2e09 basekey:0x7f861c0fbe00
 12940 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12940 ms  0x2e09 ret:0x7f861c080f80
 12940 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12940 ms  0x2e09 cx:0x7f861c355768
 12941 ms     | 0x2e09 EC_ValidatePublicKey()
 12941 ms     | 0x2e09 ret:0x0
 12941 ms  0x2e09 ret:0x7f861c360820::7f861c360820  40 8c fd 1b                                      @...
 12941 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12941 ms  0x2e09 cx:0x7f861c355768
 12943 ms     | 0x2e09 EC_ValidatePublicKey()
 12944 ms     | 0x2e09 ret:0x0
 12944 ms  0x2e09 ret:0x7f861c369020::7f861c369020  10 8f fd 1b                                      ....
 12945 ms  0x2e09 PR_Close()
 12945 ms  0x2e09 fd:0x7f861bfded60
 12945 ms     | 0x2e09 PK11_Encrypt()
 12945 ms     | 0x2e09 symkey:0x7f860b1f3680
 12949 ms  0x2e09 SSL_AuthCertificateComplete()
 12949 ms  0x2e09 fd:0x7f860b0fdc70
 12949 ms  0x2e09 err:0x0
 12949 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 12949 ms     | 0x2e09 privk:0x7f861c35f020::7f861c35f020  c0 19 35 1c                                      ..5.
 12949 ms     | 0x2e09 privk:0x7f861c35f020::7f861c35f020  e5 e5 e5 e5                                      ....
 12949 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 12949 ms     | 0x2e09 privk:0x7f861c35c020::7f861c35c020  90 17 35 1c                                      ..5.
 12949 ms     | 0x2e09 privk:0x7f861c35c020::7f861c35c020  e5 e5 e5 e5                                      ....
 12949 ms  0x2e09 SECKEY_DestroyPrivateKey()
 12949 ms  0x2e09 privk:0x7f860aa52020::7f860aa52020  30 3d 12 0b                                      0=..
 12949 ms  0x2e09 privk:0x7f860aa52020::7f860aa52020  e5 e5 e5 e5                                      ....
 12949 ms  0x2e09 SECKEY_DestroyPrivateKey()
 12949 ms  0x2e09 privk:0x7f860aa49820::7f860aa49820  40 7c f2 0a                                      @|..
 12949 ms  0x2e09 privk:0x7f860aa49820::7f860aa49820  e5 e5 e5 e5                                      ....
           /* TID 0x2e11 */
 12955 ms  0x2e11 PR_Close()
 12955 ms  0x2e11 fd:0x7f860af32e80
           /* TID 0x2e09 */
 12955 ms  0x2e09 PK11_Encrypt()
 12955 ms  0x2e09 symkey:0x7f861c0fa580
 12955 ms  0x2e09 PK11_Encrypt()
 12955 ms  0x2e09 symkey:0x7f861c0fa580
 12956 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12956 ms  0x2e09 cx:0x7f861c354c08
 12957 ms     | 0x2e09 EC_ValidatePublicKey()
 12957 ms     | 0x2e09 ret:0x0
 12957 ms  0x2e09 ret:0x7f860aa4a820::7f860aa4a820  50 41 d3 0a                                      PA..
 12957 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12957 ms  0x2e09 cx:0x7f861c354c08
 12957 ms     | 0x2e09 EC_ValidatePublicKey()
 12965 ms     | 0x2e09 ret:0x0
 12965 ms  0x2e09 ret:0x7f861c35b820::7f861c35b820  b0 8f fc 1b                                      ....
 12966 ms  0x2e09 SSL_ImportFD()
 12966 ms  0x2e09 ret:0x7f861c1edd00
 12966 ms  0x2e09 SSL_AuthCertificateHook()
 12966 ms  0x2e09 fd:0x7f861c1edd00
 12966 ms  0x2e09 ret:0x0
 12966 ms  0x2e09 PR_Connect()
 12966 ms  0x2e09 fd:0x7f861c1edd00
 12966 ms  0x2e09 SSL_ImportFD()
 12966 ms  0x2e09 ret:0x7f860af323a0
 12966 ms  0x2e09 SSL_AuthCertificateHook()
 12966 ms  0x2e09 fd:0x7f860af323a0
 12966 ms  0x2e09 ret:0x0
 12967 ms  0x2e09 PR_Connect()
 12967 ms  0x2e09 fd:0x7f860af323a0
 12967 ms  0x2e09 PK11_Encrypt()
 12967 ms  0x2e09 symkey:0x7f861c080d00
 12968 ms  0x2e09 PK11_Encrypt()
 12968 ms  0x2e09 symkey:0x7f861c080d00
 12969 ms  0x2e09 PK11_Encrypt()
 12969 ms  0x2e09 symkey:0x7f861c0fa580
 12972 ms  0x2e09 PK11_Derive()
 12972 ms  0x2e09 basekey:0x7f860b246900
 12972 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12972 ms  0x2e09 ret:0x7f860af22100
 12972 ms  0x2e09 PK11_PubDeriveWithKDF()
 12972 ms  0x2e09 seckey:0x7f860b256820
 12972 ms     | 0x2e09 EC_ValidatePublicKey()
 12972 ms     | 0x2e09 ret:0x0
 12972 ms  0x2e09 ret:0x7f860b246900
 12972 ms  SECKEY_ECParamsToKeySize()
 12972 ms  0x2e09 ret:0xff
 12972 ms  0x2e09 PK11_DeriveWithFlags()
 12972 ms  0x2e09 basekey:0x7f860af22100
 12972 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12972 ms  0x2e09 ret:0x7f860adab900
 12972 ms  0x2e09 PK11_Derive()
 12972 ms  0x2e09 basekey:0x7f860b246900
 12972 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12972 ms  0x2e09 ret:0x7f861c0fbe00
 12972 ms  0x2e09 PK11_DeriveWithFlags()
 12972 ms  0x2e09 basekey:0x7f861c0fbe00
 12972 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12972 ms  0x2e09 ret:0x7f860af22100
 12972 ms  0x2e09 PK11_DeriveWithFlags()
 12972 ms  0x2e09 basekey:0x7f861c0fbe00
 12972 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12972 ms  0x2e09 ret:0x7f860b246900
 12972 ms  0x2e09 PK11_DeriveWithFlags()
 12972 ms  0x2e09 basekey:0x7f861c0fbe00
 12972 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12972 ms  0x2e09 ret:0x7f860adab900
 12972 ms  0x2e09 PK11_Derive()
 12972 ms  0x2e09 basekey:0x7f860ac87080
 12972 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12972 ms  0x2e09 ret:0x7f860b1f3680
 12972 ms  0x2e09 PK11_DeriveWithFlags()
 12972 ms  0x2e09 basekey:0x7f860b246900
 12972 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12972 ms  0x2e09 ret:0x7f861c0fbe00
 12972 ms  0x2e09 PK11_DeriveWithFlags()
 12972 ms  0x2e09 basekey:0x7f860b246900
 12973 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12973 ms  0x2e09 ret:0x7f860adab900
 12974 ms  SECKEY_ECParamsToKeySize()
 12974 ms  0x2e09 ret:0x100
 12974 ms  SECKEY_ECParamsToBasePointOrderLen()
 12974 ms  0x2e09 ret:0x100
 12974 ms  SECKEY_ECParamsToBasePointOrderLen()
 12974 ms  0x2e09 ret:0x100
 12974 ms  0x2e09 EC_ValidatePublicKey()
 12976 ms  0x2e09 ret:0x0
 12978 ms  0x2e09 PK11_DeriveWithFlags()
 12978 ms  0x2e09 basekey:0x7f860b246900
 12978 ms     | 0x2e09 PK11_DeriveWithTemplate()
 12987 ms  0x2e09 ret:0x7f860adab900
 12989 ms  0x2e09 SSL_AuthCertificateComplete()
 12989 ms  0x2e09 fd:0x7f860b22fe80
 12989 ms  0x2e09 err:0x0
 12989 ms  0x2e09 SSL_AuthCertificateComplete()
 12989 ms  0x2e09 fd:0x7f861bfde0d0
 12989 ms  0x2e09 err:0x0
 12989 ms     | 0x2e09 PK11_DeriveWithFlags()
 12989 ms     | 0x2e09 basekey:0x7f860b1f3680
 12989 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12989 ms     | 0x2e09 ret:0x7f860adab900
 12989 ms     | 0x2e09 PK11_DeriveWithFlags()
 12989 ms     | 0x2e09 basekey:0x7f860b1f3680
 12989 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12989 ms     | 0x2e09 ret:0x7f860ac87080
 12989 ms     | 0x2e09 PK11_DeriveWithFlags()
 12989 ms     | 0x2e09 basekey:0x7f860b1f3680
 12989 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12989 ms     | 0x2e09 ret:0x7f861c080f80
 12989 ms     | 0x2e09 PK11_DeriveWithFlags()
 12989 ms     | 0x2e09 basekey:0x7f860af22100
 12989 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12989 ms     | 0x2e09 ret:0x7f860ac86580
 12989 ms     | 0x2e09 PK11_DeriveWithFlags()
 12989 ms     | 0x2e09 basekey:0x7f860af22100
 12989 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12989 ms     | 0x2e09 ret:0x7f860af22600
 12989 ms     | 0x2e09 PK11_DeriveWithFlags()
 12989 ms     | 0x2e09 basekey:0x7f860ac87080
 12989 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12989 ms     | 0x2e09 ret:0x7f860af22600
 12989 ms     | 0x2e09 PK11_DeriveWithFlags()
 12989 ms     | 0x2e09 basekey:0x7f860ac87080
 12989 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12989 ms     | 0x2e09 ret:0x7f861c0fbd00
 12989 ms     | 0x2e09 PK11_DeriveWithFlags()
 12989 ms     | 0x2e09 basekey:0x7f860af22100
 12989 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12989 ms     | 0x2e09 ret:0x7f861c0fbe00
 12989 ms     | 0x2e09 PK11_Encrypt()
 12989 ms     | 0x2e09 symkey:0x7f860ac86580
 12993 ms     | 0x2e09 PK11_DeriveWithFlags()
 12993 ms     | 0x2e09 basekey:0x7f860adab900
 12993 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12993 ms     | 0x2e09 ret:0x7f861c0fbe00
 12993 ms     | 0x2e09 PK11_DeriveWithFlags()
 12993 ms     | 0x2e09 basekey:0x7f860adab900
 12993 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12993 ms     | 0x2e09 ret:0x7f861c0fbd00
 12993 ms     | 0x2e09 PK11_DeriveWithFlags()
 12993 ms     | 0x2e09 basekey:0x7f860b1f3680
 12993 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 12993 ms     | 0x2e09 ret:0x7f860ac86580
 12993 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 12993 ms     | 0x2e09 privk:0x7f860b26b020::7f860b26b020  50 81 fd 1b                                      P...
 12994 ms     | 0x2e09 privk:0x7f860b26b020::7f860b26b020  e5 e5 e5 e5                                      ....
 12994 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 12994 ms     | 0x2e09 privk:0x7f860b256820::7f860b256820  40 9c 1a 0b                                      @...
 12994 ms     | 0x2e09 privk:0x7f860b256820::7f860b256820  e5 e5 e5 e5                                      ....
           /* TID 0x2e11 */
 12997 ms  0x2e11 PR_Close()
 12997 ms  0x2e11 fd:0x7f861c1f5070
           /* TID 0x2e09 */
 12997 ms  0x2e09 PK11_Encrypt()
 12997 ms  0x2e09 symkey:0x7f861c0fbe00
 12998 ms  0x2e09 PK11_Encrypt()
 12998 ms  0x2e09 symkey:0x7f861c0fbe00
 12998 ms  SECKEY_ECParamsToKeySize()
 12998 ms  0x2e09 ret:0x100
 12998 ms  0x2e09 SECKEY_CreateECPrivateKey()
 12998 ms  0x2e09 cx:0x7f86444a72c8
 12999 ms     | 0x2e09 EC_ValidatePublicKey()
 13000 ms     | 0x2e09 ret:0x0
 13000 ms  0x2e09 ret:0x7f860b26b020::7f860b26b020  e0 9c 1a 0b                                      ....
 13000 ms  0x2e09 PK11_PubDeriveWithKDF()
 13000 ms  0x2e09 seckey:0x7f860b26b020
 13001 ms     | 0x2e09 EC_ValidatePublicKey()
 13002 ms     | 0x2e09 ret:0x0
 13003 ms  0x2e09 ret:0x7f860b246900
 13003 ms  0x2e09 PK11_DeriveWithFlags()
 13003 ms  0x2e09 basekey:0x7f860b246900
 13003 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13024 ms  0x2e09 ret:0x7f860af22100
 13024 ms  0x2e09 PK11_Derive()
 13024 ms  0x2e09 basekey:0x7f860af22100
 13024 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13024 ms  0x2e09 ret:0x7f860b1f3680
 13024 ms  0x2e09 SECKEY_DestroyPrivateKey()
 13024 ms  0x2e09 privk:0x7f860b26b020::7f860b26b020  e0 9c 1a 0b                                      ....
 13024 ms  0x2e09 privk:0x7f860b26b020::7f860b26b020  e5 e5 e5 e5                                      ....
 13024 ms  0x2e09 PK11_Encrypt()
 13024 ms  0x2e09 symkey:0x7f861c350a00
 13026 ms  SECKEY_ECParamsToKeySize()
 13026 ms  0x2e09 ret:0x100
 13026 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13026 ms  0x2e09 cx:0x7f861c355768
 13026 ms     | 0x2e09 EC_ValidatePublicKey()
 13035 ms     | 0x2e09 ret:0x0
 13035 ms  0x2e09 ret:0x7f861dc1e820::7f861dc1e820  40 c2 38 1c                                      @.8.
 13035 ms  0x2e09 PK11_PubDeriveWithKDF()
 13035 ms  0x2e09 seckey:0x7f861dc1e820
 13035 ms     | 0x2e09 EC_ValidatePublicKey()
 13037 ms     | 0x2e09 ret:0x0
 13051 ms  0x2e09 ret:0x7f860b246900
 13052 ms  0x2e09 PK11_DeriveWithFlags()
 13052 ms  0x2e09 basekey:0x7f860b246900
 13052 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13052 ms  0x2e09 ret:0x7f861c0fbd00
 13052 ms  0x2e09 PK11_Derive()
 13052 ms  0x2e09 basekey:0x7f861c0fbd00
 13052 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13052 ms  0x2e09 ret:0x7f861c0fbd80
 13052 ms  0x2e09 SECKEY_DestroyPrivateKey()
 13052 ms  0x2e09 privk:0x7f861dc1e820::7f861dc1e820  40 c2 38 1c                                      @.8.
 13052 ms  0x2e09 privk:0x7f861dc1e820::7f861dc1e820  e5 e5 e5 e5                                      ....
 13052 ms  0x2e09 PK11_Encrypt()
 13052 ms  0x2e09 symkey:0x7f861c389700
 13052 ms  0x2e09 SSL_ImportFD()
 13052 ms  0x2e09 ret:0x7f861d671e50
 13052 ms  0x2e09 SSL_AuthCertificateHook()
 13052 ms  0x2e09 fd:0x7f861d671e50
 13052 ms  0x2e09 ret:0x0
 13052 ms  0x2e09 PR_Connect()
 13052 ms  0x2e09 fd:0x7f861d671e50
 13052 ms  0x2e09 PK11_DeriveWithFlags()
 13052 ms  0x2e09 basekey:0x7f860ac86580
 13052 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13052 ms  0x2e09 ret:0x7f860b246900
 13053 ms  0x2e09 PK11_Encrypt()
 13053 ms  0x2e09 symkey:0x7f860adab980
 13053 ms  0x2e09 PK11_Encrypt()
 13053 ms  0x2e09 symkey:0x7f861c0fbe00
 13053 ms  0x2e09 PK11_Encrypt()
 13053 ms  0x2e09 symkey:0x7f861c0fa580
 13053 ms  0x2e09 SSL_ImportFD()
 13053 ms  0x2e09 ret:0x7f861d9211f0
 13053 ms  0x2e09 SSL_AuthCertificateHook()
 13053 ms  0x2e09 fd:0x7f861d9211f0
 13053 ms  0x2e09 ret:0x0
 13053 ms  0x2e09 PR_Connect()
 13053 ms  0x2e09 fd:0x7f861d9211f0
 13053 ms  0x2e09 PK11_Encrypt()
 13053 ms  0x2e09 symkey:0x7f861c350a00
           /* TID 0x2e9f */
 13064 ms  0x2e9f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13064 ms  0x2e9f ret:0x0
           /* TID 0x2e09 */
 13064 ms  0x2e09 SSL_ImportFD()
 13064 ms  0x2e09 ret:0x7f861d4e9790
 13064 ms  0x2e09 SSL_AuthCertificateHook()
 13064 ms  0x2e09 fd:0x7f861d4e9790
 13064 ms  0x2e09 ret:0x0
 13064 ms  0x2e09 PR_Connect()
 13064 ms  0x2e09 fd:0x7f861d4e9790
 13064 ms  0x2e09 SSL_ImportFD()
 13064 ms  0x2e09 ret:0x7f861d671ca0
 13064 ms  0x2e09 SSL_AuthCertificateHook()
 13064 ms  0x2e09 fd:0x7f861d671ca0
 13064 ms  0x2e09 ret:0x0
 13064 ms  0x2e09 PR_Connect()
 13064 ms  0x2e09 fd:0x7f861d671ca0
 13064 ms  0x2e09 SSL_ImportFD()
 13064 ms  0x2e09 ret:0x7f861ce7b0a0
 13064 ms  0x2e09 SSL_AuthCertificateHook()
 13064 ms  0x2e09 fd:0x7f861ce7b0a0
 13064 ms  0x2e09 ret:0x0
 13065 ms  0x2e09 PR_Connect()
 13065 ms  0x2e09 fd:0x7f861ce7b0a0
 13065 ms  0x2e09 SSL_AuthCertificateComplete()
 13065 ms  0x2e09 fd:0x7f860ace10a0
 13065 ms  0x2e09 err:0x0
 13065 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13065 ms  0x2e09 cx:0x7f861c355f88
 13065 ms     | 0x2e09 EC_ValidatePublicKey()
 13065 ms     | 0x2e09 ret:0x0
 13065 ms  0x2e09 ret:0x7f861c35d020::7f861c35d020  20 ce 38 1c                                       .8.
 13065 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13065 ms  0x2e09 cx:0x7f861c355f88
 13066 ms     | 0x2e09 EC_ValidatePublicKey()
 13068 ms     | 0x2e09 ret:0x0
 13068 ms  0x2e09 ret:0x7f861dc1e820::7f861dc1e820  60 10 3d 1c                                      `.=.
           /* TID 0x2e11 */
 13068 ms  0x2e11 PR_Close()
 13068 ms  0x2e11 fd:0x7f860b0fdfd0
 13069 ms  0x2e11 PR_Close()
 13069 ms  0x2e11 fd:0x7f860aca0160
           /* TID 0x2e09 */
 13073 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13073 ms  0x2e09 cx:0x7f860b20ab28
           /* TID 0x2e11 */
 13074 ms  0x2e11 PR_Close()
 13074 ms  0x2e11 fd:0x7f861c7e8a60
           /* TID 0x2e09 */
 13075 ms     | 0x2e09 EC_ValidatePublicKey()
 13075 ms     | 0x2e09 ret:0x0
 13075 ms  0x2e09 ret:0x7f8620db3820::7f8620db3820  90 92 1f 0b                                      ....
 13075 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13075 ms  0x2e09 cx:0x7f860b20ab28
 13076 ms     | 0x2e09 EC_ValidatePublicKey()
 13077 ms     | 0x2e09 ret:0x0
 13077 ms  0x2e09 ret:0x7f8622003020::7f8622003020  e0 1c 35 1c                                      ..5.
 13085 ms  0x2e09 PR_Connect()
 13085 ms  0x2e09 fd:0x7f861d921b50
 13091 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13091 ms  0x2e09 cx:0x7f861c356128
 13092 ms     | 0x2e09 EC_ValidatePublicKey()
 13092 ms     | 0x2e09 ret:0x0
 13092 ms  0x2e09 ret:0x7f8622009020::7f8622009020  90 67 7e 1c                                      .g~.
 13092 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13092 ms  0x2e09 cx:0x7f861c356128
 13093 ms     | 0x2e09 EC_ValidatePublicKey()
 13096 ms     | 0x2e09 ret:0x0
 13096 ms  0x2e09 ret:0x7f862200e020::7f862200e020  e0 ac 7f 1c                                      ....
 13099 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13099 ms  0x2e09 cx:0x7f861c3562c8
 13099 ms     | 0x2e09 EC_ValidatePublicKey()
 13099 ms     | 0x2e09 ret:0x0
 13099 ms  0x2e09 ret:0x7f8622014820::7f8622014820  90 d7 e0 1c                                      ....
 13099 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13099 ms  0x2e09 cx:0x7f861c3562c8
 13100 ms     | 0x2e09 EC_ValidatePublicKey()
 13110 ms     | 0x2e09 ret:0x0
 13111 ms  0x2e09 ret:0x7f8622018820::7f8622018820  60 da e0 1c                                      `...
 13118 ms  0x2e09 SECKEY_DestroyPrivateKey()
 13118 ms  0x2e09 privk:0x7f860b01b020::7f860b01b020  80 88 fd 1b                                      ....
 13119 ms  0x2e09 privk:0x7f860b01b020::7f860b01b020  e5 e5 e5 e5                                      ....
 13120 ms  0x2e09 SECKEY_DestroyPrivateKey()
 13120 ms  0x2e09 privk:0x7f860ad59020::7f860ad59020  a0 86 fd 1b                                      ....
 13120 ms  0x2e09 privk:0x7f860ad59020::7f860ad59020  e5 e5 e5 e5                                      ....
 13120 ms  SECKEY_ECParamsToKeySize()
 13120 ms  0x2e09 ret:0x100
 13120 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13120 ms  0x2e09 cx:0x7f861c354c08
 13120 ms     | 0x2e09 EC_ValidatePublicKey()
 13122 ms     | 0x2e09 ret:0x0
 13122 ms  0x2e09 ret:0x7f860ad5d820::7f860ad5d820  f0 86 fd 1b                                      ....
 13122 ms  0x2e09 PK11_PubDeriveWithKDF()
 13122 ms  0x2e09 seckey:0x7f860ad5d820
 13122 ms     | 0x2e09 EC_ValidatePublicKey()
 13124 ms     | 0x2e09 ret:0x0
 13125 ms  0x2e09 ret:0x7f860b246900
 13125 ms  0x2e09 PK11_DeriveWithFlags()
 13125 ms  0x2e09 basekey:0x7f860b246900
 13125 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13126 ms  0x2e09 ret:0x7f861c0fa780
 13126 ms  0x2e09 PK11_Derive()
 13126 ms  0x2e09 basekey:0x7f861c0fa780
 13126 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13126 ms  0x2e09 ret:0x7f860ac87800
 13126 ms  0x2e09 SECKEY_DestroyPrivateKey()
 13126 ms  0x2e09 privk:0x7f860ad5d820::7f860ad5d820  f0 86 fd 1b                                      ....
 13126 ms  0x2e09 privk:0x7f860ad5d820::7f860ad5d820  e5 e5 e5 e5                                      ....
 13126 ms  0x2e09 PK11_Encrypt()
 13126 ms  0x2e09 symkey:0x7f861c394f00
 13130 ms  SECKEY_ECParamsToKeySize()
 13130 ms  0x2e09 ret:0x100
 13130 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13130 ms  0x2e09 cx:0x7f861c355f88
 13131 ms     | 0x2e09 EC_ValidatePublicKey()
 13132 ms     | 0x2e09 ret:0x0
 13132 ms  0x2e09 ret:0x7f86221a5020::7f86221a5020  20 de e0 1c                                       ...
 13132 ms  0x2e09 PK11_PubDeriveWithKDF()
 13132 ms  0x2e09 seckey:0x7f86221a5020
 13132 ms     | 0x2e09 EC_ValidatePublicKey()
 13137 ms     | 0x2e09 ret:0x0
 13139 ms  0x2e09 ret:0x7f860b246900
 13139 ms  0x2e09 PK11_DeriveWithFlags()
 13139 ms  0x2e09 basekey:0x7f860b246900
 13139 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13139 ms  0x2e09 ret:0x7f861c1faa00
 13139 ms  0x2e09 PK11_Derive()
 13139 ms  0x2e09 basekey:0x7f861c1faa00
 13139 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13139 ms  0x2e09 ret:0x7f860ad79b80
 13139 ms  0x2e09 SECKEY_DestroyPrivateKey()
 13139 ms  0x2e09 privk:0x7f86221a5020::7f86221a5020  20 de e0 1c                                       ...
 13139 ms  0x2e09 privk:0x7f86221a5020::7f86221a5020  e5 e5 e5 e5                                      ....
 13139 ms  0x2e09 PK11_Encrypt()
 13139 ms  0x2e09 symkey:0x7f861c395480
           /* TID 0x2e11 */
 13141 ms  0x2e11 PR_Close()
 13141 ms  0x2e11 fd:0x7f860aca0b50
           /* TID 0x2e09 */
 13147 ms  SECKEY_ECParamsToKeySize()
 13147 ms  0x2e09 ret:0x100
 13147 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13147 ms  0x2e09 cx:0x7f860b20ab28
 13147 ms     | 0x2e09 EC_ValidatePublicKey()
 13149 ms     | 0x2e09 ret:0x0
 13149 ms  0x2e09 ret:0x7f86226d8820::7f86226d8820  a0 d1 4d 1d                                      ..M.
 13149 ms  0x2e09 PK11_PubDeriveWithKDF()
 13149 ms  0x2e09 seckey:0x7f86226d8820
 13149 ms     | 0x2e09 EC_ValidatePublicKey()
 13150 ms     | 0x2e09 ret:0x0
 13152 ms  0x2e09 ret:0x7f860b246900
 13152 ms  0x2e09 PK11_DeriveWithFlags()
 13152 ms  0x2e09 basekey:0x7f860b246900
 13152 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13152 ms  0x2e09 ret:0x7f861c395b00
 13152 ms  0x2e09 PK11_Derive()
 13152 ms  0x2e09 basekey:0x7f861c395b00
 13152 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13152 ms  0x2e09 ret:0x7f861c395b80
 13152 ms  0x2e09 SECKEY_DestroyPrivateKey()
 13152 ms  0x2e09 privk:0x7f86226d8820::7f86226d8820  a0 d1 4d 1d                                      ..M.
 13152 ms  0x2e09 privk:0x7f86226d8820::7f86226d8820  e5 e5 e5 e5                                      ....
 13152 ms  0x2e09 PK11_Encrypt()
 13152 ms  0x2e09 symkey:0x7f861c3d2b00
 13154 ms  SECKEY_ECParamsToKeySize()
 13154 ms  0x2e09 ret:0xff
 13154 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13154 ms  0x2e09 cx:0x7f861c356128
 13155 ms     | 0x2e09 EC_ValidatePublicKey()
 13155 ms     | 0x2e09 ret:0x0
 13155 ms  0x2e09 ret:0x7f86226e5820::7f86226e5820  a0 d6 4d 1d                                      ..M.
 13155 ms  0x2e09 PK11_PubDeriveWithKDF()
 13155 ms  0x2e09 seckey:0x7f86226e5820
 13155 ms     | 0x2e09 EC_ValidatePublicKey()
 13155 ms     | 0x2e09 ret:0x0
 13155 ms  0x2e09 ret:0x7f860b246900
 13155 ms  0x2e09 PK11_DeriveWithFlags()
 13155 ms  0x2e09 basekey:0x7f860b246900
 13155 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13155 ms  0x2e09 ret:0x7f861c512780
 13155 ms  0x2e09 PK11_Derive()
 13155 ms  0x2e09 basekey:0x7f861c512780
 13155 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13156 ms  0x2e09 ret:0x7f861c513000
 13156 ms  0x2e09 SECKEY_DestroyPrivateKey()
 13156 ms  0x2e09 privk:0x7f86226e5820::7f86226e5820  a0 d6 4d 1d                                      ..M.
 13156 ms  0x2e09 privk:0x7f86226e5820::7f86226e5820  e5 e5 e5 e5                                      ....
 13156 ms  0x2e09 PK11_Encrypt()
 13156 ms  0x2e09 symkey:0x7f861c513200
 13156 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13156 ms  0x2e09 cx:0x7f861c3567a8
 13157 ms     | 0x2e09 EC_ValidatePublicKey()
 13157 ms     | 0x2e09 ret:0x0
 13157 ms  0x2e09 ret:0x7f86226e5820::7f86226e5820  00 d6 4d 1d                                      ..M.
 13157 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13157 ms  0x2e09 cx:0x7f861c3567a8
 13157 ms     | 0x2e09 EC_ValidatePublicKey()
 13159 ms     | 0x2e09 ret:0x0
 13159 ms  0x2e09 ret:0x7f8622803020::7f8622803020  20 d9 4d 1d                                       .M.
 13159 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13159 ms  0x2e09 cx:0x7f861c356608
 13160 ms     | 0x2e09 EC_ValidatePublicKey()
 13160 ms     | 0x2e09 ret:0x0
 13160 ms  0x2e09 ret:0x7f8622808820::7f8622808820  60 da 4d 1d                                      `.M.
 13160 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13160 ms  0x2e09 cx:0x7f861c356608
 13160 ms     | 0x2e09 EC_ValidatePublicKey()
 13162 ms     | 0x2e09 ret:0x0
 13162 ms  0x2e09 ret:0x7f862280b820::7f862280b820  90 dc 4d 1d                                      ..M.
 13166 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13166 ms  0x2e09 cx:0x7f861c356468
 13166 ms     | 0x2e09 EC_ValidatePublicKey()
 13166 ms     | 0x2e09 ret:0x0
 13166 ms  0x2e09 ret:0x7f8622814020::7f8622814020  10 df 4d 1d                                      ..M.
 13166 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13166 ms  0x2e09 cx:0x7f861c356468
 13167 ms     | 0x2e09 EC_ValidatePublicKey()
 13168 ms     | 0x2e09 ret:0x0
 13168 ms  0x2e09 ret:0x7f862281b020::7f862281b020  40 82 66 1d                                      @.f.
 13169 ms  0x2e09 PK11_Encrypt()
 13169 ms  0x2e09 symkey:0x7f860ad78e80
           /* TID 0x2e9e */
 13170 ms  0x2e9e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x2e11 */
 13170 ms  0x2e11 PR_Close()
 13170 ms  0x2e11 fd:0x7f861c7e8640
           /* TID 0x2e9e */
 13171 ms  0x2e9e ret:0x0
           /* TID 0x2e09 */
 13172 ms  SECKEY_ECParamsToKeySize()
 13172 ms  0x2e09 ret:0x100
 13172 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13172 ms  0x2e09 cx:0x7f861c3562c8
 13172 ms     | 0x2e09 EC_ValidatePublicKey()
 13174 ms     | 0x2e09 ret:0x0
 13174 ms  0x2e09 ret:0x7f862281c820::7f862281c820  80 83 66 1d                                      ..f.
 13174 ms  0x2e09 PK11_PubDeriveWithKDF()
 13174 ms  0x2e09 seckey:0x7f862281c820
 13174 ms     | 0x2e09 EC_ValidatePublicKey()
 13176 ms     | 0x2e09 ret:0x0
 13177 ms  0x2e09 ret:0x7f860b246900
 13177 ms  0x2e09 PK11_DeriveWithFlags()
 13177 ms  0x2e09 basekey:0x7f860b246900
 13177 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13177 ms  0x2e09 ret:0x7f860ac86400
 13177 ms  0x2e09 PK11_Derive()
 13177 ms  0x2e09 basekey:0x7f860ac86400
 13177 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13177 ms  0x2e09 ret:0x7f861c1fb680
 13178 ms  0x2e09 SECKEY_DestroyPrivateKey()
 13178 ms  0x2e09 privk:0x7f862281c820::7f862281c820  80 83 66 1d                                      ..f.
 13178 ms  0x2e09 privk:0x7f862281c820::7f862281c820  e5 e5 e5 e5                                      ....
 13178 ms  0x2e09 PK11_Encrypt()
 13178 ms  0x2e09 symkey:0x7f861c7ca480
 13179 ms  0x2e09 SSL_AuthCertificateComplete()
 13179 ms  0x2e09 fd:0x7f860af323a0
 13179 ms  0x2e09 err:0x0
 13179 ms  0x2e09 SSL_AuthCertificateComplete()
 13179 ms  0x2e09 fd:0x7f861d9211f0
 13179 ms  0x2e09 err:0x0
 13181 ms  0x2e09 SECKEY_DestroyPrivateKey()
 13181 ms  0x2e09 privk:0x7f861dc1e820::7f861dc1e820  60 10 3d 1c                                      `.=.
 13181 ms  0x2e09 privk:0x7f861dc1e820::7f861dc1e820  e5 e5 e5 e5                                      ....
 13181 ms  0x2e09 SECKEY_DestroyPrivateKey()
 13181 ms  0x2e09 privk:0x7f861c35d020::7f861c35d020  20 ce 38 1c                                       .8.
 13181 ms  0x2e09 privk:0x7f861c35d020::7f861c35d020  e5 e5 e5 e5                                      ....
 13182 ms  0x2e09 PK11_Encrypt()
 13182 ms  0x2e09 symkey:0x7f861c395480
 13182 ms  0x2e09 PK11_Encrypt()
 13182 ms  0x2e09 symkey:0x7f861c395480
 13182 ms  0x2e09 PK11_Encrypt()
 13182 ms  0x2e09 symkey:0x7f861c7ca480
 13183 ms  0x2e09 SSL_ImportFD()
 13183 ms  0x2e09 ret:0x7f860aca0b50
 13183 ms  0x2e09 SSL_AuthCertificateHook()
 13183 ms  0x2e09 fd:0x7f860aca0b50
 13183 ms  0x2e09 ret:0x0
 13183 ms  0x2e09 PR_Connect()
 13183 ms  0x2e09 fd:0x7f860aca0b50
 13183 ms  0x2e09 PK11_Encrypt()
 13183 ms  0x2e09 symkey:0x7f861c395480
 13183 ms  0x2e09 PK11_Encrypt()
 13183 ms  0x2e09 symkey:0x7f861c395480
 13184 ms  0x2e09 PR_Connect()
 13184 ms  0x2e09 fd:0x7f861bfde370
           /* TID 0x2e9a */
 13196 ms  0x2e9a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13196 ms  0x2e9a ret:0x0
           /* TID 0x2e11 */
 13196 ms  0x2e11 PR_Close()
 13196 ms  0x2e11 fd:0x7f860aca08e0
           /* TID 0x2e09 */
 13196 ms  0x2e09 SSL_AuthCertificateComplete()
 13196 ms  0x2e09 fd:0x7f861c1edd00
 13196 ms  0x2e09 err:0x0
 13196 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 13196 ms     | 0x2e09 privk:0x7f8622003020::7f8622003020  e0 1c 35 1c                                      ..5.
 13197 ms     | 0x2e09 privk:0x7f8622003020::7f8622003020  e5 e5 e5 e5                                      ....
 13197 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 13197 ms     | 0x2e09 privk:0x7f8620db3820::7f8620db3820  90 92 1f 0b                                      ....
 13197 ms     | 0x2e09 privk:0x7f8620db3820::7f8620db3820  e5 e5 e5 e5                                      ....
 13197 ms  0x2e09 PK11_Encrypt()
 13197 ms  0x2e09 symkey:0x7f861c3d2b00
 13197 ms  0x2e09 PK11_Encrypt()
 13197 ms  0x2e09 symkey:0x7f861c395480
 13198 ms  0x2e09 SECKEY_DestroyPrivateKey()
 13198 ms  0x2e09 privk:0x7f861c35b820::7f861c35b820  b0 8f fc 1b                                      ....
 13198 ms  0x2e09 privk:0x7f861c35b820::7f861c35b820  e5 e5 e5 e5                                      ....
 13198 ms  0x2e09 SECKEY_DestroyPrivateKey()
 13198 ms  0x2e09 privk:0x7f860aa4a820::7f860aa4a820  50 41 d3 0a                                      PA..
 13198 ms  0x2e09 privk:0x7f860aa4a820::7f860aa4a820  e5 e5 e5 e5                                      ....
 13198 ms  0x2e09 PR_Close()
 13198 ms  0x2e09 fd:0x7f861c1edd00
 13198 ms     | 0x2e09 PK11_Encrypt()
 13198 ms     | 0x2e09 symkey:0x7f861c3d2b00
 13203 ms  SECKEY_ECParamsToKeySize()
 13203 ms  0x2e09 ret:0xff
 13203 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13203 ms  0x2e09 cx:0x7f861c3567a8
 13204 ms     | 0x2e09 EC_ValidatePublicKey()
 13204 ms     | 0x2e09 ret:0x0
 13204 ms  0x2e09 ret:0x7f861dc0e820::7f861dc0e820  00 9b 1a 0b                                      ....
 13204 ms  0x2e09 PK11_PubDeriveWithKDF()
 13204 ms  0x2e09 seckey:0x7f861dc0e820
 13204 ms     | 0x2e09 EC_ValidatePublicKey()
 13204 ms     | 0x2e09 ret:0x0
 13204 ms  0x2e09 ret:0x7f861c395b80
 13204 ms  0x2e09 PK11_DeriveWithFlags()
 13204 ms  0x2e09 basekey:0x7f861c395b80
 13204 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13204 ms  0x2e09 ret:0x7f861c395b00
 13204 ms  0x2e09 PK11_Derive()
 13204 ms  0x2e09 basekey:0x7f861c395b00
 13205 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13205 ms  0x2e09 ret:0x7f860b246900
 13205 ms  0x2e09 SECKEY_DestroyPrivateKey()
 13205 ms  0x2e09 privk:0x7f861dc0e820::7f861dc0e820  00 9b 1a 0b                                      ....
 13205 ms  0x2e09 privk:0x7f861dc0e820::7f861dc0e820  e5 e5 e5 e5                                      ....
 13205 ms  0x2e09 PK11_Encrypt()
 13205 ms  0x2e09 symkey:0x7f861c3d2680
           /* TID 0x2e9f */
 13206 ms  0x2e9f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13206 ms  0x2e9f ret:0x0
           /* TID 0x2e11 */
 13206 ms  0x2e11 PR_Close()
 13206 ms  0x2e11 fd:0x7f860aca08e0
           /* TID 0x2e09 */
 13206 ms  0x2e09 SSL_AuthCertificateComplete()
 13206 ms  0x2e09 fd:0x7f861d671e50
 13206 ms  0x2e09 err:0x0
 13206 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 13206 ms     | 0x2e09 privk:0x7f862200e020::7f862200e020  e0 ac 7f 1c                                      ....
 13206 ms     | 0x2e09 privk:0x7f862200e020::7f862200e020  e5 e5 e5 e5                                      ....
 13206 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 13206 ms     | 0x2e09 privk:0x7f8622009020::7f8622009020  90 67 7e 1c                                      .g~.
 13206 ms     | 0x2e09 privk:0x7f8622009020::7f8622009020  e5 e5 e5 e5                                      ....
 13207 ms  0x2e09 PK11_Encrypt()
 13207 ms  0x2e09 symkey:0x7f861c513200
 13207 ms  0x2e09 PK11_Encrypt()
 13207 ms  0x2e09 symkey:0x7f861c513200
 13207 ms  0x2e09 PK11_Encrypt()
 13207 ms  0x2e09 symkey:0x7f861c513200
 13216 ms  0x2e09 PK11_Derive()
 13216 ms  0x2e09 basekey:0x7f861c395b80
 13216 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13216 ms  0x2e09 ret:0x7f861c395800
 13216 ms  0x2e09 PK11_PubDeriveWithKDF()
 13216 ms  0x2e09 seckey:0x7f8622808820
 13216 ms     | 0x2e09 EC_ValidatePublicKey()
 13216 ms     | 0x2e09 ret:0x0
 13221 ms  0x2e09 ret:0x7f861c395b80
 13221 ms  SECKEY_ECParamsToKeySize()
 13221 ms  0x2e09 ret:0xff
 13221 ms  0x2e09 PK11_DeriveWithFlags()
 13221 ms  0x2e09 basekey:0x7f861c395800
 13221 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13221 ms  0x2e09 ret:0x7f861c395a80
 13221 ms  0x2e09 PK11_Derive()
 13221 ms  0x2e09 basekey:0x7f861c395b80
 13221 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13221 ms  0x2e09 ret:0x7f861c3d3000
 13221 ms  0x2e09 PK11_DeriveWithFlags()
 13221 ms  0x2e09 basekey:0x7f861c3d3000
 13221 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13221 ms  0x2e09 ret:0x7f861c395800
 13221 ms  0x2e09 PK11_DeriveWithFlags()
 13221 ms  0x2e09 basekey:0x7f861c3d3000
 13221 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13221 ms  0x2e09 ret:0x7f861c395b80
 13221 ms  0x2e09 PK11_DeriveWithFlags()
 13221 ms  0x2e09 basekey:0x7f861c3d3000
 13221 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13221 ms  0x2e09 ret:0x7f861c395a80
 13221 ms  0x2e09 PK11_Derive()
 13221 ms  0x2e09 basekey:0x7f861c512180
 13221 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13221 ms  0x2e09 ret:0x7f861c512200
 13221 ms  0x2e09 PK11_DeriveWithFlags()
 13221 ms  0x2e09 basekey:0x7f861c395b80
 13221 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13221 ms  0x2e09 ret:0x7f861c3d3000
 13221 ms  0x2e09 PK11_DeriveWithFlags()
 13221 ms  0x2e09 basekey:0x7f861c395b80
 13221 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13221 ms  0x2e09 ret:0x7f861c395a80
 13223 ms  SECKEY_ECParamsToKeySize()
 13223 ms  0x2e09 ret:0x100
 13223 ms  SECKEY_ECParamsToBasePointOrderLen()
 13223 ms  0x2e09 ret:0x100
 13223 ms  SECKEY_ECParamsToBasePointOrderLen()
 13223 ms  0x2e09 ret:0x100
 13223 ms  0x2e09 EC_ValidatePublicKey()
 13225 ms  0x2e09 ret:0x0
 13227 ms  0x2e09 PK11_DeriveWithFlags()
 13227 ms  0x2e09 basekey:0x7f861c395b80
 13227 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13227 ms  0x2e09 ret:0x7f861c395a80
 13228 ms  0x2e09 SECKEY_DestroyPrivateKey()
 13228 ms  0x2e09 privk:0x7f8622018820::7f8622018820  60 da e0 1c                                      `...
 13228 ms  0x2e09 privk:0x7f8622018820::7f8622018820  e5 e5 e5 e5                                      ....
 13228 ms  0x2e09 SECKEY_DestroyPrivateKey()
 13228 ms  0x2e09 privk:0x7f8622014820::7f8622014820  90 d7 e0 1c                                      ....
 13228 ms  0x2e09 privk:0x7f8622014820::7f8622014820  e5 e5 e5 e5                                      ....
 13228 ms  0x2e09 PK11_Derive()
 13228 ms  0x2e09 basekey:0x7f861c395a80
 13228 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13228 ms  0x2e09 ret:0x7f861c512180
 13228 ms  0x2e09 PK11_PubDeriveWithKDF()
 13228 ms  0x2e09 seckey:0x7f8622814020
 13228 ms     | 0x2e09 EC_ValidatePublicKey()
 13228 ms     | 0x2e09 ret:0x0
 13228 ms  0x2e09 ret:0x7f861c395a80
 13228 ms  SECKEY_ECParamsToKeySize()
 13228 ms  0x2e09 ret:0xff
 13228 ms  0x2e09 PK11_DeriveWithFlags()
 13228 ms  0x2e09 basekey:0x7f861c512180
 13228 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13229 ms  0x2e09 ret:0x7f861c7cb080
 13229 ms  0x2e09 PK11_Derive()
 13229 ms  0x2e09 basekey:0x7f861c395a80
 13229 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13229 ms  0x2e09 ret:0x7f861c7cb100
 13229 ms  0x2e09 PK11_DeriveWithFlags()
 13229 ms  0x2e09 basekey:0x7f861c7cb100
 13229 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13229 ms  0x2e09 ret:0x7f861c512180
 13229 ms  0x2e09 PK11_DeriveWithFlags()
 13229 ms  0x2e09 basekey:0x7f861c7cb100
 13229 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13229 ms  0x2e09 ret:0x7f861c395a80
 13229 ms  0x2e09 PK11_DeriveWithFlags()
 13229 ms  0x2e09 basekey:0x7f861c7cb100
 13229 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13229 ms  0x2e09 ret:0x7f861c7cb080
 13229 ms  0x2e09 PK11_Derive()
 13229 ms  0x2e09 basekey:0x7f861c7cb180
 13229 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13229 ms  0x2e09 ret:0x7f861c7cb200
 13229 ms  0x2e09 PK11_DeriveWithFlags()
 13229 ms  0x2e09 basekey:0x7f861c395a80
 13229 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13229 ms  0x2e09 ret:0x7f861c7cb100
 13229 ms  0x2e09 PK11_DeriveWithFlags()
 13229 ms  0x2e09 basekey:0x7f861c395a80
 13229 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13229 ms  0x2e09 ret:0x7f861c7cb080
 13230 ms  SECKEY_ECParamsToKeySize()
 13230 ms  0x2e09 ret:0x100
 13230 ms  SECKEY_ECParamsToBasePointOrderLen()
 13230 ms  0x2e09 ret:0x100
 13230 ms  SECKEY_ECParamsToBasePointOrderLen()
 13230 ms  0x2e09 ret:0x100
 13230 ms  0x2e09 EC_ValidatePublicKey()
 13232 ms  0x2e09 ret:0x0
 13234 ms  0x2e09 PK11_DeriveWithFlags()
 13234 ms  0x2e09 basekey:0x7f861c395a80
 13234 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13234 ms  0x2e09 ret:0x7f861c7cb080
 13234 ms  0x2e09 PR_Close()
 13234 ms  0x2e09 fd:0x7f861d9211f0
 13234 ms     | 0x2e09 PK11_Encrypt()
 13234 ms     | 0x2e09 symkey:0x7f861c7ca480
           /* TID 0x2e9e */
 13235 ms  0x2e9e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13235 ms  0x2e9e ret:0x0
           /* TID 0x2e11 */
 13235 ms  0x2e11 PR_Close()
 13235 ms  0x2e11 fd:0x7f861c38f2e0
           /* TID 0x2e09 */
 13236 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13236 ms  0x2e09 cx:0x7f861c356fc8
 13236 ms     | 0x2e09 EC_ValidatePublicKey()
 13236 ms     | 0x2e09 ret:0x0
 13236 ms  0x2e09 ret:0x7f860aa4a820::7f860aa4a820  60 75 f2 0a                                      `u..
 13236 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13236 ms  0x2e09 cx:0x7f861c356fc8
 13237 ms     | 0x2e09 EC_ValidatePublicKey()
 13239 ms     | 0x2e09 ret:0x0
 13239 ms  0x2e09 ret:0x7f862200d820::7f862200d820  40 c2 38 1c                                      @.8.
 13239 ms  0x2e09 SSL_AuthCertificateComplete()
 13239 ms  0x2e09 fd:0x7f861ce7b0a0
 13239 ms  0x2e09 err:0x0
 13240 ms  0x2e09 PK11_Encrypt()
 13240 ms  0x2e09 symkey:0x7f861c3d2680
 13240 ms  0x2e09 PK11_Encrypt()
 13240 ms  0x2e09 symkey:0x7f861c513200
 13240 ms  0x2e09 PK11_Encrypt()
 13240 ms  0x2e09 symkey:0x7f861c513200
 13242 ms  0x2e09 SECKEY_DestroyPrivateKey()
 13242 ms  0x2e09 privk:0x7f8622803020::7f8622803020  20 d9 4d 1d                                       .M.
 13243 ms  0x2e09 privk:0x7f8622803020::7f8622803020  e5 e5 e5 e5                                      ....
 13243 ms  0x2e09 SECKEY_DestroyPrivateKey()
 13243 ms  0x2e09 privk:0x7f86226e5820::7f86226e5820  00 d6 4d 1d                                      ..M.
 13243 ms  0x2e09 privk:0x7f86226e5820::7f86226e5820  e5 e5 e5 e5                                      ....
 13243 ms  0x2e09 PR_Close()
 13243 ms  0x2e09 fd:0x7f861ce7b0a0
 13243 ms     | 0x2e09 PK11_Encrypt()
 13243 ms     | 0x2e09 symkey:0x7f861c3d2680
 13293 ms  0x2e09 PK11_Derive()
 13293 ms  0x2e09 basekey:0x7f860b246900
 13293 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13293 ms  0x2e09 ret:0x7f861c395b00
 13293 ms  0x2e09 PK11_PubDeriveWithKDF()
 13293 ms  0x2e09 seckey:0x7f860aa4a820
 13293 ms     | 0x2e09 EC_ValidatePublicKey()
 13293 ms     | 0x2e09 ret:0x0
 13294 ms  0x2e09 ret:0x7f860b246900
 13294 ms  SECKEY_ECParamsToKeySize()
 13294 ms  0x2e09 ret:0xff
 13294 ms  0x2e09 PK11_DeriveWithFlags()
 13294 ms  0x2e09 basekey:0x7f861c395b00
 13294 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13294 ms  0x2e09 ret:0x7f861c1fb680
 13294 ms  0x2e09 PK11_Derive()
 13294 ms  0x2e09 basekey:0x7f860b246900
 13294 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13294 ms  0x2e09 ret:0x7f860ac86400
 13294 ms  0x2e09 PK11_DeriveWithFlags()
 13294 ms  0x2e09 basekey:0x7f860ac86400
 13294 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13294 ms  0x2e09 ret:0x7f861c395b00
 13294 ms  0x2e09 PK11_DeriveWithFlags()
 13294 ms  0x2e09 basekey:0x7f860ac86400
 13294 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13294 ms  0x2e09 ret:0x7f860b246900
 13294 ms  0x2e09 PK11_DeriveWithFlags()
 13294 ms  0x2e09 basekey:0x7f860ac86400
 13294 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13294 ms  0x2e09 ret:0x7f861c1fb680
 13294 ms  0x2e09 PK11_Derive()
 13294 ms  0x2e09 basekey:0x7f861c7cb080
 13294 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13294 ms  0x2e09 ret:0x7f861c7cb180
 13294 ms  0x2e09 PK11_DeriveWithFlags()
 13294 ms  0x2e09 basekey:0x7f860b246900
 13294 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13294 ms  0x2e09 ret:0x7f860ac86400
 13294 ms  0x2e09 PK11_DeriveWithFlags()
 13294 ms  0x2e09 basekey:0x7f860b246900
 13294 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13294 ms  0x2e09 ret:0x7f861c1fb680
 13297 ms  SECKEY_ECParamsToKeySize()
 13297 ms  0x2e09 ret:0x100
 13297 ms  SECKEY_ECParamsToBasePointOrderLen()
 13297 ms  0x2e09 ret:0x100
 13297 ms  SECKEY_ECParamsToBasePointOrderLen()
 13297 ms  0x2e09 ret:0x100
 13297 ms  0x2e09 EC_ValidatePublicKey()
 13298 ms  0x2e09 ret:0x0
 13300 ms  0x2e09 PK11_DeriveWithFlags()
 13300 ms  0x2e09 basekey:0x7f860b246900
 13301 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13301 ms  0x2e09 ret:0x7f861c1fb680
 13301 ms  0x2e09 PR_Connect()
 13301 ms  0x2e09 fd:0x7f861d9f1190
           /* TID 0x2e11 */
 13306 ms  0x2e11 PR_Close()
 13306 ms  0x2e11 fd:0x7f861d921670
           /* TID 0x2e09 */
 13311 ms  0x2e09 PK11_Encrypt()
 13311 ms  0x2e09 symkey:0x7f861c513200
           /* TID 0x2e11 */
 13312 ms  0x2e11 PR_Close()
 13312 ms  0x2e11 fd:0x7f861d921670
 13371 ms  0x2e11 PR_Close()
 13371 ms  0x2e11 fd:0x7f861c1f51c0
           /* TID 0x2e9a */
 13371 ms  0x2e9a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13372 ms  0x2e9a ret:0x0
           /* TID 0x2e09 */
 13372 ms  0x2e09 SSL_AuthCertificateComplete()
 13372 ms  0x2e09 fd:0x7f861d671ca0
 13372 ms  0x2e09 err:0x0
 13372 ms     | 0x2e09 PK11_DeriveWithFlags()
 13372 ms     | 0x2e09 basekey:0x7f861c512200
 13372 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13372 ms     | 0x2e09 ret:0x7f861c1fb680
 13372 ms     | 0x2e09 PK11_DeriveWithFlags()
 13372 ms     | 0x2e09 basekey:0x7f861c512200
 13372 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13372 ms     | 0x2e09 ret:0x7f861c7cb080
 13372 ms     | 0x2e09 PK11_DeriveWithFlags()
 13372 ms     | 0x2e09 basekey:0x7f861c512200
 13372 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13372 ms     | 0x2e09 ret:0x7f861c3d2b80
 13372 ms     | 0x2e09 PK11_DeriveWithFlags()
 13372 ms     | 0x2e09 basekey:0x7f861c395800
 13372 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13372 ms     | 0x2e09 ret:0x7f861c3d2b00
 13372 ms     | 0x2e09 PK11_DeriveWithFlags()
 13372 ms     | 0x2e09 basekey:0x7f861c395800
 13372 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13372 ms     | 0x2e09 ret:0x7f861c3d2a00
 13372 ms     | 0x2e09 PK11_DeriveWithFlags()
 13372 ms     | 0x2e09 basekey:0x7f861c7cb080
 13372 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13372 ms     | 0x2e09 ret:0x7f861c3d2a00
 13372 ms     | 0x2e09 PK11_DeriveWithFlags()
 13372 ms     | 0x2e09 basekey:0x7f861c7cb080
 13372 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13372 ms     | 0x2e09 ret:0x7f861c3d2680
 13372 ms     | 0x2e09 PK11_DeriveWithFlags()
 13372 ms     | 0x2e09 basekey:0x7f861c395800
 13372 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13372 ms     | 0x2e09 ret:0x7f861c3d3000
 13372 ms     | 0x2e09 PK11_Encrypt()
 13372 ms     | 0x2e09 symkey:0x7f861c3d2b00
 13372 ms     | 0x2e09 PK11_DeriveWithFlags()
 13372 ms     | 0x2e09 basekey:0x7f861c1fb680
 13372 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13372 ms     | 0x2e09 ret:0x7f861c3d3000
 13372 ms     | 0x2e09 PK11_DeriveWithFlags()
 13372 ms     | 0x2e09 basekey:0x7f861c1fb680
 13372 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13372 ms     | 0x2e09 ret:0x7f861c3d2680
 13372 ms     | 0x2e09 PK11_DeriveWithFlags()
 13372 ms     | 0x2e09 basekey:0x7f861c512200
 13372 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13373 ms     | 0x2e09 ret:0x7f861c3d2b00
 13373 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 13373 ms     | 0x2e09 privk:0x7f862280b820::7f862280b820  90 dc 4d 1d                                      ..M.
 13373 ms     | 0x2e09 privk:0x7f862280b820::7f862280b820  e5 e5 e5 e5                                      ....
 13373 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 13373 ms     | 0x2e09 privk:0x7f8622808820::7f8622808820  60 da 4d 1d                                      `.M.
 13373 ms     | 0x2e09 privk:0x7f8622808820::7f8622808820  e5 e5 e5 e5                                      ....
 13373 ms  0x2e09 PK11_Encrypt()
 13373 ms  0x2e09 symkey:0x7f861c3d3000
 13373 ms  0x2e09 PK11_Encrypt()
 13373 ms  0x2e09 symkey:0x7f861c3d3000
           /* TID 0x2e11 */
 13380 ms  0x2e11 PR_Close()
 13380 ms  0x2e11 fd:0x7f861c3e1c40
           /* TID 0x2e9f */
 13380 ms  0x2e9f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13380 ms  0x2e9f ret:0x0
           /* TID 0x2e09 */
 13380 ms  0x2e09 SSL_AuthCertificateComplete()
 13380 ms  0x2e09 fd:0x7f861d4e9790
 13380 ms  0x2e09 err:0x0
 13380 ms     | 0x2e09 PK11_DeriveWithFlags()
 13380 ms     | 0x2e09 basekey:0x7f861c7cb200
 13380 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13380 ms     | 0x2e09 ret:0x7f861c395b80
 13380 ms     | 0x2e09 PK11_DeriveWithFlags()
 13380 ms     | 0x2e09 basekey:0x7f861c7cb200
 13380 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13380 ms     | 0x2e09 ret:0x7f861c395800
 13380 ms     | 0x2e09 PK11_DeriveWithFlags()
 13380 ms     | 0x2e09 basekey:0x7f861c7cb200
 13380 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13380 ms     | 0x2e09 ret:0x7f861c512200
 13380 ms     | 0x2e09 PK11_DeriveWithFlags()
 13380 ms     | 0x2e09 basekey:0x7f861c512180
 13380 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13380 ms     | 0x2e09 ret:0x7f861c3d2680
 13380 ms     | 0x2e09 PK11_DeriveWithFlags()
 13380 ms     | 0x2e09 basekey:0x7f861c512180
 13380 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13380 ms     | 0x2e09 ret:0x7f861c7ca100
 13380 ms     | 0x2e09 PK11_DeriveWithFlags()
 13380 ms     | 0x2e09 basekey:0x7f861c395800
 13380 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13380 ms     | 0x2e09 ret:0x7f861c7ca100
 13380 ms     | 0x2e09 PK11_DeriveWithFlags()
 13380 ms     | 0x2e09 basekey:0x7f861c395800
 13380 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13381 ms     | 0x2e09 ret:0x7f861c7ca500
 13381 ms     | 0x2e09 PK11_DeriveWithFlags()
 13381 ms     | 0x2e09 basekey:0x7f861c512180
 13381 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13381 ms     | 0x2e09 ret:0x7f861c7cb100
 13381 ms     | 0x2e09 PK11_Encrypt()
 13381 ms     | 0x2e09 symkey:0x7f861c3d2680
 13381 ms     | 0x2e09 PK11_DeriveWithFlags()
 13381 ms     | 0x2e09 basekey:0x7f861c395b80
 13381 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13381 ms     | 0x2e09 ret:0x7f861c7cb100
 13381 ms     | 0x2e09 PK11_DeriveWithFlags()
 13381 ms     | 0x2e09 basekey:0x7f861c395b80
 13381 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13381 ms     | 0x2e09 ret:0x7f861c7ca500
 13381 ms     | 0x2e09 PK11_DeriveWithFlags()
 13381 ms     | 0x2e09 basekey:0x7f861c7cb200
 13381 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 13381 ms     | 0x2e09 ret:0x7f861c3d2680
 13381 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 13381 ms     | 0x2e09 privk:0x7f862281b020::7f862281b020  40 82 66 1d                                      @.f.
 13381 ms     | 0x2e09 privk:0x7f862281b020::7f862281b020  e5 e5 e5 e5                                      ....
 13381 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 13381 ms     | 0x2e09 privk:0x7f8622814020::7f8622814020  10 df 4d 1d                                      ..M.
 13381 ms     | 0x2e09 privk:0x7f8622814020::7f8622814020  e5 e5 e5 e5                                      ....
 13384 ms  0x2e09 PK11_Encrypt()
 13384 ms  0x2e09 symkey:0x7f861c7cb100
 13384 ms  0x2e09 PK11_Encrypt()
 13384 ms  0x2e09 symkey:0x7f861c3d3000
           /* TID 0x2e11 */
 13394 ms  0x2e11 PR_Close()
 13394 ms  0x2e11 fd:0x7f860aca0a30
           /* TID 0x2e09 */
 13400 ms  0x2e09 PK11_Encrypt()
 13400 ms  0x2e09 symkey:0x7f861c080d00
 13401 ms  0x2e09 PK11_Encrypt()
 13401 ms  0x2e09 symkey:0x7f861c080d00
 13401 ms  0x2e09 PK11_Encrypt()
 13401 ms  0x2e09 symkey:0x7f860b1f3900
 13401 ms  0x2e09 PK11_Encrypt()
 13401 ms  0x2e09 symkey:0x7f860ac5a080
 13402 ms  0x2e09 PK11_Encrypt()
 13402 ms  0x2e09 symkey:0x7f861c080d00
 13402 ms  0x2e09 PK11_Encrypt()
 13402 ms  0x2e09 symkey:0x7f861c394f00
 13402 ms  0x2e09 SSL_ImportFD()
 13402 ms  0x2e09 ret:0x7f861d9f1c70
 13402 ms  0x2e09 SSL_AuthCertificateHook()
 13402 ms  0x2e09 fd:0x7f861d9f1c70
 13402 ms  0x2e09 ret:0x0
 13402 ms  0x2e09 PR_Connect()
 13402 ms  0x2e09 fd:0x7f861d9f1c70
 13403 ms  0x2e09 SSL_ImportFD()
 13403 ms  0x2e09 ret:0x7f861d671af0
 13403 ms  0x2e09 SSL_AuthCertificateHook()
 13403 ms  0x2e09 fd:0x7f861d671af0
 13403 ms  0x2e09 ret:0x0
 13403 ms  0x2e09 PR_Connect()
 13403 ms  0x2e09 fd:0x7f861d671af0
 13403 ms  0x2e09 SSL_ImportFD()
 13403 ms  0x2e09 ret:0x7f861d9f1490
 13403 ms  0x2e09 SSL_AuthCertificateHook()
 13403 ms  0x2e09 fd:0x7f861d9f1490
 13403 ms  0x2e09 ret:0x0
 13403 ms  0x2e09 PR_Connect()
 13403 ms  0x2e09 fd:0x7f861d9f1490
 13403 ms  0x2e09 SSL_ImportFD()
 13403 ms  0x2e09 ret:0x7f861d921ac0
 13403 ms  0x2e09 SSL_AuthCertificateHook()
 13403 ms  0x2e09 fd:0x7f861d921ac0
 13403 ms  0x2e09 ret:0x0
 13403 ms  0x2e09 PR_Connect()
 13403 ms  0x2e09 fd:0x7f861d921ac0
 13403 ms  0x2e09 SSL_ImportFD()
 13403 ms  0x2e09 ret:0x7f861d9f1760
 13403 ms  0x2e09 SSL_AuthCertificateHook()
 13403 ms  0x2e09 fd:0x7f861d9f1760
 13403 ms  0x2e09 ret:0x0
 13403 ms  0x2e09 PR_Connect()
 13403 ms  0x2e09 fd:0x7f861d9f1760
 13410 ms  0x2e09 PK11_DeriveWithFlags()
 13410 ms  0x2e09 basekey:0x7f861c3d2b00
 13410 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13410 ms  0x2e09 ret:0x7f861c395a80
 13410 ms  0x2e09 PK11_DeriveWithFlags()
 13410 ms  0x2e09 basekey:0x7f861c3d2b00
 13410 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13411 ms  0x2e09 ret:0x7f861c395a80
 13411 ms  0x2e09 PK11_Encrypt()
 13411 ms  0x2e09 symkey:0x7f861c3d3000
 13418 ms  0x2e09 PK11_DeriveWithFlags()
 13418 ms  0x2e09 basekey:0x7f861c3d2680
 13418 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13418 ms  0x2e09 ret:0x7f861c395a80
 13418 ms  0x2e09 PK11_DeriveWithFlags()
 13418 ms  0x2e09 basekey:0x7f861c3d2680
 13418 ms     | 0x2e09 PK11_DeriveWithTemplate()
 13418 ms  0x2e09 ret:0x7f861c395a80
 13418 ms  0x2e09 PR_Close()
 13418 ms  0x2e09 fd:0x7f861d4e9790
 13418 ms     | 0x2e09 PK11_Encrypt()
 13418 ms     | 0x2e09 symkey:0x7f861c7cb100
 13435 ms  0x2e09 SSL_ImportFD()
 13435 ms  0x2e09 ret:0x7f861ce7b070
 13435 ms  0x2e09 SSL_AuthCertificateHook()
 13435 ms  0x2e09 fd:0x7f861ce7b070
 13436 ms  0x2e09 ret:0x0
 13436 ms  0x2e09 PR_Connect()
 13436 ms  0x2e09 fd:0x7f861ce7b070
 13436 ms  0x2e09 SSL_ImportFD()
 13436 ms  0x2e09 ret:0x7f861c3e1c40
 13436 ms  0x2e09 SSL_AuthCertificateHook()
 13436 ms  0x2e09 fd:0x7f861c3e1c40
 13436 ms  0x2e09 ret:0x0
 13436 ms  0x2e09 PR_Connect()
 13436 ms  0x2e09 fd:0x7f861c3e1c40
 13436 ms  0x2e09 SSL_ImportFD()
 13436 ms  0x2e09 ret:0x7f861c7b19a0
 13436 ms  0x2e09 SSL_AuthCertificateHook()
 13436 ms  0x2e09 fd:0x7f861c7b19a0
 13436 ms  0x2e09 ret:0x0
 13436 ms  0x2e09 PR_Connect()
 13436 ms  0x2e09 fd:0x7f861c7b19a0
           /* TID 0x2e11 */
 13439 ms  0x2e11 PR_Close()
 13439 ms  0x2e11 fd:0x7f860af32760
           /* TID 0x2e09 */
 13441 ms  0x2e09 PK11_Encrypt()
 13441 ms  0x2e09 symkey:0x7f861c080d00
 13443 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13443 ms  0x2e09 cx:0x7f861c357648
 13443 ms     | 0x2e09 EC_ValidatePublicKey()
 13443 ms     | 0x2e09 ret:0x0
 13443 ms  0x2e09 ret:0x7f861dc0e820::7f861dc0e820  00 11 3d 1c                                      ..=.
 13443 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13443 ms  0x2e09 cx:0x7f861c357648
 13444 ms     | 0x2e09 EC_ValidatePublicKey()
 13445 ms     | 0x2e09 ret:0x0
 13445 ms  0x2e09 ret:0x7f86221a5020::7f86221a5020  30 13 3d 1c                                      0.=.
 13446 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13446 ms  0x2e09 cx:0x7f861c357988
 13447 ms     | 0x2e09 EC_ValidatePublicKey()
 13447 ms     | 0x2e09 ret:0x0
 13447 ms  0x2e09 ret:0x7f86226dc820::7f86226dc820  80 13 3d 1c                                      ..=.
 13447 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13447 ms  0x2e09 cx:0x7f861c357988
 13447 ms     | 0x2e09 EC_ValidatePublicKey()
 13449 ms     | 0x2e09 ret:0x0
 13449 ms  0x2e09 ret:0x7f86226e5820::7f86226e5820  60 65 7e 1c                                      `e~.
 13460 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13460 ms  0x2e09 cx:0x7f861c3574a8
 13460 ms     | 0x2e09 EC_ValidatePublicKey()
 13460 ms     | 0x2e09 ret:0x0
 13460 ms  0x2e09 ret:0x7f8622803020::7f8622803020  30 68 7e 1c                                      0h~.
 13461 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13461 ms  0x2e09 cx:0x7f861c3574a8
 13461 ms     | 0x2e09 EC_ValidatePublicKey()
 13463 ms     | 0x2e09 ret:0x0
 13463 ms  0x2e09 ret:0x7f8622806820::7f8622806820  40 d7 e0 1c                                      @...
 13464 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13464 ms  0x2e09 cx:0x7f861c357b28
 13464 ms     | 0x2e09 EC_ValidatePublicKey()
 13464 ms     | 0x2e09 ret:0x0
 13464 ms  0x2e09 ret:0x7f862280b820::7f862280b820  80 d8 e0 1c                                      ....
 13464 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13464 ms  0x2e09 cx:0x7f861c357b28
 13465 ms     | 0x2e09 EC_ValidatePublicKey()
 13466 ms     | 0x2e09 ret:0x0
 13466 ms  0x2e09 ret:0x7f8622810020::7f8622810020  50 db e0 1c                                      P...
 13467 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13467 ms  0x2e09 cx:0x7f861c3577e8
 13467 ms     | 0x2e09 EC_ValidatePublicKey()
 13467 ms     | 0x2e09 ret:0x0
 13467 ms  0x2e09 ret:0x7f862281b020::7f862281b020  e0 dc e0 1c                                      ....
 13468 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13468 ms  0x2e09 cx:0x7f861c3577e8
 13468 ms     | 0x2e09 EC_ValidatePublicKey()
 13470 ms     | 0x2e09 ret:0x0
 13470 ms  0x2e09 ret:0x7f862281e020::7f862281e020  50 d1 4d 1d                                      P.M.
 13470 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13470 ms  0x2e09 cx:0x7f861c357e68
 13470 ms     | 0x2e09 EC_ValidatePublicKey()
 13470 ms     | 0x2e09 ret:0x0
 13470 ms  0x2e09 ret:0x7f8622967020::7f8622967020  d0 d3 4d 1d                                      ..M.
 13471 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13471 ms  0x2e09 cx:0x7f861c357e68
 13471 ms     | 0x2e09 EC_ValidatePublicKey()
 13473 ms     | 0x2e09 ret:0x0
 13473 ms  0x2e09 ret:0x7f8622969020::7f8622969020  a0 d6 4d 1d                                      ..M.
 13473 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13473 ms  0x2e09 cx:0x7f861c357308
 13473 ms     | 0x2e09 EC_ValidatePublicKey()
 13473 ms     | 0x2e09 ret:0x0
 13473 ms  0x2e09 ret:0x7f862296b820::7f862296b820  d0 d8 4d 1d                                      ..M.
 13473 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13473 ms  0x2e09 cx:0x7f861c357308
 13475 ms     | 0x2e09 EC_ValidatePublicKey()
 13476 ms     | 0x2e09 ret:0x0
 13476 ms  0x2e09 ret:0x7f862296d820::7f862296d820  00 db 4d 1d                                      ..M.
 13476 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13476 ms  0x2e09 cx:0x7f861c356468
 13477 ms     | 0x2e09 EC_ValidatePublicKey()
 13477 ms     | 0x2e09 ret:0x0
 13477 ms  0x2e09 ret:0x7f8622971820::7f8622971820  90 dc 4d 1d                                      ..M.
 13477 ms  0x2e09 SECKEY_CreateECPrivateKey()
 13477 ms  0x2e09 cx:0x7f861c356468
 13478 ms     | 0x2e09 EC_ValidatePublicKey()
 13479 ms     | 0x2e09 ret:0x0
 13479 ms  0x2e09 ret:0x7f8622973820::7f8622973820  b0 df 4d 1d                                      ..M.
           /* TID 0x2e11 */
 13482 ms  0x2e11 PR_Close()
 13482 ms  0x2e11 fd:0x7f860aca0160
 13486 ms  0x2e11 PR_Close()
 13486 ms  0x2e11 fd:0x7f861c7e80a0
           /* TID 0x2e9e */
 13487 ms  0x2e9e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13487 ms  0x2e9e ret:0x0
           /* TID 0x2e11 */
 13487 ms  0x2e11 PR_Close()
 13487 ms  0x2e11 fd:0x7f861d9f1100
 13503 ms  0x2e11 PR_Close()
 13503 ms  0x2e11 fd:0x7f861dcd0970
           /* TID 0x2e65 */
 13503 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13503 ms  0x2e65 ret:0x0
 13503 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13503 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
 14509 ms  SECKEY_ECParamsToKeySize()
 14509 ms  0x2e09 ret:0xff
 14509 ms  0x2e09 SECKEY_CreateECPrivateKey()
 14509 ms  0x2e09 cx:0x7f861c357988
 14511 ms     | 0x2e09 EC_ValidatePublicKey()
 14511 ms     | 0x2e09 ret:0x0
 14511 ms  0x2e09 ret:0x7f8622981020::7f8622981020  d0 83 66 1d                                      ..f.
 14511 ms  0x2e09 PK11_PubDeriveWithKDF()
 14511 ms  0x2e09 seckey:0x7f8622981020
 14511 ms     | 0x2e09 EC_ValidatePublicKey()
 14511 ms     | 0x2e09 ret:0x0
 14512 ms  0x2e09 ret:0x7f861c512200
 14512 ms  0x2e09 PK11_DeriveWithFlags()
 14512 ms  0x2e09 basekey:0x7f861c512200
 14512 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14512 ms  0x2e09 ret:0x7f861c395800
 14512 ms  0x2e09 PK11_Derive()
 14512 ms  0x2e09 basekey:0x7f861c395800
 14512 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14512 ms  0x2e09 ret:0x7f861c395b80
 14512 ms  0x2e09 SECKEY_DestroyPrivateKey()
 14512 ms  0x2e09 privk:0x7f8622981020::7f8622981020  d0 83 66 1d                                      ..f.
 14512 ms  0x2e09 privk:0x7f8622981020::7f8622981020  e5 e5 e5 e5                                      ....
 14512 ms  0x2e09 PK11_Encrypt()
 14512 ms  0x2e09 symkey:0x7f861d443f00
 14515 ms  SECKEY_ECParamsToKeySize()
 14515 ms  0x2e09 ret:0xff
 14515 ms  0x2e09 SECKEY_CreateECPrivateKey()
 14515 ms  0x2e09 cx:0x7f861c357648
 14515 ms     | 0x2e09 EC_ValidatePublicKey()
 14515 ms     | 0x2e09 ret:0x0
 14515 ms  0x2e09 ret:0x7f8622985820::7f8622985820  30 88 66 1d                                      0.f.
 14515 ms  0x2e09 PK11_PubDeriveWithKDF()
 14515 ms  0x2e09 seckey:0x7f8622985820
 14515 ms     | 0x2e09 EC_ValidatePublicKey()
 14515 ms     | 0x2e09 ret:0x0
 14516 ms  0x2e09 ret:0x7f861c512200
 14516 ms  0x2e09 PK11_DeriveWithFlags()
 14516 ms  0x2e09 basekey:0x7f861c512200
 14516 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14516 ms  0x2e09 ret:0x7f861c3d2680
 14516 ms  0x2e09 PK11_Derive()
 14516 ms  0x2e09 basekey:0x7f861c3d2680
 14516 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14516 ms  0x2e09 ret:0x7f861c7ca100
 14516 ms  0x2e09 SECKEY_DestroyPrivateKey()
 14516 ms  0x2e09 privk:0x7f8622985820::7f8622985820  30 88 66 1d                                      0.f.
 14516 ms  0x2e09 privk:0x7f8622985820::7f8622985820  e5 e5 e5 e5                                      ....
 14516 ms  0x2e09 PK11_Encrypt()
 14516 ms  0x2e09 symkey:0x7f861d47bc80
           /* TID 0x2e9e */
 14517 ms  0x2e9e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14517 ms  0x2e9e ret:0x0
           /* TID 0x2e09 */
 14517 ms  SECKEY_ECParamsToKeySize()
 14517 ms  0x2e09 ret:0xff
 14517 ms  0x2e09 SECKEY_CreateECPrivateKey()
 14517 ms  0x2e09 cx:0x7f861c357e68
 14518 ms     | 0x2e09 EC_ValidatePublicKey()
 14518 ms     | 0x2e09 ret:0x0
 14518 ms  0x2e09 ret:0x7f86252ae820::7f86252ae820  60 8a 66 1d                                      `.f.
 14518 ms  0x2e09 PK11_PubDeriveWithKDF()
 14518 ms  0x2e09 seckey:0x7f86252ae820
 14518 ms     | 0x2e09 EC_ValidatePublicKey()
 14518 ms     | 0x2e09 ret:0x0
 14518 ms  0x2e09 ret:0x7f861c512200
 14518 ms  0x2e09 PK11_DeriveWithFlags()
 14518 ms  0x2e09 basekey:0x7f861c512200
 14518 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14518 ms  0x2e09 ret:0x7f861c7cb100
 14518 ms  0x2e09 PK11_Derive()
 14518 ms  0x2e09 basekey:0x7f861c7cb100
 14518 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14518 ms  0x2e09 ret:0x7f861c395a80
 14518 ms  0x2e09 SECKEY_DestroyPrivateKey()
 14518 ms  0x2e09 privk:0x7f86252ae820::7f86252ae820  60 8a 66 1d                                      `.f.
 14519 ms  0x2e09 privk:0x7f86252ae820::7f86252ae820  e5 e5 e5 e5                                      ....
 14519 ms  0x2e09 PK11_Encrypt()
 14519 ms  0x2e09 symkey:0x7f861d47bf00
 14519 ms  0x2e09 SSL_AuthCertificateComplete()
 14519 ms  0x2e09 fd:0x7f860aca0b50
 14519 ms  0x2e09 err:0x0
 14519 ms     | 0x2e09 PK11_DeriveWithFlags()
 14519 ms     | 0x2e09 basekey:0x7f861c7cb180
 14519 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 14519 ms     | 0x2e09 ret:0x7f861c512200
 14519 ms     | 0x2e09 PK11_DeriveWithFlags()
 14519 ms     | 0x2e09 basekey:0x7f861c7cb180
 14519 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 14519 ms     | 0x2e09 ret:0x7f861c512180
 14519 ms     | 0x2e09 PK11_DeriveWithFlags()
 14519 ms     | 0x2e09 basekey:0x7f861c7cb180
 14519 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 14519 ms     | 0x2e09 ret:0x7f861c7cb200
 14519 ms     | 0x2e09 PK11_DeriveWithFlags()
 14519 ms     | 0x2e09 basekey:0x7f861c395b00
 14519 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 14519 ms     | 0x2e09 ret:0x7f861c7ca500
 14519 ms     | 0x2e09 PK11_DeriveWithFlags()
 14519 ms     | 0x2e09 basekey:0x7f861c395b00
 14519 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 14519 ms     | 0x2e09 ret:0x7f861d49ba80
 14519 ms     | 0x2e09 PK11_DeriveWithFlags()
 14519 ms     | 0x2e09 basekey:0x7f861c512180
 14519 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 14519 ms     | 0x2e09 ret:0x7f861d49ba80
 14519 ms     | 0x2e09 PK11_DeriveWithFlags()
 14519 ms     | 0x2e09 basekey:0x7f861c512180
 14519 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 14519 ms     | 0x2e09 ret:0x7f861d49bb00
 14519 ms     | 0x2e09 PK11_DeriveWithFlags()
 14519 ms     | 0x2e09 basekey:0x7f861c395b00
 14519 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 14519 ms     | 0x2e09 ret:0x7f860ac86400
 14519 ms     | 0x2e09 PK11_Encrypt()
 14519 ms     | 0x2e09 symkey:0x7f861c7ca500
 14519 ms     | 0x2e09 PK11_DeriveWithFlags()
 14519 ms     | 0x2e09 basekey:0x7f861c512200
 14519 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 14519 ms     | 0x2e09 ret:0x7f860ac86400
 14519 ms     | 0x2e09 PK11_DeriveWithFlags()
 14519 ms     | 0x2e09 basekey:0x7f861c512200
 14519 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 14519 ms     | 0x2e09 ret:0x7f861d49bb00
 14520 ms     | 0x2e09 PK11_DeriveWithFlags()
 14520 ms     | 0x2e09 basekey:0x7f861c7cb180
 14520 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 14520 ms     | 0x2e09 ret:0x7f861c7ca500
 14520 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 14520 ms     | 0x2e09 privk:0x7f862200d820::7f862200d820  40 c2 38 1c                                      @.8.
 14520 ms     | 0x2e09 privk:0x7f862200d820::7f862200d820  e5 e5 e5 e5                                      ....
 14520 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 14520 ms     | 0x2e09 privk:0x7f860aa4a820::7f860aa4a820  60 75 f2 0a                                      `u..
 14520 ms     | 0x2e09 privk:0x7f860aa4a820::7f860aa4a820  e5 e5 e5 e5                                      ....
 14520 ms  0x2e09 PK11_Encrypt()
 14520 ms  0x2e09 symkey:0x7f860b1f3900
 14521 ms  0x2e09 SSL_AuthCertificateComplete()
 14521 ms  0x2e09 fd:0x7f861c1edc70
 14521 ms  0x2e09 err:0x0
 14521 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 14521 ms     | 0x2e09 privk:0x7f861c369020::7f861c369020  10 8f fd 1b                                      ....
 14521 ms     | 0x2e09 privk:0x7f861c369020::7f861c369020  e5 e5 e5 e5                                      ....
 14521 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 14521 ms     | 0x2e09 privk:0x7f861c360820::7f861c360820  40 8c fd 1b                                      @...
 14521 ms     | 0x2e09 privk:0x7f861c360820::7f861c360820  e5 e5 e5 e5                                      ....
 14521 ms  0x2e09 SSL_AuthCertificateComplete()
 14521 ms  0x2e09 fd:0x7f861c7b19a0
 14521 ms  0x2e09 err:0x0
 14521 ms  0x2e09 PR_Close()
 14521 ms  0x2e09 fd:0x7f861d921b50
           /* TID 0x2e11 */
 14523 ms  0x2e11 PR_Close()
 14523 ms  0x2e11 fd:0x7f861c7e85e0
           /* TID 0x2e09 */
 14528 ms  0x2e09 PK11_Encrypt()
 14528 ms  0x2e09 symkey:0x7f860ac86400
 14528 ms  0x2e09 PK11_Encrypt()
 14528 ms  0x2e09 symkey:0x7f861c389700
 14528 ms  0x2e09 PK11_Encrypt()
 14528 ms  0x2e09 symkey:0x7f861c389700
           /* TID 0x2e65 */
 14529 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14530 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
 14530 ms  SECKEY_ECParamsToKeySize()
 14530 ms  0x2e09 ret:0xff
 14530 ms  0x2e09 SECKEY_CreateECPrivateKey()
 14530 ms  0x2e09 cx:0x7f861c356468
 14530 ms     | 0x2e09 EC_ValidatePublicKey()
 14530 ms     | 0x2e09 ret:0x0
 14530 ms  0x2e09 ret:0x7f861c367020::7f861c367020  30 88 fd 1b                                      0...
 14530 ms  0x2e09 PK11_PubDeriveWithKDF()
 14530 ms  0x2e09 seckey:0x7f861c367020
 14530 ms     | 0x2e09 EC_ValidatePublicKey()
 14530 ms     | 0x2e09 ret:0x0
 14531 ms  0x2e09 ret:0x7f860b246900
 14531 ms  0x2e09 PK11_DeriveWithFlags()
 14531 ms  0x2e09 basekey:0x7f860b246900
 14531 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14531 ms  0x2e09 ret:0x7f861c395b00
 14531 ms  0x2e09 PK11_Derive()
 14531 ms  0x2e09 basekey:0x7f861c395b00
 14531 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14531 ms  0x2e09 ret:0x7f861c7cb180
 14531 ms  0x2e09 SECKEY_DestroyPrivateKey()
 14531 ms  0x2e09 privk:0x7f861c367020::7f861c367020  30 88 fd 1b                                      0...
 14531 ms  0x2e09 privk:0x7f861c367020::7f861c367020  e5 e5 e5 e5                                      ....
 14531 ms  0x2e09 PK11_Encrypt()
 14531 ms  0x2e09 symkey:0x7f861d4a0280
 14544 ms  SECKEY_ECParamsToKeySize()
 14544 ms  0x2e09 ret:0x100
 14544 ms  0x2e09 SECKEY_CreateECPrivateKey()
 14544 ms  0x2e09 cx:0x7f861c3574a8
 14545 ms     | 0x2e09 EC_ValidatePublicKey()
 14546 ms     | 0x2e09 ret:0x0
 14546 ms  0x2e09 ret:0x7f86252b6020::7f86252b6020  e0 87 66 1d                                      ..f.
 14546 ms  0x2e09 PK11_PubDeriveWithKDF()
 14546 ms  0x2e09 seckey:0x7f86252b6020
 14546 ms     | 0x2e09 EC_ValidatePublicKey()
 14548 ms     | 0x2e09 ret:0x0
 14549 ms  0x2e09 ret:0x7f860b246900
 14549 ms  0x2e09 PK11_DeriveWithFlags()
 14549 ms  0x2e09 basekey:0x7f860b246900
 14549 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14549 ms  0x2e09 ret:0x7f861d49bb00
 14549 ms  0x2e09 PK11_Derive()
 14549 ms  0x2e09 basekey:0x7f861d49bb00
 14549 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14549 ms  0x2e09 ret:0x7f861d4a0600
 14549 ms  0x2e09 SECKEY_DestroyPrivateKey()
 14549 ms  0x2e09 privk:0x7f86252b6020::7f86252b6020  e0 87 66 1d                                      ..f.
 14549 ms  0x2e09 privk:0x7f86252b6020::7f86252b6020  e5 e5 e5 e5                                      ....
 14550 ms  0x2e09 PK11_Encrypt()
 14550 ms  0x2e09 symkey:0x7f861d4a0780
           /* TID 0x2e11 */
 14555 ms  0x2e11 PR_Close()
 14555 ms  0x2e11 fd:0x7f861c1eddf0
           /* TID 0x2e09 */
 14555 ms  0x2e09 PK11_Encrypt()
 14555 ms  0x2e09 symkey:0x7f861c3d3000
           /* TID 0x2e11 */
 14555 ms  0x2e11 PR_Close()
 14555 ms  0x2e11 fd:0x7f861c1eddf0
           /* TID 0x2e65 */
 14557 ms  SECKEY_ECParamsToBasePointOrderLen()
 14557 ms  0x2e65 ret:0x180
 14557 ms  SECKEY_ECParamsToBasePointOrderLen()
 14557 ms  0x2e65 ret:0x180
 14557 ms  0x2e65 EC_ValidatePublicKey()
 14558 ms  0x2e65 ret:0x0
 14561 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14561 ms     | SECKEY_ECParamsToBasePointOrderLen()
 14561 ms     | 0x2e65 ret:0x180
 14561 ms     | SECKEY_ECParamsToBasePointOrderLen()
 14561 ms     | 0x2e65 ret:0x180
 14561 ms     | 0x2e65 EC_ValidatePublicKey()
 14563 ms     | 0x2e65 ret:0x0
           /* TID 0x2e09 */
 14569 ms  SECKEY_ECParamsToKeySize()
 14569 ms  0x2e09 ret:0x100
 14569 ms  SECKEY_ECParamsToBasePointOrderLen()
 14569 ms  0x2e09 ret:0x100
 14569 ms  SECKEY_ECParamsToBasePointOrderLen()
 14569 ms  0x2e09 ret:0x100
 14569 ms  0x2e09 EC_ValidatePublicKey()
 14570 ms  0x2e09 ret:0x0
 14572 ms  SECKEY_ECParamsToKeySize()
 14572 ms  0x2e09 ret:0x100
 14572 ms  0x2e09 SECKEY_CreateECPrivateKey()
 14572 ms  0x2e09 cx:0x7f861c357b28
 14573 ms     | 0x2e09 EC_ValidatePublicKey()
 14584 ms     | 0x2e09 ret:0x0
 14584 ms  0x2e09 ret:0x7f8625e0e820::7f8625e0e820  e0 8c 66 1d                                      ..f.
 14584 ms  0x2e09 PK11_PubDeriveWithKDF()
 14584 ms  0x2e09 seckey:0x7f8625e0e820
 14584 ms     | 0x2e09 EC_ValidatePublicKey()
 14585 ms     | 0x2e09 ret:0x0
 14587 ms  0x2e09 ret:0x7f860b246900
 14587 ms  0x2e09 PK11_DeriveWithFlags()
 14587 ms  0x2e09 basekey:0x7f860b246900
 14587 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14587 ms  0x2e09 ret:0x7f861c394080
 14587 ms  0x2e09 PK11_Derive()
 14587 ms  0x2e09 basekey:0x7f861c394080
 14587 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14587 ms  0x2e09 ret:0x7f861d4a1600
 14587 ms  0x2e09 SECKEY_DestroyPrivateKey()
 14587 ms  0x2e09 privk:0x7f8625e0e820::7f8625e0e820  e0 8c 66 1d                                      ..f.
 14587 ms  0x2e09 privk:0x7f8625e0e820::7f8625e0e820  e5 e5 e5 e5                                      ....
 14587 ms  0x2e09 PK11_Encrypt()
 14587 ms  0x2e09 symkey:0x7f861d685280
           /* TID 0x2e65 */
 14587 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
 14597 ms  SECKEY_ECParamsToKeySize()
 14597 ms  0x2e09 ret:0x100
 14597 ms  0x2e09 SECKEY_CreateECPrivateKey()
 14597 ms  0x2e09 cx:0x7f861c3577e8
 14598 ms     | 0x2e09 EC_ValidatePublicKey()
 14599 ms     | 0x2e09 ret:0x0
 14599 ms  0x2e09 ret:0x7f8625e0f020::7f8625e0f020  10 8f 66 1d                                      ..f.
 14599 ms  0x2e09 PK11_PubDeriveWithKDF()
 14599 ms  0x2e09 seckey:0x7f8625e0f020
 14599 ms     | 0x2e09 EC_ValidatePublicKey()
 14601 ms     | 0x2e09 ret:0x0
 14602 ms  0x2e09 ret:0x7f860b246900
 14602 ms  0x2e09 PK11_DeriveWithFlags()
 14602 ms  0x2e09 basekey:0x7f860b246900
 14602 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14602 ms  0x2e09 ret:0x7f861d685980
 14602 ms  0x2e09 PK11_Derive()
 14602 ms  0x2e09 basekey:0x7f861d685980
 14602 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14602 ms  0x2e09 ret:0x7f861d685c80
 14602 ms  0x2e09 SECKEY_DestroyPrivateKey()
 14602 ms  0x2e09 privk:0x7f8625e0f020::7f8625e0f020  10 8f 66 1d                                      ..f.
 14602 ms  0x2e09 privk:0x7f8625e0f020::7f8625e0f020  e5 e5 e5 e5                                      ....
 14602 ms  0x2e09 PK11_Encrypt()
 14602 ms  0x2e09 symkey:0x7f861d686700
           /* TID 0x2e11 */
 14603 ms  0x2e11 PR_Close()
 14603 ms  0x2e11 fd:0x7f861f3c19d0
 14603 ms  0x2e11 PR_Close()
 14603 ms  0x2e11 fd:0x7f861f3c1a60
 14603 ms  0x2e11 PR_Close()
 14603 ms  0x2e11 fd:0x7f861f3c1b80
 14603 ms  0x2e11 PR_Close()
 14603 ms  0x2e11 fd:0x7f861f3c1dc0
 14603 ms  0x2e11 PR_Close()
 14603 ms  0x2e11 fd:0x7f861f3c1eb0
 14604 ms  0x2e11 PR_Close()
 14604 ms  0x2e11 fd:0x7f861f3c19d0
 14604 ms  0x2e11 PR_Close()
 14604 ms  0x2e11 fd:0x7f861f3c1a60
 14604 ms  0x2e11 PR_Close()
 14604 ms  0x2e11 fd:0x7f861f3c1b80
 14604 ms  0x2e11 PR_Close()
 14604 ms  0x2e11 fd:0x7f861f3c1dc0
 14604 ms  0x2e11 PR_Close()
 14604 ms  0x2e11 fd:0x7f861f3c1eb0
 14604 ms  0x2e11 PR_Close()
 14604 ms  0x2e11 fd:0x7f861c7b1ee0
 14604 ms  0x2e11 PR_Close()
 14604 ms  0x2e11 fd:0x7f861f3c1f40
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f861f3c1fd0
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f8620d7c5b0
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f8620d8f0a0
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f8620d8f130
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f8620d8fd00
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f8620d944f0
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f8620d94ee0
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f8620d94f40
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f86216fe490
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f86216fe850
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f86216fe9d0
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f86216fea30
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f8621d43130
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f8621d435b0
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f8621d43670
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f8621d43970
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f8621d439d0
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f8621d43b80
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f8621d43c10
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f8621d43ca0
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f8621d43d00
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f8621d43d90
 14605 ms  0x2e11 PR_Close()
 14605 ms  0x2e11 fd:0x7f8621d43e80
           /* TID 0x2e09 */
 14609 ms  0x2e09 SECKEY_DestroyPrivateKey()
 14609 ms  0x2e09 privk:0x7f8622969020::7f8622969020  a0 d6 4d 1d                                      ..M.
 14609 ms  0x2e09 privk:0x7f8622969020::7f8622969020  e5 e5 e5 e5                                      ....
 14610 ms  0x2e09 SECKEY_DestroyPrivateKey()
 14610 ms  0x2e09 privk:0x7f8622967020::7f8622967020  d0 d3 4d 1d                                      ..M.
 14610 ms  0x2e09 privk:0x7f8622967020::7f8622967020  e5 e5 e5 e5                                      ....
 14610 ms  0x2e09 PK11_Encrypt()
 14610 ms  0x2e09 symkey:0x7f861d47bf00
 14610 ms  0x2e09 PK11_Encrypt()
 14610 ms  0x2e09 symkey:0x7f861d47bf00
           /* TID 0x2ea3 */
 14611 ms  0x2ea3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14612 ms  0x2ea3 ret:0x0
           /* TID 0x2e09 */
 14612 ms  SECKEY_ECParamsToKeySize()
 14612 ms  0x2e09 ret:0xff
 14612 ms  0x2e09 SECKEY_CreateECPrivateKey()
 14612 ms  0x2e09 cx:0x7f861c357308
 14612 ms     | 0x2e09 EC_ValidatePublicKey()
 14612 ms     | 0x2e09 ret:0x0
 14612 ms  0x2e09 ret:0x7f8622968820::7f8622968820  00 d6 4d 1d                                      ..M.
 14612 ms  0x2e09 PK11_PubDeriveWithKDF()
 14612 ms  0x2e09 seckey:0x7f8622968820
 14612 ms     | 0x2e09 EC_ValidatePublicKey()
 14612 ms     | 0x2e09 ret:0x0
 14613 ms  0x2e09 ret:0x7f860b246900
 14613 ms  0x2e09 PK11_DeriveWithFlags()
 14613 ms  0x2e09 basekey:0x7f860b246900
 14613 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14613 ms  0x2e09 ret:0x7f861d47a080
 14613 ms  0x2e09 PK11_Derive()
 14613 ms  0x2e09 basekey:0x7f861d47a080
 14613 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14613 ms  0x2e09 ret:0x7f861d686800
 14613 ms  0x2e09 SECKEY_DestroyPrivateKey()
 14613 ms  0x2e09 privk:0x7f8622968820::7f8622968820  00 d6 4d 1d                                      ..M.
 14613 ms  0x2e09 privk:0x7f8622968820::7f8622968820  e5 e5 e5 e5                                      ....
 14613 ms  0x2e09 PK11_Encrypt()
 14613 ms  0x2e09 symkey:0x7f861d686980
 14614 ms  0x2e09 PK11_Encrypt()
 14614 ms  0x2e09 symkey:0x7f861c3d3000
 14614 ms  0x2e09 SSL_AuthCertificateComplete()
 14614 ms  0x2e09 fd:0x7f861ce7b070
 14614 ms  0x2e09 err:0x0
 14614 ms  0x2e09 SSL_AuthCertificateComplete()
 14614 ms  0x2e09 fd:0x7f861d9f1760
 14614 ms  0x2e09 err:0x0
 14615 ms  0x2e09 SSL_AuthCertificateComplete()
 14615 ms  0x2e09 fd:0x7f861c3e1c40
 14615 ms  0x2e09 err:0x0
 14615 ms  0x2e09 PR_Close()
 14615 ms  0x2e09 fd:0x7f860aadb280
 14615 ms     | 0x2e09 PK11_Encrypt()
 14615 ms     | 0x2e09 symkey:0x7f860ac86080
           /* TID 0x2e11 */
 14616 ms  0x2e11 PR_Close()
 14616 ms  0x2e11 fd:0x7f860aadb280
           /* TID 0x2e09 */
 14619 ms  0x2e09 PK11_Encrypt()
 14619 ms  0x2e09 symkey:0x7f861c080d00
 14624 ms  0x2e09 PK11_Encrypt()
 14624 ms  0x2e09 symkey:0x7f861c389700
           /* TID 0x2e11 */
 14627 ms  0x2e11 PR_Close()
 14627 ms  0x2e11 fd:0x7f860aadb280
           /* TID 0x2e09 */
 14627 ms  0x2e09 PK11_Encrypt()
 14627 ms  0x2e09 symkey:0x7f861d686980
 14628 ms  0x2e09 PK11_DeriveWithFlags()
 14628 ms  0x2e09 basekey:0x7f861c7ca500
 14628 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14628 ms  0x2e09 ret:0x7f860ac59600
 14628 ms  0x2e09 PK11_DeriveWithFlags()
 14628 ms  0x2e09 basekey:0x7f861c7ca500
 14628 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14628 ms  0x2e09 ret:0x7f860ac59600
 14628 ms  0x2e09 PK11_Encrypt()
 14628 ms  0x2e09 symkey:0x7f861d4a0280
 14628 ms  0x2e09 PK11_Encrypt()
 14628 ms  0x2e09 symkey:0x7f861d685280
 14628 ms  0x2e09 PR_Close()
 14628 ms  0x2e09 fd:0x7f860aca0b50
 14629 ms     | 0x2e09 PK11_Encrypt()
 14629 ms     | 0x2e09 symkey:0x7f860ac86400
 14629 ms  0x2e09 PR_Connect()
 14629 ms  0x2e09 fd:0x7f860af32700
 14629 ms  0x2e09 PR_Connect()
 14629 ms  0x2e09 fd:0x7f860aadba30
 14630 ms  0x2e09 PK11_Encrypt()
 14630 ms  0x2e09 symkey:0x7f861d47bf00
 14631 ms  0x2e09 PK11_Encrypt()
 14631 ms  0x2e09 symkey:0x7f861d47bf00
 14632 ms  0x2e09 SECKEY_DestroyPrivateKey()
 14632 ms  0x2e09 privk:0x7f8622973820::7f8622973820  b0 df 4d 1d                                      ..M.
 14632 ms  0x2e09 privk:0x7f8622973820::7f8622973820  e5 e5 e5 e5                                      ....
 14632 ms  0x2e09 SECKEY_DestroyPrivateKey()
 14632 ms  0x2e09 privk:0x7f8622971820::7f8622971820  90 dc 4d 1d                                      ..M.
 14632 ms  0x2e09 privk:0x7f8622971820::7f8622971820  e5 e5 e5 e5                                      ....
 14632 ms  0x2e09 PR_Close()
 14632 ms  0x2e09 fd:0x7f861ce7b070
 14632 ms     | 0x2e09 PK11_Encrypt()
 14632 ms     | 0x2e09 symkey:0x7f861d4a0280
 14633 ms  0x2e09 SSL_ImportFD()
 14633 ms  0x2e09 ret:0x7f861c1ed910
 14634 ms  0x2e09 SSL_AuthCertificateHook()
 14634 ms  0x2e09 fd:0x7f861c1ed910
 14634 ms  0x2e09 ret:0x0
 14634 ms  0x2e09 PR_Connect()
 14634 ms  0x2e09 fd:0x7f861c1ed910
 14635 ms  0x2e09 SSL_ImportFD()
 14635 ms  0x2e09 ret:0x7f860b0fd5e0
 14635 ms  0x2e09 SSL_AuthCertificateHook()
 14635 ms  0x2e09 fd:0x7f860b0fd5e0
 14635 ms  0x2e09 ret:0x0
 14635 ms  0x2e09 PR_Connect()
 14635 ms  0x2e09 fd:0x7f860b0fd5e0
 14636 ms  0x2e09 PK11_Encrypt()
 14636 ms  0x2e09 symkey:0x7f861d47bf00
           /* TID 0x2e9e */
 14640 ms  0x2e9e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14641 ms  0x2e9e ret:0x0
           /* TID 0x2e11 */
 14641 ms  0x2e11 PR_Close()
 14641 ms  0x2e11 fd:0x7f860aca0a30
           /* TID 0x2e09 */
 14641 ms  0x2e09 SECKEY_DestroyPrivateKey()
 14641 ms  0x2e09 privk:0x7f862296d820::7f862296d820  00 db 4d 1d                                      ..M.
 14641 ms  0x2e09 privk:0x7f862296d820::7f862296d820  e5 e5 e5 e5                                      ....
 14641 ms  0x2e09 SECKEY_DestroyPrivateKey()
 14641 ms  0x2e09 privk:0x7f862296b820::7f862296b820  d0 d8 4d 1d                                      ..M.
 14641 ms  0x2e09 privk:0x7f862296b820::7f862296b820  e5 e5 e5 e5                                      ....
           /* TID 0x2e11 */
 14642 ms  0x2e11 PR_Close()
 14642 ms  0x2e11 fd:0x7f861d49e0d0
           /* TID 0x2e65 */
 14642 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14642 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
 14642 ms  0x2e09 PR_Close()
 14642 ms  0x2e09 fd:0x7f861c3e1c40
 14642 ms     | 0x2e09 PK11_Encrypt()
 14642 ms     | 0x2e09 symkey:0x7f861d686980
 14643 ms  0x2e09 SSL_AuthCertificateComplete()
 14643 ms  0x2e09 fd:0x7f861d9f1c70
 14643 ms  0x2e09 err:0x0
 14643 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 14643 ms     | 0x2e09 privk:0x7f8622806820::7f8622806820  40 d7 e0 1c                                      @...
 14643 ms     | 0x2e09 privk:0x7f8622806820::7f8622806820  e5 e5 e5 e5                                      ....
 14643 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 14643 ms     | 0x2e09 privk:0x7f8622803020::7f8622803020  30 68 7e 1c                                      0h~.
 14643 ms     | 0x2e09 privk:0x7f8622803020::7f8622803020  e5 e5 e5 e5                                      ....
 14643 ms  0x2e09 SSL_AuthCertificateComplete()
 14643 ms  0x2e09 fd:0x7f861d9f1490
 14643 ms  0x2e09 err:0x0
 14643 ms  0x2e09 PK11_Encrypt()
 14643 ms  0x2e09 symkey:0x7f861d4a0780
 14644 ms  0x2e09 PK11_Encrypt()
 14644 ms  0x2e09 symkey:0x7f861d686700
 14647 ms  0x2e09 SECKEY_DestroyPrivateKey()
 14647 ms  0x2e09 privk:0x7f8622810020::7f8622810020  50 db e0 1c                                      P...
 14647 ms  0x2e09 privk:0x7f8622810020::7f8622810020  e5 e5 e5 e5                                      ....
 14648 ms  0x2e09 SECKEY_DestroyPrivateKey()
 14648 ms  0x2e09 privk:0x7f862280b820::7f862280b820  80 d8 e0 1c                                      ....
 14648 ms  0x2e09 privk:0x7f862280b820::7f862280b820  e5 e5 e5 e5                                      ....
 14660 ms  0x2e09 SECKEY_DestroyPrivateKey()
 14660 ms  0x2e09 privk:0x7f862281e020::7f862281e020  50 d1 4d 1d                                      P.M.
 14660 ms  0x2e09 privk:0x7f862281e020::7f862281e020  e5 e5 e5 e5                                      ....
 14660 ms  0x2e09 SECKEY_DestroyPrivateKey()
 14660 ms  0x2e09 privk:0x7f862281b020::7f862281b020  e0 dc e0 1c                                      ....
 14661 ms  0x2e09 privk:0x7f862281b020::7f862281b020  e5 e5 e5 e5                                      ....
 14672 ms  0x2e09 SECKEY_CreateECPrivateKey()
 14672 ms  0x2e09 cx:0x7f861c3567a8
 14672 ms     | 0x2e09 EC_ValidatePublicKey()
 14672 ms     | 0x2e09 ret:0x0
 14672 ms  0x2e09 ret:0x7f860aa49820::7f860aa49820  b0 8a ff 0a                                      ....
 14673 ms  0x2e09 SECKEY_CreateECPrivateKey()
 14673 ms  0x2e09 cx:0x7f861c3567a8
 14673 ms     | 0x2e09 EC_ValidatePublicKey()
 14677 ms     | 0x2e09 ret:0x0
 14677 ms  0x2e09 ret:0x7f860b00e820::7f860b00e820  30 8d fd 1b                                      0...
 14678 ms  0x2e09 SECKEY_CreateECPrivateKey()
 14678 ms  0x2e09 cx:0x7f861c356fc8
 14679 ms     | 0x2e09 EC_ValidatePublicKey()
 14679 ms     | 0x2e09 ret:0x0
 14679 ms  0x2e09 ret:0x7f862200d820::7f862200d820  d0 13 35 1c                                      ..5.
 14679 ms  0x2e09 SECKEY_CreateECPrivateKey()
 14679 ms  0x2e09 cx:0x7f861c356fc8
 14679 ms     | 0x2e09 EC_ValidatePublicKey()
 14681 ms     | 0x2e09 ret:0x0
 14681 ms  0x2e09 ret:0x7f8622805020::7f8622805020  50 66 7e 1c                                      Pf~.
 14703 ms  0x2e09 PK11_Encrypt()
 14703 ms  0x2e09 symkey:0x7f861c080d00
 14703 ms  0x2e09 PK11_Encrypt()
 14703 ms  0x2e09 symkey:0x7f861c0fbe00
 14705 ms  0x2e09 PK11_Encrypt()
 14705 ms  0x2e09 symkey:0x7f861d4a0780
           /* TID 0x2e11 */
 14714 ms  0x2e11 PR_Close()
 14714 ms  0x2e11 fd:0x7f861d49eeb0
           /* TID 0x2e9f */
 14714 ms  0x2e9f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14714 ms  0x2e9f ret:0x0
           /* TID 0x2e11 */
 14716 ms  0x2e11 PR_Close()
 14716 ms  0x2e11 fd:0x7f861dcd0d30
           /* TID 0x2e9a */
 14716 ms  0x2e9a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14716 ms  0x2e9a ret:0x0
           /* TID 0x2e09 */
 14733 ms  0x2e09 PK11_Derive()
 14733 ms  0x2e09 basekey:0x7f861d686800
 14733 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14733 ms  0x2e09 ret:0x7f861d47a080
 14733 ms  0x2e09 PK11_PubDeriveWithKDF()
 14733 ms  0x2e09 seckey:0x7f860aa49820
 14733 ms     | 0x2e09 EC_ValidatePublicKey()
 14733 ms     | 0x2e09 ret:0x0
 14733 ms  0x2e09 ret:0x7f861d686800
 14733 ms  SECKEY_ECParamsToKeySize()
 14733 ms  0x2e09 ret:0xff
 14733 ms  0x2e09 PK11_DeriveWithFlags()
 14733 ms  0x2e09 basekey:0x7f861d47a080
 14733 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14734 ms  0x2e09 ret:0x7f861c7cb180
 14734 ms  0x2e09 PK11_Derive()
 14734 ms  0x2e09 basekey:0x7f861d686800
 14734 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14734 ms  0x2e09 ret:0x7f861c395b00
 14734 ms  0x2e09 PK11_DeriveWithFlags()
 14734 ms  0x2e09 basekey:0x7f861c395b00
 14734 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14734 ms  0x2e09 ret:0x7f861d47a080
 14734 ms  0x2e09 PK11_DeriveWithFlags()
 14734 ms  0x2e09 basekey:0x7f861c395b00
 14734 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14734 ms  0x2e09 ret:0x7f861d686800
 14734 ms  0x2e09 PK11_DeriveWithFlags()
 14734 ms  0x2e09 basekey:0x7f861c395b00
 14734 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14734 ms  0x2e09 ret:0x7f861c7cb180
 14734 ms  0x2e09 PK11_Derive()
 14734 ms  0x2e09 basekey:0x7f861c7cb200
 14734 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14734 ms  0x2e09 ret:0x7f861c512180
 14734 ms  0x2e09 PK11_DeriveWithFlags()
 14734 ms  0x2e09 basekey:0x7f861d686800
 14734 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14734 ms  0x2e09 ret:0x7f861c395b00
 14734 ms  0x2e09 PK11_DeriveWithFlags()
 14734 ms  0x2e09 basekey:0x7f861d686800
 14734 ms     | 0x2e09 PK11_DeriveWithTemplate()
 14734 ms  0x2e09 ret:0x7f861c7cb180
 16722 ms  0x2e09 PK11_DeriveWithFlags()
 16722 ms  0x2e09 basekey:0x7f861d686800
 16726 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16726 ms  0x2e09 ret:0x7f861c7cb180
 16726 ms  0x2e09 PK11_Encrypt()
 16726 ms  0x2e09 symkey:0x7f861c0fbe00
 16726 ms  0x2e09 SSL_AuthCertificateComplete()
 16726 ms  0x2e09 fd:0x7f861d921ac0
 16726 ms  0x2e09 err:0x0
 16726 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 16726 ms     | 0x2e09 privk:0x7f86226e5820::7f86226e5820  60 65 7e 1c                                      `e~.
 16726 ms     | 0x2e09 privk:0x7f86226e5820::7f86226e5820  e5 e5 e5 e5                                      ....
 16726 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 16726 ms     | 0x2e09 privk:0x7f86226dc820::7f86226dc820  80 13 3d 1c                                      ..=.
 16726 ms     | 0x2e09 privk:0x7f86226dc820::7f86226dc820  e5 e5 e5 e5                                      ....
 16726 ms  0x2e09 SSL_AuthCertificateComplete()
 16726 ms  0x2e09 fd:0x7f861d671af0
 16726 ms  0x2e09 err:0x0
 16727 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 16727 ms     | 0x2e09 privk:0x7f86221a5020::7f86221a5020  30 13 3d 1c                                      0.=.
 16727 ms     | 0x2e09 privk:0x7f86221a5020::7f86221a5020  e5 e5 e5 e5                                      ....
 16727 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 16727 ms     | 0x2e09 privk:0x7f861dc0e820::7f861dc0e820  00 11 3d 1c                                      ..=.
 16727 ms     | 0x2e09 privk:0x7f861dc0e820::7f861dc0e820  e5 e5 e5 e5                                      ....
 16727 ms  0x2e09 PK11_Encrypt()
 16727 ms  0x2e09 symkey:0x7f861c3d3000
           /* TID 0x2e11 */
 16729 ms  0x2e11 PR_Close()
 16729 ms  0x2e11 fd:0x7f861f33ee50
 16729 ms  0x2e11 PR_Close()
 16729 ms  0x2e11 fd:0x7f861e0fde80
 16733 ms  0x2e11 PR_Close()
 16733 ms  0x2e11 fd:0x7f8620d7c550
 16735 ms  0x2e11 PR_Close()
 16735 ms  0x2e11 fd:0x7f861e0fdd60
           /* TID 0x2e09 */
 16736 ms  0x2e09 PK11_Encrypt()
 16736 ms  0x2e09 symkey:0x7f861d443f00
 16737 ms  0x2e09 PK11_Encrypt()
 16737 ms  0x2e09 symkey:0x7f861d443f00
 16738 ms  0x2e09 PK11_Encrypt()
 16738 ms  0x2e09 symkey:0x7f861d47bc80
 16739 ms  0x2e09 PK11_Derive()
 16739 ms  0x2e09 basekey:0x7f861c7cb180
 16739 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16739 ms  0x2e09 ret:0x7f861c7cb200
 16739 ms  0x2e09 PK11_PubDeriveWithKDF()
 16739 ms  0x2e09 seckey:0x7f862200d820
 16739 ms     | 0x2e09 EC_ValidatePublicKey()
 16739 ms     | 0x2e09 ret:0x0
 16740 ms  0x2e09 ret:0x7f861c7cb180
 16740 ms  SECKEY_ECParamsToKeySize()
 16740 ms  0x2e09 ret:0xff
 16740 ms  0x2e09 PK11_DeriveWithFlags()
 16740 ms  0x2e09 basekey:0x7f861c7cb200
 16740 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16740 ms  0x2e09 ret:0x7f861c512200
 16740 ms  0x2e09 PK11_Derive()
 16740 ms  0x2e09 basekey:0x7f861c7cb180
 16740 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16740 ms  0x2e09 ret:0x7f861c7ca500
 16740 ms  0x2e09 PK11_DeriveWithFlags()
 16740 ms  0x2e09 basekey:0x7f861c7ca500
 16740 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16740 ms  0x2e09 ret:0x7f861c7cb200
 16740 ms  0x2e09 PK11_DeriveWithFlags()
 16740 ms  0x2e09 basekey:0x7f861c7ca500
 16740 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16740 ms  0x2e09 ret:0x7f861c7cb180
 16740 ms  0x2e09 PK11_DeriveWithFlags()
 16740 ms  0x2e09 basekey:0x7f861c7ca500
 16740 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16740 ms  0x2e09 ret:0x7f861c512200
 16740 ms  0x2e09 PK11_Derive()
 16740 ms  0x2e09 basekey:0x7f861d49ba80
 16740 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16740 ms  0x2e09 ret:0x7f860ac86400
 16740 ms  0x2e09 PK11_DeriveWithFlags()
 16740 ms  0x2e09 basekey:0x7f861c7cb180
 16740 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16740 ms  0x2e09 ret:0x7f861c7ca500
 16740 ms  0x2e09 PK11_DeriveWithFlags()
 16740 ms  0x2e09 basekey:0x7f861c7cb180
 16740 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16740 ms  0x2e09 ret:0x7f861c512200
 16743 ms  0x2e09 PK11_DeriveWithFlags()
 16743 ms  0x2e09 basekey:0x7f861c7cb180
 16743 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16743 ms  0x2e09 ret:0x7f861c512200
 16745 ms  0x2e09 PK11_Encrypt()
 16745 ms  0x2e09 symkey:0x7f861d443f00
 16745 ms  0x2e09 PK11_Encrypt()
 16745 ms  0x2e09 symkey:0x7f861c080d00
 16745 ms  0x2e09 PK11_Encrypt()
 16745 ms  0x2e09 symkey:0x7f861d443f00
 16746 ms  0x2e09 PK11_Encrypt()
 16746 ms  0x2e09 symkey:0x7f860aa9fd80
 16746 ms  0x2e09 PR_Close()
 16746 ms  0x2e09 fd:0x7f861d671af0
 16746 ms     | 0x2e09 PK11_Encrypt()
 16746 ms     | 0x2e09 symkey:0x7f861d47bc80
 16747 ms  0x2e09 SSL_ImportFD()
 16747 ms  0x2e09 ret:0x7f861d9f1f40
 16747 ms  0x2e09 SSL_AuthCertificateHook()
 16747 ms  0x2e09 fd:0x7f861d9f1f40
 16747 ms  0x2e09 ret:0x0
 16747 ms  0x2e09 PR_Connect()
 16747 ms  0x2e09 fd:0x7f861d9f1f40
 16747 ms  0x2e09 SSL_ImportFD()
 16747 ms  0x2e09 ret:0x7f861d671af0
 16747 ms  0x2e09 SSL_AuthCertificateHook()
 16747 ms  0x2e09 fd:0x7f861d671af0
 16747 ms  0x2e09 ret:0x0
 16747 ms  0x2e09 PR_Connect()
 16747 ms  0x2e09 fd:0x7f861d671af0
           /* TID 0x2e11 */
 16766 ms  0x2e11 PR_Close()
 16766 ms  0x2e11 fd:0x7f861c7e8a60
           /* TID 0x2e09 */
 16785 ms  0x2e09 SECKEY_CreateECPrivateKey()
 16785 ms  0x2e09 cx:0x7f861c357648
 16786 ms     | 0x2e09 EC_ValidatePublicKey()
 16786 ms     | 0x2e09 ret:0x0
 16786 ms  0x2e09 ret:0x7f86221a4820::7f86221a4820  30 d8 e0 1c                                      0...
 16786 ms  0x2e09 SECKEY_CreateECPrivateKey()
 16786 ms  0x2e09 cx:0x7f861c357648
 16788 ms     | 0x2e09 EC_ValidatePublicKey()
 16791 ms     | 0x2e09 ret:0x0
 16791 ms  0x2e09 ret:0x7f862280f820::7f862280f820  50 db e0 1c                                      P...
 16797 ms  0x2e09 SECKEY_CreateECPrivateKey()
 16797 ms  0x2e09 cx:0x7f862a3e4f48
 16798 ms     | 0x2e09 EC_ValidatePublicKey()
 16798 ms     | 0x2e09 ret:0x0
 16798 ms  0x2e09 ret:0x7f8622967820::7f8622967820  20 14 3d 1c                                       .=.
 16798 ms  0x2e09 SECKEY_CreateECPrivateKey()
 16798 ms  0x2e09 cx:0x7f862a3e4f48
 16799 ms     | 0x2e09 EC_ValidatePublicKey()
 16801 ms     | 0x2e09 ret:0x0
 16801 ms  0x2e09 ret:0x7f8622969820::7f8622969820  c0 de e0 1c                                      ....
 16846 ms  0x2e09 PK11_Derive()
 16846 ms  0x2e09 basekey:0x7f861c7ca100
 16846 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16846 ms  0x2e09 ret:0x7f861c3d2680
 16846 ms  0x2e09 PK11_PubDeriveWithKDF()
 16846 ms  0x2e09 seckey:0x7f86221a4820
 16846 ms     | 0x2e09 EC_ValidatePublicKey()
 16846 ms     | 0x2e09 ret:0x0
 16847 ms  0x2e09 ret:0x7f861c7ca100
 16847 ms  SECKEY_ECParamsToKeySize()
 16847 ms  0x2e09 ret:0xff
 16847 ms  0x2e09 PK11_DeriveWithFlags()
 16847 ms  0x2e09 basekey:0x7f861c3d2680
 16847 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16847 ms  0x2e09 ret:0x7f861c512200
 16847 ms  0x2e09 PK11_Derive()
 16847 ms  0x2e09 basekey:0x7f861c7ca100
 16847 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16847 ms  0x2e09 ret:0x7f861d49ba80
 16847 ms  0x2e09 PK11_DeriveWithFlags()
 16847 ms  0x2e09 basekey:0x7f861d49ba80
 16847 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16847 ms  0x2e09 ret:0x7f861c3d2680
 16847 ms  0x2e09 PK11_DeriveWithFlags()
 16847 ms  0x2e09 basekey:0x7f861d49ba80
 16847 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16847 ms  0x2e09 ret:0x7f861c7ca100
 16847 ms  0x2e09 PK11_DeriveWithFlags()
 16847 ms  0x2e09 basekey:0x7f861d49ba80
 16847 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16847 ms  0x2e09 ret:0x7f861c512200
 16847 ms  0x2e09 PK11_Derive()
 16847 ms  0x2e09 basekey:0x7f860ac59600
 16847 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16847 ms  0x2e09 ret:0x7f860ac59580
 16847 ms  0x2e09 PK11_DeriveWithFlags()
 16847 ms  0x2e09 basekey:0x7f861c7ca100
 16847 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16847 ms  0x2e09 ret:0x7f861d49ba80
 16847 ms  0x2e09 PK11_DeriveWithFlags()
 16847 ms  0x2e09 basekey:0x7f861c7ca100
 16847 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16848 ms  0x2e09 ret:0x7f861c512200
 16849 ms  0x2e09 PK11_DeriveWithFlags()
 16849 ms  0x2e09 basekey:0x7f861c7ca100
 16849 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16849 ms  0x2e09 ret:0x7f861c512200
 16850 ms  0x2e09 PK11_Derive()
 16850 ms  0x2e09 basekey:0x7f861c512200
 16850 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16850 ms  0x2e09 ret:0x7f860ac59600
 16850 ms  0x2e09 PK11_PubDeriveWithKDF()
 16850 ms  0x2e09 seckey:0x7f8622967820
 16850 ms     | 0x2e09 EC_ValidatePublicKey()
 16850 ms     | 0x2e09 ret:0x0
 16850 ms  0x2e09 ret:0x7f861c512200
 16850 ms  SECKEY_ECParamsToKeySize()
 16850 ms  0x2e09 ret:0xff
 16851 ms  0x2e09 PK11_DeriveWithFlags()
 16851 ms  0x2e09 basekey:0x7f860ac59600
 16851 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16851 ms  0x2e09 ret:0x7f860b246900
 16851 ms  0x2e09 PK11_Derive()
 16851 ms  0x2e09 basekey:0x7f861c512200
 16851 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16851 ms  0x2e09 ret:0x7f861d47bc00
 16851 ms  0x2e09 PK11_DeriveWithFlags()
 16851 ms  0x2e09 basekey:0x7f861d47bc00
 16851 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16851 ms  0x2e09 ret:0x7f860ac59600
 16851 ms  0x2e09 PK11_DeriveWithFlags()
 16851 ms  0x2e09 basekey:0x7f861d47bc00
 16851 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16851 ms  0x2e09 ret:0x7f861c512200
 16851 ms  0x2e09 PK11_DeriveWithFlags()
 16851 ms  0x2e09 basekey:0x7f861d47bc00
 16851 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16851 ms  0x2e09 ret:0x7f860b246900
 16851 ms  0x2e09 PK11_Derive()
 16851 ms  0x2e09 basekey:0x7f861d47bd00
 16851 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16851 ms  0x2e09 ret:0x7f861d47bb80
 16851 ms  0x2e09 PK11_DeriveWithFlags()
 16851 ms  0x2e09 basekey:0x7f861c512200
 16851 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16851 ms  0x2e09 ret:0x7f861d47bc00
 16851 ms  0x2e09 PK11_DeriveWithFlags()
 16851 ms  0x2e09 basekey:0x7f861c512200
 16851 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16851 ms  0x2e09 ret:0x7f860b246900
 16852 ms  SECKEY_ECParamsToKeySize()
 16852 ms  0x2e09 ret:0x100
 16853 ms  SECKEY_ECParamsToBasePointOrderLen()
 16853 ms  0x2e09 ret:0x100
 16853 ms  SECKEY_ECParamsToBasePointOrderLen()
 16853 ms  0x2e09 ret:0x100
 16853 ms  0x2e09 EC_ValidatePublicKey()
 16855 ms  0x2e09 ret:0x0
 16857 ms  0x2e09 PK11_DeriveWithFlags()
 16857 ms  0x2e09 basekey:0x7f861c512200
 16857 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16857 ms  0x2e09 ret:0x7f860b246900
 16858 ms  0x2e09 PR_Connect()
 16858 ms  0x2e09 fd:0x7f8620d94f10
           /* TID 0x2e9a */
 16888 ms  0x2e9a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16889 ms  0x2e9a ret:0x0
           /* TID 0x2e11 */
 16889 ms  0x2e11 PR_Close()
 16889 ms  0x2e11 fd:0x7f8620d8fd00
           /* TID 0x2e09 */
 16890 ms  0x2e09 SSL_AuthCertificateComplete()
 16890 ms  0x2e09 fd:0x7f861c1ed910
 16890 ms  0x2e09 err:0x0
 16890 ms     | 0x2e09 PK11_DeriveWithFlags()
 16890 ms     | 0x2e09 basekey:0x7f861c512180
 16890 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16890 ms     | 0x2e09 ret:0x7f860b246900
 16890 ms     | 0x2e09 PK11_DeriveWithFlags()
 16890 ms     | 0x2e09 basekey:0x7f861c512180
 16890 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16890 ms     | 0x2e09 ret:0x7f861d47bd00
 16890 ms     | 0x2e09 PK11_DeriveWithFlags()
 16890 ms     | 0x2e09 basekey:0x7f861c512180
 16890 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16890 ms     | 0x2e09 ret:0x7f861d47bc80
 16891 ms     | 0x2e09 PK11_DeriveWithFlags()
 16891 ms     | 0x2e09 basekey:0x7f861d47a080
 16891 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16891 ms     | 0x2e09 ret:0x7f861d686900
 16891 ms     | 0x2e09 PK11_DeriveWithFlags()
 16891 ms     | 0x2e09 basekey:0x7f861d47a080
 16891 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16891 ms     | 0x2e09 ret:0x7f861d686c80
 16891 ms     | 0x2e09 PK11_DeriveWithFlags()
 16891 ms     | 0x2e09 basekey:0x7f861d47bd00
 16891 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16891 ms     | 0x2e09 ret:0x7f861d686c80
 16891 ms     | 0x2e09 PK11_DeriveWithFlags()
 16891 ms     | 0x2e09 basekey:0x7f861d47bd00
 16891 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16891 ms     | 0x2e09 ret:0x7f861d686880
 16891 ms     | 0x2e09 PK11_DeriveWithFlags()
 16891 ms     | 0x2e09 basekey:0x7f861d47a080
 16891 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16891 ms     | 0x2e09 ret:0x7f861c395b00
 16891 ms     | 0x2e09 PK11_Encrypt()
 16891 ms     | 0x2e09 symkey:0x7f861d686900
 16892 ms     | 0x2e09 PK11_DeriveWithFlags()
 16892 ms     | 0x2e09 basekey:0x7f860b246900
 16892 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16892 ms     | 0x2e09 ret:0x7f861c395b00
 16892 ms     | 0x2e09 PK11_DeriveWithFlags()
 16892 ms     | 0x2e09 basekey:0x7f860b246900
 16892 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16892 ms     | 0x2e09 ret:0x7f861d686880
 16892 ms     | 0x2e09 PK11_DeriveWithFlags()
 16892 ms     | 0x2e09 basekey:0x7f861c512180
 16892 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16892 ms     | 0x2e09 ret:0x7f861d686900
 16892 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 16892 ms     | 0x2e09 privk:0x7f860b00e820::7f860b00e820  30 8d fd 1b                                      0...
 16892 ms     | 0x2e09 privk:0x7f860b00e820::7f860b00e820  e5 e5 e5 e5                                      ....
 16892 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 16892 ms     | 0x2e09 privk:0x7f860aa49820::7f860aa49820  b0 8a ff 0a                                      ....
 16893 ms     | 0x2e09 privk:0x7f860aa49820::7f860aa49820  e5 e5 e5 e5                                      ....
           /* TID 0x2e9e */
 16893 ms  0x2e9e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16894 ms  0x2e9e ret:0x0
           /* TID 0x2e11 */
 16894 ms  0x2e11 PR_Close()
 16894 ms  0x2e11 fd:0x7f861c38f580
           /* TID 0x2e09 */
 16895 ms  0x2e09 PK11_Encrypt()
 16895 ms  0x2e09 symkey:0x7f861c395b00
 16895 ms  0x2e09 PK11_Encrypt()
 16895 ms  0x2e09 symkey:0x7f861c395b00
 16896 ms  0x2e09 SSL_AuthCertificateComplete()
 16896 ms  0x2e09 fd:0x7f860b0fd5e0
 16896 ms  0x2e09 err:0x0
 16896 ms     | 0x2e09 PK11_DeriveWithFlags()
 16896 ms     | 0x2e09 basekey:0x7f860ac86400
 16896 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16896 ms     | 0x2e09 ret:0x7f861d686800
 16896 ms     | 0x2e09 PK11_DeriveWithFlags()
 16896 ms     | 0x2e09 basekey:0x7f860ac86400
 16896 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16896 ms     | 0x2e09 ret:0x7f861d47a080
 16896 ms     | 0x2e09 PK11_DeriveWithFlags()
 16896 ms     | 0x2e09 basekey:0x7f860ac86400
 16896 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16896 ms     | 0x2e09 ret:0x7f861c512180
 16897 ms     | 0x2e09 PK11_DeriveWithFlags()
 16897 ms     | 0x2e09 basekey:0x7f861c7cb200
 16897 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16897 ms     | 0x2e09 ret:0x7f861d686880
 16897 ms     | 0x2e09 PK11_DeriveWithFlags()
 16897 ms     | 0x2e09 basekey:0x7f861c7cb200
 16897 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16897 ms     | 0x2e09 ret:0x7f861d686980
 16897 ms     | 0x2e09 PK11_DeriveWithFlags()
 16897 ms     | 0x2e09 basekey:0x7f861d47a080
 16897 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16897 ms     | 0x2e09 ret:0x7f861d686980
 16897 ms     | 0x2e09 PK11_DeriveWithFlags()
 16897 ms     | 0x2e09 basekey:0x7f861d47a080
 16897 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16897 ms     | 0x2e09 ret:0x7f861d4a0200
 16897 ms     | 0x2e09 PK11_DeriveWithFlags()
 16897 ms     | 0x2e09 basekey:0x7f861c7cb200
 16897 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16897 ms     | 0x2e09 ret:0x7f861c7ca500
 16897 ms     | 0x2e09 PK11_Encrypt()
 16897 ms     | 0x2e09 symkey:0x7f861d686880
 16904 ms     | 0x2e09 PK11_DeriveWithFlags()
 16904 ms     | 0x2e09 basekey:0x7f861d686800
 16904 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16904 ms     | 0x2e09 ret:0x7f861c7ca500
 16904 ms     | 0x2e09 PK11_DeriveWithFlags()
 16904 ms     | 0x2e09 basekey:0x7f861d686800
 16904 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16904 ms     | 0x2e09 ret:0x7f861d4a0200
 16904 ms     | 0x2e09 PK11_DeriveWithFlags()
 16904 ms     | 0x2e09 basekey:0x7f860ac86400
 16904 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16904 ms     | 0x2e09 ret:0x7f861d686880
 16904 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 16904 ms     | 0x2e09 privk:0x7f8622805020::7f8622805020  50 66 7e 1c                                      Pf~.
 16904 ms     | 0x2e09 privk:0x7f8622805020::7f8622805020  e5 e5 e5 e5                                      ....
 16904 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 16904 ms     | 0x2e09 privk:0x7f862200d820::7f862200d820  d0 13 35 1c                                      ..5.
 16905 ms     | 0x2e09 privk:0x7f862200d820::7f862200d820  e5 e5 e5 e5                                      ....
 16910 ms  0x2e09 PK11_Encrypt()
 16910 ms  0x2e09 symkey:0x7f861c7ca500
 16913 ms  0x2e09 PK11_Encrypt()
 16913 ms  0x2e09 symkey:0x7f861c395b00
           /* TID 0x2e11 */
 16929 ms  0x2e11 PR_Close()
 16929 ms  0x2e11 fd:0x7f861dcd0610
           /* TID 0x2e09 */
 16931 ms  0x2e09 PK11_Encrypt()
 16931 ms  0x2e09 symkey:0x7f861d443f00
 16931 ms  0x2e09 PK11_DeriveWithFlags()
 16931 ms  0x2e09 basekey:0x7f861d686900
 16931 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16931 ms  0x2e09 ret:0x7f861c7cb180
 16932 ms  0x2e09 PK11_DeriveWithFlags()
 16932 ms  0x2e09 basekey:0x7f861d686900
 16932 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16932 ms  0x2e09 ret:0x7f861c7cb180
 16932 ms  0x2e09 PK11_Encrypt()
 16932 ms  0x2e09 symkey:0x7f861c395b00
           /* TID 0x2e11 */
 16933 ms  0x2e11 PR_Close()
 16933 ms  0x2e11 fd:0x7f860ad6ca60
           /* TID 0x2e09 */
 16936 ms  0x2e09 PK11_DeriveWithFlags()
 16936 ms  0x2e09 basekey:0x7f861d686880
 16936 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16936 ms  0x2e09 ret:0x7f861c7cb180
 16936 ms  0x2e09 PK11_DeriveWithFlags()
 16936 ms  0x2e09 basekey:0x7f861d686880
 16936 ms     | 0x2e09 PK11_DeriveWithTemplate()
 16936 ms  0x2e09 ret:0x7f861c7cb180
 16936 ms  0x2e09 PR_Close()
 16936 ms  0x2e09 fd:0x7f860b0fd5e0
 16936 ms     | 0x2e09 PK11_Encrypt()
 16936 ms     | 0x2e09 symkey:0x7f861c7ca500
           /* TID 0x2e11 */
 16995 ms  0x2e11 PR_Close()
 16995 ms  0x2e11 fd:0x7f860b0fd5e0
           /* TID 0x2e65 */
 16995 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16996 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
 16996 ms  0x2e09 SSL_AuthCertificateComplete()
 16996 ms  0x2e09 fd:0x7f861d9f1f40
 16996 ms  0x2e09 err:0x0
 16996 ms     | 0x2e09 PK11_DeriveWithFlags()
 16996 ms     | 0x2e09 basekey:0x7f860ac59580
 16996 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16996 ms     | 0x2e09 ret:0x7f861c512180
 16996 ms     | 0x2e09 PK11_DeriveWithFlags()
 16996 ms     | 0x2e09 basekey:0x7f860ac59580
 16996 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16996 ms     | 0x2e09 ret:0x7f861d47a080
 16996 ms     | 0x2e09 PK11_DeriveWithFlags()
 16996 ms     | 0x2e09 basekey:0x7f860ac59580
 16996 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16996 ms     | 0x2e09 ret:0x7f861d686800
 16997 ms     | 0x2e09 PK11_DeriveWithFlags()
 16997 ms     | 0x2e09 basekey:0x7f861c3d2680
 16997 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16997 ms     | 0x2e09 ret:0x7f861d686880
 16997 ms     | 0x2e09 PK11_DeriveWithFlags()
 16997 ms     | 0x2e09 basekey:0x7f861c3d2680
 16997 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16997 ms     | 0x2e09 ret:0x7f861d686980
 16997 ms     | 0x2e09 PK11_DeriveWithFlags()
 16997 ms     | 0x2e09 basekey:0x7f861d47a080
 16997 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16997 ms     | 0x2e09 ret:0x7f861d686980
 16997 ms     | 0x2e09 PK11_DeriveWithFlags()
 16997 ms     | 0x2e09 basekey:0x7f861d47a080
 16997 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16997 ms     | 0x2e09 ret:0x7f861c7ca500
 16997 ms     | 0x2e09 PK11_DeriveWithFlags()
 16997 ms     | 0x2e09 basekey:0x7f861c3d2680
 16997 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16997 ms     | 0x2e09 ret:0x7f861d49ba80
 16997 ms     | 0x2e09 PK11_Encrypt()
 16997 ms     | 0x2e09 symkey:0x7f861d686880
 16998 ms     | 0x2e09 PK11_DeriveWithFlags()
 16998 ms     | 0x2e09 basekey:0x7f861c512180
 16998 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16998 ms     | 0x2e09 ret:0x7f861d49ba80
 16998 ms     | 0x2e09 PK11_DeriveWithFlags()
 16998 ms     | 0x2e09 basekey:0x7f861c512180
 16998 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16998 ms     | 0x2e09 ret:0x7f861c7ca500
 16998 ms     | 0x2e09 PK11_DeriveWithFlags()
 16998 ms     | 0x2e09 basekey:0x7f860ac59580
 16998 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 16998 ms     | 0x2e09 ret:0x7f861d686880
 16999 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 16999 ms     | 0x2e09 privk:0x7f862280f820::7f862280f820  50 db e0 1c                                      P...
 16999 ms     | 0x2e09 privk:0x7f862280f820::7f862280f820  e5 e5 e5 e5                                      ....
 16999 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 16999 ms     | 0x2e09 privk:0x7f86221a4820::7f86221a4820  30 d8 e0 1c                                      0...
 16999 ms     | 0x2e09 privk:0x7f86221a4820::7f86221a4820  e5 e5 e5 e5                                      ....
 17000 ms  0x2e09 PK11_Encrypt()
 17000 ms  0x2e09 symkey:0x7f861d49ba80
 17001 ms  0x2e09 PK11_Encrypt()
 17001 ms  0x2e09 symkey:0x7f861c395b00
           /* TID 0x2ea3 */
 17035 ms  0x2ea3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17035 ms  0x2ea3 ret:0x0
           /* TID 0x2e11 */
 17036 ms  0x2e11 PR_Close()
 17036 ms  0x2e11 fd:0x7f861c38f580
           /* TID 0x2e09 */
 17040 ms  0x2e09 PK11_DeriveWithFlags()
 17040 ms  0x2e09 basekey:0x7f861d686880
 17045 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17045 ms  0x2e09 ret:0x7f861c7ca100
 17045 ms  0x2e09 PK11_DeriveWithFlags()
 17045 ms  0x2e09 basekey:0x7f861d686880
 17045 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17045 ms  0x2e09 ret:0x7f861c7ca100
 17045 ms  0x2e09 PR_Close()
 17045 ms  0x2e09 fd:0x7f861d9f1f40
 17046 ms     | 0x2e09 PK11_Encrypt()
 17046 ms     | 0x2e09 symkey:0x7f861d49ba80
 17055 ms  0x2e09 SSL_AuthCertificateComplete()
 17055 ms  0x2e09 fd:0x7f861d671af0
 17055 ms  0x2e09 err:0x0
 17056 ms     | 0x2e09 PK11_DeriveWithFlags()
 17056 ms     | 0x2e09 basekey:0x7f861d47bb80
 17056 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17056 ms     | 0x2e09 ret:0x7f861d686800
 17056 ms     | 0x2e09 PK11_DeriveWithFlags()
 17056 ms     | 0x2e09 basekey:0x7f861d47bb80
 17056 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17056 ms     | 0x2e09 ret:0x7f861d47a080
 17056 ms     | 0x2e09 PK11_DeriveWithFlags()
 17056 ms     | 0x2e09 basekey:0x7f861d47bb80
 17056 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17056 ms     | 0x2e09 ret:0x7f861c512180
 17056 ms     | 0x2e09 PK11_DeriveWithFlags()
 17056 ms     | 0x2e09 basekey:0x7f860ac59600
 17056 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17056 ms     | 0x2e09 ret:0x7f861d686880
 17056 ms     | 0x2e09 PK11_DeriveWithFlags()
 17056 ms     | 0x2e09 basekey:0x7f860ac59600
 17056 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17056 ms     | 0x2e09 ret:0x7f861d686980
 17056 ms     | 0x2e09 PK11_DeriveWithFlags()
 17056 ms     | 0x2e09 basekey:0x7f861d47a080
 17056 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17057 ms     | 0x2e09 ret:0x7f861d686980
 17057 ms     | 0x2e09 PK11_DeriveWithFlags()
 17057 ms     | 0x2e09 basekey:0x7f861d47a080
 17057 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17057 ms     | 0x2e09 ret:0x7f861d49ba80
 17057 ms     | 0x2e09 PK11_DeriveWithFlags()
 17057 ms     | 0x2e09 basekey:0x7f860ac59600
 17057 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17057 ms     | 0x2e09 ret:0x7f861d47bc00
 17057 ms     | 0x2e09 PK11_Encrypt()
 17057 ms     | 0x2e09 symkey:0x7f861d686880
 17059 ms     | 0x2e09 PK11_DeriveWithFlags()
 17059 ms     | 0x2e09 basekey:0x7f861d686800
 17059 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17059 ms     | 0x2e09 ret:0x7f861d47bc00
 17059 ms     | 0x2e09 PK11_DeriveWithFlags()
 17059 ms     | 0x2e09 basekey:0x7f861d686800
 17060 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17060 ms     | 0x2e09 ret:0x7f861d49ba80
 17060 ms     | 0x2e09 PK11_DeriveWithFlags()
 17060 ms     | 0x2e09 basekey:0x7f861d47bb80
 17060 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17060 ms     | 0x2e09 ret:0x7f861d686880
 17060 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 17060 ms     | 0x2e09 privk:0x7f8622969820::7f8622969820  c0 de e0 1c                                      ....
 17060 ms     | 0x2e09 privk:0x7f8622969820::7f8622969820  e5 e5 e5 e5                                      ....
 17060 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 17060 ms     | 0x2e09 privk:0x7f8622967820::7f8622967820  20 14 3d 1c                                       .=.
 17060 ms     | 0x2e09 privk:0x7f8622967820::7f8622967820  e5 e5 e5 e5                                      ....
 17061 ms  0x2e09 PK11_Encrypt()
 17061 ms  0x2e09 symkey:0x7f861d47bc00
 17062 ms  0x2e09 PK11_Encrypt()
 17062 ms  0x2e09 symkey:0x7f861d47bc00
 17105 ms  0x2e09 PK11_DeriveWithFlags()
 17105 ms  0x2e09 basekey:0x7f861d686880
 17105 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17106 ms  0x2e09 ret:0x7f861c512200
 17106 ms  0x2e09 PK11_DeriveWithFlags()
 17106 ms  0x2e09 basekey:0x7f861d686880
 17106 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17110 ms  0x2e09 ret:0x7f861c512200
 17110 ms  0x2e09 PK11_Encrypt()
 17110 ms  0x2e09 symkey:0x7f861d47bc00
           /* TID 0x2e11 */
 17125 ms  0x2e11 PR_Close()
 17125 ms  0x2e11 fd:0x7f861c7b1ee0
 17128 ms  0x2e11 PR_Close()
 17128 ms  0x2e11 fd:0x7f861c7b1ee0
           /* TID 0x2e09 */
 17130 ms  0x2e09 PK11_Encrypt()
 17130 ms  0x2e09 symkey:0x7f861c395b00
           /* TID 0x2e11 */
 17133 ms  0x2e11 PR_Close()
 17133 ms  0x2e11 fd:0x7f861c7b1ee0
           /* TID 0x2e09 */
 17137 ms  0x2e09 PK11_Encrypt()
 17137 ms  0x2e09 symkey:0x7f860adab980
 17154 ms  0x2e09 PK11_Encrypt()
 17154 ms  0x2e09 symkey:0x7f861d47bc00
 17159 ms  0x2e09 SSL_ImportFD()
 17159 ms  0x2e09 ret:0x7f861e0fdaf0
 17159 ms  0x2e09 SSL_AuthCertificateHook()
 17159 ms  0x2e09 fd:0x7f861e0fdaf0
 17159 ms  0x2e09 ret:0x0
 17159 ms  0x2e09 PR_Connect()
 17159 ms  0x2e09 fd:0x7f861e0fdaf0
 17198 ms  0x2e09 SECKEY_CreateECPrivateKey()
 17198 ms  0x2e09 cx:0x7f862a3e4da8
 17200 ms     | 0x2e09 EC_ValidatePublicKey()
 17200 ms     | 0x2e09 ret:0x0
 17200 ms  0x2e09 ret:0x7f8622019820::7f8622019820  40 c2 38 1c                                      @.8.
 17201 ms  0x2e09 SECKEY_CreateECPrivateKey()
 17201 ms  0x2e09 cx:0x7f862a3e4da8
 17202 ms     | 0x2e09 EC_ValidatePublicKey()
 17209 ms     | 0x2e09 ret:0x0
 17209 ms  0x2e09 ret:0x7f86226db020::7f86226db020  90 17 35 1c                                      ..5.
           /* TID 0x2e11 */
 17218 ms  0x2e11 PR_Close()
 17218 ms  0x2e11 fd:0x7f861dcd0310
           /* TID 0x2e09 */
 17219 ms  0x2e09 PK11_Encrypt()
 17219 ms  0x2e09 symkey:0x7f860adab980
 17231 ms  0x2e09 SSL_ImportFD()
 17231 ms  0x2e09 ret:0x7f8620d7c550
 17231 ms  0x2e09 SSL_AuthCertificateHook()
 17231 ms  0x2e09 fd:0x7f8620d7c550
 17231 ms  0x2e09 ret:0x0
 17231 ms  0x2e09 PR_Connect()
 17231 ms  0x2e09 fd:0x7f8620d7c550
 17238 ms  0x2e09 PK11_Encrypt()
 17238 ms  0x2e09 symkey:0x7f861c395b00
           /* TID 0x2e11 */
 17238 ms  0x2e11 PR_Close()
 17238 ms  0x2e11 fd:0x7f861c7b1ee0
           /* TID 0x2e09 */
 17264 ms  0x2e09 PK11_Derive()
 17264 ms  0x2e09 basekey:0x7f861c512200
 17264 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17264 ms  0x2e09 ret:0x7f860ac59600
 17264 ms  0x2e09 PK11_PubDeriveWithKDF()
 17264 ms  0x2e09 seckey:0x7f8622019820
 17264 ms     | 0x2e09 EC_ValidatePublicKey()
 17264 ms     | 0x2e09 ret:0x0
 17265 ms  0x2e09 ret:0x7f861c512200
 17265 ms  SECKEY_ECParamsToKeySize()
 17265 ms  0x2e09 ret:0xff
 17265 ms  0x2e09 PK11_DeriveWithFlags()
 17265 ms  0x2e09 basekey:0x7f860ac59600
 17265 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17265 ms  0x2e09 ret:0x7f861d47bb80
 17265 ms  0x2e09 PK11_Derive()
 17265 ms  0x2e09 basekey:0x7f861c512200
 17265 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17265 ms  0x2e09 ret:0x7f861d49ba80
 17265 ms  0x2e09 PK11_DeriveWithFlags()
 17265 ms  0x2e09 basekey:0x7f861d49ba80
 17265 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17265 ms  0x2e09 ret:0x7f860ac59600
 17265 ms  0x2e09 PK11_DeriveWithFlags()
 17265 ms  0x2e09 basekey:0x7f861d49ba80
 17265 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17265 ms  0x2e09 ret:0x7f861c512200
 17265 ms  0x2e09 PK11_DeriveWithFlags()
 17265 ms  0x2e09 basekey:0x7f861d49ba80
 17265 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17265 ms  0x2e09 ret:0x7f861d47bb80
 17265 ms  0x2e09 PK11_Derive()
 17265 ms  0x2e09 basekey:0x7f861c7ca100
 17265 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17265 ms  0x2e09 ret:0x7f861c3d2680
 17265 ms  0x2e09 PK11_DeriveWithFlags()
 17265 ms  0x2e09 basekey:0x7f861c512200
 17265 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17265 ms  0x2e09 ret:0x7f861d49ba80
 17265 ms  0x2e09 PK11_DeriveWithFlags()
 17265 ms  0x2e09 basekey:0x7f861c512200
 17265 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17265 ms  0x2e09 ret:0x7f861d47bb80
 17267 ms  SECKEY_ECParamsToKeySize()
 17267 ms  0x2e09 ret:0x100
 17267 ms  SECKEY_ECParamsToBasePointOrderLen()
 17267 ms  0x2e09 ret:0x100
 17267 ms  SECKEY_ECParamsToBasePointOrderLen()
 17267 ms  0x2e09 ret:0x100
 17267 ms  0x2e09 EC_ValidatePublicKey()
 17269 ms  0x2e09 ret:0x0
 17271 ms  0x2e09 PK11_DeriveWithFlags()
 17271 ms  0x2e09 basekey:0x7f861c512200
 17271 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17271 ms  0x2e09 ret:0x7f861d47bb80
 17272 ms  0x2e09 SECKEY_CreateECPrivateKey()
 17272 ms  0x2e09 cx:0x7f862a3e50e8
 17273 ms     | 0x2e09 EC_ValidatePublicKey()
 17273 ms     | 0x2e09 ret:0x0
 17273 ms  0x2e09 ret:0x7f862281b820::7f862281b820  50 66 7e 1c                                      Pf~.
 17273 ms  0x2e09 SECKEY_CreateECPrivateKey()
 17273 ms  0x2e09 cx:0x7f862a3e50e8
 17273 ms     | 0x2e09 EC_ValidatePublicKey()
 17275 ms     | 0x2e09 ret:0x0
 17275 ms  0x2e09 ret:0x7f8622821820::7f8622821820  20 d9 e0 1c                                       ...
 17330 ms  0x2e09 PK11_Derive()
 17330 ms  0x2e09 basekey:0x7f861d47bb80
 17331 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17331 ms  0x2e09 ret:0x7f861c7ca100
 17331 ms  0x2e09 PK11_PubDeriveWithKDF()
 17331 ms  0x2e09 seckey:0x7f862281b820
 17331 ms     | 0x2e09 EC_ValidatePublicKey()
 17331 ms     | 0x2e09 ret:0x0
 17332 ms  0x2e09 ret:0x7f861d47bb80
 17332 ms  SECKEY_ECParamsToKeySize()
 17332 ms  0x2e09 ret:0xff
 17332 ms  0x2e09 PK11_DeriveWithFlags()
 17332 ms  0x2e09 basekey:0x7f861c7ca100
 17332 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17332 ms  0x2e09 ret:0x7f860ac59580
 17332 ms  0x2e09 PK11_Derive()
 17332 ms  0x2e09 basekey:0x7f861d47bb80
 17332 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17332 ms  0x2e09 ret:0x7f861c7ca500
 17332 ms  0x2e09 PK11_DeriveWithFlags()
 17332 ms  0x2e09 basekey:0x7f861c7ca500
 17332 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17332 ms  0x2e09 ret:0x7f861c7ca100
 17332 ms  0x2e09 PK11_DeriveWithFlags()
 17332 ms  0x2e09 basekey:0x7f861c7ca500
 17332 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17332 ms  0x2e09 ret:0x7f861d47bb80
 17332 ms  0x2e09 PK11_DeriveWithFlags()
 17332 ms  0x2e09 basekey:0x7f861c7ca500
 17332 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17332 ms  0x2e09 ret:0x7f860ac59580
 17332 ms  0x2e09 PK11_Derive()
 17332 ms  0x2e09 basekey:0x7f861c7cb180
 17332 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17332 ms  0x2e09 ret:0x7f861c7cb200
 17332 ms  0x2e09 PK11_DeriveWithFlags()
 17332 ms  0x2e09 basekey:0x7f861d47bb80
 17332 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17332 ms  0x2e09 ret:0x7f861c7ca500
 17332 ms  0x2e09 PK11_DeriveWithFlags()
 17332 ms  0x2e09 basekey:0x7f861d47bb80
 17332 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17332 ms  0x2e09 ret:0x7f860ac59580
 17335 ms  0x2e09 PK11_DeriveWithFlags()
 17335 ms  0x2e09 basekey:0x7f861d47bb80
 17335 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17335 ms  0x2e09 ret:0x7f860ac59580
           /* TID 0x2e11 */
 17417 ms  0x2e11 PR_Close()
 17417 ms  0x2e11 fd:0x7f86216fea00
           /* TID 0x2e9f */
 17417 ms  0x2e9f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17418 ms  0x2e9f ret:0x0
           /* TID 0x2e09 */
 17418 ms  0x2e09 SSL_AuthCertificateComplete()
 17418 ms  0x2e09 fd:0x7f861e0fdaf0
 17418 ms  0x2e09 err:0x0
 17418 ms     | 0x2e09 PK11_DeriveWithFlags()
 17418 ms     | 0x2e09 basekey:0x7f861c3d2680
 17418 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17418 ms     | 0x2e09 ret:0x7f860ac59580
 17418 ms     | 0x2e09 PK11_DeriveWithFlags()
 17418 ms     | 0x2e09 basekey:0x7f861c3d2680
 17418 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17418 ms     | 0x2e09 ret:0x7f861c7cb180
 17418 ms     | 0x2e09 PK11_DeriveWithFlags()
 17418 ms     | 0x2e09 basekey:0x7f861c3d2680
 17419 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17419 ms     | 0x2e09 ret:0x7f860ac86400
 17419 ms     | 0x2e09 PK11_DeriveWithFlags()
 17419 ms     | 0x2e09 basekey:0x7f860ac59600
 17419 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17419 ms     | 0x2e09 ret:0x7f861d4a0200
 17419 ms     | 0x2e09 PK11_DeriveWithFlags()
 17419 ms     | 0x2e09 basekey:0x7f860ac59600
 17419 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17419 ms     | 0x2e09 ret:0x7f861d4a0300
 17419 ms     | 0x2e09 PK11_DeriveWithFlags()
 17419 ms     | 0x2e09 basekey:0x7f861c7cb180
 17419 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17419 ms     | 0x2e09 ret:0x7f861d4a0300
 17419 ms     | 0x2e09 PK11_DeriveWithFlags()
 17419 ms     | 0x2e09 basekey:0x7f861c7cb180
 17419 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17419 ms     | 0x2e09 ret:0x7f861d4a0100
 17419 ms     | 0x2e09 PK11_DeriveWithFlags()
 17419 ms     | 0x2e09 basekey:0x7f860ac59600
 17419 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17419 ms     | 0x2e09 ret:0x7f861d49ba80
 17420 ms     | 0x2e09 PK11_Encrypt()
 17420 ms     | 0x2e09 symkey:0x7f861d4a0200
 17420 ms     | 0x2e09 PK11_DeriveWithFlags()
 17420 ms     | 0x2e09 basekey:0x7f860ac59580
 17420 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17420 ms     | 0x2e09 ret:0x7f861d49ba80
 17420 ms     | 0x2e09 PK11_DeriveWithFlags()
 17420 ms     | 0x2e09 basekey:0x7f860ac59580
 17420 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17420 ms     | 0x2e09 ret:0x7f861d4a0100
 17420 ms     | 0x2e09 PK11_DeriveWithFlags()
 17420 ms     | 0x2e09 basekey:0x7f861c3d2680
 17420 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17421 ms     | 0x2e09 ret:0x7f861d4a0200
 17421 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 17421 ms     | 0x2e09 privk:0x7f86226db020::7f86226db020  90 17 35 1c                                      ..5.
 17421 ms     | 0x2e09 privk:0x7f86226db020::7f86226db020  e5 e5 e5 e5                                      ....
 17421 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 17421 ms     | 0x2e09 privk:0x7f8622019820::7f8622019820  40 c2 38 1c                                      @.8.
 17422 ms     | 0x2e09 privk:0x7f8622019820::7f8622019820  e5 e5 e5 e5                                      ....
 17423 ms  0x2e09 PK11_Encrypt()
 17423 ms  0x2e09 symkey:0x7f861d49ba80
 17424 ms  0x2e09 PK11_Encrypt()
 17424 ms  0x2e09 symkey:0x7f861d49ba80
           /* TID 0x2e11 */
 17480 ms  0x2e11 PR_Close()
 17480 ms  0x2e11 fd:0x7f861c7b1ee0
           /* TID 0x2e9a */
 17481 ms  0x2e9a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17481 ms  0x2e9a ret:0x0
           /* TID 0x2e09 */
 17481 ms  0x2e09 SSL_AuthCertificateComplete()
 17481 ms  0x2e09 fd:0x7f8620d7c550
 17481 ms  0x2e09 err:0x0
 17482 ms     | 0x2e09 PK11_DeriveWithFlags()
 17482 ms     | 0x2e09 basekey:0x7f861c7cb200
 17482 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17482 ms     | 0x2e09 ret:0x7f861c512200
 17482 ms     | 0x2e09 PK11_DeriveWithFlags()
 17482 ms     | 0x2e09 basekey:0x7f861c7cb200
 17482 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17482 ms     | 0x2e09 ret:0x7f860ac59600
 17482 ms     | 0x2e09 PK11_DeriveWithFlags()
 17482 ms     | 0x2e09 basekey:0x7f861c7cb200
 17482 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17482 ms     | 0x2e09 ret:0x7f861c3d2680
 17482 ms     | 0x2e09 PK11_DeriveWithFlags()
 17482 ms     | 0x2e09 basekey:0x7f861c7ca100
 17482 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17482 ms     | 0x2e09 ret:0x7f861d4a0100
 17482 ms     | 0x2e09 PK11_DeriveWithFlags()
 17482 ms     | 0x2e09 basekey:0x7f861c7ca100
 17482 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17482 ms     | 0x2e09 ret:0x7f861d4a0280
 17482 ms     | 0x2e09 PK11_DeriveWithFlags()
 17482 ms     | 0x2e09 basekey:0x7f860ac59600
 17482 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17482 ms     | 0x2e09 ret:0x7f861d4a0280
 17482 ms     | 0x2e09 PK11_DeriveWithFlags()
 17482 ms     | 0x2e09 basekey:0x7f860ac59600
 17483 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17483 ms     | 0x2e09 ret:0x7f860ac59780
 17483 ms     | 0x2e09 PK11_DeriveWithFlags()
 17483 ms     | 0x2e09 basekey:0x7f861c7ca100
 17483 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17483 ms     | 0x2e09 ret:0x7f861c7ca500
 17483 ms     | 0x2e09 PK11_Encrypt()
 17483 ms     | 0x2e09 symkey:0x7f861d4a0100
 17484 ms     | 0x2e09 PK11_DeriveWithFlags()
 17484 ms     | 0x2e09 basekey:0x7f861c512200
 17484 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17484 ms     | 0x2e09 ret:0x7f861c7ca500
 17484 ms     | 0x2e09 PK11_DeriveWithFlags()
 17484 ms     | 0x2e09 basekey:0x7f861c512200
 17484 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17484 ms     | 0x2e09 ret:0x7f860ac59780
 17484 ms     | 0x2e09 PK11_DeriveWithFlags()
 17484 ms     | 0x2e09 basekey:0x7f861c7cb200
 17484 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17484 ms     | 0x2e09 ret:0x7f861d4a0100
 17484 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 17484 ms     | 0x2e09 privk:0x7f8622821820::7f8622821820  20 d9 e0 1c                                       ...
 17484 ms     | 0x2e09 privk:0x7f8622821820::7f8622821820  e5 e5 e5 e5                                      ....
 17485 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 17485 ms     | 0x2e09 privk:0x7f862281b820::7f862281b820  50 66 7e 1c                                      Pf~.
 17485 ms     | 0x2e09 privk:0x7f862281b820::7f862281b820  e5 e5 e5 e5                                      ....
 17486 ms  0x2e09 PK11_Encrypt()
 17486 ms  0x2e09 symkey:0x7f861c7ca500
 17486 ms  0x2e09 PK11_Encrypt()
 17486 ms  0x2e09 symkey:0x7f861c7ca500
 17499 ms  0x2e09 PK11_DeriveWithFlags()
 17499 ms  0x2e09 basekey:0x7f861d4a0200
 17499 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17499 ms  0x2e09 ret:0x7f861d47bb80
 17499 ms  0x2e09 PK11_DeriveWithFlags()
 17499 ms  0x2e09 basekey:0x7f861d4a0200
 17499 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17499 ms  0x2e09 ret:0x7f861d47bb80
 17500 ms  0x2e09 PK11_Encrypt()
 17500 ms  0x2e09 symkey:0x7f861d49ba80
 17527 ms  0x2e09 PK11_Encrypt()
 17527 ms  0x2e09 symkey:0x7f861d49ba80
 17528 ms  0x2e09 PK11_DeriveWithFlags()
 17528 ms  0x2e09 basekey:0x7f861d4a0100
 17528 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17528 ms  0x2e09 ret:0x7f861d47bb80
 17528 ms  0x2e09 PK11_DeriveWithFlags()
 17528 ms  0x2e09 basekey:0x7f861d4a0100
 17528 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17528 ms  0x2e09 ret:0x7f861d47bb80
 17528 ms  0x2e09 PK11_Encrypt()
 17528 ms  0x2e09 symkey:0x7f861c7ca500
 17530 ms  0x2e09 SSL_ImportFD()
 17530 ms  0x2e09 ret:0x7f8621d43640
 17530 ms  0x2e09 SSL_AuthCertificateHook()
 17530 ms  0x2e09 fd:0x7f8621d43640
 17530 ms  0x2e09 ret:0x0
 17530 ms  0x2e09 PR_Connect()
 17530 ms  0x2e09 fd:0x7f8621d43640
 17569 ms  0x2e09 SECKEY_CreateECPrivateKey()
 17569 ms  0x2e09 cx:0x7f862a3e55c8
 17572 ms     | 0x2e09 EC_ValidatePublicKey()
 17572 ms     | 0x2e09 ret:0x0
 17572 ms  0x2e09 ret:0x7f8622803020::7f8622803020  70 64 7e 1c                                      pd~.
 17572 ms  0x2e09 SECKEY_CreateECPrivateKey()
 17572 ms  0x2e09 cx:0x7f862a3e55c8
 17574 ms     | 0x2e09 EC_ValidatePublicKey()
 17581 ms     | 0x2e09 ret:0x0
 17581 ms  0x2e09 ret:0x7f862281b820::7f862281b820  e0 d7 e0 1c                                      ....
           /* TID 0x2e11 */
 17587 ms  0x2e11 PR_Close()
 17587 ms  0x2e11 fd:0x7f86216fe820
           /* TID 0x2e09 */
 17596 ms  0x2e09 PK11_Encrypt()
 17596 ms  0x2e09 symkey:0x7f861c7ca500
 17609 ms  0x2e09 SSL_ImportFD()
 17609 ms  0x2e09 ret:0x7f8621d43fd0
 17609 ms  0x2e09 SSL_AuthCertificateHook()
 17609 ms  0x2e09 fd:0x7f8621d43fd0
 17609 ms  0x2e09 ret:0x0
 17609 ms  0x2e09 PR_Connect()
 17609 ms  0x2e09 fd:0x7f8621d43fd0
 17636 ms  0x2e09 SECKEY_CreateECPrivateKey()
 17636 ms  0x2e09 cx:0x7f862a3e5908
 17637 ms     | 0x2e09 EC_ValidatePublicKey()
 17637 ms     | 0x2e09 ret:0x0
 17637 ms  0x2e09 ret:0x7f8622969020::7f8622969020  e0 dc e0 1c                                      ....
 17637 ms  0x2e09 SECKEY_CreateECPrivateKey()
 17637 ms  0x2e09 cx:0x7f862a3e5908
 17639 ms     | 0x2e09 EC_ValidatePublicKey()
 17643 ms     | 0x2e09 ret:0x0
 17643 ms  0x2e09 ret:0x7f862296c820::7f862296c820  60 df e0 1c                                      `...
 17644 ms  0x2e09 PK11_Derive()
 17644 ms  0x2e09 basekey:0x7f861d47bb80
 17644 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17644 ms  0x2e09 ret:0x7f861c7ca100
 17644 ms  0x2e09 PK11_PubDeriveWithKDF()
 17644 ms  0x2e09 seckey:0x7f8622803020
 17644 ms     | 0x2e09 EC_ValidatePublicKey()
 17644 ms     | 0x2e09 ret:0x0
 17646 ms  0x2e09 ret:0x7f861d47bb80
 17646 ms  SECKEY_ECParamsToKeySize()
 17646 ms  0x2e09 ret:0xff
 17646 ms  0x2e09 PK11_DeriveWithFlags()
 17646 ms  0x2e09 basekey:0x7f861c7ca100
 17646 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17646 ms  0x2e09 ret:0x7f861c7cb200
 17646 ms  0x2e09 PK11_Derive()
 17646 ms  0x2e09 basekey:0x7f861d47bb80
 17646 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17646 ms  0x2e09 ret:0x7f860ac59780
 17646 ms  0x2e09 PK11_DeriveWithFlags()
 17646 ms  0x2e09 basekey:0x7f860ac59780
 17646 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17646 ms  0x2e09 ret:0x7f861c7ca100
 17646 ms  0x2e09 PK11_DeriveWithFlags()
 17646 ms  0x2e09 basekey:0x7f860ac59780
 17646 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17646 ms  0x2e09 ret:0x7f861d47bb80
 17646 ms  0x2e09 PK11_DeriveWithFlags()
 17646 ms  0x2e09 basekey:0x7f860ac59780
 17646 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17646 ms  0x2e09 ret:0x7f861c7cb200
 17646 ms  0x2e09 PK11_Derive()
 17646 ms  0x2e09 basekey:0x7f860ac86180
 17646 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17646 ms  0x2e09 ret:0x7f860ac59700
 17646 ms  0x2e09 PK11_DeriveWithFlags()
 17646 ms  0x2e09 basekey:0x7f861d47bb80
 17646 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17647 ms  0x2e09 ret:0x7f860ac59780
 17647 ms  0x2e09 PK11_DeriveWithFlags()
 17647 ms  0x2e09 basekey:0x7f861d47bb80
 17647 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17647 ms  0x2e09 ret:0x7f861c7cb200
 17648 ms  0x2e09 PK11_DeriveWithFlags()
 17648 ms  0x2e09 basekey:0x7f861d47bb80
 17648 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17649 ms  0x2e09 ret:0x7f861c7cb200
 17649 ms  0x2e09 SSL_AuthCertificateComplete()
 17649 ms  0x2e09 fd:0x7f8621d43640
 17649 ms  0x2e09 err:0x0
 17649 ms     | 0x2e09 PK11_DeriveWithFlags()
 17649 ms     | 0x2e09 basekey:0x7f860ac59700
 17649 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17649 ms     | 0x2e09 ret:0x7f861c7cb200
 17649 ms     | 0x2e09 PK11_DeriveWithFlags()
 17649 ms     | 0x2e09 basekey:0x7f860ac59700
 17649 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17649 ms     | 0x2e09 ret:0x7f860ac86180
 17649 ms     | 0x2e09 PK11_DeriveWithFlags()
 17649 ms     | 0x2e09 basekey:0x7f860ac59700
 17649 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17649 ms     | 0x2e09 ret:0x7f860ac86080
 17649 ms     | 0x2e09 PK11_DeriveWithFlags()
 17649 ms     | 0x2e09 basekey:0x7f861c7ca100
 17649 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17649 ms     | 0x2e09 ret:0x7f861d9d0800
 17649 ms     | 0x2e09 PK11_DeriveWithFlags()
 17649 ms     | 0x2e09 basekey:0x7f861c7ca100
 17649 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17649 ms     | 0x2e09 ret:0x7f861d9d0880
 17649 ms     | 0x2e09 PK11_DeriveWithFlags()
 17649 ms     | 0x2e09 basekey:0x7f860ac86180
 17649 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17649 ms     | 0x2e09 ret:0x7f861d9d0880
 17649 ms     | 0x2e09 PK11_DeriveWithFlags()
 17649 ms     | 0x2e09 basekey:0x7f860ac86180
 17649 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17650 ms     | 0x2e09 ret:0x7f861d9d0900
 17650 ms     | 0x2e09 PK11_DeriveWithFlags()
 17650 ms     | 0x2e09 basekey:0x7f861c7ca100
 17650 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17650 ms     | 0x2e09 ret:0x7f860ac59780
 17650 ms     | 0x2e09 PK11_Encrypt()
 17650 ms     | 0x2e09 symkey:0x7f861d9d0800
 17650 ms     | 0x2e09 PK11_DeriveWithFlags()
 17650 ms     | 0x2e09 basekey:0x7f861c7cb200
 17650 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17650 ms     | 0x2e09 ret:0x7f860ac59780
 17650 ms     | 0x2e09 PK11_DeriveWithFlags()
 17650 ms     | 0x2e09 basekey:0x7f861c7cb200
 17650 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17650 ms     | 0x2e09 ret:0x7f861d9d0900
 17650 ms     | 0x2e09 PK11_DeriveWithFlags()
 17650 ms     | 0x2e09 basekey:0x7f860ac59700
 17650 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17650 ms     | 0x2e09 ret:0x7f861d9d0800
 17650 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 17650 ms     | 0x2e09 privk:0x7f862281b820::7f862281b820  e0 d7 e0 1c                                      ....
 17651 ms     | 0x2e09 privk:0x7f862281b820::7f862281b820  e5 e5 e5 e5                                      ....
 17651 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 17651 ms     | 0x2e09 privk:0x7f8622803020::7f8622803020  70 64 7e 1c                                      pd~.
 17651 ms     | 0x2e09 privk:0x7f8622803020::7f8622803020  e5 e5 e5 e5                                      ....
 17652 ms  0x2e09 PK11_Encrypt()
 17652 ms  0x2e09 symkey:0x7f860ac59780
 17652 ms  0x2e09 PK11_Encrypt()
 17652 ms  0x2e09 symkey:0x7f860ac59780
           /* TID 0x2e65 */
 17673 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17674 ms  0x2e65 ret:0x0
 17674 ms  0x2e65 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17674 ms  0x2e65 ret:0x0
           /* TID 0x2e09 */
 17676 ms  SECKEY_ECParamsToKeySize()
 17676 ms  0x2e09 ret:0xff
 17676 ms  0x2e09 SECKEY_CreateECPrivateKey()
 17676 ms  0x2e09 cx:0x7f862a3e5908
 17677 ms     | 0x2e09 EC_ValidatePublicKey()
 17677 ms     | 0x2e09 ret:0x0
 17677 ms  0x2e09 ret:0x7f8625e11820::7f8625e11820  b0 da 4d 1d                                      ..M.
 17678 ms  0x2e09 PK11_PubDeriveWithKDF()
 17678 ms  0x2e09 seckey:0x7f8625e11820
 17678 ms     | 0x2e09 EC_ValidatePublicKey()
 17678 ms     | 0x2e09 ret:0x0
 17679 ms  0x2e09 ret:0x7f861d47bb80
 17679 ms  0x2e09 PK11_DeriveWithFlags()
 17679 ms  0x2e09 basekey:0x7f861d47bb80
 17679 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17679 ms  0x2e09 ret:0x7f861c7ca100
 17679 ms  0x2e09 PK11_Derive()
 17679 ms  0x2e09 basekey:0x7f861c7ca100
 17679 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17679 ms  0x2e09 ret:0x7f860ac59700
 17679 ms  0x2e09 SECKEY_DestroyPrivateKey()
 17679 ms  0x2e09 privk:0x7f8625e11820::7f8625e11820  b0 da 4d 1d                                      ..M.
 17679 ms  0x2e09 privk:0x7f8625e11820::7f8625e11820  e5 e5 e5 e5                                      ....
 17679 ms  0x2e09 PK11_Encrypt()
 17679 ms  0x2e09 symkey:0x7f861dcb4800
 17694 ms  0x2e09 SSL_AuthCertificateComplete()
 17694 ms  0x2e09 fd:0x7f8621d43fd0
 17694 ms  0x2e09 err:0x0
 17695 ms  0x2e09 PK11_Encrypt()
 17695 ms  0x2e09 symkey:0x7f861dcb4800
 17695 ms  0x2e09 PK11_Encrypt()
 17695 ms  0x2e09 symkey:0x7f861dcb4800
 17706 ms  0x2e09 SECKEY_DestroyPrivateKey()
 17706 ms  0x2e09 privk:0x7f862296c820::7f862296c820  60 df e0 1c                                      `...
 17706 ms  0x2e09 privk:0x7f862296c820::7f862296c820  e5 e5 e5 e5                                      ....
 17706 ms  0x2e09 SECKEY_DestroyPrivateKey()
 17706 ms  0x2e09 privk:0x7f8622969020::7f8622969020  e0 dc e0 1c                                      ....
 17706 ms  0x2e09 privk:0x7f8622969020::7f8622969020  e5 e5 e5 e5                                      ....
 17706 ms  0x2e09 PK11_Encrypt()
 17706 ms  0x2e09 symkey:0x7f861dcb4800
 17708 ms  0x2e09 SSL_ImportFD()
 17708 ms  0x2e09 ret:0x7f86220ac970
 17708 ms  0x2e09 SSL_AuthCertificateHook()
 17708 ms  0x2e09 fd:0x7f86220ac970
 17708 ms  0x2e09 ret:0x0
 17708 ms  0x2e09 PR_Connect()
 17708 ms  0x2e09 fd:0x7f86220ac970
 17709 ms  0x2e09 SSL_ImportFD()
 17709 ms  0x2e09 ret:0x7f86220ac820
 17709 ms  0x2e09 SSL_AuthCertificateHook()
 17709 ms  0x2e09 fd:0x7f86220ac820
 17709 ms  0x2e09 ret:0x0
 17711 ms  0x2e09 PR_Connect()
 17711 ms  0x2e09 fd:0x7f86220ac820
 17749 ms  0x2e09 SECKEY_CreateECPrivateKey()
 17749 ms  0x2e09 cx:0x7f862a3e5f88
 17751 ms     | 0x2e09 EC_ValidatePublicKey()
 17751 ms     | 0x2e09 ret:0x0
 17751 ms  0x2e09 ret:0x7f8622969820::7f8622969820  70 de e0 1c                                      p...
 17751 ms  0x2e09 SECKEY_CreateECPrivateKey()
 17751 ms  0x2e09 cx:0x7f862a3e5f88
 17752 ms     | 0x2e09 EC_ValidatePublicKey()
 17755 ms     | 0x2e09 ret:0x0
 17755 ms  0x2e09 ret:0x7f86252bc020::7f86252bc020  d0 d8 4d 1d                                      ..M.
 17765 ms  0x2e09 PK11_DeriveWithFlags()
 17765 ms  0x2e09 basekey:0x7f861d9d0800
 17765 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17766 ms  0x2e09 ret:0x7f861d47bb80
 17766 ms  0x2e09 PK11_DeriveWithFlags()
 17766 ms  0x2e09 basekey:0x7f861d9d0800
 17766 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17766 ms  0x2e09 ret:0x7f861d47bb80
 17766 ms  0x2e09 PK11_Encrypt()
 17766 ms  0x2e09 symkey:0x7f860ac59780
 17768 ms  0x2e09 SECKEY_CreateECPrivateKey()
 17768 ms  0x2e09 cx:0x7f862a3e5de8
 17769 ms     | 0x2e09 EC_ValidatePublicKey()
 17769 ms     | 0x2e09 ret:0x0
 17769 ms  0x2e09 ret:0x7f8625e11820::7f8625e11820  10 da 4d 1d                                      ..M.
 17769 ms  0x2e09 SECKEY_CreateECPrivateKey()
 17769 ms  0x2e09 cx:0x7f862a3e5de8
 17770 ms     | 0x2e09 EC_ValidatePublicKey()
 17773 ms     | 0x2e09 ret:0x0
 17773 ms  0x2e09 ret:0x7f8625e15020::7f8625e15020  30 dd 4d 1d                                      0.M.
           /* TID 0x2e11 */
 17777 ms  0x2e11 PR_Close()
 17777 ms  0x2e11 fd:0x7f8621d43c40
           /* TID 0x2e09 */
 17786 ms  0x2e09 PK11_Encrypt()
 17786 ms  0x2e09 symkey:0x7f861dcb4800
 17788 ms  0x2e09 PK11_Encrypt()
 17788 ms  0x2e09 symkey:0x7f860ac59780
 17809 ms  0x2e09 PK11_Derive()
 17809 ms  0x2e09 basekey:0x7f861d47bb80
 17809 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17809 ms  0x2e09 ret:0x7f861d9d0900
 17809 ms  0x2e09 PK11_PubDeriveWithKDF()
 17809 ms  0x2e09 seckey:0x7f8622969820
 17809 ms     | 0x2e09 EC_ValidatePublicKey()
 17809 ms     | 0x2e09 ret:0x0
 17810 ms  0x2e09 ret:0x7f861d47bb80
 17810 ms  SECKEY_ECParamsToKeySize()
 17810 ms  0x2e09 ret:0xff
 17810 ms  0x2e09 PK11_DeriveWithFlags()
 17810 ms  0x2e09 basekey:0x7f861d9d0900
 17810 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17811 ms  0x2e09 ret:0x7f861d9a0f00
 17811 ms  0x2e09 PK11_Derive()
 17811 ms  0x2e09 basekey:0x7f861d47bb80
 17811 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17811 ms  0x2e09 ret:0x7f861d9cf400
 17811 ms  0x2e09 PK11_DeriveWithFlags()
 17811 ms  0x2e09 basekey:0x7f861d9cf400
 17811 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17811 ms  0x2e09 ret:0x7f861d9d0900
 17811 ms  0x2e09 PK11_DeriveWithFlags()
 17811 ms  0x2e09 basekey:0x7f861d9cf400
 17811 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17811 ms  0x2e09 ret:0x7f861d47bb80
 17811 ms  0x2e09 PK11_DeriveWithFlags()
 17811 ms  0x2e09 basekey:0x7f861d9cf400
 17811 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17811 ms  0x2e09 ret:0x7f861d9a0f00
 17811 ms  0x2e09 PK11_Derive()
 17811 ms  0x2e09 basekey:0x7f861dcc1400
 17811 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17811 ms  0x2e09 ret:0x7f861dcc1480
 17811 ms  0x2e09 PK11_DeriveWithFlags()
 17811 ms  0x2e09 basekey:0x7f861d47bb80
 17811 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17811 ms  0x2e09 ret:0x7f861d9cf400
 17811 ms  0x2e09 PK11_DeriveWithFlags()
 17811 ms  0x2e09 basekey:0x7f861d47bb80
 17811 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17811 ms  0x2e09 ret:0x7f861d9a0f00
 17814 ms  SECKEY_ECParamsToKeySize()
 17814 ms  0x2e09 ret:0x100
 17814 ms  SECKEY_ECParamsToBasePointOrderLen()
 17814 ms  0x2e09 ret:0x100
 17815 ms  SECKEY_ECParamsToBasePointOrderLen()
 17815 ms  0x2e09 ret:0x100
 17815 ms  0x2e09 EC_ValidatePublicKey()
 17821 ms  0x2e09 ret:0x0
 17826 ms  0x2e09 PK11_DeriveWithFlags()
 17826 ms  0x2e09 basekey:0x7f861d47bb80
 17826 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17826 ms  0x2e09 ret:0x7f861d9a0f00
 17835 ms  SECKEY_ECParamsToKeySize()
 17835 ms  0x2e09 ret:0x100
 17835 ms  0x2e09 SECKEY_CreateECPrivateKey()
 17835 ms  0x2e09 cx:0x7f862a3e5de8
 17836 ms     | 0x2e09 EC_ValidatePublicKey()
 17838 ms     | 0x2e09 ret:0x0
 17838 ms  0x2e09 ret:0x7f86263d3820::7f86263d3820  90 8c 66 1d                                      ..f.
 17838 ms  0x2e09 PK11_PubDeriveWithKDF()
 17838 ms  0x2e09 seckey:0x7f86263d3820
 17838 ms     | 0x2e09 EC_ValidatePublicKey()
 17840 ms     | 0x2e09 ret:0x0
 17842 ms  0x2e09 ret:0x7f861d9a0f00
 17842 ms  0x2e09 PK11_DeriveWithFlags()
 17842 ms  0x2e09 basekey:0x7f861d9a0f00
 17842 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17842 ms  0x2e09 ret:0x7f861dcc1400
 17842 ms  0x2e09 PK11_Derive()
 17842 ms  0x2e09 basekey:0x7f861dcc1400
 17842 ms     | 0x2e09 PK11_DeriveWithTemplate()
 17842 ms  0x2e09 ret:0x7f861dcc1980
 17842 ms  0x2e09 SECKEY_DestroyPrivateKey()
 17842 ms  0x2e09 privk:0x7f86263d3820::7f86263d3820  90 8c 66 1d                                      ..f.
 17842 ms  0x2e09 privk:0x7f86263d3820::7f86263d3820  e5 e5 e5 e5                                      ....
 17842 ms  0x2e09 PK11_Encrypt()
 17842 ms  0x2e09 symkey:0x7f861dcc1b80
 17843 ms  0x2e09 SSL_AuthCertificateComplete()
 17843 ms  0x2e09 fd:0x7f86220ac970
 17843 ms  0x2e09 err:0x0
 17843 ms  0x2e09 PK11_Encrypt()
 17843 ms  0x2e09 symkey:0x7f861dcc1b80
 17843 ms  0x2e09 PK11_Encrypt()
 17843 ms  0x2e09 symkey:0x7f861dcc1b80
           /* TID 0x2e11 */
 17853 ms  0x2e11 PR_Close()
 17853 ms  0x2e11 fd:0x7f8621d43c40
           /* TID 0x2e09 */
 17901 ms  0x2e09 SECKEY_DestroyPrivateKey()
 17901 ms  0x2e09 privk:0x7f8625e15020::7f8625e15020  30 dd 4d 1d                                      0.M.
 17901 ms  0x2e09 privk:0x7f8625e15020::7f8625e15020  e5 e5 e5 e5                                      ....
 17901 ms  0x2e09 SECKEY_DestroyPrivateKey()
 17901 ms  0x2e09 privk:0x7f8625e11820::7f8625e11820  10 da 4d 1d                                      ..M.
 17901 ms  0x2e09 privk:0x7f8625e11820::7f8625e11820  e5 e5 e5 e5                                      ....
 17901 ms  0x2e09 PK11_Encrypt()
 17901 ms  0x2e09 symkey:0x7f861dcc1b80
           /* TID 0x2e11 */
 17964 ms  0x2e11 PR_Close()
 17964 ms  0x2e11 fd:0x7f86220f5400
 17975 ms  0x2e11 PR_Close()
 17975 ms  0x2e11 fd:0x7f861dcd0310
           /* TID 0x2e9f */
 17975 ms  0x2e9f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17975 ms  0x2e9f ret:0x0
           /* TID 0x2e09 */
 17976 ms  0x2e09 SSL_AuthCertificateComplete()
 17976 ms  0x2e09 fd:0x7f86220ac820
 17976 ms  0x2e09 err:0x0
 17976 ms     | 0x2e09 PK11_DeriveWithFlags()
 17976 ms     | 0x2e09 basekey:0x7f861dcc1480
 17976 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17976 ms     | 0x2e09 ret:0x7f861d9a0f00
 17976 ms     | 0x2e09 PK11_DeriveWithFlags()
 17976 ms     | 0x2e09 basekey:0x7f861dcc1480
 17976 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17976 ms     | 0x2e09 ret:0x7f861dcc2100
 17976 ms     | 0x2e09 PK11_DeriveWithFlags()
 17976 ms     | 0x2e09 basekey:0x7f861dcc1480
 17976 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17976 ms     | 0x2e09 ret:0x7f861dcc2300
 17976 ms     | 0x2e09 PK11_DeriveWithFlags()
 17976 ms     | 0x2e09 basekey:0x7f861d9d0900
 17976 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17976 ms     | 0x2e09 ret:0x7f861dcc2400
 17976 ms     | 0x2e09 PK11_DeriveWithFlags()
 17976 ms     | 0x2e09 basekey:0x7f861d9d0900
 17976 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17977 ms     | 0x2e09 ret:0x7f861dcc2480
 17977 ms     | 0x2e09 PK11_DeriveWithFlags()
 17977 ms     | 0x2e09 basekey:0x7f861dcc2100
 17977 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17977 ms     | 0x2e09 ret:0x7f861dcc2480
 17977 ms     | 0x2e09 PK11_DeriveWithFlags()
 17977 ms     | 0x2e09 basekey:0x7f861dcc2100
 17977 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17977 ms     | 0x2e09 ret:0x7f861dcc2500
 17977 ms     | 0x2e09 PK11_DeriveWithFlags()
 17977 ms     | 0x2e09 basekey:0x7f861d9d0900
 17977 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17977 ms     | 0x2e09 ret:0x7f861d9cf400
 17977 ms     | 0x2e09 PK11_Encrypt()
 17977 ms     | 0x2e09 symkey:0x7f861dcc2400
 17977 ms     | 0x2e09 PK11_DeriveWithFlags()
 17977 ms     | 0x2e09 basekey:0x7f861d9a0f00
 17977 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17978 ms     | 0x2e09 ret:0x7f861d9cf400
 17978 ms     | 0x2e09 PK11_DeriveWithFlags()
 17978 ms     | 0x2e09 basekey:0x7f861d9a0f00
 17978 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17978 ms     | 0x2e09 ret:0x7f861dcc2500
 17978 ms     | 0x2e09 PK11_DeriveWithFlags()
 17978 ms     | 0x2e09 basekey:0x7f861dcc1480
 17978 ms     |    | 0x2e09 PK11_DeriveWithTemplate()
 17978 ms     | 0x2e09 ret:0x7f861dcc2400
 17978 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 17978 ms     | 0x2e09 privk:0x7f86252bc020::7f86252bc020  d0 d8 4d 1d                                      ..M.
 17978 ms     | 0x2e09 privk:0x7f86252bc020::7f86252bc020  e5 e5 e5 e5                                      ....
 17979 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 17979 ms     | 0x2e09 privk:0x7f8622969820::7f8622969820  70 de e0 1c                                      p...
 17979 ms     | 0x2e09 privk:0x7f8622969820::7f8622969820  e5 e5 e5 e5                                      ....
 17980 ms  0x2e09 PK11_Encrypt()
 17980 ms  0x2e09 symkey:0x7f861d9cf400
 17981 ms  0x2e09 PK11_Encrypt()
 17981 ms  0x2e09 symkey:0x7f861d9cf400
 18003 ms  0x2e09 PR_Close()
 18003 ms  0x2e09 fd:0x7f860ac5f580
 18004 ms     | 0x2e09 PK11_Encrypt()
 18004 ms     | 0x2e09 symkey:0x7f861c1fab80
 18020 ms  0x2e09 PK11_DeriveWithFlags()
 18020 ms  0x2e09 basekey:0x7f861dcc2400
 18020 ms     | 0x2e09 PK11_DeriveWithTemplate()
 18021 ms  0x2e09 ret:0x7f860af22500
 18021 ms  0x2e09 PK11_DeriveWithFlags()
 18021 ms  0x2e09 basekey:0x7f861dcc2400
 18021 ms     | 0x2e09 PK11_DeriveWithTemplate()
 18021 ms  0x2e09 ret:0x7f860af22500
 18021 ms  0x2e09 PK11_Encrypt()
 18021 ms  0x2e09 symkey:0x7f861d9cf400
 18085 ms  0x2e09 PK11_Encrypt()
 18085 ms  0x2e09 symkey:0x7f861d9cf400
           /* TID 0x2e11 */
 18089 ms  0x2e11 PR_Close()
 18089 ms  0x2e11 fd:0x7f860ac5f580
           /* TID 0x2e09 */
 18098 ms  0x2e09 PK11_Encrypt()
 18098 ms  0x2e09 symkey:0x7f861d49ba80
 18100 ms  0x2e09 PK11_Encrypt()
 18100 ms  0x2e09 symkey:0x7f860ac59780
 18163 ms  0x2e09 PK11_Encrypt()
 18163 ms  0x2e09 symkey:0x7f861d49ba80
 18164 ms  0x2e09 PK11_Encrypt()
 18164 ms  0x2e09 symkey:0x7f860ac59780
 18179 ms  0x2e09 PK11_Encrypt()
 18179 ms  0x2e09 symkey:0x7f861c350a00
 18205 ms  0x2e09 PK11_Encrypt()
 18205 ms  0x2e09 symkey:0x7f861dcc1b80
 18210 ms  0x2e09 PR_Close()
 18210 ms  0x2e09 fd:0x7f861ce7bee0
           /* TID 0x2dfe */
 18215 ms  0x2dfe EC_ValidatePublicKey()
 18216 ms  0x2dfe ret:0x0
 18216 ms  0x2dfe EC_ValidatePublicKey()
 18218 ms  0x2dfe ret:0x0
 18218 ms  0x2dfe EC_ValidatePublicKey()
 18219 ms  0x2dfe ret:0x0
 18219 ms  0x2dfe EC_ValidatePublicKey()
 18221 ms  0x2dfe ret:0x0
 18221 ms  0x2dfe EC_ValidatePublicKey()
 18222 ms  0x2dfe ret:0x0
 18222 ms  0x2dfe EC_ValidatePublicKey()
 18237 ms  0x2dfe ret:0x0
 18237 ms  0x2dfe EC_ValidatePublicKey()
 18238 ms  0x2dfe ret:0x0
 18238 ms  0x2dfe EC_ValidatePublicKey()
 18240 ms  0x2dfe ret:0x0
 18240 ms  0x2dfe EC_ValidatePublicKey()
 18241 ms  0x2dfe ret:0x0
 18241 ms  0x2dfe EC_ValidatePublicKey()
 18243 ms  0x2dfe ret:0x0
           /* TID 0x2e09 */
 18243 ms  0x2e09 PK11_Encrypt()
 18243 ms  0x2e09 symkey:0x7f861c0fbe00
 18244 ms  0x2e09 PK11_Encrypt()
 18244 ms  0x2e09 symkey:0x7f861dcb4800
 18244 ms  0x2e09 PK11_Encrypt()
 18244 ms  0x2e09 symkey:0x7f860b1f3900
 18244 ms  0x2e09 PK11_Encrypt()
 18244 ms  0x2e09 symkey:0x7f861c3d3000
 18244 ms  0x2e09 PK11_Encrypt()
 18244 ms  0x2e09 symkey:0x7f860adab980
 18244 ms  0x2e09 PK11_Encrypt()
 18244 ms  0x2e09 symkey:0x7f861c395b00
 18244 ms  0x2e09 PK11_Encrypt()
 18244 ms  0x2e09 symkey:0x7f860ac59780
 18244 ms  0x2e09 PK11_Encrypt()
 18244 ms  0x2e09 symkey:0x7f861d9cf400
 18245 ms  0x2e09 PK11_Encrypt()
 18245 ms  0x2e09 symkey:0x7f861c7ca500
 18245 ms  0x2e09 PK11_Encrypt()
 18245 ms  0x2e09 symkey:0x7f861d49ba80
 18245 ms  0x2e09 PK11_Encrypt()
 18245 ms  0x2e09 symkey:0x7f861c080d00
 18245 ms  0x2e09 PK11_Encrypt()
 18245 ms  0x2e09 symkey:0x7f861d47bc00
 18245 ms  0x2e09 PK11_Encrypt()
 18245 ms  0x2e09 symkey:0x7f861d47bf00
 18245 ms  0x2e09 PK11_Encrypt()
 18245 ms  0x2e09 symkey:0x7f861c513200
 18245 ms  0x2e09 PK11_Encrypt()
 18245 ms  0x2e09 symkey:0x7f861c389700
 18245 ms  0x2e09 PK11_Encrypt()
 18245 ms  0x2e09 symkey:0x7f861c395480
 18245 ms  0x2e09 PK11_Encrypt()
 18245 ms  0x2e09 symkey:0x7f860ad78e80
 18245 ms  0x2e09 PK11_Encrypt()
 18245 ms  0x2e09 symkey:0x7f860af48400
 18245 ms  0x2e09 PK11_Encrypt()
 18245 ms  0x2e09 symkey:0x7f860afeb380
 18246 ms  0x2e09 PK11_Encrypt()
 18246 ms  0x2e09 symkey:0x7f861d443f00
 18246 ms  0x2e09 PK11_Encrypt()
 18246 ms  0x2e09 symkey:0x7f860ac59980
 18246 ms  0x2e09 PK11_Encrypt()
 18246 ms  0x2e09 symkey:0x7f861c0fa580
 18246 ms  0x2e09 PR_Close()
 18246 ms  0x2e09 fd:0x7f860aadba30
 18246 ms  0x2e09 PR_Close()
 18246 ms  0x2e09 fd:0x7f8620d94f10
 18246 ms  0x2e09 PR_Close()
 18246 ms  0x2e09 fd:0x7f861d9f1490
 18246 ms     | 0x2e09 PK11_Encrypt()
 18246 ms     | 0x2e09 symkey:0x7f861d686700
 18246 ms  0x2e09 PR_Close()
 18246 ms  0x2e09 fd:0x7f861d9f1760
 18246 ms     | 0x2e09 PK11_Encrypt()
 18246 ms     | 0x2e09 symkey:0x7f861d685280
 18246 ms  0x2e09 PR_Close()
 18246 ms  0x2e09 fd:0x7f860ace10a0
 18246 ms     | 0x2e09 PK11_Encrypt()
 18246 ms     | 0x2e09 symkey:0x7f861c394f00
 18247 ms  0x2e09 PR_Close()
 18247 ms  0x2e09 fd:0x7f861d9f1190
           /* TID 0x2e58 */
 18249 ms  0x2e58 PR_Close()
 18249 ms  0x2e58 fd:0x7f860ac5f6a0
           /* TID 0x2e09 */
 18249 ms  0x2e09 PR_Close()
 18249 ms  0x2e09 fd:0x7f861d9f1c70
 18249 ms     | 0x2e09 PK11_Encrypt()
 18249 ms     | 0x2e09 symkey:0x7f861d4a0780
 18250 ms  0x2e09 PR_Close()
 18250 ms  0x2e09 fd:0x7f860af32700
 18250 ms  0x2e09 PR_Close()
 18250 ms  0x2e09 fd:0x7f861bfde370
 18250 ms  0x2e09 PR_Close()
 18250 ms  0x2e09 fd:0x7f861c3e19d0
 18250 ms  0x2e09 PR_Close()
 18250 ms  0x2e09 fd:0x7f860aadb640
 18250 ms     | 0x2e09 PK11_Encrypt()
 18250 ms     | 0x2e09 symkey:0x7f860b247100
 18250 ms  0x2e09 PR_Close()
 18250 ms  0x2e09 fd:0x7f860aadb490
 18250 ms     | 0x2e09 PK11_Encrypt()
 18250 ms     | 0x2e09 symkey:0x7f860b246400
           /* TID 0x2e58 */
 18250 ms  0x2e58 PR_Close()
 18250 ms  0x2e58 fd:0x7f860aadb370
           /* TID 0x2e09 */
 18253 ms  0x2e09 PR_Close()
 18253 ms  0x2e09 fd:0x7f860ad6cdf0
 18253 ms     | 0x2e09 PK11_Encrypt()
 18253 ms     | 0x2e09 symkey:0x7f860ac87600
 18253 ms  0x2e09 PR_Close()
 18253 ms  0x2e09 fd:0x7f861c3e1ee0
 18253 ms  0x2e09 PR_Close()
 18253 ms  0x2e09 fd:0x7f860ad6c580
 18253 ms     | 0x2e09 PK11_Encrypt()
 18253 ms     | 0x2e09 symkey:0x7f860aa9f780
 18253 ms  0x2e09 PR_Close()
 18253 ms  0x2e09 fd:0x7f860ad6cbe0
 18253 ms  0x2e09 PR_Close()
 18253 ms  0x2e09 fd:0x7f860ace1c10
 18253 ms  0x2e09 PR_Close()
 18253 ms  0x2e09 fd:0x7f860ace1850
 18253 ms  0x2e09 PR_Close()
 18253 ms  0x2e09 fd:0x7f860ace1c70
 18254 ms  0x2e09 PR_Close()
 18254 ms  0x2e09 fd:0x7f860ace1760
 18254 ms  0x2e09 PR_Close()
 18254 ms  0x2e09 fd:0x7f860ad6c760
 18254 ms     | 0x2e09 PK11_Encrypt()
 18254 ms     | 0x2e09 symkey:0x7f860aa9eb80
 18254 ms  0x2e09 PR_Close()
 18254 ms  0x2e09 fd:0x7f860ac5f7f0
 18254 ms     | 0x2e09 PK11_Encrypt()
 18254 ms     | 0x2e09 symkey:0x7f860aa9fa80
           /* TID 0x2dfe */
 18255 ms  0x2dfe PR_Close()
 18255 ms  0x2dfe fd:0x7f861f3c1310
 18255 ms  0x2dfe PR_Close()
 18255 ms  0x2dfe fd:0x7f860aadb580
           /* TID 0x2e09 */
 18256 ms  0x2e09 PR_Close()
 18256 ms  0x2e09 fd:0x7f860ac5feb0
 18256 ms     | 0x2e09 PK11_Encrypt()
 18256 ms     | 0x2e09 symkey:0x7f860aa9f580
 18256 ms  0x2e09 PR_Close()
 18256 ms  0x2e09 fd:0x7f860ac5ffa0
 18256 ms     | 0x2e09 PK11_Encrypt()
 18256 ms     | 0x2e09 symkey:0x7f860aa9f080
 18256 ms  0x2e09 PR_Close()
 18256 ms  0x2e09 fd:0x7f860ad6c460
 18256 ms     | 0x2e09 PK11_Encrypt()
 18256 ms     | 0x2e09 symkey:0x7f860ac5a080
 18256 ms  0x2e09 PR_Close()
 18256 ms  0x2e09 fd:0x7f860ad6c520
 18257 ms     | 0x2e09 PK11_Encrypt()
 18257 ms     | 0x2e09 symkey:0x7f860aa9fd80
 18257 ms  0x2e09 PR_Close()
 18257 ms  0x2e09 fd:0x7f860ac5fca0
 18257 ms  0x2e09 PR_Close()
 18257 ms  0x2e09 fd:0x7f861c3e1a90
 18257 ms     | 0x2e09 PK11_Encrypt()
 18257 ms     | 0x2e09 symkey:0x7f860ac5ac80
 18257 ms  0x2e09 PR_Close()
 18257 ms  0x2e09 fd:0x7f860ac5f0d0
 18257 ms     | 0x2e09 PK11_Encrypt()
 18257 ms     | 0x2e09 symkey:0x7f860ac5a980
 18257 ms  0x2e09 PR_Close()
 18257 ms  0x2e09 fd:0x7f860ac5f220
 18257 ms     | 0x2e09 PK11_Encrypt()
 18257 ms     | 0x2e09 symkey:0x7f860ac5a680
 18257 ms  0x2e09 PR_Close()
 18257 ms  0x2e09 fd:0x7f860ac5f370
 18257 ms     | 0x2e09 PK11_Encrypt()
 18257 ms     | 0x2e09 symkey:0x7f860ac5af80
 18258 ms  0x2e09 PR_Close()
 18258 ms  0x2e09 fd:0x7f861c3e1d00
 18258 ms     | 0x2e09 PK11_Encrypt()
 18258 ms     | 0x2e09 symkey:0x7f860af48900
 18258 ms  0x2e09 PR_Close()
 18258 ms  0x2e09 fd:0x7f860af28ac0
 18258 ms     | 0x2e09 PK11_Encrypt()
 18258 ms     | 0x2e09 symkey:0x7f860adaa600
 18258 ms  0x2e09 PR_Close()
 18258 ms  0x2e09 fd:0x7f860af32fd0
 18258 ms     | 0x2e09 PK11_Encrypt()
 18258 ms     | 0x2e09 symkey:0x7f860adaa300
           /* TID 0x2dfe */
 18259 ms  0x2dfe PR_Close()
 18259 ms  0x2dfe fd:0x7f860aadb5e0
 18259 ms  0x2dfe PR_Close()
 18259 ms  0x2dfe fd:0x7f860aadb580
 18260 ms  0x2dfe PR_Close()
 18260 ms  0x2dfe fd:0x7f860aadb5e0
 18260 ms  0x2dfe PR_Close()
 18260 ms  0x2dfe fd:0x7f860aadb580
           /* TID 0x2e09 */
 18262 ms  0x2e09 PR_Close()
 18262 ms  0x2e09 fd:0x7f860b198eb0
 18262 ms     | 0x2e09 PK11_Encrypt()
 18262 ms     | 0x2e09 symkey:0x7f860adab480
 18262 ms  0x2e09 PR_Close()
 18262 ms  0x2e09 fd:0x7f860af28b80
 18262 ms     | 0x2e09 PK11_Encrypt()
 18262 ms     | 0x2e09 symkey:0x7f860adab180
 18262 ms  0x2e09 PR_Close()
 18262 ms  0x2e09 fd:0x7f860b0fd460
 18262 ms     | 0x2e09 PK11_Encrypt()
 18262 ms     | 0x2e09 symkey:0x7f860adaa900
 18262 ms  0x2e09 PR_Close()
 18262 ms  0x2e09 fd:0x7f860af28f40
 18262 ms     | 0x2e09 PK11_Encrypt()
 18262 ms     | 0x2e09 symkey:0x7f860adaae80
 18264 ms  0x2e09 PR_Close()
 18264 ms  0x2e09 fd:0x7f860af28e20
 18264 ms     | 0x2e09 PK11_Encrypt()
 18264 ms     | 0x2e09 symkey:0x7f860af23600
 18264 ms  0x2e09 PR_Close()
 18264 ms  0x2e09 fd:0x7f860b198a30
 18264 ms     | 0x2e09 PK11_Encrypt()
 18264 ms     | 0x2e09 symkey:0x7f860b199e80
 18264 ms  0x2e09 PR_Close()
 18264 ms  0x2e09 fd:0x7f860b22f2e0
 18264 ms     | 0x2e09 PK11_Encrypt()
 18264 ms     | 0x2e09 symkey:0x7f860b205d80
 18265 ms  0x2e09 PR_Close()
 18265 ms  0x2e09 fd:0x7f860b22f070
 18265 ms  0x2e09 PR_Close()
 18265 ms  0x2e09 fd:0x7f861c1f54f0
 18265 ms     | 0x2e09 PK11_Encrypt()
 18265 ms     | 0x2e09 symkey:0x7f860b204f00
 18265 ms  0x2e09 PR_Close()
 18265 ms  0x2e09 fd:0x7f861ce7bf70
 18265 ms  0x2e09 PR_Close()
 18265 ms  0x2e09 fd:0x7f861c7e8370
           /* TID 0x2e25 */
 18268 ms  0x2e25 PR_Close()
 18268 ms  0x2e25 fd:0x7f860aadb640
           /* TID 0x2e09 */
 18273 ms     | 0x2e09 PK11_Encrypt()
 18273 ms     | 0x2e09 symkey:0x7f861e57f400
 18273 ms  0x2e09 PR_Close()
 18273 ms  0x2e09 fd:0x7f861d671a90
 18273 ms     | 0x2e09 PK11_Encrypt()
 18273 ms     | 0x2e09 symkey:0x7f861c081880
 18274 ms  0x2e09 PK11_Encrypt()
 18274 ms  0x2e09 symkey:0x7f861dcc1b80
 18274 ms  0x2e09 PR_Close()
 18274 ms  0x2e09 fd:0x7f86220ac970
 18274 ms     | 0x2e09 PK11_Encrypt()
 18274 ms     | 0x2e09 symkey:0x7f861dcc1b80
 18275 ms  0x2e09 PR_Close()
 18275 ms  0x2e09 fd:0x7f860b22fe80
 18275 ms     | 0x2e09 PK11_Encrypt()
 18275 ms     | 0x2e09 symkey:0x7f861c350a00
 18275 ms  0x2e09 PR_Close()
 18275 ms  0x2e09 fd:0x7f860af32a60
 18275 ms     | 0x2e09 PK11_Encrypt()
 18275 ms     | 0x2e09 symkey:0x7f860af48400
 18275 ms  0x2e09 PR_Close()
 18275 ms  0x2e09 fd:0x7f860b2c7f10
 18275 ms     | 0x2e09 PK11_Encrypt()
 18275 ms     | 0x2e09 symkey:0x7f860b1f3900
 18275 ms  0x2e09 PR_Close()
 18275 ms  0x2e09 fd:0x7f861bfde0d0
 18275 ms     | 0x2e09 PK11_Encrypt()
 18275 ms     | 0x2e09 symkey:0x7f861c0fbe00
 18276 ms  0x2e09 PR_Close()
 18276 ms  0x2e09 fd:0x7f861c1ed910
 18276 ms     | 0x2e09 PK11_Encrypt()
 18276 ms     | 0x2e09 symkey:0x7f861c395b00
 18276 ms  0x2e09 PR_Close()
 18276 ms  0x2e09 fd:0x7f861bfde3a0
 18276 ms     | 0x2e09 PK11_Encrypt()
 18276 ms     | 0x2e09 symkey:0x7f860ad78e80
 18276 ms  0x2e09 PR_Close()
 18276 ms  0x2e09 fd:0x7f860b0fd310
 18276 ms     | 0x2e09 PK11_Encrypt()
 18276 ms     | 0x2e09 symkey:0x7f860ac59980
 18276 ms  0x2e09 PR_Close()
 18276 ms  0x2e09 fd:0x7f8620d7c550
 18276 ms     | 0x2e09 PK11_Encrypt()
 18276 ms     | 0x2e09 symkey:0x7f861c7ca500
 18282 ms  0x2e09 PR_Close()
 18282 ms  0x2e09 fd:0x7f861e0fdaf0
 18282 ms     | 0x2e09 PK11_Encrypt()
 18282 ms     | 0x2e09 symkey:0x7f861d49ba80
 18283 ms  0x2e09 PR_Close()
 18283 ms  0x2e09 fd:0x7f861d671af0
 18283 ms     | 0x2e09 PK11_Encrypt()
 18283 ms     | 0x2e09 symkey:0x7f861d47bc00
 18283 ms  0x2e09 PR_Close()
 18283 ms  0x2e09 fd:0x7f861d671ca0
 18283 ms     | 0x2e09 PK11_Encrypt()
 18283 ms     | 0x2e09 symkey:0x7f861c3d3000
 18283 ms  0x2e09 PR_Close()
 18283 ms  0x2e09 fd:0x7f860aca0b80
 18283 ms     | 0x2e09 PK11_Encrypt()
 18283 ms     | 0x2e09 symkey:0x7f860adab980
 18283 ms  0x2e09 PR_Close()
 18283 ms  0x2e09 fd:0x7f86220ac820
 18283 ms     | 0x2e09 PK11_Encrypt()
 18283 ms     | 0x2e09 symkey:0x7f861d9cf400
 18284 ms  0x2e09 PR_Close()
 18284 ms  0x2e09 fd:0x7f8621d43fd0
 18284 ms     | 0x2e09 PK11_Encrypt()
 18284 ms     | 0x2e09 symkey:0x7f861dcb4800
 18284 ms  0x2e09 PR_Close()
 18284 ms  0x2e09 fd:0x7f861d671e50
 18284 ms     | 0x2e09 PK11_Encrypt()
 18284 ms     | 0x2e09 symkey:0x7f861c513200
 18284 ms  0x2e09 PR_Close()
 18284 ms  0x2e09 fd:0x7f8621d43640
 18284 ms     | 0x2e09 PK11_Encrypt()
 18284 ms     | 0x2e09 symkey:0x7f860ac59780
 18284 ms  0x2e09 PR_Close()
 18284 ms  0x2e09 fd:0x7f860af323a0
 18284 ms     | 0x2e09 PK11_Encrypt()
 18284 ms     | 0x2e09 symkey:0x7f861c395480
 18285 ms  0x2e09 PR_Close()
 18285 ms  0x2e09 fd:0x7f861c1edc70
 18285 ms     | 0x2e09 PK11_Encrypt()
 18285 ms     | 0x2e09 symkey:0x7f861c389700
 18294 ms  0x2e09 PR_Close()
 18294 ms  0x2e09 fd:0x7f861c7b19a0
 18294 ms     | 0x2e09 PK11_Encrypt()
 18294 ms     | 0x2e09 symkey:0x7f861d47bf00
 18294 ms  0x2e09 PR_Close()
 18294 ms  0x2e09 fd:0x7f860b22fbb0
 18295 ms     | 0x2e09 PK11_Encrypt()
 18295 ms     | 0x2e09 symkey:0x7f860afeb380
 18295 ms  0x2e09 PR_Close()
 18295 ms  0x2e09 fd:0x7f861d921ac0
 18295 ms     | 0x2e09 PK11_Encrypt()
 18295 ms     | 0x2e09 symkey:0x7f861d443f00
 18295 ms  0x2e09 PR_Close()
 18295 ms  0x2e09 fd:0x7f861bfded30
 18295 ms     | 0x2e09 PK11_Encrypt()
 18295 ms     | 0x2e09 symkey:0x7f861c080d00
 18295 ms  0x2e09 PR_Close()
 18295 ms  0x2e09 fd:0x7f860b0fdc70
 18295 ms     | 0x2e09 PK11_Encrypt()
 18295 ms     | 0x2e09 symkey:0x7f861c0fa580
           /* TID 0x2dfe */
 18299 ms  0x2dfe PR_Close()
 18299 ms  0x2dfe fd:0x7f860aadb5e0
 18299 ms  0x2dfe PR_Close()
 18299 ms  0x2dfe fd:0x7f860ac5ff70
 18301 ms  0x2dfe PR_Close()
 18301 ms  0x2dfe fd:0x7f860aadb5e0
 18301 ms  0x2dfe PR_Close()
 18301 ms  0x2dfe fd:0x7f860ac5ff70
 18301 ms  0x2dfe PR_Close()
 18301 ms  0x2dfe fd:0x7f86271c89a0
 18301 ms  0x2dfe PR_Close()
 18301 ms  0x2dfe fd:0x7f86271c88b0
 18301 ms  0x2dfe PR_Close()
 18301 ms  0x2dfe fd:0x7f86271c8a60
 18304 ms  0x2dfe PR_Close()
 18304 ms  0x2dfe fd:0x7f860ac5ffa0
 18305 ms  0x2dfe PR_Close()
 18305 ms  0x2dfe fd:0x7f860ac5ffa0
 18307 ms  0x2dfe PR_Close()
 18307 ms  0x2dfe fd:0x7f860aadb5e0
 18307 ms  0x2dfe PR_Close()
 18307 ms  0x2dfe fd:0x7f860aca01f0
 18308 ms  0x2dfe PR_Close()
 18308 ms  0x2dfe fd:0x7f860aadb5e0
 18308 ms  0x2dfe PR_Close()
 18308 ms  0x2dfe fd:0x7f860aca01f0
 18311 ms  0x2dfe PR_Close()
 18311 ms  0x2dfe fd:0x7f860aca02e0
 18312 ms  0x2dfe PR_Close()
 18312 ms  0x2dfe fd:0x7f860aca02e0
 18314 ms  0x2dfe PR_Close()
 18314 ms  0x2dfe fd:0x7f860aadb5e0
 18314 ms  0x2dfe PR_Close()
 18314 ms  0x2dfe fd:0x7f860aca0550
 18315 ms  0x2dfe PR_Close()
 18315 ms  0x2dfe fd:0x7f860aadb5e0
 18315 ms  0x2dfe PR_Close()
 18315 ms  0x2dfe fd:0x7f860aca0550
 18317 ms  0x2dfe PR_Close()
 18317 ms  0x2dfe fd:0x7f860aca0580
 18319 ms  0x2dfe PR_Close()
 18319 ms  0x2dfe fd:0x7f860aca0580
           /* TID 0x2e09 */
 18321 ms  0x2e09 SSL_ImportFD()
 18321 ms  0x2e09 ret:0x7f860ace1280
 18321 ms  0x2e09 SSL_AuthCertificateHook()
 18321 ms  0x2e09 fd:0x7f860ace1280
 18322 ms  0x2e09 ret:0x0
 18322 ms  0x2e09 PR_Connect()
 18322 ms  0x2e09 fd:0x7f860ace1280
 18322 ms  0x2e09 SSL_ImportFD()
 18322 ms  0x2e09 ret:0x7f860ace12e0
 18322 ms  0x2e09 SSL_AuthCertificateHook()
 18322 ms  0x2e09 fd:0x7f860ace12e0
 18322 ms  0x2e09 ret:0x0
 18322 ms  0x2e09 PR_Connect()
 18322 ms  0x2e09 fd:0x7f860ace12e0
 18322 ms  0x2e09 SSL_ImportFD()
 18322 ms  0x2e09 ret:0x7f860aca0820
 18322 ms  0x2e09 SSL_AuthCertificateHook()
 18322 ms  0x2e09 fd:0x7f860aca0820
 18322 ms  0x2e09 ret:0x0
 18322 ms  0x2e09 PR_Connect()
 18322 ms  0x2e09 fd:0x7f860aca0820
           /* TID 0x2dfe */
 18331 ms  0x2dfe PR_Close()
 18331 ms  0x2dfe fd:0x7f860ace1e50
 18332 ms  0x2dfe PR_Close()
 18332 ms  0x2dfe fd:0x7f860ace1e50
 18334 ms  0x2dfe PR_Close()
 18334 ms  0x2dfe fd:0x7f860ace1e80
           /* TID 0x2e25 */
 18341 ms  0x2e25 PR_Close()
 18341 ms  0x2e25 fd:0x7f860aadb490
           /* TID 0x2dfe */
 18342 ms  0x2dfe PR_Close()
 18342 ms  0x2dfe fd:0x7f860aadb5e0
           /* TID 0x2e25 */
 18342 ms  0x2e25 PR_Close()
 18342 ms  0x2e25 fd:0x7f860aadb490
           /* TID 0x2dfe */
 18342 ms  0x2dfe PR_Close()
 18342 ms  0x2dfe fd:0x7f860ad6c910
           /* TID 0x2e25 */
 18354 ms  0x2e25 PR_Close()
 18354 ms  0x2e25 fd:0x7f860aadb640
           /* TID 0x2e11 */
 18358 ms  0x2e11 PR_Close()
 18358 ms  0x2e11 fd:0x7f860af28b50
 18360 ms  0x2e11 PR_Close()
 18360 ms  0x2e11 fd:0x7f860af28ca0
           /* TID 0x2e09 */
 18363 ms  0x2e09 SECKEY_CreateECPrivateKey()
 18363 ms  0x2e09 cx:0x7f860acd3a68
 18363 ms     | 0x2e09 EC_ValidatePublicKey()
 18363 ms     | 0x2e09 ret:0x0
 18363 ms  0x2e09 ret:0x7f860a820020::7f860a820020  80 4d d3 0a                                      .M..
 18364 ms  0x2e09 SECKEY_CreateECPrivateKey()
 18364 ms  0x2e09 cx:0x7f860acd3a68
 18364 ms     | 0x2e09 EC_ValidatePublicKey()
 18366 ms     | 0x2e09 ret:0x0
 18366 ms  0x2e09 ret:0x7f860a823020::7f860a823020  d0 63 7e 1c                                      .c~.
 18366 ms  0x2e09 SECKEY_CreateECPrivateKey()
 18366 ms  0x2e09 cx:0x7f860acd38c8
 18366 ms     | 0x2e09 EC_ValidatePublicKey()
 18366 ms     | 0x2e09 ret:0x0
 18366 ms  0x2e09 ret:0x7f860aa41820::7f860aa41820  70 d9 4d 1d                                      p.M.
 18366 ms  0x2e09 SECKEY_CreateECPrivateKey()
 18366 ms  0x2e09 cx:0x7f860acd38c8
 18367 ms     | 0x2e09 EC_ValidatePublicKey()
 18368 ms     | 0x2e09 ret:0x0
 18368 ms  0x2e09 ret:0x7f860aa47020::7f860aa47020  a0 c1 66 1d                                      ..f.
 18375 ms  0x2e09 SECKEY_CreateECPrivateKey()
 18375 ms  0x2e09 cx:0x7f860acd3c08
 18376 ms     | 0x2e09 EC_ValidatePublicKey()
 18376 ms     | 0x2e09 ret:0x0
 18376 ms  0x2e09 ret:0x7f860aa4a820::7f860aa4a820  70 e9 66 1d                                      p.f.
 18376 ms  0x2e09 SECKEY_CreateECPrivateKey()
 18376 ms  0x2e09 cx:0x7f860acd3c08
 18377 ms     | 0x2e09 EC_ValidatePublicKey()
 18378 ms     | 0x2e09 ret:0x0
 18378 ms  0x2e09 ret:0x7f860aa51020::7f860aa51020  f0 71 99 1d                                      .q..
           /* TID 0x2e25 */
 18394 ms  0x2e25 PR_Close()
 18394 ms  0x2e25 fd:0x7f860aadb640
           /* TID 0x2e09 */
 18401 ms  0x2e09 PR_Close()
 18401 ms  0x2e09 fd:0x7f860aca0820
 18401 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 18401 ms     | 0x2e09 privk:0x7f860aa51020::7f860aa51020  f0 71 99 1d                                      .q..
 18401 ms     | 0x2e09 privk:0x7f860aa51020::7f860aa51020  e5 e5 e5 e5                                      ....
 18401 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 18401 ms     | 0x2e09 privk:0x7f860aa4a820::7f860aa4a820  70 e9 66 1d                                      p.f.
 18401 ms     | 0x2e09 privk:0x7f860aa4a820::7f860aa4a820  e5 e5 e5 e5                                      ....
 18402 ms  0x2e09 PR_Close()
 18402 ms  0x2e09 fd:0x7f860ace12e0
 18402 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 18402 ms     | 0x2e09 privk:0x7f860a823020::7f860a823020  d0 63 7e 1c                                      .c~.
 18402 ms     | 0x2e09 privk:0x7f860a823020::7f860a823020  e5 e5 e5 e5                                      ....
 18402 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 18402 ms     | 0x2e09 privk:0x7f860a820020::7f860a820020  80 4d d3 0a                                      .M..
 18402 ms     | 0x2e09 privk:0x7f860a820020::7f860a820020  e5 e5 e5 e5                                      ....
 18402 ms  0x2e09 PR_Close()
 18402 ms  0x2e09 fd:0x7f860ace1280
 18402 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 18402 ms     | 0x2e09 privk:0x7f860aa47020::7f860aa47020  a0 c1 66 1d                                      ..f.
 18403 ms     | 0x2e09 privk:0x7f860aa47020::7f860aa47020  e5 e5 e5 e5                                      ....
 18403 ms     | 0x2e09 SECKEY_DestroyPrivateKey()
 18403 ms     | 0x2e09 privk:0x7f860aa41820::7f860aa41820  70 d9 4d 1d                                      p.M.
 18403 ms     | 0x2e09 privk:0x7f860aa41820::7f860aa41820  e5 e5 e5 e5                                      ....
           /* TID 0x2e03 */
 18411 ms  0x2e03 PR_Close()
 18411 ms  0x2e03 fd:0x7f862b3a1c70
           /* TID 0x2e09 */
 18412 ms  0x2e09 SSL_ImportFD()
 18412 ms  0x2e09 ret:0x7f860aca0580
 18412 ms  0x2e09 SSL_AuthCertificateHook()
 18412 ms  0x2e09 fd:0x7f860aca0580
 18412 ms  0x2e09 ret:0x0
 18412 ms  0x2e09 PR_Connect()
 18412 ms  0x2e09 fd:0x7f860aca0580
 18417 ms  0x2e09 PR_Close()
 18417 ms  0x2e09 fd:0x7f860aca0580
           /* TID 0x2e25 */
 18420 ms  0x2e25 PR_Close()
 18420 ms  0x2e25 fd:0x7f860ac5f790
           /* TID 0x2dfe */
 18439 ms  0x2dfe PR_Close()
 18439 ms  0x2dfe fd:0x7f860aadb490
 18439 ms  0x2dfe PR_Close()
 18439 ms  0x2dfe fd:0x7f860ac5f790
           /* TID 0x2e03 */
 18439 ms  0x2e03 PR_Close()
 18439 ms  0x2e03 fd:0x7f862234b8b0
           /* TID 0x2e09 */
 18439 ms  0x2e09 PR_Close()
 18439 ms  0x2e09 fd:0x7f8620d942b0
           /* TID 0x2e58 */
 18440 ms  0x2e58 PR_Close()
 18440 ms  0x2e58 fd:0x7f860ace1430
 18440 ms  0x2e58 PR_Close()
 18440 ms  0x2e58 fd:0x7f860aadb040
 18441 ms  0x2e58 PR_Close()
 18441 ms  0x2e58 fd:0x7f860aadb040
 18441 ms  0x2e58 PR_Close()
 18441 ms  0x2e58 fd:0x7f860aadb040
           /* TID 0x2e25 */
 18441 ms  0x2e25 PR_Close()
 18441 ms  0x2e25 fd:0x7f860aca0730
           /* TID 0x2e11 */
 18444 ms  0x2e11 PR_Close()
 18444 ms  0x2e11 fd:0x7f860ace1af0
 18444 ms  0x2e11 PR_Close()
 18444 ms  0x2e11 fd:0x7f860ace1b20
           /* TID 0x2e03 */
 18450 ms  0x2e03 PR_Close()
 18450 ms  0x2e03 fd:0x7f861c7e8190
           /* TID 0x2dfe */
 18452 ms  0x2dfe PR_Close()
 18452 ms  0x2dfe fd:0x7f860aadb490
 18452 ms  0x2dfe PR_Close()
 18452 ms  0x2dfe fd:0x7f860ace1790
           /* TID 0x2e25 */
 18454 ms  0x2e25 PR_Close()
 18454 ms  0x2e25 fd:0x7f860ace17c0
 18456 ms  0x2e25 PR_Close()
 18456 ms  0x2e25 fd:0x7f860ac5faf0
           /* TID 0x2e11 */
 18548 ms  0x2e11 PR_Close()
 18548 ms  0x2e11 fd:0x7f860ad6c7c0
           /* TID 0x2e25 */
 18557 ms  0x2e25 PR_Close()
 18557 ms  0x2e25 fd:0x7f860ac5f4c0
 18559 ms  0x2e25 PR_Close()
 18559 ms  0x2e25 fd:0x7f860ac5f4c0
 18568 ms  0x2e25 PR_Close()
 18568 ms  0x2e25 fd:0x7f860aadb820
 18571 ms  0x2e25 PR_Close()
 18571 ms  0x2e25 fd:0x7f860aadba30
 18585 ms  0x2e25 PR_Close()
 18585 ms  0x2e25 fd:0x7f860ac5f250
 18590 ms  0x2e25 PR_Close()
 18590 ms  0x2e25 fd:0x7f860ace1730
 18597 ms  0x2e25 PR_Close()
 18597 ms  0x2e25 fd:0x7f860ace1d30
 18607 ms  0x2e25 PR_Close()
 18607 ms  0x2e25 fd:0x7f860ad6c4c0
 18609 ms  0x2e25 PR_Close()
 18609 ms  0x2e25 fd:0x7f860ad6c4c0
           /* TID 0x2dfe */
 18772 ms  0x2dfe PR_Close()
 18772 ms  0x2dfe fd:0x7f860ac5ff70
 18773 ms  0x2dfe PR_Close()
 18773 ms  0x2dfe fd:0x7f860ac5ff70
 18778 ms  0x2dfe PR_Close()
 18778 ms  0x2dfe fd:0x7f86444da130
 18779 ms  0x2dfe PR_Close()
 18779 ms  0x2dfe fd:0x7f86444da190
Process terminated
