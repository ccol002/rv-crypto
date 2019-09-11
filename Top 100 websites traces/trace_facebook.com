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
           /* TID 0x6528 */
   181 ms  0x6528 PR_Close()
   181 ms  0x6528 fd:0x7f9f44e28d00
           /* TID 0x6520 */
   192 ms  0x6520 SSL_ImportFD()
   192 ms  0x6520 ret:0x7f9f44e2f190
   192 ms  0x6520 SSL_AuthCertificateHook()
   192 ms  0x6520 fd:0x7f9f44e2f190
   192 ms  0x6520 ret:0x0
   192 ms  0x6520 PR_Connect()
   192 ms  0x6520 fd:0x7f9f44e2f190
   218 ms  0x6520 SECKEY_CreateECPrivateKey()
   218 ms  0x6520 cx:0x7f9f44e35e28
   219 ms     | 0x6520 EC_ValidatePublicKey()
   219 ms     | 0x6520 ret:0x0
   219 ms  0x6520 ret:0x7f9f44e1c020::7f9f44e1c020  b0 c5 ea 44                                      ...D
   219 ms  0x6520 SECKEY_CreateECPrivateKey()
   219 ms  0x6520 cx:0x7f9f44e35e28
   220 ms     | 0x6520 EC_ValidatePublicKey()
   222 ms     | 0x6520 ret:0x0
   222 ms  0x6520 ret:0x7f9f44e1e020::7f9f44e1e020  90 c7 ea 44                                      ...D
   273 ms  SECKEY_ECParamsToKeySize()
   273 ms  0x6520 ret:0x100
   273 ms  0x6520 SECKEY_CreateECPrivateKey()
   273 ms  0x6520 cx:0x7f9f44e35e28
   275 ms     | 0x6520 EC_ValidatePublicKey()
   279 ms     | 0x6520 ret:0x0
   279 ms  0x6520 ret:0x7f9f44e24820::7f9f44e24820  e0 f2 ef 44                                      ...D
   279 ms  0x6520 PK11_PubDeriveWithKDF()
   279 ms  0x6520 seckey:0x7f9f44e24820
   280 ms     | 0x6520 EC_ValidatePublicKey()
           /* TID 0x657b */
   280 ms  0x657b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   281 ms  0x657b ret:0x0
           /* TID 0x6520 */
   284 ms     | 0x6520 ret:0x0
   288 ms  0x6520 ret:0x7f9f4510d180
   288 ms  0x6520 PK11_DeriveWithFlags()
   288 ms  0x6520 basekey:0x7f9f4510d180
   288 ms     | 0x6520 PK11_DeriveWithTemplate()
   288 ms  0x6520 ret:0x7f9f44ec0e00
   288 ms  0x6520 PK11_Derive()
   288 ms  0x6520 basekey:0x7f9f44ec0e00
   288 ms     | 0x6520 PK11_DeriveWithTemplate()
   289 ms  0x6520 ret:0x7f9f44ec0f80
   289 ms  0x6520 SECKEY_DestroyPrivateKey()
   289 ms  0x6520 privk:0x7f9f44e24820::7f9f44e24820  e0 f2 ef 44                                      ...D
   289 ms  0x6520 privk:0x7f9f44e24820::7f9f44e24820  e5 e5 e5 e5                                      ....
   289 ms  0x6520 PK11_Encrypt()
   289 ms  0x6520 symkey:0x7f9f44ec1100
   289 ms  0x6520 SSL_AuthCertificateComplete()
   289 ms  0x6520 fd:0x7f9f44e2f190
   289 ms  0x6520 err:0x0
   290 ms  0x6520 PK11_Encrypt()
   290 ms  0x6520 symkey:0x7f9f44ec1100
   341 ms  0x6520 SECKEY_DestroyPrivateKey()
   341 ms  0x6520 privk:0x7f9f44e1e020::7f9f44e1e020  90 c7 ea 44                                      ...D
   341 ms  0x6520 privk:0x7f9f44e1e020::7f9f44e1e020  e5 e5 e5 e5                                      ....
   341 ms  0x6520 SECKEY_DestroyPrivateKey()
   341 ms  0x6520 privk:0x7f9f44e1c020::7f9f44e1c020  b0 c5 ea 44                                      ...D
   341 ms  0x6520 privk:0x7f9f44e1c020::7f9f44e1c020  e5 e5 e5 e5                                      ....
   345 ms  0x6520 PK11_Encrypt()
   345 ms  0x6520 symkey:0x7f9f44ec1100
   373 ms  0x6520 PK11_Encrypt()
   373 ms  0x6520 symkey:0x7f9f44ec1100
   402 ms  0x6520 PK11_Encrypt()
   402 ms  0x6520 symkey:0x7f9f44ec1100
   431 ms  0x6520 PK11_Encrypt()
   431 ms  0x6520 symkey:0x7f9f44ec1100
   546 ms  0x6520 PK11_Encrypt()
   546 ms  0x6520 symkey:0x7f9f44ec1100
   578 ms  0x6520 PK11_Encrypt()
   578 ms  0x6520 symkey:0x7f9f44ec1100
   609 ms  0x6520 PK11_Encrypt()
   609 ms  0x6520 symkey:0x7f9f44ec1100
           /* TID 0x6573 */
   638 ms  0x6573 PR_Close()
   638 ms  0x6573 fd:0x7f9f44b22280
   638 ms  0x6573 PR_Close()
   638 ms  0x6573 fd:0x7f9f44b222e0
   638 ms  0x6573 PR_Close()
   638 ms  0x6573 fd:0x7f9f44b22280
   638 ms  0x6573 PR_Close()
   638 ms  0x6573 fd:0x7f9f44b222e0
   638 ms  0x6573 PR_Close()
   638 ms  0x6573 fd:0x7f9f44b22280
   638 ms  0x6573 PR_Close()
   638 ms  0x6573 fd:0x7f9f44b222e0
   638 ms  0x6573 PR_Close()
   638 ms  0x6573 fd:0x7f9f44b22280
   639 ms  0x6573 PR_Close()
   639 ms  0x6573 fd:0x7f9f44b222e0
   639 ms  0x6573 PR_Close()
   639 ms  0x6573 fd:0x7f9f44b22280
   639 ms  0x6573 PR_Close()
   639 ms  0x6573 fd:0x7f9f44b222e0
   639 ms  0x6573 PR_Close()
   639 ms  0x6573 fd:0x7f9f44b22280
   639 ms  0x6573 PR_Close()
   639 ms  0x6573 fd:0x7f9f44b222e0
   639 ms  0x6573 PR_Close()
   639 ms  0x6573 fd:0x7f9f44b22280
   639 ms  0x6573 PR_Close()
   639 ms  0x6573 fd:0x7f9f44b222e0
   639 ms  0x6573 PR_Close()
   639 ms  0x6573 fd:0x7f9f44b22280
   639 ms  0x6573 PR_Close()
   639 ms  0x6573 fd:0x7f9f44b222e0
   639 ms  0x6573 PR_Close()
   639 ms  0x6573 fd:0x7f9f44b22280
   639 ms  0x6573 PR_Close()
   639 ms  0x6573 fd:0x7f9f44b222e0
   639 ms  0x6573 PR_Close()
   639 ms  0x6573 fd:0x7f9f44b22280
   640 ms  0x6573 PR_Close()
   640 ms  0x6573 fd:0x7f9f44b222e0
   640 ms  0x6573 PR_Close()
   640 ms  0x6573 fd:0x7f9f44b22280
   640 ms  0x6573 PR_Close()
   640 ms  0x6573 fd:0x7f9f44b222e0
   640 ms  0x6573 PR_Close()
   640 ms  0x6573 fd:0x7f9f44b22280
   640 ms  0x6573 PR_Close()
   640 ms  0x6573 fd:0x7f9f44b222e0
   640 ms  0x6573 PR_Close()
   640 ms  0x6573 fd:0x7f9f44b22280
   640 ms  0x6573 PR_Close()
   640 ms  0x6573 fd:0x7f9f44b222e0
   640 ms  0x6573 PR_Close()
   640 ms  0x6573 fd:0x7f9f44b22280
   640 ms  0x6573 PR_Close()
   640 ms  0x6573 fd:0x7f9f44b222e0
   643 ms  0x6573 PR_Close()
   643 ms  0x6573 fd:0x7f9f44b22280
   644 ms  0x6573 PR_Close()
   644 ms  0x6573 fd:0x7f9f44b22250
   646 ms  0x6573 PR_Close()
   646 ms  0x6573 fd:0x7f9f44b22250
   647 ms  0x6573 PR_Close()
   647 ms  0x6573 fd:0x7f9f44b22280
   649 ms  0x6573 PR_Close()
   649 ms  0x6573 fd:0x7f9f44b22280
   649 ms  0x6573 PR_Close()
   649 ms  0x6573 fd:0x7f9f44b22280
   651 ms  0x6573 PR_Close()
   651 ms  0x6573 fd:0x7f9f44b22280
   651 ms  0x6573 PR_Close()
   651 ms  0x6573 fd:0x7f9f44b22280
   699 ms  0x6573 PR_Close()
   699 ms  0x6573 fd:0x7f9f44b22280
   700 ms  0x6573 PR_Close()
   700 ms  0x6573 fd:0x7f9f44b22280
   707 ms  0x6573 PR_Close()
   707 ms  0x6573 fd:0x7f9f44b22280
   707 ms  0x6573 PR_Close()
   707 ms  0x6573 fd:0x7f9f44b22280
   713 ms  0x6573 PR_Close()
   713 ms  0x6573 fd:0x7f9f44b22280
   713 ms  0x6573 PR_Close()
   713 ms  0x6573 fd:0x7f9f44b22280
   715 ms  0x6573 PR_Close()
   715 ms  0x6573 fd:0x7f9f44b22280
   715 ms  0x6573 PR_Close()
   715 ms  0x6573 fd:0x7f9f44b22280
           /* TID 0x6570 */
   716 ms  0x6570 PR_Close()
   716 ms  0x6570 fd:0x7f9f44b22280
   716 ms  0x6570 PR_Close()
   716 ms  0x6570 fd:0x7f9f44b22280
   716 ms  0x6570 PR_Close()
   716 ms  0x6570 fd:0x7f9f44b22280
   716 ms  0x6570 PR_Close()
   716 ms  0x6570 fd:0x7f9f44b22280
   716 ms  0x6570 PR_Close()
   716 ms  0x6570 fd:0x7f9f44b22280
   716 ms  0x6570 PR_Close()
   716 ms  0x6570 fd:0x7f9f44b22280
   716 ms  0x6570 PR_Close()
   716 ms  0x6570 fd:0x7f9f44b22280
   716 ms  0x6570 PR_Close()
   716 ms  0x6570 fd:0x7f9f44b22280
   716 ms  0x6570 PR_Close()
   716 ms  0x6570 fd:0x7f9f44b22280
   716 ms  0x6570 PR_Close()
   716 ms  0x6570 fd:0x7f9f44b22280
   716 ms  0x6570 PR_Close()
   716 ms  0x6570 fd:0x7f9f44b22280
   716 ms  0x6570 PR_Close()
   716 ms  0x6570 fd:0x7f9f44b22280
   716 ms  0x6570 PR_Close()
   716 ms  0x6570 fd:0x7f9f44b22280
   716 ms  0x6570 PR_Close()
   716 ms  0x6570 fd:0x7f9f44b22280
   716 ms  0x6570 PR_Close()
   716 ms  0x6570 fd:0x7f9f44b22280
           /* TID 0x6586 */
   727 ms  0x6586 PR_Close()
   727 ms  0x6586 fd:0x7f9f44b22280
   728 ms  0x6586 PR_Close()
   728 ms  0x6586 fd:0x7f9f44b22280
   757 ms  0x6586 PR_Close()
   757 ms  0x6586 fd:0x7f9f44b222b0
  2810 ms  0x6586 PR_Close()
  2810 ms  0x6586 fd:0x7f9f44b227c0
           /* TID 0x6528 */
  4184 ms  0x6528 PR_Close()
  4184 ms  0x6528 fd:0x7f9f44b227c0
  4184 ms  0x6528 PR_Close()
  4184 ms  0x6528 fd:0x7f9f44b22820
           /* TID 0x6520 */
  4417 ms  0x6520 SSL_ImportFD()
  4417 ms  0x6520 ret:0x7f9f33ea91f0
  4417 ms  0x6520 SSL_AuthCertificateHook()
  4417 ms  0x6520 fd:0x7f9f33ea91f0
  4417 ms  0x6520 ret:0x0
  4417 ms  0x6520 PR_Connect()
  4417 ms  0x6520 fd:0x7f9f33ea91f0
  4454 ms  0x6520 SECKEY_CreateECPrivateKey()
  4454 ms  0x6520 cx:0x7f9f44eb68c8
  4456 ms     | 0x6520 EC_ValidatePublicKey()
  4456 ms     | 0x6520 ret:0x0
  4456 ms  0x6520 ret:0x7f9f33ed7820::7f9f33ed7820  00 bb ef 33                                      ...3
  4456 ms  0x6520 SECKEY_CreateECPrivateKey()
  4456 ms  0x6520 cx:0x7f9f44eb68c8
  4457 ms     | 0x6520 EC_ValidatePublicKey()
  4461 ms     | 0x6520 ret:0x0
  4461 ms  0x6520 ret:0x7f9f33ed9820::7f9f33ed9820  d0 bd ef 33                                      ...3
  4499 ms  0x6520 PK11_Derive()
  4499 ms  0x6520 basekey:0x7f9f4510d180
  4499 ms     | 0x6520 PK11_DeriveWithTemplate()
  4499 ms  0x6520 ret:0x7f9f33efe580
  4499 ms  0x6520 PK11_PubDeriveWithKDF()
  4499 ms  0x6520 seckey:0x7f9f33ed7820
  4499 ms     | 0x6520 EC_ValidatePublicKey()
  4499 ms     | 0x6520 ret:0x0
  4500 ms  0x6520 ret:0x7f9f4510d180
  4500 ms  SECKEY_ECParamsToKeySize()
  4500 ms  0x6520 ret:0xff
  4500 ms  0x6520 PK11_DeriveWithFlags()
  4500 ms  0x6520 basekey:0x7f9f33efe580
  4500 ms     | 0x6520 PK11_DeriveWithTemplate()
  4500 ms  0x6520 ret:0x7f9f33efe880
  4500 ms  0x6520 PK11_Derive()
  4500 ms  0x6520 basekey:0x7f9f4510d180
  4500 ms     | 0x6520 PK11_DeriveWithTemplate()
  4500 ms  0x6520 ret:0x7f9f33efea80
  4501 ms  0x6520 PK11_DeriveWithFlags()
  4501 ms  0x6520 basekey:0x7f9f33efea80
  4501 ms     | 0x6520 PK11_DeriveWithTemplate()
  4501 ms  0x6520 ret:0x7f9f33efe580
  4501 ms  0x6520 PK11_DeriveWithFlags()
  4501 ms  0x6520 basekey:0x7f9f33efea80
  4501 ms     | 0x6520 PK11_DeriveWithTemplate()
  4501 ms  0x6520 ret:0x7f9f4510d180
  4501 ms  0x6520 PK11_DeriveWithFlags()
  4501 ms  0x6520 basekey:0x7f9f33efea80
  4501 ms     | 0x6520 PK11_DeriveWithTemplate()
  4501 ms  0x6520 ret:0x7f9f33efe880
  4501 ms  0x6520 PK11_Derive()
  4501 ms  0x6520 basekey:0x7f9f33efeb00
  4501 ms     | 0x6520 PK11_DeriveWithTemplate()
  4501 ms  0x6520 ret:0x7f9f33efeb80
  4501 ms  0x6520 PK11_DeriveWithFlags()
  4501 ms  0x6520 basekey:0x7f9f4510d180
  4501 ms     | 0x6520 PK11_DeriveWithTemplate()
  4501 ms  0x6520 ret:0x7f9f33efea80
  4501 ms  0x6520 PK11_DeriveWithFlags()
  4501 ms  0x6520 basekey:0x7f9f4510d180
  4501 ms     | 0x6520 PK11_DeriveWithTemplate()
  4501 ms  0x6520 ret:0x7f9f33efe880
  4503 ms  SECKEY_ECParamsToKeySize()
  4503 ms  0x6520 ret:0x100
  4503 ms  SECKEY_ECParamsToBasePointOrderLen()
  4503 ms  0x6520 ret:0x100
  4503 ms  SECKEY_ECParamsToBasePointOrderLen()
  4503 ms  0x6520 ret:0x100
  4503 ms  0x6520 EC_ValidatePublicKey()
  4507 ms  0x6520 ret:0x0
  4511 ms  0x6520 PK11_DeriveWithFlags()
  4511 ms  0x6520 basekey:0x7f9f4510d180
  4511 ms     | 0x6520 PK11_DeriveWithTemplate()
  4511 ms  0x6520 ret:0x7f9f33efe880
           /* TID 0x65b7 */
  4538 ms  0x65b7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4538 ms  0x65b7 ret:0x0
           /* TID 0x6528 */
  4540 ms  0x6528 PR_Close()
  4540 ms  0x6528 fd:0x7f9f33ea9dc0
           /* TID 0x6520 */
  4547 ms  0x6520 SSL_AuthCertificateComplete()
  4547 ms  0x6520 fd:0x7f9f33ea91f0
  4547 ms  0x6520 err:0x0
  4548 ms     | 0x6520 PK11_DeriveWithFlags()
  4548 ms     | 0x6520 basekey:0x7f9f33efeb80
  4548 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4548 ms     | 0x6520 ret:0x7f9f33efe880
  4548 ms     | 0x6520 PK11_DeriveWithFlags()
  4548 ms     | 0x6520 basekey:0x7f9f33efeb80
  4548 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4548 ms     | 0x6520 ret:0x7f9f33efeb00
  4548 ms     | 0x6520 PK11_DeriveWithFlags()
  4548 ms     | 0x6520 basekey:0x7f9f33efeb80
  4548 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4548 ms     | 0x6520 ret:0x7f9f33efed80
  4548 ms     | 0x6520 PK11_DeriveWithFlags()
  4548 ms     | 0x6520 basekey:0x7f9f33efe580
  4548 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4548 ms     | 0x6520 ret:0x7f9f33efee80
  4548 ms     | 0x6520 PK11_DeriveWithFlags()
  4548 ms     | 0x6520 basekey:0x7f9f33efe580
  4548 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4548 ms     | 0x6520 ret:0x7f9f33efef00
  4548 ms     | 0x6520 PK11_DeriveWithFlags()
  4548 ms     | 0x6520 basekey:0x7f9f33efeb00
  4548 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4548 ms     | 0x6520 ret:0x7f9f33efef00
  4548 ms     | 0x6520 PK11_DeriveWithFlags()
  4548 ms     | 0x6520 basekey:0x7f9f33efeb00
  4548 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4548 ms     | 0x6520 ret:0x7f9f33eff000
  4548 ms     | 0x6520 PK11_DeriveWithFlags()
  4548 ms     | 0x6520 basekey:0x7f9f33efe580
  4548 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4548 ms     | 0x6520 ret:0x7f9f33efea80
  4548 ms     | 0x6520 PK11_Encrypt()
  4548 ms     | 0x6520 symkey:0x7f9f33efee80
  4549 ms     | 0x6520 PK11_DeriveWithFlags()
  4549 ms     | 0x6520 basekey:0x7f9f33efe880
  4549 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4549 ms     | 0x6520 ret:0x7f9f33efea80
  4549 ms     | 0x6520 PK11_DeriveWithFlags()
  4549 ms     | 0x6520 basekey:0x7f9f33efe880
  4549 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4549 ms     | 0x6520 ret:0x7f9f33eff000
  4549 ms     | 0x6520 PK11_DeriveWithFlags()
  4549 ms     | 0x6520 basekey:0x7f9f33efeb80
  4549 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4549 ms     | 0x6520 ret:0x7f9f33efee80
  4549 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  4549 ms     | 0x6520 privk:0x7f9f33ed9820::7f9f33ed9820  d0 bd ef 33                                      ...3
  4549 ms     | 0x6520 privk:0x7f9f33ed9820::7f9f33ed9820  e5 e5 e5 e5                                      ....
  4549 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  4549 ms     | 0x6520 privk:0x7f9f33ed7820::7f9f33ed7820  00 bb ef 33                                      ...3
  4549 ms     | 0x6520 privk:0x7f9f33ed7820::7f9f33ed7820  e5 e5 e5 e5                                      ....
  4550 ms  0x6520 PK11_Encrypt()
  4550 ms  0x6520 symkey:0x7f9f33efea80
  4550 ms  0x6520 PK11_Encrypt()
  4550 ms  0x6520 symkey:0x7f9f33efea80
  4585 ms  0x6520 PK11_DeriveWithFlags()
  4585 ms  0x6520 basekey:0x7f9f33efee80
  4586 ms     | 0x6520 PK11_DeriveWithTemplate()
  4586 ms  0x6520 ret:0x7f9f4510d180
  4586 ms  0x6520 PK11_Encrypt()
  4586 ms  0x6520 symkey:0x7f9f33efea80
           /* TID 0x6537 */
  4736 ms  0x6537 PR_Close()
  4736 ms  0x6537 fd:0x7f9f33eaf0d0
           /* TID 0x6520 */
  4883 ms  0x6520 SSL_ImportFD()
  4883 ms  0x6520 ret:0x7f9f33cdeb20
  4883 ms  0x6520 SSL_AuthCertificateHook()
  4883 ms  0x6520 fd:0x7f9f33cdeb20
  4883 ms  0x6520 ret:0x0
  4883 ms  0x6520 PR_Connect()
  4883 ms  0x6520 fd:0x7f9f33cdeb20
  4884 ms  0x6520 SSL_ImportFD()
  4884 ms  0x6520 ret:0x7f9f33cdeb50
  4884 ms  0x6520 SSL_AuthCertificateHook()
  4884 ms  0x6520 fd:0x7f9f33cdeb50
  4884 ms  0x6520 ret:0x0
  4884 ms  0x6520 PR_Connect()
  4884 ms  0x6520 fd:0x7f9f33cdeb50
  4884 ms  0x6520 SSL_ImportFD()
  4884 ms  0x6520 ret:0x7f9f33cde850
  4884 ms  0x6520 SSL_AuthCertificateHook()
  4884 ms  0x6520 fd:0x7f9f33cde850
  4884 ms  0x6520 ret:0x0
  4884 ms  0x6520 PR_Connect()
  4884 ms  0x6520 fd:0x7f9f33cde850
  4884 ms  0x6520 SSL_ImportFD()
  4884 ms  0x6520 ret:0x7f9f33cde8e0
  4884 ms  0x6520 SSL_AuthCertificateHook()
  4884 ms  0x6520 fd:0x7f9f33cde8e0
  4884 ms  0x6520 ret:0x0
  4884 ms  0x6520 PR_Connect()
  4884 ms  0x6520 fd:0x7f9f33cde8e0
  4884 ms  0x6520 SSL_ImportFD()
  4884 ms  0x6520 ret:0x7f9f33cdeac0
  4884 ms  0x6520 SSL_AuthCertificateHook()
  4884 ms  0x6520 fd:0x7f9f33cdeac0
  4884 ms  0x6520 ret:0x0
  4884 ms  0x6520 PR_Connect()
  4884 ms  0x6520 fd:0x7f9f33cdeac0
  4921 ms  0x6520 SECKEY_CreateECPrivateKey()
  4921 ms  0x6520 cx:0x7f9f44eb7768
  4922 ms     | 0x6520 EC_ValidatePublicKey()
  4922 ms     | 0x6520 ret:0x0
  4922 ms  0x6520 ret:0x7f9f33e18820::7f9f33e18820  b0 4f ce 33                                      .O.3
  4922 ms  0x6520 SECKEY_CreateECPrivateKey()
  4922 ms  0x6520 cx:0x7f9f44eb7768
  4924 ms     | 0x6520 EC_ValidatePublicKey()
  4929 ms     | 0x6520 ret:0x0
  4929 ms  0x6520 ret:0x7f9f33e1a820::7f9f33e1a820  90 4c ce 33                                      .L.3
  4930 ms  0x6520 SECKEY_CreateECPrivateKey()
  4930 ms  0x6520 cx:0x7f9f44eb75c8
  4931 ms     | 0x6520 EC_ValidatePublicKey()
  4931 ms     | 0x6520 ret:0x0
  4931 ms  0x6520 ret:0x7f9f33e1d020::7f9f33e1d020  70 4e ce 33                                      pN.3
  4931 ms  0x6520 SECKEY_CreateECPrivateKey()
  4931 ms  0x6520 cx:0x7f9f44eb75c8
  4933 ms     | 0x6520 EC_ValidatePublicKey()
  4940 ms     | 0x6520 ret:0x0
  4940 ms  0x6520 ret:0x7f9f33e1f020::7f9f33e1f020  10 4f e2 33                                      .O.3
  4941 ms  0x6520 SECKEY_CreateECPrivateKey()
  4941 ms  0x6520 cx:0x7f9f44eb7428
  4942 ms     | 0x6520 EC_ValidatePublicKey()
  4942 ms     | 0x6520 ret:0x0
  4942 ms  0x6520 ret:0x7f9f33e21820::7f9f33e21820  b0 b0 f6 33                                      ...3
  4942 ms  0x6520 SECKEY_CreateECPrivateKey()
  4942 ms  0x6520 cx:0x7f9f44eb7428
  4944 ms     | 0x6520 EC_ValidatePublicKey()
  4948 ms     | 0x6520 ret:0x0
  4948 ms  0x6520 ret:0x7f9f33e23820::7f9f33e23820  90 b2 f6 33                                      ...3
  4949 ms  0x6520 SECKEY_CreateECPrivateKey()
  4949 ms  0x6520 cx:0x7f9f44eb7288
  4950 ms     | 0x6520 EC_ValidatePublicKey()
  4950 ms     | 0x6520 ret:0x0
  4950 ms  0x6520 ret:0x7f9f33f77020::7f9f33f77020  d0 b3 f6 33                                      ...3
  4950 ms  0x6520 SECKEY_CreateECPrivateKey()
  4950 ms  0x6520 cx:0x7f9f44eb7288
  4951 ms     | 0x6520 EC_ValidatePublicKey()
  4954 ms     | 0x6520 ret:0x0
  4954 ms  0x6520 ret:0x7f9f33f79020::7f9f33f79020  b0 b5 f6 33                                      ...3
  4955 ms  0x6520 SECKEY_CreateECPrivateKey()
  4955 ms  0x6520 cx:0x7f9f44eb70e8
  4956 ms     | 0x6520 EC_ValidatePublicKey()
  4956 ms     | 0x6520 ret:0x0
  4956 ms  0x6520 ret:0x7f9f33f7b820::7f9f33f7b820  f0 b6 f6 33                                      ...3
  4956 ms  0x6520 SECKEY_CreateECPrivateKey()
  4956 ms  0x6520 cx:0x7f9f44eb70e8
  4957 ms     | 0x6520 EC_ValidatePublicKey()
  4959 ms     | 0x6520 ret:0x0
  4959 ms  0x6520 ret:0x7f9f33f7d820::7f9f33f7d820  d0 b8 f6 33                                      ...3
  4967 ms  0x6520 PK11_Derive()
  4967 ms  0x6520 basekey:0x7f9f4510d180
  4967 ms     | 0x6520 PK11_DeriveWithTemplate()
  4967 ms  0x6520 ret:0x7f9f33efe580
  4967 ms  0x6520 PK11_PubDeriveWithKDF()
  4967 ms  0x6520 seckey:0x7f9f33e18820
  4967 ms     | 0x6520 EC_ValidatePublicKey()
  4967 ms     | 0x6520 ret:0x0
  4969 ms  0x6520 ret:0x7f9f4510d180
  4969 ms  SECKEY_ECParamsToKeySize()
  4969 ms  0x6520 ret:0xff
  4969 ms  0x6520 PK11_DeriveWithFlags()
  4969 ms  0x6520 basekey:0x7f9f33efe580
  4969 ms     | 0x6520 PK11_DeriveWithTemplate()
  4969 ms  0x6520 ret:0x7f9f33efeb80
  4969 ms  0x6520 PK11_Derive()
  4969 ms  0x6520 basekey:0x7f9f4510d180
  4969 ms     | 0x6520 PK11_DeriveWithTemplate()
  4969 ms  0x6520 ret:0x7f9f33eff000
  4969 ms  0x6520 PK11_DeriveWithFlags()
  4969 ms  0x6520 basekey:0x7f9f33eff000
  4969 ms     | 0x6520 PK11_DeriveWithTemplate()
  4969 ms  0x6520 ret:0x7f9f33efe580
  4969 ms  0x6520 PK11_DeriveWithFlags()
  4969 ms  0x6520 basekey:0x7f9f33eff000
  4969 ms     | 0x6520 PK11_DeriveWithTemplate()
  4969 ms  0x6520 ret:0x7f9f4510d180
  4969 ms  0x6520 PK11_DeriveWithFlags()
  4969 ms  0x6520 basekey:0x7f9f33eff000
  4969 ms     | 0x6520 PK11_DeriveWithTemplate()
  4969 ms  0x6520 ret:0x7f9f33efeb80
  4969 ms  0x6520 PK11_Derive()
  4969 ms  0x6520 basekey:0x7f9f33ce2780
  4969 ms     | 0x6520 PK11_DeriveWithTemplate()
  4969 ms  0x6520 ret:0x7f9f33ce2a00
  4969 ms  0x6520 PK11_DeriveWithFlags()
  4969 ms  0x6520 basekey:0x7f9f4510d180
  4969 ms     | 0x6520 PK11_DeriveWithTemplate()
  4971 ms  0x6520 ret:0x7f9f33eff000
  4971 ms  0x6520 PK11_DeriveWithFlags()
  4971 ms  0x6520 basekey:0x7f9f4510d180
  4971 ms     | 0x6520 PK11_DeriveWithTemplate()
  4971 ms  0x6520 ret:0x7f9f33efeb80
  4973 ms  SECKEY_ECParamsToKeySize()
  4973 ms  0x6520 ret:0x100
  4973 ms  SECKEY_ECParamsToBasePointOrderLen()
  4973 ms  0x6520 ret:0x100
  4973 ms  SECKEY_ECParamsToBasePointOrderLen()
  4973 ms  0x6520 ret:0x100
  4973 ms  0x6520 EC_ValidatePublicKey()
  4976 ms  0x6520 ret:0x0
  4979 ms  0x6520 PK11_DeriveWithFlags()
  4979 ms  0x6520 basekey:0x7f9f4510d180
  4979 ms     | 0x6520 PK11_DeriveWithTemplate()
  4979 ms  0x6520 ret:0x7f9f33efeb80
  4979 ms  0x6520 SSL_AuthCertificateComplete()
  4979 ms  0x6520 fd:0x7f9f33cdeac0
  4979 ms  0x6520 err:0x0
  4979 ms     | 0x6520 PK11_DeriveWithFlags()
  4979 ms     | 0x6520 basekey:0x7f9f33ce2a00
  4979 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4979 ms     | 0x6520 ret:0x7f9f33efeb80
  4979 ms     | 0x6520 PK11_DeriveWithFlags()
  4979 ms     | 0x6520 basekey:0x7f9f33ce2a00
  4979 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4979 ms     | 0x6520 ret:0x7f9f33ce2780
  4979 ms     | 0x6520 PK11_DeriveWithFlags()
  4979 ms     | 0x6520 basekey:0x7f9f33ce2a00
  4979 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4979 ms     | 0x6520 ret:0x7f9f33ce2a80
  4979 ms     | 0x6520 PK11_DeriveWithFlags()
  4979 ms     | 0x6520 basekey:0x7f9f33efe580
  4979 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4979 ms     | 0x6520 ret:0x7f9f33ce2b00
  4979 ms     | 0x6520 PK11_DeriveWithFlags()
  4979 ms     | 0x6520 basekey:0x7f9f33efe580
  4979 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4980 ms     | 0x6520 ret:0x7f9f33ce2b80
  4980 ms     | 0x6520 PK11_DeriveWithFlags()
  4980 ms     | 0x6520 basekey:0x7f9f33ce2780
  4980 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4980 ms     | 0x6520 ret:0x7f9f33ce2b80
  4980 ms     | 0x6520 PK11_DeriveWithFlags()
  4980 ms     | 0x6520 basekey:0x7f9f33ce2780
  4980 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4980 ms     | 0x6520 ret:0x7f9f33ce2c00
  4980 ms     | 0x6520 PK11_DeriveWithFlags()
  4980 ms     | 0x6520 basekey:0x7f9f33efe580
  4980 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4980 ms     | 0x6520 ret:0x7f9f33eff000
  4980 ms     | 0x6520 PK11_Encrypt()
  4980 ms     | 0x6520 symkey:0x7f9f33ce2b00
  4980 ms     | 0x6520 PK11_DeriveWithFlags()
  4980 ms     | 0x6520 basekey:0x7f9f33efeb80
  4980 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4980 ms     | 0x6520 ret:0x7f9f33eff000
  4980 ms     | 0x6520 PK11_DeriveWithFlags()
  4980 ms     | 0x6520 basekey:0x7f9f33efeb80
  4980 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4980 ms     | 0x6520 ret:0x7f9f33ce2c00
  4980 ms     | 0x6520 PK11_DeriveWithFlags()
  4980 ms     | 0x6520 basekey:0x7f9f33ce2a00
  4980 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4980 ms     | 0x6520 ret:0x7f9f33ce2b00
  4980 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  4980 ms     | 0x6520 privk:0x7f9f33e1a820::7f9f33e1a820  90 4c ce 33                                      .L.3
  4980 ms     | 0x6520 privk:0x7f9f33e1a820::7f9f33e1a820  e5 e5 e5 e5                                      ....
  4980 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  4980 ms     | 0x6520 privk:0x7f9f33e18820::7f9f33e18820  b0 4f ce 33                                      .O.3
  4981 ms     | 0x6520 privk:0x7f9f33e18820::7f9f33e18820  e5 e5 e5 e5                                      ....
  4981 ms  0x6520 PK11_Encrypt()
  4981 ms  0x6520 symkey:0x7f9f33eff000
  4981 ms  0x6520 PK11_Encrypt()
  4981 ms  0x6520 symkey:0x7f9f33eff000
  4982 ms  0x6520 PK11_Derive()
  4982 ms  0x6520 basekey:0x7f9f4510d180
  4982 ms     | 0x6520 PK11_DeriveWithTemplate()
  4982 ms  0x6520 ret:0x7f9f33efe580
  4982 ms  0x6520 PK11_PubDeriveWithKDF()
  4982 ms  0x6520 seckey:0x7f9f33e1d020
  4982 ms     | 0x6520 EC_ValidatePublicKey()
  4982 ms     | 0x6520 ret:0x0
  4982 ms  0x6520 ret:0x7f9f4510d180
  4982 ms  SECKEY_ECParamsToKeySize()
  4982 ms  0x6520 ret:0xff
  4982 ms  0x6520 PK11_DeriveWithFlags()
  4982 ms  0x6520 basekey:0x7f9f33efe580
  4982 ms     | 0x6520 PK11_DeriveWithTemplate()
  4982 ms  0x6520 ret:0x7f9f33ce2a00
  4982 ms  0x6520 PK11_Derive()
  4982 ms  0x6520 basekey:0x7f9f4510d180
  4982 ms     | 0x6520 PK11_DeriveWithTemplate()
  4982 ms  0x6520 ret:0x7f9f33ce2c00
  4982 ms  0x6520 PK11_DeriveWithFlags()
  4982 ms  0x6520 basekey:0x7f9f33ce2c00
  4982 ms     | 0x6520 PK11_DeriveWithTemplate()
  4982 ms  0x6520 ret:0x7f9f33efe580
  4983 ms  0x6520 PK11_DeriveWithFlags()
  4983 ms  0x6520 basekey:0x7f9f33ce2c00
  4983 ms     | 0x6520 PK11_DeriveWithTemplate()
  4983 ms  0x6520 ret:0x7f9f4510d180
  4983 ms  0x6520 PK11_DeriveWithFlags()
  4983 ms  0x6520 basekey:0x7f9f33ce2c00
  4983 ms     | 0x6520 PK11_DeriveWithTemplate()
  4983 ms  0x6520 ret:0x7f9f33ce2a00
  4983 ms  0x6520 PK11_Derive()
  4983 ms  0x6520 basekey:0x7f9f33ce2d00
  4983 ms     | 0x6520 PK11_DeriveWithTemplate()
  4983 ms  0x6520 ret:0x7f9f33ce2d80
  4983 ms  0x6520 PK11_DeriveWithFlags()
  4983 ms  0x6520 basekey:0x7f9f4510d180
  4983 ms     | 0x6520 PK11_DeriveWithTemplate()
  4983 ms  0x6520 ret:0x7f9f33ce2c00
  4983 ms  0x6520 PK11_DeriveWithFlags()
  4983 ms  0x6520 basekey:0x7f9f4510d180
  4983 ms     | 0x6520 PK11_DeriveWithTemplate()
  4983 ms  0x6520 ret:0x7f9f33ce2a00
  4984 ms  SECKEY_ECParamsToKeySize()
  4984 ms  0x6520 ret:0x100
  4984 ms  SECKEY_ECParamsToBasePointOrderLen()
  4984 ms  0x6520 ret:0x100
  4984 ms  SECKEY_ECParamsToBasePointOrderLen()
  4984 ms  0x6520 ret:0x100
  4984 ms  0x6520 EC_ValidatePublicKey()
  4986 ms  0x6520 ret:0x0
  4988 ms  0x6520 PK11_DeriveWithFlags()
  4988 ms  0x6520 basekey:0x7f9f4510d180
  4989 ms     | 0x6520 PK11_DeriveWithTemplate()
  4989 ms  0x6520 ret:0x7f9f33ce2a00
  4989 ms  0x6520 SSL_AuthCertificateComplete()
  4989 ms  0x6520 fd:0x7f9f33cde8e0
  4989 ms  0x6520 err:0x0
  4989 ms     | 0x6520 PK11_DeriveWithFlags()
  4989 ms     | 0x6520 basekey:0x7f9f33ce2d80
  4989 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4989 ms     | 0x6520 ret:0x7f9f33ce2a00
  4989 ms     | 0x6520 PK11_DeriveWithFlags()
  4989 ms     | 0x6520 basekey:0x7f9f33ce2d80
  4989 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4989 ms     | 0x6520 ret:0x7f9f33ce2d00
  4989 ms     | 0x6520 PK11_DeriveWithFlags()
  4989 ms     | 0x6520 basekey:0x7f9f33ce2d80
  4989 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4989 ms     | 0x6520 ret:0x7f9f33cb4800
  4989 ms     | 0x6520 PK11_DeriveWithFlags()
  4989 ms     | 0x6520 basekey:0x7f9f33efe580
  4989 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4989 ms     | 0x6520 ret:0x7f9f33ce2e00
  4989 ms     | 0x6520 PK11_DeriveWithFlags()
  4989 ms     | 0x6520 basekey:0x7f9f33efe580
  4989 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4989 ms     | 0x6520 ret:0x7f9f33ce2e80
  4989 ms     | 0x6520 PK11_DeriveWithFlags()
  4989 ms     | 0x6520 basekey:0x7f9f33ce2d00
  4989 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4989 ms     | 0x6520 ret:0x7f9f33ce2e80
  4989 ms     | 0x6520 PK11_DeriveWithFlags()
  4989 ms     | 0x6520 basekey:0x7f9f33ce2d00
  4989 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4989 ms     | 0x6520 ret:0x7f9f33ce2f00
  4989 ms     | 0x6520 PK11_DeriveWithFlags()
  4989 ms     | 0x6520 basekey:0x7f9f33efe580
  4989 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4989 ms     | 0x6520 ret:0x7f9f33ce2c00
  4989 ms     | 0x6520 PK11_Encrypt()
  4989 ms     | 0x6520 symkey:0x7f9f33ce2e00
  4989 ms     | 0x6520 PK11_DeriveWithFlags()
  4989 ms     | 0x6520 basekey:0x7f9f33ce2a00
  4989 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4989 ms     | 0x6520 ret:0x7f9f33ce2c00
  4989 ms     | 0x6520 PK11_DeriveWithFlags()
  4989 ms     | 0x6520 basekey:0x7f9f33ce2a00
  4989 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4989 ms     | 0x6520 ret:0x7f9f33ce2f00
  4989 ms     | 0x6520 PK11_DeriveWithFlags()
  4989 ms     | 0x6520 basekey:0x7f9f33ce2d80
  4989 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  4989 ms     | 0x6520 ret:0x7f9f33ce2e00
  4989 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  4989 ms     | 0x6520 privk:0x7f9f33e1f020::7f9f33e1f020  10 4f e2 33                                      .O.3
  4990 ms     | 0x6520 privk:0x7f9f33e1f020::7f9f33e1f020  e5 e5 e5 e5                                      ....
  4990 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  4990 ms     | 0x6520 privk:0x7f9f33e1d020::7f9f33e1d020  70 4e ce 33                                      pN.3
  4990 ms     | 0x6520 privk:0x7f9f33e1d020::7f9f33e1d020  e5 e5 e5 e5                                      ....
  4990 ms  0x6520 PK11_Encrypt()
  4990 ms  0x6520 symkey:0x7f9f33ce2c00
  4995 ms  0x6520 PK11_Derive()
  4995 ms  0x6520 basekey:0x7f9f4510d180
  4996 ms     | 0x6520 PK11_DeriveWithTemplate()
  4996 ms  0x6520 ret:0x7f9f33efe580
  4996 ms  0x6520 PK11_PubDeriveWithKDF()
  4996 ms  0x6520 seckey:0x7f9f33e21820
  4996 ms     | 0x6520 EC_ValidatePublicKey()
  4996 ms     | 0x6520 ret:0x0
  4996 ms  0x6520 ret:0x7f9f4510d180
  4996 ms  SECKEY_ECParamsToKeySize()
  4996 ms  0x6520 ret:0xff
  4996 ms  0x6520 PK11_DeriveWithFlags()
  4996 ms  0x6520 basekey:0x7f9f33efe580
  4996 ms     | 0x6520 PK11_DeriveWithTemplate()
  4996 ms  0x6520 ret:0x7f9f33ce2d80
  4996 ms  0x6520 PK11_Derive()
  4996 ms  0x6520 basekey:0x7f9f4510d180
  4996 ms     | 0x6520 PK11_DeriveWithTemplate()
  4996 ms  0x6520 ret:0x7f9f33ce2f00
  4996 ms  0x6520 PK11_DeriveWithFlags()
  4996 ms  0x6520 basekey:0x7f9f33ce2f00
  4996 ms     | 0x6520 PK11_DeriveWithTemplate()
  4996 ms  0x6520 ret:0x7f9f33efe580
  4996 ms  0x6520 PK11_DeriveWithFlags()
  4996 ms  0x6520 basekey:0x7f9f33ce2f00
  4996 ms     | 0x6520 PK11_DeriveWithTemplate()
  4996 ms  0x6520 ret:0x7f9f4510d180
  4996 ms  0x6520 PK11_DeriveWithFlags()
  4996 ms  0x6520 basekey:0x7f9f33ce2f00
  4996 ms     | 0x6520 PK11_DeriveWithTemplate()
  4996 ms  0x6520 ret:0x7f9f33ce2d80
  4996 ms  0x6520 PK11_Derive()
  4996 ms  0x6520 basekey:0x7f9f33ce2f80
  4996 ms     | 0x6520 PK11_DeriveWithTemplate()
  4996 ms  0x6520 ret:0x7f9f33a06080
  4996 ms  0x6520 PK11_DeriveWithFlags()
  4996 ms  0x6520 basekey:0x7f9f4510d180
  4996 ms     | 0x6520 PK11_DeriveWithTemplate()
  4996 ms  0x6520 ret:0x7f9f33ce2f00
  4996 ms  0x6520 PK11_DeriveWithFlags()
  4996 ms  0x6520 basekey:0x7f9f4510d180
  4996 ms     | 0x6520 PK11_DeriveWithTemplate()
  4996 ms  0x6520 ret:0x7f9f33ce2d80
  4999 ms  SECKEY_ECParamsToKeySize()
  4999 ms  0x6520 ret:0x100
  4999 ms  SECKEY_ECParamsToBasePointOrderLen()
  4999 ms  0x6520 ret:0x100
  4999 ms  SECKEY_ECParamsToBasePointOrderLen()
  4999 ms  0x6520 ret:0x100
  4999 ms  0x6520 EC_ValidatePublicKey()
  5000 ms  0x6520 ret:0x0
  5002 ms  0x6520 PK11_DeriveWithFlags()
  5002 ms  0x6520 basekey:0x7f9f4510d180
  5002 ms     | 0x6520 PK11_DeriveWithTemplate()
  5002 ms  0x6520 ret:0x7f9f33ce2d80
  5002 ms  0x6520 PK11_Encrypt()
  5002 ms  0x6520 symkey:0x7f9f33eff000
  5004 ms  0x6520 SSL_AuthCertificateComplete()
  5004 ms  0x6520 fd:0x7f9f33cde850
  5004 ms  0x6520 err:0x0
  5004 ms     | 0x6520 PK11_DeriveWithFlags()
  5004 ms     | 0x6520 basekey:0x7f9f33a06080
  5004 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5004 ms     | 0x6520 ret:0x7f9f33ce2d80
  5004 ms     | 0x6520 PK11_DeriveWithFlags()
  5004 ms     | 0x6520 basekey:0x7f9f33a06080
  5004 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5004 ms     | 0x6520 ret:0x7f9f33ce2f80
  5004 ms     | 0x6520 PK11_DeriveWithFlags()
  5004 ms     | 0x6520 basekey:0x7f9f33a06080
  5004 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5004 ms     | 0x6520 ret:0x7f9f33a06200
  5004 ms     | 0x6520 PK11_DeriveWithFlags()
  5004 ms     | 0x6520 basekey:0x7f9f33efe580
  5004 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5004 ms     | 0x6520 ret:0x7f9f33a06280
  5004 ms     | 0x6520 PK11_DeriveWithFlags()
  5004 ms     | 0x6520 basekey:0x7f9f33efe580
  5004 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5004 ms     | 0x6520 ret:0x7f9f33a06300
  5004 ms     | 0x6520 PK11_DeriveWithFlags()
  5004 ms     | 0x6520 basekey:0x7f9f33ce2f80
  5004 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5004 ms     | 0x6520 ret:0x7f9f33a06300
  5004 ms     | 0x6520 PK11_DeriveWithFlags()
  5004 ms     | 0x6520 basekey:0x7f9f33ce2f80
  5004 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5004 ms     | 0x6520 ret:0x7f9f33a06380
  5004 ms     | 0x6520 PK11_DeriveWithFlags()
  5004 ms     | 0x6520 basekey:0x7f9f33efe580
  5004 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5004 ms     | 0x6520 ret:0x7f9f33ce2f00
  5004 ms     | 0x6520 PK11_Encrypt()
  5004 ms     | 0x6520 symkey:0x7f9f33a06280
  5004 ms     | 0x6520 PK11_DeriveWithFlags()
  5004 ms     | 0x6520 basekey:0x7f9f33ce2d80
  5004 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5004 ms     | 0x6520 ret:0x7f9f33ce2f00
  5004 ms     | 0x6520 PK11_DeriveWithFlags()
  5004 ms     | 0x6520 basekey:0x7f9f33ce2d80
  5004 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5004 ms     | 0x6520 ret:0x7f9f33a06380
  5004 ms     | 0x6520 PK11_DeriveWithFlags()
  5004 ms     | 0x6520 basekey:0x7f9f33a06080
  5004 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5004 ms     | 0x6520 ret:0x7f9f33a06280
  5004 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  5004 ms     | 0x6520 privk:0x7f9f33e23820::7f9f33e23820  90 b2 f6 33                                      ...3
  5004 ms     | 0x6520 privk:0x7f9f33e23820::7f9f33e23820  e5 e5 e5 e5                                      ....
  5005 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  5005 ms     | 0x6520 privk:0x7f9f33e21820::7f9f33e21820  b0 b0 f6 33                                      ...3
  5005 ms     | 0x6520 privk:0x7f9f33e21820::7f9f33e21820  e5 e5 e5 e5                                      ....
  5005 ms  0x6520 PK11_Encrypt()
  5005 ms  0x6520 symkey:0x7f9f33ce2f00
  5005 ms  0x6520 PK11_Derive()
  5005 ms  0x6520 basekey:0x7f9f4510d180
  5005 ms     | 0x6520 PK11_DeriveWithTemplate()
  5005 ms  0x6520 ret:0x7f9f33efe580
  5005 ms  0x6520 PK11_PubDeriveWithKDF()
  5005 ms  0x6520 seckey:0x7f9f33f77020
  5005 ms     | 0x6520 EC_ValidatePublicKey()
  5005 ms     | 0x6520 ret:0x0
  5005 ms  0x6520 ret:0x7f9f4510d180
  5005 ms  SECKEY_ECParamsToKeySize()
  5006 ms  0x6520 ret:0xff
  5006 ms  0x6520 PK11_DeriveWithFlags()
  5006 ms  0x6520 basekey:0x7f9f33efe580
  5006 ms     | 0x6520 PK11_DeriveWithTemplate()
  5006 ms  0x6520 ret:0x7f9f33a06080
  5006 ms  0x6520 PK11_Derive()
  5006 ms  0x6520 basekey:0x7f9f4510d180
  5006 ms     | 0x6520 PK11_DeriveWithTemplate()
  5006 ms  0x6520 ret:0x7f9f33a06380
  5006 ms  0x6520 PK11_DeriveWithFlags()
  5006 ms  0x6520 basekey:0x7f9f33a06380
  5006 ms     | 0x6520 PK11_DeriveWithTemplate()
  5006 ms  0x6520 ret:0x7f9f33efe580
  5006 ms  0x6520 PK11_DeriveWithFlags()
  5006 ms  0x6520 basekey:0x7f9f33a06380
  5006 ms     | 0x6520 PK11_DeriveWithTemplate()
  5006 ms  0x6520 ret:0x7f9f4510d180
  5006 ms  0x6520 PK11_DeriveWithFlags()
  5006 ms  0x6520 basekey:0x7f9f33a06380
  5006 ms     | 0x6520 PK11_DeriveWithTemplate()
  5006 ms  0x6520 ret:0x7f9f33a06080
  5006 ms  0x6520 PK11_Derive()
  5006 ms  0x6520 basekey:0x7f9f33a06400
  5006 ms     | 0x6520 PK11_DeriveWithTemplate()
  5006 ms  0x6520 ret:0x7f9f33a06480
  5006 ms  0x6520 PK11_DeriveWithFlags()
  5006 ms  0x6520 basekey:0x7f9f4510d180
  5006 ms     | 0x6520 PK11_DeriveWithTemplate()
  5006 ms  0x6520 ret:0x7f9f33a06380
  5006 ms  0x6520 PK11_DeriveWithFlags()
  5006 ms  0x6520 basekey:0x7f9f4510d180
  5006 ms     | 0x6520 PK11_DeriveWithTemplate()
  5006 ms  0x6520 ret:0x7f9f33a06080
  5006 ms  SECKEY_ECParamsToKeySize()
  5006 ms  0x6520 ret:0x100
  5006 ms  SECKEY_ECParamsToBasePointOrderLen()
  5006 ms  0x6520 ret:0x100
  5006 ms  SECKEY_ECParamsToBasePointOrderLen()
  5006 ms  0x6520 ret:0x100
  5006 ms  0x6520 EC_ValidatePublicKey()
  5008 ms  0x6520 ret:0x0
  5010 ms  0x6520 PK11_DeriveWithFlags()
  5010 ms  0x6520 basekey:0x7f9f4510d180
  5010 ms     | 0x6520 PK11_DeriveWithTemplate()
  5010 ms  0x6520 ret:0x7f9f33a06080
  5010 ms  0x6520 PK11_Derive()
  5010 ms  0x6520 basekey:0x7f9f33a06080
  5010 ms     | 0x6520 PK11_DeriveWithTemplate()
  5010 ms  0x6520 ret:0x7f9f33a06400
  5010 ms  0x6520 PK11_PubDeriveWithKDF()
  5010 ms  0x6520 seckey:0x7f9f33f7b820
  5010 ms     | 0x6520 EC_ValidatePublicKey()
  5010 ms     | 0x6520 ret:0x0
  5010 ms  0x6520 ret:0x7f9f33a06080
  5010 ms  SECKEY_ECParamsToKeySize()
  5010 ms  0x6520 ret:0xff
  5010 ms  0x6520 PK11_DeriveWithFlags()
  5010 ms  0x6520 basekey:0x7f9f33a06400
  5010 ms     | 0x6520 PK11_DeriveWithTemplate()
  5010 ms  0x6520 ret:0x7f9f33a06500
  5010 ms  0x6520 PK11_Derive()
  5010 ms  0x6520 basekey:0x7f9f33a06080
  5010 ms     | 0x6520 PK11_DeriveWithTemplate()
  5011 ms  0x6520 ret:0x7f9f33a06580
  5011 ms  0x6520 PK11_DeriveWithFlags()
  5011 ms  0x6520 basekey:0x7f9f33a06580
  5011 ms     | 0x6520 PK11_DeriveWithTemplate()
  5011 ms  0x6520 ret:0x7f9f33a06400
  5011 ms  0x6520 PK11_DeriveWithFlags()
  5011 ms  0x6520 basekey:0x7f9f33a06580
  5011 ms     | 0x6520 PK11_DeriveWithTemplate()
  5011 ms  0x6520 ret:0x7f9f33a06080
  5011 ms  0x6520 PK11_DeriveWithFlags()
  5011 ms  0x6520 basekey:0x7f9f33a06580
  5011 ms     | 0x6520 PK11_DeriveWithTemplate()
  5011 ms  0x6520 ret:0x7f9f33a06500
  5011 ms  0x6520 PK11_Derive()
  5011 ms  0x6520 basekey:0x7f9f33a06600
  5011 ms     | 0x6520 PK11_DeriveWithTemplate()
  5011 ms  0x6520 ret:0x7f9f33a06680
  5011 ms  0x6520 PK11_DeriveWithFlags()
  5011 ms  0x6520 basekey:0x7f9f33a06080
  5011 ms     | 0x6520 PK11_DeriveWithTemplate()
  5011 ms  0x6520 ret:0x7f9f33a06580
  5011 ms  0x6520 PK11_DeriveWithFlags()
  5011 ms  0x6520 basekey:0x7f9f33a06080
  5011 ms     | 0x6520 PK11_DeriveWithTemplate()
  5011 ms  0x6520 ret:0x7f9f33a06500
  5011 ms  SECKEY_ECParamsToKeySize()
  5011 ms  0x6520 ret:0x100
  5011 ms  SECKEY_ECParamsToBasePointOrderLen()
  5011 ms  0x6520 ret:0x100
  5011 ms  SECKEY_ECParamsToBasePointOrderLen()
  5011 ms  0x6520 ret:0x100
  5011 ms  0x6520 EC_ValidatePublicKey()
  5013 ms  0x6520 ret:0x0
  5015 ms  0x6520 PK11_DeriveWithFlags()
  5015 ms  0x6520 basekey:0x7f9f33a06080
  5015 ms     | 0x6520 PK11_DeriveWithTemplate()
  5015 ms  0x6520 ret:0x7f9f33a06500
  5015 ms  0x6520 PK11_Encrypt()
  5015 ms  0x6520 symkey:0x7f9f33eff000
  5016 ms  0x6520 SSL_AuthCertificateComplete()
  5016 ms  0x6520 fd:0x7f9f33cdeb50
  5016 ms  0x6520 err:0x0
  5016 ms     | 0x6520 PK11_DeriveWithFlags()
  5016 ms     | 0x6520 basekey:0x7f9f33a06480
  5016 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5016 ms     | 0x6520 ret:0x7f9f33a06500
  5016 ms     | 0x6520 PK11_DeriveWithFlags()
  5016 ms     | 0x6520 basekey:0x7f9f33a06480
  5016 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5016 ms     | 0x6520 ret:0x7f9f33a06600
  5016 ms     | 0x6520 PK11_DeriveWithFlags()
  5016 ms     | 0x6520 basekey:0x7f9f33a06480
  5016 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5016 ms     | 0x6520 ret:0x7f9f33a06700
  5016 ms     | 0x6520 PK11_DeriveWithFlags()
  5016 ms     | 0x6520 basekey:0x7f9f33efe580
  5016 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5016 ms     | 0x6520 ret:0x7f9f33a06780
  5016 ms     | 0x6520 PK11_DeriveWithFlags()
  5016 ms     | 0x6520 basekey:0x7f9f33efe580
  5016 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5017 ms     | 0x6520 ret:0x7f9f33a06900
  5017 ms     | 0x6520 PK11_DeriveWithFlags()
  5017 ms     | 0x6520 basekey:0x7f9f33a06600
  5017 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5017 ms     | 0x6520 ret:0x7f9f33a06900
  5017 ms     | 0x6520 PK11_DeriveWithFlags()
  5017 ms     | 0x6520 basekey:0x7f9f33a06600
  5017 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5017 ms     | 0x6520 ret:0x7f9f33a06980
  5017 ms     | 0x6520 PK11_DeriveWithFlags()
  5017 ms     | 0x6520 basekey:0x7f9f33efe580
  5017 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5017 ms     | 0x6520 ret:0x7f9f33a06380
  5017 ms     | 0x6520 PK11_Encrypt()
  5017 ms     | 0x6520 symkey:0x7f9f33a06780
  5017 ms     | 0x6520 PK11_DeriveWithFlags()
  5017 ms     | 0x6520 basekey:0x7f9f33a06500
  5017 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5017 ms     | 0x6520 ret:0x7f9f33a06380
  5017 ms     | 0x6520 PK11_DeriveWithFlags()
  5017 ms     | 0x6520 basekey:0x7f9f33a06500
  5017 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5017 ms     | 0x6520 ret:0x7f9f33a06980
  5017 ms     | 0x6520 PK11_DeriveWithFlags()
  5017 ms     | 0x6520 basekey:0x7f9f33a06480
  5017 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5017 ms     | 0x6520 ret:0x7f9f33a06780
  5017 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  5017 ms     | 0x6520 privk:0x7f9f33f79020::7f9f33f79020  b0 b5 f6 33                                      ...3
  5017 ms     | 0x6520 privk:0x7f9f33f79020::7f9f33f79020  e5 e5 e5 e5                                      ....
  5017 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  5017 ms     | 0x6520 privk:0x7f9f33f77020::7f9f33f77020  d0 b3 f6 33                                      ...3
  5017 ms     | 0x6520 privk:0x7f9f33f77020::7f9f33f77020  e5 e5 e5 e5                                      ....
  5017 ms  0x6520 SSL_AuthCertificateComplete()
  5017 ms  0x6520 fd:0x7f9f33cdeb20
  5017 ms  0x6520 err:0x0
  5017 ms     | 0x6520 PK11_DeriveWithFlags()
  5017 ms     | 0x6520 basekey:0x7f9f33a06680
  5017 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5017 ms     | 0x6520 ret:0x7f9f4510d180
  5017 ms     | 0x6520 PK11_DeriveWithFlags()
  5017 ms     | 0x6520 basekey:0x7f9f33a06680
  5017 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5017 ms     | 0x6520 ret:0x7f9f33efe580
  5017 ms     | 0x6520 PK11_DeriveWithFlags()
  5017 ms     | 0x6520 basekey:0x7f9f33a06680
  5017 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5017 ms     | 0x6520 ret:0x7f9f33a06480
  5017 ms     | 0x6520 PK11_DeriveWithFlags()
  5017 ms     | 0x6520 basekey:0x7f9f33a06400
  5017 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5017 ms     | 0x6520 ret:0x7f9f33a06980
  5017 ms     | 0x6520 PK11_DeriveWithFlags()
  5017 ms     | 0x6520 basekey:0x7f9f33a06400
  5017 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5017 ms     | 0x6520 ret:0x7f9f33a06a00
  5017 ms     | 0x6520 PK11_DeriveWithFlags()
  5017 ms     | 0x6520 basekey:0x7f9f33efe580
  5017 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5017 ms     | 0x6520 ret:0x7f9f33a06a00
  5017 ms     | 0x6520 PK11_DeriveWithFlags()
  5017 ms     | 0x6520 basekey:0x7f9f33efe580
  5017 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5018 ms     | 0x6520 ret:0x7f9f33a06a80
  5018 ms     | 0x6520 PK11_DeriveWithFlags()
  5018 ms     | 0x6520 basekey:0x7f9f33a06400
  5018 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5018 ms     | 0x6520 ret:0x7f9f33a06580
  5018 ms     | 0x6520 PK11_Encrypt()
  5018 ms     | 0x6520 symkey:0x7f9f33a06980
  5018 ms     | 0x6520 PK11_DeriveWithFlags()
  5018 ms     | 0x6520 basekey:0x7f9f4510d180
  5018 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5018 ms     | 0x6520 ret:0x7f9f33a06580
  5018 ms     | 0x6520 PK11_DeriveWithFlags()
  5018 ms     | 0x6520 basekey:0x7f9f4510d180
  5018 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5018 ms     | 0x6520 ret:0x7f9f33a06a80
  5018 ms     | 0x6520 PK11_DeriveWithFlags()
  5018 ms     | 0x6520 basekey:0x7f9f33a06680
  5018 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5018 ms     | 0x6520 ret:0x7f9f33a06980
  5018 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  5018 ms     | 0x6520 privk:0x7f9f33f7d820::7f9f33f7d820  d0 b8 f6 33                                      ...3
  5018 ms     | 0x6520 privk:0x7f9f33f7d820::7f9f33f7d820  e5 e5 e5 e5                                      ....
  5018 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  5018 ms     | 0x6520 privk:0x7f9f33f7b820::7f9f33f7b820  f0 b6 f6 33                                      ...3
  5018 ms     | 0x6520 privk:0x7f9f33f7b820::7f9f33f7b820  e5 e5 e5 e5                                      ....
  5018 ms  0x6520 PK11_DeriveWithFlags()
  5018 ms  0x6520 basekey:0x7f9f33ce2b00
  5018 ms     | 0x6520 PK11_DeriveWithTemplate()
  5018 ms  0x6520 ret:0x7f9f33a06080
  5018 ms  0x6520 PK11_Encrypt()
  5018 ms  0x6520 symkey:0x7f9f33eff000
  5018 ms  0x6520 PK11_Encrypt()
  5018 ms  0x6520 symkey:0x7f9f33a06380
  5019 ms  0x6520 PK11_Encrypt()
  5019 ms  0x6520 symkey:0x7f9f33a06580
  5019 ms  0x6520 PK11_Encrypt()
  5019 ms  0x6520 symkey:0x7f9f33eff000
  5019 ms  0x6520 PK11_Encrypt()
  5019 ms  0x6520 symkey:0x7f9f33eff000
  5026 ms  0x6520 PK11_DeriveWithFlags()
  5026 ms  0x6520 basekey:0x7f9f33ce2e00
  5026 ms     | 0x6520 PK11_DeriveWithTemplate()
  5026 ms  0x6520 ret:0x7f9f33a06080
  5026 ms  0x6520 PR_Close()
  5026 ms  0x6520 fd:0x7f9f33cde8e0
  5026 ms     | 0x6520 PK11_Encrypt()
  5026 ms     | 0x6520 symkey:0x7f9f33ce2c00
  5041 ms  0x6520 PK11_DeriveWithFlags()
  5041 ms  0x6520 basekey:0x7f9f33a06280
  5041 ms     | 0x6520 PK11_DeriveWithTemplate()
  5041 ms  0x6520 ret:0x7f9f33cb4800
  5041 ms  0x6520 PR_Close()
  5041 ms  0x6520 fd:0x7f9f33cde850
  5041 ms     | 0x6520 PK11_Encrypt()
  5041 ms     | 0x6520 symkey:0x7f9f33ce2f00
  5056 ms  0x6520 PK11_DeriveWithFlags()
  5056 ms  0x6520 basekey:0x7f9f33a06780
  5056 ms     | 0x6520 PK11_DeriveWithTemplate()
  5056 ms  0x6520 ret:0x7f9f33a06200
  5056 ms  0x6520 PR_Close()
  5056 ms  0x6520 fd:0x7f9f33cdeb50
  5056 ms     | 0x6520 PK11_Encrypt()
  5056 ms     | 0x6520 symkey:0x7f9f33a06380
  5057 ms  0x6520 PK11_DeriveWithFlags()
  5057 ms  0x6520 basekey:0x7f9f33a06980
  5057 ms     | 0x6520 PK11_DeriveWithTemplate()
  5057 ms  0x6520 ret:0x7f9f33a06700
  5057 ms  0x6520 PR_Close()
  5057 ms  0x6520 fd:0x7f9f33cdeb20
  5057 ms     | 0x6520 PK11_Encrypt()
  5057 ms     | 0x6520 symkey:0x7f9f33a06580
  5139 ms  0x6520 SSL_ImportFD()
  5139 ms  0x6520 ret:0x7f9f33cde730
  5139 ms  0x6520 SSL_AuthCertificateHook()
  5139 ms  0x6520 fd:0x7f9f33cde730
  5139 ms  0x6520 ret:0x0
  5139 ms  0x6520 PR_Connect()
  5139 ms  0x6520 fd:0x7f9f33cde730
  5139 ms  0x6520 SSL_ImportFD()
  5139 ms  0x6520 ret:0x7f9f33cde0a0
  5139 ms  0x6520 SSL_AuthCertificateHook()
  5139 ms  0x6520 fd:0x7f9f33cde0a0
  5139 ms  0x6520 ret:0x0
  5139 ms  0x6520 PR_Connect()
  5139 ms  0x6520 fd:0x7f9f33cde0a0
  5139 ms  0x6520 SSL_ImportFD()
  5139 ms  0x6520 ret:0x7f9f33cde7c0
  5139 ms  0x6520 SSL_AuthCertificateHook()
  5139 ms  0x6520 fd:0x7f9f33cde7c0
  5139 ms  0x6520 ret:0x0
  5139 ms  0x6520 PR_Connect()
  5139 ms  0x6520 fd:0x7f9f33cde7c0
  5140 ms  0x6520 SSL_ImportFD()
  5140 ms  0x6520 ret:0x7f9f33cde850
  5140 ms  0x6520 SSL_AuthCertificateHook()
  5140 ms  0x6520 fd:0x7f9f33cde850
  5140 ms  0x6520 ret:0x0
  5140 ms  0x6520 PR_Connect()
  5140 ms  0x6520 fd:0x7f9f33cde850
  5140 ms  0x6520 SSL_ImportFD()
  5140 ms  0x6520 ret:0x7f9f33cde430
  5140 ms  0x6520 SSL_AuthCertificateHook()
  5140 ms  0x6520 fd:0x7f9f33cde430
  5140 ms  0x6520 ret:0x0
           /* TID 0x6528 */
  5141 ms  0x6528 PR_Close()
  5141 ms  0x6528 fd:0x7f9f33f50220
           /* TID 0x6520 */
  5142 ms  0x6520 PK11_Encrypt()
  5142 ms  0x6520 symkey:0x7f9f33efea80
  5142 ms  0x6520 PR_Connect()
  5142 ms  0x6520 fd:0x7f9f33cde430
           /* TID 0x6528 */
  5146 ms  0x6528 PR_Close()
  5146 ms  0x6528 fd:0x7f9f33ca5eb0
  5168 ms  0x6528 PR_Close()
  5168 ms  0x6528 fd:0x7f9f33ca5d90
  5169 ms  0x6528 PR_Close()
  5169 ms  0x6528 fd:0x7f9f33ca5d90
           /* TID 0x6520 */
  5176 ms  0x6520 SECKEY_CreateECPrivateKey()
  5176 ms  0x6520 cx:0x7f9f44eb7288
  5177 ms     | 0x6520 EC_ValidatePublicKey()
  5177 ms     | 0x6520 ret:0x0
  5178 ms  0x6520 ret:0x7f9f33e1a020::7f9f33e1a020  60 b0 f6 33                                      `..3
  5178 ms  0x6520 SECKEY_CreateECPrivateKey()
  5178 ms  0x6520 cx:0x7f9f44eb7288
           /* TID 0x6528 */
  5180 ms  0x6528 PR_Close()
  5180 ms  0x6528 fd:0x7f9f33ca5f70
           /* TID 0x6520 */
  5181 ms     | 0x6520 EC_ValidatePublicKey()
  5184 ms     | 0x6520 ret:0x0
  5184 ms  0x6520 ret:0x7f9f33e1c820::7f9f33e1c820  90 b2 f6 33                                      ...3
  5197 ms  0x6520 SECKEY_CreateECPrivateKey()
  5197 ms  0x6520 cx:0x7f9f44eb70e8
  5198 ms     | 0x6520 EC_ValidatePublicKey()
  5198 ms     | 0x6520 ret:0x0
  5198 ms  0x6520 ret:0x7f9f33e1f020::7f9f33e1f020  b0 45 ce 33                                      .E.3
  5198 ms  0x6520 SECKEY_CreateECPrivateKey()
  5198 ms  0x6520 cx:0x7f9f44eb70e8
  5199 ms     | 0x6520 EC_ValidatePublicKey()
  5201 ms     | 0x6520 ret:0x0
  5201 ms  0x6520 ret:0x7f9f33e21020::7f9f33e21020  e0 b2 f6 33                                      ...3
  5214 ms  0x6520 SECKEY_CreateECPrivateKey()
  5214 ms  0x6520 cx:0x7f9f44eb82c8
  5215 ms     | 0x6520 EC_ValidatePublicKey()
  5215 ms     | 0x6520 ret:0x0
  5215 ms  0x6520 ret:0x7f9f33e23820::7f9f33e23820  d0 b3 f6 33                                      ...3
  5215 ms  0x6520 SECKEY_CreateECPrivateKey()
  5215 ms  0x6520 cx:0x7f9f44eb82c8
  5215 ms     | 0x6520 EC_ValidatePublicKey()
  5217 ms     | 0x6520 ret:0x0
  5217 ms  0x6520 ret:0x7f9f33eec020::7f9f33eec020  00 b6 f6 33                                      ...3
  5217 ms  0x6520 SECKEY_CreateECPrivateKey()
  5217 ms  0x6520 cx:0x7f9f44eb75c8
  5218 ms     | 0x6520 EC_ValidatePublicKey()
  5218 ms     | 0x6520 ret:0x0
  5218 ms  0x6520 ret:0x7f9f33f78820::7f9f33f78820  f0 b6 f6 33                                      ...3
  5218 ms  0x6520 SECKEY_CreateECPrivateKey()
  5218 ms  0x6520 cx:0x7f9f44eb75c8
  5219 ms     | 0x6520 EC_ValidatePublicKey()
  5220 ms     | 0x6520 ret:0x0
  5220 ms  0x6520 ret:0x7f9f33f7a820::7f9f33f7a820  d0 b8 f6 33                                      ...3
  5220 ms  0x6520 SECKEY_CreateECPrivateKey()
  5220 ms  0x6520 cx:0x7f9f44eb7428
  5221 ms     | 0x6520 EC_ValidatePublicKey()
  5221 ms     | 0x6520 ret:0x0
  5221 ms  0x6520 ret:0x7f9f33f7d020::7f9f33f7d020  b0 ba f6 33                                      ...3
  5221 ms  0x6520 SECKEY_CreateECPrivateKey()
  5221 ms  0x6520 cx:0x7f9f44eb7428
  5221 ms     | 0x6520 EC_ValidatePublicKey()
  5223 ms     | 0x6520 ret:0x0
  5223 ms  0x6520 ret:0x7f9f33f80020::7f9f33f80020  90 bc f6 33                                      ...3
  5223 ms  0x6520 PK11_Derive()
  5223 ms  0x6520 basekey:0x7f9f33a06480
  5223 ms     | 0x6520 PK11_DeriveWithTemplate()
  5223 ms  0x6520 ret:0x7f9f33efe580
  5223 ms  0x6520 PK11_PubDeriveWithKDF()
  5223 ms  0x6520 seckey:0x7f9f33e1a020
  5223 ms     | 0x6520 EC_ValidatePublicKey()
  5223 ms     | 0x6520 ret:0x0
  5224 ms  0x6520 ret:0x7f9f33a06480
  5224 ms  SECKEY_ECParamsToKeySize()
  5224 ms  0x6520 ret:0xff
  5224 ms  0x6520 PK11_DeriveWithFlags()
  5224 ms  0x6520 basekey:0x7f9f33efe580
  5224 ms     | 0x6520 PK11_DeriveWithTemplate()
  5224 ms  0x6520 ret:0x7f9f4510d180
  5224 ms  0x6520 PK11_Derive()
  5224 ms  0x6520 basekey:0x7f9f33a06480
  5224 ms     | 0x6520 PK11_DeriveWithTemplate()
  5224 ms  0x6520 ret:0x7f9f33a06980
  5224 ms  0x6520 PK11_DeriveWithFlags()
  5224 ms  0x6520 basekey:0x7f9f33a06980
  5224 ms     | 0x6520 PK11_DeriveWithTemplate()
  5224 ms  0x6520 ret:0x7f9f33efe580
  5224 ms  0x6520 PK11_DeriveWithFlags()
  5224 ms  0x6520 basekey:0x7f9f33a06980
  5224 ms     | 0x6520 PK11_DeriveWithTemplate()
  5224 ms  0x6520 ret:0x7f9f33a06480
  5224 ms  0x6520 PK11_DeriveWithFlags()
  5224 ms  0x6520 basekey:0x7f9f33a06980
  5224 ms     | 0x6520 PK11_DeriveWithTemplate()
  5224 ms  0x6520 ret:0x7f9f4510d180
  5224 ms  0x6520 PK11_Derive()
  5224 ms  0x6520 basekey:0x7f9f33a06a00
  5224 ms     | 0x6520 PK11_DeriveWithTemplate()
  5224 ms  0x6520 ret:0x7f9f33a06580
  5236 ms  0x6520 PK11_DeriveWithFlags()
  5236 ms  0x6520 basekey:0x7f9f33a06480
  5236 ms     | 0x6520 PK11_DeriveWithTemplate()
  5236 ms  0x6520 ret:0x7f9f33a06980
  5236 ms  0x6520 PK11_DeriveWithFlags()
  5236 ms  0x6520 basekey:0x7f9f33a06480
  5236 ms     | 0x6520 PK11_DeriveWithTemplate()
  5236 ms  0x6520 ret:0x7f9f4510d180
  5236 ms  SECKEY_ECParamsToKeySize()
  5236 ms  0x6520 ret:0x100
  5237 ms  SECKEY_ECParamsToBasePointOrderLen()
  5237 ms  0x6520 ret:0x100
  5237 ms  SECKEY_ECParamsToBasePointOrderLen()
  5237 ms  0x6520 ret:0x100
  5237 ms  0x6520 EC_ValidatePublicKey()
  5238 ms  0x6520 ret:0x0
  5240 ms  0x6520 PK11_DeriveWithFlags()
  5240 ms  0x6520 basekey:0x7f9f33a06480
  5240 ms     | 0x6520 PK11_DeriveWithTemplate()
  5240 ms  0x6520 ret:0x7f9f4510d180
  5240 ms  0x6520 SSL_AuthCertificateComplete()
  5240 ms  0x6520 fd:0x7f9f33cde0a0
  5240 ms  0x6520 err:0x0
  5240 ms     | 0x6520 PK11_DeriveWithFlags()
  5240 ms     | 0x6520 basekey:0x7f9f33a06580
  5240 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5240 ms     | 0x6520 ret:0x7f9f4510d180
  5240 ms     | 0x6520 PK11_DeriveWithFlags()
  5240 ms     | 0x6520 basekey:0x7f9f33a06580
  5240 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5240 ms     | 0x6520 ret:0x7f9f33a06a00
  5240 ms     | 0x6520 PK11_DeriveWithFlags()
  5240 ms     | 0x6520 basekey:0x7f9f33a06580
  5240 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5240 ms     | 0x6520 ret:0x7f9f33a06700
  5240 ms     | 0x6520 PK11_DeriveWithFlags()
  5240 ms     | 0x6520 basekey:0x7f9f33efe580
  5240 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5240 ms     | 0x6520 ret:0x7f9f33a06600
  5240 ms     | 0x6520 PK11_DeriveWithFlags()
  5240 ms     | 0x6520 basekey:0x7f9f33efe580
  5240 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5240 ms     | 0x6520 ret:0x7f9f33a06500
  5240 ms     | 0x6520 PK11_DeriveWithFlags()
  5240 ms     | 0x6520 basekey:0x7f9f33a06a00
  5240 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5240 ms     | 0x6520 ret:0x7f9f33a06500
  5240 ms     | 0x6520 PK11_DeriveWithFlags()
  5240 ms     | 0x6520 basekey:0x7f9f33a06a00
  5240 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5240 ms     | 0x6520 ret:0x7f9f33a06780
  5241 ms     | 0x6520 PK11_DeriveWithFlags()
  5241 ms     | 0x6520 basekey:0x7f9f33efe580
  5241 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5241 ms     | 0x6520 ret:0x7f9f33a06980
  5241 ms     | 0x6520 PK11_Encrypt()
  5241 ms     | 0x6520 symkey:0x7f9f33a06600
  5241 ms     | 0x6520 PK11_DeriveWithFlags()
  5241 ms     | 0x6520 basekey:0x7f9f4510d180
  5241 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5241 ms     | 0x6520 ret:0x7f9f33a06980
  5241 ms     | 0x6520 PK11_DeriveWithFlags()
  5241 ms     | 0x6520 basekey:0x7f9f4510d180
  5241 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5241 ms     | 0x6520 ret:0x7f9f33a06780
  5241 ms     | 0x6520 PK11_DeriveWithFlags()
  5241 ms     | 0x6520 basekey:0x7f9f33a06580
  5241 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5241 ms     | 0x6520 ret:0x7f9f33a06600
  5241 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  5241 ms     | 0x6520 privk:0x7f9f33e1c820::7f9f33e1c820  90 b2 f6 33                                      ...3
  5241 ms     | 0x6520 privk:0x7f9f33e1c820::7f9f33e1c820  e5 e5 e5 e5                                      ....
  5241 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  5241 ms     | 0x6520 privk:0x7f9f33e1a020::7f9f33e1a020  60 b0 f6 33                                      `..3
  5241 ms     | 0x6520 privk:0x7f9f33e1a020::7f9f33e1a020  e5 e5 e5 e5                                      ....
  5241 ms  0x6520 PK11_Encrypt()
  5241 ms  0x6520 symkey:0x7f9f33a06980
  5241 ms  0x6520 PK11_Encrypt()
  5241 ms  0x6520 symkey:0x7f9f33a06980
  5242 ms  0x6520 PK11_Derive()
  5242 ms  0x6520 basekey:0x7f9f33a06480
  5242 ms     | 0x6520 PK11_DeriveWithTemplate()
  5242 ms  0x6520 ret:0x7f9f33efe580
  5242 ms  0x6520 PK11_PubDeriveWithKDF()
  5242 ms  0x6520 seckey:0x7f9f33e1f020
  5242 ms     | 0x6520 EC_ValidatePublicKey()
  5242 ms     | 0x6520 ret:0x0
  5242 ms  0x6520 ret:0x7f9f33a06480
  5242 ms  SECKEY_ECParamsToKeySize()
  5242 ms  0x6520 ret:0xff
  5242 ms  0x6520 PK11_DeriveWithFlags()
  5242 ms  0x6520 basekey:0x7f9f33efe580
  5242 ms     | 0x6520 PK11_DeriveWithTemplate()
  5242 ms  0x6520 ret:0x7f9f33a06580
  5242 ms  0x6520 PK11_Derive()
  5242 ms  0x6520 basekey:0x7f9f33a06480
  5242 ms     | 0x6520 PK11_DeriveWithTemplate()
  5242 ms  0x6520 ret:0x7f9f33a06780
  5242 ms  0x6520 PK11_DeriveWithFlags()
  5242 ms  0x6520 basekey:0x7f9f33a06780
  5242 ms     | 0x6520 PK11_DeriveWithTemplate()
  5242 ms  0x6520 ret:0x7f9f33efe580
  5242 ms  0x6520 PK11_DeriveWithFlags()
  5242 ms  0x6520 basekey:0x7f9f33a06780
  5242 ms     | 0x6520 PK11_DeriveWithTemplate()
  5242 ms  0x6520 ret:0x7f9f33a06480
  5242 ms  0x6520 PK11_DeriveWithFlags()
  5242 ms  0x6520 basekey:0x7f9f33a06780
  5242 ms     | 0x6520 PK11_DeriveWithTemplate()
  5242 ms  0x6520 ret:0x7f9f33a06580
  5242 ms  0x6520 PK11_Derive()
  5242 ms  0x6520 basekey:0x7f9f33a06900
  5243 ms     | 0x6520 PK11_DeriveWithTemplate()
  5243 ms  0x6520 ret:0x7f9f33a06380
  5243 ms  0x6520 PK11_DeriveWithFlags()
  5243 ms  0x6520 basekey:0x7f9f33a06480
  5243 ms     | 0x6520 PK11_DeriveWithTemplate()
  5243 ms  0x6520 ret:0x7f9f33a06780
  5243 ms  0x6520 PK11_DeriveWithFlags()
  5243 ms  0x6520 basekey:0x7f9f33a06480
  5243 ms     | 0x6520 PK11_DeriveWithTemplate()
  5243 ms  0x6520 ret:0x7f9f33a06580
  5243 ms  SECKEY_ECParamsToKeySize()
  5243 ms  0x6520 ret:0x100
  5243 ms  SECKEY_ECParamsToBasePointOrderLen()
  5243 ms  0x6520 ret:0x100
  5243 ms  SECKEY_ECParamsToBasePointOrderLen()
  5243 ms  0x6520 ret:0x100
  5243 ms  0x6520 EC_ValidatePublicKey()
  5245 ms  0x6520 ret:0x0
  5247 ms  0x6520 PK11_DeriveWithFlags()
  5247 ms  0x6520 basekey:0x7f9f33a06480
  5247 ms     | 0x6520 PK11_DeriveWithTemplate()
  5247 ms  0x6520 ret:0x7f9f33a06580
  5247 ms  0x6520 SSL_AuthCertificateComplete()
  5247 ms  0x6520 fd:0x7f9f33cde730
  5247 ms  0x6520 err:0x0
  5247 ms     | 0x6520 PK11_DeriveWithFlags()
  5247 ms     | 0x6520 basekey:0x7f9f33a06380
  5247 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5247 ms     | 0x6520 ret:0x7f9f33a06580
  5247 ms     | 0x6520 PK11_DeriveWithFlags()
  5247 ms     | 0x6520 basekey:0x7f9f33a06380
  5247 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5247 ms     | 0x6520 ret:0x7f9f33a06900
  5247 ms     | 0x6520 PK11_DeriveWithFlags()
  5247 ms     | 0x6520 basekey:0x7f9f33a06380
  5247 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5247 ms     | 0x6520 ret:0x7f9f33a06200
  5247 ms     | 0x6520 PK11_DeriveWithFlags()
  5247 ms     | 0x6520 basekey:0x7f9f33efe580
  5247 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5247 ms     | 0x6520 ret:0x7f9f33ce2f80
  5247 ms     | 0x6520 PK11_DeriveWithFlags()
  5247 ms     | 0x6520 basekey:0x7f9f33efe580
  5247 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5247 ms     | 0x6520 ret:0x7f9f33ce2d80
  5247 ms     | 0x6520 PK11_DeriveWithFlags()
  5247 ms     | 0x6520 basekey:0x7f9f33a06900
  5247 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5247 ms     | 0x6520 ret:0x7f9f33ce2d80
  5247 ms     | 0x6520 PK11_DeriveWithFlags()
  5247 ms     | 0x6520 basekey:0x7f9f33a06900
  5247 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5247 ms     | 0x6520 ret:0x7f9f33a06280
  5247 ms     | 0x6520 PK11_DeriveWithFlags()
  5247 ms     | 0x6520 basekey:0x7f9f33efe580
  5247 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5247 ms     | 0x6520 ret:0x7f9f33a06780
  5247 ms     | 0x6520 PK11_Encrypt()
  5247 ms     | 0x6520 symkey:0x7f9f33ce2f80
  5255 ms     | 0x6520 PK11_DeriveWithFlags()
  5255 ms     | 0x6520 basekey:0x7f9f33a06580
  5255 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5255 ms     | 0x6520 ret:0x7f9f33a06780
  5255 ms     | 0x6520 PK11_DeriveWithFlags()
  5255 ms     | 0x6520 basekey:0x7f9f33a06580
  5255 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5255 ms     | 0x6520 ret:0x7f9f33a06280
  5255 ms     | 0x6520 PK11_DeriveWithFlags()
  5255 ms     | 0x6520 basekey:0x7f9f33a06380
  5255 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5255 ms     | 0x6520 ret:0x7f9f33ce2f80
  5255 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  5255 ms     | 0x6520 privk:0x7f9f33e21020::7f9f33e21020  e0 b2 f6 33                                      ...3
  5255 ms     | 0x6520 privk:0x7f9f33e21020::7f9f33e21020  e5 e5 e5 e5                                      ....
  5255 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  5255 ms     | 0x6520 privk:0x7f9f33e1f020::7f9f33e1f020  b0 45 ce 33                                      .E.3
  5255 ms     | 0x6520 privk:0x7f9f33e1f020::7f9f33e1f020  e5 e5 e5 e5                                      ....
  5255 ms  0x6520 PK11_Derive()
  5255 ms  0x6520 basekey:0x7f9f33a06480
  5255 ms     | 0x6520 PK11_DeriveWithTemplate()
  5255 ms  0x6520 ret:0x7f9f33efe580
  5255 ms  0x6520 PK11_PubDeriveWithKDF()
  5255 ms  0x6520 seckey:0x7f9f33e23820
  5255 ms     | 0x6520 EC_ValidatePublicKey()
  5255 ms     | 0x6520 ret:0x0
  5256 ms  0x6520 ret:0x7f9f33a06480
  5256 ms  SECKEY_ECParamsToKeySize()
  5256 ms  0x6520 ret:0xff
  5256 ms  0x6520 PK11_DeriveWithFlags()
  5256 ms  0x6520 basekey:0x7f9f33efe580
  5256 ms     | 0x6520 PK11_DeriveWithTemplate()
  5256 ms  0x6520 ret:0x7f9f33a06380
  5256 ms  0x6520 PK11_Derive()
  5256 ms  0x6520 basekey:0x7f9f33a06480
  5256 ms     | 0x6520 PK11_DeriveWithTemplate()
  5256 ms  0x6520 ret:0x7f9f33a06280
  5256 ms  0x6520 PK11_DeriveWithFlags()
  5256 ms  0x6520 basekey:0x7f9f33a06280
  5256 ms     | 0x6520 PK11_DeriveWithTemplate()
  5256 ms  0x6520 ret:0x7f9f33efe580
  5256 ms  0x6520 PK11_DeriveWithFlags()
  5256 ms  0x6520 basekey:0x7f9f33a06280
  5256 ms     | 0x6520 PK11_DeriveWithTemplate()
  5256 ms  0x6520 ret:0x7f9f33a06480
  5256 ms  0x6520 PK11_DeriveWithFlags()
  5256 ms  0x6520 basekey:0x7f9f33a06280
  5256 ms     | 0x6520 PK11_DeriveWithTemplate()
  5256 ms  0x6520 ret:0x7f9f33a06380
  5256 ms  0x6520 PK11_Derive()
  5256 ms  0x6520 basekey:0x7f9f33a06300
  5256 ms     | 0x6520 PK11_DeriveWithTemplate()
  5256 ms  0x6520 ret:0x7f9f33ce2f00
  5256 ms  0x6520 PK11_DeriveWithFlags()
  5256 ms  0x6520 basekey:0x7f9f33a06480
  5256 ms     | 0x6520 PK11_DeriveWithTemplate()
  5256 ms  0x6520 ret:0x7f9f33a06280
  5256 ms  0x6520 PK11_DeriveWithFlags()
  5256 ms  0x6520 basekey:0x7f9f33a06480
  5256 ms     | 0x6520 PK11_DeriveWithTemplate()
  5256 ms  0x6520 ret:0x7f9f33a06380
  5260 ms  SECKEY_ECParamsToKeySize()
  5260 ms  0x6520 ret:0x100
  5261 ms  SECKEY_ECParamsToBasePointOrderLen()
  5261 ms  0x6520 ret:0x100
  5261 ms  SECKEY_ECParamsToBasePointOrderLen()
  5261 ms  0x6520 ret:0x100
  5261 ms  0x6520 EC_ValidatePublicKey()
  5262 ms  0x6520 ret:0x0
  5264 ms  0x6520 PK11_DeriveWithFlags()
  5264 ms  0x6520 basekey:0x7f9f33a06480
  5264 ms     | 0x6520 PK11_DeriveWithTemplate()
  5264 ms  0x6520 ret:0x7f9f33a06380
  5272 ms  0x6520 PK11_Encrypt()
  5272 ms  0x6520 symkey:0x7f9f33a06780
  5272 ms  0x6520 PK11_Encrypt()
  5272 ms  0x6520 symkey:0x7f9f33a06780
  5272 ms  0x6520 SSL_AuthCertificateComplete()
  5272 ms  0x6520 fd:0x7f9f33cde430
  5272 ms  0x6520 err:0x0
  5272 ms     | 0x6520 PK11_DeriveWithFlags()
  5272 ms     | 0x6520 basekey:0x7f9f33ce2f00
  5272 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5272 ms     | 0x6520 ret:0x7f9f33a06380
  5273 ms     | 0x6520 PK11_DeriveWithFlags()
  5273 ms     | 0x6520 basekey:0x7f9f33ce2f00
  5273 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5273 ms     | 0x6520 ret:0x7f9f33a06300
  5273 ms     | 0x6520 PK11_DeriveWithFlags()
  5273 ms     | 0x6520 basekey:0x7f9f33ce2f00
  5273 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5273 ms     | 0x6520 ret:0x7f9f33cb4800
  5273 ms     | 0x6520 PK11_DeriveWithFlags()
  5273 ms     | 0x6520 basekey:0x7f9f33efe580
  5273 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5273 ms     | 0x6520 ret:0x7f9f33ce2d00
  5273 ms     | 0x6520 PK11_DeriveWithFlags()
  5273 ms     | 0x6520 basekey:0x7f9f33efe580
  5273 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5273 ms     | 0x6520 ret:0x7f9f33ce2a00
  5273 ms     | 0x6520 PK11_DeriveWithFlags()
  5273 ms     | 0x6520 basekey:0x7f9f33a06300
  5273 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5273 ms     | 0x6520 ret:0x7f9f33ce2a00
  5273 ms     | 0x6520 PK11_DeriveWithFlags()
  5273 ms     | 0x6520 basekey:0x7f9f33a06300
  5273 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5273 ms     | 0x6520 ret:0x7f9f33ce2e00
  5273 ms     | 0x6520 PK11_DeriveWithFlags()
  5273 ms     | 0x6520 basekey:0x7f9f33efe580
  5273 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5273 ms     | 0x6520 ret:0x7f9f33a06280
  5273 ms     | 0x6520 PK11_Encrypt()
  5273 ms     | 0x6520 symkey:0x7f9f33ce2d00
  5273 ms     | 0x6520 PK11_DeriveWithFlags()
  5273 ms     | 0x6520 basekey:0x7f9f33a06380
  5273 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5273 ms     | 0x6520 ret:0x7f9f33a06280
  5273 ms     | 0x6520 PK11_DeriveWithFlags()
  5273 ms     | 0x6520 basekey:0x7f9f33a06380
  5273 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5273 ms     | 0x6520 ret:0x7f9f33ce2e00
  5273 ms     | 0x6520 PK11_DeriveWithFlags()
  5273 ms     | 0x6520 basekey:0x7f9f33ce2f00
  5273 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5273 ms     | 0x6520 ret:0x7f9f33ce2d00
  5273 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  5273 ms     | 0x6520 privk:0x7f9f33eec020::7f9f33eec020  00 b6 f6 33                                      ...3
  5273 ms     | 0x6520 privk:0x7f9f33eec020::7f9f33eec020  e5 e5 e5 e5                                      ....
  5273 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  5273 ms     | 0x6520 privk:0x7f9f33e23820::7f9f33e23820  d0 b3 f6 33                                      ...3
  5273 ms     | 0x6520 privk:0x7f9f33e23820::7f9f33e23820  e5 e5 e5 e5                                      ....
  5274 ms  0x6520 PK11_Encrypt()
  5274 ms  0x6520 symkey:0x7f9f33a06280
  5274 ms  0x6520 PK11_Derive()
  5274 ms  0x6520 basekey:0x7f9f33a06480
  5274 ms     | 0x6520 PK11_DeriveWithTemplate()
  5274 ms  0x6520 ret:0x7f9f33efe580
  5274 ms  0x6520 PK11_PubDeriveWithKDF()
  5274 ms  0x6520 seckey:0x7f9f33f78820
  5274 ms     | 0x6520 EC_ValidatePublicKey()
  5274 ms     | 0x6520 ret:0x0
  5274 ms  0x6520 ret:0x7f9f33a06480
  5274 ms  SECKEY_ECParamsToKeySize()
  5274 ms  0x6520 ret:0xff
  5274 ms  0x6520 PK11_DeriveWithFlags()
  5274 ms  0x6520 basekey:0x7f9f33efe580
  5274 ms     | 0x6520 PK11_DeriveWithTemplate()
  5274 ms  0x6520 ret:0x7f9f33ce2f00
  5274 ms  0x6520 PK11_Derive()
  5274 ms  0x6520 basekey:0x7f9f33a06480
  5274 ms     | 0x6520 PK11_DeriveWithTemplate()
  5274 ms  0x6520 ret:0x7f9f33ce2e00
  5274 ms  0x6520 PK11_DeriveWithFlags()
  5274 ms  0x6520 basekey:0x7f9f33ce2e00
  5274 ms     | 0x6520 PK11_DeriveWithTemplate()
  5274 ms  0x6520 ret:0x7f9f33efe580
  5274 ms  0x6520 PK11_DeriveWithFlags()
  5274 ms  0x6520 basekey:0x7f9f33ce2e00
  5274 ms     | 0x6520 PK11_DeriveWithTemplate()
  5274 ms  0x6520 ret:0x7f9f33a06480
  5274 ms  0x6520 PK11_DeriveWithFlags()
  5274 ms  0x6520 basekey:0x7f9f33ce2e00
  5274 ms     | 0x6520 PK11_DeriveWithTemplate()
  5274 ms  0x6520 ret:0x7f9f33ce2f00
  5275 ms  0x6520 PK11_Derive()
  5275 ms  0x6520 basekey:0x7f9f33ce2e80
  5275 ms     | 0x6520 PK11_DeriveWithTemplate()
  5275 ms  0x6520 ret:0x7f9f33ce2c00
  5275 ms  0x6520 PK11_DeriveWithFlags()
  5275 ms  0x6520 basekey:0x7f9f33a06480
  5275 ms     | 0x6520 PK11_DeriveWithTemplate()
  5275 ms  0x6520 ret:0x7f9f33ce2e00
  5275 ms  0x6520 PK11_DeriveWithFlags()
  5275 ms  0x6520 basekey:0x7f9f33a06480
  5275 ms     | 0x6520 PK11_DeriveWithTemplate()
  5275 ms  0x6520 ret:0x7f9f33ce2f00
  5275 ms  SECKEY_ECParamsToKeySize()
  5275 ms  0x6520 ret:0x100
  5275 ms  SECKEY_ECParamsToBasePointOrderLen()
  5275 ms  0x6520 ret:0x100
  5275 ms  SECKEY_ECParamsToBasePointOrderLen()
  5275 ms  0x6520 ret:0x100
  5275 ms  0x6520 EC_ValidatePublicKey()
  5286 ms  0x6520 ret:0x0
  5288 ms  0x6520 PK11_DeriveWithFlags()
  5288 ms  0x6520 basekey:0x7f9f33a06480
  5288 ms     | 0x6520 PK11_DeriveWithTemplate()
  5288 ms  0x6520 ret:0x7f9f33ce2f00
  5288 ms  0x6520 PK11_Derive()
  5288 ms  0x6520 basekey:0x7f9f33ce2f00
  5288 ms     | 0x6520 PK11_DeriveWithTemplate()
  5288 ms  0x6520 ret:0x7f9f33ce2e80
  5288 ms  0x6520 PK11_PubDeriveWithKDF()
  5288 ms  0x6520 seckey:0x7f9f33f7d020
  5288 ms     | 0x6520 EC_ValidatePublicKey()
  5288 ms     | 0x6520 ret:0x0
  5288 ms  0x6520 ret:0x7f9f33ce2f00
  5288 ms  SECKEY_ECParamsToKeySize()
  5288 ms  0x6520 ret:0xff
  5288 ms  0x6520 PK11_DeriveWithFlags()
  5288 ms  0x6520 basekey:0x7f9f33ce2e80
  5288 ms     | 0x6520 PK11_DeriveWithTemplate()
  5288 ms  0x6520 ret:0x7f9f33a06080
  5288 ms  0x6520 PK11_Derive()
  5288 ms  0x6520 basekey:0x7f9f33ce2f00
  5288 ms     | 0x6520 PK11_DeriveWithTemplate()
  5288 ms  0x6520 ret:0x7f9f33a06400
  5288 ms  0x6520 PK11_DeriveWithFlags()
  5288 ms  0x6520 basekey:0x7f9f33a06400
  5288 ms     | 0x6520 PK11_DeriveWithTemplate()
  5288 ms  0x6520 ret:0x7f9f33ce2e80
  5288 ms  0x6520 PK11_DeriveWithFlags()
  5288 ms  0x6520 basekey:0x7f9f33a06400
  5288 ms     | 0x6520 PK11_DeriveWithTemplate()
  5288 ms  0x6520 ret:0x7f9f33ce2f00
  5288 ms  0x6520 PK11_DeriveWithFlags()
  5288 ms  0x6520 basekey:0x7f9f33a06400
  5288 ms     | 0x6520 PK11_DeriveWithTemplate()
  5289 ms  0x6520 ret:0x7f9f33a06080
  5289 ms  0x6520 PK11_Derive()
  5289 ms  0x6520 basekey:0x7f9f33a06680
  5289 ms     | 0x6520 PK11_DeriveWithTemplate()
  5289 ms  0x6520 ret:0x7f9f33a06a80
  5289 ms  0x6520 PK11_DeriveWithFlags()
  5289 ms  0x6520 basekey:0x7f9f33ce2f00
  5289 ms     | 0x6520 PK11_DeriveWithTemplate()
  5289 ms  0x6520 ret:0x7f9f33a06400
  5289 ms  0x6520 PK11_DeriveWithFlags()
  5289 ms  0x6520 basekey:0x7f9f33ce2f00
  5289 ms     | 0x6520 PK11_DeriveWithTemplate()
  5289 ms  0x6520 ret:0x7f9f33a06080
  5289 ms  SECKEY_ECParamsToKeySize()
  5289 ms  0x6520 ret:0x100
  5289 ms  SECKEY_ECParamsToBasePointOrderLen()
  5289 ms  0x6520 ret:0x100
  5289 ms  SECKEY_ECParamsToBasePointOrderLen()
  5289 ms  0x6520 ret:0x100
  5289 ms  0x6520 EC_ValidatePublicKey()
  5291 ms  0x6520 ret:0x0
  5293 ms  0x6520 PK11_DeriveWithFlags()
  5293 ms  0x6520 basekey:0x7f9f33ce2f00
  5293 ms     | 0x6520 PK11_DeriveWithTemplate()
  5293 ms  0x6520 ret:0x7f9f33a06080
  5293 ms  0x6520 PK11_DeriveWithFlags()
  5293 ms  0x6520 basekey:0x7f9f33ce2f80
  5293 ms     | 0x6520 PK11_DeriveWithTemplate()
  5293 ms  0x6520 ret:0x7f9f33a06080
  5293 ms  0x6520 PK11_DeriveWithFlags()
  5293 ms  0x6520 basekey:0x7f9f33a06600
  5293 ms     | 0x6520 PK11_DeriveWithTemplate()
  5293 ms  0x6520 ret:0x7f9f33a06080
  5293 ms  0x6520 SSL_AuthCertificateComplete()
  5293 ms  0x6520 fd:0x7f9f33cde850
  5293 ms  0x6520 err:0x0
  5293 ms     | 0x6520 PK11_DeriveWithFlags()
  5293 ms     | 0x6520 basekey:0x7f9f33ce2c00
  5293 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5293 ms     | 0x6520 ret:0x7f9f33a06080
  5293 ms     | 0x6520 PK11_DeriveWithFlags()
  5293 ms     | 0x6520 basekey:0x7f9f33ce2c00
  5293 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5293 ms     | 0x6520 ret:0x7f9f33a06680
  5293 ms     | 0x6520 PK11_DeriveWithFlags()
  5293 ms     | 0x6520 basekey:0x7f9f33ce2c00
  5293 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5293 ms     | 0x6520 ret:0x7f9f33a07c00
  5293 ms     | 0x6520 PK11_DeriveWithFlags()
  5293 ms     | 0x6520 basekey:0x7f9f33efe580
  5293 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5293 ms     | 0x6520 ret:0x7f9f33a07c80
  5293 ms     | 0x6520 PK11_DeriveWithFlags()
  5293 ms     | 0x6520 basekey:0x7f9f33efe580
  5293 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5293 ms     | 0x6520 ret:0x7f9f33a07d00
  5293 ms     | 0x6520 PK11_DeriveWithFlags()
  5293 ms     | 0x6520 basekey:0x7f9f33a06680
  5293 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5293 ms     | 0x6520 ret:0x7f9f33a07d00
  5293 ms     | 0x6520 PK11_DeriveWithFlags()
  5293 ms     | 0x6520 basekey:0x7f9f33a06680
  5293 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5293 ms     | 0x6520 ret:0x7f9f33a07d80
  5293 ms     | 0x6520 PK11_DeriveWithFlags()
  5293 ms     | 0x6520 basekey:0x7f9f33efe580
  5293 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5293 ms     | 0x6520 ret:0x7f9f33ce2e00
  5293 ms     | 0x6520 PK11_Encrypt()
  5293 ms     | 0x6520 symkey:0x7f9f33a07c80
  5299 ms     | 0x6520 PK11_DeriveWithFlags()
  5299 ms     | 0x6520 basekey:0x7f9f33a06080
  5299 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5299 ms     | 0x6520 ret:0x7f9f33ce2e00
  5299 ms     | 0x6520 PK11_DeriveWithFlags()
  5299 ms     | 0x6520 basekey:0x7f9f33a06080
  5299 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5299 ms     | 0x6520 ret:0x7f9f33a07d80
  5299 ms     | 0x6520 PK11_DeriveWithFlags()
  5299 ms     | 0x6520 basekey:0x7f9f33ce2c00
  5299 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5299 ms     | 0x6520 ret:0x7f9f33a07c80
  5299 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  5299 ms     | 0x6520 privk:0x7f9f33f7a820::7f9f33f7a820  d0 b8 f6 33                                      ...3
  5299 ms     | 0x6520 privk:0x7f9f33f7a820::7f9f33f7a820  e5 e5 e5 e5                                      ....
  5299 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  5299 ms     | 0x6520 privk:0x7f9f33f78820::7f9f33f78820  f0 b6 f6 33                                      ...3
  5299 ms     | 0x6520 privk:0x7f9f33f78820::7f9f33f78820  e5 e5 e5 e5                                      ....
  5299 ms  0x6520 SSL_AuthCertificateComplete()
  5299 ms  0x6520 fd:0x7f9f33cde7c0
  5299 ms  0x6520 err:0x0
  5299 ms     | 0x6520 PK11_DeriveWithFlags()
  5299 ms     | 0x6520 basekey:0x7f9f33a06a80
  5299 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5299 ms     | 0x6520 ret:0x7f9f33a06480
  5299 ms     | 0x6520 PK11_DeriveWithFlags()
  5299 ms     | 0x6520 basekey:0x7f9f33a06a80
  5299 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5299 ms     | 0x6520 ret:0x7f9f33efe580
  5299 ms     | 0x6520 PK11_DeriveWithFlags()
  5299 ms     | 0x6520 basekey:0x7f9f33a06a80
  5299 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5299 ms     | 0x6520 ret:0x7f9f33ce2c00
  5299 ms     | 0x6520 PK11_DeriveWithFlags()
  5299 ms     | 0x6520 basekey:0x7f9f33ce2e80
  5299 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5299 ms     | 0x6520 ret:0x7f9f33a07d80
  5300 ms     | 0x6520 PK11_DeriveWithFlags()
  5300 ms     | 0x6520 basekey:0x7f9f33ce2e80
  5300 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5300 ms     | 0x6520 ret:0x7f9f33a07e00
  5300 ms     | 0x6520 PK11_DeriveWithFlags()
  5300 ms     | 0x6520 basekey:0x7f9f33efe580
  5300 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5300 ms     | 0x6520 ret:0x7f9f33a07e00
  5300 ms     | 0x6520 PK11_DeriveWithFlags()
  5300 ms     | 0x6520 basekey:0x7f9f33efe580
  5300 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5300 ms     | 0x6520 ret:0x7f9f33a07e80
  5300 ms     | 0x6520 PK11_DeriveWithFlags()
  5300 ms     | 0x6520 basekey:0x7f9f33ce2e80
  5300 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5300 ms     | 0x6520 ret:0x7f9f33a06400
  5300 ms     | 0x6520 PK11_Encrypt()
  5300 ms     | 0x6520 symkey:0x7f9f33a07d80
  5300 ms     | 0x6520 PK11_DeriveWithFlags()
  5300 ms     | 0x6520 basekey:0x7f9f33a06480
  5300 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5300 ms     | 0x6520 ret:0x7f9f33a06400
  5300 ms     | 0x6520 PK11_DeriveWithFlags()
  5300 ms     | 0x6520 basekey:0x7f9f33a06480
  5300 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5300 ms     | 0x6520 ret:0x7f9f33a07e80
  5300 ms     | 0x6520 PK11_DeriveWithFlags()
  5300 ms     | 0x6520 basekey:0x7f9f33a06a80
  5300 ms     |    | 0x6520 PK11_DeriveWithTemplate()
  5300 ms     | 0x6520 ret:0x7f9f33a07d80
  5300 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  5300 ms     | 0x6520 privk:0x7f9f33f80020::7f9f33f80020  90 bc f6 33                                      ...3
  5300 ms     | 0x6520 privk:0x7f9f33f80020::7f9f33f80020  e5 e5 e5 e5                                      ....
  5300 ms     | 0x6520 SECKEY_DestroyPrivateKey()
  5300 ms     | 0x6520 privk:0x7f9f33f7d020::7f9f33f7d020  b0 ba f6 33                                      ...3
  5300 ms     | 0x6520 privk:0x7f9f33f7d020::7f9f33f7d020  e5 e5 e5 e5                                      ....
  5300 ms  0x6520 PK11_Encrypt()
  5300 ms  0x6520 symkey:0x7f9f33a06980
  5300 ms  0x6520 PK11_Encrypt()
  5300 ms  0x6520 symkey:0x7f9f33a06780
  5301 ms  0x6520 PK11_Encrypt()
  5301 ms  0x6520 symkey:0x7f9f33ce2e00
  5301 ms  0x6520 PK11_Encrypt()
  5301 ms  0x6520 symkey:0x7f9f33a06400
  5301 ms  0x6520 PK11_Encrypt()
  5301 ms  0x6520 symkey:0x7f9f33a06980
  5302 ms  0x6520 PK11_Encrypt()
  5302 ms  0x6520 symkey:0x7f9f33a06980
  5309 ms  0x6520 PK11_DeriveWithFlags()
  5309 ms  0x6520 basekey:0x7f9f33ce2d00
  5309 ms     | 0x6520 PK11_DeriveWithTemplate()
  5309 ms  0x6520 ret:0x7f9f33ce2f00
  5309 ms  0x6520 PR_Close()
  5309 ms  0x6520 fd:0x7f9f33cde430
  5309 ms     | 0x6520 PK11_Encrypt()
  5309 ms     | 0x6520 symkey:0x7f9f33a06280
           /* TID 0x6528 */
  5314 ms  0x6528 PR_Close()
  5314 ms  0x6528 fd:0x7f9f33ca5fd0
  5320 ms  0x6528 PR_Close()
  5320 ms  0x6528 fd:0x7f9f33ca5fd0
           /* TID 0x6520 */
  5330 ms  0x6520 PK11_DeriveWithFlags()
  5330 ms  0x6520 basekey:0x7f9f33a07c80
  5330 ms     | 0x6520 PK11_DeriveWithTemplate()
  5330 ms  0x6520 ret:0x7f9f33cb4800
  5330 ms  0x6520 PR_Close()
  5330 ms  0x6520 fd:0x7f9f33cde850
  5330 ms     | 0x6520 PK11_Encrypt()
  5330 ms     | 0x6520 symkey:0x7f9f33ce2e00
  5336 ms  0x6520 PK11_DeriveWithFlags()
  5336 ms  0x6520 basekey:0x7f9f33a07d80
  5336 ms     | 0x6520 PK11_DeriveWithTemplate()
  5336 ms  0x6520 ret:0x7f9f33a07c00
  5336 ms  0x6520 PR_Close()
  5336 ms  0x6520 fd:0x7f9f33cde7c0
  5336 ms     | 0x6520 PK11_Encrypt()
  5336 ms     | 0x6520 symkey:0x7f9f33a06400
  5337 ms  0x6520 PK11_Encrypt()
  5337 ms  0x6520 symkey:0x7f9f33eff000
  5338 ms  0x6520 PK11_Encrypt()
  5338 ms  0x6520 symkey:0x7f9f33eff000
  5339 ms  0x6520 PK11_Encrypt()
  5339 ms  0x6520 symkey:0x7f9f33eff000
  5347 ms  0x6520 PK11_Encrypt()
  5347 ms  0x6520 symkey:0x7f9f33a06780
           /* TID 0x6528 */
  5351 ms  0x6528 PR_Close()
  5351 ms  0x6528 fd:0x7f9f33cde820
  5351 ms  0x6528 PR_Close()
  5351 ms  0x6528 fd:0x7f9f33cde9a0
           /* TID 0x6520 */
  5352 ms  0x6520 PK11_Encrypt()
  5352 ms  0x6520 symkey:0x7f9f33a06780
           /* TID 0x6528 */
  5375 ms  0x6528 PR_Close()
  5375 ms  0x6528 fd:0x7f9f33cbb190
  5413 ms  0x6528 PR_Close()
  5413 ms  0x6528 fd:0x7f9f33cde5e0
  5414 ms  0x6528 PR_Close()
  5414 ms  0x6528 fd:0x7f9f33cde430
  5435 ms  0x6528 PR_Close()
  5435 ms  0x6528 fd:0x7f9f33cdeb80
           /* TID 0x6520 */
  5440 ms  0x6520 PK11_Encrypt()
  5440 ms  0x6520 symkey:0x7f9f33eff000
  5441 ms  0x6520 PK11_Encrypt()
  5441 ms  0x6520 symkey:0x7f9f33eff000
  5442 ms  0x6520 PK11_Encrypt()
  5442 ms  0x6520 symkey:0x7f9f33eff000
  5443 ms  0x6520 PK11_Encrypt()
  5443 ms  0x6520 symkey:0x7f9f33eff000
  5444 ms  0x6520 PK11_Encrypt()
  5444 ms  0x6520 symkey:0x7f9f33eff000
  5444 ms  0x6520 PK11_Encrypt()
  5444 ms  0x6520 symkey:0x7f9f33eff000
  5445 ms  0x6520 PK11_Encrypt()
  5445 ms  0x6520 symkey:0x7f9f33eff000
  5446 ms  0x6520 PK11_Encrypt()
  5446 ms  0x6520 symkey:0x7f9f33eff000
  5447 ms  0x6520 PK11_Encrypt()
  5447 ms  0x6520 symkey:0x7f9f33eff000
  5448 ms  0x6520 PK11_Encrypt()
  5448 ms  0x6520 symkey:0x7f9f33eff000
  5449 ms  0x6520 PK11_Encrypt()
  5449 ms  0x6520 symkey:0x7f9f33eff000
  5451 ms  0x6520 PK11_Encrypt()
  5451 ms  0x6520 symkey:0x7f9f33eff000
  5452 ms  0x6520 PK11_Encrypt()
  5452 ms  0x6520 symkey:0x7f9f33eff000
           /* TID 0x6528 */
  5471 ms  0x6528 PR_Close()
  5471 ms  0x6528 fd:0x7f9f33cde430
  5483 ms  0x6528 PR_Close()
  5483 ms  0x6528 fd:0x7f9f33cde430
  5520 ms  0x6528 PR_Close()
  5520 ms  0x6528 fd:0x7f9f33cde430
  5524 ms  0x6528 PR_Close()
  5524 ms  0x6528 fd:0x7f9f33cde430
  5525 ms  0x6528 PR_Close()
  5525 ms  0x6528 fd:0x7f9f33cde430
  5526 ms  0x6528 PR_Close()
  5526 ms  0x6528 fd:0x7f9f33cde430
  5529 ms  0x6528 PR_Close()
  5529 ms  0x6528 fd:0x7f9f33cde430
  5529 ms  0x6528 PR_Close()
  5529 ms  0x6528 fd:0x7f9f33cdedc0
  5529 ms  0x6528 PR_Close()
  5529 ms  0x6528 fd:0x7f9f33cdefd0
  5529 ms  0x6528 PR_Close()
  5529 ms  0x6528 fd:0x7f9f33f50160
  5529 ms  0x6528 PR_Close()
  5529 ms  0x6528 fd:0x7f9f33f50400
  5553 ms  0x6528 PR_Close()
  5553 ms  0x6528 fd:0x7f9f33cde430
  5553 ms  0x6528 PR_Close()
  5553 ms  0x6528 fd:0x7f9f33cdedc0
  5553 ms  0x6528 PR_Close()
  5553 ms  0x6528 fd:0x7f9f33cde430
           /* TID 0x6520 */
  5554 ms  0x6520 PK11_Encrypt()
  5554 ms  0x6520 symkey:0x7f9f33a06780
           /* TID 0x6528 */
  5591 ms  0x6528 PR_Close()
  5591 ms  0x6528 fd:0x7f9f33cde5e0
           /* TID 0x6520 */
  5701 ms  0x6520 PK11_Encrypt()
  5701 ms  0x6520 symkey:0x7f9f33a06780
           /* TID 0x6528 */
  5738 ms  0x6528 PR_Close()
  5738 ms  0x6528 fd:0x7f9f33cdedc0
           /* TID 0x6520 */
  5778 ms  0x6520 PR_Close()
  5778 ms  0x6520 fd:0x7f9f4a6e7a00
           /* TID 0x6515 */
  5779 ms  0x6515 EC_ValidatePublicKey()
  5781 ms  0x6515 ret:0x0
  5781 ms  0x6515 EC_ValidatePublicKey()
  5782 ms  0x6515 ret:0x0
  5782 ms  0x6515 EC_ValidatePublicKey()
  5783 ms  0x6515 ret:0x0
  5783 ms  0x6515 EC_ValidatePublicKey()
  5785 ms  0x6515 ret:0x0
  5785 ms  0x6515 EC_ValidatePublicKey()
  5796 ms  0x6515 ret:0x0
  5796 ms  0x6515 EC_ValidatePublicKey()
  5798 ms  0x6515 ret:0x0
  5798 ms  0x6515 EC_ValidatePublicKey()
  5799 ms  0x6515 ret:0x0
  5799 ms  0x6515 EC_ValidatePublicKey()
  5801 ms  0x6515 ret:0x0
  5801 ms  0x6515 EC_ValidatePublicKey()
  5802 ms  0x6515 ret:0x0
  5802 ms  0x6515 EC_ValidatePublicKey()
  5804 ms  0x6515 ret:0x0
           /* TID 0x6520 */
  5813 ms  0x6520 PK11_Encrypt()
  5813 ms  0x6520 symkey:0x7f9f33efea80
  5813 ms  0x6520 PK11_Encrypt()
  5813 ms  0x6520 symkey:0x7f9f33eff000
  5813 ms  0x6520 PK11_Encrypt()
  5813 ms  0x6520 symkey:0x7f9f33a06780
  5813 ms  0x6520 PK11_Encrypt()
  5813 ms  0x6520 symkey:0x7f9f33a06980
  5813 ms  0x6520 PR_Close()
  5813 ms  0x6520 fd:0x7f9f44e2f190
  5814 ms     | 0x6520 PK11_Encrypt()
  5814 ms     | 0x6520 symkey:0x7f9f44ec1100
  5814 ms  0x6520 PR_Close()
  5814 ms  0x6520 fd:0x7f9f4b87a340
  5814 ms  0x6520 PR_Close()
  5814 ms  0x6520 fd:0x7f9f4ad92e20
  5814 ms  0x6520 PR_Close()
  5814 ms  0x6520 fd:0x7f9f4510c3d0
  5814 ms     | 0x6520 PK11_Encrypt()
  5814 ms     | 0x6520 symkey:0x7f9f4510d200
  5814 ms  0x6520 PR_Close()
  5814 ms  0x6520 fd:0x7f9f46aa28e0
  5814 ms     | 0x6520 PK11_Encrypt()
  5814 ms     | 0x6520 symkey:0x7f9f45125a00
  5814 ms  0x6520 PR_Close()
  5814 ms  0x6520 fd:0x7f9f46aa2730
  5814 ms     | 0x6520 PK11_Encrypt()
  5814 ms     | 0x6520 symkey:0x7f9f4670e280
  5814 ms  0x6520 PR_Close()
  5814 ms  0x6520 fd:0x7f9f33cde730
  5814 ms     | 0x6520 PK11_Encrypt()
  5814 ms     | 0x6520 symkey:0x7f9f33a06780
  5815 ms  0x6520 PR_Close()
  5815 ms  0x6520 fd:0x7f9f33cdeac0
  5815 ms     | 0x6520 PK11_Encrypt()
  5815 ms     | 0x6520 symkey:0x7f9f33eff000
  5815 ms  0x6520 PR_Close()
  5815 ms  0x6520 fd:0x7f9f33ea91f0
  5815 ms     | 0x6520 PK11_Encrypt()
  5815 ms     | 0x6520 symkey:0x7f9f33efea80
  5815 ms  0x6520 PR_Close()
  5815 ms  0x6520 fd:0x7f9f33cde0a0
  5815 ms     | 0x6520 PK11_Encrypt()
  5815 ms     | 0x6520 symkey:0x7f9f33a06980
           /* TID 0x656e */
  5816 ms  0x656e PR_Close()
  5816 ms  0x656e fd:0x7f9f33ca5f70
  5816 ms  0x656e PR_Close()
  5816 ms  0x656e fd:0x7f9f33ca5f70
           /* TID 0x6515 */
  5829 ms  0x6515 PR_Close()
  5829 ms  0x6515 fd:0x7f9f46218a00
  5829 ms  0x6515 PR_Close()
  5829 ms  0x6515 fd:0x7f9f44e2f1f0
  5830 ms  0x6515 PR_Close()
  5830 ms  0x6515 fd:0x7f9f44e2f250
  5830 ms  0x6515 PR_Close()
  5830 ms  0x6515 fd:0x7f9f44e2f1f0
  5831 ms  0x6515 PR_Close()
  5831 ms  0x6515 fd:0x7f9f44e2f250
  5831 ms  0x6515 PR_Close()
  5831 ms  0x6515 fd:0x7f9f44e2f1f0
           /* TID 0x6586 */
  5833 ms  0x6586 PR_Close()
  5833 ms  0x6586 fd:0x7f9f44e2f2b0
           /* TID 0x6515 */
  5850 ms  0x6515 PR_Close()
  5850 ms  0x6515 fd:0x7f9f44e2f250
  5850 ms  0x6515 PR_Close()
  5850 ms  0x6515 fd:0x7f9f45f6ff70
  5850 ms  0x6515 PR_Close()
  5850 ms  0x6515 fd:0x7f9f44e2f250
  5851 ms  0x6515 PR_Close()
  5851 ms  0x6515 fd:0x7f9f45f6ff70
  5851 ms  0x6515 PR_Close()
  5851 ms  0x6515 fd:0x7f9f500c89a0
  5851 ms  0x6515 PR_Close()
  5851 ms  0x6515 fd:0x7f9f500c88b0
  5851 ms  0x6515 PR_Close()
  5851 ms  0x6515 fd:0x7f9f500c8a60
  5853 ms  0x6515 PR_Close()
  5853 ms  0x6515 fd:0x7f9f4510c3a0
  5855 ms  0x6515 PR_Close()
  5855 ms  0x6515 fd:0x7f9f4510c3a0
  5856 ms  0x6515 PR_Close()
  5856 ms  0x6515 fd:0x7f9f44e2f250
  5856 ms  0x6515 PR_Close()
  5856 ms  0x6515 fd:0x7f9f45f6ffa0
  5857 ms  0x6515 PR_Close()
  5857 ms  0x6515 fd:0x7f9f44e2f250
  5857 ms  0x6515 PR_Close()
  5857 ms  0x6515 fd:0x7f9f45f6ffa0
  5859 ms  0x6515 PR_Close()
  5859 ms  0x6515 fd:0x7f9f45f6ffd0
  5861 ms  0x6515 PR_Close()
  5861 ms  0x6515 fd:0x7f9f45f6ffd0
  5862 ms  0x6515 PR_Close()
  5862 ms  0x6515 fd:0x7f9f44e2f250
  5862 ms  0x6515 PR_Close()
  5862 ms  0x6515 fd:0x7f9f46218be0
  5863 ms  0x6515 PR_Close()
  5863 ms  0x6515 fd:0x7f9f44e2f250
  5863 ms  0x6515 PR_Close()
  5863 ms  0x6515 fd:0x7f9f46218be0
  5865 ms  0x6515 PR_Close()
  5865 ms  0x6515 fd:0x7f9f4670b9a0
  5867 ms  0x6515 PR_Close()
  5867 ms  0x6515 fd:0x7f9f4670b9a0
  5872 ms  0x6515 PR_Close()
  5872 ms  0x6515 fd:0x7f9f46784490
  5873 ms  0x6515 PR_Close()
  5873 ms  0x6515 fd:0x7f9f46784490
  5876 ms  0x6515 PR_Close()
  5876 ms  0x6515 fd:0x7f9f467844c0
           /* TID 0x6586 */
  5881 ms  0x6586 PR_Close()
  5881 ms  0x6586 fd:0x7f9f33cde580
           /* TID 0x6515 */
  5882 ms  0x6515 PR_Close()
  5882 ms  0x6515 fd:0x7f9f44e2f250
  5882 ms  0x6515 PR_Close()
  5882 ms  0x6515 fd:0x7f9f33ea90d0
           /* TID 0x6586 */
  5882 ms  0x6586 PR_Close()
  5882 ms  0x6586 fd:0x7f9f33cde580
  5887 ms  0x6586 PR_Close()
  5887 ms  0x6586 fd:0x7f9f44e2f280
  5912 ms  0x6586 PR_Close()
  5912 ms  0x6586 fd:0x7f9f33ca5040
           /* TID 0x6520 */
  5916 ms  0x6520 SSL_ImportFD()
  5916 ms  0x6520 ret:0x7f9f33ca52b0
  5916 ms  0x6520 SSL_AuthCertificateHook()
  5916 ms  0x6520 fd:0x7f9f33ca52b0
  5916 ms  0x6520 ret:0x0
  5916 ms  0x6520 PR_Connect()
  5916 ms  0x6520 fd:0x7f9f33ca52b0
           /* TID 0x651a */
  5926 ms  0x651a PR_Close()
  5926 ms  0x651a fd:0x7f9f4ed30e20
           /* TID 0x6520 */
  5927 ms  0x6520 PR_Close()
  5927 ms  0x6520 fd:0x7f9f33ca52b0
           /* TID 0x6586 */
  5936 ms  0x6586 PR_Close()
  5936 ms  0x6586 fd:0x7f9f33ca50d0
           /* TID 0x6520 */
  5940 ms  0x6520 PR_Close()
  5940 ms  0x6520 fd:0x7f9f46aa2f40
           /* TID 0x656e */
  5943 ms  0x656e PR_Close()
  5943 ms  0x656e fd:0x7f9f33ca5610
  5943 ms  0x656e PR_Close()
  5943 ms  0x656e fd:0x7f9f33ca5040
  5943 ms  0x656e PR_Close()
  5943 ms  0x656e fd:0x7f9f33ca5040
  5943 ms  0x656e PR_Close()
  5943 ms  0x656e fd:0x7f9f33ca5040
           /* TID 0x6586 */
  5943 ms  0x6586 PR_Close()
  5943 ms  0x6586 fd:0x7f9f33ca5550
           /* TID 0x6528 */
  5946 ms  0x6528 PR_Close()
  5946 ms  0x6528 fd:0x7f9f33ca5d60
  5946 ms  0x6528 PR_Close()
  5946 ms  0x6528 fd:0x7f9f33ca5dc0
           /* TID 0x651a */
  5955 ms  0x651a PR_Close()
  5955 ms  0x651a fd:0x7f9f4510cb80
           /* TID 0x6515 */
  5958 ms  0x6515 PR_Close()
  5958 ms  0x6515 fd:0x7f9f33f50d90
  5958 ms  0x6515 PR_Close()
  5958 ms  0x6515 fd:0x7f9f33ca5fa0
  5969 ms  0x6515 PR_Close()
  5969 ms  0x6515 fd:0x7f9f33cbb340
  5969 ms  0x6515 PR_Close()
  5969 ms  0x6515 fd:0x7f9f44ef5e20
           /* TID 0x6586 */
  5971 ms  0x6586 PR_Close()
  5971 ms  0x6586 fd:0x7f9f33cbb100
           /* TID 0x651a */
  5973 ms  0x651a PR_Close()
  5973 ms  0x651a fd:0x7f9f4b32d790
           /* TID 0x6586 */
  5974 ms  0x6586 PR_Close()
  5974 ms  0x6586 fd:0x7f9f33cbb100
  5992 ms  0x6586 PR_Close()
  5992 ms  0x6586 fd:0x7f9f33cbb100
  5996 ms  0x6586 PR_Close()
  5996 ms  0x6586 fd:0x7f9f33cbb100
  6000 ms  0x6586 PR_Close()
  6000 ms  0x6586 fd:0x7f9f33cde1c0
  6001 ms  0x6586 PR_Close()
  6001 ms  0x6586 fd:0x7f9f33cde1f0
  6010 ms  0x6586 PR_Close()
  6010 ms  0x6586 fd:0x7f9f33cdea30
  6014 ms  0x6586 PR_Close()
  6014 ms  0x6586 fd:0x7f9f33eaf250
  6020 ms  0x6586 PR_Close()
  6020 ms  0x6586 fd:0x7f9f33f50790
  6030 ms  0x6586 PR_Close()
  6030 ms  0x6586 fd:0x7f9f44b229d0
  6032 ms  0x6586 PR_Close()
  6032 ms  0x6586 fd:0x7f9f44b229d0
           /* TID 0x6515 */
  6195 ms  0x6515 PR_Close()
  6195 ms  0x6515 fd:0x7f9f33cbb8b0
  6195 ms  0x6515 PR_Close()
  6195 ms  0x6515 fd:0x7f9f33cbb8b0
  6207 ms  0x6515 PR_Close()
  6207 ms  0x6515 fd:0x7f9f6d3da130
  6207 ms  0x6515 PR_Close()
  6207 ms  0x6515 fd:0x7f9f6d3da190
Process terminated
