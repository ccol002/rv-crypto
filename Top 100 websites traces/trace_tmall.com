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
           /* TID 0x6a4b */
   139 ms  0x6a4b PR_Close()
   139 ms  0x6a4b fd:0x7f52ae5cd790
           /* TID 0x6a43 */
   259 ms  0x6a43 SSL_ImportFD()
   259 ms  0x6a43 ret:0x7f52ae4b9340
   259 ms  0x6a43 SSL_AuthCertificateHook()
   259 ms  0x6a43 fd:0x7f52ae4b9340
   259 ms  0x6a43 ret:0x0
   259 ms  0x6a43 PR_Connect()
   259 ms  0x6a43 fd:0x7f52ae4b9340
   478 ms  0x6a43 SECKEY_CreateECPrivateKey()
   478 ms  0x6a43 cx:0x7f52ae5d1988
   480 ms     | 0x6a43 EC_ValidatePublicKey()
   480 ms     | 0x6a43 ret:0x0
   480 ms  0x6a43 ret:0x7f52ae452820::7f52ae452820  40 ac 4b ae                                      @.K.
   480 ms  0x6a43 SECKEY_CreateECPrivateKey()
   480 ms  0x6a43 cx:0x7f52ae5d1988
   482 ms     | 0x6a43 EC_ValidatePublicKey()
   487 ms     | 0x6a43 ret:0x0
   487 ms  0x6a43 ret:0x7f52ae454820::7f52ae454820  20 ae 4b ae                                       .K.
           /* TID 0x6aad */
   672 ms  0x6aad PR_Close()
   672 ms  0x6aad fd:0x7f52ae4b9c70
   676 ms  0x6aad PR_Close()
   676 ms  0x6aad fd:0x7f52ae4b9c70
           /* TID 0x6a43 */
   717 ms  SECKEY_ECParamsToKeySize()
   717 ms  0x6a43 ret:0x100
   717 ms  0x6a43 SECKEY_CreateECPrivateKey()
   717 ms  0x6a43 cx:0x7f52ae5d1988
   720 ms     | 0x6a43 EC_ValidatePublicKey()
   724 ms     | 0x6a43 ret:0x0
   725 ms  0x6a43 ret:0x7f52ae45d820::7f52ae45d820  80 c8 4f ae                                      ..O.
   725 ms  0x6a43 PK11_PubDeriveWithKDF()
   725 ms  0x6a43 seckey:0x7f52ae45d820
   725 ms     | 0x6a43 EC_ValidatePublicKey()
   733 ms     | 0x6a43 ret:0x0
   737 ms  0x6a43 ret:0x7f52b03bc880
   737 ms  0x6a43 PK11_DeriveWithFlags()
   737 ms  0x6a43 basekey:0x7f52b03bc880
   737 ms     | 0x6a43 PK11_DeriveWithTemplate()
   737 ms  0x6a43 ret:0x7f52ae4f1780
   737 ms  0x6a43 PK11_Derive()
   737 ms  0x6a43 basekey:0x7f52ae4f1780
   737 ms     | 0x6a43 PK11_DeriveWithTemplate()
   737 ms  0x6a43 ret:0x7f52ae4f1880
   737 ms  0x6a43 SECKEY_DestroyPrivateKey()
   737 ms  0x6a43 privk:0x7f52ae45d820::7f52ae45d820  80 c8 4f ae                                      ..O.
   738 ms  0x6a43 privk:0x7f52ae45d820::7f52ae45d820  e5 e5 e5 e5                                      ....
   738 ms  0x6a43 PK11_Encrypt()
   738 ms  0x6a43 symkey:0x7f52ae4f1a00
   739 ms  0x6a43 PR_Connect()
   739 ms  0x6a43 fd:0x7f52ae4b9dc0
           /* TID 0x6aad */
   742 ms  0x6aad PR_Close()
   742 ms  0x6aad fd:0x7f52ae4b9d60
           /* TID 0x6a4b */
   793 ms  0x6a4b PR_Close()
   793 ms  0x6a4b fd:0x7f52ae4b9ca0
           /* TID 0x6aa6 */
   793 ms  0x6aa6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   794 ms  0x6aa6 ret:0x0
           /* TID 0x6a43 */
   794 ms  0x6a43 SSL_AuthCertificateComplete()
   794 ms  0x6a43 fd:0x7f52ae4b9340
   794 ms  0x6a43 err:0x0
   795 ms  0x6a43 PK11_Encrypt()
   795 ms  0x6a43 symkey:0x7f52ae4f1a00
   958 ms  0x6a43 SECKEY_DestroyPrivateKey()
   958 ms  0x6a43 privk:0x7f52ae454820::7f52ae454820  20 ae 4b ae                                       .K.
   958 ms  0x6a43 privk:0x7f52ae454820::7f52ae454820  e5 e5 e5 e5                                      ....
   958 ms  0x6a43 SECKEY_DestroyPrivateKey()
   958 ms  0x6a43 privk:0x7f52ae452820::7f52ae452820  40 ac 4b ae                                      @.K.
   958 ms  0x6a43 privk:0x7f52ae452820::7f52ae452820  e5 e5 e5 e5                                      ....
  1184 ms  0x6a43 SSL_ImportFD()
  1184 ms  0x6a43 ret:0x7f52ae4b9f70
  1184 ms  0x6a43 SSL_AuthCertificateHook()
  1184 ms  0x6a43 fd:0x7f52ae4b9f70
  1184 ms  0x6a43 ret:0x0
  1184 ms  0x6a43 PR_Connect()
  1184 ms  0x6a43 fd:0x7f52ae4b9f70
  1210 ms  0x6a43 SECKEY_CreateECPrivateKey()
  1210 ms  0x6a43 cx:0x7f52ae4ee428
  1212 ms     | 0x6a43 EC_ValidatePublicKey()
  1212 ms     | 0x6a43 ret:0x0
  1212 ms  0x6a43 ret:0x7f52ae453820::7f52ae453820  20 ae 4b ae                                       .K.
  1212 ms  0x6a43 SECKEY_CreateECPrivateKey()
  1212 ms  0x6a43 cx:0x7f52ae4ee428
  1214 ms     | 0x6a43 EC_ValidatePublicKey()
  1216 ms     | 0x6a43 ret:0x0
  1216 ms  0x6a43 ret:0x7f52ae459820::7f52ae459820  a0 c6 4f ae                                      ..O.
           /* TID 0x6aa6 */
  1271 ms  0x6aa6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1271 ms  0x6aa6 ret:0x0
           /* TID 0x6a43 */
  1272 ms  SECKEY_ECParamsToKeySize()
  1272 ms  0x6a43 ret:0x100
  1272 ms  0x6a43 SECKEY_CreateECPrivateKey()
  1272 ms  0x6a43 cx:0x7f52ae4ee428
  1274 ms     | 0x6a43 EC_ValidatePublicKey()
  1275 ms     | 0x6a43 ret:0x0
  1275 ms  0x6a43 ret:0x7f52ae45d020::7f52ae45d020  20 c9 4f ae                                       .O.
  1275 ms  0x6a43 PK11_PubDeriveWithKDF()
  1275 ms  0x6a43 seckey:0x7f52ae45d020
  1275 ms     | 0x6a43 EC_ValidatePublicKey()
  1277 ms     | 0x6a43 ret:0x0
  1278 ms  0x6a43 ret:0x7f52b03bc880
  1278 ms  0x6a43 PK11_DeriveWithFlags()
  1278 ms  0x6a43 basekey:0x7f52b03bc880
  1278 ms     | 0x6a43 PK11_DeriveWithTemplate()
  1278 ms  0x6a43 ret:0x7f52ae480880
  1278 ms  0x6a43 PK11_Derive()
  1278 ms  0x6a43 basekey:0x7f52ae480880
  1278 ms     | 0x6a43 PK11_DeriveWithTemplate()
  1278 ms  0x6a43 ret:0x7f52ae4f2280
  1278 ms  0x6a43 SECKEY_DestroyPrivateKey()
  1278 ms  0x6a43 privk:0x7f52ae45d020::7f52ae45d020  20 c9 4f ae                                       .O.
  1278 ms  0x6a43 privk:0x7f52ae45d020::7f52ae45d020  e5 e5 e5 e5                                      ....
  1279 ms  0x6a43 PK11_Encrypt()
  1279 ms  0x6a43 symkey:0x7f52ae4f2780
  1279 ms  0x6a43 SSL_AuthCertificateComplete()
  1279 ms  0x6a43 fd:0x7f52ae4b9f70
  1279 ms  0x6a43 err:0x0
  1279 ms  0x6a43 PK11_Encrypt()
  1279 ms  0x6a43 symkey:0x7f52ae4f2780
  1330 ms  0x6a43 SECKEY_DestroyPrivateKey()
  1330 ms  0x6a43 privk:0x7f52ae459820::7f52ae459820  a0 c6 4f ae                                      ..O.
  1330 ms  0x6a43 privk:0x7f52ae459820::7f52ae459820  e5 e5 e5 e5                                      ....
  1330 ms  0x6a43 SECKEY_DestroyPrivateKey()
  1330 ms  0x6a43 privk:0x7f52ae453820::7f52ae453820  20 ae 4b ae                                       .K.
  1330 ms  0x6a43 privk:0x7f52ae453820::7f52ae453820  e5 e5 e5 e5                                      ....
  1333 ms  0x6a43 PK11_Encrypt()
  1333 ms  0x6a43 symkey:0x7f52ae4f2780
  1363 ms  0x6a43 PK11_Encrypt()
  1363 ms  0x6a43 symkey:0x7f52ae4f2780
  1394 ms  0x6a43 PK11_Encrypt()
  1394 ms  0x6a43 symkey:0x7f52ae4f2780
  1425 ms  0x6a43 PK11_Encrypt()
  1425 ms  0x6a43 symkey:0x7f52ae4f2780
  1541 ms  0x6a43 PK11_Encrypt()
  1541 ms  0x6a43 symkey:0x7f52ae4f2780
  1575 ms  0x6a43 PK11_Encrypt()
  1575 ms  0x6a43 symkey:0x7f52ae4f2780
  1606 ms  0x6a43 PK11_Encrypt()
  1606 ms  0x6a43 symkey:0x7f52ae4f2780
           /* TID 0x6aa0 */
  1633 ms  0x6aa0 PR_Close()
  1633 ms  0x6aa0 fd:0x7f52ae4e10a0
  1633 ms  0x6aa0 PR_Close()
  1633 ms  0x6aa0 fd:0x7f52ae4e1160
  1633 ms  0x6aa0 PR_Close()
  1633 ms  0x6aa0 fd:0x7f52ae4e10a0
  1633 ms  0x6aa0 PR_Close()
  1633 ms  0x6aa0 fd:0x7f52ae4e1160
  1633 ms  0x6aa0 PR_Close()
  1633 ms  0x6aa0 fd:0x7f52ae4e10a0
  1633 ms  0x6aa0 PR_Close()
  1633 ms  0x6aa0 fd:0x7f52ae4e1160
  1634 ms  0x6aa0 PR_Close()
  1634 ms  0x6aa0 fd:0x7f52ae4e10a0
  1634 ms  0x6aa0 PR_Close()
  1634 ms  0x6aa0 fd:0x7f52ae4e1160
  1634 ms  0x6aa0 PR_Close()
  1634 ms  0x6aa0 fd:0x7f52ae4e10a0
  1634 ms  0x6aa0 PR_Close()
  1634 ms  0x6aa0 fd:0x7f52ae4e1160
  1634 ms  0x6aa0 PR_Close()
  1634 ms  0x6aa0 fd:0x7f52ae4e10a0
  1634 ms  0x6aa0 PR_Close()
  1634 ms  0x6aa0 fd:0x7f52ae4e1160
  1634 ms  0x6aa0 PR_Close()
  1634 ms  0x6aa0 fd:0x7f52ae4e10a0
  1634 ms  0x6aa0 PR_Close()
  1634 ms  0x6aa0 fd:0x7f52ae4e1160
  1634 ms  0x6aa0 PR_Close()
  1634 ms  0x6aa0 fd:0x7f52ae4e10a0
  1634 ms  0x6aa0 PR_Close()
  1634 ms  0x6aa0 fd:0x7f52ae4e1160
  1634 ms  0x6aa0 PR_Close()
  1634 ms  0x6aa0 fd:0x7f52ae4e10a0
  1634 ms  0x6aa0 PR_Close()
  1634 ms  0x6aa0 fd:0x7f52ae4e1160
  1634 ms  0x6aa0 PR_Close()
  1634 ms  0x6aa0 fd:0x7f52ae4e10a0
  1634 ms  0x6aa0 PR_Close()
  1634 ms  0x6aa0 fd:0x7f52ae4e1160
  1635 ms  0x6aa0 PR_Close()
  1635 ms  0x6aa0 fd:0x7f52ae4e10a0
  1635 ms  0x6aa0 PR_Close()
  1635 ms  0x6aa0 fd:0x7f52ae4e1160
  1635 ms  0x6aa0 PR_Close()
  1635 ms  0x6aa0 fd:0x7f52ae4e10a0
  1635 ms  0x6aa0 PR_Close()
  1635 ms  0x6aa0 fd:0x7f52ae4e1160
  1635 ms  0x6aa0 PR_Close()
  1635 ms  0x6aa0 fd:0x7f52ae4e10a0
  1635 ms  0x6aa0 PR_Close()
  1635 ms  0x6aa0 fd:0x7f52ae4e1160
  1635 ms  0x6aa0 PR_Close()
  1635 ms  0x6aa0 fd:0x7f52ae4e10a0
  1635 ms  0x6aa0 PR_Close()
  1635 ms  0x6aa0 fd:0x7f52ae4e1160
  1638 ms  0x6aa0 PR_Close()
  1638 ms  0x6aa0 fd:0x7f52ae4e10a0
  1638 ms  0x6aa0 PR_Close()
  1638 ms  0x6aa0 fd:0x7f52ae4e1070
  1640 ms  0x6aa0 PR_Close()
  1640 ms  0x6aa0 fd:0x7f52ae4e1070
  1641 ms  0x6aa0 PR_Close()
  1641 ms  0x6aa0 fd:0x7f52ae4e10a0
  1643 ms  0x6aa0 PR_Close()
  1643 ms  0x6aa0 fd:0x7f52ae4e10a0
  1643 ms  0x6aa0 PR_Close()
  1643 ms  0x6aa0 fd:0x7f52ae4e10a0
  1645 ms  0x6aa0 PR_Close()
  1645 ms  0x6aa0 fd:0x7f52ae4e10a0
  1645 ms  0x6aa0 PR_Close()
  1645 ms  0x6aa0 fd:0x7f52ae4e10a0
  1693 ms  0x6aa0 PR_Close()
  1693 ms  0x6aa0 fd:0x7f52ae4e10a0
  1694 ms  0x6aa0 PR_Close()
  1694 ms  0x6aa0 fd:0x7f52ae4e10a0
  1701 ms  0x6aa0 PR_Close()
  1701 ms  0x6aa0 fd:0x7f52ae4e10a0
  1701 ms  0x6aa0 PR_Close()
  1701 ms  0x6aa0 fd:0x7f52ae4e10a0
  1707 ms  0x6aa0 PR_Close()
  1707 ms  0x6aa0 fd:0x7f52ae4e10a0
  1707 ms  0x6aa0 PR_Close()
  1707 ms  0x6aa0 fd:0x7f52ae4e10a0
  1709 ms  0x6aa0 PR_Close()
  1709 ms  0x6aa0 fd:0x7f52ae4e10a0
  1709 ms  0x6aa0 PR_Close()
  1709 ms  0x6aa0 fd:0x7f52ae4e10a0
           /* TID 0x6a9d */
  1709 ms  0x6a9d PR_Close()
  1709 ms  0x6a9d fd:0x7f52ae4e10a0
  1709 ms  0x6a9d PR_Close()
  1709 ms  0x6a9d fd:0x7f52ae4e10a0
  1709 ms  0x6a9d PR_Close()
  1709 ms  0x6a9d fd:0x7f52ae4e10a0
  1710 ms  0x6a9d PR_Close()
  1710 ms  0x6a9d fd:0x7f52ae4e10a0
  1710 ms  0x6a9d PR_Close()
  1710 ms  0x6a9d fd:0x7f52ae4e10a0
  1710 ms  0x6a9d PR_Close()
  1710 ms  0x6a9d fd:0x7f52ae4e10a0
  1710 ms  0x6a9d PR_Close()
  1710 ms  0x6a9d fd:0x7f52ae4e10a0
  1710 ms  0x6a9d PR_Close()
  1710 ms  0x6a9d fd:0x7f52ae4e10a0
  1710 ms  0x6a9d PR_Close()
  1710 ms  0x6a9d fd:0x7f52ae4e10a0
  1710 ms  0x6a9d PR_Close()
  1710 ms  0x6a9d fd:0x7f52ae4e10a0
  1710 ms  0x6a9d PR_Close()
  1710 ms  0x6a9d fd:0x7f52ae4e10a0
  1710 ms  0x6a9d PR_Close()
  1710 ms  0x6a9d fd:0x7f52ae4e10a0
  1710 ms  0x6a9d PR_Close()
  1710 ms  0x6a9d fd:0x7f52ae4e10a0
  1710 ms  0x6a9d PR_Close()
  1710 ms  0x6a9d fd:0x7f52ae4e10a0
  1710 ms  0x6a9d PR_Close()
  1710 ms  0x6a9d fd:0x7f52ae4e10a0
           /* TID 0x6aad */
  2213 ms  0x6aad PR_Close()
  2213 ms  0x6aad fd:0x7f52ae4e1460
  2215 ms  0x6aad PR_Close()
  2215 ms  0x6aad fd:0x7f52ae4e1460
  2798 ms  0x6aad PR_Close()
  2798 ms  0x6aad fd:0x7f52ae4e1460
           /* TID 0x6a4b */
  4155 ms  0x6a4b PR_Close()
  4155 ms  0x6a4b fd:0x7f52ae4e1460
  4156 ms  0x6a4b PR_Close()
  4156 ms  0x6a4b fd:0x7f52ae4e15b0
  4156 ms  0x6a4b PR_Close()
  4156 ms  0x6a4b fd:0x7f52ae4e1610
           /* TID 0x6a43 */
  4645 ms  0x6a43 SSL_ImportFD()
  4646 ms  0x6a43 ret:0x7f529d9e8790
  4646 ms  0x6a43 SSL_AuthCertificateHook()
  4646 ms  0x6a43 fd:0x7f529d9e8790
  4646 ms  0x6a43 ret:0x0
  4646 ms  0x6a43 PR_Connect()
  4646 ms  0x6a43 fd:0x7f529d9e8790
  4700 ms  0x6a43 SECKEY_CreateECPrivateKey()
  4700 ms  0x6a43 cx:0x7f52ae4ee768
  4702 ms     | 0x6a43 EC_ValidatePublicKey()
  4702 ms     | 0x6a43 ret:0x0
  4702 ms  0x6a43 ret:0x7f529d803020::7f529d803020  80 78 c9 af                                      .x..
  4703 ms  0x6a43 SECKEY_CreateECPrivateKey()
  4703 ms  0x6a43 cx:0x7f52ae4ee768
  4705 ms     | 0x6a43 EC_ValidatePublicKey()
  4711 ms     | 0x6a43 ret:0x0
  4712 ms  0x6a43 ret:0x7f529d805020::7f529d805020  00 76 c9 af                                      .v..
  5932 ms  SECKEY_ECParamsToKeySize()
  5932 ms  0x6a43 ret:0x100
  5932 ms  SECKEY_ECParamsToBasePointOrderLen()
  5932 ms  0x6a43 ret:0x100
  5932 ms  SECKEY_ECParamsToBasePointOrderLen()
  5932 ms  0x6a43 ret:0x100
  5932 ms  0x6a43 EC_ValidatePublicKey()
  5934 ms  0x6a43 ret:0x0
  5936 ms  SECKEY_ECParamsToKeySize()
  5936 ms  0x6a43 ret:0xff
  5936 ms  0x6a43 SECKEY_CreateECPrivateKey()
  5936 ms  0x6a43 cx:0x7f52ae4ee768
  5936 ms     | 0x6a43 EC_ValidatePublicKey()
  5936 ms     | 0x6a43 ret:0x0
  5936 ms  0x6a43 ret:0x7f529d810820::7f529d810820  b0 0f 46 b4                                      ..F.
  5937 ms  0x6a43 PK11_PubDeriveWithKDF()
  5937 ms  0x6a43 seckey:0x7f529d810820
  5937 ms     | 0x6a43 EC_ValidatePublicKey()
  5937 ms     | 0x6a43 ret:0x0
  5937 ms  0x6a43 ret:0x7f52b03bc880
  5937 ms  0x6a43 PK11_DeriveWithFlags()
  5937 ms  0x6a43 basekey:0x7f52b03bc880
  5937 ms     | 0x6a43 PK11_DeriveWithTemplate()
  5937 ms  0x6a43 ret:0x7f529d9ecd00
  5937 ms  0x6a43 PK11_Derive()
  5937 ms  0x6a43 basekey:0x7f529d9ecd00
  5937 ms     | 0x6a43 PK11_DeriveWithTemplate()
  5937 ms  0x6a43 ret:0x7f529d9ecd80
  5937 ms  0x6a43 SECKEY_DestroyPrivateKey()
  5937 ms  0x6a43 privk:0x7f529d810820::7f529d810820  b0 0f 46 b4                                      ..F.
  5937 ms  0x6a43 privk:0x7f529d810820::7f529d810820  e5 e5 e5 e5                                      ....
  5937 ms  0x6a43 PK11_Encrypt()
  5937 ms  0x6a43 symkey:0x7f529d9ed000
  5968 ms  0x6a43 PR_Connect()
  5968 ms  0x6a43 fd:0x7f529d9e8cd0
           /* TID 0x6aa6 */
  6022 ms  0x6aa6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x6a4b */
  6023 ms  0x6a4b PR_Close()
  6023 ms  0x6a4b fd:0x7f529d9e8be0
           /* TID 0x6aa6 */
  6024 ms  0x6aa6 ret:0x0
  6024 ms  0x6aa6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6024 ms  0x6aa6 ret:0x0
           /* TID 0x6a43 */
  6038 ms  0x6a43 SSL_AuthCertificateComplete()
  6038 ms  0x6a43 fd:0x7f529d9e8790
  6038 ms  0x6a43 err:0x0
  6038 ms  0x6a43 PK11_Encrypt()
  6038 ms  0x6a43 symkey:0x7f529d9ed000
  6039 ms  0x6a43 PK11_Encrypt()
  6039 ms  0x6a43 symkey:0x7f529d9ed000
  6164 ms  0x6a43 SECKEY_DestroyPrivateKey()
  6164 ms  0x6a43 privk:0x7f529d805020::7f529d805020  00 76 c9 af                                      .v..
  6165 ms  0x6a43 privk:0x7f529d805020::7f529d805020  e5 e5 e5 e5                                      ....
  6165 ms  0x6a43 SECKEY_DestroyPrivateKey()
  6165 ms  0x6a43 privk:0x7f529d803020::7f529d803020  80 78 c9 af                                      .x..
  6165 ms  0x6a43 privk:0x7f529d803020::7f529d803020  e5 e5 e5 e5                                      ....
  6166 ms  0x6a43 PK11_Encrypt()
  6166 ms  0x6a43 symkey:0x7f529d9ed000
           /* TID 0x6a5a */
  6206 ms  0x6a5a PR_Close()
  6206 ms  0x6a5a fd:0x7f529d99d0d0
           /* TID 0x6a4b */
  6316 ms  0x6a4b PR_Close()
  6316 ms  0x6a4b fd:0x7f529d7746a0
           /* TID 0x6a43 */
  6580 ms  0x6a43 SSL_ImportFD()
  6580 ms  0x6a43 ret:0x7f52ae47e430
  6580 ms  0x6a43 SSL_AuthCertificateHook()
  6580 ms  0x6a43 fd:0x7f52ae47e430
  6580 ms  0x6a43 ret:0x0
  6580 ms  0x6a43 PR_Connect()
  6580 ms  0x6a43 fd:0x7f52ae47e430
  6581 ms  0x6a43 SSL_ImportFD()
  6581 ms  0x6a43 ret:0x7f52ae47e460
  6581 ms  0x6a43 SSL_AuthCertificateHook()
  6581 ms  0x6a43 fd:0x7f52ae47e460
  6581 ms  0x6a43 ret:0x0
  6581 ms  0x6a43 PR_Connect()
  6581 ms  0x6a43 fd:0x7f52ae47e460
  6581 ms  0x6a43 SSL_ImportFD()
  6581 ms  0x6a43 ret:0x7f529d9e89a0
  6581 ms  0x6a43 SSL_AuthCertificateHook()
  6581 ms  0x6a43 fd:0x7f529d9e89a0
  6581 ms  0x6a43 ret:0x0
  6581 ms  0x6a43 PR_Connect()
  6581 ms  0x6a43 fd:0x7f529d9e89a0
  6582 ms  0x6a43 SSL_ImportFD()
  6582 ms  0x6a43 ret:0x7f529d75dfa0
  6582 ms  0x6a43 SSL_AuthCertificateHook()
  6582 ms  0x6a43 fd:0x7f529d75dfa0
  6582 ms  0x6a43 ret:0x0
  6582 ms  0x6a43 PR_Connect()
  6582 ms  0x6a43 fd:0x7f529d75dfa0
  6583 ms  0x6a43 SSL_ImportFD()
  6583 ms  0x6a43 ret:0x7f52ae47e280
  6583 ms  0x6a43 SSL_AuthCertificateHook()
  6583 ms  0x6a43 fd:0x7f52ae47e280
  6583 ms  0x6a43 ret:0x0
  6583 ms  0x6a43 PR_Connect()
  6583 ms  0x6a43 fd:0x7f52ae47e280
  6648 ms  0x6a43 SECKEY_CreateECPrivateKey()
  6648 ms  0x6a43 cx:0x7f52ae4ef2c8
  6650 ms     | 0x6a43 EC_ValidatePublicKey()
  6650 ms     | 0x6a43 ret:0x0
  6650 ms  0x6a43 ret:0x7f52ae447820::7f52ae447820  c0 89 85 9d                                      ....
  6651 ms  0x6a43 SECKEY_CreateECPrivateKey()
  6651 ms  0x6a43 cx:0x7f52ae4ef2c8
  6655 ms     | 0x6a43 EC_ValidatePublicKey()
  6660 ms     | 0x6a43 ret:0x0
  6660 ms  0x6a43 ret:0x7f52ae44b820::7f52ae44b820  a0 8b 85 9d                                      ....
  6663 ms  0x6a43 SECKEY_CreateECPrivateKey()
  6663 ms  0x6a43 cx:0x7f52ae4ef948
  6664 ms     | 0x6a43 EC_ValidatePublicKey()
  6664 ms     | 0x6a43 ret:0x0
  6664 ms  0x6a43 ret:0x7f52ae452820::7f52ae452820  e0 8c 85 9d                                      ....
  6664 ms  0x6a43 SECKEY_CreateECPrivateKey()
  6664 ms  0x6a43 cx:0x7f52ae4ef948
  6666 ms     | 0x6a43 EC_ValidatePublicKey()
  6672 ms     | 0x6a43 ret:0x0
  6672 ms  0x6a43 ret:0x7f52ae454820::7f52ae454820  20 89 85 9d                                       ...
  6673 ms  0x6a43 SECKEY_CreateECPrivateKey()
  6673 ms  0x6a43 cx:0x7f52ae4ef7a8
  6674 ms     | 0x6a43 EC_ValidatePublicKey()
  6674 ms     | 0x6a43 ret:0x0
  6674 ms  0x6a43 ret:0x7f52ae461820::7f52ae461820  20 e4 8c 9d                                       ...
  6675 ms  0x6a43 SECKEY_CreateECPrivateKey()
  6675 ms  0x6a43 cx:0x7f52ae4ef7a8
  6676 ms     | 0x6a43 EC_ValidatePublicKey()
  6679 ms     | 0x6a43 ret:0x0
  6679 ms  0x6a43 ret:0x7f52ae548820::7f52ae548820  00 51 8e 9d                                      .Q..
  6680 ms  0x6a43 SECKEY_CreateECPrivateKey()
  6680 ms  0x6a43 cx:0x7f52ae4ef608
  6681 ms     | 0x6a43 EC_ValidatePublicKey()
  6681 ms     | 0x6a43 ret:0x0
  6681 ms  0x6a43 ret:0x7f52ae54e020::7f52ae54e020  40 52 8e 9d                                      @R..
  6681 ms  0x6a43 SECKEY_CreateECPrivateKey()
  6681 ms  0x6a43 cx:0x7f52ae4ef608
  6682 ms     | 0x6a43 EC_ValidatePublicKey()
  6684 ms     | 0x6a43 ret:0x0
  6684 ms  0x6a43 ret:0x7f52ae73a820::7f52ae73a820  20 54 8e 9d                                       T..
  6686 ms  0x6a43 SECKEY_CreateECPrivateKey()
  6686 ms  0x6a43 cx:0x7f52ae4ef468
  6687 ms     | 0x6a43 EC_ValidatePublicKey()
  6687 ms     | 0x6a43 ret:0x0
  6687 ms  0x6a43 ret:0x7f52ae741820::7f52ae741820  60 55 8e 9d                                      `U..
  6687 ms  0x6a43 SECKEY_CreateECPrivateKey()
  6687 ms  0x6a43 cx:0x7f52ae4ef468
  6688 ms     | 0x6a43 EC_ValidatePublicKey()
  6690 ms     | 0x6a43 ret:0x0
  6690 ms  0x6a43 ret:0x7f52ae745820::7f52ae745820  20 f4 8f 9d                                       ...
  6734 ms  0x6a43 PK11_Derive()
  6734 ms  0x6a43 basekey:0x7f52b03bc880
  6734 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6734 ms  0x6a43 ret:0x7f529d938100
  6734 ms  0x6a43 PK11_PubDeriveWithKDF()
  6734 ms  0x6a43 seckey:0x7f52ae447820
  6734 ms     | 0x6a43 EC_ValidatePublicKey()
  6734 ms     | 0x6a43 ret:0x0
  6735 ms  0x6a43 ret:0x7f52b03bc880
  6735 ms  SECKEY_ECParamsToKeySize()
  6735 ms  0x6a43 ret:0xff
  6735 ms  0x6a43 PK11_DeriveWithFlags()
  6735 ms  0x6a43 basekey:0x7f529d938100
  6735 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6735 ms  0x6a43 ret:0x7f529d938180
  6735 ms  0x6a43 PK11_Derive()
  6735 ms  0x6a43 basekey:0x7f52b03bc880
  6735 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6735 ms  0x6a43 ret:0x7f529d938200
  6735 ms  0x6a43 PK11_DeriveWithFlags()
  6735 ms  0x6a43 basekey:0x7f529d938200
  6735 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6735 ms  0x6a43 ret:0x7f529d938100
  6735 ms  0x6a43 PK11_DeriveWithFlags()
  6735 ms  0x6a43 basekey:0x7f529d938200
  6735 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6735 ms  0x6a43 ret:0x7f52b03bc880
  6735 ms  0x6a43 PK11_DeriveWithFlags()
  6735 ms  0x6a43 basekey:0x7f529d938200
  6735 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6735 ms  0x6a43 ret:0x7f529d938180
  6735 ms  0x6a43 PK11_Derive()
  6735 ms  0x6a43 basekey:0x7f529d938280
  6735 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6735 ms  0x6a43 ret:0x7f529d938380
  6735 ms  0x6a43 PK11_DeriveWithFlags()
  6735 ms  0x6a43 basekey:0x7f52b03bc880
  6735 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6735 ms  0x6a43 ret:0x7f529d938200
  6735 ms  0x6a43 PK11_DeriveWithFlags()
  6735 ms  0x6a43 basekey:0x7f52b03bc880
  6735 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6735 ms  0x6a43 ret:0x7f529d938180
  6736 ms  0x6a43 PK11_DeriveWithFlags()
  6736 ms  0x6a43 basekey:0x7f52b03bc880
  6736 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6736 ms  0x6a43 ret:0x7f529d938180
  6743 ms  0x6a43 PK11_Derive()
  6743 ms  0x6a43 basekey:0x7f529d938180
  6743 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6743 ms  0x6a43 ret:0x7f529d938280
  6743 ms  0x6a43 PK11_PubDeriveWithKDF()
  6743 ms  0x6a43 seckey:0x7f52ae452820
  6743 ms     | 0x6a43 EC_ValidatePublicKey()
  6743 ms     | 0x6a43 ret:0x0
  6745 ms  0x6a43 ret:0x7f529d938180
  6745 ms  SECKEY_ECParamsToKeySize()
  6745 ms  0x6a43 ret:0xff
  6745 ms  0x6a43 PK11_DeriveWithFlags()
  6745 ms  0x6a43 basekey:0x7f529d938280
  6745 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6745 ms  0x6a43 ret:0x7f529d939600
  6745 ms  0x6a43 PK11_Derive()
  6745 ms  0x6a43 basekey:0x7f529d938180
  6745 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6745 ms  0x6a43 ret:0x7f529d939680
  6745 ms  0x6a43 PK11_DeriveWithFlags()
  6745 ms  0x6a43 basekey:0x7f529d939680
  6745 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6745 ms  0x6a43 ret:0x7f529d938280
  6745 ms  0x6a43 PK11_DeriveWithFlags()
  6745 ms  0x6a43 basekey:0x7f529d939680
  6745 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6745 ms  0x6a43 ret:0x7f529d938180
  6745 ms  0x6a43 PK11_DeriveWithFlags()
  6745 ms  0x6a43 basekey:0x7f529d939680
  6745 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6745 ms  0x6a43 ret:0x7f529d939600
  6745 ms  0x6a43 PK11_Derive()
  6745 ms  0x6a43 basekey:0x7f529d939700
  6746 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6746 ms  0x6a43 ret:0x7f529d939780
  6746 ms  0x6a43 PK11_DeriveWithFlags()
  6746 ms  0x6a43 basekey:0x7f529d938180
  6746 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6746 ms  0x6a43 ret:0x7f529d939680
  6746 ms  0x6a43 PK11_DeriveWithFlags()
  6746 ms  0x6a43 basekey:0x7f529d938180
  6746 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6746 ms  0x6a43 ret:0x7f529d939600
  6746 ms  0x6a43 PK11_DeriveWithFlags()
  6746 ms  0x6a43 basekey:0x7f529d938180
  6747 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6747 ms  0x6a43 ret:0x7f529d939600
  6749 ms  0x6a43 PK11_Derive()
  6749 ms  0x6a43 basekey:0x7f529d939600
  6749 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6749 ms  0x6a43 ret:0x7f529d939700
  6749 ms  0x6a43 PK11_PubDeriveWithKDF()
  6749 ms  0x6a43 seckey:0x7f52ae461820
  6749 ms     | 0x6a43 EC_ValidatePublicKey()
  6749 ms     | 0x6a43 ret:0x0
  6750 ms  0x6a43 ret:0x7f529d939600
  6750 ms  SECKEY_ECParamsToKeySize()
  6750 ms  0x6a43 ret:0xff
  6750 ms  0x6a43 PK11_DeriveWithFlags()
  6750 ms  0x6a43 basekey:0x7f529d939700
  6750 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6750 ms  0x6a43 ret:0x7f529d939900
  6750 ms  0x6a43 PK11_Derive()
  6750 ms  0x6a43 basekey:0x7f529d939600
  6750 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6750 ms  0x6a43 ret:0x7f529d939980
  6750 ms  0x6a43 PK11_DeriveWithFlags()
  6750 ms  0x6a43 basekey:0x7f529d939980
  6750 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6751 ms  0x6a43 ret:0x7f529d939700
  6751 ms  0x6a43 PK11_DeriveWithFlags()
  6751 ms  0x6a43 basekey:0x7f529d939980
  6751 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6751 ms  0x6a43 ret:0x7f529d939600
  6751 ms  0x6a43 PK11_DeriveWithFlags()
  6751 ms  0x6a43 basekey:0x7f529d939980
  6751 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6751 ms  0x6a43 ret:0x7f529d939900
  6751 ms  0x6a43 PK11_Derive()
  6751 ms  0x6a43 basekey:0x7f529d939a00
  6751 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6751 ms  0x6a43 ret:0x7f529d939a80
  6751 ms  0x6a43 PK11_DeriveWithFlags()
  6751 ms  0x6a43 basekey:0x7f529d939600
  6751 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6751 ms  0x6a43 ret:0x7f529d939980
  6751 ms  0x6a43 PK11_DeriveWithFlags()
  6751 ms  0x6a43 basekey:0x7f529d939600
  6751 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6751 ms  0x6a43 ret:0x7f529d939900
  6753 ms  0x6a43 PK11_DeriveWithFlags()
  6753 ms  0x6a43 basekey:0x7f529d939600
  6753 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6753 ms  0x6a43 ret:0x7f529d939900
  6754 ms  0x6a43 PR_Connect()
  6754 ms  0x6a43 fd:0x7f52ae4e1370
  6760 ms  0x6a43 PK11_Derive()
  6760 ms  0x6a43 basekey:0x7f529d939900
  6760 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6760 ms  0x6a43 ret:0x7f529d939a00
  6760 ms  0x6a43 PK11_PubDeriveWithKDF()
  6760 ms  0x6a43 seckey:0x7f52ae54e020
  6760 ms     | 0x6a43 EC_ValidatePublicKey()
  6760 ms     | 0x6a43 ret:0x0
  6761 ms  0x6a43 ret:0x7f529d939900
  6761 ms  SECKEY_ECParamsToKeySize()
  6761 ms  0x6a43 ret:0xff
  6761 ms  0x6a43 PK11_DeriveWithFlags()
  6761 ms  0x6a43 basekey:0x7f529d939a00
  6761 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6761 ms  0x6a43 ret:0x7f529d939d00
  6761 ms  0x6a43 PK11_Derive()
  6761 ms  0x6a43 basekey:0x7f529d939900
  6761 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6761 ms  0x6a43 ret:0x7f529d939d80
  6761 ms  0x6a43 PK11_DeriveWithFlags()
  6761 ms  0x6a43 basekey:0x7f529d939d80
  6761 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6761 ms  0x6a43 ret:0x7f529d939a00
  6761 ms  0x6a43 PK11_DeriveWithFlags()
  6761 ms  0x6a43 basekey:0x7f529d939d80
  6761 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6761 ms  0x6a43 ret:0x7f529d939900
  6761 ms  0x6a43 PK11_DeriveWithFlags()
  6761 ms  0x6a43 basekey:0x7f529d939d80
  6761 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6761 ms  0x6a43 ret:0x7f529d939d00
  6761 ms  0x6a43 PK11_Derive()
  6761 ms  0x6a43 basekey:0x7f529d939e00
  6761 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6761 ms  0x6a43 ret:0x7f529d939e80
  6761 ms  0x6a43 PK11_DeriveWithFlags()
  6761 ms  0x6a43 basekey:0x7f529d939900
  6761 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6761 ms  0x6a43 ret:0x7f529d939d80
  6761 ms  0x6a43 PK11_DeriveWithFlags()
  6761 ms  0x6a43 basekey:0x7f529d939900
  6761 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6761 ms  0x6a43 ret:0x7f529d939d00
  6763 ms  0x6a43 PK11_DeriveWithFlags()
  6763 ms  0x6a43 basekey:0x7f529d939900
  6763 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6763 ms  0x6a43 ret:0x7f529d939d00
  6766 ms  0x6a43 PK11_Derive()
  6766 ms  0x6a43 basekey:0x7f529d939d00
  6766 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6766 ms  0x6a43 ret:0x7f529d939e00
  6766 ms  0x6a43 PK11_PubDeriveWithKDF()
  6766 ms  0x6a43 seckey:0x7f52ae741820
  6766 ms     | 0x6a43 EC_ValidatePublicKey()
  6766 ms     | 0x6a43 ret:0x0
  6767 ms  0x6a43 ret:0x7f529d939d00
  6767 ms  SECKEY_ECParamsToKeySize()
  6767 ms  0x6a43 ret:0xff
  6767 ms  0x6a43 PK11_DeriveWithFlags()
  6767 ms  0x6a43 basekey:0x7f529d939e00
  6767 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6767 ms  0x6a43 ret:0x7f529d9ed380
  6767 ms  0x6a43 PK11_Derive()
  6767 ms  0x6a43 basekey:0x7f529d939d00
  6767 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6767 ms  0x6a43 ret:0x7f529d9edb00
  6767 ms  0x6a43 PK11_DeriveWithFlags()
  6767 ms  0x6a43 basekey:0x7f529d9edb00
  6767 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6767 ms  0x6a43 ret:0x7f529d939e00
  6767 ms  0x6a43 PK11_DeriveWithFlags()
  6767 ms  0x6a43 basekey:0x7f529d9edb00
  6767 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6767 ms  0x6a43 ret:0x7f529d939d00
  6767 ms  0x6a43 PK11_DeriveWithFlags()
  6767 ms  0x6a43 basekey:0x7f529d9edb00
  6767 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6767 ms  0x6a43 ret:0x7f529d9ed380
  6767 ms  0x6a43 PK11_Derive()
  6767 ms  0x6a43 basekey:0x7f529d9edb80
  6767 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6767 ms  0x6a43 ret:0x7f529d9edc80
  6767 ms  0x6a43 PK11_DeriveWithFlags()
  6767 ms  0x6a43 basekey:0x7f529d939d00
  6767 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6767 ms  0x6a43 ret:0x7f529d9edb00
  6767 ms  0x6a43 PK11_DeriveWithFlags()
  6767 ms  0x6a43 basekey:0x7f529d939d00
  6767 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6767 ms  0x6a43 ret:0x7f529d9ed380
  6770 ms  0x6a43 PK11_DeriveWithFlags()
  6770 ms  0x6a43 basekey:0x7f529d939d00
  6770 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6770 ms  0x6a43 ret:0x7f529d9ed380
           /* TID 0x6a4b */
  6771 ms  0x6a4b PR_Close()
  6771 ms  0x6a4b fd:0x7f52ae5cd880
           /* TID 0x6aa6 */
  6771 ms  0x6aa6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6772 ms  0x6aa6 ret:0x0
  6772 ms  0x6aa6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6772 ms  0x6aa6 ret:0x0
           /* TID 0x6a43 */
  6772 ms  0x6a43 SSL_AuthCertificateComplete()
  6772 ms  0x6a43 fd:0x7f52ae47e430
  6772 ms  0x6a43 err:0x0
  6772 ms     | 0x6a43 PK11_DeriveWithFlags()
  6772 ms     | 0x6a43 basekey:0x7f529d938380
  6772 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6772 ms     | 0x6a43 ret:0x7f529d9ed380
  6772 ms     | 0x6a43 PK11_DeriveWithFlags()
  6772 ms     | 0x6a43 basekey:0x7f529d938380
  6772 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6772 ms     | 0x6a43 ret:0x7f529d9edb80
  6772 ms     | 0x6a43 PK11_DeriveWithFlags()
  6772 ms     | 0x6a43 basekey:0x7f529d938380
  6772 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6772 ms     | 0x6a43 ret:0x7f52ae47f180
  6772 ms     | 0x6a43 PK11_DeriveWithFlags()
  6772 ms     | 0x6a43 basekey:0x7f529d938100
  6772 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6772 ms     | 0x6a43 ret:0x7f52ae47f200
  6772 ms     | 0x6a43 PK11_DeriveWithFlags()
  6772 ms     | 0x6a43 basekey:0x7f529d938100
  6772 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6772 ms     | 0x6a43 ret:0x7f52ae47f280
  6772 ms     | 0x6a43 PK11_DeriveWithFlags()
  6772 ms     | 0x6a43 basekey:0x7f529d9edb80
  6772 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6772 ms     | 0x6a43 ret:0x7f52ae47f280
  6772 ms     | 0x6a43 PK11_DeriveWithFlags()
  6772 ms     | 0x6a43 basekey:0x7f529d9edb80
  6772 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6772 ms     | 0x6a43 ret:0x7f52ae47f300
  6772 ms     | 0x6a43 PK11_DeriveWithFlags()
  6772 ms     | 0x6a43 basekey:0x7f529d938100
  6772 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6772 ms     | 0x6a43 ret:0x7f529d938200
  6772 ms     | 0x6a43 PK11_Encrypt()
  6772 ms     | 0x6a43 symkey:0x7f52ae47f200
  6773 ms     | 0x6a43 PK11_DeriveWithFlags()
  6773 ms     | 0x6a43 basekey:0x7f529d9ed380
  6773 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6773 ms     | 0x6a43 ret:0x7f529d938200
  6773 ms     | 0x6a43 PK11_DeriveWithFlags()
  6773 ms     | 0x6a43 basekey:0x7f529d9ed380
  6773 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6773 ms     | 0x6a43 ret:0x7f52ae47f300
  6773 ms     | 0x6a43 PK11_DeriveWithFlags()
  6773 ms     | 0x6a43 basekey:0x7f529d938380
  6773 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6773 ms     | 0x6a43 ret:0x7f52ae47f200
  6773 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  6773 ms     | 0x6a43 privk:0x7f52ae44b820::7f52ae44b820  a0 8b 85 9d                                      ....
  6773 ms     | 0x6a43 privk:0x7f52ae44b820::7f52ae44b820  e5 e5 e5 e5                                      ....
  6773 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  6773 ms     | 0x6a43 privk:0x7f52ae447820::7f52ae447820  c0 89 85 9d                                      ....
  6773 ms     | 0x6a43 privk:0x7f52ae447820::7f52ae447820  e5 e5 e5 e5                                      ....
  6774 ms  0x6a43 PK11_Encrypt()
  6774 ms  0x6a43 symkey:0x7f529d938200
  6774 ms  0x6a43 PK11_Encrypt()
  6774 ms  0x6a43 symkey:0x7f529d938200
  6774 ms  0x6a43 PK11_Encrypt()
  6774 ms  0x6a43 symkey:0x7f529d938200
  6776 ms  0x6a43 PR_Connect()
  6776 ms  0x6a43 fd:0x7f52ae5cdc40
  6777 ms  0x6a43 PR_Connect()
  6777 ms  0x6a43 fd:0x7f52ae5cdd60
           /* TID 0x6a4b */
  6795 ms  0x6a4b PR_Close()
  6795 ms  0x6a4b fd:0x7f529d99dd90
           /* TID 0x6ade */
  6795 ms  0x6ade _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6796 ms  0x6ade ret:0x0
  6796 ms  0x6ade _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6796 ms  0x6ade ret:0x0
           /* TID 0x6a43 */
  6796 ms  0x6a43 SSL_AuthCertificateComplete()
  6796 ms  0x6a43 fd:0x7f52ae47e280
  6796 ms  0x6a43 err:0x0
  6796 ms     | 0x6a43 PK11_DeriveWithFlags()
  6796 ms     | 0x6a43 basekey:0x7f529d939780
  6796 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6796 ms     | 0x6a43 ret:0x7f52b03bc880
  6796 ms     | 0x6a43 PK11_DeriveWithFlags()
  6796 ms     | 0x6a43 basekey:0x7f529d939780
  6796 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6796 ms     | 0x6a43 ret:0x7f529d938100
  6796 ms     | 0x6a43 PK11_DeriveWithFlags()
  6796 ms     | 0x6a43 basekey:0x7f529d939780
  6796 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6796 ms     | 0x6a43 ret:0x7f529d938380
  6796 ms     | 0x6a43 PK11_DeriveWithFlags()
  6796 ms     | 0x6a43 basekey:0x7f529d938280
  6796 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6796 ms     | 0x6a43 ret:0x7f52ae47f300
  6796 ms     | 0x6a43 PK11_DeriveWithFlags()
  6796 ms     | 0x6a43 basekey:0x7f529d938280
  6796 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6796 ms     | 0x6a43 ret:0x7f52ae472080
  6796 ms     | 0x6a43 PK11_DeriveWithFlags()
  6796 ms     | 0x6a43 basekey:0x7f529d938100
  6796 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6796 ms     | 0x6a43 ret:0x7f52ae472080
  6796 ms     | 0x6a43 PK11_DeriveWithFlags()
  6796 ms     | 0x6a43 basekey:0x7f529d938100
  6796 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6796 ms     | 0x6a43 ret:0x7f52ae472180
  6796 ms     | 0x6a43 PK11_DeriveWithFlags()
  6796 ms     | 0x6a43 basekey:0x7f529d938280
  6796 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6796 ms     | 0x6a43 ret:0x7f529d939680
  6796 ms     | 0x6a43 PK11_Encrypt()
  6796 ms     | 0x6a43 symkey:0x7f52ae47f300
  6796 ms     | 0x6a43 PK11_DeriveWithFlags()
  6796 ms     | 0x6a43 basekey:0x7f52b03bc880
  6796 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6796 ms     | 0x6a43 ret:0x7f529d939680
  6796 ms     | 0x6a43 PK11_DeriveWithFlags()
  6796 ms     | 0x6a43 basekey:0x7f52b03bc880
  6796 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6796 ms     | 0x6a43 ret:0x7f52ae472180
  6796 ms     | 0x6a43 PK11_DeriveWithFlags()
  6796 ms     | 0x6a43 basekey:0x7f529d939780
  6797 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6797 ms     | 0x6a43 ret:0x7f52ae47f300
  6797 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  6797 ms     | 0x6a43 privk:0x7f52ae454820::7f52ae454820  20 89 85 9d                                       ...
  6797 ms     | 0x6a43 privk:0x7f52ae454820::7f52ae454820  e5 e5 e5 e5                                      ....
  6797 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  6797 ms     | 0x6a43 privk:0x7f52ae452820::7f52ae452820  e0 8c 85 9d                                      ....
  6797 ms     | 0x6a43 privk:0x7f52ae452820::7f52ae452820  e5 e5 e5 e5                                      ....
  6797 ms  0x6a43 PK11_Encrypt()
  6797 ms  0x6a43 symkey:0x7f529d939680
  6798 ms  0x6a43 PK11_Encrypt()
  6798 ms  0x6a43 symkey:0x7f529d938200
           /* TID 0x6a4b */
  6805 ms  0x6a4b PR_Close()
  6805 ms  0x6a4b fd:0x7f52ae47e0a0
           /* TID 0x6adf */
  6807 ms  0x6adf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6807 ms  0x6adf ret:0x0
  6807 ms  0x6adf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6807 ms  0x6adf ret:0x0
           /* TID 0x6a43 */
  6808 ms  0x6a43 SSL_AuthCertificateComplete()
  6808 ms  0x6a43 fd:0x7f529d75dfa0
  6808 ms  0x6a43 err:0x0
  6808 ms     | 0x6a43 PK11_DeriveWithFlags()
  6808 ms     | 0x6a43 basekey:0x7f529d939a80
  6808 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6808 ms     | 0x6a43 ret:0x7f529d938180
  6808 ms     | 0x6a43 PK11_DeriveWithFlags()
  6808 ms     | 0x6a43 basekey:0x7f529d939a80
  6808 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6808 ms     | 0x6a43 ret:0x7f529d938280
  6808 ms     | 0x6a43 PK11_DeriveWithFlags()
  6808 ms     | 0x6a43 basekey:0x7f529d939a80
  6808 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6808 ms     | 0x6a43 ret:0x7f529d939780
  6808 ms     | 0x6a43 PK11_DeriveWithFlags()
  6808 ms     | 0x6a43 basekey:0x7f529d939700
  6808 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6808 ms     | 0x6a43 ret:0x7f52ae472180
  6808 ms     | 0x6a43 PK11_DeriveWithFlags()
  6808 ms     | 0x6a43 basekey:0x7f529d939700
  6808 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6808 ms     | 0x6a43 ret:0x7f529d939c00
  6808 ms     | 0x6a43 PK11_DeriveWithFlags()
  6808 ms     | 0x6a43 basekey:0x7f529d938280
  6808 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6808 ms     | 0x6a43 ret:0x7f529d939c00
  6808 ms     | 0x6a43 PK11_DeriveWithFlags()
  6808 ms     | 0x6a43 basekey:0x7f529d938280
  6808 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6808 ms     | 0x6a43 ret:0x7f529d939c80
  6808 ms     | 0x6a43 PK11_DeriveWithFlags()
  6808 ms     | 0x6a43 basekey:0x7f529d939700
  6808 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6808 ms     | 0x6a43 ret:0x7f529d939980
  6808 ms     | 0x6a43 PK11_Encrypt()
  6808 ms     | 0x6a43 symkey:0x7f52ae472180
  6808 ms     | 0x6a43 PK11_DeriveWithFlags()
  6808 ms     | 0x6a43 basekey:0x7f529d938180
  6808 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6808 ms     | 0x6a43 ret:0x7f529d939980
  6808 ms     | 0x6a43 PK11_DeriveWithFlags()
  6808 ms     | 0x6a43 basekey:0x7f529d938180
  6808 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6808 ms     | 0x6a43 ret:0x7f529d939c80
  6808 ms     | 0x6a43 PK11_DeriveWithFlags()
  6808 ms     | 0x6a43 basekey:0x7f529d939a80
  6808 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6808 ms     | 0x6a43 ret:0x7f52ae472180
  6808 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  6808 ms     | 0x6a43 privk:0x7f52ae548820::7f52ae548820  00 51 8e 9d                                      .Q..
  6809 ms     | 0x6a43 privk:0x7f52ae548820::7f52ae548820  e5 e5 e5 e5                                      ....
  6809 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  6809 ms     | 0x6a43 privk:0x7f52ae461820::7f52ae461820  20 e4 8c 9d                                       ...
  6809 ms     | 0x6a43 privk:0x7f52ae461820::7f52ae461820  e5 e5 e5 e5                                      ....
  6809 ms  0x6a43 PK11_Encrypt()
  6809 ms  0x6a43 symkey:0x7f529d939980
  6809 ms  0x6a43 PK11_Encrypt()
  6809 ms  0x6a43 symkey:0x7f529d938200
           /* TID 0x6a4b */
  6816 ms  0x6a4b PR_Close()
  6816 ms  0x6a4b fd:0x7f529d7744f0
           /* TID 0x6ae0 */
  6816 ms  0x6ae0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6817 ms  0x6ae0 ret:0x0
  6817 ms  0x6ae0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6817 ms  0x6ae0 ret:0x0
           /* TID 0x6a43 */
  6817 ms  0x6a43 SSL_AuthCertificateComplete()
  6817 ms  0x6a43 fd:0x7f529d9e89a0
  6817 ms  0x6a43 err:0x0
  6817 ms     | 0x6a43 PK11_DeriveWithFlags()
  6817 ms     | 0x6a43 basekey:0x7f529d939e80
  6817 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6817 ms     | 0x6a43 ret:0x7f529d939600
  6817 ms     | 0x6a43 PK11_DeriveWithFlags()
  6817 ms     | 0x6a43 basekey:0x7f529d939e80
  6817 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6817 ms     | 0x6a43 ret:0x7f529d939700
  6817 ms     | 0x6a43 PK11_DeriveWithFlags()
  6817 ms     | 0x6a43 basekey:0x7f529d939e80
  6817 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6817 ms     | 0x6a43 ret:0x7f529d939a80
  6817 ms     | 0x6a43 PK11_DeriveWithFlags()
  6817 ms     | 0x6a43 basekey:0x7f529d939a00
  6817 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6817 ms     | 0x6a43 ret:0x7f529d939c80
  6817 ms     | 0x6a43 PK11_DeriveWithFlags()
  6817 ms     | 0x6a43 basekey:0x7f529d939a00
  6817 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6817 ms     | 0x6a43 ret:0x7f52ae472200
  6817 ms     | 0x6a43 PK11_DeriveWithFlags()
  6817 ms     | 0x6a43 basekey:0x7f529d939700
  6817 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6817 ms     | 0x6a43 ret:0x7f52ae472200
  6817 ms     | 0x6a43 PK11_DeriveWithFlags()
  6817 ms     | 0x6a43 basekey:0x7f529d939700
  6817 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6817 ms     | 0x6a43 ret:0x7f52ae472280
  6817 ms     | 0x6a43 PK11_DeriveWithFlags()
  6817 ms     | 0x6a43 basekey:0x7f529d939a00
  6817 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6817 ms     | 0x6a43 ret:0x7f529d939d80
  6817 ms     | 0x6a43 PK11_Encrypt()
  6817 ms     | 0x6a43 symkey:0x7f529d939c80
  6818 ms     | 0x6a43 PK11_DeriveWithFlags()
  6818 ms     | 0x6a43 basekey:0x7f529d939600
  6818 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6818 ms     | 0x6a43 ret:0x7f529d939d80
  6818 ms     | 0x6a43 PK11_DeriveWithFlags()
  6818 ms     | 0x6a43 basekey:0x7f529d939600
  6818 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6818 ms     | 0x6a43 ret:0x7f52ae472280
  6818 ms     | 0x6a43 PK11_DeriveWithFlags()
  6818 ms     | 0x6a43 basekey:0x7f529d939e80
  6818 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6818 ms     | 0x6a43 ret:0x7f529d939c80
  6818 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  6818 ms     | 0x6a43 privk:0x7f52ae73a820::7f52ae73a820  20 54 8e 9d                                       T..
  6818 ms     | 0x6a43 privk:0x7f52ae73a820::7f52ae73a820  e5 e5 e5 e5                                      ....
  6818 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  6818 ms     | 0x6a43 privk:0x7f52ae54e020::7f52ae54e020  40 52 8e 9d                                      @R..
  6818 ms     | 0x6a43 privk:0x7f52ae54e020::7f52ae54e020  e5 e5 e5 e5                                      ....
  6818 ms  0x6a43 PK11_Encrypt()
  6818 ms  0x6a43 symkey:0x7f529d939d80
  6818 ms  0x6a43 PK11_Encrypt()
  6818 ms  0x6a43 symkey:0x7f529d938200
           /* TID 0x6a4b */
  6828 ms  0x6a4b PR_Close()
  6828 ms  0x6a4b fd:0x7f52ae47e7f0
           /* TID 0x6ae1 */
  6828 ms  0x6ae1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6828 ms  0x6ae1 ret:0x0
  6828 ms  0x6ae1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6828 ms  0x6ae1 ret:0x0
           /* TID 0x6a43 */
  6829 ms  0x6a43 SSL_AuthCertificateComplete()
  6829 ms  0x6a43 fd:0x7f52ae47e460
  6829 ms  0x6a43 err:0x0
  6829 ms     | 0x6a43 PK11_DeriveWithFlags()
  6829 ms     | 0x6a43 basekey:0x7f529d9edc80
  6829 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6829 ms     | 0x6a43 ret:0x7f529d939900
  6829 ms     | 0x6a43 PK11_DeriveWithFlags()
  6829 ms     | 0x6a43 basekey:0x7f529d9edc80
  6829 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6829 ms     | 0x6a43 ret:0x7f529d939a00
  6829 ms     | 0x6a43 PK11_DeriveWithFlags()
  6829 ms     | 0x6a43 basekey:0x7f529d9edc80
  6829 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6829 ms     | 0x6a43 ret:0x7f529d939e80
  6829 ms     | 0x6a43 PK11_DeriveWithFlags()
  6829 ms     | 0x6a43 basekey:0x7f529d939e00
  6829 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6829 ms     | 0x6a43 ret:0x7f52ae472280
  6829 ms     | 0x6a43 PK11_DeriveWithFlags()
  6829 ms     | 0x6a43 basekey:0x7f529d939e00
  6829 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6829 ms     | 0x6a43 ret:0x7f529d939f00
  6829 ms     | 0x6a43 PK11_DeriveWithFlags()
  6829 ms     | 0x6a43 basekey:0x7f529d939a00
  6829 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6829 ms     | 0x6a43 ret:0x7f529d939f00
  6829 ms     | 0x6a43 PK11_DeriveWithFlags()
  6829 ms     | 0x6a43 basekey:0x7f529d939a00
  6829 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6829 ms     | 0x6a43 ret:0x7f529d9f9e00
  6829 ms     | 0x6a43 PK11_DeriveWithFlags()
  6829 ms     | 0x6a43 basekey:0x7f529d939e00
  6829 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6829 ms     | 0x6a43 ret:0x7f529d9edb00
  6829 ms     | 0x6a43 PK11_Encrypt()
  6829 ms     | 0x6a43 symkey:0x7f52ae472280
  6829 ms     | 0x6a43 PK11_DeriveWithFlags()
  6829 ms     | 0x6a43 basekey:0x7f529d939900
  6829 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6829 ms     | 0x6a43 ret:0x7f529d9edb00
  6829 ms     | 0x6a43 PK11_DeriveWithFlags()
  6829 ms     | 0x6a43 basekey:0x7f529d939900
  6829 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6829 ms     | 0x6a43 ret:0x7f529d9f9e00
  6829 ms     | 0x6a43 PK11_DeriveWithFlags()
  6829 ms     | 0x6a43 basekey:0x7f529d9edc80
  6829 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  6829 ms     | 0x6a43 ret:0x7f52ae472280
  6829 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  6829 ms     | 0x6a43 privk:0x7f52ae745820::7f52ae745820  20 f4 8f 9d                                       ...
  6830 ms     | 0x6a43 privk:0x7f52ae745820::7f52ae745820  e5 e5 e5 e5                                      ....
  6830 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  6830 ms     | 0x6a43 privk:0x7f52ae741820::7f52ae741820  60 55 8e 9d                                      `U..
  6830 ms     | 0x6a43 privk:0x7f52ae741820::7f52ae741820  e5 e5 e5 e5                                      ....
  6830 ms  0x6a43 PK11_Encrypt()
  6830 ms  0x6a43 symkey:0x7f529d9edb00
  6830 ms  0x6a43 PK11_Encrypt()
  6830 ms  0x6a43 symkey:0x7f529d938200
  6840 ms  0x6a43 PK11_DeriveWithFlags()
  6840 ms  0x6a43 basekey:0x7f52ae47f200
  6840 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6840 ms  0x6a43 ret:0x7f529d939d00
  6840 ms  0x6a43 PK11_DeriveWithFlags()
  6840 ms  0x6a43 basekey:0x7f52ae47f200
  6840 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6840 ms  0x6a43 ret:0x7f529d939d00
  6866 ms  0x6a43 PK11_DeriveWithFlags()
  6866 ms  0x6a43 basekey:0x7f52ae47f300
  6866 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6866 ms  0x6a43 ret:0x7f529d939d00
  6866 ms  0x6a43 PK11_DeriveWithFlags()
  6866 ms  0x6a43 basekey:0x7f52ae47f300
  6866 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6866 ms  0x6a43 ret:0x7f529d939d00
  6866 ms  0x6a43 PR_Close()
  6866 ms  0x6a43 fd:0x7f52ae47e280
  6866 ms     | 0x6a43 PK11_Encrypt()
  6866 ms     | 0x6a43 symkey:0x7f529d939680
  6876 ms  0x6a43 PK11_DeriveWithFlags()
  6876 ms  0x6a43 basekey:0x7f52ae472180
  6876 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6876 ms  0x6a43 ret:0x7f529d938380
  6876 ms  0x6a43 PK11_DeriveWithFlags()
  6876 ms  0x6a43 basekey:0x7f52ae472180
  6876 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6876 ms  0x6a43 ret:0x7f529d938380
  6876 ms  0x6a43 PR_Close()
  6876 ms  0x6a43 fd:0x7f529d75dfa0
  6877 ms     | 0x6a43 PK11_Encrypt()
  6877 ms     | 0x6a43 symkey:0x7f529d939980
  6886 ms  0x6a43 PK11_DeriveWithFlags()
  6886 ms  0x6a43 basekey:0x7f529d939c80
  6886 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6886 ms  0x6a43 ret:0x7f529d939780
  6886 ms  0x6a43 PK11_DeriveWithFlags()
  6886 ms  0x6a43 basekey:0x7f529d939c80
  6886 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6886 ms  0x6a43 ret:0x7f529d939780
  6886 ms  0x6a43 PR_Close()
  6886 ms  0x6a43 fd:0x7f529d9e89a0
  6886 ms     | 0x6a43 PK11_Encrypt()
  6886 ms     | 0x6a43 symkey:0x7f529d939d80
  6905 ms  0x6a43 PK11_DeriveWithFlags()
  6905 ms  0x6a43 basekey:0x7f52ae472280
  6906 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6906 ms  0x6a43 ret:0x7f529d939a80
  6906 ms  0x6a43 PK11_DeriveWithFlags()
  6906 ms  0x6a43 basekey:0x7f52ae472280
  6906 ms     | 0x6a43 PK11_DeriveWithTemplate()
  6906 ms  0x6a43 ret:0x7f529d939a80
  6906 ms  0x6a43 PR_Close()
  6906 ms  0x6a43 fd:0x7f52ae47e460
  6906 ms     | 0x6a43 PK11_Encrypt()
  6906 ms     | 0x6a43 symkey:0x7f529d9edb00
  6907 ms  0x6a43 PK11_Encrypt()
  6907 ms  0x6a43 symkey:0x7f529d938200
           /* TID 0x6a4b */
  6912 ms  0x6a4b PR_Close()
  6912 ms  0x6a4b fd:0x7f529d99d820
  6918 ms  0x6a4b PR_Close()
  6918 ms  0x6a4b fd:0x7f529d99d970
  7046 ms  0x6a4b PR_Close()
  7046 ms  0x6a4b fd:0x7f529d75dca0
  7051 ms  0x6a4b PR_Close()
  7051 ms  0x6a4b fd:0x7f529d75dca0
  7055 ms  0x6a4b PR_Close()
  7055 ms  0x6a4b fd:0x7f529d774970
           /* TID 0x6a43 */
  7121 ms  0x6a43 SSL_ImportFD()
  7121 ms  0x6a43 ret:0x7f52ae47e190
  7121 ms  0x6a43 SSL_AuthCertificateHook()
  7121 ms  0x6a43 fd:0x7f52ae47e190
  7121 ms  0x6a43 ret:0x0
  7121 ms  0x6a43 PR_Connect()
  7121 ms  0x6a43 fd:0x7f52ae47e190
  7121 ms  0x6a43 SSL_ImportFD()
  7121 ms  0x6a43 ret:0x7f529d7746a0
  7121 ms  0x6a43 SSL_AuthCertificateHook()
  7121 ms  0x6a43 fd:0x7f529d7746a0
  7121 ms  0x6a43 ret:0x0
  7122 ms  0x6a43 PR_Connect()
  7122 ms  0x6a43 fd:0x7f529d7746a0
  7122 ms  0x6a43 SSL_ImportFD()
  7122 ms  0x6a43 ret:0x7f52ae47e1f0
  7122 ms  0x6a43 SSL_AuthCertificateHook()
  7122 ms  0x6a43 fd:0x7f52ae47e1f0
  7122 ms  0x6a43 ret:0x0
  7122 ms  0x6a43 PR_Connect()
  7122 ms  0x6a43 fd:0x7f52ae47e1f0
  7122 ms  0x6a43 SSL_ImportFD()
  7122 ms  0x6a43 ret:0x7f529d99dfd0
  7122 ms  0x6a43 SSL_AuthCertificateHook()
  7122 ms  0x6a43 fd:0x7f529d99dfd0
  7122 ms  0x6a43 ret:0x0
  7122 ms  0x6a43 PR_Connect()
  7122 ms  0x6a43 fd:0x7f529d99dfd0
           /* TID 0x6a4b */
  7130 ms  0x6a4b PR_Close()
  7130 ms  0x6a4b fd:0x7f529d75ddf0
           /* TID 0x6a43 */
  7189 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7189 ms  0x6a43 cx:0x7f52ae4efc88
  7189 ms     | 0x6a43 EC_ValidatePublicKey()
  7189 ms     | 0x6a43 ret:0x0
  7189 ms  0x6a43 ret:0x7f52ae454820::7f52ae454820  30 8d 85 9d                                      0...
  7189 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7189 ms  0x6a43 cx:0x7f52ae4efc88
  7190 ms     | 0x6a43 EC_ValidatePublicKey()
  7191 ms     | 0x6a43 ret:0x0
  7192 ms  0x6a43 ret:0x7f52ae461820::7f52ae461820  b0 8f 85 9d                                      ....
  7192 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7192 ms  0x6a43 cx:0x7f52ae4ef468
  7200 ms     | 0x6a43 EC_ValidatePublicKey()
  7200 ms     | 0x6a43 ret:0x0
  7200 ms  0x6a43 ret:0x7f52ae548020::7f52ae548020  20 e4 8c 9d                                       ...
  7200 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7200 ms  0x6a43 cx:0x7f52ae4ef468
  7201 ms     | 0x6a43 EC_ValidatePublicKey()
  7202 ms     | 0x6a43 ret:0x0
  7202 ms  0x6a43 ret:0x7f52ae54b020::7f52ae54b020  00 51 8e 9d                                      .Q..
  7202 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7202 ms  0x6a43 cx:0x7f52ae4effc8
  7203 ms     | 0x6a43 EC_ValidatePublicKey()
  7203 ms     | 0x6a43 ret:0x0
  7203 ms  0x6a43 ret:0x7f52ae54e820::7f52ae54e820  40 52 8e 9d                                      @R..
  7203 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7203 ms  0x6a43 cx:0x7f52ae4effc8
  7204 ms     | 0x6a43 EC_ValidatePublicKey()
  7205 ms     | 0x6a43 ret:0x0
  7205 ms  0x6a43 ret:0x7f52ae73d820::7f52ae73d820  20 54 8e 9d                                       T..
  7205 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7205 ms  0x6a43 cx:0x7f52ae4efe28
  7206 ms     | 0x6a43 EC_ValidatePublicKey()
  7206 ms     | 0x6a43 ret:0x0
  7206 ms  0x6a43 ret:0x7f52ae742020::7f52ae742020  60 55 8e 9d                                      `U..
  7206 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7206 ms  0x6a43 cx:0x7f52ae4efe28
  7207 ms     | 0x6a43 EC_ValidatePublicKey()
  7208 ms     | 0x6a43 ret:0x0
  7208 ms  0x6a43 ret:0x7f52ae748820::7f52ae748820  80 58 8e 9d                                      .X..
  7217 ms  0x6a43 PK11_Encrypt()
  7217 ms  0x6a43 symkey:0x7f529d938200
  7232 ms  0x6a43 PK11_Encrypt()
  7232 ms  0x6a43 symkey:0x7f529d9ed000
  7232 ms  0x6a43 SSL_ImportFD()
  7232 ms  0x6a43 ret:0x7f52ae5cde80
  7232 ms  0x6a43 SSL_AuthCertificateHook()
  7232 ms  0x6a43 fd:0x7f52ae5cde80
  7232 ms  0x6a43 ret:0x0
  7232 ms  0x6a43 PR_Connect()
  7232 ms  0x6a43 fd:0x7f52ae5cde80
  7233 ms  0x6a43 SSL_ImportFD()
  7233 ms  0x6a43 ret:0x7f52ae5cda00
  7233 ms  0x6a43 SSL_AuthCertificateHook()
  7233 ms  0x6a43 fd:0x7f52ae5cda00
  7233 ms  0x6a43 ret:0x0
  7233 ms  0x6a43 PR_Connect()
  7233 ms  0x6a43 fd:0x7f52ae5cda00
  7239 ms  0x6a43 SSL_ImportFD()
  7239 ms  0x6a43 ret:0x7f52ae76f3d0
  7239 ms  0x6a43 SSL_AuthCertificateHook()
  7239 ms  0x6a43 fd:0x7f52ae76f3d0
  7239 ms  0x6a43 ret:0x0
  7239 ms  0x6a43 PR_Connect()
  7239 ms  0x6a43 fd:0x7f52ae76f3d0
  7253 ms  0x6a43 SSL_ImportFD()
  7253 ms  0x6a43 ret:0x7f52ae76fa60
  7253 ms  0x6a43 SSL_AuthCertificateHook()
  7253 ms  0x6a43 fd:0x7f52ae76fa60
  7253 ms  0x6a43 ret:0x0
  7253 ms  0x6a43 PR_Connect()
  7253 ms  0x6a43 fd:0x7f52ae76fa60
  7260 ms  0x6a43 PK11_Derive()
  7260 ms  0x6a43 basekey:0x7f529d939e80
  7260 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7260 ms  0x6a43 ret:0x7f529d939a00
  7260 ms  0x6a43 PK11_PubDeriveWithKDF()
  7260 ms  0x6a43 seckey:0x7f52ae454820
  7260 ms     | 0x6a43 EC_ValidatePublicKey()
  7260 ms     | 0x6a43 ret:0x0
  7260 ms  0x6a43 ret:0x7f529d939e80
  7260 ms  SECKEY_ECParamsToKeySize()
  7260 ms  0x6a43 ret:0xff
  7260 ms  0x6a43 PK11_DeriveWithFlags()
  7260 ms  0x6a43 basekey:0x7f529d939a00
  7260 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7260 ms  0x6a43 ret:0x7f529d939900
  7260 ms  0x6a43 PK11_Derive()
  7260 ms  0x6a43 basekey:0x7f529d939e80
  7260 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7260 ms  0x6a43 ret:0x7f52ae472280
  7260 ms  0x6a43 PK11_DeriveWithFlags()
  7260 ms  0x6a43 basekey:0x7f52ae472280
  7260 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7260 ms  0x6a43 ret:0x7f529d939a00
  7260 ms  0x6a43 PK11_DeriveWithFlags()
  7260 ms  0x6a43 basekey:0x7f52ae472280
  7261 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7261 ms  0x6a43 ret:0x7f529d939e80
  7261 ms  0x6a43 PK11_DeriveWithFlags()
  7261 ms  0x6a43 basekey:0x7f52ae472280
  7261 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7261 ms  0x6a43 ret:0x7f529d939900
  7261 ms  0x6a43 PK11_Derive()
  7261 ms  0x6a43 basekey:0x7f529d939f00
  7261 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7261 ms  0x6a43 ret:0x7f529d9edb00
  7261 ms  0x6a43 PK11_DeriveWithFlags()
  7261 ms  0x6a43 basekey:0x7f529d939e80
  7261 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7261 ms  0x6a43 ret:0x7f52ae472280
  7261 ms  0x6a43 PK11_DeriveWithFlags()
  7261 ms  0x6a43 basekey:0x7f529d939e80
  7261 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7261 ms  0x6a43 ret:0x7f529d939900
           /* TID 0x6aa6 */
  7261 ms  0x6aa6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7262 ms  0x6aa6 ret:0x0
  7262 ms  0x6aa6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7262 ms  0x6aa6 ret:0x0
           /* TID 0x6a43 */
  7262 ms  0x6a43 PK11_DeriveWithFlags()
  7262 ms  0x6a43 basekey:0x7f529d939e80
  7262 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7262 ms  0x6a43 ret:0x7f529d939900
  7262 ms  0x6a43 SSL_AuthCertificateComplete()
  7262 ms  0x6a43 fd:0x7f529d7746a0
  7262 ms  0x6a43 err:0x0
  7262 ms     | 0x6a43 PK11_DeriveWithFlags()
  7262 ms     | 0x6a43 basekey:0x7f529d9edb00
  7262 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7262 ms     | 0x6a43 ret:0x7f529d939900
  7262 ms     | 0x6a43 PK11_DeriveWithFlags()
  7262 ms     | 0x6a43 basekey:0x7f529d9edb00
  7262 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7262 ms     | 0x6a43 ret:0x7f529d939f00
  7262 ms     | 0x6a43 PK11_DeriveWithFlags()
  7262 ms     | 0x6a43 basekey:0x7f529d9edb00
  7262 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7262 ms     | 0x6a43 ret:0x7f529d939a80
  7262 ms     | 0x6a43 PK11_DeriveWithFlags()
  7262 ms     | 0x6a43 basekey:0x7f529d939a00
  7262 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7262 ms     | 0x6a43 ret:0x7f529d939700
  7262 ms     | 0x6a43 PK11_DeriveWithFlags()
  7262 ms     | 0x6a43 basekey:0x7f529d939a00
  7262 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7262 ms     | 0x6a43 ret:0x7f529d939600
  7262 ms     | 0x6a43 PK11_DeriveWithFlags()
  7262 ms     | 0x6a43 basekey:0x7f529d939f00
  7262 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7262 ms     | 0x6a43 ret:0x7f529d939600
  7262 ms     | 0x6a43 PK11_DeriveWithFlags()
  7262 ms     | 0x6a43 basekey:0x7f529d939f00
  7262 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7262 ms     | 0x6a43 ret:0x7f529d939c80
  7262 ms     | 0x6a43 PK11_DeriveWithFlags()
  7262 ms     | 0x6a43 basekey:0x7f529d939a00
  7262 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7262 ms     | 0x6a43 ret:0x7f52ae472280
  7262 ms     | 0x6a43 PK11_Encrypt()
  7262 ms     | 0x6a43 symkey:0x7f529d939700
  7262 ms     | 0x6a43 PK11_DeriveWithFlags()
  7262 ms     | 0x6a43 basekey:0x7f529d939900
  7262 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7262 ms     | 0x6a43 ret:0x7f52ae472280
  7262 ms     | 0x6a43 PK11_DeriveWithFlags()
  7262 ms     | 0x6a43 basekey:0x7f529d939900
  7262 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7262 ms     | 0x6a43 ret:0x7f529d939c80
  7262 ms     | 0x6a43 PK11_DeriveWithFlags()
  7262 ms     | 0x6a43 basekey:0x7f529d9edb00
  7262 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7262 ms     | 0x6a43 ret:0x7f529d939700
  7263 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  7263 ms     | 0x6a43 privk:0x7f52ae461820::7f52ae461820  b0 8f 85 9d                                      ....
  7263 ms     | 0x6a43 privk:0x7f52ae461820::7f52ae461820  e5 e5 e5 e5                                      ....
  7263 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  7263 ms     | 0x6a43 privk:0x7f52ae454820::7f52ae454820  30 8d 85 9d                                      0...
  7263 ms     | 0x6a43 privk:0x7f52ae454820::7f52ae454820  e5 e5 e5 e5                                      ....
  7263 ms  0x6a43 PK11_Encrypt()
  7263 ms  0x6a43 symkey:0x7f52ae472280
  7263 ms  0x6a43 PK11_Encrypt()
  7263 ms  0x6a43 symkey:0x7f52ae472280
  7263 ms  0x6a43 PR_Close()
  7263 ms  0x6a43 fd:0x7f52ae5cda00
  7263 ms  0x6a43 PR_Close()
  7263 ms  0x6a43 fd:0x7f52ae5cde80
  7264 ms  0x6a43 PK11_Encrypt()
  7264 ms  0x6a43 symkey:0x7f52ae472280
  7264 ms  0x6a43 PK11_Encrypt()
  7264 ms  0x6a43 symkey:0x7f52ae472280
  7273 ms  0x6a43 PK11_Derive()
  7273 ms  0x6a43 basekey:0x7f529d939e80
  7273 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7273 ms  0x6a43 ret:0x7f529d939a00
  7273 ms  0x6a43 PK11_PubDeriveWithKDF()
  7273 ms  0x6a43 seckey:0x7f52ae548020
  7273 ms     | 0x6a43 EC_ValidatePublicKey()
  7273 ms     | 0x6a43 ret:0x0
  7273 ms  0x6a43 ret:0x7f529d939e80
  7273 ms  SECKEY_ECParamsToKeySize()
  7273 ms  0x6a43 ret:0xff
  7273 ms  0x6a43 PK11_DeriveWithFlags()
  7273 ms  0x6a43 basekey:0x7f529d939a00
  7273 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7273 ms  0x6a43 ret:0x7f529d9edb00
  7273 ms  0x6a43 PK11_Derive()
  7273 ms  0x6a43 basekey:0x7f529d939e80
  7273 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7273 ms  0x6a43 ret:0x7f529d939c80
  7273 ms  0x6a43 PK11_DeriveWithFlags()
  7273 ms  0x6a43 basekey:0x7f529d939c80
  7273 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7273 ms  0x6a43 ret:0x7f529d939a00
  7273 ms  0x6a43 PK11_DeriveWithFlags()
  7273 ms  0x6a43 basekey:0x7f529d939c80
  7273 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7273 ms  0x6a43 ret:0x7f529d939e80
  7274 ms  0x6a43 PK11_DeriveWithFlags()
  7274 ms  0x6a43 basekey:0x7f529d939c80
  7274 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7274 ms  0x6a43 ret:0x7f529d9edb00
  7274 ms  0x6a43 PK11_Derive()
  7274 ms  0x6a43 basekey:0x7f52ae472200
  7274 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7274 ms  0x6a43 ret:0x7f529d939d80
  7274 ms  0x6a43 PK11_DeriveWithFlags()
  7274 ms  0x6a43 basekey:0x7f529d939e80
  7274 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7274 ms  0x6a43 ret:0x7f529d939c80
  7274 ms  0x6a43 PK11_DeriveWithFlags()
  7274 ms  0x6a43 basekey:0x7f529d939e80
  7274 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7274 ms  0x6a43 ret:0x7f529d9edb00
           /* TID 0x6ade */
  7274 ms  0x6ade _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7274 ms  0x6ade ret:0x0
  7274 ms  0x6ade _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7275 ms  0x6ade ret:0x0
           /* TID 0x6a43 */
  7275 ms  0x6a43 PK11_DeriveWithFlags()
  7275 ms  0x6a43 basekey:0x7f529d939e80
  7275 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7275 ms  0x6a43 ret:0x7f529d9edb00
  7275 ms  0x6a43 SSL_AuthCertificateComplete()
  7275 ms  0x6a43 fd:0x7f52ae47e190
  7275 ms  0x6a43 err:0x0
  7275 ms     | 0x6a43 PK11_DeriveWithFlags()
  7275 ms     | 0x6a43 basekey:0x7f529d939d80
  7275 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7275 ms     | 0x6a43 ret:0x7f529d9edb00
  7275 ms     | 0x6a43 PK11_DeriveWithFlags()
  7275 ms     | 0x6a43 basekey:0x7f529d939d80
  7275 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7275 ms     | 0x6a43 ret:0x7f52ae472200
  7275 ms     | 0x6a43 PK11_DeriveWithFlags()
  7275 ms     | 0x6a43 basekey:0x7f529d939d80
  7275 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7275 ms     | 0x6a43 ret:0x7f529d939780
  7275 ms     | 0x6a43 PK11_DeriveWithFlags()
  7275 ms     | 0x6a43 basekey:0x7f529d939a00
  7275 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7275 ms     | 0x6a43 ret:0x7f529d938280
  7275 ms     | 0x6a43 PK11_DeriveWithFlags()
  7275 ms     | 0x6a43 basekey:0x7f529d939a00
  7275 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7275 ms     | 0x6a43 ret:0x7f529d938180
  7275 ms     | 0x6a43 PK11_DeriveWithFlags()
  7275 ms     | 0x6a43 basekey:0x7f52ae472200
  7275 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7275 ms     | 0x6a43 ret:0x7f529d938180
  7275 ms     | 0x6a43 PK11_DeriveWithFlags()
  7275 ms     | 0x6a43 basekey:0x7f52ae472200
  7275 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7275 ms     | 0x6a43 ret:0x7f52ae472180
  7275 ms     | 0x6a43 PK11_DeriveWithFlags()
  7275 ms     | 0x6a43 basekey:0x7f529d939a00
  7275 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7275 ms     | 0x6a43 ret:0x7f529d939c80
  7275 ms     | 0x6a43 PK11_Encrypt()
  7275 ms     | 0x6a43 symkey:0x7f529d938280
  7275 ms     | 0x6a43 PK11_DeriveWithFlags()
  7275 ms     | 0x6a43 basekey:0x7f529d9edb00
  7275 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7275 ms     | 0x6a43 ret:0x7f529d939c80
  7275 ms     | 0x6a43 PK11_DeriveWithFlags()
  7275 ms     | 0x6a43 basekey:0x7f529d9edb00
  7275 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7275 ms     | 0x6a43 ret:0x7f52ae472180
  7275 ms     | 0x6a43 PK11_DeriveWithFlags()
  7275 ms     | 0x6a43 basekey:0x7f529d939d80
  7275 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7276 ms     | 0x6a43 ret:0x7f529d938280
  7276 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  7276 ms     | 0x6a43 privk:0x7f52ae54b020::7f52ae54b020  00 51 8e 9d                                      .Q..
  7276 ms     | 0x6a43 privk:0x7f52ae54b020::7f52ae54b020  e5 e5 e5 e5                                      ....
  7276 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  7276 ms     | 0x6a43 privk:0x7f52ae548020::7f52ae548020  20 e4 8c 9d                                       ...
  7276 ms     | 0x6a43 privk:0x7f52ae548020::7f52ae548020  e5 e5 e5 e5                                      ....
  7276 ms  0x6a43 PK11_Derive()
  7276 ms  0x6a43 basekey:0x7f529d939e80
  7276 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7276 ms  0x6a43 ret:0x7f529d939a00
  7276 ms  0x6a43 PK11_PubDeriveWithKDF()
  7276 ms  0x6a43 seckey:0x7f52ae54e820
  7276 ms     | 0x6a43 EC_ValidatePublicKey()
  7276 ms     | 0x6a43 ret:0x0
  7277 ms  0x6a43 ret:0x7f529d939e80
  7277 ms  SECKEY_ECParamsToKeySize()
  7277 ms  0x6a43 ret:0xff
  7277 ms  0x6a43 PK11_DeriveWithFlags()
  7277 ms  0x6a43 basekey:0x7f529d939a00
  7277 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7277 ms  0x6a43 ret:0x7f529d939d80
  7277 ms  0x6a43 PK11_Derive()
  7277 ms  0x6a43 basekey:0x7f529d939e80
  7277 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7277 ms  0x6a43 ret:0x7f52ae472180
  7277 ms  0x6a43 PK11_DeriveWithFlags()
  7277 ms  0x6a43 basekey:0x7f52ae472180
  7277 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7277 ms  0x6a43 ret:0x7f529d939a00
  7277 ms  0x6a43 PK11_DeriveWithFlags()
  7277 ms  0x6a43 basekey:0x7f52ae472180
  7277 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7277 ms  0x6a43 ret:0x7f529d939e80
  7277 ms  0x6a43 PK11_DeriveWithFlags()
  7277 ms  0x6a43 basekey:0x7f52ae472180
  7277 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7277 ms  0x6a43 ret:0x7f529d939d80
  7277 ms  0x6a43 PK11_Derive()
  7277 ms  0x6a43 basekey:0x7f529d939c00
  7277 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7277 ms  0x6a43 ret:0x7f529d939980
  7277 ms  0x6a43 PK11_DeriveWithFlags()
  7277 ms  0x6a43 basekey:0x7f529d939e80
  7277 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7277 ms  0x6a43 ret:0x7f52ae472180
  7277 ms  0x6a43 PK11_DeriveWithFlags()
  7277 ms  0x6a43 basekey:0x7f529d939e80
  7277 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7277 ms  0x6a43 ret:0x7f529d939d80
           /* TID 0x6adf */
  7280 ms  0x6adf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7280 ms  0x6adf ret:0x0
  7280 ms  0x6adf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7281 ms  0x6adf ret:0x0
           /* TID 0x6a43 */
  7281 ms  0x6a43 PK11_DeriveWithFlags()
  7281 ms  0x6a43 basekey:0x7f529d939e80
  7281 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7281 ms  0x6a43 ret:0x7f529d939d80
  7281 ms  0x6a43 PK11_Derive()
  7281 ms  0x6a43 basekey:0x7f529d939d80
  7281 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7281 ms  0x6a43 ret:0x7f529d939c00
  7281 ms  0x6a43 PK11_PubDeriveWithKDF()
  7281 ms  0x6a43 seckey:0x7f52ae742020
  7281 ms     | 0x6a43 EC_ValidatePublicKey()
  7281 ms     | 0x6a43 ret:0x0
  7281 ms  0x6a43 ret:0x7f529d939d80
  7281 ms  SECKEY_ECParamsToKeySize()
  7281 ms  0x6a43 ret:0xff
  7281 ms  0x6a43 PK11_DeriveWithFlags()
  7281 ms  0x6a43 basekey:0x7f529d939c00
  7281 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7281 ms  0x6a43 ret:0x7f529d938380
  7281 ms  0x6a43 PK11_Derive()
  7281 ms  0x6a43 basekey:0x7f529d939d80
  7281 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7281 ms  0x6a43 ret:0x7f529d938100
  7281 ms  0x6a43 PK11_DeriveWithFlags()
  7281 ms  0x6a43 basekey:0x7f529d938100
  7281 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7281 ms  0x6a43 ret:0x7f529d939c00
  7281 ms  0x6a43 PK11_DeriveWithFlags()
  7281 ms  0x6a43 basekey:0x7f529d938100
  7281 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7281 ms  0x6a43 ret:0x7f529d939d80
  7282 ms  0x6a43 PK11_DeriveWithFlags()
  7282 ms  0x6a43 basekey:0x7f529d938100
  7282 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7282 ms  0x6a43 ret:0x7f529d938380
  7282 ms  0x6a43 PK11_Derive()
  7282 ms  0x6a43 basekey:0x7f52b03bc880
  7282 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7282 ms  0x6a43 ret:0x7f52ae47f300
  7282 ms  0x6a43 PK11_DeriveWithFlags()
  7282 ms  0x6a43 basekey:0x7f529d939d80
  7282 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7282 ms  0x6a43 ret:0x7f529d938100
  7282 ms  0x6a43 PK11_DeriveWithFlags()
  7282 ms  0x6a43 basekey:0x7f529d939d80
  7282 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7282 ms  0x6a43 ret:0x7f529d938380
           /* TID 0x6ae0 */
  7282 ms  0x6ae0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7282 ms  0x6ae0 ret:0x0
  7282 ms  0x6ae0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7282 ms  0x6ae0 ret:0x0
           /* TID 0x6a43 */
  7283 ms  0x6a43 PK11_DeriveWithFlags()
  7283 ms  0x6a43 basekey:0x7f529d939d80
  7283 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7283 ms  0x6a43 ret:0x7f529d938380
  7283 ms  0x6a43 PK11_Encrypt()
  7283 ms  0x6a43 symkey:0x7f529d939c80
  7283 ms  0x6a43 SSL_AuthCertificateComplete()
  7283 ms  0x6a43 fd:0x7f529d99dfd0
  7283 ms  0x6a43 err:0x0
  7283 ms     | 0x6a43 PK11_DeriveWithFlags()
  7283 ms     | 0x6a43 basekey:0x7f529d939980
  7283 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7283 ms     | 0x6a43 ret:0x7f529d938380
  7283 ms     | 0x6a43 PK11_DeriveWithFlags()
  7283 ms     | 0x6a43 basekey:0x7f529d939980
  7283 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7283 ms     | 0x6a43 ret:0x7f52b03bc880
  7283 ms     | 0x6a43 PK11_DeriveWithFlags()
  7283 ms     | 0x6a43 basekey:0x7f529d939980
  7283 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7283 ms     | 0x6a43 ret:0x7f52ae472080
  7283 ms     | 0x6a43 PK11_DeriveWithFlags()
  7283 ms     | 0x6a43 basekey:0x7f529d939a00
  7283 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7283 ms     | 0x6a43 ret:0x7f529d939680
  7283 ms     | 0x6a43 PK11_DeriveWithFlags()
  7283 ms     | 0x6a43 basekey:0x7f529d939a00
  7283 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7283 ms     | 0x6a43 ret:0x7f529d939d00
  7283 ms     | 0x6a43 PK11_DeriveWithFlags()
  7283 ms     | 0x6a43 basekey:0x7f52b03bc880
  7283 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7283 ms     | 0x6a43 ret:0x7f529d939d00
  7283 ms     | 0x6a43 PK11_DeriveWithFlags()
  7283 ms     | 0x6a43 basekey:0x7f52b03bc880
  7283 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7283 ms     | 0x6a43 ret:0x7f529d939e00
  7283 ms     | 0x6a43 PK11_DeriveWithFlags()
  7283 ms     | 0x6a43 basekey:0x7f529d939a00
  7283 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7283 ms     | 0x6a43 ret:0x7f52ae472180
  7284 ms     | 0x6a43 PK11_Encrypt()
  7284 ms     | 0x6a43 symkey:0x7f529d939680
  7284 ms     | 0x6a43 PK11_DeriveWithFlags()
  7284 ms     | 0x6a43 basekey:0x7f529d938380
  7284 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7284 ms     | 0x6a43 ret:0x7f52ae472180
  7284 ms     | 0x6a43 PK11_DeriveWithFlags()
  7284 ms     | 0x6a43 basekey:0x7f529d938380
  7284 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7284 ms     | 0x6a43 ret:0x7f529d939e00
  7284 ms     | 0x6a43 PK11_DeriveWithFlags()
  7284 ms     | 0x6a43 basekey:0x7f529d939980
  7284 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7284 ms     | 0x6a43 ret:0x7f529d939680
  7284 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  7284 ms     | 0x6a43 privk:0x7f52ae73d820::7f52ae73d820  20 54 8e 9d                                       T..
  7284 ms     | 0x6a43 privk:0x7f52ae73d820::7f52ae73d820  e5 e5 e5 e5                                      ....
  7284 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  7284 ms     | 0x6a43 privk:0x7f52ae54e820::7f52ae54e820  40 52 8e 9d                                      @R..
  7284 ms     | 0x6a43 privk:0x7f52ae54e820::7f52ae54e820  e5 e5 e5 e5                                      ....
  7284 ms  0x6a43 SSL_AuthCertificateComplete()
  7284 ms  0x6a43 fd:0x7f52ae47e1f0
  7284 ms  0x6a43 err:0x0
  7284 ms     | 0x6a43 PK11_DeriveWithFlags()
  7284 ms     | 0x6a43 basekey:0x7f52ae47f300
  7284 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7284 ms     | 0x6a43 ret:0x7f529d939e80
  7286 ms     | 0x6a43 PK11_DeriveWithFlags()
  7286 ms     | 0x6a43 basekey:0x7f52ae47f300
  7286 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7286 ms     | 0x6a43 ret:0x7f529d939a00
  7286 ms     | 0x6a43 PK11_DeriveWithFlags()
  7286 ms     | 0x6a43 basekey:0x7f52ae47f300
  7286 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7286 ms     | 0x6a43 ret:0x7f529d939980
  7286 ms     | 0x6a43 PK11_DeriveWithFlags()
  7286 ms     | 0x6a43 basekey:0x7f529d939c00
  7286 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7286 ms     | 0x6a43 ret:0x7f529d939e00
  7286 ms     | 0x6a43 PK11_DeriveWithFlags()
  7286 ms     | 0x6a43 basekey:0x7f529d939c00
  7286 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7286 ms     | 0x6a43 ret:0x7f529d9edc80
  7286 ms     | 0x6a43 PK11_DeriveWithFlags()
  7286 ms     | 0x6a43 basekey:0x7f529d939a00
  7286 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7286 ms     | 0x6a43 ret:0x7f529d9edc80
  7286 ms     | 0x6a43 PK11_DeriveWithFlags()
  7286 ms     | 0x6a43 basekey:0x7f529d939a00
  7286 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7286 ms     | 0x6a43 ret:0x7f529d9f9e00
  7286 ms     | 0x6a43 PK11_DeriveWithFlags()
  7286 ms     | 0x6a43 basekey:0x7f529d939c00
  7286 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7286 ms     | 0x6a43 ret:0x7f529d938100
  7286 ms     | 0x6a43 PK11_Encrypt()
  7286 ms     | 0x6a43 symkey:0x7f529d939e00
  7286 ms     | 0x6a43 PK11_DeriveWithFlags()
  7286 ms     | 0x6a43 basekey:0x7f529d939e80
  7286 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7286 ms     | 0x6a43 ret:0x7f529d938100
  7286 ms     | 0x6a43 PK11_DeriveWithFlags()
  7286 ms     | 0x6a43 basekey:0x7f529d939e80
  7286 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7286 ms     | 0x6a43 ret:0x7f529d9f9e00
  7286 ms     | 0x6a43 PK11_DeriveWithFlags()
  7286 ms     | 0x6a43 basekey:0x7f52ae47f300
  7286 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7286 ms     | 0x6a43 ret:0x7f529d939e00
  7286 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  7286 ms     | 0x6a43 privk:0x7f52ae748820::7f52ae748820  80 58 8e 9d                                      .X..
  7286 ms     | 0x6a43 privk:0x7f52ae748820::7f52ae748820  e5 e5 e5 e5                                      ....
  7287 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  7287 ms     | 0x6a43 privk:0x7f52ae742020::7f52ae742020  60 55 8e 9d                                      `U..
  7287 ms     | 0x6a43 privk:0x7f52ae742020::7f52ae742020  e5 e5 e5 e5                                      ....
  7287 ms  0x6a43 PK11_Encrypt()
  7287 ms  0x6a43 symkey:0x7f52ae472280
           /* TID 0x6a4b */
  7290 ms  0x6a4b PR_Close()
  7290 ms  0x6a4b fd:0x7f52ae5cd8e0
  7291 ms  0x6a4b PR_Close()
  7291 ms  0x6a4b fd:0x7f529d774970
           /* TID 0x6a43 */
  7292 ms  0x6a43 PK11_Encrypt()
  7292 ms  0x6a43 symkey:0x7f52ae472180
  7292 ms  0x6a43 PK11_Encrypt()
  7292 ms  0x6a43 symkey:0x7f529d938100
  7292 ms  0x6a43 PK11_Encrypt()
  7292 ms  0x6a43 symkey:0x7f52ae472280
  7292 ms  0x6a43 PK11_Encrypt()
  7292 ms  0x6a43 symkey:0x7f52ae472280
  7294 ms  0x6a43 PK11_Encrypt()
  7294 ms  0x6a43 symkey:0x7f529d938200
  7307 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7307 ms  0x6a43 cx:0x7f52ae4f0e68
  7307 ms     | 0x6a43 EC_ValidatePublicKey()
  7307 ms     | 0x6a43 ret:0x0
  7307 ms  0x6a43 ret:0x7f52ae741820::7f52ae741820  50 51 8e 9d                                      PQ..
  7308 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7308 ms  0x6a43 cx:0x7f52ae4f0e68
  7308 ms     | 0x6a43 EC_ValidatePublicKey()
  7319 ms     | 0x6a43 ret:0x0
  7319 ms  0x6a43 ret:0x7f52ae745820::7f52ae745820  e0 e7 8c 9d                                      ....
  7320 ms  0x6a43 PK11_Encrypt()
  7320 ms  0x6a43 symkey:0x7f529d938200
  7321 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7321 ms  0x6a43 cx:0x7f52b90de648
  7321 ms     | 0x6a43 EC_ValidatePublicKey()
  7321 ms     | 0x6a43 ret:0x0
  7321 ms  0x6a43 ret:0x7f52b030a020::7f52b030a020  c0 54 8e 9d                                      .T..
  7322 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7322 ms  0x6a43 cx:0x7f52b90de648
  7322 ms     | 0x6a43 EC_ValidatePublicKey()
  7324 ms     | 0x6a43 ret:0x0
  7324 ms  0x6a43 ret:0x7f52b030c020::7f52b030c020  90 57 8e 9d                                      .W..
  7330 ms  0x6a43 PK11_Encrypt()
  7330 ms  0x6a43 symkey:0x7f529d938200
  7330 ms  0x6a43 PK11_DeriveWithFlags()
  7330 ms  0x6a43 basekey:0x7f529d939700
  7330 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7330 ms  0x6a43 ret:0x7f529d939d80
  7330 ms  0x6a43 PK11_DeriveWithFlags()
  7330 ms  0x6a43 basekey:0x7f529d939700
  7330 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7330 ms  0x6a43 ret:0x7f529d939d80
  7336 ms  0x6a43 PK11_Encrypt()
  7336 ms  0x6a43 symkey:0x7f529d938200
  7337 ms  0x6a43 PK11_Encrypt()
  7337 ms  0x6a43 symkey:0x7f529d938200
  7343 ms  0x6a43 PK11_DeriveWithFlags()
  7343 ms  0x6a43 basekey:0x7f529d938280
  7343 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7343 ms  0x6a43 ret:0x7f529d939d80
  7343 ms  0x6a43 PK11_DeriveWithFlags()
  7343 ms  0x6a43 basekey:0x7f529d938280
  7343 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7343 ms  0x6a43 ret:0x7f529d939d80
  7343 ms  0x6a43 PR_Close()
  7343 ms  0x6a43 fd:0x7f52ae47e190
  7343 ms     | 0x6a43 PK11_Encrypt()
  7343 ms     | 0x6a43 symkey:0x7f529d939c80
  7350 ms  0x6a43 PK11_Encrypt()
  7350 ms  0x6a43 symkey:0x7f529d938200
  7351 ms  0x6a43 PK11_DeriveWithFlags()
  7351 ms  0x6a43 basekey:0x7f529d939680
  7351 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7351 ms  0x6a43 ret:0x7f529d939780
  7351 ms  0x6a43 PK11_DeriveWithFlags()
  7351 ms  0x6a43 basekey:0x7f529d939680
  7351 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7351 ms  0x6a43 ret:0x7f529d939780
  7351 ms  0x6a43 PR_Close()
  7351 ms  0x6a43 fd:0x7f529d99dfd0
  7351 ms     | 0x6a43 PK11_Encrypt()
  7351 ms     | 0x6a43 symkey:0x7f52ae472180
  7354 ms  0x6a43 PK11_DeriveWithFlags()
  7354 ms  0x6a43 basekey:0x7f529d939e00
  7354 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7354 ms  0x6a43 ret:0x7f52ae472080
  7354 ms  0x6a43 PR_Close()
  7354 ms  0x6a43 fd:0x7f52ae47e1f0
  7354 ms     | 0x6a43 PK11_Encrypt()
  7354 ms     | 0x6a43 symkey:0x7f529d938100
           /* TID 0x6a4b */
  7363 ms  0x6a4b PR_Close()
  7363 ms  0x6a4b fd:0x7f529d75ddf0
           /* TID 0x6a43 */
  7387 ms  0x6a43 PK11_Derive()
  7387 ms  0x6a43 basekey:0x7f529d939980
  7387 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7387 ms  0x6a43 ret:0x7f529d939a00
  7387 ms  0x6a43 PK11_PubDeriveWithKDF()
  7387 ms  0x6a43 seckey:0x7f52ae741820
  7387 ms     | 0x6a43 EC_ValidatePublicKey()
  7387 ms     | 0x6a43 ret:0x0
  7388 ms  0x6a43 ret:0x7f529d939980
  7388 ms  SECKEY_ECParamsToKeySize()
  7388 ms  0x6a43 ret:0xff
  7388 ms  0x6a43 PK11_DeriveWithFlags()
  7388 ms  0x6a43 basekey:0x7f529d939a00
  7388 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7388 ms  0x6a43 ret:0x7f529d939e80
  7388 ms  0x6a43 PK11_Derive()
  7388 ms  0x6a43 basekey:0x7f529d939980
  7388 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7388 ms  0x6a43 ret:0x7f529d939e00
  7388 ms  0x6a43 PK11_DeriveWithFlags()
  7388 ms  0x6a43 basekey:0x7f529d939e00
  7388 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7388 ms  0x6a43 ret:0x7f529d939a00
  7388 ms  0x6a43 PK11_DeriveWithFlags()
  7388 ms  0x6a43 basekey:0x7f529d939e00
  7388 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7388 ms  0x6a43 ret:0x7f529d939980
  7388 ms  0x6a43 PK11_DeriveWithFlags()
  7388 ms  0x6a43 basekey:0x7f529d939e00
  7388 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7388 ms  0x6a43 ret:0x7f529d939e80
  7388 ms  0x6a43 PK11_Derive()
  7388 ms  0x6a43 basekey:0x7f529d9edc80
  7388 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7388 ms  0x6a43 ret:0x7f529d938100
  7388 ms  0x6a43 PK11_DeriveWithFlags()
  7388 ms  0x6a43 basekey:0x7f529d939980
  7388 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7388 ms  0x6a43 ret:0x7f529d939e00
  7388 ms  0x6a43 PK11_DeriveWithFlags()
  7388 ms  0x6a43 basekey:0x7f529d939980
  7388 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7388 ms  0x6a43 ret:0x7f529d939e80
  7389 ms  0x6a43 PK11_DeriveWithFlags()
  7389 ms  0x6a43 basekey:0x7f529d939980
  7389 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7389 ms  0x6a43 ret:0x7f529d939e80
  7389 ms  0x6a43 SSL_AuthCertificateComplete()
  7389 ms  0x6a43 fd:0x7f52ae76f3d0
  7389 ms  0x6a43 err:0x0
  7389 ms     | 0x6a43 PK11_DeriveWithFlags()
  7389 ms     | 0x6a43 basekey:0x7f529d938100
  7389 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7389 ms     | 0x6a43 ret:0x7f529d939e80
  7389 ms     | 0x6a43 PK11_DeriveWithFlags()
  7389 ms     | 0x6a43 basekey:0x7f529d938100
  7389 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7389 ms     | 0x6a43 ret:0x7f529d9edc80
  7389 ms     | 0x6a43 PK11_DeriveWithFlags()
  7389 ms     | 0x6a43 basekey:0x7f529d938100
  7389 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7389 ms     | 0x6a43 ret:0x7f52ae472080
  7389 ms     | 0x6a43 PK11_DeriveWithFlags()
  7389 ms     | 0x6a43 basekey:0x7f529d939a00
  7389 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7389 ms     | 0x6a43 ret:0x7f52b03bc880
  7389 ms     | 0x6a43 PK11_DeriveWithFlags()
  7389 ms     | 0x6a43 basekey:0x7f529d939a00
  7389 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7389 ms     | 0x6a43 ret:0x7f529d938380
  7389 ms     | 0x6a43 PK11_DeriveWithFlags()
  7389 ms     | 0x6a43 basekey:0x7f529d9edc80
  7389 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7389 ms     | 0x6a43 ret:0x7f529d938380
  7389 ms     | 0x6a43 PK11_DeriveWithFlags()
  7389 ms     | 0x6a43 basekey:0x7f529d9edc80
  7389 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7389 ms     | 0x6a43 ret:0x7f529d939680
  7389 ms     | 0x6a43 PK11_DeriveWithFlags()
  7389 ms     | 0x6a43 basekey:0x7f529d939a00
  7389 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7389 ms     | 0x6a43 ret:0x7f529d939e00
  7389 ms     | 0x6a43 PK11_Encrypt()
  7389 ms     | 0x6a43 symkey:0x7f52b03bc880
  7389 ms     | 0x6a43 PK11_DeriveWithFlags()
  7389 ms     | 0x6a43 basekey:0x7f529d939e80
  7389 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7389 ms     | 0x6a43 ret:0x7f529d939e00
  7389 ms     | 0x6a43 PK11_DeriveWithFlags()
  7389 ms     | 0x6a43 basekey:0x7f529d939e80
  7389 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7389 ms     | 0x6a43 ret:0x7f529d939680
  7389 ms     | 0x6a43 PK11_DeriveWithFlags()
  7389 ms     | 0x6a43 basekey:0x7f529d938100
  7389 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7389 ms     | 0x6a43 ret:0x7f52b03bc880
  7389 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  7389 ms     | 0x6a43 privk:0x7f52ae745820::7f52ae745820  e0 e7 8c 9d                                      ....
  7390 ms     | 0x6a43 privk:0x7f52ae745820::7f52ae745820  e5 e5 e5 e5                                      ....
  7390 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  7390 ms     | 0x6a43 privk:0x7f52ae741820::7f52ae741820  50 51 8e 9d                                      PQ..
  7390 ms     | 0x6a43 privk:0x7f52ae741820::7f52ae741820  e5 e5 e5 e5                                      ....
  7390 ms  0x6a43 PK11_Encrypt()
  7390 ms  0x6a43 symkey:0x7f529d939e00
  7390 ms  0x6a43 PK11_Encrypt()
  7390 ms  0x6a43 symkey:0x7f529d939e00
  7392 ms  0x6a43 PK11_Derive()
  7392 ms  0x6a43 basekey:0x7f529d939980
  7392 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7392 ms  0x6a43 ret:0x7f529d939a00
  7392 ms  0x6a43 PK11_PubDeriveWithKDF()
  7392 ms  0x6a43 seckey:0x7f52b030a020
  7392 ms     | 0x6a43 EC_ValidatePublicKey()
  7392 ms     | 0x6a43 ret:0x0
  7392 ms  0x6a43 ret:0x7f529d939980
  7392 ms  SECKEY_ECParamsToKeySize()
  7392 ms  0x6a43 ret:0xff
  7392 ms  0x6a43 PK11_DeriveWithFlags()
  7392 ms  0x6a43 basekey:0x7f529d939a00
  7392 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7392 ms  0x6a43 ret:0x7f529d938100
  7392 ms  0x6a43 PK11_Derive()
  7392 ms  0x6a43 basekey:0x7f529d939980
  7392 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7392 ms  0x6a43 ret:0x7f529d939680
  7392 ms  0x6a43 PK11_DeriveWithFlags()
  7392 ms  0x6a43 basekey:0x7f529d939680
  7392 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7392 ms  0x6a43 ret:0x7f529d939a00
  7392 ms  0x6a43 PK11_DeriveWithFlags()
  7392 ms  0x6a43 basekey:0x7f529d939680
  7392 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7393 ms  0x6a43 ret:0x7f529d939980
  7393 ms  0x6a43 PK11_DeriveWithFlags()
  7393 ms  0x6a43 basekey:0x7f529d939680
  7393 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7393 ms  0x6a43 ret:0x7f529d938100
  7393 ms  0x6a43 PK11_Derive()
  7393 ms  0x6a43 basekey:0x7f529d939d00
  7393 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7393 ms  0x6a43 ret:0x7f52ae472180
  7393 ms  0x6a43 PK11_DeriveWithFlags()
  7393 ms  0x6a43 basekey:0x7f529d939980
  7393 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7393 ms  0x6a43 ret:0x7f529d939680
  7393 ms  0x6a43 PK11_DeriveWithFlags()
  7393 ms  0x6a43 basekey:0x7f529d939980
  7393 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7393 ms  0x6a43 ret:0x7f529d938100
  7393 ms  0x6a43 PK11_DeriveWithFlags()
  7393 ms  0x6a43 basekey:0x7f529d939980
  7393 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7393 ms  0x6a43 ret:0x7f529d938100
  7393 ms  0x6a43 SSL_AuthCertificateComplete()
  7393 ms  0x6a43 fd:0x7f52ae76fa60
  7393 ms  0x6a43 err:0x0
  7393 ms     | 0x6a43 PK11_DeriveWithFlags()
  7393 ms     | 0x6a43 basekey:0x7f52ae472180
  7393 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7393 ms     | 0x6a43 ret:0x7f529d938100
  7393 ms     | 0x6a43 PK11_DeriveWithFlags()
  7393 ms     | 0x6a43 basekey:0x7f52ae472180
  7393 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7394 ms     | 0x6a43 ret:0x7f529d939d00
  7394 ms     | 0x6a43 PK11_DeriveWithFlags()
  7394 ms     | 0x6a43 basekey:0x7f52ae472180
  7394 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7394 ms     | 0x6a43 ret:0x7f529d939780
  7394 ms     | 0x6a43 PK11_DeriveWithFlags()
  7394 ms     | 0x6a43 basekey:0x7f529d939a00
  7394 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7394 ms     | 0x6a43 ret:0x7f52ae472200
  7394 ms     | 0x6a43 PK11_DeriveWithFlags()
  7394 ms     | 0x6a43 basekey:0x7f529d939a00
  7394 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7394 ms     | 0x6a43 ret:0x7f529d9edb00
  7394 ms     | 0x6a43 PK11_DeriveWithFlags()
  7394 ms     | 0x6a43 basekey:0x7f529d939d00
  7394 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7394 ms     | 0x6a43 ret:0x7f529d9edb00
  7394 ms     | 0x6a43 PK11_DeriveWithFlags()
  7394 ms     | 0x6a43 basekey:0x7f529d939d00
  7394 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7394 ms     | 0x6a43 ret:0x7f529d938280
  7394 ms     | 0x6a43 PK11_DeriveWithFlags()
  7394 ms     | 0x6a43 basekey:0x7f529d939a00
  7394 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7394 ms     | 0x6a43 ret:0x7f529d939680
  7394 ms     | 0x6a43 PK11_Encrypt()
  7394 ms     | 0x6a43 symkey:0x7f52ae472200
  7394 ms     | 0x6a43 PK11_DeriveWithFlags()
  7394 ms     | 0x6a43 basekey:0x7f529d938100
  7394 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7394 ms     | 0x6a43 ret:0x7f529d939680
  7394 ms     | 0x6a43 PK11_DeriveWithFlags()
  7394 ms     | 0x6a43 basekey:0x7f529d938100
  7394 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7394 ms     | 0x6a43 ret:0x7f529d938280
  7394 ms     | 0x6a43 PK11_DeriveWithFlags()
  7394 ms     | 0x6a43 basekey:0x7f52ae472180
  7394 ms     |    | 0x6a43 PK11_DeriveWithTemplate()
  7394 ms     | 0x6a43 ret:0x7f52ae472200
  7394 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  7394 ms     | 0x6a43 privk:0x7f52b030c020::7f52b030c020  90 57 8e 9d                                      .W..
  7394 ms     | 0x6a43 privk:0x7f52b030c020::7f52b030c020  e5 e5 e5 e5                                      ....
  7394 ms     | 0x6a43 SECKEY_DestroyPrivateKey()
  7394 ms     | 0x6a43 privk:0x7f52b030a020::7f52b030a020  c0 54 8e 9d                                      .T..
  7394 ms     | 0x6a43 privk:0x7f52b030a020::7f52b030a020  e5 e5 e5 e5                                      ....
  7395 ms  0x6a43 PK11_Encrypt()
  7395 ms  0x6a43 symkey:0x7f529d939680
  7395 ms  0x6a43 PK11_Encrypt()
  7395 ms  0x6a43 symkey:0x7f529d939e00
  7398 ms  0x6a43 PK11_Encrypt()
  7398 ms  0x6a43 symkey:0x7f52ae472280
           /* TID 0x6a4b */
  7400 ms  0x6a4b PR_Close()
  7400 ms  0x6a4b fd:0x7f529d75df10
  7426 ms  0x6a4b PR_Close()
  7426 ms  0x6a4b fd:0x7f52ae47e3d0
  7430 ms  0x6a4b PR_Close()
  7430 ms  0x6a4b fd:0x7f529d75df10
  7431 ms  0x6a4b PR_Close()
  7431 ms  0x6a4b fd:0x7f529d75df10
  7433 ms  0x6a4b PR_Close()
  7433 ms  0x6a4b fd:0x7f529d75df10
  7434 ms  0x6a4b PR_Close()
  7434 ms  0x6a4b fd:0x7f529d75df10
           /* TID 0x6a43 */
  7457 ms  0x6a43 PK11_DeriveWithFlags()
  7457 ms  0x6a43 basekey:0x7f52b03bc880
  7457 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7457 ms  0x6a43 ret:0x7f529d939980
  7457 ms  0x6a43 PK11_DeriveWithFlags()
  7457 ms  0x6a43 basekey:0x7f52b03bc880
  7457 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7457 ms  0x6a43 ret:0x7f529d939980
  7461 ms  0x6a43 PK11_DeriveWithFlags()
  7461 ms  0x6a43 basekey:0x7f52ae472200
  7461 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7461 ms  0x6a43 ret:0x7f529d939980
  7461 ms  0x6a43 PK11_DeriveWithFlags()
  7461 ms  0x6a43 basekey:0x7f52ae472200
  7461 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7461 ms  0x6a43 ret:0x7f529d939980
  7461 ms  0x6a43 PR_Close()
  7461 ms  0x6a43 fd:0x7f52ae76fa60
  7461 ms     | 0x6a43 PK11_Encrypt()
  7461 ms     | 0x6a43 symkey:0x7f529d939680
  7499 ms  0x6a43 PK11_Encrypt()
  7499 ms  0x6a43 symkey:0x7f529d938200
  7524 ms  0x6a43 PK11_Encrypt()
  7524 ms  0x6a43 symkey:0x7f529d939e00
           /* TID 0x6a4b */
  7525 ms  0x6a4b PR_Close()
  7525 ms  0x6a4b fd:0x7f529d75dca0
           /* TID 0x6a43 */
  7540 ms  0x6a43 SSL_ImportFD()
  7540 ms  0x6a43 ret:0x7f52af9b1a30
  7540 ms  0x6a43 SSL_AuthCertificateHook()
  7540 ms  0x6a43 fd:0x7f52af9b1a30
  7540 ms  0x6a43 ret:0x0
  7540 ms  0x6a43 PR_Connect()
  7540 ms  0x6a43 fd:0x7f52af9b1a30
  7558 ms  0x6a43 SSL_ImportFD()
  7558 ms  0x6a43 ret:0x7f52afcfb130
  7558 ms  0x6a43 SSL_AuthCertificateHook()
  7558 ms  0x6a43 fd:0x7f52afcfb130
  7558 ms  0x6a43 ret:0x0
  7558 ms  0x6a43 PR_Connect()
  7558 ms  0x6a43 fd:0x7f52afcfb130
  7561 ms  0x6a43 SSL_ImportFD()
  7561 ms  0x6a43 ret:0x7f52afcfb640
  7561 ms  0x6a43 SSL_AuthCertificateHook()
  7561 ms  0x6a43 fd:0x7f52afcfb640
  7561 ms  0x6a43 ret:0x0
  7561 ms  0x6a43 PR_Connect()
  7561 ms  0x6a43 fd:0x7f52afcfb640
           /* TID 0x6a4b */
  7567 ms  0x6a4b PR_Close()
  7567 ms  0x6a4b fd:0x7f52ae76f070
  7592 ms  0x6a4b PR_Close()
  7592 ms  0x6a4b fd:0x7f52ae4e18b0
  7602 ms  0x6a4b PR_Close()
  7602 ms  0x6a4b fd:0x7f529d75df70
  7602 ms  0x6a4b PR_Close()
  7602 ms  0x6a4b fd:0x7f52ae4e1850
  7602 ms  0x6a4b PR_Close()
  7602 ms  0x6a4b fd:0x7f52ae76f8b0
           /* TID 0x6a43 */
  7641 ms  0x6a43 SSL_ImportFD()
  7641 ms  0x6a43 ret:0x7f52ae47e5e0
  7641 ms  0x6a43 SSL_AuthCertificateHook()
  7641 ms  0x6a43 fd:0x7f52ae47e5e0
  7641 ms  0x6a43 ret:0x0
  7641 ms  0x6a43 PR_Connect()
  7641 ms  0x6a43 fd:0x7f52ae47e5e0
           /* TID 0x6a4b */
  7675 ms  0x6a4b PR_Close()
  7675 ms  0x6a4b fd:0x7f529d75df70
  7738 ms  0x6a4b PR_Close()
  7738 ms  0x6a4b fd:0x7f529d75de80
           /* TID 0x6a43 */
  7745 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7745 ms  0x6a43 cx:0x7f52ae4f07e8
  7746 ms     | 0x6a43 EC_ValidatePublicKey()
  7746 ms     | 0x6a43 ret:0x0
  7746 ms  0x6a43 ret:0x7f52ae54e820::7f52ae54e820  80 5d 8e 9d                                      .]..
  7747 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7747 ms  0x6a43 cx:0x7f52ae4f07e8
  7748 ms     | 0x6a43 EC_ValidatePublicKey()
  7758 ms     | 0x6a43 ret:0x0
  7758 ms  0x6a43 ret:0x7f52aeba7820::7f52aeba7820  20 54 8e 9d                                       T..
  7766 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7766 ms  0x6a43 cx:0x7f52ae4f0cc8
  7767 ms     | 0x6a43 EC_ValidatePublicKey()
  7767 ms     | 0x6a43 ret:0x0
  7767 ms  0x6a43 ret:0x7f52b030c020::7f52b030c020  20 6e 47 ae                                       nG.
  7767 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7767 ms  0x6a43 cx:0x7f52ae4f0cc8
  7768 ms     | 0x6a43 EC_ValidatePublicKey()
  7770 ms     | 0x6a43 ret:0x0
  7770 ms  0x6a43 ret:0x7f52b34a9820::7f52b34a9820  f0 a1 4b ae                                      ..K.
  7771 ms  0x6a43 SSL_ImportFD()
  7771 ms  0x6a43 ret:0x7f52ae76f2e0
  7771 ms  0x6a43 SSL_AuthCertificateHook()
  7771 ms  0x6a43 fd:0x7f52ae76f2e0
  7771 ms  0x6a43 ret:0x0
  7771 ms  0x6a43 PR_Connect()
  7771 ms  0x6a43 fd:0x7f52ae76f2e0
  7771 ms  0x6a43 SSL_ImportFD()
  7771 ms  0x6a43 ret:0x7f52ae4e1340
  7771 ms  0x6a43 SSL_AuthCertificateHook()
  7771 ms  0x6a43 fd:0x7f52ae4e1340
  7772 ms  0x6a43 ret:0x0
  7772 ms  0x6a43 PR_Connect()
  7772 ms  0x6a43 fd:0x7f52ae4e1340
  7790 ms  0x6a43 SSL_ImportFD()
  7790 ms  0x6a43 ret:0x7f52afeb60d0
  7790 ms  0x6a43 SSL_AuthCertificateHook()
  7790 ms  0x6a43 fd:0x7f52afeb60d0
  7790 ms  0x6a43 ret:0x0
  7790 ms  0x6a43 PR_Connect()
  7790 ms  0x6a43 fd:0x7f52afeb60d0
  7862 ms  0x6a43 SSL_ImportFD()
  7862 ms  0x6a43 ret:0x7f52ae76fc40
  7862 ms  0x6a43 SSL_AuthCertificateHook()
  7862 ms  0x6a43 fd:0x7f52ae76fc40
  7862 ms  0x6a43 ret:0x0
  7862 ms  0x6a43 PR_Connect()
  7862 ms  0x6a43 fd:0x7f52ae76fc40
  7863 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7863 ms  0x6a43 cx:0x7f52b90de648
  7865 ms     | 0x6a43 EC_ValidatePublicKey()
  7865 ms     | 0x6a43 ret:0x0
  7865 ms  0x6a43 ret:0x7f52b4407820::7f52b4407820  60 c0 5d ae                                      `.].
  7865 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7865 ms  0x6a43 cx:0x7f52b90de648
  7867 ms     | 0x6a43 EC_ValidatePublicKey()
  7872 ms     | 0x6a43 ret:0x0
  7872 ms  0x6a43 ret:0x7f52b4607020::7f52b4607020  e0 c2 5d ae                                      ..].
  7891 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7891 ms  0x6a43 cx:0x7f52ae4effc8
  7893 ms     | 0x6a43 EC_ValidatePublicKey()
  7893 ms     | 0x6a43 ret:0x0
  7893 ms  0x6a43 ret:0x7f52b460b820::7f52b460b820  70 c4 5d ae                                      p.].
  7893 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7893 ms  0x6a43 cx:0x7f52ae4effc8
  7895 ms     | 0x6a43 EC_ValidatePublicKey()
  7899 ms     | 0x6a43 ret:0x0
  7899 ms  0x6a43 ret:0x7f52b4610020::7f52b4610020  f0 c6 5d ae                                      ..].
  7953 ms  SECKEY_ECParamsToKeySize()
  7954 ms  0x6a43 ret:0x100
  7954 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7954 ms  0x6a43 cx:0x7f52ae4f07e8
  7956 ms     | 0x6a43 EC_ValidatePublicKey()
  7964 ms     | 0x6a43 ret:0x0
  7964 ms  0x6a43 ret:0x7f52b47a5820::7f52b47a5820  b0 cf 5d ae                                      ..].
  7965 ms  0x6a43 PK11_PubDeriveWithKDF()
  7965 ms  0x6a43 seckey:0x7f52b47a5820
  7965 ms     | 0x6a43 EC_ValidatePublicKey()
  7969 ms     | 0x6a43 ret:0x0
  7974 ms  0x6a43 ret:0x7f529d939780
  7974 ms  0x6a43 PK11_DeriveWithFlags()
  7974 ms  0x6a43 basekey:0x7f529d939780
  7974 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7974 ms  0x6a43 ret:0x7f529d939d00
  7974 ms  0x6a43 PK11_Derive()
  7974 ms  0x6a43 basekey:0x7f529d939d00
  7974 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7974 ms  0x6a43 ret:0x7f529d938100
  7974 ms  0x6a43 SECKEY_DestroyPrivateKey()
  7974 ms  0x6a43 privk:0x7f52b47a5820::7f52b47a5820  b0 cf 5d ae                                      ..].
  7974 ms  0x6a43 privk:0x7f52b47a5820::7f52b47a5820  e5 e5 e5 e5                                      ....
  7974 ms  0x6a43 PK11_Encrypt()
  7974 ms  0x6a43 symkey:0x7f52ae5edd00
  7977 ms  SECKEY_ECParamsToKeySize()
  7977 ms  0x6a43 ret:0x100
  7977 ms  0x6a43 SECKEY_CreateECPrivateKey()
  7977 ms  0x6a43 cx:0x7f52ae4f0cc8
  7979 ms     | 0x6a43 EC_ValidatePublicKey()
  7982 ms     | 0x6a43 ret:0x0
  7982 ms  0x6a43 ret:0x7f52b4a78820::7f52b4a78820  e0 e2 5e ae                                      ..^.
  7982 ms  0x6a43 PK11_PubDeriveWithKDF()
  7982 ms  0x6a43 seckey:0x7f52b4a78820
  7982 ms     | 0x6a43 EC_ValidatePublicKey()
  7985 ms     | 0x6a43 ret:0x0
  7987 ms  0x6a43 ret:0x7f529d939780
  7987 ms  0x6a43 PK11_DeriveWithFlags()
  7987 ms  0x6a43 basekey:0x7f529d939780
  7987 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7987 ms  0x6a43 ret:0x7f52ae472200
  7987 ms  0x6a43 PK11_Derive()
  7987 ms  0x6a43 basekey:0x7f52ae472200
  7987 ms     | 0x6a43 PK11_DeriveWithTemplate()
  7987 ms  0x6a43 ret:0x7f529d9edb00
  7987 ms  0x6a43 SECKEY_DestroyPrivateKey()
  7987 ms  0x6a43 privk:0x7f52b4a78820::7f52b4a78820  e0 e2 5e ae                                      ..^.
  7987 ms  0x6a43 privk:0x7f52b4a78820::7f52b4a78820  e5 e5 e5 e5                                      ....
  7987 ms  0x6a43 PK11_Encrypt()
  7987 ms  0x6a43 symkey:0x7f52ae76c100
           /* TID 0x6adf */
  8001 ms  0x6adf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8001 ms  0x6adf ret:0x0
  8001 ms  0x6adf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8001 ms  0x6adf ret:0x0
           /* TID 0x6a4b */
  8002 ms  0x6a4b PR_Close()
  8002 ms  0x6a4b fd:0x7f52ae76f970
           /* TID 0x6a43 */
  8002 ms  0x6a43 SSL_AuthCertificateComplete()
  8002 ms  0x6a43 fd:0x7f52afcfb130
  8002 ms  0x6a43 err:0x0
  8003 ms  0x6a43 PK11_Encrypt()
  8003 ms  0x6a43 symkey:0x7f52ae5edd00
  8003 ms  0x6a43 PK11_Encrypt()
  8003 ms  0x6a43 symkey:0x7f52ae5edd00
           /* TID 0x6ae0 */
  8014 ms  0x6ae0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8014 ms  0x6ae0 ret:0x0
  8014 ms  0x6ae0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8014 ms  0x6ae0 ret:0x0
           /* TID 0x6a4b */
  8015 ms  0x6a4b PR_Close()
  8015 ms  0x6a4b fd:0x7f52ae76f970
           /* TID 0x6a43 */
  8015 ms  0x6a43 SSL_AuthCertificateComplete()
  8015 ms  0x6a43 fd:0x7f52afcfb640
  8015 ms  0x6a43 err:0x0
  8015 ms  0x6a43 PK11_Encrypt()
  8015 ms  0x6a43 symkey:0x7f52ae76c100
  8015 ms  0x6a43 PK11_Encrypt()
  8015 ms  0x6a43 symkey:0x7f52ae5edd00
  8022 ms  0x6a43 SSL_ImportFD()
  8022 ms  0x6a43 ret:0x7f52afeb6f10
  8022 ms  0x6a43 SSL_AuthCertificateHook()
  8022 ms  0x6a43 fd:0x7f52afeb6f10
  8022 ms  0x6a43 ret:0x0
  8022 ms  0x6a43 PR_Connect()
  8022 ms  0x6a43 fd:0x7f52afeb6f10
  8022 ms  0x6a43 SSL_ImportFD()
  8022 ms  0x6a43 ret:0x7f52b004b2e0
  8022 ms  0x6a43 SSL_AuthCertificateHook()
  8022 ms  0x6a43 fd:0x7f52b004b2e0
  8022 ms  0x6a43 ret:0x0
  8022 ms  0x6a43 PR_Connect()
  8022 ms  0x6a43 fd:0x7f52b004b2e0
  8060 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8060 ms  0x6a43 cx:0x7f52b841c588
  8064 ms     | 0x6a43 EC_ValidatePublicKey()
  8065 ms     | 0x6a43 ret:0x0
  8065 ms  0x6a43 ret:0x7f52b4a78820::7f52b4a78820  80 cd 5d ae                                      ..].
  8065 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8065 ms  0x6a43 cx:0x7f52b841c588
  8067 ms     | 0x6a43 EC_ValidatePublicKey()
  8075 ms     | 0x6a43 ret:0x0
  8075 ms  0x6a43 ret:0x7f52b4a7b820::7f52b4a7b820  b0 e0 5e ae                                      ..^.
  8076 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8076 ms  0x6a43 cx:0x7f52b841c248
  8078 ms     | 0x6a43 EC_ValidatePublicKey()
  8078 ms     | 0x6a43 ret:0x0
  8078 ms  0x6a43 ret:0x7f52b4a7f020::7f52b4a7f020  40 e2 5e ae                                      @.^.
  8078 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8078 ms  0x6a43 cx:0x7f52b841c248
  8083 ms     | 0x6a43 EC_ValidatePublicKey()
  8086 ms     | 0x6a43 ret:0x0
  8086 ms  0x6a43 ret:0x7f52b4a85820::7f52b4a85820  e0 e2 5e ae                                      ..^.
  8091 ms  SECKEY_ECParamsToKeySize()
  8091 ms  0x6a43 ret:0x100
  8091 ms  SECKEY_ECParamsToBasePointOrderLen()
  8091 ms  0x6a43 ret:0x100
  8091 ms  SECKEY_ECParamsToBasePointOrderLen()
  8091 ms  0x6a43 ret:0x100
  8091 ms  0x6a43 EC_ValidatePublicKey()
  8094 ms  0x6a43 ret:0x0
  8097 ms  SECKEY_ECParamsToKeySize()
  8097 ms  0x6a43 ret:0x100
  8097 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8097 ms  0x6a43 cx:0x7f52b90de648
  8098 ms     | 0x6a43 EC_ValidatePublicKey()
  8100 ms     | 0x6a43 ret:0x0
  8100 ms  0x6a43 ret:0x7f52b4d0f820::7f52b4d0f820  90 ec 5e ae                                      ..^.
  8100 ms  0x6a43 PK11_PubDeriveWithKDF()
  8100 ms  0x6a43 seckey:0x7f52b4d0f820
  8100 ms     | 0x6a43 EC_ValidatePublicKey()
  8102 ms     | 0x6a43 ret:0x0
  8104 ms  0x6a43 ret:0x7f529d939780
  8104 ms  0x6a43 PK11_DeriveWithFlags()
  8104 ms  0x6a43 basekey:0x7f529d939780
  8104 ms     | 0x6a43 PK11_DeriveWithTemplate()
  8104 ms  0x6a43 ret:0x7f529d939680
  8104 ms  0x6a43 PK11_Derive()
  8104 ms  0x6a43 basekey:0x7f529d939680
  8104 ms     | 0x6a43 PK11_DeriveWithTemplate()
  8104 ms  0x6a43 ret:0x7f529d939980
  8104 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8104 ms  0x6a43 privk:0x7f52b4d0f820::7f52b4d0f820  90 ec 5e ae                                      ..^.
  8105 ms  0x6a43 privk:0x7f52b4d0f820::7f52b4d0f820  e5 e5 e5 e5                                      ....
  8105 ms  0x6a43 PK11_Encrypt()
  8105 ms  0x6a43 symkey:0x7f52ae76ca00
  8113 ms  0x6a43 SSL_ImportFD()
  8113 ms  0x6a43 ret:0x7f52b004b8b0
  8113 ms  0x6a43 SSL_AuthCertificateHook()
  8113 ms  0x6a43 fd:0x7f52b004b8b0
  8113 ms  0x6a43 ret:0x0
  8113 ms  0x6a43 PR_Connect()
  8113 ms  0x6a43 fd:0x7f52b004b8b0
           /* TID 0x6aa6 */
  8131 ms  0x6aa6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8132 ms  0x6aa6 ret:0x0
  8132 ms  0x6aa6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8132 ms  0x6aa6 ret:0x0
           /* TID 0x6a4b */
  8134 ms  0x6a4b PR_Close()
  8134 ms  0x6a4b fd:0x7f52ae5cde80
           /* TID 0x6a43 */
  8134 ms  0x6a43 SSL_AuthCertificateComplete()
  8134 ms  0x6a43 fd:0x7f52ae47e5e0
  8134 ms  0x6a43 err:0x0
  8135 ms  0x6a43 PK11_Encrypt()
  8135 ms  0x6a43 symkey:0x7f52ae76ca00
  8135 ms  0x6a43 PK11_Encrypt()
  8135 ms  0x6a43 symkey:0x7f52ae76ca00
  8136 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8136 ms  0x6a43 cx:0x7f52b841c728
  8137 ms     | 0x6a43 EC_ValidatePublicKey()
  8137 ms     | 0x6a43 ret:0x0
  8137 ms  0x6a43 ret:0x7f52b4d0f820::7f52b4d0f820  c0 e9 5e ae                                      ..^.
  8137 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8137 ms  0x6a43 cx:0x7f52b841c728
  8139 ms     | 0x6a43 EC_ValidatePublicKey()
  8143 ms     | 0x6a43 ret:0x0
  8143 ms  0x6a43 ret:0x7f52b4d14820::7f52b4d14820  40 ec 5e ae                                      @.^.
  8163 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8163 ms  0x6a43 privk:0x7f52aeba7820::7f52aeba7820  20 54 8e 9d                                       T..
  8164 ms  0x6a43 privk:0x7f52aeba7820::7f52aeba7820  e5 e5 e5 e5                                      ....
  8164 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8164 ms  0x6a43 privk:0x7f52ae54e820::7f52ae54e820  80 5d 8e 9d                                      .]..
  8164 ms  0x6a43 privk:0x7f52ae54e820::7f52ae54e820  e5 e5 e5 e5                                      ....
  8164 ms  0x6a43 PK11_Encrypt()
  8164 ms  0x6a43 symkey:0x7f52ae5edd00
  8168 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8168 ms  0x6a43 cx:0x7f52b841c8c8
  8169 ms     | 0x6a43 EC_ValidatePublicKey()
  8169 ms     | 0x6a43 ret:0x0
  8169 ms  0x6a43 ret:0x7f52ae54e820::7f52ae54e820  f0 61 47 ae                                      .aG.
  8169 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8169 ms  0x6a43 cx:0x7f52b841c8c8
  8171 ms     | 0x6a43 EC_ValidatePublicKey()
  8174 ms     | 0x6a43 ret:0x0
  8174 ms  0x6a43 ret:0x7f52aeba7820::7f52aeba7820  20 ee 5e ae                                       .^.
  8176 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8176 ms  0x6a43 privk:0x7f52b34a9820::7f52b34a9820  f0 a1 4b ae                                      ..K.
  8176 ms  0x6a43 privk:0x7f52b34a9820::7f52b34a9820  e5 e5 e5 e5                                      ....
  8176 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8176 ms  0x6a43 privk:0x7f52b030c020::7f52b030c020  20 6e 47 ae                                       nG.
  8176 ms  0x6a43 privk:0x7f52b030c020::7f52b030c020  e5 e5 e5 e5                                      ....
  8176 ms  0x6a43 PR_Close()
  8176 ms  0x6a43 fd:0x7f52afcfb640
  8177 ms     | 0x6a43 PK11_Encrypt()
  8177 ms     | 0x6a43 symkey:0x7f52ae76c100
  8298 ms  SECKEY_ECParamsToKeySize()
  8298 ms  0x6a43 ret:0x100
  8298 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8298 ms  0x6a43 cx:0x7f52ae4effc8
  8300 ms     | 0x6a43 EC_ValidatePublicKey()
  8304 ms     | 0x6a43 ret:0x0
  8304 ms  0x6a43 ret:0x7f52b030d020::7f52b030d020  f0 a1 4b ae                                      ..K.
  8304 ms  0x6a43 PK11_PubDeriveWithKDF()
  8304 ms  0x6a43 seckey:0x7f52b030d020
  8304 ms     | 0x6a43 EC_ValidatePublicKey()
  8308 ms     | 0x6a43 ret:0x0
  8312 ms  0x6a43 ret:0x7f529d9edb00
  8312 ms  0x6a43 PK11_DeriveWithFlags()
  8312 ms  0x6a43 basekey:0x7f529d9edb00
  8312 ms     | 0x6a43 PK11_DeriveWithTemplate()
  8312 ms  0x6a43 ret:0x7f52ae472200
  8312 ms  0x6a43 PK11_Derive()
  8312 ms  0x6a43 basekey:0x7f52ae472200
  8312 ms     | 0x6a43 PK11_DeriveWithTemplate()
  8312 ms  0x6a43 ret:0x7f529d939780
  8312 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8312 ms  0x6a43 privk:0x7f52b030d020::7f52b030d020  f0 a1 4b ae                                      ..K.
  8312 ms  0x6a43 privk:0x7f52b030d020::7f52b030d020  e5 e5 e5 e5                                      ....
  8313 ms  0x6a43 PK11_Encrypt()
  8313 ms  0x6a43 symkey:0x7f52ae72cc80
  8314 ms  0x6a43 SSL_AuthCertificateComplete()
  8314 ms  0x6a43 fd:0x7f52af9b1a30
  8314 ms  0x6a43 err:0x0
  8314 ms  0x6a43 PK11_Encrypt()
  8314 ms  0x6a43 symkey:0x7f52ae72cc80
  8314 ms  0x6a43 PK11_Encrypt()
  8314 ms  0x6a43 symkey:0x7f52ae72cc80
  8315 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8315 ms  0x6a43 cx:0x7f52b841cf48
  8317 ms     | 0x6a43 EC_ValidatePublicKey()
  8317 ms     | 0x6a43 ret:0x0
  8317 ms  0x6a43 ret:0x7f52b34aa820::7f52b34aa820  b0 a0 4b ae                                      ..K.
  8317 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8317 ms  0x6a43 cx:0x7f52b841cf48
  8318 ms     | 0x6a43 EC_ValidatePublicKey()
  8322 ms     | 0x6a43 ret:0x0
  8322 ms  0x6a43 ret:0x7f52b47a5020::7f52b47a5020  c0 ee 5e ae                                      ..^.
  8323 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8323 ms  0x6a43 privk:0x7f52b4607020::7f52b4607020  e0 c2 5d ae                                      ..].
  8324 ms  0x6a43 privk:0x7f52b4607020::7f52b4607020  e5 e5 e5 e5                                      ....
  8324 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8324 ms  0x6a43 privk:0x7f52b4407820::7f52b4407820  60 c0 5d ae                                      `.].
  8324 ms  0x6a43 privk:0x7f52b4407820::7f52b4407820  e5 e5 e5 e5                                      ....
  8324 ms  0x6a43 PK11_Encrypt()
  8324 ms  0x6a43 symkey:0x7f52ae76ca00
  8325 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8325 ms  0x6a43 cx:0x7f52b841ca68
  8326 ms     | 0x6a43 EC_ValidatePublicKey()
  8326 ms     | 0x6a43 ret:0x0
  8326 ms  0x6a43 ret:0x7f52b4407820::7f52b4407820  b0 c0 5d ae                                      ..].
  8326 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8326 ms  0x6a43 cx:0x7f52b841ca68
  8328 ms     | 0x6a43 EC_ValidatePublicKey()
  8334 ms     | 0x6a43 ret:0x0
  8334 ms  0x6a43 ret:0x7f52b4607020::7f52b4607020  c0 e4 5e ae                                      ..^.
           /* TID 0x6a4b */
  8359 ms  0x6a4b PR_Close()
  8359 ms  0x6a4b fd:0x7f52afcfb730
  8362 ms  0x6a4b PR_Close()
  8362 ms  0x6a4b fd:0x7f52ae47e1f0
           /* TID 0x6a43 */
  8430 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8430 ms  0x6a43 cx:0x7f52b841d0e8
  8432 ms     | 0x6a43 EC_ValidatePublicKey()
  8432 ms     | 0x6a43 ret:0x0
  8432 ms  0x6a43 ret:0x7f52ae44a020::7f52ae44a020  90 ec 5e ae                                      ..^.
  8432 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8432 ms  0x6a43 cx:0x7f52b841d0e8
  8434 ms     | 0x6a43 EC_ValidatePublicKey()
  8438 ms     | 0x6a43 ret:0x0
  8438 ms  0x6a43 ret:0x7f52b461d820::7f52b461d820  60 1a 76 ae                                      `.v.
  8497 ms  SECKEY_ECParamsToKeySize()
  8497 ms  0x6a43 ret:0x100
  8497 ms  SECKEY_ECParamsToBasePointOrderLen()
  8497 ms  0x6a43 ret:0x100
  8497 ms  SECKEY_ECParamsToBasePointOrderLen()
  8497 ms  0x6a43 ret:0x100
  8497 ms  0x6a43 EC_ValidatePublicKey()
  8502 ms  0x6a43 ret:0x0
  8508 ms  SECKEY_ECParamsToKeySize()
  8508 ms  0x6a43 ret:0x100
  8509 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8509 ms  0x6a43 cx:0x7f52b841c8c8
  8511 ms     | 0x6a43 EC_ValidatePublicKey()
  8515 ms     | 0x6a43 ret:0x0
  8515 ms  0x6a43 ret:0x7f52b4d1e020::7f52b4d1e020  80 dd 79 ae                                      ..y.
  8515 ms  0x6a43 PK11_PubDeriveWithKDF()
  8515 ms  0x6a43 seckey:0x7f52b4d1e020
  8515 ms     | 0x6a43 EC_ValidatePublicKey()
  8519 ms     | 0x6a43 ret:0x0
  8522 ms  0x6a43 ret:0x7f529d9edb00
  8522 ms  0x6a43 PK11_DeriveWithFlags()
  8522 ms  0x6a43 basekey:0x7f529d9edb00
  8522 ms     | 0x6a43 PK11_DeriveWithTemplate()
  8522 ms  0x6a43 ret:0x7f529d939a00
  8522 ms  0x6a43 PK11_Derive()
  8522 ms  0x6a43 basekey:0x7f529d939a00
  8522 ms     | 0x6a43 PK11_DeriveWithTemplate()
  8523 ms  0x6a43 ret:0x7f52ae472180
  8523 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8523 ms  0x6a43 privk:0x7f52b4d1e020::7f52b4d1e020  80 dd 79 ae                                      ..y.
  8523 ms  0x6a43 privk:0x7f52b4d1e020::7f52b4d1e020  e5 e5 e5 e5                                      ....
  8523 ms  0x6a43 PK11_Encrypt()
  8523 ms  0x6a43 symkey:0x7f52ae47fb00
  8523 ms  0x6a43 SSL_AuthCertificateComplete()
  8523 ms  0x6a43 fd:0x7f52ae76fc40
  8523 ms  0x6a43 err:0x0
  8524 ms  0x6a43 PK11_Encrypt()
  8524 ms  0x6a43 symkey:0x7f52ae47fb00
  8524 ms  0x6a43 PK11_Encrypt()
  8524 ms  0x6a43 symkey:0x7f52ae47fb00
  8534 ms  SECKEY_ECParamsToKeySize()
  8534 ms  0x6a43 ret:0x100
  8534 ms  SECKEY_ECParamsToBasePointOrderLen()
  8534 ms  0x6a43 ret:0x100
  8534 ms  SECKEY_ECParamsToBasePointOrderLen()
  8534 ms  0x6a43 ret:0x100
  8534 ms  0x6a43 EC_ValidatePublicKey()
  8536 ms  0x6a43 ret:0x0
  8538 ms  SECKEY_ECParamsToKeySize()
  8538 ms  0x6a43 ret:0xff
  8538 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8538 ms  0x6a43 cx:0x7f52b841c588
  8539 ms     | 0x6a43 EC_ValidatePublicKey()
  8539 ms     | 0x6a43 ret:0x0
  8539 ms  0x6a43 ret:0x7f52b4e66820::7f52b4e66820  00 db 79 ae                                      ..y.
  8539 ms  0x6a43 PK11_PubDeriveWithKDF()
  8539 ms  0x6a43 seckey:0x7f52b4e66820
  8539 ms     | 0x6a43 EC_ValidatePublicKey()
  8539 ms     | 0x6a43 ret:0x0
  8543 ms  0x6a43 ret:0x7f529d9edb00
  8543 ms  0x6a43 PK11_DeriveWithFlags()
  8543 ms  0x6a43 basekey:0x7f529d9edb00
  8543 ms     | 0x6a43 PK11_DeriveWithTemplate()
  8544 ms  0x6a43 ret:0x7f529d938280
  8544 ms  0x6a43 PK11_Derive()
  8544 ms  0x6a43 basekey:0x7f529d938280
  8544 ms     | 0x6a43 PK11_DeriveWithTemplate()
  8544 ms  0x6a43 ret:0x7f529d938180
  8544 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8544 ms  0x6a43 privk:0x7f52b4e66820::7f52b4e66820  00 db 79 ae                                      ..y.
  8544 ms  0x6a43 privk:0x7f52b4e66820::7f52b4e66820  e5 e5 e5 e5                                      ....
  8544 ms  0x6a43 PK11_Encrypt()
  8544 ms  0x6a43 symkey:0x7f52ae5ede80
  8545 ms  0x6a43 SSL_AuthCertificateComplete()
  8545 ms  0x6a43 fd:0x7f52ae4e1340
  8545 ms  0x6a43 err:0x0
           /* TID 0x6a4b */
  8547 ms  0x6a4b PR_Close()
  8547 ms  0x6a4b fd:0x7f52ae47e5b0
           /* TID 0x6a43 */
  8549 ms  0x6a43 PK11_Encrypt()
  8549 ms  0x6a43 symkey:0x7f52ae5ede80
  8551 ms  0x6a43 PK11_Encrypt()
  8551 ms  0x6a43 symkey:0x7f52ae5ede80
  8552 ms  SECKEY_ECParamsToKeySize()
  8552 ms  0x6a43 ret:0x100
  8552 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8552 ms  0x6a43 cx:0x7f52b841c728
  8553 ms     | 0x6a43 EC_ValidatePublicKey()
  8554 ms     | 0x6a43 ret:0x0
  8554 ms  0x6a43 ret:0x7f52b4e68020::7f52b4e68020  10 df 79 ae                                      ..y.
  8554 ms  0x6a43 PK11_PubDeriveWithKDF()
  8554 ms  0x6a43 seckey:0x7f52b4e68020
  8554 ms     | 0x6a43 EC_ValidatePublicKey()
  8556 ms     | 0x6a43 ret:0x0
  8557 ms  0x6a43 ret:0x7f529d9edb00
  8557 ms  0x6a43 PK11_DeriveWithFlags()
  8557 ms  0x6a43 basekey:0x7f529d9edb00
  8557 ms     | 0x6a43 PK11_DeriveWithTemplate()
  8557 ms  0x6a43 ret:0x7f529d939c80
  8557 ms  0x6a43 PK11_Derive()
  8557 ms  0x6a43 basekey:0x7f529d939c80
  8557 ms     | 0x6a43 PK11_DeriveWithTemplate()
  8557 ms  0x6a43 ret:0x7f529d939d80
  8557 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8557 ms  0x6a43 privk:0x7f52b4e68020::7f52b4e68020  10 df 79 ae                                      ..y.
  8557 ms  0x6a43 privk:0x7f52b4e68020::7f52b4e68020  e5 e5 e5 e5                                      ....
  8557 ms  0x6a43 PK11_Encrypt()
  8557 ms  0x6a43 symkey:0x7f52ae72d580
  8558 ms  0x6a43 SSL_AuthCertificateComplete()
  8558 ms  0x6a43 fd:0x7f52afeb60d0
  8558 ms  0x6a43 err:0x0
  8558 ms  SECKEY_ECParamsToKeySize()
  8558 ms  0x6a43 ret:0x100
  8558 ms  SECKEY_ECParamsToBasePointOrderLen()
  8558 ms  0x6a43 ret:0x100
  8558 ms  SECKEY_ECParamsToBasePointOrderLen()
  8558 ms  0x6a43 ret:0x100
  8558 ms  0x6a43 EC_ValidatePublicKey()
  8560 ms  0x6a43 ret:0x0
  8562 ms  SECKEY_ECParamsToKeySize()
  8562 ms  0x6a43 ret:0xff
  8562 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8562 ms  0x6a43 cx:0x7f52b841c248
  8563 ms     | 0x6a43 EC_ValidatePublicKey()
  8563 ms     | 0x6a43 ret:0x0
  8563 ms  0x6a43 ret:0x7f52b4e69020::7f52b4e69020  10 df 79 ae                                      ..y.
  8563 ms  0x6a43 PK11_PubDeriveWithKDF()
  8563 ms  0x6a43 seckey:0x7f52b4e69020
  8563 ms     | 0x6a43 EC_ValidatePublicKey()
  8563 ms     | 0x6a43 ret:0x0
  8563 ms  0x6a43 ret:0x7f529d9edb00
  8563 ms  0x6a43 PK11_DeriveWithFlags()
  8563 ms  0x6a43 basekey:0x7f529d9edb00
  8563 ms     | 0x6a43 PK11_DeriveWithTemplate()
  8563 ms  0x6a43 ret:0x7f529d939c00
  8563 ms  0x6a43 PK11_Derive()
  8563 ms  0x6a43 basekey:0x7f529d939c00
  8563 ms     | 0x6a43 PK11_DeriveWithTemplate()
  8563 ms  0x6a43 ret:0x7f52ae47f300
  8563 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8563 ms  0x6a43 privk:0x7f52b4e69020::7f52b4e69020  10 df 79 ae                                      ..y.
  8564 ms  0x6a43 privk:0x7f52b4e69020::7f52b4e69020  e5 e5 e5 e5                                      ....
  8564 ms  0x6a43 PK11_Encrypt()
  8564 ms  0x6a43 symkey:0x7f52ae76bf80
  8565 ms  0x6a43 PK11_Encrypt()
  8565 ms  0x6a43 symkey:0x7f52ae72d580
  8566 ms  0x6a43 SSL_AuthCertificateComplete()
  8566 ms  0x6a43 fd:0x7f52ae76f2e0
  8566 ms  0x6a43 err:0x0
  8566 ms  0x6a43 PK11_Encrypt()
  8566 ms  0x6a43 symkey:0x7f52ae76bf80
  8566 ms  0x6a43 PK11_Encrypt()
  8566 ms  0x6a43 symkey:0x7f52ae5ede80
  8691 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8691 ms  0x6a43 privk:0x7f52b4610020::7f52b4610020  f0 c6 5d ae                                      ..].
  8691 ms  0x6a43 privk:0x7f52b4610020::7f52b4610020  e5 e5 e5 e5                                      ....
  8691 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8691 ms  0x6a43 privk:0x7f52b460b820::7f52b460b820  70 c4 5d ae                                      p.].
  8691 ms  0x6a43 privk:0x7f52b460b820::7f52b460b820  e5 e5 e5 e5                                      ....
  8692 ms  0x6a43 PK11_Encrypt()
  8692 ms  0x6a43 symkey:0x7f52ae72cc80
  8763 ms  SECKEY_ECParamsToKeySize()
  8763 ms  0x6a43 ret:0x100
  8763 ms  SECKEY_ECParamsToBasePointOrderLen()
  8763 ms  0x6a43 ret:0x100
  8763 ms  SECKEY_ECParamsToBasePointOrderLen()
  8763 ms  0x6a43 ret:0x100
  8763 ms  0x6a43 EC_ValidatePublicKey()
  8769 ms  0x6a43 ret:0x0
  8775 ms  SECKEY_ECParamsToKeySize()
  8775 ms  0x6a43 ret:0x100
  8775 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8775 ms  0x6a43 cx:0x7f52b841d0e8
  8777 ms     | 0x6a43 EC_ValidatePublicKey()
  8782 ms     | 0x6a43 ret:0x0
  8782 ms  0x6a43 ret:0x7f52b460c820::7f52b460c820  10 df 79 ae                                      ..y.
  8782 ms  0x6a43 PK11_PubDeriveWithKDF()
  8782 ms  0x6a43 seckey:0x7f52b460c820
  8782 ms     | 0x6a43 EC_ValidatePublicKey()
  8785 ms     | 0x6a43 ret:0x0
  8789 ms  0x6a43 ret:0x7f529d9edb00
  8789 ms  0x6a43 PK11_DeriveWithFlags()
  8789 ms  0x6a43 basekey:0x7f529d9edb00
  8789 ms     | 0x6a43 PK11_DeriveWithTemplate()
  8789 ms  0x6a43 ret:0x7f529d9f9e00
  8789 ms  0x6a43 PK11_Derive()
  8789 ms  0x6a43 basekey:0x7f529d9f9e00
  8789 ms     | 0x6a43 PK11_DeriveWithTemplate()
  8789 ms  0x6a43 ret:0x7f52ae76c700
  8789 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8789 ms  0x6a43 privk:0x7f52b460c820::7f52b460c820  10 df 79 ae                                      ..y.
  8789 ms  0x6a43 privk:0x7f52b460c820::7f52b460c820  e5 e5 e5 e5                                      ....
  8789 ms  0x6a43 PK11_Encrypt()
  8789 ms  0x6a43 symkey:0x7f52aeaccc00
  8790 ms  0x6a43 SSL_AuthCertificateComplete()
  8790 ms  0x6a43 fd:0x7f52b004b8b0
  8790 ms  0x6a43 err:0x0
  8790 ms  0x6a43 PK11_Encrypt()
  8790 ms  0x6a43 symkey:0x7f52aeaccc00
  8791 ms  SECKEY_ECParamsToKeySize()
  8791 ms  0x6a43 ret:0x100
  8791 ms  SECKEY_ECParamsToBasePointOrderLen()
  8791 ms  0x6a43 ret:0x100
  8791 ms  SECKEY_ECParamsToBasePointOrderLen()
  8791 ms  0x6a43 ret:0x100
  8791 ms  0x6a43 EC_ValidatePublicKey()
  8794 ms  0x6a43 ret:0x0
  8797 ms  SECKEY_ECParamsToKeySize()
  8797 ms  0x6a43 ret:0xff
  8797 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8797 ms  0x6a43 cx:0x7f52b841cf48
  8797 ms     | 0x6a43 EC_ValidatePublicKey()
  8797 ms     | 0x6a43 ret:0x0
  8798 ms  0x6a43 ret:0x7f52b4d1c020::7f52b4d1c020  10 df 79 ae                                      ..y.
  8798 ms  0x6a43 PK11_PubDeriveWithKDF()
  8798 ms  0x6a43 seckey:0x7f52b4d1c020
  8798 ms     | 0x6a43 EC_ValidatePublicKey()
  8798 ms     | 0x6a43 ret:0x0
  8798 ms  0x6a43 ret:0x7f529d9edb00
  8798 ms  0x6a43 PK11_DeriveWithFlags()
  8798 ms  0x6a43 basekey:0x7f529d9edb00
  8798 ms     | 0x6a43 PK11_DeriveWithTemplate()
  8798 ms  0x6a43 ret:0x7f52aefc4180
  8798 ms  0x6a43 PK11_Derive()
  8798 ms  0x6a43 basekey:0x7f52aefc4180
  8798 ms     | 0x6a43 PK11_DeriveWithTemplate()
  8799 ms  0x6a43 ret:0x7f52aefc4800
  8799 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8799 ms  0x6a43 privk:0x7f52b4d1c020::7f52b4d1c020  10 df 79 ae                                      ..y.
  8799 ms  0x6a43 privk:0x7f52b4d1c020::7f52b4d1c020  e5 e5 e5 e5                                      ....
  8799 ms  0x6a43 PK11_Encrypt()
  8799 ms  0x6a43 symkey:0x7f52aefc4c00
  8800 ms  0x6a43 SSL_AuthCertificateComplete()
  8800 ms  0x6a43 fd:0x7f52b004b2e0
  8800 ms  0x6a43 err:0x0
  8801 ms  SECKEY_ECParamsToKeySize()
  8801 ms  0x6a43 ret:0x100
  8801 ms  SECKEY_ECParamsToBasePointOrderLen()
  8801 ms  0x6a43 ret:0x100
  8801 ms  SECKEY_ECParamsToBasePointOrderLen()
  8801 ms  0x6a43 ret:0x100
  8801 ms  0x6a43 EC_ValidatePublicKey()
  8803 ms  0x6a43 ret:0x0
  8805 ms  SECKEY_ECParamsToKeySize()
  8805 ms  0x6a43 ret:0xff
  8805 ms  0x6a43 SECKEY_CreateECPrivateKey()
  8805 ms  0x6a43 cx:0x7f52b841ca68
  8806 ms     | 0x6a43 EC_ValidatePublicKey()
  8806 ms     | 0x6a43 ret:0x0
  8806 ms  0x6a43 ret:0x7f52b4e6a020::7f52b4e6a020  30 e3 96 af                                      0...
  8806 ms  0x6a43 PK11_PubDeriveWithKDF()
  8806 ms  0x6a43 seckey:0x7f52b4e6a020
  8806 ms     | 0x6a43 EC_ValidatePublicKey()
  8806 ms     | 0x6a43 ret:0x0
  8806 ms  0x6a43 ret:0x7f529d9edb00
  8806 ms  0x6a43 PK11_DeriveWithFlags()
  8806 ms  0x6a43 basekey:0x7f529d9edb00
  8806 ms     | 0x6a43 PK11_DeriveWithTemplate()
  8807 ms  0x6a43 ret:0x7f52aefc4f00
  8807 ms  0x6a43 PK11_Derive()
  8807 ms  0x6a43 basekey:0x7f52aefc4f00
  8807 ms     | 0x6a43 PK11_DeriveWithTemplate()
  8807 ms  0x6a43 ret:0x7f52af94ae00
  8807 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8807 ms  0x6a43 privk:0x7f52b4e6a020::7f52b4e6a020  30 e3 96 af                                      0...
  8807 ms  0x6a43 privk:0x7f52b4e6a020::7f52b4e6a020  e5 e5 e5 e5                                      ....
  8807 ms  0x6a43 PK11_Encrypt()
  8807 ms  0x6a43 symkey:0x7f52af94af80
  8807 ms  0x6a43 PK11_Encrypt()
  8807 ms  0x6a43 symkey:0x7f52aefc4c00
  8807 ms  0x6a43 SSL_AuthCertificateComplete()
  8807 ms  0x6a43 fd:0x7f52afeb6f10
  8807 ms  0x6a43 err:0x0
  8808 ms  0x6a43 PK11_Encrypt()
  8808 ms  0x6a43 symkey:0x7f52af94af80
  8830 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8830 ms  0x6a43 privk:0x7f52b4a7b820::7f52b4a7b820  b0 e0 5e ae                                      ..^.
  8831 ms  0x6a43 privk:0x7f52b4a7b820::7f52b4a7b820  e5 e5 e5 e5                                      ....
  8831 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8831 ms  0x6a43 privk:0x7f52b4a78820::7f52b4a78820  80 cd 5d ae                                      ..].
  8831 ms  0x6a43 privk:0x7f52b4a78820::7f52b4a78820  e5 e5 e5 e5                                      ....
  8831 ms  0x6a43 PK11_Encrypt()
  8831 ms  0x6a43 symkey:0x7f52ae5ede80
  8840 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8840 ms  0x6a43 privk:0x7f52aeba7820::7f52aeba7820  20 ee 5e ae                                       .^.
  8840 ms  0x6a43 privk:0x7f52aeba7820::7f52aeba7820  e5 e5 e5 e5                                      ....
  8840 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8840 ms  0x6a43 privk:0x7f52ae54e820::7f52ae54e820  f0 61 47 ae                                      .aG.
  8840 ms  0x6a43 privk:0x7f52ae54e820::7f52ae54e820  e5 e5 e5 e5                                      ....
  8840 ms  0x6a43 PK11_Encrypt()
  8840 ms  0x6a43 symkey:0x7f52ae47fb00
  8853 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8853 ms  0x6a43 privk:0x7f52b4a85820::7f52b4a85820  e0 e2 5e ae                                      ..^.
  8853 ms  0x6a43 privk:0x7f52b4a85820::7f52b4a85820  e5 e5 e5 e5                                      ....
  8853 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8853 ms  0x6a43 privk:0x7f52b4a7f020::7f52b4a7f020  40 e2 5e ae                                      @.^.
  8853 ms  0x6a43 privk:0x7f52b4a7f020::7f52b4a7f020  e5 e5 e5 e5                                      ....
  8853 ms  0x6a43 PR_Close()
  8853 ms  0x6a43 fd:0x7f52ae76f2e0
  8853 ms     | 0x6a43 PK11_Encrypt()
  8853 ms     | 0x6a43 symkey:0x7f52ae76bf80
  8931 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8931 ms  0x6a43 privk:0x7f52b4d14820::7f52b4d14820  40 ec 5e ae                                      @.^.
  8932 ms  0x6a43 privk:0x7f52b4d14820::7f52b4d14820  e5 e5 e5 e5                                      ....
  8932 ms  0x6a43 SECKEY_DestroyPrivateKey()
  8932 ms  0x6a43 privk:0x7f52b4d0f820::7f52b4d0f820  c0 e9 5e ae                                      ..^.
  8932 ms  0x6a43 privk:0x7f52b4d0f820::7f52b4d0f820  e5 e5 e5 e5                                      ....
  8933 ms  0x6a43 PR_Close()
  8933 ms  0x6a43 fd:0x7f52afeb60d0
  8933 ms     | 0x6a43 PK11_Encrypt()
  8933 ms     | 0x6a43 symkey:0x7f52ae72d580
  8949 ms  0x6a43 PK11_Encrypt()
  8949 ms  0x6a43 symkey:0x7f52ae472280
           /* TID 0x6a4b */
  9022 ms  0x6a4b PR_Close()
  9022 ms  0x6a4b fd:0x7f52ae5cdf70
           /* TID 0x6a43 */
  9046 ms  0x6a43 SSL_ImportFD()
  9046 ms  0x6a43 ret:0x7f52afeb6eb0
  9046 ms  0x6a43 SSL_AuthCertificateHook()
  9046 ms  0x6a43 fd:0x7f52afeb6eb0
  9046 ms  0x6a43 ret:0x0
  9046 ms  0x6a43 PR_Connect()
  9046 ms  0x6a43 fd:0x7f52afeb6eb0
  9056 ms  0x6a43 PK11_Encrypt()
  9056 ms  0x6a43 symkey:0x7f52ae72cc80
           /* TID 0x6a4b */
  9069 ms  0x6a4b PR_Close()
  9069 ms  0x6a4b fd:0x7f52aefdd850
           /* TID 0x6a43 */
  9070 ms  0x6a43 PK11_Encrypt()
  9070 ms  0x6a43 symkey:0x7f529d938200
  9082 ms  0x6a43 SECKEY_DestroyPrivateKey()
  9082 ms  0x6a43 privk:0x7f52b47a5020::7f52b47a5020  c0 ee 5e ae                                      ..^.
  9083 ms  0x6a43 privk:0x7f52b47a5020::7f52b47a5020  e5 e5 e5 e5                                      ....
  9083 ms  0x6a43 SECKEY_DestroyPrivateKey()
  9083 ms  0x6a43 privk:0x7f52b34aa820::7f52b34aa820  b0 a0 4b ae                                      ..K.
  9083 ms  0x6a43 privk:0x7f52b34aa820::7f52b34aa820  e5 e5 e5 e5                                      ....
  9083 ms  0x6a43 PR_Close()
  9083 ms  0x6a43 fd:0x7f52b004b2e0
  9083 ms     | 0x6a43 PK11_Encrypt()
  9083 ms     | 0x6a43 symkey:0x7f52aefc4c00
  9100 ms  0x6a43 SECKEY_DestroyPrivateKey()
  9100 ms  0x6a43 privk:0x7f52b461d820::7f52b461d820  60 1a 76 ae                                      `.v.
  9100 ms  0x6a43 privk:0x7f52b461d820::7f52b461d820  e5 e5 e5 e5                                      ....
  9100 ms  0x6a43 SECKEY_DestroyPrivateKey()
  9100 ms  0x6a43 privk:0x7f52ae44a020::7f52ae44a020  90 ec 5e ae                                      ..^.
  9100 ms  0x6a43 privk:0x7f52ae44a020::7f52ae44a020  e5 e5 e5 e5                                      ....
  9100 ms  0x6a43 PR_Close()
  9100 ms  0x6a43 fd:0x7f52b004b8b0
  9100 ms     | 0x6a43 PK11_Encrypt()
  9100 ms     | 0x6a43 symkey:0x7f52aeaccc00
  9103 ms  0x6a43 SECKEY_DestroyPrivateKey()
  9103 ms  0x6a43 privk:0x7f52b4607020::7f52b4607020  c0 e4 5e ae                                      ..^.
  9103 ms  0x6a43 privk:0x7f52b4607020::7f52b4607020  e5 e5 e5 e5                                      ....
  9103 ms  0x6a43 SECKEY_DestroyPrivateKey()
  9103 ms  0x6a43 privk:0x7f52b4407820::7f52b4407820  b0 c0 5d ae                                      ..].
  9103 ms  0x6a43 privk:0x7f52b4407820::7f52b4407820  e5 e5 e5 e5                                      ....
  9103 ms  0x6a43 PR_Close()
  9103 ms  0x6a43 fd:0x7f52afeb6f10
  9103 ms     | 0x6a43 PK11_Encrypt()
  9103 ms     | 0x6a43 symkey:0x7f52af94af80
           /* TID 0x6a4b */
  9139 ms  0x6a4b PR_Close()
  9139 ms  0x6a4b fd:0x7f52ae4e18b0
           /* TID 0x6a43 */
  9143 ms  0x6a43 PK11_Encrypt()
  9143 ms  0x6a43 symkey:0x7f529d938200
  9146 ms  0x6a43 PK11_Encrypt()
  9146 ms  0x6a43 symkey:0x7f529d938200
           /* TID 0x6a4b */
  9159 ms  0x6a4b PR_Close()
  9159 ms  0x6a4b fd:0x7f52ae4e18b0
           /* TID 0x6a43 */
  9172 ms  0x6a43 PK11_Encrypt()
  9172 ms  0x6a43 symkey:0x7f52ae5edd00
           /* TID 0x6a4b */
  9212 ms  0x6a4b PR_Close()
  9212 ms  0x6a4b fd:0x7f52afcfb6d0
           /* TID 0x6a43 */
  9251 ms  0x6a43 SSL_ImportFD()
  9252 ms  0x6a43 ret:0x7f52b004b6a0
  9252 ms  0x6a43 SSL_AuthCertificateHook()
  9252 ms  0x6a43 fd:0x7f52b004b6a0
  9252 ms  0x6a43 ret:0x0
  9252 ms  0x6a43 PR_Connect()
  9252 ms  0x6a43 fd:0x7f52b004b6a0
  9256 ms  0x6a43 PR_Connect()
  9256 ms  0x6a43 fd:0x7f52b004bd60
  9256 ms  0x6a43 PR_Close()
  9256 ms  0x6a43 fd:0x7f52b004bd60
  9257 ms  0x6a43 PR_Connect()
  9257 ms  0x6a43 fd:0x7f52b004bd60
  9257 ms  0x6a43 PR_Close()
  9257 ms  0x6a43 fd:0x7f52b004bd60
           /* TID 0x6a4b */
  9278 ms  0x6a4b PR_Close()
  9278 ms  0x6a4b fd:0x7f52ae76fc10
           /* TID 0x6a43 */
  9300 ms  0x6a43 SSL_ImportFD()
  9300 ms  0x6a43 ret:0x7f52b004b160
  9300 ms  0x6a43 SSL_AuthCertificateHook()
  9300 ms  0x6a43 fd:0x7f52b004b160
  9300 ms  0x6a43 ret:0x0
  9301 ms  0x6a43 PR_Connect()
  9301 ms  0x6a43 fd:0x7f52b004b160
  9316 ms  0x6a43 PR_Connect()
  9316 ms  0x6a43 fd:0x7f52ae76fc10
  9316 ms  0x6a43 PR_Connect()
  9316 ms  0x6a43 fd:0x7f52b1a15190
  9316 ms  0x6a43 PR_Close()
  9316 ms  0x6a43 fd:0x7f52ae76fc10
  9316 ms  0x6a43 PR_Close()
  9316 ms  0x6a43 fd:0x7f52b1a15190
           /* TID 0x6a4b */
  9361 ms  0x6a4b PR_Close()
  9361 ms  0x6a4b fd:0x7f52ae76f520
           /* TID 0x6a43 */
  9384 ms  0x6a43 SECKEY_CreateECPrivateKey()
  9384 ms  0x6a43 cx:0x7f52b841c248
  9385 ms     | 0x6a43 EC_ValidatePublicKey()
  9385 ms     | 0x6a43 ret:0x0
  9385 ms  0x6a43 ret:0x7f52b4407820::7f52b4407820  50 c1 5d ae                                      P.].
  9385 ms  0x6a43 SECKEY_CreateECPrivateKey()
  9385 ms  0x6a43 cx:0x7f52b841c248
  9386 ms     | 0x6a43 EC_ValidatePublicKey()
  9388 ms     | 0x6a43 ret:0x0
  9389 ms  0x6a43 ret:0x7f52b4607020::7f52b4607020  50 c6 5d ae                                      P.].
           /* TID 0x6a4b */
  9408 ms  0x6a4b PR_Close()
  9408 ms  0x6a4b fd:0x7f52ae76fc10
  9408 ms  0x6a4b PR_Close()
  9408 ms  0x6a4b fd:0x7f52afeb6f40
  9408 ms  0x6a4b PR_Close()
  9408 ms  0x6a4b fd:0x7f52b1a15070
  9408 ms  0x6a4b PR_Close()
  9408 ms  0x6a4b fd:0x7f52b1a15d90
  9408 ms  0x6a4b PR_Close()
  9408 ms  0x6a4b fd:0x7f52b1a793a0
  9410 ms  0x6a4b PR_Close()
  9410 ms  0x6a4b fd:0x7f52ae76fc10
  9410 ms  0x6a4b PR_Close()
  9410 ms  0x6a4b fd:0x7f52afeb6f40
  9410 ms  0x6a4b PR_Close()
  9410 ms  0x6a4b fd:0x7f52b1a15070
  9410 ms  0x6a4b PR_Close()
  9410 ms  0x6a4b fd:0x7f52b1a15d90
  9410 ms  0x6a4b PR_Close()
  9410 ms  0x6a4b fd:0x7f52b1a793a0
  9410 ms  0x6a4b PR_Close()
  9410 ms  0x6a4b fd:0x7f52b1a79400
  9410 ms  0x6a4b PR_Close()
  9410 ms  0x6a4b fd:0x7f52b1a796a0
  9410 ms  0x6a4b PR_Close()
  9410 ms  0x6a4b fd:0x7f52b1a79700
  9410 ms  0x6a4b PR_Close()
  9410 ms  0x6a4b fd:0x7f52b1a79850
  9410 ms  0x6a4b PR_Close()
  9410 ms  0x6a4b fd:0x7f52b1a798b0
  9410 ms  0x6a4b PR_Close()
  9410 ms  0x6a4b fd:0x7f52b1a79a00
  9410 ms  0x6a4b PR_Close()
  9410 ms  0x6a4b fd:0x7f52b1a79a60
  9410 ms  0x6a4b PR_Close()
  9410 ms  0x6a4b fd:0x7f52b1a79af0
  9410 ms  0x6a4b PR_Close()
  9410 ms  0x6a4b fd:0x7f52b1a79b80
  9410 ms  0x6a4b PR_Close()
  9410 ms  0x6a4b fd:0x7f52b1a79c40
  9410 ms  0x6a4b PR_Close()
  9410 ms  0x6a4b fd:0x7f52b1a79cd0
  9410 ms  0x6a4b PR_Close()
  9410 ms  0x6a4b fd:0x7f52b1a79d60
  9410 ms  0x6a4b PR_Close()
  9410 ms  0x6a4b fd:0x7f52b1a79e80
           /* TID 0x6a43 */
  9441 ms  0x6a43 SECKEY_CreateECPrivateKey()
  9441 ms  0x6a43 cx:0x7f52b841c728
  9442 ms     | 0x6a43 EC_ValidatePublicKey()
  9442 ms     | 0x6a43 ret:0x0
  9442 ms  0x6a43 ret:0x7f52b460c020::7f52b460c020  90 c7 5d ae                                      ..].
  9443 ms  0x6a43 SECKEY_CreateECPrivateKey()
  9443 ms  0x6a43 cx:0x7f52b841c728
  9444 ms     | 0x6a43 EC_ValidatePublicKey()
  9454 ms     | 0x6a43 ret:0x0
  9454 ms  0x6a43 ret:0x7f52b4611020::7f52b4611020  d0 cd 5d ae                                      ..].
  9546 ms  0x6a43 SSL_ImportFD()
  9547 ms  0x6a43 ret:0x7f52b07fed00
  9547 ms  0x6a43 SSL_AuthCertificateHook()
  9547 ms  0x6a43 fd:0x7f52b07fed00
  9547 ms  0x6a43 ret:0x0
  9547 ms  0x6a43 PR_Connect()
  9547 ms  0x6a43 fd:0x7f52b07fed00
  9619 ms  0x6a43 SECKEY_CreateECPrivateKey()
  9619 ms  0x6a43 cx:0x7f52b841ca68
  9621 ms     | 0x6a43 EC_ValidatePublicKey()
  9621 ms     | 0x6a43 ret:0x0
  9621 ms  0x6a43 ret:0x7f52b47a5020::7f52b47a5020  a0 e1 5e ae                                      ..^.
  9621 ms  0x6a43 SECKEY_CreateECPrivateKey()
  9621 ms  0x6a43 cx:0x7f52b841ca68
  9624 ms     | 0x6a43 EC_ValidatePublicKey()
  9629 ms     | 0x6a43 ret:0x0
  9629 ms  0x6a43 ret:0x7f52b4a77020::7f52b4a77020  a0 e6 5e ae                                      ..^.
  9647 ms  SECKEY_ECParamsToKeySize()
  9647 ms  0x6a43 ret:0x100
  9647 ms  SECKEY_ECParamsToBasePointOrderLen()
  9647 ms  0x6a43 ret:0x100
  9647 ms  SECKEY_ECParamsToBasePointOrderLen()
  9647 ms  0x6a43 ret:0x100
  9647 ms  0x6a43 EC_ValidatePublicKey()
  9653 ms  0x6a43 ret:0x0
  9659 ms  SECKEY_ECParamsToKeySize()
  9659 ms  0x6a43 ret:0x100
  9659 ms  0x6a43 SECKEY_CreateECPrivateKey()
  9659 ms  0x6a43 cx:0x7f52b841c728
  9661 ms     | 0x6a43 EC_ValidatePublicKey()
  9665 ms     | 0x6a43 ret:0x0
  9665 ms  0x6a43 ret:0x7f52b4d0e820::7f52b4d0e820  40 17 76 ae                                      @.v.
  9665 ms  0x6a43 PK11_PubDeriveWithKDF()
  9665 ms  0x6a43 seckey:0x7f52b4d0e820
  9665 ms     | 0x6a43 EC_ValidatePublicKey()
  9669 ms     | 0x6a43 ret:0x0
  9673 ms  0x6a43 ret:0x7f52af94ae00
  9674 ms  0x6a43 PK11_DeriveWithFlags()
  9674 ms  0x6a43 basekey:0x7f52af94ae00
  9674 ms     | 0x6a43 PK11_DeriveWithTemplate()
  9674 ms  0x6a43 ret:0x7f52aefc4f00
  9674 ms  0x6a43 PK11_Derive()
  9674 ms  0x6a43 basekey:0x7f52aefc4f00
  9674 ms     | 0x6a43 PK11_DeriveWithTemplate()
  9674 ms  0x6a43 ret:0x7f52ae76c700
  9674 ms  0x6a43 SECKEY_DestroyPrivateKey()
  9674 ms  0x6a43 privk:0x7f52b4d0e820::7f52b4d0e820  40 17 76 ae                                      @.v.
  9674 ms  0x6a43 privk:0x7f52b4d0e820::7f52b4d0e820  e5 e5 e5 e5                                      ....
  9674 ms  0x6a43 PK11_Encrypt()
  9674 ms  0x6a43 symkey:0x7f52af94ae80
           /* TID 0x6a4b */
  9701 ms  0x6a4b PR_Close()
  9701 ms  0x6a4b fd:0x7f52b07fec10
           /* TID 0x6ade */
  9703 ms  0x6ade _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9703 ms  0x6ade ret:0x0
  9703 ms  0x6ade _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9703 ms  0x6ade ret:0x0
           /* TID 0x6a43 */
  9704 ms  0x6a43 SSL_AuthCertificateComplete()
  9704 ms  0x6a43 fd:0x7f52b004b6a0
  9704 ms  0x6a43 err:0x0
  9704 ms  0x6a43 PK11_Encrypt()
  9704 ms  0x6a43 symkey:0x7f52af94ae80
  9705 ms  0x6a43 PK11_Encrypt()
  9705 ms  0x6a43 symkey:0x7f52af94ae80
  9730 ms  SECKEY_ECParamsToKeySize()
  9730 ms  0x6a43 ret:0x100
  9730 ms  0x6a43 SECKEY_CreateECPrivateKey()
  9730 ms  0x6a43 cx:0x7f52b841c248
  9732 ms     | 0x6a43 EC_ValidatePublicKey()
  9736 ms     | 0x6a43 ret:0x0
  9736 ms  0x6a43 ret:0x7f52b4d0f020::7f52b4d0f020  d0 18 76 ae                                      ..v.
  9736 ms  0x6a43 PK11_PubDeriveWithKDF()
  9736 ms  0x6a43 seckey:0x7f52b4d0f020
  9736 ms     | 0x6a43 EC_ValidatePublicKey()
  9741 ms     | 0x6a43 ret:0x0
  9744 ms  0x6a43 ret:0x7f52af94ae00
  9744 ms  0x6a43 PK11_DeriveWithFlags()
  9744 ms  0x6a43 basekey:0x7f52af94ae00
  9744 ms     | 0x6a43 PK11_DeriveWithTemplate()
  9744 ms  0x6a43 ret:0x7f529d9f9e00
  9744 ms  0x6a43 PK11_Derive()
  9744 ms  0x6a43 basekey:0x7f529d9f9e00
  9744 ms     | 0x6a43 PK11_DeriveWithTemplate()
  9745 ms  0x6a43 ret:0x7f52aefc4800
  9745 ms  0x6a43 SECKEY_DestroyPrivateKey()
  9745 ms  0x6a43 privk:0x7f52b4d0f020::7f52b4d0f020  d0 18 76 ae                                      ..v.
  9745 ms  0x6a43 privk:0x7f52b4d0f020::7f52b4d0f020  e5 e5 e5 e5                                      ....
  9745 ms  0x6a43 PK11_Encrypt()
  9745 ms  0x6a43 symkey:0x7f52aeacc980
  9746 ms  0x6a43 SSL_AuthCertificateComplete()
  9746 ms  0x6a43 fd:0x7f52afeb6eb0
  9746 ms  0x6a43 err:0x0
  9746 ms  0x6a43 PK11_Encrypt()
  9746 ms  0x6a43 symkey:0x7f52aeacc980
  9797 ms  0x6a43 SSL_ImportFD()
  9798 ms  0x6a43 ret:0x7f52b1a79a00
  9798 ms  0x6a43 SSL_AuthCertificateHook()
  9798 ms  0x6a43 fd:0x7f52b1a79a00
  9798 ms  0x6a43 ret:0x0
  9798 ms  0x6a43 PR_Connect()
  9798 ms  0x6a43 fd:0x7f52b1a79a00
           /* TID 0x6a4b */
  9808 ms  0x6a4b PR_Close()
  9808 ms  0x6a4b fd:0x7f52b1a15c70
           /* TID 0x6a43 */
  9814 ms  0x6a43 SSL_ImportFD()
  9814 ms  0x6a43 ret:0x7f52b1a79d90
  9814 ms  0x6a43 SSL_AuthCertificateHook()
  9814 ms  0x6a43 fd:0x7f52b1a79d90
  9814 ms  0x6a43 ret:0x0
  9816 ms  0x6a43 PK11_Encrypt()
  9816 ms  0x6a43 symkey:0x7f52ae5edd00
  9824 ms  0x6a43 PR_Connect()
  9824 ms  0x6a43 fd:0x7f52b1a79d90
  9829 ms  0x6a43 PK11_Encrypt()
  9829 ms  0x6a43 symkey:0x7f52ae472280
  9862 ms  0x6a43 SECKEY_DestroyPrivateKey()
  9862 ms  0x6a43 privk:0x7f52b4611020::7f52b4611020  d0 cd 5d ae                                      ..].
  9862 ms  0x6a43 privk:0x7f52b4611020::7f52b4611020  e5 e5 e5 e5                                      ....
  9862 ms  0x6a43 SECKEY_DestroyPrivateKey()
  9862 ms  0x6a43 privk:0x7f52b460c020::7f52b460c020  90 c7 5d ae                                      ..].
  9862 ms  0x6a43 privk:0x7f52b460c020::7f52b460c020  e5 e5 e5 e5                                      ....
  9862 ms  0x6a43 PK11_Encrypt()
  9862 ms  0x6a43 symkey:0x7f52af94ae80
  9872 ms  0x6a43 SECKEY_CreateECPrivateKey()
  9872 ms  0x6a43 cx:0x7f52b841cf48
  9873 ms     | 0x6a43 EC_ValidatePublicKey()
  9873 ms     | 0x6a43 ret:0x0
  9873 ms  0x6a43 ret:0x7f52b460c020::7f52b460c020  f0 a1 4b ae                                      ..K.
  9873 ms  0x6a43 SECKEY_CreateECPrivateKey()
  9873 ms  0x6a43 cx:0x7f52b841cf48
  9873 ms     | 0x6a43 EC_ValidatePublicKey()
  9875 ms     | 0x6a43 ret:0x0
  9875 ms  0x6a43 ret:0x7f52b4611020::7f52b4611020  90 cc 5d ae                                      ..].
           /* TID 0x6a4b */
  9884 ms  0x6a4b PR_Close()
  9884 ms  0x6a4b fd:0x7f52ae47e1c0
           /* TID 0x6a43 */
  9892 ms  0x6a43 PK11_Encrypt()
  9892 ms  0x6a43 symkey:0x7f52ae472280
  9894 ms  0x6a43 PK11_Encrypt()
  9894 ms  0x6a43 symkey:0x7f52ae472280
  9895 ms  0x6a43 PK11_Encrypt()
  9895 ms  0x6a43 symkey:0x7f52ae472280
  9896 ms  0x6a43 PK11_Encrypt()
  9896 ms  0x6a43 symkey:0x7f52ae472280
           /* TID 0x6a4b */
  9897 ms  0x6a4b PR_Close()
  9897 ms  0x6a4b fd:0x7f52b1a15070
           /* TID 0x6a43 */
  9900 ms  0x6a43 PK11_Encrypt()
  9900 ms  0x6a43 symkey:0x7f52ae472280
  9907 ms  0x6a43 PK11_Encrypt()
  9907 ms  0x6a43 symkey:0x7f529d938200
  9908 ms  0x6a43 PK11_Encrypt()
  9908 ms  0x6a43 symkey:0x7f529d938200
  9933 ms  SECKEY_ECParamsToKeySize()
  9934 ms  0x6a43 ret:0x100
  9934 ms  0x6a43 SECKEY_CreateECPrivateKey()
  9934 ms  0x6a43 cx:0x7f52b841ca68
  9934 ms     | 0x6a43 EC_ValidatePublicKey()
  9936 ms     | 0x6a43 ret:0x0
  9936 ms  0x6a43 ret:0x7f52b4e6c020::7f52b4e6c020  50 e6 96 af                                      P...
  9936 ms  0x6a43 PK11_PubDeriveWithKDF()
  9936 ms  0x6a43 seckey:0x7f52b4e6c020
  9936 ms     | 0x6a43 EC_ValidatePublicKey()
  9938 ms     | 0x6a43 ret:0x0
  9939 ms  0x6a43 ret:0x7f52af94ae00
  9939 ms  0x6a43 PK11_DeriveWithFlags()
  9939 ms  0x6a43 basekey:0x7f52af94ae00
  9939 ms     | 0x6a43 PK11_DeriveWithTemplate()
  9939 ms  0x6a43 ret:0x7f52aefc4180
  9939 ms  0x6a43 PK11_Derive()
  9939 ms  0x6a43 basekey:0x7f52aefc4180
  9939 ms     | 0x6a43 PK11_DeriveWithTemplate()
  9939 ms  0x6a43 ret:0x7f529d939d80
  9939 ms  0x6a43 SECKEY_DestroyPrivateKey()
  9939 ms  0x6a43 privk:0x7f52b4e6c020::7f52b4e6c020  50 e6 96 af                                      P...
  9939 ms  0x6a43 privk:0x7f52b4e6c020::7f52b4e6c020  e5 e5 e5 e5                                      ....
  9939 ms  0x6a43 PK11_Encrypt()
  9939 ms  0x6a43 symkey:0x7f52aefc4900
  9940 ms  0x6a43 SSL_AuthCertificateComplete()
  9940 ms  0x6a43 fd:0x7f52b004b160
  9940 ms  0x6a43 err:0x0
  9940 ms  0x6a43 PK11_Encrypt()
  9940 ms  0x6a43 symkey:0x7f52aefc4900
           /* TID 0x6a4b */
  9968 ms  0x6a4b PR_Close()
  9968 ms  0x6a4b fd:0x7f52ae4b9070
  9973 ms  0x6a4b PR_Close()
  9973 ms  0x6a4b fd:0x7f52ae4b9070
  9977 ms  0x6a4b PR_Close()
  9977 ms  0x6a4b fd:0x7f52ae4b9070
  9980 ms  0x6a4b PR_Close()
  9980 ms  0x6a4b fd:0x7f52ae4b9070
  9988 ms  0x6a4b PR_Close()
  9988 ms  0x6a4b fd:0x7f52ae4b9070
 10006 ms  0x6a4b PR_Close()
 10006 ms  0x6a4b fd:0x7f52ae4b9070
           /* TID 0x6a43 */
 10012 ms  0x6a43 SECKEY_CreateECPrivateKey()
 10012 ms  0x6a43 cx:0x7f52b841e948
 10013 ms     | 0x6a43 EC_ValidatePublicKey()
 10013 ms     | 0x6a43 ret:0x0
 10013 ms  0x6a43 ret:0x7f52b4e66020::7f52b4e66020  60 ef 5e ae                                      `.^.
 10013 ms  0x6a43 SECKEY_CreateECPrivateKey()
 10013 ms  0x6a43 cx:0x7f52b841e948
 10014 ms     | 0x6a43 EC_ValidatePublicKey()
 10015 ms     | 0x6a43 ret:0x0
 10015 ms  0x6a43 ret:0x7f52b4e6c820::7f52b4e6c820  b0 e0 96 af                                      ....
           /* TID 0x6a4b */
 10037 ms  0x6a4b PR_Close()
 10037 ms  0x6a4b fd:0x7f52b004b670
           /* TID 0x6a43 */
 10041 ms  0x6a43 PK11_Encrypt()
 10041 ms  0x6a43 symkey:0x7f52ae72cc80
           /* TID 0x6a4b */
 10042 ms  0x6a4b PR_Close()
 10042 ms  0x6a4b fd:0x7f52b004b670
 10051 ms  0x6a4b PR_Close()
 10051 ms  0x6a4b fd:0x7f52b1a793d0
           /* TID 0x6a43 */
 10063 ms  0x6a43 PK11_Encrypt()
 10063 ms  0x6a43 symkey:0x7f52ae5edd00
 10065 ms  0x6a43 PK11_Encrypt()
 10065 ms  0x6a43 symkey:0x7f52ae5edd00
 10066 ms  0x6a43 PK11_Encrypt()
 10066 ms  0x6a43 symkey:0x7f52ae5edd00
 10068 ms  0x6a43 PK11_Encrypt()
 10068 ms  0x6a43 symkey:0x7f52ae5edd00
 10070 ms  0x6a43 PK11_Encrypt()
 10070 ms  0x6a43 symkey:0x7f52ae5edd00
 10073 ms  0x6a43 PK11_Encrypt()
 10073 ms  0x6a43 symkey:0x7f52ae5edd00
 10074 ms  0x6a43 PK11_Encrypt()
 10074 ms  0x6a43 symkey:0x7f52ae5edd00
 10075 ms  0x6a43 PK11_Encrypt()
 10075 ms  0x6a43 symkey:0x7f52ae5edd00
 10078 ms  0x6a43 SECKEY_DestroyPrivateKey()
 10078 ms  0x6a43 privk:0x7f52b4607020::7f52b4607020  50 c6 5d ae                                      P.].
 10079 ms  0x6a43 privk:0x7f52b4607020::7f52b4607020  e5 e5 e5 e5                                      ....
 10079 ms  0x6a43 SECKEY_DestroyPrivateKey()
 10079 ms  0x6a43 privk:0x7f52b4407820::7f52b4407820  50 c1 5d ae                                      P.].
 10079 ms  0x6a43 privk:0x7f52b4407820::7f52b4407820  e5 e5 e5 e5                                      ....
 10079 ms  0x6a43 PK11_Encrypt()
 10079 ms  0x6a43 symkey:0x7f52aeacc980
 10079 ms  0x6a43 SSL_ImportFD()
 10079 ms  0x6a43 ret:0x7f52b345fa90
 10079 ms  0x6a43 SSL_AuthCertificateHook()
 10079 ms  0x6a43 fd:0x7f52b345fa90
 10079 ms  0x6a43 ret:0x0
 10079 ms  0x6a43 PR_Connect()
 10079 ms  0x6a43 fd:0x7f52b345fa90
 10113 ms  0x6a43 SECKEY_CreateECPrivateKey()
 10113 ms  0x6a43 cx:0x7f52b841e608
 10113 ms     | 0x6a43 EC_ValidatePublicKey()
 10113 ms     | 0x6a43 ret:0x0
 10113 ms  0x6a43 ret:0x7f52b4407820::7f52b4407820  20 c4 5d ae                                       .].
 10113 ms  0x6a43 SECKEY_CreateECPrivateKey()
 10113 ms  0x6a43 cx:0x7f52b841e608
 10114 ms     | 0x6a43 EC_ValidatePublicKey()
 10116 ms     | 0x6a43 ret:0x0
 10116 ms  0x6a43 ret:0x7f52b4607020::7f52b4607020  90 e7 96 af                                      ....
 10206 ms  SECKEY_ECParamsToKeySize()
 10206 ms  0x6a43 ret:0x100
 10206 ms  0x6a43 SECKEY_CreateECPrivateKey()
 10206 ms  0x6a43 cx:0x7f52b841e948
 10207 ms     | 0x6a43 EC_ValidatePublicKey()
 10211 ms     | 0x6a43 ret:0x0
 10212 ms  0x6a43 ret:0x7f52b4e79020::7f52b4e79020  f0 eb 96 af                                      ....
 10213 ms  0x6a43 PK11_PubDeriveWithKDF()
 10213 ms  0x6a43 seckey:0x7f52b4e79020
 10213 ms     | 0x6a43 EC_ValidatePublicKey()
 10216 ms     | 0x6a43 ret:0x0
 10222 ms  0x6a43 ret:0x7f52af94ae00
 10222 ms  0x6a43 PK11_DeriveWithFlags()
 10222 ms  0x6a43 basekey:0x7f52af94ae00
 10222 ms     | 0x6a43 PK11_DeriveWithTemplate()
 10222 ms  0x6a43 ret:0x7f529d939c80
 10222 ms  0x6a43 PK11_Derive()
 10222 ms  0x6a43 basekey:0x7f529d939c80
 10222 ms     | 0x6a43 PK11_DeriveWithTemplate()
 10223 ms  0x6a43 ret:0x7f52ae47f300
 10223 ms  0x6a43 SECKEY_DestroyPrivateKey()
 10223 ms  0x6a43 privk:0x7f52b4e79020::7f52b4e79020  f0 eb 96 af                                      ....
 10223 ms  0x6a43 privk:0x7f52b4e79020::7f52b4e79020  e5 e5 e5 e5                                      ....
 10223 ms  0x6a43 PK11_Encrypt()
 10223 ms  0x6a43 symkey:0x7f52ae4f2d00
 10223 ms  0x6a43 SSL_AuthCertificateComplete()
 10223 ms  0x6a43 fd:0x7f52b1a79d90
 10223 ms  0x6a43 err:0x0
 10224 ms  0x6a43 PK11_Encrypt()
 10224 ms  0x6a43 symkey:0x7f52ae4f2d00
           /* TID 0x6a4b */
 10255 ms  0x6a4b PR_Close()
 10255 ms  0x6a4b fd:0x7f52b1aae3d0
           /* TID 0x6a43 */
 10260 ms  0x6a43 SECKEY_DestroyPrivateKey()
 10260 ms  0x6a43 privk:0x7f52b4a77020::7f52b4a77020  a0 e6 5e ae                                      ..^.
 10260 ms  0x6a43 privk:0x7f52b4a77020::7f52b4a77020  e5 e5 e5 e5                                      ....
 10260 ms  0x6a43 SECKEY_DestroyPrivateKey()
 10260 ms  0x6a43 privk:0x7f52b47a5020::7f52b47a5020  a0 e1 5e ae                                      ..^.
 10260 ms  0x6a43 privk:0x7f52b47a5020::7f52b47a5020  e5 e5 e5 e5                                      ....
 10260 ms  0x6a43 PR_Close()
 10260 ms  0x6a43 fd:0x7f52b004b160
 10260 ms     | 0x6a43 PK11_Encrypt()
 10260 ms     | 0x6a43 symkey:0x7f52aefc4900
           /* TID 0x6a4b */
 10264 ms  0x6a4b PR_Close()
 10264 ms  0x6a4b fd:0x7f52b004b160
 10268 ms  0x6a4b PR_Close()
 10268 ms  0x6a4b fd:0x7f52b004b160
 10275 ms  0x6a4b PR_Close()
 10275 ms  0x6a4b fd:0x7f52b004b250
 10278 ms  0x6a4b PR_Close()
 10278 ms  0x6a4b fd:0x7f52b004b250
 10280 ms  0x6a4b PR_Close()
 10280 ms  0x6a4b fd:0x7f52b004b250
           /* TID 0x6a43 */
 10329 ms  0x6a43 SSL_ImportFD()
 10329 ms  0x6a43 ret:0x7f52b07fed30
 10330 ms  0x6a43 SSL_AuthCertificateHook()
 10330 ms  0x6a43 fd:0x7f52b07fed30
 10330 ms  0x6a43 ret:0x0
 10330 ms  0x6a43 PR_Connect()
 10330 ms  0x6a43 fd:0x7f52b07fed30
 10406 ms  0x6a43 SECKEY_CreateECPrivateKey()
 10406 ms  0x6a43 cx:0x7f52b841eae8
 10407 ms     | 0x6a43 EC_ValidatePublicKey()
 10407 ms     | 0x6a43 ret:0x0
 10407 ms  0x6a43 ret:0x7f52b479c820::7f52b479c820  a0 c1 5d ae                                      ..].
 10408 ms  0x6a43 SECKEY_CreateECPrivateKey()
 10408 ms  0x6a43 cx:0x7f52b841eae8
 10409 ms     | 0x6a43 EC_ValidatePublicKey()
 10413 ms     | 0x6a43 ret:0x0
 10413 ms  0x6a43 ret:0x7f52b4a76020::7f52b4a76020  40 e2 5e ae                                      @.^.
 10414 ms  0x6a43 SECKEY_DestroyPrivateKey()
 10414 ms  0x6a43 privk:0x7f52b4e6c820::7f52b4e6c820  b0 e0 96 af                                      ....
 10414 ms  0x6a43 privk:0x7f52b4e6c820::7f52b4e6c820  e5 e5 e5 e5                                      ....
 10414 ms  0x6a43 SECKEY_DestroyPrivateKey()
 10414 ms  0x6a43 privk:0x7f52b4e66020::7f52b4e66020  60 ef 5e ae                                      `.^.
 10414 ms  0x6a43 privk:0x7f52b4e66020::7f52b4e66020  e5 e5 e5 e5                                      ....
 10415 ms  0x6a43 PR_Close()
 10415 ms  0x6a43 fd:0x7f52b1a79d90
 10415 ms     | 0x6a43 PK11_Encrypt()
 10415 ms     | 0x6a43 symkey:0x7f52ae4f2d00
           /* TID 0x6a4b */
 10421 ms  0x6a4b PR_Close()
 10421 ms  0x6a4b fd:0x7f52b1a79d30
 10422 ms  0x6a4b PR_Close()
 10422 ms  0x6a4b fd:0x7f52b07fedf0
 10423 ms  0x6a4b PR_Close()
 10423 ms  0x6a4b fd:0x7f52b004b820
           /* TID 0x6a43 */
 10436 ms  SECKEY_ECParamsToKeySize()
 10436 ms  0x6a43 ret:0x100
 10436 ms  0x6a43 SECKEY_CreateECPrivateKey()
 10436 ms  0x6a43 cx:0x7f52b841e608
 10438 ms     | 0x6a43 EC_ValidatePublicKey()
 10443 ms     | 0x6a43 ret:0x0
 10443 ms  0x6a43 ret:0x7f52b4e6e820::7f52b4e6e820  20 e4 96 af                                       ...
 10443 ms  0x6a43 PK11_PubDeriveWithKDF()
 10443 ms  0x6a43 seckey:0x7f52b4e6e820
 10443 ms     | 0x6a43 EC_ValidatePublicKey()
 10446 ms     | 0x6a43 ret:0x0
 10449 ms  0x6a43 ret:0x7f52ae47f300
 10449 ms  0x6a43 PK11_DeriveWithFlags()
 10449 ms  0x6a43 basekey:0x7f52ae47f300
 10449 ms     | 0x6a43 PK11_DeriveWithTemplate()
 10449 ms  0x6a43 ret:0x7f529d939c80
 10449 ms  0x6a43 PK11_Derive()
 10449 ms  0x6a43 basekey:0x7f529d939c80
 10451 ms     | 0x6a43 PK11_DeriveWithTemplate()
 10451 ms  0x6a43 ret:0x7f529d939d80
 10451 ms  0x6a43 SECKEY_DestroyPrivateKey()
 10451 ms  0x6a43 privk:0x7f52b4e6e820::7f52b4e6e820  20 e4 96 af                                       ...
 10451 ms  0x6a43 privk:0x7f52b4e6e820::7f52b4e6e820  e5 e5 e5 e5                                      ....
 10451 ms  0x6a43 PK11_Encrypt()
 10451 ms  0x6a43 symkey:0x7f52ae72c780
           /* TID 0x6a4b */
 10453 ms  0x6a4b PR_Close()
 10453 ms  0x6a4b fd:0x7f52b004b160
 10456 ms  0x6a4b PR_Close()
 10456 ms  0x6a4b fd:0x7f52b004b160
 10478 ms  0x6a4b PR_Close()
 10478 ms  0x6a4b fd:0x7f52b004b160
           /* TID 0x6ade */
 10478 ms  0x6ade _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10478 ms  0x6ade ret:0x0
 10478 ms  0x6ade _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10479 ms  0x6ade ret:0x0
           /* TID 0x6a43 */
 10479 ms  0x6a43 SSL_AuthCertificateComplete()
 10479 ms  0x6a43 fd:0x7f52b1a79a00
 10479 ms  0x6a43 err:0x0
 10649 ms  0x6a43 SECKEY_CreateECPrivateKey()
 10649 ms  0x6a43 cx:0x7f52b841ca68
 10651 ms     | 0x6a43 EC_ValidatePublicKey()
 10651 ms     | 0x6a43 ret:0x0
 10651 ms  0x6a43 ret:0x7f52b4e6a820::7f52b4e6a820  f0 e6 96 af                                      ....
 10651 ms  0x6a43 SECKEY_CreateECPrivateKey()
 10651 ms  0x6a43 cx:0x7f52b841ca68
 10654 ms     | 0x6a43 EC_ValidatePublicKey()
 10659 ms     | 0x6a43 ret:0x0
 10659 ms  0x6a43 ret:0x7f52b4e6e820::7f52b4e6e820  b0 ea 96 af                                      ....
 10727 ms  0x6a43 PK11_Derive()
 10727 ms  0x6a43 basekey:0x7f52aefc4180
 10727 ms     | 0x6a43 PK11_DeriveWithTemplate()
 10727 ms  0x6a43 ret:0x7f52ae47f300
 10727 ms  0x6a43 PK11_Encrypt()
 10727 ms  0x6a43 symkey:0x7f52aefc4a80
 10728 ms  0x6a43 SECKEY_DestroyPrivateKey()
 10728 ms  0x6a43 privk:0x7f52b4a76020::7f52b4a76020  40 e2 5e ae                                      @.^.
 10728 ms  0x6a43 privk:0x7f52b4a76020::7f52b4a76020  e5 e5 e5 e5                                      ....
 10728 ms  0x6a43 SECKEY_DestroyPrivateKey()
 10728 ms  0x6a43 privk:0x7f52b479c820::7f52b479c820  a0 c1 5d ae                                      ..].
 10728 ms  0x6a43 privk:0x7f52b479c820::7f52b479c820  e5 e5 e5 e5                                      ....
 10729 ms  0x6a43 PK11_Encrypt()
 10729 ms  0x6a43 symkey:0x7f52aefc4a80
 10759 ms  0x6a43 SECKEY_DestroyPrivateKey()
 10759 ms  0x6a43 privk:0x7f52b4607020::7f52b4607020  90 e7 96 af                                      ....
 10759 ms  0x6a43 privk:0x7f52b4607020::7f52b4607020  e5 e5 e5 e5                                      ....
 10759 ms  0x6a43 SECKEY_DestroyPrivateKey()
 10759 ms  0x6a43 privk:0x7f52b4407820::7f52b4407820  20 c4 5d ae                                       .].
 10759 ms  0x6a43 privk:0x7f52b4407820::7f52b4407820  e5 e5 e5 e5                                      ....
 10923 ms  SECKEY_ECParamsToKeySize()
 10923 ms  0x6a43 ret:0x100
 10923 ms  0x6a43 SECKEY_CreateECPrivateKey()
 10923 ms  0x6a43 cx:0x7f52b841cf48
 10925 ms     | 0x6a43 EC_ValidatePublicKey()
 10944 ms     | 0x6a43 ret:0x0
 10946 ms  0x6a43 ret:0x7f529d811020::7f529d811020  90 82 85 9d                                      ....
 10946 ms  0x6a43 PK11_PubDeriveWithKDF()
 10946 ms  0x6a43 seckey:0x7f529d811020
 10946 ms     | 0x6a43 EC_ValidatePublicKey()
 10948 ms     | 0x6a43 ret:0x0
 10951 ms  0x6a43 ret:0x7f52af94ae00
 10951 ms  0x6a43 PK11_DeriveWithFlags()
 10951 ms  0x6a43 basekey:0x7f52af94ae00
 10951 ms     | 0x6a43 PK11_DeriveWithTemplate()
 10951 ms  0x6a43 ret:0x7f529d939c00
 10951 ms  0x6a43 PK11_Derive()
 10951 ms  0x6a43 basekey:0x7f529d939c00
 10951 ms     | 0x6a43 PK11_DeriveWithTemplate()
 10951 ms  0x6a43 ret:0x7f529d9edb00
 10951 ms  0x6a43 SECKEY_DestroyPrivateKey()
 10951 ms  0x6a43 privk:0x7f529d811020::7f529d811020  90 82 85 9d                                      ....
 10952 ms  0x6a43 privk:0x7f529d811020::7f529d811020  e5 e5 e5 e5                                      ....
 10952 ms  0x6a43 PK11_Encrypt()
 10952 ms  0x6a43 symkey:0x7f52ae76be80
 10952 ms  0x6a43 SSL_AuthCertificateComplete()
 10952 ms  0x6a43 fd:0x7f52b07fed00
 10952 ms  0x6a43 err:0x0
 10953 ms  0x6a43 PK11_Encrypt()
 10953 ms  0x6a43 symkey:0x7f52ae76be80
 10987 ms  0x6a43 PK11_Derive()
 10987 ms  0x6a43 basekey:0x7f529d765f80
 10987 ms     | 0x6a43 PK11_DeriveWithTemplate()
 10987 ms  0x6a43 ret:0x7f52af94ae00
 10987 ms  0x6a43 PK11_Encrypt()
 10987 ms  0x6a43 symkey:0x7f529d766500
 10988 ms  0x6a43 SECKEY_DestroyPrivateKey()
 10988 ms  0x6a43 privk:0x7f52b4e6e820::7f52b4e6e820  b0 ea 96 af                                      ....
 10988 ms  0x6a43 privk:0x7f52b4e6e820::7f52b4e6e820  e5 e5 e5 e5                                      ....
 10988 ms  0x6a43 SECKEY_DestroyPrivateKey()
 10988 ms  0x6a43 privk:0x7f52b4e6a820::7f52b4e6a820  f0 e6 96 af                                      ....
 10989 ms  0x6a43 privk:0x7f52b4e6a820::7f52b4e6a820  e5 e5 e5 e5                                      ....
 10989 ms  0x6a43 PR_Close()
 10989 ms  0x6a43 fd:0x7f52b07fed30
 10989 ms     | 0x6a43 PK11_Encrypt()
 10989 ms     | 0x6a43 symkey:0x7f529d766500
 11292 ms  0x6a43 SECKEY_DestroyPrivateKey()
 11292 ms  0x6a43 privk:0x7f52b4611020::7f52b4611020  90 cc 5d ae                                      ..].
 11292 ms  0x6a43 privk:0x7f52b4611020::7f52b4611020  e5 e5 e5 e5                                      ....
 11293 ms  0x6a43 SECKEY_DestroyPrivateKey()
 11293 ms  0x6a43 privk:0x7f52b460c020::7f52b460c020  f0 a1 4b ae                                      ..K.
 11293 ms  0x6a43 privk:0x7f52b460c020::7f52b460c020  e5 e5 e5 e5                                      ....
           /* TID 0x6a4b */
 11619 ms  0x6a4b PR_Close()
 11619 ms  0x6a4b fd:0x7f529d9e8f10
           /* TID 0x6a43 */
 11649 ms  0x6a43 PK11_Encrypt()
 11649 ms  0x6a43 symkey:0x7f52ae472280
 11651 ms  0x6a43 PK11_Encrypt()
 11651 ms  0x6a43 symkey:0x7f52ae472280
 11667 ms  0x6a43 PK11_Encrypt()
 11667 ms  0x6a43 symkey:0x7f529d938200
 11672 ms  0x6a43 PR_Close()
 11672 ms  0x6a43 fd:0x7f52b8442d30
           /* TID 0x6a38 */
 11673 ms  0x6a38 EC_ValidatePublicKey()
 11675 ms  0x6a38 ret:0x0
 11675 ms  0x6a38 EC_ValidatePublicKey()
 11676 ms  0x6a38 ret:0x0
 11676 ms  0x6a38 EC_ValidatePublicKey()
 11678 ms  0x6a38 ret:0x0
 11678 ms  0x6a38 EC_ValidatePublicKey()
 11679 ms  0x6a38 ret:0x0
 11679 ms  0x6a38 EC_ValidatePublicKey()
 11687 ms  0x6a38 ret:0x0
 11687 ms  0x6a38 EC_ValidatePublicKey()
 11689 ms  0x6a38 ret:0x0
 11689 ms  0x6a38 EC_ValidatePublicKey()
 11698 ms  0x6a38 ret:0x0
 11698 ms  0x6a38 EC_ValidatePublicKey()
 11699 ms  0x6a38 ret:0x0
 11699 ms  0x6a38 EC_ValidatePublicKey()
 11709 ms  0x6a38 ret:0x0
 11709 ms  0x6a38 EC_ValidatePublicKey()
 11711 ms  0x6a38 ret:0x0
           /* TID 0x6a43 */
 11711 ms  0x6a43 PK11_Encrypt()
 11711 ms  0x6a43 symkey:0x7f52aeacc980
 11712 ms  0x6a43 PK11_Encrypt()
 11712 ms  0x6a43 symkey:0x7f529d939e00
 11712 ms  0x6a43 PK11_Encrypt()
 11712 ms  0x6a43 symkey:0x7f52ae47fb00
 11712 ms  0x6a43 PK11_Encrypt()
 11712 ms  0x6a43 symkey:0x7f529d9ed000
 11712 ms  0x6a43 PK11_Encrypt()
 11712 ms  0x6a43 symkey:0x7f52ae76ca00
 11712 ms  0x6a43 PK11_Encrypt()
 11712 ms  0x6a43 symkey:0x7f52ae72cc80
 11712 ms  0x6a43 PK11_Encrypt()
 11712 ms  0x6a43 symkey:0x7f52ae5ede80
 11712 ms  0x6a43 PK11_Encrypt()
 11712 ms  0x6a43 symkey:0x7f52af94ae80
 11712 ms  0x6a43 PK11_Encrypt()
 11712 ms  0x6a43 symkey:0x7f52ae5edd00
 11712 ms  0x6a43 PR_Close()
 11712 ms  0x6a43 fd:0x7f52ae4e1370
 11713 ms  0x6a43 PR_Close()
 11713 ms  0x6a43 fd:0x7f52ae5cdc40
 11713 ms  0x6a43 PR_Close()
 11713 ms  0x6a43 fd:0x7f52ae5cdd60
 11713 ms  0x6a43 PR_Close()
 11713 ms  0x6a43 fd:0x7f529d9e8cd0
 11713 ms  0x6a43 PR_Close()
 11713 ms  0x6a43 fd:0x7f52ae4b9f70
 11713 ms     | 0x6a43 PK11_Encrypt()
 11713 ms     | 0x6a43 symkey:0x7f52ae4f2780
 11713 ms  0x6a43 PR_Close()
 11713 ms  0x6a43 fd:0x7f52ae4b9dc0
 11713 ms  0x6a43 PR_Close()
 11713 ms  0x6a43 fd:0x7f52ae4b9340
 11713 ms     | 0x6a43 PK11_Encrypt()
 11713 ms     | 0x6a43 symkey:0x7f52ae4f1a00
 11713 ms  0x6a43 PR_Close()
 11713 ms  0x6a43 fd:0x7f52b345fb20
 11713 ms  0x6a43 PR_Close()
 11713 ms  0x6a43 fd:0x7f52aefdde20
 11713 ms     | 0x6a43 PK11_Encrypt()
 11713 ms     | 0x6a43 symkey:0x7f52b03bc980
 11714 ms  0x6a43 PR_Close()
 11714 ms  0x6a43 fd:0x7f52b47c8eb0
 11714 ms     | 0x6a43 PK11_Encrypt()
 11714 ms     | 0x6a43 symkey:0x7f52aeacc800
 11714 ms  0x6a43 PR_Close()
 11714 ms  0x6a43 fd:0x7f52b07fed00
 11714 ms     | 0x6a43 PK11_Encrypt()
 11714 ms     | 0x6a43 symkey:0x7f52ae76be80
 11714 ms  0x6a43 PR_Close()
 11714 ms  0x6a43 fd:0x7f52b1a79a00
 11714 ms     | 0x6a43 PK11_Encrypt()
 11714 ms     | 0x6a43 symkey:0x7f52ae72c780
 11714 ms  0x6a43 PR_Close()
 11714 ms  0x6a43 fd:0x7f52ae76f3d0
 11714 ms     | 0x6a43 PK11_Encrypt()
 11714 ms     | 0x6a43 symkey:0x7f529d939e00
 11715 ms  0x6a43 PR_Close()
 11715 ms  0x6a43 fd:0x7f52b004b6a0
 11715 ms     | 0x6a43 PK11_Encrypt()
 11715 ms     | 0x6a43 symkey:0x7f52af94ae80
           /* TID 0x6a9b */
 11715 ms  0x6a9b PR_Close()
 11715 ms  0x6a9b fd:0x7f52ae47e520
 11715 ms  0x6a9b PR_Close()
 11715 ms  0x6a9b fd:0x7f52ae47e520
           /* TID 0x6a43 */
 11718 ms  0x6a43 PR_Close()
 11718 ms  0x6a43 fd:0x7f529d9e8790
 11718 ms     | 0x6a43 PK11_Encrypt()
 11718 ms     | 0x6a43 symkey:0x7f529d9ed000
 11719 ms  0x6a43 PR_Close()
 11719 ms  0x6a43 fd:0x7f52afeb6eb0
 11719 ms     | 0x6a43 PK11_Encrypt()
 11719 ms     | 0x6a43 symkey:0x7f52aeacc980
 11719 ms  0x6a43 PR_Close()
 11719 ms  0x6a43 fd:0x7f52ae4e1340
 11719 ms     | 0x6a43 PK11_Encrypt()
 11719 ms     | 0x6a43 symkey:0x7f52ae5ede80
 11719 ms  0x6a43 PR_Close()
 11719 ms  0x6a43 fd:0x7f52ae47e5e0
 11719 ms     | 0x6a43 PK11_Encrypt()
 11719 ms     | 0x6a43 symkey:0x7f52ae76ca00
 11719 ms  0x6a43 PR_Close()
 11719 ms  0x6a43 fd:0x7f52ae76fc40
 11719 ms     | 0x6a43 PK11_Encrypt()
 11719 ms     | 0x6a43 symkey:0x7f52ae47fb00
 11720 ms  0x6a43 PR_Close()
 11720 ms  0x6a43 fd:0x7f52afcfb130
 11720 ms     | 0x6a43 PK11_Encrypt()
 11720 ms     | 0x6a43 symkey:0x7f52ae5edd00
 11720 ms  0x6a43 PR_Close()
 11720 ms  0x6a43 fd:0x7f52af9b1a30
 11720 ms     | 0x6a43 PK11_Encrypt()
 11720 ms     | 0x6a43 symkey:0x7f52ae72cc80
           /* TID 0x6a4b */
 11733 ms  0x6a4b PR_Close()
 11733 ms  0x6a4b fd:0x7f529d75dfa0
           /* TID 0x6a43 */
 11734 ms  0x6a43 PK11_Encrypt()
 11734 ms  0x6a43 symkey:0x7f529d938200
 11735 ms  0x6a43 PR_Close()
 11735 ms  0x6a43 fd:0x7f52ae47e430
 11735 ms     | 0x6a43 PK11_Encrypt()
 11735 ms     | 0x6a43 symkey:0x7f529d938200
           /* TID 0x6a38 */
 11743 ms  0x6a38 PR_Close()
 11743 ms  0x6a38 fd:0x7f52afcfb8e0
 11743 ms  0x6a38 PR_Close()
 11743 ms  0x6a38 fd:0x7f52ae47ea60
 11744 ms  0x6a38 PR_Close()
 11744 ms  0x6a38 fd:0x7f52ae47eac0
 11744 ms  0x6a38 PR_Close()
 11744 ms  0x6a38 fd:0x7f52ae47ea60
 11745 ms  0x6a38 PR_Close()
 11745 ms  0x6a38 fd:0x7f52ae47eac0
 11745 ms  0x6a38 PR_Close()
 11745 ms  0x6a38 fd:0x7f52ae47ea60
           /* TID 0x6aad */
 11748 ms  0x6aad PR_Close()
 11748 ms  0x6aad fd:0x7f52ae47ea60
           /* TID 0x6a38 */
 11767 ms  0x6a38 PR_Close()
 11767 ms  0x6a38 fd:0x7f52ae47eac0
 11767 ms  0x6a38 PR_Close()
 11767 ms  0x6a38 fd:0x7f52ae5cd910
 11768 ms  0x6a38 PR_Close()
 11768 ms  0x6a38 fd:0x7f52ae47eac0
 11768 ms  0x6a38 PR_Close()
 11768 ms  0x6a38 fd:0x7f52ae5cd910
 11769 ms  0x6a38 PR_Close()
 11769 ms  0x6a38 fd:0x7f52b99c89a0
 11769 ms  0x6a38 PR_Close()
 11769 ms  0x6a38 fd:0x7f52b99c88b0
 11769 ms  0x6a38 PR_Close()
 11769 ms  0x6a38 fd:0x7f52b99c8a60
 11773 ms  0x6a38 PR_Close()
 11773 ms  0x6a38 fd:0x7f52ae5cd910
 11774 ms  0x6a38 PR_Close()
 11774 ms  0x6a38 fd:0x7f52ae5cd910
 11776 ms  0x6a38 PR_Close()
 11776 ms  0x6a38 fd:0x7f52ae47eac0
 11776 ms  0x6a38 PR_Close()
 11776 ms  0x6a38 fd:0x7f52ae5cdaf0
 11777 ms  0x6a38 PR_Close()
 11777 ms  0x6a38 fd:0x7f52ae47eac0
 11777 ms  0x6a38 PR_Close()
 11777 ms  0x6a38 fd:0x7f52ae5cdaf0
 11779 ms  0x6a38 PR_Close()
 11779 ms  0x6a38 fd:0x7f52ae5cdc40
 11781 ms  0x6a38 PR_Close()
 11781 ms  0x6a38 fd:0x7f52ae5cdc40
 11783 ms  0x6a38 PR_Close()
 11783 ms  0x6a38 fd:0x7f52ae47eac0
 11783 ms  0x6a38 PR_Close()
 11783 ms  0x6a38 fd:0x7f52ae5cdd00
 11783 ms  0x6a38 PR_Close()
 11783 ms  0x6a38 fd:0x7f52ae47eac0
 11783 ms  0x6a38 PR_Close()
 11783 ms  0x6a38 fd:0x7f52ae5cdd00
           /* TID 0x6a43 */
 11785 ms  0x6a43 PK11_Encrypt()
 11785 ms  0x6a43 symkey:0x7f52ae472280
 11785 ms  0x6a43 PR_Close()
 11785 ms  0x6a43 fd:0x7f529d7746a0
 11786 ms     | 0x6a43 PK11_Encrypt()
 11786 ms     | 0x6a43 symkey:0x7f52ae472280
           /* TID 0x6a38 */
 11789 ms  0x6a38 PR_Close()
 11789 ms  0x6a38 fd:0x7f529d7746a0
 11790 ms  0x6a38 PR_Close()
 11790 ms  0x6a38 fd:0x7f529d7746a0
 11796 ms  0x6a38 PR_Close()
 11796 ms  0x6a38 fd:0x7f52ae5cdeb0
 11798 ms  0x6a38 PR_Close()
 11798 ms  0x6a38 fd:0x7f52ae5cdeb0
 11800 ms  0x6a38 PR_Close()
 11800 ms  0x6a38 fd:0x7f52ae5cdf40
           /* TID 0x6a4b */
 11804 ms  0x6a4b PR_Close()
 11804 ms  0x6a4b fd:0x7f52ae47e5e0
           /* TID 0x6aad */
 11808 ms  0x6aad PR_Close()
 11808 ms  0x6aad fd:0x7f529d9e8580
           /* TID 0x6a38 */
 11810 ms  0x6a38 PR_Close()
 11810 ms  0x6a38 fd:0x7f52ae47eac0
 11810 ms  0x6a38 PR_Close()
 11810 ms  0x6a38 fd:0x7f52ae76f520
           /* TID 0x6aad */
 11811 ms  0x6aad PR_Close()
 11811 ms  0x6aad fd:0x7f529d9e8580
 11817 ms  0x6aad PR_Close()
 11817 ms  0x6aad fd:0x7f52ae47ea60
           /* TID 0x6a4b */
 11821 ms  0x6a4b PR_Close()
 11821 ms  0x6a4b fd:0x7f52ae47ee20
           /* TID 0x6aad */
 11846 ms  0x6aad PR_Close()
 11846 ms  0x6aad fd:0x7f529d75d040
           /* TID 0x6a43 */
 11850 ms  0x6a43 SSL_ImportFD()
 11850 ms  0x6a43 ret:0x7f529d75d4f0
 11850 ms  0x6a43 SSL_AuthCertificateHook()
 11850 ms  0x6a43 fd:0x7f529d75d4f0
 11850 ms  0x6a43 ret:0x0
 11850 ms  0x6a43 PR_Connect()
 11850 ms  0x6a43 fd:0x7f529d75d4f0
 11850 ms  0x6a43 SSL_ImportFD()
 11850 ms  0x6a43 ret:0x7f529d75d9a0
 11850 ms  0x6a43 SSL_AuthCertificateHook()
 11850 ms  0x6a43 fd:0x7f529d75d9a0
 11850 ms  0x6a43 ret:0x0
 11850 ms  0x6a43 PR_Connect()
 11850 ms  0x6a43 fd:0x7f529d75d9a0
 11851 ms  0x6a43 SSL_ImportFD()
 11851 ms  0x6a43 ret:0x7f52ae47e1f0
 11851 ms  0x6a43 SSL_AuthCertificateHook()
 11851 ms  0x6a43 fd:0x7f52ae47e1f0
 11851 ms  0x6a43 ret:0x0
 11851 ms  0x6a43 PR_Connect()
 11851 ms  0x6a43 fd:0x7f52ae47e1f0
           /* TID 0x6a3d */
 11859 ms  0x6a3d PR_Close()
 11859 ms  0x6a3d fd:0x7f52b842aa60
           /* TID 0x6a43 */
 11860 ms  0x6a43 PR_Close()
 11860 ms  0x6a43 fd:0x7f529d75d4f0
 11862 ms  0x6a43 PR_Close()
 11862 ms  0x6a43 fd:0x7f529d75d9a0
 11862 ms  0x6a43 PR_Close()
 11862 ms  0x6a43 fd:0x7f52ae47e1f0
 11862 ms  0x6a43 PR_Close()
 11862 ms  0x6a43 fd:0x7f52b345fa90
 11862 ms     | 0x6a43 PK11_Encrypt()
 11862 ms     | 0x6a43 symkey:0x7f52aefc4a80
           /* TID 0x6aad */
 11870 ms  0x6aad PR_Close()
 11870 ms  0x6aad fd:0x7f529d75d310
           /* TID 0x6a38 */
 11880 ms  0x6a38 PR_Close()
 11880 ms  0x6a38 fd:0x7f52ae47eac0
 11881 ms  0x6a38 PR_Close()
 11881 ms  0x6a38 fd:0x7f529d75d400
           /* TID 0x6a3d */
 11881 ms  0x6a3d PR_Close()
 11881 ms  0x6a3d fd:0x7f52b4948790
           /* TID 0x6a43 */
 11885 ms  0x6a43 PR_Close()
 11885 ms  0x6a43 fd:0x7f52b004bd60
 11885 ms  0x6a43 PR_Close()
 11885 ms  0x6a43 fd:0x7f52afeb6e80
 11885 ms  0x6a43 PR_Close()
 11885 ms  0x6a43 fd:0x7f52aefdd3d0
           /* TID 0x6a9b */
 11886 ms  0x6a9b PR_Close()
 11886 ms  0x6a9b fd:0x7f529d75d6a0
 11886 ms  0x6a9b PR_Close()
 11886 ms  0x6a9b fd:0x7f529d75d6a0
 11886 ms  0x6a9b PR_Close()
 11886 ms  0x6a9b fd:0x7f529d75d6a0
 11886 ms  0x6a9b PR_Close()
 11886 ms  0x6a9b fd:0x7f529d9e85e0
           /* TID 0x6aad */
 11887 ms  0x6aad PR_Close()
 11887 ms  0x6aad fd:0x7f529d9e85e0
           /* TID 0x6a4b */
 11891 ms  0x6a4b PR_Close()
 11891 ms  0x6a4b fd:0x7f52ae47ec70
 11891 ms  0x6a4b PR_Close()
 11891 ms  0x6a4b fd:0x7f52ae47ed00
           /* TID 0x6a3d */
 11898 ms  0x6a3d PR_Close()
 11898 ms  0x6a3d fd:0x7f52b8442970
           /* TID 0x6a38 */
 11901 ms  0x6a38 PR_Close()
 11901 ms  0x6a38 fd:0x7f529d75dfd0
 11901 ms  0x6a38 PR_Close()
 11901 ms  0x6a38 fd:0x7f52ae47ee80
           /* TID 0x6aad */
 11904 ms  0x6aad PR_Close()
 11904 ms  0x6aad fd:0x7f529d774400
 11907 ms  0x6aad PR_Close()
 11907 ms  0x6aad fd:0x7f529d774400
 11944 ms  0x6aad PR_Close()
 11944 ms  0x6aad fd:0x7f529d774970
 11946 ms  0x6aad PR_Close()
 11946 ms  0x6aad fd:0x7f529d774970
 11968 ms  0x6aad PR_Close()
 11968 ms  0x6aad fd:0x7f529d99d1f0
 11969 ms  0x6aad PR_Close()
 11969 ms  0x6aad fd:0x7f529d99d220
 11983 ms  0x6aad PR_Close()
 11983 ms  0x6aad fd:0x7f529d9e84f0
 11989 ms  0x6aad PR_Close()
 11989 ms  0x6aad fd:0x7f52ae47ec70
 11995 ms  0x6aad PR_Close()
 11995 ms  0x6aad fd:0x7f52ae47efd0
 12005 ms  0x6aad PR_Close()
 12005 ms  0x6aad fd:0x7f52ae4b9df0
 12007 ms  0x6aad PR_Close()
 12007 ms  0x6aad fd:0x7f52ae4b9df0
           /* TID 0x6a38 */
 12164 ms  0x6a38 PR_Close()
 12164 ms  0x6a38 fd:0x7f529d7740d0
 12165 ms  0x6a38 PR_Close()
 12165 ms  0x6a38 fd:0x7f529d7740d0
 12170 ms  0x6a38 PR_Close()
 12170 ms  0x6a38 fd:0x7f52d6cda130
 12170 ms  0x6a38 PR_Close()
 12170 ms  0x6a38 fd:0x7f52d6cda190
Process terminated
