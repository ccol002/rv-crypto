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
           /* TID 0x7a44 */
    88 ms  0x7a44 PR_Close()
    88 ms  0x7a44 fd:0x7f60d1ee2820
           /* TID 0x7a3c */
   319 ms  0x7a3c SSL_ImportFD()
   319 ms  0x7a3c ret:0x7f60d257c400
   319 ms  0x7a3c SSL_AuthCertificateHook()
   319 ms  0x7a3c fd:0x7f60d257c400
   319 ms  0x7a3c ret:0x0
   319 ms  0x7a3c PR_Connect()
   319 ms  0x7a3c fd:0x7f60d257c400
   526 ms  0x7a3c SECKEY_CreateECPrivateKey()
   526 ms  0x7a3c cx:0x7f60d1ee6988
   527 ms     | 0x7a3c EC_ValidatePublicKey()
   527 ms     | 0x7a3c ret:0x0
   527 ms  0x7a3c ret:0x7f60d235f020::7f60d235f020  f0 7b 3c d2                                      .{<.
   528 ms  0x7a3c SECKEY_CreateECPrivateKey()
   528 ms  0x7a3c cx:0x7f60d1ee6988
   529 ms     | 0x7a3c EC_ValidatePublicKey()
   534 ms     | 0x7a3c ret:0x0
   534 ms  0x7a3c ret:0x7f60d2361020::7f60d2361020  b0 7a 3c d2                                      .z<.
           /* TID 0x7aa9 */
   621 ms  0x7aa9 PR_Close()
   621 ms  0x7aa9 fd:0x7f60d257c340
   624 ms  0x7aa9 PR_Close()
   624 ms  0x7aa9 fd:0x7f60d257c340
           /* TID 0x7a3c */
   747 ms  SECKEY_ECParamsToKeySize()
   747 ms  0x7a3c ret:0x100
   747 ms  0x7a3c SECKEY_CreateECPrivateKey()
   747 ms  0x7a3c cx:0x7f60d1ee6988
   748 ms     | 0x7a3c EC_ValidatePublicKey()
   749 ms     | 0x7a3c ret:0x0
   749 ms  0x7a3c ret:0x7f60d236a020::7f60d236a020  30 b8 20 c1                                      0. .
   749 ms  0x7a3c PK11_PubDeriveWithKDF()
   749 ms  0x7a3c seckey:0x7f60d236a020
   749 ms     | 0x7a3c EC_ValidatePublicKey()
   751 ms     | 0x7a3c ret:0x0
   752 ms  0x7a3c ret:0x7f60d3803780
   752 ms  0x7a3c PK11_DeriveWithFlags()
   752 ms  0x7a3c basekey:0x7f60d3803780
   752 ms     | 0x7a3c PK11_DeriveWithTemplate()
   752 ms  0x7a3c ret:0x7f60d23f9c00
   752 ms  0x7a3c PK11_Derive()
   752 ms  0x7a3c basekey:0x7f60d23f9c00
   752 ms     | 0x7a3c PK11_DeriveWithTemplate()
   752 ms  0x7a3c ret:0x7f60d23f9d00
   752 ms  0x7a3c SECKEY_DestroyPrivateKey()
   752 ms  0x7a3c privk:0x7f60d236a020::7f60d236a020  30 b8 20 c1                                      0. .
   752 ms  0x7a3c privk:0x7f60d236a020::7f60d236a020  e5 e5 e5 e5                                      ....
   752 ms  0x7a3c PK11_Encrypt()
   752 ms  0x7a3c symkey:0x7f60d23f9e80
   753 ms  0x7a3c PR_Connect()
   753 ms  0x7a3c fd:0x7f60d257ceb0
           /* TID 0x7aa9 */
   802 ms  0x7aa9 PR_Close()
   802 ms  0x7aa9 fd:0x7f60d257cdc0
           /* TID 0x7a44 */
   806 ms  0x7a44 PR_Close()
   806 ms  0x7a44 fd:0x7f60d257cdc0
           /* TID 0x7aa1 */
   806 ms  0x7aa1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   806 ms  0x7aa1 ret:0x0
           /* TID 0x7a3c */
   807 ms  0x7a3c SSL_AuthCertificateComplete()
   807 ms  0x7a3c fd:0x7f60d257c400
   807 ms  0x7a3c err:0x0
   807 ms  0x7a3c PK11_Encrypt()
   807 ms  0x7a3c symkey:0x7f60d23f9e80
   960 ms  0x7a3c SECKEY_DestroyPrivateKey()
   960 ms  0x7a3c privk:0x7f60d2361020::7f60d2361020  b0 7a 3c d2                                      .z<.
   960 ms  0x7a3c privk:0x7f60d2361020::7f60d2361020  e5 e5 e5 e5                                      ....
   961 ms  0x7a3c SECKEY_DestroyPrivateKey()
   961 ms  0x7a3c privk:0x7f60d235f020::7f60d235f020  f0 7b 3c d2                                      .{<.
   961 ms  0x7a3c privk:0x7f60d235f020::7f60d235f020  e5 e5 e5 e5                                      ....
  1173 ms  0x7a3c SSL_ImportFD()
  1174 ms  0x7a3c ret:0x7f60c12150a0
  1174 ms  0x7a3c SSL_AuthCertificateHook()
  1174 ms  0x7a3c fd:0x7f60c12150a0
  1174 ms  0x7a3c ret:0x0
  1174 ms  0x7a3c PR_Connect()
  1174 ms  0x7a3c fd:0x7f60c12150a0
  1200 ms  0x7a3c SECKEY_CreateECPrivateKey()
  1200 ms  0x7a3c cx:0x7f60d23fd428
  1201 ms     | 0x7a3c EC_ValidatePublicKey()
  1201 ms     | 0x7a3c ret:0x0
  1201 ms  0x7a3c ret:0x7f60d2360820::7f60d2360820  30 b8 20 c1                                      0. .
  1202 ms  0x7a3c SECKEY_CreateECPrivateKey()
  1202 ms  0x7a3c cx:0x7f60d23fd428
  1204 ms     | 0x7a3c EC_ValidatePublicKey()
  1208 ms     | 0x7a3c ret:0x0
  1208 ms  0x7a3c ret:0x7f60d2366820::7f60d2366820  70 b9 20 c1                                      p. .
           /* TID 0x7aa1 */
  1261 ms  0x7aa1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1261 ms  0x7aa1 ret:0x0
           /* TID 0x7a3c */
  1262 ms  SECKEY_ECParamsToKeySize()
  1262 ms  0x7a3c ret:0x100
  1262 ms  0x7a3c SECKEY_CreateECPrivateKey()
  1262 ms  0x7a3c cx:0x7f60d23fd428
  1264 ms     | 0x7a3c EC_ValidatePublicKey()
  1268 ms     | 0x7a3c ret:0x0
  1268 ms  0x7a3c ret:0x7f60d236a020::7f60d236a020  90 bc 20 c1                                      .. .
  1268 ms  0x7a3c PK11_PubDeriveWithKDF()
  1268 ms  0x7a3c seckey:0x7f60d236a020
  1268 ms     | 0x7a3c EC_ValidatePublicKey()
  1273 ms     | 0x7a3c ret:0x0
  1277 ms  0x7a3c ret:0x7f60d3803780
  1277 ms  0x7a3c PK11_DeriveWithFlags()
  1277 ms  0x7a3c basekey:0x7f60d3803780
  1277 ms     | 0x7a3c PK11_DeriveWithTemplate()
  1277 ms  0x7a3c ret:0x7f60d238dd00
  1277 ms  0x7a3c PK11_Derive()
  1277 ms  0x7a3c basekey:0x7f60d238dd00
  1277 ms     | 0x7a3c PK11_DeriveWithTemplate()
  1277 ms  0x7a3c ret:0x7f60d23fa700
  1277 ms  0x7a3c SECKEY_DestroyPrivateKey()
  1277 ms  0x7a3c privk:0x7f60d236a020::7f60d236a020  90 bc 20 c1                                      .. .
  1277 ms  0x7a3c privk:0x7f60d236a020::7f60d236a020  e5 e5 e5 e5                                      ....
  1277 ms  0x7a3c PK11_Encrypt()
  1277 ms  0x7a3c symkey:0x7f60d23fac00
  1278 ms  0x7a3c SSL_AuthCertificateComplete()
  1278 ms  0x7a3c fd:0x7f60c12150a0
  1278 ms  0x7a3c err:0x0
  1278 ms  0x7a3c PK11_Encrypt()
  1278 ms  0x7a3c symkey:0x7f60d23fac00
  1329 ms  0x7a3c SECKEY_DestroyPrivateKey()
  1329 ms  0x7a3c privk:0x7f60d2366820::7f60d2366820  70 b9 20 c1                                      p. .
  1330 ms  0x7a3c privk:0x7f60d2366820::7f60d2366820  e5 e5 e5 e5                                      ....
  1330 ms  0x7a3c SECKEY_DestroyPrivateKey()
  1330 ms  0x7a3c privk:0x7f60d2360820::7f60d2360820  30 b8 20 c1                                      0. .
  1330 ms  0x7a3c privk:0x7f60d2360820::7f60d2360820  e5 e5 e5 e5                                      ....
  1334 ms  0x7a3c PK11_Encrypt()
  1334 ms  0x7a3c symkey:0x7f60d23fac00
  1364 ms  0x7a3c PK11_Encrypt()
  1364 ms  0x7a3c symkey:0x7f60d23fac00
  1395 ms  0x7a3c PK11_Encrypt()
  1395 ms  0x7a3c symkey:0x7f60d23fac00
  1424 ms  0x7a3c PK11_Encrypt()
  1424 ms  0x7a3c symkey:0x7f60d23fac00
  1539 ms  0x7a3c PK11_Encrypt()
  1539 ms  0x7a3c symkey:0x7f60d23fac00
  1571 ms  0x7a3c PK11_Encrypt()
  1571 ms  0x7a3c symkey:0x7f60d23fac00
  1602 ms  0x7a3c PK11_Encrypt()
  1602 ms  0x7a3c symkey:0x7f60d23fac00
           /* TID 0x7a9b */
  1630 ms  0x7a9b PR_Close()
  1630 ms  0x7a9b fd:0x7f60c12152b0
  1631 ms  0x7a9b PR_Close()
  1631 ms  0x7a9b fd:0x7f60c1215310
  1631 ms  0x7a9b PR_Close()
  1631 ms  0x7a9b fd:0x7f60c12152b0
  1631 ms  0x7a9b PR_Close()
  1631 ms  0x7a9b fd:0x7f60c1215310
  1631 ms  0x7a9b PR_Close()
  1631 ms  0x7a9b fd:0x7f60c12152b0
  1631 ms  0x7a9b PR_Close()
  1631 ms  0x7a9b fd:0x7f60c1215310
  1631 ms  0x7a9b PR_Close()
  1631 ms  0x7a9b fd:0x7f60c12152b0
  1631 ms  0x7a9b PR_Close()
  1631 ms  0x7a9b fd:0x7f60c1215310
  1631 ms  0x7a9b PR_Close()
  1631 ms  0x7a9b fd:0x7f60c12152b0
  1631 ms  0x7a9b PR_Close()
  1631 ms  0x7a9b fd:0x7f60c1215310
  1631 ms  0x7a9b PR_Close()
  1631 ms  0x7a9b fd:0x7f60c12152b0
  1631 ms  0x7a9b PR_Close()
  1631 ms  0x7a9b fd:0x7f60c1215310
  1632 ms  0x7a9b PR_Close()
  1632 ms  0x7a9b fd:0x7f60c12152b0
  1632 ms  0x7a9b PR_Close()
  1632 ms  0x7a9b fd:0x7f60c1215310
  1632 ms  0x7a9b PR_Close()
  1632 ms  0x7a9b fd:0x7f60c12152b0
  1632 ms  0x7a9b PR_Close()
  1632 ms  0x7a9b fd:0x7f60c1215310
  1632 ms  0x7a9b PR_Close()
  1632 ms  0x7a9b fd:0x7f60c12152b0
  1632 ms  0x7a9b PR_Close()
  1632 ms  0x7a9b fd:0x7f60c1215310
  1632 ms  0x7a9b PR_Close()
  1632 ms  0x7a9b fd:0x7f60c12152b0
  1632 ms  0x7a9b PR_Close()
  1632 ms  0x7a9b fd:0x7f60c1215310
  1632 ms  0x7a9b PR_Close()
  1632 ms  0x7a9b fd:0x7f60c12152b0
  1632 ms  0x7a9b PR_Close()
  1632 ms  0x7a9b fd:0x7f60c1215310
  1633 ms  0x7a9b PR_Close()
  1633 ms  0x7a9b fd:0x7f60c12152b0
  1633 ms  0x7a9b PR_Close()
  1633 ms  0x7a9b fd:0x7f60c1215310
  1633 ms  0x7a9b PR_Close()
  1633 ms  0x7a9b fd:0x7f60c12152b0
  1633 ms  0x7a9b PR_Close()
  1633 ms  0x7a9b fd:0x7f60c1215310
  1633 ms  0x7a9b PR_Close()
  1633 ms  0x7a9b fd:0x7f60c12152b0
  1633 ms  0x7a9b PR_Close()
  1633 ms  0x7a9b fd:0x7f60c1215310
  1636 ms  0x7a9b PR_Close()
  1636 ms  0x7a9b fd:0x7f60c12152b0
  1636 ms  0x7a9b PR_Close()
  1636 ms  0x7a9b fd:0x7f60c12152b0
  1639 ms  0x7a9b PR_Close()
  1639 ms  0x7a9b fd:0x7f60c12152b0
  1639 ms  0x7a9b PR_Close()
  1639 ms  0x7a9b fd:0x7f60c12152e0
  1642 ms  0x7a9b PR_Close()
  1642 ms  0x7a9b fd:0x7f60c12152e0
  1642 ms  0x7a9b PR_Close()
  1642 ms  0x7a9b fd:0x7f60c12152e0
  1645 ms  0x7a9b PR_Close()
  1645 ms  0x7a9b fd:0x7f60c12152e0
  1645 ms  0x7a9b PR_Close()
  1645 ms  0x7a9b fd:0x7f60c12152e0
  1692 ms  0x7a9b PR_Close()
  1692 ms  0x7a9b fd:0x7f60c12152e0
  1693 ms  0x7a9b PR_Close()
  1693 ms  0x7a9b fd:0x7f60c12152e0
  1700 ms  0x7a9b PR_Close()
  1700 ms  0x7a9b fd:0x7f60c12152e0
  1700 ms  0x7a9b PR_Close()
  1700 ms  0x7a9b fd:0x7f60c12152e0
  1706 ms  0x7a9b PR_Close()
  1706 ms  0x7a9b fd:0x7f60c12152e0
  1706 ms  0x7a9b PR_Close()
  1706 ms  0x7a9b fd:0x7f60c12152e0
  1709 ms  0x7a9b PR_Close()
  1709 ms  0x7a9b fd:0x7f60c12152e0
  1709 ms  0x7a9b PR_Close()
  1709 ms  0x7a9b fd:0x7f60c12152e0
           /* TID 0x7a98 */
  1709 ms  0x7a98 PR_Close()
  1709 ms  0x7a98 fd:0x7f60c12152e0
  1709 ms  0x7a98 PR_Close()
  1709 ms  0x7a98 fd:0x7f60c12152e0
  1709 ms  0x7a98 PR_Close()
  1709 ms  0x7a98 fd:0x7f60c12152e0
  1709 ms  0x7a98 PR_Close()
  1709 ms  0x7a98 fd:0x7f60c12152e0
  1709 ms  0x7a98 PR_Close()
  1709 ms  0x7a98 fd:0x7f60c12152e0
  1709 ms  0x7a98 PR_Close()
  1709 ms  0x7a98 fd:0x7f60c12152e0
  1709 ms  0x7a98 PR_Close()
  1709 ms  0x7a98 fd:0x7f60c12152e0
  1709 ms  0x7a98 PR_Close()
  1709 ms  0x7a98 fd:0x7f60c12152e0
  1709 ms  0x7a98 PR_Close()
  1709 ms  0x7a98 fd:0x7f60c12152e0
  1709 ms  0x7a98 PR_Close()
  1709 ms  0x7a98 fd:0x7f60c12152e0
  1709 ms  0x7a98 PR_Close()
  1709 ms  0x7a98 fd:0x7f60c12152e0
  1709 ms  0x7a98 PR_Close()
  1709 ms  0x7a98 fd:0x7f60c12152e0
  1709 ms  0x7a98 PR_Close()
  1709 ms  0x7a98 fd:0x7f60c12152e0
  1710 ms  0x7a98 PR_Close()
  1710 ms  0x7a98 fd:0x7f60c12152e0
  1710 ms  0x7a98 PR_Close()
  1710 ms  0x7a98 fd:0x7f60c12152e0
           /* TID 0x7aa9 */
  2212 ms  0x7aa9 PR_Close()
  2212 ms  0x7aa9 fd:0x7f60c1215640
  2214 ms  0x7aa9 PR_Close()
  2214 ms  0x7aa9 fd:0x7f60c1215640
  2927 ms  0x7aa9 PR_Close()
  2927 ms  0x7aa9 fd:0x7f60c1215640
           /* TID 0x7a44 */
  4218 ms  0x7a44 PR_Close()
  4218 ms  0x7a44 fd:0x7f60c1215640
  4218 ms  0x7a44 PR_Close()
  4218 ms  0x7a44 fd:0x7f60c1215790
  4218 ms  0x7a44 PR_Close()
  4218 ms  0x7a44 fd:0x7f60c12157f0
           /* TID 0x7a3c */
  4514 ms  0x7a3c SSL_ImportFD()
  4514 ms  0x7a3c ret:0x7f60c11df820
  4514 ms  0x7a3c SSL_AuthCertificateHook()
  4514 ms  0x7a3c fd:0x7f60c11df820
  4514 ms  0x7a3c ret:0x0
  4514 ms  0x7a3c PR_Connect()
  4514 ms  0x7a3c fd:0x7f60c11df820
  4593 ms  0x7a3c SECKEY_CreateECPrivateKey()
  4593 ms  0x7a3c cx:0x7f60d23fd768
  4595 ms     | 0x7a3c EC_ValidatePublicKey()
  4595 ms     | 0x7a3c ret:0x0
  4595 ms  0x7a3c ret:0x7f60d86db020::7f60d86db020  f0 e6 8e d3                                      ....
  4595 ms  0x7a3c SECKEY_CreateECPrivateKey()
  4595 ms  0x7a3c cx:0x7f60d23fd768
  4597 ms     | 0x7a3c EC_ValidatePublicKey()
  4602 ms     | 0x7a3c ret:0x0
  4602 ms  0x7a3c ret:0x7f60c1004020::7f60c1004020  70 e9 8e d3                                      p...
  4687 ms  SECKEY_ECParamsToKeySize()
  4687 ms  0x7a3c ret:0x100
  4688 ms  SECKEY_ECParamsToBasePointOrderLen()
  4688 ms  0x7a3c ret:0x100
  4688 ms  SECKEY_ECParamsToBasePointOrderLen()
  4688 ms  0x7a3c ret:0x100
  4688 ms  0x7a3c EC_ValidatePublicKey()
  4693 ms  0x7a3c ret:0x0
  4700 ms  SECKEY_ECParamsToKeySize()
  4700 ms  0x7a3c ret:0x100
  4700 ms  0x7a3c SECKEY_CreateECPrivateKey()
  4700 ms  0x7a3c cx:0x7f60d23fd768
  4702 ms     | 0x7a3c EC_ValidatePublicKey()
  4706 ms     | 0x7a3c ret:0x0
  4706 ms  0x7a3c ret:0x7f60c1011820::7f60c1011820  90 b2 1b c1                                      ....
  4707 ms  0x7a3c PK11_PubDeriveWithKDF()
  4707 ms  0x7a3c seckey:0x7f60c1011820
  4707 ms     | 0x7a3c EC_ValidatePublicKey()
  4711 ms     | 0x7a3c ret:0x0
  4714 ms  0x7a3c ret:0x7f60d3803780
  4714 ms  0x7a3c PK11_DeriveWithFlags()
  4714 ms  0x7a3c basekey:0x7f60d3803780
  4714 ms     | 0x7a3c PK11_DeriveWithTemplate()
  4714 ms  0x7a3c ret:0x7f60c11e3400
  4714 ms  0x7a3c PK11_Derive()
  4714 ms  0x7a3c basekey:0x7f60c11e3400
  4714 ms     | 0x7a3c PK11_DeriveWithTemplate()
  4715 ms  0x7a3c ret:0x7f60c11e3480
  4715 ms  0x7a3c SECKEY_DestroyPrivateKey()
  4715 ms  0x7a3c privk:0x7f60c1011820::7f60c1011820  90 b2 1b c1                                      ....
  4715 ms  0x7a3c privk:0x7f60c1011820::7f60c1011820  e5 e5 e5 e5                                      ....
  4715 ms  0x7a3c PK11_Encrypt()
  4715 ms  0x7a3c symkey:0x7f60c11e3600
  4716 ms  0x7a3c PR_Connect()
  4716 ms  0x7a3c fd:0x7f60c11dfd00
           /* TID 0x7a44 */
  4769 ms  0x7a44 PR_Close()
  4769 ms  0x7a44 fd:0x7f60c11dfc10
           /* TID 0x7aa1 */
  4770 ms  0x7aa1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4771 ms  0x7aa1 ret:0x0
  4771 ms  0x7aa1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4771 ms  0x7aa1 ret:0x0
           /* TID 0x7a3c */
  4784 ms  0x7a3c SSL_AuthCertificateComplete()
  4784 ms  0x7a3c fd:0x7f60c11df820
  4784 ms  0x7a3c err:0x0
  4785 ms  0x7a3c PK11_Encrypt()
  4785 ms  0x7a3c symkey:0x7f60c11e3600
  4785 ms  0x7a3c PK11_Encrypt()
  4785 ms  0x7a3c symkey:0x7f60c11e3600
  4793 ms  0x7a3c SECKEY_DestroyPrivateKey()
  4793 ms  0x7a3c privk:0x7f60c1004020::7f60c1004020  70 e9 8e d3                                      p...
  4796 ms  0x7a3c privk:0x7f60c1004020::7f60c1004020  e5 e5 e5 e5                                      ....
  4796 ms  0x7a3c SECKEY_DestroyPrivateKey()
  4796 ms  0x7a3c privk:0x7f60d86db020::7f60d86db020  f0 e6 8e d3                                      ....
  4796 ms  0x7a3c privk:0x7f60d86db020::7f60d86db020  e5 e5 e5 e5                                      ....
  4797 ms  0x7a3c PK11_Encrypt()
  4797 ms  0x7a3c symkey:0x7f60c11e3600
           /* TID 0x7a53 */
  4880 ms  0x7a53 PR_Close()
  4880 ms  0x7a53 fd:0x7f60d80f2670
           /* TID 0x7a3c */
  4972 ms  0x7a3c SSL_ImportFD()
  4972 ms  0x7a3c ret:0x7f60c11c88b0
  4972 ms  0x7a3c SSL_AuthCertificateHook()
  4972 ms  0x7a3c fd:0x7f60c11c88b0
  4972 ms  0x7a3c ret:0x0
  4974 ms  0x7a3c PK11_Encrypt()
  4974 ms  0x7a3c symkey:0x7f60c11e3600
  4975 ms  0x7a3c PR_Connect()
  4975 ms  0x7a3c fd:0x7f60c11c88b0
  5054 ms  0x7a3c SECKEY_CreateECPrivateKey()
  5054 ms  0x7a3c cx:0x7f60d23fdc48
  5056 ms     | 0x7a3c EC_ValidatePublicKey()
  5056 ms     | 0x7a3c ret:0x0
  5056 ms  0x7a3c ret:0x7f60c1016020::7f60c1016020  00 3b 1f c1                                      .;..
  5056 ms  0x7a3c SECKEY_CreateECPrivateKey()
  5056 ms  0x7a3c cx:0x7f60d23fdc48
  5059 ms     | 0x7a3c EC_ValidatePublicKey()
  5065 ms     | 0x7a3c ret:0x0
  5066 ms  0x7a3c ret:0x7f60c1018020::7f60c1018020  10 e5 8e d3                                      ....
           /* TID 0x7a53 */
  5105 ms  0x7a53 PR_Close()
  5105 ms  0x7a53 fd:0x7f60c11c8ac0
           /* TID 0x7a3c */
  5144 ms  SECKEY_ECParamsToKeySize()
  5144 ms  0x7a3c ret:0x100
  5144 ms  SECKEY_ECParamsToBasePointOrderLen()
  5144 ms  0x7a3c ret:0x100
  5144 ms  SECKEY_ECParamsToBasePointOrderLen()
  5144 ms  0x7a3c ret:0x100
  5144 ms  0x7a3c EC_ValidatePublicKey()
  5146 ms  0x7a3c ret:0x0
  5148 ms  SECKEY_ECParamsToKeySize()
  5148 ms  0x7a3c ret:0x100
  5148 ms  0x7a3c SECKEY_CreateECPrivateKey()
  5148 ms  0x7a3c cx:0x7f60d23fdc48
  5148 ms     | 0x7a3c EC_ValidatePublicKey()
  5150 ms     | 0x7a3c ret:0x0
  5150 ms  0x7a3c ret:0x7f60c0fb4820::7f60c0fb4820  70 fe fd c0                                      p...
  5150 ms  0x7a3c PK11_PubDeriveWithKDF()
  5150 ms  0x7a3c seckey:0x7f60c0fb4820
  5150 ms     | 0x7a3c EC_ValidatePublicKey()
  5151 ms     | 0x7a3c ret:0x0
  5160 ms  0x7a3c ret:0x7f60d3803780
  5160 ms  0x7a3c PK11_DeriveWithFlags()
  5160 ms  0x7a3c basekey:0x7f60d3803780
  5160 ms     | 0x7a3c PK11_DeriveWithTemplate()
  5160 ms  0x7a3c ret:0x7f60c0e52c00
  5160 ms  0x7a3c PK11_Derive()
  5160 ms  0x7a3c basekey:0x7f60c0e52c00
  5160 ms     | 0x7a3c PK11_DeriveWithTemplate()
  5160 ms  0x7a3c ret:0x7f60c0e52c80
  5160 ms  0x7a3c SECKEY_DestroyPrivateKey()
  5160 ms  0x7a3c privk:0x7f60c0fb4820::7f60c0fb4820  70 fe fd c0                                      p...
  5161 ms  0x7a3c privk:0x7f60c0fb4820::7f60c0fb4820  e5 e5 e5 e5                                      ....
  5161 ms  0x7a3c PK11_Encrypt()
  5161 ms  0x7a3c symkey:0x7f60c0e52e00
  5161 ms  0x7a3c SSL_AuthCertificateComplete()
  5161 ms  0x7a3c fd:0x7f60c11c88b0
  5161 ms  0x7a3c err:0x0
  5161 ms  0x7a3c PK11_Encrypt()
  5161 ms  0x7a3c symkey:0x7f60c0e52e00
  5176 ms  0x7a3c PK11_Encrypt()
  5176 ms  0x7a3c symkey:0x7f60c11e3600
  5176 ms  0x7a3c PK11_Encrypt()
  5176 ms  0x7a3c symkey:0x7f60c11e3600
  5177 ms  0x7a3c PK11_Encrypt()
  5177 ms  0x7a3c symkey:0x7f60c11e3600
  5177 ms  0x7a3c PK11_Encrypt()
  5177 ms  0x7a3c symkey:0x7f60c11e3600
  5177 ms  0x7a3c PK11_Encrypt()
  5177 ms  0x7a3c symkey:0x7f60c11e3600
  5177 ms  0x7a3c PK11_Encrypt()
  5177 ms  0x7a3c symkey:0x7f60c11e3600
  5178 ms  0x7a3c PK11_Encrypt()
  5178 ms  0x7a3c symkey:0x7f60c11e3600
  5178 ms  0x7a3c PK11_Encrypt()
  5178 ms  0x7a3c symkey:0x7f60c11e3600
  5178 ms  0x7a3c PK11_Encrypt()
  5178 ms  0x7a3c symkey:0x7f60c11e3600
  5178 ms  0x7a3c PK11_Encrypt()
  5178 ms  0x7a3c symkey:0x7f60c11e3600
  5179 ms  0x7a3c PK11_Encrypt()
  5179 ms  0x7a3c symkey:0x7f60c11e3600
  5179 ms  0x7a3c PK11_Encrypt()
  5179 ms  0x7a3c symkey:0x7f60c11e3600
  5179 ms  0x7a3c PK11_Encrypt()
  5179 ms  0x7a3c symkey:0x7f60c11e3600
  5179 ms  0x7a3c PK11_Encrypt()
  5179 ms  0x7a3c symkey:0x7f60c11e3600
  5180 ms  0x7a3c PK11_Encrypt()
  5180 ms  0x7a3c symkey:0x7f60c11e3600
  5181 ms  0x7a3c PK11_Encrypt()
  5181 ms  0x7a3c symkey:0x7f60c11e3600
  5181 ms  0x7a3c PK11_Encrypt()
  5181 ms  0x7a3c symkey:0x7f60c11e3600
  5182 ms  0x7a3c PK11_Encrypt()
  5182 ms  0x7a3c symkey:0x7f60c11e3600
  5182 ms  0x7a3c PK11_Encrypt()
  5182 ms  0x7a3c symkey:0x7f60c11e3600
  5182 ms  0x7a3c PK11_Encrypt()
  5182 ms  0x7a3c symkey:0x7f60c11e3600
  5182 ms  0x7a3c PK11_Encrypt()
  5182 ms  0x7a3c symkey:0x7f60c11e3600
  5182 ms  0x7a3c PK11_Encrypt()
  5182 ms  0x7a3c symkey:0x7f60c11e3600
  5239 ms  0x7a3c SECKEY_DestroyPrivateKey()
  5239 ms  0x7a3c privk:0x7f60c1018020::7f60c1018020  10 e5 8e d3                                      ....
  5239 ms  0x7a3c privk:0x7f60c1018020::7f60c1018020  e5 e5 e5 e5                                      ....
  5240 ms  0x7a3c SECKEY_DestroyPrivateKey()
  5240 ms  0x7a3c privk:0x7f60c1016020::7f60c1016020  00 3b 1f c1                                      .;..
  5240 ms  0x7a3c privk:0x7f60c1016020::7f60c1016020  e5 e5 e5 e5                                      ....
  5240 ms  0x7a3c PR_Close()
  5240 ms  0x7a3c fd:0x7f60c11c88b0
  5240 ms     | 0x7a3c PK11_Encrypt()
  5240 ms     | 0x7a3c symkey:0x7f60c0e52e00
           /* TID 0x7a44 */
  5378 ms  0x7a44 PR_Close()
  5378 ms  0x7a44 fd:0x7f60c0e9d1f0
  5423 ms  0x7a44 PR_Close()
  5423 ms  0x7a44 fd:0x7f60c0e9d1f0
  5424 ms  0x7a44 PR_Close()
  5424 ms  0x7a44 fd:0x7f60c0e9d1f0
  5426 ms  0x7a44 PR_Close()
  5426 ms  0x7a44 fd:0x7f60c0e9d1f0
  5427 ms  0x7a44 PR_Close()
  5427 ms  0x7a44 fd:0x7f60c0e9d1f0
  5455 ms  0x7a44 PR_Close()
  5455 ms  0x7a44 fd:0x7f60c0e9d1f0
  5489 ms  0x7a44 PR_Close()
  5489 ms  0x7a44 fd:0x7f60c0e9d1f0
  5493 ms  0x7a44 PR_Close()
  5493 ms  0x7a44 fd:0x7f60c0e9d100
  5503 ms  0x7a44 PR_Close()
  5503 ms  0x7a44 fd:0x7f60c0e9d100
  5505 ms  0x7a44 PR_Close()
  5505 ms  0x7a44 fd:0x7f60c0e9d100
  5507 ms  0x7a44 PR_Close()
  5507 ms  0x7a44 fd:0x7f60c0e9d340
  5510 ms  0x7a44 PR_Close()
  5510 ms  0x7a44 fd:0x7f60c0e9d340
  5511 ms  0x7a44 PR_Close()
  5511 ms  0x7a44 fd:0x7f60c0e9d340
  5512 ms  0x7a44 PR_Close()
  5512 ms  0x7a44 fd:0x7f60c0e9d340
  5515 ms  0x7a44 PR_Close()
  5515 ms  0x7a44 fd:0x7f60c0e9d340
  5517 ms  0x7a44 PR_Close()
  5517 ms  0x7a44 fd:0x7f60c0e9d340
  5518 ms  0x7a44 PR_Close()
  5518 ms  0x7a44 fd:0x7f60c0e9d340
  5532 ms  0x7a44 PR_Close()
  5532 ms  0x7a44 fd:0x7f60c0e9d100
  5533 ms  0x7a44 PR_Close()
  5533 ms  0x7a44 fd:0x7f60c0e9d100
  5566 ms  0x7a44 PR_Close()
  5566 ms  0x7a44 fd:0x7f60c0e9d220
  5657 ms  0x7a44 PR_Close()
  5657 ms  0x7a44 fd:0x7f60c0e9d190
  5664 ms  0x7a44 PR_Close()
  5664 ms  0x7a44 fd:0x7f60c0e9d190
           /* TID 0x7a3c */
  5787 ms  0x7a3c PK11_Encrypt()
  5787 ms  0x7a3c symkey:0x7f60c11e3600
  5788 ms  0x7a3c PK11_Encrypt()
  5788 ms  0x7a3c symkey:0x7f60c11e3600
  5789 ms  0x7a3c PK11_Encrypt()
  5789 ms  0x7a3c symkey:0x7f60c11e3600
  5791 ms  0x7a3c PK11_Encrypt()
  5791 ms  0x7a3c symkey:0x7f60c11e3600
  5792 ms  0x7a3c PK11_Encrypt()
  5792 ms  0x7a3c symkey:0x7f60c11e3600
  5813 ms  0x7a3c PK11_Encrypt()
  5813 ms  0x7a3c symkey:0x7f60c11e3600
  5835 ms  0x7a3c PK11_Encrypt()
  5835 ms  0x7a3c symkey:0x7f60c11e3600
  5850 ms  0x7a3c PK11_Encrypt()
  5850 ms  0x7a3c symkey:0x7f60c11e3600
  5851 ms  0x7a3c PK11_Encrypt()
  5851 ms  0x7a3c symkey:0x7f60c11e3600
           /* TID 0x7a44 */
  5865 ms  0x7a44 PR_Close()
  5865 ms  0x7a44 fd:0x7f60c0e9deb0
           /* TID 0x7a3c */
  5866 ms  0x7a3c PK11_Encrypt()
  5866 ms  0x7a3c symkey:0x7f60c11e3600
           /* TID 0x7a44 */
  5944 ms  0x7a44 PR_Close()
  5944 ms  0x7a44 fd:0x7f60c0e9d100
  5945 ms  0x7a44 PR_Close()
  5945 ms  0x7a44 fd:0x7f60c0e9d100
  5947 ms  0x7a44 PR_Close()
  5947 ms  0x7a44 fd:0x7f60c0e9d100
  5948 ms  0x7a44 PR_Close()
  5948 ms  0x7a44 fd:0x7f60c0e9d100
  5948 ms  0x7a44 PR_Close()
  5948 ms  0x7a44 fd:0x7f60c0e9d100
  5949 ms  0x7a44 PR_Close()
  5949 ms  0x7a44 fd:0x7f60c0e9d100
  5950 ms  0x7a44 PR_Close()
  5950 ms  0x7a44 fd:0x7f60c0e9d100
  5950 ms  0x7a44 PR_Close()
  5950 ms  0x7a44 fd:0x7f60c0e9d100
           /* TID 0x7a3c */
  5952 ms  0x7a3c PK11_Encrypt()
  5952 ms  0x7a3c symkey:0x7f60c11e3600
  5952 ms  0x7a3c PK11_Encrypt()
  5952 ms  0x7a3c symkey:0x7f60c11e3600
  5953 ms  0x7a3c SSL_ImportFD()
  5953 ms  0x7a3c ret:0x7f60c0ff82e0
  5953 ms  0x7a3c SSL_AuthCertificateHook()
  5953 ms  0x7a3c fd:0x7f60c0ff82e0
  5953 ms  0x7a3c ret:0x0
  5953 ms  0x7a3c PR_Connect()
  5953 ms  0x7a3c fd:0x7f60c0ff82e0
  5953 ms  0x7a3c SSL_ImportFD()
  5953 ms  0x7a3c ret:0x7f60dcfd7eb0
  5953 ms  0x7a3c SSL_AuthCertificateHook()
  5953 ms  0x7a3c fd:0x7f60dcfd7eb0
  5953 ms  0x7a3c ret:0x0
  5953 ms  0x7a3c PR_Connect()
  5953 ms  0x7a3c fd:0x7f60dcfd7eb0
  5953 ms  0x7a3c SSL_ImportFD()
  5953 ms  0x7a3c ret:0x7f60c103b1f0
  5953 ms  0x7a3c SSL_AuthCertificateHook()
  5953 ms  0x7a3c fd:0x7f60c103b1f0
  5954 ms  0x7a3c ret:0x0
  5954 ms  0x7a3c PR_Connect()
  5954 ms  0x7a3c fd:0x7f60c103b1f0
  5954 ms  0x7a3c SSL_ImportFD()
  5954 ms  0x7a3c ret:0x7f60c103b430
  5954 ms  0x7a3c SSL_AuthCertificateHook()
  5954 ms  0x7a3c fd:0x7f60c103b430
  5954 ms  0x7a3c ret:0x0
  5954 ms  0x7a3c PR_Connect()
  5954 ms  0x7a3c fd:0x7f60c103b430
  5990 ms  0x7a3c SECKEY_CreateECPrivateKey()
  5990 ms  0x7a3c cx:0x7f60d23fdc48
  5991 ms     | 0x7a3c EC_ValidatePublicKey()
  5991 ms     | 0x7a3c ret:0x0
  5991 ms  0x7a3c ret:0x7f60c0ebe820::7f60c0ebe820  10 95 ea c0                                      ....
  5991 ms  0x7a3c SECKEY_CreateECPrivateKey()
  5991 ms  0x7a3c cx:0x7f60d23fdc48
  5993 ms     | 0x7a3c EC_ValidatePublicKey()
  5996 ms     | 0x7a3c ret:0x0
  5997 ms  0x7a3c ret:0x7f60c0ec7820::7f60c0ec7820  50 bb 1b c1                                      P...
  6035 ms  0x7a3c PK11_Derive()
  6035 ms  0x7a3c basekey:0x7f60c0e52c80
  6035 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6035 ms  0x7a3c ret:0x7f60c0e52c00
  6035 ms  0x7a3c PK11_PubDeriveWithKDF()
  6035 ms  0x7a3c seckey:0x7f60c0ebe820
  6035 ms     | 0x7a3c EC_ValidatePublicKey()
  6035 ms     | 0x7a3c ret:0x0
  6036 ms  0x7a3c ret:0x7f60c0e52c80
  6036 ms  SECKEY_ECParamsToKeySize()
  6036 ms  0x7a3c ret:0xff
  6036 ms  0x7a3c PK11_DeriveWithFlags()
  6036 ms  0x7a3c basekey:0x7f60c0e52c00
  6036 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6036 ms  0x7a3c ret:0x7f60d3803780
  6036 ms  0x7a3c PK11_Derive()
  6036 ms  0x7a3c basekey:0x7f60c0e52c80
  6036 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6036 ms  0x7a3c ret:0x7f60c0e52d80
  6036 ms  0x7a3c PK11_DeriveWithFlags()
  6036 ms  0x7a3c basekey:0x7f60c0e52d80
  6036 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6036 ms  0x7a3c ret:0x7f60c0e52c00
  6036 ms  0x7a3c PK11_DeriveWithFlags()
  6036 ms  0x7a3c basekey:0x7f60c0e52d80
  6036 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6036 ms  0x7a3c ret:0x7f60c0e52c80
  6036 ms  0x7a3c PK11_DeriveWithFlags()
  6036 ms  0x7a3c basekey:0x7f60c0e52d80
  6036 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6036 ms  0x7a3c ret:0x7f60d3803780
  6036 ms  0x7a3c PK11_Derive()
  6036 ms  0x7a3c basekey:0x7f60c0e52e80
  6036 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6036 ms  0x7a3c ret:0x7f60c0e52d00
  6036 ms  0x7a3c PK11_DeriveWithFlags()
  6036 ms  0x7a3c basekey:0x7f60c0e52c80
  6036 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6036 ms  0x7a3c ret:0x7f60c0e52d80
  6036 ms  0x7a3c PK11_DeriveWithFlags()
  6036 ms  0x7a3c basekey:0x7f60c0e52c80
  6036 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6036 ms  0x7a3c ret:0x7f60d3803780
  6038 ms  SECKEY_ECParamsToKeySize()
  6038 ms  0x7a3c ret:0x100
  6038 ms  SECKEY_ECParamsToBasePointOrderLen()
  6038 ms  0x7a3c ret:0x100
  6038 ms  SECKEY_ECParamsToBasePointOrderLen()
  6038 ms  0x7a3c ret:0x100
  6038 ms  0x7a3c EC_ValidatePublicKey()
  6041 ms  0x7a3c ret:0x0
  6045 ms  0x7a3c PK11_DeriveWithFlags()
  6045 ms  0x7a3c basekey:0x7f60c0e52c80
  6045 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6045 ms  0x7a3c ret:0x7f60d3803780
  6046 ms  0x7a3c SECKEY_CreateECPrivateKey()
  6046 ms  0x7a3c cx:0x7f60d23fe2c8
  6047 ms     | 0x7a3c EC_ValidatePublicKey()
  6047 ms     | 0x7a3c ret:0x0
  6047 ms  0x7a3c ret:0x7f60c0faf020::7f60c0faf020  a0 36 25 c1                                      .6%.
  6047 ms  0x7a3c SECKEY_CreateECPrivateKey()
  6047 ms  0x7a3c cx:0x7f60d23fe2c8
  6048 ms     | 0x7a3c EC_ValidatePublicKey()
  6050 ms     | 0x7a3c ret:0x0
  6050 ms  0x7a3c ret:0x7f60c0fb3820::7f60c0fb3820  20 39 25 c1                                       9%.
  6053 ms  0x7a3c SECKEY_CreateECPrivateKey()
  6053 ms  0x7a3c cx:0x7f60d23fe468
  6054 ms     | 0x7a3c EC_ValidatePublicKey()
  6054 ms     | 0x7a3c ret:0x0
  6054 ms  0x7a3c ret:0x7f60c1016020::7f60c1016020  60 3a 25 c1                                      `:%.
  6054 ms  0x7a3c SECKEY_CreateECPrivateKey()
  6054 ms  0x7a3c cx:0x7f60d23fe468
  6055 ms     | 0x7a3c EC_ValidatePublicKey()
  6058 ms     | 0x7a3c ret:0x0
  6058 ms  0x7a3c ret:0x7f60c1018020::7f60c1018020  30 3d 25 c1                                      0=%.
  6058 ms  0x7a3c SECKEY_CreateECPrivateKey()
  6058 ms  0x7a3c cx:0x7f60d23fe608
  6059 ms     | 0x7a3c EC_ValidatePublicKey()
  6059 ms     | 0x7a3c ret:0x0
  6059 ms  0x7a3c ret:0x7f60d34db820::7f60d34db820  70 3e 25 c1                                      p>%.
  6059 ms  0x7a3c SECKEY_CreateECPrivateKey()
  6059 ms  0x7a3c cx:0x7f60d23fe608
  6060 ms     | 0x7a3c EC_ValidatePublicKey()
  6062 ms     | 0x7a3c ret:0x0
  6062 ms  0x7a3c ret:0x7f60d6eb5820::7f60d6eb5820  70 de c3 d2                                      p...
           /* TID 0x7a44 */
  6080 ms  0x7a44 PR_Close()
  6080 ms  0x7a44 fd:0x7f60c0e9df40
           /* TID 0x7aa1 */
  6080 ms  0x7aa1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6080 ms  0x7aa1 ret:0x0
           /* TID 0x7a3c */
  6093 ms  0x7a3c SSL_AuthCertificateComplete()
  6093 ms  0x7a3c fd:0x7f60c0ff82e0
  6093 ms  0x7a3c err:0x0
  6093 ms     | 0x7a3c PK11_DeriveWithFlags()
  6093 ms     | 0x7a3c basekey:0x7f60c0e52d00
  6093 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6094 ms     | 0x7a3c ret:0x7f60d3803780
  6094 ms     | 0x7a3c PK11_DeriveWithFlags()
  6094 ms     | 0x7a3c basekey:0x7f60c0e52d00
  6094 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6094 ms     | 0x7a3c ret:0x7f60c0e52e80
  6094 ms     | 0x7a3c PK11_DeriveWithFlags()
  6094 ms     | 0x7a3c basekey:0x7f60c0e52d00
  6094 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6094 ms     | 0x7a3c ret:0x7f60c0e52e00
  6094 ms     | 0x7a3c PK11_DeriveWithFlags()
  6094 ms     | 0x7a3c basekey:0x7f60c0e52c00
  6094 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6094 ms     | 0x7a3c ret:0x7f60c11e3a80
  6094 ms     | 0x7a3c PK11_DeriveWithFlags()
  6094 ms     | 0x7a3c basekey:0x7f60c0e52c00
  6094 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6094 ms     | 0x7a3c ret:0x7f60c124e100
  6094 ms     | 0x7a3c PK11_DeriveWithFlags()
  6094 ms     | 0x7a3c basekey:0x7f60c0e52e80
  6094 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6094 ms     | 0x7a3c ret:0x7f60c124e100
  6094 ms     | 0x7a3c PK11_DeriveWithFlags()
  6094 ms     | 0x7a3c basekey:0x7f60c0e52e80
  6094 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6094 ms     | 0x7a3c ret:0x7f60c124e480
  6094 ms     | 0x7a3c PK11_DeriveWithFlags()
  6094 ms     | 0x7a3c basekey:0x7f60c0e52c00
  6094 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6094 ms     | 0x7a3c ret:0x7f60c0e52d80
  6094 ms     | 0x7a3c PK11_Encrypt()
  6094 ms     | 0x7a3c symkey:0x7f60c11e3a80
  6094 ms     | 0x7a3c PK11_DeriveWithFlags()
  6094 ms     | 0x7a3c basekey:0x7f60d3803780
  6095 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6095 ms     | 0x7a3c ret:0x7f60c0e52d80
  6095 ms     | 0x7a3c PK11_DeriveWithFlags()
  6095 ms     | 0x7a3c basekey:0x7f60d3803780
  6095 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6095 ms     | 0x7a3c ret:0x7f60c124e480
  6095 ms     | 0x7a3c PK11_DeriveWithFlags()
  6095 ms     | 0x7a3c basekey:0x7f60c0e52d00
  6095 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6095 ms     | 0x7a3c ret:0x7f60c11e3a80
  6095 ms     | 0x7a3c SECKEY_DestroyPrivateKey()
  6095 ms     | 0x7a3c privk:0x7f60c0ec7820::7f60c0ec7820  50 bb 1b c1                                      P...
  6095 ms     | 0x7a3c privk:0x7f60c0ec7820::7f60c0ec7820  e5 e5 e5 e5                                      ....
  6095 ms     | 0x7a3c SECKEY_DestroyPrivateKey()
  6095 ms     | 0x7a3c privk:0x7f60c0ebe820::7f60c0ebe820  10 95 ea c0                                      ....
  6095 ms     | 0x7a3c privk:0x7f60c0ebe820::7f60c0ebe820  e5 e5 e5 e5                                      ....
  6096 ms  0x7a3c PK11_Encrypt()
  6096 ms  0x7a3c symkey:0x7f60c0e52d80
  6097 ms  0x7a3c PK11_Encrypt()
  6097 ms  0x7a3c symkey:0x7f60c0e52d80
  6131 ms  0x7a3c PK11_DeriveWithFlags()
  6131 ms  0x7a3c basekey:0x7f60c11e3a80
  6131 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6131 ms  0x7a3c ret:0x7f60c0e52c80
  6131 ms  0x7a3c PK11_Encrypt()
  6131 ms  0x7a3c symkey:0x7f60c0e52d80
  6134 ms  SECKEY_ECParamsToKeySize()
  6134 ms  0x7a3c ret:0x100
  6134 ms  SECKEY_ECParamsToBasePointOrderLen()
  6134 ms  0x7a3c ret:0x100
  6134 ms  SECKEY_ECParamsToBasePointOrderLen()
  6134 ms  0x7a3c ret:0x100
  6134 ms  0x7a3c EC_ValidatePublicKey()
  6137 ms  0x7a3c ret:0x0
  6140 ms  SECKEY_ECParamsToKeySize()
  6140 ms  0x7a3c ret:0x100
  6140 ms  0x7a3c SECKEY_CreateECPrivateKey()
  6140 ms  0x7a3c cx:0x7f60d23fe2c8
  6141 ms     | 0x7a3c EC_ValidatePublicKey()
  6143 ms     | 0x7a3c ret:0x0
  6143 ms  0x7a3c ret:0x7f60c0d41020::7f60c0d41020  90 c2 2c c1                                      ..,.
  6144 ms  0x7a3c PK11_PubDeriveWithKDF()
  6144 ms  0x7a3c seckey:0x7f60c0d41020
  6144 ms     | 0x7a3c EC_ValidatePublicKey()
  6146 ms     | 0x7a3c ret:0x0
  6148 ms  0x7a3c ret:0x7f60c0e52c80
  6148 ms  0x7a3c PK11_DeriveWithFlags()
  6148 ms  0x7a3c basekey:0x7f60c0e52c80
  6148 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6148 ms  0x7a3c ret:0x7f60c0e52c00
  6148 ms  0x7a3c PK11_Derive()
  6148 ms  0x7a3c basekey:0x7f60c0e52c00
  6148 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6149 ms  0x7a3c ret:0x7f60c0e52d00
  6149 ms  0x7a3c SECKEY_DestroyPrivateKey()
  6149 ms  0x7a3c privk:0x7f60c0d41020::7f60c0d41020  90 c2 2c c1                                      ..,.
  6149 ms  0x7a3c privk:0x7f60c0d41020::7f60c0d41020  e5 e5 e5 e5                                      ....
  6149 ms  0x7a3c PK11_Encrypt()
  6149 ms  0x7a3c symkey:0x7f60c12ec500
  6154 ms  0x7a3c PK11_DeriveWithFlags()
  6154 ms  0x7a3c basekey:0x7f60c0e52c80
  6154 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6154 ms  0x7a3c ret:0x7f60c124e480
  6154 ms  0x7a3c PK11_Derive()
  6154 ms  0x7a3c basekey:0x7f60c124e480
  6154 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6154 ms  0x7a3c ret:0x7f60c12ec680
  6156 ms  0x7a3c PK11_DeriveWithFlags()
  6156 ms  0x7a3c basekey:0x7f60c0e52c80
  6156 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6156 ms  0x7a3c ret:0x7f60c12ecc00
  6156 ms  0x7a3c PK11_Derive()
  6156 ms  0x7a3c basekey:0x7f60c12ecc00
  6156 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6156 ms  0x7a3c ret:0x7f60c12ecc80
  6156 ms  0x7a3c PR_Connect()
  6156 ms  0x7a3c fd:0x7f60c103bd00
  6157 ms  0x7a3c PR_Connect()
  6157 ms  0x7a3c fd:0x7f60c103bee0
           /* TID 0x7a44 */
  6169 ms  0x7a44 PR_Close()
  6169 ms  0x7a44 fd:0x7f60c103bf70
           /* TID 0x7a3c */
  6171 ms  0x7a3c PK11_Encrypt()
  6171 ms  0x7a3c symkey:0x7f60c0e52d80
           /* TID 0x7a44 */
  6176 ms  0x7a44 PR_Close()
  6176 ms  0x7a44 fd:0x7f60c0ff8d00
  6178 ms  0x7a44 PR_Close()
  6178 ms  0x7a44 fd:0x7f60c0e9df10
  6178 ms  0x7a44 PR_Close()
  6178 ms  0x7a44 fd:0x7f60c0f3d040
  6179 ms  0x7a44 PR_Close()
  6179 ms  0x7a44 fd:0x7f60c103b700
           /* TID 0x7aa1 */
  6179 ms  0x7aa1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6180 ms  0x7aa1 ret:0x0
  6180 ms  0x7aa1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6180 ms  0x7aa1 ret:0x0
           /* TID 0x7a3c */
  6180 ms  0x7a3c SSL_AuthCertificateComplete()
  6180 ms  0x7a3c fd:0x7f60dcfd7eb0
  6180 ms  0x7a3c err:0x0
  6180 ms  0x7a3c PK11_Encrypt()
  6180 ms  0x7a3c symkey:0x7f60c12ec500
           /* TID 0x7a9f */
  6183 ms  0x7a9f PR_Close()
  6183 ms  0x7a9f fd:0x7f60c103bca0
  6184 ms  0x7a9f PR_Close()
  6184 ms  0x7a9f fd:0x7f60c103bca0
           /* TID 0x7ae2 */
  6199 ms  0x7ae2 PR_Close()
  6199 ms  0x7ae2 fd:0x7f60e10bf670
  6199 ms  0x7ae2 PR_Close()
  6199 ms  0x7ae2 fd:0x7f60e10bf670
           /* TID 0x7aa9 */
  6201 ms  0x7aa9 PR_Close()
  6201 ms  0x7aa9 fd:0x7f60e10bf6a0
           /* TID 0x7a48 */
  6203 ms  0x7a48 PR_Close()
  6203 ms  0x7a48 fd:0x7f60e10bf1f0
           /* TID 0x7a44 */
  6204 ms  0x7a44 PR_Close()
  6204 ms  0x7a44 fd:0x7f60c103bc10
           /* TID 0x7ae0 */
  6204 ms  0x7ae0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6205 ms  0x7ae0 ret:0x0
  6205 ms  0x7ae0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6205 ms  0x7ae0 ret:0x0
           /* TID 0x7a3c */
  6207 ms  0x7a3c SSL_AuthCertificateComplete()
  6207 ms  0x7a3c fd:0x7f60c103b1f0
  6207 ms  0x7a3c err:0x0
           /* TID 0x7ae1 */
  6207 ms  0x7ae1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6207 ms  0x7ae1 ret:0x0
  6207 ms  0x7ae1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6207 ms  0x7ae1 ret:0x0
           /* TID 0x7a3c */
  6209 ms  0x7a3c SSL_AuthCertificateComplete()
  6209 ms  0x7a3c fd:0x7f60c103b430
  6209 ms  0x7a3c err:0x0
           /* TID 0x7a44 */
  6209 ms  0x7a44 PR_Close()
  6209 ms  0x7a44 fd:0x7f60d2c05970
           /* TID 0x7a3c */
  6229 ms  0x7a3c SECKEY_DestroyPrivateKey()
  6229 ms  0x7a3c privk:0x7f60c0fb3820::7f60c0fb3820  20 39 25 c1                                       9%.
  6230 ms  0x7a3c privk:0x7f60c0fb3820::7f60c0fb3820  e5 e5 e5 e5                                      ....
  6230 ms  0x7a3c SECKEY_DestroyPrivateKey()
  6230 ms  0x7a3c privk:0x7f60c0faf020::7f60c0faf020  a0 36 25 c1                                      .6%.
  6230 ms  0x7a3c privk:0x7f60c0faf020::7f60c0faf020  e5 e5 e5 e5                                      ....
  6250 ms  0x7a3c SECKEY_DestroyPrivateKey()
  6250 ms  0x7a3c privk:0x7f60c1018020::7f60c1018020  30 3d 25 c1                                      0=%.
  6250 ms  0x7a3c privk:0x7f60c1018020::7f60c1018020  e5 e5 e5 e5                                      ....
  6251 ms  0x7a3c SECKEY_DestroyPrivateKey()
  6251 ms  0x7a3c privk:0x7f60c1016020::7f60c1016020  60 3a 25 c1                                      `:%.
  6251 ms  0x7a3c privk:0x7f60c1016020::7f60c1016020  e5 e5 e5 e5                                      ....
  6253 ms  0x7a3c SECKEY_DestroyPrivateKey()
  6253 ms  0x7a3c privk:0x7f60d6eb5820::7f60d6eb5820  70 de c3 d2                                      p...
  6253 ms  0x7a3c privk:0x7f60d6eb5820::7f60d6eb5820  e5 e5 e5 e5                                      ....
  6253 ms  0x7a3c SECKEY_DestroyPrivateKey()
  6253 ms  0x7a3c privk:0x7f60d34db820::7f60d34db820  70 3e 25 c1                                      p>%.
  6253 ms  0x7a3c privk:0x7f60d34db820::7f60d34db820  e5 e5 e5 e5                                      ....
           /* TID 0x7a44 */
  6312 ms  0x7a44 PR_Close()
  6312 ms  0x7a44 fd:0x7f60c0e9dcd0
  6368 ms  0x7a44 PR_Close()
  6368 ms  0x7a44 fd:0x7f60c0e9d7c0
           /* TID 0x7a3c */
  6412 ms  0x7a3c SSL_ImportFD()
  6412 ms  0x7a3c ret:0x7f60d1ee2ee0
  6412 ms  0x7a3c SSL_AuthCertificateHook()
  6412 ms  0x7a3c fd:0x7f60d1ee2ee0
  6412 ms  0x7a3c ret:0x0
  6413 ms  0x7a3c PK11_Encrypt()
  6413 ms  0x7a3c symkey:0x7f60c0e52d80
  6413 ms  0x7a3c PR_Connect()
  6413 ms  0x7a3c fd:0x7f60d1ee2ee0
  6449 ms  0x7a3c SECKEY_CreateECPrivateKey()
  6449 ms  0x7a3c cx:0x7f60d23ff988
  6450 ms     | 0x7a3c EC_ValidatePublicKey()
  6450 ms     | 0x7a3c ret:0x0
  6450 ms  0x7a3c ret:0x7f60c0d54820::7f60c0d54820  20 34 1f c1                                       4..
  6450 ms  0x7a3c SECKEY_CreateECPrivateKey()
  6450 ms  0x7a3c cx:0x7f60d23ff988
  6451 ms     | 0x7a3c EC_ValidatePublicKey()
  6452 ms     | 0x7a3c ret:0x0
  6452 ms  0x7a3c ret:0x7f60c0d56820::7f60c0d56820  40 3c 1f c1                                      @<..
           /* TID 0x7a44 */
  6456 ms  0x7a44 PR_Close()
  6456 ms  0x7a44 fd:0x7f60d1ee2d00
           /* TID 0x7a3c */
  6490 ms  0x7a3c PK11_Derive()
  6490 ms  0x7a3c basekey:0x7f60c0e52c80
  6491 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6491 ms  0x7a3c ret:0x7f60d850e880
  6491 ms  0x7a3c PK11_PubDeriveWithKDF()
  6491 ms  0x7a3c seckey:0x7f60c0d54820
  6491 ms     | 0x7a3c EC_ValidatePublicKey()
  6491 ms     | 0x7a3c ret:0x0
  6491 ms  0x7a3c ret:0x7f60c0e52c80
  6491 ms  SECKEY_ECParamsToKeySize()
  6491 ms  0x7a3c ret:0xff
  6491 ms  0x7a3c PK11_DeriveWithFlags()
  6491 ms  0x7a3c basekey:0x7f60d850e880
  6491 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6491 ms  0x7a3c ret:0x7f60d850ed00
  6491 ms  0x7a3c PK11_Derive()
  6491 ms  0x7a3c basekey:0x7f60c0e52c80
  6491 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6491 ms  0x7a3c ret:0x7f60d850f100
  6491 ms  0x7a3c PK11_DeriveWithFlags()
  6491 ms  0x7a3c basekey:0x7f60d850f100
  6491 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6491 ms  0x7a3c ret:0x7f60d850e880
  6491 ms  0x7a3c PK11_DeriveWithFlags()
  6491 ms  0x7a3c basekey:0x7f60d850f100
  6491 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6491 ms  0x7a3c ret:0x7f60c0e52c80
  6491 ms  0x7a3c PK11_DeriveWithFlags()
  6491 ms  0x7a3c basekey:0x7f60d850f100
  6491 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6491 ms  0x7a3c ret:0x7f60d850ed00
  6491 ms  0x7a3c PK11_Derive()
  6491 ms  0x7a3c basekey:0x7f60d8545780
  6491 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6491 ms  0x7a3c ret:0x7f60d8545800
  6491 ms  0x7a3c PK11_DeriveWithFlags()
  6491 ms  0x7a3c basekey:0x7f60c0e52c80
  6491 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6491 ms  0x7a3c ret:0x7f60d850f100
  6491 ms  0x7a3c PK11_DeriveWithFlags()
  6491 ms  0x7a3c basekey:0x7f60c0e52c80
  6491 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6491 ms  0x7a3c ret:0x7f60d850ed00
  6492 ms  SECKEY_ECParamsToKeySize()
  6492 ms  0x7a3c ret:0x100
  6492 ms  SECKEY_ECParamsToBasePointOrderLen()
  6492 ms  0x7a3c ret:0x100
  6492 ms  SECKEY_ECParamsToBasePointOrderLen()
  6492 ms  0x7a3c ret:0x100
  6492 ms  0x7a3c EC_ValidatePublicKey()
  6494 ms  0x7a3c ret:0x0
  6496 ms  0x7a3c PK11_DeriveWithFlags()
  6496 ms  0x7a3c basekey:0x7f60c0e52c80
  6496 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6496 ms  0x7a3c ret:0x7f60d850ed00
  6496 ms  0x7a3c SSL_AuthCertificateComplete()
  6496 ms  0x7a3c fd:0x7f60d1ee2ee0
  6496 ms  0x7a3c err:0x0
  6496 ms     | 0x7a3c PK11_DeriveWithFlags()
  6496 ms     | 0x7a3c basekey:0x7f60d8545800
  6496 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6496 ms     | 0x7a3c ret:0x7f60d850ed00
  6496 ms     | 0x7a3c PK11_DeriveWithFlags()
  6496 ms     | 0x7a3c basekey:0x7f60d8545800
  6496 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6496 ms     | 0x7a3c ret:0x7f60d8545780
  6496 ms     | 0x7a3c PK11_DeriveWithFlags()
  6496 ms     | 0x7a3c basekey:0x7f60d8545800
  6496 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6496 ms     | 0x7a3c ret:0x7f60d8545b80
  6496 ms     | 0x7a3c PK11_DeriveWithFlags()
  6496 ms     | 0x7a3c basekey:0x7f60d850e880
  6496 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6496 ms     | 0x7a3c ret:0x7f60d8545d00
  6496 ms     | 0x7a3c PK11_DeriveWithFlags()
  6496 ms     | 0x7a3c basekey:0x7f60d850e880
  6496 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6496 ms     | 0x7a3c ret:0x7f60d8546000
  6496 ms     | 0x7a3c PK11_DeriveWithFlags()
  6496 ms     | 0x7a3c basekey:0x7f60d8545780
  6496 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6496 ms     | 0x7a3c ret:0x7f60d8546000
  6496 ms     | 0x7a3c PK11_DeriveWithFlags()
  6496 ms     | 0x7a3c basekey:0x7f60d8545780
  6496 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6496 ms     | 0x7a3c ret:0x7f60d85d3080
  6496 ms     | 0x7a3c PK11_DeriveWithFlags()
  6496 ms     | 0x7a3c basekey:0x7f60d850e880
  6496 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6496 ms     | 0x7a3c ret:0x7f60d850f100
  6496 ms     | 0x7a3c PK11_Encrypt()
  6496 ms     | 0x7a3c symkey:0x7f60d8545d00
  6506 ms     | 0x7a3c PK11_DeriveWithFlags()
  6506 ms     | 0x7a3c basekey:0x7f60d850ed00
  6506 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6506 ms     | 0x7a3c ret:0x7f60d850f100
  6506 ms     | 0x7a3c PK11_DeriveWithFlags()
  6506 ms     | 0x7a3c basekey:0x7f60d850ed00
  6506 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6506 ms     | 0x7a3c ret:0x7f60d85d3080
  6506 ms     | 0x7a3c PK11_DeriveWithFlags()
  6506 ms     | 0x7a3c basekey:0x7f60d8545800
  6506 ms     |    | 0x7a3c PK11_DeriveWithTemplate()
  6506 ms     | 0x7a3c ret:0x7f60d8545d00
  6506 ms     | 0x7a3c SECKEY_DestroyPrivateKey()
  6506 ms     | 0x7a3c privk:0x7f60c0d56820::7f60c0d56820  40 3c 1f c1                                      @<..
  6507 ms     | 0x7a3c privk:0x7f60c0d56820::7f60c0d56820  e5 e5 e5 e5                                      ....
  6507 ms     | 0x7a3c SECKEY_DestroyPrivateKey()
  6507 ms     | 0x7a3c privk:0x7f60c0d54820::7f60c0d54820  20 34 1f c1                                       4..
  6507 ms     | 0x7a3c privk:0x7f60c0d54820::7f60c0d54820  e5 e5 e5 e5                                      ....
  6508 ms  0x7a3c PK11_Encrypt()
  6508 ms  0x7a3c symkey:0x7f60d850f100
  6510 ms  0x7a3c SSL_ImportFD()
  6510 ms  0x7a3c ret:0x7f60d35fe490
  6510 ms  0x7a3c SSL_AuthCertificateHook()
  6510 ms  0x7a3c fd:0x7f60d35fe490
  6510 ms  0x7a3c ret:0x0
  6510 ms  0x7a3c PR_Connect()
  6510 ms  0x7a3c fd:0x7f60d35fe490
  6512 ms  0x7a3c PR_Close()
  6512 ms  0x7a3c fd:0x7f60d2c87ca0
           /* TID 0x7a31 */
  6515 ms  0x7a31 EC_ValidatePublicKey()
  6517 ms  0x7a31 ret:0x0
  6517 ms  0x7a31 EC_ValidatePublicKey()
  6518 ms  0x7a31 ret:0x0
  6518 ms  0x7a31 EC_ValidatePublicKey()
  6520 ms  0x7a31 ret:0x0
  6520 ms  0x7a31 EC_ValidatePublicKey()
  6521 ms  0x7a31 ret:0x0
  6521 ms  0x7a31 EC_ValidatePublicKey()
  6524 ms  0x7a31 ret:0x0
  6524 ms  0x7a31 EC_ValidatePublicKey()
  6525 ms  0x7a31 ret:0x0
  6525 ms  0x7a31 EC_ValidatePublicKey()
  6527 ms  0x7a31 ret:0x0
  6527 ms  0x7a31 EC_ValidatePublicKey()
  6528 ms  0x7a31 ret:0x0
  6528 ms  0x7a31 EC_ValidatePublicKey()
  6529 ms  0x7a31 ret:0x0
  6529 ms  0x7a31 EC_ValidatePublicKey()
  6531 ms  0x7a31 ret:0x0
           /* TID 0x7a3c */
  6531 ms  0x7a3c PK11_Encrypt()
  6531 ms  0x7a3c symkey:0x7f60c11e3600
  6531 ms  0x7a3c PK11_Encrypt()
  6531 ms  0x7a3c symkey:0x7f60c0e52d80
  6531 ms  0x7a3c PR_Close()
  6531 ms  0x7a3c fd:0x7f60c103bee0
  6532 ms  0x7a3c PR_Close()
  6532 ms  0x7a3c fd:0x7f60c103bd00
  6532 ms  0x7a3c PR_Close()
  6532 ms  0x7a3c fd:0x7f60c103b430
  6532 ms  0x7a3c PR_Close()
  6532 ms  0x7a3c fd:0x7f60c103b1f0
  6532 ms  0x7a3c PR_Close()
  6532 ms  0x7a3c fd:0x7f60dcfd7eb0
  6532 ms     | 0x7a3c PK11_Encrypt()
  6532 ms     | 0x7a3c symkey:0x7f60c12ec500
  6532 ms  0x7a3c PR_Close()
  6532 ms  0x7a3c fd:0x7f60c11dfd00
  6532 ms  0x7a3c PR_Close()
  6532 ms  0x7a3c fd:0x7f60c12150a0
  6532 ms     | 0x7a3c PK11_Encrypt()
  6532 ms     | 0x7a3c symkey:0x7f60d23fac00
  6533 ms  0x7a3c PR_Close()
  6533 ms  0x7a3c fd:0x7f60d257ceb0
  6533 ms  0x7a3c PR_Close()
  6533 ms  0x7a3c fd:0x7f60d257c400
  6533 ms     | 0x7a3c PK11_Encrypt()
  6533 ms     | 0x7a3c symkey:0x7f60d23f9e80
  6533 ms  0x7a3c PR_Close()
  6533 ms  0x7a3c fd:0x7f60d2c3ce50
  6533 ms  0x7a3c PR_Close()
  6533 ms  0x7a3c fd:0x7f60d27f4dc0
  6533 ms     | 0x7a3c PK11_Encrypt()
  6533 ms     | 0x7a3c symkey:0x7f60d3803b00
  6533 ms  0x7a3c PR_Close()
  6533 ms  0x7a3c fd:0x7f60d523ad00
  6533 ms     | 0x7a3c PK11_Encrypt()
  6533 ms     | 0x7a3c symkey:0x7f60d2182180
  6534 ms  0x7a3c PK11_DeriveWithFlags()
  6534 ms  0x7a3c basekey:0x7f60d8545d00
  6534 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6534 ms  0x7a3c ret:0x7f60d2182000
  6534 ms  0x7a3c PR_Close()
  6534 ms  0x7a3c fd:0x7f60d1ee2ee0
  6534 ms     | 0x7a3c PK11_Encrypt()
  6534 ms     | 0x7a3c symkey:0x7f60d850f100
  6534 ms  0x7a3c PR_Close()
  6534 ms  0x7a3c fd:0x7f60c0ff82e0
  6534 ms     | 0x7a3c PK11_Encrypt()
  6534 ms     | 0x7a3c symkey:0x7f60c0e52d80
  6534 ms  0x7a3c PR_Close()
  6534 ms  0x7a3c fd:0x7f60c11df820
  6534 ms     | 0x7a3c PK11_Encrypt()
  6534 ms     | 0x7a3c symkey:0x7f60c11e3600
           /* TID 0x7a96 */
  6535 ms  0x7a96 PR_Close()
  6535 ms  0x7a96 fd:0x7f60c0f3d070
  6535 ms  0x7a96 PR_Close()
  6535 ms  0x7a96 fd:0x7f60c0f3d070
           /* TID 0x7aa9 */
  6540 ms  0x7aa9 PR_Close()
  6540 ms  0x7aa9 fd:0x7f60c103bd60
           /* TID 0x7a31 */
  6543 ms  0x7a31 PR_Close()
  6543 ms  0x7a31 fd:0x7f60d3506ca0
  6543 ms  0x7a31 PR_Close()
  6543 ms  0x7a31 fd:0x7f60c103bf10
  6544 ms  0x7a31 PR_Close()
  6544 ms  0x7a31 fd:0x7f60c11df640
  6544 ms  0x7a31 PR_Close()
  6544 ms  0x7a31 fd:0x7f60c103bf10
  6544 ms  0x7a31 PR_Close()
  6544 ms  0x7a31 fd:0x7f60c11df640
  6544 ms  0x7a31 PR_Close()
  6544 ms  0x7a31 fd:0x7f60c103bf10
           /* TID 0x7a3c */
  6547 ms  0x7a3c SECKEY_CreateECPrivateKey()
  6547 ms  0x7a3c cx:0x7f60d23ffcc8
  6547 ms     | 0x7a3c EC_ValidatePublicKey()
  6547 ms     | 0x7a3c ret:0x0
  6547 ms  0x7a3c ret:0x7f60c0d4b020::7f60c0d4b020  d0 cd 2c c1                                      ..,.
  6547 ms  0x7a3c SECKEY_CreateECPrivateKey()
  6547 ms  0x7a3c cx:0x7f60d23ffcc8
  6548 ms     | 0x7a3c EC_ValidatePublicKey()
  6549 ms     | 0x7a3c ret:0x0
  6549 ms  0x7a3c ret:0x7f60c0d57820::7f60c0d57820  50 61 ef d1                                      Pa..
           /* TID 0x7aa9 */
  6550 ms  0x7aa9 PR_Close()
  6550 ms  0x7aa9 fd:0x7f60c11df880
           /* TID 0x7a31 */
  6569 ms  0x7a31 PR_Close()
  6569 ms  0x7a31 fd:0x7f60c11df640
  6570 ms  0x7a31 PR_Close()
  6570 ms  0x7a31 fd:0x7f60d238bb20
  6571 ms  0x7a31 PR_Close()
  6571 ms  0x7a31 fd:0x7f60c11df640
  6571 ms  0x7a31 PR_Close()
  6571 ms  0x7a31 fd:0x7f60d238bb20
  6571 ms  0x7a31 PR_Close()
  6571 ms  0x7a31 fd:0x7f60dd2c89a0
  6571 ms  0x7a31 PR_Close()
  6571 ms  0x7a31 fd:0x7f60dd2c88b0
  6571 ms  0x7a31 PR_Close()
  6571 ms  0x7a31 fd:0x7f60dd2c8a60
  6573 ms  0x7a31 PR_Close()
  6573 ms  0x7a31 fd:0x7f60d238bb20
  6574 ms  0x7a31 PR_Close()
  6574 ms  0x7a31 fd:0x7f60d238bb20
  6576 ms  0x7a31 PR_Close()
  6576 ms  0x7a31 fd:0x7f60c11df640
  6576 ms  0x7a31 PR_Close()
  6576 ms  0x7a31 fd:0x7f60d238bb80
  6577 ms  0x7a31 PR_Close()
  6577 ms  0x7a31 fd:0x7f60c11df640
  6577 ms  0x7a31 PR_Close()
  6577 ms  0x7a31 fd:0x7f60d238bb80
  6579 ms  0x7a31 PR_Close()
  6579 ms  0x7a31 fd:0x7f60d238bbb0
  6581 ms  0x7a31 PR_Close()
  6581 ms  0x7a31 fd:0x7f60d238bbb0
  6582 ms  0x7a31 PR_Close()
  6582 ms  0x7a31 fd:0x7f60c11df640
  6582 ms  0x7a31 PR_Close()
  6582 ms  0x7a31 fd:0x7f60d257c370
  6583 ms  0x7a31 PR_Close()
  6583 ms  0x7a31 fd:0x7f60c11df640
  6584 ms  0x7a31 PR_Close()
  6584 ms  0x7a31 fd:0x7f60d257c370
  6586 ms  0x7a31 PR_Close()
  6586 ms  0x7a31 fd:0x7f60d257c3a0
           /* TID 0x7a3c */
  6587 ms  0x7a3c PK11_Derive()
  6587 ms  0x7a3c basekey:0x7f60c11e3480
  6587 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6587 ms  0x7a3c ret:0x7f60c11e3400
  6587 ms  0x7a3c PK11_PubDeriveWithKDF()
  6587 ms  0x7a3c seckey:0x7f60c0d4b020
  6587 ms     | 0x7a3c EC_ValidatePublicKey()
  6587 ms     | 0x7a3c ret:0x0
  6588 ms  0x7a3c ret:0x7f60c11e3480
  6588 ms  SECKEY_ECParamsToKeySize()
  6588 ms  0x7a3c ret:0xff
  6588 ms  0x7a3c PK11_DeriveWithFlags()
  6588 ms  0x7a3c basekey:0x7f60c11e3400
  6588 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6588 ms  0x7a3c ret:0x7f60c0e52e00
  6588 ms  0x7a3c PK11_Derive()
  6588 ms  0x7a3c basekey:0x7f60c11e3480
  6588 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6588 ms  0x7a3c ret:0x7f60c0e52e80
  6588 ms  0x7a3c PK11_DeriveWithFlags()
  6588 ms  0x7a3c basekey:0x7f60c0e52e80
  6588 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6588 ms  0x7a3c ret:0x7f60c11e3400
  6588 ms  0x7a3c PK11_DeriveWithFlags()
  6588 ms  0x7a3c basekey:0x7f60c0e52e80
  6588 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6588 ms  0x7a3c ret:0x7f60c11e3480
  6588 ms  0x7a3c PK11_DeriveWithFlags()
  6588 ms  0x7a3c basekey:0x7f60c0e52e80
  6588 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6588 ms  0x7a3c ret:0x7f60c0e52e00
  6588 ms  0x7a3c PK11_Derive()
  6588 ms  0x7a3c basekey:0x7f60d3803780
  6588 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6588 ms  0x7a3c ret:0x7f60c11e3a80
  6588 ms  0x7a3c PK11_DeriveWithFlags()
  6588 ms  0x7a3c basekey:0x7f60c11e3480
  6588 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6588 ms  0x7a3c ret:0x7f60c0e52e80
  6588 ms  0x7a3c PK11_DeriveWithFlags()
  6588 ms  0x7a3c basekey:0x7f60c11e3480
  6588 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6588 ms  0x7a3c ret:0x7f60c0e52e00
  6589 ms  SECKEY_ECParamsToKeySize()
  6589 ms  0x7a3c ret:0x100
  6589 ms  SECKEY_ECParamsToBasePointOrderLen()
  6589 ms  0x7a3c ret:0x100
  6589 ms  SECKEY_ECParamsToBasePointOrderLen()
  6589 ms  0x7a3c ret:0x100
  6589 ms  0x7a3c EC_ValidatePublicKey()
  6590 ms  0x7a3c ret:0x0
  6592 ms  0x7a3c PK11_DeriveWithFlags()
  6592 ms  0x7a3c basekey:0x7f60c11e3480
  6592 ms     | 0x7a3c PK11_DeriveWithTemplate()
  6592 ms  0x7a3c ret:0x7f60c0e52e00
           /* TID 0x7a31 */
  6592 ms  0x7a31 PR_Close()
  6592 ms  0x7a31 fd:0x7f60d257c3a0
  6598 ms  0x7a31 PR_Close()
  6598 ms  0x7a31 fd:0x7f60d257cee0
  6599 ms  0x7a31 PR_Close()
  6599 ms  0x7a31 fd:0x7f60d257cee0
  6601 ms  0x7a31 PR_Close()
  6601 ms  0x7a31 fd:0x7f60d257cf10
           /* TID 0x7aa9 */
  6606 ms  0x7aa9 PR_Close()
  6606 ms  0x7aa9 fd:0x7f60c0f3d9d0
           /* TID 0x7a31 */
  6607 ms  0x7a31 PR_Close()
  6607 ms  0x7a31 fd:0x7f60c11df640
  6608 ms  0x7a31 PR_Close()
  6608 ms  0x7a31 fd:0x7f60c103b9a0
           /* TID 0x7aa9 */
  6608 ms  0x7aa9 PR_Close()
  6608 ms  0x7aa9 fd:0x7f60c0f3d9d0
  6613 ms  0x7aa9 PR_Close()
  6613 ms  0x7aa9 fd:0x7f60c11df880
  6638 ms  0x7aa9 PR_Close()
  6638 ms  0x7aa9 fd:0x7f60c0f76f40
           /* TID 0x7a3c */
  6642 ms  0x7a3c PR_Connect()
  6642 ms  0x7a3c fd:0x7f60c103b430
  6645 ms  0x7a3c PR_Close()
  6645 ms  0x7a3c fd:0x7f60d35fe490
  6648 ms     | 0x7a3c SECKEY_DestroyPrivateKey()
  6648 ms     | 0x7a3c privk:0x7f60c0d57820::7f60c0d57820  50 61 ef d1                                      Pa..
  6648 ms     | 0x7a3c privk:0x7f60c0d57820::7f60c0d57820  e5 e5 e5 e5                                      ....
  6648 ms     | 0x7a3c SECKEY_DestroyPrivateKey()
  6648 ms     | 0x7a3c privk:0x7f60c0d4b020::7f60c0d4b020  d0 cd 2c c1                                      ..,.
  6648 ms     | 0x7a3c privk:0x7f60c0d4b020::7f60c0d4b020  e5 e5 e5 e5                                      ....
           /* TID 0x7a36 */
  6653 ms  0x7a36 PR_Close()
  6653 ms  0x7a36 fd:0x7f60e08501f0
  6660 ms  0x7a36 PR_Close()
  6660 ms  0x7a36 fd:0x7f60d8434940
           /* TID 0x7a3c */
  6661 ms  0x7a3c PR_Close()
  6661 ms  0x7a3c fd:0x7f60c103b430
           /* TID 0x7aa9 */
  6673 ms  0x7aa9 PR_Close()
  6673 ms  0x7aa9 fd:0x7f60c103b1f0
           /* TID 0x7a31 */
  6678 ms  0x7a31 PR_Close()
  6678 ms  0x7a31 fd:0x7f60c103bd00
  6678 ms  0x7a31 PR_Close()
  6678 ms  0x7a31 fd:0x7f60c103b1f0
           /* TID 0x7a3c */
  6678 ms  0x7a3c PR_Close()
  6678 ms  0x7a3c fd:0x7f60d27f48b0
           /* TID 0x7a96 */
  6679 ms  0x7a96 PR_Close()
  6679 ms  0x7a96 fd:0x7f60c103bbe0
  6679 ms  0x7a96 PR_Close()
  6679 ms  0x7a96 fd:0x7f60c103b0a0
  6679 ms  0x7a96 PR_Close()
  6679 ms  0x7a96 fd:0x7f60c103b0a0
  6679 ms  0x7a96 PR_Close()
  6679 ms  0x7a96 fd:0x7f60c103b0a0
           /* TID 0x7aa9 */
  6679 ms  0x7aa9 PR_Close()
  6679 ms  0x7aa9 fd:0x7f60c103bac0
           /* TID 0x7a9f */
  6684 ms  0x7a9f PR_Close()
  6684 ms  0x7a9f fd:0x7f60c12151f0
           /* TID 0x7a44 */
  6684 ms  0x7a44 PR_Close()
  6684 ms  0x7a44 fd:0x7f60d1ee9250
  6684 ms  0x7a44 PR_Close()
  6684 ms  0x7a44 fd:0x7f60d1ee9310
           /* TID 0x7a36 */
  6690 ms  0x7a36 PR_Close()
  6690 ms  0x7a36 fd:0x7f60d2c3c550
           /* TID 0x7a31 */
  6692 ms  0x7a31 PR_Close()
  6692 ms  0x7a31 fd:0x7f60c103b430
  6692 ms  0x7a31 PR_Close()
  6692 ms  0x7a31 fd:0x7f60c11c83d0
           /* TID 0x7aa9 */
  6696 ms  0x7aa9 PR_Close()
  6696 ms  0x7aa9 fd:0x7f60c103bfd0
  6698 ms  0x7aa9 PR_Close()
  6698 ms  0x7aa9 fd:0x7f60c0f76b20
  6777 ms  0x7aa9 PR_Close()
  6777 ms  0x7aa9 fd:0x7f60c0e9d130
  6780 ms  0x7aa9 PR_Close()
  6780 ms  0x7aa9 fd:0x7f60c0e9d130
  6788 ms  0x7aa9 PR_Close()
  6788 ms  0x7aa9 fd:0x7f60c0e9d550
  6791 ms  0x7aa9 PR_Close()
  6791 ms  0x7aa9 fd:0x7f60c0e9d6d0
  6810 ms  0x7aa9 PR_Close()
  6810 ms  0x7aa9 fd:0x7f60c0f3d220
  6817 ms  0x7aa9 PR_Close()
  6817 ms  0x7aa9 fd:0x7f60c0f76b80
  6824 ms  0x7aa9 PR_Close()
  6824 ms  0x7aa9 fd:0x7f60c0ff8c10
  6834 ms  0x7aa9 PR_Close()
  6834 ms  0x7aa9 fd:0x7f60c103b730
  6836 ms  0x7aa9 PR_Close()
  6836 ms  0x7aa9 fd:0x7f60c103b730
           /* TID 0x7a31 */
  6991 ms  0x7a31 PR_Close()
  6991 ms  0x7a31 fd:0x7f60c0e9dcd0
  6991 ms  0x7a31 PR_Close()
  6991 ms  0x7a31 fd:0x7f60c0e9dcd0
  6999 ms  0x7a31 PR_Close()
  6999 ms  0x7a31 fd:0x7f60fa5da130
  6999 ms  0x7a31 PR_Close()
  6999 ms  0x7a31 fd:0x7f60fa5da190
Process terminated
