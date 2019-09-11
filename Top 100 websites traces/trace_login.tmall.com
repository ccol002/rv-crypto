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
           /* TID 0x70e0 */
    13 ms  0x70e0 SECKEY_DestroyPrivateKey()
    13 ms  0x70e0 privk:0x7fda1bde4820::7fda1bde4820  b0 15 d1 1b                                      ....
    13 ms  0x70e0 privk:0x7fda1bde4820::7fda1bde4820  e5 e5 e5 e5                                      ....
    13 ms  0x70e0 SECKEY_DestroyPrivateKey()
    13 ms  0x70e0 privk:0x7fda1bde2820::7fda1bde2820  d0 13 d1 1b                                      ....
    13 ms  0x70e0 privk:0x7fda1bde2820::7fda1bde2820  e5 e5 e5 e5                                      ....
           /* TID 0x70e8 */
   228 ms  0x70e8 PR_Close()
   228 ms  0x70e8 fd:0x7fda1b7a2940
           /* TID 0x70e0 */
   330 ms  0x70e0 SSL_ImportFD()
   330 ms  0x70e0 ret:0x7fda1b7a84c0
   330 ms  0x70e0 SSL_AuthCertificateHook()
   330 ms  0x70e0 fd:0x7fda1b7a84c0
   330 ms  0x70e0 ret:0x0
   330 ms  0x70e0 PR_Connect()
   330 ms  0x70e0 fd:0x7fda1b7a84c0
   539 ms  0x70e0 SECKEY_CreateECPrivateKey()
   539 ms  0x70e0 cx:0x7fda1b7a5e28
   540 ms     | 0x70e0 EC_ValidatePublicKey()
   540 ms     | 0x70e0 ret:0x0
   540 ms  0x70e0 ret:0x7fda1b862020::7fda1b862020  20 7e 8c 1b                                       ~..
   541 ms  0x70e0 SECKEY_CreateECPrivateKey()
   541 ms  0x70e0 cx:0x7fda1b7a5e28
   542 ms     | 0x70e0 EC_ValidatePublicKey()
   546 ms     | 0x70e0 ret:0x0
   546 ms  0x70e0 ret:0x7fda1b864020::7fda1b864020  e0 7c 8c 1b                                      .|..
           /* TID 0x70fa */
   743 ms  0x70fa PR_Close()
   743 ms  0x70fa fd:0x7fda1b7a8df0
   747 ms  0x70fa PR_Close()
   747 ms  0x70fa fd:0x7fda1b7a8df0
           /* TID 0x70e0 */
   764 ms  SECKEY_ECParamsToKeySize()
   764 ms  0x70e0 ret:0x100
   764 ms  0x70e0 SECKEY_CreateECPrivateKey()
   764 ms  0x70e0 cx:0x7fda1b7a5e28
   766 ms     | 0x70e0 EC_ValidatePublicKey()
   771 ms     | 0x70e0 ret:0x0
   771 ms  0x70e0 ret:0x7fda1b86d020::7fda1b86d020  60 8a a0 0a                                      `...
   771 ms  0x70e0 PK11_PubDeriveWithKDF()
   771 ms  0x70e0 seckey:0x7fda1b86d020
   771 ms     | 0x70e0 EC_ValidatePublicKey()
   775 ms     | 0x70e0 ret:0x0
           /* TID 0x70fa */
   779 ms  0x70fa PR_Close()
   779 ms  0x70fa fd:0x7fda1b7a8fd0
           /* TID 0x70e0 */
   781 ms  0x70e0 ret:0x7fda1cdd1580
   781 ms  0x70e0 PK11_DeriveWithFlags()
   781 ms  0x70e0 basekey:0x7fda1cdd1580
   781 ms     | 0x70e0 PK11_DeriveWithTemplate()
   781 ms  0x70e0 ret:0x7fda1b8fb900
   781 ms  0x70e0 PK11_Derive()
   781 ms  0x70e0 basekey:0x7fda1b8fb900
   781 ms     | 0x70e0 PK11_DeriveWithTemplate()
   781 ms  0x70e0 ret:0x7fda1b8fba00
   781 ms  0x70e0 SECKEY_DestroyPrivateKey()
   781 ms  0x70e0 privk:0x7fda1b86d020::7fda1b86d020  60 8a a0 0a                                      `...
   782 ms  0x70e0 privk:0x7fda1b86d020::7fda1b86d020  e5 e5 e5 e5                                      ....
   782 ms  0x70e0 PK11_Encrypt()
   782 ms  0x70e0 symkey:0x7fda1b8fbb80
   783 ms  0x70e0 PR_Connect()
   783 ms  0x70e0 fd:0x7fda0aa270a0
           /* TID 0x7142 */
   836 ms  0x7142 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   836 ms  0x7142 ret:0x0
           /* TID 0x70e8 */
   837 ms  0x70e8 PR_Close()
   837 ms  0x70e8 fd:0x7fda0aa270d0
           /* TID 0x70e0 */
   838 ms  0x70e0 SSL_AuthCertificateComplete()
   838 ms  0x70e0 fd:0x7fda1b7a84c0
   838 ms  0x70e0 err:0x0
   838 ms  0x70e0 PK11_Encrypt()
   838 ms  0x70e0 symkey:0x7fda1b8fbb80
   991 ms  0x70e0 SECKEY_DestroyPrivateKey()
   991 ms  0x70e0 privk:0x7fda1b864020::7fda1b864020  e0 7c 8c 1b                                      .|..
   992 ms  0x70e0 privk:0x7fda1b864020::7fda1b864020  e5 e5 e5 e5                                      ....
   992 ms  0x70e0 SECKEY_DestroyPrivateKey()
   992 ms  0x70e0 privk:0x7fda1b862020::7fda1b862020  20 7e 8c 1b                                       ~..
   992 ms  0x70e0 privk:0x7fda1b862020::7fda1b862020  e5 e5 e5 e5                                      ....
  1259 ms  0x70e0 SSL_ImportFD()
  1259 ms  0x70e0 ret:0x7fda0aa27220
  1259 ms  0x70e0 SSL_AuthCertificateHook()
  1259 ms  0x70e0 fd:0x7fda0aa27220
  1259 ms  0x70e0 ret:0x0
  1259 ms  0x70e0 PR_Connect()
  1259 ms  0x70e0 fd:0x7fda0aa27220
  1285 ms  0x70e0 SECKEY_CreateECPrivateKey()
  1285 ms  0x70e0 cx:0x7fda0aa09a68
  1286 ms     | 0x70e0 EC_ValidatePublicKey()
  1286 ms     | 0x70e0 ret:0x0
  1286 ms  0x70e0 ret:0x7fda1b863820::7fda1b863820  60 8a a0 0a                                      `...
  1287 ms  0x70e0 SECKEY_CreateECPrivateKey()
  1287 ms  0x70e0 cx:0x7fda0aa09a68
  1288 ms     | 0x70e0 EC_ValidatePublicKey()
  1292 ms     | 0x70e0 ret:0x0
  1292 ms  0x70e0 ret:0x7fda1b869820::7fda1b869820  40 8c a0 0a                                      @...
           /* TID 0x7142 */
  1344 ms  0x7142 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1345 ms  0x7142 ret:0x0
           /* TID 0x70e0 */
  1345 ms  SECKEY_ECParamsToKeySize()
  1345 ms  0x70e0 ret:0x100
  1345 ms  0x70e0 SECKEY_CreateECPrivateKey()
  1345 ms  0x70e0 cx:0x7fda0aa09a68
  1347 ms     | 0x70e0 EC_ValidatePublicKey()
  1351 ms     | 0x70e0 ret:0x0
  1351 ms  0x70e0 ret:0x7fda1b86d020::7fda1b86d020  c0 8e a0 0a                                      ....
  1351 ms  0x70e0 PK11_PubDeriveWithKDF()
  1351 ms  0x70e0 seckey:0x7fda1b86d020
  1351 ms     | 0x70e0 EC_ValidatePublicKey()
  1355 ms     | 0x70e0 ret:0x0
  1358 ms  0x70e0 ret:0x7fda1cdd1580
  1359 ms  0x70e0 PK11_DeriveWithFlags()
  1359 ms  0x70e0 basekey:0x7fda1cdd1580
  1359 ms     | 0x70e0 PK11_DeriveWithTemplate()
  1359 ms  0x70e0 ret:0x7fda1b8fc700
  1359 ms  0x70e0 PK11_Derive()
  1359 ms  0x70e0 basekey:0x7fda1b8fc700
  1359 ms     | 0x70e0 PK11_DeriveWithTemplate()
  1359 ms  0x70e0 ret:0x7fda1b8fc780
  1359 ms  0x70e0 SECKEY_DestroyPrivateKey()
  1359 ms  0x70e0 privk:0x7fda1b86d020::7fda1b86d020  c0 8e a0 0a                                      ....
  1359 ms  0x70e0 privk:0x7fda1b86d020::7fda1b86d020  e5 e5 e5 e5                                      ....
  1359 ms  0x70e0 PK11_Encrypt()
  1359 ms  0x70e0 symkey:0x7fda1b8fc900
  1360 ms  0x70e0 SSL_AuthCertificateComplete()
  1360 ms  0x70e0 fd:0x7fda0aa27220
  1360 ms  0x70e0 err:0x0
  1360 ms  0x70e0 PK11_Encrypt()
  1360 ms  0x70e0 symkey:0x7fda1b8fc900
  1411 ms  0x70e0 SECKEY_DestroyPrivateKey()
  1411 ms  0x70e0 privk:0x7fda1b869820::7fda1b869820  40 8c a0 0a                                      @...
  1411 ms  0x70e0 privk:0x7fda1b869820::7fda1b869820  e5 e5 e5 e5                                      ....
  1411 ms  0x70e0 SECKEY_DestroyPrivateKey()
  1411 ms  0x70e0 privk:0x7fda1b863820::7fda1b863820  60 8a a0 0a                                      `...
  1412 ms  0x70e0 privk:0x7fda1b863820::7fda1b863820  e5 e5 e5 e5                                      ....
  1415 ms  0x70e0 PK11_Encrypt()
  1415 ms  0x70e0 symkey:0x7fda1b8fc900
  1445 ms  0x70e0 PK11_Encrypt()
  1445 ms  0x70e0 symkey:0x7fda1b8fc900
  1475 ms  0x70e0 PK11_Encrypt()
  1475 ms  0x70e0 symkey:0x7fda1b8fc900
  1504 ms  0x70e0 PK11_Encrypt()
  1504 ms  0x70e0 symkey:0x7fda1b8fc900
  1621 ms  0x70e0 PK11_Encrypt()
  1621 ms  0x70e0 symkey:0x7fda1b8fc900
  1655 ms  0x70e0 PK11_Encrypt()
  1655 ms  0x70e0 symkey:0x7fda1b8fc900
  1689 ms  0x70e0 PK11_Encrypt()
  1689 ms  0x70e0 symkey:0x7fda1b8fc900
           /* TID 0x7137 */
  1716 ms  0x7137 PR_Close()
  1716 ms  0x7137 fd:0x7fda0aa273d0
  1716 ms  0x7137 PR_Close()
  1716 ms  0x7137 fd:0x7fda0aa27490
  1717 ms  0x7137 PR_Close()
  1717 ms  0x7137 fd:0x7fda0aa273d0
  1717 ms  0x7137 PR_Close()
  1717 ms  0x7137 fd:0x7fda0aa27490
  1717 ms  0x7137 PR_Close()
  1717 ms  0x7137 fd:0x7fda0aa273d0
  1717 ms  0x7137 PR_Close()
  1717 ms  0x7137 fd:0x7fda0aa27490
  1717 ms  0x7137 PR_Close()
  1717 ms  0x7137 fd:0x7fda0aa273d0
  1717 ms  0x7137 PR_Close()
  1717 ms  0x7137 fd:0x7fda0aa27490
  1717 ms  0x7137 PR_Close()
  1717 ms  0x7137 fd:0x7fda0aa273d0
  1717 ms  0x7137 PR_Close()
  1717 ms  0x7137 fd:0x7fda0aa27490
  1717 ms  0x7137 PR_Close()
  1717 ms  0x7137 fd:0x7fda0aa273d0
  1717 ms  0x7137 PR_Close()
  1717 ms  0x7137 fd:0x7fda0aa27490
  1718 ms  0x7137 PR_Close()
  1718 ms  0x7137 fd:0x7fda0aa273d0
  1718 ms  0x7137 PR_Close()
  1718 ms  0x7137 fd:0x7fda0aa27490
  1718 ms  0x7137 PR_Close()
  1718 ms  0x7137 fd:0x7fda0aa273d0
  1718 ms  0x7137 PR_Close()
  1718 ms  0x7137 fd:0x7fda0aa27490
  1718 ms  0x7137 PR_Close()
  1718 ms  0x7137 fd:0x7fda0aa273d0
  1718 ms  0x7137 PR_Close()
  1718 ms  0x7137 fd:0x7fda0aa27490
  1718 ms  0x7137 PR_Close()
  1718 ms  0x7137 fd:0x7fda0aa273d0
  1718 ms  0x7137 PR_Close()
  1718 ms  0x7137 fd:0x7fda0aa27490
  1718 ms  0x7137 PR_Close()
  1718 ms  0x7137 fd:0x7fda0aa273d0
  1718 ms  0x7137 PR_Close()
  1718 ms  0x7137 fd:0x7fda0aa27490
  1718 ms  0x7137 PR_Close()
  1718 ms  0x7137 fd:0x7fda0aa273d0
  1718 ms  0x7137 PR_Close()
  1718 ms  0x7137 fd:0x7fda0aa27490
  1719 ms  0x7137 PR_Close()
  1719 ms  0x7137 fd:0x7fda0aa273d0
  1719 ms  0x7137 PR_Close()
  1719 ms  0x7137 fd:0x7fda0aa27490
  1719 ms  0x7137 PR_Close()
  1719 ms  0x7137 fd:0x7fda0aa273d0
  1719 ms  0x7137 PR_Close()
  1719 ms  0x7137 fd:0x7fda0aa27490
  1722 ms  0x7137 PR_Close()
  1722 ms  0x7137 fd:0x7fda0aa273d0
  1722 ms  0x7137 PR_Close()
  1722 ms  0x7137 fd:0x7fda0aa273a0
  1724 ms  0x7137 PR_Close()
  1724 ms  0x7137 fd:0x7fda0aa273a0
  1724 ms  0x7137 PR_Close()
  1724 ms  0x7137 fd:0x7fda0aa273d0
  1727 ms  0x7137 PR_Close()
  1727 ms  0x7137 fd:0x7fda0aa273d0
  1727 ms  0x7137 PR_Close()
  1727 ms  0x7137 fd:0x7fda0aa273d0
  1729 ms  0x7137 PR_Close()
  1729 ms  0x7137 fd:0x7fda0aa273d0
  1729 ms  0x7137 PR_Close()
  1729 ms  0x7137 fd:0x7fda0aa273d0
  1777 ms  0x7137 PR_Close()
  1777 ms  0x7137 fd:0x7fda0aa273d0
  1778 ms  0x7137 PR_Close()
  1778 ms  0x7137 fd:0x7fda0aa273d0
  1786 ms  0x7137 PR_Close()
  1786 ms  0x7137 fd:0x7fda0aa273d0
  1786 ms  0x7137 PR_Close()
  1786 ms  0x7137 fd:0x7fda0aa273d0
  1793 ms  0x7137 PR_Close()
  1793 ms  0x7137 fd:0x7fda0aa273d0
  1793 ms  0x7137 PR_Close()
  1793 ms  0x7137 fd:0x7fda0aa273d0
  1795 ms  0x7137 PR_Close()
  1795 ms  0x7137 fd:0x7fda0aa273d0
  1795 ms  0x7137 PR_Close()
  1795 ms  0x7137 fd:0x7fda0aa273d0
           /* TID 0x7134 */
  1795 ms  0x7134 PR_Close()
  1795 ms  0x7134 fd:0x7fda0aa273d0
  1795 ms  0x7134 PR_Close()
  1795 ms  0x7134 fd:0x7fda0aa273d0
  1795 ms  0x7134 PR_Close()
  1795 ms  0x7134 fd:0x7fda0aa273d0
  1795 ms  0x7134 PR_Close()
  1795 ms  0x7134 fd:0x7fda0aa273d0
  1795 ms  0x7134 PR_Close()
  1795 ms  0x7134 fd:0x7fda0aa273d0
  1795 ms  0x7134 PR_Close()
  1795 ms  0x7134 fd:0x7fda0aa273d0
  1795 ms  0x7134 PR_Close()
  1795 ms  0x7134 fd:0x7fda0aa273d0
  1795 ms  0x7134 PR_Close()
  1795 ms  0x7134 fd:0x7fda0aa273d0
  1795 ms  0x7134 PR_Close()
  1795 ms  0x7134 fd:0x7fda0aa273d0
  1795 ms  0x7134 PR_Close()
  1795 ms  0x7134 fd:0x7fda0aa273d0
  1795 ms  0x7134 PR_Close()
  1795 ms  0x7134 fd:0x7fda0aa273d0
  1795 ms  0x7134 PR_Close()
  1795 ms  0x7134 fd:0x7fda0aa273d0
  1795 ms  0x7134 PR_Close()
  1795 ms  0x7134 fd:0x7fda0aa273d0
  1795 ms  0x7134 PR_Close()
  1795 ms  0x7134 fd:0x7fda0aa273d0
  1795 ms  0x7134 PR_Close()
  1795 ms  0x7134 fd:0x7fda0aa273d0
           /* TID 0x70fa */
  2298 ms  0x70fa PR_Close()
  2298 ms  0x70fa fd:0x7fda0aa27790
  2301 ms  0x70fa PR_Close()
  2301 ms  0x70fa fd:0x7fda0aa27790
  2807 ms  0x70fa PR_Close()
  2807 ms  0x70fa fd:0x7fda0aa27790
           /* TID 0x70e8 */
  4161 ms  0x70e8 PR_Close()
  4161 ms  0x70e8 fd:0x7fda0aa27790
  4161 ms  0x70e8 PR_Close()
  4161 ms  0x70e8 fd:0x7fda0aa278e0
           /* TID 0x70e0 */
  4570 ms  0x70e0 SSL_ImportFD()
  4570 ms  0x70e0 ret:0x7fda0a9f0a30
  4570 ms  0x70e0 SSL_AuthCertificateHook()
  4570 ms  0x70e0 fd:0x7fda0a9f0a30
  4570 ms  0x70e0 ret:0x0
  4570 ms  0x70e0 PR_Connect()
  4570 ms  0x70e0 fd:0x7fda0a9f0a30
  4627 ms  0x70e0 SECKEY_CreateECPrivateKey()
  4627 ms  0x70e0 cx:0x7fda0aa09da8
  4629 ms     | 0x70e0 EC_ValidatePublicKey()
  4629 ms     | 0x70e0 ret:0x0
  4629 ms  0x70e0 ret:0x7fda21aaf020::7fda21aaf020  c0 79 9f 0a                                      .y..
  4629 ms  0x70e0 SECKEY_CreateECPrivateKey()
  4629 ms  0x70e0 cx:0x7fda0aa09da8
  4631 ms     | 0x70e0 EC_ValidatePublicKey()
  4636 ms     | 0x70e0 ret:0x0
  4636 ms  0x70e0 ret:0x7fda0a803020::7fda0a803020  40 7c 9f 0a                                      @|..
  6553 ms  SECKEY_ECParamsToKeySize()
  6553 ms  0x70e0 ret:0x100
  6553 ms  SECKEY_ECParamsToBasePointOrderLen()
  6553 ms  0x70e0 ret:0x100
  6553 ms  SECKEY_ECParamsToBasePointOrderLen()
  6553 ms  0x70e0 ret:0x100
  6553 ms  0x70e0 EC_ValidatePublicKey()
  6562 ms  0x70e0 ret:0x0
  6569 ms  SECKEY_ECParamsToKeySize()
  6569 ms  0x70e0 ret:0xff
  6569 ms  0x70e0 SECKEY_CreateECPrivateKey()
  6569 ms  0x70e0 cx:0x7fda0aa09da8
  6571 ms     | 0x70e0 EC_ValidatePublicKey()
  6571 ms     | 0x70e0 ret:0x0
  6571 ms  0x70e0 ret:0x7fda0a80f820::7fda0a80f820  70 b9 79 1b                                      p.y.
  6571 ms  0x70e0 PK11_PubDeriveWithKDF()
  6571 ms  0x70e0 seckey:0x7fda0a80f820
  6571 ms     | 0x70e0 EC_ValidatePublicKey()
  6571 ms     | 0x70e0 ret:0x0
  6572 ms  0x70e0 ret:0x7fda1cdd1580
  6572 ms  0x70e0 PK11_DeriveWithFlags()
  6572 ms  0x70e0 basekey:0x7fda1cdd1580
  6572 ms     | 0x70e0 PK11_DeriveWithTemplate()
  6573 ms  0x70e0 ret:0x7fda0a9f2600
  6573 ms  0x70e0 PK11_Derive()
  6573 ms  0x70e0 basekey:0x7fda0a9f2600
  6573 ms     | 0x70e0 PK11_DeriveWithTemplate()
  6573 ms  0x70e0 ret:0x7fda0a9f2680
  6573 ms  0x70e0 SECKEY_DestroyPrivateKey()
  6573 ms  0x70e0 privk:0x7fda0a80f820::7fda0a80f820  70 b9 79 1b                                      p.y.
  6573 ms  0x70e0 privk:0x7fda0a80f820::7fda0a80f820  e5 e5 e5 e5                                      ....
  6573 ms  0x70e0 PK11_Encrypt()
  6573 ms  0x70e0 symkey:0x7fda0a9f2800
  6575 ms  0x70e0 PR_Connect()
  6575 ms  0x70e0 fd:0x7fda1b7a2e50
           /* TID 0x70e8 */
  6632 ms  0x70e8 PR_Close()
  6632 ms  0x70e8 fd:0x7fda1b7a2dc0
           /* TID 0x7142 */
  6633 ms  0x7142 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6633 ms  0x7142 ret:0x0
  6634 ms  0x7142 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6634 ms  0x7142 ret:0x0
           /* TID 0x70e0 */
  6672 ms  0x70e0 SSL_AuthCertificateComplete()
  6672 ms  0x70e0 fd:0x7fda0a9f0a30
  6672 ms  0x70e0 err:0x0
  6672 ms     | 0x70e0 SECKEY_DestroyPrivateKey()
  6672 ms     | 0x70e0 privk:0x7fda0a803020::7fda0a803020  40 7c 9f 0a                                      @|..
  6672 ms     | 0x70e0 privk:0x7fda0a803020::7fda0a803020  e5 e5 e5 e5                                      ....
  6672 ms     | 0x70e0 SECKEY_DestroyPrivateKey()
  6672 ms     | 0x70e0 privk:0x7fda21aaf020::7fda21aaf020  c0 79 9f 0a                                      .y..
  6672 ms     | 0x70e0 privk:0x7fda21aaf020::7fda21aaf020  e5 e5 e5 e5                                      ....
  6672 ms  0x70e0 PK11_Encrypt()
  6672 ms  0x70e0 symkey:0x7fda0a9f2800
  6672 ms  0x70e0 PK11_Encrypt()
  6672 ms  0x70e0 symkey:0x7fda0a9f2800
  6672 ms  0x70e0 PK11_Encrypt()
  6672 ms  0x70e0 symkey:0x7fda0a9f2800
           /* TID 0x70e8 */
  7448 ms  0x70e8 PR_Close()
  7448 ms  0x70e8 fd:0x7fda1b7a8130
           /* TID 0x70f7 */
  7458 ms  0x70f7 PR_Close()
  7458 ms  0x70f7 fd:0x7fda1b7a81c0
           /* TID 0x70e0 */
  7889 ms  0x70e0 SSL_ImportFD()
  7889 ms  0x70e0 ret:0x7fda1d9d0880
  7889 ms  0x70e0 SSL_AuthCertificateHook()
  7889 ms  0x70e0 fd:0x7fda1d9d0880
  7889 ms  0x70e0 ret:0x0
  7889 ms  0x70e0 PR_Connect()
  7889 ms  0x70e0 fd:0x7fda1d9d0880
  7890 ms  0x70e0 SSL_ImportFD()
  7890 ms  0x70e0 ret:0x7fda1d9d08e0
  7890 ms  0x70e0 SSL_AuthCertificateHook()
  7890 ms  0x70e0 fd:0x7fda1d9d08e0
  7890 ms  0x70e0 ret:0x0
  7890 ms  0x70e0 PR_Connect()
  7890 ms  0x70e0 fd:0x7fda1d9d08e0
  7890 ms  0x70e0 SSL_ImportFD()
  7890 ms  0x70e0 ret:0x7fda1d1ab970
  7890 ms  0x70e0 SSL_AuthCertificateHook()
  7890 ms  0x70e0 fd:0x7fda1d1ab970
  7890 ms  0x70e0 ret:0x0
  7891 ms  0x70e0 PR_Connect()
  7891 ms  0x70e0 fd:0x7fda1d1ab970
  7891 ms  0x70e0 SSL_ImportFD()
  7891 ms  0x70e0 ret:0x7fda1d1abe50
  7891 ms  0x70e0 SSL_AuthCertificateHook()
  7891 ms  0x70e0 fd:0x7fda1d1abe50
  7891 ms  0x70e0 ret:0x0
  7891 ms  0x70e0 PR_Connect()
  7891 ms  0x70e0 fd:0x7fda1d1abe50
  7957 ms  0x70e0 SECKEY_CreateECPrivateKey()
  7957 ms  0x70e0 cx:0x7fda0aa0aaa8
  7959 ms     | 0x70e0 EC_ValidatePublicKey()
  7959 ms     | 0x70e0 ret:0x0
  7959 ms  0x70e0 ret:0x7fda1b720020::7fda1b720020  10 d5 1d 1d                                      ....
  7960 ms  0x70e0 SECKEY_CreateECPrivateKey()
  7960 ms  0x70e0 cx:0x7fda0aa0aaa8
  7962 ms     | 0x70e0 EC_ValidatePublicKey()
  7969 ms     | 0x70e0 ret:0x0
  7969 ms  0x70e0 ret:0x7fda1b859820::7fda1b859820  f0 81 83 1c                                      ....
  7971 ms  0x70e0 SECKEY_CreateECPrivateKey()
  7971 ms  0x70e0 cx:0x7fda0aa0af88
  7972 ms     | 0x70e0 EC_ValidatePublicKey()
  7972 ms     | 0x70e0 ret:0x0
  7973 ms  0x70e0 ret:0x7fda1b86b020::7fda1b86b020  80 ad 9a 1d                                      ....
  7973 ms  0x70e0 SECKEY_CreateECPrivateKey()
  7973 ms  0x70e0 cx:0x7fda0aa0af88
  7975 ms     | 0x70e0 EC_ValidatePublicKey()
  7979 ms     | 0x70e0 ret:0x0
  7979 ms  0x70e0 ret:0x7fda1bde1020::7fda1bde1020  00 06 ca 1e                                      ....
  7980 ms  0x70e0 SECKEY_CreateECPrivateKey()
  7980 ms  0x70e0 cx:0x7fda0aa0ade8
  7982 ms     | 0x70e0 EC_ValidatePublicKey()
  7982 ms     | 0x70e0 ret:0x0
  7982 ms  0x70e0 ret:0x7fda1bde4820::7fda1bde4820  d0 a3 75 21                                      ..u!
  7982 ms  0x70e0 SECKEY_CreateECPrivateKey()
  7982 ms  0x70e0 cx:0x7fda0aa0ade8
  7983 ms     | 0x70e0 EC_ValidatePublicKey()
  7987 ms     | 0x70e0 ret:0x0
  7987 ms  0x70e0 ret:0x7fda1cca6820::7fda1cca6820  40 b7 92 21                                      @..!
  7988 ms  0x70e0 SECKEY_CreateECPrivateKey()
  7988 ms  0x70e0 cx:0x7fda0aa0ac48
  7989 ms     | 0x70e0 EC_ValidatePublicKey()
  7990 ms     | 0x70e0 ret:0x0
  7990 ms  0x70e0 ret:0x7fda1d386820::7fda1d386820  50 31 93 21                                      P1.!
  7990 ms  0x70e0 SECKEY_CreateECPrivateKey()
  7990 ms  0x70e0 cx:0x7fda0aa0ac48
  7991 ms     | 0x70e0 EC_ValidatePublicKey()
  7994 ms     | 0x70e0 ret:0x0
  7994 ms  0x70e0 ret:0x7fda1d38f020::7fda1d38f020  f0 81 9d 21                                      ...!
  8036 ms  0x70e0 PK11_Derive()
  8036 ms  0x70e0 basekey:0x7fda1cdd1580
  8037 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8037 ms  0x70e0 ret:0x7fda1cd0df00
  8037 ms  0x70e0 PK11_PubDeriveWithKDF()
  8037 ms  0x70e0 seckey:0x7fda1b720020
  8037 ms     | 0x70e0 EC_ValidatePublicKey()
  8037 ms     | 0x70e0 ret:0x0
  8038 ms  0x70e0 ret:0x7fda1cdd1580
  8038 ms  SECKEY_ECParamsToKeySize()
  8038 ms  0x70e0 ret:0xff
  8038 ms  0x70e0 PK11_DeriveWithFlags()
  8038 ms  0x70e0 basekey:0x7fda1cd0df00
  8038 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8038 ms  0x70e0 ret:0x7fda1cd0df80
  8038 ms  0x70e0 PK11_Derive()
  8038 ms  0x70e0 basekey:0x7fda1cdd1580
  8038 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8038 ms  0x70e0 ret:0x7fda1cd8d100
  8038 ms  0x70e0 PK11_DeriveWithFlags()
  8038 ms  0x70e0 basekey:0x7fda1cd8d100
  8038 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8038 ms  0x70e0 ret:0x7fda1cd0df00
  8038 ms  0x70e0 PK11_DeriveWithFlags()
  8038 ms  0x70e0 basekey:0x7fda1cd8d100
  8038 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8038 ms  0x70e0 ret:0x7fda1cdd1580
  8038 ms  0x70e0 PK11_DeriveWithFlags()
  8038 ms  0x70e0 basekey:0x7fda1cd8d100
  8038 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8038 ms  0x70e0 ret:0x7fda1cd0df80
  8038 ms  0x70e0 PK11_Derive()
  8038 ms  0x70e0 basekey:0x7fda1cd8dd80
  8038 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8038 ms  0x70e0 ret:0x7fda1cd8de00
  8038 ms  0x70e0 PK11_DeriveWithFlags()
  8038 ms  0x70e0 basekey:0x7fda1cdd1580
  8038 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8038 ms  0x70e0 ret:0x7fda1cd8d100
  8038 ms  0x70e0 PK11_DeriveWithFlags()
  8038 ms  0x70e0 basekey:0x7fda1cdd1580
  8038 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8038 ms  0x70e0 ret:0x7fda1cd0df80
  8041 ms  0x70e0 PK11_DeriveWithFlags()
  8041 ms  0x70e0 basekey:0x7fda1cdd1580
  8041 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8041 ms  0x70e0 ret:0x7fda1cd0df80
  8050 ms  0x70e0 PK11_Derive()
  8050 ms  0x70e0 basekey:0x7fda1cd0df80
  8050 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8050 ms  0x70e0 ret:0x7fda1cd8dd80
  8050 ms  0x70e0 PK11_PubDeriveWithKDF()
  8050 ms  0x70e0 seckey:0x7fda1b86b020
  8050 ms     | 0x70e0 EC_ValidatePublicKey()
  8050 ms     | 0x70e0 ret:0x0
  8051 ms  0x70e0 ret:0x7fda1cd0df80
  8051 ms  SECKEY_ECParamsToKeySize()
  8051 ms  0x70e0 ret:0xff
  8051 ms  0x70e0 PK11_DeriveWithFlags()
  8051 ms  0x70e0 basekey:0x7fda1cd8dd80
  8051 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8051 ms  0x70e0 ret:0x7fda1cdc4a00
  8051 ms  0x70e0 PK11_Derive()
  8051 ms  0x70e0 basekey:0x7fda1cd0df80
  8051 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8051 ms  0x70e0 ret:0x7fda1cdc4a80
  8051 ms  0x70e0 PK11_DeriveWithFlags()
  8051 ms  0x70e0 basekey:0x7fda1cdc4a80
  8052 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8052 ms  0x70e0 ret:0x7fda1cd8dd80
  8052 ms  0x70e0 PK11_DeriveWithFlags()
  8052 ms  0x70e0 basekey:0x7fda1cdc4a80
  8052 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8052 ms  0x70e0 ret:0x7fda1cd0df80
  8052 ms  0x70e0 PK11_DeriveWithFlags()
  8052 ms  0x70e0 basekey:0x7fda1cdc4a80
  8052 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8052 ms  0x70e0 ret:0x7fda1cdc4a00
  8052 ms  0x70e0 PK11_Derive()
  8052 ms  0x70e0 basekey:0x7fda1cdc4b00
  8052 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8052 ms  0x70e0 ret:0x7fda1cdc4d00
  8052 ms  0x70e0 PK11_DeriveWithFlags()
  8052 ms  0x70e0 basekey:0x7fda1cd0df80
  8052 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8052 ms  0x70e0 ret:0x7fda1cdc4a80
  8052 ms  0x70e0 PK11_DeriveWithFlags()
  8052 ms  0x70e0 basekey:0x7fda1cd0df80
  8052 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8052 ms  0x70e0 ret:0x7fda1cdc4a00
  8053 ms  0x70e0 PK11_DeriveWithFlags()
  8053 ms  0x70e0 basekey:0x7fda1cd0df80
  8053 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8053 ms  0x70e0 ret:0x7fda1cdc4a00
  8054 ms  0x70e0 PR_Connect()
  8054 ms  0x70e0 fd:0x7fda21757cd0
  8063 ms  0x70e0 PK11_Derive()
  8063 ms  0x70e0 basekey:0x7fda1cdc4a00
  8063 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8063 ms  0x70e0 ret:0x7fda1cdc4b00
  8063 ms  0x70e0 PK11_PubDeriveWithKDF()
  8063 ms  0x70e0 seckey:0x7fda1bde4820
  8063 ms     | 0x70e0 EC_ValidatePublicKey()
  8063 ms     | 0x70e0 ret:0x0
  8064 ms  0x70e0 ret:0x7fda1cdc4a00
  8064 ms  SECKEY_ECParamsToKeySize()
  8064 ms  0x70e0 ret:0xff
  8064 ms  0x70e0 PK11_DeriveWithFlags()
  8064 ms  0x70e0 basekey:0x7fda1cdc4b00
  8064 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8064 ms  0x70e0 ret:0x7fda1cdc5480
  8064 ms  0x70e0 PK11_Derive()
  8064 ms  0x70e0 basekey:0x7fda1cdc4a00
  8064 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8064 ms  0x70e0 ret:0x7fda1cdc5580
  8064 ms  0x70e0 PK11_DeriveWithFlags()
  8064 ms  0x70e0 basekey:0x7fda1cdc5580
  8064 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8064 ms  0x70e0 ret:0x7fda1cdc4b00
  8064 ms  0x70e0 PK11_DeriveWithFlags()
  8064 ms  0x70e0 basekey:0x7fda1cdc5580
  8064 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8064 ms  0x70e0 ret:0x7fda1cdc4a00
  8064 ms  0x70e0 PK11_DeriveWithFlags()
  8064 ms  0x70e0 basekey:0x7fda1cdc5580
  8064 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8064 ms  0x70e0 ret:0x7fda1cdc5480
  8064 ms  0x70e0 PK11_Derive()
  8064 ms  0x70e0 basekey:0x7fda1cdc5b00
  8064 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8065 ms  0x70e0 ret:0x7fda1cdc5b80
  8065 ms  0x70e0 PK11_DeriveWithFlags()
  8065 ms  0x70e0 basekey:0x7fda1cdc4a00
  8065 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8065 ms  0x70e0 ret:0x7fda1cdc5580
  8065 ms  0x70e0 PK11_DeriveWithFlags()
  8065 ms  0x70e0 basekey:0x7fda1cdc4a00
  8065 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8065 ms  0x70e0 ret:0x7fda1cdc5480
  8065 ms  0x70e0 PK11_DeriveWithFlags()
  8065 ms  0x70e0 basekey:0x7fda1cdc4a00
  8065 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8065 ms  0x70e0 ret:0x7fda1cdc5480
  8065 ms  0x70e0 PK11_Derive()
  8065 ms  0x70e0 basekey:0x7fda1cdc5480
  8065 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8066 ms  0x70e0 ret:0x7fda1cdc5b00
  8066 ms  0x70e0 PK11_PubDeriveWithKDF()
  8066 ms  0x70e0 seckey:0x7fda1d386820
  8066 ms     | 0x70e0 EC_ValidatePublicKey()
  8066 ms     | 0x70e0 ret:0x0
  8067 ms  0x70e0 ret:0x7fda1cdc5480
  8067 ms  SECKEY_ECParamsToKeySize()
  8067 ms  0x70e0 ret:0xff
  8067 ms  0x70e0 PK11_DeriveWithFlags()
  8067 ms  0x70e0 basekey:0x7fda1cdc5b00
  8067 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8067 ms  0x70e0 ret:0x7fda1cdc5c00
  8067 ms  0x70e0 PK11_Derive()
  8067 ms  0x70e0 basekey:0x7fda1cdc5480
  8067 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8067 ms  0x70e0 ret:0x7fda1cdc5d00
  8067 ms  0x70e0 PK11_DeriveWithFlags()
  8067 ms  0x70e0 basekey:0x7fda1cdc5d00
  8067 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8067 ms  0x70e0 ret:0x7fda1cdc5b00
  8067 ms  0x70e0 PK11_DeriveWithFlags()
  8067 ms  0x70e0 basekey:0x7fda1cdc5d00
  8067 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8067 ms  0x70e0 ret:0x7fda1cdc5480
  8067 ms  0x70e0 PK11_DeriveWithFlags()
  8067 ms  0x70e0 basekey:0x7fda1cdc5d00
  8067 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8067 ms  0x70e0 ret:0x7fda1cdc5c00
  8067 ms  0x70e0 PK11_Derive()
  8067 ms  0x70e0 basekey:0x7fda1cdc5e80
  8067 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8067 ms  0x70e0 ret:0x7fda1cdc5f80
  8067 ms  0x70e0 PK11_DeriveWithFlags()
  8067 ms  0x70e0 basekey:0x7fda1cdc5480
  8067 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8067 ms  0x70e0 ret:0x7fda1cdc5d00
  8067 ms  0x70e0 PK11_DeriveWithFlags()
  8067 ms  0x70e0 basekey:0x7fda1cdc5480
  8067 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8067 ms  0x70e0 ret:0x7fda1cdc5c00
  8069 ms  0x70e0 PK11_DeriveWithFlags()
  8069 ms  0x70e0 basekey:0x7fda1cdc5480
  8070 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8070 ms  0x70e0 ret:0x7fda1cdc5c00
           /* TID 0x70e8 */
  8071 ms  0x70e8 PR_Close()
  8071 ms  0x70e8 fd:0x7fda21757670
           /* TID 0x7142 */
  8071 ms  0x7142 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8071 ms  0x7142 ret:0x0
  8071 ms  0x7142 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8071 ms  0x7142 ret:0x0
           /* TID 0x70e0 */
  8074 ms  0x70e0 SSL_AuthCertificateComplete()
  8074 ms  0x70e0 fd:0x7fda1d9d0880
  8074 ms  0x70e0 err:0x0
  8074 ms     | 0x70e0 PK11_DeriveWithFlags()
  8074 ms     | 0x70e0 basekey:0x7fda1cd8de00
  8074 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8074 ms     | 0x70e0 ret:0x7fda1cdc5c00
  8074 ms     | 0x70e0 PK11_DeriveWithFlags()
  8074 ms     | 0x70e0 basekey:0x7fda1cd8de00
  8074 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8074 ms     | 0x70e0 ret:0x7fda1cdc5e80
  8074 ms     | 0x70e0 PK11_DeriveWithFlags()
  8074 ms     | 0x70e0 basekey:0x7fda1cd8de00
  8074 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8074 ms     | 0x70e0 ret:0x7fda1cdc4900
  8074 ms     | 0x70e0 PK11_DeriveWithFlags()
  8074 ms     | 0x70e0 basekey:0x7fda1cd0df00
  8074 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8074 ms     | 0x70e0 ret:0x7fda1d1b4680
  8074 ms     | 0x70e0 PK11_DeriveWithFlags()
  8074 ms     | 0x70e0 basekey:0x7fda1cd0df00
  8074 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8074 ms     | 0x70e0 ret:0x7fda1d1b5200
  8074 ms     | 0x70e0 PK11_DeriveWithFlags()
  8074 ms     | 0x70e0 basekey:0x7fda1cdc5e80
  8074 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8075 ms     | 0x70e0 ret:0x7fda1d1b5200
  8075 ms     | 0x70e0 PK11_DeriveWithFlags()
  8075 ms     | 0x70e0 basekey:0x7fda1cdc5e80
  8075 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8075 ms     | 0x70e0 ret:0x7fda1d1b5980
  8075 ms     | 0x70e0 PK11_DeriveWithFlags()
  8075 ms     | 0x70e0 basekey:0x7fda1cd0df00
  8075 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8075 ms     | 0x70e0 ret:0x7fda1cd8d100
  8075 ms     | 0x70e0 PK11_Encrypt()
  8075 ms     | 0x70e0 symkey:0x7fda1d1b4680
  8075 ms     | 0x70e0 PK11_DeriveWithFlags()
  8075 ms     | 0x70e0 basekey:0x7fda1cdc5c00
  8075 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8075 ms     | 0x70e0 ret:0x7fda1cd8d100
  8075 ms     | 0x70e0 PK11_DeriveWithFlags()
  8075 ms     | 0x70e0 basekey:0x7fda1cdc5c00
  8075 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8075 ms     | 0x70e0 ret:0x7fda1d1b5980
  8075 ms     | 0x70e0 PK11_DeriveWithFlags()
  8075 ms     | 0x70e0 basekey:0x7fda1cd8de00
  8076 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8076 ms     | 0x70e0 ret:0x7fda1d1b4680
  8076 ms     | 0x70e0 SECKEY_DestroyPrivateKey()
  8076 ms     | 0x70e0 privk:0x7fda1b859820::7fda1b859820  f0 81 83 1c                                      ....
  8076 ms     | 0x70e0 privk:0x7fda1b859820::7fda1b859820  e5 e5 e5 e5                                      ....
  8076 ms     | 0x70e0 SECKEY_DestroyPrivateKey()
  8076 ms     | 0x70e0 privk:0x7fda1b720020::7fda1b720020  10 d5 1d 1d                                      ....
  8076 ms     | 0x70e0 privk:0x7fda1b720020::7fda1b720020  e5 e5 e5 e5                                      ....
  8076 ms  0x70e0 SSL_AuthCertificateComplete()
  8076 ms  0x70e0 fd:0x7fda1d9d08e0
  8076 ms  0x70e0 err:0x0
  8076 ms     | 0x70e0 PK11_DeriveWithFlags()
  8076 ms     | 0x70e0 basekey:0x7fda1cdc5f80
  8076 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8076 ms     | 0x70e0 ret:0x7fda1cdd1580
  8076 ms     | 0x70e0 PK11_DeriveWithFlags()
  8076 ms     | 0x70e0 basekey:0x7fda1cdc5f80
  8076 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8076 ms     | 0x70e0 ret:0x7fda1cd0df00
  8076 ms     | 0x70e0 PK11_DeriveWithFlags()
  8076 ms     | 0x70e0 basekey:0x7fda1cdc5f80
  8076 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8076 ms     | 0x70e0 ret:0x7fda1cd8de00
  8076 ms     | 0x70e0 PK11_DeriveWithFlags()
  8076 ms     | 0x70e0 basekey:0x7fda1cdc5b00
  8076 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8077 ms     | 0x70e0 ret:0x7fda1d1b5980
  8077 ms     | 0x70e0 PK11_DeriveWithFlags()
  8077 ms     | 0x70e0 basekey:0x7fda1cdc5b00
  8077 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8077 ms     | 0x70e0 ret:0x7fda1b8f0c80
  8077 ms     | 0x70e0 PK11_DeriveWithFlags()
  8077 ms     | 0x70e0 basekey:0x7fda1cd0df00
  8077 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8077 ms     | 0x70e0 ret:0x7fda1b8f0c80
  8077 ms     | 0x70e0 PK11_DeriveWithFlags()
  8077 ms     | 0x70e0 basekey:0x7fda1cd0df00
  8077 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8077 ms     | 0x70e0 ret:0x7fda1cd8e500
  8077 ms     | 0x70e0 PK11_DeriveWithFlags()
  8077 ms     | 0x70e0 basekey:0x7fda1cdc5b00
  8077 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8077 ms     | 0x70e0 ret:0x7fda1cdc5d00
  8077 ms     | 0x70e0 PK11_Encrypt()
  8077 ms     | 0x70e0 symkey:0x7fda1d1b5980
  8077 ms     | 0x70e0 PK11_DeriveWithFlags()
  8077 ms     | 0x70e0 basekey:0x7fda1cdd1580
  8077 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8077 ms     | 0x70e0 ret:0x7fda1cdc5d00
  8077 ms     | 0x70e0 PK11_DeriveWithFlags()
  8077 ms     | 0x70e0 basekey:0x7fda1cdd1580
  8077 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8077 ms     | 0x70e0 ret:0x7fda1cd8e500
  8077 ms     | 0x70e0 PK11_DeriveWithFlags()
  8077 ms     | 0x70e0 basekey:0x7fda1cdc5f80
  8077 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8077 ms     | 0x70e0 ret:0x7fda1d1b5980
  8077 ms     | 0x70e0 SECKEY_DestroyPrivateKey()
  8077 ms     | 0x70e0 privk:0x7fda1d38f020::7fda1d38f020  f0 81 9d 21                                      ...!
  8078 ms     | 0x70e0 privk:0x7fda1d38f020::7fda1d38f020  e5 e5 e5 e5                                      ....
  8078 ms     | 0x70e0 SECKEY_DestroyPrivateKey()
  8078 ms     | 0x70e0 privk:0x7fda1d386820::7fda1d386820  50 31 93 21                                      P1.!
  8078 ms     | 0x70e0 privk:0x7fda1d386820::7fda1d386820  e5 e5 e5 e5                                      ....
  8079 ms  0x70e0 PK11_Encrypt()
  8079 ms  0x70e0 symkey:0x7fda1cdc5d00
  8079 ms  0x70e0 PK11_Encrypt()
  8079 ms  0x70e0 symkey:0x7fda1cdc5d00
  8080 ms  0x70e0 PK11_Encrypt()
  8080 ms  0x70e0 symkey:0x7fda1cd8d100
  8081 ms  0x70e0 PR_Connect()
  8081 ms  0x70e0 fd:0x7fda2192d3d0
  8081 ms  0x70e0 PK11_Encrypt()
  8081 ms  0x70e0 symkey:0x7fda1cdc5d00
           /* TID 0x70e8 */
  8100 ms  0x70e8 PR_Close()
  8100 ms  0x70e8 fd:0x7fda1ba9e850
           /* TID 0x7172 */
  8100 ms  0x7172 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8100 ms  0x7172 ret:0x0
  8100 ms  0x7172 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8100 ms  0x7172 ret:0x0
           /* TID 0x70e0 */
  8100 ms  0x70e0 SSL_AuthCertificateComplete()
  8100 ms  0x70e0 fd:0x7fda1d1abe50
  8100 ms  0x70e0 err:0x0
  8100 ms     | 0x70e0 PK11_DeriveWithFlags()
  8100 ms     | 0x70e0 basekey:0x7fda1cdc4d00
  8101 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8101 ms     | 0x70e0 ret:0x7fda1cdc5480
  8101 ms     | 0x70e0 PK11_DeriveWithFlags()
  8101 ms     | 0x70e0 basekey:0x7fda1cdc4d00
  8101 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8101 ms     | 0x70e0 ret:0x7fda1cdc5b00
  8101 ms     | 0x70e0 PK11_DeriveWithFlags()
  8101 ms     | 0x70e0 basekey:0x7fda1cdc4d00
  8101 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8101 ms     | 0x70e0 ret:0x7fda1cdc5f80
  8101 ms     | 0x70e0 PK11_DeriveWithFlags()
  8101 ms     | 0x70e0 basekey:0x7fda1cd8dd80
  8101 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8101 ms     | 0x70e0 ret:0x7fda1cd8e500
  8101 ms     | 0x70e0 PK11_DeriveWithFlags()
  8101 ms     | 0x70e0 basekey:0x7fda1cd8dd80
  8101 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8101 ms     | 0x70e0 ret:0x7fda1d3de400
  8101 ms     | 0x70e0 PK11_DeriveWithFlags()
  8101 ms     | 0x70e0 basekey:0x7fda1cdc5b00
  8101 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8101 ms     | 0x70e0 ret:0x7fda1d3de400
  8101 ms     | 0x70e0 PK11_DeriveWithFlags()
  8101 ms     | 0x70e0 basekey:0x7fda1cdc5b00
  8101 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8101 ms     | 0x70e0 ret:0x7fda1d3de480
  8101 ms     | 0x70e0 PK11_DeriveWithFlags()
  8101 ms     | 0x70e0 basekey:0x7fda1cd8dd80
  8101 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8101 ms     | 0x70e0 ret:0x7fda1cdc4a80
  8101 ms     | 0x70e0 PK11_Encrypt()
  8101 ms     | 0x70e0 symkey:0x7fda1cd8e500
  8101 ms     | 0x70e0 PK11_DeriveWithFlags()
  8101 ms     | 0x70e0 basekey:0x7fda1cdc5480
  8101 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8101 ms     | 0x70e0 ret:0x7fda1cdc4a80
  8101 ms     | 0x70e0 PK11_DeriveWithFlags()
  8101 ms     | 0x70e0 basekey:0x7fda1cdc5480
  8101 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8101 ms     | 0x70e0 ret:0x7fda1d3de480
  8101 ms     | 0x70e0 PK11_DeriveWithFlags()
  8101 ms     | 0x70e0 basekey:0x7fda1cdc4d00
  8101 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8101 ms     | 0x70e0 ret:0x7fda1cd8e500
  8102 ms     | 0x70e0 SECKEY_DestroyPrivateKey()
  8102 ms     | 0x70e0 privk:0x7fda1bde1020::7fda1bde1020  00 06 ca 1e                                      ....
  8102 ms     | 0x70e0 privk:0x7fda1bde1020::7fda1bde1020  e5 e5 e5 e5                                      ....
  8102 ms     | 0x70e0 SECKEY_DestroyPrivateKey()
  8102 ms     | 0x70e0 privk:0x7fda1b86b020::7fda1b86b020  80 ad 9a 1d                                      ....
  8102 ms     | 0x70e0 privk:0x7fda1b86b020::7fda1b86b020  e5 e5 e5 e5                                      ....
  8102 ms  0x70e0 PK11_Encrypt()
  8102 ms  0x70e0 symkey:0x7fda1cdc4a80
  8103 ms  0x70e0 PK11_Encrypt()
  8103 ms  0x70e0 symkey:0x7fda1cdc5d00
           /* TID 0x70e8 */
  8108 ms  0x70e8 PR_Close()
  8108 ms  0x70e8 fd:0x7fda217579a0
           /* TID 0x7173 */
  8108 ms  0x7173 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8108 ms  0x7173 ret:0x0
  8108 ms  0x7173 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8109 ms  0x7173 ret:0x0
           /* TID 0x70e0 */
  8109 ms  0x70e0 SSL_AuthCertificateComplete()
  8109 ms  0x70e0 fd:0x7fda1d1ab970
  8109 ms  0x70e0 err:0x0
  8109 ms     | 0x70e0 PK11_DeriveWithFlags()
  8109 ms     | 0x70e0 basekey:0x7fda1cdc5b80
  8109 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8109 ms     | 0x70e0 ret:0x7fda1cd0df80
  8109 ms     | 0x70e0 PK11_DeriveWithFlags()
  8109 ms     | 0x70e0 basekey:0x7fda1cdc5b80
  8109 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8109 ms     | 0x70e0 ret:0x7fda1cd8dd80
  8109 ms     | 0x70e0 PK11_DeriveWithFlags()
  8109 ms     | 0x70e0 basekey:0x7fda1cdc5b80
  8109 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8109 ms     | 0x70e0 ret:0x7fda1cdc4d00
  8109 ms     | 0x70e0 PK11_DeriveWithFlags()
  8109 ms     | 0x70e0 basekey:0x7fda1cdc4b00
  8109 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8109 ms     | 0x70e0 ret:0x7fda1d3de480
  8109 ms     | 0x70e0 PK11_DeriveWithFlags()
  8109 ms     | 0x70e0 basekey:0x7fda1cdc4b00
  8109 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8109 ms     | 0x70e0 ret:0x7fda1cdc4d80
  8109 ms     | 0x70e0 PK11_DeriveWithFlags()
  8109 ms     | 0x70e0 basekey:0x7fda1cd8dd80
  8109 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8109 ms     | 0x70e0 ret:0x7fda1cdc4d80
  8109 ms     | 0x70e0 PK11_DeriveWithFlags()
  8109 ms     | 0x70e0 basekey:0x7fda1cd8dd80
  8109 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8109 ms     | 0x70e0 ret:0x7fda1cdc4e00
  8109 ms     | 0x70e0 PK11_DeriveWithFlags()
  8109 ms     | 0x70e0 basekey:0x7fda1cdc4b00
  8109 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8109 ms     | 0x70e0 ret:0x7fda1cdc5580
  8109 ms     | 0x70e0 PK11_Encrypt()
  8109 ms     | 0x70e0 symkey:0x7fda1d3de480
  8109 ms     | 0x70e0 PK11_DeriveWithFlags()
  8109 ms     | 0x70e0 basekey:0x7fda1cd0df80
  8109 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8109 ms     | 0x70e0 ret:0x7fda1cdc5580
  8109 ms     | 0x70e0 PK11_DeriveWithFlags()
  8109 ms     | 0x70e0 basekey:0x7fda1cd0df80
  8109 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8109 ms     | 0x70e0 ret:0x7fda1cdc4e00
  8109 ms     | 0x70e0 PK11_DeriveWithFlags()
  8109 ms     | 0x70e0 basekey:0x7fda1cdc5b80
  8109 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8110 ms     | 0x70e0 ret:0x7fda1d3de480
  8110 ms     | 0x70e0 SECKEY_DestroyPrivateKey()
  8110 ms     | 0x70e0 privk:0x7fda1cca6820::7fda1cca6820  40 b7 92 21                                      @..!
  8110 ms     | 0x70e0 privk:0x7fda1cca6820::7fda1cca6820  e5 e5 e5 e5                                      ....
  8110 ms     | 0x70e0 SECKEY_DestroyPrivateKey()
  8110 ms     | 0x70e0 privk:0x7fda1bde4820::7fda1bde4820  d0 a3 75 21                                      ..u!
  8110 ms     | 0x70e0 privk:0x7fda1bde4820::7fda1bde4820  e5 e5 e5 e5                                      ....
  8110 ms  0x70e0 PK11_Encrypt()
  8110 ms  0x70e0 symkey:0x7fda1cdc5580
  8110 ms  0x70e0 PK11_Encrypt()
  8110 ms  0x70e0 symkey:0x7fda1cdc5d00
  8141 ms  0x70e0 PK11_DeriveWithFlags()
  8141 ms  0x70e0 basekey:0x7fda1d1b4680
  8141 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8141 ms  0x70e0 ret:0x7fda1cdc4a00
  8141 ms  0x70e0 PK11_DeriveWithFlags()
  8141 ms  0x70e0 basekey:0x7fda1d1b4680
  8141 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8142 ms  0x70e0 ret:0x7fda1cdc4a00
  8142 ms  0x70e0 PR_Close()
  8142 ms  0x70e0 fd:0x7fda1d9d0880
  8142 ms     | 0x70e0 PK11_Encrypt()
  8142 ms     | 0x70e0 symkey:0x7fda1cd8d100
  8146 ms  0x70e0 PK11_DeriveWithFlags()
  8146 ms  0x70e0 basekey:0x7fda1d1b5980
  8146 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8146 ms  0x70e0 ret:0x7fda1cdc4900
  8146 ms  0x70e0 PK11_DeriveWithFlags()
  8146 ms  0x70e0 basekey:0x7fda1d1b5980
  8147 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8147 ms  0x70e0 ret:0x7fda1cdc4900
  8170 ms  0x70e0 PK11_DeriveWithFlags()
  8170 ms  0x70e0 basekey:0x7fda1cd8e500
  8171 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8171 ms  0x70e0 ret:0x7fda1cdc4900
  8171 ms  0x70e0 PK11_DeriveWithFlags()
  8171 ms  0x70e0 basekey:0x7fda1cd8e500
  8171 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8171 ms  0x70e0 ret:0x7fda1cdc4900
  8171 ms  0x70e0 PR_Close()
  8171 ms  0x70e0 fd:0x7fda1d1abe50
  8171 ms     | 0x70e0 PK11_Encrypt()
  8171 ms     | 0x70e0 symkey:0x7fda1cdc4a80
  8185 ms  0x70e0 PK11_DeriveWithFlags()
  8185 ms  0x70e0 basekey:0x7fda1d3de480
  8185 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8185 ms  0x70e0 ret:0x7fda1cdc5f80
  8185 ms  0x70e0 PK11_DeriveWithFlags()
  8185 ms  0x70e0 basekey:0x7fda1d3de480
  8185 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8185 ms  0x70e0 ret:0x7fda1cdc5f80
  8185 ms  0x70e0 PR_Close()
  8185 ms  0x70e0 fd:0x7fda1d1ab970
  8185 ms     | 0x70e0 PK11_Encrypt()
  8185 ms     | 0x70e0 symkey:0x7fda1cdc5580
  8217 ms  0x70e0 PK11_Encrypt()
  8217 ms  0x70e0 symkey:0x7fda1cdc5d00
  8328 ms  0x70e0 SSL_ImportFD()
  8328 ms  0x70e0 ret:0x7fda1d9d0880
  8328 ms  0x70e0 SSL_AuthCertificateHook()
  8328 ms  0x70e0 fd:0x7fda1d9d0880
  8328 ms  0x70e0 ret:0x0
  8328 ms  0x70e0 PR_Connect()
  8328 ms  0x70e0 fd:0x7fda1d9d0880
           /* TID 0x70e8 */
  8331 ms  0x70e8 PR_Close()
  8331 ms  0x70e8 fd:0x7fda1d1abe80
  8359 ms  0x70e8 PR_Close()
  8359 ms  0x70e8 fd:0x7fda1b88de50
  8365 ms  0x70e8 PR_Close()
  8365 ms  0x70e8 fd:0x7fda1b88de50
  8367 ms  0x70e8 PR_Close()
  8367 ms  0x70e8 fd:0x7fda1b88de50
           /* TID 0x70e0 */
  8396 ms  0x70e0 SECKEY_CreateECPrivateKey()
  8396 ms  0x70e0 cx:0x7fda0aa0ade8
  8397 ms     | 0x70e0 EC_ValidatePublicKey()
  8397 ms     | 0x70e0 ret:0x0
  8397 ms  0x70e0 ret:0x7fda1b86c020::7fda1b86c020  60 a0 9a 1d                                      `...
  8397 ms  0x70e0 SECKEY_CreateECPrivateKey()
  8397 ms  0x70e0 cx:0x7fda0aa0ade8
  8398 ms     | 0x70e0 EC_ValidatePublicKey()
  8399 ms     | 0x70e0 ret:0x0
  8399 ms  0x70e0 ret:0x7fda1bde2020::7fda1bde2020  20 04 ca 1e                                       ...
  8421 ms  0x70e0 PK11_Encrypt()
  8421 ms  0x70e0 symkey:0x7fda1cdc5d00
  8443 ms  0x70e0 PK11_Encrypt()
  8443 ms  0x70e0 symkey:0x7fda1cdc5d00
  8447 ms  0x70e0 PK11_Encrypt()
  8447 ms  0x70e0 symkey:0x7fda1cdc5d00
  8468 ms  0x70e0 PK11_Derive()
  8468 ms  0x70e0 basekey:0x7fda1cdc4d00
  8468 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8468 ms  0x70e0 ret:0x7fda1cd8dd80
  8468 ms  0x70e0 PK11_PubDeriveWithKDF()
  8468 ms  0x70e0 seckey:0x7fda1b86c020
  8468 ms     | 0x70e0 EC_ValidatePublicKey()
  8468 ms     | 0x70e0 ret:0x0
  8468 ms  0x70e0 ret:0x7fda1cdc4d00
  8468 ms  SECKEY_ECParamsToKeySize()
  8468 ms  0x70e0 ret:0xff
  8468 ms  0x70e0 PK11_DeriveWithFlags()
  8468 ms  0x70e0 basekey:0x7fda1cd8dd80
  8468 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8468 ms  0x70e0 ret:0x7fda1cd0df80
  8468 ms  0x70e0 PK11_Derive()
  8468 ms  0x70e0 basekey:0x7fda1cdc4d00
  8468 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8468 ms  0x70e0 ret:0x7fda1d3de480
  8468 ms  0x70e0 PK11_DeriveWithFlags()
  8468 ms  0x70e0 basekey:0x7fda1d3de480
  8468 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8468 ms  0x70e0 ret:0x7fda1cd8dd80
  8468 ms  0x70e0 PK11_DeriveWithFlags()
  8468 ms  0x70e0 basekey:0x7fda1d3de480
  8468 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8468 ms  0x70e0 ret:0x7fda1cdc4d00
  8468 ms  0x70e0 PK11_DeriveWithFlags()
  8468 ms  0x70e0 basekey:0x7fda1d3de480
  8468 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8469 ms  0x70e0 ret:0x7fda1cd0df80
  8469 ms  0x70e0 PK11_Derive()
  8469 ms  0x70e0 basekey:0x7fda1cdc4d80
  8469 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8469 ms  0x70e0 ret:0x7fda1cdc5580
  8469 ms  0x70e0 PK11_DeriveWithFlags()
  8469 ms  0x70e0 basekey:0x7fda1cdc4d00
  8469 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8469 ms  0x70e0 ret:0x7fda1d3de480
  8469 ms  0x70e0 PK11_DeriveWithFlags()
  8469 ms  0x70e0 basekey:0x7fda1cdc4d00
  8469 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8469 ms  0x70e0 ret:0x7fda1cd0df80
           /* TID 0x7142 */
  8469 ms  0x7142 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8470 ms  0x7142 ret:0x0
  8470 ms  0x7142 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8470 ms  0x7142 ret:0x0
           /* TID 0x70e0 */
  8470 ms  0x70e0 PK11_DeriveWithFlags()
  8470 ms  0x70e0 basekey:0x7fda1cdc4d00
  8470 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8470 ms  0x70e0 ret:0x7fda1cd0df80
  8470 ms  0x70e0 SSL_AuthCertificateComplete()
  8470 ms  0x70e0 fd:0x7fda1d9d0880
  8470 ms  0x70e0 err:0x0
  8470 ms     | 0x70e0 PK11_DeriveWithFlags()
  8470 ms     | 0x70e0 basekey:0x7fda1cdc5580
  8470 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8470 ms     | 0x70e0 ret:0x7fda1cd0df80
  8470 ms     | 0x70e0 PK11_DeriveWithFlags()
  8470 ms     | 0x70e0 basekey:0x7fda1cdc5580
  8470 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8470 ms     | 0x70e0 ret:0x7fda1cdc4d80
  8470 ms     | 0x70e0 PK11_DeriveWithFlags()
  8470 ms     | 0x70e0 basekey:0x7fda1cdc5580
  8470 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8470 ms     | 0x70e0 ret:0x7fda1cdc5f80
  8470 ms     | 0x70e0 PK11_DeriveWithFlags()
  8470 ms     | 0x70e0 basekey:0x7fda1cd8dd80
  8470 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8470 ms     | 0x70e0 ret:0x7fda1cdc5b00
  8470 ms     | 0x70e0 PK11_DeriveWithFlags()
  8470 ms     | 0x70e0 basekey:0x7fda1cd8dd80
  8470 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8470 ms     | 0x70e0 ret:0x7fda1cdc5480
  8470 ms     | 0x70e0 PK11_DeriveWithFlags()
  8470 ms     | 0x70e0 basekey:0x7fda1cdc4d80
  8470 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8470 ms     | 0x70e0 ret:0x7fda1cdc5480
  8470 ms     | 0x70e0 PK11_DeriveWithFlags()
  8470 ms     | 0x70e0 basekey:0x7fda1cdc4d80
  8470 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8470 ms     | 0x70e0 ret:0x7fda1cd8e500
  8470 ms     | 0x70e0 PK11_DeriveWithFlags()
  8470 ms     | 0x70e0 basekey:0x7fda1cd8dd80
  8470 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8470 ms     | 0x70e0 ret:0x7fda1d3de480
  8470 ms     | 0x70e0 PK11_Encrypt()
  8470 ms     | 0x70e0 symkey:0x7fda1cdc5b00
  8471 ms     | 0x70e0 PK11_DeriveWithFlags()
  8471 ms     | 0x70e0 basekey:0x7fda1cd0df80
  8471 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8471 ms     | 0x70e0 ret:0x7fda1d3de480
  8471 ms     | 0x70e0 PK11_DeriveWithFlags()
  8471 ms     | 0x70e0 basekey:0x7fda1cd0df80
  8471 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8471 ms     | 0x70e0 ret:0x7fda1cd8e500
  8471 ms     | 0x70e0 PK11_DeriveWithFlags()
  8471 ms     | 0x70e0 basekey:0x7fda1cdc5580
  8471 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
  8471 ms     | 0x70e0 ret:0x7fda1cdc5b00
  8471 ms     | 0x70e0 SECKEY_DestroyPrivateKey()
  8471 ms     | 0x70e0 privk:0x7fda1bde2020::7fda1bde2020  20 04 ca 1e                                       ...
  8471 ms     | 0x70e0 privk:0x7fda1bde2020::7fda1bde2020  e5 e5 e5 e5                                      ....
  8471 ms     | 0x70e0 SECKEY_DestroyPrivateKey()
  8471 ms     | 0x70e0 privk:0x7fda1b86c020::7fda1b86c020  60 a0 9a 1d                                      `...
  8471 ms     | 0x70e0 privk:0x7fda1b86c020::7fda1b86c020  e5 e5 e5 e5                                      ....
  8471 ms  0x70e0 PK11_Encrypt()
  8471 ms  0x70e0 symkey:0x7fda1d3de480
  8471 ms  0x70e0 PK11_Encrypt()
  8471 ms  0x70e0 symkey:0x7fda1d3de480
           /* TID 0x70e8 */
  8492 ms  0x70e8 PR_Close()
  8492 ms  0x70e8 fd:0x7fda1ec9a3a0
           /* TID 0x70e0 */
  8502 ms  0x70e0 PK11_Encrypt()
  8502 ms  0x70e0 symkey:0x7fda1cdc5d00
  8538 ms  0x70e0 PK11_DeriveWithFlags()
  8538 ms  0x70e0 basekey:0x7fda1cdc5b00
  8538 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8538 ms  0x70e0 ret:0x7fda1cdc4d00
  8538 ms  0x70e0 PK11_DeriveWithFlags()
  8538 ms  0x70e0 basekey:0x7fda1cdc5b00
  8538 ms     | 0x70e0 PK11_DeriveWithTemplate()
  8538 ms  0x70e0 ret:0x7fda1cdc4d00
           /* TID 0x70e8 */
  8562 ms  0x70e8 PR_Close()
  8562 ms  0x70e8 fd:0x7fda1ba9ee80
  8562 ms  0x70e8 PR_Close()
  8562 ms  0x70e8 fd:0x7fda217fb100
           /* TID 0x70e0 */
  8602 ms  0x70e0 PK11_Encrypt()
  8602 ms  0x70e0 symkey:0x7fda1cdc5d00
  8605 ms  0x70e0 PK11_Encrypt()
  8605 ms  0x70e0 symkey:0x7fda1d3de480
           /* TID 0x70e8 */
  8606 ms  0x70e8 PR_Close()
  8606 ms  0x70e8 fd:0x7fda1cdbbb80
  8631 ms  0x70e8 PR_Close()
  8631 ms  0x70e8 fd:0x7fda1bdaa850
           /* TID 0x70e0 */
  8653 ms  0x70e0 SSL_ImportFD()
  8653 ms  0x70e0 ret:0x7fda21d02370
  8653 ms  0x70e0 SSL_AuthCertificateHook()
  8653 ms  0x70e0 fd:0x7fda21d02370
  8653 ms  0x70e0 ret:0x0
  8653 ms  0x70e0 PR_Connect()
  8653 ms  0x70e0 fd:0x7fda21d02370
           /* TID 0x70e8 */
  8700 ms  0x70e8 PR_Close()
  8700 ms  0x70e8 fd:0x7fda21aee6d0
           /* TID 0x70e0 */
  8873 ms  0x70e0 SSL_ImportFD()
  8873 ms  0x70e0 ret:0x7fda21d020d0
  8873 ms  0x70e0 SSL_AuthCertificateHook()
  8873 ms  0x70e0 fd:0x7fda21d020d0
  8873 ms  0x70e0 ret:0x0
  8873 ms  0x70e0 PR_Connect()
  8873 ms  0x70e0 fd:0x7fda21d020d0
  8901 ms  0x70e0 PK11_Encrypt()
  8901 ms  0x70e0 symkey:0x7fda1cdc5d00
  8903 ms  0x70e0 SSL_ImportFD()
  8903 ms  0x70e0 ret:0x7fda21d563d0
  8903 ms  0x70e0 SSL_AuthCertificateHook()
  8903 ms  0x70e0 fd:0x7fda21d563d0
  8903 ms  0x70e0 ret:0x0
  8904 ms  0x70e0 PR_Connect()
  8904 ms  0x70e0 fd:0x7fda21d563d0
  8942 ms  0x70e0 SSL_ImportFD()
  8942 ms  0x70e0 ret:0x7fda21d56100
  8942 ms  0x70e0 SSL_AuthCertificateHook()
  8942 ms  0x70e0 fd:0x7fda21d56100
  8942 ms  0x70e0 ret:0x0
  8942 ms  0x70e0 PR_Connect()
  8942 ms  0x70e0 fd:0x7fda21d56100
           /* TID 0x70e8 */
  8976 ms  0x70e8 PR_Close()
  8976 ms  0x70e8 fd:0x7fda1ba9ee80
           /* TID 0x70e0 */
  8996 ms  0x70e0 SECKEY_CreateECPrivateKey()
  8996 ms  0x70e0 cx:0x7fda0aa0b2c8
  8998 ms     | 0x70e0 EC_ValidatePublicKey()
  8998 ms     | 0x70e0 ret:0x0
  8998 ms  0x70e0 ret:0x7fda21ab9020::7fda21ab9020  80 3d d8 21                                      .=.!
  8998 ms  0x70e0 SECKEY_CreateECPrivateKey()
  8998 ms  0x70e0 cx:0x7fda0aa0b2c8
  8999 ms     | 0x70e0 EC_ValidatePublicKey()
  9000 ms     | 0x70e0 ret:0x0
  9000 ms  0x70e0 ret:0x7fda21e45820::7fda21e45820  b0 8a d9 21                                      ...!
  9123 ms  0x70e0 SSL_ImportFD()
  9123 ms  0x70e0 ret:0x7fda21d56400
  9123 ms  0x70e0 SSL_AuthCertificateHook()
  9123 ms  0x70e0 fd:0x7fda21d56400
  9123 ms  0x70e0 ret:0x0
  9123 ms  0x70e0 PR_Connect()
  9123 ms  0x70e0 fd:0x7fda21d56400
  9195 ms  0x70e0 SSL_ImportFD()
  9195 ms  0x70e0 ret:0x7fda21d848e0
  9195 ms  0x70e0 SSL_AuthCertificateHook()
  9195 ms  0x70e0 fd:0x7fda21d848e0
  9195 ms  0x70e0 ret:0x0
  9195 ms  0x70e0 PR_Connect()
  9195 ms  0x70e0 fd:0x7fda21d848e0
  9215 ms  0x70e0 SECKEY_CreateECPrivateKey()
  9215 ms  0x70e0 cx:0x7fda0aa0c308
  9215 ms     | 0x70e0 EC_ValidatePublicKey()
  9215 ms     | 0x70e0 ret:0x0
  9216 ms  0x70e0 ret:0x7fda21e4a820::7fda21e4a820  d0 8d d9 21                                      ...!
  9216 ms  0x70e0 SECKEY_CreateECPrivateKey()
  9216 ms  0x70e0 cx:0x7fda0aa0c308
  9216 ms     | 0x70e0 EC_ValidatePublicKey()
  9218 ms     | 0x70e0 ret:0x0
  9218 ms  0x70e0 ret:0x7fda21e4f020::7fda21e4f020  80 6d db 21                                      .m.!
  9239 ms  0x70e0 SECKEY_CreateECPrivateKey()
  9239 ms  0x70e0 cx:0x7fda0aa0c648
  9240 ms     | 0x70e0 EC_ValidatePublicKey()
  9240 ms     | 0x70e0 ret:0x0
  9240 ms  0x70e0 ret:0x7fda21e9b820::7fda21e9b820  70 c4 e2 21                                      p..!
  9240 ms  0x70e0 SECKEY_CreateECPrivateKey()
  9240 ms  0x70e0 cx:0x7fda0aa0c648
  9242 ms     | 0x70e0 EC_ValidatePublicKey()
  9246 ms     | 0x70e0 ret:0x0
  9246 ms  0x70e0 ret:0x7fda21e9e020::7fda21e9e020  90 a7 e7 21                                      ...!
  9261 ms  0x70e0 SECKEY_CreateECPrivateKey()
  9261 ms  0x70e0 cx:0x7fda0aa0c4a8
  9262 ms     | 0x70e0 EC_ValidatePublicKey()
  9262 ms     | 0x70e0 ret:0x0
  9262 ms  0x70e0 ret:0x7fda21ea1820::7fda21ea1820  40 ac e7 21                                      @..!
  9263 ms  0x70e0 SECKEY_CreateECPrivateKey()
  9263 ms  0x70e0 cx:0x7fda0aa0c4a8
  9264 ms     | 0x70e0 EC_ValidatePublicKey()
  9266 ms     | 0x70e0 ret:0x0
  9267 ms  0x70e0 ret:0x7fda21ea8020::7fda21ea8020  f0 66 f1 21                                      .f.!
  9405 ms  SECKEY_ECParamsToKeySize()
  9405 ms  0x70e0 ret:0x100
  9405 ms  0x70e0 SECKEY_CreateECPrivateKey()
  9405 ms  0x70e0 cx:0x7fda0aa0b2c8
  9406 ms     | 0x70e0 EC_ValidatePublicKey()
           /* TID 0x70e8 */
  9408 ms  0x70e8 PR_Close()
  9408 ms  0x70e8 fd:0x7fda21d84ac0
  9408 ms  0x70e8 PR_Close()
  9408 ms  0x70e8 fd:0x7fda21d84d00
  9408 ms  0x70e8 PR_Close()
  9408 ms  0x70e8 fd:0x7fda21d84e80
  9408 ms  0x70e8 PR_Close()
  9408 ms  0x70e8 fd:0x7fda21d84f10
  9408 ms  0x70e8 PR_Close()
  9408 ms  0x70e8 fd:0x7fda21e130d0
  9409 ms  0x70e8 PR_Close()
  9409 ms  0x70e8 fd:0x7fda21d84ac0
  9409 ms  0x70e8 PR_Close()
  9409 ms  0x70e8 fd:0x7fda21d84d00
  9409 ms  0x70e8 PR_Close()
  9409 ms  0x70e8 fd:0x7fda21d84e80
  9409 ms  0x70e8 PR_Close()
  9409 ms  0x70e8 fd:0x7fda21d84f10
  9409 ms  0x70e8 PR_Close()
  9409 ms  0x70e8 fd:0x7fda21e130d0
  9409 ms  0x70e8 PR_Close()
  9409 ms  0x70e8 fd:0x7fda21e13130
  9409 ms  0x70e8 PR_Close()
  9409 ms  0x70e8 fd:0x7fda21e13be0
  9409 ms  0x70e8 PR_Close()
  9409 ms  0x70e8 fd:0x7fda21e13c40
  9409 ms  0x70e8 PR_Close()
  9409 ms  0x70e8 fd:0x7fda21e13d00
           /* TID 0x70e0 */
  9410 ms     | 0x70e0 ret:0x0
  9410 ms  0x70e0 ret:0x7fda2219c020::7fda2219c020  b0 b5 f5 21                                      ...!
  9411 ms  0x70e0 PK11_PubDeriveWithKDF()
  9411 ms  0x70e0 seckey:0x7fda2219c020
  9411 ms     | 0x70e0 EC_ValidatePublicKey()
  9413 ms     | 0x70e0 ret:0x0
  9416 ms  0x70e0 ret:0x7fda1cdc4d00
  9416 ms  0x70e0 PK11_DeriveWithFlags()
  9416 ms  0x70e0 basekey:0x7fda1cdc4d00
  9416 ms     | 0x70e0 PK11_DeriveWithTemplate()
  9416 ms  0x70e0 ret:0x7fda1cd8dd80
  9416 ms  0x70e0 PK11_Derive()
  9416 ms  0x70e0 basekey:0x7fda1cd8dd80
  9416 ms     | 0x70e0 PK11_DeriveWithTemplate()
  9417 ms  0x70e0 ret:0x7fda1cdc5580
  9417 ms  0x70e0 SECKEY_DestroyPrivateKey()
  9417 ms  0x70e0 privk:0x7fda2219c020::7fda2219c020  b0 b5 f5 21                                      ...!
  9417 ms  0x70e0 privk:0x7fda2219c020::7fda2219c020  e5 e5 e5 e5                                      ....
  9417 ms  0x70e0 PK11_Encrypt()
  9417 ms  0x70e0 symkey:0x7fda1ec46980
           /* TID 0x70e8 */
  9445 ms  0x70e8 PR_Close()
  9445 ms  0x70e8 fd:0x7fda21d56cd0
           /* TID 0x7174 */
  9445 ms  0x7174 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9445 ms  0x7174 ret:0x0
  9445 ms  0x7174 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9446 ms  0x7174 ret:0x0
           /* TID 0x70e0 */
  9446 ms  0x70e0 SSL_AuthCertificateComplete()
  9446 ms  0x70e0 fd:0x7fda21d02370
  9446 ms  0x70e0 err:0x0
  9447 ms  0x70e0 PK11_Encrypt()
  9447 ms  0x70e0 symkey:0x7fda1ec46980
  9448 ms  0x70e0 PK11_Encrypt()
  9448 ms  0x70e0 symkey:0x7fda1ec46980
  9471 ms  0x70e0 SECKEY_CreateECPrivateKey()
  9471 ms  0x70e0 cx:0x7fda0aa0c7e8
  9472 ms     | 0x70e0 EC_ValidatePublicKey()
  9472 ms     | 0x70e0 ret:0x0
  9472 ms  0x70e0 ret:0x7fda2219c020::7fda2219c020  90 c7 e2 21                                      ...!
  9473 ms  0x70e0 SECKEY_CreateECPrivateKey()
  9473 ms  0x70e0 cx:0x7fda0aa0c7e8
  9474 ms     | 0x70e0 EC_ValidatePublicKey()
  9476 ms     | 0x70e0 ret:0x0
  9476 ms  0x70e0 ret:0x7fda2219e020::7fda2219e020  c0 b4 f5 21                                      ...!
  9485 ms  0x70e0 SECKEY_CreateECPrivateKey()
  9485 ms  0x70e0 cx:0x7fda0aa0cb28
  9486 ms     | 0x70e0 EC_ValidatePublicKey()
  9486 ms     | 0x70e0 ret:0x0
  9486 ms  0x70e0 ret:0x7fda221a0820::7fda221a0820  50 b6 f5 21                                      P..!
  9486 ms  0x70e0 SECKEY_CreateECPrivateKey()
  9486 ms  0x70e0 cx:0x7fda0aa0cb28
  9487 ms     | 0x70e0 EC_ValidatePublicKey()
  9490 ms     | 0x70e0 ret:0x0
  9490 ms  0x70e0 ret:0x7fda221a2820::7fda221a2820  a0 eb f7 21                                      ...!
  9617 ms  SECKEY_ECParamsToKeySize()
  9617 ms  0x70e0 ret:0x100
  9617 ms  SECKEY_ECParamsToBasePointOrderLen()
  9617 ms  0x70e0 ret:0x100
  9620 ms  SECKEY_ECParamsToBasePointOrderLen()
  9620 ms  0x70e0 ret:0x100
  9621 ms  0x70e0 EC_ValidatePublicKey()
  9625 ms  0x70e0 ret:0x0
  9631 ms  SECKEY_ECParamsToKeySize()
  9631 ms  0x70e0 ret:0x100
  9631 ms  0x70e0 SECKEY_CreateECPrivateKey()
  9631 ms  0x70e0 cx:0x7fda0aa0c308
  9633 ms     | 0x70e0 EC_ValidatePublicKey()
  9637 ms     | 0x70e0 ret:0x0
  9637 ms  0x70e0 ret:0x7fda221aa820::7fda221aa820  00 6b fc 21                                      .k.!
  9637 ms  0x70e0 PK11_PubDeriveWithKDF()
  9637 ms  0x70e0 seckey:0x7fda221aa820
  9638 ms     | 0x70e0 EC_ValidatePublicKey()
  9641 ms     | 0x70e0 ret:0x0
  9644 ms  0x70e0 ret:0x7fda1cdc4d00
  9644 ms  0x70e0 PK11_DeriveWithFlags()
  9644 ms  0x70e0 basekey:0x7fda1cdc4d00
  9644 ms     | 0x70e0 PK11_DeriveWithTemplate()
  9644 ms  0x70e0 ret:0x7fda1cd8e500
  9644 ms  0x70e0 PK11_Derive()
  9644 ms  0x70e0 basekey:0x7fda1cd8e500
  9644 ms     | 0x70e0 PK11_DeriveWithTemplate()
  9644 ms  0x70e0 ret:0x7fda1d3de400
  9644 ms  0x70e0 SECKEY_DestroyPrivateKey()
  9644 ms  0x70e0 privk:0x7fda221aa820::7fda221aa820  00 6b fc 21                                      .k.!
  9644 ms  0x70e0 privk:0x7fda221aa820::7fda221aa820  e5 e5 e5 e5                                      ....
  9645 ms  0x70e0 PK11_Encrypt()
  9645 ms  0x70e0 symkey:0x7fda1ec7dd80
           /* TID 0x7172 */
  9671 ms  0x7172 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9672 ms  0x7172 ret:0x0
  9672 ms  0x7172 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9672 ms  0x7172 ret:0x0
           /* TID 0x70e8 */
  9672 ms  0x70e8 PR_Close()
  9672 ms  0x70e8 fd:0x7fda21aee670
           /* TID 0x70e0 */
  9672 ms  0x70e0 SSL_AuthCertificateComplete()
  9672 ms  0x70e0 fd:0x7fda21d020d0
  9672 ms  0x70e0 err:0x0
  9673 ms  0x70e0 PK11_Encrypt()
  9673 ms  0x70e0 symkey:0x7fda1ec7dd80
  9674 ms  0x70e0 PK11_Encrypt()
  9674 ms  0x70e0 symkey:0x7fda1ec7dd80
  9682 ms  SECKEY_ECParamsToKeySize()
  9682 ms  0x70e0 ret:0x100
  9682 ms  0x70e0 SECKEY_CreateECPrivateKey()
  9682 ms  0x70e0 cx:0x7fda0aa0c4a8
  9683 ms     | 0x70e0 EC_ValidatePublicKey()
  9685 ms     | 0x70e0 ret:0x0
  9685 ms  0x70e0 ret:0x7fda221ab020::7fda221ab020  10 a5 fb 21                                      ...!
  9685 ms  0x70e0 PK11_PubDeriveWithKDF()
  9685 ms  0x70e0 seckey:0x7fda221ab020
  9685 ms     | 0x70e0 EC_ValidatePublicKey()
  9687 ms     | 0x70e0 ret:0x0
  9691 ms  0x70e0 ret:0x7fda1cdc4d00
  9691 ms  0x70e0 PK11_DeriveWithFlags()
  9691 ms  0x70e0 basekey:0x7fda1cdc4d00
  9691 ms     | 0x70e0 PK11_DeriveWithTemplate()
  9691 ms  0x70e0 ret:0x7fda1cdc4a80
  9691 ms  0x70e0 PK11_Derive()
  9691 ms  0x70e0 basekey:0x7fda1cdc4a80
  9691 ms     | 0x70e0 PK11_DeriveWithTemplate()
  9691 ms  0x70e0 ret:0x7fda1cdc4900
  9691 ms  0x70e0 SECKEY_DestroyPrivateKey()
  9691 ms  0x70e0 privk:0x7fda221ab020::7fda221ab020  10 a5 fb 21                                      ...!
  9691 ms  0x70e0 privk:0x7fda221ab020::7fda221ab020  e5 e5 e5 e5                                      ....
  9691 ms  0x70e0 PK11_Encrypt()
  9691 ms  0x70e0 symkey:0x7fda1ec7d400
  9692 ms  0x70e0 SSL_AuthCertificateComplete()
  9692 ms  0x70e0 fd:0x7fda21d563d0
  9692 ms  0x70e0 err:0x0
  9692 ms  0x70e0 PK11_Encrypt()
  9692 ms  0x70e0 symkey:0x7fda1ec7d400
  9792 ms  0x70e0 SECKEY_DestroyPrivateKey()
  9792 ms  0x70e0 privk:0x7fda21e45820::7fda21e45820  b0 8a d9 21                                      ...!
  9792 ms  0x70e0 privk:0x7fda21e45820::7fda21e45820  e5 e5 e5 e5                                      ....
  9792 ms  0x70e0 SECKEY_DestroyPrivateKey()
  9792 ms  0x70e0 privk:0x7fda21ab9020::7fda21ab9020  80 3d d8 21                                      .=.!
  9792 ms  0x70e0 privk:0x7fda21ab9020::7fda21ab9020  e5 e5 e5 e5                                      ....
  9793 ms  0x70e0 PK11_Encrypt()
  9793 ms  0x70e0 symkey:0x7fda1ec46980
  9886 ms  SECKEY_ECParamsToKeySize()
  9886 ms  0x70e0 ret:0x100
  9886 ms  SECKEY_ECParamsToBasePointOrderLen()
  9886 ms  0x70e0 ret:0x100
  9886 ms  SECKEY_ECParamsToBasePointOrderLen()
  9886 ms  0x70e0 ret:0x100
  9886 ms  0x70e0 EC_ValidatePublicKey()
  9891 ms  0x70e0 ret:0x0
  9898 ms  SECKEY_ECParamsToKeySize()
  9898 ms  0x70e0 ret:0x100
  9898 ms  0x70e0 SECKEY_CreateECPrivateKey()
  9898 ms  0x70e0 cx:0x7fda0aa0c7e8
  9899 ms     | 0x70e0 EC_ValidatePublicKey()
  9903 ms     | 0x70e0 ret:0x0
  9904 ms  0x70e0 ret:0x7fda21e3e020::7fda21e3e020  b0 da f9 21                                      ...!
  9904 ms  0x70e0 PK11_PubDeriveWithKDF()
  9904 ms  0x70e0 seckey:0x7fda21e3e020
  9904 ms     | 0x70e0 EC_ValidatePublicKey()
  9908 ms     | 0x70e0 ret:0x0
  9912 ms  0x70e0 ret:0x7fda1cdc4d00
  9912 ms  0x70e0 PK11_DeriveWithFlags()
  9912 ms  0x70e0 basekey:0x7fda1cdc4d00
  9912 ms     | 0x70e0 PK11_DeriveWithTemplate()
  9912 ms  0x70e0 ret:0x7fda1cdc5e80
  9912 ms  0x70e0 PK11_Derive()
  9912 ms  0x70e0 basekey:0x7fda1cdc5e80
  9912 ms     | 0x70e0 PK11_DeriveWithTemplate()
  9912 ms  0x70e0 ret:0x7fda1cdc5c00
  9912 ms  0x70e0 SECKEY_DestroyPrivateKey()
  9912 ms  0x70e0 privk:0x7fda21e3e020::7fda21e3e020  b0 da f9 21                                      ...!
  9912 ms  0x70e0 privk:0x7fda21e3e020::7fda21e3e020  e5 e5 e5 e5                                      ....
  9912 ms  0x70e0 PK11_Encrypt()
  9912 ms  0x70e0 symkey:0x7fda1ec93680
  9913 ms  0x70e0 SSL_AuthCertificateComplete()
  9913 ms  0x70e0 fd:0x7fda21d56400
  9913 ms  0x70e0 err:0x0
  9913 ms  0x70e0 PK11_Encrypt()
  9913 ms  0x70e0 symkey:0x7fda1ec93680
 10032 ms  0x70e0 SECKEY_DestroyPrivateKey()
 10032 ms  0x70e0 privk:0x7fda21e4f020::7fda21e4f020  80 6d db 21                                      .m.!
 10032 ms  0x70e0 privk:0x7fda21e4f020::7fda21e4f020  e5 e5 e5 e5                                      ....
 10032 ms  0x70e0 SECKEY_DestroyPrivateKey()
 10032 ms  0x70e0 privk:0x7fda21e4a820::7fda21e4a820  d0 8d d9 21                                      ...!
 10032 ms  0x70e0 privk:0x7fda21e4a820::7fda21e4a820  e5 e5 e5 e5                                      ....
 10033 ms  0x70e0 PK11_Encrypt()
 10033 ms  0x70e0 symkey:0x7fda1ec7dd80
 10035 ms  SECKEY_ECParamsToKeySize()
 10035 ms  0x70e0 ret:0x100
 10035 ms  SECKEY_ECParamsToBasePointOrderLen()
 10035 ms  0x70e0 ret:0x100
 10035 ms  SECKEY_ECParamsToBasePointOrderLen()
 10035 ms  0x70e0 ret:0x100
 10035 ms  0x70e0 EC_ValidatePublicKey()
 10039 ms  0x70e0 ret:0x0
 10044 ms  SECKEY_ECParamsToKeySize()
 10044 ms  0x70e0 ret:0xff
 10044 ms  0x70e0 SECKEY_CreateECPrivateKey()
 10044 ms  0x70e0 cx:0x7fda0aa0cb28
 10046 ms     | 0x70e0 EC_ValidatePublicKey()
 10046 ms     | 0x70e0 ret:0x0
 10046 ms  0x70e0 ret:0x7fda21e45820::7fda21e45820  70 8e d9 21                                      p..!
 10046 ms  0x70e0 PK11_PubDeriveWithKDF()
 10046 ms  0x70e0 seckey:0x7fda21e45820
 10046 ms     | 0x70e0 EC_ValidatePublicKey()
 10046 ms     | 0x70e0 ret:0x0
 10047 ms  0x70e0 ret:0x7fda1cdc4d00
 10047 ms  0x70e0 PK11_DeriveWithFlags()
 10047 ms  0x70e0 basekey:0x7fda1cdc4d00
 10047 ms     | 0x70e0 PK11_DeriveWithTemplate()
 10047 ms  0x70e0 ret:0x7fda1d1b4680
 10047 ms  0x70e0 PK11_Derive()
 10047 ms  0x70e0 basekey:0x7fda1d1b4680
 10047 ms     | 0x70e0 PK11_DeriveWithTemplate()
 10048 ms  0x70e0 ret:0x7fda1d1b5200
 10048 ms  0x70e0 SECKEY_DestroyPrivateKey()
 10048 ms  0x70e0 privk:0x7fda21e45820::7fda21e45820  70 8e d9 21                                      p..!
 10048 ms  0x70e0 privk:0x7fda21e45820::7fda21e45820  e5 e5 e5 e5                                      ....
 10048 ms  0x70e0 PK11_Encrypt()
 10048 ms  0x70e0 symkey:0x7fda1ec93900
 10048 ms  0x70e0 SSL_AuthCertificateComplete()
 10048 ms  0x70e0 fd:0x7fda21d848e0
 10048 ms  0x70e0 err:0x0
 10049 ms  0x70e0 PK11_Encrypt()
 10049 ms  0x70e0 symkey:0x7fda1ec93900
 10080 ms  0x70e0 SECKEY_DestroyPrivateKey()
 10080 ms  0x70e0 privk:0x7fda21ea8020::7fda21ea8020  f0 66 f1 21                                      .f.!
 10080 ms  0x70e0 privk:0x7fda21ea8020::7fda21ea8020  e5 e5 e5 e5                                      ....
 10080 ms  0x70e0 SECKEY_DestroyPrivateKey()
 10080 ms  0x70e0 privk:0x7fda21ea1820::7fda21ea1820  40 ac e7 21                                      @..!
 10080 ms  0x70e0 privk:0x7fda21ea1820::7fda21ea1820  e5 e5 e5 e5                                      ....
 10081 ms  0x70e0 PR_Close()
 10081 ms  0x70e0 fd:0x7fda21d563d0
 10081 ms     | 0x70e0 PK11_Encrypt()
 10081 ms     | 0x70e0 symkey:0x7fda1ec7d400
 10167 ms  0x70e0 SSL_ImportFD()
 10167 ms  0x70e0 ret:0x7fda21d84c40
 10167 ms  0x70e0 SSL_AuthCertificateHook()
 10167 ms  0x70e0 fd:0x7fda21d84c40
 10167 ms  0x70e0 ret:0x0
 10167 ms  0x70e0 PR_Connect()
 10167 ms  0x70e0 fd:0x7fda21d84c40
           /* TID 0x70e8 */
 10180 ms  0x70e8 PR_Close()
 10180 ms  0x70e8 fd:0x7fda1cdbbac0
           /* TID 0x70e0 */
 10193 ms  0x70e0 PK11_Encrypt()
 10193 ms  0x70e0 symkey:0x7fda1ec46980
 10209 ms  0x70e0 PK11_Encrypt()
 10209 ms  0x70e0 symkey:0x7fda1cdc5d00
           /* TID 0x70e8 */
 10279 ms  0x70e8 PR_Close()
 10279 ms  0x70e8 fd:0x7fda21d84b50
           /* TID 0x70e0 */
 10282 ms  0x70e0 PK11_Encrypt()
 10282 ms  0x70e0 symkey:0x7fda1cdc5d00
 10284 ms  0x70e0 PK11_Encrypt()
 10284 ms  0x70e0 symkey:0x7fda1cdc5d00
 10291 ms  0x70e0 SECKEY_DestroyPrivateKey()
 10291 ms  0x70e0 privk:0x7fda2219e020::7fda2219e020  c0 b4 f5 21                                      ...!
 10291 ms  0x70e0 privk:0x7fda2219e020::7fda2219e020  e5 e5 e5 e5                                      ....
 10292 ms  0x70e0 SECKEY_DestroyPrivateKey()
 10292 ms  0x70e0 privk:0x7fda2219c020::7fda2219c020  90 c7 e2 21                                      ...!
 10292 ms  0x70e0 privk:0x7fda2219c020::7fda2219c020  e5 e5 e5 e5                                      ....
 10292 ms  0x70e0 PR_Close()
 10292 ms  0x70e0 fd:0x7fda21d56400
 10292 ms     | 0x70e0 PK11_Encrypt()
 10292 ms     | 0x70e0 symkey:0x7fda1ec93680
 10337 ms  0x70e0 SECKEY_DestroyPrivateKey()
 10337 ms  0x70e0 privk:0x7fda221a2820::7fda221a2820  a0 eb f7 21                                      ...!
 10337 ms  0x70e0 privk:0x7fda221a2820::7fda221a2820  e5 e5 e5 e5                                      ....
 10338 ms  0x70e0 SECKEY_DestroyPrivateKey()
 10338 ms  0x70e0 privk:0x7fda221a0820::7fda221a0820  50 b6 f5 21                                      P..!
 10338 ms  0x70e0 privk:0x7fda221a0820::7fda221a0820  e5 e5 e5 e5                                      ....
 10338 ms  0x70e0 PK11_Encrypt()
 10338 ms  0x70e0 symkey:0x7fda1ec93900
           /* TID 0x70e8 */
 10354 ms  0x70e8 PR_Close()
 10354 ms  0x70e8 fd:0x7fda0a9f0a60
           /* TID 0x70e0 */
 10403 ms  0x70e0 PR_Connect()
 10403 ms  0x70e0 fd:0x7fda21e13ee0
 10403 ms  0x70e0 PR_Close()
 10403 ms  0x70e0 fd:0x7fda21e13ee0
 10403 ms  0x70e0 PR_Connect()
 10403 ms  0x70e0 fd:0x7fda21e13ee0
 10404 ms  0x70e0 PR_Close()
 10404 ms  0x70e0 fd:0x7fda21e13ee0
 10418 ms  0x70e0 SSL_ImportFD()
 10418 ms  0x70e0 ret:0x7fda21e29580
 10418 ms  0x70e0 SSL_AuthCertificateHook()
 10418 ms  0x70e0 fd:0x7fda21e29580
 10418 ms  0x70e0 ret:0x0
 10418 ms  0x70e0 PR_Connect()
 10418 ms  0x70e0 fd:0x7fda21e29580
           /* TID 0x70e8 */
 10424 ms  0x70e8 PR_Close()
 10424 ms  0x70e8 fd:0x7fda21e13f70
           /* TID 0x70e0 */
 10469 ms  0x70e0 PR_Connect()
 10469 ms  0x70e0 fd:0x7fda21d02430
 10469 ms  0x70e0 PR_Connect()
 10469 ms  0x70e0 fd:0x7fda21e29d30
 10469 ms  0x70e0 PR_Close()
 10469 ms  0x70e0 fd:0x7fda21d02430
 10469 ms  0x70e0 PR_Close()
 10469 ms  0x70e0 fd:0x7fda21e29d30
 10476 ms  0x70e0 SSL_ImportFD()
 10476 ms  0x70e0 ret:0x7fda21d56df0
 10476 ms  0x70e0 SSL_AuthCertificateHook()
 10476 ms  0x70e0 fd:0x7fda21d56df0
 10476 ms  0x70e0 ret:0x0
 10477 ms  0x70e0 PR_Connect()
 10477 ms  0x70e0 fd:0x7fda21d56df0
 10486 ms  0x70e0 PK11_Encrypt()
 10486 ms  0x70e0 symkey:0x7fda1cdc5d00
 10487 ms  0x70e0 PK11_Encrypt()
 10487 ms  0x70e0 symkey:0x7fda1cdc5d00
 10488 ms  0x70e0 PK11_Encrypt()
 10488 ms  0x70e0 symkey:0x7fda1cdc5d00
 10488 ms  0x70e0 PK11_Encrypt()
 10488 ms  0x70e0 symkey:0x7fda1cdc5d00
 10489 ms  0x70e0 PK11_Encrypt()
 10489 ms  0x70e0 symkey:0x7fda1cdc5d00
 10504 ms  0x70e0 SECKEY_CreateECPrivateKey()
 10504 ms  0x70e0 cx:0x7fda0aa0c4a8
 10504 ms     | 0x70e0 EC_ValidatePublicKey()
 10504 ms     | 0x70e0 ret:0x0
 10504 ms  0x70e0 ret:0x7fda2219f020::7fda2219f020  70 b4 f5 21                                      p..!
 10504 ms  0x70e0 SECKEY_CreateECPrivateKey()
 10504 ms  0x70e0 cx:0x7fda0aa0c4a8
 10505 ms     | 0x70e0 EC_ValidatePublicKey()
 10507 ms     | 0x70e0 ret:0x0
 10507 ms  0x70e0 ret:0x7fda221a1020::7fda221a1020  b0 b0 f5 21                                      ...!
           /* TID 0x70e8 */
 10558 ms  0x70e8 PR_Close()
 10558 ms  0x70e8 fd:0x7fda21f93220
 10631 ms  0x70e8 PR_Close()
 10631 ms  0x70e8 fd:0x7fda21d56400
 10635 ms  0x70e8 PR_Close()
 10635 ms  0x70e8 fd:0x7fda21e29400
 10639 ms  0x70e8 PR_Close()
 10639 ms  0x70e8 fd:0x7fda21e29400
 10645 ms  0x70e8 PR_Close()
 10645 ms  0x70e8 fd:0x7fda21f325e0
           /* TID 0x70e0 */
 10665 ms  0x70e0 SECKEY_CreateECPrivateKey()
 10665 ms  0x70e0 cx:0x7fda43ca84a8
 10665 ms     | 0x70e0 EC_ValidatePublicKey()
 10665 ms     | 0x70e0 ret:0x0
 10665 ms  0x70e0 ret:0x7fda221a8020::7fda221a8020  a0 66 f1 21                                      .f.!
 10666 ms  0x70e0 SECKEY_CreateECPrivateKey()
 10666 ms  0x70e0 cx:0x7fda43ca84a8
 10666 ms     | 0x70e0 EC_ValidatePublicKey()
 10677 ms     | 0x70e0 ret:0x0
 10677 ms  0x70e0 ret:0x7fda221ab820::7fda221ab820  30 a8 e7 21                                      0..!
           /* TID 0x70e8 */
 10680 ms  0x70e8 PR_Close()
 10680 ms  0x70e8 fd:0x7fda21f323d0
 10695 ms  0x70e8 PR_Close()
 10695 ms  0x70e8 fd:0x7fda21f325e0
           /* TID 0x70e0 */
 10711 ms  0x70e0 PK11_Encrypt()
 10711 ms  0x70e0 symkey:0x7fda1ec46980
 10714 ms  0x70e0 PK11_Encrypt()
 10714 ms  0x70e0 symkey:0x7fda1d3de480
 10722 ms  0x70e0 SECKEY_CreateECPrivateKey()
 10722 ms  0x70e0 cx:0x7fda0aa0c7e8
 10722 ms     | 0x70e0 EC_ValidatePublicKey()
 10722 ms     | 0x70e0 ret:0x0
 10722 ms  0x70e0 ret:0x7fda221c0820::7fda221c0820  80 83 fd 21                                      ...!
 10722 ms  0x70e0 SECKEY_CreateECPrivateKey()
 10722 ms  0x70e0 cx:0x7fda0aa0c7e8
 10723 ms     | 0x70e0 EC_ValidatePublicKey()
 10724 ms     | 0x70e0 ret:0x0
 10724 ms  0x70e0 ret:0x7fda221c6820::7fda221c6820  30 cd fd 21                                      0..!
           /* TID 0x70e8 */
 10783 ms  0x70e8 PR_Close()
 10783 ms  0x70e8 fd:0x7fda21e293a0
           /* TID 0x70e0 */
 10842 ms  SECKEY_ECParamsToKeySize()
 10842 ms  0x70e0 ret:0x100
 10842 ms  0x70e0 SECKEY_CreateECPrivateKey()
 10842 ms  0x70e0 cx:0x7fda0aa0c4a8
 10844 ms     | 0x70e0 EC_ValidatePublicKey()
 10850 ms     | 0x70e0 ret:0x0
 10850 ms  0x70e0 ret:0x7fda221cd020::7fda221cd020  90 82 ff 21                                      ...!
 10850 ms  0x70e0 PK11_PubDeriveWithKDF()
 10850 ms  0x70e0 seckey:0x7fda221cd020
 10850 ms     | 0x70e0 EC_ValidatePublicKey()
 10855 ms     | 0x70e0 ret:0x0
 10859 ms  0x70e0 ret:0x7fda1cdc5c00
 10859 ms  0x70e0 PK11_DeriveWithFlags()
 10859 ms  0x70e0 basekey:0x7fda1cdc5c00
 10859 ms     | 0x70e0 PK11_DeriveWithTemplate()
 10859 ms  0x70e0 ret:0x7fda1cdc5e80
 10859 ms  0x70e0 PK11_Derive()
 10859 ms  0x70e0 basekey:0x7fda1cdc5e80
 10859 ms     | 0x70e0 PK11_DeriveWithTemplate()
 10859 ms  0x70e0 ret:0x7fda1cdc4900
 10859 ms  0x70e0 SECKEY_DestroyPrivateKey()
 10859 ms  0x70e0 privk:0x7fda221cd020::7fda221cd020  90 82 ff 21                                      ...!
 10859 ms  0x70e0 privk:0x7fda221cd020::7fda221cd020  e5 e5 e5 e5                                      ....
 10860 ms  0x70e0 PK11_Encrypt()
 10860 ms  0x70e0 symkey:0x7fda1ec93580
 10860 ms  0x70e0 SSL_AuthCertificateComplete()
 10860 ms  0x70e0 fd:0x7fda21d84c40
 10860 ms  0x70e0 err:0x0
 10870 ms  0x70e0 PK11_Encrypt()
 10870 ms  0x70e0 symkey:0x7fda1ec93580
 10871 ms  0x70e0 PK11_Encrypt()
 10871 ms  0x70e0 symkey:0x7fda1cdc5d00
 10871 ms  0x70e0 PK11_Encrypt()
 10871 ms  0x70e0 symkey:0x7fda1cdc5d00
 10874 ms  SECKEY_ECParamsToKeySize()
 10874 ms  0x70e0 ret:0x100
 10874 ms  SECKEY_ECParamsToBasePointOrderLen()
 10874 ms  0x70e0 ret:0x100
 10874 ms  SECKEY_ECParamsToBasePointOrderLen()
 10874 ms  0x70e0 ret:0x100
 10874 ms  0x70e0 EC_ValidatePublicKey()
 10876 ms  0x70e0 ret:0x0
 10879 ms  SECKEY_ECParamsToKeySize()
 10879 ms  0x70e0 ret:0x100
 10879 ms  0x70e0 SECKEY_CreateECPrivateKey()
 10879 ms  0x70e0 cx:0x7fda43ca84a8
 10880 ms     | 0x70e0 EC_ValidatePublicKey()
 10882 ms     | 0x70e0 ret:0x0
 10882 ms  0x70e0 ret:0x7fda24a28820::7fda24a28820  40 f2 02 22                                      @.."
 10882 ms  0x70e0 PK11_PubDeriveWithKDF()
 10882 ms  0x70e0 seckey:0x7fda24a28820
 10882 ms     | 0x70e0 EC_ValidatePublicKey()
 10884 ms     | 0x70e0 ret:0x0
 10886 ms  0x70e0 ret:0x7fda1cdc5c00
 10886 ms  0x70e0 PK11_DeriveWithFlags()
 10886 ms  0x70e0 basekey:0x7fda1cdc5c00
 10886 ms     | 0x70e0 PK11_DeriveWithTemplate()
 10886 ms  0x70e0 ret:0x7fda1cdc4a80
 10886 ms  0x70e0 PK11_Derive()
 10886 ms  0x70e0 basekey:0x7fda1cdc4a80
 10886 ms     | 0x70e0 PK11_DeriveWithTemplate()
 10886 ms  0x70e0 ret:0x7fda1cdc4d00
 10886 ms  0x70e0 SECKEY_DestroyPrivateKey()
 10886 ms  0x70e0 privk:0x7fda24a28820::7fda24a28820  40 f2 02 22                                      @.."
 10886 ms  0x70e0 privk:0x7fda24a28820::7fda24a28820  e5 e5 e5 e5                                      ....
 10886 ms  0x70e0 PK11_Encrypt()
 10886 ms  0x70e0 symkey:0x7fda1ec46800
           /* TID 0x70e8 */
 10915 ms  0x70e8 PR_Close()
 10915 ms  0x70e8 fd:0x7fda21e29400
           /* TID 0x7173 */
 10915 ms  0x7173 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10915 ms  0x7173 ret:0x0
 10915 ms  0x7173 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10915 ms  0x7173 ret:0x0
           /* TID 0x70e0 */
 10915 ms  0x70e0 SSL_AuthCertificateComplete()
 10915 ms  0x70e0 fd:0x7fda21d56df0
 10915 ms  0x70e0 err:0x0
 10916 ms  0x70e0 PK11_Encrypt()
 10916 ms  0x70e0 symkey:0x7fda1ec46800
 10916 ms  0x70e0 PK11_Encrypt()
 10916 ms  0x70e0 symkey:0x7fda1ec46800
           /* TID 0x70e8 */
 10945 ms  0x70e8 PR_Close()
 10945 ms  0x70e8 fd:0x7fda21f98a60
           /* TID 0x70e0 */
 10969 ms  0x70e0 PK11_Encrypt()
 10969 ms  0x70e0 symkey:0x7fda1cdc5d00
 10971 ms  0x70e0 PK11_Encrypt()
 10971 ms  0x70e0 symkey:0x7fda1cdc5d00
 10973 ms  0x70e0 PK11_Encrypt()
 10973 ms  0x70e0 symkey:0x7fda1cdc5d00
 10983 ms  0x70e0 PK11_Encrypt()
 10983 ms  0x70e0 symkey:0x7fda1cdc5d00
 10984 ms  0x70e0 PK11_Encrypt()
 10984 ms  0x70e0 symkey:0x7fda1cdc5d00
 10985 ms  0x70e0 PK11_Encrypt()
 10985 ms  0x70e0 symkey:0x7fda1cdc5d00
 10986 ms  0x70e0 PK11_Encrypt()
 10986 ms  0x70e0 symkey:0x7fda1cdc5d00
 10987 ms  0x70e0 PK11_Encrypt()
 10987 ms  0x70e0 symkey:0x7fda1cdc5d00
 10988 ms  0x70e0 PK11_Encrypt()
 10988 ms  0x70e0 symkey:0x7fda1cdc5d00
 10989 ms  0x70e0 PK11_Encrypt()
 10989 ms  0x70e0 symkey:0x7fda1cdc5d00
 10990 ms  0x70e0 PK11_Encrypt()
 10990 ms  0x70e0 symkey:0x7fda1cdc5d00
 10991 ms  0x70e0 PK11_Encrypt()
 10991 ms  0x70e0 symkey:0x7fda1cdc5d00
 10992 ms  0x70e0 PK11_Encrypt()
 10992 ms  0x70e0 symkey:0x7fda1cdc5d00
 10994 ms  0x70e0 PK11_Encrypt()
 10994 ms  0x70e0 symkey:0x7fda1cdc5d00
 10995 ms  0x70e0 PK11_Encrypt()
 10995 ms  0x70e0 symkey:0x7fda1cdc5d00
 10996 ms  0x70e0 PK11_Encrypt()
 10996 ms  0x70e0 symkey:0x7fda1cdc5d00
 10999 ms  0x70e0 SSL_ImportFD()
 10999 ms  0x70e0 ret:0x7fda220ef250
 10999 ms  0x70e0 SSL_AuthCertificateHook()
 10999 ms  0x70e0 fd:0x7fda220ef250
 10999 ms  0x70e0 ret:0x0
 10999 ms  0x70e0 PR_Connect()
 10999 ms  0x70e0 fd:0x7fda220ef250
           /* TID 0x70e8 */
 11012 ms  0x70e8 PR_Close()
 11012 ms  0x70e8 fd:0x7fda21e13be0
           /* TID 0x70e0 */
 11022 ms  SECKEY_ECParamsToKeySize()
 11022 ms  0x70e0 ret:0x100
 11022 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11022 ms  0x70e0 cx:0x7fda0aa0c7e8
 11022 ms     | 0x70e0 EC_ValidatePublicKey()
 11024 ms     | 0x70e0 ret:0x0
 11024 ms  0x70e0 ret:0x7fda2551a020::7fda2551a020  40 6c 13 22                                      @l."
 11024 ms  0x70e0 PK11_PubDeriveWithKDF()
 11024 ms  0x70e0 seckey:0x7fda2551a020
 11024 ms     | 0x70e0 EC_ValidatePublicKey()
 11026 ms     | 0x70e0 ret:0x0
 11028 ms  0x70e0 ret:0x7fda1cdc5c00
 11028 ms  0x70e0 PK11_DeriveWithFlags()
 11028 ms  0x70e0 basekey:0x7fda1cdc5c00
 11028 ms     | 0x70e0 PK11_DeriveWithTemplate()
 11028 ms  0x70e0 ret:0x7fda1cd8d100
 11028 ms  0x70e0 PK11_Derive()
 11028 ms  0x70e0 basekey:0x7fda1cd8d100
 11028 ms     | 0x70e0 PK11_DeriveWithTemplate()
 11028 ms  0x70e0 ret:0x7fda1cdc4a00
 11028 ms  0x70e0 SECKEY_DestroyPrivateKey()
 11028 ms  0x70e0 privk:0x7fda2551a020::7fda2551a020  40 6c 13 22                                      @l."
 11028 ms  0x70e0 privk:0x7fda2551a020::7fda2551a020  e5 e5 e5 e5                                      ....
 11028 ms  0x70e0 PK11_Encrypt()
 11028 ms  0x70e0 symkey:0x7fda21ae2a00
 11028 ms  0x70e0 SSL_AuthCertificateComplete()
 11028 ms  0x70e0 fd:0x7fda21e29580
 11028 ms  0x70e0 err:0x0
 11029 ms  0x70e0 PK11_Encrypt()
 11029 ms  0x70e0 symkey:0x7fda21ae2a00
 11075 ms  0x70e0 SECKEY_DestroyPrivateKey()
 11075 ms  0x70e0 privk:0x7fda221ab820::7fda221ab820  30 a8 e7 21                                      0..!
 11075 ms  0x70e0 privk:0x7fda221ab820::7fda221ab820  e5 e5 e5 e5                                      ....
 11075 ms  0x70e0 SECKEY_DestroyPrivateKey()
 11075 ms  0x70e0 privk:0x7fda221a8020::7fda221a8020  a0 66 f1 21                                      .f.!
 11075 ms  0x70e0 privk:0x7fda221a8020::7fda221a8020  e5 e5 e5 e5                                      ....
 11075 ms  0x70e0 PK11_Encrypt()
 11075 ms  0x70e0 symkey:0x7fda1ec46800
           /* TID 0x70e8 */
 11085 ms  0x70e8 PR_Close()
 11085 ms  0x70e8 fd:0x7fda21e293a0
           /* TID 0x70e0 */
 11089 ms  0x70e0 PK11_Encrypt()
 11089 ms  0x70e0 symkey:0x7fda1cdc5d00
           /* TID 0x70e8 */
 11091 ms  0x70e8 PR_Close()
 11091 ms  0x70e8 fd:0x7fda21f98880
 11095 ms  0x70e8 PR_Close()
 11095 ms  0x70e8 fd:0x7fda21f98880
 11096 ms  0x70e8 PR_Close()
 11096 ms  0x70e8 fd:0x7fda21f98880
 11098 ms  0x70e8 PR_Close()
 11098 ms  0x70e8 fd:0x7fda21f98880
 11099 ms  0x70e8 PR_Close()
 11099 ms  0x70e8 fd:0x7fda21f98880
 11102 ms  0x70e8 PR_Close()
 11102 ms  0x70e8 fd:0x7fda21f98880
 11105 ms  0x70e8 PR_Close()
 11105 ms  0x70e8 fd:0x7fda21f98610
 11108 ms  0x70e8 PR_Close()
 11108 ms  0x70e8 fd:0x7fda21f98610
 11109 ms  0x70e8 PR_Close()
 11109 ms  0x70e8 fd:0x7fda21f98610
 11111 ms  0x70e8 PR_Close()
 11111 ms  0x70e8 fd:0x7fda21f98610
 11111 ms  0x70e8 PR_Close()
 11111 ms  0x70e8 fd:0x7fda21f98610
 11113 ms  0x70e8 PR_Close()
 11113 ms  0x70e8 fd:0x7fda21f98610
 11116 ms  0x70e8 PR_Close()
 11116 ms  0x70e8 fd:0x7fda21f98610
 11117 ms  0x70e8 PR_Close()
 11117 ms  0x70e8 fd:0x7fda22024730
 11118 ms  0x70e8 PR_Close()
 11118 ms  0x70e8 fd:0x7fda22024730
           /* TID 0x70e0 */
 11121 ms  0x70e0 PK11_Encrypt()
 11121 ms  0x70e0 symkey:0x7fda1cdc5d00
 11156 ms  0x70e0 PK11_Encrypt()
 11156 ms  0x70e0 symkey:0x7fda1cdc5d00
 11157 ms  0x70e0 PK11_Encrypt()
 11157 ms  0x70e0 symkey:0x7fda1cdc5d00
           /* TID 0x70e8 */
 11162 ms  0x70e8 PR_Close()
 11162 ms  0x70e8 fd:0x7fda21fc9700
           /* TID 0x70e0 */
 11163 ms  0x70e0 PK11_Encrypt()
 11163 ms  0x70e0 symkey:0x7fda1cdc5d00
 11193 ms  0x70e0 PK11_Encrypt()
 11193 ms  0x70e0 symkey:0x7fda1ec46980
 11198 ms  0x70e0 SECKEY_DestroyPrivateKey()
 11198 ms  0x70e0 privk:0x7fda221a1020::7fda221a1020  b0 b0 f5 21                                      ...!
 11198 ms  0x70e0 privk:0x7fda221a1020::7fda221a1020  e5 e5 e5 e5                                      ....
 11198 ms  0x70e0 SECKEY_DestroyPrivateKey()
 11198 ms  0x70e0 privk:0x7fda2219f020::7fda2219f020  70 b4 f5 21                                      p..!
 11198 ms  0x70e0 privk:0x7fda2219f020::7fda2219f020  e5 e5 e5 e5                                      ....
 11198 ms  0x70e0 PK11_Encrypt()
 11198 ms  0x70e0 symkey:0x7fda1ec93580
 11199 ms  0x70e0 SSL_ImportFD()
 11199 ms  0x70e0 ret:0x7fda22004cd0
 11199 ms  0x70e0 SSL_AuthCertificateHook()
 11199 ms  0x70e0 fd:0x7fda22004cd0
 11199 ms  0x70e0 ret:0x0
 11199 ms  0x70e0 PR_Connect()
 11199 ms  0x70e0 fd:0x7fda22004cd0
           /* TID 0x70e8 */
 11232 ms  0x70e8 PR_Close()
 11232 ms  0x70e8 fd:0x7fda1d1ab7f0
 11233 ms  0x70e8 PR_Close()
 11233 ms  0x70e8 fd:0x7fda1d1ab7f0
 11234 ms  0x70e8 PR_Close()
 11234 ms  0x70e8 fd:0x7fda1d1ab7f0
           /* TID 0x70e0 */
 11262 ms  0x70e0 SSL_ImportFD()
 11262 ms  0x70e0 ret:0x7fda1d1ab910
 11263 ms  0x70e0 SSL_AuthCertificateHook()
 11263 ms  0x70e0 fd:0x7fda1d1ab910
 11263 ms  0x70e0 ret:0x0
 11263 ms  0x70e0 PR_Connect()
 11263 ms  0x70e0 fd:0x7fda1d1ab910
           /* TID 0x70e8 */
 11280 ms  0x70e8 PR_Close()
 11280 ms  0x70e8 fd:0x7fda1bfcefd0
 11299 ms  0x70e8 PR_Close()
 11299 ms  0x70e8 fd:0x7fda1b88d5e0
           /* TID 0x70e0 */
 11315 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11315 ms  0x70e0 cx:0x7fda25abe728
 11316 ms     | 0x70e0 EC_ValidatePublicKey()
 11316 ms     | 0x70e0 ret:0x0
 11316 ms  0x70e0 ret:0x7fda1d37e020::7fda1d37e020  40 d2 1d 1d                                      @...
 11316 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11316 ms  0x70e0 cx:0x7fda25abe728
 11316 ms     | 0x70e0 EC_ValidatePublicKey()
 11318 ms     | 0x70e0 ret:0x0
 11318 ms  0x70e0 ret:0x7fda1d38c020::7fda1d38c020  60 df 1d 1d                                      `...
           /* TID 0x70e8 */
 11325 ms  0x70e8 PR_Close()
 11325 ms  0x70e8 fd:0x7fda21f93220
 11325 ms  0x70e8 PR_Close()
 11325 ms  0x70e8 fd:0x7fda1d1abca0
           /* TID 0x70e0 */
 11335 ms  0x70e0 SECKEY_DestroyPrivateKey()
 11335 ms  0x70e0 privk:0x7fda221c6820::7fda221c6820  30 cd fd 21                                      0..!
 11336 ms  0x70e0 privk:0x7fda221c6820::7fda221c6820  e5 e5 e5 e5                                      ....
 11336 ms  0x70e0 SECKEY_DestroyPrivateKey()
 11336 ms  0x70e0 privk:0x7fda221c0820::7fda221c0820  80 83 fd 21                                      ...!
 11336 ms  0x70e0 privk:0x7fda221c0820::7fda221c0820  e5 e5 e5 e5                                      ....
 11336 ms  0x70e0 PR_Close()
 11336 ms  0x70e0 fd:0x7fda21e29580
 11336 ms     | 0x70e0 PK11_Encrypt()
 11336 ms     | 0x70e0 symkey:0x7fda21ae2a00
 11422 ms  0x70e0 SSL_ImportFD()
 11422 ms  0x70e0 ret:0x7fda1d9d0c40
 11422 ms  0x70e0 SSL_AuthCertificateHook()
 11422 ms  0x70e0 fd:0x7fda1d9d0c40
 11422 ms  0x70e0 ret:0x0
 11422 ms  0x70e0 PR_Connect()
 11422 ms  0x70e0 fd:0x7fda1d9d0c40
 11439 ms  0x70e0 PR_Connect()
 11439 ms  0x70e0 fd:0x7fda0aa27b20
 11440 ms  0x70e0 PR_Connect()
 11440 ms  0x70e0 fd:0x7fda1b88d370
 11440 ms  0x70e0 PR_Close()
 11440 ms  0x70e0 fd:0x7fda0aa27b20
 11440 ms  0x70e0 PR_Close()
 11440 ms  0x70e0 fd:0x7fda1b88d370
 11458 ms  0x70e0 SSL_ImportFD()
 11458 ms  0x70e0 ret:0x7fda1b88d6d0
 11458 ms  0x70e0 SSL_AuthCertificateHook()
 11458 ms  0x70e0 fd:0x7fda1b88d6d0
 11458 ms  0x70e0 ret:0x0
 11458 ms  0x70e0 PR_Connect()
 11458 ms  0x70e0 fd:0x7fda1b88d6d0
 11524 ms  0x70e0 PK11_Encrypt()
 11524 ms  0x70e0 symkey:0x7fda1ec46980
 11527 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11527 ms  0x70e0 cx:0x7fda25abea68
 11527 ms     | 0x70e0 EC_ValidatePublicKey()
 11528 ms     | 0x70e0 ret:0x0
 11528 ms  0x70e0 ret:0x7fda0a818020::7fda0a818020  d0 73 32 1d                                      .s2.
 11528 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11528 ms  0x70e0 cx:0x7fda25abea68
 11528 ms     | 0x70e0 EC_ValidatePublicKey()
 11530 ms     | 0x70e0 ret:0x0
 11530 ms  0x70e0 ret:0x7fda0a81c820::7fda0a81c820  a0 ab 9a 1d                                      ....
           /* TID 0x70e8 */
 11547 ms  0x70e8 PR_Close()
 11547 ms  0x70e8 fd:0x7fda1ba9e940
 11549 ms  0x70e8 PR_Close()
 11549 ms  0x70e8 fd:0x7fda1ba9ec70
 11550 ms  0x70e8 PR_Close()
 11550 ms  0x70e8 fd:0x7fda1ba9ee20
           /* TID 0x70e0 */
 11563 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11563 ms  0x70e0 cx:0x7fda25abec08
 11564 ms     | 0x70e0 EC_ValidatePublicKey()
 11564 ms     | 0x70e0 ret:0x0
 11564 ms  0x70e0 ret:0x7fda1bde2020::7fda1bde2020  90 87 9d 21                                      ...!
 11564 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11564 ms  0x70e0 cx:0x7fda25abec08
 11564 ms     | 0x70e0 EC_ValidatePublicKey()
 11566 ms     | 0x70e0 ret:0x0
 11566 ms  0x70e0 ret:0x7fda1cca6820::7fda1cca6820  70 8e d9 21                                      p..!
 11608 ms  0x70e0 PR_Connect()
 11608 ms  0x70e0 fd:0x7fda1ba9ee80
 11608 ms  0x70e0 PR_Connect()
 11608 ms  0x70e0 fd:0x7fda1cdbbbe0
 11608 ms  0x70e0 PR_Close()
 11608 ms  0x70e0 fd:0x7fda1ba9ee80
 11609 ms  0x70e0 PR_Close()
 11609 ms  0x70e0 fd:0x7fda1cdbbbe0
 11610 ms  0x70e0 PR_Connect()
 11610 ms  0x70e0 fd:0x7fda1ba9ee80
 11610 ms  0x70e0 PR_Connect()
 11610 ms  0x70e0 fd:0x7fda1d1ab220
 11610 ms  0x70e0 PR_Close()
 11610 ms  0x70e0 fd:0x7fda1ba9ee80
 11611 ms  0x70e0 PR_Close()
 11611 ms  0x70e0 fd:0x7fda1d1ab220
 11631 ms  SECKEY_ECParamsToKeySize()
 11631 ms  0x70e0 ret:0x100
 11631 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11631 ms  0x70e0 cx:0x7fda25abe728
 11632 ms     | 0x70e0 EC_ValidatePublicKey()
 11633 ms     | 0x70e0 ret:0x0
 11633 ms  0x70e0 ret:0x7fda21e4e820::7fda21e4e820  20 b4 f5 21                                       ..!
 11633 ms  0x70e0 PK11_PubDeriveWithKDF()
 11633 ms  0x70e0 seckey:0x7fda21e4e820
 11634 ms     | 0x70e0 EC_ValidatePublicKey()
 11635 ms     | 0x70e0 ret:0x0
 11643 ms  0x70e0 ret:0x7fda1cdc4a00
 11643 ms  0x70e0 PK11_DeriveWithFlags()
 11643 ms  0x70e0 basekey:0x7fda1cdc4a00
 11643 ms     | 0x70e0 PK11_DeriveWithTemplate()
 11643 ms  0x70e0 ret:0x7fda1cd8d100
 11643 ms  0x70e0 PK11_Derive()
 11643 ms  0x70e0 basekey:0x7fda1cd8d100
 11643 ms     | 0x70e0 PK11_DeriveWithTemplate()
 11644 ms  0x70e0 ret:0x7fda1cdc5c00
 11644 ms  0x70e0 SECKEY_DestroyPrivateKey()
 11644 ms  0x70e0 privk:0x7fda21e4e820::7fda21e4e820  20 b4 f5 21                                       ..!
 11644 ms  0x70e0 privk:0x7fda21e4e820::7fda21e4e820  e5 e5 e5 e5                                      ....
 11644 ms  0x70e0 PK11_Encrypt()
 11644 ms  0x70e0 symkey:0x7fda1ecf1d80
           /* TID 0x7174 */
 11670 ms  0x7174 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11671 ms  0x7174 ret:0x0
 11671 ms  0x7174 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11671 ms  0x7174 ret:0x0
           /* TID 0x70e8 */
 11671 ms  0x70e8 PR_Close()
 11671 ms  0x70e8 fd:0x7fda1d1ab760
           /* TID 0x70e0 */
 11671 ms  0x70e0 SSL_AuthCertificateComplete()
 11671 ms  0x70e0 fd:0x7fda220ef250
 11671 ms  0x70e0 err:0x0
 11671 ms  0x70e0 PK11_Encrypt()
 11671 ms  0x70e0 symkey:0x7fda1ecf1d80
 11673 ms  0x70e0 SSL_ImportFD()
 11673 ms  0x70e0 ret:0x7fda1d1ab880
 11673 ms  0x70e0 SSL_AuthCertificateHook()
 11673 ms  0x70e0 fd:0x7fda1d1ab880
 11673 ms  0x70e0 ret:0x0
 11673 ms  0x70e0 PR_Connect()
 11673 ms  0x70e0 fd:0x7fda1d1ab880
 11692 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11692 ms  0x70e0 cx:0x7fda0aa0c7e8
 11693 ms     | 0x70e0 EC_ValidatePublicKey()
 11693 ms     | 0x70e0 ret:0x0
 11693 ms  0x70e0 ret:0x7fda21e4e820::7fda21e4e820  70 b4 f5 21                                      p..!
 11693 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11693 ms  0x70e0 cx:0x7fda0aa0c7e8
 11694 ms     | 0x70e0 EC_ValidatePublicKey()
 11695 ms     | 0x70e0 ret:0x0
 11695 ms  0x70e0 ret:0x7fda21ea5020::7fda21ea5020  00 b1 f5 21                                      ...!
           /* TID 0x70e8 */
 11698 ms  0x70e8 PR_Close()
 11698 ms  0x70e8 fd:0x7fda21757e20
 11699 ms  0x70e8 PR_Close()
 11699 ms  0x70e8 fd:0x7fda1d1ab7f0
           /* TID 0x70e0 */
 11709 ms  0x70e0 SSL_ImportFD()
 11709 ms  0x70e0 ret:0x7fda1d1abcd0
 11709 ms  0x70e0 SSL_AuthCertificateHook()
 11709 ms  0x70e0 fd:0x7fda1d1abcd0
 11709 ms  0x70e0 ret:0x0
 11709 ms  0x70e0 PR_Connect()
 11709 ms  0x70e0 fd:0x7fda1d1abcd0
 11710 ms  0x70e0 SSL_ImportFD()
 11710 ms  0x70e0 ret:0x7fda1ba9ec40
 11710 ms  0x70e0 SSL_AuthCertificateHook()
 11710 ms  0x70e0 fd:0x7fda1ba9ec40
 11710 ms  0x70e0 ret:0x0
 11710 ms  0x70e0 PR_Connect()
 11710 ms  0x70e0 fd:0x7fda1ba9ec40
 11784 ms  0x70e0 SSL_ImportFD()
 11784 ms  0x70e0 ret:0x7fda1cc8faf0
 11784 ms  0x70e0 SSL_AuthCertificateHook()
 11784 ms  0x70e0 fd:0x7fda1cc8faf0
 11784 ms  0x70e0 ret:0x0
 11784 ms  0x70e0 PR_Connect()
 11784 ms  0x70e0 fd:0x7fda1cc8faf0
 11786 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11786 ms  0x70e0 cx:0x7fda0aa0a768
 11788 ms     | 0x70e0 EC_ValidatePublicKey()
 11788 ms     | 0x70e0 ret:0x0
 11788 ms  0x70e0 ret:0x7fda22196820::7fda22196820  30 83 fd 21                                      0..!
 11788 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11788 ms  0x70e0 cx:0x7fda0aa0a768
 11790 ms     | 0x70e0 EC_ValidatePublicKey()
 11793 ms     | 0x70e0 ret:0x0
 11793 ms  0x70e0 ret:0x7fda2219c020::7fda2219c020  30 cd fd 21                                      0..!
 11844 ms  0x70e0 PK11_Derive()
 11844 ms  0x70e0 basekey:0x7fda1cdc4b00
 11844 ms     | 0x70e0 PK11_DeriveWithTemplate()
 11844 ms  0x70e0 ret:0x7fda1cdc4a00
 11844 ms  0x70e0 PK11_Encrypt()
 11844 ms  0x70e0 symkey:0x7fda1cd0d980
 11846 ms  0x70e0 SECKEY_DestroyPrivateKey()
 11846 ms  0x70e0 privk:0x7fda0a81c820::7fda0a81c820  a0 ab 9a 1d                                      ....
 11846 ms  0x70e0 privk:0x7fda0a81c820::7fda0a81c820  e5 e5 e5 e5                                      ....
 11846 ms  0x70e0 SECKEY_DestroyPrivateKey()
 11846 ms  0x70e0 privk:0x7fda0a818020::7fda0a818020  d0 73 32 1d                                      .s2.
 11846 ms  0x70e0 privk:0x7fda0a818020::7fda0a818020  e5 e5 e5 e5                                      ....
 11848 ms  0x70e0 PK11_Encrypt()
 11848 ms  0x70e0 symkey:0x7fda1cd0d980
 11851 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11851 ms  0x70e0 cx:0x7fda25abf908
 11853 ms     | 0x70e0 EC_ValidatePublicKey()
 11853 ms     | 0x70e0 ret:0x0
 11853 ms  0x70e0 ret:0x7fda0a81a020::7fda0a81a020  70 74 32 1d                                      pt2.
 11853 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11853 ms  0x70e0 cx:0x7fda25abf908
 11854 ms     | 0x70e0 EC_ValidatePublicKey()
 11857 ms     | 0x70e0 ret:0x0
 11857 ms  0x70e0 ret:0x7fda1bdfa020::7fda1bdfa020  60 cf fd 21                                      `..!
 11897 ms  SECKEY_ECParamsToKeySize()
 11897 ms  0x70e0 ret:0x100
 11897 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11897 ms  0x70e0 cx:0x7fda25abec08
 11898 ms     | 0x70e0 EC_ValidatePublicKey()
 11899 ms     | 0x70e0 ret:0x0
 11899 ms  0x70e0 ret:0x7fda221a1820::7fda221a1820  e0 f2 02 22                                      ..."
 11900 ms  0x70e0 PK11_PubDeriveWithKDF()
 11900 ms  0x70e0 seckey:0x7fda221a1820
 11900 ms     | 0x70e0 EC_ValidatePublicKey()
 11901 ms     | 0x70e0 ret:0x0
 11902 ms  0x70e0 ret:0x7fda1cdc5b80
 11902 ms  0x70e0 PK11_DeriveWithFlags()
 11902 ms  0x70e0 basekey:0x7fda1cdc5b80
 11902 ms     | 0x70e0 PK11_DeriveWithTemplate()
 11902 ms  0x70e0 ret:0x7fda1cdc4e00
 11902 ms  0x70e0 PK11_Derive()
 11902 ms  0x70e0 basekey:0x7fda1cdc4e00
 11902 ms     | 0x70e0 PK11_DeriveWithTemplate()
 11903 ms  0x70e0 ret:0x7fda1cd0dc00
 11903 ms  0x70e0 SECKEY_DestroyPrivateKey()
 11903 ms  0x70e0 privk:0x7fda221a1820::7fda221a1820  e0 f2 02 22                                      ..."
 11903 ms  0x70e0 privk:0x7fda221a1820::7fda221a1820  e5 e5 e5 e5                                      ....
 11903 ms  0x70e0 PK11_Encrypt()
 11903 ms  0x70e0 symkey:0x7fda1d1b4600
 11904 ms  0x70e0 SSL_AuthCertificateComplete()
 11904 ms  0x70e0 fd:0x7fda1d1ab910
 11904 ms  0x70e0 err:0x0
 11933 ms  0x70e0 PK11_Derive()
 11933 ms  0x70e0 basekey:0x7fda1cdc5b80
 11933 ms     | 0x70e0 PK11_DeriveWithTemplate()
 11933 ms  0x70e0 ret:0x7fda1d1b5780
 11933 ms  0x70e0 PK11_PubDeriveWithKDF()
 11933 ms  0x70e0 seckey:0x7fda0a81a020
 11933 ms     | 0x70e0 EC_ValidatePublicKey()
 11933 ms     | 0x70e0 ret:0x0
 11933 ms  0x70e0 ret:0x7fda1cdc5b80
 11933 ms  SECKEY_ECParamsToKeySize()
 11933 ms  0x70e0 ret:0xff
 11933 ms  0x70e0 PK11_DeriveWithFlags()
 11933 ms  0x70e0 basekey:0x7fda1d1b5780
 11933 ms     | 0x70e0 PK11_DeriveWithTemplate()
 11934 ms  0x70e0 ret:0x7fda1d1b5f00
 11934 ms  0x70e0 PK11_Derive()
 11934 ms  0x70e0 basekey:0x7fda1cdc5b80
 11934 ms     | 0x70e0 PK11_DeriveWithTemplate()
 11934 ms  0x70e0 ret:0x7fda1d1b5f80
 11934 ms  0x70e0 PK11_DeriveWithFlags()
 11934 ms  0x70e0 basekey:0x7fda1d1b5f80
 11934 ms     | 0x70e0 PK11_DeriveWithTemplate()
 11934 ms  0x70e0 ret:0x7fda1d1b5780
 11934 ms  0x70e0 PK11_DeriveWithFlags()
 11934 ms  0x70e0 basekey:0x7fda1d1b5f80
 11934 ms     | 0x70e0 PK11_DeriveWithTemplate()
 11934 ms  0x70e0 ret:0x7fda1cdc5b80
 11934 ms  0x70e0 PK11_DeriveWithFlags()
 11934 ms  0x70e0 basekey:0x7fda1d1b5f80
 11934 ms     | 0x70e0 PK11_DeriveWithTemplate()
 11934 ms  0x70e0 ret:0x7fda1d1b5f00
 11934 ms  0x70e0 PK11_Derive()
 11934 ms  0x70e0 basekey:0x7fda1d3de300
 11934 ms     | 0x70e0 PK11_DeriveWithTemplate()
 11934 ms  0x70e0 ret:0x7fda1d3de380
 11934 ms  0x70e0 PK11_DeriveWithFlags()
 11934 ms  0x70e0 basekey:0x7fda1cdc5b80
 11934 ms     | 0x70e0 PK11_DeriveWithTemplate()
 11934 ms  0x70e0 ret:0x7fda1d1b5f80
 11934 ms  0x70e0 PK11_DeriveWithFlags()
 11934 ms  0x70e0 basekey:0x7fda1cdc5b80
 11934 ms     | 0x70e0 PK11_DeriveWithTemplate()
 11934 ms  0x70e0 ret:0x7fda1d1b5f00
 11936 ms  0x70e0 PK11_DeriveWithFlags()
 11936 ms  0x70e0 basekey:0x7fda1cdc5b80
 11936 ms     | 0x70e0 PK11_DeriveWithTemplate()
 11936 ms  0x70e0 ret:0x7fda1d1b5f00
 11936 ms  0x70e0 SSL_AuthCertificateComplete()
 11936 ms  0x70e0 fd:0x7fda1cc8faf0
 11936 ms  0x70e0 err:0x0
 11936 ms     | 0x70e0 PK11_DeriveWithFlags()
 11936 ms     | 0x70e0 basekey:0x7fda1d3de380
 11936 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
 11936 ms     | 0x70e0 ret:0x7fda1d1b5f00
 11936 ms     | 0x70e0 PK11_DeriveWithFlags()
 11936 ms     | 0x70e0 basekey:0x7fda1d3de380
 11936 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
 11936 ms     | 0x70e0 ret:0x7fda1d3de300
 11936 ms     | 0x70e0 PK11_DeriveWithFlags()
 11936 ms     | 0x70e0 basekey:0x7fda1d3de380
 11936 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
 11936 ms     | 0x70e0 ret:0x7fda1d3de600
 11936 ms     | 0x70e0 PK11_DeriveWithFlags()
 11936 ms     | 0x70e0 basekey:0x7fda1d1b5780
 11936 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
 11936 ms     | 0x70e0 ret:0x7fda1d3de680
 11936 ms     | 0x70e0 PK11_DeriveWithFlags()
 11936 ms     | 0x70e0 basekey:0x7fda1d1b5780
 11936 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
 11936 ms     | 0x70e0 ret:0x7fda1d3de700
 11936 ms     | 0x70e0 PK11_DeriveWithFlags()
 11936 ms     | 0x70e0 basekey:0x7fda1d3de300
 11936 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
 11936 ms     | 0x70e0 ret:0x7fda1d3de700
 11936 ms     | 0x70e0 PK11_DeriveWithFlags()
 11936 ms     | 0x70e0 basekey:0x7fda1d3de300
 11936 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
 11936 ms     | 0x70e0 ret:0x7fda1d3de780
 11936 ms     | 0x70e0 PK11_DeriveWithFlags()
 11936 ms     | 0x70e0 basekey:0x7fda1d1b5780
 11936 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
 11936 ms     | 0x70e0 ret:0x7fda1d1b5f80
 11936 ms     | 0x70e0 PK11_Encrypt()
 11936 ms     | 0x70e0 symkey:0x7fda1d3de680
 11936 ms     | 0x70e0 PK11_DeriveWithFlags()
 11936 ms     | 0x70e0 basekey:0x7fda1d1b5f00
 11936 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
 11936 ms     | 0x70e0 ret:0x7fda1d1b5f80
 11936 ms     | 0x70e0 PK11_DeriveWithFlags()
 11936 ms     | 0x70e0 basekey:0x7fda1d1b5f00
 11937 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
 11937 ms     | 0x70e0 ret:0x7fda1d3de780
 11937 ms     | 0x70e0 PK11_DeriveWithFlags()
 11937 ms     | 0x70e0 basekey:0x7fda1d3de380
 11937 ms     |    | 0x70e0 PK11_DeriveWithTemplate()
 11937 ms     | 0x70e0 ret:0x7fda1d3de680
 11937 ms     | 0x70e0 SECKEY_DestroyPrivateKey()
 11937 ms     | 0x70e0 privk:0x7fda1bdfa020::7fda1bdfa020  60 cf fd 21                                      `..!
 11937 ms     | 0x70e0 privk:0x7fda1bdfa020::7fda1bdfa020  e5 e5 e5 e5                                      ....
 11937 ms     | 0x70e0 SECKEY_DestroyPrivateKey()
 11937 ms     | 0x70e0 privk:0x7fda0a81a020::7fda0a81a020  70 74 32 1d                                      pt2.
 11937 ms     | 0x70e0 privk:0x7fda0a81a020::7fda0a81a020  e5 e5 e5 e5                                      ....
 11937 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11937 ms  0x70e0 cx:0x7fda25abf768
 11938 ms     | 0x70e0 EC_ValidatePublicKey()
 11938 ms     | 0x70e0 ret:0x0
 11938 ms  0x70e0 ret:0x7fda0a81a020::7fda0a81a020  70 74 32 1d                                      pt2.
 11938 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11938 ms  0x70e0 cx:0x7fda25abf768
 11938 ms     | 0x70e0 EC_ValidatePublicKey()
 11940 ms     | 0x70e0 ret:0x0
 11940 ms  0x70e0 ret:0x7fda1bdfa020::7fda1bdfa020  60 cf fd 21                                      `..!
 11940 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11940 ms  0x70e0 cx:0x7fda25abf5c8
 11941 ms     | 0x70e0 EC_ValidatePublicKey()
 11941 ms     | 0x70e0 ret:0x0
 11941 ms  0x70e0 ret:0x7fda221a8020::7fda221a8020  90 f2 02 22                                      ..."
 11941 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11941 ms  0x70e0 cx:0x7fda25abf5c8
 11941 ms     | 0x70e0 EC_ValidatePublicKey()
 11943 ms     | 0x70e0 ret:0x0
 11943 ms  0x70e0 ret:0x7fda221aa020::7fda221aa020  70 b9 0c 22                                      p.."
 11943 ms  0x70e0 PK11_Encrypt()
 11943 ms  0x70e0 symkey:0x7fda1d1b5f80
 11943 ms  0x70e0 PK11_Encrypt()
 11943 ms  0x70e0 symkey:0x7fda1d1b5f80
 11947 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11947 ms  0x70e0 cx:0x7fda25abef48
 11948 ms     | 0x70e0 EC_ValidatePublicKey()
 11948 ms     | 0x70e0 ret:0x0
 11948 ms  0x70e0 ret:0x7fda221b0820::7fda221b0820  a0 e1 0e 22                                      ..."
 11948 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11948 ms  0x70e0 cx:0x7fda25abef48
 11948 ms     | 0x70e0 EC_ValidatePublicKey()
 11950 ms     | 0x70e0 ret:0x0
 11950 ms  0x70e0 ret:0x7fda221c0020::7fda221c0020  a0 6b 0f 22                                      .k."
 11964 ms  0x70e0 SECKEY_DestroyPrivateKey()
 11964 ms  0x70e0 privk:0x7fda1d38c020::7fda1d38c020  60 df 1d 1d                                      `...
 11964 ms  0x70e0 privk:0x7fda1d38c020::7fda1d38c020  e5 e5 e5 e5                                      ....
 11964 ms  0x70e0 SECKEY_DestroyPrivateKey()
 11964 ms  0x70e0 privk:0x7fda1d37e020::7fda1d37e020  40 d2 1d 1d                                      @...
 11964 ms  0x70e0 privk:0x7fda1d37e020::7fda1d37e020  e5 e5 e5 e5                                      ....
 11974 ms  SECKEY_ECParamsToKeySize()
 11974 ms  0x70e0 ret:0x100
 11974 ms  SECKEY_ECParamsToBasePointOrderLen()
 11974 ms  0x70e0 ret:0x100
 11974 ms  SECKEY_ECParamsToBasePointOrderLen()
 11974 ms  0x70e0 ret:0x100
 11974 ms  0x70e0 EC_ValidatePublicKey()
 11976 ms  0x70e0 ret:0x0
 11983 ms  SECKEY_ECParamsToKeySize()
 11983 ms  0x70e0 ret:0x100
 11983 ms  0x70e0 SECKEY_CreateECPrivateKey()
 11983 ms  0x70e0 cx:0x7fda0aa0c7e8
 11984 ms     | 0x70e0 EC_ValidatePublicKey()
 11985 ms     | 0x70e0 ret:0x0
 11985 ms  0x70e0 ret:0x7fda221cc020::7fda221cc020  b0 60 13 22                                      .`."
 11985 ms  0x70e0 PK11_PubDeriveWithKDF()
 11985 ms  0x70e0 seckey:0x7fda221cc020
 11985 ms     | 0x70e0 EC_ValidatePublicKey()
 11987 ms     | 0x70e0 ret:0x0
 11992 ms  0x70e0 ret:0x7fda1cdc5b80
 11992 ms  0x70e0 PK11_DeriveWithFlags()
 11992 ms  0x70e0 basekey:0x7fda1cdc5b80
 11992 ms     | 0x70e0 PK11_DeriveWithTemplate()
 11992 ms  0x70e0 ret:0x7fda1d1b5780
 11992 ms  0x70e0 PK11_Derive()
 11992 ms  0x70e0 basekey:0x7fda1d1b5780
 11992 ms     | 0x70e0 PK11_DeriveWithTemplate()
 11992 ms  0x70e0 ret:0x7fda1d3de380
 11992 ms  0x70e0 SECKEY_DestroyPrivateKey()
 11992 ms  0x70e0 privk:0x7fda221cc020::7fda221cc020  b0 60 13 22                                      .`."
 11992 ms  0x70e0 privk:0x7fda221cc020::7fda221cc020  e5 e5 e5 e5                                      ....
 11992 ms  0x70e0 PK11_Encrypt()
 11992 ms  0x70e0 symkey:0x7fda1d3dee80
 12004 ms  0x70e0 PK11_DeriveWithFlags()
 12004 ms  0x70e0 basekey:0x7fda1d3de680
 12004 ms     | 0x70e0 PK11_DeriveWithTemplate()
 12004 ms  0x70e0 ret:0x7fda1cdc5b80
 12004 ms  0x70e0 PK11_DeriveWithFlags()
 12004 ms  0x70e0 basekey:0x7fda1d3de680
 12004 ms     | 0x70e0 PK11_DeriveWithTemplate()
 12004 ms  0x70e0 ret:0x7fda1cdc5b80
 12072 ms  0x70e0 PK11_Encrypt()
 12072 ms  0x70e0 symkey:0x7fda1d1b5f80
           /* TID 0x70e8 */
 12074 ms  0x70e8 PR_Close()
 12074 ms  0x70e8 fd:0x7fda1b88d9d0
           /* TID 0x70e0 */
 12108 ms  0x70e0 PK11_Derive()
 12108 ms  0x70e0 basekey:0x7fda1d3de780
 12108 ms     | 0x70e0 PK11_DeriveWithTemplate()
 12108 ms  0x70e0 ret:0x7fda1cdc5b80
 12109 ms  0x70e0 PK11_Encrypt()
 12109 ms  0x70e0 symkey:0x7fda1d3e8980
 12109 ms  0x70e0 SECKEY_DestroyPrivateKey()
 12109 ms  0x70e0 privk:0x7fda2219c020::7fda2219c020  30 cd fd 21                                      0..!
 12109 ms  0x70e0 privk:0x7fda2219c020::7fda2219c020  e5 e5 e5 e5                                      ....
 12109 ms  0x70e0 SECKEY_DestroyPrivateKey()
 12109 ms  0x70e0 privk:0x7fda22196820::7fda22196820  30 83 fd 21                                      0..!
 12110 ms  0x70e0 privk:0x7fda22196820::7fda22196820  e5 e5 e5 e5                                      ....
 12110 ms  0x70e0 PR_Close()
 12110 ms  0x70e0 fd:0x7fda1b88d6d0
 12110 ms     | 0x70e0 PK11_Encrypt()
 12110 ms     | 0x70e0 symkey:0x7fda1d3e8980
           /* TID 0x70e8 */
 12139 ms  0x70e8 PR_Close()
 12139 ms  0x70e8 fd:0x7fda0aa27b20
 12164 ms  0x70e8 PR_Close()
 12164 ms  0x70e8 fd:0x7fda1b88d6d0
           /* TID 0x7142 */
 12165 ms  0x7142 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12165 ms  0x7142 ret:0x0
 12165 ms  0x7142 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12165 ms  0x7142 ret:0x0
           /* TID 0x70e0 */
 12165 ms  0x70e0 SSL_AuthCertificateComplete()
 12165 ms  0x70e0 fd:0x7fda1d9d0c40
 12165 ms  0x70e0 err:0x0
 12166 ms  0x70e0 PK11_Encrypt()
 12166 ms  0x70e0 symkey:0x7fda1d3dee80
 12166 ms  0x70e0 PK11_Encrypt()
 12166 ms  0x70e0 symkey:0x7fda1d3dee80
 12220 ms  SECKEY_ECParamsToKeySize()
 12220 ms  0x70e0 ret:0x100
 12220 ms  SECKEY_ECParamsToBasePointOrderLen()
 12220 ms  0x70e0 ret:0x100
 12220 ms  SECKEY_ECParamsToBasePointOrderLen()
 12220 ms  0x70e0 ret:0x100
 12220 ms  0x70e0 EC_ValidatePublicKey()
 12222 ms  0x70e0 ret:0x0
 12225 ms  SECKEY_ECParamsToKeySize()
 12225 ms  0x70e0 ret:0x100
 12225 ms  0x70e0 SECKEY_CreateECPrivateKey()
 12225 ms  0x70e0 cx:0x7fda25abef48
 12225 ms     | 0x70e0 EC_ValidatePublicKey()
 12227 ms     | 0x70e0 ret:0x0
 12227 ms  0x70e0 ret:0x7fda2219d020::7fda2219d020  30 83 fd 21                                      0..!
 12227 ms  0x70e0 PK11_PubDeriveWithKDF()
 12227 ms  0x70e0 seckey:0x7fda2219d020
 12227 ms     | 0x70e0 EC_ValidatePublicKey()
 12233 ms     | 0x70e0 ret:0x0
 12235 ms  0x70e0 ret:0x7fda1cdc5b80
 12235 ms  0x70e0 PK11_DeriveWithFlags()
 12235 ms  0x70e0 basekey:0x7fda1cdc5b80
 12235 ms     | 0x70e0 PK11_DeriveWithTemplate()
 12235 ms  0x70e0 ret:0x7fda1d3de780
 12235 ms  0x70e0 PK11_Derive()
 12235 ms  0x70e0 basekey:0x7fda1d3de780
 12235 ms     | 0x70e0 PK11_DeriveWithTemplate()
 12235 ms  0x70e0 ret:0x7fda1d3de500
 12235 ms  0x70e0 SECKEY_DestroyPrivateKey()
 12235 ms  0x70e0 privk:0x7fda2219d020::7fda2219d020  30 83 fd 21                                      0..!
 12235 ms  0x70e0 privk:0x7fda2219d020::7fda2219d020  e5 e5 e5 e5                                      ....
 12235 ms  0x70e0 PK11_Encrypt()
 12235 ms  0x70e0 symkey:0x7fda1d3e8980
 12240 ms  0x70e0 SSL_AuthCertificateComplete()
 12240 ms  0x70e0 fd:0x7fda1d1ab880
 12240 ms  0x70e0 err:0x0
 12240 ms  0x70e0 SECKEY_DestroyPrivateKey()
 12240 ms  0x70e0 privk:0x7fda1cca6820::7fda1cca6820  70 8e d9 21                                      p..!
 12240 ms  0x70e0 privk:0x7fda1cca6820::7fda1cca6820  e5 e5 e5 e5                                      ....
 12240 ms  0x70e0 SECKEY_DestroyPrivateKey()
 12240 ms  0x70e0 privk:0x7fda1bde2020::7fda1bde2020  90 87 9d 21                                      ...!
 12240 ms  0x70e0 privk:0x7fda1bde2020::7fda1bde2020  e5 e5 e5 e5                                      ....
 12241 ms  0x70e0 PK11_Encrypt()
 12241 ms  0x70e0 symkey:0x7fda1d3e8980
 12243 ms  SECKEY_ECParamsToKeySize()
 12244 ms  0x70e0 ret:0x100
 12244 ms  SECKEY_ECParamsToBasePointOrderLen()
 12244 ms  0x70e0 ret:0x100
 12244 ms  SECKEY_ECParamsToBasePointOrderLen()
 12244 ms  0x70e0 ret:0x100
 12244 ms  0x70e0 EC_ValidatePublicKey()
 12245 ms  0x70e0 ret:0x0
 12247 ms  SECKEY_ECParamsToKeySize()
 12247 ms  0x70e0 ret:0x100
 12247 ms  0x70e0 SECKEY_CreateECPrivateKey()
 12247 ms  0x70e0 cx:0x7fda25abf768
 12253 ms     | 0x70e0 EC_ValidatePublicKey()
 12254 ms     | 0x70e0 ret:0x0
 12254 ms  0x70e0 ret:0x7fda221c6020::7fda221c6020  e0 cc fd 21                                      ...!
 12254 ms  0x70e0 PK11_PubDeriveWithKDF()
 12254 ms  0x70e0 seckey:0x7fda221c6020
 12254 ms     | 0x70e0 EC_ValidatePublicKey()
 12256 ms     | 0x70e0 ret:0x0
 12257 ms  0x70e0 ret:0x7fda1cdc5b80
 12257 ms  0x70e0 PK11_DeriveWithFlags()
 12257 ms  0x70e0 basekey:0x7fda1cdc5b80
 12257 ms     | 0x70e0 PK11_DeriveWithTemplate()
 12263 ms  0x70e0 ret:0x7fda1ec7d800
 12263 ms  0x70e0 PK11_Derive()
 12263 ms  0x70e0 basekey:0x7fda1ec7d800
 12263 ms     | 0x70e0 PK11_DeriveWithTemplate()
 12263 ms  0x70e0 ret:0x7fda1cd0c780
 12263 ms  0x70e0 SECKEY_DestroyPrivateKey()
 12263 ms  0x70e0 privk:0x7fda221c6020::7fda221c6020  e0 cc fd 21                                      ...!
 12263 ms  0x70e0 privk:0x7fda221c6020::7fda221c6020  e5 e5 e5 e5                                      ....
 12263 ms  0x70e0 PK11_Encrypt()
 12263 ms  0x70e0 symkey:0x7fda1d3de180
 12269 ms  SECKEY_ECParamsToKeySize()
 12269 ms  0x70e0 ret:0x100
 12269 ms  SECKEY_ECParamsToBasePointOrderLen()
 12269 ms  0x70e0 ret:0x100
 12269 ms  SECKEY_ECParamsToBasePointOrderLen()
 12269 ms  0x70e0 ret:0x100
 12269 ms  0x70e0 EC_ValidatePublicKey()
 12271 ms  0x70e0 ret:0x0
 12273 ms  SECKEY_ECParamsToKeySize()
 12273 ms  0x70e0 ret:0x100
 12273 ms  0x70e0 SECKEY_CreateECPrivateKey()
 12273 ms  0x70e0 cx:0x7fda25abf5c8
 12273 ms     | 0x70e0 EC_ValidatePublicKey()
 12275 ms     | 0x70e0 ret:0x0
 12275 ms  0x70e0 ret:0x7fda221cb820::7fda221cb820  00 fb 13 1d                                      ....
 12275 ms  0x70e0 PK11_PubDeriveWithKDF()
 12275 ms  0x70e0 seckey:0x7fda221cb820
 12275 ms     | 0x70e0 EC_ValidatePublicKey()
 12276 ms     | 0x70e0 ret:0x0
 12288 ms  0x70e0 ret:0x7fda1cdc5b80
 12288 ms  0x70e0 PK11_DeriveWithFlags()
 12288 ms  0x70e0 basekey:0x7fda1cdc5b80
 12288 ms     | 0x70e0 PK11_DeriveWithTemplate()
 12288 ms  0x70e0 ret:0x7fda1d3dfc00
 12288 ms  0x70e0 PK11_Derive()
 12288 ms  0x70e0 basekey:0x7fda1d3dfc00
 12288 ms     | 0x70e0 PK11_DeriveWithTemplate()
 12288 ms  0x70e0 ret:0x7fda1d3dfd80
 12288 ms  0x70e0 SECKEY_DestroyPrivateKey()
 12288 ms  0x70e0 privk:0x7fda221cb820::7fda221cb820  00 fb 13 1d                                      ....
 12288 ms  0x70e0 privk:0x7fda221cb820::7fda221cb820  e5 e5 e5 e5                                      ....
 12289 ms  0x70e0 PK11_Encrypt()
 12289 ms  0x70e0 symkey:0x7fda1d3dff00
 12290 ms  0x70e0 SECKEY_DestroyPrivateKey()
 12290 ms  0x70e0 privk:0x7fda21ea5020::7fda21ea5020  00 b1 f5 21                                      ...!
 12290 ms  0x70e0 privk:0x7fda21ea5020::7fda21ea5020  e5 e5 e5 e5                                      ....
 12290 ms  0x70e0 SECKEY_DestroyPrivateKey()
 12290 ms  0x70e0 privk:0x7fda21e4e820::7fda21e4e820  70 b4 f5 21                                      p..!
 12290 ms  0x70e0 privk:0x7fda21e4e820::7fda21e4e820  e5 e5 e5 e5                                      ....
 12291 ms  0x70e0 PK11_Encrypt()
 12291 ms  0x70e0 symkey:0x7fda1d3dee80
           /* TID 0x70e8 */
 12293 ms  0x70e8 PR_Close()
 12293 ms  0x70e8 fd:0x7fda1b88dac0
 12318 ms  0x70e8 PR_Close()
 12318 ms  0x70e8 fd:0x7fda1b88d9d0
           /* TID 0x7173 */
 12318 ms  0x7173 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12318 ms  0x7173 ret:0x0
 12318 ms  0x7173 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12318 ms  0x7173 ret:0x0
           /* TID 0x70e0 */
 12319 ms  0x70e0 SSL_AuthCertificateComplete()
 12319 ms  0x70e0 fd:0x7fda1d1abcd0
 12319 ms  0x70e0 err:0x0
 12319 ms  0x70e0 PK11_Encrypt()
 12319 ms  0x70e0 symkey:0x7fda1d3dff00
 12319 ms  0x70e0 PK11_Encrypt()
 12319 ms  0x70e0 symkey:0x7fda1d3dff00
           /* TID 0x70e8 */
 12320 ms  0x70e8 PR_Close()
 12320 ms  0x70e8 fd:0x7fda1ba9e6a0
           /* TID 0x7172 */
 12321 ms  0x7172 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12321 ms  0x7172 ret:0x0
 12321 ms  0x7172 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12321 ms  0x7172 ret:0x0
           /* TID 0x70e0 */
 12321 ms  0x70e0 SSL_AuthCertificateComplete()
 12321 ms  0x70e0 fd:0x7fda1ba9ec40
 12321 ms  0x70e0 err:0x0
 12321 ms  0x70e0 PK11_Encrypt()
 12321 ms  0x70e0 symkey:0x7fda1d3de180
 12322 ms  0x70e0 PK11_Encrypt()
 12322 ms  0x70e0 symkey:0x7fda1d3dff00
 12486 ms  0x70e0 SECKEY_DestroyPrivateKey()
 12486 ms  0x70e0 privk:0x7fda1bdfa020::7fda1bdfa020  60 cf fd 21                                      `..!
 12486 ms  0x70e0 privk:0x7fda1bdfa020::7fda1bdfa020  e5 e5 e5 e5                                      ....
 12486 ms  0x70e0 SECKEY_DestroyPrivateKey()
 12486 ms  0x70e0 privk:0x7fda0a81a020::7fda0a81a020  70 74 32 1d                                      pt2.
 12486 ms  0x70e0 privk:0x7fda0a81a020::7fda0a81a020  e5 e5 e5 e5                                      ....
 12486 ms  0x70e0 PR_Close()
 12486 ms  0x70e0 fd:0x7fda1ba9ec40
 12486 ms     | 0x70e0 PK11_Encrypt()
 12486 ms     | 0x70e0 symkey:0x7fda1d3de180
 12699 ms  0x70e0 PK11_Encrypt()
 12699 ms  0x70e0 symkey:0x7fda1ec46980
           /* TID 0x70e8 */
 13076 ms  0x70e8 PR_Close()
 13076 ms  0x70e8 fd:0x7fda1bdaad60
 13076 ms  0x70e8 PR_Close()
 13076 ms  0x70e8 fd:0x7fda21aee190
 13076 ms  0x70e8 PR_Close()
 13076 ms  0x70e8 fd:0x7fda1ba9ec40
           /* TID 0x70e0 */
 13200 ms  0x70e0 PK11_Encrypt()
 13200 ms  0x70e0 symkey:0x7fda1ec46980
 13298 ms  0x70e0 PR_Close()
 13298 ms  0x70e0 fd:0x7fda2192d3d0
 13305 ms  0x70e0 SSL_ImportFD()
 13305 ms  0x70e0 ret:0x7fda1cc8f520
 13305 ms  0x70e0 SSL_AuthCertificateHook()
 13305 ms  0x70e0 fd:0x7fda1cc8f520
 13305 ms  0x70e0 ret:0x0
 13305 ms  0x70e0 PR_Connect()
 13305 ms  0x70e0 fd:0x7fda1cc8f520
 13355 ms  0x70e0 SECKEY_DestroyPrivateKey()
 13355 ms  0x70e0 privk:0x7fda221aa020::7fda221aa020  70 b9 0c 22                                      p.."
 13355 ms  0x70e0 privk:0x7fda221aa020::7fda221aa020  e5 e5 e5 e5                                      ....
 13355 ms  0x70e0 SECKEY_DestroyPrivateKey()
 13355 ms  0x70e0 privk:0x7fda221a8020::7fda221a8020  90 f2 02 22                                      ..."
 13355 ms  0x70e0 privk:0x7fda221a8020::7fda221a8020  e5 e5 e5 e5                                      ....
 13356 ms  0x70e0 PK11_Encrypt()
 13356 ms  0x70e0 symkey:0x7fda1d3dff00
           /* TID 0x70e8 */
 13362 ms  0x70e8 PR_Close()
 13362 ms  0x70e8 fd:0x7fda1c8343d0
 13368 ms  0x70e8 PR_Close()
 13368 ms  0x70e8 fd:0x7fda0aa27ac0
 13376 ms  0x70e8 PR_Close()
 13376 ms  0x70e8 fd:0x7fda1d1ab2b0
           /* TID 0x70e0 */
 13378 ms  0x70e0 PK11_Encrypt()
 13378 ms  0x70e0 symkey:0x7fda1cdc5d00
 13403 ms  0x70e0 PK11_Encrypt()
 13403 ms  0x70e0 symkey:0x7fda1cdc5d00
           /* TID 0x70e8 */
 13450 ms  0x70e8 PR_Close()
 13450 ms  0x70e8 fd:0x7fda1ba9ec40
           /* TID 0x70e0 */
 13477 ms  0x70e0 SECKEY_DestroyPrivateKey()
 13477 ms  0x70e0 privk:0x7fda221c0020::7fda221c0020  a0 6b 0f 22                                      .k."
 13477 ms  0x70e0 privk:0x7fda221c0020::7fda221c0020  e5 e5 e5 e5                                      ....
 13477 ms  0x70e0 SECKEY_DestroyPrivateKey()
 13477 ms  0x70e0 privk:0x7fda221b0820::7fda221b0820  a0 e1 0e 22                                      ..."
 13477 ms  0x70e0 privk:0x7fda221b0820::7fda221b0820  e5 e5 e5 e5                                      ....
 13477 ms  0x70e0 PR_Close()
 13477 ms  0x70e0 fd:0x7fda1d1ab880
 13477 ms     | 0x70e0 PK11_Encrypt()
 13477 ms     | 0x70e0 symkey:0x7fda1d3e8980
           /* TID 0x70e8 */
 13506 ms  0x70e8 PR_Close()
 13506 ms  0x70e8 fd:0x7fda1ba9ec40
 13518 ms  0x70e8 PR_Close()
 13518 ms  0x70e8 fd:0x7fda1ba9e070
           /* TID 0x70e0 */
 13531 ms  0x70e0 PK11_Encrypt()
 13531 ms  0x70e0 symkey:0x7fda1cdc5d00
 13562 ms  0x70e0 SSL_ImportFD()
 13562 ms  0x70e0 ret:0x7fda1d9d0af0
 13562 ms  0x70e0 SSL_AuthCertificateHook()
 13562 ms  0x70e0 fd:0x7fda1d9d0af0
 13562 ms  0x70e0 ret:0x0
 13562 ms  0x70e0 PR_Connect()
 13562 ms  0x70e0 fd:0x7fda1d9d0af0
           /* TID 0x70e8 */
 13602 ms  0x70e8 PR_Close()
 13602 ms  0x70e8 fd:0x7fda1bdaad00
           /* TID 0x70e0 */
 13603 ms  0x70e0 PK11_Encrypt()
 13603 ms  0x70e0 symkey:0x7fda1d3dff00
 13603 ms  0x70e0 PK11_Encrypt()
 13603 ms  0x70e0 symkey:0x7fda1d3dff00
 13607 ms  0x70e0 PK11_Encrypt()
 13607 ms  0x70e0 symkey:0x7fda1cdc5d00
 13613 ms  0x70e0 PK11_Encrypt()
 13613 ms  0x70e0 symkey:0x7fda1ecf1d80
 13633 ms  0x70e0 SECKEY_CreateECPrivateKey()
 13633 ms  0x70e0 cx:0x7fda25abff88
 13634 ms     | 0x70e0 EC_ValidatePublicKey()
 13634 ms     | 0x70e0 ret:0x0
 13634 ms  0x70e0 ret:0x7fda21ea0020::7fda21ea0020  f0 81 83 1c                                      ....
 13634 ms  0x70e0 SECKEY_CreateECPrivateKey()
 13634 ms  0x70e0 cx:0x7fda25abff88
 13634 ms     | 0x70e0 EC_ValidatePublicKey()
 13636 ms     | 0x70e0 ret:0x0
 13636 ms  0x70e0 ret:0x7fda22198020::7fda22198020  20 f9 13 1d                                       ...
           /* TID 0x70e8 */
 13678 ms  0x70e8 PR_Close()
 13678 ms  0x70e8 fd:0x7fda1bdaac70
           /* TID 0x70e0 */
 13766 ms  0x70e0 SSL_ImportFD()
 13766 ms  0x70e0 ret:0x7fda21d56bb0
 13766 ms  0x70e0 SSL_AuthCertificateHook()
 13766 ms  0x70e0 fd:0x7fda21d56bb0
 13766 ms  0x70e0 ret:0x0
 13766 ms  0x70e0 PR_Connect()
 13766 ms  0x70e0 fd:0x7fda21d56bb0
 13831 ms  0x70e0 SECKEY_CreateECPrivateKey()
 13831 ms  0x70e0 cx:0x7fda25ac02c8
 13831 ms     | 0x70e0 EC_ValidatePublicKey()
 13831 ms     | 0x70e0 ret:0x0
 13831 ms  0x70e0 ret:0x7fda221a0820::7fda221a0820  b0 df 1d 1d                                      ....
 13831 ms  0x70e0 SECKEY_CreateECPrivateKey()
 13831 ms  0x70e0 cx:0x7fda25ac02c8
 13832 ms     | 0x70e0 EC_ValidatePublicKey()
 13833 ms     | 0x70e0 ret:0x0
 13833 ms  0x70e0 ret:0x7fda221a8820::7fda221a8820  d0 73 32 1d                                      .s2.
 13891 ms  0x70e0 SECKEY_CreateECPrivateKey()
 13891 ms  0x70e0 cx:0x7fda25abef48
 13891 ms     | 0x70e0 EC_ValidatePublicKey()
 13891 ms     | 0x70e0 ret:0x0
 13892 ms  0x70e0 ret:0x7fda221ab020::7fda221ab020  10 75 32 1d                                      .u2.
 13892 ms  0x70e0 SECKEY_CreateECPrivateKey()
 13892 ms  0x70e0 cx:0x7fda25abef48
 13892 ms     | 0x70e0 EC_ValidatePublicKey()
 13894 ms     | 0x70e0 ret:0x0
 13894 ms  0x70e0 ret:0x7fda221b0820::7fda221b0820  00 cb c5 1e                                      ....
           /* TID 0x7142 */
 13899 ms  0x7142 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13900 ms  0x7142 ret:0x0
           /* TID 0x70e0 */
 13900 ms  0x70e0 SSL_AuthCertificateComplete()
 13900 ms  0x70e0 fd:0x7fda21d56bb0
 13900 ms  0x70e0 err:0x0
           /* TID 0x70e8 */
 13928 ms  0x70e8 PR_Close()
 13928 ms  0x70e8 fd:0x7fda21aee190
 13929 ms  0x70e8 PR_Close()
 13929 ms  0x70e8 fd:0x7fda1d1abc70
           /* TID 0x70e0 */
 13961 ms  SECKEY_ECParamsToKeySize()
 13961 ms  0x70e0 ret:0x100
 13961 ms  0x70e0 SECKEY_CreateECPrivateKey()
 13961 ms  0x70e0 cx:0x7fda25ac02c8
 13962 ms     | 0x70e0 EC_ValidatePublicKey()
 13963 ms     | 0x70e0 ret:0x0
 13963 ms  0x70e0 ret:0x7fda221cc820::7fda221cc820  e0 bc 92 21                                      ...!
 13963 ms  0x70e0 PK11_PubDeriveWithKDF()
 13963 ms  0x70e0 seckey:0x7fda221cc820
 13963 ms     | 0x70e0 EC_ValidatePublicKey()
 13965 ms     | 0x70e0 ret:0x0
 13966 ms  0x70e0 ret:0x7fda1d3de500
 13966 ms  0x70e0 PK11_DeriveWithFlags()
 13966 ms  0x70e0 basekey:0x7fda1d3de500
 13966 ms     | 0x70e0 PK11_DeriveWithTemplate()
 13966 ms  0x70e0 ret:0x7fda1d3de780
 13966 ms  0x70e0 PK11_Derive()
 13966 ms  0x70e0 basekey:0x7fda1d3de780
 13966 ms     | 0x70e0 PK11_DeriveWithTemplate()
 13966 ms  0x70e0 ret:0x7fda1cd0c780
 13966 ms  0x70e0 SECKEY_DestroyPrivateKey()
 13966 ms  0x70e0 privk:0x7fda221cc820::7fda221cc820  e0 bc 92 21                                      ...!
 13967 ms  0x70e0 privk:0x7fda221cc820::7fda221cc820  e5 e5 e5 e5                                      ....
 13967 ms  0x70e0 PK11_Encrypt()
 13967 ms  0x70e0 symkey:0x7fda1d3e8a00
 13971 ms  0x70e0 PK11_Derive()
 13971 ms  0x70e0 basekey:0x7fda1ec7d800
 13971 ms     | 0x70e0 PK11_DeriveWithTemplate()
 13971 ms  0x70e0 ret:0x7fda1d3de500
 13971 ms  0x70e0 PK11_Encrypt()
 13971 ms  0x70e0 symkey:0x7fda1cd0d300
 13972 ms  0x70e0 SECKEY_DestroyPrivateKey()
 13972 ms  0x70e0 privk:0x7fda22198020::7fda22198020  20 f9 13 1d                                       ...
 13972 ms  0x70e0 privk:0x7fda22198020::7fda22198020  e5 e5 e5 e5                                      ....
 13972 ms  0x70e0 SECKEY_DestroyPrivateKey()
 13972 ms  0x70e0 privk:0x7fda21ea0020::7fda21ea0020  f0 81 83 1c                                      ....
 13972 ms  0x70e0 privk:0x7fda21ea0020::7fda21ea0020  e5 e5 e5 e5                                      ....
 13975 ms  0x70e0 PK11_Encrypt()
 13975 ms  0x70e0 symkey:0x7fda1d3e8a00
 13975 ms  0x70e0 PK11_Encrypt()
 13975 ms  0x70e0 symkey:0x7fda1d3e8a00
 13976 ms  0x70e0 PK11_Encrypt()
 13976 ms  0x70e0 symkey:0x7fda1cd0d300
 14031 ms  0x70e0 SECKEY_DestroyPrivateKey()
 14031 ms  0x70e0 privk:0x7fda221a8820::7fda221a8820  d0 73 32 1d                                      .s2.
 14031 ms  0x70e0 privk:0x7fda221a8820::7fda221a8820  e5 e5 e5 e5                                      ....
 14031 ms  0x70e0 SECKEY_DestroyPrivateKey()
 14031 ms  0x70e0 privk:0x7fda221a0820::7fda221a0820  b0 df 1d 1d                                      ....
 14031 ms  0x70e0 privk:0x7fda221a0820::7fda221a0820  e5 e5 e5 e5                                      ....
 14095 ms  0x70e0 PK11_Encrypt()
 14095 ms  0x70e0 symkey:0x7fda1d3e8a00
           /* TID 0x70e8 */
 14097 ms  0x70e8 PR_Close()
 14097 ms  0x70e8 fd:0x7fda1bdaac10
           /* TID 0x70e0 */
 14156 ms  0x70e0 SSL_ImportFD()
 14156 ms  0x70e0 ret:0x7fda2210e070
 14156 ms  0x70e0 SSL_AuthCertificateHook()
 14156 ms  0x70e0 fd:0x7fda2210e070
 14156 ms  0x70e0 ret:0x0
 14156 ms  0x70e0 PR_Connect()
 14156 ms  0x70e0 fd:0x7fda2210e070
 14156 ms  0x70e0 SSL_ImportFD()
 14156 ms  0x70e0 ret:0x7fda21e291f0
 14156 ms  0x70e0 SSL_AuthCertificateHook()
 14156 ms  0x70e0 fd:0x7fda21e291f0
 14156 ms  0x70e0 ret:0x0
 14156 ms  0x70e0 PR_Connect()
 14156 ms  0x70e0 fd:0x7fda21e291f0
 14217 ms  0x70e0 PK11_Derive()
 14217 ms  0x70e0 basekey:0x7fda1d3e9a80
 14217 ms     | 0x70e0 PK11_DeriveWithTemplate()
 14217 ms  0x70e0 ret:0x7fda1cdc5b80
 14217 ms  0x70e0 PK11_Encrypt()
 14217 ms  0x70e0 symkey:0x7fda1d9cf580
 14218 ms  0x70e0 SECKEY_DestroyPrivateKey()
 14218 ms  0x70e0 privk:0x7fda221b0820::7fda221b0820  00 cb c5 1e                                      ....
 14218 ms  0x70e0 privk:0x7fda221b0820::7fda221b0820  e5 e5 e5 e5                                      ....
 14218 ms  0x70e0 SECKEY_DestroyPrivateKey()
 14218 ms  0x70e0 privk:0x7fda221ab020::7fda221ab020  10 75 32 1d                                      .u2.
 14218 ms  0x70e0 privk:0x7fda221ab020::7fda221ab020  e5 e5 e5 e5                                      ....
 14218 ms  0x70e0 PR_Close()
 14218 ms  0x70e0 fd:0x7fda1d9d0af0
 14218 ms     | 0x70e0 PK11_Encrypt()
 14218 ms     | 0x70e0 symkey:0x7fda1d9cf580
 14408 ms  0x70e0 SSL_ImportFD()
 14408 ms  0x70e0 ret:0x7fda21aee3a0
 14408 ms  0x70e0 SSL_AuthCertificateHook()
 14408 ms  0x70e0 fd:0x7fda21aee3a0
 14408 ms  0x70e0 ret:0x0
 14408 ms  0x70e0 PR_Connect()
 14408 ms  0x70e0 fd:0x7fda21aee3a0
 14408 ms  0x70e0 SSL_ImportFD()
 14408 ms  0x70e0 ret:0x7fda206bde50
 14408 ms  0x70e0 SSL_AuthCertificateHook()
 14408 ms  0x70e0 fd:0x7fda206bde50
 14408 ms  0x70e0 ret:0x0
 14408 ms  0x70e0 PR_Connect()
 14408 ms  0x70e0 fd:0x7fda206bde50
 14485 ms  0x70e0 SECKEY_CreateECPrivateKey()
 14485 ms  0x70e0 cx:0x7fda25ac0608
 14485 ms     | 0x70e0 EC_ValidatePublicKey()
 14485 ms     | 0x70e0 ret:0x0
 14485 ms  0x70e0 ret:0x7fda221a9020::7fda221a9020  c0 74 32 1d                                      .t2.
 14485 ms  0x70e0 SECKEY_CreateECPrivateKey()
 14485 ms  0x70e0 cx:0x7fda25ac0608
 14486 ms     | 0x70e0 EC_ValidatePublicKey()
 14487 ms     | 0x70e0 ret:0x0
 14487 ms  0x70e0 ret:0x7fda221ad820::7fda221ad820  20 c4 c5 1e                                       ...
 14497 ms  0x70e0 SECKEY_CreateECPrivateKey()
 14497 ms  0x70e0 cx:0x7fda25ac07a8
 14498 ms     | 0x70e0 EC_ValidatePublicKey()
 14498 ms     | 0x70e0 ret:0x0
 14498 ms  0x70e0 ret:0x7fda221cc020::7fda221cc020  00 cb c5 1e                                      ....
 14498 ms  0x70e0 SECKEY_CreateECPrivateKey()
 14498 ms  0x70e0 cx:0x7fda25ac07a8
 14499 ms     | 0x70e0 EC_ValidatePublicKey()
 14500 ms     | 0x70e0 ret:0x0
 14500 ms  0x70e0 ret:0x7fda221d4820::7fda221d4820  d0 38 93 21                                      .8.!
 14543 ms  0x70e0 PK11_Encrypt()
 14543 ms  0x70e0 symkey:0x7fda1d3dff00
 14544 ms  0x70e0 PK11_Encrypt()
 14544 ms  0x70e0 symkey:0x7fda1d3dff00
 14663 ms  0x70e0 PK11_Encrypt()
 14663 ms  0x70e0 symkey:0x7fda1cd0d300
 14732 ms  0x70e0 SECKEY_CreateECPrivateKey()
 14732 ms  0x70e0 cx:0x7fda25abef48
 14733 ms     | 0x70e0 EC_ValidatePublicKey()
 14733 ms     | 0x70e0 ret:0x0
 14733 ms  0x70e0 ret:0x7fda24a4d820::7fda24a4d820  90 87 9d 21                                      ...!
 14733 ms  0x70e0 SECKEY_CreateECPrivateKey()
 14733 ms  0x70e0 cx:0x7fda25abef48
 14734 ms     | 0x70e0 EC_ValidatePublicKey()
 14735 ms     | 0x70e0 ret:0x0
 14735 ms  0x70e0 ret:0x7fda24a55820::7fda24a55820  a0 b6 d7 21                                      ...!
 14828 ms  SECKEY_ECParamsToKeySize()
 14828 ms  0x70e0 ret:0x100
 14829 ms  0x70e0 SSL_AuthCertificateComplete()
 14829 ms  0x70e0 fd:0x7fda21e291f0
 14829 ms  0x70e0 err:0x0
 14832 ms  SECKEY_ECParamsToKeySize()
 14832 ms  0x70e0 ret:0x100
 14833 ms  0x70e0 SSL_AuthCertificateComplete()
 14833 ms  0x70e0 fd:0x7fda2210e070
 14833 ms  0x70e0 err:0x0
 14837 ms  SECKEY_ECParamsToBasePointOrderLen()
 14837 ms  0x70e0 ret:0x100
 14837 ms  SECKEY_ECParamsToBasePointOrderLen()
 14837 ms  0x70e0 ret:0x100
 14837 ms  0x70e0 EC_ValidatePublicKey()
 14839 ms  0x70e0 ret:0x0
 14842 ms  SECKEY_ECParamsToKeySize()
 14842 ms  0x70e0 ret:0x100
 14843 ms  0x70e0 SECKEY_CreateECPrivateKey()
 14843 ms  0x70e0 cx:0x7fda25ac07a8
 14843 ms     | 0x70e0 EC_ValidatePublicKey()
 14845 ms     | 0x70e0 ret:0x0
 14845 ms  0x70e0 ret:0x7fda24a5b020::7fda24a5b020  d0 ad e7 21                                      ...!
 14845 ms  0x70e0 PK11_PubDeriveWithKDF()
 14845 ms  0x70e0 seckey:0x7fda24a5b020
 14845 ms     | 0x70e0 EC_ValidatePublicKey()
 14846 ms     | 0x70e0 ret:0x0
 14852 ms  0x70e0 ret:0x7fda1cdc5b80
 14852 ms  0x70e0 PK11_DeriveWithFlags()
 14852 ms  0x70e0 basekey:0x7fda1cdc5b80
 14852 ms     | 0x70e0 PK11_DeriveWithTemplate()
 14852 ms  0x70e0 ret:0x7fda1d3e9a80
 14852 ms  0x70e0 PK11_Derive()
 14852 ms  0x70e0 basekey:0x7fda1d3e9a80
 14852 ms     | 0x70e0 PK11_DeriveWithTemplate()
 14853 ms  0x70e0 ret:0x7fda1d9cf480
 14853 ms  0x70e0 SECKEY_DestroyPrivateKey()
 14853 ms  0x70e0 privk:0x7fda24a5b020::7fda24a5b020  d0 ad e7 21                                      ...!
 14853 ms  0x70e0 privk:0x7fda24a5b020::7fda24a5b020  e5 e5 e5 e5                                      ....
 14853 ms  0x70e0 PK11_Encrypt()
 14853 ms  0x70e0 symkey:0x7fda1d9cf580
 14854 ms  SECKEY_ECParamsToBasePointOrderLen()
 14854 ms  0x70e0 ret:0x100
 14854 ms  SECKEY_ECParamsToBasePointOrderLen()
 14854 ms  0x70e0 ret:0x100
 14854 ms  0x70e0 EC_ValidatePublicKey()
 14855 ms  0x70e0 ret:0x0
 14862 ms  SECKEY_ECParamsToKeySize()
 14862 ms  0x70e0 ret:0x100
 14862 ms  0x70e0 SECKEY_CreateECPrivateKey()
 14862 ms  0x70e0 cx:0x7fda25ac0608
 14862 ms     | 0x70e0 EC_ValidatePublicKey()
 14864 ms     | 0x70e0 ret:0x0
 14864 ms  0x70e0 ret:0x7fda24a5b820::7fda24a5b820  d0 ad e7 21                                      ...!
 14864 ms  0x70e0 PK11_PubDeriveWithKDF()
 14864 ms  0x70e0 seckey:0x7fda24a5b820
 14864 ms     | 0x70e0 EC_ValidatePublicKey()
 14866 ms     | 0x70e0 ret:0x0
 14867 ms  0x70e0 ret:0x7fda1cdc5b80
 14867 ms  0x70e0 PK11_DeriveWithFlags()
 14867 ms  0x70e0 basekey:0x7fda1cdc5b80
 14867 ms     | 0x70e0 PK11_DeriveWithTemplate()
 14867 ms  0x70e0 ret:0x7fda21755780
 14867 ms  0x70e0 PK11_Derive()
 14867 ms  0x70e0 basekey:0x7fda21755780
 14867 ms     | 0x70e0 PK11_DeriveWithTemplate()
 14867 ms  0x70e0 ret:0x7fda21755f00
 14867 ms  0x70e0 SECKEY_DestroyPrivateKey()
 14867 ms  0x70e0 privk:0x7fda24a5b820::7fda24a5b820  d0 ad e7 21                                      ...!
 14867 ms  0x70e0 privk:0x7fda24a5b820::7fda24a5b820  e5 e5 e5 e5                                      ....
 14873 ms  0x70e0 PK11_Encrypt()
 14873 ms  0x70e0 symkey:0x7fda217e7080
 14876 ms  0x70e0 PK11_Encrypt()
 14876 ms  0x70e0 symkey:0x7fda1d9cf580
 14876 ms  0x70e0 PK11_Encrypt()
 14876 ms  0x70e0 symkey:0x7fda1d9cf580
 14877 ms  0x70e0 PR_Close()
 14877 ms  0x70e0 fd:0x7fda206bde50
 14877 ms  0x70e0 PK11_Encrypt()
 14877 ms  0x70e0 symkey:0x7fda217e7080
 14878 ms  0x70e0 PK11_Encrypt()
 14878 ms  0x70e0 symkey:0x7fda1d9cf580
 15070 ms  SECKEY_ECParamsToKeySize()
 15070 ms  0x70e0 ret:0x100
 15071 ms  0x70e0 SSL_AuthCertificateComplete()
 15071 ms  0x70e0 fd:0x7fda21aee3a0
 15071 ms  0x70e0 err:0x0
 15079 ms  SECKEY_ECParamsToBasePointOrderLen()
 15079 ms  0x70e0 ret:0x100
 15079 ms  SECKEY_ECParamsToBasePointOrderLen()
 15079 ms  0x70e0 ret:0x100
 15079 ms  0x70e0 EC_ValidatePublicKey()
 15080 ms  0x70e0 ret:0x0
 15082 ms  SECKEY_ECParamsToKeySize()
 15082 ms  0x70e0 ret:0x100
 15082 ms  0x70e0 SECKEY_CreateECPrivateKey()
 15082 ms  0x70e0 cx:0x7fda25abef48
 15083 ms     | 0x70e0 EC_ValidatePublicKey()
 15084 ms     | 0x70e0 ret:0x0
 15084 ms  0x70e0 ret:0x7fda24a60020::7fda24a60020  20 b4 f5 21                                       ..!
 15084 ms  0x70e0 PK11_PubDeriveWithKDF()
 15084 ms  0x70e0 seckey:0x7fda24a60020
 15084 ms     | 0x70e0 EC_ValidatePublicKey()
 15086 ms     | 0x70e0 ret:0x0
 15087 ms  0x70e0 ret:0x7fda1cdc5b80
 15087 ms  0x70e0 PK11_DeriveWithFlags()
 15087 ms  0x70e0 basekey:0x7fda1cdc5b80
 15087 ms     | 0x70e0 PK11_DeriveWithTemplate()
 15087 ms  0x70e0 ret:0x7fda21d16a80
 15087 ms  0x70e0 PK11_Derive()
 15087 ms  0x70e0 basekey:0x7fda21d16a80
 15087 ms     | 0x70e0 PK11_DeriveWithTemplate()
 15087 ms  0x70e0 ret:0x7fda21d16b00
 15087 ms  0x70e0 SECKEY_DestroyPrivateKey()
 15087 ms  0x70e0 privk:0x7fda24a60020::7fda24a60020  20 b4 f5 21                                       ..!
 15087 ms  0x70e0 privk:0x7fda24a60020::7fda24a60020  e5 e5 e5 e5                                      ....
 15095 ms  0x70e0 PK11_Encrypt()
 15095 ms  0x70e0 symkey:0x7fda21d16c80
 15096 ms  0x70e0 PK11_Encrypt()
 15096 ms  0x70e0 symkey:0x7fda21d16c80
           /* TID 0x70e8 */
 15182 ms  0x70e8 PR_Close()
 15182 ms  0x70e8 fd:0x7fda2210edf0
 15182 ms  0x70e8 PR_Close()
 15182 ms  0x70e8 fd:0x7fda22122370
 15182 ms  0x70e8 PR_Close()
 15182 ms  0x70e8 fd:0x7fda22122400
 15182 ms  0x70e8 PR_Close()
 15182 ms  0x70e8 fd:0x7fda22122460
 15182 ms  0x70e8 PR_Close()
 15182 ms  0x70e8 fd:0x7fda221224c0
 15182 ms  0x70e8 PR_Close()
 15182 ms  0x70e8 fd:0x7fda22122520
 15182 ms  0x70e8 PR_Close()
 15182 ms  0x70e8 fd:0x7fda221225b0
 15182 ms  0x70e8 PR_Close()
 15182 ms  0x70e8 fd:0x7fda22122610
 15182 ms  0x70e8 PR_Close()
 15182 ms  0x70e8 fd:0x7fda2210edf0
 15182 ms  0x70e8 PR_Close()
 15182 ms  0x70e8 fd:0x7fda22122370
 15182 ms  0x70e8 PR_Close()
 15182 ms  0x70e8 fd:0x7fda22122400
 15182 ms  0x70e8 PR_Close()
 15182 ms  0x70e8 fd:0x7fda22122460
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda221224c0
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22122520
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda221225b0
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22122610
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda221226a0
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22122760
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda221227c0
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22122940
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22122cd0
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22122d30
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22122d90
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22122df0
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22122e50
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22122eb0
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22122f10
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22122f70
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22122fd0
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22142880
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22142970
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22142a00
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22142a60
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22142af0
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22142b50
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22142c10
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22142ca0
 15183 ms  0x70e8 PR_Close()
 15183 ms  0x70e8 fd:0x7fda22142e50
           /* TID 0x70e0 */
 15196 ms  0x70e0 SECKEY_DestroyPrivateKey()
 15196 ms  0x70e0 privk:0x7fda221d4820::7fda221d4820  d0 38 93 21                                      .8.!
 15196 ms  0x70e0 privk:0x7fda221d4820::7fda221d4820  e5 e5 e5 e5                                      ....
 15196 ms  0x70e0 SECKEY_DestroyPrivateKey()
 15196 ms  0x70e0 privk:0x7fda221cc020::7fda221cc020  00 cb c5 1e                                      ....
 15196 ms  0x70e0 privk:0x7fda221cc020::7fda221cc020  e5 e5 e5 e5                                      ....
 15196 ms  0x70e0 PK11_Encrypt()
 15196 ms  0x70e0 symkey:0x7fda1d9cf580
 15214 ms  0x70e0 SECKEY_DestroyPrivateKey()
 15214 ms  0x70e0 privk:0x7fda221ad820::7fda221ad820  20 c4 c5 1e                                       ...
 15214 ms  0x70e0 privk:0x7fda221ad820::7fda221ad820  e5 e5 e5 e5                                      ....
 15214 ms  0x70e0 SECKEY_DestroyPrivateKey()
 15214 ms  0x70e0 privk:0x7fda221a9020::7fda221a9020  c0 74 32 1d                                      .t2.
 15214 ms  0x70e0 privk:0x7fda221a9020::7fda221a9020  e5 e5 e5 e5                                      ....
 15214 ms  0x70e0 PR_Close()
 15214 ms  0x70e0 fd:0x7fda2210e070
 15214 ms     | 0x70e0 PK11_Encrypt()
 15214 ms     | 0x70e0 symkey:0x7fda217e7080
 15386 ms  0x70e0 PR_Close()
 15386 ms  0x70e0 fd:0x7fda21e13ee0
 15422 ms  0x70e0 SECKEY_DestroyPrivateKey()
 15422 ms  0x70e0 privk:0x7fda24a55820::7fda24a55820  a0 b6 d7 21                                      ...!
 15422 ms  0x70e0 privk:0x7fda24a55820::7fda24a55820  e5 e5 e5 e5                                      ....
 15422 ms  0x70e0 SECKEY_DestroyPrivateKey()
 15422 ms  0x70e0 privk:0x7fda24a4d820::7fda24a4d820  90 87 9d 21                                      ...!
 15422 ms  0x70e0 privk:0x7fda24a4d820::7fda24a4d820  e5 e5 e5 e5                                      ....
 15422 ms  0x70e0 PR_Close()
 15422 ms  0x70e0 fd:0x7fda21aee3a0
 15422 ms     | 0x70e0 PK11_Encrypt()
 15422 ms     | 0x70e0 symkey:0x7fda21d16c80
 15441 ms  0x70e0 SSL_ImportFD()
 15441 ms  0x70e0 ret:0x7fda1d9d0c70
 15441 ms  0x70e0 SSL_AuthCertificateHook()
 15441 ms  0x70e0 fd:0x7fda1d9d0c70
 15441 ms  0x70e0 ret:0x0
 15441 ms  0x70e0 PR_Connect()
 15441 ms  0x70e0 fd:0x7fda1d9d0c70
 15458 ms  0x70e0 PR_Close()
 15458 ms  0x70e0 fd:0x7fda21d56c70
           /* TID 0x70e8 */
 15540 ms  0x70e8 PR_Close()
 15540 ms  0x70e8 fd:0x7fda1c834340
 15625 ms  0x70e8 PR_Close()
 15625 ms  0x70e8 fd:0x7fda1cc8f0d0
           /* TID 0x70e0 */
 15698 ms  0x70e0 SSL_ImportFD()
 15698 ms  0x70e0 ret:0x7fda220ef1f0
 15698 ms  0x70e0 SSL_AuthCertificateHook()
 15698 ms  0x70e0 fd:0x7fda220ef1f0
 15698 ms  0x70e0 ret:0x0
 15698 ms  0x70e0 PR_Connect()
 15698 ms  0x70e0 fd:0x7fda220ef1f0
 15790 ms  0x70e0 SECKEY_CreateECPrivateKey()
 15790 ms  0x70e0 cx:0x7fda25abef48
 15790 ms     | 0x70e0 EC_ValidatePublicKey()
 15790 ms     | 0x70e0 ret:0x0
 15790 ms  0x70e0 ret:0x7fda221a9020::7fda221a9020  10 75 32 1d                                      .u2.
 15790 ms  0x70e0 SECKEY_CreateECPrivateKey()
 15790 ms  0x70e0 cx:0x7fda25abef48
 15791 ms     | 0x70e0 EC_ValidatePublicKey()
 15792 ms     | 0x70e0 ret:0x0
 15792 ms  0x70e0 ret:0x7fda221ad820::7fda221ad820  60 ca c5 1e                                      `...
 16052 ms  0x70e0 SECKEY_CreateECPrivateKey()
 16052 ms  0x70e0 cx:0x7fda25ac0608
 16053 ms     | 0x70e0 EC_ValidatePublicKey()
 16053 ms     | 0x70e0 ret:0x0
 16053 ms  0x70e0 ret:0x7fda221cc020::7fda221cc020  40 77 65 20                                      @we 
 16053 ms  0x70e0 SECKEY_CreateECPrivateKey()
 16053 ms  0x70e0 cx:0x7fda25ac0608
 16055 ms     | 0x70e0 EC_ValidatePublicKey()
 16059 ms     | 0x70e0 ret:0x0
 16059 ms  0x70e0 ret:0x7fda221d4820::7fda221d4820  a0 81 9d 21                                      ...!
 16238 ms  SECKEY_ECParamsToKeySize()
 16238 ms  0x70e0 ret:0x100
 16238 ms  0x70e0 SECKEY_CreateECPrivateKey()
 16238 ms  0x70e0 cx:0x7fda25abef48
 16240 ms     | 0x70e0 EC_ValidatePublicKey()
 16244 ms     | 0x70e0 ret:0x0
 16244 ms  0x70e0 ret:0x7fda25515020::7fda25515020  60 b5 f5 21                                      `..!
 16245 ms  0x70e0 PK11_PubDeriveWithKDF()
 16245 ms  0x70e0 seckey:0x7fda25515020
 16245 ms     | 0x70e0 EC_ValidatePublicKey()
 16251 ms     | 0x70e0 ret:0x0
 16255 ms  0x70e0 ret:0x7fda21d16b00
 16255 ms  0x70e0 PK11_DeriveWithFlags()
 16255 ms  0x70e0 basekey:0x7fda21d16b00
 16255 ms     | 0x70e0 PK11_DeriveWithTemplate()
 16255 ms  0x70e0 ret:0x7fda21d16a80
 16255 ms  0x70e0 PK11_Derive()
 16255 ms  0x70e0 basekey:0x7fda21d16a80
 16255 ms     | 0x70e0 PK11_DeriveWithTemplate()
 16255 ms  0x70e0 ret:0x7fda21755f00
 16255 ms  0x70e0 SECKEY_DestroyPrivateKey()
 16255 ms  0x70e0 privk:0x7fda25515020::7fda25515020  60 b5 f5 21                                      `..!
 16255 ms  0x70e0 privk:0x7fda25515020::7fda25515020  e5 e5 e5 e5                                      ....
 16256 ms  0x70e0 PK11_Encrypt()
 16256 ms  0x70e0 symkey:0x7fda21d16b80
           /* TID 0x7142 */
 16283 ms  0x7142 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16283 ms  0x7142 ret:0x0
           /* TID 0x70e8 */
 16283 ms  0x70e8 PR_Close()
 16283 ms  0x70e8 fd:0x7fda2210e790
           /* TID 0x70e0 */
 16283 ms  0x70e0 SSL_AuthCertificateComplete()
 16283 ms  0x70e0 fd:0x7fda1d9d0c70
 16283 ms  0x70e0 err:0x0
 16284 ms  0x70e0 PK11_Encrypt()
 16284 ms  0x70e0 symkey:0x7fda21d16b80
 16284 ms  0x70e0 PK11_Encrypt()
 16284 ms  0x70e0 symkey:0x7fda21d16b80
 16284 ms  0x70e0 PK11_Encrypt()
 16284 ms  0x70e0 symkey:0x7fda21d16b80
 16487 ms  SECKEY_ECParamsToKeySize()
 16487 ms  0x70e0 ret:0x100
 16487 ms  0x70e0 SECKEY_CreateECPrivateKey()
 16487 ms  0x70e0 cx:0x7fda25ac0608
 16488 ms     | 0x70e0 EC_ValidatePublicKey()
 16492 ms     | 0x70e0 ret:0x0
 16492 ms  0x70e0 ret:0x7fda25515020::7fda25515020  70 b4 f5 21                                      p..!
 16492 ms  0x70e0 PK11_PubDeriveWithKDF()
 16492 ms  0x70e0 seckey:0x7fda25515020
 16492 ms     | 0x70e0 EC_ValidatePublicKey()
 16496 ms     | 0x70e0 ret:0x0
 16500 ms  0x70e0 ret:0x7fda21d16b00
 16500 ms  0x70e0 PK11_DeriveWithFlags()
 16500 ms  0x70e0 basekey:0x7fda21d16b00
 16500 ms     | 0x70e0 PK11_DeriveWithTemplate()
 16500 ms  0x70e0 ret:0x7fda21755780
 16500 ms  0x70e0 PK11_Derive()
 16500 ms  0x70e0 basekey:0x7fda21755780
 16500 ms     | 0x70e0 PK11_DeriveWithTemplate()
 16500 ms  0x70e0 ret:0x7fda1cdc5b80
 16500 ms  0x70e0 SECKEY_DestroyPrivateKey()
 16500 ms  0x70e0 privk:0x7fda25515020::7fda25515020  70 b4 f5 21                                      p..!
 16501 ms  0x70e0 privk:0x7fda25515020::7fda25515020  e5 e5 e5 e5                                      ....
 16501 ms  0x70e0 PK11_Encrypt()
 16501 ms  0x70e0 symkey:0x7fda21756200
 16502 ms  0x70e0 SSL_AuthCertificateComplete()
 16502 ms  0x70e0 fd:0x7fda220ef1f0
 16502 ms  0x70e0 err:0x0
 16502 ms  0x70e0 PK11_Encrypt()
 16502 ms  0x70e0 symkey:0x7fda21756200
 16572 ms  0x70e0 PR_Close()
 16572 ms  0x70e0 fd:0x7fda1cdbbb80
 16598 ms  0x70e0 PR_Close()
 16598 ms  0x70e0 fd:0x7fda1cdbbbe0
 16653 ms  0x70e0 SECKEY_DestroyPrivateKey()
 16653 ms  0x70e0 privk:0x7fda221ad820::7fda221ad820  60 ca c5 1e                                      `...
 16653 ms  0x70e0 privk:0x7fda221ad820::7fda221ad820  e5 e5 e5 e5                                      ....
 16653 ms  0x70e0 SECKEY_DestroyPrivateKey()
 16653 ms  0x70e0 privk:0x7fda221a9020::7fda221a9020  10 75 32 1d                                      .u2.
 16654 ms  0x70e0 privk:0x7fda221a9020::7fda221a9020  e5 e5 e5 e5                                      ....
 16654 ms  0x70e0 PK11_Encrypt()
 16654 ms  0x70e0 symkey:0x7fda21d16b80
 16847 ms  0x70e0 PK11_Encrypt()
 16847 ms  0x70e0 symkey:0x7fda1cdc5d00
 16849 ms  0x70e0 PK11_Encrypt()
 16849 ms  0x70e0 symkey:0x7fda1cdc5d00
           /* TID 0x70e8 */
 16850 ms  0x70e8 PR_Close()
 16850 ms  0x70e8 fd:0x7fda22122400
           /* TID 0x70e0 */
 16860 ms  0x70e0 PK11_Encrypt()
 16860 ms  0x70e0 symkey:0x7fda1cdc5d00
 16893 ms  0x70e0 SECKEY_DestroyPrivateKey()
 16893 ms  0x70e0 privk:0x7fda221d4820::7fda221d4820  a0 81 9d 21                                      ...!
 16893 ms  0x70e0 privk:0x7fda221d4820::7fda221d4820  e5 e5 e5 e5                                      ....
 16893 ms  0x70e0 SECKEY_DestroyPrivateKey()
 16893 ms  0x70e0 privk:0x7fda221cc020::7fda221cc020  40 77 65 20                                      @we 
 16894 ms  0x70e0 privk:0x7fda221cc020::7fda221cc020  e5 e5 e5 e5                                      ....
 16894 ms  0x70e0 PR_Close()
 16894 ms  0x70e0 fd:0x7fda220ef1f0
 16894 ms     | 0x70e0 PK11_Encrypt()
 16894 ms     | 0x70e0 symkey:0x7fda21756200
           /* TID 0x70e8 */
 16920 ms  0x70e8 PR_Close()
 16920 ms  0x70e8 fd:0x7fda21aee400
 16989 ms  0x70e8 PR_Close()
 16989 ms  0x70e8 fd:0x7fda2210e4c0
 16992 ms  0x70e8 PR_Close()
 16992 ms  0x70e8 fd:0x7fda2210e4c0
           /* TID 0x70e0 */
 17056 ms  0x70e0 PK11_Encrypt()
 17056 ms  0x70e0 symkey:0x7fda1d9cf580
 17097 ms  0x70e0 PR_Close()
 17097 ms  0x70e0 fd:0x7fda1d1ab910
 17097 ms     | 0x70e0 PK11_Encrypt()
 17097 ms     | 0x70e0 symkey:0x7fda1d1b4600
           /* TID 0x70e8 */
 17485 ms  0x70e8 PR_Close()
 17485 ms  0x70e8 fd:0x7fda1ba9ec70
           /* TID 0x70e0 */
 18121 ms  0x70e0 SSL_ImportFD()
 18122 ms  0x70e0 ret:0x7fda1d1abbe0
 18122 ms  0x70e0 SSL_AuthCertificateHook()
 18122 ms  0x70e0 fd:0x7fda1d1abbe0
 18122 ms  0x70e0 ret:0x0
 18124 ms  0x70e0 PK11_Encrypt()
 18124 ms  0x70e0 symkey:0x7fda0a9f2800
 18125 ms  0x70e0 PR_Connect()
 18125 ms  0x70e0 fd:0x7fda1d1abbe0
 18188 ms  0x70e0 SECKEY_CreateECPrivateKey()
 18188 ms  0x70e0 cx:0x7fda25abec08
 18190 ms     | 0x70e0 EC_ValidatePublicKey()
 18190 ms     | 0x70e0 ret:0x0
 18190 ms  0x70e0 ret:0x7fda221cb820::7fda221cb820  b0 8a d9 21                                      ...!
 18190 ms  0x70e0 SECKEY_CreateECPrivateKey()
 18190 ms  0x70e0 cx:0x7fda25abec08
 18192 ms     | 0x70e0 EC_ValidatePublicKey()
 18194 ms     | 0x70e0 ret:0x0
 18194 ms  0x70e0 ret:0x7fda221cd820::7fda221cd820  70 b4 f5 21                                      p..!
           /* TID 0x70e8 */
 18311 ms  0x70e8 PR_Close()
 18311 ms  0x70e8 fd:0x7fda21757e20
           /* TID 0x70e0 */
 18331 ms  0x70e0 PK11_Encrypt()
 18331 ms  0x70e0 symkey:0x7fda1d3de480
 18332 ms  0x70e0 PK11_Encrypt()
 18332 ms  0x70e0 symkey:0x7fda1d3de480
 18332 ms  0x70e0 PK11_Encrypt()
 18332 ms  0x70e0 symkey:0x7fda1d3de480
 18333 ms  0x70e0 PK11_Encrypt()
 18333 ms  0x70e0 symkey:0x7fda1d3de480
           /* TID 0x70e8 */
 18401 ms  0x70e8 PR_Close()
 18401 ms  0x70e8 fd:0x7fda22122640
 18471 ms  0x70e8 PR_Close()
 18471 ms  0x70e8 fd:0x7fda22122340
 18473 ms  0x70e8 PR_Close()
 18473 ms  0x70e8 fd:0x7fda1c834340
 18477 ms  0x70e8 PR_Close()
 18477 ms  0x70e8 fd:0x7fda2210e790
           /* TID 0x70e0 */
 18918 ms  SECKEY_ECParamsToKeySize()
 18918 ms  0x70e0 ret:0x100
 18919 ms  SECKEY_ECParamsToBasePointOrderLen()
 18919 ms  0x70e0 ret:0x100
 18919 ms  SECKEY_ECParamsToBasePointOrderLen()
 18919 ms  0x70e0 ret:0x100
 18919 ms  0x70e0 EC_ValidatePublicKey()
 18924 ms  0x70e0 ret:0x0
 18933 ms  SECKEY_ECParamsToKeySize()
 18933 ms  0x70e0 ret:0xff
 18933 ms  0x70e0 SECKEY_CreateECPrivateKey()
 18933 ms  0x70e0 cx:0x7fda0aa0c648
 18935 ms     | 0x70e0 EC_ValidatePublicKey()
 18935 ms     | 0x70e0 ret:0x0
 18935 ms  0x70e0 ret:0x7fda25516020::7fda25516020  00 cb c5 1e                                      ....
 18935 ms  0x70e0 PK11_PubDeriveWithKDF()
 18935 ms  0x70e0 seckey:0x7fda25516020
 18935 ms     | 0x70e0 EC_ValidatePublicKey()
 18935 ms     | 0x70e0 ret:0x0
 18936 ms  0x70e0 ret:0x7fda1cd0dc00
 18936 ms  0x70e0 PK11_DeriveWithFlags()
 18936 ms  0x70e0 basekey:0x7fda1cd0dc00
 18936 ms     | 0x70e0 PK11_DeriveWithTemplate()
 18937 ms  0x70e0 ret:0x7fda1cdc4e00
 18937 ms  0x70e0 PK11_Derive()
 18937 ms  0x70e0 basekey:0x7fda1cdc4e00
 18937 ms     | 0x70e0 PK11_DeriveWithTemplate()
 18937 ms  0x70e0 ret:0x7fda1cdc5b80
 18937 ms  0x70e0 SECKEY_DestroyPrivateKey()
 18937 ms  0x70e0 privk:0x7fda25516020::7fda25516020  00 cb c5 1e                                      ....
 18937 ms  0x70e0 privk:0x7fda25516020::7fda25516020  e5 e5 e5 e5                                      ....
 18937 ms  0x70e0 PK11_Encrypt()
 18937 ms  0x70e0 symkey:0x7fda1cd0dd80
 18938 ms  0x70e0 SSL_AuthCertificateComplete()
 18938 ms  0x70e0 fd:0x7fda21d56100
 18938 ms  0x70e0 err:0x0
 18939 ms  0x70e0 PK11_Encrypt()
 18939 ms  0x70e0 symkey:0x7fda1cd0dd80
 18940 ms  0x70e0 PR_Close()
 18940 ms  0x70e0 fd:0x7fda220ef250
 18940 ms     | 0x70e0 PK11_Encrypt()
 18940 ms     | 0x70e0 symkey:0x7fda1ecf1d80
 18941 ms  0x70e0 PK11_Encrypt()
 18941 ms  0x70e0 symkey:0x7fda1ec93900
 19016 ms  0x70e0 SSL_ImportFD()
 19016 ms  0x70e0 ret:0x7fda249e2280
 19016 ms  0x70e0 SSL_AuthCertificateHook()
 19016 ms  0x70e0 fd:0x7fda249e2280
 19016 ms  0x70e0 ret:0x0
 19016 ms  0x70e0 PR_Connect()
 19016 ms  0x70e0 fd:0x7fda249e2280
 19223 ms  0x70e0 SECKEY_CreateECPrivateKey()
 19223 ms  0x70e0 cx:0x7fda25ac0608
 19225 ms     | 0x70e0 EC_ValidatePublicKey()
 19225 ms     | 0x70e0 ret:0x0
 19225 ms  0x70e0 ret:0x7fda25b8e020::7fda25b8e020  40 cc fd 21                                      @..!
 19225 ms  0x70e0 SECKEY_CreateECPrivateKey()
 19225 ms  0x70e0 cx:0x7fda25ac0608
 19227 ms     | 0x70e0 EC_ValidatePublicKey()
 19229 ms     | 0x70e0 ret:0x0
 19229 ms  0x70e0 ret:0x7fda25b90020::7fda25b90020  d0 ed f7 21                                      ...!
 19234 ms  0x70e0 SECKEY_DestroyPrivateKey()
 19234 ms  0x70e0 privk:0x7fda21e9e020::7fda21e9e020  90 a7 e7 21                                      ...!
 19234 ms  0x70e0 privk:0x7fda21e9e020::7fda21e9e020  e5 e5 e5 e5                                      ....
 19234 ms  0x70e0 SECKEY_DestroyPrivateKey()
 19234 ms  0x70e0 privk:0x7fda21e9b820::7fda21e9b820  70 c4 e2 21                                      p..!
 19234 ms  0x70e0 privk:0x7fda21e9b820::7fda21e9b820  e5 e5 e5 e5                                      ....
 19234 ms  0x70e0 PR_Close()
 19234 ms  0x70e0 fd:0x7fda21d56100
 19234 ms     | 0x70e0 PK11_Encrypt()
 19234 ms     | 0x70e0 symkey:0x7fda1cd0dd80
 19442 ms  SECKEY_ECParamsToKeySize()
 19442 ms  0x70e0 ret:0x100
 19442 ms  0x70e0 SECKEY_CreateECPrivateKey()
 19442 ms  0x70e0 cx:0x7fda25ac0608
 19444 ms     | 0x70e0 EC_ValidatePublicKey()
 19450 ms     | 0x70e0 ret:0x0
 19450 ms  0x70e0 ret:0x7fda25b92820::7fda25b92820  90 1c 02 22                                      ..."
 19450 ms  0x70e0 PK11_PubDeriveWithKDF()
 19450 ms  0x70e0 seckey:0x7fda25b92820
 19450 ms     | 0x70e0 EC_ValidatePublicKey()
 19455 ms     | 0x70e0 ret:0x0
 19460 ms  0x70e0 ret:0x7fda1cdc5b80
 19460 ms  0x70e0 PK11_DeriveWithFlags()
 19460 ms  0x70e0 basekey:0x7fda1cdc5b80
 19460 ms     | 0x70e0 PK11_DeriveWithTemplate()
 19460 ms  0x70e0 ret:0x7fda1cdc4e00
 19460 ms  0x70e0 PK11_Derive()
 19460 ms  0x70e0 basekey:0x7fda1cdc4e00
 19460 ms     | 0x70e0 PK11_DeriveWithTemplate()
 19460 ms  0x70e0 ret:0x7fda1cdc5c00
 19460 ms  0x70e0 SECKEY_DestroyPrivateKey()
 19460 ms  0x70e0 privk:0x7fda25b92820::7fda25b92820  90 1c 02 22                                      ..."
 19461 ms  0x70e0 privk:0x7fda25b92820::7fda25b92820  e5 e5 e5 e5                                      ....
 19461 ms  0x70e0 PK11_Encrypt()
 19461 ms  0x70e0 symkey:0x7fda1cd8e180
           /* TID 0x70fa */
 19486 ms  0x70fa PR_Close()
 19486 ms  0x70fa fd:0x7fda217fb100
 19489 ms  0x70fa PR_Close()
 19489 ms  0x70fa fd:0x7fda217fb100
           /* TID 0x70e8 */
 19489 ms  0x70e8 PR_Close()
 19489 ms  0x70e8 fd:0x7fda217fb100
           /* TID 0x7172 */
 19490 ms  0x7172 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19490 ms  0x7172 ret:0x0
           /* TID 0x70e0 */
 19490 ms  0x70e0 SSL_AuthCertificateComplete()
 19490 ms  0x70e0 fd:0x7fda249e2280
 19490 ms  0x70e0 err:0x0
 19490 ms  0x70e0 PK11_Encrypt()
 19490 ms  0x70e0 symkey:0x7fda1cd8e180
 19668 ms  0x70e0 SECKEY_DestroyPrivateKey()
 19668 ms  0x70e0 privk:0x7fda25b90020::7fda25b90020  d0 ed f7 21                                      ...!
 19668 ms  0x70e0 privk:0x7fda25b90020::7fda25b90020  e5 e5 e5 e5                                      ....
 19668 ms  0x70e0 SECKEY_DestroyPrivateKey()
 19668 ms  0x70e0 privk:0x7fda25b8e020::7fda25b8e020  40 cc fd 21                                      @..!
 19668 ms  0x70e0 privk:0x7fda25b8e020::7fda25b8e020  e5 e5 e5 e5                                      ....
 19875 ms  0x70e0 PK11_Encrypt()
 19875 ms  0x70e0 symkey:0x7fda1cd8e180
 20091 ms  0x70e0 PK11_Encrypt()
 20091 ms  0x70e0 symkey:0x7fda1cd8e180
           /* TID 0x70e8 */
 20095 ms  0x70e8 PR_Close()
 20095 ms  0x70e8 fd:0x7fda249e4730
           /* TID 0x70e0 */
 20100 ms  0x70e0 PK11_Encrypt()
 20100 ms  0x70e0 symkey:0x7fda1d3de480
 20136 ms  SECKEY_ECParamsToKeySize()
 20136 ms  0x70e0 ret:0x100
 20136 ms  SECKEY_ECParamsToBasePointOrderLen()
 20136 ms  0x70e0 ret:0x100
 20136 ms  SECKEY_ECParamsToBasePointOrderLen()
 20136 ms  0x70e0 ret:0x100
 20136 ms  0x70e0 EC_ValidatePublicKey()
 20140 ms  0x70e0 ret:0x0
 20146 ms  SECKEY_ECParamsToKeySize()
 20146 ms  0x70e0 ret:0xff
 20146 ms  0x70e0 SECKEY_CreateECPrivateKey()
 20146 ms  0x70e0 cx:0x7fda25abec08
 20147 ms     | 0x70e0 EC_ValidatePublicKey()
 20147 ms     | 0x70e0 ret:0x0
 20147 ms  0x70e0 ret:0x7fda25b8e020::7fda25b8e020  a0 b6 0c 22                                      ..."
 20147 ms  0x70e0 PK11_PubDeriveWithKDF()
 20147 ms  0x70e0 seckey:0x7fda25b8e020
 20147 ms     | 0x70e0 EC_ValidatePublicKey()
 20147 ms     | 0x70e0 ret:0x0
 20149 ms  0x70e0 ret:0x7fda1cdc5b80
 20149 ms  0x70e0 PK11_DeriveWithFlags()
 20149 ms  0x70e0 basekey:0x7fda1cdc5b80
 20150 ms     | 0x70e0 PK11_DeriveWithTemplate()
 20150 ms  0x70e0 ret:0x7fda1cd8d100
 20150 ms  0x70e0 PK11_Derive()
 20150 ms  0x70e0 basekey:0x7fda1cd8d100
 20150 ms     | 0x70e0 PK11_DeriveWithTemplate()
 20150 ms  0x70e0 ret:0x7fda1cd0dc00
 20150 ms  0x70e0 SECKEY_DestroyPrivateKey()
 20150 ms  0x70e0 privk:0x7fda25b8e020::7fda25b8e020  a0 b6 0c 22                                      ..."
 20150 ms  0x70e0 privk:0x7fda25b8e020::7fda25b8e020  e5 e5 e5 e5                                      ....
 20150 ms  0x70e0 PK11_Encrypt()
 20150 ms  0x70e0 symkey:0x7fda1ecf1f80
 20150 ms  0x70e0 SSL_AuthCertificateComplete()
 20150 ms  0x70e0 fd:0x7fda1d1abbe0
 20150 ms  0x70e0 err:0x0
 20150 ms  0x70e0 PK11_Encrypt()
 20150 ms  0x70e0 symkey:0x7fda1ecf1f80
 20214 ms  0x70e0 SECKEY_DestroyPrivateKey()
 20214 ms  0x70e0 privk:0x7fda221cd820::7fda221cd820  70 b4 f5 21                                      p..!
 20214 ms  0x70e0 privk:0x7fda221cd820::7fda221cd820  e5 e5 e5 e5                                      ....
 20214 ms  0x70e0 SECKEY_DestroyPrivateKey()
 20214 ms  0x70e0 privk:0x7fda221cb820::7fda221cb820  b0 8a d9 21                                      ...!
 20214 ms  0x70e0 privk:0x7fda221cb820::7fda221cb820  e5 e5 e5 e5                                      ....
 20214 ms  0x70e0 PR_Close()
 20214 ms  0x70e0 fd:0x7fda1d1abbe0
 20214 ms     | 0x70e0 PK11_Encrypt()
 20214 ms     | 0x70e0 symkey:0x7fda1ecf1f80
           /* TID 0x70e8 */
 20310 ms  0x70e8 PR_Close()
 20310 ms  0x70e8 fd:0x7fda249e4610
 20333 ms  0x70e8 PR_Close()
 20333 ms  0x70e8 fd:0x7fda24acf310
           /* TID 0x70e0 */
 20337 ms  0x70e0 PR_Close()
 20337 ms  0x70e0 fd:0x7fda1c883b20
           /* TID 0x70d5 */
 20340 ms  0x70d5 EC_ValidatePublicKey()
 20342 ms  0x70d5 ret:0x0
 20342 ms  0x70d5 EC_ValidatePublicKey()
 20344 ms  0x70d5 ret:0x0
 20344 ms  0x70d5 EC_ValidatePublicKey()
 20346 ms  0x70d5 ret:0x0
 20346 ms  0x70d5 EC_ValidatePublicKey()
 20353 ms  0x70d5 ret:0x0
 20353 ms  0x70d5 EC_ValidatePublicKey()
 20354 ms  0x70d5 ret:0x0
 20354 ms  0x70d5 EC_ValidatePublicKey()
 20356 ms  0x70d5 ret:0x0
 20356 ms  0x70d5 EC_ValidatePublicKey()
 20362 ms  0x70d5 ret:0x0
 20362 ms  0x70d5 EC_ValidatePublicKey()
 20364 ms  0x70d5 ret:0x0
 20364 ms  0x70d5 EC_ValidatePublicKey()
 20365 ms  0x70d5 ret:0x0
 20365 ms  0x70d5 EC_ValidatePublicKey()
 20367 ms  0x70d5 ret:0x0
           /* TID 0x70e0 */
 20367 ms  0x70e0 PK11_Encrypt()
 20367 ms  0x70e0 symkey:0x7fda1ec93580
 20374 ms  0x70e0 PK11_Encrypt()
 20374 ms  0x70e0 symkey:0x7fda1d1b5f80
 20375 ms  0x70e0 PK11_Encrypt()
 20375 ms  0x70e0 symkey:0x7fda1d3dee80
 20375 ms  0x70e0 PK11_Encrypt()
 20375 ms  0x70e0 symkey:0x7fda1d9cf580
 20375 ms  0x70e0 PK11_Encrypt()
 20375 ms  0x70e0 symkey:0x7fda1ec7dd80
 20376 ms  0x70e0 PK11_Encrypt()
 20376 ms  0x70e0 symkey:0x7fda1ec46800
 20376 ms  0x70e0 PK11_Encrypt()
 20376 ms  0x70e0 symkey:0x7fda1ec46980
 20376 ms  0x70e0 PK11_Encrypt()
 20376 ms  0x70e0 symkey:0x7fda0a9f2800
 20376 ms  0x70e0 PK11_Encrypt()
 20376 ms  0x70e0 symkey:0x7fda1d3dff00
 20376 ms  0x70e0 PK11_Encrypt()
 20376 ms  0x70e0 symkey:0x7fda21d16b80
 20376 ms  0x70e0 PK11_Encrypt()
 20376 ms  0x70e0 symkey:0x7fda1cdc5d00
 20377 ms  0x70e0 PK11_Encrypt()
 20377 ms  0x70e0 symkey:0x7fda1d3e8a00
 20377 ms  0x70e0 PK11_Encrypt()
 20377 ms  0x70e0 symkey:0x7fda1ec93900
 20377 ms  0x70e0 PK11_Encrypt()
 20377 ms  0x70e0 symkey:0x7fda1d3de480
 20377 ms  0x70e0 PR_Close()
 20377 ms  0x70e0 fd:0x7fda21757cd0
 20377 ms  0x70e0 PR_Close()
 20377 ms  0x70e0 fd:0x7fda1b7a2e50
 20377 ms  0x70e0 PR_Close()
 20377 ms  0x70e0 fd:0x7fda0aa27220
 20377 ms     | 0x70e0 PK11_Encrypt()
 20377 ms     | 0x70e0 symkey:0x7fda1b8fc900
 20378 ms  0x70e0 PR_Close()
 20378 ms  0x70e0 fd:0x7fda0aa270a0
 20378 ms  0x70e0 PR_Close()
 20378 ms  0x70e0 fd:0x7fda1b7a84c0
 20378 ms     | 0x70e0 PK11_Encrypt()
 20378 ms     | 0x70e0 symkey:0x7fda1b8fbb80
 20378 ms  0x70e0 PR_Close()
 20378 ms  0x70e0 fd:0x7fda1cc8fca0
           /* TID 0x7132 */
 20378 ms  0x7132 PR_Close()
 20378 ms  0x7132 fd:0x7fda0aa27040
 20379 ms  0x7132 PR_Close()
 20379 ms  0x7132 fd:0x7fda0aa27040
           /* TID 0x70e0 */
 20379 ms  0x70e0 PR_Close()
 20379 ms  0x70e0 fd:0x7fda1bdaa280
 20379 ms     | 0x70e0 PK11_Encrypt()
 20379 ms     | 0x70e0 symkey:0x7fda1cdd1780
 20380 ms  0x70e0 PR_Close()
 20380 ms  0x70e0 fd:0x7fda28fa6b20
 20380 ms     | 0x70e0 PK11_Encrypt()
 20380 ms     | 0x70e0 symkey:0x7fda1bd68d80
 20381 ms  0x70e0 PR_Close()
 20381 ms  0x70e0 fd:0x7fda21d84c40
 20381 ms     | 0x70e0 PK11_Encrypt()
 20381 ms     | 0x70e0 symkey:0x7fda1ec93580
 20382 ms  0x70e0 PR_Close()
 20382 ms  0x70e0 fd:0x7fda21d848e0
 20382 ms     | 0x70e0 PK11_Encrypt()
 20382 ms     | 0x70e0 symkey:0x7fda1ec93900
 20382 ms  0x70e0 PR_Close()
 20382 ms  0x70e0 fd:0x7fda21d020d0
 20382 ms     | 0x70e0 PK11_Encrypt()
 20382 ms     | 0x70e0 symkey:0x7fda1ec7dd80
 20382 ms  0x70e0 PR_Close()
 20382 ms  0x70e0 fd:0x7fda21d02370
 20382 ms     | 0x70e0 PK11_Encrypt()
 20382 ms     | 0x70e0 symkey:0x7fda1ec46980
 20387 ms  0x70e0 PR_Close()
 20387 ms  0x70e0 fd:0x7fda1d9d0880
 20387 ms     | 0x70e0 PK11_Encrypt()
 20387 ms     | 0x70e0 symkey:0x7fda1d3de480
 20387 ms  0x70e0 PR_Close()
 20387 ms  0x70e0 fd:0x7fda1d9d08e0
 20387 ms     | 0x70e0 PK11_Encrypt()
 20387 ms     | 0x70e0 symkey:0x7fda1cdc5d00
 20387 ms  0x70e0 PR_Close()
 20387 ms  0x70e0 fd:0x7fda21d56bb0
 20387 ms     | 0x70e0 PK11_Encrypt()
 20387 ms     | 0x70e0 symkey:0x7fda1d3e8a00
 20388 ms  0x70e0 PR_Close()
 20388 ms  0x70e0 fd:0x7fda1d9d0c40
 20388 ms     | 0x70e0 PK11_Encrypt()
 20388 ms     | 0x70e0 symkey:0x7fda1d3dee80
 20388 ms  0x70e0 PR_Close()
 20388 ms  0x70e0 fd:0x7fda0a9f0a30
 20388 ms     | 0x70e0 PK11_Encrypt()
 20388 ms     | 0x70e0 symkey:0x7fda0a9f2800
 20388 ms  0x70e0 PR_Close()
 20388 ms  0x70e0 fd:0x7fda21d56df0
 20388 ms     | 0x70e0 PK11_Encrypt()
 20388 ms     | 0x70e0 symkey:0x7fda1ec46800
 20388 ms  0x70e0 PR_Close()
 20388 ms  0x70e0 fd:0x7fda1d9d0c70
 20388 ms     | 0x70e0 PK11_Encrypt()
 20388 ms     | 0x70e0 symkey:0x7fda21d16b80
 20389 ms  0x70e0 PR_Close()
 20389 ms  0x70e0 fd:0x7fda1d1abcd0
 20389 ms     | 0x70e0 PK11_Encrypt()
 20389 ms     | 0x70e0 symkey:0x7fda1d3dff00
 20389 ms  0x70e0 PR_Close()
 20389 ms  0x70e0 fd:0x7fda21e291f0
 20389 ms     | 0x70e0 PK11_Encrypt()
 20389 ms     | 0x70e0 symkey:0x7fda1d9cf580
 20389 ms  0x70e0 PR_Close()
 20389 ms  0x70e0 fd:0x7fda1cc8faf0
 20389 ms     | 0x70e0 PK11_Encrypt()
 20389 ms     | 0x70e0 symkey:0x7fda1d1b5f80
 20396 ms  0x70e0 SSL_ImportFD()
 20396 ms  0x70e0 ret:0x7fda256268b0
 20396 ms  0x70e0 SSL_AuthCertificateHook()
 20396 ms  0x70e0 fd:0x7fda256268b0
 20396 ms  0x70e0 ret:0x0
 20396 ms  0x70e0 PR_Connect()
 20396 ms  0x70e0 fd:0x7fda256268b0
 20397 ms  0x70e0 SSL_ImportFD()
 20397 ms  0x70e0 ret:0x7fda25626b50
 20397 ms  0x70e0 SSL_AuthCertificateHook()
 20397 ms  0x70e0 fd:0x7fda25626b50
 20397 ms  0x70e0 ret:0x0
 20397 ms  0x70e0 PR_Connect()
 20397 ms  0x70e0 fd:0x7fda25626b50
           /* TID 0x70d5 */
 20401 ms  0x70d5 PR_Close()
 20401 ms  0x70d5 fd:0x7fda1c834df0
 20401 ms  0x70d5 PR_Close()
 20401 ms  0x70d5 fd:0x7fda1c834430
 20403 ms  0x70d5 PR_Close()
 20403 ms  0x70d5 fd:0x7fda1c834490
 20403 ms  0x70d5 PR_Close()
 20403 ms  0x70d5 fd:0x7fda1c834430
 20403 ms  0x70d5 PR_Close()
 20403 ms  0x70d5 fd:0x7fda1c834490
 20403 ms  0x70d5 PR_Close()
 20403 ms  0x70d5 fd:0x7fda1c834430
           /* TID 0x70fa */
 20407 ms  0x70fa PR_Close()
 20407 ms  0x70fa fd:0x7fda1c834520
           /* TID 0x70d5 */
 20426 ms  0x70d5 PR_Close()
 20426 ms  0x70d5 fd:0x7fda1c834490
 20426 ms  0x70d5 PR_Close()
 20426 ms  0x70d5 fd:0x7fda256d89d0
 20427 ms  0x70d5 PR_Close()
 20427 ms  0x70d5 fd:0x7fda1c834490
 20427 ms  0x70d5 PR_Close()
 20427 ms  0x70d5 fd:0x7fda256d89d0
 20432 ms  0x70d5 PR_Close()
 20432 ms  0x70d5 fd:0x7fda269c89a0
 20433 ms  0x70d5 PR_Close()
 20433 ms  0x70d5 fd:0x7fda269c88b0
 20433 ms  0x70d5 PR_Close()
 20433 ms  0x70d5 fd:0x7fda269c8a60
 20435 ms  0x70d5 PR_Close()
 20435 ms  0x70d5 fd:0x7fda1bdaa190
 20436 ms  0x70d5 PR_Close()
 20436 ms  0x70d5 fd:0x7fda1bdaa190
 20438 ms  0x70d5 PR_Close()
 20438 ms  0x70d5 fd:0x7fda1c834490
 20438 ms  0x70d5 PR_Close()
 20438 ms  0x70d5 fd:0x7fda20693dc0
 20439 ms  0x70d5 PR_Close()
 20439 ms  0x70d5 fd:0x7fda1c834490
 20439 ms  0x70d5 PR_Close()
 20439 ms  0x70d5 fd:0x7fda20693dc0
 20442 ms  0x70d5 PR_Close()
 20442 ms  0x70d5 fd:0x7fda206b6460
 20443 ms  0x70d5 PR_Close()
 20443 ms  0x70d5 fd:0x7fda206b6460
 20446 ms  0x70d5 PR_Close()
 20446 ms  0x70d5 fd:0x7fda1c834490
 20446 ms  0x70d5 PR_Close()
 20446 ms  0x70d5 fd:0x7fda219f7a30
 20447 ms  0x70d5 PR_Close()
 20447 ms  0x70d5 fd:0x7fda1c834490
 20447 ms  0x70d5 PR_Close()
 20447 ms  0x70d5 fd:0x7fda219f7a30
 20450 ms  0x70d5 PR_Close()
 20450 ms  0x70d5 fd:0x7fda21f58100
 20452 ms  0x70d5 PR_Close()
 20452 ms  0x70d5 fd:0x7fda21f58100
 20458 ms  0x70d5 PR_Close()
 20458 ms  0x70d5 fd:0x7fda256d80d0
 20459 ms  0x70d5 PR_Close()
 20459 ms  0x70d5 fd:0x7fda256d80d0
           /* TID 0x70e0 */
 20462 ms  0x70e0 SECKEY_CreateECPrivateKey()
 20462 ms  0x70e0 cx:0x7fda0aa09a68
 20463 ms     | 0x70e0 EC_ValidatePublicKey()
 20463 ms     | 0x70e0 ret:0x0
 20463 ms  0x70e0 ret:0x7fda1b86a820::7fda1b86a820  a0 36 1b 22                                      .6."
 20463 ms  0x70e0 SECKEY_CreateECPrivateKey()
 20463 ms  0x70e0 cx:0x7fda0aa09a68
 20463 ms     | 0x70e0 EC_ValidatePublicKey()
 20465 ms     | 0x70e0 ret:0x0
 20465 ms  0x70e0 ret:0x7fda1bde5820::7fda1bde5820  b0 40 98 24                                      .@.$
           /* TID 0x70d5 */
 20466 ms  0x70d5 PR_Close()
 20466 ms  0x70d5 fd:0x7fda256d8b80
           /* TID 0x70fa */
 20472 ms  0x70fa PR_Close()
 20472 ms  0x70fa fd:0x7fda0a9f0bb0
           /* TID 0x70d5 */
 20473 ms  0x70d5 PR_Close()
 20473 ms  0x70d5 fd:0x7fda1c834490
 20473 ms  0x70d5 PR_Close()
 20473 ms  0x70d5 fd:0x7fda0aa272b0
           /* TID 0x70fa */
 20473 ms  0x70fa PR_Close()
 20473 ms  0x70fa fd:0x7fda0a9f0bb0
           /* TID 0x70e0 */
 20476 ms  0x70e0 PK11_Encrypt()
 20476 ms  0x70e0 symkey:0x7fda1cd8e180
           /* TID 0x70fa */
 20481 ms  0x70fa PR_Close()
 20481 ms  0x70fa fd:0x7fda1c834520
 20509 ms  0x70fa PR_Close()
 20509 ms  0x70fa fd:0x7fda0a9f09a0
           /* TID 0x70e8 */
 20514 ms  0x70e8 PR_Close()
 20514 ms  0x70e8 fd:0x7fda255d30d0
           /* TID 0x70da */
 20521 ms  0x70da PR_Close()
 20521 ms  0x70da fd:0x7fda255fce20
           /* TID 0x70e0 */
 20525 ms  0x70e0 PR_Close()
 20525 ms  0x70e0 fd:0x7fda25626b50
 20525 ms  0x70e0 PR_Close()
 20525 ms  0x70e0 fd:0x7fda256268b0
 20526 ms     | 0x70e0 SECKEY_DestroyPrivateKey()
 20526 ms     | 0x70e0 privk:0x7fda1bde5820::7fda1bde5820  b0 40 98 24                                      .@.$
 20526 ms     | 0x70e0 privk:0x7fda1bde5820::7fda1bde5820  e5 e5 e5 e5                                      ....
 20526 ms     | 0x70e0 SECKEY_DestroyPrivateKey()
 20526 ms     | 0x70e0 privk:0x7fda1b86a820::7fda1b86a820  a0 36 1b 22                                      .6."
 20526 ms     | 0x70e0 privk:0x7fda1b86a820::7fda1b86a820  e5 e5 e5 e5                                      ....
           /* TID 0x70fa */
 20530 ms  0x70fa PR_Close()
 20530 ms  0x70fa fd:0x7fda0a9f0af0
           /* TID 0x70e8 */
 20548 ms  0x70e8 PR_Close()
 20548 ms  0x70e8 fd:0x7fda221224c0
 20548 ms  0x70e8 PR_Close()
 20548 ms  0x70e8 fd:0x7fda1bdaa040
 20548 ms  0x70e8 PR_Close()
 20548 ms  0x70e8 fd:0x7fda1bdaa160
 20548 ms  0x70e8 PR_Close()
 20548 ms  0x70e8 fd:0x7fda1bdaa370
 20548 ms  0x70e8 PR_Close()
 20548 ms  0x70e8 fd:0x7fda1bdaa6d0
 20548 ms  0x70e8 PR_Close()
 20548 ms  0x70e8 fd:0x7fda221225e0
 20548 ms  0x70e8 PR_Close()
 20548 ms  0x70e8 fd:0x7fda1bdaa8b0
 20548 ms  0x70e8 PR_Close()
 20548 ms  0x70e8 fd:0x7fda1bdaa910
 20548 ms  0x70e8 PR_Close()
 20548 ms  0x70e8 fd:0x7fda1bdaab20
 20548 ms  0x70e8 PR_Close()
 20548 ms  0x70e8 fd:0x7fda1bdaad30
 20548 ms  0x70e8 PR_Close()
 20548 ms  0x70e8 fd:0x7fda1bdaae80
 20548 ms  0x70e8 PR_Close()
 20548 ms  0x70e8 fd:0x7fda1bdaaee0
 20548 ms  0x70e8 PR_Close()
 20548 ms  0x70e8 fd:0x7fda1bdaaf40
 20548 ms  0x70e8 PR_Close()
 20548 ms  0x70e8 fd:0x7fda1bfce370
           /* TID 0x70d5 */
 20549 ms  0x70d5 PR_Close()
 20549 ms  0x70d5 fd:0x7fda1b7a8eb0
 20549 ms  0x70d5 PR_Close()
 20549 ms  0x70d5 fd:0x7fda0aa27400
           /* TID 0x70fa */
 20550 ms  0x70fa PR_Close()
 20550 ms  0x70fa fd:0x7fda0aa27400
           /* TID 0x70e0 */
 20550 ms  0x70e0 PR_Close()
 20550 ms  0x70e0 fd:0x7fda1b7a8190
 20550 ms  0x70e0 PR_Close()
 20550 ms  0x70e0 fd:0x7fda1cc8f520
 20550 ms     | 0x70e0 PK11_Encrypt()
 20550 ms     | 0x70e0 symkey:0x7fda1cd0d300
 20550 ms  0x70e0 PR_Close()
 20550 ms  0x70e0 fd:0x7fda249e2280
 20550 ms     | 0x70e0 PK11_Encrypt()
 20550 ms     | 0x70e0 symkey:0x7fda1cd8e180
 20551 ms  0x70e0 PR_Close()
 20551 ms  0x70e0 fd:0x7fda22004cd0
 20551 ms     | 0x70e0 PK11_Encrypt()
 20551 ms     | 0x70e0 symkey:0x7fda1cd0d980
 20551 ms  0x70e0 PR_Close()
 20551 ms  0x70e0 fd:0x7fda1c8832b0
           /* TID 0x7132 */
 20552 ms  0x7132 PR_Close()
 20552 ms  0x7132 fd:0x7fda1bdaa6a0
 20552 ms  0x7132 PR_Close()
 20552 ms  0x7132 fd:0x7fda0a9f0910
 20552 ms  0x7132 PR_Close()
 20552 ms  0x7132 fd:0x7fda0a9f0910
 20552 ms  0x7132 PR_Close()
 20552 ms  0x7132 fd:0x7fda0a9f0910
           /* TID 0x70fa */
 20553 ms  0x70fa PR_Close()
 20553 ms  0x70fa fd:0x7fda1b88dd00
           /* TID 0x70e8 */
 20555 ms  0x70e8 PR_Close()
 20555 ms  0x70e8 fd:0x7fda1bdaaf10
 20556 ms  0x70e8 PR_Close()
 20556 ms  0x70e8 fd:0x7fda1bdaaf40
           /* TID 0x70da */
 20562 ms  0x70da PR_Close()
 20562 ms  0x70da fd:0x7fda28fa6700
           /* TID 0x70d5 */
 20586 ms  0x70d5 PR_Close()
 20586 ms  0x70d5 fd:0x7fda0aa276a0
 20586 ms  0x70d5 PR_Close()
 20586 ms  0x70d5 fd:0x7fda1bfce3a0
           /* TID 0x70fa */
 20588 ms  0x70fa PR_Close()
 20588 ms  0x70fa fd:0x7fda1bdaafa0
           /* TID 0x70da */
 20590 ms  0x70da PR_Close()
 20590 ms  0x70da fd:0x7fda21d53820
           /* TID 0x70fa */
 20591 ms  0x70fa PR_Close()
 20591 ms  0x70fa fd:0x7fda1ba9e490
 20592 ms  0x70fa PR_Close()
 20592 ms  0x70fa fd:0x7fda1b7a8310
 20600 ms  0x70fa PR_Close()
 20600 ms  0x70fa fd:0x7fda1b7a8310
 20943 ms  0x70fa PR_Close()
 20943 ms  0x70fa fd:0x7fda1b7a81f0
 20946 ms  0x70fa PR_Close()
 20946 ms  0x70fa fd:0x7fda1b7a8220
 20968 ms  0x70fa PR_Close()
 20968 ms  0x70fa fd:0x7fda1b88d2b0
 20975 ms  0x70fa PR_Close()
 20975 ms  0x70fa fd:0x7fda1ba9ea90
 20983 ms  0x70fa PR_Close()
 20983 ms  0x70fa fd:0x7fda1bdaac40
 20993 ms  0x70fa PR_Close()
 20993 ms  0x70fa fd:0x7fda1bdaaeb0
 20995 ms  0x70fa PR_Close()
 20995 ms  0x70fa fd:0x7fda1bdaaeb0
           /* TID 0x70d5 */
 21151 ms  0x70d5 PR_Close()
 21151 ms  0x70d5 fd:0x7fda0aa276d0
 21152 ms  0x70d5 PR_Close()
 21152 ms  0x70d5 fd:0x7fda0aa276d0
 21157 ms  0x70d5 PR_Close()
 21157 ms  0x70d5 fd:0x7fda43cda130
 21157 ms  0x70d5 PR_Close()
 21157 ms  0x70d5 fd:0x7fda43cda190
Process terminated
