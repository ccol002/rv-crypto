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
           /* TID 0x7b01 */
     7 ms  0x7b01 PR_Close()
     7 ms  0x7b01 fd:0x7f6b105c5670
           /* TID 0x7af9 */
   281 ms  0x7af9 SSL_ImportFD()
   281 ms  0x7af9 ret:0x7f6b105fc2e0
   281 ms  0x7af9 SSL_AuthCertificateHook()
   281 ms  0x7af9 fd:0x7f6b105fc2e0
   281 ms  0x7af9 ret:0x0
   281 ms  0x7af9 PR_Connect()
   281 ms  0x7af9 fd:0x7f6b105fc2e0
   501 ms  0x7af9 SECKEY_CreateECPrivateKey()
   501 ms  0x7af9 cx:0x7f6b105c4b28
   503 ms     | 0x7af9 EC_ValidatePublicKey()
   503 ms     | 0x7af9 ret:0x0
   503 ms  0x7af9 ret:0x7f6b10743820::7f6b10743820  40 0c 7a 10                                      @.z.
   504 ms  0x7af9 SECKEY_CreateECPrivateKey()
   504 ms  0x7af9 cx:0x7f6b105c4b28
   506 ms     | 0x7af9 EC_ValidatePublicKey()
   511 ms     | 0x7af9 ret:0x0
   511 ms  0x7af9 ret:0x7f6b10745820::7f6b10745820  20 0e 7a 10                                       .z.
           /* TID 0x7b65 */
   523 ms  0x7b65 PR_Close()
   523 ms  0x7b65 fd:0x7f6b105fc220
   526 ms  0x7b65 PR_Close()
   526 ms  0x7b65 fd:0x7f6b105fc220
           /* TID 0x7af9 */
   737 ms  SECKEY_ECParamsToKeySize()
   737 ms  0x7af9 ret:0x100
   737 ms  0x7af9 SECKEY_CreateECPrivateKey()
   737 ms  0x7af9 cx:0x7f6b105c4b28
   739 ms     | 0x7af9 EC_ValidatePublicKey()
   744 ms     | 0x7af9 ret:0x0
   744 ms  0x7af9 ret:0x7f6b1074e820::7f6b1074e820  80 38 7e 10                                      .8~.
   744 ms  0x7af9 PK11_PubDeriveWithKDF()
   744 ms  0x7af9 seckey:0x7f6b1074e820
   744 ms     | 0x7af9 EC_ValidatePublicKey()
   749 ms     | 0x7af9 ret:0x0
   753 ms  0x7af9 ret:0x7f6b1a8d4b80
   753 ms  0x7af9 PK11_DeriveWithFlags()
   753 ms  0x7af9 basekey:0x7f6b1a8d4b80
   753 ms     | 0x7af9 PK11_DeriveWithTemplate()
   753 ms  0x7af9 ret:0x7f6b107cb700
   753 ms  0x7af9 PK11_Derive()
   753 ms  0x7af9 basekey:0x7f6b107cb700
   753 ms     | 0x7af9 PK11_DeriveWithTemplate()
   753 ms  0x7af9 ret:0x7f6b107cb800
   753 ms  0x7af9 SECKEY_DestroyPrivateKey()
   753 ms  0x7af9 privk:0x7f6b1074e820::7f6b1074e820  80 38 7e 10                                      .8~.
   754 ms  0x7af9 privk:0x7f6b1074e820::7f6b1074e820  e5 e5 e5 e5                                      ....
   754 ms  0x7af9 PK11_Encrypt()
   754 ms  0x7af9 symkey:0x7f6b107cb980
   755 ms  0x7af9 PR_Connect()
   755 ms  0x7af9 fd:0x7f6b105fcd90
           /* TID 0x7b65 */
   764 ms  0x7b65 PR_Close()
   764 ms  0x7b65 fd:0x7f6b105fcd30
           /* TID 0x7b01 */
   809 ms  0x7b01 PR_Close()
   809 ms  0x7b01 fd:0x7f6b105fcc70
           /* TID 0x7b5d */
   809 ms  0x7b5d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   810 ms  0x7b5d ret:0x0
           /* TID 0x7af9 */
   810 ms  0x7af9 SSL_AuthCertificateComplete()
   810 ms  0x7af9 fd:0x7f6b105fc2e0
   810 ms  0x7af9 err:0x0
   810 ms  0x7af9 PK11_Encrypt()
   810 ms  0x7af9 symkey:0x7f6b107cb980
   973 ms  0x7af9 SECKEY_DestroyPrivateKey()
   973 ms  0x7af9 privk:0x7f6b10745820::7f6b10745820  20 0e 7a 10                                       .z.
   973 ms  0x7af9 privk:0x7f6b10745820::7f6b10745820  e5 e5 e5 e5                                      ....
   973 ms  0x7af9 SECKEY_DestroyPrivateKey()
   973 ms  0x7af9 privk:0x7f6b10743820::7f6b10743820  40 0c 7a 10                                      @.z.
   973 ms  0x7af9 privk:0x7f6b10743820::7f6b10743820  e5 e5 e5 e5                                      ....
  1198 ms  0x7af9 SSL_ImportFD()
  1198 ms  0x7af9 ret:0x7f6b105fcf10
  1198 ms  0x7af9 SSL_AuthCertificateHook()
  1198 ms  0x7af9 fd:0x7f6b105fcf10
  1198 ms  0x7af9 ret:0x0
  1198 ms  0x7af9 PR_Connect()
  1198 ms  0x7af9 fd:0x7f6b105fcf10
  1225 ms  0x7af9 SECKEY_CreateECPrivateKey()
  1225 ms  0x7af9 cx:0x7f6b107d85c8
  1226 ms     | 0x7af9 EC_ValidatePublicKey()
  1226 ms     | 0x7af9 ret:0x0
  1227 ms  0x7af9 ret:0x7f6b10744820::7f6b10744820  20 0e 7a 10                                       .z.
  1227 ms  0x7af9 SECKEY_CreateECPrivateKey()
  1227 ms  0x7af9 cx:0x7f6b107d85c8
  1229 ms     | 0x7af9 EC_ValidatePublicKey()
  1234 ms     | 0x7af9 ret:0x0
  1234 ms  0x7af9 ret:0x7f6b1074a820::7f6b1074a820  e0 0c 7a 10                                      ..z.
           /* TID 0x7b5d */
  1287 ms  0x7b5d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1287 ms  0x7b5d ret:0x0
           /* TID 0x7af9 */
  1288 ms  SECKEY_ECParamsToKeySize()
  1288 ms  0x7af9 ret:0x100
  1288 ms  0x7af9 SECKEY_CreateECPrivateKey()
  1288 ms  0x7af9 cx:0x7f6b107d85c8
  1290 ms     | 0x7af9 EC_ValidatePublicKey()
  1295 ms     | 0x7af9 ret:0x0
  1295 ms  0x7af9 ret:0x7f6b1074e020::7f6b1074e020  20 39 7e 10                                       9~.
  1295 ms  0x7af9 PK11_PubDeriveWithKDF()
  1295 ms  0x7af9 seckey:0x7f6b1074e020
  1295 ms     | 0x7af9 EC_ValidatePublicKey()
  1299 ms     | 0x7af9 ret:0x0
  1304 ms  0x7af9 ret:0x7f6b1a8d4b80
  1304 ms  0x7af9 PK11_DeriveWithFlags()
  1304 ms  0x7af9 basekey:0x7f6b1a8d4b80
  1304 ms     | 0x7af9 PK11_DeriveWithTemplate()
  1304 ms  0x7af9 ret:0x7f6b10767800
  1304 ms  0x7af9 PK11_Derive()
  1304 ms  0x7af9 basekey:0x7f6b10767800
  1304 ms     | 0x7af9 PK11_DeriveWithTemplate()
  1304 ms  0x7af9 ret:0x7f6b107cc200
  1304 ms  0x7af9 SECKEY_DestroyPrivateKey()
  1304 ms  0x7af9 privk:0x7f6b1074e020::7f6b1074e020  20 39 7e 10                                       9~.
  1304 ms  0x7af9 privk:0x7f6b1074e020::7f6b1074e020  e5 e5 e5 e5                                      ....
  1305 ms  0x7af9 PK11_Encrypt()
  1305 ms  0x7af9 symkey:0x7f6b107cc700
  1305 ms  0x7af9 SSL_AuthCertificateComplete()
  1305 ms  0x7af9 fd:0x7f6b105fcf10
  1305 ms  0x7af9 err:0x0
  1305 ms  0x7af9 PK11_Encrypt()
  1305 ms  0x7af9 symkey:0x7f6b107cc700
  1356 ms  0x7af9 SECKEY_DestroyPrivateKey()
  1356 ms  0x7af9 privk:0x7f6b1074a820::7f6b1074a820  e0 0c 7a 10                                      ..z.
  1357 ms  0x7af9 privk:0x7f6b1074a820::7f6b1074a820  e5 e5 e5 e5                                      ....
  1357 ms  0x7af9 SECKEY_DestroyPrivateKey()
  1357 ms  0x7af9 privk:0x7f6b10744820::7f6b10744820  20 0e 7a 10                                       .z.
  1357 ms  0x7af9 privk:0x7f6b10744820::7f6b10744820  e5 e5 e5 e5                                      ....
  1361 ms  0x7af9 PK11_Encrypt()
  1361 ms  0x7af9 symkey:0x7f6b107cc700
  1392 ms  0x7af9 PK11_Encrypt()
  1392 ms  0x7af9 symkey:0x7f6b107cc700
  1424 ms  0x7af9 PK11_Encrypt()
  1424 ms  0x7af9 symkey:0x7f6b107cc700
  1456 ms  0x7af9 PK11_Encrypt()
  1456 ms  0x7af9 symkey:0x7f6b107cc700
  1572 ms  0x7af9 PK11_Encrypt()
  1572 ms  0x7af9 symkey:0x7f6b107cc700
  1605 ms  0x7af9 PK11_Encrypt()
  1605 ms  0x7af9 symkey:0x7f6b107cc700
  1637 ms  0x7af9 PK11_Encrypt()
  1637 ms  0x7af9 symkey:0x7f6b107cc700
           /* TID 0x7b57 */
  1666 ms  0x7b57 PR_Close()
  1666 ms  0x7b57 fd:0x7f6aff617070
  1666 ms  0x7b57 PR_Close()
  1666 ms  0x7b57 fd:0x7f6aff617100
  1666 ms  0x7b57 PR_Close()
  1666 ms  0x7b57 fd:0x7f6aff617070
  1666 ms  0x7b57 PR_Close()
  1666 ms  0x7b57 fd:0x7f6aff617100
  1666 ms  0x7b57 PR_Close()
  1666 ms  0x7b57 fd:0x7f6aff617070
  1666 ms  0x7b57 PR_Close()
  1666 ms  0x7b57 fd:0x7f6aff617100
  1667 ms  0x7b57 PR_Close()
  1667 ms  0x7b57 fd:0x7f6aff617070
  1667 ms  0x7b57 PR_Close()
  1667 ms  0x7b57 fd:0x7f6aff617100
  1667 ms  0x7b57 PR_Close()
  1667 ms  0x7b57 fd:0x7f6aff617070
  1667 ms  0x7b57 PR_Close()
  1667 ms  0x7b57 fd:0x7f6aff617100
  1667 ms  0x7b57 PR_Close()
  1667 ms  0x7b57 fd:0x7f6aff617070
  1667 ms  0x7b57 PR_Close()
  1667 ms  0x7b57 fd:0x7f6aff617100
  1667 ms  0x7b57 PR_Close()
  1667 ms  0x7b57 fd:0x7f6aff617070
  1667 ms  0x7b57 PR_Close()
  1667 ms  0x7b57 fd:0x7f6aff617100
  1667 ms  0x7b57 PR_Close()
  1667 ms  0x7b57 fd:0x7f6aff617070
  1667 ms  0x7b57 PR_Close()
  1667 ms  0x7b57 fd:0x7f6aff617100
  1667 ms  0x7b57 PR_Close()
  1667 ms  0x7b57 fd:0x7f6aff617070
  1668 ms  0x7b57 PR_Close()
  1668 ms  0x7b57 fd:0x7f6aff617100
  1668 ms  0x7b57 PR_Close()
  1668 ms  0x7b57 fd:0x7f6aff617070
  1668 ms  0x7b57 PR_Close()
  1668 ms  0x7b57 fd:0x7f6aff617100
  1668 ms  0x7b57 PR_Close()
  1668 ms  0x7b57 fd:0x7f6aff617070
  1668 ms  0x7b57 PR_Close()
  1668 ms  0x7b57 fd:0x7f6aff617100
  1668 ms  0x7b57 PR_Close()
  1668 ms  0x7b57 fd:0x7f6aff617070
  1668 ms  0x7b57 PR_Close()
  1668 ms  0x7b57 fd:0x7f6aff617100
  1668 ms  0x7b57 PR_Close()
  1668 ms  0x7b57 fd:0x7f6aff617070
  1668 ms  0x7b57 PR_Close()
  1668 ms  0x7b57 fd:0x7f6aff617100
  1668 ms  0x7b57 PR_Close()
  1668 ms  0x7b57 fd:0x7f6aff617070
  1668 ms  0x7b57 PR_Close()
  1668 ms  0x7b57 fd:0x7f6aff617100
  1672 ms  0x7b57 PR_Close()
  1672 ms  0x7b57 fd:0x7f6aff617070
  1672 ms  0x7b57 PR_Close()
  1672 ms  0x7b57 fd:0x7f6aff617070
  1675 ms  0x7b57 PR_Close()
  1675 ms  0x7b57 fd:0x7f6aff617070
  1675 ms  0x7b57 PR_Close()
  1675 ms  0x7b57 fd:0x7f6aff6170d0
  1678 ms  0x7b57 PR_Close()
  1678 ms  0x7b57 fd:0x7f6aff6170d0
  1679 ms  0x7b57 PR_Close()
  1679 ms  0x7b57 fd:0x7f6aff6170d0
  1681 ms  0x7b57 PR_Close()
  1681 ms  0x7b57 fd:0x7f6aff6170d0
  1682 ms  0x7b57 PR_Close()
  1682 ms  0x7b57 fd:0x7f6aff6170d0
  1734 ms  0x7b57 PR_Close()
  1734 ms  0x7b57 fd:0x7f6aff6170d0
  1735 ms  0x7b57 PR_Close()
  1735 ms  0x7b57 fd:0x7f6aff6170d0
  1742 ms  0x7b57 PR_Close()
  1742 ms  0x7b57 fd:0x7f6aff6170d0
  1742 ms  0x7b57 PR_Close()
  1742 ms  0x7b57 fd:0x7f6aff6170d0
  1748 ms  0x7b57 PR_Close()
  1748 ms  0x7b57 fd:0x7f6aff6170d0
  1748 ms  0x7b57 PR_Close()
  1748 ms  0x7b57 fd:0x7f6aff6170d0
  1750 ms  0x7b57 PR_Close()
  1750 ms  0x7b57 fd:0x7f6aff6170d0
  1750 ms  0x7b57 PR_Close()
  1750 ms  0x7b57 fd:0x7f6aff6170d0
           /* TID 0x7b54 */
  1750 ms  0x7b54 PR_Close()
  1750 ms  0x7b54 fd:0x7f6aff6170d0
  1750 ms  0x7b54 PR_Close()
  1750 ms  0x7b54 fd:0x7f6aff6170d0
  1751 ms  0x7b54 PR_Close()
  1751 ms  0x7b54 fd:0x7f6aff6170d0
  1751 ms  0x7b54 PR_Close()
  1751 ms  0x7b54 fd:0x7f6aff6170d0
  1751 ms  0x7b54 PR_Close()
  1751 ms  0x7b54 fd:0x7f6aff6170d0
  1751 ms  0x7b54 PR_Close()
  1751 ms  0x7b54 fd:0x7f6aff6170d0
  1751 ms  0x7b54 PR_Close()
  1751 ms  0x7b54 fd:0x7f6aff6170d0
  1751 ms  0x7b54 PR_Close()
  1751 ms  0x7b54 fd:0x7f6aff6170d0
  1751 ms  0x7b54 PR_Close()
  1751 ms  0x7b54 fd:0x7f6aff6170d0
  1751 ms  0x7b54 PR_Close()
  1751 ms  0x7b54 fd:0x7f6aff6170d0
  1751 ms  0x7b54 PR_Close()
  1751 ms  0x7b54 fd:0x7f6aff6170d0
  1751 ms  0x7b54 PR_Close()
  1751 ms  0x7b54 fd:0x7f6aff6170d0
  1751 ms  0x7b54 PR_Close()
  1751 ms  0x7b54 fd:0x7f6aff6170d0
  1751 ms  0x7b54 PR_Close()
  1751 ms  0x7b54 fd:0x7f6aff6170d0
  1751 ms  0x7b54 PR_Close()
  1751 ms  0x7b54 fd:0x7f6aff6170d0
           /* TID 0x7b65 */
  2254 ms  0x7b65 PR_Close()
  2254 ms  0x7b65 fd:0x7f6aff617460
  2257 ms  0x7b65 PR_Close()
  2257 ms  0x7b65 fd:0x7f6aff617460
  2833 ms  0x7b65 PR_Close()
  2833 ms  0x7b65 fd:0x7f6aff617460
           /* TID 0x7b01 */
  4154 ms  0x7b01 PR_Close()
  4154 ms  0x7b01 fd:0x7f6aff617460
  4155 ms  0x7b01 PR_Close()
  4155 ms  0x7b01 fd:0x7f6aff6175b0
  4155 ms  0x7b01 PR_Close()
  4155 ms  0x7b01 fd:0x7f6aff617610
           /* TID 0x7af9 */
  4537 ms  0x7af9 SSL_ImportFD()
  4537 ms  0x7af9 ret:0x7f6aff5e16d0
  4537 ms  0x7af9 SSL_AuthCertificateHook()
  4537 ms  0x7af9 fd:0x7f6aff5e16d0
  4537 ms  0x7af9 ret:0x0
  4537 ms  0x7af9 PR_Connect()
  4537 ms  0x7af9 fd:0x7f6aff5e16d0
  4620 ms  0x7af9 SECKEY_CreateECPrivateKey()
  4620 ms  0x7af9 cx:0x7f6b107d8908
  4622 ms     | 0x7af9 EC_ValidatePublicKey()
  4622 ms     | 0x7af9 ret:0x0
  4622 ms  0x7af9 ret:0x7f6b11d15020::7f6b11d15020  90 47 8e 15                                      .G..
  4622 ms  0x7af9 SECKEY_CreateECPrivateKey()
  4622 ms  0x7af9 cx:0x7f6b107d8908
  4626 ms     | 0x7af9 EC_ValidatePublicKey()
  4630 ms     | 0x7af9 ret:0x0
  4630 ms  0x7af9 ret:0x7f6b15f35820::7f6b15f35820  70 49 8e 15                                      pI..
           /* TID 0x7b5d */
  4718 ms  0x7b5d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4719 ms  0x7b5d ret:0x0
  4719 ms  0x7b5d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4720 ms  0x7b5d ret:0x0
           /* TID 0x7af9 */
  4796 ms  SECKEY_ECParamsToKeySize()
  4797 ms  0x7af9 ret:0x100
  4797 ms  0x7af9 SECKEY_CreateECPrivateKey()
  4797 ms  0x7af9 cx:0x7f6b107d8908
  4801 ms     | 0x7af9 EC_ValidatePublicKey()
  4803 ms     | 0x7af9 ret:0x0
  4803 ms  0x7af9 ret:0x7f6aff510020::7f6aff510020  f0 91 5c ff                                      ..\.
  4803 ms  0x7af9 PK11_PubDeriveWithKDF()
  4803 ms  0x7af9 seckey:0x7f6aff510020
  4803 ms     | 0x7af9 EC_ValidatePublicKey()
  4805 ms     | 0x7af9 ret:0x0
  4807 ms  0x7af9 ret:0x7f6b1a8d4b80
  4807 ms  0x7af9 PK11_DeriveWithFlags()
  4807 ms  0x7af9 basekey:0x7f6b1a8d4b80
  4807 ms     | 0x7af9 PK11_DeriveWithTemplate()
  4807 ms  0x7af9 ret:0x7f6aff5e6100
  4807 ms  0x7af9 PK11_Derive()
  4807 ms  0x7af9 basekey:0x7f6aff5e6100
  4807 ms     | 0x7af9 PK11_DeriveWithTemplate()
  4807 ms  0x7af9 ret:0x7f6aff5e6180
  4807 ms  0x7af9 SECKEY_DestroyPrivateKey()
  4807 ms  0x7af9 privk:0x7f6aff510020::7f6aff510020  f0 91 5c ff                                      ..\.
  4807 ms  0x7af9 privk:0x7f6aff510020::7f6aff510020  e5 e5 e5 e5                                      ....
  4807 ms  0x7af9 PK11_Encrypt()
  4807 ms  0x7af9 symkey:0x7f6aff5e6300
  4809 ms  0x7af9 SSL_AuthCertificateComplete()
  4809 ms  0x7af9 fd:0x7f6aff5e16d0
  4809 ms  0x7af9 err:0x0
  4810 ms  0x7af9 PK11_Encrypt()
  4810 ms  0x7af9 symkey:0x7f6aff5e6300
  4810 ms  0x7af9 PK11_Encrypt()
  4810 ms  0x7af9 symkey:0x7f6aff5e6300
  4891 ms  0x7af9 SECKEY_DestroyPrivateKey()
  4891 ms  0x7af9 privk:0x7f6b15f35820::7f6b15f35820  70 49 8e 15                                      pI..
  4891 ms  0x7af9 privk:0x7f6b15f35820::7f6b15f35820  e5 e5 e5 e5                                      ....
  4892 ms  0x7af9 SECKEY_DestroyPrivateKey()
  4892 ms  0x7af9 privk:0x7f6b11d15020::7f6b11d15020  90 47 8e 15                                      .G..
  4892 ms  0x7af9 privk:0x7f6b11d15020::7f6b11d15020  e5 e5 e5 e5                                      ....
  4982 ms  0x7af9 PK11_Encrypt()
  4982 ms  0x7af9 symkey:0x7f6aff5e6300
           /* TID 0x7b10 */
  4994 ms  0x7b10 PR_Close()
  4994 ms  0x7b10 fd:0x7f6aff5e1eb0
           /* TID 0x7af9 */
  5005 ms  0x7af9 PK11_Encrypt()
  5005 ms  0x7af9 symkey:0x7f6aff5e6300
           /* TID 0x7b10 */
  5432 ms  0x7b10 PR_Close()
  5432 ms  0x7b10 fd:0x7f6b158cd5e0
           /* TID 0x7af9 */
  5478 ms  0x7af9 PK11_Encrypt()
  5478 ms  0x7af9 symkey:0x7f6aff5e6300
  5478 ms  0x7af9 PK11_Encrypt()
  5478 ms  0x7af9 symkey:0x7f6aff5e6300
  5479 ms  0x7af9 PK11_Encrypt()
  5479 ms  0x7af9 symkey:0x7f6aff5e6300
  5505 ms  0x7af9 PK11_Encrypt()
  5505 ms  0x7af9 symkey:0x7f6aff5e6300
  5505 ms  0x7af9 PK11_Encrypt()
  5505 ms  0x7af9 symkey:0x7f6aff5e6300
  5506 ms  0x7af9 PK11_Encrypt()
  5506 ms  0x7af9 symkey:0x7f6aff5e6300
  5506 ms  0x7af9 PK11_Encrypt()
  5506 ms  0x7af9 symkey:0x7f6aff5e6300
  5518 ms  0x7af9 SSL_ImportFD()
  5518 ms  0x7af9 ret:0x7f6aff431a00
  5518 ms  0x7af9 SSL_AuthCertificateHook()
  5518 ms  0x7af9 fd:0x7f6aff431a00
  5518 ms  0x7af9 ret:0x0
  5518 ms  0x7af9 PR_Connect()
  5518 ms  0x7af9 fd:0x7f6aff431a00
  5518 ms  0x7af9 SSL_ImportFD()
  5518 ms  0x7af9 ret:0x7f6aff431c10
  5518 ms  0x7af9 SSL_AuthCertificateHook()
  5518 ms  0x7af9 fd:0x7f6aff431c10
  5518 ms  0x7af9 ret:0x0
  5518 ms  0x7af9 PR_Connect()
  5518 ms  0x7af9 fd:0x7f6aff431c10
  5554 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5554 ms  0x7af9 cx:0x7f6b107d9468
  5555 ms     | 0x7af9 EC_ValidatePublicKey()
  5555 ms     | 0x7af9 ret:0x0
  5555 ms  0x7af9 ret:0x7f6aff002820::7f6aff002820  00 c1 4e ff                                      ..N.
  5555 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5555 ms  0x7af9 cx:0x7f6b107d9468
  5556 ms     | 0x7af9 EC_ValidatePublicKey()
  5558 ms     | 0x7af9 ret:0x0
  5558 ms  0x7af9 ret:0x7f6aff004820::7f6aff004820  20 c4 4e ff                                       .N.
  5560 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5560 ms  0x7af9 cx:0x7f6b107d92c8
  5561 ms     | 0x7af9 EC_ValidatePublicKey()
  5561 ms     | 0x7af9 ret:0x0
  5561 ms  0x7af9 ret:0x7f6aff007020::7f6aff007020  10 c5 4e ff                                      ..N.
  5561 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5561 ms  0x7af9 cx:0x7f6b107d92c8
  5561 ms     | 0x7af9 EC_ValidatePublicKey()
  5563 ms     | 0x7af9 ret:0x0
  5563 ms  0x7af9 ret:0x7f6aff009020::7f6aff009020  f0 c6 4e ff                                      ..N.
           /* TID 0x7b01 */
  5586 ms  0x7b01 PR_Close()
  5586 ms  0x7b01 fd:0x7f6aff431eb0
           /* TID 0x7b5d */
  5598 ms  0x7b5d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5598 ms  0x7b5d ret:0x0
  5598 ms  0x7b5d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5599 ms  0x7b5d ret:0x0
           /* TID 0x7af9 */
  5600 ms  0x7af9 SSL_AuthCertificateComplete()
  5600 ms  0x7af9 fd:0x7f6aff431c10
  5600 ms  0x7af9 err:0x0
           /* TID 0x7b5d */
  5603 ms  0x7b5d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5603 ms  0x7b5d ret:0x0
  5603 ms  0x7b5d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5603 ms  0x7b5d ret:0x0
           /* TID 0x7af9 */
  5613 ms  0x7af9 SSL_AuthCertificateComplete()
  5613 ms  0x7af9 fd:0x7f6aff431a00
  5613 ms  0x7af9 err:0x0
  5631 ms  SECKEY_ECParamsToKeySize()
  5631 ms  0x7af9 ret:0x100
  5631 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5631 ms  0x7af9 cx:0x7f6b107d9468
  5632 ms     | 0x7af9 EC_ValidatePublicKey()
  5633 ms     | 0x7af9 ret:0x0
  5633 ms  0x7af9 ret:0x7f6aff00e020::7f6aff00e020  10 ca 4e ff                                      ..N.
  5633 ms  0x7af9 PK11_PubDeriveWithKDF()
  5633 ms  0x7af9 seckey:0x7f6aff00e020
  5633 ms     | 0x7af9 EC_ValidatePublicKey()
  5635 ms     | 0x7af9 ret:0x0
  5636 ms  0x7af9 ret:0x7f6b1a8d4b80
  5636 ms  0x7af9 PK11_DeriveWithFlags()
  5636 ms  0x7af9 basekey:0x7f6b1a8d4b80
  5636 ms     | 0x7af9 PK11_DeriveWithTemplate()
  5636 ms  0x7af9 ret:0x7f6aff4e9400
  5636 ms  0x7af9 PK11_Derive()
  5636 ms  0x7af9 basekey:0x7f6aff4e9400
  5636 ms     | 0x7af9 PK11_DeriveWithTemplate()
  5636 ms  0x7af9 ret:0x7f6aff4e9480
  5636 ms  0x7af9 SECKEY_DestroyPrivateKey()
  5636 ms  0x7af9 privk:0x7f6aff00e020::7f6aff00e020  10 ca 4e ff                                      ..N.
  5637 ms  0x7af9 privk:0x7f6aff00e020::7f6aff00e020  e5 e5 e5 e5                                      ....
  5637 ms  0x7af9 PK11_Encrypt()
  5637 ms  0x7af9 symkey:0x7f6aff4e9600
  5638 ms  0x7af9 PK11_Encrypt()
  5638 ms  0x7af9 symkey:0x7f6aff4e9600
  5638 ms  0x7af9 PK11_Encrypt()
  5638 ms  0x7af9 symkey:0x7f6aff4e9600
  5638 ms  SECKEY_ECParamsToKeySize()
  5638 ms  0x7af9 ret:0x100
  5638 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5638 ms  0x7af9 cx:0x7f6b107d92c8
  5639 ms     | 0x7af9 EC_ValidatePublicKey()
  5640 ms     | 0x7af9 ret:0x0
  5640 ms  0x7af9 ret:0x7f6aff010020::7f6aff010020  10 ca 4e ff                                      ..N.
  5640 ms  0x7af9 PK11_PubDeriveWithKDF()
  5640 ms  0x7af9 seckey:0x7f6aff010020
  5640 ms     | 0x7af9 EC_ValidatePublicKey()
  5642 ms     | 0x7af9 ret:0x0
  5643 ms  0x7af9 ret:0x7f6b1a8d4b80
  5643 ms  0x7af9 PK11_DeriveWithFlags()
  5643 ms  0x7af9 basekey:0x7f6b1a8d4b80
  5643 ms     | 0x7af9 PK11_DeriveWithTemplate()
  5643 ms  0x7af9 ret:0x7f6aff4e9780
  5643 ms  0x7af9 PK11_Derive()
  5643 ms  0x7af9 basekey:0x7f6aff4e9780
  5643 ms     | 0x7af9 PK11_DeriveWithTemplate()
  5643 ms  0x7af9 ret:0x7f6aff4e9800
  5643 ms  0x7af9 SECKEY_DestroyPrivateKey()
  5643 ms  0x7af9 privk:0x7f6aff010020::7f6aff010020  10 ca 4e ff                                      ..N.
  5644 ms  0x7af9 privk:0x7f6aff010020::7f6aff010020  e5 e5 e5 e5                                      ....
  5644 ms  0x7af9 PK11_Encrypt()
  5644 ms  0x7af9 symkey:0x7f6aff4e9980
  5644 ms  0x7af9 PK11_Encrypt()
  5644 ms  0x7af9 symkey:0x7f6aff4e9980
  5644 ms  0x7af9 PK11_Encrypt()
  5644 ms  0x7af9 symkey:0x7f6aff4e9980
  5650 ms  0x7af9 SSL_ImportFD()
  5651 ms  0x7af9 ret:0x7f6aff431100
  5651 ms  0x7af9 SSL_AuthCertificateHook()
  5651 ms  0x7af9 fd:0x7f6aff431100
  5651 ms  0x7af9 ret:0x0
  5651 ms  0x7af9 PR_Connect()
  5651 ms  0x7af9 fd:0x7f6aff431100
           /* TID 0x7b01 */
  5671 ms  0x7b01 PR_Close()
  5671 ms  0x7b01 fd:0x7f6aff431040
  5673 ms  0x7b01 PR_Close()
  5673 ms  0x7b01 fd:0x7f6aff398910
           /* TID 0x7af9 */
  5675 ms  0x7af9 SECKEY_DestroyPrivateKey()
  5675 ms  0x7af9 privk:0x7f6aff004820::7f6aff004820  20 c4 4e ff                                       .N.
  5675 ms  0x7af9 privk:0x7f6aff004820::7f6aff004820  e5 e5 e5 e5                                      ....
  5675 ms  0x7af9 SECKEY_DestroyPrivateKey()
  5675 ms  0x7af9 privk:0x7f6aff002820::7f6aff002820  00 c1 4e ff                                      ..N.
  5676 ms  0x7af9 privk:0x7f6aff002820::7f6aff002820  e5 e5 e5 e5                                      ....
  5681 ms  0x7af9 SECKEY_DestroyPrivateKey()
  5681 ms  0x7af9 privk:0x7f6aff009020::7f6aff009020  f0 c6 4e ff                                      ..N.
  5681 ms  0x7af9 privk:0x7f6aff009020::7f6aff009020  e5 e5 e5 e5                                      ....
  5681 ms  0x7af9 SECKEY_DestroyPrivateKey()
  5681 ms  0x7af9 privk:0x7f6aff007020::7f6aff007020  10 c5 4e ff                                      ..N.
  5681 ms  0x7af9 privk:0x7f6aff007020::7f6aff007020  e5 e5 e5 e5                                      ....
           /* TID 0x7b01 */
  5689 ms  0x7b01 PR_Close()
  5689 ms  0x7b01 fd:0x7f6aff3987f0
  5699 ms  0x7b01 PR_Close()
  5699 ms  0x7b01 fd:0x7f6aff3987f0
  5708 ms  0x7b01 PR_Close()
  5708 ms  0x7b01 fd:0x7f6aff3987f0
           /* TID 0x7af9 */
  5710 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5710 ms  0x7af9 cx:0x7f6b107d9948
  5711 ms     | 0x7af9 EC_ValidatePublicKey()
  5711 ms     | 0x7af9 ret:0x0
  5711 ms  0x7af9 ret:0x7f6aff006820::7f6aff006820  50 c1 4e ff                                      P.N.
  5711 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5711 ms  0x7af9 cx:0x7f6b107d9948
  5711 ms     | 0x7af9 EC_ValidatePublicKey()
  5714 ms     | 0x7af9 ret:0x0
  5714 ms  0x7af9 ret:0x7f6aff008820::7f6aff008820  70 5e 42 ff                                      p^B.
  5715 ms  0x7af9 PK11_Encrypt()
  5715 ms  0x7af9 symkey:0x7f6aff4e9600
           /* TID 0x7b01 */
  5716 ms  0x7b01 PR_Close()
  5716 ms  0x7b01 fd:0x7f6aff3987f0
           /* TID 0x7af9 */
  5719 ms  0x7af9 PK11_Encrypt()
  5719 ms  0x7af9 symkey:0x7f6aff4e9980
           /* TID 0x7b01 */
  5720 ms  0x7b01 PR_Close()
  5720 ms  0x7b01 fd:0x7f6aff3987f0
           /* TID 0x7af9 */
  5720 ms  0x7af9 SSL_ImportFD()
  5720 ms  0x7af9 ret:0x7f6aff457a90
  5720 ms  0x7af9 SSL_AuthCertificateHook()
  5720 ms  0x7af9 fd:0x7f6aff457a90
  5721 ms  0x7af9 ret:0x0
  5721 ms  0x7af9 PR_Connect()
  5721 ms  0x7af9 fd:0x7f6aff457a90
  5721 ms  0x7af9 SSL_ImportFD()
  5721 ms  0x7af9 ret:0x7f6aff398b20
  5721 ms  0x7af9 SSL_AuthCertificateHook()
  5721 ms  0x7af9 fd:0x7f6aff398b20
  5721 ms  0x7af9 ret:0x0
  5721 ms  0x7af9 PR_Connect()
  5721 ms  0x7af9 fd:0x7f6aff398b20
  5721 ms  0x7af9 SSL_ImportFD()
  5721 ms  0x7af9 ret:0x7f6aff457c40
  5721 ms  0x7af9 SSL_AuthCertificateHook()
  5721 ms  0x7af9 fd:0x7f6aff457c40
  5721 ms  0x7af9 ret:0x0
  5721 ms  0x7af9 PR_Connect()
  5721 ms  0x7af9 fd:0x7f6aff457c40
  5721 ms  0x7af9 SSL_ImportFD()
  5721 ms  0x7af9 ret:0x7f6aff457cd0
  5721 ms  0x7af9 SSL_AuthCertificateHook()
  5721 ms  0x7af9 fd:0x7f6aff457cd0
  5721 ms  0x7af9 ret:0x0
  5721 ms  0x7af9 PR_Connect()
  5721 ms  0x7af9 fd:0x7f6aff457cd0
  5721 ms  0x7af9 SSL_ImportFD()
  5721 ms  0x7af9 ret:0x7f6aff0a80a0
  5721 ms  0x7af9 SSL_AuthCertificateHook()
  5721 ms  0x7af9 fd:0x7f6aff0a80a0
  5721 ms  0x7af9 ret:0x0
  5721 ms  0x7af9 PR_Connect()
  5721 ms  0x7af9 fd:0x7f6aff0a80a0
  5721 ms  0x7af9 SSL_ImportFD()
  5721 ms  0x7af9 ret:0x7f6aff0a81f0
  5721 ms  0x7af9 SSL_AuthCertificateHook()
  5721 ms  0x7af9 fd:0x7f6aff0a81f0
  5721 ms  0x7af9 ret:0x0
  5721 ms  0x7af9 PR_Connect()
  5721 ms  0x7af9 fd:0x7f6aff0a81f0
           /* TID 0x7b01 */
  5724 ms  0x7b01 PR_Close()
  5724 ms  0x7b01 fd:0x7f6aff0a8340
           /* TID 0x7af9 */
  5757 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5757 ms  0x7af9 cx:0x7f6b107d9fc8
  5758 ms     | 0x7af9 EC_ValidatePublicKey()
  5758 ms     | 0x7af9 ret:0x0
  5758 ms  0x7af9 ret:0x7f6aff013020::7f6aff013020  f0 c6 4e ff                                      ..N.
  5758 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5758 ms  0x7af9 cx:0x7f6b107d9fc8
  5758 ms     | 0x7af9 EC_ValidatePublicKey()
  5760 ms     | 0x7af9 ret:0x0
  5760 ms  0x7af9 ret:0x7f6aff015020::7f6aff015020  50 cb 4e ff                                      P.N.
  5763 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5763 ms  0x7af9 cx:0x7f6b107d9e28
  5763 ms     | 0x7af9 EC_ValidatePublicKey()
  5763 ms     | 0x7af9 ret:0x0
  5763 ms  0x7af9 ret:0x7f6aff017820::7f6aff017820  10 c5 4e ff                                      ..N.
  5763 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5763 ms  0x7af9 cx:0x7f6b107d9e28
  5764 ms     | 0x7af9 EC_ValidatePublicKey()
  5765 ms     | 0x7af9 ret:0x0
  5765 ms  0x7af9 ret:0x7f6aff019820::7f6aff019820  d0 cd 4e ff                                      ..N.
  5767 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5767 ms  0x7af9 cx:0x7f6b107d9ae8
  5768 ms     | 0x7af9 EC_ValidatePublicKey()
  5768 ms     | 0x7af9 ret:0x0
  5768 ms  0x7af9 ret:0x7f6aff01c820::7f6aff01c820  b0 cf 4e ff                                      ..N.
  5768 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5768 ms  0x7af9 cx:0x7f6b107d9ae8
  5768 ms     | 0x7af9 EC_ValidatePublicKey()
  5770 ms     | 0x7af9 ret:0x0
  5770 ms  0x7af9 ret:0x7f6aff01e820::7f6aff01e820  60 30 0c ff                                      `0..
  5775 ms  0x7af9 PK11_Encrypt()
  5775 ms  0x7af9 symkey:0x7f6aff5e6300
  5776 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5776 ms  0x7af9 cx:0x7f6b107da168
  5777 ms     | 0x7af9 EC_ValidatePublicKey()
  5777 ms     | 0x7af9 ret:0x0
  5777 ms  0x7af9 ret:0x7f6b150a7820::7f6b150a7820  c0 34 0c ff                                      .4..
  5777 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5777 ms  0x7af9 cx:0x7f6b107da168
  5777 ms     | 0x7af9 EC_ValidatePublicKey()
  5779 ms     | 0x7af9 ret:0x0
  5779 ms  0x7af9 ret:0x7f6afef03820::7f6afef03820  a0 36 0c ff                                      .6..
  5781 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5781 ms  0x7af9 cx:0x7f6b107da4a8
  5782 ms     | 0x7af9 EC_ValidatePublicKey()
  5782 ms     | 0x7af9 ret:0x0
  5782 ms  0x7af9 ret:0x7f6afef06020::7f6afef06020  30 38 0c ff                                      08..
  5782 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5782 ms  0x7af9 cx:0x7f6b107da4a8
  5782 ms     | 0x7af9 EC_ValidatePublicKey()
  5784 ms     | 0x7af9 ret:0x0
  5784 ms  0x7af9 ret:0x7f6afef08020::7f6afef08020  10 3a 0c ff                                      .:..
  5784 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5784 ms  0x7af9 cx:0x7f6b107da308
  5785 ms     | 0x7af9 EC_ValidatePublicKey()
  5785 ms     | 0x7af9 ret:0x0
  5785 ms  0x7af9 ret:0x7f6afef0a820::7f6afef0a820  a0 3b 0c ff                                      .;..
  5785 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5785 ms  0x7af9 cx:0x7f6b107da308
  5785 ms     | 0x7af9 EC_ValidatePublicKey()
  5787 ms     | 0x7af9 ret:0x0
  5787 ms  0x7af9 ret:0x7f6afef0c820::7f6afef0c820  80 3d 0c ff                                      .=..
  5796 ms  0x7af9 PK11_Encrypt()
  5796 ms  0x7af9 symkey:0x7f6aff4e9980
  5798 ms  SECKEY_ECParamsToKeySize()
  5798 ms  0x7af9 ret:0x100
  5798 ms  SECKEY_ECParamsToBasePointOrderLen()
  5798 ms  0x7af9 ret:0x100
  5798 ms  SECKEY_ECParamsToBasePointOrderLen()
  5798 ms  0x7af9 ret:0x100
  5798 ms  0x7af9 EC_ValidatePublicKey()
  5799 ms  0x7af9 ret:0x0
  5801 ms  SECKEY_ECParamsToKeySize()
  5801 ms  0x7af9 ret:0x100
  5801 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5801 ms  0x7af9 cx:0x7f6b107d9fc8
  5802 ms     | 0x7af9 EC_ValidatePublicKey()
  5807 ms     | 0x7af9 ret:0x0
           /* TID 0x7b5d */
  5807 ms  SECKEY_ECParamsToBasePointOrderLen()
  5807 ms  0x7b5d ret:0x180
  5807 ms  SECKEY_ECParamsToBasePointOrderLen()
  5807 ms  0x7b5d ret:0x180
  5807 ms  0x7b5d EC_ValidatePublicKey()
  5809 ms  0x7b5d ret:0x0
  5812 ms  0x7b5d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5812 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5812 ms     | 0x7b5d ret:0x180
  5812 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5812 ms     | 0x7b5d ret:0x180
  5812 ms     | 0x7b5d EC_ValidatePublicKey()
  5819 ms     | 0x7b5d ret:0x0
           /* TID 0x7af9 */
  5819 ms  0x7af9 ret:0x7f6afef1a020::7f6afef1a020  00 d6 0f ff                                      ....
  5819 ms  0x7af9 PK11_PubDeriveWithKDF()
  5819 ms  0x7af9 seckey:0x7f6afef1a020
  5819 ms     | 0x7af9 EC_ValidatePublicKey()
  5821 ms     | 0x7af9 ret:0x0
  5822 ms  0x7af9 ret:0x7f6b1a8d4b80
  5822 ms  0x7af9 PK11_DeriveWithFlags()
  5822 ms  0x7af9 basekey:0x7f6b1a8d4b80
  5822 ms     | 0x7af9 PK11_DeriveWithTemplate()
  5822 ms  0x7af9 ret:0x7f6aff0fbe00
  5822 ms  0x7af9 PK11_Derive()
  5822 ms  0x7af9 basekey:0x7f6aff0fbe00
  5822 ms     | 0x7af9 PK11_DeriveWithTemplate()
  5822 ms  0x7af9 ret:0x7f6aff0fbe80
  5822 ms  0x7af9 SECKEY_DestroyPrivateKey()
  5822 ms  0x7af9 privk:0x7f6afef1a020::7f6afef1a020  00 d6 0f ff                                      ....
  5822 ms  0x7af9 privk:0x7f6afef1a020::7f6afef1a020  e5 e5 e5 e5                                      ....
  5822 ms  0x7af9 PK11_Encrypt()
  5822 ms  0x7af9 symkey:0x7f6aff0fc000
  5823 ms  0x7af9 PK11_Encrypt()
  5823 ms  0x7af9 symkey:0x7f6aff5e6300
  5825 ms  0x7af9 PK11_Encrypt()
  5825 ms  0x7af9 symkey:0x7f6aff4e9980
           /* TID 0x7b5d */
  5829 ms  0x7b5d ret:0x0
           /* TID 0x7af9 */
  5831 ms  SECKEY_ECParamsToKeySize()
  5831 ms  0x7af9 ret:0x100
  5831 ms  SECKEY_ECParamsToBasePointOrderLen()
  5831 ms  0x7af9 ret:0x100
  5831 ms  SECKEY_ECParamsToBasePointOrderLen()
  5831 ms  0x7af9 ret:0x100
  5831 ms  0x7af9 EC_ValidatePublicKey()
  5833 ms  0x7af9 ret:0x0
  5835 ms  SECKEY_ECParamsToKeySize()
  5835 ms  0x7af9 ret:0x100
  5835 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5835 ms  0x7af9 cx:0x7f6b107da4a8
           /* TID 0x7b9d */
  5835 ms  SECKEY_ECParamsToBasePointOrderLen()
  5835 ms  0x7b9d ret:0x180
  5835 ms  SECKEY_ECParamsToBasePointOrderLen()
  5835 ms  0x7b9d ret:0x180
           /* TID 0x7af9 */
  5842 ms     | 0x7af9 EC_ValidatePublicKey()
  5846 ms     | 0x7af9 ret:0x0
           /* TID 0x7b9d */
  5846 ms  0x7b9d EC_ValidatePublicKey()
  5848 ms  0x7b9d ret:0x0
  5851 ms  0x7b9d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5851 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5851 ms     | 0x7b9d ret:0x180
  5851 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5851 ms     | 0x7b9d ret:0x180
  5851 ms     | 0x7b9d EC_ValidatePublicKey()
  5863 ms     | 0x7b9d ret:0x0
           /* TID 0x7af9 */
  5863 ms  0x7af9 ret:0x7f6afef1e020::7f6afef1e020  c0 de 0f ff                                      ....
  5863 ms  0x7af9 PK11_PubDeriveWithKDF()
  5863 ms  0x7af9 seckey:0x7f6afef1e020
  5863 ms     | 0x7af9 EC_ValidatePublicKey()
  5864 ms     | 0x7af9 ret:0x0
  5866 ms  0x7af9 ret:0x7f6b1a8d4b80
  5866 ms  0x7af9 PK11_DeriveWithFlags()
  5866 ms  0x7af9 basekey:0x7f6b1a8d4b80
  5866 ms     | 0x7af9 PK11_DeriveWithTemplate()
  5866 ms  0x7af9 ret:0x7f6aff0fc880
  5866 ms  0x7af9 PK11_Derive()
  5866 ms  0x7af9 basekey:0x7f6aff0fc880
  5866 ms     | 0x7af9 PK11_DeriveWithTemplate()
  5866 ms  0x7af9 ret:0x7f6aff0fc900
  5866 ms  0x7af9 SECKEY_DestroyPrivateKey()
  5866 ms  0x7af9 privk:0x7f6afef1e020::7f6afef1e020  c0 de 0f ff                                      ....
  5866 ms  0x7af9 privk:0x7f6afef1e020::7f6afef1e020  e5 e5 e5 e5                                      ....
  5866 ms  0x7af9 PK11_Encrypt()
  5866 ms  0x7af9 symkey:0x7f6aff0fca80
           /* TID 0x7b5d */
  5869 ms  SECKEY_ECParamsToBasePointOrderLen()
  5869 ms  0x7b5d ret:0x180
  5869 ms  SECKEY_ECParamsToBasePointOrderLen()
  5869 ms  0x7b5d ret:0x180
  5869 ms  0x7b5d EC_ValidatePublicKey()
  5871 ms  0x7b5d ret:0x0
  5874 ms  0x7b5d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5874 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5874 ms     | 0x7b5d ret:0x180
  5874 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5874 ms     | 0x7b5d ret:0x180
  5874 ms     | 0x7b5d EC_ValidatePublicKey()
           /* TID 0x7af9 */
  5875 ms  SECKEY_ECParamsToKeySize()
  5875 ms  0x7af9 ret:0x100
  5875 ms  SECKEY_ECParamsToBasePointOrderLen()
  5875 ms  0x7af9 ret:0x100
  5875 ms  SECKEY_ECParamsToBasePointOrderLen()
  5875 ms  0x7af9 ret:0x100
           /* TID 0x7b5d */
  5882 ms     | 0x7b5d ret:0x0
           /* TID 0x7af9 */
  5882 ms  0x7af9 EC_ValidatePublicKey()
  5886 ms  0x7af9 ret:0x0
  5888 ms  SECKEY_ECParamsToKeySize()
  5888 ms  0x7af9 ret:0x100
  5888 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5888 ms  0x7af9 cx:0x7f6b107da308
  5889 ms     | 0x7af9 EC_ValidatePublicKey()
  5890 ms     | 0x7af9 ret:0x0
  5890 ms  0x7af9 ret:0x7f6aff016020::7f6aff016020  60 9a 39 ff                                      `.9.
  5890 ms  0x7af9 PK11_PubDeriveWithKDF()
  5890 ms  0x7af9 seckey:0x7f6aff016020
  5890 ms     | 0x7af9 EC_ValidatePublicKey()
  5892 ms     | 0x7af9 ret:0x0
           /* TID 0x7b9d */
  5893 ms  0x7b9d ret:0x0
           /* TID 0x7b5d */
  5898 ms  0x7b5d ret:0x0
           /* TID 0x7af9 */
  5902 ms  0x7af9 ret:0x7f6b1a8d4b80
  5902 ms  0x7af9 PK11_DeriveWithFlags()
  5902 ms  0x7af9 basekey:0x7f6b1a8d4b80
  5902 ms     | 0x7af9 PK11_DeriveWithTemplate()
  5906 ms  0x7af9 ret:0x7f6aff0fcd00
  5906 ms  0x7af9 PK11_Derive()
  5906 ms  0x7af9 basekey:0x7f6aff0fcd00
  5906 ms     | 0x7af9 PK11_DeriveWithTemplate()
  5906 ms  0x7af9 ret:0x7f6b1589d900
  5906 ms  0x7af9 SECKEY_DestroyPrivateKey()
  5906 ms  0x7af9 privk:0x7f6aff016020::7f6aff016020  60 9a 39 ff                                      `.9.
  5906 ms  0x7af9 privk:0x7f6aff016020::7f6aff016020  e5 e5 e5 e5                                      ....
  5906 ms  0x7af9 PK11_Encrypt()
  5906 ms  0x7af9 symkey:0x7f6b1589da80
           /* TID 0x7b9d */
  5910 ms  SECKEY_ECParamsToBasePointOrderLen()
  5910 ms  0x7b9d ret:0x180
  5910 ms  SECKEY_ECParamsToBasePointOrderLen()
  5910 ms  0x7b9d ret:0x180
  5910 ms  0x7b9d EC_ValidatePublicKey()
  5911 ms  0x7b9d ret:0x0
           /* TID 0x7af9 */
  5913 ms  SECKEY_ECParamsToKeySize()
  5913 ms  0x7af9 ret:0x100
  5913 ms  SECKEY_ECParamsToBasePointOrderLen()
  5913 ms  0x7af9 ret:0x100
  5913 ms  SECKEY_ECParamsToBasePointOrderLen()
  5913 ms  0x7af9 ret:0x100
  5913 ms  0x7af9 EC_ValidatePublicKey()
  5914 ms  0x7af9 ret:0x0
  5916 ms  SECKEY_ECParamsToKeySize()
  5916 ms  0x7af9 ret:0x100
  5916 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5916 ms  0x7af9 cx:0x7f6b107da168
  5917 ms     | 0x7af9 EC_ValidatePublicKey()
  5918 ms     | 0x7af9 ret:0x0
  5918 ms  0x7af9 ret:0x7f6afef21820::7f6afef21820  90 02 8a 15                                      ....
  5918 ms  0x7af9 PK11_PubDeriveWithKDF()
  5918 ms  0x7af9 seckey:0x7f6afef21820
  5918 ms     | 0x7af9 EC_ValidatePublicKey()
  5920 ms     | 0x7af9 ret:0x0
  5921 ms  0x7af9 ret:0x7f6b1a8d4b80
  5921 ms  0x7af9 PK11_DeriveWithFlags()
  5921 ms  0x7af9 basekey:0x7f6b1a8d4b80
  5921 ms     | 0x7af9 PK11_DeriveWithTemplate()
  5921 ms  0x7af9 ret:0x7f6b1589db80
  5921 ms  0x7af9 PK11_Derive()
  5921 ms  0x7af9 basekey:0x7f6b1589db80
  5921 ms     | 0x7af9 PK11_DeriveWithTemplate()
  5921 ms  0x7af9 ret:0x7f6b1589dc00
  5921 ms  0x7af9 SECKEY_DestroyPrivateKey()
  5921 ms  0x7af9 privk:0x7f6afef21820::7f6afef21820  90 02 8a 15                                      ....
  5921 ms  0x7af9 privk:0x7f6afef21820::7f6afef21820  e5 e5 e5 e5                                      ....
  5922 ms  0x7af9 PK11_Encrypt()
  5922 ms  0x7af9 symkey:0x7f6b1589dd80
           /* TID 0x7b9d */
  5926 ms  0x7b9d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5926 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5926 ms     | 0x7b9d ret:0x180
  5926 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5926 ms     | 0x7b9d ret:0x180
  5926 ms     | 0x7b9d EC_ValidatePublicKey()
  5927 ms     | 0x7b9d ret:0x0
  5930 ms  0x7b9d ret:0x0
           /* TID 0x7b5d */
  5932 ms  SECKEY_ECParamsToBasePointOrderLen()
  5932 ms  0x7b5d ret:0x180
  5932 ms  SECKEY_ECParamsToBasePointOrderLen()
  5932 ms  0x7b5d ret:0x180
  5932 ms  0x7b5d EC_ValidatePublicKey()
  5934 ms  0x7b5d ret:0x0
  5936 ms  0x7b5d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5936 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5936 ms     | 0x7b5d ret:0x180
  5937 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5937 ms     | 0x7b5d ret:0x180
  5937 ms     | 0x7b5d EC_ValidatePublicKey()
  5938 ms     | 0x7b5d ret:0x0
  5941 ms  0x7b5d ret:0x0
           /* TID 0x7af9 */
  5941 ms  SECKEY_ECParamsToKeySize()
  5941 ms  0x7af9 ret:0x100
  5941 ms  SECKEY_ECParamsToBasePointOrderLen()
  5941 ms  0x7af9 ret:0x100
  5941 ms  SECKEY_ECParamsToBasePointOrderLen()
  5941 ms  0x7af9 ret:0x100
  5941 ms  0x7af9 EC_ValidatePublicKey()
  5942 ms  0x7af9 ret:0x0
  5948 ms  SECKEY_ECParamsToKeySize()
  5948 ms  0x7af9 ret:0x100
  5948 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5948 ms  0x7af9 cx:0x7f6b107d9e28
  5949 ms     | 0x7af9 EC_ValidatePublicKey()
  5950 ms     | 0x7af9 ret:0x0
  5950 ms  0x7af9 ret:0x7f6afef1f020::7f6afef1f020  90 c2 5b ff                                      ..[.
  5950 ms  0x7af9 PK11_PubDeriveWithKDF()
  5950 ms  0x7af9 seckey:0x7f6afef1f020
  5950 ms     | 0x7af9 EC_ValidatePublicKey()
  5952 ms     | 0x7af9 ret:0x0
  5953 ms  0x7af9 ret:0x7f6b1a8d4b80
  5953 ms  0x7af9 PK11_DeriveWithFlags()
  5953 ms  0x7af9 basekey:0x7f6b1a8d4b80
  5953 ms     | 0x7af9 PK11_DeriveWithTemplate()
  5953 ms  0x7af9 ret:0x7f6b1589de80
  5953 ms  0x7af9 PK11_Derive()
  5953 ms  0x7af9 basekey:0x7f6b1589de80
  5953 ms     | 0x7af9 PK11_DeriveWithTemplate()
  5953 ms  0x7af9 ret:0x7f6b1589df00
  5953 ms  0x7af9 SECKEY_DestroyPrivateKey()
  5953 ms  0x7af9 privk:0x7f6afef1f020::7f6afef1f020  90 c2 5b ff                                      ..[.
  5953 ms  0x7af9 privk:0x7f6afef1f020::7f6afef1f020  e5 e5 e5 e5                                      ....
  5953 ms  0x7af9 PK11_Encrypt()
  5953 ms  0x7af9 symkey:0x7f6b1589e080
           /* TID 0x7b9d */
  5954 ms  SECKEY_ECParamsToBasePointOrderLen()
  5954 ms  0x7b9d ret:0x180
  5954 ms  SECKEY_ECParamsToBasePointOrderLen()
  5954 ms  0x7b9d ret:0x180
  5954 ms  0x7b9d EC_ValidatePublicKey()
  5956 ms  0x7b9d ret:0x0
           /* TID 0x7af9 */
  5958 ms  SECKEY_ECParamsToKeySize()
  5958 ms  0x7af9 ret:0x100
  5958 ms  SECKEY_ECParamsToBasePointOrderLen()
  5958 ms  0x7af9 ret:0x100
  5958 ms  SECKEY_ECParamsToBasePointOrderLen()
  5958 ms  0x7af9 ret:0x100
  5958 ms  0x7af9 EC_ValidatePublicKey()
  5960 ms  0x7af9 ret:0x0
  5962 ms  SECKEY_ECParamsToKeySize()
  5962 ms  0x7af9 ret:0x100
  5962 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5962 ms  0x7af9 cx:0x7f6b107d9ae8
  5962 ms     | 0x7af9 EC_ValidatePublicKey()
  5964 ms     | 0x7af9 ret:0x0
           /* TID 0x7b9d */
  5964 ms  0x7b9d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5964 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5964 ms     | 0x7b9d ret:0x180
  5964 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5964 ms     | 0x7b9d ret:0x180
  5964 ms     | 0x7b9d EC_ValidatePublicKey()
  5966 ms     | 0x7b9d ret:0x0
  5969 ms  0x7b9d ret:0x0
           /* TID 0x7af9 */
  5969 ms  0x7af9 ret:0x7f6afef1f020::7f6afef1f020  60 c0 5b ff                                      `.[.
  5969 ms  0x7af9 PK11_PubDeriveWithKDF()
  5969 ms  0x7af9 seckey:0x7f6afef1f020
  5969 ms     | 0x7af9 EC_ValidatePublicKey()
  5970 ms     | 0x7af9 ret:0x0
  5972 ms  0x7af9 ret:0x7f6b1a8d4b80
  5972 ms  0x7af9 PK11_DeriveWithFlags()
  5972 ms  0x7af9 basekey:0x7f6b1a8d4b80
  5972 ms     | 0x7af9 PK11_DeriveWithTemplate()
  5972 ms  0x7af9 ret:0x7f6b1589e200
  5972 ms  0x7af9 PK11_Derive()
  5972 ms  0x7af9 basekey:0x7f6b1589e200
  5972 ms     | 0x7af9 PK11_DeriveWithTemplate()
  5972 ms  0x7af9 ret:0x7f6b1589e280
  5972 ms  0x7af9 SECKEY_DestroyPrivateKey()
  5972 ms  0x7af9 privk:0x7f6afef1f020::7f6afef1f020  60 c0 5b ff                                      `.[.
  5972 ms  0x7af9 privk:0x7f6afef1f020::7f6afef1f020  e5 e5 e5 e5                                      ....
  5972 ms  0x7af9 PK11_Encrypt()
  5972 ms  0x7af9 symkey:0x7f6b1589e400
  5972 ms  0x7af9 SSL_AuthCertificateComplete()
  5972 ms  0x7af9 fd:0x7f6aff457c40
  5972 ms  0x7af9 err:0x0
  5972 ms  0x7af9 PK11_Encrypt()
  5972 ms  0x7af9 symkey:0x7f6aff5e6300
  5973 ms  0x7af9 SSL_AuthCertificateComplete()
  5973 ms  0x7af9 fd:0x7f6aff0a81f0
  5973 ms  0x7af9 err:0x0
  5973 ms  0x7af9 SSL_AuthCertificateComplete()
  5973 ms  0x7af9 fd:0x7f6aff0a80a0
  5973 ms  0x7af9 err:0x0
  5973 ms  0x7af9 SSL_AuthCertificateComplete()
  5973 ms  0x7af9 fd:0x7f6aff457cd0
  5973 ms  0x7af9 err:0x0
  5973 ms  0x7af9 SSL_AuthCertificateComplete()
  5973 ms  0x7af9 fd:0x7f6aff398b20
  5973 ms  0x7af9 err:0x0
  5973 ms  0x7af9 SSL_AuthCertificateComplete()
  5973 ms  0x7af9 fd:0x7f6aff457a90
  5973 ms  0x7af9 err:0x0
           /* TID 0x7b01 */
  5976 ms  0x7b01 PR_Close()
  5976 ms  0x7b01 fd:0x7f6aff0a89d0
           /* TID 0x7af9 */
  5980 ms  0x7af9 PK11_Encrypt()
  5980 ms  0x7af9 symkey:0x7f6aff5e6300
           /* TID 0x7b01 */
  5983 ms  0x7b01 PR_Close()
  5983 ms  0x7b01 fd:0x7f6aff0a89d0
           /* TID 0x7b5d */
  5988 ms  0x7b5d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5988 ms  0x7b5d ret:0x0
  5988 ms  0x7b5d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5988 ms  0x7b5d ret:0x0
           /* TID 0x7af9 */
  5989 ms  SECKEY_ECParamsToKeySize()
  5989 ms  0x7af9 ret:0x100
  5989 ms  0x7af9 SECKEY_CreateECPrivateKey()
  5989 ms  0x7af9 cx:0x7f6b107d9948
  5990 ms     | 0x7af9 EC_ValidatePublicKey()
  5993 ms     | 0x7af9 ret:0x0
  5993 ms  0x7af9 ret:0x7f6afe44a820::7f6afe44a820  40 02 8a 15                                      @...
  5993 ms  0x7af9 PK11_PubDeriveWithKDF()
  5993 ms  0x7af9 seckey:0x7f6afe44a820
  5993 ms     | 0x7af9 EC_ValidatePublicKey()
  5998 ms     | 0x7af9 ret:0x0
  5999 ms  0x7af9 ret:0x7f6b1a8d4b80
  5999 ms  0x7af9 PK11_DeriveWithFlags()
  5999 ms  0x7af9 basekey:0x7f6b1a8d4b80
  5999 ms     | 0x7af9 PK11_DeriveWithTemplate()
  5999 ms  0x7af9 ret:0x7f6aff0fb100
  5999 ms  0x7af9 PK11_Derive()
  5999 ms  0x7af9 basekey:0x7f6aff0fb100
  5999 ms     | 0x7af9 PK11_DeriveWithTemplate()
  5999 ms  0x7af9 ret:0x7f6aff0fb380
  5999 ms  0x7af9 SECKEY_DestroyPrivateKey()
  5999 ms  0x7af9 privk:0x7f6afe44a820::7f6afe44a820  40 02 8a 15                                      @...
  5999 ms  0x7af9 privk:0x7f6afe44a820::7f6afe44a820  e5 e5 e5 e5                                      ....
  6000 ms  0x7af9 PK11_Encrypt()
  6000 ms  0x7af9 symkey:0x7f6b1589e600
  6009 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6009 ms  0x7af9 privk:0x7f6afef08020::7f6afef08020  10 3a 0c ff                                      .:..
  6009 ms  0x7af9 privk:0x7f6afef08020::7f6afef08020  e5 e5 e5 e5                                      ....
  6009 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6009 ms  0x7af9 privk:0x7f6afef06020::7f6afef06020  30 38 0c ff                                      08..
  6009 ms  0x7af9 privk:0x7f6afef06020::7f6afef06020  e5 e5 e5 e5                                      ....
  6009 ms  0x7af9 PK11_Encrypt()
  6009 ms  0x7af9 symkey:0x7f6aff0fca80
  6009 ms  0x7af9 PK11_Encrypt()
  6009 ms  0x7af9 symkey:0x7f6aff0fca80
  6010 ms  0x7af9 PK11_Encrypt()
  6010 ms  0x7af9 symkey:0x7f6b1589da80
  6010 ms  0x7af9 PK11_Encrypt()
  6010 ms  0x7af9 symkey:0x7f6b1589dd80
  6010 ms  0x7af9 PK11_Encrypt()
  6010 ms  0x7af9 symkey:0x7f6aff0fc000
  6010 ms  0x7af9 PK11_Encrypt()
  6010 ms  0x7af9 symkey:0x7f6b1589e080
  6011 ms  0x7af9 PK11_Encrypt()
  6011 ms  0x7af9 symkey:0x7f6b1589e400
  6011 ms  0x7af9 SSL_AuthCertificateComplete()
  6011 ms  0x7af9 fd:0x7f6aff431100
  6011 ms  0x7af9 err:0x0
  6011 ms  0x7af9 PK11_Encrypt()
  6011 ms  0x7af9 symkey:0x7f6aff0fca80
  6011 ms  0x7af9 PK11_Encrypt()
  6011 ms  0x7af9 symkey:0x7f6aff0fca80
  6011 ms  0x7af9 PK11_Encrypt()
  6011 ms  0x7af9 symkey:0x7f6aff0fca80
  6012 ms  0x7af9 PK11_Encrypt()
  6012 ms  0x7af9 symkey:0x7f6aff0fca80
  6012 ms  0x7af9 PK11_Encrypt()
  6012 ms  0x7af9 symkey:0x7f6aff0fca80
  6012 ms  0x7af9 PK11_Encrypt()
  6012 ms  0x7af9 symkey:0x7f6aff0fca80
           /* TID 0x7b01 */
  6014 ms  0x7b01 PR_Close()
  6014 ms  0x7b01 fd:0x7f6aff0a82b0
           /* TID 0x7af9 */
  6015 ms  0x7af9 PK11_Encrypt()
  6015 ms  0x7af9 symkey:0x7f6b1589e600
  6015 ms  0x7af9 PK11_Encrypt()
  6015 ms  0x7af9 symkey:0x7f6aff0fca80
  6016 ms  0x7af9 PK11_Encrypt()
  6016 ms  0x7af9 symkey:0x7f6aff0fca80
  6016 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6016 ms  0x7af9 privk:0x7f6afef0c820::7f6afef0c820  80 3d 0c ff                                      .=..
  6016 ms  0x7af9 privk:0x7f6afef0c820::7f6afef0c820  e5 e5 e5 e5                                      ....
  6016 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6016 ms  0x7af9 privk:0x7f6afef0a820::7f6afef0a820  a0 3b 0c ff                                      .;..
  6016 ms  0x7af9 privk:0x7f6afef0a820::7f6afef0a820  e5 e5 e5 e5                                      ....
  6017 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6017 ms  0x7af9 privk:0x7f6afef03820::7f6afef03820  a0 36 0c ff                                      .6..
  6017 ms  0x7af9 privk:0x7f6afef03820::7f6afef03820  e5 e5 e5 e5                                      ....
  6017 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6017 ms  0x7af9 privk:0x7f6b150a7820::7f6b150a7820  c0 34 0c ff                                      .4..
  6017 ms  0x7af9 privk:0x7f6b150a7820::7f6b150a7820  e5 e5 e5 e5                                      ....
  6018 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6018 ms  0x7af9 privk:0x7f6aff015020::7f6aff015020  50 cb 4e ff                                      P.N.
  6018 ms  0x7af9 privk:0x7f6aff015020::7f6aff015020  e5 e5 e5 e5                                      ....
  6018 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6018 ms  0x7af9 privk:0x7f6aff013020::7f6aff013020  f0 c6 4e ff                                      ..N.
  6018 ms  0x7af9 privk:0x7f6aff013020::7f6aff013020  e5 e5 e5 e5                                      ....
  6018 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6018 ms  0x7af9 privk:0x7f6aff019820::7f6aff019820  d0 cd 4e ff                                      ..N.
  6018 ms  0x7af9 privk:0x7f6aff019820::7f6aff019820  e5 e5 e5 e5                                      ....
  6018 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6018 ms  0x7af9 privk:0x7f6aff017820::7f6aff017820  10 c5 4e ff                                      ..N.
  6018 ms  0x7af9 privk:0x7f6aff017820::7f6aff017820  e5 e5 e5 e5                                      ....
  6019 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6019 ms  0x7af9 privk:0x7f6aff01e820::7f6aff01e820  60 30 0c ff                                      `0..
  6019 ms  0x7af9 privk:0x7f6aff01e820::7f6aff01e820  e5 e5 e5 e5                                      ....
  6019 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6019 ms  0x7af9 privk:0x7f6aff01c820::7f6aff01c820  b0 cf 4e ff                                      ..N.
  6019 ms  0x7af9 privk:0x7f6aff01c820::7f6aff01c820  e5 e5 e5 e5                                      ....
  6019 ms  0x7af9 PR_Close()
  6019 ms  0x7af9 fd:0x7f6aff457a90
  6027 ms     | 0x7af9 PK11_Encrypt()
  6027 ms     | 0x7af9 symkey:0x7f6b1589e400
  6027 ms  0x7af9 PR_Close()
  6027 ms  0x7af9 fd:0x7f6aff398b20
  6027 ms     | 0x7af9 PK11_Encrypt()
  6027 ms     | 0x7af9 symkey:0x7f6b1589e080
  6029 ms  0x7af9 PR_Close()
  6029 ms  0x7af9 fd:0x7f6aff457c40
  6029 ms     | 0x7af9 PK11_Encrypt()
  6029 ms     | 0x7af9 symkey:0x7f6aff0fc000
  6029 ms  0x7af9 PR_Close()
  6029 ms  0x7af9 fd:0x7f6aff457cd0
  6029 ms     | 0x7af9 PK11_Encrypt()
  6029 ms     | 0x7af9 symkey:0x7f6b1589dd80
  6029 ms  0x7af9 PR_Close()
  6029 ms  0x7af9 fd:0x7f6aff0a80a0
  6029 ms     | 0x7af9 PK11_Encrypt()
  6029 ms     | 0x7af9 symkey:0x7f6b1589da80
  6029 ms  0x7af9 PK11_Encrypt()
  6029 ms  0x7af9 symkey:0x7f6aff0fca80
  6030 ms  0x7af9 PK11_Encrypt()
  6030 ms  0x7af9 symkey:0x7f6aff0fca80
  6047 ms  0x7af9 PK11_Encrypt()
  6047 ms  0x7af9 symkey:0x7f6aff0fca80
  6059 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6059 ms  0x7af9 privk:0x7f6aff008820::7f6aff008820  70 5e 42 ff                                      p^B.
  6059 ms  0x7af9 privk:0x7f6aff008820::7f6aff008820  e5 e5 e5 e5                                      ....
  6059 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6059 ms  0x7af9 privk:0x7f6aff006820::7f6aff006820  50 c1 4e ff                                      P.N.
  6059 ms  0x7af9 privk:0x7f6aff006820::7f6aff006820  e5 e5 e5 e5                                      ....
           /* TID 0x7b01 */
  6071 ms  0x7b01 PR_Close()
  6071 ms  0x7b01 fd:0x7f6aff0a80a0
  6077 ms  0x7b01 PR_Close()
  6077 ms  0x7b01 fd:0x7f6aff0a8070
  6092 ms  0x7b01 PR_Close()
  6092 ms  0x7b01 fd:0x7f6aff0a80a0
  6106 ms  0x7b01 PR_Close()
  6106 ms  0x7b01 fd:0x7f6aff0a80a0
  6110 ms  0x7b01 PR_Close()
  6110 ms  0x7b01 fd:0x7f6aff0a87f0
  6113 ms  0x7b01 PR_Close()
  6113 ms  0x7b01 fd:0x7f6aff0a87f0
  6116 ms  0x7b01 PR_Close()
  6116 ms  0x7b01 fd:0x7f6aff0a87f0
  6118 ms  0x7b01 PR_Close()
  6118 ms  0x7b01 fd:0x7f6aff0a87f0
  6120 ms  0x7b01 PR_Close()
  6120 ms  0x7b01 fd:0x7f6aff0a87f0
  6120 ms  0x7b01 PR_Close()
  6120 ms  0x7b01 fd:0x7f6aff0a8dc0
  6124 ms  0x7b01 PR_Close()
  6124 ms  0x7b01 fd:0x7f6aff0a8a30
  6124 ms  0x7b01 PR_Close()
  6124 ms  0x7b01 fd:0x7f6aff398880
  6151 ms  0x7b01 PR_Close()
  6151 ms  0x7b01 fd:0x7f6aff0a8a30
           /* TID 0x7af9 */
  6151 ms  0x7af9 SSL_ImportFD()
  6151 ms  0x7af9 ret:0x7f6aff388640
  6151 ms  0x7af9 SSL_AuthCertificateHook()
  6151 ms  0x7af9 fd:0x7f6aff388640
  6151 ms  0x7af9 ret:0x0
  6151 ms  0x7af9 PR_Connect()
  6151 ms  0x7af9 fd:0x7f6aff388640
           /* TID 0x7b01 */
  6161 ms  0x7b01 PR_Close()
  6161 ms  0x7b01 fd:0x7f6aff0a80a0
  6163 ms  0x7b01 PR_Close()
  6163 ms  0x7b01 fd:0x7f6aff0a80a0
           /* TID 0x7af9 */
  6182 ms  0x7af9 PK11_Encrypt()
  6182 ms  0x7af9 symkey:0x7f6b1589e600
  6213 ms  0x7af9 SECKEY_CreateECPrivateKey()
  6213 ms  0x7af9 cx:0x7f6aff0eca68
  6214 ms     | 0x7af9 EC_ValidatePublicKey()
  6214 ms     | 0x7af9 ret:0x0
  6214 ms  0x7af9 ret:0x7f6afe452820::7f6afe452820  20 d4 0f ff                                       ...
  6214 ms  0x7af9 SECKEY_CreateECPrivateKey()
  6214 ms  0x7af9 cx:0x7f6aff0eca68
  6215 ms     | 0x7af9 EC_ValidatePublicKey()
  6216 ms     | 0x7af9 ret:0x0
  6216 ms  0x7af9 ret:0x7f6afe454820::7f6afe454820  f0 d6 0f ff                                      ....
  6223 ms  0x7af9 SSL_ImportFD()
  6223 ms  0x7af9 ret:0x7f6aff431190
  6223 ms  0x7af9 SSL_AuthCertificateHook()
  6223 ms  0x7af9 fd:0x7f6aff431190
  6223 ms  0x7af9 ret:0x0
  6223 ms  0x7af9 PR_Connect()
  6223 ms  0x7af9 fd:0x7f6aff431190
           /* TID 0x7b01 */
  6250 ms  0x7b01 PR_Close()
  6250 ms  0x7b01 fd:0x7f6aff0a80a0
           /* TID 0x7af9 */
  6260 ms  0x7af9 SECKEY_CreateECPrivateKey()
  6260 ms  0x7af9 cx:0x7f6aff0ecc08
  6260 ms     | 0x7af9 EC_ValidatePublicKey()
  6260 ms     | 0x7af9 ret:0x0
  6260 ms  0x7af9 ret:0x7f6afe457020::7f6afe457020  30 d8 0f ff                                      0...
  6260 ms  0x7af9 SECKEY_CreateECPrivateKey()
  6260 ms  0x7af9 cx:0x7f6aff0ecc08
  6261 ms     | 0x7af9 EC_ValidatePublicKey()
  6262 ms     | 0x7af9 ret:0x0
  6263 ms  0x7af9 ret:0x7f6afe459020::7f6afe459020  e0 dc 0f ff                                      ....
  6280 ms  SECKEY_ECParamsToKeySize()
  6280 ms  0x7af9 ret:0xff
  6280 ms  0x7af9 SECKEY_CreateECPrivateKey()
  6280 ms  0x7af9 cx:0x7f6aff0eca68
  6281 ms     | 0x7af9 EC_ValidatePublicKey()
  6281 ms     | 0x7af9 ret:0x0
  6281 ms  0x7af9 ret:0x7f6afe464020::7f6afe464020  b0 5a 42 ff                                      .ZB.
  6281 ms  0x7af9 PK11_PubDeriveWithKDF()
  6281 ms  0x7af9 seckey:0x7f6afe464020
  6281 ms     | 0x7af9 EC_ValidatePublicKey()
  6281 ms     | 0x7af9 ret:0x0
  6282 ms  0x7af9 ret:0x7f6b1589d900
  6282 ms  0x7af9 PK11_DeriveWithFlags()
  6282 ms  0x7af9 basekey:0x7f6b1589d900
  6282 ms     | 0x7af9 PK11_DeriveWithTemplate()
  6282 ms  0x7af9 ret:0x7f6aff0fcd00
  6282 ms  0x7af9 PK11_Derive()
  6282 ms  0x7af9 basekey:0x7f6aff0fcd00
  6282 ms     | 0x7af9 PK11_DeriveWithTemplate()
  6282 ms  0x7af9 ret:0x7f6b1589dc00
  6282 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6282 ms  0x7af9 privk:0x7f6afe464020::7f6afe464020  b0 5a 42 ff                                      .ZB.
  6282 ms  0x7af9 privk:0x7f6afe464020::7f6afe464020  e5 e5 e5 e5                                      ....
  6282 ms  0x7af9 PK11_Encrypt()
  6282 ms  0x7af9 symkey:0x7f6b1589d980
           /* TID 0x7b9d */
  6283 ms  0x7b9d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6283 ms  0x7b9d ret:0x0
  6283 ms  0x7b9d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6283 ms  0x7b9d ret:0x0
           /* TID 0x7af9 */
  6291 ms  0x7af9 SSL_AuthCertificateComplete()
  6291 ms  0x7af9 fd:0x7f6aff388640
  6291 ms  0x7af9 err:0x0
  6291 ms  0x7af9 PK11_Encrypt()
  6291 ms  0x7af9 symkey:0x7f6b1589d980
  6335 ms  SECKEY_ECParamsToKeySize()
  6335 ms  0x7af9 ret:0x100
  6335 ms  0x7af9 SECKEY_CreateECPrivateKey()
  6335 ms  0x7af9 cx:0x7f6aff0ecc08
  6336 ms     | 0x7af9 EC_ValidatePublicKey()
  6337 ms     | 0x7af9 ret:0x0
  6337 ms  0x7af9 ret:0x7f6afe468020::7f6afe468020  40 57 42 ff                                      @WB.
  6337 ms  0x7af9 PK11_PubDeriveWithKDF()
  6337 ms  0x7af9 seckey:0x7f6afe468020
  6337 ms     | 0x7af9 EC_ValidatePublicKey()
  6339 ms     | 0x7af9 ret:0x0
  6340 ms  0x7af9 ret:0x7f6b1589d900
  6340 ms  0x7af9 PK11_DeriveWithFlags()
  6340 ms  0x7af9 basekey:0x7f6b1589d900
  6340 ms     | 0x7af9 PK11_DeriveWithTemplate()
  6340 ms  0x7af9 ret:0x7f6b1589db80
  6340 ms  0x7af9 PK11_Derive()
  6340 ms  0x7af9 basekey:0x7f6b1589db80
  6340 ms     | 0x7af9 PK11_DeriveWithTemplate()
  6341 ms  0x7af9 ret:0x7f6aff0fbe80
  6341 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6341 ms  0x7af9 privk:0x7f6afe468020::7f6afe468020  40 57 42 ff                                      @WB.
  6341 ms  0x7af9 privk:0x7f6afe468020::7f6afe468020  e5 e5 e5 e5                                      ....
  6341 ms  0x7af9 PK11_Encrypt()
  6341 ms  0x7af9 symkey:0x7f6b1589dc80
           /* TID 0x7b5d */
  6342 ms  0x7b5d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6342 ms  0x7b5d ret:0x0
  6342 ms  0x7b5d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6342 ms  0x7b5d ret:0x0
           /* TID 0x7af9 */
  6350 ms  0x7af9 SSL_AuthCertificateComplete()
  6350 ms  0x7af9 fd:0x7f6aff431190
  6350 ms  0x7af9 err:0x0
  6350 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6350 ms  0x7af9 privk:0x7f6afe454820::7f6afe454820  f0 d6 0f ff                                      ....
  6350 ms  0x7af9 privk:0x7f6afe454820::7f6afe454820  e5 e5 e5 e5                                      ....
  6350 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6350 ms  0x7af9 privk:0x7f6afe452820::7f6afe452820  20 d4 0f ff                                       ...
  6350 ms  0x7af9 privk:0x7f6afe452820::7f6afe452820  e5 e5 e5 e5                                      ....
  6350 ms  0x7af9 PK11_Encrypt()
  6350 ms  0x7af9 symkey:0x7f6b1589dc80
  6351 ms  0x7af9 PK11_Encrypt()
  6351 ms  0x7af9 symkey:0x7f6b1589dc80
  6378 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6378 ms  0x7af9 privk:0x7f6afe459020::7f6afe459020  e0 dc 0f ff                                      ....
  6378 ms  0x7af9 privk:0x7f6afe459020::7f6afe459020  e5 e5 e5 e5                                      ....
  6378 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6378 ms  0x7af9 privk:0x7f6afe457020::7f6afe457020  30 d8 0f ff                                      0...
  6378 ms  0x7af9 privk:0x7f6afe457020::7f6afe457020  e5 e5 e5 e5                                      ....
  6414 ms  0x7af9 PK11_Encrypt()
  6414 ms  0x7af9 symkey:0x7f6b1589dc80
  6417 ms  0x7af9 PK11_Encrypt()
  6417 ms  0x7af9 symkey:0x7f6aff4e9600
  6422 ms  0x7af9 PK11_Encrypt()
  6422 ms  0x7af9 symkey:0x7f6b1589d980
  6431 ms  0x7af9 SSL_ImportFD()
  6431 ms  0x7af9 ret:0x7f6aff398f40
  6431 ms  0x7af9 SSL_AuthCertificateHook()
  6431 ms  0x7af9 fd:0x7f6aff398f40
  6431 ms  0x7af9 ret:0x0
  6431 ms  0x7af9 PR_Connect()
  6431 ms  0x7af9 fd:0x7f6aff398f40
           /* TID 0x7b01 */
  6465 ms  0x7b01 PR_Close()
  6465 ms  0x7b01 fd:0x7f6aff0a8040
           /* TID 0x7af9 */
  6466 ms  0x7af9 SSL_ImportFD()
  6466 ms  0x7af9 ret:0x7f6aff617e50
  6466 ms  0x7af9 SSL_AuthCertificateHook()
  6466 ms  0x7af9 fd:0x7f6aff617e50
  6466 ms  0x7af9 ret:0x0
  6466 ms  0x7af9 PR_Connect()
  6466 ms  0x7af9 fd:0x7f6aff617e50
  6468 ms  0x7af9 PK11_Encrypt()
  6468 ms  0x7af9 symkey:0x7f6b1589e600
  6469 ms  0x7af9 PR_Close()
  6469 ms  0x7af9 fd:0x7f6b1118ad30
           /* TID 0x7aee */
  6473 ms  0x7aee EC_ValidatePublicKey()
  6474 ms  0x7aee ret:0x0
  6475 ms  0x7aee EC_ValidatePublicKey()
  6476 ms  0x7aee ret:0x0
  6476 ms  0x7aee EC_ValidatePublicKey()
  6477 ms  0x7aee ret:0x0
  6477 ms  0x7aee EC_ValidatePublicKey()
  6479 ms  0x7aee ret:0x0
  6479 ms  0x7aee EC_ValidatePublicKey()
  6480 ms  0x7aee ret:0x0
  6480 ms  0x7aee EC_ValidatePublicKey()
  6482 ms  0x7aee ret:0x0
  6482 ms  0x7aee EC_ValidatePublicKey()
  6498 ms  0x7aee ret:0x0
  6498 ms  0x7aee EC_ValidatePublicKey()
  6500 ms  0x7aee ret:0x0
  6500 ms  0x7aee EC_ValidatePublicKey()
  6501 ms  0x7aee ret:0x0
  6501 ms  0x7aee EC_ValidatePublicKey()
  6507 ms  0x7aee ret:0x0
           /* TID 0x7af9 */
  6508 ms  0x7af9 PK11_Encrypt()
  6508 ms  0x7af9 symkey:0x7f6aff4e9980
  6508 ms  0x7af9 PK11_Encrypt()
  6508 ms  0x7af9 symkey:0x7f6b1589dc80
  6508 ms  0x7af9 PK11_Encrypt()
  6508 ms  0x7af9 symkey:0x7f6aff5e6300
  6508 ms  0x7af9 PK11_Encrypt()
  6508 ms  0x7af9 symkey:0x7f6aff0fca80
  6508 ms  0x7af9 PK11_Encrypt()
  6508 ms  0x7af9 symkey:0x7f6aff4e9600
  6508 ms  0x7af9 PR_Close()
  6508 ms  0x7af9 fd:0x7f6aff388640
  6508 ms     | 0x7af9 PK11_Encrypt()
  6508 ms     | 0x7af9 symkey:0x7f6b1589d980
  6509 ms  0x7af9 PR_Close()
  6509 ms  0x7af9 fd:0x7f6b105fcf10
  6509 ms     | 0x7af9 PK11_Encrypt()
  6509 ms     | 0x7af9 symkey:0x7f6b107cc700
  6509 ms  0x7af9 PR_Close()
  6509 ms  0x7af9 fd:0x7f6b105fcd90
  6509 ms  0x7af9 PR_Close()
  6509 ms  0x7af9 fd:0x7f6b105fc2e0
  6509 ms     | 0x7af9 PK11_Encrypt()
  6509 ms     | 0x7af9 symkey:0x7f6b107cb980
  6509 ms  0x7af9 PR_Close()
  6509 ms  0x7af9 fd:0x7f6b158ffa00
  6509 ms  0x7af9 PR_Close()
  6509 ms  0x7af9 fd:0x7f6b116c6b80
  6509 ms     | 0x7af9 PK11_Encrypt()
  6509 ms     | 0x7af9 symkey:0x7f6b1a8d4b00
  6509 ms  0x7af9 PR_Close()
  6509 ms  0x7af9 fd:0x7f6aff431c10
  6509 ms     | 0x7af9 PK11_Encrypt()
  6509 ms     | 0x7af9 symkey:0x7f6aff4e9600
  6510 ms  0x7af9 PR_Close()
  6510 ms  0x7af9 fd:0x7f6aff5e16d0
  6510 ms     | 0x7af9 PK11_Encrypt()
  6510 ms     | 0x7af9 symkey:0x7f6aff5e6300
  6510 ms  0x7af9 PR_Close()
  6510 ms  0x7af9 fd:0x7f6aff431190
  6510 ms     | 0x7af9 PK11_Encrypt()
  6510 ms     | 0x7af9 symkey:0x7f6b1589dc80
  6510 ms  0x7af9 PR_Close()
  6510 ms  0x7af9 fd:0x7f6aff0a81f0
  6510 ms     | 0x7af9 PK11_Encrypt()
  6510 ms     | 0x7af9 symkey:0x7f6aff0fca80
  6510 ms  0x7af9 PR_Close()
  6510 ms  0x7af9 fd:0x7f6aff431a00
  6510 ms     | 0x7af9 PK11_Encrypt()
  6510 ms     | 0x7af9 symkey:0x7f6aff4e9980
           /* TID 0x7b52 */
  6511 ms  0x7b52 PR_Close()
  6511 ms  0x7b52 fd:0x7f6aff0a81f0
  6511 ms  0x7b52 PR_Close()
  6511 ms  0x7b52 fd:0x7f6aff0a81f0
           /* TID 0x7af9 */
  6525 ms  0x7af9 SSL_ImportFD()
  6525 ms  0x7af9 ret:0x7f6aff617eb0
  6525 ms  0x7af9 SSL_AuthCertificateHook()
  6525 ms  0x7af9 fd:0x7f6aff617eb0
  6525 ms  0x7af9 ret:0x0
  6525 ms  0x7af9 PR_Connect()
  6525 ms  0x7af9 fd:0x7f6aff617eb0
  6533 ms  0x7af9 PR_Close()
  6533 ms  0x7af9 fd:0x7f6aff431100
  6533 ms     | 0x7af9 PK11_Encrypt()
  6533 ms     | 0x7af9 symkey:0x7f6b1589e600
  6544 ms  0x7af9 SECKEY_CreateECPrivateKey()
  6544 ms  0x7af9 cx:0x7f6aff0ed5c8
  6544 ms     | 0x7af9 EC_ValidatePublicKey()
  6544 ms     | 0x7af9 ret:0x0
  6544 ms  0x7af9 ret:0x7f6afe45d020::7f6afe45d020  a0 c6 4e ff                                      ..N.
  6544 ms  0x7af9 SECKEY_CreateECPrivateKey()
  6544 ms  0x7af9 cx:0x7f6aff0ed5c8
  6545 ms     | 0x7af9 EC_ValidatePublicKey()
  6547 ms     | 0x7af9 ret:0x0
  6547 ms  0x7af9 ret:0x7f6afe464820::7f6afe464820  c0 c9 4e ff                                      ..N.
           /* TID 0x7aee */
  6548 ms  0x7aee PR_Close()
  6548 ms  0x7aee fd:0x7f6b11a8d400
  6548 ms  0x7aee PR_Close()
  6548 ms  0x7aee fd:0x7f6aff457af0
  6549 ms  0x7aee PR_Close()
  6549 ms  0x7aee fd:0x7f6aff617df0
  6549 ms  0x7aee PR_Close()
  6549 ms  0x7aee fd:0x7f6aff431190
  6549 ms  0x7aee PR_Close()
  6549 ms  0x7aee fd:0x7f6aff5e17f0
  6549 ms  0x7aee PR_Close()
  6549 ms  0x7aee fd:0x7f6aff431190
           /* TID 0x7b65 */
  6552 ms  0x7b65 PR_Close()
  6552 ms  0x7b65 fd:0x7f6aff617e80
           /* TID 0x7af9 */
  6557 ms  0x7af9 SECKEY_CreateECPrivateKey()
  6557 ms  0x7af9 cx:0x7f6aff0ed428
  6557 ms     | 0x7af9 EC_ValidatePublicKey()
  6557 ms     | 0x7af9 ret:0x0
  6557 ms  0x7af9 ret:0x7f6afef07820::7f6afef07820  40 cc 4e ff                                      @.N.
  6557 ms  0x7af9 SECKEY_CreateECPrivateKey()
  6557 ms  0x7af9 cx:0x7f6aff0ed428
  6558 ms     | 0x7af9 EC_ValidatePublicKey()
  6559 ms     | 0x7af9 ret:0x0
  6559 ms  0x7af9 ret:0x7f6afef09820::7f6afef09820  70 ce 4e ff                                      p.N.
           /* TID 0x7aee */
  6571 ms  0x7aee PR_Close()
  6571 ms  0x7aee fd:0x7f6aff5e17f0
  6571 ms  0x7aee PR_Close()
  6571 ms  0x7aee fd:0x7f6b105fc2e0
  6573 ms  0x7aee PR_Close()
  6573 ms  0x7aee fd:0x7f6aff5e17f0
  6573 ms  0x7aee PR_Close()
  6573 ms  0x7aee fd:0x7f6b105fc2e0
  6573 ms  0x7aee PR_Close()
  6573 ms  0x7aee fd:0x7f6b1b5c89a0
  6573 ms  0x7aee PR_Close()
  6573 ms  0x7aee fd:0x7f6b1b5c88b0
  6573 ms  0x7aee PR_Close()
  6573 ms  0x7aee fd:0x7f6b1b5c8a60
  6575 ms  0x7aee PR_Close()
  6575 ms  0x7aee fd:0x7f6b105fc340
  6577 ms  0x7aee PR_Close()
  6577 ms  0x7aee fd:0x7f6b105fc340
  6578 ms  0x7aee PR_Close()
  6578 ms  0x7aee fd:0x7f6aff5e17f0
  6579 ms  0x7aee PR_Close()
  6579 ms  0x7aee fd:0x7f6b105fc400
  6579 ms  0x7aee PR_Close()
  6579 ms  0x7aee fd:0x7f6aff5e17f0
  6579 ms  0x7aee PR_Close()
  6579 ms  0x7aee fd:0x7f6b105fc400
  6581 ms  0x7aee PR_Close()
  6581 ms  0x7aee fd:0x7f6b105fc8b0
  6585 ms  0x7aee PR_Close()
  6585 ms  0x7aee fd:0x7f6b105fc8b0
  6587 ms  0x7aee PR_Close()
  6587 ms  0x7aee fd:0x7f6aff5e17f0
  6587 ms  0x7aee PR_Close()
  6587 ms  0x7aee fd:0x7f6b105fcd00
  6587 ms  0x7aee PR_Close()
  6587 ms  0x7aee fd:0x7f6aff5e17f0
  6587 ms  0x7aee PR_Close()
  6587 ms  0x7aee fd:0x7f6b105fcd00
  6590 ms  0x7aee PR_Close()
  6590 ms  0x7aee fd:0x7f6b105fcd30
  6591 ms  0x7aee PR_Close()
  6591 ms  0x7aee fd:0x7f6b105fcd30
  6597 ms  0x7aee PR_Close()
  6597 ms  0x7aee fd:0x7f6b105fcf70
  6598 ms  0x7aee PR_Close()
  6598 ms  0x7aee fd:0x7f6b105fcf70
  6600 ms  0x7aee PR_Close()
  6600 ms  0x7aee fd:0x7f6b105fcfa0
           /* TID 0x7b01 */
  6604 ms  0x7b01 PR_Close()
  6604 ms  0x7b01 fd:0x7f6b10761520
           /* TID 0x7af9 */
  6608 ms  0x7af9 SECKEY_CreateECPrivateKey()
  6608 ms  0x7af9 cx:0x7f6aff0ecda8
  6609 ms     | 0x7af9 EC_ValidatePublicKey()
  6609 ms     | 0x7af9 ret:0x0
  6609 ms  0x7af9 ret:0x7f6afef0c820::7f6afef0c820  c0 c9 5b ff                                      ..[.
  6609 ms  0x7af9 SECKEY_CreateECPrivateKey()
  6609 ms  0x7af9 cx:0x7f6aff0ecda8
  6609 ms     | 0x7af9 EC_ValidatePublicKey()
  6611 ms     | 0x7af9 ret:0x0
  6611 ms  0x7af9 ret:0x7f6afef13820::7f6afef13820  40 d2 75 10                                      @.u.
           /* TID 0x7b9d */
  6613 ms  0x7b9d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6614 ms  0x7b9d ret:0x0
  6614 ms  0x7b9d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6614 ms  0x7b9d ret:0x0
           /* TID 0x7af9 */
  6614 ms  SECKEY_ECParamsToKeySize()
  6614 ms  0x7af9 ret:0xff
  6614 ms  0x7af9 SECKEY_CreateECPrivateKey()
  6614 ms  0x7af9 cx:0x7f6aff0ed5c8
  6614 ms     | 0x7af9 EC_ValidatePublicKey()
  6614 ms     | 0x7af9 ret:0x0
  6614 ms  0x7af9 ret:0x7f6afef1c820::7f6afef1c820  80 d8 75 10                                      ..u.
  6615 ms  0x7af9 PK11_PubDeriveWithKDF()
  6615 ms  0x7af9 seckey:0x7f6afef1c820
  6615 ms     | 0x7af9 EC_ValidatePublicKey()
  6615 ms     | 0x7af9 ret:0x0
  6615 ms  0x7af9 ret:0x7f6aff0fb380
  6615 ms  0x7af9 PK11_DeriveWithFlags()
  6615 ms  0x7af9 basekey:0x7f6aff0fb380
  6615 ms     | 0x7af9 PK11_DeriveWithTemplate()
  6615 ms  0x7af9 ret:0x7f6aff0fb100
  6615 ms  0x7af9 PK11_Derive()
  6615 ms  0x7af9 basekey:0x7f6aff0fb100
  6615 ms     | 0x7af9 PK11_DeriveWithTemplate()
  6615 ms  0x7af9 ret:0x7f6aff4e9800
  6615 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6615 ms  0x7af9 privk:0x7f6afef1c820::7f6afef1c820  80 d8 75 10                                      ..u.
  6615 ms  0x7af9 privk:0x7f6afef1c820::7f6afef1c820  e5 e5 e5 e5                                      ....
  6615 ms  0x7af9 PK11_Encrypt()
  6615 ms  0x7af9 symkey:0x7f6aff5fdb00
  6618 ms  0x7af9 SSL_AuthCertificateComplete()
  6618 ms  0x7af9 fd:0x7f6aff617e50
  6618 ms  0x7af9 err:0x0
  6618 ms  0x7af9 PK11_Encrypt()
  6618 ms  0x7af9 symkey:0x7f6aff5fdb00
           /* TID 0x7b65 */
  6624 ms  0x7b65 PR_Close()
  6624 ms  0x7b65 fd:0x7f6b1090bdf0
           /* TID 0x7aee */
  6625 ms  0x7aee PR_Close()
  6625 ms  0x7aee fd:0x7f6aff5e17f0
           /* TID 0x7b65 */
  6626 ms  0x7b65 PR_Close()
  6626 ms  0x7b65 fd:0x7f6b1090bdf0
           /* TID 0x7aee */
  6626 ms  0x7aee PR_Close()
  6626 ms  0x7aee fd:0x7f6b1160b3a0
           /* TID 0x7b65 */
  6632 ms  0x7b65 PR_Close()
  6632 ms  0x7b65 fd:0x7f6aff617e80
  6658 ms  0x7b65 PR_Close()
  6658 ms  0x7b65 fd:0x7f6aff0a8310
           /* TID 0x7af9 */
  6663 ms  0x7af9 SSL_ImportFD()
  6663 ms  0x7af9 ret:0x7f6aff3883a0
  6663 ms  0x7af9 SSL_AuthCertificateHook()
  6663 ms  0x7af9 fd:0x7f6aff3883a0
  6663 ms  0x7af9 ret:0x0
  6663 ms  0x7af9 PR_Connect()
  6663 ms  0x7af9 fd:0x7f6aff3883a0
  6669 ms  0x7af9 PR_Close()
  6669 ms  0x7af9 fd:0x7f6aff617eb0
  6669 ms     | 0x7af9 SECKEY_DestroyPrivateKey()
  6669 ms     | 0x7af9 privk:0x7f6afef13820::7f6afef13820  40 d2 75 10                                      @.u.
  6670 ms     | 0x7af9 privk:0x7f6afef13820::7f6afef13820  e5 e5 e5 e5                                      ....
  6670 ms     | 0x7af9 SECKEY_DestroyPrivateKey()
  6670 ms     | 0x7af9 privk:0x7f6afef0c820::7f6afef0c820  c0 c9 5b ff                                      ..[.
  6670 ms     | 0x7af9 privk:0x7f6afef0c820::7f6afef0c820  e5 e5 e5 e5                                      ....
  6670 ms  0x7af9 PR_Close()
  6670 ms  0x7af9 fd:0x7f6aff398f40
  6670 ms     | 0x7af9 SECKEY_DestroyPrivateKey()
  6670 ms     | 0x7af9 privk:0x7f6afef09820::7f6afef09820  70 ce 4e ff                                      p.N.
  6670 ms     | 0x7af9 privk:0x7f6afef09820::7f6afef09820  e5 e5 e5 e5                                      ....
  6670 ms     | 0x7af9 SECKEY_DestroyPrivateKey()
  6670 ms     | 0x7af9 privk:0x7f6afef07820::7f6afef07820  40 cc 4e ff                                      @.N.
  6670 ms     | 0x7af9 privk:0x7f6afef07820::7f6afef07820  e5 e5 e5 e5                                      ....
  6671 ms  0x7af9 SSL_ImportFD()
  6671 ms  0x7af9 ret:0x7f6aff388580
  6671 ms  0x7af9 SSL_AuthCertificateHook()
  6671 ms  0x7af9 fd:0x7f6aff388580
  6671 ms  0x7af9 ret:0x0
  6671 ms  0x7af9 PR_Connect()
  6671 ms  0x7af9 fd:0x7f6aff388580
           /* TID 0x7af3 */
  6672 ms  0x7af3 PR_Close()
  6672 ms  0x7af3 fd:0x7f6b19e58df0
           /* TID 0x7af9 */
  6674 ms  0x7af9 SSL_ImportFD()
  6674 ms  0x7af9 ret:0x7f6aff388850
  6674 ms  0x7af9 SSL_AuthCertificateHook()
  6674 ms  0x7af9 fd:0x7f6aff388850
  6674 ms  0x7af9 ret:0x0
  6674 ms  0x7af9 PR_Connect()
  6674 ms  0x7af9 fd:0x7f6aff388850
  6677 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6677 ms  0x7af9 privk:0x7f6afe464820::7f6afe464820  c0 c9 4e ff                                      ..N.
  6677 ms  0x7af9 privk:0x7f6afe464820::7f6afe464820  e5 e5 e5 e5                                      ....
  6677 ms  0x7af9 SECKEY_DestroyPrivateKey()
  6677 ms  0x7af9 privk:0x7f6afe45d020::7f6afe45d020  a0 c6 4e ff                                      ..N.
  6677 ms  0x7af9 privk:0x7f6afe45d020::7f6afe45d020  e5 e5 e5 e5                                      ....
  6678 ms  0x7af9 PR_Close()
  6678 ms  0x7af9 fd:0x7f6aff388850
  6678 ms  0x7af9 PR_Close()
  6678 ms  0x7af9 fd:0x7f6aff388580
  6678 ms  0x7af9 PR_Close()
  6678 ms  0x7af9 fd:0x7f6aff617e50
  6678 ms     | 0x7af9 PK11_Encrypt()
  6678 ms     | 0x7af9 symkey:0x7f6aff5fdb00
  6678 ms  0x7af9 PR_Close()
  6678 ms  0x7af9 fd:0x7f6aff3883a0
           /* TID 0x7b65 */
  6683 ms  0x7b65 PR_Close()
  6683 ms  0x7b65 fd:0x7f6aff0a8850
           /* TID 0x7aee */
  6697 ms  0x7aee PR_Close()
  6697 ms  0x7aee fd:0x7f6aff5e17f0
  6697 ms  0x7aee PR_Close()
  6697 ms  0x7aee fd:0x7f6aff388460
           /* TID 0x7af3 */
  6702 ms  0x7af3 PR_Close()
  6702 ms  0x7af3 fd:0x7f6b1654b7f0
           /* TID 0x7af9 */
  6703 ms  0x7af9 PR_Close()
  6703 ms  0x7af9 fd:0x7f6b1118a100
           /* TID 0x7b52 */
  6704 ms  0x7b52 PR_Close()
  6704 ms  0x7b52 fd:0x7f6aff0a8430
  6704 ms  0x7b52 PR_Close()
  6704 ms  0x7b52 fd:0x7f6aff0a8430
  6704 ms  0x7b52 PR_Close()
  6704 ms  0x7b52 fd:0x7f6aff0a8430
  6704 ms  0x7b52 PR_Close()
  6704 ms  0x7b52 fd:0x7f6aff0a8520
           /* TID 0x7b65 */
  6705 ms  0x7b65 PR_Close()
  6705 ms  0x7b65 fd:0x7f6aff0a8520
           /* TID 0x7b01 */
  6707 ms  0x7b01 PR_Close()
  6707 ms  0x7b01 fd:0x7f6aff3886d0
  6707 ms  0x7b01 PR_Close()
  6707 ms  0x7b01 fd:0x7f6aff388700
           /* TID 0x7af3 */
  6715 ms  0x7af3 PR_Close()
  6715 ms  0x7af3 fd:0x7f6b116c6b20
           /* TID 0x7aee */
  6718 ms  0x7aee PR_Close()
  6718 ms  0x7aee fd:0x7f6aff3884c0
  6718 ms  0x7aee PR_Close()
  6718 ms  0x7aee fd:0x7f6aff388b20
           /* TID 0x7b65 */
  6720 ms  0x7b65 PR_Close()
  6720 ms  0x7b65 fd:0x7f6aff388b50
  6722 ms  0x7b65 PR_Close()
  6722 ms  0x7b65 fd:0x7f6aff357640
  6762 ms  0x7b65 PR_Close()
  6762 ms  0x7b65 fd:0x7f6aff0a88b0
  6763 ms  0x7b65 PR_Close()
  6763 ms  0x7b65 fd:0x7f6aff0a88b0
  6767 ms  0x7b65 PR_Close()
  6767 ms  0x7b65 fd:0x7f6aff0a8eb0
  6768 ms  0x7b65 PR_Close()
  6768 ms  0x7b65 fd:0x7f6aff0a8ee0
  6777 ms  0x7b65 PR_Close()
  6777 ms  0x7b65 fd:0x7f6aff357790
  6781 ms  0x7b65 PR_Close()
  6781 ms  0x7b65 fd:0x7f6aff388be0
  6787 ms  0x7b65 PR_Close()
  6787 ms  0x7b65 fd:0x7f6aff388dc0
  6796 ms  0x7b65 PR_Close()
  6796 ms  0x7b65 fd:0x7f6aff388e80
  6798 ms  0x7b65 PR_Close()
  6798 ms  0x7b65 fd:0x7f6aff388e80
           /* TID 0x7aee */
  6954 ms  0x7aee PR_Close()
  6954 ms  0x7aee fd:0x7f6aff357040
  6955 ms  0x7aee PR_Close()
  6955 ms  0x7aee fd:0x7f6aff357040
  6961 ms  0x7aee PR_Close()
  6961 ms  0x7aee fd:0x7f6b388da130
  6961 ms  0x7aee PR_Close()
  6961 ms  0x7aee fd:0x7f6b388da190
Process terminated
