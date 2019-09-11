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
           /* TID 0x7f40 */
   210 ms  0x7f40 SSL_ImportFD()
   210 ms  0x7f40 ret:0x7f586c6a5850
   210 ms  0x7f40 SSL_AuthCertificateHook()
   210 ms  0x7f40 fd:0x7f586c6a5850
   210 ms  0x7f40 ret:0x0
   211 ms  0x7f40 PR_Connect()
   211 ms  0x7f40 fd:0x7f586c6a5850
   411 ms  0x7f40 SECKEY_CreateECPrivateKey()
   411 ms  0x7f40 cx:0x7f585d6a5b28
   412 ms     | 0x7f40 EC_ValidatePublicKey()
   412 ms     | 0x7f40 ret:0x0
   412 ms  0x7f40 ret:0x7f585da72020::7f585da72020  50 9b ad 5d                                      P..]
   413 ms  0x7f40 SECKEY_CreateECPrivateKey()
   413 ms  0x7f40 cx:0x7f585d6a5b28
   415 ms     | 0x7f40 EC_ValidatePublicKey()
   419 ms     | 0x7f40 ret:0x0
   419 ms  0x7f40 ret:0x7f585da74020::7f585da74020  90 9c ad 5d                                      ...]
           /* TID 0x7f98 */
   505 ms  0x7f98 PR_Close()
   505 ms  0x7f98 fd:0x7f586c6a5c70
   507 ms  0x7f98 PR_Close()
   507 ms  0x7f98 fd:0x7f586c6a5c70
           /* TID 0x7f40 */
   626 ms  SECKEY_ECParamsToKeySize()
   626 ms  0x7f40 ret:0x100
   626 ms  0x7f40 SECKEY_CreateECPrivateKey()
   626 ms  0x7f40 cx:0x7f585d6a5b28
   628 ms     | 0x7f40 EC_ValidatePublicKey()
   631 ms     | 0x7f40 ret:0x0
   631 ms  0x7f40 ret:0x7f585da7d020::7f585da7d020  90 d7 41 5d                                      ..A]
   632 ms  0x7f40 PK11_PubDeriveWithKDF()
   632 ms  0x7f40 seckey:0x7f585da7d020
   632 ms     | 0x7f40 EC_ValidatePublicKey()
   635 ms     | 0x7f40 ret:0x0
   639 ms  0x7f40 ret:0x7f585f243f80
   639 ms  0x7f40 PK11_DeriveWithFlags()
   639 ms  0x7f40 basekey:0x7f585f243f80
   639 ms     | 0x7f40 PK11_DeriveWithTemplate()
   639 ms  0x7f40 ret:0x7f585d40d900
   639 ms  0x7f40 PK11_Derive()
   639 ms  0x7f40 basekey:0x7f585d40d900
   639 ms     | 0x7f40 PK11_DeriveWithTemplate()
   640 ms  0x7f40 ret:0x7f585d40da00
   640 ms  0x7f40 SECKEY_DestroyPrivateKey()
   640 ms  0x7f40 privk:0x7f585da7d020::7f585da7d020  90 d7 41 5d                                      ..A]
   640 ms  0x7f40 privk:0x7f585da7d020::7f585da7d020  e5 e5 e5 e5                                      ....
   640 ms  0x7f40 PK11_Encrypt()
   640 ms  0x7f40 symkey:0x7f585d40db80
   641 ms  0x7f40 PR_Connect()
   641 ms  0x7f40 fd:0x7f586c6a5dc0
           /* TID 0x7f98 */
   691 ms  0x7f98 PR_Close()
   691 ms  0x7f98 fd:0x7f586c6a5d30
           /* TID 0x7f48 */
   694 ms  0x7f48 PR_Close()
   694 ms  0x7f48 fd:0x7f586c6a5d30
           /* TID 0x7f9e */
   694 ms  0x7f9e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   695 ms  0x7f9e ret:0x0
           /* TID 0x7f40 */
   695 ms  0x7f40 SSL_AuthCertificateComplete()
   695 ms  0x7f40 fd:0x7f586c6a5850
   695 ms  0x7f40 err:0x0
   695 ms  0x7f40 PK11_Encrypt()
   695 ms  0x7f40 symkey:0x7f585d40db80
   842 ms  0x7f40 SECKEY_DestroyPrivateKey()
   842 ms  0x7f40 privk:0x7f585da74020::7f585da74020  90 9c ad 5d                                      ...]
   842 ms  0x7f40 privk:0x7f585da74020::7f585da74020  e5 e5 e5 e5                                      ....
   842 ms  0x7f40 SECKEY_DestroyPrivateKey()
   842 ms  0x7f40 privk:0x7f585da72020::7f585da72020  50 9b ad 5d                                      P..]
   843 ms  0x7f40 privk:0x7f585da72020::7f585da72020  e5 e5 e5 e5                                      ....
  1046 ms  0x7f40 SSL_ImportFD()
  1046 ms  0x7f40 ret:0x7f586c6a5f70
  1046 ms  0x7f40 SSL_AuthCertificateHook()
  1046 ms  0x7f40 fd:0x7f586c6a5f70
  1046 ms  0x7f40 ret:0x0
  1046 ms  0x7f40 PR_Connect()
  1046 ms  0x7f40 fd:0x7f586c6a5f70
  1071 ms  0x7f40 SECKEY_CreateECPrivateKey()
  1071 ms  0x7f40 cx:0x7f585d419a68
  1072 ms     | 0x7f40 EC_ValidatePublicKey()
  1072 ms     | 0x7f40 ret:0x0
  1072 ms  0x7f40 ret:0x7f585da73020::7f585da73020  90 d7 41 5d                                      ..A]
  1072 ms  0x7f40 SECKEY_CreateECPrivateKey()
  1072 ms  0x7f40 cx:0x7f585d419a68
  1072 ms     | 0x7f40 EC_ValidatePublicKey()
  1074 ms     | 0x7f40 ret:0x0
  1074 ms  0x7f40 ret:0x7f585da79020::7f585da79020  70 d9 41 5d                                      p.A]
           /* TID 0x7f9e */
  1125 ms  0x7f9e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1126 ms  0x7f9e ret:0x0
           /* TID 0x7f40 */
  1126 ms  SECKEY_ECParamsToKeySize()
  1126 ms  0x7f40 ret:0x100
  1126 ms  0x7f40 SECKEY_CreateECPrivateKey()
  1126 ms  0x7f40 cx:0x7f585d419a68
  1127 ms     | 0x7f40 EC_ValidatePublicKey()
  1129 ms     | 0x7f40 ret:0x0
  1129 ms  0x7f40 ret:0x7f585da7c820::7f585da7c820  f0 db 41 5d                                      ..A]
  1129 ms  0x7f40 PK11_PubDeriveWithKDF()
  1129 ms  0x7f40 seckey:0x7f585da7c820
  1129 ms     | 0x7f40 EC_ValidatePublicKey()
  1131 ms     | 0x7f40 ret:0x0
  1133 ms  0x7f40 ret:0x7f585f243f80
  1133 ms  0x7f40 PK11_DeriveWithFlags()
  1133 ms  0x7f40 basekey:0x7f585f243f80
  1133 ms     | 0x7f40 PK11_DeriveWithTemplate()
  1133 ms  0x7f40 ret:0x7f585d40e300
  1134 ms  0x7f40 PK11_Derive()
  1134 ms  0x7f40 basekey:0x7f585d40e300
  1134 ms     | 0x7f40 PK11_DeriveWithTemplate()
  1134 ms  0x7f40 ret:0x7f585d40e500
  1134 ms  0x7f40 SECKEY_DestroyPrivateKey()
  1134 ms  0x7f40 privk:0x7f585da7c820::7f585da7c820  f0 db 41 5d                                      ..A]
  1134 ms  0x7f40 privk:0x7f585da7c820::7f585da7c820  e5 e5 e5 e5                                      ....
  1134 ms  0x7f40 PK11_Encrypt()
  1134 ms  0x7f40 symkey:0x7f585d40ea00
  1134 ms  0x7f40 SSL_AuthCertificateComplete()
  1134 ms  0x7f40 fd:0x7f586c6a5f70
  1134 ms  0x7f40 err:0x0
  1134 ms  0x7f40 PK11_Encrypt()
  1134 ms  0x7f40 symkey:0x7f585d40ea00
  1186 ms  0x7f40 SECKEY_DestroyPrivateKey()
  1186 ms  0x7f40 privk:0x7f585da79020::7f585da79020  70 d9 41 5d                                      p.A]
  1187 ms  0x7f40 privk:0x7f585da79020::7f585da79020  e5 e5 e5 e5                                      ....
  1187 ms  0x7f40 SECKEY_DestroyPrivateKey()
  1187 ms  0x7f40 privk:0x7f585da73020::7f585da73020  90 d7 41 5d                                      ..A]
  1187 ms  0x7f40 privk:0x7f585da73020::7f585da73020  e5 e5 e5 e5                                      ....
  1191 ms  0x7f40 PK11_Encrypt()
  1191 ms  0x7f40 symkey:0x7f585d40ea00
  1222 ms  0x7f40 PK11_Encrypt()
  1222 ms  0x7f40 symkey:0x7f585d40ea00
  1253 ms  0x7f40 PK11_Encrypt()
  1253 ms  0x7f40 symkey:0x7f585d40ea00
  1283 ms  0x7f40 PK11_Encrypt()
  1283 ms  0x7f40 symkey:0x7f585d40ea00
  1399 ms  0x7f40 PK11_Encrypt()
  1399 ms  0x7f40 symkey:0x7f585d40ea00
  1431 ms  0x7f40 PK11_Encrypt()
  1431 ms  0x7f40 symkey:0x7f585d40ea00
  1463 ms  0x7f40 PK11_Encrypt()
  1463 ms  0x7f40 symkey:0x7f585d40ea00
           /* TID 0x7f95 */
  1491 ms  0x7f95 PR_Close()
  1491 ms  0x7f95 fd:0x7f585d433250
  1491 ms  0x7f95 PR_Close()
  1491 ms  0x7f95 fd:0x7f585d4332b0
  1491 ms  0x7f95 PR_Close()
  1491 ms  0x7f95 fd:0x7f585d433250
  1491 ms  0x7f95 PR_Close()
  1491 ms  0x7f95 fd:0x7f585d4332b0
  1492 ms  0x7f95 PR_Close()
  1492 ms  0x7f95 fd:0x7f585d433250
  1492 ms  0x7f95 PR_Close()
  1492 ms  0x7f95 fd:0x7f585d4332b0
  1492 ms  0x7f95 PR_Close()
  1492 ms  0x7f95 fd:0x7f585d433250
  1492 ms  0x7f95 PR_Close()
  1492 ms  0x7f95 fd:0x7f585d4332b0
  1492 ms  0x7f95 PR_Close()
  1492 ms  0x7f95 fd:0x7f585d433250
  1492 ms  0x7f95 PR_Close()
  1492 ms  0x7f95 fd:0x7f585d4332b0
  1492 ms  0x7f95 PR_Close()
  1492 ms  0x7f95 fd:0x7f585d433250
  1492 ms  0x7f95 PR_Close()
  1492 ms  0x7f95 fd:0x7f585d4332b0
  1492 ms  0x7f95 PR_Close()
  1492 ms  0x7f95 fd:0x7f585d433250
  1492 ms  0x7f95 PR_Close()
  1492 ms  0x7f95 fd:0x7f585d4332b0
  1492 ms  0x7f95 PR_Close()
  1492 ms  0x7f95 fd:0x7f585d433250
  1492 ms  0x7f95 PR_Close()
  1492 ms  0x7f95 fd:0x7f585d4332b0
  1493 ms  0x7f95 PR_Close()
  1493 ms  0x7f95 fd:0x7f585d433250
  1493 ms  0x7f95 PR_Close()
  1493 ms  0x7f95 fd:0x7f585d4332b0
  1493 ms  0x7f95 PR_Close()
  1493 ms  0x7f95 fd:0x7f585d433250
  1493 ms  0x7f95 PR_Close()
  1493 ms  0x7f95 fd:0x7f585d4332b0
  1493 ms  0x7f95 PR_Close()
  1493 ms  0x7f95 fd:0x7f585d433250
  1493 ms  0x7f95 PR_Close()
  1493 ms  0x7f95 fd:0x7f585d4332b0
  1493 ms  0x7f95 PR_Close()
  1493 ms  0x7f95 fd:0x7f585d433250
  1493 ms  0x7f95 PR_Close()
  1493 ms  0x7f95 fd:0x7f585d4332b0
  1493 ms  0x7f95 PR_Close()
  1493 ms  0x7f95 fd:0x7f585d433250
  1493 ms  0x7f95 PR_Close()
  1493 ms  0x7f95 fd:0x7f585d4332b0
  1494 ms  0x7f95 PR_Close()
  1494 ms  0x7f95 fd:0x7f585d433250
  1494 ms  0x7f95 PR_Close()
  1494 ms  0x7f95 fd:0x7f585d4332b0
  1497 ms  0x7f95 PR_Close()
  1497 ms  0x7f95 fd:0x7f585d433220
  1498 ms  0x7f95 PR_Close()
  1498 ms  0x7f95 fd:0x7f585d433220
  1501 ms  0x7f95 PR_Close()
  1501 ms  0x7f95 fd:0x7f585d433220
  1501 ms  0x7f95 PR_Close()
  1501 ms  0x7f95 fd:0x7f585d433250
  1503 ms  0x7f95 PR_Close()
  1503 ms  0x7f95 fd:0x7f585d433250
  1504 ms  0x7f95 PR_Close()
  1504 ms  0x7f95 fd:0x7f585d433250
  1506 ms  0x7f95 PR_Close()
  1506 ms  0x7f95 fd:0x7f585d433250
  1506 ms  0x7f95 PR_Close()
  1506 ms  0x7f95 fd:0x7f585d433250
  1553 ms  0x7f95 PR_Close()
  1553 ms  0x7f95 fd:0x7f585d433250
  1553 ms  0x7f95 PR_Close()
  1553 ms  0x7f95 fd:0x7f585d433250
  1561 ms  0x7f95 PR_Close()
  1561 ms  0x7f95 fd:0x7f585d433250
  1561 ms  0x7f95 PR_Close()
  1561 ms  0x7f95 fd:0x7f585d433250
  1567 ms  0x7f95 PR_Close()
  1567 ms  0x7f95 fd:0x7f585d433250
  1567 ms  0x7f95 PR_Close()
  1567 ms  0x7f95 fd:0x7f585d433250
  1569 ms  0x7f95 PR_Close()
  1569 ms  0x7f95 fd:0x7f585d433250
  1569 ms  0x7f95 PR_Close()
  1569 ms  0x7f95 fd:0x7f585d433250
           /* TID 0x7f92 */
  1569 ms  0x7f92 PR_Close()
  1569 ms  0x7f92 fd:0x7f585d433250
  1569 ms  0x7f92 PR_Close()
  1569 ms  0x7f92 fd:0x7f585d433250
  1570 ms  0x7f92 PR_Close()
  1570 ms  0x7f92 fd:0x7f585d433250
  1570 ms  0x7f92 PR_Close()
  1570 ms  0x7f92 fd:0x7f585d433250
  1570 ms  0x7f92 PR_Close()
  1570 ms  0x7f92 fd:0x7f585d433250
  1570 ms  0x7f92 PR_Close()
  1570 ms  0x7f92 fd:0x7f585d433250
  1570 ms  0x7f92 PR_Close()
  1570 ms  0x7f92 fd:0x7f585d433250
  1570 ms  0x7f92 PR_Close()
  1570 ms  0x7f92 fd:0x7f585d433250
  1570 ms  0x7f92 PR_Close()
  1570 ms  0x7f92 fd:0x7f585d433250
  1570 ms  0x7f92 PR_Close()
  1570 ms  0x7f92 fd:0x7f585d433250
  1570 ms  0x7f92 PR_Close()
  1570 ms  0x7f92 fd:0x7f585d433250
  1570 ms  0x7f92 PR_Close()
  1570 ms  0x7f92 fd:0x7f585d433250
  1570 ms  0x7f92 PR_Close()
  1570 ms  0x7f92 fd:0x7f585d433250
  1570 ms  0x7f92 PR_Close()
  1570 ms  0x7f92 fd:0x7f585d433250
  1570 ms  0x7f92 PR_Close()
  1570 ms  0x7f92 fd:0x7f585d433250
           /* TID 0x7f98 */
  2072 ms  0x7f98 PR_Close()
  2072 ms  0x7f98 fd:0x7f585d4335b0
  2075 ms  0x7f98 PR_Close()
  2075 ms  0x7f98 fd:0x7f585d4335b0
  2575 ms  0x7f98 PR_Close()
  2575 ms  0x7f98 fd:0x7f585d4335b0
           /* TID 0x7f48 */
  4098 ms  0x7f48 PR_Close()
  4098 ms  0x7f48 fd:0x7f585d4335b0
  4098 ms  0x7f48 PR_Close()
  4098 ms  0x7f48 fd:0x7f585d433700
  4098 ms  0x7f48 PR_Close()
  4098 ms  0x7f48 fd:0x7f585d433760
           /* TID 0x7f40 */
  4830 ms  0x7f40 SSL_ImportFD()
  4831 ms  0x7f40 ret:0x7f585ec7c700
  4831 ms  0x7f40 SSL_AuthCertificateHook()
  4831 ms  0x7f40 fd:0x7f585ec7c700
  4831 ms  0x7f40 ret:0x0
  4831 ms  0x7f40 PR_Connect()
  4831 ms  0x7f40 fd:0x7f585ec7c700
  4905 ms  0x7f40 SECKEY_CreateECPrivateKey()
  4905 ms  0x7f40 cx:0x7f585d419da8
  4906 ms     | 0x7f40 EC_ValidatePublicKey()
  4906 ms     | 0x7f40 ret:0x0
  4906 ms  0x7f40 ret:0x7f58624b9020::7f58624b9020  90 e7 89 4c                                      ...L
  4906 ms  0x7f40 SECKEY_CreateECPrivateKey()
  4906 ms  0x7f40 cx:0x7f585d419da8
  4907 ms     | 0x7f40 EC_ValidatePublicKey()
  4908 ms     | 0x7f40 ret:0x0
  4908 ms  0x7f40 ret:0x7f585d4a8820::7f585d4a8820  10 ea 89 4c                                      ...L
  5280 ms  SECKEY_ECParamsToKeySize()
  5280 ms  0x7f40 ret:0x100
  5280 ms  SECKEY_ECParamsToBasePointOrderLen()
  5280 ms  0x7f40 ret:0x100
  5280 ms  SECKEY_ECParamsToBasePointOrderLen()
  5280 ms  0x7f40 ret:0x100
  5280 ms  0x7f40 EC_ValidatePublicKey()
  5283 ms  0x7f40 ret:0x0
  5287 ms  SECKEY_ECParamsToKeySize()
  5287 ms  0x7f40 ret:0xff
  5287 ms  0x7f40 SECKEY_CreateECPrivateKey()
  5287 ms  0x7f40 cx:0x7f585d419da8
  5288 ms     | 0x7f40 EC_ValidatePublicKey()
  5288 ms     | 0x7f40 ret:0x0
  5288 ms  0x7f40 ret:0x7f585d4b5020::7f585d4b5020  d0 ed 89 4c                                      ...L
  5288 ms  0x7f40 PK11_PubDeriveWithKDF()
  5288 ms  0x7f40 seckey:0x7f585d4b5020
  5288 ms     | 0x7f40 EC_ValidatePublicKey()
  5288 ms     | 0x7f40 ret:0x0
  5288 ms  0x7f40 ret:0x7f585f243f80
  5288 ms  0x7f40 PK11_DeriveWithFlags()
  5288 ms  0x7f40 basekey:0x7f585f243f80
  5288 ms     | 0x7f40 PK11_DeriveWithTemplate()
  5288 ms  0x7f40 ret:0x7f585ec81300
  5288 ms  0x7f40 PK11_Derive()
  5288 ms  0x7f40 basekey:0x7f585ec81300
  5288 ms     | 0x7f40 PK11_DeriveWithTemplate()
  5289 ms  0x7f40 ret:0x7f585ec81380
  5289 ms  0x7f40 SECKEY_DestroyPrivateKey()
  5289 ms  0x7f40 privk:0x7f585d4b5020::7f585d4b5020  d0 ed 89 4c                                      ...L
  5289 ms  0x7f40 privk:0x7f585d4b5020::7f585d4b5020  e5 e5 e5 e5                                      ....
  5289 ms  0x7f40 PK11_Encrypt()
  5289 ms  0x7f40 symkey:0x7f585ec81500
  5289 ms  0x7f40 PR_Connect()
  5289 ms  0x7f40 fd:0x7f585ec7cc40
           /* TID 0x7f9e */
  5341 ms  0x7f9e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5341 ms  0x7f9e ret:0x0
  5341 ms  0x7f9e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5341 ms  0x7f9e ret:0x0
           /* TID 0x7f48 */
  5342 ms  0x7f48 PR_Close()
  5342 ms  0x7f48 fd:0x7f585ec7ca90
           /* TID 0x7f40 */
  5348 ms  0x7f40 SSL_AuthCertificateComplete()
  5348 ms  0x7f40 fd:0x7f585ec7c700
  5348 ms  0x7f40 err:0x0
  5349 ms  0x7f40 PK11_Encrypt()
  5349 ms  0x7f40 symkey:0x7f585ec81500
  5349 ms  0x7f40 PK11_Encrypt()
  5349 ms  0x7f40 symkey:0x7f585ec81500
  5364 ms  0x7f40 SECKEY_DestroyPrivateKey()
  5364 ms  0x7f40 privk:0x7f585d4a8820::7f585d4a8820  10 ea 89 4c                                      ...L
  5364 ms  0x7f40 privk:0x7f585d4a8820::7f585d4a8820  e5 e5 e5 e5                                      ....
  5364 ms  0x7f40 SECKEY_DestroyPrivateKey()
  5364 ms  0x7f40 privk:0x7f58624b9020::7f58624b9020  90 e7 89 4c                                      ...L
  5364 ms  0x7f40 privk:0x7f58624b9020::7f58624b9020  e5 e5 e5 e5                                      ....
  5364 ms  0x7f40 PK11_Encrypt()
  5364 ms  0x7f40 symkey:0x7f585ec81500
           /* TID 0x7f57 */
  5623 ms  0x7f57 PR_Close()
  5623 ms  0x7f57 fd:0x7f58636f8550
           /* TID 0x7f40 */
  5786 ms  0x7f40 SSL_ImportFD()
  5786 ms  0x7f40 ret:0x7f585d4c8850
  5786 ms  0x7f40 SSL_AuthCertificateHook()
  5786 ms  0x7f40 fd:0x7f585d4c8850
  5786 ms  0x7f40 ret:0x0
  5786 ms  0x7f40 PR_Connect()
  5786 ms  0x7f40 fd:0x7f585d4c8850
  6037 ms  0x7f40 SSL_ImportFD()
  6037 ms  0x7f40 ret:0x7f585d4c8b50
  6037 ms  0x7f40 SSL_AuthCertificateHook()
  6037 ms  0x7f40 fd:0x7f585d4c8b50
  6037 ms  0x7f40 ret:0x0
  6037 ms  0x7f40 PR_Connect()
  6037 ms  0x7f40 fd:0x7f585d4c8b50
  6083 ms  0x7f40 SECKEY_CreateECPrivateKey()
  6083 ms  0x7f40 cx:0x7f585d41a428
  6085 ms     | 0x7f40 EC_ValidatePublicKey()
  6085 ms     | 0x7f40 ret:0x0
  6085 ms  0x7f40 ret:0x7f585d4bc820::7f585d4bc820  20 04 6b 5d                                       .k]
  6085 ms  0x7f40 SECKEY_CreateECPrivateKey()
  6085 ms  0x7f40 cx:0x7f585d41a428
  6087 ms     | 0x7f40 EC_ValidatePublicKey()
  6091 ms     | 0x7f40 ret:0x0
  6091 ms  0x7f40 ret:0x7f585d4be820::7f585d4be820  90 07 6b 5d                                      ..k]
  6334 ms  0x7f40 SECKEY_CreateECPrivateKey()
  6334 ms  0x7f40 cx:0x7f585d41a908
  6336 ms     | 0x7f40 EC_ValidatePublicKey()
  6336 ms     | 0x7f40 ret:0x0
  6336 ms  0x7f40 ret:0x7f585d4c1020::7f585d4c1020  c0 09 6b 5d                                      ..k]
  6336 ms  0x7f40 SECKEY_CreateECPrivateKey()
  6336 ms  0x7f40 cx:0x7f585d41a908
  6337 ms     | 0x7f40 EC_ValidatePublicKey()
  6340 ms     | 0x7f40 ret:0x0
  6340 ms  0x7f40 ret:0x7f585d4c3020::7f585d4c3020  60 0f 6b 5d                                      `.k]
  6905 ms  0x7f40 PK11_Encrypt()
  6905 ms  0x7f40 symkey:0x7f585ec81500
  6905 ms  0x7f40 PR_Close()
  6905 ms  0x7f40 fd:0x7f585ec7c700
  6905 ms     | 0x7f40 PK11_Encrypt()
  6905 ms     | 0x7f40 symkey:0x7f585ec81500
           /* TID 0x7f48 */
  9421 ms  0x7f48 PR_Close()
  9421 ms  0x7f48 fd:0x7f585d6fd130
  9421 ms  0x7f48 PR_Close()
  9421 ms  0x7f48 fd:0x7f585d6fd190
  9421 ms  0x7f48 PR_Close()
  9421 ms  0x7f48 fd:0x7f585d6fd130
           /* TID 0x7f40 */
 12522 ms  SECKEY_ECParamsToKeySize()
 12522 ms  0x7f40 ret:0x100
 12522 ms  SECKEY_ECParamsToBasePointOrderLen()
 12522 ms  0x7f40 ret:0x100
 12522 ms  SECKEY_ECParamsToBasePointOrderLen()
 12522 ms  0x7f40 ret:0x100
 12522 ms  0x7f40 EC_ValidatePublicKey()
 12524 ms  0x7f40 ret:0x0
 12527 ms  SECKEY_ECParamsToKeySize()
 12527 ms  0x7f40 ret:0xff
 12527 ms  0x7f40 SECKEY_CreateECPrivateKey()
 12527 ms  0x7f40 cx:0x7f585d41a908
 12528 ms     | 0x7f40 EC_ValidatePublicKey()
 12528 ms     | 0x7f40 ret:0x0
 12528 ms  0x7f40 ret:0x7f585d4b5020::7f585d4b5020  40 87 a9 5d                                      @..]
 12528 ms  0x7f40 PK11_PubDeriveWithKDF()
 12528 ms  0x7f40 seckey:0x7f585d4b5020
 12528 ms     | 0x7f40 EC_ValidatePublicKey()
 12528 ms     | 0x7f40 ret:0x0
 12529 ms  0x7f40 ret:0x7f585ec81380
 12529 ms  0x7f40 PK11_DeriveWithFlags()
 12529 ms  0x7f40 basekey:0x7f585ec81380
 12529 ms     | 0x7f40 PK11_DeriveWithTemplate()
 12529 ms  0x7f40 ret:0x7f585ec81300
 12529 ms  0x7f40 PK11_Derive()
 12529 ms  0x7f40 basekey:0x7f585ec81300
 12529 ms     | 0x7f40 PK11_DeriveWithTemplate()
 12529 ms  0x7f40 ret:0x7f585f243f80
 12529 ms  0x7f40 SECKEY_DestroyPrivateKey()
 12529 ms  0x7f40 privk:0x7f585d4b5020::7f585d4b5020  40 87 a9 5d                                      @..]
 12530 ms  0x7f40 privk:0x7f585d4b5020::7f585d4b5020  e5 e5 e5 e5                                      ....
 12530 ms  0x7f40 PK11_Encrypt()
 12530 ms  0x7f40 symkey:0x7f585ec81400
 12531 ms  0x7f40 SSL_AuthCertificateComplete()
 12531 ms  0x7f40 fd:0x7f585d4c8b50
 12531 ms  0x7f40 err:0x0
 12531 ms  0x7f40 PK11_Encrypt()
 12531 ms  0x7f40 symkey:0x7f585ec81400
 12827 ms  0x7f40 SECKEY_DestroyPrivateKey()
 12827 ms  0x7f40 privk:0x7f585d4c3020::7f585d4c3020  60 0f 6b 5d                                      `.k]
 12828 ms  0x7f40 privk:0x7f585d4c3020::7f585d4c3020  e5 e5 e5 e5                                      ....
 12828 ms  0x7f40 SECKEY_DestroyPrivateKey()
 12828 ms  0x7f40 privk:0x7f585d4c1020::7f585d4c1020  c0 09 6b 5d                                      ..k]
 12828 ms  0x7f40 privk:0x7f585d4c1020::7f585d4c1020  e5 e5 e5 e5                                      ....
 12828 ms  0x7f40 PK11_Encrypt()
 12828 ms  0x7f40 symkey:0x7f585ec81400
 18909 ms  0x7f40 SSL_ImportFD()
 18909 ms  0x7f40 ret:0x7f585ec7c700
 18909 ms  0x7f40 SSL_AuthCertificateHook()
 18909 ms  0x7f40 fd:0x7f585ec7c700
 18909 ms  0x7f40 ret:0x0
 18909 ms  0x7f40 PR_Connect()
 18909 ms  0x7f40 fd:0x7f585ec7c700
 19120 ms  0x7f40 SECKEY_CreateECPrivateKey()
 19120 ms  0x7f40 cx:0x7f585d41b608
 19120 ms     | 0x7f40 EC_ValidatePublicKey()
 19120 ms     | 0x7f40 ret:0x0
 19120 ms  0x7f40 ret:0x7f585da81820::7f585da81820  10 8a a9 5d                                      ...]
 19120 ms  0x7f40 SECKEY_CreateECPrivateKey()
 19120 ms  0x7f40 cx:0x7f585d41b608
 19121 ms     | 0x7f40 EC_ValidatePublicKey()
 19122 ms     | 0x7f40 ret:0x0
 19122 ms  0x7f40 ret:0x7f585da85820::7f585da85820  90 8c a9 5d                                      ...]
           /* TID 0x7f98 */
 19295 ms  0x7f98 PR_Close()
 19295 ms  0x7f98 fd:0x7f585e79d3a0
 19297 ms  0x7f98 PR_Close()
 19297 ms  0x7f98 fd:0x7f585e79d3a0
           /* TID 0x7f40 */
 19336 ms  SECKEY_ECParamsToKeySize()
 19336 ms  0x7f40 ret:0x100
 19336 ms  0x7f40 SECKEY_CreateECPrivateKey()
 19336 ms  0x7f40 cx:0x7f585d41b608
 19337 ms     | 0x7f40 EC_ValidatePublicKey()
 19339 ms     | 0x7f40 ret:0x0
 19339 ms  0x7f40 ret:0x7f585f6d3820::7f585f6d3820  00 91 ad 5d                                      ...]
 19339 ms  0x7f40 PK11_PubDeriveWithKDF()
 19339 ms  0x7f40 seckey:0x7f585f6d3820
 19339 ms     | 0x7f40 EC_ValidatePublicKey()
 19341 ms     | 0x7f40 ret:0x0
 19343 ms  0x7f40 ret:0x7f585ec81380
 19343 ms  0x7f40 PK11_DeriveWithFlags()
 19343 ms  0x7f40 basekey:0x7f585ec81380
 19343 ms     | 0x7f40 PK11_DeriveWithTemplate()
 19343 ms  0x7f40 ret:0x7f585d6d9900
 19343 ms  0x7f40 PK11_Derive()
 19343 ms  0x7f40 basekey:0x7f585d6d9900
 19343 ms     | 0x7f40 PK11_DeriveWithTemplate()
 19343 ms  0x7f40 ret:0x7f585d6d9980
 19343 ms  0x7f40 SECKEY_DestroyPrivateKey()
 19343 ms  0x7f40 privk:0x7f585f6d3820::7f585f6d3820  00 91 ad 5d                                      ...]
 19343 ms  0x7f40 privk:0x7f585f6d3820::7f585f6d3820  e5 e5 e5 e5                                      ....
 19343 ms  0x7f40 PK11_Encrypt()
 19343 ms  0x7f40 symkey:0x7f585d6d9b00
           /* TID 0x7f48 */
 19370 ms  0x7f48 PR_Close()
 19370 ms  0x7f48 fd:0x7f585e79d6a0
           /* TID 0x7f9e */
 19371 ms  0x7f9e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19371 ms  0x7f9e ret:0x0
           /* TID 0x7f40 */
 19371 ms  0x7f40 SSL_AuthCertificateComplete()
 19371 ms  0x7f40 fd:0x7f585ec7c700
 19371 ms  0x7f40 err:0x0
 19371 ms  0x7f40 PK11_Encrypt()
 19371 ms  0x7f40 symkey:0x7f585d6d9b00
 19554 ms  0x7f40 SECKEY_DestroyPrivateKey()
 19554 ms  0x7f40 privk:0x7f585da85820::7f585da85820  90 8c a9 5d                                      ...]
 19554 ms  0x7f40 privk:0x7f585da85820::7f585da85820  e5 e5 e5 e5                                      ....
 19554 ms  0x7f40 SECKEY_DestroyPrivateKey()
 19554 ms  0x7f40 privk:0x7f585da81820::7f585da81820  10 8a a9 5d                                      ...]
 19554 ms  0x7f40 privk:0x7f585da81820::7f585da81820  e5 e5 e5 e5                                      ....
 19764 ms  0x7f40 PK11_Encrypt()
 19764 ms  0x7f40 symkey:0x7f585d6d9b00
 19982 ms  0x7f40 PK11_Encrypt()
 19982 ms  0x7f40 symkey:0x7f585d6d9b00
           /* TID 0x7f98 */
 20307 ms  0x7f98 PR_Close()
 20307 ms  0x7f98 fd:0x7f585d6fdee0
 20482 ms  0x7f98 PR_Close()
 20482 ms  0x7f98 fd:0x7f585d6fdee0
 20484 ms  0x7f98 PR_Close()
 20484 ms  0x7f98 fd:0x7f585d6fdee0
 28337 ms  0x7f98 PR_Close()
 28337 ms  0x7f98 fd:0x7f585ec9a580
 28339 ms  0x7f98 PR_Close()
 28339 ms  0x7f98 fd:0x7f585ec9a580
 29214 ms  0x7f98 PR_Close()
 29214 ms  0x7f98 fd:0x7f585ec9a580
 29216 ms  0x7f98 PR_Close()
 29216 ms  0x7f98 fd:0x7f585ec9a580
 57818 ms  0x7f98 PR_Close()
 57818 ms  0x7f98 fd:0x7f585ec8b160
 57820 ms  0x7f98 PR_Close()
 57820 ms  0x7f98 fd:0x7f585ec8b1c0
 57826 ms  0x7f98 PR_Close()
 57826 ms  0x7f98 fd:0x7f585ec9a730
 57830 ms  0x7f98 PR_Close()
 57830 ms  0x7f98 fd:0x7f585ec9ad90
 58319 ms  0x7f98 PR_Close()
 58319 ms  0x7f98 fd:0x7f585ec8b160
 58323 ms  0x7f98 PR_Close()
 58323 ms  0x7f98 fd:0x7f585ec8b160
           /* TID 0x7f40 */
 58799 ms  0x7f40 PR_Connect()
 58799 ms  0x7f40 fd:0x7f585ef07520
 59671 ms  0x7f40 PR_Close()
 59671 ms  0x7f40 fd:0x7f585d4c8850
 59672 ms     | 0x7f40 SECKEY_DestroyPrivateKey()
 59672 ms     | 0x7f40 privk:0x7f585d4be820::7f585d4be820  90 07 6b 5d                                      ..k]
 59672 ms     | 0x7f40 privk:0x7f585d4be820::7f585d4be820  e5 e5 e5 e5                                      ....
 59673 ms     | 0x7f40 SECKEY_DestroyPrivateKey()
 59673 ms     | 0x7f40 privk:0x7f585d4bc820::7f585d4bc820  20 04 6b 5d                                       .k]
 59673 ms     | 0x7f40 privk:0x7f585d4bc820::7f585d4bc820  e5 e5 e5 e5                                      ....
 59762 ms  0x7f40 PR_Close()
 59762 ms  0x7f40 fd:0x7f585e79dd90
           /* TID 0x7f35 */
 59769 ms  0x7f35 EC_ValidatePublicKey()
 59771 ms  0x7f35 ret:0x0
 59771 ms  0x7f35 EC_ValidatePublicKey()
 59772 ms  0x7f35 ret:0x0
 59772 ms  0x7f35 EC_ValidatePublicKey()
 59775 ms  0x7f35 ret:0x0
 59775 ms  0x7f35 EC_ValidatePublicKey()
 59776 ms  0x7f35 ret:0x0
 59776 ms  0x7f35 EC_ValidatePublicKey()
 59778 ms  0x7f35 ret:0x0
 59778 ms  0x7f35 EC_ValidatePublicKey()
 59779 ms  0x7f35 ret:0x0
 59779 ms  0x7f35 EC_ValidatePublicKey()
 59781 ms  0x7f35 ret:0x0
 59781 ms  0x7f35 EC_ValidatePublicKey()
 59782 ms  0x7f35 ret:0x0
 59782 ms  0x7f35 EC_ValidatePublicKey()
 59787 ms  0x7f35 ret:0x0
 59787 ms  0x7f35 EC_ValidatePublicKey()
 59789 ms  0x7f35 ret:0x0
           /* TID 0x7f40 */
 59789 ms  0x7f40 PK11_Encrypt()
 59789 ms  0x7f40 symkey:0x7f585ec81400
 59791 ms  0x7f40 PR_Close()
 59791 ms  0x7f40 fd:0x7f585ef07520
 59792 ms  0x7f40 PR_Close()
 59792 ms  0x7f40 fd:0x7f585ec7cc40
 59792 ms  0x7f40 PR_Close()
 59792 ms  0x7f40 fd:0x7f586c6a5f70
 59792 ms     | 0x7f40 PK11_Encrypt()
 59792 ms     | 0x7f40 symkey:0x7f585d40ea00
 59792 ms  0x7f40 PR_Close()
 59792 ms  0x7f40 fd:0x7f586c6a5dc0
 59792 ms  0x7f40 PR_Close()
 59792 ms  0x7f40 fd:0x7f586c6a5850
 59792 ms     | 0x7f40 PK11_Encrypt()
 59792 ms     | 0x7f40 symkey:0x7f585d40db80
 59792 ms  0x7f40 PR_Close()
 59792 ms  0x7f40 fd:0x7f585dc4ef70
 59792 ms  0x7f40 PR_Close()
 59792 ms  0x7f40 fd:0x7f5863c63d90
 59792 ms     | 0x7f40 PK11_Encrypt()
 59792 ms     | 0x7f40 symkey:0x7f585f6ec200
 59793 ms  0x7f40 PR_Close()
 59793 ms  0x7f40 fd:0x7f58628935b0
 59793 ms     | 0x7f40 PK11_Encrypt()
 59793 ms     | 0x7f40 symkey:0x7f585f2d7f80
 59793 ms  0x7f40 PR_Close()
 59793 ms  0x7f40 fd:0x7f585d4c8b50
 59793 ms     | 0x7f40 PK11_Encrypt()
 59793 ms     | 0x7f40 symkey:0x7f585ec81400
           /* TID 0x7f90 */
 59793 ms  0x7f90 PR_Close()
 59793 ms  0x7f90 fd:0x7f585d433070
 59793 ms  0x7f90 PR_Close()
 59793 ms  0x7f90 fd:0x7f585d433070
           /* TID 0x7f35 */
 59796 ms  0x7f35 PR_Close()
 59796 ms  0x7f35 fd:0x7f5862493c10
 59796 ms  0x7f35 PR_Close()
 59796 ms  0x7f35 fd:0x7f585d4c88b0
 59797 ms  0x7f35 PR_Close()
 59797 ms  0x7f35 fd:0x7f585d4c8b80
 59797 ms  0x7f35 PR_Close()
 59797 ms  0x7f35 fd:0x7f585d4c88b0
 59798 ms  0x7f35 PR_Close()
 59798 ms  0x7f35 fd:0x7f585d4c8b80
 59798 ms  0x7f35 PR_Close()
 59798 ms  0x7f35 fd:0x7f585d4c88b0
           /* TID 0x7f98 */
 59800 ms  0x7f98 PR_Close()
 59800 ms  0x7f98 fd:0x7f585d4c88b0
           /* TID 0x7f35 */
 59821 ms  0x7f35 PR_Close()
 59821 ms  0x7f35 fd:0x7f585d4c8b80
 59821 ms  0x7f35 PR_Close()
 59821 ms  0x7f35 fd:0x7f586364e7c0
 59822 ms  0x7f35 PR_Close()
 59822 ms  0x7f35 fd:0x7f585d4c8b80
 59822 ms  0x7f35 PR_Close()
 59822 ms  0x7f35 fd:0x7f586364e7c0
 59822 ms  0x7f35 PR_Close()
 59822 ms  0x7f35 fd:0x7f58687c89a0
 59822 ms  0x7f35 PR_Close()
 59822 ms  0x7f35 fd:0x7f58687c88b0
 59822 ms  0x7f35 PR_Close()
 59822 ms  0x7f35 fd:0x7f58687c8a60
 59825 ms  0x7f35 PR_Close()
 59825 ms  0x7f35 fd:0x7f585eff8280
 59826 ms  0x7f35 PR_Close()
 59826 ms  0x7f35 fd:0x7f585eff8280
 59832 ms  0x7f35 PR_Close()
 59832 ms  0x7f35 fd:0x7f585d4c8b80
 59832 ms  0x7f35 PR_Close()
 59832 ms  0x7f35 fd:0x7f586248ed90
 59832 ms  0x7f35 PR_Close()
 59832 ms  0x7f35 fd:0x7f585d4c8b80
 59832 ms  0x7f35 PR_Close()
 59832 ms  0x7f35 fd:0x7f586248ed90
 59835 ms  0x7f35 PR_Close()
 59835 ms  0x7f35 fd:0x7f5862493400
 59836 ms  0x7f35 PR_Close()
 59836 ms  0x7f35 fd:0x7f5862493400
 59838 ms  0x7f35 PR_Close()
 59838 ms  0x7f35 fd:0x7f585d4c8b80
 59838 ms  0x7f35 PR_Close()
 59838 ms  0x7f35 fd:0x7f586364e7f0
 59839 ms  0x7f35 PR_Close()
 59839 ms  0x7f35 fd:0x7f585d4c8b80
 59839 ms  0x7f35 PR_Close()
 59839 ms  0x7f35 fd:0x7f586364e7f0
 59841 ms  0x7f35 PR_Close()
 59841 ms  0x7f35 fd:0x7f586364eac0
 59842 ms  0x7f35 PR_Close()
 59842 ms  0x7f35 fd:0x7f586364eac0
 59849 ms  0x7f35 PR_Close()
 59849 ms  0x7f35 fd:0x7f58636b23d0
 59850 ms  0x7f35 PR_Close()
 59850 ms  0x7f35 fd:0x7f58636b23d0
 59852 ms  0x7f35 PR_Close()
 59852 ms  0x7f35 fd:0x7f58636b2460
 59858 ms  0x7f35 PR_Close()
 59858 ms  0x7f35 fd:0x7f585d4c8b80
 59858 ms  0x7f35 PR_Close()
 59858 ms  0x7f35 fd:0x7f585d4c8700
           /* TID 0x7f40 */
 59861 ms  0x7f40 PK11_Encrypt()
 59861 ms  0x7f40 symkey:0x7f585d6d9b00
           /* TID 0x7f98 */
 59864 ms  0x7f98 PR_Close()
 59864 ms  0x7f98 fd:0x7f585d4c88b0
 59885 ms  0x7f98 PR_Close()
 59885 ms  0x7f98 fd:0x7f585d433e20
           /* TID 0x7f3a */
 59896 ms  0x7f3a PR_Close()
 59896 ms  0x7f3a fd:0x7f58676e8e20
 59901 ms  0x7f3a PR_Close()
 59901 ms  0x7f3a fd:0x7f5863b71820
           /* TID 0x7f98 */
 59914 ms  0x7f98 PR_Close()
 59914 ms  0x7f98 fd:0x7f585eff81f0
           /* TID 0x7f35 */
 59919 ms  0x7f35 PR_Close()
 59919 ms  0x7f35 fd:0x7f585d4c8b80
 59919 ms  0x7f35 PR_Close()
 59919 ms  0x7f35 fd:0x7f585ef077f0
           /* TID 0x7f40 */
 59919 ms  0x7f40 PR_Close()
 59919 ms  0x7f40 fd:0x7f585ec7c700
 59919 ms     | 0x7f40 PK11_Encrypt()
 59919 ms     | 0x7f40 symkey:0x7f585d6d9b00
 59920 ms  0x7f40 PR_Close()
 59920 ms  0x7f40 fd:0x7f5860a3cee0
           /* TID 0x7f90 */
 59921 ms  0x7f90 PR_Close()
 59921 ms  0x7f90 fd:0x7f585f2cf970
 59921 ms  0x7f90 PR_Close()
 59921 ms  0x7f90 fd:0x7f585d433df0
 59921 ms  0x7f90 PR_Close()
 59921 ms  0x7f90 fd:0x7f585d433df0
 59921 ms  0x7f90 PR_Close()
 59921 ms  0x7f90 fd:0x7f585d433df0
           /* TID 0x7f98 */
 59921 ms  0x7f98 PR_Close()
 59921 ms  0x7f98 fd:0x7f585ec7ce80
           /* TID 0x7f48 */
 59924 ms  0x7f48 PR_Close()
 59924 ms  0x7f48 fd:0x7f585f2cfc10
 59924 ms  0x7f48 PR_Close()
 59924 ms  0x7f48 fd:0x7f585f2cfc10
           /* TID 0x7f3a */
 59929 ms  0x7f3a PR_Close()
 59929 ms  0x7f3a fd:0x7f5863c63910
           /* TID 0x7f35 */
 59931 ms  0x7f35 PR_Close()
 59931 ms  0x7f35 fd:0x7f585d4c8b80
 59932 ms  0x7f35 PR_Close()
 59932 ms  0x7f35 fd:0x7f585d4c84c0
           /* TID 0x7f98 */
 59933 ms  0x7f98 PR_Close()
 59933 ms  0x7f98 fd:0x7f585d4c84f0
 59936 ms  0x7f98 PR_Close()
 59936 ms  0x7f98 fd:0x7f585d4c8430
 59953 ms  0x7f98 PR_Close()
 59953 ms  0x7f98 fd:0x7f585d4c80d0
 59954 ms  0x7f98 PR_Close()
 59954 ms  0x7f98 fd:0x7f585d4c80d0
 59959 ms  0x7f98 PR_Close()
 59959 ms  0x7f98 fd:0x7f585d4c83d0
           /* TID 0x7f35 */
 60125 ms  0x7f35 PR_Close()
 60125 ms  0x7f35 fd:0x7f585d4334f0
 60125 ms  0x7f35 PR_Close()
 60125 ms  0x7f35 fd:0x7f585d4334f0
 60130 ms  0x7f35 PR_Close()
 60130 ms  0x7f35 fd:0x7f5885bda130
 60130 ms  0x7f35 PR_Close()
 60130 ms  0x7f35 fd:0x7f5885bda190
Process terminated
