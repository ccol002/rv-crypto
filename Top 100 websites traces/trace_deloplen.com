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
           /* TID 0x17d8 */
    53 ms  0x17d8 PR_Close()
    53 ms  0x17d8 fd:0x7fd2e2f976a0
           /* TID 0x17d0 */
   266 ms  0x17d0 SSL_ImportFD()
   266 ms  0x17d0 ret:0x7fd2e2fd5250
   266 ms  0x17d0 SSL_AuthCertificateHook()
   266 ms  0x17d0 fd:0x7fd2e2fd5250
   266 ms  0x17d0 ret:0x0
   266 ms  0x17d0 PR_Connect()
   266 ms  0x17d0 fd:0x7fd2e2fd5250
   467 ms  0x17d0 SECKEY_CreateECPrivateKey()
   467 ms  0x17d0 cx:0x7fd2e2f9ac88
   469 ms     | 0x17d0 EC_ValidatePublicKey()
   469 ms     | 0x17d0 ret:0x0
   469 ms  0x17d0 ret:0x7fd2e3035820::7fd2e3035820  a0 3b 0a e3                                      .;..
   469 ms  0x17d0 SECKEY_CreateECPrivateKey()
   469 ms  0x17d0 cx:0x7fd2e2f9ac88
   471 ms     | 0x17d0 EC_ValidatePublicKey()
   474 ms     | 0x17d0 ret:0x0
   475 ms  0x17d0 ret:0x7fd2e3037820::7fd2e3037820  e0 3c 0a e3                                      .<..
           /* TID 0x1834 */
   568 ms  0x1834 PR_Close()
   568 ms  0x1834 fd:0x7fd2e2fd5b80
   571 ms  0x1834 PR_Close()
   571 ms  0x1834 fd:0x7fd2e2fd5b80
           /* TID 0x17d0 */
   681 ms  SECKEY_ECParamsToKeySize()
   681 ms  0x17d0 ret:0x100
   681 ms  0x17d0 SECKEY_CreateECPrivateKey()
   681 ms  0x17d0 cx:0x7fd2e2f9ac88
   683 ms     | 0x17d0 EC_ValidatePublicKey()
   687 ms     | 0x17d0 ret:0x0
   687 ms  0x17d0 ret:0x7fd2e3040820::7fd2e3040820  e0 47 0e e3                                      .G..
   687 ms  0x17d0 PK11_PubDeriveWithKDF()
   687 ms  0x17d0 seckey:0x7fd2e3040820
   687 ms     | 0x17d0 EC_ValidatePublicKey()
   691 ms     | 0x17d0 ret:0x0
   695 ms  0x17d0 ret:0x7fd2e4ee4a00
   695 ms  0x17d0 PK11_DeriveWithFlags()
   695 ms  0x17d0 basekey:0x7fd2e4ee4a00
   695 ms     | 0x17d0 PK11_DeriveWithTemplate()
   695 ms  0x17d0 ret:0x7fd2e30d5900
   695 ms  0x17d0 PK11_Derive()
   695 ms  0x17d0 basekey:0x7fd2e30d5900
   695 ms     | 0x17d0 PK11_DeriveWithTemplate()
   695 ms  0x17d0 ret:0x7fd2e30d5a00
   695 ms  0x17d0 SECKEY_DestroyPrivateKey()
   695 ms  0x17d0 privk:0x7fd2e3040820::7fd2e3040820  e0 47 0e e3                                      .G..
   696 ms  0x17d0 privk:0x7fd2e3040820::7fd2e3040820  e5 e5 e5 e5                                      ....
   696 ms  0x17d0 PK11_Encrypt()
   696 ms  0x17d0 symkey:0x7fd2e30d5b80
   697 ms  0x17d0 PR_Connect()
   697 ms  0x17d0 fd:0x7fd2e2fd5d30
           /* TID 0x1834 */
   740 ms  0x1834 PR_Close()
   740 ms  0x1834 fd:0x7fd2e2fd5c40
           /* TID 0x17d8 */
   750 ms  0x17d8 PR_Close()
   750 ms  0x17d8 fd:0x7fd2e2fd5c40
           /* TID 0x182b */
   750 ms  0x182b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   750 ms  0x182b ret:0x0
           /* TID 0x17d0 */
   751 ms  0x17d0 SSL_AuthCertificateComplete()
   751 ms  0x17d0 fd:0x7fd2e2fd5250
   751 ms  0x17d0 err:0x0
   751 ms  0x17d0 PK11_Encrypt()
   751 ms  0x17d0 symkey:0x7fd2e30d5b80
   898 ms  0x17d0 SECKEY_DestroyPrivateKey()
   898 ms  0x17d0 privk:0x7fd2e3037820::7fd2e3037820  e0 3c 0a e3                                      .<..
   898 ms  0x17d0 privk:0x7fd2e3037820::7fd2e3037820  e5 e5 e5 e5                                      ....
   898 ms  0x17d0 SECKEY_DestroyPrivateKey()
   898 ms  0x17d0 privk:0x7fd2e3035820::7fd2e3035820  a0 3b 0a e3                                      .;..
   898 ms  0x17d0 privk:0x7fd2e3035820::7fd2e3035820  e5 e5 e5 e5                                      ....
  1107 ms  0x17d0 SSL_ImportFD()
  1107 ms  0x17d0 ret:0x7fd2e30697f0
  1107 ms  0x17d0 SSL_AuthCertificateHook()
  1107 ms  0x17d0 fd:0x7fd2e30697f0
  1107 ms  0x17d0 ret:0x0
  1107 ms  0x17d0 PR_Connect()
  1107 ms  0x17d0 fd:0x7fd2e30697f0
  1133 ms  0x17d0 SECKEY_CreateECPrivateKey()
  1133 ms  0x17d0 cx:0x7fd2e30e0728
  1135 ms     | 0x17d0 EC_ValidatePublicKey()
  1135 ms     | 0x17d0 ret:0x0
  1135 ms  0x17d0 ret:0x7fd2e3037020::7fd2e3037020  e0 3c 0a e3                                      .<..
  1135 ms  0x17d0 SECKEY_CreateECPrivateKey()
  1135 ms  0x17d0 cx:0x7fd2e30e0728
  1137 ms     | 0x17d0 EC_ValidatePublicKey()
  1141 ms     | 0x17d0 ret:0x0
  1141 ms  0x17d0 ret:0x7fd2e303d020::7fd2e303d020  10 45 0e e3                                      .E..
           /* TID 0x182b */
  1193 ms  0x182b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1194 ms  0x182b ret:0x0
           /* TID 0x17d0 */
  1194 ms  SECKEY_ECParamsToKeySize()
  1194 ms  0x17d0 ret:0x100
  1194 ms  0x17d0 SECKEY_CreateECPrivateKey()
  1194 ms  0x17d0 cx:0x7fd2e30e0728
  1196 ms     | 0x17d0 EC_ValidatePublicKey()
  1200 ms     | 0x17d0 ret:0x0
  1200 ms  0x17d0 ret:0x7fd2e3040820::7fd2e3040820  80 48 0e e3                                      .H..
  1200 ms  0x17d0 PK11_PubDeriveWithKDF()
  1200 ms  0x17d0 seckey:0x7fd2e3040820
  1200 ms     | 0x17d0 EC_ValidatePublicKey()
  1204 ms     | 0x17d0 ret:0x0
  1208 ms  0x17d0 ret:0x7fd2e4ee4a00
  1208 ms  0x17d0 PK11_DeriveWithFlags()
  1208 ms  0x17d0 basekey:0x7fd2e4ee4a00
  1208 ms     | 0x17d0 PK11_DeriveWithTemplate()
  1208 ms  0x17d0 ret:0x7fd2e3068a00
  1208 ms  0x17d0 PK11_Derive()
  1208 ms  0x17d0 basekey:0x7fd2e3068a00
  1208 ms     | 0x17d0 PK11_DeriveWithTemplate()
  1208 ms  0x17d0 ret:0x7fd2e30d6400
  1208 ms  0x17d0 SECKEY_DestroyPrivateKey()
  1208 ms  0x17d0 privk:0x7fd2e3040820::7fd2e3040820  80 48 0e e3                                      .H..
  1208 ms  0x17d0 privk:0x7fd2e3040820::7fd2e3040820  e5 e5 e5 e5                                      ....
  1208 ms  0x17d0 PK11_Encrypt()
  1208 ms  0x17d0 symkey:0x7fd2e30d6900
  1209 ms  0x17d0 SSL_AuthCertificateComplete()
  1209 ms  0x17d0 fd:0x7fd2e30697f0
  1209 ms  0x17d0 err:0x0
  1209 ms  0x17d0 PK11_Encrypt()
  1209 ms  0x17d0 symkey:0x7fd2e30d6900
  1264 ms  0x17d0 SECKEY_DestroyPrivateKey()
  1264 ms  0x17d0 privk:0x7fd2e303d020::7fd2e303d020  10 45 0e e3                                      .E..
  1265 ms  0x17d0 privk:0x7fd2e303d020::7fd2e303d020  e5 e5 e5 e5                                      ....
  1265 ms  0x17d0 SECKEY_DestroyPrivateKey()
  1265 ms  0x17d0 privk:0x7fd2e3037020::7fd2e3037020  e0 3c 0a e3                                      .<..
  1265 ms  0x17d0 privk:0x7fd2e3037020::7fd2e3037020  e5 e5 e5 e5                                      ....
  1268 ms  0x17d0 PK11_Encrypt()
  1268 ms  0x17d0 symkey:0x7fd2e30d6900
  1297 ms  0x17d0 PK11_Encrypt()
  1297 ms  0x17d0 symkey:0x7fd2e30d6900
  1328 ms  0x17d0 PK11_Encrypt()
  1328 ms  0x17d0 symkey:0x7fd2e30d6900
  1357 ms  0x17d0 PK11_Encrypt()
  1357 ms  0x17d0 symkey:0x7fd2e30d6900
  1473 ms  0x17d0 PK11_Encrypt()
  1473 ms  0x17d0 symkey:0x7fd2e30d6900
  1508 ms  0x17d0 PK11_Encrypt()
  1508 ms  0x17d0 symkey:0x7fd2e30d6900
  1540 ms  0x17d0 PK11_Encrypt()
  1540 ms  0x17d0 symkey:0x7fd2e30d6900
           /* TID 0x1825 */
  1567 ms  0x1825 PR_Close()
  1567 ms  0x1825 fd:0x7fd2e2fd5ee0
  1568 ms  0x1825 PR_Close()
  1568 ms  0x1825 fd:0x7fd2e2fd5f70
  1568 ms  0x1825 PR_Close()
  1568 ms  0x1825 fd:0x7fd2e2fd5ee0
  1568 ms  0x1825 PR_Close()
  1568 ms  0x1825 fd:0x7fd2e2fd5f70
  1568 ms  0x1825 PR_Close()
  1568 ms  0x1825 fd:0x7fd2e2fd5ee0
  1568 ms  0x1825 PR_Close()
  1568 ms  0x1825 fd:0x7fd2e2fd5f70
  1568 ms  0x1825 PR_Close()
  1568 ms  0x1825 fd:0x7fd2e2fd5ee0
  1568 ms  0x1825 PR_Close()
  1568 ms  0x1825 fd:0x7fd2e2fd5f70
  1568 ms  0x1825 PR_Close()
  1568 ms  0x1825 fd:0x7fd2e2fd5ee0
  1568 ms  0x1825 PR_Close()
  1568 ms  0x1825 fd:0x7fd2e2fd5f70
  1568 ms  0x1825 PR_Close()
  1568 ms  0x1825 fd:0x7fd2e2fd5ee0
  1568 ms  0x1825 PR_Close()
  1568 ms  0x1825 fd:0x7fd2e2fd5f70
  1568 ms  0x1825 PR_Close()
  1568 ms  0x1825 fd:0x7fd2e2fd5ee0
  1568 ms  0x1825 PR_Close()
  1568 ms  0x1825 fd:0x7fd2e2fd5f70
  1569 ms  0x1825 PR_Close()
  1569 ms  0x1825 fd:0x7fd2e2fd5ee0
  1569 ms  0x1825 PR_Close()
  1569 ms  0x1825 fd:0x7fd2e2fd5f70
  1569 ms  0x1825 PR_Close()
  1569 ms  0x1825 fd:0x7fd2e2fd5ee0
  1569 ms  0x1825 PR_Close()
  1569 ms  0x1825 fd:0x7fd2e2fd5f70
  1569 ms  0x1825 PR_Close()
  1569 ms  0x1825 fd:0x7fd2e2fd5ee0
  1569 ms  0x1825 PR_Close()
  1569 ms  0x1825 fd:0x7fd2e2fd5f70
  1569 ms  0x1825 PR_Close()
  1569 ms  0x1825 fd:0x7fd2e2fd5ee0
  1569 ms  0x1825 PR_Close()
  1569 ms  0x1825 fd:0x7fd2e2fd5f70
  1569 ms  0x1825 PR_Close()
  1569 ms  0x1825 fd:0x7fd2e2fd5ee0
  1569 ms  0x1825 PR_Close()
  1569 ms  0x1825 fd:0x7fd2e2fd5f70
  1569 ms  0x1825 PR_Close()
  1569 ms  0x1825 fd:0x7fd2e2fd5ee0
  1569 ms  0x1825 PR_Close()
  1569 ms  0x1825 fd:0x7fd2e2fd5f70
  1569 ms  0x1825 PR_Close()
  1569 ms  0x1825 fd:0x7fd2e2fd5ee0
  1569 ms  0x1825 PR_Close()
  1569 ms  0x1825 fd:0x7fd2e2fd5f70
  1573 ms  0x1825 PR_Close()
  1573 ms  0x1825 fd:0x7fd2e2fd5ee0
  1573 ms  0x1825 PR_Close()
  1573 ms  0x1825 fd:0x7fd2e2fd5e50
  1575 ms  0x1825 PR_Close()
  1575 ms  0x1825 fd:0x7fd2e2fd5e50
  1576 ms  0x1825 PR_Close()
  1576 ms  0x1825 fd:0x7fd2e2fd5ee0
  1578 ms  0x1825 PR_Close()
  1578 ms  0x1825 fd:0x7fd2e2fd5ee0
  1578 ms  0x1825 PR_Close()
  1578 ms  0x1825 fd:0x7fd2e2fd5ee0
  1581 ms  0x1825 PR_Close()
  1581 ms  0x1825 fd:0x7fd2e2fd5ee0
  1581 ms  0x1825 PR_Close()
  1581 ms  0x1825 fd:0x7fd2e2fd5ee0
  1630 ms  0x1825 PR_Close()
  1630 ms  0x1825 fd:0x7fd2e2fd5ee0
  1631 ms  0x1825 PR_Close()
  1631 ms  0x1825 fd:0x7fd2e2fd5ee0
  1638 ms  0x1825 PR_Close()
  1638 ms  0x1825 fd:0x7fd2e2fd5ee0
  1638 ms  0x1825 PR_Close()
  1638 ms  0x1825 fd:0x7fd2e2fd5ee0
  1646 ms  0x1825 PR_Close()
  1646 ms  0x1825 fd:0x7fd2e2fd5ee0
  1646 ms  0x1825 PR_Close()
  1646 ms  0x1825 fd:0x7fd2e2fd5ee0
  1649 ms  0x1825 PR_Close()
  1649 ms  0x1825 fd:0x7fd2e2fd5ee0
  1649 ms  0x1825 PR_Close()
  1649 ms  0x1825 fd:0x7fd2e2fd5ee0
           /* TID 0x1823 */
  1649 ms  0x1823 PR_Close()
  1649 ms  0x1823 fd:0x7fd2e2fd5ee0
  1649 ms  0x1823 PR_Close()
  1649 ms  0x1823 fd:0x7fd2e2fd5ee0
  1649 ms  0x1823 PR_Close()
  1649 ms  0x1823 fd:0x7fd2e2fd5ee0
  1649 ms  0x1823 PR_Close()
  1649 ms  0x1823 fd:0x7fd2e2fd5ee0
  1649 ms  0x1823 PR_Close()
  1649 ms  0x1823 fd:0x7fd2e2fd5ee0
  1649 ms  0x1823 PR_Close()
  1649 ms  0x1823 fd:0x7fd2e2fd5ee0
  1649 ms  0x1823 PR_Close()
  1649 ms  0x1823 fd:0x7fd2e2fd5ee0
  1649 ms  0x1823 PR_Close()
  1649 ms  0x1823 fd:0x7fd2e2fd5ee0
  1649 ms  0x1823 PR_Close()
  1649 ms  0x1823 fd:0x7fd2e2fd5ee0
  1649 ms  0x1823 PR_Close()
  1649 ms  0x1823 fd:0x7fd2e2fd5ee0
  1649 ms  0x1823 PR_Close()
  1649 ms  0x1823 fd:0x7fd2e2fd5ee0
  1649 ms  0x1823 PR_Close()
  1649 ms  0x1823 fd:0x7fd2e2fd5ee0
  1649 ms  0x1823 PR_Close()
  1649 ms  0x1823 fd:0x7fd2e2fd5ee0
  1649 ms  0x1823 PR_Close()
  1649 ms  0x1823 fd:0x7fd2e2fd5ee0
  1649 ms  0x1823 PR_Close()
  1649 ms  0x1823 fd:0x7fd2e2fd5ee0
           /* TID 0x1834 */
  2152 ms  0x1834 PR_Close()
  2152 ms  0x1834 fd:0x7fd2e30ca370
  2154 ms  0x1834 PR_Close()
  2154 ms  0x1834 fd:0x7fd2e30ca370
  2700 ms  0x1834 PR_Close()
  2700 ms  0x1834 fd:0x7fd2e30ca370
           /* TID 0x17d8 */
  4127 ms  0x17d8 PR_Close()
  4127 ms  0x17d8 fd:0x7fd2e30ca370
  4127 ms  0x17d8 PR_Close()
  4127 ms  0x17d8 fd:0x7fd2e30ca4c0
  4127 ms  0x17d8 PR_Close()
  4127 ms  0x17d8 fd:0x7fd2e30ca520
           /* TID 0x17d0 */
  4741 ms  0x17d0 PR_Close()
  4741 ms  0x17d0 fd:0x7fd2e4385d60
           /* TID 0x17c5 */
  4746 ms  0x17c5 EC_ValidatePublicKey()
  4747 ms  0x17c5 ret:0x0
  4748 ms  0x17c5 EC_ValidatePublicKey()
  4749 ms  0x17c5 ret:0x0
  4749 ms  0x17c5 EC_ValidatePublicKey()
  4756 ms  0x17c5 ret:0x0
  4756 ms  0x17c5 EC_ValidatePublicKey()
  4758 ms  0x17c5 ret:0x0
  4758 ms  0x17c5 EC_ValidatePublicKey()
  4759 ms  0x17c5 ret:0x0
  4759 ms  0x17c5 EC_ValidatePublicKey()
  4762 ms  0x17c5 ret:0x0
  4762 ms  0x17c5 EC_ValidatePublicKey()
  4763 ms  0x17c5 ret:0x0
  4763 ms  0x17c5 EC_ValidatePublicKey()
  4765 ms  0x17c5 ret:0x0
  4765 ms  0x17c5 EC_ValidatePublicKey()
  4766 ms  0x17c5 ret:0x0
  4766 ms  0x17c5 EC_ValidatePublicKey()
  4768 ms  0x17c5 ret:0x0
           /* TID 0x17d0 */
  4768 ms  0x17d0 PR_Close()
  4768 ms  0x17d0 fd:0x7fd2e2fd5d30
  4770 ms  0x17d0 PR_Close()
  4770 ms  0x17d0 fd:0x7fd2e2fd5250
  4770 ms     | 0x17d0 PK11_Encrypt()
  4770 ms     | 0x17d0 symkey:0x7fd2e30d5b80
  4771 ms  0x17d0 PR_Close()
  4771 ms  0x17d0 fd:0x7fd2e4394d00
  4771 ms  0x17d0 PR_Close()
  4771 ms  0x17d0 fd:0x7fd2e30697f0
  4771 ms     | 0x17d0 PK11_Encrypt()
  4771 ms     | 0x17d0 symkey:0x7fd2e30d6900
  4771 ms  0x17d0 PR_Close()
  4771 ms  0x17d0 fd:0x7fd2e46ccfa0
  4771 ms     | 0x17d0 PK11_Encrypt()
  4771 ms     | 0x17d0 symkey:0x7fd2e4ee4980
           /* TID 0x1821 */
  4774 ms  0x1821 PR_Close()
  4774 ms  0x1821 fd:0x7fd2d1eff130
  4774 ms  0x1821 PR_Close()
  4774 ms  0x1821 fd:0x7fd2d1eff130
           /* TID 0x17c5 */
  4776 ms  0x17c5 PR_Close()
  4776 ms  0x17c5 fd:0x7fd2e46cce20
  4776 ms  0x17c5 PR_Close()
  4776 ms  0x17c5 fd:0x7fd2d1eff3a0
  4777 ms  0x17c5 PR_Close()
  4777 ms  0x17c5 fd:0x7fd2d1eff400
  4777 ms  0x17c5 PR_Close()
  4777 ms  0x17c5 fd:0x7fd2d1eff3a0
  4778 ms  0x17c5 PR_Close()
  4778 ms  0x17c5 fd:0x7fd2d1eff400
  4778 ms  0x17c5 PR_Close()
  4778 ms  0x17c5 fd:0x7fd2d1eff3a0
           /* TID 0x1834 */
  4781 ms  0x1834 PR_Close()
  4781 ms  0x1834 fd:0x7fd2d1eff460
           /* TID 0x17c5 */
  4799 ms  0x17c5 PR_Close()
  4799 ms  0x17c5 fd:0x7fd2d1eff400
  4799 ms  0x17c5 PR_Close()
  4799 ms  0x17c5 fd:0x7fd2d1effbb0
  4800 ms  0x17c5 PR_Close()
  4800 ms  0x17c5 fd:0x7fd2d1eff400
  4800 ms  0x17c5 PR_Close()
  4800 ms  0x17c5 fd:0x7fd2d1effbb0
  4801 ms  0x17c5 PR_Close()
  4801 ms  0x17c5 fd:0x7fd2ee3c89a0
  4801 ms  0x17c5 PR_Close()
  4801 ms  0x17c5 fd:0x7fd2ee3c88b0
  4801 ms  0x17c5 PR_Close()
  4801 ms  0x17c5 fd:0x7fd2ee3c8a60
  4803 ms  0x17c5 PR_Close()
  4803 ms  0x17c5 fd:0x7fd2d1effbe0
  4804 ms  0x17c5 PR_Close()
  4804 ms  0x17c5 fd:0x7fd2d1effbe0
  4806 ms  0x17c5 PR_Close()
  4806 ms  0x17c5 fd:0x7fd2d1eff400
  4806 ms  0x17c5 PR_Close()
  4806 ms  0x17c5 fd:0x7fd2d1effc40
  4807 ms  0x17c5 PR_Close()
  4807 ms  0x17c5 fd:0x7fd2d1eff400
  4807 ms  0x17c5 PR_Close()
  4807 ms  0x17c5 fd:0x7fd2d1effc40
  4810 ms  0x17c5 PR_Close()
  4810 ms  0x17c5 fd:0x7fd2d1effc70
  4811 ms  0x17c5 PR_Close()
  4811 ms  0x17c5 fd:0x7fd2d1effc70
  4813 ms  0x17c5 PR_Close()
  4813 ms  0x17c5 fd:0x7fd2d1eff400
  4813 ms  0x17c5 PR_Close()
  4813 ms  0x17c5 fd:0x7fd2d1effcd0
  4813 ms  0x17c5 PR_Close()
  4813 ms  0x17c5 fd:0x7fd2d1eff400
  4813 ms  0x17c5 PR_Close()
  4813 ms  0x17c5 fd:0x7fd2d1effcd0
  4816 ms  0x17c5 PR_Close()
  4816 ms  0x17c5 fd:0x7fd2d1effd00
  4817 ms  0x17c5 PR_Close()
  4817 ms  0x17c5 fd:0x7fd2d1effd00
  4823 ms  0x17c5 PR_Close()
  4823 ms  0x17c5 fd:0x7fd2d1effeb0
  4824 ms  0x17c5 PR_Close()
  4824 ms  0x17c5 fd:0x7fd2d1effeb0
  4827 ms  0x17c5 PR_Close()
  4827 ms  0x17c5 fd:0x7fd2d1effee0
           /* TID 0x1834 */
  4832 ms  0x1834 PR_Close()
  4832 ms  0x1834 fd:0x7fd2d1e18f70
           /* TID 0x17c5 */
  4833 ms  0x17c5 PR_Close()
  4833 ms  0x17c5 fd:0x7fd2d1eff400
  4833 ms  0x17c5 PR_Close()
  4833 ms  0x17c5 fd:0x7fd2d1eff280
           /* TID 0x1834 */
  4835 ms  0x1834 PR_Close()
  4835 ms  0x1834 fd:0x7fd2d1e18f70
  4839 ms  0x1834 PR_Close()
  4839 ms  0x1834 fd:0x7fd2d1eff460
  4860 ms  0x1834 PR_Close()
  4860 ms  0x1834 fd:0x7fd2d1e18ee0
           /* TID 0x17ca */
  4870 ms  0x17ca PR_Close()
  4870 ms  0x17ca fd:0x7fd2ed0fce20
  4875 ms  0x17ca PR_Close()
  4875 ms  0x17ca fd:0x7fd2e9647790
           /* TID 0x1834 */
  4885 ms  0x1834 PR_Close()
  4885 ms  0x1834 fd:0x7fd2d1e6c160
           /* TID 0x17d0 */
  4887 ms  0x17d0 PR_Close()
  4887 ms  0x17d0 fd:0x7fd2e360e970
           /* TID 0x1821 */
  4888 ms  0x1821 PR_Close()
  4888 ms  0x1821 fd:0x7fd2d1eff160
  4888 ms  0x1821 PR_Close()
  4888 ms  0x1821 fd:0x7fd2d1eff160
  4888 ms  0x1821 PR_Close()
  4888 ms  0x1821 fd:0x7fd2d1eff160
  4888 ms  0x1821 PR_Close()
  4888 ms  0x1821 fd:0x7fd2d1eff190
           /* TID 0x1834 */
  4889 ms  0x1834 PR_Close()
  4889 ms  0x1834 fd:0x7fd2d1eff190
           /* TID 0x17d8 */
  4891 ms  0x17d8 PR_Close()
  4891 ms  0x17d8 fd:0x7fd2d22b91f0
  4892 ms  0x17d8 PR_Close()
  4892 ms  0x17d8 fd:0x7fd2d22b9220
           /* TID 0x17ca */
  4899 ms  0x17ca PR_Close()
  4899 ms  0x17ca fd:0x7fd2e360eca0
           /* TID 0x17c5 */
  4901 ms  0x17c5 PR_Close()
  4901 ms  0x17c5 fd:0x7fd2d1eff400
  4901 ms  0x17c5 PR_Close()
  4901 ms  0x17c5 fd:0x7fd2d22b9370
           /* TID 0x1834 */
  4902 ms  0x1834 PR_Close()
  4902 ms  0x1834 fd:0x7fd2d22b93d0
  4905 ms  0x1834 PR_Close()
  4905 ms  0x1834 fd:0x7fd2d1e6c520
  4937 ms  0x1834 PR_Close()
  4937 ms  0x1834 fd:0x7fd2d1e6c580
  4944 ms  0x1834 PR_Close()
  4944 ms  0x1834 fd:0x7fd2d1e6c580
  4980 ms  0x1834 PR_Close()
  4980 ms  0x1834 fd:0x7fd2d22b9190
  4981 ms  0x1834 PR_Close()
  4981 ms  0x1834 fd:0x7fd2d22b91c0
  4998 ms  0x1834 PR_Close()
  4998 ms  0x1834 fd:0x7fd2d22b94c0
  5005 ms  0x1834 PR_Close()
  5005 ms  0x1834 fd:0x7fd2d22b9a90
  5014 ms  0x1834 PR_Close()
  5014 ms  0x1834 fd:0x7fd2d22b9c70
  5024 ms  0x1834 PR_Close()
  5024 ms  0x1834 fd:0x7fd2d22b9d30
  5026 ms  0x1834 PR_Close()
  5026 ms  0x1834 fd:0x7fd2d22b9d30
           /* TID 0x17c5 */
  5190 ms  0x17c5 PR_Close()
  5190 ms  0x17c5 fd:0x7fd2d1e18280
  5190 ms  0x17c5 PR_Close()
  5190 ms  0x17c5 fd:0x7fd2d1e18280
  5202 ms  0x17c5 PR_Close()
  5202 ms  0x17c5 fd:0x7fd30b6da130
  5202 ms  0x17c5 PR_Close()
  5202 ms  0x17c5 fd:0x7fd30b6da190
Process terminated
