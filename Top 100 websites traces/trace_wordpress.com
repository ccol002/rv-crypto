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
           /* TID 0x117d */
    88 ms  0x117d PR_Close()
    88 ms  0x117d fd:0x7fdba7bcf640
           /* TID 0x1175 */
   390 ms  0x1175 SSL_ImportFD()
   391 ms  0x1175 ret:0x7fdba7ccb700
   391 ms  0x1175 SSL_AuthCertificateHook()
   391 ms  0x1175 fd:0x7fdba7ccb700
   391 ms  0x1175 ret:0x0
   391 ms  0x1175 PR_Connect()
   391 ms  0x1175 fd:0x7fdba7ccb700
   600 ms  0x1175 SECKEY_CreateECPrivateKey()
   600 ms  0x1175 cx:0x7fdba7bd3b28
   602 ms     | 0x1175 EC_ValidatePublicKey()
   602 ms     | 0x1175 ret:0x0
   602 ms  0x1175 ret:0x7fdba7c49020::7fdba7c49020  d0 7d 99 a7                                      .}..
   602 ms  0x1175 SECKEY_CreateECPrivateKey()
   602 ms  0x1175 cx:0x7fdba7bd3b28
   604 ms     | 0x1175 EC_ValidatePublicKey()
   609 ms     | 0x1175 ret:0x0
   609 ms  0x1175 ret:0x7fdba7c4b020::7fdba7c4b020  b0 7f 99 a7                                      ....
           /* TID 0x11df */
   620 ms  0x11df PR_Close()
   620 ms  0x11df fd:0x7fdba7ccb130
   670 ms  0x11df PR_Close()
   670 ms  0x11df fd:0x7fdba7ccb130
   778 ms  0x11df PR_Close()
   778 ms  0x11df fd:0x7fdba7ccb1f0
           /* TID 0x1175 */
   823 ms  SECKEY_ECParamsToKeySize()
   823 ms  0x1175 ret:0x100
   823 ms  0x1175 SECKEY_CreateECPrivateKey()
   823 ms  0x1175 cx:0x7fdba7bd3b28
   824 ms     | 0x1175 EC_ValidatePublicKey()
   826 ms     | 0x1175 ret:0x0
   826 ms  0x1175 ret:0x7fdba7c54020::7fdba7c54020  20 09 cf a7                                       ...
   826 ms  0x1175 PK11_PubDeriveWithKDF()
   826 ms  0x1175 seckey:0x7fdba7c54020
   826 ms     | 0x1175 EC_ValidatePublicKey()
   827 ms     | 0x1175 ret:0x0
   829 ms  0x1175 ret:0x7fdba97e5c00
   829 ms  0x1175 PK11_DeriveWithFlags()
   829 ms  0x1175 basekey:0x7fdba97e5c00
   829 ms     | 0x1175 PK11_DeriveWithTemplate()
   829 ms  0x1175 ret:0x7fdba7ce3280
   829 ms  0x1175 PK11_Derive()
   829 ms  0x1175 basekey:0x7fdba7ce3280
   829 ms     | 0x1175 PK11_DeriveWithTemplate()
   829 ms  0x1175 ret:0x7fdba7ce3300
   829 ms  0x1175 SECKEY_DestroyPrivateKey()
   829 ms  0x1175 privk:0x7fdba7c54020::7fdba7c54020  20 09 cf a7                                       ...
   829 ms  0x1175 privk:0x7fdba7c54020::7fdba7c54020  e5 e5 e5 e5                                      ....
   829 ms  0x1175 PK11_Encrypt()
   829 ms  0x1175 symkey:0x7fdba7ce3500
   831 ms  0x1175 PR_Connect()
   831 ms  0x1175 fd:0x7fdba7ccbc70
           /* TID 0x11d1 */
   883 ms  0x11d1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   883 ms  0x11d1 ret:0x0
           /* TID 0x117d */
   884 ms  0x117d PR_Close()
   884 ms  0x117d fd:0x7fdba7ccbb50
           /* TID 0x1175 */
   884 ms  0x1175 SSL_AuthCertificateComplete()
   884 ms  0x1175 fd:0x7fdba7ccb700
   884 ms  0x1175 err:0x0
   884 ms  0x1175 PK11_Encrypt()
   884 ms  0x1175 symkey:0x7fdba7ce3500
  1038 ms  0x1175 SECKEY_DestroyPrivateKey()
  1038 ms  0x1175 privk:0x7fdba7c4b020::7fdba7c4b020  b0 7f 99 a7                                      ....
  1039 ms  0x1175 privk:0x7fdba7c4b020::7fdba7c4b020  e5 e5 e5 e5                                      ....
  1039 ms  0x1175 SECKEY_DestroyPrivateKey()
  1039 ms  0x1175 privk:0x7fdba7c49020::7fdba7c49020  d0 7d 99 a7                                      .}..
  1039 ms  0x1175 privk:0x7fdba7c49020::7fdba7c49020  e5 e5 e5 e5                                      ....
  1255 ms  0x1175 SSL_ImportFD()
  1255 ms  0x1175 ret:0x7fdba7ccbe20
  1255 ms  0x1175 SSL_AuthCertificateHook()
  1255 ms  0x1175 fd:0x7fdba7ccbe20
  1255 ms  0x1175 ret:0x0
  1255 ms  0x1175 PR_Connect()
  1255 ms  0x1175 fd:0x7fdba7ccbe20
  1281 ms  0x1175 SECKEY_CreateECPrivateKey()
  1281 ms  0x1175 cx:0x7fdba7cf18c8
  1283 ms     | 0x1175 EC_ValidatePublicKey()
  1283 ms     | 0x1175 ret:0x0
  1283 ms  0x1175 ret:0x7fdba7c49820::7fdba7c49820  b0 05 cf a7                                      ....
  1283 ms  0x1175 SECKEY_CreateECPrivateKey()
  1283 ms  0x1175 cx:0x7fdba7cf18c8
  1285 ms     | 0x1175 EC_ValidatePublicKey()
  1291 ms     | 0x1175 ret:0x0
  1291 ms  0x1175 ret:0x7fdba7c50020::7fdba7c50020  70 7e 99 a7                                      p~..
           /* TID 0x11d1 */
  1344 ms  0x11d1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1344 ms  0x11d1 ret:0x0
           /* TID 0x1175 */
  1345 ms  SECKEY_ECParamsToKeySize()
  1345 ms  0x1175 ret:0x100
  1345 ms  0x1175 SECKEY_CreateECPrivateKey()
  1345 ms  0x1175 cx:0x7fdba7cf18c8
  1347 ms     | 0x1175 EC_ValidatePublicKey()
  1352 ms     | 0x1175 ret:0x0
  1352 ms  0x1175 ret:0x7fdba7c53820::7fdba7c53820  00 0b cf a7                                      ....
  1352 ms  0x1175 PK11_PubDeriveWithKDF()
  1352 ms  0x1175 seckey:0x7fdba7c53820
  1352 ms     | 0x1175 EC_ValidatePublicKey()
  1356 ms     | 0x1175 ret:0x0
  1361 ms  0x1175 ret:0x7fdba97e5c00
  1361 ms  0x1175 PK11_DeriveWithFlags()
  1361 ms  0x1175 basekey:0x7fdba97e5c00
  1361 ms     | 0x1175 PK11_DeriveWithTemplate()
  1361 ms  0x1175 ret:0x7fdba7c77780
  1361 ms  0x1175 PK11_Derive()
  1361 ms  0x1175 basekey:0x7fdba7c77780
  1361 ms     | 0x1175 PK11_DeriveWithTemplate()
  1361 ms  0x1175 ret:0x7fdba7ce4000
  1361 ms  0x1175 SECKEY_DestroyPrivateKey()
  1361 ms  0x1175 privk:0x7fdba7c53820::7fdba7c53820  00 0b cf a7                                      ....
  1361 ms  0x1175 privk:0x7fdba7c53820::7fdba7c53820  e5 e5 e5 e5                                      ....
  1362 ms  0x1175 PK11_Encrypt()
  1362 ms  0x1175 symkey:0x7fdba7ce4500
  1362 ms  0x1175 SSL_AuthCertificateComplete()
  1362 ms  0x1175 fd:0x7fdba7ccbe20
  1362 ms  0x1175 err:0x0
  1362 ms  0x1175 PK11_Encrypt()
  1362 ms  0x1175 symkey:0x7fdba7ce4500
  1414 ms  0x1175 SECKEY_DestroyPrivateKey()
  1414 ms  0x1175 privk:0x7fdba7c50020::7fdba7c50020  70 7e 99 a7                                      p~..
  1414 ms  0x1175 privk:0x7fdba7c50020::7fdba7c50020  e5 e5 e5 e5                                      ....
  1415 ms  0x1175 SECKEY_DestroyPrivateKey()
  1415 ms  0x1175 privk:0x7fdba7c49820::7fdba7c49820  b0 05 cf a7                                      ....
  1415 ms  0x1175 privk:0x7fdba7c49820::7fdba7c49820  e5 e5 e5 e5                                      ....
  1418 ms  0x1175 PK11_Encrypt()
  1418 ms  0x1175 symkey:0x7fdba7ce4500
  1449 ms  0x1175 PK11_Encrypt()
  1449 ms  0x1175 symkey:0x7fdba7ce4500
  1481 ms  0x1175 PK11_Encrypt()
  1481 ms  0x1175 symkey:0x7fdba7ce4500
  1511 ms  0x1175 PK11_Encrypt()
  1511 ms  0x1175 symkey:0x7fdba7ce4500
  1630 ms  0x1175 PK11_Encrypt()
  1630 ms  0x1175 symkey:0x7fdba7ce4500
  1664 ms  0x1175 PK11_Encrypt()
  1664 ms  0x1175 symkey:0x7fdba7ce4500
  1695 ms  0x1175 PK11_Encrypt()
  1695 ms  0x1175 symkey:0x7fdba7ce4500
           /* TID 0x11cb */
  1723 ms  0x11cb PR_Close()
  1723 ms  0x11cb fd:0x7fdb96c14070
  1723 ms  0x11cb PR_Close()
  1723 ms  0x11cb fd:0x7fdb96c140d0
  1723 ms  0x11cb PR_Close()
  1723 ms  0x11cb fd:0x7fdb96c14070
  1723 ms  0x11cb PR_Close()
  1723 ms  0x11cb fd:0x7fdb96c140d0
  1723 ms  0x11cb PR_Close()
  1723 ms  0x11cb fd:0x7fdb96c14070
  1723 ms  0x11cb PR_Close()
  1723 ms  0x11cb fd:0x7fdb96c140d0
  1723 ms  0x11cb PR_Close()
  1723 ms  0x11cb fd:0x7fdb96c14070
  1723 ms  0x11cb PR_Close()
  1723 ms  0x11cb fd:0x7fdb96c140d0
  1723 ms  0x11cb PR_Close()
  1723 ms  0x11cb fd:0x7fdb96c14070
  1724 ms  0x11cb PR_Close()
  1724 ms  0x11cb fd:0x7fdb96c140d0
  1724 ms  0x11cb PR_Close()
  1724 ms  0x11cb fd:0x7fdb96c14070
  1724 ms  0x11cb PR_Close()
  1724 ms  0x11cb fd:0x7fdb96c140d0
  1724 ms  0x11cb PR_Close()
  1724 ms  0x11cb fd:0x7fdb96c14070
  1724 ms  0x11cb PR_Close()
  1724 ms  0x11cb fd:0x7fdb96c140d0
  1724 ms  0x11cb PR_Close()
  1724 ms  0x11cb fd:0x7fdb96c14070
  1724 ms  0x11cb PR_Close()
  1724 ms  0x11cb fd:0x7fdb96c140d0
  1724 ms  0x11cb PR_Close()
  1724 ms  0x11cb fd:0x7fdb96c14070
  1724 ms  0x11cb PR_Close()
  1724 ms  0x11cb fd:0x7fdb96c140d0
  1724 ms  0x11cb PR_Close()
  1724 ms  0x11cb fd:0x7fdb96c14070
  1724 ms  0x11cb PR_Close()
  1724 ms  0x11cb fd:0x7fdb96c140d0
  1724 ms  0x11cb PR_Close()
  1724 ms  0x11cb fd:0x7fdb96c14070
  1724 ms  0x11cb PR_Close()
  1724 ms  0x11cb fd:0x7fdb96c140d0
  1724 ms  0x11cb PR_Close()
  1724 ms  0x11cb fd:0x7fdb96c14070
  1725 ms  0x11cb PR_Close()
  1725 ms  0x11cb fd:0x7fdb96c140d0
  1725 ms  0x11cb PR_Close()
  1725 ms  0x11cb fd:0x7fdb96c14070
  1725 ms  0x11cb PR_Close()
  1725 ms  0x11cb fd:0x7fdb96c140d0
  1725 ms  0x11cb PR_Close()
  1725 ms  0x11cb fd:0x7fdb96c14070
  1725 ms  0x11cb PR_Close()
  1725 ms  0x11cb fd:0x7fdb96c140d0
  1728 ms  0x11cb PR_Close()
  1728 ms  0x11cb fd:0x7fdb96c14070
  1728 ms  0x11cb PR_Close()
  1728 ms  0x11cb fd:0x7fdb96c14070
  1731 ms  0x11cb PR_Close()
  1731 ms  0x11cb fd:0x7fdb96c14070
  1731 ms  0x11cb PR_Close()
  1731 ms  0x11cb fd:0x7fdb96c140a0
  1733 ms  0x11cb PR_Close()
  1733 ms  0x11cb fd:0x7fdb96c140a0
  1733 ms  0x11cb PR_Close()
  1733 ms  0x11cb fd:0x7fdb96c140a0
  1736 ms  0x11cb PR_Close()
  1736 ms  0x11cb fd:0x7fdb96c140a0
  1736 ms  0x11cb PR_Close()
  1736 ms  0x11cb fd:0x7fdb96c140a0
  1785 ms  0x11cb PR_Close()
  1785 ms  0x11cb fd:0x7fdb96c140a0
  1785 ms  0x11cb PR_Close()
  1785 ms  0x11cb fd:0x7fdb96c140a0
  1793 ms  0x11cb PR_Close()
  1793 ms  0x11cb fd:0x7fdb96c140a0
  1793 ms  0x11cb PR_Close()
  1793 ms  0x11cb fd:0x7fdb96c140a0
  1799 ms  0x11cb PR_Close()
  1799 ms  0x11cb fd:0x7fdb96c140a0
  1799 ms  0x11cb PR_Close()
  1799 ms  0x11cb fd:0x7fdb96c140a0
  1801 ms  0x11cb PR_Close()
  1801 ms  0x11cb fd:0x7fdb96c140a0
  1801 ms  0x11cb PR_Close()
  1801 ms  0x11cb fd:0x7fdb96c140a0
           /* TID 0x11c8 */
  1802 ms  0x11c8 PR_Close()
  1802 ms  0x11c8 fd:0x7fdb96c140a0
  1802 ms  0x11c8 PR_Close()
  1802 ms  0x11c8 fd:0x7fdb96c140a0
  1802 ms  0x11c8 PR_Close()
  1802 ms  0x11c8 fd:0x7fdb96c140a0
  1802 ms  0x11c8 PR_Close()
  1802 ms  0x11c8 fd:0x7fdb96c140a0
  1802 ms  0x11c8 PR_Close()
  1802 ms  0x11c8 fd:0x7fdb96c140a0
  1802 ms  0x11c8 PR_Close()
  1802 ms  0x11c8 fd:0x7fdb96c140a0
  1802 ms  0x11c8 PR_Close()
  1802 ms  0x11c8 fd:0x7fdb96c140a0
  1802 ms  0x11c8 PR_Close()
  1802 ms  0x11c8 fd:0x7fdb96c140a0
  1802 ms  0x11c8 PR_Close()
  1802 ms  0x11c8 fd:0x7fdb96c140a0
  1802 ms  0x11c8 PR_Close()
  1802 ms  0x11c8 fd:0x7fdb96c140a0
  1802 ms  0x11c8 PR_Close()
  1802 ms  0x11c8 fd:0x7fdb96c140a0
  1802 ms  0x11c8 PR_Close()
  1802 ms  0x11c8 fd:0x7fdb96c140a0
  1802 ms  0x11c8 PR_Close()
  1802 ms  0x11c8 fd:0x7fdb96c140a0
  1802 ms  0x11c8 PR_Close()
  1802 ms  0x11c8 fd:0x7fdb96c140a0
  1802 ms  0x11c8 PR_Close()
  1802 ms  0x11c8 fd:0x7fdb96c140a0
           /* TID 0x11df */
  2305 ms  0x11df PR_Close()
  2305 ms  0x11df fd:0x7fdb96c14460
  2308 ms  0x11df PR_Close()
  2308 ms  0x11df fd:0x7fdb96c14460
  2821 ms  0x11df PR_Close()
  2821 ms  0x11df fd:0x7fdb96c14460
           /* TID 0x117d */
  4171 ms  0x117d PR_Close()
  4171 ms  0x117d fd:0x7fdb96c14460
  4171 ms  0x117d PR_Close()
  4171 ms  0x117d fd:0x7fdb96c145b0
           /* TID 0x1175 */
  4501 ms  0x1175 SSL_ImportFD()
  4501 ms  0x1175 ret:0x7fdbadf6b730
  4501 ms  0x1175 SSL_AuthCertificateHook()
  4501 ms  0x1175 fd:0x7fdbadf6b730
  4501 ms  0x1175 ret:0x0
  4501 ms  0x1175 PR_Connect()
  4501 ms  0x1175 fd:0x7fdbadf6b730
  4527 ms  0x1175 SECKEY_CreateECPrivateKey()
  4527 ms  0x1175 cx:0x7fdba7cf1c08
  4527 ms     | 0x1175 EC_ValidatePublicKey()
  4527 ms     | 0x1175 ret:0x0
  4527 ms  0x1175 ret:0x7fdbcff74820::7fdbcff74820  40 c7 91 a8                                      @...
  4527 ms  0x1175 SECKEY_CreateECPrivateKey()
  4527 ms  0x1175 cx:0x7fdba7cf1c08
  4528 ms     | 0x1175 EC_ValidatePublicKey()
  4530 ms     | 0x1175 ret:0x0
  4530 ms  0x1175 ret:0x7fdb96a04020::7fdb96a04020  50 cb 91 a8                                      P...
  4556 ms  0x1175 PK11_Derive()
  4556 ms  0x1175 basekey:0x7fdba97e5c00
  4556 ms     | 0x1175 PK11_DeriveWithTemplate()
  4556 ms  0x1175 ret:0x7fdb96be7580
  4556 ms  0x1175 PK11_PubDeriveWithKDF()
  4556 ms  0x1175 seckey:0x7fdbcff74820
  4556 ms     | 0x1175 EC_ValidatePublicKey()
  4556 ms     | 0x1175 ret:0x0
  4557 ms  0x1175 ret:0x7fdba97e5c00
  4557 ms  SECKEY_ECParamsToKeySize()
  4557 ms  0x1175 ret:0xff
  4557 ms  0x1175 PK11_DeriveWithFlags()
  4557 ms  0x1175 basekey:0x7fdb96be7580
  4557 ms     | 0x1175 PK11_DeriveWithTemplate()
  4557 ms  0x1175 ret:0x7fdb96be7880
  4557 ms  0x1175 PK11_Derive()
  4557 ms  0x1175 basekey:0x7fdba97e5c00
  4557 ms     | 0x1175 PK11_DeriveWithTemplate()
  4557 ms  0x1175 ret:0x7fdb96be7a80
  4557 ms  0x1175 PK11_DeriveWithFlags()
  4557 ms  0x1175 basekey:0x7fdb96be7a80
  4557 ms     | 0x1175 PK11_DeriveWithTemplate()
  4557 ms  0x1175 ret:0x7fdb96be7580
  4557 ms  0x1175 PK11_DeriveWithFlags()
  4557 ms  0x1175 basekey:0x7fdb96be7a80
  4557 ms     | 0x1175 PK11_DeriveWithTemplate()
  4557 ms  0x1175 ret:0x7fdba97e5c00
  4557 ms  0x1175 PK11_DeriveWithFlags()
  4557 ms  0x1175 basekey:0x7fdb96be7a80
  4557 ms     | 0x1175 PK11_DeriveWithTemplate()
  4557 ms  0x1175 ret:0x7fdb96be7880
  4557 ms  0x1175 PK11_Derive()
  4557 ms  0x1175 basekey:0x7fdb96be7b00
  4557 ms     | 0x1175 PK11_DeriveWithTemplate()
  4557 ms  0x1175 ret:0x7fdb96be7b80
  4557 ms  0x1175 PK11_DeriveWithFlags()
  4557 ms  0x1175 basekey:0x7fdba97e5c00
  4557 ms     | 0x1175 PK11_DeriveWithTemplate()
  4557 ms  0x1175 ret:0x7fdb96be7a80
  4557 ms  0x1175 PK11_DeriveWithFlags()
  4557 ms  0x1175 basekey:0x7fdba97e5c00
  4557 ms     | 0x1175 PK11_DeriveWithTemplate()
  4557 ms  0x1175 ret:0x7fdb96be7880
           /* TID 0x11d1 */
  4559 ms  0x11d1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4559 ms  0x11d1 ret:0x0
           /* TID 0x1175 */
  4560 ms  0x1175 PK11_DeriveWithFlags()
  4560 ms  0x1175 basekey:0x7fdba97e5c00
  4560 ms     | 0x1175 PK11_DeriveWithTemplate()
  4560 ms  0x1175 ret:0x7fdb96be7880
  4565 ms  0x1175 SSL_AuthCertificateComplete()
  4565 ms  0x1175 fd:0x7fdbadf6b730
  4565 ms  0x1175 err:0x0
  4565 ms     | 0x1175 PK11_DeriveWithFlags()
  4565 ms     | 0x1175 basekey:0x7fdb96be7b80
  4565 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4565 ms     | 0x1175 ret:0x7fdb96be7880
  4565 ms     | 0x1175 PK11_DeriveWithFlags()
  4565 ms     | 0x1175 basekey:0x7fdb96be7b80
  4565 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4565 ms     | 0x1175 ret:0x7fdb96be7b00
  4565 ms     | 0x1175 PK11_DeriveWithFlags()
  4565 ms     | 0x1175 basekey:0x7fdb96be7b80
  4565 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4565 ms     | 0x1175 ret:0x7fdb96be7e00
  4565 ms     | 0x1175 PK11_DeriveWithFlags()
  4565 ms     | 0x1175 basekey:0x7fdb96be7580
  4565 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4565 ms     | 0x1175 ret:0x7fdb96be7e80
  4565 ms     | 0x1175 PK11_DeriveWithFlags()
  4565 ms     | 0x1175 basekey:0x7fdb96be7580
  4565 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4565 ms     | 0x1175 ret:0x7fdb96be7f00
  4565 ms     | 0x1175 PK11_DeriveWithFlags()
  4565 ms     | 0x1175 basekey:0x7fdb96be7b00
  4565 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4566 ms     | 0x1175 ret:0x7fdb96be7f00
  4566 ms     | 0x1175 PK11_DeriveWithFlags()
  4566 ms     | 0x1175 basekey:0x7fdb96be7b00
  4566 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4566 ms     | 0x1175 ret:0x7fdb96be7f80
  4566 ms     | 0x1175 PK11_DeriveWithFlags()
  4566 ms     | 0x1175 basekey:0x7fdb96be7580
  4566 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4566 ms     | 0x1175 ret:0x7fdb96be7a80
  4566 ms     | 0x1175 PK11_Encrypt()
  4566 ms     | 0x1175 symkey:0x7fdb96be7e80
  4566 ms     | 0x1175 PK11_DeriveWithFlags()
  4566 ms     | 0x1175 basekey:0x7fdb96be7880
  4566 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4566 ms     | 0x1175 ret:0x7fdb96be7a80
  4566 ms     | 0x1175 PK11_DeriveWithFlags()
  4566 ms     | 0x1175 basekey:0x7fdb96be7880
  4566 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4566 ms     | 0x1175 ret:0x7fdb96be7f80
  4566 ms     | 0x1175 PK11_DeriveWithFlags()
  4566 ms     | 0x1175 basekey:0x7fdb96be7b80
  4566 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4566 ms     | 0x1175 ret:0x7fdb96be7e80
  4566 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  4566 ms     | 0x1175 privk:0x7fdb96a04020::7fdb96a04020  50 cb 91 a8                                      P...
  4566 ms     | 0x1175 privk:0x7fdb96a04020::7fdb96a04020  e5 e5 e5 e5                                      ....
  4566 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  4566 ms     | 0x1175 privk:0x7fdbcff74820::7fdbcff74820  40 c7 91 a8                                      @...
  4566 ms     | 0x1175 privk:0x7fdbcff74820::7fdbcff74820  e5 e5 e5 e5                                      ....
  4567 ms  0x1175 PK11_Encrypt()
  4567 ms  0x1175 symkey:0x7fdb96be7a80
  4567 ms  0x1175 PK11_Encrypt()
  4567 ms  0x1175 symkey:0x7fdb96be7a80
  4591 ms  0x1175 PK11_DeriveWithFlags()
  4591 ms  0x1175 basekey:0x7fdb96be7e80
  4591 ms     | 0x1175 PK11_DeriveWithTemplate()
  4591 ms  0x1175 ret:0x7fdba97e5c00
  4591 ms  0x1175 PK11_DeriveWithFlags()
  4591 ms  0x1175 basekey:0x7fdb96be7e80
  4591 ms     | 0x1175 PK11_DeriveWithTemplate()
  4591 ms  0x1175 ret:0x7fdba97e5c00
  4591 ms  0x1175 PK11_Encrypt()
  4591 ms  0x1175 symkey:0x7fdb96be7a80
           /* TID 0x118c */
  4744 ms  0x118c PR_Close()
  4744 ms  0x118c fd:0x7fdb96be6e80
           /* TID 0x1175 */
  4781 ms  0x1175 SSL_ImportFD()
  4781 ms  0x1175 ret:0x7fdba91c6460
  4781 ms  0x1175 SSL_AuthCertificateHook()
  4781 ms  0x1175 fd:0x7fdba91c6460
  4781 ms  0x1175 ret:0x0
  4781 ms  0x1175 PR_Connect()
  4781 ms  0x1175 fd:0x7fdba91c6460
  4807 ms  0x1175 SECKEY_CreateECPrivateKey()
  4807 ms  0x1175 cx:0x7fdba7cf2288
  4808 ms     | 0x1175 EC_ValidatePublicKey()
  4808 ms     | 0x1175 ret:0x0
  4808 ms  0x1175 ret:0x7fdb96a19820::7fdb96a19820  40 2c bf 96                                      @,..
  4808 ms  0x1175 SECKEY_CreateECPrivateKey()
  4808 ms  0x1175 cx:0x7fdba7cf2288
  4809 ms     | 0x1175 EC_ValidatePublicKey()
  4814 ms     | 0x1175 ret:0x0
  4814 ms  0x1175 ret:0x7fdb96a1b820::7fdb96a1b820  c0 ee bb 96                                      ....
  4840 ms  0x1175 PK11_Derive()
  4840 ms  0x1175 basekey:0x7fdba97e5c00
  4840 ms     | 0x1175 PK11_DeriveWithTemplate()
  4840 ms  0x1175 ret:0x7fdb96be7580
  4840 ms  0x1175 PK11_PubDeriveWithKDF()
  4840 ms  0x1175 seckey:0x7fdb96a19820
  4840 ms     | 0x1175 EC_ValidatePublicKey()
  4840 ms     | 0x1175 ret:0x0
  4842 ms  0x1175 ret:0x7fdba97e5c00
  4842 ms  SECKEY_ECParamsToKeySize()
  4842 ms  0x1175 ret:0xff
  4842 ms  0x1175 PK11_DeriveWithFlags()
  4842 ms  0x1175 basekey:0x7fdb96be7580
  4842 ms     | 0x1175 PK11_DeriveWithTemplate()
  4842 ms  0x1175 ret:0x7fdb96be7b80
  4842 ms  0x1175 PK11_Derive()
  4842 ms  0x1175 basekey:0x7fdba97e5c00
  4842 ms     | 0x1175 PK11_DeriveWithTemplate()
  4842 ms  0x1175 ret:0x7fdb96be7f80
  4842 ms  0x1175 PK11_DeriveWithFlags()
  4842 ms  0x1175 basekey:0x7fdb96be7f80
  4842 ms     | 0x1175 PK11_DeriveWithTemplate()
  4842 ms  0x1175 ret:0x7fdb96be7580
  4842 ms  0x1175 PK11_DeriveWithFlags()
  4842 ms  0x1175 basekey:0x7fdb96be7f80
  4845 ms     | 0x1175 PK11_DeriveWithTemplate()
  4845 ms  0x1175 ret:0x7fdba97e5c00
  4845 ms  0x1175 PK11_DeriveWithFlags()
  4845 ms  0x1175 basekey:0x7fdb96be7f80
  4845 ms     | 0x1175 PK11_DeriveWithTemplate()
  4845 ms  0x1175 ret:0x7fdb96be7b80
  4845 ms  0x1175 PK11_Derive()
  4845 ms  0x1175 basekey:0x7fdb96be8e00
  4845 ms     | 0x1175 PK11_DeriveWithTemplate()
  4845 ms  0x1175 ret:0x7fdb96be8e80
  4845 ms  0x1175 PK11_DeriveWithFlags()
  4845 ms  0x1175 basekey:0x7fdba97e5c00
  4845 ms     | 0x1175 PK11_DeriveWithTemplate()
  4845 ms  0x1175 ret:0x7fdb96be7f80
  4845 ms  0x1175 PK11_DeriveWithFlags()
  4845 ms  0x1175 basekey:0x7fdba97e5c00
  4845 ms     | 0x1175 PK11_DeriveWithTemplate()
  4845 ms  0x1175 ret:0x7fdb96be7b80
           /* TID 0x11d1 */
  4847 ms  0x11d1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4848 ms  0x11d1 ret:0x0
           /* TID 0x1175 */
  4848 ms  0x1175 PK11_DeriveWithFlags()
  4848 ms  0x1175 basekey:0x7fdba97e5c00
  4848 ms     | 0x1175 PK11_DeriveWithTemplate()
  4848 ms  0x1175 ret:0x7fdb96be7b80
  4848 ms  0x1175 SSL_AuthCertificateComplete()
  4848 ms  0x1175 fd:0x7fdba91c6460
  4848 ms  0x1175 err:0x0
  4848 ms     | 0x1175 PK11_DeriveWithFlags()
  4848 ms     | 0x1175 basekey:0x7fdb96be8e80
  4848 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4848 ms     | 0x1175 ret:0x7fdb96be7b80
  4848 ms     | 0x1175 PK11_DeriveWithFlags()
  4848 ms     | 0x1175 basekey:0x7fdb96be8e80
  4849 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4849 ms     | 0x1175 ret:0x7fdb96be8e00
  4849 ms     | 0x1175 PK11_DeriveWithFlags()
  4849 ms     | 0x1175 basekey:0x7fdb96be8e80
  4849 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4849 ms     | 0x1175 ret:0x7fdb96be8f00
  4849 ms     | 0x1175 PK11_DeriveWithFlags()
  4849 ms     | 0x1175 basekey:0x7fdb96be7580
  4849 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4849 ms     | 0x1175 ret:0x7fdb96be8f80
  4849 ms     | 0x1175 PK11_DeriveWithFlags()
  4849 ms     | 0x1175 basekey:0x7fdb96be7580
  4849 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4849 ms     | 0x1175 ret:0x7fdb96bf0580
  4849 ms     | 0x1175 PK11_DeriveWithFlags()
  4849 ms     | 0x1175 basekey:0x7fdb96be8e00
  4849 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4849 ms     | 0x1175 ret:0x7fdb96bf0580
  4849 ms     | 0x1175 PK11_DeriveWithFlags()
  4849 ms     | 0x1175 basekey:0x7fdb96be8e00
  4849 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4849 ms     | 0x1175 ret:0x7fdb96c1e700
  4849 ms     | 0x1175 PK11_DeriveWithFlags()
  4849 ms     | 0x1175 basekey:0x7fdb96be7580
  4849 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4849 ms     | 0x1175 ret:0x7fdb96be7f80
  4849 ms     | 0x1175 PK11_Encrypt()
  4849 ms     | 0x1175 symkey:0x7fdb96be8f80
  4850 ms     | 0x1175 PK11_DeriveWithFlags()
  4850 ms     | 0x1175 basekey:0x7fdb96be7b80
  4850 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4850 ms     | 0x1175 ret:0x7fdb96be7f80
  4850 ms     | 0x1175 PK11_DeriveWithFlags()
  4850 ms     | 0x1175 basekey:0x7fdb96be7b80
  4850 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4850 ms     | 0x1175 ret:0x7fdb96c1e700
  4851 ms     | 0x1175 PK11_DeriveWithFlags()
  4851 ms     | 0x1175 basekey:0x7fdb96be8e80
  4851 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  4851 ms     | 0x1175 ret:0x7fdb96be8f80
  4851 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  4851 ms     | 0x1175 privk:0x7fdb96a1b820::7fdb96a1b820  c0 ee bb 96                                      ....
  4851 ms     | 0x1175 privk:0x7fdb96a1b820::7fdb96a1b820  e5 e5 e5 e5                                      ....
  4851 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  4851 ms     | 0x1175 privk:0x7fdb96a19820::7fdb96a19820  40 2c bf 96                                      @,..
  4851 ms     | 0x1175 privk:0x7fdb96a19820::7fdb96a19820  e5 e5 e5 e5                                      ....
  4852 ms  0x1175 PK11_Encrypt()
  4852 ms  0x1175 symkey:0x7fdb96be7f80
  4853 ms  0x1175 PK11_Encrypt()
  4853 ms  0x1175 symkey:0x7fdb96be7f80
  4876 ms  0x1175 PK11_DeriveWithFlags()
  4876 ms  0x1175 basekey:0x7fdb96be8f80
  4876 ms     | 0x1175 PK11_DeriveWithTemplate()
  4876 ms  0x1175 ret:0x7fdba97e5c00
  4876 ms  0x1175 PK11_DeriveWithFlags()
  4876 ms  0x1175 basekey:0x7fdb96be8f80
  4876 ms     | 0x1175 PK11_DeriveWithTemplate()
  4876 ms  0x1175 ret:0x7fdba97e5c00
  4876 ms  0x1175 PK11_Encrypt()
  4876 ms  0x1175 symkey:0x7fdb96be7f80
           /* TID 0x117d */
  5036 ms  0x117d PR_Close()
  5036 ms  0x117d fd:0x7fdba91c6730
           /* TID 0x118c */
  5048 ms  0x118c PR_Close()
  5048 ms  0x118c fd:0x7fdba91c6700
           /* TID 0x1175 */
  5118 ms  0x1175 SSL_ImportFD()
  5118 ms  0x1175 ret:0x7fdba892a730
  5118 ms  0x1175 SSL_AuthCertificateHook()
  5118 ms  0x1175 fd:0x7fdba892a730
  5118 ms  0x1175 ret:0x0
  5118 ms  0x1175 PR_Connect()
  5118 ms  0x1175 fd:0x7fdba892a730
  5118 ms  0x1175 SSL_ImportFD()
  5118 ms  0x1175 ret:0x7fdba892a760
  5118 ms  0x1175 SSL_AuthCertificateHook()
  5118 ms  0x1175 fd:0x7fdba892a760
  5118 ms  0x1175 ret:0x0
  5118 ms  0x1175 PR_Connect()
  5118 ms  0x1175 fd:0x7fdba892a760
  5118 ms  0x1175 SSL_ImportFD()
  5118 ms  0x1175 ret:0x7fdba892a4f0
  5118 ms  0x1175 SSL_AuthCertificateHook()
  5118 ms  0x1175 fd:0x7fdba892a4f0
  5118 ms  0x1175 ret:0x0
  5118 ms  0x1175 PR_Connect()
  5118 ms  0x1175 fd:0x7fdba892a4f0
  5118 ms  0x1175 SSL_ImportFD()
  5118 ms  0x1175 ret:0x7fdba892a6a0
  5118 ms  0x1175 SSL_AuthCertificateHook()
  5118 ms  0x1175 fd:0x7fdba892a6a0
  5118 ms  0x1175 ret:0x0
  5119 ms  0x1175 PR_Connect()
  5119 ms  0x1175 fd:0x7fdba892a6a0
  5119 ms  0x1175 SSL_ImportFD()
  5119 ms  0x1175 ret:0x7fdba892a6d0
  5119 ms  0x1175 SSL_AuthCertificateHook()
  5119 ms  0x1175 fd:0x7fdba892a6d0
  5119 ms  0x1175 ret:0x0
  5119 ms  0x1175 PR_Connect()
  5119 ms  0x1175 fd:0x7fdba892a6d0
  5144 ms  0x1175 SECKEY_CreateECPrivateKey()
  5144 ms  0x1175 cx:0x7fdba7cf2908
  5145 ms     | 0x1175 EC_ValidatePublicKey()
  5145 ms     | 0x1175 ret:0x0
  5145 ms  0x1175 ret:0x7fdb96a1d020::7fdb96a1d020  60 d0 8e 96                                      `...
  5145 ms  0x1175 SECKEY_CreateECPrivateKey()
  5145 ms  0x1175 cx:0x7fdba7cf2908
  5145 ms     | 0x1175 EC_ValidatePublicKey()
  5147 ms     | 0x1175 ret:0x0
  5147 ms  0x1175 ret:0x7fdba8f2b020::7fdba8f2b020  40 d2 8e 96                                      @...
  5149 ms  0x1175 SECKEY_CreateECPrivateKey()
  5149 ms  0x1175 cx:0x7fdba7cf2aa8
  5150 ms     | 0x1175 EC_ValidatePublicKey()
  5150 ms     | 0x1175 ret:0x0
  5150 ms  0x1175 ret:0x7fdbb7911020::7fdbb7911020  20 d4 8e 96                                       ...
  5150 ms  0x1175 SECKEY_CreateECPrivateKey()
  5150 ms  0x1175 cx:0x7fdba7cf2aa8
  5151 ms     | 0x1175 EC_ValidatePublicKey()
  5152 ms     | 0x1175 ret:0x0
  5152 ms  0x1175 ret:0x7fdb96c31820::7fdb96c31820  90 d7 8e 96                                      ....
  5155 ms  0x1175 SECKEY_CreateECPrivateKey()
  5155 ms  0x1175 cx:0x7fdba7cf2de8
  5155 ms     | 0x1175 EC_ValidatePublicKey()
  5155 ms     | 0x1175 ret:0x0
  5155 ms  0x1175 ret:0x7fdb96c34020::7fdb96c34020  80 d8 8e 96                                      ....
  5155 ms  0x1175 SECKEY_CreateECPrivateKey()
  5155 ms  0x1175 cx:0x7fdba7cf2de8
  5156 ms     | 0x1175 EC_ValidatePublicKey()
  5157 ms     | 0x1175 ret:0x0
  5157 ms  0x1175 ret:0x7fdb96c36020::7fdb96c36020  60 da 8e 96                                      `...
  5158 ms  0x1175 SECKEY_CreateECPrivateKey()
  5158 ms  0x1175 cx:0x7fdba7cf2c48
  5158 ms     | 0x1175 EC_ValidatePublicKey()
  5158 ms     | 0x1175 ret:0x0
  5158 ms  0x1175 ret:0x7fdb96c38820::7fdb96c38820  a0 db 8e 96                                      ....
  5159 ms  0x1175 SECKEY_CreateECPrivateKey()
  5159 ms  0x1175 cx:0x7fdba7cf2c48
  5159 ms     | 0x1175 EC_ValidatePublicKey()
  5161 ms     | 0x1175 ret:0x0
  5161 ms  0x1175 ret:0x7fdb96c3a820::7fdb96c3a820  80 dd 8e 96                                      ....
  5161 ms  0x1175 SECKEY_CreateECPrivateKey()
  5161 ms  0x1175 cx:0x7fdba7cf2428
  5162 ms     | 0x1175 EC_ValidatePublicKey()
  5162 ms     | 0x1175 ret:0x0
  5162 ms  0x1175 ret:0x7fdb96c3d020::7fdb96c3d020  c0 de 8e 96                                      ....
  5162 ms  0x1175 SECKEY_CreateECPrivateKey()
  5162 ms  0x1175 cx:0x7fdba7cf2428
  5162 ms     | 0x1175 EC_ValidatePublicKey()
  5164 ms     | 0x1175 ret:0x0
  5164 ms  0x1175 ret:0x7fdb96c3f020::7fdb96c3f020  60 4f 93 96                                      `O..
  5174 ms  0x1175 PK11_Derive()
  5174 ms  0x1175 basekey:0x7fdba97e5c00
  5174 ms     | 0x1175 PK11_DeriveWithTemplate()
  5174 ms  0x1175 ret:0x7fdb96be7580
  5174 ms  0x1175 PK11_PubDeriveWithKDF()
  5174 ms  0x1175 seckey:0x7fdb96a1d020
  5174 ms     | 0x1175 EC_ValidatePublicKey()
  5174 ms     | 0x1175 ret:0x0
  5174 ms  0x1175 ret:0x7fdba97e5c00
  5174 ms  SECKEY_ECParamsToKeySize()
  5174 ms  0x1175 ret:0xff
  5174 ms  0x1175 PK11_DeriveWithFlags()
  5174 ms  0x1175 basekey:0x7fdb96be7580
  5174 ms     | 0x1175 PK11_DeriveWithTemplate()
  5175 ms  0x1175 ret:0x7fdb96be8e80
  5175 ms  0x1175 PK11_Derive()
  5175 ms  0x1175 basekey:0x7fdba97e5c00
  5175 ms     | 0x1175 PK11_DeriveWithTemplate()
  5175 ms  0x1175 ret:0x7fdb96c1e700
  5175 ms  0x1175 PK11_DeriveWithFlags()
  5175 ms  0x1175 basekey:0x7fdb96c1e700
  5175 ms     | 0x1175 PK11_DeriveWithTemplate()
  5175 ms  0x1175 ret:0x7fdb96be7580
  5175 ms  0x1175 PK11_DeriveWithFlags()
  5175 ms  0x1175 basekey:0x7fdb96c1e700
  5175 ms     | 0x1175 PK11_DeriveWithTemplate()
  5175 ms  0x1175 ret:0x7fdba97e5c00
  5175 ms  0x1175 PK11_DeriveWithFlags()
  5175 ms  0x1175 basekey:0x7fdb96c1e700
  5175 ms     | 0x1175 PK11_DeriveWithTemplate()
  5175 ms  0x1175 ret:0x7fdb96be8e80
  5175 ms  0x1175 PK11_Derive()
  5175 ms  0x1175 basekey:0x7fdb96936300
  5175 ms     | 0x1175 PK11_DeriveWithTemplate()
  5175 ms  0x1175 ret:0x7fdb96936380
  5175 ms  0x1175 PK11_DeriveWithFlags()
  5175 ms  0x1175 basekey:0x7fdba97e5c00
  5175 ms     | 0x1175 PK11_DeriveWithTemplate()
  5175 ms  0x1175 ret:0x7fdb96c1e700
  5175 ms  0x1175 PK11_DeriveWithFlags()
  5175 ms  0x1175 basekey:0x7fdba97e5c00
  5175 ms     | 0x1175 PK11_DeriveWithTemplate()
  5175 ms  0x1175 ret:0x7fdb96be8e80
           /* TID 0x11d1 */
  5176 ms  0x11d1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5176 ms  0x11d1 ret:0x0
  5176 ms  0x11d1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5176 ms  0x11d1 ret:0x0
           /* TID 0x1175 */
  5177 ms  0x1175 PK11_DeriveWithFlags()
  5177 ms  0x1175 basekey:0x7fdba97e5c00
  5177 ms     | 0x1175 PK11_DeriveWithTemplate()
  5177 ms  0x1175 ret:0x7fdb96be8e80
  5178 ms  0x1175 PK11_Derive()
  5178 ms  0x1175 basekey:0x7fdb96be8e80
  5178 ms     | 0x1175 PK11_DeriveWithTemplate()
  5178 ms  0x1175 ret:0x7fdb96936300
  5178 ms  0x1175 PK11_PubDeriveWithKDF()
  5178 ms  0x1175 seckey:0x7fdbb7911020
  5178 ms     | 0x1175 EC_ValidatePublicKey()
  5178 ms     | 0x1175 ret:0x0
  5179 ms  0x1175 ret:0x7fdb96be8e80
  5179 ms  SECKEY_ECParamsToKeySize()
  5179 ms  0x1175 ret:0xff
  5179 ms  0x1175 PK11_DeriveWithFlags()
  5179 ms  0x1175 basekey:0x7fdb96936300
  5179 ms     | 0x1175 PK11_DeriveWithTemplate()
  5179 ms  0x1175 ret:0x7fdb96936b00
  5179 ms  0x1175 PK11_Derive()
  5179 ms  0x1175 basekey:0x7fdb96be8e80
  5179 ms     | 0x1175 PK11_DeriveWithTemplate()
  5179 ms  0x1175 ret:0x7fdb96936b80
  5179 ms  0x1175 PK11_DeriveWithFlags()
  5179 ms  0x1175 basekey:0x7fdb96936b80
  5179 ms     | 0x1175 PK11_DeriveWithTemplate()
  5179 ms  0x1175 ret:0x7fdb96936300
  5179 ms  0x1175 PK11_DeriveWithFlags()
  5179 ms  0x1175 basekey:0x7fdb96936b80
  5179 ms     | 0x1175 PK11_DeriveWithTemplate()
  5179 ms  0x1175 ret:0x7fdb96be8e80
  5179 ms  0x1175 PK11_DeriveWithFlags()
  5179 ms  0x1175 basekey:0x7fdb96936b80
  5179 ms     | 0x1175 PK11_DeriveWithTemplate()
  5179 ms  0x1175 ret:0x7fdb96936b00
  5179 ms  0x1175 PK11_Derive()
  5179 ms  0x1175 basekey:0x7fdb96936c00
  5179 ms     | 0x1175 PK11_DeriveWithTemplate()
  5179 ms  0x1175 ret:0x7fdb96936c80
  5179 ms  0x1175 PK11_DeriveWithFlags()
  5179 ms  0x1175 basekey:0x7fdb96be8e80
  5179 ms     | 0x1175 PK11_DeriveWithTemplate()
  5179 ms  0x1175 ret:0x7fdb96936b80
  5179 ms  0x1175 PK11_DeriveWithFlags()
  5179 ms  0x1175 basekey:0x7fdb96be8e80
  5179 ms     | 0x1175 PK11_DeriveWithTemplate()
  5179 ms  0x1175 ret:0x7fdb96936b00
  5180 ms  0x1175 PK11_DeriveWithFlags()
  5180 ms  0x1175 basekey:0x7fdb96be8e80
  5180 ms     | 0x1175 PK11_DeriveWithTemplate()
  5180 ms  0x1175 ret:0x7fdb96936b00
  5183 ms  0x1175 PK11_Derive()
  5183 ms  0x1175 basekey:0x7fdb96936b00
  5183 ms     | 0x1175 PK11_DeriveWithTemplate()
  5183 ms  0x1175 ret:0x7fdb96936c00
  5183 ms  0x1175 PK11_PubDeriveWithKDF()
  5183 ms  0x1175 seckey:0x7fdb96c34020
  5183 ms     | 0x1175 EC_ValidatePublicKey()
  5183 ms     | 0x1175 ret:0x0
  5184 ms  0x1175 ret:0x7fdb96936b00
  5184 ms  SECKEY_ECParamsToKeySize()
  5184 ms  0x1175 ret:0xff
  5184 ms  0x1175 PK11_DeriveWithFlags()
  5184 ms  0x1175 basekey:0x7fdb96936c00
  5184 ms     | 0x1175 PK11_DeriveWithTemplate()
  5184 ms  0x1175 ret:0x7fdb96936600
  5184 ms  0x1175 PK11_Derive()
  5184 ms  0x1175 basekey:0x7fdb96936b00
  5184 ms     | 0x1175 PK11_DeriveWithTemplate()
  5184 ms  0x1175 ret:0x7fdb96936680
  5184 ms  0x1175 PK11_DeriveWithFlags()
  5184 ms  0x1175 basekey:0x7fdb96936680
  5184 ms     | 0x1175 PK11_DeriveWithTemplate()
  5184 ms  0x1175 ret:0x7fdb96936c00
  5184 ms  0x1175 PK11_DeriveWithFlags()
  5184 ms  0x1175 basekey:0x7fdb96936680
  5184 ms     | 0x1175 PK11_DeriveWithTemplate()
  5184 ms  0x1175 ret:0x7fdb96936b00
  5184 ms  0x1175 PK11_DeriveWithFlags()
  5184 ms  0x1175 basekey:0x7fdb96936680
  5184 ms     | 0x1175 PK11_DeriveWithTemplate()
  5184 ms  0x1175 ret:0x7fdb96936600
  5184 ms  0x1175 PK11_Derive()
  5184 ms  0x1175 basekey:0x7fdb96936700
  5184 ms     | 0x1175 PK11_DeriveWithTemplate()
  5184 ms  0x1175 ret:0x7fdb96936780
  5184 ms  0x1175 PK11_DeriveWithFlags()
  5184 ms  0x1175 basekey:0x7fdb96936b00
  5184 ms     | 0x1175 PK11_DeriveWithTemplate()
  5184 ms  0x1175 ret:0x7fdb96936680
  5184 ms  0x1175 PK11_DeriveWithFlags()
  5184 ms  0x1175 basekey:0x7fdb96936b00
  5184 ms     | 0x1175 PK11_DeriveWithTemplate()
  5184 ms  0x1175 ret:0x7fdb96936600
           /* TID 0x1211 */
  6183 ms  0x1211 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x1175 */
  6186 ms  0x1175 PK11_DeriveWithFlags()
  6186 ms  0x1175 basekey:0x7fdb96936b00
  6186 ms     | 0x1175 PK11_DeriveWithTemplate()
  6187 ms  0x1175 ret:0x7fdb96936600
  6187 ms  0x1175 SSL_AuthCertificateComplete()
  6187 ms  0x1175 fd:0x7fdba892a760
  6187 ms  0x1175 err:0x0
  6187 ms     | 0x1175 PK11_DeriveWithFlags()
  6187 ms     | 0x1175 basekey:0x7fdb96936380
  6187 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6187 ms     | 0x1175 ret:0x7fdb96936600
  6187 ms     | 0x1175 PK11_DeriveWithFlags()
  6187 ms     | 0x1175 basekey:0x7fdb96936380
  6187 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6187 ms     | 0x1175 ret:0x7fdb96936700
  6187 ms     | 0x1175 PK11_DeriveWithFlags()
  6187 ms     | 0x1175 basekey:0x7fdb96936380
  6187 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6187 ms     | 0x1175 ret:0x7fdb9694dc00
  6187 ms     | 0x1175 PK11_DeriveWithFlags()
  6187 ms     | 0x1175 basekey:0x7fdb96be7580
  6187 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6187 ms     | 0x1175 ret:0x7fdb96be7600
  6187 ms     | 0x1175 PK11_DeriveWithFlags()
  6187 ms     | 0x1175 basekey:0x7fdb96be7580
  6187 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6187 ms     | 0x1175 ret:0x7fdb96be7680
  6187 ms     | 0x1175 PK11_DeriveWithFlags()
  6187 ms     | 0x1175 basekey:0x7fdb96936700
  6187 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6188 ms     | 0x1175 ret:0x7fdb96be7680
  6188 ms     | 0x1175 PK11_DeriveWithFlags()
  6188 ms     | 0x1175 basekey:0x7fdb96936700
  6188 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6188 ms     | 0x1175 ret:0x7fdb96be7800
  6188 ms     | 0x1175 PK11_DeriveWithFlags()
  6188 ms     | 0x1175 basekey:0x7fdb96be7580
  6188 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6188 ms     | 0x1175 ret:0x7fdb96c1e700
  6188 ms     | 0x1175 PK11_Encrypt()
  6188 ms     | 0x1175 symkey:0x7fdb96be7600
  6188 ms     | 0x1175 PK11_DeriveWithFlags()
  6188 ms     | 0x1175 basekey:0x7fdb96936600
  6188 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6188 ms     | 0x1175 ret:0x7fdb96c1e700
  6188 ms     | 0x1175 PK11_DeriveWithFlags()
  6188 ms     | 0x1175 basekey:0x7fdb96936600
  6188 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6188 ms     | 0x1175 ret:0x7fdb96be7800
  6189 ms     | 0x1175 PK11_DeriveWithFlags()
  6189 ms     | 0x1175 basekey:0x7fdb96936380
  6189 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6189 ms     | 0x1175 ret:0x7fdb96be7600
  6189 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  6189 ms     | 0x1175 privk:0x7fdba8f2b020::7fdba8f2b020  40 d2 8e 96                                      @...
  6189 ms     | 0x1175 privk:0x7fdba8f2b020::7fdba8f2b020  e5 e5 e5 e5                                      ....
  6189 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  6189 ms     | 0x1175 privk:0x7fdb96a1d020::7fdb96a1d020  60 d0 8e 96                                      `...
  6190 ms     | 0x1175 privk:0x7fdb96a1d020::7fdb96a1d020  e5 e5 e5 e5                                      ....
  6190 ms  0x1175 PK11_Derive()
  6190 ms  0x1175 basekey:0x7fdba97e5c00
  6190 ms     | 0x1175 PK11_DeriveWithTemplate()
  6190 ms  0x1175 ret:0x7fdb96be7580
  6190 ms  0x1175 PK11_PubDeriveWithKDF()
  6190 ms  0x1175 seckey:0x7fdb96c38820
  6190 ms     | 0x1175 EC_ValidatePublicKey()
  6190 ms     | 0x1175 ret:0x0
           /* TID 0x1212 */
  6191 ms  0x1212 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6191 ms  0x1212 ret:0x0
  6191 ms  0x1212 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6191 ms  0x1212 ret:0x0
           /* TID 0x1211 */
  6192 ms  0x1211 ret:0x0
  6192 ms  0x1211 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6192 ms  0x1211 ret:0x0
           /* TID 0x1175 */
  6193 ms  0x1175 ret:0x7fdba97e5c00
  6193 ms  SECKEY_ECParamsToKeySize()
  6193 ms  0x1175 ret:0xff
  6193 ms  0x1175 PK11_DeriveWithFlags()
  6193 ms  0x1175 basekey:0x7fdb96be7580
  6193 ms     | 0x1175 PK11_DeriveWithTemplate()
  6193 ms  0x1175 ret:0x7fdb96936380
  6193 ms  0x1175 PK11_Derive()
  6193 ms  0x1175 basekey:0x7fdba97e5c00
  6193 ms     | 0x1175 PK11_DeriveWithTemplate()
  6193 ms  0x1175 ret:0x7fdb96be7800
  6193 ms  0x1175 PK11_DeriveWithFlags()
  6193 ms  0x1175 basekey:0x7fdb96be7800
  6193 ms     | 0x1175 PK11_DeriveWithTemplate()
  6193 ms  0x1175 ret:0x7fdb96be7580
  6193 ms  0x1175 PK11_DeriveWithFlags()
  6193 ms  0x1175 basekey:0x7fdb96be7800
  6193 ms     | 0x1175 PK11_DeriveWithTemplate()
  6193 ms  0x1175 ret:0x7fdba97e5c00
  6193 ms  0x1175 PK11_DeriveWithFlags()
  6193 ms  0x1175 basekey:0x7fdb96be7800
  6194 ms     | 0x1175 PK11_DeriveWithTemplate()
  6194 ms  0x1175 ret:0x7fdb96936380
  6194 ms  0x1175 PK11_Derive()
  6194 ms  0x1175 basekey:0x7fdb96be7900
  6194 ms     | 0x1175 PK11_DeriveWithTemplate()
  6194 ms  0x1175 ret:0x7fdb96c1da00
  6194 ms  0x1175 PK11_DeriveWithFlags()
  6194 ms  0x1175 basekey:0x7fdba97e5c00
  6194 ms     | 0x1175 PK11_DeriveWithTemplate()
  6194 ms  0x1175 ret:0x7fdb96be7800
  6194 ms  0x1175 PK11_DeriveWithFlags()
  6194 ms  0x1175 basekey:0x7fdba97e5c00
  6194 ms     | 0x1175 PK11_DeriveWithTemplate()
  6194 ms  0x1175 ret:0x7fdb96936380
           /* TID 0x11d1 */
  6195 ms  0x11d1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6196 ms  0x11d1 ret:0x0
  6196 ms  0x11d1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6196 ms  0x11d1 ret:0x0
           /* TID 0x1175 */
  6196 ms  0x1175 PK11_DeriveWithFlags()
  6196 ms  0x1175 basekey:0x7fdba97e5c00
  6196 ms     | 0x1175 PK11_DeriveWithTemplate()
  6196 ms  0x1175 ret:0x7fdb96936380
  6198 ms  0x1175 PK11_Encrypt()
  6198 ms  0x1175 symkey:0x7fdb96c1e700
  6198 ms  0x1175 PK11_Encrypt()
  6198 ms  0x1175 symkey:0x7fdb96c1e700
  6199 ms  0x1175 PK11_Derive()
  6199 ms  0x1175 basekey:0x7fdb96936380
  6199 ms     | 0x1175 PK11_DeriveWithTemplate()
  6199 ms  0x1175 ret:0x7fdb96be7900
  6199 ms  0x1175 PK11_PubDeriveWithKDF()
  6199 ms  0x1175 seckey:0x7fdb96c3d020
  6199 ms     | 0x1175 EC_ValidatePublicKey()
  6199 ms     | 0x1175 ret:0x0
  6200 ms  0x1175 ret:0x7fdb96936380
  6200 ms  SECKEY_ECParamsToKeySize()
  6200 ms  0x1175 ret:0xff
  6200 ms  0x1175 PK11_DeriveWithFlags()
  6200 ms  0x1175 basekey:0x7fdb96be7900
  6200 ms     | 0x1175 PK11_DeriveWithTemplate()
  6200 ms  0x1175 ret:0x7fdb96c1db80
  6200 ms  0x1175 PK11_Derive()
  6200 ms  0x1175 basekey:0x7fdb96936380
  6200 ms     | 0x1175 PK11_DeriveWithTemplate()
  6200 ms  0x1175 ret:0x7fdb96ca8080
  6201 ms  0x1175 PK11_DeriveWithFlags()
  6201 ms  0x1175 basekey:0x7fdb96ca8080
  6201 ms     | 0x1175 PK11_DeriveWithTemplate()
  6201 ms  0x1175 ret:0x7fdb96be7900
  6201 ms  0x1175 PK11_DeriveWithFlags()
  6201 ms  0x1175 basekey:0x7fdb96ca8080
  6201 ms     | 0x1175 PK11_DeriveWithTemplate()
  6201 ms  0x1175 ret:0x7fdb96936380
  6201 ms  0x1175 PK11_DeriveWithFlags()
  6201 ms  0x1175 basekey:0x7fdb96ca8080
  6201 ms     | 0x1175 PK11_DeriveWithTemplate()
  6201 ms  0x1175 ret:0x7fdb96c1db80
  6201 ms  0x1175 PK11_Derive()
  6201 ms  0x1175 basekey:0x7fdb96ca8100
  6201 ms     | 0x1175 PK11_DeriveWithTemplate()
  6201 ms  0x1175 ret:0x7fdb96ca8180
  6201 ms  0x1175 PK11_DeriveWithFlags()
  6201 ms  0x1175 basekey:0x7fdb96936380
  6201 ms     | 0x1175 PK11_DeriveWithTemplate()
  6201 ms  0x1175 ret:0x7fdb96ca8080
  6201 ms  0x1175 PK11_DeriveWithFlags()
  6201 ms  0x1175 basekey:0x7fdb96936380
  6201 ms     | 0x1175 PK11_DeriveWithTemplate()
  6201 ms  0x1175 ret:0x7fdb96c1db80
  6205 ms  SECKEY_ECParamsToKeySize()
  6205 ms  0x1175 ret:0x100
  6205 ms  SECKEY_ECParamsToBasePointOrderLen()
  6205 ms  0x1175 ret:0x100
  6205 ms  SECKEY_ECParamsToBasePointOrderLen()
  6205 ms  0x1175 ret:0x100
  6205 ms  0x1175 EC_ValidatePublicKey()
  6209 ms  0x1175 ret:0x0
  6217 ms  0x1175 PK11_DeriveWithFlags()
  6217 ms  0x1175 basekey:0x7fdb96936380
  6217 ms     | 0x1175 PK11_DeriveWithTemplate()
  6217 ms  0x1175 ret:0x7fdb96c1db80
  6217 ms  0x1175 SSL_AuthCertificateComplete()
  6217 ms  0x1175 fd:0x7fdba892a6d0
  6217 ms  0x1175 err:0x0
  6217 ms     | 0x1175 PK11_DeriveWithFlags()
  6217 ms     | 0x1175 basekey:0x7fdb96936780
  6217 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6217 ms     | 0x1175 ret:0x7fdb96c1db80
  6217 ms     | 0x1175 PK11_DeriveWithFlags()
  6217 ms     | 0x1175 basekey:0x7fdb96936780
  6217 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6217 ms     | 0x1175 ret:0x7fdb96ca8100
  6217 ms     | 0x1175 PK11_DeriveWithFlags()
  6217 ms     | 0x1175 basekey:0x7fdb96936780
  6217 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6217 ms     | 0x1175 ret:0x7fdb96ca8680
  6217 ms     | 0x1175 PK11_DeriveWithFlags()
  6217 ms     | 0x1175 basekey:0x7fdb96936c00
  6217 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6217 ms     | 0x1175 ret:0x7fdb96ca8700
  6217 ms     | 0x1175 PK11_DeriveWithFlags()
  6217 ms     | 0x1175 basekey:0x7fdb96936c00
  6217 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6217 ms     | 0x1175 ret:0x7fdb96ca8780
  6217 ms     | 0x1175 PK11_DeriveWithFlags()
  6217 ms     | 0x1175 basekey:0x7fdb96ca8100
  6217 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6217 ms     | 0x1175 ret:0x7fdb96ca8780
  6217 ms     | 0x1175 PK11_DeriveWithFlags()
  6217 ms     | 0x1175 basekey:0x7fdb96ca8100
  6217 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6217 ms     | 0x1175 ret:0x7fdb96ca8800
  6217 ms     | 0x1175 PK11_DeriveWithFlags()
  6217 ms     | 0x1175 basekey:0x7fdb96936c00
  6217 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6217 ms     | 0x1175 ret:0x7fdb96936680
  6217 ms     | 0x1175 PK11_Encrypt()
  6217 ms     | 0x1175 symkey:0x7fdb96ca8700
  6226 ms     | 0x1175 PK11_DeriveWithFlags()
  6226 ms     | 0x1175 basekey:0x7fdb96c1db80
  6226 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6226 ms     | 0x1175 ret:0x7fdb96936680
  6226 ms     | 0x1175 PK11_DeriveWithFlags()
  6226 ms     | 0x1175 basekey:0x7fdb96c1db80
  6226 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6226 ms     | 0x1175 ret:0x7fdb96ca8800
  6226 ms     | 0x1175 PK11_DeriveWithFlags()
  6226 ms     | 0x1175 basekey:0x7fdb96936780
  6226 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6226 ms     | 0x1175 ret:0x7fdb96ca8700
  6226 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  6226 ms     | 0x1175 privk:0x7fdb96c36020::7fdb96c36020  60 da 8e 96                                      `...
  6226 ms     | 0x1175 privk:0x7fdb96c36020::7fdb96c36020  e5 e5 e5 e5                                      ....
  6226 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  6226 ms     | 0x1175 privk:0x7fdb96c34020::7fdb96c34020  80 d8 8e 96                                      ....
  6227 ms     | 0x1175 privk:0x7fdb96c34020::7fdb96c34020  e5 e5 e5 e5                                      ....
  6227 ms  0x1175 SSL_AuthCertificateComplete()
  6227 ms  0x1175 fd:0x7fdba892a4f0
  6227 ms  0x1175 err:0x0
  6227 ms     | 0x1175 PK11_DeriveWithFlags()
  6227 ms     | 0x1175 basekey:0x7fdb96936c80
  6227 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6227 ms     | 0x1175 ret:0x7fdb96936b00
  6227 ms     | 0x1175 PK11_DeriveWithFlags()
  6227 ms     | 0x1175 basekey:0x7fdb96936c80
  6227 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6227 ms     | 0x1175 ret:0x7fdb96936c00
  6227 ms     | 0x1175 PK11_DeriveWithFlags()
  6227 ms     | 0x1175 basekey:0x7fdb96936c80
  6227 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6227 ms     | 0x1175 ret:0x7fdb96936780
  6227 ms     | 0x1175 PK11_DeriveWithFlags()
  6227 ms     | 0x1175 basekey:0x7fdb96936300
  6227 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6227 ms     | 0x1175 ret:0x7fdb96ca8800
  6227 ms     | 0x1175 PK11_DeriveWithFlags()
  6227 ms     | 0x1175 basekey:0x7fdb96936300
  6227 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6227 ms     | 0x1175 ret:0x7fdb96ca8880
  6227 ms     | 0x1175 PK11_DeriveWithFlags()
  6227 ms     | 0x1175 basekey:0x7fdb96936c00
  6227 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6227 ms     | 0x1175 ret:0x7fdb96ca8880
  6227 ms     | 0x1175 PK11_DeriveWithFlags()
  6227 ms     | 0x1175 basekey:0x7fdb96936c00
  6227 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6227 ms     | 0x1175 ret:0x7fdb96ca8900
  6227 ms     | 0x1175 PK11_DeriveWithFlags()
  6227 ms     | 0x1175 basekey:0x7fdb96936300
  6227 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6227 ms     | 0x1175 ret:0x7fdb96936b80
  6227 ms     | 0x1175 PK11_Encrypt()
  6227 ms     | 0x1175 symkey:0x7fdb96ca8800
  6227 ms     | 0x1175 PK11_DeriveWithFlags()
  6227 ms     | 0x1175 basekey:0x7fdb96936b00
  6227 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6227 ms     | 0x1175 ret:0x7fdb96936b80
  6227 ms     | 0x1175 PK11_DeriveWithFlags()
  6227 ms     | 0x1175 basekey:0x7fdb96936b00
  6228 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6228 ms     | 0x1175 ret:0x7fdb96ca8900
  6228 ms     | 0x1175 PK11_DeriveWithFlags()
  6228 ms     | 0x1175 basekey:0x7fdb96936c80
  6228 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6228 ms     | 0x1175 ret:0x7fdb96ca8800
  6228 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  6228 ms     | 0x1175 privk:0x7fdb96c31820::7fdb96c31820  90 d7 8e 96                                      ....
  6228 ms     | 0x1175 privk:0x7fdb96c31820::7fdb96c31820  e5 e5 e5 e5                                      ....
  6228 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  6228 ms     | 0x1175 privk:0x7fdbb7911020::7fdbb7911020  20 d4 8e 96                                       ...
  6228 ms     | 0x1175 privk:0x7fdbb7911020::7fdbb7911020  e5 e5 e5 e5                                      ....
  6228 ms  0x1175 SSL_AuthCertificateComplete()
  6228 ms  0x1175 fd:0x7fdba892a6a0
  6228 ms  0x1175 err:0x0
  6228 ms     | 0x1175 PK11_DeriveWithFlags()
  6228 ms     | 0x1175 basekey:0x7fdb96c1da00
  6228 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6228 ms     | 0x1175 ret:0x7fdb96be8e80
  6228 ms     | 0x1175 PK11_DeriveWithFlags()
  6228 ms     | 0x1175 basekey:0x7fdb96c1da00
  6228 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6228 ms     | 0x1175 ret:0x7fdb96936300
  6228 ms     | 0x1175 PK11_DeriveWithFlags()
  6228 ms     | 0x1175 basekey:0x7fdb96c1da00
  6228 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6228 ms     | 0x1175 ret:0x7fdb96936c80
  6228 ms     | 0x1175 PK11_DeriveWithFlags()
  6228 ms     | 0x1175 basekey:0x7fdb96be7580
  6228 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6228 ms     | 0x1175 ret:0x7fdb96ca8900
  6228 ms     | 0x1175 PK11_DeriveWithFlags()
  6228 ms     | 0x1175 basekey:0x7fdb96be7580
  6228 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6228 ms     | 0x1175 ret:0x7fdb96ca8a00
  6228 ms     | 0x1175 PK11_DeriveWithFlags()
  6228 ms     | 0x1175 basekey:0x7fdb96936300
  6228 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6228 ms     | 0x1175 ret:0x7fdb96ca8a00
  6228 ms     | 0x1175 PK11_DeriveWithFlags()
  6228 ms     | 0x1175 basekey:0x7fdb96936300
  6228 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6228 ms     | 0x1175 ret:0x7fdb96ca8a80
  6228 ms     | 0x1175 PK11_DeriveWithFlags()
  6228 ms     | 0x1175 basekey:0x7fdb96be7580
  6228 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6228 ms     | 0x1175 ret:0x7fdb96be7800
  6228 ms     | 0x1175 PK11_Encrypt()
  6228 ms     | 0x1175 symkey:0x7fdb96ca8900
  6229 ms     | 0x1175 PK11_DeriveWithFlags()
  6229 ms     | 0x1175 basekey:0x7fdb96be8e80
  6229 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6229 ms     | 0x1175 ret:0x7fdb96be7800
  6229 ms     | 0x1175 PK11_DeriveWithFlags()
  6229 ms     | 0x1175 basekey:0x7fdb96be8e80
  6229 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6229 ms     | 0x1175 ret:0x7fdb96ca8a80
  6229 ms     | 0x1175 PK11_DeriveWithFlags()
  6229 ms     | 0x1175 basekey:0x7fdb96c1da00
  6229 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6229 ms     | 0x1175 ret:0x7fdb96ca8900
  6229 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  6229 ms     | 0x1175 privk:0x7fdb96c3a820::7fdb96c3a820  80 dd 8e 96                                      ....
  6229 ms     | 0x1175 privk:0x7fdb96c3a820::7fdb96c3a820  e5 e5 e5 e5                                      ....
  6229 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  6229 ms     | 0x1175 privk:0x7fdb96c38820::7fdb96c38820  a0 db 8e 96                                      ....
  6229 ms     | 0x1175 privk:0x7fdb96c38820::7fdb96c38820  e5 e5 e5 e5                                      ....
  6229 ms  0x1175 PK11_DeriveWithFlags()
  6229 ms  0x1175 basekey:0x7fdb96be7600
  6229 ms     | 0x1175 PK11_DeriveWithTemplate()
  6229 ms  0x1175 ret:0x7fdba97e5c00
  6229 ms  0x1175 PK11_DeriveWithFlags()
  6229 ms  0x1175 basekey:0x7fdb96be7600
  6229 ms     | 0x1175 PK11_DeriveWithTemplate()
  6229 ms  0x1175 ret:0x7fdba97e5c00
  6229 ms  0x1175 PK11_Encrypt()
  6229 ms  0x1175 symkey:0x7fdb96c1e700
  6230 ms  0x1175 PK11_Encrypt()
  6230 ms  0x1175 symkey:0x7fdb96c1e700
  6230 ms  0x1175 PK11_Encrypt()
  6230 ms  0x1175 symkey:0x7fdb96c1e700
  6231 ms  0x1175 PK11_Encrypt()
  6231 ms  0x1175 symkey:0x7fdb96936680
  6231 ms  0x1175 PK11_Encrypt()
  6231 ms  0x1175 symkey:0x7fdb96be7800
  6232 ms  0x1175 PK11_Encrypt()
  6232 ms  0x1175 symkey:0x7fdb96936b80
  6232 ms  0x1175 PK11_Encrypt()
  6232 ms  0x1175 symkey:0x7fdb96c1e700
  6232 ms  0x1175 PK11_Encrypt()
  6232 ms  0x1175 symkey:0x7fdb96c1e700
  6232 ms  0x1175 PK11_Encrypt()
  6232 ms  0x1175 symkey:0x7fdb96c1e700
  6232 ms  0x1175 PR_Connect()
  6232 ms  0x1175 fd:0x7fdb96ce6910
  6233 ms  0x1175 PK11_Encrypt()
  6233 ms  0x1175 symkey:0x7fdb96c1e700
  6243 ms  0x1175 PK11_DeriveWithFlags()
  6243 ms  0x1175 basekey:0x7fdb96ca8700
  6243 ms     | 0x1175 PK11_DeriveWithTemplate()
  6243 ms  0x1175 ret:0x7fdba97e5c00
  6243 ms  0x1175 PK11_DeriveWithFlags()
  6243 ms  0x1175 basekey:0x7fdb96ca8700
  6243 ms     | 0x1175 PK11_DeriveWithTemplate()
  6243 ms  0x1175 ret:0x7fdba97e5c00
  6243 ms  0x1175 PR_Close()
  6243 ms  0x1175 fd:0x7fdba892a6d0
  6243 ms     | 0x1175 PK11_Encrypt()
  6243 ms     | 0x1175 symkey:0x7fdb96936680
           /* TID 0x117d */
  6244 ms  0x117d PR_Close()
  6244 ms  0x117d fd:0x7fdb96942c70
           /* TID 0x1175 */
  6253 ms  0x1175 PK11_DeriveWithFlags()
  6253 ms  0x1175 basekey:0x7fdb96ca8800
  6253 ms     | 0x1175 PK11_DeriveWithTemplate()
  6253 ms  0x1175 ret:0x7fdb96ca8680
  6253 ms  0x1175 PK11_DeriveWithFlags()
  6253 ms  0x1175 basekey:0x7fdb96ca8800
  6253 ms     | 0x1175 PK11_DeriveWithTemplate()
  6253 ms  0x1175 ret:0x7fdb96ca8680
  6253 ms  0x1175 PR_Close()
  6253 ms  0x1175 fd:0x7fdba892a4f0
  6253 ms     | 0x1175 PK11_Encrypt()
  6253 ms     | 0x1175 symkey:0x7fdb96936b80
  6254 ms  0x1175 PK11_DeriveWithFlags()
  6254 ms  0x1175 basekey:0x7fdb96ca8900
  6254 ms     | 0x1175 PK11_DeriveWithTemplate()
  6254 ms  0x1175 ret:0x7fdb96936780
  6254 ms  0x1175 PK11_DeriveWithFlags()
  6254 ms  0x1175 basekey:0x7fdb96ca8900
  6254 ms     | 0x1175 PK11_DeriveWithTemplate()
  6254 ms  0x1175 ret:0x7fdb96936780
  6254 ms  0x1175 PR_Close()
  6254 ms  0x1175 fd:0x7fdba892a6a0
  6254 ms     | 0x1175 PK11_Encrypt()
  6254 ms     | 0x1175 symkey:0x7fdb96be7800
           /* TID 0x117d */
  6307 ms  0x117d PR_Close()
  6307 ms  0x117d fd:0x7fdb968599d0
  6308 ms  0x117d PR_Close()
  6308 ms  0x117d fd:0x7fdb96859700
  6322 ms  0x117d PR_Close()
  6322 ms  0x117d fd:0x7fdb968596a0
  6343 ms  0x117d PR_Close()
  6343 ms  0x117d fd:0x7fdb96859700
  6344 ms  0x117d PR_Close()
  6344 ms  0x117d fd:0x7fdb968595e0
  6345 ms  0x117d PR_Close()
  6345 ms  0x117d fd:0x7fdb968595e0
  6413 ms  0x117d PR_Close()
  6413 ms  0x117d fd:0x7fdb968595e0
           /* TID 0x1212 */
  6413 ms  0x1212 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6413 ms  0x1212 ret:0x0
           /* TID 0x1175 */
  6422 ms  0x1175 SSL_AuthCertificateComplete()
  6422 ms  0x1175 fd:0x7fdba892a730
  6422 ms  0x1175 err:0x0
  6422 ms     | 0x1175 PK11_DeriveWithFlags()
  6422 ms     | 0x1175 basekey:0x7fdb96ca8180
  6422 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6422 ms     | 0x1175 ret:0x7fdb96936c80
  6422 ms     | 0x1175 PK11_DeriveWithFlags()
  6422 ms     | 0x1175 basekey:0x7fdb96ca8180
  6422 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6422 ms     | 0x1175 ret:0x7fdb96936300
  6422 ms     | 0x1175 PK11_DeriveWithFlags()
  6422 ms     | 0x1175 basekey:0x7fdb96ca8180
  6422 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6422 ms     | 0x1175 ret:0x7fdb96be8e80
  6422 ms     | 0x1175 PK11_DeriveWithFlags()
  6422 ms     | 0x1175 basekey:0x7fdb96be7900
  6422 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6422 ms     | 0x1175 ret:0x7fdb96ca8900
  6422 ms     | 0x1175 PK11_DeriveWithFlags()
  6422 ms     | 0x1175 basekey:0x7fdb96be7900
  6422 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6422 ms     | 0x1175 ret:0x7fdb96ca8a00
  6422 ms     | 0x1175 PK11_DeriveWithFlags()
  6422 ms     | 0x1175 basekey:0x7fdb96936300
  6422 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6422 ms     | 0x1175 ret:0x7fdb96ca8a00
  6422 ms     | 0x1175 PK11_DeriveWithFlags()
  6422 ms     | 0x1175 basekey:0x7fdb96936300
  6422 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6422 ms     | 0x1175 ret:0x7fdb96be7800
  6422 ms     | 0x1175 PK11_DeriveWithFlags()
  6422 ms     | 0x1175 basekey:0x7fdb96be7900
  6422 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6422 ms     | 0x1175 ret:0x7fdb96ca8080
  6422 ms     | 0x1175 PK11_Encrypt()
  6422 ms     | 0x1175 symkey:0x7fdb96ca8900
  6422 ms     | 0x1175 PK11_DeriveWithFlags()
  6422 ms     | 0x1175 basekey:0x7fdb96936c80
  6422 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6422 ms     | 0x1175 ret:0x7fdb96ca8080
  6422 ms     | 0x1175 PK11_DeriveWithFlags()
  6422 ms     | 0x1175 basekey:0x7fdb96936c80
  6422 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6422 ms     | 0x1175 ret:0x7fdb96be7800
  6422 ms     | 0x1175 PK11_DeriveWithFlags()
  6422 ms     | 0x1175 basekey:0x7fdb96ca8180
  6422 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6422 ms     | 0x1175 ret:0x7fdb96ca8900
  6422 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  6422 ms     | 0x1175 privk:0x7fdb96c3f020::7fdb96c3f020  60 4f 93 96                                      `O..
  6423 ms     | 0x1175 privk:0x7fdb96c3f020::7fdb96c3f020  e5 e5 e5 e5                                      ....
  6423 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  6423 ms     | 0x1175 privk:0x7fdb96c3d020::7fdb96c3d020  c0 de 8e 96                                      ....
  6423 ms     | 0x1175 privk:0x7fdb96c3d020::7fdb96c3d020  e5 e5 e5 e5                                      ....
  6423 ms  0x1175 PK11_Encrypt()
  6423 ms  0x1175 symkey:0x7fdb96ca8080
  6423 ms  0x1175 PK11_Encrypt()
  6423 ms  0x1175 symkey:0x7fdb96ca8080
  6460 ms  0x1175 PK11_DeriveWithFlags()
  6460 ms  0x1175 basekey:0x7fdb96ca8900
  6461 ms     | 0x1175 PK11_DeriveWithTemplate()
  6461 ms  0x1175 ret:0x7fdb96936380
  6461 ms  0x1175 PK11_DeriveWithFlags()
  6461 ms  0x1175 basekey:0x7fdb96ca8900
  6461 ms     | 0x1175 PK11_DeriveWithTemplate()
  6461 ms  0x1175 ret:0x7fdb96936380
  6461 ms  0x1175 PK11_Encrypt()
  6461 ms  0x1175 symkey:0x7fdb96ca8080
  6519 ms  0x1175 PK11_Encrypt()
  6519 ms  0x1175 symkey:0x7fdb96ca8080
           /* TID 0x117d */
  6526 ms  0x117d PR_Close()
  6526 ms  0x117d fd:0x7fdb96859d30
           /* TID 0x1175 */
  6549 ms  0x1175 SSL_ImportFD()
  6549 ms  0x1175 ret:0x7fdb96c14f70
  6549 ms  0x1175 SSL_AuthCertificateHook()
  6549 ms  0x1175 fd:0x7fdb96c14f70
  6549 ms  0x1175 ret:0x0
  6549 ms  0x1175 PR_Connect()
  6549 ms  0x1175 fd:0x7fdb96c14f70
  6574 ms  0x1175 PK11_Encrypt()
  6574 ms  0x1175 symkey:0x7fdb96c1e700
  6575 ms  0x1175 SECKEY_CreateECPrivateKey()
  6575 ms  0x1175 cx:0x7fdba7cf3128
  6576 ms     | 0x1175 EC_ValidatePublicKey()
  6576 ms     | 0x1175 ret:0x0
  6576 ms  0x1175 ret:0x7fdb9684e020::7fdb9684e020  00 db 8e 96                                      ....
  6576 ms  0x1175 SECKEY_CreateECPrivateKey()
  6576 ms  0x1175 cx:0x7fdba7cf3128
  6576 ms     | 0x1175 EC_ValidatePublicKey()
  6578 ms     | 0x1175 ret:0x0
  6578 ms  0x1175 ret:0x7fdb96852020::7fdb96852020  30 dd 8e 96                                      0...
  6582 ms  0x1175 PK11_Encrypt()
  6582 ms  0x1175 symkey:0x7fdb96c1e700
  6588 ms  0x1175 PK11_Encrypt()
  6588 ms  0x1175 symkey:0x7fdb96c1e700
  6589 ms  0x1175 PK11_Encrypt()
  6589 ms  0x1175 symkey:0x7fdb96c1e700
  6589 ms  0x1175 PK11_Encrypt()
  6589 ms  0x1175 symkey:0x7fdb96c1e700
  6589 ms  0x1175 PK11_Encrypt()
  6589 ms  0x1175 symkey:0x7fdb96c1e700
           /* TID 0x117d */
  6600 ms  0x117d PR_Close()
  6600 ms  0x117d fd:0x7fdb96942e50
           /* TID 0x1175 */
  6603 ms  0x1175 PK11_Derive()
  6603 ms  0x1175 basekey:0x7fdb96936380
  6603 ms     | 0x1175 PK11_DeriveWithTemplate()
  6603 ms  0x1175 ret:0x7fdb96be7900
  6603 ms  0x1175 PK11_PubDeriveWithKDF()
  6603 ms  0x1175 seckey:0x7fdb9684e020
  6603 ms     | 0x1175 EC_ValidatePublicKey()
  6603 ms     | 0x1175 ret:0x0
  6604 ms  0x1175 ret:0x7fdb96936380
  6604 ms  SECKEY_ECParamsToKeySize()
  6604 ms  0x1175 ret:0xff
  6604 ms  0x1175 PK11_DeriveWithFlags()
  6604 ms  0x1175 basekey:0x7fdb96be7900
  6604 ms     | 0x1175 PK11_DeriveWithTemplate()
  6604 ms  0x1175 ret:0x7fdb96ca8180
  6604 ms  0x1175 PK11_Derive()
  6604 ms  0x1175 basekey:0x7fdb96936380
  6604 ms     | 0x1175 PK11_DeriveWithTemplate()
  6604 ms  0x1175 ret:0x7fdb96be7800
  6604 ms  0x1175 PK11_DeriveWithFlags()
  6604 ms  0x1175 basekey:0x7fdb96be7800
  6604 ms     | 0x1175 PK11_DeriveWithTemplate()
  6604 ms  0x1175 ret:0x7fdb96be7900
  6604 ms  0x1175 PK11_DeriveWithFlags()
  6604 ms  0x1175 basekey:0x7fdb96be7800
  6604 ms     | 0x1175 PK11_DeriveWithTemplate()
  6604 ms  0x1175 ret:0x7fdb96936380
  6604 ms  0x1175 PK11_DeriveWithFlags()
  6604 ms  0x1175 basekey:0x7fdb96be7800
  6604 ms     | 0x1175 PK11_DeriveWithTemplate()
  6604 ms  0x1175 ret:0x7fdb96ca8180
  6604 ms  0x1175 PK11_Derive()
  6604 ms  0x1175 basekey:0x7fdb96936780
  6604 ms     | 0x1175 PK11_DeriveWithTemplate()
  6604 ms  0x1175 ret:0x7fdb96936c00
  6604 ms  0x1175 PK11_DeriveWithFlags()
  6604 ms  0x1175 basekey:0x7fdb96936380
  6604 ms     | 0x1175 PK11_DeriveWithTemplate()
  6604 ms  0x1175 ret:0x7fdb96be7800
  6604 ms  0x1175 PK11_DeriveWithFlags()
  6604 ms  0x1175 basekey:0x7fdb96936380
  6604 ms     | 0x1175 PK11_DeriveWithTemplate()
  6604 ms  0x1175 ret:0x7fdb96ca8180
           /* TID 0x1211 */
  6605 ms  0x1211 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6606 ms  0x1211 ret:0x0
  6606 ms  0x1211 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6606 ms  0x1211 ret:0x0
           /* TID 0x1175 */
  6606 ms  0x1175 PK11_DeriveWithFlags()
  6606 ms  0x1175 basekey:0x7fdb96936380
  6606 ms     | 0x1175 PK11_DeriveWithTemplate()
  6606 ms  0x1175 ret:0x7fdb96ca8180
  6606 ms  0x1175 SSL_AuthCertificateComplete()
  6606 ms  0x1175 fd:0x7fdb96c14f70
  6606 ms  0x1175 err:0x0
  6606 ms     | 0x1175 PK11_DeriveWithFlags()
  6606 ms     | 0x1175 basekey:0x7fdb96936c00
  6606 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6606 ms     | 0x1175 ret:0x7fdb96ca8180
  6606 ms     | 0x1175 PK11_DeriveWithFlags()
  6606 ms     | 0x1175 basekey:0x7fdb96936c00
  6606 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6606 ms     | 0x1175 ret:0x7fdb96936780
  6606 ms     | 0x1175 PK11_DeriveWithFlags()
  6606 ms     | 0x1175 basekey:0x7fdb96936c00
  6606 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6606 ms     | 0x1175 ret:0x7fdb96936b00
  6606 ms     | 0x1175 PK11_DeriveWithFlags()
  6606 ms     | 0x1175 basekey:0x7fdb96be7900
  6606 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6606 ms     | 0x1175 ret:0x7fdb96ca8800
  6606 ms     | 0x1175 PK11_DeriveWithFlags()
  6606 ms     | 0x1175 basekey:0x7fdb96be7900
  6606 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6606 ms     | 0x1175 ret:0x7fdb96ca8880
  6606 ms     | 0x1175 PK11_DeriveWithFlags()
  6606 ms     | 0x1175 basekey:0x7fdb96936780
  6606 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6606 ms     | 0x1175 ret:0x7fdb96ca8880
  6606 ms     | 0x1175 PK11_DeriveWithFlags()
  6606 ms     | 0x1175 basekey:0x7fdb96936780
  6606 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6606 ms     | 0x1175 ret:0x7fdb96936b80
  6606 ms     | 0x1175 PK11_DeriveWithFlags()
  6606 ms     | 0x1175 basekey:0x7fdb96be7900
  6606 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6606 ms     | 0x1175 ret:0x7fdb96be7800
  6606 ms     | 0x1175 PK11_Encrypt()
  6606 ms     | 0x1175 symkey:0x7fdb96ca8800
  6606 ms     | 0x1175 PK11_DeriveWithFlags()
  6606 ms     | 0x1175 basekey:0x7fdb96ca8180
  6606 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6606 ms     | 0x1175 ret:0x7fdb96be7800
  6606 ms     | 0x1175 PK11_DeriveWithFlags()
  6606 ms     | 0x1175 basekey:0x7fdb96ca8180
  6606 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6607 ms     | 0x1175 ret:0x7fdb96936b80
  6607 ms     | 0x1175 PK11_DeriveWithFlags()
  6607 ms     | 0x1175 basekey:0x7fdb96936c00
  6607 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6607 ms     | 0x1175 ret:0x7fdb96ca8800
  6607 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  6607 ms     | 0x1175 privk:0x7fdb96852020::7fdb96852020  30 dd 8e 96                                      0...
  6607 ms     | 0x1175 privk:0x7fdb96852020::7fdb96852020  e5 e5 e5 e5                                      ....
  6607 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  6607 ms     | 0x1175 privk:0x7fdb9684e020::7fdb9684e020  00 db 8e 96                                      ....
  6607 ms     | 0x1175 privk:0x7fdb9684e020::7fdb9684e020  e5 e5 e5 e5                                      ....
  6607 ms  0x1175 PK11_Encrypt()
  6607 ms  0x1175 symkey:0x7fdb96be7800
  6607 ms  0x1175 PK11_Encrypt()
  6607 ms  0x1175 symkey:0x7fdb96be7800
  6622 ms  0x1175 PK11_Encrypt()
  6622 ms  0x1175 symkey:0x7fdb96c1e700
           /* TID 0x117d */
  6626 ms  0x117d PR_Close()
  6626 ms  0x117d fd:0x7fdb96ce61c0
  6631 ms  0x117d PR_Close()
  6631 ms  0x117d fd:0x7fdb96ce61c0
  6631 ms  0x117d PR_Close()
  6631 ms  0x117d fd:0x7fdb96ce63a0
  6631 ms  0x117d PR_Close()
  6631 ms  0x117d fd:0x7fdb96ce61c0
           /* TID 0x1175 */
  6632 ms  0x1175 PK11_DeriveWithFlags()
  6632 ms  0x1175 basekey:0x7fdb96ca8800
  6632 ms     | 0x1175 PK11_DeriveWithTemplate()
  6632 ms  0x1175 ret:0x7fdb96936380
  6632 ms  0x1175 PK11_DeriveWithFlags()
  6632 ms  0x1175 basekey:0x7fdb96ca8800
  6632 ms     | 0x1175 PK11_DeriveWithTemplate()
  6632 ms  0x1175 ret:0x7fdb96936380
  6632 ms  0x1175 PK11_Encrypt()
  6632 ms  0x1175 symkey:0x7fdb96be7800
  6647 ms  0x1175 SSL_ImportFD()
  6647 ms  0x1175 ret:0x7fdb96ce6d00
  6647 ms  0x1175 SSL_AuthCertificateHook()
  6647 ms  0x1175 fd:0x7fdb96ce6d00
  6647 ms  0x1175 ret:0x0
  6647 ms  0x1175 PR_Connect()
  6647 ms  0x1175 fd:0x7fdb96ce6d00
  6648 ms  0x1175 SSL_ImportFD()
  6648 ms  0x1175 ret:0x7fdb96ce6d60
  6648 ms  0x1175 SSL_AuthCertificateHook()
  6648 ms  0x1175 fd:0x7fdb96ce6d60
  6648 ms  0x1175 ret:0x0
  6648 ms  0x1175 PR_Connect()
  6648 ms  0x1175 fd:0x7fdb96ce6d60
           /* TID 0x117d */
  6669 ms  0x117d PR_Close()
  6669 ms  0x117d fd:0x7fdb96942e50
  6670 ms  0x117d PR_Close()
  6670 ms  0x117d fd:0x7fdb96942e50
  6671 ms  0x117d PR_Close()
  6671 ms  0x117d fd:0x7fdb96942e50
           /* TID 0x1175 */
  6673 ms  0x1175 SECKEY_CreateECPrivateKey()
  6673 ms  0x1175 cx:0x7fdba7cf32c8
  6674 ms     | 0x1175 EC_ValidatePublicKey()
  6674 ms     | 0x1175 ret:0x0
  6674 ms  0x1175 ret:0x7fdb96c31020::7fdb96c31020  e0 dc 8e 96                                      ....
  6674 ms  0x1175 SECKEY_CreateECPrivateKey()
  6674 ms  0x1175 cx:0x7fdba7cf32c8
  6675 ms     | 0x1175 EC_ValidatePublicKey()
  6676 ms     | 0x1175 ret:0x0
  6676 ms  0x1175 ret:0x7fdb96c33020::7fdb96c33020  10 df 8e 96                                      ....
  6679 ms  0x1175 PK11_Encrypt()
  6679 ms  0x1175 symkey:0x7fdb96c1e700
  6685 ms  0x1175 SECKEY_CreateECPrivateKey()
  6685 ms  0x1175 cx:0x7fdba7cf3608
  6686 ms     | 0x1175 EC_ValidatePublicKey()
  6686 ms     | 0x1175 ret:0x0
  6686 ms  0x1175 ret:0x7fdb96c39820::7fdb96c39820  a0 4b 91 96                                      .K..
  6686 ms  0x1175 SECKEY_CreateECPrivateKey()
  6686 ms  0x1175 cx:0x7fdba7cf3608
  6687 ms     | 0x1175 EC_ValidatePublicKey()
  6688 ms     | 0x1175 ret:0x0
  6688 ms  0x1175 ret:0x7fdb96c3c020::7fdb96c3c020  e0 42 93 96                                      .B..
  6693 ms  0x1175 PK11_Encrypt()
  6693 ms  0x1175 symkey:0x7fdb96c1e700
  6702 ms  0x1175 PK11_Derive()
  6702 ms  0x1175 basekey:0x7fdb96936380
  6702 ms     | 0x1175 PK11_DeriveWithTemplate()
  6702 ms  0x1175 ret:0x7fdb96be7900
  6702 ms  0x1175 PK11_PubDeriveWithKDF()
  6702 ms  0x1175 seckey:0x7fdb96c31020
  6702 ms     | 0x1175 EC_ValidatePublicKey()
  6702 ms     | 0x1175 ret:0x0
  6703 ms  0x1175 ret:0x7fdb96936380
  6703 ms  SECKEY_ECParamsToKeySize()
  6703 ms  0x1175 ret:0xff
  6703 ms  0x1175 PK11_DeriveWithFlags()
  6703 ms  0x1175 basekey:0x7fdb96be7900
  6703 ms     | 0x1175 PK11_DeriveWithTemplate()
  6703 ms  0x1175 ret:0x7fdb96936c00
  6703 ms  0x1175 PK11_Derive()
  6703 ms  0x1175 basekey:0x7fdb96936380
  6703 ms     | 0x1175 PK11_DeriveWithTemplate()
  6703 ms  0x1175 ret:0x7fdb96936b80
  6703 ms  0x1175 PK11_DeriveWithFlags()
  6703 ms  0x1175 basekey:0x7fdb96936b80
  6703 ms     | 0x1175 PK11_DeriveWithTemplate()
  6703 ms  0x1175 ret:0x7fdb96be7900
  6703 ms  0x1175 PK11_DeriveWithFlags()
  6703 ms  0x1175 basekey:0x7fdb96936b80
  6703 ms     | 0x1175 PK11_DeriveWithTemplate()
  6703 ms  0x1175 ret:0x7fdb96936380
  6703 ms  0x1175 PK11_DeriveWithFlags()
  6703 ms  0x1175 basekey:0x7fdb96936b80
  6703 ms     | 0x1175 PK11_DeriveWithTemplate()
  6703 ms  0x1175 ret:0x7fdb96936c00
  6703 ms  0x1175 PK11_Derive()
  6703 ms  0x1175 basekey:0x7fdb96ca8680
  6703 ms     | 0x1175 PK11_DeriveWithTemplate()
  6703 ms  0x1175 ret:0x7fdb96ca8100
  6703 ms  0x1175 PK11_DeriveWithFlags()
  6703 ms  0x1175 basekey:0x7fdb96936380
  6703 ms     | 0x1175 PK11_DeriveWithTemplate()
  6703 ms  0x1175 ret:0x7fdb96936b80
  6703 ms  0x1175 PK11_DeriveWithFlags()
  6703 ms  0x1175 basekey:0x7fdb96936380
  6703 ms     | 0x1175 PK11_DeriveWithTemplate()
  6703 ms  0x1175 ret:0x7fdb96936c00
           /* TID 0x11d1 */
  6704 ms  0x11d1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6704 ms  0x11d1 ret:0x0
           /* TID 0x1175 */
  6704 ms  0x1175 PK11_DeriveWithFlags()
  6704 ms  0x1175 basekey:0x7fdb96936380
  6704 ms     | 0x1175 PK11_DeriveWithTemplate()
  6704 ms  0x1175 ret:0x7fdb96936c00
  6704 ms  0x1175 SSL_AuthCertificateComplete()
  6704 ms  0x1175 fd:0x7fdb96ce6d00
  6704 ms  0x1175 err:0x0
  6704 ms     | 0x1175 PK11_DeriveWithFlags()
  6704 ms     | 0x1175 basekey:0x7fdb96ca8100
  6704 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6704 ms     | 0x1175 ret:0x7fdb96936c00
  6704 ms     | 0x1175 PK11_DeriveWithFlags()
  6704 ms     | 0x1175 basekey:0x7fdb96ca8100
  6704 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6705 ms     | 0x1175 ret:0x7fdb96ca8680
  6705 ms     | 0x1175 PK11_DeriveWithFlags()
  6705 ms     | 0x1175 basekey:0x7fdb96ca8100
  6705 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6705 ms     | 0x1175 ret:0x7fdb96c1db80
  6705 ms     | 0x1175 PK11_DeriveWithFlags()
  6705 ms     | 0x1175 basekey:0x7fdb96be7900
  6705 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6705 ms     | 0x1175 ret:0x7fdb96ca8700
  6705 ms     | 0x1175 PK11_DeriveWithFlags()
  6705 ms     | 0x1175 basekey:0x7fdb96be7900
  6705 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6705 ms     | 0x1175 ret:0x7fdb96ca8780
  6705 ms     | 0x1175 PK11_DeriveWithFlags()
  6705 ms     | 0x1175 basekey:0x7fdb96ca8680
  6705 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6705 ms     | 0x1175 ret:0x7fdb96ca8780
  6705 ms     | 0x1175 PK11_DeriveWithFlags()
  6705 ms     | 0x1175 basekey:0x7fdb96ca8680
  6705 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6705 ms     | 0x1175 ret:0x7fdb96936680
  6705 ms     | 0x1175 PK11_DeriveWithFlags()
  6705 ms     | 0x1175 basekey:0x7fdb96be7900
  6705 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6705 ms     | 0x1175 ret:0x7fdb96936b80
  6705 ms     | 0x1175 PK11_Encrypt()
  6705 ms     | 0x1175 symkey:0x7fdb96ca8700
  6705 ms     | 0x1175 PK11_DeriveWithFlags()
  6705 ms     | 0x1175 basekey:0x7fdb96936c00
  6705 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6705 ms     | 0x1175 ret:0x7fdb96936b80
  6705 ms     | 0x1175 PK11_DeriveWithFlags()
  6705 ms     | 0x1175 basekey:0x7fdb96936c00
  6705 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6705 ms     | 0x1175 ret:0x7fdb96936680
  6705 ms     | 0x1175 PK11_DeriveWithFlags()
  6705 ms     | 0x1175 basekey:0x7fdb96ca8100
  6705 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6705 ms     | 0x1175 ret:0x7fdb96ca8700
  6705 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  6705 ms     | 0x1175 privk:0x7fdb96c33020::7fdb96c33020  10 df 8e 96                                      ....
  6705 ms     | 0x1175 privk:0x7fdb96c33020::7fdb96c33020  e5 e5 e5 e5                                      ....
  6705 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  6705 ms     | 0x1175 privk:0x7fdb96c31020::7fdb96c31020  e0 dc 8e 96                                      ....
  6705 ms     | 0x1175 privk:0x7fdb96c31020::7fdb96c31020  e5 e5 e5 e5                                      ....
           /* TID 0x117d */
  6708 ms  0x117d PR_Close()
  6708 ms  0x117d fd:0x7fdb96c14190
           /* TID 0x1175 */
  6708 ms  0x1175 PK11_Encrypt()
  6708 ms  0x1175 symkey:0x7fdb96936b80
  6708 ms  0x1175 PK11_Encrypt()
  6708 ms  0x1175 symkey:0x7fdb96936b80
  6720 ms  0x1175 PK11_Encrypt()
  6720 ms  0x1175 symkey:0x7fdb96be7800
  6729 ms  0x1175 SSL_ImportFD()
  6729 ms  0x1175 ret:0x7fdba7bcf6d0
  6729 ms  0x1175 SSL_AuthCertificateHook()
  6729 ms  0x1175 fd:0x7fdba7bcf6d0
  6729 ms  0x1175 ret:0x0
  6729 ms  0x1175 PK11_Encrypt()
  6729 ms  0x1175 symkey:0x7fdb96be7800
  6730 ms  0x1175 PR_Connect()
  6730 ms  0x1175 fd:0x7fdba7bcf6d0
  6730 ms  0x1175 PK11_DeriveWithFlags()
  6730 ms  0x1175 basekey:0x7fdb96ca8700
  6730 ms     | 0x1175 PK11_DeriveWithTemplate()
  6730 ms  0x1175 ret:0x7fdb96936380
  6730 ms  0x1175 PK11_DeriveWithFlags()
  6730 ms  0x1175 basekey:0x7fdb96ca8700
  6730 ms     | 0x1175 PK11_DeriveWithTemplate()
  6730 ms  0x1175 ret:0x7fdb96936380
  6730 ms  0x1175 PK11_Encrypt()
  6730 ms  0x1175 symkey:0x7fdb96936b80
  6741 ms  0x1175 PK11_Derive()
  6741 ms  0x1175 basekey:0x7fdb96936380
  6741 ms     | 0x1175 PK11_DeriveWithTemplate()
  6741 ms  0x1175 ret:0x7fdb96be7900
  6742 ms  0x1175 PK11_PubDeriveWithKDF()
  6742 ms  0x1175 seckey:0x7fdb96c39820
  6742 ms     | 0x1175 EC_ValidatePublicKey()
  6742 ms     | 0x1175 ret:0x0
  6742 ms  0x1175 ret:0x7fdb96936380
  6742 ms  SECKEY_ECParamsToKeySize()
  6742 ms  0x1175 ret:0xff
  6742 ms  0x1175 PK11_DeriveWithFlags()
  6742 ms  0x1175 basekey:0x7fdb96be7900
  6742 ms     | 0x1175 PK11_DeriveWithTemplate()
  6742 ms  0x1175 ret:0x7fdb96ca8100
  6742 ms  0x1175 PK11_Derive()
  6742 ms  0x1175 basekey:0x7fdb96936380
  6742 ms     | 0x1175 PK11_DeriveWithTemplate()
  6742 ms  0x1175 ret:0x7fdb96936680
  6742 ms  0x1175 PK11_DeriveWithFlags()
  6742 ms  0x1175 basekey:0x7fdb96936680
  6742 ms     | 0x1175 PK11_DeriveWithTemplate()
  6742 ms  0x1175 ret:0x7fdb96be7900
  6742 ms  0x1175 PK11_DeriveWithFlags()
  6742 ms  0x1175 basekey:0x7fdb96936680
  6742 ms     | 0x1175 PK11_DeriveWithTemplate()
  6742 ms  0x1175 ret:0x7fdb96936380
  6742 ms  0x1175 PK11_DeriveWithFlags()
  6742 ms  0x1175 basekey:0x7fdb96936680
  6742 ms     | 0x1175 PK11_DeriveWithTemplate()
  6742 ms  0x1175 ret:0x7fdb96ca8100
  6742 ms  0x1175 PK11_Derive()
  6742 ms  0x1175 basekey:0x7fdba97e5c00
  6742 ms     | 0x1175 PK11_DeriveWithTemplate()
  6742 ms  0x1175 ret:0x7fdb96be7580
  6742 ms  0x1175 PK11_DeriveWithFlags()
  6742 ms  0x1175 basekey:0x7fdb96936380
  6742 ms     | 0x1175 PK11_DeriveWithTemplate()
  6742 ms  0x1175 ret:0x7fdb96936680
  6742 ms  0x1175 PK11_DeriveWithFlags()
  6742 ms  0x1175 basekey:0x7fdb96936380
  6742 ms     | 0x1175 PK11_DeriveWithTemplate()
  6742 ms  0x1175 ret:0x7fdb96ca8100
  6744 ms  SECKEY_ECParamsToKeySize()
  6745 ms  0x1175 ret:0x100
  6745 ms  SECKEY_ECParamsToBasePointOrderLen()
  6745 ms  0x1175 ret:0x100
  6745 ms  SECKEY_ECParamsToBasePointOrderLen()
  6745 ms  0x1175 ret:0x100
  6745 ms  0x1175 EC_ValidatePublicKey()
  6746 ms  0x1175 ret:0x0
  6748 ms  0x1175 PK11_DeriveWithFlags()
  6748 ms  0x1175 basekey:0x7fdb96936380
  6748 ms     | 0x1175 PK11_DeriveWithTemplate()
  6748 ms  0x1175 ret:0x7fdb96ca8100
           /* TID 0x117d */
  6750 ms  0x117d PR_Close()
  6750 ms  0x117d fd:0x7fdb96ce6ca0
  6752 ms  0x117d PR_Close()
  6752 ms  0x117d fd:0x7fdb96c14340
           /* TID 0x1175 */
  6755 ms  0x1175 SECKEY_CreateECPrivateKey()
  6755 ms  0x1175 cx:0x7fdba7cf3fc8
  6756 ms     | 0x1175 EC_ValidatePublicKey()
  6756 ms     | 0x1175 ret:0x0
  6756 ms  0x1175 ret:0x7fdb96c7f820::7fdb96c7f820  70 de 8e 96                                      p...
  6756 ms  0x1175 SECKEY_CreateECPrivateKey()
  6756 ms  0x1175 cx:0x7fdba7cf3fc8
  6756 ms     | 0x1175 EC_ValidatePublicKey()
  6758 ms     | 0x1175 ret:0x0
  6758 ms  0x1175 ret:0x7fdb96c82820::7fdb96c82820  d0 48 93 96                                      .H..
           /* TID 0x117d */
  6778 ms  0x117d PR_Close()
  6778 ms  0x117d fd:0x7fdb96c14640
           /* TID 0x1175 */
  6783 ms  0x1175 PK11_Derive()
  6783 ms  0x1175 basekey:0x7fdb96ca8100
  6783 ms     | 0x1175 PK11_DeriveWithTemplate()
  6783 ms  0x1175 ret:0x7fdba97e5c00
  6783 ms  0x1175 PK11_PubDeriveWithKDF()
  6783 ms  0x1175 seckey:0x7fdb96c7f820
  6784 ms     | 0x1175 EC_ValidatePublicKey()
  6784 ms     | 0x1175 ret:0x0
  6784 ms  0x1175 ret:0x7fdb96ca8100
  6784 ms  SECKEY_ECParamsToKeySize()
  6784 ms  0x1175 ret:0xff
  6784 ms  0x1175 PK11_DeriveWithFlags()
  6784 ms  0x1175 basekey:0x7fdba97e5c00
  6784 ms     | 0x1175 PK11_DeriveWithTemplate()
  6784 ms  0x1175 ret:0x7fdb96c1da00
  6784 ms  0x1175 PK11_Derive()
  6784 ms  0x1175 basekey:0x7fdb96ca8100
  6784 ms     | 0x1175 PK11_DeriveWithTemplate()
  6784 ms  0x1175 ret:0x7fdb96ca8a80
  6784 ms  0x1175 PK11_DeriveWithFlags()
  6784 ms  0x1175 basekey:0x7fdb96ca8a80
  6784 ms     | 0x1175 PK11_DeriveWithTemplate()
  6784 ms  0x1175 ret:0x7fdba97e5c00
  6784 ms  0x1175 PK11_DeriveWithFlags()
  6784 ms  0x1175 basekey:0x7fdb96ca8a80
  6784 ms     | 0x1175 PK11_DeriveWithTemplate()
  6784 ms  0x1175 ret:0x7fdb96ca8100
  6784 ms  0x1175 PK11_DeriveWithFlags()
  6784 ms  0x1175 basekey:0x7fdb96ca8a80
  6784 ms     | 0x1175 PK11_DeriveWithTemplate()
  6784 ms  0x1175 ret:0x7fdb96c1da00
  6784 ms  0x1175 PK11_Derive()
  6784 ms  0x1175 basekey:0x7fdb96935b80
  6784 ms     | 0x1175 PK11_DeriveWithTemplate()
  6784 ms  0x1175 ret:0x7fdb96936200
  6784 ms  0x1175 PK11_DeriveWithFlags()
  6784 ms  0x1175 basekey:0x7fdb96ca8100
  6784 ms     | 0x1175 PK11_DeriveWithTemplate()
  6784 ms  0x1175 ret:0x7fdb96ca8a80
  6784 ms  0x1175 PK11_DeriveWithFlags()
  6784 ms  0x1175 basekey:0x7fdb96ca8100
  6784 ms     | 0x1175 PK11_DeriveWithTemplate()
  6784 ms  0x1175 ret:0x7fdb96c1da00
           /* TID 0x1211 */
  6785 ms  0x1211 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6785 ms  0x1211 ret:0x0
  6785 ms  0x1211 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6785 ms  0x1211 ret:0x0
           /* TID 0x1175 */
  6786 ms  0x1175 PK11_DeriveWithFlags()
  6786 ms  0x1175 basekey:0x7fdb96ca8100
  6786 ms     | 0x1175 PK11_DeriveWithTemplate()
  6786 ms  0x1175 ret:0x7fdb96c1da00
  6786 ms  0x1175 SSL_AuthCertificateComplete()
  6786 ms  0x1175 fd:0x7fdba7bcf6d0
  6786 ms  0x1175 err:0x0
  6786 ms     | 0x1175 PK11_DeriveWithFlags()
  6786 ms     | 0x1175 basekey:0x7fdb96936200
  6786 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6786 ms     | 0x1175 ret:0x7fdb96c1da00
  6786 ms     | 0x1175 PK11_DeriveWithFlags()
  6786 ms     | 0x1175 basekey:0x7fdb96936200
  6786 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6786 ms     | 0x1175 ret:0x7fdb96935b80
  6786 ms     | 0x1175 PK11_DeriveWithFlags()
  6786 ms     | 0x1175 basekey:0x7fdb96936200
  6786 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6786 ms     | 0x1175 ret:0x7fdb96936280
  6786 ms     | 0x1175 PK11_DeriveWithFlags()
  6786 ms     | 0x1175 basekey:0x7fdba97e5c00
  6786 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6786 ms     | 0x1175 ret:0x7fdb96936d80
  6786 ms     | 0x1175 PK11_DeriveWithFlags()
  6786 ms     | 0x1175 basekey:0x7fdba97e5c00
  6786 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6786 ms     | 0x1175 ret:0x7fdb96936e00
  6786 ms     | 0x1175 PK11_DeriveWithFlags()
  6786 ms     | 0x1175 basekey:0x7fdb96935b80
  6786 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6786 ms     | 0x1175 ret:0x7fdb96936e00
  6786 ms     | 0x1175 PK11_DeriveWithFlags()
  6786 ms     | 0x1175 basekey:0x7fdb96935b80
  6786 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6786 ms     | 0x1175 ret:0x7fdb96936e80
  6786 ms     | 0x1175 PK11_DeriveWithFlags()
  6786 ms     | 0x1175 basekey:0x7fdba97e5c00
  6786 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6786 ms     | 0x1175 ret:0x7fdb96ca8a80
  6786 ms     | 0x1175 PK11_Encrypt()
  6786 ms     | 0x1175 symkey:0x7fdb96936d80
  6786 ms     | 0x1175 PK11_DeriveWithFlags()
  6786 ms     | 0x1175 basekey:0x7fdb96c1da00
  6786 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6786 ms     | 0x1175 ret:0x7fdb96ca8a80
  6786 ms     | 0x1175 PK11_DeriveWithFlags()
  6786 ms     | 0x1175 basekey:0x7fdb96c1da00
  6786 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6786 ms     | 0x1175 ret:0x7fdb96936e80
  6786 ms     | 0x1175 PK11_DeriveWithFlags()
  6786 ms     | 0x1175 basekey:0x7fdb96936200
  6786 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6786 ms     | 0x1175 ret:0x7fdb96936d80
  6786 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  6786 ms     | 0x1175 privk:0x7fdb96c82820::7fdb96c82820  d0 48 93 96                                      .H..
  6787 ms     | 0x1175 privk:0x7fdb96c82820::7fdb96c82820  e5 e5 e5 e5                                      ....
  6787 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  6787 ms     | 0x1175 privk:0x7fdb96c7f820::7fdb96c7f820  70 de 8e 96                                      p...
  6787 ms     | 0x1175 privk:0x7fdb96c7f820::7fdb96c7f820  e5 e5 e5 e5                                      ....
  6787 ms  0x1175 PK11_Encrypt()
  6787 ms  0x1175 symkey:0x7fdb96ca8a80
  6811 ms  0x1175 PK11_DeriveWithFlags()
  6811 ms  0x1175 basekey:0x7fdb96936d80
  6811 ms     | 0x1175 PK11_DeriveWithTemplate()
  6811 ms  0x1175 ret:0x7fdb96ca8100
  6811 ms  0x1175 PK11_DeriveWithFlags()
  6811 ms  0x1175 basekey:0x7fdb96936d80
  6811 ms     | 0x1175 PK11_DeriveWithTemplate()
  6812 ms  0x1175 ret:0x7fdb96ca8100
  6812 ms  0x1175 PR_Close()
  6812 ms  0x1175 fd:0x7fdba7bcf6d0
  6812 ms     | 0x1175 PK11_Encrypt()
  6812 ms     | 0x1175 symkey:0x7fdb96ca8a80
  6851 ms  0x1175 PK11_Encrypt()
  6851 ms  0x1175 symkey:0x7fdb96936b80
  6854 ms  0x1175 PK11_Encrypt()
  6854 ms  0x1175 symkey:0x7fdb96c1e700
           /* TID 0x117d */
  6881 ms  0x117d PR_Close()
  6881 ms  0x117d fd:0x7fdb96ce6df0
           /* TID 0x1175 */
  6882 ms  0x1175 PK11_Encrypt()
  6882 ms  0x1175 symkey:0x7fdb96be7800
  6885 ms  0x1175 SSL_ImportFD()
  6885 ms  0x1175 ret:0x7fdba7bcf7f0
  6885 ms  0x1175 SSL_AuthCertificateHook()
  6885 ms  0x1175 fd:0x7fdba7bcf7f0
  6885 ms  0x1175 ret:0x0
  6885 ms  0x1175 PR_Connect()
  6885 ms  0x1175 fd:0x7fdba7bcf7f0
           /* TID 0x117d */
  6894 ms  0x117d PR_Close()
  6894 ms  0x117d fd:0x7fdb96942e20
           /* TID 0x1212 */
  6894 ms  0x1212 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6894 ms  0x1212 ret:0x0
           /* TID 0x1175 */
  6894 ms  0x1175 SSL_AuthCertificateComplete()
  6894 ms  0x1175 fd:0x7fdb96ce6d60
  6894 ms  0x1175 err:0x0
  6894 ms     | 0x1175 PK11_DeriveWithFlags()
  6894 ms     | 0x1175 basekey:0x7fdb96be7580
  6894 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6894 ms     | 0x1175 ret:0x7fdb96936280
  6894 ms     | 0x1175 PK11_DeriveWithFlags()
  6894 ms     | 0x1175 basekey:0x7fdb96be7580
  6894 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6894 ms     | 0x1175 ret:0x7fdb96935b80
  6894 ms     | 0x1175 PK11_DeriveWithFlags()
  6894 ms     | 0x1175 basekey:0x7fdb96be7580
  6894 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6894 ms     | 0x1175 ret:0x7fdb96c1da00
  6894 ms     | 0x1175 PK11_DeriveWithFlags()
  6894 ms     | 0x1175 basekey:0x7fdb96be7900
  6894 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6895 ms     | 0x1175 ret:0x7fdb96936d80
  6895 ms     | 0x1175 PK11_DeriveWithFlags()
  6895 ms     | 0x1175 basekey:0x7fdb96be7900
  6895 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6895 ms     | 0x1175 ret:0x7fdb96936e00
  6895 ms     | 0x1175 PK11_DeriveWithFlags()
  6895 ms     | 0x1175 basekey:0x7fdb96935b80
  6895 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6895 ms     | 0x1175 ret:0x7fdb96936e00
  6895 ms     | 0x1175 PK11_DeriveWithFlags()
  6895 ms     | 0x1175 basekey:0x7fdb96935b80
  6895 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6895 ms     | 0x1175 ret:0x7fdb96ca8a80
  6895 ms     | 0x1175 PK11_DeriveWithFlags()
  6895 ms     | 0x1175 basekey:0x7fdb96be7900
  6895 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6895 ms     | 0x1175 ret:0x7fdb96936680
  6895 ms     | 0x1175 PK11_Encrypt()
  6895 ms     | 0x1175 symkey:0x7fdb96936d80
  6895 ms     | 0x1175 PK11_DeriveWithFlags()
  6895 ms     | 0x1175 basekey:0x7fdb96936280
  6895 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6895 ms     | 0x1175 ret:0x7fdb96936680
  6895 ms     | 0x1175 PK11_DeriveWithFlags()
  6895 ms     | 0x1175 basekey:0x7fdb96936280
  6895 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6895 ms     | 0x1175 ret:0x7fdb96ca8a80
  6895 ms     | 0x1175 PK11_DeriveWithFlags()
  6895 ms     | 0x1175 basekey:0x7fdb96be7580
  6895 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6895 ms     | 0x1175 ret:0x7fdb96936d80
  6895 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  6895 ms     | 0x1175 privk:0x7fdb96c3c020::7fdb96c3c020  e0 42 93 96                                      .B..
  6895 ms     | 0x1175 privk:0x7fdb96c3c020::7fdb96c3c020  e5 e5 e5 e5                                      ....
  6895 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  6895 ms     | 0x1175 privk:0x7fdb96c39820::7fdb96c39820  a0 4b 91 96                                      .K..
  6895 ms     | 0x1175 privk:0x7fdb96c39820::7fdb96c39820  e5 e5 e5 e5                                      ....
  6895 ms  0x1175 PK11_Encrypt()
  6895 ms  0x1175 symkey:0x7fdb96936680
  6897 ms  0x1175 PK11_Encrypt()
  6897 ms  0x1175 symkey:0x7fdb96936680
           /* TID 0x117d */
  6908 ms  0x117d PR_Close()
  6908 ms  0x117d fd:0x7fdb96c14370
           /* TID 0x1175 */
  6910 ms  0x1175 SECKEY_CreateECPrivateKey()
  6910 ms  0x1175 cx:0x7fdba7cf4168
  6911 ms     | 0x1175 EC_ValidatePublicKey()
  6911 ms     | 0x1175 ret:0x0
  6911 ms  0x1175 ret:0x7fdb96c3b020::7fdb96c3b020  90 42 93 96                                      .B..
  6911 ms  0x1175 SECKEY_CreateECPrivateKey()
  6911 ms  0x1175 cx:0x7fdba7cf4168
  6911 ms     | 0x1175 EC_ValidatePublicKey()
  6913 ms     | 0x1175 ret:0x0
  6913 ms  0x1175 ret:0x7fdb96c48020::7fdb96c48020  d0 b8 9a 96                                      ....
           /* TID 0x117d */
  6925 ms  0x117d PR_Close()
  6925 ms  0x117d fd:0x7fdba7bcf640
           /* TID 0x1175 */
  6933 ms  0x1175 PK11_DeriveWithFlags()
  6933 ms  0x1175 basekey:0x7fdb96936d80
  6933 ms     | 0x1175 PK11_DeriveWithTemplate()
  6933 ms  0x1175 ret:0x7fdb96936380
  6933 ms  0x1175 PK11_DeriveWithFlags()
  6933 ms  0x1175 basekey:0x7fdb96936d80
  6933 ms     | 0x1175 PK11_DeriveWithTemplate()
  6933 ms  0x1175 ret:0x7fdb96936380
  6933 ms  0x1175 PK11_Encrypt()
  6933 ms  0x1175 symkey:0x7fdb96936680
  6938 ms  0x1175 PK11_Derive()
  6938 ms  0x1175 basekey:0x7fdb96936380
  6938 ms     | 0x1175 PK11_DeriveWithTemplate()
  6938 ms  0x1175 ret:0x7fdb96be7900
  6938 ms  0x1175 PK11_PubDeriveWithKDF()
  6938 ms  0x1175 seckey:0x7fdb96c3b020
  6938 ms     | 0x1175 EC_ValidatePublicKey()
  6938 ms     | 0x1175 ret:0x0
  6939 ms  0x1175 ret:0x7fdb96936380
  6939 ms  SECKEY_ECParamsToKeySize()
  6939 ms  0x1175 ret:0xff
  6939 ms  0x1175 PK11_DeriveWithFlags()
  6939 ms  0x1175 basekey:0x7fdb96be7900
  6939 ms     | 0x1175 PK11_DeriveWithTemplate()
  6939 ms  0x1175 ret:0x7fdb96be7580
  6939 ms  0x1175 PK11_Derive()
  6939 ms  0x1175 basekey:0x7fdb96936380
  6939 ms     | 0x1175 PK11_DeriveWithTemplate()
  6939 ms  0x1175 ret:0x7fdb96ca8a80
  6939 ms  0x1175 PK11_DeriveWithFlags()
  6939 ms  0x1175 basekey:0x7fdb96ca8a80
  6939 ms     | 0x1175 PK11_DeriveWithTemplate()
  6939 ms  0x1175 ret:0x7fdb96be7900
  6939 ms  0x1175 PK11_DeriveWithFlags()
  6939 ms  0x1175 basekey:0x7fdb96ca8a80
  6939 ms     | 0x1175 PK11_DeriveWithTemplate()
  6939 ms  0x1175 ret:0x7fdb96936380
  6939 ms  0x1175 PK11_DeriveWithFlags()
  6939 ms  0x1175 basekey:0x7fdb96ca8a80
  6939 ms     | 0x1175 PK11_DeriveWithTemplate()
  6939 ms  0x1175 ret:0x7fdb96be7580
  6939 ms  0x1175 PK11_Derive()
  6939 ms  0x1175 basekey:0x7fdb96ca8100
  6939 ms     | 0x1175 PK11_DeriveWithTemplate()
  6939 ms  0x1175 ret:0x7fdba97e5c00
  6939 ms  0x1175 PK11_DeriveWithFlags()
  6939 ms  0x1175 basekey:0x7fdb96936380
  6939 ms     | 0x1175 PK11_DeriveWithTemplate()
  6939 ms  0x1175 ret:0x7fdb96ca8a80
  6939 ms  0x1175 PK11_DeriveWithFlags()
  6939 ms  0x1175 basekey:0x7fdb96936380
  6939 ms     | 0x1175 PK11_DeriveWithTemplate()
  6939 ms  0x1175 ret:0x7fdb96be7580
           /* TID 0x11d1 */
  6940 ms  0x11d1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6940 ms  0x11d1 ret:0x0
           /* TID 0x1175 */
  6941 ms  0x1175 PK11_DeriveWithFlags()
  6941 ms  0x1175 basekey:0x7fdb96936380
  6941 ms     | 0x1175 PK11_DeriveWithTemplate()
  6941 ms  0x1175 ret:0x7fdb96be7580
  6947 ms  0x1175 SSL_AuthCertificateComplete()
  6947 ms  0x1175 fd:0x7fdba7bcf7f0
  6947 ms  0x1175 err:0x0
  6947 ms     | 0x1175 PK11_DeriveWithFlags()
  6947 ms     | 0x1175 basekey:0x7fdba97e5c00
  6947 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6947 ms     | 0x1175 ret:0x7fdb96be7580
  6947 ms     | 0x1175 PK11_DeriveWithFlags()
  6947 ms     | 0x1175 basekey:0x7fdba97e5c00
  6947 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6947 ms     | 0x1175 ret:0x7fdb96ca8100
  6947 ms     | 0x1175 PK11_DeriveWithFlags()
  6947 ms     | 0x1175 basekey:0x7fdba97e5c00
  6947 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6947 ms     | 0x1175 ret:0x7fdb96936200
  6947 ms     | 0x1175 PK11_DeriveWithFlags()
  6947 ms     | 0x1175 basekey:0x7fdb96be7900
  6947 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6947 ms     | 0x1175 ret:0x7fdb96936e80
  6947 ms     | 0x1175 PK11_DeriveWithFlags()
  6947 ms     | 0x1175 basekey:0x7fdb96be7900
  6947 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6947 ms     | 0x1175 ret:0x7fdb96c1d880
  6947 ms     | 0x1175 PK11_DeriveWithFlags()
  6947 ms     | 0x1175 basekey:0x7fdb96ca8100
  6947 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6947 ms     | 0x1175 ret:0x7fdb96c1d880
  6947 ms     | 0x1175 PK11_DeriveWithFlags()
  6947 ms     | 0x1175 basekey:0x7fdb96ca8100
  6947 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6947 ms     | 0x1175 ret:0x7fdb96c1dd80
  6947 ms     | 0x1175 PK11_DeriveWithFlags()
  6947 ms     | 0x1175 basekey:0x7fdb96be7900
  6947 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6947 ms     | 0x1175 ret:0x7fdb96ca8a80
  6947 ms     | 0x1175 PK11_Encrypt()
  6947 ms     | 0x1175 symkey:0x7fdb96936e80
  6947 ms     | 0x1175 PK11_DeriveWithFlags()
  6947 ms     | 0x1175 basekey:0x7fdb96be7580
  6947 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6948 ms     | 0x1175 ret:0x7fdb96ca8a80
  6948 ms     | 0x1175 PK11_DeriveWithFlags()
  6948 ms     | 0x1175 basekey:0x7fdb96be7580
  6948 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6948 ms     | 0x1175 ret:0x7fdb96c1dd80
  6948 ms     | 0x1175 PK11_DeriveWithFlags()
  6948 ms     | 0x1175 basekey:0x7fdba97e5c00
  6948 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  6948 ms     | 0x1175 ret:0x7fdb96936e80
  6948 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  6948 ms     | 0x1175 privk:0x7fdb96c48020::7fdb96c48020  d0 b8 9a 96                                      ....
  6948 ms     | 0x1175 privk:0x7fdb96c48020::7fdb96c48020  e5 e5 e5 e5                                      ....
  6948 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  6948 ms     | 0x1175 privk:0x7fdb96c3b020::7fdb96c3b020  90 42 93 96                                      .B..
  6948 ms     | 0x1175 privk:0x7fdb96c3b020::7fdb96c3b020  e5 e5 e5 e5                                      ....
  6948 ms  0x1175 PK11_Encrypt()
  6948 ms  0x1175 symkey:0x7fdb96ca8a80
  6948 ms  0x1175 PK11_Encrypt()
  6948 ms  0x1175 symkey:0x7fdb96ca8a80
  6957 ms  0x1175 SSL_ImportFD()
  6957 ms  0x1175 ret:0x7fdba7c2b3a0
  6957 ms  0x1175 SSL_AuthCertificateHook()
  6957 ms  0x1175 fd:0x7fdba7c2b3a0
  6957 ms  0x1175 ret:0x0
  6957 ms  0x1175 PR_Connect()
  6957 ms  0x1175 fd:0x7fdba7c2b3a0
  6973 ms  0x1175 PK11_DeriveWithFlags()
  6973 ms  0x1175 basekey:0x7fdb96936e80
  6973 ms     | 0x1175 PK11_DeriveWithTemplate()
  6973 ms  0x1175 ret:0x7fdb96936380
  6973 ms  0x1175 PK11_DeriveWithFlags()
  6973 ms  0x1175 basekey:0x7fdb96936e80
  6973 ms     | 0x1175 PK11_DeriveWithTemplate()
  6973 ms  0x1175 ret:0x7fdb96936380
  6973 ms  0x1175 PK11_Encrypt()
  6973 ms  0x1175 symkey:0x7fdb96ca8a80
  6980 ms  0x1175 PK11_Encrypt()
  6980 ms  0x1175 symkey:0x7fdb96be7800
  6981 ms  0x1175 PK11_Encrypt()
  6981 ms  0x1175 symkey:0x7fdb96936680
           /* TID 0x117d */
  6981 ms  0x117d PR_Close()
  6981 ms  0x117d fd:0x7fdba7c2b160
           /* TID 0x1175 */
  6982 ms  0x1175 SECKEY_CreateECPrivateKey()
  6982 ms  0x1175 cx:0x7fdba7cf47e8
  6982 ms     | 0x1175 EC_ValidatePublicKey()
  6983 ms     | 0x1175 ret:0x0
  6983 ms  0x1175 ret:0x7fdb96c48020::7fdb96c48020  b0 4a 93 96                                      .J..
  6983 ms  0x1175 SECKEY_CreateECPrivateKey()
  6983 ms  0x1175 cx:0x7fdba7cf47e8
  6983 ms     | 0x1175 EC_ValidatePublicKey()
  6985 ms     | 0x1175 ret:0x0
  6985 ms  0x1175 ret:0x7fdb96c93820::7fdb96c93820  10 2f bf 96                                      ./..
           /* TID 0x117d */
  7001 ms  0x117d PR_Close()
  7001 ms  0x117d fd:0x7fdba7bcff70
  7005 ms  0x117d PR_Close()
  7005 ms  0x117d fd:0x7fdba7bcff70
           /* TID 0x1175 */
  7010 ms  0x1175 PK11_Derive()
  7010 ms  0x1175 basekey:0x7fdb96936380
  7010 ms     | 0x1175 PK11_DeriveWithTemplate()
  7010 ms  0x1175 ret:0x7fdb96be7900
  7010 ms  0x1175 PK11_PubDeriveWithKDF()
  7010 ms  0x1175 seckey:0x7fdb96c48020
  7011 ms     | 0x1175 EC_ValidatePublicKey()
  7011 ms     | 0x1175 ret:0x0
  7011 ms  0x1175 ret:0x7fdb96936380
  7011 ms  SECKEY_ECParamsToKeySize()
  7011 ms  0x1175 ret:0xff
  7011 ms  0x1175 PK11_DeriveWithFlags()
  7011 ms  0x1175 basekey:0x7fdb96be7900
  7011 ms     | 0x1175 PK11_DeriveWithTemplate()
  7011 ms  0x1175 ret:0x7fdba97e5c00
  7011 ms  0x1175 PK11_Derive()
  7011 ms  0x1175 basekey:0x7fdb96936380
  7011 ms     | 0x1175 PK11_DeriveWithTemplate()
  7011 ms  0x1175 ret:0x7fdb96c1dd80
  7011 ms  0x1175 PK11_DeriveWithFlags()
  7011 ms  0x1175 basekey:0x7fdb96c1dd80
  7011 ms     | 0x1175 PK11_DeriveWithTemplate()
  7011 ms  0x1175 ret:0x7fdb96be7900
  7011 ms  0x1175 PK11_DeriveWithFlags()
  7011 ms  0x1175 basekey:0x7fdb96c1dd80
  7011 ms     | 0x1175 PK11_DeriveWithTemplate()
  7011 ms  0x1175 ret:0x7fdb96936380
  7011 ms  0x1175 PK11_DeriveWithFlags()
  7011 ms  0x1175 basekey:0x7fdb96c1dd80
  7011 ms     | 0x1175 PK11_DeriveWithTemplate()
  7011 ms  0x1175 ret:0x7fdba97e5c00
  7011 ms  0x1175 PK11_Derive()
  7011 ms  0x1175 basekey:0x7fdb96ca9a00
  7011 ms     | 0x1175 PK11_DeriveWithTemplate()
  7011 ms  0x1175 ret:0x7fdb96ca9f00
  7011 ms  0x1175 PK11_DeriveWithFlags()
  7011 ms  0x1175 basekey:0x7fdb96936380
  7011 ms     | 0x1175 PK11_DeriveWithTemplate()
  7011 ms  0x1175 ret:0x7fdb96c1dd80
  7011 ms  0x1175 PK11_DeriveWithFlags()
  7011 ms  0x1175 basekey:0x7fdb96936380
  7011 ms     | 0x1175 PK11_DeriveWithTemplate()
  7011 ms  0x1175 ret:0x7fdba97e5c00
           /* TID 0x1211 */
  7015 ms  0x1211 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7015 ms  0x1211 ret:0x0
           /* TID 0x1175 */
  7016 ms  0x1175 PK11_DeriveWithFlags()
  7016 ms  0x1175 basekey:0x7fdb96936380
  7016 ms     | 0x1175 PK11_DeriveWithTemplate()
  7016 ms  0x1175 ret:0x7fdba97e5c00
  7016 ms  0x1175 SSL_AuthCertificateComplete()
  7016 ms  0x1175 fd:0x7fdba7c2b3a0
  7016 ms  0x1175 err:0x0
  7016 ms     | 0x1175 PK11_DeriveWithFlags()
  7016 ms     | 0x1175 basekey:0x7fdb96ca9f00
  7016 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7016 ms     | 0x1175 ret:0x7fdba97e5c00
  7016 ms     | 0x1175 PK11_DeriveWithFlags()
  7016 ms     | 0x1175 basekey:0x7fdb96ca9f00
  7016 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7016 ms     | 0x1175 ret:0x7fdb96ca9a00
  7016 ms     | 0x1175 PK11_DeriveWithFlags()
  7016 ms     | 0x1175 basekey:0x7fdb96ca9f00
  7016 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7016 ms     | 0x1175 ret:0x7fdba7bd9a00
  7016 ms     | 0x1175 PK11_DeriveWithFlags()
  7016 ms     | 0x1175 basekey:0x7fdb96be7900
  7016 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7016 ms     | 0x1175 ret:0x7fdba7bd9d00
  7016 ms     | 0x1175 PK11_DeriveWithFlags()
  7016 ms     | 0x1175 basekey:0x7fdb96be7900
  7016 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7016 ms     | 0x1175 ret:0x7fdba7c35100
  7016 ms     | 0x1175 PK11_DeriveWithFlags()
  7016 ms     | 0x1175 basekey:0x7fdb96ca9a00
  7016 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7016 ms     | 0x1175 ret:0x7fdba7c35100
  7016 ms     | 0x1175 PK11_DeriveWithFlags()
  7016 ms     | 0x1175 basekey:0x7fdb96ca9a00
  7016 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7016 ms     | 0x1175 ret:0x7fdba7c35200
  7016 ms     | 0x1175 PK11_DeriveWithFlags()
  7016 ms     | 0x1175 basekey:0x7fdb96be7900
  7016 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7016 ms     | 0x1175 ret:0x7fdb96c1dd80
  7016 ms     | 0x1175 PK11_Encrypt()
  7016 ms     | 0x1175 symkey:0x7fdba7bd9d00
  7016 ms     | 0x1175 PK11_DeriveWithFlags()
  7016 ms     | 0x1175 basekey:0x7fdba97e5c00
  7016 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7016 ms     | 0x1175 ret:0x7fdb96c1dd80
  7016 ms     | 0x1175 PK11_DeriveWithFlags()
  7016 ms     | 0x1175 basekey:0x7fdba97e5c00
  7016 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7016 ms     | 0x1175 ret:0x7fdba7c35200
  7016 ms     | 0x1175 PK11_DeriveWithFlags()
  7016 ms     | 0x1175 basekey:0x7fdb96ca9f00
  7016 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7016 ms     | 0x1175 ret:0x7fdba7bd9d00
  7016 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  7016 ms     | 0x1175 privk:0x7fdb96c93820::7fdb96c93820  10 2f bf 96                                      ./..
  7017 ms     | 0x1175 privk:0x7fdb96c93820::7fdb96c93820  e5 e5 e5 e5                                      ....
  7017 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  7017 ms     | 0x1175 privk:0x7fdb96c48020::7fdb96c48020  b0 4a 93 96                                      .J..
  7017 ms     | 0x1175 privk:0x7fdb96c48020::7fdb96c48020  e5 e5 e5 e5                                      ....
  7017 ms  0x1175 PK11_Encrypt()
  7017 ms  0x1175 symkey:0x7fdb96c1dd80
  7017 ms  0x1175 PK11_Encrypt()
  7017 ms  0x1175 symkey:0x7fdb96c1dd80
  7018 ms  0x1175 PK11_Encrypt()
  7018 ms  0x1175 symkey:0x7fdb96be7800
  7028 ms  0x1175 PK11_Encrypt()
  7028 ms  0x1175 symkey:0x7fdb96be7800
  7033 ms  0x1175 PK11_Encrypt()
  7033 ms  0x1175 symkey:0x7fdb96ca8a80
  7042 ms  0x1175 PK11_DeriveWithFlags()
  7042 ms  0x1175 basekey:0x7fdba7bd9d00
  7042 ms     | 0x1175 PK11_DeriveWithTemplate()
  7042 ms  0x1175 ret:0x7fdb96936380
  7042 ms  0x1175 PK11_DeriveWithFlags()
  7042 ms  0x1175 basekey:0x7fdba7bd9d00
  7042 ms     | 0x1175 PK11_DeriveWithTemplate()
  7042 ms  0x1175 ret:0x7fdb96936380
  7042 ms  0x1175 PK11_Encrypt()
  7042 ms  0x1175 symkey:0x7fdb96c1dd80
           /* TID 0x117d */
  7047 ms  0x117d PR_Close()
  7047 ms  0x117d fd:0x7fdba7c2b130
  7068 ms  0x117d PR_Close()
  7068 ms  0x117d fd:0x7fdba7c2b130
  7069 ms  0x117d PR_Close()
  7069 ms  0x117d fd:0x7fdba7bcfa00
           /* TID 0x1175 */
  7070 ms  0x1175 PK11_Encrypt()
  7070 ms  0x1175 symkey:0x7fdb96c1e700
  7073 ms  0x1175 SSL_ImportFD()
  7073 ms  0x1175 ret:0x7fdba7c2bd00
  7073 ms  0x1175 SSL_AuthCertificateHook()
  7073 ms  0x1175 fd:0x7fdba7c2bd00
  7073 ms  0x1175 ret:0x0
  7073 ms  0x1175 PR_Connect()
  7073 ms  0x1175 fd:0x7fdba7c2bd00
  7080 ms  0x1175 PR_Close()
  7080 ms  0x1175 fd:0x7fdba8984d60
           /* TID 0x116a */
  7082 ms  0x116a EC_ValidatePublicKey()
  7083 ms  0x116a ret:0x0
  7083 ms  0x116a EC_ValidatePublicKey()
  7085 ms  0x116a ret:0x0
  7085 ms  0x116a EC_ValidatePublicKey()
  7086 ms  0x116a ret:0x0
  7086 ms  0x116a EC_ValidatePublicKey()
  7088 ms  0x116a ret:0x0
  7088 ms  0x116a EC_ValidatePublicKey()
  7089 ms  0x116a ret:0x0
  7089 ms  0x116a EC_ValidatePublicKey()
  7092 ms  0x116a ret:0x0
  7092 ms  0x116a EC_ValidatePublicKey()
  7093 ms  0x116a ret:0x0
  7093 ms  0x116a EC_ValidatePublicKey()
  7095 ms  0x116a ret:0x0
  7095 ms  0x116a EC_ValidatePublicKey()
  7096 ms  0x116a ret:0x0
  7096 ms  0x116a EC_ValidatePublicKey()
  7098 ms  0x116a ret:0x0
           /* TID 0x1175 */
  7098 ms  0x1175 PK11_Encrypt()
  7098 ms  0x1175 symkey:0x7fdb96936b80
  7098 ms  0x1175 PK11_Encrypt()
  7098 ms  0x1175 symkey:0x7fdb96ca8080
  7098 ms  0x1175 PK11_Encrypt()
  7098 ms  0x1175 symkey:0x7fdb96c1dd80
  7098 ms  0x1175 PK11_Encrypt()
  7098 ms  0x1175 symkey:0x7fdb96be7f80
  7099 ms  0x1175 PK11_Encrypt()
  7099 ms  0x1175 symkey:0x7fdb96936680
  7099 ms  0x1175 PK11_Encrypt()
  7099 ms  0x1175 symkey:0x7fdb96be7800
  7099 ms  0x1175 PK11_Encrypt()
  7099 ms  0x1175 symkey:0x7fdb96c1e700
  7099 ms  0x1175 PK11_Encrypt()
  7099 ms  0x1175 symkey:0x7fdb96ca8a80
  7099 ms  0x1175 PK11_Encrypt()
  7099 ms  0x1175 symkey:0x7fdb96be7a80
  7099 ms  0x1175 PR_Close()
  7099 ms  0x1175 fd:0x7fdb96ce6910
  7099 ms  0x1175 PR_Close()
  7099 ms  0x1175 fd:0x7fdba7ccbe20
  7099 ms     | 0x1175 PK11_Encrypt()
  7099 ms     | 0x1175 symkey:0x7fdba7ce4500
  7099 ms  0x1175 PR_Close()
  7099 ms  0x1175 fd:0x7fdba7ccbc70
  7099 ms  0x1175 PR_Close()
  7099 ms  0x1175 fd:0x7fdba7ccb700
  7099 ms     | 0x1175 PK11_Encrypt()
  7099 ms     | 0x1175 symkey:0x7fdba7ce3500
  7099 ms  0x1175 PR_Close()
  7099 ms  0x1175 fd:0x7fdbade6e970
  7100 ms  0x1175 PR_Close()
  7100 ms  0x1175 fd:0x7fdbb52a9c40
  7100 ms     | 0x1175 PK11_Encrypt()
  7100 ms     | 0x1175 symkey:0x7fdba97e5c80
  7100 ms  0x1175 PR_Close()
  7100 ms  0x1175 fd:0x7fdba892a760
  7100 ms     | 0x1175 PK11_Encrypt()
  7100 ms     | 0x1175 symkey:0x7fdb96c1e700
  7100 ms  0x1175 PR_Close()
  7100 ms  0x1175 fd:0x7fdba7c2b3a0
  7100 ms     | 0x1175 PK11_Encrypt()
  7100 ms     | 0x1175 symkey:0x7fdb96c1dd80
  7100 ms  0x1175 PR_Close()
  7100 ms  0x1175 fd:0x7fdba91c6460
  7100 ms     | 0x1175 PK11_Encrypt()
  7100 ms     | 0x1175 symkey:0x7fdb96be7f80
  7101 ms  0x1175 PR_Close()
  7101 ms  0x1175 fd:0x7fdbadf6b730
  7101 ms     | 0x1175 PK11_Encrypt()
  7101 ms     | 0x1175 symkey:0x7fdb96be7a80
  7101 ms  0x1175 PR_Close()
  7101 ms  0x1175 fd:0x7fdba7bcf7f0
  7101 ms     | 0x1175 PK11_Encrypt()
  7101 ms     | 0x1175 symkey:0x7fdb96ca8a80
  7101 ms  0x1175 PR_Close()
  7101 ms  0x1175 fd:0x7fdb96ce6d60
  7101 ms     | 0x1175 PK11_Encrypt()
  7101 ms     | 0x1175 symkey:0x7fdb96936680
  7101 ms  0x1175 PR_Close()
  7101 ms  0x1175 fd:0x7fdb96ce6d00
  7101 ms     | 0x1175 PK11_Encrypt()
  7101 ms     | 0x1175 symkey:0x7fdb96936b80
  7101 ms  0x1175 PR_Close()
  7101 ms  0x1175 fd:0x7fdb96c14f70
  7102 ms     | 0x1175 PK11_Encrypt()
  7102 ms     | 0x1175 symkey:0x7fdb96be7800
  7102 ms  0x1175 PR_Close()
  7102 ms  0x1175 fd:0x7fdba892a730
  7102 ms     | 0x1175 PK11_Encrypt()
  7102 ms     | 0x1175 symkey:0x7fdb96ca8080
           /* TID 0x11c6 */
  7102 ms  0x11c6 PR_Close()
  7102 ms  0x11c6 fd:0x7fdb96be6610
  7102 ms  0x11c6 PR_Close()
  7102 ms  0x11c6 fd:0x7fdb96be6610
           /* TID 0x1175 */
  7105 ms  0x1175 SECKEY_CreateECPrivateKey()
  7105 ms  0x1175 cx:0x7fdba7cf3e28
  7105 ms     | 0x1175 EC_ValidatePublicKey()
  7105 ms     | 0x1175 ret:0x0
  7105 ms  0x1175 ret:0x7fdb9684a820::7fdb9684a820  a0 41 91 96                                      .A..
  7105 ms  0x1175 SECKEY_CreateECPrivateKey()
  7105 ms  0x1175 cx:0x7fdba7cf3e28
  7106 ms     | 0x1175 EC_ValidatePublicKey()
  7107 ms     | 0x1175 ret:0x0
  7108 ms  0x1175 ret:0x7fdb96852020::7fdb96852020  f0 26 bf 96                                      .&..
           /* TID 0x116a */
  7108 ms  0x116a PR_Close()
  7108 ms  0x116a fd:0x7fdbaae16070
  7108 ms  0x116a PR_Close()
  7108 ms  0x116a fd:0x7fdb96c14370
  7109 ms  0x116a PR_Close()
  7109 ms  0x116a fd:0x7fdb96c14970
  7109 ms  0x116a PR_Close()
  7109 ms  0x116a fd:0x7fdb96c14370
  7110 ms  0x116a PR_Close()
  7110 ms  0x116a fd:0x7fdb96c14970
  7110 ms  0x116a PR_Close()
  7110 ms  0x116a fd:0x7fdb96c14370
           /* TID 0x11df */
  7113 ms  0x11df PR_Close()
  7113 ms  0x11df fd:0x7fdb96c14370
           /* TID 0x1175 */
  7134 ms  0x1175 PK11_Derive()
  7134 ms  0x1175 basekey:0x7fdb96be8e80
  7135 ms     | 0x1175 PK11_DeriveWithTemplate()
  7135 ms  0x1175 ret:0x7fdb96936300
  7135 ms  0x1175 PK11_PubDeriveWithKDF()
  7135 ms  0x1175 seckey:0x7fdb9684a820
  7135 ms     | 0x1175 EC_ValidatePublicKey()
  7135 ms     | 0x1175 ret:0x0
  7135 ms  0x1175 ret:0x7fdb96be8e80
  7135 ms  SECKEY_ECParamsToKeySize()
  7135 ms  0x1175 ret:0xff
  7135 ms  0x1175 PK11_DeriveWithFlags()
  7135 ms  0x1175 basekey:0x7fdb96936300
  7135 ms     | 0x1175 PK11_DeriveWithTemplate()
  7135 ms  0x1175 ret:0x7fdb96936c80
  7135 ms  0x1175 PK11_Derive()
  7135 ms  0x1175 basekey:0x7fdb96be8e80
  7135 ms     | 0x1175 PK11_DeriveWithTemplate()
  7135 ms  0x1175 ret:0x7fdb96ca8900
  7135 ms  0x1175 PK11_DeriveWithFlags()
  7135 ms  0x1175 basekey:0x7fdb96ca8900
  7135 ms     | 0x1175 PK11_DeriveWithTemplate()
  7135 ms  0x1175 ret:0x7fdb96936300
  7135 ms  0x1175 PK11_DeriveWithFlags()
  7135 ms  0x1175 basekey:0x7fdb96ca8900
  7135 ms     | 0x1175 PK11_DeriveWithTemplate()
  7135 ms  0x1175 ret:0x7fdb96be8e80
  7135 ms  0x1175 PK11_DeriveWithFlags()
  7135 ms  0x1175 basekey:0x7fdb96ca8900
  7135 ms     | 0x1175 PK11_DeriveWithTemplate()
  7135 ms  0x1175 ret:0x7fdb96936c80
  7135 ms  0x1175 PK11_Derive()
  7135 ms  0x1175 basekey:0x7fdb96ca8a00
  7135 ms     | 0x1175 PK11_DeriveWithTemplate()
  7135 ms  0x1175 ret:0x7fdb96ca8080
  7135 ms  0x1175 PK11_DeriveWithFlags()
  7135 ms  0x1175 basekey:0x7fdb96be8e80
  7135 ms     | 0x1175 PK11_DeriveWithTemplate()
  7135 ms  0x1175 ret:0x7fdb96ca8900
  7135 ms  0x1175 PK11_DeriveWithFlags()
  7135 ms  0x1175 basekey:0x7fdb96be8e80
  7135 ms     | 0x1175 PK11_DeriveWithTemplate()
  7135 ms  0x1175 ret:0x7fdb96936c80
           /* TID 0x1212 */
  7136 ms  0x1212 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7136 ms  0x1212 ret:0x0
           /* TID 0x1175 */
  7137 ms  0x1175 PK11_DeriveWithFlags()
  7137 ms  0x1175 basekey:0x7fdb96be8e80
  7137 ms     | 0x1175 PK11_DeriveWithTemplate()
  7137 ms  0x1175 ret:0x7fdb96936c80
  7137 ms  0x1175 SSL_AuthCertificateComplete()
  7137 ms  0x1175 fd:0x7fdba7c2bd00
  7137 ms  0x1175 err:0x0
  7137 ms     | 0x1175 PK11_DeriveWithFlags()
  7137 ms     | 0x1175 basekey:0x7fdb96ca8080
  7137 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7137 ms     | 0x1175 ret:0x7fdb96936c80
  7137 ms     | 0x1175 PK11_DeriveWithFlags()
  7137 ms     | 0x1175 basekey:0x7fdb96ca8080
  7137 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7137 ms     | 0x1175 ret:0x7fdb96ca8a00
  7137 ms     | 0x1175 PK11_DeriveWithFlags()
  7137 ms     | 0x1175 basekey:0x7fdb96ca8080
  7137 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7137 ms     | 0x1175 ret:0x7fdb96936b00
  7137 ms     | 0x1175 PK11_DeriveWithFlags()
  7137 ms     | 0x1175 basekey:0x7fdb96936300
  7137 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7137 ms     | 0x1175 ret:0x7fdb96936780
  7137 ms     | 0x1175 PK11_DeriveWithFlags()
  7137 ms     | 0x1175 basekey:0x7fdb96936300
  7137 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7137 ms     | 0x1175 ret:0x7fdb96ca8180
  7137 ms     | 0x1175 PK11_DeriveWithFlags()
  7137 ms     | 0x1175 basekey:0x7fdb96ca8a00
  7137 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7137 ms     | 0x1175 ret:0x7fdb96ca8180
  7137 ms     | 0x1175 PK11_DeriveWithFlags()
  7137 ms     | 0x1175 basekey:0x7fdb96ca8a00
  7137 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7137 ms     | 0x1175 ret:0x7fdb96ca8800
  7137 ms     | 0x1175 PK11_DeriveWithFlags()
  7137 ms     | 0x1175 basekey:0x7fdb96936300
  7137 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7137 ms     | 0x1175 ret:0x7fdb96ca8900
  7137 ms     | 0x1175 PK11_Encrypt()
  7137 ms     | 0x1175 symkey:0x7fdb96936780
  7137 ms     | 0x1175 PK11_DeriveWithFlags()
  7137 ms     | 0x1175 basekey:0x7fdb96936c80
  7137 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7137 ms     | 0x1175 ret:0x7fdb96ca8900
  7137 ms     | 0x1175 PK11_DeriveWithFlags()
  7137 ms     | 0x1175 basekey:0x7fdb96936c80
  7137 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7137 ms     | 0x1175 ret:0x7fdb96ca8800
  7137 ms     | 0x1175 PK11_DeriveWithFlags()
  7137 ms     | 0x1175 basekey:0x7fdb96ca8080
  7137 ms     |    | 0x1175 PK11_DeriveWithTemplate()
  7137 ms     | 0x1175 ret:0x7fdb96936780
  7138 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  7138 ms     | 0x1175 privk:0x7fdb96852020::7fdb96852020  f0 26 bf 96                                      .&..
  7138 ms     | 0x1175 privk:0x7fdb96852020::7fdb96852020  e5 e5 e5 e5                                      ....
  7138 ms     | 0x1175 SECKEY_DestroyPrivateKey()
  7138 ms     | 0x1175 privk:0x7fdb9684a820::7fdb9684a820  a0 41 91 96                                      .A..
  7138 ms     | 0x1175 privk:0x7fdb9684a820::7fdb9684a820  e5 e5 e5 e5                                      ....
  7138 ms  0x1175 PK11_Encrypt()
  7138 ms  0x1175 symkey:0x7fdb96ca8900
  7138 ms  0x1175 PK11_Encrypt()
  7138 ms  0x1175 symkey:0x7fdb96ca8900
           /* TID 0x116a */
  7141 ms  0x116a PR_Close()
  7141 ms  0x116a fd:0x7fdb96c14970
  7141 ms  0x116a PR_Close()
  7141 ms  0x116a fd:0x7fdba7c2b970
  7142 ms  0x116a PR_Close()
  7142 ms  0x116a fd:0x7fdb96c14970
  7142 ms  0x116a PR_Close()
  7142 ms  0x116a fd:0x7fdba7c2b970
  7143 ms  0x116a PR_Close()
  7143 ms  0x116a fd:0x7fdbb2cc89a0
  7143 ms  0x116a PR_Close()
  7143 ms  0x116a fd:0x7fdbb2cc88b0
  7143 ms  0x116a PR_Close()
  7143 ms  0x116a fd:0x7fdbb2cc8a60
  7145 ms  0x116a PR_Close()
  7145 ms  0x116a fd:0x7fdba7c2bca0
  7146 ms  0x116a PR_Close()
  7146 ms  0x116a fd:0x7fdba7c2bca0
  7148 ms  0x116a PR_Close()
  7148 ms  0x116a fd:0x7fdb96c14970
  7148 ms  0x116a PR_Close()
  7148 ms  0x116a fd:0x7fdba7c2bdc0
  7149 ms  0x116a PR_Close()
  7149 ms  0x116a fd:0x7fdb96c14970
  7149 ms  0x116a PR_Close()
  7149 ms  0x116a fd:0x7fdba7c2bdc0
  7151 ms  0x116a PR_Close()
  7151 ms  0x116a fd:0x7fdba7c2be20
  7153 ms  0x116a PR_Close()
  7153 ms  0x116a fd:0x7fdba7c2be20
  7155 ms  0x116a PR_Close()
  7155 ms  0x116a fd:0x7fdb96c14970
  7155 ms  0x116a PR_Close()
  7155 ms  0x116a fd:0x7fdba7c74070
  7156 ms  0x116a PR_Close()
  7156 ms  0x116a fd:0x7fdb96c14970
  7156 ms  0x116a PR_Close()
  7156 ms  0x116a fd:0x7fdba7c74070
  7158 ms  0x116a PR_Close()
  7158 ms  0x116a fd:0x7fdba7c740a0
  7159 ms  0x116a PR_Close()
  7159 ms  0x116a fd:0x7fdba7c740a0
           /* TID 0x1175 */
  7162 ms  0x1175 PK11_DeriveWithFlags()
  7162 ms  0x1175 basekey:0x7fdb96936780
  7162 ms     | 0x1175 PK11_DeriveWithTemplate()
  7163 ms  0x1175 ret:0x7fdb96be8e80
  7163 ms  0x1175 PK11_DeriveWithFlags()
  7163 ms  0x1175 basekey:0x7fdb96936780
  7163 ms     | 0x1175 PK11_DeriveWithTemplate()
  7163 ms  0x1175 ret:0x7fdb96be8e80
  7163 ms  0x1175 PK11_Encrypt()
  7163 ms  0x1175 symkey:0x7fdb96ca8900
           /* TID 0x116a */
  7170 ms  0x116a PR_Close()
  7170 ms  0x116a fd:0x7fdba7c74370
  7171 ms  0x116a PR_Close()
  7171 ms  0x116a fd:0x7fdba7c74370
  7173 ms  0x116a PR_Close()
  7173 ms  0x116a fd:0x7fdba7c743a0
           /* TID 0x117d */
  7178 ms  0x117d PR_Close()
  7178 ms  0x117d fd:0x7fdb968597f0
           /* TID 0x11df */
  7186 ms  0x11df PR_Close()
  7186 ms  0x11df fd:0x7fdb96942550
           /* TID 0x116a */
  7192 ms  0x116a PR_Close()
  7192 ms  0x116a fd:0x7fdb96c14970
  7192 ms  0x116a PR_Close()
  7192 ms  0x116a fd:0x7fdb96be6850
           /* TID 0x11df */
  7192 ms  0x11df PR_Close()
  7192 ms  0x11df fd:0x7fdb96942550
  7198 ms  0x11df PR_Close()
  7198 ms  0x11df fd:0x7fdb96c14370
  7221 ms  0x11df PR_Close()
  7221 ms  0x11df fd:0x7fdb96c14040
           /* TID 0x116f */
  7232 ms  0x116f PR_Close()
  7232 ms  0x116f fd:0x7fdbb19fddf0
           /* TID 0x117d */
  7238 ms  0x117d PR_Close()
  7238 ms  0x117d fd:0x7fdb96859610
           /* TID 0x116f */
  7238 ms  0x116f PR_Close()
  7238 ms  0x116f fd:0x7fdbade43820
           /* TID 0x1175 */
  7239 ms  0x1175 PK11_Encrypt()
  7239 ms  0x1175 symkey:0x7fdb96ca8900
  7239 ms  0x1175 PR_Close()
  7239 ms  0x1175 fd:0x7fdba7c2bd00
  7239 ms     | 0x1175 PK11_Encrypt()
  7239 ms     | 0x1175 symkey:0x7fdb96ca8900
           /* TID 0x11df */
  7251 ms  0x11df PR_Close()
  7251 ms  0x11df fd:0x7fdb96859e80
           /* TID 0x116a */
  7254 ms  0x116a PR_Close()
  7254 ms  0x116a fd:0x7fdb96c14970
  7254 ms  0x116a PR_Close()
  7254 ms  0x116a fd:0x7fdb96859e80
           /* TID 0x1175 */
  7254 ms  0x1175 PR_Close()
  7254 ms  0x1175 fd:0x7fdba8ffe4c0
           /* TID 0x11c6 */
  7255 ms  0x11c6 PR_Close()
  7255 ms  0x11c6 fd:0x7fdba7c82520
  7255 ms  0x11c6 PR_Close()
  7255 ms  0x11c6 fd:0x7fdb96859610
  7255 ms  0x11c6 PR_Close()
  7255 ms  0x11c6 fd:0x7fdb96859610
  7255 ms  0x11c6 PR_Close()
  7255 ms  0x11c6 fd:0x7fdb96859610
           /* TID 0x11df */
  7255 ms  0x11df PR_Close()
  7255 ms  0x11df fd:0x7fdba7c82460
           /* TID 0x117d */
  7258 ms  0x117d PR_Close()
  7258 ms  0x117d fd:0x7fdba7c82850
  7258 ms  0x117d PR_Close()
  7258 ms  0x117d fd:0x7fdba7c82880
           /* TID 0x116f */
  7264 ms  0x116f PR_Close()
  7264 ms  0x116f fd:0x7fdbb893b6a0
           /* TID 0x116a */
  7266 ms  0x116a PR_Close()
  7266 ms  0x116a fd:0x7fdb96c14970
  7266 ms  0x116a PR_Close()
  7266 ms  0x116a fd:0x7fdb96ce6610
           /* TID 0x11df */
  7268 ms  0x11df PR_Close()
  7268 ms  0x11df fd:0x7fdb96859a90
  7271 ms  0x11df PR_Close()
  7271 ms  0x11df fd:0x7fdb96859a90
  7291 ms  0x11df PR_Close()
  7291 ms  0x11df fd:0x7fdb96942ca0
  7292 ms  0x11df PR_Close()
  7292 ms  0x11df fd:0x7fdb96942ca0
  7317 ms  0x11df PR_Close()
  7317 ms  0x11df fd:0x7fdb96be69a0
  7319 ms  0x11df PR_Close()
  7319 ms  0x11df fd:0x7fdb96be69d0
  7336 ms  0x11df PR_Close()
  7336 ms  0x11df fd:0x7fdb96ce61f0
  7343 ms  0x11df PR_Close()
  7343 ms  0x11df fd:0x7fdb96ce6cd0
  7349 ms  0x11df PR_Close()
  7349 ms  0x11df fd:0x7fdba7c2b130
  7359 ms  0x11df PR_Close()
  7359 ms  0x11df fd:0x7fdba7c2b580
  7361 ms  0x11df PR_Close()
  7361 ms  0x11df fd:0x7fdba7c2b580
           /* TID 0x116a */
  7516 ms  0x116a PR_Close()
  7516 ms  0x116a fd:0x7fdb96859c70
  7517 ms  0x116a PR_Close()
  7517 ms  0x116a fd:0x7fdb96859c70
  7523 ms  0x116a PR_Close()
  7523 ms  0x116a fd:0x7fdbcffda130
  7523 ms  0x116a PR_Close()
  7523 ms  0x116a fd:0x7fdbcffda190
Process terminated
