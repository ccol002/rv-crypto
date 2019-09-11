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
           /* TID 0x2d6c */
   117 ms  0x2d6c PR_Close()
   117 ms  0x2d6c fd:0x7fcd497e6820
           /* TID 0x2d64 */
   295 ms  0x2d64 SSL_ImportFD()
   295 ms  0x2d64 ret:0x7fcd4e151400
   295 ms  0x2d64 SSL_AuthCertificateHook()
   295 ms  0x2d64 fd:0x7fcd4e151400
   295 ms  0x2d64 ret:0x0
   295 ms  0x2d64 PR_Connect()
   295 ms  0x2d64 fd:0x7fcd4e151400
   503 ms  0x2d64 SECKEY_CreateECPrivateKey()
   503 ms  0x2d64 cx:0x7fcd497e9ae8
   505 ms     | 0x2d64 EC_ValidatePublicKey()
   505 ms     | 0x2d64 ret:0x0
   505 ms  0x2d64 ret:0x7fcd38960020::7fcd38960020  80 6d 9c 38                                      .m.8
   505 ms  0x2d64 SECKEY_CreateECPrivateKey()
   505 ms  0x2d64 cx:0x7fcd497e9ae8
   506 ms     | 0x2d64 EC_ValidatePublicKey()
   510 ms     | 0x2d64 ret:0x0
   510 ms  0x2d64 ret:0x7fcd38962020::7fcd38962020  60 6f 9c 38                                      `o.8
           /* TID 0x2d7d */
   652 ms  0x2d7d PR_Close()
   652 ms  0x2d7d fd:0x7fcd4e151d30
   656 ms  0x2d7d PR_Close()
   656 ms  0x2d7d fd:0x7fcd4e151d30
           /* TID 0x2d64 */
   725 ms  SECKEY_ECParamsToKeySize()
   726 ms  0x2d64 ret:0x100
   726 ms  0x2d64 SECKEY_CreateECPrivateKey()
   726 ms  0x2d64 cx:0x7fcd497e9ae8
   727 ms     | 0x2d64 EC_ValidatePublicKey()
   731 ms     | 0x2d64 ret:0x0
   731 ms  0x2d64 ret:0x7fcd3896b020::7fcd3896b020  c0 79 60 38                                      .y`8
   731 ms  0x2d64 PK11_PubDeriveWithKDF()
   731 ms  0x2d64 seckey:0x7fcd3896b020
   731 ms     | 0x2d64 EC_ValidatePublicKey()
   735 ms     | 0x2d64 ret:0x0
   738 ms  0x2d64 ret:0x7fcd4b003000
   739 ms  0x2d64 PK11_DeriveWithFlags()
   739 ms  0x2d64 basekey:0x7fcd4b003000
   739 ms     | 0x2d64 PK11_DeriveWithTemplate()
   739 ms  0x2d64 ret:0x7fcd389f9b80
   739 ms  0x2d64 PK11_Derive()
   739 ms  0x2d64 basekey:0x7fcd389f9b80
   739 ms     | 0x2d64 PK11_DeriveWithTemplate()
   739 ms  0x2d64 ret:0x7fcd389f9c80
   739 ms  0x2d64 SECKEY_DestroyPrivateKey()
   739 ms  0x2d64 privk:0x7fcd3896b020::7fcd3896b020  c0 79 60 38                                      .y`8
   739 ms  0x2d64 privk:0x7fcd3896b020::7fcd3896b020  e5 e5 e5 e5                                      ....
   739 ms  0x2d64 PK11_Encrypt()
   739 ms  0x2d64 symkey:0x7fcd389f9e00
   740 ms  0x2d64 PR_Connect()
   740 ms  0x2d64 fd:0x7fcd4e151e80
           /* TID 0x2d7d */
   777 ms  0x2d7d PR_Close()
   777 ms  0x2d7d fd:0x7fcd4e151df0
           /* TID 0x2d6c */
   793 ms  0x2d6c PR_Close()
   793 ms  0x2d6c fd:0x7fcd4e151df0
           /* TID 0x2dbe */
   793 ms  0x2dbe _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   793 ms  0x2dbe ret:0x0
           /* TID 0x2d64 */
   794 ms  0x2d64 SSL_AuthCertificateComplete()
   794 ms  0x2d64 fd:0x7fcd4e151400
   794 ms  0x2d64 err:0x0
   794 ms  0x2d64 PK11_Encrypt()
   794 ms  0x2d64 symkey:0x7fcd389f9e00
   947 ms  0x2d64 SECKEY_DestroyPrivateKey()
   947 ms  0x2d64 privk:0x7fcd38962020::7fcd38962020  60 6f 9c 38                                      `o.8
   948 ms  0x2d64 privk:0x7fcd38962020::7fcd38962020  e5 e5 e5 e5                                      ....
   948 ms  0x2d64 SECKEY_DestroyPrivateKey()
   948 ms  0x2d64 privk:0x7fcd38960020::7fcd38960020  80 6d 9c 38                                      .m.8
   948 ms  0x2d64 privk:0x7fcd38960020::7fcd38960020  e5 e5 e5 e5                                      ....
  1163 ms  0x2d64 SSL_ImportFD()
  1163 ms  0x2d64 ret:0x7fcd386271c0
  1163 ms  0x2d64 SSL_AuthCertificateHook()
  1163 ms  0x2d64 fd:0x7fcd386271c0
  1163 ms  0x2d64 ret:0x0
  1163 ms  0x2d64 PR_Connect()
  1163 ms  0x2d64 fd:0x7fcd386271c0
  1189 ms  0x2d64 SECKEY_CreateECPrivateKey()
  1189 ms  0x2d64 cx:0x7fcd38608728
  1191 ms     | 0x2d64 EC_ValidatePublicKey()
  1191 ms     | 0x2d64 ret:0x0
  1191 ms  0x2d64 ret:0x7fcd38961820::7fcd38961820  c0 79 60 38                                      .y`8
  1191 ms  0x2d64 SECKEY_CreateECPrivateKey()
  1191 ms  0x2d64 cx:0x7fcd38608728
  1193 ms     | 0x2d64 EC_ValidatePublicKey()
  1197 ms     | 0x2d64 ret:0x0
  1197 ms  0x2d64 ret:0x7fcd38967820::7fcd38967820  00 7b 60 38                                      .{`8
           /* TID 0x2dbe */
  1249 ms  0x2dbe _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1249 ms  0x2dbe ret:0x0
           /* TID 0x2d64 */
  1250 ms  SECKEY_ECParamsToKeySize()
  1250 ms  0x2d64 ret:0x100
  1250 ms  0x2d64 SECKEY_CreateECPrivateKey()
  1250 ms  0x2d64 cx:0x7fcd38608728
  1251 ms     | 0x2d64 EC_ValidatePublicKey()
  1255 ms     | 0x2d64 ret:0x0
  1255 ms  0x2d64 ret:0x7fcd3896b020::7fcd3896b020  20 7e 60 38                                       ~`8
  1255 ms  0x2d64 PK11_PubDeriveWithKDF()
  1255 ms  0x2d64 seckey:0x7fcd3896b020
  1255 ms     | 0x2d64 EC_ValidatePublicKey()
  1259 ms     | 0x2d64 ret:0x0
  1263 ms  0x2d64 ret:0x7fcd4b003000
  1263 ms  0x2d64 PK11_DeriveWithFlags()
  1263 ms  0x2d64 basekey:0x7fcd4b003000
  1263 ms     | 0x2d64 PK11_DeriveWithTemplate()
  1263 ms  0x2d64 ret:0x7fcd3898dc80
  1263 ms  0x2d64 PK11_Derive()
  1263 ms  0x2d64 basekey:0x7fcd3898dc80
  1263 ms     | 0x2d64 PK11_DeriveWithTemplate()
  1263 ms  0x2d64 ret:0x7fcd389fa680
  1263 ms  0x2d64 SECKEY_DestroyPrivateKey()
  1263 ms  0x2d64 privk:0x7fcd3896b020::7fcd3896b020  20 7e 60 38                                       ~`8
  1264 ms  0x2d64 privk:0x7fcd3896b020::7fcd3896b020  e5 e5 e5 e5                                      ....
  1264 ms  0x2d64 PK11_Encrypt()
  1264 ms  0x2d64 symkey:0x7fcd389fab80
  1264 ms  0x2d64 SSL_AuthCertificateComplete()
  1264 ms  0x2d64 fd:0x7fcd386271c0
  1264 ms  0x2d64 err:0x0
  1265 ms  0x2d64 PK11_Encrypt()
  1265 ms  0x2d64 symkey:0x7fcd389fab80
  1315 ms  0x2d64 SECKEY_DestroyPrivateKey()
  1315 ms  0x2d64 privk:0x7fcd38967820::7fcd38967820  00 7b 60 38                                      .{`8
  1315 ms  0x2d64 privk:0x7fcd38967820::7fcd38967820  e5 e5 e5 e5                                      ....
  1316 ms  0x2d64 SECKEY_DestroyPrivateKey()
  1316 ms  0x2d64 privk:0x7fcd38961820::7fcd38961820  c0 79 60 38                                      .y`8
  1316 ms  0x2d64 privk:0x7fcd38961820::7fcd38961820  e5 e5 e5 e5                                      ....
  1319 ms  0x2d64 PK11_Encrypt()
  1319 ms  0x2d64 symkey:0x7fcd389fab80
  1348 ms  0x2d64 PK11_Encrypt()
  1348 ms  0x2d64 symkey:0x7fcd389fab80
  1378 ms  0x2d64 PK11_Encrypt()
  1378 ms  0x2d64 symkey:0x7fcd389fab80
  1406 ms  0x2d64 PK11_Encrypt()
  1406 ms  0x2d64 symkey:0x7fcd389fab80
  1521 ms  0x2d64 PK11_Encrypt()
  1521 ms  0x2d64 symkey:0x7fcd389fab80
  1553 ms  0x2d64 PK11_Encrypt()
  1553 ms  0x2d64 symkey:0x7fcd389fab80
  1584 ms  0x2d64 PK11_Encrypt()
  1584 ms  0x2d64 symkey:0x7fcd389fab80
           /* TID 0x2db8 */
  1613 ms  0x2db8 PR_Close()
  1613 ms  0x2db8 fd:0x7fcd38627280
  1613 ms  0x2db8 PR_Close()
  1613 ms  0x2db8 fd:0x7fcd38627340
  1613 ms  0x2db8 PR_Close()
  1613 ms  0x2db8 fd:0x7fcd38627280
  1613 ms  0x2db8 PR_Close()
  1613 ms  0x2db8 fd:0x7fcd38627340
  1613 ms  0x2db8 PR_Close()
  1613 ms  0x2db8 fd:0x7fcd38627280
  1613 ms  0x2db8 PR_Close()
  1613 ms  0x2db8 fd:0x7fcd38627340
  1613 ms  0x2db8 PR_Close()
  1613 ms  0x2db8 fd:0x7fcd38627280
  1613 ms  0x2db8 PR_Close()
  1613 ms  0x2db8 fd:0x7fcd38627340
  1614 ms  0x2db8 PR_Close()
  1614 ms  0x2db8 fd:0x7fcd38627280
  1614 ms  0x2db8 PR_Close()
  1614 ms  0x2db8 fd:0x7fcd38627340
  1614 ms  0x2db8 PR_Close()
  1614 ms  0x2db8 fd:0x7fcd38627280
  1614 ms  0x2db8 PR_Close()
  1614 ms  0x2db8 fd:0x7fcd38627340
  1614 ms  0x2db8 PR_Close()
  1614 ms  0x2db8 fd:0x7fcd38627280
  1614 ms  0x2db8 PR_Close()
  1614 ms  0x2db8 fd:0x7fcd38627340
  1614 ms  0x2db8 PR_Close()
  1614 ms  0x2db8 fd:0x7fcd38627280
  1614 ms  0x2db8 PR_Close()
  1614 ms  0x2db8 fd:0x7fcd38627340
  1614 ms  0x2db8 PR_Close()
  1614 ms  0x2db8 fd:0x7fcd38627280
  1614 ms  0x2db8 PR_Close()
  1614 ms  0x2db8 fd:0x7fcd38627340
  1614 ms  0x2db8 PR_Close()
  1614 ms  0x2db8 fd:0x7fcd38627280
  1614 ms  0x2db8 PR_Close()
  1614 ms  0x2db8 fd:0x7fcd38627340
  1614 ms  0x2db8 PR_Close()
  1614 ms  0x2db8 fd:0x7fcd38627280
  1615 ms  0x2db8 PR_Close()
  1615 ms  0x2db8 fd:0x7fcd38627340
  1615 ms  0x2db8 PR_Close()
  1615 ms  0x2db8 fd:0x7fcd38627280
  1615 ms  0x2db8 PR_Close()
  1615 ms  0x2db8 fd:0x7fcd38627340
  1615 ms  0x2db8 PR_Close()
  1615 ms  0x2db8 fd:0x7fcd38627280
  1615 ms  0x2db8 PR_Close()
  1615 ms  0x2db8 fd:0x7fcd38627340
  1615 ms  0x2db8 PR_Close()
  1615 ms  0x2db8 fd:0x7fcd38627280
  1615 ms  0x2db8 PR_Close()
  1615 ms  0x2db8 fd:0x7fcd38627340
  1619 ms  0x2db8 PR_Close()
  1619 ms  0x2db8 fd:0x7fcd38627280
  1619 ms  0x2db8 PR_Close()
  1619 ms  0x2db8 fd:0x7fcd38627280
  1622 ms  0x2db8 PR_Close()
  1622 ms  0x2db8 fd:0x7fcd38627280
  1622 ms  0x2db8 PR_Close()
  1622 ms  0x2db8 fd:0x7fcd386272b0
  1625 ms  0x2db8 PR_Close()
  1625 ms  0x2db8 fd:0x7fcd386272b0
  1625 ms  0x2db8 PR_Close()
  1625 ms  0x2db8 fd:0x7fcd386272b0
  1628 ms  0x2db8 PR_Close()
  1628 ms  0x2db8 fd:0x7fcd386272b0
  1628 ms  0x2db8 PR_Close()
  1628 ms  0x2db8 fd:0x7fcd386272b0
  1682 ms  0x2db8 PR_Close()
  1682 ms  0x2db8 fd:0x7fcd386272b0
  1683 ms  0x2db8 PR_Close()
  1683 ms  0x2db8 fd:0x7fcd386272b0
  1690 ms  0x2db8 PR_Close()
  1690 ms  0x2db8 fd:0x7fcd386272b0
  1690 ms  0x2db8 PR_Close()
  1690 ms  0x2db8 fd:0x7fcd386272b0
  1697 ms  0x2db8 PR_Close()
  1697 ms  0x2db8 fd:0x7fcd386272b0
  1697 ms  0x2db8 PR_Close()
  1697 ms  0x2db8 fd:0x7fcd386272b0
  1701 ms  0x2db8 PR_Close()
  1701 ms  0x2db8 fd:0x7fcd386272b0
  1702 ms  0x2db8 PR_Close()
  1702 ms  0x2db8 fd:0x7fcd386272b0
           /* TID 0x2db5 */
  1702 ms  0x2db5 PR_Close()
  1702 ms  0x2db5 fd:0x7fcd386272b0
  1702 ms  0x2db5 PR_Close()
  1702 ms  0x2db5 fd:0x7fcd386272b0
  1702 ms  0x2db5 PR_Close()
  1702 ms  0x2db5 fd:0x7fcd386272b0
  1702 ms  0x2db5 PR_Close()
  1702 ms  0x2db5 fd:0x7fcd386272b0
  1702 ms  0x2db5 PR_Close()
  1702 ms  0x2db5 fd:0x7fcd386272b0
  1702 ms  0x2db5 PR_Close()
  1702 ms  0x2db5 fd:0x7fcd386272b0
  1702 ms  0x2db5 PR_Close()
  1702 ms  0x2db5 fd:0x7fcd386272b0
  1702 ms  0x2db5 PR_Close()
  1702 ms  0x2db5 fd:0x7fcd386272b0
  1702 ms  0x2db5 PR_Close()
  1702 ms  0x2db5 fd:0x7fcd386272b0
  1703 ms  0x2db5 PR_Close()
  1703 ms  0x2db5 fd:0x7fcd386272b0
  1703 ms  0x2db5 PR_Close()
  1703 ms  0x2db5 fd:0x7fcd386272b0
  1703 ms  0x2db5 PR_Close()
  1703 ms  0x2db5 fd:0x7fcd386272b0
  1703 ms  0x2db5 PR_Close()
  1703 ms  0x2db5 fd:0x7fcd386272b0
  1703 ms  0x2db5 PR_Close()
  1703 ms  0x2db5 fd:0x7fcd386272b0
  1703 ms  0x2db5 PR_Close()
  1703 ms  0x2db5 fd:0x7fcd386272b0
           /* TID 0x2d7d */
  2206 ms  0x2d7d PR_Close()
  2206 ms  0x2d7d fd:0x7fcd38627670
  2208 ms  0x2d7d PR_Close()
  2208 ms  0x2d7d fd:0x7fcd38627670
  2704 ms  0x2d7d PR_Close()
  2704 ms  0x2d7d fd:0x7fcd38627670
           /* TID 0x2d6c */
  4188 ms  0x2d6c PR_Close()
  4188 ms  0x2d6c fd:0x7fcd38627670
  4188 ms  0x2d6c PR_Close()
  4188 ms  0x2d6c fd:0x7fcd386277c0
  4188 ms  0x2d6c PR_Close()
  4188 ms  0x2d6c fd:0x7fcd38627820
           /* TID 0x2d64 */
  6043 ms  0x2d64 SSL_ImportFD()
  6043 ms  0x2d64 ret:0x7fcd385a0820
  6043 ms  0x2d64 SSL_AuthCertificateHook()
  6043 ms  0x2d64 fd:0x7fcd385a0820
  6043 ms  0x2d64 ret:0x0
  6043 ms  0x2d64 PR_Connect()
  6043 ms  0x2d64 fd:0x7fcd385a0820
  6216 ms  0x2d64 SECKEY_CreateECPrivateKey()
  6216 ms  0x2d64 cx:0x7fcd38608a68
  6217 ms     | 0x2d64 EC_ValidatePublicKey()
  6217 ms     | 0x2d64 ret:0x0
  6217 ms  0x2d64 ret:0x7fcd38958020::7fcd38958020  f0 1b 5a 38                                      ..Z8
  6217 ms  0x2d64 SECKEY_CreateECPrivateKey()
  6217 ms  0x2d64 cx:0x7fcd38608a68
  6218 ms     | 0x2d64 EC_ValidatePublicKey()
  6220 ms     | 0x2d64 ret:0x0
  6220 ms  0x2d64 ret:0x7fcd38969820::7fcd38969820  d0 1d 5a 38                                      ..Z8
  6403 ms  SECKEY_ECParamsToKeySize()
  6403 ms  0x2d64 ret:0x100
  6403 ms  0x2d64 SECKEY_CreateECPrivateKey()
  6403 ms  0x2d64 cx:0x7fcd38608a68
  6405 ms     | 0x2d64 EC_ValidatePublicKey()
  6410 ms     | 0x2d64 ret:0x0
  6410 ms  0x2d64 ret:0x7fcd4f425020::7fcd4f425020  c0 89 94 38                                      ...8
  6410 ms  0x2d64 PK11_PubDeriveWithKDF()
  6410 ms  0x2d64 seckey:0x7fcd4f425020
  6410 ms     | 0x2d64 EC_ValidatePublicKey()
  6427 ms     | 0x2d64 ret:0x0
  6429 ms  0x2d64 ret:0x7fcd4b003000
  6429 ms  0x2d64 PK11_DeriveWithFlags()
  6429 ms  0x2d64 basekey:0x7fcd4b003000
  6429 ms     | 0x2d64 PK11_DeriveWithTemplate()
  6429 ms  0x2d64 ret:0x7fcd385a4b00
  6429 ms  0x2d64 PK11_Derive()
  6429 ms  0x2d64 basekey:0x7fcd385a4b00
  6429 ms     | 0x2d64 PK11_DeriveWithTemplate()
  6429 ms  0x2d64 ret:0x7fcd385a4d80
  6429 ms  0x2d64 SECKEY_DestroyPrivateKey()
  6429 ms  0x2d64 privk:0x7fcd4f425020::7fcd4f425020  c0 89 94 38                                      ...8
  6429 ms  0x2d64 privk:0x7fcd4f425020::7fcd4f425020  e5 e5 e5 e5                                      ....
  6429 ms  0x2d64 PK11_Encrypt()
  6429 ms  0x2d64 symkey:0x7fcd385a5400
           /* TID 0x2dbe */
  6462 ms  0x2dbe _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6462 ms  0x2dbe ret:0x0
           /* TID 0x2d6c */
  6462 ms  0x2d6c PR_Close()
  6462 ms  0x2d6c fd:0x7fcd385a05b0
  6518 ms  0x2d6c PR_Close()
  6518 ms  0x2d6c fd:0x7fcd385a05b0
           /* TID 0x2dbe */
  6518 ms  0x2dbe _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6519 ms  0x2dbe ret:0x0
           /* TID 0x2d64 */
  6555 ms  0x2d64 SSL_AuthCertificateComplete()
  6555 ms  0x2d64 fd:0x7fcd385a0820
  6555 ms  0x2d64 err:0x0
  6556 ms  0x2d64 PK11_Encrypt()
  6556 ms  0x2d64 symkey:0x7fcd385a5400
  6608 ms  0x2d64 SECKEY_DestroyPrivateKey()
  6608 ms  0x2d64 privk:0x7fcd38969820::7fcd38969820  d0 1d 5a 38                                      ..Z8
  6608 ms  0x2d64 privk:0x7fcd38969820::7fcd38969820  e5 e5 e5 e5                                      ....
  6608 ms  0x2d64 SECKEY_DestroyPrivateKey()
  6608 ms  0x2d64 privk:0x7fcd38958020::7fcd38958020  f0 1b 5a 38                                      ..Z8
  6609 ms  0x2d64 privk:0x7fcd38958020::7fcd38958020  e5 e5 e5 e5                                      ....
           /* TID 0x2d6c */
  6790 ms  0x2d6c PR_Close()
  6790 ms  0x2d6c fd:0x7fcd38627a60
           /* TID 0x2d7b */
  6806 ms  0x2d7b PR_Close()
  6806 ms  0x2d7b fd:0x7fcd38627d90
           /* TID 0x2d64 */
  6864 ms  0x2d64 PK11_Encrypt()
  6864 ms  0x2d64 symkey:0x7fcd385a5400
  6865 ms  0x2d64 SSL_ImportFD()
  6865 ms  0x2d64 ret:0x7fcd4f1439d0
  6865 ms  0x2d64 SSL_AuthCertificateHook()
  6865 ms  0x2d64 fd:0x7fcd4f1439d0
  6865 ms  0x2d64 ret:0x0
  6865 ms  0x2d64 PR_Connect()
  6865 ms  0x2d64 fd:0x7fcd4f1439d0
  6865 ms  0x2d64 SSL_ImportFD()
  6865 ms  0x2d64 ret:0x7fcd4f51f160
  6865 ms  0x2d64 SSL_AuthCertificateHook()
  6865 ms  0x2d64 fd:0x7fcd4f51f160
  6865 ms  0x2d64 ret:0x0
  6865 ms  0x2d64 PR_Connect()
  6865 ms  0x2d64 fd:0x7fcd4f51f160
  6865 ms  0x2d64 SSL_ImportFD()
  6865 ms  0x2d64 ret:0x7fcd4f51f8e0
  6865 ms  0x2d64 SSL_AuthCertificateHook()
  6865 ms  0x2d64 fd:0x7fcd4f51f8e0
  6865 ms  0x2d64 ret:0x0
  6865 ms  0x2d64 PR_Connect()
  6865 ms  0x2d64 fd:0x7fcd4f51f8e0
  6865 ms  0x2d64 SSL_ImportFD()
  6865 ms  0x2d64 ret:0x7fcd4f53a0d0
  6865 ms  0x2d64 SSL_AuthCertificateHook()
  6865 ms  0x2d64 fd:0x7fcd4f53a0d0
  6865 ms  0x2d64 ret:0x0
  6865 ms  0x2d64 PR_Connect()
  6865 ms  0x2d64 fd:0x7fcd4f53a0d0
  6866 ms  0x2d64 SSL_ImportFD()
  6866 ms  0x2d64 ret:0x7fcd4f53a340
  6866 ms  0x2d64 SSL_AuthCertificateHook()
  6866 ms  0x2d64 fd:0x7fcd4f53a340
  6866 ms  0x2d64 ret:0x0
  6866 ms  0x2d64 PR_Connect()
  6866 ms  0x2d64 fd:0x7fcd4f53a340
  7035 ms  0x2d64 SECKEY_CreateECPrivateKey()
  7035 ms  0x2d64 cx:0x7fcd38609768
  7037 ms     | 0x2d64 EC_ValidatePublicKey()
  7037 ms     | 0x2d64 ret:0x0
  7038 ms  0x2d64 ret:0x7fcd49763820::7fcd49763820  e0 8c 94 38                                      ...8
  7038 ms  0x2d64 SECKEY_CreateECPrivateKey()
  7038 ms  0x2d64 cx:0x7fcd38609768
  7043 ms     | 0x2d64 EC_ValidatePublicKey()
  7050 ms     | 0x2d64 ret:0x0
  7051 ms  0x2d64 ret:0x7fcd4a7de820::7fcd4a7de820  a0 86 94 38                                      ...8
           /* TID 0x2d6c */
  7056 ms  0x2d6c PR_Close()
  7056 ms  0x2d6c fd:0x7fcd38987130
           /* TID 0x2d64 */
  7063 ms  0x2d64 PK11_Encrypt()
  7063 ms  0x2d64 symkey:0x7fcd385a5400
  7063 ms  0x2d64 SECKEY_CreateECPrivateKey()
  7063 ms  0x2d64 cx:0x7fcd38609428
  7064 ms     | 0x2d64 EC_ValidatePublicKey()
  7064 ms     | 0x2d64 ret:0x0
  7064 ms  0x2d64 ret:0x7fcd4e1b8020::7fcd4e1b8020  d0 33 98 38                                      .3.8
  7065 ms  0x2d64 SECKEY_CreateECPrivateKey()
  7065 ms  0x2d64 cx:0x7fcd38609428
  7066 ms     | 0x2d64 EC_ValidatePublicKey()
  7069 ms     | 0x2d64 ret:0x0
  7069 ms  0x2d64 ret:0x7fcd4f430820::7fcd4f430820  30 38 98 38                                      08.8
  7074 ms  0x2d64 SECKEY_CreateECPrivateKey()
  7074 ms  0x2d64 cx:0x7fcd386095c8
  7074 ms     | 0x2d64 EC_ValidatePublicKey()
  7074 ms     | 0x2d64 ret:0x0
  7074 ms  0x2d64 ret:0x7fcd4f5a5020::7fcd4f5a5020  c0 04 7e 49                                      ..~I
  7074 ms  0x2d64 SECKEY_CreateECPrivateKey()
  7074 ms  0x2d64 cx:0x7fcd386095c8
  7075 ms     | 0x2d64 EC_ValidatePublicKey()
  7077 ms     | 0x2d64 ret:0x0
  7078 ms  0x2d64 ret:0x7fcd4f804820::7fcd4f804820  80 08 7e 49                                      ..~I
  7079 ms  0x2d64 SECKEY_CreateECPrivateKey()
  7079 ms  0x2d64 cx:0x7fcd38609908
  7080 ms     | 0x2d64 EC_ValidatePublicKey()
  7080 ms     | 0x2d64 ret:0x0
  7080 ms  0x2d64 ret:0x7fcd4f80f020::7fcd4f80f020  e0 0c 7e 49                                      ..~I
  7080 ms  0x2d64 SECKEY_CreateECPrivateKey()
  7080 ms  0x2d64 cx:0x7fcd38609908
  7081 ms     | 0x2d64 EC_ValidatePublicKey()
  7083 ms     | 0x2d64 ret:0x0
  7083 ms  0x2d64 ret:0x7fcd4fb9d020::7fcd4fb9d020  90 a2 22 4a                                      .."J
  7084 ms  0x2d64 SECKEY_CreateECPrivateKey()
  7084 ms  0x2d64 cx:0x7fcd38609aa8
  7085 ms     | 0x2d64 EC_ValidatePublicKey()
  7085 ms     | 0x2d64 ret:0x0
  7085 ms  0x2d64 ret:0x7fcd4fba3020::7fcd4fba3020  b0 ca 9f 4a                                      ...J
  7085 ms  0x2d64 SECKEY_CreateECPrivateKey()
  7085 ms  0x2d64 cx:0x7fcd38609aa8
  7085 ms     | 0x2d64 EC_ValidatePublicKey()
  7087 ms     | 0x2d64 ret:0x0
  7087 ms  0x2d64 ret:0x7fcd4fbaa820::7fcd4fbaa820  60 a5 cd 4a                                      `..J
  7221 ms  0x2d64 PK11_Derive()
  7221 ms  0x2d64 basekey:0x7fcd38946080
  7221 ms     | 0x2d64 PK11_DeriveWithTemplate()
  7221 ms  0x2d64 ret:0x7fcd4b003000
  7221 ms  0x2d64 PK11_Encrypt()
  7221 ms  0x2d64 symkey:0x7fcd38946300
  7223 ms  0x2d64 SECKEY_DestroyPrivateKey()
  7223 ms  0x2d64 privk:0x7fcd4a7de820::7fcd4a7de820  a0 86 94 38                                      ...8
  7223 ms  0x2d64 privk:0x7fcd4a7de820::7fcd4a7de820  e5 e5 e5 e5                                      ....
  7223 ms  0x2d64 SECKEY_DestroyPrivateKey()
  7223 ms  0x2d64 privk:0x7fcd49763820::7fcd49763820  e0 8c 94 38                                      ...8
  7224 ms  0x2d64 privk:0x7fcd49763820::7fcd49763820  e5 e5 e5 e5                                      ....
  7224 ms  0x2d64 PK11_Encrypt()
  7224 ms  0x2d64 symkey:0x7fcd38946300
           /* TID 0x2d6c */
  7241 ms  0x2d6c PR_Close()
  7241 ms  0x2d6c fd:0x7fcd497ed0a0
           /* TID 0x2d64 */
  7245 ms  0x2d64 PK11_Encrypt()
  7245 ms  0x2d64 symkey:0x7fcd385a5400
  7247 ms  0x2d64 PK11_Derive()
  7247 ms  0x2d64 basekey:0x7fcd38946a00
  7247 ms     | 0x2d64 PK11_DeriveWithTemplate()
  7247 ms  0x2d64 ret:0x7fcd38946500
  7248 ms  0x2d64 PK11_Encrypt()
  7248 ms  0x2d64 symkey:0x7fcd38946b80
  7250 ms  0x2d64 SECKEY_DestroyPrivateKey()
  7250 ms  0x2d64 privk:0x7fcd4f430820::7fcd4f430820  30 38 98 38                                      08.8
  7250 ms  0x2d64 privk:0x7fcd4f430820::7fcd4f430820  e5 e5 e5 e5                                      ....
  7250 ms  0x2d64 SECKEY_DestroyPrivateKey()
  7250 ms  0x2d64 privk:0x7fcd4e1b8020::7fcd4e1b8020  d0 33 98 38                                      .3.8
  7250 ms  0x2d64 privk:0x7fcd4e1b8020::7fcd4e1b8020  e5 e5 e5 e5                                      ....
  7251 ms  0x2d64 PK11_Encrypt()
  7251 ms  0x2d64 symkey:0x7fcd38946b80
  7254 ms  0x2d64 PK11_Derive()
  7254 ms  0x2d64 basekey:0x7fcd38946d00
  7254 ms     | 0x2d64 PK11_DeriveWithTemplate()
  7254 ms  0x2d64 ret:0x7fcd38946c80
  7255 ms  0x2d64 PK11_Encrypt()
  7255 ms  0x2d64 symkey:0x7fcd38946e80
  7257 ms  0x2d64 SECKEY_DestroyPrivateKey()
  7257 ms  0x2d64 privk:0x7fcd4f804820::7fcd4f804820  80 08 7e 49                                      ..~I
  7257 ms  0x2d64 privk:0x7fcd4f804820::7fcd4f804820  e5 e5 e5 e5                                      ....
  7257 ms  0x2d64 SECKEY_DestroyPrivateKey()
  7257 ms  0x2d64 privk:0x7fcd4f5a5020::7fcd4f5a5020  c0 04 7e 49                                      ..~I
  7257 ms  0x2d64 privk:0x7fcd4f5a5020::7fcd4f5a5020  e5 e5 e5 e5                                      ....
  7258 ms  0x2d64 PK11_Encrypt()
  7258 ms  0x2d64 symkey:0x7fcd38946e80
  7259 ms  0x2d64 PK11_Derive()
  7259 ms  0x2d64 basekey:0x7fcd38947000
  7259 ms     | 0x2d64 PK11_DeriveWithTemplate()
  7259 ms  0x2d64 ret:0x7fcd38946f80
  7259 ms  0x2d64 PK11_Encrypt()
  7259 ms  0x2d64 symkey:0x7fcd38947180
  7261 ms  0x2d64 SECKEY_DestroyPrivateKey()
  7261 ms  0x2d64 privk:0x7fcd4fb9d020::7fcd4fb9d020  90 a2 22 4a                                      .."J
  7261 ms  0x2d64 privk:0x7fcd4fb9d020::7fcd4fb9d020  e5 e5 e5 e5                                      ....
  7261 ms  0x2d64 SECKEY_DestroyPrivateKey()
  7261 ms  0x2d64 privk:0x7fcd4f80f020::7fcd4f80f020  e0 0c 7e 49                                      ..~I
  7261 ms  0x2d64 privk:0x7fcd4f80f020::7fcd4f80f020  e5 e5 e5 e5                                      ....
  7262 ms  0x2d64 PK11_Encrypt()
  7262 ms  0x2d64 symkey:0x7fcd38947180
  7262 ms  0x2d64 PK11_Derive()
  7262 ms  0x2d64 basekey:0x7fcd38947300
  7263 ms     | 0x2d64 PK11_DeriveWithTemplate()
  7263 ms  0x2d64 ret:0x7fcd38947280
  7263 ms  0x2d64 PK11_Encrypt()
  7263 ms  0x2d64 symkey:0x7fcd38947480
  7264 ms  0x2d64 SECKEY_DestroyPrivateKey()
  7264 ms  0x2d64 privk:0x7fcd4fbaa820::7fcd4fbaa820  60 a5 cd 4a                                      `..J
  7264 ms  0x2d64 privk:0x7fcd4fbaa820::7fcd4fbaa820  e5 e5 e5 e5                                      ....
  7264 ms  0x2d64 SECKEY_DestroyPrivateKey()
  7264 ms  0x2d64 privk:0x7fcd4fba3020::7fcd4fba3020  b0 ca 9f 4a                                      ...J
  7264 ms  0x2d64 privk:0x7fcd4fba3020::7fcd4fba3020  e5 e5 e5 e5                                      ....
  7265 ms  0x2d64 PK11_Encrypt()
  7265 ms  0x2d64 symkey:0x7fcd38947480
  7422 ms  0x2d64 PK11_Encrypt()
  7422 ms  0x2d64 symkey:0x7fcd385a5400
           /* TID 0x2d6c */
  7426 ms  0x2d6c PR_Close()
  7426 ms  0x2d6c fd:0x7fcd497e6bb0
           /* TID 0x2d64 */
  7597 ms  0x2d64 PK11_Encrypt()
  7597 ms  0x2d64 symkey:0x7fcd385a5400
           /* TID 0x2d6c */
  7600 ms  0x2d6c PR_Close()
  7600 ms  0x2d6c fd:0x7fcd497ed400
  7603 ms  0x2d6c PR_Close()
  7603 ms  0x2d6c fd:0x7fcd497ed400
  7612 ms  0x2d6c PR_Close()
  7612 ms  0x2d6c fd:0x7fcd497ed460
  7643 ms  0x2d6c PR_Close()
  7643 ms  0x2d6c fd:0x7fcd497e6a00
  7647 ms  0x2d6c PR_Close()
  7647 ms  0x2d6c fd:0x7fcd497ed400
           /* TID 0x2d64 */
  7731 ms  0x2d64 PK11_Encrypt()
  7731 ms  0x2d64 symkey:0x7fcd38947480
  7732 ms  0x2d64 PK11_Encrypt()
  7732 ms  0x2d64 symkey:0x7fcd38946e80
  7732 ms  0x2d64 PK11_Encrypt()
  7732 ms  0x2d64 symkey:0x7fcd38946b80
  7733 ms  0x2d64 PK11_Encrypt()
  7733 ms  0x2d64 symkey:0x7fcd38947180
  7733 ms  0x2d64 PK11_Encrypt()
  7733 ms  0x2d64 symkey:0x7fcd38946300
           /* TID 0x2d6c */
  7736 ms  0x2d6c PR_Close()
  7736 ms  0x2d6c fd:0x7fcd38987490
  7775 ms  0x2d6c PR_Close()
  7775 ms  0x2d6c fd:0x7fcd38987490
           /* TID 0x2d64 */
  7798 ms  0x2d64 PK11_Encrypt()
  7798 ms  0x2d64 symkey:0x7fcd385a5400
  7906 ms  0x2d64 PK11_Encrypt()
  7906 ms  0x2d64 symkey:0x7fcd38946e80
           /* TID 0x2d6c */
  7907 ms  0x2d6c PR_Close()
  7907 ms  0x2d6c fd:0x7fcd4a7f7730
           /* TID 0x2d64 */
  7907 ms  0x2d64 PK11_Encrypt()
  7907 ms  0x2d64 symkey:0x7fcd38946300
  7908 ms  0x2d64 PK11_Encrypt()
  7908 ms  0x2d64 symkey:0x7fcd38947480
           /* TID 0x2d6c */
  7909 ms  0x2d6c PR_Close()
  7909 ms  0x2d6c fd:0x7fcd497edbb0
  7909 ms  0x2d6c PR_Close()
  7909 ms  0x2d6c fd:0x7fcd497edbb0
           /* TID 0x2d64 */
  7910 ms  0x2d64 PK11_Encrypt()
  7910 ms  0x2d64 symkey:0x7fcd38947180
           /* TID 0x2d6c */
  7911 ms  0x2d6c PR_Close()
  7911 ms  0x2d6c fd:0x7fcd497edbb0
           /* TID 0x2d64 */
  7943 ms  0x2d64 PK11_Encrypt()
  7943 ms  0x2d64 symkey:0x7fcd38946b80
           /* TID 0x2d6c */
  7945 ms  0x2d6c PR_Close()
  7945 ms  0x2d6c fd:0x7fcd38987490
           /* TID 0x2d64 */
  7974 ms  0x2d64 PK11_Encrypt()
  7974 ms  0x2d64 symkey:0x7fcd385a5400
           /* TID 0x2d6c */
  7976 ms  0x2d6c PR_Close()
  7976 ms  0x2d6c fd:0x7fcd497edbb0
  8123 ms  0x2d6c PR_Close()
  8123 ms  0x2d6c fd:0x7fcd497ed3d0
  8133 ms  0x2d6c PR_Close()
  8133 ms  0x2d6c fd:0x7fcd497ed3d0
  8142 ms  0x2d6c PR_Close()
  8142 ms  0x2d6c fd:0x7fcd497ed460
  8145 ms  0x2d6c PR_Close()
  8145 ms  0x2d6c fd:0x7fcd497ed460
  8152 ms  0x2d6c PR_Close()
  8152 ms  0x2d6c fd:0x7fcd497edb80
           /* TID 0x2d64 */
  8155 ms  0x2d64 PK11_Encrypt()
  8155 ms  0x2d64 symkey:0x7fcd385a5400
  8157 ms  0x2d64 PK11_Encrypt()
  8157 ms  0x2d64 symkey:0x7fcd38947480
  8159 ms  0x2d64 PK11_Encrypt()
  8159 ms  0x2d64 symkey:0x7fcd38946e80
  8161 ms  0x2d64 PK11_Encrypt()
  8161 ms  0x2d64 symkey:0x7fcd38946b80
  8163 ms  0x2d64 PK11_Encrypt()
  8163 ms  0x2d64 symkey:0x7fcd38947180
  8189 ms  0x2d64 PK11_Encrypt()
  8189 ms  0x2d64 symkey:0x7fcd38946300
           /* TID 0x2d6c */
  8190 ms  0x2d6c PR_Close()
  8190 ms  0x2d6c fd:0x7fcd4a74f670
           /* TID 0x2d64 */
  8363 ms  0x2d64 PK11_Encrypt()
  8363 ms  0x2d64 symkey:0x7fcd38946300
           /* TID 0x2d6c */
  8364 ms  0x2d6c PR_Close()
  8364 ms  0x2d6c fd:0x7fcd38987490
           /* TID 0x2d64 */
  8442 ms  0x2d64 PK11_Encrypt()
  8442 ms  0x2d64 symkey:0x7fcd385a5400
           /* TID 0x2d6c */
  8446 ms  0x2d6c PR_Close()
  8446 ms  0x2d6c fd:0x7fcd38627dc0
           /* TID 0x2d64 */
  8542 ms  0x2d64 PK11_Encrypt()
  8542 ms  0x2d64 symkey:0x7fcd38946e80
           /* TID 0x2d6c */
  8547 ms  0x2d6c PR_Close()
  8547 ms  0x2d6c fd:0x7fcd4a74f310
           /* TID 0x2d64 */
  8547 ms  0x2d64 PK11_Encrypt()
  8547 ms  0x2d64 symkey:0x7fcd38947480
           /* TID 0x2d6c */
  8553 ms  0x2d6c PR_Close()
  8553 ms  0x2d6c fd:0x7fcd497edb50
           /* TID 0x2d64 */
  8594 ms  0x2d64 PK11_Encrypt()
  8594 ms  0x2d64 symkey:0x7fcd38946b80
           /* TID 0x2d6c */
  8594 ms  0x2d6c PR_Close()
  8594 ms  0x2d6c fd:0x7fcd38987490
           /* TID 0x2d64 */
  8646 ms  0x2d64 PK11_Encrypt()
  8646 ms  0x2d64 symkey:0x7fcd38947180
           /* TID 0x2d6c */
  8647 ms  0x2d6c PR_Close()
  8647 ms  0x2d6c fd:0x7fcd497ed3d0
           /* TID 0x2d64 */
  8705 ms  0x2d64 PK11_Encrypt()
  8705 ms  0x2d64 symkey:0x7fcd38946300
           /* TID 0x2d6c */
  8707 ms  0x2d6c PR_Close()
  8707 ms  0x2d6c fd:0x7fcd497e6f40
           /* TID 0x2d64 */
  8743 ms  0x2d64 PK11_Encrypt()
  8743 ms  0x2d64 symkey:0x7fcd38947480
           /* TID 0x2d6c */
  8744 ms  0x2d6c PR_Close()
  8744 ms  0x2d6c fd:0x7fcd38627dc0
  8776 ms  0x2d6c PR_Close()
  8776 ms  0x2d6c fd:0x7fcd497ed460
  8790 ms  0x2d6c PR_Close()
  8790 ms  0x2d6c fd:0x7fcd497e6f40
  8796 ms  0x2d6c PR_Close()
  8796 ms  0x2d6c fd:0x7fcd38987490
  8882 ms  0x2d6c PR_Close()
  8882 ms  0x2d6c fd:0x7fcd497edb50
  8944 ms  0x2d6c PR_Close()
  8944 ms  0x2d6c fd:0x7fcd497edb50
  8998 ms  0x2d6c PR_Close()
  8998 ms  0x2d6c fd:0x7fcd497e6f40
           /* TID 0x2d64 */
  8999 ms  0x2d64 PK11_Encrypt()
  8999 ms  0x2d64 symkey:0x7fcd38947180
  9018 ms  0x2d64 PK11_Encrypt()
  9018 ms  0x2d64 symkey:0x7fcd385a5400
  9025 ms  0x2d64 PR_Close()
  9025 ms  0x2d64 fd:0x7fcd4a280ca0
           /* TID 0x2d59 */
  9028 ms  0x2d59 EC_ValidatePublicKey()
  9030 ms  0x2d59 ret:0x0
  9030 ms  0x2d59 EC_ValidatePublicKey()
  9035 ms  0x2d59 ret:0x0
  9035 ms  0x2d59 EC_ValidatePublicKey()
  9037 ms  0x2d59 ret:0x0
  9037 ms  0x2d59 EC_ValidatePublicKey()
  9038 ms  0x2d59 ret:0x0
  9038 ms  0x2d59 EC_ValidatePublicKey()
  9040 ms  0x2d59 ret:0x0
  9040 ms  0x2d59 EC_ValidatePublicKey()
  9041 ms  0x2d59 ret:0x0
  9041 ms  0x2d59 EC_ValidatePublicKey()
  9045 ms  0x2d59 ret:0x0
  9045 ms  0x2d59 EC_ValidatePublicKey()
  9046 ms  0x2d59 ret:0x0
  9046 ms  0x2d59 EC_ValidatePublicKey()
  9048 ms  0x2d59 ret:0x0
  9048 ms  0x2d59 EC_ValidatePublicKey()
  9049 ms  0x2d59 ret:0x0
           /* TID 0x2d64 */
  9049 ms  0x2d64 PR_Close()
  9049 ms  0x2d64 fd:0x7fcd4f51f8e0
  9050 ms     | 0x2d64 PK11_Encrypt()
  9050 ms     | 0x2d64 symkey:0x7fcd38946300
  9051 ms  0x2d64 PR_Close()
  9051 ms  0x2d64 fd:0x7fcd4f51f160
  9051 ms     | 0x2d64 PK11_Encrypt()
  9051 ms     | 0x2d64 symkey:0x7fcd38946e80
  9051 ms  0x2d64 PR_Close()
  9051 ms  0x2d64 fd:0x7fcd4f1439d0
  9051 ms     | 0x2d64 PK11_Encrypt()
  9051 ms     | 0x2d64 symkey:0x7fcd38946b80
  9052 ms  0x2d64 PR_Close()
  9052 ms  0x2d64 fd:0x7fcd386271c0
  9052 ms     | 0x2d64 PK11_Encrypt()
  9052 ms     | 0x2d64 symkey:0x7fcd389fab80
  9052 ms  0x2d64 PR_Close()
  9052 ms  0x2d64 fd:0x7fcd4e151e80
  9052 ms  0x2d64 PR_Close()
  9052 ms  0x2d64 fd:0x7fcd4e151400
  9052 ms     | 0x2d64 PK11_Encrypt()
  9052 ms     | 0x2d64 symkey:0x7fcd389f9e00
  9052 ms  0x2d64 PR_Close()
  9052 ms  0x2d64 fd:0x7fcd4e143b50
  9052 ms  0x2d64 PR_Close()
  9052 ms  0x2d64 fd:0x7fcd49bfcf70
  9052 ms     | 0x2d64 PK11_Encrypt()
  9052 ms     | 0x2d64 symkey:0x7fcd4b003700
  9053 ms  0x2d64 PR_Close()
  9053 ms  0x2d64 fd:0x7fcd4f53a340
  9053 ms     | 0x2d64 PK11_Encrypt()
  9053 ms     | 0x2d64 symkey:0x7fcd38947480
  9053 ms  0x2d64 PR_Close()
  9053 ms  0x2d64 fd:0x7fcd4a7f7e20
  9053 ms     | 0x2d64 PK11_Encrypt()
  9053 ms     | 0x2d64 symkey:0x7fcd4956b580
           /* TID 0x2db3 */
  9053 ms  0x2db3 PR_Close()
  9053 ms  0x2db3 fd:0x7fcd386270d0
  9053 ms  0x2db3 PR_Close()
  9053 ms  0x2db3 fd:0x7fcd386270d0
           /* TID 0x2d59 */
  9056 ms  0x2d59 PR_Close()
  9056 ms  0x2d59 fd:0x7fcd4b0e82b0
  9056 ms  0x2d59 PR_Close()
  9056 ms  0x2d59 fd:0x7fcd389870d0
  9057 ms  0x2d59 PR_Close()
  9057 ms  0x2d59 fd:0x7fcd38987160
  9057 ms  0x2d59 PR_Close()
  9057 ms  0x2d59 fd:0x7fcd389870d0
  9058 ms  0x2d59 PR_Close()
  9058 ms  0x2d59 fd:0x7fcd38987160
  9058 ms  0x2d59 PR_Close()
  9058 ms  0x2d59 fd:0x7fcd389870d0
           /* TID 0x2d7d */
  9061 ms  0x2d7d PR_Close()
  9061 ms  0x2d7d fd:0x7fcd389870d0
           /* TID 0x2d59 */
  9080 ms  0x2d59 PR_Close()
  9080 ms  0x2d59 fd:0x7fcd38987160
  9080 ms  0x2d59 PR_Close()
  9080 ms  0x2d59 fd:0x7fcd4a9e0f10
  9081 ms  0x2d59 PR_Close()
  9081 ms  0x2d59 fd:0x7fcd38987160
  9081 ms  0x2d59 PR_Close()
  9081 ms  0x2d59 fd:0x7fcd4a9e0f10
  9082 ms  0x2d59 PR_Close()
  9082 ms  0x2d59 fd:0x7fcd544c89a0
  9082 ms  0x2d59 PR_Close()
  9082 ms  0x2d59 fd:0x7fcd544c88b0
  9082 ms  0x2d59 PR_Close()
  9082 ms  0x2d59 fd:0x7fcd544c8a60
  9084 ms  0x2d59 PR_Close()
  9084 ms  0x2d59 fd:0x7fcd49bfceb0
  9085 ms  0x2d59 PR_Close()
  9085 ms  0x2d59 fd:0x7fcd49bfceb0
  9087 ms  0x2d59 PR_Close()
  9087 ms  0x2d59 fd:0x7fcd38987160
  9087 ms  0x2d59 PR_Close()
  9087 ms  0x2d59 fd:0x7fcd4a9e0f10
  9088 ms  0x2d59 PR_Close()
  9088 ms  0x2d59 fd:0x7fcd38987160
  9088 ms  0x2d59 PR_Close()
  9088 ms  0x2d59 fd:0x7fcd4a9e0f10
  9090 ms  0x2d59 PR_Close()
  9090 ms  0x2d59 fd:0x7fcd4ac47070
  9092 ms  0x2d59 PR_Close()
  9092 ms  0x2d59 fd:0x7fcd4ac47070
  9093 ms  0x2d59 PR_Close()
  9093 ms  0x2d59 fd:0x7fcd38987160
  9093 ms  0x2d59 PR_Close()
  9093 ms  0x2d59 fd:0x7fcd4ac471f0
  9094 ms  0x2d59 PR_Close()
  9094 ms  0x2d59 fd:0x7fcd38987160
  9094 ms  0x2d59 PR_Close()
  9094 ms  0x2d59 fd:0x7fcd4ac471f0
  9096 ms  0x2d59 PR_Close()
  9096 ms  0x2d59 fd:0x7fcd4ac47250
  9097 ms  0x2d59 PR_Close()
  9097 ms  0x2d59 fd:0x7fcd4ac47250
  9111 ms  0x2d59 PR_Close()
  9111 ms  0x2d59 fd:0x7fcd4ac470a0
  9112 ms  0x2d59 PR_Close()
  9112 ms  0x2d59 fd:0x7fcd4ac470a0
  9114 ms  0x2d59 PR_Close()
  9114 ms  0x2d59 fd:0x7fcd4b0e82b0
           /* TID 0x2d7d */
  9119 ms  0x2d7d PR_Close()
  9119 ms  0x2d7d fd:0x7fcd38627130
           /* TID 0x2d59 */
  9123 ms  0x2d59 PR_Close()
  9123 ms  0x2d59 fd:0x7fcd38987160
  9123 ms  0x2d59 PR_Close()
  9123 ms  0x2d59 fd:0x7fcd4a74f040
           /* TID 0x2df5 */
  9133 ms  0x2df5 PR_Close()
  9133 ms  0x2df5 fd:0x7fcd4a2805b0
  9157 ms  0x2df5 PR_Close()
  9157 ms  0x2df5 fd:0x7fcd38987b20
           /* TID 0x2d64 */
  9160 ms  0x2d64 PR_Close()
  9160 ms  0x2d64 fd:0x7fcd4f53a0d0
  9160 ms     | 0x2d64 PK11_Encrypt()
  9160 ms     | 0x2d64 symkey:0x7fcd38947180
  9162 ms  0x2d64 PR_Close()
  9162 ms  0x2d64 fd:0x7fcd385a0820
  9162 ms     | 0x2d64 PK11_Encrypt()
  9162 ms     | 0x2d64 symkey:0x7fcd385a5400
           /* TID 0x2d5e */
  9170 ms  0x2d5e PR_Close()
  9170 ms  0x2d5e fd:0x7fcd534b7df0
  9176 ms  0x2d5e PR_Close()
  9176 ms  0x2d5e fd:0x7fcd4f746790
           /* TID 0x2df5 */
  9182 ms  0x2df5 PR_Close()
  9182 ms  0x2df5 fd:0x7fcd497ed880
           /* TID 0x2d59 */
  9195 ms  0x2d59 PR_Close()
  9195 ms  0x2d59 fd:0x7fcd38987160
  9195 ms  0x2d59 PR_Close()
  9195 ms  0x2d59 fd:0x7fcd497ed880
           /* TID 0x2d64 */
  9196 ms  0x2d64 PR_Close()
  9196 ms  0x2d64 fd:0x7fcd49bfc9d0
           /* TID 0x2db3 */
  9197 ms  0x2db3 PR_Close()
  9197 ms  0x2db3 fd:0x7fcd4a280070
  9197 ms  0x2db3 PR_Close()
  9197 ms  0x2db3 fd:0x7fcd497ed400
  9197 ms  0x2db3 PR_Close()
  9197 ms  0x2db3 fd:0x7fcd497ed400
  9197 ms  0x2db3 PR_Close()
  9197 ms  0x2db3 fd:0x7fcd497ed400
           /* TID 0x2df5 */
  9197 ms  0x2df5 PR_Close()
  9197 ms  0x2df5 fd:0x7fcd49bfccd0
           /* TID 0x2d6c */
  9200 ms  0x2d6c PR_Close()
  9200 ms  0x2d6c fd:0x7fcd4a280f70
  9200 ms  0x2d6c PR_Close()
  9200 ms  0x2d6c fd:0x7fcd4a74f040
           /* TID 0x2d5e */
  9207 ms  0x2d5e PR_Close()
  9207 ms  0x2d5e fd:0x7fcd4e143340
           /* TID 0x2d59 */
  9210 ms  0x2d59 PR_Close()
  9210 ms  0x2d59 fd:0x7fcd38987160
  9210 ms  0x2d59 PR_Close()
  9210 ms  0x2d59 fd:0x7fcd4a74f100
           /* TID 0x2df5 */
  9211 ms  0x2df5 PR_Close()
  9211 ms  0x2df5 fd:0x7fcd497ed640
           /* TID 0x2d7d */
  9214 ms  0x2d7d PR_Close()
  9214 ms  0x2d7d fd:0x7fcd38627130
           /* TID 0x2df5 */
  9218 ms  0x2df5 PR_Close()
  9218 ms  0x2df5 fd:0x7fcd497ed640
  9277 ms  0x2df5 PR_Close()
  9277 ms  0x2df5 fd:0x7fcd38627130
  9279 ms  0x2df5 PR_Close()
  9279 ms  0x2df5 fd:0x7fcd38627130
  9302 ms  0x2df5 PR_Close()
  9302 ms  0x2df5 fd:0x7fcd389874c0
  9304 ms  0x2df5 PR_Close()
  9304 ms  0x2df5 fd:0x7fcd389874f0
  9321 ms  0x2df5 PR_Close()
  9321 ms  0x2df5 fd:0x7fcd497e6a00
  9327 ms  0x2df5 PR_Close()
  9327 ms  0x2df5 fd:0x7fcd497ed850
  9335 ms  0x2df5 PR_Close()
  9335 ms  0x2df5 fd:0x7fcd4a74f160
  9344 ms  0x2df5 PR_Close()
  9344 ms  0x2df5 fd:0x7fcd4a74f250
  9346 ms  0x2df5 PR_Close()
  9346 ms  0x2df5 fd:0x7fcd4a74f250
           /* TID 0x2d59 */
  9502 ms  0x2d59 PR_Close()
  9502 ms  0x2d59 fd:0x7fcd385a0790
  9502 ms  0x2d59 PR_Close()
  9502 ms  0x2d59 fd:0x7fcd385a0790
  9507 ms  0x2d59 PR_Close()
  9507 ms  0x2d59 fd:0x7fcd718da130
  9507 ms  0x2d59 PR_Close()
  9507 ms  0x2d59 fd:0x7fcd718da190
Process terminated
