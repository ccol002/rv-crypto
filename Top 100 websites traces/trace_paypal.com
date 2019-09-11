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
           /* TID 0xdde */
    42 ms  0xdde PR_Close()
    42 ms  0xdde fd:0x7fa9c0b56700
    42 ms     | 0xdde PK11_Encrypt()
    42 ms     | 0xdde symkey:0x7fa9cc239a80
           /* TID 0xde6 */
    44 ms  0xde6 PR_Close()
    44 ms  0xde6 fd:0x7fa9bf6e5790
           /* TID 0xdde */
   309 ms  0xdde SSL_ImportFD()
   309 ms  0xdde ret:0x7fa9bf2c1790
   309 ms  0xdde SSL_AuthCertificateHook()
   309 ms  0xdde fd:0x7fa9bf2c1790
   309 ms  0xdde ret:0x0
   309 ms  0xdde PR_Connect()
   309 ms  0xdde fd:0x7fa9bf2c1790
   517 ms  0xdde SECKEY_CreateECPrivateKey()
   517 ms  0xdde cx:0x7fa9bf6e9b28
   518 ms     | 0xdde EC_ValidatePublicKey()
   518 ms     | 0xdde ret:0x0
   519 ms  0xdde ret:0x7fa9bf24f820::7fa9bf24f820  50 bb 2c bf                                      P.,.
   519 ms  0xdde SECKEY_CreateECPrivateKey()
   519 ms  0xdde cx:0x7fa9bf6e9b28
   521 ms     | 0xdde EC_ValidatePublicKey()
   526 ms     | 0xdde ret:0x0
   526 ms  0xdde ret:0x7fa9bf251820::7fa9bf251820  90 bc 2c bf                                      ..,.
           /* TID 0xdf8 */
   558 ms  0xdf8 PR_Close()
   558 ms  0xdf8 fd:0x7fa9bf2c16d0
   561 ms  0xdf8 PR_Close()
   561 ms  0xdf8 fd:0x7fa9bf2c16d0
           /* TID 0xdde */
   742 ms  SECKEY_ECParamsToKeySize()
   742 ms  0xdde ret:0x100
   742 ms  0xdde SECKEY_CreateECPrivateKey()
   742 ms  0xdde cx:0x7fa9bf6e9b28
   744 ms     | 0xdde EC_ValidatePublicKey()
   748 ms     | 0xdde ret:0x0
   748 ms  0xdde ret:0x7fa9bf25a820::7fa9bf25a820  90 27 2f bf                                      .'/.
   749 ms  0xdde PK11_PubDeriveWithKDF()
   749 ms  0xdde seckey:0x7fa9bf25a820
   749 ms     | 0xdde EC_ValidatePublicKey()
   753 ms     | 0xdde ret:0x0
   757 ms  0xdde ret:0x7fa9cc239900
   757 ms  0xdde PK11_DeriveWithFlags()
   757 ms  0xdde basekey:0x7fa9cc239900
   758 ms     | 0xdde PK11_DeriveWithTemplate()
   758 ms  0xdde ret:0x7fa9cc239880
   758 ms  0xdde PK11_Derive()
   758 ms  0xdde basekey:0x7fa9cc239880
   758 ms     | 0xdde PK11_DeriveWithTemplate()
   758 ms  0xdde ret:0x7fa9c0edb400
   758 ms  0xdde SECKEY_DestroyPrivateKey()
   758 ms  0xdde privk:0x7fa9bf25a820::7fa9bf25a820  90 27 2f bf                                      .'/.
   758 ms  0xdde privk:0x7fa9bf25a820::7fa9bf25a820  e5 e5 e5 e5                                      ....
   758 ms  0xdde PK11_Encrypt()
   758 ms  0xdde symkey:0x7fa9cc239980
   759 ms  0xdde PR_Connect()
   759 ms  0xdde fd:0x7fa9bf2c1d60
           /* TID 0xdf8 */
   792 ms  0xdf8 PR_Close()
   792 ms  0xdf8 fd:0x7fa9bf2c1c70
           /* TID 0xde6 */
   813 ms  0xde6 PR_Close()
   813 ms  0xde6 fd:0x7fa9bf2c1c70
           /* TID 0xe3b */
   813 ms  0xe3b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   813 ms  0xe3b ret:0x0
           /* TID 0xdde */
   814 ms  0xdde SSL_AuthCertificateComplete()
   814 ms  0xdde fd:0x7fa9bf2c1790
   814 ms  0xdde err:0x0
   814 ms  0xdde PK11_Encrypt()
   814 ms  0xdde symkey:0x7fa9cc239980
   966 ms  0xdde SECKEY_DestroyPrivateKey()
   966 ms  0xdde privk:0x7fa9bf251820::7fa9bf251820  90 bc 2c bf                                      ..,.
   967 ms  0xdde privk:0x7fa9bf251820::7fa9bf251820  e5 e5 e5 e5                                      ....
   967 ms  0xdde SECKEY_DestroyPrivateKey()
   967 ms  0xdde privk:0x7fa9bf24f820::7fa9bf24f820  50 bb 2c bf                                      P.,.
   967 ms  0xdde privk:0x7fa9bf24f820::7fa9bf24f820  e5 e5 e5 e5                                      ....
  1182 ms  0xdde SSL_ImportFD()
  1182 ms  0xdde ret:0x7fa9bf2c1e80
  1182 ms  0xdde SSL_AuthCertificateHook()
  1182 ms  0xdde fd:0x7fa9bf2c1e80
  1182 ms  0xdde ret:0x0
  1182 ms  0xdde PR_Connect()
  1182 ms  0xdde fd:0x7fa9bf2c1e80
  1208 ms  0xdde SECKEY_CreateECPrivateKey()
  1208 ms  0xdde cx:0x7fa9bf2eda68
  1208 ms     | 0xdde EC_ValidatePublicKey()
  1208 ms     | 0xdde ret:0x0
  1208 ms  0xdde ret:0x7fa9bf250820::7fa9bf250820  90 bc 2c bf                                      ..,.
  1209 ms  0xdde SECKEY_CreateECPrivateKey()
  1209 ms  0xdde cx:0x7fa9bf2eda68
  1209 ms     | 0xdde EC_ValidatePublicKey()
  1212 ms     | 0xdde ret:0x0
  1212 ms  0xdde ret:0x7fa9bf256820::7fa9bf256820  50 bb 2c bf                                      P.,.
           /* TID 0xe3b */
  1265 ms  0xe3b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1265 ms  0xe3b ret:0x0
           /* TID 0xdde */
  1266 ms  SECKEY_ECParamsToKeySize()
  1266 ms  0xdde ret:0x100
  1266 ms  0xdde SECKEY_CreateECPrivateKey()
  1266 ms  0xdde cx:0x7fa9bf2eda68
  1268 ms     | 0xdde EC_ValidatePublicKey()
  1269 ms     | 0xdde ret:0x0
  1269 ms  0xdde ret:0x7fa9bf25a020::7fa9bf25a020  30 28 2f bf                                      0(/.
  1269 ms  0xdde PK11_PubDeriveWithKDF()
  1269 ms  0xdde seckey:0x7fa9bf25a020
  1269 ms     | 0xdde EC_ValidatePublicKey()
  1271 ms     | 0xdde ret:0x0
  1272 ms  0xdde ret:0x7fa9cc239900
  1272 ms  0xdde PK11_DeriveWithFlags()
  1272 ms  0xdde basekey:0x7fa9cc239900
  1272 ms     | 0xdde PK11_DeriveWithTemplate()
  1272 ms  0xdde ret:0x7fa9bf275f80
  1272 ms  0xdde PK11_Derive()
  1272 ms  0xdde basekey:0x7fa9bf275f80
  1272 ms     | 0xdde PK11_DeriveWithTemplate()
  1272 ms  0xdde ret:0x7fa9bf2da280
  1272 ms  0xdde SECKEY_DestroyPrivateKey()
  1272 ms  0xdde privk:0x7fa9bf25a020::7fa9bf25a020  30 28 2f bf                                      0(/.
  1272 ms  0xdde privk:0x7fa9bf25a020::7fa9bf25a020  e5 e5 e5 e5                                      ....
  1272 ms  0xdde PK11_Encrypt()
  1272 ms  0xdde symkey:0x7fa9bf2da780
  1273 ms  0xdde SSL_AuthCertificateComplete()
  1273 ms  0xdde fd:0x7fa9bf2c1e80
  1273 ms  0xdde err:0x0
  1273 ms  0xdde PK11_Encrypt()
  1273 ms  0xdde symkey:0x7fa9bf2da780
  1325 ms  0xdde SECKEY_DestroyPrivateKey()
  1325 ms  0xdde privk:0x7fa9bf256820::7fa9bf256820  50 bb 2c bf                                      P.,.
  1325 ms  0xdde privk:0x7fa9bf256820::7fa9bf256820  e5 e5 e5 e5                                      ....
  1325 ms  0xdde SECKEY_DestroyPrivateKey()
  1325 ms  0xdde privk:0x7fa9bf250820::7fa9bf250820  90 bc 2c bf                                      ..,.
  1325 ms  0xdde privk:0x7fa9bf250820::7fa9bf250820  e5 e5 e5 e5                                      ....
  1329 ms  0xdde PK11_Encrypt()
  1329 ms  0xdde symkey:0x7fa9bf2da780
  1359 ms  0xdde PK11_Encrypt()
  1359 ms  0xdde symkey:0x7fa9bf2da780
  1390 ms  0xdde PK11_Encrypt()
  1390 ms  0xdde symkey:0x7fa9bf2da780
  1420 ms  0xdde PK11_Encrypt()
  1420 ms  0xdde symkey:0x7fa9bf2da780
  1537 ms  0xdde PK11_Encrypt()
  1537 ms  0xdde symkey:0x7fa9bf2da780
  1569 ms  0xdde PK11_Encrypt()
  1569 ms  0xdde symkey:0x7fa9bf2da780
  1600 ms  0xdde PK11_Encrypt()
  1600 ms  0xdde symkey:0x7fa9bf2da780
           /* TID 0xe35 */
  1629 ms  0xe35 PR_Close()
  1629 ms  0xe35 fd:0x7fa9bf2c1fd0
  1629 ms  0xe35 PR_Close()
  1629 ms  0xe35 fd:0x7fa9ce135820
  1629 ms  0xe35 PR_Close()
  1629 ms  0xe35 fd:0x7fa9bf2c1fd0
  1629 ms  0xe35 PR_Close()
  1629 ms  0xe35 fd:0x7fa9ce135820
  1629 ms  0xe35 PR_Close()
  1629 ms  0xe35 fd:0x7fa9bf2c1fd0
  1629 ms  0xe35 PR_Close()
  1629 ms  0xe35 fd:0x7fa9ce135820
  1629 ms  0xe35 PR_Close()
  1629 ms  0xe35 fd:0x7fa9bf2c1fd0
  1629 ms  0xe35 PR_Close()
  1629 ms  0xe35 fd:0x7fa9ce135820
  1630 ms  0xe35 PR_Close()
  1630 ms  0xe35 fd:0x7fa9bf2c1fd0
  1630 ms  0xe35 PR_Close()
  1630 ms  0xe35 fd:0x7fa9ce135820
  1630 ms  0xe35 PR_Close()
  1630 ms  0xe35 fd:0x7fa9bf2c1fd0
  1630 ms  0xe35 PR_Close()
  1630 ms  0xe35 fd:0x7fa9ce135820
  1630 ms  0xe35 PR_Close()
  1630 ms  0xe35 fd:0x7fa9bf2c1fd0
  1630 ms  0xe35 PR_Close()
  1630 ms  0xe35 fd:0x7fa9ce135820
  1630 ms  0xe35 PR_Close()
  1630 ms  0xe35 fd:0x7fa9bf2c1fd0
  1630 ms  0xe35 PR_Close()
  1630 ms  0xe35 fd:0x7fa9ce135820
  1630 ms  0xe35 PR_Close()
  1630 ms  0xe35 fd:0x7fa9bf2c1fd0
  1630 ms  0xe35 PR_Close()
  1630 ms  0xe35 fd:0x7fa9ce135820
  1630 ms  0xe35 PR_Close()
  1630 ms  0xe35 fd:0x7fa9bf2c1fd0
  1630 ms  0xe35 PR_Close()
  1630 ms  0xe35 fd:0x7fa9ce135820
  1630 ms  0xe35 PR_Close()
  1630 ms  0xe35 fd:0x7fa9bf2c1fd0
  1630 ms  0xe35 PR_Close()
  1630 ms  0xe35 fd:0x7fa9ce135820
  1631 ms  0xe35 PR_Close()
  1631 ms  0xe35 fd:0x7fa9bf2c1fd0
  1631 ms  0xe35 PR_Close()
  1631 ms  0xe35 fd:0x7fa9ce135820
  1631 ms  0xe35 PR_Close()
  1631 ms  0xe35 fd:0x7fa9bf2c1fd0
  1631 ms  0xe35 PR_Close()
  1631 ms  0xe35 fd:0x7fa9ce135820
  1631 ms  0xe35 PR_Close()
  1631 ms  0xe35 fd:0x7fa9bf2c1fd0
  1631 ms  0xe35 PR_Close()
  1631 ms  0xe35 fd:0x7fa9ce135820
  1634 ms  0xe35 PR_Close()
  1634 ms  0xe35 fd:0x7fa9bf2c1fd0
  1634 ms  0xe35 PR_Close()
  1634 ms  0xe35 fd:0x7fa9bf2c1fa0
  1637 ms  0xe35 PR_Close()
  1637 ms  0xe35 fd:0x7fa9bf2c1fa0
  1637 ms  0xe35 PR_Close()
  1637 ms  0xe35 fd:0x7fa9bf2c1fd0
  1640 ms  0xe35 PR_Close()
  1640 ms  0xe35 fd:0x7fa9bf2c1fd0
  1640 ms  0xe35 PR_Close()
  1640 ms  0xe35 fd:0x7fa9bf2c1fd0
  1643 ms  0xe35 PR_Close()
  1643 ms  0xe35 fd:0x7fa9bf2c1fd0
  1643 ms  0xe35 PR_Close()
  1643 ms  0xe35 fd:0x7fa9bf2c1fd0
  1674 ms  0xe35 PR_Close()
  1674 ms  0xe35 fd:0x7fa9bf2c1fd0
  1675 ms  0xe35 PR_Close()
  1675 ms  0xe35 fd:0x7fa9bf2c1fd0
  1682 ms  0xe35 PR_Close()
  1682 ms  0xe35 fd:0x7fa9bf2c1fd0
  1682 ms  0xe35 PR_Close()
  1682 ms  0xe35 fd:0x7fa9bf2c1fd0
  1689 ms  0xe35 PR_Close()
  1689 ms  0xe35 fd:0x7fa9bf2c1fd0
  1689 ms  0xe35 PR_Close()
  1689 ms  0xe35 fd:0x7fa9bf2c1fd0
  1691 ms  0xe35 PR_Close()
  1691 ms  0xe35 fd:0x7fa9bf2c1fd0
  1691 ms  0xe35 PR_Close()
  1691 ms  0xe35 fd:0x7fa9bf2c1fd0
           /* TID 0xe32 */
  1691 ms  0xe32 PR_Close()
  1691 ms  0xe32 fd:0x7fa9bf2c1fd0
  1691 ms  0xe32 PR_Close()
  1691 ms  0xe32 fd:0x7fa9bf2c1fd0
  1691 ms  0xe32 PR_Close()
  1691 ms  0xe32 fd:0x7fa9bf2c1fd0
  1691 ms  0xe32 PR_Close()
  1691 ms  0xe32 fd:0x7fa9bf2c1fd0
  1691 ms  0xe32 PR_Close()
  1691 ms  0xe32 fd:0x7fa9bf2c1fd0
  1691 ms  0xe32 PR_Close()
  1691 ms  0xe32 fd:0x7fa9bf2c1fd0
  1691 ms  0xe32 PR_Close()
  1691 ms  0xe32 fd:0x7fa9bf2c1fd0
  1691 ms  0xe32 PR_Close()
  1691 ms  0xe32 fd:0x7fa9bf2c1fd0
  1691 ms  0xe32 PR_Close()
  1691 ms  0xe32 fd:0x7fa9bf2c1fd0
  1691 ms  0xe32 PR_Close()
  1691 ms  0xe32 fd:0x7fa9bf2c1fd0
  1691 ms  0xe32 PR_Close()
  1691 ms  0xe32 fd:0x7fa9bf2c1fd0
  1691 ms  0xe32 PR_Close()
  1691 ms  0xe32 fd:0x7fa9bf2c1fd0
  1691 ms  0xe32 PR_Close()
  1691 ms  0xe32 fd:0x7fa9bf2c1fd0
  1691 ms  0xe32 PR_Close()
  1691 ms  0xe32 fd:0x7fa9bf2c1fd0
  1692 ms  0xe32 PR_Close()
  1692 ms  0xe32 fd:0x7fa9bf2c1fd0
           /* TID 0xdf8 */
  2194 ms  0xdf8 PR_Close()
  2194 ms  0xdf8 fd:0x7fa9bf30d340
  2197 ms  0xdf8 PR_Close()
  2197 ms  0xdf8 fd:0x7fa9bf30d340
  2715 ms  0xdf8 PR_Close()
  2715 ms  0xdf8 fd:0x7fa9bf30d340
           /* TID 0xde6 */
  4175 ms  0xde6 PR_Close()
  4175 ms  0xde6 fd:0x7fa9bf30d340
  4175 ms  0xde6 PR_Close()
  4175 ms  0xde6 fd:0x7fa9bf30d490
           /* TID 0xdde */
  5536 ms  0xdde SSL_ImportFD()
  5536 ms  0xdde ret:0x7fa9c087f4c0
  5536 ms  0xdde SSL_AuthCertificateHook()
  5536 ms  0xdde fd:0x7fa9c087f4c0
  5536 ms  0xdde ret:0x0
  5537 ms  0xdde PR_Connect()
  5537 ms  0xdde fd:0x7fa9c087f4c0
  5620 ms  0xdde SECKEY_CreateECPrivateKey()
  5620 ms  0xdde cx:0x7fa9bf2edda8
  5622 ms     | 0xdde EC_ValidatePublicKey()
  5622 ms     | 0xdde ret:0x0
  5622 ms  0xdde ret:0x7fa9c5054820::7fa9c5054820  90 07 3c ae                                      ..<.
  5623 ms  0xdde SECKEY_CreateECPrivateKey()
  5623 ms  0xdde cx:0x7fa9bf2edda8
  5625 ms     | 0xdde EC_ValidatePublicKey()
  5630 ms     | 0xdde ret:0x0
  5630 ms  0xdde ret:0x7fa9ae203020::7fa9ae203020  10 0a 3c ae                                      ..<.
  5800 ms  SECKEY_ECParamsToKeySize()
  5800 ms  0xdde ret:0x100
  5800 ms  0xdde SECKEY_CreateECPrivateKey()
  5800 ms  0xdde cx:0x7fa9bf2edda8
  5803 ms     | 0xdde EC_ValidatePublicKey()
  5808 ms     | 0xdde ret:0x0
  5808 ms  0xdde ret:0x7fa9ae214020::7fa9ae214020  90 d2 3b ae                                      ..;.
  5809 ms  0xdde PK11_PubDeriveWithKDF()
  5809 ms  0xdde seckey:0x7fa9ae214020
  5809 ms     | 0xdde EC_ValidatePublicKey()
  5815 ms     | 0xdde ret:0x0
  5819 ms  0xdde ret:0x7fa9cc239900
  5819 ms  0xdde PK11_DeriveWithFlags()
  5819 ms  0xdde basekey:0x7fa9cc239900
  5819 ms     | 0xdde PK11_DeriveWithTemplate()
  5819 ms  0xdde ret:0x7fa9c2591d80
  5819 ms  0xdde PK11_Derive()
  5819 ms  0xdde basekey:0x7fa9c2591d80
  5819 ms     | 0xdde PK11_DeriveWithTemplate()
  5820 ms  0xdde ret:0x7fa9c2591e00
  5820 ms  0xdde SECKEY_DestroyPrivateKey()
  5820 ms  0xdde privk:0x7fa9ae214020::7fa9ae214020  90 d2 3b ae                                      ..;.
  5820 ms  0xdde privk:0x7fa9ae214020::7fa9ae214020  e5 e5 e5 e5                                      ....
  5820 ms  0xdde PK11_Encrypt()
  5820 ms  0xdde symkey:0x7fa9c2591f80
           /* TID 0xe3b */
  5847 ms  0xe3b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5848 ms  0xe3b ret:0x0
  5848 ms  0xe3b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5848 ms  0xe3b ret:0x0
           /* TID 0xde6 */
  5853 ms  0xde6 PR_Close()
  5853 ms  0xde6 fd:0x7fa9c087f970
           /* TID 0xdde */
  5867 ms  0xdde SSL_AuthCertificateComplete()
  5867 ms  0xdde fd:0x7fa9c087f4c0
  5867 ms  0xdde err:0x0
  5869 ms  0xdde PK11_Encrypt()
  5869 ms  0xdde symkey:0x7fa9c2591f80
  5869 ms  0xdde PK11_Encrypt()
  5869 ms  0xdde symkey:0x7fa9c2591f80
  5921 ms  0xdde SECKEY_DestroyPrivateKey()
  5921 ms  0xdde privk:0x7fa9ae203020::7fa9ae203020  10 0a 3c ae                                      ..<.
  5921 ms  0xdde privk:0x7fa9ae203020::7fa9ae203020  e5 e5 e5 e5                                      ....
  5922 ms  0xdde SECKEY_DestroyPrivateKey()
  5922 ms  0xdde privk:0x7fa9c5054820::7fa9c5054820  90 07 3c ae                                      ..<.
  5922 ms  0xdde privk:0x7fa9c5054820::7fa9c5054820  e5 e5 e5 e5                                      ....
  6004 ms  0xdde PK11_Encrypt()
  6004 ms  0xdde symkey:0x7fa9c2591f80
           /* TID 0xdf5 */
  6419 ms  0xdf5 PR_Close()
  6419 ms  0xdf5 fd:0x7fa9bfaba910
           /* TID 0xdde */
  6426 ms  0xdde PK11_Encrypt()
  6426 ms  0xdde symkey:0x7fa9c2591f80
           /* TID 0xdf5 */
  7052 ms  0xdf5 PR_Close()
  7052 ms  0xdf5 fd:0x7fa9bf2763d0
           /* TID 0xdd3 */
  7069 ms  0xdd3 PR_Close()
  7069 ms  0xdd3 fd:0x7fa9bf276640
           /* TID 0xdde */
  7146 ms  0xdde SSL_ImportFD()
  7146 ms  0xdde ret:0x7fa9c54fc4c0
  7146 ms  0xdde SSL_AuthCertificateHook()
  7146 ms  0xdde fd:0x7fa9c54fc4c0
  7146 ms  0xdde ret:0x0
  7146 ms  0xdde PK11_Encrypt()
  7146 ms  0xdde symkey:0x7fa9c2591f80
  7147 ms  0xdde PR_Connect()
  7147 ms  0xdde fd:0x7fa9c54fc4c0
  7147 ms  0xdde PK11_Encrypt()
  7147 ms  0xdde symkey:0x7fa9c2591f80
  7147 ms  0xdde PK11_Encrypt()
  7147 ms  0xdde symkey:0x7fa9c2591f80
  7148 ms  0xdde PK11_Encrypt()
  7148 ms  0xdde symkey:0x7fa9c2591f80
  7148 ms  0xdde PK11_Encrypt()
  7148 ms  0xdde symkey:0x7fa9c2591f80
  7148 ms  0xdde PK11_Encrypt()
  7148 ms  0xdde symkey:0x7fa9c2591f80
  7148 ms  0xdde PK11_Encrypt()
  7148 ms  0xdde symkey:0x7fa9c2591f80
  7149 ms  0xdde PK11_Encrypt()
  7149 ms  0xdde symkey:0x7fa9c2591f80
  7149 ms  0xdde PK11_Encrypt()
  7149 ms  0xdde symkey:0x7fa9c2591f80
  7149 ms  0xdde PK11_Encrypt()
  7149 ms  0xdde symkey:0x7fa9c2591f80
  7149 ms  0xdde PK11_Encrypt()
  7149 ms  0xdde symkey:0x7fa9c2591f80
  7149 ms  0xdde PK11_Encrypt()
  7149 ms  0xdde symkey:0x7fa9c2591f80
  7150 ms  0xdde PK11_Encrypt()
  7150 ms  0xdde symkey:0x7fa9c2591f80
  7150 ms  0xdde PK11_Encrypt()
  7150 ms  0xdde symkey:0x7fa9c2591f80
  7150 ms  0xdde PK11_Encrypt()
  7150 ms  0xdde symkey:0x7fa9c2591f80
  7150 ms  0xdde PK11_Encrypt()
  7150 ms  0xdde symkey:0x7fa9c2591f80
  7151 ms  0xdde PK11_Encrypt()
  7151 ms  0xdde symkey:0x7fa9c2591f80
  7229 ms  0xdde SECKEY_CreateECPrivateKey()
  7229 ms  0xdde cx:0x7fa9bf2ee908
  7230 ms     | 0xdde EC_ValidatePublicKey()
  7230 ms     | 0xdde ret:0x0
  7230 ms  0xdde ret:0x7fa9bf672820::7fa9bf672820  d0 e3 82 bf                                      ....
  7230 ms  0xdde SECKEY_CreateECPrivateKey()
  7230 ms  0xdde cx:0x7fa9bf2ee908
  7231 ms     | 0xdde EC_ValidatePublicKey()
  7233 ms     | 0xdde ret:0x0
  7233 ms  0xdde ret:0x7fa9bf679020::7fa9bf679020  50 21 ed c0                                      P!..
  7400 ms  SECKEY_ECParamsToKeySize()
  7400 ms  0xdde ret:0x100
  7400 ms  0xdde SECKEY_CreateECPrivateKey()
  7400 ms  0xdde cx:0x7fa9bf2ee908
  7403 ms     | 0xdde EC_ValidatePublicKey()
  7407 ms     | 0xdde ret:0x0
           /* TID 0xe3b */
  7409 ms  0xe3b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7409 ms  0xe3b ret:0x0
           /* TID 0xdde */
  7410 ms  0xdde ret:0x7fa9c12e8820::7fa9c12e8820  20 84 5a c2                                       .Z.
  7410 ms  0xdde PK11_PubDeriveWithKDF()
  7410 ms  0xdde seckey:0x7fa9c12e8820
  7410 ms     | 0xdde EC_ValidatePublicKey()
  7415 ms     | 0xdde ret:0x0
  7420 ms  0xdde ret:0x7fa9cc239900
  7420 ms  0xdde PK11_DeriveWithFlags()
  7420 ms  0xdde basekey:0x7fa9cc239900
  7420 ms     | 0xdde PK11_DeriveWithTemplate()
  7420 ms  0xdde ret:0x7fa9c06f2280
  7420 ms  0xdde PK11_Derive()
  7420 ms  0xdde basekey:0x7fa9c06f2280
  7420 ms     | 0xdde PK11_DeriveWithTemplate()
  7420 ms  0xdde ret:0x7fa9c06f3f80
  7420 ms  0xdde SECKEY_DestroyPrivateKey()
  7420 ms  0xdde privk:0x7fa9c12e8820::7fa9c12e8820  20 84 5a c2                                       .Z.
  7421 ms  0xdde privk:0x7fa9c12e8820::7fa9c12e8820  e5 e5 e5 e5                                      ....
  7421 ms  0xdde PK11_Encrypt()
  7421 ms  0xdde symkey:0x7fa9c0866680
  7423 ms  0xdde SSL_AuthCertificateComplete()
  7423 ms  0xdde fd:0x7fa9c54fc4c0
  7423 ms  0xdde err:0x0
  7424 ms  0xdde PK11_Encrypt()
  7424 ms  0xdde symkey:0x7fa9c0866680
  7507 ms  0xdde SECKEY_DestroyPrivateKey()
  7507 ms  0xdde privk:0x7fa9bf679020::7fa9bf679020  50 21 ed c0                                      P!..
  7508 ms  0xdde privk:0x7fa9bf679020::7fa9bf679020  e5 e5 e5 e5                                      ....
  7508 ms  0xdde SECKEY_DestroyPrivateKey()
  7508 ms  0xdde privk:0x7fa9bf672820::7fa9bf672820  d0 e3 82 bf                                      ....
  7508 ms  0xdde privk:0x7fa9bf672820::7fa9bf672820  e5 e5 e5 e5                                      ....
  7509 ms  0xdde PR_Close()
  7509 ms  0xdde fd:0x7fa9c54fc4c0
  7509 ms     | 0xdde PK11_Encrypt()
  7509 ms     | 0xdde symkey:0x7fa9c0866680
           /* TID 0xde6 */
  7593 ms  0xde6 PR_Close()
  7593 ms  0xde6 fd:0x7fa9c06ff250
  7636 ms  0xde6 PR_Close()
  7636 ms  0xde6 fd:0x7fa9bf276850
  7761 ms  0xde6 PR_Close()
  7761 ms  0xde6 fd:0x7fa9bf276850
           /* TID 0xdde */
  7783 ms  0xdde PK11_Encrypt()
  7783 ms  0xdde symkey:0x7fa9c2591f80
  7787 ms  0xdde PK11_Encrypt()
  7787 ms  0xdde symkey:0x7fa9c2591f80
  7800 ms  0xdde PK11_Encrypt()
  7800 ms  0xdde symkey:0x7fa9c2591f80
  7804 ms  0xdde PK11_Encrypt()
  7804 ms  0xdde symkey:0x7fa9c2591f80
           /* TID 0xde6 */
  8307 ms  0xde6 PR_Close()
  8307 ms  0xde6 fd:0x7fa9bf276820
  8357 ms  0xde6 PR_Close()
  8357 ms  0xde6 fd:0x7fa9bf6e5e80
  8390 ms  0xde6 PR_Close()
  8390 ms  0xde6 fd:0x7fa9bf276e80
  8394 ms  0xde6 PR_Close()
  8394 ms  0xde6 fd:0x7fa9bf276e80
  8445 ms  0xde6 PR_Close()
  8445 ms  0xde6 fd:0x7fa9bf276e80
  8448 ms  0xde6 PR_Close()
  8448 ms  0xde6 fd:0x7fa9bf276e80
  8454 ms  0xde6 PR_Close()
  8454 ms  0xde6 fd:0x7fa9bf276e80
  8474 ms  0xde6 PR_Close()
  8474 ms  0xde6 fd:0x7fa9bf276e50
           /* TID 0xdde */
  8608 ms  0xdde SSL_ImportFD()
  8608 ms  0xdde ret:0x7fa9c0bf6040
  8608 ms  0xdde SSL_AuthCertificateHook()
  8608 ms  0xdde fd:0x7fa9c0bf6040
  8608 ms  0xdde ret:0x0
  8608 ms  0xdde PR_Connect()
  8608 ms  0xdde fd:0x7fa9c0bf6040
  8666 ms  0xdde SECKEY_CreateECPrivateKey()
  8666 ms  0xdde cx:0x7fa9bf2ee908
  8667 ms     | 0xdde EC_ValidatePublicKey()
  8667 ms     | 0xdde ret:0x0
  8667 ms  0xdde ret:0x7fa9c41b1820::7fa9c41b1820  40 9c 43 c5                                      @.C.
  8667 ms  0xdde SECKEY_CreateECPrivateKey()
  8667 ms  0xdde cx:0x7fa9bf2ee908
  8667 ms     | 0xdde EC_ValidatePublicKey()
  8669 ms     | 0xdde ret:0x0
  8669 ms  0xdde ret:0x7fa9c41b9020::7fa9c41b9020  d0 ed 43 c5                                      ..C.
  8690 ms  0xdde PK11_Encrypt()
  8690 ms  0xdde symkey:0x7fa9c2591f80
  8695 ms  0xdde PR_Close()
  8695 ms  0xdde fd:0x7fa9c0380cd0
           /* TID 0xdd3 */
  8697 ms  0xdd3 EC_ValidatePublicKey()
  8698 ms  0xdd3 ret:0x0
  8698 ms  0xdd3 EC_ValidatePublicKey()
  8699 ms  0xdd3 ret:0x0
  8699 ms  0xdd3 EC_ValidatePublicKey()
  8711 ms  0xdd3 ret:0x0
  8711 ms  0xdd3 EC_ValidatePublicKey()
  8713 ms  0xdd3 ret:0x0
  8713 ms  0xdd3 EC_ValidatePublicKey()
  8714 ms  0xdd3 ret:0x0
  8714 ms  0xdd3 EC_ValidatePublicKey()
  8716 ms  0xdd3 ret:0x0
  8716 ms  0xdd3 EC_ValidatePublicKey()
  8717 ms  0xdd3 ret:0x0
  8717 ms  0xdd3 EC_ValidatePublicKey()
  8719 ms  0xdd3 ret:0x0
  8719 ms  0xdd3 EC_ValidatePublicKey()
  8720 ms  0xdd3 ret:0x0
  8720 ms  0xdd3 EC_ValidatePublicKey()
  8733 ms  0xdd3 ret:0x0
           /* TID 0xdde */
  8734 ms  SECKEY_ECParamsToKeySize()
  8734 ms  0xdde ret:0x100
  8734 ms  0xdde SECKEY_CreateECPrivateKey()
  8734 ms  0xdde cx:0x7fa9bf2ee908
  8734 ms     | 0xdde EC_ValidatePublicKey()
  8736 ms     | 0xdde ret:0x0
  8736 ms  0xdde ret:0x7fa9bf8b5020::7fa9bf8b5020  a0 41 58 bf                                      .AX.
  8736 ms  0xdde PK11_PubDeriveWithKDF()
  8736 ms  0xdde seckey:0x7fa9bf8b5020
  8736 ms     | 0xdde EC_ValidatePublicKey()
  8737 ms     | 0xdde ret:0x0
  8739 ms  0xdde ret:0x7fa9c06f3f80
  8739 ms  0xdde PK11_DeriveWithFlags()
  8739 ms  0xdde basekey:0x7fa9c06f3f80
  8739 ms     | 0xdde PK11_DeriveWithTemplate()
  8739 ms  0xdde ret:0x7fa9c06f2280
  8739 ms  0xdde PK11_Derive()
  8739 ms  0xdde basekey:0x7fa9c06f2280
  8739 ms     | 0xdde PK11_DeriveWithTemplate()
  8739 ms  0xdde ret:0x7fa9cc239900
  8739 ms  0xdde SECKEY_DestroyPrivateKey()
  8739 ms  0xdde privk:0x7fa9bf8b5020::7fa9bf8b5020  a0 41 58 bf                                      .AX.
  8739 ms  0xdde privk:0x7fa9bf8b5020::7fa9bf8b5020  e5 e5 e5 e5                                      ....
  8739 ms  0xdde PK11_Encrypt()
  8739 ms  0xdde symkey:0x7fa9c06f9880
           /* TID 0xe3b */
  8740 ms  0xe3b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8740 ms  0xe3b ret:0x0
           /* TID 0xe30 */
  8740 ms  0xe30 PR_Close()
  8740 ms  0xe30 fd:0x7fa9c2574ee0
  8740 ms  0xe30 PR_Close()
  8740 ms  0xe30 fd:0x7fa9c2574ee0
           /* TID 0xdde */
  8743 ms  0xdde SSL_AuthCertificateComplete()
  8743 ms  0xdde fd:0x7fa9c0bf6040
  8743 ms  0xdde err:0x0
  8744 ms  0xdde PR_Close()
  8744 ms  0xdde fd:0x7fa9bf2c1e80
  8744 ms     | 0xdde PK11_Encrypt()
  8744 ms     | 0xdde symkey:0x7fa9bf2da780
  8744 ms  0xdde PR_Close()
  8744 ms  0xdde fd:0x7fa9bf2c1d60
  8745 ms  0xdde PR_Close()
  8745 ms  0xdde fd:0x7fa9bf2c1790
  8746 ms     | 0xdde PK11_Encrypt()
  8746 ms     | 0xdde symkey:0x7fa9cc239980
  8747 ms  0xdde PR_Close()
  8747 ms  0xdde fd:0x7fa9bfaba400
  8747 ms     | 0xdde PK11_Encrypt()
  8747 ms     | 0xdde symkey:0x7fa9c0edb500
  8747 ms  0xdde PR_Close()
  8747 ms  0xdde fd:0x7fa9bfadfe80
  8747 ms  0xdde PK11_Encrypt()
  8747 ms  0xdde symkey:0x7fa9c06f9880
           /* TID 0xdd3 */
  8750 ms  0xdd3 PR_Close()
  8750 ms  0xdd3 fd:0x7fa9c06ff760
  8750 ms  0xdd3 PR_Close()
  8750 ms  0xdd3 fd:0x7fa9bf276a00
  8751 ms  0xdd3 PR_Close()
  8751 ms  0xdd3 fd:0x7fa9bf2c1790
  8751 ms  0xdd3 PR_Close()
  8751 ms  0xdd3 fd:0x7fa9bf276a00
  8752 ms  0xdd3 PR_Close()
  8752 ms  0xdd3 fd:0x7fa9bf2c1790
  8752 ms  0xdd3 PR_Close()
  8752 ms  0xdd3 fd:0x7fa9bf276a00
           /* TID 0xdf8 */
  8755 ms  0xdf8 PR_Close()
  8755 ms  0xdf8 fd:0x7fa9bf276a00
           /* TID 0xdd3 */
  8774 ms  0xdd3 PR_Close()
  8774 ms  0xdd3 fd:0x7fa9bf2c1790
  8775 ms  0xdd3 PR_Close()
  8775 ms  0xdd3 fd:0x7fa9c0b56d90
           /* TID 0xdde */
  8775 ms  0xdde PK11_Encrypt()
  8775 ms  0xdde symkey:0x7fa9c2591f80
  8775 ms  0xdde PR_Close()
  8775 ms  0xdde fd:0x7fa9c087f4c0
  8775 ms     | 0xdde PK11_Encrypt()
  8775 ms     | 0xdde symkey:0x7fa9c2591f80
           /* TID 0xdd3 */
  8776 ms  0xdd3 PR_Close()
  8776 ms  0xdd3 fd:0x7fa9bf2c1790
  8776 ms  0xdd3 PR_Close()
  8776 ms  0xdd3 fd:0x7fa9c087f310
  8777 ms  0xdd3 PR_Close()
  8777 ms  0xdd3 fd:0x7fa9ca3c89a0
  8777 ms  0xdd3 PR_Close()
  8777 ms  0xdd3 fd:0x7fa9ca3c88b0
  8777 ms  0xdd3 PR_Close()
  8777 ms  0xdd3 fd:0x7fa9ca3c8a60
  8779 ms  0xdd3 PR_Close()
  8779 ms  0xdd3 fd:0x7fa9bfaba3d0
  8780 ms  0xdd3 PR_Close()
  8780 ms  0xdd3 fd:0x7fa9bfaba3d0
  8786 ms  0xdd3 PR_Close()
  8786 ms  0xdd3 fd:0x7fa9bf2c1790
  8786 ms  0xdd3 PR_Close()
  8786 ms  0xdd3 fd:0x7fa9c087f400
  8788 ms  0xdd3 PR_Close()
  8788 ms  0xdd3 fd:0x7fa9bf2c1790
  8788 ms  0xdd3 PR_Close()
  8788 ms  0xdd3 fd:0x7fa9c087f400
  8794 ms  0xdd3 PR_Close()
  8794 ms  0xdd3 fd:0x7fa9c087f4c0
  8796 ms  0xdd3 PR_Close()
  8796 ms  0xdd3 fd:0x7fa9c087f4c0
           /* TID 0xdde */
  8797 ms  0xdde SECKEY_DestroyPrivateKey()
  8797 ms  0xdde privk:0x7fa9c41b9020::7fa9c41b9020  d0 ed 43 c5                                      ..C.
  8797 ms  0xdde privk:0x7fa9c41b9020::7fa9c41b9020  e5 e5 e5 e5                                      ....
  8797 ms  0xdde SECKEY_DestroyPrivateKey()
  8797 ms  0xdde privk:0x7fa9c41b1820::7fa9c41b1820  40 9c 43 c5                                      @.C.
  8797 ms  0xdde privk:0x7fa9c41b1820::7fa9c41b1820  e5 e5 e5 e5                                      ....
           /* TID 0xdd3 */
  8798 ms  0xdd3 PR_Close()
  8798 ms  0xdd3 fd:0x7fa9bf2c1790
  8798 ms  0xdd3 PR_Close()
  8798 ms  0xdd3 fd:0x7fa9c087f550
  8799 ms  0xdd3 PR_Close()
  8799 ms  0xdd3 fd:0x7fa9bf2c1790
  8799 ms  0xdd3 PR_Close()
  8799 ms  0xdd3 fd:0x7fa9c087f550
  8801 ms  0xdd3 PR_Close()
  8801 ms  0xdd3 fd:0x7fa9c087f580
  8803 ms  0xdd3 PR_Close()
  8803 ms  0xdd3 fd:0x7fa9c087f580
  8809 ms  0xdd3 PR_Close()
  8809 ms  0xdd3 fd:0x7fa9c0bf6df0
  8810 ms  0xdd3 PR_Close()
  8810 ms  0xdd3 fd:0x7fa9c0bf6df0
  8814 ms  0xdd3 PR_Close()
  8814 ms  0xdd3 fd:0x7fa9c1268d30
           /* TID 0xdf8 */
  8818 ms  0xdf8 PR_Close()
  8818 ms  0xdf8 fd:0x7fa9bf2c1640
           /* TID 0xdd3 */
  8819 ms  0xdd3 PR_Close()
  8819 ms  0xdd3 fd:0x7fa9bf2c1790
  8819 ms  0xdd3 PR_Close()
  8819 ms  0xdd3 fd:0x7fa9c08f0310
           /* TID 0xde6 */
  8827 ms  0xde6 PR_Close()
  8827 ms  0xde6 fd:0x7fa9c08f00d0
           /* TID 0xe74 */
  8831 ms  0xe74 PR_Close()
  8831 ms  0xe74 fd:0x7fa9c08f02b0
  8855 ms  0xe74 PR_Close()
  8855 ms  0xe74 fd:0x7fa9bfabaa60
           /* TID 0xdde */
  8855 ms  0xdde PR_Close()
  8855 ms  0xdde fd:0x7fa9c0bf6040
  8855 ms     | 0xdde PK11_Encrypt()
  8855 ms     | 0xdde symkey:0x7fa9c06f9880
           /* TID 0xdd8 */
  8864 ms  0xdd8 PR_Close()
  8864 ms  0xdd8 fd:0x7fa9c8ff7df0
  8870 ms  0xdd8 PR_Close()
  8870 ms  0xdd8 fd:0x7fa9c5732820
           /* TID 0xe74 */
  8881 ms  0xe74 PR_Close()
  8881 ms  0xe74 fd:0x7fa9bf2c1d90
           /* TID 0xdd3 */
  8884 ms  0xdd3 PR_Close()
  8884 ms  0xdd3 fd:0x7fa9bf2c1790
  8884 ms  0xdd3 PR_Close()
  8884 ms  0xdd3 fd:0x7fa9bf2c1d90
           /* TID 0xdde */
  8884 ms  0xdde PR_Close()
  8884 ms  0xdde fd:0x7fa9bfadfaf0
           /* TID 0xe30 */
  8885 ms  0xe30 PR_Close()
  8885 ms  0xe30 fd:0x7fa9c087f5e0
  8885 ms  0xe30 PR_Close()
  8885 ms  0xe30 fd:0x7fa9bf276fa0
  8885 ms  0xe30 PR_Close()
  8885 ms  0xe30 fd:0x7fa9bf276fa0
  8885 ms  0xe30 PR_Close()
  8885 ms  0xe30 fd:0x7fa9bf276fa0
           /* TID 0xe74 */
  8885 ms  0xe74 PR_Close()
  8885 ms  0xe74 fd:0x7fa9c06ffbe0
           /* TID 0xdf8 */
  8885 ms  0xdf8 PR_Close()
  8885 ms  0xdf8 fd:0x7fa9bf2c1640
           /* TID 0xde6 */
  8889 ms  0xde6 PR_Close()
  8889 ms  0xde6 fd:0x7fa9c08f02b0
  8889 ms  0xde6 PR_Close()
  8889 ms  0xde6 fd:0x7fa9c08f0310
           /* TID 0xdd8 */
  8894 ms  0xdd8 PR_Close()
  8894 ms  0xdd8 fd:0x7fa9bfadfa90
           /* TID 0xdd3 */
  8897 ms  0xdd3 PR_Close()
  8897 ms  0xdd3 fd:0x7fa9bf2c1790
  8897 ms  0xdd3 PR_Close()
  8897 ms  0xdd3 fd:0x7fa9bfadfee0
           /* TID 0xe74 */
  8898 ms  0xe74 PR_Close()
  8898 ms  0xe74 fd:0x7fa9bfababe0
  8900 ms  0xe74 PR_Close()
  8900 ms  0xe74 fd:0x7fa9bfababe0
  8985 ms  0xe74 PR_Close()
  8985 ms  0xe74 fd:0x7fa9bf276ee0
  8989 ms  0xe74 PR_Close()
  8989 ms  0xe74 fd:0x7fa9bf276ee0
  9017 ms  0xe74 PR_Close()
  9017 ms  0xe74 fd:0x7fa9bf6e5e50
  9021 ms  0xe74 PR_Close()
  9021 ms  0xe74 fd:0x7fa9bf6e5ee0
  9043 ms  0xe74 PR_Close()
  9043 ms  0xe74 fd:0x7fa9bfadf760
  9049 ms  0xe74 PR_Close()
  9049 ms  0xe74 fd:0x7fa9c06ff520
  9056 ms  0xe74 PR_Close()
  9056 ms  0xe74 fd:0x7fa9c087f910
  9066 ms  0xe74 PR_Close()
  9066 ms  0xe74 fd:0x7fa9c087fdf0
  9067 ms  0xe74 PR_Close()
  9067 ms  0xe74 fd:0x7fa9c087fdf0
           /* TID 0xdd3 */
  9223 ms  0xdd3 PR_Close()
  9223 ms  0xdd3 fd:0x7fa9bf30d280
  9224 ms  0xdd3 PR_Close()
  9224 ms  0xdd3 fd:0x7fa9bf30d280
  9229 ms  0xdd3 PR_Close()
  9229 ms  0xdd3 fd:0x7fa9e76da130
  9229 ms  0xdd3 PR_Close()
  9229 ms  0xdd3 fd:0x7fa9e76da190
Process terminated
