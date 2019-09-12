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
xmlExpExpDerive: Loaded handler at "/home/blockio/binrv/__handlers__/libxml2.so.2.9.4/xmlExpExpDerive.js"
xmlExpStringDerive: Loaded handler at "/home/blockio/binrv/__handlers__/libxml2.so.2.9.4/xmlExpStringDerive.js"
PK11_PubDeriveWithKDF: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_PubDeriveWithKDF.js"
PK11_DeriveWithFlags: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_DeriveWithFlags.js"
PK11_PubDerive: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_PubDerive.js"
PK11_Derive: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_Derive.js"
PK11_DeriveWithFlagsPerm: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_DeriveWithFlagsPerm.js"
PK11_DeriveWithTemplate: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_DeriveWithTemplate.js"
vaDeriveImage: Loaded handler at "/home/blockio/binrv/__handlers__/libva.so.2.100.0/vaDeriveImage.js"
PK11_Encrypt: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_Encrypt.js"
PR_Send: Loaded handler at "/home/blockio/binrv/__handlers__/libnspr4.so/PR_Send.js"
PR_Close: Loaded handler at "/home/blockio/binrv/__handlers__/libnspr4.so/PR_Close.js"
EC_ValidatePublicKey: Loaded handler at "/home/blockio/binrv/__handlers__/libfreeblpriv3.so/EC_ValidatePublicKey.js"
SECKEY_ECParamsToBasePointOrderLen: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/SECKEY_ECParamsToBasePointOrderLen.js"
SECKEY_ECParamsToKeySize: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/SECKEY_ECParamsToKeySize.js"
Started tracing 27 functions. Press Ctrl+C to stop.
           /* TID 0x2ab6 */
   499 ms  0x2ab6 SSL_ImportFD()
   499 ms  0x2ab6 ret:0x7efdbf5235b0
   499 ms  0x2ab6 SSL_AuthCertificateHook()
   499 ms  0x2ab6 fd:0x7efdbf5235b0
   499 ms  0x2ab6 ret:0x0
   499 ms  0x2ab6 PR_Connect()
   499 ms  0x2ab6 fd:0x7efdbf5235b0
   653 ms  0x2ab6 SECKEY_CreateECPrivateKey()
   653 ms  0x2ab6 cx:0x7efdbf67df88
   655 ms     | 0x2ab6 EC_ValidatePublicKey()
   655 ms     | 0x2ab6 ret:0x0
   656 ms  0x2ab6 ret:0x7efdbbd3c020::7efdbbd3c020  f0 81 5d c4                                      ..].
   656 ms  0x2ab6 SECKEY_CreateECPrivateKey()
   656 ms  0x2ab6 cx:0x7efdbf67df88
   657 ms     | 0x2ab6 EC_ValidatePublicKey()
   666 ms     | 0x2ab6 ret:0x0
   666 ms  0x2ab6 ret:0x7efdbbd3e020::7efdbbd3e020  40 ac 5e c4                                      @.^.
   822 ms  SECKEY_ECParamsToKeySize()
   822 ms  0x2ab6 ret:0x100
   822 ms  0x2ab6 SECKEY_CreateECPrivateKey()
   822 ms  0x2ab6 cx:0x7efdbf67df88
   823 ms     | 0x2ab6 EC_ValidatePublicKey()
   825 ms     | 0x2ab6 ret:0x0
   826 ms  0x2ab6 ret:0x7efdbbd41020::7efdbbd41020  90 27 de bb                                      .'..
   826 ms  0x2ab6 PK11_PubDeriveWithKDF()
   826 ms  0x2ab6 seckey:0x7efdbbd41020
   826 ms     | 0x2ab6 EC_ValidatePublicKey()
   828 ms     | 0x2ab6 ret:0x0
   832 ms  0x2ab6 ret:0x7efdbe1d0f00
   832 ms  0x2ab6 PK11_DeriveWithFlags()
   832 ms  0x2ab6 basekey:0x7efdbe1d0f00
   832 ms     | 0x2ab6 PK11_DeriveWithTemplate()
   832 ms  0x2ab6 ret:0x7efdbe1d0e00
   832 ms  0x2ab6 PK11_Derive()
   832 ms  0x2ab6 basekey:0x7efdbe1d0e00
   832 ms     | 0x2ab6 PK11_DeriveWithTemplate()
   832 ms  0x2ab6 ret:0x7efdbe15da00
   832 ms  0x2ab6 SECKEY_DestroyPrivateKey()
   832 ms  0x2ab6 privk:0x7efdbbd41020::7efdbbd41020  90 27 de bb                                      .'..
   832 ms  0x2ab6 privk:0x7efdbbd41020::7efdbbd41020  e5 e5 e5 e5                                      ....
   833 ms  0x2ab6 PK11_Encrypt()
   833 ms  0x2ab6 symkey:0x7efdba2fcc00
   834 ms  0x2ab6 SSL_AuthCertificateComplete()
   834 ms  0x2ab6 fd:0x7efdbf5235b0
   834 ms  0x2ab6 err:0xffffe00d
   834 ms     | 0x2ab6 PK11_Encrypt()
   834 ms     | 0x2ab6 symkey:0x7efdba2fcc00
   842 ms  0x2ab6 PR_Close()
   842 ms  0x2ab6 fd:0x7efdbf5235b0
   842 ms     | 0x2ab6 SECKEY_DestroyPrivateKey()
   842 ms     | 0x2ab6 privk:0x7efdbbd3e020::7efdbbd3e020  40 ac 5e c4                                      @.^.
   843 ms     | 0x2ab6 privk:0x7efdbbd3e020::7efdbbd3e020  e5 e5 e5 e5                                      ....
   843 ms     | 0x2ab6 SECKEY_DestroyPrivateKey()
   843 ms     | 0x2ab6 privk:0x7efdbbd3c020::7efdbbd3c020  f0 81 5d c4                                      ..].
   843 ms     | 0x2ab6 privk:0x7efdbbd3c020::7efdbbd3c020  e5 e5 e5 e5                                      ....
