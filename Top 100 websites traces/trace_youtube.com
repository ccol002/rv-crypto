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
           /* TID 0x646c */
    85 ms  0x646c PR_Close()
    85 ms  0x646c fd:0x7f84d8ce8910
    85 ms     | 0x646c PK11_Encrypt()
    85 ms     | 0x646c symkey:0x7f84d93fc080
           /* TID 0x6474 */
    86 ms  0x6474 PR_Close()
    86 ms  0x6474 fd:0x7f84d89432e0
           /* TID 0x646c */
   290 ms  0x646c SSL_ImportFD()
   290 ms  0x646c ret:0x7f84d79b9100
   290 ms  0x646c SSL_AuthCertificateHook()
   290 ms  0x646c fd:0x7f84d79b9100
   290 ms  0x646c ret:0x0
   290 ms  0x646c PR_Connect()
   290 ms  0x646c fd:0x7f84d79b9100
   510 ms  0x646c SECKEY_CreateECPrivateKey()
   510 ms  0x646c cx:0x7f84d77a8988
   512 ms     | 0x646c EC_ValidatePublicKey()
   512 ms     | 0x646c ret:0x0
   512 ms  0x646c ret:0x7f84d792e820::7f84d792e820  f0 3b 89 e0                                      .;..
   512 ms  0x646c SECKEY_CreateECPrivateKey()
   512 ms  0x646c cx:0x7f84d77a8988
   515 ms     | 0x646c EC_ValidatePublicKey()
   520 ms     | 0x646c ret:0x0
   520 ms  0x646c ret:0x7f84d7930820::7f84d7930820  30 3d 89 e0                                      0=..
           /* TID 0x6487 */
   620 ms  0x6487 PR_Close()
   620 ms  0x6487 fd:0x7f84d79b9a60
   623 ms  0x6487 PR_Close()
   623 ms  0x6487 fd:0x7f84d79b9a60
           /* TID 0x646c */
   746 ms  SECKEY_ECParamsToKeySize()
   746 ms  0x646c ret:0x100
   747 ms  0x646c SECKEY_CreateECPrivateKey()
   747 ms  0x646c cx:0x7f84d77a8988
   748 ms     | 0x646c EC_ValidatePublicKey()
   753 ms     | 0x646c ret:0x0
   753 ms  0x646c ret:0x7f84d7939820::7f84d7939820  30 c8 9c d7                                      0...
   753 ms  0x646c PK11_PubDeriveWithKDF()
   753 ms  0x646c seckey:0x7f84d7939820
   753 ms     | 0x646c EC_ValidatePublicKey()
   757 ms     | 0x646c ret:0x0
   761 ms  0x646c ret:0x7f84d93fb780
   761 ms  0x646c PK11_DeriveWithFlags()
   761 ms  0x646c basekey:0x7f84d93fb780
   761 ms     | 0x646c PK11_DeriveWithTemplate()
   761 ms  0x646c ret:0x7f84d93fb700
   761 ms  0x646c PK11_Derive()
   761 ms  0x646c basekey:0x7f84d93fb700
   761 ms     | 0x646c PK11_DeriveWithTemplate()
   762 ms  0x646c ret:0x7f84d93fc100
   762 ms  0x646c SECKEY_DestroyPrivateKey()
   762 ms  0x646c privk:0x7f84d7939820::7f84d7939820  30 c8 9c d7                                      0...
   762 ms  0x646c privk:0x7f84d7939820::7f84d7939820  e5 e5 e5 e5                                      ....
   762 ms  0x646c PK11_Encrypt()
   762 ms  0x646c symkey:0x7f84d97dc600
   763 ms  0x646c PR_Connect()
   763 ms  0x646c fd:0x7f84d79b9bb0
           /* TID 0x6487 */
   773 ms  0x6487 PR_Close()
   773 ms  0x6487 fd:0x7f84d79b9b50
           /* TID 0x6474 */
   816 ms  0x6474 PR_Close()
   816 ms  0x6474 fd:0x7f84d79b9a90
           /* TID 0x64cf */
   816 ms  0x64cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   816 ms  0x64cf ret:0x0
           /* TID 0x646c */
   817 ms  0x646c SSL_AuthCertificateComplete()
   817 ms  0x646c fd:0x7f84d79b9100
   817 ms  0x646c err:0x0
   817 ms  0x646c PK11_Encrypt()
   817 ms  0x646c symkey:0x7f84d97dc600
   982 ms  0x646c SECKEY_DestroyPrivateKey()
   982 ms  0x646c privk:0x7f84d7930820::7f84d7930820  30 3d 89 e0                                      0=..
   982 ms  0x646c privk:0x7f84d7930820::7f84d7930820  e5 e5 e5 e5                                      ....
   983 ms  0x646c SECKEY_DestroyPrivateKey()
   983 ms  0x646c privk:0x7f84d792e820::7f84d792e820  f0 3b 89 e0                                      .;..
   983 ms  0x646c privk:0x7f84d792e820::7f84d792e820  e5 e5 e5 e5                                      ....
  1210 ms  0x646c SSL_ImportFD()
  1210 ms  0x646c ret:0x7f84d79b9d30
  1210 ms  0x646c SSL_AuthCertificateHook()
  1210 ms  0x646c fd:0x7f84d79b9d30
  1210 ms  0x646c ret:0x0
  1210 ms  0x646c PR_Connect()
  1210 ms  0x646c fd:0x7f84d79b9d30
  1236 ms  0x646c SECKEY_CreateECPrivateKey()
  1236 ms  0x646c cx:0x7f84d79be428
  1238 ms     | 0x646c EC_ValidatePublicKey()
  1238 ms     | 0x646c ret:0x0
  1238 ms  0x646c ret:0x7f84d792f820::7f84d792f820  30 c8 9c d7                                      0...
  1239 ms  0x646c SECKEY_CreateECPrivateKey()
  1239 ms  0x646c cx:0x7f84d79be428
  1241 ms     | 0x646c EC_ValidatePublicKey()
  1245 ms     | 0x646c ret:0x0
  1245 ms  0x646c ret:0x7f84d7935820::7f84d7935820  10 ca 9c d7                                      ....
           /* TID 0x64cf */
  1298 ms  0x64cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1299 ms  0x64cf ret:0x0
           /* TID 0x646c */
  1299 ms  SECKEY_ECParamsToKeySize()
  1299 ms  0x646c ret:0x100
  1299 ms  0x646c SECKEY_CreateECPrivateKey()
  1299 ms  0x646c cx:0x7f84d79be428
  1301 ms     | 0x646c EC_ValidatePublicKey()
  1306 ms     | 0x646c ret:0x0
  1306 ms  0x646c ret:0x7f84d7939020::7f84d7939020  90 cc 9c d7                                      ....
  1307 ms  0x646c PK11_PubDeriveWithKDF()
  1307 ms  0x646c seckey:0x7f84d7939020
  1307 ms     | 0x646c EC_ValidatePublicKey()
  1311 ms     | 0x646c ret:0x0
  1315 ms  0x646c ret:0x7f84d93fb780
  1315 ms  0x646c PK11_DeriveWithFlags()
  1315 ms  0x646c basekey:0x7f84d93fb780
  1315 ms     | 0x646c PK11_DeriveWithTemplate()
  1315 ms  0x646c ret:0x7f84d7950900
  1315 ms  0x646c PK11_Derive()
  1315 ms  0x646c basekey:0x7f84d7950900
  1315 ms     | 0x646c PK11_DeriveWithTemplate()
  1316 ms  0x646c ret:0x7f84d79c2000
  1316 ms  0x646c SECKEY_DestroyPrivateKey()
  1316 ms  0x646c privk:0x7f84d7939020::7f84d7939020  90 cc 9c d7                                      ....
  1316 ms  0x646c privk:0x7f84d7939020::7f84d7939020  e5 e5 e5 e5                                      ....
  1316 ms  0x646c PK11_Encrypt()
  1316 ms  0x646c symkey:0x7f84d79c2500
  1316 ms  0x646c SSL_AuthCertificateComplete()
  1316 ms  0x646c fd:0x7f84d79b9d30
  1316 ms  0x646c err:0x0
  1317 ms  0x646c PK11_Encrypt()
  1317 ms  0x646c symkey:0x7f84d79c2500
  1368 ms  0x646c SECKEY_DestroyPrivateKey()
  1368 ms  0x646c privk:0x7f84d7935820::7f84d7935820  10 ca 9c d7                                      ....
  1368 ms  0x646c privk:0x7f84d7935820::7f84d7935820  e5 e5 e5 e5                                      ....
  1368 ms  0x646c SECKEY_DestroyPrivateKey()
  1368 ms  0x646c privk:0x7f84d792f820::7f84d792f820  30 c8 9c d7                                      0...
  1369 ms  0x646c privk:0x7f84d792f820::7f84d792f820  e5 e5 e5 e5                                      ....
  1372 ms  0x646c PK11_Encrypt()
  1372 ms  0x646c symkey:0x7f84d79c2500
  1403 ms  0x646c PK11_Encrypt()
  1403 ms  0x646c symkey:0x7f84d79c2500
  1433 ms  0x646c PK11_Encrypt()
  1433 ms  0x646c symkey:0x7f84d79c2500
  1463 ms  0x646c PK11_Encrypt()
  1463 ms  0x646c symkey:0x7f84d79c2500
  1582 ms  0x646c PK11_Encrypt()
  1582 ms  0x646c symkey:0x7f84d79c2500
  1613 ms  0x646c PK11_Encrypt()
  1613 ms  0x646c symkey:0x7f84d79c2500
  1645 ms  0x646c PK11_Encrypt()
  1645 ms  0x646c symkey:0x7f84d79c2500
           /* TID 0x64c8 */
  1674 ms  0x64c8 PR_Close()
  1674 ms  0x64c8 fd:0x7f84d79b9e50
  1674 ms  0x64c8 PR_Close()
  1674 ms  0x64c8 fd:0x7f84d79b9f10
  1674 ms  0x64c8 PR_Close()
  1674 ms  0x64c8 fd:0x7f84d79b9e50
  1674 ms  0x64c8 PR_Close()
  1674 ms  0x64c8 fd:0x7f84d79b9f10
  1674 ms  0x64c8 PR_Close()
  1674 ms  0x64c8 fd:0x7f84d79b9e50
  1674 ms  0x64c8 PR_Close()
  1674 ms  0x64c8 fd:0x7f84d79b9f10
  1674 ms  0x64c8 PR_Close()
  1674 ms  0x64c8 fd:0x7f84d79b9e50
  1674 ms  0x64c8 PR_Close()
  1674 ms  0x64c8 fd:0x7f84d79b9f10
  1675 ms  0x64c8 PR_Close()
  1675 ms  0x64c8 fd:0x7f84d79b9e50
  1675 ms  0x64c8 PR_Close()
  1675 ms  0x64c8 fd:0x7f84d79b9f10
  1675 ms  0x64c8 PR_Close()
  1675 ms  0x64c8 fd:0x7f84d79b9e50
  1675 ms  0x64c8 PR_Close()
  1675 ms  0x64c8 fd:0x7f84d79b9f10
  1675 ms  0x64c8 PR_Close()
  1675 ms  0x64c8 fd:0x7f84d79b9e50
  1675 ms  0x64c8 PR_Close()
  1675 ms  0x64c8 fd:0x7f84d79b9f10
  1675 ms  0x64c8 PR_Close()
  1675 ms  0x64c8 fd:0x7f84d79b9e50
  1675 ms  0x64c8 PR_Close()
  1675 ms  0x64c8 fd:0x7f84d79b9f10
  1675 ms  0x64c8 PR_Close()
  1675 ms  0x64c8 fd:0x7f84d79b9e50
  1675 ms  0x64c8 PR_Close()
  1675 ms  0x64c8 fd:0x7f84d79b9f10
  1676 ms  0x64c8 PR_Close()
  1676 ms  0x64c8 fd:0x7f84d79b9e50
  1676 ms  0x64c8 PR_Close()
  1676 ms  0x64c8 fd:0x7f84d79b9f10
  1676 ms  0x64c8 PR_Close()
  1676 ms  0x64c8 fd:0x7f84d79b9e50
  1676 ms  0x64c8 PR_Close()
  1676 ms  0x64c8 fd:0x7f84d79b9f10
  1676 ms  0x64c8 PR_Close()
  1676 ms  0x64c8 fd:0x7f84d79b9e50
  1676 ms  0x64c8 PR_Close()
  1676 ms  0x64c8 fd:0x7f84d79b9f10
  1676 ms  0x64c8 PR_Close()
  1676 ms  0x64c8 fd:0x7f84d79b9e50
  1676 ms  0x64c8 PR_Close()
  1676 ms  0x64c8 fd:0x7f84d79b9f10
  1677 ms  0x64c8 PR_Close()
  1677 ms  0x64c8 fd:0x7f84d79b9e50
  1677 ms  0x64c8 PR_Close()
  1677 ms  0x64c8 fd:0x7f84d79b9f10
  1680 ms  0x64c8 PR_Close()
  1680 ms  0x64c8 fd:0x7f84d7951f70
  1680 ms  0x64c8 PR_Close()
  1680 ms  0x64c8 fd:0x7f84d79b9e20
  1683 ms  0x64c8 PR_Close()
  1683 ms  0x64c8 fd:0x7f84d79b9e20
  1683 ms  0x64c8 PR_Close()
  1683 ms  0x64c8 fd:0x7f84d79b9e50
  1686 ms  0x64c8 PR_Close()
  1686 ms  0x64c8 fd:0x7f84d79b9e50
  1686 ms  0x64c8 PR_Close()
  1686 ms  0x64c8 fd:0x7f84d79b9e50
  1689 ms  0x64c8 PR_Close()
  1689 ms  0x64c8 fd:0x7f84d79b9e50
  1689 ms  0x64c8 PR_Close()
  1689 ms  0x64c8 fd:0x7f84d79b9e50
  1736 ms  0x64c8 PR_Close()
  1736 ms  0x64c8 fd:0x7f84d79b9e50
  1737 ms  0x64c8 PR_Close()
  1737 ms  0x64c8 fd:0x7f84d79b9e50
  1744 ms  0x64c8 PR_Close()
  1744 ms  0x64c8 fd:0x7f84d79b9e50
  1744 ms  0x64c8 PR_Close()
  1744 ms  0x64c8 fd:0x7f84d79b9e50
  1751 ms  0x64c8 PR_Close()
  1751 ms  0x64c8 fd:0x7f84d79b9e50
  1751 ms  0x64c8 PR_Close()
  1751 ms  0x64c8 fd:0x7f84d79b9e50
  1753 ms  0x64c8 PR_Close()
  1753 ms  0x64c8 fd:0x7f84d79b9e50
  1753 ms  0x64c8 PR_Close()
  1753 ms  0x64c8 fd:0x7f84d79b9e50
           /* TID 0x64c6 */
  1753 ms  0x64c6 PR_Close()
  1753 ms  0x64c6 fd:0x7f84d79b9e50
  1753 ms  0x64c6 PR_Close()
  1753 ms  0x64c6 fd:0x7f84d79b9e50
  1753 ms  0x64c6 PR_Close()
  1753 ms  0x64c6 fd:0x7f84d79b9e50
  1753 ms  0x64c6 PR_Close()
  1753 ms  0x64c6 fd:0x7f84d79b9e50
  1753 ms  0x64c6 PR_Close()
  1753 ms  0x64c6 fd:0x7f84d79b9e50
  1754 ms  0x64c6 PR_Close()
  1754 ms  0x64c6 fd:0x7f84d79b9e50
  1754 ms  0x64c6 PR_Close()
  1754 ms  0x64c6 fd:0x7f84d79b9e50
  1754 ms  0x64c6 PR_Close()
  1754 ms  0x64c6 fd:0x7f84d79b9e50
  1754 ms  0x64c6 PR_Close()
  1754 ms  0x64c6 fd:0x7f84d79b9e50
  1754 ms  0x64c6 PR_Close()
  1754 ms  0x64c6 fd:0x7f84d79b9e50
  1754 ms  0x64c6 PR_Close()
  1754 ms  0x64c6 fd:0x7f84d79b9e50
  1754 ms  0x64c6 PR_Close()
  1754 ms  0x64c6 fd:0x7f84d79b9e50
  1754 ms  0x64c6 PR_Close()
  1754 ms  0x64c6 fd:0x7f84d79b9e50
  1754 ms  0x64c6 PR_Close()
  1754 ms  0x64c6 fd:0x7f84d79b9e50
  1754 ms  0x64c6 PR_Close()
  1754 ms  0x64c6 fd:0x7f84d79b9e50
           /* TID 0x6487 */
  2257 ms  0x6487 PR_Close()
  2257 ms  0x6487 fd:0x7f84d79f61f0
  2260 ms  0x6487 PR_Close()
  2260 ms  0x6487 fd:0x7f84d79f61f0
  2693 ms  0x6487 PR_Close()
  2693 ms  0x6487 fd:0x7f84d79f61f0
           /* TID 0x6474 */
  4183 ms  0x6474 PR_Close()
  4183 ms  0x6474 fd:0x7f84d79f61f0
  4183 ms  0x6474 PR_Close()
  4183 ms  0x6474 fd:0x7f84d79f6340
  4183 ms  0x6474 PR_Close()
  4183 ms  0x6474 fd:0x7f84d79f63a0
           /* TID 0x646c */
  4518 ms  0x646c SSL_ImportFD()
  4518 ms  0x646c ret:0x7f84dd8f6730
  4518 ms  0x646c SSL_AuthCertificateHook()
  4518 ms  0x646c fd:0x7f84dd8f6730
  4518 ms  0x646c ret:0x0
  4518 ms  0x646c PR_Connect()
  4518 ms  0x646c fd:0x7f84dd8f6730
  4555 ms  0x646c SECKEY_CreateECPrivateKey()
  4555 ms  0x646c cx:0x7f84d79be768
  4556 ms     | 0x646c EC_ValidatePublicKey()
  4556 ms     | 0x646c ret:0x0
  4556 ms  0x646c ret:0x7f84dbf98820::7f84dbf98820  40 27 e6 d8                                      @'..
  4556 ms  0x646c SECKEY_CreateECPrivateKey()
  4556 ms  0x646c cx:0x7f84d79be768
  4557 ms     | 0x646c EC_ValidatePublicKey()
  4558 ms     | 0x646c ret:0x0
  4558 ms  0x646c ret:0x7f84dd404820::7f84dd404820  c0 29 e6 d8                                      .)..
  4613 ms  0x646c PK11_Derive()
  4613 ms  0x646c basekey:0x7f84d93fb780
  4613 ms     | 0x646c PK11_DeriveWithTemplate()
  4613 ms  0x646c ret:0x7f84d8e60780
  4613 ms  0x646c PK11_PubDeriveWithKDF()
  4613 ms  0x646c seckey:0x7f84dbf98820
  4613 ms     | 0x646c EC_ValidatePublicKey()
  4613 ms     | 0x646c ret:0x0
  4615 ms  0x646c ret:0x7f84d93fb780
  4615 ms  SECKEY_ECParamsToKeySize()
  4615 ms  0x646c ret:0xff
  4615 ms  0x646c PK11_DeriveWithFlags()
  4615 ms  0x646c basekey:0x7f84d8e60780
  4615 ms     | 0x646c PK11_DeriveWithTemplate()
  4615 ms  0x646c ret:0x7f84d8e60a80
  4615 ms  0x646c PK11_Derive()
  4615 ms  0x646c basekey:0x7f84d93fb780
  4615 ms     | 0x646c PK11_DeriveWithTemplate()
  4616 ms  0x646c ret:0x7f84d8e60c80
  4616 ms  0x646c PK11_DeriveWithFlags()
  4616 ms  0x646c basekey:0x7f84d8e60c80
  4616 ms     | 0x646c PK11_DeriveWithTemplate()
  4616 ms  0x646c ret:0x7f84d8e60780
  4616 ms  0x646c PK11_DeriveWithFlags()
  4616 ms  0x646c basekey:0x7f84d8e60c80
  4616 ms     | 0x646c PK11_DeriveWithTemplate()
  4616 ms  0x646c ret:0x7f84d93fb780
  4616 ms  0x646c PK11_DeriveWithFlags()
  4616 ms  0x646c basekey:0x7f84d8e60c80
  4616 ms     | 0x646c PK11_DeriveWithTemplate()
  4616 ms  0x646c ret:0x7f84d8e60a80
  4616 ms  0x646c PK11_Derive()
  4616 ms  0x646c basekey:0x7f84d8e60d00
  4616 ms     | 0x646c PK11_DeriveWithTemplate()
  4616 ms  0x646c ret:0x7f84d8e60d80
  4616 ms  0x646c PK11_DeriveWithFlags()
  4616 ms  0x646c basekey:0x7f84d93fb780
  4616 ms     | 0x646c PK11_DeriveWithTemplate()
  4617 ms  0x646c ret:0x7f84d8e60c80
  4617 ms  0x646c PK11_DeriveWithFlags()
  4617 ms  0x646c basekey:0x7f84d93fb780
  4617 ms     | 0x646c PK11_DeriveWithTemplate()
  4617 ms  0x646c ret:0x7f84d8e60a80
  4622 ms  SECKEY_ECParamsToKeySize()
  4622 ms  0x646c ret:0x100
  4622 ms  SECKEY_ECParamsToBasePointOrderLen()
  4622 ms  0x646c ret:0x100
  4622 ms  SECKEY_ECParamsToBasePointOrderLen()
  4622 ms  0x646c ret:0x100
  4622 ms  0x646c EC_ValidatePublicKey()
  4627 ms  0x646c ret:0x0
  4632 ms  0x646c PK11_DeriveWithFlags()
  4632 ms  0x646c basekey:0x7f84d93fb780
  4632 ms     | 0x646c PK11_DeriveWithTemplate()
  4632 ms  0x646c ret:0x7f84d8e60a80
  4633 ms  0x646c PR_Connect()
  4633 ms  0x646c fd:0x7f84d8c248b0
           /* TID 0x6474 */
  4815 ms  0x6474 PR_Close()
  4815 ms  0x6474 fd:0x7f84d8c242e0
           /* TID 0x64cf */
  4816 ms  0x64cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4816 ms  0x64cf ret:0x0
           /* TID 0x646c */
  5258 ms  0x646c SSL_AuthCertificateComplete()
  5258 ms  0x646c fd:0x7f84dd8f6730
  5258 ms  0x646c err:0x0
  5258 ms     | 0x646c PK11_DeriveWithFlags()
  5258 ms     | 0x646c basekey:0x7f84d8e60d80
  5258 ms     |    | 0x646c PK11_DeriveWithTemplate()
  5258 ms     | 0x646c ret:0x7f84d8e60a80
  5258 ms     | 0x646c PK11_DeriveWithFlags()
  5258 ms     | 0x646c basekey:0x7f84d8e60d80
  5258 ms     |    | 0x646c PK11_DeriveWithTemplate()
  5258 ms     | 0x646c ret:0x7f84d8e60d00
  5258 ms     | 0x646c PK11_DeriveWithFlags()
  5258 ms     | 0x646c basekey:0x7f84d8e60d80
  5259 ms     |    | 0x646c PK11_DeriveWithTemplate()
  5259 ms     | 0x646c ret:0x7f84d8e60a00
  5259 ms     | 0x646c PK11_DeriveWithFlags()
  5259 ms     | 0x646c basekey:0x7f84d8e60780
  5259 ms     |    | 0x646c PK11_DeriveWithTemplate()
  5259 ms     | 0x646c ret:0x7f84d8e60b00
  5259 ms     | 0x646c PK11_DeriveWithFlags()
  5259 ms     | 0x646c basekey:0x7f84d8e60780
  5259 ms     |    | 0x646c PK11_DeriveWithTemplate()
  5259 ms     | 0x646c ret:0x7f84d8e61080
  5259 ms     | 0x646c PK11_DeriveWithFlags()
  5259 ms     | 0x646c basekey:0x7f84d8e60d00
  5259 ms     |    | 0x646c PK11_DeriveWithTemplate()
  5259 ms     | 0x646c ret:0x7f84d8e61080
  5259 ms     | 0x646c PK11_DeriveWithFlags()
  5259 ms     | 0x646c basekey:0x7f84d8e60d00
  5259 ms     |    | 0x646c PK11_DeriveWithTemplate()
  5259 ms     | 0x646c ret:0x7f84d8e61200
  5259 ms     | 0x646c PK11_DeriveWithFlags()
  5259 ms     | 0x646c basekey:0x7f84d8e60780
  5259 ms     |    | 0x646c PK11_DeriveWithTemplate()
  5259 ms     | 0x646c ret:0x7f84d8e60c80
  5259 ms     | 0x646c PK11_Encrypt()
  5259 ms     | 0x646c symkey:0x7f84d8e60b00
  5260 ms     | 0x646c PK11_DeriveWithFlags()
  5260 ms     | 0x646c basekey:0x7f84d8e60a80
  5260 ms     |    | 0x646c PK11_DeriveWithTemplate()
  5260 ms     | 0x646c ret:0x7f84d8e60c80
  5260 ms     | 0x646c PK11_DeriveWithFlags()
  5260 ms     | 0x646c basekey:0x7f84d8e60a80
  5260 ms     |    | 0x646c PK11_DeriveWithTemplate()
  5260 ms     | 0x646c ret:0x7f84d8e61200
  5260 ms     | 0x646c PK11_DeriveWithFlags()
  5260 ms     | 0x646c basekey:0x7f84d8e60d80
  5260 ms     |    | 0x646c PK11_DeriveWithTemplate()
  5261 ms     | 0x646c ret:0x7f84d8e60b00
  5261 ms     | 0x646c SECKEY_DestroyPrivateKey()
  5261 ms     | 0x646c privk:0x7f84dd404820::7f84dd404820  c0 29 e6 d8                                      .)..
  5261 ms     | 0x646c privk:0x7f84dd404820::7f84dd404820  e5 e5 e5 e5                                      ....
  5261 ms     | 0x646c SECKEY_DestroyPrivateKey()
  5261 ms     | 0x646c privk:0x7f84dbf98820::7f84dbf98820  40 27 e6 d8                                      @'..
  5262 ms     | 0x646c privk:0x7f84dbf98820::7f84dbf98820  e5 e5 e5 e5                                      ....
  5265 ms  0x646c PK11_Encrypt()
  5265 ms  0x646c symkey:0x7f84d8e60c80
  5265 ms  0x646c PK11_Encrypt()
  5265 ms  0x646c symkey:0x7f84d8e60c80
  5298 ms  0x646c PK11_DeriveWithFlags()
  5298 ms  0x646c basekey:0x7f84d8e60b00
  5298 ms     | 0x646c PK11_DeriveWithTemplate()
  5298 ms  0x646c ret:0x7f84d93fb780
  5298 ms  0x646c PK11_DeriveWithFlags()
  5298 ms  0x646c basekey:0x7f84d8e60b00
  5298 ms     | 0x646c PK11_DeriveWithTemplate()
  5298 ms  0x646c ret:0x7f84d93fb780
  5301 ms  0x646c PK11_Encrypt()
  5301 ms  0x646c symkey:0x7f84d8e60c80
           /* TID 0x6483 */
  5501 ms  0x6483 PR_Close()
  5501 ms  0x6483 fd:0x7f84c6ac1280
           /* TID 0x646c */
  5997 ms  0x646c PK11_Encrypt()
  5997 ms  0x646c symkey:0x7f84d8e60c80
           /* TID 0x6474 */
  6000 ms  0x6474 PR_Close()
  6000 ms  0x6474 fd:0x7f84c68ddbe0
           /* TID 0x646c */
  6018 ms  0x646c PK11_Encrypt()
  6018 ms  0x646c symkey:0x7f84d8e60c80
  6020 ms  0x646c PK11_Encrypt()
  6020 ms  0x646c symkey:0x7f84d8e60c80
  6021 ms  0x646c PK11_Encrypt()
  6021 ms  0x646c symkey:0x7f84d8e60c80
  6022 ms  0x646c PK11_Encrypt()
  6022 ms  0x646c symkey:0x7f84d8e60c80
  6024 ms  0x646c PK11_Encrypt()
  6024 ms  0x646c symkey:0x7f84d8e60c80
  6025 ms  0x646c PK11_Encrypt()
  6025 ms  0x646c symkey:0x7f84d8e60c80
  6026 ms  0x646c PK11_Encrypt()
  6026 ms  0x646c symkey:0x7f84d8e60c80
  6028 ms  0x646c PK11_Encrypt()
  6028 ms  0x646c symkey:0x7f84d8e60c80
  6033 ms  0x646c SSL_ImportFD()
  6033 ms  0x646c ret:0x7f84c68785b0
  6033 ms  0x646c SSL_AuthCertificateHook()
  6033 ms  0x646c fd:0x7f84c68785b0
  6033 ms  0x646c ret:0x0
  6033 ms  0x646c PR_Connect()
  6033 ms  0x646c fd:0x7f84c68785b0
  6034 ms  0x646c PK11_Encrypt()
  6034 ms  0x646c symkey:0x7f84d8e60c80
  6047 ms  0x646c PK11_Encrypt()
  6047 ms  0x646c symkey:0x7f84d8e60c80
  6048 ms  0x646c PK11_Encrypt()
  6048 ms  0x646c symkey:0x7f84d8e60c80
  6058 ms  0x646c PK11_Encrypt()
  6058 ms  0x646c symkey:0x7f84d8e60c80
  6070 ms  0x646c SECKEY_CreateECPrivateKey()
  6070 ms  0x646c cx:0x7f84d79bf128
  6071 ms     | 0x646c EC_ValidatePublicKey()
  6071 ms     | 0x646c ret:0x0
  6071 ms  0x646c ret:0x7f84c6654820::7f84c6654820  00 bb 67 c6                                      ..g.
  6071 ms  0x646c SECKEY_CreateECPrivateKey()
  6071 ms  0x646c cx:0x7f84d79bf128
  6072 ms     | 0x646c EC_ValidatePublicKey()
  6073 ms     | 0x646c ret:0x0
  6073 ms  0x646c ret:0x7f84c6656820::7f84c6656820  60 bf 67 c6                                      `.g.
  6076 ms  0x646c PK11_Encrypt()
  6076 ms  0x646c symkey:0x7f84d8e60c80
           /* TID 0x6474 */
  6077 ms  0x6474 PR_Close()
  6077 ms  0x6474 fd:0x7f84c6670400
  6079 ms  0x6474 PR_Close()
  6079 ms  0x6474 fd:0x7f84c6670400
  6081 ms  0x6474 PR_Close()
  6081 ms  0x6474 fd:0x7f84c6670400
  6083 ms  0x6474 PR_Close()
  6083 ms  0x6474 fd:0x7f84c6670400
  6084 ms  0x6474 PR_Close()
  6084 ms  0x6474 fd:0x7f84c6670400
  6085 ms  0x6474 PR_Close()
  6085 ms  0x6474 fd:0x7f84c6670ca0
  6087 ms  0x6474 PR_Close()
  6087 ms  0x6474 fd:0x7f84c6670d90
  6088 ms  0x6474 PR_Close()
  6088 ms  0x6474 fd:0x7f84c6670ee0
  6111 ms  0x6474 PR_Close()
  6111 ms  0x6474 fd:0x7f84c6670700
           /* TID 0x646c */
  6127 ms  0x646c PK11_Derive()
  6127 ms  0x646c basekey:0x7f84d93fb780
  6127 ms     | 0x646c PK11_DeriveWithTemplate()
  6127 ms  0x646c ret:0x7f84d8e60780
  6127 ms  0x646c PK11_PubDeriveWithKDF()
  6127 ms  0x646c seckey:0x7f84c6654820
  6127 ms     | 0x646c EC_ValidatePublicKey()
  6127 ms     | 0x646c ret:0x0
  6127 ms  0x646c ret:0x7f84d93fb780
  6127 ms  SECKEY_ECParamsToKeySize()
  6127 ms  0x646c ret:0xff
  6127 ms  0x646c PK11_DeriveWithFlags()
  6127 ms  0x646c basekey:0x7f84d8e60780
  6127 ms     | 0x646c PK11_DeriveWithTemplate()
  6127 ms  0x646c ret:0x7f84d8e60d80
  6127 ms  0x646c PK11_Derive()
  6127 ms  0x646c basekey:0x7f84d93fb780
  6127 ms     | 0x646c PK11_DeriveWithTemplate()
  6127 ms  0x646c ret:0x7f84d8e61200
  6127 ms  0x646c PK11_DeriveWithFlags()
  6127 ms  0x646c basekey:0x7f84d8e61200
  6127 ms     | 0x646c PK11_DeriveWithTemplate()
  6127 ms  0x646c ret:0x7f84d8e60780
  6127 ms  0x646c PK11_DeriveWithFlags()
  6127 ms  0x646c basekey:0x7f84d8e61200
  6127 ms     | 0x646c PK11_DeriveWithTemplate()
  6127 ms  0x646c ret:0x7f84d93fb780
  6127 ms  0x646c PK11_DeriveWithFlags()
  6127 ms  0x646c basekey:0x7f84d8e61200
  6127 ms     | 0x646c PK11_DeriveWithTemplate()
  6127 ms  0x646c ret:0x7f84d8e60d80
  6127 ms  0x646c PK11_Derive()
  6127 ms  0x646c basekey:0x7f84c663d780
  6128 ms     | 0x646c PK11_DeriveWithTemplate()
  6128 ms  0x646c ret:0x7f84c663db80
  6128 ms  0x646c PK11_DeriveWithFlags()
  6128 ms  0x646c basekey:0x7f84d93fb780
  6128 ms     | 0x646c PK11_DeriveWithTemplate()
  6128 ms  0x646c ret:0x7f84d8e61200
  6128 ms  0x646c PK11_DeriveWithFlags()
  6128 ms  0x646c basekey:0x7f84d93fb780
  6128 ms     | 0x646c PK11_DeriveWithTemplate()
  6128 ms  0x646c ret:0x7f84d8e60d80
  6130 ms  SECKEY_ECParamsToKeySize()
  6130 ms  0x646c ret:0x100
  6130 ms  SECKEY_ECParamsToBasePointOrderLen()
  6130 ms  0x646c ret:0x100
  6130 ms  SECKEY_ECParamsToBasePointOrderLen()
  6130 ms  0x646c ret:0x100
  6130 ms  0x646c EC_ValidatePublicKey()
  6134 ms  0x646c ret:0x0
  6136 ms  0x646c PK11_DeriveWithFlags()
  6136 ms  0x646c basekey:0x7f84d93fb780
  6136 ms     | 0x646c PK11_DeriveWithTemplate()
  6136 ms  0x646c ret:0x7f84d8e60d80
           /* TID 0x6474 */
  6198 ms  0x6474 PR_Close()
  6198 ms  0x6474 fd:0x7f84c6670dc0
  6201 ms  0x6474 PR_Close()
  6201 ms  0x6474 fd:0x7f84c6670ca0
  6204 ms  0x6474 PR_Close()
  6204 ms  0x6474 fd:0x7f84c66820d0
  6288 ms  0x6474 PR_Close()
  6288 ms  0x6474 fd:0x7f84c66700d0
           /* TID 0x64cf */
  6288 ms  0x64cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6288 ms  0x64cf ret:0x0
           /* TID 0x646c */
  6288 ms  0x646c SSL_AuthCertificateComplete()
  6288 ms  0x646c fd:0x7f84c68785b0
  6288 ms  0x646c err:0x0
  6288 ms     | 0x646c PK11_DeriveWithFlags()
  6288 ms     | 0x646c basekey:0x7f84c663db80
  6289 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6289 ms     | 0x646c ret:0x7f84d8e60d80
  6289 ms     | 0x646c PK11_DeriveWithFlags()
  6289 ms     | 0x646c basekey:0x7f84c663db80
  6289 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6289 ms     | 0x646c ret:0x7f84c663d780
  6289 ms     | 0x646c PK11_DeriveWithFlags()
  6289 ms     | 0x646c basekey:0x7f84c663db80
  6289 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6289 ms     | 0x646c ret:0x7f84c663ea00
  6289 ms     | 0x646c PK11_DeriveWithFlags()
  6289 ms     | 0x646c basekey:0x7f84d8e60780
  6289 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6289 ms     | 0x646c ret:0x7f84c664d280
  6289 ms     | 0x646c PK11_DeriveWithFlags()
  6289 ms     | 0x646c basekey:0x7f84d8e60780
  6289 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6289 ms     | 0x646c ret:0x7f84c669c800
  6289 ms     | 0x646c PK11_DeriveWithFlags()
  6289 ms     | 0x646c basekey:0x7f84c663d780
  6289 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6289 ms     | 0x646c ret:0x7f84c669c800
  6289 ms     | 0x646c PK11_DeriveWithFlags()
  6289 ms     | 0x646c basekey:0x7f84c663d780
  6289 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6289 ms     | 0x646c ret:0x7f84c669cf00
  6289 ms     | 0x646c PK11_DeriveWithFlags()
  6289 ms     | 0x646c basekey:0x7f84d8e60780
  6289 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6289 ms     | 0x646c ret:0x7f84d8e61200
  6289 ms     | 0x646c PK11_Encrypt()
  6289 ms     | 0x646c symkey:0x7f84c664d280
  6289 ms     | 0x646c PK11_DeriveWithFlags()
  6289 ms     | 0x646c basekey:0x7f84d8e60d80
  6290 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6290 ms     | 0x646c ret:0x7f84d8e61200
  6290 ms     | 0x646c PK11_DeriveWithFlags()
  6290 ms     | 0x646c basekey:0x7f84d8e60d80
  6290 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6290 ms     | 0x646c ret:0x7f84c669cf00
  6290 ms     | 0x646c PK11_DeriveWithFlags()
  6290 ms     | 0x646c basekey:0x7f84c663db80
  6290 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6290 ms     | 0x646c ret:0x7f84c664d280
  6290 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6290 ms     | 0x646c privk:0x7f84c6656820::7f84c6656820  60 bf 67 c6                                      `.g.
  6290 ms     | 0x646c privk:0x7f84c6656820::7f84c6656820  e5 e5 e5 e5                                      ....
  6290 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6290 ms     | 0x646c privk:0x7f84c6654820::7f84c6654820  00 bb 67 c6                                      ..g.
  6290 ms     | 0x646c privk:0x7f84c6654820::7f84c6654820  e5 e5 e5 e5                                      ....
  6291 ms  0x646c PK11_Encrypt()
  6291 ms  0x646c symkey:0x7f84d8e61200
  6291 ms  0x646c PK11_Encrypt()
  6291 ms  0x646c symkey:0x7f84d8e61200
  6327 ms  0x646c PK11_DeriveWithFlags()
  6327 ms  0x646c basekey:0x7f84c664d280
  6327 ms     | 0x646c PK11_DeriveWithTemplate()
  6327 ms  0x646c ret:0x7f84d93fb780
  6328 ms  0x646c PK11_DeriveWithFlags()
  6328 ms  0x646c basekey:0x7f84c664d280
  6328 ms     | 0x646c PK11_DeriveWithTemplate()
  6328 ms  0x646c ret:0x7f84d93fb780
  6328 ms  0x646c PK11_Encrypt()
  6328 ms  0x646c symkey:0x7f84d8e61200
  6387 ms  0x646c PK11_Encrypt()
  6387 ms  0x646c symkey:0x7f84d8e61200
  6387 ms  0x646c SSL_ImportFD()
  6387 ms  0x646c ret:0x7f84c66826d0
  6387 ms  0x646c SSL_AuthCertificateHook()
  6387 ms  0x646c fd:0x7f84c66826d0
  6387 ms  0x646c ret:0x0
  6387 ms  0x646c PR_Connect()
  6387 ms  0x646c fd:0x7f84c66826d0
  6387 ms  0x646c SSL_ImportFD()
  6387 ms  0x646c ret:0x7f84c6682130
  6387 ms  0x646c SSL_AuthCertificateHook()
  6387 ms  0x646c fd:0x7f84c6682130
  6387 ms  0x646c ret:0x0
  6388 ms  0x646c PR_Connect()
  6388 ms  0x646c fd:0x7f84c6682130
  6388 ms  0x646c SSL_ImportFD()
  6388 ms  0x646c ret:0x7f84c6682730
  6388 ms  0x646c SSL_AuthCertificateHook()
  6388 ms  0x646c fd:0x7f84c6682730
  6388 ms  0x646c ret:0x0
  6388 ms  0x646c PR_Connect()
  6388 ms  0x646c fd:0x7f84c6682730
  6388 ms  0x646c SSL_ImportFD()
  6388 ms  0x646c ret:0x7f84c6682760
  6388 ms  0x646c SSL_AuthCertificateHook()
  6388 ms  0x646c fd:0x7f84c6682760
  6388 ms  0x646c ret:0x0
  6388 ms  0x646c PR_Connect()
  6388 ms  0x646c fd:0x7f84c6682760
  6388 ms  0x646c SSL_ImportFD()
  6388 ms  0x646c ret:0x7f84c66822e0
  6388 ms  0x646c SSL_AuthCertificateHook()
  6388 ms  0x646c fd:0x7f84c66822e0
  6388 ms  0x646c ret:0x0
  6388 ms  0x646c PR_Connect()
  6388 ms  0x646c fd:0x7f84c66822e0
  6388 ms  0x646c SSL_ImportFD()
  6388 ms  0x646c ret:0x7f84c6682370
  6388 ms  0x646c SSL_AuthCertificateHook()
  6388 ms  0x646c fd:0x7f84c6682370
  6388 ms  0x646c ret:0x0
  6389 ms  0x646c PR_Connect()
  6389 ms  0x646c fd:0x7f84c6682370
  6389 ms  0x646c SSL_ImportFD()
  6389 ms  0x646c ret:0x7f84c6682400
  6389 ms  0x646c SSL_AuthCertificateHook()
  6389 ms  0x646c fd:0x7f84c6682400
  6389 ms  0x646c ret:0x0
  6389 ms  0x646c PR_Connect()
  6389 ms  0x646c fd:0x7f84c6682400
  6389 ms  0x646c SSL_ImportFD()
  6389 ms  0x646c ret:0x7f84c6682490
  6389 ms  0x646c SSL_AuthCertificateHook()
  6389 ms  0x646c fd:0x7f84c6682490
  6389 ms  0x646c ret:0x0
  6389 ms  0x646c PR_Connect()
  6389 ms  0x646c fd:0x7f84c6682490
  6389 ms  0x646c SSL_ImportFD()
  6389 ms  0x646c ret:0x7f84c6682520
  6389 ms  0x646c SSL_AuthCertificateHook()
  6389 ms  0x646c fd:0x7f84c6682520
  6389 ms  0x646c ret:0x0
  6389 ms  0x646c PR_Connect()
  6389 ms  0x646c fd:0x7f84c6682520
  6389 ms  0x646c SSL_ImportFD()
  6389 ms  0x646c ret:0x7f84c66825b0
  6389 ms  0x646c SSL_AuthCertificateHook()
  6389 ms  0x646c fd:0x7f84c66825b0
  6390 ms  0x646c ret:0x0
  6390 ms  0x646c PR_Connect()
  6390 ms  0x646c fd:0x7f84c66825b0
           /* TID 0x6474 */
  6396 ms  0x6474 PR_Close()
  6396 ms  0x6474 fd:0x7f84c6682640
           /* TID 0x646c */
  6407 ms  0x646c SSL_ImportFD()
  6407 ms  0x646c ret:0x7f84c68c1be0
  6407 ms  0x646c SSL_AuthCertificateHook()
  6407 ms  0x646c fd:0x7f84c68c1be0
  6407 ms  0x646c ret:0x0
  6407 ms  0x646c PR_Connect()
  6407 ms  0x646c fd:0x7f84c68c1be0
  6425 ms  0x646c SECKEY_CreateECPrivateKey()
  6425 ms  0x646c cx:0x7f84d79bf2c8
  6426 ms     | 0x646c EC_ValidatePublicKey()
  6426 ms     | 0x646c ret:0x0
  6426 ms  0x646c ret:0x7f84c6618020::7f84c6618020  90 07 6c c6                                      ..l.
  6426 ms  0x646c SECKEY_CreateECPrivateKey()
  6426 ms  0x646c cx:0x7f84d79bf2c8
  6426 ms     | 0x646c EC_ValidatePublicKey()
  6428 ms     | 0x646c ret:0x0
  6428 ms  0x646c ret:0x7f84c6653020::7f84c6653020  70 09 6c c6                                      p.l.
  6437 ms  0x646c SECKEY_CreateECPrivateKey()
  6437 ms  0x646c cx:0x7f84d79c0648
  6438 ms     | 0x646c EC_ValidatePublicKey()
  6438 ms     | 0x646c ret:0x0
  6438 ms  0x646c ret:0x7f84c6655820::7f84c6655820  b0 0a 6c c6                                      ..l.
  6438 ms  0x646c SECKEY_CreateECPrivateKey()
  6438 ms  0x646c cx:0x7f84d79c0648
  6439 ms     | 0x646c EC_ValidatePublicKey()
  6440 ms     | 0x646c ret:0x0
  6440 ms  0x646c ret:0x7f84c6657820::7f84c6657820  90 0c 6c c6                                      ..l.
  6443 ms  0x646c SECKEY_CreateECPrivateKey()
  6443 ms  0x646c cx:0x7f84d79c04a8
  6443 ms     | 0x646c EC_ValidatePublicKey()
  6443 ms     | 0x646c ret:0x0
  6443 ms  0x646c ret:0x7f84c665a820::7f84c665a820  d0 0d 6c c6                                      ..l.
  6443 ms  0x646c SECKEY_CreateECPrivateKey()
  6443 ms  0x646c cx:0x7f84d79c04a8
  6444 ms     | 0x646c EC_ValidatePublicKey()
  6446 ms     | 0x646c ret:0x0
  6446 ms  0x646c ret:0x7f84c665c820::7f84c665c820  b0 0f 6c c6                                      ..l.
  6446 ms  0x646c SECKEY_CreateECPrivateKey()
  6446 ms  0x646c cx:0x7f84d79c0308
  6446 ms     | 0x646c EC_ValidatePublicKey()
  6446 ms     | 0x646c ret:0x0
  6446 ms  0x646c ret:0x7f84c665f020::7f84c665f020  60 05 84 c6                                      `...
  6446 ms  0x646c SECKEY_CreateECPrivateKey()
  6446 ms  0x646c cx:0x7f84d79c0308
  6447 ms     | 0x646c EC_ValidatePublicKey()
  6448 ms     | 0x646c ret:0x0
  6448 ms  0x646c ret:0x7f84c6661020::7f84c6661020  60 80 88 c6                                      `...
  6457 ms  0x646c SECKEY_CreateECPrivateKey()
  6457 ms  0x646c cx:0x7f84d79c0168
  6457 ms     | 0x646c EC_ValidatePublicKey()
  6457 ms     | 0x646c ret:0x0
  6457 ms  0x646c ret:0x7f84c6663820::7f84c6663820  a0 86 88 c6                                      ....
  6457 ms  0x646c SECKEY_CreateECPrivateKey()
  6457 ms  0x646c cx:0x7f84d79c0168
  6458 ms     | 0x646c EC_ValidatePublicKey()
  6459 ms     | 0x646c ret:0x0
  6459 ms  0x646c ret:0x7f84c6665820::7f84c6665820  80 88 88 c6                                      ....
  6460 ms  0x646c SECKEY_CreateECPrivateKey()
  6460 ms  0x646c cx:0x7f84d79bffc8
  6460 ms     | 0x646c EC_ValidatePublicKey()
  6460 ms     | 0x646c ret:0x0
  6460 ms  0x646c ret:0x7f84c6668020::7f84c6668020  c0 89 88 c6                                      ....
  6460 ms  0x646c SECKEY_CreateECPrivateKey()
  6460 ms  0x646c cx:0x7f84d79bffc8
  6461 ms     | 0x646c EC_ValidatePublicKey()
  6462 ms     | 0x646c ret:0x0
  6462 ms  0x646c ret:0x7f84c666a020::7f84c666a020  90 27 8d c6                                      .'..
  6463 ms  0x646c SECKEY_CreateECPrivateKey()
  6463 ms  0x646c cx:0x7f84d79bfe28
  6463 ms     | 0x646c EC_ValidatePublicKey()
  6463 ms     | 0x646c ret:0x0
  6463 ms  0x646c ret:0x7f84c666c820::7f84c666c820  90 2c 8d c6                                      .,..
  6463 ms  0x646c SECKEY_CreateECPrivateKey()
  6463 ms  0x646c cx:0x7f84d79bfe28
  6464 ms     | 0x646c EC_ValidatePublicKey()
  6465 ms     | 0x646c ret:0x0
  6465 ms  0x646c ret:0x7f84c666e820::7f84c666e820  a0 06 aa c6                                      ....
  6477 ms  0x646c SECKEY_CreateECPrivateKey()
  6477 ms  0x646c cx:0x7f84d79bfc88
  6477 ms     | 0x646c EC_ValidatePublicKey()
  6477 ms     | 0x646c ret:0x0
  6477 ms  0x646c ret:0x7f84c6a1e020::7f84c6a1e020  60 50 af c6                                      `P..
  6477 ms  0x646c SECKEY_CreateECPrivateKey()
  6477 ms  0x646c cx:0x7f84d79bfc88
  6478 ms     | 0x646c EC_ValidatePublicKey()
  6479 ms     | 0x646c ret:0x0
  6479 ms  0x646c ret:0x7f84d7728820::7f84d7728820  f0 5b af c6                                      .[..
  6480 ms  0x646c SECKEY_CreateECPrivateKey()
  6480 ms  0x646c cx:0x7f84d79bfae8
  6480 ms     | 0x646c EC_ValidatePublicKey()
  6480 ms     | 0x646c ret:0x0
  6480 ms  0x646c ret:0x7f84d772c020::7f84d772c020  20 5e af c6                                       ^..
  6480 ms  0x646c SECKEY_CreateECPrivateKey()
  6480 ms  0x646c cx:0x7f84d79bfae8
  6481 ms     | 0x646c EC_ValidatePublicKey()
  6483 ms     | 0x646c ret:0x0
  6483 ms  0x646c ret:0x7f84d7730020::7f84d7730020  90 d2 7a d7                                      ..z.
  6483 ms  0x646c SECKEY_CreateECPrivateKey()
  6483 ms  0x646c cx:0x7f84d79bf948
  6483 ms     | 0x646c EC_ValidatePublicKey()
  6483 ms     | 0x646c ret:0x0
  6483 ms  0x646c ret:0x7f84d7927820::7f84d7927820  10 d5 7a d7                                      ..z.
  6483 ms  0x646c SECKEY_CreateECPrivateKey()
  6483 ms  0x646c cx:0x7f84d79bf948
  6484 ms     | 0x646c EC_ValidatePublicKey()
  6486 ms     | 0x646c ret:0x0
  6486 ms  0x646c ret:0x7f84d793d020::7f84d793d020  80 d8 7a d7                                      ..z.
  6486 ms  0x646c PK11_Derive()
  6486 ms  0x646c basekey:0x7f84d93fb780
  6486 ms     | 0x646c PK11_DeriveWithTemplate()
  6486 ms  0x646c ret:0x7f84d8e60780
  6486 ms  0x646c PK11_PubDeriveWithKDF()
  6486 ms  0x646c seckey:0x7f84c6618020
  6486 ms     | 0x646c EC_ValidatePublicKey()
  6486 ms     | 0x646c ret:0x0
  6486 ms  0x646c ret:0x7f84d93fb780
  6486 ms  SECKEY_ECParamsToKeySize()
  6486 ms  0x646c ret:0xff
  6486 ms  0x646c PK11_DeriveWithFlags()
  6486 ms  0x646c basekey:0x7f84d8e60780
  6486 ms     | 0x646c PK11_DeriveWithTemplate()
  6487 ms  0x646c ret:0x7f84c663db80
  6487 ms  0x646c PK11_Derive()
  6487 ms  0x646c basekey:0x7f84d93fb780
  6487 ms     | 0x646c PK11_DeriveWithTemplate()
  6487 ms  0x646c ret:0x7f84c669cf00
  6487 ms  0x646c PK11_DeriveWithFlags()
  6487 ms  0x646c basekey:0x7f84c669cf00
  6487 ms     | 0x646c PK11_DeriveWithTemplate()
  6487 ms  0x646c ret:0x7f84d8e60780
  6487 ms  0x646c PK11_DeriveWithFlags()
  6487 ms  0x646c basekey:0x7f84c669cf00
  6487 ms     | 0x646c PK11_DeriveWithTemplate()
  6487 ms  0x646c ret:0x7f84d93fb780
  6487 ms  0x646c PK11_DeriveWithFlags()
  6487 ms  0x646c basekey:0x7f84c669cf00
  6487 ms     | 0x646c PK11_DeriveWithTemplate()
  6487 ms  0x646c ret:0x7f84c663db80
  6487 ms  0x646c PK11_Derive()
  6487 ms  0x646c basekey:0x7f84c669d980
  6487 ms     | 0x646c PK11_DeriveWithTemplate()
  6487 ms  0x646c ret:0x7f84c669da00
  6487 ms  0x646c PK11_DeriveWithFlags()
  6487 ms  0x646c basekey:0x7f84d93fb780
  6487 ms     | 0x646c PK11_DeriveWithTemplate()
  6487 ms  0x646c ret:0x7f84c669cf00
  6487 ms  0x646c PK11_DeriveWithFlags()
  6487 ms  0x646c basekey:0x7f84d93fb780
  6487 ms     | 0x646c PK11_DeriveWithTemplate()
  6487 ms  0x646c ret:0x7f84c663db80
  6507 ms  SECKEY_ECParamsToKeySize()
  6507 ms  0x646c ret:0x100
  6507 ms  SECKEY_ECParamsToBasePointOrderLen()
  6507 ms  0x646c ret:0x100
  6507 ms  SECKEY_ECParamsToBasePointOrderLen()
  6507 ms  0x646c ret:0x100
  6507 ms  0x646c EC_ValidatePublicKey()
  6509 ms  0x646c ret:0x0
  6510 ms  0x646c PK11_DeriveWithFlags()
  6510 ms  0x646c basekey:0x7f84d93fb780
  6510 ms     | 0x646c PK11_DeriveWithTemplate()
  6510 ms  0x646c ret:0x7f84c663db80
  6511 ms  0x646c PK11_Derive()
  6511 ms  0x646c basekey:0x7f84c663db80
  6511 ms     | 0x646c PK11_DeriveWithTemplate()
  6511 ms  0x646c ret:0x7f84c669d980
  6511 ms  0x646c PK11_PubDeriveWithKDF()
  6511 ms  0x646c seckey:0x7f84c6655820
  6511 ms     | 0x646c EC_ValidatePublicKey()
  6511 ms     | 0x646c ret:0x0
  6511 ms  0x646c ret:0x7f84c663db80
  6511 ms  SECKEY_ECParamsToKeySize()
  6511 ms  0x646c ret:0xff
  6511 ms  0x646c PK11_DeriveWithFlags()
  6511 ms  0x646c basekey:0x7f84c669d980
  6511 ms     | 0x646c PK11_DeriveWithTemplate()
  6511 ms  0x646c ret:0x7f84c669dc00
  6511 ms  0x646c PK11_Derive()
  6511 ms  0x646c basekey:0x7f84c663db80
  6511 ms     | 0x646c PK11_DeriveWithTemplate()
  6511 ms  0x646c ret:0x7f84c669dc80
  6511 ms  0x646c PK11_DeriveWithFlags()
  6511 ms  0x646c basekey:0x7f84c669dc80
  6511 ms     | 0x646c PK11_DeriveWithTemplate()
  6511 ms  0x646c ret:0x7f84c669d980
  6511 ms  0x646c PK11_DeriveWithFlags()
  6511 ms  0x646c basekey:0x7f84c669dc80
  6511 ms     | 0x646c PK11_DeriveWithTemplate()
  6511 ms  0x646c ret:0x7f84c663db80
  6511 ms  0x646c PK11_DeriveWithFlags()
  6511 ms  0x646c basekey:0x7f84c669dc80
  6511 ms     | 0x646c PK11_DeriveWithTemplate()
  6511 ms  0x646c ret:0x7f84c669dc00
  6511 ms  0x646c PK11_Derive()
  6511 ms  0x646c basekey:0x7f84c669dd00
  6511 ms     | 0x646c PK11_DeriveWithTemplate()
  6511 ms  0x646c ret:0x7f84c669dd80
  6511 ms  0x646c PK11_DeriveWithFlags()
  6511 ms  0x646c basekey:0x7f84c663db80
  6511 ms     | 0x646c PK11_DeriveWithTemplate()
  6511 ms  0x646c ret:0x7f84c669dc80
  6511 ms  0x646c PK11_DeriveWithFlags()
  6511 ms  0x646c basekey:0x7f84c663db80
  6511 ms     | 0x646c PK11_DeriveWithTemplate()
  6511 ms  0x646c ret:0x7f84c669dc00
  6516 ms  0x646c PK11_DeriveWithFlags()
  6516 ms  0x646c basekey:0x7f84c663db80
  6516 ms     | 0x646c PK11_DeriveWithTemplate()
  6516 ms  0x646c ret:0x7f84c669dc00
  6516 ms  0x646c PK11_Derive()
  6516 ms  0x646c basekey:0x7f84c669dc00
  6516 ms     | 0x646c PK11_DeriveWithTemplate()
  6516 ms  0x646c ret:0x7f84c669dd00
  6516 ms  0x646c PK11_PubDeriveWithKDF()
  6516 ms  0x646c seckey:0x7f84c665a820
  6516 ms     | 0x646c EC_ValidatePublicKey()
  6516 ms     | 0x646c ret:0x0
  6516 ms  0x646c ret:0x7f84c669dc00
  6516 ms  SECKEY_ECParamsToKeySize()
  6516 ms  0x646c ret:0xff
  6516 ms  0x646c PK11_DeriveWithFlags()
  6516 ms  0x646c basekey:0x7f84c669dd00
  6516 ms     | 0x646c PK11_DeriveWithTemplate()
  6516 ms  0x646c ret:0x7f84c669df80
  6516 ms  0x646c PK11_Derive()
  6516 ms  0x646c basekey:0x7f84c669dc00
  6516 ms     | 0x646c PK11_DeriveWithTemplate()
  6516 ms  0x646c ret:0x7f84c687a500
  6516 ms  0x646c PK11_DeriveWithFlags()
  6516 ms  0x646c basekey:0x7f84c687a500
  6516 ms     | 0x646c PK11_DeriveWithTemplate()
  6517 ms  0x646c ret:0x7f84c669dd00
  6517 ms  0x646c PK11_DeriveWithFlags()
  6517 ms  0x646c basekey:0x7f84c687a500
  6517 ms     | 0x646c PK11_DeriveWithTemplate()
  6517 ms  0x646c ret:0x7f84c669dc00
  6517 ms  0x646c PK11_DeriveWithFlags()
  6517 ms  0x646c basekey:0x7f84c687a500
  6517 ms     | 0x646c PK11_DeriveWithTemplate()
  6517 ms  0x646c ret:0x7f84c669df80
  6517 ms  0x646c PK11_Derive()
  6517 ms  0x646c basekey:0x7f84c687a700
  6517 ms     | 0x646c PK11_DeriveWithTemplate()
  6517 ms  0x646c ret:0x7f84c687a780
  6517 ms  0x646c PK11_DeriveWithFlags()
  6517 ms  0x646c basekey:0x7f84c669dc00
  6517 ms     | 0x646c PK11_DeriveWithTemplate()
  6517 ms  0x646c ret:0x7f84c687a500
  6517 ms  0x646c PK11_DeriveWithFlags()
  6517 ms  0x646c basekey:0x7f84c669dc00
  6517 ms     | 0x646c PK11_DeriveWithTemplate()
  6517 ms  0x646c ret:0x7f84c669df80
  6518 ms  0x646c PK11_DeriveWithFlags()
  6518 ms  0x646c basekey:0x7f84c669dc00
  6518 ms     | 0x646c PK11_DeriveWithTemplate()
  6518 ms  0x646c ret:0x7f84c669df80
  6518 ms  0x646c PK11_Derive()
  6518 ms  0x646c basekey:0x7f84c669df80
  6518 ms     | 0x646c PK11_DeriveWithTemplate()
  6518 ms  0x646c ret:0x7f84c687a700
  6518 ms  0x646c PK11_PubDeriveWithKDF()
  6518 ms  0x646c seckey:0x7f84c665f020
  6518 ms     | 0x646c EC_ValidatePublicKey()
  6518 ms     | 0x646c ret:0x0
  6519 ms  0x646c ret:0x7f84c669df80
  6519 ms  SECKEY_ECParamsToKeySize()
  6519 ms  0x646c ret:0xff
  6519 ms  0x646c PK11_DeriveWithFlags()
  6519 ms  0x646c basekey:0x7f84c687a700
  6519 ms     | 0x646c PK11_DeriveWithTemplate()
  6519 ms  0x646c ret:0x7f84c687bf80
  6519 ms  0x646c PK11_Derive()
  6519 ms  0x646c basekey:0x7f84c669df80
  6519 ms     | 0x646c PK11_DeriveWithTemplate()
  6519 ms  0x646c ret:0x7f84c6881500
  6519 ms  0x646c PK11_DeriveWithFlags()
  6519 ms  0x646c basekey:0x7f84c6881500
  6519 ms     | 0x646c PK11_DeriveWithTemplate()
  6519 ms  0x646c ret:0x7f84c687a700
  6519 ms  0x646c PK11_DeriveWithFlags()
  6519 ms  0x646c basekey:0x7f84c6881500
  6519 ms     | 0x646c PK11_DeriveWithTemplate()
  6519 ms  0x646c ret:0x7f84c669df80
  6519 ms  0x646c PK11_DeriveWithFlags()
  6519 ms  0x646c basekey:0x7f84c6881500
  6519 ms     | 0x646c PK11_DeriveWithTemplate()
  6519 ms  0x646c ret:0x7f84c687bf80
  6519 ms  0x646c PK11_Derive()
  6519 ms  0x646c basekey:0x7f84c6881f00
  6519 ms     | 0x646c PK11_DeriveWithTemplate()
  6519 ms  0x646c ret:0x7f84c68e0f00
  6519 ms  0x646c PK11_DeriveWithFlags()
  6519 ms  0x646c basekey:0x7f84c669df80
  6519 ms     | 0x646c PK11_DeriveWithTemplate()
  6519 ms  0x646c ret:0x7f84c6881500
  6519 ms  0x646c PK11_DeriveWithFlags()
  6519 ms  0x646c basekey:0x7f84c669df80
  6519 ms     | 0x646c PK11_DeriveWithTemplate()
  6519 ms  0x646c ret:0x7f84c687bf80
  6522 ms  SECKEY_ECParamsToKeySize()
  6522 ms  0x646c ret:0x100
  6522 ms  SECKEY_ECParamsToBasePointOrderLen()
  6522 ms  0x646c ret:0x100
  6522 ms  SECKEY_ECParamsToBasePointOrderLen()
  6522 ms  0x646c ret:0x100
  6522 ms  0x646c EC_ValidatePublicKey()
  6524 ms  0x646c ret:0x0
  6525 ms  0x646c PK11_DeriveWithFlags()
  6525 ms  0x646c basekey:0x7f84c669df80
  6525 ms     | 0x646c PK11_DeriveWithTemplate()
  6526 ms  0x646c ret:0x7f84c687bf80
  6537 ms  0x646c SECKEY_CreateECPrivateKey()
  6537 ms  0x646c cx:0x7f84d79c0988
  6538 ms     | 0x646c EC_ValidatePublicKey()
  6538 ms     | 0x646c ret:0x0
  6538 ms  0x646c ret:0x7f84dd735820::7f84dd735820  f0 7b 94 d7                                      .{..
  6538 ms  0x646c SECKEY_CreateECPrivateKey()
  6538 ms  0x646c cx:0x7f84d79c0988
  6539 ms     | 0x646c EC_ValidatePublicKey()
  6543 ms     | 0x646c ret:0x0
  6543 ms  0x646c ret:0x7f84c660c820::7f84c660c820  60 0a aa c6                                      `...
  6544 ms  0x646c SSL_AuthCertificateComplete()
  6544 ms  0x646c fd:0x7f84c6682490
  6544 ms  0x646c err:0x0
  6544 ms     | 0x646c PK11_DeriveWithFlags()
  6544 ms     | 0x646c basekey:0x7f84c68e0f00
  6544 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6544 ms     | 0x646c ret:0x7f84c687bf80
  6544 ms     | 0x646c PK11_DeriveWithFlags()
  6544 ms     | 0x646c basekey:0x7f84c68e0f00
  6544 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6544 ms     | 0x646c ret:0x7f84c6881f00
  6544 ms     | 0x646c PK11_DeriveWithFlags()
  6544 ms     | 0x646c basekey:0x7f84c68e0f00
  6544 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6544 ms     | 0x646c ret:0x7f84c663d080
  6544 ms     | 0x646c PK11_DeriveWithFlags()
  6544 ms     | 0x646c basekey:0x7f84c687a700
  6544 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6544 ms     | 0x646c ret:0x7f84c663d100
  6544 ms     | 0x646c PK11_DeriveWithFlags()
  6544 ms     | 0x646c basekey:0x7f84c687a700
  6544 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6544 ms     | 0x646c ret:0x7f84c663d180
  6544 ms     | 0x646c PK11_DeriveWithFlags()
  6544 ms     | 0x646c basekey:0x7f84c6881f00
  6544 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6544 ms     | 0x646c ret:0x7f84c663d180
  6544 ms     | 0x646c PK11_DeriveWithFlags()
  6544 ms     | 0x646c basekey:0x7f84c6881f00
  6544 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6544 ms     | 0x646c ret:0x7f84c663d700
  6544 ms     | 0x646c PK11_DeriveWithFlags()
  6544 ms     | 0x646c basekey:0x7f84c687a700
  6544 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6544 ms     | 0x646c ret:0x7f84c6881500
  6544 ms     | 0x646c PK11_Encrypt()
  6544 ms     | 0x646c symkey:0x7f84c663d100
  6544 ms     | 0x646c PK11_DeriveWithFlags()
  6544 ms     | 0x646c basekey:0x7f84c687bf80
  6544 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6544 ms     | 0x646c ret:0x7f84c6881500
  6544 ms     | 0x646c PK11_DeriveWithFlags()
  6544 ms     | 0x646c basekey:0x7f84c687bf80
  6544 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6544 ms     | 0x646c ret:0x7f84c663d700
  6544 ms     | 0x646c PK11_DeriveWithFlags()
  6544 ms     | 0x646c basekey:0x7f84c68e0f00
  6544 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6544 ms     | 0x646c ret:0x7f84c663d100
  6544 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6544 ms     | 0x646c privk:0x7f84c6661020::7f84c6661020  60 80 88 c6                                      `...
  6545 ms     | 0x646c privk:0x7f84c6661020::7f84c6661020  e5 e5 e5 e5                                      ....
  6545 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6545 ms     | 0x646c privk:0x7f84c665f020::7f84c665f020  60 05 84 c6                                      `...
  6545 ms     | 0x646c privk:0x7f84c665f020::7f84c665f020  e5 e5 e5 e5                                      ....
  6559 ms  0x646c PK11_Encrypt()
  6559 ms  0x646c symkey:0x7f84c6881500
  6564 ms  0x646c PK11_Encrypt()
  6564 ms  0x646c symkey:0x7f84c6881500
  6565 ms  0x646c PK11_Derive()
  6565 ms  0x646c basekey:0x7f84c669df80
  6565 ms     | 0x646c PK11_DeriveWithTemplate()
  6565 ms  0x646c ret:0x7f84c687a700
  6565 ms  0x646c PK11_PubDeriveWithKDF()
  6565 ms  0x646c seckey:0x7f84c6663820
  6565 ms     | 0x646c EC_ValidatePublicKey()
  6565 ms     | 0x646c ret:0x0
  6565 ms  0x646c ret:0x7f84c669df80
  6565 ms  SECKEY_ECParamsToKeySize()
  6565 ms  0x646c ret:0xff
  6565 ms  0x646c PK11_DeriveWithFlags()
  6565 ms  0x646c basekey:0x7f84c687a700
  6565 ms     | 0x646c PK11_DeriveWithTemplate()
  6566 ms  0x646c ret:0x7f84c68e0f00
  6566 ms  0x646c PK11_Derive()
  6566 ms  0x646c basekey:0x7f84c669df80
  6566 ms     | 0x646c PK11_DeriveWithTemplate()
  6566 ms  0x646c ret:0x7f84c663d700
  6566 ms  0x646c PK11_DeriveWithFlags()
  6566 ms  0x646c basekey:0x7f84c663d700
  6566 ms     | 0x646c PK11_DeriveWithTemplate()
  6566 ms  0x646c ret:0x7f84c687a700
  6566 ms  0x646c PK11_DeriveWithFlags()
  6566 ms  0x646c basekey:0x7f84c663d700
  6566 ms     | 0x646c PK11_DeriveWithTemplate()
  6566 ms  0x646c ret:0x7f84c669df80
  6566 ms  0x646c PK11_DeriveWithFlags()
  6566 ms  0x646c basekey:0x7f84c663d700
  6566 ms     | 0x646c PK11_DeriveWithTemplate()
  6566 ms  0x646c ret:0x7f84c68e0f00
  6566 ms  0x646c PK11_Derive()
  6566 ms  0x646c basekey:0x7f84c663e280
  6566 ms     | 0x646c PK11_DeriveWithTemplate()
  6566 ms  0x646c ret:0x7f84c663e580
  6566 ms  0x646c PK11_DeriveWithFlags()
  6566 ms  0x646c basekey:0x7f84c669df80
  6566 ms     | 0x646c PK11_DeriveWithTemplate()
  6566 ms  0x646c ret:0x7f84c663d700
  6566 ms  0x646c PK11_DeriveWithFlags()
  6566 ms  0x646c basekey:0x7f84c669df80
  6566 ms     | 0x646c PK11_DeriveWithTemplate()
  6566 ms  0x646c ret:0x7f84c68e0f00
  6567 ms  SECKEY_ECParamsToKeySize()
  6567 ms  0x646c ret:0x100
  6567 ms  SECKEY_ECParamsToBasePointOrderLen()
  6567 ms  0x646c ret:0x100
  6567 ms  SECKEY_ECParamsToBasePointOrderLen()
  6567 ms  0x646c ret:0x100
  6567 ms  0x646c EC_ValidatePublicKey()
  6569 ms  0x646c ret:0x0
  6571 ms  0x646c PK11_DeriveWithFlags()
  6571 ms  0x646c basekey:0x7f84c669df80
  6571 ms     | 0x646c PK11_DeriveWithTemplate()
  6571 ms  0x646c ret:0x7f84c68e0f00
  6571 ms  0x646c PK11_Derive()
  6571 ms  0x646c basekey:0x7f84c68e0f00
  6571 ms     | 0x646c PK11_DeriveWithTemplate()
  6571 ms  0x646c ret:0x7f84c663e280
  6571 ms  0x646c PK11_PubDeriveWithKDF()
  6571 ms  0x646c seckey:0x7f84c6668020
  6571 ms     | 0x646c EC_ValidatePublicKey()
  6571 ms     | 0x646c ret:0x0
  6571 ms  0x646c ret:0x7f84c68e0f00
  6571 ms  SECKEY_ECParamsToKeySize()
  6571 ms  0x646c ret:0xff
  6571 ms  0x646c PK11_DeriveWithFlags()
  6571 ms  0x646c basekey:0x7f84c663e280
  6571 ms     | 0x646c PK11_DeriveWithTemplate()
  6571 ms  0x646c ret:0x7f84c663ec80
  6571 ms  0x646c PK11_Derive()
  6571 ms  0x646c basekey:0x7f84c68e0f00
  6571 ms     | 0x646c PK11_DeriveWithTemplate()
  6571 ms  0x646c ret:0x7f84c663ee80
  6571 ms  0x646c PK11_DeriveWithFlags()
  6571 ms  0x646c basekey:0x7f84c663ee80
  6571 ms     | 0x646c PK11_DeriveWithTemplate()
  6571 ms  0x646c ret:0x7f84c663e280
  6571 ms  0x646c PK11_DeriveWithFlags()
  6571 ms  0x646c basekey:0x7f84c663ee80
  6571 ms     | 0x646c PK11_DeriveWithTemplate()
  6572 ms  0x646c ret:0x7f84c68e0f00
  6572 ms  0x646c PK11_DeriveWithFlags()
  6572 ms  0x646c basekey:0x7f84c663ee80
  6572 ms     | 0x646c PK11_DeriveWithTemplate()
  6572 ms  0x646c ret:0x7f84c663ec80
  6572 ms  0x646c PK11_Derive()
  6572 ms  0x646c basekey:0x7f84c664ec80
  6572 ms     | 0x646c PK11_DeriveWithTemplate()
  6572 ms  0x646c ret:0x7f84c669c100
  6572 ms  0x646c PK11_DeriveWithFlags()
  6572 ms  0x646c basekey:0x7f84c68e0f00
  6572 ms     | 0x646c PK11_DeriveWithTemplate()
  6572 ms  0x646c ret:0x7f84c663ee80
  6572 ms  0x646c PK11_DeriveWithFlags()
  6572 ms  0x646c basekey:0x7f84c68e0f00
  6572 ms     | 0x646c PK11_DeriveWithTemplate()
  6572 ms  0x646c ret:0x7f84c663ec80
  6573 ms  SECKEY_ECParamsToKeySize()
  6573 ms  0x646c ret:0x100
  6573 ms  SECKEY_ECParamsToBasePointOrderLen()
  6573 ms  0x646c ret:0x100
  6573 ms  SECKEY_ECParamsToBasePointOrderLen()
  6573 ms  0x646c ret:0x100
  6573 ms  0x646c EC_ValidatePublicKey()
  6574 ms  0x646c ret:0x0
  6576 ms  0x646c PK11_DeriveWithFlags()
  6576 ms  0x646c basekey:0x7f84c68e0f00
  6576 ms     | 0x646c PK11_DeriveWithTemplate()
  6576 ms  0x646c ret:0x7f84c663ec80
  6576 ms  0x646c PK11_Derive()
  6576 ms  0x646c basekey:0x7f84c663ec80
  6576 ms     | 0x646c PK11_DeriveWithTemplate()
  6576 ms  0x646c ret:0x7f84c664ec80
  6576 ms  0x646c PK11_PubDeriveWithKDF()
  6576 ms  0x646c seckey:0x7f84c666c820
  6576 ms     | 0x646c EC_ValidatePublicKey()
  6576 ms     | 0x646c ret:0x0
  6578 ms  0x646c ret:0x7f84c663ec80
  6578 ms  SECKEY_ECParamsToKeySize()
  6578 ms  0x646c ret:0xff
  6578 ms  0x646c PK11_DeriveWithFlags()
  6578 ms  0x646c basekey:0x7f84c664ec80
  6578 ms     | 0x646c PK11_DeriveWithTemplate()
  6578 ms  0x646c ret:0x7f84c669c400
  6578 ms  0x646c PK11_Derive()
  6578 ms  0x646c basekey:0x7f84c663ec80
  6578 ms     | 0x646c PK11_DeriveWithTemplate()
  6578 ms  0x646c ret:0x7f84c669c500
  6578 ms  0x646c PK11_DeriveWithFlags()
  6578 ms  0x646c basekey:0x7f84c669c500
  6579 ms     | 0x646c PK11_DeriveWithTemplate()
  6579 ms  0x646c ret:0x7f84c664ec80
  6579 ms  0x646c PK11_DeriveWithFlags()
  6579 ms  0x646c basekey:0x7f84c669c500
  6579 ms     | 0x646c PK11_DeriveWithTemplate()
  6579 ms  0x646c ret:0x7f84c663ec80
  6579 ms  0x646c PK11_DeriveWithFlags()
  6579 ms  0x646c basekey:0x7f84c669c500
  6579 ms     | 0x646c PK11_DeriveWithTemplate()
  6579 ms  0x646c ret:0x7f84c669c400
  6579 ms  0x646c PK11_Derive()
  6579 ms  0x646c basekey:0x7f84c669c580
  6579 ms     | 0x646c PK11_DeriveWithTemplate()
  6579 ms  0x646c ret:0x7f84c669c600
  6579 ms  0x646c PK11_DeriveWithFlags()
  6579 ms  0x646c basekey:0x7f84c663ec80
  6579 ms     | 0x646c PK11_DeriveWithTemplate()
  6579 ms  0x646c ret:0x7f84c669c500
  6579 ms  0x646c PK11_DeriveWithFlags()
  6579 ms  0x646c basekey:0x7f84c663ec80
  6579 ms     | 0x646c PK11_DeriveWithTemplate()
  6579 ms  0x646c ret:0x7f84c669c400
  6582 ms  SECKEY_ECParamsToKeySize()
  6582 ms  0x646c ret:0x100
  6582 ms  SECKEY_ECParamsToBasePointOrderLen()
  6582 ms  0x646c ret:0x100
  6582 ms  SECKEY_ECParamsToBasePointOrderLen()
  6582 ms  0x646c ret:0x100
  6582 ms  0x646c EC_ValidatePublicKey()
  6583 ms  0x646c ret:0x0
  6585 ms  0x646c PK11_DeriveWithFlags()
  6585 ms  0x646c basekey:0x7f84c663ec80
  6585 ms     | 0x646c PK11_DeriveWithTemplate()
  6585 ms  0x646c ret:0x7f84c669c400
  6585 ms  0x646c PK11_Derive()
  6585 ms  0x646c basekey:0x7f84c669c400
  6585 ms     | 0x646c PK11_DeriveWithTemplate()
  6585 ms  0x646c ret:0x7f84c669c580
  6585 ms  0x646c PK11_PubDeriveWithKDF()
  6585 ms  0x646c seckey:0x7f84c6a1e020
  6585 ms     | 0x646c EC_ValidatePublicKey()
  6585 ms     | 0x646c ret:0x0
  6586 ms  0x646c ret:0x7f84c669c400
  6586 ms  SECKEY_ECParamsToKeySize()
  6586 ms  0x646c ret:0xff
  6586 ms  0x646c PK11_DeriveWithFlags()
  6586 ms  0x646c basekey:0x7f84c669c580
  6586 ms     | 0x646c PK11_DeriveWithTemplate()
  6586 ms  0x646c ret:0x7f84c687a180
  6586 ms  0x646c PK11_Derive()
  6586 ms  0x646c basekey:0x7f84c669c400
  6586 ms     | 0x646c PK11_DeriveWithTemplate()
  6586 ms  0x646c ret:0x7f84c687a680
  6586 ms  0x646c PK11_DeriveWithFlags()
  6586 ms  0x646c basekey:0x7f84c687a680
  6586 ms     | 0x646c PK11_DeriveWithTemplate()
  6586 ms  0x646c ret:0x7f84c669c580
  6586 ms  0x646c PK11_DeriveWithFlags()
  6586 ms  0x646c basekey:0x7f84c687a680
  6586 ms     | 0x646c PK11_DeriveWithTemplate()
  6586 ms  0x646c ret:0x7f84c669c400
  6586 ms  0x646c PK11_DeriveWithFlags()
  6586 ms  0x646c basekey:0x7f84c687a680
  6586 ms     | 0x646c PK11_DeriveWithTemplate()
  6586 ms  0x646c ret:0x7f84c687a180
  6586 ms  0x646c PK11_Derive()
  6586 ms  0x646c basekey:0x7f84c687be80
  6586 ms     | 0x646c PK11_DeriveWithTemplate()
  6586 ms  0x646c ret:0x7f84c6882480
  6586 ms  0x646c PK11_DeriveWithFlags()
  6586 ms  0x646c basekey:0x7f84c669c400
  6586 ms     | 0x646c PK11_DeriveWithTemplate()
  6586 ms  0x646c ret:0x7f84c687a680
  6586 ms  0x646c PK11_DeriveWithFlags()
  6586 ms  0x646c basekey:0x7f84c669c400
  6586 ms     | 0x646c PK11_DeriveWithTemplate()
  6586 ms  0x646c ret:0x7f84c687a180
  6586 ms  SECKEY_ECParamsToKeySize()
  6586 ms  0x646c ret:0x100
  6586 ms  SECKEY_ECParamsToBasePointOrderLen()
  6586 ms  0x646c ret:0x100
  6597 ms  SECKEY_ECParamsToBasePointOrderLen()
  6597 ms  0x646c ret:0x100
  6597 ms  0x646c EC_ValidatePublicKey()
  6598 ms  0x646c ret:0x0
  6600 ms  0x646c PK11_DeriveWithFlags()
  6600 ms  0x646c basekey:0x7f84c669c400
  6600 ms     | 0x646c PK11_DeriveWithTemplate()
  6600 ms  0x646c ret:0x7f84c687a180
  6600 ms  0x646c PK11_Derive()
  6600 ms  0x646c basekey:0x7f84c687a180
  6600 ms     | 0x646c PK11_DeriveWithTemplate()
  6601 ms  0x646c ret:0x7f84c687be80
  6601 ms  0x646c PK11_PubDeriveWithKDF()
  6601 ms  0x646c seckey:0x7f84d772c020
  6601 ms     | 0x646c EC_ValidatePublicKey()
  6601 ms     | 0x646c ret:0x0
  6601 ms  0x646c ret:0x7f84c687a180
  6601 ms  SECKEY_ECParamsToKeySize()
  6601 ms  0x646c ret:0xff
  6601 ms  0x646c PK11_DeriveWithFlags()
  6601 ms  0x646c basekey:0x7f84c687be80
  6601 ms     | 0x646c PK11_DeriveWithTemplate()
  6601 ms  0x646c ret:0x7f84c6882b00
  6601 ms  0x646c PK11_Derive()
  6601 ms  0x646c basekey:0x7f84c687a180
  6601 ms     | 0x646c PK11_DeriveWithTemplate()
  6601 ms  0x646c ret:0x7f84c6882b80
  6601 ms  0x646c PK11_DeriveWithFlags()
  6601 ms  0x646c basekey:0x7f84c6882b80
  6601 ms     | 0x646c PK11_DeriveWithTemplate()
  6601 ms  0x646c ret:0x7f84c687be80
  6601 ms  0x646c PK11_DeriveWithFlags()
  6601 ms  0x646c basekey:0x7f84c6882b80
  6601 ms     | 0x646c PK11_DeriveWithTemplate()
  6601 ms  0x646c ret:0x7f84c687a180
  6601 ms  0x646c PK11_DeriveWithFlags()
  6601 ms  0x646c basekey:0x7f84c6882b80
  6601 ms     | 0x646c PK11_DeriveWithTemplate()
  6601 ms  0x646c ret:0x7f84c6882b00
  6601 ms  0x646c PK11_Derive()
  6601 ms  0x646c basekey:0x7f84c6882c00
  6601 ms     | 0x646c PK11_DeriveWithTemplate()
  6601 ms  0x646c ret:0x7f84c6882c80
  6601 ms  0x646c PK11_DeriveWithFlags()
  6601 ms  0x646c basekey:0x7f84c687a180
  6601 ms     | 0x646c PK11_DeriveWithTemplate()
  6601 ms  0x646c ret:0x7f84c6882b80
  6601 ms  0x646c PK11_DeriveWithFlags()
  6601 ms  0x646c basekey:0x7f84c687a180
  6601 ms     | 0x646c PK11_DeriveWithTemplate()
  6601 ms  0x646c ret:0x7f84c6882b00
  6601 ms  SECKEY_ECParamsToKeySize()
  6601 ms  0x646c ret:0x100
  6601 ms  SECKEY_ECParamsToBasePointOrderLen()
  6601 ms  0x646c ret:0x100
  6601 ms  SECKEY_ECParamsToBasePointOrderLen()
  6601 ms  0x646c ret:0x100
  6601 ms  0x646c EC_ValidatePublicKey()
  6603 ms  0x646c ret:0x0
  6605 ms  0x646c PK11_DeriveWithFlags()
  6605 ms  0x646c basekey:0x7f84c687a180
  6605 ms     | 0x646c PK11_DeriveWithTemplate()
  6605 ms  0x646c ret:0x7f84c6882b00
  6605 ms  0x646c PK11_Derive()
  6605 ms  0x646c basekey:0x7f84c6882b00
  6605 ms     | 0x646c PK11_DeriveWithTemplate()
  6605 ms  0x646c ret:0x7f84c6882c00
  6605 ms  0x646c PK11_PubDeriveWithKDF()
  6605 ms  0x646c seckey:0x7f84d7927820
  6605 ms     | 0x646c EC_ValidatePublicKey()
  6605 ms     | 0x646c ret:0x0
  6605 ms  0x646c ret:0x7f84c6882b00
  6605 ms  SECKEY_ECParamsToKeySize()
  6605 ms  0x646c ret:0xff
  6605 ms  0x646c PK11_DeriveWithFlags()
  6605 ms  0x646c basekey:0x7f84c6882c00
  6605 ms     | 0x646c PK11_DeriveWithTemplate()
  6605 ms  0x646c ret:0x7f84c6882d00
  6605 ms  0x646c PK11_Derive()
  6605 ms  0x646c basekey:0x7f84c6882b00
  6605 ms     | 0x646c PK11_DeriveWithTemplate()
  6605 ms  0x646c ret:0x7f84c6882d80
  6605 ms  0x646c PK11_DeriveWithFlags()
  6605 ms  0x646c basekey:0x7f84c6882d80
  6605 ms     | 0x646c PK11_DeriveWithTemplate()
  6605 ms  0x646c ret:0x7f84c6882c00
  6605 ms  0x646c PK11_DeriveWithFlags()
  6605 ms  0x646c basekey:0x7f84c6882d80
  6605 ms     | 0x646c PK11_DeriveWithTemplate()
  6605 ms  0x646c ret:0x7f84c6882b00
  6606 ms  0x646c PK11_DeriveWithFlags()
  6606 ms  0x646c basekey:0x7f84c6882d80
  6606 ms     | 0x646c PK11_DeriveWithTemplate()
  6606 ms  0x646c ret:0x7f84c6882d00
  6606 ms  0x646c PK11_Derive()
  6606 ms  0x646c basekey:0x7f84c6882e00
  6606 ms     | 0x646c PK11_DeriveWithTemplate()
  6606 ms  0x646c ret:0x7f84c6882e80
  6606 ms  0x646c PK11_DeriveWithFlags()
  6606 ms  0x646c basekey:0x7f84c6882b00
  6606 ms     | 0x646c PK11_DeriveWithTemplate()
  6606 ms  0x646c ret:0x7f84c6882d80
  6606 ms  0x646c PK11_DeriveWithFlags()
  6606 ms  0x646c basekey:0x7f84c6882b00
  6606 ms     | 0x646c PK11_DeriveWithTemplate()
  6606 ms  0x646c ret:0x7f84c6882d00
  6606 ms  SECKEY_ECParamsToKeySize()
  6606 ms  0x646c ret:0x100
  6606 ms  SECKEY_ECParamsToBasePointOrderLen()
  6606 ms  0x646c ret:0x100
  6606 ms  SECKEY_ECParamsToBasePointOrderLen()
  6606 ms  0x646c ret:0x100
  6606 ms  0x646c EC_ValidatePublicKey()
  6616 ms  0x646c ret:0x0
  6626 ms  0x646c PK11_DeriveWithFlags()
  6626 ms  0x646c basekey:0x7f84c6882b00
  6628 ms     | 0x646c PK11_DeriveWithTemplate()
  6628 ms  0x646c ret:0x7f84c6882d00
  6628 ms  0x646c SSL_ImportFD()
  6628 ms  0x646c ret:0x7f84d7951490
  6628 ms  0x646c SSL_AuthCertificateHook()
  6628 ms  0x646c fd:0x7f84d7951490
  6628 ms  0x646c ret:0x0
  6629 ms  0x646c PR_Connect()
  6629 ms  0x646c fd:0x7f84d7951490
  6629 ms  0x646c SSL_ImportFD()
  6629 ms  0x646c ret:0x7f84c68ddc40
  6629 ms  0x646c SSL_AuthCertificateHook()
  6629 ms  0x646c fd:0x7f84c68ddc40
  6629 ms  0x646c ret:0x0
  6629 ms  0x646c PR_Connect()
  6629 ms  0x646c fd:0x7f84c68ddc40
  6629 ms  0x646c SSL_ImportFD()
  6629 ms  0x646c ret:0x7f84c68ddc10
  6629 ms  0x646c SSL_AuthCertificateHook()
  6629 ms  0x646c fd:0x7f84c68ddc10
  6629 ms  0x646c ret:0x0
  6630 ms  0x646c PK11_Encrypt()
  6630 ms  0x646c symkey:0x7f84d8e60c80
  6630 ms  0x646c PR_Connect()
  6630 ms  0x646c fd:0x7f84c68ddc10
  6630 ms  0x646c PK11_DeriveWithFlags()
  6630 ms  0x646c basekey:0x7f84c663d100
  6630 ms     | 0x646c PK11_DeriveWithTemplate()
  6630 ms  0x646c ret:0x7f84c6882d00
  6630 ms  0x646c PK11_DeriveWithFlags()
  6630 ms  0x646c basekey:0x7f84c663d100
  6630 ms     | 0x646c PK11_DeriveWithTemplate()
  6630 ms  0x646c ret:0x7f84c6882d00
  6630 ms  0x646c SSL_AuthCertificateComplete()
  6630 ms  0x646c fd:0x7f84c6682400
  6630 ms  0x646c err:0x0
  6630 ms     | 0x646c PK11_DeriveWithFlags()
  6630 ms     | 0x646c basekey:0x7f84c663e580
  6630 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6630 ms     | 0x646c ret:0x7f84c6882d00
  6631 ms     | 0x646c PK11_DeriveWithFlags()
  6631 ms     | 0x646c basekey:0x7f84c663e580
  6631 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6631 ms     | 0x646c ret:0x7f84c6882e00
  6631 ms     | 0x646c PK11_DeriveWithFlags()
  6631 ms     | 0x646c basekey:0x7f84c663e580
  6631 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6631 ms     | 0x646c ret:0x7f84c68e0b00
  6631 ms     | 0x646c PK11_DeriveWithFlags()
  6631 ms     | 0x646c basekey:0x7f84c687a700
  6631 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6631 ms     | 0x646c ret:0x7f84c69f0880
  6631 ms     | 0x646c PK11_DeriveWithFlags()
  6631 ms     | 0x646c basekey:0x7f84c687a700
  6631 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6631 ms     | 0x646c ret:0x7f84c69f0f00
  6631 ms     | 0x646c PK11_DeriveWithFlags()
  6631 ms     | 0x646c basekey:0x7f84c6882e00
  6631 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6631 ms     | 0x646c ret:0x7f84c69f0f00
  6631 ms     | 0x646c PK11_DeriveWithFlags()
  6631 ms     | 0x646c basekey:0x7f84c6882e00
  6631 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6631 ms     | 0x646c ret:0x7f84c6a9c100
  6631 ms     | 0x646c PK11_DeriveWithFlags()
  6631 ms     | 0x646c basekey:0x7f84c687a700
  6631 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6631 ms     | 0x646c ret:0x7f84c663d700
  6631 ms     | 0x646c PK11_Encrypt()
  6631 ms     | 0x646c symkey:0x7f84c69f0880
  6631 ms     | 0x646c PK11_DeriveWithFlags()
  6631 ms     | 0x646c basekey:0x7f84c6882d00
  6631 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6631 ms     | 0x646c ret:0x7f84c663d700
  6631 ms     | 0x646c PK11_DeriveWithFlags()
  6631 ms     | 0x646c basekey:0x7f84c6882d00
  6631 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6631 ms     | 0x646c ret:0x7f84c6a9c100
  6631 ms     | 0x646c PK11_DeriveWithFlags()
  6631 ms     | 0x646c basekey:0x7f84c663e580
  6631 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6631 ms     | 0x646c ret:0x7f84c69f0880
  6631 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6631 ms     | 0x646c privk:0x7f84c6665820::7f84c6665820  80 88 88 c6                                      ....
  6631 ms     | 0x646c privk:0x7f84c6665820::7f84c6665820  e5 e5 e5 e5                                      ....
  6631 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6631 ms     | 0x646c privk:0x7f84c6663820::7f84c6663820  a0 86 88 c6                                      ....
  6631 ms     | 0x646c privk:0x7f84c6663820::7f84c6663820  e5 e5 e5 e5                                      ....
  6633 ms  0x646c PK11_Encrypt()
  6633 ms  0x646c symkey:0x7f84c6881500
           /* TID 0x6474 */
  6635 ms  0x6474 PR_Close()
  6635 ms  0x6474 fd:0x7f84c6670eb0
           /* TID 0x646c */
  6635 ms  0x646c PK11_Encrypt()
  6635 ms  0x646c symkey:0x7f84c6881500
  6635 ms  0x646c PK11_Encrypt()
  6635 ms  0x646c symkey:0x7f84c663d700
  6635 ms  0x646c PK11_Derive()
  6635 ms  0x646c basekey:0x7f84c669df80
  6635 ms     | 0x646c PK11_DeriveWithTemplate()
  6635 ms  0x646c ret:0x7f84c687a700
  6635 ms  0x646c PK11_PubDeriveWithKDF()
  6635 ms  0x646c seckey:0x7f84dd735820
  6635 ms     | 0x646c EC_ValidatePublicKey()
  6635 ms     | 0x646c ret:0x0
  6636 ms  0x646c ret:0x7f84c669df80
  6636 ms  SECKEY_ECParamsToKeySize()
  6636 ms  0x646c ret:0xff
  6636 ms  0x646c PK11_DeriveWithFlags()
  6636 ms  0x646c basekey:0x7f84c687a700
  6636 ms     | 0x646c PK11_DeriveWithTemplate()
  6636 ms  0x646c ret:0x7f84c663e580
  6636 ms  0x646c PK11_Derive()
  6636 ms  0x646c basekey:0x7f84c669df80
  6636 ms     | 0x646c PK11_DeriveWithTemplate()
  6636 ms  0x646c ret:0x7f84c6a9c100
  6636 ms  0x646c PK11_DeriveWithFlags()
  6636 ms  0x646c basekey:0x7f84c6a9c100
  6636 ms     | 0x646c PK11_DeriveWithTemplate()
  6636 ms  0x646c ret:0x7f84c687a700
  6636 ms  0x646c PK11_DeriveWithFlags()
  6636 ms  0x646c basekey:0x7f84c6a9c100
  6636 ms     | 0x646c PK11_DeriveWithTemplate()
  6636 ms  0x646c ret:0x7f84c669df80
  6636 ms  0x646c PK11_DeriveWithFlags()
  6636 ms  0x646c basekey:0x7f84c6a9c100
  6636 ms     | 0x646c PK11_DeriveWithTemplate()
  6636 ms  0x646c ret:0x7f84c663e580
  6636 ms  0x646c PK11_Derive()
  6636 ms  0x646c basekey:0x7f84c669ca80
  6636 ms     | 0x646c PK11_DeriveWithTemplate()
  6636 ms  0x646c ret:0x7f84c6a9c300
  6636 ms  0x646c PK11_DeriveWithFlags()
  6636 ms  0x646c basekey:0x7f84c669df80
  6636 ms     | 0x646c PK11_DeriveWithTemplate()
  6636 ms  0x646c ret:0x7f84c6a9c100
  6636 ms  0x646c PK11_DeriveWithFlags()
  6636 ms  0x646c basekey:0x7f84c669df80
  6636 ms     | 0x646c PK11_DeriveWithTemplate()
  6636 ms  0x646c ret:0x7f84c663e580
  6636 ms  0x646c PK11_DeriveWithFlags()
  6636 ms  0x646c basekey:0x7f84c669df80
  6636 ms     | 0x646c PK11_DeriveWithTemplate()
  6636 ms  0x646c ret:0x7f84c663e580
  6647 ms  0x646c PR_Connect()
  6647 ms  0x646c fd:0x7f84c68ddd60
  6647 ms  0x646c PR_Connect()
  6647 ms  0x646c fd:0x7f84d79511f0
  6647 ms  0x646c PK11_Encrypt()
  6647 ms  0x646c symkey:0x7f84c6881500
  6648 ms  0x646c PR_Connect()
  6648 ms  0x646c fd:0x7f84c68ddf40
  6648 ms  0x646c PR_Connect()
  6648 ms  0x646c fd:0x7f84d7951220
  6666 ms  0x646c SECKEY_CreateECPrivateKey()
  6666 ms  0x646c cx:0x7f84dddb3f48
  6667 ms     | 0x646c EC_ValidatePublicKey()
  6667 ms     | 0x646c ret:0x0
  6667 ms  0x646c ret:0x7f84c6665020::7f84c6665020  70 79 94 d7                                      py..
  6667 ms  0x646c SECKEY_CreateECPrivateKey()
  6667 ms  0x646c cx:0x7f84dddb3f48
  6668 ms     | 0x646c EC_ValidatePublicKey()
  6669 ms     | 0x646c ret:0x0
  6677 ms  0x646c ret:0x7f84d7935020::7f84d7935020  a0 86 88 c6                                      ....
  6677 ms  0x646c SECKEY_CreateECPrivateKey()
  6677 ms  0x646c cx:0x7f84dddb3da8
  6678 ms     | 0x646c EC_ValidatePublicKey()
  6678 ms     | 0x646c ret:0x0
  6678 ms  0x646c ret:0x7f84d8916820::7f84d8916820  60 c5 9c d7                                      `...
  6678 ms  0x646c SECKEY_CreateECPrivateKey()
  6678 ms  0x646c cx:0x7f84dddb3da8
  6678 ms     | 0x646c EC_ValidatePublicKey()
  6680 ms     | 0x646c ret:0x0
  6680 ms  0x646c ret:0x7f84d97e6820::7f84d97e6820  90 67 ff d7                                      .g..
           /* TID 0x6474 */
  6685 ms  0x6474 PR_Close()
  6685 ms  0x6474 fd:0x7f84c68782e0
           /* TID 0x646c */
  6686 ms  0x646c PK11_DeriveWithFlags()
  6686 ms  0x646c basekey:0x7f84c69f0880
  6686 ms     | 0x646c PK11_DeriveWithTemplate()
  6686 ms  0x646c ret:0x7f84c663e580
  6686 ms  0x646c PK11_DeriveWithFlags()
  6686 ms  0x646c basekey:0x7f84c69f0880
  6686 ms     | 0x646c PK11_DeriveWithTemplate()
  6686 ms  0x646c ret:0x7f84c663e580
  6686 ms  0x646c PR_Close()
  6686 ms  0x646c fd:0x7f84c6682400
  6686 ms     | 0x646c PK11_Encrypt()
  6686 ms     | 0x646c symkey:0x7f84c663d700
  6686 ms  0x646c PK11_Encrypt()
  6686 ms  0x646c symkey:0x7f84d8e60c80
           /* TID 0x6474 */
  6687 ms  0x6474 PR_Close()
  6687 ms  0x6474 fd:0x7f84c6670c40
           /* TID 0x64cf */
  6687 ms  0x64cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6687 ms  0x64cf ret:0x0
           /* TID 0x646c */
  6689 ms  0x646c SECKEY_CreateECPrivateKey()
  6689 ms  0x646c cx:0x7f84dddb40e8
  6690 ms     | 0x646c EC_ValidatePublicKey()
  6690 ms     | 0x646c ret:0x0
  6690 ms  0x646c ret:0x7f84d792e820::7f84d792e820  40 6c ff d7                                      @l..
  6690 ms  0x646c SECKEY_CreateECPrivateKey()
  6690 ms  0x646c cx:0x7f84dddb40e8
  6691 ms     | 0x646c EC_ValidatePublicKey()
  6692 ms     | 0x646c ret:0x0
  6692 ms  0x646c ret:0x7f84d890a020::7f84d890a020  40 e2 1b d8                                      @...
  6695 ms  0x646c SSL_AuthCertificateComplete()
  6695 ms  0x646c fd:0x7f84c66826d0
  6695 ms  0x646c err:0x0
  6695 ms     | 0x646c PK11_DeriveWithFlags()
  6695 ms     | 0x646c basekey:0x7f84c669da00
  6695 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6695 ms     | 0x646c ret:0x7f84c68e0b00
  6696 ms     | 0x646c PK11_DeriveWithFlags()
  6696 ms     | 0x646c basekey:0x7f84c669da00
  6696 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6696 ms     | 0x646c ret:0x7f84c6882e00
  6696 ms     | 0x646c PK11_DeriveWithFlags()
  6696 ms     | 0x646c basekey:0x7f84c669da00
  6696 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6696 ms     | 0x646c ret:0x7f84c6882d00
  6696 ms     | 0x646c PK11_DeriveWithFlags()
  6696 ms     | 0x646c basekey:0x7f84d8e60780
  6696 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6696 ms     | 0x646c ret:0x7f84c69f0880
  6696 ms     | 0x646c PK11_DeriveWithFlags()
  6696 ms     | 0x646c basekey:0x7f84d8e60780
  6696 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6696 ms     | 0x646c ret:0x7f84c69f0f00
  6696 ms     | 0x646c PK11_DeriveWithFlags()
  6696 ms     | 0x646c basekey:0x7f84c6882e00
  6696 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6696 ms     | 0x646c ret:0x7f84c69f0f00
  6696 ms     | 0x646c PK11_DeriveWithFlags()
  6696 ms     | 0x646c basekey:0x7f84c6882e00
  6696 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6696 ms     | 0x646c ret:0x7f84c663d700
  6696 ms     | 0x646c PK11_DeriveWithFlags()
  6696 ms     | 0x646c basekey:0x7f84d8e60780
  6696 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6696 ms     | 0x646c ret:0x7f84c669cf00
  6696 ms     | 0x646c PK11_Encrypt()
  6696 ms     | 0x646c symkey:0x7f84c69f0880
  6696 ms     | 0x646c PK11_DeriveWithFlags()
  6696 ms     | 0x646c basekey:0x7f84c68e0b00
  6696 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6696 ms     | 0x646c ret:0x7f84c669cf00
  6696 ms     | 0x646c PK11_DeriveWithFlags()
  6696 ms     | 0x646c basekey:0x7f84c68e0b00
  6696 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6696 ms     | 0x646c ret:0x7f84c663d700
  6696 ms     | 0x646c PK11_DeriveWithFlags()
  6696 ms     | 0x646c basekey:0x7f84c669da00
  6696 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6696 ms     | 0x646c ret:0x7f84c69f0880
  6696 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6696 ms     | 0x646c privk:0x7f84c6653020::7f84c6653020  70 09 6c c6                                      p.l.
  6696 ms     | 0x646c privk:0x7f84c6653020::7f84c6653020  e5 e5 e5 e5                                      ....
  6696 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6696 ms     | 0x646c privk:0x7f84c6618020::7f84c6618020  90 07 6c c6                                      ..l.
  6696 ms     | 0x646c privk:0x7f84c6618020::7f84c6618020  e5 e5 e5 e5                                      ....
  6697 ms  0x646c SSL_AuthCertificateComplete()
  6697 ms  0x646c fd:0x7f84c6682760
  6697 ms  0x646c err:0x0
  6697 ms     | 0x646c PK11_DeriveWithFlags()
  6697 ms     | 0x646c basekey:0x7f84c6882480
  6697 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6697 ms     | 0x646c ret:0x7f84d93fb780
  6697 ms     | 0x646c PK11_DeriveWithFlags()
  6697 ms     | 0x646c basekey:0x7f84c6882480
  6697 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6697 ms     | 0x646c ret:0x7f84d8e60780
  6697 ms     | 0x646c PK11_DeriveWithFlags()
  6697 ms     | 0x646c basekey:0x7f84c6882480
  6697 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6697 ms     | 0x646c ret:0x7f84c669da00
  6697 ms     | 0x646c PK11_DeriveWithFlags()
  6697 ms     | 0x646c basekey:0x7f84c669c580
  6697 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6697 ms     | 0x646c ret:0x7f84c663d700
  6697 ms     | 0x646c PK11_DeriveWithFlags()
  6697 ms     | 0x646c basekey:0x7f84c669c580
  6697 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6697 ms     | 0x646c ret:0x7f84c663e580
  6697 ms     | 0x646c PK11_DeriveWithFlags()
  6697 ms     | 0x646c basekey:0x7f84d8e60780
  6697 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6697 ms     | 0x646c ret:0x7f84c663e580
  6697 ms     | 0x646c PK11_DeriveWithFlags()
  6697 ms     | 0x646c basekey:0x7f84d8e60780
  6697 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6697 ms     | 0x646c ret:0x7f84c669ca80
  6697 ms     | 0x646c PK11_DeriveWithFlags()
  6697 ms     | 0x646c basekey:0x7f84c669c580
  6697 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6697 ms     | 0x646c ret:0x7f84c687a680
  6697 ms     | 0x646c PK11_Encrypt()
  6697 ms     | 0x646c symkey:0x7f84c663d700
  6697 ms     | 0x646c PK11_DeriveWithFlags()
  6697 ms     | 0x646c basekey:0x7f84d93fb780
  6697 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6697 ms     | 0x646c ret:0x7f84c687a680
  6697 ms     | 0x646c PK11_DeriveWithFlags()
  6697 ms     | 0x646c basekey:0x7f84d93fb780
  6697 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6697 ms     | 0x646c ret:0x7f84c669ca80
  6697 ms     | 0x646c PK11_DeriveWithFlags()
  6697 ms     | 0x646c basekey:0x7f84c6882480
  6697 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6697 ms     | 0x646c ret:0x7f84c663d700
  6697 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6697 ms     | 0x646c privk:0x7f84d7728820::7f84d7728820  f0 5b af c6                                      .[..
  6697 ms     | 0x646c privk:0x7f84d7728820::7f84d7728820  e5 e5 e5 e5                                      ....
  6697 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6697 ms     | 0x646c privk:0x7f84c6a1e020::7f84c6a1e020  60 50 af c6                                      `P..
  6697 ms     | 0x646c privk:0x7f84c6a1e020::7f84c6a1e020  e5 e5 e5 e5                                      ....
  6698 ms  0x646c SSL_AuthCertificateComplete()
  6698 ms  0x646c fd:0x7f84c6682730
  6698 ms  0x646c err:0x0
  6698 ms     | 0x646c PK11_DeriveWithFlags()
  6698 ms     | 0x646c basekey:0x7f84c6882c80
  6698 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6698 ms     | 0x646c ret:0x7f84c669c400
  6698 ms     | 0x646c PK11_DeriveWithFlags()
  6698 ms     | 0x646c basekey:0x7f84c6882c80
  6698 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6698 ms     | 0x646c ret:0x7f84c669c580
  6698 ms     | 0x646c PK11_DeriveWithFlags()
  6698 ms     | 0x646c basekey:0x7f84c6882c80
  6698 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6698 ms     | 0x646c ret:0x7f84c6882480
  6698 ms     | 0x646c PK11_DeriveWithFlags()
  6698 ms     | 0x646c basekey:0x7f84c687be80
  6698 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6698 ms     | 0x646c ret:0x7f84c669ca80
  6698 ms     | 0x646c PK11_DeriveWithFlags()
  6698 ms     | 0x646c basekey:0x7f84c687be80
  6698 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6698 ms     | 0x646c ret:0x7f84c664e380
  6698 ms     | 0x646c PK11_DeriveWithFlags()
  6698 ms     | 0x646c basekey:0x7f84c669c580
  6698 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6698 ms     | 0x646c ret:0x7f84c664e380
  6698 ms     | 0x646c PK11_DeriveWithFlags()
  6698 ms     | 0x646c basekey:0x7f84c669c580
  6698 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6698 ms     | 0x646c ret:0x7f84d8c4d300
  6698 ms     | 0x646c PK11_DeriveWithFlags()
  6698 ms     | 0x646c basekey:0x7f84c687be80
  6698 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6698 ms     | 0x646c ret:0x7f84c6882b80
  6698 ms     | 0x646c PK11_Encrypt()
  6698 ms     | 0x646c symkey:0x7f84c669ca80
  6706 ms     | 0x646c PK11_DeriveWithFlags()
  6706 ms     | 0x646c basekey:0x7f84c669c400
  6706 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6706 ms     | 0x646c ret:0x7f84c6882b80
  6706 ms     | 0x646c PK11_DeriveWithFlags()
  6706 ms     | 0x646c basekey:0x7f84c669c400
  6706 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6706 ms     | 0x646c ret:0x7f84d8c4d300
  6706 ms     | 0x646c PK11_DeriveWithFlags()
  6706 ms     | 0x646c basekey:0x7f84c6882c80
  6706 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6706 ms     | 0x646c ret:0x7f84c669ca80
  6706 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6706 ms     | 0x646c privk:0x7f84d7730020::7f84d7730020  90 d2 7a d7                                      ..z.
  6706 ms     | 0x646c privk:0x7f84d7730020::7f84d7730020  e5 e5 e5 e5                                      ....
  6706 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6706 ms     | 0x646c privk:0x7f84d772c020::7f84d772c020  20 5e af c6                                       ^..
  6706 ms     | 0x646c privk:0x7f84d772c020::7f84d772c020  e5 e5 e5 e5                                      ....
  6706 ms  0x646c SSL_AuthCertificateComplete()
  6706 ms  0x646c fd:0x7f84c6682130
  6706 ms  0x646c err:0x0
  6706 ms     | 0x646c PK11_DeriveWithFlags()
  6706 ms     | 0x646c basekey:0x7f84c6882e80
  6706 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6706 ms     | 0x646c ret:0x7f84c687a180
  6707 ms     | 0x646c PK11_DeriveWithFlags()
  6707 ms     | 0x646c basekey:0x7f84c6882e80
  6707 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6707 ms     | 0x646c ret:0x7f84c687be80
  6707 ms     | 0x646c PK11_DeriveWithFlags()
  6707 ms     | 0x646c basekey:0x7f84c6882e80
  6707 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6707 ms     | 0x646c ret:0x7f84c6882c80
  6707 ms     | 0x646c PK11_DeriveWithFlags()
  6707 ms     | 0x646c basekey:0x7f84c6882c00
  6707 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6707 ms     | 0x646c ret:0x7f84d8c4d300
  6707 ms     | 0x646c PK11_DeriveWithFlags()
  6707 ms     | 0x646c basekey:0x7f84c6882c00
  6707 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6707 ms     | 0x646c ret:0x7f84d8c4d380
  6707 ms     | 0x646c PK11_DeriveWithFlags()
  6707 ms     | 0x646c basekey:0x7f84c687be80
  6707 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6707 ms     | 0x646c ret:0x7f84d8c4d380
  6707 ms     | 0x646c PK11_DeriveWithFlags()
  6707 ms     | 0x646c basekey:0x7f84c687be80
  6707 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6707 ms     | 0x646c ret:0x7f84d8c4d400
  6707 ms     | 0x646c PK11_DeriveWithFlags()
  6707 ms     | 0x646c basekey:0x7f84c6882c00
  6707 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6707 ms     | 0x646c ret:0x7f84c6882d80
  6707 ms     | 0x646c PK11_Encrypt()
  6707 ms     | 0x646c symkey:0x7f84d8c4d300
  6707 ms     | 0x646c PK11_DeriveWithFlags()
  6707 ms     | 0x646c basekey:0x7f84c687a180
  6707 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6707 ms     | 0x646c ret:0x7f84c6882d80
  6707 ms     | 0x646c PK11_DeriveWithFlags()
  6707 ms     | 0x646c basekey:0x7f84c687a180
  6707 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6707 ms     | 0x646c ret:0x7f84d8c4d400
  6707 ms     | 0x646c PK11_DeriveWithFlags()
  6707 ms     | 0x646c basekey:0x7f84c6882e80
  6707 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6707 ms     | 0x646c ret:0x7f84d8c4d300
  6707 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6707 ms     | 0x646c privk:0x7f84d793d020::7f84d793d020  80 d8 7a d7                                      ..z.
  6707 ms     | 0x646c privk:0x7f84d793d020::7f84d793d020  e5 e5 e5 e5                                      ....
  6707 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6707 ms     | 0x646c privk:0x7f84d7927820::7f84d7927820  10 d5 7a d7                                      ..z.
  6707 ms     | 0x646c privk:0x7f84d7927820::7f84d7927820  e5 e5 e5 e5                                      ....
  6708 ms  0x646c PK11_Encrypt()
  6708 ms  0x646c symkey:0x7f84c687a680
  6708 ms  0x646c PK11_Encrypt()
  6708 ms  0x646c symkey:0x7f84c687a680
  6708 ms  0x646c PK11_Encrypt()
  6708 ms  0x646c symkey:0x7f84c6882b80
  6709 ms  0x646c PK11_Encrypt()
  6709 ms  0x646c symkey:0x7f84c6882d80
  6709 ms  0x646c PK11_Encrypt()
  6709 ms  0x646c symkey:0x7f84c669cf00
  6710 ms  0x646c SSL_ImportFD()
  6710 ms  0x646c ret:0x7f84c6682970
  6710 ms  0x646c SSL_AuthCertificateHook()
  6710 ms  0x646c fd:0x7f84c6682970
  6710 ms  0x646c ret:0x0
  6710 ms  0x646c PR_Connect()
  6710 ms  0x646c fd:0x7f84c6682970
  6710 ms  0x646c PK11_Encrypt()
  6710 ms  0x646c symkey:0x7f84c687a680
  6710 ms  0x646c PK11_Encrypt()
  6710 ms  0x646c symkey:0x7f84c687a680
  6711 ms  0x646c PK11_Encrypt()
  6711 ms  0x646c symkey:0x7f84c687a680
  6718 ms  0x646c PK11_Encrypt()
  6718 ms  0x646c symkey:0x7f84d8e61200
  6719 ms  0x646c PK11_Encrypt()
  6719 ms  0x646c symkey:0x7f84d8e61200
  6731 ms  0x646c PK11_Derive()
  6731 ms  0x646c basekey:0x7f84c6882b00
  6732 ms     | 0x646c PK11_DeriveWithTemplate()
  6732 ms  0x646c ret:0x7f84c6882c00
  6732 ms  0x646c PK11_PubDeriveWithKDF()
  6732 ms  0x646c seckey:0x7f84c6665020
  6732 ms     | 0x646c EC_ValidatePublicKey()
  6732 ms     | 0x646c ret:0x0
  6732 ms  0x646c ret:0x7f84c6882b00
  6732 ms  SECKEY_ECParamsToKeySize()
  6732 ms  0x646c ret:0xff
  6732 ms  0x646c PK11_DeriveWithFlags()
  6732 ms  0x646c basekey:0x7f84c6882c00
  6732 ms     | 0x646c PK11_DeriveWithTemplate()
  6732 ms  0x646c ret:0x7f84c6882e80
  6732 ms  0x646c PK11_Derive()
  6732 ms  0x646c basekey:0x7f84c6882b00
  6732 ms     | 0x646c PK11_DeriveWithTemplate()
  6732 ms  0x646c ret:0x7f84d8c4d400
  6732 ms  0x646c PK11_DeriveWithFlags()
  6732 ms  0x646c basekey:0x7f84d8c4d400
  6732 ms     | 0x646c PK11_DeriveWithTemplate()
  6732 ms  0x646c ret:0x7f84c6882c00
  6732 ms  0x646c PK11_DeriveWithFlags()
  6732 ms  0x646c basekey:0x7f84d8c4d400
  6732 ms     | 0x646c PK11_DeriveWithTemplate()
  6732 ms  0x646c ret:0x7f84c6882b00
  6732 ms  0x646c PK11_DeriveWithFlags()
  6732 ms  0x646c basekey:0x7f84d8c4d400
  6732 ms     | 0x646c PK11_DeriveWithTemplate()
  6732 ms  0x646c ret:0x7f84c6882e80
  6732 ms  0x646c PK11_Derive()
  6732 ms  0x646c basekey:0x7f84d8c4ea00
  6732 ms     | 0x646c PK11_DeriveWithTemplate()
  6732 ms  0x646c ret:0x7f84d8c4eb00
  6732 ms  0x646c PK11_DeriveWithFlags()
  6732 ms  0x646c basekey:0x7f84c6882b00
  6732 ms     | 0x646c PK11_DeriveWithTemplate()
  6732 ms  0x646c ret:0x7f84d8c4d400
  6732 ms  0x646c PK11_DeriveWithFlags()
  6732 ms  0x646c basekey:0x7f84c6882b00
  6732 ms     | 0x646c PK11_DeriveWithTemplate()
  6732 ms  0x646c ret:0x7f84c6882e80
  6733 ms  0x646c PK11_DeriveWithFlags()
  6733 ms  0x646c basekey:0x7f84c6882b00
  6733 ms     | 0x646c PK11_DeriveWithTemplate()
  6733 ms  0x646c ret:0x7f84c6882e80
  6734 ms  0x646c PK11_DeriveWithFlags()
  6734 ms  0x646c basekey:0x7f84c69f0880
  6734 ms     | 0x646c PK11_DeriveWithTemplate()
  6734 ms  0x646c ret:0x7f84c6882e80
  6734 ms  0x646c PK11_DeriveWithFlags()
  6734 ms  0x646c basekey:0x7f84c69f0880
  6734 ms     | 0x646c PK11_DeriveWithTemplate()
  6734 ms  0x646c ret:0x7f84c6882e80
  6734 ms  0x646c PR_Close()
  6734 ms  0x646c fd:0x7f84c66826d0
  6734 ms     | 0x646c PK11_Encrypt()
  6734 ms     | 0x646c symkey:0x7f84c669cf00
  6734 ms  0x646c PK11_Derive()
  6734 ms  0x646c basekey:0x7f84c6882d00
  6734 ms     | 0x646c PK11_DeriveWithTemplate()
  6734 ms  0x646c ret:0x7f84c6882e00
  6734 ms  0x646c PK11_PubDeriveWithKDF()
  6734 ms  0x646c seckey:0x7f84d8916820
  6734 ms     | 0x646c EC_ValidatePublicKey()
  6734 ms     | 0x646c ret:0x0
  6734 ms  0x646c ret:0x7f84c6882d00
  6735 ms  SECKEY_ECParamsToKeySize()
  6735 ms  0x646c ret:0xff
  6735 ms  0x646c PK11_DeriveWithFlags()
  6735 ms  0x646c basekey:0x7f84c6882e00
  6735 ms     | 0x646c PK11_DeriveWithTemplate()
  6735 ms  0x646c ret:0x7f84c68e0b00
  6735 ms  0x646c PK11_Derive()
  6735 ms  0x646c basekey:0x7f84c6882d00
  6735 ms     | 0x646c PK11_DeriveWithTemplate()
  6735 ms  0x646c ret:0x7f84c69f0880
  6735 ms  0x646c PK11_DeriveWithFlags()
  6735 ms  0x646c basekey:0x7f84c69f0880
  6735 ms     | 0x646c PK11_DeriveWithTemplate()
  6735 ms  0x646c ret:0x7f84c6882e00
  6735 ms  0x646c PK11_DeriveWithFlags()
  6735 ms  0x646c basekey:0x7f84c69f0880
  6735 ms     | 0x646c PK11_DeriveWithTemplate()
  6735 ms  0x646c ret:0x7f84c6882d00
  6735 ms  0x646c PK11_DeriveWithFlags()
  6735 ms  0x646c basekey:0x7f84c69f0880
  6735 ms     | 0x646c PK11_DeriveWithTemplate()
  6735 ms  0x646c ret:0x7f84c68e0b00
  6735 ms  0x646c PK11_Derive()
  6735 ms  0x646c basekey:0x7f84c69f0f00
  6735 ms     | 0x646c PK11_DeriveWithTemplate()
  6735 ms  0x646c ret:0x7f84c669cf00
  6735 ms  0x646c PK11_DeriveWithFlags()
  6735 ms  0x646c basekey:0x7f84c6882d00
  6735 ms     | 0x646c PK11_DeriveWithTemplate()
  6735 ms  0x646c ret:0x7f84c69f0880
  6735 ms  0x646c PK11_DeriveWithFlags()
  6735 ms  0x646c basekey:0x7f84c6882d00
  6735 ms     | 0x646c PK11_DeriveWithTemplate()
  6735 ms  0x646c ret:0x7f84c68e0b00
  6735 ms  0x646c PK11_DeriveWithFlags()
  6735 ms  0x646c basekey:0x7f84c6882d00
  6735 ms     | 0x646c PK11_DeriveWithTemplate()
  6735 ms  0x646c ret:0x7f84c68e0b00
  6735 ms  0x646c PK11_DeriveWithFlags()
  6735 ms  0x646c basekey:0x7f84c663d700
  6735 ms     | 0x646c PK11_DeriveWithTemplate()
  6735 ms  0x646c ret:0x7f84c68e0b00
  6735 ms  0x646c PK11_DeriveWithFlags()
  6735 ms  0x646c basekey:0x7f84c663d700
  6735 ms     | 0x646c PK11_DeriveWithTemplate()
  6735 ms  0x646c ret:0x7f84c68e0b00
  6735 ms  0x646c PK11_Encrypt()
  6735 ms  0x646c symkey:0x7f84c687a680
  6747 ms  0x646c PK11_DeriveWithFlags()
  6747 ms  0x646c basekey:0x7f84c669ca80
  6747 ms     | 0x646c PK11_DeriveWithTemplate()
  6747 ms  0x646c ret:0x7f84c68e0b00
  6747 ms  0x646c PK11_DeriveWithFlags()
  6747 ms  0x646c basekey:0x7f84c669ca80
  6747 ms     | 0x646c PK11_DeriveWithTemplate()
  6747 ms  0x646c ret:0x7f84c68e0b00
  6747 ms  0x646c PR_Close()
  6747 ms  0x646c fd:0x7f84c6682730
  6747 ms     | 0x646c PK11_Encrypt()
  6747 ms     | 0x646c symkey:0x7f84c6882b80
  6751 ms  0x646c PK11_DeriveWithFlags()
  6751 ms  0x646c basekey:0x7f84d8c4d300
  6751 ms     | 0x646c PK11_DeriveWithTemplate()
  6751 ms  0x646c ret:0x7f84c6882480
  6751 ms  0x646c PK11_DeriveWithFlags()
  6751 ms  0x646c basekey:0x7f84d8c4d300
  6751 ms     | 0x646c PK11_DeriveWithTemplate()
  6751 ms  0x646c ret:0x7f84c6882480
  6751 ms  0x646c PK11_Derive()
  6751 ms  0x646c basekey:0x7f84c6882480
  6751 ms     | 0x646c PK11_DeriveWithTemplate()
  6751 ms  0x646c ret:0x7f84c669c580
  6751 ms  0x646c PK11_PubDeriveWithKDF()
  6751 ms  0x646c seckey:0x7f84d792e820
  6751 ms     | 0x646c EC_ValidatePublicKey()
  6751 ms     | 0x646c ret:0x0
  6752 ms  0x646c ret:0x7f84c6882480
  6752 ms  SECKEY_ECParamsToKeySize()
  6752 ms  0x646c ret:0xff
  6752 ms  0x646c PK11_DeriveWithFlags()
  6752 ms  0x646c basekey:0x7f84c669c580
  6752 ms     | 0x646c PK11_DeriveWithTemplate()
  6752 ms  0x646c ret:0x7f84c669c400
  6752 ms  0x646c PK11_Derive()
  6752 ms  0x646c basekey:0x7f84c6882480
  6752 ms     | 0x646c PK11_DeriveWithTemplate()
  6752 ms  0x646c ret:0x7f84c669ca80
  6752 ms  0x646c PK11_DeriveWithFlags()
  6752 ms  0x646c basekey:0x7f84c669ca80
  6752 ms     | 0x646c PK11_DeriveWithTemplate()
  6752 ms  0x646c ret:0x7f84c669c580
  6752 ms  0x646c PK11_DeriveWithFlags()
  6752 ms  0x646c basekey:0x7f84c669ca80
  6752 ms     | 0x646c PK11_DeriveWithTemplate()
  6752 ms  0x646c ret:0x7f84c6882480
  6752 ms  0x646c PK11_DeriveWithFlags()
  6752 ms  0x646c basekey:0x7f84c669ca80
  6752 ms     | 0x646c PK11_DeriveWithTemplate()
  6752 ms  0x646c ret:0x7f84c669c400
  6752 ms  0x646c PK11_Derive()
  6752 ms  0x646c basekey:0x7f84c664e380
  6752 ms     | 0x646c PK11_DeriveWithTemplate()
  6752 ms  0x646c ret:0x7f84c6882b80
  6752 ms  0x646c PK11_DeriveWithFlags()
  6752 ms  0x646c basekey:0x7f84c6882480
  6752 ms     | 0x646c PK11_DeriveWithTemplate()
  6752 ms  0x646c ret:0x7f84c669ca80
  6752 ms  0x646c PK11_DeriveWithFlags()
  6752 ms  0x646c basekey:0x7f84c6882480
  6752 ms     | 0x646c PK11_DeriveWithTemplate()
  6752 ms  0x646c ret:0x7f84c669c400
  6752 ms  SECKEY_ECParamsToKeySize()
  6752 ms  0x646c ret:0x100
  6752 ms  SECKEY_ECParamsToBasePointOrderLen()
  6752 ms  0x646c ret:0x100
  6752 ms  SECKEY_ECParamsToBasePointOrderLen()
  6752 ms  0x646c ret:0x100
  6752 ms  0x646c EC_ValidatePublicKey()
  6754 ms  0x646c ret:0x0
  6759 ms  0x646c PK11_DeriveWithFlags()
  6759 ms  0x646c basekey:0x7f84c6882480
  6759 ms     | 0x646c PK11_DeriveWithTemplate()
  6759 ms  0x646c ret:0x7f84c669c400
  6759 ms  0x646c PR_Close()
  6759 ms  0x646c fd:0x7f84c6682130
  6759 ms     | 0x646c PK11_Encrypt()
  6759 ms     | 0x646c symkey:0x7f84c6882d80
           /* TID 0x6474 */
  6767 ms  0x6474 PR_Close()
  6767 ms  0x6474 fd:0x7f84c6682130
           /* TID 0x646c */
  6768 ms  0x646c SECKEY_CreateECPrivateKey()
  6768 ms  0x646c cx:0x7f84d79c0168
  6768 ms     | 0x646c EC_ValidatePublicKey()
  6768 ms     | 0x646c ret:0x0
  6768 ms  0x646c ret:0x7f84c666f020::7f84c666f020  b0 0f aa c6                                      ....
  6768 ms  0x646c SECKEY_CreateECPrivateKey()
  6768 ms  0x646c cx:0x7f84d79c0168
  6769 ms     | 0x646c EC_ValidatePublicKey()
  6770 ms     | 0x646c ret:0x0
  6770 ms  0x646c ret:0x7f84d7728020::7f84d7728020  b0 5a af c6                                      .Z..
  6771 ms  0x646c PK11_Encrypt()
  6771 ms  0x646c symkey:0x7f84c6881500
  6771 ms  0x646c SSL_ImportFD()
  6771 ms  0x646c ret:0x7f84c6682790
  6771 ms  0x646c SSL_AuthCertificateHook()
  6771 ms  0x646c fd:0x7f84c6682790
  6771 ms  0x646c ret:0x0
  6771 ms  0x646c PR_Connect()
  6771 ms  0x646c fd:0x7f84c6682790
           /* TID 0x6474 */
  6774 ms  0x6474 PR_Close()
  6774 ms  0x6474 fd:0x7f84c6682730
           /* TID 0x646c */
  6774 ms  0x646c PK11_Encrypt()
  6774 ms  0x646c symkey:0x7f84c687a680
           /* TID 0x6474 */
  6776 ms  0x6474 PR_Close()
  6776 ms  0x6474 fd:0x7f84c6682730
           /* TID 0x646c */
  6776 ms  0x646c PK11_Encrypt()
  6776 ms  0x646c symkey:0x7f84d8e61200
           /* TID 0x6474 */
  6777 ms  0x6474 PR_Close()
  6777 ms  0x6474 fd:0x7f84c6682730
  6778 ms  0x6474 PR_Close()
  6778 ms  0x6474 fd:0x7f84c6682730
  6778 ms  0x6474 PR_Close()
  6778 ms  0x6474 fd:0x7f84c6682730
           /* TID 0x646c */
  6808 ms  0x646c SECKEY_CreateECPrivateKey()
  6808 ms  0x646c cx:0x7f84d79bf948
  6809 ms     | 0x646c EC_ValidatePublicKey()
  6809 ms     | 0x646c ret:0x0
  6809 ms  0x646c ret:0x7f84c6a1f820::7f84c6a1f820  d0 5d af c6                                      .]..
  6809 ms  0x646c SECKEY_CreateECPrivateKey()
  6809 ms  0x646c cx:0x7f84d79bf948
  6810 ms     | 0x646c EC_ValidatePublicKey()
  6813 ms     | 0x646c ret:0x0
  6813 ms  0x646c ret:0x7f84d7937020::7f84d7937020  a0 06 6c c6                                      ..l.
           /* TID 0x6474 */
  6827 ms  0x6474 PR_Close()
  6827 ms  0x6474 fd:0x7f84c66823a0
           /* TID 0x646c */
  6828 ms  0x646c PK11_Derive()
  6828 ms  0x646c basekey:0x7f84c6882c80
  6828 ms     | 0x646c PK11_DeriveWithTemplate()
  6828 ms  0x646c ret:0x7f84c687be80
  6828 ms  0x646c PK11_PubDeriveWithKDF()
  6828 ms  0x646c seckey:0x7f84c666f020
  6828 ms     | 0x646c EC_ValidatePublicKey()
  6828 ms     | 0x646c ret:0x0
  6828 ms  0x646c ret:0x7f84c6882c80
  6828 ms  SECKEY_ECParamsToKeySize()
  6828 ms  0x646c ret:0xff
  6828 ms  0x646c PK11_DeriveWithFlags()
  6828 ms  0x646c basekey:0x7f84c687be80
  6828 ms     | 0x646c PK11_DeriveWithTemplate()
  6828 ms  0x646c ret:0x7f84c687a180
  6828 ms  0x646c PK11_Derive()
  6828 ms  0x646c basekey:0x7f84c6882c80
  6828 ms     | 0x646c PK11_DeriveWithTemplate()
  6828 ms  0x646c ret:0x7f84d8c4d300
  6828 ms  0x646c PK11_DeriveWithFlags()
  6828 ms  0x646c basekey:0x7f84d8c4d300
  6828 ms     | 0x646c PK11_DeriveWithTemplate()
  6828 ms  0x646c ret:0x7f84c687be80
  6828 ms  0x646c PK11_DeriveWithFlags()
  6828 ms  0x646c basekey:0x7f84d8c4d300
  6828 ms     | 0x646c PK11_DeriveWithTemplate()
  6828 ms  0x646c ret:0x7f84c6882c80
  6828 ms  0x646c PK11_DeriveWithFlags()
  6828 ms  0x646c basekey:0x7f84d8c4d300
  6828 ms     | 0x646c PK11_DeriveWithTemplate()
  6828 ms  0x646c ret:0x7f84c687a180
  6828 ms  0x646c PK11_Derive()
  6828 ms  0x646c basekey:0x7f84d8c4d380
  6828 ms     | 0x646c PK11_DeriveWithTemplate()
  6828 ms  0x646c ret:0x7f84c6882d80
  6828 ms  0x646c PK11_DeriveWithFlags()
  6828 ms  0x646c basekey:0x7f84c6882c80
  6828 ms     | 0x646c PK11_DeriveWithTemplate()
  6828 ms  0x646c ret:0x7f84d8c4d300
  6828 ms  0x646c PK11_DeriveWithFlags()
  6828 ms  0x646c basekey:0x7f84c6882c80
  6828 ms     | 0x646c PK11_DeriveWithTemplate()
  6828 ms  0x646c ret:0x7f84c687a180
  6829 ms  0x646c PK11_DeriveWithFlags()
  6829 ms  0x646c basekey:0x7f84c6882c80
  6829 ms     | 0x646c PK11_DeriveWithTemplate()
  6829 ms  0x646c ret:0x7f84c687a180
           /* TID 0x6474 */
  6836 ms  0x6474 PR_Close()
  6836 ms  0x6474 fd:0x7f84c66823a0
  6836 ms  0x6474 PR_Close()
  6836 ms  0x6474 fd:0x7f84c6682a60
           /* TID 0x6506 */
  6836 ms  0x6506 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6836 ms  0x6506 ret:0x0
           /* TID 0x6505 */
  6837 ms  0x6505 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6837 ms  0x6505 ret:0x0
           /* TID 0x646c */
  6838 ms  0x646c SSL_AuthCertificateComplete()
  6838 ms  0x646c fd:0x7f84c6682520
  6838 ms  0x646c err:0x0
  6838 ms     | 0x646c PK11_DeriveWithFlags()
  6838 ms     | 0x646c basekey:0x7f84c687a780
  6838 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6838 ms     | 0x646c ret:0x7f84c687a180
  6838 ms     | 0x646c PK11_DeriveWithFlags()
  6838 ms     | 0x646c basekey:0x7f84c687a780
  6838 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6838 ms     | 0x646c ret:0x7f84d8c4d380
  6839 ms     | 0x646c PK11_DeriveWithFlags()
  6839 ms     | 0x646c basekey:0x7f84c687a780
  6839 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6839 ms     | 0x646c ret:0x7f84c669c400
  6839 ms     | 0x646c PK11_DeriveWithFlags()
  6839 ms     | 0x646c basekey:0x7f84c669dd00
  6839 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6839 ms     | 0x646c ret:0x7f84c664e380
  6839 ms     | 0x646c PK11_DeriveWithFlags()
  6839 ms     | 0x646c basekey:0x7f84c669dd00
  6839 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6839 ms     | 0x646c ret:0x7f84c68e0b00
  6839 ms     | 0x646c PK11_DeriveWithFlags()
  6839 ms     | 0x646c basekey:0x7f84d8c4d380
  6839 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6839 ms     | 0x646c ret:0x7f84c68e0b00
  6839 ms     | 0x646c PK11_DeriveWithFlags()
  6839 ms     | 0x646c basekey:0x7f84d8c4d380
  6839 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6839 ms     | 0x646c ret:0x7f84c69f0f00
  6839 ms     | 0x646c PK11_DeriveWithFlags()
  6839 ms     | 0x646c basekey:0x7f84c669dd00
  6839 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6839 ms     | 0x646c ret:0x7f84c687a500
  6839 ms     | 0x646c PK11_Encrypt()
  6839 ms     | 0x646c symkey:0x7f84c664e380
           /* TID 0x6507 */
  6839 ms  0x6507 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6840 ms  0x6507 ret:0x0
           /* TID 0x6474 */
  6840 ms  0x6474 PR_Close()
  6840 ms  0x6474 fd:0x7f84c6878ac0
           /* TID 0x646c */
  6840 ms     | 0x646c PK11_DeriveWithFlags()
  6840 ms     | 0x646c basekey:0x7f84c687a180
  6840 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6840 ms     | 0x646c ret:0x7f84c687a500
  6840 ms     | 0x646c PK11_DeriveWithFlags()
  6840 ms     | 0x646c basekey:0x7f84c687a180
  6840 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6840 ms     | 0x646c ret:0x7f84c69f0f00
  6840 ms     | 0x646c PK11_DeriveWithFlags()
  6840 ms     | 0x646c basekey:0x7f84c687a780
  6840 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6840 ms     | 0x646c ret:0x7f84c664e380
  6840 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6840 ms     | 0x646c privk:0x7f84c665c820::7f84c665c820  b0 0f 6c c6                                      ..l.
  6840 ms     | 0x646c privk:0x7f84c665c820::7f84c665c820  e5 e5 e5 e5                                      ....
  6840 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6840 ms     | 0x646c privk:0x7f84c665a820::7f84c665a820  d0 0d 6c c6                                      ..l.
  6840 ms     | 0x646c privk:0x7f84c665a820::7f84c665a820  e5 e5 e5 e5                                      ....
  6840 ms  0x646c SSL_AuthCertificateComplete()
  6840 ms  0x646c fd:0x7f84c66825b0
  6840 ms  0x646c err:0x0
  6841 ms     | 0x646c PK11_DeriveWithFlags()
  6841 ms     | 0x646c basekey:0x7f84c669dd80
  6841 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6841 ms     | 0x646c ret:0x7f84c669dc00
  6841 ms     | 0x646c PK11_DeriveWithFlags()
  6841 ms     | 0x646c basekey:0x7f84c669dd80
  6841 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6841 ms     | 0x646c ret:0x7f84c669dd00
  6841 ms     | 0x646c PK11_DeriveWithFlags()
  6841 ms     | 0x646c basekey:0x7f84c669dd80
  6841 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6841 ms     | 0x646c ret:0x7f84c687a780
  6841 ms     | 0x646c PK11_DeriveWithFlags()
  6841 ms     | 0x646c basekey:0x7f84c669d980
  6841 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6841 ms     | 0x646c ret:0x7f84c69f0f00
  6841 ms     | 0x646c PK11_DeriveWithFlags()
  6841 ms     | 0x646c basekey:0x7f84c669d980
  6841 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6841 ms     | 0x646c ret:0x7f84c6882e80
  6841 ms     | 0x646c PK11_DeriveWithFlags()
  6841 ms     | 0x646c basekey:0x7f84c669dd00
  6841 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6841 ms     | 0x646c ret:0x7f84c6882e80
  6841 ms     | 0x646c PK11_DeriveWithFlags()
  6841 ms     | 0x646c basekey:0x7f84c669dd00
  6841 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6841 ms     | 0x646c ret:0x7f84d8c4ea00
  6841 ms     | 0x646c PK11_DeriveWithFlags()
  6841 ms     | 0x646c basekey:0x7f84c669d980
  6841 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6841 ms     | 0x646c ret:0x7f84c669dc80
  6841 ms     | 0x646c PK11_Encrypt()
  6841 ms     | 0x646c symkey:0x7f84c69f0f00
  6841 ms     | 0x646c PK11_DeriveWithFlags()
  6841 ms     | 0x646c basekey:0x7f84c669dc00
  6841 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6841 ms     | 0x646c ret:0x7f84c669dc80
  6841 ms     | 0x646c PK11_DeriveWithFlags()
  6841 ms     | 0x646c basekey:0x7f84c669dc00
  6841 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6841 ms     | 0x646c ret:0x7f84d8c4ea00
  6841 ms     | 0x646c PK11_DeriveWithFlags()
  6841 ms     | 0x646c basekey:0x7f84c669dd80
  6841 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6841 ms     | 0x646c ret:0x7f84c69f0f00
  6841 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6841 ms     | 0x646c privk:0x7f84c6657820::7f84c6657820  90 0c 6c c6                                      ..l.
  6841 ms     | 0x646c privk:0x7f84c6657820::7f84c6657820  e5 e5 e5 e5                                      ....
  6841 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6841 ms     | 0x646c privk:0x7f84c6655820::7f84c6655820  b0 0a 6c c6                                      ..l.
  6841 ms     | 0x646c privk:0x7f84c6655820::7f84c6655820  e5 e5 e5 e5                                      ....
  6841 ms  0x646c SSL_AuthCertificateComplete()
  6841 ms  0x646c fd:0x7f84d7951490
  6841 ms  0x646c err:0x0
  6841 ms     | 0x646c PK11_DeriveWithFlags()
  6841 ms     | 0x646c basekey:0x7f84c669cf00
  6842 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6842 ms     | 0x646c ret:0x7f84c663db80
  6842 ms     | 0x646c PK11_DeriveWithFlags()
  6842 ms     | 0x646c basekey:0x7f84c669cf00
  6842 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6842 ms     | 0x646c ret:0x7f84c669d980
  6842 ms     | 0x646c PK11_DeriveWithFlags()
  6842 ms     | 0x646c basekey:0x7f84c669cf00
  6842 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6842 ms     | 0x646c ret:0x7f84c669dd80
  6842 ms     | 0x646c PK11_DeriveWithFlags()
  6842 ms     | 0x646c basekey:0x7f84c6882e00
  6842 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6842 ms     | 0x646c ret:0x7f84d8c4ea00
  6842 ms     | 0x646c PK11_DeriveWithFlags()
  6842 ms     | 0x646c basekey:0x7f84c6882e00
  6842 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6842 ms     | 0x646c ret:0x7f84c669c280
  6842 ms     | 0x646c PK11_DeriveWithFlags()
  6842 ms     | 0x646c basekey:0x7f84c669d980
  6842 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6842 ms     | 0x646c ret:0x7f84c669c280
  6842 ms     | 0x646c PK11_DeriveWithFlags()
  6842 ms     | 0x646c basekey:0x7f84c669d980
  6842 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6842 ms     | 0x646c ret:0x7f84d79fea80
  6842 ms     | 0x646c PK11_DeriveWithFlags()
  6842 ms     | 0x646c basekey:0x7f84c6882e00
  6842 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6842 ms     | 0x646c ret:0x7f84c69f0880
  6842 ms     | 0x646c PK11_Encrypt()
  6842 ms     | 0x646c symkey:0x7f84d8c4ea00
  6842 ms     | 0x646c PK11_DeriveWithFlags()
  6842 ms     | 0x646c basekey:0x7f84c663db80
  6842 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6842 ms     | 0x646c ret:0x7f84c69f0880
  6842 ms     | 0x646c PK11_DeriveWithFlags()
  6842 ms     | 0x646c basekey:0x7f84c663db80
  6842 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6842 ms     | 0x646c ret:0x7f84d79fea80
  6842 ms     | 0x646c PK11_DeriveWithFlags()
  6842 ms     | 0x646c basekey:0x7f84c669cf00
  6842 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6842 ms     | 0x646c ret:0x7f84d8c4ea00
  6842 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6842 ms     | 0x646c privk:0x7f84d97e6820::7f84d97e6820  90 67 ff d7                                      .g..
  6842 ms     | 0x646c privk:0x7f84d97e6820::7f84d97e6820  e5 e5 e5 e5                                      ....
  6843 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6843 ms     | 0x646c privk:0x7f84d8916820::7f84d8916820  60 c5 9c d7                                      `...
  6843 ms     | 0x646c privk:0x7f84d8916820::7f84d8916820  e5 e5 e5 e5                                      ....
  6843 ms  0x646c SSL_AuthCertificateComplete()
  6843 ms  0x646c fd:0x7f84c68ddc10
  6843 ms  0x646c err:0x0
  6843 ms     | 0x646c PK11_DeriveWithFlags()
  6843 ms     | 0x646c basekey:0x7f84c6882b80
  6843 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6843 ms     | 0x646c ret:0x7f84c6882d00
  6843 ms     | 0x646c PK11_DeriveWithFlags()
  6843 ms     | 0x646c basekey:0x7f84c6882b80
  6843 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6843 ms     | 0x646c ret:0x7f84c6882e00
  6843 ms     | 0x646c PK11_DeriveWithFlags()
  6843 ms     | 0x646c basekey:0x7f84c6882b80
  6843 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6843 ms     | 0x646c ret:0x7f84c669cf00
  6843 ms     | 0x646c PK11_DeriveWithFlags()
  6843 ms     | 0x646c basekey:0x7f84c669c580
  6843 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6843 ms     | 0x646c ret:0x7f84d79fea80
  6843 ms     | 0x646c PK11_DeriveWithFlags()
  6843 ms     | 0x646c basekey:0x7f84c669c580
  6843 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6843 ms     | 0x646c ret:0x7f84d79feb00
  6843 ms     | 0x646c PK11_DeriveWithFlags()
  6843 ms     | 0x646c basekey:0x7f84c6882e00
  6843 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6843 ms     | 0x646c ret:0x7f84d79feb00
  6843 ms     | 0x646c PK11_DeriveWithFlags()
  6843 ms     | 0x646c basekey:0x7f84c6882e00
  6843 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6843 ms     | 0x646c ret:0x7f84d79feb80
  6843 ms     | 0x646c PK11_DeriveWithFlags()
  6843 ms     | 0x646c basekey:0x7f84c669c580
  6843 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6843 ms     | 0x646c ret:0x7f84c669ca80
  6843 ms     | 0x646c PK11_Encrypt()
  6843 ms     | 0x646c symkey:0x7f84d79fea80
  6843 ms     | 0x646c PK11_DeriveWithFlags()
  6843 ms     | 0x646c basekey:0x7f84c6882d00
  6843 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6843 ms     | 0x646c ret:0x7f84c669ca80
  6843 ms     | 0x646c PK11_DeriveWithFlags()
  6843 ms     | 0x646c basekey:0x7f84c6882d00
  6843 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6843 ms     | 0x646c ret:0x7f84d79feb80
  6843 ms     | 0x646c PK11_DeriveWithFlags()
  6843 ms     | 0x646c basekey:0x7f84c6882b80
  6843 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6843 ms     | 0x646c ret:0x7f84d79fea80
  6843 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6843 ms     | 0x646c privk:0x7f84d890a020::7f84d890a020  40 e2 1b d8                                      @...
  6844 ms     | 0x646c privk:0x7f84d890a020::7f84d890a020  e5 e5 e5 e5                                      ....
  6844 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6844 ms     | 0x646c privk:0x7f84d792e820::7f84d792e820  40 6c ff d7                                      @l..
  6844 ms     | 0x646c privk:0x7f84d792e820::7f84d792e820  e5 e5 e5 e5                                      ....
  6844 ms  0x646c SSL_AuthCertificateComplete()
  6844 ms  0x646c fd:0x7f84c6682970
  6844 ms  0x646c err:0x0
  6844 ms     | 0x646c PK11_DeriveWithFlags()
  6844 ms     | 0x646c basekey:0x7f84c6882d80
  6844 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6844 ms     | 0x646c ret:0x7f84c6882480
  6844 ms     | 0x646c PK11_DeriveWithFlags()
  6844 ms     | 0x646c basekey:0x7f84c6882d80
  6844 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6844 ms     | 0x646c ret:0x7f84c669c580
  6844 ms     | 0x646c PK11_DeriveWithFlags()
  6844 ms     | 0x646c basekey:0x7f84c6882d80
  6844 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6844 ms     | 0x646c ret:0x7f84c6882b80
  6844 ms     | 0x646c PK11_DeriveWithFlags()
  6844 ms     | 0x646c basekey:0x7f84c687be80
  6844 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6844 ms     | 0x646c ret:0x7f84d79feb80
  6844 ms     | 0x646c PK11_DeriveWithFlags()
  6844 ms     | 0x646c basekey:0x7f84c687be80
  6844 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6844 ms     | 0x646c ret:0x7f84d79fec00
  6844 ms     | 0x646c PK11_DeriveWithFlags()
  6844 ms     | 0x646c basekey:0x7f84c669c580
  6844 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6844 ms     | 0x646c ret:0x7f84d79fec00
  6844 ms     | 0x646c PK11_DeriveWithFlags()
  6844 ms     | 0x646c basekey:0x7f84c669c580
  6844 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6844 ms     | 0x646c ret:0x7f84d79fec80
  6844 ms     | 0x646c PK11_DeriveWithFlags()
  6844 ms     | 0x646c basekey:0x7f84c687be80
  6844 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6844 ms     | 0x646c ret:0x7f84d8c4d300
  6844 ms     | 0x646c PK11_Encrypt()
  6844 ms     | 0x646c symkey:0x7f84d79feb80
  6844 ms     | 0x646c PK11_DeriveWithFlags()
  6844 ms     | 0x646c basekey:0x7f84c6882480
  6844 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6844 ms     | 0x646c ret:0x7f84d8c4d300
  6844 ms     | 0x646c PK11_DeriveWithFlags()
  6844 ms     | 0x646c basekey:0x7f84c6882480
  6844 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6844 ms     | 0x646c ret:0x7f84d79fec80
  6844 ms     | 0x646c PK11_DeriveWithFlags()
  6844 ms     | 0x646c basekey:0x7f84c6882d80
  6844 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6844 ms     | 0x646c ret:0x7f84d79feb80
  6844 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6844 ms     | 0x646c privk:0x7f84d7728020::7f84d7728020  b0 5a af c6                                      .Z..
  6845 ms     | 0x646c privk:0x7f84d7728020::7f84d7728020  e5 e5 e5 e5                                      ....
  6845 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6845 ms     | 0x646c privk:0x7f84c666f020::7f84c666f020  b0 0f aa c6                                      ....
  6845 ms     | 0x646c privk:0x7f84c666f020::7f84c666f020  e5 e5 e5 e5                                      ....
  6850 ms  0x646c PK11_Encrypt()
  6850 ms  0x646c symkey:0x7f84c669dc80
  6851 ms  0x646c PK11_Encrypt()
  6851 ms  0x646c symkey:0x7f84c669dc80
  6851 ms  0x646c PK11_Encrypt()
  6851 ms  0x646c symkey:0x7f84c687a500
  6851 ms  0x646c PK11_Encrypt()
  6851 ms  0x646c symkey:0x7f84d8c4d300
  6852 ms  0x646c PK11_Encrypt()
  6852 ms  0x646c symkey:0x7f84c669ca80
  6852 ms  0x646c PK11_Encrypt()
  6852 ms  0x646c symkey:0x7f84c69f0880
  6852 ms  0x646c SSL_AuthCertificateComplete()
  6852 ms  0x646c fd:0x7f84c6682370
  6852 ms  0x646c err:0x0
  6852 ms     | 0x646c PK11_DeriveWithFlags()
  6852 ms     | 0x646c basekey:0x7f84c669c100
  6852 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6852 ms     | 0x646c ret:0x7f84c6882c80
  6852 ms     | 0x646c PK11_DeriveWithFlags()
  6852 ms     | 0x646c basekey:0x7f84c669c100
  6852 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6852 ms     | 0x646c ret:0x7f84c687be80
  6852 ms     | 0x646c PK11_DeriveWithFlags()
  6852 ms     | 0x646c basekey:0x7f84c669c100
  6852 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6852 ms     | 0x646c ret:0x7f84c6882d80
  6852 ms     | 0x646c PK11_DeriveWithFlags()
  6852 ms     | 0x646c basekey:0x7f84c663e280
  6852 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6852 ms     | 0x646c ret:0x7f84d79fec80
  6852 ms     | 0x646c PK11_DeriveWithFlags()
  6852 ms     | 0x646c basekey:0x7f84c663e280
  6852 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6852 ms     | 0x646c ret:0x7f84d79fee80
  6852 ms     | 0x646c PK11_DeriveWithFlags()
  6852 ms     | 0x646c basekey:0x7f84c687be80
  6852 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6852 ms     | 0x646c ret:0x7f84d79fee80
  6852 ms     | 0x646c PK11_DeriveWithFlags()
  6852 ms     | 0x646c basekey:0x7f84c687be80
  6852 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6852 ms     | 0x646c ret:0x7f84d79fef00
  6852 ms     | 0x646c PK11_DeriveWithFlags()
  6852 ms     | 0x646c basekey:0x7f84c663e280
  6852 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6852 ms     | 0x646c ret:0x7f84c663ee80
  6852 ms     | 0x646c PK11_Encrypt()
  6852 ms     | 0x646c symkey:0x7f84d79fec80
  6852 ms     | 0x646c PK11_DeriveWithFlags()
  6852 ms     | 0x646c basekey:0x7f84c6882c80
  6852 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6853 ms     | 0x646c ret:0x7f84c663ee80
  6853 ms     | 0x646c PK11_DeriveWithFlags()
  6853 ms     | 0x646c basekey:0x7f84c6882c80
  6853 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6853 ms     | 0x646c ret:0x7f84d79fef00
  6853 ms     | 0x646c PK11_DeriveWithFlags()
  6853 ms     | 0x646c basekey:0x7f84c669c100
  6853 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6853 ms     | 0x646c ret:0x7f84d79fec80
  6853 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6853 ms     | 0x646c privk:0x7f84c666a020::7f84c666a020  90 27 8d c6                                      .'..
  6853 ms     | 0x646c privk:0x7f84c666a020::7f84c666a020  e5 e5 e5 e5                                      ....
  6853 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6853 ms     | 0x646c privk:0x7f84c6668020::7f84c6668020  c0 89 88 c6                                      ....
  6853 ms     | 0x646c privk:0x7f84c6668020::7f84c6668020  e5 e5 e5 e5                                      ....
  6853 ms  0x646c PK11_Encrypt()
  6853 ms  0x646c symkey:0x7f84c669dc80
  6854 ms  0x646c PK11_Encrypt()
  6854 ms  0x646c symkey:0x7f84c669dc80
  6854 ms  0x646c PK11_Encrypt()
  6854 ms  0x646c symkey:0x7f84c669dc80
  6854 ms  0x646c PK11_Encrypt()
  6854 ms  0x646c symkey:0x7f84c669dc80
  6858 ms  0x646c PK11_Encrypt()
  6858 ms  0x646c symkey:0x7f84c669dc80
  6858 ms  0x646c PK11_Encrypt()
  6858 ms  0x646c symkey:0x7f84c669dc80
  6859 ms  0x646c PK11_Encrypt()
  6859 ms  0x646c symkey:0x7f84c669dc80
  6859 ms  0x646c PK11_Encrypt()
  6859 ms  0x646c symkey:0x7f84c669dc80
  6859 ms  0x646c PK11_Encrypt()
  6859 ms  0x646c symkey:0x7f84c669dc80
           /* TID 0x6474 */
  6867 ms  0x6474 PR_Close()
  6867 ms  0x6474 fd:0x7f84c66702e0
           /* TID 0x6508 */
  6867 ms  0x6508 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6867 ms  0x6508 ret:0x0
           /* TID 0x646c */
  6868 ms  0x646c PK11_Encrypt()
  6868 ms  0x646c symkey:0x7f84c663ee80
           /* TID 0x64cf */
  6868 ms  0x64cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6868 ms  0x64cf ret:0x0
           /* TID 0x6474 */
  6868 ms  0x6474 PR_Close()
  6868 ms  0x6474 fd:0x7f84c6670790
           /* TID 0x646c */
  6868 ms  0x646c SSL_AuthCertificateComplete()
  6868 ms  0x646c fd:0x7f84c66822e0
  6868 ms  0x646c err:0x0
  6868 ms     | 0x646c PK11_DeriveWithFlags()
  6868 ms     | 0x646c basekey:0x7f84c669c600
  6868 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6868 ms     | 0x646c ret:0x7f84c68e0f00
  6869 ms     | 0x646c PK11_DeriveWithFlags()
  6869 ms     | 0x646c basekey:0x7f84c669c600
  6869 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6869 ms     | 0x646c ret:0x7f84c663e280
  6869 ms     | 0x646c PK11_DeriveWithFlags()
  6869 ms     | 0x646c basekey:0x7f84c669c600
  6869 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6869 ms     | 0x646c ret:0x7f84c669c100
  6869 ms     | 0x646c PK11_DeriveWithFlags()
  6869 ms     | 0x646c basekey:0x7f84c664ec80
  6869 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6869 ms     | 0x646c ret:0x7f84d79fef00
  6869 ms     | 0x646c PK11_DeriveWithFlags()
  6869 ms     | 0x646c basekey:0x7f84c664ec80
  6869 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6869 ms     | 0x646c ret:0x7f84d79fef80
  6869 ms     | 0x646c PK11_DeriveWithFlags()
  6869 ms     | 0x646c basekey:0x7f84c663e280
  6869 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6869 ms     | 0x646c ret:0x7f84d79fef80
  6869 ms     | 0x646c PK11_DeriveWithFlags()
  6869 ms     | 0x646c basekey:0x7f84c663e280
  6869 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6869 ms     | 0x646c ret:0x7f84d81f2580
  6869 ms     | 0x646c PK11_DeriveWithFlags()
  6869 ms     | 0x646c basekey:0x7f84c664ec80
  6869 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6869 ms     | 0x646c ret:0x7f84c669c500
  6869 ms     | 0x646c PK11_Encrypt()
  6869 ms     | 0x646c symkey:0x7f84d79fef00
  6869 ms     | 0x646c PK11_DeriveWithFlags()
  6869 ms     | 0x646c basekey:0x7f84c68e0f00
  6869 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6869 ms     | 0x646c ret:0x7f84c669c500
  6869 ms     | 0x646c PK11_DeriveWithFlags()
  6869 ms     | 0x646c basekey:0x7f84c68e0f00
  6869 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6869 ms     | 0x646c ret:0x7f84d81f2580
  6869 ms     | 0x646c PK11_DeriveWithFlags()
  6869 ms     | 0x646c basekey:0x7f84c669c600
  6869 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6869 ms     | 0x646c ret:0x7f84d79fef00
  6869 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6869 ms     | 0x646c privk:0x7f84c666e820::7f84c666e820  a0 06 aa c6                                      ....
  6869 ms     | 0x646c privk:0x7f84c666e820::7f84c666e820  e5 e5 e5 e5                                      ....
  6869 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6869 ms     | 0x646c privk:0x7f84c666c820::7f84c666c820  90 2c 8d c6                                      .,..
  6869 ms     | 0x646c privk:0x7f84c666c820::7f84c666c820  e5 e5 e5 e5                                      ....
  6870 ms  0x646c PK11_Encrypt()
  6870 ms  0x646c symkey:0x7f84c687a680
  6870 ms  0x646c SSL_AuthCertificateComplete()
  6870 ms  0x646c fd:0x7f84c68c1be0
  6870 ms  0x646c err:0x0
  6870 ms     | 0x646c PK11_DeriveWithFlags()
  6870 ms     | 0x646c basekey:0x7f84c6a9c300
  6870 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6870 ms     | 0x646c ret:0x7f84c663ec80
  6870 ms     | 0x646c PK11_DeriveWithFlags()
  6870 ms     | 0x646c basekey:0x7f84c6a9c300
  6870 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6870 ms     | 0x646c ret:0x7f84c664ec80
  6870 ms     | 0x646c PK11_DeriveWithFlags()
  6870 ms     | 0x646c basekey:0x7f84c6a9c300
  6870 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6870 ms     | 0x646c ret:0x7f84c669c600
  6870 ms     | 0x646c PK11_DeriveWithFlags()
  6870 ms     | 0x646c basekey:0x7f84c687a700
  6870 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6870 ms     | 0x646c ret:0x7f84d81f2580
  6870 ms     | 0x646c PK11_DeriveWithFlags()
  6870 ms     | 0x646c basekey:0x7f84c687a700
  6870 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6870 ms     | 0x646c ret:0x7f84d81f2600
  6870 ms     | 0x646c PK11_DeriveWithFlags()
  6870 ms     | 0x646c basekey:0x7f84c664ec80
  6870 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6870 ms     | 0x646c ret:0x7f84d81f2600
  6870 ms     | 0x646c PK11_DeriveWithFlags()
  6870 ms     | 0x646c basekey:0x7f84c664ec80
  6870 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6870 ms     | 0x646c ret:0x7f84d81f2980
  6870 ms     | 0x646c PK11_DeriveWithFlags()
  6870 ms     | 0x646c basekey:0x7f84c687a700
  6870 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6870 ms     | 0x646c ret:0x7f84c6a9c100
  6870 ms     | 0x646c PK11_Encrypt()
  6870 ms     | 0x646c symkey:0x7f84d81f2580
  6870 ms     | 0x646c PK11_DeriveWithFlags()
  6870 ms     | 0x646c basekey:0x7f84c663ec80
  6870 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6870 ms     | 0x646c ret:0x7f84c6a9c100
  6870 ms     | 0x646c PK11_DeriveWithFlags()
  6870 ms     | 0x646c basekey:0x7f84c663ec80
  6870 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6870 ms     | 0x646c ret:0x7f84d81f2980
  6870 ms     | 0x646c PK11_DeriveWithFlags()
  6870 ms     | 0x646c basekey:0x7f84c6a9c300
  6870 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6870 ms     | 0x646c ret:0x7f84d81f2580
  6870 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6870 ms     | 0x646c privk:0x7f84c660c820::7f84c660c820  60 0a aa c6                                      `...
  6871 ms     | 0x646c privk:0x7f84c660c820::7f84c660c820  e5 e5 e5 e5                                      ....
  6871 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6871 ms     | 0x646c privk:0x7f84dd735820::7f84dd735820  f0 7b 94 d7                                      .{..
  6871 ms     | 0x646c privk:0x7f84dd735820::7f84dd735820  e5 e5 e5 e5                                      ....
  6871 ms  0x646c PK11_Encrypt()
  6871 ms  0x646c symkey:0x7f84c669dc80
  6877 ms  0x646c PK11_Encrypt()
  6877 ms  0x646c symkey:0x7f84c669dc80
  6880 ms  0x646c PK11_Encrypt()
  6880 ms  0x646c symkey:0x7f84c669c500
  6880 ms  0x646c PK11_DeriveWithFlags()
  6880 ms  0x646c basekey:0x7f84c69f0f00
  6880 ms     | 0x646c PK11_DeriveWithTemplate()
  6880 ms  0x646c ret:0x7f84c669df80
  6880 ms  0x646c PK11_DeriveWithFlags()
  6880 ms  0x646c basekey:0x7f84c69f0f00
  6880 ms     | 0x646c PK11_DeriveWithTemplate()
  6880 ms  0x646c ret:0x7f84c669df80
  6881 ms  0x646c PK11_Encrypt()
  6881 ms  0x646c symkey:0x7f84c6a9c100
  6881 ms  0x646c PK11_Derive()
  6881 ms  0x646c basekey:0x7f84c669df80
  6881 ms     | 0x646c PK11_DeriveWithTemplate()
  6881 ms  0x646c ret:0x7f84c687a700
  6881 ms  0x646c PK11_PubDeriveWithKDF()
  6881 ms  0x646c seckey:0x7f84c6a1f820
  6881 ms     | 0x646c EC_ValidatePublicKey()
  6881 ms     | 0x646c ret:0x0
  6881 ms  0x646c ret:0x7f84c669df80
  6881 ms  SECKEY_ECParamsToKeySize()
  6881 ms  0x646c ret:0xff
  6881 ms  0x646c PK11_DeriveWithFlags()
  6881 ms  0x646c basekey:0x7f84c687a700
  6881 ms     | 0x646c PK11_DeriveWithTemplate()
  6881 ms  0x646c ret:0x7f84c6a9c300
  6881 ms  0x646c PK11_Derive()
  6881 ms  0x646c basekey:0x7f84c669df80
  6881 ms     | 0x646c PK11_DeriveWithTemplate()
  6881 ms  0x646c ret:0x7f84d81f2980
  6881 ms  0x646c PK11_DeriveWithFlags()
  6881 ms  0x646c basekey:0x7f84d81f2980
  6881 ms     | 0x646c PK11_DeriveWithTemplate()
  6881 ms  0x646c ret:0x7f84c687a700
  6881 ms  0x646c PK11_DeriveWithFlags()
  6881 ms  0x646c basekey:0x7f84d81f2980
  6881 ms     | 0x646c PK11_DeriveWithTemplate()
  6882 ms  0x646c ret:0x7f84c669df80
  6882 ms  0x646c PK11_DeriveWithFlags()
  6882 ms  0x646c basekey:0x7f84d81f2980
  6882 ms     | 0x646c PK11_DeriveWithTemplate()
  6882 ms  0x646c ret:0x7f84c6a9c300
  6882 ms  0x646c PK11_Derive()
  6882 ms  0x646c basekey:0x7f84d81f2a80
  6882 ms     | 0x646c PK11_DeriveWithTemplate()
  6882 ms  0x646c ret:0x7f84d81f2c00
  6882 ms  0x646c PK11_DeriveWithFlags()
  6882 ms  0x646c basekey:0x7f84c669df80
  6882 ms     | 0x646c PK11_DeriveWithTemplate()
  6882 ms  0x646c ret:0x7f84d81f2980
  6882 ms  0x646c PK11_DeriveWithFlags()
  6882 ms  0x646c basekey:0x7f84c669df80
  6882 ms     | 0x646c PK11_DeriveWithTemplate()
  6882 ms  0x646c ret:0x7f84c6a9c300
  6882 ms  0x646c PK11_DeriveWithFlags()
  6882 ms  0x646c basekey:0x7f84c669df80
  6882 ms     | 0x646c PK11_DeriveWithTemplate()
  6882 ms  0x646c ret:0x7f84c6a9c300
  6883 ms  0x646c PK11_Encrypt()
  6883 ms  0x646c symkey:0x7f84c687a680
  6883 ms  0x646c PK11_Encrypt()
  6883 ms  0x646c symkey:0x7f84c669dc80
  6883 ms  0x646c SSL_AuthCertificateComplete()
  6883 ms  0x646c fd:0x7f84c6682790
  6883 ms  0x646c err:0x0
  6883 ms     | 0x646c PK11_DeriveWithFlags()
  6883 ms     | 0x646c basekey:0x7f84d81f2c00
  6883 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6883 ms     | 0x646c ret:0x7f84c6a9c300
  6883 ms     | 0x646c PK11_DeriveWithFlags()
  6883 ms     | 0x646c basekey:0x7f84d81f2c00
  6883 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6883 ms     | 0x646c ret:0x7f84d81f2a80
  6883 ms     | 0x646c PK11_DeriveWithFlags()
  6883 ms     | 0x646c basekey:0x7f84d81f2c00
  6883 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6883 ms     | 0x646c ret:0x7f84d81f2d00
  6883 ms     | 0x646c PK11_DeriveWithFlags()
  6883 ms     | 0x646c basekey:0x7f84c687a700
  6883 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6883 ms     | 0x646c ret:0x7f84d81f2e80
  6883 ms     | 0x646c PK11_DeriveWithFlags()
  6883 ms     | 0x646c basekey:0x7f84c687a700
  6883 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6883 ms     | 0x646c ret:0x7f84d81f2f00
  6883 ms     | 0x646c PK11_DeriveWithFlags()
  6883 ms     | 0x646c basekey:0x7f84d81f2a80
  6883 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6883 ms     | 0x646c ret:0x7f84d81f2f00
  6883 ms     | 0x646c PK11_DeriveWithFlags()
  6883 ms     | 0x646c basekey:0x7f84d81f2a80
  6883 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6883 ms     | 0x646c ret:0x7f84d81f2f80
  6883 ms     | 0x646c PK11_DeriveWithFlags()
  6883 ms     | 0x646c basekey:0x7f84c687a700
  6883 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6883 ms     | 0x646c ret:0x7f84d81f2980
  6883 ms     | 0x646c PK11_Encrypt()
  6883 ms     | 0x646c symkey:0x7f84d81f2e80
  6884 ms     | 0x646c PK11_DeriveWithFlags()
  6884 ms     | 0x646c basekey:0x7f84c6a9c300
  6884 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6884 ms     | 0x646c ret:0x7f84d81f2980
  6884 ms     | 0x646c PK11_DeriveWithFlags()
  6884 ms     | 0x646c basekey:0x7f84c6a9c300
  6884 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6884 ms     | 0x646c ret:0x7f84d81f2f80
  6884 ms     | 0x646c PK11_DeriveWithFlags()
  6884 ms     | 0x646c basekey:0x7f84d81f2c00
  6884 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6884 ms     | 0x646c ret:0x7f84d81f2e80
  6884 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6884 ms     | 0x646c privk:0x7f84d7937020::7f84d7937020  a0 06 6c c6                                      ..l.
  6884 ms     | 0x646c privk:0x7f84d7937020::7f84d7937020  e5 e5 e5 e5                                      ....
  6884 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6884 ms     | 0x646c privk:0x7f84c6a1f820::7f84c6a1f820  d0 5d af c6                                      .]..
  6884 ms     | 0x646c privk:0x7f84c6a1f820::7f84c6a1f820  e5 e5 e5 e5                                      ....
  6884 ms  0x646c PK11_Encrypt()
  6884 ms  0x646c symkey:0x7f84c669dc80
  6884 ms  0x646c PK11_DeriveWithFlags()
  6884 ms  0x646c basekey:0x7f84c664e380
  6884 ms     | 0x646c PK11_DeriveWithTemplate()
  6884 ms  0x646c ret:0x7f84c669df80
  6884 ms  0x646c PK11_DeriveWithFlags()
  6884 ms  0x646c basekey:0x7f84c664e380
  6884 ms     | 0x646c PK11_DeriveWithTemplate()
  6884 ms  0x646c ret:0x7f84c669df80
  6884 ms  0x646c PK11_DeriveWithFlags()
  6884 ms  0x646c basekey:0x7f84d79feb80
  6884 ms     | 0x646c PK11_DeriveWithTemplate()
  6884 ms  0x646c ret:0x7f84c669df80
  6884 ms  0x646c PK11_DeriveWithFlags()
  6884 ms  0x646c basekey:0x7f84d79feb80
  6885 ms     | 0x646c PK11_DeriveWithTemplate()
  6885 ms  0x646c ret:0x7f84c669df80
  6885 ms  0x646c PK11_DeriveWithFlags()
  6885 ms  0x646c basekey:0x7f84d79fea80
  6885 ms     | 0x646c PK11_DeriveWithTemplate()
  6885 ms  0x646c ret:0x7f84c669df80
  6885 ms  0x646c PK11_DeriveWithFlags()
  6885 ms  0x646c basekey:0x7f84d79fea80
  6885 ms     | 0x646c PK11_DeriveWithTemplate()
  6885 ms  0x646c ret:0x7f84c669df80
  6885 ms  0x646c PK11_DeriveWithFlags()
  6885 ms  0x646c basekey:0x7f84d8c4ea00
  6885 ms     | 0x646c PK11_DeriveWithTemplate()
  6885 ms  0x646c ret:0x7f84c669df80
  6885 ms  0x646c PK11_DeriveWithFlags()
  6885 ms  0x646c basekey:0x7f84d8c4ea00
  6885 ms     | 0x646c PK11_DeriveWithTemplate()
  6885 ms  0x646c ret:0x7f84c669df80
  6885 ms  0x646c PK11_Encrypt()
  6885 ms  0x646c symkey:0x7f84d81f2980
  6885 ms  0x646c PR_Close()
  6885 ms  0x646c fd:0x7f84d7951490
  6885 ms     | 0x646c PK11_Encrypt()
  6885 ms     | 0x646c symkey:0x7f84c69f0880
  6885 ms  0x646c PR_Close()
  6885 ms  0x646c fd:0x7f84c68ddc10
  6885 ms     | 0x646c PK11_Encrypt()
  6885 ms     | 0x646c symkey:0x7f84c669ca80
  6885 ms  0x646c PR_Close()
  6885 ms  0x646c fd:0x7f84c6682970
  6885 ms     | 0x646c PK11_Encrypt()
  6885 ms     | 0x646c symkey:0x7f84d8c4d300
  6886 ms  0x646c PR_Close()
  6886 ms  0x646c fd:0x7f84c6682520
  6886 ms     | 0x646c PK11_Encrypt()
  6886 ms     | 0x646c symkey:0x7f84c687a500
  6886 ms  0x646c PK11_Encrypt()
  6886 ms  0x646c symkey:0x7f84c669dc80
  6889 ms  0x646c PK11_Encrypt()
  6889 ms  0x646c symkey:0x7f84c669dc80
  6890 ms  0x646c PK11_Encrypt()
  6890 ms  0x646c symkey:0x7f84c669dc80
  6890 ms  0x646c PK11_Encrypt()
  6890 ms  0x646c symkey:0x7f84c669dc80
  6890 ms  0x646c PK11_DeriveWithFlags()
  6890 ms  0x646c basekey:0x7f84d79fec80
  6890 ms     | 0x646c PK11_DeriveWithTemplate()
  6890 ms  0x646c ret:0x7f84c669c400
  6890 ms  0x646c PK11_DeriveWithFlags()
  6890 ms  0x646c basekey:0x7f84d79fec80
  6890 ms     | 0x646c PK11_DeriveWithTemplate()
  6890 ms  0x646c ret:0x7f84c669c400
  6890 ms  0x646c PR_Close()
  6890 ms  0x646c fd:0x7f84c6682370
  6890 ms     | 0x646c PK11_Encrypt()
  6890 ms     | 0x646c symkey:0x7f84c663ee80
  6907 ms  0x646c PK11_DeriveWithFlags()
  6907 ms  0x646c basekey:0x7f84d79fef00
  6907 ms     | 0x646c PK11_DeriveWithTemplate()
  6907 ms  0x646c ret:0x7f84c6882d80
  6907 ms  0x646c PK11_DeriveWithFlags()
  6907 ms  0x646c basekey:0x7f84d79fef00
  6907 ms     | 0x646c PK11_DeriveWithTemplate()
  6907 ms  0x646c ret:0x7f84c6882d80
  6907 ms  0x646c PR_Close()
  6907 ms  0x646c fd:0x7f84c66822e0
  6907 ms     | 0x646c PK11_Encrypt()
  6907 ms     | 0x646c symkey:0x7f84c669c500
  6907 ms  0x646c PK11_Encrypt()
  6907 ms  0x646c symkey:0x7f84c669dc80
           /* TID 0x6474 */
  6908 ms  0x6474 PR_Close()
  6908 ms  0x6474 fd:0x7f84c66702e0
           /* TID 0x646c */
  6908 ms  0x646c PK11_DeriveWithFlags()
  6908 ms  0x646c basekey:0x7f84d81f2580
  6908 ms     | 0x646c PK11_DeriveWithTemplate()
  6908 ms  0x646c ret:0x7f84c669c100
  6908 ms  0x646c PK11_DeriveWithFlags()
  6908 ms  0x646c basekey:0x7f84d81f2580
  6908 ms     | 0x646c PK11_DeriveWithTemplate()
  6908 ms  0x646c ret:0x7f84c669c100
  6908 ms  0x646c PR_Close()
  6908 ms  0x646c fd:0x7f84c68c1be0
  6908 ms     | 0x646c PK11_Encrypt()
  6908 ms     | 0x646c symkey:0x7f84c6a9c100
           /* TID 0x6474 */
  6914 ms  0x6474 PR_Close()
  6914 ms  0x6474 fd:0x7f84c66706d0
           /* TID 0x646c */
  6921 ms  0x646c PK11_DeriveWithFlags()
  6921 ms  0x646c basekey:0x7f84d81f2e80
  6921 ms     | 0x646c PK11_DeriveWithTemplate()
  6921 ms  0x646c ret:0x7f84c669c600
  6921 ms  0x646c PK11_DeriveWithFlags()
  6921 ms  0x646c basekey:0x7f84d81f2e80
  6921 ms     | 0x646c PK11_DeriveWithTemplate()
  6921 ms  0x646c ret:0x7f84c669c600
  6921 ms  0x646c PR_Close()
  6921 ms  0x646c fd:0x7f84c6682790
  6921 ms     | 0x646c PK11_Encrypt()
  6921 ms     | 0x646c symkey:0x7f84d81f2980
           /* TID 0x6474 */
  6925 ms  0x6474 PR_Close()
  6925 ms  0x6474 fd:0x7f84c6670520
           /* TID 0x646c */
  6925 ms  0x646c PK11_Encrypt()
  6925 ms  0x646c symkey:0x7f84c687a680
           /* TID 0x6474 */
  6926 ms  0x6474 PR_Close()
  6926 ms  0x6474 fd:0x7f84c6670520
  6938 ms  0x6474 PR_Close()
  6938 ms  0x6474 fd:0x7f84c6670520
  6945 ms  0x6474 PR_Close()
  6945 ms  0x6474 fd:0x7f84c6670520
  6955 ms  0x6474 PR_Close()
  6955 ms  0x6474 fd:0x7f84c6670520
  6961 ms  0x6474 PR_Close()
  6961 ms  0x6474 fd:0x7f84c6670220
  6965 ms  0x6474 PR_Close()
  6965 ms  0x6474 fd:0x7f84c6670220
  6969 ms  0x6474 PR_Close()
  6969 ms  0x6474 fd:0x7f84c66701c0
  6977 ms  0x6474 PR_Close()
  6977 ms  0x6474 fd:0x7f84c66701c0
  6980 ms  0x6474 PR_Close()
  6980 ms  0x6474 fd:0x7f84c66701c0
  6982 ms  0x6474 PR_Close()
  6982 ms  0x6474 fd:0x7f84c66701c0
  6986 ms  0x6474 PR_Close()
  6986 ms  0x6474 fd:0x7f84c66701c0
           /* TID 0x646c */
  6990 ms  0x646c PK11_Encrypt()
  6990 ms  0x646c symkey:0x7f84c669dc80
           /* TID 0x6474 */
  6991 ms  0x6474 PR_Close()
  6991 ms  0x6474 fd:0x7f84c66701c0
  6993 ms  0x6474 PR_Close()
  6993 ms  0x6474 fd:0x7f84c66701c0
  6996 ms  0x6474 PR_Close()
  6996 ms  0x6474 fd:0x7f84c66701c0
           /* TID 0x6506 */
  6996 ms  0x6506 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6996 ms  0x6506 ret:0x0
           /* TID 0x646c */
  6997 ms  0x646c SSL_AuthCertificateComplete()
  6997 ms  0x646c fd:0x7f84c68ddc40
  6997 ms  0x646c err:0x0
  6997 ms     | 0x646c PK11_DeriveWithFlags()
  6997 ms     | 0x646c basekey:0x7f84d8c4eb00
  6997 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6997 ms     | 0x646c ret:0x7f84d81f2d00
  6997 ms     | 0x646c PK11_DeriveWithFlags()
  6997 ms     | 0x646c basekey:0x7f84d8c4eb00
  6997 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6997 ms     | 0x646c ret:0x7f84d81f2a80
  6997 ms     | 0x646c PK11_DeriveWithFlags()
  6997 ms     | 0x646c basekey:0x7f84d8c4eb00
  6997 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6997 ms     | 0x646c ret:0x7f84c6a9c300
  6997 ms     | 0x646c PK11_DeriveWithFlags()
  6997 ms     | 0x646c basekey:0x7f84c6882c00
  6997 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6997 ms     | 0x646c ret:0x7f84d81f2e80
  6997 ms     | 0x646c PK11_DeriveWithFlags()
  6997 ms     | 0x646c basekey:0x7f84c6882c00
  6997 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6997 ms     | 0x646c ret:0x7f84d81f2f00
  6997 ms     | 0x646c PK11_DeriveWithFlags()
  6997 ms     | 0x646c basekey:0x7f84d81f2a80
  6997 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6997 ms     | 0x646c ret:0x7f84d81f2f00
  6997 ms     | 0x646c PK11_DeriveWithFlags()
  6997 ms     | 0x646c basekey:0x7f84d81f2a80
  6997 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6997 ms     | 0x646c ret:0x7f84d81f2980
  6997 ms     | 0x646c PK11_DeriveWithFlags()
  6997 ms     | 0x646c basekey:0x7f84c6882c00
  6997 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6997 ms     | 0x646c ret:0x7f84d8c4d400
  6997 ms     | 0x646c PK11_Encrypt()
  6997 ms     | 0x646c symkey:0x7f84d81f2e80
  6997 ms     | 0x646c PK11_DeriveWithFlags()
  6997 ms     | 0x646c basekey:0x7f84d81f2d00
  6997 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6997 ms     | 0x646c ret:0x7f84d8c4d400
  6997 ms     | 0x646c PK11_DeriveWithFlags()
  6997 ms     | 0x646c basekey:0x7f84d81f2d00
  6997 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6997 ms     | 0x646c ret:0x7f84d81f2980
  6997 ms     | 0x646c PK11_DeriveWithFlags()
  6997 ms     | 0x646c basekey:0x7f84d8c4eb00
  6997 ms     |    | 0x646c PK11_DeriveWithTemplate()
  6997 ms     | 0x646c ret:0x7f84d81f2e80
  6998 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6998 ms     | 0x646c privk:0x7f84d7935020::7f84d7935020  a0 86 88 c6                                      ....
  6998 ms     | 0x646c privk:0x7f84d7935020::7f84d7935020  e5 e5 e5 e5                                      ....
  6998 ms     | 0x646c SECKEY_DestroyPrivateKey()
  6998 ms     | 0x646c privk:0x7f84c6665020::7f84c6665020  70 79 94 d7                                      py..
  6998 ms     | 0x646c privk:0x7f84c6665020::7f84c6665020  e5 e5 e5 e5                                      ....
  6998 ms  0x646c PK11_Encrypt()
  6998 ms  0x646c symkey:0x7f84d8c4d400
  6998 ms  0x646c PK11_Encrypt()
  6998 ms  0x646c symkey:0x7f84d8c4d400
           /* TID 0x6474 */
  6999 ms  0x6474 PR_Close()
  6999 ms  0x6474 fd:0x7f84c6670220
  7002 ms  0x6474 PR_Close()
  7002 ms  0x6474 fd:0x7f84c6670220
  7006 ms  0x6474 PR_Close()
  7006 ms  0x6474 fd:0x7f84c6670070
           /* TID 0x646c */
  7035 ms  0x646c PK11_DeriveWithFlags()
  7035 ms  0x646c basekey:0x7f84d81f2e80
  7035 ms     | 0x646c PK11_DeriveWithTemplate()
  7035 ms  0x646c ret:0x7f84c6882b00
  7035 ms  0x646c PK11_DeriveWithFlags()
  7035 ms  0x646c basekey:0x7f84d81f2e80
  7035 ms     | 0x646c PK11_DeriveWithTemplate()
  7035 ms  0x646c ret:0x7f84c6882b00
  7035 ms  0x646c PK11_Encrypt()
  7035 ms  0x646c symkey:0x7f84d8c4d400
  7036 ms  0x646c SSL_ImportFD()
  7036 ms  0x646c ret:0x7f84c6670520
  7036 ms  0x646c SSL_AuthCertificateHook()
  7036 ms  0x646c fd:0x7f84c6670520
  7036 ms  0x646c ret:0x0
  7036 ms  0x646c PR_Connect()
  7036 ms  0x646c fd:0x7f84c6670520
  7073 ms  0x646c SECKEY_CreateECPrivateKey()
  7073 ms  0x646c cx:0x7f84d79c04a8
  7074 ms     | 0x646c EC_ValidatePublicKey()
  7074 ms     | 0x646c ret:0x0
  7074 ms  0x646c ret:0x7f84c6653020::7f84c6653020  b0 b5 67 c6                                      ..g.
  7074 ms  0x646c SECKEY_CreateECPrivateKey()
  7074 ms  0x646c cx:0x7f84d79c04a8
  7074 ms     | 0x646c EC_ValidatePublicKey()
  7076 ms     | 0x646c ret:0x0
  7076 ms  0x646c ret:0x7f84c6655820::7f84c6655820  e0 b7 67 c6                                      ..g.
  7129 ms  0x646c PK11_Derive()
  7129 ms  0x646c basekey:0x7f84c6882b00
  7130 ms     | 0x646c PK11_DeriveWithTemplate()
  7130 ms  0x646c ret:0x7f84c6882c00
  7130 ms  0x646c PK11_PubDeriveWithKDF()
  7130 ms  0x646c seckey:0x7f84c6653020
  7130 ms     | 0x646c EC_ValidatePublicKey()
  7130 ms     | 0x646c ret:0x0
  7130 ms  0x646c ret:0x7f84c6882b00
  7130 ms  SECKEY_ECParamsToKeySize()
  7130 ms  0x646c ret:0xff
  7130 ms  0x646c PK11_DeriveWithFlags()
  7130 ms  0x646c basekey:0x7f84c6882c00
  7130 ms     | 0x646c PK11_DeriveWithTemplate()
  7130 ms  0x646c ret:0x7f84d8c4eb00
  7130 ms  0x646c PK11_Derive()
  7130 ms  0x646c basekey:0x7f84c6882b00
  7130 ms     | 0x646c PK11_DeriveWithTemplate()
  7130 ms  0x646c ret:0x7f84d81f2980
  7130 ms  0x646c PK11_DeriveWithFlags()
  7130 ms  0x646c basekey:0x7f84d81f2980
  7130 ms     | 0x646c PK11_DeriveWithTemplate()
  7130 ms  0x646c ret:0x7f84c6882c00
  7130 ms  0x646c PK11_DeriveWithFlags()
  7130 ms  0x646c basekey:0x7f84d81f2980
  7130 ms     | 0x646c PK11_DeriveWithTemplate()
  7130 ms  0x646c ret:0x7f84c6882b00
  7130 ms  0x646c PK11_DeriveWithFlags()
  7130 ms  0x646c basekey:0x7f84d81f2980
  7130 ms     | 0x646c PK11_DeriveWithTemplate()
  7130 ms  0x646c ret:0x7f84d8c4eb00
  7130 ms  0x646c PK11_Derive()
  7130 ms  0x646c basekey:0x7f84c669c600
  7130 ms     | 0x646c PK11_DeriveWithTemplate()
  7130 ms  0x646c ret:0x7f84c664ec80
  7130 ms  0x646c PK11_DeriveWithFlags()
  7130 ms  0x646c basekey:0x7f84c6882b00
  7130 ms     | 0x646c PK11_DeriveWithTemplate()
  7130 ms  0x646c ret:0x7f84d81f2980
  7130 ms  0x646c PK11_DeriveWithFlags()
  7130 ms  0x646c basekey:0x7f84c6882b00
  7130 ms     | 0x646c PK11_DeriveWithTemplate()
  7130 ms  0x646c ret:0x7f84d8c4eb00
  7132 ms  SECKEY_ECParamsToKeySize()
  7132 ms  0x646c ret:0x100
  7132 ms  SECKEY_ECParamsToBasePointOrderLen()
  7132 ms  0x646c ret:0x100
  7132 ms  SECKEY_ECParamsToBasePointOrderLen()
  7132 ms  0x646c ret:0x100
  7132 ms  0x646c EC_ValidatePublicKey()
  7133 ms  0x646c ret:0x0
  7135 ms  0x646c PK11_DeriveWithFlags()
  7135 ms  0x646c basekey:0x7f84c6882b00
  7135 ms     | 0x646c PK11_DeriveWithTemplate()
  7135 ms  0x646c ret:0x7f84d8c4eb00
           /* TID 0x6474 */
  7216 ms  0x6474 PR_Close()
  7216 ms  0x6474 fd:0x7f84c66822b0
  7219 ms  0x6474 PR_Close()
  7219 ms  0x6474 fd:0x7f84c66822e0
  7223 ms  0x6474 PR_Close()
  7223 ms  0x6474 fd:0x7f84c6682370
  7226 ms  0x6474 PR_Close()
  7226 ms  0x6474 fd:0x7f84c6682370
  7250 ms  0x6474 PR_Close()
  7250 ms  0x6474 fd:0x7f84c6682370
  7253 ms  0x6474 PR_Close()
  7253 ms  0x6474 fd:0x7f84c6682370
  7255 ms  0x6474 PR_Close()
  7255 ms  0x6474 fd:0x7f84c6682370
  7256 ms  0x6474 PR_Close()
  7256 ms  0x6474 fd:0x7f84c6682370
           /* TID 0x646c */
  7284 ms  0x646c PK11_Encrypt()
  7284 ms  0x646c symkey:0x7f84d8e60c80
  7285 ms  0x646c PK11_Encrypt()
  7285 ms  0x646c symkey:0x7f84d8e60c80
           /* TID 0x6474 */
  7285 ms  0x6474 PR_Close()
  7285 ms  0x6474 fd:0x7f84c6682700
  7290 ms  0x6474 PR_Close()
  7290 ms  0x6474 fd:0x7f84c6682220
           /* TID 0x6507 */
  7290 ms  0x6507 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7290 ms  0x6507 ret:0x0
           /* TID 0x646c */
  7290 ms  0x646c SSL_AuthCertificateComplete()
  7290 ms  0x646c fd:0x7f84c6670520
  7290 ms  0x646c err:0x0
  7290 ms     | 0x646c PK11_DeriveWithFlags()
  7290 ms     | 0x646c basekey:0x7f84c664ec80
  7290 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7290 ms     | 0x646c ret:0x7f84d8c4eb00
  7290 ms     | 0x646c PK11_DeriveWithFlags()
  7290 ms     | 0x646c basekey:0x7f84c664ec80
  7290 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7290 ms     | 0x646c ret:0x7f84c669c600
  7290 ms     | 0x646c PK11_DeriveWithFlags()
  7290 ms     | 0x646c basekey:0x7f84c664ec80
  7290 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7290 ms     | 0x646c ret:0x7f84c663ec80
  7290 ms     | 0x646c PK11_DeriveWithFlags()
  7290 ms     | 0x646c basekey:0x7f84c6882c00
  7290 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7290 ms     | 0x646c ret:0x7f84d81f2580
  7290 ms     | 0x646c PK11_DeriveWithFlags()
  7290 ms     | 0x646c basekey:0x7f84c6882c00
  7290 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7290 ms     | 0x646c ret:0x7f84d81f2600
  7291 ms     | 0x646c PK11_DeriveWithFlags()
  7291 ms     | 0x646c basekey:0x7f84c669c600
  7291 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7291 ms     | 0x646c ret:0x7f84d81f2600
  7291 ms     | 0x646c PK11_DeriveWithFlags()
  7291 ms     | 0x646c basekey:0x7f84c669c600
  7291 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7291 ms     | 0x646c ret:0x7f84c6a9c100
  7291 ms     | 0x646c PK11_DeriveWithFlags()
  7291 ms     | 0x646c basekey:0x7f84c6882c00
  7291 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7291 ms     | 0x646c ret:0x7f84d81f2980
  7291 ms     | 0x646c PK11_Encrypt()
  7291 ms     | 0x646c symkey:0x7f84d81f2580
  7291 ms     | 0x646c PK11_DeriveWithFlags()
  7291 ms     | 0x646c basekey:0x7f84d8c4eb00
  7291 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7291 ms     | 0x646c ret:0x7f84d81f2980
  7291 ms     | 0x646c PK11_DeriveWithFlags()
  7291 ms     | 0x646c basekey:0x7f84d8c4eb00
  7291 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7291 ms     | 0x646c ret:0x7f84c6a9c100
  7291 ms     | 0x646c PK11_DeriveWithFlags()
  7291 ms     | 0x646c basekey:0x7f84c664ec80
  7291 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7291 ms     | 0x646c ret:0x7f84d81f2580
  7291 ms     | 0x646c SECKEY_DestroyPrivateKey()
  7291 ms     | 0x646c privk:0x7f84c6655820::7f84c6655820  e0 b7 67 c6                                      ..g.
  7291 ms     | 0x646c privk:0x7f84c6655820::7f84c6655820  e5 e5 e5 e5                                      ....
  7291 ms     | 0x646c SECKEY_DestroyPrivateKey()
  7291 ms     | 0x646c privk:0x7f84c6653020::7f84c6653020  b0 b5 67 c6                                      ..g.
  7291 ms     | 0x646c privk:0x7f84c6653020::7f84c6653020  e5 e5 e5 e5                                      ....
  7291 ms  0x646c PK11_Encrypt()
  7291 ms  0x646c symkey:0x7f84d81f2980
  7292 ms  0x646c PK11_Encrypt()
  7292 ms  0x646c symkey:0x7f84d81f2980
  7322 ms  0x646c PK11_Encrypt()
  7322 ms  0x646c symkey:0x7f84d8e60c80
  7328 ms  0x646c PK11_DeriveWithFlags()
  7328 ms  0x646c basekey:0x7f84d81f2580
  7328 ms     | 0x646c PK11_DeriveWithTemplate()
  7328 ms  0x646c ret:0x7f84c6882b00
  7328 ms  0x646c PK11_DeriveWithFlags()
  7328 ms  0x646c basekey:0x7f84d81f2580
  7328 ms     | 0x646c PK11_DeriveWithTemplate()
  7328 ms  0x646c ret:0x7f84c6882b00
  7328 ms  0x646c PK11_Encrypt()
  7328 ms  0x646c symkey:0x7f84d81f2980
           /* TID 0x6474 */
  7335 ms  0x6474 PR_Close()
  7335 ms  0x6474 fd:0x7f84c66822e0
  7339 ms  0x6474 PR_Close()
  7339 ms  0x6474 fd:0x7f84c6682370
  7341 ms  0x6474 PR_Close()
  7341 ms  0x6474 fd:0x7f84c66822e0
  7342 ms  0x6474 PR_Close()
  7342 ms  0x6474 fd:0x7f84c66822e0
  7343 ms  0x6474 PR_Close()
  7343 ms  0x6474 fd:0x7f84c66822e0
  7344 ms  0x6474 PR_Close()
  7344 ms  0x6474 fd:0x7f84c66822e0
           /* TID 0x646c */
  7384 ms  0x646c PK11_Encrypt()
  7384 ms  0x646c symkey:0x7f84c687a680
           /* TID 0x6474 */
  7388 ms  0x6474 PR_Close()
  7388 ms  0x6474 fd:0x7f84c6878460
  7389 ms  0x6474 PR_Close()
  7389 ms  0x6474 fd:0x7f84c6878460
  7390 ms  0x6474 PR_Close()
  7390 ms  0x6474 fd:0x7f84c6878460
  7391 ms  0x6474 PR_Close()
  7391 ms  0x6474 fd:0x7f84c6878460
  7392 ms  0x6474 PR_Close()
  7392 ms  0x6474 fd:0x7f84c6878460
  7393 ms  0x6474 PR_Close()
  7393 ms  0x6474 fd:0x7f84c6878460
           /* TID 0x646c */
  7425 ms  0x646c PK11_Encrypt()
  7425 ms  0x646c symkey:0x7f84c687a680
           /* TID 0x6474 */
  7426 ms  0x6474 PR_Close()
  7426 ms  0x6474 fd:0x7f84c66823d0
           /* TID 0x646c */
  7431 ms  0x646c PK11_Encrypt()
  7431 ms  0x646c symkey:0x7f84d8c4d400
           /* TID 0x6461 */
  7440 ms  0x6461 PR_Close()
  7440 ms  0x6461 fd:0x7f84c6878520
           /* TID 0x6474 */
  7460 ms  0x6474 PR_Close()
  7460 ms  0x6474 fd:0x7f84c6878370
           /* TID 0x646c */
  7560 ms  0x646c PK11_Encrypt()
  7560 ms  0x646c symkey:0x7f84c687a680
  7562 ms  0x646c PK11_Encrypt()
  7562 ms  0x646c symkey:0x7f84c687a680
           /* TID 0x6474 */
  7565 ms  0x6474 PR_Close()
  7565 ms  0x6474 fd:0x7f84c6878820
           /* TID 0x646c */
  7590 ms  0x646c PK11_Encrypt()
  7590 ms  0x646c symkey:0x7f84d81f2980
  7602 ms  0x646c PK11_Encrypt()
  7602 ms  0x646c symkey:0x7f84c687a680
           /* TID 0x6474 */
  7602 ms  0x6474 PR_Close()
  7602 ms  0x6474 fd:0x7f84c6878280
           /* TID 0x646c */
  7633 ms  0x646c PK11_Encrypt()
  7633 ms  0x646c symkey:0x7f84c6881500
           /* TID 0x6474 */
  7636 ms  0x6474 PR_Close()
  7636 ms  0x6474 fd:0x7f84c6878310
           /* TID 0x646c */
  7668 ms  0x646c SSL_ImportFD()
  7668 ms  0x646c ret:0x7f84c68789a0
  7668 ms  0x646c SSL_AuthCertificateHook()
  7668 ms  0x646c fd:0x7f84c68789a0
  7668 ms  0x646c ret:0x0
  7668 ms  0x646c PR_Connect()
  7668 ms  0x646c fd:0x7f84c68789a0
  7670 ms  0x646c SSL_ImportFD()
  7670 ms  0x646c ret:0x7f84c6878d60
  7670 ms  0x646c SSL_AuthCertificateHook()
  7670 ms  0x646c fd:0x7f84c6878d60
  7670 ms  0x646c ret:0x0
  7670 ms  0x646c PR_Connect()
  7670 ms  0x646c fd:0x7f84c6878d60
  7679 ms  0x646c PK11_Encrypt()
  7679 ms  0x646c symkey:0x7f84d81f2980
  7682 ms  0x646c PK11_Encrypt()
  7682 ms  0x646c symkey:0x7f84c6881500
           /* TID 0x6474 */
  7682 ms  0x6474 PR_Close()
  7682 ms  0x6474 fd:0x7f84c68783a0
           /* TID 0x646c */
  7692 ms  0x646c PK11_Encrypt()
  7692 ms  0x646c symkey:0x7f84d8e60c80
  7698 ms  0x646c PK11_Encrypt()
  7698 ms  0x646c symkey:0x7f84c687a680
  7706 ms  0x646c SECKEY_CreateECPrivateKey()
  7706 ms  0x646c cx:0x7f84dddb3da8
  7706 ms     | 0x646c EC_ValidatePublicKey()
  7706 ms     | 0x646c ret:0x0
  7707 ms  0x646c ret:0x7f84c6a17020::7f84c6a17020  20 8e 88 c6                                       ...
  7707 ms  0x646c SECKEY_CreateECPrivateKey()
  7707 ms  0x646c cx:0x7f84dddb3da8
  7707 ms     | 0x646c EC_ValidatePublicKey()
  7709 ms     | 0x646c ret:0x0
  7709 ms  0x646c ret:0x7f84c6a1f820::7f84c6a1f820  d0 28 8d c6                                      .(..
  7709 ms  0x646c SECKEY_CreateECPrivateKey()
  7709 ms  0x646c cx:0x7f84dddb40e8
  7709 ms     | 0x646c EC_ValidatePublicKey()
  7709 ms     | 0x646c ret:0x0
  7710 ms  0x646c ret:0x7f84d772e020::7f84d772e020  00 2b 9e c6                                      .+..
  7710 ms  0x646c SECKEY_CreateECPrivateKey()
  7710 ms  0x646c cx:0x7f84dddb40e8
  7710 ms     | 0x646c EC_ValidatePublicKey()
  7712 ms     | 0x646c ret:0x0
  7712 ms  0x646c ret:0x7f84d7927820::7f84d7927820  e0 07 aa c6                                      ....
  7757 ms  0x646c PK11_Encrypt()
  7757 ms  0x646c symkey:0x7f84c687a680
           /* TID 0x6474 */
  7757 ms  0x6474 PR_Close()
  7757 ms  0x6474 fd:0x7f84c6878130
           /* TID 0x646c */
  7764 ms  0x646c PK11_Derive()
  7764 ms  0x646c basekey:0x7f84c6882b00
  7764 ms     | 0x646c PK11_DeriveWithTemplate()
  7764 ms  0x646c ret:0x7f84c6882c00
  7764 ms  0x646c PK11_PubDeriveWithKDF()
  7764 ms  0x646c seckey:0x7f84c6a17020
  7764 ms     | 0x646c EC_ValidatePublicKey()
  7764 ms     | 0x646c ret:0x0
  7764 ms  0x646c ret:0x7f84c6882b00
  7764 ms  SECKEY_ECParamsToKeySize()
  7764 ms  0x646c ret:0xff
  7764 ms  0x646c PK11_DeriveWithFlags()
  7764 ms  0x646c basekey:0x7f84c6882c00
  7764 ms     | 0x646c PK11_DeriveWithTemplate()
  7764 ms  0x646c ret:0x7f84c664ec80
  7764 ms  0x646c PK11_Derive()
  7764 ms  0x646c basekey:0x7f84c6882b00
  7764 ms     | 0x646c PK11_DeriveWithTemplate()
  7764 ms  0x646c ret:0x7f84c6a9c100
  7764 ms  0x646c PK11_DeriveWithFlags()
  7764 ms  0x646c basekey:0x7f84c6a9c100
  7764 ms     | 0x646c PK11_DeriveWithTemplate()
  7764 ms  0x646c ret:0x7f84c6882c00
  7764 ms  0x646c PK11_DeriveWithFlags()
  7764 ms  0x646c basekey:0x7f84c6a9c100
  7764 ms     | 0x646c PK11_DeriveWithTemplate()
  7764 ms  0x646c ret:0x7f84c6882b00
  7764 ms  0x646c PK11_DeriveWithFlags()
  7764 ms  0x646c basekey:0x7f84c6a9c100
  7764 ms     | 0x646c PK11_DeriveWithTemplate()
  7764 ms  0x646c ret:0x7f84c664ec80
  7765 ms  0x646c PK11_Derive()
  7765 ms  0x646c basekey:0x7f84c669c100
  7765 ms     | 0x646c PK11_DeriveWithTemplate()
  7765 ms  0x646c ret:0x7f84c663e280
  7765 ms  0x646c PK11_DeriveWithFlags()
  7765 ms  0x646c basekey:0x7f84c6882b00
  7765 ms     | 0x646c PK11_DeriveWithTemplate()
  7765 ms  0x646c ret:0x7f84c6a9c100
  7765 ms  0x646c PK11_DeriveWithFlags()
  7765 ms  0x646c basekey:0x7f84c6882b00
  7765 ms     | 0x646c PK11_DeriveWithTemplate()
  7765 ms  0x646c ret:0x7f84c664ec80
  7766 ms  0x646c PK11_DeriveWithFlags()
  7766 ms  0x646c basekey:0x7f84c6882b00
  7766 ms     | 0x646c PK11_DeriveWithTemplate()
  7766 ms  0x646c ret:0x7f84c664ec80
  7767 ms  0x646c PK11_Derive()
  7767 ms  0x646c basekey:0x7f84c664ec80
  7767 ms     | 0x646c PK11_DeriveWithTemplate()
  7767 ms  0x646c ret:0x7f84c669c100
  7767 ms  0x646c PK11_PubDeriveWithKDF()
  7767 ms  0x646c seckey:0x7f84d772e020
  7767 ms     | 0x646c EC_ValidatePublicKey()
  7767 ms     | 0x646c ret:0x0
  7767 ms  0x646c ret:0x7f84c664ec80
  7767 ms  SECKEY_ECParamsToKeySize()
  7767 ms  0x646c ret:0xff
  7767 ms  0x646c PK11_DeriveWithFlags()
  7767 ms  0x646c basekey:0x7f84c669c100
  7767 ms     | 0x646c PK11_DeriveWithTemplate()
  7767 ms  0x646c ret:0x7f84c68e0f00
  7767 ms  0x646c PK11_Derive()
  7767 ms  0x646c basekey:0x7f84c664ec80
  7767 ms     | 0x646c PK11_DeriveWithTemplate()
  7767 ms  0x646c ret:0x7f84d79fef00
  7767 ms  0x646c PK11_DeriveWithFlags()
  7767 ms  0x646c basekey:0x7f84d79fef00
  7767 ms     | 0x646c PK11_DeriveWithTemplate()
  7767 ms  0x646c ret:0x7f84c669c100
  7767 ms  0x646c PK11_DeriveWithFlags()
  7767 ms  0x646c basekey:0x7f84d79fef00
  7767 ms     | 0x646c PK11_DeriveWithTemplate()
  7767 ms  0x646c ret:0x7f84c664ec80
  7767 ms  0x646c PK11_DeriveWithFlags()
  7767 ms  0x646c basekey:0x7f84d79fef00
  7767 ms     | 0x646c PK11_DeriveWithTemplate()
  7767 ms  0x646c ret:0x7f84c68e0f00
  7767 ms  0x646c PK11_Derive()
  7767 ms  0x646c basekey:0x7f84d79fef80
  7767 ms     | 0x646c PK11_DeriveWithTemplate()
  7767 ms  0x646c ret:0x7f84c669c500
  7767 ms  0x646c PK11_DeriveWithFlags()
  7767 ms  0x646c basekey:0x7f84c664ec80
  7767 ms     | 0x646c PK11_DeriveWithTemplate()
  7768 ms  0x646c ret:0x7f84d79fef00
  7768 ms  0x646c PK11_DeriveWithFlags()
  7768 ms  0x646c basekey:0x7f84c664ec80
  7768 ms     | 0x646c PK11_DeriveWithTemplate()
  7768 ms  0x646c ret:0x7f84c68e0f00
  7768 ms  SECKEY_ECParamsToKeySize()
  7768 ms  0x646c ret:0x100
  7768 ms  SECKEY_ECParamsToBasePointOrderLen()
  7768 ms  0x646c ret:0x100
  7768 ms  SECKEY_ECParamsToBasePointOrderLen()
  7768 ms  0x646c ret:0x100
  7769 ms  0x646c EC_ValidatePublicKey()
  7770 ms  0x646c ret:0x0
  7772 ms  0x646c PK11_DeriveWithFlags()
  7772 ms  0x646c basekey:0x7f84c664ec80
  7772 ms     | 0x646c PK11_DeriveWithTemplate()
  7772 ms  0x646c ret:0x7f84c68e0f00
  7811 ms  0x646c PK11_Encrypt()
  7811 ms  0x646c symkey:0x7f84d8e60c80
  7813 ms  0x646c PK11_Encrypt()
  7813 ms  0x646c symkey:0x7f84d8e60c80
  7815 ms  0x646c PK11_Encrypt()
  7815 ms  0x646c symkey:0x7f84d8e60c80
  7827 ms  0x646c PK11_Encrypt()
  7827 ms  0x646c symkey:0x7f84d8e60c80
  7830 ms  0x646c PK11_Encrypt()
  7830 ms  0x646c symkey:0x7f84d81f2980
  7834 ms  0x646c PK11_Encrypt()
  7834 ms  0x646c symkey:0x7f84d8e60c80
  7835 ms  0x646c PK11_Encrypt()
  7835 ms  0x646c symkey:0x7f84d8e60c80
           /* TID 0x6474 */
  7849 ms  0x6474 PR_Close()
  7849 ms  0x6474 fd:0x7f84c6ac1fd0
  7852 ms  0x6474 PR_Close()
  7852 ms  0x6474 fd:0x7f84c6ac1fd0
  7870 ms  0x6474 PR_Close()
  7870 ms  0x6474 fd:0x7f84c6ac12b0
  7879 ms  0x6474 PR_Close()
  7879 ms  0x6474 fd:0x7f84c6ac12b0
  7910 ms  0x6474 PR_Close()
  7910 ms  0x6474 fd:0x7f84c6878310
           /* TID 0x6508 */
  7910 ms  0x6508 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7911 ms  0x6508 ret:0x0
           /* TID 0x646c */
  7911 ms  0x646c SSL_AuthCertificateComplete()
  7911 ms  0x646c fd:0x7f84c68789a0
  7911 ms  0x646c err:0x0
  7911 ms     | 0x646c PK11_DeriveWithFlags()
  7911 ms     | 0x646c basekey:0x7f84c663e280
  7911 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7911 ms     | 0x646c ret:0x7f84c68e0f00
  7911 ms     | 0x646c PK11_DeriveWithFlags()
  7911 ms     | 0x646c basekey:0x7f84c663e280
  7911 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7911 ms     | 0x646c ret:0x7f84d79fef80
  7911 ms     | 0x646c PK11_DeriveWithFlags()
  7911 ms     | 0x646c basekey:0x7f84c663e280
  7911 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7911 ms     | 0x646c ret:0x7f84c6882d80
  7911 ms     | 0x646c PK11_DeriveWithFlags()
  7911 ms     | 0x646c basekey:0x7f84c6882c00
  7911 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7911 ms     | 0x646c ret:0x7f84c687be80
  7911 ms     | 0x646c PK11_DeriveWithFlags()
  7911 ms     | 0x646c basekey:0x7f84c6882c00
  7911 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7911 ms     | 0x646c ret:0x7f84c6882c80
  7911 ms     | 0x646c PK11_DeriveWithFlags()
  7911 ms     | 0x646c basekey:0x7f84d79fef80
  7911 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7911 ms     | 0x646c ret:0x7f84c6882c80
  7911 ms     | 0x646c PK11_DeriveWithFlags()
  7911 ms     | 0x646c basekey:0x7f84d79fef80
  7911 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7911 ms     | 0x646c ret:0x7f84d79fec80
  7911 ms     | 0x646c PK11_DeriveWithFlags()
  7911 ms     | 0x646c basekey:0x7f84c6882c00
  7911 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7911 ms     | 0x646c ret:0x7f84c6a9c100
  7911 ms     | 0x646c PK11_Encrypt()
  7911 ms     | 0x646c symkey:0x7f84c687be80
  7911 ms     | 0x646c PK11_DeriveWithFlags()
  7911 ms     | 0x646c basekey:0x7f84c68e0f00
  7911 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7911 ms     | 0x646c ret:0x7f84c6a9c100
  7911 ms     | 0x646c PK11_DeriveWithFlags()
  7911 ms     | 0x646c basekey:0x7f84c68e0f00
  7911 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7911 ms     | 0x646c ret:0x7f84d79fec80
  7911 ms     | 0x646c PK11_DeriveWithFlags()
  7911 ms     | 0x646c basekey:0x7f84c663e280
  7911 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7911 ms     | 0x646c ret:0x7f84c687be80
  7912 ms     | 0x646c SECKEY_DestroyPrivateKey()
  7912 ms     | 0x646c privk:0x7f84c6a1f820::7f84c6a1f820  d0 28 8d c6                                      .(..
  7912 ms     | 0x646c privk:0x7f84c6a1f820::7f84c6a1f820  e5 e5 e5 e5                                      ....
  7912 ms     | 0x646c SECKEY_DestroyPrivateKey()
  7912 ms     | 0x646c privk:0x7f84c6a17020::7f84c6a17020  20 8e 88 c6                                       ...
  7912 ms     | 0x646c privk:0x7f84c6a17020::7f84c6a17020  e5 e5 e5 e5                                      ....
  7912 ms  0x646c PK11_Encrypt()
  7912 ms  0x646c symkey:0x7f84c6a9c100
  7912 ms  0x646c PK11_Encrypt()
  7912 ms  0x646c symkey:0x7f84c6a9c100
           /* TID 0x6474 */
  7917 ms  0x6474 PR_Close()
  7917 ms  0x6474 fd:0x7f84c68dde50
  7918 ms  0x6474 PR_Close()
  7918 ms  0x6474 fd:0x7f84c68dde50
           /* TID 0x646c */
  7919 ms  0x646c PK11_Encrypt()
  7919 ms  0x646c symkey:0x7f84d8e60c80
           /* TID 0x6474 */
  7920 ms  0x6474 PR_Close()
  7920 ms  0x6474 fd:0x7f84c6878460
           /* TID 0x64cf */
  7920 ms  0x64cf _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7920 ms  0x64cf ret:0x0
           /* TID 0x6474 */
  7921 ms  0x6474 PR_Close()
  7921 ms  0x6474 fd:0x7f84c6878460
           /* TID 0x646c */
  7921 ms  0x646c SSL_AuthCertificateComplete()
  7921 ms  0x646c fd:0x7f84c6878d60
  7921 ms  0x646c err:0x0
  7921 ms     | 0x646c PK11_DeriveWithFlags()
  7921 ms     | 0x646c basekey:0x7f84c669c500
  7921 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7921 ms     | 0x646c ret:0x7f84c6882b00
  7921 ms     | 0x646c PK11_DeriveWithFlags()
  7921 ms     | 0x646c basekey:0x7f84c669c500
  7921 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7921 ms     | 0x646c ret:0x7f84c6882c00
  7921 ms     | 0x646c PK11_DeriveWithFlags()
  7921 ms     | 0x646c basekey:0x7f84c669c500
  7921 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7921 ms     | 0x646c ret:0x7f84c663e280
  7921 ms     | 0x646c PK11_DeriveWithFlags()
  7921 ms     | 0x646c basekey:0x7f84c669c100
  7921 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7921 ms     | 0x646c ret:0x7f84d79fec80
  7921 ms     | 0x646c PK11_DeriveWithFlags()
  7921 ms     | 0x646c basekey:0x7f84c669c100
  7921 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7921 ms     | 0x646c ret:0x7f84d79fee80
  7921 ms     | 0x646c PK11_DeriveWithFlags()
  7921 ms     | 0x646c basekey:0x7f84c6882c00
  7921 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7921 ms     | 0x646c ret:0x7f84d79fee80
  7921 ms     | 0x646c PK11_DeriveWithFlags()
  7921 ms     | 0x646c basekey:0x7f84c6882c00
  7921 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7921 ms     | 0x646c ret:0x7f84c663ee80
  7921 ms     | 0x646c PK11_DeriveWithFlags()
  7921 ms     | 0x646c basekey:0x7f84c669c100
  7921 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7921 ms     | 0x646c ret:0x7f84d79fef00
  7921 ms     | 0x646c PK11_Encrypt()
  7921 ms     | 0x646c symkey:0x7f84d79fec80
  7924 ms     | 0x646c PK11_DeriveWithFlags()
  7924 ms     | 0x646c basekey:0x7f84c6882b00
  7924 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7924 ms     | 0x646c ret:0x7f84d79fef00
  7924 ms     | 0x646c PK11_DeriveWithFlags()
  7924 ms     | 0x646c basekey:0x7f84c6882b00
  7924 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7924 ms     | 0x646c ret:0x7f84c663ee80
  7924 ms     | 0x646c PK11_DeriveWithFlags()
  7924 ms     | 0x646c basekey:0x7f84c669c500
  7924 ms     |    | 0x646c PK11_DeriveWithTemplate()
  7924 ms     | 0x646c ret:0x7f84d79fec80
  7924 ms     | 0x646c SECKEY_DestroyPrivateKey()
  7924 ms     | 0x646c privk:0x7f84d7927820::7f84d7927820  e0 07 aa c6                                      ....
  7924 ms     | 0x646c privk:0x7f84d7927820::7f84d7927820  e5 e5 e5 e5                                      ....
  7925 ms     | 0x646c SECKEY_DestroyPrivateKey()
  7925 ms     | 0x646c privk:0x7f84d772e020::7f84d772e020  00 2b 9e c6                                      .+..
  7925 ms     | 0x646c privk:0x7f84d772e020::7f84d772e020  e5 e5 e5 e5                                      ....
  7925 ms  0x646c PK11_Encrypt()
  7925 ms  0x646c symkey:0x7f84d79fef00
  7925 ms  0x646c PK11_Encrypt()
  7925 ms  0x646c symkey:0x7f84d79fef00
           /* TID 0x6474 */
  7927 ms  0x6474 PR_Close()
  7927 ms  0x6474 fd:0x7f84c68dd850
  7928 ms  0x6474 PR_Close()
  7928 ms  0x6474 fd:0x7f84c68dd850
  7930 ms  0x6474 PR_Close()
  7930 ms  0x6474 fd:0x7f84c68dd850
  7941 ms  0x6474 PR_Close()
  7941 ms  0x6474 fd:0x7f84c6878460
           /* TID 0x646c */
  7980 ms  0x646c PK11_Encrypt()
  7980 ms  0x646c symkey:0x7f84c669dc80
  7990 ms  0x646c PK11_DeriveWithFlags()
  7990 ms  0x646c basekey:0x7f84c687be80
  7990 ms     | 0x646c PK11_DeriveWithTemplate()
  7990 ms  0x646c ret:0x7f84c664ec80
  7990 ms  0x646c PK11_DeriveWithFlags()
  7990 ms  0x646c basekey:0x7f84c687be80
  7990 ms     | 0x646c PK11_DeriveWithTemplate()
  7990 ms  0x646c ret:0x7f84c664ec80
  7990 ms  0x646c PK11_Encrypt()
  7990 ms  0x646c symkey:0x7f84c6a9c100
  8009 ms  0x646c PK11_Encrypt()
  8009 ms  0x646c symkey:0x7f84c6a9c100
           /* TID 0x6474 */
  8010 ms  0x6474 PR_Close()
  8010 ms  0x6474 fd:0x7f84c6878400
           /* TID 0x646c */
  8020 ms  0x646c PK11_Encrypt()
  8020 ms  0x646c symkey:0x7f84c669dc80
           /* TID 0x6474 */
  8021 ms  0x6474 PR_Close()
  8021 ms  0x6474 fd:0x7f84c6878400
           /* TID 0x646c */
  8036 ms  0x646c PK11_DeriveWithFlags()
  8036 ms  0x646c basekey:0x7f84d79fec80
  8036 ms     | 0x646c PK11_DeriveWithTemplate()
  8036 ms  0x646c ret:0x7f84c664ec80
  8036 ms  0x646c PK11_DeriveWithFlags()
  8036 ms  0x646c basekey:0x7f84d79fec80
  8036 ms     | 0x646c PK11_DeriveWithTemplate()
  8036 ms  0x646c ret:0x7f84c664ec80
  8036 ms  0x646c PK11_Encrypt()
  8036 ms  0x646c symkey:0x7f84d79fef00
           /* TID 0x64cd */
  8049 ms  0x64cd PR_Close()
  8049 ms  0x64cd fd:0x7f84d79519a0
  8050 ms  0x64cd PR_Close()
  8050 ms  0x64cd fd:0x7f84d79519a0
           /* TID 0x646c */
  8057 ms  0x646c PK11_Encrypt()
  8057 ms  0x646c symkey:0x7f84d79fef00
           /* TID 0x6474 */
  8058 ms  0x6474 PR_Close()
  8058 ms  0x6474 fd:0x7f84c6878130
           /* TID 0x650b */
  8062 ms  0x650b PR_Close()
  8062 ms  0x650b fd:0x7f84d8943760
  8062 ms  0x650b PR_Close()
  8062 ms  0x650b fd:0x7f84d8943760
           /* TID 0x6487 */
  8107 ms  0x6487 PR_Close()
  8107 ms  0x6487 fd:0x7f84c6878c10
           /* TID 0x646c */
  8132 ms  0x646c PR_Close()
  8132 ms  0x646c fd:0x7f84d8989d60
           /* TID 0x6461 */
  8133 ms  0x6461 EC_ValidatePublicKey()
  8135 ms  0x6461 ret:0x0
  8135 ms  0x6461 EC_ValidatePublicKey()
  8136 ms  0x6461 ret:0x0
  8136 ms  0x6461 EC_ValidatePublicKey()
           /* TID 0x646c */
  8142 ms  0x646c PK11_Encrypt()
  8142 ms  0x646c symkey:0x7f84d8e60c80
           /* TID 0x6461 */
  8143 ms  0x6461 ret:0x0
  8143 ms  0x6461 EC_ValidatePublicKey()
  8144 ms  0x6461 ret:0x0
  8144 ms  0x6461 EC_ValidatePublicKey()
  8146 ms  0x6461 ret:0x0
  8146 ms  0x6461 EC_ValidatePublicKey()
  8152 ms  0x6461 ret:0x0
  8152 ms  0x6461 EC_ValidatePublicKey()
  8154 ms  0x6461 ret:0x0
  8154 ms  0x6461 EC_ValidatePublicKey()
  8155 ms  0x6461 ret:0x0
  8155 ms  0x6461 EC_ValidatePublicKey()
  8173 ms  0x6461 ret:0x0
  8173 ms  0x6461 EC_ValidatePublicKey()
  8175 ms  0x6461 ret:0x0
           /* TID 0x646c */
  8175 ms  0x646c PK11_Encrypt()
  8175 ms  0x646c symkey:0x7f84c6a9c100
  8176 ms  0x646c PK11_Encrypt()
  8176 ms  0x646c symkey:0x7f84d8e60c80
  8176 ms  0x646c PK11_Encrypt()
  8176 ms  0x646c symkey:0x7f84d8c4d400
  8176 ms  0x646c PK11_Encrypt()
  8176 ms  0x646c symkey:0x7f84d81f2980
  8176 ms  0x646c PK11_Encrypt()
  8176 ms  0x646c symkey:0x7f84d8e61200
  8176 ms  0x646c PK11_Encrypt()
  8176 ms  0x646c symkey:0x7f84c687a680
  8176 ms  0x646c PK11_Encrypt()
  8176 ms  0x646c symkey:0x7f84c6881500
  8176 ms  0x646c PK11_Encrypt()
  8176 ms  0x646c symkey:0x7f84c669dc80
  8176 ms  0x646c PK11_Encrypt()
  8176 ms  0x646c symkey:0x7f84d79fef00
  8176 ms  0x646c PR_Close()
  8176 ms  0x646c fd:0x7f84d7951220
  8176 ms  0x646c PR_Close()
  8176 ms  0x646c fd:0x7f84c68ddd60
  8177 ms  0x646c PR_Close()
  8177 ms  0x646c fd:0x7f84d79511f0
  8177 ms  0x646c PR_Close()
  8177 ms  0x646c fd:0x7f84c68ddf40
  8177 ms  0x646c PR_Close()
  8177 ms  0x646c fd:0x7f84d8c248b0
  8177 ms  0x646c PR_Close()
  8177 ms  0x646c fd:0x7f84d79b9d30
  8177 ms     | 0x646c PK11_Encrypt()
  8177 ms     | 0x646c symkey:0x7f84d79c2500
  8177 ms  0x646c PR_Close()
  8177 ms  0x646c fd:0x7f84d79b9bb0
  8177 ms  0x646c PR_Close()
  8177 ms  0x646c fd:0x7f84d79b9100
  8177 ms     | 0x646c PK11_Encrypt()
  8177 ms     | 0x646c symkey:0x7f84d97dc600
  8177 ms  0x646c PR_Close()
  8177 ms  0x646c fd:0x7f84d8943e20
  8178 ms  0x646c PR_Close()
  8178 ms  0x646c fd:0x7f84c66825b0
  8178 ms     | 0x646c PK11_Encrypt()
  8178 ms     | 0x646c symkey:0x7f84c669dc80
  8178 ms  0x646c PR_Close()
  8178 ms  0x646c fd:0x7f84c68785b0
  8178 ms     | 0x646c PK11_Encrypt()
  8178 ms     | 0x646c symkey:0x7f84d8e61200
  8178 ms  0x646c PR_Close()
  8178 ms  0x646c fd:0x7f84c6670520
  8178 ms     | 0x646c PK11_Encrypt()
  8178 ms     | 0x646c symkey:0x7f84d81f2980
  8178 ms  0x646c PR_Close()
  8178 ms  0x646c fd:0x7f84dd8f6730
  8178 ms     | 0x646c PK11_Encrypt()
  8178 ms     | 0x646c symkey:0x7f84d8e60c80
  8178 ms  0x646c PR_Close()
  8178 ms  0x646c fd:0x7f84c68789a0
  8178 ms     | 0x646c PK11_Encrypt()
  8178 ms     | 0x646c symkey:0x7f84c6a9c100
  8179 ms  0x646c PR_Close()
  8179 ms  0x646c fd:0x7f84c6682760
  8179 ms     | 0x646c PK11_Encrypt()
  8179 ms     | 0x646c symkey:0x7f84c687a680
  8179 ms  0x646c PR_Close()
  8179 ms  0x646c fd:0x7f84c6682490
  8179 ms     | 0x646c PK11_Encrypt()
  8179 ms     | 0x646c symkey:0x7f84c6881500
  8179 ms  0x646c PR_Close()
  8179 ms  0x646c fd:0x7f84c6878d60
  8179 ms     | 0x646c PK11_Encrypt()
  8179 ms     | 0x646c symkey:0x7f84d79fef00
  8179 ms  0x646c PR_Close()
  8179 ms  0x646c fd:0x7f84c68ddc40
  8179 ms     | 0x646c PK11_Encrypt()
  8179 ms     | 0x646c symkey:0x7f84d8c4d400
           /* TID 0x64c4 */
  8180 ms  0x64c4 PR_Close()
  8180 ms  0x64c4 fd:0x7f84c6670280
  8180 ms  0x64c4 PR_Close()
  8180 ms  0x64c4 fd:0x7f84c6670280
           /* TID 0x6474 */
  8183 ms  0x6474 PR_Close()
  8183 ms  0x6474 fd:0x7f84c6670e80
           /* TID 0x646c */
  8185 ms  0x646c SSL_ImportFD()
  8185 ms  0x646c ret:0x7f84c6670af0
  8185 ms  0x646c SSL_AuthCertificateHook()
  8185 ms  0x646c fd:0x7f84c6670af0
  8185 ms  0x646c ret:0x0
  8185 ms  0x646c PR_Connect()
  8185 ms  0x646c fd:0x7f84c6670af0
  8207 ms  0x646c SSL_ImportFD()
  8207 ms  0x646c ret:0x7f84c68789a0
  8207 ms  0x646c SSL_AuthCertificateHook()
  8207 ms  0x646c fd:0x7f84c68789a0
  8207 ms  0x646c ret:0x0
  8207 ms  0x646c PR_Connect()
  8207 ms  0x646c fd:0x7f84c68789a0
           /* TID 0x6461 */
  8210 ms  0x6461 PR_Close()
  8210 ms  0x6461 fd:0x7f84da53c0d0
  8210 ms  0x6461 PR_Close()
  8210 ms  0x6461 fd:0x7f84c6878d60
  8211 ms  0x6461 PR_Close()
  8211 ms  0x6461 fd:0x7f84c6878df0
  8211 ms  0x6461 PR_Close()
  8211 ms  0x6461 fd:0x7f84c6878d60
           /* TID 0x6478 */
  8212 ms  0x6478 PR_Close()
  8212 ms  0x6478 fd:0x7f84c6878dc0
           /* TID 0x6461 */
  8213 ms  0x6461 PR_Close()
  8213 ms  0x6461 fd:0x7f84c6878df0
  8213 ms  0x6461 PR_Close()
  8213 ms  0x6461 fd:0x7f84c6878dc0
           /* TID 0x6487 */
  8219 ms  0x6487 PR_Close()
  8219 ms  0x6487 fd:0x7f84c6670c40
           /* TID 0x646c */
  8222 ms  0x646c SECKEY_CreateECPrivateKey()
  8222 ms  0x646c cx:0x7f84d79bda68
  8223 ms     | 0x646c EC_ValidatePublicKey()
  8223 ms     | 0x646c ret:0x0
  8223 ms  0x646c ret:0x7f84c6610820::7f84c6610820  00 06 6c c6                                      ..l.
  8223 ms  0x646c SECKEY_CreateECPrivateKey()
  8223 ms  0x646c cx:0x7f84d79bda68
  8224 ms     | 0x646c EC_ValidatePublicKey()
  8225 ms     | 0x646c ret:0x0
  8225 ms  0x646c ret:0x7f84c6652020::7f84c6652020  c0 59 8c d7                                      .Y..
  8245 ms  0x646c SECKEY_CreateECPrivateKey()
  8245 ms  0x646c cx:0x7f84d79be428
  8245 ms     | 0x646c EC_ValidatePublicKey()
  8245 ms     | 0x646c ret:0x0
  8245 ms  0x646c ret:0x7f84c6660820::7f84c6660820  60 7a 94 d7                                      `z..
  8246 ms  0x646c SECKEY_CreateECPrivateKey()
  8246 ms  0x646c cx:0x7f84d79be428
  8246 ms     | 0x646c EC_ValidatePublicKey()
  8248 ms     | 0x646c ret:0x0
  8248 ms  0x646c ret:0x7f84c6a07020::7f84c6a07020  e0 7c 94 d7                                      .|..
           /* TID 0x6461 */
  8251 ms  0x6461 PR_Close()
  8251 ms  0x6461 fd:0x7f84c6878df0
  8251 ms  0x6461 PR_Close()
  8251 ms  0x6461 fd:0x7f84d79b9a90
  8257 ms  0x6461 PR_Close()
  8257 ms  0x6461 fd:0x7f84c6878df0
  8257 ms  0x6461 PR_Close()
  8257 ms  0x6461 fd:0x7f84d79b9a90
  8258 ms  0x6461 PR_Close()
  8258 ms  0x6461 fd:0x7f84e2ac89a0
  8258 ms  0x6461 PR_Close()
  8258 ms  0x6461 fd:0x7f84e2ac88b0
  8258 ms  0x6461 PR_Close()
  8258 ms  0x6461 fd:0x7f84e2ac8a60
  8260 ms  0x6461 PR_Close()
  8260 ms  0x6461 fd:0x7f84d79b9af0
  8261 ms  0x6461 PR_Close()
  8261 ms  0x6461 fd:0x7f84d79b9af0
  8262 ms  0x6461 PR_Close()
  8262 ms  0x6461 fd:0x7f84c6878df0
  8262 ms  0x6461 PR_Close()
  8262 ms  0x6461 fd:0x7f84d79b9b50
  8263 ms  0x6461 PR_Close()
  8263 ms  0x6461 fd:0x7f84c6878df0
  8263 ms  0x6461 PR_Close()
  8263 ms  0x6461 fd:0x7f84d79b9b50
  8265 ms  0x6461 PR_Close()
  8265 ms  0x6461 fd:0x7f84d79b9bb0
  8266 ms  0x6461 PR_Close()
  8266 ms  0x6461 fd:0x7f84d79b9bb0
  8267 ms  0x6461 PR_Close()
  8267 ms  0x6461 fd:0x7f84c6878df0
  8267 ms  0x6461 PR_Close()
  8267 ms  0x6461 fd:0x7f84d79b9c40
  8277 ms  0x6461 PR_Close()
  8277 ms  0x6461 fd:0x7f84c6878df0
  8277 ms  0x6461 PR_Close()
  8277 ms  0x6461 fd:0x7f84d79b9c40
           /* TID 0x646c */
  8279 ms  0x646c PK11_Derive()
  8279 ms  0x646c basekey:0x7f84c6a9c300
  8279 ms     | 0x646c PK11_DeriveWithTemplate()
  8279 ms  0x646c ret:0x7f84d81f2a80
  8279 ms  0x646c PK11_PubDeriveWithKDF()
  8279 ms  0x646c seckey:0x7f84c6610820
  8279 ms     | 0x646c EC_ValidatePublicKey()
  8279 ms     | 0x646c ret:0x0
  8279 ms  0x646c ret:0x7f84c6a9c300
  8279 ms  SECKEY_ECParamsToKeySize()
  8279 ms  0x646c ret:0xff
  8279 ms  0x646c PK11_DeriveWithFlags()
  8279 ms  0x646c basekey:0x7f84d81f2a80
  8279 ms     | 0x646c PK11_DeriveWithTemplate()
  8279 ms  0x646c ret:0x7f84d81f2d00
  8279 ms  0x646c PK11_Derive()
  8279 ms  0x646c basekey:0x7f84c6a9c300
  8279 ms     | 0x646c PK11_DeriveWithTemplate()
  8279 ms  0x646c ret:0x7f84d81f2e80
  8280 ms  0x646c PK11_DeriveWithFlags()
  8280 ms  0x646c basekey:0x7f84d81f2e80
  8280 ms     | 0x646c PK11_DeriveWithTemplate()
  8280 ms  0x646c ret:0x7f84d81f2a80
  8280 ms  0x646c PK11_DeriveWithFlags()
  8280 ms  0x646c basekey:0x7f84d81f2e80
  8280 ms     | 0x646c PK11_DeriveWithTemplate()
  8280 ms  0x646c ret:0x7f84c6a9c300
  8280 ms  0x646c PK11_DeriveWithFlags()
  8280 ms  0x646c basekey:0x7f84d81f2e80
  8280 ms     | 0x646c PK11_DeriveWithTemplate()
  8280 ms  0x646c ret:0x7f84d81f2d00
  8280 ms  0x646c PK11_Derive()
  8280 ms  0x646c basekey:0x7f84d81f2f00
  8280 ms     | 0x646c PK11_DeriveWithTemplate()
  8280 ms  0x646c ret:0x7f84d8c4d400
  8280 ms  0x646c PK11_DeriveWithFlags()
  8280 ms  0x646c basekey:0x7f84c6a9c300
  8280 ms     | 0x646c PK11_DeriveWithTemplate()
  8280 ms  0x646c ret:0x7f84d81f2e80
  8280 ms  0x646c PK11_DeriveWithFlags()
  8280 ms  0x646c basekey:0x7f84c6a9c300
  8280 ms     | 0x646c PK11_DeriveWithTemplate()
  8280 ms  0x646c ret:0x7f84d81f2d00
           /* TID 0x6461 */
  8281 ms  0x6461 PR_Close()
  8281 ms  0x6461 fd:0x7f84d79b9c70
           /* TID 0x646c */
  8281 ms  SECKEY_ECParamsToKeySize()
  8281 ms  0x646c ret:0x100
  8281 ms  SECKEY_ECParamsToBasePointOrderLen()
  8281 ms  0x646c ret:0x100
  8281 ms  SECKEY_ECParamsToBasePointOrderLen()
  8281 ms  0x646c ret:0x100
  8281 ms  0x646c EC_ValidatePublicKey()
  8283 ms  0x646c ret:0x0
  8285 ms  0x646c PK11_DeriveWithFlags()
  8285 ms  0x646c basekey:0x7f84c6a9c300
  8285 ms     | 0x646c PK11_DeriveWithTemplate()
  8285 ms  0x646c ret:0x7f84d81f2d00
           /* TID 0x6461 */
  8286 ms  0x6461 PR_Close()
  8286 ms  0x6461 fd:0x7f84d79b9c70
  8291 ms  0x6461 PR_Close()
  8291 ms  0x6461 fd:0x7f84d79f6af0
  8292 ms  0x6461 PR_Close()
  8292 ms  0x6461 fd:0x7f84d79f6af0
  8293 ms  0x6461 PR_Close()
  8293 ms  0x6461 fd:0x7f84d79f6b20
           /* TID 0x646c */
  8302 ms  0x646c PK11_Derive()
  8302 ms  0x646c basekey:0x7f84d81f2d00
  8302 ms     | 0x646c PK11_DeriveWithTemplate()
  8302 ms  0x646c ret:0x7f84d81f2f00
  8302 ms  0x646c PK11_PubDeriveWithKDF()
  8302 ms  0x646c seckey:0x7f84c6660820
  8302 ms     | 0x646c EC_ValidatePublicKey()
  8302 ms     | 0x646c ret:0x0
  8302 ms  0x646c ret:0x7f84d81f2d00
  8302 ms  SECKEY_ECParamsToKeySize()
  8302 ms  0x646c ret:0xff
  8302 ms  0x646c PK11_DeriveWithFlags()
  8302 ms  0x646c basekey:0x7f84d81f2f00
  8302 ms     | 0x646c PK11_DeriveWithTemplate()
  8302 ms  0x646c ret:0x7f84c663e280
  8302 ms  0x646c PK11_Derive()
  8302 ms  0x646c basekey:0x7f84d81f2d00
  8302 ms     | 0x646c PK11_DeriveWithTemplate()
  8302 ms  0x646c ret:0x7f84c6882c00
  8302 ms  0x646c PK11_DeriveWithFlags()
  8302 ms  0x646c basekey:0x7f84c6882c00
  8302 ms     | 0x646c PK11_DeriveWithTemplate()
  8302 ms  0x646c ret:0x7f84d81f2f00
  8302 ms  0x646c PK11_DeriveWithFlags()
  8302 ms  0x646c basekey:0x7f84c6882c00
  8302 ms     | 0x646c PK11_DeriveWithTemplate()
  8303 ms  0x646c ret:0x7f84d81f2d00
  8303 ms  0x646c PK11_DeriveWithFlags()
  8303 ms  0x646c basekey:0x7f84c6882c00
  8303 ms     | 0x646c PK11_DeriveWithTemplate()
  8303 ms  0x646c ret:0x7f84c663e280
  8303 ms  0x646c PK11_Derive()
  8303 ms  0x646c basekey:0x7f84c6882b00
  8303 ms     | 0x646c PK11_DeriveWithTemplate()
  8303 ms  0x646c ret:0x7f84d79fec80
  8303 ms  0x646c PK11_DeriveWithFlags()
  8303 ms  0x646c basekey:0x7f84d81f2d00
  8303 ms     | 0x646c PK11_DeriveWithTemplate()
  8303 ms  0x646c ret:0x7f84c6882c00
  8303 ms  0x646c PK11_DeriveWithFlags()
  8303 ms  0x646c basekey:0x7f84d81f2d00
  8303 ms     | 0x646c PK11_DeriveWithTemplate()
  8303 ms  0x646c ret:0x7f84c663e280
  8303 ms  0x646c PR_Connect()
  8303 ms  0x646c fd:0x7f84d79f6c10
  8305 ms  SECKEY_ECParamsToKeySize()
  8305 ms  0x646c ret:0x100
  8305 ms  SECKEY_ECParamsToBasePointOrderLen()
  8305 ms  0x646c ret:0x100
  8305 ms  SECKEY_ECParamsToBasePointOrderLen()
  8305 ms  0x646c ret:0x100
  8305 ms  0x646c EC_ValidatePublicKey()
  8308 ms  0x646c ret:0x0
  8310 ms  0x646c PK11_DeriveWithFlags()
  8310 ms  0x646c basekey:0x7f84d81f2d00
  8310 ms     | 0x646c PK11_DeriveWithTemplate()
  8310 ms  0x646c ret:0x7f84c663e280
           /* TID 0x6466 */
  8319 ms  0x6466 PR_Close()
  8319 ms  0x6466 fd:0x7f84e15f7e20
           /* TID 0x646c */
  8320 ms  0x646c PR_Connect()
  8320 ms  0x646c fd:0x7f84d79b9df0
  8331 ms  0x646c SSL_ImportFD()
  8331 ms  0x646c ret:0x7f84d7f0beb0
  8331 ms  0x646c SSL_AuthCertificateHook()
  8331 ms  0x646c fd:0x7f84d7f0beb0
  8331 ms  0x646c ret:0x0
  8331 ms  0x646c PR_Connect()
  8331 ms  0x646c fd:0x7f84d7f0beb0
           /* TID 0x6461 */
  8353 ms  0x6461 PR_Close()
  8353 ms  0x6461 fd:0x7f84c6878df0
  8353 ms  0x6461 PR_Close()
  8353 ms  0x6461 fd:0x7f84d79518e0
           /* TID 0x646c */
  8369 ms  0x646c SECKEY_CreateECPrivateKey()
  8369 ms  0x646c cx:0x7f84d79bf2c8
  8369 ms     | 0x646c EC_ValidatePublicKey()
  8369 ms     | 0x646c ret:0x0
  8369 ms  0x646c ret:0x7f84d7936020::7f84d7936020  c0 8e c2 d8                                      ....
  8369 ms  0x646c SECKEY_CreateECPrivateKey()
  8369 ms  0x646c cx:0x7f84d79bf2c8
  8370 ms     | 0x646c EC_ValidatePublicKey()
  8371 ms     | 0x646c ret:0x0
  8371 ms  0x646c ret:0x7f84d7fa5820::7f84d7fa5820  50 11 cb d8                                      P...
  8426 ms  0x646c PK11_Derive()
  8426 ms  0x646c basekey:0x7f84c663e280
  8426 ms     | 0x646c PK11_DeriveWithTemplate()
  8426 ms  0x646c ret:0x7f84c6882b00
  8426 ms  0x646c PK11_PubDeriveWithKDF()
  8426 ms  0x646c seckey:0x7f84d7936020
  8426 ms     | 0x646c EC_ValidatePublicKey()
  8426 ms     | 0x646c ret:0x0
  8426 ms  0x646c ret:0x7f84c663e280
  8426 ms  SECKEY_ECParamsToKeySize()
  8426 ms  0x646c ret:0xff
  8426 ms  0x646c PK11_DeriveWithFlags()
  8426 ms  0x646c basekey:0x7f84c6882b00
  8426 ms     | 0x646c PK11_DeriveWithTemplate()
  8426 ms  0x646c ret:0x7f84d79fee80
  8426 ms  0x646c PK11_Derive()
  8426 ms  0x646c basekey:0x7f84c663e280
  8426 ms     | 0x646c PK11_DeriveWithTemplate()
  8426 ms  0x646c ret:0x7f84d79fef00
  8426 ms  0x646c PK11_DeriveWithFlags()
  8426 ms  0x646c basekey:0x7f84d79fef00
  8426 ms     | 0x646c PK11_DeriveWithTemplate()
  8426 ms  0x646c ret:0x7f84c6882b00
  8426 ms  0x646c PK11_DeriveWithFlags()
  8426 ms  0x646c basekey:0x7f84d79fef00
  8426 ms     | 0x646c PK11_DeriveWithTemplate()
  8426 ms  0x646c ret:0x7f84c663e280
  8426 ms  0x646c PK11_DeriveWithFlags()
  8426 ms  0x646c basekey:0x7f84d79fef00
  8426 ms     | 0x646c PK11_DeriveWithTemplate()
  8426 ms  0x646c ret:0x7f84d79fee80
  8426 ms  0x646c PK11_Derive()
  8426 ms  0x646c basekey:0x7f84c663d080
  8426 ms     | 0x646c PK11_DeriveWithTemplate()
  8426 ms  0x646c ret:0x7f84c6881f00
  8427 ms  0x646c PK11_DeriveWithFlags()
  8427 ms  0x646c basekey:0x7f84c663e280
  8427 ms     | 0x646c PK11_DeriveWithTemplate()
  8427 ms  0x646c ret:0x7f84d79fef00
  8427 ms  0x646c PK11_DeriveWithFlags()
  8427 ms  0x646c basekey:0x7f84c663e280
  8427 ms     | 0x646c PK11_DeriveWithTemplate()
  8427 ms  0x646c ret:0x7f84d79fee80
  8428 ms  0x646c PK11_DeriveWithFlags()
  8428 ms  0x646c basekey:0x7f84c663e280
  8428 ms     | 0x646c PK11_DeriveWithTemplate()
  8428 ms  0x646c ret:0x7f84d79fee80
  8428 ms  0x646c PR_Connect()
  8428 ms  0x646c fd:0x7f84d8ce8190
           /* TID 0x6474 */
  8486 ms  0x6474 PR_Close()
  8486 ms  0x6474 fd:0x7f84c6878e50
           /* TID 0x6505 */
  8486 ms  0x6505 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8486 ms  0x6505 ret:0x0
           /* TID 0x646c */
  8486 ms  0x646c SSL_AuthCertificateComplete()
  8486 ms  0x646c fd:0x7f84c6670af0
  8486 ms  0x646c err:0x0
  8486 ms     | 0x646c PK11_DeriveWithFlags()
  8486 ms     | 0x646c basekey:0x7f84d8c4d400
  8486 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8486 ms     | 0x646c ret:0x7f84d79fee80
  8486 ms     | 0x646c PK11_DeriveWithFlags()
  8486 ms     | 0x646c basekey:0x7f84d8c4d400
  8487 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8487 ms     | 0x646c ret:0x7f84c663d080
  8487 ms     | 0x646c PK11_DeriveWithFlags()
  8487 ms     | 0x646c basekey:0x7f84d8c4d400
  8487 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8487 ms     | 0x646c ret:0x7f84c687bf80
  8487 ms     | 0x646c PK11_DeriveWithFlags()
  8487 ms     | 0x646c basekey:0x7f84d81f2a80
  8487 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8487 ms     | 0x646c ret:0x7f84c663d100
  8487 ms     | 0x646c PK11_DeriveWithFlags()
  8487 ms     | 0x646c basekey:0x7f84d81f2a80
  8487 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8487 ms     | 0x646c ret:0x7f84c663d180
  8487 ms     | 0x646c PK11_DeriveWithFlags()
  8487 ms     | 0x646c basekey:0x7f84c663d080
  8487 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8487 ms     | 0x646c ret:0x7f84c663d180
  8487 ms     | 0x646c PK11_DeriveWithFlags()
  8487 ms     | 0x646c basekey:0x7f84c663d080
  8487 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8487 ms     | 0x646c ret:0x7f84c6881500
  8487 ms     | 0x646c PK11_DeriveWithFlags()
  8487 ms     | 0x646c basekey:0x7f84d81f2a80
  8487 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8487 ms     | 0x646c ret:0x7f84d81f2e80
  8487 ms     | 0x646c PK11_Encrypt()
  8487 ms     | 0x646c symkey:0x7f84c663d100
  8487 ms     | 0x646c PK11_DeriveWithFlags()
  8487 ms     | 0x646c basekey:0x7f84d79fee80
  8487 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8487 ms     | 0x646c ret:0x7f84d81f2e80
  8487 ms     | 0x646c PK11_DeriveWithFlags()
  8487 ms     | 0x646c basekey:0x7f84d79fee80
  8487 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8487 ms     | 0x646c ret:0x7f84c6881500
  8487 ms     | 0x646c PK11_DeriveWithFlags()
  8487 ms     | 0x646c basekey:0x7f84d8c4d400
  8487 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8487 ms     | 0x646c ret:0x7f84c663d100
  8487 ms     | 0x646c SECKEY_DestroyPrivateKey()
  8487 ms     | 0x646c privk:0x7f84c6652020::7f84c6652020  c0 59 8c d7                                      .Y..
  8487 ms     | 0x646c privk:0x7f84c6652020::7f84c6652020  e5 e5 e5 e5                                      ....
  8487 ms     | 0x646c SECKEY_DestroyPrivateKey()
  8487 ms     | 0x646c privk:0x7f84c6610820::7f84c6610820  00 06 6c c6                                      ..l.
  8487 ms     | 0x646c privk:0x7f84c6610820::7f84c6610820  e5 e5 e5 e5                                      ....
  8488 ms  0x646c PK11_Encrypt()
  8488 ms  0x646c symkey:0x7f84d81f2e80
  8488 ms  0x646c PK11_Encrypt()
  8488 ms  0x646c symkey:0x7f84d81f2e80
  8488 ms  0x646c PK11_Encrypt()
  8488 ms  0x646c symkey:0x7f84d81f2e80
           /* TID 0x6474 */
  8502 ms  0x6474 PR_Close()
  8502 ms  0x6474 fd:0x7f84c66700a0
           /* TID 0x6507 */
  8502 ms  0x6507 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8502 ms  0x6507 ret:0x0
           /* TID 0x646c */
  8503 ms  0x646c SSL_AuthCertificateComplete()
  8503 ms  0x646c fd:0x7f84c68789a0
  8503 ms  0x646c err:0x0
  8503 ms     | 0x646c PK11_DeriveWithFlags()
  8503 ms     | 0x646c basekey:0x7f84d79fec80
  8503 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8503 ms     | 0x646c ret:0x7f84c6a9c300
  8503 ms     | 0x646c PK11_DeriveWithFlags()
  8503 ms     | 0x646c basekey:0x7f84d79fec80
  8503 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8503 ms     | 0x646c ret:0x7f84d81f2a80
  8503 ms     | 0x646c PK11_DeriveWithFlags()
  8503 ms     | 0x646c basekey:0x7f84d79fec80
  8503 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8503 ms     | 0x646c ret:0x7f84d8c4d400
  8503 ms     | 0x646c PK11_DeriveWithFlags()
  8503 ms     | 0x646c basekey:0x7f84d81f2f00
  8503 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8503 ms     | 0x646c ret:0x7f84c6881500
  8503 ms     | 0x646c PK11_DeriveWithFlags()
  8503 ms     | 0x646c basekey:0x7f84d81f2f00
  8503 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8503 ms     | 0x646c ret:0x7f84c669da00
  8503 ms     | 0x646c PK11_DeriveWithFlags()
  8503 ms     | 0x646c basekey:0x7f84d81f2a80
  8503 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8503 ms     | 0x646c ret:0x7f84c669da00
  8503 ms     | 0x646c PK11_DeriveWithFlags()
  8503 ms     | 0x646c basekey:0x7f84d81f2a80
  8503 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8503 ms     | 0x646c ret:0x7f84d8e60780
  8503 ms     | 0x646c PK11_DeriveWithFlags()
  8503 ms     | 0x646c basekey:0x7f84d81f2f00
  8503 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8503 ms     | 0x646c ret:0x7f84c6882c00
  8503 ms     | 0x646c PK11_Encrypt()
  8503 ms     | 0x646c symkey:0x7f84c6881500
  8503 ms     | 0x646c PK11_DeriveWithFlags()
  8503 ms     | 0x646c basekey:0x7f84c6a9c300
  8503 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8503 ms     | 0x646c ret:0x7f84c6882c00
  8503 ms     | 0x646c PK11_DeriveWithFlags()
  8503 ms     | 0x646c basekey:0x7f84c6a9c300
  8503 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8503 ms     | 0x646c ret:0x7f84d8e60780
  8503 ms     | 0x646c PK11_DeriveWithFlags()
  8503 ms     | 0x646c basekey:0x7f84d79fec80
  8503 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8503 ms     | 0x646c ret:0x7f84c6881500
  8503 ms     | 0x646c SECKEY_DestroyPrivateKey()
  8503 ms     | 0x646c privk:0x7f84c6a07020::7f84c6a07020  e0 7c 94 d7                                      .|..
  8503 ms     | 0x646c privk:0x7f84c6a07020::7f84c6a07020  e5 e5 e5 e5                                      ....
  8504 ms     | 0x646c SECKEY_DestroyPrivateKey()
  8504 ms     | 0x646c privk:0x7f84c6660820::7f84c6660820  60 7a 94 d7                                      `z..
  8504 ms     | 0x646c privk:0x7f84c6660820::7f84c6660820  e5 e5 e5 e5                                      ....
  8504 ms  0x646c PK11_Encrypt()
  8504 ms  0x646c symkey:0x7f84c6882c00
  8504 ms  0x646c PK11_Encrypt()
  8504 ms  0x646c symkey:0x7f84c6882c00
  8504 ms  0x646c PK11_Encrypt()
  8504 ms  0x646c symkey:0x7f84c6882c00
  8525 ms  0x646c PK11_DeriveWithFlags()
  8525 ms  0x646c basekey:0x7f84c663d100
  8525 ms     | 0x646c PK11_DeriveWithTemplate()
  8525 ms  0x646c ret:0x7f84d81f2d00
  8525 ms  0x646c PK11_DeriveWithFlags()
  8525 ms  0x646c basekey:0x7f84c663d100
  8525 ms     | 0x646c PK11_DeriveWithTemplate()
  8525 ms  0x646c ret:0x7f84d81f2d00
  8525 ms  0x646c PK11_Encrypt()
  8525 ms  0x646c symkey:0x7f84d81f2e80
  8541 ms  0x646c PK11_DeriveWithFlags()
  8541 ms  0x646c basekey:0x7f84c6881500
  8541 ms     | 0x646c PK11_DeriveWithTemplate()
  8541 ms  0x646c ret:0x7f84d81f2d00
  8541 ms  0x646c PK11_DeriveWithFlags()
  8541 ms  0x646c basekey:0x7f84c6881500
  8541 ms     | 0x646c PK11_DeriveWithTemplate()
  8541 ms  0x646c ret:0x7f84d81f2d00
  8541 ms  0x646c PK11_Encrypt()
  8541 ms  0x646c symkey:0x7f84c6882c00
           /* TID 0x6487 */
  8553 ms  0x6487 PR_Close()
  8553 ms  0x6487 fd:0x7f84c6878d60
           /* TID 0x6461 */
  8554 ms  0x6461 PR_Close()
  8554 ms  0x6461 fd:0x7f84c6878df0
  8554 ms  0x6461 PR_Close()
  8554 ms  0x6461 fd:0x7f84d8e14a00
           /* TID 0x6487 */
  8555 ms  0x6487 PR_Close()
  8555 ms  0x6487 fd:0x7f84c6878d60
  8560 ms  0x6487 PR_Close()
  8560 ms  0x6487 fd:0x7f84d7f0b220
           /* TID 0x646c */
  8563 ms  0x646c PK11_Encrypt()
  8563 ms  0x646c symkey:0x7f84d81f2e80
           /* TID 0x6487 */
  8598 ms  0x6487 PR_Close()
  8598 ms  0x6487 fd:0x7f84c6670520
           /* TID 0x6474 */
  8599 ms  0x6474 PR_Close()
  8599 ms  0x6474 fd:0x7f84c66708b0
  8601 ms  0x6474 PR_Close()
  8601 ms  0x6474 fd:0x7f84c66708b0
           /* TID 0x646c */
  8602 ms  0x646c PK11_Encrypt()
  8602 ms  0x646c symkey:0x7f84c6882c00
           /* TID 0x6487 */
  8610 ms  0x6487 PR_Close()
  8610 ms  0x6487 fd:0x7f84da58ee50
           /* TID 0x6474 */
  8617 ms  0x6474 PR_Close()
  8617 ms  0x6474 fd:0x7f84c6670520
           /* TID 0x6508 */
  8617 ms  0x6508 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8617 ms  0x6508 ret:0x0
           /* TID 0x646c */
  8617 ms  0x646c SSL_AuthCertificateComplete()
  8617 ms  0x646c fd:0x7f84d7f0beb0
  8617 ms  0x646c err:0x0
  8617 ms     | 0x646c PK11_DeriveWithFlags()
  8617 ms     | 0x646c basekey:0x7f84c6881f00
  8617 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8617 ms     | 0x646c ret:0x7f84d81f2d00
  8617 ms     | 0x646c PK11_DeriveWithFlags()
  8617 ms     | 0x646c basekey:0x7f84c6881f00
  8617 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8617 ms     | 0x646c ret:0x7f84d81f2f00
  8617 ms     | 0x646c PK11_DeriveWithFlags()
  8617 ms     | 0x646c basekey:0x7f84c6881f00
  8617 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8617 ms     | 0x646c ret:0x7f84d79fec80
  8617 ms     | 0x646c PK11_DeriveWithFlags()
  8617 ms     | 0x646c basekey:0x7f84c6882b00
  8617 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8618 ms     | 0x646c ret:0x7f84d8e60780
  8618 ms     | 0x646c PK11_DeriveWithFlags()
  8618 ms     | 0x646c basekey:0x7f84c6882b00
  8618 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8618 ms     | 0x646c ret:0x7f84d93fb780
  8618 ms     | 0x646c PK11_DeriveWithFlags()
  8618 ms     | 0x646c basekey:0x7f84d81f2f00
  8618 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8618 ms     | 0x646c ret:0x7f84d93fb780
  8618 ms     | 0x646c PK11_DeriveWithFlags()
  8618 ms     | 0x646c basekey:0x7f84d81f2f00
  8618 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8618 ms     | 0x646c ret:0x7f84c663d700
  8618 ms     | 0x646c PK11_DeriveWithFlags()
  8618 ms     | 0x646c basekey:0x7f84c6882b00
  8618 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8618 ms     | 0x646c ret:0x7f84d79fef00
  8618 ms     | 0x646c PK11_Encrypt()
  8618 ms     | 0x646c symkey:0x7f84d8e60780
  8618 ms     | 0x646c PK11_DeriveWithFlags()
  8618 ms     | 0x646c basekey:0x7f84d81f2d00
  8618 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8618 ms     | 0x646c ret:0x7f84d79fef00
  8618 ms     | 0x646c PK11_DeriveWithFlags()
  8618 ms     | 0x646c basekey:0x7f84d81f2d00
  8618 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8618 ms     | 0x646c ret:0x7f84c663d700
  8618 ms     | 0x646c PK11_DeriveWithFlags()
  8618 ms     | 0x646c basekey:0x7f84c6881f00
  8618 ms     |    | 0x646c PK11_DeriveWithTemplate()
  8618 ms     | 0x646c ret:0x7f84d8e60780
  8618 ms     | 0x646c SECKEY_DestroyPrivateKey()
  8618 ms     | 0x646c privk:0x7f84d7fa5820::7f84d7fa5820  50 11 cb d8                                      P...
  8618 ms     | 0x646c privk:0x7f84d7fa5820::7f84d7fa5820  e5 e5 e5 e5                                      ....
  8618 ms     | 0x646c SECKEY_DestroyPrivateKey()
  8618 ms     | 0x646c privk:0x7f84d7936020::7f84d7936020  c0 8e c2 d8                                      ....
  8618 ms     | 0x646c privk:0x7f84d7936020::7f84d7936020  e5 e5 e5 e5                                      ....
  8619 ms  0x646c PK11_Encrypt()
  8619 ms  0x646c symkey:0x7f84d79fef00
  8619 ms  0x646c PK11_Encrypt()
  8619 ms  0x646c symkey:0x7f84d79fef00
  8619 ms  0x646c PK11_Encrypt()
  8619 ms  0x646c symkey:0x7f84d79fef00
  8619 ms  0x646c PK11_Encrypt()
  8619 ms  0x646c symkey:0x7f84d79fef00
  8619 ms  0x646c PK11_Encrypt()
  8619 ms  0x646c symkey:0x7f84d79fef00
  8619 ms  0x646c PK11_Encrypt()
  8619 ms  0x646c symkey:0x7f84d79fef00
  8620 ms  0x646c PK11_Encrypt()
  8620 ms  0x646c symkey:0x7f84d79fef00
  8620 ms  0x646c PK11_Encrypt()
  8620 ms  0x646c symkey:0x7f84d79fef00
  8620 ms  0x646c PK11_Encrypt()
  8620 ms  0x646c symkey:0x7f84d79fef00
  8620 ms  0x646c PK11_Encrypt()
  8620 ms  0x646c symkey:0x7f84d79fef00
  8620 ms  0x646c PK11_Encrypt()
  8620 ms  0x646c symkey:0x7f84d79fef00
  8620 ms  0x646c PK11_Encrypt()
  8620 ms  0x646c symkey:0x7f84d79fef00
  8620 ms  0x646c PK11_Encrypt()
  8620 ms  0x646c symkey:0x7f84d79fef00
  8620 ms  0x646c PK11_Encrypt()
  8620 ms  0x646c symkey:0x7f84d79fef00
  8620 ms  0x646c PK11_Encrypt()
  8620 ms  0x646c symkey:0x7f84d79fef00
  8620 ms  0x646c PK11_Encrypt()
  8620 ms  0x646c symkey:0x7f84d79fef00
  8621 ms  0x646c PK11_Encrypt()
  8621 ms  0x646c symkey:0x7f84d79fef00
  8621 ms  0x646c PK11_Encrypt()
  8621 ms  0x646c symkey:0x7f84d79fef00
  8621 ms  0x646c PK11_Encrypt()
  8621 ms  0x646c symkey:0x7f84d79fef00
  8622 ms  0x646c PK11_Encrypt()
  8622 ms  0x646c symkey:0x7f84d79fef00
  8622 ms  0x646c PK11_Encrypt()
  8622 ms  0x646c symkey:0x7f84d79fef00
  8622 ms  0x646c PK11_Encrypt()
  8622 ms  0x646c symkey:0x7f84d79fef00
  8622 ms  0x646c PK11_Encrypt()
  8622 ms  0x646c symkey:0x7f84d79fef00
  8623 ms  0x646c PK11_Encrypt()
  8623 ms  0x646c symkey:0x7f84d79fef00
  8624 ms  0x646c PK11_Encrypt()
  8624 ms  0x646c symkey:0x7f84c6882c00
  8624 ms  0x646c PK11_Encrypt()
  8624 ms  0x646c symkey:0x7f84d79fef00
  8624 ms  0x646c PK11_Encrypt()
  8624 ms  0x646c symkey:0x7f84d81f2e80
           /* TID 0x6487 */
  8625 ms  0x6487 PR_Close()
  8625 ms  0x6487 fd:0x7f84c6682fa0
           /* TID 0x646c */
  8625 ms  0x646c PR_Close()
  8625 ms  0x646c fd:0x7f84d8ce8190
  8625 ms  0x646c PR_Close()
  8625 ms  0x646c fd:0x7f84d7f0beb0
  8625 ms     | 0x646c PK11_Encrypt()
  8625 ms     | 0x646c symkey:0x7f84d79fef00
  8625 ms  0x646c PR_Close()
  8625 ms  0x646c fd:0x7f84d79b9df0
  8625 ms  0x646c PR_Close()
  8625 ms  0x646c fd:0x7f84d79f6c10
  8626 ms  0x646c PR_Close()
  8626 ms  0x646c fd:0x7f84c68789a0
  8626 ms     | 0x646c PK11_Encrypt()
  8626 ms     | 0x646c symkey:0x7f84c6882c00
  8627 ms  0x646c PR_Close()
  8627 ms  0x646c fd:0x7f84c6670af0
  8627 ms     | 0x646c PK11_Encrypt()
  8627 ms     | 0x646c symkey:0x7f84d81f2e80
  8636 ms  0x646c PR_Close()
  8636 ms  0x646c fd:0x7f84d7f0bd00
           /* TID 0x64c4 */
  8637 ms  0x64c4 PR_Close()
  8637 ms  0x64c4 fd:0x7f84c6682160
  8637 ms  0x64c4 PR_Close()
  8637 ms  0x64c4 fd:0x7f84c6682160
  8637 ms  0x64c4 PR_Close()
  8637 ms  0x64c4 fd:0x7f84c6682160
  8637 ms  0x64c4 PR_Close()
  8637 ms  0x64c4 fd:0x7f84c6878100
           /* TID 0x6487 */
  8638 ms  0x6487 PR_Close()
  8638 ms  0x6487 fd:0x7f84c6878100
           /* TID 0x6474 */
  8647 ms  0x6474 PR_Close()
  8647 ms  0x6474 fd:0x7f84c66822e0
  8647 ms  0x6474 PR_Close()
  8647 ms  0x6474 fd:0x7f84c66824f0
           /* TID 0x6466 */
  8664 ms  0x6466 PR_Close()
  8664 ms  0x6466 fd:0x7f84d7f0ba60
           /* TID 0x6461 */
  8666 ms  0x6461 PR_Close()
  8666 ms  0x6461 fd:0x7f84c6878df0
  8666 ms  0x6461 PR_Close()
  8666 ms  0x6461 fd:0x7f84c68785b0
  8676 ms  0x6461 PR_Close()
  8676 ms  0x6461 fd:0x7f84c6878610
  8676 ms  0x6461 PR_Close()
  8676 ms  0x6461 fd:0x7f84c68c1cd0
           /* TID 0x6487 */
  8678 ms  0x6487 PR_Close()
  8678 ms  0x6487 fd:0x7f84c68c1940
           /* TID 0x6466 */
  8681 ms  0x6466 PR_Close()
  8681 ms  0x6466 fd:0x7f84ddb43820
           /* TID 0x6487 */
  8682 ms  0x6487 PR_Close()
  8682 ms  0x6487 fd:0x7f84c68c16d0
           /* TID 0x64cd */
  8684 ms  0x64cd PR_Close()
  8684 ms  0x64cd fd:0x7f84c68ddd00
           /* TID 0x6487 */
  8714 ms  0x6487 PR_Close()
  8714 ms  0x6487 fd:0x7f84c6670370
  8719 ms  0x6487 PR_Close()
  8719 ms  0x6487 fd:0x7f84c6670370
  8724 ms  0x6487 PR_Close()
  8724 ms  0x6487 fd:0x7f84c66707f0
  8726 ms  0x6487 PR_Close()
  8726 ms  0x6487 fd:0x7f84c6670850
  8739 ms  0x6487 PR_Close()
  8739 ms  0x6487 fd:0x7f84c6670df0
  8744 ms  0x6487 PR_Close()
  8744 ms  0x6487 fd:0x7f84c6878220
  8751 ms  0x6487 PR_Close()
  8751 ms  0x6487 fd:0x7f84c68788b0
  8760 ms  0x6487 PR_Close()
  8760 ms  0x6487 fd:0x7f84c6878bb0
  8762 ms  0x6487 PR_Close()
  8762 ms  0x6487 fd:0x7f84c6878bb0
           /* TID 0x6461 */
  8919 ms  0x6461 PR_Close()
  8919 ms  0x6461 fd:0x7f84c6670130
  8919 ms  0x6461 PR_Close()
  8919 ms  0x6461 fd:0x7f84c6670130
  8924 ms  0x6461 PR_Close()
  8924 ms  0x6461 fd:0x7f84ffdda130
  8924 ms  0x6461 PR_Close()
  8924 ms  0x6461 fd:0x7f84ffdda190
Process terminated
