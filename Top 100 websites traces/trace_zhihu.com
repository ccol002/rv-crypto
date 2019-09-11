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
           /* TID 0x2847 */
   232 ms  0x2847 SSL_ImportFD()
   232 ms  0x2847 ret:0x7f948459c100
   232 ms  0x2847 SSL_AuthCertificateHook()
   232 ms  0x2847 fd:0x7f948459c100
   232 ms  0x2847 ret:0x0
   232 ms  0x2847 PR_Connect()
   232 ms  0x2847 fd:0x7f948459c100
   451 ms  0x2847 SECKEY_CreateECPrivateKey()
   451 ms  0x2847 cx:0x7f9466179c88
   453 ms     | 0x2847 EC_ValidatePublicKey()
   453 ms     | 0x2847 ret:0x0
   453 ms  0x2847 ret:0x7f9466113820::7f9466113820  00 5b 18 66                                      .[.f
   453 ms  0x2847 SECKEY_CreateECPrivateKey()
   453 ms  0x2847 cx:0x7f9466179c88
   455 ms     | 0x2847 EC_ValidatePublicKey()
   460 ms     | 0x2847 ret:0x0
   460 ms  0x2847 ret:0x7f9466115820::7f9466115820  40 5c 18 66                                      @\.f
           /* TID 0x2889 */
   470 ms  0x2889 PR_Close()
   470 ms  0x2889 fd:0x7f948459c040
   473 ms  0x2889 PR_Close()
   473 ms  0x2889 fd:0x7f948459c040
           /* TID 0x2847 */
   685 ms  SECKEY_ECParamsToKeySize()
   685 ms  0x2847 ret:0x100
   685 ms  0x2847 SECKEY_CreateECPrivateKey()
   685 ms  0x2847 cx:0x7f9466179c88
   687 ms     | 0x2847 EC_ValidatePublicKey()
   691 ms     | 0x2847 ret:0x0
   691 ms  0x2847 ret:0x7f946611e820::7f946611e820  40 f7 1d 66                                      @..f
   691 ms  0x2847 PK11_PubDeriveWithKDF()
   691 ms  0x2847 seckey:0x7f946611e820
   691 ms     | 0x2847 EC_ValidatePublicKey()
   696 ms     | 0x2847 ret:0x0
   699 ms  0x2847 ret:0x7f94771f0980
   699 ms  0x2847 PK11_DeriveWithFlags()
   699 ms  0x2847 basekey:0x7f94771f0980
   699 ms     | 0x2847 PK11_DeriveWithTemplate()
   700 ms  0x2847 ret:0x7f94771f0900
   700 ms  0x2847 PK11_Derive()
   700 ms  0x2847 basekey:0x7f94771f0900
   700 ms     | 0x2847 PK11_DeriveWithTemplate()
   700 ms  0x2847 ret:0x7f94771f0a80
   700 ms  0x2847 SECKEY_DestroyPrivateKey()
   700 ms  0x2847 privk:0x7f946611e820::7f946611e820  40 f7 1d 66                                      @..f
   700 ms  0x2847 privk:0x7f946611e820::7f946611e820  e5 e5 e5 e5                                      ....
   700 ms  0x2847 PK11_Encrypt()
   700 ms  0x2847 symkey:0x7f94776f8280
   701 ms  0x2847 PR_Connect()
   701 ms  0x2847 fd:0x7f948459cb80
           /* TID 0x2889 */
   712 ms  0x2889 PR_Close()
   712 ms  0x2889 fd:0x7f948459cb20
           /* TID 0x284f */
   754 ms  0x284f PR_Close()
   754 ms  0x284f fd:0x7f948459ca60
           /* TID 0x28a6 */
   755 ms  0x28a6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   755 ms  0x28a6 ret:0x0
           /* TID 0x2847 */
   755 ms  0x2847 SSL_AuthCertificateComplete()
   755 ms  0x2847 fd:0x7f948459c100
   755 ms  0x2847 err:0x0
   756 ms  0x2847 PK11_Encrypt()
   756 ms  0x2847 symkey:0x7f94776f8280
   921 ms  0x2847 SECKEY_DestroyPrivateKey()
   921 ms  0x2847 privk:0x7f9466115820::7f9466115820  40 5c 18 66                                      @\.f
   921 ms  0x2847 privk:0x7f9466115820::7f9466115820  e5 e5 e5 e5                                      ....
   921 ms  0x2847 SECKEY_DestroyPrivateKey()
   921 ms  0x2847 privk:0x7f9466113820::7f9466113820  00 5b 18 66                                      .[.f
   922 ms  0x2847 privk:0x7f9466113820::7f9466113820  e5 e5 e5 e5                                      ....
  1146 ms  0x2847 SSL_ImportFD()
  1146 ms  0x2847 ret:0x7f948459cd00
  1146 ms  0x2847 SSL_AuthCertificateHook()
  1146 ms  0x2847 fd:0x7f948459cd00
  1146 ms  0x2847 ret:0x0
  1146 ms  0x2847 PR_Connect()
  1146 ms  0x2847 fd:0x7f948459cd00
  1172 ms  0x2847 SECKEY_CreateECPrivateKey()
  1172 ms  0x2847 cx:0x7f94661db728
  1174 ms     | 0x2847 EC_ValidatePublicKey()
  1174 ms     | 0x2847 ret:0x0
  1174 ms  0x2847 ret:0x7f9466115020::7f9466115020  40 5c 18 66                                      @\.f
  1175 ms  0x2847 SECKEY_CreateECPrivateKey()
  1175 ms  0x2847 cx:0x7f94661db728
  1176 ms     | 0x2847 EC_ValidatePublicKey()
  1181 ms     | 0x2847 ret:0x0
  1181 ms  0x2847 ret:0x7f946611b020::7f946611b020  60 f5 1d 66                                      `..f
           /* TID 0x28a6 */
  1234 ms  0x28a6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1234 ms  0x28a6 ret:0x0
           /* TID 0x2847 */
  1235 ms  SECKEY_ECParamsToKeySize()
  1235 ms  0x2847 ret:0x100
  1235 ms  0x2847 SECKEY_CreateECPrivateKey()
  1235 ms  0x2847 cx:0x7f94661db728
  1237 ms     | 0x2847 EC_ValidatePublicKey()
  1241 ms     | 0x2847 ret:0x0
  1241 ms  0x2847 ret:0x7f946611e820::7f946611e820  e0 f7 1d 66                                      ...f
  1242 ms  0x2847 PK11_PubDeriveWithKDF()
  1242 ms  0x2847 seckey:0x7f946611e820
  1242 ms     | 0x2847 EC_ValidatePublicKey()
  1246 ms     | 0x2847 ret:0x0
  1250 ms  0x2847 ret:0x7f94771f0980
  1250 ms  0x2847 PK11_DeriveWithFlags()
  1250 ms  0x2847 basekey:0x7f94771f0980
  1250 ms     | 0x2847 PK11_DeriveWithTemplate()
  1250 ms  0x2847 ret:0x7f94661c8000
  1250 ms  0x2847 PK11_Derive()
  1250 ms  0x2847 basekey:0x7f94661c8000
  1250 ms     | 0x2847 PK11_DeriveWithTemplate()
  1250 ms  0x2847 ret:0x7f94661c8200
  1250 ms  0x2847 SECKEY_DestroyPrivateKey()
  1250 ms  0x2847 privk:0x7f946611e820::7f946611e820  e0 f7 1d 66                                      ...f
  1250 ms  0x2847 privk:0x7f946611e820::7f946611e820  e5 e5 e5 e5                                      ....
  1250 ms  0x2847 PK11_Encrypt()
  1250 ms  0x2847 symkey:0x7f94661c8700
  1251 ms  0x2847 SSL_AuthCertificateComplete()
  1251 ms  0x2847 fd:0x7f948459cd00
  1251 ms  0x2847 err:0x0
  1251 ms  0x2847 PK11_Encrypt()
  1251 ms  0x2847 symkey:0x7f94661c8700
  1303 ms  0x2847 SECKEY_DestroyPrivateKey()
  1303 ms  0x2847 privk:0x7f946611b020::7f946611b020  60 f5 1d 66                                      `..f
  1303 ms  0x2847 privk:0x7f946611b020::7f946611b020  e5 e5 e5 e5                                      ....
  1303 ms  0x2847 SECKEY_DestroyPrivateKey()
  1303 ms  0x2847 privk:0x7f9466115020::7f9466115020  40 5c 18 66                                      @\.f
  1304 ms  0x2847 privk:0x7f9466115020::7f9466115020  e5 e5 e5 e5                                      ....
  1306 ms  0x2847 PK11_Encrypt()
  1306 ms  0x2847 symkey:0x7f94661c8700
  1336 ms  0x2847 PK11_Encrypt()
  1336 ms  0x2847 symkey:0x7f94661c8700
  1364 ms  0x2847 PK11_Encrypt()
  1364 ms  0x2847 symkey:0x7f94661c8700
  1393 ms  0x2847 PK11_Encrypt()
  1393 ms  0x2847 symkey:0x7f94661c8700
  1509 ms  0x2847 PK11_Encrypt()
  1509 ms  0x2847 symkey:0x7f94661c8700
  1542 ms  0x2847 PK11_Encrypt()
  1542 ms  0x2847 symkey:0x7f94661c8700
  1573 ms  0x2847 PK11_Encrypt()
  1573 ms  0x2847 symkey:0x7f94661c8700
           /* TID 0x289f */
  1601 ms  0x289f PR_Close()
  1601 ms  0x289f fd:0x7f948459ce20
  1601 ms  0x289f PR_Close()
  1601 ms  0x289f fd:0x7f948459cee0
  1601 ms  0x289f PR_Close()
  1601 ms  0x289f fd:0x7f948459ce20
  1601 ms  0x289f PR_Close()
  1601 ms  0x289f fd:0x7f948459cee0
  1601 ms  0x289f PR_Close()
  1601 ms  0x289f fd:0x7f948459ce20
  1601 ms  0x289f PR_Close()
  1601 ms  0x289f fd:0x7f948459cee0
  1602 ms  0x289f PR_Close()
  1602 ms  0x289f fd:0x7f948459ce20
  1602 ms  0x289f PR_Close()
  1602 ms  0x289f fd:0x7f948459cee0
  1602 ms  0x289f PR_Close()
  1602 ms  0x289f fd:0x7f948459ce20
  1602 ms  0x289f PR_Close()
  1602 ms  0x289f fd:0x7f948459cee0
  1602 ms  0x289f PR_Close()
  1602 ms  0x289f fd:0x7f948459ce20
  1602 ms  0x289f PR_Close()
  1602 ms  0x289f fd:0x7f948459cee0
  1602 ms  0x289f PR_Close()
  1602 ms  0x289f fd:0x7f948459ce20
  1602 ms  0x289f PR_Close()
  1602 ms  0x289f fd:0x7f948459cee0
  1602 ms  0x289f PR_Close()
  1602 ms  0x289f fd:0x7f948459ce20
  1602 ms  0x289f PR_Close()
  1602 ms  0x289f fd:0x7f948459cee0
  1602 ms  0x289f PR_Close()
  1602 ms  0x289f fd:0x7f948459ce20
  1603 ms  0x289f PR_Close()
  1603 ms  0x289f fd:0x7f948459cee0
  1603 ms  0x289f PR_Close()
  1603 ms  0x289f fd:0x7f948459ce20
  1603 ms  0x289f PR_Close()
  1603 ms  0x289f fd:0x7f948459cee0
  1603 ms  0x289f PR_Close()
  1603 ms  0x289f fd:0x7f948459ce20
  1603 ms  0x289f PR_Close()
  1603 ms  0x289f fd:0x7f948459cee0
  1603 ms  0x289f PR_Close()
  1603 ms  0x289f fd:0x7f948459ce20
  1603 ms  0x289f PR_Close()
  1603 ms  0x289f fd:0x7f948459cee0
  1603 ms  0x289f PR_Close()
  1603 ms  0x289f fd:0x7f948459ce20
  1603 ms  0x289f PR_Close()
  1603 ms  0x289f fd:0x7f948459cee0
  1603 ms  0x289f PR_Close()
  1603 ms  0x289f fd:0x7f948459ce20
  1603 ms  0x289f PR_Close()
  1603 ms  0x289f fd:0x7f948459cee0
  1606 ms  0x289f PR_Close()
  1606 ms  0x289f fd:0x7f948459ce20
  1607 ms  0x289f PR_Close()
  1607 ms  0x289f fd:0x7f948459cdf0
  1609 ms  0x289f PR_Close()
  1609 ms  0x289f fd:0x7f948459cdf0
  1610 ms  0x289f PR_Close()
  1610 ms  0x289f fd:0x7f948459ce20
  1612 ms  0x289f PR_Close()
  1612 ms  0x289f fd:0x7f948459ce20
  1612 ms  0x289f PR_Close()
  1612 ms  0x289f fd:0x7f948459ce20
  1615 ms  0x289f PR_Close()
  1615 ms  0x289f fd:0x7f948459ce20
  1615 ms  0x289f PR_Close()
  1615 ms  0x289f fd:0x7f948459ce20
  1662 ms  0x289f PR_Close()
  1662 ms  0x289f fd:0x7f948459ce20
  1663 ms  0x289f PR_Close()
  1663 ms  0x289f fd:0x7f948459ce20
  1669 ms  0x289f PR_Close()
  1669 ms  0x289f fd:0x7f948459ce20
  1670 ms  0x289f PR_Close()
  1670 ms  0x289f fd:0x7f948459ce20
  1677 ms  0x289f PR_Close()
  1677 ms  0x289f fd:0x7f948459ce20
  1677 ms  0x289f PR_Close()
  1677 ms  0x289f fd:0x7f948459ce20
  1679 ms  0x289f PR_Close()
  1679 ms  0x289f fd:0x7f948459ce20
  1679 ms  0x289f PR_Close()
  1679 ms  0x289f fd:0x7f948459ce20
           /* TID 0x289d */
  1680 ms  0x289d PR_Close()
  1680 ms  0x289d fd:0x7f948459ce20
  1680 ms  0x289d PR_Close()
  1680 ms  0x289d fd:0x7f948459ce20
  1680 ms  0x289d PR_Close()
  1680 ms  0x289d fd:0x7f948459ce20
  1680 ms  0x289d PR_Close()
  1680 ms  0x289d fd:0x7f948459ce20
  1680 ms  0x289d PR_Close()
  1680 ms  0x289d fd:0x7f948459ce20
  1680 ms  0x289d PR_Close()
  1680 ms  0x289d fd:0x7f948459ce20
  1680 ms  0x289d PR_Close()
  1680 ms  0x289d fd:0x7f948459ce20
  1680 ms  0x289d PR_Close()
  1680 ms  0x289d fd:0x7f948459ce20
  1680 ms  0x289d PR_Close()
  1680 ms  0x289d fd:0x7f948459ce20
  1680 ms  0x289d PR_Close()
  1680 ms  0x289d fd:0x7f948459ce20
  1680 ms  0x289d PR_Close()
  1680 ms  0x289d fd:0x7f948459ce20
  1680 ms  0x289d PR_Close()
  1680 ms  0x289d fd:0x7f948459ce20
  1680 ms  0x289d PR_Close()
  1680 ms  0x289d fd:0x7f948459ce20
  1680 ms  0x289d PR_Close()
  1680 ms  0x289d fd:0x7f948459ce20
  1680 ms  0x289d PR_Close()
  1680 ms  0x289d fd:0x7f948459ce20
           /* TID 0x2889 */
  2183 ms  0x2889 PR_Close()
  2183 ms  0x2889 fd:0x7f94646fc1f0
  2186 ms  0x2889 PR_Close()
  2186 ms  0x2889 fd:0x7f94646fc1f0
  2705 ms  0x2889 PR_Close()
  2705 ms  0x2889 fd:0x7f94646fc310
           /* TID 0x284f */
  4105 ms  0x284f PR_Close()
  4105 ms  0x284f fd:0x7f94646fc310
  4105 ms  0x284f PR_Close()
  4105 ms  0x284f fd:0x7f94646fc370
  4105 ms  0x284f PR_Close()
  4105 ms  0x284f fd:0x7f94646fc3d0
           /* TID 0x2847 */
  4723 ms  0x2847 SSL_ImportFD()
  4723 ms  0x2847 ret:0x7f94646e8520
  4723 ms  0x2847 SSL_AuthCertificateHook()
  4723 ms  0x2847 fd:0x7f94646e8520
  4724 ms  0x2847 ret:0x0
  4724 ms  0x2847 PR_Connect()
  4724 ms  0x2847 fd:0x7f94646e8520
  4782 ms  0x2847 SECKEY_CreateECPrivateKey()
  4782 ms  0x2847 cx:0x7f94661dba68
  4784 ms     | 0x2847 EC_ValidatePublicKey()
  4784 ms     | 0x2847 ret:0x0
  4784 ms  0x2847 ret:0x7f9484535820::7f9484535820  00 86 ac 76                                      ...v
  4784 ms  0x2847 SECKEY_CreateECPrivateKey()
  4784 ms  0x2847 cx:0x7f94661dba68
  4786 ms     | 0x2847 EC_ValidatePublicKey()
  4793 ms     | 0x2847 ret:0x0
  4793 ms  0x2847 ret:0x7f9464603820::7f9464603820  a0 81 ac 76                                      ...v
           /* TID 0x28a6 */
  4856 ms  0x28a6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4857 ms  0x28a6 ret:0x0
           /* TID 0x2847 */
  4857 ms  SECKEY_ECParamsToKeySize()
  4857 ms  0x2847 ret:0x100
  4857 ms  0x2847 SECKEY_CreateECPrivateKey()
  4857 ms  0x2847 cx:0x7f94661dba68
  4859 ms     | 0x2847 EC_ValidatePublicKey()
  4865 ms     | 0x2847 ret:0x0
  4865 ms  0x2847 ret:0x7f9464609820::7f9464609820  f0 8b ac 76                                      ...v
  4865 ms  0x2847 PK11_PubDeriveWithKDF()
  4865 ms  0x2847 seckey:0x7f9464609820
  4865 ms     | 0x2847 EC_ValidatePublicKey()
  4871 ms     | 0x2847 ret:0x0
  4875 ms  0x2847 ret:0x7f94771f0980
  4875 ms  0x2847 PK11_DeriveWithFlags()
  4875 ms  0x2847 basekey:0x7f94771f0980
  4875 ms     | 0x2847 PK11_DeriveWithTemplate()
  4875 ms  0x2847 ret:0x7f94646ec780
  4875 ms  0x2847 PK11_Derive()
  4875 ms  0x2847 basekey:0x7f94646ec780
  4875 ms     | 0x2847 PK11_DeriveWithTemplate()
  4875 ms  0x2847 ret:0x7f94646ec800
  4875 ms  0x2847 SECKEY_DestroyPrivateKey()
  4875 ms  0x2847 privk:0x7f9464609820::7f9464609820  f0 8b ac 76                                      ...v
  4876 ms  0x2847 privk:0x7f9464609820::7f9464609820  e5 e5 e5 e5                                      ....
  4876 ms  0x2847 PK11_Encrypt()
  4876 ms  0x2847 symkey:0x7f94646ec980
  4876 ms  0x2847 SSL_AuthCertificateComplete()
  4876 ms  0x2847 fd:0x7f94646e8520
  4876 ms  0x2847 err:0x0
  4877 ms  0x2847 PK11_Encrypt()
  4877 ms  0x2847 symkey:0x7f94646ec980
  4877 ms  0x2847 PK11_Encrypt()
  4877 ms  0x2847 symkey:0x7f94646ec980
  4937 ms  0x2847 SECKEY_DestroyPrivateKey()
  4937 ms  0x2847 privk:0x7f9464603820::7f9464603820  a0 81 ac 76                                      ...v
  4937 ms  0x2847 privk:0x7f9464603820::7f9464603820  e5 e5 e5 e5                                      ....
  4937 ms  0x2847 SECKEY_DestroyPrivateKey()
  4937 ms  0x2847 privk:0x7f9484535820::7f9484535820  00 86 ac 76                                      ...v
  4937 ms  0x2847 privk:0x7f9484535820::7f9484535820  e5 e5 e5 e5                                      ....
  4996 ms  0x2847 PK11_Encrypt()
  4996 ms  0x2847 symkey:0x7f94646ec980
           /* TID 0x285e */
  5245 ms  0x285e PR_Close()
  5245 ms  0x285e fd:0x7f94646e8a30
           /* TID 0x2847 */
  5256 ms  0x2847 PK11_Encrypt()
  5256 ms  0x2847 symkey:0x7f94646ec980
           /* TID 0x285e */
  5613 ms  0x285e PR_Close()
  5613 ms  0x285e fd:0x7f94647d9190
           /* TID 0x2847 */
  5831 ms  0x2847 SSL_ImportFD()
  5831 ms  0x2847 ret:0x7f9464496eb0
  5831 ms  0x2847 SSL_AuthCertificateHook()
  5831 ms  0x2847 fd:0x7f9464496eb0
  5831 ms  0x2847 ret:0x0
  5831 ms  0x2847 PR_Connect()
  5831 ms  0x2847 fd:0x7f9464496eb0
  5831 ms  0x2847 SSL_ImportFD()
  5831 ms  0x2847 ret:0x7f9464496ee0
  5831 ms  0x2847 SSL_AuthCertificateHook()
  5831 ms  0x2847 fd:0x7f9464496ee0
  5831 ms  0x2847 ret:0x0
  5832 ms  0x2847 PR_Connect()
  5832 ms  0x2847 fd:0x7f9464496ee0
  5832 ms  0x2847 SSL_ImportFD()
  5832 ms  0x2847 ret:0x7f9464496e50
  5832 ms  0x2847 SSL_AuthCertificateHook()
  5832 ms  0x2847 fd:0x7f9464496e50
  5832 ms  0x2847 ret:0x0
  5832 ms  0x2847 PR_Connect()
  5832 ms  0x2847 fd:0x7f9464496e50
  5868 ms  0x2847 SECKEY_CreateECPrivateKey()
  5868 ms  0x2847 cx:0x7f94661dc288
  5871 ms     | 0x2847 EC_ValidatePublicKey()
  5871 ms     | 0x2847 ret:0x0
  5871 ms  0x2847 ret:0x7f9464462020::7f9464462020  40 7c 56 64                                      @|Vd
  5871 ms  0x2847 SECKEY_CreateECPrivateKey()
  5871 ms  0x2847 cx:0x7f94661dc288
  5873 ms     | 0x2847 EC_ValidatePublicKey()
  5877 ms     | 0x2847 ret:0x0
  5878 ms  0x2847 ret:0x7f9464464020::7f9464464020  b0 e0 5d 64                                      ..]d
  5880 ms  0x2847 SECKEY_CreateECPrivateKey()
  5880 ms  0x2847 cx:0x7f94661dc428
  5886 ms     | 0x2847 EC_ValidatePublicKey()
  5886 ms     | 0x2847 ret:0x0
  5886 ms  0x2847 ret:0x7f9464466820::7f9464466820  00 e1 5d 64                                      ..]d
  5886 ms  0x2847 SECKEY_CreateECPrivateKey()
  5886 ms  0x2847 cx:0x7f94661dc428
  5888 ms     | 0x2847 EC_ValidatePublicKey()
  5892 ms     | 0x2847 ret:0x0
  5892 ms  0x2847 ret:0x7f9464468820::7f9464468820  e0 e2 5d 64                                      ..]d
  5893 ms  0x2847 SECKEY_CreateECPrivateKey()
  5893 ms  0x2847 cx:0x7f94661dc768
  5894 ms     | 0x2847 EC_ValidatePublicKey()
  5894 ms     | 0x2847 ret:0x0
  5894 ms  0x2847 ret:0x7f946446b820::7f946446b820  20 e4 5d 64                                       .]d
  5894 ms  0x2847 SECKEY_CreateECPrivateKey()
  5894 ms  0x2847 cx:0x7f94661dc768
  5895 ms     | 0x2847 EC_ValidatePublicKey()
  5898 ms     | 0x2847 ret:0x0
  5898 ms  0x2847 ret:0x7f946446d820::7f946446d820  00 e6 5d 64                                      ..]d
           /* TID 0x28a6 */
  5918 ms  0x28a6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5918 ms  0x28a6 ret:0x0
           /* TID 0x2847 */
  5920 ms  SECKEY_ECParamsToKeySize()
  5920 ms  0x2847 ret:0x100
  5920 ms  0x2847 SECKEY_CreateECPrivateKey()
  5920 ms  0x2847 cx:0x7f94661dc288
  5922 ms     | 0x2847 EC_ValidatePublicKey()
  5927 ms     | 0x2847 ret:0x0
  5927 ms  0x2847 ret:0x7f946410a820::7f946410a820  e0 ec 5d 64                                      ..]d
  5928 ms  0x2847 PK11_PubDeriveWithKDF()
  5928 ms  0x2847 seckey:0x7f946410a820
  5928 ms     | 0x2847 EC_ValidatePublicKey()
  5932 ms     | 0x2847 ret:0x0
  5935 ms  0x2847 ret:0x7f94771f0980
  5935 ms  0x2847 PK11_DeriveWithFlags()
  5935 ms  0x2847 basekey:0x7f94771f0980
  5935 ms     | 0x2847 PK11_DeriveWithTemplate()
  5935 ms  0x2847 ret:0x7f946459a100
  5935 ms  0x2847 PK11_Derive()
  5935 ms  0x2847 basekey:0x7f946459a100
  5935 ms     | 0x2847 PK11_DeriveWithTemplate()
  5935 ms  0x2847 ret:0x7f946459a180
  5935 ms  0x2847 SECKEY_DestroyPrivateKey()
  5935 ms  0x2847 privk:0x7f946410a820::7f946410a820  e0 ec 5d 64                                      ..]d
  5935 ms  0x2847 privk:0x7f946410a820::7f946410a820  e5 e5 e5 e5                                      ....
  5935 ms  0x2847 PK11_Encrypt()
  5935 ms  0x2847 symkey:0x7f946459a300
  5936 ms  SECKEY_ECParamsToKeySize()
  5936 ms  0x2847 ret:0x100
  5936 ms  0x2847 SECKEY_CreateECPrivateKey()
  5936 ms  0x2847 cx:0x7f94661dc428
  5942 ms     | 0x2847 EC_ValidatePublicKey()
  5944 ms     | 0x2847 ret:0x0
           /* TID 0x28a6 */
  5945 ms  0x28a6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5945 ms  0x28a6 ret:0x0
           /* TID 0x2847 */
  5945 ms  0x2847 ret:0x7f9464108820::7f9464108820  40 ec 5d 64                                      @.]d
  5945 ms  0x2847 PK11_PubDeriveWithKDF()
  5945 ms  0x2847 seckey:0x7f9464108820
  5945 ms     | 0x2847 EC_ValidatePublicKey()
  5947 ms     | 0x2847 ret:0x0
  5949 ms  0x2847 ret:0x7f94771f0980
  5949 ms  0x2847 PK11_DeriveWithFlags()
  5949 ms  0x2847 basekey:0x7f94771f0980
  5949 ms     | 0x2847 PK11_DeriveWithTemplate()
  5949 ms  0x2847 ret:0x7f9464599c00
  5949 ms  0x2847 PK11_Derive()
  5949 ms  0x2847 basekey:0x7f9464599c00
  5949 ms     | 0x2847 PK11_DeriveWithTemplate()
  5949 ms  0x2847 ret:0x7f9464599c80
  5949 ms  0x2847 SECKEY_DestroyPrivateKey()
  5949 ms  0x2847 privk:0x7f9464108820::7f9464108820  40 ec 5d 64                                      @.]d
  5949 ms  0x2847 privk:0x7f9464108820::7f9464108820  e5 e5 e5 e5                                      ....
  5950 ms  0x2847 PK11_Encrypt()
  5950 ms  0x2847 symkey:0x7f9464599e00
  5950 ms  0x2847 SSL_AuthCertificateComplete()
  5950 ms  0x2847 fd:0x7f9464496eb0
  5950 ms  0x2847 err:0x0
  5950 ms  0x2847 SSL_AuthCertificateComplete()
  5950 ms  0x2847 fd:0x7f9464496ee0
  5950 ms  0x2847 err:0x0
           /* TID 0x28a6 */
  5950 ms  0x28a6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5951 ms  0x28a6 ret:0x0
           /* TID 0x2847 */
  5951 ms  SECKEY_ECParamsToKeySize()
  5951 ms  0x2847 ret:0x100
  5951 ms  0x2847 SECKEY_CreateECPrivateKey()
  5951 ms  0x2847 cx:0x7f94661dc768
  5952 ms     | 0x2847 EC_ValidatePublicKey()
  5953 ms     | 0x2847 ret:0x0
  5953 ms  0x2847 ret:0x7f946410c020::7f946410c020  e0 ec 5d 64                                      ..]d
  5953 ms  0x2847 PK11_PubDeriveWithKDF()
  5953 ms  0x2847 seckey:0x7f946410c020
  5953 ms     | 0x2847 EC_ValidatePublicKey()
  5955 ms     | 0x2847 ret:0x0
  5957 ms  0x2847 ret:0x7f94771f0980
  5957 ms  0x2847 PK11_DeriveWithFlags()
  5957 ms  0x2847 basekey:0x7f94771f0980
  5957 ms     | 0x2847 PK11_DeriveWithTemplate()
  5957 ms  0x2847 ret:0x7f9464599f00
  5957 ms  0x2847 PK11_Derive()
  5957 ms  0x2847 basekey:0x7f9464599f00
  5957 ms     | 0x2847 PK11_DeriveWithTemplate()
  5957 ms  0x2847 ret:0x7f9464599f80
  5957 ms  0x2847 SECKEY_DestroyPrivateKey()
  5957 ms  0x2847 privk:0x7f946410c020::7f946410c020  e0 ec 5d 64                                      ..]d
  5957 ms  0x2847 privk:0x7f946410c020::7f946410c020  e5 e5 e5 e5                                      ....
  5957 ms  0x2847 PK11_Encrypt()
  5957 ms  0x2847 symkey:0x7f946459a400
  5957 ms  0x2847 PK11_Encrypt()
  5957 ms  0x2847 symkey:0x7f9464599e00
  5957 ms  0x2847 PK11_Encrypt()
  5957 ms  0x2847 symkey:0x7f9464599e00
  5958 ms  0x2847 PK11_Encrypt()
  5958 ms  0x2847 symkey:0x7f946459a300
  5958 ms  0x2847 SSL_AuthCertificateComplete()
  5958 ms  0x2847 fd:0x7f9464496e50
  5958 ms  0x2847 err:0x0
  5958 ms  0x2847 PK11_Encrypt()
  5958 ms  0x2847 symkey:0x7f9464599e00
  5958 ms  0x2847 PK11_Encrypt()
  5958 ms  0x2847 symkey:0x7f946459a400
  5959 ms  0x2847 PK11_Encrypt()
  5959 ms  0x2847 symkey:0x7f9464599e00
  5959 ms  0x2847 PK11_Encrypt()
  5959 ms  0x2847 symkey:0x7f9464599e00
  5974 ms  0x2847 SECKEY_DestroyPrivateKey()
  5974 ms  0x2847 privk:0x7f9464464020::7f9464464020  b0 e0 5d 64                                      ..]d
  5974 ms  0x2847 privk:0x7f9464464020::7f9464464020  e5 e5 e5 e5                                      ....
  5974 ms  0x2847 SECKEY_DestroyPrivateKey()
  5974 ms  0x2847 privk:0x7f9464462020::7f9464462020  40 7c 56 64                                      @|Vd
  5974 ms  0x2847 privk:0x7f9464462020::7f9464462020  e5 e5 e5 e5                                      ....
  5974 ms  0x2847 PR_Close()
  5974 ms  0x2847 fd:0x7f9464496eb0
  5974 ms     | 0x2847 PK11_Encrypt()
  5974 ms     | 0x2847 symkey:0x7f946459a300
  5986 ms  0x2847 SECKEY_DestroyPrivateKey()
  5986 ms  0x2847 privk:0x7f9464468820::7f9464468820  e0 e2 5d 64                                      ..]d
  5987 ms  0x2847 privk:0x7f9464468820::7f9464468820  e5 e5 e5 e5                                      ....
  5987 ms  0x2847 SECKEY_DestroyPrivateKey()
  5987 ms  0x2847 privk:0x7f9464466820::7f9464466820  00 e1 5d 64                                      ..]d
  5987 ms  0x2847 privk:0x7f9464466820::7f9464466820  e5 e5 e5 e5                                      ....
  5995 ms  0x2847 SECKEY_DestroyPrivateKey()
  5995 ms  0x2847 privk:0x7f946446d820::7f946446d820  00 e6 5d 64                                      ..]d
  5995 ms  0x2847 privk:0x7f946446d820::7f946446d820  e5 e5 e5 e5                                      ....
  5995 ms  0x2847 SECKEY_DestroyPrivateKey()
  5995 ms  0x2847 privk:0x7f946446b820::7f946446b820  20 e4 5d 64                                       .]d
  5995 ms  0x2847 privk:0x7f946446b820::7f946446b820  e5 e5 e5 e5                                      ....
  5995 ms  0x2847 PR_Close()
  5995 ms  0x2847 fd:0x7f9464496e50
  5996 ms     | 0x2847 PK11_Encrypt()
  5996 ms     | 0x2847 symkey:0x7f946459a400
  6024 ms  0x2847 PK11_Encrypt()
  6024 ms  0x2847 symkey:0x7f9464599e00
           /* TID 0x284f */
  6062 ms  0x284f PR_Close()
  6062 ms  0x284f fd:0x7f946440fbe0
           /* TID 0x2847 */
  6083 ms  0x2847 PK11_Encrypt()
  6083 ms  0x2847 symkey:0x7f9464599e00
  6084 ms  0x2847 PK11_Encrypt()
  6084 ms  0x2847 symkey:0x7f94646ec980
           /* TID 0x284f */
  6101 ms  0x284f PR_Close()
  6101 ms  0x284f fd:0x7f946440fbb0
  6193 ms  0x284f PR_Close()
  6193 ms  0x284f fd:0x7f946440f340
  6206 ms  0x284f PR_Close()
  6206 ms  0x284f fd:0x7f946440f340
  6224 ms  0x284f PR_Close()
  6224 ms  0x284f fd:0x7f946440f3a0
           /* TID 0x2847 */
  7601 ms  0x2847 PK11_Encrypt()
  7601 ms  0x2847 symkey:0x7f9464599e00
           /* TID 0x284f */
  7647 ms  0x284f PR_Close()
  7647 ms  0x284f fd:0x7f94644e08b0
           /* TID 0x2847 */
  8575 ms  0x2847 SSL_ImportFD()
  8575 ms  0x2847 ret:0x7f9475594d30
  8576 ms  0x2847 SSL_AuthCertificateHook()
  8576 ms  0x2847 fd:0x7f9475594d30
  8576 ms  0x2847 ret:0x0
  8576 ms  0x2847 PR_Connect()
  8576 ms  0x2847 fd:0x7f9475594d30
  8651 ms  0x2847 SECKEY_CreateECPrivateKey()
  8651 ms  0x2847 cx:0x7f94661dd608
  8653 ms     | 0x2847 EC_ValidatePublicKey()
  8653 ms     | 0x2847 ret:0x0
  8654 ms  0x2847 ret:0x7f946410f820::7f946410f820  80 63 5d 64                                      .c]d
  8654 ms  0x2847 SECKEY_CreateECPrivateKey()
  8654 ms  0x2847 cx:0x7f94661dd608
  8656 ms     | 0x2847 EC_ValidatePublicKey()
  8661 ms     | 0x2847 ret:0x0
  8661 ms  0x2847 ret:0x7f9464111820::7f9464111820  b0 65 5d 64                                      .e]d
  8748 ms  SECKEY_ECParamsToKeySize()
  8749 ms  0x2847 ret:0xff
  8749 ms  0x2847 SECKEY_CreateECPrivateKey()
  8749 ms  0x2847 cx:0x7f94661dd608
  8751 ms     | 0x2847 EC_ValidatePublicKey()
  8751 ms     | 0x2847 ret:0x0
  8751 ms  0x2847 ret:0x7f946411c820::7f946411c820  d0 6d 5d 64                                      .m]d
  8751 ms  0x2847 PK11_PubDeriveWithKDF()
  8751 ms  0x2847 seckey:0x7f946411c820
  8751 ms     | 0x2847 EC_ValidatePublicKey()
  8751 ms     | 0x2847 ret:0x0
  8754 ms  0x2847 ret:0x7f9464599f80
  8755 ms  0x2847 PK11_DeriveWithFlags()
  8755 ms  0x2847 basekey:0x7f9464599f80
  8755 ms     | 0x2847 PK11_DeriveWithTemplate()
  8755 ms  0x2847 ret:0x7f9464599f00
  8755 ms  0x2847 PK11_Derive()
  8755 ms  0x2847 basekey:0x7f9464599f00
  8755 ms     | 0x2847 PK11_DeriveWithTemplate()
  8755 ms  0x2847 ret:0x7f946459a180
  8755 ms  0x2847 SECKEY_DestroyPrivateKey()
  8755 ms  0x2847 privk:0x7f946411c820::7f946411c820  d0 6d 5d 64                                      .m]d
  8755 ms  0x2847 privk:0x7f946411c820::7f946411c820  e5 e5 e5 e5                                      ....
  8756 ms  0x2847 PK11_Encrypt()
  8756 ms  0x2847 symkey:0x7f946459a000
  8861 ms  0x2847 PR_Connect()
  8861 ms  0x2847 fd:0x7f9475594f70
           /* TID 0x284f */
  8916 ms  0x284f PR_Close()
  8916 ms  0x284f fd:0x7f9475594d60
           /* TID 0x28dc */
  8917 ms  0x28dc _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8917 ms  0x28dc ret:0x0
           /* TID 0x2847 */
  8933 ms  0x2847 SSL_AuthCertificateComplete()
  8933 ms  0x2847 fd:0x7f9475594d30
  8933 ms  0x2847 err:0x0
  8933 ms     | 0x2847 SECKEY_DestroyPrivateKey()
  8933 ms     | 0x2847 privk:0x7f9464111820::7f9464111820  b0 65 5d 64                                      .e]d
  8934 ms     | 0x2847 privk:0x7f9464111820::7f9464111820  e5 e5 e5 e5                                      ....
  8934 ms     | 0x2847 SECKEY_DestroyPrivateKey()
  8934 ms     | 0x2847 privk:0x7f946410f820::7f946410f820  80 63 5d 64                                      .c]d
  8934 ms     | 0x2847 privk:0x7f946410f820::7f946410f820  e5 e5 e5 e5                                      ....
  8937 ms  0x2847 PK11_Encrypt()
  8937 ms  0x2847 symkey:0x7f946459a000
  8937 ms  0x2847 PK11_Encrypt()
  8937 ms  0x2847 symkey:0x7f946459a000
  8938 ms  0x2847 PK11_Encrypt()
  8938 ms  0x2847 symkey:0x7f946459a000
  9096 ms  0x2847 PK11_Encrypt()
  9096 ms  0x2847 symkey:0x7f946459a000
           /* TID 0x284f */
  9247 ms  0x284f PR_Close()
  9247 ms  0x284f fd:0x7f94756589d0
           /* TID 0x2847 */
  9266 ms  0x2847 PK11_Encrypt()
  9266 ms  0x2847 symkey:0x7f94646ec980
  9267 ms  0x2847 PK11_Encrypt()
  9267 ms  0x2847 symkey:0x7f94646ec980
  9349 ms  0x2847 PK11_Encrypt()
  9349 ms  0x2847 symkey:0x7f94646ec980
  9350 ms  0x2847 PK11_Encrypt()
  9350 ms  0x2847 symkey:0x7f94646ec980
  9358 ms  0x2847 PK11_Encrypt()
  9358 ms  0x2847 symkey:0x7f946459a000
  9360 ms  0x2847 PK11_Encrypt()
  9360 ms  0x2847 symkey:0x7f9464599e00
  9362 ms  0x2847 PK11_Encrypt()
  9362 ms  0x2847 symkey:0x7f9464599e00
  9365 ms  0x2847 PR_Close()
  9365 ms  0x2847 fd:0x7f9476386d60
           /* TID 0x283c */
  9370 ms  0x283c EC_ValidatePublicKey()
  9371 ms  0x283c ret:0x0
  9371 ms  0x283c EC_ValidatePublicKey()
  9374 ms  0x283c ret:0x0
  9374 ms  0x283c EC_ValidatePublicKey()
  9376 ms  0x283c ret:0x0
  9376 ms  0x283c EC_ValidatePublicKey()
  9377 ms  0x283c ret:0x0
  9377 ms  0x283c EC_ValidatePublicKey()
  9379 ms  0x283c ret:0x0
  9379 ms  0x283c EC_ValidatePublicKey()
  9380 ms  0x283c ret:0x0
  9380 ms  0x283c EC_ValidatePublicKey()
  9385 ms  0x283c ret:0x0
  9385 ms  0x283c EC_ValidatePublicKey()
  9387 ms  0x283c ret:0x0
  9387 ms  0x283c EC_ValidatePublicKey()
  9388 ms  0x283c ret:0x0
  9388 ms  0x283c EC_ValidatePublicKey()
  9390 ms  0x283c ret:0x0
           /* TID 0x2847 */
  9390 ms  0x2847 PR_Close()
  9390 ms  0x2847 fd:0x7f948459cd00
  9390 ms     | 0x2847 PK11_Encrypt()
  9390 ms     | 0x2847 symkey:0x7f94661c8700
  9390 ms  0x2847 PR_Close()
  9390 ms  0x2847 fd:0x7f948459cb80
  9390 ms  0x2847 PR_Close()
  9390 ms  0x2847 fd:0x7f948459c100
  9390 ms     | 0x2847 PK11_Encrypt()
  9390 ms     | 0x2847 symkey:0x7f94776f8280
  9391 ms  0x2847 PR_Close()
  9391 ms  0x2847 fd:0x7f9475594f70
  9391 ms  0x2847 PR_Close()
  9391 ms  0x2847 fd:0x7f94771f5ac0
           /* TID 0x289b */
  9391 ms  0x289b PR_Close()
  9391 ms  0x289b fd:0x7f94644967f0
  9391 ms  0x289b PR_Close()
  9391 ms  0x289b fd:0x7f94644967f0
           /* TID 0x283c */
  9394 ms  0x283c PR_Close()
  9394 ms  0x283c fd:0x7f947a2c7b20
  9394 ms  0x283c PR_Close()
  9394 ms  0x283c fd:0x7f947565d2e0
  9395 ms  0x283c PR_Close()
  9395 ms  0x283c fd:0x7f947565d370
  9395 ms  0x283c PR_Close()
  9395 ms  0x283c fd:0x7f947565d2e0
  9396 ms  0x283c PR_Close()
  9396 ms  0x283c fd:0x7f947565d370
  9396 ms  0x283c PR_Close()
  9396 ms  0x283c fd:0x7f947565d2e0
           /* TID 0x2889 */
  9399 ms  0x2889 PR_Close()
  9399 ms  0x2889 fd:0x7f947565d2e0
           /* TID 0x283c */
  9419 ms  0x283c PR_Close()
  9419 ms  0x283c fd:0x7f947565d370
  9419 ms  0x283c PR_Close()
  9419 ms  0x283c fd:0x7f947565dd00
  9420 ms  0x283c PR_Close()
  9420 ms  0x283c fd:0x7f947565d370
  9420 ms  0x283c PR_Close()
  9420 ms  0x283c fd:0x7f947565dd00
  9420 ms  0x283c PR_Close()
  9420 ms  0x283c fd:0x7f94806c89a0
  9420 ms  0x283c PR_Close()
  9420 ms  0x283c fd:0x7f94806c88b0
  9420 ms  0x283c PR_Close()
  9420 ms  0x283c fd:0x7f94806c8a60
  9423 ms  0x283c PR_Close()
  9423 ms  0x283c fd:0x7f947565dd00
  9424 ms  0x283c PR_Close()
  9424 ms  0x283c fd:0x7f947565dd00
  9426 ms  0x283c PR_Close()
  9426 ms  0x283c fd:0x7f947565d370
  9426 ms  0x283c PR_Close()
  9426 ms  0x283c fd:0x7f947565dd90
  9427 ms  0x283c PR_Close()
  9427 ms  0x283c fd:0x7f947565d370
  9427 ms  0x283c PR_Close()
  9427 ms  0x283c fd:0x7f947565dd90
  9429 ms  0x283c PR_Close()
  9429 ms  0x283c fd:0x7f947565ddc0
  9430 ms  0x283c PR_Close()
  9430 ms  0x283c fd:0x7f947565ddc0
  9432 ms  0x283c PR_Close()
  9432 ms  0x283c fd:0x7f947565d370
  9432 ms  0x283c PR_Close()
  9432 ms  0x283c fd:0x7f947565de20
  9432 ms  0x283c PR_Close()
  9432 ms  0x283c fd:0x7f947565d370
  9433 ms  0x283c PR_Close()
  9433 ms  0x283c fd:0x7f947565de20
           /* TID 0x2847 */
  9434 ms  0x2847 PK11_Encrypt()
  9434 ms  0x2847 symkey:0x7f946459a000
  9434 ms  0x2847 PR_Close()
  9434 ms  0x2847 fd:0x7f9475594d30
  9434 ms     | 0x2847 PK11_Encrypt()
  9434 ms     | 0x2847 symkey:0x7f946459a000
  9434 ms  0x2847 PK11_Encrypt()
  9434 ms  0x2847 symkey:0x7f9464599e00
  9435 ms  0x2847 PR_Close()
  9435 ms  0x2847 fd:0x7f9464496ee0
  9435 ms     | 0x2847 PK11_Encrypt()
  9435 ms     | 0x2847 symkey:0x7f9464599e00
           /* TID 0x283c */
  9436 ms  0x283c PR_Close()
  9436 ms  0x283c fd:0x7f94644965b0
  9438 ms  0x283c PR_Close()
  9438 ms  0x283c fd:0x7f94644965b0
  9444 ms  0x283c PR_Close()
  9444 ms  0x283c fd:0x7f94644e0bb0
  9445 ms  0x283c PR_Close()
  9445 ms  0x283c fd:0x7f94644e0bb0
  9447 ms  0x283c PR_Close()
  9447 ms  0x283c fd:0x7f9475594d30
           /* TID 0x284f */
  9452 ms  0x284f PR_Close()
  9452 ms  0x284f fd:0x7f9475594f70
           /* TID 0x2889 */
  9455 ms  0x2889 PR_Close()
  9455 ms  0x2889 fd:0x7f9475594f70
           /* TID 0x283c */
  9457 ms  0x283c PR_Close()
  9457 ms  0x283c fd:0x7f947565d370
  9457 ms  0x283c PR_Close()
  9457 ms  0x283c fd:0x7f9475a13070
           /* TID 0x2889 */
  9458 ms  0x2889 PR_Close()
  9458 ms  0x2889 fd:0x7f9475594f70
           /* TID 0x284f */
  9462 ms  0x284f PR_Close()
  9462 ms  0x284f fd:0x7f9475a130d0
  9462 ms  0x284f PR_Close()
  9462 ms  0x284f fd:0x7f9475a131f0
  9463 ms  0x284f PR_Close()
  9463 ms  0x284f fd:0x7f9475a130d0
  9463 ms  0x284f PR_Close()
  9463 ms  0x284f fd:0x7f9475a131f0
  9463 ms  0x284f PR_Close()
  9463 ms  0x284f fd:0x7f9475a132b0
  9463 ms  0x284f PR_Close()
  9463 ms  0x284f fd:0x7f9475a13400
  9463 ms  0x284f PR_Close()
  9463 ms  0x284f fd:0x7f9475a13850
  9463 ms  0x284f PR_Close()
  9463 ms  0x284f fd:0x7f9475a13ac0
  9463 ms  0x284f PR_Close()
  9463 ms  0x284f fd:0x7f9475a13be0
  9463 ms  0x284f PR_Close()
  9463 ms  0x284f fd:0x7f9475a13c70
  9463 ms  0x284f PR_Close()
  9463 ms  0x284f fd:0x7f9475a13cd0
  9463 ms  0x284f PR_Close()
  9463 ms  0x284f fd:0x7f9475a13d30
  9463 ms  0x284f PR_Close()
  9463 ms  0x284f fd:0x7f9475abf0d0
           /* TID 0x2889 */
  9464 ms  0x2889 PR_Close()
  9464 ms  0x2889 fd:0x7f947565d2e0
           /* TID 0x284f */
  9469 ms  0x284f PR_Close()
  9469 ms  0x284f fd:0x7f9464496910
           /* TID 0x2889 */
  9492 ms  0x2889 PR_Close()
  9492 ms  0x2889 fd:0x7f94644e0040
           /* TID 0x2847 */
  9497 ms  0x2847 PK11_Encrypt()
  9497 ms  0x2847 symkey:0x7f94646ec980
  9498 ms  0x2847 PK11_Encrypt()
  9498 ms  0x2847 symkey:0x7f94646ec980
  9498 ms  0x2847 PK11_Encrypt()
  9498 ms  0x2847 symkey:0x7f94646ec980
  9498 ms  0x2847 PR_Close()
  9498 ms  0x2847 fd:0x7f94646e8520
  9499 ms     | 0x2847 PK11_Encrypt()
  9499 ms     | 0x2847 symkey:0x7f94646ec980
           /* TID 0x2841 */
  9507 ms  0x2841 PR_Close()
  9507 ms  0x2841 fd:0x7f947f4f7df0
           /* TID 0x284f */
  9512 ms  0x284f PR_Close()
  9512 ms  0x284f fd:0x7f9464496850
           /* TID 0x2841 */
  9512 ms  0x2841 PR_Close()
  9512 ms  0x2841 fd:0x7f947b952820
           /* TID 0x2889 */
  9523 ms  0x2889 PR_Close()
  9523 ms  0x2889 fd:0x7f94644e00d0
           /* TID 0x283c */
  9526 ms  0x283c PR_Close()
  9526 ms  0x283c fd:0x7f947565d370
  9526 ms  0x283c PR_Close()
  9526 ms  0x283c fd:0x7f94644e00d0
           /* TID 0x2847 */
  9526 ms  0x2847 PR_Close()
  9526 ms  0x2847 fd:0x7f94768cc700
           /* TID 0x289b */
  9527 ms  0x289b PR_Close()
  9527 ms  0x289b fd:0x7f94646e84f0
  9527 ms  0x289b PR_Close()
  9527 ms  0x289b fd:0x7f94646e84f0
  9527 ms  0x289b PR_Close()
  9527 ms  0x289b fd:0x7f94646fcaf0
  9527 ms  0x289b PR_Close()
  9527 ms  0x289b fd:0x7f9464496760
           /* TID 0x2889 */
  9528 ms  0x2889 PR_Close()
  9528 ms  0x2889 fd:0x7f94646e86a0
           /* TID 0x284f */
  9531 ms  0x284f PR_Close()
  9531 ms  0x284f fd:0x7f94661b0790
  9531 ms  0x284f PR_Close()
  9531 ms  0x284f fd:0x7f94661b07c0
           /* TID 0x2841 */
  9537 ms  0x2841 PR_Close()
  9537 ms  0x2841 fd:0x7f94771f5100
           /* TID 0x283c */
  9539 ms  0x283c PR_Close()
  9539 ms  0x283c fd:0x7f94646e85e0
  9539 ms  0x283c PR_Close()
  9539 ms  0x283c fd:0x7f94661b0a60
           /* TID 0x2889 */
  9541 ms  0x2889 PR_Close()
  9541 ms  0x2889 fd:0x7f94646e8550
  9545 ms  0x2889 PR_Close()
  9545 ms  0x2889 fd:0x7f94646e8550
  9593 ms  0x2889 PR_Close()
  9593 ms  0x2889 fd:0x7f94644967c0
  9609 ms  0x2889 PR_Close()
  9609 ms  0x2889 fd:0x7f94644967c0
  9614 ms  0x2889 PR_Close()
  9614 ms  0x2889 fd:0x7f94646e8a00
  9615 ms  0x2889 PR_Close()
  9615 ms  0x2889 fd:0x7f94646e8a60
  9624 ms  0x2889 PR_Close()
  9624 ms  0x2889 fd:0x7f94646e8d30
  9628 ms  0x2889 PR_Close()
  9628 ms  0x2889 fd:0x7f94661b0340
  9634 ms  0x2889 PR_Close()
  9634 ms  0x2889 fd:0x7f94661b0760
  9644 ms  0x2889 PR_Close()
  9644 ms  0x2889 fd:0x7f94661b0ac0
  9646 ms  0x2889 PR_Close()
  9646 ms  0x2889 fd:0x7f94661b0ac0
           /* TID 0x283c */
  9807 ms  0x283c PR_Close()
  9807 ms  0x283c fd:0x7f946440f2e0
  9807 ms  0x283c PR_Close()
  9807 ms  0x283c fd:0x7f946440f2e0
  9813 ms  0x283c PR_Close()
  9813 ms  0x283c fd:0x7f949d9da130
  9813 ms  0x283c PR_Close()
  9813 ms  0x283c fd:0x7f949d9da190
Process terminated
