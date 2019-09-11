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
           /* TID 0xd30 */
    61 ms  0xd30 PR_Close()
    61 ms  0xd30 fd:0x7ff1bc05f670
           /* TID 0xd28 */
   293 ms  0xd28 SSL_ImportFD()
   293 ms  0xd28 ret:0x7ff1ad4fa250
   294 ms  0xd28 SSL_AuthCertificateHook()
   294 ms  0xd28 fd:0x7ff1ad4fa250
   294 ms  0xd28 ret:0x0
   294 ms  0xd28 PR_Connect()
   294 ms  0xd28 fd:0x7ff1ad4fa250
   501 ms  0xd28 SECKEY_CreateECPrivateKey()
   501 ms  0xd28 cx:0x7ff1acfd5948
   503 ms     | 0xd28 EC_ValidatePublicKey()
   503 ms     | 0xd28 ret:0x0
   503 ms  0xd28 ret:0x7ff1acff2820::7ff1acff2820  f0 2b 1b ad                                      .+..
   503 ms  0xd28 SECKEY_CreateECPrivateKey()
   503 ms  0xd28 cx:0x7ff1acfd5948
   505 ms     | 0xd28 EC_ValidatePublicKey()
   510 ms     | 0xd28 ret:0x0
   510 ms  0xd28 ret:0x7ff1acff4820::7ff1acff4820  b0 2a 1b ad                                      .*..
           /* TID 0xd8d */
   586 ms  0xd8d PR_Close()
   586 ms  0xd8d fd:0x7ff1ad4fa190
   590 ms  0xd8d PR_Close()
   590 ms  0xd8d fd:0x7ff1ad4fa190
           /* TID 0xd28 */
   725 ms  SECKEY_ECParamsToKeySize()
   725 ms  0xd28 ret:0x100
   725 ms  0xd28 SECKEY_CreateECPrivateKey()
   725 ms  0xd28 cx:0x7ff1acfd5948
   727 ms     | 0xd28 EC_ValidatePublicKey()
   732 ms     | 0xd28 ret:0x0
   732 ms  0xd28 ret:0x7ff1acffd820::7ff1acffd820  30 48 1f ad                                      0H..
   732 ms  0xd28 PK11_PubDeriveWithKDF()
   732 ms  0xd28 seckey:0x7ff1acffd820
   732 ms     | 0xd28 EC_ValidatePublicKey()
   737 ms     | 0xd28 ret:0x0
   741 ms  0xd28 ret:0x7ff1aecc0380
   741 ms  0xd28 PK11_DeriveWithFlags()
   741 ms  0xd28 basekey:0x7ff1aecc0380
   741 ms     | 0xd28 PK11_DeriveWithTemplate()
   741 ms  0xd28 ret:0x7ff1ad1e5780
   741 ms  0xd28 PK11_Derive()
   741 ms  0xd28 basekey:0x7ff1ad1e5780
   741 ms     | 0xd28 PK11_DeriveWithTemplate()
   742 ms  0xd28 ret:0x7ff1ad1e5880
   742 ms  0xd28 SECKEY_DestroyPrivateKey()
   742 ms  0xd28 privk:0x7ff1acffd820::7ff1acffd820  30 48 1f ad                                      0H..
   742 ms  0xd28 privk:0x7ff1acffd820::7ff1acffd820  e5 e5 e5 e5                                      ....
   742 ms  0xd28 PK11_Encrypt()
   742 ms  0xd28 symkey:0x7ff1ad1e5a00
   743 ms  0xd28 PR_Connect()
   743 ms  0xd28 fd:0x7ff1ad4facd0
           /* TID 0xd8d */
   780 ms  0xd8d PR_Close()
   780 ms  0xd8d fd:0x7ff1ad4fac40
           /* TID 0xd30 */
   797 ms  0xd30 PR_Close()
   797 ms  0xd30 fd:0x7ff1ad4fac40
           /* TID 0xd85 */
   797 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   797 ms  0xd85 ret:0x0
           /* TID 0xd28 */
   798 ms  0xd28 SSL_AuthCertificateComplete()
   798 ms  0xd28 fd:0x7ff1ad4fa250
   798 ms  0xd28 err:0x0
   798 ms  0xd28 PK11_Encrypt()
   798 ms  0xd28 symkey:0x7ff1ad1e5a00
   949 ms  0xd28 SECKEY_DestroyPrivateKey()
   949 ms  0xd28 privk:0x7ff1acff4820::7ff1acff4820  b0 2a 1b ad                                      .*..
   950 ms  0xd28 privk:0x7ff1acff4820::7ff1acff4820  e5 e5 e5 e5                                      ....
   950 ms  0xd28 SECKEY_DestroyPrivateKey()
   950 ms  0xd28 privk:0x7ff1acff2820::7ff1acff2820  f0 2b 1b ad                                      .+..
   950 ms  0xd28 privk:0x7ff1acff2820::7ff1acff2820  e5 e5 e5 e5                                      ....
  1225 ms  0xd28 SSL_ImportFD()
  1225 ms  0xd28 ret:0x7ff1ad4fae80
  1225 ms  0xd28 SSL_AuthCertificateHook()
  1225 ms  0xd28 fd:0x7ff1ad4fae80
  1225 ms  0xd28 ret:0x0
  1225 ms  0xd28 PR_Connect()
  1225 ms  0xd28 fd:0x7ff1ad4fae80
  1252 ms  0xd28 SECKEY_CreateECPrivateKey()
  1252 ms  0xd28 cx:0x7ff1ad1f03e8
  1253 ms     | 0xd28 EC_ValidatePublicKey()
  1253 ms     | 0xd28 ret:0x0
  1253 ms  0xd28 ret:0x7ff1acff3820::7ff1acff3820  30 2d 1b ad                                      0-..
  1254 ms  0xd28 SECKEY_CreateECPrivateKey()
  1254 ms  0xd28 cx:0x7ff1ad1f03e8
  1256 ms     | 0xd28 EC_ValidatePublicKey()
  1260 ms     | 0xd28 ret:0x0
  1261 ms  0xd28 ret:0x7ff1acff9820::7ff1acff9820  f0 2b 1b ad                                      .+..
           /* TID 0xd85 */
  1315 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1316 ms  0xd85 ret:0x0
           /* TID 0xd28 */
  1316 ms  SECKEY_ECParamsToKeySize()
  1316 ms  0xd28 ret:0x100
  1316 ms  0xd28 SECKEY_CreateECPrivateKey()
  1316 ms  0xd28 cx:0x7ff1ad1f03e8
  1318 ms     | 0xd28 EC_ValidatePublicKey()
  1321 ms     | 0xd28 ret:0x0
  1321 ms  0xd28 ret:0x7ff1acffd020::7ff1acffd020  d0 48 1f ad                                      .H..
  1322 ms  0xd28 PK11_PubDeriveWithKDF()
  1322 ms  0xd28 seckey:0x7ff1acffd020
  1322 ms     | 0xd28 EC_ValidatePublicKey()
  1325 ms     | 0xd28 ret:0x0
  1329 ms  0xd28 ret:0x7ff1aecc0380
  1329 ms  0xd28 PK11_DeriveWithFlags()
  1329 ms  0xd28 basekey:0x7ff1aecc0380
  1329 ms     | 0xd28 PK11_DeriveWithTemplate()
  1329 ms  0xd28 ret:0x7ff1ad1e6580
  1329 ms  0xd28 PK11_Derive()
  1329 ms  0xd28 basekey:0x7ff1ad1e6580
  1329 ms     | 0xd28 PK11_DeriveWithTemplate()
  1329 ms  0xd28 ret:0x7ff1ad1e6600
  1329 ms  0xd28 SECKEY_DestroyPrivateKey()
  1329 ms  0xd28 privk:0x7ff1acffd020::7ff1acffd020  d0 48 1f ad                                      .H..
  1330 ms  0xd28 privk:0x7ff1acffd020::7ff1acffd020  e5 e5 e5 e5                                      ....
  1330 ms  0xd28 PK11_Encrypt()
  1330 ms  0xd28 symkey:0x7ff1ad1e6780
  1330 ms  0xd28 SSL_AuthCertificateComplete()
  1330 ms  0xd28 fd:0x7ff1ad4fae80
  1330 ms  0xd28 err:0x0
  1331 ms  0xd28 PK11_Encrypt()
  1331 ms  0xd28 symkey:0x7ff1ad1e6780
  1382 ms  0xd28 SECKEY_DestroyPrivateKey()
  1382 ms  0xd28 privk:0x7ff1acff9820::7ff1acff9820  f0 2b 1b ad                                      .+..
  1382 ms  0xd28 privk:0x7ff1acff9820::7ff1acff9820  e5 e5 e5 e5                                      ....
  1383 ms  0xd28 SECKEY_DestroyPrivateKey()
  1383 ms  0xd28 privk:0x7ff1acff3820::7ff1acff3820  30 2d 1b ad                                      0-..
  1383 ms  0xd28 privk:0x7ff1acff3820::7ff1acff3820  e5 e5 e5 e5                                      ....
  1386 ms  0xd28 PK11_Encrypt()
  1386 ms  0xd28 symkey:0x7ff1ad1e6780
  1416 ms  0xd28 PK11_Encrypt()
  1416 ms  0xd28 symkey:0x7ff1ad1e6780
  1447 ms  0xd28 PK11_Encrypt()
  1447 ms  0xd28 symkey:0x7ff1ad1e6780
  1477 ms  0xd28 PK11_Encrypt()
  1477 ms  0xd28 symkey:0x7ff1ad1e6780
  1590 ms  0xd28 PK11_Encrypt()
  1590 ms  0xd28 symkey:0x7ff1ad1e6780
  1622 ms  0xd28 PK11_Encrypt()
  1622 ms  0xd28 symkey:0x7ff1ad1e6780
  1654 ms  0xd28 PK11_Encrypt()
  1654 ms  0xd28 symkey:0x7ff1ad1e6780
           /* TID 0xd7e */
  1683 ms  0xd7e PR_Close()
  1683 ms  0xd7e fd:0x7ff19c2270d0
  1683 ms  0xd7e PR_Close()
  1683 ms  0xd7e fd:0x7ff19c227130
  1683 ms  0xd7e PR_Close()
  1683 ms  0xd7e fd:0x7ff19c2270d0
  1683 ms  0xd7e PR_Close()
  1683 ms  0xd7e fd:0x7ff19c227130
  1683 ms  0xd7e PR_Close()
  1683 ms  0xd7e fd:0x7ff19c2270d0
  1683 ms  0xd7e PR_Close()
  1683 ms  0xd7e fd:0x7ff19c227130
  1684 ms  0xd7e PR_Close()
  1684 ms  0xd7e fd:0x7ff19c2270d0
  1684 ms  0xd7e PR_Close()
  1684 ms  0xd7e fd:0x7ff19c227130
  1684 ms  0xd7e PR_Close()
  1684 ms  0xd7e fd:0x7ff19c2270d0
  1684 ms  0xd7e PR_Close()
  1684 ms  0xd7e fd:0x7ff19c227130
  1684 ms  0xd7e PR_Close()
  1684 ms  0xd7e fd:0x7ff19c2270d0
  1684 ms  0xd7e PR_Close()
  1684 ms  0xd7e fd:0x7ff19c227130
  1684 ms  0xd7e PR_Close()
  1684 ms  0xd7e fd:0x7ff19c2270d0
  1684 ms  0xd7e PR_Close()
  1684 ms  0xd7e fd:0x7ff19c227130
  1684 ms  0xd7e PR_Close()
  1684 ms  0xd7e fd:0x7ff19c2270d0
  1684 ms  0xd7e PR_Close()
  1684 ms  0xd7e fd:0x7ff19c227130
  1684 ms  0xd7e PR_Close()
  1684 ms  0xd7e fd:0x7ff19c2270d0
  1684 ms  0xd7e PR_Close()
  1684 ms  0xd7e fd:0x7ff19c227130
  1685 ms  0xd7e PR_Close()
  1685 ms  0xd7e fd:0x7ff19c2270d0
  1685 ms  0xd7e PR_Close()
  1685 ms  0xd7e fd:0x7ff19c227130
  1685 ms  0xd7e PR_Close()
  1685 ms  0xd7e fd:0x7ff19c2270d0
  1685 ms  0xd7e PR_Close()
  1685 ms  0xd7e fd:0x7ff19c227130
  1685 ms  0xd7e PR_Close()
  1685 ms  0xd7e fd:0x7ff19c2270d0
  1685 ms  0xd7e PR_Close()
  1685 ms  0xd7e fd:0x7ff19c227130
  1685 ms  0xd7e PR_Close()
  1685 ms  0xd7e fd:0x7ff19c2270d0
  1685 ms  0xd7e PR_Close()
  1685 ms  0xd7e fd:0x7ff19c227130
  1685 ms  0xd7e PR_Close()
  1685 ms  0xd7e fd:0x7ff19c2270d0
  1685 ms  0xd7e PR_Close()
  1685 ms  0xd7e fd:0x7ff19c227130
  1689 ms  0xd7e PR_Close()
  1689 ms  0xd7e fd:0x7ff19c2270d0
  1689 ms  0xd7e PR_Close()
  1689 ms  0xd7e fd:0x7ff19c227070
  1692 ms  0xd7e PR_Close()
  1692 ms  0xd7e fd:0x7ff19c227070
  1693 ms  0xd7e PR_Close()
  1693 ms  0xd7e fd:0x7ff19c2270d0
  1696 ms  0xd7e PR_Close()
  1696 ms  0xd7e fd:0x7ff19c2270d0
  1696 ms  0xd7e PR_Close()
  1696 ms  0xd7e fd:0x7ff19c2270d0
  1699 ms  0xd7e PR_Close()
  1699 ms  0xd7e fd:0x7ff19c2270d0
  1699 ms  0xd7e PR_Close()
  1699 ms  0xd7e fd:0x7ff19c2270d0
  1747 ms  0xd7e PR_Close()
  1747 ms  0xd7e fd:0x7ff19c2270d0
  1748 ms  0xd7e PR_Close()
  1748 ms  0xd7e fd:0x7ff19c2270d0
  1755 ms  0xd7e PR_Close()
  1755 ms  0xd7e fd:0x7ff19c2270d0
  1756 ms  0xd7e PR_Close()
  1756 ms  0xd7e fd:0x7ff19c2270d0
  1762 ms  0xd7e PR_Close()
  1762 ms  0xd7e fd:0x7ff19c2270d0
  1762 ms  0xd7e PR_Close()
  1762 ms  0xd7e fd:0x7ff19c2270d0
  1764 ms  0xd7e PR_Close()
  1764 ms  0xd7e fd:0x7ff19c2270d0
  1765 ms  0xd7e PR_Close()
  1765 ms  0xd7e fd:0x7ff19c2270d0
           /* TID 0xd7c */
  1765 ms  0xd7c PR_Close()
  1765 ms  0xd7c fd:0x7ff19c2270d0
  1765 ms  0xd7c PR_Close()
  1765 ms  0xd7c fd:0x7ff19c2270d0
  1765 ms  0xd7c PR_Close()
  1765 ms  0xd7c fd:0x7ff19c2270d0
  1765 ms  0xd7c PR_Close()
  1765 ms  0xd7c fd:0x7ff19c2270d0
  1765 ms  0xd7c PR_Close()
  1765 ms  0xd7c fd:0x7ff19c2270d0
  1765 ms  0xd7c PR_Close()
  1765 ms  0xd7c fd:0x7ff19c2270d0
  1765 ms  0xd7c PR_Close()
  1765 ms  0xd7c fd:0x7ff19c2270d0
  1765 ms  0xd7c PR_Close()
  1765 ms  0xd7c fd:0x7ff19c2270d0
  1765 ms  0xd7c PR_Close()
  1765 ms  0xd7c fd:0x7ff19c2270d0
  1765 ms  0xd7c PR_Close()
  1765 ms  0xd7c fd:0x7ff19c2270d0
  1765 ms  0xd7c PR_Close()
  1765 ms  0xd7c fd:0x7ff19c2270d0
  1765 ms  0xd7c PR_Close()
  1765 ms  0xd7c fd:0x7ff19c2270d0
  1765 ms  0xd7c PR_Close()
  1765 ms  0xd7c fd:0x7ff19c2270d0
  1765 ms  0xd7c PR_Close()
  1765 ms  0xd7c fd:0x7ff19c2270d0
  1765 ms  0xd7c PR_Close()
  1765 ms  0xd7c fd:0x7ff19c2270d0
           /* TID 0xd8d */
  2267 ms  0xd8d PR_Close()
  2267 ms  0xd8d fd:0x7ff19c227460
  2273 ms  0xd8d PR_Close()
  2273 ms  0xd8d fd:0x7ff19c227460
  2828 ms  0xd8d PR_Close()
  2828 ms  0xd8d fd:0x7ff19c227460
           /* TID 0xd30 */
  4157 ms  0xd30 PR_Close()
  4157 ms  0xd30 fd:0x7ff19c227460
  4157 ms  0xd30 PR_Close()
  4157 ms  0xd30 fd:0x7ff19c2275b0
  4157 ms  0xd30 PR_Close()
  4157 ms  0xd30 fd:0x7ff19c227610
           /* TID 0xd28 */
  4450 ms  0xd28 SSL_ImportFD()
  4450 ms  0xd28 ret:0x7ff1b039d400
  4450 ms  0xd28 SSL_AuthCertificateHook()
  4450 ms  0xd28 fd:0x7ff1b039d400
  4450 ms  0xd28 ret:0x0
  4450 ms  0xd28 PR_Connect()
  4450 ms  0xd28 fd:0x7ff1b039d400
  4477 ms  0xd28 SECKEY_CreateECPrivateKey()
  4477 ms  0xd28 cx:0x7ff1ad1f0728
  4477 ms     | 0xd28 EC_ValidatePublicKey()
  4477 ms     | 0xd28 ret:0x0
  4477 ms  0xd28 ret:0x7ff19c19c020::7ff19c19c020  d0 93 1b 9c                                      ....
  4477 ms  0xd28 SECKEY_CreateECPrivateKey()
  4477 ms  0xd28 cx:0x7ff1ad1f0728
  4478 ms     | 0xd28 EC_ValidatePublicKey()
  4480 ms     | 0xd28 ret:0x0
  4480 ms  0xd28 ret:0x7ff19c19e020::7ff19c19e020  e0 97 1b 9c                                      ....
           /* TID 0xd85 */
  4508 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4509 ms  0xd85 ret:0x0
  4509 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4509 ms  0xd85 ret:0x0
           /* TID 0xd28 */
  4510 ms  SECKEY_ECParamsToKeySize()
  4510 ms  0xd28 ret:0xff
  4510 ms  0xd28 SECKEY_CreateECPrivateKey()
  4510 ms  0xd28 cx:0x7ff1ad1f0728
  4511 ms     | 0xd28 EC_ValidatePublicKey()
  4511 ms     | 0xd28 ret:0x0
  4511 ms  0xd28 ret:0x7ff19c1ad020::7ff19c1ad020  00 e6 46 b3                                      ..F.
  4511 ms  0xd28 PK11_PubDeriveWithKDF()
  4511 ms  0xd28 seckey:0x7ff19c1ad020
  4511 ms     | 0xd28 EC_ValidatePublicKey()
  4511 ms     | 0xd28 ret:0x0
  4512 ms  0xd28 ret:0x7ff1aecc0380
  4512 ms  0xd28 PK11_DeriveWithFlags()
  4512 ms  0xd28 basekey:0x7ff1aecc0380
  4512 ms     | 0xd28 PK11_DeriveWithTemplate()
  4512 ms  0xd28 ret:0x7ff19c1b7e80
  4512 ms  0xd28 PK11_Derive()
  4512 ms  0xd28 basekey:0x7ff19c1b7e80
  4512 ms     | 0xd28 PK11_DeriveWithTemplate()
  4512 ms  0xd28 ret:0x7ff19c1b7f00
  4512 ms  0xd28 SECKEY_DestroyPrivateKey()
  4512 ms  0xd28 privk:0x7ff19c1ad020::7ff19c1ad020  00 e6 46 b3                                      ..F.
  4512 ms  0xd28 privk:0x7ff19c1ad020::7ff19c1ad020  e5 e5 e5 e5                                      ....
  4512 ms  0xd28 PK11_Encrypt()
  4512 ms  0xd28 symkey:0x7ff19c1b8080
  4515 ms  0xd28 SSL_AuthCertificateComplete()
  4515 ms  0xd28 fd:0x7ff1b039d400
  4515 ms  0xd28 err:0x0
  4516 ms  0xd28 PK11_Encrypt()
  4516 ms  0xd28 symkey:0x7ff19c1b8080
  4516 ms  0xd28 PK11_Encrypt()
  4516 ms  0xd28 symkey:0x7ff19c1b8080
  4539 ms  0xd28 SECKEY_DestroyPrivateKey()
  4539 ms  0xd28 privk:0x7ff19c19e020::7ff19c19e020  e0 97 1b 9c                                      ....
  4539 ms  0xd28 privk:0x7ff19c19e020::7ff19c19e020  e5 e5 e5 e5                                      ....
  4540 ms  0xd28 SECKEY_DestroyPrivateKey()
  4540 ms  0xd28 privk:0x7ff19c19c020::7ff19c19c020  d0 93 1b 9c                                      ....
  4540 ms  0xd28 privk:0x7ff19c19c020::7ff19c19c020  e5 e5 e5 e5                                      ....
  4540 ms  0xd28 PK11_Encrypt()
  4540 ms  0xd28 symkey:0x7ff19c1b8080
           /* TID 0xd3f */
  4988 ms  0xd3f PR_Close()
  4988 ms  0xd3f fd:0x7ff1b039df40
           /* TID 0xd28 */
  5093 ms  0xd28 SSL_ImportFD()
  5093 ms  0xd28 ret:0x7ff19c17f5b0
  5093 ms  0xd28 SSL_AuthCertificateHook()
  5093 ms  0xd28 fd:0x7ff19c17f5b0
  5093 ms  0xd28 ret:0x0
  5093 ms  0xd28 PR_Connect()
  5093 ms  0xd28 fd:0x7ff19c17f5b0
  5119 ms  0xd28 SECKEY_CreateECPrivateKey()
  5119 ms  0xd28 cx:0x7ff1ad1f0f48
  5119 ms     | 0xd28 EC_ValidatePublicKey()
  5119 ms     | 0xd28 ret:0x0
  5119 ms  0xd28 ret:0x7ff19c24a820::7ff19c24a820  b0 9f 13 9c                                      ....
  5119 ms  0xd28 SECKEY_CreateECPrivateKey()
  5119 ms  0xd28 cx:0x7ff1ad1f0f48
  5120 ms     | 0xd28 EC_ValidatePublicKey()
  5121 ms     | 0xd28 ret:0x0
  5121 ms  0xd28 ret:0x7ff19c24c820::7ff19c24c820  10 c5 13 9c                                      ....
  5122 ms  0xd28 SSL_ImportFD()
  5122 ms  0xd28 ret:0x7ff19c17f8b0
  5122 ms  0xd28 SSL_AuthCertificateHook()
  5122 ms  0xd28 fd:0x7ff19c17f8b0
  5122 ms  0xd28 ret:0x0
  5122 ms  0xd28 PR_Connect()
  5122 ms  0xd28 fd:0x7ff19c17f8b0
  5122 ms  0xd28 SSL_ImportFD()
  5122 ms  0xd28 ret:0x7ff19c17f8e0
  5122 ms  0xd28 SSL_AuthCertificateHook()
  5122 ms  0xd28 fd:0x7ff19c17f8e0
  5122 ms  0xd28 ret:0x0
  5122 ms  0xd28 PR_Connect()
  5122 ms  0xd28 fd:0x7ff19c17f8e0
  5122 ms  0xd28 SSL_ImportFD()
  5123 ms  0xd28 ret:0x7ff19c17f850
  5123 ms  0xd28 SSL_AuthCertificateHook()
  5123 ms  0xd28 fd:0x7ff19c17f850
  5123 ms  0xd28 ret:0x0
  5123 ms  0xd28 PR_Connect()
  5123 ms  0xd28 fd:0x7ff19c17f850
  5148 ms  0xd28 PK11_Derive()
  5148 ms  0xd28 basekey:0x7ff1aecc0380
  5148 ms     | 0xd28 PK11_DeriveWithTemplate()
  5148 ms  0xd28 ret:0x7ff19c2b1500
  5148 ms  0xd28 PK11_PubDeriveWithKDF()
  5148 ms  0xd28 seckey:0x7ff19c24c820
  5148 ms     | 0xd28 EC_ValidatePublicKey()
  5150 ms     | 0xd28 ret:0x0
  5151 ms  0xd28 ret:0x7ff1aecc0380
  5151 ms  SECKEY_ECParamsToKeySize()
  5151 ms  0xd28 ret:0x100
  5151 ms  0xd28 PK11_DeriveWithFlags()
  5151 ms  0xd28 basekey:0x7ff19c2b1500
  5151 ms     | 0xd28 PK11_DeriveWithTemplate()
  5151 ms  0xd28 ret:0x7ff19c2b1580
  5151 ms  0xd28 PK11_Derive()
  5151 ms  0xd28 basekey:0x7ff1aecc0380
  5151 ms     | 0xd28 PK11_DeriveWithTemplate()
  5151 ms  0xd28 ret:0x7ff19c2b1600
  5151 ms  0xd28 PK11_DeriveWithFlags()
  5151 ms  0xd28 basekey:0x7ff19c2b1600
  5151 ms     | 0xd28 PK11_DeriveWithTemplate()
  5151 ms  0xd28 ret:0x7ff19c2b1500
  5151 ms  0xd28 PK11_DeriveWithFlags()
  5151 ms  0xd28 basekey:0x7ff19c2b1600
  5151 ms     | 0xd28 PK11_DeriveWithTemplate()
  5151 ms  0xd28 ret:0x7ff1aecc0380
  5151 ms  0xd28 PK11_DeriveWithFlags()
  5151 ms  0xd28 basekey:0x7ff19c2b1600
  5151 ms     | 0xd28 PK11_DeriveWithTemplate()
  5151 ms  0xd28 ret:0x7ff19c2b1580
  5151 ms  0xd28 PK11_Derive()
  5151 ms  0xd28 basekey:0x7ff19c2b1680
  5151 ms     | 0xd28 PK11_DeriveWithTemplate()
  5151 ms  0xd28 ret:0x7ff19c2b1700
  5151 ms  0xd28 PK11_DeriveWithFlags()
  5151 ms  0xd28 basekey:0x7ff1aecc0380
  5151 ms     | 0xd28 PK11_DeriveWithTemplate()
  5151 ms  0xd28 ret:0x7ff19c2b1600
  5151 ms  0xd28 PK11_DeriveWithFlags()
  5151 ms  0xd28 basekey:0x7ff1aecc0380
  5152 ms     | 0xd28 PK11_DeriveWithTemplate()
  5152 ms  0xd28 ret:0x7ff19c2b1580
           /* TID 0xd85 */
  5152 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5152 ms  0xd85 ret:0x0
           /* TID 0xd28 */
  5152 ms  0xd28 PK11_DeriveWithFlags()
  5152 ms  0xd28 basekey:0x7ff1aecc0380
  5152 ms     | 0xd28 PK11_DeriveWithTemplate()
  5153 ms  0xd28 ret:0x7ff19c2b1580
  5153 ms  0xd28 SSL_AuthCertificateComplete()
  5153 ms  0xd28 fd:0x7ff19c17f5b0
  5153 ms  0xd28 err:0x0
  5153 ms     | 0xd28 PK11_DeriveWithFlags()
  5153 ms     | 0xd28 basekey:0x7ff19c2b1700
  5153 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5153 ms     | 0xd28 ret:0x7ff19c2b1580
  5153 ms     | 0xd28 PK11_DeriveWithFlags()
  5153 ms     | 0xd28 basekey:0x7ff19c2b1700
  5153 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5153 ms     | 0xd28 ret:0x7ff19c2b1680
  5153 ms     | 0xd28 PK11_DeriveWithFlags()
  5153 ms     | 0xd28 basekey:0x7ff19c2b1700
  5153 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5153 ms     | 0xd28 ret:0x7ff19c2b1800
  5153 ms     | 0xd28 PK11_DeriveWithFlags()
  5153 ms     | 0xd28 basekey:0x7ff19c2b1500
  5153 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5153 ms     | 0xd28 ret:0x7ff19c2b1880
  5153 ms     | 0xd28 PK11_DeriveWithFlags()
  5153 ms     | 0xd28 basekey:0x7ff19c2b1500
  5153 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5153 ms     | 0xd28 ret:0x7ff19c2b1900
  5153 ms     | 0xd28 PK11_DeriveWithFlags()
  5153 ms     | 0xd28 basekey:0x7ff19c2b1680
  5153 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5153 ms     | 0xd28 ret:0x7ff19c2b1900
  5154 ms     | 0xd28 PK11_DeriveWithFlags()
  5154 ms     | 0xd28 basekey:0x7ff19c2b1680
  5154 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5154 ms     | 0xd28 ret:0x7ff19c2b1980
  5154 ms     | 0xd28 PK11_DeriveWithFlags()
  5154 ms     | 0xd28 basekey:0x7ff19c2b1500
  5154 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5154 ms     | 0xd28 ret:0x7ff19c2b1600
  5154 ms     | 0xd28 PK11_Encrypt()
  5154 ms     | 0xd28 symkey:0x7ff19c2b1880
  5154 ms     | 0xd28 PK11_DeriveWithFlags()
  5154 ms     | 0xd28 basekey:0x7ff19c2b1580
  5154 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5154 ms     | 0xd28 ret:0x7ff19c2b1600
  5154 ms     | 0xd28 PK11_DeriveWithFlags()
  5154 ms     | 0xd28 basekey:0x7ff19c2b1580
  5154 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5154 ms     | 0xd28 ret:0x7ff19c2b1980
  5154 ms     | 0xd28 PK11_DeriveWithFlags()
  5154 ms     | 0xd28 basekey:0x7ff19c2b1700
  5154 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5154 ms     | 0xd28 ret:0x7ff19c2b1880
  5154 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  5154 ms     | 0xd28 privk:0x7ff19c24c820::7ff19c24c820  10 c5 13 9c                                      ....
  5154 ms     | 0xd28 privk:0x7ff19c24c820::7ff19c24c820  e5 e5 e5 e5                                      ....
  5154 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  5154 ms     | 0xd28 privk:0x7ff19c24a820::7ff19c24a820  b0 9f 13 9c                                      ....
  5154 ms     | 0xd28 privk:0x7ff19c24a820::7ff19c24a820  e5 e5 e5 e5                                      ....
  5155 ms  0xd28 PK11_Encrypt()
  5155 ms  0xd28 symkey:0x7ff19c2b1600
  5155 ms  0xd28 PK11_Encrypt()
  5155 ms  0xd28 symkey:0x7ff19c2b1600
  5160 ms  0xd28 SECKEY_CreateECPrivateKey()
  5160 ms  0xd28 cx:0x7ff1ad1f1428
  5161 ms     | 0xd28 EC_ValidatePublicKey()
  5161 ms     | 0xd28 ret:0x0
  5161 ms  0xd28 ret:0x7ff19c24c020::7ff19c24c020  00 c1 13 9c                                      ....
  5161 ms  0xd28 SECKEY_CreateECPrivateKey()
  5161 ms  0xd28 cx:0x7ff1ad1f1428
  5163 ms     | 0xd28 EC_ValidatePublicKey()
  5167 ms     | 0xd28 ret:0x0
  5167 ms  0xd28 ret:0x7ff19c251820::7ff19c251820  90 c7 13 9c                                      ....
  5168 ms  0xd28 SECKEY_CreateECPrivateKey()
  5168 ms  0xd28 cx:0x7ff1ad1f10e8
  5169 ms     | 0xd28 EC_ValidatePublicKey()
  5169 ms     | 0xd28 ret:0x0
  5169 ms  0xd28 ret:0x7ff19c254020::7ff19c254020  70 c9 13 9c                                      p...
  5169 ms  0xd28 SECKEY_CreateECPrivateKey()
  5169 ms  0xd28 cx:0x7ff1ad1f10e8
  5171 ms     | 0xd28 EC_ValidatePublicKey()
  5174 ms     | 0xd28 ret:0x0
  5174 ms  0xd28 ret:0x7ff19c256020::7ff19c256020  50 cb 13 9c                                      P...
  5175 ms  0xd28 SECKEY_CreateECPrivateKey()
  5175 ms  0xd28 cx:0x7ff1ad1f15c8
  5176 ms     | 0xd28 EC_ValidatePublicKey()
  5176 ms     | 0xd28 ret:0x0
  5176 ms  0xd28 ret:0x7ff19c258820::7ff19c258820  e0 cc 13 9c                                      ....
  5176 ms  0xd28 SECKEY_CreateECPrivateKey()
  5176 ms  0xd28 cx:0x7ff1ad1f15c8
  5177 ms     | 0xd28 EC_ValidatePublicKey()
  5181 ms     | 0xd28 ret:0x0
  5181 ms  0xd28 ret:0x7ff19c25a020::7ff19c25a020  10 cf 13 9c                                      ....
  5181 ms  0xd28 PK11_DeriveWithFlags()
  5181 ms  0xd28 basekey:0x7ff19c2b1880
  5181 ms     | 0xd28 PK11_DeriveWithTemplate()
  5181 ms  0xd28 ret:0x7ff1aecc0380
  5181 ms  0xd28 PK11_DeriveWithFlags()
  5181 ms  0xd28 basekey:0x7ff19c2b1880
  5181 ms     | 0xd28 PK11_DeriveWithTemplate()
  5181 ms  0xd28 ret:0x7ff1aecc0380
  5181 ms  0xd28 PK11_Encrypt()
  5181 ms  0xd28 symkey:0x7ff19c2b1600
           /* TID 0xd85 */
  5205 ms  SECKEY_ECParamsToBasePointOrderLen()
  5205 ms  0xd85 ret:0x180
  5205 ms  SECKEY_ECParamsToBasePointOrderLen()
  5205 ms  0xd85 ret:0x180
  5205 ms  0xd85 EC_ValidatePublicKey()
  5208 ms  0xd85 ret:0x0
           /* TID 0xd28 */
  5209 ms  SECKEY_ECParamsToKeySize()
  5209 ms  0xd28 ret:0x100
  5209 ms  SECKEY_ECParamsToBasePointOrderLen()
  5209 ms  0xd28 ret:0x100
  5209 ms  SECKEY_ECParamsToBasePointOrderLen()
  5209 ms  0xd28 ret:0x100
  5209 ms  0xd28 EC_ValidatePublicKey()
  5211 ms  0xd28 ret:0x0
           /* TID 0xd85 */
  5215 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5215 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5215 ms     | 0xd85 ret:0x180
  5215 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5215 ms     | 0xd85 ret:0x180
  5215 ms     | 0xd85 EC_ValidatePublicKey()
  5217 ms     | 0xd85 ret:0x0
           /* TID 0xd28 */
  5220 ms  SECKEY_ECParamsToKeySize()
  5220 ms  0xd28 ret:0x100
  5220 ms  0xd28 SECKEY_CreateECPrivateKey()
  5220 ms  0xd28 cx:0x7ff1ad1f1428
  5221 ms     | 0xd28 EC_ValidatePublicKey()
  5223 ms     | 0xd28 ret:0x0
  5223 ms  0xd28 ret:0x7ff19bd1a820::7ff19bd1a820  60 45 d1 9b                                      `E..
  5223 ms  0xd28 PK11_PubDeriveWithKDF()
  5223 ms  0xd28 seckey:0x7ff19bd1a820
  5223 ms     | 0xd28 EC_ValidatePublicKey()
  5225 ms     | 0xd28 ret:0x0
  5226 ms  0xd28 ret:0x7ff1aecc0380
  5226 ms  0xd28 PK11_DeriveWithFlags()
  5226 ms  0xd28 basekey:0x7ff1aecc0380
  5226 ms     | 0xd28 PK11_DeriveWithTemplate()
  5226 ms  0xd28 ret:0x7ff19c2b1500
  5226 ms  0xd28 PK11_Derive()
  5226 ms  0xd28 basekey:0x7ff19c2b1500
  5226 ms     | 0xd28 PK11_DeriveWithTemplate()
  5226 ms  0xd28 ret:0x7ff19c2b1700
  5227 ms  0xd28 SECKEY_DestroyPrivateKey()
  5227 ms  0xd28 privk:0x7ff19bd1a820::7ff19bd1a820  60 45 d1 9b                                      `E..
  5227 ms  0xd28 privk:0x7ff19bd1a820::7ff19bd1a820  e5 e5 e5 e5                                      ....
  5227 ms  0xd28 PK11_Encrypt()
  5227 ms  0xd28 symkey:0x7ff19c2b1d00
           /* TID 0xd85 */
  5229 ms  0xd85 ret:0x0
           /* TID 0xd30 */
  5232 ms  0xd30 PR_Close()
  5232 ms  0xd30 fd:0x7ff19bf96f10
           /* TID 0xd28 */
  5233 ms  SECKEY_ECParamsToKeySize()
  5233 ms  0xd28 ret:0x100
  5233 ms  SECKEY_ECParamsToBasePointOrderLen()
  5233 ms  0xd28 ret:0x100
  5233 ms  SECKEY_ECParamsToBasePointOrderLen()
  5233 ms  0xd28 ret:0x100
  5233 ms  0xd28 EC_ValidatePublicKey()
  5235 ms  0xd28 ret:0x0
           /* TID 0xd85 */
  5237 ms  SECKEY_ECParamsToBasePointOrderLen()
  5237 ms  0xd85 ret:0x180
  5237 ms  SECKEY_ECParamsToBasePointOrderLen()
  5237 ms  0xd85 ret:0x180
  5237 ms  0xd85 EC_ValidatePublicKey()
  5238 ms  0xd85 ret:0x0
  5241 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5241 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5241 ms     | 0xd85 ret:0x180
  5241 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5241 ms     | 0xd85 ret:0x180
  5241 ms     | 0xd85 EC_ValidatePublicKey()
  5243 ms     | 0xd85 ret:0x0
  5246 ms  0xd85 ret:0x0
           /* TID 0xd28 */
  5249 ms  SECKEY_ECParamsToKeySize()
  5249 ms  0xd28 ret:0x100
  5249 ms  0xd28 SECKEY_CreateECPrivateKey()
  5249 ms  0xd28 cx:0x7ff1ad1f15c8
  5250 ms     | 0xd28 EC_ValidatePublicKey()
  5251 ms     | 0xd28 ret:0x0
  5251 ms  0xd28 ret:0x7ff19bd1c020::7ff19bd1c020  70 49 d1 9b                                      pI..
  5251 ms  0xd28 PK11_PubDeriveWithKDF()
  5251 ms  0xd28 seckey:0x7ff19bd1c020
  5251 ms     | 0xd28 EC_ValidatePublicKey()
  5253 ms     | 0xd28 ret:0x0
  5254 ms  0xd28 ret:0x7ff1aecc0380
  5254 ms  0xd28 PK11_DeriveWithFlags()
  5254 ms  0xd28 basekey:0x7ff1aecc0380
  5254 ms     | 0xd28 PK11_DeriveWithTemplate()
  5254 ms  0xd28 ret:0x7ff19c2b1980
  5254 ms  0xd28 PK11_Derive()
  5254 ms  0xd28 basekey:0x7ff19c2b1980
  5254 ms     | 0xd28 PK11_DeriveWithTemplate()
  5254 ms  0xd28 ret:0x7ff19bf9c480
  5254 ms  0xd28 SECKEY_DestroyPrivateKey()
  5254 ms  0xd28 privk:0x7ff19bd1c020::7ff19bd1c020  70 49 d1 9b                                      pI..
  5254 ms  0xd28 privk:0x7ff19bd1c020::7ff19bd1c020  e5 e5 e5 e5                                      ....
  5255 ms  0xd28 PK11_Encrypt()
  5255 ms  0xd28 symkey:0x7ff19c1b7700
  5255 ms  SECKEY_ECParamsToKeySize()
  5255 ms  0xd28 ret:0x100
  5255 ms  SECKEY_ECParamsToBasePointOrderLen()
  5255 ms  0xd28 ret:0x100
  5255 ms  SECKEY_ECParamsToBasePointOrderLen()
  5255 ms  0xd28 ret:0x100
  5255 ms  0xd28 EC_ValidatePublicKey()
  5256 ms  0xd28 ret:0x0
           /* TID 0xd85 */
  5260 ms  SECKEY_ECParamsToBasePointOrderLen()
  5260 ms  0xd85 ret:0x180
  5260 ms  SECKEY_ECParamsToBasePointOrderLen()
  5260 ms  0xd85 ret:0x180
  5260 ms  0xd85 EC_ValidatePublicKey()
  5262 ms  0xd85 ret:0x0
           /* TID 0xd28 */
  5266 ms  SECKEY_ECParamsToKeySize()
  5266 ms  0xd28 ret:0x100
  5266 ms  0xd28 SECKEY_CreateECPrivateKey()
  5266 ms  0xd28 cx:0x7ff1ad1f10e8
  5267 ms     | 0xd28 EC_ValidatePublicKey()
  5268 ms     | 0xd28 ret:0x0
  5268 ms  0xd28 ret:0x7ff19bd20820::7ff19bd20820  70 4e d1 9b                                      pN..
  5269 ms  0xd28 PK11_PubDeriveWithKDF()
  5269 ms  0xd28 seckey:0x7ff19bd20820
  5269 ms     | 0xd28 EC_ValidatePublicKey()
  5270 ms     | 0xd28 ret:0x0
  5272 ms  0xd28 ret:0x7ff1aecc0380
  5272 ms  0xd28 PK11_DeriveWithFlags()
  5272 ms  0xd28 basekey:0x7ff1aecc0380
  5272 ms     | 0xd28 PK11_DeriveWithTemplate()
  5272 ms  0xd28 ret:0x7ff19c2b1e80
  5272 ms  0xd28 PK11_Derive()
  5272 ms  0xd28 basekey:0x7ff19c2b1e80
  5272 ms     | 0xd28 PK11_DeriveWithTemplate()
  5272 ms  0xd28 ret:0x7ff19c2b2000
  5272 ms  0xd28 SECKEY_DestroyPrivateKey()
  5272 ms  0xd28 privk:0x7ff19bd20820::7ff19bd20820  70 4e d1 9b                                      pN..
  5272 ms  0xd28 privk:0x7ff19bd20820::7ff19bd20820  e5 e5 e5 e5                                      ....
  5272 ms  0xd28 PK11_Encrypt()
  5272 ms  0xd28 symkey:0x7ff19c2b2180
           /* TID 0xd85 */
  5272 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5272 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5272 ms     | 0xd85 ret:0x180
  5272 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5272 ms     | 0xd85 ret:0x180
  5272 ms     | 0xd85 EC_ValidatePublicKey()
  5274 ms     | 0xd85 ret:0x0
  5277 ms  0xd85 ret:0x0
           /* TID 0xd28 */
  5277 ms  0xd28 SSL_AuthCertificateComplete()
  5277 ms  0xd28 fd:0x7ff19c17f8e0
  5277 ms  0xd28 err:0x0
  5277 ms  0xd28 SSL_AuthCertificateComplete()
  5277 ms  0xd28 fd:0x7ff19c17f850
  5277 ms  0xd28 err:0x0
  5277 ms  0xd28 SSL_AuthCertificateComplete()
  5277 ms  0xd28 fd:0x7ff19c17f8b0
  5277 ms  0xd28 err:0x0
  5277 ms  0xd28 PK11_Encrypt()
  5277 ms  0xd28 symkey:0x7ff19c1b7700
  5278 ms  0xd28 PK11_Encrypt()
  5278 ms  0xd28 symkey:0x7ff19c1b7700
  5278 ms  0xd28 PK11_Encrypt()
  5278 ms  0xd28 symkey:0x7ff19c2b1d00
  5278 ms  0xd28 PK11_Encrypt()
  5278 ms  0xd28 symkey:0x7ff19c2b2180
  5278 ms  0xd28 PK11_Encrypt()
  5278 ms  0xd28 symkey:0x7ff19c2b2180
  5279 ms  0xd28 PK11_Encrypt()
  5279 ms  0xd28 symkey:0x7ff19c2b2180
  5279 ms  0xd28 PK11_Encrypt()
  5279 ms  0xd28 symkey:0x7ff19c2b2180
  5279 ms  0xd28 PK11_Encrypt()
  5279 ms  0xd28 symkey:0x7ff19c2b2180
  5280 ms  0xd28 PK11_Encrypt()
  5280 ms  0xd28 symkey:0x7ff19c2b2180
  5280 ms  0xd28 PK11_Encrypt()
  5280 ms  0xd28 symkey:0x7ff19c1b7700
  5280 ms  0xd28 SECKEY_DestroyPrivateKey()
  5280 ms  0xd28 privk:0x7ff19c251820::7ff19c251820  90 c7 13 9c                                      ....
  5280 ms  0xd28 privk:0x7ff19c251820::7ff19c251820  e5 e5 e5 e5                                      ....
  5281 ms  0xd28 SECKEY_DestroyPrivateKey()
  5281 ms  0xd28 privk:0x7ff19c24c020::7ff19c24c020  00 c1 13 9c                                      ....
  5281 ms  0xd28 privk:0x7ff19c24c020::7ff19c24c020  e5 e5 e5 e5                                      ....
  5281 ms  0xd28 PR_Close()
  5281 ms  0xd28 fd:0x7ff19c17f8e0
  5281 ms     | 0xd28 PK11_Encrypt()
  5281 ms     | 0xd28 symkey:0x7ff19c2b1d00
  5281 ms  0xd28 PK11_Encrypt()
  5281 ms  0xd28 symkey:0x7ff19c2b2180
  5281 ms  0xd28 PK11_Encrypt()
  5281 ms  0xd28 symkey:0x7ff19c2b2180
  5292 ms  0xd28 SECKEY_DestroyPrivateKey()
  5292 ms  0xd28 privk:0x7ff19c25a020::7ff19c25a020  10 cf 13 9c                                      ....
  5292 ms  0xd28 privk:0x7ff19c25a020::7ff19c25a020  e5 e5 e5 e5                                      ....
  5292 ms  0xd28 SECKEY_DestroyPrivateKey()
  5292 ms  0xd28 privk:0x7ff19c258820::7ff19c258820  e0 cc 13 9c                                      ....
  5292 ms  0xd28 privk:0x7ff19c258820::7ff19c258820  e5 e5 e5 e5                                      ....
  5309 ms  0xd28 SECKEY_DestroyPrivateKey()
  5309 ms  0xd28 privk:0x7ff19c256020::7ff19c256020  50 cb 13 9c                                      P...
  5310 ms  0xd28 privk:0x7ff19c256020::7ff19c256020  e5 e5 e5 e5                                      ....
  5310 ms  0xd28 SECKEY_DestroyPrivateKey()
  5310 ms  0xd28 privk:0x7ff19c254020::7ff19c254020  70 c9 13 9c                                      p...
  5310 ms  0xd28 privk:0x7ff19c254020::7ff19c254020  e5 e5 e5 e5                                      ....
  5318 ms  0xd28 PK11_Encrypt()
  5318 ms  0xd28 symkey:0x7ff19c2b2180
  5328 ms  0xd28 PK11_Encrypt()
  5328 ms  0xd28 symkey:0x7ff19c1b7700
           /* TID 0xd30 */
  5333 ms  0xd30 PR_Close()
  5333 ms  0xd30 fd:0x7ff19c0d16d0
           /* TID 0xd28 */
  5356 ms  0xd28 SSL_ImportFD()
  5356 ms  0xd28 ret:0x7ff19c17f8e0
  5356 ms  0xd28 SSL_AuthCertificateHook()
  5356 ms  0xd28 fd:0x7ff19c17f8e0
  5356 ms  0xd28 ret:0x0
  5356 ms  0xd28 PR_Connect()
  5356 ms  0xd28 fd:0x7ff19c17f8e0
  5356 ms  0xd28 SSL_ImportFD()
  5356 ms  0xd28 ret:0x7ff19c17fa60
  5356 ms  0xd28 SSL_AuthCertificateHook()
  5356 ms  0xd28 fd:0x7ff19c17fa60
  5356 ms  0xd28 ret:0x0
  5356 ms  0xd28 PR_Connect()
  5356 ms  0xd28 fd:0x7ff19c17fa60
  5356 ms  0xd28 SSL_ImportFD()
  5356 ms  0xd28 ret:0x7ff19c17fa90
  5356 ms  0xd28 SSL_AuthCertificateHook()
  5356 ms  0xd28 fd:0x7ff19c17fa90
  5356 ms  0xd28 ret:0x0
  5356 ms  0xd28 PR_Connect()
  5356 ms  0xd28 fd:0x7ff19c17fa90
           /* TID 0xd30 */
  5358 ms  0xd30 PR_Close()
  5358 ms  0xd30 fd:0x7ff19c131d90
  5365 ms  0xd30 PR_Close()
  5365 ms  0xd30 fd:0x7ff19c0d8a00
  5367 ms  0xd30 PR_Close()
  5367 ms  0xd30 fd:0x7ff19c0d80a0
  5371 ms  0xd30 PR_Close()
  5371 ms  0xd30 fd:0x7ff19c0d80a0
  5373 ms  0xd30 PR_Close()
  5373 ms  0xd30 fd:0x7ff19c0d80a0
  5374 ms  0xd30 PR_Close()
  5374 ms  0xd30 fd:0x7ff19c0d80a0
  5376 ms  0xd30 PR_Close()
  5376 ms  0xd30 fd:0x7ff19c0d80a0
           /* TID 0xd28 */
  5393 ms  0xd28 SECKEY_CreateECPrivateKey()
  5393 ms  0xd28 cx:0x7ff1ad1f1de8
  5393 ms     | 0xd28 EC_ValidatePublicKey()
  5393 ms     | 0xd28 ret:0x0
  5393 ms  0xd28 ret:0x7ff19bd21820::7ff19bd21820  70 4e d1 9b                                      pN..
  5393 ms  0xd28 SECKEY_CreateECPrivateKey()
  5393 ms  0xd28 cx:0x7ff1ad1f1de8
  5394 ms     | 0xd28 EC_ValidatePublicKey()
  5395 ms     | 0xd28 ret:0x0
  5396 ms  0xd28 ret:0x7ff19bd24020::7ff19bd24020  20 0e 13 9c                                       ...
  5396 ms  0xd28 SECKEY_CreateECPrivateKey()
  5396 ms  0xd28 cx:0x7ff1ad1f1f88
  5397 ms     | 0xd28 EC_ValidatePublicKey()
  5397 ms     | 0xd28 ret:0x0
  5397 ms  0xd28 ret:0x7ff19bd26820::7ff19bd26820  10 0f 13 9c                                      ....
  5397 ms  0xd28 SECKEY_CreateECPrivateKey()
  5397 ms  0xd28 cx:0x7ff1ad1f1f88
  5398 ms     | 0xd28 EC_ValidatePublicKey()
  5399 ms     | 0xd28 ret:0x0
  5399 ms  0xd28 ret:0x7ff19bd28820::7ff19bd28820  90 92 13 9c                                      ....
           /* TID 0xd30 */
  5408 ms  0xd30 PR_Close()
  5408 ms  0xd30 fd:0x7ff19c0d8040
           /* TID 0xd28 */
  5408 ms  0xd28 SECKEY_CreateECPrivateKey()
  5408 ms  0xd28 cx:0x7ff1ad1f1428
  5409 ms     | 0xd28 EC_ValidatePublicKey()
  5409 ms     | 0xd28 ret:0x0
  5409 ms  0xd28 ret:0x7ff19bd2a820::7ff19bd2a820  e0 92 13 9c                                      ....
  5409 ms  0xd28 SECKEY_CreateECPrivateKey()
  5409 ms  0xd28 cx:0x7ff1ad1f1428
  5409 ms     | 0xd28 EC_ValidatePublicKey()
  5411 ms     | 0xd28 ret:0x0
  5411 ms  0xd28 ret:0x7ff19bd2c820::7ff19bd2c820  b0 95 13 9c                                      ....
  5435 ms  SECKEY_ECParamsToKeySize()
  5435 ms  0xd28 ret:0x100
  5435 ms  0xd28 SECKEY_CreateECPrivateKey()
  5435 ms  0xd28 cx:0x7ff1ad1f1de8
  5435 ms     | 0xd28 EC_ValidatePublicKey()
  5437 ms     | 0xd28 ret:0x0
  5437 ms  0xd28 ret:0x7ff19bd35820::7ff19bd35820  00 c6 13 9c                                      ....
  5437 ms  0xd28 PK11_PubDeriveWithKDF()
  5437 ms  0xd28 seckey:0x7ff19bd35820
  5437 ms     | 0xd28 EC_ValidatePublicKey()
  5438 ms     | 0xd28 ret:0x0
  5450 ms  0xd28 ret:0x7ff19c2b1700
  5450 ms  0xd28 PK11_DeriveWithFlags()
  5450 ms  0xd28 basekey:0x7ff19c2b1700
  5450 ms     | 0xd28 PK11_DeriveWithTemplate()
  5450 ms  0xd28 ret:0x7ff19c2b1500
  5450 ms  0xd28 PK11_Derive()
  5450 ms  0xd28 basekey:0x7ff19c2b1500
  5450 ms     | 0xd28 PK11_DeriveWithTemplate()
  5450 ms  0xd28 ret:0x7ff1aecc0380
  5450 ms  0xd28 SECKEY_DestroyPrivateKey()
  5450 ms  0xd28 privk:0x7ff19bd35820::7ff19bd35820  00 c6 13 9c                                      ....
  5450 ms  0xd28 privk:0x7ff19bd35820::7ff19bd35820  e5 e5 e5 e5                                      ....
  5450 ms  0xd28 PK11_Encrypt()
  5450 ms  0xd28 symkey:0x7ff19c2b1c00
  5453 ms  0xd28 PK11_Derive()
  5453 ms  0xd28 basekey:0x7ff19c2b1700
  5453 ms     | 0xd28 PK11_DeriveWithTemplate()
  5453 ms  0xd28 ret:0x7ff19c135780
  5453 ms  0xd28 PK11_PubDeriveWithKDF()
  5453 ms  0xd28 seckey:0x7ff19bd26820
  5453 ms     | 0xd28 EC_ValidatePublicKey()
  5453 ms     | 0xd28 ret:0x0
  5454 ms  0xd28 ret:0x7ff19c2b1700
  5454 ms  SECKEY_ECParamsToKeySize()
  5454 ms  0xd28 ret:0xff
  5454 ms  0xd28 PK11_DeriveWithFlags()
  5454 ms  0xd28 basekey:0x7ff19c135780
  5454 ms     | 0xd28 PK11_DeriveWithTemplate()
  5454 ms  0xd28 ret:0x7ff19c135980
  5454 ms  0xd28 PK11_Derive()
  5454 ms  0xd28 basekey:0x7ff19c2b1700
  5454 ms     | 0xd28 PK11_DeriveWithTemplate()
  5454 ms  0xd28 ret:0x7ff19c135a00
  5454 ms  0xd28 PK11_DeriveWithFlags()
  5454 ms  0xd28 basekey:0x7ff19c135a00
  5454 ms     | 0xd28 PK11_DeriveWithTemplate()
  5454 ms  0xd28 ret:0x7ff19c135780
  5454 ms  0xd28 PK11_DeriveWithFlags()
  5454 ms  0xd28 basekey:0x7ff19c135a00
  5454 ms     | 0xd28 PK11_DeriveWithTemplate()
  5454 ms  0xd28 ret:0x7ff19c2b1700
  5454 ms  0xd28 PK11_DeriveWithFlags()
  5454 ms  0xd28 basekey:0x7ff19c135a00
  5454 ms     | 0xd28 PK11_DeriveWithTemplate()
  5454 ms  0xd28 ret:0x7ff19c135980
  5454 ms  0xd28 PK11_Derive()
  5454 ms  0xd28 basekey:0x7ff19c135b00
  5454 ms     | 0xd28 PK11_DeriveWithTemplate()
  5454 ms  0xd28 ret:0x7ff19c135c80
  5454 ms  0xd28 PK11_DeriveWithFlags()
  5454 ms  0xd28 basekey:0x7ff19c2b1700
  5454 ms     | 0xd28 PK11_DeriveWithTemplate()
  5454 ms  0xd28 ret:0x7ff19c135a00
  5454 ms  0xd28 PK11_DeriveWithFlags()
  5454 ms  0xd28 basekey:0x7ff19c2b1700
  5454 ms     | 0xd28 PK11_DeriveWithTemplate()
  5454 ms  0xd28 ret:0x7ff19c135980
  5456 ms  SECKEY_ECParamsToKeySize()
  5456 ms  0xd28 ret:0x100
  5456 ms  SECKEY_ECParamsToBasePointOrderLen()
  5456 ms  0xd28 ret:0x100
  5456 ms  SECKEY_ECParamsToBasePointOrderLen()
  5456 ms  0xd28 ret:0x100
  5456 ms  0xd28 EC_ValidatePublicKey()
  5457 ms  0xd28 ret:0x0
  5463 ms  0xd28 PK11_DeriveWithFlags()
  5463 ms  0xd28 basekey:0x7ff19c2b1700
  5463 ms     | 0xd28 PK11_DeriveWithTemplate()
  5463 ms  0xd28 ret:0x7ff19c135980
  5464 ms  0xd28 SECKEY_CreateDHPrivateKey()
  5464 ms  0xd28 cx:0x0
  5464 ms  0xd28 ret:7ff1af0e9820  30 73 de 9b                                      0s..
  5464 ms  0xd28 PK11_PubDerive()
  5464 ms  0xd28 privkey0x7ff1af0e9820
  5465 ms  0xd28 ret:0x7ff19c135980
  5465 ms  0xd28 PK11_DeriveWithFlags()
  5465 ms  0xd28 basekey:0x7ff19c135980
  5465 ms     | 0xd28 PK11_DeriveWithTemplate()
  5465 ms  0xd28 ret:0x7ff19c135b00
  5465 ms  0xd28 PK11_Derive()
  5465 ms  0xd28 basekey:0x7ff19c135b00
  5465 ms     | 0xd28 PK11_DeriveWithTemplate()
  5465 ms  0xd28 ret:0x7ff19c28a900
  5465 ms  0xd28 SECKEY_DestroyPrivateKey()
  5465 ms  0xd28 privk:0x7ff1af0e9820::7ff1af0e9820  30 73 de 9b                                      0s..
  5465 ms  0xd28 privk:0x7ff1af0e9820::7ff1af0e9820  e5 e5 e5 e5                                      ....
  5465 ms  0xd28 PR_Connect()
  5465 ms  0xd28 fd:0x7ff1b27ac040
  5466 ms  0xd28 PR_Connect()
  5466 ms  0xd28 fd:0x7ff1b27ac1f0
           /* TID 0xd30 */
  5478 ms  0xd30 PR_Close()
  5478 ms  0xd30 fd:0x7ff19c17f400
           /* TID 0xdc6 */
  5478 ms  0xdc6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5478 ms  0xdc6 ret:0x0
  5478 ms  0xdc6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5478 ms  0xdc6 ret:0x0
           /* TID 0xd28 */
  5485 ms  0xd28 PK11_Encrypt()
  5485 ms  0xd28 symkey:0x7ff19c1b7700
  5491 ms  0xd28 PK11_Encrypt()
  5491 ms  0xd28 symkey:0x7ff19c1b7700
  5493 ms  0xd28 SSL_AuthCertificateComplete()
  5493 ms  0xd28 fd:0x7ff19c17fa60
  5493 ms  0xd28 err:0x0
  5493 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  5493 ms     | 0xd28 privk:0x7ff19bd24020::7ff19bd24020  20 0e 13 9c                                       ...
  5493 ms     | 0xd28 privk:0x7ff19bd24020::7ff19bd24020  e5 e5 e5 e5                                      ....
  5493 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  5493 ms     | 0xd28 privk:0x7ff19bd21820::7ff19bd21820  70 4e d1 9b                                      pN..
  5493 ms     | 0xd28 privk:0x7ff19bd21820::7ff19bd21820  e5 e5 e5 e5                                      ....
  5493 ms  0xd28 PK11_Encrypt()
  5493 ms  0xd28 symkey:0x7ff19c2b1c00
  5493 ms  0xd28 PK11_Encrypt()
  5493 ms  0xd28 symkey:0x7ff19c2b1c00
           /* TID 0xd30 */
  5503 ms  0xd30 PR_Close()
  5503 ms  0xd30 fd:0x7ff1ae47a2b0
           /* TID 0xdc7 */
  5503 ms  0xdc7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5503 ms  0xdc7 ret:0x0
           /* TID 0xd28 */
  5504 ms  0xd28 SSL_AuthCertificateComplete()
  5504 ms  0xd28 fd:0x7ff19c17f8e0
  5504 ms  0xd28 err:0x0
  5513 ms  0xd28 SECKEY_DestroyPrivateKey()
  5513 ms  0xd28 privk:0x7ff19bd2c820::7ff19bd2c820  b0 95 13 9c                                      ....
  5513 ms  0xd28 privk:0x7ff19bd2c820::7ff19bd2c820  e5 e5 e5 e5                                      ....
  5513 ms  0xd28 SECKEY_DestroyPrivateKey()
  5513 ms  0xd28 privk:0x7ff19bd2a820::7ff19bd2a820  e0 92 13 9c                                      ....
  5513 ms  0xd28 privk:0x7ff19bd2a820::7ff19bd2a820  e5 e5 e5 e5                                      ....
           /* TID 0xd30 */
  5528 ms  0xd30 PR_Close()
  5528 ms  0xd30 fd:0x7ff19c17fd90
           /* TID 0xd28 */
  5529 ms  0xd28 PK11_Encrypt()
  5529 ms  0xd28 symkey:0x7ff19c2b1c00
  5540 ms  0xd28 PK11_Encrypt()
  5540 ms  0xd28 symkey:0x7ff19c2b2180
  5542 ms  0xd28 PK11_Encrypt()
  5542 ms  0xd28 symkey:0x7ff19c2b2180
  5545 ms  0xd28 PK11_Encrypt()
  5545 ms  0xd28 symkey:0x7ff19c2b2180
  5546 ms  0xd28 PK11_Encrypt()
  5546 ms  0xd28 symkey:0x7ff19c2b2180
  5547 ms  0xd28 PK11_Encrypt()
  5547 ms  0xd28 symkey:0x7ff19c2b2180
  5549 ms  0xd28 PK11_Encrypt()
  5549 ms  0xd28 symkey:0x7ff19c2b2180
  5550 ms  0xd28 PK11_Encrypt()
  5550 ms  0xd28 symkey:0x7ff19c2b2180
  5561 ms  0xd28 PR_Close()
  5561 ms  0xd28 fd:0x7ff19c17f8e0
           /* TID 0xd30 */
  5562 ms  0xd30 PR_Close()
  5562 ms  0xd30 fd:0x7ff19c0d1a90
  5564 ms  0xd30 PR_Close()
  5564 ms  0xd30 fd:0x7ff19c0d8a90
  5568 ms  0xd30 PR_Close()
  5568 ms  0xd30 fd:0x7ff19c0d8a90
  5577 ms  0xd30 PR_Close()
  5577 ms  0xd30 fd:0x7ff19c0d8130
  5615 ms  0xd30 PR_Close()
  5615 ms  0xd30 fd:0x7ff19c0d8130
  5619 ms  0xd30 PR_Close()
  5619 ms  0xd30 fd:0x7ff19c0d8130
  5622 ms  0xd30 PR_Close()
  5622 ms  0xd30 fd:0x7ff19c0d8130
  5622 ms  0xd30 PR_Close()
  5622 ms  0xd30 fd:0x7ff19c0d8130
  5623 ms  0xd30 PR_Close()
  5623 ms  0xd30 fd:0x7ff19c0d8130
  5623 ms  0xd30 PR_Close()
  5623 ms  0xd30 fd:0x7ff19c227fd0
  5646 ms  0xd30 PR_Close()
  5646 ms  0xd30 fd:0x7ff19c17fd30
           /* TID 0xd85 */
  5646 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5646 ms  0xd85 ret:0x0
           /* TID 0xd28 */
  5652 ms  0xd28 SSL_AuthCertificateComplete()
  5652 ms  0xd28 fd:0x7ff19c17fa90
  5652 ms  0xd28 err:0x0
  5652 ms     | 0xd28 PK11_DeriveWithFlags()
  5652 ms     | 0xd28 basekey:0x7ff19c135c80
  5652 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5652 ms     | 0xd28 ret:0x7ff19c28a900
  5652 ms     | 0xd28 PK11_DeriveWithFlags()
  5652 ms     | 0xd28 basekey:0x7ff19c135c80
  5652 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5652 ms     | 0xd28 ret:0x7ff19c135b00
  5652 ms     | 0xd28 PK11_DeriveWithFlags()
  5652 ms     | 0xd28 basekey:0x7ff19c135c80
  5652 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5652 ms     | 0xd28 ret:0x7ff19c135980
  5652 ms     | 0xd28 PK11_DeriveWithFlags()
  5652 ms     | 0xd28 basekey:0x7ff19c135780
  5652 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5652 ms     | 0xd28 ret:0x7ff19c28aa00
  5652 ms     | 0xd28 PK11_DeriveWithFlags()
  5652 ms     | 0xd28 basekey:0x7ff19c135780
  5652 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5652 ms     | 0xd28 ret:0x7ff19c28ab00
  5652 ms     | 0xd28 PK11_DeriveWithFlags()
  5652 ms     | 0xd28 basekey:0x7ff19c135b00
  5652 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5652 ms     | 0xd28 ret:0x7ff19c28ab00
  5652 ms     | 0xd28 PK11_DeriveWithFlags()
  5652 ms     | 0xd28 basekey:0x7ff19c135b00
  5652 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5652 ms     | 0xd28 ret:0x7ff19c28a980
  5652 ms     | 0xd28 PK11_DeriveWithFlags()
  5652 ms     | 0xd28 basekey:0x7ff19c135780
  5652 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5652 ms     | 0xd28 ret:0x7ff19c135a00
  5652 ms     | 0xd28 PK11_Encrypt()
  5652 ms     | 0xd28 symkey:0x7ff19c28aa00
  5652 ms     | 0xd28 PK11_DeriveWithFlags()
  5652 ms     | 0xd28 basekey:0x7ff19c28a900
  5652 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5652 ms     | 0xd28 ret:0x7ff19c135a00
  5653 ms     | 0xd28 PK11_DeriveWithFlags()
  5653 ms     | 0xd28 basekey:0x7ff19c28a900
  5653 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5653 ms     | 0xd28 ret:0x7ff19c28a980
  5653 ms     | 0xd28 PK11_DeriveWithFlags()
  5653 ms     | 0xd28 basekey:0x7ff19c135c80
  5653 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5653 ms     | 0xd28 ret:0x7ff19c28aa00
  5653 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  5653 ms     | 0xd28 privk:0x7ff19bd28820::7ff19bd28820  90 92 13 9c                                      ....
  5653 ms     | 0xd28 privk:0x7ff19bd28820::7ff19bd28820  e5 e5 e5 e5                                      ....
  5653 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  5653 ms     | 0xd28 privk:0x7ff19bd26820::7ff19bd26820  10 0f 13 9c                                      ....
  5653 ms     | 0xd28 privk:0x7ff19bd26820::7ff19bd26820  e5 e5 e5 e5                                      ....
  5653 ms  0xd28 PK11_Encrypt()
  5653 ms  0xd28 symkey:0x7ff19c135a00
  5653 ms  0xd28 PK11_Encrypt()
  5653 ms  0xd28 symkey:0x7ff19c135a00
  5695 ms  0xd28 PK11_DeriveWithFlags()
  5695 ms  0xd28 basekey:0x7ff19c28aa00
  5695 ms     | 0xd28 PK11_DeriveWithTemplate()
  5695 ms  0xd28 ret:0x7ff19c2b1700
  5695 ms  0xd28 PK11_DeriveWithFlags()
  5695 ms  0xd28 basekey:0x7ff19c28aa00
  5695 ms     | 0xd28 PK11_DeriveWithTemplate()
  5695 ms  0xd28 ret:0x7ff19c2b1700
  5695 ms  0xd28 PK11_Encrypt()
  5695 ms  0xd28 symkey:0x7ff19c135a00
  5715 ms  0xd28 SSL_ImportFD()
  5715 ms  0xd28 ret:0x7ff1b27ac490
  5715 ms  0xd28 SSL_AuthCertificateHook()
  5715 ms  0xd28 fd:0x7ff1b27ac490
  5715 ms  0xd28 ret:0x0
  5715 ms  0xd28 PR_Connect()
  5715 ms  0xd28 fd:0x7ff1b27ac490
  5775 ms  0xd28 PK11_Encrypt()
  5775 ms  0xd28 symkey:0x7ff19c135a00
           /* TID 0xd30 */
  5775 ms  0xd30 PR_Close()
  5775 ms  0xd30 fd:0x7ff19c0d8eb0
           /* TID 0xd28 */
  5778 ms  0xd28 SECKEY_CreateECPrivateKey()
  5778 ms  0xd28 cx:0x7ff1ad1f22c8
  5778 ms     | 0xd28 EC_ValidatePublicKey()
  5778 ms     | 0xd28 ret:0x0
  5778 ms  0xd28 ret:0x7ff19bc8b020::7ff19bc8b020  00 91 13 9c                                      ....
  5778 ms  0xd28 SECKEY_CreateECPrivateKey()
  5778 ms  0xd28 cx:0x7ff1ad1f22c8
  5779 ms     | 0xd28 EC_ValidatePublicKey()
  5780 ms     | 0xd28 ret:0x0
  5781 ms  0xd28 ret:0x7ff19bc8d020::7ff19bc8d020  30 93 13 9c                                      0...
  5791 ms  0xd28 SSL_ImportFD()
  5791 ms  0xd28 ret:0x7ff1b27ace20
  5791 ms  0xd28 SSL_AuthCertificateHook()
  5791 ms  0xd28 fd:0x7ff1b27ace20
  5791 ms  0xd28 ret:0x0
  5791 ms  0xd28 PR_Connect()
  5791 ms  0xd28 fd:0x7ff1b27ace20
  5791 ms  0xd28 SSL_ImportFD()
  5791 ms  0xd28 ret:0x7ff19bc0c070
  5791 ms  0xd28 SSL_AuthCertificateHook()
  5791 ms  0xd28 fd:0x7ff19bc0c070
  5791 ms  0xd28 ret:0x0
  5791 ms  0xd28 PR_Connect()
  5791 ms  0xd28 fd:0x7ff19bc0c070
  5815 ms  0xd28 PK11_Encrypt()
  5815 ms  0xd28 symkey:0x7ff19c1b8080
  5827 ms  0xd28 PK11_Encrypt()
  5827 ms  0xd28 symkey:0x7ff19c1b8080
  5828 ms  0xd28 SECKEY_CreateECPrivateKey()
  5828 ms  0xd28 cx:0x7ff1ad1f2ae8
  5829 ms     | 0xd28 EC_ValidatePublicKey()
  5829 ms     | 0xd28 ret:0x0
  5829 ms  0xd28 ret:0x7ff19bc91820::7ff19bc91820  80 c3 13 9c                                      ....
  5829 ms  0xd28 SECKEY_CreateECPrivateKey()
  5829 ms  0xd28 cx:0x7ff1ad1f2ae8
  5830 ms     | 0xd28 EC_ValidatePublicKey()
  5831 ms     | 0xd28 ret:0x0
  5831 ms  0xd28 ret:0x7ff19bc93820::7ff19bc93820  a0 cb 13 9c                                      ....
  5832 ms  0xd28 SECKEY_CreateECPrivateKey()
  5832 ms  0xd28 cx:0x7ff1ad1f27a8
  5832 ms     | 0xd28 EC_ValidatePublicKey()
  5832 ms     | 0xd28 ret:0x0
  5832 ms  0xd28 ret:0x7ff19bc96020::7ff19bc96020  e0 cc 13 9c                                      ....
  5832 ms  0xd28 SECKEY_CreateECPrivateKey()
  5832 ms  0xd28 cx:0x7ff1ad1f27a8
  5833 ms     | 0xd28 EC_ValidatePublicKey()
  5834 ms     | 0xd28 ret:0x0
  5834 ms  0xd28 ret:0x7ff19bc98020::7ff19bc98020  d0 98 1b 9c                                      ....
  5844 ms  SECKEY_ECParamsToKeySize()
  5844 ms  0xd28 ret:0xff
  5844 ms  0xd28 SECKEY_CreateECPrivateKey()
  5844 ms  0xd28 cx:0x7ff1ad1f22c8
  5845 ms     | 0xd28 EC_ValidatePublicKey()
  5845 ms     | 0xd28 ret:0x0
           /* TID 0xdc6 */
  5845 ms  0xdc6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5845 ms  0xdc6 ret:0x0
  5846 ms  0xdc6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5846 ms  0xdc6 ret:0x0
           /* TID 0xd28 */
  5846 ms  0xd28 ret:0x7ff19bd29020::7ff19bd29020  10 65 c4 9b                                      .e..
  5846 ms  0xd28 PK11_PubDeriveWithKDF()
  5846 ms  0xd28 seckey:0x7ff19bd29020
  5847 ms     | 0xd28 EC_ValidatePublicKey()
  5847 ms     | 0xd28 ret:0x0
  5847 ms  0xd28 ret:0x7ff19c2b1700
  5847 ms  0xd28 PK11_DeriveWithFlags()
  5847 ms  0xd28 basekey:0x7ff19c2b1700
  5847 ms     | 0xd28 PK11_DeriveWithTemplate()
  5847 ms  0xd28 ret:0x7ff19c135780
  5847 ms  0xd28 PK11_Derive()
  5847 ms  0xd28 basekey:0x7ff19c135780
  5847 ms     | 0xd28 PK11_DeriveWithTemplate()
  5847 ms  0xd28 ret:0x7ff19c135c80
  5847 ms  0xd28 SECKEY_DestroyPrivateKey()
  5847 ms  0xd28 privk:0x7ff19bd29020::7ff19bd29020  10 65 c4 9b                                      .e..
  5847 ms  0xd28 privk:0x7ff19bd29020::7ff19bd29020  e5 e5 e5 e5                                      ....
  5847 ms  0xd28 PK11_Encrypt()
  5847 ms  0xd28 symkey:0x7ff19bc09080
  5853 ms  0xd28 SSL_AuthCertificateComplete()
  5853 ms  0xd28 fd:0x7ff1b27ac490
  5853 ms  0xd28 err:0x0
  5853 ms  0xd28 PK11_Encrypt()
  5853 ms  0xd28 symkey:0x7ff19bc09080
  5853 ms  0xd28 PK11_Encrypt()
  5853 ms  0xd28 symkey:0x7ff19bc09080
  5869 ms  SECKEY_ECParamsToKeySize()
  5869 ms  0xd28 ret:0x100
  5869 ms  0xd28 SECKEY_CreateECPrivateKey()
  5869 ms  0xd28 cx:0x7ff1ad1f2ae8
  5870 ms     | 0xd28 EC_ValidatePublicKey()
  5872 ms     | 0xd28 ret:0x0
           /* TID 0xdc7 */
  5873 ms  0xdc7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5873 ms  0xdc7 ret:0x0
           /* TID 0xd28 */
  5873 ms  0xd28 ret:0x7ff19bd2b820::7ff19bd2b820  00 66 c4 9b                                      .f..
  5873 ms  0xd28 PK11_PubDeriveWithKDF()
  5873 ms  0xd28 seckey:0x7ff19bd2b820
  5873 ms     | 0xd28 EC_ValidatePublicKey()
  5874 ms     | 0xd28 ret:0x0
  5876 ms  0xd28 ret:0x7ff19c2b1700
  5876 ms  0xd28 PK11_DeriveWithFlags()
  5876 ms  0xd28 basekey:0x7ff19c2b1700
  5876 ms     | 0xd28 PK11_DeriveWithTemplate()
  5876 ms  0xd28 ret:0x7ff19c28a980
  5876 ms  0xd28 PK11_Derive()
  5876 ms  0xd28 basekey:0x7ff19c28a980
  5876 ms     | 0xd28 PK11_DeriveWithTemplate()
  5876 ms  0xd28 ret:0x7ff19bc08800
  5876 ms  0xd28 SECKEY_DestroyPrivateKey()
  5876 ms  0xd28 privk:0x7ff19bd2b820::7ff19bd2b820  00 66 c4 9b                                      .f..
  5876 ms  0xd28 privk:0x7ff19bd2b820::7ff19bd2b820  e5 e5 e5 e5                                      ....
  5876 ms  0xd28 PK11_Encrypt()
  5876 ms  0xd28 symkey:0x7ff19bc08d80
  5882 ms  0xd28 SSL_AuthCertificateComplete()
  5882 ms  0xd28 fd:0x7ff19bc0c070
  5882 ms  0xd28 err:0x0
  5883 ms  0xd28 PK11_Encrypt()
  5883 ms  0xd28 symkey:0x7ff19bc08d80
           /* TID 0xd85 */
  5883 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5884 ms  0xd85 ret:0x0
           /* TID 0xd28 */
  5884 ms  SECKEY_ECParamsToKeySize()
  5884 ms  0xd28 ret:0x100
  5884 ms  0xd28 SECKEY_CreateECPrivateKey()
  5884 ms  0xd28 cx:0x7ff1ad1f27a8
  5884 ms     | 0xd28 EC_ValidatePublicKey()
  5886 ms     | 0xd28 ret:0x0
  5886 ms  0xd28 ret:0x7ff19bd32820::7ff19bd32820  f0 66 c4 9b                                      .f..
  5886 ms  0xd28 PK11_PubDeriveWithKDF()
  5886 ms  0xd28 seckey:0x7ff19bd32820
  5886 ms     | 0xd28 EC_ValidatePublicKey()
  5887 ms     | 0xd28 ret:0x0
  5889 ms  0xd28 ret:0x7ff19c2b1700
  5889 ms  0xd28 PK11_DeriveWithFlags()
  5889 ms  0xd28 basekey:0x7ff19c2b1700
  5889 ms     | 0xd28 PK11_DeriveWithTemplate()
  5889 ms  0xd28 ret:0x7ff19bc08b80
  5889 ms  0xd28 PK11_Derive()
  5889 ms  0xd28 basekey:0x7ff19bc08b80
  5889 ms     | 0xd28 PK11_DeriveWithTemplate()
  5889 ms  0xd28 ret:0x7ff19bc08f00
  5889 ms  0xd28 SECKEY_DestroyPrivateKey()
  5889 ms  0xd28 privk:0x7ff19bd32820::7ff19bd32820  f0 66 c4 9b                                      .f..
  5889 ms  0xd28 privk:0x7ff19bd32820::7ff19bd32820  e5 e5 e5 e5                                      ....
  5889 ms  0xd28 PK11_Encrypt()
  5889 ms  0xd28 symkey:0x7ff19bc09200
  5889 ms  0xd28 SSL_ImportFD()
  5889 ms  0xd28 ret:0x7ff19bc0c820
  5889 ms  0xd28 SSL_AuthCertificateHook()
  5889 ms  0xd28 fd:0x7ff19bc0c820
  5889 ms  0xd28 ret:0x0
  5889 ms  0xd28 PR_Connect()
  5889 ms  0xd28 fd:0x7ff19bc0c820
  5890 ms  0xd28 SSL_ImportFD()
  5890 ms  0xd28 ret:0x7ff19bc0c610
  5890 ms  0xd28 SSL_AuthCertificateHook()
  5890 ms  0xd28 fd:0x7ff19bc0c610
  5890 ms  0xd28 ret:0x0
  5890 ms  0xd28 PR_Connect()
  5890 ms  0xd28 fd:0x7ff19bc0c610
  5890 ms  0xd28 SSL_AuthCertificateComplete()
  5890 ms  0xd28 fd:0x7ff1b27ace20
  5890 ms  0xd28 err:0x0
  5890 ms  0xd28 PK11_Encrypt()
  5890 ms  0xd28 symkey:0x7ff19bc09200
  5909 ms  0xd28 SECKEY_DestroyPrivateKey()
  5909 ms  0xd28 privk:0x7ff19bc8d020::7ff19bc8d020  30 93 13 9c                                      0...
  5909 ms  0xd28 privk:0x7ff19bc8d020::7ff19bc8d020  e5 e5 e5 e5                                      ....
  5909 ms  0xd28 SECKEY_DestroyPrivateKey()
  5909 ms  0xd28 privk:0x7ff19bc8b020::7ff19bc8b020  00 91 13 9c                                      ....
  5909 ms  0xd28 privk:0x7ff19bc8b020::7ff19bc8b020  e5 e5 e5 e5                                      ....
  5910 ms  0xd28 PK11_Encrypt()
  5910 ms  0xd28 symkey:0x7ff19bc09080
  5916 ms  0xd28 SECKEY_CreateECPrivateKey()
  5916 ms  0xd28 cx:0x7ff1ad1f2fc8
  5917 ms     | 0xd28 EC_ValidatePublicKey()
  5917 ms     | 0xd28 ret:0x0
  5917 ms  0xd28 ret:0x7ff19bc8b020::7ff19bc8b020  00 66 c4 9b                                      .f..
  5924 ms  0xd28 SECKEY_CreateECPrivateKey()
  5924 ms  0xd28 cx:0x7ff1ad1f2fc8
  5925 ms     | 0xd28 EC_ValidatePublicKey()
  5938 ms     | 0xd28 ret:0x0
  5939 ms  0xd28 ret:0x7ff19bd2c820::7ff19bd2c820  50 6b c4 9b                                      Pk..
  5939 ms  0xd28 SECKEY_DestroyPrivateKey()
  5939 ms  0xd28 privk:0x7ff19bc93820::7ff19bc93820  a0 cb 13 9c                                      ....
  5939 ms  0xd28 privk:0x7ff19bc93820::7ff19bc93820  e5 e5 e5 e5                                      ....
  5939 ms  0xd28 SECKEY_DestroyPrivateKey()
  5939 ms  0xd28 privk:0x7ff19bc91820::7ff19bc91820  80 c3 13 9c                                      ....
  5939 ms  0xd28 privk:0x7ff19bc91820::7ff19bc91820  e5 e5 e5 e5                                      ....
  5940 ms  0xd28 SECKEY_DestroyPrivateKey()
  5940 ms  0xd28 privk:0x7ff19bc98020::7ff19bc98020  d0 98 1b 9c                                      ....
  5940 ms  0xd28 privk:0x7ff19bc98020::7ff19bc98020  e5 e5 e5 e5                                      ....
  5940 ms  0xd28 SECKEY_DestroyPrivateKey()
  5940 ms  0xd28 privk:0x7ff19bc96020::7ff19bc96020  e0 cc 13 9c                                      ....
  5940 ms  0xd28 privk:0x7ff19bc96020::7ff19bc96020  e5 e5 e5 e5                                      ....
  5940 ms  0xd28 SECKEY_CreateECPrivateKey()
  5940 ms  0xd28 cx:0x7ff1ad1f3168
  5941 ms     | 0xd28 EC_ValidatePublicKey()
  5941 ms     | 0xd28 ret:0x0
  5941 ms  0xd28 ret:0x7ff19bc91820::7ff19bc91820  20 6e c4 9b                                       n..
  5941 ms  0xd28 SECKEY_CreateECPrivateKey()
  5941 ms  0xd28 cx:0x7ff1ad1f3168
  5942 ms     | 0xd28 EC_ValidatePublicKey()
  5944 ms     | 0xd28 ret:0x0
  5944 ms  0xd28 ret:0x7ff19bc93820::7ff19bc93820  10 45 d1 9b                                      .E..
  5948 ms  0xd28 SSL_ImportFD()
  5948 ms  0xd28 ret:0x7ff19bc0c790
  5948 ms  0xd28 SSL_AuthCertificateHook()
  5948 ms  0xd28 fd:0x7ff19bc0c790
  5948 ms  0xd28 ret:0x0
  5948 ms  0xd28 PR_Connect()
  5948 ms  0xd28 fd:0x7ff19bc0c790
  5965 ms  0xd28 PK11_Derive()
  5965 ms  0xd28 basekey:0x7ff19c2b1700
  5965 ms     | 0xd28 PK11_DeriveWithTemplate()
  5965 ms  0xd28 ret:0x7ff19bc08580
  5965 ms  0xd28 PK11_PubDeriveWithKDF()
  5965 ms  0xd28 seckey:0x7ff19bd2c820
  5965 ms     | 0xd28 EC_ValidatePublicKey()
  5967 ms     | 0xd28 ret:0x0
  5968 ms  0xd28 ret:0x7ff19c2b1700
  5968 ms  SECKEY_ECParamsToKeySize()
  5968 ms  0xd28 ret:0x100
  5968 ms  0xd28 PK11_DeriveWithFlags()
  5968 ms  0xd28 basekey:0x7ff19bc08580
  5968 ms     | 0xd28 PK11_DeriveWithTemplate()
  5968 ms  0xd28 ret:0x7ff19bc09600
  5969 ms  0xd28 PK11_Derive()
  5969 ms  0xd28 basekey:0x7ff19c2b1700
  5969 ms     | 0xd28 PK11_DeriveWithTemplate()
  5969 ms  0xd28 ret:0x7ff19bc09980
  5969 ms  0xd28 PK11_DeriveWithFlags()
  5969 ms  0xd28 basekey:0x7ff19bc09980
  5969 ms     | 0xd28 PK11_DeriveWithTemplate()
  5969 ms  0xd28 ret:0x7ff19bc08580
  5969 ms  0xd28 PK11_DeriveWithFlags()
  5969 ms  0xd28 basekey:0x7ff19bc09980
  5969 ms     | 0xd28 PK11_DeriveWithTemplate()
  5969 ms  0xd28 ret:0x7ff19c2b1700
  5969 ms  0xd28 PK11_DeriveWithFlags()
  5969 ms  0xd28 basekey:0x7ff19bc09980
  5969 ms     | 0xd28 PK11_DeriveWithTemplate()
  5969 ms  0xd28 ret:0x7ff19bc09600
  5969 ms  0xd28 PK11_Derive()
  5969 ms  0xd28 basekey:0x7ff19bc09a00
  5969 ms     | 0xd28 PK11_DeriveWithTemplate()
  5969 ms  0xd28 ret:0x7ff19bc09a80
  5969 ms  0xd28 PK11_DeriveWithFlags()
  5969 ms  0xd28 basekey:0x7ff19c2b1700
  5969 ms     | 0xd28 PK11_DeriveWithTemplate()
  5969 ms  0xd28 ret:0x7ff19bc09980
  5969 ms  0xd28 PK11_DeriveWithFlags()
  5969 ms  0xd28 basekey:0x7ff19c2b1700
  5969 ms     | 0xd28 PK11_DeriveWithTemplate()
  5969 ms  0xd28 ret:0x7ff19bc09600
           /* TID 0xdc6 */
  5970 ms  0xdc6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5970 ms  0xdc6 ret:0x0
           /* TID 0xd28 */
  5971 ms  0xd28 PK11_DeriveWithFlags()
  5971 ms  0xd28 basekey:0x7ff19c2b1700
  5971 ms     | 0xd28 PK11_DeriveWithTemplate()
  5971 ms  0xd28 ret:0x7ff19bc09600
  5980 ms  0xd28 SSL_AuthCertificateComplete()
  5980 ms  0xd28 fd:0x7ff19bc0c820
  5980 ms  0xd28 err:0x0
  5980 ms     | 0xd28 PK11_DeriveWithFlags()
  5980 ms     | 0xd28 basekey:0x7ff19bc09a80
  5980 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5980 ms     | 0xd28 ret:0x7ff19bc09600
  5980 ms     | 0xd28 PK11_DeriveWithFlags()
  5980 ms     | 0xd28 basekey:0x7ff19bc09a80
  5980 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5980 ms     | 0xd28 ret:0x7ff19bc09a00
  5980 ms     | 0xd28 PK11_DeriveWithFlags()
  5980 ms     | 0xd28 basekey:0x7ff19bc09a80
  5980 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5980 ms     | 0xd28 ret:0x7ff19bc09f80
  5981 ms     | 0xd28 PK11_DeriveWithFlags()
  5981 ms     | 0xd28 basekey:0x7ff19bc08580
  5981 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5981 ms     | 0xd28 ret:0x7ff19bc08100
  5981 ms     | 0xd28 PK11_DeriveWithFlags()
  5981 ms     | 0xd28 basekey:0x7ff19bc08580
  5981 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5981 ms     | 0xd28 ret:0x7ff19bcf7400
  5981 ms     | 0xd28 PK11_DeriveWithFlags()
  5981 ms     | 0xd28 basekey:0x7ff19bc09a00
  5981 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5981 ms     | 0xd28 ret:0x7ff19bcf7400
  5981 ms     | 0xd28 PK11_DeriveWithFlags()
  5981 ms     | 0xd28 basekey:0x7ff19bc09a00
  5981 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5981 ms     | 0xd28 ret:0x7ff19bcf7500
  5981 ms     | 0xd28 PK11_DeriveWithFlags()
  5981 ms     | 0xd28 basekey:0x7ff19bc08580
  5981 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5981 ms     | 0xd28 ret:0x7ff19bc09980
  5981 ms     | 0xd28 PK11_Encrypt()
  5981 ms     | 0xd28 symkey:0x7ff19bc08100
  5981 ms     | 0xd28 PK11_DeriveWithFlags()
  5981 ms     | 0xd28 basekey:0x7ff19bc09600
  5981 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5981 ms     | 0xd28 ret:0x7ff19bc09980
  5981 ms     | 0xd28 PK11_DeriveWithFlags()
  5981 ms     | 0xd28 basekey:0x7ff19bc09600
  5981 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5981 ms     | 0xd28 ret:0x7ff19bcf7500
  5981 ms     | 0xd28 PK11_DeriveWithFlags()
  5981 ms     | 0xd28 basekey:0x7ff19bc09a80
  5981 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  5981 ms     | 0xd28 ret:0x7ff19bc08100
  5982 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  5982 ms     | 0xd28 privk:0x7ff19bd2c820::7ff19bd2c820  50 6b c4 9b                                      Pk..
  5982 ms     | 0xd28 privk:0x7ff19bd2c820::7ff19bd2c820  e5 e5 e5 e5                                      ....
  5982 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  5982 ms     | 0xd28 privk:0x7ff19bc8b020::7ff19bc8b020  00 66 c4 9b                                      .f..
  5982 ms     | 0xd28 privk:0x7ff19bc8b020::7ff19bc8b020  e5 e5 e5 e5                                      ....
  5983 ms  0xd28 PK11_Derive()
  5983 ms  0xd28 basekey:0x7ff19c2b1700
  5983 ms     | 0xd28 PK11_DeriveWithTemplate()
  5983 ms  0xd28 ret:0x7ff19bc08580
  5983 ms  0xd28 PK11_PubDeriveWithKDF()
  5983 ms  0xd28 seckey:0x7ff19bc93820
  5983 ms     | 0xd28 EC_ValidatePublicKey()
  5985 ms     | 0xd28 ret:0x0
  5986 ms  0xd28 ret:0x7ff19c2b1700
  5986 ms  SECKEY_ECParamsToKeySize()
  5986 ms  0xd28 ret:0x100
  5986 ms  0xd28 PK11_DeriveWithFlags()
  5986 ms  0xd28 basekey:0x7ff19bc08580
  5986 ms     | 0xd28 PK11_DeriveWithTemplate()
  5986 ms  0xd28 ret:0x7ff19bc09a80
  5986 ms  0xd28 PK11_Derive()
  5986 ms  0xd28 basekey:0x7ff19c2b1700
  5986 ms     | 0xd28 PK11_DeriveWithTemplate()
  5986 ms  0xd28 ret:0x7ff19bcf7500
  5986 ms  0xd28 PK11_DeriveWithFlags()
  5986 ms  0xd28 basekey:0x7ff19bcf7500
  5986 ms     | 0xd28 PK11_DeriveWithTemplate()
  5986 ms  0xd28 ret:0x7ff19bc08580
  5986 ms  0xd28 PK11_DeriveWithFlags()
  5986 ms  0xd28 basekey:0x7ff19bcf7500
  5986 ms     | 0xd28 PK11_DeriveWithTemplate()
  5986 ms  0xd28 ret:0x7ff19c2b1700
  5986 ms  0xd28 PK11_DeriveWithFlags()
  5986 ms  0xd28 basekey:0x7ff19bcf7500
  5986 ms     | 0xd28 PK11_DeriveWithTemplate()
  5986 ms  0xd28 ret:0x7ff19bc09a80
  5986 ms  0xd28 PK11_Derive()
  5986 ms  0xd28 basekey:0x7ff19bcf7800
  5986 ms     | 0xd28 PK11_DeriveWithTemplate()
  5986 ms  0xd28 ret:0x7ff19bcf7880
  5986 ms  0xd28 PK11_DeriveWithFlags()
  5986 ms  0xd28 basekey:0x7ff19c2b1700
  5986 ms     | 0xd28 PK11_DeriveWithTemplate()
  5986 ms  0xd28 ret:0x7ff19bcf7500
  5986 ms  0xd28 PK11_DeriveWithFlags()
  5986 ms  0xd28 basekey:0x7ff19c2b1700
  5986 ms     | 0xd28 PK11_DeriveWithTemplate()
  5986 ms  0xd28 ret:0x7ff19bc09a80
           /* TID 0xdc7 */
  5999 ms  0xdc7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5999 ms  0xdc7 ret:0x0
           /* TID 0xd28 */
  5999 ms  0xd28 PK11_DeriveWithFlags()
  5999 ms  0xd28 basekey:0x7ff19c2b1700
  5999 ms     | 0xd28 PK11_DeriveWithTemplate()
  5999 ms  0xd28 ret:0x7ff19bc09a80
  6000 ms  0xd28 PK11_Encrypt()
  6000 ms  0xd28 symkey:0x7ff19bc09980
  6000 ms  0xd28 PK11_Encrypt()
  6000 ms  0xd28 symkey:0x7ff19bc09980
  6000 ms  0xd28 SSL_AuthCertificateComplete()
  6000 ms  0xd28 fd:0x7ff19bc0c610
  6000 ms  0xd28 err:0x0
  6000 ms     | 0xd28 PK11_DeriveWithFlags()
  6000 ms     | 0xd28 basekey:0x7ff19bcf7880
  6000 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6000 ms     | 0xd28 ret:0x7ff19bc09a80
  6000 ms     | 0xd28 PK11_DeriveWithFlags()
  6000 ms     | 0xd28 basekey:0x7ff19bcf7880
  6000 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6000 ms     | 0xd28 ret:0x7ff19bcf7800
  6000 ms     | 0xd28 PK11_DeriveWithFlags()
  6000 ms     | 0xd28 basekey:0x7ff19bcf7880
  6000 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6000 ms     | 0xd28 ret:0x7ff19bcf7d80
  6000 ms     | 0xd28 PK11_DeriveWithFlags()
  6000 ms     | 0xd28 basekey:0x7ff19bc08580
  6000 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6000 ms     | 0xd28 ret:0x7ff19bcf7e80
  6000 ms     | 0xd28 PK11_DeriveWithFlags()
  6000 ms     | 0xd28 basekey:0x7ff19bc08580
  6000 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6000 ms     | 0xd28 ret:0x7ff19bcf7f00
  6000 ms     | 0xd28 PK11_DeriveWithFlags()
  6000 ms     | 0xd28 basekey:0x7ff19bcf7800
  6000 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6000 ms     | 0xd28 ret:0x7ff19bcf7f00
  6000 ms     | 0xd28 PK11_DeriveWithFlags()
  6000 ms     | 0xd28 basekey:0x7ff19bcf7800
  6000 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6000 ms     | 0xd28 ret:0x7ff19bcf7f80
  6000 ms     | 0xd28 PK11_DeriveWithFlags()
  6000 ms     | 0xd28 basekey:0x7ff19bc08580
  6000 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6001 ms     | 0xd28 ret:0x7ff19bcf7500
  6001 ms     | 0xd28 PK11_Encrypt()
  6001 ms     | 0xd28 symkey:0x7ff19bcf7e80
  6001 ms     | 0xd28 PK11_DeriveWithFlags()
  6001 ms     | 0xd28 basekey:0x7ff19bc09a80
  6001 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6001 ms     | 0xd28 ret:0x7ff19bcf7500
  6001 ms     | 0xd28 PK11_DeriveWithFlags()
  6001 ms     | 0xd28 basekey:0x7ff19bc09a80
  6001 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6001 ms     | 0xd28 ret:0x7ff19bcf7f80
  6001 ms     | 0xd28 PK11_DeriveWithFlags()
  6001 ms     | 0xd28 basekey:0x7ff19bcf7880
  6001 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6001 ms     | 0xd28 ret:0x7ff19bcf7e80
  6001 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  6001 ms     | 0xd28 privk:0x7ff19bc93820::7ff19bc93820  10 45 d1 9b                                      .E..
  6001 ms     | 0xd28 privk:0x7ff19bc93820::7ff19bc93820  e5 e5 e5 e5                                      ....
  6001 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  6001 ms     | 0xd28 privk:0x7ff19bc91820::7ff19bc91820  20 6e c4 9b                                       n..
  6001 ms     | 0xd28 privk:0x7ff19bc91820::7ff19bc91820  e5 e5 e5 e5                                      ....
  6004 ms  0xd28 PK11_Encrypt()
  6004 ms  0xd28 symkey:0x7ff19bcf7500
  6009 ms  0xd28 PK11_DeriveWithFlags()
  6009 ms  0xd28 basekey:0x7ff19bc08100
  6009 ms     | 0xd28 PK11_DeriveWithTemplate()
  6009 ms  0xd28 ret:0x7ff19c2b1700
  6009 ms  0xd28 PK11_DeriveWithFlags()
  6009 ms  0xd28 basekey:0x7ff19bc08100
  6009 ms     | 0xd28 PK11_DeriveWithTemplate()
  6009 ms  0xd28 ret:0x7ff19c2b1700
  6009 ms  0xd28 PK11_Encrypt()
  6009 ms  0xd28 symkey:0x7ff19bc09980
  6009 ms  0xd28 PK11_Encrypt()
  6009 ms  0xd28 symkey:0x7ff19bc09980
  6010 ms  0xd28 SSL_ImportFD()
  6010 ms  0xd28 ret:0x7ff1b27ac7f0
  6010 ms  0xd28 SSL_AuthCertificateHook()
  6010 ms  0xd28 fd:0x7ff1b27ac7f0
  6010 ms  0xd28 ret:0x0
  6010 ms  0xd28 PR_Connect()
  6010 ms  0xd28 fd:0x7ff1b27ac7f0
           /* TID 0xd30 */
  6012 ms  0xd30 PR_Close()
  6012 ms  0xd30 fd:0x7ff19bc0c370
           /* TID 0xd28 */
  6012 ms  0xd28 SECKEY_CreateECPrivateKey()
  6012 ms  0xd28 cx:0x7ff1ad1f3308
  6012 ms     | 0xd28 EC_ValidatePublicKey()
  6012 ms     | 0xd28 ret:0x0
  6012 ms  0xd28 ret:0x7ff19bc93820::7ff19bc93820  a0 6b c4 9b                                      .k..
  6012 ms  0xd28 SECKEY_CreateECPrivateKey()
  6012 ms  0xd28 cx:0x7ff1ad1f3308
  6013 ms     | 0xd28 EC_ValidatePublicKey()
  6014 ms     | 0xd28 ret:0x0
  6014 ms  0xd28 ret:0x7ff19c249020::7ff19c249020  10 6f c4 9b                                      .o..
           /* TID 0xd30 */
  6029 ms  0xd30 PR_Close()
  6029 ms  0xd30 fd:0x7ff19bc0ca90
           /* TID 0xd28 */
  6030 ms  0xd28 PK11_DeriveWithFlags()
  6030 ms  0xd28 basekey:0x7ff19bcf7e80
  6030 ms     | 0xd28 PK11_DeriveWithTemplate()
  6030 ms  0xd28 ret:0x7ff19c2b1700
  6030 ms  0xd28 PK11_DeriveWithFlags()
  6030 ms  0xd28 basekey:0x7ff19bcf7e80
  6030 ms     | 0xd28 PK11_DeriveWithTemplate()
  6030 ms  0xd28 ret:0x7ff19c2b1700
  6030 ms  0xd28 PR_Close()
  6030 ms  0xd28 fd:0x7ff19bc0c610
  6030 ms     | 0xd28 PK11_Encrypt()
  6030 ms     | 0xd28 symkey:0x7ff19bcf7500
  6035 ms  0xd28 SECKEY_CreateECPrivateKey()
  6035 ms  0xd28 cx:0x7ff1ad1f34a8
  6036 ms     | 0xd28 EC_ValidatePublicKey()
  6036 ms     | 0xd28 ret:0x0
  6036 ms  0xd28 ret:0x7ff19bc90820::7ff19bc90820  b0 6f c4 9b                                      .o..
  6036 ms  0xd28 SECKEY_CreateECPrivateKey()
  6036 ms  0xd28 cx:0x7ff1ad1f34a8
  6037 ms     | 0xd28 EC_ValidatePublicKey()
  6038 ms     | 0xd28 ret:0x0
  6038 ms  0xd28 ret:0x7ff19c257820::7ff19c257820  d0 7d de 9b                                      .}..
  6045 ms  0xd28 SSL_ImportFD()
  6045 ms  0xd28 ret:0x7ff1b27ac9d0
  6045 ms  0xd28 SSL_AuthCertificateHook()
  6045 ms  0xd28 fd:0x7ff1b27ac9d0
  6045 ms  0xd28 ret:0x0
  6045 ms  0xd28 PR_Connect()
  6045 ms  0xd28 fd:0x7ff1b27ac9d0
  6051 ms  0xd28 SSL_ImportFD()
  6051 ms  0xd28 ret:0x7ff19bcf20d0
  6051 ms  0xd28 SSL_AuthCertificateHook()
  6051 ms  0xd28 fd:0x7ff19bcf20d0
  6051 ms  0xd28 ret:0x0
  6054 ms  SECKEY_ECParamsToBasePointOrderLen()
  6054 ms  0xd28 ret:0x180
  6054 ms  SECKEY_ECParamsToBasePointOrderLen()
  6054 ms  0xd28 ret:0x180
  6054 ms  0xd28 EC_ValidatePublicKey()
  6056 ms  0xd28 ret:0x0
  6062 ms  0xd28 PK11_Encrypt()
  6062 ms  0xd28 symkey:0x7ff19c2b2180
  6063 ms  0xd28 PR_Connect()
  6063 ms  0xd28 fd:0x7ff19bcf20d0
  6063 ms  0xd28 SSL_ImportFD()
  6063 ms  0xd28 ret:0x7ff19bcf2040
  6063 ms  0xd28 SSL_AuthCertificateHook()
  6063 ms  0xd28 fd:0x7ff19bcf2040
  6063 ms  0xd28 ret:0x0
  6063 ms  0xd28 PR_Connect()
  6063 ms  0xd28 fd:0x7ff19bcf2040
           /* TID 0xd85 */
  6066 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6066 ms  0xd85 ret:0x0
  6066 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6066 ms  0xd85 ret:0x0
           /* TID 0xd28 */
  6068 ms  SECKEY_ECParamsToKeySize()
  6068 ms  0xd28 ret:0xff
  6068 ms  0xd28 SECKEY_CreateECPrivateKey()
  6068 ms  0xd28 cx:0x7ff1ad1f34a8
  6068 ms     | 0xd28 EC_ValidatePublicKey()
  6068 ms     | 0xd28 ret:0x0
  6068 ms  0xd28 ret:0x7ff198dca820::7ff198dca820  10 9a 13 9c                                      ....
  6068 ms  0xd28 PK11_PubDeriveWithKDF()
  6068 ms  0xd28 seckey:0x7ff198dca820
  6068 ms     | 0xd28 EC_ValidatePublicKey()
  6068 ms     | 0xd28 ret:0x0
  6070 ms  0xd28 ret:0x7ff19bcf7d80
  6070 ms  0xd28 PK11_DeriveWithFlags()
  6070 ms  0xd28 basekey:0x7ff19bcf7d80
  6070 ms     | 0xd28 PK11_DeriveWithTemplate()
  6070 ms  0xd28 ret:0x7ff19bcf7800
  6070 ms  0xd28 PK11_Derive()
  6070 ms  0xd28 basekey:0x7ff19bcf7800
  6070 ms     | 0xd28 PK11_DeriveWithTemplate()
  6070 ms  0xd28 ret:0x7ff19bc09a80
  6070 ms  0xd28 SECKEY_DestroyPrivateKey()
  6070 ms  0xd28 privk:0x7ff198dca820::7ff198dca820  10 9a 13 9c                                      ....
  6071 ms  0xd28 privk:0x7ff198dca820::7ff198dca820  e5 e5 e5 e5                                      ....
  6072 ms  0xd28 PK11_Encrypt()
  6072 ms  0xd28 symkey:0x7ff19bcf8e80
  6073 ms  0xd28 SSL_AuthCertificateComplete()
  6073 ms  0xd28 fd:0x7ff1b27ac7f0
  6073 ms  0xd28 err:0x0
  6073 ms  0xd28 PK11_Encrypt()
  6073 ms  0xd28 symkey:0x7ff19bcf8e80
  6073 ms  0xd28 PK11_Encrypt()
  6073 ms  0xd28 symkey:0x7ff19bcf8e80
           /* TID 0xdc6 */
  6077 ms  0xdc6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6077 ms  0xdc6 ret:0x0
  6077 ms  0xdc6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6077 ms  0xdc6 ret:0x0
           /* TID 0xd28 */
  6078 ms  SECKEY_ECParamsToKeySize()
  6078 ms  0xd28 ret:0x180
  6078 ms  0xd28 SECKEY_CreateECPrivateKey()
  6078 ms  0xd28 cx:0x7ff1ad1f3308
  6080 ms     | 0xd28 EC_ValidatePublicKey()
  6081 ms     | 0xd28 ret:0x0
  6081 ms  0xd28 ret:0x7ff198dcf820::7ff198dcf820  e0 cc 13 9c                                      ....
  6081 ms  0xd28 PK11_PubDeriveWithKDF()
  6081 ms  0xd28 seckey:0x7ff198dcf820
  6081 ms     | 0xd28 EC_ValidatePublicKey()
  6083 ms     | 0xd28 ret:0x0
  6084 ms  0xd28 ret:0x7ff19bcf7d80
  6085 ms  0xd28 PK11_DeriveWithFlags()
  6085 ms  0xd28 basekey:0x7ff19bcf7d80
  6085 ms     | 0xd28 PK11_DeriveWithTemplate()
  6085 ms  0xd28 ret:0x7ff19bcf7e80
  6085 ms  0xd28 PK11_Derive()
  6085 ms  0xd28 basekey:0x7ff19bcf7e80
  6085 ms     | 0xd28 PK11_DeriveWithTemplate()
  6085 ms  0xd28 ret:0x7ff19bcf7f00
  6085 ms  0xd28 SECKEY_DestroyPrivateKey()
  6085 ms  0xd28 privk:0x7ff198dcf820::7ff198dcf820  e0 cc 13 9c                                      ....
  6085 ms  0xd28 privk:0x7ff198dcf820::7ff198dcf820  e5 e5 e5 e5                                      ....
  6107 ms  0xd28 SSL_AuthCertificateComplete()
  6107 ms  0xd28 fd:0x7ff19bc0c790
  6107 ms  0xd28 err:0x0
           /* TID 0xd30 */
  6108 ms  0xd30 PR_Close()
  6108 ms  0xd30 fd:0x7ff19bc0c280
           /* TID 0xd28 */
  6108 ms  0xd28 SECKEY_DestroyPrivateKey()
  6108 ms  0xd28 privk:0x7ff19c257820::7ff19c257820  d0 7d de 9b                                      .}..
  6108 ms  0xd28 privk:0x7ff19c257820::7ff19c257820  e5 e5 e5 e5                                      ....
  6111 ms  0xd28 SECKEY_DestroyPrivateKey()
  6111 ms  0xd28 privk:0x7ff19bc90820::7ff19bc90820  b0 6f c4 9b                                      .o..
  6111 ms  0xd28 privk:0x7ff19bc90820::7ff19bc90820  e5 e5 e5 e5                                      ....
  6111 ms  0xd28 PK11_Encrypt()
  6111 ms  0xd28 symkey:0x7ff19bcf8e80
  6111 ms  0xd28 SECKEY_CreateECPrivateKey()
  6111 ms  0xd28 cx:0x7ff1ad1f3168
  6112 ms     | 0xd28 EC_ValidatePublicKey()
  6112 ms     | 0xd28 ret:0x0
  6112 ms  0xd28 ret:0x7ff198dd0020::7ff198dd0020  70 69 c4 9b                                      pi..
  6112 ms  0xd28 SECKEY_CreateECPrivateKey()
  6112 ms  0xd28 cx:0x7ff1ad1f3168
  6113 ms     | 0xd28 EC_ValidatePublicKey()
  6114 ms     | 0xd28 ret:0x0
  6114 ms  0xd28 ret:0x7ff198dd2020::7ff198dd2020  40 77 de 9b                                      @w..
  6119 ms  0xd28 SECKEY_CreateECPrivateKey()
  6119 ms  0xd28 cx:0x7ff1ad1f3cc8
  6119 ms     | 0xd28 EC_ValidatePublicKey()
  6119 ms     | 0xd28 ret:0x0
  6120 ms  0xd28 ret:0x7ff198dd4020::7ff198dd4020  60 cf 13 9c                                      `...
  6120 ms  0xd28 SECKEY_CreateECPrivateKey()
  6120 ms  0xd28 cx:0x7ff1ad1f3cc8
  6120 ms     | 0xd28 EC_ValidatePublicKey()
  6122 ms     | 0xd28 ret:0x0
  6122 ms  0xd28 ret:0x7ff198dd6020::7ff198dd6020  60 da 4b bc                                      `.K.
  6126 ms  0xd28 SECKEY_CreateECPrivateKey()
  6126 ms  0xd28 cx:0x7ff1ad1f3e68
  6126 ms     | 0xd28 EC_ValidatePublicKey()
  6126 ms     | 0xd28 ret:0x0
  6126 ms  0xd28 ret:0x7ff198dd8820::7ff198dd8820  e0 dc 4b bc                                      ..K.
  6126 ms  0xd28 SECKEY_CreateECPrivateKey()
  6126 ms  0xd28 cx:0x7ff1ad1f3e68
  6127 ms     | 0xd28 EC_ValidatePublicKey()
  6128 ms     | 0xd28 ret:0x0
  6128 ms  0xd28 ret:0x7ff198dda820::7ff198dda820  60 a0 d4 98                                      `...
  6141 ms  0xd28 SECKEY_DestroyPrivateKey()
  6141 ms  0xd28 privk:0x7ff19c249020::7ff19c249020  10 6f c4 9b                                      .o..
  6141 ms  0xd28 privk:0x7ff19c249020::7ff19c249020  e5 e5 e5 e5                                      ....
  6141 ms  0xd28 SECKEY_DestroyPrivateKey()
  6141 ms  0xd28 privk:0x7ff19bc93820::7ff19bc93820  a0 6b c4 9b                                      .k..
  6141 ms  0xd28 privk:0x7ff19bc93820::7ff19bc93820  e5 e5 e5 e5                                      ....
  6150 ms  0xd28 PK11_Encrypt()
  6150 ms  0xd28 symkey:0x7ff19bc08d80
  6159 ms  SECKEY_ECParamsToKeySize()
  6159 ms  0xd28 ret:0x100
  6159 ms  SECKEY_ECParamsToBasePointOrderLen()
  6159 ms  0xd28 ret:0x100
  6159 ms  SECKEY_ECParamsToBasePointOrderLen()
  6159 ms  0xd28 ret:0x100
  6159 ms  0xd28 EC_ValidatePublicKey()
  6161 ms  0xd28 ret:0x0
           /* TID 0xdc7 */
  6162 ms  SECKEY_ECParamsToBasePointOrderLen()
  6162 ms  0xdc7 ret:0x180
  6162 ms  SECKEY_ECParamsToBasePointOrderLen()
  6162 ms  0xdc7 ret:0x180
  6162 ms  0xdc7 EC_ValidatePublicKey()
  6164 ms  0xdc7 ret:0x0
  6167 ms  0xdc7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6167 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6167 ms     | 0xdc7 ret:0x180
  6167 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6167 ms     | 0xdc7 ret:0x180
  6167 ms     | 0xdc7 EC_ValidatePublicKey()
  6168 ms     | 0xdc7 ret:0x0
           /* TID 0xd28 */
  6171 ms  SECKEY_ECParamsToKeySize()
  6179 ms  0xd28 ret:0x100
  6179 ms  0xd28 SECKEY_CreateECPrivateKey()
  6179 ms  0xd28 cx:0x7ff1ad1f3cc8
  6179 ms     | 0xd28 EC_ValidatePublicKey()
  6181 ms     | 0xd28 ret:0x0
  6181 ms  0xd28 ret:0x7ff19bc88020::7ff19bc88020  30 ad d4 98                                      0...
  6181 ms  0xd28 PK11_PubDeriveWithKDF()
  6181 ms  0xd28 seckey:0x7ff19bc88020
  6181 ms     | 0xd28 EC_ValidatePublicKey()
  6183 ms     | 0xd28 ret:0x0
  6184 ms  0xd28 ret:0x7ff19bcf7d80
  6184 ms  0xd28 PK11_DeriveWithFlags()
  6184 ms  0xd28 basekey:0x7ff19bcf7d80
  6184 ms     | 0xd28 PK11_DeriveWithTemplate()
  6184 ms  0xd28 ret:0x7ff19bcf7500
  6184 ms  0xd28 PK11_Derive()
  6184 ms  0xd28 basekey:0x7ff19bcf7500
  6184 ms     | 0xd28 PK11_DeriveWithTemplate()
  6184 ms  0xd28 ret:0x7ff19c2b1700
  6184 ms  0xd28 SECKEY_DestroyPrivateKey()
  6184 ms  0xd28 privk:0x7ff19bc88020::7ff19bc88020  30 ad d4 98                                      0...
  6184 ms  0xd28 privk:0x7ff19bc88020::7ff19bc88020  e5 e5 e5 e5                                      ....
  6184 ms  0xd28 PK11_Encrypt()
  6184 ms  0xd28 symkey:0x7ff198d3b080
           /* TID 0xdc7 */
  6187 ms  0xdc7 ret:0x0
           /* TID 0xd28 */
  6187 ms  0xd28 SSL_AuthCertificateComplete()
  6187 ms  0xd28 fd:0x7ff19bcf20d0
  6187 ms  0xd28 err:0x0
           /* TID 0xd85 */
  6190 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6190 ms  0xd85 ret:0x0
  6190 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6190 ms  0xd85 ret:0x0
           /* TID 0xd28 */
  6190 ms  SECKEY_ECParamsToKeySize()
  6190 ms  0xd28 ret:0x180
  6190 ms  0xd28 SECKEY_CreateECPrivateKey()
  6190 ms  0xd28 cx:0x7ff1ad1f3168
  6192 ms     | 0xd28 EC_ValidatePublicKey()
  6194 ms     | 0xd28 ret:0x0
  6194 ms  0xd28 ret:0x7ff198de0820::7ff198de0820  f0 ab d4 98                                      ....
  6194 ms  0xd28 PK11_PubDeriveWithKDF()
  6194 ms  0xd28 seckey:0x7ff198de0820
  6194 ms     | 0xd28 EC_ValidatePublicKey()
  6195 ms     | 0xd28 ret:0x0
  6197 ms  0xd28 ret:0x7ff19bcf7d80
  6197 ms  0xd28 PK11_DeriveWithFlags()
  6197 ms  0xd28 basekey:0x7ff19bcf7d80
  6197 ms     | 0xd28 PK11_DeriveWithTemplate()
  6197 ms  0xd28 ret:0x7ff19bc08580
  6197 ms  0xd28 PK11_Derive()
  6197 ms  0xd28 basekey:0x7ff19bc08580
  6197 ms     | 0xd28 PK11_DeriveWithTemplate()
  6197 ms  0xd28 ret:0x7ff19bcf7880
  6197 ms  0xd28 SECKEY_DestroyPrivateKey()
  6197 ms  0xd28 privk:0x7ff198de0820::7ff198de0820  f0 ab d4 98                                      ....
  6197 ms  0xd28 privk:0x7ff198de0820::7ff198de0820  e5 e5 e5 e5                                      ....
  6205 ms  0xd28 PK11_Encrypt()
  6205 ms  0xd28 symkey:0x7ff198d3b080
  6205 ms  0xd28 SSL_AuthCertificateComplete()
  6205 ms  0xd28 fd:0x7ff1b27ac9d0
  6205 ms  0xd28 err:0x0
  6206 ms  0xd28 PK11_Encrypt()
  6206 ms  0xd28 symkey:0x7ff19bc09200
  6206 ms  0xd28 PK11_Encrypt()
  6206 ms  0xd28 symkey:0x7ff19bc09080
  6206 ms  0xd28 PK11_Encrypt()
  6206 ms  0xd28 symkey:0x7ff19bc09980
           /* TID 0xdc6 */
  6208 ms  0xdc6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6211 ms  0xdc6 ret:0x0
  6211 ms  0xdc6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6211 ms  0xdc6 ret:0x0
           /* TID 0xd28 */
  6216 ms  SECKEY_ECParamsToKeySize()
  6216 ms  0xd28 ret:0xff
  6216 ms  0xd28 SECKEY_CreateECPrivateKey()
  6216 ms  0xd28 cx:0x7ff1ad1f3e68
  6216 ms     | 0xd28 EC_ValidatePublicKey()
  6216 ms     | 0xd28 ret:0x0
  6216 ms  0xd28 ret:0x7ff19c252020::7ff19c252020  90 67 c4 9b                                      .g..
  6216 ms  0xd28 PK11_PubDeriveWithKDF()
  6216 ms  0xd28 seckey:0x7ff19c252020
  6216 ms     | 0xd28 EC_ValidatePublicKey()
  6216 ms     | 0xd28 ret:0x0
  6217 ms  0xd28 ret:0x7ff19bcf7d80
  6217 ms  0xd28 PK11_DeriveWithFlags()
  6217 ms  0xd28 basekey:0x7ff19bcf7d80
  6217 ms     | 0xd28 PK11_DeriveWithTemplate()
  6217 ms  0xd28 ret:0x7ff19bcf7f80
  6217 ms  0xd28 PK11_Derive()
  6217 ms  0xd28 basekey:0x7ff19bcf7f80
  6217 ms     | 0xd28 PK11_DeriveWithTemplate()
  6217 ms  0xd28 ret:0x7ff19bcf8d00
  6217 ms  0xd28 SECKEY_DestroyPrivateKey()
  6217 ms  0xd28 privk:0x7ff19c252020::7ff19c252020  90 67 c4 9b                                      .g..
  6217 ms  0xd28 privk:0x7ff19c252020::7ff19c252020  e5 e5 e5 e5                                      ....
  6217 ms  0xd28 PK11_Encrypt()
  6217 ms  0xd28 symkey:0x7ff19bffb080
  6221 ms  0xd28 SSL_AuthCertificateComplete()
  6221 ms  0xd28 fd:0x7ff19bcf2040
  6221 ms  0xd28 err:0x0
  6221 ms  0xd28 SECKEY_DestroyPrivateKey()
  6221 ms  0xd28 privk:0x7ff198dd6020::7ff198dd6020  60 da 4b bc                                      `.K.
  6221 ms  0xd28 privk:0x7ff198dd6020::7ff198dd6020  e5 e5 e5 e5                                      ....
  6221 ms  0xd28 SECKEY_DestroyPrivateKey()
  6221 ms  0xd28 privk:0x7ff198dd4020::7ff198dd4020  60 cf 13 9c                                      `...
  6222 ms  0xd28 privk:0x7ff198dd4020::7ff198dd4020  e5 e5 e5 e5                                      ....
  6223 ms  0xd28 PK11_Encrypt()
  6223 ms  0xd28 symkey:0x7ff19bffb080
  6226 ms  0xd28 PK11_Encrypt()
  6226 ms  0xd28 symkey:0x7ff19bffb080
  6226 ms  0xd28 PR_Close()
  6226 ms  0xd28 fd:0x7ff19bcf20d0
  6226 ms     | 0xd28 PK11_Encrypt()
  6226 ms     | 0xd28 symkey:0x7ff198d3b080
  6258 ms  0xd28 SECKEY_DestroyPrivateKey()
  6258 ms  0xd28 privk:0x7ff198dd2020::7ff198dd2020  40 77 de 9b                                      @w..
  6258 ms  0xd28 privk:0x7ff198dd2020::7ff198dd2020  e5 e5 e5 e5                                      ....
  6258 ms  0xd28 SECKEY_DestroyPrivateKey()
  6258 ms  0xd28 privk:0x7ff198dd0020::7ff198dd0020  70 69 c4 9b                                      pi..
  6258 ms  0xd28 privk:0x7ff198dd0020::7ff198dd0020  e5 e5 e5 e5                                      ....
           /* TID 0xd30 */
  6272 ms  0xd30 PR_Close()
  6272 ms  0xd30 fd:0x7ff19bcf27f0
           /* TID 0xd28 */
  6279 ms  0xd28 SECKEY_DestroyPrivateKey()
  6279 ms  0xd28 privk:0x7ff198dda820::7ff198dda820  60 a0 d4 98                                      `...
  6279 ms  0xd28 privk:0x7ff198dda820::7ff198dda820  e5 e5 e5 e5                                      ....
  6279 ms  0xd28 SECKEY_DestroyPrivateKey()
  6279 ms  0xd28 privk:0x7ff198dd8820::7ff198dd8820  e0 dc 4b bc                                      ..K.
  6279 ms  0xd28 privk:0x7ff198dd8820::7ff198dd8820  e5 e5 e5 e5                                      ....
  6279 ms  0xd28 PK11_Encrypt()
  6279 ms  0xd28 symkey:0x7ff19bffb080
           /* TID 0xd30 */
  6289 ms  0xd30 PR_Close()
  6289 ms  0xd30 fd:0x7ff19bc0c2e0
  6339 ms  0xd30 PR_Close()
  6339 ms  0xd30 fd:0x7ff19bc0ccd0
  6353 ms  0xd30 PR_Close()
  6353 ms  0xd30 fd:0x7ff19bc0ca30
           /* TID 0xd28 */
  6360 ms  0xd28 PK11_Encrypt()
  6360 ms  0xd28 symkey:0x7ff19bc08d80
  6379 ms  0xd28 SSL_ImportFD()
  6379 ms  0xd28 ret:0x7ff19bcf2ca0
  6379 ms  0xd28 SSL_AuthCertificateHook()
  6379 ms  0xd28 fd:0x7ff19bcf2ca0
  6379 ms  0xd28 ret:0x0
  6379 ms  0xd28 PR_Connect()
  6379 ms  0xd28 fd:0x7ff19bcf2ca0
  6380 ms  0xd28 SSL_ImportFD()
  6380 ms  0xd28 ret:0x7ff19bcf2ee0
  6380 ms  0xd28 SSL_AuthCertificateHook()
  6380 ms  0xd28 fd:0x7ff19bcf2ee0
  6380 ms  0xd28 ret:0x0
  6380 ms  0xd28 PR_Connect()
  6380 ms  0xd28 fd:0x7ff19bcf2ee0
  6380 ms  0xd28 SSL_ImportFD()
  6380 ms  0xd28 ret:0x7ff19c0d1550
  6380 ms  0xd28 SSL_AuthCertificateHook()
  6380 ms  0xd28 fd:0x7ff19c0d1550
  6380 ms  0xd28 ret:0x0
  6380 ms  0xd28 PR_Connect()
  6380 ms  0xd28 fd:0x7ff19c0d1550
  6380 ms  0xd28 PK11_Encrypt()
  6380 ms  0xd28 symkey:0x7ff19c2b2180
  6380 ms  0xd28 SSL_ImportFD()
  6381 ms  0xd28 ret:0x7ff19c0d1e20
  6381 ms  0xd28 SSL_AuthCertificateHook()
  6381 ms  0xd28 fd:0x7ff19c0d1e20
  6381 ms  0xd28 ret:0x0
  6381 ms  0xd28 PR_Connect()
  6381 ms  0xd28 fd:0x7ff19c0d1e20
  6381 ms  0xd28 SSL_ImportFD()
  6381 ms  0xd28 ret:0x7ff19c0d8d30
  6381 ms  0xd28 SSL_AuthCertificateHook()
  6381 ms  0xd28 fd:0x7ff19c0d8d30
  6381 ms  0xd28 ret:0x0
  6381 ms  0xd28 PR_Connect()
  6381 ms  0xd28 fd:0x7ff19c0d8d30
  6384 ms  0xd28 SSL_ImportFD()
  6385 ms  0xd28 ret:0x7ff19c1c0f70
  6385 ms  0xd28 SSL_AuthCertificateHook()
  6385 ms  0xd28 fd:0x7ff19c1c0f70
  6385 ms  0xd28 ret:0x0
  6385 ms  0xd28 PR_Connect()
  6385 ms  0xd28 fd:0x7ff19c1c0f70
           /* TID 0xd30 */
  6403 ms  0xd30 PR_Close()
  6403 ms  0xd30 fd:0x7ff19bcf25b0
           /* TID 0xd28 */
  6406 ms  0xd28 SECKEY_CreateECPrivateKey()
  6406 ms  0xd28 cx:0x7ff198defda8
  6406 ms     | 0xd28 EC_ValidatePublicKey()
  6406 ms     | 0xd28 ret:0x0
  6406 ms  0xd28 ret:0x7ff198dd1820::7ff198dd1820  20 ae d4 98                                       ...
  6406 ms  0xd28 SECKEY_CreateECPrivateKey()
  6406 ms  0xd28 cx:0x7ff198defda8
  6407 ms     | 0xd28 EC_ValidatePublicKey()
  6409 ms     | 0xd28 ret:0x0
  6409 ms  0xd28 ret:0x7ff198dd4820::7ff198dd4820  40 6c c4 9b                                      @l..
  6417 ms  0xd28 SECKEY_CreateECPrivateKey()
  6417 ms  0xd28 cx:0x7ff198defa68
  6418 ms     | 0xd28 EC_ValidatePublicKey()
  6418 ms     | 0xd28 ret:0x0
  6418 ms  0xd28 ret:0x7ff198dd8020::7ff198dd8020  60 6f c4 9b                                      `o..
  6418 ms  0xd28 SECKEY_CreateECPrivateKey()
  6418 ms  0xd28 cx:0x7ff198defa68
  6418 ms     | 0xd28 EC_ValidatePublicKey()
  6428 ms     | 0xd28 ret:0x0
  6428 ms  0xd28 ret:0x7ff198dda020::7ff198dda020  c0 64 c4 9b                                      .d..
  6429 ms  0xd28 SECKEY_CreateECPrivateKey()
  6429 ms  0xd28 cx:0x7ff198def8c8
  6429 ms     | 0xd28 EC_ValidatePublicKey()
  6429 ms     | 0xd28 ret:0x0
  6429 ms  0xd28 ret:0x7ff198de0820::7ff198de0820  b0 ef 03 9c                                      ....
  6429 ms  0xd28 SECKEY_CreateECPrivateKey()
  6429 ms  0xd28 cx:0x7ff198def8c8
  6430 ms     | 0xd28 EC_ValidatePublicKey()
  6431 ms     | 0xd28 ret:0x0
  6431 ms  0xd28 ret:0x7ff19bc88820::7ff19bc88820  80 08 13 9c                                      ....
  6435 ms  0xd28 SECKEY_CreateECPrivateKey()
  6435 ms  0xd28 cx:0x7ff198defc08
  6446 ms     | 0xd28 EC_ValidatePublicKey()
  6446 ms     | 0xd28 ret:0x0
  6446 ms  0xd28 ret:0x7ff19bfc4020::7ff19bfc4020  d0 08 13 9c                                      ....
  6447 ms  0xd28 SECKEY_CreateECPrivateKey()
  6447 ms  0xd28 cx:0x7ff198defc08
  6447 ms     | 0xd28 EC_ValidatePublicKey()
           /* TID 0xd30 */
  6451 ms  0xd30 PR_Close()
  6451 ms  0xd30 fd:0x7ff19c1c06a0
  6452 ms  0xd30 PR_Close()
  6452 ms  0xd30 fd:0x7ff19bcf2520
           /* TID 0xd28 */
  6453 ms     | 0xd28 ret:0x0
  6453 ms  0xd28 ret:0x7ff19bfc8820::7ff19bfc8820  90 6c c4 9b                                      .l..
           /* TID 0xd30 */
  6455 ms  0xd30 PR_Close()
  6455 ms  0xd30 fd:0x7ff19bcf2520
           /* TID 0xd28 */
  6456 ms  0xd28 SECKEY_CreateECPrivateKey()
  6456 ms  0xd28 cx:0x7ff198deff48
  6456 ms     | 0xd28 EC_ValidatePublicKey()
  6456 ms     | 0xd28 ret:0x0
  6456 ms  0xd28 ret:0x7ff19bfcf020::7ff19bfcf020  20 7e de 9b                                       ~..
  6456 ms  0xd28 SECKEY_CreateECPrivateKey()
  6456 ms  0xd28 cx:0x7ff198deff48
  6457 ms     | 0xd28 EC_ValidatePublicKey()
  6458 ms     | 0xd28 ret:0x0
  6458 ms  0xd28 ret:0x7ff19c197020::7ff19c197020  c0 fe fd 9b                                      ....
  6466 ms  0xd28 PK11_Encrypt()
  6466 ms  0xd28 symkey:0x7ff19bc09200
           /* TID 0xdc7 */
  6469 ms  0xdc7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6469 ms  0xdc7 ret:0x0
  6469 ms  0xdc7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6469 ms  0xdc7 ret:0x0
           /* TID 0xd28 */
  6472 ms  SECKEY_ECParamsToKeySize()
  6472 ms  0xd28 ret:0xff
  6472 ms  0xd28 SECKEY_CreateECPrivateKey()
  6472 ms  0xd28 cx:0x7ff198defda8
  6473 ms     | 0xd28 EC_ValidatePublicKey()
  6473 ms     | 0xd28 ret:0x0
  6473 ms  0xd28 ret:0x7ff1acfe5820::7ff1acfe5820  30 0d fd ac                                      0...
  6473 ms  0xd28 PK11_PubDeriveWithKDF()
  6473 ms  0xd28 seckey:0x7ff1acfe5820
  6473 ms     | 0xd28 EC_ValidatePublicKey()
  6473 ms     | 0xd28 ret:0x0
  6475 ms  0xd28 ret:0x7ff19c2b1700
  6478 ms  0xd28 PK11_DeriveWithFlags()
  6478 ms  0xd28 basekey:0x7ff19c2b1700
  6478 ms     | 0xd28 PK11_DeriveWithTemplate()
  6478 ms  0xd28 ret:0x7ff19bcf7500
  6478 ms  0xd28 PK11_Derive()
  6478 ms  0xd28 basekey:0x7ff19bcf7500
  6478 ms     | 0xd28 PK11_DeriveWithTemplate()
  6478 ms  0xd28 ret:0x7ff19bcf7d80
  6478 ms  0xd28 SECKEY_DestroyPrivateKey()
  6478 ms  0xd28 privk:0x7ff1acfe5820::7ff1acfe5820  30 0d fd ac                                      0...
  6478 ms  0xd28 privk:0x7ff1acfe5820::7ff1acfe5820  e5 e5 e5 e5                                      ....
  6478 ms  0xd28 PK11_Encrypt()
  6478 ms  0xd28 symkey:0x7ff198d3a400
  6479 ms  0xd28 PK11_Encrypt()
  6479 ms  0xd28 symkey:0x7ff19bc08d80
  6479 ms  0xd28 SSL_AuthCertificateComplete()
  6479 ms  0xd28 fd:0x7ff19c0d1e20
  6479 ms  0xd28 err:0x0
  6480 ms  SECKEY_ECParamsToKeySize()
  6480 ms  0xd28 ret:0x100
  6480 ms  0xd28 SECKEY_CreateECPrivateKey()
  6480 ms  0xd28 cx:0x7ff198def8c8
  6481 ms     | 0xd28 EC_ValidatePublicKey()
  6482 ms     | 0xd28 ret:0x0
  6482 ms  0xd28 ret:0x7ff1acfec020::7ff1acfec020  e0 12 15 ad                                      ....
  6482 ms  0xd28 PK11_PubDeriveWithKDF()
  6482 ms  0xd28 seckey:0x7ff1acfec020
  6482 ms     | 0xd28 EC_ValidatePublicKey()
  6488 ms     | 0xd28 ret:0x0
  6491 ms  0xd28 ret:0x7ff19c2b1700
  6491 ms  0xd28 PK11_DeriveWithFlags()
  6491 ms  0xd28 basekey:0x7ff19c2b1700
  6491 ms     | 0xd28 PK11_DeriveWithTemplate()
  6491 ms  0xd28 ret:0x7ff1ad6f7e80
  6491 ms  0xd28 PK11_Derive()
  6491 ms  0xd28 basekey:0x7ff1ad6f7e80
  6491 ms     | 0xd28 PK11_DeriveWithTemplate()
  6491 ms  0xd28 ret:0x7ff1ad6f8100
  6491 ms  0xd28 SECKEY_DestroyPrivateKey()
  6491 ms  0xd28 privk:0x7ff1acfec020::7ff1acfec020  e0 12 15 ad                                      ....
  6491 ms  0xd28 privk:0x7ff1acfec020::7ff1acfec020  e5 e5 e5 e5                                      ....
  6491 ms  0xd28 PK11_Encrypt()
  6491 ms  0xd28 symkey:0x7ff1ae455a00
  6494 ms  0xd28 PK11_Encrypt()
  6494 ms  0xd28 symkey:0x7ff198d3a400
  6494 ms  0xd28 PK11_Encrypt()
  6494 ms  0xd28 symkey:0x7ff198d3a400
  6495 ms  0xd28 SECKEY_CreateECPrivateKey()
  6495 ms  0xd28 cx:0x7ff198df00e8
  6496 ms     | 0xd28 EC_ValidatePublicKey()
  6496 ms     | 0xd28 ret:0x0
  6496 ms  0xd28 ret:0x7ff1ae42a820::7ff1ae42a820  f0 11 15 ad                                      ....
  6496 ms  0xd28 SECKEY_CreateECPrivateKey()
  6496 ms  0xd28 cx:0x7ff198df00e8
  6496 ms     | 0xd28 EC_ValidatePublicKey()
  6498 ms     | 0xd28 ret:0x0
  6498 ms  0xd28 ret:0x7ff1b32ba820::7ff1b32ba820  10 15 15 ad                                      ....
  6504 ms  0xd28 PK11_Derive()
  6504 ms  0xd28 basekey:0x7ff19c2b1700
  6504 ms     | 0xd28 PK11_DeriveWithTemplate()
  6504 ms  0xd28 ret:0x7ff1ae9a1080
  6504 ms  0xd28 PK11_PubDeriveWithKDF()
  6504 ms  0xd28 seckey:0x7ff198dd8020
  6504 ms     | 0xd28 EC_ValidatePublicKey()
  6504 ms     | 0xd28 ret:0x0
  6504 ms  0xd28 ret:0x7ff19c2b1700
  6504 ms  SECKEY_ECParamsToKeySize()
  6504 ms  0xd28 ret:0xff
  6504 ms  0xd28 PK11_DeriveWithFlags()
  6504 ms  0xd28 basekey:0x7ff1ae9a1080
  6504 ms     | 0xd28 PK11_DeriveWithTemplate()
  6505 ms  0xd28 ret:0x7ff1ae9bd880
  6505 ms  0xd28 PK11_Derive()
  6505 ms  0xd28 basekey:0x7ff19c2b1700
  6505 ms     | 0xd28 PK11_DeriveWithTemplate()
  6505 ms  0xd28 ret:0x7ff1af017100
  6505 ms  0xd28 PK11_DeriveWithFlags()
  6505 ms  0xd28 basekey:0x7ff1af017100
  6505 ms     | 0xd28 PK11_DeriveWithTemplate()
  6505 ms  0xd28 ret:0x7ff1ae9a1080
  6505 ms  0xd28 PK11_DeriveWithFlags()
  6505 ms  0xd28 basekey:0x7ff1af017100
  6505 ms     | 0xd28 PK11_DeriveWithTemplate()
  6505 ms  0xd28 ret:0x7ff19c2b1700
  6505 ms  0xd28 PK11_DeriveWithFlags()
  6505 ms  0xd28 basekey:0x7ff1af017100
  6505 ms     | 0xd28 PK11_DeriveWithTemplate()
  6505 ms  0xd28 ret:0x7ff1ae9bd880
  6505 ms  0xd28 PK11_Derive()
  6505 ms  0xd28 basekey:0x7ff1af017180
  6505 ms     | 0xd28 PK11_DeriveWithTemplate()
  6505 ms  0xd28 ret:0x7ff1af017280
  6505 ms  0xd28 PK11_DeriveWithFlags()
  6505 ms  0xd28 basekey:0x7ff19c2b1700
  6505 ms     | 0xd28 PK11_DeriveWithTemplate()
  6505 ms  0xd28 ret:0x7ff1af017100
  6505 ms  0xd28 PK11_DeriveWithFlags()
  6505 ms  0xd28 basekey:0x7ff19c2b1700
  6505 ms     | 0xd28 PK11_DeriveWithTemplate()
  6505 ms  0xd28 ret:0x7ff1ae9bd880
           /* TID 0xd30 */
  6506 ms  0xd30 PR_Close()
  6506 ms  0xd30 fd:0x7ff1af0fed90
           /* TID 0xd28 */
  6508 ms  0xd28 PK11_DeriveWithFlags()
  6508 ms  0xd28 basekey:0x7ff19c2b1700
  6508 ms     | 0xd28 PK11_DeriveWithTemplate()
  6508 ms  0xd28 ret:0x7ff1ae9bd880
  6512 ms  0xd28 PK11_Derive()
  6512 ms  0xd28 basekey:0x7ff1ae9bd880
  6512 ms     | 0xd28 PK11_DeriveWithTemplate()
  6512 ms  0xd28 ret:0x7ff1af017180
  6512 ms  0xd28 PK11_PubDeriveWithKDF()
  6512 ms  0xd28 seckey:0x7ff19bfc4020
  6512 ms     | 0xd28 EC_ValidatePublicKey()
  6512 ms     | 0xd28 ret:0x0
  6512 ms  0xd28 ret:0x7ff1ae9bd880
  6512 ms  SECKEY_ECParamsToKeySize()
  6512 ms  0xd28 ret:0xff
  6512 ms  0xd28 PK11_DeriveWithFlags()
  6512 ms  0xd28 basekey:0x7ff1af017180
  6512 ms     | 0xd28 PK11_DeriveWithTemplate()
  6513 ms  0xd28 ret:0x7ff1ad6f7e00
  6513 ms  0xd28 PK11_Derive()
  6513 ms  0xd28 basekey:0x7ff1ae9bd880
  6513 ms     | 0xd28 PK11_DeriveWithTemplate()
  6513 ms  0xd28 ret:0x7ff1ad6f8080
  6513 ms  0xd28 PK11_DeriveWithFlags()
  6513 ms  0xd28 basekey:0x7ff1ad6f8080
  6513 ms     | 0xd28 PK11_DeriveWithTemplate()
  6513 ms  0xd28 ret:0x7ff1af017180
  6513 ms  0xd28 PK11_DeriveWithFlags()
  6513 ms  0xd28 basekey:0x7ff1ad6f8080
  6513 ms     | 0xd28 PK11_DeriveWithTemplate()
  6513 ms  0xd28 ret:0x7ff1ae9bd880
  6513 ms  0xd28 PK11_DeriveWithFlags()
  6513 ms  0xd28 basekey:0x7ff1ad6f8080
  6513 ms     | 0xd28 PK11_DeriveWithTemplate()
  6513 ms  0xd28 ret:0x7ff1ad6f7e00
  6513 ms  0xd28 PK11_Derive()
  6513 ms  0xd28 basekey:0x7ff1ae598800
  6513 ms     | 0xd28 PK11_DeriveWithTemplate()
  6513 ms  0xd28 ret:0x7ff1ae598880
  6513 ms  0xd28 PK11_DeriveWithFlags()
  6513 ms  0xd28 basekey:0x7ff1ae9bd880
  6513 ms     | 0xd28 PK11_DeriveWithTemplate()
  6513 ms  0xd28 ret:0x7ff1ad6f8080
  6513 ms  0xd28 PK11_DeriveWithFlags()
  6513 ms  0xd28 basekey:0x7ff1ae9bd880
  6513 ms     | 0xd28 PK11_DeriveWithTemplate()
  6513 ms  0xd28 ret:0x7ff1ad6f7e00
  6518 ms  SECKEY_ECParamsToKeySize()
  6518 ms  0xd28 ret:0x100
  6518 ms  SECKEY_ECParamsToBasePointOrderLen()
  6518 ms  0xd28 ret:0x100
  6518 ms  SECKEY_ECParamsToBasePointOrderLen()
  6518 ms  0xd28 ret:0x100
  6518 ms  0xd28 EC_ValidatePublicKey()
  6519 ms  0xd28 ret:0x0
  6521 ms  0xd28 PK11_DeriveWithFlags()
  6521 ms  0xd28 basekey:0x7ff1ae9bd880
  6521 ms     | 0xd28 PK11_DeriveWithTemplate()
  6521 ms  0xd28 ret:0x7ff1ad6f7e00
  6521 ms  0xd28 SECKEY_DestroyPrivateKey()
  6521 ms  0xd28 privk:0x7ff198dd4820::7ff198dd4820  40 6c c4 9b                                      @l..
  6522 ms  0xd28 privk:0x7ff198dd4820::7ff198dd4820  e5 e5 e5 e5                                      ....
  6522 ms  0xd28 SECKEY_DestroyPrivateKey()
  6522 ms  0xd28 privk:0x7ff198dd1820::7ff198dd1820  20 ae d4 98                                       ...
  6522 ms  0xd28 privk:0x7ff198dd1820::7ff198dd1820  e5 e5 e5 e5                                      ....
  6529 ms  SECKEY_ECParamsToKeySize()
  6529 ms  0xd28 ret:0x100
  6529 ms  0xd28 SECKEY_CreateECPrivateKey()
  6529 ms  0xd28 cx:0x7ff198deff48
  6530 ms     | 0xd28 EC_ValidatePublicKey()
  6534 ms     | 0xd28 ret:0x0
           /* TID 0xdca */
  6534 ms  0xdca _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6534 ms  0xdca ret:0x0
           /* TID 0xd28 */
  6534 ms  0xd28 ret:0x7ff1b36d0020::7ff1b36d0020  e0 dc 16 ad                                      ....
  6535 ms  0xd28 PK11_PubDeriveWithKDF()
  6535 ms  0xd28 seckey:0x7ff1b36d0020
  6535 ms     | 0xd28 EC_ValidatePublicKey()
  6538 ms     | 0xd28 ret:0x0
  6539 ms  0xd28 ret:0x7ff1ad6f7e00
  6539 ms  0xd28 PK11_DeriveWithFlags()
  6539 ms  0xd28 basekey:0x7ff1ad6f7e00
  6539 ms     | 0xd28 PK11_DeriveWithTemplate()
  6539 ms  0xd28 ret:0x7ff1ae598800
  6539 ms  0xd28 PK11_Derive()
  6539 ms  0xd28 basekey:0x7ff1ae598800
  6540 ms     | 0xd28 PK11_DeriveWithTemplate()
  6540 ms  0xd28 ret:0x7ff19c28b980
  6540 ms  0xd28 SECKEY_DestroyPrivateKey()
  6540 ms  0xd28 privk:0x7ff1b36d0020::7ff1b36d0020  e0 dc 16 ad                                      ....
  6540 ms  0xd28 privk:0x7ff1b36d0020::7ff1b36d0020  e5 e5 e5 e5                                      ....
  6540 ms  0xd28 PK11_Encrypt()
  6540 ms  0xd28 symkey:0x7ff1af50e080
  6540 ms  0xd28 SSL_ImportFD()
  6540 ms  0xd28 ret:0x7ff1b27acbb0
  6540 ms  0xd28 SSL_AuthCertificateHook()
  6540 ms  0xd28 fd:0x7ff1b27acbb0
  6540 ms  0xd28 ret:0x0
  6540 ms  0xd28 PR_Connect()
  6540 ms  0xd28 fd:0x7ff1b27acbb0
  6540 ms  0xd28 SSL_AuthCertificateComplete()
  6540 ms  0xd28 fd:0x7ff19c0d8d30
  6540 ms  0xd28 err:0x0
  6541 ms  0xd28 PK11_Encrypt()
  6541 ms  0xd28 symkey:0x7ff19bc09980
           /* TID 0xd30 */
  6541 ms  0xd30 PR_Close()
  6541 ms  0xd30 fd:0x7ff1af5cf0a0
           /* TID 0xd85 */
  6541 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6541 ms  0xd85 ret:0x0
           /* TID 0xd30 */
  6543 ms  0xd30 PR_Close()
  6543 ms  0xd30 fd:0x7ff19c0d8640
           /* TID 0xd28 */
  6546 ms  0xd28 PK11_Encrypt()
  6546 ms  0xd28 symkey:0x7ff198d3a400
  6552 ms  0xd28 PK11_Encrypt()
  6552 ms  0xd28 symkey:0x7ff1af50e080
  6554 ms  0xd28 SSL_AuthCertificateComplete()
  6554 ms  0xd28 fd:0x7ff19bcf2ca0
  6554 ms  0xd28 err:0x0
  6554 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  6554 ms     | 0xd28 privk:0x7ff19bc88820::7ff19bc88820  80 08 13 9c                                      ....
  6554 ms     | 0xd28 privk:0x7ff19bc88820::7ff19bc88820  e5 e5 e5 e5                                      ....
  6554 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  6554 ms     | 0xd28 privk:0x7ff198de0820::7ff198de0820  b0 ef 03 9c                                      ....
  6554 ms     | 0xd28 privk:0x7ff198de0820::7ff198de0820  e5 e5 e5 e5                                      ....
  6555 ms  0xd28 PK11_Encrypt()
  6555 ms  0xd28 symkey:0x7ff19bc08d80
  6556 ms  0xd28 PK11_Encrypt()
  6556 ms  0xd28 symkey:0x7ff1ae455a00
  6556 ms  0xd28 PK11_Encrypt()
  6556 ms  0xd28 symkey:0x7ff1ae455a00
  6556 ms  0xd28 PK11_Encrypt()
  6556 ms  0xd28 symkey:0x7ff1ae455a00
  6556 ms  0xd28 PR_Connect()
  6556 ms  0xd28 fd:0x7ff19c1c03d0
           /* TID 0xd30 */
  6559 ms  0xd30 PR_Close()
  6559 ms  0xd30 fd:0x7ff19c0d80d0
           /* TID 0xdca */
  6561 ms  0xdca _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6561 ms  0xdca ret:0x0
           /* TID 0xd28 */
  6571 ms  0xd28 SSL_AuthCertificateComplete()
  6571 ms  0xd28 fd:0x7ff19c1c0f70
  6571 ms  0xd28 err:0x0
           /* TID 0xd30 */
  6572 ms  0xd30 PR_Close()
  6572 ms  0xd30 fd:0x7ff19c227340
           /* TID 0xd28 */
  6577 ms  0xd28 SECKEY_DestroyPrivateKey()
  6577 ms  0xd28 privk:0x7ff19c197020::7ff19c197020  c0 fe fd 9b                                      ....
  6577 ms  0xd28 privk:0x7ff19c197020::7ff19c197020  e5 e5 e5 e5                                      ....
  6577 ms  0xd28 SECKEY_DestroyPrivateKey()
  6577 ms  0xd28 privk:0x7ff19bfcf020::7ff19bfcf020  20 7e de 9b                                       ~..
  6577 ms  0xd28 privk:0x7ff19bfcf020::7ff19bfcf020  e5 e5 e5 e5                                      ....
  6577 ms  0xd28 SECKEY_CreateECPrivateKey()
  6577 ms  0xd28 cx:0x7ff198df1608
  6578 ms     | 0xd28 EC_ValidatePublicKey()
  6578 ms     | 0xd28 ret:0x0
  6578 ms  0xd28 ret:0x7ff19bfbd020::7ff19bfbd020  70 49 d1 9b                                      pI..
  6578 ms  0xd28 SECKEY_CreateECPrivateKey()
  6578 ms  0xd28 cx:0x7ff198df1608
  6578 ms     | 0xd28 EC_ValidatePublicKey()
  6580 ms     | 0xd28 ret:0x0
  6580 ms  0xd28 ret:0x7ff19bfc0020::7ff19bfc0020  20 7e de 9b                                       ~..
  6600 ms  0xd28 SSL_ImportFD()
  6600 ms  0xd28 ret:0x7ff1acfddc10
  6600 ms  0xd28 SSL_AuthCertificateHook()
  6600 ms  0xd28 fd:0x7ff1acfddc10
  6600 ms  0xd28 ret:0x0
  6601 ms  0xd28 PK11_Encrypt()
  6601 ms  0xd28 symkey:0x7ff198d3a400
  6601 ms  0xd28 PR_Connect()
  6601 ms  0xd28 fd:0x7ff1acfddc10
  6601 ms  0xd28 SSL_ImportFD()
  6601 ms  0xd28 ret:0x7ff1acfdd6a0
  6601 ms  0xd28 SSL_AuthCertificateHook()
  6601 ms  0xd28 fd:0x7ff1acfdd6a0
  6601 ms  0xd28 ret:0x0
  6601 ms  0xd28 PR_Connect()
  6601 ms  0xd28 fd:0x7ff1acfdd6a0
  6601 ms  0xd28 PK11_Encrypt()
  6601 ms  0xd28 symkey:0x7ff198d3a400
  6605 ms  0xd28 PR_Close()
  6605 ms  0xd28 fd:0x7ff1b27acbb0
  6606 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  6606 ms     | 0xd28 privk:0x7ff19bfc0020::7ff19bfc0020  20 7e de 9b                                       ~..
  6606 ms     | 0xd28 privk:0x7ff19bfc0020::7ff19bfc0020  e5 e5 e5 e5                                      ....
  6606 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  6606 ms     | 0xd28 privk:0x7ff19bfbd020::7ff19bfbd020  70 49 d1 9b                                      pI..
  6606 ms     | 0xd28 privk:0x7ff19bfbd020::7ff19bfbd020  e5 e5 e5 e5                                      ....
           /* TID 0xd30 */
  6607 ms  0xd30 PR_Close()
  6607 ms  0xd30 fd:0x7ff1acfdd370
  6616 ms  0xd30 PR_Close()
  6616 ms  0xd30 fd:0x7ff19bc0c580
           /* TID 0xd28 */
  6618 ms  SECKEY_ECParamsToKeySize()
  6618 ms  0xd28 ret:0x100
  6618 ms  0xd28 SECKEY_CreateECPrivateKey()
  6618 ms  0xd28 cx:0x7ff198df00e8
  6619 ms     | 0xd28 EC_ValidatePublicKey()
  6620 ms     | 0xd28 ret:0x0
  6620 ms  0xd28 ret:0x7ff19bfbd820::7ff19bfbd820  b0 4a d1 9b                                      .J..
  6620 ms  0xd28 PK11_PubDeriveWithKDF()
  6620 ms  0xd28 seckey:0x7ff19bfbd820
  6620 ms     | 0xd28 EC_ValidatePublicKey()
  6622 ms     | 0xd28 ret:0x0
  6623 ms  0xd28 ret:0x7ff1ad6f7e00
  6623 ms  0xd28 PK11_DeriveWithFlags()
  6623 ms  0xd28 basekey:0x7ff1ad6f7e00
  6623 ms     | 0xd28 PK11_DeriveWithTemplate()
  6623 ms  0xd28 ret:0x7ff19bd43700
  6623 ms  0xd28 PK11_Derive()
  6623 ms  0xd28 basekey:0x7ff19bd43700
  6623 ms     | 0xd28 PK11_DeriveWithTemplate()
  6623 ms  0xd28 ret:0x7ff19bd43b80
  6623 ms  0xd28 SECKEY_DestroyPrivateKey()
  6623 ms  0xd28 privk:0x7ff19bfbd820::7ff19bfbd820  b0 4a d1 9b                                      .J..
  6623 ms  0xd28 privk:0x7ff19bfbd820::7ff19bfbd820  e5 e5 e5 e5                                      ....
  6624 ms  0xd28 PK11_Encrypt()
  6624 ms  0xd28 symkey:0x7ff19bd44d80
  6632 ms  0xd28 PK11_Encrypt()
  6632 ms  0xd28 symkey:0x7ff19bd44d80
  6633 ms  0xd28 SECKEY_CreateECPrivateKey()
  6633 ms  0xd28 cx:0x7ff198df1948
  6633 ms     | 0xd28 EC_ValidatePublicKey()
  6633 ms     | 0xd28 ret:0x0
  6633 ms  0xd28 ret:0x7ff19bfc0020::7ff19bfc0020  f0 46 d1 9b                                      .F..
  6633 ms  0xd28 SECKEY_CreateECPrivateKey()
  6633 ms  0xd28 cx:0x7ff198df1948
  6634 ms     | 0xd28 EC_ValidatePublicKey()
  6638 ms     | 0xd28 ret:0x0
  6638 ms  0xd28 ret:0x7ff19c19a820::7ff19c19a820  d0 4d d1 9b                                      .M..
  6641 ms  0xd28 SECKEY_CreateECPrivateKey()
  6641 ms  0xd28 cx:0x7ff198df1ae8
  6641 ms     | 0xd28 EC_ValidatePublicKey()
  6641 ms     | 0xd28 ret:0x0
  6641 ms  0xd28 ret:0x7ff19c261020::7ff19c261020  20 7e de 9b                                       ~..
  6641 ms  0xd28 SECKEY_CreateECPrivateKey()
  6641 ms  0xd28 cx:0x7ff198df1ae8
  6642 ms     | 0xd28 EC_ValidatePublicKey()
  6643 ms     | 0xd28 ret:0x0
  6643 ms  0xd28 ret:0x7ff1acfe3820::7ff1acfe3820  70 0e 13 9c                                      p...
           /* TID 0xd30 */
  6652 ms  0xd30 PR_Close()
  6652 ms  0xd30 fd:0x7ff1ad177340
           /* TID 0xdc6 */
  6652 ms  0xdc6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6652 ms  0xdc6 ret:0x0
           /* TID 0xd28 */
  6652 ms  0xd28 SSL_AuthCertificateComplete()
  6652 ms  0xd28 fd:0x7ff19bcf2ee0
  6652 ms  0xd28 err:0x0
  6652 ms     | 0xd28 PK11_DeriveWithFlags()
  6652 ms     | 0xd28 basekey:0x7ff1af017280
  6652 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6652 ms     | 0xd28 ret:0x7ff1ad6f7e00
  6652 ms     | 0xd28 PK11_DeriveWithFlags()
  6652 ms     | 0xd28 basekey:0x7ff1af017280
  6652 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6652 ms     | 0xd28 ret:0x7ff19bffb180
  6652 ms     | 0xd28 PK11_DeriveWithFlags()
  6652 ms     | 0xd28 basekey:0x7ff1af017280
  6652 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6652 ms     | 0xd28 ret:0x7ff19bffb200
  6652 ms     | 0xd28 PK11_DeriveWithFlags()
  6652 ms     | 0xd28 basekey:0x7ff1ae9a1080
  6652 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6652 ms     | 0xd28 ret:0x7ff19c135380
  6652 ms     | 0xd28 PK11_DeriveWithFlags()
  6652 ms     | 0xd28 basekey:0x7ff1ae9a1080
  6652 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6653 ms     | 0xd28 ret:0x7ff19c136000
  6653 ms     | 0xd28 PK11_DeriveWithFlags()
  6653 ms     | 0xd28 basekey:0x7ff19bffb180
  6653 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6653 ms     | 0xd28 ret:0x7ff19c136000
  6653 ms     | 0xd28 PK11_DeriveWithFlags()
  6653 ms     | 0xd28 basekey:0x7ff19bffb180
  6653 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6653 ms     | 0xd28 ret:0x7ff19c14eb00
  6653 ms     | 0xd28 PK11_DeriveWithFlags()
  6653 ms     | 0xd28 basekey:0x7ff1ae9a1080
  6653 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6653 ms     | 0xd28 ret:0x7ff1af017100
  6653 ms     | 0xd28 PK11_Encrypt()
  6653 ms     | 0xd28 symkey:0x7ff19c135380
  6653 ms     | 0xd28 PK11_DeriveWithFlags()
  6653 ms     | 0xd28 basekey:0x7ff1ad6f7e00
  6653 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6653 ms     | 0xd28 ret:0x7ff1af017100
  6653 ms     | 0xd28 PK11_DeriveWithFlags()
  6653 ms     | 0xd28 basekey:0x7ff1ad6f7e00
  6653 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6653 ms     | 0xd28 ret:0x7ff19c14eb00
  6653 ms     | 0xd28 PK11_DeriveWithFlags()
  6653 ms     | 0xd28 basekey:0x7ff1af017280
  6653 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6653 ms     | 0xd28 ret:0x7ff19c135380
  6653 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  6653 ms     | 0xd28 privk:0x7ff198dda020::7ff198dda020  c0 64 c4 9b                                      .d..
  6653 ms     | 0xd28 privk:0x7ff198dda020::7ff198dda020  e5 e5 e5 e5                                      ....
  6653 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  6653 ms     | 0xd28 privk:0x7ff198dd8020::7ff198dd8020  60 6f c4 9b                                      `o..
  6653 ms     | 0xd28 privk:0x7ff198dd8020::7ff198dd8020  e5 e5 e5 e5                                      ....
  6653 ms  0xd28 PK11_Encrypt()
  6653 ms  0xd28 symkey:0x7ff1af017100
  6654 ms  0xd28 PK11_Encrypt()
  6654 ms  0xd28 symkey:0x7ff1af017100
  6665 ms  SECKEY_ECParamsToKeySize()
  6665 ms  0xd28 ret:0xff
  6665 ms  0xd28 SECKEY_CreateECPrivateKey()
  6665 ms  0xd28 cx:0x7ff198df1948
  6666 ms     | 0xd28 EC_ValidatePublicKey()
  6666 ms     | 0xd28 ret:0x0
  6666 ms  0xd28 ret:0x7ff1acff0020::7ff1acff0020  10 8a 1f 9c                                      ....
  6666 ms  0xd28 PK11_PubDeriveWithKDF()
  6666 ms  0xd28 seckey:0x7ff1acff0020
  6666 ms     | 0xd28 EC_ValidatePublicKey()
  6666 ms     | 0xd28 ret:0x0
  6667 ms  0xd28 ret:0x7ff19c2b1700
  6667 ms  0xd28 PK11_DeriveWithFlags()
  6667 ms  0xd28 basekey:0x7ff19c2b1700
  6667 ms     | 0xd28 PK11_DeriveWithTemplate()
  6667 ms  0xd28 ret:0x7ff1ae9a1080
  6667 ms  0xd28 PK11_Derive()
  6667 ms  0xd28 basekey:0x7ff1ae9a1080
  6667 ms     | 0xd28 PK11_DeriveWithTemplate()
  6667 ms  0xd28 ret:0x7ff1af017280
  6667 ms  0xd28 SECKEY_DestroyPrivateKey()
  6667 ms  0xd28 privk:0x7ff1acff0020::7ff1acff0020  10 8a 1f 9c                                      ....
  6667 ms  0xd28 privk:0x7ff1acff0020::7ff1acff0020  e5 e5 e5 e5                                      ....
  6667 ms  0xd28 PK11_Encrypt()
  6667 ms  0xd28 symkey:0x7ff19c14ed80
           /* TID 0xd85 */
  6668 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6669 ms  0xd85 ret:0x0
  6669 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6669 ms  0xd85 ret:0x0
           /* TID 0xd30 */
  6671 ms  0xd30 PR_Close()
  6671 ms  0xd30 fd:0x7ff1ad177460
  6671 ms  0xd30 PR_Close()
  6671 ms  0xd30 fd:0x7ff1ad1775b0
           /* TID 0xd28 */
  6671 ms  0xd28 SSL_AuthCertificateComplete()
  6671 ms  0xd28 fd:0x7ff1acfddc10
  6671 ms  0xd28 err:0x0
           /* TID 0xd30 */
  6671 ms  0xd30 PR_Close()
  6671 ms  0xd30 fd:0x7ff19c227850
           /* TID 0xd28 */
  6672 ms  0xd28 PK11_Encrypt()
  6672 ms  0xd28 symkey:0x7ff19c14ed80
           /* TID 0xdca */
  6673 ms  0xdca _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6673 ms  0xdca ret:0x0
  6673 ms  0xdca _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6673 ms  0xdca ret:0x0
           /* TID 0xd28 */
  6673 ms  SECKEY_ECParamsToKeySize()
  6673 ms  0xd28 ret:0xff
  6673 ms  0xd28 SECKEY_CreateECPrivateKey()
  6673 ms  0xd28 cx:0x7ff198df1ae8
  6674 ms     | 0xd28 EC_ValidatePublicKey()
  6674 ms     | 0xd28 ret:0x0
  6674 ms  0xd28 ret:0x7ff1acff0020::7ff1acff0020  10 45 d1 9b                                      .E..
  6674 ms  0xd28 PK11_PubDeriveWithKDF()
  6674 ms  0xd28 seckey:0x7ff1acff0020
  6674 ms     | 0xd28 EC_ValidatePublicKey()
  6674 ms     | 0xd28 ret:0x0
  6675 ms  0xd28 ret:0x7ff19c2b1700
  6675 ms  0xd28 PK11_DeriveWithFlags()
  6675 ms  0xd28 basekey:0x7ff19c2b1700
  6675 ms     | 0xd28 PK11_DeriveWithTemplate()
  6675 ms  0xd28 ret:0x7ff19c14eb00
  6675 ms  0xd28 PK11_Derive()
  6675 ms  0xd28 basekey:0x7ff19c14eb00
  6675 ms     | 0xd28 PK11_DeriveWithTemplate()
  6675 ms  0xd28 ret:0x7ff19c1dbb80
  6675 ms  0xd28 SECKEY_DestroyPrivateKey()
  6675 ms  0xd28 privk:0x7ff1acff0020::7ff1acff0020  10 45 d1 9b                                      .E..
  6675 ms  0xd28 privk:0x7ff1acff0020::7ff1acff0020  e5 e5 e5 e5                                      ....
  6675 ms  0xd28 PK11_Encrypt()
  6675 ms  0xd28 symkey:0x7ff19c28a200
  6677 ms  0xd28 SSL_AuthCertificateComplete()
  6677 ms  0xd28 fd:0x7ff1acfdd6a0
  6677 ms  0xd28 err:0x0
  6677 ms  0xd28 PR_Close()
  6677 ms  0xd28 fd:0x7ff1b27ace20
  6677 ms     | 0xd28 PK11_Encrypt()
  6677 ms     | 0xd28 symkey:0x7ff19bc09200
  6679 ms  0xd28 PK11_Encrypt()
  6679 ms  0xd28 symkey:0x7ff19c28a200
  6686 ms  0xd28 SECKEY_DestroyPrivateKey()
  6686 ms  0xd28 privk:0x7ff1b32ba820::7ff1b32ba820  10 15 15 ad                                      ....
  6686 ms  0xd28 privk:0x7ff1b32ba820::7ff1b32ba820  e5 e5 e5 e5                                      ....
  6686 ms  0xd28 SECKEY_DestroyPrivateKey()
  6686 ms  0xd28 privk:0x7ff1ae42a820::7ff1ae42a820  f0 11 15 ad                                      ....
  6687 ms  0xd28 privk:0x7ff1ae42a820::7ff1ae42a820  e5 e5 e5 e5                                      ....
  6691 ms  0xd28 PK11_DeriveWithFlags()
  6691 ms  0xd28 basekey:0x7ff19c135380
  6691 ms     | 0xd28 PK11_DeriveWithTemplate()
  6691 ms  0xd28 ret:0x7ff19bc08f00
  6691 ms  0xd28 PK11_DeriveWithFlags()
  6691 ms  0xd28 basekey:0x7ff19c135380
  6691 ms     | 0xd28 PK11_DeriveWithTemplate()
  6691 ms  0xd28 ret:0x7ff19bc08f00
  6691 ms  0xd28 PK11_Encrypt()
  6691 ms  0xd28 symkey:0x7ff1af017100
  6693 ms  0xd28 SECKEY_DestroyPrivateKey()
  6693 ms  0xd28 privk:0x7ff19c19a820::7ff19c19a820  d0 4d d1 9b                                      .M..
  6693 ms  0xd28 privk:0x7ff19c19a820::7ff19c19a820  e5 e5 e5 e5                                      ....
  6693 ms  0xd28 SECKEY_DestroyPrivateKey()
  6693 ms  0xd28 privk:0x7ff19bfc0020::7ff19bfc0020  f0 46 d1 9b                                      .F..
  6693 ms  0xd28 privk:0x7ff19bfc0020::7ff19bfc0020  e5 e5 e5 e5                                      ....
  6693 ms  0xd28 PR_Close()
  6693 ms  0xd28 fd:0x7ff1acfddc10
  6693 ms     | 0xd28 PK11_Encrypt()
  6693 ms     | 0xd28 symkey:0x7ff19c14ed80
  6694 ms  0xd28 SSL_ImportFD()
  6694 ms  0xd28 ret:0x7ff1acfdd3d0
  6694 ms  0xd28 SSL_AuthCertificateHook()
  6694 ms  0xd28 fd:0x7ff1acfdd3d0
  6694 ms  0xd28 ret:0x0
  6694 ms  0xd28 PR_Connect()
  6694 ms  0xd28 fd:0x7ff1acfdd3d0
  6694 ms  0xd28 SSL_ImportFD()
  6694 ms  0xd28 ret:0x7ff19c0d8b50
  6694 ms  0xd28 SSL_AuthCertificateHook()
  6694 ms  0xd28 fd:0x7ff19c0d8b50
  6694 ms  0xd28 ret:0x0
  6694 ms  0xd28 PR_Connect()
  6694 ms  0xd28 fd:0x7ff19c0d8b50
  6696 ms  0xd28 SSL_ImportFD()
  6696 ms  0xd28 ret:0x7ff1ad177310
  6696 ms  0xd28 SSL_AuthCertificateHook()
  6696 ms  0xd28 fd:0x7ff1ad177310
  6696 ms  0xd28 ret:0x0
  6696 ms  0xd28 PR_Connect()
  6696 ms  0xd28 fd:0x7ff1ad177310
  6696 ms  0xd28 SSL_ImportFD()
  6696 ms  0xd28 ret:0x7ff19bcf29a0
  6696 ms  0xd28 SSL_AuthCertificateHook()
  6696 ms  0xd28 fd:0x7ff19bcf29a0
  6696 ms  0xd28 ret:0x0
  6696 ms  0xd28 PR_Connect()
  6696 ms  0xd28 fd:0x7ff19bcf29a0
  6696 ms  0xd28 SSL_ImportFD()
  6696 ms  0xd28 ret:0x7ff19c1c0b80
  6696 ms  0xd28 SSL_AuthCertificateHook()
  6696 ms  0xd28 fd:0x7ff19c1c0b80
  6696 ms  0xd28 ret:0x0
  6696 ms  0xd28 PR_Connect()
  6696 ms  0xd28 fd:0x7ff19c1c0b80
  6698 ms  0xd28 PK11_Encrypt()
  6698 ms  0xd28 symkey:0x7ff1af50e080
  6700 ms  0xd28 SECKEY_DestroyPrivateKey()
  6700 ms  0xd28 privk:0x7ff1acfe3820::7ff1acfe3820  70 0e 13 9c                                      p...
  6701 ms  0xd28 privk:0x7ff1acfe3820::7ff1acfe3820  e5 e5 e5 e5                                      ....
  6701 ms  0xd28 SECKEY_DestroyPrivateKey()
  6701 ms  0xd28 privk:0x7ff19c261020::7ff19c261020  20 7e de 9b                                       ~..
  6701 ms  0xd28 privk:0x7ff19c261020::7ff19c261020  e5 e5 e5 e5                                      ....
  6701 ms  0xd28 PR_Close()
  6701 ms  0xd28 fd:0x7ff1acfdd6a0
  6701 ms     | 0xd28 PK11_Encrypt()
  6701 ms     | 0xd28 symkey:0x7ff19c28a200
  6715 ms  0xd28 SSL_ImportFD()
  6715 ms  0xd28 ret:0x7ff1ad1772b0
  6715 ms  0xd28 SSL_AuthCertificateHook()
  6715 ms  0xd28 fd:0x7ff1ad1772b0
  6715 ms  0xd28 ret:0x0
  6715 ms  0xd28 PR_Connect()
  6715 ms  0xd28 fd:0x7ff1ad1772b0
  6718 ms  0xd28 SSL_ImportFD()
  6718 ms  0xd28 ret:0x7ff1ae5b8400
  6719 ms  0xd28 SSL_AuthCertificateHook()
  6719 ms  0xd28 fd:0x7ff1ae5b8400
  6719 ms  0xd28 ret:0x0
  6719 ms  0xd28 PR_Connect()
  6719 ms  0xd28 fd:0x7ff1ae5b8400
  6720 ms  0xd28 SSL_ImportFD()
  6720 ms  0xd28 ret:0x7ff1ae5b81c0
  6720 ms  0xd28 SSL_AuthCertificateHook()
  6720 ms  0xd28 fd:0x7ff1ae5b81c0
  6720 ms  0xd28 ret:0x0
  6720 ms  0xd28 PR_Connect()
  6720 ms  0xd28 fd:0x7ff1ae5b81c0
  6728 ms  0xd28 SSL_ImportFD()
  6728 ms  0xd28 ret:0x7ff1ad177280
  6728 ms  0xd28 SSL_AuthCertificateHook()
  6728 ms  0xd28 fd:0x7ff1ad177280
  6728 ms  0xd28 ret:0x0
           /* TID 0xd30 */
  6730 ms  0xd30 PR_Close()
  6730 ms  0xd30 fd:0x7ff19c0d1b50
           /* TID 0xd28 */
  6730 ms  0xd28 PK11_Encrypt()
  6730 ms  0xd28 symkey:0x7ff198d3a400
  6730 ms  0xd28 PK11_Encrypt()
  6730 ms  0xd28 symkey:0x7ff198d3a400
  6730 ms  0xd28 PR_Connect()
  6730 ms  0xd28 fd:0x7ff1ad177280
  6730 ms  0xd28 PK11_Encrypt()
  6730 ms  0xd28 symkey:0x7ff1af017100
  6731 ms  0xd28 SECKEY_CreateECPrivateKey()
  6731 ms  0xd28 cx:0x7ff198df1948
  6731 ms     | 0xd28 EC_ValidatePublicKey()
  6731 ms     | 0xd28 ret:0x0
  6731 ms  0xd28 ret:0x7ff19bfc1020::7ff19bfc1020  20 7e de 9b                                       ~..
  6732 ms  0xd28 SECKEY_CreateECPrivateKey()
  6732 ms  0xd28 cx:0x7ff198df1948
  6732 ms     | 0xd28 EC_ValidatePublicKey()
  6734 ms     | 0xd28 ret:0x0
  6734 ms  0xd28 ret:0x7ff19c197820::7ff19c197820  d0 0d 13 9c                                      ....
  6735 ms  0xd28 SECKEY_CreateECPrivateKey()
  6735 ms  0xd28 cx:0x7ff198df05c8
  6736 ms     | 0xd28 EC_ValidatePublicKey()
  6736 ms     | 0xd28 ret:0x0
  6736 ms  0xd28 ret:0x7ff19c258020::7ff19c258020  b0 8f 1f 9c                                      ....
  6736 ms  0xd28 SECKEY_CreateECPrivateKey()
  6736 ms  0xd28 cx:0x7ff198df05c8
  6736 ms     | 0xd28 EC_ValidatePublicKey()
  6745 ms     | 0xd28 ret:0x0
  6745 ms  0xd28 ret:0x7ff1acf2a820::7ff1acf2a820  10 0a fd ac                                      ....
           /* TID 0xd30 */
  6747 ms  0xd30 PR_Close()
  6747 ms  0xd30 fd:0x7ff19c0d1af0
  6751 ms  0xd30 PR_Close()
  6751 ms  0xd30 fd:0x7ff19c0d1af0
  6753 ms  0xd30 PR_Close()
  6753 ms  0xd30 fd:0x7ff19c0d1af0
           /* TID 0xdc7 */
  6753 ms  0xdc7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6753 ms  0xdc7 ret:0x0
           /* TID 0xd28 */
  6754 ms  0xd28 SSL_AuthCertificateComplete()
  6754 ms  0xd28 fd:0x7ff19c0d1550
  6754 ms  0xd28 err:0x0
  6754 ms     | 0xd28 PK11_DeriveWithFlags()
  6754 ms     | 0xd28 basekey:0x7ff1ae598880
  6754 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6754 ms     | 0xd28 ret:0x7ff19c1dbb80
  6754 ms     | 0xd28 PK11_DeriveWithFlags()
  6754 ms     | 0xd28 basekey:0x7ff1ae598880
  6754 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6754 ms     | 0xd28 ret:0x7ff19c14eb00
  6754 ms     | 0xd28 PK11_DeriveWithFlags()
  6754 ms     | 0xd28 basekey:0x7ff1ae598880
  6754 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6754 ms     | 0xd28 ret:0x7ff1af017280
  6754 ms     | 0xd28 PK11_DeriveWithFlags()
  6754 ms     | 0xd28 basekey:0x7ff1af017180
  6754 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6754 ms     | 0xd28 ret:0x7ff1ae9a1080
  6754 ms     | 0xd28 PK11_DeriveWithFlags()
  6754 ms     | 0xd28 basekey:0x7ff1af017180
  6754 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6754 ms     | 0xd28 ret:0x7ff19bc08f00
  6754 ms     | 0xd28 PK11_DeriveWithFlags()
  6754 ms     | 0xd28 basekey:0x7ff19c14eb00
  6754 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6754 ms     | 0xd28 ret:0x7ff19bc08f00
  6754 ms     | 0xd28 PK11_DeriveWithFlags()
  6754 ms     | 0xd28 basekey:0x7ff19c14eb00
  6754 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6754 ms     | 0xd28 ret:0x7ff19bc08b80
  6754 ms     | 0xd28 PK11_DeriveWithFlags()
  6754 ms     | 0xd28 basekey:0x7ff1af017180
  6754 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6754 ms     | 0xd28 ret:0x7ff1ad6f8080
  6754 ms     | 0xd28 PK11_Encrypt()
  6754 ms     | 0xd28 symkey:0x7ff1ae9a1080
  6760 ms     | 0xd28 PK11_DeriveWithFlags()
  6760 ms     | 0xd28 basekey:0x7ff19c1dbb80
  6760 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6760 ms     | 0xd28 ret:0x7ff1ad6f8080
  6760 ms     | 0xd28 PK11_DeriveWithFlags()
  6760 ms     | 0xd28 basekey:0x7ff19c1dbb80
  6760 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6760 ms     | 0xd28 ret:0x7ff19bc08b80
  6760 ms     | 0xd28 PK11_DeriveWithFlags()
  6760 ms     | 0xd28 basekey:0x7ff1ae598880
  6760 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6760 ms     | 0xd28 ret:0x7ff1ae9a1080
  6760 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  6760 ms     | 0xd28 privk:0x7ff19bfc8820::7ff19bfc8820  90 6c c4 9b                                      .l..
  6760 ms     | 0xd28 privk:0x7ff19bfc8820::7ff19bfc8820  e5 e5 e5 e5                                      ....
  6760 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  6760 ms     | 0xd28 privk:0x7ff19bfc4020::7ff19bfc4020  d0 08 13 9c                                      ....
  6760 ms     | 0xd28 privk:0x7ff19bfc4020::7ff19bfc4020  e5 e5 e5 e5                                      ....
  6760 ms  0xd28 SECKEY_CreateECPrivateKey()
  6760 ms  0xd28 cx:0x7ff198df2308
  6761 ms     | 0xd28 EC_ValidatePublicKey()
  6761 ms     | 0xd28 ret:0x0
  6761 ms  0xd28 ret:0x7ff19bfc4020::7ff19bfc4020  d0 4d d1 9b                                      .M..
  6761 ms  0xd28 SECKEY_CreateECPrivateKey()
  6761 ms  0xd28 cx:0x7ff198df2308
  6761 ms     | 0xd28 EC_ValidatePublicKey()
  6763 ms     | 0xd28 ret:0x0
  6763 ms  0xd28 ret:0x7ff19bfc8820::7ff19bfc8820  80 f3 fd 9b                                      ....
  6767 ms  0xd28 PK11_Encrypt()
  6767 ms  0xd28 symkey:0x7ff1ad6f8080
  6767 ms  0xd28 PK11_Encrypt()
  6767 ms  0xd28 symkey:0x7ff1ad6f8080
  6767 ms  0xd28 SECKEY_CreateECPrivateKey()
  6767 ms  0xd28 cx:0x7ff198df2648
  6767 ms     | 0xd28 EC_ValidatePublicKey()
  6767 ms     | 0xd28 ret:0x0
  6767 ms  0xd28 ret:0x7ff1acffc820::7ff1acffc820  70 09 13 9c                                      p...
  6768 ms  0xd28 SECKEY_CreateECPrivateKey()
  6768 ms  0xd28 cx:0x7ff198df2648
  6768 ms     | 0xd28 EC_ValidatePublicKey()
  6769 ms     | 0xd28 ret:0x0
  6770 ms  0xd28 ret:0x7ff1ae42a820::7ff1ae42a820  b0 10 15 ad                                      ....
  6775 ms  0xd28 SECKEY_CreateECPrivateKey()
  6775 ms  0xd28 cx:0x7ff198df24a8
  6775 ms     | 0xd28 EC_ValidatePublicKey()
  6776 ms     | 0xd28 ret:0x0
  6776 ms  0xd28 ret:0x7ff1af0d6020::7ff1af0d6020  e0 12 15 ad                                      ....
  6776 ms  0xd28 SECKEY_CreateECPrivateKey()
  6776 ms  0xd28 cx:0x7ff198df24a8
  6776 ms     | 0xd28 EC_ValidatePublicKey()
  6780 ms     | 0xd28 ret:0x0
  6780 ms  0xd28 ret:0x7ff1b1f9d020::7ff1b1f9d020  30 18 15 ad                                      0...
  6780 ms  0xd28 SECKEY_CreateECPrivateKey()
  6780 ms  0xd28 cx:0x7ff198df2988
  6781 ms     | 0xd28 EC_ValidatePublicKey()
  6781 ms     | 0xd28 ret:0x0
  6781 ms  0xd28 ret:0x7ff1b3603020::7ff1b3603020  40 1c 15 ad                                      @...
  6781 ms  0xd28 SECKEY_CreateECPrivateKey()
  6781 ms  0xd28 cx:0x7ff198df2988
  6781 ms     | 0xd28 EC_ValidatePublicKey()
  6783 ms     | 0xd28 ret:0x0
  6783 ms  0xd28 ret:0x7ff1b360c820::7ff1b360c820  80 d3 16 ad                                      ....
           /* TID 0xdc6 */
  6786 ms  0xdc6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6786 ms  0xdc6 ret:0x0
           /* TID 0xd28 */
  6786 ms  SECKEY_ECParamsToKeySize()
  6786 ms  0xd28 ret:0x100
  6786 ms  0xd28 SECKEY_CreateECPrivateKey()
  6786 ms  0xd28 cx:0x7ff198df1948
  6787 ms     | 0xd28 EC_ValidatePublicKey()
  6788 ms     | 0xd28 ret:0x0
  6788 ms  0xd28 ret:0x7ff1b36ca820::7ff1b36ca820  60 da 16 ad                                      `...
  6792 ms  0xd28 PK11_PubDeriveWithKDF()
  6792 ms  0xd28 seckey:0x7ff1b36ca820
  6792 ms     | 0xd28 EC_ValidatePublicKey()
  6793 ms     | 0xd28 ret:0x0
  6795 ms  0xd28 ret:0x7ff1ae9bd880
  6795 ms  0xd28 PK11_DeriveWithFlags()
  6795 ms  0xd28 basekey:0x7ff1ae9bd880
  6795 ms     | 0xd28 PK11_DeriveWithTemplate()
  6795 ms  0xd28 ret:0x7ff1af017180
  6795 ms  0xd28 PK11_Derive()
  6795 ms  0xd28 basekey:0x7ff1af017180
  6795 ms     | 0xd28 PK11_DeriveWithTemplate()
  6795 ms  0xd28 ret:0x7ff1ae598880
  6795 ms  0xd28 SECKEY_DestroyPrivateKey()
  6795 ms  0xd28 privk:0x7ff1b36ca820::7ff1b36ca820  60 da 16 ad                                      `...
  6795 ms  0xd28 privk:0x7ff1b36ca820::7ff1b36ca820  e5 e5 e5 e5                                      ....
  6795 ms  0xd28 PK11_Encrypt()
  6795 ms  0xd28 symkey:0x7ff19c1f7380
           /* TID 0xd85 */
  6799 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6799 ms  0xd85 ret:0x0
           /* TID 0xd28 */
  6800 ms  SECKEY_ECParamsToKeySize()
  6800 ms  0xd28 ret:0x100
  6800 ms  0xd28 SECKEY_CreateECPrivateKey()
  6800 ms  0xd28 cx:0x7ff198df05c8
  6800 ms     | 0xd28 EC_ValidatePublicKey()
  6802 ms     | 0xd28 ret:0x0
  6802 ms  0xd28 ret:0x7ff1b36cf820::7ff1b36cf820  b0 da 16 ad                                      ....
  6802 ms  0xd28 PK11_PubDeriveWithKDF()
  6802 ms  0xd28 seckey:0x7ff1b36cf820
  6802 ms     | 0xd28 EC_ValidatePublicKey()
  6803 ms     | 0xd28 ret:0x0
  6805 ms  0xd28 ret:0x7ff1ae9bd880
  6805 ms  0xd28 PK11_DeriveWithFlags()
  6805 ms  0xd28 basekey:0x7ff1ae9bd880
  6805 ms     | 0xd28 PK11_DeriveWithTemplate()
  6805 ms  0xd28 ret:0x7ff19bc08b80
  6805 ms  0xd28 PK11_Derive()
  6805 ms  0xd28 basekey:0x7ff19bc08b80
  6805 ms     | 0xd28 PK11_DeriveWithTemplate()
  6805 ms  0xd28 ret:0x7ff19c2b1700
  6805 ms  0xd28 SECKEY_DestroyPrivateKey()
  6805 ms  0xd28 privk:0x7ff1b36cf820::7ff1b36cf820  b0 da 16 ad                                      ....
  6805 ms  0xd28 privk:0x7ff1b36cf820::7ff1b36cf820  e5 e5 e5 e5                                      ....
  6805 ms  0xd28 PK11_Encrypt()
  6805 ms  0xd28 symkey:0x7ff19c14ec00
  6812 ms  0xd28 SECKEY_CreateECPrivateKey()
  6812 ms  0xd28 cx:0x7ff198df1ae8
  6812 ms     | 0xd28 EC_ValidatePublicKey()
  6812 ms     | 0xd28 ret:0x0
  6812 ms  0xd28 ret:0x7ff1b36cf820::7ff1b36cf820  d0 d8 16 ad                                      ....
  6812 ms  0xd28 SECKEY_CreateECPrivateKey()
  6812 ms  0xd28 cx:0x7ff198df1ae8
  6813 ms     | 0xd28 EC_ValidatePublicKey()
  6814 ms     | 0xd28 ret:0x0
  6814 ms  0xd28 ret:0x7ff1b36d3820::7ff1b36d3820  d0 dd 16 ad                                      ....
  6815 ms  0xd28 SECKEY_CreateECPrivateKey()
  6815 ms  0xd28 cx:0x7ff198df27e8
  6816 ms     | 0xd28 EC_ValidatePublicKey()
  6816 ms     | 0xd28 ret:0x0
  6816 ms  0xd28 ret:0x7ff1b36d8020::7ff1b36d8020  60 df 16 ad                                      `...
  6816 ms  0xd28 SECKEY_CreateECPrivateKey()
  6816 ms  0xd28 cx:0x7ff198df27e8
  6816 ms     | 0xd28 EC_ValidatePublicKey()
  6818 ms     | 0xd28 ret:0x0
  6818 ms  0xd28 ret:0x7ff1b36dd020::7ff1b36dd020  a0 21 1b ad                                      .!..
  6818 ms  0xd28 SECKEY_CreateECPrivateKey()
  6818 ms  0xd28 cx:0x7ff198df2b28
  6819 ms     | 0xd28 EC_ValidatePublicKey()
  6819 ms     | 0xd28 ret:0x0
  6819 ms  0xd28 ret:0x7ff1b3980020::7ff1b3980020  e0 22 1b ad                                      ."..
  6819 ms  0xd28 SECKEY_CreateECPrivateKey()
  6819 ms  0xd28 cx:0x7ff198df2b28
  6820 ms     | 0xd28 EC_ValidatePublicKey()
  6821 ms     | 0xd28 ret:0x0
  6821 ms  0xd28 ret:0x7ff1b3982020::7ff1b3982020  70 e4 1b ad                                      p...
  6821 ms  0xd28 SSL_AuthCertificateComplete()
  6821 ms  0xd28 fd:0x7ff19c0d8b50
  6821 ms  0xd28 err:0x0
  6821 ms  0xd28 SSL_AuthCertificateComplete()
  6821 ms  0xd28 fd:0x7ff1acfdd3d0
  6821 ms  0xd28 err:0x0
           /* TID 0xdca */
  6822 ms  0xdca _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6822 ms  0xdca ret:0x0
           /* TID 0xd28 */
  6822 ms  SECKEY_ECParamsToKeySize()
  6822 ms  0xd28 ret:0x100
  6822 ms  0xd28 SECKEY_CreateECPrivateKey()
  6822 ms  0xd28 cx:0x7ff198df2308
  6826 ms     | 0xd28 EC_ValidatePublicKey()
  6828 ms     | 0xd28 ret:0x0
  6828 ms  0xd28 ret:0x7ff1b3987820::7ff1b3987820  80 e8 47 ad                                      ..G.
  6828 ms  0xd28 PK11_PubDeriveWithKDF()
  6828 ms  0xd28 seckey:0x7ff1b3987820
  6828 ms     | 0xd28 EC_ValidatePublicKey()
  6835 ms     | 0xd28 ret:0x0
  6837 ms  0xd28 ret:0x7ff1ae9bd880
  6837 ms  0xd28 PK11_DeriveWithFlags()
  6837 ms  0xd28 basekey:0x7ff1ae9bd880
  6837 ms     | 0xd28 PK11_DeriveWithTemplate()
  6837 ms  0xd28 ret:0x7ff19bc09180
  6837 ms  0xd28 PK11_Derive()
  6837 ms  0xd28 basekey:0x7ff19bc09180
  6837 ms     | 0xd28 PK11_DeriveWithTemplate()
  6837 ms  0xd28 ret:0x7ff19bc09280
  6837 ms  0xd28 SECKEY_DestroyPrivateKey()
  6837 ms  0xd28 privk:0x7ff1b3987820::7ff1b3987820  80 e8 47 ad                                      ..G.
  6837 ms  0xd28 privk:0x7ff1b3987820::7ff1b3987820  e5 e5 e5 e5                                      ....
  6837 ms  0xd28 PK11_Encrypt()
  6837 ms  0xd28 symkey:0x7ff19bc09480
  6837 ms  0xd28 PK11_DeriveWithFlags()
  6837 ms  0xd28 basekey:0x7ff1ae9a1080
  6838 ms     | 0xd28 PK11_DeriveWithTemplate()
  6838 ms  0xd28 ret:0x7ff1ae9bd880
  6838 ms  0xd28 PK11_DeriveWithFlags()
  6838 ms  0xd28 basekey:0x7ff1ae9a1080
  6838 ms     | 0xd28 PK11_DeriveWithTemplate()
  6838 ms  0xd28 ret:0x7ff1ae9bd880
  6838 ms  0xd28 PK11_Encrypt()
  6838 ms  0xd28 symkey:0x7ff1ad6f8080
           /* TID 0xd30 */
  6839 ms  0xd30 PR_Close()
  6839 ms  0xd30 fd:0x7ff19c0d1bb0
           /* TID 0xd28 */
  6840 ms  0xd28 PK11_Encrypt()
  6840 ms  0xd28 symkey:0x7ff19c1f7380
  6843 ms  0xd28 PK11_Encrypt()
  6843 ms  0xd28 symkey:0x7ff19c14ec00
           /* TID 0xdc7 */
  6844 ms  0xdc7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6844 ms  0xdc7 ret:0x0
           /* TID 0xd28 */
  6845 ms  SECKEY_ECParamsToKeySize()
  6845 ms  0xd28 ret:0x100
  6845 ms  0xd28 SECKEY_CreateECPrivateKey()
  6845 ms  0xd28 cx:0x7ff198df2648
  6845 ms     | 0xd28 EC_ValidatePublicKey()
  6847 ms     | 0xd28 ret:0x0
  6847 ms  0xd28 ret:0x7ff1b3987820::7ff1b3987820  80 e8 47 ad                                      ..G.
  6847 ms  0xd28 PK11_PubDeriveWithKDF()
  6847 ms  0xd28 seckey:0x7ff1b3987820
  6847 ms     | 0xd28 EC_ValidatePublicKey()
  6849 ms     | 0xd28 ret:0x0
  6851 ms  0xd28 ret:0x7ff1ae9bd880
  6851 ms  0xd28 PK11_DeriveWithFlags()
  6851 ms  0xd28 basekey:0x7ff1ae9bd880
  6851 ms     | 0xd28 PK11_DeriveWithTemplate()
  6851 ms  0xd28 ret:0x7ff1ad1df380
  6851 ms  0xd28 PK11_Derive()
  6851 ms  0xd28 basekey:0x7ff1ad1df380
  6851 ms     | 0xd28 PK11_DeriveWithTemplate()
  6851 ms  0xd28 ret:0x7ff19bf9ce00
  6851 ms  0xd28 SECKEY_DestroyPrivateKey()
  6851 ms  0xd28 privk:0x7ff1b3987820::7ff1b3987820  80 e8 47 ad                                      ..G.
  6851 ms  0xd28 privk:0x7ff1b3987820::7ff1b3987820  e5 e5 e5 e5                                      ....
  6851 ms  0xd28 PK11_Encrypt()
  6851 ms  0xd28 symkey:0x7ff1ad1df880
           /* TID 0xdc6 */
  6855 ms  0xdc6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6855 ms  0xdc6 ret:0x0
           /* TID 0xd28 */
  6856 ms  SECKEY_ECParamsToKeySize()
  6856 ms  0xd28 ret:0x100
  6856 ms  0xd28 SECKEY_CreateECPrivateKey()
  6856 ms  0xd28 cx:0x7ff198df24a8
  6856 ms     | 0xd28 EC_ValidatePublicKey()
  6858 ms     | 0xd28 ret:0x0
  6858 ms  0xd28 ret:0x7ff1b3988020::7ff1b3988020  d0 e8 47 ad                                      ..G.
  6858 ms  0xd28 PK11_PubDeriveWithKDF()
  6858 ms  0xd28 seckey:0x7ff1b3988020
  6858 ms     | 0xd28 EC_ValidatePublicKey()
  6863 ms     | 0xd28 ret:0x0
  6864 ms  0xd28 ret:0x7ff1ae9bd880
  6865 ms  0xd28 PK11_DeriveWithFlags()
  6865 ms  0xd28 basekey:0x7ff1ae9bd880
  6865 ms     | 0xd28 PK11_DeriveWithTemplate()
  6865 ms  0xd28 ret:0x7ff1ad1dfd80
  6865 ms  0xd28 PK11_Derive()
  6865 ms  0xd28 basekey:0x7ff1ad1dfd80
  6865 ms     | 0xd28 PK11_DeriveWithTemplate()
  6865 ms  0xd28 ret:0x7ff1ad1e0280
  6865 ms  0xd28 SECKEY_DestroyPrivateKey()
  6865 ms  0xd28 privk:0x7ff1b3988020::7ff1b3988020  d0 e8 47 ad                                      ..G.
  6865 ms  0xd28 privk:0x7ff1b3988020::7ff1b3988020  e5 e5 e5 e5                                      ....
  6865 ms  0xd28 PK11_Encrypt()
  6865 ms  0xd28 symkey:0x7ff1ad1e0400
  6873 ms  0xd28 PK11_Derive()
  6873 ms  0xd28 basekey:0x7ff1ae9bd880
  6873 ms     | 0xd28 PK11_DeriveWithTemplate()
  6873 ms  0xd28 ret:0x7ff1ad1df680
  6873 ms  0xd28 PK11_PubDeriveWithKDF()
  6873 ms  0xd28 seckey:0x7ff1b360c820
  6873 ms     | 0xd28 EC_ValidatePublicKey()
  6874 ms     | 0xd28 ret:0x0
  6876 ms  0xd28 ret:0x7ff1ae9bd880
  6876 ms  SECKEY_ECParamsToKeySize()
  6876 ms  0xd28 ret:0x100
  6876 ms  0xd28 PK11_DeriveWithFlags()
  6876 ms  0xd28 basekey:0x7ff1ad1df680
  6876 ms     | 0xd28 PK11_DeriveWithTemplate()
  6876 ms  0xd28 ret:0x7ff1ad1dfc00
  6876 ms  0xd28 PK11_Derive()
  6876 ms  0xd28 basekey:0x7ff1ae9bd880
  6876 ms     | 0xd28 PK11_DeriveWithTemplate()
  6876 ms  0xd28 ret:0x7ff1ad1dfe00
  6876 ms  0xd28 PK11_DeriveWithFlags()
  6876 ms  0xd28 basekey:0x7ff1ad1dfe00
  6876 ms     | 0xd28 PK11_DeriveWithTemplate()
  6876 ms  0xd28 ret:0x7ff1ad1df680
  6876 ms  0xd28 PK11_DeriveWithFlags()
  6876 ms  0xd28 basekey:0x7ff1ad1dfe00
  6876 ms     | 0xd28 PK11_DeriveWithTemplate()
  6876 ms  0xd28 ret:0x7ff1ae9bd880
  6876 ms  0xd28 PK11_DeriveWithFlags()
  6876 ms  0xd28 basekey:0x7ff1ad1dfe00
  6876 ms     | 0xd28 PK11_DeriveWithTemplate()
  6876 ms  0xd28 ret:0x7ff1ad1dfc00
  6876 ms  0xd28 PK11_Derive()
  6876 ms  0xd28 basekey:0x7ff1ad1dfe80
  6876 ms     | 0xd28 PK11_DeriveWithTemplate()
  6876 ms  0xd28 ret:0x7ff1ad1e5580
  6876 ms  0xd28 PK11_DeriveWithFlags()
  6876 ms  0xd28 basekey:0x7ff1ae9bd880
  6876 ms     | 0xd28 PK11_DeriveWithTemplate()
  6876 ms  0xd28 ret:0x7ff1ad1dfe00
  6876 ms  0xd28 PK11_DeriveWithFlags()
  6876 ms  0xd28 basekey:0x7ff1ae9bd880
  6876 ms     | 0xd28 PK11_DeriveWithTemplate()
  6876 ms  0xd28 ret:0x7ff1ad1dfc00
           /* TID 0xd85 */
  6877 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6880 ms  0xd85 ret:0x0
           /* TID 0xd28 */
  6880 ms  0xd28 PK11_DeriveWithFlags()
  6880 ms  0xd28 basekey:0x7ff1ae9bd880
  6880 ms     | 0xd28 PK11_DeriveWithTemplate()
  6880 ms  0xd28 ret:0x7ff1ad1dfc00
  6880 ms  0xd28 SSL_AuthCertificateComplete()
  6880 ms  0xd28 fd:0x7ff1ad177310
  6880 ms  0xd28 err:0x0
  6880 ms  0xd28 SSL_AuthCertificateComplete()
  6880 ms  0xd28 fd:0x7ff19c1c0b80
  6880 ms  0xd28 err:0x0
  6880 ms  0xd28 SSL_AuthCertificateComplete()
  6880 ms  0xd28 fd:0x7ff19bcf29a0
  6880 ms  0xd28 err:0x0
  6881 ms  0xd28 SSL_AuthCertificateComplete()
  6881 ms  0xd28 fd:0x7ff1ae5b81c0
  6881 ms  0xd28 err:0x0
  6881 ms     | 0xd28 PK11_DeriveWithFlags()
  6881 ms     | 0xd28 basekey:0x7ff1ad1e5580
  6881 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6881 ms     | 0xd28 ret:0x7ff1ad1dfc00
  6881 ms     | 0xd28 PK11_DeriveWithFlags()
  6881 ms     | 0xd28 basekey:0x7ff1ad1e5580
  6881 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6881 ms     | 0xd28 ret:0x7ff1ad1dfe80
  6881 ms     | 0xd28 PK11_DeriveWithFlags()
  6881 ms     | 0xd28 basekey:0x7ff1ad1e5580
  6881 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6881 ms     | 0xd28 ret:0x7ff1ad1e0500
  6881 ms     | 0xd28 PK11_DeriveWithFlags()
  6881 ms     | 0xd28 basekey:0x7ff1ad1df680
  6881 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6881 ms     | 0xd28 ret:0x7ff1ad1e0600
  6881 ms     | 0xd28 PK11_DeriveWithFlags()
  6881 ms     | 0xd28 basekey:0x7ff1ad1df680
  6881 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6881 ms     | 0xd28 ret:0x7ff1ad1e0700
  6881 ms     | 0xd28 PK11_DeriveWithFlags()
  6881 ms     | 0xd28 basekey:0x7ff1ad1dfe80
  6881 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6881 ms     | 0xd28 ret:0x7ff1ad1e0700
  6881 ms     | 0xd28 PK11_DeriveWithFlags()
  6881 ms     | 0xd28 basekey:0x7ff1ad1dfe80
  6881 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6881 ms     | 0xd28 ret:0x7ff1ad1e0780
  6881 ms     | 0xd28 PK11_DeriveWithFlags()
  6881 ms     | 0xd28 basekey:0x7ff1ad1df680
  6881 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6881 ms     | 0xd28 ret:0x7ff1ad1dfe00
  6881 ms     | 0xd28 PK11_Encrypt()
  6881 ms     | 0xd28 symkey:0x7ff1ad1e0600
  6881 ms     | 0xd28 PK11_DeriveWithFlags()
  6881 ms     | 0xd28 basekey:0x7ff1ad1dfc00
  6881 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6881 ms     | 0xd28 ret:0x7ff1ad1dfe00
  6881 ms     | 0xd28 PK11_DeriveWithFlags()
  6881 ms     | 0xd28 basekey:0x7ff1ad1dfc00
  6881 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6881 ms     | 0xd28 ret:0x7ff1ad1e0780
  6881 ms     | 0xd28 PK11_DeriveWithFlags()
  6881 ms     | 0xd28 basekey:0x7ff1ad1e5580
  6881 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  6881 ms     | 0xd28 ret:0x7ff1ad1e0600
  6881 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  6881 ms     | 0xd28 privk:0x7ff1b360c820::7ff1b360c820  80 d3 16 ad                                      ....
  6881 ms     | 0xd28 privk:0x7ff1b360c820::7ff1b360c820  e5 e5 e5 e5                                      ....
  6882 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  6882 ms     | 0xd28 privk:0x7ff1b3603020::7ff1b3603020  40 1c 15 ad                                      @...
  6882 ms     | 0xd28 privk:0x7ff1b3603020::7ff1b3603020  e5 e5 e5 e5                                      ....
  6882 ms  0xd28 SECKEY_DestroyPrivateKey()
  6882 ms  0xd28 privk:0x7ff19bfc8820::7ff19bfc8820  80 f3 fd 9b                                      ....
  6882 ms  0xd28 privk:0x7ff19bfc8820::7ff19bfc8820  e5 e5 e5 e5                                      ....
  6882 ms  0xd28 SECKEY_DestroyPrivateKey()
  6882 ms  0xd28 privk:0x7ff19bfc4020::7ff19bfc4020  d0 4d d1 9b                                      .M..
  6882 ms  0xd28 privk:0x7ff19bfc4020::7ff19bfc4020  e5 e5 e5 e5                                      ....
  6882 ms  0xd28 PK11_Encrypt()
  6882 ms  0xd28 symkey:0x7ff19bc09480
  6882 ms  0xd28 PK11_Encrypt()
  6882 ms  0xd28 symkey:0x7ff19bc09480
  6883 ms  0xd28 PK11_Encrypt()
  6883 ms  0xd28 symkey:0x7ff1ad6f8080
  6883 ms  0xd28 SECKEY_DestroyPrivateKey()
  6883 ms  0xd28 privk:0x7ff19c197820::7ff19c197820  d0 0d 13 9c                                      ....
  6883 ms  0xd28 privk:0x7ff19c197820::7ff19c197820  e5 e5 e5 e5                                      ....
  6883 ms  0xd28 SECKEY_DestroyPrivateKey()
  6883 ms  0xd28 privk:0x7ff19bfc1020::7ff19bfc1020  20 7e de 9b                                       ~..
  6883 ms  0xd28 privk:0x7ff19bfc1020::7ff19bfc1020  e5 e5 e5 e5                                      ....
  6885 ms  0xd28 SECKEY_DestroyPrivateKey()
  6885 ms  0xd28 privk:0x7ff1acf2a820::7ff1acf2a820  10 0a fd ac                                      ....
  6885 ms  0xd28 privk:0x7ff1acf2a820::7ff1acf2a820  e5 e5 e5 e5                                      ....
  6885 ms  0xd28 SECKEY_DestroyPrivateKey()
  6885 ms  0xd28 privk:0x7ff19c258020::7ff19c258020  b0 8f 1f 9c                                      ....
  6885 ms  0xd28 privk:0x7ff19c258020::7ff19c258020  e5 e5 e5 e5                                      ....
  6887 ms  0xd28 PK11_Encrypt()
  6887 ms  0xd28 symkey:0x7ff1ad1df880
  6887 ms  0xd28 PK11_Encrypt()
  6887 ms  0xd28 symkey:0x7ff1ad1e0400
           /* TID 0xdca */
  6888 ms  0xdca _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6888 ms  0xdca ret:0x0
           /* TID 0xd28 */
  6888 ms  SECKEY_ECParamsToKeySize()
  6888 ms  0xd28 ret:0x100
  6888 ms  0xd28 SECKEY_CreateECPrivateKey()
  6888 ms  0xd28 cx:0x7ff198df1ae8
  6889 ms     | 0xd28 EC_ValidatePublicKey()
  6890 ms     | 0xd28 ret:0x0
  6890 ms  0xd28 ret:0x7ff19bfc8020::7ff19bfc8020  90 77 de 9b                                      .w..
  6890 ms  0xd28 PK11_PubDeriveWithKDF()
  6890 ms  0xd28 seckey:0x7ff19bfc8020
  6890 ms     | 0xd28 EC_ValidatePublicKey()
  6892 ms     | 0xd28 ret:0x0
  6893 ms  0xd28 ret:0x7ff1ae9bd880
  6893 ms  0xd28 PK11_DeriveWithFlags()
  6893 ms  0xd28 basekey:0x7ff1ae9bd880
  6893 ms     | 0xd28 PK11_DeriveWithTemplate()
  6893 ms  0xd28 ret:0x7ff1ad1df680
  6893 ms  0xd28 PK11_Derive()
  6893 ms  0xd28 basekey:0x7ff1ad1df680
  6893 ms     | 0xd28 PK11_DeriveWithTemplate()
  6893 ms  0xd28 ret:0x7ff1ad1e5580
  6893 ms  0xd28 SECKEY_DestroyPrivateKey()
  6893 ms  0xd28 privk:0x7ff19bfc8020::7ff19bfc8020  90 77 de 9b                                      .w..
  6893 ms  0xd28 privk:0x7ff19bfc8020::7ff19bfc8020  e5 e5 e5 e5                                      ....
  6894 ms  0xd28 PK11_Encrypt()
  6894 ms  0xd28 symkey:0x7ff1ad68d400
           /* TID 0xdc7 */
  6895 ms  0xdc7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6895 ms  0xdc7 ret:0x0
           /* TID 0xd28 */
  6895 ms  SECKEY_ECParamsToKeySize()
  6895 ms  0xd28 ret:0x100
  6895 ms  0xd28 SECKEY_CreateECPrivateKey()
  6895 ms  0xd28 cx:0x7ff198df27e8
  6895 ms     | 0xd28 EC_ValidatePublicKey()
  6897 ms     | 0xd28 ret:0x0
  6897 ms  0xd28 ret:0x7ff19bfcb020::7ff19bfcb020  20 7e de 9b                                       ~..
  6897 ms  0xd28 PK11_PubDeriveWithKDF()
  6897 ms  0xd28 seckey:0x7ff19bfcb020
  6897 ms     | 0xd28 EC_ValidatePublicKey()
  6898 ms     | 0xd28 ret:0x0
  6913 ms  0xd28 ret:0x7ff1ae9bd880
  6913 ms  0xd28 PK11_DeriveWithFlags()
  6913 ms  0xd28 basekey:0x7ff1ae9bd880
  6913 ms     | 0xd28 PK11_DeriveWithTemplate()
  6913 ms  0xd28 ret:0x7ff1ad1e0780
  6913 ms  0xd28 PK11_Derive()
  6913 ms  0xd28 basekey:0x7ff1ad1e0780
  6913 ms     | 0xd28 PK11_DeriveWithTemplate()
  6914 ms  0xd28 ret:0x7ff19c28bb80
  6914 ms  0xd28 SECKEY_DestroyPrivateKey()
  6914 ms  0xd28 privk:0x7ff19bfcb020::7ff19bfcb020  20 7e de 9b                                       ~..
  6914 ms  0xd28 privk:0x7ff19bfcb020::7ff19bfcb020  e5 e5 e5 e5                                      ....
  6914 ms  0xd28 PK11_Encrypt()
  6914 ms  0xd28 symkey:0x7ff1ad6f7100
  6917 ms  0xd28 PK11_DeriveWithFlags()
  6917 ms  0xd28 basekey:0x7ff1ad1e0600
  6918 ms     | 0xd28 PK11_DeriveWithTemplate()
  6918 ms  0xd28 ret:0x7ff1ae9bd880
  6918 ms  0xd28 PK11_DeriveWithFlags()
  6918 ms  0xd28 basekey:0x7ff1ad1e0600
  6918 ms     | 0xd28 PK11_DeriveWithTemplate()
  6918 ms  0xd28 ret:0x7ff1ae9bd880
  6918 ms  0xd28 PK11_Encrypt()
  6918 ms  0xd28 symkey:0x7ff1ad1dfe00
  6918 ms  0xd28 PK11_Encrypt()
  6918 ms  0xd28 symkey:0x7ff1ad1dfe00
           /* TID 0xdc6 */
  6919 ms  0xdc6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6919 ms  0xdc6 ret:0x0
  6919 ms  0xdc6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6919 ms  0xdc6 ret:0x0
           /* TID 0xd28 */
  6920 ms  SECKEY_ECParamsToKeySize()
  6920 ms  0xd28 ret:0xff
  6920 ms  0xd28 SECKEY_CreateECPrivateKey()
  6920 ms  0xd28 cx:0x7ff198df2b28
  6920 ms     | 0xd28 EC_ValidatePublicKey()
  6920 ms     | 0xd28 ret:0x0
  6920 ms  0xd28 ret:0x7ff19c24c820::7ff19c24c820  00 f1 fd 9b                                      ....
  6920 ms  0xd28 PK11_PubDeriveWithKDF()
  6920 ms  0xd28 seckey:0x7ff19c24c820
  6920 ms     | 0xd28 EC_ValidatePublicKey()
  6920 ms     | 0xd28 ret:0x0
  6921 ms  0xd28 ret:0x7ff1ae9bd880
  6921 ms  0xd28 PK11_DeriveWithFlags()
  6921 ms  0xd28 basekey:0x7ff1ae9bd880
  6921 ms     | 0xd28 PK11_DeriveWithTemplate()
  6921 ms  0xd28 ret:0x7ff1ad1dfa80
  6921 ms  0xd28 PK11_Derive()
  6921 ms  0xd28 basekey:0x7ff1ad1dfa80
  6921 ms     | 0xd28 PK11_DeriveWithTemplate()
  6921 ms  0xd28 ret:0x7ff1ae455e00
  6921 ms  0xd28 SECKEY_DestroyPrivateKey()
  6921 ms  0xd28 privk:0x7ff19c24c820::7ff19c24c820  00 f1 fd 9b                                      ....
  6921 ms  0xd28 privk:0x7ff19c24c820::7ff19c24c820  e5 e5 e5 e5                                      ....
  6921 ms  0xd28 PK11_Encrypt()
  6921 ms  0xd28 symkey:0x7ff1ae456280
  6923 ms  0xd28 SSL_ImportFD()
  6923 ms  0xd28 ret:0x7ff1ae9f11f0
  6923 ms  0xd28 SSL_AuthCertificateHook()
  6923 ms  0xd28 fd:0x7ff1ae9f11f0
  6923 ms  0xd28 ret:0x0
  6923 ms  0xd28 PR_Connect()
  6923 ms  0xd28 fd:0x7ff1ae9f11f0
  6924 ms  0xd28 PK11_Encrypt()
  6924 ms  0xd28 symkey:0x7ff19bd44d80
  6925 ms  0xd28 PK11_Encrypt()
  6925 ms  0xd28 symkey:0x7ff19bc09480
  6925 ms  0xd28 SSL_AuthCertificateComplete()
  6925 ms  0xd28 fd:0x7ff1ad1772b0
  6925 ms  0xd28 err:0x0
  6925 ms  0xd28 SSL_AuthCertificateComplete()
  6925 ms  0xd28 fd:0x7ff1ae5b8400
  6925 ms  0xd28 err:0x0
  6925 ms  0xd28 SSL_AuthCertificateComplete()
  6925 ms  0xd28 fd:0x7ff1ad177280
  6925 ms  0xd28 err:0x0
  6925 ms  0xd28 PK11_Encrypt()
  6925 ms  0xd28 symkey:0x7ff19bc09480
  6927 ms  0xd28 PK11_Encrypt()
  6927 ms  0xd28 symkey:0x7ff1ad1dfe00
  6927 ms  0xd28 PK11_Encrypt()
  6927 ms  0xd28 symkey:0x7ff19bc09480
  6928 ms  0xd28 SECKEY_DestroyPrivateKey()
  6928 ms  0xd28 privk:0x7ff1ae42a820::7ff1ae42a820  b0 10 15 ad                                      ....
  6928 ms  0xd28 privk:0x7ff1ae42a820::7ff1ae42a820  e5 e5 e5 e5                                      ....
  6928 ms  0xd28 SECKEY_DestroyPrivateKey()
  6928 ms  0xd28 privk:0x7ff1acffc820::7ff1acffc820  70 09 13 9c                                      p...
  6928 ms  0xd28 privk:0x7ff1acffc820::7ff1acffc820  e5 e5 e5 e5                                      ....
  6929 ms  0xd28 SECKEY_DestroyPrivateKey()
  6929 ms  0xd28 privk:0x7ff1b1f9d020::7ff1b1f9d020  30 18 15 ad                                      0...
  6929 ms  0xd28 privk:0x7ff1b1f9d020::7ff1b1f9d020  e5 e5 e5 e5                                      ....
  6929 ms  0xd28 SECKEY_DestroyPrivateKey()
  6929 ms  0xd28 privk:0x7ff1af0d6020::7ff1af0d6020  e0 12 15 ad                                      ....
  6929 ms  0xd28 privk:0x7ff1af0d6020::7ff1af0d6020  e5 e5 e5 e5                                      ....
  6929 ms  0xd28 PK11_Encrypt()
  6929 ms  0xd28 symkey:0x7ff1ad68d400
  6929 ms  0xd28 PK11_Encrypt()
  6929 ms  0xd28 symkey:0x7ff1ad6f7100
  6930 ms  0xd28 PK11_Encrypt()
  6930 ms  0xd28 symkey:0x7ff1ae456280
  6930 ms  0xd28 PR_Close()
  6930 ms  0xd28 fd:0x7ff19bcf29a0
  6930 ms     | 0xd28 PK11_Encrypt()
  6930 ms     | 0xd28 symkey:0x7ff1ad1e0400
  6930 ms  0xd28 PR_Close()
  6930 ms  0xd28 fd:0x7ff19c1c0b80
  6930 ms     | 0xd28 PK11_Encrypt()
  6930 ms     | 0xd28 symkey:0x7ff1ad1df880
  6932 ms  0xd28 PK11_Encrypt()
  6932 ms  0xd28 symkey:0x7ff19bc09480
  6933 ms  0xd28 PK11_Encrypt()
  6933 ms  0xd28 symkey:0x7ff19bc09480
  6933 ms  0xd28 SECKEY_DestroyPrivateKey()
  6933 ms  0xd28 privk:0x7ff1b36d3820::7ff1b36d3820  d0 dd 16 ad                                      ....
  6933 ms  0xd28 privk:0x7ff1b36d3820::7ff1b36d3820  e5 e5 e5 e5                                      ....
  6933 ms  0xd28 SECKEY_DestroyPrivateKey()
  6933 ms  0xd28 privk:0x7ff1b36cf820::7ff1b36cf820  d0 d8 16 ad                                      ....
  6934 ms  0xd28 privk:0x7ff1b36cf820::7ff1b36cf820  e5 e5 e5 e5                                      ....
  6934 ms  0xd28 PR_Close()
  6934 ms  0xd28 fd:0x7ff1ad1772b0
  6934 ms     | 0xd28 PK11_Encrypt()
  6934 ms     | 0xd28 symkey:0x7ff1ad68d400
  6947 ms  0xd28 SECKEY_DestroyPrivateKey()
  6947 ms  0xd28 privk:0x7ff1b3982020::7ff1b3982020  70 e4 1b ad                                      p...
  6947 ms  0xd28 privk:0x7ff1b3982020::7ff1b3982020  e5 e5 e5 e5                                      ....
  6948 ms  0xd28 SECKEY_DestroyPrivateKey()
  6948 ms  0xd28 privk:0x7ff1b3980020::7ff1b3980020  e0 22 1b ad                                      ."..
  6948 ms  0xd28 privk:0x7ff1b3980020::7ff1b3980020  e5 e5 e5 e5                                      ....
  6948 ms  0xd28 PR_Close()
  6948 ms  0xd28 fd:0x7ff1ad177280
  6948 ms     | 0xd28 PK11_Encrypt()
  6948 ms     | 0xd28 symkey:0x7ff1ae456280
  6951 ms  0xd28 SECKEY_DestroyPrivateKey()
  6951 ms  0xd28 privk:0x7ff1b36dd020::7ff1b36dd020  a0 21 1b ad                                      .!..
  6951 ms  0xd28 privk:0x7ff1b36dd020::7ff1b36dd020  e5 e5 e5 e5                                      ....
  6951 ms  0xd28 SECKEY_DestroyPrivateKey()
  6951 ms  0xd28 privk:0x7ff1b36d8020::7ff1b36d8020  60 df 16 ad                                      `...
  6951 ms  0xd28 privk:0x7ff1b36d8020::7ff1b36d8020  e5 e5 e5 e5                                      ....
  6952 ms  0xd28 PR_Close()
  6952 ms  0xd28 fd:0x7ff1ae5b8400
  6952 ms     | 0xd28 PK11_Encrypt()
  6952 ms     | 0xd28 symkey:0x7ff1ad6f7100
           /* TID 0xd30 */
  6957 ms  0xd30 PR_Close()
  6957 ms  0xd30 fd:0x7ff19bc0c340
           /* TID 0xd28 */
  6961 ms  0xd28 SECKEY_CreateECPrivateKey()
  6961 ms  0xd28 cx:0x7ff1ae47c728
  6962 ms     | 0xd28 EC_ValidatePublicKey()
  6962 ms     | 0xd28 ret:0x0
  6962 ms  0xd28 ret:0x7ff19bd2c820::7ff19bd2c820  10 6a c4 9b                                      .j..
  6962 ms  0xd28 SECKEY_CreateECPrivateKey()
  6962 ms  0xd28 cx:0x7ff1ae47c728
  6962 ms     | 0xd28 EC_ValidatePublicKey()
  6971 ms     | 0xd28 ret:0x0
  6972 ms  0xd28 ret:0x7ff19bfc1020::7ff19bfc1020  70 49 d1 9b                                      pI..
           /* TID 0xd30 */
  6996 ms  0xd30 PR_Close()
  6996 ms  0xd30 fd:0x7ff1ad177190
  6997 ms  0xd30 PR_Close()
  6997 ms  0xd30 fd:0x7ff1ad1770d0
           /* TID 0xd28 */
  7012 ms  SECKEY_ECParamsToKeySize()
  7012 ms  0xd28 ret:0x100
  7012 ms  0xd28 SECKEY_CreateECPrivateKey()
  7012 ms  0xd28 cx:0x7ff1ae47c728
  7012 ms     | 0xd28 EC_ValidatePublicKey()
  7014 ms     | 0xd28 ret:0x0
  7014 ms  0xd28 ret:0x7ff1af0e9820::7ff1af0e9820  80 8d 1f 9c                                      ....
  7014 ms  0xd28 PK11_PubDeriveWithKDF()
  7014 ms  0xd28 seckey:0x7ff1af0e9820
  7014 ms     | 0xd28 EC_ValidatePublicKey()
  7015 ms     | 0xd28 ret:0x0
  7017 ms  0xd28 ret:0x7ff19c28bb80
  7017 ms  0xd28 PK11_DeriveWithFlags()
  7017 ms  0xd28 basekey:0x7ff19c28bb80
  7017 ms     | 0xd28 PK11_DeriveWithTemplate()
  7017 ms  0xd28 ret:0x7ff1ad1e0780
  7017 ms  0xd28 PK11_Derive()
  7017 ms  0xd28 basekey:0x7ff1ad1e0780
  7017 ms     | 0xd28 PK11_DeriveWithTemplate()
  7017 ms  0xd28 ret:0x7ff1ae455e00
  7017 ms  0xd28 SECKEY_DestroyPrivateKey()
  7017 ms  0xd28 privk:0x7ff1af0e9820::7ff1af0e9820  80 8d 1f 9c                                      ....
  7017 ms  0xd28 privk:0x7ff1af0e9820::7ff1af0e9820  e5 e5 e5 e5                                      ....
  7017 ms  0xd28 PK11_Encrypt()
  7017 ms  0xd28 symkey:0x7ff1ad1e0100
  7024 ms  0xd28 PR_Connect()
  7024 ms  0xd28 fd:0x7ff1acfdda90
  7042 ms  0xd28 PK11_Encrypt()
  7042 ms  0xd28 symkey:0x7ff1ad1dfe00
           /* TID 0xd30 */
  7065 ms  0xd30 PR_Close()
  7065 ms  0xd30 fd:0x7ff1acfddf40
  7068 ms  0xd30 PR_Close()
  7068 ms  0xd30 fd:0x7ff19c1c06a0
           /* TID 0xd28 */
  7089 ms  0xd28 PK11_Encrypt()
  7089 ms  0xd28 symkey:0x7ff1ad1dfe00
           /* TID 0xd30 */
  7116 ms  0xd30 PR_Close()
  7116 ms  0xd30 fd:0x7ff1acfddf40
           /* TID 0xd85 */
  7116 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7116 ms  0xd85 ret:0x0
           /* TID 0xd28 */
  7124 ms  0xd28 SSL_AuthCertificateComplete()
  7124 ms  0xd28 fd:0x7ff1ae9f11f0
  7124 ms  0xd28 err:0x0
  7124 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  7124 ms     | 0xd28 privk:0x7ff19bfc1020::7ff19bfc1020  70 49 d1 9b                                      pI..
  7124 ms     | 0xd28 privk:0x7ff19bfc1020::7ff19bfc1020  e5 e5 e5 e5                                      ....
  7124 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  7124 ms     | 0xd28 privk:0x7ff19bd2c820::7ff19bd2c820  10 6a c4 9b                                      .j..
  7124 ms     | 0xd28 privk:0x7ff19bd2c820::7ff19bd2c820  e5 e5 e5 e5                                      ....
  7124 ms  0xd28 PK11_Encrypt()
  7124 ms  0xd28 symkey:0x7ff1ad1e0100
  7125 ms  0xd28 PK11_Encrypt()
  7125 ms  0xd28 symkey:0x7ff1ad1e0100
  7125 ms  0xd28 PK11_Encrypt()
  7125 ms  0xd28 symkey:0x7ff1ad1e0100
  7181 ms  0xd28 PK11_Encrypt()
  7181 ms  0xd28 symkey:0x7ff1ad1dfe00
  7212 ms  0xd28 PK11_Encrypt()
  7212 ms  0xd28 symkey:0x7ff1ad1e0100
  7228 ms  0xd28 PK11_Encrypt()
  7228 ms  0xd28 symkey:0x7ff19bc09980
  7337 ms  0xd28 SSL_ImportFD()
  7337 ms  0xd28 ret:0x7ff1ad4fa0a0
  7337 ms  0xd28 SSL_AuthCertificateHook()
  7337 ms  0xd28 fd:0x7ff1ad4fa0a0
  7338 ms  0xd28 ret:0x0
  7338 ms  0xd28 PR_Connect()
  7338 ms  0xd28 fd:0x7ff1ad4fa0a0
  7343 ms  0xd28 PK11_Encrypt()
  7343 ms  0xd28 symkey:0x7ff19bc09980
  7380 ms  0xd28 SECKEY_CreateECPrivateKey()
  7380 ms  0xd28 cx:0x7ff198df24a8
  7381 ms     | 0xd28 EC_ValidatePublicKey()
  7381 ms     | 0xd28 ret:0x0
  7381 ms  0xd28 ret:0x7ff1acfea020::7ff1acfea020  80 bd 2e 9c                                      ....
  7381 ms  0xd28 SECKEY_CreateECPrivateKey()
  7381 ms  0xd28 cx:0x7ff198df24a8
  7382 ms     | 0xd28 EC_ValidatePublicKey()
  7384 ms     | 0xd28 ret:0x0
  7384 ms  0xd28 ret:0x7ff1af0d6020::7ff1af0d6020  00 06 fd ac                                      ....
  7432 ms  SECKEY_ECParamsToKeySize()
  7432 ms  0xd28 ret:0x100
  7432 ms  0xd28 SECKEY_CreateECPrivateKey()
  7432 ms  0xd28 cx:0x7ff198df24a8
  7433 ms     | 0xd28 EC_ValidatePublicKey()
  7437 ms     | 0xd28 ret:0x0
  7437 ms  0xd28 ret:0x7ff1b36d3820::7ff1b36d3820  c0 0e fd ac                                      ....
  7437 ms  0xd28 PK11_PubDeriveWithKDF()
  7437 ms  0xd28 seckey:0x7ff1b36d3820
  7437 ms     | 0xd28 EC_ValidatePublicKey()
  7441 ms     | 0xd28 ret:0x0
  7444 ms  0xd28 ret:0x7ff19c28bb80
  7444 ms  0xd28 PK11_DeriveWithFlags()
  7444 ms  0xd28 basekey:0x7ff19c28bb80
  7444 ms     | 0xd28 PK11_DeriveWithTemplate()
  7444 ms  0xd28 ret:0x7ff1ad1dfa80
  7444 ms  0xd28 PK11_Derive()
  7444 ms  0xd28 basekey:0x7ff1ad1dfa80
  7445 ms     | 0xd28 PK11_DeriveWithTemplate()
  7445 ms  0xd28 ret:0x7ff1ad1e5580
  7445 ms  0xd28 SECKEY_DestroyPrivateKey()
  7445 ms  0xd28 privk:0x7ff1b36d3820::7ff1b36d3820  c0 0e fd ac                                      ....
  7445 ms  0xd28 privk:0x7ff1b36d3820::7ff1b36d3820  e5 e5 e5 e5                                      ....
  7445 ms  0xd28 PK11_Encrypt()
  7445 ms  0xd28 symkey:0x7ff1ae456180
           /* TID 0xdca */
  7473 ms  0xdca _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7474 ms  0xdca ret:0x0
           /* TID 0xd30 */
  7474 ms  0xd30 PR_Close()
  7474 ms  0xd30 fd:0x7ff1ad4a3760
           /* TID 0xd28 */
  7474 ms  0xd28 SSL_AuthCertificateComplete()
  7474 ms  0xd28 fd:0x7ff1ad4fa0a0
  7474 ms  0xd28 err:0x0
  7475 ms  0xd28 PK11_Encrypt()
  7475 ms  0xd28 symkey:0x7ff1ae456180
  7488 ms  0xd28 SECKEY_DestroyPrivateKey()
  7488 ms  0xd28 privk:0x7ff1af0d6020::7ff1af0d6020  00 06 fd ac                                      ....
  7488 ms  0xd28 privk:0x7ff1af0d6020::7ff1af0d6020  e5 e5 e5 e5                                      ....
  7488 ms  0xd28 SECKEY_DestroyPrivateKey()
  7488 ms  0xd28 privk:0x7ff1acfea020::7ff1acfea020  80 bd 2e 9c                                      ....
  7488 ms  0xd28 privk:0x7ff1acfea020::7ff1acfea020  e5 e5 e5 e5                                      ....
  7728 ms  0xd28 SSL_ImportFD()
  7728 ms  0xd28 ret:0x7ff1ae4f1f10
  7728 ms  0xd28 SSL_AuthCertificateHook()
  7728 ms  0xd28 fd:0x7ff1ae4f1f10
  7728 ms  0xd28 ret:0x0
  7728 ms  0xd28 PR_Connect()
  7728 ms  0xd28 fd:0x7ff1ae4f1f10
  7754 ms  0xd28 SECKEY_CreateECPrivateKey()
  7754 ms  0xd28 cx:0x7ff198df27e8
  7755 ms     | 0xd28 EC_ValidatePublicKey()
  7755 ms     | 0xd28 ret:0x0
  7755 ms  0xd28 ret:0x7ff1acfea020::7ff1acfea020  b0 0a fd ac                                      ....
  7756 ms  0xd28 SECKEY_CreateECPrivateKey()
  7756 ms  0xd28 cx:0x7ff198df27e8
  7757 ms     | 0xd28 EC_ValidatePublicKey()
  7766 ms     | 0xd28 ret:0x0
  7766 ms  0xd28 ret:0x7ff1b360c820::7ff1b360c820  80 bd 2e 9c                                      ....
  7795 ms  SECKEY_ECParamsToKeySize()
  7796 ms  0xd28 ret:0xff
  7796 ms  0xd28 SECKEY_CreateECPrivateKey()
  7796 ms  0xd28 cx:0x7ff198df27e8
  7797 ms     | 0xd28 EC_ValidatePublicKey()
  7797 ms     | 0xd28 ret:0x0
  7797 ms  0xd28 ret:0x7ff1b36e2020::7ff1b36e2020  60 0f fd ac                                      `...
  7797 ms  0xd28 PK11_PubDeriveWithKDF()
  7797 ms  0xd28 seckey:0x7ff1b36e2020
  7797 ms     | 0xd28 EC_ValidatePublicKey()
  7797 ms     | 0xd28 ret:0x0
  7798 ms  0xd28 ret:0x7ff19c28bb80
  7798 ms  0xd28 PK11_DeriveWithFlags()
  7798 ms  0xd28 basekey:0x7ff19c28bb80
  7798 ms     | 0xd28 PK11_DeriveWithTemplate()
  7798 ms  0xd28 ret:0x7ff1ad1df680
  7798 ms  0xd28 PK11_Derive()
  7798 ms  0xd28 basekey:0x7ff1ad1df680
  7798 ms     | 0xd28 PK11_DeriveWithTemplate()
  7798 ms  0xd28 ret:0x7ff19bf9ce00
           /* TID 0xdc7 */
  7799 ms  0xdc7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7799 ms  0xdc7 ret:0x0
  7799 ms  0xdc7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7799 ms  0xdc7 ret:0x0
           /* TID 0xd28 */
  7799 ms  0xd28 SECKEY_DestroyPrivateKey()
  7799 ms  0xd28 privk:0x7ff1b36e2020::7ff1b36e2020  60 0f fd ac                                      `...
  7799 ms  0xd28 privk:0x7ff1b36e2020::7ff1b36e2020  e5 e5 e5 e5                                      ....
  7799 ms  0xd28 PK11_Encrypt()
  7799 ms  0xd28 symkey:0x7ff1ad1e6e00
  7801 ms  0xd28 SSL_AuthCertificateComplete()
  7801 ms  0xd28 fd:0x7ff1ae4f1f10
  7801 ms  0xd28 err:0x0
  7801 ms  0xd28 PK11_Encrypt()
  7801 ms  0xd28 symkey:0x7ff1ad1e6e00
  7826 ms  0xd28 SECKEY_DestroyPrivateKey()
  7826 ms  0xd28 privk:0x7ff1b360c820::7ff1b360c820  80 bd 2e 9c                                      ....
  7826 ms  0xd28 privk:0x7ff1b360c820::7ff1b360c820  e5 e5 e5 e5                                      ....
  7827 ms  0xd28 SECKEY_DestroyPrivateKey()
  7827 ms  0xd28 privk:0x7ff1acfea020::7ff1acfea020  b0 0a fd ac                                      ....
  7827 ms  0xd28 privk:0x7ff1acfea020::7ff1acfea020  e5 e5 e5 e5                                      ....
           /* TID 0xd30 */
  7883 ms  0xd30 PR_Close()
  7883 ms  0xd30 fd:0x7ff1ae5b8310
           /* TID 0xd28 */
  7936 ms  0xd28 PR_Close()
  7936 ms  0xd28 fd:0x7ff1ae1b8be0
           /* TID 0xd1d */
  7938 ms  0xd1d EC_ValidatePublicKey()
  7941 ms  0xd1d ret:0x0
  7941 ms  0xd1d EC_ValidatePublicKey()
  7943 ms  0xd1d ret:0x0
  7943 ms  0xd1d EC_ValidatePublicKey()
  7944 ms  0xd1d ret:0x0
  7944 ms  0xd1d EC_ValidatePublicKey()
  7946 ms  0xd1d ret:0x0
  7946 ms  0xd1d EC_ValidatePublicKey()
  7947 ms  0xd1d ret:0x0
  7947 ms  0xd1d EC_ValidatePublicKey()
  7954 ms  0xd1d ret:0x0
  7954 ms  0xd1d EC_ValidatePublicKey()
  7955 ms  0xd1d ret:0x0
  7955 ms  0xd1d EC_ValidatePublicKey()
  7957 ms  0xd1d ret:0x0
  7957 ms  0xd1d EC_ValidatePublicKey()
           /* TID 0xd28 */
  7960 ms  0xd28 SSL_ImportFD()
  7960 ms  0xd28 ret:0x7ff19c0d1bb0
  7960 ms  0xd28 SSL_AuthCertificateHook()
  7960 ms  0xd28 fd:0x7ff19c0d1bb0
  7960 ms  0xd28 ret:0x0
  7960 ms  0xd28 PR_Connect()
  7960 ms  0xd28 fd:0x7ff19c0d1bb0
           /* TID 0xd1d */
  7963 ms  0xd1d ret:0x0
  7963 ms  0xd1d EC_ValidatePublicKey()
  7965 ms  0xd1d ret:0x0
           /* TID 0xd28 */
  7967 ms  0xd28 PK11_Encrypt()
  7967 ms  0xd28 symkey:0x7ff1ad1dfe00
  7968 ms  0xd28 PK11_Encrypt()
  7968 ms  0xd28 symkey:0x7ff1af017100
  7968 ms  0xd28 PK11_Encrypt()
  7968 ms  0xd28 symkey:0x7ff19bc09480
  7968 ms  0xd28 PK11_Encrypt()
  7968 ms  0xd28 symkey:0x7ff1ad6f8080
  7968 ms  0xd28 PK11_Encrypt()
  7968 ms  0xd28 symkey:0x7ff19c1b7700
  7968 ms  0xd28 PK11_Encrypt()
  7968 ms  0xd28 symkey:0x7ff19c2b1c00
  7968 ms  0xd28 PK11_Encrypt()
  7968 ms  0xd28 symkey:0x7ff1ae455a00
  7969 ms  0xd28 PK11_Encrypt()
  7969 ms  0xd28 symkey:0x7ff19c1b8080
  7969 ms  0xd28 PK11_Encrypt()
  7969 ms  0xd28 symkey:0x7ff19c2b1600
  7969 ms  0xd28 PK11_Encrypt()
  7969 ms  0xd28 symkey:0x7ff198d3a400
  7969 ms  0xd28 PK11_Encrypt()
  7969 ms  0xd28 symkey:0x7ff19c135a00
  7969 ms  0xd28 PK11_Encrypt()
  7969 ms  0xd28 symkey:0x7ff19bcf8e80
  7969 ms  0xd28 PK11_Encrypt()
  7969 ms  0xd28 symkey:0x7ff1ad1e0100
  7969 ms  0xd28 PK11_Encrypt()
  7969 ms  0xd28 symkey:0x7ff19c2b2180
  7969 ms  0xd28 PK11_Encrypt()
  7969 ms  0xd28 symkey:0x7ff19bc09980
  7969 ms  0xd28 PK11_Encrypt()
  7969 ms  0xd28 symkey:0x7ff19bc09080
  7969 ms  0xd28 PK11_Encrypt()
  7969 ms  0xd28 symkey:0x7ff19bffb080
  7970 ms  0xd28 PR_Close()
  7970 ms  0xd28 fd:0x7ff1ad4fa0a0
  7970 ms     | 0xd28 PK11_Encrypt()
  7970 ms     | 0xd28 symkey:0x7ff1ae456180
  7970 ms  0xd28 PR_Close()
  7970 ms  0xd28 fd:0x7ff1acfdda90
  7970 ms  0xd28 PR_Close()
  7970 ms  0xd28 fd:0x7ff1acfdd3d0
  7970 ms     | 0xd28 PK11_Encrypt()
  7970 ms     | 0xd28 symkey:0x7ff19c14ec00
  7970 ms  0xd28 PR_Close()
  7970 ms  0xd28 fd:0x7ff19c0d8b50
  7970 ms     | 0xd28 PK11_Encrypt()
  7970 ms     | 0xd28 symkey:0x7ff19c1f7380
  7970 ms  0xd28 PR_Close()
  7970 ms  0xd28 fd:0x7ff19c1c03d0
  7970 ms  0xd28 PR_Close()
  7970 ms  0xd28 fd:0x7ff19c1c0f70
  7970 ms     | 0xd28 PK11_Encrypt()
  7970 ms     | 0xd28 symkey:0x7ff19bd44d80
  7971 ms  0xd28 PR_Close()
  7971 ms  0xd28 fd:0x7ff19c0d8d30
  7971 ms     | 0xd28 PK11_Encrypt()
  7971 ms     | 0xd28 symkey:0x7ff1af50e080
  7971 ms  0xd28 PR_Close()
  7971 ms  0xd28 fd:0x7ff1b27ac9d0
  7971 ms  0xd28 PR_Close()
  7971 ms  0xd28 fd:0x7ff19bc0c790
  7971 ms  0xd28 PR_Close()
  7971 ms  0xd28 fd:0x7ff19bc0c070
  7971 ms     | 0xd28 PK11_Encrypt()
  7971 ms     | 0xd28 symkey:0x7ff19bc08d80
           /* TID 0xd7a */
  7971 ms  0xd7a PR_Close()
  7971 ms  0xd7a fd:0x7ff19bc0c790
  7972 ms  0xd7a PR_Close()
  7972 ms  0xd7a fd:0x7ff19bc0c790
           /* TID 0xd28 */
  7974 ms  0xd28 PR_Close()
  7974 ms  0xd28 fd:0x7ff1b27ac040
  7974 ms  0xd28 PR_Close()
  7974 ms  0xd28 fd:0x7ff1b27ac1f0
  7974 ms  0xd28 PR_Close()
  7974 ms  0xd28 fd:0x7ff1ad4fae80
  7974 ms     | 0xd28 PK11_Encrypt()
  7974 ms     | 0xd28 symkey:0x7ff1ad1e6780
  7974 ms  0xd28 PR_Close()
  7974 ms  0xd28 fd:0x7ff1ad4facd0
  7974 ms  0xd28 PR_Close()
  7974 ms  0xd28 fd:0x7ff1ad4fa250
  7974 ms     | 0xd28 PK11_Encrypt()
  7974 ms     | 0xd28 symkey:0x7ff1ad1e5a00
  7974 ms  0xd28 PR_Close()
  7974 ms  0xd28 fd:0x7ff1ae1b81f0
  7975 ms  0xd28 PR_Close()
  7975 ms  0xd28 fd:0x7ff1ae4f1f10
  7975 ms     | 0xd28 PK11_Encrypt()
  7975 ms     | 0xd28 symkey:0x7ff1ad1e6e00
  7975 ms  0xd28 PR_Close()
  7975 ms  0xd28 fd:0x7ff1af5cff10
  7975 ms     | 0xd28 PK11_Encrypt()
  7975 ms     | 0xd28 symkey:0x7ff1aecc0300
  7975 ms  0xd28 PR_Close()
  7975 ms  0xd28 fd:0x7ff1b27ac7f0
  7975 ms     | 0xd28 PK11_Encrypt()
  7975 ms     | 0xd28 symkey:0x7ff19bcf8e80
  7980 ms  0xd28 PR_Close()
  7980 ms  0xd28 fd:0x7ff1ad177310
  7980 ms     | 0xd28 PK11_Encrypt()
  7980 ms     | 0xd28 symkey:0x7ff19bc09480
  7980 ms  0xd28 PR_Close()
  7980 ms  0xd28 fd:0x7ff1ae9f11f0
  7980 ms     | 0xd28 PK11_Encrypt()
  7980 ms     | 0xd28 symkey:0x7ff1ad1e0100
  7981 ms  0xd28 PR_Close()
  7981 ms  0xd28 fd:0x7ff1b27ac490
  7981 ms     | 0xd28 PK11_Encrypt()
  7981 ms     | 0xd28 symkey:0x7ff19bc09080
  7981 ms  0xd28 PR_Close()
  7981 ms  0xd28 fd:0x7ff19c0d1e20
  7981 ms     | 0xd28 PK11_Encrypt()
  7981 ms     | 0xd28 symkey:0x7ff198d3a400
  7981 ms  0xd28 PR_Close()
  7981 ms  0xd28 fd:0x7ff19c0d1550
  7981 ms     | 0xd28 PK11_Encrypt()
  7981 ms     | 0xd28 symkey:0x7ff1ad6f8080
  7982 ms  0xd28 PR_Close()
  7982 ms  0xd28 fd:0x7ff19c17fa60
  7982 ms     | 0xd28 PK11_Encrypt()
  7982 ms     | 0xd28 symkey:0x7ff19c2b1c00
  7982 ms  0xd28 PR_Close()
  7982 ms  0xd28 fd:0x7ff19c17fa90
  7982 ms     | 0xd28 PK11_Encrypt()
  7982 ms     | 0xd28 symkey:0x7ff19c135a00
  7982 ms  0xd28 PR_Close()
  7982 ms  0xd28 fd:0x7ff19c17f8b0
  7982 ms     | 0xd28 PK11_Encrypt()
  7982 ms     | 0xd28 symkey:0x7ff19c2b2180
  7982 ms  0xd28 PR_Close()
  7982 ms  0xd28 fd:0x7ff19c17f850
  7982 ms     | 0xd28 PK11_Encrypt()
  7982 ms     | 0xd28 symkey:0x7ff19c1b7700
  7983 ms  0xd28 PR_Close()
  7983 ms  0xd28 fd:0x7ff19c17f5b0
  7983 ms     | 0xd28 PK11_Encrypt()
  7983 ms     | 0xd28 symkey:0x7ff19c2b1600
  7997 ms  0xd28 PR_Close()
  7997 ms  0xd28 fd:0x7ff1b039d400
  7998 ms     | 0xd28 PK11_Encrypt()
  7998 ms     | 0xd28 symkey:0x7ff19c1b8080
  7999 ms  0xd28 PR_Close()
  7999 ms  0xd28 fd:0x7ff19bcf2ee0
  8000 ms     | 0xd28 PK11_Encrypt()
  8000 ms     | 0xd28 symkey:0x7ff1af017100
  8000 ms  0xd28 PR_Close()
  8000 ms  0xd28 fd:0x7ff19bcf2ca0
  8000 ms     | 0xd28 PK11_Encrypt()
  8000 ms     | 0xd28 symkey:0x7ff1ae455a00
  8000 ms  0xd28 PR_Close()
  8000 ms  0xd28 fd:0x7ff19bcf2040
  8000 ms     | 0xd28 PK11_Encrypt()
  8000 ms     | 0xd28 symkey:0x7ff19bffb080
  8000 ms  0xd28 PR_Close()
  8000 ms  0xd28 fd:0x7ff1ae5b81c0
  8000 ms     | 0xd28 PK11_Encrypt()
  8000 ms     | 0xd28 symkey:0x7ff1ad1dfe00
  8001 ms  0xd28 PR_Close()
  8001 ms  0xd28 fd:0x7ff19bc0c820
  8001 ms     | 0xd28 PK11_Encrypt()
  8001 ms     | 0xd28 symkey:0x7ff19bc09980
  8001 ms  0xd28 SSL_ImportFD()
  8001 ms  0xd28 ret:0x7ff19bc0c130
  8001 ms  0xd28 SSL_AuthCertificateHook()
  8001 ms  0xd28 fd:0x7ff19bc0c130
  8001 ms  0xd28 ret:0x0
  8001 ms  0xd28 PR_Connect()
  8001 ms  0xd28 fd:0x7ff19bc0c130
  8001 ms  0xd28 SSL_ImportFD()
  8001 ms  0xd28 ret:0x7ff19bc0c0a0
  8001 ms  0xd28 SSL_AuthCertificateHook()
  8001 ms  0xd28 fd:0x7ff19bc0c0a0
  8001 ms  0xd28 ret:0x0
  8001 ms  0xd28 PR_Connect()
  8001 ms  0xd28 fd:0x7ff19bc0c0a0
  8005 ms  0xd28 SSL_ImportFD()
  8005 ms  0xd28 ret:0x7ff19bcf2f10
  8005 ms  0xd28 SSL_AuthCertificateHook()
  8005 ms  0xd28 fd:0x7ff19bcf2f10
  8005 ms  0xd28 ret:0x0
  8005 ms  0xd28 PR_Connect()
  8005 ms  0xd28 fd:0x7ff19bcf2f10
  8017 ms  0xd28 SSL_ImportFD()
  8017 ms  0xd28 ret:0x7ff19c1c0a60
  8017 ms  0xd28 SSL_AuthCertificateHook()
  8017 ms  0xd28 fd:0x7ff19c1c0a60
  8017 ms  0xd28 ret:0x0
  8017 ms  0xd28 PR_Connect()
  8017 ms  0xd28 fd:0x7ff19c1c0a60
  8019 ms  0xd28 SECKEY_CreateECPrivateKey()
  8019 ms  0xd28 cx:0x7ff198def0a8
  8019 ms     | 0xd28 EC_ValidatePublicKey()
  8019 ms     | 0xd28 ret:0x0
  8019 ms  0xd28 ret:0x7ff19bc8a820::7ff19bc8a820  30 68 c4 9b                                      0h..
  8019 ms  0xd28 SECKEY_CreateECPrivateKey()
  8019 ms  0xd28 cx:0x7ff198def0a8
  8021 ms     | 0xd28 EC_ValidatePublicKey()
  8022 ms     | 0xd28 ret:0x0
  8022 ms  0xd28 ret:0x7ff19bc91820::7ff19bc91820  70 44 d1 9b                                      pD..
  8030 ms  0xd28 SECKEY_CreateECPrivateKey()
  8030 ms  0xd28 cx:0x7ff198df0768
  8031 ms     | 0xd28 EC_ValidatePublicKey()
  8031 ms     | 0xd28 ret:0x0
  8031 ms  0xd28 ret:0x7ff19bd23820::7ff19bd23820  60 df 16 ad                                      `...
  8031 ms  0xd28 SECKEY_CreateECPrivateKey()
  8031 ms  0xd28 cx:0x7ff198df0768
  8031 ms     | 0xd28 EC_ValidatePublicKey()
  8033 ms     | 0xd28 ret:0x0
  8033 ms  0xd28 ret:0x7ff19bd26020::7ff19bd26020  a0 21 1b ad                                      .!..
  8039 ms  0xd28 SSL_ImportFD()
  8039 ms  0xd28 ret:0x7ff19c0d1b80
  8039 ms  0xd28 SSL_AuthCertificateHook()
  8039 ms  0xd28 fd:0x7ff19c0d1b80
  8039 ms  0xd28 ret:0x0
  8039 ms  0xd28 PR_Connect()
  8039 ms  0xd28 fd:0x7ff19c0d1b80
  8039 ms  0xd28 SSL_ImportFD()
  8039 ms  0xd28 ret:0x7ff19bc0c0d0
  8039 ms  0xd28 SSL_AuthCertificateHook()
  8039 ms  0xd28 fd:0x7ff19bc0c0d0
  8039 ms  0xd28 ret:0x0
  8039 ms  0xd28 PR_Connect()
  8039 ms  0xd28 fd:0x7ff19bc0c0d0
  8042 ms  0xd28 SECKEY_CreateECPrivateKey()
  8042 ms  0xd28 cx:0x7ff198df0428
  8043 ms     | 0xd28 EC_ValidatePublicKey()
  8043 ms     | 0xd28 ret:0x0
  8043 ms  0xd28 ret:0x7ff19bd30820::7ff19bd30820  30 dd 16 ad                                      0...
  8043 ms  0xd28 SECKEY_CreateECPrivateKey()
  8043 ms  0xd28 cx:0x7ff198df0428
  8044 ms     | 0xd28 EC_ValidatePublicKey()
  8045 ms     | 0xd28 ret:0x0
  8045 ms  0xd28 ret:0x7ff19bd35020::7ff19bd35020  90 e2 1b ad                                      ....
  8047 ms  0xd28 SECKEY_CreateECPrivateKey()
  8047 ms  0xd28 cx:0x7ff198def3e8
  8047 ms     | 0xd28 EC_ValidatePublicKey()
  8047 ms     | 0xd28 ret:0x0
  8047 ms  0xd28 ret:0x7ff19c198020::7ff19c198020  20 e4 1b ad                                       ...
  8047 ms  0xd28 SECKEY_CreateECPrivateKey()
  8047 ms  0xd28 cx:0x7ff198def3e8
  8048 ms     | 0xd28 EC_ValidatePublicKey()
           /* TID 0xd1d */
  8055 ms  0xd1d PR_Close()
  8055 ms  0xd1d fd:0x7ff1b033e0d0
  8056 ms  0xd1d PR_Close()
  8056 ms  0xd1d fd:0x7ff1ad177a00
  8056 ms  0xd1d PR_Close()
  8056 ms  0xd1d fd:0x7ff1ad4a33a0
  8056 ms  0xd1d PR_Close()
  8056 ms  0xd1d fd:0x7ff1ad177a00
           /* TID 0xd28 */
  8058 ms     | 0xd28 ret:0x0
  8058 ms  0xd28 ret:0x7ff19c19e820::7ff19c19e820  30 43 1f ad                                      0C..
           /* TID 0xd1d */
  8060 ms  0xd1d PR_Close()
  8060 ms  0xd1d fd:0x7ff1ad4a33a0
  8060 ms  0xd1d PR_Close()
  8060 ms  0xd1d fd:0x7ff1ad177a00
           /* TID 0xd28 */
  8065 ms  0xd28 PK11_Derive()
  8065 ms  0xd28 basekey:0x7ff19bc09f80
  8065 ms     | 0xd28 PK11_DeriveWithTemplate()
  8065 ms  0xd28 ret:0x7ff19bc09a00
  8065 ms  0xd28 PK11_PubDeriveWithKDF()
  8065 ms  0xd28 seckey:0x7ff19bd26020
  8065 ms     | 0xd28 EC_ValidatePublicKey()
  8066 ms     | 0xd28 ret:0x0
  8068 ms  0xd28 ret:0x7ff19bc09f80
  8068 ms  SECKEY_ECParamsToKeySize()
  8068 ms  0xd28 ret:0x100
  8068 ms  0xd28 PK11_DeriveWithFlags()
  8068 ms  0xd28 basekey:0x7ff19bc09a00
  8068 ms     | 0xd28 PK11_DeriveWithTemplate()
  8068 ms  0xd28 ret:0x7ff19bc09600
  8068 ms  0xd28 PK11_Derive()
  8068 ms  0xd28 basekey:0x7ff19bc09f80
  8068 ms     | 0xd28 PK11_DeriveWithTemplate()
  8068 ms  0xd28 ret:0x7ff19bc08100
  8068 ms  0xd28 PK11_DeriveWithFlags()
  8068 ms  0xd28 basekey:0x7ff19bc08100
  8068 ms     | 0xd28 PK11_DeriveWithTemplate()
  8068 ms  0xd28 ret:0x7ff19bc09a00
  8068 ms  0xd28 PK11_DeriveWithFlags()
  8068 ms  0xd28 basekey:0x7ff19bc08100
  8068 ms     | 0xd28 PK11_DeriveWithTemplate()
  8068 ms  0xd28 ret:0x7ff19bc09f80
  8068 ms  0xd28 PK11_DeriveWithFlags()
  8068 ms  0xd28 basekey:0x7ff19bc08100
  8068 ms     | 0xd28 PK11_DeriveWithTemplate()
  8068 ms  0xd28 ret:0x7ff19bc09600
  8068 ms  0xd28 PK11_Derive()
  8068 ms  0xd28 basekey:0x7ff19bcf7400
  8068 ms     | 0xd28 PK11_DeriveWithTemplate()
  8068 ms  0xd28 ret:0x7ff19bc09980
  8068 ms  0xd28 PK11_DeriveWithFlags()
  8068 ms  0xd28 basekey:0x7ff19bc09f80
  8068 ms     | 0xd28 PK11_DeriveWithTemplate()
  8068 ms  0xd28 ret:0x7ff19bc08100
  8068 ms  0xd28 PK11_DeriveWithFlags()
  8068 ms  0xd28 basekey:0x7ff19bc09f80
  8068 ms     | 0xd28 PK11_DeriveWithTemplate()
  8068 ms  0xd28 ret:0x7ff19bc09600
           /* TID 0xd8d */
  8069 ms  0xd8d PR_Close()
  8069 ms  0xd8d fd:0x7ff1ad177a00
           /* TID 0xdc6 */
  8078 ms  0xdc6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8078 ms  0xdc6 ret:0x0
           /* TID 0xd28 */
  8079 ms  0xd28 PK11_DeriveWithFlags()
  8079 ms  0xd28 basekey:0x7ff19bc09f80
  8079 ms     | 0xd28 PK11_DeriveWithTemplate()
  8079 ms  0xd28 ret:0x7ff19bc09600
  8079 ms  0xd28 SSL_AuthCertificateComplete()
  8079 ms  0xd28 fd:0x7ff19bcf2f10
  8079 ms  0xd28 err:0x0
  8079 ms     | 0xd28 PK11_DeriveWithFlags()
  8079 ms     | 0xd28 basekey:0x7ff19bc09980
  8079 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  8079 ms     | 0xd28 ret:0x7ff19bc09600
  8079 ms     | 0xd28 PK11_DeriveWithFlags()
  8079 ms     | 0xd28 basekey:0x7ff19bc09980
  8079 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  8079 ms     | 0xd28 ret:0x7ff19bcf7400
  8079 ms     | 0xd28 PK11_DeriveWithFlags()
  8079 ms     | 0xd28 basekey:0x7ff19bc09980
  8079 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  8079 ms     | 0xd28 ret:0x7ff1ad1e0500
  8079 ms     | 0xd28 PK11_DeriveWithFlags()
  8079 ms     | 0xd28 basekey:0x7ff19bc09a00
  8079 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  8079 ms     | 0xd28 ret:0x7ff1ad1dfe80
  8079 ms     | 0xd28 PK11_DeriveWithFlags()
  8079 ms     | 0xd28 basekey:0x7ff19bc09a00
  8079 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  8079 ms     | 0xd28 ret:0x7ff1ad1dfc00
  8079 ms     | 0xd28 PK11_DeriveWithFlags()
  8079 ms     | 0xd28 basekey:0x7ff19bcf7400
  8079 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  8079 ms     | 0xd28 ret:0x7ff1ad1dfc00
  8079 ms     | 0xd28 PK11_DeriveWithFlags()
  8079 ms     | 0xd28 basekey:0x7ff19bcf7400
  8079 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  8079 ms     | 0xd28 ret:0x7ff1ad1e0600
  8079 ms     | 0xd28 PK11_DeriveWithFlags()
  8079 ms     | 0xd28 basekey:0x7ff19bc09a00
  8079 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  8079 ms     | 0xd28 ret:0x7ff19bc08100
  8079 ms     | 0xd28 PK11_Encrypt()
  8079 ms     | 0xd28 symkey:0x7ff1ad1dfe80
  8084 ms     | 0xd28 PK11_DeriveWithFlags()
  8084 ms     | 0xd28 basekey:0x7ff19bc09600
  8084 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  8084 ms     | 0xd28 ret:0x7ff19bc08100
  8084 ms     | 0xd28 PK11_DeriveWithFlags()
  8084 ms     | 0xd28 basekey:0x7ff19bc09600
  8084 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  8084 ms     | 0xd28 ret:0x7ff1ad1e0600
  8084 ms     | 0xd28 PK11_DeriveWithFlags()
  8084 ms     | 0xd28 basekey:0x7ff19bc09980
  8084 ms     |    | 0xd28 PK11_DeriveWithTemplate()
  8084 ms     | 0xd28 ret:0x7ff1ad1dfe80
  8084 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  8084 ms     | 0xd28 privk:0x7ff19bd26020::7ff19bd26020  a0 21 1b ad                                      .!..
  8084 ms     | 0xd28 privk:0x7ff19bd26020::7ff19bd26020  e5 e5 e5 e5                                      ....
  8084 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  8084 ms     | 0xd28 privk:0x7ff19bd23820::7ff19bd23820  60 df 16 ad                                      `...
  8084 ms     | 0xd28 privk:0x7ff19bd23820::7ff19bd23820  e5 e5 e5 e5                                      ....
           /* TID 0xd85 */
  8087 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8087 ms  0xd85 ret:0x0
           /* TID 0xd28 */
  8087 ms  SECKEY_ECParamsToKeySize()
  8087 ms  0xd28 ret:0x100
  8087 ms  0xd28 SECKEY_CreateECPrivateKey()
  8087 ms  0xd28 cx:0x7ff198def0a8
  8087 ms     | 0xd28 EC_ValidatePublicKey()
  8094 ms     | 0xd28 ret:0x0
  8094 ms  0xd28 ret:0x7ff19c24e820::7ff19c24e820  80 ed 47 ad                                      ..G.
  8094 ms  0xd28 PK11_PubDeriveWithKDF()
  8094 ms  0xd28 seckey:0x7ff19c24e820
  8094 ms     | 0xd28 EC_ValidatePublicKey()
  8096 ms     | 0xd28 ret:0x0
  8097 ms  0xd28 ret:0x7ff19bc09f80
  8097 ms  0xd28 PK11_DeriveWithFlags()
  8097 ms  0xd28 basekey:0x7ff19bc09f80
  8097 ms     | 0xd28 PK11_DeriveWithTemplate()
  8097 ms  0xd28 ret:0x7ff19bc09a00
  8097 ms  0xd28 PK11_Derive()
  8097 ms  0xd28 basekey:0x7ff19bc09a00
  8097 ms     | 0xd28 PK11_DeriveWithTemplate()
  8097 ms  0xd28 ret:0x7ff19bc09980
  8097 ms  0xd28 SECKEY_DestroyPrivateKey()
  8097 ms  0xd28 privk:0x7ff19c24e820::7ff19c24e820  80 ed 47 ad                                      ..G.
  8097 ms  0xd28 privk:0x7ff19c24e820::7ff19c24e820  e5 e5 e5 e5                                      ....
  8097 ms  0xd28 PK11_Encrypt()
  8097 ms  0xd28 symkey:0x7ff19bd44600
           /* TID 0xd1d */
  8104 ms  0xd1d PR_Close()
  8104 ms  0xd1d fd:0x7ff1ad4a33a0
  8104 ms  0xd1d PR_Close()
  8104 ms  0xd1d fd:0x7ff1ae5b8310
  8105 ms  0xd1d PR_Close()
  8105 ms  0xd1d fd:0x7ff1ad4a33a0
  8105 ms  0xd1d PR_Close()
  8105 ms  0xd1d fd:0x7ff1ae5b8310
  8105 ms  0xd1d PR_Close()
  8105 ms  0xd1d fd:0x7ff1b81c89a0
  8105 ms  0xd1d PR_Close()
  8105 ms  0xd1d fd:0x7ff1b81c88b0
  8105 ms  0xd1d PR_Close()
  8105 ms  0xd1d fd:0x7ff1b81c8a60
  8112 ms  0xd1d PR_Close()
  8112 ms  0xd1d fd:0x7ff1ae5b8310
           /* TID 0xd28 */
  8113 ms  0xd28 PK11_DeriveWithFlags()
  8113 ms  0xd28 basekey:0x7ff1ad1dfe80
  8113 ms     | 0xd28 PK11_DeriveWithTemplate()
  8113 ms  0xd28 ret:0x7ff19bc09f80
  8113 ms  0xd28 PK11_DeriveWithFlags()
  8113 ms  0xd28 basekey:0x7ff1ad1dfe80
  8113 ms     | 0xd28 PK11_DeriveWithTemplate()
  8113 ms  0xd28 ret:0x7ff19bc09f80
  8113 ms  0xd28 PK11_Encrypt()
  8113 ms  0xd28 symkey:0x7ff19bc08100
           /* TID 0xd1d */
  8114 ms  0xd1d PR_Close()
  8114 ms  0xd1d fd:0x7ff19c17ff40
           /* TID 0xd28 */
  8115 ms  0xd28 PK11_Encrypt()
  8115 ms  0xd28 symkey:0x7ff19bc08100
  8115 ms  0xd28 SECKEY_CreateECPrivateKey()
  8115 ms  0xd28 cx:0x7ff198df0908
  8116 ms     | 0xd28 EC_ValidatePublicKey()
  8116 ms     | 0xd28 ret:0x0
  8116 ms  0xd28 ret:0x7ff19c254020::7ff19c254020  50 86 4b ae                                      P.K.
  8116 ms  0xd28 SECKEY_CreateECPrivateKey()
  8116 ms  0xd28 cx:0x7ff198df0908
  8117 ms     | 0xd28 EC_ValidatePublicKey()
  8118 ms     | 0xd28 ret:0x0
  8118 ms  0xd28 ret:0x7ff1aceda020::7ff1aceda020  d0 88 4b ae                                      ..K.
           /* TID 0xd1d */
  8120 ms  0xd1d PR_Close()
  8120 ms  0xd1d fd:0x7ff1ad4a33a0
  8120 ms  0xd1d PR_Close()
  8120 ms  0xd1d fd:0x7ff1ae5f5040
  8121 ms  0xd1d PR_Close()
  8121 ms  0xd1d fd:0x7ff1ad4a33a0
  8121 ms  0xd1d PR_Close()
  8121 ms  0xd1d fd:0x7ff1ae5f5040
  8129 ms  0xd1d PR_Close()
  8129 ms  0xd1d fd:0x7ff1ae5f5220
  8130 ms  0xd1d PR_Close()
  8130 ms  0xd1d fd:0x7ff1ae5f5220
           /* TID 0xd28 */
  8131 ms  0xd28 SECKEY_CreateECPrivateKey()
  8131 ms  0xd28 cx:0x7ff198df0aa8
  8131 ms     | 0xd28 EC_ValidatePublicKey()
  8131 ms     | 0xd28 ret:0x0
  8131 ms  0xd28 ret:0x7ff1acfe4020::7ff1acfe4020  a0 db 49 ae                                      ..I.
  8131 ms  0xd28 SECKEY_CreateECPrivateKey()
  8131 ms  0xd28 cx:0x7ff198df0aa8
  8132 ms     | 0xd28 EC_ValidatePublicKey()
  8133 ms     | 0xd28 ret:0x0
  8133 ms  0xd28 ret:0x7ff1acfea820::7ff1acfea820  d0 dd 49 ae                                      ..I.
           /* TID 0xd1d */
  8134 ms  0xd1d PR_Close()
  8134 ms  0xd1d fd:0x7ff1ad4a33a0
  8134 ms  0xd1d PR_Close()
  8134 ms  0xd1d fd:0x7ff1ae5f5310
  8135 ms  0xd1d PR_Close()
  8135 ms  0xd1d fd:0x7ff1ad4a33a0
  8135 ms  0xd1d PR_Close()
  8135 ms  0xd1d fd:0x7ff1ae5f5310
  8137 ms  0xd1d PR_Close()
  8137 ms  0xd1d fd:0x7ff1ae5f53a0
  8138 ms  0xd1d PR_Close()
  8138 ms  0xd1d fd:0x7ff1ae5f53a0
           /* TID 0xd28 */
  8140 ms  0xd28 SSL_AuthCertificateComplete()
  8140 ms  0xd28 fd:0x7ff19c0d1bb0
  8140 ms  0xd28 err:0x0
  8142 ms  0xd28 PK11_Encrypt()
  8142 ms  0xd28 symkey:0x7ff19bc08100
  8142 ms  0xd28 PK11_Encrypt()
  8142 ms  0xd28 symkey:0x7ff19bd44600
  8142 ms  0xd28 PK11_Encrypt()
  8142 ms  0xd28 symkey:0x7ff19bd44600
           /* TID 0xdca */
  8144 ms  SECKEY_ECParamsToBasePointOrderLen()
  8144 ms  0xdca ret:0x180
  8144 ms  SECKEY_ECParamsToBasePointOrderLen()
  8144 ms  0xdca ret:0x180
  8144 ms  0xdca EC_ValidatePublicKey()
  8145 ms  0xdca ret:0x0
  8148 ms  0xdca _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8148 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8148 ms     | 0xdca ret:0x180
  8148 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8148 ms     | 0xdca ret:0x180
  8148 ms     | 0xdca EC_ValidatePublicKey()
           /* TID 0xd28 */
  8148 ms  SECKEY_ECParamsToKeySize()
  8148 ms  0xd28 ret:0x100
  8149 ms  SECKEY_ECParamsToBasePointOrderLen()
  8149 ms  0xd28 ret:0x100
  8149 ms  SECKEY_ECParamsToBasePointOrderLen()
  8149 ms  0xd28 ret:0x100
           /* TID 0xd1d */
  8153 ms  0xd1d PR_Close()
  8153 ms  0xd1d fd:0x7ff1ae5f5b80
  8154 ms  0xd1d PR_Close()
  8154 ms  0xd1d fd:0x7ff1ae5f5b80
  8156 ms  0xd1d PR_Close()
  8156 ms  0xd1d fd:0x7ff1ae5f5bb0
           /* TID 0xdca */
  8159 ms     | 0xdca ret:0x0
           /* TID 0xd28 */
  8159 ms  0xd28 EC_ValidatePublicKey()
  8161 ms  0xd28 ret:0x0
  8163 ms  SECKEY_ECParamsToKeySize()
  8163 ms  0xd28 ret:0x100
  8163 ms  0xd28 SECKEY_CreateECPrivateKey()
  8163 ms  0xd28 cx:0x7ff198df0428
  8163 ms     | 0xd28 EC_ValidatePublicKey()
  8165 ms     | 0xd28 ret:0x0
  8165 ms  0xd28 ret:0x7ff1acffa820::7ff1acffa820  b0 80 4b ae                                      ..K.
  8165 ms  0xd28 PK11_PubDeriveWithKDF()
  8165 ms  0xd28 seckey:0x7ff1acffa820
  8165 ms     | 0xd28 EC_ValidatePublicKey()
           /* TID 0xdca */
  8173 ms  0xdca ret:0x0
           /* TID 0xd8d */
  8180 ms  0xd8d PR_Close()
  8180 ms  0xd8d fd:0x7ff1ad4a3130
           /* TID 0xd1d */
  8180 ms  0xd1d PR_Close()
  8180 ms  0xd1d fd:0x7ff1ad4a33a0
  8181 ms  0xd1d PR_Close()
  8181 ms  0xd1d fd:0x7ff1ae5f5fd0
           /* TID 0xd8d */
  8181 ms  0xd8d PR_Close()
  8181 ms  0xd8d fd:0x7ff1ad4a3130
           /* TID 0xd28 */
  8183 ms     | 0xd28 ret:0x0
  8185 ms  0xd28 ret:0x7ff19bc09f80
  8185 ms  0xd28 PK11_DeriveWithFlags()
  8185 ms  0xd28 basekey:0x7ff19bc09f80
  8185 ms     | 0xd28 PK11_DeriveWithTemplate()
  8185 ms  0xd28 ret:0x7ff1ad1e0600
  8185 ms  0xd28 PK11_Derive()
  8185 ms  0xd28 basekey:0x7ff1ad1e0600
  8185 ms     | 0xd28 PK11_DeriveWithTemplate()
  8185 ms  0xd28 ret:0x7ff1ad1e0700
  8185 ms  0xd28 SECKEY_DestroyPrivateKey()
  8185 ms  0xd28 privk:0x7ff1acffa820::7ff1acffa820  b0 80 4b ae                                      ..K.
  8185 ms  0xd28 privk:0x7ff1acffa820::7ff1acffa820  e5 e5 e5 e5                                      ....
  8185 ms  0xd28 PK11_Encrypt()
  8185 ms  0xd28 symkey:0x7ff1ad6f8180
           /* TID 0xdc7 */
  8189 ms  SECKEY_ECParamsToBasePointOrderLen()
  8189 ms  0xdc7 ret:0x180
  8189 ms  SECKEY_ECParamsToBasePointOrderLen()
  8189 ms  0xdc7 ret:0x180
  8189 ms  0xdc7 EC_ValidatePublicKey()
  8191 ms  0xdc7 ret:0x0
  8194 ms  0xdc7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8194 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8194 ms     | 0xdc7 ret:0x180
  8194 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8194 ms     | 0xdc7 ret:0x180
  8194 ms     | 0xdc7 EC_ValidatePublicKey()
  8195 ms     | 0xdc7 ret:0x0
  8198 ms  0xdc7 ret:0x0
           /* TID 0xd28 */
  8198 ms  SECKEY_ECParamsToKeySize()
  8198 ms  0xd28 ret:0x100
  8198 ms  SECKEY_ECParamsToBasePointOrderLen()
  8198 ms  0xd28 ret:0x100
  8198 ms  SECKEY_ECParamsToBasePointOrderLen()
  8198 ms  0xd28 ret:0x100
  8198 ms  0xd28 EC_ValidatePublicKey()
           /* TID 0xd8d */
  8199 ms  0xd8d PR_Close()
  8199 ms  0xd8d fd:0x7ff1ae5f5fd0
           /* TID 0xd28 */
  8205 ms  0xd28 ret:0x0
  8207 ms  SECKEY_ECParamsToKeySize()
  8207 ms  0xd28 ret:0x100
  8207 ms  0xd28 SECKEY_CreateECPrivateKey()
  8207 ms  0xd28 cx:0x7ff198def3e8
  8207 ms     | 0xd28 EC_ValidatePublicKey()
  8221 ms     | 0xd28 ret:0x0
  8222 ms  0xd28 ret:0x7ff1acff6020::7ff1acff6020  e0 82 4b ae                                      ..K.
  8222 ms  0xd28 PK11_PubDeriveWithKDF()
  8222 ms  0xd28 seckey:0x7ff1acff6020
  8222 ms     | 0xd28 EC_ValidatePublicKey()
  8223 ms     | 0xd28 ret:0x0
  8224 ms  0xd28 ret:0x7ff19bc09f80
  8224 ms  0xd28 PK11_DeriveWithFlags()
  8224 ms  0xd28 basekey:0x7ff19bc09f80
  8225 ms     | 0xd28 PK11_DeriveWithTemplate()
  8225 ms  0xd28 ret:0x7ff1ad1dfe00
  8225 ms  0xd28 PK11_Derive()
  8225 ms  0xd28 basekey:0x7ff1ad1dfe00
  8225 ms     | 0xd28 PK11_DeriveWithTemplate()
  8225 ms  0xd28 ret:0x7ff19bcf8d00
  8225 ms  0xd28 SECKEY_DestroyPrivateKey()
  8225 ms  0xd28 privk:0x7ff1acff6020::7ff1acff6020  e0 82 4b ae                                      ..K.
  8225 ms  0xd28 privk:0x7ff1acff6020::7ff1acff6020  e5 e5 e5 e5                                      ....
  8225 ms  0xd28 PK11_Encrypt()
  8225 ms  0xd28 symkey:0x7ff19c1b7f80
  8238 ms  0xd28 SECKEY_CreateECPrivateKey()
  8238 ms  0xd28 cx:0x7ff198df1c88
  8239 ms     | 0xd28 EC_ValidatePublicKey()
  8239 ms     | 0xd28 ret:0x0
  8239 ms  0xd28 ret:0x7ff1acff6820::7ff1acff6820  f0 31 98 ae                                      .1..
  8239 ms  0xd28 SECKEY_CreateECPrivateKey()
  8239 ms  0xd28 cx:0x7ff198df1c88
  8239 ms     | 0xd28 EC_ValidatePublicKey()
  8241 ms     | 0xd28 ret:0x0
  8241 ms  0xd28 ret:0x7ff1acffa820::7ff1acffa820  d0 33 98 ae                                      .3..
  8242 ms  0xd28 SECKEY_DestroyPrivateKey()
  8242 ms  0xd28 privk:0x7ff19bc91820::7ff19bc91820  70 44 d1 9b                                      pD..
  8242 ms  0xd28 privk:0x7ff19bc91820::7ff19bc91820  e5 e5 e5 e5                                      ....
  8242 ms  0xd28 SECKEY_DestroyPrivateKey()
  8242 ms  0xd28 privk:0x7ff19bc8a820::7ff19bc8a820  30 68 c4 9b                                      0h..
  8242 ms  0xd28 privk:0x7ff19bc8a820::7ff19bc8a820  e5 e5 e5 e5                                      ....
  8242 ms  0xd28 SSL_AuthCertificateComplete()
  8242 ms  0xd28 fd:0x7ff19bc0c0a0
  8242 ms  0xd28 err:0x0
  8242 ms  0xd28 SSL_AuthCertificateComplete()
  8242 ms  0xd28 fd:0x7ff19bc0c130
  8242 ms  0xd28 err:0x0
  8242 ms  0xd28 PK11_Encrypt()
  8242 ms  0xd28 symkey:0x7ff19bd44600
  8242 ms  0xd28 PK11_Encrypt()
  8242 ms  0xd28 symkey:0x7ff1ad6f8180
  8242 ms  0xd28 PK11_Encrypt()
  8242 ms  0xd28 symkey:0x7ff19c1b7f80
           /* TID 0xdc6 */
  8252 ms  SECKEY_ECParamsToBasePointOrderLen()
  8252 ms  0xdc6 ret:0x180
  8252 ms  SECKEY_ECParamsToBasePointOrderLen()
  8252 ms  0xdc6 ret:0x180
  8252 ms  0xdc6 EC_ValidatePublicKey()
  8254 ms  0xdc6 ret:0x0
  8257 ms  0xdc6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8257 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8257 ms     | 0xdc6 ret:0x180
  8257 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8257 ms     | 0xdc6 ret:0x180
  8257 ms     | 0xdc6 EC_ValidatePublicKey()
  8258 ms     | 0xdc6 ret:0x0
           /* TID 0xd28 */
  8259 ms  SECKEY_ECParamsToKeySize()
  8259 ms  0xd28 ret:0x100
  8259 ms  SECKEY_ECParamsToBasePointOrderLen()
  8259 ms  0xd28 ret:0x100
  8259 ms  SECKEY_ECParamsToBasePointOrderLen()
  8259 ms  0xd28 ret:0x100
  8259 ms  0xd28 EC_ValidatePublicKey()
  8260 ms  0xd28 ret:0x0
  8262 ms  SECKEY_ECParamsToKeySize()
  8262 ms  0xd28 ret:0x100
  8262 ms  0xd28 SECKEY_CreateECPrivateKey()
  8262 ms  0xd28 cx:0x7ff198df0908
  8263 ms     | 0xd28 EC_ValidatePublicKey()
  8264 ms     | 0xd28 ret:0x0
  8264 ms  0xd28 ret:0x7ff1b3606820::7ff1b3606820  e0 22 f2 9b                                      ."..
  8264 ms  0xd28 PK11_PubDeriveWithKDF()
  8264 ms  0xd28 seckey:0x7ff1b3606820
  8264 ms     | 0xd28 EC_ValidatePublicKey()
  8266 ms     | 0xd28 ret:0x0
           /* TID 0xd8d */
  8272 ms  0xd8d PR_Close()
  8272 ms  0xd8d fd:0x7ff19c0d1be0
           /* TID 0xdc6 */
  8275 ms  0xdc6 ret:0x0
           /* TID 0xd30 */
  8283 ms  0xd30 PR_Close()
  8283 ms  0xd30 fd:0x7ff19bc0c370
           /* TID 0xd28 */
  8287 ms  0xd28 ret:0x7ff19bc09f80
  8287 ms  0xd28 PK11_DeriveWithFlags()
  8287 ms  0xd28 basekey:0x7ff19bc09f80
  8287 ms     | 0xd28 PK11_DeriveWithTemplate()
  8287 ms  0xd28 ret:0x7ff19bcf7f80
  8287 ms  0xd28 PK11_Derive()
  8287 ms  0xd28 basekey:0x7ff19bcf7f80
  8287 ms     | 0xd28 PK11_DeriveWithTemplate()
  8287 ms  0xd28 ret:0x7ff1ad6f8100
  8287 ms  0xd28 SECKEY_DestroyPrivateKey()
  8287 ms  0xd28 privk:0x7ff1b3606820::7ff1b3606820  e0 22 f2 9b                                      ."..
  8287 ms  0xd28 privk:0x7ff1b3606820::7ff1b3606820  e5 e5 e5 e5                                      ....
  8287 ms  0xd28 PK11_Encrypt()
  8287 ms  0xd28 symkey:0x7ff19c1b7480
           /* TID 0xd22 */
  8288 ms  0xd22 PR_Close()
  8288 ms  0xd22 fd:0x7ff1b6d18df0
           /* TID 0xd8d */
  8293 ms  0xd8d PR_Close()
  8293 ms  0xd8d fd:0x7ff19bf96e80
           /* TID 0xd1d */
  8294 ms  0xd1d PR_Close()
  8294 ms  0xd1d fd:0x7ff1ad4a33a0
  8294 ms  0xd1d PR_Close()
  8294 ms  0xd1d fd:0x7ff19bf96e80
           /* TID 0xd85 */
  8295 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8295 ms  0xd85 ret:0x0
  8295 ms  0xd85 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8295 ms  0xd85 ret:0x0
           /* TID 0xd28 */
  8296 ms  SECKEY_ECParamsToKeySize()
  8296 ms  0xd28 ret:0xff
  8296 ms  0xd28 SECKEY_CreateECPrivateKey()
  8296 ms  0xd28 cx:0x7ff198df0aa8
  8296 ms     | 0xd28 EC_ValidatePublicKey()
  8296 ms     | 0xd28 ret:0x0
  8296 ms  0xd28 ret:0x7ff1b2e41820::7ff1b2e41820  d0 28 f2 9b                                      .(..
  8296 ms  0xd28 PK11_PubDeriveWithKDF()
  8296 ms  0xd28 seckey:0x7ff1b2e41820
  8296 ms     | 0xd28 EC_ValidatePublicKey()
  8296 ms     | 0xd28 ret:0x0
  8297 ms  0xd28 ret:0x7ff19bc09f80
  8297 ms  0xd28 PK11_DeriveWithFlags()
  8297 ms  0xd28 basekey:0x7ff19bc09f80
  8297 ms     | 0xd28 PK11_DeriveWithTemplate()
  8297 ms  0xd28 ret:0x7ff1ad6f7e80
  8297 ms  0xd28 PK11_Derive()
  8297 ms  0xd28 basekey:0x7ff1ad6f7e80
  8297 ms     | 0xd28 PK11_DeriveWithTemplate()
  8297 ms  0xd28 ret:0x7ff19bffb200
  8297 ms  0xd28 SECKEY_DestroyPrivateKey()
  8297 ms  0xd28 privk:0x7ff1b2e41820::7ff1b2e41820  d0 28 f2 9b                                      .(..
  8297 ms  0xd28 privk:0x7ff1b2e41820::7ff1b2e41820  e5 e5 e5 e5                                      ....
  8297 ms  0xd28 PK11_Encrypt()
  8297 ms  0xd28 symkey:0x7ff19c2b2080
  8300 ms  0xd28 SSL_AuthCertificateComplete()
  8300 ms  0xd28 fd:0x7ff19c1c0a60
  8300 ms  0xd28 err:0x0
  8302 ms  0xd28 PK11_Encrypt()
  8302 ms  0xd28 symkey:0x7ff19bd44600
  8302 ms  0xd28 PK11_Encrypt()
  8302 ms  0xd28 symkey:0x7ff19bc08100
  8308 ms  0xd28 SSL_AuthCertificateComplete()
  8308 ms  0xd28 fd:0x7ff19c0d1b80
  8308 ms  0xd28 err:0x0
  8308 ms  0xd28 PR_Close()
  8308 ms  0xd28 fd:0x7ff19c0d1b80
  8310 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  8310 ms     | 0xd28 privk:0x7ff1acfea820::7ff1acfea820  d0 dd 49 ae                                      ..I.
  8310 ms     | 0xd28 privk:0x7ff1acfea820::7ff1acfea820  e5 e5 e5 e5                                      ....
  8310 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  8310 ms     | 0xd28 privk:0x7ff1acfe4020::7ff1acfe4020  a0 db 49 ae                                      ..I.
  8310 ms     | 0xd28 privk:0x7ff1acfe4020::7ff1acfe4020  e5 e5 e5 e5                                      ....
  8310 ms  0xd28 PR_Close()
  8310 ms  0xd28 fd:0x7ff19bc0c0d0
  8310 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  8310 ms     | 0xd28 privk:0x7ff1acffa820::7ff1acffa820  d0 33 98 ae                                      .3..
  8310 ms     | 0xd28 privk:0x7ff1acffa820::7ff1acffa820  e5 e5 e5 e5                                      ....
  8310 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  8310 ms     | 0xd28 privk:0x7ff1acff6820::7ff1acff6820  f0 31 98 ae                                      .1..
  8310 ms     | 0xd28 privk:0x7ff1acff6820::7ff1acff6820  e5 e5 e5 e5                                      ....
  8310 ms  0xd28 PR_Close()
  8310 ms  0xd28 fd:0x7ff19c1c0a60
  8311 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  8311 ms     | 0xd28 privk:0x7ff1aceda020::7ff1aceda020  d0 88 4b ae                                      ..K.
  8311 ms     | 0xd28 privk:0x7ff1aceda020::7ff1aceda020  e5 e5 e5 e5                                      ....
  8311 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  8311 ms     | 0xd28 privk:0x7ff19c254020::7ff19c254020  50 86 4b ae                                      P.K.
  8311 ms     | 0xd28 privk:0x7ff19c254020::7ff19c254020  e5 e5 e5 e5                                      ....
  8311 ms  0xd28 PR_Close()
  8311 ms  0xd28 fd:0x7ff19bcf2f10
  8311 ms     | 0xd28 PK11_Encrypt()
  8311 ms     | 0xd28 symkey:0x7ff19bc08100
  8311 ms  0xd28 PR_Close()
  8311 ms  0xd28 fd:0x7ff19bc0c130
  8321 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  8321 ms     | 0xd28 privk:0x7ff19c19e820::7ff19c19e820  30 43 1f ad                                      0C..
  8322 ms     | 0xd28 privk:0x7ff19c19e820::7ff19c19e820  e5 e5 e5 e5                                      ....
  8322 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  8322 ms     | 0xd28 privk:0x7ff19c198020::7ff19c198020  20 e4 1b ad                                       ...
  8322 ms     | 0xd28 privk:0x7ff19c198020::7ff19c198020  e5 e5 e5 e5                                      ....
  8322 ms  0xd28 PR_Close()
  8322 ms  0xd28 fd:0x7ff19bc0c0a0
  8322 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  8322 ms     | 0xd28 privk:0x7ff19bd35020::7ff19bd35020  90 e2 1b ad                                      ....
  8322 ms     | 0xd28 privk:0x7ff19bd35020::7ff19bd35020  e5 e5 e5 e5                                      ....
  8322 ms     | 0xd28 SECKEY_DestroyPrivateKey()
  8322 ms     | 0xd28 privk:0x7ff19bd30820::7ff19bd30820  30 dd 16 ad                                      0...
  8322 ms     | 0xd28 privk:0x7ff19bd30820::7ff19bd30820  e5 e5 e5 e5                                      ....
  8322 ms  0xd28 PR_Close()
  8322 ms  0xd28 fd:0x7ff19c0d1bb0
  8322 ms     | 0xd28 PK11_Encrypt()
  8322 ms     | 0xd28 symkey:0x7ff19bd44600
  8327 ms  0xd28 PR_Close()
  8327 ms  0xd28 fd:0x7ff1b3788610
           /* TID 0xd7a */
  8328 ms  0xd7a PR_Close()
  8328 ms  0xd7a fd:0x7ff19bc0c370
  8328 ms  0xd7a PR_Close()
  8328 ms  0xd7a fd:0x7ff19bc0c370
  8328 ms  0xd7a PR_Close()
  8328 ms  0xd7a fd:0x7ff19bc0c370
  8328 ms  0xd7a PR_Close()
  8328 ms  0xd7a fd:0x7ff19bc0c400
           /* TID 0xd8d */
  8329 ms  0xd8d PR_Close()
  8329 ms  0xd8d fd:0x7ff19bc0c400
           /* TID 0xd30 */
  8333 ms  0xd30 PR_Close()
  8333 ms  0xd30 fd:0x7ff19bcf2eb0
  8333 ms  0xd30 PR_Close()
  8333 ms  0xd30 fd:0x7ff19bcf2ee0
           /* TID 0xd22 */
  8344 ms  0xd22 PR_Close()
  8344 ms  0xd22 fd:0x7ff1ad4a3700
           /* TID 0xd1d */
  8382 ms  0xd1d PR_Close()
  8382 ms  0xd1d fd:0x7ff19c0d1f40
  8382 ms  0xd1d PR_Close()
  8382 ms  0xd1d fd:0x7ff19c17f880
           /* TID 0xd8d */
  8384 ms  0xd8d PR_Close()
  8384 ms  0xd8d fd:0x7ff19c0d8850
           /* TID 0xd22 */
  8386 ms  0xd22 PR_Close()
  8386 ms  0xd22 fd:0x7ff1b3430820
           /* TID 0xd8d */
  8387 ms  0xd8d PR_Close()
  8387 ms  0xd8d fd:0x7ff19c0d8850
  8418 ms  0xd8d PR_Close()
  8418 ms  0xd8d fd:0x7ff19bc0c460
  8420 ms  0xd8d PR_Close()
  8420 ms  0xd8d fd:0x7ff19bc0c460
  8424 ms  0xd8d PR_Close()
  8424 ms  0xd8d fd:0x7ff19bcf21c0
  8425 ms  0xd8d PR_Close()
  8425 ms  0xd8d fd:0x7ff19bcf2220
  8433 ms  0xd8d PR_Close()
  8433 ms  0xd8d fd:0x7ff19bcf2df0
  8438 ms  0xd8d PR_Close()
  8438 ms  0xd8d fd:0x7ff19c131bb0
  8438 ms  0xd8d PR_Close()
  8438 ms  0xd8d fd:0x7ff19c1310a0
  8440 ms  0xd8d PR_Close()
  8440 ms  0xd8d fd:0x7ff19c1310a0
  8446 ms  0xd8d PR_Close()
  8446 ms  0xd8d fd:0x7ff19c17f730
           /* TID 0xd1d */
  8611 ms  0xd1d PR_Close()
  8611 ms  0xd1d fd:0x7ff19c0d1130
  8611 ms  0xd1d PR_Close()
  8611 ms  0xd1d fd:0x7ff19c0d1130
  8617 ms  0xd1d PR_Close()
  8617 ms  0xd1d fd:0x7ff1d55da130
  8617 ms  0xd1d PR_Close()
  8617 ms  0xd1d fd:0x7ff1d55da190
Process terminated
