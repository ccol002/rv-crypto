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
           /* TID 0x2571 */
    61 ms  0x2571 PR_Close()
    61 ms  0x2571 fd:0x7f305bac0670
           /* TID 0x2569 */
   240 ms  0x2569 SSL_ImportFD()
   240 ms  0x2569 ret:0x7f305bacb250
   240 ms  0x2569 SSL_AuthCertificateHook()
   240 ms  0x2569 fd:0x7f305bacb250
   240 ms  0x2569 ret:0x0
   240 ms  0x2569 PR_Connect()
   240 ms  0x2569 fd:0x7f305bacb250
   448 ms  0x2569 SECKEY_CreateECPrivateKey()
   448 ms  0x2569 cx:0x7f305babfb28
   449 ms     | 0x2569 EC_ValidatePublicKey()
   450 ms     | 0x2569 ret:0x0
   450 ms  0x2569 ret:0x7f305bb4a820::7f305bb4a820  30 cd ac 5b                                      0..[
   450 ms  0x2569 SECKEY_CreateECPrivateKey()
   450 ms  0x2569 cx:0x7f305babfb28
   452 ms     | 0x2569 EC_ValidatePublicKey()
   457 ms     | 0x2569 ret:0x0
   457 ms  0x2569 ret:0x7f305bb4c820::7f305bb4c820  10 cf ac 5b                                      ...[
           /* TID 0x25d5 */
   593 ms  0x25d5 PR_Close()
   593 ms  0x25d5 fd:0x7f305bacbb80
   596 ms  0x25d5 PR_Close()
   596 ms  0x25d5 fd:0x7f305bacbb80
           /* TID 0x2569 */
   671 ms  SECKEY_ECParamsToKeySize()
   671 ms  0x2569 ret:0x100
   672 ms  0x2569 SECKEY_CreateECPrivateKey()
   672 ms  0x2569 cx:0x7f305babfb28
   673 ms     | 0x2569 EC_ValidatePublicKey()
   678 ms     | 0x2569 ret:0x0
   678 ms  0x2569 ret:0x7f305bb55820::7f305bb55820  70 09 be 5b                                      p..[
   679 ms  0x2569 PK11_PubDeriveWithKDF()
   679 ms  0x2569 seckey:0x7f305bb55820
   679 ms     | 0x2569 EC_ValidatePublicKey()
   683 ms     | 0x2569 ret:0x0
   687 ms  0x2569 ret:0x7f305d102d80
   687 ms  0x2569 PK11_DeriveWithFlags()
   687 ms  0x2569 basekey:0x7f305d102d80
   687 ms     | 0x2569 PK11_DeriveWithTemplate()
   688 ms  0x2569 ret:0x7f305bbde680
   688 ms  0x2569 PK11_Derive()
   688 ms  0x2569 basekey:0x7f305bbde680
   688 ms     | 0x2569 PK11_DeriveWithTemplate()
   688 ms  0x2569 ret:0x7f305bbde780
   688 ms  0x2569 SECKEY_DestroyPrivateKey()
   688 ms  0x2569 privk:0x7f305bb55820::7f305bb55820  70 09 be 5b                                      p..[
   688 ms  0x2569 privk:0x7f305bb55820::7f305bb55820  e5 e5 e5 e5                                      ....
   688 ms  0x2569 PK11_Encrypt()
   688 ms  0x2569 symkey:0x7f305bbde900
   689 ms  0x2569 PR_Connect()
   689 ms  0x2569 fd:0x7f305bacbd00
           /* TID 0x25d5 */
   722 ms  0x25d5 PR_Close()
   722 ms  0x25d5 fd:0x7f305bacbc70
           /* TID 0x2571 */
   743 ms  0x2571 PR_Close()
   743 ms  0x2571 fd:0x7f305bacbc70
           /* TID 0x25cf */
   744 ms  0x25cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   744 ms  0x25cf ret:0x0
           /* TID 0x2569 */
   745 ms  0x2569 SSL_AuthCertificateComplete()
   745 ms  0x2569 fd:0x7f305bacb250
   745 ms  0x2569 err:0x0
   745 ms  0x2569 PK11_Encrypt()
   745 ms  0x2569 symkey:0x7f305bbde900
   896 ms  0x2569 SECKEY_DestroyPrivateKey()
   896 ms  0x2569 privk:0x7f305bb4c820::7f305bb4c820  10 cf ac 5b                                      ...[
   896 ms  0x2569 privk:0x7f305bb4c820::7f305bb4c820  e5 e5 e5 e5                                      ....
   897 ms  0x2569 SECKEY_DestroyPrivateKey()
   897 ms  0x2569 privk:0x7f305bb4a820::7f305bb4a820  30 cd ac 5b                                      0..[
   897 ms  0x2569 privk:0x7f305bb4a820::7f305bb4a820  e5 e5 e5 e5                                      ....
  1105 ms  0x2569 SSL_ImportFD()
  1105 ms  0x2569 ret:0x7f305bacbf70
  1105 ms  0x2569 SSL_AuthCertificateHook()
  1105 ms  0x2569 fd:0x7f305bacbf70
  1105 ms  0x2569 ret:0x0
  1105 ms  0x2569 PR_Connect()
  1105 ms  0x2569 fd:0x7f305bacbf70
  1130 ms  0x2569 SECKEY_CreateECPrivateKey()
  1130 ms  0x2569 cx:0x7f305bbd25c8
  1131 ms     | 0x2569 EC_ValidatePublicKey()
  1131 ms     | 0x2569 ret:0x0
  1131 ms  0x2569 ret:0x7f305bb4c020::7f305bb4c020  10 cf ac 5b                                      ...[
  1131 ms  0x2569 SECKEY_CreateECPrivateKey()
  1131 ms  0x2569 cx:0x7f305bbd25c8
  1132 ms     | 0x2569 EC_ValidatePublicKey()
  1134 ms     | 0x2569 ret:0x0
  1134 ms  0x2569 ret:0x7f305bb52020::7f305bb52020  90 07 be 5b                                      ...[
           /* TID 0x25cf */
  1186 ms  0x25cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1186 ms  0x25cf ret:0x0
           /* TID 0x2569 */
  1187 ms  SECKEY_ECParamsToKeySize()
  1187 ms  0x2569 ret:0x100
  1187 ms  0x2569 SECKEY_CreateECPrivateKey()
  1187 ms  0x2569 cx:0x7f305bbd25c8
  1188 ms     | 0x2569 EC_ValidatePublicKey()
  1192 ms     | 0x2569 ret:0x0
  1192 ms  0x2569 ret:0x7f305bb55820::7f305bb55820  10 0a be 5b                                      ...[
  1192 ms  0x2569 PK11_PubDeriveWithKDF()
  1192 ms  0x2569 seckey:0x7f305bb55820
  1192 ms     | 0x2569 EC_ValidatePublicKey()
  1196 ms     | 0x2569 ret:0x0
  1200 ms  0x2569 ret:0x7f305d102d80
  1200 ms  0x2569 PK11_DeriveWithFlags()
  1200 ms  0x2569 basekey:0x7f305d102d80
  1200 ms     | 0x2569 PK11_DeriveWithTemplate()
  1200 ms  0x2569 ret:0x7f305bb67700
  1200 ms  0x2569 PK11_Derive()
  1200 ms  0x2569 basekey:0x7f305bb67700
  1200 ms     | 0x2569 PK11_DeriveWithTemplate()
  1200 ms  0x2569 ret:0x7f305bbdf180
  1200 ms  0x2569 SECKEY_DestroyPrivateKey()
  1200 ms  0x2569 privk:0x7f305bb55820::7f305bb55820  10 0a be 5b                                      ...[
  1200 ms  0x2569 privk:0x7f305bb55820::7f305bb55820  e5 e5 e5 e5                                      ....
  1200 ms  0x2569 PK11_Encrypt()
  1200 ms  0x2569 symkey:0x7f305bbdf680
  1201 ms  0x2569 SSL_AuthCertificateComplete()
  1201 ms  0x2569 fd:0x7f305bacbf70
  1201 ms  0x2569 err:0x0
  1201 ms  0x2569 PK11_Encrypt()
  1201 ms  0x2569 symkey:0x7f305bbdf680
  1252 ms  0x2569 SECKEY_DestroyPrivateKey()
  1252 ms  0x2569 privk:0x7f305bb52020::7f305bb52020  90 07 be 5b                                      ...[
  1253 ms  0x2569 privk:0x7f305bb52020::7f305bb52020  e5 e5 e5 e5                                      ....
  1253 ms  0x2569 SECKEY_DestroyPrivateKey()
  1253 ms  0x2569 privk:0x7f305bb4c020::7f305bb4c020  10 cf ac 5b                                      ...[
  1253 ms  0x2569 privk:0x7f305bb4c020::7f305bb4c020  e5 e5 e5 e5                                      ....
  1257 ms  0x2569 PK11_Encrypt()
  1257 ms  0x2569 symkey:0x7f305bbdf680
  1289 ms  0x2569 PK11_Encrypt()
  1289 ms  0x2569 symkey:0x7f305bbdf680
  1320 ms  0x2569 PK11_Encrypt()
  1320 ms  0x2569 symkey:0x7f305bbdf680
  1351 ms  0x2569 PK11_Encrypt()
  1351 ms  0x2569 symkey:0x7f305bbdf680
  1466 ms  0x2569 PK11_Encrypt()
  1466 ms  0x2569 symkey:0x7f305bbdf680
  1498 ms  0x2569 PK11_Encrypt()
  1498 ms  0x2569 symkey:0x7f305bbdf680
  1529 ms  0x2569 PK11_Encrypt()
  1529 ms  0x2569 symkey:0x7f305bbdf680
           /* TID 0x25c7 */
  1558 ms  0x25c7 PR_Close()
  1558 ms  0x25c7 fd:0x7f305bacbee0
  1558 ms  0x25c7 PR_Close()
  1558 ms  0x25c7 fd:0x7f305bacbf40
  1558 ms  0x25c7 PR_Close()
  1558 ms  0x25c7 fd:0x7f305bacbee0
  1558 ms  0x25c7 PR_Close()
  1558 ms  0x25c7 fd:0x7f305bacbf40
  1558 ms  0x25c7 PR_Close()
  1558 ms  0x25c7 fd:0x7f305bacbee0
  1558 ms  0x25c7 PR_Close()
  1558 ms  0x25c7 fd:0x7f305bacbf40
  1558 ms  0x25c7 PR_Close()
  1558 ms  0x25c7 fd:0x7f305bacbee0
  1558 ms  0x25c7 PR_Close()
  1558 ms  0x25c7 fd:0x7f305bacbf40
  1558 ms  0x25c7 PR_Close()
  1558 ms  0x25c7 fd:0x7f305bacbee0
  1558 ms  0x25c7 PR_Close()
  1558 ms  0x25c7 fd:0x7f305bacbf40
  1559 ms  0x25c7 PR_Close()
  1559 ms  0x25c7 fd:0x7f305bacbee0
  1559 ms  0x25c7 PR_Close()
  1559 ms  0x25c7 fd:0x7f305bacbf40
  1559 ms  0x25c7 PR_Close()
  1559 ms  0x25c7 fd:0x7f305bacbee0
  1559 ms  0x25c7 PR_Close()
  1559 ms  0x25c7 fd:0x7f305bacbf40
  1559 ms  0x25c7 PR_Close()
  1559 ms  0x25c7 fd:0x7f305bacbee0
  1559 ms  0x25c7 PR_Close()
  1559 ms  0x25c7 fd:0x7f305bacbf40
  1559 ms  0x25c7 PR_Close()
  1559 ms  0x25c7 fd:0x7f305bacbee0
  1559 ms  0x25c7 PR_Close()
  1559 ms  0x25c7 fd:0x7f305bacbf40
  1559 ms  0x25c7 PR_Close()
  1559 ms  0x25c7 fd:0x7f305bacbee0
  1559 ms  0x25c7 PR_Close()
  1559 ms  0x25c7 fd:0x7f305bacbf40
  1559 ms  0x25c7 PR_Close()
  1559 ms  0x25c7 fd:0x7f305bacbee0
  1559 ms  0x25c7 PR_Close()
  1559 ms  0x25c7 fd:0x7f305bacbf40
  1560 ms  0x25c7 PR_Close()
  1560 ms  0x25c7 fd:0x7f305bacbee0
  1560 ms  0x25c7 PR_Close()
  1560 ms  0x25c7 fd:0x7f305bacbf40
  1560 ms  0x25c7 PR_Close()
  1560 ms  0x25c7 fd:0x7f305bacbee0
  1560 ms  0x25c7 PR_Close()
  1560 ms  0x25c7 fd:0x7f305bacbf40
  1560 ms  0x25c7 PR_Close()
  1560 ms  0x25c7 fd:0x7f305bacbee0
  1560 ms  0x25c7 PR_Close()
  1560 ms  0x25c7 fd:0x7f305bacbf40
  1563 ms  0x25c7 PR_Close()
  1563 ms  0x25c7 fd:0x7f305bacbee0
  1563 ms  0x25c7 PR_Close()
  1563 ms  0x25c7 fd:0x7f305bacbee0
  1566 ms  0x25c7 PR_Close()
  1566 ms  0x25c7 fd:0x7f305bacbee0
  1566 ms  0x25c7 PR_Close()
  1566 ms  0x25c7 fd:0x7f305bacbf10
  1568 ms  0x25c7 PR_Close()
  1568 ms  0x25c7 fd:0x7f305bacbf10
  1569 ms  0x25c7 PR_Close()
  1569 ms  0x25c7 fd:0x7f305bacbf10
  1571 ms  0x25c7 PR_Close()
  1571 ms  0x25c7 fd:0x7f305bacbf10
  1571 ms  0x25c7 PR_Close()
  1571 ms  0x25c7 fd:0x7f305bacbf10
  1617 ms  0x25c7 PR_Close()
  1617 ms  0x25c7 fd:0x7f305bacbf10
  1619 ms  0x25c7 PR_Close()
  1619 ms  0x25c7 fd:0x7f305bacbf10
  1632 ms  0x25c7 PR_Close()
  1632 ms  0x25c7 fd:0x7f305bacbf10
  1633 ms  0x25c7 PR_Close()
  1633 ms  0x25c7 fd:0x7f305bacbf10
  1641 ms  0x25c7 PR_Close()
  1641 ms  0x25c7 fd:0x7f305bacbf10
  1641 ms  0x25c7 PR_Close()
  1641 ms  0x25c7 fd:0x7f305bacbf10
  1643 ms  0x25c7 PR_Close()
  1643 ms  0x25c7 fd:0x7f305bacbf10
  1643 ms  0x25c7 PR_Close()
  1643 ms  0x25c7 fd:0x7f305bacbf10
           /* TID 0x25c5 */
  1643 ms  0x25c5 PR_Close()
  1643 ms  0x25c5 fd:0x7f305bacbf10
  1643 ms  0x25c5 PR_Close()
  1643 ms  0x25c5 fd:0x7f305bacbf10
  1643 ms  0x25c5 PR_Close()
  1643 ms  0x25c5 fd:0x7f305bacbf10
  1643 ms  0x25c5 PR_Close()
  1643 ms  0x25c5 fd:0x7f305bacbf10
  1643 ms  0x25c5 PR_Close()
  1643 ms  0x25c5 fd:0x7f305bacbf10
  1644 ms  0x25c5 PR_Close()
  1644 ms  0x25c5 fd:0x7f305bacbf10
  1644 ms  0x25c5 PR_Close()
  1644 ms  0x25c5 fd:0x7f305bacbf10
  1644 ms  0x25c5 PR_Close()
  1644 ms  0x25c5 fd:0x7f305bacbf10
  1644 ms  0x25c5 PR_Close()
  1644 ms  0x25c5 fd:0x7f305bacbf10
  1644 ms  0x25c5 PR_Close()
  1644 ms  0x25c5 fd:0x7f305bacbf10
  1644 ms  0x25c5 PR_Close()
  1644 ms  0x25c5 fd:0x7f305bacbf10
  1644 ms  0x25c5 PR_Close()
  1644 ms  0x25c5 fd:0x7f305bacbf10
  1644 ms  0x25c5 PR_Close()
  1644 ms  0x25c5 fd:0x7f305bacbf10
  1644 ms  0x25c5 PR_Close()
  1644 ms  0x25c5 fd:0x7f305bacbf10
  1644 ms  0x25c5 PR_Close()
  1644 ms  0x25c5 fd:0x7f305bacbf10
           /* TID 0x25d5 */
  2147 ms  0x25d5 PR_Close()
  2147 ms  0x25d5 fd:0x7f305bbc7370
  2150 ms  0x25d5 PR_Close()
  2150 ms  0x25d5 fd:0x7f305bbc7370
  2814 ms  0x25d5 PR_Close()
  2814 ms  0x25d5 fd:0x7f305bbc7370
           /* TID 0x2571 */
  4124 ms  0x2571 PR_Close()
  4124 ms  0x2571 fd:0x7f305bbc7370
  4125 ms  0x2571 PR_Close()
  4125 ms  0x2571 fd:0x7f305bbc74c0
  4125 ms  0x2571 PR_Close()
  4125 ms  0x2571 fd:0x7f305bbc7520
           /* TID 0x2569 */
  4465 ms  0x2569 SSL_ImportFD()
  4465 ms  0x2569 ret:0x7f305ccc6580
  4465 ms  0x2569 SSL_AuthCertificateHook()
  4465 ms  0x2569 fd:0x7f305ccc6580
  4465 ms  0x2569 ret:0x0
  4465 ms  0x2569 PR_Connect()
  4465 ms  0x2569 fd:0x7f305ccc6580
  4505 ms  0x2569 SECKEY_CreateECPrivateKey()
  4505 ms  0x2569 cx:0x7f305bbd2908
  4505 ms     | 0x2569 EC_ValidatePublicKey()
  4505 ms     | 0x2569 ret:0x0
  4506 ms  0x2569 ret:0x7f305d14d820::7f305d14d820  40 47 cf 60                                      @G.`
  4506 ms  0x2569 SECKEY_CreateECPrivateKey()
  4506 ms  0x2569 cx:0x7f305bbd2908
  4506 ms     | 0x2569 EC_ValidatePublicKey()
  4508 ms     | 0x2569 ret:0x0
  4508 ms  0x2569 ret:0x7f3060cda820::7f3060cda820  10 4a cf 60                                      .J.`
  4548 ms  0x2569 PK11_Derive()
  4548 ms  0x2569 basekey:0x7f305d102d80
  4549 ms     | 0x2569 PK11_DeriveWithTemplate()
  4549 ms  0x2569 ret:0x7f305ccac580
  4549 ms  0x2569 PK11_PubDeriveWithKDF()
  4549 ms  0x2569 seckey:0x7f305d14d820
  4549 ms     | 0x2569 EC_ValidatePublicKey()
  4549 ms     | 0x2569 ret:0x0
  4550 ms  0x2569 ret:0x7f305d102d80
  4550 ms  SECKEY_ECParamsToKeySize()
  4550 ms  0x2569 ret:0xff
  4550 ms  0x2569 PK11_DeriveWithFlags()
  4550 ms  0x2569 basekey:0x7f305ccac580
  4550 ms     | 0x2569 PK11_DeriveWithTemplate()
  4550 ms  0x2569 ret:0x7f305ccac800
  4550 ms  0x2569 PK11_Derive()
  4550 ms  0x2569 basekey:0x7f305d102d80
  4550 ms     | 0x2569 PK11_DeriveWithTemplate()
  4550 ms  0x2569 ret:0x7f305ccac880
  4550 ms  0x2569 PK11_DeriveWithFlags()
  4550 ms  0x2569 basekey:0x7f305ccac880
  4550 ms     | 0x2569 PK11_DeriveWithTemplate()
  4550 ms  0x2569 ret:0x7f305ccac580
  4550 ms  0x2569 PK11_DeriveWithFlags()
  4550 ms  0x2569 basekey:0x7f305ccac880
  4550 ms     | 0x2569 PK11_DeriveWithTemplate()
  4550 ms  0x2569 ret:0x7f305d102d80
  4550 ms  0x2569 PK11_DeriveWithFlags()
  4550 ms  0x2569 basekey:0x7f305ccac880
  4550 ms     | 0x2569 PK11_DeriveWithTemplate()
  4550 ms  0x2569 ret:0x7f305ccac800
  4551 ms  0x2569 PK11_Derive()
  4551 ms  0x2569 basekey:0x7f305ccac900
  4551 ms     | 0x2569 PK11_DeriveWithTemplate()
  4551 ms  0x2569 ret:0x7f305ccac980
  4551 ms  0x2569 PK11_DeriveWithFlags()
  4551 ms  0x2569 basekey:0x7f305d102d80
  4551 ms     | 0x2569 PK11_DeriveWithTemplate()
  4551 ms  0x2569 ret:0x7f305ccac880
  4551 ms  0x2569 PK11_DeriveWithFlags()
  4551 ms  0x2569 basekey:0x7f305d102d80
  4551 ms     | 0x2569 PK11_DeriveWithTemplate()
  4551 ms  0x2569 ret:0x7f305ccac800
  4555 ms  SECKEY_ECParamsToKeySize()
  4555 ms  0x2569 ret:0x100
  4555 ms  SECKEY_ECParamsToBasePointOrderLen()
  4555 ms  0x2569 ret:0x100
  4555 ms  SECKEY_ECParamsToBasePointOrderLen()
  4555 ms  0x2569 ret:0x100
  4555 ms  0x2569 EC_ValidatePublicKey()
  4560 ms  0x2569 ret:0x0
  4565 ms  0x2569 PK11_DeriveWithFlags()
  4565 ms  0x2569 basekey:0x7f305d102d80
  4566 ms     | 0x2569 PK11_DeriveWithTemplate()
  4566 ms  0x2569 ret:0x7f305ccac800
  4566 ms  0x2569 PR_Connect()
  4566 ms  0x2569 fd:0x7f305ccc6a60
           /* TID 0x2571 */
  4629 ms  0x2571 PR_Close()
  4629 ms  0x2571 fd:0x7f305ccc69a0
           /* TID 0x25cf */
  4629 ms  0x25cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4630 ms  0x25cf ret:0x0
  4630 ms  0x25cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4630 ms  0x25cf ret:0x0
           /* TID 0x2569 */
  4697 ms  0x2569 SSL_AuthCertificateComplete()
  4697 ms  0x2569 fd:0x7f305ccc6580
  4697 ms  0x2569 err:0x0
  4697 ms     | 0x2569 PK11_DeriveWithFlags()
  4697 ms     | 0x2569 basekey:0x7f305ccac980
  4697 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  4697 ms     | 0x2569 ret:0x7f305ccac800
  4698 ms     | 0x2569 PK11_DeriveWithFlags()
  4698 ms     | 0x2569 basekey:0x7f305ccac980
  4698 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  4698 ms     | 0x2569 ret:0x7f305ccac900
  4698 ms     | 0x2569 PK11_DeriveWithFlags()
  4698 ms     | 0x2569 basekey:0x7f305ccac980
  4698 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  4698 ms     | 0x2569 ret:0x7f305ccac600
  4698 ms     | 0x2569 PK11_DeriveWithFlags()
  4698 ms     | 0x2569 basekey:0x7f305ccac580
  4698 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  4698 ms     | 0x2569 ret:0x7f305ccac680
  4698 ms     | 0x2569 PK11_DeriveWithFlags()
  4698 ms     | 0x2569 basekey:0x7f305ccac580
  4698 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  4698 ms     | 0x2569 ret:0x7f305ccacb80
  4698 ms     | 0x2569 PK11_DeriveWithFlags()
  4698 ms     | 0x2569 basekey:0x7f305ccac900
  4698 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  4698 ms     | 0x2569 ret:0x7f305ccacb80
  4698 ms     | 0x2569 PK11_DeriveWithFlags()
  4698 ms     | 0x2569 basekey:0x7f305ccac900
  4699 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  4699 ms     | 0x2569 ret:0x7f305ccace00
  4699 ms     | 0x2569 PK11_DeriveWithFlags()
  4699 ms     | 0x2569 basekey:0x7f305ccac580
  4699 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  4699 ms     | 0x2569 ret:0x7f305ccac880
  4699 ms     | 0x2569 PK11_Encrypt()
  4699 ms     | 0x2569 symkey:0x7f305ccac680
  4699 ms     | 0x2569 PK11_DeriveWithFlags()
  4699 ms     | 0x2569 basekey:0x7f305ccac800
  4699 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  4699 ms     | 0x2569 ret:0x7f305ccac880
  4699 ms     | 0x2569 PK11_DeriveWithFlags()
  4699 ms     | 0x2569 basekey:0x7f305ccac800
  4699 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  4699 ms     | 0x2569 ret:0x7f305ccace00
  4699 ms     | 0x2569 PK11_DeriveWithFlags()
  4699 ms     | 0x2569 basekey:0x7f305ccac980
  4699 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  4700 ms     | 0x2569 ret:0x7f305ccac680
  4700 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  4700 ms     | 0x2569 privk:0x7f3060cda820::7f3060cda820  10 4a cf 60                                      .J.`
  4700 ms     | 0x2569 privk:0x7f3060cda820::7f3060cda820  e5 e5 e5 e5                                      ....
  4700 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  4700 ms     | 0x2569 privk:0x7f305d14d820::7f305d14d820  40 47 cf 60                                      @G.`
  4700 ms     | 0x2569 privk:0x7f305d14d820::7f305d14d820  e5 e5 e5 e5                                      ....
  4701 ms  0x2569 PK11_Encrypt()
  4701 ms  0x2569 symkey:0x7f305ccac880
  4703 ms  0x2569 PK11_Encrypt()
  4703 ms  0x2569 symkey:0x7f305ccac880
  4739 ms  0x2569 PK11_DeriveWithFlags()
  4739 ms  0x2569 basekey:0x7f305ccac680
  4739 ms     | 0x2569 PK11_DeriveWithTemplate()
  4739 ms  0x2569 ret:0x7f305d102d80
  4739 ms  0x2569 PK11_DeriveWithFlags()
  4739 ms  0x2569 basekey:0x7f305ccac680
  4739 ms     | 0x2569 PK11_DeriveWithTemplate()
  4739 ms  0x2569 ret:0x7f305d102d80
  4740 ms  0x2569 PK11_Encrypt()
  4740 ms  0x2569 symkey:0x7f305ccac880
           /* TID 0x2580 */
  4790 ms  0x2580 PR_Close()
  4790 ms  0x2580 fd:0x7f305ccf9d90
           /* TID 0x2571 */
  4862 ms  0x2571 PR_Close()
  4862 ms  0x2571 fd:0x7f304a739fa0
           /* TID 0x2569 */
  5001 ms  0x2569 SSL_ImportFD()
  5001 ms  0x2569 ret:0x7f304aaec7f0
  5001 ms  0x2569 SSL_AuthCertificateHook()
  5001 ms  0x2569 fd:0x7f304aaec7f0
  5001 ms  0x2569 ret:0x0
  5002 ms  0x2569 PR_Connect()
  5002 ms  0x2569 fd:0x7f304aaec7f0
  5002 ms  0x2569 SSL_ImportFD()
  5002 ms  0x2569 ret:0x7f304aaec820
  5002 ms  0x2569 SSL_AuthCertificateHook()
  5002 ms  0x2569 fd:0x7f304aaec820
  5002 ms  0x2569 ret:0x0
  5002 ms  0x2569 PR_Connect()
  5002 ms  0x2569 fd:0x7f304aaec820
  5039 ms  0x2569 SECKEY_CreateECPrivateKey()
  5039 ms  0x2569 cx:0x7f305bbd2f88
  5040 ms     | 0x2569 EC_ValidatePublicKey()
  5040 ms     | 0x2569 ret:0x0
  5040 ms  0x2569 ret:0x7f304a78c020::7f304a78c020  90 b2 7e 4a                                      ..~J
  5041 ms  0x2569 SECKEY_CreateECPrivateKey()
  5041 ms  0x2569 cx:0x7f305bbd2f88
  5045 ms     | 0x2569 EC_ValidatePublicKey()
  5049 ms     | 0x2569 ret:0x0
  5049 ms  0x2569 ret:0x7f304a78e020::7f304a78e020  40 b7 7e 4a                                      @.~J
  5053 ms  0x2569 SECKEY_CreateECPrivateKey()
  5053 ms  0x2569 cx:0x7f305bbd32c8
  5055 ms     | 0x2569 EC_ValidatePublicKey()
  5055 ms     | 0x2569 ret:0x0
  5055 ms  0x2569 ret:0x7f304a790820::7f304a790820  30 b8 7e 4a                                      0.~J
  5055 ms  0x2569 SECKEY_CreateECPrivateKey()
  5055 ms  0x2569 cx:0x7f305bbd32c8
  5063 ms     | 0x2569 EC_ValidatePublicKey()
  5066 ms     | 0x2569 ret:0x0
  5066 ms  0x2569 ret:0x7f304a792020::7f304a792020  b0 ba 7e 4a                                      ..~J
  5067 ms  0x2569 SSL_ImportFD()
  5067 ms  0x2569 ret:0x7f304a7d7640
  5067 ms  0x2569 SSL_AuthCertificateHook()
  5067 ms  0x2569 fd:0x7f304a7d7640
  5067 ms  0x2569 ret:0x0
  5068 ms  0x2569 PR_Connect()
  5068 ms  0x2569 fd:0x7f304a7d7640
  5093 ms  SECKEY_ECParamsToKeySize()
  5093 ms  0x2569 ret:0x100
  5093 ms  0x2569 SECKEY_CreateECPrivateKey()
  5093 ms  0x2569 cx:0x7f305bbd2f88
  5094 ms     | 0x2569 EC_ValidatePublicKey()
  5098 ms     | 0x2569 ret:0x0
  5098 ms  0x2569 ret:0x7f304a844020::7f304a844020  f0 a1 83 4a                                      ...J
  5099 ms  0x2569 PK11_PubDeriveWithKDF()
  5099 ms  0x2569 seckey:0x7f304a844020
  5099 ms     | 0x2569 EC_ValidatePublicKey()
  5103 ms     | 0x2569 ret:0x0
  5107 ms  0x2569 ret:0x7f305d102d80
  5107 ms  0x2569 PK11_DeriveWithFlags()
  5107 ms  0x2569 basekey:0x7f305d102d80
  5107 ms     | 0x2569 PK11_DeriveWithTemplate()
  5107 ms  0x2569 ret:0x7f305ccac580
  5107 ms  0x2569 PK11_Derive()
  5107 ms  0x2569 basekey:0x7f305ccac580
  5107 ms     | 0x2569 PK11_DeriveWithTemplate()
  5107 ms  0x2569 ret:0x7f305ccac980
  5107 ms  0x2569 SECKEY_DestroyPrivateKey()
  5107 ms  0x2569 privk:0x7f304a844020::7f304a844020  f0 a1 83 4a                                      ...J
  5107 ms  0x2569 privk:0x7f304a844020::7f304a844020  e5 e5 e5 e5                                      ....
  5108 ms  0x2569 PK11_Encrypt()
  5108 ms  0x2569 symkey:0x7f304a7e2880
  5109 ms  SECKEY_ECParamsToKeySize()
  5109 ms  0x2569 ret:0x100
  5109 ms  0x2569 SECKEY_CreateECPrivateKey()
  5109 ms  0x2569 cx:0x7f305bbd32c8
  5110 ms     | 0x2569 EC_ValidatePublicKey()
  5112 ms     | 0x2569 ret:0x0
  5112 ms  0x2569 ret:0x7f304a846020::7f304a846020  90 a2 87 4a                                      ...J
  5112 ms  0x2569 PK11_PubDeriveWithKDF()
  5112 ms  0x2569 seckey:0x7f304a846020
  5113 ms     | 0x2569 EC_ValidatePublicKey()
  5115 ms     | 0x2569 ret:0x0
  5117 ms  0x2569 ret:0x7f305d102d80
  5117 ms  0x2569 PK11_DeriveWithFlags()
  5117 ms  0x2569 basekey:0x7f305d102d80
  5117 ms     | 0x2569 PK11_DeriveWithTemplate()
  5117 ms  0x2569 ret:0x7f305ccace00
  5117 ms  0x2569 PK11_Derive()
  5117 ms  0x2569 basekey:0x7f305ccace00
  5117 ms     | 0x2569 PK11_DeriveWithTemplate()
  5117 ms  0x2569 ret:0x7f304a7e2980
  5117 ms  0x2569 SECKEY_DestroyPrivateKey()
  5117 ms  0x2569 privk:0x7f304a846020::7f304a846020  90 a2 87 4a                                      ...J
  5117 ms  0x2569 privk:0x7f304a846020::7f304a846020  e5 e5 e5 e5                                      ....
  5117 ms  0x2569 PK11_Encrypt()
  5117 ms  0x2569 symkey:0x7f304a7e2b00
  5121 ms  0x2569 SECKEY_CreateECPrivateKey()
  5121 ms  0x2569 cx:0x7f305bbd3468
  5122 ms     | 0x2569 EC_ValidatePublicKey()
  5122 ms     | 0x2569 ret:0x0
  5122 ms  0x2569 ret:0x7f304a848020::7f304a848020  c0 a4 87 4a                                      ...J
  5122 ms  0x2569 SECKEY_CreateECPrivateKey()
  5122 ms  0x2569 cx:0x7f305bbd3468
  5123 ms     | 0x2569 EC_ValidatePublicKey()
  5125 ms     | 0x2569 ret:0x0
  5125 ms  0x2569 ret:0x7f304a84a020::7f304a84a020  a0 a6 87 4a                                      ...J
  5125 ms  0x2569 PR_Connect()
  5125 ms  0x2569 fd:0x7f304aaecb50
           /* TID 0x2571 */
  5137 ms  0x2571 PR_Close()
  5137 ms  0x2571 fd:0x7f304aaec1c0
           /* TID 0x25cf */
  5138 ms  0x25cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5138 ms  0x25cf ret:0x0
  5138 ms  0x25cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5138 ms  0x25cf ret:0x0
           /* TID 0x2569 */
  5145 ms  0x2569 SSL_AuthCertificateComplete()
  5145 ms  0x2569 fd:0x7f304aaec7f0
  5145 ms  0x2569 err:0x0
  5145 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  5145 ms     | 0x2569 privk:0x7f304a78e020::7f304a78e020  40 b7 7e 4a                                      @.~J
  5145 ms     | 0x2569 privk:0x7f304a78e020::7f304a78e020  e5 e5 e5 e5                                      ....
  5145 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  5145 ms     | 0x2569 privk:0x7f304a78c020::7f304a78c020  90 b2 7e 4a                                      ..~J
  5145 ms     | 0x2569 privk:0x7f304a78c020::7f304a78c020  e5 e5 e5 e5                                      ....
  5146 ms  0x2569 PK11_Encrypt()
  5146 ms  0x2569 symkey:0x7f304a7e2880
  5146 ms  0x2569 PK11_Encrypt()
  5146 ms  0x2569 symkey:0x7f304a7e2880
  5146 ms  0x2569 PK11_Encrypt()
  5146 ms  0x2569 symkey:0x7f304a7e2880
  5146 ms  0x2569 PK11_Encrypt()
  5146 ms  0x2569 symkey:0x7f304a7e2880
  5147 ms  0x2569 PK11_Encrypt()
  5147 ms  0x2569 symkey:0x7f304a7e2880
  5163 ms  SECKEY_ECParamsToKeySize()
  5163 ms  0x2569 ret:0x100
  5163 ms  0x2569 SECKEY_CreateECPrivateKey()
  5163 ms  0x2569 cx:0x7f305bbd3468
  5164 ms     | 0x2569 EC_ValidatePublicKey()
  5165 ms     | 0x2569 ret:0x0
  5165 ms  0x2569 ret:0x7f304a841020::7f304a841020  40 b7 7e 4a                                      @.~J
  5166 ms  0x2569 PK11_PubDeriveWithKDF()
  5166 ms  0x2569 seckey:0x7f304a841020
  5166 ms     | 0x2569 EC_ValidatePublicKey()
  5167 ms     | 0x2569 ret:0x0
  5169 ms  0x2569 ret:0x7f305d102d80
  5169 ms  0x2569 PK11_DeriveWithFlags()
  5169 ms  0x2569 basekey:0x7f305d102d80
  5169 ms     | 0x2569 PK11_DeriveWithTemplate()
  5169 ms  0x2569 ret:0x7f304a7e2580
  5169 ms  0x2569 PK11_Derive()
  5169 ms  0x2569 basekey:0x7f304a7e2580
  5169 ms     | 0x2569 PK11_DeriveWithTemplate()
  5169 ms  0x2569 ret:0x7f304a7e2700
  5169 ms  0x2569 SECKEY_DestroyPrivateKey()
  5169 ms  0x2569 privk:0x7f304a841020::7f304a841020  40 b7 7e 4a                                      @.~J
  5169 ms  0x2569 privk:0x7f304a841020::7f304a841020  e5 e5 e5 e5                                      ....
  5169 ms  0x2569 PK11_Encrypt()
  5169 ms  0x2569 symkey:0x7f304a7e3080
  5169 ms  0x2569 SSL_AuthCertificateComplete()
  5169 ms  0x2569 fd:0x7f304a7d7640
  5169 ms  0x2569 err:0x0
           /* TID 0x2571 */
  5170 ms  0x2571 PR_Close()
  5170 ms  0x2571 fd:0x7f304a7d7fd0
           /* TID 0x2609 */
  5170 ms  0x2609 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5170 ms  0x2609 ret:0x0
  5170 ms  0x2609 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5170 ms  0x2609 ret:0x0
           /* TID 0x2569 */
  5171 ms  0x2569 PK11_Encrypt()
  5171 ms  0x2569 symkey:0x7f304a7e3080
  5171 ms  0x2569 PK11_Encrypt()
  5171 ms  0x2569 symkey:0x7f304a7e3080
  5171 ms  0x2569 SSL_AuthCertificateComplete()
  5171 ms  0x2569 fd:0x7f304aaec820
  5171 ms  0x2569 err:0x0
  5171 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  5171 ms     | 0x2569 privk:0x7f304a792020::7f304a792020  b0 ba 7e 4a                                      ..~J
  5171 ms     | 0x2569 privk:0x7f304a792020::7f304a792020  e5 e5 e5 e5                                      ....
  5171 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  5171 ms     | 0x2569 privk:0x7f304a790820::7f304a790820  30 b8 7e 4a                                      0.~J
  5171 ms     | 0x2569 privk:0x7f304a790820::7f304a790820  e5 e5 e5 e5                                      ....
  5174 ms  0x2569 PK11_Encrypt()
  5174 ms  0x2569 symkey:0x7f304a7e2b00
  5175 ms  0x2569 PK11_Encrypt()
  5175 ms  0x2569 symkey:0x7f304a7e2880
  5182 ms  0x2569 PK11_Encrypt()
  5182 ms  0x2569 symkey:0x7f304a7e2880
  5206 ms  0x2569 SECKEY_DestroyPrivateKey()
  5206 ms  0x2569 privk:0x7f304a84a020::7f304a84a020  a0 a6 87 4a                                      ...J
  5206 ms  0x2569 privk:0x7f304a84a020::7f304a84a020  e5 e5 e5 e5                                      ....
  5206 ms  0x2569 SECKEY_DestroyPrivateKey()
  5206 ms  0x2569 privk:0x7f304a848020::7f304a848020  c0 a4 87 4a                                      ...J
  5206 ms  0x2569 privk:0x7f304a848020::7f304a848020  e5 e5 e5 e5                                      ....
  5211 ms  0x2569 PR_Close()
  5211 ms  0x2569 fd:0x7f304aaec820
  5211 ms     | 0x2569 PK11_Encrypt()
  5211 ms     | 0x2569 symkey:0x7f304a7e2b00
           /* TID 0x2571 */
  5227 ms  0x2571 PR_Close()
  5227 ms  0x2571 fd:0x7f304a7d7550
           /* TID 0x2569 */
  5242 ms  0x2569 PK11_Encrypt()
  5242 ms  0x2569 symkey:0x7f304a7e3080
           /* TID 0x2571 */
  5248 ms  0x2571 PR_Close()
  5248 ms  0x2571 fd:0x7f304a739dc0
  5258 ms  0x2571 PR_Close()
  5258 ms  0x2571 fd:0x7f304a739dc0
  5259 ms  0x2571 PR_Close()
  5259 ms  0x2571 fd:0x7f304a739dc0
  5259 ms  0x2571 PR_Close()
  5259 ms  0x2571 fd:0x7f304a7d7bb0
  5260 ms  0x2571 PR_Close()
  5260 ms  0x2571 fd:0x7f304a7d7fd0
           /* TID 0x2569 */
  5705 ms  0x2569 SSL_ImportFD()
  5705 ms  0x2569 ret:0x7f304aaec850
  5705 ms  0x2569 SSL_AuthCertificateHook()
  5705 ms  0x2569 fd:0x7f304aaec850
  5705 ms  0x2569 ret:0x0
  5707 ms  0x2569 PK11_Encrypt()
  5707 ms  0x2569 symkey:0x7f304a7e2880
  5709 ms  0x2569 PK11_Encrypt()
  5709 ms  0x2569 symkey:0x7f304a7e2880
  5710 ms  0x2569 PK11_Encrypt()
  5710 ms  0x2569 symkey:0x7f304a7e2880
  5711 ms  0x2569 PK11_Encrypt()
  5711 ms  0x2569 symkey:0x7f304a7e2880
  5711 ms  0x2569 PR_Connect()
  5711 ms  0x2569 fd:0x7f304aaec850
  5715 ms  0x2569 SSL_ImportFD()
  5715 ms  0x2569 ret:0x7f304a739f70
  5715 ms  0x2569 SSL_AuthCertificateHook()
  5715 ms  0x2569 fd:0x7f304a739f70
  5715 ms  0x2569 ret:0x0
  5715 ms  0x2569 PR_Connect()
  5715 ms  0x2569 fd:0x7f304a739f70
  5717 ms  0x2569 SSL_ImportFD()
  5717 ms  0x2569 ret:0x7f304a739dc0
  5718 ms  0x2569 SSL_AuthCertificateHook()
  5718 ms  0x2569 fd:0x7f304a739dc0
  5718 ms  0x2569 ret:0x0
  5718 ms  0x2569 PR_Connect()
  5718 ms  0x2569 fd:0x7f304a739dc0
  5718 ms  0x2569 SSL_ImportFD()
  5718 ms  0x2569 ret:0x7f304aaab6a0
  5718 ms  0x2569 SSL_AuthCertificateHook()
  5718 ms  0x2569 fd:0x7f304aaab6a0
  5718 ms  0x2569 ret:0x0
  5718 ms  0x2569 PR_Connect()
  5718 ms  0x2569 fd:0x7f304aaab6a0
  5718 ms  0x2569 SSL_ImportFD()
  5718 ms  0x2569 ret:0x7f304aaec070
  5718 ms  0x2569 SSL_AuthCertificateHook()
  5718 ms  0x2569 fd:0x7f304aaec070
  5719 ms  0x2569 ret:0x0
  5719 ms  0x2569 PR_Connect()
  5719 ms  0x2569 fd:0x7f304aaec070
  5719 ms  0x2569 SSL_ImportFD()
  5719 ms  0x2569 ret:0x7f304aaec100
  5719 ms  0x2569 SSL_AuthCertificateHook()
  5719 ms  0x2569 fd:0x7f304aaec100
  5719 ms  0x2569 ret:0x0
  5719 ms  0x2569 PR_Connect()
  5719 ms  0x2569 fd:0x7f304aaec100
  5719 ms  0x2569 PK11_Encrypt()
  5719 ms  0x2569 symkey:0x7f304a7e2880
  5723 ms  0x2569 PK11_Encrypt()
  5723 ms  0x2569 symkey:0x7f304a7e2880
           /* TID 0x2571 */
  5752 ms  0x2571 PR_Close()
  5752 ms  0x2571 fd:0x7f304a7d7f10
           /* TID 0x2569 */
  5757 ms  0x2569 SECKEY_CreateECPrivateKey()
  5757 ms  0x2569 cx:0x7f305bbd32c8
  5766 ms     | 0x2569 EC_ValidatePublicKey()
  5766 ms     | 0x2569 ret:0x0
  5766 ms  0x2569 ret:0x7f304a790820::7f304a790820  f0 b6 7e 4a                                      ..~J
  5766 ms  0x2569 SECKEY_CreateECPrivateKey()
  5766 ms  0x2569 cx:0x7f305bbd32c8
  5768 ms     | 0x2569 EC_ValidatePublicKey()
  5774 ms     | 0x2569 ret:0x0
  5774 ms  0x2569 ret:0x7f304a793020::7f304a793020  c0 b9 7e 4a                                      ..~J
  5775 ms  0x2569 SECKEY_CreateECPrivateKey()
  5775 ms  0x2569 cx:0x7f305bbd4308
  5776 ms     | 0x2569 EC_ValidatePublicKey()
  5776 ms     | 0x2569 ret:0x0
  5776 ms  0x2569 ret:0x7f304a845020::7f304a845020  30 bd 7e 4a                                      0.~J
  5776 ms  0x2569 SECKEY_CreateECPrivateKey()
  5776 ms  0x2569 cx:0x7f305bbd4308
  5777 ms     | 0x2569 EC_ValidatePublicKey()
  5780 ms     | 0x2569 ret:0x0
  5780 ms  0x2569 ret:0x7f304a847820::7f304a847820  e0 a2 87 4a                                      ...J
  5780 ms  0x2569 SECKEY_CreateECPrivateKey()
  5780 ms  0x2569 cx:0x7f305bbd4168
  5781 ms     | 0x2569 EC_ValidatePublicKey()
  5781 ms     | 0x2569 ret:0x0
  5781 ms  0x2569 ret:0x7f304a84a020::7f304a84a020  20 a4 87 4a                                       ..J
  5781 ms  0x2569 SECKEY_CreateECPrivateKey()
  5781 ms  0x2569 cx:0x7f305bbd4168
  5782 ms     | 0x2569 EC_ValidatePublicKey()
  5784 ms     | 0x2569 ret:0x0
  5784 ms  0x2569 ret:0x7f304a84d020::7f304a84d020  00 a6 87 4a                                      ...J
  5784 ms  0x2569 SECKEY_CreateECPrivateKey()
  5784 ms  0x2569 cx:0x7f305bbd3fc8
  5785 ms     | 0x2569 EC_ValidatePublicKey()
  5785 ms     | 0x2569 ret:0x0
  5785 ms  0x2569 ret:0x7f304a84f820::7f304a84f820  e0 a7 87 4a                                      ...J
  5785 ms  0x2569 SECKEY_CreateECPrivateKey()
  5785 ms  0x2569 cx:0x7f305bbd3fc8
  5786 ms     | 0x2569 EC_ValidatePublicKey()
  5788 ms     | 0x2569 ret:0x0
  5788 ms  0x2569 ret:0x7f304a851820::7f304a851820  c0 a9 87 4a                                      ...J
  5789 ms  0x2569 SECKEY_CreateECPrivateKey()
  5789 ms  0x2569 cx:0x7f305bbd3e28
  5789 ms     | 0x2569 EC_ValidatePublicKey()
  5789 ms     | 0x2569 ret:0x0
  5789 ms  0x2569 ret:0x7f304a854020::7f304a854020  00 ab 87 4a                                      ...J
  5791 ms  0x2569 SECKEY_CreateECPrivateKey()
  5791 ms  0x2569 cx:0x7f305bbd3e28
  5791 ms     | 0x2569 EC_ValidatePublicKey()
  5793 ms     | 0x2569 ret:0x0
  5793 ms  0x2569 ret:0x7f304a856020::7f304a856020  e0 ac 87 4a                                      ...J
  5793 ms  0x2569 SECKEY_CreateECPrivateKey()
  5793 ms  0x2569 cx:0x7f305bbd3c88
  5794 ms     | 0x2569 EC_ValidatePublicKey()
  5794 ms     | 0x2569 ret:0x0
  5794 ms  0x2569 ret:0x7f304a858820::7f304a858820  20 ae 87 4a                                       ..J
  5794 ms  0x2569 SECKEY_CreateECPrivateKey()
  5794 ms  0x2569 cx:0x7f305bbd3c88
  5795 ms     | 0x2569 EC_ValidatePublicKey()
  5796 ms     | 0x2569 ret:0x0
  5796 ms  0x2569 ret:0x7f304a85a820::7f304a85a820  70 be 95 4a                                      p..J
           /* TID 0x2571 */
  5798 ms  0x2571 PR_Close()
  5798 ms  0x2571 fd:0x7f304a623040
  5799 ms  0x2571 PR_Close()
  5799 ms  0x2571 fd:0x7f304a623040
  5801 ms  0x2571 PR_Close()
  5801 ms  0x2571 fd:0x7f304a62a040
  5805 ms  0x2571 PR_Close()
  5805 ms  0x2571 fd:0x7f304a739ca0
  5806 ms  0x2571 PR_Close()
  5806 ms  0x2571 fd:0x7f304a61a2b0
           /* TID 0x2569 */
  5807 ms  0x2569 SSL_ImportFD()
  5807 ms  0x2569 ret:0x7f304a61a1f0
  5807 ms  0x2569 SSL_AuthCertificateHook()
  5807 ms  0x2569 fd:0x7f304a61a1f0
  5807 ms  0x2569 ret:0x0
  5810 ms  0x2569 PK11_Encrypt()
  5810 ms  0x2569 symkey:0x7f304a7e2880
  5811 ms  0x2569 PK11_Encrypt()
  5811 ms  0x2569 symkey:0x7f304a7e2880
  5811 ms  0x2569 PK11_Encrypt()
  5811 ms  0x2569 symkey:0x7f304a7e2880
  5811 ms  0x2569 PK11_Encrypt()
  5811 ms  0x2569 symkey:0x7f304a7e2880
  5811 ms  0x2569 PK11_Encrypt()
  5811 ms  0x2569 symkey:0x7f304a7e2880
  5811 ms  0x2569 PK11_Encrypt()
  5811 ms  0x2569 symkey:0x7f304a7e2880
  5811 ms  0x2569 PR_Connect()
  5811 ms  0x2569 fd:0x7f304a61a1f0
  5811 ms  0x2569 SSL_ImportFD()
  5811 ms  0x2569 ret:0x7f304a61a250
  5811 ms  0x2569 SSL_AuthCertificateHook()
  5811 ms  0x2569 fd:0x7f304a61a250
  5811 ms  0x2569 ret:0x0
  5811 ms  0x2569 PR_Connect()
  5811 ms  0x2569 fd:0x7f304a61a250
  5811 ms  0x2569 SSL_ImportFD()
  5811 ms  0x2569 ret:0x7f304a61a280
  5811 ms  0x2569 SSL_AuthCertificateHook()
  5811 ms  0x2569 fd:0x7f304a61a280
  5811 ms  0x2569 ret:0x0
  5811 ms  0x2569 PR_Connect()
  5811 ms  0x2569 fd:0x7f304a61a280
  5812 ms  0x2569 SSL_ImportFD()
  5812 ms  0x2569 ret:0x7f304a61a2b0
  5812 ms  0x2569 SSL_AuthCertificateHook()
  5812 ms  0x2569 fd:0x7f304a61a2b0
  5812 ms  0x2569 ret:0x0
  5812 ms  0x2569 PR_Connect()
  5812 ms  0x2569 fd:0x7f304a61a2b0
  5812 ms  0x2569 SSL_ImportFD()
  5812 ms  0x2569 ret:0x7f304a61a340
  5812 ms  0x2569 SSL_AuthCertificateHook()
  5812 ms  0x2569 fd:0x7f304a61a340
  5812 ms  0x2569 ret:0x0
  5812 ms  0x2569 PR_Connect()
  5812 ms  0x2569 fd:0x7f304a61a340
  5812 ms  0x2569 SSL_ImportFD()
  5812 ms  0x2569 ret:0x7f304a61a0d0
  5812 ms  0x2569 SSL_AuthCertificateHook()
  5812 ms  0x2569 fd:0x7f304a61a0d0
  5812 ms  0x2569 ret:0x0
  5812 ms  0x2569 PR_Connect()
  5812 ms  0x2569 fd:0x7f304a61a0d0
  5812 ms  0x2569 PK11_Encrypt()
  5812 ms  0x2569 symkey:0x7f304a7e2880
  5812 ms  0x2569 PK11_Encrypt()
  5812 ms  0x2569 symkey:0x7f304a7e2880
  5821 ms  0x2569 PK11_Encrypt()
  5821 ms  0x2569 symkey:0x7f304a7e2880
  5825 ms  SECKEY_ECParamsToKeySize()
  5825 ms  0x2569 ret:0x100
  5825 ms  0x2569 SECKEY_CreateECPrivateKey()
  5825 ms  0x2569 cx:0x7f305bbd4308
  5825 ms     | 0x2569 EC_ValidatePublicKey()
  5827 ms     | 0x2569 ret:0x0
  5827 ms  0x2569 ret:0x7f304a66d820::7f304a66d820  f0 d6 65 4a                                      ..eJ
  5827 ms  0x2569 PK11_PubDeriveWithKDF()
  5827 ms  0x2569 seckey:0x7f304a66d820
  5827 ms     | 0x2569 EC_ValidatePublicKey()
  5829 ms     | 0x2569 ret:0x0
  5830 ms  0x2569 ret:0x7f304a7e2980
  5830 ms  0x2569 PK11_DeriveWithFlags()
  5830 ms  0x2569 basekey:0x7f304a7e2980
  5830 ms     | 0x2569 PK11_DeriveWithTemplate()
  5830 ms  0x2569 ret:0x7f305ccace00
  5830 ms  0x2569 PK11_Derive()
  5830 ms  0x2569 basekey:0x7f305ccace00
  5830 ms     | 0x2569 PK11_DeriveWithTemplate()
  5830 ms  0x2569 ret:0x7f305d102d80
  5830 ms  0x2569 SECKEY_DestroyPrivateKey()
  5830 ms  0x2569 privk:0x7f304a66d820::7f304a66d820  f0 d6 65 4a                                      ..eJ
  5830 ms  0x2569 privk:0x7f304a66d820::7f304a66d820  e5 e5 e5 e5                                      ....
  5830 ms  0x2569 PK11_Encrypt()
  5830 ms  0x2569 symkey:0x7f304a7e2a00
  5838 ms  SECKEY_ECParamsToKeySize()
  5838 ms  0x2569 ret:0x100
  5838 ms  0x2569 SECKEY_CreateECPrivateKey()
  5838 ms  0x2569 cx:0x7f305bbd32c8
  5839 ms     | 0x2569 EC_ValidatePublicKey()
  5841 ms     | 0x2569 ret:0x0
  5841 ms  0x2569 ret:0x7f304a66f020::7f304a66f020  10 da 65 4a                                      ..eJ
  5841 ms  0x2569 PK11_PubDeriveWithKDF()
  5841 ms  0x2569 seckey:0x7f304a66f020
  5842 ms     | 0x2569 EC_ValidatePublicKey()
  5843 ms     | 0x2569 ret:0x0
  5844 ms  0x2569 ret:0x7f304a7e2980
  5844 ms  0x2569 PK11_DeriveWithFlags()
  5844 ms  0x2569 basekey:0x7f304a7e2980
  5844 ms     | 0x2569 PK11_DeriveWithTemplate()
  5844 ms  0x2569 ret:0x7f304a625a80
  5844 ms  0x2569 PK11_Derive()
  5844 ms  0x2569 basekey:0x7f304a625a80
  5844 ms     | 0x2569 PK11_DeriveWithTemplate()
  5845 ms  0x2569 ret:0x7f304a625b00
  5845 ms  0x2569 SECKEY_DestroyPrivateKey()
  5845 ms  0x2569 privk:0x7f304a66f020::7f304a66f020  10 da 65 4a                                      ..eJ
  5845 ms  0x2569 privk:0x7f304a66f020::7f304a66f020  e5 e5 e5 e5                                      ....
  5845 ms  0x2569 PK11_Encrypt()
  5845 ms  0x2569 symkey:0x7f304a625c80
  5845 ms  0x2569 SSL_AuthCertificateComplete()
  5845 ms  0x2569 fd:0x7f304aaec100
  5845 ms  0x2569 err:0x0
  5845 ms  0x2569 PK11_Encrypt()
  5845 ms  0x2569 symkey:0x7f304a7e2880
  5846 ms  0x2569 SSL_AuthCertificateComplete()
  5846 ms  0x2569 fd:0x7f304aaec850
  5846 ms  0x2569 err:0x0
  5846 ms  0x2569 PK11_Encrypt()
  5846 ms  0x2569 symkey:0x7f304a7e2a00
  5847 ms  SECKEY_ECParamsToKeySize()
  5847 ms  0x2569 ret:0x100
  5847 ms  0x2569 SECKEY_CreateECPrivateKey()
  5847 ms  0x2569 cx:0x7f305bbd4168
  5848 ms     | 0x2569 EC_ValidatePublicKey()
  5849 ms     | 0x2569 ret:0x0
  5849 ms  0x2569 ret:0x7f304a672020::7f304a672020  b0 da 65 4a                                      ..eJ
  5849 ms  0x2569 PK11_PubDeriveWithKDF()
  5849 ms  0x2569 seckey:0x7f304a672020
  5849 ms     | 0x2569 EC_ValidatePublicKey()
  5851 ms     | 0x2569 ret:0x0
  5852 ms  0x2569 ret:0x7f304a7e2980
  5852 ms  0x2569 PK11_DeriveWithFlags()
  5852 ms  0x2569 basekey:0x7f304a7e2980
  5852 ms     | 0x2569 PK11_DeriveWithTemplate()
  5852 ms  0x2569 ret:0x7f304a625e00
  5852 ms  0x2569 PK11_Derive()
  5852 ms  0x2569 basekey:0x7f304a625e00
  5852 ms     | 0x2569 PK11_DeriveWithTemplate()
  5852 ms  0x2569 ret:0x7f304a625e80
  5852 ms  0x2569 SECKEY_DestroyPrivateKey()
  5852 ms  0x2569 privk:0x7f304a672020::7f304a672020  b0 da 65 4a                                      ..eJ
  5853 ms  0x2569 privk:0x7f304a672020::7f304a672020  e5 e5 e5 e5                                      ....
  5853 ms  0x2569 PK11_Encrypt()
  5853 ms  0x2569 symkey:0x7f304a626000
  5853 ms  SECKEY_ECParamsToKeySize()
  5853 ms  0x2569 ret:0x100
  5853 ms  0x2569 SECKEY_CreateECPrivateKey()
  5853 ms  0x2569 cx:0x7f305bbd3fc8
  5854 ms     | 0x2569 EC_ValidatePublicKey()
  5855 ms     | 0x2569 ret:0x0
  5856 ms  0x2569 ret:0x7f304a673020::7f304a673020  50 db 65 4a                                      P.eJ
  5856 ms  0x2569 PK11_PubDeriveWithKDF()
  5856 ms  0x2569 seckey:0x7f304a673020
  5856 ms     | 0x2569 EC_ValidatePublicKey()
  5857 ms     | 0x2569 ret:0x0
  5859 ms  0x2569 ret:0x7f304a7e2980
  5859 ms  0x2569 PK11_DeriveWithFlags()
  5859 ms  0x2569 basekey:0x7f304a7e2980
  5859 ms     | 0x2569 PK11_DeriveWithTemplate()
  5859 ms  0x2569 ret:0x7f304a626100
  5859 ms  0x2569 PK11_Derive()
  5859 ms  0x2569 basekey:0x7f304a626100
  5859 ms     | 0x2569 PK11_DeriveWithTemplate()
  5859 ms  0x2569 ret:0x7f304a626180
  5859 ms  0x2569 SECKEY_DestroyPrivateKey()
  5859 ms  0x2569 privk:0x7f304a673020::7f304a673020  50 db 65 4a                                      P.eJ
  5859 ms  0x2569 privk:0x7f304a673020::7f304a673020  e5 e5 e5 e5                                      ....
  5859 ms  0x2569 PK11_Encrypt()
  5859 ms  0x2569 symkey:0x7f304a626300
  5860 ms  SECKEY_ECParamsToKeySize()
  5860 ms  0x2569 ret:0x100
  5860 ms  0x2569 SECKEY_CreateECPrivateKey()
  5860 ms  0x2569 cx:0x7f305bbd3e28
  5861 ms     | 0x2569 EC_ValidatePublicKey()
  5862 ms     | 0x2569 ret:0x0
  5862 ms  0x2569 ret:0x7f304a674020::7f304a674020  f0 db 65 4a                                      ..eJ
  5863 ms  0x2569 PK11_PubDeriveWithKDF()
  5863 ms  0x2569 seckey:0x7f304a674020
  5863 ms     | 0x2569 EC_ValidatePublicKey()
  5864 ms     | 0x2569 ret:0x0
  5866 ms  0x2569 ret:0x7f304a7e2980
  5866 ms  0x2569 PK11_DeriveWithFlags()
  5866 ms  0x2569 basekey:0x7f304a7e2980
  5866 ms     | 0x2569 PK11_DeriveWithTemplate()
  5866 ms  0x2569 ret:0x7f304a626400
  5866 ms  0x2569 PK11_Derive()
  5866 ms  0x2569 basekey:0x7f304a626400
  5866 ms     | 0x2569 PK11_DeriveWithTemplate()
  5866 ms  0x2569 ret:0x7f304a626480
  5866 ms  0x2569 SECKEY_DestroyPrivateKey()
  5866 ms  0x2569 privk:0x7f304a674020::7f304a674020  f0 db 65 4a                                      ..eJ
  5866 ms  0x2569 privk:0x7f304a674020::7f304a674020  e5 e5 e5 e5                                      ....
  5866 ms  0x2569 PK11_Encrypt()
  5866 ms  0x2569 symkey:0x7f304a626600
  5867 ms  SECKEY_ECParamsToKeySize()
  5867 ms  0x2569 ret:0x100
  5867 ms  0x2569 SECKEY_CreateECPrivateKey()
  5867 ms  0x2569 cx:0x7f305bbd3c88
  5868 ms     | 0x2569 EC_ValidatePublicKey()
  5869 ms     | 0x2569 ret:0x0
  5869 ms  0x2569 ret:0x7f304a675020::7f304a675020  90 dc 65 4a                                      ..eJ
  5869 ms  0x2569 PK11_PubDeriveWithKDF()
  5869 ms  0x2569 seckey:0x7f304a675020
  5869 ms     | 0x2569 EC_ValidatePublicKey()
  5871 ms     | 0x2569 ret:0x0
  5873 ms  0x2569 ret:0x7f304a7e2980
  5873 ms  0x2569 PK11_DeriveWithFlags()
  5873 ms  0x2569 basekey:0x7f304a7e2980
  5873 ms     | 0x2569 PK11_DeriveWithTemplate()
  5873 ms  0x2569 ret:0x7f304a626700
  5873 ms  0x2569 PK11_Derive()
  5873 ms  0x2569 basekey:0x7f304a626700
  5873 ms     | 0x2569 PK11_DeriveWithTemplate()
  5873 ms  0x2569 ret:0x7f304a626780
  5877 ms  0x2569 SECKEY_DestroyPrivateKey()
  5877 ms  0x2569 privk:0x7f304a675020::7f304a675020  90 dc 65 4a                                      ..eJ
  5877 ms  0x2569 privk:0x7f304a675020::7f304a675020  e5 e5 e5 e5                                      ....
  5877 ms  0x2569 PK11_Encrypt()
  5877 ms  0x2569 symkey:0x7f304a626900
  5878 ms  0x2569 PK11_Encrypt()
  5878 ms  0x2569 symkey:0x7f304a625c80
  5878 ms  0x2569 SSL_AuthCertificateComplete()
  5878 ms  0x2569 fd:0x7f304aaec070
  5878 ms  0x2569 err:0x0
  5878 ms  0x2569 SSL_AuthCertificateComplete()
  5878 ms  0x2569 fd:0x7f304aaab6a0
  5878 ms  0x2569 err:0x0
  5878 ms  0x2569 SSL_AuthCertificateComplete()
  5878 ms  0x2569 fd:0x7f304a739dc0
  5878 ms  0x2569 err:0x0
  5878 ms  0x2569 SSL_AuthCertificateComplete()
  5878 ms  0x2569 fd:0x7f304a739f70
  5878 ms  0x2569 err:0x0
           /* TID 0x2571 */
  5880 ms  0x2571 PR_Close()
  5880 ms  0x2571 fd:0x7f304a61afd0
           /* TID 0x2569 */
  5881 ms  0x2569 SSL_ImportFD()
  5882 ms  0x2569 ret:0x7f304a6a11f0
  5882 ms  0x2569 SSL_AuthCertificateHook()
  5882 ms  0x2569 fd:0x7f304a6a11f0
  5882 ms  0x2569 ret:0x0
  5882 ms  0x2569 PR_Connect()
  5882 ms  0x2569 fd:0x7f304a6a11f0
  5882 ms  0x2569 SECKEY_DestroyPrivateKey()
  5882 ms  0x2569 privk:0x7f304a847820::7f304a847820  e0 a2 87 4a                                      ...J
  5882 ms  0x2569 privk:0x7f304a847820::7f304a847820  e5 e5 e5 e5                                      ....
  5882 ms  0x2569 SECKEY_DestroyPrivateKey()
  5882 ms  0x2569 privk:0x7f304a845020::7f304a845020  30 bd 7e 4a                                      0.~J
  5882 ms  0x2569 privk:0x7f304a845020::7f304a845020  e5 e5 e5 e5                                      ....
  5882 ms  0x2569 PK11_Encrypt()
  5882 ms  0x2569 symkey:0x7f304a626000
  5883 ms  0x2569 PK11_Encrypt()
  5883 ms  0x2569 symkey:0x7f304a626300
  5883 ms  0x2569 PK11_Encrypt()
  5883 ms  0x2569 symkey:0x7f304a626600
  5883 ms  0x2569 PK11_Encrypt()
  5883 ms  0x2569 symkey:0x7f304a626900
  5883 ms  0x2569 SECKEY_DestroyPrivateKey()
  5883 ms  0x2569 privk:0x7f304a793020::7f304a793020  c0 b9 7e 4a                                      ..~J
  5883 ms  0x2569 privk:0x7f304a793020::7f304a793020  e5 e5 e5 e5                                      ....
  5883 ms  0x2569 SECKEY_DestroyPrivateKey()
  5883 ms  0x2569 privk:0x7f304a790820::7f304a790820  f0 b6 7e 4a                                      ..~J
  5883 ms  0x2569 privk:0x7f304a790820::7f304a790820  e5 e5 e5 e5                                      ....
  5884 ms  0x2569 PR_Close()
  5884 ms  0x2569 fd:0x7f304aaec850
  5884 ms     | 0x2569 PK11_Encrypt()
  5884 ms     | 0x2569 symkey:0x7f304a625c80
  5884 ms  0x2569 PR_Close()
  5884 ms  0x2569 fd:0x7f304aaec100
  5884 ms     | 0x2569 PK11_Encrypt()
  5884 ms     | 0x2569 symkey:0x7f304a7e2a00
  5885 ms  0x2569 PK11_Encrypt()
  5885 ms  0x2569 symkey:0x7f304a7e2880
  5885 ms  0x2569 SECKEY_CreateECPrivateKey()
  5885 ms  0x2569 cx:0x7f305bbd44a8
  5885 ms     | 0x2569 EC_ValidatePublicKey()
  5885 ms     | 0x2569 ret:0x0
  5885 ms  0x2569 ret:0x7f304a66c820::7f304a66c820  20 d4 65 4a                                       .eJ
  5885 ms  0x2569 SECKEY_CreateECPrivateKey()
  5885 ms  0x2569 cx:0x7f305bbd44a8
  5886 ms     | 0x2569 EC_ValidatePublicKey()
  5888 ms     | 0x2569 ret:0x0
  5888 ms  0x2569 ret:0x7f304a678820::7f304a678820  90 dc 65 4a                                      ..eJ
  5888 ms  0x2569 SECKEY_CreateECPrivateKey()
  5888 ms  0x2569 cx:0x7f304a64d728
  5889 ms     | 0x2569 EC_ValidatePublicKey()
  5889 ms     | 0x2569 ret:0x0
  5889 ms  0x2569 ret:0x7f304a67b020::7f304a67b020  10 df 65 4a                                      ..eJ
  5889 ms  0x2569 SECKEY_CreateECPrivateKey()
  5889 ms  0x2569 cx:0x7f304a64d728
  5890 ms     | 0x2569 EC_ValidatePublicKey()
  5891 ms     | 0x2569 ret:0x0
  5891 ms  0x2569 ret:0x7f304a67d020::7f304a67d020  e0 b7 7d 4a                                      ..}J
  5892 ms  0x2569 SECKEY_CreateECPrivateKey()
  5892 ms  0x2569 cx:0x7f304a64d588
  5892 ms     | 0x2569 EC_ValidatePublicKey()
  5892 ms     | 0x2569 ret:0x0
  5892 ms  0x2569 ret:0x7f304a67f820::7f304a67f820  e0 bc 7d 4a                                      ..}J
  5892 ms  0x2569 SECKEY_CreateECPrivateKey()
  5892 ms  0x2569 cx:0x7f304a64d588
  5893 ms     | 0x2569 EC_ValidatePublicKey()
  5894 ms     | 0x2569 ret:0x0
  5894 ms  0x2569 ret:0x7f304a681820::7f304a681820  f0 b6 7e 4a                                      ..~J
  5895 ms  0x2569 SECKEY_CreateECPrivateKey()
  5895 ms  0x2569 cx:0x7f304a64d3e8
  5895 ms     | 0x2569 EC_ValidatePublicKey()
  5895 ms     | 0x2569 ret:0x0
  5895 ms  0x2569 ret:0x7f304a684020::7f304a684020  80 b8 7e 4a                                      ..~J
  5895 ms  0x2569 SECKEY_CreateECPrivateKey()
  5895 ms  0x2569 cx:0x7f304a64d3e8
  5897 ms     | 0x2569 EC_ValidatePublicKey()
  5899 ms     | 0x2569 ret:0x0
  5899 ms  0x2569 ret:0x7f304a686020::7f304a686020  b0 ba 7e 4a                                      ..~J
  5899 ms  0x2569 SECKEY_CreateECPrivateKey()
  5899 ms  0x2569 cx:0x7f304a64d248
  5899 ms     | 0x2569 EC_ValidatePublicKey()
  5899 ms     | 0x2569 ret:0x0
  5899 ms  0x2569 ret:0x7f304a688820::7f304a688820  60 bf 7e 4a                                      `.~J
  5900 ms  0x2569 SECKEY_CreateECPrivateKey()
  5900 ms  0x2569 cx:0x7f304a64d248
  5900 ms     | 0x2569 EC_ValidatePublicKey()
  5902 ms     | 0x2569 ret:0x0
  5902 ms  0x2569 ret:0x7f304a78c020::7f304a78c020  c0 99 ae 4a                                      ...J
  5902 ms  0x2569 SECKEY_CreateECPrivateKey()
  5902 ms  0x2569 cx:0x7f304a64d0a8
  5902 ms     | 0x2569 EC_ValidatePublicKey()
  5902 ms     | 0x2569 ret:0x0
  5902 ms  0x2569 ret:0x7f304a791820::7f304a791820  00 9b ae 4a                                      ...J
  5902 ms  0x2569 SECKEY_CreateECPrivateKey()
  5902 ms  0x2569 cx:0x7f304a64d0a8
  5903 ms     | 0x2569 EC_ValidatePublicKey()
  5905 ms     | 0x2569 ret:0x0
  5905 ms  0x2569 ret:0x7f304a842820::7f304a842820  e0 9c ae 4a                                      ...J
  5905 ms  0x2569 PK11_Encrypt()
  5905 ms  0x2569 symkey:0x7f304a7e2880
           /* TID 0x2571 */
  5907 ms  0x2571 PR_Close()
  5907 ms  0x2571 fd:0x7f304a6a1490
           /* TID 0x2569 */
  5908 ms  0x2569 SECKEY_DestroyPrivateKey()
  5908 ms  0x2569 privk:0x7f304a84d020::7f304a84d020  00 a6 87 4a                                      ...J
  5908 ms  0x2569 privk:0x7f304a84d020::7f304a84d020  e5 e5 e5 e5                                      ....
  5908 ms  0x2569 SECKEY_DestroyPrivateKey()
  5908 ms  0x2569 privk:0x7f304a84a020::7f304a84a020  20 a4 87 4a                                       ..J
  5908 ms  0x2569 privk:0x7f304a84a020::7f304a84a020  e5 e5 e5 e5                                      ....
  5908 ms  0x2569 SECKEY_DestroyPrivateKey()
  5908 ms  0x2569 privk:0x7f304a851820::7f304a851820  c0 a9 87 4a                                      ...J
  5908 ms  0x2569 privk:0x7f304a851820::7f304a851820  e5 e5 e5 e5                                      ....
  5908 ms  0x2569 SECKEY_DestroyPrivateKey()
  5908 ms  0x2569 privk:0x7f304a84f820::7f304a84f820  e0 a7 87 4a                                      ...J
  5908 ms  0x2569 privk:0x7f304a84f820::7f304a84f820  e5 e5 e5 e5                                      ....
  5909 ms  0x2569 SECKEY_DestroyPrivateKey()
  5909 ms  0x2569 privk:0x7f304a856020::7f304a856020  e0 ac 87 4a                                      ...J
  5909 ms  0x2569 privk:0x7f304a856020::7f304a856020  e5 e5 e5 e5                                      ....
  5909 ms  0x2569 SECKEY_DestroyPrivateKey()
  5909 ms  0x2569 privk:0x7f304a854020::7f304a854020  00 ab 87 4a                                      ...J
  5909 ms  0x2569 privk:0x7f304a854020::7f304a854020  e5 e5 e5 e5                                      ....
  5909 ms  0x2569 PR_Close()
  5909 ms  0x2569 fd:0x7f304a739dc0
  5909 ms     | 0x2569 PK11_Encrypt()
  5909 ms     | 0x2569 symkey:0x7f304a626600
  5909 ms  0x2569 PR_Close()
  5909 ms  0x2569 fd:0x7f304aaab6a0
  5909 ms     | 0x2569 PK11_Encrypt()
  5909 ms     | 0x2569 symkey:0x7f304a626300
  5909 ms  0x2569 PR_Close()
  5909 ms  0x2569 fd:0x7f304aaec070
  5909 ms     | 0x2569 PK11_Encrypt()
  5909 ms     | 0x2569 symkey:0x7f304a626000
           /* TID 0x2571 */
  5911 ms  0x2571 PR_Close()
  5911 ms  0x2571 fd:0x7f304a6a1070
  5913 ms  0x2571 PR_Close()
  5913 ms  0x2571 fd:0x7f304a61aee0
  5915 ms  0x2571 PR_Close()
  5915 ms  0x2571 fd:0x7f304a61aee0
  5917 ms  0x2571 PR_Close()
  5917 ms  0x2571 fd:0x7f304a61aee0
           /* TID 0x2569 */
  5917 ms  0x2569 SECKEY_DestroyPrivateKey()
  5917 ms  0x2569 privk:0x7f304a85a820::7f304a85a820  70 be 95 4a                                      p..J
  5917 ms  0x2569 privk:0x7f304a85a820::7f304a85a820  e5 e5 e5 e5                                      ....
  5917 ms  0x2569 SECKEY_DestroyPrivateKey()
  5917 ms  0x2569 privk:0x7f304a858820::7f304a858820  20 ae 87 4a                                       ..J
  5917 ms  0x2569 privk:0x7f304a858820::7f304a858820  e5 e5 e5 e5                                      ....
  5918 ms  0x2569 PR_Close()
  5918 ms  0x2569 fd:0x7f304a739f70
  5918 ms     | 0x2569 PK11_Encrypt()
  5918 ms     | 0x2569 symkey:0x7f304a626900
           /* TID 0x2571 */
  5919 ms  0x2571 PR_Close()
  5919 ms  0x2571 fd:0x7f304a61aee0
  5921 ms  0x2571 PR_Close()
  5921 ms  0x2571 fd:0x7f304a61aee0
  5923 ms  0x2571 PR_Close()
  5923 ms  0x2571 fd:0x7f304a61aee0
  5925 ms  0x2571 PR_Close()
  5925 ms  0x2571 fd:0x7f304a61aee0
           /* TID 0x2569 */
  5927 ms  SECKEY_ECParamsToKeySize()
  5927 ms  0x2569 ret:0x100
  5927 ms  0x2569 SECKEY_CreateECPrivateKey()
  5927 ms  0x2569 cx:0x7f305bbd44a8
  5934 ms     | 0x2569 EC_ValidatePublicKey()
  5936 ms     | 0x2569 ret:0x0
  5936 ms  0x2569 ret:0x7f304a672020::7f304a672020  60 da 65 4a                                      `.eJ
  5936 ms  0x2569 PK11_PubDeriveWithKDF()
  5936 ms  0x2569 seckey:0x7f304a672020
  5936 ms     | 0x2569 EC_ValidatePublicKey()
  5938 ms     | 0x2569 ret:0x0
  5939 ms  0x2569 ret:0x7f304a626780
  5939 ms  0x2569 PK11_DeriveWithFlags()
  5939 ms  0x2569 basekey:0x7f304a626780
  5939 ms     | 0x2569 PK11_DeriveWithTemplate()
  5939 ms  0x2569 ret:0x7f304a626700
  5939 ms  0x2569 PK11_Derive()
  5939 ms  0x2569 basekey:0x7f304a626700
  5939 ms     | 0x2569 PK11_DeriveWithTemplate()
  5939 ms  0x2569 ret:0x7f304a625e80
  5939 ms  0x2569 SECKEY_DestroyPrivateKey()
  5939 ms  0x2569 privk:0x7f304a672020::7f304a672020  60 da 65 4a                                      `.eJ
  5939 ms  0x2569 privk:0x7f304a672020::7f304a672020  e5 e5 e5 e5                                      ....
  5940 ms  0x2569 PK11_Encrypt()
  5940 ms  0x2569 symkey:0x7f304a626800
  5940 ms  0x2569 SSL_AuthCertificateComplete()
  5940 ms  0x2569 fd:0x7f304a61a1f0
  5940 ms  0x2569 err:0x0
           /* TID 0x2571 */
  5944 ms  0x2571 PR_Close()
  5944 ms  0x2571 fd:0x7f304a61aee0
           /* TID 0x2569 */
  5948 ms  0x2569 PK11_Encrypt()
  5948 ms  0x2569 symkey:0x7f304a626800
  5949 ms  SECKEY_ECParamsToKeySize()
  5949 ms  0x2569 ret:0x100
  5949 ms  0x2569 SECKEY_CreateECPrivateKey()
  5949 ms  0x2569 cx:0x7f304a64d3e8
  5949 ms     | 0x2569 EC_ValidatePublicKey()
  5951 ms     | 0x2569 ret:0x0
  5951 ms  0x2569 ret:0x7f304a674820::7f304a674820  60 da 65 4a                                      `.eJ
  5951 ms  0x2569 PK11_PubDeriveWithKDF()
  5951 ms  0x2569 seckey:0x7f304a674820
  5951 ms     | 0x2569 EC_ValidatePublicKey()
  5952 ms     | 0x2569 ret:0x0
  5954 ms  0x2569 ret:0x7f304a626780
  5954 ms  0x2569 PK11_DeriveWithFlags()
  5954 ms  0x2569 basekey:0x7f304a626780
  5954 ms     | 0x2569 PK11_DeriveWithTemplate()
  5954 ms  0x2569 ret:0x7f304a625e00
  5954 ms  0x2569 PK11_Derive()
  5954 ms  0x2569 basekey:0x7f304a625e00
  5954 ms     | 0x2569 PK11_DeriveWithTemplate()
  5954 ms  0x2569 ret:0x7f304a626180
  5954 ms  0x2569 SECKEY_DestroyPrivateKey()
  5954 ms  0x2569 privk:0x7f304a674820::7f304a674820  60 da 65 4a                                      `.eJ
  5954 ms  0x2569 privk:0x7f304a674820::7f304a674820  e5 e5 e5 e5                                      ....
  5954 ms  0x2569 PK11_Encrypt()
  5954 ms  0x2569 symkey:0x7f304a625f00
  5955 ms  SECKEY_ECParamsToKeySize()
  5955 ms  0x2569 ret:0x100
  5955 ms  0x2569 SECKEY_CreateECPrivateKey()
  5955 ms  0x2569 cx:0x7f304a64d248
  5956 ms     | 0x2569 EC_ValidatePublicKey()
  5957 ms     | 0x2569 ret:0x0
  5957 ms  0x2569 ret:0x7f304a675820::7f304a675820  70 be 7d 4a                                      p.}J
  5957 ms  0x2569 PK11_PubDeriveWithKDF()
  5957 ms  0x2569 seckey:0x7f304a675820
  5957 ms     | 0x2569 EC_ValidatePublicKey()
  5959 ms     | 0x2569 ret:0x0
  5960 ms  0x2569 ret:0x7f304a626780
  5960 ms  0x2569 PK11_DeriveWithFlags()
  5960 ms  0x2569 basekey:0x7f304a626780
  5960 ms     | 0x2569 PK11_DeriveWithTemplate()
  5960 ms  0x2569 ret:0x7f304a626100
  5960 ms  0x2569 PK11_Derive()
  5960 ms  0x2569 basekey:0x7f304a626100
  5960 ms     | 0x2569 PK11_DeriveWithTemplate()
  5960 ms  0x2569 ret:0x7f304a626480
  5960 ms  0x2569 SECKEY_DestroyPrivateKey()
  5960 ms  0x2569 privk:0x7f304a675820::7f304a675820  70 be 7d 4a                                      p.}J
  5960 ms  0x2569 privk:0x7f304a675820::7f304a675820  e5 e5 e5 e5                                      ....
  5960 ms  0x2569 PK11_Encrypt()
  5960 ms  0x2569 symkey:0x7f304a626200
  5962 ms  SECKEY_ECParamsToKeySize()
  5962 ms  0x2569 ret:0x100
  5962 ms  0x2569 SECKEY_CreateECPrivateKey()
  5962 ms  0x2569 cx:0x7f304a64d588
  5962 ms     | 0x2569 EC_ValidatePublicKey()
  5964 ms     | 0x2569 ret:0x0
  5964 ms  0x2569 ret:0x7f304a676820::7f304a676820  60 bf 7d 4a                                      `.}J
  5964 ms  0x2569 PK11_PubDeriveWithKDF()
  5964 ms  0x2569 seckey:0x7f304a676820
  5964 ms     | 0x2569 EC_ValidatePublicKey()
  5966 ms     | 0x2569 ret:0x0
  5967 ms  0x2569 ret:0x7f304a626780
  5967 ms  0x2569 PK11_DeriveWithFlags()
  5967 ms  0x2569 basekey:0x7f304a626780
  5967 ms     | 0x2569 PK11_DeriveWithTemplate()
  5967 ms  0x2569 ret:0x7f304a626400
  5967 ms  0x2569 PK11_Derive()
  5967 ms  0x2569 basekey:0x7f304a626400
  5967 ms     | 0x2569 PK11_DeriveWithTemplate()
  5967 ms  0x2569 ret:0x7f305d102d80
  5967 ms  0x2569 SECKEY_DestroyPrivateKey()
  5967 ms  0x2569 privk:0x7f304a676820::7f304a676820  60 bf 7d 4a                                      `.}J
  5967 ms  0x2569 privk:0x7f304a676820::7f304a676820  e5 e5 e5 e5                                      ....
  5968 ms  0x2569 PK11_Encrypt()
  5968 ms  0x2569 symkey:0x7f304a626500
  5969 ms  SECKEY_ECParamsToKeySize()
  5969 ms  0x2569 ret:0x100
  5969 ms  0x2569 SECKEY_CreateECPrivateKey()
  5969 ms  0x2569 cx:0x7f304a64d728
  5969 ms     | 0x2569 EC_ValidatePublicKey()
  5971 ms     | 0x2569 ret:0x0
  5971 ms  0x2569 ret:0x7f304a677820::7f304a677820  f0 b1 7e 4a                                      ..~J
  5971 ms  0x2569 PK11_PubDeriveWithKDF()
  5971 ms  0x2569 seckey:0x7f304a677820
  5971 ms     | 0x2569 EC_ValidatePublicKey()
  5972 ms     | 0x2569 ret:0x0
  5974 ms  0x2569 ret:0x7f304a626780
  5974 ms  0x2569 PK11_DeriveWithFlags()
  5974 ms  0x2569 basekey:0x7f304a626780
  5974 ms     | 0x2569 PK11_DeriveWithTemplate()
  5974 ms  0x2569 ret:0x7f305ccace00
  5974 ms  0x2569 PK11_Derive()
  5974 ms  0x2569 basekey:0x7f305ccace00
  5974 ms     | 0x2569 PK11_DeriveWithTemplate()
  5974 ms  0x2569 ret:0x7f304a625b00
  5974 ms  0x2569 SECKEY_DestroyPrivateKey()
  5974 ms  0x2569 privk:0x7f304a677820::7f304a677820  f0 b1 7e 4a                                      ..~J
  5974 ms  0x2569 privk:0x7f304a677820::7f304a677820  e5 e5 e5 e5                                      ....
  5974 ms  0x2569 PK11_Encrypt()
  5974 ms  0x2569 symkey:0x7f304a7e2a80
  5974 ms  0x2569 SSL_AuthCertificateComplete()
  5974 ms  0x2569 fd:0x7f304a61a2b0
  5974 ms  0x2569 err:0x0
  5974 ms  0x2569 SSL_AuthCertificateComplete()
  5974 ms  0x2569 fd:0x7f304a61a280
  5974 ms  0x2569 err:0x0
  5974 ms  0x2569 SSL_AuthCertificateComplete()
  5974 ms  0x2569 fd:0x7f304a61a340
  5974 ms  0x2569 err:0x0
  5974 ms  0x2569 SSL_AuthCertificateComplete()
  5974 ms  0x2569 fd:0x7f304a61a0d0
  5974 ms  0x2569 err:0x0
           /* TID 0x2571 */
  5978 ms  0x2571 PR_Close()
  5978 ms  0x2571 fd:0x7f304a6a11c0
           /* TID 0x2569 */
  5981 ms  0x2569 SECKEY_DestroyPrivateKey()
  5981 ms  0x2569 privk:0x7f304a678820::7f304a678820  90 dc 65 4a                                      ..eJ
  5981 ms  0x2569 privk:0x7f304a678820::7f304a678820  e5 e5 e5 e5                                      ....
  5982 ms  0x2569 SECKEY_DestroyPrivateKey()
  5982 ms  0x2569 privk:0x7f304a66c820::7f304a66c820  20 d4 65 4a                                       .eJ
  5982 ms  0x2569 privk:0x7f304a66c820::7f304a66c820  e5 e5 e5 e5                                      ....
  5982 ms  0x2569 PK11_Encrypt()
  5982 ms  0x2569 symkey:0x7f304a625f00
  5982 ms  0x2569 PK11_Encrypt()
  5982 ms  0x2569 symkey:0x7f304a626200
  5983 ms  SECKEY_ECParamsToKeySize()
  5983 ms  0x2569 ret:0x100
  5983 ms  0x2569 SECKEY_CreateECPrivateKey()
  5983 ms  0x2569 cx:0x7f304a64d0a8
  5984 ms     | 0x2569 EC_ValidatePublicKey()
  5985 ms     | 0x2569 ret:0x0
  5985 ms  0x2569 ret:0x7f304a676820::7f304a676820  60 da 65 4a                                      `.eJ
  5985 ms  0x2569 PK11_PubDeriveWithKDF()
  5985 ms  0x2569 seckey:0x7f304a676820
  5985 ms     | 0x2569 EC_ValidatePublicKey()
  5987 ms     | 0x2569 ret:0x0
  5988 ms  0x2569 ret:0x7f304a626780
  5988 ms  0x2569 PK11_DeriveWithFlags()
  5988 ms  0x2569 basekey:0x7f304a626780
  5988 ms     | 0x2569 PK11_DeriveWithTemplate()
  5988 ms  0x2569 ret:0x7f304a625a80
  5988 ms  0x2569 PK11_Derive()
  5988 ms  0x2569 basekey:0x7f304a625a80
  5988 ms     | 0x2569 PK11_DeriveWithTemplate()
  5988 ms  0x2569 ret:0x7f304a7e2980
  5988 ms  0x2569 SECKEY_DestroyPrivateKey()
  5988 ms  0x2569 privk:0x7f304a676820::7f304a676820  60 da 65 4a                                      `.eJ
  5988 ms  0x2569 privk:0x7f304a676820::7f304a676820  e5 e5 e5 e5                                      ....
  5988 ms  0x2569 PK11_Encrypt()
  5988 ms  0x2569 symkey:0x7f304a625b80
  5993 ms  0x2569 PK11_Encrypt()
  5993 ms  0x2569 symkey:0x7f304a626500
  5993 ms  0x2569 SECKEY_CreateECPrivateKey()
  5993 ms  0x2569 cx:0x7f304a64e288
  5994 ms     | 0x2569 EC_ValidatePublicKey()
  5994 ms     | 0x2569 ret:0x0
  5994 ms  0x2569 ret:0x7f304a677820::7f304a677820  f0 d6 65 4a                                      ..eJ
  5994 ms  0x2569 SECKEY_CreateECPrivateKey()
  5994 ms  0x2569 cx:0x7f304a64e288
  5994 ms     | 0x2569 EC_ValidatePublicKey()
  5996 ms     | 0x2569 ret:0x0
  5996 ms  0x2569 ret:0x7f304a67e020::7f304a67e020  f0 db 65 4a                                      ..eJ
  5996 ms  0x2569 PK11_Encrypt()
  5996 ms  0x2569 symkey:0x7f304a7e2a80
  5996 ms  0x2569 PR_Close()
  5996 ms  0x2569 fd:0x7f304a61a1f0
  5996 ms     | 0x2569 PK11_Encrypt()
  5996 ms     | 0x2569 symkey:0x7f304a626800
  5997 ms  0x2569 SSL_AuthCertificateComplete()
  5997 ms  0x2569 fd:0x7f304a61a250
  5997 ms  0x2569 err:0x0
  5997 ms  0x2569 SECKEY_DestroyPrivateKey()
  5997 ms  0x2569 privk:0x7f304a686020::7f304a686020  b0 ba 7e 4a                                      ..~J
  5997 ms  0x2569 privk:0x7f304a686020::7f304a686020  e5 e5 e5 e5                                      ....
  5997 ms  0x2569 SECKEY_DestroyPrivateKey()
  5997 ms  0x2569 privk:0x7f304a684020::7f304a684020  80 b8 7e 4a                                      ..~J
  5997 ms  0x2569 privk:0x7f304a684020::7f304a684020  e5 e5 e5 e5                                      ....
  5997 ms  0x2569 PK11_Encrypt()
  5997 ms  0x2569 symkey:0x7f304a625b80
  5997 ms  0x2569 PR_Close()
  5997 ms  0x2569 fd:0x7f304a61a2b0
  5997 ms     | 0x2569 PK11_Encrypt()
  5997 ms     | 0x2569 symkey:0x7f304a625f00
  5998 ms  0x2569 SECKEY_DestroyPrivateKey()
  5998 ms  0x2569 privk:0x7f304a78c020::7f304a78c020  c0 99 ae 4a                                      ...J
  5998 ms  0x2569 privk:0x7f304a78c020::7f304a78c020  e5 e5 e5 e5                                      ....
  5998 ms  0x2569 SECKEY_DestroyPrivateKey()
  5998 ms  0x2569 privk:0x7f304a688820::7f304a688820  60 bf 7e 4a                                      `.~J
  5998 ms  0x2569 privk:0x7f304a688820::7f304a688820  e5 e5 e5 e5                                      ....
  5998 ms  0x2569 PR_Close()
  5998 ms  0x2569 fd:0x7f304a61a280
  5998 ms     | 0x2569 PK11_Encrypt()
  5998 ms     | 0x2569 symkey:0x7f304a626200
  6005 ms  0x2569 SECKEY_DestroyPrivateKey()
  6005 ms  0x2569 privk:0x7f304a681820::7f304a681820  f0 b6 7e 4a                                      ..~J
  6005 ms  0x2569 privk:0x7f304a681820::7f304a681820  e5 e5 e5 e5                                      ....
  6005 ms  0x2569 SECKEY_DestroyPrivateKey()
  6005 ms  0x2569 privk:0x7f304a67f820::7f304a67f820  e0 bc 7d 4a                                      ..}J
  6005 ms  0x2569 privk:0x7f304a67f820::7f304a67f820  e5 e5 e5 e5                                      ....
  6006 ms  0x2569 PR_Close()
  6006 ms  0x2569 fd:0x7f304a61a340
  6006 ms     | 0x2569 PK11_Encrypt()
  6006 ms     | 0x2569 symkey:0x7f304a626500
  6011 ms  0x2569 SECKEY_DestroyPrivateKey()
  6011 ms  0x2569 privk:0x7f304a67d020::7f304a67d020  e0 b7 7d 4a                                      ..}J
  6011 ms  0x2569 privk:0x7f304a67d020::7f304a67d020  e5 e5 e5 e5                                      ....
  6011 ms  0x2569 SECKEY_DestroyPrivateKey()
  6011 ms  0x2569 privk:0x7f304a67b020::7f304a67b020  10 df 65 4a                                      ..eJ
  6011 ms  0x2569 privk:0x7f304a67b020::7f304a67b020  e5 e5 e5 e5                                      ....
  6011 ms  0x2569 PR_Close()
  6011 ms  0x2569 fd:0x7f304a61a0d0
  6011 ms     | 0x2569 PK11_Encrypt()
  6011 ms     | 0x2569 symkey:0x7f304a7e2a80
  6025 ms  0x2569 SECKEY_DestroyPrivateKey()
  6025 ms  0x2569 privk:0x7f304a842820::7f304a842820  e0 9c ae 4a                                      ...J
  6025 ms  0x2569 privk:0x7f304a842820::7f304a842820  e5 e5 e5 e5                                      ....
  6026 ms  0x2569 SECKEY_DestroyPrivateKey()
  6026 ms  0x2569 privk:0x7f304a791820::7f304a791820  00 9b ae 4a                                      ...J
  6026 ms  0x2569 privk:0x7f304a791820::7f304a791820  e5 e5 e5 e5                                      ....
  6026 ms  0x2569 PR_Close()
  6026 ms  0x2569 fd:0x7f304a61a250
  6026 ms     | 0x2569 PK11_Encrypt()
  6026 ms     | 0x2569 symkey:0x7f304a625b80
  6053 ms  SECKEY_ECParamsToKeySize()
  6053 ms  0x2569 ret:0x100
  6053 ms  SECKEY_ECParamsToBasePointOrderLen()
  6053 ms  0x2569 ret:0x100
  6053 ms  SECKEY_ECParamsToBasePointOrderLen()
  6053 ms  0x2569 ret:0x100
  6053 ms  0x2569 EC_ValidatePublicKey()
  6055 ms  0x2569 ret:0x0
  6057 ms  SECKEY_ECParamsToKeySize()
  6057 ms  0x2569 ret:0x100
  6057 ms  0x2569 SECKEY_CreateECPrivateKey()
  6057 ms  0x2569 cx:0x7f304a64e288
  6057 ms     | 0x2569 EC_ValidatePublicKey()
  6059 ms     | 0x2569 ret:0x0
  6059 ms  0x2569 ret:0x7f304a675020::7f304a675020  30 b3 7d 4a                                      0.}J
  6059 ms  0x2569 PK11_PubDeriveWithKDF()
  6059 ms  0x2569 seckey:0x7f304a675020
  6059 ms     | 0x2569 EC_ValidatePublicKey()
  6061 ms     | 0x2569 ret:0x0
  6062 ms  0x2569 ret:0x7f304a7e2980
  6062 ms  0x2569 PK11_DeriveWithFlags()
  6062 ms  0x2569 basekey:0x7f304a7e2980
  6062 ms     | 0x2569 PK11_DeriveWithTemplate()
  6062 ms  0x2569 ret:0x7f304a625a80
  6062 ms  0x2569 PK11_Derive()
  6062 ms  0x2569 basekey:0x7f304a625a80
  6062 ms     | 0x2569 PK11_DeriveWithTemplate()
  6062 ms  0x2569 ret:0x7f304a625b00
  6062 ms  0x2569 SECKEY_DestroyPrivateKey()
  6062 ms  0x2569 privk:0x7f304a675020::7f304a675020  30 b3 7d 4a                                      0.}J
  6063 ms  0x2569 privk:0x7f304a675020::7f304a675020  e5 e5 e5 e5                                      ....
  6063 ms  0x2569 PK11_Encrypt()
  6063 ms  0x2569 symkey:0x7f304a625c00
           /* TID 0x25cf */
  6098 ms  0x25cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6099 ms  0x25cf ret:0x0
  6099 ms  0x25cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6099 ms  0x25cf ret:0x0
           /* TID 0x2571 */
  6099 ms  0x2571 PR_Close()
  6099 ms  0x2571 fd:0x7f304a61a0a0
           /* TID 0x2569 */
  6099 ms  0x2569 SSL_AuthCertificateComplete()
  6099 ms  0x2569 fd:0x7f304a6a11f0
  6099 ms  0x2569 err:0x0
  6100 ms  0x2569 PK11_Encrypt()
  6100 ms  0x2569 symkey:0x7f304a625c00
  6100 ms  0x2569 PK11_Encrypt()
  6100 ms  0x2569 symkey:0x7f304a625c00
  6119 ms  0x2569 SECKEY_DestroyPrivateKey()
  6119 ms  0x2569 privk:0x7f304a67e020::7f304a67e020  f0 db 65 4a                                      ..eJ
  6119 ms  0x2569 privk:0x7f304a67e020::7f304a67e020  e5 e5 e5 e5                                      ....
  6119 ms  0x2569 SECKEY_DestroyPrivateKey()
  6119 ms  0x2569 privk:0x7f304a677820::7f304a677820  f0 d6 65 4a                                      ..eJ
  6119 ms  0x2569 privk:0x7f304a677820::7f304a677820  e5 e5 e5 e5                                      ....
  6119 ms  0x2569 PK11_Encrypt()
  6119 ms  0x2569 symkey:0x7f304a625c00
           /* TID 0x2571 */
  6201 ms  0x2571 PR_Close()
  6201 ms  0x2571 fd:0x7f304a61a2e0
           /* TID 0x2569 */
  6244 ms  0x2569 PK11_Encrypt()
  6244 ms  0x2569 symkey:0x7f305ccac880
  6244 ms  0x2569 PK11_Encrypt()
  6244 ms  0x2569 symkey:0x7f304a7e2880
           /* TID 0x2571 */
  6286 ms  0x2571 PR_Close()
  6286 ms  0x2571 fd:0x7f304a61a640
  6353 ms  0x2571 PR_Close()
  6353 ms  0x2571 fd:0x7f304a61a640
           /* TID 0x2569 */
  6487 ms  0x2569 SSL_ImportFD()
  6487 ms  0x2569 ret:0x7f304a61aca0
  6487 ms  0x2569 SSL_AuthCertificateHook()
  6487 ms  0x2569 fd:0x7f304a61aca0
  6487 ms  0x2569 ret:0x0
  6489 ms  0x2569 PK11_Encrypt()
  6489 ms  0x2569 symkey:0x7f304a7e2880
  6489 ms  0x2569 PR_Connect()
  6489 ms  0x2569 fd:0x7f304a61aca0
  6527 ms  0x2569 SECKEY_CreateECPrivateKey()
  6527 ms  0x2569 cx:0x7f304a64d588
  6529 ms     | 0x2569 EC_ValidatePublicKey()
  6529 ms     | 0x2569 ret:0x0
  6529 ms  0x2569 ret:0x7f304a678820::7f304a678820  d0 2d 75 4a                                      .-uJ
  6529 ms  0x2569 SECKEY_CreateECPrivateKey()
  6529 ms  0x2569 cx:0x7f304a64d588
  6531 ms     | 0x2569 EC_ValidatePublicKey()
  6536 ms     | 0x2569 ret:0x0
  6536 ms  0x2569 ret:0x7f304a67a820::7f304a67a820  10 ba 7d 4a                                      ..}J
           /* TID 0x2571 */
  6564 ms  0x2571 PR_Close()
  6564 ms  0x2571 fd:0x7f304a6a1460
           /* TID 0x2569 */
  6574 ms  SECKEY_ECParamsToKeySize()
  6574 ms  0x2569 ret:0x100
  6574 ms  0x2569 SECKEY_CreateECPrivateKey()
  6574 ms  0x2569 cx:0x7f304a64d588
  6575 ms     | 0x2569 EC_ValidatePublicKey()
  6577 ms     | 0x2569 ret:0x0
  6577 ms  0x2569 ret:0x7f304a67d820::7f304a67d820  70 be 7d 4a                                      p.}J
  6577 ms  0x2569 PK11_PubDeriveWithKDF()
  6577 ms  0x2569 seckey:0x7f304a67d820
  6577 ms     | 0x2569 EC_ValidatePublicKey()
  6579 ms     | 0x2569 ret:0x0
  6599 ms  0x2569 ret:0x7f304a7e2980
  6599 ms  0x2569 PK11_DeriveWithFlags()
  6599 ms  0x2569 basekey:0x7f304a7e2980
  6599 ms     | 0x2569 PK11_DeriveWithTemplate()
  6599 ms  0x2569 ret:0x7f305ccace00
  6599 ms  0x2569 PK11_Derive()
  6599 ms  0x2569 basekey:0x7f305ccace00
  6599 ms     | 0x2569 PK11_DeriveWithTemplate()
  6599 ms  0x2569 ret:0x7f305d102d80
  6599 ms  0x2569 SECKEY_DestroyPrivateKey()
  6599 ms  0x2569 privk:0x7f304a67d820::7f304a67d820  70 be 7d 4a                                      p.}J
  6599 ms  0x2569 privk:0x7f304a67d820::7f304a67d820  e5 e5 e5 e5                                      ....
  6600 ms  0x2569 PK11_Encrypt()
  6600 ms  0x2569 symkey:0x7f304a7e2b80
  6600 ms  0x2569 SSL_AuthCertificateComplete()
  6600 ms  0x2569 fd:0x7f304a61aca0
  6600 ms  0x2569 err:0x0
  6600 ms  0x2569 PK11_Encrypt()
  6600 ms  0x2569 symkey:0x7f304a7e2b80
  6637 ms  0x2569 SECKEY_DestroyPrivateKey()
  6637 ms  0x2569 privk:0x7f304a67a820::7f304a67a820  10 ba 7d 4a                                      ..}J
  6637 ms  0x2569 privk:0x7f304a67a820::7f304a67a820  e5 e5 e5 e5                                      ....
  6637 ms  0x2569 SECKEY_DestroyPrivateKey()
  6637 ms  0x2569 privk:0x7f304a678820::7f304a678820  d0 2d 75 4a                                      .-uJ
  6637 ms  0x2569 privk:0x7f304a678820::7f304a678820  e5 e5 e5 e5                                      ....
  6637 ms  0x2569 PR_Close()
  6637 ms  0x2569 fd:0x7f304a61aca0
  6637 ms     | 0x2569 PK11_Encrypt()
  6637 ms     | 0x2569 symkey:0x7f304a7e2b80
  6677 ms  0x2569 SSL_ImportFD()
  6677 ms  0x2569 ret:0x7f304a6a15b0
  6677 ms  0x2569 SSL_AuthCertificateHook()
  6677 ms  0x2569 fd:0x7f304a6a15b0
  6677 ms  0x2569 ret:0x0
  6677 ms  0x2569 PR_Connect()
  6677 ms  0x2569 fd:0x7f304a6a15b0
  6760 ms  0x2569 SECKEY_CreateECPrivateKey()
  6760 ms  0x2569 cx:0x7f304a64d588
  6762 ms     | 0x2569 EC_ValidatePublicKey()
  6762 ms     | 0x2569 ret:0x0
  6762 ms  0x2569 ret:0x7f304a673020::7f304a673020  d0 2d 75 4a                                      .-uJ
  6762 ms  0x2569 SECKEY_CreateECPrivateKey()
  6762 ms  0x2569 cx:0x7f304a64d588
  6764 ms     | 0x2569 EC_ValidatePublicKey()
  6769 ms     | 0x2569 ret:0x0
  6769 ms  0x2569 ret:0x7f304a678020::7f304a678020  d0 b8 7d 4a                                      ..}J
  6855 ms  0x2569 PK11_Derive()
  6855 ms  0x2569 basekey:0x7f305d102d80
  6855 ms     | 0x2569 PK11_DeriveWithTemplate()
  6855 ms  0x2569 ret:0x7f305ccace00
  6855 ms  0x2569 PK11_PubDeriveWithKDF()
  6855 ms  0x2569 seckey:0x7f304a673020
  6855 ms     | 0x2569 EC_ValidatePublicKey()
  6855 ms     | 0x2569 ret:0x0
  6856 ms  0x2569 ret:0x7f305d102d80
  6856 ms  SECKEY_ECParamsToKeySize()
  6857 ms  0x2569 ret:0xff
  6857 ms  0x2569 PK11_DeriveWithFlags()
  6857 ms  0x2569 basekey:0x7f305ccace00
  6857 ms     | 0x2569 PK11_DeriveWithTemplate()
  6857 ms  0x2569 ret:0x7f304a7e2980
  6857 ms  0x2569 PK11_Derive()
  6857 ms  0x2569 basekey:0x7f305d102d80
  6857 ms     | 0x2569 PK11_DeriveWithTemplate()
  6857 ms  0x2569 ret:0x7f304a626400
  6857 ms  0x2569 PK11_DeriveWithFlags()
  6857 ms  0x2569 basekey:0x7f304a626400
  6857 ms     | 0x2569 PK11_DeriveWithTemplate()
  6857 ms  0x2569 ret:0x7f305ccace00
  6857 ms  0x2569 PK11_DeriveWithFlags()
  6857 ms  0x2569 basekey:0x7f304a626400
  6857 ms     | 0x2569 PK11_DeriveWithTemplate()
  6857 ms  0x2569 ret:0x7f305d102d80
  6857 ms  0x2569 PK11_DeriveWithFlags()
  6857 ms  0x2569 basekey:0x7f304a626400
  6857 ms     | 0x2569 PK11_DeriveWithTemplate()
  6857 ms  0x2569 ret:0x7f304a7e2980
  6857 ms  0x2569 PK11_Derive()
  6857 ms  0x2569 basekey:0x7f304a626480
  6857 ms     | 0x2569 PK11_DeriveWithTemplate()
  6857 ms  0x2569 ret:0x7f304a626100
  6857 ms  0x2569 PK11_DeriveWithFlags()
  6857 ms  0x2569 basekey:0x7f305d102d80
  6857 ms     | 0x2569 PK11_DeriveWithTemplate()
  6858 ms  0x2569 ret:0x7f304a626400
  6858 ms  0x2569 PK11_DeriveWithFlags()
  6858 ms  0x2569 basekey:0x7f305d102d80
  6858 ms     | 0x2569 PK11_DeriveWithTemplate()
  6858 ms  0x2569 ret:0x7f304a7e2980
           /* TID 0x25cf */
  6860 ms  SECKEY_ECParamsToBasePointOrderLen()
  6860 ms  0x25cf ret:0x180
  6860 ms  SECKEY_ECParamsToBasePointOrderLen()
  6860 ms  0x25cf ret:0x180
  6860 ms  0x25cf EC_ValidatePublicKey()
  6865 ms  0x25cf ret:0x0
           /* TID 0x2569 */
  6870 ms  SECKEY_ECParamsToKeySize()
  6870 ms  0x2569 ret:0x100
  6870 ms  SECKEY_ECParamsToBasePointOrderLen()
  6870 ms  0x2569 ret:0x100
  6870 ms  SECKEY_ECParamsToBasePointOrderLen()
  6870 ms  0x2569 ret:0x100
  6870 ms  0x2569 EC_ValidatePublicKey()
  6874 ms  0x2569 ret:0x0
  6879 ms  0x2569 PK11_DeriveWithFlags()
  6879 ms  0x2569 basekey:0x7f305d102d80
  6879 ms     | 0x2569 PK11_DeriveWithTemplate()
  6879 ms  0x2569 ret:0x7f304a7e2980
           /* TID 0x25cf */
  6883 ms  0x25cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6883 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6883 ms     | 0x25cf ret:0x180
  6883 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6883 ms     | 0x25cf ret:0x180
  6883 ms     | 0x25cf EC_ValidatePublicKey()
  6886 ms     | 0x25cf ret:0x0
  6891 ms  0x25cf ret:0x0
           /* TID 0x2569 */
  6898 ms  0x2569 SSL_AuthCertificateComplete()
  6898 ms  0x2569 fd:0x7f304a6a15b0
  6898 ms  0x2569 err:0x0
  6899 ms     | 0x2569 PK11_DeriveWithFlags()
  6899 ms     | 0x2569 basekey:0x7f304a626100
  6899 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  6899 ms     | 0x2569 ret:0x7f304a7e2980
  6899 ms     | 0x2569 PK11_DeriveWithFlags()
  6899 ms     | 0x2569 basekey:0x7f304a626100
  6899 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  6899 ms     | 0x2569 ret:0x7f304a626480
  6899 ms     | 0x2569 PK11_DeriveWithFlags()
  6899 ms     | 0x2569 basekey:0x7f304a626100
  6899 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  6899 ms     | 0x2569 ret:0x7f304a626180
  6899 ms     | 0x2569 PK11_DeriveWithFlags()
  6899 ms     | 0x2569 basekey:0x7f305ccace00
  6899 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  6899 ms     | 0x2569 ret:0x7f304a625e00
  6899 ms     | 0x2569 PK11_DeriveWithFlags()
  6899 ms     | 0x2569 basekey:0x7f305ccace00
  6899 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  6899 ms     | 0x2569 ret:0x7f304a625e80
  6899 ms     | 0x2569 PK11_DeriveWithFlags()
  6899 ms     | 0x2569 basekey:0x7f304a626480
  6899 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  6899 ms     | 0x2569 ret:0x7f304a625e80
  6899 ms     | 0x2569 PK11_DeriveWithFlags()
  6899 ms     | 0x2569 basekey:0x7f304a626480
  6899 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  6899 ms     | 0x2569 ret:0x7f304a626700
  6899 ms     | 0x2569 PK11_DeriveWithFlags()
  6899 ms     | 0x2569 basekey:0x7f305ccace00
  6899 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  6899 ms     | 0x2569 ret:0x7f304a626400
  6899 ms     | 0x2569 PK11_Encrypt()
  6899 ms     | 0x2569 symkey:0x7f304a625e00
  6899 ms     | 0x2569 PK11_DeriveWithFlags()
  6899 ms     | 0x2569 basekey:0x7f304a7e2980
  6899 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  6899 ms     | 0x2569 ret:0x7f304a626400
  6899 ms     | 0x2569 PK11_DeriveWithFlags()
  6899 ms     | 0x2569 basekey:0x7f304a7e2980
  6899 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  6899 ms     | 0x2569 ret:0x7f304a626700
  6899 ms     | 0x2569 PK11_DeriveWithFlags()
  6899 ms     | 0x2569 basekey:0x7f304a626100
  6899 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  6899 ms     | 0x2569 ret:0x7f304a625e00
  6899 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  6899 ms     | 0x2569 privk:0x7f304a678020::7f304a678020  d0 b8 7d 4a                                      ..}J
  6900 ms     | 0x2569 privk:0x7f304a678020::7f304a678020  e5 e5 e5 e5                                      ....
  6900 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  6900 ms     | 0x2569 privk:0x7f304a673020::7f304a673020  d0 2d 75 4a                                      .-uJ
  6900 ms     | 0x2569 privk:0x7f304a673020::7f304a673020  e5 e5 e5 e5                                      ....
  6900 ms  0x2569 PK11_Encrypt()
  6900 ms  0x2569 symkey:0x7f304a626400
  6901 ms  0x2569 PK11_Encrypt()
  6901 ms  0x2569 symkey:0x7f304a626400
  6992 ms  0x2569 PK11_DeriveWithFlags()
  6992 ms  0x2569 basekey:0x7f304a625e00
  6992 ms     | 0x2569 PK11_DeriveWithTemplate()
  6992 ms  0x2569 ret:0x7f305d102d80
  6992 ms  0x2569 PK11_DeriveWithFlags()
  6992 ms  0x2569 basekey:0x7f304a625e00
  6992 ms     | 0x2569 PK11_DeriveWithTemplate()
  6992 ms  0x2569 ret:0x7f305d102d80
  7074 ms  0x2569 PK11_Encrypt()
  7074 ms  0x2569 symkey:0x7f304a626400
           /* TID 0x2571 */
  7245 ms  0x2571 PR_Close()
  7245 ms  0x2571 fd:0x7f304a61af40
           /* TID 0x2569 */
  7358 ms  0x2569 SSL_ImportFD()
  7358 ms  0x2569 ret:0x7f304a7d7f10
  7358 ms  0x2569 SSL_AuthCertificateHook()
  7358 ms  0x2569 fd:0x7f304a7d7f10
  7358 ms  0x2569 ret:0x0
  7358 ms  0x2569 PR_Connect()
  7358 ms  0x2569 fd:0x7f304a7d7f10
  7383 ms  0x2569 PK11_Encrypt()
  7383 ms  0x2569 symkey:0x7f304a7e2880
  7389 ms  0x2569 PK11_Encrypt()
  7389 ms  0x2569 symkey:0x7f304a7e2880
  7396 ms  0x2569 SECKEY_CreateECPrivateKey()
  7396 ms  0x2569 cx:0x7f304a64ef88
  7396 ms     | 0x2569 EC_ValidatePublicKey()
  7396 ms     | 0x2569 ret:0x0
  7396 ms  0x2569 ret:0x7f304a684820::7f304a684820  b0 bf 7e 4a                                      ..~J
  7396 ms  0x2569 SECKEY_CreateECPrivateKey()
  7396 ms  0x2569 cx:0x7f304a64ef88
  7397 ms     | 0x2569 EC_ValidatePublicKey()
  7398 ms     | 0x2569 ret:0x0
  7398 ms  0x2569 ret:0x7f304a686820::7f304a686820  30 a3 87 4a                                      0..J
  7399 ms  0x2569 SSL_ImportFD()
  7399 ms  0x2569 ret:0x7f304a7d7550
  7399 ms  0x2569 SSL_AuthCertificateHook()
  7399 ms  0x2569 fd:0x7f304a7d7550
  7399 ms  0x2569 ret:0x0
  7402 ms  0x2569 PR_Connect()
  7402 ms  0x2569 fd:0x7f304a7d7550
           /* TID 0x2571 */
  7421 ms  0x2571 PR_Close()
  7421 ms  0x2571 fd:0x7f304a7d7cd0
           /* TID 0x2569 */
  7427 ms  0x2569 SECKEY_CreateECPrivateKey()
  7427 ms  0x2569 cx:0x7f304a64f2c8
  7428 ms     | 0x2569 EC_ValidatePublicKey()
  7428 ms     | 0x2569 ret:0x0
  7428 ms  0x2569 ret:0x7f304a777020::7f304a777020  c0 a4 87 4a                                      ...J
  7428 ms  0x2569 SECKEY_CreateECPrivateKey()
  7428 ms  0x2569 cx:0x7f304a64f2c8
  7428 ms     | 0x2569 EC_ValidatePublicKey()
  7430 ms     | 0x2569 ret:0x0
  7430 ms  0x2569 ret:0x7f304a77b020::7f304a77b020  80 b8 7e 4a                                      ..~J
  7432 ms  0x2569 PK11_Encrypt()
  7432 ms  0x2569 symkey:0x7f304a7e2880
  7434 ms  0x2569 PK11_Encrypt()
  7434 ms  0x2569 symkey:0x7f304a7e3080
  7435 ms  0x2569 PK11_Encrypt()
  7435 ms  0x2569 symkey:0x7f304a7e2880
  7436 ms  0x2569 PK11_Encrypt()
  7436 ms  0x2569 symkey:0x7f304a7e2880
  7453 ms  0x2569 PK11_Derive()
  7453 ms  0x2569 basekey:0x7f305d102d80
  7453 ms     | 0x2569 PK11_DeriveWithTemplate()
  7453 ms  0x2569 ret:0x7f305ccace00
  7453 ms  0x2569 PK11_PubDeriveWithKDF()
  7453 ms  0x2569 seckey:0x7f304a684820
  7453 ms     | 0x2569 EC_ValidatePublicKey()
  7453 ms     | 0x2569 ret:0x0
  7454 ms  0x2569 ret:0x7f305d102d80
  7454 ms  SECKEY_ECParamsToKeySize()
  7454 ms  0x2569 ret:0xff
  7454 ms  0x2569 PK11_DeriveWithFlags()
  7454 ms  0x2569 basekey:0x7f305ccace00
  7454 ms     | 0x2569 PK11_DeriveWithTemplate()
  7454 ms  0x2569 ret:0x7f304a626100
  7454 ms  0x2569 PK11_Derive()
  7454 ms  0x2569 basekey:0x7f305d102d80
  7454 ms     | 0x2569 PK11_DeriveWithTemplate()
  7454 ms  0x2569 ret:0x7f304a626700
  7454 ms  0x2569 PK11_DeriveWithFlags()
  7454 ms  0x2569 basekey:0x7f304a626700
  7454 ms     | 0x2569 PK11_DeriveWithTemplate()
  7454 ms  0x2569 ret:0x7f305ccace00
  7454 ms  0x2569 PK11_DeriveWithFlags()
  7454 ms  0x2569 basekey:0x7f304a626700
  7454 ms     | 0x2569 PK11_DeriveWithTemplate()
  7454 ms  0x2569 ret:0x7f305d102d80
  7454 ms  0x2569 PK11_DeriveWithFlags()
  7454 ms  0x2569 basekey:0x7f304a626700
  7454 ms     | 0x2569 PK11_DeriveWithTemplate()
  7454 ms  0x2569 ret:0x7f304a626100
  7454 ms  0x2569 PK11_Derive()
  7454 ms  0x2569 basekey:0x7f304a626780
  7454 ms     | 0x2569 PK11_DeriveWithTemplate()
  7454 ms  0x2569 ret:0x7f304a7e2a00
  7454 ms  0x2569 PK11_DeriveWithFlags()
  7454 ms  0x2569 basekey:0x7f305d102d80
  7454 ms     | 0x2569 PK11_DeriveWithTemplate()
  7454 ms  0x2569 ret:0x7f304a626700
  7454 ms  0x2569 PK11_DeriveWithFlags()
  7454 ms  0x2569 basekey:0x7f305d102d80
  7454 ms     | 0x2569 PK11_DeriveWithTemplate()
  7454 ms  0x2569 ret:0x7f304a626100
  7456 ms  SECKEY_ECParamsToKeySize()
  7456 ms  0x2569 ret:0x100
  7456 ms  SECKEY_ECParamsToBasePointOrderLen()
  7456 ms  0x2569 ret:0x100
  7456 ms  SECKEY_ECParamsToBasePointOrderLen()
  7456 ms  0x2569 ret:0x100
  7456 ms  0x2569 EC_ValidatePublicKey()
  7458 ms  0x2569 ret:0x0
  7461 ms  0x2569 PK11_DeriveWithFlags()
  7461 ms  0x2569 basekey:0x7f305d102d80
  7461 ms     | 0x2569 PK11_DeriveWithTemplate()
  7462 ms  0x2569 ret:0x7f304a626100
  7462 ms  0x2569 PK11_Derive()
  7462 ms  0x2569 basekey:0x7f304a626100
  7462 ms     | 0x2569 PK11_DeriveWithTemplate()
  7462 ms  0x2569 ret:0x7f304a626780
  7462 ms  0x2569 PK11_PubDeriveWithKDF()
  7462 ms  0x2569 seckey:0x7f304a77b020
  7462 ms     | 0x2569 EC_ValidatePublicKey()
  7463 ms     | 0x2569 ret:0x0
  7465 ms  0x2569 ret:0x7f304a626100
  7465 ms  SECKEY_ECParamsToKeySize()
  7465 ms  0x2569 ret:0x100
  7465 ms  0x2569 PK11_DeriveWithFlags()
  7465 ms  0x2569 basekey:0x7f304a626780
  7465 ms     | 0x2569 PK11_DeriveWithTemplate()
  7465 ms  0x2569 ret:0x7f304a7e2a80
  7465 ms  0x2569 PK11_Derive()
  7465 ms  0x2569 basekey:0x7f304a626100
  7465 ms     | 0x2569 PK11_DeriveWithTemplate()
  7465 ms  0x2569 ret:0x7f304a7e2b00
  7465 ms  0x2569 PK11_DeriveWithFlags()
  7465 ms  0x2569 basekey:0x7f304a7e2b00
  7465 ms     | 0x2569 PK11_DeriveWithTemplate()
  7465 ms  0x2569 ret:0x7f304a626780
  7465 ms  0x2569 PK11_DeriveWithFlags()
  7465 ms  0x2569 basekey:0x7f304a7e2b00
  7465 ms     | 0x2569 PK11_DeriveWithTemplate()
  7465 ms  0x2569 ret:0x7f304a626100
  7465 ms  0x2569 PK11_DeriveWithFlags()
  7465 ms  0x2569 basekey:0x7f304a7e2b00
  7465 ms     | 0x2569 PK11_DeriveWithTemplate()
  7465 ms  0x2569 ret:0x7f304a7e2a80
  7465 ms  0x2569 PK11_Derive()
  7465 ms  0x2569 basekey:0x7f304a7e2b80
  7465 ms     | 0x2569 PK11_DeriveWithTemplate()
  7465 ms  0x2569 ret:0x7f304a626680
  7465 ms  0x2569 PK11_DeriveWithFlags()
  7465 ms  0x2569 basekey:0x7f304a626100
  7465 ms     | 0x2569 PK11_DeriveWithTemplate()
  7465 ms  0x2569 ret:0x7f304a7e2b00
  7465 ms  0x2569 PK11_DeriveWithFlags()
  7465 ms  0x2569 basekey:0x7f304a626100
  7465 ms     | 0x2569 PK11_DeriveWithTemplate()
  7465 ms  0x2569 ret:0x7f304a7e2a80
           /* TID 0x2571 */
  7467 ms  0x2571 PR_Close()
  7467 ms  0x2571 fd:0x7f304aaec6d0
           /* TID 0x25cf */
  7478 ms  0x25cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7478 ms  0x25cf ret:0x0
           /* TID 0x2569 */
  7479 ms  0x2569 PK11_DeriveWithFlags()
  7479 ms  0x2569 basekey:0x7f304a626100
  7479 ms     | 0x2569 PK11_DeriveWithTemplate()
  7479 ms  0x2569 ret:0x7f304a7e2a80
  7479 ms  0x2569 SSL_AuthCertificateComplete()
  7479 ms  0x2569 fd:0x7f304a7d7550
  7479 ms  0x2569 err:0x0
  7479 ms     | 0x2569 PK11_DeriveWithFlags()
  7479 ms     | 0x2569 basekey:0x7f304a626680
  7479 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7479 ms     | 0x2569 ret:0x7f304a7e2a80
  7479 ms     | 0x2569 PK11_DeriveWithFlags()
  7479 ms     | 0x2569 basekey:0x7f304a626680
  7479 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7479 ms     | 0x2569 ret:0x7f304a7e2b80
  7479 ms     | 0x2569 PK11_DeriveWithFlags()
  7479 ms     | 0x2569 basekey:0x7f304a626680
  7479 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7479 ms     | 0x2569 ret:0x7f304a626600
  7479 ms     | 0x2569 PK11_DeriveWithFlags()
  7479 ms     | 0x2569 basekey:0x7f304a626780
  7479 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7479 ms     | 0x2569 ret:0x7f304a626580
  7479 ms     | 0x2569 PK11_DeriveWithFlags()
  7479 ms     | 0x2569 basekey:0x7f304a626780
  7479 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7479 ms     | 0x2569 ret:0x7f304a626500
  7479 ms     | 0x2569 PK11_DeriveWithFlags()
  7479 ms     | 0x2569 basekey:0x7f304a7e2b80
  7479 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7479 ms     | 0x2569 ret:0x7f304a626500
  7479 ms     | 0x2569 PK11_DeriveWithFlags()
  7479 ms     | 0x2569 basekey:0x7f304a7e2b80
  7479 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7479 ms     | 0x2569 ret:0x7f304a626380
  7479 ms     | 0x2569 PK11_DeriveWithFlags()
  7479 ms     | 0x2569 basekey:0x7f304a626780
  7479 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7479 ms     | 0x2569 ret:0x7f304a7e2b00
  7479 ms     | 0x2569 PK11_Encrypt()
  7479 ms     | 0x2569 symkey:0x7f304a626580
  7479 ms     | 0x2569 PK11_DeriveWithFlags()
  7479 ms     | 0x2569 basekey:0x7f304a7e2a80
  7479 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7479 ms     | 0x2569 ret:0x7f304a7e2b00
  7479 ms     | 0x2569 PK11_DeriveWithFlags()
  7479 ms     | 0x2569 basekey:0x7f304a7e2a80
  7479 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7479 ms     | 0x2569 ret:0x7f304a626380
  7480 ms     | 0x2569 PK11_DeriveWithFlags()
  7480 ms     | 0x2569 basekey:0x7f304a626680
  7480 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7480 ms     | 0x2569 ret:0x7f304a626580
  7480 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  7480 ms     | 0x2569 privk:0x7f304a77b020::7f304a77b020  80 b8 7e 4a                                      ..~J
  7480 ms     | 0x2569 privk:0x7f304a77b020::7f304a77b020  e5 e5 e5 e5                                      ....
  7480 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  7480 ms     | 0x2569 privk:0x7f304a777020::7f304a777020  c0 a4 87 4a                                      ...J
  7480 ms     | 0x2569 privk:0x7f304a777020::7f304a777020  e5 e5 e5 e5                                      ....
           /* TID 0x2571 */
  7481 ms  0x2571 PR_Close()
  7481 ms  0x2571 fd:0x7f304aaec820
  7481 ms  0x2571 PR_Close()
  7481 ms  0x2571 fd:0x7f304aaab0d0
           /* TID 0x2569 */
  7481 ms  0x2569 PK11_Encrypt()
  7481 ms  0x2569 symkey:0x7f304a7e2b00
  7481 ms  0x2569 PK11_Encrypt()
  7481 ms  0x2569 symkey:0x7f304a7e2b00
  7482 ms  0x2569 SSL_ImportFD()
  7482 ms  0x2569 ret:0x7f304aaab5b0
  7482 ms  0x2569 SSL_AuthCertificateHook()
  7482 ms  0x2569 fd:0x7f304aaab5b0
  7482 ms  0x2569 ret:0x0
  7482 ms  0x2569 PR_Connect()
  7482 ms  0x2569 fd:0x7f304aaab5b0
  7482 ms  0x2569 PR_Connect()
  7482 ms  0x2569 fd:0x7f304aaec790
  7485 ms  0x2569 PK11_Encrypt()
  7485 ms  0x2569 symkey:0x7f304a7e2880
           /* TID 0x2571 */
  7499 ms  0x2571 PR_Close()
  7499 ms  0x2571 fd:0x7f304aaab8b0
  7499 ms  0x2571 PR_Close()
  7499 ms  0x2571 fd:0x7f304aaab8b0
  7501 ms  0x2571 PR_Close()
  7501 ms  0x2571 fd:0x7f304a7d71c0
           /* TID 0x2569 */
  7505 ms  0x2569 PK11_DeriveWithFlags()
  7505 ms  0x2569 basekey:0x7f304a626580
  7505 ms     | 0x2569 PK11_DeriveWithTemplate()
  7505 ms  0x2569 ret:0x7f304a626100
  7505 ms  0x2569 PK11_DeriveWithFlags()
  7505 ms  0x2569 basekey:0x7f304a626580
  7505 ms     | 0x2569 PK11_DeriveWithTemplate()
  7505 ms  0x2569 ret:0x7f304a626100
  7505 ms  0x2569 PK11_Encrypt()
  7505 ms  0x2569 symkey:0x7f304a7e2b00
  7520 ms  0x2569 PK11_Encrypt()
  7520 ms  0x2569 symkey:0x7f304a7e2880
  7521 ms  0x2569 PK11_Encrypt()
  7521 ms  0x2569 symkey:0x7f304a7e2880
  7526 ms  0x2569 SECKEY_CreateECPrivateKey()
  7526 ms  0x2569 cx:0x7f304a64f7a8
  7527 ms     | 0x2569 EC_ValidatePublicKey()
  7527 ms     | 0x2569 ret:0x0
  7527 ms  0x2569 ret:0x7f304a849820::7f304a849820  d0 a8 87 4a                                      ...J
  7527 ms  0x2569 SECKEY_CreateECPrivateKey()
  7527 ms  0x2569 cx:0x7f304a64f7a8
  7527 ms     | 0x2569 EC_ValidatePublicKey()
  7529 ms     | 0x2569 ret:0x0
  7529 ms  0x2569 ret:0x7f304a84b820::7f304a84b820  20 94 8e 4a                                       ..J
           /* TID 0x2571 */
  7534 ms  0x2571 PR_Close()
  7534 ms  0x2571 fd:0x7f304a739e20
  7542 ms  0x2571 PR_Close()
  7542 ms  0x2571 fd:0x7f304a6a1a00
           /* TID 0x2569 */
  7576 ms  SECKEY_ECParamsToKeySize()
  7576 ms  0x2569 ret:0x100
  7576 ms  0x2569 SECKEY_CreateECPrivateKey()
  7576 ms  0x2569 cx:0x7f304a64f7a8
  7576 ms     | 0x2569 EC_ValidatePublicKey()
  7578 ms     | 0x2569 ret:0x0
  7579 ms  0x2569 ret:0x7f304a855820::7f304a855820  30 48 ad 4a                                      0H.J
  7579 ms  0x2569 PK11_PubDeriveWithKDF()
  7579 ms  0x2569 seckey:0x7f304a855820
  7579 ms     | 0x2569 EC_ValidatePublicKey()
  7586 ms     | 0x2569 ret:0x0
  7587 ms  0x2569 ret:0x7f304a626100
  7587 ms  0x2569 PK11_DeriveWithFlags()
  7587 ms  0x2569 basekey:0x7f304a626100
  7587 ms     | 0x2569 PK11_DeriveWithTemplate()
  7587 ms  0x2569 ret:0x7f304a626780
  7587 ms  0x2569 PK11_Derive()
  7587 ms  0x2569 basekey:0x7f304a626780
  7587 ms     | 0x2569 PK11_DeriveWithTemplate()
  7587 ms  0x2569 ret:0x7f304a626680
  7587 ms  0x2569 SECKEY_DestroyPrivateKey()
  7587 ms  0x2569 privk:0x7f304a855820::7f304a855820  30 48 ad 4a                                      0H.J
  7587 ms  0x2569 privk:0x7f304a855820::7f304a855820  e5 e5 e5 e5                                      ....
  7587 ms  0x2569 PK11_Encrypt()
  7587 ms  0x2569 symkey:0x7f304a626200
           /* TID 0x2571 */
  7591 ms  0x2571 PR_Close()
  7591 ms  0x2571 fd:0x7f304a6a1e80
  7596 ms  0x2571 PR_Close()
  7596 ms  0x2571 fd:0x7f304a6a1e80
           /* TID 0x2569 */
  7600 ms  0x2569 SSL_ImportFD()
  7600 ms  0x2569 ret:0x7f304aaab580
  7600 ms  0x2569 SSL_AuthCertificateHook()
  7600 ms  0x2569 fd:0x7f304aaab580
  7600 ms  0x2569 ret:0x0
  7600 ms  0x2569 PR_Connect()
  7600 ms  0x2569 fd:0x7f304aaab580
           /* TID 0x2571 */
  7620 ms  0x2571 PR_Close()
  7620 ms  0x2571 fd:0x7f304a6a1e80
           /* TID 0x25cf */
  7620 ms  0x25cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7620 ms  0x25cf ret:0x0
  7620 ms  0x25cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7620 ms  0x25cf ret:0x0
           /* TID 0x2569 */
  7626 ms  0x2569 SSL_AuthCertificateComplete()
  7626 ms  0x2569 fd:0x7f304aaab5b0
  7626 ms  0x2569 err:0x0
  7626 ms  0x2569 PK11_Encrypt()
  7626 ms  0x2569 symkey:0x7f304a626200
  7632 ms  0x2569 SECKEY_DestroyPrivateKey()
  7632 ms  0x2569 privk:0x7f304a84b820::7f304a84b820  20 94 8e 4a                                       ..J
  7632 ms  0x2569 privk:0x7f304a84b820::7f304a84b820  e5 e5 e5 e5                                      ....
  7632 ms  0x2569 SECKEY_DestroyPrivateKey()
  7632 ms  0x2569 privk:0x7f304a849820::7f304a849820  d0 a8 87 4a                                      ...J
  7632 ms  0x2569 privk:0x7f304a849820::7f304a849820  e5 e5 e5 e5                                      ....
  7636 ms  0x2569 PK11_Encrypt()
  7636 ms  0x2569 symkey:0x7f304a7e3080
  7641 ms  0x2569 PK11_Encrypt()
  7641 ms  0x2569 symkey:0x7f304a7e3080
  7658 ms  0x2569 SECKEY_CreateECPrivateKey()
  7658 ms  0x2569 cx:0x7f304a64fae8
  7659 ms     | 0x2569 EC_ValidatePublicKey()
  7659 ms     | 0x2569 ret:0x0
  7659 ms  0x2569 ret:0x7f304a84b820::7f304a84b820  a0 91 8e 4a                                      ...J
  7659 ms  0x2569 SECKEY_CreateECPrivateKey()
  7659 ms  0x2569 cx:0x7f304a64fae8
  7659 ms     | 0x2569 EC_ValidatePublicKey()
  7661 ms     | 0x2569 ret:0x0
  7661 ms  0x2569 ret:0x7f304a852820::7f304a852820  00 8b 9d 4a                                      ...J
           /* TID 0x2609 */
  7664 ms  0x2609 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7664 ms  0x2609 ret:0x0
           /* TID 0x2571 */
  7665 ms  0x2571 PR_Close()
  7665 ms  0x2571 fd:0x7f305bac08b0
  7677 ms  0x2571 PR_Close()
  7677 ms  0x2571 fd:0x7f304a6a1fd0
           /* TID 0x2569 */
  7682 ms  0x2569 SSL_AuthCertificateComplete()
  7682 ms  0x2569 fd:0x7f304a7d7f10
  7682 ms  0x2569 err:0x0
  7682 ms     | 0x2569 PK11_DeriveWithFlags()
  7682 ms     | 0x2569 basekey:0x7f304a7e2a00
  7682 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7682 ms     | 0x2569 ret:0x7f304a626100
  7682 ms     | 0x2569 PK11_DeriveWithFlags()
  7682 ms     | 0x2569 basekey:0x7f304a7e2a00
  7682 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7682 ms     | 0x2569 ret:0x7f304a626380
  7682 ms     | 0x2569 PK11_DeriveWithFlags()
  7682 ms     | 0x2569 basekey:0x7f304a7e2a00
  7682 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7682 ms     | 0x2569 ret:0x7f304a626000
  7682 ms     | 0x2569 PK11_DeriveWithFlags()
  7682 ms     | 0x2569 basekey:0x7f305ccace00
  7682 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7682 ms     | 0x2569 ret:0x7f304a625f80
  7682 ms     | 0x2569 PK11_DeriveWithFlags()
  7682 ms     | 0x2569 basekey:0x7f305ccace00
  7682 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7682 ms     | 0x2569 ret:0x7f304a625f00
  7682 ms     | 0x2569 PK11_DeriveWithFlags()
  7682 ms     | 0x2569 basekey:0x7f304a626380
  7682 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7682 ms     | 0x2569 ret:0x7f304a625f00
  7682 ms     | 0x2569 PK11_DeriveWithFlags()
  7682 ms     | 0x2569 basekey:0x7f304a626380
  7682 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7682 ms     | 0x2569 ret:0x7f304a626980
  7682 ms     | 0x2569 PK11_DeriveWithFlags()
  7682 ms     | 0x2569 basekey:0x7f305ccace00
  7682 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7682 ms     | 0x2569 ret:0x7f304a626700
  7682 ms     | 0x2569 PK11_Encrypt()
  7682 ms     | 0x2569 symkey:0x7f304a625f80
  7682 ms     | 0x2569 PK11_DeriveWithFlags()
  7682 ms     | 0x2569 basekey:0x7f304a626100
  7682 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7682 ms     | 0x2569 ret:0x7f304a626700
  7682 ms     | 0x2569 PK11_DeriveWithFlags()
  7682 ms     | 0x2569 basekey:0x7f304a626100
  7682 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7682 ms     | 0x2569 ret:0x7f304a626980
  7682 ms     | 0x2569 PK11_DeriveWithFlags()
  7682 ms     | 0x2569 basekey:0x7f304a7e2a00
  7682 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  7682 ms     | 0x2569 ret:0x7f304a625f80
  7682 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  7682 ms     | 0x2569 privk:0x7f304a686820::7f304a686820  30 a3 87 4a                                      0..J
  7682 ms     | 0x2569 privk:0x7f304a686820::7f304a686820  e5 e5 e5 e5                                      ....
  7682 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  7682 ms     | 0x2569 privk:0x7f304a684820::7f304a684820  b0 bf 7e 4a                                      ..~J
  7683 ms     | 0x2569 privk:0x7f304a684820::7f304a684820  e5 e5 e5 e5                                      ....
  7683 ms  0x2569 PK11_Encrypt()
  7683 ms  0x2569 symkey:0x7f304a626700
  7683 ms  0x2569 PK11_Encrypt()
  7683 ms  0x2569 symkey:0x7f304a626700
  7700 ms  0x2569 SSL_ImportFD()
  7700 ms  0x2569 ret:0x7f305bac0d60
  7700 ms  0x2569 SSL_AuthCertificateHook()
  7700 ms  0x2569 fd:0x7f305bac0d60
  7700 ms  0x2569 ret:0x0
  7700 ms  0x2569 PK11_Encrypt()
  7700 ms  0x2569 symkey:0x7f304a7e2880
  7702 ms  0x2569 PR_Connect()
  7702 ms  0x2569 fd:0x7f305bac0d60
  7720 ms  0x2569 PK11_DeriveWithFlags()
  7720 ms  0x2569 basekey:0x7f304a625f80
  7720 ms     | 0x2569 PK11_DeriveWithTemplate()
  7720 ms  0x2569 ret:0x7f305d102d80
  7720 ms  0x2569 PK11_DeriveWithFlags()
  7720 ms  0x2569 basekey:0x7f304a625f80
  7720 ms     | 0x2569 PK11_DeriveWithTemplate()
  7720 ms  0x2569 ret:0x7f305d102d80
  7720 ms  0x2569 PK11_Encrypt()
  7720 ms  0x2569 symkey:0x7f304a626700
  7721 ms  SECKEY_ECParamsToKeySize()
  7721 ms  0x2569 ret:0x100
  7721 ms  0x2569 SECKEY_CreateECPrivateKey()
  7721 ms  0x2569 cx:0x7f304a64fae8
  7721 ms     | 0x2569 EC_ValidatePublicKey()
  7723 ms     | 0x2569 ret:0x0
  7723 ms  0x2569 ret:0x7f304a858820::7f304a858820  60 4f ad 4a                                      `O.J
  7723 ms  0x2569 PK11_PubDeriveWithKDF()
  7723 ms  0x2569 seckey:0x7f304a858820
  7723 ms     | 0x2569 EC_ValidatePublicKey()
  7731 ms     | 0x2569 ret:0x0
  7733 ms  0x2569 ret:0x7f305d102d80
  7733 ms  0x2569 PK11_DeriveWithFlags()
  7733 ms  0x2569 basekey:0x7f305d102d80
  7733 ms     | 0x2569 PK11_DeriveWithTemplate()
  7733 ms  0x2569 ret:0x7f305ccace00
  7733 ms  0x2569 PK11_Derive()
  7733 ms  0x2569 basekey:0x7f305ccace00
  7733 ms     | 0x2569 PK11_DeriveWithTemplate()
  7733 ms  0x2569 ret:0x7f304a7e2a00
  7733 ms  0x2569 SECKEY_DestroyPrivateKey()
  7733 ms  0x2569 privk:0x7f304a858820::7f304a858820  60 4f ad 4a                                      `O.J
  7733 ms  0x2569 privk:0x7f304a858820::7f304a858820  e5 e5 e5 e5                                      ....
  7733 ms  0x2569 PK11_Encrypt()
  7733 ms  0x2569 symkey:0x7f304a626800
           /* TID 0x2571 */
  7740 ms  0x2571 PR_Close()
  7740 ms  0x2571 fd:0x7f304a8fc1c0
  7749 ms  0x2571 PR_Close()
  7749 ms  0x2571 fd:0x7f304a8fc1c0
  7751 ms  0x2571 PR_Close()
  7751 ms  0x2571 fd:0x7f304a8fc1c0
           /* TID 0x2569 */
  7751 ms  0x2569 SECKEY_CreateECPrivateKey()
  7751 ms  0x2569 cx:0x7f304a64fc88
  7752 ms     | 0x2569 EC_ValidatePublicKey()
  7752 ms     | 0x2569 ret:0x0
  7752 ms  0x2569 ret:0x7f304a856020::7f304a856020  b0 bf 7e 4a                                      ..~J
  7752 ms  0x2569 SECKEY_CreateECPrivateKey()
  7752 ms  0x2569 cx:0x7f304a64fc88
  7752 ms     | 0x2569 EC_ValidatePublicKey()
  7759 ms     | 0x2569 ret:0x0
  7759 ms  0x2569 ret:0x7f304a858820::7f304a858820  00 91 8e 4a                                      ...J
           /* TID 0x2571 */
  7769 ms  0x2571 PR_Close()
  7769 ms  0x2571 fd:0x7f305bac0760
           /* TID 0x25cf */
  7769 ms  0x25cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7769 ms  0x25cf ret:0x0
  7769 ms  0x25cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7769 ms  0x25cf ret:0x0
           /* TID 0x2569 */
  7769 ms  0x2569 SSL_AuthCertificateComplete()
  7769 ms  0x2569 fd:0x7f304aaab580
  7769 ms  0x2569 err:0x0
  7769 ms  0x2569 PK11_Encrypt()
  7769 ms  0x2569 symkey:0x7f304a626800
  7775 ms  0x2569 SSL_ImportFD()
  7775 ms  0x2569 ret:0x7f305bac0ac0
  7775 ms  0x2569 SSL_AuthCertificateHook()
  7775 ms  0x2569 fd:0x7f305bac0ac0
  7775 ms  0x2569 ret:0x0
  7775 ms  0x2569 PR_Connect()
  7775 ms  0x2569 fd:0x7f305bac0ac0
  7790 ms  0x2569 PK11_Encrypt()
  7790 ms  0x2569 symkey:0x7f304a7e2880
  7791 ms  0x2569 SECKEY_DestroyPrivateKey()
  7791 ms  0x2569 privk:0x7f304a852820::7f304a852820  00 8b 9d 4a                                      ...J
  7791 ms  0x2569 privk:0x7f304a852820::7f304a852820  e5 e5 e5 e5                                      ....
  7791 ms  0x2569 SECKEY_DestroyPrivateKey()
  7791 ms  0x2569 privk:0x7f304a84b820::7f304a84b820  a0 91 8e 4a                                      ...J
  7791 ms  0x2569 privk:0x7f304a84b820::7f304a84b820  e5 e5 e5 e5                                      ....
  7799 ms  SECKEY_ECParamsToKeySize()
  7799 ms  0x2569 ret:0x100
  7799 ms  0x2569 SECKEY_CreateECPrivateKey()
  7799 ms  0x2569 cx:0x7f304a64fc88
  7799 ms     | 0x2569 EC_ValidatePublicKey()
  7801 ms     | 0x2569 ret:0x0
  7802 ms  0x2569 ret:0x7f304a84b820::7f304a84b820  00 8b 9d 4a                                      ...J
  7802 ms  0x2569 PK11_PubDeriveWithKDF()
  7802 ms  0x2569 seckey:0x7f304a84b820
  7802 ms     | 0x2569 EC_ValidatePublicKey()
  7803 ms     | 0x2569 ret:0x0
  7808 ms  0x2569 ret:0x7f305d102d80
  7808 ms  0x2569 PK11_DeriveWithFlags()
  7808 ms  0x2569 basekey:0x7f305d102d80
  7808 ms     | 0x2569 PK11_DeriveWithTemplate()
  7808 ms  0x2569 ret:0x7f304a626980
  7808 ms  0x2569 PK11_Derive()
  7808 ms  0x2569 basekey:0x7f304a626980
  7808 ms     | 0x2569 PK11_DeriveWithTemplate()
  7809 ms  0x2569 ret:0x7f305bafc700
  7809 ms  0x2569 SECKEY_DestroyPrivateKey()
  7809 ms  0x2569 privk:0x7f304a84b820::7f304a84b820  00 8b 9d 4a                                      ...J
  7809 ms  0x2569 privk:0x7f304a84b820::7f304a84b820  e5 e5 e5 e5                                      ....
  7809 ms  0x2569 PK11_Encrypt()
  7809 ms  0x2569 symkey:0x7f305bafc880
  7813 ms  0x2569 SSL_AuthCertificateComplete()
  7813 ms  0x2569 fd:0x7f305bac0d60
  7813 ms  0x2569 err:0x0
           /* TID 0x2571 */
  7814 ms  0x2571 PR_Close()
  7814 ms  0x2571 fd:0x7f304a7d7b50
           /* TID 0x2569 */
  7814 ms  0x2569 PK11_Encrypt()
  7814 ms  0x2569 symkey:0x7f304a626700
  7815 ms  0x2569 PK11_Encrypt()
  7815 ms  0x2569 symkey:0x7f305bafc880
  7816 ms  0x2569 PK11_Encrypt()
  7816 ms  0x2569 symkey:0x7f304a7e2880
           /* TID 0x2571 */
  7829 ms  0x2571 PR_Close()
  7829 ms  0x2571 fd:0x7f305bac0880
           /* TID 0x2569 */
  7832 ms  0x2569 PK11_Encrypt()
  7832 ms  0x2569 symkey:0x7f304a7e2880
  7834 ms  0x2569 SECKEY_CreateECPrivateKey()
  7834 ms  0x2569 cx:0x7f304a64fe28
  7834 ms     | 0x2569 EC_ValidatePublicKey()
  7834 ms     | 0x2569 ret:0x0
  7834 ms  0x2569 ret:0x7f304a85b820::7f304a85b820  00 46 ad 4a                                      .F.J
  7834 ms  0x2569 SECKEY_CreateECPrivateKey()
  7834 ms  0x2569 cx:0x7f304a64fe28
  7835 ms     | 0x2569 EC_ValidatePublicKey()
  7836 ms     | 0x2569 ret:0x0
  7836 ms  0x2569 ret:0x7f304a90b820::7f304a90b820  40 92 8e 4a                                      @..J
  7846 ms  0x2569 SECKEY_DestroyPrivateKey()
  7846 ms  0x2569 privk:0x7f304a858820::7f304a858820  00 91 8e 4a                                      ...J
  7846 ms  0x2569 privk:0x7f304a858820::7f304a858820  e5 e5 e5 e5                                      ....
  7846 ms  0x2569 SECKEY_DestroyPrivateKey()
  7846 ms  0x2569 privk:0x7f304a856020::7f304a856020  b0 bf 7e 4a                                      ..~J
  7847 ms  0x2569 privk:0x7f304a856020::7f304a856020  e5 e5 e5 e5                                      ....
  7847 ms  0x2569 PR_Close()
  7847 ms  0x2569 fd:0x7f305bac0d60
  7847 ms     | 0x2569 PK11_Encrypt()
  7847 ms     | 0x2569 symkey:0x7f305bafc880
  7860 ms  0x2569 PK11_Encrypt()
  7860 ms  0x2569 symkey:0x7f304a626800
  7863 ms  0x2569 SSL_ImportFD()
  7863 ms  0x2569 ret:0x7f305bac0d60
  7863 ms  0x2569 SSL_AuthCertificateHook()
  7863 ms  0x2569 fd:0x7f305bac0d60
  7863 ms  0x2569 ret:0x0
  7866 ms  0x2569 PK11_Encrypt()
  7866 ms  0x2569 symkey:0x7f304a7e2880
  7867 ms  0x2569 PR_Connect()
  7867 ms  0x2569 fd:0x7f305bac0d60
  7867 ms  0x2569 SSL_ImportFD()
  7867 ms  0x2569 ret:0x7f304aaece20
  7867 ms  0x2569 SSL_AuthCertificateHook()
  7867 ms  0x2569 fd:0x7f304aaece20
  7867 ms  0x2569 ret:0x0
  7867 ms  0x2569 PR_Connect()
  7867 ms  0x2569 fd:0x7f304aaece20
  7867 ms  0x2569 PK11_Encrypt()
  7867 ms  0x2569 symkey:0x7f304a7e2880
           /* TID 0x2571 */
  7871 ms  0x2571 PR_Close()
  7871 ms  0x2571 fd:0x7f305bac08b0
           /* TID 0x2569 */
  7904 ms  0x2569 SECKEY_CreateECPrivateKey()
  7904 ms  0x2569 cx:0x7f304a650308
  7904 ms     | 0x2569 EC_ValidatePublicKey()
  7904 ms     | 0x2569 ret:0x0
  7904 ms  0x2569 ret:0x7f304a856020::7f304a856020  d0 ad 87 4a                                      ...J
  7904 ms  0x2569 SECKEY_CreateECPrivateKey()
  7904 ms  0x2569 cx:0x7f304a650308
  7906 ms     | 0x2569 EC_ValidatePublicKey()
  7907 ms     | 0x2569 ret:0x0
  7907 ms  0x2569 ret:0x7f304a858820::7f304a858820  f0 91 ae 4a                                      ...J
  7908 ms  0x2569 SECKEY_CreateECPrivateKey()
  7908 ms  0x2569 cx:0x7f304a64fc88
  7908 ms     | 0x2569 EC_ValidatePublicKey()
  7908 ms     | 0x2569 ret:0x0
  7908 ms  0x2569 ret:0x7f304a912820::7f304a912820  50 9b ae 4a                                      P..J
  7908 ms  0x2569 SECKEY_CreateECPrivateKey()
  7908 ms  0x2569 cx:0x7f304a64fc88
  7909 ms     | 0x2569 EC_ValidatePublicKey()
  7910 ms     | 0x2569 ret:0x0
  7910 ms  0x2569 ret:0x7f304a918820::7f304a918820  30 9d ae 4a                                      0..J
           /* TID 0x2571 */
  7912 ms  0x2571 PR_Close()
  7912 ms  0x2571 fd:0x7f305bacbbe0
  7914 ms  0x2571 PR_Close()
  7914 ms  0x2571 fd:0x7f305bacbbe0
           /* TID 0x2569 */
  7927 ms  0x2569 PK11_Encrypt()
  7927 ms  0x2569 symkey:0x7f304a7e2880
           /* TID 0x2571 */
  7943 ms  0x2571 PR_Close()
  7943 ms  0x2571 fd:0x7f305bac08b0
           /* TID 0x2569 */
  7944 ms  SECKEY_ECParamsToKeySize()
  7944 ms  0x2569 ret:0x100
  7944 ms  0x2569 SECKEY_CreateECPrivateKey()
  7944 ms  0x2569 cx:0x7f304a64fe28
  7945 ms     | 0x2569 EC_ValidatePublicKey()
  7946 ms     | 0x2569 ret:0x0
           /* TID 0x25cf */
  7947 ms  0x25cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7947 ms  0x25cf ret:0x0
           /* TID 0x2569 */
  7948 ms  0x2569 ret:0x7f305ba44020::7f305ba44020  70 b4 ab 5b                                      p..[
  7949 ms  0x2569 PK11_PubDeriveWithKDF()
  7949 ms  0x2569 seckey:0x7f305ba44020
  7949 ms     | 0x2569 EC_ValidatePublicKey()
  7953 ms     | 0x2569 ret:0x0
  7955 ms  0x2569 ret:0x7f305bafc700
  7955 ms  0x2569 PK11_DeriveWithFlags()
  7955 ms  0x2569 basekey:0x7f305bafc700
  7955 ms     | 0x2569 PK11_DeriveWithTemplate()
  7955 ms  0x2569 ret:0x7f304a626980
  7955 ms  0x2569 PK11_Derive()
  7955 ms  0x2569 basekey:0x7f304a626980
  7955 ms     | 0x2569 PK11_DeriveWithTemplate()
  7955 ms  0x2569 ret:0x7f305d102d80
  7955 ms  0x2569 SECKEY_DestroyPrivateKey()
  7955 ms  0x2569 privk:0x7f305ba44020::7f305ba44020  70 b4 ab 5b                                      p..[
  7955 ms  0x2569 privk:0x7f305ba44020::7f305ba44020  e5 e5 e5 e5                                      ....
  7955 ms  0x2569 PK11_Encrypt()
  7955 ms  0x2569 symkey:0x7f305bafc780
  7960 ms  0x2569 SSL_AuthCertificateComplete()
  7960 ms  0x2569 fd:0x7f305bac0ac0
  7960 ms  0x2569 err:0x0
  7960 ms  0x2569 PK11_Encrypt()
  7960 ms  0x2569 symkey:0x7f304a7e3080
  7960 ms  0x2569 PK11_Encrypt()
  7960 ms  0x2569 symkey:0x7f305bafc780
  7960 ms  0x2569 PK11_Encrypt()
  7960 ms  0x2569 symkey:0x7f305bafc780
  7961 ms  SECKEY_ECParamsToKeySize()
  7961 ms  0x2569 ret:0x100
  7961 ms  0x2569 SECKEY_CreateECPrivateKey()
  7961 ms  0x2569 cx:0x7f304a650308
  7962 ms     | 0x2569 EC_ValidatePublicKey()
  7963 ms     | 0x2569 ret:0x0
  7963 ms  0x2569 ret:0x7f305ba44820::7f305ba44820  30 b3 ab 5b                                      0..[
  7963 ms  0x2569 PK11_PubDeriveWithKDF()
  7963 ms  0x2569 seckey:0x7f305ba44820
  7963 ms     | 0x2569 EC_ValidatePublicKey()
  7965 ms     | 0x2569 ret:0x0
  7966 ms  0x2569 ret:0x7f305bafc700
  7966 ms  0x2569 PK11_DeriveWithFlags()
  7966 ms  0x2569 basekey:0x7f305bafc700
  7966 ms     | 0x2569 PK11_DeriveWithTemplate()
  7966 ms  0x2569 ret:0x7f305bb39400
  7966 ms  0x2569 PK11_Derive()
  7966 ms  0x2569 basekey:0x7f305bb39400
  7966 ms     | 0x2569 PK11_DeriveWithTemplate()
  7966 ms  0x2569 ret:0x7f305bb39480
  7966 ms  0x2569 SECKEY_DestroyPrivateKey()
  7966 ms  0x2569 privk:0x7f305ba44820::7f305ba44820  30 b3 ab 5b                                      0..[
  7967 ms  0x2569 privk:0x7f305ba44820::7f305ba44820  e5 e5 e5 e5                                      ....
  7967 ms  0x2569 PK11_Encrypt()
  7967 ms  0x2569 symkey:0x7f305bb39600
  7978 ms  SECKEY_ECParamsToKeySize()
  7978 ms  0x2569 ret:0x100
  7978 ms  0x2569 SECKEY_CreateECPrivateKey()
  7978 ms  0x2569 cx:0x7f304a64fc88
  7981 ms     | 0x2569 EC_ValidatePublicKey()
  7982 ms     | 0x2569 ret:0x0
  7982 ms  0x2569 ret:0x7f305ba45820::7f305ba45820  60 b5 ab 5b                                      `..[
  7982 ms  0x2569 PK11_PubDeriveWithKDF()
  7982 ms  0x2569 seckey:0x7f305ba45820
  7982 ms     | 0x2569 EC_ValidatePublicKey()
  7984 ms     | 0x2569 ret:0x0
  7985 ms  0x2569 ret:0x7f305bafc700
  7985 ms  0x2569 PK11_DeriveWithFlags()
  7985 ms  0x2569 basekey:0x7f305bafc700
  7985 ms     | 0x2569 PK11_DeriveWithTemplate()
  7985 ms  0x2569 ret:0x7f305bb39880
  7985 ms  0x2569 PK11_Derive()
  7985 ms  0x2569 basekey:0x7f305bb39880
  7985 ms     | 0x2569 PK11_DeriveWithTemplate()
  7985 ms  0x2569 ret:0x7f305bb39900
  7985 ms  0x2569 SECKEY_DestroyPrivateKey()
  7985 ms  0x2569 privk:0x7f305ba45820::7f305ba45820  60 b5 ab 5b                                      `..[
  7985 ms  0x2569 privk:0x7f305ba45820::7f305ba45820  e5 e5 e5 e5                                      ....
  7986 ms  0x2569 PK11_Encrypt()
  7986 ms  0x2569 symkey:0x7f305bb39a80
  8000 ms  0x2569 SSL_AuthCertificateComplete()
  8000 ms  0x2569 fd:0x7f304aaece20
  8000 ms  0x2569 err:0x0
  8000 ms  0x2569 SSL_AuthCertificateComplete()
  8000 ms  0x2569 fd:0x7f305bac0d60
  8000 ms  0x2569 err:0x0
           /* TID 0x2571 */
  8001 ms  0x2571 PR_Close()
  8001 ms  0x2571 fd:0x7f305baf71c0
  8002 ms  0x2571 PR_Close()
  8002 ms  0x2571 fd:0x7f305baf71c0
           /* TID 0x2569 */
  8003 ms  0x2569 PK11_Encrypt()
  8003 ms  0x2569 symkey:0x7f305bb39600
  8004 ms  0x2569 PK11_Encrypt()
  8004 ms  0x2569 symkey:0x7f305bb39a80
  8005 ms  0x2569 SECKEY_DestroyPrivateKey()
  8005 ms  0x2569 privk:0x7f304a858820::7f304a858820  f0 91 ae 4a                                      ...J
  8005 ms  0x2569 privk:0x7f304a858820::7f304a858820  e5 e5 e5 e5                                      ....
  8005 ms  0x2569 SECKEY_DestroyPrivateKey()
  8005 ms  0x2569 privk:0x7f304a856020::7f304a856020  d0 ad 87 4a                                      ...J
  8005 ms  0x2569 privk:0x7f304a856020::7f304a856020  e5 e5 e5 e5                                      ....
  8005 ms  0x2569 PR_Close()
  8005 ms  0x2569 fd:0x7f304aaece20
  8005 ms     | 0x2569 PK11_Encrypt()
  8005 ms     | 0x2569 symkey:0x7f305bb39600
  8016 ms  0x2569 SSL_ImportFD()
  8016 ms  0x2569 ret:0x7f305baf7160
  8016 ms  0x2569 SSL_AuthCertificateHook()
  8016 ms  0x2569 fd:0x7f305baf7160
  8016 ms  0x2569 ret:0x0
  8016 ms  0x2569 PR_Connect()
  8016 ms  0x2569 fd:0x7f305baf7160
  8024 ms  0x2569 SECKEY_DestroyPrivateKey()
  8024 ms  0x2569 privk:0x7f304a918820::7f304a918820  30 9d ae 4a                                      0..J
  8024 ms  0x2569 privk:0x7f304a918820::7f304a918820  e5 e5 e5 e5                                      ....
  8024 ms  0x2569 SECKEY_DestroyPrivateKey()
  8024 ms  0x2569 privk:0x7f304a912820::7f304a912820  50 9b ae 4a                                      P..J
  8024 ms  0x2569 privk:0x7f304a912820::7f304a912820  e5 e5 e5 e5                                      ....
  8024 ms  0x2569 PR_Close()
  8024 ms  0x2569 fd:0x7f305bac0d60
  8024 ms     | 0x2569 PK11_Encrypt()
  8024 ms     | 0x2569 symkey:0x7f305bb39a80
  8044 ms  0x2569 SECKEY_DestroyPrivateKey()
  8044 ms  0x2569 privk:0x7f304a90b820::7f304a90b820  40 92 8e 4a                                      @..J
  8045 ms  0x2569 privk:0x7f304a90b820::7f304a90b820  e5 e5 e5 e5                                      ....
  8045 ms  0x2569 SECKEY_DestroyPrivateKey()
  8045 ms  0x2569 privk:0x7f304a85b820::7f304a85b820  00 46 ad 4a                                      .F.J
  8045 ms  0x2569 privk:0x7f304a85b820::7f304a85b820  e5 e5 e5 e5                                      ....
  8075 ms  0x2569 SECKEY_CreateECPrivateKey()
  8075 ms  0x2569 cx:0x7f304a650308
  8076 ms     | 0x2569 EC_ValidatePublicKey()
  8076 ms     | 0x2569 ret:0x0
  8076 ms  0x2569 ret:0x7f304a852820::7f304a852820  60 4f ad 4a                                      `O.J
  8076 ms  0x2569 SECKEY_CreateECPrivateKey()
  8076 ms  0x2569 cx:0x7f304a650308
  8078 ms     | 0x2569 EC_ValidatePublicKey()
  8083 ms     | 0x2569 ret:0x0
  8083 ms  0x2569 ret:0x7f304a858020::7f304a858020  d0 93 8e 4a                                      ...J
  8084 ms  0x2569 PK11_Encrypt()
  8084 ms  0x2569 symkey:0x7f305bafc780
           /* TID 0x2571 */
  8094 ms  0x2571 PR_Close()
  8094 ms  0x2571 fd:0x7f304a8fc100
           /* TID 0x2569 */
  8144 ms  SECKEY_ECParamsToKeySize()
  8145 ms  0x2569 ret:0x100
  8145 ms  0x2569 SECKEY_CreateECPrivateKey()
  8145 ms  0x2569 cx:0x7f304a650308
  8147 ms     | 0x2569 EC_ValidatePublicKey()
  8152 ms     | 0x2569 ret:0x0
  8153 ms  0x2569 ret:0x7f305ba42020::7f305ba42020  d0 b8 ab 5b                                      ...[
  8153 ms  0x2569 PK11_PubDeriveWithKDF()
  8153 ms  0x2569 seckey:0x7f305ba42020
  8153 ms     | 0x2569 EC_ValidatePublicKey()
  8157 ms     | 0x2569 ret:0x0
  8160 ms  0x2569 ret:0x7f305bb39900
  8160 ms  0x2569 PK11_DeriveWithFlags()
  8160 ms  0x2569 basekey:0x7f305bb39900
  8161 ms     | 0x2569 PK11_DeriveWithTemplate()
  8161 ms  0x2569 ret:0x7f305bb39880
  8161 ms  0x2569 PK11_Derive()
  8161 ms  0x2569 basekey:0x7f305bb39880
  8161 ms     | 0x2569 PK11_DeriveWithTemplate()
  8161 ms  0x2569 ret:0x7f305bb39480
  8161 ms  0x2569 SECKEY_DestroyPrivateKey()
  8161 ms  0x2569 privk:0x7f305ba42020::7f305ba42020  d0 b8 ab 5b                                      ...[
  8161 ms  0x2569 privk:0x7f305ba42020::7f305ba42020  e5 e5 e5 e5                                      ....
  8161 ms  0x2569 PK11_Encrypt()
  8161 ms  0x2569 symkey:0x7f305bb39980
           /* TID 0x2609 */
  8193 ms  0x2609 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8194 ms  0x2609 ret:0x0
  8194 ms  0x2609 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8194 ms  0x2609 ret:0x0
           /* TID 0x2571 */
  8194 ms  0x2571 PR_Close()
  8194 ms  0x2571 fd:0x7f305bac0d90
           /* TID 0x2569 */
  8196 ms  0x2569 SSL_AuthCertificateComplete()
  8196 ms  0x2569 fd:0x7f305baf7160
  8196 ms  0x2569 err:0x0
  8197 ms  0x2569 PK11_Encrypt()
  8197 ms  0x2569 symkey:0x7f305bb39980
  8197 ms  0x2569 PK11_Encrypt()
  8197 ms  0x2569 symkey:0x7f305bb39980
  8203 ms  0x2569 PK11_Encrypt()
  8203 ms  0x2569 symkey:0x7f304a7e2880
  8204 ms  0x2569 PK11_Encrypt()
  8204 ms  0x2569 symkey:0x7f305ccac880
  8205 ms  0x2569 SSL_ImportFD()
  8205 ms  0x2569 ret:0x7f305baf76d0
  8206 ms  0x2569 SSL_AuthCertificateHook()
  8206 ms  0x2569 fd:0x7f305baf76d0
  8206 ms  0x2569 ret:0x0
  8206 ms  0x2569 PR_Connect()
  8206 ms  0x2569 fd:0x7f305baf76d0
  8220 ms  0x2569 SECKEY_DestroyPrivateKey()
  8220 ms  0x2569 privk:0x7f304a858020::7f304a858020  d0 93 8e 4a                                      ...J
  8220 ms  0x2569 privk:0x7f304a858020::7f304a858020  e5 e5 e5 e5                                      ....
  8220 ms  0x2569 SECKEY_DestroyPrivateKey()
  8220 ms  0x2569 privk:0x7f304a852820::7f304a852820  60 4f ad 4a                                      `O.J
  8220 ms  0x2569 privk:0x7f304a852820::7f304a852820  e5 e5 e5 e5                                      ....
  8220 ms  0x2569 PK11_Encrypt()
  8220 ms  0x2569 symkey:0x7f305bb39980
           /* TID 0x2571 */
  8246 ms  0x2571 PR_Close()
  8246 ms  0x2571 fd:0x7f304aaece20
           /* TID 0x2569 */
  8257 ms  0x2569 SSL_ImportFD()
  8257 ms  0x2569 ret:0x7f305baf7d00
  8257 ms  0x2569 SSL_AuthCertificateHook()
  8257 ms  0x2569 fd:0x7f305baf7d00
  8257 ms  0x2569 ret:0x0
  8257 ms  0x2569 PR_Connect()
  8257 ms  0x2569 fd:0x7f305baf7d00
           /* TID 0x2571 */
  8262 ms  0x2571 PR_Close()
  8262 ms  0x2571 fd:0x7f304aaab190
           /* TID 0x2569 */
  8265 ms  0x2569 SECKEY_CreateECPrivateKey()
  8265 ms  0x2569 cx:0x7f304a650988
  8265 ms     | 0x2569 EC_ValidatePublicKey()
  8265 ms     | 0x2569 ret:0x0
  8265 ms  0x2569 ret:0x7f304a854020::7f304a854020  50 91 ae 4a                                      P..J
  8266 ms  0x2569 SECKEY_CreateECPrivateKey()
  8266 ms  0x2569 cx:0x7f304a650988
  8266 ms     | 0x2569 EC_ValidatePublicKey()
  8268 ms     | 0x2569 ret:0x0
  8268 ms  0x2569 ret:0x7f304a918820::7f304a918820  00 b6 ab 5b                                      ...[
           /* TID 0x2571 */
  8278 ms  0x2571 PR_Close()
  8278 ms  0x2571 fd:0x7f305baf7fa0
           /* TID 0x2569 */
  8283 ms  0x2569 SECKEY_CreateECPrivateKey()
  8283 ms  0x2569 cx:0x7f304a650b28
  8283 ms     | 0x2569 EC_ValidatePublicKey()
  8283 ms     | 0x2569 ret:0x0
  8284 ms  0x2569 ret:0x7f305ba44820::7f305ba44820  c0 b9 ab 5b                                      ...[
  8284 ms  0x2569 SECKEY_CreateECPrivateKey()
  8284 ms  0x2569 cx:0x7f304a650b28
  8284 ms     | 0x2569 EC_ValidatePublicKey()
  8286 ms     | 0x2569 ret:0x0
  8286 ms  0x2569 ret:0x7f305ba47020::7f305ba47020  f0 bb ab 5b                                      ...[
  8326 ms  0x2569 SSL_ImportFD()
  8326 ms  0x2569 ret:0x7f305bac0ee0
  8326 ms  0x2569 SSL_AuthCertificateHook()
  8326 ms  0x2569 fd:0x7f305bac0ee0
  8326 ms  0x2569 ret:0x0
  8326 ms  0x2569 PR_Connect()
  8326 ms  0x2569 fd:0x7f305bac0ee0
           /* TID 0x25cf */
  8329 ms  0x25cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8329 ms  0x25cf ret:0x0
           /* TID 0x2569 */
  8336 ms  0x2569 SSL_AuthCertificateComplete()
  8336 ms  0x2569 fd:0x7f305baf76d0
  8336 ms  0x2569 err:0x0
           /* TID 0x2609 */
  8341 ms  0x2609 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8341 ms  0x2609 ret:0x0
           /* TID 0x2569 */
  8342 ms  SECKEY_ECParamsToKeySize()
  8342 ms  0x2569 ret:0x100
  8342 ms  0x2569 SECKEY_CreateECPrivateKey()
  8342 ms  0x2569 cx:0x7f304a650b28
  8344 ms     | 0x2569 EC_ValidatePublicKey()
  8347 ms     | 0x2569 ret:0x0
  8349 ms  0x2569 ret:0x7f30603a1820::7f30603a1820  70 a4 af 5b                                      p..[
  8349 ms  0x2569 PK11_PubDeriveWithKDF()
  8349 ms  0x2569 seckey:0x7f30603a1820
  8349 ms     | 0x2569 EC_ValidatePublicKey()
  8351 ms     | 0x2569 ret:0x0
  8358 ms  0x2569 ret:0x7f305bb39900
  8358 ms  0x2569 PK11_DeriveWithFlags()
  8358 ms  0x2569 basekey:0x7f305bb39900
  8358 ms     | 0x2569 PK11_DeriveWithTemplate()
  8358 ms  0x2569 ret:0x7f305bb39400
  8358 ms  0x2569 PK11_Derive()
  8358 ms  0x2569 basekey:0x7f305bb39400
  8358 ms     | 0x2569 PK11_DeriveWithTemplate()
  8358 ms  0x2569 ret:0x7f305bafc700
  8358 ms  0x2569 SECKEY_DestroyPrivateKey()
  8358 ms  0x2569 privk:0x7f30603a1820::7f30603a1820  70 a4 af 5b                                      p..[
  8360 ms  0x2569 privk:0x7f30603a1820::7f30603a1820  e5 e5 e5 e5                                      ....
  8361 ms  0x2569 PK11_Encrypt()
  8361 ms  0x2569 symkey:0x7f305bb39500
  8361 ms  0x2569 SSL_AuthCertificateComplete()
  8361 ms  0x2569 fd:0x7f305baf7d00
  8361 ms  0x2569 err:0x0
  8361 ms  0x2569 PK11_Encrypt()
  8361 ms  0x2569 symkey:0x7f305bb39500
  8364 ms  0x2569 PK11_Encrypt()
  8364 ms  0x2569 symkey:0x7f305bb39500
  8384 ms  0x2569 SECKEY_CreateECPrivateKey()
  8384 ms  0x2569 cx:0x7f305bbd32c8
  8384 ms     | 0x2569 EC_ValidatePublicKey()
  8384 ms     | 0x2569 ret:0x0
  8384 ms  0x2569 ret:0x7f3060cd9820::7f3060cd9820  80 a8 af 5b                                      ...[
  8384 ms  0x2569 SECKEY_CreateECPrivateKey()
  8384 ms  0x2569 cx:0x7f305bbd32c8
  8385 ms     | 0x2569 EC_ValidatePublicKey()
  8387 ms     | 0x2569 ret:0x0
  8387 ms  0x2569 ret:0x7f3061520020::7f3061520020  00 a6 af 5b                                      ...[
  8387 ms  SECKEY_ECParamsToKeySize()
  8387 ms  0x2569 ret:0x100
  8388 ms  0x2569 SECKEY_CreateECPrivateKey()
  8388 ms  0x2569 cx:0x7f304a650988
  8388 ms     | 0x2569 EC_ValidatePublicKey()
  8390 ms     | 0x2569 ret:0x0
  8390 ms  0x2569 ret:0x7f3061525020::7f3061525020  e0 ac af 5b                                      ...[
  8390 ms  0x2569 PK11_PubDeriveWithKDF()
  8390 ms  0x2569 seckey:0x7f3061525020
  8390 ms     | 0x2569 EC_ValidatePublicKey()
  8392 ms     | 0x2569 ret:0x0
  8393 ms  0x2569 ret:0x7f305bb39900
  8393 ms  0x2569 PK11_DeriveWithFlags()
  8393 ms  0x2569 basekey:0x7f305bb39900
  8393 ms     | 0x2569 PK11_DeriveWithTemplate()
  8393 ms  0x2569 ret:0x7f305bb38700
  8393 ms  0x2569 PK11_Derive()
  8393 ms  0x2569 basekey:0x7f305bb38700
  8393 ms     | 0x2569 PK11_DeriveWithTemplate()
  8393 ms  0x2569 ret:0x7f305bbf0180
  8393 ms  0x2569 SECKEY_DestroyPrivateKey()
  8393 ms  0x2569 privk:0x7f3061525020::7f3061525020  e0 ac af 5b                                      ...[
  8393 ms  0x2569 privk:0x7f3061525020::7f3061525020  e5 e5 e5 e5                                      ....
  8393 ms  0x2569 PK11_Encrypt()
  8393 ms  0x2569 symkey:0x7f305bfbc080
  8394 ms  0x2569 SECKEY_DestroyPrivateKey()
  8394 ms  0x2569 privk:0x7f305ba47020::7f305ba47020  f0 bb ab 5b                                      ...[
  8394 ms  0x2569 privk:0x7f305ba47020::7f305ba47020  e5 e5 e5 e5                                      ....
  8394 ms  0x2569 SECKEY_DestroyPrivateKey()
  8394 ms  0x2569 privk:0x7f305ba44820::7f305ba44820  c0 b9 ab 5b                                      ...[
  8394 ms  0x2569 privk:0x7f305ba44820::7f305ba44820  e5 e5 e5 e5                                      ....
  8394 ms  0x2569 PK11_Encrypt()
  8394 ms  0x2569 symkey:0x7f305bb39500
  8395 ms  0x2569 PK11_Encrypt()
  8395 ms  0x2569 symkey:0x7f305bfbc080
  8406 ms  0x2569 SSL_ImportFD()
  8406 ms  0x2569 ret:0x7f305baf7df0
  8406 ms  0x2569 SSL_AuthCertificateHook()
  8406 ms  0x2569 fd:0x7f305baf7df0
  8406 ms  0x2569 ret:0x0
  8406 ms  0x2569 PR_Connect()
  8406 ms  0x2569 fd:0x7f305baf7df0
           /* TID 0x2571 */
  8414 ms  0x2571 PR_Close()
  8414 ms  0x2571 fd:0x7f304a739cd0
           /* TID 0x2569 */
  8451 ms  SECKEY_ECParamsToKeySize()
  8451 ms  0x2569 ret:0x100
  8451 ms  0x2569 SECKEY_CreateECPrivateKey()
  8451 ms  0x2569 cx:0x7f305bbd32c8
  8452 ms     | 0x2569 EC_ValidatePublicKey()
  8456 ms     | 0x2569 ret:0x0
  8457 ms  0x2569 ret:0x7f306153e020::7f306153e020  40 b2 b3 5b                                      @..[
  8457 ms  0x2569 PK11_PubDeriveWithKDF()
  8457 ms  0x2569 seckey:0x7f306153e020
  8457 ms     | 0x2569 EC_ValidatePublicKey()
  8462 ms     | 0x2569 ret:0x0
  8466 ms  0x2569 ret:0x7f305bb39900
  8466 ms  0x2569 PK11_DeriveWithFlags()
  8466 ms  0x2569 basekey:0x7f305bb39900
  8466 ms     | 0x2569 PK11_DeriveWithTemplate()
  8466 ms  0x2569 ret:0x7f304a9ff580
  8466 ms  0x2569 PK11_Derive()
  8466 ms  0x2569 basekey:0x7f304a9ff580
  8466 ms     | 0x2569 PK11_DeriveWithTemplate()
  8466 ms  0x2569 ret:0x7f305bff7800
  8466 ms  0x2569 SECKEY_DestroyPrivateKey()
  8466 ms  0x2569 privk:0x7f306153e020::7f306153e020  40 b2 b3 5b                                      @..[
  8467 ms  0x2569 privk:0x7f306153e020::7f306153e020  e5 e5 e5 e5                                      ....
  8467 ms  0x2569 PK11_Encrypt()
  8467 ms  0x2569 symkey:0x7f305bff7c00
  8468 ms  0x2569 SECKEY_DestroyPrivateKey()
  8468 ms  0x2569 privk:0x7f304a918820::7f304a918820  00 b6 ab 5b                                      ...[
  8468 ms  0x2569 privk:0x7f304a918820::7f304a918820  e5 e5 e5 e5                                      ....
  8468 ms  0x2569 SECKEY_DestroyPrivateKey()
  8468 ms  0x2569 privk:0x7f304a854020::7f304a854020  50 91 ae 4a                                      P..J
  8468 ms  0x2569 privk:0x7f304a854020::7f304a854020  e5 e5 e5 e5                                      ....
  8469 ms  0x2569 PR_Connect()
  8469 ms  0x2569 fd:0x7f305bbc7a90
  8554 ms  0x2569 SECKEY_CreateECPrivateKey()
  8554 ms  0x2569 cx:0x7f305bbd3c88
  8555 ms     | 0x2569 EC_ValidatePublicKey()
  8555 ms     | 0x2569 ret:0x0
  8555 ms  0x2569 ret:0x7f304a856020::7f304a856020  30 b8 ab 5b                                      0..[
  8555 ms  0x2569 SECKEY_CreateECPrivateKey()
  8555 ms  0x2569 cx:0x7f305bbd3c88
  8556 ms     | 0x2569 EC_ValidatePublicKey()
  8559 ms     | 0x2569 ret:0x0
  8559 ms  0x2569 ret:0x7f306152d820::7f306152d820  00 9b ae 4a                                      ...J
  8617 ms  0x2569 PK11_Encrypt()
  8617 ms  0x2569 symkey:0x7f305bfbc080
  8619 ms  0x2569 SSL_ImportFD()
  8619 ms  0x2569 ret:0x7f305cc03760
  8619 ms  0x2569 SSL_AuthCertificateHook()
  8619 ms  0x2569 fd:0x7f305cc03760
  8619 ms  0x2569 ret:0x0
  8620 ms  0x2569 PK11_Encrypt()
  8620 ms  0x2569 symkey:0x7f305bb39500
  8621 ms  0x2569 PR_Connect()
  8621 ms  0x2569 fd:0x7f305cc03760
  8647 ms  0x2569 SECKEY_CreateECPrivateKey()
  8647 ms  0x2569 cx:0x7f305bbd4e68
  8648 ms     | 0x2569 EC_ValidatePublicKey()
  8648 ms     | 0x2569 ret:0x0
  8648 ms  0x2569 ret:0x7f30616a6820::7f30616a6820  90 c2 be 5b                                      ...[
  8648 ms  0x2569 SECKEY_CreateECPrivateKey()
  8648 ms  0x2569 cx:0x7f305bbd4e68
  8649 ms     | 0x2569 EC_ValidatePublicKey()
  8652 ms     | 0x2569 ret:0x0
  8652 ms  0x2569 ret:0x7f3061bcc020::7f3061bcc020  a0 66 d3 5b                                      .f.[
           /* TID 0x2571 */
  8656 ms  0x2571 PR_Close()
  8656 ms  0x2571 fd:0x7f305bb64eb0
           /* TID 0x2569 */
  8677 ms  0x2569 PK11_Encrypt()
  8677 ms  0x2569 symkey:0x7f305bb39500
  8703 ms  SECKEY_ECParamsToKeySize()
  8703 ms  0x2569 ret:0x100
  8704 ms  0x2569 SECKEY_CreateECPrivateKey()
  8704 ms  0x2569 cx:0x7f305bbd3c88
  8704 ms     | 0x2569 EC_ValidatePublicKey()
  8706 ms     | 0x2569 ret:0x0
  8706 ms  0x2569 ret:0x7f3061bdc820::7f3061bdc820  60 10 87 5c                                      `..\
  8706 ms  0x2569 PK11_PubDeriveWithKDF()
  8706 ms  0x2569 seckey:0x7f3061bdc820
  8706 ms     | 0x2569 EC_ValidatePublicKey()
  8707 ms     | 0x2569 ret:0x0
  8711 ms  0x2569 ret:0x7f305bb39900
  8711 ms  0x2569 PK11_DeriveWithFlags()
  8711 ms  0x2569 basekey:0x7f305bb39900
  8711 ms     | 0x2569 PK11_DeriveWithTemplate()
  8711 ms  0x2569 ret:0x7f305cc1f300
  8711 ms  0x2569 PK11_Derive()
  8711 ms  0x2569 basekey:0x7f305cc1f300
  8711 ms     | 0x2569 PK11_DeriveWithTemplate()
  8711 ms  0x2569 ret:0x7f305cc1f680
  8711 ms  0x2569 SECKEY_DestroyPrivateKey()
  8711 ms  0x2569 privk:0x7f3061bdc820::7f3061bdc820  60 10 87 5c                                      `..\
  8711 ms  0x2569 privk:0x7f3061bdc820::7f3061bdc820  e5 e5 e5 e5                                      ....
  8711 ms  0x2569 PK11_Encrypt()
  8711 ms  0x2569 symkey:0x7f305cc1f800
  8712 ms  SECKEY_ECParamsToKeySize()
  8712 ms  0x2569 ret:0x100
  8712 ms  0x2569 SECKEY_CreateECPrivateKey()
  8712 ms  0x2569 cx:0x7f305bbd4e68
  8713 ms     | 0x2569 EC_ValidatePublicKey()
  8714 ms     | 0x2569 ret:0x0
  8714 ms  0x2569 ret:0x7f3061c15820::7f3061c15820  a0 16 87 5c                                      ...\
  8714 ms  0x2569 PK11_PubDeriveWithKDF()
  8714 ms  0x2569 seckey:0x7f3061c15820
  8714 ms     | 0x2569 EC_ValidatePublicKey()
  8716 ms     | 0x2569 ret:0x0
  8717 ms  0x2569 ret:0x7f305bb39900
  8717 ms  0x2569 PK11_DeriveWithFlags()
  8717 ms  0x2569 basekey:0x7f305bb39900
  8717 ms     | 0x2569 PK11_DeriveWithTemplate()
  8717 ms  0x2569 ret:0x7f305cc1f900
  8717 ms  0x2569 PK11_Derive()
  8717 ms  0x2569 basekey:0x7f305cc1f900
  8717 ms     | 0x2569 PK11_DeriveWithTemplate()
  8717 ms  0x2569 ret:0x7f305cc1f980
  8717 ms  0x2569 SECKEY_DestroyPrivateKey()
  8717 ms  0x2569 privk:0x7f3061c15820::7f3061c15820  a0 16 87 5c                                      ...\
  8717 ms  0x2569 privk:0x7f3061c15820::7f3061c15820  e5 e5 e5 e5                                      ....
  8718 ms  0x2569 PK11_Encrypt()
  8718 ms  0x2569 symkey:0x7f305cc1fb80
           /* TID 0x260d */
  8719 ms  0x260d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8719 ms  0x260d ret:0x0
           /* TID 0x2569 */
  8719 ms  0x2569 SSL_AuthCertificateComplete()
  8719 ms  0x2569 fd:0x7f305cc03760
  8719 ms  0x2569 err:0x0
           /* TID 0x2571 */
  8732 ms  0x2571 PR_Close()
  8732 ms  0x2571 fd:0x7f305bac0eb0
           /* TID 0x2569 */
  8732 ms  0x2569 PK11_Encrypt()
  8732 ms  0x2569 symkey:0x7f305cc1fb80
  8743 ms  0x2569 SECKEY_DestroyPrivateKey()
  8743 ms  0x2569 privk:0x7f3061bcc020::7f3061bcc020  a0 66 d3 5b                                      .f.[
  8743 ms  0x2569 privk:0x7f3061bcc020::7f3061bcc020  e5 e5 e5 e5                                      ....
  8743 ms  0x2569 SECKEY_DestroyPrivateKey()
  8743 ms  0x2569 privk:0x7f30616a6820::7f30616a6820  90 c2 be 5b                                      ...[
  8744 ms  0x2569 privk:0x7f30616a6820::7f30616a6820  e5 e5 e5 e5                                      ....
  8744 ms  0x2569 PR_Close()
  8744 ms  0x2569 fd:0x7f305cc03760
  8744 ms     | 0x2569 PK11_Encrypt()
  8744 ms     | 0x2569 symkey:0x7f305cc1fb80
           /* TID 0x2571 */
  8745 ms  0x2571 PR_Close()
  8745 ms  0x2571 fd:0x7f305baf71f0
           /* TID 0x2609 */
  8745 ms  0x2609 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8745 ms  0x2609 ret:0x0
           /* TID 0x2569 */
  8764 ms  0x2569 SSL_AuthCertificateComplete()
  8764 ms  0x2569 fd:0x7f305baf7df0
  8764 ms  0x2569 err:0x0
  8764 ms  0x2569 PK11_Encrypt()
  8764 ms  0x2569 symkey:0x7f305cc1f800
  8854 ms  0x2569 SECKEY_DestroyPrivateKey()
  8854 ms  0x2569 privk:0x7f306152d820::7f306152d820  00 9b ae 4a                                      ...J
  8854 ms  0x2569 privk:0x7f306152d820::7f306152d820  e5 e5 e5 e5                                      ....
  8854 ms  0x2569 SECKEY_DestroyPrivateKey()
  8854 ms  0x2569 privk:0x7f304a856020::7f304a856020  30 b8 ab 5b                                      0..[
  8854 ms  0x2569 privk:0x7f304a856020::7f304a856020  e5 e5 e5 e5                                      ....
           /* TID 0x2571 */
  8861 ms  0x2571 PR_Close()
  8861 ms  0x2571 fd:0x7f305bb64d30
           /* TID 0x25cf */
  8862 ms  0x25cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8863 ms  0x25cf ret:0x0
  8863 ms  0x25cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8863 ms  0x25cf ret:0x0
           /* TID 0x2569 */
  8866 ms  0x2569 PR_Close()
  8866 ms  0x2569 fd:0x7f305bbc7a90
  8876 ms  0x2569 SSL_AuthCertificateComplete()
  8876 ms  0x2569 fd:0x7f305bac0ee0
  8876 ms  0x2569 err:0x0
  8877 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  8877 ms     | 0x2569 privk:0x7f3061520020::7f3061520020  00 a6 af 5b                                      ...[
  8877 ms     | 0x2569 privk:0x7f3061520020::7f3061520020  e5 e5 e5 e5                                      ....
  8877 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  8877 ms     | 0x2569 privk:0x7f3060cd9820::7f3060cd9820  80 a8 af 5b                                      ...[
  8877 ms     | 0x2569 privk:0x7f3060cd9820::7f3060cd9820  e5 e5 e5 e5                                      ....
  8878 ms  0x2569 PK11_Encrypt()
  8878 ms  0x2569 symkey:0x7f305bff7c00
           /* TID 0x2571 */
  8942 ms  0x2571 PR_Close()
  8942 ms  0x2571 fd:0x7f305baf7970
           /* TID 0x2569 */
  8967 ms  0x2569 SSL_ImportFD()
  8967 ms  0x2569 ret:0x7f305cc03c70
  8967 ms  0x2569 SSL_AuthCertificateHook()
  8967 ms  0x2569 fd:0x7f305cc03c70
  8967 ms  0x2569 ret:0x0
  8968 ms  0x2569 PR_Connect()
  8968 ms  0x2569 fd:0x7f305cc03c70
  9006 ms  0x2569 SECKEY_CreateECPrivateKey()
  9006 ms  0x2569 cx:0x7f305bbd4e68
  9006 ms     | 0x2569 EC_ValidatePublicKey()
  9006 ms     | 0x2569 ret:0x0
  9006 ms  0x2569 ret:0x7f30603ad820::7f30603ad820  80 a8 af 5b                                      ...[
  9006 ms  0x2569 SECKEY_CreateECPrivateKey()
  9006 ms  0x2569 cx:0x7f305bbd4e68
  9007 ms     | 0x2569 EC_ValidatePublicKey()
  9009 ms     | 0x2569 ret:0x0
  9009 ms  0x2569 ret:0x7f3060cda820::7f3060cda820  50 a6 af 5b                                      P..[
  9065 ms  0x2569 PK11_Derive()
  9065 ms  0x2569 basekey:0x7f305cc1f980
  9065 ms     | 0x2569 PK11_DeriveWithTemplate()
  9065 ms  0x2569 ret:0x7f305cc1f900
  9065 ms  0x2569 PK11_PubDeriveWithKDF()
  9065 ms  0x2569 seckey:0x7f30603ad820
  9065 ms     | 0x2569 EC_ValidatePublicKey()
  9066 ms     | 0x2569 ret:0x0
  9067 ms  0x2569 ret:0x7f305cc1f980
  9067 ms  SECKEY_ECParamsToKeySize()
  9067 ms  0x2569 ret:0xff
  9067 ms  0x2569 PK11_DeriveWithFlags()
  9067 ms  0x2569 basekey:0x7f305cc1f900
  9067 ms     | 0x2569 PK11_DeriveWithTemplate()
  9067 ms  0x2569 ret:0x7f305bb39900
  9067 ms  0x2569 PK11_Derive()
  9067 ms  0x2569 basekey:0x7f305cc1f980
  9067 ms     | 0x2569 PK11_DeriveWithTemplate()
  9068 ms  0x2569 ret:0x7f305cc1fa80
  9068 ms  0x2569 PK11_DeriveWithFlags()
  9068 ms  0x2569 basekey:0x7f305cc1fa80
  9068 ms     | 0x2569 PK11_DeriveWithTemplate()
  9068 ms  0x2569 ret:0x7f305cc1f900
  9068 ms  0x2569 PK11_DeriveWithFlags()
  9068 ms  0x2569 basekey:0x7f305cc1fa80
  9068 ms     | 0x2569 PK11_DeriveWithTemplate()
  9068 ms  0x2569 ret:0x7f305cc1f980
  9068 ms  0x2569 PK11_DeriveWithFlags()
  9068 ms  0x2569 basekey:0x7f305cc1fa80
  9068 ms     | 0x2569 PK11_DeriveWithTemplate()
  9068 ms  0x2569 ret:0x7f305bb39900
  9068 ms  0x2569 PK11_Derive()
  9068 ms  0x2569 basekey:0x7f305cc1fc00
  9068 ms     | 0x2569 PK11_DeriveWithTemplate()
  9068 ms  0x2569 ret:0x7f305cc1fa00
  9068 ms  0x2569 PK11_DeriveWithFlags()
  9068 ms  0x2569 basekey:0x7f305cc1f980
  9068 ms     | 0x2569 PK11_DeriveWithTemplate()
  9068 ms  0x2569 ret:0x7f305cc1fa80
  9068 ms  0x2569 PK11_DeriveWithFlags()
  9068 ms  0x2569 basekey:0x7f305cc1f980
  9069 ms     | 0x2569 PK11_DeriveWithTemplate()
  9069 ms  0x2569 ret:0x7f305bb39900
  9072 ms  0x2569 PK11_DeriveWithFlags()
  9072 ms  0x2569 basekey:0x7f305cc1f980
  9072 ms     | 0x2569 PK11_DeriveWithTemplate()
  9072 ms  0x2569 ret:0x7f305bb39900
  9102 ms  0x2569 SSL_ImportFD()
  9102 ms  0x2569 ret:0x7f305ccf93d0
  9102 ms  0x2569 SSL_AuthCertificateHook()
  9102 ms  0x2569 fd:0x7f305ccf93d0
  9102 ms  0x2569 ret:0x0
  9103 ms  0x2569 PR_Connect()
  9103 ms  0x2569 fd:0x7f305ccf93d0
  9103 ms  0x2569 SSL_ImportFD()
  9103 ms  0x2569 ret:0x7f305ccf95b0
  9103 ms  0x2569 SSL_AuthCertificateHook()
  9103 ms  0x2569 fd:0x7f305ccf95b0
  9103 ms  0x2569 ret:0x0
  9105 ms  0x2569 PR_Connect()
  9105 ms  0x2569 fd:0x7f305ccf95b0
  9106 ms  0x2569 SSL_ImportFD()
  9106 ms  0x2569 ret:0x7f305ccf96a0
  9106 ms  0x2569 SSL_AuthCertificateHook()
  9106 ms  0x2569 fd:0x7f305ccf96a0
  9106 ms  0x2569 ret:0x0
  9106 ms  0x2569 PR_Connect()
  9106 ms  0x2569 fd:0x7f305ccf96a0
  9145 ms  0x2569 SECKEY_CreateECPrivateKey()
  9145 ms  0x2569 cx:0x7f3083ca72c8
  9146 ms     | 0x2569 EC_ValidatePublicKey()
  9146 ms     | 0x2569 ret:0x0
  9147 ms  0x2569 ret:0x7f3061bcb820::7f3061bcb820  00 6b d3 5b                                      .k.[
  9147 ms  0x2569 SECKEY_CreateECPrivateKey()
  9147 ms  0x2569 cx:0x7f3083ca72c8
  9148 ms     | 0x2569 EC_ValidatePublicKey()
  9154 ms     | 0x2569 ret:0x0
  9154 ms  0x2569 ret:0x7f3061bd8020::7f3061bd8020  20 14 87 5c                                       ..\
  9156 ms  0x2569 SECKEY_CreateECPrivateKey()
  9156 ms  0x2569 cx:0x7f3083ca84a8
  9157 ms     | 0x2569 EC_ValidatePublicKey()
  9157 ms     | 0x2569 ret:0x0
  9157 ms  0x2569 ret:0x7f3061c0c020::7f3061c0c020  50 16 87 5c                                      P..\
  9158 ms  0x2569 SECKEY_CreateECPrivateKey()
  9158 ms  0x2569 cx:0x7f3083ca84a8
  9159 ms     | 0x2569 EC_ValidatePublicKey()
  9163 ms     | 0x2569 ret:0x0
  9163 ms  0x2569 ret:0x7f3061c15020::7f3061c15020  50 1b 87 5c                                      P..\
  9164 ms  0x2569 SECKEY_CreateECPrivateKey()
  9164 ms  0x2569 cx:0x7f3065af1e68
  9165 ms     | 0x2569 EC_ValidatePublicKey()
  9165 ms     | 0x2569 ret:0x0
  9165 ms  0x2569 ret:0x7f3061c1b020::7f3061c1b020  90 1c 87 5c                                      ...\
  9165 ms  0x2569 SECKEY_CreateECPrivateKey()
  9165 ms  0x2569 cx:0x7f3065af1e68
  9167 ms     | 0x2569 EC_ValidatePublicKey()
  9169 ms     | 0x2569 ret:0x0
  9169 ms  0x2569 ret:0x7f3061c22020::7f3061c22020  10 1f 87 5c                                      ...\
  9208 ms  0x2569 PK11_Derive()
  9208 ms  0x2569 basekey:0x7f305bb39900
  9208 ms     | 0x2569 PK11_DeriveWithTemplate()
  9208 ms  0x2569 ret:0x7f305cc1fc00
  9208 ms  0x2569 PK11_PubDeriveWithKDF()
  9208 ms  0x2569 seckey:0x7f3061bcb820
  9208 ms     | 0x2569 EC_ValidatePublicKey()
  9208 ms     | 0x2569 ret:0x0
  9209 ms  0x2569 ret:0x7f305bb39900
  9209 ms  SECKEY_ECParamsToKeySize()
  9209 ms  0x2569 ret:0xff
  9209 ms  0x2569 PK11_DeriveWithFlags()
  9209 ms  0x2569 basekey:0x7f305cc1fc00
  9209 ms     | 0x2569 PK11_DeriveWithTemplate()
  9209 ms  0x2569 ret:0x7f305cc1fb80
  9209 ms  0x2569 PK11_Derive()
  9209 ms  0x2569 basekey:0x7f305bb39900
  9209 ms     | 0x2569 PK11_DeriveWithTemplate()
  9209 ms  0x2569 ret:0x7f305bbefd00
  9209 ms  0x2569 PK11_DeriveWithFlags()
  9209 ms  0x2569 basekey:0x7f305bbefd00
  9209 ms     | 0x2569 PK11_DeriveWithTemplate()
  9209 ms  0x2569 ret:0x7f305cc1fc00
  9209 ms  0x2569 PK11_DeriveWithFlags()
  9209 ms  0x2569 basekey:0x7f305bbefd00
  9209 ms     | 0x2569 PK11_DeriveWithTemplate()
  9209 ms  0x2569 ret:0x7f305bb39900
  9209 ms  0x2569 PK11_DeriveWithFlags()
  9209 ms  0x2569 basekey:0x7f305bbefd00
  9209 ms     | 0x2569 PK11_DeriveWithTemplate()
  9209 ms  0x2569 ret:0x7f305cc1fb80
  9209 ms  0x2569 PK11_Derive()
  9209 ms  0x2569 basekey:0x7f305ccf5980
  9209 ms     | 0x2569 PK11_DeriveWithTemplate()
  9209 ms  0x2569 ret:0x7f305ccf5b80
  9209 ms  0x2569 PK11_DeriveWithFlags()
  9209 ms  0x2569 basekey:0x7f305bb39900
  9209 ms     | 0x2569 PK11_DeriveWithTemplate()
  9209 ms  0x2569 ret:0x7f305bbefd00
  9209 ms  0x2569 PK11_DeriveWithFlags()
  9209 ms  0x2569 basekey:0x7f305bb39900
  9209 ms     | 0x2569 PK11_DeriveWithTemplate()
  9209 ms  0x2569 ret:0x7f305cc1fb80
  9211 ms  SECKEY_ECParamsToKeySize()
  9211 ms  0x2569 ret:0x100
  9211 ms  SECKEY_ECParamsToBasePointOrderLen()
  9211 ms  0x2569 ret:0x100
  9211 ms  SECKEY_ECParamsToBasePointOrderLen()
  9211 ms  0x2569 ret:0x100
  9211 ms  0x2569 EC_ValidatePublicKey()
  9213 ms  0x2569 ret:0x0
  9217 ms  0x2569 PK11_DeriveWithFlags()
  9217 ms  0x2569 basekey:0x7f305bb39900
  9217 ms     | 0x2569 PK11_DeriveWithTemplate()
  9217 ms  0x2569 ret:0x7f305cc1fb80
           /* TID 0x260d */
  9218 ms  0x260d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9218 ms  0x260d ret:0x0
           /* TID 0x2571 */
  9218 ms  0x2571 PR_Close()
  9218 ms  0x2571 fd:0x7f305cf113d0
           /* TID 0x2569 */
  9219 ms  0x2569 SSL_AuthCertificateComplete()
  9219 ms  0x2569 fd:0x7f305cc03c70
  9219 ms  0x2569 err:0x0
  9219 ms     | 0x2569 PK11_DeriveWithFlags()
  9219 ms     | 0x2569 basekey:0x7f305cc1fa00
  9219 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9219 ms     | 0x2569 ret:0x7f305cc1fb80
  9219 ms     | 0x2569 PK11_DeriveWithFlags()
  9219 ms     | 0x2569 basekey:0x7f305cc1fa00
  9219 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9219 ms     | 0x2569 ret:0x7f305ccf5980
  9219 ms     | 0x2569 PK11_DeriveWithFlags()
  9219 ms     | 0x2569 basekey:0x7f305cc1fa00
  9219 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9219 ms     | 0x2569 ret:0x7f305bb66a00
  9219 ms     | 0x2569 PK11_DeriveWithFlags()
  9219 ms     | 0x2569 basekey:0x7f305cc1f900
  9219 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9219 ms     | 0x2569 ret:0x7f305bbded80
  9219 ms     | 0x2569 PK11_DeriveWithFlags()
  9219 ms     | 0x2569 basekey:0x7f305cc1f900
  9219 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9219 ms     | 0x2569 ret:0x7f305bbef380
  9219 ms     | 0x2569 PK11_DeriveWithFlags()
  9219 ms     | 0x2569 basekey:0x7f305ccf5980
  9219 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9219 ms     | 0x2569 ret:0x7f305bbef380
  9219 ms     | 0x2569 PK11_DeriveWithFlags()
  9219 ms     | 0x2569 basekey:0x7f305ccf5980
  9219 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9219 ms     | 0x2569 ret:0x7f305ccf6400
  9219 ms     | 0x2569 PK11_DeriveWithFlags()
  9219 ms     | 0x2569 basekey:0x7f305cc1f900
  9219 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9219 ms     | 0x2569 ret:0x7f305cc1fa80
  9219 ms     | 0x2569 PK11_Encrypt()
  9219 ms     | 0x2569 symkey:0x7f305bbded80
  9219 ms     | 0x2569 PK11_DeriveWithFlags()
  9219 ms     | 0x2569 basekey:0x7f305cc1fb80
  9219 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9219 ms     | 0x2569 ret:0x7f305cc1fa80
  9219 ms     | 0x2569 PK11_DeriveWithFlags()
  9219 ms     | 0x2569 basekey:0x7f305cc1fb80
  9220 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9220 ms     | 0x2569 ret:0x7f305ccf6400
  9220 ms     | 0x2569 PK11_DeriveWithFlags()
  9220 ms     | 0x2569 basekey:0x7f305cc1fa00
  9220 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9220 ms     | 0x2569 ret:0x7f305bbded80
  9220 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  9220 ms     | 0x2569 privk:0x7f3060cda820::7f3060cda820  50 a6 af 5b                                      P..[
  9220 ms     | 0x2569 privk:0x7f3060cda820::7f3060cda820  e5 e5 e5 e5                                      ....
  9220 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  9220 ms     | 0x2569 privk:0x7f30603ad820::7f30603ad820  80 a8 af 5b                                      ...[
  9220 ms     | 0x2569 privk:0x7f30603ad820::7f30603ad820  e5 e5 e5 e5                                      ....
  9220 ms  0x2569 PK11_Encrypt()
  9220 ms  0x2569 symkey:0x7f305cc1fa80
  9221 ms  0x2569 PK11_Encrypt()
  9221 ms  0x2569 symkey:0x7f305cc1fa80
  9222 ms  0x2569 PK11_Derive()
  9222 ms  0x2569 basekey:0x7f305cc1f980
  9222 ms     | 0x2569 PK11_DeriveWithTemplate()
  9222 ms  0x2569 ret:0x7f305cc1f900
  9222 ms  0x2569 PK11_PubDeriveWithKDF()
  9222 ms  0x2569 seckey:0x7f3061c0c020
  9222 ms     | 0x2569 EC_ValidatePublicKey()
  9222 ms     | 0x2569 ret:0x0
  9222 ms  0x2569 ret:0x7f305cc1f980
  9222 ms  SECKEY_ECParamsToKeySize()
  9222 ms  0x2569 ret:0xff
  9222 ms  0x2569 PK11_DeriveWithFlags()
  9222 ms  0x2569 basekey:0x7f305cc1f900
  9222 ms     | 0x2569 PK11_DeriveWithTemplate()
  9222 ms  0x2569 ret:0x7f305cc1fa00
  9222 ms  0x2569 PK11_Derive()
  9222 ms  0x2569 basekey:0x7f305cc1f980
  9222 ms     | 0x2569 PK11_DeriveWithTemplate()
  9222 ms  0x2569 ret:0x7f305ccf6400
  9223 ms  0x2569 PK11_DeriveWithFlags()
  9223 ms  0x2569 basekey:0x7f305ccf6400
  9223 ms     | 0x2569 PK11_DeriveWithTemplate()
  9223 ms  0x2569 ret:0x7f305cc1f900
  9223 ms  0x2569 PK11_DeriveWithFlags()
  9223 ms  0x2569 basekey:0x7f305ccf6400
  9223 ms     | 0x2569 PK11_DeriveWithTemplate()
  9223 ms  0x2569 ret:0x7f305cc1f980
  9223 ms  0x2569 PK11_DeriveWithFlags()
  9223 ms  0x2569 basekey:0x7f305ccf6400
  9223 ms     | 0x2569 PK11_DeriveWithTemplate()
  9223 ms  0x2569 ret:0x7f305cc1fa00
  9223 ms  0x2569 PK11_Derive()
  9223 ms  0x2569 basekey:0x7f305ccf6880
  9223 ms     | 0x2569 PK11_DeriveWithTemplate()
  9223 ms  0x2569 ret:0x7f305ccf6a80
  9223 ms  0x2569 PK11_DeriveWithFlags()
  9223 ms  0x2569 basekey:0x7f305cc1f980
  9223 ms     | 0x2569 PK11_DeriveWithTemplate()
  9223 ms  0x2569 ret:0x7f305ccf6400
  9223 ms  0x2569 PK11_DeriveWithFlags()
  9223 ms  0x2569 basekey:0x7f305cc1f980
  9223 ms     | 0x2569 PK11_DeriveWithTemplate()
  9223 ms  0x2569 ret:0x7f305cc1fa00
  9224 ms  SECKEY_ECParamsToKeySize()
  9224 ms  0x2569 ret:0x100
  9224 ms  SECKEY_ECParamsToBasePointOrderLen()
  9224 ms  0x2569 ret:0x100
  9224 ms  SECKEY_ECParamsToBasePointOrderLen()
  9224 ms  0x2569 ret:0x100
  9224 ms  0x2569 EC_ValidatePublicKey()
  9226 ms  0x2569 ret:0x0
  9229 ms  0x2569 PK11_DeriveWithFlags()
  9229 ms  0x2569 basekey:0x7f305cc1f980
  9229 ms     | 0x2569 PK11_DeriveWithTemplate()
  9229 ms  0x2569 ret:0x7f305cc1fa00
  9229 ms  0x2569 SSL_AuthCertificateComplete()
  9229 ms  0x2569 fd:0x7f305ccf96a0
  9229 ms  0x2569 err:0x0
  9229 ms     | 0x2569 PK11_DeriveWithFlags()
  9229 ms     | 0x2569 basekey:0x7f305ccf6a80
  9229 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9229 ms     | 0x2569 ret:0x7f305cc1fa00
  9229 ms     | 0x2569 PK11_DeriveWithFlags()
  9229 ms     | 0x2569 basekey:0x7f305ccf6a80
  9229 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9229 ms     | 0x2569 ret:0x7f305ccf6880
  9230 ms     | 0x2569 PK11_DeriveWithFlags()
  9230 ms     | 0x2569 basekey:0x7f305ccf6a80
  9230 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9230 ms     | 0x2569 ret:0x7f305ccf6c00
  9230 ms     | 0x2569 PK11_DeriveWithFlags()
  9230 ms     | 0x2569 basekey:0x7f305cc1f900
  9230 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9230 ms     | 0x2569 ret:0x7f305ccf6f80
  9230 ms     | 0x2569 PK11_DeriveWithFlags()
  9230 ms     | 0x2569 basekey:0x7f305cc1f900
  9230 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9230 ms     | 0x2569 ret:0x7f305cf62400
  9230 ms     | 0x2569 PK11_DeriveWithFlags()
  9230 ms     | 0x2569 basekey:0x7f305ccf6880
  9230 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9230 ms     | 0x2569 ret:0x7f305cf62400
  9230 ms     | 0x2569 PK11_DeriveWithFlags()
  9230 ms     | 0x2569 basekey:0x7f305ccf6880
  9230 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9230 ms     | 0x2569 ret:0x7f305cf62480
  9230 ms     | 0x2569 PK11_DeriveWithFlags()
  9230 ms     | 0x2569 basekey:0x7f305cc1f900
  9230 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9230 ms     | 0x2569 ret:0x7f305ccf6400
  9230 ms     | 0x2569 PK11_Encrypt()
  9230 ms     | 0x2569 symkey:0x7f305ccf6f80
  9230 ms     | 0x2569 PK11_DeriveWithFlags()
  9230 ms     | 0x2569 basekey:0x7f305cc1fa00
  9230 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9230 ms     | 0x2569 ret:0x7f305ccf6400
  9230 ms     | 0x2569 PK11_DeriveWithFlags()
  9230 ms     | 0x2569 basekey:0x7f305cc1fa00
  9230 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9230 ms     | 0x2569 ret:0x7f305cf62480
  9230 ms     | 0x2569 PK11_DeriveWithFlags()
  9230 ms     | 0x2569 basekey:0x7f305ccf6a80
  9230 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9230 ms     | 0x2569 ret:0x7f305ccf6f80
  9230 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  9230 ms     | 0x2569 privk:0x7f3061c15020::7f3061c15020  50 1b 87 5c                                      P..\
  9230 ms     | 0x2569 privk:0x7f3061c15020::7f3061c15020  e5 e5 e5 e5                                      ....
  9230 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  9230 ms     | 0x2569 privk:0x7f3061c0c020::7f3061c0c020  50 16 87 5c                                      P..\
  9231 ms     | 0x2569 privk:0x7f3061c0c020::7f3061c0c020  e5 e5 e5 e5                                      ....
  9231 ms  0x2569 PK11_Encrypt()
  9231 ms  0x2569 symkey:0x7f305ccf6400
  9231 ms  0x2569 PK11_Encrypt()
  9231 ms  0x2569 symkey:0x7f305ccf6400
  9233 ms  SECKEY_ECParamsToKeySize()
  9233 ms  0x2569 ret:0x100
  9233 ms  0x2569 SECKEY_CreateECPrivateKey()
  9233 ms  0x2569 cx:0x7f3065af1e68
  9234 ms     | 0x2569 EC_ValidatePublicKey()
  9235 ms     | 0x2569 ret:0x0
  9235 ms  0x2569 ret:0x7f3061d6b020::7f3061d6b020  f0 16 87 5c                                      ...\
  9236 ms  0x2569 PK11_PubDeriveWithKDF()
  9236 ms  0x2569 seckey:0x7f3061d6b020
  9236 ms     | 0x2569 EC_ValidatePublicKey()
  9237 ms     | 0x2569 ret:0x0
  9239 ms  0x2569 ret:0x7f305cc1f980
  9239 ms  0x2569 PK11_DeriveWithFlags()
  9239 ms  0x2569 basekey:0x7f305cc1f980
  9239 ms     | 0x2569 PK11_DeriveWithTemplate()
  9239 ms  0x2569 ret:0x7f305cc1f900
  9239 ms  0x2569 PK11_Derive()
  9239 ms  0x2569 basekey:0x7f305cc1f900
  9239 ms     | 0x2569 PK11_DeriveWithTemplate()
  9239 ms  0x2569 ret:0x7f305ccf6a80
  9239 ms  0x2569 SECKEY_DestroyPrivateKey()
  9239 ms  0x2569 privk:0x7f3061d6b020::7f3061d6b020  f0 16 87 5c                                      ...\
  9239 ms  0x2569 privk:0x7f3061d6b020::7f3061d6b020  e5 e5 e5 e5                                      ....
  9239 ms  0x2569 PK11_Encrypt()
  9239 ms  0x2569 symkey:0x7f305cf63300
  9240 ms  0x2569 PR_Connect()
  9240 ms  0x2569 fd:0x7f305cf3d4f0
  9257 ms  0x2569 PK11_DeriveWithFlags()
  9257 ms  0x2569 basekey:0x7f305bbded80
  9257 ms     | 0x2569 PK11_DeriveWithTemplate()
  9257 ms  0x2569 ret:0x7f305cc1f980
  9257 ms  0x2569 PK11_DeriveWithFlags()
  9257 ms  0x2569 basekey:0x7f305bbded80
  9258 ms     | 0x2569 PK11_DeriveWithTemplate()
  9258 ms  0x2569 ret:0x7f305cc1f980
  9258 ms  0x2569 PK11_Encrypt()
  9258 ms  0x2569 symkey:0x7f305cc1fa80
  9268 ms  0x2569 PK11_DeriveWithFlags()
  9268 ms  0x2569 basekey:0x7f305ccf6f80
  9268 ms     | 0x2569 PK11_DeriveWithTemplate()
  9268 ms  0x2569 ret:0x7f305cc1f980
  9268 ms  0x2569 PK11_DeriveWithFlags()
  9268 ms  0x2569 basekey:0x7f305ccf6f80
  9268 ms     | 0x2569 PK11_DeriveWithTemplate()
  9268 ms  0x2569 ret:0x7f305cc1f980
  9268 ms  0x2569 PK11_Encrypt()
  9268 ms  0x2569 symkey:0x7f305ccf6400
  9285 ms  0x2569 PR_Connect()
  9285 ms  0x2569 fd:0x7f305cf11d60
  9317 ms  0x2569 PK11_Encrypt()
  9317 ms  0x2569 symkey:0x7f305cc1fa80
           /* TID 0x2571 */
  9363 ms  0x2571 PR_Close()
  9363 ms  0x2571 fd:0x7f305baf7970
           /* TID 0x2609 */
  9363 ms  0x2609 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9363 ms  0x2609 ret:0x0
           /* TID 0x2569 */
  9364 ms  0x2569 SSL_AuthCertificateComplete()
  9364 ms  0x2569 fd:0x7f305ccf95b0
  9364 ms  0x2569 err:0x0
  9364 ms     | 0x2569 PK11_DeriveWithFlags()
  9364 ms     | 0x2569 basekey:0x7f305ccf5b80
  9364 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9364 ms     | 0x2569 ret:0x7f305cc1f980
  9364 ms     | 0x2569 PK11_DeriveWithFlags()
  9364 ms     | 0x2569 basekey:0x7f305ccf5b80
  9364 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9364 ms     | 0x2569 ret:0x7f305cf62480
  9365 ms     | 0x2569 PK11_DeriveWithFlags()
  9365 ms     | 0x2569 basekey:0x7f305ccf5b80
  9365 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9365 ms     | 0x2569 ret:0x7f305ccf6000
  9365 ms     | 0x2569 PK11_DeriveWithFlags()
  9365 ms     | 0x2569 basekey:0x7f305cc1fc00
  9365 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9365 ms     | 0x2569 ret:0x7f305ccf6080
  9365 ms     | 0x2569 PK11_DeriveWithFlags()
  9365 ms     | 0x2569 basekey:0x7f305cc1fc00
  9365 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9365 ms     | 0x2569 ret:0x7f305cfa1880
  9365 ms     | 0x2569 PK11_DeriveWithFlags()
  9365 ms     | 0x2569 basekey:0x7f305cf62480
  9365 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9365 ms     | 0x2569 ret:0x7f305cfa1880
  9365 ms     | 0x2569 PK11_DeriveWithFlags()
  9365 ms     | 0x2569 basekey:0x7f305cf62480
  9365 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9365 ms     | 0x2569 ret:0x7f305cfa1900
  9366 ms     | 0x2569 PK11_DeriveWithFlags()
  9366 ms     | 0x2569 basekey:0x7f305cc1fc00
  9366 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9366 ms     | 0x2569 ret:0x7f305bbefd00
  9366 ms     | 0x2569 PK11_Encrypt()
  9366 ms     | 0x2569 symkey:0x7f305ccf6080
  9366 ms     | 0x2569 PK11_DeriveWithFlags()
  9366 ms     | 0x2569 basekey:0x7f305cc1f980
  9366 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9366 ms     | 0x2569 ret:0x7f305bbefd00
  9366 ms     | 0x2569 PK11_DeriveWithFlags()
  9366 ms     | 0x2569 basekey:0x7f305cc1f980
  9366 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9366 ms     | 0x2569 ret:0x7f305cfa1900
  9366 ms     | 0x2569 PK11_DeriveWithFlags()
  9366 ms     | 0x2569 basekey:0x7f305ccf5b80
  9366 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9366 ms     | 0x2569 ret:0x7f305ccf6080
  9367 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  9367 ms     | 0x2569 privk:0x7f3061bd8020::7f3061bd8020  20 14 87 5c                                       ..\
  9367 ms     | 0x2569 privk:0x7f3061bd8020::7f3061bd8020  e5 e5 e5 e5                                      ....
  9367 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  9367 ms     | 0x2569 privk:0x7f3061bcb820::7f3061bcb820  00 6b d3 5b                                      .k.[
  9374 ms     | 0x2569 privk:0x7f3061bcb820::7f3061bcb820  e5 e5 e5 e5                                      ....
  9377 ms  0x2569 PK11_Encrypt()
  9377 ms  0x2569 symkey:0x7f305bbefd00
  9378 ms  0x2569 PK11_Encrypt()
  9378 ms  0x2569 symkey:0x7f305bbefd00
  9379 ms  0x2569 PK11_Encrypt()
  9379 ms  0x2569 symkey:0x7f305cc1f800
           /* TID 0x2571 */
  9404 ms  0x2571 PR_Close()
  9404 ms  0x2571 fd:0x7f305cc03c40
           /* TID 0x2569 */
  9404 ms  0x2569 PK11_Encrypt()
  9404 ms  0x2569 symkey:0x7f305ccf6400
  9404 ms  0x2569 PK11_DeriveWithFlags()
  9404 ms  0x2569 basekey:0x7f305ccf6080
  9404 ms     | 0x2569 PK11_DeriveWithTemplate()
  9404 ms  0x2569 ret:0x7f305bb39900
  9404 ms  0x2569 PK11_DeriveWithFlags()
  9404 ms  0x2569 basekey:0x7f305ccf6080
  9404 ms     | 0x2569 PK11_DeriveWithTemplate()
  9404 ms  0x2569 ret:0x7f305bb39900
  9404 ms  0x2569 PK11_Encrypt()
  9404 ms  0x2569 symkey:0x7f305bbefd00
           /* TID 0x2571 */
  9446 ms  0x2571 PR_Close()
  9446 ms  0x2571 fd:0x7f305bb64040
           /* TID 0x260d */
  9447 ms  0x260d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9447 ms  0x260d ret:0x0
           /* TID 0x2569 */
  9447 ms  0x2569 SSL_AuthCertificateComplete()
  9447 ms  0x2569 fd:0x7f305ccf93d0
  9447 ms  0x2569 err:0x0
  9447 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  9447 ms     | 0x2569 privk:0x7f3061c22020::7f3061c22020  10 1f 87 5c                                      ...\
  9447 ms     | 0x2569 privk:0x7f3061c22020::7f3061c22020  e5 e5 e5 e5                                      ....
  9447 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  9447 ms     | 0x2569 privk:0x7f3061c1b020::7f3061c1b020  90 1c 87 5c                                      ...\
  9447 ms     | 0x2569 privk:0x7f3061c1b020::7f3061c1b020  e5 e5 e5 e5                                      ....
  9447 ms  0x2569 PK11_Encrypt()
  9447 ms  0x2569 symkey:0x7f305cf63300
           /* TID 0x2571 */
  9460 ms  0x2571 PR_Close()
  9460 ms  0x2571 fd:0x7f305cf113d0
  9460 ms  0x2571 PR_Close()
  9460 ms  0x2571 fd:0x7f305cf3d4c0
  9460 ms  0x2571 PR_Close()
  9460 ms  0x2571 fd:0x7f305cf3d5e0
  9460 ms  0x2571 PR_Close()
  9460 ms  0x2571 fd:0x7f305cf3d670
  9460 ms  0x2571 PR_Close()
  9460 ms  0x2571 fd:0x7f305cf3d6d0
  9460 ms  0x2571 PR_Close()
  9460 ms  0x2571 fd:0x7f305cf3d760
  9460 ms  0x2571 PR_Close()
  9460 ms  0x2571 fd:0x7f305cf3da00
  9461 ms  0x2571 PR_Close()
  9461 ms  0x2571 fd:0x7f305cf113d0
  9461 ms  0x2571 PR_Close()
  9461 ms  0x2571 fd:0x7f305cf3d4c0
  9461 ms  0x2571 PR_Close()
  9461 ms  0x2571 fd:0x7f305cf3d5e0
  9461 ms  0x2571 PR_Close()
  9461 ms  0x2571 fd:0x7f305cf3d670
           /* TID 0x2569 */
  9462 ms  0x2569 PK11_Encrypt()
  9462 ms  0x2569 symkey:0x7f305bbefd00
           /* TID 0x2571 */
  9462 ms  0x2571 PR_Close()
  9462 ms  0x2571 fd:0x7f305d6cdcd0
  9463 ms  0x2571 PR_Close()
  9463 ms  0x2571 fd:0x7f305cf3d6d0
  9463 ms  0x2571 PR_Close()
  9463 ms  0x2571 fd:0x7f305cf3d760
  9463 ms  0x2571 PR_Close()
  9463 ms  0x2571 fd:0x7f305cf3da00
  9463 ms  0x2571 PR_Close()
  9463 ms  0x2571 fd:0x7f305cf3da60
  9463 ms  0x2571 PR_Close()
  9463 ms  0x2571 fd:0x7f305d1ba280
  9463 ms  0x2571 PR_Close()
  9463 ms  0x2571 fd:0x7f305d1ba400
  9463 ms  0x2571 PR_Close()
  9463 ms  0x2571 fd:0x7f305d1ba490
  9463 ms  0x2571 PR_Close()
  9463 ms  0x2571 fd:0x7f305d1ba760
  9463 ms  0x2571 PR_Close()
  9463 ms  0x2571 fd:0x7f305d1ba7f0
  9463 ms  0x2571 PR_Close()
  9463 ms  0x2571 fd:0x7f305d1baac0
  9463 ms  0x2571 PR_Close()
  9463 ms  0x2571 fd:0x7f305d1babb0
  9463 ms  0x2571 PR_Close()
  9463 ms  0x2571 fd:0x7f305d1bad00
  9463 ms  0x2571 PR_Close()
  9463 ms  0x2571 fd:0x7f305d1bad90
  9463 ms  0x2571 PR_Close()
  9463 ms  0x2571 fd:0x7f305d6cd2b0
  9463 ms  0x2571 PR_Close()
  9463 ms  0x2571 fd:0x7f305d6cd3a0
  9463 ms  0x2571 PR_Close()
  9463 ms  0x2571 fd:0x7f305d6cd940
  9463 ms  0x2571 PR_Close()
  9463 ms  0x2571 fd:0x7f305d6cda00
  9463 ms  0x2571 PR_Close()
  9463 ms  0x2571 fd:0x7f305d6cda60
  9463 ms  0x2571 PR_Close()
  9463 ms  0x2571 fd:0x7f305d6cdc10
  9463 ms  0x2571 PR_Close()
  9463 ms  0x2571 fd:0x7f305d6cdc70
  9507 ms  0x2571 PR_Close()
  9507 ms  0x2571 fd:0x7f305bb64c40
           /* TID 0x2569 */
  9520 ms  0x2569 PK11_Encrypt()
  9520 ms  0x2569 symkey:0x7f305ccf6400
  9524 ms  0x2569 SSL_ImportFD()
  9524 ms  0x2569 ret:0x7f305cf3d5e0
  9524 ms  0x2569 SSL_AuthCertificateHook()
  9524 ms  0x2569 fd:0x7f305cf3d5e0
  9524 ms  0x2569 ret:0x0
  9524 ms  0x2569 PR_Connect()
  9524 ms  0x2569 fd:0x7f305cf3d5e0
  9562 ms  0x2569 SECKEY_CreateECPrivateKey()
  9562 ms  0x2569 cx:0x7f30699e10a8
  9562 ms     | 0x2569 EC_ValidatePublicKey()
  9562 ms     | 0x2569 ret:0x0
  9562 ms  0x2569 ret:0x7f3061c12020::7f3061c12020  60 6a d3 5b                                      `j.[
  9562 ms  0x2569 SECKEY_CreateECPrivateKey()
  9562 ms  0x2569 cx:0x7f30699e10a8
  9563 ms     | 0x2569 EC_ValidatePublicKey()
  9564 ms     | 0x2569 ret:0x0
  9564 ms  0x2569 ret:0x7f3061c17020::7f3061c17020  c0 64 d3 5b                                      .d.[
  9620 ms  0x2569 PK11_Derive()
  9620 ms  0x2569 basekey:0x7f305bb39900
  9621 ms     | 0x2569 PK11_DeriveWithTemplate()
  9621 ms  0x2569 ret:0x7f305cc1fc00
  9621 ms  0x2569 PK11_PubDeriveWithKDF()
  9621 ms  0x2569 seckey:0x7f3061c12020
  9621 ms     | 0x2569 EC_ValidatePublicKey()
  9621 ms     | 0x2569 ret:0x0
  9622 ms  0x2569 ret:0x7f305bb39900
  9622 ms  SECKEY_ECParamsToKeySize()
  9622 ms  0x2569 ret:0xff
  9622 ms  0x2569 PK11_DeriveWithFlags()
  9622 ms  0x2569 basekey:0x7f305cc1fc00
  9623 ms     | 0x2569 PK11_DeriveWithTemplate()
  9623 ms  0x2569 ret:0x7f305ccf5b80
  9623 ms  0x2569 PK11_Derive()
  9623 ms  0x2569 basekey:0x7f305bb39900
  9623 ms     | 0x2569 PK11_DeriveWithTemplate()
  9623 ms  0x2569 ret:0x7f305cfa1900
  9623 ms  0x2569 PK11_DeriveWithFlags()
  9623 ms  0x2569 basekey:0x7f305cfa1900
  9623 ms     | 0x2569 PK11_DeriveWithTemplate()
  9623 ms  0x2569 ret:0x7f305cc1fc00
  9623 ms  0x2569 PK11_DeriveWithFlags()
  9623 ms  0x2569 basekey:0x7f305cfa1900
  9623 ms     | 0x2569 PK11_DeriveWithTemplate()
  9623 ms  0x2569 ret:0x7f305bb39900
  9623 ms  0x2569 PK11_DeriveWithFlags()
  9623 ms  0x2569 basekey:0x7f305cfa1900
  9623 ms     | 0x2569 PK11_DeriveWithTemplate()
  9623 ms  0x2569 ret:0x7f305ccf5b80
  9623 ms  0x2569 PK11_Derive()
  9623 ms  0x2569 basekey:0x7f305ccad400
  9623 ms     | 0x2569 PK11_DeriveWithTemplate()
  9623 ms  0x2569 ret:0x7f305ccb9d00
  9623 ms  0x2569 PK11_DeriveWithFlags()
  9623 ms  0x2569 basekey:0x7f305bb39900
  9623 ms     | 0x2569 PK11_DeriveWithTemplate()
  9624 ms  0x2569 ret:0x7f305cfa1900
  9624 ms  0x2569 PK11_DeriveWithFlags()
  9624 ms  0x2569 basekey:0x7f305bb39900
  9624 ms     | 0x2569 PK11_DeriveWithTemplate()
  9624 ms  0x2569 ret:0x7f305ccf5b80
  9627 ms  0x2569 PK11_DeriveWithFlags()
  9627 ms  0x2569 basekey:0x7f305bb39900
  9627 ms     | 0x2569 PK11_DeriveWithTemplate()
  9627 ms  0x2569 ret:0x7f305ccf5b80
  9722 ms  0x2569 PK11_Encrypt()
  9722 ms  0x2569 symkey:0x7f305ccf6400
           /* TID 0x2571 */
  9774 ms  0x2571 PR_Close()
  9774 ms  0x2571 fd:0x7f305cc035e0
           /* TID 0x25cf */
  9775 ms  0x25cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9775 ms  0x25cf ret:0x0
           /* TID 0x2569 */
  9775 ms  0x2569 SSL_AuthCertificateComplete()
  9775 ms  0x2569 fd:0x7f305cf3d5e0
  9775 ms  0x2569 err:0x0
  9776 ms     | 0x2569 PK11_DeriveWithFlags()
  9776 ms     | 0x2569 basekey:0x7f305ccb9d00
  9776 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9776 ms     | 0x2569 ret:0x7f305ccf5b80
  9776 ms     | 0x2569 PK11_DeriveWithFlags()
  9776 ms     | 0x2569 basekey:0x7f305ccb9d00
  9776 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9776 ms     | 0x2569 ret:0x7f305ccad400
  9776 ms     | 0x2569 PK11_DeriveWithFlags()
  9776 ms     | 0x2569 basekey:0x7f305ccb9d00
  9776 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9776 ms     | 0x2569 ret:0x7f305d102f80
  9776 ms     | 0x2569 PK11_DeriveWithFlags()
  9776 ms     | 0x2569 basekey:0x7f305cc1fc00
  9776 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9776 ms     | 0x2569 ret:0x7f305d103180
  9776 ms     | 0x2569 PK11_DeriveWithFlags()
  9776 ms     | 0x2569 basekey:0x7f305cc1fc00
  9776 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9776 ms     | 0x2569 ret:0x7f305d103200
  9776 ms     | 0x2569 PK11_DeriveWithFlags()
  9776 ms     | 0x2569 basekey:0x7f305ccad400
  9776 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9776 ms     | 0x2569 ret:0x7f305d103200
  9776 ms     | 0x2569 PK11_DeriveWithFlags()
  9776 ms     | 0x2569 basekey:0x7f305ccad400
  9776 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9777 ms     | 0x2569 ret:0x7f305d103280
  9777 ms     | 0x2569 PK11_DeriveWithFlags()
  9777 ms     | 0x2569 basekey:0x7f305cc1fc00
  9777 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9777 ms     | 0x2569 ret:0x7f305cfa1900
  9777 ms     | 0x2569 PK11_Encrypt()
  9777 ms     | 0x2569 symkey:0x7f305d103180
  9778 ms     | 0x2569 PK11_DeriveWithFlags()
  9778 ms     | 0x2569 basekey:0x7f305ccf5b80
  9778 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9779 ms     | 0x2569 ret:0x7f305cfa1900
  9779 ms     | 0x2569 PK11_DeriveWithFlags()
  9779 ms     | 0x2569 basekey:0x7f305ccf5b80
  9779 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9779 ms     | 0x2569 ret:0x7f305d103280
  9779 ms     | 0x2569 PK11_DeriveWithFlags()
  9779 ms     | 0x2569 basekey:0x7f305ccb9d00
  9779 ms     |    | 0x2569 PK11_DeriveWithTemplate()
  9779 ms     | 0x2569 ret:0x7f305d103180
  9779 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  9779 ms     | 0x2569 privk:0x7f3061c17020::7f3061c17020  c0 64 d3 5b                                      .d.[
  9780 ms     | 0x2569 privk:0x7f3061c17020::7f3061c17020  e5 e5 e5 e5                                      ....
  9780 ms     | 0x2569 SECKEY_DestroyPrivateKey()
  9780 ms     | 0x2569 privk:0x7f3061c12020::7f3061c12020  60 6a d3 5b                                      `j.[
  9780 ms     | 0x2569 privk:0x7f3061c12020::7f3061c12020  e5 e5 e5 e5                                      ....
  9781 ms  0x2569 PK11_Encrypt()
  9781 ms  0x2569 symkey:0x7f305cfa1900
  9782 ms  0x2569 PK11_Encrypt()
  9782 ms  0x2569 symkey:0x7f305cfa1900
           /* TID 0x2571 */
  9815 ms  0x2571 PR_Close()
  9815 ms  0x2571 fd:0x7f305cf3d730
           /* TID 0x2569 */
  9820 ms  0x2569 PK11_Encrypt()
  9820 ms  0x2569 symkey:0x7f305ccf6400
  9821 ms  0x2569 PK11_DeriveWithFlags()
  9821 ms  0x2569 basekey:0x7f305d103180
  9821 ms     | 0x2569 PK11_DeriveWithTemplate()
  9821 ms  0x2569 ret:0x7f305bb39900
  9821 ms  0x2569 PK11_DeriveWithFlags()
  9821 ms  0x2569 basekey:0x7f305d103180
  9821 ms     | 0x2569 PK11_DeriveWithTemplate()
  9821 ms  0x2569 ret:0x7f305bb39900
  9821 ms  0x2569 PK11_Encrypt()
  9821 ms  0x2569 symkey:0x7f305cfa1900
  9846 ms  0x2569 PK11_Encrypt()
  9846 ms  0x2569 symkey:0x7f305cfa1900
  9853 ms  0x2569 PR_Close()
  9853 ms  0x2569 fd:0x7f306037fa90
  9855 ms  0x2569 PK11_Encrypt()
  9855 ms  0x2569 symkey:0x7f305cfa1900
           /* TID 0x255e */
  9856 ms  0x255e EC_ValidatePublicKey()
  9858 ms  0x255e ret:0x0
  9858 ms  0x255e EC_ValidatePublicKey()
  9859 ms  0x255e ret:0x0
  9859 ms  0x255e EC_ValidatePublicKey()
  9861 ms  0x255e ret:0x0
  9865 ms  0x255e EC_ValidatePublicKey()
  9867 ms  0x255e ret:0x0
  9867 ms  0x255e EC_ValidatePublicKey()
  9868 ms  0x255e ret:0x0
  9868 ms  0x255e EC_ValidatePublicKey()
           /* TID 0x2569 */
  9871 ms  0x2569 PK11_Encrypt()
  9871 ms  0x2569 symkey:0x7f305ccf6400
           /* TID 0x255e */
  9876 ms  0x255e ret:0x0
  9876 ms  0x255e EC_ValidatePublicKey()
  9877 ms  0x255e ret:0x0
  9877 ms  0x255e EC_ValidatePublicKey()
  9879 ms  0x255e ret:0x0
  9879 ms  0x255e EC_ValidatePublicKey()
  9886 ms  0x255e ret:0x0
  9886 ms  0x255e EC_ValidatePublicKey()
  9887 ms  0x255e ret:0x0
           /* TID 0x2569 */
  9889 ms  0x2569 PK11_Encrypt()
  9889 ms  0x2569 symkey:0x7f305cc1fa80
  9889 ms  0x2569 PK11_Encrypt()
  9889 ms  0x2569 symkey:0x7f305cfa1900
  9889 ms  0x2569 PK11_Encrypt()
  9889 ms  0x2569 symkey:0x7f304a625c00
  9889 ms  0x2569 PK11_Encrypt()
  9889 ms  0x2569 symkey:0x7f304a7e2b00
  9889 ms  0x2569 PK11_Encrypt()
  9889 ms  0x2569 symkey:0x7f305bafc780
  9890 ms  0x2569 PK11_Encrypt()
  9890 ms  0x2569 symkey:0x7f305bb39500
  9890 ms  0x2569 PK11_Encrypt()
  9890 ms  0x2569 symkey:0x7f304a626700
  9890 ms  0x2569 PK11_Encrypt()
  9890 ms  0x2569 symkey:0x7f304a7e2880
  9890 ms  0x2569 PK11_Encrypt()
  9890 ms  0x2569 symkey:0x7f304a626400
  9890 ms  0x2569 PK11_Encrypt()
  9890 ms  0x2569 symkey:0x7f304a7e3080
  9890 ms  0x2569 PK11_Encrypt()
  9890 ms  0x2569 symkey:0x7f305ccf6400
  9890 ms  0x2569 PK11_Encrypt()
  9890 ms  0x2569 symkey:0x7f305ccac880
  9890 ms  0x2569 PK11_Encrypt()
  9890 ms  0x2569 symkey:0x7f305bb39980
  9890 ms  0x2569 PK11_Encrypt()
  9890 ms  0x2569 symkey:0x7f305bbefd00
  9890 ms  0x2569 PR_Close()
  9890 ms  0x2569 fd:0x7f305cf11d60
  9890 ms  0x2569 PR_Close()
  9890 ms  0x2569 fd:0x7f305cf3d4f0
  9891 ms  0x2569 PR_Close()
  9891 ms  0x2569 fd:0x7f305ccf93d0
  9891 ms     | 0x2569 PK11_Encrypt()
  9891 ms     | 0x2569 symkey:0x7f305cf63300
  9891 ms  0x2569 PR_Close()
  9891 ms  0x2569 fd:0x7f305baf7df0
  9891 ms     | 0x2569 PK11_Encrypt()
  9891 ms     | 0x2569 symkey:0x7f305cc1f800
  9891 ms  0x2569 PR_Close()
  9891 ms  0x2569 fd:0x7f305bac0ee0
  9891 ms     | 0x2569 PK11_Encrypt()
  9891 ms     | 0x2569 symkey:0x7f305bff7c00
  9891 ms  0x2569 PR_Close()
  9891 ms  0x2569 fd:0x7f305baf76d0
  9891 ms     | 0x2569 PK11_Encrypt()
  9891 ms     | 0x2569 symkey:0x7f305bfbc080
  9891 ms  0x2569 PR_Close()
  9891 ms  0x2569 fd:0x7f304aaab580
  9892 ms     | 0x2569 PK11_Encrypt()
  9892 ms     | 0x2569 symkey:0x7f304a626800
  9892 ms  0x2569 PR_Close()
  9892 ms  0x2569 fd:0x7f304aaec790
  9892 ms  0x2569 PR_Close()
  9892 ms  0x2569 fd:0x7f304aaab5b0
  9892 ms     | 0x2569 PK11_Encrypt()
  9892 ms     | 0x2569 symkey:0x7f304a626200
  9892 ms  0x2569 PR_Close()
  9892 ms  0x2569 fd:0x7f304aaecb50
  9892 ms  0x2569 PR_Close()
  9892 ms  0x2569 fd:0x7f305ccc6a60
  9892 ms  0x2569 PR_Close()
  9892 ms  0x2569 fd:0x7f305bacbf70
  9892 ms     | 0x2569 PK11_Encrypt()
  9892 ms     | 0x2569 symkey:0x7f305bbdf680
           /* TID 0x25c3 */
  9892 ms  0x25c3 PR_Close()
  9892 ms  0x25c3 fd:0x7f304a6a1a00
  9893 ms  0x25c3 PR_Close()
  9893 ms  0x25c3 fd:0x7f304a7d7670
           /* TID 0x2569 */
  9895 ms  0x2569 PR_Close()
  9895 ms  0x2569 fd:0x7f305bacbd00
  9895 ms  0x2569 PR_Close()
  9895 ms  0x2569 fd:0x7f305bacb250
  9895 ms     | 0x2569 PK11_Encrypt()
  9895 ms     | 0x2569 symkey:0x7f305bbde900
  9895 ms  0x2569 PR_Close()
  9895 ms  0x2569 fd:0x7f3060354a60
  9895 ms  0x2569 PR_Close()
  9895 ms  0x2569 fd:0x7f305d1ba5b0
  9895 ms     | 0x2569 PK11_Encrypt()
  9895 ms     | 0x2569 symkey:0x7f305d102d00
  9896 ms  0x2569 PR_Close()
  9896 ms  0x2569 fd:0x7f304a7d7f10
  9896 ms     | 0x2569 PK11_Encrypt()
  9896 ms     | 0x2569 symkey:0x7f304a626700
  9896 ms  0x2569 PR_Close()
  9896 ms  0x2569 fd:0x7f304a6a15b0
  9896 ms     | 0x2569 PK11_Encrypt()
  9896 ms     | 0x2569 symkey:0x7f304a626400
  9896 ms  0x2569 PR_Close()
  9896 ms  0x2569 fd:0x7f304a6a11f0
  9896 ms     | 0x2569 PK11_Encrypt()
  9896 ms     | 0x2569 symkey:0x7f304a625c00
  9902 ms  0x2569 PR_Close()
  9902 ms  0x2569 fd:0x7f304a7d7640
  9902 ms     | 0x2569 PK11_Encrypt()
  9902 ms     | 0x2569 symkey:0x7f304a7e3080
  9903 ms  0x2569 PR_Close()
  9903 ms  0x2569 fd:0x7f304aaec7f0
  9903 ms     | 0x2569 PK11_Encrypt()
  9903 ms     | 0x2569 symkey:0x7f304a7e2880
  9903 ms  0x2569 PR_Close()
  9903 ms  0x2569 fd:0x7f305cc03c70
  9903 ms     | 0x2569 PK11_Encrypt()
  9903 ms     | 0x2569 symkey:0x7f305cc1fa80
  9903 ms  0x2569 PR_Close()
  9903 ms  0x2569 fd:0x7f305baf7160
  9903 ms     | 0x2569 PK11_Encrypt()
  9903 ms     | 0x2569 symkey:0x7f305bb39980
  9904 ms  0x2569 PR_Close()
  9904 ms  0x2569 fd:0x7f305ccc6580
  9904 ms     | 0x2569 PK11_Encrypt()
  9904 ms     | 0x2569 symkey:0x7f305ccac880
  9908 ms  0x2569 PR_Close()
  9908 ms  0x2569 fd:0x7f305bac0ac0
  9908 ms     | 0x2569 PK11_Encrypt()
  9908 ms     | 0x2569 symkey:0x7f305bafc780
  9909 ms  0x2569 PR_Close()
  9909 ms  0x2569 fd:0x7f305ccf95b0
  9909 ms     | 0x2569 PK11_Encrypt()
  9909 ms     | 0x2569 symkey:0x7f305bbefd00
  9909 ms  0x2569 PR_Close()
  9909 ms  0x2569 fd:0x7f305ccf96a0
  9909 ms     | 0x2569 PK11_Encrypt()
  9909 ms     | 0x2569 symkey:0x7f305ccf6400
  9909 ms  0x2569 PR_Close()
  9909 ms  0x2569 fd:0x7f305baf7d00
  9909 ms     | 0x2569 PK11_Encrypt()
  9909 ms     | 0x2569 symkey:0x7f305bb39500
  9910 ms  0x2569 PR_Close()
  9910 ms  0x2569 fd:0x7f305cf3d5e0
  9910 ms     | 0x2569 PK11_Encrypt()
  9910 ms     | 0x2569 symkey:0x7f305cfa1900
  9910 ms  0x2569 PR_Close()
  9910 ms  0x2569 fd:0x7f304a7d7550
  9910 ms     | 0x2569 PK11_Encrypt()
  9910 ms     | 0x2569 symkey:0x7f304a7e2b00
  9910 ms  0x2569 SSL_ImportFD()
  9910 ms  0x2569 ret:0x7f304a6a14c0
  9910 ms  0x2569 SSL_AuthCertificateHook()
  9910 ms  0x2569 fd:0x7f304a6a14c0
  9910 ms  0x2569 ret:0x0
  9913 ms  0x2569 PR_Connect()
  9913 ms  0x2569 fd:0x7f304a6a14c0
           /* TID 0x2571 */
  9917 ms  0x2571 PR_Close()
  9917 ms  0x2571 fd:0x7f304aaab8e0
           /* TID 0x255e */
  9942 ms  0x255e PR_Close()
  9942 ms  0x255e fd:0x7f305cba3100
  9942 ms  0x255e PR_Close()
  9942 ms  0x255e fd:0x7f304aaeceb0
  9944 ms  0x255e PR_Close()
  9944 ms  0x255e fd:0x7f305bac0670
  9944 ms  0x255e PR_Close()
  9944 ms  0x255e fd:0x7f304aaeceb0
  9945 ms  0x255e PR_Close()
  9945 ms  0x255e fd:0x7f305bac0670
  9946 ms  0x255e PR_Close()
  9946 ms  0x255e fd:0x7f304a7d7ee0
           /* TID 0x25d5 */
  9950 ms  0x25d5 PR_Close()
  9950 ms  0x25d5 fd:0x7f305bac0ac0
           /* TID 0x2569 */
  9971 ms  0x2569 SECKEY_CreateECPrivateKey()
  9971 ms  0x2569 cx:0x7f304a64e5c8
  9972 ms     | 0x2569 EC_ValidatePublicKey()
  9972 ms     | 0x2569 ret:0x0
  9972 ms  0x2569 ret:0x7f304a67e020::7f304a67e020  b0 a5 af 5b                                      ...[
  9972 ms  0x2569 SECKEY_CreateECPrivateKey()
  9972 ms  0x2569 cx:0x7f304a64e5c8
  9973 ms     | 0x2569 EC_ValidatePublicKey()
  9974 ms     | 0x2569 ret:0x0
  9974 ms  0x2569 ret:0x7f304a777820::7f304a777820  b0 aa af 5b                                      ...[
           /* TID 0x255e */
  9983 ms  0x255e PR_Close()
  9983 ms  0x255e fd:0x7f305bac0670
  9983 ms  0x255e PR_Close()
  9983 ms  0x255e fd:0x7f305baf7ac0
  9984 ms  0x255e PR_Close()
  9984 ms  0x255e fd:0x7f305bac0670
  9984 ms  0x255e PR_Close()
  9984 ms  0x255e fd:0x7f305baf7ac0
  9985 ms  0x255e PR_Close()
  9985 ms  0x255e fd:0x7f30669c89a0
  9985 ms  0x255e PR_Close()
  9985 ms  0x255e fd:0x7f30669c88b0
  9985 ms  0x255e PR_Close()
  9985 ms  0x255e fd:0x7f30669c8a60
  9988 ms  0x255e PR_Close()
  9988 ms  0x255e fd:0x7f305baf7d60
  9989 ms  0x255e PR_Close()
  9989 ms  0x255e fd:0x7f305baf7d60
  9991 ms  0x255e PR_Close()
  9991 ms  0x255e fd:0x7f305bac0670
  9991 ms  0x255e PR_Close()
  9991 ms  0x255e fd:0x7f305baf7dc0
  9993 ms  0x255e PR_Close()
  9993 ms  0x255e fd:0x7f305bac0670
  9993 ms  0x255e PR_Close()
  9993 ms  0x255e fd:0x7f305baf7dc0
  9995 ms  0x255e PR_Close()
  9995 ms  0x255e fd:0x7f305baf7df0
  9997 ms  0x255e PR_Close()
  9997 ms  0x255e fd:0x7f305baf7df0
  9998 ms  0x255e PR_Close()
  9998 ms  0x255e fd:0x7f305bac0670
  9998 ms  0x255e PR_Close()
  9998 ms  0x255e fd:0x7f305baf7e50
  9999 ms  0x255e PR_Close()
  9999 ms  0x255e fd:0x7f305bac0670
  9999 ms  0x255e PR_Close()
  9999 ms  0x255e fd:0x7f305baf7e50
 10002 ms  0x255e PR_Close()
 10002 ms  0x255e fd:0x7f305baf7ee0
 10003 ms  0x255e PR_Close()
 10003 ms  0x255e fd:0x7f305baf7ee0
 10009 ms  0x255e PR_Close()
 10009 ms  0x255e fd:0x7f305bb647c0
 10010 ms  0x255e PR_Close()
 10010 ms  0x255e fd:0x7f305bb647c0
 10012 ms  0x255e PR_Close()
 10012 ms  0x255e fd:0x7f305bb647f0
           /* TID 0x2569 */
 10015 ms  0x2569 SSL_ImportFD()
 10015 ms  0x2569 ret:0x7f305bb64ca0
 10015 ms  0x2569 SSL_AuthCertificateHook()
 10015 ms  0x2569 fd:0x7f305bb64ca0
 10015 ms  0x2569 ret:0x0
 10015 ms  0x2569 PR_Connect()
 10015 ms  0x2569 fd:0x7f305bb64ca0
           /* TID 0x2571 */
 10020 ms  0x2571 PR_Close()
 10020 ms  0x2571 fd:0x7f305bac0910
 10028 ms  0x2571 PR_Close()
 10028 ms  0x2571 fd:0x7f305baf7550
           /* TID 0x25d5 */
 10030 ms  0x25d5 PR_Close()
 10030 ms  0x25d5 fd:0x7f305cc03c40
           /* TID 0x255e */
 10031 ms  0x255e PR_Close()
 10031 ms  0x255e fd:0x7f305bac0670
 10031 ms  0x255e PR_Close()
 10031 ms  0x255e fd:0x7f305ccf9550
           /* TID 0x25d5 */
 10031 ms  0x25d5 PR_Close()
 10031 ms  0x25d5 fd:0x7f305cc03c40
           /* TID 0x2569 */
 10034 ms  SECKEY_ECParamsToKeySize()
 10034 ms  0x2569 ret:0x100
 10034 ms  0x2569 SECKEY_CreateECPrivateKey()
 10034 ms  0x2569 cx:0x7f304a64e5c8
 10034 ms     | 0x2569 EC_ValidatePublicKey()
 10036 ms     | 0x2569 ret:0x0
 10036 ms  0x2569 ret:0x7f305bd7f020::7f305bd7f020  00 56 f8 5c                                      .V.\
 10036 ms  0x2569 PK11_PubDeriveWithKDF()
 10036 ms  0x2569 seckey:0x7f305bd7f020
 10036 ms     | 0x2569 EC_ValidatePublicKey()
 10037 ms     | 0x2569 ret:0x0
 10039 ms  0x2569 ret:0x7f304a626600
 10039 ms  0x2569 PK11_DeriveWithFlags()
 10039 ms  0x2569 basekey:0x7f304a626600
 10039 ms     | 0x2569 PK11_DeriveWithTemplate()
 10039 ms  0x2569 ret:0x7f304a7e2b80
 10039 ms  0x2569 PK11_Derive()
 10039 ms  0x2569 basekey:0x7f304a7e2b80
 10039 ms     | 0x2569 PK11_DeriveWithTemplate()
 10039 ms  0x2569 ret:0x7f304a7e2a80
 10039 ms  0x2569 SECKEY_DestroyPrivateKey()
 10039 ms  0x2569 privk:0x7f305bd7f020::7f305bd7f020  00 56 f8 5c                                      .V.\
 10039 ms  0x2569 privk:0x7f305bd7f020::7f305bd7f020  e5 e5 e5 e5                                      ....
 10039 ms  0x2569 PK11_Encrypt()
 10039 ms  0x2569 symkey:0x7f305bb39580
           /* TID 0x25d5 */
 10042 ms  0x25d5 PR_Close()
 10042 ms  0x25d5 fd:0x7f305ccf91c0
           /* TID 0x2569 */
 10046 ms  0x2569 SECKEY_CreateECPrivateKey()
 10046 ms  0x2569 cx:0x7f304a64dc08
 10046 ms     | 0x2569 EC_ValidatePublicKey()
 10046 ms     | 0x2569 ret:0x0
 10046 ms  0x2569 ret:0x7f305bd83820::7f305bd83820  f0 41 f0 5c                                      .A.\
 10046 ms  0x2569 SECKEY_CreateECPrivateKey()
 10046 ms  0x2569 cx:0x7f304a64dc08
 10047 ms     | 0x2569 EC_ValidatePublicKey()
 10048 ms     | 0x2569 ret:0x0
 10048 ms  0x2569 ret:0x7f305d137820::7f305d137820  20 44 f0 5c                                       D.\
 10054 ms  0x2569 SSL_ImportFD()
 10054 ms  0x2569 ret:0x7f305ccc6610
 10054 ms  0x2569 SSL_AuthCertificateHook()
 10054 ms  0x2569 fd:0x7f305ccc6610
 10054 ms  0x2569 ret:0x0
 10054 ms  0x2569 PR_Connect()
 10054 ms  0x2569 fd:0x7f305ccc6610
           /* TID 0x25d5 */
 10075 ms  0x25d5 PR_Close()
 10075 ms  0x25d5 fd:0x7f304a7392e0
           /* TID 0x2569 */
 10078 ms  0x2569 SSL_ImportFD()
 10078 ms  0x2569 ret:0x7f304a739790
 10079 ms  0x2569 SSL_AuthCertificateHook()
 10079 ms  0x2569 fd:0x7f304a739790
 10079 ms  0x2569 ret:0x0
 10079 ms  0x2569 PR_Connect()
 10079 ms  0x2569 fd:0x7f304a739790
 10081 ms  0x2569 SSL_ImportFD()
 10081 ms  0x2569 ret:0x7f304a7d7400
 10081 ms  0x2569 SSL_AuthCertificateHook()
 10081 ms  0x2569 fd:0x7f304a7d7400
 10081 ms  0x2569 ret:0x0
 10081 ms  0x2569 PR_Connect()
 10081 ms  0x2569 fd:0x7f304a7d7400
 10082 ms  0x2569 PR_Close()
 10082 ms  0x2569 fd:0x7f304a6a14c0
 10082 ms     | 0x2569 SECKEY_DestroyPrivateKey()
 10082 ms     | 0x2569 privk:0x7f304a777820::7f304a777820  b0 aa af 5b                                      ...[
 10082 ms     | 0x2569 privk:0x7f304a777820::7f304a777820  e5 e5 e5 e5                                      ....
 10082 ms     | 0x2569 SECKEY_DestroyPrivateKey()
 10082 ms     | 0x2569 privk:0x7f304a67e020::7f304a67e020  b0 a5 af 5b                                      ...[
 10082 ms     | 0x2569 privk:0x7f304a67e020::7f304a67e020  e5 e5 e5 e5                                      ....
 10083 ms  0x2569 PR_Close()
 10083 ms  0x2569 fd:0x7f304a7d7400
 10083 ms  0x2569 SSL_ImportFD()
 10083 ms  0x2569 ret:0x7f304a6a1c10
 10083 ms  0x2569 SSL_AuthCertificateHook()
 10083 ms  0x2569 fd:0x7f304a6a1c10
 10083 ms  0x2569 ret:0x0
 10083 ms  0x2569 PR_Connect()
 10083 ms  0x2569 fd:0x7f304a6a1c10
 10083 ms  0x2569 PR_Close()
 10083 ms  0x2569 fd:0x7f304a6a1c10
 10083 ms  0x2569 PR_Close()
 10083 ms  0x2569 fd:0x7f305bb64ca0
 10084 ms     | 0x2569 SECKEY_DestroyPrivateKey()
 10084 ms     | 0x2569 privk:0x7f305d137820::7f305d137820  20 44 f0 5c                                       D.\
 10084 ms     | 0x2569 privk:0x7f305d137820::7f305d137820  e5 e5 e5 e5                                      ....
 10084 ms     | 0x2569 SECKEY_DestroyPrivateKey()
 10084 ms     | 0x2569 privk:0x7f305bd83820::7f305bd83820  f0 41 f0 5c                                      .A.\
 10084 ms     | 0x2569 privk:0x7f305bd83820::7f305bd83820  e5 e5 e5 e5                                      ....
 10084 ms  0x2569 PR_Close()
 10084 ms  0x2569 fd:0x7f305ccc6610
 10084 ms  0x2569 PR_Connect()
 10084 ms  0x2569 fd:0x7f304a7390d0
           /* TID 0x2563 */
 10094 ms  0x2563 PR_Close()
 10094 ms  0x2563 fd:0x7f3065792e20
           /* TID 0x2569 */
 10094 ms  0x2569 PR_Close()
 10094 ms  0x2569 fd:0x7f304a739790
 10094 ms  0x2569 SSL_ImportFD()
 10094 ms  0x2569 ret:0x7f304a739490
 10094 ms  0x2569 SSL_AuthCertificateHook()
 10094 ms  0x2569 fd:0x7f304a739490
 10094 ms  0x2569 ret:0x0
 10094 ms  0x2569 PR_Connect()
 10094 ms  0x2569 fd:0x7f304a739490
 10095 ms  0x2569 PR_Close()
 10095 ms  0x2569 fd:0x7f304a739490
 10099 ms  0x2569 PR_Close()
 10099 ms  0x2569 fd:0x7f304a7390d0
           /* TID 0x25d5 */
 10104 ms  0x25d5 PR_Close()
 10104 ms  0x25d5 fd:0x7f304a6a1c40
           /* TID 0x255e */
 10119 ms  0x255e PR_Close()
 10119 ms  0x255e fd:0x7f305bac0670
 10119 ms  0x255e PR_Close()
 10119 ms  0x255e fd:0x7f304a6a1be0
           /* TID 0x2563 */
 10125 ms  0x2563 PR_Close()
 10125 ms  0x2563 fd:0x7f306184a7f0
           /* TID 0x2569 */
 10126 ms  0x2569 PR_Close()
 10126 ms  0x2569 fd:0x7f305bfffd30
           /* TID 0x25c3 */
 10127 ms  0x25c3 PR_Close()
 10127 ms  0x25c3 fd:0x7f304a7d7bb0
 10127 ms  0x25c3 PR_Close()
 10127 ms  0x25c3 fd:0x7f304a6a1280
 10127 ms  0x25c3 PR_Close()
 10127 ms  0x25c3 fd:0x7f304a6a1280
 10127 ms  0x25c3 PR_Close()
 10127 ms  0x25c3 fd:0x7f304a6a1280
           /* TID 0x25d5 */
 10127 ms  0x25d5 PR_Close()
 10127 ms  0x25d5 fd:0x7f304a7d7970
           /* TID 0x2571 */
 10130 ms  0x2571 PR_Close()
 10130 ms  0x2571 fd:0x7f304a8fc940
 10130 ms  0x2571 PR_Close()
 10130 ms  0x2571 fd:0x7f304a8fc970
           /* TID 0x2563 */
 10140 ms  0x2563 PR_Close()
 10140 ms  0x2563 fd:0x7f3060390280
           /* TID 0x255e */
 10142 ms  0x255e PR_Close()
 10142 ms  0x255e fd:0x7f304a739130
 10142 ms  0x255e PR_Close()
 10142 ms  0x255e fd:0x7f304a8fca60
           /* TID 0x25d5 */
 10144 ms  0x25d5 PR_Close()
 10144 ms  0x25d5 fd:0x7f304a8fca90
 10147 ms  0x25d5 PR_Close()
 10147 ms  0x25d5 fd:0x7f304a7d7c40
 10165 ms  0x25d5 PR_Close()
 10165 ms  0x25d5 fd:0x7f304a61aa90
 10166 ms  0x25d5 PR_Close()
 10166 ms  0x25d5 fd:0x7f304a61aa90
 10171 ms  0x25d5 PR_Close()
 10171 ms  0x25d5 fd:0x7f304a61abe0
 10172 ms  0x25d5 PR_Close()
 10172 ms  0x25d5 fd:0x7f304a61af40
 10181 ms  0x25d5 PR_Close()
 10181 ms  0x25d5 fd:0x7f304a7d7130
 10185 ms  0x25d5 PR_Close()
 10185 ms  0x25d5 fd:0x7f304a7d7be0
 10192 ms  0x25d5 PR_Close()
 10192 ms  0x25d5 fd:0x7f304a8fc2e0
 10202 ms  0x25d5 PR_Close()
 10202 ms  0x25d5 fd:0x7f304a8fc3a0
 10203 ms  0x25d5 PR_Close()
 10203 ms  0x25d5 fd:0x7f304a8fc3a0
           /* TID 0x255e */
 11006 ms  0x255e PR_Close()
 11006 ms  0x255e fd:0x7f304a61ab50
 11007 ms  0x255e PR_Close()
 11007 ms  0x255e fd:0x7f304a61ab50
 11013 ms  0x255e PR_Close()
 11013 ms  0x255e fd:0x7f3083cda130
 11013 ms  0x255e PR_Close()
 11013 ms  0x255e fd:0x7f3083cda190
Process terminated
