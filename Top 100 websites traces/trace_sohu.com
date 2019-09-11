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
           /* TID 0x6c80 */
    28 ms  0x6c80 SECKEY_DestroyPrivateKey()
    28 ms  0x6c80 privk:0x7f625feca820::7f625feca820  10 f5 ef 5f                                      ..._
    28 ms  0x6c80 privk:0x7f625feca820::7f625feca820  e5 e5 e5 e5                                      ....
    28 ms  0x6c80 SECKEY_DestroyPrivateKey()
    28 ms  0x6c80 privk:0x7f625fec8820::7f625fec8820  30 f3 ef 5f                                      0.._
    28 ms  0x6c80 privk:0x7f625fec8820::7f625fec8820  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
   156 ms  0x6c88 PR_Close()
   156 ms  0x6c88 fd:0x7f625fc38c40
           /* TID 0x6c80 */
   250 ms  0x6c80 SSL_ImportFD()
   250 ms  0x6c80 ret:0x7f625fc75790
   250 ms  0x6c80 SSL_AuthCertificateHook()
   250 ms  0x6c80 fd:0x7f625fc75790
   250 ms  0x6c80 ret:0x0
   250 ms  0x6c80 PR_Connect()
   250 ms  0x6c80 fd:0x7f625fc75790
   276 ms  0x6c80 SECKEY_CreateECPrivateKey()
   276 ms  0x6c80 cx:0x7f625fc42168
   277 ms     | 0x6c80 EC_ValidatePublicKey()
   277 ms     | 0x6c80 ret:0x0
   277 ms  0x6c80 ret:0x7f625fc1f020::7f625fc1f020  f0 eb cc 5f                                      ..._
   277 ms  0x6c80 SECKEY_CreateECPrivateKey()
   277 ms  0x6c80 cx:0x7f625fc42168
   278 ms     | 0x6c80 EC_ValidatePublicKey()
   281 ms     | 0x6c80 ret:0x0
   281 ms  0x6c80 ret:0x7f625fc21020::7f625fc21020  d0 ed cc 5f                                      ..._
           /* TID 0x6cdb */
   334 ms  0x6cdb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   335 ms  0x6cdb ret:0x0
           /* TID 0x6c80 */
   335 ms  SECKEY_ECParamsToKeySize()
   335 ms  0x6c80 ret:0x100
   335 ms  0x6c80 SECKEY_CreateECPrivateKey()
   335 ms  0x6c80 cx:0x7f625fc42168
   337 ms     | 0x6c80 EC_ValidatePublicKey()
   342 ms     | 0x6c80 ret:0x0
   342 ms  0x6c80 ret:0x7f625fc24020::7f625fc24020  b0 ea 8c 60                                      ...`
   342 ms  0x6c80 PK11_PubDeriveWithKDF()
   342 ms  0x6c80 seckey:0x7f625fc24020
   342 ms     | 0x6c80 EC_ValidatePublicKey()
   346 ms     | 0x6c80 ret:0x0
   350 ms  0x6c80 ret:0x7f62617c1f80
   350 ms  0x6c80 PK11_DeriveWithFlags()
   350 ms  0x6c80 basekey:0x7f62617c1f80
   350 ms     | 0x6c80 PK11_DeriveWithTemplate()
   350 ms  0x6c80 ret:0x7f625fcfe900
   350 ms  0x6c80 PK11_Derive()
   350 ms  0x6c80 basekey:0x7f625fcfe900
   350 ms     | 0x6c80 PK11_DeriveWithTemplate()
   350 ms  0x6c80 ret:0x7f625fcfeb00
   350 ms  0x6c80 SECKEY_DestroyPrivateKey()
   350 ms  0x6c80 privk:0x7f625fc24020::7f625fc24020  b0 ea 8c 60                                      ...`
   350 ms  0x6c80 privk:0x7f625fc24020::7f625fc24020  e5 e5 e5 e5                                      ....
   351 ms  0x6c80 PK11_Encrypt()
   351 ms  0x6c80 symkey:0x7f625fcff000
   351 ms  0x6c80 SSL_AuthCertificateComplete()
   351 ms  0x6c80 fd:0x7f625fc75790
   351 ms  0x6c80 err:0x0
   351 ms  0x6c80 PK11_Encrypt()
   351 ms  0x6c80 symkey:0x7f625fcff000
   402 ms  0x6c80 SECKEY_DestroyPrivateKey()
   402 ms  0x6c80 privk:0x7f625fc21020::7f625fc21020  d0 ed cc 5f                                      ..._
   403 ms  0x6c80 privk:0x7f625fc21020::7f625fc21020  e5 e5 e5 e5                                      ....
   403 ms  0x6c80 SECKEY_DestroyPrivateKey()
   403 ms  0x6c80 privk:0x7f625fc1f020::7f625fc1f020  f0 eb cc 5f                                      ..._
   403 ms  0x6c80 privk:0x7f625fc1f020::7f625fc1f020  e5 e5 e5 e5                                      ....
   407 ms  0x6c80 PK11_Encrypt()
   407 ms  0x6c80 symkey:0x7f625fcff000
   437 ms  0x6c80 PK11_Encrypt()
   437 ms  0x6c80 symkey:0x7f625fcff000
   468 ms  0x6c80 PK11_Encrypt()
   468 ms  0x6c80 symkey:0x7f625fcff000
   498 ms  0x6c80 PK11_Encrypt()
   498 ms  0x6c80 symkey:0x7f625fcff000
   612 ms  0x6c80 PK11_Encrypt()
   612 ms  0x6c80 symkey:0x7f625fcff000
   645 ms  0x6c80 PK11_Encrypt()
   645 ms  0x6c80 symkey:0x7f625fcff000
   676 ms  0x6c80 PK11_Encrypt()
   676 ms  0x6c80 symkey:0x7f625fcff000
           /* TID 0x6c9c */
   694 ms  0x6c9c PR_Close()
   694 ms  0x6c9c fd:0x7f625fc75640
           /* TID 0x6cd4 */
   704 ms  0x6cd4 PR_Close()
   704 ms  0x6cd4 fd:0x7f6260436190
   704 ms  0x6cd4 PR_Close()
   704 ms  0x6cd4 fd:0x7f62604361f0
   704 ms  0x6cd4 PR_Close()
   704 ms  0x6cd4 fd:0x7f6260436190
   704 ms  0x6cd4 PR_Close()
   704 ms  0x6cd4 fd:0x7f62604361f0
   705 ms  0x6cd4 PR_Close()
   705 ms  0x6cd4 fd:0x7f6260436190
   705 ms  0x6cd4 PR_Close()
   705 ms  0x6cd4 fd:0x7f62604361f0
   705 ms  0x6cd4 PR_Close()
   705 ms  0x6cd4 fd:0x7f6260436190
   705 ms  0x6cd4 PR_Close()
   705 ms  0x6cd4 fd:0x7f62604361f0
   705 ms  0x6cd4 PR_Close()
   705 ms  0x6cd4 fd:0x7f6260436190
   705 ms  0x6cd4 PR_Close()
   705 ms  0x6cd4 fd:0x7f62604361f0
   705 ms  0x6cd4 PR_Close()
   705 ms  0x6cd4 fd:0x7f6260436190
   705 ms  0x6cd4 PR_Close()
   705 ms  0x6cd4 fd:0x7f62604361f0
   705 ms  0x6cd4 PR_Close()
   705 ms  0x6cd4 fd:0x7f6260436190
   705 ms  0x6cd4 PR_Close()
   705 ms  0x6cd4 fd:0x7f62604361f0
   705 ms  0x6cd4 PR_Close()
   705 ms  0x6cd4 fd:0x7f6260436190
   705 ms  0x6cd4 PR_Close()
   705 ms  0x6cd4 fd:0x7f62604361f0
   706 ms  0x6cd4 PR_Close()
   706 ms  0x6cd4 fd:0x7f6260436190
   706 ms  0x6cd4 PR_Close()
   706 ms  0x6cd4 fd:0x7f62604361f0
   706 ms  0x6cd4 PR_Close()
   706 ms  0x6cd4 fd:0x7f6260436190
   706 ms  0x6cd4 PR_Close()
   706 ms  0x6cd4 fd:0x7f62604361f0
   706 ms  0x6cd4 PR_Close()
   706 ms  0x6cd4 fd:0x7f6260436190
   706 ms  0x6cd4 PR_Close()
   706 ms  0x6cd4 fd:0x7f62604361f0
   706 ms  0x6cd4 PR_Close()
   706 ms  0x6cd4 fd:0x7f6260436190
   706 ms  0x6cd4 PR_Close()
   706 ms  0x6cd4 fd:0x7f62604361f0
   706 ms  0x6cd4 PR_Close()
   706 ms  0x6cd4 fd:0x7f6260436190
   706 ms  0x6cd4 PR_Close()
   706 ms  0x6cd4 fd:0x7f62604361f0
   706 ms  0x6cd4 PR_Close()
   706 ms  0x6cd4 fd:0x7f6260436190
   706 ms  0x6cd4 PR_Close()
   706 ms  0x6cd4 fd:0x7f62604361f0
           /* TID 0x6c9c */
   743 ms  0x6c9c PR_Close()
   743 ms  0x6c9c fd:0x7f625fc75640
           /* TID 0x6cd4 */
   779 ms  0x6cd4 PR_Close()
   779 ms  0x6cd4 fd:0x7f6260436190
   779 ms  0x6cd4 PR_Close()
   779 ms  0x6cd4 fd:0x7f625fcb7d60
   783 ms  0x6cd4 PR_Close()
   783 ms  0x6cd4 fd:0x7f625fcb7d60
   783 ms  0x6cd4 PR_Close()
   783 ms  0x6cd4 fd:0x7f6260436130
   786 ms  0x6cd4 PR_Close()
   786 ms  0x6cd4 fd:0x7f6260436130
   787 ms  0x6cd4 PR_Close()
   787 ms  0x6cd4 fd:0x7f6260436130
   789 ms  0x6cd4 PR_Close()
   789 ms  0x6cd4 fd:0x7f6260436130
   790 ms  0x6cd4 PR_Close()
   790 ms  0x6cd4 fd:0x7f6260436130
           /* TID 0x6c9c */
   817 ms  0x6c9c PR_Close()
   817 ms  0x6c9c fd:0x7f62604361c0
           /* TID 0x6cd4 */
   849 ms  0x6cd4 PR_Close()
   849 ms  0x6cd4 fd:0x7f6260436130
   850 ms  0x6cd4 PR_Close()
   850 ms  0x6cd4 fd:0x7f6260436130
   857 ms  0x6cd4 PR_Close()
   857 ms  0x6cd4 fd:0x7f6260436130
   857 ms  0x6cd4 PR_Close()
   857 ms  0x6cd4 fd:0x7f6260436130
   863 ms  0x6cd4 PR_Close()
   863 ms  0x6cd4 fd:0x7f6260436130
   863 ms  0x6cd4 PR_Close()
   863 ms  0x6cd4 fd:0x7f6260436130
   865 ms  0x6cd4 PR_Close()
   865 ms  0x6cd4 fd:0x7f6260436130
   865 ms  0x6cd4 PR_Close()
   865 ms  0x6cd4 fd:0x7f6260436130
           /* TID 0x6cd1 */
   865 ms  0x6cd1 PR_Close()
   865 ms  0x6cd1 fd:0x7f6260436130
   865 ms  0x6cd1 PR_Close()
   865 ms  0x6cd1 fd:0x7f6260436130
   865 ms  0x6cd1 PR_Close()
   865 ms  0x6cd1 fd:0x7f6260436130
   865 ms  0x6cd1 PR_Close()
   865 ms  0x6cd1 fd:0x7f6260436130
   865 ms  0x6cd1 PR_Close()
   865 ms  0x6cd1 fd:0x7f6260436130
   865 ms  0x6cd1 PR_Close()
   865 ms  0x6cd1 fd:0x7f6260436130
   865 ms  0x6cd1 PR_Close()
   865 ms  0x6cd1 fd:0x7f6260436130
   865 ms  0x6cd1 PR_Close()
   865 ms  0x6cd1 fd:0x7f6260436130
   865 ms  0x6cd1 PR_Close()
   865 ms  0x6cd1 fd:0x7f6260436130
   865 ms  0x6cd1 PR_Close()
   865 ms  0x6cd1 fd:0x7f6260436130
   865 ms  0x6cd1 PR_Close()
   865 ms  0x6cd1 fd:0x7f6260436130
   866 ms  0x6cd1 PR_Close()
   866 ms  0x6cd1 fd:0x7f6260436130
   866 ms  0x6cd1 PR_Close()
   866 ms  0x6cd1 fd:0x7f6260436130
   866 ms  0x6cd1 PR_Close()
   866 ms  0x6cd1 fd:0x7f6260436130
   866 ms  0x6cd1 PR_Close()
   866 ms  0x6cd1 fd:0x7f6260436130
           /* TID 0x6c9c */
  1368 ms  0x6c9c PR_Close()
  1368 ms  0x6c9c fd:0x7f625fc75d60
  1373 ms  0x6c9c PR_Close()
  1373 ms  0x6c9c fd:0x7f625fc75d60
  2868 ms  0x6c9c PR_Close()
  2868 ms  0x6c9c fd:0x7f6260436610
           /* TID 0x6c88 */
  4302 ms  0x6c88 PR_Close()
  4302 ms  0x6c88 fd:0x7f6260436700
  4302 ms  0x6c88 PR_Close()
  4302 ms  0x6c88 fd:0x7f6260436760
  4302 ms  0x6c88 PR_Close()
  4302 ms  0x6c88 fd:0x7f62604367c0
           /* TID 0x6c80 */
  5329 ms  0x6c80 SSL_ImportFD()
  5329 ms  0x6c80 ret:0x7f624ecf0850
  5329 ms  0x6c80 SSL_AuthCertificateHook()
  5329 ms  0x6c80 fd:0x7f624ecf0850
  5329 ms  0x6c80 ret:0x0
  5329 ms  0x6c80 PR_Connect()
  5329 ms  0x6c80 fd:0x7f624ecf0850
  5578 ms  0x6c80 SECKEY_CreateECPrivateKey()
  5578 ms  0x6c80 cx:0x7f624ed2dc08
  5580 ms     | 0x6c80 EC_ValidatePublicKey()
  5581 ms     | 0x6c80 ret:0x0
  5581 ms  0x6c80 ret:0x7f624ec97820::7f624ec97820  d0 48 cb 4e                                      .H.N
  5581 ms  0x6c80 SECKEY_CreateECPrivateKey()
  5581 ms  0x6c80 cx:0x7f624ed2dc08
  5583 ms     | 0x6c80 EC_ValidatePublicKey()
  5591 ms     | 0x6c80 ret:0x0
  5591 ms  0x6c80 ret:0x7f624ec99820::7f624ec99820  50 4b cb 4e                                      PK.N
  5848 ms  SECKEY_ECParamsToKeySize()
  5848 ms  0x6c80 ret:0xff
  5848 ms  0x6c80 SECKEY_CreateECPrivateKey()
  5848 ms  0x6c80 cx:0x7f624ed2dc08
  5850 ms     | 0x6c80 EC_ValidatePublicKey()
  5850 ms     | 0x6c80 ret:0x0
  5850 ms  0x6c80 ret:0x7f624eca1820::7f624eca1820  b0 4f cb 4e                                      .O.N
  5850 ms  0x6c80 PK11_PubDeriveWithKDF()
  5850 ms  0x6c80 seckey:0x7f624eca1820
  5850 ms     | 0x6c80 EC_ValidatePublicKey()
  5850 ms     | 0x6c80 ret:0x0
  5852 ms  0x6c80 ret:0x7f62617c1f80
  5852 ms  0x6c80 PK11_DeriveWithFlags()
  5852 ms  0x6c80 basekey:0x7f62617c1f80
  5852 ms     | 0x6c80 PK11_DeriveWithTemplate()
  5852 ms  0x6c80 ret:0x7f624ecf3480
  5852 ms  0x6c80 PK11_Derive()
  5852 ms  0x6c80 basekey:0x7f624ecf3480
  5852 ms     | 0x6c80 PK11_DeriveWithTemplate()
  5852 ms  0x6c80 ret:0x7f624ecf3580
  5852 ms  0x6c80 SECKEY_DestroyPrivateKey()
  5852 ms  0x6c80 privk:0x7f624eca1820::7f624eca1820  b0 4f cb 4e                                      .O.N
  5853 ms  0x6c80 privk:0x7f624eca1820::7f624eca1820  e5 e5 e5 e5                                      ....
  5853 ms  0x6c80 PK11_Encrypt()
  5853 ms  0x6c80 symkey:0x7f624ecf3a00
  5857 ms  0x6c80 PR_Connect()
  5857 ms  0x6c80 fd:0x7f624ecf0b80
           /* TID 0x6cdb */
  5911 ms  0x6cdb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5912 ms  0x6cdb ret:0x0
           /* TID 0x6c88 */
  5912 ms  0x6c88 PR_Close()
  5912 ms  0x6c88 fd:0x7f624ecf08b0
           /* TID 0x6c80 */
  5913 ms  0x6c80 SSL_AuthCertificateComplete()
  5913 ms  0x6c80 fd:0x7f624ecf0850
  5913 ms  0x6c80 err:0x0
  5915 ms  0x6c80 PK11_Encrypt()
  5915 ms  0x6c80 symkey:0x7f624ecf3a00
  5915 ms  0x6c80 PK11_Encrypt()
  5915 ms  0x6c80 symkey:0x7f624ecf3a00
  6103 ms  0x6c80 SECKEY_DestroyPrivateKey()
  6103 ms  0x6c80 privk:0x7f624ec99820::7f624ec99820  50 4b cb 4e                                      PK.N
  6104 ms  0x6c80 privk:0x7f624ec99820::7f624ec99820  e5 e5 e5 e5                                      ....
  6104 ms  0x6c80 SECKEY_DestroyPrivateKey()
  6104 ms  0x6c80 privk:0x7f624ec97820::7f624ec97820  d0 48 cb 4e                                      .H.N
  6104 ms  0x6c80 privk:0x7f624ec97820::7f624ec97820  e5 e5 e5 e5                                      ....
  6104 ms  0x6c80 PK11_Encrypt()
  6104 ms  0x6c80 symkey:0x7f624ecf3a00
           /* TID 0x6c97 */
  6616 ms  0x6c97 PR_Close()
  6616 ms  0x6c97 fd:0x7f625fc4f220
           /* TID 0x6c88 */
  6852 ms  0x6c88 PR_Close()
  6852 ms  0x6c88 fd:0x7f625fc38df0
           /* TID 0x6c80 */
  6887 ms  0x6c80 PK11_Encrypt()
  6887 ms  0x6c80 symkey:0x7f624ecf3a00
  7134 ms  0x6c80 SSL_ImportFD()
  7134 ms  0x6c80 ret:0x7f625fc4f3a0
  7134 ms  0x6c80 SSL_AuthCertificateHook()
  7134 ms  0x6c80 fd:0x7f625fc4f3a0
  7134 ms  0x6c80 ret:0x0
  7136 ms  0x6c80 PK11_Encrypt()
  7136 ms  0x6c80 symkey:0x7f624ecf3a00
  7136 ms  0x6c80 PR_Connect()
  7136 ms  0x6c80 fd:0x7f625fc4f3a0
           /* TID 0x6c88 */
  7141 ms  0x6c88 PR_Close()
  7141 ms  0x6c88 fd:0x7f624ecf0d00
           /* TID 0x6c80 */
  7193 ms  0x6c80 SSL_ImportFD()
  7193 ms  0x6c80 ret:0x7f625fc75160
  7193 ms  0x6c80 SSL_AuthCertificateHook()
  7193 ms  0x6c80 fd:0x7f625fc75160
  7194 ms  0x6c80 ret:0x0
  7194 ms  0x6c80 PR_Connect()
  7194 ms  0x6c80 fd:0x7f625fc75160
  7244 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7244 ms  0x6c80 cx:0x7f624ed2eaa8
  7245 ms     | 0x6c80 EC_ValidatePublicKey()
  7245 ms     | 0x6c80 ret:0x0
  7245 ms  0x6c80 ret:0x7f625fc13820::7f625fc13820  20 d4 c3 5f                                       .._
  7246 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7246 ms  0x6c80 cx:0x7f624ed2eaa8
  7248 ms     | 0x6c80 EC_ValidatePublicKey()
  7253 ms     | 0x6c80 ret:0x0
  7253 ms  0x6c80 ret:0x7f62648a5820::7f62648a5820  e0 d2 c3 5f                                      ..._
  7285 ms  0x6c80 SSL_ImportFD()
  7285 ms  0x6c80 ret:0x7f625fc750a0
  7285 ms  0x6c80 SSL_AuthCertificateHook()
  7285 ms  0x6c80 fd:0x7f625fc750a0
  7285 ms  0x6c80 ret:0x0
  7285 ms  0x6c80 PR_Connect()
  7285 ms  0x6c80 fd:0x7f625fc750a0
  7286 ms  0x6c80 SSL_ImportFD()
  7286 ms  0x6c80 ret:0x7f625fc38eb0
  7286 ms  0x6c80 SSL_AuthCertificateHook()
  7286 ms  0x6c80 fd:0x7f625fc38eb0
  7286 ms  0x6c80 ret:0x0
  7287 ms  0x6c80 PR_Connect()
  7287 ms  0x6c80 fd:0x7f625fc38eb0
  7287 ms  0x6c80 SSL_ImportFD()
  7287 ms  0x6c80 ret:0x7f625fc4f370
  7287 ms  0x6c80 SSL_AuthCertificateHook()
  7287 ms  0x6c80 fd:0x7f625fc4f370
  7287 ms  0x6c80 ret:0x0
  7288 ms  0x6c80 PR_Connect()
  7288 ms  0x6c80 fd:0x7f625fc4f370
  7288 ms  0x6c80 SSL_ImportFD()
  7288 ms  0x6c80 ret:0x7f625fc4f7c0
  7288 ms  0x6c80 SSL_AuthCertificateHook()
  7288 ms  0x6c80 fd:0x7f625fc4f7c0
  7288 ms  0x6c80 ret:0x0
  7288 ms  0x6c80 PR_Connect()
  7288 ms  0x6c80 fd:0x7f625fc4f7c0
  7289 ms  0x6c80 SSL_ImportFD()
  7289 ms  0x6c80 ret:0x7f625fc4f940
  7289 ms  0x6c80 SSL_AuthCertificateHook()
  7289 ms  0x6c80 fd:0x7f625fc4f940
  7289 ms  0x6c80 ret:0x0
  7289 ms  0x6c80 PR_Connect()
  7289 ms  0x6c80 fd:0x7f625fc4f940
  7310 ms  SECKEY_ECParamsToKeySize()
  7310 ms  0x6c80 ret:0xff
  7310 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7310 ms  0x6c80 cx:0x7f624ed2eaa8
  7311 ms     | 0x6c80 EC_ValidatePublicKey()
  7311 ms     | 0x6c80 ret:0x0
  7311 ms  0x6c80 ret:0x7f62661d2820::7f62661d2820  10 15 3a 61                                      ..:a
  7311 ms  0x6c80 PK11_PubDeriveWithKDF()
  7311 ms  0x6c80 seckey:0x7f62661d2820
  7311 ms     | 0x6c80 EC_ValidatePublicKey()
  7312 ms     | 0x6c80 ret:0x0
  7313 ms  0x6c80 ret:0x7f62617c1f80
  7313 ms  0x6c80 PK11_DeriveWithFlags()
  7313 ms  0x6c80 basekey:0x7f62617c1f80
  7313 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7313 ms  0x6c80 ret:0x7f625fc9a680
  7313 ms  0x6c80 PK11_Derive()
  7313 ms  0x6c80 basekey:0x7f625fc9a680
  7313 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7313 ms  0x6c80 ret:0x7f625fc9a700
  7313 ms  0x6c80 SECKEY_DestroyPrivateKey()
  7313 ms  0x6c80 privk:0x7f62661d2820::7f62661d2820  10 15 3a 61                                      ..:a
  7313 ms  0x6c80 privk:0x7f62661d2820::7f62661d2820  e5 e5 e5 e5                                      ....
  7314 ms  0x6c80 PK11_Encrypt()
  7314 ms  0x6c80 symkey:0x7f625fc9a880
  7338 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7338 ms  0x6c80 cx:0x7f624ed2ec48
  7339 ms     | 0x6c80 EC_ValidatePublicKey()
  7339 ms     | 0x6c80 ret:0x0
  7339 ms  0x6c80 ret:0x7f62661d2820::7f62661d2820  c0 14 3a 61                                      ..:a
  7339 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7339 ms  0x6c80 cx:0x7f624ed2ec48
  7341 ms     | 0x6c80 EC_ValidatePublicKey()
  7345 ms     | 0x6c80 ret:0x0
  7345 ms  0x6c80 ret:0x7f62661d8020::7f62661d8020  70 1e 3a 61                                      p.:a
  7347 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7347 ms  0x6c80 cx:0x7f624ed2ef88
  7348 ms     | 0x6c80 EC_ValidatePublicKey()
  7348 ms     | 0x6c80 ret:0x0
  7348 ms  0x6c80 ret:0x7f6266302820::7f6266302820  00 81 3e 61                                      ..>a
  7348 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7348 ms  0x6c80 cx:0x7f624ed2ef88
  7350 ms     | 0x6c80 EC_ValidatePublicKey()
  7353 ms     | 0x6c80 ret:0x0
  7353 ms  0x6c80 ret:0x7f6266306820::7f6266306820  40 87 3e 61                                      @.>a
  7355 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7355 ms  0x6c80 cx:0x7f624ed2f468
  7356 ms     | 0x6c80 EC_ValidatePublicKey()
  7356 ms     | 0x6c80 ret:0x0
  7356 ms  0x6c80 ret:0x7f626630b820::7f626630b820  b0 8a 3e 61                                      ..>a
  7356 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7356 ms  0x6c80 cx:0x7f624ed2f468
  7358 ms     | 0x6c80 EC_ValidatePublicKey()
  7361 ms     | 0x6c80 ret:0x0
  7361 ms  0x6c80 ret:0x7f6266311020::7f6266311020  40 a2 79 61                                      @.ya
  7365 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7365 ms  0x6c80 cx:0x7f624ed2f2c8
  7366 ms     | 0x6c80 EC_ValidatePublicKey()
  7366 ms     | 0x6c80 ret:0x0
  7366 ms  0x6c80 ret:0x7f626631c820::7f626631c820  30 ad 79 61                                      0.ya
  7366 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7366 ms  0x6c80 cx:0x7f624ed2f2c8
  7367 ms     | 0x6c80 EC_ValidatePublicKey()
  7369 ms     | 0x6c80 ret:0x0
  7369 ms  0x6c80 ret:0x7f626631e820::7f626631e820  80 5d 7c 61                                      .]|a
  7370 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7370 ms  0x6c80 cx:0x7f624ed2f128
  7372 ms     | 0x6c80 EC_ValidatePublicKey()
  7372 ms     | 0x6c80 ret:0x0
  7372 ms  0x6c80 ret:0x7f6266467020::7f6266467020  e0 1c b6 61                                      ...a
  7372 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7372 ms  0x6c80 cx:0x7f624ed2f128
  7373 ms     | 0x6c80 EC_ValidatePublicKey()
  7375 ms     | 0x6c80 ret:0x0
  7375 ms  0x6c80 ret:0x7f6266469020::7f6266469020  60 70 e5 62                                      `p.b
  7387 ms  0x6c80 SSL_ImportFD()
  7387 ms  0x6c80 ret:0x7f6260a4a130
  7387 ms  0x6c80 SSL_AuthCertificateHook()
  7387 ms  0x6c80 fd:0x7f6260a4a130
  7387 ms  0x6c80 ret:0x0
  7387 ms  0x6c80 PR_Connect()
  7387 ms  0x6c80 fd:0x7f6260a4a130
           /* TID 0x6c88 */
  7389 ms  0x6c88 PR_Close()
  7389 ms  0x6c88 fd:0x7f625fc75610
           /* TID 0x6c80 */
  7394 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7394 ms  0x6c80 cx:0x7f624ed2e908
  7395 ms     | 0x6c80 EC_ValidatePublicKey()
  7396 ms     | 0x6c80 ret:0x0
  7396 ms  0x6c80 ret:0x7f626646b020::7f626646b020  80 dd e5 62                                      ...b
  7396 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7396 ms  0x6c80 cx:0x7f624ed2e908
  7397 ms     | 0x6c80 EC_ValidatePublicKey()
  7400 ms     | 0x6c80 ret:0x0
  7400 ms  0x6c80 ret:0x7f626646f020::7f626646f020  f0 e1 e6 62                                      ...b
  7401 ms  SECKEY_ECParamsToKeySize()
  7401 ms  0x6c80 ret:0xff
  7401 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7401 ms  0x6c80 cx:0x7f624ed2ec48
  7402 ms     | 0x6c80 EC_ValidatePublicKey()
  7402 ms     | 0x6c80 ret:0x0
  7402 ms  0x6c80 ret:0x7f6266479820::7f6266479820  70 2e 86 64                                      p..d
  7402 ms  0x6c80 PK11_PubDeriveWithKDF()
  7402 ms  0x6c80 seckey:0x7f6266479820
  7402 ms     | 0x6c80 EC_ValidatePublicKey()
  7402 ms     | 0x6c80 ret:0x0
  7403 ms  0x6c80 ret:0x7f62617c1f80
  7403 ms  0x6c80 PK11_DeriveWithFlags()
  7403 ms  0x6c80 basekey:0x7f62617c1f80
  7403 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7403 ms  0x6c80 ret:0x7f625fc9ac00
  7403 ms  0x6c80 PK11_Derive()
  7403 ms  0x6c80 basekey:0x7f625fc9ac00
  7403 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7403 ms  0x6c80 ret:0x7f625fc9ac80
  7403 ms  0x6c80 SECKEY_DestroyPrivateKey()
  7403 ms  0x6c80 privk:0x7f6266479820::7f6266479820  70 2e 86 64                                      p..d
  7404 ms  0x6c80 privk:0x7f6266479820::7f6266479820  e5 e5 e5 e5                                      ....
  7404 ms  0x6c80 PK11_Encrypt()
  7404 ms  0x6c80 symkey:0x7f625fc9ae00
  7406 ms  SECKEY_ECParamsToKeySize()
  7406 ms  0x6c80 ret:0xff
  7406 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7406 ms  0x6c80 cx:0x7f624ed2ef88
  7406 ms     | 0x6c80 EC_ValidatePublicKey()
  7407 ms     | 0x6c80 ret:0x0
  7407 ms  0x6c80 ret:0x7f626647d820::7f626647d820  80 dd cf 65                                      ...e
  7407 ms  0x6c80 PK11_PubDeriveWithKDF()
  7407 ms  0x6c80 seckey:0x7f626647d820
  7407 ms     | 0x6c80 EC_ValidatePublicKey()
  7407 ms     | 0x6c80 ret:0x0
  7407 ms  0x6c80 ret:0x7f62617c1f80
  7407 ms  0x6c80 PK11_DeriveWithFlags()
  7407 ms  0x6c80 basekey:0x7f62617c1f80
  7407 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7407 ms  0x6c80 ret:0x7f625fc9b580
  7407 ms  0x6c80 PK11_Derive()
  7407 ms  0x6c80 basekey:0x7f625fc9b580
  7407 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7408 ms  0x6c80 ret:0x7f625fc9b600
  7408 ms  0x6c80 SECKEY_DestroyPrivateKey()
  7408 ms  0x6c80 privk:0x7f626647d820::7f626647d820  80 dd cf 65                                      ...e
  7408 ms  0x6c80 privk:0x7f626647d820::7f626647d820  e5 e5 e5 e5                                      ....
  7408 ms  0x6c80 PK11_Encrypt()
  7408 ms  0x6c80 symkey:0x7f625fc9b780
  7415 ms  SECKEY_ECParamsToKeySize()
  7415 ms  0x6c80 ret:0xff
  7415 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7415 ms  0x6c80 cx:0x7f624ed2f468
  7415 ms     | 0x6c80 EC_ValidatePublicKey()
  7415 ms     | 0x6c80 ret:0x0
  7415 ms  0x6c80 ret:0x7f6266481820::7f6266481820  b0 35 ff 65                                      .5.e
  7415 ms  0x6c80 PK11_PubDeriveWithKDF()
  7415 ms  0x6c80 seckey:0x7f6266481820
  7415 ms     | 0x6c80 EC_ValidatePublicKey()
  7415 ms     | 0x6c80 ret:0x0
  7416 ms  0x6c80 ret:0x7f62617c1f80
  7416 ms  0x6c80 PK11_DeriveWithFlags()
  7416 ms  0x6c80 basekey:0x7f62617c1f80
  7416 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7416 ms  0x6c80 ret:0x7f625fc9ba80
  7416 ms  0x6c80 PK11_Derive()
  7416 ms  0x6c80 basekey:0x7f625fc9ba80
  7416 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7416 ms  0x6c80 ret:0x7f625fc9bb00
  7416 ms  0x6c80 SECKEY_DestroyPrivateKey()
  7416 ms  0x6c80 privk:0x7f6266481820::7f6266481820  b0 35 ff 65                                      .5.e
  7416 ms  0x6c80 privk:0x7f6266481820::7f6266481820  e5 e5 e5 e5                                      ....
  7416 ms  0x6c80 PK11_Encrypt()
  7416 ms  0x6c80 symkey:0x7f625fc9bc80
  7421 ms  SECKEY_ECParamsToKeySize()
  7421 ms  0x6c80 ret:0xff
  7421 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7421 ms  0x6c80 cx:0x7f624ed2f2c8
  7421 ms     | 0x6c80 EC_ValidatePublicKey()
  7422 ms     | 0x6c80 ret:0x0
  7422 ms  0x6c80 ret:0x7f6268dac820::7f6268dac820  10 75 13 66                                      .u.f
  7422 ms  0x6c80 PK11_PubDeriveWithKDF()
  7422 ms  0x6c80 seckey:0x7f6268dac820
  7422 ms     | 0x6c80 EC_ValidatePublicKey()
  7422 ms     | 0x6c80 ret:0x0
  7422 ms  0x6c80 ret:0x7f62617c1f80
  7422 ms  0x6c80 PK11_DeriveWithFlags()
  7422 ms  0x6c80 basekey:0x7f62617c1f80
  7422 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7422 ms  0x6c80 ret:0x7f625fc9bf80
  7422 ms  0x6c80 PK11_Derive()
  7422 ms  0x6c80 basekey:0x7f625fc9bf80
  7422 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7422 ms  0x6c80 ret:0x7f625fca8080
  7422 ms  0x6c80 SECKEY_DestroyPrivateKey()
  7422 ms  0x6c80 privk:0x7f6268dac820::7f6268dac820  10 75 13 66                                      .u.f
  7422 ms  0x6c80 privk:0x7f6268dac820::7f6268dac820  e5 e5 e5 e5                                      ....
  7422 ms  0x6c80 PK11_Encrypt()
  7422 ms  0x6c80 symkey:0x7f625fca8200
  7428 ms  SECKEY_ECParamsToKeySize()
  7428 ms  0x6c80 ret:0xff
  7428 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7428 ms  0x6c80 cx:0x7f624ed2f128
  7429 ms     | 0x6c80 EC_ValidatePublicKey()
  7429 ms     | 0x6c80 ret:0x0
  7429 ms  0x6c80 ret:0x7f6268db3820::7f6268db3820  e0 ac 17 66                                      ...f
  7429 ms  0x6c80 PK11_PubDeriveWithKDF()
  7429 ms  0x6c80 seckey:0x7f6268db3820
  7429 ms     | 0x6c80 EC_ValidatePublicKey()
  7429 ms     | 0x6c80 ret:0x0
  7430 ms  0x6c80 ret:0x7f62617c1f80
  7431 ms  0x6c80 PK11_DeriveWithFlags()
  7431 ms  0x6c80 basekey:0x7f62617c1f80
  7431 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7431 ms  0x6c80 ret:0x7f625fca8880
  7431 ms  0x6c80 PK11_Derive()
  7431 ms  0x6c80 basekey:0x7f625fca8880
  7431 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7431 ms  0x6c80 ret:0x7f625fca8900
  7431 ms  0x6c80 SECKEY_DestroyPrivateKey()
  7431 ms  0x6c80 privk:0x7f6268db3820::7f6268db3820  e0 ac 17 66                                      ...f
  7431 ms  0x6c80 privk:0x7f6268db3820::7f6268db3820  e5 e5 e5 e5                                      ....
  7431 ms  0x6c80 PK11_Encrypt()
  7431 ms  0x6c80 symkey:0x7f625fca8a80
  7645 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7645 ms  0x6c80 cx:0x7f624ed2f608
  7647 ms     | 0x6c80 EC_ValidatePublicKey()
  7647 ms     | 0x6c80 ret:0x0
  7647 ms  0x6c80 ret:0x7f6268db3820::7f6268db3820  60 aa 17 66                                      `..f
  7647 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7647 ms  0x6c80 cx:0x7f624ed2f608
  7649 ms     | 0x6c80 EC_ValidatePublicKey()
  7654 ms     | 0x6c80 ret:0x0
  7654 ms  0x6c80 ret:0x7f6268db8820::7f6268db8820  00 16 1b 66                                      ...f
  7663 ms  SECKEY_ECParamsToKeySize()
  7663 ms  0x6c80 ret:0xff
  7663 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7663 ms  0x6c80 cx:0x7f624ed2e908
  7665 ms     | 0x6c80 EC_ValidatePublicKey()
  7665 ms     | 0x6c80 ret:0x0
  7665 ms  0x6c80 ret:0x7f6268dbd020::7f6268dbd020  e0 17 1b 66                                      ...f
  7665 ms  0x6c80 PK11_PubDeriveWithKDF()
  7665 ms  0x6c80 seckey:0x7f6268dbd020
  7666 ms     | 0x6c80 EC_ValidatePublicKey()
  7666 ms     | 0x6c80 ret:0x0
  7667 ms  0x6c80 ret:0x7f62617c1f80
  7667 ms  0x6c80 PK11_DeriveWithFlags()
  7667 ms  0x6c80 basekey:0x7f62617c1f80
  7667 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7667 ms  0x6c80 ret:0x7f624ecf4600
  7667 ms  0x6c80 PK11_Derive()
  7667 ms  0x6c80 basekey:0x7f624ecf4600
  7667 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7668 ms  0x6c80 ret:0x7f625fca8c00
  7668 ms  0x6c80 SECKEY_DestroyPrivateKey()
  7668 ms  0x6c80 privk:0x7f6268dbd020::7f6268dbd020  e0 17 1b 66                                      ...f
  7668 ms  0x6c80 privk:0x7f6268dbd020::7f6268dbd020  e5 e5 e5 e5                                      ....
  7668 ms  0x6c80 PK11_Encrypt()
  7668 ms  0x6c80 symkey:0x7f625fca8d80
  7712 ms  0x6c80 SSL_ImportFD()
  7712 ms  0x6c80 ret:0x7f6260a4a0d0
  7712 ms  0x6c80 SSL_AuthCertificateHook()
  7712 ms  0x6c80 fd:0x7f6260a4a0d0
  7712 ms  0x6c80 ret:0x0
  7712 ms  0x6c80 PR_Connect()
  7712 ms  0x6c80 fd:0x7f6260a4a0d0
  7810 ms  0x6c80 SSL_ImportFD()
  7811 ms  0x6c80 ret:0x7f6261bd5d90
  7811 ms  0x6c80 SSL_AuthCertificateHook()
  7811 ms  0x6c80 fd:0x7f6261bd5d90
  7811 ms  0x6c80 ret:0x0
  7811 ms  0x6c80 PR_Connect()
  7811 ms  0x6c80 fd:0x7f6261bd5d90
  7811 ms  0x6c80 SSL_ImportFD()
  7811 ms  0x6c80 ret:0x7f6261bd5dc0
  7811 ms  0x6c80 SSL_AuthCertificateHook()
  7811 ms  0x6c80 fd:0x7f6261bd5dc0
  7811 ms  0x6c80 ret:0x0
  7812 ms  0x6c80 PR_Connect()
  7812 ms  0x6c80 fd:0x7f6261bd5dc0
  7812 ms  0x6c80 SSL_ImportFD()
  7812 ms  0x6c80 ret:0x7f6261bd5d30
  7812 ms  0x6c80 SSL_AuthCertificateHook()
  7812 ms  0x6c80 fd:0x7f6261bd5d30
  7812 ms  0x6c80 ret:0x0
  7812 ms  0x6c80 PR_Connect()
  7812 ms  0x6c80 fd:0x7f6261bd5d30
  7865 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7865 ms  0x6c80 cx:0x7f624ed307e8
  7867 ms     | 0x6c80 EC_ValidatePublicKey()
  7867 ms     | 0x6c80 ret:0x0
  7867 ms  0x6c80 ret:0x7f6268dbb820::7f6268dbb820  80 18 1b 66                                      ...f
  7868 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7868 ms  0x6c80 cx:0x7f624ed307e8
  7870 ms     | 0x6c80 EC_ValidatePublicKey()
  7874 ms     | 0x6c80 ret:0x0
  7874 ms  0x6c80 ret:0x7f6268dbd820::7f6268dbd820  10 1f 1b 66                                      ...f
  7877 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7877 ms  0x6c80 cx:0x7f624ed30648
  7878 ms     | 0x6c80 EC_ValidatePublicKey()
  7878 ms     | 0x6c80 ret:0x0
  7878 ms  0x6c80 ret:0x7f6269ad9820::7f6269ad9820  f0 ab 1b 66                                      ...f
  7879 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7879 ms  0x6c80 cx:0x7f624ed30648
  7880 ms     | 0x6c80 EC_ValidatePublicKey()
  7884 ms     | 0x6c80 ret:0x0
  7884 ms  0x6c80 ret:0x7f6269add820::7f6269add820  c0 ae 32 66                                      ..2f
  7886 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7886 ms  0x6c80 cx:0x7f624ed304a8
  7887 ms     | 0x6c80 EC_ValidatePublicKey()
  7887 ms     | 0x6c80 ret:0x0
  7887 ms  0x6c80 ret:0x7f6269ae3820::7f6269ae3820  d0 e3 3d 66                                      ..=f
  7887 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7887 ms  0x6c80 cx:0x7f624ed304a8
  7889 ms     | 0x6c80 EC_ValidatePublicKey()
  7892 ms     | 0x6c80 ret:0x0
  7892 ms  0x6c80 ret:0x7f6269ae6020::7f6269ae6020  c0 5e 3f 66                                      .^?f
  7923 ms  SECKEY_ECParamsToKeySize()
  7923 ms  0x6c80 ret:0xff
  7923 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7923 ms  0x6c80 cx:0x7f624ed2f608
  7924 ms     | 0x6c80 EC_ValidatePublicKey()
  7924 ms     | 0x6c80 ret:0x0
  7924 ms  0x6c80 ret:0x7f6269aec020::7f6269aec020  e0 e7 4b 66                                      ..Kf
  7924 ms  0x6c80 PK11_PubDeriveWithKDF()
  7924 ms  0x6c80 seckey:0x7f6269aec020
  7924 ms     | 0x6c80 EC_ValidatePublicKey()
  7924 ms     | 0x6c80 ret:0x0
  7925 ms  0x6c80 ret:0x7f62617c1f80
  7925 ms  0x6c80 PK11_DeriveWithFlags()
  7925 ms  0x6c80 basekey:0x7f62617c1f80
  7925 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7925 ms  0x6c80 ret:0x7f624ecf3980
  7925 ms  0x6c80 PK11_Derive()
  7925 ms  0x6c80 basekey:0x7f624ecf3980
  7925 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7925 ms  0x6c80 ret:0x7f624ecf3b00
  7925 ms  0x6c80 SECKEY_DestroyPrivateKey()
  7925 ms  0x6c80 privk:0x7f6269aec020::7f6269aec020  e0 e7 4b 66                                      ..Kf
  7925 ms  0x6c80 privk:0x7f6269aec020::7f6269aec020  e5 e5 e5 e5                                      ....
  7926 ms  0x6c80 PK11_Encrypt()
  7926 ms  0x6c80 symkey:0x7f625fca9b00
  7927 ms  SECKEY_ECParamsToKeySize()
  7927 ms  0x6c80 ret:0x100
  7927 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7927 ms  0x6c80 cx:0x7f624ed307e8
  7928 ms     | 0x6c80 EC_ValidatePublicKey()
  7931 ms     | 0x6c80 ret:0x0
  7931 ms  0x6c80 ret:0x7f6269aed020::7f6269aed020  80 28 c8 68                                      .(.h
  7931 ms  0x6c80 PK11_PubDeriveWithKDF()
  7931 ms  0x6c80 seckey:0x7f6269aed020
  7931 ms     | 0x6c80 EC_ValidatePublicKey()
  7933 ms     | 0x6c80 ret:0x0
  7936 ms  0x6c80 ret:0x7f62617c1f80
  7936 ms  0x6c80 PK11_DeriveWithFlags()
  7936 ms  0x6c80 basekey:0x7f62617c1f80
  7936 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7936 ms  0x6c80 ret:0x7f625fca9d00
  7936 ms  0x6c80 PK11_Derive()
  7936 ms  0x6c80 basekey:0x7f625fca9d00
  7936 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7936 ms  0x6c80 ret:0x7f625fca9d80
  7936 ms  0x6c80 SECKEY_DestroyPrivateKey()
  7936 ms  0x6c80 privk:0x7f6269aed020::7f6269aed020  80 28 c8 68                                      .(.h
  7936 ms  0x6c80 privk:0x7f6269aed020::7f6269aed020  e5 e5 e5 e5                                      ....
  7936 ms  0x6c80 PK11_Encrypt()
  7936 ms  0x6c80 symkey:0x7f625fca9f00
  7939 ms  SECKEY_ECParamsToKeySize()
  7939 ms  0x6c80 ret:0x100
  7939 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7939 ms  0x6c80 cx:0x7f624ed30648
  7940 ms     | 0x6c80 EC_ValidatePublicKey()
  7942 ms     | 0x6c80 ret:0x0
  7942 ms  0x6c80 ret:0x7f6269aef020::7f6269aef020  c0 8e c8 68                                      ...h
  7943 ms  0x6c80 PK11_PubDeriveWithKDF()
  7943 ms  0x6c80 seckey:0x7f6269aef020
  7943 ms     | 0x6c80 EC_ValidatePublicKey()
  7945 ms     | 0x6c80 ret:0x0
  7947 ms  0x6c80 ret:0x7f62617c1f80
  7947 ms  0x6c80 PK11_DeriveWithFlags()
  7947 ms  0x6c80 basekey:0x7f62617c1f80
  7947 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7948 ms  0x6c80 ret:0x7f625fcc0080
  7948 ms  0x6c80 PK11_Derive()
  7948 ms  0x6c80 basekey:0x7f625fcc0080
  7948 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7948 ms  0x6c80 ret:0x7f625fcc0100
  7948 ms  0x6c80 SECKEY_DestroyPrivateKey()
  7948 ms  0x6c80 privk:0x7f6269aef020::7f6269aef020  c0 8e c8 68                                      ...h
  7948 ms  0x6c80 privk:0x7f6269aef020::7f6269aef020  e5 e5 e5 e5                                      ....
  7948 ms  0x6c80 PK11_Encrypt()
  7948 ms  0x6c80 symkey:0x7f625fcc0280
  7951 ms  SECKEY_ECParamsToKeySize()
  7951 ms  0x6c80 ret:0x100
  7951 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7951 ms  0x6c80 cx:0x7f624ed304a8
  7952 ms     | 0x6c80 EC_ValidatePublicKey()
  7954 ms     | 0x6c80 ret:0x0
  7954 ms  0x6c80 ret:0x7f6269af0020::7f6269af0020  50 bb c8 68                                      P..h
  7954 ms  0x6c80 PK11_PubDeriveWithKDF()
  7954 ms  0x6c80 seckey:0x7f6269af0020
  7954 ms     | 0x6c80 EC_ValidatePublicKey()
  7956 ms     | 0x6c80 ret:0x0
  7957 ms  0x6c80 ret:0x7f62617c1f80
  7957 ms  0x6c80 PK11_DeriveWithFlags()
  7957 ms  0x6c80 basekey:0x7f62617c1f80
  7957 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7957 ms  0x6c80 ret:0x7f625fcc0380
  7957 ms  0x6c80 PK11_Derive()
  7957 ms  0x6c80 basekey:0x7f625fcc0380
  7957 ms     | 0x6c80 PK11_DeriveWithTemplate()
  7957 ms  0x6c80 ret:0x7f625fcc0400
  7957 ms  0x6c80 SECKEY_DestroyPrivateKey()
  7957 ms  0x6c80 privk:0x7f6269af0020::7f6269af0020  50 bb c8 68                                      P..h
  7957 ms  0x6c80 privk:0x7f6269af0020::7f6269af0020  e5 e5 e5 e5                                      ....
  7958 ms  0x6c80 PK11_Encrypt()
  7958 ms  0x6c80 symkey:0x7f625fcc0580
  7963 ms  0x6c80 SSL_ImportFD()
  7963 ms  0x6c80 ret:0x7f62613a4610
  7963 ms  0x6c80 SSL_AuthCertificateHook()
  7963 ms  0x6c80 fd:0x7f62613a4610
  7963 ms  0x6c80 ret:0x0
  7963 ms  0x6c80 PR_Connect()
  7963 ms  0x6c80 fd:0x7f62613a4610
  7980 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7980 ms  0x6c80 cx:0x7f624ed30168
  7982 ms     | 0x6c80 EC_ValidatePublicKey()
  7982 ms     | 0x6c80 ret:0x0
  7982 ms  0x6c80 ret:0x7f6269af0020::7f6269af0020  c0 8e c8 68                                      ...h
  7982 ms  0x6c80 SECKEY_CreateECPrivateKey()
  7982 ms  0x6c80 cx:0x7f624ed30168
  7984 ms     | 0x6c80 EC_ValidatePublicKey()
  7988 ms     | 0x6c80 ret:0x0
  7988 ms  0x6c80 ret:0x7f6269ece020::7f6269ece020  90 cc d5 68                                      ...h
  8209 ms  0x6c80 SECKEY_CreateECPrivateKey()
  8209 ms  0x6c80 cx:0x7f624ed30e68
  8211 ms     | 0x6c80 EC_ValidatePublicKey()
  8211 ms     | 0x6c80 ret:0x0
  8212 ms  0x6c80 ret:0x7f6269ed2820::7f6269ed2820  70 24 d8 68                                      p$.h
  8212 ms  0x6c80 SECKEY_CreateECPrivateKey()
  8212 ms  0x6c80 cx:0x7f624ed30e68
  8214 ms     | 0x6c80 EC_ValidatePublicKey()
  8219 ms     | 0x6c80 ret:0x0
  8219 ms  0x6c80 ret:0x7f6269ed6020::7f6269ed6020  00 f6 de 68                                      ...h
  8250 ms  SECKEY_ECParamsToKeySize()
  8250 ms  0x6c80 ret:0xff
  8250 ms  0x6c80 SECKEY_CreateECPrivateKey()
  8250 ms  0x6c80 cx:0x7f624ed30168
  8252 ms     | 0x6c80 EC_ValidatePublicKey()
  8252 ms     | 0x6c80 ret:0x0
  8252 ms  0x6c80 ret:0x7f6269f7a820::7f6269f7a820  60 90 97 69                                      `..i
  8253 ms  0x6c80 PK11_PubDeriveWithKDF()
  8253 ms  0x6c80 seckey:0x7f6269f7a820
  8253 ms     | 0x6c80 EC_ValidatePublicKey()
  8253 ms     | 0x6c80 ret:0x0
  8254 ms  0x6c80 ret:0x7f62617c1f80
  8254 ms  0x6c80 PK11_DeriveWithFlags()
  8254 ms  0x6c80 basekey:0x7f62617c1f80
  8254 ms     | 0x6c80 PK11_DeriveWithTemplate()
  8255 ms  0x6c80 ret:0x7f625fcc0880
  8255 ms  0x6c80 PK11_Derive()
  8255 ms  0x6c80 basekey:0x7f625fcc0880
  8255 ms     | 0x6c80 PK11_DeriveWithTemplate()
  8255 ms  0x6c80 ret:0x7f625fcc0900
  8255 ms  0x6c80 SECKEY_DestroyPrivateKey()
  8255 ms  0x6c80 privk:0x7f6269f7a820::7f6269f7a820  60 90 97 69                                      `..i
  8255 ms  0x6c80 privk:0x7f6269f7a820::7f6269f7a820  e5 e5 e5 e5                                      ....
  8255 ms  0x6c80 PK11_Encrypt()
  8255 ms  0x6c80 symkey:0x7f625fcc0a80
  8473 ms  SECKEY_ECParamsToKeySize()
  8473 ms  0x6c80 ret:0xff
  8473 ms  0x6c80 SECKEY_CreateECPrivateKey()
  8473 ms  0x6c80 cx:0x7f624ed30e68
  8475 ms     | 0x6c80 EC_ValidatePublicKey()
  8475 ms     | 0x6c80 ret:0x0
  8475 ms  0x6c80 ret:0x7f6269f7c020::7f6269f7c020  30 93 97 69                                      0..i
  8476 ms  0x6c80 PK11_PubDeriveWithKDF()
  8476 ms  0x6c80 seckey:0x7f6269f7c020
  8476 ms     | 0x6c80 EC_ValidatePublicKey()
  8476 ms     | 0x6c80 ret:0x0
  8477 ms  0x6c80 ret:0x7f62617c1f80
  8477 ms  0x6c80 PK11_DeriveWithFlags()
  8477 ms  0x6c80 basekey:0x7f62617c1f80
  8477 ms     | 0x6c80 PK11_DeriveWithTemplate()
  8478 ms  0x6c80 ret:0x7f624ed32880
  8478 ms  0x6c80 PK11_Derive()
  8478 ms  0x6c80 basekey:0x7f624ed32880
  8478 ms     | 0x6c80 PK11_DeriveWithTemplate()
  8478 ms  0x6c80 ret:0x7f625fcc0b80
  8478 ms  0x6c80 SECKEY_DestroyPrivateKey()
  8478 ms  0x6c80 privk:0x7f6269f7c020::7f6269f7c020  30 93 97 69                                      0..i
  8478 ms  0x6c80 privk:0x7f6269f7c020::7f6269f7c020  e5 e5 e5 e5                                      ....
  8479 ms  0x6c80 PK11_Encrypt()
  8479 ms  0x6c80 symkey:0x7f625fcc0d00
  9324 ms  0x6c80 SSL_AuthCertificateComplete()
  9324 ms  0x6c80 fd:0x7f625fc75160
  9324 ms  0x6c80 err:0x0
  9325 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
  9325 ms     | 0x6c80 privk:0x7f62648a5820::7f62648a5820  e0 d2 c3 5f                                      ..._
  9325 ms     | 0x6c80 privk:0x7f62648a5820::7f62648a5820  e5 e5 e5 e5                                      ....
  9325 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
  9325 ms     | 0x6c80 privk:0x7f625fc13820::7f625fc13820  20 d4 c3 5f                                       .._
  9326 ms     | 0x6c80 privk:0x7f625fc13820::7f625fc13820  e5 e5 e5 e5                                      ....
  9328 ms  0x6c80 PK11_Encrypt()
  9328 ms  0x6c80 symkey:0x7f625fc9a880
  9329 ms  0x6c80 PK11_Encrypt()
  9329 ms  0x6c80 symkey:0x7f625fc9a880
  9330 ms  0x6c80 PK11_Encrypt()
  9330 ms  0x6c80 symkey:0x7f625fc9a880
           /* TID 0x6c88 */
  9361 ms  0x6c88 PR_Close()
  9361 ms  0x6c88 fd:0x7f6260a4a0a0
  9361 ms  0x6c88 PR_Close()
  9361 ms  0x6c88 fd:0x7f6262ec1160
  9372 ms  0x6c88 PR_Close()
  9372 ms  0x6c88 fd:0x7f6260a4a0a0
  9372 ms  0x6c88 PR_Close()
  9372 ms  0x6c88 fd:0x7f6262ec1160
  9372 ms  0x6c88 PR_Close()
  9372 ms  0x6c88 fd:0x7f6265bacb50
  9372 ms  0x6c88 PR_Close()
  9372 ms  0x6c88 fd:0x7f6265bacc10
  9372 ms  0x6c88 PR_Close()
  9372 ms  0x6c88 fd:0x7f6265baccd0
  9372 ms  0x6c88 PR_Close()
  9372 ms  0x6c88 fd:0x7f6265bacd30
  9372 ms  0x6c88 PR_Close()
  9372 ms  0x6c88 fd:0x7f6265bacdc0
  9372 ms  0x6c88 PR_Close()
  9372 ms  0x6c88 fd:0x7f6265c3a040
  9372 ms  0x6c88 PR_Close()
  9372 ms  0x6c88 fd:0x7f6265c3a0a0
  9372 ms  0x6c88 PR_Close()
  9372 ms  0x6c88 fd:0x7f6265c3a100
  9372 ms  0x6c88 PR_Close()
  9372 ms  0x6c88 fd:0x7f6265c3a160
  9372 ms  0x6c88 PR_Close()
  9372 ms  0x6c88 fd:0x7f6265c3a1c0
  9372 ms  0x6c88 PR_Close()
  9372 ms  0x6c88 fd:0x7f6265c3a220
  9372 ms  0x6c88 PR_Close()
  9372 ms  0x6c88 fd:0x7f6265c3a2b0
  9372 ms  0x6c88 PR_Close()
  9372 ms  0x6c88 fd:0x7f6265c3a340
  9372 ms  0x6c88 PR_Close()
  9372 ms  0x6c88 fd:0x7f6265c3a3a0
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6265c3a430
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6265c3a4c0
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6265c3a520
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6265c3a5b0
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6265c3a640
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6265c3a6a0
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6265c3a820
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6265cc7040
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6265cc73d0
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6265cc7670
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6265cc7fd0
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6265e2f5e0
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6265e2fb20
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6265fbefd0
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6265fed070
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6265fed2b0
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6265fed4c0
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6265fedd60
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6265fedfd0
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6266111df0
  9373 ms  0x6c88 PR_Close()
  9373 ms  0x6c88 fd:0x7f6266131220
  9374 ms  0x6c88 PR_Close()
  9374 ms  0x6c88 fd:0x7f6266131310
  9374 ms  0x6c88 PR_Close()
  9374 ms  0x6c88 fd:0x7f6266171730
  9374 ms  0x6c88 PR_Close()
  9374 ms  0x6c88 fd:0x7f6266177070
  9374 ms  0x6c88 PR_Close()
  9374 ms  0x6c88 fd:0x7f6266177460
  9374 ms  0x6c88 PR_Close()
  9374 ms  0x6c88 fd:0x7f62661774f0
  9374 ms  0x6c88 PR_Close()
  9374 ms  0x6c88 fd:0x7f6266177550
  9374 ms  0x6c88 PR_Close()
  9374 ms  0x6c88 fd:0x7f62661775b0
  9374 ms  0x6c88 PR_Close()
  9374 ms  0x6c88 fd:0x7f6266177640
  9374 ms  0x6c88 PR_Close()
  9374 ms  0x6c88 fd:0x7f62661776a0
  9374 ms  0x6c88 PR_Close()
  9374 ms  0x6c88 fd:0x7f6266177700
  9374 ms  0x6c88 PR_Close()
  9374 ms  0x6c88 fd:0x7f6266177760
  9374 ms  0x6c88 PR_Close()
  9374 ms  0x6c88 fd:0x7f6266177880
  9374 ms  0x6c88 PR_Close()
  9374 ms  0x6c88 fd:0x7f62661779d0
  9374 ms  0x6c88 PR_Close()
  9374 ms  0x6c88 fd:0x7f6266177a30
  9374 ms  0x6c88 PR_Close()
  9374 ms  0x6c88 fd:0x7f6266177a90
  9374 ms  0x6c88 PR_Close()
  9374 ms  0x6c88 fd:0x7f6266177af0
  9374 ms  0x6c88 PR_Close()
  9374 ms  0x6c88 fd:0x7f62661a66d0
  9374 ms  0x6c88 PR_Close()
  9374 ms  0x6c88 fd:0x7f62661a6730
  9432 ms  0x6c88 PR_Close()
  9432 ms  0x6c88 fd:0x7f625fc75280
           /* TID 0x6c80 */
 10774 ms  0x6c80 PR_Connect()
 10774 ms  0x6c80 fd:0x7f6265cc7670
 10775 ms  0x6c80 PR_Connect()
 10775 ms  0x6c80 fd:0x7f6265cc7970
 10775 ms  0x6c80 PR_Connect()
 10775 ms  0x6c80 fd:0x7f6265bacd00
 10775 ms  0x6c80 PR_Connect()
 10775 ms  0x6c80 fd:0x7f6265c3a6d0
 10776 ms  0x6c80 PR_Connect()
 10776 ms  0x6c80 fd:0x7f6265c40340
 10776 ms  0x6c80 PR_Connect()
 10776 ms  0x6c80 fd:0x7f6265cc7040
 11424 ms  0x6c80 SSL_AuthCertificateComplete()
 11424 ms  0x6c80 fd:0x7f625fc4f370
 11424 ms  0x6c80 err:0x0
 11428 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11428 ms     | 0x6c80 privk:0x7f6266469020::7f6266469020  60 70 e5 62                                      `p.b
 11428 ms     | 0x6c80 privk:0x7f6266469020::7f6266469020  e5 e5 e5 e5                                      ....
 11428 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11428 ms     | 0x6c80 privk:0x7f6266467020::7f6266467020  e0 1c b6 61                                      ...a
 11428 ms     | 0x6c80 privk:0x7f6266467020::7f6266467020  e5 e5 e5 e5                                      ....
 11428 ms  0x6c80 SSL_AuthCertificateComplete()
 11428 ms  0x6c80 fd:0x7f625fc38eb0
 11428 ms  0x6c80 err:0x0
 11428 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11428 ms     | 0x6c80 privk:0x7f6266306820::7f6266306820  40 87 3e 61                                      @.>a
 11429 ms     | 0x6c80 privk:0x7f6266306820::7f6266306820  e5 e5 e5 e5                                      ....
 11429 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11429 ms     | 0x6c80 privk:0x7f6266302820::7f6266302820  00 81 3e 61                                      ..>a
 11429 ms     | 0x6c80 privk:0x7f6266302820::7f6266302820  e5 e5 e5 e5                                      ....
 11429 ms  0x6c80 SSL_AuthCertificateComplete()
 11429 ms  0x6c80 fd:0x7f6260a4a130
 11429 ms  0x6c80 err:0x0
 11429 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11429 ms     | 0x6c80 privk:0x7f6268db8820::7f6268db8820  00 16 1b 66                                      ...f
 11429 ms     | 0x6c80 privk:0x7f6268db8820::7f6268db8820  e5 e5 e5 e5                                      ....
 11429 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11429 ms     | 0x6c80 privk:0x7f6268db3820::7f6268db3820  60 aa 17 66                                      `..f
 11430 ms     | 0x6c80 privk:0x7f6268db3820::7f6268db3820  e5 e5 e5 e5                                      ....
 11430 ms  0x6c80 SSL_AuthCertificateComplete()
 11430 ms  0x6c80 fd:0x7f6261bd5d30
 11430 ms  0x6c80 err:0x0
 11430 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11430 ms     | 0x6c80 privk:0x7f6268dbd820::7f6268dbd820  10 1f 1b 66                                      ...f
 11430 ms     | 0x6c80 privk:0x7f6268dbd820::7f6268dbd820  e5 e5 e5 e5                                      ....
 11430 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11430 ms     | 0x6c80 privk:0x7f6268dbb820::7f6268dbb820  80 18 1b 66                                      ...f
 11430 ms     | 0x6c80 privk:0x7f6268dbb820::7f6268dbb820  e5 e5 e5 e5                                      ....
 11431 ms  0x6c80 SSL_AuthCertificateComplete()
 11431 ms  0x6c80 fd:0x7f6261bd5dc0
 11431 ms  0x6c80 err:0x0
 11431 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11431 ms     | 0x6c80 privk:0x7f6269add820::7f6269add820  c0 ae 32 66                                      ..2f
 11431 ms     | 0x6c80 privk:0x7f6269add820::7f6269add820  e5 e5 e5 e5                                      ....
 11431 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11431 ms     | 0x6c80 privk:0x7f6269ad9820::7f6269ad9820  f0 ab 1b 66                                      ...f
 11431 ms     | 0x6c80 privk:0x7f6269ad9820::7f6269ad9820  e5 e5 e5 e5                                      ....
 11431 ms  0x6c80 SSL_AuthCertificateComplete()
 11431 ms  0x6c80 fd:0x7f6261bd5d90
 11431 ms  0x6c80 err:0x0
 11431 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11431 ms     | 0x6c80 privk:0x7f6269ae6020::7f6269ae6020  c0 5e 3f 66                                      .^?f
 11431 ms     | 0x6c80 privk:0x7f6269ae6020::7f6269ae6020  e5 e5 e5 e5                                      ....
 11432 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11432 ms     | 0x6c80 privk:0x7f6269ae3820::7f6269ae3820  d0 e3 3d 66                                      ..=f
 11432 ms     | 0x6c80 privk:0x7f6269ae3820::7f6269ae3820  e5 e5 e5 e5                                      ....
 11432 ms  0x6c80 SSL_AuthCertificateComplete()
 11432 ms  0x6c80 fd:0x7f625fc4f3a0
 11432 ms  0x6c80 err:0x0
 11432 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11432 ms     | 0x6c80 privk:0x7f626646f020::7f626646f020  f0 e1 e6 62                                      ...b
 11432 ms     | 0x6c80 privk:0x7f626646f020::7f626646f020  e5 e5 e5 e5                                      ....
 11432 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11432 ms     | 0x6c80 privk:0x7f626646b020::7f626646b020  80 dd e5 62                                      ...b
 11433 ms     | 0x6c80 privk:0x7f626646b020::7f626646b020  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 11438 ms  0x6c88 PR_Close()
 11438 ms  0x6c88 fd:0x7f6260a4af70
 11441 ms  0x6c88 PR_Close()
 11441 ms  0x6c88 fd:0x7f6260a4af70
 11442 ms  0x6c88 PR_Close()
 11442 ms  0x6c88 fd:0x7f6260a4aca0
           /* TID 0x6c80 */
 11442 ms  0x6c80 PK11_Encrypt()
 11442 ms  0x6c80 symkey:0x7f625fca8d80
 11443 ms  0x6c80 PK11_Encrypt()
 11443 ms  0x6c80 symkey:0x7f625fca8a80
 11443 ms  0x6c80 PK11_Encrypt()
 11443 ms  0x6c80 symkey:0x7f625fca8a80
 11443 ms  0x6c80 PK11_Encrypt()
 11443 ms  0x6c80 symkey:0x7f625fc9b780
 11445 ms  0x6c80 PK11_Encrypt()
 11445 ms  0x6c80 symkey:0x7f625fca9b00
 11445 ms  0x6c80 PK11_Encrypt()
 11445 ms  0x6c80 symkey:0x7f625fca9f00
 11445 ms  0x6c80 PK11_Encrypt()
 11445 ms  0x6c80 symkey:0x7f625fcc0280
 11446 ms  0x6c80 PK11_Encrypt()
 11446 ms  0x6c80 symkey:0x7f625fcc0580
 11447 ms  0x6c80 SSL_AuthCertificateComplete()
 11447 ms  0x6c80 fd:0x7f625fc750a0
 11447 ms  0x6c80 err:0x0
 11447 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11447 ms     | 0x6c80 privk:0x7f62661d8020::7f62661d8020  70 1e 3a 61                                      p.:a
 11447 ms     | 0x6c80 privk:0x7f62661d8020::7f62661d8020  e5 e5 e5 e5                                      ....
 11447 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11447 ms     | 0x6c80 privk:0x7f62661d2820::7f62661d2820  c0 14 3a 61                                      ..:a
 11447 ms     | 0x6c80 privk:0x7f62661d2820::7f62661d2820  e5 e5 e5 e5                                      ....
 11447 ms  0x6c80 PK11_Encrypt()
 11447 ms  0x6c80 symkey:0x7f625fca8a80
 11447 ms  0x6c80 PK11_Encrypt()
 11447 ms  0x6c80 symkey:0x7f625fca8a80
 11448 ms  0x6c80 PK11_Encrypt()
 11448 ms  0x6c80 symkey:0x7f625fca8a80
 11448 ms  0x6c80 PK11_Encrypt()
 11448 ms  0x6c80 symkey:0x7f625fca8a80
 11448 ms  0x6c80 PK11_Encrypt()
 11448 ms  0x6c80 symkey:0x7f625fca8a80
 11448 ms  0x6c80 PK11_Encrypt()
 11448 ms  0x6c80 symkey:0x7f625fca8a80
 11449 ms  0x6c80 SSL_AuthCertificateComplete()
 11449 ms  0x6c80 fd:0x7f625fc4f7c0
 11449 ms  0x6c80 err:0x0
 11449 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11449 ms     | 0x6c80 privk:0x7f626631e820::7f626631e820  80 5d 7c 61                                      .]|a
 11449 ms     | 0x6c80 privk:0x7f626631e820::7f626631e820  e5 e5 e5 e5                                      ....
 11449 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11449 ms     | 0x6c80 privk:0x7f626631c820::7f626631c820  30 ad 79 61                                      0.ya
 11449 ms     | 0x6c80 privk:0x7f626631c820::7f626631c820  e5 e5 e5 e5                                      ....
 11456 ms  0x6c80 PK11_Encrypt()
 11456 ms  0x6c80 symkey:0x7f625fca8a80
 11457 ms  0x6c80 PK11_Encrypt()
 11457 ms  0x6c80 symkey:0x7f625fca8200
 11457 ms  0x6c80 PK11_Encrypt()
 11457 ms  0x6c80 symkey:0x7f625fca8a80
 11458 ms  0x6c80 PK11_Encrypt()
 11458 ms  0x6c80 symkey:0x7f625fca8a80
 11458 ms  0x6c80 PK11_Encrypt()
 11458 ms  0x6c80 symkey:0x7f625fc9ae00
 11458 ms  0x6c80 PR_Close()
 11458 ms  0x6c80 fd:0x7f6260a4a130
 11458 ms     | 0x6c80 PK11_Encrypt()
 11458 ms     | 0x6c80 symkey:0x7f625fca9b00
 11459 ms  0x6c80 PR_Close()
 11459 ms  0x6c80 fd:0x7f625fc38eb0
 11459 ms     | 0x6c80 PK11_Encrypt()
 11459 ms     | 0x6c80 symkey:0x7f625fc9b780
 11459 ms  0x6c80 PR_Close()
 11459 ms  0x6c80 fd:0x7f625fc4f3a0
 11459 ms     | 0x6c80 PK11_Encrypt()
 11459 ms     | 0x6c80 symkey:0x7f625fca8d80
 11459 ms  0x6c80 PK11_Encrypt()
 11459 ms  0x6c80 symkey:0x7f625fca8a80
 11460 ms  0x6c80 PK11_Encrypt()
 11460 ms  0x6c80 symkey:0x7f625fca8a80
 11460 ms  0x6c80 PR_Close()
 11460 ms  0x6c80 fd:0x7f625fc750a0
 11460 ms     | 0x6c80 PK11_Encrypt()
 11460 ms     | 0x6c80 symkey:0x7f625fc9ae00
 11460 ms  0x6c80 PR_Close()
 11460 ms  0x6c80 fd:0x7f625fc4f7c0
 11460 ms     | 0x6c80 PK11_Encrypt()
 11460 ms     | 0x6c80 symkey:0x7f625fca8200
 11461 ms  0x6c80 PR_Connect()
 11461 ms  0x6c80 fd:0x7f625fc4f0a0
 11462 ms  0x6c80 PK11_Encrypt()
 11462 ms  0x6c80 symkey:0x7f625fca8a80
 11462 ms  0x6c80 PR_Connect()
 11462 ms  0x6c80 fd:0x7f625fcb7850
 11463 ms  0x6c80 PR_Connect()
 11463 ms  0x6c80 fd:0x7f625fc38eb0
 11463 ms  0x6c80 PR_Connect()
 11463 ms  0x6c80 fd:0x7f625fc4f7c0
 11463 ms  0x6c80 PR_Connect()
 11463 ms  0x6c80 fd:0x7f625fc750a0
 11464 ms  0x6c80 PR_Connect()
 11464 ms  0x6c80 fd:0x7f625fc75220
 11464 ms  0x6c80 SSL_ImportFD()
 11464 ms  0x6c80 ret:0x7f625fc75430
 11464 ms  0x6c80 SSL_AuthCertificateHook()
 11464 ms  0x6c80 fd:0x7f625fc75430
 11464 ms  0x6c80 ret:0x0
 11465 ms  0x6c80 PK11_Encrypt()
 11465 ms  0x6c80 symkey:0x7f625fc9a880
 11465 ms  0x6c80 PK11_Encrypt()
 11465 ms  0x6c80 symkey:0x7f625fc9a880
 11465 ms  0x6c80 PK11_Encrypt()
 11465 ms  0x6c80 symkey:0x7f625fc9a880
 11465 ms  0x6c80 PK11_Encrypt()
 11465 ms  0x6c80 symkey:0x7f625fc9a880
 11466 ms  0x6c80 PK11_Encrypt()
 11466 ms  0x6c80 symkey:0x7f625fc9a880
 11466 ms  0x6c80 PK11_Encrypt()
 11466 ms  0x6c80 symkey:0x7f625fc9a880
 11466 ms  0x6c80 PK11_Encrypt()
 11466 ms  0x6c80 symkey:0x7f625fc9a880
 11467 ms  0x6c80 PK11_Encrypt()
 11467 ms  0x6c80 symkey:0x7f625fc9a880
 11467 ms  0x6c80 PK11_Encrypt()
 11467 ms  0x6c80 symkey:0x7f625fc9a880
 11467 ms  0x6c80 PK11_Encrypt()
 11467 ms  0x6c80 symkey:0x7f625fc9a880
 11467 ms  0x6c80 PK11_Encrypt()
 11467 ms  0x6c80 symkey:0x7f625fc9a880
 11468 ms  0x6c80 PR_Connect()
 11468 ms  0x6c80 fd:0x7f625fc75430
 11468 ms  0x6c80 SSL_ImportFD()
 11468 ms  0x6c80 ret:0x7f625fcb7160
 11468 ms  0x6c80 SSL_AuthCertificateHook()
 11468 ms  0x6c80 fd:0x7f625fcb7160
 11468 ms  0x6c80 ret:0x0
 11468 ms  0x6c80 PR_Connect()
 11468 ms  0x6c80 fd:0x7f625fcb7160
 11468 ms  0x6c80 SSL_ImportFD()
 11468 ms  0x6c80 ret:0x7f625fcb74f0
 11468 ms  0x6c80 SSL_AuthCertificateHook()
 11468 ms  0x6c80 fd:0x7f625fcb74f0
 11468 ms  0x6c80 ret:0x0
 11468 ms  0x6c80 PR_Connect()
 11468 ms  0x6c80 fd:0x7f625fcb74f0
 11468 ms  0x6c80 PK11_Encrypt()
 11468 ms  0x6c80 symkey:0x7f625fc9a880
 11469 ms  0x6c80 PK11_Encrypt()
 11469 ms  0x6c80 symkey:0x7f625fca8a80
 11469 ms  0x6c80 PK11_Encrypt()
 11469 ms  0x6c80 symkey:0x7f625fc9a880
 11469 ms  0x6c80 PK11_Encrypt()
 11469 ms  0x6c80 symkey:0x7f625fc9a880
 11469 ms  0x6c80 PK11_Encrypt()
 11469 ms  0x6c80 symkey:0x7f625fc9a880
 11470 ms  0x6c80 PK11_Encrypt()
 11470 ms  0x6c80 symkey:0x7f625fc9a880
 11470 ms  0x6c80 PK11_Encrypt()
 11470 ms  0x6c80 symkey:0x7f625fc9a880
 11470 ms  0x6c80 PK11_Encrypt()
 11470 ms  0x6c80 symkey:0x7f625fc9a880
 11471 ms  0x6c80 PR_Connect()
 11471 ms  0x6c80 fd:0x7f6260a4a1c0
           /* TID 0x6c88 */
 11498 ms  0x6c88 PR_Close()
 11498 ms  0x6c88 fd:0x7f625fc4f040
 11499 ms  0x6c88 PR_Close()
 11499 ms  0x6c88 fd:0x7f625fc4f040
 11504 ms  0x6c88 PR_Close()
 11504 ms  0x6c88 fd:0x7f625fc4f040
 11512 ms  0x6c88 PR_Close()
 11512 ms  0x6c88 fd:0x7f625fc4f040
           /* TID 0x6d17 */
 11512 ms  0x6d17 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11512 ms  0x6d17 ret:0x0
           /* TID 0x6c80 */
 11512 ms  0x6c80 SSL_AuthCertificateComplete()
 11512 ms  0x6c80 fd:0x7f6260a4a0d0
 11512 ms  0x6c80 err:0x0
 11512 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11512 ms     | 0x6c80 privk:0x7f6269ece020::7f6269ece020  90 cc d5 68                                      ...h
 11512 ms     | 0x6c80 privk:0x7f6269ece020::7f6269ece020  e5 e5 e5 e5                                      ....
 11512 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11512 ms     | 0x6c80 privk:0x7f6269af0020::7f6269af0020  c0 8e c8 68                                      ...h
 11512 ms     | 0x6c80 privk:0x7f6269af0020::7f6269af0020  e5 e5 e5 e5                                      ....
 11512 ms  0x6c80 PK11_Encrypt()
 11512 ms  0x6c80 symkey:0x7f625fcc0a80
 11513 ms  0x6c80 PK11_Encrypt()
 11513 ms  0x6c80 symkey:0x7f625fcc0a80
 11513 ms  0x6c80 PK11_Encrypt()
 11513 ms  0x6c80 symkey:0x7f625fcc0a80
           /* TID 0x6c88 */
 11516 ms  0x6c88 PR_Close()
 11516 ms  0x6c88 fd:0x7f625fc4f820
           /* TID 0x6c80 */
 11517 ms  0x6c80 SECKEY_CreateECPrivateKey()
 11517 ms  0x6c80 cx:0x7f624ed2ec48
 11518 ms     | 0x6c80 EC_ValidatePublicKey()
 11518 ms     | 0x6c80 ret:0x0
 11518 ms  0x6c80 ret:0x7f625fc24020::7f625fc24020  10 f5 ef 5f                                      ..._
 11518 ms  0x6c80 SECKEY_CreateECPrivateKey()
 11518 ms  0x6c80 cx:0x7f624ed2ec48
 11519 ms     | 0x6c80 EC_ValidatePublicKey()
 11520 ms     | 0x6c80 ret:0x0
 11520 ms  0x6c80 ret:0x7f626631d820::7f626631d820  50 ab 89 60                                      P..`
           /* TID 0x6c88 */
 11522 ms  0x6c88 PR_Close()
 11522 ms  0x6c88 fd:0x7f625fc4f820
 11524 ms  0x6c88 PR_Close()
 11524 ms  0x6c88 fd:0x7f625fc4f820
           /* TID 0x6c80 */
 11525 ms  0x6c80 SECKEY_CreateECPrivateKey()
 11525 ms  0x6c80 cx:0x7f624ed2ef88
 11525 ms     | 0x6c80 EC_ValidatePublicKey()
 11525 ms     | 0x6c80 ret:0x0
 11525 ms  0x6c80 ret:0x7f626631f820::7f626631f820  70 ae 89 60                                      p..`
 11525 ms  0x6c80 SECKEY_CreateECPrivateKey()
 11525 ms  0x6c80 cx:0x7f624ed2ef88
 11526 ms     | 0x6c80 EC_ValidatePublicKey()
 11527 ms     | 0x6c80 ret:0x0
 11527 ms  0x6c80 ret:0x7f6266467020::7f6266467020  d0 73 d8 60                                      .s.`
 11528 ms  0x6c80 SECKEY_CreateECPrivateKey()
 11528 ms  0x6c80 cx:0x7f624ed2e908
 11528 ms     | 0x6c80 EC_ValidatePublicKey()
 11528 ms     | 0x6c80 ret:0x0
 11528 ms  0x6c80 ret:0x7f6266469820::7f6266469820  c0 7e d8 60                                      .~.`
 11528 ms  0x6c80 SECKEY_CreateECPrivateKey()
 11528 ms  0x6c80 cx:0x7f624ed2e908
 11529 ms     | 0x6c80 EC_ValidatePublicKey()
 11530 ms     | 0x6c80 ret:0x0
 11530 ms  0x6c80 ret:0x7f626646c020::7f626646c020  b0 15 3a 61                                      ..:a
           /* TID 0x6c88 */
 11532 ms  0x6c88 PR_Close()
 11532 ms  0x6c88 fd:0x7f625fc75610
 11534 ms  0x6c88 PR_Close()
 11534 ms  0x6c88 fd:0x7f625fc75610
 11535 ms  0x6c88 PR_Close()
 11535 ms  0x6c88 fd:0x7f625fc75610
           /* TID 0x6c80 */
 11536 ms  0x6c80 PR_Connect()
 11536 ms  0x6c80 fd:0x7f625fcb77c0
           /* TID 0x6c88 */
 11537 ms  0x6c88 PR_Close()
 11537 ms  0x6c88 fd:0x7f625fc75610
 11544 ms  0x6c88 PR_Close()
 11544 ms  0x6c88 fd:0x7f625fc75610
           /* TID 0x6cdb */
 11544 ms  0x6cdb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11544 ms  0x6cdb ret:0x0
           /* TID 0x6c80 */
 11544 ms  0x6c80 SSL_AuthCertificateComplete()
 11544 ms  0x6c80 fd:0x7f62613a4610
 11544 ms  0x6c80 err:0x0
 11544 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11544 ms     | 0x6c80 privk:0x7f6269ed6020::7f6269ed6020  00 f6 de 68                                      ...h
 11545 ms     | 0x6c80 privk:0x7f6269ed6020::7f6269ed6020  e5 e5 e5 e5                                      ....
 11545 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 11545 ms     | 0x6c80 privk:0x7f6269ed2820::7f6269ed2820  70 24 d8 68                                      p$.h
 11545 ms     | 0x6c80 privk:0x7f6269ed2820::7f6269ed2820  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 11546 ms  0x6c88 PR_Close()
 11546 ms  0x6c88 fd:0x7f625fcb7700
           /* TID 0x6c80 */
 11547 ms  0x6c80 PK11_Encrypt()
 11547 ms  0x6c80 symkey:0x7f625fcc0d00
           /* TID 0x6c88 */
 11551 ms  0x6c88 PR_Close()
 11551 ms  0x6c88 fd:0x7f625fc38e50
 11552 ms  0x6c88 PR_Close()
 11552 ms  0x6c88 fd:0x7f625fc38e50
           /* TID 0x6c80 */
 11553 ms  0x6c80 PR_Close()
 11553 ms  0x6c80 fd:0x7f62613a4610
 11553 ms     | 0x6c80 PK11_Encrypt()
 11553 ms     | 0x6c80 symkey:0x7f625fcc0d00
           /* TID 0x6c88 */
 11554 ms  0x6c88 PR_Close()
 11554 ms  0x6c88 fd:0x7f625fc38ee0
 11556 ms  0x6c88 PR_Close()
 11556 ms  0x6c88 fd:0x7f625fc38e50
 11557 ms  0x6c88 PR_Close()
 11557 ms  0x6c88 fd:0x7f625fc38e50
 11558 ms  0x6c88 PR_Close()
 11558 ms  0x6c88 fd:0x7f625fc38e50
 11566 ms  0x6c88 PR_Close()
 11566 ms  0x6c88 fd:0x7f625fc38ee0
 11568 ms  0x6c88 PR_Close()
 11568 ms  0x6c88 fd:0x7f625fc38ee0
 11569 ms  0x6c88 PR_Close()
 11569 ms  0x6c88 fd:0x7f625fc38e50
 11572 ms  0x6c88 PR_Close()
 11572 ms  0x6c88 fd:0x7f625fc4fc10
 11573 ms  0x6c88 PR_Close()
 11573 ms  0x6c88 fd:0x7f625fc4fc10
 11574 ms  0x6c88 PR_Close()
 11574 ms  0x6c88 fd:0x7f625fc4fc10
 11576 ms  0x6c88 PR_Close()
 11576 ms  0x6c88 fd:0x7f625fc38e50
           /* TID 0x6c80 */
 11577 ms  SECKEY_ECParamsToKeySize()
 11577 ms  0x6c80 ret:0xff
 11577 ms  0x6c80 SECKEY_CreateECPrivateKey()
 11577 ms  0x6c80 cx:0x7f624ed2ec48
 11577 ms     | 0x6c80 EC_ValidatePublicKey()
 11577 ms     | 0x6c80 ret:0x0
 11577 ms  0x6c80 ret:0x7f62661d7020::7f62661d7020  e0 e2 cc 5f                                      ..._
 11577 ms  0x6c80 PK11_PubDeriveWithKDF()
 11577 ms  0x6c80 seckey:0x7f62661d7020
 11577 ms     | 0x6c80 EC_ValidatePublicKey()
 11577 ms     | 0x6c80 ret:0x0
 11578 ms  0x6c80 ret:0x7f625fcc0b80
 11578 ms  0x6c80 PK11_DeriveWithFlags()
 11578 ms  0x6c80 basekey:0x7f625fcc0b80
 11578 ms     | 0x6c80 PK11_DeriveWithTemplate()
 11578 ms  0x6c80 ret:0x7f624ed32880
 11578 ms  0x6c80 PK11_Derive()
 11578 ms  0x6c80 basekey:0x7f624ed32880
 11578 ms     | 0x6c80 PK11_DeriveWithTemplate()
 11578 ms  0x6c80 ret:0x7f625fca8080
 11578 ms  0x6c80 SECKEY_DestroyPrivateKey()
 11578 ms  0x6c80 privk:0x7f62661d7020::7f62661d7020  e0 e2 cc 5f                                      ..._
 11578 ms  0x6c80 privk:0x7f62661d7020::7f62661d7020  e5 e5 e5 e5                                      ....
 11578 ms  0x6c80 PK11_Encrypt()
 11578 ms  0x6c80 symkey:0x7f625fcc0c00
           /* TID 0x6c88 */
 11579 ms  0x6c88 PR_Close()
 11579 ms  0x6c88 fd:0x7f62604442b0
 11580 ms  0x6c88 PR_Close()
 11580 ms  0x6c88 fd:0x7f62604442b0
 11582 ms  0x6c88 PR_Close()
 11582 ms  0x6c88 fd:0x7f62604442b0
 11583 ms  0x6c88 PR_Close()
 11583 ms  0x6c88 fd:0x7f62604442b0
           /* TID 0x6c80 */
 11584 ms  0x6c80 SSL_AuthCertificateComplete()
 11584 ms  0x6c80 fd:0x7f625fcb7160
 11584 ms  0x6c80 err:0x0
           /* TID 0x6c88 */
 11584 ms  0x6c88 PR_Close()
 11584 ms  0x6c88 fd:0x7f625fc4fd60
           /* TID 0x6c80 */
 11585 ms  SECKEY_ECParamsToKeySize()
 11585 ms  0x6c80 ret:0xff
 11585 ms  0x6c80 SECKEY_CreateECPrivateKey()
 11585 ms  0x6c80 cx:0x7f624ed2ef88
 11586 ms     | 0x6c80 EC_ValidatePublicKey()
 11586 ms     | 0x6c80 ret:0x0
 11586 ms  0x6c80 ret:0x7f6266305020::7f6266305020  30 f8 ef 5f                                      0.._
 11586 ms  0x6c80 PK11_PubDeriveWithKDF()
 11586 ms  0x6c80 seckey:0x7f6266305020
 11586 ms     | 0x6c80 EC_ValidatePublicKey()
 11586 ms     | 0x6c80 ret:0x0
           /* TID 0x6c88 */
 11587 ms  0x6c88 PR_Close()
 11587 ms  0x6c88 fd:0x7f6260a4af70
           /* TID 0x6c80 */
 11590 ms  0x6c80 ret:0x7f625fcc0b80
 11590 ms  0x6c80 PK11_DeriveWithFlags()
 11590 ms  0x6c80 basekey:0x7f625fcc0b80
 11590 ms     | 0x6c80 PK11_DeriveWithTemplate()
 11590 ms  0x6c80 ret:0x7f625fc9bf80
 11590 ms  0x6c80 PK11_Derive()
 11590 ms  0x6c80 basekey:0x7f625fc9bf80
 11590 ms     | 0x6c80 PK11_DeriveWithTemplate()
 11590 ms  0x6c80 ret:0x7f625fc9ac80
 11590 ms  0x6c80 SECKEY_DestroyPrivateKey()
 11590 ms  0x6c80 privk:0x7f6266305020::7f6266305020  30 f8 ef 5f                                      0.._
 11590 ms  0x6c80 privk:0x7f6266305020::7f6266305020  e5 e5 e5 e5                                      ....
 11590 ms  0x6c80 PK11_Encrypt()
 11590 ms  0x6c80 symkey:0x7f625fca8100
 11590 ms  0x6c80 PK11_Encrypt()
 11590 ms  0x6c80 symkey:0x7f625fcc0c00
 11591 ms  SECKEY_ECParamsToKeySize()
 11591 ms  0x6c80 ret:0xff
 11591 ms  0x6c80 SECKEY_CreateECPrivateKey()
 11591 ms  0x6c80 cx:0x7f624ed2e908
 11592 ms     | 0x6c80 EC_ValidatePublicKey()
 11592 ms     | 0x6c80 ret:0x0
 11592 ms  0x6c80 ret:0x7f62661d8020::7f62661d8020  30 ad 89 60                                      0..`
 11592 ms  0x6c80 PK11_PubDeriveWithKDF()
 11592 ms  0x6c80 seckey:0x7f62661d8020
 11592 ms     | 0x6c80 EC_ValidatePublicKey()
 11592 ms     | 0x6c80 ret:0x0
 11592 ms  0x6c80 ret:0x7f625fcc0b80
 11592 ms  0x6c80 PK11_DeriveWithFlags()
 11592 ms  0x6c80 basekey:0x7f625fcc0b80
 11592 ms     | 0x6c80 PK11_DeriveWithTemplate()
 11592 ms  0x6c80 ret:0x7f625fc9ac00
 11592 ms  0x6c80 PK11_Derive()
 11592 ms  0x6c80 basekey:0x7f625fc9ac00
 11592 ms     | 0x6c80 PK11_DeriveWithTemplate()
 11593 ms  0x6c80 ret:0x7f625fca8c00
 11593 ms  0x6c80 SECKEY_DestroyPrivateKey()
 11593 ms  0x6c80 privk:0x7f62661d8020::7f62661d8020  30 ad 89 60                                      0..`
 11593 ms  0x6c80 privk:0x7f62661d8020::7f62661d8020  e5 e5 e5 e5                                      ....
 11593 ms  0x6c80 PK11_Encrypt()
 11593 ms  0x6c80 symkey:0x7f625fc9ad00
 11593 ms  0x6c80 SSL_AuthCertificateComplete()
 11593 ms  0x6c80 fd:0x7f625fcb74f0
 11593 ms  0x6c80 err:0x0
 11593 ms  0x6c80 SSL_AuthCertificateComplete()
 11593 ms  0x6c80 fd:0x7f625fc75430
 11593 ms  0x6c80 err:0x0
 11593 ms  0x6c80 PK11_Encrypt()
 11593 ms  0x6c80 symkey:0x7f625fca8100
 11593 ms  0x6c80 PK11_Encrypt()
 11593 ms  0x6c80 symkey:0x7f625fc9ad00
           /* TID 0x6c88 */
 11594 ms  0x6c88 PR_Close()
 11594 ms  0x6c88 fd:0x7f625fc4f4f0
 11597 ms  0x6c88 PR_Close()
 11597 ms  0x6c88 fd:0x7f625fc4f4f0
 11598 ms  0x6c88 PR_Close()
 11598 ms  0x6c88 fd:0x7f625fc4f4f0
 11603 ms  0x6c88 PR_Close()
 11603 ms  0x6c88 fd:0x7f625fc38f40
 11612 ms  0x6c88 PR_Close()
 11612 ms  0x6c88 fd:0x7f625fc38f40
 11612 ms  0x6c88 PR_Close()
 11612 ms  0x6c88 fd:0x7f625fc38f40
 11619 ms  0x6c88 PR_Close()
 11619 ms  0x6c88 fd:0x7f625fc4f970
 11622 ms  0x6c88 PR_Close()
 11622 ms  0x6c88 fd:0x7f625fc4f970
           /* TID 0x6c80 */
 11629 ms  0x6c80 SECKEY_DestroyPrivateKey()
 11629 ms  0x6c80 privk:0x7f626631d820::7f626631d820  50 ab 89 60                                      P..`
 11629 ms  0x6c80 privk:0x7f626631d820::7f626631d820  e5 e5 e5 e5                                      ....
 11629 ms  0x6c80 SECKEY_DestroyPrivateKey()
 11629 ms  0x6c80 privk:0x7f625fc24020::7f625fc24020  10 f5 ef 5f                                      ..._
 11629 ms  0x6c80 privk:0x7f625fc24020::7f625fc24020  e5 e5 e5 e5                                      ....
 11630 ms  0x6c80 PR_Close()
 11630 ms  0x6c80 fd:0x7f625fcb7160
 11630 ms     | 0x6c80 PK11_Encrypt()
 11630 ms     | 0x6c80 symkey:0x7f625fcc0c00
 11641 ms  0x6c80 SECKEY_DestroyPrivateKey()
 11641 ms  0x6c80 privk:0x7f6266467020::7f6266467020  d0 73 d8 60                                      .s.`
 11641 ms  0x6c80 privk:0x7f6266467020::7f6266467020  e5 e5 e5 e5                                      ....
 11641 ms  0x6c80 SECKEY_DestroyPrivateKey()
 11641 ms  0x6c80 privk:0x7f626631f820::7f626631f820  70 ae 89 60                                      p..`
 11641 ms  0x6c80 privk:0x7f626631f820::7f626631f820  e5 e5 e5 e5                                      ....
 11642 ms  0x6c80 PR_Close()
 11642 ms  0x6c80 fd:0x7f625fcb74f0
 11642 ms     | 0x6c80 PK11_Encrypt()
 11642 ms     | 0x6c80 symkey:0x7f625fca8100
 11643 ms  0x6c80 SECKEY_DestroyPrivateKey()
 11643 ms  0x6c80 privk:0x7f626646c020::7f626646c020  b0 15 3a 61                                      ..:a
 11643 ms  0x6c80 privk:0x7f626646c020::7f626646c020  e5 e5 e5 e5                                      ....
 11643 ms  0x6c80 SECKEY_DestroyPrivateKey()
 11643 ms  0x6c80 privk:0x7f6266469820::7f6266469820  c0 7e d8 60                                      .~.`
 11643 ms  0x6c80 privk:0x7f6266469820::7f6266469820  e5 e5 e5 e5                                      ....
 11643 ms  0x6c80 PR_Close()
 11643 ms  0x6c80 fd:0x7f625fc75430
 11643 ms     | 0x6c80 PK11_Encrypt()
 11643 ms     | 0x6c80 symkey:0x7f625fc9ad00
           /* TID 0x6c88 */
 11655 ms  0x6c88 PR_Close()
 11655 ms  0x6c88 fd:0x7f625fc38e50
 11673 ms  0x6c88 PR_Close()
 11673 ms  0x6c88 fd:0x7f625fc38e50
 11722 ms  0x6c88 PR_Close()
 11722 ms  0x6c88 fd:0x7f625fc38e50
 11731 ms  0x6c88 PR_Close()
 11731 ms  0x6c88 fd:0x7f624ecf0e20
 11736 ms  0x6c88 PR_Close()
 11736 ms  0x6c88 fd:0x7f624ecf0e20
 11737 ms  0x6c88 PR_Close()
 11737 ms  0x6c88 fd:0x7f624ecf0e20
 11738 ms  0x6c88 PR_Close()
 11738 ms  0x6c88 fd:0x7f624ecf0e20
 11738 ms  0x6c88 PR_Close()
 11738 ms  0x6c88 fd:0x7f624ecf0e20
           /* TID 0x6c80 */
 11739 ms  0x6c80 PR_Connect()
 11739 ms  0x6c80 fd:0x7f625fc4f820
           /* TID 0x6c88 */
 11754 ms  0x6c88 PR_Close()
 11754 ms  0x6c88 fd:0x7f625fc38ee0
 12105 ms  0x6c88 PR_Close()
 12105 ms  0x6c88 fd:0x7f625fc38f40
           /* TID 0x6c80 */
 12215 ms  0x6c80 PK11_Encrypt()
 12215 ms  0x6c80 symkey:0x7f625fca8a80
           /* TID 0x6c88 */
 12250 ms  0x6c88 PR_Close()
 12250 ms  0x6c88 fd:0x7f62661110a0
 12268 ms  0x6c88 PR_Close()
 12268 ms  0x6c88 fd:0x7f6262eaee80
           /* TID 0x6c80 */
 12370 ms  0x6c80 SSL_ImportFD()
 12370 ms  0x6c80 ret:0x7f62699b7460
 12370 ms  0x6c80 SSL_AuthCertificateHook()
 12370 ms  0x6c80 fd:0x7f62699b7460
 12370 ms  0x6c80 ret:0x0
 12371 ms  0x6c80 PR_Connect()
 12371 ms  0x6c80 fd:0x7f62699b7460
 12416 ms  0x6c80 SSL_ImportFD()
 12417 ms  0x6c80 ret:0x7f6269a27490
 12417 ms  0x6c80 SSL_AuthCertificateHook()
 12417 ms  0x6c80 fd:0x7f6269a27490
 12417 ms  0x6c80 ret:0x0
 12417 ms  0x6c80 PK11_Encrypt()
 12417 ms  0x6c80 symkey:0x7f624ecf3a00
 12417 ms  0x6c80 PK11_Encrypt()
 12417 ms  0x6c80 symkey:0x7f624ecf3a00
 12418 ms  0x6c80 PK11_Encrypt()
 12418 ms  0x6c80 symkey:0x7f624ecf3a00
 12418 ms  0x6c80 PK11_Encrypt()
 12418 ms  0x6c80 symkey:0x7f624ecf3a00
 12418 ms  0x6c80 PK11_Encrypt()
 12418 ms  0x6c80 symkey:0x7f624ecf3a00
 12418 ms  0x6c80 PR_Connect()
 12418 ms  0x6c80 fd:0x7f6269a27490
 12418 ms  0x6c80 SSL_ImportFD()
 12418 ms  0x6c80 ret:0x7f62613a4e20
 12418 ms  0x6c80 SSL_AuthCertificateHook()
 12418 ms  0x6c80 fd:0x7f62613a4e20
 12418 ms  0x6c80 ret:0x0
 12418 ms  0x6c80 PR_Connect()
 12418 ms  0x6c80 fd:0x7f62613a4e20
 12419 ms  0x6c80 SSL_ImportFD()
 12419 ms  0x6c80 ret:0x7f62611e7190
 12419 ms  0x6c80 SSL_AuthCertificateHook()
 12419 ms  0x6c80 fd:0x7f62611e7190
 12419 ms  0x6c80 ret:0x0
 12419 ms  0x6c80 PR_Connect()
 12419 ms  0x6c80 fd:0x7f62611e7190
 12419 ms  0x6c80 SSL_ImportFD()
 12419 ms  0x6c80 ret:0x7f6265bacbb0
 12419 ms  0x6c80 SSL_AuthCertificateHook()
 12419 ms  0x6c80 fd:0x7f6265bacbb0
 12419 ms  0x6c80 ret:0x0
 12419 ms  0x6c80 PR_Connect()
 12419 ms  0x6c80 fd:0x7f6265bacbb0
 12419 ms  0x6c80 SSL_ImportFD()
 12419 ms  0x6c80 ret:0x7f62699b7b50
 12419 ms  0x6c80 SSL_AuthCertificateHook()
 12419 ms  0x6c80 fd:0x7f62699b7b50
 12419 ms  0x6c80 ret:0x0
 12419 ms  0x6c80 PR_Connect()
 12419 ms  0x6c80 fd:0x7f62699b7b50
 12420 ms  0x6c80 SSL_ImportFD()
 12420 ms  0x6c80 ret:0x7f62699b7d60
 12420 ms  0x6c80 SSL_AuthCertificateHook()
 12420 ms  0x6c80 fd:0x7f62699b7d60
 12420 ms  0x6c80 ret:0x0
 12420 ms  0x6c80 PR_Connect()
 12420 ms  0x6c80 fd:0x7f62699b7d60
 12420 ms  0x6c80 PK11_Encrypt()
 12420 ms  0x6c80 symkey:0x7f624ecf3a00
 12420 ms  0x6c80 PK11_Encrypt()
 12420 ms  0x6c80 symkey:0x7f624ecf3a00
 12420 ms  0x6c80 PK11_Encrypt()
 12420 ms  0x6c80 symkey:0x7f624ecf3a00
 12442 ms  0x6c80 SSL_AuthCertificateComplete()
 12442 ms  0x6c80 fd:0x7f625fc4f940
 12442 ms  0x6c80 err:0x0
 12442 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 12442 ms     | 0x6c80 privk:0x7f6266311020::7f6266311020  40 a2 79 61                                      @.ya
 12442 ms     | 0x6c80 privk:0x7f6266311020::7f6266311020  e5 e5 e5 e5                                      ....
 12442 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 12442 ms     | 0x6c80 privk:0x7f626630b820::7f626630b820  b0 8a 3e 61                                      ..>a
 12442 ms     | 0x6c80 privk:0x7f626630b820::7f626630b820  e5 e5 e5 e5                                      ....
 12442 ms  0x6c80 PK11_Encrypt()
 12442 ms  0x6c80 symkey:0x7f625fc9bc80
 12443 ms  0x6c80 PK11_Encrypt()
 12443 ms  0x6c80 symkey:0x7f625fca8a80
 12443 ms  0x6c80 PR_Close()
 12443 ms  0x6c80 fd:0x7f625fc4f940
 12443 ms     | 0x6c80 PK11_Encrypt()
 12443 ms     | 0x6c80 symkey:0x7f625fc9bc80
 12452 ms  0x6c80 SSL_ImportFD()
 12452 ms  0x6c80 ret:0x7f626083a520
 12452 ms  0x6c80 SSL_AuthCertificateHook()
 12452 ms  0x6c80 fd:0x7f626083a520
 12452 ms  0x6c80 ret:0x0
 12452 ms  0x6c80 PR_Connect()
 12452 ms  0x6c80 fd:0x7f626083a520
           /* TID 0x6c88 */
 12495 ms  0x6c88 PR_Close()
 12495 ms  0x6c88 fd:0x7f625fcb7a30
           /* TID 0x6c75 */
 12499 ms  0x6c75 PR_Close()
 12499 ms  0x6c75 fd:0x7f625fcb7a30
 12499 ms  0x6c75 PR_Close()
 12499 ms  0x6c75 fd:0x7f625fcb7a30
           /* TID 0x6c80 */
 12500 ms  0x6c80 PK11_Encrypt()
 12500 ms  0x6c80 symkey:0x7f625fcc0580
 12504 ms  0x6c80 PK11_Encrypt()
 12504 ms  0x6c80 symkey:0x7f625fca9f00
           /* TID 0x6c88 */
 12557 ms  0x6c88 PR_Close()
 12557 ms  0x6c88 fd:0x7f6260444c10
           /* TID 0x6c75 */
 12559 ms  0x6c75 PR_Close()
 12559 ms  0x6c75 fd:0x7f6269a6b670
           /* TID 0x6c88 */
 12559 ms  0x6c88 PR_Close()
 12559 ms  0x6c88 fd:0x7f6260444c10
           /* TID 0x6c80 */
 12565 ms  0x6c80 PK11_Encrypt()
 12565 ms  0x6c80 symkey:0x7f625fcc0580
 12567 ms  0x6c80 PK11_Encrypt()
 12567 ms  0x6c80 symkey:0x7f625fca9f00
           /* TID 0x6c75 */
 12580 ms  0x6c75 PR_Close()
 12580 ms  0x6c75 fd:0x7f6269a6b5b0
 12580 ms  0x6c75 PR_Close()
 12580 ms  0x6c75 fd:0x7f6269a6b5b0
 12580 ms  0x6c75 PR_Close()
 12580 ms  0x6c75 fd:0x7f6269a6b5b0
           /* TID 0x6c80 */
 12618 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12618 ms  0x6c80 cx:0x7f624ed2ec48
 12618 ms     | 0x6c80 EC_ValidatePublicKey()
 12618 ms     | 0x6c80 ret:0x0
 12618 ms  0x6c80 ret:0x7f626084c820::7f626084c820  40 ac 1b 66                                      @..f
 12619 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12619 ms  0x6c80 cx:0x7f624ed2ec48
 12619 ms     | 0x6c80 EC_ValidatePublicKey()
 12621 ms     | 0x6c80 ret:0x0
 12621 ms  0x6c80 ret:0x7f62661dc020::7f62661dc020  10 af 1b 66                                      ...f
           /* TID 0x6c88 */
 12622 ms  0x6c88 PR_Close()
 12622 ms  0x6c88 fd:0x7f6260894190
 12624 ms  0x6c88 PR_Close()
 12624 ms  0x6c88 fd:0x7f626083a5b0
           /* TID 0x6c80 */
 12626 ms  0x6c80 PK11_Encrypt()
 12626 ms  0x6c80 symkey:0x7f625fcc0580
 12628 ms  0x6c80 PK11_Encrypt()
 12628 ms  0x6c80 symkey:0x7f625fca9f00
 12630 ms  0x6c80 PK11_Encrypt()
 12630 ms  0x6c80 symkey:0x7f625fcc0280
 12630 ms  0x6c80 SSL_ImportFD()
 12630 ms  0x6c80 ret:0x7f6269eaba60
 12630 ms  0x6c80 SSL_AuthCertificateHook()
 12630 ms  0x6c80 fd:0x7f6269eaba60
 12630 ms  0x6c80 ret:0x0
 12631 ms  0x6c80 PK11_Encrypt()
 12631 ms  0x6c80 symkey:0x7f624ecf3a00
 12631 ms  0x6c80 PR_Connect()
 12631 ms  0x6c80 fd:0x7f6269eaba60
 12633 ms  0x6c80 SSL_ImportFD()
 12633 ms  0x6c80 ret:0x7f6269eabf10
 12633 ms  0x6c80 SSL_AuthCertificateHook()
 12633 ms  0x6c80 fd:0x7f6269eabf10
 12633 ms  0x6c80 ret:0x0
 12633 ms  0x6c80 PR_Connect()
 12633 ms  0x6c80 fd:0x7f6269eabf10
 12634 ms  0x6c80 SSL_ImportFD()
 12634 ms  0x6c80 ret:0x7f626a36c760
 12634 ms  0x6c80 SSL_AuthCertificateHook()
 12634 ms  0x6c80 fd:0x7f626a36c760
 12634 ms  0x6c80 ret:0x0
 12634 ms  0x6c80 PR_Connect()
 12634 ms  0x6c80 fd:0x7f626a36c760
 12635 ms  0x6c80 SSL_ImportFD()
 12635 ms  0x6c80 ret:0x7f626a638c40
 12635 ms  0x6c80 SSL_AuthCertificateHook()
 12635 ms  0x6c80 fd:0x7f626a638c40
 12635 ms  0x6c80 ret:0x0
 12635 ms  0x6c80 PR_Connect()
 12635 ms  0x6c80 fd:0x7f626a638c40
 12667 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12667 ms  0x6c80 cx:0x7f626cba1c08
 12667 ms     | 0x6c80 EC_ValidatePublicKey()
 12667 ms     | 0x6c80 ret:0x0
 12667 ms  0x6c80 ret:0x7f6269aec020::7f6269aec020  50 7b 3a 66                                      P{:f
 12667 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12667 ms  0x6c80 cx:0x7f626cba1c08
 12670 ms     | 0x6c80 EC_ValidatePublicKey()
 12672 ms     | 0x6c80 ret:0x0
 12672 ms  0x6c80 ret:0x7f6269aef820::7f6269aef820  b0 e0 3d 66                                      ..=f
 12673 ms  0x6c80 SSL_ImportFD()
 12673 ms  0x6c80 ret:0x7f6261bd5bb0
 12673 ms  0x6c80 SSL_AuthCertificateHook()
 12673 ms  0x6c80 fd:0x7f6261bd5bb0
 12673 ms  0x6c80 ret:0x0
 12674 ms  0x6c80 PR_Connect()
 12674 ms  0x6c80 fd:0x7f6261bd5bb0
 12674 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12674 ms  0x6c80 cx:0x7f624ed2ef88
 12675 ms     | 0x6c80 EC_ValidatePublicKey()
 12675 ms     | 0x6c80 ret:0x0
 12675 ms  0x6c80 ret:0x7f6269ece020::7f6269ece020  20 59 3f 66                                       Y?f
 12675 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12675 ms  0x6c80 cx:0x7f624ed2ef88
 12676 ms     | 0x6c80 EC_ValidatePublicKey()
 12677 ms     | 0x6c80 ret:0x0
 12677 ms  0x6c80 ret:0x7f6269ed1820::7f6269ed1820  60 5f 3f 66                                      `_?f
 12678 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12678 ms  0x6c80 cx:0x7f626cba1f48
 12678 ms     | 0x6c80 EC_ValidatePublicKey()
 12678 ms     | 0x6c80 ret:0x0
 12678 ms  0x6c80 ret:0x7f6269ed6020::7f6269ed6020  e0 e7 4b 66                                      ..Kf
 12678 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12678 ms  0x6c80 cx:0x7f626cba1f48
 12682 ms     | 0x6c80 EC_ValidatePublicKey()
 12684 ms     | 0x6c80 ret:0x0
 12684 ms  0x6c80 ret:0x7f6269f79820::7f6269f79820  20 34 c5 68                                       4.h
           /* TID 0x6c88 */
 12686 ms  0x6c88 PR_Close()
 12686 ms  0x6c88 fd:0x7f6269931b20
 12688 ms  0x6c88 PR_Close()
 12688 ms  0x6c88 fd:0x7f6269931b20
 12690 ms  0x6c88 PR_Close()
 12690 ms  0x6c88 fd:0x7f6269931b20
           /* TID 0x6c80 */
 12692 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12692 ms  0x6c80 cx:0x7f626cba18c8
 12692 ms     | 0x6c80 EC_ValidatePublicKey()
 12692 ms     | 0x6c80 ret:0x0
 12692 ms  0x6c80 ret:0x7f6269f7c820::7f6269f7c820  c0 1e 1b 66                                      ...f
 12692 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12692 ms  0x6c80 cx:0x7f626cba18c8
 12693 ms     | 0x6c80 EC_ValidatePublicKey()
 12694 ms     | 0x6c80 ret:0x0
 12694 ms  0x6c80 ret:0x7f6269f7e820::7f6269f7e820  a0 e6 c5 68                                      ...h
 12699 ms  0x6c80 SSL_ImportFD()
 12699 ms  0x6c80 ret:0x7f6269eabbe0
 12699 ms  0x6c80 SSL_AuthCertificateHook()
 12699 ms  0x6c80 fd:0x7f6269eabbe0
 12699 ms  0x6c80 ret:0x0
 12699 ms  0x6c80 PR_Connect()
 12699 ms  0x6c80 fd:0x7f6269eabbe0
 12699 ms  0x6c80 SSL_ImportFD()
 12699 ms  0x6c80 ret:0x7f626a784760
 12699 ms  0x6c80 SSL_AuthCertificateHook()
 12699 ms  0x6c80 fd:0x7f626a784760
 12699 ms  0x6c80 ret:0x0
 12699 ms  0x6c80 PR_Connect()
 12699 ms  0x6c80 fd:0x7f626a784760
 12699 ms  0x6c80 SSL_ImportFD()
 12699 ms  0x6c80 ret:0x7f626a784f40
 12699 ms  0x6c80 SSL_AuthCertificateHook()
 12699 ms  0x6c80 fd:0x7f626a784f40
 12699 ms  0x6c80 ret:0x0
 12699 ms  0x6c80 PR_Connect()
 12699 ms  0x6c80 fd:0x7f626a784f40
 12699 ms  0x6c80 SSL_ImportFD()
 12699 ms  0x6c80 ret:0x7f626a798220
 12699 ms  0x6c80 SSL_AuthCertificateHook()
 12699 ms  0x6c80 fd:0x7f626a798220
 12699 ms  0x6c80 ret:0x0
 12699 ms  0x6c80 PR_Connect()
 12699 ms  0x6c80 fd:0x7f626a798220
 12699 ms  0x6c80 SSL_ImportFD()
 12699 ms  0x6c80 ret:0x7f626a7ca670
 12699 ms  0x6c80 SSL_AuthCertificateHook()
 12699 ms  0x6c80 fd:0x7f626a7ca670
 12699 ms  0x6c80 ret:0x0
 12699 ms  0x6c80 PR_Connect()
 12699 ms  0x6c80 fd:0x7f626a7ca670
 12699 ms  0x6c80 PK11_Encrypt()
 12699 ms  0x6c80 symkey:0x7f625fca9f00
 12700 ms  0x6c80 PK11_Encrypt()
 12700 ms  0x6c80 symkey:0x7f625fcc0280
 12700 ms  0x6c80 PK11_Encrypt()
 12700 ms  0x6c80 symkey:0x7f625fcc0580
 12700 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12700 ms  0x6c80 cx:0x7f626cba1da8
 12701 ms     | 0x6c80 EC_ValidatePublicKey()
 12701 ms     | 0x6c80 ret:0x0
 12701 ms  0x6c80 ret:0x7f6269f81020::7f6269f81020  30 28 c8 68                                      0(.h
 12701 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12701 ms  0x6c80 cx:0x7f626cba1da8
 12702 ms     | 0x6c80 EC_ValidatePublicKey()
 12704 ms     | 0x6c80 ret:0x0
 12704 ms  0x6c80 ret:0x7f6269f83020::7f6269f83020  10 8f c8 68                                      ...h
 12704 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12704 ms  0x6c80 cx:0x7f626cba1a68
 12705 ms     | 0x6c80 EC_ValidatePublicKey()
 12705 ms     | 0x6c80 ret:0x0
 12705 ms  0x6c80 ret:0x7f6269f85820::7f6269f85820  90 b2 c8 68                                      ...h
 12705 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12705 ms  0x6c80 cx:0x7f626cba1a68
 12705 ms     | 0x6c80 EC_ValidatePublicKey()
 12707 ms     | 0x6c80 ret:0x0
 12707 ms  0x6c80 ret:0x7f6269f87820::7f6269f87820  20 de cf 68                                       ..h
 12707 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12707 ms  0x6c80 cx:0x7f626cba2428
 12707 ms     | 0x6c80 EC_ValidatePublicKey()
 12707 ms     | 0x6c80 ret:0x0
 12707 ms  0x6c80 ret:0x7f6269f8a020::7f6269f8a020  70 c4 d5 68                                      p..h
 12708 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12708 ms  0x6c80 cx:0x7f626cba2428
 12708 ms     | 0x6c80 EC_ValidatePublicKey()
 12710 ms     | 0x6c80 ret:0x0
 12710 ms  0x6c80 ret:0x7f6269f8c020::7f6269f8c020  90 cc d7 68                                      ...h
 12711 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12711 ms  0x6c80 cx:0x7f626cba25c8
 12711 ms     | 0x6c80 EC_ValidatePublicKey()
 12711 ms     | 0x6c80 ret:0x0
 12711 ms  0x6c80 ret:0x7f626a609020::7f626a609020  60 20 d8 68                                      ` .h
 12711 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12711 ms  0x6c80 cx:0x7f626cba25c8
 12712 ms     | 0x6c80 EC_ValidatePublicKey()
 12713 ms     | 0x6c80 ret:0x0
 12713 ms  0x6c80 ret:0x7f626a60d820::7f626a60d820  b0 f5 de 68                                      ...h
 12716 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12716 ms  0x6c80 cx:0x7f626cba2768
 12717 ms     | 0x6c80 EC_ValidatePublicKey()
 12717 ms     | 0x6c80 ret:0x0
 12717 ms  0x6c80 ret:0x7f626a612020::7f626a612020  b0 9f df 68                                      ...h
 12717 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12717 ms  0x6c80 cx:0x7f626cba2768
 12718 ms     | 0x6c80 EC_ValidatePublicKey()
 12719 ms     | 0x6c80 ret:0x0
 12719 ms  0x6c80 ret:0x7f626a616820::7f626a616820  20 a4 9e 69                                       ..i
 12719 ms  0x6c80 SSL_ImportFD()
 12719 ms  0x6c80 ret:0x7f626a638b50
 12719 ms  0x6c80 SSL_AuthCertificateHook()
 12719 ms  0x6c80 fd:0x7f626a638b50
 12719 ms  0x6c80 ret:0x0
 12720 ms  0x6c80 PR_Connect()
 12720 ms  0x6c80 fd:0x7f626a638b50
 12721 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12721 ms  0x6c80 cx:0x7f624ed2f468
 12724 ms     | 0x6c80 EC_ValidatePublicKey()
 12724 ms     | 0x6c80 ret:0x0
 12724 ms  0x6c80 ret:0x7f626a75f820::7f626a75f820  e0 b2 a5 69                                      ...i
 12724 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12724 ms  0x6c80 cx:0x7f624ed2f468
 12725 ms     | 0x6c80 EC_ValidatePublicKey()
 12727 ms     | 0x6c80 ret:0x0
 12727 ms  0x6c80 ret:0x7f626a761820::7f626a761820  a0 bb a5 69                                      ...i
 12727 ms  0x6c80 SSL_ImportFD()
 12727 ms  0x6c80 ret:0x7f626a638370
 12727 ms  0x6c80 SSL_AuthCertificateHook()
 12727 ms  0x6c80 fd:0x7f626a638370
 12727 ms  0x6c80 ret:0x0
 12727 ms  0x6c80 PR_Connect()
 12727 ms  0x6c80 fd:0x7f626a638370
           /* TID 0x6c88 */
 12752 ms  0x6c88 PR_Close()
 12752 ms  0x6c88 fd:0x7f6261bd5f40
 12753 ms  0x6c88 PR_Close()
 12753 ms  0x6c88 fd:0x7f6261bd5f40
           /* TID 0x6c80 */
 12756 ms  0x6c80 PK11_Encrypt()
 12756 ms  0x6c80 symkey:0x7f625fca9f00
           /* TID 0x6c88 */
 12758 ms  0x6c88 PR_Close()
 12758 ms  0x6c88 fd:0x7f6269eabd00
           /* TID 0x6c80 */
 12761 ms  0x6c80 PK11_Derive()
 12761 ms  0x6c80 basekey:0x7f625fc9ba80
 12761 ms     | 0x6c80 PK11_DeriveWithTemplate()
 12761 ms  0x6c80 ret:0x7f625fc9bb00
 12762 ms  0x6c80 PK11_Encrypt()
 12762 ms  0x6c80 symkey:0x7f625fc9bb80
 12763 ms  0x6c80 SECKEY_DestroyPrivateKey()
 12763 ms  0x6c80 privk:0x7f6269f8c020::7f6269f8c020  90 cc d7 68                                      ...h
 12763 ms  0x6c80 privk:0x7f6269f8c020::7f6269f8c020  e5 e5 e5 e5                                      ....
 12763 ms  0x6c80 SECKEY_DestroyPrivateKey()
 12763 ms  0x6c80 privk:0x7f6269f8a020::7f6269f8a020  70 c4 d5 68                                      p..h
 12763 ms  0x6c80 privk:0x7f6269f8a020::7f6269f8a020  e5 e5 e5 e5                                      ....
 12763 ms  0x6c80 PK11_Encrypt()
 12763 ms  0x6c80 symkey:0x7f625fc9bb80
 12765 ms  0x6c80 PK11_Derive()
 12765 ms  0x6c80 basekey:0x7f625fc9ac00
 12766 ms     | 0x6c80 PK11_DeriveWithTemplate()
 12766 ms  0x6c80 ret:0x7f625fca8c00
 12766 ms  0x6c80 PK11_Encrypt()
 12766 ms  0x6c80 symkey:0x7f625fc9ad80
 12766 ms  0x6c80 SECKEY_DestroyPrivateKey()
 12766 ms  0x6c80 privk:0x7f626a60d820::7f626a60d820  b0 f5 de 68                                      ...h
 12766 ms  0x6c80 privk:0x7f626a60d820::7f626a60d820  e5 e5 e5 e5                                      ....
 12766 ms  0x6c80 SECKEY_DestroyPrivateKey()
 12766 ms  0x6c80 privk:0x7f626a609020::7f626a609020  60 20 d8 68                                      ` .h
 12767 ms  0x6c80 privk:0x7f626a609020::7f626a609020  e5 e5 e5 e5                                      ....
 12776 ms  0x6c80 PK11_Derive()
 12776 ms  0x6c80 basekey:0x7f625fc9bf80
 12776 ms     | 0x6c80 PK11_DeriveWithTemplate()
 12776 ms  0x6c80 ret:0x7f625fc9ac80
 12776 ms  0x6c80 PK11_Encrypt()
 12776 ms  0x6c80 symkey:0x7f625fca8180
 12777 ms  0x6c80 SECKEY_DestroyPrivateKey()
 12777 ms  0x6c80 privk:0x7f626a616820::7f626a616820  20 a4 9e 69                                       ..i
 12777 ms  0x6c80 privk:0x7f626a616820::7f626a616820  e5 e5 e5 e5                                      ....
 12777 ms  0x6c80 SECKEY_DestroyPrivateKey()
 12777 ms  0x6c80 privk:0x7f626a612020::7f626a612020  b0 9f df 68                                      ...h
 12777 ms  0x6c80 privk:0x7f626a612020::7f626a612020  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 12785 ms  0x6c88 PR_Close()
 12785 ms  0x6c88 fd:0x7f626a36c6d0
 12808 ms  0x6c88 PR_Close()
 12808 ms  0x6c88 fd:0x7f6269eaba30
           /* TID 0x6c80 */
 12810 ms  0x6c80 PK11_Encrypt()
 12810 ms  0x6c80 symkey:0x7f625fcc0580
           /* TID 0x6c88 */
 12869 ms  0x6c88 PR_Close()
 12869 ms  0x6c88 fd:0x7f6269eab910
           /* TID 0x6c80 */
 12873 ms  SECKEY_ECParamsToKeySize()
 12873 ms  0x6c80 ret:0xff
 12873 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12873 ms  0x6c80 cx:0x7f624ed2ec48
 12874 ms     | 0x6c80 EC_ValidatePublicKey()
 12874 ms     | 0x6c80 ret:0x0
 12874 ms  0x6c80 ret:0x7f626a60d820::7f626a60d820  b0 cf d7 68                                      ...h
 12874 ms  0x6c80 PK11_PubDeriveWithKDF()
 12874 ms  0x6c80 seckey:0x7f626a60d820
 12874 ms     | 0x6c80 EC_ValidatePublicKey()
 12874 ms     | 0x6c80 ret:0x0
 12875 ms  0x6c80 ret:0x7f625fca8080
 12875 ms  0x6c80 PK11_DeriveWithFlags()
 12875 ms  0x6c80 basekey:0x7f625fca8080
 12875 ms     | 0x6c80 PK11_DeriveWithTemplate()
 12875 ms  0x6c80 ret:0x7f624ed32880
 12875 ms  0x6c80 PK11_Derive()
 12875 ms  0x6c80 basekey:0x7f624ed32880
 12875 ms     | 0x6c80 PK11_DeriveWithTemplate()
 12875 ms  0x6c80 ret:0x7f625fcc0b80
 12875 ms  0x6c80 SECKEY_DestroyPrivateKey()
 12875 ms  0x6c80 privk:0x7f626a60d820::7f626a60d820  b0 cf d7 68                                      ...h
 12875 ms  0x6c80 privk:0x7f626a60d820::7f626a60d820  e5 e5 e5 e5                                      ....
 12875 ms  0x6c80 PK11_Encrypt()
 12875 ms  0x6c80 symkey:0x7f625fcc0c80
 12882 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12882 ms  0x6c80 cx:0x7f626cba20e8
 12882 ms     | 0x6c80 EC_ValidatePublicKey()
 12882 ms     | 0x6c80 ret:0x0
 12883 ms  0x6c80 ret:0x7f626a764820::7f626a764820  50 e1 ab 69                                      P..i
 12883 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12883 ms  0x6c80 cx:0x7f626cba20e8
 12883 ms     | 0x6c80 EC_ValidatePublicKey()
 12885 ms     | 0x6c80 ret:0x0
 12885 ms  0x6c80 ret:0x7f626a766820::7f626a766820  30 08 e2 69                                      0..i
           /* TID 0x6c88 */
 12906 ms  0x6c88 PR_Close()
 12906 ms  0x6c88 fd:0x7f626a784520
           /* TID 0x6c80 */
 12922 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12922 ms  0x6c80 cx:0x7f626cba2908
 12923 ms     | 0x6c80 EC_ValidatePublicKey()
 12923 ms     | 0x6c80 ret:0x0
 12923 ms  0x6c80 ret:0x7f626a76a020::7f626a76a020  70 c4 d5 68                                      p..h
 12923 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12923 ms  0x6c80 cx:0x7f626cba2908
 12924 ms     | 0x6c80 EC_ValidatePublicKey()
 12926 ms     | 0x6c80 ret:0x0
 12926 ms  0x6c80 ret:0x7f626a76c020::7f626a76c020  60 25 ec 69                                      `%.i
 12926 ms  0x6c80 SSL_ImportFD()
 12926 ms  0x6c80 ret:0x7f62613a4520
 12926 ms  0x6c80 SSL_AuthCertificateHook()
 12926 ms  0x6c80 fd:0x7f62613a4520
 12926 ms  0x6c80 ret:0x0
 12927 ms  0x6c80 PR_Connect()
 12927 ms  0x6c80 fd:0x7f62613a4520
 12928 ms  SECKEY_ECParamsToKeySize()
 12928 ms  0x6c80 ret:0xff
 12928 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12928 ms  0x6c80 cx:0x7f626cba1c08
 12928 ms     | 0x6c80 EC_ValidatePublicKey()
 12928 ms     | 0x6c80 ret:0x0
 12928 ms  0x6c80 ret:0x7f626a76f020::7f626a76f020  10 2f ec 69                                      ./.i
 12929 ms  0x6c80 PK11_PubDeriveWithKDF()
 12929 ms  0x6c80 seckey:0x7f626a76f020
 12929 ms     | 0x6c80 EC_ValidatePublicKey()
 12929 ms     | 0x6c80 ret:0x0
 12929 ms  0x6c80 ret:0x7f625fca8080
 12929 ms  0x6c80 PK11_DeriveWithFlags()
 12929 ms  0x6c80 basekey:0x7f625fca8080
 12929 ms     | 0x6c80 PK11_DeriveWithTemplate()
 12929 ms  0x6c80 ret:0x7f624ecf4600
 12929 ms  0x6c80 PK11_Derive()
 12929 ms  0x6c80 basekey:0x7f624ecf4600
 12929 ms     | 0x6c80 PK11_DeriveWithTemplate()
 12929 ms  0x6c80 ret:0x7f625fc9b600
 12929 ms  0x6c80 SECKEY_DestroyPrivateKey()
 12929 ms  0x6c80 privk:0x7f626a76f020::7f626a76f020  10 2f ec 69                                      ./.i
 12929 ms  0x6c80 privk:0x7f626a76f020::7f626a76f020  e5 e5 e5 e5                                      ....
 12929 ms  0x6c80 PK11_Encrypt()
 12929 ms  0x6c80 symkey:0x7f625fca8c80
 12929 ms  0x6c80 SSL_AuthCertificateComplete()
 12929 ms  0x6c80 fd:0x7f6265bacbb0
 12929 ms  0x6c80 err:0x0
 12930 ms  0x6c80 PK11_Encrypt()
 12930 ms  0x6c80 symkey:0x7f625fca8c80
 12935 ms  0x6c80 SSL_ImportFD()
 12935 ms  0x6c80 ret:0x7f6266131cd0
 12935 ms  0x6c80 SSL_AuthCertificateHook()
 12935 ms  0x6c80 fd:0x7f6266131cd0
 12935 ms  0x6c80 ret:0x0
 12935 ms  0x6c80 PR_Connect()
 12935 ms  0x6c80 fd:0x7f6266131cd0
 12935 ms  0x6c80 SSL_ImportFD()
 12935 ms  0x6c80 ret:0x7f6265c3a6a0
 12935 ms  0x6c80 SSL_AuthCertificateHook()
 12935 ms  0x6c80 fd:0x7f6265c3a6a0
 12935 ms  0x6c80 ret:0x0
 12936 ms  0x6c80 PR_Connect()
 12936 ms  0x6c80 fd:0x7f6265c3a6a0
 12936 ms  0x6c80 SSL_ImportFD()
 12936 ms  0x6c80 ret:0x7f6265c3a820
 12936 ms  0x6c80 SSL_AuthCertificateHook()
 12936 ms  0x6c80 fd:0x7f6265c3a820
 12936 ms  0x6c80 ret:0x0
 12936 ms  0x6c80 PR_Connect()
 12936 ms  0x6c80 fd:0x7f6265c3a820
 12936 ms  0x6c80 SSL_ImportFD()
 12936 ms  0x6c80 ret:0x7f6266111520
 12936 ms  0x6c80 SSL_AuthCertificateHook()
 12936 ms  0x6c80 fd:0x7f6266111520
 12936 ms  0x6c80 ret:0x0
 12936 ms  0x6c80 PR_Connect()
 12936 ms  0x6c80 fd:0x7f6266111520
 12937 ms  0x6c80 SSL_ImportFD()
 12937 ms  0x6c80 ret:0x7f62661310a0
 12937 ms  0x6c80 SSL_AuthCertificateHook()
 12937 ms  0x6c80 fd:0x7f62661310a0
 12937 ms  0x6c80 ret:0x0
 12937 ms  0x6c80 PR_Connect()
 12937 ms  0x6c80 fd:0x7f62661310a0
 12937 ms  0x6c80 SSL_ImportFD()
 12937 ms  0x6c80 ret:0x7f62661317c0
 12937 ms  0x6c80 SSL_AuthCertificateHook()
 12937 ms  0x6c80 fd:0x7f62661317c0
 12937 ms  0x6c80 ret:0x0
 12937 ms  0x6c80 PR_Connect()
 12937 ms  0x6c80 fd:0x7f62661317c0
 12941 ms  SECKEY_ECParamsToKeySize()
 12941 ms  0x6c80 ret:0xff
 12941 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12941 ms  0x6c80 cx:0x7f626cba1f48
 12942 ms     | 0x6c80 EC_ValidatePublicKey()
 12942 ms     | 0x6c80 ret:0x0
 12942 ms  0x6c80 ret:0x7f626a770020::7f626a770020  50 81 f2 69                                      P..i
 12942 ms  0x6c80 PK11_PubDeriveWithKDF()
 12942 ms  0x6c80 seckey:0x7f626a770020
 12942 ms     | 0x6c80 EC_ValidatePublicKey()
 12942 ms     | 0x6c80 ret:0x0
 12942 ms  0x6c80 ret:0x7f625fca8080
 12942 ms  0x6c80 PK11_DeriveWithFlags()
 12942 ms  0x6c80 basekey:0x7f625fca8080
 12942 ms     | 0x6c80 PK11_DeriveWithTemplate()
 12942 ms  0x6c80 ret:0x7f625fc9b580
 12942 ms  0x6c80 PK11_Derive()
 12942 ms  0x6c80 basekey:0x7f625fc9b580
 12942 ms     | 0x6c80 PK11_DeriveWithTemplate()
 12942 ms  0x6c80 ret:0x7f624ecf3b00
 12942 ms  0x6c80 SECKEY_DestroyPrivateKey()
 12942 ms  0x6c80 privk:0x7f626a770020::7f626a770020  50 81 f2 69                                      P..i
 12943 ms  0x6c80 privk:0x7f626a770020::7f626a770020  e5 e5 e5 e5                                      ....
 12943 ms  0x6c80 PK11_Encrypt()
 12943 ms  0x6c80 symkey:0x7f625fc9b680
 12943 ms  0x6c80 SSL_AuthCertificateComplete()
 12943 ms  0x6c80 fd:0x7f62699b7d60
 12943 ms  0x6c80 err:0x0
 12943 ms  0x6c80 PK11_Encrypt()
 12943 ms  0x6c80 symkey:0x7f625fc9b680
 12946 ms  SECKEY_ECParamsToKeySize()
 12946 ms  0x6c80 ret:0xff
 12946 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12946 ms  0x6c80 cx:0x7f624ed2ef88
 12946 ms     | 0x6c80 EC_ValidatePublicKey()
 12946 ms     | 0x6c80 ret:0x0
 12946 ms  0x6c80 ret:0x7f626a771820::7f626a771820  10 8a f2 69                                      ...i
 12946 ms  0x6c80 PK11_PubDeriveWithKDF()
 12946 ms  0x6c80 seckey:0x7f626a771820
 12946 ms     | 0x6c80 EC_ValidatePublicKey()
 12946 ms     | 0x6c80 ret:0x0
 12947 ms  0x6c80 ret:0x7f625fca8080
 12947 ms  0x6c80 PK11_DeriveWithFlags()
 12947 ms  0x6c80 basekey:0x7f625fca8080
 12947 ms     | 0x6c80 PK11_DeriveWithTemplate()
 12947 ms  0x6c80 ret:0x7f624ecf3980
 12947 ms  0x6c80 PK11_Derive()
 12947 ms  0x6c80 basekey:0x7f624ecf3980
 12947 ms     | 0x6c80 PK11_DeriveWithTemplate()
 12947 ms  0x6c80 ret:0x7f62617c1f80
 12947 ms  0x6c80 SECKEY_DestroyPrivateKey()
 12947 ms  0x6c80 privk:0x7f626a771820::7f626a771820  10 8a f2 69                                      ...i
 12947 ms  0x6c80 privk:0x7f626a771820::7f626a771820  e5 e5 e5 e5                                      ....
 12947 ms  0x6c80 PK11_Encrypt()
 12947 ms  0x6c80 symkey:0x7f624ecf3f80
 12950 ms  0x6c80 SSL_AuthCertificateComplete()
 12950 ms  0x6c80 fd:0x7f6269a27490
 12950 ms  0x6c80 err:0x0
 12950 ms  0x6c80 PK11_Encrypt()
 12950 ms  0x6c80 symkey:0x7f624ecf3f80
 12951 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12951 ms  0x6c80 cx:0x7f626cba2c48
 12951 ms     | 0x6c80 EC_ValidatePublicKey()
 12951 ms     | 0x6c80 ret:0x0
 12951 ms  0x6c80 ret:0x7f626a772820::7f626a772820  c0 84 f2 69                                      ...i
 12951 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12951 ms  0x6c80 cx:0x7f626cba2c48
 12952 ms     | 0x6c80 EC_ValidatePublicKey()
 12953 ms     | 0x6c80 ret:0x0
 12953 ms  0x6c80 ret:0x7f626a775020::7f626a775020  b0 af 06 6a                                      ...j
           /* TID 0x6c88 */
 12956 ms  0x6c88 PR_Close()
 12956 ms  0x6c88 fd:0x7f62617c4640
           /* TID 0x6c80 */
 12963 ms  SECKEY_ECParamsToKeySize()
 12963 ms  0x6c80 ret:0xff
 12963 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12963 ms  0x6c80 cx:0x7f626cba18c8
 12963 ms     | 0x6c80 EC_ValidatePublicKey()
 12963 ms     | 0x6c80 ret:0x0
 12963 ms  0x6c80 ret:0x7f626a77a020::7f626a77a020  60 da 08 6a                                      `..j
 12963 ms  0x6c80 PK11_PubDeriveWithKDF()
 12963 ms  0x6c80 seckey:0x7f626a77a020
 12963 ms     | 0x6c80 EC_ValidatePublicKey()
 12963 ms     | 0x6c80 ret:0x0
 12964 ms  0x6c80 ret:0x7f625fca8080
 12964 ms  0x6c80 PK11_DeriveWithFlags()
 12964 ms  0x6c80 basekey:0x7f625fca8080
 12964 ms     | 0x6c80 PK11_DeriveWithTemplate()
 12964 ms  0x6c80 ret:0x7f62617b2800
 12964 ms  0x6c80 PK11_Derive()
 12964 ms  0x6c80 basekey:0x7f62617b2800
 12964 ms     | 0x6c80 PK11_DeriveWithTemplate()
 12964 ms  0x6c80 ret:0x7f6262ecbd80
 12964 ms  0x6c80 SECKEY_DestroyPrivateKey()
 12964 ms  0x6c80 privk:0x7f626a77a020::7f626a77a020  60 da 08 6a                                      `..j
 12964 ms  0x6c80 privk:0x7f626a77a020::7f626a77a020  e5 e5 e5 e5                                      ....
 12964 ms  0x6c80 PK11_Encrypt()
 12964 ms  0x6c80 symkey:0x7f6262ecbf00
 12967 ms  0x6c80 SSL_AuthCertificateComplete()
 12967 ms  0x6c80 fd:0x7f62613a4e20
 12967 ms  0x6c80 err:0x0
 12967 ms  0x6c80 PK11_Encrypt()
 12967 ms  0x6c80 symkey:0x7f6262ecbf00
 12968 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12968 ms  0x6c80 cx:0x7f626cba37a8
 12968 ms     | 0x6c80 EC_ValidatePublicKey()
 12968 ms     | 0x6c80 ret:0x0
 12968 ms  0x6c80 ret:0x7f626a77c020::7f626a77c020  d0 d8 08 6a                                      ...j
 12968 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12968 ms  0x6c80 cx:0x7f626cba37a8
 12969 ms     | 0x6c80 EC_ValidatePublicKey()
 12970 ms     | 0x6c80 ret:0x0
 12971 ms  0x6c80 ret:0x7f626ac83820::7f626ac83820  a0 36 0a 6a                                      .6.j
 12971 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12971 ms  0x6c80 cx:0x7f626cba3608
 12972 ms     | 0x6c80 EC_ValidatePublicKey()
 12972 ms     | 0x6c80 ret:0x0
 12972 ms  0x6c80 ret:0x7f626ac8a020::7f626ac8a020  e0 37 0a 6a                                      .7.j
 12972 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12972 ms  0x6c80 cx:0x7f626cba3608
 12973 ms     | 0x6c80 EC_ValidatePublicKey()
 12974 ms     | 0x6c80 ret:0x0
 12974 ms  0x6c80 ret:0x7f626ac98820::7f626ac98820  20 fe 7c 6a                                       .|j
 12979 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12979 ms  0x6c80 cx:0x7f626cba3468
 12979 ms     | 0x6c80 EC_ValidatePublicKey()
 12979 ms     | 0x6c80 ret:0x0
 12979 ms  0x6c80 ret:0x7f626dc6b020::7f626dc6b020  f0 db 90 6a                                      ...j
 12979 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12979 ms  0x6c80 cx:0x7f626cba3468
 12980 ms     | 0x6c80 EC_ValidatePublicKey()
 12981 ms     | 0x6c80 ret:0x0
 12982 ms  0x6c80 ret:0x7f626dc78820::7f626dc78820  e0 62 91 6a                                      .b.j
 12986 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12986 ms  0x6c80 cx:0x7f626cba32c8
 12986 ms     | 0x6c80 EC_ValidatePublicKey()
 12986 ms     | 0x6c80 ret:0x0
 12986 ms  0x6c80 ret:0x7f6287f74820::7f6287f74820  90 6c 91 6a                                      .l.j
 12987 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12987 ms  0x6c80 cx:0x7f626cba32c8
 12987 ms     | 0x6c80 EC_ValidatePublicKey()
 12989 ms     | 0x6c80 ret:0x0
 12989 ms  0x6c80 ret:0x7f626d204020::7f626d204020  10 cf 96 6a                                      ...j
 12990 ms  SECKEY_ECParamsToKeySize()
 12990 ms  0x6c80 ret:0xff
 12990 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12990 ms  0x6c80 cx:0x7f626cba1da8
 12991 ms     | 0x6c80 EC_ValidatePublicKey()
 12991 ms     | 0x6c80 ret:0x0
 12991 ms  0x6c80 ret:0x7f626d207020::7f626d207020  00 7b cf 6a                                      .{.j
 12991 ms  0x6c80 PK11_PubDeriveWithKDF()
 12991 ms  0x6c80 seckey:0x7f626d207020
 12991 ms     | 0x6c80 EC_ValidatePublicKey()
 12991 ms     | 0x6c80 ret:0x0
 12991 ms  0x6c80 ret:0x7f625fca8080
 12991 ms  0x6c80 PK11_DeriveWithFlags()
 12991 ms  0x6c80 basekey:0x7f625fca8080
 12991 ms     | 0x6c80 PK11_DeriveWithTemplate()
 12992 ms  0x6c80 ret:0x7f62648f6600
 12992 ms  0x6c80 PK11_Derive()
 12992 ms  0x6c80 basekey:0x7f62648f6600
 12992 ms     | 0x6c80 PK11_DeriveWithTemplate()
 12992 ms  0x6c80 ret:0x7f62648f6680
 12992 ms  0x6c80 SECKEY_DestroyPrivateKey()
 12992 ms  0x6c80 privk:0x7f626d207020::7f626d207020  00 7b cf 6a                                      .{.j
 12992 ms  0x6c80 privk:0x7f626d207020::7f626d207020  e5 e5 e5 e5                                      ....
 12992 ms  0x6c80 PK11_Encrypt()
 12992 ms  0x6c80 symkey:0x7f6265877200
 12993 ms  SECKEY_ECParamsToKeySize()
 12993 ms  0x6c80 ret:0xff
 12993 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12993 ms  0x6c80 cx:0x7f626cba1a68
 12993 ms     | 0x6c80 EC_ValidatePublicKey()
 12993 ms     | 0x6c80 ret:0x0
 12993 ms  0x6c80 ret:0x7f626d207820::7f626d207820  e0 7c cf 6a                                      .|.j
 12993 ms  0x6c80 PK11_PubDeriveWithKDF()
 12993 ms  0x6c80 seckey:0x7f626d207820
 12993 ms     | 0x6c80 EC_ValidatePublicKey()
 12993 ms     | 0x6c80 ret:0x0
 12994 ms  0x6c80 ret:0x7f625fca8080
 12994 ms  0x6c80 PK11_DeriveWithFlags()
 12994 ms  0x6c80 basekey:0x7f625fca8080
 12994 ms     | 0x6c80 PK11_DeriveWithTemplate()
 12994 ms  0x6c80 ret:0x7f6265877780
 12994 ms  0x6c80 PK11_Derive()
 12994 ms  0x6c80 basekey:0x7f6265877780
 12994 ms     | 0x6c80 PK11_DeriveWithTemplate()
 12994 ms  0x6c80 ret:0x7f6265877880
 12994 ms  0x6c80 SECKEY_DestroyPrivateKey()
 12994 ms  0x6c80 privk:0x7f626d207820::7f626d207820  e0 7c cf 6a                                      .|.j
 12994 ms  0x6c80 privk:0x7f626d207820::7f626d207820  e5 e5 e5 e5                                      ....
 12994 ms  0x6c80 PK11_Encrypt()
 12994 ms  0x6c80 symkey:0x7f6265878400
 12995 ms  0x6c80 SSL_AuthCertificateComplete()
 12995 ms  0x6c80 fd:0x7f62699b7b50
 12995 ms  0x6c80 err:0x0
 12995 ms  0x6c80 SSL_AuthCertificateComplete()
 12995 ms  0x6c80 fd:0x7f62611e7190
 12995 ms  0x6c80 err:0x0
 12995 ms  0x6c80 PK11_Encrypt()
 12995 ms  0x6c80 symkey:0x7f6265877200
 12995 ms  0x6c80 PK11_Encrypt()
 12995 ms  0x6c80 symkey:0x7f6265878400
 12996 ms  SECKEY_ECParamsToKeySize()
 12996 ms  0x6c80 ret:0xff
 12996 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12996 ms  0x6c80 cx:0x7f624ed2f468
 12996 ms     | 0x6c80 EC_ValidatePublicKey()
 12996 ms     | 0x6c80 ret:0x0
 12996 ms  0x6c80 ret:0x7f626d20a020::7f626d20a020  60 90 cf 6c                                      `..l
 12996 ms  0x6c80 PK11_PubDeriveWithKDF()
 12996 ms  0x6c80 seckey:0x7f626d20a020
 12996 ms     | 0x6c80 EC_ValidatePublicKey()
 12996 ms     | 0x6c80 ret:0x0
 12997 ms  0x6c80 ret:0x7f625fca8080
 12997 ms  0x6c80 PK11_DeriveWithFlags()
 12997 ms  0x6c80 basekey:0x7f625fca8080
 12997 ms     | 0x6c80 PK11_DeriveWithTemplate()
 12997 ms  0x6c80 ret:0x7f62658b7700
 12997 ms  0x6c80 PK11_Derive()
 12997 ms  0x6c80 basekey:0x7f62658b7700
 12997 ms     | 0x6c80 PK11_DeriveWithTemplate()
 12997 ms  0x6c80 ret:0x7f62658b7880
 12997 ms  0x6c80 SECKEY_DestroyPrivateKey()
 12997 ms  0x6c80 privk:0x7f626d20a020::7f626d20a020  60 90 cf 6c                                      `..l
 12997 ms  0x6c80 privk:0x7f626d20a020::7f626d20a020  e5 e5 e5 e5                                      ....
 12997 ms  0x6c80 PK11_Encrypt()
 12997 ms  0x6c80 symkey:0x7f6265baf900
 12998 ms  0x6c80 SECKEY_CreateECPrivateKey()
 12998 ms  0x6c80 cx:0x7f626cba3948
 13002 ms     | 0x6c80 EC_ValidatePublicKey()
 13002 ms     | 0x6c80 ret:0x0
 13002 ms  0x6c80 ret:0x7f626d20a020::7f626d20a020  60 5a c7 6c                                      `Z.l
 13002 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13002 ms  0x6c80 cx:0x7f626cba3948
 13003 ms     | 0x6c80 EC_ValidatePublicKey()
 13004 ms     | 0x6c80 ret:0x0
 13004 ms  0x6c80 ret:0x7f626d20c020::7f626d20c020  30 93 cf 6c                                      0..l
 13006 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13006 ms  0x6c80 cx:0x7f626cba3e28
 13006 ms     | 0x6c80 EC_ValidatePublicKey()
 13006 ms     | 0x6c80 ret:0x0
 13006 ms  0x6c80 ret:0x7f626d20e820::7f626d20e820  70 94 cf 6c                                      p..l
 13006 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13006 ms  0x6c80 cx:0x7f626cba3e28
 13007 ms     | 0x6c80 EC_ValidatePublicKey()
 13008 ms     | 0x6c80 ret:0x0
 13008 ms  0x6c80 ret:0x7f626d210820::7f626d210820  50 96 cf 6c                                      P..l
 13009 ms  0x6c80 SSL_AuthCertificateComplete()
 13009 ms  0x6c80 fd:0x7f626083a520
 13009 ms  0x6c80 err:0x0
 13010 ms  0x6c80 PK11_Encrypt()
 13010 ms  0x6c80 symkey:0x7f6265baf900
 13010 ms  0x6c80 PK11_Encrypt()
 13010 ms  0x6c80 symkey:0x7f6265baf900
 13010 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13010 ms  0x6c80 cx:0x7f626cba4e68
 13011 ms     | 0x6c80 EC_ValidatePublicKey()
 13011 ms     | 0x6c80 ret:0x0
 13011 ms  0x6c80 ret:0x7f626d214820::7f626d214820  90 97 cf 6c                                      ...l
 13011 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13011 ms  0x6c80 cx:0x7f626cba4e68
 13011 ms     | 0x6c80 EC_ValidatePublicKey()
 13013 ms     | 0x6c80 ret:0x0
 13013 ms  0x6c80 ret:0x7f626d216820::7f626d216820  f0 9b cf 6c                                      ...l
 13013 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13013 ms  0x6c80 cx:0x7f626cba4cc8
 13013 ms     | 0x6c80 EC_ValidatePublicKey()
 13013 ms     | 0x6c80 ret:0x0
 13014 ms  0x6c80 ret:0x7f626d219020::7f626d219020  80 9d cf 6c                                      ...l
 13014 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13014 ms  0x6c80 cx:0x7f626cba4cc8
 13014 ms     | 0x6c80 EC_ValidatePublicKey()
 13016 ms     | 0x6c80 ret:0x0
 13016 ms  0x6c80 ret:0x7f626d21b020::7f626d21b020  e0 ac dd 6c                                      ...l
 13016 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13016 ms  0x6c80 cx:0x7f626cba4b28
 13017 ms     | 0x6c80 EC_ValidatePublicKey()
 13017 ms     | 0x6c80 ret:0x0
 13017 ms  0x6c80 ret:0x7f626d21d820::7f626d21d820  b0 e0 29 6d                                      ..)m
 13017 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13017 ms  0x6c80 cx:0x7f626cba4b28
 13018 ms     | 0x6c80 EC_ValidatePublicKey()
 13019 ms     | 0x6c80 ret:0x0
 13019 ms  0x6c80 ret:0x7f626d21f820::7f626d21f820  90 e2 29 6d                                      ..)m
 13019 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13019 ms  0x6c80 cx:0x7f626cba4988
 13020 ms     | 0x6c80 EC_ValidatePublicKey()
 13020 ms     | 0x6c80 ret:0x0
 13020 ms  0x6c80 ret:0x7f6261770820::7f6261770820  d0 e3 29 6d                                      ..)m
 13020 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13020 ms  0x6c80 cx:0x7f626cba4988
 13020 ms     | 0x6c80 EC_ValidatePublicKey()
 13022 ms     | 0x6c80 ret:0x0
 13022 ms  0x6c80 ret:0x7f6261772820::7f6261772820  b0 e5 29 6d                                      ..)m
 13022 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13022 ms  0x6c80 cx:0x7f626cba47e8
 13023 ms     | 0x6c80 EC_ValidatePublicKey()
 13023 ms     | 0x6c80 ret:0x0
 13023 ms  0x6c80 ret:0x7f6261775020::7f6261775020  f0 e6 29 6d                                      ..)m
 13023 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13023 ms  0x6c80 cx:0x7f626cba47e8
 13023 ms     | 0x6c80 EC_ValidatePublicKey()
 13025 ms     | 0x6c80 ret:0x0
 13025 ms  0x6c80 ret:0x7f6261777020::7f6261777020  d0 e8 29 6d                                      ..)m
 13025 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13025 ms  0x6c80 cx:0x7f626cba4648
 13026 ms     | 0x6c80 EC_ValidatePublicKey()
 13026 ms     | 0x6c80 ret:0x0
 13026 ms  0x6c80 ret:0x7f6261779820::7f6261779820  10 ea 29 6d                                      ..)m
 13026 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13026 ms  0x6c80 cx:0x7f626cba4648
 13026 ms     | 0x6c80 EC_ValidatePublicKey()
 13028 ms     | 0x6c80 ret:0x0
 13028 ms  0x6c80 ret:0x7f626177b820::7f626177b820  f0 eb 29 6d                                      ..)m
 13028 ms  0x6c80 SSL_ImportFD()
 13028 ms  0x6c80 ret:0x7f6266111490
 13028 ms  0x6c80 SSL_AuthCertificateHook()
 13028 ms  0x6c80 fd:0x7f6266111490
 13028 ms  0x6c80 ret:0x0
 13028 ms  0x6c80 PR_Connect()
 13028 ms  0x6c80 fd:0x7f6266111490
           /* TID 0x6c88 */
 13035 ms  0x6c88 PR_Close()
 13035 ms  0x6c88 fd:0x7f62613a4f70
           /* TID 0x6c80 */
 13041 ms  0x6c80 PK11_Encrypt()
 13041 ms  0x6c80 symkey:0x7f625fc9a880
           /* TID 0x6c88 */
 13043 ms  0x6c88 PR_Close()
 13043 ms  0x6c88 fd:0x7f626cbb22b0
           /* TID 0x6c80 */
 13044 ms  0x6c80 PK11_Encrypt()
 13044 ms  0x6c80 symkey:0x7f625fc9a880
 13044 ms  0x6c80 PK11_Encrypt()
 13044 ms  0x6c80 symkey:0x7f625fc9a880
           /* TID 0x6c88 */
 13048 ms  0x6c88 PR_Close()
 13048 ms  0x6c88 fd:0x7f6261bd5670
           /* TID 0x6c80 */
 13048 ms  0x6c80 PK11_Encrypt()
 13048 ms  0x6c80 symkey:0x7f625fc9a880
 13049 ms  0x6c80 PK11_Encrypt()
 13049 ms  0x6c80 symkey:0x7f625fc9a880
 13059 ms  0x6c80 PK11_Encrypt()
 13059 ms  0x6c80 symkey:0x7f624ecf3a00
 13072 ms  SECKEY_ECParamsToKeySize()
 13072 ms  0x6c80 ret:0x100
 13072 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13072 ms  0x6c80 cx:0x7f626cba4e68
 13073 ms     | 0x6c80 EC_ValidatePublicKey()
 13074 ms     | 0x6c80 ret:0x0
 13074 ms  0x6c80 ret:0x7f626178a020::7f626178a020  40 c7 2a 6d                                      @.*m
 13074 ms  0x6c80 PK11_PubDeriveWithKDF()
 13074 ms  0x6c80 seckey:0x7f626178a020
 13074 ms     | 0x6c80 EC_ValidatePublicKey()
           /* TID 0x6d19 */
 13075 ms  0x6d19 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13076 ms  0x6d19 ret:0x0
           /* TID 0x6c80 */
 13078 ms     | 0x6c80 ret:0x0
 13080 ms  0x6c80 ret:0x7f625fca8080
 13080 ms  0x6c80 PK11_DeriveWithFlags()
 13080 ms  0x6c80 basekey:0x7f625fca8080
 13080 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13080 ms  0x6c80 ret:0x7f62613c1400
 13080 ms  0x6c80 PK11_Derive()
 13080 ms  0x6c80 basekey:0x7f62613c1400
 13080 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13080 ms  0x6c80 ret:0x7f6265cdf400
 13080 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13080 ms  0x6c80 privk:0x7f626178a020::7f626178a020  40 c7 2a 6d                                      @.*m
 13080 ms  0x6c80 privk:0x7f626178a020::7f626178a020  e5 e5 e5 e5                                      ....
 13080 ms  0x6c80 PK11_Encrypt()
 13080 ms  0x6c80 symkey:0x7f6265cdf700
 13083 ms  0x6c80 SSL_AuthCertificateComplete()
 13083 ms  0x6c80 fd:0x7f62661317c0
 13083 ms  0x6c80 err:0x0
 13083 ms  0x6c80 PK11_Encrypt()
 13083 ms  0x6c80 symkey:0x7f6265cdf700
           /* TID 0x6d17 */
 13090 ms  0x6d17 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13090 ms  0x6d17 ret:0x0
           /* TID 0x6c80 */
 13091 ms  SECKEY_ECParamsToKeySize()
 13091 ms  0x6c80 ret:0x100
 13091 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13091 ms  0x6c80 cx:0x7f626cba4cc8
 13091 ms     | 0x6c80 EC_ValidatePublicKey()
 13094 ms     | 0x6c80 ret:0x0
 13094 ms  0x6c80 ret:0x7f6261788020::7f6261788020  20 d9 c3 5f                                       .._
 13094 ms  0x6c80 PK11_PubDeriveWithKDF()
 13094 ms  0x6c80 seckey:0x7f6261788020
 13094 ms     | 0x6c80 EC_ValidatePublicKey()
 13096 ms     | 0x6c80 ret:0x0
 13097 ms  0x6c80 ret:0x7f625fca8080
 13097 ms  0x6c80 PK11_DeriveWithFlags()
 13097 ms  0x6c80 basekey:0x7f625fca8080
 13097 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13097 ms  0x6c80 ret:0x7f624ecf4500
 13097 ms  0x6c80 PK11_Derive()
 13097 ms  0x6c80 basekey:0x7f624ecf4500
 13097 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13097 ms  0x6c80 ret:0x7f624ecf4580
 13097 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13097 ms  0x6c80 privk:0x7f6261788020::7f6261788020  20 d9 c3 5f                                       .._
 13097 ms  0x6c80 privk:0x7f6261788020::7f6261788020  e5 e5 e5 e5                                      ....
 13097 ms  0x6c80 PK11_Encrypt()
 13097 ms  0x6c80 symkey:0x7f625fc9b080
           /* TID 0x6d16 */
 13098 ms  0x6d16 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13098 ms  0x6d16 ret:0x0
           /* TID 0x6c80 */
 13098 ms  SECKEY_ECParamsToKeySize()
 13098 ms  0x6c80 ret:0x100
 13098 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13098 ms  0x6c80 cx:0x7f626cba4b28
 13099 ms     | 0x6c80 EC_ValidatePublicKey()
 13100 ms     | 0x6c80 ret:0x0
 13100 ms  0x6c80 ret:0x7f6261789020::7f6261789020  d0 dd c3 5f                                      ..._
 13101 ms  0x6c80 PK11_PubDeriveWithKDF()
 13101 ms  0x6c80 seckey:0x7f6261789020
 13101 ms     | 0x6c80 EC_ValidatePublicKey()
 13102 ms     | 0x6c80 ret:0x0
 13103 ms  0x6c80 ret:0x7f625fca8080
 13103 ms  0x6c80 PK11_DeriveWithFlags()
 13103 ms  0x6c80 basekey:0x7f625fca8080
 13103 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13103 ms  0x6c80 ret:0x7f625fca8400
 13103 ms  0x6c80 PK11_Derive()
 13103 ms  0x6c80 basekey:0x7f625fca8400
 13103 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13104 ms  0x6c80 ret:0x7f625fca8480
 13104 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13104 ms  0x6c80 privk:0x7f6261789020::7f6261789020  d0 dd c3 5f                                      ..._
 13104 ms  0x6c80 privk:0x7f6261789020::7f6261789020  e5 e5 e5 e5                                      ....
 13104 ms  0x6c80 PK11_Encrypt()
 13104 ms  0x6c80 symkey:0x7f625fca9880
           /* TID 0x6d19 */
 13106 ms  0x6d19 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13106 ms  0x6d19 ret:0x0
           /* TID 0x6c80 */
 13106 ms  SECKEY_ECParamsToKeySize()
 13106 ms  0x6c80 ret:0x100
 13106 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13106 ms  0x6c80 cx:0x7f626cba4988
 13107 ms     | 0x6c80 EC_ValidatePublicKey()
 13108 ms     | 0x6c80 ret:0x0
 13108 ms  0x6c80 ret:0x7f6261789820::7f6261789820  20 f4 ef 5f                                       .._
 13108 ms  0x6c80 PK11_PubDeriveWithKDF()
 13108 ms  0x6c80 seckey:0x7f6261789820
 13108 ms     | 0x6c80 EC_ValidatePublicKey()
 13109 ms     | 0x6c80 ret:0x0
 13111 ms  0x6c80 ret:0x7f625fca8080
 13111 ms  0x6c80 PK11_DeriveWithFlags()
 13111 ms  0x6c80 basekey:0x7f625fca8080
 13111 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13111 ms  0x6c80 ret:0x7f625fcc1600
 13111 ms  0x6c80 PK11_Derive()
 13111 ms  0x6c80 basekey:0x7f625fcc1600
 13111 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13111 ms  0x6c80 ret:0x7f625fcc1780
 13111 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13111 ms  0x6c80 privk:0x7f6261789820::7f6261789820  20 f4 ef 5f                                       .._
 13111 ms  0x6c80 privk:0x7f6261789820::7f6261789820  e5 e5 e5 e5                                      ....
 13111 ms  0x6c80 PK11_Encrypt()
 13111 ms  0x6c80 symkey:0x7f625fcc1b00
 13112 ms  0x6c80 SSL_AuthCertificateComplete()
 13112 ms  0x6c80 fd:0x7f62661310a0
 13112 ms  0x6c80 err:0x0
 13112 ms  0x6c80 SSL_AuthCertificateComplete()
 13112 ms  0x6c80 fd:0x7f6266111520
 13112 ms  0x6c80 err:0x0
 13112 ms  0x6c80 SSL_AuthCertificateComplete()
 13112 ms  0x6c80 fd:0x7f6265c3a820
 13112 ms  0x6c80 err:0x0
           /* TID 0x6c88 */
 13113 ms  0x6c88 PR_Close()
 13113 ms  0x6c88 fd:0x7f625fcb7700
           /* TID 0x6c80 */
 13114 ms  0x6c80 PK11_Encrypt()
 13114 ms  0x6c80 symkey:0x7f625fc9b080
 13114 ms  0x6c80 PK11_Encrypt()
 13114 ms  0x6c80 symkey:0x7f625fca9880
 13115 ms  0x6c80 PK11_Encrypt()
 13115 ms  0x6c80 symkey:0x7f625fcc1b00
           /* TID 0x6d17 */
 13116 ms  0x6d17 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13116 ms  0x6d17 ret:0x0
           /* TID 0x6c80 */
 13116 ms  SECKEY_ECParamsToKeySize()
 13116 ms  0x6c80 ret:0x100
 13116 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13116 ms  0x6c80 cx:0x7f626cba47e8
 13116 ms     | 0x6c80 EC_ValidatePublicKey()
 13118 ms     | 0x6c80 ret:0x0
 13118 ms  0x6c80 ret:0x7f6261789820::7f6261789820  a0 81 3e 61                                      ..>a
 13118 ms  0x6c80 PK11_PubDeriveWithKDF()
 13118 ms  0x6c80 seckey:0x7f6261789820
 13118 ms     | 0x6c80 EC_ValidatePublicKey()
 13119 ms     | 0x6c80 ret:0x0
 13124 ms  0x6c80 ret:0x7f625fca8080
 13124 ms  0x6c80 PK11_DeriveWithFlags()
 13124 ms  0x6c80 basekey:0x7f625fca8080
 13124 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13124 ms  0x6c80 ret:0x7f625fcc1580
 13124 ms  0x6c80 PK11_Derive()
 13124 ms  0x6c80 basekey:0x7f625fcc1580
 13124 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13124 ms  0x6c80 ret:0x7f625fcc1f00
 13124 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13124 ms  0x6c80 privk:0x7f6261789820::7f6261789820  a0 81 3e 61                                      ..>a
 13124 ms  0x6c80 privk:0x7f6261789820::7f6261789820  e5 e5 e5 e5                                      ....
 13124 ms  0x6c80 PK11_Encrypt()
 13124 ms  0x6c80 symkey:0x7f625fcffd00
           /* TID 0x6d16 */
 13125 ms  0x6d16 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13126 ms  0x6d16 ret:0x0
           /* TID 0x6c80 */
 13126 ms  SECKEY_ECParamsToKeySize()
 13126 ms  0x6c80 ret:0x100
 13126 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13126 ms  0x6c80 cx:0x7f626cba4648
 13127 ms     | 0x6c80 EC_ValidatePublicKey()
 13128 ms     | 0x6c80 ret:0x0
 13128 ms  0x6c80 ret:0x7f626178a020::7f626178a020  d0 d3 e5 62                                      ...b
 13128 ms  0x6c80 PK11_PubDeriveWithKDF()
 13128 ms  0x6c80 seckey:0x7f626178a020
 13128 ms     | 0x6c80 EC_ValidatePublicKey()
 13130 ms     | 0x6c80 ret:0x0
 13131 ms  0x6c80 ret:0x7f625fca8080
 13131 ms  0x6c80 PK11_DeriveWithFlags()
 13131 ms  0x6c80 basekey:0x7f625fca8080
 13131 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13131 ms  0x6c80 ret:0x7f625fea6680
 13131 ms  0x6c80 PK11_Derive()
 13131 ms  0x6c80 basekey:0x7f625fea6680
 13131 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13131 ms  0x6c80 ret:0x7f625fea6780
 13131 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13131 ms  0x6c80 privk:0x7f626178a020::7f626178a020  d0 d3 e5 62                                      ...b
 13131 ms  0x6c80 privk:0x7f626178a020::7f626178a020  e5 e5 e5 e5                                      ....
 13131 ms  0x6c80 PK11_Encrypt()
 13131 ms  0x6c80 symkey:0x7f625fea7300
 13132 ms  0x6c80 SSL_AuthCertificateComplete()
 13132 ms  0x6c80 fd:0x7f6265c3a6a0
 13132 ms  0x6c80 err:0x0
 13132 ms  0x6c80 SSL_AuthCertificateComplete()
 13132 ms  0x6c80 fd:0x7f6266131cd0
 13132 ms  0x6c80 err:0x0
 13132 ms  0x6c80 PK11_Encrypt()
 13132 ms  0x6c80 symkey:0x7f625fcffd00
 13132 ms  0x6c80 PK11_Encrypt()
 13132 ms  0x6c80 symkey:0x7f625fea7300
 13133 ms  0x6c80 SSL_ImportFD()
 13133 ms  0x6c80 ret:0x7f6260894940
 13133 ms  0x6c80 SSL_AuthCertificateHook()
 13133 ms  0x6c80 fd:0x7f6260894940
 13133 ms  0x6c80 ret:0x0
 13133 ms  0x6c80 PR_Connect()
 13133 ms  0x6c80 fd:0x7f6260894940
 13142 ms  SECKEY_ECParamsToKeySize()
 13142 ms  0x6c80 ret:0xff
 13142 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13142 ms  0x6c80 cx:0x7f626cba20e8
 13151 ms     | 0x6c80 EC_ValidatePublicKey()
 13151 ms     | 0x6c80 ret:0x0
 13151 ms  0x6c80 ret:0x7f626178b020::7f626178b020  d0 d3 e5 62                                      ...b
 13151 ms  0x6c80 PK11_PubDeriveWithKDF()
 13151 ms  0x6c80 seckey:0x7f626178b020
 13151 ms     | 0x6c80 EC_ValidatePublicKey()
 13151 ms     | 0x6c80 ret:0x0
 13152 ms  0x6c80 ret:0x7f625fca8080
 13152 ms  0x6c80 PK11_DeriveWithFlags()
 13152 ms  0x6c80 basekey:0x7f625fca8080
 13152 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13152 ms  0x6c80 ret:0x7f625fcc1e80
 13152 ms  0x6c80 PK11_Derive()
 13152 ms  0x6c80 basekey:0x7f625fcc1e80
 13152 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13152 ms  0x6c80 ret:0x7f625fea7a00
 13152 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13152 ms  0x6c80 privk:0x7f626178b020::7f626178b020  d0 d3 e5 62                                      ...b
 13152 ms  0x6c80 privk:0x7f626178b020::7f626178b020  e5 e5 e5 e5                                      ....
 13152 ms  0x6c80 PK11_Encrypt()
 13152 ms  0x6c80 symkey:0x7f625fea7b80
 13152 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13152 ms  0x6c80 privk:0x7f626d216820::7f626d216820  f0 9b cf 6c                                      ...l
 13153 ms  0x6c80 privk:0x7f626d216820::7f626d216820  e5 e5 e5 e5                                      ....
 13153 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13153 ms  0x6c80 privk:0x7f626d214820::7f626d214820  90 97 cf 6c                                      ...l
 13153 ms  0x6c80 privk:0x7f626d214820::7f626d214820  e5 e5 e5 e5                                      ....
 13153 ms  0x6c80 SSL_AuthCertificateComplete()
 13153 ms  0x6c80 fd:0x7f6269eaba60
 13153 ms  0x6c80 err:0x0
           /* TID 0x6c88 */
 13160 ms  0x6c88 PR_Close()
 13160 ms  0x6c88 fd:0x7f6260894820
           /* TID 0x6c80 */
 13161 ms  0x6c80 PK11_Encrypt()
 13161 ms  0x6c80 symkey:0x7f625fea7b80
 13163 ms  0x6c80 PR_Connect()
 13163 ms  0x6c80 fd:0x7f62661774f0
 13168 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13168 ms  0x6c80 privk:0x7f626d21b020::7f626d21b020  e0 ac dd 6c                                      ...l
 13168 ms  0x6c80 privk:0x7f626d21b020::7f626d21b020  e5 e5 e5 e5                                      ....
 13168 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13168 ms  0x6c80 privk:0x7f626d219020::7f626d219020  80 9d cf 6c                                      ...l
 13168 ms  0x6c80 privk:0x7f626d219020::7f626d219020  e5 e5 e5 e5                                      ....
 13169 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13169 ms  0x6c80 privk:0x7f626d21f820::7f626d21f820  90 e2 29 6d                                      ..)m
 13169 ms  0x6c80 privk:0x7f626d21f820::7f626d21f820  e5 e5 e5 e5                                      ....
 13169 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13169 ms  0x6c80 privk:0x7f626d21d820::7f626d21d820  b0 e0 29 6d                                      ..)m
 13169 ms  0x6c80 privk:0x7f626d21d820::7f626d21d820  e5 e5 e5 e5                                      ....
 13178 ms  SECKEY_ECParamsToKeySize()
 13178 ms  0x6c80 ret:0xff
 13179 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13179 ms  0x6c80 cx:0x7f626cba2908
 13179 ms     | 0x6c80 EC_ValidatePublicKey()
 13179 ms     | 0x6c80 ret:0x0
 13180 ms  0x6c80 ret:0x7f6269ae4820::7f6269ae4820  c0 e4 ab 69                                      ...i
 13180 ms  0x6c80 PK11_PubDeriveWithKDF()
 13180 ms  0x6c80 seckey:0x7f6269ae4820
 13180 ms     | 0x6c80 EC_ValidatePublicKey()
 13180 ms     | 0x6c80 ret:0x0
 13181 ms  0x6c80 ret:0x7f625fca8080
 13181 ms  0x6c80 PK11_DeriveWithFlags()
 13181 ms  0x6c80 basekey:0x7f625fca8080
 13181 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13181 ms  0x6c80 ret:0x7f6260896700
 13181 ms  0x6c80 PK11_Derive()
 13181 ms  0x6c80 basekey:0x7f6260896700
 13181 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13181 ms  0x6c80 ret:0x7f6260896980
 13181 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13181 ms  0x6c80 privk:0x7f6269ae4820::7f6269ae4820  c0 e4 ab 69                                      ...i
 13181 ms  0x6c80 privk:0x7f6269ae4820::7f6269ae4820  e5 e5 e5 e5                                      ....
 13181 ms  0x6c80 PK11_Encrypt()
 13181 ms  0x6c80 symkey:0x7f626089d800
 13182 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13182 ms  0x6c80 privk:0x7f6269aef820::7f6269aef820  b0 e0 3d 66                                      ..=f
 13182 ms  0x6c80 privk:0x7f6269aef820::7f6269aef820  e5 e5 e5 e5                                      ....
 13182 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13182 ms  0x6c80 privk:0x7f6269aec020::7f6269aec020  50 7b 3a 66                                      P{:f
 13182 ms  0x6c80 privk:0x7f6269aec020::7f6269aec020  e5 e5 e5 e5                                      ....
 13182 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13182 ms  0x6c80 privk:0x7f6261772820::7f6261772820  b0 e5 29 6d                                      ..)m
 13183 ms  0x6c80 privk:0x7f6261772820::7f6261772820  e5 e5 e5 e5                                      ....
 13183 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13183 ms  0x6c80 privk:0x7f6261770820::7f6261770820  d0 e3 29 6d                                      ..)m
 13183 ms  0x6c80 privk:0x7f6261770820::7f6261770820  e5 e5 e5 e5                                      ....
 13184 ms  0x6c80 PR_Close()
 13184 ms  0x6c80 fd:0x7f6265bacbb0
 13184 ms     | 0x6c80 PK11_Encrypt()
 13184 ms     | 0x6c80 symkey:0x7f625fca8c80
           /* TID 0x6c88 */
 13186 ms  0x6c88 PR_Close()
 13186 ms  0x6c88 fd:0x7f62617c4550
           /* TID 0x6c80 */
 13187 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13187 ms  0x6c80 privk:0x7f6261777020::7f6261777020  d0 e8 29 6d                                      ..)m
 13187 ms  0x6c80 privk:0x7f6261777020::7f6261777020  e5 e5 e5 e5                                      ....
 13187 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13187 ms  0x6c80 privk:0x7f6261775020::7f6261775020  f0 e6 29 6d                                      ..)m
 13187 ms  0x6c80 privk:0x7f6261775020::7f6261775020  e5 e5 e5 e5                                      ....
 13188 ms  0x6c80 SSL_ImportFD()
 13188 ms  0x6c80 ret:0x7f6265cc7070
 13188 ms  0x6c80 SSL_AuthCertificateHook()
 13188 ms  0x6c80 fd:0x7f6265cc7070
 13188 ms  0x6c80 ret:0x0
 13189 ms  0x6c80 PK11_Encrypt()
 13189 ms  0x6c80 symkey:0x7f625fcc0a80
 13191 ms  0x6c80 PR_Connect()
 13191 ms  0x6c80 fd:0x7f6265cc7070
 13191 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13191 ms  0x6c80 privk:0x7f6269f79820::7f6269f79820  20 34 c5 68                                       4.h
 13191 ms  0x6c80 privk:0x7f6269f79820::7f6269f79820  e5 e5 e5 e5                                      ....
 13191 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13191 ms  0x6c80 privk:0x7f6269ed6020::7f6269ed6020  e0 e7 4b 66                                      ..Kf
 13191 ms  0x6c80 privk:0x7f6269ed6020::7f6269ed6020  e5 e5 e5 e5                                      ....
 13191 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13191 ms  0x6c80 cx:0x7f626cba4168
 13192 ms     | 0x6c80 EC_ValidatePublicKey()
 13192 ms     | 0x6c80 ret:0x0
 13192 ms  0x6c80 ret:0x7f6261772020::7f6261772020  60 75 3a 66                                      `u:f
 13192 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13192 ms  0x6c80 cx:0x7f626cba4168
 13193 ms     | 0x6c80 EC_ValidatePublicKey()
 13195 ms     | 0x6c80 ret:0x0
 13195 ms  0x6c80 ret:0x7f6261774820::7f6261774820  a0 21 3d 66                                      .!=f
 13195 ms  0x6c80 PR_Close()
 13195 ms  0x6c80 fd:0x7f62699b7d60
 13195 ms     | 0x6c80 PK11_Encrypt()
 13195 ms     | 0x6c80 symkey:0x7f625fc9b680
 13195 ms  0x6c80 SSL_ImportFD()
 13195 ms  0x6c80 ret:0x7f62617c40a0
 13195 ms  0x6c80 SSL_AuthCertificateHook()
 13195 ms  0x6c80 fd:0x7f62617c40a0
 13196 ms  0x6c80 ret:0x0
 13196 ms  0x6c80 PR_Connect()
 13196 ms  0x6c80 fd:0x7f62617c40a0
 13196 ms  0x6c80 SSL_ImportFD()
 13196 ms  0x6c80 ret:0x7f62617c4bb0
 13196 ms  0x6c80 SSL_AuthCertificateHook()
 13196 ms  0x6c80 fd:0x7f62617c4bb0
 13196 ms  0x6c80 ret:0x0
 13196 ms  0x6c80 PR_Connect()
 13196 ms  0x6c80 fd:0x7f62617c4bb0
 13196 ms  0x6c80 SSL_ImportFD()
 13196 ms  0x6c80 ret:0x7f62613a42e0
 13196 ms  0x6c80 SSL_AuthCertificateHook()
 13196 ms  0x6c80 fd:0x7f62613a42e0
 13196 ms  0x6c80 ret:0x0
 13196 ms  0x6c80 PR_Connect()
 13196 ms  0x6c80 fd:0x7f62613a42e0
           /* TID 0x6c88 */
 13198 ms  0x6c88 PR_Close()
 13198 ms  0x6c88 fd:0x7f62613a4d60
           /* TID 0x6c80 */
 13199 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13199 ms  0x6c80 privk:0x7f626177b820::7f626177b820  f0 eb 29 6d                                      ..)m
 13199 ms  0x6c80 privk:0x7f626177b820::7f626177b820  e5 e5 e5 e5                                      ....
 13199 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13199 ms  0x6c80 privk:0x7f6261779820::7f6261779820  10 ea 29 6d                                      ..)m
 13199 ms  0x6c80 privk:0x7f6261779820::7f6261779820  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 13201 ms  0x6c88 PR_Close()
 13201 ms  0x6c88 fd:0x7f62613a4d60
           /* TID 0x6c80 */
 13202 ms  0x6c80 PR_Connect()
 13202 ms  0x6c80 fd:0x7f6266131b50
           /* TID 0x6c88 */
 13209 ms  0x6c88 PR_Close()
 13209 ms  0x6c88 fd:0x7f62613a4d60
           /* TID 0x6c80 */
 13212 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13212 ms  0x6c80 privk:0x7f6269ed1820::7f6269ed1820  60 5f 3f 66                                      `_?f
 13212 ms  0x6c80 privk:0x7f6269ed1820::7f6269ed1820  e5 e5 e5 e5                                      ....
 13212 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13212 ms  0x6c80 privk:0x7f6269ece020::7f6269ece020  20 59 3f 66                                       Y?f
 13213 ms  0x6c80 privk:0x7f6269ece020::7f6269ece020  e5 e5 e5 e5                                      ....
 13215 ms  SECKEY_ECParamsToKeySize()
 13215 ms  0x6c80 ret:0xff
 13215 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13215 ms  0x6c80 cx:0x7f626cba2c48
 13215 ms     | 0x6c80 EC_ValidatePublicKey()
 13216 ms     | 0x6c80 ret:0x0
 13216 ms  0x6c80 ret:0x7f6261779820::7f6261779820  20 59 3f 66                                       Y?f
 13216 ms  0x6c80 PK11_PubDeriveWithKDF()
 13216 ms  0x6c80 seckey:0x7f6261779820
 13216 ms     | 0x6c80 EC_ValidatePublicKey()
 13216 ms     | 0x6c80 ret:0x0
 13216 ms  0x6c80 ret:0x7f624ecf3b00
 13216 ms  0x6c80 PK11_DeriveWithFlags()
 13216 ms  0x6c80 basekey:0x7f624ecf3b00
 13216 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13216 ms  0x6c80 ret:0x7f625fc9b580
 13216 ms  0x6c80 PK11_Derive()
 13216 ms  0x6c80 basekey:0x7f625fc9b580
 13216 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13217 ms  0x6c80 ret:0x7f625fc9b600
 13217 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13217 ms  0x6c80 privk:0x7f6261779820::7f6261779820  20 59 3f 66                                       Y?f
 13217 ms  0x6c80 privk:0x7f6261779820::7f6261779820  e5 e5 e5 e5                                      ....
 13217 ms  0x6c80 PK11_Encrypt()
 13217 ms  0x6c80 symkey:0x7f625fc9b700
 13217 ms  0x6c80 PR_Close()
 13217 ms  0x6c80 fd:0x7f6269a27490
 13217 ms     | 0x6c80 PK11_Encrypt()
 13217 ms     | 0x6c80 symkey:0x7f624ecf3f80
 13217 ms  0x6c80 SSL_AuthCertificateComplete()
 13217 ms  0x6c80 fd:0x7f6269eabbe0
 13217 ms  0x6c80 err:0x0
 13217 ms  0x6c80 PK11_Encrypt()
 13217 ms  0x6c80 symkey:0x7f625fc9b700
 13220 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13220 ms  0x6c80 privk:0x7f6269f7e820::7f6269f7e820  a0 e6 c5 68                                      ...h
 13220 ms  0x6c80 privk:0x7f6269f7e820::7f6269f7e820  e5 e5 e5 e5                                      ....
 13220 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13220 ms  0x6c80 privk:0x7f6269f7c820::7f6269f7c820  c0 1e 1b 66                                      ...f
 13220 ms  0x6c80 privk:0x7f6269f7c820::7f6269f7c820  e5 e5 e5 e5                                      ....
 13220 ms  0x6c80 PR_Close()
 13220 ms  0x6c80 fd:0x7f62613a4e20
 13220 ms     | 0x6c80 PK11_Encrypt()
 13220 ms     | 0x6c80 symkey:0x7f6262ecbf00
 13236 ms  SECKEY_ECParamsToKeySize()
 13236 ms  0x6c80 ret:0xff
 13236 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13236 ms  0x6c80 cx:0x7f626cba37a8
 13236 ms     | 0x6c80 EC_ValidatePublicKey()
 13236 ms     | 0x6c80 ret:0x0
 13236 ms  0x6c80 ret:0x7f626177b020::7f626177b020  20 34 ff 65                                       4.e
 13237 ms  0x6c80 PK11_PubDeriveWithKDF()
 13237 ms  0x6c80 seckey:0x7f626177b020
 13237 ms     | 0x6c80 EC_ValidatePublicKey()
 13237 ms     | 0x6c80 ret:0x0
 13237 ms  0x6c80 ret:0x7f6262ecbd80
 13237 ms  0x6c80 PK11_DeriveWithFlags()
 13237 ms  0x6c80 basekey:0x7f6262ecbd80
 13237 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13239 ms  0x6c80 ret:0x7f62617b2800
 13239 ms  0x6c80 PK11_Derive()
 13239 ms  0x6c80 basekey:0x7f62617b2800
 13239 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13239 ms  0x6c80 ret:0x7f62617c1f80
 13239 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13239 ms  0x6c80 privk:0x7f626177b020::7f626177b020  20 34 ff 65                                       4.e
 13239 ms  0x6c80 privk:0x7f626177b020::7f626177b020  e5 e5 e5 e5                                      ....
 13239 ms  0x6c80 PK11_Encrypt()
 13239 ms  0x6c80 symkey:0x7f6262ecbe00
 13239 ms  0x6c80 SSL_AuthCertificateComplete()
 13239 ms  0x6c80 fd:0x7f626a7ca670
 13239 ms  0x6c80 err:0x0
 13239 ms  0x6c80 PK11_Encrypt()
 13239 ms  0x6c80 symkey:0x7f6262ecbe00
 13240 ms  SECKEY_ECParamsToKeySize()
 13240 ms  0x6c80 ret:0xff
 13240 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13240 ms  0x6c80 cx:0x7f626cba3608
 13241 ms     | 0x6c80 EC_ValidatePublicKey()
 13241 ms     | 0x6c80 ret:0x0
 13241 ms  0x6c80 ret:0x7f6261781820::7f6261781820  90 17 1b 66                                      ...f
 13241 ms  0x6c80 PK11_PubDeriveWithKDF()
 13241 ms  0x6c80 seckey:0x7f6261781820
 13241 ms     | 0x6c80 EC_ValidatePublicKey()
 13241 ms     | 0x6c80 ret:0x0
 13241 ms  0x6c80 ret:0x7f6262ecbd80
 13241 ms  0x6c80 PK11_DeriveWithFlags()
 13241 ms  0x6c80 basekey:0x7f6262ecbd80
 13241 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13241 ms  0x6c80 ret:0x7f624ecf3980
 13241 ms  0x6c80 PK11_Derive()
 13241 ms  0x6c80 basekey:0x7f624ecf3980
 13241 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13241 ms  0x6c80 ret:0x7f624ecf3b00
 13241 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13241 ms  0x6c80 privk:0x7f6261781820::7f6261781820  90 17 1b 66                                      ...f
 13241 ms  0x6c80 privk:0x7f6261781820::7f6261781820  e5 e5 e5 e5                                      ....
 13242 ms  0x6c80 PK11_Encrypt()
 13242 ms  0x6c80 symkey:0x7f624ecf4000
 13242 ms  0x6c80 SSL_AuthCertificateComplete()
 13242 ms  0x6c80 fd:0x7f626a798220
 13242 ms  0x6c80 err:0x0
 13242 ms  0x6c80 PK11_Encrypt()
 13242 ms  0x6c80 symkey:0x7f624ecf4000
           /* TID 0x6c88 */
 13244 ms  0x6c88 PR_Close()
 13244 ms  0x6c88 fd:0x7f6261bd5a90
           /* TID 0x6cdb */
 13245 ms  0x6cdb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13245 ms  0x6cdb ret:0x0
           /* TID 0x6c80 */
 13245 ms  0x6c80 SSL_AuthCertificateComplete()
 13245 ms  0x6c80 fd:0x7f62699b7460
 13245 ms  0x6c80 err:0x0
 13245 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 13245 ms     | 0x6c80 privk:0x7f62661dc020::7f62661dc020  10 af 1b 66                                      ...f
 13245 ms     | 0x6c80 privk:0x7f62661dc020::7f62661dc020  e5 e5 e5 e5                                      ....
 13245 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 13245 ms     | 0x6c80 privk:0x7f626084c820::7f626084c820  40 ac 1b 66                                      @..f
 13245 ms     | 0x6c80 privk:0x7f626084c820::7f626084c820  e5 e5 e5 e5                                      ....
 13246 ms  0x6c80 PK11_Encrypt()
 13246 ms  0x6c80 symkey:0x7f625fcc0c80
 13246 ms  0x6c80 PK11_Encrypt()
 13246 ms  0x6c80 symkey:0x7f625fcc0c80
 13246 ms  0x6c80 PK11_Encrypt()
 13246 ms  0x6c80 symkey:0x7f625fcc0c80
 13251 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13251 ms  0x6c80 privk:0x7f6269f83020::7f6269f83020  10 8f c8 68                                      ...h
 13251 ms  0x6c80 privk:0x7f6269f83020::7f6269f83020  e5 e5 e5 e5                                      ....
 13251 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13251 ms  0x6c80 privk:0x7f6269f81020::7f6269f81020  30 28 c8 68                                      0(.h
 13251 ms  0x6c80 privk:0x7f6269f81020::7f6269f81020  e5 e5 e5 e5                                      ....
 13251 ms  0x6c80 PR_Close()
 13251 ms  0x6c80 fd:0x7f62699b7b50
 13252 ms     | 0x6c80 PK11_Encrypt()
 13252 ms     | 0x6c80 symkey:0x7f6265877200
 13255 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13255 ms  0x6c80 privk:0x7f6269f87820::7f6269f87820  20 de cf 68                                       ..h
 13255 ms  0x6c80 privk:0x7f6269f87820::7f6269f87820  e5 e5 e5 e5                                      ....
 13255 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13255 ms  0x6c80 privk:0x7f6269f85820::7f6269f85820  90 b2 c8 68                                      ...h
 13255 ms  0x6c80 privk:0x7f6269f85820::7f6269f85820  e5 e5 e5 e5                                      ....
 13255 ms  0x6c80 PR_Close()
 13255 ms  0x6c80 fd:0x7f62611e7190
 13255 ms     | 0x6c80 PK11_Encrypt()
 13255 ms     | 0x6c80 symkey:0x7f6265878400
 13256 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13256 ms  0x6c80 cx:0x7f626d2b5c48
 13256 ms     | 0x6c80 EC_ValidatePublicKey()
 13256 ms     | 0x6c80 ret:0x0
 13256 ms  0x6c80 ret:0x7f6261783820::7f6261783820  90 17 1b 66                                      ...f
 13256 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13256 ms  0x6c80 cx:0x7f626d2b5c48
 13257 ms     | 0x6c80 EC_ValidatePublicKey()
 13259 ms     | 0x6c80 ret:0x0
 13259 ms  0x6c80 ret:0x7f62661cb820::7f62661cb820  a0 ab 1b 66                                      ...f
 13259 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13259 ms  0x6c80 cx:0x7f626d2b5de8
 13259 ms     | 0x6c80 EC_ValidatePublicKey()
 13259 ms     | 0x6c80 ret:0x0
 13259 ms  0x6c80 ret:0x7f6266302820::7f6266302820  30 ad 1b 66                                      0..f
 13260 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13260 ms  0x6c80 cx:0x7f626d2b5de8
 13264 ms     | 0x6c80 EC_ValidatePublicKey()
 13265 ms     | 0x6c80 ret:0x0
 13265 ms  0x6c80 ret:0x7f6269ae4020::7f6269ae4020  80 58 3f 66                                      .X?f
 13266 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13266 ms  0x6c80 privk:0x7f626a761820::7f626a761820  a0 bb a5 69                                      ...i
 13266 ms  0x6c80 privk:0x7f626a761820::7f626a761820  e5 e5 e5 e5                                      ....
 13266 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13266 ms  0x6c80 privk:0x7f626a75f820::7f626a75f820  e0 b2 a5 69                                      ...i
 13266 ms  0x6c80 privk:0x7f626a75f820::7f626a75f820  e5 e5 e5 e5                                      ....
 13266 ms  0x6c80 PK11_Encrypt()
 13266 ms  0x6c80 symkey:0x7f6265baf900
 13267 ms  0x6c80 PK11_Encrypt()
 13267 ms  0x6c80 symkey:0x7f6265baf900
 13267 ms  0x6c80 PK11_Encrypt()
 13267 ms  0x6c80 symkey:0x7f6265baf900
 13268 ms  SECKEY_ECParamsToKeySize()
 13268 ms  0x6c80 ret:0xff
 13268 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13268 ms  0x6c80 cx:0x7f626cba32c8
 13269 ms     | 0x6c80 EC_ValidatePublicKey()
 13269 ms     | 0x6c80 ret:0x0
 13269 ms  0x6c80 ret:0x7f6269af0020::7f6269af0020  60 5f 3f 66                                      `_?f
 13269 ms  0x6c80 PK11_PubDeriveWithKDF()
 13269 ms  0x6c80 seckey:0x7f6269af0020
 13269 ms     | 0x6c80 EC_ValidatePublicKey()
 13269 ms     | 0x6c80 ret:0x0
 13269 ms  0x6c80 ret:0x7f6265877880
 13269 ms  0x6c80 PK11_DeriveWithFlags()
 13269 ms  0x6c80 basekey:0x7f6265877880
 13269 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13269 ms  0x6c80 ret:0x7f6265877780
 13269 ms  0x6c80 PK11_Derive()
 13269 ms  0x6c80 basekey:0x7f6265877780
 13269 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13269 ms  0x6c80 ret:0x7f62648f6680
 13269 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13269 ms  0x6c80 privk:0x7f6269af0020::7f6269af0020  60 5f 3f 66                                      `_?f
 13270 ms  0x6c80 privk:0x7f6269af0020::7f6269af0020  e5 e5 e5 e5                                      ....
 13270 ms  0x6c80 PK11_Encrypt()
 13270 ms  0x6c80 symkey:0x7f6265877f00
 13272 ms  SECKEY_ECParamsToKeySize()
 13272 ms  0x6c80 ret:0xff
 13272 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13272 ms  0x6c80 cx:0x7f626cba3948
 13272 ms     | 0x6c80 EC_ValidatePublicKey()
 13272 ms     | 0x6c80 ret:0x0
 13272 ms  0x6c80 ret:0x7f6269ecc820::7f6269ecc820  90 82 41 66                                      ..Af
 13272 ms  0x6c80 PK11_PubDeriveWithKDF()
 13272 ms  0x6c80 seckey:0x7f6269ecc820
 13272 ms     | 0x6c80 EC_ValidatePublicKey()
 13272 ms     | 0x6c80 ret:0x0
 13273 ms  0x6c80 ret:0x7f6265877880
 13273 ms  0x6c80 PK11_DeriveWithFlags()
 13273 ms  0x6c80 basekey:0x7f6265877880
 13273 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13273 ms  0x6c80 ret:0x7f62648f6600
 13273 ms  0x6c80 PK11_Derive()
 13273 ms  0x6c80 basekey:0x7f62648f6600
 13273 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13273 ms  0x6c80 ret:0x7f6262ecbd80
 13273 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13273 ms  0x6c80 privk:0x7f6269ecc820::7f6269ecc820  90 82 41 66                                      ..Af
 13273 ms  0x6c80 privk:0x7f6269ecc820::7f6269ecc820  e5 e5 e5 e5                                      ....
 13273 ms  0x6c80 PK11_Encrypt()
 13273 ms  0x6c80 symkey:0x7f62648f6a00
 13273 ms  0x6c80 SSL_AuthCertificateComplete()
 13273 ms  0x6c80 fd:0x7f626a784760
 13273 ms  0x6c80 err:0x0
 13273 ms  0x6c80 SSL_AuthCertificateComplete()
 13273 ms  0x6c80 fd:0x7f626a638b50
 13273 ms  0x6c80 err:0x0
 13273 ms  0x6c80 PK11_Encrypt()
 13273 ms  0x6c80 symkey:0x7f6265877f00
 13274 ms  0x6c80 PK11_Encrypt()
 13274 ms  0x6c80 symkey:0x7f62648f6a00
 13274 ms  SECKEY_ECParamsToKeySize()
 13274 ms  0x6c80 ret:0xff
 13274 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13274 ms  0x6c80 cx:0x7f626cba3e28
 13275 ms     | 0x6c80 EC_ValidatePublicKey()
 13275 ms     | 0x6c80 ret:0x0
 13275 ms  0x6c80 ret:0x7f6269ed1820::7f6269ed1820  e0 e7 4b 66                                      ..Kf
 13275 ms  0x6c80 PK11_PubDeriveWithKDF()
 13275 ms  0x6c80 seckey:0x7f6269ed1820
 13275 ms     | 0x6c80 EC_ValidatePublicKey()
 13275 ms     | 0x6c80 ret:0x0
 13275 ms  0x6c80 ret:0x7f6265877880
 13276 ms  0x6c80 PK11_DeriveWithFlags()
 13276 ms  0x6c80 basekey:0x7f6265877880
 13276 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13276 ms  0x6c80 ret:0x7f624ecf4600
 13276 ms  0x6c80 PK11_Derive()
 13276 ms  0x6c80 basekey:0x7f624ecf4600
 13276 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13276 ms  0x6c80 ret:0x7f625fca8080
 13276 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13276 ms  0x6c80 privk:0x7f6269ed1820::7f6269ed1820  e0 e7 4b 66                                      ..Kf
 13276 ms  0x6c80 privk:0x7f6269ed1820::7f6269ed1820  e5 e5 e5 e5                                      ....
 13276 ms  0x6c80 PK11_Encrypt()
 13276 ms  0x6c80 symkey:0x7f625fca8d00
 13277 ms  0x6c80 PK11_Encrypt()
 13277 ms  0x6c80 symkey:0x7f6265baf900
 13277 ms  0x6c80 SSL_AuthCertificateComplete()
 13277 ms  0x6c80 fd:0x7f626a638370
 13277 ms  0x6c80 err:0x0
 13277 ms  0x6c80 PK11_Encrypt()
 13277 ms  0x6c80 symkey:0x7f625fca8d00
 13277 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13277 ms  0x6c80 cx:0x7f626d2b4248
 13278 ms     | 0x6c80 EC_ValidatePublicKey()
 13278 ms     | 0x6c80 ret:0x0
 13278 ms  0x6c80 ret:0x7f6269ed4820::7f6269ed4820  e0 87 41 66                                      ..Af
 13278 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13278 ms  0x6c80 cx:0x7f626d2b4248
 13279 ms     | 0x6c80 EC_ValidatePublicKey()
 13280 ms     | 0x6c80 ret:0x0
 13280 ms  0x6c80 ret:0x7f6269ed9820::7f6269ed9820  d0 38 c5 68                                      .8.h
 13281 ms  0x6c80 SSL_ImportFD()
 13281 ms  0x6c80 ret:0x7f6268dfa310
 13281 ms  0x6c80 SSL_AuthCertificateHook()
 13281 ms  0x6c80 fd:0x7f6268dfa310
 13281 ms  0x6c80 ret:0x0
 13281 ms  0x6c80 PR_Connect()
 13281 ms  0x6c80 fd:0x7f6268dfa310
           /* TID 0x6c88 */
 13286 ms  0x6c88 PR_Close()
 13286 ms  0x6c88 fd:0x7f625fc4fd90
 13292 ms  0x6c88 PR_Close()
 13292 ms  0x6c88 fd:0x7f625fc4fd90
 13293 ms  0x6c88 PR_Close()
 13293 ms  0x6c88 fd:0x7f625fc4fd90
 13305 ms  0x6c88 PR_Close()
 13305 ms  0x6c88 fd:0x7f62613a4d60
           /* TID 0x6c80 */
 13319 ms  SECKEY_ECParamsToKeySize()
 13319 ms  0x6c80 ret:0x100
 13319 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13319 ms  0x6c80 cx:0x7f626d2b5c48
 13319 ms     | 0x6c80 EC_ValidatePublicKey()
 13321 ms     | 0x6c80 ret:0x0
           /* TID 0x6d19 */
 13322 ms  0x6d19 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13322 ms  0x6d19 ret:0x0
           /* TID 0x6c80 */
 13322 ms  0x6c80 ret:0x7f6269f7a020::7f6269f7a020  70 e4 c5 68                                      p..h
 13322 ms  0x6c80 PK11_PubDeriveWithKDF()
 13322 ms  0x6c80 seckey:0x7f6269f7a020
 13322 ms     | 0x6c80 EC_ValidatePublicKey()
 13323 ms     | 0x6c80 ret:0x0
 13325 ms  0x6c80 ret:0x7f6265877880
 13325 ms  0x6c80 PK11_DeriveWithFlags()
 13325 ms  0x6c80 basekey:0x7f6265877880
 13328 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13328 ms  0x6c80 ret:0x7f6260ddca80
 13328 ms  0x6c80 PK11_Derive()
 13328 ms  0x6c80 basekey:0x7f6260ddca80
 13328 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13328 ms  0x6c80 ret:0x7f6260ddcf80
 13328 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13328 ms  0x6c80 privk:0x7f6269f7a020::7f6269f7a020  70 e4 c5 68                                      p..h
 13328 ms  0x6c80 privk:0x7f6269f7a020::7f6269f7a020  e5 e5 e5 e5                                      ....
 13328 ms  0x6c80 PK11_Encrypt()
 13328 ms  0x6c80 symkey:0x7f62611c3880
 13330 ms  0x6c80 SSL_AuthCertificateComplete()
 13330 ms  0x6c80 fd:0x7f62617c4bb0
 13330 ms  0x6c80 err:0x0
 13332 ms  0x6c80 PK11_Encrypt()
 13332 ms  0x6c80 symkey:0x7f62611c3880
           /* TID 0x6d16 */
 13333 ms  0x6d16 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13333 ms  0x6d16 ret:0x0
           /* TID 0x6c80 */
 13333 ms  SECKEY_ECParamsToKeySize()
 13333 ms  0x6c80 ret:0x100
 13333 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13333 ms  0x6c80 cx:0x7f626d2b5de8
 13333 ms     | 0x6c80 EC_ValidatePublicKey()
 13335 ms     | 0x6c80 ret:0x0
 13335 ms  0x6c80 ret:0x7f6269f7a820::7f6269f7a820  10 8a 3e 61                                      ..>a
 13335 ms  0x6c80 PK11_PubDeriveWithKDF()
 13335 ms  0x6c80 seckey:0x7f6269f7a820
 13335 ms     | 0x6c80 EC_ValidatePublicKey()
 13337 ms     | 0x6c80 ret:0x0
 13338 ms  0x6c80 ret:0x7f6265877880
 13338 ms  0x6c80 PK11_DeriveWithFlags()
 13338 ms  0x6c80 basekey:0x7f6265877880
 13338 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13338 ms  0x6c80 ret:0x7f624ed31a00
 13338 ms  0x6c80 PK11_Derive()
 13338 ms  0x6c80 basekey:0x7f624ed31a00
 13338 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13338 ms  0x6c80 ret:0x7f6260882e80
 13338 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13338 ms  0x6c80 privk:0x7f6269f7a820::7f6269f7a820  10 8a 3e 61                                      ..>a
 13338 ms  0x6c80 privk:0x7f6269f7a820::7f6269f7a820  e5 e5 e5 e5                                      ....
 13338 ms  0x6c80 PK11_Encrypt()
 13338 ms  0x6c80 symkey:0x7f62613c0a80
 13340 ms  0x6c80 SSL_AuthCertificateComplete()
 13340 ms  0x6c80 fd:0x7f62613a42e0
 13340 ms  0x6c80 err:0x0
 13340 ms  0x6c80 PK11_Encrypt()
 13340 ms  0x6c80 symkey:0x7f62613c0a80
 13341 ms  0x6c80 PR_Connect()
 13341 ms  0x6c80 fd:0x7f6261bd53d0
 13382 ms  0x6c80 SSL_ImportFD()
 13382 ms  0x6c80 ret:0x7f6265fed310
 13382 ms  0x6c80 SSL_AuthCertificateHook()
 13382 ms  0x6c80 fd:0x7f6265fed310
 13382 ms  0x6c80 ret:0x0
 13382 ms  0x6c80 PR_Connect()
 13382 ms  0x6c80 fd:0x7f6265fed310
 13382 ms  0x6c80 SSL_ImportFD()
 13382 ms  0x6c80 ret:0x7f6260a4af70
 13382 ms  0x6c80 SSL_AuthCertificateHook()
 13382 ms  0x6c80 fd:0x7f6260a4af70
 13382 ms  0x6c80 ret:0x0
 13383 ms  0x6c80 PR_Connect()
 13383 ms  0x6c80 fd:0x7f6260a4af70
 13383 ms  0x6c80 SSL_ImportFD()
 13383 ms  0x6c80 ret:0x7f62617c4af0
 13383 ms  0x6c80 SSL_AuthCertificateHook()
 13383 ms  0x6c80 fd:0x7f62617c4af0
 13383 ms  0x6c80 ret:0x0
 13383 ms  0x6c80 PR_Connect()
 13383 ms  0x6c80 fd:0x7f62617c4af0
 13383 ms  0x6c80 SSL_ImportFD()
 13383 ms  0x6c80 ret:0x7f6269a27a30
 13383 ms  0x6c80 SSL_AuthCertificateHook()
 13383 ms  0x6c80 fd:0x7f6269a27a30
 13383 ms  0x6c80 ret:0x0
 13383 ms  0x6c80 PR_Connect()
 13383 ms  0x6c80 fd:0x7f6269a27a30
 13386 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13386 ms  0x6c80 privk:0x7f62661cb820::7f62661cb820  a0 ab 1b 66                                      ...f
 13386 ms  0x6c80 privk:0x7f62661cb820::7f62661cb820  e5 e5 e5 e5                                      ....
 13386 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13386 ms  0x6c80 privk:0x7f6261783820::7f6261783820  90 17 1b 66                                      ...f
 13387 ms  0x6c80 privk:0x7f6261783820::7f6261783820  e5 e5 e5 e5                                      ....
 13387 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13387 ms  0x6c80 cx:0x7f626d2b5768
 13389 ms     | 0x6c80 EC_ValidatePublicKey()
 13389 ms     | 0x6c80 ret:0x0
 13389 ms  0x6c80 ret:0x7f6261783820::7f6261783820  90 37 ff 65                                      .7.e
 13389 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13389 ms  0x6c80 cx:0x7f626d2b5768
 13389 ms     | 0x6c80 EC_ValidatePublicKey()
 13391 ms     | 0x6c80 ret:0x0
 13391 ms  0x6c80 ret:0x7f6265ca4820::7f6265ca4820  c0 1e 1b 66                                      ...f
 13398 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13398 ms  0x6c80 privk:0x7f6269ae4020::7f6269ae4020  80 58 3f 66                                      .X?f
 13398 ms  0x6c80 privk:0x7f6269ae4020::7f6269ae4020  e5 e5 e5 e5                                      ....
 13398 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13398 ms  0x6c80 privk:0x7f6266302820::7f6266302820  30 ad 1b 66                                      0..f
 13398 ms  0x6c80 privk:0x7f6266302820::7f6266302820  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 13400 ms  0x6c88 PR_Close()
 13400 ms  0x6c88 fd:0x7f6261bd50d0
           /* TID 0x6c80 */
 13402 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13402 ms  0x6c80 privk:0x7f626a766820::7f626a766820  30 08 e2 69                                      0..i
 13402 ms  0x6c80 privk:0x7f626a766820::7f626a766820  e5 e5 e5 e5                                      ....
 13402 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13402 ms  0x6c80 privk:0x7f626a764820::7f626a764820  50 e1 ab 69                                      P..i
 13402 ms  0x6c80 privk:0x7f626a764820::7f626a764820  e5 e5 e5 e5                                      ....
 13402 ms  0x6c80 PR_Close()
 13402 ms  0x6c80 fd:0x7f6269eaba60
 13402 ms     | 0x6c80 PK11_Encrypt()
 13402 ms     | 0x6c80 symkey:0x7f625fea7b80
 13413 ms  0x6c80 PR_Connect()
 13413 ms  0x6c80 fd:0x7f6269e75b50
 13441 ms  0x6c80 SSL_ImportFD()
 13441 ms  0x6c80 ret:0x7f6261bd5fd0
 13441 ms  0x6c80 SSL_AuthCertificateHook()
 13441 ms  0x6c80 fd:0x7f6261bd5fd0
 13441 ms  0x6c80 ret:0x0
 13441 ms  0x6c80 PR_Connect()
 13441 ms  0x6c80 fd:0x7f6261bd5fd0
 13442 ms  0x6c80 SSL_ImportFD()
 13442 ms  0x6c80 ret:0x7f6261bd50d0
 13442 ms  0x6c80 SSL_AuthCertificateHook()
 13442 ms  0x6c80 fd:0x7f6261bd50d0
 13442 ms  0x6c80 ret:0x0
 13442 ms  0x6c80 PR_Connect()
 13442 ms  0x6c80 fd:0x7f6261bd50d0
 13442 ms  0x6c80 SSL_ImportFD()
 13442 ms  0x6c80 ret:0x7f626acc87f0
 13442 ms  0x6c80 SSL_AuthCertificateHook()
 13442 ms  0x6c80 fd:0x7f626acc87f0
 13442 ms  0x6c80 ret:0x0
 13442 ms  0x6c80 PR_Connect()
 13442 ms  0x6c80 fd:0x7f626acc87f0
           /* TID 0x6c88 */
 13444 ms  0x6c88 PR_Close()
 13444 ms  0x6c88 fd:0x7f6260894250
           /* TID 0x6c80 */
 13451 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13451 ms  0x6c80 cx:0x7f626cba1c08
 13451 ms     | 0x6c80 EC_ValidatePublicKey()
 13451 ms     | 0x6c80 ret:0x0
 13451 ms  0x6c80 ret:0x7f62661cb820::7f62661cb820  50 ab 1b 66                                      P..f
 13451 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13451 ms  0x6c80 cx:0x7f626cba1c08
 13452 ms     | 0x6c80 EC_ValidatePublicKey()
 13453 ms     | 0x6c80 ret:0x0
 13453 ms  0x6c80 ret:0x7f62661dc020::7f62661dc020  80 ad 1b 66                                      ...f
 13458 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13458 ms  0x6c80 cx:0x7f626d2b5908
 13458 ms     | 0x6c80 EC_ValidatePublicKey()
 13459 ms     | 0x6c80 ret:0x0
 13459 ms  0x6c80 ret:0x7f6269ae4020::7f6269ae4020  80 58 3f 66                                      .X?f
 13459 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13459 ms  0x6c80 cx:0x7f626d2b5908
 13459 ms     | 0x6c80 EC_ValidatePublicKey()
 13461 ms     | 0x6c80 ret:0x0
 13461 ms  0x6c80 ret:0x7f6269f7a820::7f6269f7a820  d0 28 c8 68                                      .(.h
 13463 ms  SECKEY_ECParamsToKeySize()
 13463 ms  0x6c80 ret:0xff
 13463 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13463 ms  0x6c80 cx:0x7f626cba4168
 13463 ms     | 0x6c80 EC_ValidatePublicKey()
 13463 ms     | 0x6c80 ret:0x0
 13463 ms  0x6c80 ret:0x7f6269f7e020::7f6269f7e020  40 b2 c8 68                                      @..h
 13463 ms  0x6c80 PK11_PubDeriveWithKDF()
 13463 ms  0x6c80 seckey:0x7f6269f7e020
 13463 ms     | 0x6c80 EC_ValidatePublicKey()
 13463 ms     | 0x6c80 ret:0x0
 13464 ms  0x6c80 ret:0x7f625fea7a00
 13464 ms  0x6c80 PK11_DeriveWithFlags()
 13464 ms  0x6c80 basekey:0x7f625fea7a00
 13464 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13464 ms  0x6c80 ret:0x7f625fcc1e80
 13464 ms  0x6c80 PK11_Derive()
 13464 ms  0x6c80 basekey:0x7f625fcc1e80
 13464 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13464 ms  0x6c80 ret:0x7f6265877880
 13464 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13464 ms  0x6c80 privk:0x7f6269f7e020::7f6269f7e020  40 b2 c8 68                                      @..h
 13464 ms  0x6c80 privk:0x7f6269f7e020::7f6269f7e020  e5 e5 e5 e5                                      ....
 13464 ms  0x6c80 PK11_Encrypt()
 13464 ms  0x6c80 symkey:0x7f625fea7a80
 13464 ms  0x6c80 SSL_AuthCertificateComplete()
 13464 ms  0x6c80 fd:0x7f62613a4520
 13464 ms  0x6c80 err:0x0
 13464 ms  0x6c80 PK11_Encrypt()
 13464 ms  0x6c80 symkey:0x7f625fea7a80
 13465 ms  0x6c80 PK11_Encrypt()
 13465 ms  0x6c80 symkey:0x7f6265baf900
 13467 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13467 ms  0x6c80 privk:0x7f626a775020::7f626a775020  b0 af 06 6a                                      ...j
 13468 ms  0x6c80 privk:0x7f626a775020::7f626a775020  e5 e5 e5 e5                                      ....
 13468 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13468 ms  0x6c80 privk:0x7f626a772820::7f626a772820  c0 84 f2 69                                      ...i
 13468 ms  0x6c80 privk:0x7f626a772820::7f626a772820  e5 e5 e5 e5                                      ....
 13468 ms  0x6c80 PR_Close()
 13468 ms  0x6c80 fd:0x7f6269eabbe0
 13468 ms     | 0x6c80 PK11_Encrypt()
 13468 ms     | 0x6c80 symkey:0x7f625fc9b700
 13496 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13496 ms  0x6c80 privk:0x7f626ac83820::7f626ac83820  a0 36 0a 6a                                      .6.j
 13497 ms  0x6c80 privk:0x7f626ac83820::7f626ac83820  e5 e5 e5 e5                                      ....
 13497 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13497 ms  0x6c80 privk:0x7f626a77c020::7f626a77c020  d0 d8 08 6a                                      ...j
 13497 ms  0x6c80 privk:0x7f626a77c020::7f626a77c020  e5 e5 e5 e5                                      ....
 13497 ms  0x6c80 PR_Close()
 13497 ms  0x6c80 fd:0x7f626a7ca670
 13497 ms     | 0x6c80 PK11_Encrypt()
 13497 ms     | 0x6c80 symkey:0x7f6262ecbe00
 13499 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13499 ms  0x6c80 privk:0x7f626ac98820::7f626ac98820  20 fe 7c 6a                                       .|j
 13499 ms  0x6c80 privk:0x7f626ac98820::7f626ac98820  e5 e5 e5 e5                                      ....
 13499 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13499 ms  0x6c80 privk:0x7f626ac8a020::7f626ac8a020  e0 37 0a 6a                                      .7.j
 13499 ms  0x6c80 privk:0x7f626ac8a020::7f626ac8a020  e5 e5 e5 e5                                      ....
 13499 ms  0x6c80 PR_Close()
 13499 ms  0x6c80 fd:0x7f626a798220
 13499 ms     | 0x6c80 PK11_Encrypt()
 13499 ms     | 0x6c80 symkey:0x7f624ecf4000
           /* TID 0x6c88 */
 13523 ms  0x6c88 PR_Close()
 13523 ms  0x6c88 fd:0x7f6260444880
           /* TID 0x6c80 */
 13527 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13527 ms  0x6c80 privk:0x7f626d20c020::7f626d20c020  30 93 cf 6c                                      0..l
 13527 ms  0x6c80 privk:0x7f626d20c020::7f626d20c020  e5 e5 e5 e5                                      ....
 13527 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13527 ms  0x6c80 privk:0x7f626d20a020::7f626d20a020  60 5a c7 6c                                      `Z.l
 13527 ms  0x6c80 privk:0x7f626d20a020::7f626d20a020  e5 e5 e5 e5                                      ....
 13527 ms  0x6c80 PR_Close()
 13527 ms  0x6c80 fd:0x7f626a638b50
 13527 ms     | 0x6c80 PK11_Encrypt()
 13527 ms     | 0x6c80 symkey:0x7f62648f6a00
 13528 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13528 ms  0x6c80 privk:0x7f626d204020::7f626d204020  10 cf 96 6a                                      ...j
 13528 ms  0x6c80 privk:0x7f626d204020::7f626d204020  e5 e5 e5 e5                                      ....
 13528 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13528 ms  0x6c80 privk:0x7f6287f74820::7f6287f74820  90 6c 91 6a                                      .l.j
 13528 ms  0x6c80 privk:0x7f6287f74820::7f6287f74820  e5 e5 e5 e5                                      ....
 13528 ms  0x6c80 PR_Close()
 13528 ms  0x6c80 fd:0x7f626a784760
 13528 ms     | 0x6c80 PK11_Encrypt()
 13528 ms     | 0x6c80 symkey:0x7f6265877f00
 13528 ms  0x6c80 SSL_ImportFD()
 13528 ms  0x6c80 ret:0x7f6261bd5d60
 13528 ms  0x6c80 SSL_AuthCertificateHook()
 13528 ms  0x6c80 fd:0x7f6261bd5d60
 13528 ms  0x6c80 ret:0x0
 13528 ms  0x6c80 PR_Connect()
 13528 ms  0x6c80 fd:0x7f6261bd5d60
 13537 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13537 ms  0x6c80 privk:0x7f626d210820::7f626d210820  50 96 cf 6c                                      P..l
 13537 ms  0x6c80 privk:0x7f626d210820::7f626d210820  e5 e5 e5 e5                                      ....
 13537 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13537 ms  0x6c80 privk:0x7f626d20e820::7f626d20e820  70 94 cf 6c                                      p..l
 13537 ms  0x6c80 privk:0x7f626d20e820::7f626d20e820  e5 e5 e5 e5                                      ....
 13538 ms  SECKEY_ECParamsToKeySize()
 13538 ms  0x6c80 ret:0xff
 13538 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13538 ms  0x6c80 cx:0x7f626d2b4248
 13538 ms     | 0x6c80 EC_ValidatePublicKey()
 13538 ms     | 0x6c80 ret:0x0
 13538 ms  0x6c80 ret:0x7f6261779020::7f6261779020  10 5a 3f 66                                      .Z?f
 13539 ms  0x6c80 PK11_PubDeriveWithKDF()
 13539 ms  0x6c80 seckey:0x7f6261779020
 13539 ms     | 0x6c80 EC_ValidatePublicKey()
 13539 ms     | 0x6c80 ret:0x0
 13539 ms  0x6c80 ret:0x7f62648f6680
 13539 ms  0x6c80 PK11_DeriveWithFlags()
 13539 ms  0x6c80 basekey:0x7f62648f6680
 13539 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13539 ms  0x6c80 ret:0x7f6265877780
 13539 ms  0x6c80 PK11_Derive()
 13539 ms  0x6c80 basekey:0x7f6265877780
 13539 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13539 ms  0x6c80 ret:0x7f6262ecbd80
 13539 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13539 ms  0x6c80 privk:0x7f6261779020::7f6261779020  10 5a 3f 66                                      .Z?f
 13539 ms  0x6c80 privk:0x7f6261779020::7f6261779020  e5 e5 e5 e5                                      ....
 13539 ms  0x6c80 PK11_Encrypt()
 13539 ms  0x6c80 symkey:0x7f6265878280
 13539 ms  0x6c80 PR_Close()
 13539 ms  0x6c80 fd:0x7f626a638370
 13540 ms     | 0x6c80 PK11_Encrypt()
 13540 ms     | 0x6c80 symkey:0x7f625fca8d00
 13540 ms  0x6c80 SSL_AuthCertificateComplete()
 13540 ms  0x6c80 fd:0x7f6266111490
 13540 ms  0x6c80 err:0x0
 13540 ms  0x6c80 PK11_Encrypt()
 13540 ms  0x6c80 symkey:0x7f6265878280
 13540 ms  0x6c80 SSL_ImportFD()
 13540 ms  0x6c80 ret:0x7f626997a040
 13540 ms  0x6c80 SSL_AuthCertificateHook()
 13540 ms  0x6c80 fd:0x7f626997a040
 13540 ms  0x6c80 ret:0x0
 13540 ms  0x6c80 PR_Connect()
 13540 ms  0x6c80 fd:0x7f626997a040
 13558 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13558 ms  0x6c80 cx:0x7f626d2b48c8
 13558 ms     | 0x6c80 EC_ValidatePublicKey()
 13558 ms     | 0x6c80 ret:0x0
 13558 ms  0x6c80 ret:0x7f626177a020::7f626177a020  70 5e 3f 66                                      p^?f
 13559 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13559 ms  0x6c80 cx:0x7f626d2b48c8
 13559 ms     | 0x6c80 EC_ValidatePublicKey()
 13561 ms     | 0x6c80 ret:0x0
 13561 ms  0x6c80 ret:0x7f626177f820::7f626177f820  10 1f 1b 66                                      ...f
           /* TID 0x6c88 */
 13576 ms  0x6c88 PR_Close()
 13576 ms  0x6c88 fd:0x7f6260a4a550
 13579 ms  0x6c88 PR_Close()
 13579 ms  0x6c88 fd:0x7f6260a4a550
           /* TID 0x6c80 */
 13585 ms  0x6c80 PK11_Encrypt()
 13585 ms  0x6c80 symkey:0x7f6265baf900
           /* TID 0x6c88 */
 13595 ms  0x6c88 PR_Close()
 13595 ms  0x6c88 fd:0x7f6260a4a550
           /* TID 0x6c80 */
 13633 ms  0x6c80 SSL_ImportFD()
 13633 ms  0x6c80 ret:0x7f626a99d850
 13633 ms  0x6c80 SSL_AuthCertificateHook()
 13633 ms  0x6c80 fd:0x7f626a99d850
 13633 ms  0x6c80 ret:0x0
 13633 ms  0x6c80 PR_Connect()
 13633 ms  0x6c80 fd:0x7f626a99d850
 13633 ms  0x6c80 SSL_ImportFD()
 13633 ms  0x6c80 ret:0x7f626a99d1c0
 13633 ms  0x6c80 SSL_AuthCertificateHook()
 13633 ms  0x6c80 fd:0x7f626a99d1c0
 13633 ms  0x6c80 ret:0x0
 13633 ms  0x6c80 PR_Connect()
 13633 ms  0x6c80 fd:0x7f626a99d1c0
 13633 ms  0x6c80 SSL_ImportFD()
 13633 ms  0x6c80 ret:0x7f626cbb2490
 13633 ms  0x6c80 SSL_AuthCertificateHook()
 13633 ms  0x6c80 fd:0x7f626cbb2490
 13633 ms  0x6c80 ret:0x0
 13634 ms  0x6c80 PR_Connect()
 13634 ms  0x6c80 fd:0x7f626cbb2490
 13639 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13639 ms  0x6c80 cx:0x7f626d2b62c8
 13639 ms     | 0x6c80 EC_ValidatePublicKey()
 13639 ms     | 0x6c80 ret:0x0
 13639 ms  0x6c80 ret:0x7f6269f7f020::7f6269f7f020  90 cc d7 68                                      ...h
 13639 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13639 ms  0x6c80 cx:0x7f626d2b62c8
 13640 ms     | 0x6c80 EC_ValidatePublicKey()
 13642 ms     | 0x6c80 ret:0x0
 13642 ms  0x6c80 ret:0x7f6269f81020::7f6269f81020  90 a7 9e 69                                      ...i
 13650 ms  SECKEY_ECParamsToKeySize()
 13650 ms  0x6c80 ret:0xff
 13651 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13651 ms  0x6c80 cx:0x7f626d2b5768
 13651 ms     | 0x6c80 EC_ValidatePublicKey()
 13651 ms     | 0x6c80 ret:0x0
 13651 ms  0x6c80 ret:0x7f6269f84020::7f6269f84020  10 b5 a5 69                                      ...i
 13651 ms  0x6c80 PK11_PubDeriveWithKDF()
 13651 ms  0x6c80 seckey:0x7f6269f84020
 13651 ms     | 0x6c80 EC_ValidatePublicKey()
 13651 ms     | 0x6c80 ret:0x0
 13652 ms  0x6c80 ret:0x7f625fca8080
 13652 ms  0x6c80 PK11_DeriveWithFlags()
 13652 ms  0x6c80 basekey:0x7f625fca8080
 13652 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13652 ms  0x6c80 ret:0x7f624ecf4600
 13652 ms  0x6c80 PK11_Derive()
 13652 ms  0x6c80 basekey:0x7f624ecf4600
 13652 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13652 ms  0x6c80 ret:0x7f62648f6680
 13652 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13652 ms  0x6c80 privk:0x7f6269f84020::7f6269f84020  10 b5 a5 69                                      ...i
 13652 ms  0x6c80 privk:0x7f6269f84020::7f6269f84020  e5 e5 e5 e5                                      ....
 13652 ms  0x6c80 PK11_Encrypt()
 13652 ms  0x6c80 symkey:0x7f625fca8e00
 13653 ms  0x6c80 SSL_AuthCertificateComplete()
 13653 ms  0x6c80 fd:0x7f6260894940
 13653 ms  0x6c80 err:0x0
 13653 ms  0x6c80 PK11_Encrypt()
 13653 ms  0x6c80 symkey:0x7f625fca8e00
 13669 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13669 ms  0x6c80 cx:0x7f626cba20e8
 13670 ms     | 0x6c80 EC_ValidatePublicKey()
 13670 ms     | 0x6c80 ret:0x0
 13670 ms  0x6c80 ret:0x7f6269f85020::7f6269f85020  c0 b4 a5 69                                      ...i
 13670 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13670 ms  0x6c80 cx:0x7f626cba20e8
 13671 ms     | 0x6c80 EC_ValidatePublicKey()
 13672 ms     | 0x6c80 ret:0x0
 13672 ms  0x6c80 ret:0x7f6269f87020::7f6269f87020  b0 e0 ab 69                                      ...i
 13676 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13676 ms  0x6c80 cx:0x7f626d2b67a8
 13676 ms     | 0x6c80 EC_ValidatePublicKey()
 13676 ms     | 0x6c80 ret:0x0
 13676 ms  0x6c80 ret:0x7f626a60c820::7f626a60c820  f0 e1 ab 69                                      ...i
 13676 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13676 ms  0x6c80 cx:0x7f626d2b67a8
 13677 ms     | 0x6c80 EC_ValidatePublicKey()
 13679 ms     | 0x6c80 ret:0x0
 13679 ms  0x6c80 ret:0x7f626a75e820::7f626a75e820  b0 05 e2 69                                      ...i
 13703 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13703 ms  0x6c80 cx:0x7f626d2b6948
 13704 ms     | 0x6c80 EC_ValidatePublicKey()
 13704 ms     | 0x6c80 ret:0x0
 13704 ms  0x6c80 ret:0x7f626a761020::7f626a761020  30 2d ec 69                                      0-.i
 13704 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13704 ms  0x6c80 cx:0x7f626d2b6948
 13704 ms     | 0x6c80 EC_ValidatePublicKey()
 13706 ms     | 0x6c80 ret:0x0
 13706 ms  0x6c80 ret:0x7f626a764820::7f626a764820  50 81 f2 69                                      P..i
 13725 ms  SECKEY_ECParamsToKeySize()
 13725 ms  0x6c80 ret:0xff
 13725 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13725 ms  0x6c80 cx:0x7f626cba1c08
 13725 ms     | 0x6c80 EC_ValidatePublicKey()
 13726 ms     | 0x6c80 ret:0x0
 13726 ms  0x6c80 ret:0x7f626a76c820::7f626a76c820  70 64 fd 69                                      pd.i
 13726 ms  0x6c80 PK11_PubDeriveWithKDF()
 13726 ms  0x6c80 seckey:0x7f626a76c820
 13726 ms     | 0x6c80 EC_ValidatePublicKey()
 13726 ms     | 0x6c80 ret:0x0
 13726 ms  0x6c80 ret:0x7f625fca8080
 13726 ms  0x6c80 PK11_DeriveWithFlags()
 13726 ms  0x6c80 basekey:0x7f625fca8080
 13726 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13727 ms  0x6c80 ret:0x7f62648f6600
 13727 ms  0x6c80 PK11_Derive()
 13727 ms  0x6c80 basekey:0x7f62648f6600
 13727 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13727 ms  0x6c80 ret:0x7f624ecf3b00
 13727 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13727 ms  0x6c80 privk:0x7f626a76c820::7f626a76c820  70 64 fd 69                                      pd.i
 13727 ms  0x6c80 privk:0x7f626a76c820::7f626a76c820  e5 e5 e5 e5                                      ....
 13727 ms  0x6c80 PK11_Encrypt()
 13727 ms  0x6c80 symkey:0x7f62648f6c80
 13727 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13727 ms  0x6c80 privk:0x7f6261774820::7f6261774820  a0 21 3d 66                                      .!=f
 13727 ms  0x6c80 privk:0x7f6261774820::7f6261774820  e5 e5 e5 e5                                      ....
 13728 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13728 ms  0x6c80 privk:0x7f6261772020::7f6261772020  60 75 3a 66                                      `u:f
 13728 ms  0x6c80 privk:0x7f6261772020::7f6261772020  e5 e5 e5 e5                                      ....
 13728 ms  0x6c80 PR_Close()
 13728 ms  0x6c80 fd:0x7f62613a4520
 13728 ms     | 0x6c80 PK11_Encrypt()
 13728 ms     | 0x6c80 symkey:0x7f625fea7a80
 13728 ms  0x6c80 SSL_AuthCertificateComplete()
 13728 ms  0x6c80 fd:0x7f6265cc7070
 13728 ms  0x6c80 err:0x0
 13728 ms  0x6c80 PK11_Encrypt()
 13728 ms  0x6c80 symkey:0x7f62648f6c80
 13730 ms  SECKEY_ECParamsToKeySize()
 13730 ms  0x6c80 ret:0xff
 13730 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13730 ms  0x6c80 cx:0x7f626d2b5908
 13730 ms     | 0x6c80 EC_ValidatePublicKey()
 13730 ms     | 0x6c80 ret:0x0
 13730 ms  0x6c80 ret:0x7f6261774820::7f6261774820  60 7f 3a 66                                      `.:f
 13730 ms  0x6c80 PK11_PubDeriveWithKDF()
 13730 ms  0x6c80 seckey:0x7f6261774820
 13730 ms     | 0x6c80 EC_ValidatePublicKey()
 13730 ms     | 0x6c80 ret:0x0
 13731 ms  0x6c80 ret:0x7f6265877880
 13731 ms  0x6c80 PK11_DeriveWithFlags()
 13731 ms  0x6c80 basekey:0x7f6265877880
 13731 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13731 ms  0x6c80 ret:0x7f625fcc1e80
 13731 ms  0x6c80 PK11_Derive()
 13731 ms  0x6c80 basekey:0x7f625fcc1e80
 13731 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13731 ms  0x6c80 ret:0x7f625fca8080
 13731 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13731 ms  0x6c80 privk:0x7f6261774820::7f6261774820  60 7f 3a 66                                      `.:f
 13731 ms  0x6c80 privk:0x7f6261774820::7f6261774820  e5 e5 e5 e5                                      ....
 13732 ms  0x6c80 PK11_Encrypt()
 13732 ms  0x6c80 symkey:0x7f625fea7b00
 13732 ms  0x6c80 SSL_AuthCertificateComplete()
 13732 ms  0x6c80 fd:0x7f62617c40a0
 13732 ms  0x6c80 err:0x0
 13732 ms  0x6c80 PK11_Encrypt()
 13732 ms  0x6c80 symkey:0x7f625fea7b00
           /* TID 0x6c88 */
 13766 ms  0x6c88 PR_Close()
 13766 ms  0x6c88 fd:0x7f62613a4e80
           /* TID 0x6c80 */
 13779 ms  0x6c80 SSL_ImportFD()
 13779 ms  0x6c80 ret:0x7f62699b7d60
 13779 ms  0x6c80 SSL_AuthCertificateHook()
 13779 ms  0x6c80 fd:0x7f62699b7d60
 13779 ms  0x6c80 ret:0x0
 13779 ms  0x6c80 PR_Connect()
 13779 ms  0x6c80 fd:0x7f62699b7d60
 13785 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13785 ms  0x6c80 cx:0x7f626cba2c48
 13786 ms     | 0x6c80 EC_ValidatePublicKey()
 13786 ms     | 0x6c80 ret:0x0
 13786 ms  0x6c80 ret:0x7f6269f7b820::7f6269f7b820  60 7f 3a 66                                      `.:f
 13786 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13786 ms  0x6c80 cx:0x7f626cba2c48
 13787 ms     | 0x6c80 EC_ValidatePublicKey()
 13789 ms     | 0x6c80 ret:0x0
 13790 ms  0x6c80 ret:0x7f626a766020::7f626a766020  d0 2d ec 69                                      .-.i
 13790 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13790 ms  0x6c80 privk:0x7f6269ed9820::7f6269ed9820  d0 38 c5 68                                      .8.h
 13790 ms  0x6c80 privk:0x7f6269ed9820::7f6269ed9820  e5 e5 e5 e5                                      ....
 13790 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13790 ms  0x6c80 privk:0x7f6269ed4820::7f6269ed4820  e0 87 41 66                                      ..Af
 13790 ms  0x6c80 privk:0x7f6269ed4820::7f6269ed4820  e5 e5 e5 e5                                      ....
 13791 ms  0x6c80 PR_Close()
 13791 ms  0x6c80 fd:0x7f6266111490
 13791 ms     | 0x6c80 PK11_Encrypt()
 13791 ms     | 0x6c80 symkey:0x7f6265878280
           /* TID 0x6c88 */
 13815 ms  0x6c88 PR_Close()
 13815 ms  0x6c88 fd:0x7f625fc4fd90
           /* TID 0x6c80 */
 13826 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13826 ms  0x6c80 cx:0x7f626cba3608
 13828 ms     | 0x6c80 EC_ValidatePublicKey()
 13828 ms     | 0x6c80 ret:0x0
 13828 ms  0x6c80 ret:0x7f6261777820::7f6261777820  10 af 1b 66                                      ...f
 13828 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13828 ms  0x6c80 cx:0x7f626cba3608
 13830 ms     | 0x6c80 EC_ValidatePublicKey()
 13834 ms     | 0x6c80 ret:0x0
 13834 ms  0x6c80 ret:0x7f6269ed2820::7f6269ed2820  40 f7 4f 66                                      @.Of
           /* TID 0x6c88 */
 13849 ms  0x6c88 PR_Close()
 13849 ms  0x6c88 fd:0x7f6265bacc10
           /* TID 0x6c80 */
 13855 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13855 ms  0x6c80 cx:0x7f626cba3e28
           /* TID 0x6c88 */
 13856 ms  0x6c88 PR_Close()
 13856 ms  0x6c88 fd:0x7f626a638b50
           /* TID 0x6c80 */
 13860 ms     | 0x6c80 EC_ValidatePublicKey()
 13860 ms     | 0x6c80 ret:0x0
 13860 ms  0x6c80 ret:0x7f6269ed9820::7f6269ed9820  70 89 3e 61                                      p.>a
 13860 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13860 ms  0x6c80 cx:0x7f626cba3e28
 13862 ms     | 0x6c80 EC_ValidatePublicKey()
 13866 ms     | 0x6c80 ret:0x0
 13866 ms  0x6c80 ret:0x7f626a76d020::7f626a76d020  10 8a f2 69                                      ...i
 13896 ms  0x6c80 PK11_Derive()
 13896 ms  0x6c80 basekey:0x7f6265877780
 13896 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13896 ms  0x6c80 ret:0x7f6262ecbd80
 13896 ms  0x6c80 PK11_Encrypt()
 13896 ms  0x6c80 symkey:0x7f6265878780
 13898 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13898 ms  0x6c80 privk:0x7f6269f81020::7f6269f81020  90 a7 9e 69                                      ...i
 13898 ms  0x6c80 privk:0x7f6269f81020::7f6269f81020  e5 e5 e5 e5                                      ....
 13898 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13898 ms  0x6c80 privk:0x7f6269f7f020::7f6269f7f020  90 cc d7 68                                      ...h
 13898 ms  0x6c80 privk:0x7f6269f7f020::7f6269f7f020  e5 e5 e5 e5                                      ....
 13898 ms  0x6c80 PK11_Encrypt()
 13898 ms  0x6c80 symkey:0x7f6265878780
 13904 ms  SECKEY_ECParamsToKeySize()
 13904 ms  0x6c80 ret:0x100
 13904 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13904 ms  0x6c80 cx:0x7f626cba20e8
 13905 ms     | 0x6c80 EC_ValidatePublicKey()
 13908 ms     | 0x6c80 ret:0x0
 13908 ms  0x6c80 ret:0x7f626a773020::7f626a773020  d0 d8 08 6a                                      ...j
 13908 ms  0x6c80 PK11_PubDeriveWithKDF()
 13908 ms  0x6c80 seckey:0x7f626a773020
 13908 ms     | 0x6c80 EC_ValidatePublicKey()
 13911 ms     | 0x6c80 ret:0x0
 13913 ms  0x6c80 ret:0x7f6265877880
 13913 ms  0x6c80 PK11_DeriveWithFlags()
 13913 ms  0x6c80 basekey:0x7f6265877880
 13913 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13913 ms  0x6c80 ret:0x7f624ecf3980
 13913 ms  0x6c80 PK11_Derive()
 13913 ms  0x6c80 basekey:0x7f624ecf3980
 13913 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13913 ms  0x6c80 ret:0x7f62617c1f80
 13913 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13913 ms  0x6c80 privk:0x7f626a773020::7f626a773020  d0 d8 08 6a                                      ...j
 13913 ms  0x6c80 privk:0x7f626a773020::7f626a773020  e5 e5 e5 e5                                      ....
 13914 ms  0x6c80 PK11_Encrypt()
 13914 ms  0x6c80 symkey:0x7f625fca9b80
 13915 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13915 ms  0x6c80 privk:0x7f6265ca4820::7f6265ca4820  c0 1e 1b 66                                      ...f
 13915 ms  0x6c80 privk:0x7f6265ca4820::7f6265ca4820  e5 e5 e5 e5                                      ....
 13915 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13915 ms  0x6c80 privk:0x7f6261783820::7f6261783820  90 37 ff 65                                      .7.e
 13915 ms  0x6c80 privk:0x7f6261783820::7f6261783820  e5 e5 e5 e5                                      ....
 13915 ms  0x6c80 PR_Close()
 13915 ms  0x6c80 fd:0x7f6260894940
 13915 ms     | 0x6c80 PK11_Encrypt()
 13915 ms     | 0x6c80 symkey:0x7f625fca8e00
 13919 ms  SECKEY_ECParamsToKeySize()
 13919 ms  0x6c80 ret:0x100
 13919 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13919 ms  0x6c80 cx:0x7f626d2b67a8
 13920 ms     | 0x6c80 EC_ValidatePublicKey()
 13922 ms     | 0x6c80 ret:0x0
 13922 ms  0x6c80 ret:0x7f6269f82820::7f6269f82820  a0 d6 08 6a                                      ...j
 13923 ms  0x6c80 PK11_PubDeriveWithKDF()
 13923 ms  0x6c80 seckey:0x7f6269f82820
 13923 ms     | 0x6c80 EC_ValidatePublicKey()
 13925 ms     | 0x6c80 ret:0x0
 13927 ms  0x6c80 ret:0x7f62648f6680
 13927 ms  0x6c80 PK11_DeriveWithFlags()
 13927 ms  0x6c80 basekey:0x7f62648f6680
 13927 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13927 ms  0x6c80 ret:0x7f624ecf4600
 13927 ms  0x6c80 PK11_Derive()
 13927 ms  0x6c80 basekey:0x7f624ecf4600
 13928 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13928 ms  0x6c80 ret:0x7f6265877880
 13928 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13928 ms  0x6c80 privk:0x7f6269f82820::7f6269f82820  a0 d6 08 6a                                      ...j
 13928 ms  0x6c80 privk:0x7f6269f82820::7f6269f82820  e5 e5 e5 e5                                      ....
 13928 ms  0x6c80 PK11_Encrypt()
 13928 ms  0x6c80 symkey:0x7f625fca8d80
 13959 ms  0x6c80 SSL_ImportFD()
 13959 ms  0x6c80 ret:0x7f62617c44c0
 13959 ms  0x6c80 SSL_AuthCertificateHook()
 13959 ms  0x6c80 fd:0x7f62617c44c0
 13959 ms  0x6c80 ret:0x0
 13959 ms  0x6c80 PR_Connect()
 13959 ms  0x6c80 fd:0x7f62617c44c0
 13971 ms  SECKEY_ECParamsToKeySize()
 13971 ms  0x6c80 ret:0xff
 13971 ms  0x6c80 SECKEY_CreateECPrivateKey()
 13971 ms  0x6c80 cx:0x7f626d2b6948
 13972 ms     | 0x6c80 EC_ValidatePublicKey()
 13972 ms     | 0x6c80 ret:0x0
 13972 ms  0x6c80 ret:0x7f6269f83020::7f6269f83020  f0 d6 08 6a                                      ...j
 13972 ms  0x6c80 PK11_PubDeriveWithKDF()
 13972 ms  0x6c80 seckey:0x7f6269f83020
 13972 ms     | 0x6c80 EC_ValidatePublicKey()
 13972 ms     | 0x6c80 ret:0x0
 13973 ms  0x6c80 ret:0x7f62648f6680
 13973 ms  0x6c80 PK11_DeriveWithFlags()
 13973 ms  0x6c80 basekey:0x7f62648f6680
 13973 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13973 ms  0x6c80 ret:0x7f62617b2800
 13973 ms  0x6c80 PK11_Derive()
 13973 ms  0x6c80 basekey:0x7f62617b2800
 13973 ms     | 0x6c80 PK11_DeriveWithTemplate()
 13973 ms  0x6c80 ret:0x7f625fc9b600
 13973 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13973 ms  0x6c80 privk:0x7f6269f83020::7f6269f83020  f0 d6 08 6a                                      ...j
 13973 ms  0x6c80 privk:0x7f6269f83020::7f6269f83020  e5 e5 e5 e5                                      ....
 13973 ms  0x6c80 PK11_Encrypt()
 13973 ms  0x6c80 symkey:0x7f6262ecbe80
 13973 ms  0x6c80 SSL_AuthCertificateComplete()
 13973 ms  0x6c80 fd:0x7f626acc87f0
 13973 ms  0x6c80 err:0x0
 13974 ms  0x6c80 PK11_Encrypt()
 13974 ms  0x6c80 symkey:0x7f6262ecbe80
 13978 ms  0x6c80 SSL_ImportFD()
 13978 ms  0x6c80 ret:0x7f6269eabbe0
 13978 ms  0x6c80 SSL_AuthCertificateHook()
 13978 ms  0x6c80 fd:0x7f6269eabbe0
 13978 ms  0x6c80 ret:0x0
 13981 ms  0x6c80 PR_Connect()
 13981 ms  0x6c80 fd:0x7f6269eabbe0
 13982 ms  0x6c80 SSL_ImportFD()
 13982 ms  0x6c80 ret:0x7f62699b73d0
 13982 ms  0x6c80 SSL_AuthCertificateHook()
 13982 ms  0x6c80 fd:0x7f62699b73d0
 13982 ms  0x6c80 ret:0x0
 13982 ms  0x6c80 PR_Connect()
 13982 ms  0x6c80 fd:0x7f62699b73d0
 13983 ms  0x6c80 SSL_ImportFD()
 13983 ms  0x6c80 ret:0x7f6269a27c10
 13983 ms  0x6c80 SSL_AuthCertificateHook()
 13983 ms  0x6c80 fd:0x7f6269a27c10
 13983 ms  0x6c80 ret:0x0
 13983 ms  0x6c80 PR_Connect()
 13983 ms  0x6c80 fd:0x7f6269a27c10
 13988 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13988 ms  0x6c80 privk:0x7f62661dc020::7f62661dc020  80 ad 1b 66                                      ...f
 13988 ms  0x6c80 privk:0x7f62661dc020::7f62661dc020  e5 e5 e5 e5                                      ....
 13988 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13988 ms  0x6c80 privk:0x7f62661cb820::7f62661cb820  50 ab 1b 66                                      P..f
 13989 ms  0x6c80 privk:0x7f62661cb820::7f62661cb820  e5 e5 e5 e5                                      ....
 13989 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13989 ms  0x6c80 privk:0x7f6269f7a820::7f6269f7a820  d0 28 c8 68                                      .(.h
 13989 ms  0x6c80 privk:0x7f6269f7a820::7f6269f7a820  e5 e5 e5 e5                                      ....
 13989 ms  0x6c80 SECKEY_DestroyPrivateKey()
 13989 ms  0x6c80 privk:0x7f6269ae4020::7f6269ae4020  80 58 3f 66                                      .X?f
 13990 ms  0x6c80 privk:0x7f6269ae4020::7f6269ae4020  e5 e5 e5 e5                                      ....
 13990 ms  0x6c80 PR_Close()
 13990 ms  0x6c80 fd:0x7f62617c40a0
 13990 ms     | 0x6c80 PK11_Encrypt()
 13990 ms     | 0x6c80 symkey:0x7f625fea7b00
 13990 ms  0x6c80 PR_Close()
 13990 ms  0x6c80 fd:0x7f6265cc7070
 13990 ms     | 0x6c80 PK11_Encrypt()
 13990 ms     | 0x6c80 symkey:0x7f62648f6c80
 14016 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14016 ms  0x6c80 cx:0x7f626d2b6fc8
 14017 ms     | 0x6c80 EC_ValidatePublicKey()
 14017 ms     | 0x6c80 ret:0x0
 14017 ms  0x6c80 ret:0x7f6261772020::7f6261772020  30 83 3e 61                                      0.>a
 14018 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14018 ms  0x6c80 cx:0x7f626d2b6fc8
 14019 ms     | 0x6c80 EC_ValidatePublicKey()
 14023 ms     | 0x6c80 ret:0x0
 14023 ms  0x6c80 ret:0x7f6261789020::7f6261789020  f0 ab 1b 66                                      ...f
 14037 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14037 ms  0x6c80 cx:0x7f626d2b77e8
 14038 ms     | 0x6c80 EC_ValidatePublicKey()
 14038 ms     | 0x6c80 ret:0x0
 14038 ms  0x6c80 ret:0x7f62661db820::7f62661db820  a0 21 3d 66                                      .!=f
 14038 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14038 ms  0x6c80 cx:0x7f626d2b77e8
 14040 ms     | 0x6c80 EC_ValidatePublicKey()
 14043 ms     | 0x6c80 ret:0x0
 14044 ms  0x6c80 ret:0x7f6266481020::7f6266481020  d0 28 c8 68                                      .(.h
 14045 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14045 ms  0x6c80 cx:0x7f626d2b7308
 14046 ms     | 0x6c80 EC_ValidatePublicKey()
 14046 ms     | 0x6c80 ret:0x0
 14046 ms  0x6c80 ret:0x7f6269f79820::7f6269f79820  e0 8c f2 69                                      ...i
 14046 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14046 ms  0x6c80 cx:0x7f626d2b7308
 14047 ms     | 0x6c80 EC_ValidatePublicKey()
 14051 ms     | 0x6c80 ret:0x0
 14051 ms  0x6c80 ret:0x7f6269f83020::7f6269f83020  60 da 08 6a                                      `..j
 14051 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14051 ms  0x6c80 cx:0x7f626d2b6c88
 14052 ms     | 0x6c80 EC_ValidatePublicKey()
 14052 ms     | 0x6c80 ret:0x0
 14052 ms  0x6c80 ret:0x7f626a772020::7f626a772020  a0 db 08 6a                                      ...j
 14052 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14052 ms  0x6c80 cx:0x7f626d2b6c88
 14053 ms     | 0x6c80 EC_ValidatePublicKey()
 14055 ms     | 0x6c80 ret:0x0
 14056 ms  0x6c80 ret:0x7f626a774820::7f626a774820  40 37 0a 6a                                      @7.j
 14056 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14056 ms  0x6c80 cx:0x7f626d2b7988
 14057 ms     | 0x6c80 EC_ValidatePublicKey()
 14057 ms     | 0x6c80 ret:0x0
 14057 ms  0x6c80 ret:0x7f626a777020::7f626a777020  00 3b 0a 6a                                      .;.j
 14057 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14057 ms  0x6c80 cx:0x7f626d2b7988
 14058 ms     | 0x6c80 EC_ValidatePublicKey()
 14060 ms     | 0x6c80 ret:0x0
 14060 ms  0x6c80 ret:0x7f626ac7d820::7f626ac7d820  40 67 91 6a                                      @g.j
 14061 ms  SECKEY_ECParamsToKeySize()
 14061 ms  0x6c80 ret:0xff
 14061 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14061 ms  0x6c80 cx:0x7f626cba2c48
 14062 ms     | 0x6c80 EC_ValidatePublicKey()
 14062 ms     | 0x6c80 ret:0x0
 14062 ms  0x6c80 ret:0x7f626ac86020::7f626ac86020  90 cc 96 6a                                      ...j
 14062 ms  0x6c80 PK11_PubDeriveWithKDF()
 14062 ms  0x6c80 seckey:0x7f626ac86020
 14062 ms     | 0x6c80 EC_ValidatePublicKey()
 14062 ms     | 0x6c80 ret:0x0
 14062 ms  0x6c80 ret:0x7f624ecf3b00
 14063 ms  0x6c80 PK11_DeriveWithFlags()
 14063 ms  0x6c80 basekey:0x7f624ecf3b00
 14063 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14063 ms  0x6c80 ret:0x7f62648f6600
 14063 ms  0x6c80 PK11_Derive()
 14063 ms  0x6c80 basekey:0x7f62648f6600
 14063 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14063 ms  0x6c80 ret:0x7f625fca8080
 14063 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14063 ms  0x6c80 privk:0x7f626ac86020::7f626ac86020  90 cc 96 6a                                      ...j
 14063 ms  0x6c80 privk:0x7f626ac86020::7f626ac86020  e5 e5 e5 e5                                      ....
 14063 ms  0x6c80 PK11_Encrypt()
 14063 ms  0x6c80 symkey:0x7f6265877400
 14063 ms  0x6c80 SSL_AuthCertificateComplete()
 14063 ms  0x6c80 fd:0x7f6261bd5d60
 14063 ms  0x6c80 err:0x0
 14063 ms  0x6c80 PK11_Encrypt()
 14063 ms  0x6c80 symkey:0x7f6265877400
 14063 ms  0x6c80 PK11_Encrypt()
 14063 ms  0x6c80 symkey:0x7f6265877400
 14079 ms  SECKEY_ECParamsToKeySize()
 14079 ms  0x6c80 ret:0x100
 14079 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14079 ms  0x6c80 cx:0x7f626d2b6fc8
 14079 ms     | 0x6c80 EC_ValidatePublicKey()
 14081 ms     | 0x6c80 ret:0x0
 14081 ms  0x6c80 ret:0x7f626d206820::7f626d206820  b0 90 cf 6c                                      ...l
 14081 ms  0x6c80 PK11_PubDeriveWithKDF()
 14081 ms  0x6c80 seckey:0x7f626d206820
 14081 ms     | 0x6c80 EC_ValidatePublicKey()
 14082 ms     | 0x6c80 ret:0x0
 14084 ms  0x6c80 ret:0x7f624ecf3b00
 14084 ms  0x6c80 PK11_DeriveWithFlags()
 14084 ms  0x6c80 basekey:0x7f624ecf3b00
 14084 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14084 ms  0x6c80 ret:0x7f625fcc1e80
 14084 ms  0x6c80 PK11_Derive()
 14084 ms  0x6c80 basekey:0x7f625fcc1e80
 14084 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14084 ms  0x6c80 ret:0x7f62648f6680
 14084 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14084 ms  0x6c80 privk:0x7f626d206820::7f626d206820  b0 90 cf 6c                                      ...l
 14084 ms  0x6c80 privk:0x7f626d206820::7f626d206820  e5 e5 e5 e5                                      ....
 14084 ms  0x6c80 PK11_Encrypt()
 14084 ms  0x6c80 symkey:0x7f625ff49f00
 14097 ms  SECKEY_ECParamsToKeySize()
 14097 ms  0x6c80 ret:0xff
 14097 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14097 ms  0x6c80 cx:0x7f626d2b77e8
 14097 ms     | 0x6c80 EC_ValidatePublicKey()
 14097 ms     | 0x6c80 ret:0x0
 14097 ms  0x6c80 ret:0x7f626d20b820::7f626d20b820  30 93 cf 6c                                      0..l
 14097 ms  0x6c80 PK11_PubDeriveWithKDF()
 14097 ms  0x6c80 seckey:0x7f626d20b820
 14097 ms     | 0x6c80 EC_ValidatePublicKey()
 14097 ms     | 0x6c80 ret:0x0
 14098 ms  0x6c80 ret:0x7f624ecf3b00
 14098 ms  0x6c80 PK11_DeriveWithFlags()
 14098 ms  0x6c80 basekey:0x7f624ecf3b00
 14098 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14098 ms  0x6c80 ret:0x7f625fc9b580
 14098 ms  0x6c80 PK11_Derive()
 14098 ms  0x6c80 basekey:0x7f625fc9b580
 14098 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14098 ms  0x6c80 ret:0x7f625fea7a00
 14098 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14098 ms  0x6c80 privk:0x7f626d20b820::7f626d20b820  30 93 cf 6c                                      0..l
 14098 ms  0x6c80 privk:0x7f626d20b820::7f626d20b820  e5 e5 e5 e5                                      ....
 14098 ms  0x6c80 PK11_Encrypt()
 14098 ms  0x6c80 symkey:0x7f625fc9b800
           /* TID 0x6c88 */
 14099 ms  0x6c88 PR_Close()
 14099 ms  0x6c88 fd:0x7f6266131880
           /* TID 0x6c80 */
 14102 ms  0x6c80 PK11_Encrypt()
 14102 ms  0x6c80 symkey:0x7f625fc9b080
 14102 ms  SECKEY_ECParamsToKeySize()
 14102 ms  0x6c80 ret:0xff
 14102 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14102 ms  0x6c80 cx:0x7f626cba3468
 14104 ms     | 0x6c80 EC_ValidatePublicKey()
 14104 ms     | 0x6c80 ret:0x0
 14104 ms  0x6c80 ret:0x7f626d20e020::7f626d20e020  30 93 cf 6c                                      0..l
 14104 ms  0x6c80 PK11_PubDeriveWithKDF()
 14104 ms  0x6c80 seckey:0x7f626d20e020
 14104 ms     | 0x6c80 EC_ValidatePublicKey()
 14104 ms     | 0x6c80 ret:0x0
 14106 ms  0x6c80 ret:0x7f624ecf3b00
 14106 ms  0x6c80 PK11_DeriveWithFlags()
 14106 ms  0x6c80 basekey:0x7f624ecf3b00
 14106 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14106 ms  0x6c80 ret:0x7f6265fe9580
 14106 ms  0x6c80 PK11_Derive()
 14106 ms  0x6c80 basekey:0x7f6265fe9580
 14106 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14106 ms  0x6c80 ret:0x7f6265fe9600
 14106 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14106 ms  0x6c80 privk:0x7f626d20e020::7f626d20e020  30 93 cf 6c                                      0..l
 14106 ms  0x6c80 privk:0x7f626d20e020::7f626d20e020  e5 e5 e5 e5                                      ....
 14106 ms  0x6c80 PK11_Encrypt()
 14106 ms  0x6c80 symkey:0x7f6265fe9800
 14108 ms  SECKEY_ECParamsToKeySize()
 14108 ms  0x6c80 ret:0xff
 14108 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14108 ms  0x6c80 cx:0x7f626d2b7308
 14108 ms     | 0x6c80 EC_ValidatePublicKey()
 14108 ms     | 0x6c80 ret:0x0
 14109 ms  0x6c80 ret:0x7f626d214020::7f626d214020  40 97 cf 6c                                      @..l
 14109 ms  0x6c80 PK11_PubDeriveWithKDF()
 14109 ms  0x6c80 seckey:0x7f626d214020
 14109 ms     | 0x6c80 EC_ValidatePublicKey()
 14109 ms     | 0x6c80 ret:0x0
 14109 ms  0x6c80 ret:0x7f624ecf3b00
 14109 ms  0x6c80 PK11_DeriveWithFlags()
 14109 ms  0x6c80 basekey:0x7f624ecf3b00
 14109 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14109 ms  0x6c80 ret:0x7f6265fea900
 14109 ms  0x6c80 PK11_Derive()
 14109 ms  0x6c80 basekey:0x7f6265fea900
 14109 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14109 ms  0x6c80 ret:0x7f6265feaa00
 14109 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14109 ms  0x6c80 privk:0x7f626d214020::7f626d214020  40 97 cf 6c                                      @..l
 14109 ms  0x6c80 privk:0x7f626d214020::7f626d214020  e5 e5 e5 e5                                      ....
 14109 ms  0x6c80 PK11_Encrypt()
 14109 ms  0x6c80 symkey:0x7f6265ff1800
           /* TID 0x6c88 */
 14114 ms  0x6c88 PR_Close()
 14114 ms  0x6c88 fd:0x7f6260a4a880
 14115 ms  0x6c88 PR_Close()
 14115 ms  0x6c88 fd:0x7f6260a4a880
           /* TID 0x6c80 */
 14115 ms  SECKEY_ECParamsToKeySize()
 14115 ms  0x6c80 ret:0xff
 14115 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14115 ms  0x6c80 cx:0x7f626d2b7988
 14116 ms     | 0x6c80 EC_ValidatePublicKey()
 14116 ms     | 0x6c80 ret:0x0
 14116 ms  0x6c80 ret:0x7f626d214820::7f626d214820  f0 96 cf 6c                                      ...l
 14116 ms  0x6c80 PK11_PubDeriveWithKDF()
 14116 ms  0x6c80 seckey:0x7f626d214820
 14116 ms     | 0x6c80 EC_ValidatePublicKey()
 14116 ms     | 0x6c80 ret:0x0
 14116 ms  0x6c80 ret:0x7f624ecf3b00
 14119 ms  0x6c80 PK11_DeriveWithFlags()
 14119 ms  0x6c80 basekey:0x7f624ecf3b00
 14119 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14119 ms  0x6c80 ret:0x7f6260ddb300
 14119 ms  0x6c80 PK11_Derive()
 14119 ms  0x6c80 basekey:0x7f6260ddb300
 14119 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14119 ms  0x6c80 ret:0x7f6265ff1b00
 14119 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14119 ms  0x6c80 privk:0x7f626d214820::7f626d214820  f0 96 cf 6c                                      ...l
 14119 ms  0x6c80 privk:0x7f626d214820::7f626d214820  e5 e5 e5 e5                                      ....
 14120 ms  0x6c80 PK11_Encrypt()
 14120 ms  0x6c80 symkey:0x7f6265ff1d80
 14120 ms  0x6c80 PK11_Encrypt()
 14120 ms  0x6c80 symkey:0x7f625fcc0580
 14120 ms  0x6c80 PK11_Encrypt()
 14120 ms  0x6c80 symkey:0x7f6265cdf700
           /* TID 0x6c88 */
 14121 ms  0x6c88 PR_Close()
 14121 ms  0x6c88 fd:0x7f6265fedd60
           /* TID 0x6c80 */
 14121 ms  0x6c80 PK11_Encrypt()
 14121 ms  0x6c80 symkey:0x7f625fea7300
 14123 ms  0x6c80 SSL_ImportFD()
 14123 ms  0x6c80 ret:0x7f62699b77c0
 14123 ms  0x6c80 SSL_AuthCertificateHook()
 14123 ms  0x6c80 fd:0x7f62699b77c0
 14123 ms  0x6c80 ret:0x0
 14123 ms  0x6c80 PR_Connect()
 14123 ms  0x6c80 fd:0x7f62699b77c0
 14134 ms  0x6c80 SSL_ImportFD()
 14134 ms  0x6c80 ret:0x7f626cccbc10
 14134 ms  0x6c80 SSL_AuthCertificateHook()
 14134 ms  0x6c80 fd:0x7f626cccbc10
 14134 ms  0x6c80 ret:0x0
 14134 ms  0x6c80 PR_Connect()
 14134 ms  0x6c80 fd:0x7f626cccbc10
 14143 ms  0x6c80 SSL_ImportFD()
 14143 ms  0x6c80 ret:0x7f626ccf2fa0
 14143 ms  0x6c80 SSL_AuthCertificateHook()
 14143 ms  0x6c80 fd:0x7f626ccf2fa0
 14143 ms  0x6c80 ret:0x0
 14143 ms  0x6c80 PR_Connect()
 14143 ms  0x6c80 fd:0x7f626ccf2fa0
 14152 ms  0x6c80 PR_Close()
 14152 ms  0x6c80 fd:0x7f6269a27a30
 14152 ms     | 0x6c80 PK11_Encrypt()
 14152 ms     | 0x6c80 symkey:0x7f6265878780
           /* TID 0x6c88 */
 14153 ms  0x6c88 PR_Close()
 14153 ms  0x6c88 fd:0x7f6260444ca0
           /* TID 0x6d17 */
 14153 ms  0x6d17 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14153 ms  0x6d17 ret:0x0
           /* TID 0x6c80 */
 14154 ms  0x6c80 SSL_AuthCertificateComplete()
 14154 ms  0x6c80 fd:0x7f6261bd5bb0
 14154 ms  0x6c80 err:0x0
 14155 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 14155 ms     | 0x6c80 privk:0x7f626a76c020::7f626a76c020  60 25 ec 69                                      `%.i
 14155 ms     | 0x6c80 privk:0x7f626a76c020::7f626a76c020  e5 e5 e5 e5                                      ....
 14155 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 14155 ms     | 0x6c80 privk:0x7f626a76a020::7f626a76a020  70 c4 d5 68                                      p..h
 14155 ms     | 0x6c80 privk:0x7f626a76a020::7f626a76a020  e5 e5 e5 e5                                      ....
 14155 ms  0x6c80 SSL_AuthCertificateComplete()
 14155 ms  0x6c80 fd:0x7f626a784f40
 14155 ms  0x6c80 err:0x0
 14155 ms  0x6c80 PK11_Encrypt()
 14155 ms  0x6c80 symkey:0x7f626089d800
 14155 ms  0x6c80 PK11_Encrypt()
 14155 ms  0x6c80 symkey:0x7f626089d800
 14156 ms  0x6c80 PK11_Encrypt()
 14156 ms  0x6c80 symkey:0x7f6265fe9800
 14156 ms  0x6c80 PK11_Encrypt()
 14156 ms  0x6c80 symkey:0x7f626089d800
           /* TID 0x6d16 */
 14162 ms  0x6d16 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14162 ms  0x6d16 ret:0x0
           /* TID 0x6c88 */
 14162 ms  0x6c88 PR_Close()
 14162 ms  0x6c88 fd:0x7f62699b79d0
           /* TID 0x6c80 */
 14163 ms  0x6c80 SSL_AuthCertificateComplete()
 14163 ms  0x6c80 fd:0x7f6261bd5fd0
 14163 ms  0x6c80 err:0x0
 14163 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 14163 ms     | 0x6c80 privk:0x7f6269f87020::7f6269f87020  b0 e0 ab 69                                      ...i
 14163 ms     | 0x6c80 privk:0x7f6269f87020::7f6269f87020  e5 e5 e5 e5                                      ....
 14163 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 14163 ms     | 0x6c80 privk:0x7f6269f85020::7f6269f85020  c0 b4 a5 69                                      ...i
 14163 ms     | 0x6c80 privk:0x7f6269f85020::7f6269f85020  e5 e5 e5 e5                                      ....
 14164 ms  0x6c80 PK11_Encrypt()
 14164 ms  0x6c80 symkey:0x7f625fca9b80
           /* TID 0x6c88 */
 14179 ms  0x6c88 PR_Close()
 14179 ms  0x6c88 fd:0x7f6265fedd60
           /* TID 0x6c80 */
 14181 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14181 ms  0x6c80 cx:0x7f6287fa72c8
 14182 ms     | 0x6c80 EC_ValidatePublicKey()
 14182 ms     | 0x6c80 ret:0x0
 14182 ms  0x6c80 ret:0x7f6269f86820::7f6269f86820  c0 b4 a5 69                                      ...i
 14182 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14182 ms  0x6c80 cx:0x7f6287fa72c8
 14183 ms     | 0x6c80 EC_ValidatePublicKey()
 14184 ms     | 0x6c80 ret:0x0
 14184 ms  0x6c80 ret:0x7f626a76f820::7f626a76f820  d0 bd a5 69                                      ...i
 14188 ms  0x6c80 PK11_Encrypt()
 14188 ms  0x6c80 symkey:0x7f6265baf900
           /* TID 0x6c88 */
 14190 ms  0x6c88 PR_Close()
 14190 ms  0x6c88 fd:0x7f6266131c70
           /* TID 0x6cdb */
 14190 ms  0x6cdb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14190 ms  0x6cdb ret:0x0
           /* TID 0x6c80 */
 14190 ms  0x6c80 SSL_AuthCertificateComplete()
 14190 ms  0x6c80 fd:0x7f6261bd50d0
 14190 ms  0x6c80 err:0x0
 14190 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 14190 ms     | 0x6c80 privk:0x7f626a75e820::7f626a75e820  b0 05 e2 69                                      ...i
 14190 ms     | 0x6c80 privk:0x7f626a75e820::7f626a75e820  e5 e5 e5 e5                                      ....
 14190 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 14190 ms     | 0x6c80 privk:0x7f626a60c820::7f626a60c820  f0 e1 ab 69                                      ...i
 14190 ms     | 0x6c80 privk:0x7f626a60c820::7f626a60c820  e5 e5 e5 e5                                      ....
 14191 ms  0x6c80 PK11_Encrypt()
 14191 ms  0x6c80 symkey:0x7f625fca8d80
 14192 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14192 ms  0x6c80 cx:0x7f626df5b0a8
 14192 ms     | 0x6c80 EC_ValidatePublicKey()
 14192 ms     | 0x6c80 ret:0x0
 14193 ms  0x6c80 ret:0x7f6261bc8020::7f6261bc8020  80 18 1b 66                                      ...f
 14193 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14193 ms  0x6c80 cx:0x7f626df5b0a8
 14193 ms     | 0x6c80 EC_ValidatePublicKey()
 14200 ms     | 0x6c80 ret:0x0
 14200 ms  0x6c80 ret:0x7f626a60c820::7f626a60c820  f0 e1 ab 69                                      ...i
           /* TID 0x6c88 */
 14202 ms  0x6c88 PR_Close()
 14202 ms  0x6c88 fd:0x7f62617c4700
           /* TID 0x6c80 */
 14210 ms  0x6c80 PK11_Encrypt()
 14210 ms  0x6c80 symkey:0x7f625fcc1b00
 14211 ms  0x6c80 PK11_Encrypt()
 14211 ms  0x6c80 symkey:0x7f625fcffd00
 14212 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14212 ms  0x6c80 cx:0x7f626df5b248
 14213 ms     | 0x6c80 EC_ValidatePublicKey()
 14213 ms     | 0x6c80 ret:0x0
 14213 ms  0x6c80 ret:0x7f624ec53820::7f624ec53820  30 ad dd 6c                                      0..l
 14213 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14213 ms  0x6c80 cx:0x7f626df5b248
 14214 ms     | 0x6c80 EC_ValidatePublicKey()
 14215 ms     | 0x6c80 ret:0x0
 14215 ms  0x6c80 ret:0x7f624ec55820::7f624ec55820  50 e1 29 6d                                      P.)m
           /* TID 0x6c88 */
 14217 ms  0x6c88 PR_Close()
 14217 ms  0x6c88 fd:0x7f624ec7b1f0
           /* TID 0x6c80 */
 14221 ms  0x6c80 PK11_Encrypt()
 14221 ms  0x6c80 symkey:0x7f625fcc0580
 14222 ms  0x6c80 SSL_ImportFD()
 14222 ms  0x6c80 ret:0x7f624ec7b460
 14222 ms  0x6c80 SSL_AuthCertificateHook()
 14222 ms  0x6c80 fd:0x7f624ec7b460
 14222 ms  0x6c80 ret:0x0
 14223 ms  0x6c80 PR_Connect()
 14223 ms  0x6c80 fd:0x7f624ec7b460
 14227 ms  0x6c80 PK11_Encrypt()
 14227 ms  0x6c80 symkey:0x7f625fca9f00
 14228 ms  0x6c80 SSL_ImportFD()
 14229 ms  0x6c80 ret:0x7f624ec7b700
 14229 ms  0x6c80 SSL_AuthCertificateHook()
 14229 ms  0x6c80 fd:0x7f624ec7b700
 14229 ms  0x6c80 ret:0x0
 14229 ms  0x6c80 PR_Connect()
 14229 ms  0x6c80 fd:0x7f624ec7b700
 14231 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14231 ms  0x6c80 privk:0x7f626a764820::7f626a764820  50 81 f2 69                                      P..i
 14231 ms  0x6c80 privk:0x7f626a764820::7f626a764820  e5 e5 e5 e5                                      ....
 14231 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14231 ms  0x6c80 privk:0x7f626a761020::7f626a761020  30 2d ec 69                                      0-.i
 14231 ms  0x6c80 privk:0x7f626a761020::7f626a761020  e5 e5 e5 e5                                      ....
 14231 ms  0x6c80 PR_Close()
 14231 ms  0x6c80 fd:0x7f626acc87f0
 14231 ms     | 0x6c80 PK11_Encrypt()
 14231 ms     | 0x6c80 symkey:0x7f6262ecbe80
 14235 ms  0x6c80 SSL_ImportFD()
 14235 ms  0x6c80 ret:0x7f624ec7ba30
 14235 ms  0x6c80 SSL_AuthCertificateHook()
 14235 ms  0x6c80 fd:0x7f624ec7ba30
 14235 ms  0x6c80 ret:0x0
 14235 ms  0x6c80 PR_Connect()
 14235 ms  0x6c80 fd:0x7f624ec7ba30
 14242 ms  0x6c80 PK11_Derive()
 14242 ms  0x6c80 basekey:0x7f62617b2800
 14242 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14243 ms  0x6c80 ret:0x7f625fc9b600
 14243 ms  0x6c80 PK11_Encrypt()
 14243 ms  0x6c80 symkey:0x7f6262ecbf80
 14244 ms  0x6c80 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14244 ms  0x6c80 ret:0x0
 14244 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14244 ms  0x6c80 privk:0x7f626a76f820::7f626a76f820  d0 bd a5 69                                      ...i
 14244 ms  0x6c80 privk:0x7f626a76f820::7f626a76f820  e5 e5 e5 e5                                      ....
 14244 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14244 ms  0x6c80 privk:0x7f6269f86820::7f6269f86820  c0 b4 a5 69                                      ...i
 14244 ms  0x6c80 privk:0x7f6269f86820::7f6269f86820  e5 e5 e5 e5                                      ....
 14244 ms  0x6c80 PK11_Encrypt()
 14244 ms  0x6c80 symkey:0x7f6262ecbf80
           /* TID 0x6c88 */
 14250 ms  0x6c88 PR_Close()
 14250 ms  0x6c88 fd:0x7f624ec7bbe0
           /* TID 0x6c80 */
 14250 ms  0x6c80 PK11_Encrypt()
 14250 ms  0x6c80 symkey:0x7f625fca9880
 14256 ms  0x6c80 PK11_Encrypt()
 14256 ms  0x6c80 symkey:0x7f625fcc0280
 14258 ms  0x6c80 PK11_Derive()
 14258 ms  0x6c80 basekey:0x7f6265877780
 14258 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14258 ms  0x6c80 ret:0x7f6262ecbd80
 14258 ms  0x6c80 PK11_Encrypt()
 14258 ms  0x6c80 symkey:0x7f6265878400
 14259 ms  0x6c80 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14259 ms  0x6c80 ret:0x0
 14259 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14259 ms  0x6c80 privk:0x7f626a60c820::7f626a60c820  f0 e1 ab 69                                      ...i
 14259 ms  0x6c80 privk:0x7f626a60c820::7f626a60c820  e5 e5 e5 e5                                      ....
 14259 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14259 ms  0x6c80 privk:0x7f6261bc8020::7f6261bc8020  80 18 1b 66                                      ...f
 14259 ms  0x6c80 privk:0x7f6261bc8020::7f6261bc8020  e5 e5 e5 e5                                      ....
 14259 ms  0x6c80 PK11_Encrypt()
 14259 ms  0x6c80 symkey:0x7f6265878400
 14264 ms  0x6c80 SSL_ImportFD()
 14264 ms  0x6c80 ret:0x7f624ec7beb0
 14264 ms  0x6c80 SSL_AuthCertificateHook()
 14264 ms  0x6c80 fd:0x7f624ec7beb0
 14264 ms  0x6c80 ret:0x0
 14265 ms  0x6c80 PR_Connect()
 14265 ms  0x6c80 fd:0x7f624ec7beb0
 14273 ms  0x6c80 PK11_Derive()
 14273 ms  0x6c80 basekey:0x7f62663dce80
 14273 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14273 ms  0x6c80 ret:0x7f624ecf3b00
 14273 ms  0x6c80 PK11_Encrypt()
 14273 ms  0x6c80 symkey:0x7f62663e0780
 14274 ms  0x6c80 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14274 ms  0x6c80 ret:0x0
 14274 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14274 ms  0x6c80 privk:0x7f624ec55820::7f624ec55820  50 e1 29 6d                                      P.)m
 14275 ms  0x6c80 privk:0x7f624ec55820::7f624ec55820  e5 e5 e5 e5                                      ....
 14275 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14275 ms  0x6c80 privk:0x7f624ec53820::7f624ec53820  30 ad dd 6c                                      0..l
 14275 ms  0x6c80 privk:0x7f624ec53820::7f624ec53820  e5 e5 e5 e5                                      ....
 14275 ms  0x6c80 PK11_Encrypt()
 14275 ms  0x6c80 symkey:0x7f62663e0780
           /* TID 0x6c88 */
 14279 ms  0x6c88 PR_Close()
 14279 ms  0x6c88 fd:0x7f62617c4700
           /* TID 0x6c80 */
 14286 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14286 ms  0x6c80 cx:0x7f626df5b3e8
 14287 ms     | 0x6c80 EC_ValidatePublicKey()
 14287 ms     | 0x6c80 ret:0x0
 14287 ms  0x6c80 ret:0x7f6265005820::7f6265005820  b0 b5 a5 69                                      ...i
 14287 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14287 ms  0x6c80 cx:0x7f626df5b3e8
 14287 ms     | 0x6c80 EC_ValidatePublicKey()
 14289 ms     | 0x6c80 ret:0x0
 14289 ms  0x6c80 ret:0x7f6265008020::7f6265008020  a0 e1 ab 69                                      ...i
           /* TID 0x6c88 */
 14310 ms  0x6c88 PR_Close()
 14310 ms  0x6c88 fd:0x7f624ec7b3d0
           /* TID 0x6c80 */
 14315 ms  SECKEY_ECParamsToKeySize()
 14315 ms  0x6c80 ret:0xff
 14315 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14315 ms  0x6c80 cx:0x7f626d2b6c88
 14315 ms     | 0x6c80 EC_ValidatePublicKey()
 14315 ms     | 0x6c80 ret:0x0
 14315 ms  0x6c80 ret:0x7f626500d820::7f626500d820  20 2e ec 69                                       ..i
 14315 ms  0x6c80 PK11_PubDeriveWithKDF()
 14315 ms  0x6c80 seckey:0x7f626500d820
 14315 ms     | 0x6c80 EC_ValidatePublicKey()
 14315 ms     | 0x6c80 ret:0x0
 14316 ms  0x6c80 ret:0x7f62661a7a80
 14316 ms  0x6c80 PK11_DeriveWithFlags()
 14316 ms  0x6c80 basekey:0x7f62661a7a80
 14316 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14316 ms  0x6c80 ret:0x7f6268c93880
 14316 ms  0x6c80 PK11_Derive()
 14316 ms  0x6c80 basekey:0x7f6268c93880
 14316 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14316 ms  0x6c80 ret:0x7f6268d61380
 14316 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14316 ms  0x6c80 privk:0x7f626500d820::7f626500d820  20 2e ec 69                                       ..i
 14316 ms  0x6c80 privk:0x7f626500d820::7f626500d820  e5 e5 e5 e5                                      ....
 14316 ms  0x6c80 PK11_Encrypt()
 14316 ms  0x6c80 symkey:0x7f6268d61b00
 14317 ms  0x6c80 SSL_AuthCertificateComplete()
 14317 ms  0x6c80 fd:0x7f62699b7d60
 14317 ms  0x6c80 err:0x0
 14317 ms  0x6c80 PK11_Encrypt()
 14317 ms  0x6c80 symkey:0x7f6268d61b00
 14319 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14319 ms  0x6c80 privk:0x7f626a766020::7f626a766020  d0 2d ec 69                                      .-.i
 14319 ms  0x6c80 privk:0x7f626a766020::7f626a766020  e5 e5 e5 e5                                      ....
 14319 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14319 ms  0x6c80 privk:0x7f6269f7b820::7f6269f7b820  60 7f 3a 66                                      `.:f
 14319 ms  0x6c80 privk:0x7f6269f7b820::7f6269f7b820  e5 e5 e5 e5                                      ....
 14319 ms  0x6c80 PK11_Encrypt()
 14319 ms  0x6c80 symkey:0x7f6265877400
           /* TID 0x6c88 */
 14328 ms  0x6c88 PR_Close()
 14328 ms  0x6c88 fd:0x7f6269a27820
           /* TID 0x6d19 */
 14328 ms  0x6d19 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14328 ms  0x6d19 ret:0x0
           /* TID 0x6c80 */
 14328 ms  0x6c80 SSL_AuthCertificateComplete()
 14328 ms  0x6c80 fd:0x7f62617c44c0
 14328 ms  0x6c80 err:0x0
 14328 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 14328 ms     | 0x6c80 privk:0x7f6261789020::7f6261789020  f0 ab 1b 66                                      ...f
 14328 ms     | 0x6c80 privk:0x7f6261789020::7f6261789020  e5 e5 e5 e5                                      ....
 14328 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 14328 ms     | 0x6c80 privk:0x7f6261772020::7f6261772020  30 83 3e 61                                      0.>a
 14328 ms     | 0x6c80 privk:0x7f6261772020::7f6261772020  e5 e5 e5 e5                                      ....
 14328 ms  0x6c80 PK11_Encrypt()
 14328 ms  0x6c80 symkey:0x7f625ff49f00
 14336 ms  0x6c80 PK11_Encrypt()
 14336 ms  0x6c80 symkey:0x7f62611c3880
 14337 ms  0x6c80 PK11_Encrypt()
 14337 ms  0x6c80 symkey:0x7f62613c0a80
 14351 ms  0x6c80 PK11_Derive()
 14351 ms  0x6c80 basekey:0x7f6262e6ca80
 14351 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14351 ms  0x6c80 ret:0x7f62661a7a80
 14351 ms  0x6c80 PK11_Encrypt()
 14351 ms  0x6c80 symkey:0x7f62661a7480
 14352 ms  0x6c80 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14352 ms  0x6c80 ret:0x0
 14352 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14352 ms  0x6c80 privk:0x7f6265008020::7f6265008020  a0 e1 ab 69                                      ...i
 14352 ms  0x6c80 privk:0x7f6265008020::7f6265008020  e5 e5 e5 e5                                      ....
 14352 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14352 ms  0x6c80 privk:0x7f6265005820::7f6265005820  b0 b5 a5 69                                      ...i
 14352 ms  0x6c80 privk:0x7f6265005820::7f6265005820  e5 e5 e5 e5                                      ....
 14353 ms  0x6c80 PK11_Encrypt()
 14353 ms  0x6c80 symkey:0x7f62661a7480
 14375 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14375 ms  0x6c80 privk:0x7f626dc78820::7f626dc78820  e0 62 91 6a                                      .b.j
 14375 ms  0x6c80 privk:0x7f626dc78820::7f626dc78820  e5 e5 e5 e5                                      ....
 14375 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14375 ms  0x6c80 privk:0x7f626dc6b020::7f626dc6b020  f0 db 90 6a                                      ...j
 14375 ms  0x6c80 privk:0x7f626dc6b020::7f626dc6b020  e5 e5 e5 e5                                      ....
 14375 ms  0x6c80 PR_Close()
 14375 ms  0x6c80 fd:0x7f626a784f40
 14375 ms     | 0x6c80 PK11_Encrypt()
 14375 ms     | 0x6c80 symkey:0x7f6265fe9800
           /* TID 0x6d17 */
 14409 ms  0x6d17 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14409 ms  0x6d17 ret:0x0
           /* TID 0x6c88 */
 14410 ms  0x6c88 PR_Close()
 14410 ms  0x6c88 fd:0x7f6260894250
           /* TID 0x6c80 */
 14410 ms  0x6c80 SSL_AuthCertificateComplete()
 14410 ms  0x6c80 fd:0x7f6269eabbe0
 14410 ms  0x6c80 err:0x0
 14410 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 14410 ms     | 0x6c80 privk:0x7f6269f83020::7f6269f83020  60 da 08 6a                                      `..j
 14410 ms     | 0x6c80 privk:0x7f6269f83020::7f6269f83020  e5 e5 e5 e5                                      ....
 14410 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 14410 ms     | 0x6c80 privk:0x7f6269f79820::7f6269f79820  e0 8c f2 69                                      ...i
 14410 ms     | 0x6c80 privk:0x7f6269f79820::7f6269f79820  e5 e5 e5 e5                                      ....
 14411 ms  0x6c80 PK11_Encrypt()
 14411 ms  0x6c80 symkey:0x7f6265ff1800
 14411 ms  0x6c80 PK11_Encrypt()
 14411 ms  0x6c80 symkey:0x7f6265ff1800
 14412 ms  0x6c80 PK11_Encrypt()
 14412 ms  0x6c80 symkey:0x7f6265ff1800
           /* TID 0x6c88 */
 14419 ms  0x6c88 PR_Close()
 14419 ms  0x6c88 fd:0x7f6260894250
           /* TID 0x6d16 */
 14420 ms  0x6d16 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14420 ms  0x6d16 ret:0x0
           /* TID 0x6c80 */
 14420 ms  0x6c80 SSL_AuthCertificateComplete()
 14420 ms  0x6c80 fd:0x7f6269a27c10
 14420 ms  0x6c80 err:0x0
 14420 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 14420 ms     | 0x6c80 privk:0x7f626ac7d820::7f626ac7d820  40 67 91 6a                                      @g.j
 14420 ms     | 0x6c80 privk:0x7f626ac7d820::7f626ac7d820  e5 e5 e5 e5                                      ....
 14421 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 14421 ms     | 0x6c80 privk:0x7f626a777020::7f626a777020  00 3b 0a 6a                                      .;.j
 14421 ms     | 0x6c80 privk:0x7f626a777020::7f626a777020  e5 e5 e5 e5                                      ....
 14421 ms  0x6c80 PK11_Encrypt()
 14421 ms  0x6c80 symkey:0x7f6265ff1d80
 14422 ms  0x6c80 SSL_ImportFD()
 14422 ms  0x6c80 ret:0x7f62699a5d00
 14422 ms  0x6c80 SSL_AuthCertificateHook()
 14422 ms  0x6c80 fd:0x7f62699a5d00
 14422 ms  0x6c80 ret:0x0
 14422 ms  0x6c80 PR_Connect()
 14422 ms  0x6c80 fd:0x7f62699a5d00
 14423 ms  0x6c80 PK11_Encrypt()
 14423 ms  0x6c80 symkey:0x7f6265ff1800
 14423 ms  0x6c80 PR_Close()
 14423 ms  0x6c80 fd:0x7f6269a27c10
 14423 ms     | 0x6c80 PK11_Encrypt()
 14423 ms     | 0x6c80 symkey:0x7f6265ff1d80
           /* TID 0x6c88 */
 14431 ms  0x6c88 PR_Close()
 14431 ms  0x6c88 fd:0x7f624ec7be20
 14434 ms  0x6c88 PR_Close()
 14434 ms  0x6c88 fd:0x7f6260894250
 14434 ms  0x6c88 PR_Close()
 14434 ms  0x6c88 fd:0x7f6269a6bc10
 14434 ms  0x6c88 PR_Close()
 14434 ms  0x6c88 fd:0x7f626a7d1340
 14435 ms  0x6c88 PR_Close()
 14435 ms  0x6c88 fd:0x7f626a7d1580
 14435 ms  0x6c88 PR_Close()
 14435 ms  0x6c88 fd:0x7f626a7dbee0
 14435 ms  0x6c88 PR_Close()
 14435 ms  0x6c88 fd:0x7f626a99d6d0
 14454 ms  0x6c88 PR_Close()
 14454 ms  0x6c88 fd:0x7f6260894250
 14454 ms  0x6c88 PR_Close()
 14454 ms  0x6c88 fd:0x7f6269a6bc10
 14454 ms  0x6c88 PR_Close()
 14454 ms  0x6c88 fd:0x7f626a7d1340
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626a7d1580
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626a7dbee0
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626a99d6d0
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626acc87f0
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626cb0b160
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626cbb2790
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626cbb28b0
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626cbb2910
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626cbb2d00
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626cccbfa0
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626ccf2f40
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626cd0a0d0
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626df06cd0
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626df06d30
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626df06d90
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626df06df0
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626df06e50
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626df06eb0
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626df06f10
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626df06f70
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626df06fd0
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626df57070
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626df570d0
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626df57130
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626df57190
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f624ec7be20
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626487d040
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f6269a27c10
 14455 ms  0x6c88 PR_Close()
 14455 ms  0x6c88 fd:0x7f626df571f0
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626df57250
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626df572b0
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626df57310
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626df57370
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626df573d0
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626df57430
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626df57490
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626df574f0
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626df57550
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626df575b0
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626df57610
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626df576a0
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626df57850
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626df57a30
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626df57ac0
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626df57b50
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626df57c70
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626df57cd0
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626e24f100
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626e24f160
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626e24f2e0
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626e24f460
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626e24f610
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626e24f7c0
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626e24fb80
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626e24fe20
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626e24fe80
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626eab8100
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626eab8160
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626eab8430
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626eab8490
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626eab84f0
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626eab8820
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626eab8970
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626eab89d0
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626eab8a30
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626eab8ac0
 14462 ms  0x6c88 PR_Close()
 14462 ms  0x6c88 fd:0x7f626eab8b20
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626eab8b80
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626eab8be0
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626eab8ca0
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626eab8d00
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626eab8d60
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626eab8ee0
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626eab8f40
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626ee20100
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626ee5d100
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626ee5d190
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626ee5d220
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626ee5d520
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626ee5d580
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626ee5dcd0
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626ee5ddf0
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626ee5df10
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626ee5f070
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626ee5f5e0
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626ee5f6d0
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626ee876d0
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626eeb9910
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626f856070
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626f8562b0
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626f856760
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626f8567c0
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626f875160
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626f8756a0
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626f875700
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626f875850
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626f8758b0
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626f8c8220
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626f8c8310
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626f8c8430
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626f8c8490
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f626f8c8820
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f627093b640
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f6270949100
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f6270949490
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f6270949550
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f62709495b0
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f6270949610
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f62709496d0
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f6270949730
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f62709497c0
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f62709498b0
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f6270949940
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f62709499a0
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f6270949a00
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f6270949a60
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f6270949bb0
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f6270949d90
 14463 ms  0x6c88 PR_Close()
 14463 ms  0x6c88 fd:0x7f627095b040
 14464 ms  0x6c88 PR_Close()
 14464 ms  0x6c88 fd:0x7f627095b0a0
 14464 ms  0x6c88 PR_Close()
 14464 ms  0x6c88 fd:0x7f627095b100
 14464 ms  0x6c88 PR_Close()
 14464 ms  0x6c88 fd:0x7f627095b220
 14464 ms  0x6c88 PR_Close()
 14464 ms  0x6c88 fd:0x7f627095b280
 14464 ms  0x6c88 PR_Close()
 14464 ms  0x6c88 fd:0x7f627095b310
 14464 ms  0x6c88 PR_Close()
 14464 ms  0x6c88 fd:0x7f627095b3a0
 14464 ms  0x6c88 PR_Close()
 14464 ms  0x6c88 fd:0x7f6260894250
 14464 ms  0x6c88 PR_Close()
 14464 ms  0x6c88 fd:0x7f6269a6bc10
 14464 ms  0x6c88 PR_Close()
 14464 ms  0x6c88 fd:0x7f626a7d1340
 14464 ms  0x6c88 PR_Close()
 14464 ms  0x6c88 fd:0x7f626a7d1580
 14466 ms  0x6c88 PR_Close()
 14466 ms  0x6c88 fd:0x7f6260444b80
           /* TID 0x6c80 */
 14476 ms  0x6c80 SSL_ImportFD()
 14476 ms  0x6c80 ret:0x7f626583ad60
 14476 ms  0x6c80 SSL_AuthCertificateHook()
 14476 ms  0x6c80 fd:0x7f626583ad60
 14476 ms  0x6c80 ret:0x0
 14476 ms  0x6c80 PR_Connect()
 14476 ms  0x6c80 fd:0x7f626583ad60
 14478 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14478 ms  0x6c80 cx:0x7f626d2b62c8
 14478 ms     | 0x6c80 EC_ValidatePublicKey()
 14479 ms     | 0x6c80 ret:0x0
 14479 ms  0x6c80 ret:0x7f626178e820::7f626178e820  10 7f 85 64                                      ...d
 14479 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14479 ms  0x6c80 cx:0x7f626d2b62c8
 14479 ms     | 0x6c80 EC_ValidatePublicKey()
 14481 ms     | 0x6c80 ret:0x0
 14481 ms  0x6c80 ret:0x7f6265005020::7f6265005020  a0 ab 1b 66                                      ...f
           /* TID 0x6c88 */
 14487 ms  0x6c88 PR_Close()
 14487 ms  0x6c88 fd:0x7f62617c4790
           /* TID 0x6c80 */
 14487 ms  0x6c80 PK11_Encrypt()
 14487 ms  0x6c80 symkey:0x7f625fc9b080
           /* TID 0x6c88 */
 14494 ms  0x6c88 PR_Close()
 14494 ms  0x6c88 fd:0x7f624ec7b310
 14494 ms  0x6c88 PR_Close()
 14494 ms  0x6c88 fd:0x7f624ec7b310
 14495 ms  0x6c88 PR_Close()
 14495 ms  0x6c88 fd:0x7f624ec7b310
           /* TID 0x6c80 */
 14495 ms  0x6c80 PK11_Encrypt()
 14495 ms  0x6c80 symkey:0x7f6265cdf700
 14496 ms  0x6c80 PK11_Encrypt()
 14496 ms  0x6c80 symkey:0x7f625fea7300
 14498 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14498 ms  0x6c80 cx:0x7f626d2b6948
 14498 ms     | 0x6c80 EC_ValidatePublicKey()
 14498 ms     | 0x6c80 ret:0x0
 14498 ms  0x6c80 ret:0x7f6265008020::7f6265008020  60 aa 79 61                                      `.ya
 14499 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14499 ms  0x6c80 cx:0x7f626d2b6948
 14499 ms     | 0x6c80 EC_ValidatePublicKey()
 14500 ms     | 0x6c80 ret:0x0
 14500 ms  0x6c80 ret:0x7f6265011020::7f6265011020  50 a6 32 66                                      P.2f
 14501 ms  0x6c80 SSL_ImportFD()
 14501 ms  0x6c80 ret:0x7f6262ec1130
 14501 ms  0x6c80 SSL_AuthCertificateHook()
 14501 ms  0x6c80 fd:0x7f6262ec1130
 14501 ms  0x6c80 ret:0x0
 14501 ms  0x6c80 PR_Connect()
 14501 ms  0x6c80 fd:0x7f6262ec1130
           /* TID 0x6c88 */
 14514 ms  0x6c88 PR_Close()
 14514 ms  0x6c88 fd:0x7f6261bd5c70
 14514 ms  0x6c88 PR_Close()
 14514 ms  0x6c88 fd:0x7f626a7dbee0
           /* TID 0x6c80 */
 14515 ms  0x6c80 SSL_ImportFD()
 14515 ms  0x6c80 ret:0x7f626cbb28b0
 14515 ms  0x6c80 SSL_AuthCertificateHook()
 14515 ms  0x6c80 fd:0x7f626cbb28b0
 14516 ms  0x6c80 ret:0x0
 14516 ms  0x6c80 PR_Connect()
 14516 ms  0x6c80 fd:0x7f626cbb28b0
 14524 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14524 ms  0x6c80 cx:0x7f626df5b588
 14525 ms     | 0x6c80 EC_ValidatePublicKey()
 14525 ms     | 0x6c80 ret:0x0
 14525 ms  0x6c80 ret:0x7f6265015020::7f6265015020  10 8f c8 68                                      ...h
 14525 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14525 ms  0x6c80 cx:0x7f626df5b588
 14525 ms     | 0x6c80 EC_ValidatePublicKey()
 14527 ms     | 0x6c80 ret:0x0
 14527 ms  0x6c80 ret:0x7f6265017020::7f6265017020  b0 cf d7 68                                      ...h
 14529 ms  0x6c80 SSL_ImportFD()
 14529 ms  0x6c80 ret:0x7f626df06dc0
 14529 ms  0x6c80 SSL_AuthCertificateHook()
 14529 ms  0x6c80 fd:0x7f626df06dc0
 14529 ms  0x6c80 ret:0x0
 14529 ms  0x6c80 PR_Connect()
 14529 ms  0x6c80 fd:0x7f626df06dc0
 14568 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14568 ms  0x6c80 privk:0x7f626a774820::7f626a774820  40 37 0a 6a                                      @7.j
 14568 ms  0x6c80 privk:0x7f626a774820::7f626a774820  e5 e5 e5 e5                                      ....
 14568 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14568 ms  0x6c80 privk:0x7f626a772020::7f626a772020  a0 db 08 6a                                      ...j
 14568 ms  0x6c80 privk:0x7f626a772020::7f626a772020  e5 e5 e5 e5                                      ....
 14568 ms  0x6c80 PR_Close()
 14568 ms  0x6c80 fd:0x7f62699b7d60
 14568 ms     | 0x6c80 PK11_Encrypt()
 14568 ms     | 0x6c80 symkey:0x7f6268d61b00
           /* TID 0x6c88 */
 14590 ms  0x6c88 PR_Close()
 14590 ms  0x6c88 fd:0x7f62617c46d0
           /* TID 0x6c80 */
 14590 ms  0x6c80 PK11_Encrypt()
 14590 ms  0x6c80 symkey:0x7f625fcffd00
 14596 ms  SECKEY_ECParamsToKeySize()
 14596 ms  0x6c80 ret:0x100
 14596 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14596 ms  0x6c80 cx:0x7f626d2b48c8
 14597 ms     | 0x6c80 EC_ValidatePublicKey()
 14599 ms     | 0x6c80 ret:0x0
 14602 ms  0x6c80 ret:0x7f626a609020::7f626a609020  f0 d6 08 6a                                      ...j
 14602 ms  0x6c80 PK11_PubDeriveWithKDF()
 14602 ms  0x6c80 seckey:0x7f626a609020
 14602 ms     | 0x6c80 EC_ValidatePublicKey()
 14605 ms     | 0x6c80 ret:0x0
 14610 ms  0x6c80 ret:0x7f6268d61380
 14610 ms  0x6c80 PK11_DeriveWithFlags()
 14610 ms  0x6c80 basekey:0x7f6268d61380
 14610 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14610 ms  0x6c80 ret:0x7f6268c93880
 14610 ms  0x6c80 PK11_Derive()
 14610 ms  0x6c80 basekey:0x7f6268c93880
 14610 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14610 ms  0x6c80 ret:0x7f6265ff1b00
 14610 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14610 ms  0x6c80 privk:0x7f626a609020::7f626a609020  f0 d6 08 6a                                      ...j
 14610 ms  0x6c80 privk:0x7f626a609020::7f626a609020  e5 e5 e5 e5                                      ....
 14610 ms  0x6c80 PK11_Encrypt()
 14610 ms  0x6c80 symkey:0x7f6268d61500
 14612 ms  0x6c80 PK11_Encrypt()
 14612 ms  0x6c80 symkey:0x7f625fcc0580
           /* TID 0x6c88 */
 14615 ms  0x6c88 PR_Close()
 14615 ms  0x6c88 fd:0x7f626df573a0
 14616 ms  0x6c88 PR_Close()
 14616 ms  0x6c88 fd:0x7f6269a6b250
           /* TID 0x6c80 */
 14616 ms  0x6c80 PK11_Encrypt()
 14616 ms  0x6c80 symkey:0x7f625fca9880
 14616 ms  0x6c80 PR_Connect()
 14616 ms  0x6c80 fd:0x7f626df57100
 14618 ms  0x6c80 SSL_ImportFD()
 14618 ms  0x6c80 ret:0x7f626df57490
 14618 ms  0x6c80 SSL_AuthCertificateHook()
 14618 ms  0x6c80 fd:0x7f626df57490
 14618 ms  0x6c80 ret:0x0
 14618 ms  0x6c80 PR_Connect()
 14618 ms  0x6c80 fd:0x7f626df57490
           /* TID 0x6c88 */
 14622 ms  0x6c88 PR_Close()
 14622 ms  0x6c88 fd:0x7f626df57430
 14623 ms  0x6c88 PR_Close()
 14623 ms  0x6c88 fd:0x7f626a7d1940
           /* TID 0x6c80 */
 14623 ms  0x6c80 PK11_Encrypt()
 14623 ms  0x6c80 symkey:0x7f625fcc1b00
 14624 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14624 ms  0x6c80 cx:0x7f626cba3468
 14625 ms     | 0x6c80 EC_ValidatePublicKey()
 14625 ms     | 0x6c80 ret:0x0
 14625 ms  0x6c80 ret:0x7f626a764020::7f626a764020  30 ad 79 61                                      0.ya
 14625 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14625 ms  0x6c80 cx:0x7f626cba3468
 14625 ms     | 0x6c80 EC_ValidatePublicKey()
 14627 ms     | 0x6c80 ret:0x0
 14627 ms  0x6c80 ret:0x7f626a767020::7f626a767020  90 d7 08 6a                                      ...j
 14635 ms  SECKEY_ECParamsToKeySize()
 14635 ms  0x6c80 ret:0x100
 14635 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14635 ms  0x6c80 cx:0x7f626cba3608
 14636 ms     | 0x6c80 EC_ValidatePublicKey()
 14637 ms     | 0x6c80 ret:0x0
 14637 ms  0x6c80 ret:0x7f626a775020::7f626a775020  90 12 64 6a                                      ..dj
 14637 ms  0x6c80 PK11_PubDeriveWithKDF()
 14637 ms  0x6c80 seckey:0x7f626a775020
 14637 ms     | 0x6c80 EC_ValidatePublicKey()
 14638 ms     | 0x6c80 ret:0x0
 14640 ms  0x6c80 ret:0x7f6268d61380
 14640 ms  0x6c80 PK11_DeriveWithFlags()
 14640 ms  0x6c80 basekey:0x7f6268d61380
 14640 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14640 ms  0x6c80 ret:0x7f6260ddb300
 14640 ms  0x6c80 PK11_Derive()
 14640 ms  0x6c80 basekey:0x7f6260ddb300
 14640 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14640 ms  0x6c80 ret:0x7f6265fe9600
 14640 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14640 ms  0x6c80 privk:0x7f626a775020::7f626a775020  90 12 64 6a                                      ..dj
 14640 ms  0x6c80 privk:0x7f626a775020::7f626a775020  e5 e5 e5 e5                                      ....
 14640 ms  0x6c80 PK11_Encrypt()
 14640 ms  0x6c80 symkey:0x7f6265ff1c00
           /* TID 0x6c88 */
 14651 ms  0x6c88 PR_Close()
 14651 ms  0x6c88 fd:0x7f626eab8b50
           /* TID 0x6c80 */
 14652 ms  0x6c80 PK11_Encrypt()
 14652 ms  0x6c80 symkey:0x7f6262ecbf80
 14654 ms  0x6c80 PR_Connect()
 14654 ms  0x6c80 fd:0x7f626eab8be0
           /* TID 0x6c88 */
 14670 ms  0x6c88 PR_Close()
 14670 ms  0x6c88 fd:0x7f626df572b0
           /* TID 0x6c80 */
 14683 ms  0x6c80 PK11_Encrypt()
 14683 ms  0x6c80 symkey:0x7f625fca9b80
 14691 ms  0x6c80 PK11_Encrypt()
 14691 ms  0x6c80 symkey:0x7f6265878400
           /* TID 0x6c88 */
 14692 ms  0x6c88 PR_Close()
 14692 ms  0x6c88 fd:0x7f626df570d0
           /* TID 0x6c80 */
 14713 ms  0x6c80 PK11_Encrypt()
 14713 ms  0x6c80 symkey:0x7f625fcc0580
 14722 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14722 ms  0x6c80 cx:0x7f626d2b7988
 14722 ms     | 0x6c80 EC_ValidatePublicKey()
 14722 ms     | 0x6c80 ret:0x0
 14722 ms  0x6c80 ret:0x7f626f81e020::7f626f81e020  d0 9d cf 6c                                      ...l
 14722 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14722 ms  0x6c80 cx:0x7f626d2b7988
 14723 ms     | 0x6c80 EC_ValidatePublicKey()
 14724 ms     | 0x6c80 ret:0x0
 14724 ms  0x6c80 ret:0x7f624edaa020::7f624edaa020  30 ad dd 6c                                      0..l
           /* TID 0x6c88 */
 14730 ms  0x6c88 PR_Close()
 14730 ms  0x6c88 fd:0x7f6260a4aee0
           /* TID 0x6c80 */
 14741 ms  SECKEY_ECParamsToKeySize()
 14741 ms  0x6c80 ret:0xff
 14741 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14741 ms  0x6c80 cx:0x7f626d2b62c8
 14742 ms     | 0x6c80 EC_ValidatePublicKey()
 14742 ms     | 0x6c80 ret:0x0
 14743 ms  0x6c80 ret:0x7f624edbc020::7f624edbc020  50 e6 29 6d                                      P.)m
 14743 ms  0x6c80 PK11_PubDeriveWithKDF()
 14743 ms  0x6c80 seckey:0x7f624edbc020
 14743 ms     | 0x6c80 EC_ValidatePublicKey()
 14743 ms     | 0x6c80 ret:0x0
 14744 ms  0x6c80 ret:0x7f6268d61380
 14744 ms  0x6c80 PK11_DeriveWithFlags()
 14744 ms  0x6c80 basekey:0x7f6268d61380
 14744 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14744 ms  0x6c80 ret:0x7f6265fe9580
 14744 ms  0x6c80 PK11_Derive()
 14744 ms  0x6c80 basekey:0x7f6265fe9580
 14744 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14744 ms  0x6c80 ret:0x7f626998b680
 14744 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14744 ms  0x6c80 privk:0x7f624edbc020::7f624edbc020  50 e6 29 6d                                      P.)m
 14744 ms  0x6c80 privk:0x7f624edbc020::7f624edbc020  e5 e5 e5 e5                                      ....
 14744 ms  0x6c80 PK11_Encrypt()
 14744 ms  0x6c80 symkey:0x7f6265fe9700
 14745 ms  0x6c80 SSL_ImportFD()
 14745 ms  0x6c80 ret:0x7f626f8c8820
 14745 ms  0x6c80 SSL_AuthCertificateHook()
 14745 ms  0x6c80 fd:0x7f626f8c8820
 14745 ms  0x6c80 ret:0x0
 14745 ms  0x6c80 PR_Connect()
 14745 ms  0x6c80 fd:0x7f626f8c8820
 14745 ms  0x6c80 SSL_ImportFD()
 14745 ms  0x6c80 ret:0x7f626f8c8220
 14745 ms  0x6c80 SSL_AuthCertificateHook()
 14745 ms  0x6c80 fd:0x7f626f8c8220
 14745 ms  0x6c80 ret:0x0
 14746 ms  0x6c80 PR_Connect()
 14746 ms  0x6c80 fd:0x7f626f8c8220
 14749 ms  0x6c80 SSL_ImportFD()
 14749 ms  0x6c80 ret:0x7f62709498e0
 14749 ms  0x6c80 SSL_AuthCertificateHook()
 14749 ms  0x6c80 fd:0x7f62709498e0
 14749 ms  0x6c80 ret:0x0
 14749 ms  0x6c80 PR_Connect()
 14749 ms  0x6c80 fd:0x7f62709498e0
 14753 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14753 ms  0x6c80 cx:0x7f626df5b728
 14754 ms     | 0x6c80 EC_ValidatePublicKey()
 14754 ms     | 0x6c80 ret:0x0
 14754 ms  0x6c80 ret:0x7f624edc0020::7f624edc0020  40 e7 29 6d                                      @.)m
 14754 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14754 ms  0x6c80 cx:0x7f626df5b728
 14754 ms     | 0x6c80 EC_ValidatePublicKey()
 14756 ms     | 0x6c80 ret:0x0
 14756 ms  0x6c80 ret:0x7f624edc2020::7f624edc2020  70 e9 29 6d                                      p.)m
 14761 ms  SECKEY_ECParamsToKeySize()
 14761 ms  0x6c80 ret:0xff
 14761 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14761 ms  0x6c80 cx:0x7f626d2b6948
 14762 ms     | 0x6c80 EC_ValidatePublicKey()
 14762 ms     | 0x6c80 ret:0x0
 14762 ms  0x6c80 ret:0x7f6265012020::7f6265012020  60 c0 2a 6d                                      `.*m
 14762 ms  0x6c80 PK11_PubDeriveWithKDF()
 14762 ms  0x6c80 seckey:0x7f6265012020
 14762 ms     | 0x6c80 EC_ValidatePublicKey()
 14762 ms     | 0x6c80 ret:0x0
 14762 ms  0x6c80 ret:0x7f6268d61380
 14762 ms  0x6c80 PK11_DeriveWithFlags()
 14762 ms  0x6c80 basekey:0x7f6268d61380
 14762 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14762 ms  0x6c80 ret:0x7f626cbff880
 14762 ms  0x6c80 PK11_Derive()
 14762 ms  0x6c80 basekey:0x7f626cbff880
 14762 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14762 ms  0x6c80 ret:0x7f626cbff900
 14762 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14762 ms  0x6c80 privk:0x7f6265012020::7f6265012020  60 c0 2a 6d                                      `.*m
 14762 ms  0x6c80 privk:0x7f6265012020::7f6265012020  e5 e5 e5 e5                                      ....
 14763 ms  0x6c80 PK11_Encrypt()
 14763 ms  0x6c80 symkey:0x7f626cbffa80
 14764 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14764 ms  0x6c80 cx:0x7f626df5bc08
 14765 ms     | 0x6c80 EC_ValidatePublicKey()
 14765 ms     | 0x6c80 ret:0x0
 14765 ms  0x6c80 ret:0x7f6265012020::7f6265012020  c0 ee 29 6d                                      ..)m
 14765 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14765 ms  0x6c80 cx:0x7f626df5bc08
 14765 ms     | 0x6c80 EC_ValidatePublicKey()
 14767 ms     | 0x6c80 ret:0x0
 14767 ms  0x6c80 ret:0x7f6265052820::7f6265052820  f0 c1 2a 6d                                      ..*m
           /* TID 0x6c88 */
 14774 ms  0x6c88 PR_Close()
 14774 ms  0x6c88 fd:0x7f6260a4aee0
           /* TID 0x6c80 */
 14782 ms  0x6c80 SSL_ImportFD()
 14782 ms  0x6c80 ret:0x7f627095b310
 14782 ms  0x6c80 SSL_AuthCertificateHook()
 14782 ms  0x6c80 fd:0x7f627095b310
 14782 ms  0x6c80 ret:0x0
 14782 ms  0x6c80 PR_Connect()
 14782 ms  0x6c80 fd:0x7f627095b310
           /* TID 0x6c88 */
 14791 ms  0x6c88 PR_Close()
 14791 ms  0x6c88 fd:0x7f62648bcf70
           /* TID 0x6d16 */
 14791 ms  0x6d16 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14791 ms  0x6d16 ret:0x0
           /* TID 0x6c80 */
 14794 ms  SECKEY_ECParamsToKeySize()
 14794 ms  0x6c80 ret:0xff
 14794 ms  0x6c80 SECKEY_CreateECPrivateKey()
 14794 ms  0x6c80 cx:0x7f626df5b588
 14795 ms     | 0x6c80 EC_ValidatePublicKey()
 14795 ms     | 0x6c80 ret:0x0
 14795 ms  0x6c80 ret:0x7f6265055820::7f6265055820  e0 ec 29 6d                                      ..)m
 14795 ms  0x6c80 PK11_PubDeriveWithKDF()
 14795 ms  0x6c80 seckey:0x7f6265055820
 14795 ms     | 0x6c80 EC_ValidatePublicKey()
 14795 ms     | 0x6c80 ret:0x0
 14795 ms  0x6c80 ret:0x7f6268d61380
 14795 ms  0x6c80 PK11_DeriveWithFlags()
 14795 ms  0x6c80 basekey:0x7f6268d61380
 14795 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14795 ms  0x6c80 ret:0x7f626cbff780
 14795 ms  0x6c80 PK11_Derive()
 14795 ms  0x6c80 basekey:0x7f626cbff780
 14795 ms     | 0x6c80 PK11_DeriveWithTemplate()
 14795 ms  0x6c80 ret:0x7f626cbffc80
 14795 ms  0x6c80 SECKEY_DestroyPrivateKey()
 14795 ms  0x6c80 privk:0x7f6265055820::7f6265055820  e0 ec 29 6d                                      ..)m
 14796 ms  0x6c80 privk:0x7f6265055820::7f6265055820  e5 e5 e5 e5                                      ....
 14796 ms  0x6c80 PK11_Encrypt()
 14796 ms  0x6c80 symkey:0x7f626cbfff00
 14796 ms  0x6c80 SSL_AuthCertificateComplete()
 14796 ms  0x6c80 fd:0x7f624ec7ba30
 14796 ms  0x6c80 err:0x0
 14796 ms  0x6c80 SSL_AuthCertificateComplete()
 14796 ms  0x6c80 fd:0x7f624ec7beb0
 14796 ms  0x6c80 err:0x0
 14797 ms  0x6c80 PK11_Encrypt()
 14797 ms  0x6c80 symkey:0x7f626cbfff00
 14797 ms  0x6c80 PK11_Encrypt()
 14797 ms  0x6c80 symkey:0x7f626cbfff00
 14797 ms  0x6c80 PK11_Encrypt()
 14797 ms  0x6c80 symkey:0x7f626cbffa80
 14797 ms  0x6c80 PR_Close()
 14797 ms  0x6c80 fd:0x7f626df57490
 14797 ms  0x6c80 PK11_Encrypt()
 14797 ms  0x6c80 symkey:0x7f626cbfff00
 14800 ms  0x6c80 PK11_Encrypt()
 14800 ms  0x6c80 symkey:0x7f626cbfff00
 14801 ms  0x6c80 PK11_Encrypt()
 14801 ms  0x6c80 symkey:0x7f626cbfff00
           /* TID 0x6cdb */
 14825 ms  0x6cdb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14825 ms  0x6cdb ret:0x0
 14825 ms  0x6cdb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14825 ms  0x6cdb ret:0x0
           /* TID 0x6c88 */
 14826 ms  0x6c88 PR_Close()
 14826 ms  0x6c88 fd:0x7f62648bcf70
 14827 ms  0x6c88 PR_Close()
 14827 ms  0x6c88 fd:0x7f62648bcf70
           /* TID 0x6d19 */
 15828 ms  0x6d19 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 15832 ms  0x6d19 ret:0x0
 15832 ms  0x6d19 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 15832 ms  0x6d19 ret:0x0
           /* TID 0x6c80 */
 15832 ms  SECKEY_ECParamsToKeySize()
 15832 ms  0x6c80 ret:0xff
 15833 ms  0x6c80 SECKEY_CreateECPrivateKey()
 15833 ms  0x6c80 cx:0x7f626cba3468
 15834 ms     | 0x6c80 EC_ValidatePublicKey()
 15834 ms     | 0x6c80 ret:0x0
 15834 ms  0x6c80 ret:0x7f626505d820::7f626505d820  80 dd 08 6a                                      ...j
 15835 ms  0x6c80 PK11_PubDeriveWithKDF()
 15835 ms  0x6c80 seckey:0x7f626505d820
 15835 ms     | 0x6c80 EC_ValidatePublicKey()
 15835 ms     | 0x6c80 ret:0x0
 15837 ms  0x6c80 ret:0x7f6268d61380
 15837 ms  0x6c80 PK11_DeriveWithFlags()
 15837 ms  0x6c80 basekey:0x7f6268d61380
 15837 ms     | 0x6c80 PK11_DeriveWithTemplate()
 15837 ms  0x6c80 ret:0x7f6266132400
 15837 ms  0x6c80 PK11_Derive()
 15837 ms  0x6c80 basekey:0x7f6266132400
 15837 ms     | 0x6c80 PK11_DeriveWithTemplate()
 15837 ms  0x6c80 ret:0x7f626cca1100
 15837 ms  0x6c80 SECKEY_DestroyPrivateKey()
 15837 ms  0x6c80 privk:0x7f626505d820::7f626505d820  80 dd 08 6a                                      ...j
 15837 ms  0x6c80 privk:0x7f626505d820::7f626505d820  e5 e5 e5 e5                                      ....
 15838 ms  0x6c80 PK11_Encrypt()
 15838 ms  0x6c80 symkey:0x7f626cca1400
 15839 ms  0x6c80 SSL_AuthCertificateComplete()
 15839 ms  0x6c80 fd:0x7f6268dfa310
 15839 ms  0x6c80 err:0x0
 15839 ms  0x6c80 SSL_AuthCertificateComplete()
 15839 ms  0x6c80 fd:0x7f62699a5d00
 15839 ms  0x6c80 err:0x0
 15839 ms  0x6c80 SSL_AuthCertificateComplete()
 15839 ms  0x6c80 fd:0x7f626997a040
 15839 ms  0x6c80 err:0x0
           /* TID 0x6d24 */
 15840 ms  0x6d24 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 15841 ms  0x6d24 ret:0x0
           /* TID 0x6c88 */
 15841 ms  0x6c88 PR_Close()
 15841 ms  0x6c88 fd:0x7f626acc8880
           /* TID 0x6c80 */
 15851 ms  0x6c80 SECKEY_DestroyPrivateKey()
 15851 ms  0x6c80 privk:0x7f6265017020::7f6265017020  b0 cf d7 68                                      ...h
 15852 ms  0x6c80 privk:0x7f6265017020::7f6265017020  e5 e5 e5 e5                                      ....
 15852 ms  0x6c80 SECKEY_DestroyPrivateKey()
 15852 ms  0x6c80 privk:0x7f6265015020::7f6265015020  10 8f c8 68                                      ...h
 15852 ms  0x6c80 privk:0x7f6265015020::7f6265015020  e5 e5 e5 e5                                      ....
 15852 ms  0x6c80 PK11_Encrypt()
 15852 ms  0x6c80 symkey:0x7f626cbfff00
           /* TID 0x6c88 */
 15854 ms  0x6c88 PR_Close()
 15854 ms  0x6c88 fd:0x7f624ec7b6d0
 15857 ms  0x6c88 PR_Close()
 15857 ms  0x6c88 fd:0x7f624ec7b670
           /* TID 0x6c80 */
 15859 ms  0x6c80 PK11_Encrypt()
 15859 ms  0x6c80 symkey:0x7f6268d61500
           /* TID 0x6c88 */
 15860 ms  0x6c88 PR_Close()
 15860 ms  0x6c88 fd:0x7f624ec7b670
 15863 ms  0x6c88 PR_Close()
 15863 ms  0x6c88 fd:0x7f624ec7b670
           /* TID 0x6c80 */
 15867 ms  SECKEY_ECParamsToKeySize()
 15867 ms  0x6c80 ret:0x100
 15867 ms  0x6c80 SECKEY_CreateECPrivateKey()
 15867 ms  0x6c80 cx:0x7f626cba3e28
 15868 ms     | 0x6c80 EC_ValidatePublicKey()
 15870 ms     | 0x6c80 ret:0x0
 15871 ms  0x6c80 ret:0x7f6265060820::7f6265060820  d0 cd 2a 6d                                      ..*m
 15871 ms  0x6c80 PK11_PubDeriveWithKDF()
 15871 ms  0x6c80 seckey:0x7f6265060820
 15871 ms     | 0x6c80 EC_ValidatePublicKey()
 15873 ms     | 0x6c80 ret:0x0
 15875 ms  0x6c80 ret:0x7f6268d61380
 15875 ms  0x6c80 PK11_DeriveWithFlags()
 15875 ms  0x6c80 basekey:0x7f6268d61380
 15875 ms     | 0x6c80 PK11_DeriveWithTemplate()
 15875 ms  0x6c80 ret:0x7f626d268080
 15875 ms  0x6c80 PK11_Derive()
 15875 ms  0x6c80 basekey:0x7f626d268080
 15875 ms     | 0x6c80 PK11_DeriveWithTemplate()
 15875 ms  0x6c80 ret:0x7f626d268100
 15875 ms  0x6c80 SECKEY_DestroyPrivateKey()
 15875 ms  0x6c80 privk:0x7f6265060820::7f6265060820  d0 cd 2a 6d                                      ..*m
 15875 ms  0x6c80 privk:0x7f6265060820::7f6265060820  e5 e5 e5 e5                                      ....
 15875 ms  0x6c80 PK11_Encrypt()
 15875 ms  0x6c80 symkey:0x7f626d268280
           /* TID 0x6c88 */
 15876 ms  0x6c88 PR_Close()
 15876 ms  0x6c88 fd:0x7f624ec7b670
 15878 ms  0x6c88 PR_Close()
 15878 ms  0x6c88 fd:0x7f624ec7b6d0
 15880 ms  0x6c88 PR_Close()
 15880 ms  0x6c88 fd:0x7f624ec7b6d0
 15881 ms  0x6c88 PR_Close()
 15881 ms  0x6c88 fd:0x7f624ec7b1c0
 15882 ms  0x6c88 PR_Close()
 15882 ms  0x6c88 fd:0x7f624ec7b1c0
 15883 ms  0x6c88 PR_Close()
 15883 ms  0x6c88 fd:0x7f624ec7b1c0
 15884 ms  0x6c88 PR_Close()
 15884 ms  0x6c88 fd:0x7f624ec7b1c0
 15891 ms  0x6c88 PR_Close()
 15891 ms  0x6c88 fd:0x7f624ec7b1c0
 15892 ms  0x6c88 PR_Close()
 15892 ms  0x6c88 fd:0x7f624ec7b1c0
           /* TID 0x6c80 */
 15900 ms  0x6c80 PK11_Encrypt()
 15900 ms  0x6c80 symkey:0x7f626cca1400
 15902 ms  0x6c80 PK11_Encrypt()
 15902 ms  0x6c80 symkey:0x7f626cca1400
           /* TID 0x6c88 */
 15903 ms  0x6c88 PR_Close()
 15903 ms  0x6c88 fd:0x7f62661a6f40
 15904 ms  0x6c88 PR_Close()
 15904 ms  0x6c88 fd:0x7f62661a6f40
           /* TID 0x6c80 */
 15906 ms  0x6c80 SECKEY_DestroyPrivateKey()
 15906 ms  0x6c80 privk:0x7f6265011020::7f6265011020  50 a6 32 66                                      P.2f
 15906 ms  0x6c80 privk:0x7f6265011020::7f6265011020  e5 e5 e5 e5                                      ....
 15906 ms  0x6c80 SECKEY_DestroyPrivateKey()
 15906 ms  0x6c80 privk:0x7f6265008020::7f6265008020  60 aa 79 61                                      `.ya
 15906 ms  0x6c80 privk:0x7f6265008020::7f6265008020  e5 e5 e5 e5                                      ....
 15907 ms  SECKEY_ECParamsToKeySize()
 15907 ms  0x6c80 ret:0xff
 15907 ms  0x6c80 SECKEY_CreateECPrivateKey()
 15907 ms  0x6c80 cx:0x7f626d2b7988
 15907 ms     | 0x6c80 EC_ValidatePublicKey()
 15907 ms     | 0x6c80 ret:0x0
 15907 ms  0x6c80 ret:0x7f626500d020::7f626500d020  a0 ab 79 61                                      ..ya
 15907 ms  0x6c80 PK11_PubDeriveWithKDF()
 15907 ms  0x6c80 seckey:0x7f626500d020
 15907 ms     | 0x6c80 EC_ValidatePublicKey()
 15907 ms     | 0x6c80 ret:0x0
 15908 ms  0x6c80 ret:0x7f6268d61380
 15908 ms  0x6c80 PK11_DeriveWithFlags()
 15908 ms  0x6c80 basekey:0x7f6268d61380
 15908 ms     | 0x6c80 PK11_DeriveWithTemplate()
 15908 ms  0x6c80 ret:0x7f6269a26880
 15908 ms  0x6c80 PK11_Derive()
 15908 ms  0x6c80 basekey:0x7f6269a26880
 15908 ms     | 0x6c80 PK11_DeriveWithTemplate()
 15908 ms  0x6c80 ret:0x7f626d268700
 15908 ms  0x6c80 SECKEY_DestroyPrivateKey()
 15908 ms  0x6c80 privk:0x7f626500d020::7f626500d020  a0 ab 79 61                                      ..ya
 15908 ms  0x6c80 privk:0x7f626500d020::7f626500d020  e5 e5 e5 e5                                      ....
 15908 ms  0x6c80 PK11_Encrypt()
 15908 ms  0x6c80 symkey:0x7f626d268880
 15914 ms  SECKEY_ECParamsToKeySize()
 15914 ms  0x6c80 ret:0xff
 15914 ms  0x6c80 SECKEY_CreateECPrivateKey()
 15914 ms  0x6c80 cx:0x7f626df5b728
 15914 ms     | 0x6c80 EC_ValidatePublicKey()
 15914 ms     | 0x6c80 ret:0x0
 15914 ms  0x6c80 ret:0x7f6265010020::7f6265010020  a0 51 7c 61                                      .Q|a
 15915 ms  0x6c80 PK11_PubDeriveWithKDF()
 15915 ms  0x6c80 seckey:0x7f6265010020
 15915 ms     | 0x6c80 EC_ValidatePublicKey()
 15915 ms     | 0x6c80 ret:0x0
 15915 ms  0x6c80 ret:0x7f6268d61380
 15915 ms  0x6c80 PK11_DeriveWithFlags()
 15915 ms  0x6c80 basekey:0x7f6268d61380
 15915 ms     | 0x6c80 PK11_DeriveWithTemplate()
 15915 ms  0x6c80 ret:0x7f626d268a00
 15915 ms  0x6c80 PK11_Derive()
 15915 ms  0x6c80 basekey:0x7f626d268a00
 15915 ms     | 0x6c80 PK11_DeriveWithTemplate()
 15915 ms  0x6c80 ret:0x7f626d268b00
 15915 ms  0x6c80 SECKEY_DestroyPrivateKey()
 15915 ms  0x6c80 privk:0x7f6265010020::7f6265010020  a0 51 7c 61                                      .Q|a
 15915 ms  0x6c80 privk:0x7f6265010020::7f6265010020  e5 e5 e5 e5                                      ....
 15915 ms  0x6c80 PK11_Encrypt()
 15915 ms  0x6c80 symkey:0x7f626d268c80
 15916 ms  SECKEY_ECParamsToKeySize()
 15916 ms  0x6c80 ret:0xff
 15916 ms  0x6c80 SECKEY_CreateECPrivateKey()
 15916 ms  0x6c80 cx:0x7f626df5bc08
 15917 ms     | 0x6c80 EC_ValidatePublicKey()
 15917 ms     | 0x6c80 ret:0x0
 15917 ms  0x6c80 ret:0x7f6265011020::7f6265011020  b0 55 7c 61                                      .U|a
 15917 ms  0x6c80 PK11_PubDeriveWithKDF()
 15917 ms  0x6c80 seckey:0x7f6265011020
 15917 ms     | 0x6c80 EC_ValidatePublicKey()
 15917 ms     | 0x6c80 ret:0x0
 15917 ms  0x6c80 ret:0x7f6268d61380
 15917 ms  0x6c80 PK11_DeriveWithFlags()
 15917 ms  0x6c80 basekey:0x7f6268d61380
 15917 ms     | 0x6c80 PK11_DeriveWithTemplate()
 15917 ms  0x6c80 ret:0x7f626d268d80
 15917 ms  0x6c80 PK11_Derive()
 15917 ms  0x6c80 basekey:0x7f626d268d80
 15917 ms     | 0x6c80 PK11_DeriveWithTemplate()
 15917 ms  0x6c80 ret:0x7f626d268e80
 15917 ms  0x6c80 SECKEY_DestroyPrivateKey()
 15917 ms  0x6c80 privk:0x7f6265011020::7f6265011020  b0 55 7c 61                                      .U|a
 15918 ms  0x6c80 privk:0x7f6265011020::7f6265011020  e5 e5 e5 e5                                      ....
 15918 ms  0x6c80 PK11_Encrypt()
 15918 ms  0x6c80 symkey:0x7f626d269000
 15918 ms  0x6c80 PR_Close()
 15918 ms  0x6c80 fd:0x7f624ec7ba30
 15918 ms     | 0x6c80 PK11_Encrypt()
 15918 ms     | 0x6c80 symkey:0x7f626cbffa80
 15920 ms  0x6c80 SSL_ImportFD()
 15920 ms  0x6c80 ret:0x7f624ec7ba30
 15920 ms  0x6c80 SSL_AuthCertificateHook()
 15920 ms  0x6c80 fd:0x7f624ec7ba30
 15920 ms  0x6c80 ret:0x0
 15920 ms  0x6c80 PR_Connect()
 15920 ms  0x6c80 fd:0x7f624ec7ba30
 15920 ms  0x6c80 PR_Connect()
 15920 ms  0x6c80 fd:0x7f626df06f70
 15921 ms  0x6c80 PR_Connect()
 15921 ms  0x6c80 fd:0x7f626df57070
 15923 ms  0x6c80 PR_Connect()
 15923 ms  0x6c80 fd:0x7f626eeb9910
 15923 ms  0x6c80 PR_Connect()
 15923 ms  0x6c80 fd:0x7f626df57ac0
 15923 ms  0x6c80 PR_Connect()
 15923 ms  0x6c80 fd:0x7f626f875820
 15924 ms  0x6c80 PR_Connect()
 15924 ms  0x6c80 fd:0x7f627095b040
 15924 ms  0x6c80 PR_Connect()
 15924 ms  0x6c80 fd:0x7f627095b2e0
 15924 ms  0x6c80 PR_Connect()
 15924 ms  0x6c80 fd:0x7f626df57a00
 15924 ms  0x6c80 PR_Connect()
 15924 ms  0x6c80 fd:0x7f626eab8430
 15925 ms  0x6c80 PR_Connect()
 15925 ms  0x6c80 fd:0x7f626eab87f0
 15925 ms  0x6c80 PR_Connect()
 15925 ms  0x6c80 fd:0x7f626e24f100
 15925 ms  0x6c80 SSL_ImportFD()
 15925 ms  0x6c80 ret:0x7f626eab8460
 15925 ms  0x6c80 SSL_AuthCertificateHook()
 15925 ms  0x6c80 fd:0x7f626eab8460
 15925 ms  0x6c80 ret:0x0
 15925 ms  0x6c80 PR_Connect()
 15925 ms  0x6c80 fd:0x7f626eab8460
 15926 ms  0x6c80 SSL_ImportFD()
 15926 ms  0x6c80 ret:0x7f626ee5f6a0
 15926 ms  0x6c80 SSL_AuthCertificateHook()
 15926 ms  0x6c80 fd:0x7f626ee5f6a0
 15926 ms  0x6c80 ret:0x0
 15926 ms  0x6c80 PR_Connect()
 15926 ms  0x6c80 fd:0x7f626ee5f6a0
 15926 ms  0x6c80 SSL_AuthCertificateComplete()
 15926 ms  0x6c80 fd:0x7f62699b73d0
 15926 ms  0x6c80 err:0x0
 15926 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 15926 ms     | 0x6c80 privk:0x7f6266481020::7f6266481020  d0 28 c8 68                                      .(.h
 15926 ms     | 0x6c80 privk:0x7f6266481020::7f6266481020  e5 e5 e5 e5                                      ....
 15926 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 15926 ms     | 0x6c80 privk:0x7f62661db820::7f62661db820  a0 21 3d 66                                      .!=f
 15926 ms     | 0x6c80 privk:0x7f62661db820::7f62661db820  e5 e5 e5 e5                                      ....
 15928 ms  0x6c80 PK11_Encrypt()
 15928 ms  0x6c80 symkey:0x7f62611c3880
 15928 ms  0x6c80 PK11_Encrypt()
 15928 ms  0x6c80 symkey:0x7f62613c0a80
 15928 ms  0x6c80 PK11_Encrypt()
 15928 ms  0x6c80 symkey:0x7f62663e0780
 15929 ms  0x6c80 PK11_Encrypt()
 15929 ms  0x6c80 symkey:0x7f62661a7480
 15929 ms  0x6c80 PK11_Encrypt()
 15929 ms  0x6c80 symkey:0x7f6265cdf700
 15931 ms  0x6c80 PK11_Encrypt()
 15931 ms  0x6c80 symkey:0x7f625fc9b080
 15931 ms  0x6c80 PK11_Encrypt()
 15931 ms  0x6c80 symkey:0x7f625fca9880
 15931 ms  0x6c80 PK11_Encrypt()
 15931 ms  0x6c80 symkey:0x7f625fcc1b00
 15931 ms  0x6c80 PK11_Encrypt()
 15931 ms  0x6c80 symkey:0x7f625fcffd00
 15932 ms  0x6c80 PK11_Encrypt()
 15932 ms  0x6c80 symkey:0x7f625fea7300
 15932 ms  0x6c80 SECKEY_DestroyPrivateKey()
 15932 ms  0x6c80 privk:0x7f6269ed2820::7f6269ed2820  40 f7 4f 66                                      @.Of
 15932 ms  0x6c80 privk:0x7f6269ed2820::7f6269ed2820  e5 e5 e5 e5                                      ....
 15932 ms  0x6c80 SECKEY_DestroyPrivateKey()
 15932 ms  0x6c80 privk:0x7f6261777820::7f6261777820  10 af 1b 66                                      ...f
 15932 ms  0x6c80 privk:0x7f6261777820::7f6261777820  e5 e5 e5 e5                                      ....
 15935 ms  0x6c80 PK11_Encrypt()
 15935 ms  0x6c80 symkey:0x7f6262ecbf80
 15936 ms  0x6c80 PK11_Encrypt()
 15936 ms  0x6c80 symkey:0x7f6265878400
 15936 ms  0x6c80 SSL_AuthCertificateComplete()
 15936 ms  0x6c80 fd:0x7f626583ad60
 15936 ms  0x6c80 err:0x0
 15936 ms  0x6c80 SSL_AuthCertificateComplete()
 15936 ms  0x6c80 fd:0x7f6262ec1130
 15936 ms  0x6c80 err:0x0
 15936 ms  0x6c80 SSL_AuthCertificateComplete()
 15936 ms  0x6c80 fd:0x7f626cbb28b0
 15936 ms  0x6c80 err:0x0
           /* TID 0x6c88 */
 15937 ms  0x6c88 PR_Close()
 15937 ms  0x6c88 fd:0x7f624ec7b9d0
           /* TID 0x6c80 */
 15937 ms  0x6c80 PK11_Encrypt()
 15937 ms  0x6c80 symkey:0x7f625fcc0580
 15938 ms  0x6c80 PK11_Encrypt()
 15938 ms  0x6c80 symkey:0x7f625fc9b800
           /* TID 0x6c88 */
 15939 ms  0x6c88 PR_Close()
 15939 ms  0x6c88 fd:0x7f624ec7b9d0
           /* TID 0x6c80 */
 15939 ms  0x6c80 SECKEY_CreateECPrivateKey()
 15939 ms  0x6c80 cx:0x7f626df5bda8
 15939 ms     | 0x6c80 EC_ValidatePublicKey()
 15939 ms     | 0x6c80 ret:0x0
 15939 ms  0x6c80 ret:0x7f6265011020::7f6265011020  b0 55 7c 61                                      .U|a
 15939 ms  0x6c80 SECKEY_CreateECPrivateKey()
 15939 ms  0x6c80 cx:0x7f626df5bda8
 15940 ms     | 0x6c80 EC_ValidatePublicKey()
 15941 ms     | 0x6c80 ret:0x0
 15941 ms  0x6c80 ret:0x7f6265053820::7f6265053820  a0 16 1b 66                                      ...f
 15950 ms  0x6c80 SECKEY_CreateECPrivateKey()
 15950 ms  0x6c80 cx:0x7f626cba37a8
 15950 ms     | 0x6c80 EC_ValidatePublicKey()
 15950 ms     | 0x6c80 ret:0x0
 15950 ms  0x6c80 ret:0x7f6265067020::7f6265067020  80 ad 1b 66                                      ...f
 15950 ms  0x6c80 SECKEY_CreateECPrivateKey()
 15950 ms  0x6c80 cx:0x7f626cba37a8
 15951 ms     | 0x6c80 EC_ValidatePublicKey()
 15952 ms     | 0x6c80 ret:0x0
 15952 ms  0x6c80 ret:0x7f6265069020::7f6265069020  b0 e0 3d 66                                      ..=f
 15957 ms  0x6c80 SECKEY_CreateECPrivateKey()
 15957 ms  0x6c80 cx:0x7f626df5c768
 15958 ms     | 0x6c80 EC_ValidatePublicKey()
 15958 ms     | 0x6c80 ret:0x0
 15958 ms  0x6c80 ret:0x7f626506e020::7f626506e020  e0 e7 4b 66                                      ..Kf
 15958 ms  0x6c80 SECKEY_CreateECPrivateKey()
 15958 ms  0x6c80 cx:0x7f626df5c768
 15958 ms     | 0x6c80 EC_ValidatePublicKey()
 15960 ms     | 0x6c80 ret:0x0
 15960 ms  0x6c80 ret:0x7f6265070020::7f6265070020  80 28 c8 68                                      .(.h
 15964 ms  0x6c80 PK11_Encrypt()
 15964 ms  0x6c80 symkey:0x7f626d268880
 15964 ms  0x6c80 PK11_Encrypt()
 15964 ms  0x6c80 symkey:0x7f626d268c80
 15965 ms  0x6c80 PK11_Encrypt()
 15965 ms  0x6c80 symkey:0x7f626d269000
 15965 ms  0x6c80 SECKEY_CreateECPrivateKey()
 15965 ms  0x6c80 cx:0x7f626df5c5c8
 15965 ms     | 0x6c80 EC_ValidatePublicKey()
 15965 ms     | 0x6c80 ret:0x0
 15965 ms  0x6c80 ret:0x7f6269f7a020::7f6269f7a020  40 b2 c8 68                                      @..h
 15965 ms  0x6c80 SECKEY_CreateECPrivateKey()
 15965 ms  0x6c80 cx:0x7f626df5c5c8
 15966 ms     | 0x6c80 EC_ValidatePublicKey()
 15967 ms     | 0x6c80 ret:0x0
 15967 ms  0x6c80 ret:0x7f6269f86020::7f6269f86020  80 b3 a5 69                                      ...i
 15972 ms  0x6c80 SECKEY_CreateECPrivateKey()
 15972 ms  0x6c80 cx:0x7f626df5c0e8
 15973 ms     | 0x6c80 EC_ValidatePublicKey()
 15973 ms     | 0x6c80 ret:0x0
 15974 ms  0x6c80 ret:0x7f626a76f820::7f626a76f820  80 dd 08 6a                                      ...j
 15974 ms  0x6c80 SECKEY_CreateECPrivateKey()
 15974 ms  0x6c80 cx:0x7f626df5c0e8
 15974 ms     | 0x6c80 EC_ValidatePublicKey()
 15978 ms     | 0x6c80 ret:0x0
 15978 ms  0x6c80 ret:0x7f626a775820::7f626a775820  f0 91 cf 6c                                      ...l
 15980 ms  0x6c80 SSL_ImportFD()
 15981 ms  0x6c80 ret:0x7f626f8758b0
 15981 ms  0x6c80 SSL_AuthCertificateHook()
 15981 ms  0x6c80 fd:0x7f626f8758b0
 15981 ms  0x6c80 ret:0x0
 15981 ms  0x6c80 PR_Connect()
 15981 ms  0x6c80 fd:0x7f626f8758b0
 15981 ms  0x6c80 SSL_ImportFD()
 15981 ms  0x6c80 ret:0x7f624ec7ba90
 15981 ms  0x6c80 SSL_AuthCertificateHook()
 15981 ms  0x6c80 fd:0x7f624ec7ba90
 15981 ms  0x6c80 ret:0x0
 15981 ms  0x6c80 PR_Connect()
 15981 ms  0x6c80 fd:0x7f624ec7ba90
 15981 ms  0x6c80 SSL_ImportFD()
 15981 ms  0x6c80 ret:0x7f624ec7be20
 15981 ms  0x6c80 SSL_AuthCertificateHook()
 15981 ms  0x6c80 fd:0x7f624ec7be20
 15981 ms  0x6c80 ret:0x0
 15981 ms  0x6c80 PR_Connect()
 15981 ms  0x6c80 fd:0x7f624ec7be20
 15981 ms  0x6c80 PK11_Encrypt()
 15981 ms  0x6c80 symkey:0x7f6265ff1800
 15983 ms  0x6c80 PK11_Encrypt()
 15983 ms  0x6c80 symkey:0x7f625fca9f00
 15984 ms  0x6c80 PK11_Encrypt()
 15984 ms  0x6c80 symkey:0x7f626cbfff00
           /* TID 0x6c88 */
 15987 ms  0x6c88 PR_Close()
 15987 ms  0x6c88 fd:0x7f624d944220
 15989 ms  0x6c88 PR_Close()
 15989 ms  0x6c88 fd:0x7f624d944130
           /* TID 0x6d17 */
 15989 ms  0x6d17 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 15989 ms  0x6d17 ret:0x0
           /* TID 0x6c88 */
 15990 ms  0x6c88 PR_Close()
 15990 ms  0x6c88 fd:0x7f624d9441f0
           /* TID 0x6cdb */
 15990 ms  0x6cdb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 15990 ms  0x6cdb ret:0x0
           /* TID 0x6c80 */
 15992 ms  0x6c80 PR_Close()
 15992 ms  0x6c80 fd:0x7f62699b73d0
 15992 ms     | 0x6c80 PK11_Encrypt()
 15992 ms     | 0x6c80 symkey:0x7f625fc9b800
 15993 ms  0x6c80 SSL_AuthCertificateComplete()
 15993 ms  0x6c80 fd:0x7f624ec7b460
 15993 ms  0x6c80 err:0x0
 15993 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 15993 ms     | 0x6c80 privk:0x7f6265005020::7f6265005020  a0 ab 1b 66                                      ...f
 15993 ms     | 0x6c80 privk:0x7f6265005020::7f6265005020  e5 e5 e5 e5                                      ....
 15993 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 15993 ms     | 0x6c80 privk:0x7f626178e820::7f626178e820  10 7f 85 64                                      ...d
 15993 ms     | 0x6c80 privk:0x7f626178e820::7f626178e820  e5 e5 e5 e5                                      ....
 15993 ms  0x6c80 SSL_AuthCertificateComplete()
 15993 ms  0x6c80 fd:0x7f626a99d1c0
 15993 ms  0x6c80 err:0x0
 15996 ms  0x6c80 PK11_Encrypt()
 15996 ms  0x6c80 symkey:0x7f626d268280
 15996 ms  0x6c80 PK11_Encrypt()
 15996 ms  0x6c80 symkey:0x7f6265fe9700
 15996 ms  0x6c80 SECKEY_CreateECPrivateKey()
 15996 ms  0x6c80 cx:0x7f626df5d128
 15997 ms     | 0x6c80 EC_ValidatePublicKey()
 15997 ms     | 0x6c80 ret:0x0
 15997 ms  0x6c80 ret:0x7f624d950820::7f624d950820  d0 a8 79 61                                      ..ya
 15997 ms  0x6c80 SECKEY_CreateECPrivateKey()
 15997 ms  0x6c80 cx:0x7f626df5d128
 15997 ms     | 0x6c80 EC_ValidatePublicKey()
 15999 ms     | 0x6c80 ret:0x0
 15999 ms  0x6c80 ret:0x7f624d952820::7f624d952820  90 12 1b 66                                      ...f
 16002 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16002 ms  0x6c80 cx:0x7f626df5cf88
 16003 ms     | 0x6c80 EC_ValidatePublicKey()
 16003 ms     | 0x6c80 ret:0x0
 16003 ms  0x6c80 ret:0x7f624d955820::7f624d955820  50 ab 1b 66                                      P..f
 16003 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16003 ms  0x6c80 cx:0x7f626df5cf88
 16003 ms     | 0x6c80 EC_ValidatePublicKey()
 16005 ms     | 0x6c80 ret:0x0
 16005 ms  0x6c80 ret:0x7f624d957820::7f624d957820  70 a9 df 6c                                      p..l
 16019 ms  0x6c80 PK11_Encrypt()
 16019 ms  0x6c80 symkey:0x7f626cbfff00
           /* TID 0x6c88 */
 16022 ms  0x6c88 PR_Close()
 16022 ms  0x6c88 fd:0x7f624d944670
           /* TID 0x6c80 */
 16022 ms  0x6c80 PR_Close()
 16022 ms  0x6c80 fd:0x7f624ec7b460
 16022 ms     | 0x6c80 PK11_Encrypt()
 16022 ms     | 0x6c80 symkey:0x7f6265fe9700
 16025 ms  0x6c80 PR_Connect()
 16025 ms  0x6c80 fd:0x7f624d9448e0
 16025 ms  0x6c80 PR_Connect()
 16025 ms  0x6c80 fd:0x7f624d944250
 16026 ms  0x6c80 PR_Connect()
 16026 ms  0x6c80 fd:0x7f624d944670
 16029 ms  0x6c80 SSL_ImportFD()
 16029 ms  0x6c80 ret:0x7f624d944d90
 16029 ms  0x6c80 SSL_AuthCertificateHook()
 16029 ms  0x6c80 fd:0x7f624d944d90
 16029 ms  0x6c80 ret:0x0
 16029 ms  0x6c80 PR_Connect()
 16029 ms  0x6c80 fd:0x7f624d944d90
           /* TID 0x6c88 */
 16033 ms  0x6c88 PR_Close()
 16033 ms  0x6c88 fd:0x7f624d9447c0
 16035 ms  0x6c88 PR_Close()
 16035 ms  0x6c88 fd:0x7f624d944490
           /* TID 0x6c80 */
 16039 ms  0x6c80 SSL_ImportFD()
 16039 ms  0x6c80 ret:0x7f624d944fd0
 16039 ms  0x6c80 SSL_AuthCertificateHook()
 16039 ms  0x6c80 fd:0x7f624d944fd0
 16039 ms  0x6c80 ret:0x0
 16039 ms  0x6c80 PR_Connect()
 16039 ms  0x6c80 fd:0x7f624d944fd0
 16040 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16040 ms  0x6c80 privk:0x7f626a767020::7f626a767020  90 d7 08 6a                                      ...j
 16040 ms  0x6c80 privk:0x7f626a767020::7f626a767020  e5 e5 e5 e5                                      ....
 16040 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16040 ms  0x6c80 privk:0x7f626a764020::7f626a764020  30 ad 79 61                                      0.ya
 16040 ms  0x6c80 privk:0x7f626a764020::7f626a764020  e5 e5 e5 e5                                      ....
 16040 ms  0x6c80 PK11_Encrypt()
 16040 ms  0x6c80 symkey:0x7f626cca1400
 16055 ms  SECKEY_ECParamsToKeySize()
 16055 ms  0x6c80 ret:0x100
 16055 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16055 ms  0x6c80 cx:0x7f626df5d128
 16055 ms     | 0x6c80 EC_ValidatePublicKey()
 16057 ms     | 0x6c80 ret:0x0
 16057 ms  0x6c80 ret:0x7f626a764020::7f626a764020  90 c7 2a 6d                                      ..*m
 16057 ms  0x6c80 PK11_PubDeriveWithKDF()
 16057 ms  0x6c80 seckey:0x7f626a764020
 16057 ms     | 0x6c80 EC_ValidatePublicKey()
 16059 ms     | 0x6c80 ret:0x0
 16060 ms  0x6c80 ret:0x7f626998b680
 16060 ms  0x6c80 PK11_DeriveWithFlags()
 16060 ms  0x6c80 basekey:0x7f626998b680
 16060 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16060 ms  0x6c80 ret:0x7f6265fe9580
 16060 ms  0x6c80 PK11_Derive()
 16060 ms  0x6c80 basekey:0x7f6265fe9580
 16060 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16060 ms  0x6c80 ret:0x7f625fea7a00
 16060 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16060 ms  0x6c80 privk:0x7f626a764020::7f626a764020  90 c7 2a 6d                                      ..*m
 16060 ms  0x6c80 privk:0x7f626a764020::7f626a764020  e5 e5 e5 e5                                      ....
 16060 ms  0x6c80 PK11_Encrypt()
 16060 ms  0x6c80 symkey:0x7f6265fe9780
 16064 ms  SECKEY_ECParamsToKeySize()
 16064 ms  0x6c80 ret:0x100
 16064 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16064 ms  0x6c80 cx:0x7f626df5cf88
 16065 ms     | 0x6c80 EC_ValidatePublicKey()
 16067 ms     | 0x6c80 ret:0x0
 16067 ms  0x6c80 ret:0x7f626a764820::7f626a764820  d0 c8 2a 6d                                      ..*m
 16067 ms  0x6c80 PK11_PubDeriveWithKDF()
 16067 ms  0x6c80 seckey:0x7f626a764820
 16067 ms     | 0x6c80 EC_ValidatePublicKey()
 16069 ms     | 0x6c80 ret:0x0
 16073 ms  0x6c80 ret:0x7f626998b680
 16073 ms  0x6c80 PK11_DeriveWithFlags()
 16073 ms  0x6c80 basekey:0x7f626998b680
 16073 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16073 ms  0x6c80 ret:0x7f625fc9b580
 16073 ms  0x6c80 PK11_Derive()
 16073 ms  0x6c80 basekey:0x7f625fc9b580
 16073 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16073 ms  0x6c80 ret:0x7f626cbff900
 16073 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16073 ms  0x6c80 privk:0x7f626a764820::7f626a764820  d0 c8 2a 6d                                      ..*m
 16073 ms  0x6c80 privk:0x7f626a764820::7f626a764820  e5 e5 e5 e5                                      ....
 16073 ms  0x6c80 PK11_Encrypt()
 16073 ms  0x6c80 symkey:0x7f625fc9b780
 16073 ms  0x6c80 SSL_AuthCertificateComplete()
 16073 ms  0x6c80 fd:0x7f626eab8460
 16073 ms  0x6c80 err:0x0
 16074 ms  0x6c80 PK11_Encrypt()
 16074 ms  0x6c80 symkey:0x7f625fc9b780
           /* TID 0x6c88 */
 16078 ms  0x6c88 PR_Close()
 16078 ms  0x6c88 fd:0x7f62617c4d00
 16079 ms  0x6c88 PR_Close()
 16079 ms  0x6c88 fd:0x7f62617c4d00
 16083 ms  0x6c88 PR_Close()
 16083 ms  0x6c88 fd:0x7f62617c4d00
 16084 ms  0x6c88 PR_Close()
 16084 ms  0x6c88 fd:0x7f62617c4d00
 16085 ms  0x6c88 PR_Close()
 16085 ms  0x6c88 fd:0x7f62617c4d00
 16085 ms  0x6c88 PR_Close()
 16085 ms  0x6c88 fd:0x7f62617c4d00
 16086 ms  0x6c88 PR_Close()
 16086 ms  0x6c88 fd:0x7f62617c4d00
 16089 ms  0x6c88 PR_Close()
 16089 ms  0x6c88 fd:0x7f62617c4d00
 16117 ms  0x6c88 PR_Close()
 16117 ms  0x6c88 fd:0x7f624d944b80
 16118 ms  0x6c88 PR_Close()
 16118 ms  0x6c88 fd:0x7f624d944b80
           /* TID 0x6c80 */
 16130 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16130 ms  0x6c80 privk:0x7f624d957820::7f624d957820  70 a9 df 6c                                      p..l
 16130 ms  0x6c80 privk:0x7f624d957820::7f624d957820  e5 e5 e5 e5                                      ....
 16130 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16130 ms  0x6c80 privk:0x7f624d955820::7f624d955820  50 ab 1b 66                                      P..f
 16130 ms  0x6c80 privk:0x7f624d955820::7f624d955820  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 16140 ms  0x6c88 PR_Close()
 16140 ms  0x6c88 fd:0x7f624d944b80
 16145 ms  0x6c88 PR_Close()
 16145 ms  0x6c88 fd:0x7f624d944b80
           /* TID 0x6c80 */
 16155 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16155 ms  0x6c80 privk:0x7f624edaa020::7f624edaa020  30 ad dd 6c                                      0..l
 16155 ms  0x6c80 privk:0x7f624edaa020::7f624edaa020  e5 e5 e5 e5                                      ....
 16155 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16155 ms  0x6c80 privk:0x7f626f81e020::7f626f81e020  d0 9d cf 6c                                      ...l
 16155 ms  0x6c80 privk:0x7f626f81e020::7f626f81e020  e5 e5 e5 e5                                      ....
 16155 ms  0x6c80 PR_Close()
 16155 ms  0x6c80 fd:0x7f626583ad60
 16155 ms     | 0x6c80 PK11_Encrypt()
 16155 ms     | 0x6c80 symkey:0x7f626d268880
 16166 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16166 ms  0x6c80 privk:0x7f6265052820::7f6265052820  f0 c1 2a 6d                                      ..*m
 16166 ms  0x6c80 privk:0x7f6265052820::7f6265052820  e5 e5 e5 e5                                      ....
 16166 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16166 ms  0x6c80 privk:0x7f6265012020::7f6265012020  c0 ee 29 6d                                      ..)m
 16166 ms  0x6c80 privk:0x7f6265012020::7f6265012020  e5 e5 e5 e5                                      ....
 16166 ms  0x6c80 PR_Close()
 16166 ms  0x6c80 fd:0x7f626cbb28b0
 16166 ms     | 0x6c80 PK11_Encrypt()
 16166 ms     | 0x6c80 symkey:0x7f626d269000
 16167 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16167 ms  0x6c80 privk:0x7f624edc2020::7f624edc2020  70 e9 29 6d                                      p.)m
 16167 ms  0x6c80 privk:0x7f624edc2020::7f624edc2020  e5 e5 e5 e5                                      ....
 16168 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16168 ms  0x6c80 privk:0x7f624edc0020::7f624edc0020  40 e7 29 6d                                      @.)m
 16168 ms  0x6c80 privk:0x7f624edc0020::7f624edc0020  e5 e5 e5 e5                                      ....
 16168 ms  0x6c80 PR_Close()
 16168 ms  0x6c80 fd:0x7f6262ec1130
 16168 ms     | 0x6c80 PK11_Encrypt()
 16168 ms     | 0x6c80 symkey:0x7f626d268c80
 16170 ms  0x6c80 SSL_ImportFD()
 16170 ms  0x6c80 ret:0x7f626487d040
 16170 ms  0x6c80 SSL_AuthCertificateHook()
 16170 ms  0x6c80 fd:0x7f626487d040
 16170 ms  0x6c80 ret:0x0
 16170 ms  0x6c80 PR_Connect()
 16170 ms  0x6c80 fd:0x7f626487d040
 16171 ms  0x6c80 PR_Connect()
 16171 ms  0x6c80 fd:0x7f62661a6f40
 16183 ms  SECKEY_ECParamsToKeySize()
 16183 ms  0x6c80 ret:0x100
 16183 ms  SECKEY_ECParamsToBasePointOrderLen()
 16183 ms  0x6c80 ret:0x100
 16183 ms  SECKEY_ECParamsToBasePointOrderLen()
 16183 ms  0x6c80 ret:0x100
 16183 ms  0x6c80 EC_ValidatePublicKey()
 16184 ms  0x6c80 ret:0x0
 16186 ms  SECKEY_ECParamsToKeySize()
 16186 ms  0x6c80 ret:0x100
 16186 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16186 ms  0x6c80 cx:0x7f626df5c768
 16187 ms     | 0x6c80 EC_ValidatePublicKey()
 16189 ms     | 0x6c80 ret:0x0
 16189 ms  0x6c80 ret:0x7f624edc1020::7f624edc1020  20 fe 7c 6a                                       .|j
 16189 ms  0x6c80 PK11_PubDeriveWithKDF()
 16189 ms  0x6c80 seckey:0x7f624edc1020
 16189 ms     | 0x6c80 EC_ValidatePublicKey()
 16190 ms     | 0x6c80 ret:0x0
 16192 ms  0x6c80 ret:0x7f626d268b00
 16192 ms  0x6c80 PK11_DeriveWithFlags()
 16192 ms  0x6c80 basekey:0x7f626d268b00
 16192 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16192 ms  0x6c80 ret:0x7f626d268a00
 16192 ms  0x6c80 PK11_Derive()
 16192 ms  0x6c80 basekey:0x7f626d268a00
 16192 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16192 ms  0x6c80 ret:0x7f626d268e80
 16192 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16192 ms  0x6c80 privk:0x7f624edc1020::7f624edc1020  20 fe 7c 6a                                       .|j
 16192 ms  0x6c80 privk:0x7f624edc1020::7f624edc1020  e5 e5 e5 e5                                      ....
 16192 ms  0x6c80 PK11_Encrypt()
 16192 ms  0x6c80 symkey:0x7f626d268b80
 16193 ms  SECKEY_ECParamsToKeySize()
 16193 ms  0x6c80 ret:0x100
 16193 ms  SECKEY_ECParamsToBasePointOrderLen()
 16193 ms  0x6c80 ret:0x100
 16193 ms  SECKEY_ECParamsToBasePointOrderLen()
 16193 ms  0x6c80 ret:0x100
 16193 ms  0x6c80 EC_ValidatePublicKey()
 16195 ms  0x6c80 ret:0x0
 16198 ms  SECKEY_ECParamsToKeySize()
 16198 ms  0x6c80 ret:0x100
 16198 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16198 ms  0x6c80 cx:0x7f626df5c5c8
 16199 ms     | 0x6c80 EC_ValidatePublicKey()
 16200 ms     | 0x6c80 ret:0x0
 16200 ms  0x6c80 ret:0x7f6265007020::7f6265007020  e0 62 91 6a                                      .b.j
 16200 ms  0x6c80 PK11_PubDeriveWithKDF()
 16200 ms  0x6c80 seckey:0x7f6265007020
 16200 ms     | 0x6c80 EC_ValidatePublicKey()
 16202 ms     | 0x6c80 ret:0x0
 16203 ms  0x6c80 ret:0x7f626d268b00
 16203 ms  0x6c80 PK11_DeriveWithFlags()
 16203 ms  0x6c80 basekey:0x7f626d268b00
 16203 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16203 ms  0x6c80 ret:0x7f626d268d80
 16203 ms  0x6c80 PK11_Derive()
 16203 ms  0x6c80 basekey:0x7f626d268d80
 16203 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16204 ms  0x6c80 ret:0x7f626d268700
 16204 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16204 ms  0x6c80 privk:0x7f6265007020::7f6265007020  e0 62 91 6a                                      .b.j
 16204 ms  0x6c80 privk:0x7f6265007020::7f6265007020  e5 e5 e5 e5                                      ....
 16204 ms  0x6c80 PK11_Encrypt()
 16204 ms  0x6c80 symkey:0x7f626d268f00
           /* TID 0x6c88 */
 16205 ms  0x6c88 PR_Close()
 16205 ms  0x6c88 fd:0x7f624d944d60
           /* TID 0x6c80 */
 16207 ms  SECKEY_ECParamsToKeySize()
 16207 ms  0x6c80 ret:0x100
 16207 ms  SECKEY_ECParamsToBasePointOrderLen()
 16207 ms  0x6c80 ret:0x100
 16207 ms  SECKEY_ECParamsToBasePointOrderLen()
 16207 ms  0x6c80 ret:0x100
 16207 ms  0x6c80 EC_ValidatePublicKey()
 16209 ms  0x6c80 ret:0x0
 16211 ms  SECKEY_ECParamsToKeySize()
 16211 ms  0x6c80 ret:0x100
 16211 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16211 ms  0x6c80 cx:0x7f626df5c0e8
 16211 ms     | 0x6c80 EC_ValidatePublicKey()
 16216 ms     | 0x6c80 ret:0x0
 16216 ms  0x6c80 ret:0x7f6265052820::7f6265052820  90 cc 96 6a                                      ...j
 16216 ms  0x6c80 PK11_PubDeriveWithKDF()
 16216 ms  0x6c80 seckey:0x7f6265052820
 16216 ms     | 0x6c80 EC_ValidatePublicKey()
 16218 ms     | 0x6c80 ret:0x0
 16219 ms  0x6c80 ret:0x7f626d268b00
 16219 ms  0x6c80 PK11_DeriveWithFlags()
 16219 ms  0x6c80 basekey:0x7f626d268b00
 16219 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16219 ms  0x6c80 ret:0x7f6269a26880
 16219 ms  0x6c80 PK11_Derive()
 16219 ms  0x6c80 basekey:0x7f6269a26880
 16219 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16219 ms  0x6c80 ret:0x7f626998b680
 16219 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16219 ms  0x6c80 privk:0x7f6265052820::7f6265052820  90 cc 96 6a                                      ...j
 16219 ms  0x6c80 privk:0x7f6265052820::7f6265052820  e5 e5 e5 e5                                      ....
 16220 ms  0x6c80 PK11_Encrypt()
 16220 ms  0x6c80 symkey:0x7f626d268780
           /* TID 0x6c88 */
 16220 ms  0x6c88 PR_Close()
 16220 ms  0x6c88 fd:0x7f624d944c70
           /* TID 0x6c80 */
 16221 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16221 ms  0x6c80 cx:0x7f626d2b6948
 16222 ms     | 0x6c80 EC_ValidatePublicKey()
 16222 ms     | 0x6c80 ret:0x0
 16222 ms  0x6c80 ret:0x7f6265052820::7f6265052820  90 cc 96 6a                                      ...j
 16222 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16222 ms  0x6c80 cx:0x7f626d2b6948
 16222 ms     | 0x6c80 EC_ValidatePublicKey()
 16224 ms     | 0x6c80 ret:0x0
 16224 ms  0x6c80 ret:0x7f62661dc020::7f62661dc020  e0 9c cf 6c                                      ...l
 16224 ms  SECKEY_ECParamsToKeySize()
 16224 ms  0x6c80 ret:0x100
 16224 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16224 ms  0x6c80 cx:0x7f626cba37a8
 16225 ms     | 0x6c80 EC_ValidatePublicKey()
 16226 ms     | 0x6c80 ret:0x0
 16226 ms  0x6c80 ret:0x7f626a768820::7f626a768820  f0 e6 29 6d                                      ..)m
 16227 ms  0x6c80 PK11_PubDeriveWithKDF()
 16227 ms  0x6c80 seckey:0x7f626a768820
 16227 ms     | 0x6c80 EC_ValidatePublicKey()
 16228 ms     | 0x6c80 ret:0x0
 16229 ms  0x6c80 ret:0x7f626d268b00
 16229 ms  0x6c80 PK11_DeriveWithFlags()
 16229 ms  0x6c80 basekey:0x7f626d268b00
 16229 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16229 ms  0x6c80 ret:0x7f626cbff880
 16230 ms  0x6c80 PK11_Derive()
 16230 ms  0x6c80 basekey:0x7f626cbff880
 16230 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16230 ms  0x6c80 ret:0x7f6268d61380
 16230 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16230 ms  0x6c80 privk:0x7f626a768820::7f626a768820  f0 e6 29 6d                                      ..)m
 16230 ms  0x6c80 privk:0x7f626a768820::7f626a768820  e5 e5 e5 e5                                      ....
 16230 ms  0x6c80 PK11_Encrypt()
 16230 ms  0x6c80 symkey:0x7f626cbff980
 16231 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16231 ms  0x6c80 cx:0x7f626df5dae8
 16232 ms     | 0x6c80 EC_ValidatePublicKey()
 16232 ms     | 0x6c80 ret:0x0
 16232 ms  0x6c80 ret:0x7f626a767020::7f626a767020  f0 e6 29 6d                                      ..)m
 16232 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16232 ms  0x6c80 cx:0x7f626df5dae8
 16232 ms     | 0x6c80 EC_ValidatePublicKey()
 16234 ms     | 0x6c80 ret:0x0
 16234 ms  0x6c80 ret:0x7f626d209020::7f626d209020  20 e9 29 6d                                       .)m
           /* TID 0x6d24 */
 16238 ms  0x6d24 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16238 ms  0x6d24 ret:0x0
 16238 ms  0x6d24 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16238 ms  0x6d24 ret:0x0
           /* TID 0x6c88 */
 16239 ms  0x6c88 PR_Close()
 16239 ms  0x6c88 fd:0x7f626cbb28e0
           /* TID 0x6c80 */
 16239 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16239 ms  0x6c80 cx:0x7f626df5dc88
 16239 ms     | 0x6c80 EC_ValidatePublicKey()
 16239 ms     | 0x6c80 ret:0x0
 16239 ms  0x6c80 ret:0x7f624d9aa820::7f624d9aa820  40 37 0a 6a                                      @7.j
 16239 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16239 ms  0x6c80 cx:0x7f626df5dc88
 16240 ms     | 0x6c80 EC_ValidatePublicKey()
 16241 ms     | 0x6c80 ret:0x0
 16241 ms  0x6c80 ret:0x7f624d9ac820::7f624d9ac820  c0 ee 29 6d                                      ..)m
 16242 ms  0x6c80 SSL_AuthCertificateComplete()
 16242 ms  0x6c80 fd:0x7f626a99d850
 16242 ms  0x6c80 err:0x0
 16242 ms  0x6c80 SSL_AuthCertificateComplete()
 16242 ms  0x6c80 fd:0x7f62709498e0
 16242 ms  0x6c80 err:0x0
 16242 ms  0x6c80 PK11_Encrypt()
 16242 ms  0x6c80 symkey:0x7f626cbff980
 16243 ms  0x6c80 PK11_Encrypt()
 16243 ms  0x6c80 symkey:0x7f626d268b80
 16243 ms  0x6c80 PK11_Encrypt()
 16243 ms  0x6c80 symkey:0x7f626d268b80
           /* TID 0x6d17 */
 16244 ms  0x6d17 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16244 ms  0x6d17 ret:0x0
 16244 ms  0x6d17 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16244 ms  0x6d17 ret:0x0
           /* TID 0x6c88 */
 16244 ms  0x6c88 PR_Close()
 16244 ms  0x6c88 fd:0x7f62661bc430
           /* TID 0x6c80 */
 16245 ms  0x6c80 SSL_AuthCertificateComplete()
 16245 ms  0x6c80 fd:0x7f626f8c8220
 16245 ms  0x6c80 err:0x0
 16245 ms  0x6c80 PR_Connect()
 16245 ms  0x6c80 fd:0x7f626a798910
 16245 ms  0x6c80 PK11_Encrypt()
 16245 ms  0x6c80 symkey:0x7f626d268f00
 16245 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16245 ms  0x6c80 cx:0x7f626df5cde8
 16246 ms     | 0x6c80 EC_ValidatePublicKey()
 16246 ms     | 0x6c80 ret:0x0
 16246 ms  0x6c80 ret:0x7f624d9b2020::7f624d9b2020  d0 d3 90 6a                                      ...j
 16246 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16246 ms  0x6c80 cx:0x7f626df5cde8
 16246 ms     | 0x6c80 EC_ValidatePublicKey()
 16248 ms     | 0x6c80 ret:0x0
 16248 ms  0x6c80 ret:0x7f624d9b4020::7f624d9b4020  a0 c1 2a 6d                                      ..*m
 16249 ms  0x6c80 PK11_Encrypt()
 16249 ms  0x6c80 symkey:0x7f626d268b80
           /* TID 0x6c88 */
 16250 ms  0x6c88 PR_Close()
 16250 ms  0x6c88 fd:0x7f626a784f40
           /* TID 0x6d19 */
 16268 ms  0x6d19 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16268 ms  0x6d19 ret:0x0
 16268 ms  0x6d19 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16269 ms  0x6d19 ret:0x0
           /* TID 0x6c88 */
 16269 ms  0x6c88 PR_Close()
 16269 ms  0x6c88 fd:0x7f624d944280
           /* TID 0x6c80 */
 16269 ms  0x6c80 SSL_AuthCertificateComplete()
 16269 ms  0x6c80 fd:0x7f626f8c8820
 16269 ms  0x6c80 err:0x0
 16269 ms  0x6c80 PK11_Encrypt()
 16269 ms  0x6c80 symkey:0x7f626d268780
 16270 ms  0x6c80 PK11_Encrypt()
 16270 ms  0x6c80 symkey:0x7f626d268b80
 16277 ms  0x6c80 PK11_Encrypt()
 16277 ms  0x6c80 symkey:0x7f62663e0780
 16279 ms  0x6c80 SSL_ImportFD()
 16279 ms  0x6c80 ret:0x7f626cccbe20
 16279 ms  0x6c80 SSL_AuthCertificateHook()
 16279 ms  0x6c80 fd:0x7f626cccbe20
 16279 ms  0x6c80 ret:0x0
 16279 ms  0x6c80 PR_Connect()
 16279 ms  0x6c80 fd:0x7f626cccbe20
           /* TID 0x6c88 */
 16282 ms  0x6c88 PR_Close()
 16282 ms  0x6c88 fd:0x7f6262eae3d0
 16285 ms  0x6c88 PR_Close()
 16285 ms  0x6c88 fd:0x7f6262eae3d0
           /* TID 0x6c80 */
 16285 ms  0x6c80 PK11_Encrypt()
 16285 ms  0x6c80 symkey:0x7f625fcc1b00
 16285 ms  0x6c80 PK11_Encrypt()
 16285 ms  0x6c80 symkey:0x7f625fcffd00
 16293 ms  0x6c80 PK11_Encrypt()
 16293 ms  0x6c80 symkey:0x7f6265878400
           /* TID 0x6c88 */
 16294 ms  0x6c88 PR_Close()
 16294 ms  0x6c88 fd:0x7f626df57c40
           /* TID 0x6c80 */
 16294 ms  0x6c80 SSL_ImportFD()
 16294 ms  0x6c80 ret:0x7f626df57a60
 16294 ms  0x6c80 SSL_AuthCertificateHook()
 16294 ms  0x6c80 fd:0x7f626df57a60
 16294 ms  0x6c80 ret:0x0
 16295 ms  0x6c80 PR_Connect()
 16295 ms  0x6c80 fd:0x7f626df57a60
 16301 ms  0x6c80 PK11_Encrypt()
 16301 ms  0x6c80 symkey:0x7f6265cdf700
 16301 ms  0x6c80 PK11_Encrypt()
 16301 ms  0x6c80 symkey:0x7f625fea7300
 16301 ms  0x6c80 PK11_Encrypt()
 16301 ms  0x6c80 symkey:0x7f625fca9880
 16301 ms  0x6c80 PK11_Encrypt()
 16301 ms  0x6c80 symkey:0x7f6262ecbf80
           /* TID 0x6c88 */
 16303 ms  0x6c88 PR_Close()
 16303 ms  0x6c88 fd:0x7f624d944400
 16303 ms  0x6c88 PR_Close()
 16303 ms  0x6c88 fd:0x7f6266329220
 16303 ms  0x6c88 PR_Close()
 16303 ms  0x6c88 fd:0x7f62664a2eb0
 16303 ms  0x6c88 PR_Close()
 16303 ms  0x6c88 fd:0x7f6266389b20
           /* TID 0x6c80 */
 16310 ms  0x6c80 PK11_Encrypt()
 16310 ms  0x6c80 symkey:0x7f62613c0a80
           /* TID 0x6c88 */
 16311 ms  0x6c88 PR_Close()
 16311 ms  0x6c88 fd:0x7f624d944310
           /* TID 0x6c80 */
 16320 ms  0x6c80 PK11_Encrypt()
 16320 ms  0x6c80 symkey:0x7f62661a7480
           /* TID 0x6c88 */
 16320 ms  0x6c88 PR_Close()
 16320 ms  0x6c88 fd:0x7f624d944550
           /* TID 0x6c80 */
 16321 ms  0x6c80 PK11_Encrypt()
 16321 ms  0x6c80 symkey:0x7f62611c3880
           /* TID 0x6c88 */
 16322 ms  0x6c88 PR_Close()
 16322 ms  0x6c88 fd:0x7f624d944550
           /* TID 0x6c80 */
 16341 ms  0x6c80 PK11_Encrypt()
 16341 ms  0x6c80 symkey:0x7f625fc9b080
           /* TID 0x6c88 */
 16342 ms  0x6c88 PR_Close()
 16342 ms  0x6c88 fd:0x7f624d944550
           /* TID 0x6c80 */
 16348 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16348 ms  0x6c80 cx:0x7f626d2b62c8
 16348 ms     | 0x6c80 EC_ValidatePublicKey()
 16348 ms     | 0x6c80 ret:0x0
 16348 ms  0x6c80 ret:0x7f6265062820::7f6265062820  a0 5b 7c 61                                      .[|a
 16348 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16348 ms  0x6c80 cx:0x7f626d2b62c8
 16349 ms     | 0x6c80 EC_ValidatePublicKey()
 16350 ms     | 0x6c80 ret:0x0
 16350 ms  0x6c80 ret:0x7f626a761820::7f626a761820  60 da 08 6a                                      `..j
 16362 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16362 ms  0x6c80 cx:0x7f626d2b6c88
 16362 ms     | 0x6c80 EC_ValidatePublicKey()
 16362 ms     | 0x6c80 ret:0x0
 16362 ms  0x6c80 ret:0x7f626f81e020::7f626f81e020  90 77 cf 6a                                      .w.j
 16362 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16362 ms  0x6c80 cx:0x7f626d2b6c88
 16363 ms     | 0x6c80 EC_ValidatePublicKey()
 16364 ms     | 0x6c80 ret:0x0
 16364 ms  0x6c80 ret:0x7f624d703020::7f624d703020  b0 e0 29 6d                                      ..)m
 16409 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16409 ms  0x6c80 privk:0x7f6265070020::7f6265070020  80 28 c8 68                                      .(.h
 16409 ms  0x6c80 privk:0x7f6265070020::7f6265070020  e5 e5 e5 e5                                      ....
 16410 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16410 ms  0x6c80 privk:0x7f626506e020::7f626506e020  e0 e7 4b 66                                      ..Kf
 16410 ms  0x6c80 privk:0x7f626506e020::7f626506e020  e5 e5 e5 e5                                      ....
 16410 ms  0x6c80 PK11_Encrypt()
 16410 ms  0x6c80 symkey:0x7f626d268b80
 16424 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16424 ms  0x6c80 privk:0x7f6269f86020::7f6269f86020  80 b3 a5 69                                      ...i
 16424 ms  0x6c80 privk:0x7f6269f86020::7f6269f86020  e5 e5 e5 e5                                      ....
 16424 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16424 ms  0x6c80 privk:0x7f6269f7a020::7f6269f7a020  40 b2 c8 68                                      @..h
 16424 ms  0x6c80 privk:0x7f6269f7a020::7f6269f7a020  e5 e5 e5 e5                                      ....
 16424 ms  0x6c80 PR_Close()
 16424 ms  0x6c80 fd:0x7f626f8c8220
 16424 ms     | 0x6c80 PK11_Encrypt()
 16424 ms     | 0x6c80 symkey:0x7f626d268f00
 16438 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16438 ms  0x6c80 privk:0x7f626a775820::7f626a775820  f0 91 cf 6c                                      ...l
 16438 ms  0x6c80 privk:0x7f626a775820::7f626a775820  e5 e5 e5 e5                                      ....
 16438 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16438 ms  0x6c80 privk:0x7f626a76f820::7f626a76f820  80 dd 08 6a                                      ...j
 16438 ms  0x6c80 privk:0x7f626a76f820::7f626a76f820  e5 e5 e5 e5                                      ....
 16439 ms  0x6c80 PR_Close()
 16439 ms  0x6c80 fd:0x7f626f8c8820
 16439 ms     | 0x6c80 PK11_Encrypt()
 16439 ms     | 0x6c80 symkey:0x7f626d268780
 16449 ms  SECKEY_ECParamsToKeySize()
 16449 ms  0x6c80 ret:0x100
 16449 ms  SECKEY_ECParamsToBasePointOrderLen()
 16449 ms  0x6c80 ret:0x100
 16449 ms  SECKEY_ECParamsToBasePointOrderLen()
 16449 ms  0x6c80 ret:0x100
 16449 ms  0x6c80 EC_ValidatePublicKey()
 16454 ms  0x6c80 ret:0x0
 16460 ms  SECKEY_ECParamsToKeySize()
 16460 ms  0x6c80 ret:0x100
 16460 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16460 ms  0x6c80 cx:0x7f626d2b6948
 16465 ms     | 0x6c80 EC_ValidatePublicKey()
 16469 ms     | 0x6c80 ret:0x0
 16469 ms  0x6c80 ret:0x7f624d706820::7f624d706820  60 20 c8 68                                      ` .h
 16469 ms  0x6c80 PK11_PubDeriveWithKDF()
 16469 ms  0x6c80 seckey:0x7f624d706820
 16469 ms     | 0x6c80 EC_ValidatePublicKey()
 16472 ms     | 0x6c80 ret:0x0
 16475 ms  0x6c80 ret:0x7f626998b680
 16475 ms  0x6c80 PK11_DeriveWithFlags()
 16475 ms  0x6c80 basekey:0x7f626998b680
 16475 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16475 ms  0x6c80 ret:0x7f6269a26880
 16475 ms  0x6c80 PK11_Derive()
 16475 ms  0x6c80 basekey:0x7f6269a26880
 16476 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16476 ms  0x6c80 ret:0x7f626d268700
 16476 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16476 ms  0x6c80 privk:0x7f624d706820::7f624d706820  60 20 c8 68                                      ` .h
 16476 ms  0x6c80 privk:0x7f624d706820::7f624d706820  e5 e5 e5 e5                                      ....
 16476 ms  0x6c80 PK11_Encrypt()
 16476 ms  0x6c80 symkey:0x7f626d268800
 16476 ms  0x6c80 SSL_AuthCertificateComplete()
 16476 ms  0x6c80 fd:0x7f626f8758b0
 16476 ms  0x6c80 err:0x0
 16477 ms  0x6c80 PK11_Encrypt()
 16477 ms  0x6c80 symkey:0x7f626d268800
 16478 ms  SECKEY_ECParamsToKeySize()
 16478 ms  0x6c80 ret:0x100
 16478 ms  SECKEY_ECParamsToBasePointOrderLen()
 16478 ms  0x6c80 ret:0x100
 16478 ms  SECKEY_ECParamsToBasePointOrderLen()
 16478 ms  0x6c80 ret:0x100
 16478 ms  0x6c80 EC_ValidatePublicKey()
 16481 ms  0x6c80 ret:0x0
 16484 ms  SECKEY_ECParamsToKeySize()
 16484 ms  0x6c80 ret:0x100
 16484 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16484 ms  0x6c80 cx:0x7f626df5dae8
 16485 ms     | 0x6c80 EC_ValidatePublicKey()
 16487 ms     | 0x6c80 ret:0x0
 16487 ms  0x6c80 ret:0x7f624d708820::7f624d708820  80 28 c8 68                                      .(.h
 16487 ms  0x6c80 PK11_PubDeriveWithKDF()
 16487 ms  0x6c80 seckey:0x7f624d708820
 16487 ms     | 0x6c80 EC_ValidatePublicKey()
 16489 ms     | 0x6c80 ret:0x0
 16491 ms  0x6c80 ret:0x7f626998b680
 16491 ms  0x6c80 PK11_DeriveWithFlags()
 16491 ms  0x6c80 basekey:0x7f626998b680
 16491 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16491 ms  0x6c80 ret:0x7f626d268d80
 16491 ms  0x6c80 PK11_Derive()
 16491 ms  0x6c80 basekey:0x7f626d268d80
 16491 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16491 ms  0x6c80 ret:0x7f626d268b00
 16491 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16491 ms  0x6c80 privk:0x7f624d708820::7f624d708820  80 28 c8 68                                      .(.h
 16491 ms  0x6c80 privk:0x7f624d708820::7f624d708820  e5 e5 e5 e5                                      ....
 16491 ms  0x6c80 PK11_Encrypt()
 16491 ms  0x6c80 symkey:0x7f626d268f80
 16492 ms  SECKEY_ECParamsToKeySize()
 16492 ms  0x6c80 ret:0x100
 16492 ms  SECKEY_ECParamsToBasePointOrderLen()
 16492 ms  0x6c80 ret:0x100
 16492 ms  SECKEY_ECParamsToBasePointOrderLen()
 16492 ms  0x6c80 ret:0x100
 16492 ms  0x6c80 EC_ValidatePublicKey()
 16494 ms  0x6c80 ret:0x0
 16497 ms  SECKEY_ECParamsToKeySize()
 16497 ms  0x6c80 ret:0x100
 16497 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16497 ms  0x6c80 cx:0x7f626df5dc88
 16497 ms     | 0x6c80 EC_ValidatePublicKey()
 16499 ms     | 0x6c80 ret:0x0
 16499 ms  0x6c80 ret:0x7f624d709820::7f624d709820  40 b2 c8 68                                      @..h
 16499 ms  0x6c80 PK11_PubDeriveWithKDF()
 16499 ms  0x6c80 seckey:0x7f624d709820
 16499 ms     | 0x6c80 EC_ValidatePublicKey()
 16501 ms     | 0x6c80 ret:0x0
 16502 ms  0x6c80 ret:0x7f626998b680
 16502 ms  0x6c80 PK11_DeriveWithFlags()
 16502 ms  0x6c80 basekey:0x7f626998b680
 16502 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16502 ms  0x6c80 ret:0x7f626d268a80
 16502 ms  0x6c80 PK11_Derive()
 16502 ms  0x6c80 basekey:0x7f626d268a80
 16502 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16502 ms  0x6c80 ret:0x7f626d281980
 16502 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16502 ms  0x6c80 privk:0x7f624d709820::7f624d709820  40 b2 c8 68                                      @..h
 16502 ms  0x6c80 privk:0x7f624d709820::7f624d709820  e5 e5 e5 e5                                      ....
 16502 ms  0x6c80 PK11_Encrypt()
 16502 ms  0x6c80 symkey:0x7f626d28b980
 16503 ms  0x6c80 SSL_AuthCertificateComplete()
 16503 ms  0x6c80 fd:0x7f624ec7ba90
 16503 ms  0x6c80 err:0x0
 16503 ms  0x6c80 SSL_AuthCertificateComplete()
 16503 ms  0x6c80 fd:0x7f624ec7be20
 16503 ms  0x6c80 err:0x0
           /* TID 0x6c88 */
 16504 ms  0x6c88 PR_Close()
 16504 ms  0x6c88 fd:0x7f624ec7b6d0
           /* TID 0x6c80 */
 16505 ms  0x6c80 SSL_ImportFD()
 16505 ms  0x6c80 ret:0x7f626484b280
 16505 ms  0x6c80 SSL_AuthCertificateHook()
 16505 ms  0x6c80 fd:0x7f626484b280
 16505 ms  0x6c80 ret:0x0
 16506 ms  0x6c80 PR_Connect()
 16506 ms  0x6c80 fd:0x7f626484b280
 16506 ms  0x6c80 PR_Connect()
 16506 ms  0x6c80 fd:0x7f6261bd5e50
           /* TID 0x6c88 */
 16507 ms  0x6c88 PR_Close()
 16507 ms  0x6c88 fd:0x7f624ec7b280
           /* TID 0x6c80 */
 16508 ms  0x6c80 PK11_Encrypt()
 16508 ms  0x6c80 symkey:0x7f626d268f80
           /* TID 0x6c88 */
 16510 ms  0x6c88 PR_Close()
 16510 ms  0x6c88 fd:0x7f624ec7b280
           /* TID 0x6c80 */
 16512 ms  0x6c80 PK11_Encrypt()
 16512 ms  0x6c80 symkey:0x7f626d28b980
 16513 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16513 ms  0x6c80 cx:0x7f626d2b7988
 16514 ms     | 0x6c80 EC_ValidatePublicKey()
 16514 ms     | 0x6c80 ret:0x0
 16514 ms  0x6c80 ret:0x7f624d70c020::7f624d70c020  e0 a7 79 61                                      ..ya
 16514 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16514 ms  0x6c80 cx:0x7f626d2b7988
 16514 ms     | 0x6c80 EC_ValidatePublicKey()
 16519 ms     | 0x6c80 ret:0x0
 16519 ms  0x6c80 ret:0x7f624d70e820::7f624d70e820  c0 d4 cf 68                                      ...h
 16519 ms  0x6c80 SSL_ImportFD()
 16519 ms  0x6c80 ret:0x7f626cbb2c70
 16519 ms  0x6c80 SSL_AuthCertificateHook()
 16519 ms  0x6c80 fd:0x7f626cbb2c70
 16519 ms  0x6c80 ret:0x0
 16519 ms  0x6c80 PR_Connect()
 16519 ms  0x6c80 fd:0x7f626cbb2c70
 16520 ms  0x6c80 SSL_ImportFD()
 16520 ms  0x6c80 ret:0x7f624ec7b2b0
 16520 ms  0x6c80 SSL_AuthCertificateHook()
 16520 ms  0x6c80 fd:0x7f624ec7b2b0
 16520 ms  0x6c80 ret:0x0
 16520 ms  0x6c80 PR_Connect()
 16520 ms  0x6c80 fd:0x7f624ec7b2b0
 16520 ms  0x6c80 SSL_ImportFD()
 16520 ms  0x6c80 ret:0x7f62617c4040
 16520 ms  0x6c80 SSL_AuthCertificateHook()
 16520 ms  0x6c80 fd:0x7f62617c4040
 16520 ms  0x6c80 ret:0x0
 16520 ms  0x6c80 PR_Connect()
 16520 ms  0x6c80 fd:0x7f62617c4040
 16520 ms  0x6c80 SSL_ImportFD()
 16520 ms  0x6c80 ret:0x7f6269a6bc10
 16520 ms  0x6c80 SSL_AuthCertificateHook()
 16520 ms  0x6c80 fd:0x7f6269a6bc10
 16520 ms  0x6c80 ret:0x0
 16520 ms  0x6c80 PR_Connect()
 16520 ms  0x6c80 fd:0x7f6269a6bc10
 16521 ms  0x6c80 SSL_ImportFD()
 16521 ms  0x6c80 ret:0x7f626a917070
 16521 ms  0x6c80 SSL_AuthCertificateHook()
 16521 ms  0x6c80 fd:0x7f626a917070
 16521 ms  0x6c80 ret:0x0
 16521 ms  0x6c80 PR_Connect()
 16521 ms  0x6c80 fd:0x7f626a917070
 16521 ms  0x6c80 SSL_ImportFD()
 16521 ms  0x6c80 ret:0x7f626cbb2790
 16521 ms  0x6c80 SSL_AuthCertificateHook()
 16521 ms  0x6c80 fd:0x7f626cbb2790
 16521 ms  0x6c80 ret:0x0
 16521 ms  0x6c80 PR_Connect()
 16521 ms  0x6c80 fd:0x7f626cbb2790
 16575 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16575 ms  0x6c80 cx:0x7f626df5d7a8
 16576 ms     | 0x6c80 EC_ValidatePublicKey()
 16576 ms     | 0x6c80 ret:0x0
 16576 ms  0x6c80 ret:0x7f624d711820::7f624d711820  40 a7 9e 69                                      @..i
 16576 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16576 ms  0x6c80 cx:0x7f626df5d7a8
 16577 ms     | 0x6c80 EC_ValidatePublicKey()
 16579 ms     | 0x6c80 ret:0x0
 16579 ms  0x6c80 ret:0x7f624d713820::7f624d713820  a0 36 0a 6a                                      .6.j
 16606 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16606 ms  0x6c80 cx:0x7f626df5e4a8
 16607 ms     | 0x6c80 EC_ValidatePublicKey()
 16608 ms     | 0x6c80 ret:0x0
 16608 ms  0x6c80 ret:0x7f624d716820::7f624d716820  60 3f 0a 6a                                      `?.j
 16608 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16608 ms  0x6c80 cx:0x7f626df5e4a8
 16610 ms     | 0x6c80 EC_ValidatePublicKey()
 16614 ms     | 0x6c80 ret:0x0
 16614 ms  0x6c80 ret:0x7f624d718820::7f624d718820  00 ab dd 6c                                      ...l
 16620 ms  0x6c80 PK11_Encrypt()
 16620 ms  0x6c80 symkey:0x7f6262ecbf80
           /* TID 0x6c88 */
 16629 ms  0x6c88 PR_Close()
 16629 ms  0x6c88 fd:0x7f626df06d60
           /* TID 0x6c80 */
 16634 ms  0x6c80 PK11_Encrypt()
 16634 ms  0x6c80 symkey:0x7f625fca9880
           /* TID 0x6c88 */
 16637 ms  0x6c88 PR_Close()
 16637 ms  0x6c88 fd:0x7f62664a2d60
 16639 ms  0x6c88 PR_Close()
 16639 ms  0x6c88 fd:0x7f62664a2d60
           /* TID 0x6c80 */
 16639 ms  0x6c80 PK11_Encrypt()
 16639 ms  0x6c80 symkey:0x7f62663e0780
 16640 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16640 ms  0x6c80 cx:0x7f626d2b4c08
 16641 ms     | 0x6c80 EC_ValidatePublicKey()
 16641 ms     | 0x6c80 ret:0x0
 16641 ms  0x6c80 ret:0x7f624d71b820::7f624d71b820  80 9d cf 6c                                      ...l
 16641 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16641 ms  0x6c80 cx:0x7f626d2b4c08
 16642 ms     | 0x6c80 EC_ValidatePublicKey()
 16645 ms     | 0x6c80 ret:0x0
 16645 ms  0x6c80 ret:0x7f624d71d820::7f624d71d820  10 ca 2a 6d                                      ..*m
           /* TID 0x6c88 */
 16646 ms  0x6c88 PR_Close()
 16646 ms  0x6c88 fd:0x7f6260a4ad30
 16647 ms  0x6c88 PR_Close()
 16647 ms  0x6c88 fd:0x7f6260a4ad30
 16658 ms  0x6c88 PR_Close()
 16658 ms  0x6c88 fd:0x7f6265fed880
           /* TID 0x6c80 */
 16660 ms  SECKEY_ECParamsToKeySize()
 16660 ms  0x6c80 ret:0xff
 16660 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16660 ms  0x6c80 cx:0x7f626d2b62c8
 16660 ms     | 0x6c80 EC_ValidatePublicKey()
 16660 ms     | 0x6c80 ret:0x0
 16660 ms  0x6c80 ret:0x7f626506e820::7f626506e820  40 cc 2a 6d                                      @.*m
 16661 ms  0x6c80 PK11_PubDeriveWithKDF()
 16661 ms  0x6c80 seckey:0x7f626506e820
 16661 ms     | 0x6c80 EC_ValidatePublicKey()
 16661 ms     | 0x6c80 ret:0x0
 16661 ms  0x6c80 ret:0x7f626998b680
 16661 ms  0x6c80 PK11_DeriveWithFlags()
 16661 ms  0x6c80 basekey:0x7f626998b680
 16661 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16665 ms  0x6c80 ret:0x7f626d28cc80
 16665 ms  0x6c80 PK11_Derive()
 16665 ms  0x6c80 basekey:0x7f626d28cc80
 16665 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16665 ms  0x6c80 ret:0x7f62617c2980
 16665 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16665 ms  0x6c80 privk:0x7f626506e820::7f626506e820  40 cc 2a 6d                                      @.*m
 16665 ms  0x6c80 privk:0x7f626506e820::7f626506e820  e5 e5 e5 e5                                      ....
 16665 ms  0x6c80 PK11_Encrypt()
 16665 ms  0x6c80 symkey:0x7f626d28ce80
 16667 ms  0x6c80 PK11_Encrypt()
 16667 ms  0x6c80 symkey:0x7f625fcffd00
           /* TID 0x6c88 */
 16671 ms  0x6c88 PR_Close()
 16671 ms  0x6c88 fd:0x7f624d944640
 16671 ms  0x6c88 PR_Close()
 16671 ms  0x6c88 fd:0x7f624d944520
 16672 ms  0x6c88 PR_Close()
 16672 ms  0x6c88 fd:0x7f624d944520
 16675 ms  0x6c88 PR_Close()
 16675 ms  0x6c88 fd:0x7f62664dd1c0
           /* TID 0x6c80 */
 16675 ms  0x6c80 PK11_Encrypt()
 16675 ms  0x6c80 symkey:0x7f62611c3880
 16675 ms  0x6c80 PK11_Encrypt()
 16675 ms  0x6c80 symkey:0x7f62661a7480
 16676 ms  0x6c80 PK11_Encrypt()
 16676 ms  0x6c80 symkey:0x7f625fcc1b00
 16676 ms  0x6c80 PK11_Encrypt()
 16676 ms  0x6c80 symkey:0x7f6265878400
           /* TID 0x6c88 */
 16677 ms  0x6c88 PR_Close()
 16677 ms  0x6c88 fd:0x7f6266329460
 16678 ms  0x6c88 PR_Close()
 16678 ms  0x6c88 fd:0x7f6266329460
           /* TID 0x6c80 */
 16679 ms  SECKEY_ECParamsToKeySize()
 16679 ms  0x6c80 ret:0xff
 16679 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16679 ms  0x6c80 cx:0x7f626d2b6c88
 16680 ms     | 0x6c80 EC_ValidatePublicKey()
 16680 ms     | 0x6c80 ret:0x0
 16680 ms  0x6c80 ret:0x7f6269f7a020::7f6269f7a020  00 cb 2a 6d                                      ..*m
 16680 ms  0x6c80 PK11_PubDeriveWithKDF()
 16680 ms  0x6c80 seckey:0x7f6269f7a020
 16680 ms     | 0x6c80 EC_ValidatePublicKey()
 16680 ms     | 0x6c80 ret:0x0
 16681 ms  0x6c80 ret:0x7f626998b680
 16681 ms  0x6c80 PK11_DeriveWithFlags()
 16681 ms  0x6c80 basekey:0x7f626998b680
 16681 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16681 ms  0x6c80 ret:0x7f626d29c400
 16681 ms  0x6c80 PK11_Derive()
 16681 ms  0x6c80 basekey:0x7f626d29c400
 16681 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16681 ms  0x6c80 ret:0x7f626d29c480
 16681 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16681 ms  0x6c80 privk:0x7f6269f7a020::7f6269f7a020  00 cb 2a 6d                                      ..*m
 16681 ms  0x6c80 privk:0x7f6269f7a020::7f6269f7a020  e5 e5 e5 e5                                      ....
 16681 ms  0x6c80 PK11_Encrypt()
 16681 ms  0x6c80 symkey:0x7f626d29c600
 16686 ms  0x6c80 PK11_Encrypt()
 16686 ms  0x6c80 symkey:0x7f6265cdf700
 16686 ms  0x6c80 PK11_Encrypt()
 16686 ms  0x6c80 symkey:0x7f625fea7300
           /* TID 0x6c88 */
 16692 ms  0x6c88 PR_Close()
 16692 ms  0x6c88 fd:0x7f624d944640
           /* TID 0x6c80 */
 16692 ms  0x6c80 PK11_Encrypt()
 16692 ms  0x6c80 symkey:0x7f626cbfff00
 16695 ms  0x6c80 PK11_Encrypt()
 16695 ms  0x6c80 symkey:0x7f625fc9b080
           /* TID 0x6c88 */
 16696 ms  0x6c88 PR_Close()
 16696 ms  0x6c88 fd:0x7f624d944640
           /* TID 0x6d19 */
 16697 ms  0x6d19 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16697 ms  0x6d19 ret:0x0
 16697 ms  0x6d19 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16697 ms  0x6d19 ret:0x0
           /* TID 0x6c80 */
 16698 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16698 ms  0x6c80 privk:0x7f62661dc020::7f62661dc020  e0 9c cf 6c                                      ...l
 16698 ms  0x6c80 privk:0x7f62661dc020::7f62661dc020  e5 e5 e5 e5                                      ....
 16698 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16698 ms  0x6c80 privk:0x7f6265052820::7f6265052820  90 cc 96 6a                                      ...j
 16698 ms  0x6c80 privk:0x7f6265052820::7f6265052820  e5 e5 e5 e5                                      ....
 16698 ms  0x6c80 PR_Close()
 16698 ms  0x6c80 fd:0x7f626f8758b0
 16698 ms     | 0x6c80 PK11_Encrypt()
 16698 ms     | 0x6c80 symkey:0x7f626d268800
 16700 ms  0x6c80 SSL_AuthCertificateComplete()
 16700 ms  0x6c80 fd:0x7f624d944d90
 16700 ms  0x6c80 err:0x0
 16702 ms  0x6c80 PK11_Encrypt()
 16702 ms  0x6c80 symkey:0x7f626d28ce80
 16703 ms  0x6c80 PK11_Encrypt()
 16703 ms  0x6c80 symkey:0x7f626d28ce80
 16707 ms  0x6c80 PK11_Encrypt()
 16707 ms  0x6c80 symkey:0x7f62613c0a80
           /* TID 0x6c88 */
 16708 ms  0x6c88 PR_Close()
 16708 ms  0x6c88 fd:0x7f624d944100
           /* TID 0x6c80 */
 16711 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16711 ms  0x6c80 privk:0x7f626d209020::7f626d209020  20 e9 29 6d                                       .)m
 16711 ms  0x6c80 privk:0x7f626d209020::7f626d209020  e5 e5 e5 e5                                      ....
 16712 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16712 ms  0x6c80 privk:0x7f626a767020::7f626a767020  f0 e6 29 6d                                      ..)m
 16712 ms  0x6c80 privk:0x7f626a767020::7f626a767020  e5 e5 e5 e5                                      ....
 16712 ms  0x6c80 PR_Close()
 16712 ms  0x6c80 fd:0x7f624ec7ba90
 16712 ms     | 0x6c80 PK11_Encrypt()
 16712 ms     | 0x6c80 symkey:0x7f626d268f80
           /* TID 0x6c88 */
 16714 ms  0x6c88 PR_Close()
 16714 ms  0x6c88 fd:0x7f624d944100
           /* TID 0x6d25 */
 16715 ms  0x6d25 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16715 ms  0x6d25 ret:0x0
 16715 ms  0x6d25 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16715 ms  0x6d25 ret:0x0
           /* TID 0x6c80 */
 16715 ms  0x6c80 SSL_AuthCertificateComplete()
 16715 ms  0x6c80 fd:0x7f624d944fd0
 16715 ms  0x6c80 err:0x0
 16715 ms  0x6c80 PK11_Encrypt()
 16715 ms  0x6c80 symkey:0x7f626d29c600
 16716 ms  0x6c80 PK11_Encrypt()
 16716 ms  0x6c80 symkey:0x7f626d28ce80
 16744 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16744 ms  0x6c80 privk:0x7f624d9ac820::7f624d9ac820  c0 ee 29 6d                                      ..)m
 16744 ms  0x6c80 privk:0x7f624d9ac820::7f624d9ac820  e5 e5 e5 e5                                      ....
 16744 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16744 ms  0x6c80 privk:0x7f624d9aa820::7f624d9aa820  40 37 0a 6a                                      @7.j
 16745 ms  0x6c80 privk:0x7f624d9aa820::7f624d9aa820  e5 e5 e5 e5                                      ....
 16745 ms  0x6c80 PR_Close()
 16745 ms  0x6c80 fd:0x7f624ec7be20
 16745 ms     | 0x6c80 PK11_Encrypt()
 16745 ms     | 0x6c80 symkey:0x7f626d28b980
 16756 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16756 ms  0x6c80 cx:0x7f626df5eb28
 16756 ms     | 0x6c80 EC_ValidatePublicKey()
 16756 ms     | 0x6c80 ret:0x0
 16756 ms  0x6c80 ret:0x7f624d709820::7f624d709820  a0 e6 c5 68                                      ...h
 16756 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16756 ms  0x6c80 cx:0x7f626df5eb28
 16757 ms     | 0x6c80 EC_ValidatePublicKey()
 16759 ms     | 0x6c80 ret:0x0
 16759 ms  0x6c80 ret:0x7f624d9a9020::7f624d9a9020  b0 df 90 6a                                      ...j
 16759 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16759 ms  0x6c80 cx:0x7f626df5e168
 16760 ms     | 0x6c80 EC_ValidatePublicKey()
 16760 ms     | 0x6c80 ret:0x0
 16760 ms  0x6c80 ret:0x7f624d9ac020::7f624d9ac020  b0 cf 96 6a                                      ...j
 16760 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16760 ms  0x6c80 cx:0x7f626df5e168
 16760 ms     | 0x6c80 EC_ValidatePublicKey()
 16762 ms     | 0x6c80 ret:0x0
 16762 ms  0x6c80 ret:0x7f626a76f820::7f626a76f820  e0 9c cf 6c                                      ...l
 16763 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16763 ms  0x6c80 cx:0x7f624d735248
 16763 ms     | 0x6c80 EC_ValidatePublicKey()
 16763 ms     | 0x6c80 ret:0x0
 16763 ms  0x6c80 ret:0x7f626d207820::7f626d207820  f0 e6 29 6d                                      ..)m
 16763 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16763 ms  0x6c80 cx:0x7f624d735248
 16764 ms     | 0x6c80 EC_ValidatePublicKey()
 16766 ms     | 0x6c80 ret:0x0
 16766 ms  0x6c80 ret:0x7f626d218020::7f626d218020  20 e9 29 6d                                       .)m
 16766 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16766 ms  0x6c80 cx:0x7f626df5ecc8
 16766 ms     | 0x6c80 EC_ValidatePublicKey()
 16766 ms     | 0x6c80 ret:0x0
 16766 ms  0x6c80 ret:0x7f624d7c9820::7f624d7c9820  30 ed 29 6d                                      0.)m
 16767 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16767 ms  0x6c80 cx:0x7f626df5ecc8
 16767 ms     | 0x6c80 EC_ValidatePublicKey()
 16769 ms     | 0x6c80 ret:0x0
 16769 ms  0x6c80 ret:0x7f624d7cb820::7f624d7cb820  70 c9 2a 6d                                      p.*m
 16769 ms  0x6c80 SSL_ImportFD()
 16769 ms  0x6c80 ret:0x7f626cbb2be0
 16769 ms  0x6c80 SSL_AuthCertificateHook()
 16769 ms  0x6c80 fd:0x7f626cbb2be0
 16769 ms  0x6c80 ret:0x0
 16769 ms  0x6c80 PR_Connect()
 16769 ms  0x6c80 fd:0x7f626cbb2be0
 16769 ms  0x6c80 PR_Connect()
 16769 ms  0x6c80 fd:0x7f626cbb2a60
 16769 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16769 ms  0x6c80 cx:0x7f624d7350a8
 16770 ms     | 0x6c80 EC_ValidatePublicKey()
 16770 ms     | 0x6c80 ret:0x0
 16770 ms  0x6c80 ret:0x7f624d7ce020::7f624d7ce020  40 cc 2a 6d                                      @.*m
 16770 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16770 ms  0x6c80 cx:0x7f624d7350a8
 16771 ms     | 0x6c80 EC_ValidatePublicKey()
 16772 ms     | 0x6c80 ret:0x0
 16772 ms  0x6c80 ret:0x7f624d7d0020::7f624d7d0020  60 50 c0 6d                                      `P.m
 16772 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16772 ms  0x6c80 cx:0x7f626df5ee68
 16773 ms     | 0x6c80 EC_ValidatePublicKey()
 16773 ms     | 0x6c80 ret:0x0
 16773 ms  0x6c80 ret:0x7f624d7d2820::7f624d7d2820  a0 51 c0 6d                                      .Q.m
 16773 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16773 ms  0x6c80 cx:0x7f626df5ee68
 16774 ms     | 0x6c80 EC_ValidatePublicKey()
 16775 ms     | 0x6c80 ret:0x0
 16775 ms  0x6c80 ret:0x7f624d7d4820::7f624d7d4820  80 53 c0 6d                                      .S.m
 16812 ms  0x6c80 SSL_ImportFD()
 16812 ms  0x6c80 ret:0x7f626eab8b20
 16812 ms  0x6c80 SSL_AuthCertificateHook()
 16812 ms  0x6c80 fd:0x7f626eab8b20
 16812 ms  0x6c80 ret:0x0
 16813 ms  0x6c80 PR_Connect()
 16813 ms  0x6c80 fd:0x7f626eab8b20
 16813 ms  0x6c80 SSL_ImportFD()
 16813 ms  0x6c80 ret:0x7f62617c44f0
 16813 ms  0x6c80 SSL_AuthCertificateHook()
 16813 ms  0x6c80 fd:0x7f62617c44f0
 16813 ms  0x6c80 ret:0x0
 16813 ms  0x6c80 PR_Connect()
 16813 ms  0x6c80 fd:0x7f62617c44f0
 16813 ms  0x6c80 SSL_ImportFD()
 16813 ms  0x6c80 ret:0x7f62617c4700
 16813 ms  0x6c80 SSL_AuthCertificateHook()
 16813 ms  0x6c80 fd:0x7f62617c4700
 16813 ms  0x6c80 ret:0x0
 16813 ms  0x6c80 PR_Connect()
 16813 ms  0x6c80 fd:0x7f62617c4700
 16829 ms  SECKEY_ECParamsToKeySize()
 16829 ms  0x6c80 ret:0xff
 16829 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16829 ms  0x6c80 cx:0x7f626d2b7988
 16830 ms     | 0x6c80 EC_ValidatePublicKey()
 16830 ms     | 0x6c80 ret:0x0
 16830 ms  0x6c80 ret:0x7f624d7d7820::7f624d7d7820  a0 56 c0 6d                                      .V.m
 16830 ms  0x6c80 PK11_PubDeriveWithKDF()
 16830 ms  0x6c80 seckey:0x7f624d7d7820
 16830 ms     | 0x6c80 EC_ValidatePublicKey()
 16830 ms     | 0x6c80 ret:0x0
 16831 ms  0x6c80 ret:0x7f626d281980
 16831 ms  0x6c80 PK11_DeriveWithFlags()
 16831 ms  0x6c80 basekey:0x7f626d281980
 16831 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16831 ms  0x6c80 ret:0x7f626d268a80
 16831 ms  0x6c80 PK11_Derive()
 16831 ms  0x6c80 basekey:0x7f626d268a80
 16831 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16831 ms  0x6c80 ret:0x7f626d268b00
 16831 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16831 ms  0x6c80 privk:0x7f624d7d7820::7f624d7d7820  a0 56 c0 6d                                      .V.m
 16831 ms  0x6c80 privk:0x7f624d7d7820::7f624d7d7820  e5 e5 e5 e5                                      ....
 16831 ms  0x6c80 PK11_Encrypt()
 16831 ms  0x6c80 symkey:0x7f626d281c00
 16831 ms  0x6c80 SSL_AuthCertificateComplete()
 16831 ms  0x6c80 fd:0x7f626487d040
 16831 ms  0x6c80 err:0x0
 16832 ms  0x6c80 PK11_Encrypt()
 16832 ms  0x6c80 symkey:0x7f626d281c00
 16844 ms  SECKEY_ECParamsToKeySize()
 16844 ms  0x6c80 ret:0x100
 16844 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16844 ms  0x6c80 cx:0x7f626df5bda8
 16845 ms     | 0x6c80 EC_ValidatePublicKey()
 16847 ms     | 0x6c80 ret:0x0
 16847 ms  0x6c80 ret:0x7f624d7de820::7f624d7de820  30 58 c0 6d                                      0X.m
 16847 ms  0x6c80 PK11_PubDeriveWithKDF()
 16847 ms  0x6c80 seckey:0x7f624d7de820
 16847 ms     | 0x6c80 EC_ValidatePublicKey()
 16849 ms     | 0x6c80 ret:0x0
 16851 ms  0x6c80 ret:0x7f626d281980
 16851 ms  0x6c80 PK11_DeriveWithFlags()
 16851 ms  0x6c80 basekey:0x7f626d281980
 16851 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16851 ms  0x6c80 ret:0x7f626d268d80
 16851 ms  0x6c80 PK11_Derive()
 16851 ms  0x6c80 basekey:0x7f626d268d80
 16851 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16851 ms  0x6c80 ret:0x7f626d268700
 16851 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16851 ms  0x6c80 privk:0x7f624d7de820::7f624d7de820  30 58 c0 6d                                      0X.m
 16851 ms  0x6c80 privk:0x7f624d7de820::7f624d7de820  e5 e5 e5 e5                                      ....
 16852 ms  0x6c80 PK11_Encrypt()
 16852 ms  0x6c80 symkey:0x7f626d269080
 16852 ms  0x6c80 SSL_AuthCertificateComplete()
 16852 ms  0x6c80 fd:0x7f626df06dc0
 16852 ms  0x6c80 err:0x0
 16852 ms  0x6c80 PK11_Encrypt()
 16852 ms  0x6c80 symkey:0x7f626d269080
 16853 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16853 ms  0x6c80 cx:0x7f626df5dfc8
 16853 ms     | 0x6c80 EC_ValidatePublicKey()
 16853 ms     | 0x6c80 ret:0x0
 16854 ms  0x6c80 ret:0x7f624d7de820::7f624d7de820  40 57 c0 6d                                      @W.m
 16854 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16854 ms  0x6c80 cx:0x7f626df5dfc8
 16854 ms     | 0x6c80 EC_ValidatePublicKey()
 16856 ms     | 0x6c80 ret:0x0
 16856 ms  0x6c80 ret:0x7f624d7e0820::7f624d7e0820  20 59 c0 6d                                       Y.m
 16881 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16881 ms  0x6c80 cx:0x7f624d736428
 16882 ms     | 0x6c80 EC_ValidatePublicKey()
 16882 ms     | 0x6c80 ret:0x0
 16882 ms  0x6c80 ret:0x7f624d7e3020::7f624d7e3020  b0 5a c0 6d                                      .Z.m
 16882 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16882 ms  0x6c80 cx:0x7f624d736428
 16883 ms     | 0x6c80 EC_ValidatePublicKey()
 16885 ms     | 0x6c80 ret:0x0
 16885 ms  0x6c80 ret:0x7f624d7e5020::7f624d7e5020  90 5c c0 6d                                      .\.m
 16886 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16886 ms  0x6c80 cx:0x7f624d736908
 16887 ms     | 0x6c80 EC_ValidatePublicKey()
 16887 ms     | 0x6c80 ret:0x0
 16887 ms  0x6c80 ret:0x7f624d95a820::7f624d95a820  70 5e c0 6d                                      p^.m
 16887 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16887 ms  0x6c80 cx:0x7f624d736908
 16888 ms     | 0x6c80 EC_ValidatePublicKey()
 16890 ms     | 0x6c80 ret:0x0
 16890 ms  0x6c80 ret:0x7f624edaa820::7f624edaa820  b0 20 c8 6d                                      . .m
 16890 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16890 ms  0x6c80 cx:0x7f624d736aa8
 16891 ms     | 0x6c80 EC_ValidatePublicKey()
 16891 ms     | 0x6c80 ret:0x0
 16891 ms  0x6c80 ret:0x7f6261771820::7f6261771820  f0 21 c8 6d                                      .!.m
 16891 ms  0x6c80 SECKEY_CreateECPrivateKey()
 16891 ms  0x6c80 cx:0x7f624d736aa8
 16892 ms     | 0x6c80 EC_ValidatePublicKey()
 16894 ms     | 0x6c80 ret:0x0
 16894 ms  0x6c80 ret:0x7f6261782020::7f6261782020  d0 23 c8 6d                                      .#.m
 16899 ms  0x6c80 SSL_ImportFD()
 16899 ms  0x6c80 ret:0x7f626df57610
 16899 ms  0x6c80 SSL_AuthCertificateHook()
 16899 ms  0x6c80 fd:0x7f626df57610
 16899 ms  0x6c80 ret:0x0
 16899 ms  0x6c80 PR_Connect()
 16899 ms  0x6c80 fd:0x7f626df57610
 16899 ms  0x6c80 SSL_ImportFD()
 16899 ms  0x6c80 ret:0x7f62664177c0
 16899 ms  0x6c80 SSL_AuthCertificateHook()
 16899 ms  0x6c80 fd:0x7f62664177c0
 16899 ms  0x6c80 ret:0x0
 16900 ms  0x6c80 PR_Connect()
 16900 ms  0x6c80 fd:0x7f62664177c0
 16923 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16923 ms  0x6c80 privk:0x7f626a76d020::7f626a76d020  10 8a f2 69                                      ...i
 16923 ms  0x6c80 privk:0x7f626a76d020::7f626a76d020  e5 e5 e5 e5                                      ....
 16923 ms  0x6c80 SECKEY_DestroyPrivateKey()
 16923 ms  0x6c80 privk:0x7f6269ed9820::7f6269ed9820  70 89 3e 61                                      p.>a
 16924 ms  0x6c80 privk:0x7f6269ed9820::7f6269ed9820  e5 e5 e5 e5                                      ....
 16954 ms  0x6c80 PK11_Derive()
 16954 ms  0x6c80 basekey:0x7f626d281980
 16954 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16954 ms  0x6c80 ret:0x7f6269a26880
 16954 ms  0x6c80 PK11_PubDeriveWithKDF()
 16954 ms  0x6c80 seckey:0x7f624d7e3020
 16954 ms     | 0x6c80 EC_ValidatePublicKey()
 16954 ms     | 0x6c80 ret:0x0
 16955 ms  0x6c80 ret:0x7f626d281980
 16955 ms  SECKEY_ECParamsToKeySize()
 16955 ms  0x6c80 ret:0xff
 16955 ms  0x6c80 PK11_DeriveWithFlags()
 16955 ms  0x6c80 basekey:0x7f6269a26880
 16955 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16955 ms  0x6c80 ret:0x7f626998b680
 16955 ms  0x6c80 PK11_Derive()
 16955 ms  0x6c80 basekey:0x7f626d281980
 16955 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16955 ms  0x6c80 ret:0x7f626d268880
 16955 ms  0x6c80 PK11_DeriveWithFlags()
 16955 ms  0x6c80 basekey:0x7f626d268880
 16955 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16955 ms  0x6c80 ret:0x7f6269a26880
 16955 ms  0x6c80 PK11_DeriveWithFlags()
 16955 ms  0x6c80 basekey:0x7f626d268880
 16955 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16955 ms  0x6c80 ret:0x7f626d281980
 16955 ms  0x6c80 PK11_DeriveWithFlags()
 16955 ms  0x6c80 basekey:0x7f626d268880
 16955 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16955 ms  0x6c80 ret:0x7f626998b680
 16955 ms  0x6c80 PK11_Derive()
 16955 ms  0x6c80 basekey:0x7f626d268780
 16955 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16955 ms  0x6c80 ret:0x7f626d268900
 16955 ms  0x6c80 PK11_DeriveWithFlags()
 16955 ms  0x6c80 basekey:0x7f626d281980
 16955 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16956 ms  0x6c80 ret:0x7f626d268880
 16956 ms  0x6c80 PK11_DeriveWithFlags()
 16956 ms  0x6c80 basekey:0x7f626d281980
 16956 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16956 ms  0x6c80 ret:0x7f626998b680
 16959 ms  0x6c80 PK11_DeriveWithFlags()
 16959 ms  0x6c80 basekey:0x7f626d281980
 16959 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16959 ms  0x6c80 ret:0x7f626998b680
 16960 ms  0x6c80 PK11_Derive()
 16960 ms  0x6c80 basekey:0x7f626998b680
 16960 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16960 ms  0x6c80 ret:0x7f626d268780
 16960 ms  0x6c80 PK11_PubDeriveWithKDF()
 16960 ms  0x6c80 seckey:0x7f624d95a820
 16960 ms     | 0x6c80 EC_ValidatePublicKey()
 16960 ms     | 0x6c80 ret:0x0
 16961 ms  0x6c80 ret:0x7f626998b680
 16961 ms  SECKEY_ECParamsToKeySize()
 16961 ms  0x6c80 ret:0xff
 16961 ms  0x6c80 PK11_DeriveWithFlags()
 16961 ms  0x6c80 basekey:0x7f626d268780
 16961 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16961 ms  0x6c80 ret:0x7f626d268800
 16961 ms  0x6c80 PK11_Derive()
 16961 ms  0x6c80 basekey:0x7f626998b680
 16961 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16961 ms  0x6c80 ret:0x7f6265c65500
 16961 ms  0x6c80 PK11_DeriveWithFlags()
 16961 ms  0x6c80 basekey:0x7f6265c65500
 16962 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16962 ms  0x6c80 ret:0x7f626d268780
 16962 ms  0x6c80 PK11_DeriveWithFlags()
 16962 ms  0x6c80 basekey:0x7f6265c65500
 16962 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16962 ms  0x6c80 ret:0x7f626998b680
 16962 ms  0x6c80 PK11_DeriveWithFlags()
 16962 ms  0x6c80 basekey:0x7f6265c65500
 16962 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16962 ms  0x6c80 ret:0x7f626d268800
 16962 ms  0x6c80 PK11_Derive()
 16962 ms  0x6c80 basekey:0x7f6265cdf480
 16962 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16962 ms  0x6c80 ret:0x7f6265ce0700
 16962 ms  0x6c80 PK11_DeriveWithFlags()
 16962 ms  0x6c80 basekey:0x7f626998b680
 16962 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16962 ms  0x6c80 ret:0x7f6265c65500
 16962 ms  0x6c80 PK11_DeriveWithFlags()
 16962 ms  0x6c80 basekey:0x7f626998b680
 16962 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16962 ms  0x6c80 ret:0x7f626d268800
 16964 ms  0x6c80 PK11_DeriveWithFlags()
 16964 ms  0x6c80 basekey:0x7f626998b680
 16965 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16965 ms  0x6c80 ret:0x7f626d268800
 16965 ms  0x6c80 PK11_Derive()
 16965 ms  0x6c80 basekey:0x7f626d268800
 16965 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16965 ms  0x6c80 ret:0x7f6265cdf480
 16965 ms  0x6c80 PK11_PubDeriveWithKDF()
 16965 ms  0x6c80 seckey:0x7f6261771820
 16965 ms     | 0x6c80 EC_ValidatePublicKey()
 16965 ms     | 0x6c80 ret:0x0
 16966 ms  0x6c80 ret:0x7f626d268800
 16966 ms  SECKEY_ECParamsToKeySize()
 16966 ms  0x6c80 ret:0xff
 16966 ms  0x6c80 PK11_DeriveWithFlags()
 16966 ms  0x6c80 basekey:0x7f6265cdf480
 16967 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16967 ms  0x6c80 ret:0x7f6265fe9900
 16967 ms  0x6c80 PK11_Derive()
 16967 ms  0x6c80 basekey:0x7f626d268800
 16967 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16967 ms  0x6c80 ret:0x7f6265fe9b00
 16967 ms  0x6c80 PK11_DeriveWithFlags()
 16967 ms  0x6c80 basekey:0x7f6265fe9b00
 16967 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16967 ms  0x6c80 ret:0x7f6265cdf480
 16967 ms  0x6c80 PK11_DeriveWithFlags()
 16967 ms  0x6c80 basekey:0x7f6265fe9b00
 16967 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16967 ms  0x6c80 ret:0x7f626d268800
 16967 ms  0x6c80 PK11_DeriveWithFlags()
 16967 ms  0x6c80 basekey:0x7f6265fe9b00
 16967 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16967 ms  0x6c80 ret:0x7f6265fe9900
 16967 ms  0x6c80 PK11_Derive()
 16967 ms  0x6c80 basekey:0x7f6265fe9b80
 16967 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16967 ms  0x6c80 ret:0x7f6265fea700
 16967 ms  0x6c80 PK11_DeriveWithFlags()
 16967 ms  0x6c80 basekey:0x7f626d268800
 16967 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16967 ms  0x6c80 ret:0x7f6265fe9b00
 16967 ms  0x6c80 PK11_DeriveWithFlags()
 16967 ms  0x6c80 basekey:0x7f626d268800
 16967 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16967 ms  0x6c80 ret:0x7f6265fe9900
 16969 ms  0x6c80 PK11_DeriveWithFlags()
 16969 ms  0x6c80 basekey:0x7f626d268800
 16970 ms     | 0x6c80 PK11_DeriveWithTemplate()
 16970 ms  0x6c80 ret:0x7f6265fe9900
           /* TID 0x6c88 */
 16987 ms  0x6c88 PR_Close()
 16987 ms  0x6c88 fd:0x7f626a7d1340
           /* TID 0x6d19 */
 16987 ms  0x6d19 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16987 ms  0x6d19 ret:0x0
 16987 ms  0x6d19 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 16987 ms  0x6d19 ret:0x0
           /* TID 0x6c80 */
 16988 ms  0x6c80 SSL_AuthCertificateComplete()
 16988 ms  0x6c80 fd:0x7f626eab8b20
 16988 ms  0x6c80 err:0x0
 16988 ms     | 0x6c80 PK11_DeriveWithFlags()
 16988 ms     | 0x6c80 basekey:0x7f626d268900
 16988 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 16988 ms     | 0x6c80 ret:0x7f6265fe9900
 16988 ms     | 0x6c80 PK11_DeriveWithFlags()
 16988 ms     | 0x6c80 basekey:0x7f626d268900
 16988 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 16988 ms     | 0x6c80 ret:0x7f6265fe9b80
 16988 ms     | 0x6c80 PK11_DeriveWithFlags()
 16988 ms     | 0x6c80 basekey:0x7f626d268900
 16988 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 16988 ms     | 0x6c80 ret:0x7f6265bafa00
 16988 ms     | 0x6c80 PK11_DeriveWithFlags()
 16988 ms     | 0x6c80 basekey:0x7f6269a26880
 16988 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 16988 ms     | 0x6c80 ret:0x7f6265bb0600
 16988 ms     | 0x6c80 PK11_DeriveWithFlags()
 16988 ms     | 0x6c80 basekey:0x7f6269a26880
 16988 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 16988 ms     | 0x6c80 ret:0x7f6265c0bf00
 16988 ms     | 0x6c80 PK11_DeriveWithFlags()
 16988 ms     | 0x6c80 basekey:0x7f6265fe9b80
 16988 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 16988 ms     | 0x6c80 ret:0x7f6265c0bf00
 16988 ms     | 0x6c80 PK11_DeriveWithFlags()
 16988 ms     | 0x6c80 basekey:0x7f6265fe9b80
 16988 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 16988 ms     | 0x6c80 ret:0x7f6265feae00
 16988 ms     | 0x6c80 PK11_DeriveWithFlags()
 16988 ms     | 0x6c80 basekey:0x7f6269a26880
 16988 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 16988 ms     | 0x6c80 ret:0x7f626d268880
 16989 ms     | 0x6c80 PK11_Encrypt()
 16989 ms     | 0x6c80 symkey:0x7f6265bb0600
 16989 ms     | 0x6c80 PK11_DeriveWithFlags()
 16989 ms     | 0x6c80 basekey:0x7f6265fe9900
 16989 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 16989 ms     | 0x6c80 ret:0x7f626d268880
 16989 ms     | 0x6c80 PK11_DeriveWithFlags()
 16989 ms     | 0x6c80 basekey:0x7f6265fe9900
 16989 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 16989 ms     | 0x6c80 ret:0x7f6265feae00
 16989 ms     | 0x6c80 PK11_DeriveWithFlags()
 16989 ms     | 0x6c80 basekey:0x7f626d268900
 16989 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 16989 ms     | 0x6c80 ret:0x7f6265bb0600
 16989 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 16989 ms     | 0x6c80 privk:0x7f624d7e5020::7f624d7e5020  90 5c c0 6d                                      .\.m
 16989 ms     | 0x6c80 privk:0x7f624d7e5020::7f624d7e5020  e5 e5 e5 e5                                      ....
 16990 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 16990 ms     | 0x6c80 privk:0x7f624d7e3020::7f624d7e3020  b0 5a c0 6d                                      .Z.m
 16990 ms     | 0x6c80 privk:0x7f624d7e3020::7f624d7e3020  e5 e5 e5 e5                                      ....
 16994 ms  0x6c80 PK11_Encrypt()
 16994 ms  0x6c80 symkey:0x7f626d268880
 16994 ms  0x6c80 PK11_Encrypt()
 16994 ms  0x6c80 symkey:0x7f626d268880
 16995 ms  0x6c80 PK11_Encrypt()
 16995 ms  0x6c80 symkey:0x7f6262ecbf80
 17001 ms  SECKEY_ECParamsToKeySize()
 17001 ms  0x6c80 ret:0x100
 17001 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17001 ms  0x6c80 cx:0x7f626df5eb28
 17003 ms     | 0x6c80 EC_ValidatePublicKey()
 17012 ms     | 0x6c80 ret:0x0
 17012 ms  0x6c80 ret:0x7f624d95f820::7f624d95f820  10 5a c0 6d                                      .Z.m
 17012 ms  0x6c80 PK11_PubDeriveWithKDF()
 17012 ms  0x6c80 seckey:0x7f624d95f820
 17012 ms     | 0x6c80 EC_ValidatePublicKey()
 17015 ms     | 0x6c80 ret:0x0
 17019 ms  0x6c80 ret:0x7f626d281980
 17019 ms  0x6c80 PK11_DeriveWithFlags()
 17019 ms  0x6c80 basekey:0x7f626d281980
 17019 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17019 ms  0x6c80 ret:0x7f6269a26880
 17019 ms  0x6c80 PK11_Derive()
 17019 ms  0x6c80 basekey:0x7f6269a26880
 17019 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17019 ms  0x6c80 ret:0x7f626d268900
 17019 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17019 ms  0x6c80 privk:0x7f624d95f820::7f624d95f820  10 5a c0 6d                                      .Z.m
 17019 ms  0x6c80 privk:0x7f624d95f820::7f624d95f820  e5 e5 e5 e5                                      ....
 17019 ms  0x6c80 PK11_Encrypt()
 17019 ms  0x6c80 symkey:0x7f62663dbd80
           /* TID 0x6d25 */
 17020 ms  0x6d25 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17020 ms  0x6d25 ret:0x0
 17020 ms  0x6d25 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17020 ms  0x6d25 ret:0x0
           /* TID 0x6c88 */
 17021 ms  0x6c88 PR_Close()
 17021 ms  0x6c88 fd:0x7f62664a2040
           /* TID 0x6d24 */
 17021 ms  0x6d24 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17022 ms  0x6d24 ret:0x0
 17022 ms  0x6d24 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17022 ms  0x6d24 ret:0x0
           /* TID 0x6c88 */
 17022 ms  0x6c88 PR_Close()
 17022 ms  0x6c88 fd:0x7f62664a2040
           /* TID 0x6c80 */
 17022 ms  0x6c80 PK11_Encrypt()
 17022 ms  0x6c80 symkey:0x7f62611c3880
 17022 ms  0x6c80 SSL_AuthCertificateComplete()
 17022 ms  0x6c80 fd:0x7f624ec7b2b0
 17022 ms  0x6c80 err:0x0
 17023 ms  0x6c80 SSL_AuthCertificateComplete()
 17023 ms  0x6c80 fd:0x7f62617c44f0
 17023 ms  0x6c80 err:0x0
 17023 ms     | 0x6c80 PK11_DeriveWithFlags()
 17023 ms     | 0x6c80 basekey:0x7f6265ce0700
 17023 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17023 ms     | 0x6c80 ret:0x7f626d281980
 17023 ms     | 0x6c80 PK11_DeriveWithFlags()
 17023 ms     | 0x6c80 basekey:0x7f6265ce0700
 17023 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17023 ms     | 0x6c80 ret:0x7f6265feae00
 17023 ms     | 0x6c80 PK11_DeriveWithFlags()
 17023 ms     | 0x6c80 basekey:0x7f6265ce0700
 17023 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17023 ms     | 0x6c80 ret:0x7f6265e3c480
 17023 ms     | 0x6c80 PK11_DeriveWithFlags()
 17023 ms     | 0x6c80 basekey:0x7f626d268780
 17023 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17023 ms     | 0x6c80 ret:0x7f6265e3c900
 17023 ms     | 0x6c80 PK11_DeriveWithFlags()
 17023 ms     | 0x6c80 basekey:0x7f626d268780
 17023 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17023 ms     | 0x6c80 ret:0x7f6265fea980
 17023 ms     | 0x6c80 PK11_DeriveWithFlags()
 17023 ms     | 0x6c80 basekey:0x7f6265feae00
 17023 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17023 ms     | 0x6c80 ret:0x7f6265fea980
 17023 ms     | 0x6c80 PK11_DeriveWithFlags()
 17023 ms     | 0x6c80 basekey:0x7f6265feae00
 17023 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17023 ms     | 0x6c80 ret:0x7f6265feac80
 17023 ms     | 0x6c80 PK11_DeriveWithFlags()
 17023 ms     | 0x6c80 basekey:0x7f626d268780
 17023 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17023 ms     | 0x6c80 ret:0x7f6265c65500
 17023 ms     | 0x6c80 PK11_Encrypt()
 17023 ms     | 0x6c80 symkey:0x7f6265e3c900
 17023 ms     | 0x6c80 PK11_DeriveWithFlags()
 17023 ms     | 0x6c80 basekey:0x7f626d281980
 17023 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17023 ms     | 0x6c80 ret:0x7f6265c65500
 17023 ms     | 0x6c80 PK11_DeriveWithFlags()
 17023 ms     | 0x6c80 basekey:0x7f626d281980
 17023 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17023 ms     | 0x6c80 ret:0x7f6265feac80
 17023 ms     | 0x6c80 PK11_DeriveWithFlags()
 17023 ms     | 0x6c80 basekey:0x7f6265ce0700
 17023 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17023 ms     | 0x6c80 ret:0x7f6265e3c900
 17023 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 17023 ms     | 0x6c80 privk:0x7f624edaa820::7f624edaa820  b0 20 c8 6d                                      . .m
 17023 ms     | 0x6c80 privk:0x7f624edaa820::7f624edaa820  e5 e5 e5 e5                                      ....
 17024 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 17024 ms     | 0x6c80 privk:0x7f624d95a820::7f624d95a820  70 5e c0 6d                                      p^.m
 17024 ms     | 0x6c80 privk:0x7f624d95a820::7f624d95a820  e5 e5 e5 e5                                      ....
 17024 ms  0x6c80 SSL_AuthCertificateComplete()
 17024 ms  0x6c80 fd:0x7f62617c4700
 17024 ms  0x6c80 err:0x0
 17024 ms     | 0x6c80 PK11_DeriveWithFlags()
 17024 ms     | 0x6c80 basekey:0x7f6265fea700
 17024 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17024 ms     | 0x6c80 ret:0x7f626998b680
 17024 ms     | 0x6c80 PK11_DeriveWithFlags()
 17024 ms     | 0x6c80 basekey:0x7f6265fea700
 17024 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17024 ms     | 0x6c80 ret:0x7f626d268780
 17024 ms     | 0x6c80 PK11_DeriveWithFlags()
 17024 ms     | 0x6c80 basekey:0x7f6265fea700
 17024 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17024 ms     | 0x6c80 ret:0x7f6265ce0700
 17024 ms     | 0x6c80 PK11_DeriveWithFlags()
 17024 ms     | 0x6c80 basekey:0x7f6265cdf480
 17024 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17024 ms     | 0x6c80 ret:0x7f6265feac80
 17024 ms     | 0x6c80 PK11_DeriveWithFlags()
 17024 ms     | 0x6c80 basekey:0x7f6265cdf480
 17024 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17024 ms     | 0x6c80 ret:0x7f6265fead00
 17024 ms     | 0x6c80 PK11_DeriveWithFlags()
 17024 ms     | 0x6c80 basekey:0x7f626d268780
 17024 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17024 ms     | 0x6c80 ret:0x7f6265fead00
 17024 ms     | 0x6c80 PK11_DeriveWithFlags()
 17024 ms     | 0x6c80 basekey:0x7f626d268780
 17024 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17024 ms     | 0x6c80 ret:0x7f6269a26680
 17024 ms     | 0x6c80 PK11_DeriveWithFlags()
 17024 ms     | 0x6c80 basekey:0x7f6265cdf480
 17024 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17024 ms     | 0x6c80 ret:0x7f6265fe9b00
 17024 ms     | 0x6c80 PK11_Encrypt()
 17024 ms     | 0x6c80 symkey:0x7f6265feac80
 17024 ms     | 0x6c80 PK11_DeriveWithFlags()
 17024 ms     | 0x6c80 basekey:0x7f626998b680
 17024 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17024 ms     | 0x6c80 ret:0x7f6265fe9b00
 17024 ms     | 0x6c80 PK11_DeriveWithFlags()
 17024 ms     | 0x6c80 basekey:0x7f626998b680
 17024 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17024 ms     | 0x6c80 ret:0x7f6269a26680
 17024 ms     | 0x6c80 PK11_DeriveWithFlags()
 17024 ms     | 0x6c80 basekey:0x7f6265fea700
 17024 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17025 ms     | 0x6c80 ret:0x7f6265feac80
 17025 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 17025 ms     | 0x6c80 privk:0x7f6261782020::7f6261782020  d0 23 c8 6d                                      .#.m
 17025 ms     | 0x6c80 privk:0x7f6261782020::7f6261782020  e5 e5 e5 e5                                      ....
 17025 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 17025 ms     | 0x6c80 privk:0x7f6261771820::7f6261771820  f0 21 c8 6d                                      .!.m
 17025 ms     | 0x6c80 privk:0x7f6261771820::7f6261771820  e5 e5 e5 e5                                      ....
 17026 ms  SECKEY_ECParamsToKeySize()
 17026 ms  0x6c80 ret:0x100
 17026 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17026 ms  0x6c80 cx:0x7f626df5e168
 17026 ms     | 0x6c80 EC_ValidatePublicKey()
 17028 ms     | 0x6c80 ret:0x0
 17028 ms  0x6c80 ret:0x7f624d9af020::7f624d9af020  50 5b c0 6d                                      P[.m
 17028 ms  0x6c80 PK11_PubDeriveWithKDF()
 17028 ms  0x6c80 seckey:0x7f624d9af020
 17028 ms     | 0x6c80 EC_ValidatePublicKey()
 17030 ms     | 0x6c80 ret:0x0
 17031 ms  0x6c80 ret:0x7f626d268800
 17031 ms  0x6c80 PK11_DeriveWithFlags()
 17031 ms  0x6c80 basekey:0x7f626d268800
 17031 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17031 ms  0x6c80 ret:0x7f6265cdf480
 17031 ms  0x6c80 PK11_Derive()
 17031 ms  0x6c80 basekey:0x7f6265cdf480
 17031 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17032 ms  0x6c80 ret:0x7f6265fea700
 17032 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17032 ms  0x6c80 privk:0x7f624d9af020::7f624d9af020  50 5b c0 6d                                      P[.m
 17032 ms  0x6c80 privk:0x7f624d9af020::7f624d9af020  e5 e5 e5 e5                                      ....
 17032 ms  0x6c80 PK11_Encrypt()
 17032 ms  0x6c80 symkey:0x7f6269a6d900
 17034 ms  0x6c80 PK11_Encrypt()
 17034 ms  0x6c80 symkey:0x7f62663dbd80
 17034 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17034 ms  0x6c80 privk:0x7f624d703020::7f624d703020  b0 e0 29 6d                                      ..)m
 17034 ms  0x6c80 privk:0x7f624d703020::7f624d703020  e5 e5 e5 e5                                      ....
 17034 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17034 ms  0x6c80 privk:0x7f626f81e020::7f626f81e020  90 77 cf 6a                                      .w.j
 17034 ms  0x6c80 privk:0x7f626f81e020::7f626f81e020  e5 e5 e5 e5                                      ....
 17035 ms  SECKEY_ECParamsToKeySize()
 17035 ms  0x6c80 ret:0x100
 17035 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17035 ms  0x6c80 cx:0x7f626df5ecc8
 17036 ms     | 0x6c80 EC_ValidatePublicKey()
 17037 ms     | 0x6c80 ret:0x0
 17037 ms  0x6c80 ret:0x7f624d95a820::7f624d95a820  30 98 cf 6c                                      0..l
 17037 ms  0x6c80 PK11_PubDeriveWithKDF()
 17037 ms  0x6c80 seckey:0x7f624d95a820
 17037 ms     | 0x6c80 EC_ValidatePublicKey()
 17039 ms     | 0x6c80 ret:0x0
 17040 ms  0x6c80 ret:0x7f626d268800
 17040 ms  0x6c80 PK11_DeriveWithFlags()
 17040 ms  0x6c80 basekey:0x7f626d268800
 17040 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17040 ms  0x6c80 ret:0x7f6269a26680
 17040 ms  0x6c80 PK11_Derive()
 17040 ms  0x6c80 basekey:0x7f6269a26680
 17040 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17040 ms  0x6c80 ret:0x7f6269e7e180
 17040 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17040 ms  0x6c80 privk:0x7f624d95a820::7f624d95a820  30 98 cf 6c                                      0..l
 17040 ms  0x6c80 privk:0x7f624d95a820::7f624d95a820  e5 e5 e5 e5                                      ....
 17041 ms  0x6c80 PK11_Encrypt()
 17041 ms  0x6c80 symkey:0x7f6269ec3a00
 17042 ms  SECKEY_ECParamsToKeySize()
 17042 ms  0x6c80 ret:0x100
 17042 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17042 ms  0x6c80 cx:0x7f624d735248
 17042 ms     | 0x6c80 EC_ValidatePublicKey()
 17044 ms     | 0x6c80 ret:0x0
 17044 ms  0x6c80 ret:0x7f624d95b020::7f624d95b020  60 e0 29 6d                                      `.)m
 17044 ms  0x6c80 PK11_PubDeriveWithKDF()
 17044 ms  0x6c80 seckey:0x7f624d95b020
 17044 ms     | 0x6c80 EC_ValidatePublicKey()
 17045 ms     | 0x6c80 ret:0x0
 17047 ms  0x6c80 ret:0x7f626d268800
 17047 ms  0x6c80 PK11_DeriveWithFlags()
 17047 ms  0x6c80 basekey:0x7f626d268800
 17047 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17047 ms  0x6c80 ret:0x7f6269ec4680
 17047 ms  0x6c80 PK11_Derive()
 17047 ms  0x6c80 basekey:0x7f6269ec4680
 17047 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17047 ms  0x6c80 ret:0x7f6269ec4700
 17047 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17047 ms  0x6c80 privk:0x7f624d95b020::7f624d95b020  60 e0 29 6d                                      `.)m
 17047 ms  0x6c80 privk:0x7f624d95b020::7f624d95b020  e5 e5 e5 e5                                      ....
 17047 ms  0x6c80 PK11_Encrypt()
 17047 ms  0x6c80 symkey:0x7f6269ec4b00
 17048 ms  SECKEY_ECParamsToKeySize()
 17048 ms  0x6c80 ret:0x100
 17048 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17048 ms  0x6c80 cx:0x7f624d7350a8
 17049 ms     | 0x6c80 EC_ValidatePublicKey()
 17050 ms     | 0x6c80 ret:0x0
 17050 ms  0x6c80 ret:0x7f624d9aa820::7f624d9aa820  c0 59 c0 6d                                      .Y.m
 17050 ms  0x6c80 PK11_PubDeriveWithKDF()
 17050 ms  0x6c80 seckey:0x7f624d9aa820
 17051 ms     | 0x6c80 EC_ValidatePublicKey()
 17052 ms     | 0x6c80 ret:0x0
 17053 ms  0x6c80 ret:0x7f626d268800
 17053 ms  0x6c80 PK11_DeriveWithFlags()
 17053 ms  0x6c80 basekey:0x7f626d268800
 17053 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17053 ms  0x6c80 ret:0x7f6269ec4c00
 17053 ms  0x6c80 PK11_Derive()
 17053 ms  0x6c80 basekey:0x7f6269ec4c00
 17053 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17053 ms  0x6c80 ret:0x7f6269ec4f00
 17054 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17054 ms  0x6c80 privk:0x7f624d9aa820::7f624d9aa820  c0 59 c0 6d                                      .Y.m
 17054 ms  0x6c80 privk:0x7f624d9aa820::7f624d9aa820  e5 e5 e5 e5                                      ....
 17054 ms  0x6c80 PK11_Encrypt()
 17054 ms  0x6c80 symkey:0x7f626a3cb180
 17055 ms  SECKEY_ECParamsToKeySize()
 17055 ms  0x6c80 ret:0x100
 17055 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17055 ms  0x6c80 cx:0x7f626df5ee68
 17055 ms     | 0x6c80 EC_ValidatePublicKey()
 17057 ms     | 0x6c80 ret:0x0
 17057 ms  0x6c80 ret:0x7f624d9af020::7f624d9af020  b0 5a c0 6d                                      .Z.m
 17057 ms  0x6c80 PK11_PubDeriveWithKDF()
 17057 ms  0x6c80 seckey:0x7f624d9af020
 17057 ms     | 0x6c80 EC_ValidatePublicKey()
 17058 ms     | 0x6c80 ret:0x0
 17060 ms  0x6c80 ret:0x7f626d268800
 17060 ms  0x6c80 PK11_DeriveWithFlags()
 17060 ms  0x6c80 basekey:0x7f626d268800
 17060 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17060 ms  0x6c80 ret:0x7f626a3cb880
 17060 ms  0x6c80 PK11_Derive()
 17060 ms  0x6c80 basekey:0x7f626a3cb880
 17060 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17060 ms  0x6c80 ret:0x7f626a3cb900
 17060 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17060 ms  0x6c80 privk:0x7f624d9af020::7f624d9af020  b0 5a c0 6d                                      .Z.m
 17060 ms  0x6c80 privk:0x7f624d9af020::7f624d9af020  e5 e5 e5 e5                                      ....
 17060 ms  0x6c80 PK11_Encrypt()
 17060 ms  0x6c80 symkey:0x7f626a3cbd80
 17060 ms  0x6c80 PK11_DeriveWithFlags()
 17060 ms  0x6c80 basekey:0x7f6265bb0600
 17060 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17060 ms  0x6c80 ret:0x7f626d268800
 17060 ms  0x6c80 PK11_DeriveWithFlags()
 17060 ms  0x6c80 basekey:0x7f6265bb0600
 17060 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17060 ms  0x6c80 ret:0x7f626d268800
 17061 ms  0x6c80 PK11_Encrypt()
 17061 ms  0x6c80 symkey:0x7f6265fe9b00
 17061 ms  0x6c80 PK11_Encrypt()
 17061 ms  0x6c80 symkey:0x7f6265c65500
 17061 ms  0x6c80 PR_Close()
 17061 ms  0x6c80 fd:0x7f624d944fd0
 17061 ms     | 0x6c80 PK11_Encrypt()
 17061 ms     | 0x6c80 symkey:0x7f626d29c600
 17061 ms  0x6c80 SSL_AuthCertificateComplete()
 17061 ms  0x6c80 fd:0x7f626cbb2c70
 17061 ms  0x6c80 err:0x0
 17061 ms  0x6c80 PK11_Encrypt()
 17061 ms  0x6c80 symkey:0x7f62663e0780
 17063 ms  0x6c80 SSL_AuthCertificateComplete()
 17063 ms  0x6c80 fd:0x7f62617c4040
 17063 ms  0x6c80 err:0x0
 17063 ms  0x6c80 SSL_AuthCertificateComplete()
 17063 ms  0x6c80 fd:0x7f626cbb2790
 17063 ms  0x6c80 err:0x0
 17063 ms  0x6c80 SSL_AuthCertificateComplete()
 17063 ms  0x6c80 fd:0x7f626a917070
 17063 ms  0x6c80 err:0x0
 17063 ms  0x6c80 SSL_AuthCertificateComplete()
 17063 ms  0x6c80 fd:0x7f6269a6bc10
 17063 ms  0x6c80 err:0x0
 17063 ms  0x6c80 PK11_Encrypt()
 17063 ms  0x6c80 symkey:0x7f626d268880
           /* TID 0x6c88 */
 17072 ms  0x6c88 PR_Close()
 17072 ms  0x6c88 fd:0x7f624d944100
           /* TID 0x6c80 */
 17073 ms  0x6c80 PK11_Encrypt()
 17073 ms  0x6c80 symkey:0x7f6269a6d900
           /* TID 0x6c88 */
 17074 ms  0x6c88 PR_Close()
 17074 ms  0x6c88 fd:0x7f624d944100
 17076 ms  0x6c88 PR_Close()
 17076 ms  0x6c88 fd:0x7f624d944100
           /* TID 0x6c80 */
 17080 ms  0x6c80 PK11_Encrypt()
 17080 ms  0x6c80 symkey:0x7f6269ec3a00
 17080 ms  0x6c80 PK11_Encrypt()
 17080 ms  0x6c80 symkey:0x7f6269ec4b00
 17080 ms  0x6c80 PK11_Encrypt()
 17080 ms  0x6c80 symkey:0x7f626a3cb180
 17080 ms  0x6c80 PK11_Encrypt()
 17080 ms  0x6c80 symkey:0x7f626a3cbd80
 17080 ms  0x6c80 PK11_Encrypt()
 17080 ms  0x6c80 symkey:0x7f626d268880
           /* TID 0x6c88 */
 17082 ms  0x6c88 PR_Close()
 17082 ms  0x6c88 fd:0x7f624ec7b4f0
 17083 ms  0x6c88 PR_Close()
 17083 ms  0x6c88 fd:0x7f624ec7b4f0
 17083 ms  0x6c88 PR_Close()
 17083 ms  0x6c88 fd:0x7f624ec7b4f0
 17084 ms  0x6c88 PR_Close()
 17084 ms  0x6c88 fd:0x7f624ec7b4f0
 17085 ms  0x6c88 PR_Close()
 17085 ms  0x6c88 fd:0x7f624ec7b4f0
           /* TID 0x6c80 */
 17085 ms  0x6c80 PK11_Encrypt()
 17085 ms  0x6c80 symkey:0x7f62613c0a80
 17086 ms  0x6c80 PK11_Encrypt()
 17086 ms  0x6c80 symkey:0x7f6265cdf700
 17086 ms  0x6c80 PK11_Encrypt()
 17086 ms  0x6c80 symkey:0x7f625fc9b080
 17087 ms  0x6c80 PK11_Encrypt()
 17087 ms  0x6c80 symkey:0x7f625fca9880
 17087 ms  0x6c80 PK11_Encrypt()
 17087 ms  0x6c80 symkey:0x7f625fcffd00
 17088 ms  0x6c80 PK11_Encrypt()
 17088 ms  0x6c80 symkey:0x7f625fea7300
 17088 ms  0x6c80 PK11_Encrypt()
 17088 ms  0x6c80 symkey:0x7f6265878400
 17091 ms  0x6c80 PK11_Encrypt()
 17091 ms  0x6c80 symkey:0x7f62661a7480
 17091 ms  0x6c80 PK11_Encrypt()
 17091 ms  0x6c80 symkey:0x7f625fcc1b00
 17092 ms  0x6c80 PK11_DeriveWithFlags()
 17092 ms  0x6c80 basekey:0x7f6265feac80
 17092 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17092 ms  0x6c80 ret:0x7f626d29c480
 17092 ms  0x6c80 PK11_DeriveWithFlags()
 17092 ms  0x6c80 basekey:0x7f6265e3c900
 17092 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17092 ms  0x6c80 ret:0x7f626d29c480
 17092 ms  0x6c80 PK11_DeriveWithFlags()
 17092 ms  0x6c80 basekey:0x7f6265e3c900
 17092 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17092 ms  0x6c80 ret:0x7f626d29c480
 17092 ms  0x6c80 PR_Close()
 17092 ms  0x6c80 fd:0x7f62617c44f0
 17092 ms     | 0x6c80 PK11_Encrypt()
 17092 ms     | 0x6c80 symkey:0x7f6265c65500
 17092 ms  0x6c80 PR_Close()
 17092 ms  0x6c80 fd:0x7f62617c4700
 17092 ms     | 0x6c80 PK11_Encrypt()
 17092 ms     | 0x6c80 symkey:0x7f6265fe9b00
           /* TID 0x6c88 */
 17093 ms  0x6c88 PR_Close()
 17093 ms  0x6c88 fd:0x7f624d944dc0
 17094 ms  0x6c88 PR_Close()
 17094 ms  0x6c88 fd:0x7f624d944400
           /* TID 0x6d16 */
 17107 ms  0x6d16 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17107 ms  0x6d16 ret:0x0
 17107 ms  0x6d16 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17107 ms  0x6d16 ret:0x0
           /* TID 0x6c88 */
 17108 ms  0x6c88 PR_Close()
 17108 ms  0x6c88 fd:0x7f62664a2730
           /* TID 0x6c80 */
 17113 ms  0x6c80 SSL_AuthCertificateComplete()
 17113 ms  0x6c80 fd:0x7f626ee5f6a0
 17113 ms  0x6c80 err:0x0
 17113 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 17113 ms     | 0x6c80 privk:0x7f624d952820::7f624d952820  90 12 1b 66                                      ...f
 17113 ms     | 0x6c80 privk:0x7f624d952820::7f624d952820  e5 e5 e5 e5                                      ....
 17113 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 17113 ms     | 0x6c80 privk:0x7f624d950820::7f624d950820  d0 a8 79 61                                      ..ya
 17113 ms     | 0x6c80 privk:0x7f624d950820::7f624d950820  e5 e5 e5 e5                                      ....
 17113 ms  0x6c80 PK11_Encrypt()
 17113 ms  0x6c80 symkey:0x7f6265fe9780
 17114 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17114 ms  0x6c80 cx:0x7f624d735c08
 17115 ms     | 0x6c80 EC_ValidatePublicKey()
 17115 ms     | 0x6c80 ret:0x0
 17115 ms  0x6c80 ret:0x7f624d950820::7f624d950820  d0 a8 79 61                                      ..ya
 17115 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17115 ms  0x6c80 cx:0x7f624d735c08
 17115 ms     | 0x6c80 EC_ValidatePublicKey()
 17117 ms     | 0x6c80 ret:0x0
 17117 ms  0x6c80 ret:0x7f624d952820::7f624d952820  e0 5c bf 61                                      .\.a
 17125 ms  0x6c80 PK11_Encrypt()
 17125 ms  0x6c80 symkey:0x7f626d268880
 17147 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17147 ms  0x6c80 privk:0x7f624d70e820::7f624d70e820  c0 d4 cf 68                                      ...h
 17147 ms  0x6c80 privk:0x7f624d70e820::7f624d70e820  e5 e5 e5 e5                                      ....
 17148 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17148 ms  0x6c80 privk:0x7f624d70c020::7f624d70c020  e0 a7 79 61                                      ..ya
 17148 ms  0x6c80 privk:0x7f624d70c020::7f624d70c020  e5 e5 e5 e5                                      ....
 17148 ms  0x6c80 PR_Close()
 17148 ms  0x6c80 fd:0x7f626487d040
 17148 ms     | 0x6c80 PK11_Encrypt()
 17148 ms     | 0x6c80 symkey:0x7f626d281c00
 17149 ms  0x6c80 SSL_ImportFD()
 17149 ms  0x6c80 ret:0x7f626583ae20
 17149 ms  0x6c80 SSL_AuthCertificateHook()
 17149 ms  0x6c80 fd:0x7f626583ae20
 17150 ms  0x6c80 ret:0x0
 17150 ms  0x6c80 PR_Connect()
 17150 ms  0x6c80 fd:0x7f626583ae20
 17150 ms  0x6c80 SSL_ImportFD()
 17150 ms  0x6c80 ret:0x7f6268c86910
 17150 ms  0x6c80 SSL_AuthCertificateHook()
 17150 ms  0x6c80 fd:0x7f6268c86910
 17150 ms  0x6c80 ret:0x0
 17150 ms  0x6c80 PR_Connect()
 17150 ms  0x6c80 fd:0x7f6268c86910
           /* TID 0x6c88 */
 17166 ms  0x6c88 PR_Close()
 17166 ms  0x6c88 fd:0x7f624ec7b280
           /* TID 0x6c80 */
 17172 ms  0x6c80 PK11_Encrypt()
 17172 ms  0x6c80 symkey:0x7f6265fe9780
 17192 ms  0x6c80 PK11_Encrypt()
 17192 ms  0x6c80 symkey:0x7f626d268880
           /* TID 0x6c88 */
 17199 ms  0x6c88 PR_Close()
 17199 ms  0x6c88 fd:0x7f6265cc73d0
           /* TID 0x6c80 */
 17204 ms  SECKEY_ECParamsToKeySize()
 17204 ms  0x6c80 ret:0x100
 17205 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17205 ms  0x6c80 cx:0x7f626df5dfc8
 17205 ms     | 0x6c80 EC_ValidatePublicKey()
 17207 ms     | 0x6c80 ret:0x0
 17207 ms  0x6c80 ret:0x7f626dc78820::7f626dc78820  60 8f c8 68                                      `..h
 17207 ms  0x6c80 PK11_PubDeriveWithKDF()
 17207 ms  0x6c80 seckey:0x7f626dc78820
 17207 ms     | 0x6c80 EC_ValidatePublicKey()
 17208 ms     | 0x6c80 ret:0x0
 17210 ms  0x6c80 ret:0x7f626d268b00
 17210 ms  0x6c80 PK11_DeriveWithFlags()
 17210 ms  0x6c80 basekey:0x7f626d268b00
 17210 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17210 ms  0x6c80 ret:0x7f626d268a80
 17210 ms  0x6c80 PK11_Derive()
 17210 ms  0x6c80 basekey:0x7f626d268a80
 17210 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17210 ms  0x6c80 ret:0x7f6265ce0700
 17210 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17210 ms  0x6c80 privk:0x7f626dc78820::7f626dc78820  60 8f c8 68                                      `..h
 17210 ms  0x6c80 privk:0x7f626dc78820::7f626dc78820  e5 e5 e5 e5                                      ....
 17210 ms  0x6c80 PK11_Encrypt()
 17210 ms  0x6c80 symkey:0x7f626d28b900
 17216 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17216 ms  0x6c80 cx:0x7f624d736f88
 17217 ms     | 0x6c80 EC_ValidatePublicKey()
 17217 ms     | 0x6c80 ret:0x0
 17217 ms  0x6c80 ret:0x7f6287f73820::7f6287f73820  e0 62 91 6a                                      .b.j
 17217 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17217 ms  0x6c80 cx:0x7f624d736f88
 17218 ms     | 0x6c80 EC_ValidatePublicKey()
 17219 ms     | 0x6c80 ret:0x0
 17219 ms  0x6c80 ret:0x7f624d51d820::7f624d51d820  30 e3 29 6d                                      0.)m
 17225 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17225 ms  0x6c80 cx:0x7f624d7377a8
 17225 ms     | 0x6c80 EC_ValidatePublicKey()
 17225 ms     | 0x6c80 ret:0x0
 17225 ms  0x6c80 ret:0x7f624d520020::7f624d520020  30 c3 2a 6d                                      0.*m
 17225 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17225 ms  0x6c80 cx:0x7f624d7377a8
 17226 ms     | 0x6c80 EC_ValidatePublicKey()
 17227 ms     | 0x6c80 ret:0x0
 17227 ms  0x6c80 ret:0x7f624d522020::7f624d522020  c0 59 c0 6d                                      .Y.m
           /* TID 0x6c88 */
 17232 ms  0x6c88 PR_Close()
 17232 ms  0x6c88 fd:0x7f6268c99eb0
           /* TID 0x6c80 */
 17242 ms  SECKEY_ECParamsToKeySize()
 17242 ms  0x6c80 ret:0xff
 17242 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17242 ms  0x6c80 cx:0x7f626df5cde8
 17242 ms     | 0x6c80 EC_ValidatePublicKey()
 17242 ms     | 0x6c80 ret:0x0
 17242 ms  0x6c80 ret:0x7f624d526020::7f624d526020  30 5d c0 6d                                      0].m
 17243 ms  0x6c80 PK11_PubDeriveWithKDF()
 17243 ms  0x6c80 seckey:0x7f624d526020
 17243 ms     | 0x6c80 EC_ValidatePublicKey()
 17243 ms     | 0x6c80 ret:0x0
 17243 ms  0x6c80 ret:0x7f626d268b00
 17243 ms  0x6c80 PK11_DeriveWithFlags()
 17243 ms  0x6c80 basekey:0x7f626d268b00
 17243 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17243 ms  0x6c80 ret:0x7f626d268780
 17243 ms  0x6c80 PK11_Derive()
 17243 ms  0x6c80 basekey:0x7f626d268780
 17243 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17243 ms  0x6c80 ret:0x7f626998b680
 17243 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17243 ms  0x6c80 privk:0x7f624d526020::7f624d526020  30 5d c0 6d                                      0].m
 17243 ms  0x6c80 privk:0x7f624d526020::7f624d526020  e5 e5 e5 e5                                      ....
 17243 ms  0x6c80 PK11_Encrypt()
 17243 ms  0x6c80 symkey:0x7f626d29c500
           /* TID 0x6c88 */
 17245 ms  0x6c88 PR_Close()
 17245 ms  0x6c88 fd:0x7f624ec7b550
           /* TID 0x6d17 */
 17245 ms  0x6d17 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17245 ms  0x6d17 ret:0x0
 17245 ms  0x6d17 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17245 ms  0x6d17 ret:0x0
           /* TID 0x6c80 */
 17247 ms  0x6c80 SSL_AuthCertificateComplete()
 17247 ms  0x6c80 fd:0x7f624ec7ba30
 17247 ms  0x6c80 err:0x0
 17247 ms  0x6c80 SSL_AuthCertificateComplete()
 17247 ms  0x6c80 fd:0x7f626484b280
 17247 ms  0x6c80 err:0x0
 17248 ms  0x6c80 PK11_Encrypt()
 17248 ms  0x6c80 symkey:0x7f626d29c500
 17248 ms  0x6c80 PK11_Encrypt()
 17248 ms  0x6c80 symkey:0x7f626d28b900
 17248 ms  0x6c80 PK11_Encrypt()
 17248 ms  0x6c80 symkey:0x7f626d28ce80
 17255 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17255 ms  0x6c80 privk:0x7f624d9a9020::7f624d9a9020  b0 df 90 6a                                      ...j
 17255 ms  0x6c80 privk:0x7f624d9a9020::7f624d9a9020  e5 e5 e5 e5                                      ....
 17255 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17255 ms  0x6c80 privk:0x7f624d709820::7f624d709820  a0 e6 c5 68                                      ...h
 17255 ms  0x6c80 privk:0x7f624d709820::7f624d709820  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 17258 ms  0x6c88 PR_Close()
 17258 ms  0x6c88 fd:0x7f626f8c8310
           /* TID 0x6c80 */
 17268 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17268 ms  0x6c80 privk:0x7f626a76f820::7f626a76f820  e0 9c cf 6c                                      ...l
 17268 ms  0x6c80 privk:0x7f626a76f820::7f626a76f820  e5 e5 e5 e5                                      ....
 17268 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17268 ms  0x6c80 privk:0x7f624d9ac020::7f624d9ac020  b0 cf 96 6a                                      ...j
 17268 ms  0x6c80 privk:0x7f624d9ac020::7f624d9ac020  e5 e5 e5 e5                                      ....
 17276 ms  0x6c80 PR_Close()
 17276 ms  0x6c80 fd:0x7f625fc4f820
 17282 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17282 ms  0x6c80 privk:0x7f624d7cb820::7f624d7cb820  70 c9 2a 6d                                      p.*m
 17283 ms  0x6c80 privk:0x7f624d7cb820::7f624d7cb820  e5 e5 e5 e5                                      ....
 17283 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17283 ms  0x6c80 privk:0x7f624d7c9820::7f624d7c9820  30 ed 29 6d                                      0.)m
 17283 ms  0x6c80 privk:0x7f624d7c9820::7f624d7c9820  e5 e5 e5 e5                                      ....
 17283 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17283 ms  0x6c80 privk:0x7f626d218020::7f626d218020  20 e9 29 6d                                       .)m
 17283 ms  0x6c80 privk:0x7f626d218020::7f626d218020  e5 e5 e5 e5                                      ....
 17283 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17283 ms  0x6c80 privk:0x7f626d207820::7f626d207820  f0 e6 29 6d                                      ..)m
 17283 ms  0x6c80 privk:0x7f626d207820::7f626d207820  e5 e5 e5 e5                                      ....
 17297 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17297 ms  0x6c80 privk:0x7f624d7d0020::7f624d7d0020  60 50 c0 6d                                      `P.m
 17297 ms  0x6c80 privk:0x7f624d7d0020::7f624d7d0020  e5 e5 e5 e5                                      ....
 17297 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17297 ms  0x6c80 privk:0x7f624d7ce020::7f624d7ce020  40 cc 2a 6d                                      @.*m
 17298 ms  0x6c80 privk:0x7f624d7ce020::7f624d7ce020  e5 e5 e5 e5                                      ....
 17304 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17304 ms  0x6c80 privk:0x7f624d7d4820::7f624d7d4820  80 53 c0 6d                                      .S.m
 17304 ms  0x6c80 privk:0x7f624d7d4820::7f624d7d4820  e5 e5 e5 e5                                      ....
 17304 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17304 ms  0x6c80 privk:0x7f624d7d2820::7f624d7d2820  a0 51 c0 6d                                      .Q.m
 17304 ms  0x6c80 privk:0x7f624d7d2820::7f624d7d2820  e5 e5 e5 e5                                      ....
 17330 ms  0x6c80 SSL_ImportFD()
 17330 ms  0x6c80 ret:0x7f627095b280
 17330 ms  0x6c80 SSL_AuthCertificateHook()
 17330 ms  0x6c80 fd:0x7f627095b280
 17330 ms  0x6c80 ret:0x0
 17331 ms  0x6c80 PK11_Encrypt()
 17331 ms  0x6c80 symkey:0x7f626d268b80
 17331 ms  0x6c80 PK11_Encrypt()
 17331 ms  0x6c80 symkey:0x7f626d268b80
 17331 ms  0x6c80 PR_Connect()
 17331 ms  0x6c80 fd:0x7f627095b280
 17332 ms  0x6c80 SSL_ImportFD()
 17332 ms  0x6c80 ret:0x7f626eab8a00
 17332 ms  0x6c80 SSL_AuthCertificateHook()
 17332 ms  0x6c80 fd:0x7f626eab8a00
 17332 ms  0x6c80 ret:0x0
 17332 ms  0x6c80 PR_Connect()
 17332 ms  0x6c80 fd:0x7f626eab8a00
 17332 ms  0x6c80 SSL_ImportFD()
 17332 ms  0x6c80 ret:0x7f626f875130
 17332 ms  0x6c80 SSL_AuthCertificateHook()
 17332 ms  0x6c80 fd:0x7f626f875130
 17332 ms  0x6c80 ret:0x0
 17332 ms  0x6c80 PR_Connect()
 17332 ms  0x6c80 fd:0x7f626f875130
 17332 ms  0x6c80 PK11_Encrypt()
 17332 ms  0x6c80 symkey:0x7f626d268b80
 17342 ms  0x6c80 PK11_Encrypt()
 17342 ms  0x6c80 symkey:0x7f6262ecbf80
           /* TID 0x6c88 */
 17343 ms  0x6c88 PR_Close()
 17343 ms  0x6c88 fd:0x7f624d9970a0
           /* TID 0x6c80 */
 17396 ms  0x6c80 PK11_Encrypt()
 17396 ms  0x6c80 symkey:0x7f625fcc1b00
           /* TID 0x6c88 */
 17397 ms  0x6c88 PR_Close()
 17397 ms  0x6c88 fd:0x7f624d9445e0
           /* TID 0x6c80 */
 17397 ms  0x6c80 PK11_Encrypt()
 17397 ms  0x6c80 symkey:0x7f6265878400
           /* TID 0x6c88 */
 17398 ms  0x6c88 PR_Close()
 17398 ms  0x6c88 fd:0x7f624d9445e0
           /* TID 0x6c80 */
 17398 ms  0x6c80 PK11_Encrypt()
 17398 ms  0x6c80 symkey:0x7f62611c3880
           /* TID 0x6c88 */
 17398 ms  0x6c88 PR_Close()
 17398 ms  0x6c88 fd:0x7f624d9445e0
           /* TID 0x6c80 */
 17415 ms  0x6c80 SSL_ImportFD()
 17415 ms  0x6c80 ret:0x7f6268d81d60
 17415 ms  0x6c80 SSL_AuthCertificateHook()
 17415 ms  0x6c80 fd:0x7f6268d81d60
 17415 ms  0x6c80 ret:0x0
 17415 ms  0x6c80 PR_Connect()
 17415 ms  0x6c80 fd:0x7f6268d81d60
 17416 ms  0x6c80 PK11_Encrypt()
 17416 ms  0x6c80 symkey:0x7f625fea7300
           /* TID 0x6c88 */
 17417 ms  0x6c88 PR_Close()
 17417 ms  0x6c88 fd:0x7f624ec7ba90
           /* TID 0x6c80 */
 17430 ms  0x6c80 PK11_Encrypt()
 17430 ms  0x6c80 symkey:0x7f625fcffd00
           /* TID 0x6c88 */
 17431 ms  0x6c88 PR_Close()
 17431 ms  0x6c88 fd:0x7f62650480a0
           /* TID 0x6c80 */
 17431 ms  0x6c80 PK11_Encrypt()
 17431 ms  0x6c80 symkey:0x7f62663e0780
           /* TID 0x6c88 */
 17432 ms  0x6c88 PR_Close()
 17432 ms  0x6c88 fd:0x7f624ec7b6d0
           /* TID 0x6c80 */
 17439 ms  0x6c80 PK11_Encrypt()
 17439 ms  0x6c80 symkey:0x7f62661a7480
 17440 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17440 ms  0x6c80 cx:0x7f624d736908
 17441 ms     | 0x6c80 EC_ValidatePublicKey()
 17441 ms     | 0x6c80 ret:0x0
 17441 ms  0x6c80 ret:0x7f624d709020::7f624d709020  40 b2 c8 68                                      @..h
 17441 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17441 ms  0x6c80 cx:0x7f624d736908
 17441 ms     | 0x6c80 EC_ValidatePublicKey()
           /* TID 0x6c88 */
 17442 ms  0x6c88 PR_Close()
 17442 ms  0x6c88 fd:0x7f625fc4f910
           /* TID 0x6c80 */
 17444 ms     | 0x6c80 ret:0x0
 17444 ms  0x6c80 ret:0x7f624d714020::7f624d714020  e0 87 41 66                                      ..Af
 17455 ms  0x6c80 PK11_Encrypt()
 17455 ms  0x6c80 symkey:0x7f6265cdf700
           /* TID 0x6c88 */
 17456 ms  0x6c88 PR_Close()
 17456 ms  0x6c88 fd:0x7f6266177550
 17456 ms  0x6c88 PR_Close()
 17456 ms  0x6c88 fd:0x7f6268c5d880
           /* TID 0x6c80 */
 17457 ms  0x6c80 PK11_Encrypt()
 17457 ms  0x6c80 symkey:0x7f625fca9880
 17459 ms  0x6c80 PK11_Encrypt()
 17459 ms  0x6c80 symkey:0x7f625fc9b080
           /* TID 0x6c88 */
 17460 ms  0x6c88 PR_Close()
 17460 ms  0x6c88 fd:0x7f625fc4f910
           /* TID 0x6c80 */
 17462 ms  SECKEY_ECParamsToKeySize()
 17462 ms  0x6c80 ret:0x100
 17462 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17462 ms  0x6c80 cx:0x7f624d735c08
 17463 ms     | 0x6c80 EC_ValidatePublicKey()
 17464 ms     | 0x6c80 ret:0x0
 17464 ms  0x6c80 ret:0x7f624d7cb020::7f624d7cb020  50 e6 29 6d                                      P.)m
 17465 ms  0x6c80 PK11_PubDeriveWithKDF()
 17465 ms  0x6c80 seckey:0x7f624d7cb020
 17465 ms     | 0x6c80 EC_ValidatePublicKey()
 17466 ms     | 0x6c80 ret:0x0
 17471 ms  0x6c80 ret:0x7f626d268b00
 17471 ms  0x6c80 PK11_DeriveWithFlags()
 17471 ms  0x6c80 basekey:0x7f626d268b00
 17471 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17471 ms  0x6c80 ret:0x7f6265feac80
 17471 ms  0x6c80 PK11_Derive()
 17471 ms  0x6c80 basekey:0x7f6265feac80
 17471 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17471 ms  0x6c80 ret:0x7f6265fead00
 17471 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17471 ms  0x6c80 privk:0x7f624d7cb020::7f624d7cb020  50 e6 29 6d                                      P.)m
 17471 ms  0x6c80 privk:0x7f624d7cb020::7f624d7cb020  e5 e5 e5 e5                                      ....
 17471 ms  0x6c80 PK11_Encrypt()
 17471 ms  0x6c80 symkey:0x7f626d28cc00
 17475 ms  0x6c80 SSL_AuthCertificateComplete()
 17475 ms  0x6c80 fd:0x7f626cbb2be0
 17475 ms  0x6c80 err:0x0
           /* TID 0x6c88 */
 17476 ms  0x6c88 PR_Close()
 17476 ms  0x6c88 fd:0x7f624d944370
           /* TID 0x6c80 */
 17476 ms  0x6c80 PK11_Encrypt()
 17476 ms  0x6c80 symkey:0x7f62613c0a80
 17477 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17477 ms  0x6c80 cx:0x7f624d737468
 17477 ms     | 0x6c80 EC_ValidatePublicKey()
 17477 ms     | 0x6c80 ret:0x0
 17477 ms  0x6c80 ret:0x7f624d7cb020::7f624d7cb020  10 5f bf 61                                      ._.a
 17477 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17477 ms  0x6c80 cx:0x7f624d737468
 17478 ms     | 0x6c80 EC_ValidatePublicKey()
 17479 ms     | 0x6c80 ret:0x0
 17479 ms  0x6c80 ret:0x7f624d7cd820::7f624d7cd820  50 e6 29 6d                                      P.)m
 17482 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17482 ms  0x6c80 cx:0x7f624d738988
 17483 ms     | 0x6c80 EC_ValidatePublicKey()
 17483 ms     | 0x6c80 ret:0x0
 17483 ms  0x6c80 ret:0x7f624d7d0020::7f624d7d0020  30 e8 29 6d                                      0.)m
 17483 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17483 ms  0x6c80 cx:0x7f624d738988
 17484 ms     | 0x6c80 EC_ValidatePublicKey()
 17485 ms     | 0x6c80 ret:0x0
 17485 ms  0x6c80 ret:0x7f624d7d2820::7f624d7d2820  30 ed 29 6d                                      0.)m
           /* TID 0x6c88 */
 17496 ms  0x6c88 PR_Close()
 17496 ms  0x6c88 fd:0x7f6266389970
 17509 ms  0x6c88 PR_Close()
 17509 ms  0x6c88 fd:0x7f6266389970
 17520 ms  0x6c88 PR_Close()
 17520 ms  0x6c88 fd:0x7f6266389970
 17525 ms  0x6c88 PR_Close()
 17525 ms  0x6c88 fd:0x7f624ec7b9a0
           /* TID 0x6c80 */
 17536 ms  SECKEY_ECParamsToKeySize()
 17536 ms  0x6c80 ret:0x100
 17536 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17536 ms  0x6c80 cx:0x7f624d736f88
 17537 ms     | 0x6c80 EC_ValidatePublicKey()
 17539 ms     | 0x6c80 ret:0x0
 17539 ms  0x6c80 ret:0x7f626d208820::7f626d208820  00 cb 2a 6d                                      ..*m
 17539 ms  0x6c80 PK11_PubDeriveWithKDF()
 17539 ms  0x6c80 seckey:0x7f626d208820
 17539 ms     | 0x6c80 EC_ValidatePublicKey()
 17540 ms     | 0x6c80 ret:0x0
 17542 ms  0x6c80 ret:0x7f626d268b00
 17542 ms  0x6c80 PK11_DeriveWithFlags()
 17542 ms  0x6c80 basekey:0x7f626d268b00
 17542 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17542 ms  0x6c80 ret:0x7f6265fe9b00
 17542 ms  0x6c80 PK11_Derive()
 17542 ms  0x6c80 basekey:0x7f6265fe9b00
 17542 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17542 ms  0x6c80 ret:0x7f6265e3c480
 17542 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17542 ms  0x6c80 privk:0x7f626d208820::7f626d208820  00 cb 2a 6d                                      ..*m
 17542 ms  0x6c80 privk:0x7f626d208820::7f626d208820  e5 e5 e5 e5                                      ....
 17542 ms  0x6c80 PK11_Encrypt()
 17542 ms  0x6c80 symkey:0x7f626d280a00
           /* TID 0x6c88 */
 17545 ms  0x6c88 PR_Close()
 17545 ms  0x6c88 fd:0x7f62661bc4f0
           /* TID 0x6c80 */
 17550 ms  SECKEY_ECParamsToKeySize()
 17550 ms  0x6c80 ret:0x100
 17550 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17550 ms  0x6c80 cx:0x7f624d738988
 17551 ms     | 0x6c80 EC_ValidatePublicKey()
 17552 ms     | 0x6c80 ret:0x0
 17552 ms  0x6c80 ret:0x7f626d208820::7f626d208820  00 cb 2a 6d                                      ..*m
 17552 ms  0x6c80 PK11_PubDeriveWithKDF()
 17552 ms  0x6c80 seckey:0x7f626d208820
 17552 ms     | 0x6c80 EC_ValidatePublicKey()
 17554 ms     | 0x6c80 ret:0x0
 17555 ms  0x6c80 ret:0x7f626d268b00
 17555 ms  0x6c80 PK11_DeriveWithFlags()
 17555 ms  0x6c80 basekey:0x7f626d268b00
 17555 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17555 ms  0x6c80 ret:0x7f6265feae00
 17555 ms  0x6c80 PK11_Derive()
 17555 ms  0x6c80 basekey:0x7f6265feae00
 17555 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17555 ms  0x6c80 ret:0x7f626d281980
 17555 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17555 ms  0x6c80 privk:0x7f626d208820::7f626d208820  00 cb 2a 6d                                      ..*m
 17556 ms  0x6c80 privk:0x7f626d208820::7f626d208820  e5 e5 e5 e5                                      ....
 17556 ms  0x6c80 PK11_Encrypt()
 17556 ms  0x6c80 symkey:0x7f626d29da00
 17557 ms  0x6c80 SSL_AuthCertificateComplete()
 17557 ms  0x6c80 fd:0x7f626df57610
 17557 ms  0x6c80 err:0x0
 17557 ms  0x6c80 SSL_AuthCertificateComplete()
 17557 ms  0x6c80 fd:0x7f6268d81d60
 17557 ms  0x6c80 err:0x0
           /* TID 0x6c88 */
 17558 ms  0x6c88 PR_Close()
 17558 ms  0x6c88 fd:0x7f624ec7b9a0
           /* TID 0x6c80 */
 17566 ms  0x6c80 PK11_Encrypt()
 17566 ms  0x6c80 symkey:0x7f626d280a00
 17567 ms  SECKEY_ECParamsToKeySize()
 17567 ms  0x6c80 ret:0xff
 17567 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17567 ms  0x6c80 cx:0x7f626df5d7a8
 17567 ms     | 0x6c80 EC_ValidatePublicKey()
 17567 ms     | 0x6c80 ret:0x0
 17567 ms  0x6c80 ret:0x7f626dc74820::7f626dc74820  f0 cb 2a 6d                                      ..*m
 17567 ms  0x6c80 PK11_PubDeriveWithKDF()
 17567 ms  0x6c80 seckey:0x7f626dc74820
 17567 ms     | 0x6c80 EC_ValidatePublicKey()
 17567 ms     | 0x6c80 ret:0x0
 17568 ms  0x6c80 ret:0x7f626d268b00
 17568 ms  0x6c80 PK11_DeriveWithFlags()
 17568 ms  0x6c80 basekey:0x7f626d268b00
 17568 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17568 ms  0x6c80 ret:0x7f6265e3c900
 17568 ms  0x6c80 PK11_Derive()
 17568 ms  0x6c80 basekey:0x7f6265e3c900
 17568 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17568 ms  0x6c80 ret:0x7f6265fea980
 17568 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17568 ms  0x6c80 privk:0x7f626dc74820::7f626dc74820  f0 cb 2a 6d                                      ..*m
 17568 ms  0x6c80 privk:0x7f626dc74820::7f626dc74820  e5 e5 e5 e5                                      ....
 17568 ms  0x6c80 PK11_Encrypt()
 17568 ms  0x6c80 symkey:0x7f626dd06e00
 17574 ms  SECKEY_ECParamsToKeySize()
 17574 ms  0x6c80 ret:0x100
 17574 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17574 ms  0x6c80 cx:0x7f624d7377a8
 17574 ms     | 0x6c80 EC_ValidatePublicKey()
 17577 ms     | 0x6c80 ret:0x0
 17577 ms  0x6c80 ret:0x7f624d5c9820::7f624d5c9820  70 ce 2a 6d                                      p.*m
 17577 ms  0x6c80 PK11_PubDeriveWithKDF()
 17577 ms  0x6c80 seckey:0x7f624d5c9820
 17577 ms     | 0x6c80 EC_ValidatePublicKey()
 17578 ms     | 0x6c80 ret:0x0
 17580 ms  0x6c80 ret:0x7f626d268b00
 17580 ms  0x6c80 PK11_DeriveWithFlags()
 17580 ms  0x6c80 basekey:0x7f626d268b00
 17580 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17580 ms  0x6c80 ret:0x7f6265c65500
 17580 ms  0x6c80 PK11_Derive()
 17580 ms  0x6c80 basekey:0x7f6265c65500
 17580 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17580 ms  0x6c80 ret:0x7f626d29c480
 17580 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17580 ms  0x6c80 privk:0x7f624d5c9820::7f624d5c9820  70 ce 2a 6d                                      p.*m
 17580 ms  0x6c80 privk:0x7f624d5c9820::7f624d5c9820  e5 e5 e5 e5                                      ....
 17580 ms  0x6c80 PK11_Encrypt()
 17580 ms  0x6c80 symkey:0x7f626dd07580
 17593 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17593 ms  0x6c80 privk:0x7f624d7e0820::7f624d7e0820  20 59 c0 6d                                       Y.m
 17593 ms  0x6c80 privk:0x7f624d7e0820::7f624d7e0820  e5 e5 e5 e5                                      ....
 17593 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17593 ms  0x6c80 privk:0x7f624d7de820::7f624d7de820  40 57 c0 6d                                      @W.m
 17593 ms  0x6c80 privk:0x7f624d7de820::7f624d7de820  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 17594 ms  0x6c88 PR_Close()
 17594 ms  0x6c88 fd:0x7f624d73f640
           /* TID 0x6c80 */
 17595 ms  0x6c80 PK11_Encrypt()
 17595 ms  0x6c80 symkey:0x7f626d29da00
 17595 ms  0x6c80 SSL_AuthCertificateComplete()
 17595 ms  0x6c80 fd:0x7f626cccbe20
 17595 ms  0x6c80 err:0x0
 17595 ms  0x6c80 PK11_Encrypt()
 17595 ms  0x6c80 symkey:0x7f626d268b80
 17595 ms  0x6c80 SSL_AuthCertificateComplete()
 17595 ms  0x6c80 fd:0x7f62664177c0
 17595 ms  0x6c80 err:0x0
 17595 ms  0x6c80 PK11_Encrypt()
 17595 ms  0x6c80 symkey:0x7f626d268880
 17596 ms  0x6c80 PK11_Encrypt()
 17596 ms  0x6c80 symkey:0x7f626d268880
 17596 ms  0x6c80 PK11_Encrypt()
 17596 ms  0x6c80 symkey:0x7f626d268880
 17596 ms  0x6c80 PK11_Encrypt()
 17596 ms  0x6c80 symkey:0x7f626dd06e00
 17597 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17597 ms  0x6c80 privk:0x7f624d9b4020::7f624d9b4020  a0 c1 2a 6d                                      ..*m
 17597 ms  0x6c80 privk:0x7f624d9b4020::7f624d9b4020  e5 e5 e5 e5                                      ....
 17597 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17597 ms  0x6c80 privk:0x7f624d9b2020::7f624d9b2020  d0 d3 90 6a                                      ...j
 17597 ms  0x6c80 privk:0x7f624d9b2020::7f624d9b2020  e5 e5 e5 e5                                      ....
 17597 ms  0x6c80 PK11_Encrypt()
 17597 ms  0x6c80 symkey:0x7f626dd07580
 17598 ms  0x6c80 PR_Close()
 17598 ms  0x6c80 fd:0x7f624ec7ba30
 17598 ms     | 0x6c80 PK11_Encrypt()
 17598 ms     | 0x6c80 symkey:0x7f626d29c500
 17598 ms  0x6c80 PK11_Encrypt()
 17598 ms  0x6c80 symkey:0x7f626d268880
 17599 ms  0x6c80 SSL_ImportFD()
 17599 ms  0x6c80 ret:0x7f624d73f340
 17599 ms  0x6c80 SSL_AuthCertificateHook()
 17599 ms  0x6c80 fd:0x7f624d73f340
 17599 ms  0x6c80 ret:0x0
 17599 ms  0x6c80 PR_Connect()
 17599 ms  0x6c80 fd:0x7f624d73f340
 17599 ms  0x6c80 SSL_ImportFD()
 17599 ms  0x6c80 ret:0x7f624d73f370
 17599 ms  0x6c80 SSL_AuthCertificateHook()
 17599 ms  0x6c80 fd:0x7f624d73f370
 17599 ms  0x6c80 ret:0x0
 17599 ms  0x6c80 PR_Connect()
 17599 ms  0x6c80 fd:0x7f624d73f370
 17599 ms  0x6c80 SSL_ImportFD()
 17599 ms  0x6c80 ret:0x7f624d73f490
 17599 ms  0x6c80 SSL_AuthCertificateHook()
 17599 ms  0x6c80 fd:0x7f624d73f490
 17599 ms  0x6c80 ret:0x0
 17599 ms  0x6c80 PR_Connect()
 17599 ms  0x6c80 fd:0x7f624d73f490
 17607 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17607 ms  0x6c80 privk:0x7f624d7d2820::7f624d7d2820  30 ed 29 6d                                      0.)m
 17607 ms  0x6c80 privk:0x7f624d7d2820::7f624d7d2820  e5 e5 e5 e5                                      ....
 17608 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17608 ms  0x6c80 privk:0x7f624d7d0020::7f624d7d0020  30 e8 29 6d                                      0.)m
 17608 ms  0x6c80 privk:0x7f624d7d0020::7f624d7d0020  e5 e5 e5 e5                                      ....
 17617 ms  SECKEY_ECParamsToKeySize()
 17617 ms  0x6c80 ret:0xff
 17617 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17617 ms  0x6c80 cx:0x7f626df5e4a8
 17617 ms     | 0x6c80 EC_ValidatePublicKey()
 17617 ms     | 0x6c80 ret:0x0
 17617 ms  0x6c80 ret:0x7f624d5dd820::7f624d5dd820  f0 db 90 6a                                      ...j
 17617 ms  0x6c80 PK11_PubDeriveWithKDF()
 17617 ms  0x6c80 seckey:0x7f624d5dd820
 17617 ms     | 0x6c80 EC_ValidatePublicKey()
 17617 ms     | 0x6c80 ret:0x0
 17618 ms  0x6c80 ret:0x7f626998b680
 17618 ms  0x6c80 PK11_DeriveWithFlags()
 17618 ms  0x6c80 basekey:0x7f626998b680
 17618 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17618 ms  0x6c80 ret:0x7f626d268780
 17618 ms  0x6c80 PK11_Derive()
 17618 ms  0x6c80 basekey:0x7f626d268780
 17618 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17618 ms  0x6c80 ret:0x7f626d268b00
 17618 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17618 ms  0x6c80 privk:0x7f624d5dd820::7f624d5dd820  f0 db 90 6a                                      ...j
 17618 ms  0x6c80 privk:0x7f624d5dd820::7f624d5dd820  e5 e5 e5 e5                                      ....
 17618 ms  0x6c80 PK11_Encrypt()
 17618 ms  0x6c80 symkey:0x7f626d29c580
 17622 ms  0x6c80 SSL_AuthCertificateComplete()
 17622 ms  0x6c80 fd:0x7f626df57a60
 17622 ms  0x6c80 err:0x0
 17622 ms  0x6c80 PK11_Encrypt()
 17622 ms  0x6c80 symkey:0x7f626d29c580
 17623 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17623 ms  0x6c80 cx:0x7f624d7387e8
 17623 ms     | 0x6c80 EC_ValidatePublicKey()
 17623 ms     | 0x6c80 ret:0x0
 17623 ms  0x6c80 ret:0x7f624d5de020::7f624d5de020  a0 d6 90 6a                                      ...j
 17623 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17623 ms  0x6c80 cx:0x7f624d7387e8
 17624 ms     | 0x6c80 EC_ValidatePublicKey()
 17625 ms     | 0x6c80 ret:0x0
 17626 ms  0x6c80 ret:0x7f624d5e0020::7f624d5e0020  80 e8 29 6d                                      ..)m
 17626 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17626 ms  0x6c80 cx:0x7f624d738648
 17627 ms     | 0x6c80 EC_ValidatePublicKey()
 17627 ms     | 0x6c80 ret:0x0
 17627 ms  0x6c80 ret:0x7f624d5e2820::7f624d5e2820  90 ec 29 6d                                      ..)m
 17627 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17627 ms  0x6c80 cx:0x7f624d738648
 17627 ms     | 0x6c80 EC_ValidatePublicKey()
 17629 ms     | 0x6c80 ret:0x0
 17629 ms  0x6c80 ret:0x7f624d7ce020::7f624d7ce020  60 50 c0 6d                                      `P.m
 17632 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17632 ms  0x6c80 cx:0x7f624d7384a8
 17633 ms     | 0x6c80 EC_ValidatePublicKey()
 17633 ms     | 0x6c80 ret:0x0
 17633 ms  0x6c80 ret:0x7f624d7d1820::7f624d7d1820  f0 51 c0 6d                                      .Q.m
 17633 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17633 ms  0x6c80 cx:0x7f624d7384a8
 17633 ms     | 0x6c80 EC_ValidatePublicKey()
 17635 ms     | 0x6c80 ret:0x0
 17635 ms  0x6c80 ret:0x7f624d7dd820::7f624d7dd820  60 55 c0 6d                                      `U.m
           /* TID 0x6c88 */
 17666 ms  0x6c88 PR_Close()
 17666 ms  0x6c88 fd:0x7f624d73fbe0
           /* TID 0x6c80 */
 17690 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17690 ms  0x6c80 privk:0x7f6265069020::7f6265069020  b0 e0 3d 66                                      ..=f
 17690 ms  0x6c80 privk:0x7f6265069020::7f6265069020  e5 e5 e5 e5                                      ....
 17690 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17690 ms  0x6c80 privk:0x7f6265067020::7f6265067020  80 ad 1b 66                                      ...f
 17690 ms  0x6c80 privk:0x7f6265067020::7f6265067020  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 17691 ms  0x6c88 PR_Close()
 17691 ms  0x6c88 fd:0x7f624d73fd60
           /* TID 0x6c80 */
 17692 ms  0x6c80 PK11_Encrypt()
 17692 ms  0x6c80 symkey:0x7f6262ecbf80
           /* TID 0x6c88 */
 17732 ms  0x6c88 PR_Close()
 17732 ms  0x6c88 fd:0x7f624d73f130
 17732 ms  0x6c88 PR_Close()
 17732 ms  0x6c88 fd:0x7f624d73f280
 17732 ms  0x6c88 PR_Close()
 17732 ms  0x6c88 fd:0x7f624d73fd00
           /* TID 0x6c80 */
 17738 ms  0x6c80 PK11_Encrypt()
 17738 ms  0x6c80 symkey:0x7f6265878400
           /* TID 0x6c88 */
 17740 ms  0x6c88 PR_Close()
 17740 ms  0x6c88 fd:0x7f624d73f160
           /* TID 0x6c80 */
 17740 ms  0x6c80 PK11_Encrypt()
 17740 ms  0x6c80 symkey:0x7f625fcc1b00
           /* TID 0x6c88 */
 17741 ms  0x6c88 PR_Close()
 17741 ms  0x6c88 fd:0x7f624d73f130
           /* TID 0x6c80 */
 17746 ms  0x6c80 PK11_Encrypt()
 17746 ms  0x6c80 symkey:0x7f62611c3880
           /* TID 0x6c88 */
 17747 ms  0x6c88 PR_Close()
 17747 ms  0x6c88 fd:0x7f624d73f130
           /* TID 0x6c80 */
 17748 ms  0x6c80 SSL_ImportFD()
 17748 ms  0x6c80 ret:0x7f624d73f160
 17748 ms  0x6c80 SSL_AuthCertificateHook()
 17748 ms  0x6c80 fd:0x7f624d73f160
 17748 ms  0x6c80 ret:0x0
 17749 ms  0x6c80 PK11_Encrypt()
 17749 ms  0x6c80 symkey:0x7f626d268880
 17749 ms  0x6c80 PR_Connect()
 17749 ms  0x6c80 fd:0x7f624d73f160
 17751 ms  SECKEY_ECParamsToKeySize()
 17751 ms  0x6c80 ret:0x100
 17751 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17751 ms  0x6c80 cx:0x7f624d736908
 17752 ms     | 0x6c80 EC_ValidatePublicKey()
 17754 ms     | 0x6c80 ret:0x0
 17754 ms  0x6c80 ret:0x7f624d9b1020::7f624d9b1020  80 ad 1b 66                                      ...f
 17754 ms  0x6c80 PK11_PubDeriveWithKDF()
 17754 ms  0x6c80 seckey:0x7f624d9b1020
 17754 ms     | 0x6c80 EC_ValidatePublicKey()
 17755 ms     | 0x6c80 ret:0x0
 17759 ms  0x6c80 ret:0x7f626998b680
 17759 ms  0x6c80 PK11_DeriveWithFlags()
 17759 ms  0x6c80 basekey:0x7f626998b680
 17759 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17759 ms  0x6c80 ret:0x7f626d29c400
 17759 ms  0x6c80 PK11_Derive()
 17759 ms  0x6c80 basekey:0x7f626d29c400
 17759 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17759 ms  0x6c80 ret:0x7f626d268800
 17759 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17759 ms  0x6c80 privk:0x7f624d9b1020::7f624d9b1020  80 ad 1b 66                                      ...f
 17759 ms  0x6c80 privk:0x7f624d9b1020::7f624d9b1020  e5 e5 e5 e5                                      ....
 17759 ms  0x6c80 PK11_Encrypt()
 17759 ms  0x6c80 symkey:0x7f626ddd1d80
 17762 ms  0x6c80 SSL_AuthCertificateComplete()
 17762 ms  0x6c80 fd:0x7f626583ae20
 17762 ms  0x6c80 err:0x0
           /* TID 0x6c88 */
 17768 ms  0x6c88 PR_Close()
 17768 ms  0x6c88 fd:0x7f624d73fd00
 17768 ms  0x6c88 PR_Close()
 17768 ms  0x6c88 fd:0x7f624d73fe80
           /* TID 0x6c80 */
 17776 ms  0x6c80 PK11_Encrypt()
 17776 ms  0x6c80 symkey:0x7f626d268880
 17776 ms  0x6c80 PK11_Encrypt()
 17776 ms  0x6c80 symkey:0x7f62613c0a80
           /* TID 0x6c88 */
 17777 ms  0x6c88 PR_Close()
 17777 ms  0x6c88 fd:0x7f624d73ffa0
           /* TID 0x6c80 */
 17778 ms  0x6c80 PK11_Encrypt()
 17778 ms  0x6c80 symkey:0x7f626d268880
 17781 ms  0x6c80 PK11_Encrypt()
 17781 ms  0x6c80 symkey:0x7f626d268880
 17789 ms  0x6c80 PK11_Encrypt()
 17789 ms  0x6c80 symkey:0x7f625fea7300
           /* TID 0x6c88 */
 17790 ms  0x6c88 PR_Close()
 17790 ms  0x6c88 fd:0x7f624d73fd60
           /* TID 0x6c80 */
 17791 ms  SECKEY_ECParamsToKeySize()
 17791 ms  0x6c80 ret:0x100
 17791 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17791 ms  0x6c80 cx:0x7f624d737468
 17792 ms     | 0x6c80 EC_ValidatePublicKey()
 17793 ms     | 0x6c80 ret:0x0
 17793 ms  0x6c80 ret:0x7f624b677820::7f624b677820  50 cb 2a 6d                                      P.*m
 17793 ms  0x6c80 PK11_PubDeriveWithKDF()
 17793 ms  0x6c80 seckey:0x7f624b677820
 17793 ms     | 0x6c80 EC_ValidatePublicKey()
 17795 ms     | 0x6c80 ret:0x0
 17803 ms  0x6c80 ret:0x7f626998b680
 17803 ms  0x6c80 PK11_DeriveWithFlags()
 17803 ms  0x6c80 basekey:0x7f626998b680
 17803 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17803 ms  0x6c80 ret:0x7f626a721500
 17803 ms  0x6c80 PK11_Derive()
 17803 ms  0x6c80 basekey:0x7f626a721500
 17803 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17804 ms  0x6c80 ret:0x7f626df0d000
 17804 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17804 ms  0x6c80 privk:0x7f624b677820::7f624b677820  50 cb 2a 6d                                      P.*m
 17804 ms  0x6c80 privk:0x7f624b677820::7f624b677820  e5 e5 e5 e5                                      ....
 17804 ms  0x6c80 PK11_Encrypt()
 17804 ms  0x6c80 symkey:0x7f626df0d980
 17804 ms  0x6c80 SSL_AuthCertificateComplete()
 17804 ms  0x6c80 fd:0x7f6268c86910
 17804 ms  0x6c80 err:0x0
           /* TID 0x6c88 */
 17805 ms  0x6c88 PR_Close()
 17805 ms  0x6c88 fd:0x7f624d73f1f0
 17806 ms  0x6c88 PR_Close()
 17806 ms  0x6c88 fd:0x7f624d73f1f0
 17807 ms  0x6c88 PR_Close()
 17807 ms  0x6c88 fd:0x7f624d73f1f0
           /* TID 0x6c80 */
 17807 ms  0x6c80 PK11_Encrypt()
 17807 ms  0x6c80 symkey:0x7f62663e0780
 17808 ms  0x6c80 PK11_Encrypt()
 17808 ms  0x6c80 symkey:0x7f62661a7480
 17808 ms  0x6c80 PK11_Encrypt()
 17808 ms  0x6c80 symkey:0x7f6265cdf700
           /* TID 0x6c88 */
 17810 ms  0x6c88 PR_Close()
 17810 ms  0x6c88 fd:0x7f624d73f1f0
           /* TID 0x6c80 */
 17810 ms  0x6c80 PK11_Encrypt()
 17810 ms  0x6c80 symkey:0x7f625fca9880
 17815 ms  0x6c80 PK11_Encrypt()
 17815 ms  0x6c80 symkey:0x7f625fcffd00
           /* TID 0x6c88 */
 17816 ms  0x6c88 PR_Close()
 17816 ms  0x6c88 fd:0x7f624d73f1f0
           /* TID 0x6c80 */
 17817 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17817 ms  0x6c80 privk:0x7f624d952820::7f624d952820  e0 5c bf 61                                      .\.a
 17817 ms  0x6c80 privk:0x7f624d952820::7f624d952820  e5 e5 e5 e5                                      ....
 17817 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17817 ms  0x6c80 privk:0x7f624d950820::7f624d950820  d0 a8 79 61                                      ..ya
 17817 ms  0x6c80 privk:0x7f624d950820::7f624d950820  e5 e5 e5 e5                                      ....
 17817 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17817 ms  0x6c80 cx:0x7f626df5cde8
 17818 ms     | 0x6c80 EC_ValidatePublicKey()
 17818 ms     | 0x6c80 ret:0x0
 17818 ms  0x6c80 ret:0x7f624b677820::7f624b677820  d0 a8 79 61                                      ..ya
 17818 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17818 ms  0x6c80 cx:0x7f626df5cde8
 17818 ms     | 0x6c80 EC_ValidatePublicKey()
 17820 ms     | 0x6c80 ret:0x0
 17820 ms  0x6c80 ret:0x7f624b679820::7f624b679820  00 5b bf 61                                      .[.a
           /* TID 0x6c88 */
 17824 ms  0x6c88 PR_Close()
 17824 ms  0x6c88 fd:0x7f624d73f460
           /* TID 0x6c80 */
 17842 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17842 ms  0x6c80 privk:0x7f624d51d820::7f624d51d820  30 e3 29 6d                                      0.)m
 17842 ms  0x6c80 privk:0x7f624d51d820::7f624d51d820  e5 e5 e5 e5                                      ....
 17842 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17842 ms  0x6c80 privk:0x7f6287f73820::7f6287f73820  e0 62 91 6a                                      .b.j
 17842 ms  0x6c80 privk:0x7f6287f73820::7f6287f73820  e5 e5 e5 e5                                      ....
 17843 ms  0x6c80 PK11_Encrypt()
 17843 ms  0x6c80 symkey:0x7f626d268880
 17871 ms  0x6c80 PK11_Encrypt()
 17871 ms  0x6c80 symkey:0x7f625fc9b080
           /* TID 0x6c88 */
 17873 ms  0x6c88 PR_Close()
 17873 ms  0x6c88 fd:0x7f624d583040
           /* TID 0x6c80 */
 17879 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17879 ms  0x6c80 privk:0x7f624d713820::7f624d713820  a0 36 0a 6a                                      .6.j
 17879 ms  0x6c80 privk:0x7f624d713820::7f624d713820  e5 e5 e5 e5                                      ....
 17880 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17880 ms  0x6c80 privk:0x7f624d711820::7f624d711820  40 a7 9e 69                                      @..i
 17880 ms  0x6c80 privk:0x7f624d711820::7f624d711820  e5 e5 e5 e5                                      ....
 17880 ms  0x6c80 PR_Close()
 17880 ms  0x6c80 fd:0x7f626cccbe20
 17880 ms     | 0x6c80 PK11_Encrypt()
 17880 ms     | 0x6c80 symkey:0x7f626dd06e00
           /* TID 0x6c88 */
 17888 ms  0x6c88 PR_Close()
 17888 ms  0x6c88 fd:0x7f624ec7ba60
 17888 ms  0x6c88 PR_Close()
 17888 ms  0x6c88 fd:0x7f6268c86a90
           /* TID 0x6c80 */
 17889 ms  0x6c80 PK11_Encrypt()
 17889 ms  0x6c80 symkey:0x7f626d268880
 17889 ms  0x6c80 PK11_Derive()
 17889 ms  0x6c80 basekey:0x7f6265fea980
 17889 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17889 ms  0x6c80 ret:0x7f6265e3c900
 17889 ms  0x6c80 PK11_PubDeriveWithKDF()
 17889 ms  0x6c80 seckey:0x7f624b677820
 17889 ms     | 0x6c80 EC_ValidatePublicKey()
 17889 ms     | 0x6c80 ret:0x0
 17890 ms  0x6c80 ret:0x7f6265fea980
 17890 ms  SECKEY_ECParamsToKeySize()
 17890 ms  0x6c80 ret:0xff
 17890 ms  0x6c80 PK11_DeriveWithFlags()
 17890 ms  0x6c80 basekey:0x7f6265e3c900
 17890 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17890 ms  0x6c80 ret:0x7f626998b680
 17890 ms  0x6c80 PK11_Derive()
 17890 ms  0x6c80 basekey:0x7f6265fea980
 17890 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17890 ms  0x6c80 ret:0x7f626dd06d80
 17890 ms  0x6c80 PK11_DeriveWithFlags()
 17890 ms  0x6c80 basekey:0x7f626dd06d80
 17890 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17890 ms  0x6c80 ret:0x7f6265e3c900
 17890 ms  0x6c80 PK11_DeriveWithFlags()
 17890 ms  0x6c80 basekey:0x7f626dd06d80
 17890 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17890 ms  0x6c80 ret:0x7f6265fea980
 17890 ms  0x6c80 PK11_DeriveWithFlags()
 17890 ms  0x6c80 basekey:0x7f626dd06d80
 17890 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17890 ms  0x6c80 ret:0x7f626998b680
 17890 ms  0x6c80 PK11_Derive()
 17890 ms  0x6c80 basekey:0x7f626dd06f00
 17890 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17890 ms  0x6c80 ret:0x7f626dd06d00
 17890 ms  0x6c80 PK11_DeriveWithFlags()
 17890 ms  0x6c80 basekey:0x7f6265fea980
 17890 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17890 ms  0x6c80 ret:0x7f626dd06d80
 17890 ms  0x6c80 PK11_DeriveWithFlags()
 17890 ms  0x6c80 basekey:0x7f6265fea980
 17890 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17890 ms  0x6c80 ret:0x7f626998b680
           /* TID 0x6c88 */
 17890 ms  0x6c88 PR_Close()
 17890 ms  0x6c88 fd:0x7f624d5830a0
 17891 ms  0x6c88 PR_Close()
 17891 ms  0x6c88 fd:0x7f624d5830a0
           /* TID 0x6c80 */
 17892 ms  0x6c80 PK11_DeriveWithFlags()
 17892 ms  0x6c80 basekey:0x7f6265fea980
 17892 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17892 ms  0x6c80 ret:0x7f626998b680
 17892 ms  0x6c80 SSL_AuthCertificateComplete()
 17892 ms  0x6c80 fd:0x7f624d73f160
 17892 ms  0x6c80 err:0x0
 17892 ms     | 0x6c80 PK11_DeriveWithFlags()
 17892 ms     | 0x6c80 basekey:0x7f626dd06d00
 17892 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17892 ms     | 0x6c80 ret:0x7f626998b680
 17892 ms     | 0x6c80 PK11_DeriveWithFlags()
 17892 ms     | 0x6c80 basekey:0x7f626dd06d00
 17892 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17892 ms     | 0x6c80 ret:0x7f626dd06f00
 17892 ms     | 0x6c80 PK11_DeriveWithFlags()
 17892 ms     | 0x6c80 basekey:0x7f626dd06d00
 17892 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17892 ms     | 0x6c80 ret:0x7f626dd06e00
 17892 ms     | 0x6c80 PK11_DeriveWithFlags()
 17892 ms     | 0x6c80 basekey:0x7f6265e3c900
 17892 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17892 ms     | 0x6c80 ret:0x7f6261befe00
 17892 ms     | 0x6c80 PK11_DeriveWithFlags()
 17892 ms     | 0x6c80 basekey:0x7f6265e3c900
 17892 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17892 ms     | 0x6c80 ret:0x7f626df0c780
 17892 ms     | 0x6c80 PK11_DeriveWithFlags()
 17892 ms     | 0x6c80 basekey:0x7f626dd06f00
 17892 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17892 ms     | 0x6c80 ret:0x7f626df0c780
 17892 ms     | 0x6c80 PK11_DeriveWithFlags()
 17892 ms     | 0x6c80 basekey:0x7f626dd06f00
 17892 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17892 ms     | 0x6c80 ret:0x7f626df18c80
 17892 ms     | 0x6c80 PK11_DeriveWithFlags()
 17892 ms     | 0x6c80 basekey:0x7f6265e3c900
 17892 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17892 ms     | 0x6c80 ret:0x7f626dd06d80
 17892 ms     | 0x6c80 PK11_Encrypt()
 17892 ms     | 0x6c80 symkey:0x7f6261befe00
 17892 ms     | 0x6c80 PK11_DeriveWithFlags()
 17892 ms     | 0x6c80 basekey:0x7f626998b680
 17892 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17892 ms     | 0x6c80 ret:0x7f626dd06d80
 17892 ms     | 0x6c80 PK11_DeriveWithFlags()
 17892 ms     | 0x6c80 basekey:0x7f626998b680
 17892 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17892 ms     | 0x6c80 ret:0x7f626df18c80
 17892 ms     | 0x6c80 PK11_DeriveWithFlags()
 17892 ms     | 0x6c80 basekey:0x7f626dd06d00
 17892 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 17892 ms     | 0x6c80 ret:0x7f6261befe00
 17892 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 17892 ms     | 0x6c80 privk:0x7f624b679820::7f624b679820  00 5b bf 61                                      .[.a
 17893 ms     | 0x6c80 privk:0x7f624b679820::7f624b679820  e5 e5 e5 e5                                      ....
 17893 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 17893 ms     | 0x6c80 privk:0x7f624b677820::7f624b677820  d0 a8 79 61                                      ..ya
 17893 ms     | 0x6c80 privk:0x7f624b677820::7f624b677820  e5 e5 e5 e5                                      ....
 17894 ms  0x6c80 PK11_Encrypt()
 17894 ms  0x6c80 symkey:0x7f626dd06d80
 17897 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17897 ms  0x6c80 cx:0x7f626d2b6948
 17897 ms     | 0x6c80 EC_ValidatePublicKey()
 17897 ms     | 0x6c80 ret:0x0
 17897 ms  0x6c80 ret:0x7f624b678820::7f624b678820  d0 a8 79 61                                      ..ya
 17897 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17897 ms  0x6c80 cx:0x7f626d2b6948
 17898 ms     | 0x6c80 EC_ValidatePublicKey()
 17899 ms     | 0x6c80 ret:0x0
 17899 ms  0x6c80 ret:0x7f624d70f820::7f624d70f820  00 5b bf 61                                      .[.a
 17902 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17902 ms  0x6c80 cx:0x7f626d2b7988
 17903 ms     | 0x6c80 EC_ValidatePublicKey()
 17903 ms     | 0x6c80 ret:0x0
 17903 ms  0x6c80 ret:0x7f624d712020::7f624d712020  c0 f9 4f 66                                      ..Of
 17903 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17903 ms  0x6c80 cx:0x7f626d2b7988
 17903 ms     | 0x6c80 EC_ValidatePublicKey()
 17905 ms     | 0x6c80 ret:0x0
 17905 ms  0x6c80 ret:0x7f626f813020::7f626f813020  40 27 ec 69                                      @'.i
 17908 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17908 ms  0x6c80 cx:0x7f626d2b6c88
 17909 ms     | 0x6c80 EC_ValidatePublicKey()
 17909 ms     | 0x6c80 ret:0x0
 17909 ms  0x6c80 ret:0x7f624b6d6020::7f624b6d6020  a0 36 0a 6a                                      .6.j
 17909 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17909 ms  0x6c80 cx:0x7f626d2b6c88
 17909 ms     | 0x6c80 EC_ValidatePublicKey()
 17911 ms     | 0x6c80 ret:0x0
 17911 ms  0x6c80 ret:0x7f624b6d8020::7f624b6d8020  60 cf 2a 6d                                      `.*m
 17911 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17911 ms  0x6c80 privk:0x7f624d522020::7f624d522020  c0 59 c0 6d                                      .Y.m
 17911 ms  0x6c80 privk:0x7f624d522020::7f624d522020  e5 e5 e5 e5                                      ....
 17911 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17911 ms  0x6c80 privk:0x7f624d520020::7f624d520020  30 c3 2a 6d                                      0.*m
 17912 ms  0x6c80 privk:0x7f624d520020::7f624d520020  e5 e5 e5 e5                                      ....
 17931 ms  SECKEY_ECParamsToKeySize()
 17931 ms  0x6c80 ret:0x100
 17931 ms  SECKEY_ECParamsToBasePointOrderLen()
 17931 ms  0x6c80 ret:0x100
 17931 ms  SECKEY_ECParamsToBasePointOrderLen()
 17931 ms  0x6c80 ret:0x100
 17931 ms  0x6c80 EC_ValidatePublicKey()
 17932 ms  0x6c80 ret:0x0
 17935 ms  SECKEY_ECParamsToKeySize()
 17935 ms  0x6c80 ret:0x100
 17935 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17935 ms  0x6c80 cx:0x7f624d738648
 17935 ms     | 0x6c80 EC_ValidatePublicKey()
 17937 ms     | 0x6c80 ret:0x0
 17937 ms  0x6c80 ret:0x7f624b6db820::7f624b6db820  b0 cf 2a 6d                                      ..*m
 17937 ms  0x6c80 PK11_PubDeriveWithKDF()
 17937 ms  0x6c80 seckey:0x7f624b6db820
 17937 ms     | 0x6c80 EC_ValidatePublicKey()
 17938 ms     | 0x6c80 ret:0x0
 17940 ms  0x6c80 ret:0x7f6265fea980
 17940 ms  0x6c80 PK11_DeriveWithFlags()
 17940 ms  0x6c80 basekey:0x7f6265fea980
 17940 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17940 ms  0x6c80 ret:0x7f6265e3c900
 17940 ms  0x6c80 PK11_Derive()
 17940 ms  0x6c80 basekey:0x7f6265e3c900
 17940 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17940 ms  0x6c80 ret:0x7f626dd06d00
 17940 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17940 ms  0x6c80 privk:0x7f624b6db820::7f624b6db820  b0 cf 2a 6d                                      ..*m
 17940 ms  0x6c80 privk:0x7f624b6db820::7f624b6db820  e5 e5 e5 e5                                      ....
 17940 ms  0x6c80 PK11_Encrypt()
 17940 ms  0x6c80 symkey:0x7f626df19100
 17941 ms  0x6c80 SSL_AuthCertificateComplete()
 17941 ms  0x6c80 fd:0x7f626eab8a00
 17941 ms  0x6c80 err:0x0
 17941 ms  0x6c80 PK11_Encrypt()
 17941 ms  0x6c80 symkey:0x7f626df19100
 17942 ms  SECKEY_ECParamsToKeySize()
 17942 ms  0x6c80 ret:0x100
 17942 ms  SECKEY_ECParamsToBasePointOrderLen()
 17942 ms  0x6c80 ret:0x100
 17942 ms  SECKEY_ECParamsToBasePointOrderLen()
 17942 ms  0x6c80 ret:0x100
 17942 ms  0x6c80 EC_ValidatePublicKey()
 17943 ms  0x6c80 ret:0x0
 17946 ms  SECKEY_ECParamsToKeySize()
 17946 ms  0x6c80 ret:0x100
 17946 ms  0x6c80 SECKEY_CreateECPrivateKey()
 17946 ms  0x6c80 cx:0x7f624d7384a8
 17946 ms     | 0x6c80 EC_ValidatePublicKey()
 17948 ms     | 0x6c80 ret:0x0
 17948 ms  0x6c80 ret:0x7f624b6dd820::7f624b6dd820  c0 54 c0 6d                                      .T.m
 17948 ms  0x6c80 PK11_PubDeriveWithKDF()
 17948 ms  0x6c80 seckey:0x7f624b6dd820
 17948 ms     | 0x6c80 EC_ValidatePublicKey()
 17949 ms     | 0x6c80 ret:0x0
 17950 ms  0x6c80 ret:0x7f6265fea980
 17950 ms  0x6c80 PK11_DeriveWithFlags()
 17950 ms  0x6c80 basekey:0x7f6265fea980
 17950 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17951 ms  0x6c80 ret:0x7f626df18c80
 17951 ms  0x6c80 PK11_Derive()
 17951 ms  0x6c80 basekey:0x7f626df18c80
 17951 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17951 ms  0x6c80 ret:0x7f626df19e00
 17951 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17951 ms  0x6c80 privk:0x7f624b6dd820::7f624b6dd820  c0 54 c0 6d                                      .T.m
 17951 ms  0x6c80 privk:0x7f624b6dd820::7f624b6dd820  e5 e5 e5 e5                                      ....
 17951 ms  0x6c80 PK11_Encrypt()
 17951 ms  0x6c80 symkey:0x7f626df2f180
 17951 ms  0x6c80 SSL_AuthCertificateComplete()
 17951 ms  0x6c80 fd:0x7f627095b280
 17951 ms  0x6c80 err:0x0
 17951 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17951 ms  0x6c80 privk:0x7f624d718820::7f624d718820  00 ab dd 6c                                      ...l
 17951 ms  0x6c80 privk:0x7f624d718820::7f624d718820  e5 e5 e5 e5                                      ....
 17952 ms  0x6c80 SECKEY_DestroyPrivateKey()
 17952 ms  0x6c80 privk:0x7f624d716820::7f624d716820  60 3f 0a 6a                                      `?.j
 17952 ms  0x6c80 privk:0x7f624d716820::7f624d716820  e5 e5 e5 e5                                      ....
 17952 ms  0x6c80 PK11_Encrypt()
 17952 ms  0x6c80 symkey:0x7f626df2f180
 17952 ms  0x6c80 PR_Close()
 17952 ms  0x6c80 fd:0x7f626df57a60
 17952 ms     | 0x6c80 PK11_Encrypt()
 17952 ms     | 0x6c80 symkey:0x7f626d29c580
           /* TID 0x6c88 */
 17960 ms  0x6c88 PR_Close()
 17960 ms  0x6c88 fd:0x7f624d5834c0
           /* TID 0x6c80 */
 17960 ms  0x6c80 PK11_Encrypt()
 17960 ms  0x6c80 symkey:0x7f626d268880
           /* TID 0x6c88 */
 17962 ms  0x6c88 PR_Close()
 17962 ms  0x6c88 fd:0x7f624d5834c0
           /* TID 0x6c80 */
 17962 ms  0x6c80 PK11_Encrypt()
 17962 ms  0x6c80 symkey:0x7f626d268880
           /* TID 0x6c88 */
 17963 ms  0x6c88 PR_Close()
 17963 ms  0x6c88 fd:0x7f624d583460
           /* TID 0x6c80 */
 17963 ms  0x6c80 PK11_DeriveWithFlags()
 17963 ms  0x6c80 basekey:0x7f6261befe00
 17963 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17963 ms  0x6c80 ret:0x7f626d268b00
 17963 ms  0x6c80 PK11_DeriveWithFlags()
 17963 ms  0x6c80 basekey:0x7f6261befe00
 17963 ms     | 0x6c80 PK11_DeriveWithTemplate()
 17963 ms  0x6c80 ret:0x7f626d268b00
 17963 ms  0x6c80 PR_Close()
 17963 ms  0x6c80 fd:0x7f624d73f160
 17963 ms     | 0x6c80 PK11_Encrypt()
 17963 ms     | 0x6c80 symkey:0x7f626dd06d80
           /* TID 0x6c88 */
 17986 ms  0x6c88 PR_Close()
 17986 ms  0x6c88 fd:0x7f624d5835e0
           /* TID 0x6c80 */
 18011 ms  0x6c80 PK11_Encrypt()
 18011 ms  0x6c80 symkey:0x7f626d268880
 18017 ms  0x6c80 PR_Close()
 18017 ms  0x6c80 fd:0x7f626484b280
 18017 ms     | 0x6c80 PK11_Encrypt()
 18017 ms     | 0x6c80 symkey:0x7f626d28b900
           /* TID 0x6c88 */
 18019 ms  0x6c88 PR_Close()
 18019 ms  0x6c88 fd:0x7f624d73f1f0
           /* TID 0x6c80 */
 18040 ms  0x6c80 PK11_Encrypt()
 18040 ms  0x6c80 symkey:0x7f6262ecbf80
           /* TID 0x6c88 */
 18042 ms  0x6c88 PR_Close()
 18042 ms  0x6c88 fd:0x7f624d73f880
           /* TID 0x6c80 */
 18062 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18062 ms  0x6c80 privk:0x7f624d714020::7f624d714020  e0 87 41 66                                      ..Af
 18062 ms  0x6c80 privk:0x7f624d714020::7f624d714020  e5 e5 e5 e5                                      ....
 18062 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18062 ms  0x6c80 privk:0x7f624d709020::7f624d709020  40 b2 c8 68                                      @..h
 18062 ms  0x6c80 privk:0x7f624d709020::7f624d709020  e5 e5 e5 e5                                      ....
 18076 ms  0x6c80 PK11_Encrypt()
 18076 ms  0x6c80 symkey:0x7f6265878400
           /* TID 0x6c88 */
 18077 ms  0x6c88 PR_Close()
 18077 ms  0x6c88 fd:0x7f624d73f3d0
           /* TID 0x6c80 */
 18085 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18085 ms  0x6c80 privk:0x7f626a761820::7f626a761820  60 da 08 6a                                      `..j
 18085 ms  0x6c80 privk:0x7f626a761820::7f626a761820  e5 e5 e5 e5                                      ....
 18085 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18085 ms  0x6c80 privk:0x7f6265062820::7f6265062820  a0 5b 7c 61                                      .[|a
 18085 ms  0x6c80 privk:0x7f6265062820::7f6265062820  e5 e5 e5 e5                                      ....
 18085 ms  0x6c80 PK11_Encrypt()
 18085 ms  0x6c80 symkey:0x7f626d28ce80
           /* TID 0x6c88 */
 18089 ms  0x6c88 PR_Close()
 18089 ms  0x6c88 fd:0x7f624d583820
 18091 ms  0x6c88 PR_Close()
 18091 ms  0x6c88 fd:0x7f624ec7b520
           /* TID 0x6c80 */
 18094 ms  0x6c80 PK11_Encrypt()
 18094 ms  0x6c80 symkey:0x7f625fcc1b00
           /* TID 0x6c88 */
 18095 ms  0x6c88 PR_Close()
 18095 ms  0x6c88 fd:0x7f624d583bb0
           /* TID 0x6c80 */
 18096 ms  0x6c80 PK11_Encrypt()
 18096 ms  0x6c80 symkey:0x7f62611c3880
           /* TID 0x6c88 */
 18097 ms  0x6c88 PR_Close()
 18097 ms  0x6c88 fd:0x7f624d583820
           /* TID 0x6c80 */
 18112 ms  0x6c80 PK11_Encrypt()
 18112 ms  0x6c80 symkey:0x7f62613c0a80
           /* TID 0x6c88 */
 18113 ms  0x6c88 PR_Close()
 18113 ms  0x6c88 fd:0x7f624d583bb0
           /* TID 0x6c80 */
 18126 ms  0x6c80 PK11_Encrypt()
 18126 ms  0x6c80 symkey:0x7f62661a7480
           /* TID 0x6c88 */
 18127 ms  0x6c88 PR_Close()
 18127 ms  0x6c88 fd:0x7f6266417580
           /* TID 0x6c80 */
 18130 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18130 ms  0x6c80 privk:0x7f624d7cd820::7f624d7cd820  50 e6 29 6d                                      P.)m
 18130 ms  0x6c80 privk:0x7f624d7cd820::7f624d7cd820  e5 e5 e5 e5                                      ....
 18130 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18130 ms  0x6c80 privk:0x7f624d7cb020::7f624d7cb020  10 5f bf 61                                      ._.a
 18130 ms  0x6c80 privk:0x7f624d7cb020::7f624d7cb020  e5 e5 e5 e5                                      ....
 18152 ms  0x6c80 SSL_ImportFD()
 18152 ms  0x6c80 ret:0x7f626df57820
 18152 ms  0x6c80 SSL_AuthCertificateHook()
 18152 ms  0x6c80 fd:0x7f626df57820
 18152 ms  0x6c80 ret:0x0
 18153 ms  0x6c80 PK11_Encrypt()
 18153 ms  0x6c80 symkey:0x7f626d268b80
 18153 ms  0x6c80 PK11_Encrypt()
 18153 ms  0x6c80 symkey:0x7f626d268b80
 18153 ms  0x6c80 PR_Connect()
 18153 ms  0x6c80 fd:0x7f626df57820
 18153 ms  0x6c80 SSL_ImportFD()
 18153 ms  0x6c80 ret:0x7f624d73f6a0
 18153 ms  0x6c80 SSL_AuthCertificateHook()
 18153 ms  0x6c80 fd:0x7f624d73f6a0
 18153 ms  0x6c80 ret:0x0
 18153 ms  0x6c80 PR_Connect()
 18153 ms  0x6c80 fd:0x7f624d73f6a0
 18153 ms  0x6c80 SSL_ImportFD()
 18153 ms  0x6c80 ret:0x7f625fcb7910
 18153 ms  0x6c80 SSL_AuthCertificateHook()
 18153 ms  0x6c80 fd:0x7f625fcb7910
 18153 ms  0x6c80 ret:0x0
 18153 ms  0x6c80 PR_Connect()
 18153 ms  0x6c80 fd:0x7f625fcb7910
 18153 ms  0x6c80 PK11_Encrypt()
 18153 ms  0x6c80 symkey:0x7f626d268b80
           /* TID 0x6c88 */
 18165 ms  0x6c88 PR_Close()
 18165 ms  0x6c88 fd:0x7f624d583ee0
           /* TID 0x6c80 */
 18165 ms  0x6c80 PK11_Encrypt()
 18165 ms  0x6c80 symkey:0x7f62663e0780
 18181 ms  0x6c80 PK11_Encrypt()
 18181 ms  0x6c80 symkey:0x7f625fc9b080
           /* TID 0x6c88 */
 18182 ms  0x6c88 PR_Close()
 18182 ms  0x6c88 fd:0x7f624d583ee0
           /* TID 0x6c80 */
 18182 ms  0x6c80 PK11_Encrypt()
 18182 ms  0x6c80 symkey:0x7f625fea7300
           /* TID 0x6c88 */
 18183 ms  0x6c88 PR_Close()
 18183 ms  0x6c88 fd:0x7f6265bacca0
           /* TID 0x6c80 */
 18183 ms  0x6c80 PK11_Encrypt()
 18183 ms  0x6c80 symkey:0x7f6265cdf700
           /* TID 0x6c88 */
 18184 ms  0x6c88 PR_Close()
 18184 ms  0x6c88 fd:0x7f624d583ee0
           /* TID 0x6c80 */
 18186 ms  0x6c80 PK11_Encrypt()
 18186 ms  0x6c80 symkey:0x7f625fca9880
           /* TID 0x6c88 */
 18187 ms  0x6c88 PR_Close()
 18187 ms  0x6c88 fd:0x7f624d583ee0
           /* TID 0x6c80 */
 18201 ms  0x6c80 PK11_Encrypt()
 18201 ms  0x6c80 symkey:0x7f625fcffd00
           /* TID 0x6c88 */
 18201 ms  0x6c88 PR_Close()
 18201 ms  0x6c88 fd:0x7f624d583d60
 18222 ms  0x6c88 PR_Close()
 18222 ms  0x6c88 fd:0x7f62699a5dc0
           /* TID 0x6c80 */
 18226 ms  SECKEY_ECParamsToKeySize()
 18226 ms  0x6c80 ret:0x100
 18226 ms  SECKEY_ECParamsToBasePointOrderLen()
 18226 ms  0x6c80 ret:0x100
 18226 ms  SECKEY_ECParamsToBasePointOrderLen()
 18226 ms  0x6c80 ret:0x100
 18226 ms  0x6c80 EC_ValidatePublicKey()
 18227 ms  0x6c80 ret:0x0
 18230 ms  SECKEY_ECParamsToKeySize()
 18230 ms  0x6c80 ret:0x100
 18230 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18230 ms  0x6c80 cx:0x7f626d2b7988
 18232 ms     | 0x6c80 EC_ValidatePublicKey()
 18234 ms     | 0x6c80 ret:0x0
 18234 ms  0x6c80 ret:0x7f624d7cf820::7f624d7cf820  b0 95 e6 65                                      ...e
 18234 ms  0x6c80 PK11_PubDeriveWithKDF()
 18234 ms  0x6c80 seckey:0x7f624d7cf820
 18234 ms     | 0x6c80 EC_ValidatePublicKey()
 18236 ms     | 0x6c80 ret:0x0
 18237 ms  0x6c80 ret:0x7f6265ce0700
 18237 ms  0x6c80 PK11_DeriveWithFlags()
 18237 ms  0x6c80 basekey:0x7f6265ce0700
 18237 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18237 ms  0x6c80 ret:0x7f626d268a80
 18237 ms  0x6c80 PK11_Derive()
 18237 ms  0x6c80 basekey:0x7f626d268a80
 18237 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18237 ms  0x6c80 ret:0x7f626dd06e00
 18237 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18237 ms  0x6c80 privk:0x7f624d7cf820::7f624d7cf820  b0 95 e6 65                                      ...e
 18237 ms  0x6c80 privk:0x7f624d7cf820::7f624d7cf820  e5 e5 e5 e5                                      ....
 18237 ms  0x6c80 PK11_Encrypt()
 18237 ms  0x6c80 symkey:0x7f626d28ba00
 18238 ms  0x6c80 SSL_AuthCertificateComplete()
 18238 ms  0x6c80 fd:0x7f624d73f490
 18238 ms  0x6c80 err:0x0
 18239 ms  SECKEY_ECParamsToKeySize()
 18239 ms  0x6c80 ret:0x100
 18239 ms  SECKEY_ECParamsToBasePointOrderLen()
 18239 ms  0x6c80 ret:0x100
 18239 ms  SECKEY_ECParamsToBasePointOrderLen()
 18239 ms  0x6c80 ret:0x100
 18239 ms  0x6c80 EC_ValidatePublicKey()
 18240 ms  0x6c80 ret:0x0
 18242 ms  SECKEY_ECParamsToKeySize()
 18242 ms  0x6c80 ret:0x100
 18242 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18242 ms  0x6c80 cx:0x7f626d2b6c88
 18243 ms     | 0x6c80 EC_ValidatePublicKey()
 18244 ms     | 0x6c80 ret:0x0
 18245 ms  0x6c80 ret:0x7f624d7de820::7f624d7de820  70 1e 1b 66                                      p..f
 18245 ms  0x6c80 PK11_PubDeriveWithKDF()
 18245 ms  0x6c80 seckey:0x7f624d7de820
 18245 ms     | 0x6c80 EC_ValidatePublicKey()
 18246 ms     | 0x6c80 ret:0x0
 18248 ms  0x6c80 ret:0x7f6265ce0700
 18248 ms  0x6c80 PK11_DeriveWithFlags()
 18248 ms  0x6c80 basekey:0x7f6265ce0700
 18248 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18248 ms  0x6c80 ret:0x7f626dd06f00
 18248 ms  0x6c80 PK11_Derive()
 18248 ms  0x6c80 basekey:0x7f626dd06f00
 18248 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18248 ms  0x6c80 ret:0x7f626998b680
 18248 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18248 ms  0x6c80 privk:0x7f624d7de820::7f624d7de820  70 1e 1b 66                                      p..f
 18248 ms  0x6c80 privk:0x7f624d7de820::7f624d7de820  e5 e5 e5 e5                                      ....
 18248 ms  0x6c80 PK11_Encrypt()
 18248 ms  0x6c80 symkey:0x7f626d29c680
 18250 ms  0x6c80 PK11_Encrypt()
 18250 ms  0x6c80 symkey:0x7f626d28ba00
 18250 ms  0x6c80 SSL_AuthCertificateComplete()
 18250 ms  0x6c80 fd:0x7f624d73f370
 18250 ms  0x6c80 err:0x0
 18251 ms  0x6c80 PK11_Encrypt()
 18251 ms  0x6c80 symkey:0x7f626d29c680
 18252 ms  SECKEY_ECParamsToKeySize()
 18252 ms  0x6c80 ret:0x100
 18252 ms  SECKEY_ECParamsToBasePointOrderLen()
 18252 ms  0x6c80 ret:0x100
 18252 ms  SECKEY_ECParamsToBasePointOrderLen()
 18252 ms  0x6c80 ret:0x100
 18252 ms  0x6c80 EC_ValidatePublicKey()
 18253 ms  0x6c80 ret:0x0
 18255 ms  SECKEY_ECParamsToKeySize()
 18255 ms  0x6c80 ret:0x100
 18255 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18255 ms  0x6c80 cx:0x7f626d2b6948
 18256 ms     | 0x6c80 EC_ValidatePublicKey()
 18257 ms     | 0x6c80 ret:0x0
 18257 ms  0x6c80 ret:0x7f6265010820::7f6265010820  f0 ab 1b 66                                      ...f
 18257 ms  0x6c80 PK11_PubDeriveWithKDF()
 18257 ms  0x6c80 seckey:0x7f6265010820
 18257 ms     | 0x6c80 EC_ValidatePublicKey()
 18259 ms     | 0x6c80 ret:0x0
 18260 ms  0x6c80 ret:0x7f6265ce0700
 18260 ms  0x6c80 PK11_DeriveWithFlags()
 18260 ms  0x6c80 basekey:0x7f6265ce0700
 18260 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18260 ms  0x6c80 ret:0x7f6261befe00
 18260 ms  0x6c80 PK11_Derive()
 18260 ms  0x6c80 basekey:0x7f6261befe00
 18260 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18260 ms  0x6c80 ret:0x7f626df0c780
 18260 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18260 ms  0x6c80 privk:0x7f6265010820::7f6265010820  f0 ab 1b 66                                      ...f
 18260 ms  0x6c80 privk:0x7f6265010820::7f6265010820  e5 e5 e5 e5                                      ....
 18261 ms  0x6c80 PK11_Encrypt()
 18261 ms  0x6c80 symkey:0x7f626df40380
 18261 ms  0x6c80 SSL_AuthCertificateComplete()
 18261 ms  0x6c80 fd:0x7f624d73f340
 18261 ms  0x6c80 err:0x0
 18261 ms  0x6c80 PK11_Encrypt()
 18261 ms  0x6c80 symkey:0x7f626df40380
 18261 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18261 ms  0x6c80 privk:0x7f624d7ce020::7f624d7ce020  60 50 c0 6d                                      `P.m
 18262 ms  0x6c80 privk:0x7f624d7ce020::7f624d7ce020  e5 e5 e5 e5                                      ....
 18262 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18262 ms  0x6c80 privk:0x7f624d5e2820::7f624d5e2820  90 ec 29 6d                                      ..)m
 18262 ms  0x6c80 privk:0x7f624d5e2820::7f624d5e2820  e5 e5 e5 e5                                      ....
 18262 ms  0x6c80 PR_Close()
 18262 ms  0x6c80 fd:0x7f626eab8a00
 18262 ms     | 0x6c80 PK11_Encrypt()
 18262 ms     | 0x6c80 symkey:0x7f626df19100
 18271 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18271 ms  0x6c80 privk:0x7f624d7dd820::7f624d7dd820  60 55 c0 6d                                      `U.m
 18271 ms  0x6c80 privk:0x7f624d7dd820::7f624d7dd820  e5 e5 e5 e5                                      ....
 18271 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18271 ms  0x6c80 privk:0x7f624d7d1820::7f624d7d1820  f0 51 c0 6d                                      .Q.m
 18272 ms  0x6c80 privk:0x7f624d7d1820::7f624d7d1820  e5 e5 e5 e5                                      ....
 18272 ms  0x6c80 PR_Close()
 18272 ms  0x6c80 fd:0x7f627095b280
 18272 ms     | 0x6c80 PK11_Encrypt()
 18272 ms     | 0x6c80 symkey:0x7f626df2f180
 18276 ms  0x6c80 PR_Close()
 18276 ms  0x6c80 fd:0x7f626a638c40
 18276 ms     | 0x6c80 PK11_Encrypt()
 18276 ms     | 0x6c80 symkey:0x7f625fca8180
 18276 ms  0x6c80 PR_Close()
 18276 ms  0x6c80 fd:0x7f626a36c760
 18276 ms     | 0x6c80 PK11_Encrypt()
 18276 ms     | 0x6c80 symkey:0x7f625fc9ad80
 18292 ms  0x6c80 SSL_ImportFD()
 18292 ms  0x6c80 ret:0x7f624d73fc40
 18292 ms  0x6c80 SSL_AuthCertificateHook()
 18292 ms  0x6c80 fd:0x7f624d73fc40
 18292 ms  0x6c80 ret:0x0
 18292 ms  0x6c80 PR_Connect()
 18292 ms  0x6c80 fd:0x7f624d73fc40
 18292 ms  0x6c80 SSL_ImportFD()
 18292 ms  0x6c80 ret:0x7f624d583430
 18292 ms  0x6c80 SSL_AuthCertificateHook()
 18292 ms  0x6c80 fd:0x7f624d583430
 18292 ms  0x6c80 ret:0x0
 18293 ms  0x6c80 PR_Connect()
 18293 ms  0x6c80 fd:0x7f624d583430
 18293 ms  0x6c80 SSL_ImportFD()
 18293 ms  0x6c80 ret:0x7f624d73fb50
 18293 ms  0x6c80 SSL_AuthCertificateHook()
 18293 ms  0x6c80 fd:0x7f624d73fb50
 18293 ms  0x6c80 ret:0x0
 18293 ms  0x6c80 PR_Connect()
 18293 ms  0x6c80 fd:0x7f624d73fb50
 18293 ms  0x6c80 SSL_ImportFD()
 18293 ms  0x6c80 ret:0x7f624d73ffd0
 18293 ms  0x6c80 SSL_AuthCertificateHook()
 18293 ms  0x6c80 fd:0x7f624d73ffd0
 18293 ms  0x6c80 ret:0x0
 18293 ms  0x6c80 PR_Connect()
 18293 ms  0x6c80 fd:0x7f624d73ffd0
 18378 ms  0x6c80 PK11_Encrypt()
 18378 ms  0x6c80 symkey:0x7f6262ecbf80
           /* TID 0x6c88 */
 18380 ms  0x6c88 PR_Close()
 18380 ms  0x6c88 fd:0x7f624d583100
           /* TID 0x6c80 */
 18406 ms  0x6c80 SSL_ImportFD()
 18406 ms  0x6c80 ret:0x7f6268dfae50
 18406 ms  0x6c80 SSL_AuthCertificateHook()
 18406 ms  0x6c80 fd:0x7f6268dfae50
 18406 ms  0x6c80 ret:0x0
 18406 ms  0x6c80 PR_Connect()
 18406 ms  0x6c80 fd:0x7f6268dfae50
 18406 ms  0x6c80 SSL_ImportFD()
 18406 ms  0x6c80 ret:0x7f624d944490
 18406 ms  0x6c80 SSL_AuthCertificateHook()
 18406 ms  0x6c80 fd:0x7f624d944490
 18406 ms  0x6c80 ret:0x0
 18406 ms  0x6c80 PR_Connect()
 18406 ms  0x6c80 fd:0x7f624d944490
 18406 ms  0x6c80 SSL_ImportFD()
 18407 ms  0x6c80 ret:0x7f626df57520
 18407 ms  0x6c80 SSL_AuthCertificateHook()
 18407 ms  0x6c80 fd:0x7f626df57520
 18407 ms  0x6c80 ret:0x0
 18407 ms  0x6c80 PR_Connect()
 18407 ms  0x6c80 fd:0x7f626df57520
 18420 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18420 ms  0x6c80 privk:0x7f6265053820::7f6265053820  a0 16 1b 66                                      ...f
 18420 ms  0x6c80 privk:0x7f6265053820::7f6265053820  e5 e5 e5 e5                                      ....
 18420 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18420 ms  0x6c80 privk:0x7f6265011020::7f6265011020  b0 55 7c 61                                      .U|a
 18420 ms  0x6c80 privk:0x7f6265011020::7f6265011020  e5 e5 e5 e5                                      ....
 18433 ms  SECKEY_ECParamsToKeySize()
 18433 ms  0x6c80 ret:0x100
 18433 ms  SECKEY_ECParamsToBasePointOrderLen()
 18434 ms  0x6c80 ret:0x100
 18434 ms  SECKEY_ECParamsToBasePointOrderLen()
 18434 ms  0x6c80 ret:0x100
 18434 ms  0x6c80 EC_ValidatePublicKey()
 18435 ms  0x6c80 ret:0x0
 18440 ms  SECKEY_ECParamsToKeySize()
 18440 ms  0x6c80 ret:0x100
 18440 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18440 ms  0x6c80 cx:0x7f624d7387e8
 18441 ms     | 0x6c80 EC_ValidatePublicKey()
 18442 ms     | 0x6c80 ret:0x0
 18442 ms  0x6c80 ret:0x7f624b6dc820::7f624b6dc820  e0 ac 17 66                                      ...f
 18442 ms  0x6c80 PK11_PubDeriveWithKDF()
 18442 ms  0x6c80 seckey:0x7f624b6dc820
 18442 ms     | 0x6c80 EC_ValidatePublicKey()
 18444 ms     | 0x6c80 ret:0x0
 18445 ms  0x6c80 ret:0x7f625fca8c00
 18445 ms  0x6c80 PK11_DeriveWithFlags()
 18445 ms  0x6c80 basekey:0x7f625fca8c00
 18445 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18445 ms  0x6c80 ret:0x7f625fc9ac00
 18445 ms  0x6c80 PK11_Derive()
 18445 ms  0x6c80 basekey:0x7f625fc9ac00
 18452 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18452 ms  0x6c80 ret:0x7f625fc9ac80
 18452 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18452 ms  0x6c80 privk:0x7f624b6dc820::7f624b6dc820  e0 ac 17 66                                      ...f
 18452 ms  0x6c80 privk:0x7f624b6dc820::7f624b6dc820  e5 e5 e5 e5                                      ....
 18452 ms  0x6c80 PK11_Encrypt()
 18452 ms  0x6c80 symkey:0x7f625fc9b300
 18452 ms  0x6c80 SSL_AuthCertificateComplete()
 18452 ms  0x6c80 fd:0x7f626f875130
 18452 ms  0x6c80 err:0x0
 18453 ms  0x6c80 PK11_Encrypt()
 18453 ms  0x6c80 symkey:0x7f625fc9b300
           /* TID 0x6c88 */
 18453 ms  0x6c88 PR_Close()
 18453 ms  0x6c88 fd:0x7f624d583100
 18454 ms  0x6c88 PR_Close()
 18454 ms  0x6c88 fd:0x7f624d583100
 18457 ms  0x6c88 PR_Close()
 18457 ms  0x6c88 fd:0x7f626df57670
 18459 ms  0x6c88 PR_Close()
 18459 ms  0x6c88 fd:0x7f6270989b20
           /* TID 0x6c80 */
 18459 ms  0x6c80 PK11_Encrypt()
 18459 ms  0x6c80 symkey:0x7f62611c3880
 18461 ms  0x6c80 PK11_Encrypt()
 18461 ms  0x6c80 symkey:0x7f62613c0a80
 18461 ms  0x6c80 PK11_Encrypt()
 18461 ms  0x6c80 symkey:0x7f6265878400
           /* TID 0x6c88 */
 18462 ms  0x6c88 PR_Close()
 18462 ms  0x6c88 fd:0x7f624d73fc70
 18463 ms  0x6c88 PR_Close()
 18463 ms  0x6c88 fd:0x7f624d73fc70
           /* TID 0x6c80 */
 18464 ms  0x6c80 PK11_Encrypt()
 18464 ms  0x6c80 symkey:0x7f625fcc1b00
 18464 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18464 ms  0x6c80 cx:0x7f624d5a7a68
 18464 ms     | 0x6c80 EC_ValidatePublicKey()
 18464 ms     | 0x6c80 ret:0x0
 18464 ms  0x6c80 ret:0x7f624d7ce020::7f624d7ce020  a0 e6 e4 62                                      ...b
 18465 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18465 ms  0x6c80 cx:0x7f624d5a7a68
 18465 ms     | 0x6c80 EC_ValidatePublicKey()
 18467 ms     | 0x6c80 ret:0x0
 18467 ms  0x6c80 ret:0x7f624d7d1820::7f624d7d1820  80 ad 17 66                                      ...f
           /* TID 0x6c88 */
 18472 ms  0x6c88 PR_Close()
 18472 ms  0x6c88 fd:0x7f624d583e80
           /* TID 0x6c80 */
 18473 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18473 ms  0x6c80 cx:0x7f624d5a7c08
 18473 ms     | 0x6c80 EC_ValidatePublicKey()
 18473 ms     | 0x6c80 ret:0x0
 18473 ms  0x6c80 ret:0x7f624d951820::7f624d951820  e0 72 1b 66                                      .r.f
 18473 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18473 ms  0x6c80 cx:0x7f624d5a7c08
 18474 ms     | 0x6c80 EC_ValidatePublicKey()
 18475 ms     | 0x6c80 ret:0x0
 18480 ms  0x6c80 ret:0x7f6265008020::7f6265008020  a0 e6 c5 68                                      ...h
 18481 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18481 ms  0x6c80 cx:0x7f624d5a7da8
 18482 ms     | 0x6c80 EC_ValidatePublicKey()
 18482 ms     | 0x6c80 ret:0x0
 18482 ms  0x6c80 ret:0x7f626501e820::7f626501e820  c0 d4 cf 68                                      ...h
 18482 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18482 ms  0x6c80 cx:0x7f624d5a7da8
 18483 ms     | 0x6c80 EC_ValidatePublicKey()
 18484 ms     | 0x6c80 ret:0x0
 18484 ms  0x6c80 ret:0x7f6265062820::7f6265062820  d0 2d ec 69                                      .-.i
           /* TID 0x6c88 */
 18491 ms  0x6c88 PR_Close()
 18491 ms  0x6c88 fd:0x7f624ec7b580
           /* TID 0x6c80 */
 18492 ms  0x6c80 PK11_Encrypt()
 18492 ms  0x6c80 symkey:0x7f62663e0780
 18508 ms  0x6c80 PK11_Encrypt()
 18508 ms  0x6c80 symkey:0x7f62661a7480
           /* TID 0x6c88 */
 18509 ms  0x6c88 PR_Close()
 18509 ms  0x6c88 fd:0x7f6268dfa250
 18515 ms  0x6c88 PR_Close()
 18515 ms  0x6c88 fd:0x7f6269931b20
           /* TID 0x6c80 */
 18515 ms  0x6c80 PK11_Encrypt()
 18515 ms  0x6c80 symkey:0x7f626d28ce80
 18536 ms  0x6c80 PR_Connect()
 18536 ms  0x6c80 fd:0x7f6269931b20
 18546 ms  0x6c80 SSL_ImportFD()
 18546 ms  0x6c80 ret:0x7f624b5191c0
 18546 ms  0x6c80 SSL_AuthCertificateHook()
 18546 ms  0x6c80 fd:0x7f624b5191c0
 18546 ms  0x6c80 ret:0x0
 18546 ms  0x6c80 PR_Connect()
 18546 ms  0x6c80 fd:0x7f624b5191c0
 18546 ms  0x6c80 SSL_ImportFD()
 18546 ms  0x6c80 ret:0x7f624b519070
 18546 ms  0x6c80 SSL_AuthCertificateHook()
 18546 ms  0x6c80 fd:0x7f624b519070
 18546 ms  0x6c80 ret:0x0
 18546 ms  0x6c80 PR_Connect()
 18546 ms  0x6c80 fd:0x7f624b519070
 18546 ms  0x6c80 SSL_ImportFD()
 18546 ms  0x6c80 ret:0x7f624b5190a0
 18546 ms  0x6c80 SSL_AuthCertificateHook()
 18546 ms  0x6c80 fd:0x7f624b5190a0
 18546 ms  0x6c80 ret:0x0
 18546 ms  0x6c80 PR_Connect()
 18546 ms  0x6c80 fd:0x7f624b5190a0
 18546 ms  0x6c80 SSL_ImportFD()
 18546 ms  0x6c80 ret:0x7f624b519100
 18546 ms  0x6c80 SSL_AuthCertificateHook()
 18546 ms  0x6c80 fd:0x7f624b519100
 18546 ms  0x6c80 ret:0x0
 18546 ms  0x6c80 PR_Connect()
 18546 ms  0x6c80 fd:0x7f624b519100
 18550 ms  0x6c80 PK11_Encrypt()
 18550 ms  0x6c80 symkey:0x7f625fea7300
           /* TID 0x6c88 */
 18551 ms  0x6c88 PR_Close()
 18551 ms  0x6c88 fd:0x7f624b519700
           /* TID 0x6c80 */
 18560 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18560 ms  0x6c80 cx:0x7f624d5a80e8
 18561 ms     | 0x6c80 EC_ValidatePublicKey()
 18561 ms     | 0x6c80 ret:0x0
 18561 ms  0x6c80 ret:0x7f624b580820::7f624b580820  90 ec 29 6d                                      ..)m
 18561 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18561 ms  0x6c80 cx:0x7f624d5a80e8
 18562 ms     | 0x6c80 EC_ValidatePublicKey()
 18564 ms     | 0x6c80 ret:0x0
 18564 ms  0x6c80 ret:0x7f624b582820::7f624b582820  00 c1 2a 6d                                      ..*m
 18570 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18570 ms  0x6c80 privk:0x7f626f813020::7f626f813020  40 27 ec 69                                      @'.i
 18570 ms  0x6c80 privk:0x7f626f813020::7f626f813020  e5 e5 e5 e5                                      ....
 18570 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18570 ms  0x6c80 privk:0x7f624d712020::7f624d712020  c0 f9 4f 66                                      ..Of
 18570 ms  0x6c80 privk:0x7f624d712020::7f624d712020  e5 e5 e5 e5                                      ....
 18570 ms  0x6c80 PR_Close()
 18570 ms  0x6c80 fd:0x7f624d73f490
 18570 ms     | 0x6c80 PK11_Encrypt()
 18570 ms     | 0x6c80 symkey:0x7f626d28ba00
 18571 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18571 ms  0x6c80 cx:0x7f624d5a8428
 18571 ms     | 0x6c80 EC_ValidatePublicKey()
 18571 ms     | 0x6c80 ret:0x0
 18571 ms  0x6c80 ret:0x7f624b585020::7f624b585020  b0 1f e4 65                                      ...e
 18571 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18571 ms  0x6c80 cx:0x7f624d5a8428
 18572 ms     | 0x6c80 EC_ValidatePublicKey()
 18574 ms     | 0x6c80 ret:0x0
 18574 ms  0x6c80 ret:0x7f624b587020::7f624b587020  80 b3 a5 69                                      ...i
           /* TID 0x6c88 */
 18575 ms  0x6c88 PR_Close()
 18575 ms  0x6c88 fd:0x7f624b519880
           /* TID 0x6c80 */
 18575 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18575 ms  0x6c80 privk:0x7f624b6d8020::7f624b6d8020  60 cf 2a 6d                                      `.*m
 18576 ms  0x6c80 privk:0x7f624b6d8020::7f624b6d8020  e5 e5 e5 e5                                      ....
 18576 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18576 ms  0x6c80 privk:0x7f624b6d6020::7f624b6d6020  a0 36 0a 6a                                      .6.j
 18576 ms  0x6c80 privk:0x7f624b6d6020::7f624b6d6020  e5 e5 e5 e5                                      ....
 18576 ms  0x6c80 PR_Close()
 18576 ms  0x6c80 fd:0x7f624d73f370
 18576 ms     | 0x6c80 PK11_Encrypt()
 18576 ms     | 0x6c80 symkey:0x7f626d29c680
 18580 ms  0x6c80 PK11_Encrypt()
 18580 ms  0x6c80 symkey:0x7f625fcffd00
           /* TID 0x6c88 */
 18581 ms  0x6c88 PR_Close()
 18581 ms  0x6c88 fd:0x7f624b519880
 18582 ms  0x6c88 PR_Close()
 18582 ms  0x6c88 fd:0x7f624b519880
 18582 ms  0x6c88 PR_Close()
 18582 ms  0x6c88 fd:0x7f624b519880
           /* TID 0x6c80 */
 18582 ms  0x6c80 PK11_Encrypt()
 18582 ms  0x6c80 symkey:0x7f6265cdf700
 18583 ms  0x6c80 PK11_Encrypt()
 18583 ms  0x6c80 symkey:0x7f625fc9b080
 18583 ms  0x6c80 PK11_Encrypt()
 18583 ms  0x6c80 symkey:0x7f625fca9880
 18586 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18586 ms  0x6c80 privk:0x7f624d70f820::7f624d70f820  00 5b bf 61                                      .[.a
 18586 ms  0x6c80 privk:0x7f624d70f820::7f624d70f820  e5 e5 e5 e5                                      ....
 18586 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18586 ms  0x6c80 privk:0x7f624b678820::7f624b678820  d0 a8 79 61                                      ..ya
 18586 ms  0x6c80 privk:0x7f624b678820::7f624b678820  e5 e5 e5 e5                                      ....
 18586 ms  0x6c80 PR_Close()
 18586 ms  0x6c80 fd:0x7f624d73f340
 18586 ms     | 0x6c80 PK11_Encrypt()
 18586 ms     | 0x6c80 symkey:0x7f626df40380
 18587 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18587 ms  0x6c80 cx:0x7f624d5a8288
 18588 ms     | 0x6c80 EC_ValidatePublicKey()
 18588 ms     | 0x6c80 ret:0x0
 18588 ms  0x6c80 ret:0x7f624b58a020::7f624b58a020  d0 a8 79 61                                      ..ya
 18588 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18588 ms  0x6c80 cx:0x7f624d5a8288
 18588 ms     | 0x6c80 EC_ValidatePublicKey()
 18590 ms     | 0x6c80 ret:0x0
 18590 ms  0x6c80 ret:0x7f624b58c020::7f624b58c020  00 5b bf 61                                      .[.a
 18602 ms  0x6c80 SSL_ImportFD()
 18602 ms  0x6c80 ret:0x7f624b519a60
 18602 ms  0x6c80 SSL_AuthCertificateHook()
 18602 ms  0x6c80 fd:0x7f624b519a60
 18602 ms  0x6c80 ret:0x0
 18602 ms  0x6c80 PR_Connect()
 18602 ms  0x6c80 fd:0x7f624b519a60
 18603 ms  0x6c80 SSL_ImportFD()
 18603 ms  0x6c80 ret:0x7f624b5199d0
 18603 ms  0x6c80 SSL_AuthCertificateHook()
 18603 ms  0x6c80 fd:0x7f624b5199d0
 18603 ms  0x6c80 ret:0x0
 18603 ms  0x6c80 PR_Connect()
 18603 ms  0x6c80 fd:0x7f624b5199d0
 18624 ms  0x6c80 PK11_Encrypt()
 18624 ms  0x6c80 symkey:0x7f625fcc0580
 18628 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18628 ms  0x6c80 cx:0x7f624d5a97a8
 18629 ms     | 0x6c80 EC_ValidatePublicKey()
 18629 ms     | 0x6c80 ret:0x0
 18629 ms  0x6c80 ret:0x7f624d712820::7f624d712820  40 27 ec 69                                      @'.i
 18629 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18629 ms  0x6c80 cx:0x7f624d5a97a8
 18629 ms     | 0x6c80 EC_ValidatePublicKey()
 18631 ms     | 0x6c80 ret:0x0
 18631 ms  0x6c80 ret:0x7f624d7cb020::7f624d7cb020  90 97 cf 6c                                      ...l
 18632 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18632 ms  0x6c80 cx:0x7f624d5a9e28
 18632 ms     | 0x6c80 EC_ValidatePublicKey()
 18632 ms     | 0x6c80 ret:0x0
 18632 ms  0x6c80 ret:0x7f624d7cf820::7f624d7cf820  90 c2 2a 6d                                      ..*m
 18633 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18633 ms  0x6c80 cx:0x7f624d5a9e28
 18633 ms     | 0x6c80 EC_ValidatePublicKey()
 18635 ms     | 0x6c80 ret:0x0
 18635 ms  0x6c80 ret:0x7f624d9b5820::7f624d9b5820  30 c8 2a 6d                                      0.*m
 18640 ms  0x6c80 PK11_Encrypt()
 18640 ms  0x6c80 symkey:0x7f625fca9f00
 18644 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18644 ms  0x6c80 cx:0x7f624d5a85c8
 18645 ms     | 0x6c80 EC_ValidatePublicKey()
 18645 ms     | 0x6c80 ret:0x0
 18645 ms  0x6c80 ret:0x7f624b5a0820::7f624b5a0820  b0 cf 2a 6d                                      ..*m
 18645 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18645 ms  0x6c80 cx:0x7f624d5a85c8
 18646 ms     | 0x6c80 EC_ValidatePublicKey()
 18647 ms     | 0x6c80 ret:0x0
 18647 ms  0x6c80 ret:0x7f624b5a2820::7f624b5a2820  f0 51 c0 6d                                      .Q.m
           /* TID 0x6c88 */
 18651 ms  0x6c88 PR_Close()
 18651 ms  0x6c88 fd:0x7f624d583be0
           /* TID 0x6c80 */
 18655 ms  0x6c80 PK11_Encrypt()
 18655 ms  0x6c80 symkey:0x7f625fcc0280
 18658 ms  0x6c80 PK11_Derive()
 18658 ms  0x6c80 basekey:0x7f626df0c780
 18658 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18658 ms  0x6c80 ret:0x7f6261befe00
 18658 ms  0x6c80 PK11_PubDeriveWithKDF()
 18658 ms  0x6c80 seckey:0x7f624d7cb020
 18658 ms     | 0x6c80 EC_ValidatePublicKey()
 18660 ms     | 0x6c80 ret:0x0
 18662 ms  0x6c80 ret:0x7f626df0c780
 18662 ms  SECKEY_ECParamsToKeySize()
 18662 ms  0x6c80 ret:0x100
 18662 ms  0x6c80 PK11_DeriveWithFlags()
 18662 ms  0x6c80 basekey:0x7f6261befe00
 18662 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18662 ms  0x6c80 ret:0x7f626998b680
 18662 ms  0x6c80 PK11_Derive()
 18662 ms  0x6c80 basekey:0x7f626df0c780
 18662 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18662 ms  0x6c80 ret:0x7f626dd06f00
 18662 ms  0x6c80 PK11_DeriveWithFlags()
 18662 ms  0x6c80 basekey:0x7f626dd06f00
 18662 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18662 ms  0x6c80 ret:0x7f6261befe00
 18662 ms  0x6c80 PK11_DeriveWithFlags()
 18662 ms  0x6c80 basekey:0x7f626dd06f00
 18662 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18662 ms  0x6c80 ret:0x7f626df0c780
 18662 ms  0x6c80 PK11_DeriveWithFlags()
 18662 ms  0x6c80 basekey:0x7f626dd06f00
 18662 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18662 ms  0x6c80 ret:0x7f626998b680
 18662 ms  0x6c80 PK11_Derive()
 18662 ms  0x6c80 basekey:0x7f626dd06e00
 18662 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18662 ms  0x6c80 ret:0x7f626d268a80
 18662 ms  0x6c80 PK11_DeriveWithFlags()
 18662 ms  0x6c80 basekey:0x7f626df0c780
 18662 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18662 ms  0x6c80 ret:0x7f626dd06f00
 18662 ms  0x6c80 PK11_DeriveWithFlags()
 18662 ms  0x6c80 basekey:0x7f626df0c780
 18662 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18662 ms  0x6c80 ret:0x7f626998b680
           /* TID 0x6d17 */
 18666 ms  0x6d17 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 18666 ms  0x6d17 ret:0x0
 18666 ms  0x6d17 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 18666 ms  0x6d17 ret:0x0
           /* TID 0x6c80 */
 18666 ms  0x6c80 PK11_DeriveWithFlags()
 18666 ms  0x6c80 basekey:0x7f626df0c780
 18666 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18666 ms  0x6c80 ret:0x7f626998b680
 18666 ms  0x6c80 SSL_AuthCertificateComplete()
 18666 ms  0x6c80 fd:0x7f624b519a60
 18666 ms  0x6c80 err:0x0
 18666 ms     | 0x6c80 PK11_DeriveWithFlags()
 18666 ms     | 0x6c80 basekey:0x7f626d268a80
 18666 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18666 ms     | 0x6c80 ret:0x7f626998b680
 18667 ms     | 0x6c80 PK11_DeriveWithFlags()
 18667 ms     | 0x6c80 basekey:0x7f626d268a80
 18667 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18667 ms     | 0x6c80 ret:0x7f626dd06e00
 18667 ms     | 0x6c80 PK11_DeriveWithFlags()
 18667 ms     | 0x6c80 basekey:0x7f626d268a80
 18667 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18667 ms     | 0x6c80 ret:0x7f625fca8c00
 18667 ms     | 0x6c80 PK11_DeriveWithFlags()
 18667 ms     | 0x6c80 basekey:0x7f6261befe00
 18667 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18667 ms     | 0x6c80 ret:0x7f625fc9bf80
 18667 ms     | 0x6c80 PK11_DeriveWithFlags()
 18667 ms     | 0x6c80 basekey:0x7f6261befe00
 18667 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18667 ms     | 0x6c80 ret:0x7f626df19e00
 18667 ms     | 0x6c80 PK11_DeriveWithFlags()
 18667 ms     | 0x6c80 basekey:0x7f626dd06e00
 18667 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18667 ms     | 0x6c80 ret:0x7f626df19e00
 18667 ms     | 0x6c80 PK11_DeriveWithFlags()
 18667 ms     | 0x6c80 basekey:0x7f626dd06e00
 18667 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18667 ms     | 0x6c80 ret:0x7f626df18c80
 18667 ms     | 0x6c80 PK11_DeriveWithFlags()
 18667 ms     | 0x6c80 basekey:0x7f6261befe00
 18667 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18667 ms     | 0x6c80 ret:0x7f626dd06f00
 18667 ms     | 0x6c80 PK11_Encrypt()
 18667 ms     | 0x6c80 symkey:0x7f625fc9bf80
 18670 ms     | 0x6c80 PK11_DeriveWithFlags()
 18670 ms     | 0x6c80 basekey:0x7f626998b680
 18670 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18670 ms     | 0x6c80 ret:0x7f626dd06f00
 18670 ms     | 0x6c80 PK11_DeriveWithFlags()
 18670 ms     | 0x6c80 basekey:0x7f626998b680
 18670 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18670 ms     | 0x6c80 ret:0x7f626df18c80
 18670 ms     | 0x6c80 PK11_DeriveWithFlags()
 18670 ms     | 0x6c80 basekey:0x7f626d268a80
 18670 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18670 ms     | 0x6c80 ret:0x7f625fc9bf80
 18670 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 18670 ms     | 0x6c80 privk:0x7f624d7cb020::7f624d7cb020  90 97 cf 6c                                      ...l
 18670 ms     | 0x6c80 privk:0x7f624d7cb020::7f624d7cb020  e5 e5 e5 e5                                      ....
 18671 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 18671 ms     | 0x6c80 privk:0x7f624d712820::7f624d712820  40 27 ec 69                                      @'.i
 18671 ms     | 0x6c80 privk:0x7f624d712820::7f624d712820  e5 e5 e5 e5                                      ....
 18671 ms  0x6c80 PK11_Derive()
 18671 ms  0x6c80 basekey:0x7f626df0c780
 18671 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18671 ms  0x6c80 ret:0x7f6261befe00
 18671 ms  0x6c80 PK11_PubDeriveWithKDF()
 18671 ms  0x6c80 seckey:0x7f624d9b5820
 18671 ms     | 0x6c80 EC_ValidatePublicKey()
 18672 ms     | 0x6c80 ret:0x0
 18674 ms  0x6c80 ret:0x7f626df0c780
 18674 ms  SECKEY_ECParamsToKeySize()
 18674 ms  0x6c80 ret:0x100
 18674 ms  0x6c80 PK11_DeriveWithFlags()
 18674 ms  0x6c80 basekey:0x7f6261befe00
 18674 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18674 ms  0x6c80 ret:0x7f626d268a80
 18674 ms  0x6c80 PK11_Derive()
 18674 ms  0x6c80 basekey:0x7f626df0c780
 18674 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18674 ms  0x6c80 ret:0x7f626df18c80
 18674 ms  0x6c80 PK11_DeriveWithFlags()
 18674 ms  0x6c80 basekey:0x7f626df18c80
 18674 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18674 ms  0x6c80 ret:0x7f6261befe00
 18674 ms  0x6c80 PK11_DeriveWithFlags()
 18674 ms  0x6c80 basekey:0x7f626df18c80
 18674 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18674 ms  0x6c80 ret:0x7f626df0c780
 18674 ms  0x6c80 PK11_DeriveWithFlags()
 18674 ms  0x6c80 basekey:0x7f626df18c80
 18674 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18674 ms  0x6c80 ret:0x7f626d268a80
 18674 ms  0x6c80 PK11_Derive()
 18674 ms  0x6c80 basekey:0x7f626dd06d00
 18674 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18674 ms  0x6c80 ret:0x7f6265e3c900
 18674 ms  0x6c80 PK11_DeriveWithFlags()
 18674 ms  0x6c80 basekey:0x7f626df0c780
 18674 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18674 ms  0x6c80 ret:0x7f626df18c80
 18674 ms  0x6c80 PK11_DeriveWithFlags()
 18674 ms  0x6c80 basekey:0x7f626df0c780
 18674 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18674 ms  0x6c80 ret:0x7f626d268a80
           /* TID 0x6d24 */
 18679 ms  0x6d24 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 18679 ms  0x6d24 ret:0x0
 18679 ms  0x6d24 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 18679 ms  0x6d24 ret:0x0
           /* TID 0x6c80 */
 18680 ms  0x6c80 PK11_DeriveWithFlags()
 18680 ms  0x6c80 basekey:0x7f626df0c780
 18680 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18680 ms  0x6c80 ret:0x7f626d268a80
 18681 ms  0x6c80 PK11_Encrypt()
 18681 ms  0x6c80 symkey:0x7f626dd06f00
 18682 ms  0x6c80 PK11_Encrypt()
 18682 ms  0x6c80 symkey:0x7f626dd06f00
 18683 ms  0x6c80 PK11_Encrypt()
 18683 ms  0x6c80 symkey:0x7f626cbfff00
 18685 ms  0x6c80 SSL_AuthCertificateComplete()
 18685 ms  0x6c80 fd:0x7f624b5199d0
 18685 ms  0x6c80 err:0x0
 18685 ms     | 0x6c80 PK11_DeriveWithFlags()
 18685 ms     | 0x6c80 basekey:0x7f6265e3c900
 18685 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18685 ms     | 0x6c80 ret:0x7f626d268a80
 18685 ms     | 0x6c80 PK11_DeriveWithFlags()
 18685 ms     | 0x6c80 basekey:0x7f6265e3c900
 18685 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18685 ms     | 0x6c80 ret:0x7f626dd06d00
 18685 ms     | 0x6c80 PK11_DeriveWithFlags()
 18685 ms     | 0x6c80 basekey:0x7f6265e3c900
 18685 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18685 ms     | 0x6c80 ret:0x7f6265ce0700
 18685 ms     | 0x6c80 PK11_DeriveWithFlags()
 18685 ms     | 0x6c80 basekey:0x7f6261befe00
 18685 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18685 ms     | 0x6c80 ret:0x7f626dd06d80
 18685 ms     | 0x6c80 PK11_DeriveWithFlags()
 18685 ms     | 0x6c80 basekey:0x7f6261befe00
 18685 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18685 ms     | 0x6c80 ret:0x7f626d268b00
 18685 ms     | 0x6c80 PK11_DeriveWithFlags()
 18685 ms     | 0x6c80 basekey:0x7f626dd06d00
 18685 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18685 ms     | 0x6c80 ret:0x7f626d268b00
 18685 ms     | 0x6c80 PK11_DeriveWithFlags()
 18685 ms     | 0x6c80 basekey:0x7f626dd06d00
 18685 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18685 ms     | 0x6c80 ret:0x7f626d268780
 18685 ms     | 0x6c80 PK11_DeriveWithFlags()
 18685 ms     | 0x6c80 basekey:0x7f6261befe00
 18685 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18685 ms     | 0x6c80 ret:0x7f626df18c80
 18685 ms     | 0x6c80 PK11_Encrypt()
 18685 ms     | 0x6c80 symkey:0x7f626dd06d80
 18685 ms     | 0x6c80 PK11_DeriveWithFlags()
 18685 ms     | 0x6c80 basekey:0x7f626d268a80
 18685 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18685 ms     | 0x6c80 ret:0x7f626df18c80
 18685 ms     | 0x6c80 PK11_DeriveWithFlags()
 18685 ms     | 0x6c80 basekey:0x7f626d268a80
 18685 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18685 ms     | 0x6c80 ret:0x7f626d268780
 18685 ms     | 0x6c80 PK11_DeriveWithFlags()
 18685 ms     | 0x6c80 basekey:0x7f6265e3c900
 18686 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 18686 ms     | 0x6c80 ret:0x7f626dd06d80
 18686 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 18686 ms     | 0x6c80 privk:0x7f624d9b5820::7f624d9b5820  30 c8 2a 6d                                      0.*m
 18686 ms     | 0x6c80 privk:0x7f624d9b5820::7f624d9b5820  e5 e5 e5 e5                                      ....
 18686 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 18686 ms     | 0x6c80 privk:0x7f624d7cf820::7f624d7cf820  90 c2 2a 6d                                      ..*m
 18686 ms     | 0x6c80 privk:0x7f624d7cf820::7f624d7cf820  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 18690 ms  0x6c88 PR_Close()
 18690 ms  0x6c88 fd:0x7f624d73feb0
           /* TID 0x6c80 */
 18691 ms  0x6c80 SSL_ImportFD()
 18691 ms  0x6c80 ret:0x7f624d73f5e0
 18691 ms  0x6c80 SSL_AuthCertificateHook()
 18691 ms  0x6c80 fd:0x7f624d73f5e0
 18691 ms  0x6c80 ret:0x0
 18691 ms  0x6c80 PR_Connect()
 18691 ms  0x6c80 fd:0x7f624d73f5e0
 18691 ms  0x6c80 SSL_ImportFD()
 18691 ms  0x6c80 ret:0x7f624d73f9d0
 18691 ms  0x6c80 SSL_AuthCertificateHook()
 18691 ms  0x6c80 fd:0x7f624d73f9d0
 18691 ms  0x6c80 ret:0x0
 18692 ms  0x6c80 PR_Connect()
 18692 ms  0x6c80 fd:0x7f624d73f9d0
 18692 ms  0x6c80 SSL_ImportFD()
 18692 ms  0x6c80 ret:0x7f624d73fbb0
 18692 ms  0x6c80 SSL_AuthCertificateHook()
 18692 ms  0x6c80 fd:0x7f624d73fbb0
 18692 ms  0x6c80 ret:0x0
 18693 ms  0x6c80 PR_Connect()
 18693 ms  0x6c80 fd:0x7f624d73fbb0
           /* TID 0x6c88 */
 18694 ms  0x6c88 PR_Close()
 18694 ms  0x6c88 fd:0x7f624d583670
 18695 ms  0x6c88 PR_Close()
 18695 ms  0x6c88 fd:0x7f624b519b50
           /* TID 0x6c80 */
 18695 ms  0x6c80 PK11_DeriveWithFlags()
 18695 ms  0x6c80 basekey:0x7f625fc9bf80
 18695 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18695 ms  0x6c80 ret:0x7f626df0c780
 18696 ms  0x6c80 PK11_DeriveWithFlags()
 18696 ms  0x6c80 basekey:0x7f625fc9bf80
 18696 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18696 ms  0x6c80 ret:0x7f626df0c780
 18696 ms  0x6c80 PK11_Encrypt()
 18696 ms  0x6c80 symkey:0x7f626df18c80
 18697 ms  0x6c80 PK11_Encrypt()
 18697 ms  0x6c80 symkey:0x7f626dd06f00
 18697 ms  0x6c80 SSL_ImportFD()
 18697 ms  0x6c80 ret:0x7f624b519e80
 18697 ms  0x6c80 SSL_AuthCertificateHook()
 18697 ms  0x6c80 fd:0x7f624b519e80
 18697 ms  0x6c80 ret:0x0
 18698 ms  0x6c80 PR_Connect()
 18698 ms  0x6c80 fd:0x7f624b519e80
 18698 ms  0x6c80 SSL_ImportFD()
 18698 ms  0x6c80 ret:0x7f6268d1a070
 18698 ms  0x6c80 SSL_AuthCertificateHook()
 18698 ms  0x6c80 fd:0x7f6268d1a070
 18698 ms  0x6c80 ret:0x0
 18699 ms  0x6c80 PR_Connect()
 18699 ms  0x6c80 fd:0x7f6268d1a070
 18699 ms  0x6c80 SSL_ImportFD()
 18699 ms  0x6c80 ret:0x7f624d73f8e0
 18699 ms  0x6c80 SSL_AuthCertificateHook()
 18699 ms  0x6c80 fd:0x7f624d73f8e0
 18699 ms  0x6c80 ret:0x0
 18699 ms  0x6c80 PR_Connect()
 18699 ms  0x6c80 fd:0x7f624d73f8e0
 18699 ms  0x6c80 SSL_ImportFD()
 18699 ms  0x6c80 ret:0x7f624d944c40
 18699 ms  0x6c80 SSL_AuthCertificateHook()
 18699 ms  0x6c80 fd:0x7f624d944c40
 18699 ms  0x6c80 ret:0x0
 18699 ms  0x6c80 PR_Connect()
 18699 ms  0x6c80 fd:0x7f624d944c40
 18699 ms  0x6c80 SSL_ImportFD()
 18699 ms  0x6c80 ret:0x7f6268d1a640
 18699 ms  0x6c80 SSL_AuthCertificateHook()
 18699 ms  0x6c80 fd:0x7f6268d1a640
 18699 ms  0x6c80 ret:0x0
 18700 ms  0x6c80 PR_Connect()
 18700 ms  0x6c80 fd:0x7f6268d1a640
 18700 ms  0x6c80 SSL_ImportFD()
 18700 ms  0x6c80 ret:0x7f6268d1a7f0
 18700 ms  0x6c80 SSL_AuthCertificateHook()
 18700 ms  0x6c80 fd:0x7f6268d1a7f0
 18700 ms  0x6c80 ret:0x0
 18700 ms  0x6c80 PR_Connect()
 18700 ms  0x6c80 fd:0x7f6268d1a7f0
 18701 ms  0x6c80 SSL_ImportFD()
 18701 ms  0x6c80 ret:0x7f624d73f850
 18701 ms  0x6c80 SSL_AuthCertificateHook()
 18701 ms  0x6c80 fd:0x7f624d73f850
 18701 ms  0x6c80 ret:0x0
 18701 ms  0x6c80 PR_Connect()
 18701 ms  0x6c80 fd:0x7f624d73f850
 18701 ms  0x6c80 PK11_Encrypt()
 18701 ms  0x6c80 symkey:0x7f626dd06f00
           /* TID 0x6c88 */
 18709 ms  0x6c88 PR_Close()
 18709 ms  0x6c88 fd:0x7f624b40d190
           /* TID 0x6c80 */
 18709 ms  0x6c80 PK11_Encrypt()
 18709 ms  0x6c80 symkey:0x7f626d268b80
 18714 ms  0x6c80 PK11_DeriveWithFlags()
 18714 ms  0x6c80 basekey:0x7f626dd06d80
 18714 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18714 ms  0x6c80 ret:0x7f626df0c780
 18714 ms  0x6c80 PK11_DeriveWithFlags()
 18714 ms  0x6c80 basekey:0x7f626dd06d80
 18714 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18714 ms  0x6c80 ret:0x7f626df0c780
 18714 ms  0x6c80 PR_Close()
 18714 ms  0x6c80 fd:0x7f624b5199d0
 18715 ms     | 0x6c80 PK11_Encrypt()
 18715 ms     | 0x6c80 symkey:0x7f626df18c80
           /* TID 0x6c88 */
 18716 ms  0x6c88 PR_Close()
 18716 ms  0x6c88 fd:0x7f624b40d160
 18719 ms  0x6c88 PR_Close()
 18719 ms  0x6c88 fd:0x7f624b40d160
 18722 ms  0x6c88 PR_Close()
 18722 ms  0x6c88 fd:0x7f624b40d160
           /* TID 0x6c80 */
 18730 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18730 ms  0x6c80 cx:0x7f624d5a8768
 18730 ms     | 0x6c80 EC_ValidatePublicKey()
 18730 ms     | 0x6c80 ret:0x0
 18730 ms  0x6c80 ret:0x7f624d950020::7f624d950020  40 f7 14 66                                      @..f
 18731 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18731 ms  0x6c80 cx:0x7f624d5a8768
 18731 ms     | 0x6c80 EC_ValidatePublicKey()
 18733 ms     | 0x6c80 ret:0x0
 18733 ms  0x6c80 ret:0x7f6268db0020::7f6268db0020  70 2e ec 69                                      p..i
           /* TID 0x6c88 */
 18734 ms  0x6c88 PR_Close()
 18734 ms  0x6c88 fd:0x7f624b40d1f0
           /* TID 0x6c80 */
 18735 ms  0x6c80 PK11_Encrypt()
 18735 ms  0x6c80 symkey:0x7f6262ecbf80
 18736 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18736 ms  0x6c80 cx:0x7f624d5a8aa8
 18736 ms     | 0x6c80 EC_ValidatePublicKey()
 18737 ms     | 0x6c80 ret:0x0
 18737 ms  0x6c80 ret:0x7f624b427820::7f624b427820  70 e9 29 6d                                      p.)m
 18737 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18737 ms  0x6c80 cx:0x7f624d5a8aa8
 18737 ms     | 0x6c80 EC_ValidatePublicKey()
 18743 ms     | 0x6c80 ret:0x0
 18743 ms  0x6c80 ret:0x7f624b429820::7f624b429820  b0 ca 2a 6d                                      ..*m
 18745 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18745 ms  0x6c80 cx:0x7f624d5aa648
 18745 ms     | 0x6c80 EC_ValidatePublicKey()
 18745 ms     | 0x6c80 ret:0x0
 18745 ms  0x6c80 ret:0x7f624b42c020::7f624b42c020  60 55 c0 6d                                      `U.m
 18747 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18747 ms  0x6c80 cx:0x7f624d5aa648
 18747 ms     | 0x6c80 EC_ValidatePublicKey()
 18749 ms     | 0x6c80 ret:0x0
 18749 ms  0x6c80 ret:0x7f624b42f020::7f624b42f020  20 59 c0 6d                                       Y.m
 18756 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18756 ms  0x6c80 cx:0x7f624d5aa308
 18756 ms     | 0x6c80 EC_ValidatePublicKey()
 18756 ms     | 0x6c80 ret:0x0
 18756 ms  0x6c80 ret:0x7f624b433020::7f624b433020  40 5c c0 6d                                      @\.m
 18756 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18756 ms  0x6c80 cx:0x7f624d5aa308
 18757 ms     | 0x6c80 EC_ValidatePublicKey()
 18758 ms     | 0x6c80 ret:0x0
 18758 ms  0x6c80 ret:0x7f624b435020::7f624b435020  c0 5e c0 6d                                      .^.m
 18761 ms  0x6c80 PK11_Encrypt()
 18761 ms  0x6c80 symkey:0x7f626dd06f00
 18762 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18762 ms  0x6c80 privk:0x7f624d5e0020::7f624d5e0020  80 e8 29 6d                                      ..)m
 18762 ms  0x6c80 privk:0x7f624d5e0020::7f624d5e0020  e5 e5 e5 e5                                      ....
 18762 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18762 ms  0x6c80 privk:0x7f624d5de020::7f624d5de020  a0 d6 90 6a                                      ...j
 18762 ms  0x6c80 privk:0x7f624d5de020::7f624d5de020  e5 e5 e5 e5                                      ....
 18768 ms  0x6c80 PR_Close()
 18768 ms  0x6c80 fd:0x7f626f875130
 18768 ms     | 0x6c80 PK11_Encrypt()
 18768 ms     | 0x6c80 symkey:0x7f625fc9b300
 18771 ms  0x6c80 PK11_Encrypt()
 18771 ms  0x6c80 symkey:0x7f626dd06f00
 18772 ms  0x6c80 PK11_Encrypt()
 18772 ms  0x6c80 symkey:0x7f626dd06f00
 18772 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18772 ms  0x6c80 cx:0x7f624d5aab28
 18773 ms     | 0x6c80 EC_ValidatePublicKey()
 18773 ms     | 0x6c80 ret:0x0
 18773 ms  0x6c80 ret:0x7f624b43d820::7f624b43d820  90 e7 29 6d                                      ..)m
 18773 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18773 ms  0x6c80 cx:0x7f624d5aab28
 18774 ms     | 0x6c80 EC_ValidatePublicKey()
 18775 ms     | 0x6c80 ret:0x0
 18775 ms  0x6c80 ret:0x7f624b43f820::7f624b43f820  00 21 c8 6d                                      .!.m
 18778 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18778 ms  0x6c80 cx:0x7f624d5a9fc8
 18778 ms     | 0x6c80 EC_ValidatePublicKey()
 18778 ms     | 0x6c80 ret:0x0
 18778 ms  0x6c80 ret:0x7f624b444020::7f624b444020  30 23 c8 6d                                      0#.m
 18778 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18778 ms  0x6c80 cx:0x7f624d5a9fc8
 18779 ms     | 0x6c80 EC_ValidatePublicKey()
 18780 ms     | 0x6c80 ret:0x0
 18780 ms  0x6c80 ret:0x7f624b6db020::7f624b6db020  10 25 c8 6d                                      .%.m
 18786 ms  0x6c80 PK11_Encrypt()
 18786 ms  0x6c80 symkey:0x7f626dd06f00
 18786 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18786 ms  0x6c80 cx:0x7f624d5aa7e8
 18787 ms     | 0x6c80 EC_ValidatePublicKey()
 18787 ms     | 0x6c80 ret:0x0
 18787 ms  0x6c80 ret:0x7f624d5de820::7f624d5de820  a0 26 c8 6d                                      .&.m
 18787 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18787 ms  0x6c80 cx:0x7f624d5aa7e8
 18788 ms     | 0x6c80 EC_ValidatePublicKey()
 18789 ms     | 0x6c80 ret:0x0
 18789 ms  0x6c80 ret:0x7f624d708020::7f624d708020  20 29 c8 6d                                       ).m
 18794 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18794 ms  0x6c80 cx:0x7f626cba25c8
 18795 ms     | 0x6c80 EC_ValidatePublicKey()
 18795 ms     | 0x6c80 ret:0x0
 18795 ms  0x6c80 ret:0x7f624b457820::7f624b457820  b0 2a c8 6d                                      .*.m
 18795 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18795 ms  0x6c80 cx:0x7f626cba25c8
 18795 ms     | 0x6c80 EC_ValidatePublicKey()
 18797 ms     | 0x6c80 ret:0x0
 18797 ms  0x6c80 ret:0x7f624b459820::7f624b459820  90 2c c8 6d                                      .,.m
 18802 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18802 ms  0x6c80 cx:0x7f624d738648
 18803 ms     | 0x6c80 EC_ValidatePublicKey()
 18803 ms     | 0x6c80 ret:0x0
 18803 ms  0x6c80 ret:0x7f624b45c020::7f624b45c020  20 2e c8 6d                                       ..m
 18803 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18803 ms  0x6c80 cx:0x7f624d738648
 18803 ms     | 0x6c80 EC_ValidatePublicKey()
 18805 ms     | 0x6c80 ret:0x0
 18805 ms  0x6c80 ret:0x7f624b45e020::7f624b45e020  60 d0 d7 6d                                      `..m
 18805 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18805 ms  0x6c80 cx:0x7f624d7384a8
 18806 ms     | 0x6c80 EC_ValidatePublicKey()
 18806 ms     | 0x6c80 ret:0x0
 18806 ms  0x6c80 ret:0x7f624b460820::7f624b460820  a0 d1 d7 6d                                      ...m
 18806 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18806 ms  0x6c80 cx:0x7f624d7384a8
 18806 ms     | 0x6c80 EC_ValidatePublicKey()
 18808 ms     | 0x6c80 ret:0x0
 18808 ms  0x6c80 ret:0x7f624b462820::7f624b462820  80 d3 d7 6d                                      ...m
 18816 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18816 ms  0x6c80 cx:0x7f624d5aae68
 18816 ms     | 0x6c80 EC_ValidatePublicKey()
 18816 ms     | 0x6c80 ret:0x0
 18816 ms  0x6c80 ret:0x7f624b465020::7f624b465020  70 d4 d7 6d                                      p..m
 18816 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18816 ms  0x6c80 cx:0x7f624d5aae68
 18817 ms     | 0x6c80 EC_ValidatePublicKey()
 18818 ms     | 0x6c80 ret:0x0
 18818 ms  0x6c80 ret:0x7f624b467020::7f624b467020  a0 d6 d7 6d                                      ...m
 18821 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18821 ms  0x6c80 cx:0x7f624d5aacc8
 18821 ms     | 0x6c80 EC_ValidatePublicKey()
 18821 ms     | 0x6c80 ret:0x0
 18821 ms  0x6c80 ret:0x7f624b469820::7f624b469820  e0 d7 d7 6d                                      ...m
 18821 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18821 ms  0x6c80 cx:0x7f624d5aacc8
 18822 ms     | 0x6c80 EC_ValidatePublicKey()
 18829 ms     | 0x6c80 ret:0x0
 18829 ms  0x6c80 ret:0x7f624b46b820::7f624b46b820  60 da d7 6d                                      `..m
 18830 ms  0x6c80 PR_Close()
 18830 ms  0x6c80 fd:0x7f62661774f0
 18831 ms  SECKEY_ECParamsToKeySize()
 18831 ms  0x6c80 ret:0x100
 18831 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18831 ms  0x6c80 cx:0x7f624d5aab28
 18831 ms     | 0x6c80 EC_ValidatePublicKey()
 18833 ms     | 0x6c80 ret:0x0
 18833 ms  0x6c80 ret:0x7f624b46e820::7f624b46e820  80 dd d7 6d                                      ...m
 18833 ms  0x6c80 PK11_PubDeriveWithKDF()
 18833 ms  0x6c80 seckey:0x7f624b46e820
 18833 ms     | 0x6c80 EC_ValidatePublicKey()
 18840 ms     | 0x6c80 ret:0x0
 18841 ms  0x6c80 ret:0x7f625fc9ac80
 18841 ms  0x6c80 PK11_DeriveWithFlags()
 18841 ms  0x6c80 basekey:0x7f625fc9ac80
 18841 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18842 ms  0x6c80 ret:0x7f625fc9ac00
 18842 ms  0x6c80 PK11_Derive()
 18842 ms  0x6c80 basekey:0x7f625fc9ac00
 18842 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18842 ms  0x6c80 ret:0x7f6265ce0700
 18842 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18842 ms  0x6c80 privk:0x7f624b46e820::7f624b46e820  80 dd d7 6d                                      ...m
 18842 ms  0x6c80 privk:0x7f624b46e820::7f624b46e820  e5 e5 e5 e5                                      ....
 18842 ms  0x6c80 PK11_Encrypt()
 18842 ms  0x6c80 symkey:0x7f625fc9ae00
           /* TID 0x6c88 */
 18843 ms  0x6c88 PR_Close()
 18843 ms  0x6c88 fd:0x7f624d583a00
           /* TID 0x6c80 */
 18844 ms  SECKEY_ECParamsToKeySize()
 18844 ms  0x6c80 ret:0x100
 18844 ms  SECKEY_ECParamsToBasePointOrderLen()
 18844 ms  0x6c80 ret:0x100
 18844 ms  SECKEY_ECParamsToBasePointOrderLen()
 18844 ms  0x6c80 ret:0x100
 18844 ms  0x6c80 EC_ValidatePublicKey()
 18849 ms  0x6c80 ret:0x0
 18851 ms  SECKEY_ECParamsToKeySize()
 18851 ms  0x6c80 ret:0x100
 18851 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18851 ms  0x6c80 cx:0x7f624d5a7a68
 18851 ms     | 0x6c80 EC_ValidatePublicKey()
 18853 ms     | 0x6c80 ret:0x0
 18853 ms  0x6c80 ret:0x7f624b46f820::7f624b46f820  80 dd d7 6d                                      ...m
 18853 ms  0x6c80 PK11_PubDeriveWithKDF()
 18853 ms  0x6c80 seckey:0x7f624b46f820
 18853 ms     | 0x6c80 EC_ValidatePublicKey()
 18854 ms     | 0x6c80 ret:0x0
 18861 ms  0x6c80 ret:0x7f625fc9ac80
 18861 ms  0x6c80 PK11_DeriveWithFlags()
 18861 ms  0x6c80 basekey:0x7f625fc9ac80
 18861 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18861 ms  0x6c80 ret:0x7f626dd06d00
 18861 ms  0x6c80 PK11_Derive()
 18861 ms  0x6c80 basekey:0x7f626dd06d00
 18861 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18861 ms  0x6c80 ret:0x7f626d268a80
 18861 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18861 ms  0x6c80 privk:0x7f624b46f820::7f624b46f820  80 dd d7 6d                                      ...m
 18862 ms  0x6c80 privk:0x7f624b46f820::7f624b46f820  e5 e5 e5 e5                                      ....
 18862 ms  0x6c80 PK11_Encrypt()
 18862 ms  0x6c80 symkey:0x7f626df40280
           /* TID 0x6c88 */
 18864 ms  0x6c88 PR_Close()
 18864 ms  0x6c88 fd:0x7f624d583be0
           /* TID 0x6c80 */
 18866 ms  SECKEY_ECParamsToKeySize()
 18866 ms  0x6c80 ret:0x100
 18866 ms  SECKEY_ECParamsToBasePointOrderLen()
 18866 ms  0x6c80 ret:0x100
 18866 ms  SECKEY_ECParamsToBasePointOrderLen()
 18866 ms  0x6c80 ret:0x100
 18866 ms  0x6c80 EC_ValidatePublicKey()
 18868 ms  0x6c80 ret:0x0
 18869 ms  SECKEY_ECParamsToKeySize()
 18869 ms  0x6c80 ret:0x100
 18869 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18869 ms  0x6c80 cx:0x7f624d5a7da8
 18870 ms     | 0x6c80 EC_ValidatePublicKey()
 18871 ms     | 0x6c80 ret:0x0
 18886 ms  0x6c80 ret:0x7f624b4da020::7f624b4da020  80 53 c0 6d                                      .S.m
 18886 ms  0x6c80 PK11_PubDeriveWithKDF()
 18886 ms  0x6c80 seckey:0x7f624b4da020
 18886 ms     | 0x6c80 EC_ValidatePublicKey()
 18887 ms     | 0x6c80 ret:0x0
 18889 ms  0x6c80 ret:0x7f625fc9ac80
 18889 ms  0x6c80 PK11_DeriveWithFlags()
 18889 ms  0x6c80 basekey:0x7f625fc9ac80
 18889 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18889 ms  0x6c80 ret:0x7f626dd06d80
 18889 ms  0x6c80 PK11_Derive()
 18889 ms  0x6c80 basekey:0x7f626dd06d80
 18889 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18889 ms  0x6c80 ret:0x7f626d268b00
 18889 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18889 ms  0x6c80 privk:0x7f624b4da020::7f624b4da020  80 53 c0 6d                                      .S.m
 18889 ms  0x6c80 privk:0x7f624b4da020::7f624b4da020  e5 e5 e5 e5                                      ....
 18889 ms  0x6c80 PK11_Encrypt()
 18889 ms  0x6c80 symkey:0x7f626d29c600
           /* TID 0x6c88 */
 18896 ms  0x6c88 PR_Close()
 18896 ms  0x6c88 fd:0x7f624b519bb0
 18896 ms  0x6c88 PR_Close()
 18896 ms  0x6c88 fd:0x7f624b519bb0
           /* TID 0x6c80 */
 18898 ms  SECKEY_ECParamsToKeySize()
 18898 ms  0x6c80 ret:0x100
 18898 ms  SECKEY_ECParamsToBasePointOrderLen()
 18898 ms  0x6c80 ret:0x100
 18898 ms  SECKEY_ECParamsToBasePointOrderLen()
 18898 ms  0x6c80 ret:0x100
 18898 ms  0x6c80 EC_ValidatePublicKey()
 18899 ms  0x6c80 ret:0x0
 18901 ms  SECKEY_ECParamsToKeySize()
 18901 ms  0x6c80 ret:0x100
 18901 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18901 ms  0x6c80 cx:0x7f624d5a7c08
 18902 ms     | 0x6c80 EC_ValidatePublicKey()
 18903 ms     | 0x6c80 ret:0x0
 18903 ms  0x6c80 ret:0x7f624b4db020::7f624b4db020  30 dd d7 6d                                      0..m
 18903 ms  0x6c80 PK11_PubDeriveWithKDF()
 18903 ms  0x6c80 seckey:0x7f624b4db020
 18903 ms     | 0x6c80 EC_ValidatePublicKey()
 18905 ms     | 0x6c80 ret:0x0
 18917 ms  0x6c80 ret:0x7f625fc9ac80
 18917 ms  0x6c80 PK11_DeriveWithFlags()
 18917 ms  0x6c80 basekey:0x7f625fc9ac80
 18917 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18917 ms  0x6c80 ret:0x7f626df18c80
 18917 ms  0x6c80 PK11_Derive()
 18917 ms  0x6c80 basekey:0x7f626df18c80
 18917 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18917 ms  0x6c80 ret:0x7f626df0c780
 18917 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18917 ms  0x6c80 privk:0x7f624b4db020::7f624b4db020  30 dd d7 6d                                      0..m
 18917 ms  0x6c80 privk:0x7f624b4db020::7f624b4db020  e5 e5 e5 e5                                      ....
 18917 ms  0x6c80 PK11_Encrypt()
 18917 ms  0x6c80 symkey:0x7f626d28b980
           /* TID 0x6c88 */
 18918 ms  0x6c88 PR_Close()
 18918 ms  0x6c88 fd:0x7f624b40d3d0
           /* TID 0x6c80 */
 18919 ms  SECKEY_ECParamsToKeySize()
 18919 ms  0x6c80 ret:0x100
 18919 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18919 ms  0x6c80 cx:0x7f624d5aa648
 18920 ms     | 0x6c80 EC_ValidatePublicKey()
 18921 ms     | 0x6c80 ret:0x0
 18921 ms  0x6c80 ret:0x7f624b4db820::7f624b4db820  30 dd d7 6d                                      0..m
 18921 ms  0x6c80 PK11_PubDeriveWithKDF()
 18921 ms  0x6c80 seckey:0x7f624b4db820
 18921 ms     | 0x6c80 EC_ValidatePublicKey()
 18923 ms     | 0x6c80 ret:0x0
 18924 ms  0x6c80 ret:0x7f625fc9ac80
 18924 ms  0x6c80 PK11_DeriveWithFlags()
 18924 ms  0x6c80 basekey:0x7f625fc9ac80
 18924 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18924 ms  0x6c80 ret:0x7f6261befe00
 18924 ms  0x6c80 PK11_Derive()
 18924 ms  0x6c80 basekey:0x7f6261befe00
 18924 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18924 ms  0x6c80 ret:0x7f6265e3c900
 18924 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18924 ms  0x6c80 privk:0x7f624b4db820::7f624b4db820  30 dd d7 6d                                      0..m
 18924 ms  0x6c80 privk:0x7f624b4db820::7f624b4db820  e5 e5 e5 e5                                      ....
 18924 ms  0x6c80 PK11_Encrypt()
 18924 ms  0x6c80 symkey:0x7f625fca8600
 18925 ms  SECKEY_ECParamsToKeySize()
 18925 ms  0x6c80 ret:0x100
 18925 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18925 ms  0x6c80 cx:0x7f624d5aa308
 18926 ms     | 0x6c80 EC_ValidatePublicKey()
 18930 ms     | 0x6c80 ret:0x0
 18930 ms  0x6c80 ret:0x7f624b4dc020::7f624b4dc020  d0 dd d7 6d                                      ...m
 18930 ms  0x6c80 PK11_PubDeriveWithKDF()
 18930 ms  0x6c80 seckey:0x7f624b4dc020
 18930 ms     | 0x6c80 EC_ValidatePublicKey()
 18931 ms     | 0x6c80 ret:0x0
 18933 ms  0x6c80 ret:0x7f625fc9ac80
 18933 ms  0x6c80 PK11_DeriveWithFlags()
 18933 ms  0x6c80 basekey:0x7f625fc9ac80
 18933 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18933 ms  0x6c80 ret:0x7f626d268780
 18933 ms  0x6c80 PK11_Derive()
 18933 ms  0x6c80 basekey:0x7f626d268780
 18933 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18933 ms  0x6c80 ret:0x7f6265fea980
 18933 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18933 ms  0x6c80 privk:0x7f624b4dc020::7f624b4dc020  d0 dd d7 6d                                      ...m
 18933 ms  0x6c80 privk:0x7f624b4dc020::7f624b4dc020  e5 e5 e5 e5                                      ....
 18933 ms  0x6c80 PK11_Encrypt()
 18933 ms  0x6c80 symkey:0x7f626df2f080
 18940 ms  0x6c80 SSL_ImportFD()
 18940 ms  0x6c80 ret:0x7f6268d1a100
 18940 ms  0x6c80 SSL_AuthCertificateHook()
 18940 ms  0x6c80 fd:0x7f6268d1a100
 18940 ms  0x6c80 ret:0x0
 18940 ms  0x6c80 PR_Connect()
 18940 ms  0x6c80 fd:0x7f6268d1a100
 18943 ms  0x6c80 SSL_ImportFD()
 18943 ms  0x6c80 ret:0x7f624b5199d0
 18943 ms  0x6c80 SSL_AuthCertificateHook()
 18943 ms  0x6c80 fd:0x7f624b5199d0
 18943 ms  0x6c80 ret:0x0
 18943 ms  0x6c80 PR_Connect()
 18943 ms  0x6c80 fd:0x7f624b5199d0
 18943 ms  0x6c80 SSL_AuthCertificateComplete()
 18943 ms  0x6c80 fd:0x7f6268d1a070
 18943 ms  0x6c80 err:0x0
 18943 ms  0x6c80 PK11_Encrypt()
 18943 ms  0x6c80 symkey:0x7f62613c0a80
 18944 ms  0x6c80 SSL_AuthCertificateComplete()
 18944 ms  0x6c80 fd:0x7f626df57820
 18944 ms  0x6c80 err:0x0
 18944 ms  0x6c80 SSL_AuthCertificateComplete()
 18944 ms  0x6c80 fd:0x7f625fcb7910
 18944 ms  0x6c80 err:0x0
 18944 ms  0x6c80 PK11_Encrypt()
 18944 ms  0x6c80 symkey:0x7f625fcc1b00
 18944 ms  0x6c80 PK11_Encrypt()
 18944 ms  0x6c80 symkey:0x7f6265878400
 18944 ms  0x6c80 SSL_AuthCertificateComplete()
 18944 ms  0x6c80 fd:0x7f624d73f6a0
 18944 ms  0x6c80 err:0x0
 18944 ms  0x6c80 SSL_AuthCertificateComplete()
 18944 ms  0x6c80 fd:0x7f624d73f9d0
 18944 ms  0x6c80 err:0x0
 18944 ms  0x6c80 SSL_AuthCertificateComplete()
 18944 ms  0x6c80 fd:0x7f624d73f5e0
 18944 ms  0x6c80 err:0x0
 18945 ms  0x6c80 PK11_Encrypt()
 18945 ms  0x6c80 symkey:0x7f625fc9ae00
           /* TID 0x6c88 */
 18945 ms  0x6c88 PR_Close()
 18945 ms  0x6c88 fd:0x7f624b40d460
           /* TID 0x6c80 */
 18946 ms  SECKEY_ECParamsToKeySize()
 18946 ms  0x6c80 ret:0x100
 18946 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18946 ms  0x6c80 cx:0x7f624d5aacc8
 18947 ms     | 0x6c80 EC_ValidatePublicKey()
 18948 ms     | 0x6c80 ret:0x0
 18948 ms  0x6c80 ret:0x7f624b4e1020::7f624b4e1020  70 de d7 6d                                      p..m
 18949 ms  0x6c80 PK11_PubDeriveWithKDF()
 18949 ms  0x6c80 seckey:0x7f624b4e1020
 18949 ms     | 0x6c80 EC_ValidatePublicKey()
 18950 ms     | 0x6c80 ret:0x0
 18951 ms  0x6c80 ret:0x7f625fc9ac80
 18951 ms  0x6c80 PK11_DeriveWithFlags()
 18951 ms  0x6c80 basekey:0x7f625fc9ac80
 18951 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18951 ms  0x6c80 ret:0x7f626df19080
 18951 ms  0x6c80 PK11_Derive()
 18951 ms  0x6c80 basekey:0x7f626df19080
 18951 ms     | 0x6c80 PK11_DeriveWithTemplate()
 18952 ms  0x6c80 ret:0x7f626df19280
 18952 ms  0x6c80 SECKEY_DestroyPrivateKey()
 18952 ms  0x6c80 privk:0x7f624b4e1020::7f624b4e1020  70 de d7 6d                                      p..m
 18952 ms  0x6c80 privk:0x7f624b4e1020::7f624b4e1020  e5 e5 e5 e5                                      ....
 18952 ms  0x6c80 PK11_Encrypt()
 18952 ms  0x6c80 symkey:0x7f626df3fc00
           /* TID 0x6c88 */
 18965 ms  0x6c88 PR_Close()
 18965 ms  0x6c88 fd:0x7f624d73fd90
           /* TID 0x6c80 */
 18965 ms  0x6c80 PK11_Encrypt()
 18965 ms  0x6c80 symkey:0x7f626df40280
 18965 ms  0x6c80 PK11_Encrypt()
 18965 ms  0x6c80 symkey:0x7f626d29c600
           /* TID 0x6c88 */
 18966 ms  0x6c88 PR_Close()
 18966 ms  0x6c88 fd:0x7f624d73fd90
 18967 ms  0x6c88 PR_Close()
 18967 ms  0x6c88 fd:0x7f624d73fd90
 18968 ms  0x6c88 PR_Close()
 18968 ms  0x6c88 fd:0x7f624d73fd90
 18969 ms  0x6c88 PR_Close()
 18969 ms  0x6c88 fd:0x7f624d73fd90
           /* TID 0x6c80 */
 18969 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18969 ms  0x6c80 cx:0x7f624d5a92c8
 18970 ms     | 0x6c80 EC_ValidatePublicKey()
 18970 ms     | 0x6c80 ret:0x0
 18970 ms  0x6c80 ret:0x7f624b4e5020::7f624b4e5020  80 dd e5 62                                      ...b
 18970 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18970 ms  0x6c80 cx:0x7f624d5a92c8
 18970 ms     | 0x6c80 EC_ValidatePublicKey()
 18972 ms     | 0x6c80 ret:0x0
 18972 ms  0x6c80 ret:0x7f624b4e7020::7f624b4e7020  10 c5 2a 6d                                      ..*m
 18981 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18981 ms  0x6c80 cx:0x7f624d5a9468
 18982 ms     | 0x6c80 EC_ValidatePublicKey()
 18982 ms     | 0x6c80 ret:0x0
 18982 ms  0x6c80 ret:0x7f624b4f2020::7f624b4f2020  f0 11 d9 6d                                      ...m
 18982 ms  0x6c80 SECKEY_CreateECPrivateKey()
 18982 ms  0x6c80 cx:0x7f624d5a9468
 18982 ms     | 0x6c80 EC_ValidatePublicKey()
 18984 ms     | 0x6c80 ret:0x0
 18984 ms  0x6c80 ret:0x7f624b4f4020::7f624b4f4020  d0 13 d9 6d                                      ...m
 18996 ms  0x6c80 PK11_Encrypt()
 18996 ms  0x6c80 symkey:0x7f626d28b980
 18999 ms  SECKEY_ECParamsToKeySize()
 18999 ms  0x6c80 ret:0x100
 18999 ms  SECKEY_ECParamsToBasePointOrderLen()
 18999 ms  0x6c80 ret:0x100
 18999 ms  SECKEY_ECParamsToBasePointOrderLen()
 18999 ms  0x6c80 ret:0x100
 18999 ms  0x6c80 EC_ValidatePublicKey()
 19001 ms  0x6c80 ret:0x0
 19009 ms  SECKEY_ECParamsToKeySize()
 19009 ms  0x6c80 ret:0x100
 19009 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19009 ms  0x6c80 cx:0x7f624d5a8428
 19010 ms     | 0x6c80 EC_ValidatePublicKey()
 19011 ms     | 0x6c80 ret:0x0
 19011 ms  0x6c80 ret:0x7f624b3c4020::7f624b3c4020  50 1b d9 6d                                      P..m
 19011 ms  0x6c80 PK11_PubDeriveWithKDF()
 19011 ms  0x6c80 seckey:0x7f624b3c4020
 19011 ms     | 0x6c80 EC_ValidatePublicKey()
 19013 ms     | 0x6c80 ret:0x0
 19014 ms  0x6c80 ret:0x7f625fc9ac80
 19014 ms  0x6c80 PK11_DeriveWithFlags()
 19014 ms  0x6c80 basekey:0x7f625fc9ac80
 19014 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19014 ms  0x6c80 ret:0x7f626ea07c80
 19014 ms  0x6c80 PK11_Derive()
 19014 ms  0x6c80 basekey:0x7f626ea07c80
 19014 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19014 ms  0x6c80 ret:0x7f626ea07d00
 19014 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19014 ms  0x6c80 privk:0x7f624b3c4020::7f624b3c4020  50 1b d9 6d                                      P..m
 19014 ms  0x6c80 privk:0x7f624b3c4020::7f624b3c4020  e5 e5 e5 e5                                      ....
 19014 ms  0x6c80 PK11_Encrypt()
 19014 ms  0x6c80 symkey:0x7f626ea07e80
 19032 ms  SECKEY_ECParamsToKeySize()
 19032 ms  0x6c80 ret:0x100
 19032 ms  SECKEY_ECParamsToBasePointOrderLen()
 19032 ms  0x6c80 ret:0x100
 19032 ms  SECKEY_ECParamsToBasePointOrderLen()
 19032 ms  0x6c80 ret:0x100
 19032 ms  0x6c80 EC_ValidatePublicKey()
 19034 ms  0x6c80 ret:0x0
 19039 ms  SECKEY_ECParamsToKeySize()
 19040 ms  0x6c80 ret:0x100
 19040 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19040 ms  0x6c80 cx:0x7f624d5a8288
 19040 ms     | 0x6c80 EC_ValidatePublicKey()
 19042 ms     | 0x6c80 ret:0x0
 19042 ms  0x6c80 ret:0x7f624b588020::7f624b588020  90 72 d9 6d                                      .r.m
 19042 ms  0x6c80 PK11_PubDeriveWithKDF()
 19042 ms  0x6c80 seckey:0x7f624b588020
 19042 ms     | 0x6c80 EC_ValidatePublicKey()
 19046 ms     | 0x6c80 ret:0x0
 19048 ms  0x6c80 ret:0x7f625fc9ac80
 19048 ms  0x6c80 PK11_DeriveWithFlags()
 19048 ms  0x6c80 basekey:0x7f625fc9ac80
 19048 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19048 ms  0x6c80 ret:0x7f624ecfdb00
 19048 ms  0x6c80 PK11_Derive()
 19048 ms  0x6c80 basekey:0x7f624ecfdb00
 19048 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19048 ms  0x6c80 ret:0x7f626ea08200
 19048 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19048 ms  0x6c80 privk:0x7f624b588020::7f624b588020  90 72 d9 6d                                      .r.m
 19048 ms  0x6c80 privk:0x7f624b588020::7f624b588020  e5 e5 e5 e5                                      ....
 19048 ms  0x6c80 PK11_Encrypt()
 19048 ms  0x6c80 symkey:0x7f626ea08980
 19052 ms  SECKEY_ECParamsToKeySize()
 19052 ms  0x6c80 ret:0x100
 19052 ms  SECKEY_ECParamsToBasePointOrderLen()
 19052 ms  0x6c80 ret:0x100
 19052 ms  SECKEY_ECParamsToBasePointOrderLen()
 19052 ms  0x6c80 ret:0x100
 19052 ms  0x6c80 EC_ValidatePublicKey()
 19053 ms  0x6c80 ret:0x0
 19055 ms  SECKEY_ECParamsToKeySize()
 19055 ms  0x6c80 ret:0x100
 19055 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19055 ms  0x6c80 cx:0x7f624d5a80e8
 19056 ms     | 0x6c80 EC_ValidatePublicKey()
 19058 ms     | 0x6c80 ret:0x0
 19058 ms  0x6c80 ret:0x7f624033f020::7f624033f020  50 76 d9 6d                                      Pv.m
 19058 ms  0x6c80 PK11_PubDeriveWithKDF()
 19058 ms  0x6c80 seckey:0x7f624033f020
 19058 ms     | 0x6c80 EC_ValidatePublicKey()
 19059 ms     | 0x6c80 ret:0x0
 19061 ms  0x6c80 ret:0x7f625fc9ac80
 19061 ms  0x6c80 PK11_DeriveWithFlags()
 19061 ms  0x6c80 basekey:0x7f625fc9ac80
 19061 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19061 ms  0x6c80 ret:0x7f626ea08e00
 19061 ms  0x6c80 PK11_Derive()
 19061 ms  0x6c80 basekey:0x7f626ea08e00
 19061 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19061 ms  0x6c80 ret:0x7f626ea08e80
 19061 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19061 ms  0x6c80 privk:0x7f624033f020::7f624033f020  50 76 d9 6d                                      Pv.m
 19061 ms  0x6c80 privk:0x7f624033f020::7f624033f020  e5 e5 e5 e5                                      ....
 19063 ms  0x6c80 PK11_Encrypt()
 19063 ms  0x6c80 symkey:0x7f626eac4180
 19065 ms  SECKEY_ECParamsToKeySize()
 19065 ms  0x6c80 ret:0x100
 19065 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19065 ms  0x6c80 cx:0x7f624d5a9fc8
 19065 ms     | 0x6c80 EC_ValidatePublicKey()
 19067 ms     | 0x6c80 ret:0x0
 19067 ms  0x6c80 ret:0x7f6240340020::7f6240340020  f0 76 d9 6d                                      .v.m
 19067 ms  0x6c80 PK11_PubDeriveWithKDF()
 19067 ms  0x6c80 seckey:0x7f6240340020
 19067 ms     | 0x6c80 EC_ValidatePublicKey()
 19068 ms     | 0x6c80 ret:0x0
 19070 ms  0x6c80 ret:0x7f625fc9ac80
 19070 ms  0x6c80 PK11_DeriveWithFlags()
 19070 ms  0x6c80 basekey:0x7f625fc9ac80
 19070 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19070 ms  0x6c80 ret:0x7f626e2ba700
 19070 ms  0x6c80 PK11_Derive()
 19070 ms  0x6c80 basekey:0x7f626e2ba700
 19070 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19070 ms  0x6c80 ret:0x7f626eac4280
 19070 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19070 ms  0x6c80 privk:0x7f6240340020::7f6240340020  f0 76 d9 6d                                      .v.m
 19070 ms  0x6c80 privk:0x7f6240340020::7f6240340020  e5 e5 e5 e5                                      ....
 19070 ms  0x6c80 PK11_Encrypt()
 19070 ms  0x6c80 symkey:0x7f626eac4980
           /* TID 0x6c88 */
 19072 ms  0x6c88 PR_Close()
 19072 ms  0x6c88 fd:0x7f624b3e6790
           /* TID 0x6c80 */
 19073 ms  SECKEY_ECParamsToKeySize()
 19073 ms  0x6c80 ret:0x100
 19073 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19073 ms  0x6c80 cx:0x7f624d5aa7e8
 19074 ms     | 0x6c80 EC_ValidatePublicKey()
 19075 ms     | 0x6c80 ret:0x0
 19075 ms  0x6c80 ret:0x7f6240341020::7f6240341020  f0 76 d9 6d                                      .v.m
 19075 ms  0x6c80 PK11_PubDeriveWithKDF()
 19075 ms  0x6c80 seckey:0x7f6240341020
 19075 ms     | 0x6c80 EC_ValidatePublicKey()
 19077 ms     | 0x6c80 ret:0x0
 19078 ms  0x6c80 ret:0x7f625fc9ac80
 19078 ms  0x6c80 PK11_DeriveWithFlags()
 19078 ms  0x6c80 basekey:0x7f625fc9ac80
 19078 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19078 ms  0x6c80 ret:0x7f626e2c7a80
 19078 ms  0x6c80 PK11_Derive()
 19078 ms  0x6c80 basekey:0x7f626e2c7a80
 19078 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19078 ms  0x6c80 ret:0x7f626e2c7c80
 19078 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19078 ms  0x6c80 privk:0x7f6240341020::7f6240341020  f0 76 d9 6d                                      .v.m
 19078 ms  0x6c80 privk:0x7f6240341020::7f6240341020  e5 e5 e5 e5                                      ....
 19078 ms  0x6c80 PK11_Encrypt()
 19078 ms  0x6c80 symkey:0x7f626eac4d80
 19082 ms  0x6c80 PK11_Encrypt()
 19082 ms  0x6c80 symkey:0x7f625fca8600
 19083 ms  0x6c80 PK11_Encrypt()
 19083 ms  0x6c80 symkey:0x7f626df2f080
 19084 ms  SECKEY_ECParamsToKeySize()
 19084 ms  0x6c80 ret:0x100
 19084 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19084 ms  0x6c80 cx:0x7f626cba25c8
 19084 ms     | 0x6c80 EC_ValidatePublicKey()
 19086 ms     | 0x6c80 ret:0x0
 19086 ms  0x6c80 ret:0x7f6240342020::7f6240342020  90 77 d9 6d                                      .w.m
 19086 ms  0x6c80 PK11_PubDeriveWithKDF()
 19086 ms  0x6c80 seckey:0x7f6240342020
 19086 ms     | 0x6c80 EC_ValidatePublicKey()
 19087 ms     | 0x6c80 ret:0x0
 19089 ms  0x6c80 ret:0x7f625fc9ac80
 19089 ms  0x6c80 PK11_DeriveWithFlags()
 19089 ms  0x6c80 basekey:0x7f625fc9ac80
 19089 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19089 ms  0x6c80 ret:0x7f626eac4380
 19089 ms  0x6c80 PK11_Derive()
 19089 ms  0x6c80 basekey:0x7f626eac4380
 19089 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19089 ms  0x6c80 ret:0x7f626eac4e80
 19089 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19089 ms  0x6c80 privk:0x7f6240342020::7f6240342020  90 77 d9 6d                                      .w.m
 19089 ms  0x6c80 privk:0x7f6240342020::7f6240342020  e5 e5 e5 e5                                      ....
 19089 ms  0x6c80 PK11_Encrypt()
 19089 ms  0x6c80 symkey:0x7f626eac5080
 19090 ms  SECKEY_ECParamsToKeySize()
 19090 ms  0x6c80 ret:0x100
 19090 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19090 ms  0x6c80 cx:0x7f624d738648
 19091 ms     | 0x6c80 EC_ValidatePublicKey()
 19092 ms     | 0x6c80 ret:0x0
 19092 ms  0x6c80 ret:0x7f6240343020::7f6240343020  30 78 d9 6d                                      0x.m
 19092 ms  0x6c80 PK11_PubDeriveWithKDF()
 19092 ms  0x6c80 seckey:0x7f6240343020
 19092 ms     | 0x6c80 EC_ValidatePublicKey()
 19094 ms     | 0x6c80 ret:0x0
 19095 ms  0x6c80 ret:0x7f625fc9ac80
 19095 ms  0x6c80 PK11_DeriveWithFlags()
 19095 ms  0x6c80 basekey:0x7f625fc9ac80
 19095 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19095 ms  0x6c80 ret:0x7f626eac5180
 19095 ms  0x6c80 PK11_Derive()
 19095 ms  0x6c80 basekey:0x7f626eac5180
 19095 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19095 ms  0x6c80 ret:0x7f626eac5300
 19095 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19095 ms  0x6c80 privk:0x7f6240343020::7f6240343020  30 78 d9 6d                                      0x.m
 19095 ms  0x6c80 privk:0x7f6240343020::7f6240343020  e5 e5 e5 e5                                      ....
 19100 ms  0x6c80 PK11_Encrypt()
 19100 ms  0x6c80 symkey:0x7f626eac5580
 19102 ms  SECKEY_ECParamsToKeySize()
 19102 ms  0x6c80 ret:0x100
 19102 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19102 ms  0x6c80 cx:0x7f624d7384a8
 19102 ms     | 0x6c80 EC_ValidatePublicKey()
 19104 ms     | 0x6c80 ret:0x0
 19104 ms  0x6c80 ret:0x7f6240344020::7f6240344020  d0 78 d9 6d                                      .x.m
 19104 ms  0x6c80 PK11_PubDeriveWithKDF()
 19104 ms  0x6c80 seckey:0x7f6240344020
 19104 ms     | 0x6c80 EC_ValidatePublicKey()
 19105 ms     | 0x6c80 ret:0x0
 19110 ms  0x6c80 ret:0x7f625fc9ac80
 19110 ms  0x6c80 PK11_DeriveWithFlags()
 19110 ms  0x6c80 basekey:0x7f625fc9ac80
 19110 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19110 ms  0x6c80 ret:0x7f626eac4f00
 19110 ms  0x6c80 PK11_Derive()
 19110 ms  0x6c80 basekey:0x7f626eac4f00
 19110 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19110 ms  0x6c80 ret:0x7f626eac5700
 19110 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19110 ms  0x6c80 privk:0x7f6240344020::7f6240344020  d0 78 d9 6d                                      .x.m
 19110 ms  0x6c80 privk:0x7f6240344020::7f6240344020  e5 e5 e5 e5                                      ....
 19110 ms  0x6c80 PK11_Encrypt()
 19110 ms  0x6c80 symkey:0x7f626eac5d80
 19113 ms  SECKEY_ECParamsToKeySize()
 19113 ms  0x6c80 ret:0x100
 19113 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19113 ms  0x6c80 cx:0x7f624d5aae68
 19113 ms     | 0x6c80 EC_ValidatePublicKey()
 19115 ms     | 0x6c80 ret:0x0
 19115 ms  0x6c80 ret:0x7f6240345020::7f6240345020  10 7a d9 6d                                      .z.m
 19115 ms  0x6c80 PK11_PubDeriveWithKDF()
 19115 ms  0x6c80 seckey:0x7f6240345020
 19115 ms     | 0x6c80 EC_ValidatePublicKey()
 19119 ms     | 0x6c80 ret:0x0
 19120 ms  0x6c80 ret:0x7f625fc9ac80
 19120 ms  0x6c80 PK11_DeriveWithFlags()
 19120 ms  0x6c80 basekey:0x7f625fc9ac80
 19120 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19120 ms  0x6c80 ret:0x7f626eac5880
 19120 ms  0x6c80 PK11_Derive()
 19120 ms  0x6c80 basekey:0x7f626eac5880
 19120 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19120 ms  0x6c80 ret:0x7f626ead0180
 19120 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19120 ms  0x6c80 privk:0x7f6240345020::7f6240345020  10 7a d9 6d                                      .z.m
 19120 ms  0x6c80 privk:0x7f6240345020::7f6240345020  e5 e5 e5 e5                                      ....
 19120 ms  0x6c80 PK11_Encrypt()
 19120 ms  0x6c80 symkey:0x7f626ead0400
 19121 ms  0x6c80 SSL_ImportFD()
 19121 ms  0x6c80 ret:0x7f624b3e6a00
 19121 ms  0x6c80 SSL_AuthCertificateHook()
 19121 ms  0x6c80 fd:0x7f624b3e6a00
 19121 ms  0x6c80 ret:0x0
 19121 ms  0x6c80 PR_Connect()
 19121 ms  0x6c80 fd:0x7f624b3e6a00
 19121 ms  0x6c80 PK11_Encrypt()
 19121 ms  0x6c80 symkey:0x7f62611c3880
 19122 ms  0x6c80 SSL_AuthCertificateComplete()
 19122 ms  0x6c80 fd:0x7f624d73f8e0
 19122 ms  0x6c80 err:0x0
 19122 ms  0x6c80 PK11_Encrypt()
 19122 ms  0x6c80 symkey:0x7f62663e0780
 19122 ms  0x6c80 PK11_Encrypt()
 19122 ms  0x6c80 symkey:0x7f62661a7480
 19123 ms  0x6c80 PK11_Encrypt()
 19123 ms  0x6c80 symkey:0x7f625fcffd00
 19123 ms  0x6c80 PK11_Encrypt()
 19123 ms  0x6c80 symkey:0x7f625fea7300
 19124 ms  0x6c80 SSL_AuthCertificateComplete()
 19124 ms  0x6c80 fd:0x7f624b519e80
 19124 ms  0x6c80 err:0x0
 19124 ms  0x6c80 SSL_AuthCertificateComplete()
 19124 ms  0x6c80 fd:0x7f624d73fbb0
 19124 ms  0x6c80 err:0x0
 19124 ms  0x6c80 SSL_AuthCertificateComplete()
 19124 ms  0x6c80 fd:0x7f624d73f850
 19124 ms  0x6c80 err:0x0
 19124 ms  0x6c80 SSL_AuthCertificateComplete()
 19124 ms  0x6c80 fd:0x7f6268d1a7f0
 19124 ms  0x6c80 err:0x0
 19124 ms  0x6c80 SSL_AuthCertificateComplete()
 19124 ms  0x6c80 fd:0x7f6268d1a640
 19124 ms  0x6c80 err:0x0
 19124 ms  0x6c80 SSL_AuthCertificateComplete()
 19124 ms  0x6c80 fd:0x7f624d944c40
 19124 ms  0x6c80 err:0x0
           /* TID 0x6c88 */
 19125 ms  0x6c88 PR_Close()
 19125 ms  0x6c88 fd:0x7f624b3e66a0
 19128 ms  0x6c88 PR_Close()
 19128 ms  0x6c88 fd:0x7f624b3e66a0
           /* TID 0x6c80 */
 19129 ms  0x6c80 SSL_ImportFD()
 19129 ms  0x6c80 ret:0x7f624b3e6190
 19129 ms  0x6c80 SSL_AuthCertificateHook()
 19129 ms  0x6c80 fd:0x7f624b3e6190
 19129 ms  0x6c80 ret:0x0
 19129 ms  0x6c80 PR_Connect()
 19129 ms  0x6c80 fd:0x7f624b3e6190
 19129 ms  0x6c80 SSL_ImportFD()
 19129 ms  0x6c80 ret:0x7f624b3e6130
 19129 ms  0x6c80 SSL_AuthCertificateHook()
 19129 ms  0x6c80 fd:0x7f624b3e6130
 19129 ms  0x6c80 ret:0x0
 19129 ms  0x6c80 PR_Connect()
 19129 ms  0x6c80 fd:0x7f624b3e6130
 19130 ms  0x6c80 SSL_ImportFD()
 19130 ms  0x6c80 ret:0x7f624b3e6550
 19130 ms  0x6c80 SSL_AuthCertificateHook()
 19130 ms  0x6c80 fd:0x7f624b3e6550
 19130 ms  0x6c80 ret:0x0
 19130 ms  0x6c80 PR_Connect()
 19130 ms  0x6c80 fd:0x7f624b3e6550
 19130 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19130 ms  0x6c80 privk:0x7f624b43f820::7f624b43f820  00 21 c8 6d                                      .!.m
 19130 ms  0x6c80 privk:0x7f624b43f820::7f624b43f820  e5 e5 e5 e5                                      ....
 19130 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19130 ms  0x6c80 privk:0x7f624b43d820::7f624b43d820  90 e7 29 6d                                      ..)m
 19130 ms  0x6c80 privk:0x7f624b43d820::7f624b43d820  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 19132 ms  0x6c88 PR_Close()
 19132 ms  0x6c88 fd:0x7f624b3e6580
           /* TID 0x6c80 */
 19132 ms  0x6c80 PK11_Encrypt()
 19132 ms  0x6c80 symkey:0x7f626df3fc00
           /* TID 0x6c88 */
 19137 ms  0x6c88 PR_Close()
 19137 ms  0x6c88 fd:0x7f624b3e6580
 19139 ms  0x6c88 PR_Close()
 19139 ms  0x6c88 fd:0x7f624b3e6580
 19139 ms  0x6c88 PR_Close()
 19139 ms  0x6c88 fd:0x7f624b3e6580
 19140 ms  0x6c88 PR_Close()
 19140 ms  0x6c88 fd:0x7f624b3e6580
 19141 ms  0x6c88 PR_Close()
 19141 ms  0x6c88 fd:0x7f624b3e6580
           /* TID 0x6c80 */
 19141 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19141 ms  0x6c80 cx:0x7f624d5a8c48
 19142 ms     | 0x6c80 EC_ValidatePublicKey()
 19142 ms     | 0x6c80 ret:0x0
 19142 ms  0x6c80 ret:0x7f6240346820::7f6240346820  80 2d 86 64                                      .-.d
 19142 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19142 ms  0x6c80 cx:0x7f624d5a8c48
 19143 ms     | 0x6c80 EC_ValidatePublicKey()
 19144 ms     | 0x6c80 ret:0x0
 19144 ms  0x6c80 ret:0x7f6240348820::7f6240348820  80 9d df 68                                      ...h
 19151 ms  SECKEY_ECParamsToKeySize()
 19151 ms  0x6c80 ret:0x100
 19151 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19151 ms  0x6c80 cx:0x7f624d5a85c8
 19152 ms     | 0x6c80 EC_ValidatePublicKey()
 19153 ms     | 0x6c80 ret:0x0
 19153 ms  0x6c80 ret:0x7f6240351820::7f6240351820  30 78 d9 6d                                      0x.m
 19153 ms  0x6c80 PK11_PubDeriveWithKDF()
 19153 ms  0x6c80 seckey:0x7f6240351820
 19153 ms     | 0x6c80 EC_ValidatePublicKey()
 19155 ms     | 0x6c80 ret:0x0
 19169 ms  0x6c80 ret:0x7f625fc9ac80
 19169 ms  0x6c80 PK11_DeriveWithFlags()
 19169 ms  0x6c80 basekey:0x7f625fc9ac80
 19169 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19169 ms  0x6c80 ret:0x7f6269a25680
 19169 ms  0x6c80 PK11_Derive()
 19169 ms  0x6c80 basekey:0x7f6269a25680
 19169 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19169 ms  0x6c80 ret:0x7f626ead0b00
 19169 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19169 ms  0x6c80 privk:0x7f6240351820::7f6240351820  30 78 d9 6d                                      0x.m
 19169 ms  0x6c80 privk:0x7f6240351820::7f6240351820  e5 e5 e5 e5                                      ....
 19169 ms  0x6c80 PK11_Encrypt()
 19169 ms  0x6c80 symkey:0x7f626ead0f00
 19170 ms  SECKEY_ECParamsToKeySize()
 19170 ms  0x6c80 ret:0x100
 19170 ms  SECKEY_ECParamsToBasePointOrderLen()
 19170 ms  0x6c80 ret:0x100
 19170 ms  SECKEY_ECParamsToBasePointOrderLen()
 19170 ms  0x6c80 ret:0x100
 19170 ms  0x6c80 EC_ValidatePublicKey()
 19172 ms  0x6c80 ret:0x0
 19175 ms  SECKEY_ECParamsToKeySize()
 19175 ms  0x6c80 ret:0x100
 19175 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19175 ms  0x6c80 cx:0x7f624d5a8aa8
 19175 ms     | 0x6c80 EC_ValidatePublicKey()
 19177 ms     | 0x6c80 ret:0x0
 19177 ms  0x6c80 ret:0x7f6240357020::7f6240357020  50 7b d9 6d                                      P{.m
 19177 ms  0x6c80 PK11_PubDeriveWithKDF()
 19177 ms  0x6c80 seckey:0x7f6240357020
 19177 ms     | 0x6c80 EC_ValidatePublicKey()
 19178 ms     | 0x6c80 ret:0x0
 19180 ms  0x6c80 ret:0x7f625fc9ac80
 19180 ms  0x6c80 PK11_DeriveWithFlags()
 19180 ms  0x6c80 basekey:0x7f625fc9ac80
 19180 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19180 ms  0x6c80 ret:0x7f626ead1080
 19180 ms  0x6c80 PK11_Derive()
 19180 ms  0x6c80 basekey:0x7f626ead1080
 19180 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19180 ms  0x6c80 ret:0x7f626ead1100
 19180 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19180 ms  0x6c80 privk:0x7f6240357020::7f6240357020  50 7b d9 6d                                      P{.m
 19180 ms  0x6c80 privk:0x7f6240357020::7f6240357020  e5 e5 e5 e5                                      ....
 19180 ms  0x6c80 PK11_Encrypt()
 19180 ms  0x6c80 symkey:0x7f626ead1a80
 19181 ms  SECKEY_ECParamsToKeySize()
 19181 ms  0x6c80 ret:0x100
 19181 ms  SECKEY_ECParamsToBasePointOrderLen()
 19181 ms  0x6c80 ret:0x100
 19181 ms  SECKEY_ECParamsToBasePointOrderLen()
 19181 ms  0x6c80 ret:0x100
 19181 ms  0x6c80 EC_ValidatePublicKey()
 19183 ms  0x6c80 ret:0x0
 19188 ms  SECKEY_ECParamsToKeySize()
 19188 ms  0x6c80 ret:0x100
 19188 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19188 ms  0x6c80 cx:0x7f624d5a8768
 19188 ms     | 0x6c80 EC_ValidatePublicKey()
 19190 ms     | 0x6c80 ret:0x0
 19190 ms  0x6c80 ret:0x7f6240358020::7f6240358020  f0 7b d9 6d                                      .{.m
 19190 ms  0x6c80 PK11_PubDeriveWithKDF()
 19190 ms  0x6c80 seckey:0x7f6240358020
 19190 ms     | 0x6c80 EC_ValidatePublicKey()
 19191 ms     | 0x6c80 ret:0x0
 19193 ms  0x6c80 ret:0x7f625fc9ac80
 19193 ms  0x6c80 PK11_DeriveWithFlags()
 19193 ms  0x6c80 basekey:0x7f625fc9ac80
 19193 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19193 ms  0x6c80 ret:0x7f6262eb4f00
 19193 ms  0x6c80 PK11_Derive()
 19193 ms  0x6c80 basekey:0x7f6262eb4f00
 19193 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19193 ms  0x6c80 ret:0x7f626ead1f80
 19193 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19193 ms  0x6c80 privk:0x7f6240358020::7f6240358020  f0 7b d9 6d                                      .{.m
 19193 ms  0x6c80 privk:0x7f6240358020::7f6240358020  e5 e5 e5 e5                                      ....
 19193 ms  0x6c80 PK11_Encrypt()
 19193 ms  0x6c80 symkey:0x7f626ee48800
 19193 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19193 ms  0x6c80 cx:0x7f624d5a9608
 19194 ms     | 0x6c80 EC_ValidatePublicKey()
 19194 ms     | 0x6c80 ret:0x0
 19194 ms  0x6c80 ret:0x7f6240358020::7f6240358020  a0 7b d9 6d                                      .{.m
 19194 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19194 ms  0x6c80 cx:0x7f624d5a9608
 19195 ms     | 0x6c80 EC_ValidatePublicKey()
 19196 ms     | 0x6c80 ret:0x0
 19196 ms  0x6c80 ret:0x7f624035a020::7f624035a020  80 7d d9 6d                                      .}.m
 19197 ms  0x6c80 PK11_Encrypt()
 19197 ms  0x6c80 symkey:0x7f626eac4980
           /* TID 0x6c88 */
 19199 ms  0x6c88 PR_Close()
 19199 ms  0x6c88 fd:0x7f624b3abeb0
           /* TID 0x6c80 */
 19200 ms  0x6c80 PK11_Encrypt()
 19200 ms  0x6c80 symkey:0x7f626eac4d80
 19204 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19204 ms  0x6c80 privk:0x7f624b42f020::7f624b42f020  20 59 c0 6d                                       Y.m
 19204 ms  0x6c80 privk:0x7f624b42f020::7f624b42f020  e5 e5 e5 e5                                      ....
 19204 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19204 ms  0x6c80 privk:0x7f624b42c020::7f624b42c020  60 55 c0 6d                                      `U.m
 19204 ms  0x6c80 privk:0x7f624b42c020::7f624b42c020  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 19206 ms  0x6c88 PR_Close()
 19206 ms  0x6c88 fd:0x7f624b3e65e0
           /* TID 0x6c80 */
 19206 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19206 ms  0x6c80 privk:0x7f624b435020::7f624b435020  c0 5e c0 6d                                      .^.m
 19206 ms  0x6c80 privk:0x7f624b435020::7f624b435020  e5 e5 e5 e5                                      ....
 19206 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19206 ms  0x6c80 privk:0x7f624b433020::7f624b433020  40 5c c0 6d                                      @\.m
 19206 ms  0x6c80 privk:0x7f624b433020::7f624b433020  e5 e5 e5 e5                                      ....
 19208 ms  0x6c80 PK11_Encrypt()
 19208 ms  0x6c80 symkey:0x7f626eac5080
 19208 ms  0x6c80 PK11_Encrypt()
 19208 ms  0x6c80 symkey:0x7f626eac5580
 19209 ms  0x6c80 PK11_Encrypt()
 19209 ms  0x6c80 symkey:0x7f626eac5d80
 19209 ms  0x6c80 PK11_Encrypt()
 19209 ms  0x6c80 symkey:0x7f626ead0400
 19209 ms  0x6c80 PK11_Encrypt()
 19209 ms  0x6c80 symkey:0x7f6265cdf700
 19210 ms  0x6c80 PK11_Encrypt()
 19210 ms  0x6c80 symkey:0x7f625fc9b080
 19210 ms  0x6c80 PK11_Encrypt()
 19210 ms  0x6c80 symkey:0x7f6262ecbf80
 19210 ms  0x6c80 SSL_AuthCertificateComplete()
 19210 ms  0x6c80 fd:0x7f626df57520
 19210 ms  0x6c80 err:0x0
 19210 ms  0x6c80 SSL_AuthCertificateComplete()
 19210 ms  0x6c80 fd:0x7f6268dfae50
 19210 ms  0x6c80 err:0x0
 19210 ms  0x6c80 PK11_Encrypt()
 19210 ms  0x6c80 symkey:0x7f625fca8600
 19211 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19211 ms  0x6c80 privk:0x7f624b46b820::7f624b46b820  60 da d7 6d                                      `..m
 19211 ms  0x6c80 privk:0x7f624b46b820::7f624b46b820  e5 e5 e5 e5                                      ....
 19211 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19211 ms  0x6c80 privk:0x7f624b469820::7f624b469820  e0 d7 d7 6d                                      ...m
 19211 ms  0x6c80 privk:0x7f624b469820::7f624b469820  e5 e5 e5 e5                                      ....
 19211 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19211 ms  0x6c80 privk:0x7f624d7d1820::7f624d7d1820  80 ad 17 66                                      ...f
 19211 ms  0x6c80 privk:0x7f624d7d1820::7f624d7d1820  e5 e5 e5 e5                                      ....
 19211 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19211 ms  0x6c80 privk:0x7f624d7ce020::7f624d7ce020  a0 e6 e4 62                                      ...b
 19212 ms  0x6c80 privk:0x7f624d7ce020::7f624d7ce020  e5 e5 e5 e5                                      ....
 19212 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19212 ms  0x6c80 privk:0x7f6265062820::7f6265062820  d0 2d ec 69                                      .-.i
 19212 ms  0x6c80 privk:0x7f6265062820::7f6265062820  e5 e5 e5 e5                                      ....
 19212 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19212 ms  0x6c80 privk:0x7f626501e820::7f626501e820  c0 d4 cf 68                                      ...h
 19212 ms  0x6c80 privk:0x7f626501e820::7f626501e820  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 19212 ms  0x6c88 PR_Close()
 19212 ms  0x6c88 fd:0x7f624d5838e0
           /* TID 0x6d24 */
 19213 ms  0x6d24 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19213 ms  0x6d24 ret:0x0
 19213 ms  0x6d24 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19213 ms  0x6d24 ret:0x0
           /* TID 0x6d25 */
 19214 ms  0x6d25 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19214 ms  0x6d25 ret:0x0
 19214 ms  0x6d25 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19214 ms  0x6d25 ret:0x0
           /* TID 0x6c88 */
 19214 ms  0x6c88 PR_Close()
 19214 ms  0x6c88 fd:0x7f624b3abe50
           /* TID 0x6d19 */
 19215 ms  0x6d19 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19215 ms  0x6d19 ret:0x0
 19215 ms  0x6d19 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19215 ms  0x6d19 ret:0x0
           /* TID 0x6c88 */
 19216 ms  0x6c88 PR_Close()
 19216 ms  0x6c88 fd:0x7f624b3abe50
           /* TID 0x6c80 */
 19216 ms  0x6c80 PK11_Encrypt()
 19216 ms  0x6c80 symkey:0x7f626ead1a80
 19219 ms  0x6c80 PK11_Encrypt()
 19219 ms  0x6c80 symkey:0x7f626ee48800
 19223 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19223 ms  0x6c80 privk:0x7f624b6db020::7f624b6db020  10 25 c8 6d                                      .%.m
 19224 ms  0x6c80 privk:0x7f624b6db020::7f624b6db020  e5 e5 e5 e5                                      ....
 19224 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19224 ms  0x6c80 privk:0x7f624b444020::7f624b444020  30 23 c8 6d                                      0#.m
 19224 ms  0x6c80 privk:0x7f624b444020::7f624b444020  e5 e5 e5 e5                                      ....
 19224 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19224 ms  0x6c80 privk:0x7f624d708020::7f624d708020  20 29 c8 6d                                       ).m
 19224 ms  0x6c80 privk:0x7f624d708020::7f624d708020  e5 e5 e5 e5                                      ....
 19224 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19224 ms  0x6c80 privk:0x7f624d5de820::7f624d5de820  a0 26 c8 6d                                      .&.m
 19224 ms  0x6c80 privk:0x7f624d5de820::7f624d5de820  e5 e5 e5 e5                                      ....
 19224 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19224 ms  0x6c80 privk:0x7f624b459820::7f624b459820  90 2c c8 6d                                      .,.m
 19224 ms  0x6c80 privk:0x7f624b459820::7f624b459820  e5 e5 e5 e5                                      ....
 19224 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19224 ms  0x6c80 privk:0x7f624b457820::7f624b457820  b0 2a c8 6d                                      .*.m
 19224 ms  0x6c80 privk:0x7f624b457820::7f624b457820  e5 e5 e5 e5                                      ....
 19225 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19225 ms  0x6c80 privk:0x7f624b45e020::7f624b45e020  60 d0 d7 6d                                      `..m
 19225 ms  0x6c80 privk:0x7f624b45e020::7f624b45e020  e5 e5 e5 e5                                      ....
 19225 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19225 ms  0x6c80 privk:0x7f624b45c020::7f624b45c020  20 2e c8 6d                                       ..m
 19225 ms  0x6c80 privk:0x7f624b45c020::7f624b45c020  e5 e5 e5 e5                                      ....
 19225 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19225 ms  0x6c80 privk:0x7f624b462820::7f624b462820  80 d3 d7 6d                                      ...m
 19225 ms  0x6c80 privk:0x7f624b462820::7f624b462820  e5 e5 e5 e5                                      ....
 19225 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19225 ms  0x6c80 privk:0x7f624b460820::7f624b460820  a0 d1 d7 6d                                      ...m
 19225 ms  0x6c80 privk:0x7f624b460820::7f624b460820  e5 e5 e5 e5                                      ....
 19225 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19225 ms  0x6c80 privk:0x7f624b467020::7f624b467020  a0 d6 d7 6d                                      ...m
 19225 ms  0x6c80 privk:0x7f624b467020::7f624b467020  e5 e5 e5 e5                                      ....
 19226 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19226 ms  0x6c80 privk:0x7f624b465020::7f624b465020  70 d4 d7 6d                                      p..m
 19226 ms  0x6c80 privk:0x7f624b465020::7f624b465020  e5 e5 e5 e5                                      ....
 19226 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19226 ms  0x6c80 cx:0x7f626df5e988
 19226 ms     | 0x6c80 EC_ValidatePublicKey()
 19226 ms     | 0x6c80 ret:0x0
 19226 ms  0x6c80 ret:0x7f624b42a020::7f624b42a020  e0 92 11 66                                      ...f
 19227 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19227 ms  0x6c80 cx:0x7f626df5e988
 19227 ms     | 0x6c80 EC_ValidatePublicKey()
 19228 ms     | 0x6c80 ret:0x0
 19228 ms  0x6c80 ret:0x7f624b42c020::7f624b42c020  c0 d4 cf 68                                      ...h
 19229 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19229 ms  0x6c80 cx:0x7f626d2b7988
 19229 ms     | 0x6c80 EC_ValidatePublicKey()
 19229 ms     | 0x6c80 ret:0x0
 19229 ms  0x6c80 ret:0x7f624b42f820::7f624b42f820  b0 b5 a5 69                                      ...i
 19229 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19229 ms  0x6c80 cx:0x7f626d2b7988
 19230 ms     | 0x6c80 EC_ValidatePublicKey()
 19231 ms     | 0x6c80 ret:0x0
 19232 ms  0x6c80 ret:0x7f624b433020::7f624b433020  90 52 c0 6d                                      .R.m
 19232 ms  0x6c80 PR_Close()
 19232 ms  0x6c80 fd:0x7f625fcb7910
 19232 ms     | 0x6c80 PK11_Encrypt()
 19232 ms     | 0x6c80 symkey:0x7f626d29c600
 19232 ms  0x6c80 PR_Close()
 19232 ms  0x6c80 fd:0x7f626df57820
 19232 ms     | 0x6c80 PK11_Encrypt()
 19232 ms     | 0x6c80 symkey:0x7f626df40280
 19233 ms  0x6c80 SSL_ImportFD()
 19233 ms  0x6c80 ret:0x7f624b40d400
 19233 ms  0x6c80 SSL_AuthCertificateHook()
 19233 ms  0x6c80 fd:0x7f624b40d400
 19233 ms  0x6c80 ret:0x0
 19233 ms  0x6c80 PR_Connect()
 19233 ms  0x6c80 fd:0x7f624b40d400
 19233 ms  0x6c80 SSL_ImportFD()
 19233 ms  0x6c80 ret:0x7f624b40dd90
 19233 ms  0x6c80 SSL_AuthCertificateHook()
 19233 ms  0x6c80 fd:0x7f624b40dd90
 19233 ms  0x6c80 ret:0x0
 19233 ms  0x6c80 PR_Connect()
 19233 ms  0x6c80 fd:0x7f624b40dd90
 19234 ms  0x6c80 SSL_AuthCertificateComplete()
 19234 ms  0x6c80 fd:0x7f624d73fb50
 19234 ms  0x6c80 err:0x0
 19234 ms  0x6c80 SSL_AuthCertificateComplete()
 19234 ms  0x6c80 fd:0x7f624d73fc40
 19234 ms  0x6c80 err:0x0
 19234 ms  0x6c80 SSL_AuthCertificateComplete()
 19234 ms  0x6c80 fd:0x7f624d583430
 19234 ms  0x6c80 err:0x0
           /* TID 0x6c88 */
 19236 ms  0x6c88 PR_Close()
 19236 ms  0x6c88 fd:0x7f624b3e65e0
           /* TID 0x6c80 */
 19236 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19236 ms  0x6c80 privk:0x7f6265008020::7f6265008020  a0 e6 c5 68                                      ...h
 19236 ms  0x6c80 privk:0x7f6265008020::7f6265008020  e5 e5 e5 e5                                      ....
 19237 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19237 ms  0x6c80 privk:0x7f624d951820::7f624d951820  e0 72 1b 66                                      .r.f
 19237 ms  0x6c80 privk:0x7f624d951820::7f624d951820  e5 e5 e5 e5                                      ....
 19237 ms  0x6c80 PK11_Encrypt()
 19237 ms  0x6c80 symkey:0x7f626ea07e80
 19237 ms  0x6c80 PK11_Encrypt()
 19237 ms  0x6c80 symkey:0x7f626ea07e80
 19237 ms  0x6c80 PK11_Encrypt()
 19237 ms  0x6c80 symkey:0x7f626ea08980
 19238 ms  0x6c80 PK11_Encrypt()
 19238 ms  0x6c80 symkey:0x7f626eac4180
 19238 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19238 ms  0x6c80 cx:0x7f624b382288
 19238 ms     | 0x6c80 EC_ValidatePublicKey()
 19239 ms     | 0x6c80 ret:0x0
 19239 ms  0x6c80 ret:0x7f624b43d020::7f624b43d020  f0 71 1b 66                                      .q.f
 19239 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19239 ms  0x6c80 cx:0x7f624b382288
 19239 ms     | 0x6c80 EC_ValidatePublicKey()
 19241 ms     | 0x6c80 ret:0x0
 19241 ms  0x6c80 ret:0x7f624b43f020::7f624b43f020  d0 38 c5 68                                      .8.h
 19241 ms  0x6c80 PR_Close()
 19241 ms  0x6c80 fd:0x7f624d73f6a0
 19241 ms     | 0x6c80 PK11_Encrypt()
 19241 ms     | 0x6c80 symkey:0x7f626d28b980
 19241 ms  0x6c80 PK11_Encrypt()
 19241 ms  0x6c80 symkey:0x7f626ea07e80
 19242 ms  0x6c80 PK11_Encrypt()
 19242 ms  0x6c80 symkey:0x7f626ea07e80
           /* TID 0x6c88 */
 19243 ms  0x6c88 PR_Close()
 19243 ms  0x6c88 fd:0x7f624b3e65e0
           /* TID 0x6c80 */
 19244 ms  0x6c80 PR_Connect()
 19244 ms  0x6c80 fd:0x7f624b3e6730
           /* TID 0x6c88 */
 19257 ms  0x6c88 PR_Close()
 19257 ms  0x6c88 fd:0x7f624b3e65e0
           /* TID 0x6c80 */
 19258 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19258 ms  0x6c80 cx:0x7f624b382428
 19259 ms     | 0x6c80 EC_ValidatePublicKey()
 19259 ms     | 0x6c80 ret:0x0
 19259 ms  0x6c80 ret:0x7f624b456020::7f624b456020  00 16 1b 66                                      ...f
 19259 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19259 ms  0x6c80 cx:0x7f624b382428
 19260 ms     | 0x6c80 EC_ValidatePublicKey()
 19261 ms     | 0x6c80 ret:0x0
 19262 ms  0x6c80 ret:0x7f624b458020::7f624b458020  e0 9c cf 6c                                      ...l
           /* TID 0x6d17 */
 19263 ms  0x6d17 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19263 ms  0x6d17 ret:0x0
 19263 ms  0x6d17 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19263 ms  0x6d17 ret:0x0
           /* TID 0x6c88 */
 19263 ms  0x6c88 PR_Close()
 19263 ms  0x6c88 fd:0x7f624b40d6a0
 19267 ms  0x6c88 PR_Close()
 19267 ms  0x6c88 fd:0x7f624b40d6a0
 19268 ms  0x6c88 PR_Close()
 19268 ms  0x6c88 fd:0x7f624b3e6760
 19270 ms  0x6c88 PR_Close()
 19270 ms  0x6c88 fd:0x7f624b3e6760
           /* TID 0x6c80 */
 19271 ms  0x6c80 SSL_AuthCertificateComplete()
 19271 ms  0x6c80 fd:0x7f624d73ffd0
 19271 ms  0x6c80 err:0x0
 19271 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19271 ms  0x6c80 cx:0x7f624b3825c8
 19272 ms     | 0x6c80 EC_ValidatePublicKey()
 19272 ms     | 0x6c80 ret:0x0
 19272 ms  0x6c80 ret:0x7f624b45a020::7f624b45a020  d0 d3 90 6a                                      ...j
 19272 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19272 ms  0x6c80 cx:0x7f624b3825c8
 19272 ms     | 0x6c80 EC_ValidatePublicKey()
 19274 ms     | 0x6c80 ret:0x0
 19274 ms  0x6c80 ret:0x7f624b45c020::7f624b45c020  80 e3 29 6d                                      ..)m
 19278 ms  0x6c80 PK11_Encrypt()
 19278 ms  0x6c80 symkey:0x7f626ead0f00
 19278 ms  0x6c80 PK11_Encrypt()
 19278 ms  0x6c80 symkey:0x7f626ead0f00
           /* TID 0x6c88 */
 19280 ms  0x6c88 PR_Close()
 19280 ms  0x6c88 fd:0x7f624d583910
           /* TID 0x6c80 */
 19281 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19281 ms  0x6c80 cx:0x7f624b382768
 19281 ms     | 0x6c80 EC_ValidatePublicKey()
 19281 ms     | 0x6c80 ret:0x0
 19281 ms  0x6c80 ret:0x7f624b460020::7f624b460020  f0 e6 29 6d                                      ..)m
 19281 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19281 ms  0x6c80 cx:0x7f624b382768
 19282 ms     | 0x6c80 EC_ValidatePublicKey()
 19283 ms     | 0x6c80 ret:0x0
 19283 ms  0x6c80 ret:0x7f624b462020::7f624b462020  30 58 c0 6d                                      0X.m
 19286 ms  0x6c80 SSL_ImportFD()
 19286 ms  0x6c80 ret:0x7f624d73f4c0
 19286 ms  0x6c80 SSL_AuthCertificateHook()
 19286 ms  0x6c80 fd:0x7f624d73f4c0
 19286 ms  0x6c80 ret:0x0
 19286 ms  0x6c80 PR_Connect()
 19286 ms  0x6c80 fd:0x7f624d73f4c0
 19286 ms  0x6c80 SSL_ImportFD()
 19286 ms  0x6c80 ret:0x7f624b40d6a0
 19286 ms  0x6c80 SSL_AuthCertificateHook()
 19286 ms  0x6c80 fd:0x7f624b40d6a0
 19286 ms  0x6c80 ret:0x0
 19287 ms  0x6c80 PR_Connect()
 19287 ms  0x6c80 fd:0x7f624b40d6a0
 19287 ms  0x6c80 SSL_ImportFD()
 19287 ms  0x6c80 ret:0x7f624b519850
 19287 ms  0x6c80 SSL_AuthCertificateHook()
 19287 ms  0x6c80 fd:0x7f624b519850
 19287 ms  0x6c80 ret:0x0
 19287 ms  0x6c80 PR_Connect()
 19287 ms  0x6c80 fd:0x7f624b519850
 19287 ms  0x6c80 SSL_ImportFD()
 19287 ms  0x6c80 ret:0x7f624b519e50
 19287 ms  0x6c80 SSL_AuthCertificateHook()
 19287 ms  0x6c80 fd:0x7f624b519e50
 19287 ms  0x6c80 ret:0x0
 19287 ms  0x6c80 PR_Connect()
 19287 ms  0x6c80 fd:0x7f624b519e50
 19288 ms  0x6c80 SSL_ImportFD()
 19288 ms  0x6c80 ret:0x7f624d583100
 19288 ms  0x6c80 SSL_AuthCertificateHook()
 19288 ms  0x6c80 fd:0x7f624d583100
 19288 ms  0x6c80 ret:0x0
 19288 ms  0x6c80 PR_Connect()
 19288 ms  0x6c80 fd:0x7f624d583100
 19293 ms  SECKEY_ECParamsToKeySize()
 19293 ms  0x6c80 ret:0x100
 19293 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19293 ms  0x6c80 cx:0x7f626df5e988
 19294 ms     | 0x6c80 EC_ValidatePublicKey()
 19295 ms     | 0x6c80 ret:0x0
 19295 ms  0x6c80 ret:0x7f624b469820::7f624b469820  e0 22 c8 6d                                      .".m
 19296 ms  0x6c80 PK11_PubDeriveWithKDF()
 19296 ms  0x6c80 seckey:0x7f624b469820
 19296 ms     | 0x6c80 EC_ValidatePublicKey()
 19297 ms     | 0x6c80 ret:0x0
 19299 ms  0x6c80 ret:0x7f626df0c780
 19299 ms  0x6c80 PK11_DeriveWithFlags()
 19299 ms  0x6c80 basekey:0x7f626df0c780
 19299 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19299 ms  0x6c80 ret:0x7f626df18c80
 19299 ms  0x6c80 PK11_Derive()
 19299 ms  0x6c80 basekey:0x7f626df18c80
 19299 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19299 ms  0x6c80 ret:0x7f626d268a80
 19299 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19299 ms  0x6c80 privk:0x7f624b469820::7f624b469820  e0 22 c8 6d                                      .".m
 19299 ms  0x6c80 privk:0x7f624b469820::7f624b469820  e5 e5 e5 e5                                      ....
 19299 ms  0x6c80 PK11_Encrypt()
 19299 ms  0x6c80 symkey:0x7f626d281c00
 19301 ms  SECKEY_ECParamsToKeySize()
 19301 ms  0x6c80 ret:0x100
 19301 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19301 ms  0x6c80 cx:0x7f626d2b7988
 19302 ms     | 0x6c80 EC_ValidatePublicKey()
 19303 ms     | 0x6c80 ret:0x0
 19303 ms  0x6c80 ret:0x7f624b46d820::7f624b46d820  00 26 c8 6d                                      .&.m
 19303 ms  0x6c80 PK11_PubDeriveWithKDF()
 19303 ms  0x6c80 seckey:0x7f624b46d820
 19303 ms     | 0x6c80 EC_ValidatePublicKey()
 19305 ms     | 0x6c80 ret:0x0
 19306 ms  0x6c80 ret:0x7f626df0c780
 19306 ms  0x6c80 PK11_DeriveWithFlags()
 19306 ms  0x6c80 basekey:0x7f626df0c780
 19306 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19306 ms  0x6c80 ret:0x7f626dd06d00
 19306 ms  0x6c80 PK11_Derive()
 19306 ms  0x6c80 basekey:0x7f626dd06d00
 19306 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19306 ms  0x6c80 ret:0x7f626d268b00
 19306 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19306 ms  0x6c80 privk:0x7f624b46d820::7f624b46d820  00 26 c8 6d                                      .&.m
 19307 ms  0x6c80 privk:0x7f624b46d820::7f624b46d820  e5 e5 e5 e5                                      ....
 19307 ms  0x6c80 PK11_Encrypt()
 19307 ms  0x6c80 symkey:0x7f626df40300
 19307 ms  0x6c80 PK11_Encrypt()
 19307 ms  0x6c80 symkey:0x7f6265878400
 19308 ms  0x6c80 PR_Close()
 19308 ms  0x6c80 fd:0x7f626997a040
 19308 ms     | 0x6c80 PK11_Encrypt()
 19308 ms     | 0x6c80 symkey:0x7f6265ff1c00
 19308 ms  0x6c80 PR_Close()
 19308 ms  0x6c80 fd:0x7f6269e75b50
 19311 ms  SECKEY_ECParamsToKeySize()
 19311 ms  0x6c80 ret:0x100
 19311 ms  SECKEY_ECParamsToBasePointOrderLen()
 19311 ms  0x6c80 ret:0x100
 19311 ms  SECKEY_ECParamsToBasePointOrderLen()
 19311 ms  0x6c80 ret:0x100
 19311 ms  0x6c80 EC_ValidatePublicKey()
 19313 ms  0x6c80 ret:0x0
 19315 ms  SECKEY_ECParamsToKeySize()
 19315 ms  0x6c80 ret:0x100
 19315 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19315 ms  0x6c80 cx:0x7f624d5a92c8
 19315 ms     | 0x6c80 EC_ValidatePublicKey()
 19317 ms     | 0x6c80 ret:0x0
 19317 ms  0x6c80 ret:0x7f624b46e820::7f624b46e820  c0 24 c8 6d                                      .$.m
 19317 ms  0x6c80 PK11_PubDeriveWithKDF()
 19317 ms  0x6c80 seckey:0x7f624b46e820
 19317 ms     | 0x6c80 EC_ValidatePublicKey()
 19318 ms     | 0x6c80 ret:0x0
 19320 ms  0x6c80 ret:0x7f6265fe9600
 19320 ms  0x6c80 PK11_DeriveWithFlags()
 19320 ms  0x6c80 basekey:0x7f6265fe9600
 19320 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19320 ms  0x6c80 ret:0x7f6260ddb300
 19320 ms  0x6c80 PK11_Derive()
 19320 ms  0x6c80 basekey:0x7f6260ddb300
 19320 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19320 ms  0x6c80 ret:0x7f626df0c780
 19320 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19320 ms  0x6c80 privk:0x7f624b46e820::7f624b46e820  c0 24 c8 6d                                      .$.m
 19320 ms  0x6c80 privk:0x7f624b46e820::7f624b46e820  e5 e5 e5 e5                                      ....
 19320 ms  0x6c80 PK11_Encrypt()
 19320 ms  0x6c80 symkey:0x7f6265ff1d00
 19322 ms  SECKEY_ECParamsToKeySize()
 19322 ms  0x6c80 ret:0x100
 19322 ms  SECKEY_ECParamsToBasePointOrderLen()
 19322 ms  0x6c80 ret:0x100
 19322 ms  SECKEY_ECParamsToBasePointOrderLen()
 19322 ms  0x6c80 ret:0x100
 19322 ms  0x6c80 EC_ValidatePublicKey()
 19323 ms  0x6c80 ret:0x0
 19325 ms  SECKEY_ECParamsToKeySize()
 19325 ms  0x6c80 ret:0x100
 19325 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19325 ms  0x6c80 cx:0x7f624d5a9468
 19326 ms     | 0x6c80 EC_ValidatePublicKey()
 19328 ms     | 0x6c80 ret:0x0
 19328 ms  0x6c80 ret:0x7f624b4d7020::7f624b4d7020  60 25 c8 6d                                      `%.m
 19328 ms  0x6c80 PK11_PubDeriveWithKDF()
 19328 ms  0x6c80 seckey:0x7f624b4d7020
 19328 ms     | 0x6c80 EC_ValidatePublicKey()
 19333 ms     | 0x6c80 ret:0x0
 19334 ms  0x6c80 ret:0x7f6265fe9600
 19335 ms  0x6c80 PK11_DeriveWithFlags()
 19335 ms  0x6c80 basekey:0x7f6265fe9600
 19335 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19335 ms  0x6c80 ret:0x7f626dd06d80
 19335 ms  0x6c80 PK11_Derive()
 19335 ms  0x6c80 basekey:0x7f626dd06d80
 19335 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19335 ms  0x6c80 ret:0x7f625fc9ac80
 19335 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19335 ms  0x6c80 privk:0x7f624b4d7020::7f624b4d7020  60 25 c8 6d                                      `%.m
 19335 ms  0x6c80 privk:0x7f624b4d7020::7f624b4d7020  e5 e5 e5 e5                                      ....
 19335 ms  0x6c80 PK11_Encrypt()
 19335 ms  0x6c80 symkey:0x7f626d29c500
 19336 ms  0x6c80 PK11_Derive()
 19336 ms  0x6c80 basekey:0x7f626eee7680
 19336 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19336 ms  0x6c80 ret:0x7f6265fe9600
 19336 ms  0x6c80 PK11_Encrypt()
 19336 ms  0x6c80 symkey:0x7f626eee7800
 19339 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19339 ms  0x6c80 privk:0x7f624b43f020::7f624b43f020  d0 38 c5 68                                      .8.h
 19339 ms  0x6c80 privk:0x7f624b43f020::7f624b43f020  e5 e5 e5 e5                                      ....
 19339 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19339 ms  0x6c80 privk:0x7f624b43d020::7f624b43d020  f0 71 1b 66                                      .q.f
 19339 ms  0x6c80 privk:0x7f624b43d020::7f624b43d020  e5 e5 e5 e5                                      ....
 19339 ms  0x6c80 PK11_Encrypt()
 19339 ms  0x6c80 symkey:0x7f62613c0a80
 19340 ms  0x6c80 SSL_AuthCertificateComplete()
 19340 ms  0x6c80 fd:0x7f624b519070
 19340 ms  0x6c80 err:0x0
 19340 ms  0x6c80 SSL_AuthCertificateComplete()
 19340 ms  0x6c80 fd:0x7f624b5190a0
 19340 ms  0x6c80 err:0x0
           /* TID 0x6d27 */
 19341 ms  0x6d27 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19341 ms  0x6d27 ret:0x0
 19341 ms  0x6d27 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19341 ms  0x6d27 ret:0x0
           /* TID 0x6c88 */
 19341 ms  0x6c88 PR_Close()
 19341 ms  0x6c88 fd:0x7f624b3e6c40
           /* TID 0x6c80 */
 19341 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19341 ms  0x6c80 privk:0x7f624b587020::7f624b587020  80 b3 a5 69                                      ...i
 19341 ms  0x6c80 privk:0x7f624b587020::7f624b587020  e5 e5 e5 e5                                      ....
 19342 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19342 ms  0x6c80 privk:0x7f624b585020::7f624b585020  b0 1f e4 65                                      ...e
 19342 ms  0x6c80 privk:0x7f624b585020::7f624b585020  e5 e5 e5 e5                                      ....
 19342 ms  0x6c80 PK11_Encrypt()
 19342 ms  0x6c80 symkey:0x7f6265ff1d00
 19342 ms  0x6c80 PK11_Encrypt()
 19342 ms  0x6c80 symkey:0x7f626d29c500
           /* TID 0x6c88 */
 19343 ms  0x6c88 PR_Close()
 19343 ms  0x6c88 fd:0x7f624b3e6c40
           /* TID 0x6d24 */
 19343 ms  0x6d24 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19343 ms  0x6d24 ret:0x0
 19343 ms  0x6d24 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19343 ms  0x6d24 ret:0x0
           /* TID 0x6c80 */
 19343 ms  0x6c80 PK11_Encrypt()
 19343 ms  0x6c80 symkey:0x7f626ea07e80
           /* TID 0x6c88 */
 19345 ms  0x6c88 PR_Close()
 19345 ms  0x6c88 fd:0x7f624d5837f0
           /* TID 0x6c80 */
 19346 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19346 ms  0x6c80 cx:0x7f624b383608
 19346 ms     | 0x6c80 EC_ValidatePublicKey()
 19346 ms     | 0x6c80 ret:0x0
 19346 ms  0x6c80 ret:0x7f624b466020::7f624b466020  70 7e 88 64                                      p~.d
 19346 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19346 ms  0x6c80 cx:0x7f624b383608
 19347 ms     | 0x6c80 EC_ValidatePublicKey()
 19348 ms     | 0x6c80 ret:0x0
 19348 ms  0x6c80 ret:0x7f624b469020::7f624b469020  60 75 3a 66                                      `u:f
 19349 ms  0x6c80 SSL_AuthCertificateComplete()
 19349 ms  0x6c80 fd:0x7f624b5199d0
 19349 ms  0x6c80 err:0x0
 19349 ms  0x6c80 SSL_AuthCertificateComplete()
 19349 ms  0x6c80 fd:0x7f6268d1a100
 19349 ms  0x6c80 err:0x0
           /* TID 0x6c88 */
 19350 ms  0x6c88 PR_Close()
 19350 ms  0x6c88 fd:0x7f624b3e61c0
           /* TID 0x6c80 */
 19352 ms  0x6c80 PK11_Encrypt()
 19352 ms  0x6c80 symkey:0x7f626d281c00
 19352 ms  0x6c80 PK11_Encrypt()
 19352 ms  0x6c80 symkey:0x7f626df40300
 19353 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19353 ms  0x6c80 privk:0x7f624b42c020::7f624b42c020  c0 d4 cf 68                                      ...h
 19353 ms  0x6c80 privk:0x7f624b42c020::7f624b42c020  e5 e5 e5 e5                                      ....
 19353 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19353 ms  0x6c80 privk:0x7f624b42a020::7f624b42a020  e0 92 11 66                                      ...f
 19368 ms  0x6c80 privk:0x7f624b42a020::7f624b42a020  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 19370 ms  0x6c88 PR_Close()
 19370 ms  0x6c88 fd:0x7f624b3e61c0
           /* TID 0x6c80 */
 19370 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19370 ms  0x6c80 privk:0x7f624b433020::7f624b433020  90 52 c0 6d                                      .R.m
 19371 ms  0x6c80 privk:0x7f624b433020::7f624b433020  e5 e5 e5 e5                                      ....
 19371 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19371 ms  0x6c80 privk:0x7f624b42f820::7f624b42f820  b0 b5 a5 69                                      ...i
 19371 ms  0x6c80 privk:0x7f624b42f820::7f624b42f820  e5 e5 e5 e5                                      ....
 19372 ms  0x6c80 SSL_ImportFD()
 19372 ms  0x6c80 ret:0x7f624b40d9a0
 19372 ms  0x6c80 SSL_AuthCertificateHook()
 19372 ms  0x6c80 fd:0x7f624b40d9a0
 19372 ms  0x6c80 ret:0x0
 19372 ms  0x6c80 PR_Connect()
 19372 ms  0x6c80 fd:0x7f624b40d9a0
 19378 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19378 ms  0x6c80 privk:0x7f624b582820::7f624b582820  00 c1 2a 6d                                      ..*m
 19378 ms  0x6c80 privk:0x7f624b582820::7f624b582820  e5 e5 e5 e5                                      ....
 19378 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19378 ms  0x6c80 privk:0x7f624b580820::7f624b580820  90 ec 29 6d                                      ..)m
 19378 ms  0x6c80 privk:0x7f624b580820::7f624b580820  e5 e5 e5 e5                                      ....
 19379 ms  0x6c80 PR_Close()
 19379 ms  0x6c80 fd:0x7f624d73fc40
 19379 ms     | 0x6c80 PK11_Encrypt()
 19379 ms     | 0x6c80 symkey:0x7f626eac4180
 19388 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19388 ms  0x6c80 privk:0x7f624b58c020::7f624b58c020  00 5b bf 61                                      .[.a
 19389 ms  0x6c80 privk:0x7f624b58c020::7f624b58c020  e5 e5 e5 e5                                      ....
 19389 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19389 ms  0x6c80 privk:0x7f624b58a020::7f624b58a020  d0 a8 79 61                                      ..ya
 19389 ms  0x6c80 privk:0x7f624b58a020::7f624b58a020  e5 e5 e5 e5                                      ....
 19389 ms  0x6c80 PR_Close()
 19389 ms  0x6c80 fd:0x7f624d583430
 19389 ms     | 0x6c80 PK11_Encrypt()
 19389 ms     | 0x6c80 symkey:0x7f626ea08980
 19396 ms  SECKEY_ECParamsToKeySize()
 19396 ms  0x6c80 ret:0x100
 19396 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19396 ms  0x6c80 cx:0x7f624b382428
 19397 ms     | 0x6c80 EC_ValidatePublicKey()
 19399 ms     | 0x6c80 ret:0x0
 19399 ms  0x6c80 ret:0x7f624b3ca020::7f624b3ca020  90 1c b6 61                                      ...a
 19399 ms  0x6c80 PK11_PubDeriveWithKDF()
 19399 ms  0x6c80 seckey:0x7f624b3ca020
 19399 ms     | 0x6c80 EC_ValidatePublicKey()
 19400 ms     | 0x6c80 ret:0x0
 19402 ms  0x6c80 ret:0x7f626ea08200
 19402 ms  0x6c80 PK11_DeriveWithFlags()
 19402 ms  0x6c80 basekey:0x7f626ea08200
 19402 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19402 ms  0x6c80 ret:0x7f624ecfdb00
 19402 ms  0x6c80 PK11_Derive()
 19402 ms  0x6c80 basekey:0x7f624ecfdb00
 19402 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19402 ms  0x6c80 ret:0x7f626ea08e80
 19402 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19402 ms  0x6c80 privk:0x7f624b3ca020::7f624b3ca020  90 1c b6 61                                      ...a
 19402 ms  0x6c80 privk:0x7f624b3ca020::7f624b3ca020  e5 e5 e5 e5                                      ....
 19402 ms  0x6c80 PK11_Encrypt()
 19402 ms  0x6c80 symkey:0x7f626ea08700
 19402 ms  0x6c80 SSL_AuthCertificateComplete()
 19402 ms  0x6c80 fd:0x7f624b3e6190
 19402 ms  0x6c80 err:0x0
 19403 ms  0x6c80 PK11_Encrypt()
 19403 ms  0x6c80 symkey:0x7f626ea08700
           /* TID 0x6c88 */
 19409 ms  0x6c88 PR_Close()
 19409 ms  0x6c88 fd:0x7f624b3e65b0
           /* TID 0x6c80 */
 19411 ms  SECKEY_ECParamsToKeySize()
 19411 ms  0x6c80 ret:0x100
 19411 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19411 ms  0x6c80 cx:0x7f624b3825c8
 19412 ms     | 0x6c80 EC_ValidatePublicKey()
 19413 ms     | 0x6c80 ret:0x0
 19413 ms  0x6c80 ret:0x7f624b42a820::7f624b42a820  a0 e6 e4 62                                      ...b
 19413 ms  0x6c80 PK11_PubDeriveWithKDF()
 19413 ms  0x6c80 seckey:0x7f624b42a820
 19413 ms     | 0x6c80 EC_ValidatePublicKey()
 19415 ms     | 0x6c80 ret:0x0
 19416 ms  0x6c80 ret:0x7f626ea08200
 19416 ms  0x6c80 PK11_DeriveWithFlags()
 19416 ms  0x6c80 basekey:0x7f626ea08200
 19416 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19416 ms  0x6c80 ret:0x7f626ea08e00
 19416 ms  0x6c80 PK11_Derive()
 19416 ms  0x6c80 basekey:0x7f626ea08e00
 19416 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19416 ms  0x6c80 ret:0x7f626dfe2780
 19416 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19416 ms  0x6c80 privk:0x7f624b42a820::7f624b42a820  a0 e6 e4 62                                      ...b
 19416 ms  0x6c80 privk:0x7f624b42a820::7f624b42a820  e5 e5 e5 e5                                      ....
 19416 ms  0x6c80 PK11_Encrypt()
 19416 ms  0x6c80 symkey:0x7f626ea08f00
 19416 ms  0x6c80 SSL_AuthCertificateComplete()
 19416 ms  0x6c80 fd:0x7f624b3e6130
 19416 ms  0x6c80 err:0x0
 19419 ms  0x6c80 PK11_Encrypt()
 19419 ms  0x6c80 symkey:0x7f626ea08f00
 19420 ms  SECKEY_ECParamsToKeySize()
 19420 ms  0x6c80 ret:0x100
 19420 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19420 ms  0x6c80 cx:0x7f624b382768
 19421 ms     | 0x6c80 EC_ValidatePublicKey()
 19424 ms     | 0x6c80 ret:0x0
 19424 ms  0x6c80 ret:0x7f624b42b820::7f624b42b820  10 bf ee 65                                      ...e
 19424 ms  0x6c80 PK11_PubDeriveWithKDF()
 19424 ms  0x6c80 seckey:0x7f624b42b820
 19424 ms     | 0x6c80 EC_ValidatePublicKey()
 19426 ms     | 0x6c80 ret:0x0
 19427 ms  0x6c80 ret:0x7f626ea08200
 19427 ms  0x6c80 PK11_DeriveWithFlags()
 19427 ms  0x6c80 basekey:0x7f626ea08200
 19427 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19427 ms  0x6c80 ret:0x7f6262eca300
 19427 ms  0x6c80 PK11_Derive()
 19427 ms  0x6c80 basekey:0x7f6262eca300
 19427 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19427 ms  0x6c80 ret:0x7f626e2bb900
 19427 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19427 ms  0x6c80 privk:0x7f624b42b820::7f624b42b820  10 bf ee 65                                      ...e
 19428 ms  0x6c80 privk:0x7f624b42b820::7f624b42b820  e5 e5 e5 e5                                      ....
 19428 ms  0x6c80 PK11_Encrypt()
 19428 ms  0x6c80 symkey:0x7f626eac4500
 19428 ms  0x6c80 PK11_Derive()
 19428 ms  0x6c80 basekey:0x7f626ea08200
 19428 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19428 ms  0x6c80 ret:0x7f626ee48c80
 19428 ms  0x6c80 PK11_PubDeriveWithKDF()
 19428 ms  0x6c80 seckey:0x7f624b466020
 19428 ms     | 0x6c80 EC_ValidatePublicKey()
 19428 ms     | 0x6c80 ret:0x0
 19428 ms  0x6c80 ret:0x7f626ea08200
 19428 ms  SECKEY_ECParamsToKeySize()
 19428 ms  0x6c80 ret:0xff
 19428 ms  0x6c80 PK11_DeriveWithFlags()
 19428 ms  0x6c80 basekey:0x7f626ee48c80
 19428 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19428 ms  0x6c80 ret:0x7f626eecc600
 19428 ms  0x6c80 PK11_Derive()
 19428 ms  0x6c80 basekey:0x7f626ea08200
 19428 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19428 ms  0x6c80 ret:0x7f626eecc780
 19429 ms  0x6c80 PK11_DeriveWithFlags()
 19429 ms  0x6c80 basekey:0x7f626eecc780
 19429 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19429 ms  0x6c80 ret:0x7f626ee48c80
 19429 ms  0x6c80 PK11_DeriveWithFlags()
 19429 ms  0x6c80 basekey:0x7f626eecc780
 19429 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19429 ms  0x6c80 ret:0x7f626ea08200
 19429 ms  0x6c80 PK11_DeriveWithFlags()
 19429 ms  0x6c80 basekey:0x7f626eecc780
 19429 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19429 ms  0x6c80 ret:0x7f626eecc600
 19429 ms  0x6c80 PK11_Derive()
 19429 ms  0x6c80 basekey:0x7f626eecca80
 19429 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19429 ms  0x6c80 ret:0x7f626eeccb00
 19429 ms  0x6c80 PK11_DeriveWithFlags()
 19429 ms  0x6c80 basekey:0x7f626ea08200
 19429 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19429 ms  0x6c80 ret:0x7f626eecc780
 19429 ms  0x6c80 PK11_DeriveWithFlags()
 19429 ms  0x6c80 basekey:0x7f626ea08200
 19429 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19429 ms  0x6c80 ret:0x7f626eecc600
 19430 ms  0x6c80 PK11_DeriveWithFlags()
 19430 ms  0x6c80 basekey:0x7f626ea08200
 19430 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19430 ms  0x6c80 ret:0x7f626eecc600
 19430 ms  0x6c80 SSL_AuthCertificateComplete()
 19430 ms  0x6c80 fd:0x7f624b3e6550
 19430 ms  0x6c80 err:0x0
 19430 ms  0x6c80 SSL_AuthCertificateComplete()
 19430 ms  0x6c80 fd:0x7f624b40dd90
 19430 ms  0x6c80 err:0x0
 19430 ms     | 0x6c80 PK11_DeriveWithFlags()
 19430 ms     | 0x6c80 basekey:0x7f626eeccb00
 19430 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 19430 ms     | 0x6c80 ret:0x7f626eecc600
 19430 ms     | 0x6c80 PK11_DeriveWithFlags()
 19430 ms     | 0x6c80 basekey:0x7f626eeccb00
 19430 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 19430 ms     | 0x6c80 ret:0x7f626eecca80
 19430 ms     | 0x6c80 PK11_DeriveWithFlags()
 19430 ms     | 0x6c80 basekey:0x7f626eeccb00
 19430 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 19430 ms     | 0x6c80 ret:0x7f626eecd100
 19430 ms     | 0x6c80 PK11_DeriveWithFlags()
 19430 ms     | 0x6c80 basekey:0x7f626ee48c80
 19430 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 19430 ms     | 0x6c80 ret:0x7f626eecd700
 19430 ms     | 0x6c80 PK11_DeriveWithFlags()
 19430 ms     | 0x6c80 basekey:0x7f626ee48c80
 19430 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 19430 ms     | 0x6c80 ret:0x7f626eecd980
 19430 ms     | 0x6c80 PK11_DeriveWithFlags()
 19430 ms     | 0x6c80 basekey:0x7f626eecca80
 19430 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 19430 ms     | 0x6c80 ret:0x7f626eecd980
 19430 ms     | 0x6c80 PK11_DeriveWithFlags()
 19430 ms     | 0x6c80 basekey:0x7f626eecca80
 19430 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 19430 ms     | 0x6c80 ret:0x7f626eecda80
 19430 ms     | 0x6c80 PK11_DeriveWithFlags()
 19430 ms     | 0x6c80 basekey:0x7f626ee48c80
 19430 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 19430 ms     | 0x6c80 ret:0x7f626eecc780
 19430 ms     | 0x6c80 PK11_Encrypt()
 19430 ms     | 0x6c80 symkey:0x7f626eecd700
 19430 ms     | 0x6c80 PK11_DeriveWithFlags()
 19430 ms     | 0x6c80 basekey:0x7f626eecc600
 19430 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 19430 ms     | 0x6c80 ret:0x7f626eecc780
 19430 ms     | 0x6c80 PK11_DeriveWithFlags()
 19430 ms     | 0x6c80 basekey:0x7f626eecc600
 19430 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 19430 ms     | 0x6c80 ret:0x7f626eecda80
 19430 ms     | 0x6c80 PK11_DeriveWithFlags()
 19430 ms     | 0x6c80 basekey:0x7f626eeccb00
 19431 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 19431 ms     | 0x6c80 ret:0x7f626eecd700
 19431 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 19431 ms     | 0x6c80 privk:0x7f624b469020::7f624b469020  60 75 3a 66                                      `u:f
 19431 ms     | 0x6c80 privk:0x7f624b469020::7f624b469020  e5 e5 e5 e5                                      ....
 19431 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 19431 ms     | 0x6c80 privk:0x7f624b466020::7f624b466020  70 7e 88 64                                      p~.d
 19431 ms     | 0x6c80 privk:0x7f624b466020::7f624b466020  e5 e5 e5 e5                                      ....
 19431 ms  0x6c80 PK11_Encrypt()
 19431 ms  0x6c80 symkey:0x7f626eac4500
 19432 ms  0x6c80 PK11_Encrypt()
 19432 ms  0x6c80 symkey:0x7f626eecc780
 19432 ms  0x6c80 PK11_Encrypt()
 19432 ms  0x6c80 symkey:0x7f626eecc780
           /* TID 0x6c88 */
 19448 ms  0x6c88 PR_Close()
 19448 ms  0x6c88 fd:0x7f624b519700
 19448 ms  0x6c88 PR_Close()
 19448 ms  0x6c88 fd:0x7f624d5835b0
 19448 ms  0x6c88 PR_Close()
 19448 ms  0x6c88 fd:0x7f624d583b20
 19448 ms  0x6c88 PR_Close()
 19448 ms  0x6c88 fd:0x7f624d73f280
 19448 ms  0x6c88 PR_Close()
 19448 ms  0x6c88 fd:0x7f624d73fc40
 19448 ms  0x6c88 PR_Close()
 19448 ms  0x6c88 fd:0x7f624d73ff40
 19448 ms  0x6c88 PR_Close()
 19448 ms  0x6c88 fd:0x7f6265bac820
 19448 ms  0x6c88 PR_Close()
 19448 ms  0x6c88 fd:0x7f6268d1a880
 19448 ms  0x6c88 PR_Close()
 19448 ms  0x6c88 fd:0x7f6268d1a9d0
 19448 ms  0x6c88 PR_Close()
 19448 ms  0x6c88 fd:0x7f6268d1aac0
 19448 ms  0x6c88 PR_Close()
 19448 ms  0x6c88 fd:0x7f6268d1ab50
 19448 ms  0x6c88 PR_Close()
 19448 ms  0x6c88 fd:0x7f6268d1ad90
 19448 ms  0x6c88 PR_Close()
 19448 ms  0x6c88 fd:0x7f6268d1aee0
 19448 ms  0x6c88 PR_Close()
 19448 ms  0x6c88 fd:0x7f6268d81fa0
 19448 ms  0x6c88 PR_Close()
 19448 ms  0x6c88 fd:0x7f6268dfa2b0
 19448 ms  0x6c88 PR_Close()
 19448 ms  0x6c88 fd:0x7f6268dfaf70
           /* TID 0x6c80 */
 19450 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19450 ms  0x6c80 cx:0x7f624b382f88
 19451 ms     | 0x6c80 EC_ValidatePublicKey()
 19451 ms     | 0x6c80 ret:0x0
 19451 ms  0x6c80 ret:0x7f624b45d020::7f624b45d020  a0 e6 e4 62                                      ...b
 19451 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19451 ms  0x6c80 cx:0x7f624b382f88
 19451 ms     | 0x6c80 EC_ValidatePublicKey()
 19453 ms     | 0x6c80 ret:0x0
 19453 ms  0x6c80 ret:0x7f624b466020::7f624b466020  10 bf ee 65                                      ...e
           /* TID 0x6c88 */
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f624b519700
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f624d5835b0
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f624d583b20
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f624d73f280
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f624d73fc40
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f624d73ff40
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f6265bac820
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f6268d1a880
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f6268d1a9d0
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f6268d1aac0
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f6268d1ab50
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f6268d1ad90
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f6268d1aee0
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f6268d81fa0
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f6268dfa2b0
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f6268dfaf70
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f6269931d30
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f6269932e20
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f626997a040
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f626999bcd0
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f62699a5f10
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f62699b74c0
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f6269a27a60
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f6269a6b910
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f6269eaba60
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f6269eabd30
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f626a36c700
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f626a36c790
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f626a631310
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f626a784760
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f626a798a30
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f626cb0b100
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f626cb0b3a0
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f626cb0b4c0
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f626cb0b820
 19455 ms  0x6c88 PR_Close()
 19455 ms  0x6c88 fd:0x7f626cb0ba30
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f626cb0bac0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f626cb0bd60
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f626cbb20d0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f626cd0a190
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f626df57820
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f626df57c40
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f626e24f310
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f626e24f7c0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f626ee5df40
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f626f8567c0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f626f8c8820
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f62709496d0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f62709f55e0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371070
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f62403710d0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371130
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371190
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f62403711f0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371250
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f62403712b0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371310
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371370
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f62403713d0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371430
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f62403714f0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371550
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f62403715b0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371610
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371670
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f62403716d0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371730
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371790
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f62403717f0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371850
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f62403718b0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371910
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371970
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f62403719d0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371a30
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371a90
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371af0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371b50
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371bb0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371c10
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371c70
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371cd0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371d30
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371d90
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371df0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371e50
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371eb0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371f10
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371f70
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f6240371fd0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f624b3abe80
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f624b59e040
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f624b59e0a0
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f624b59e100
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f624b59e160
 19456 ms  0x6c88 PR_Close()
 19456 ms  0x6c88 fd:0x7f624b59e1c0
 19474 ms  0x6c88 PR_Close()
 19474 ms  0x6c88 fd:0x7f6240371040
 19475 ms  0x6c88 PR_Close()
 19475 ms  0x6c88 fd:0x7f62403710a0
 19475 ms  0x6c88 PR_Close()
 19475 ms  0x6c88 fd:0x7f6240371100
           /* TID 0x6c9c */
 19478 ms  0x6c9c PR_Close()
 19478 ms  0x6c9c fd:0x7f62403710d0
 19481 ms  0x6c9c PR_Close()
 19481 ms  0x6c9c fd:0x7f62403710d0
           /* TID 0x6c88 */
 19486 ms  0x6c88 PR_Close()
 19486 ms  0x6c88 fd:0x7f6240371130
           /* TID 0x6c80 */
 19487 ms  SECKEY_ECParamsToKeySize()
 19487 ms  0x6c80 ret:0x100
 19487 ms  SECKEY_ECParamsToBasePointOrderLen()
 19487 ms  0x6c80 ret:0x100
 19487 ms  SECKEY_ECParamsToBasePointOrderLen()
 19487 ms  0x6c80 ret:0x100
 19487 ms  0x6c80 EC_ValidatePublicKey()
 19489 ms  0x6c80 ret:0x0
 19491 ms  SECKEY_ECParamsToKeySize()
 19491 ms  0x6c80 ret:0x100
 19491 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19491 ms  0x6c80 cx:0x7f624d5a8c48
 19491 ms     | 0x6c80 EC_ValidatePublicKey()
 19493 ms     | 0x6c80 ret:0x0
 19493 ms  0x6c80 ret:0x7f624b432820::7f624b432820  40 f7 4f 66                                      @.Of
 19493 ms  0x6c80 PK11_PubDeriveWithKDF()
 19493 ms  0x6c80 seckey:0x7f624b432820
 19493 ms     | 0x6c80 EC_ValidatePublicKey()
 19494 ms     | 0x6c80 ret:0x0
 19498 ms  0x6c80 ret:0x7f626ea08200
 19498 ms  0x6c80 PK11_DeriveWithFlags()
 19498 ms  0x6c80 basekey:0x7f626ea08200
 19498 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19498 ms  0x6c80 ret:0x7f626ee48c80
 19498 ms  0x6c80 PK11_Derive()
 19498 ms  0x6c80 basekey:0x7f626ee48c80
 19498 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19498 ms  0x6c80 ret:0x7f626eeccb00
 19498 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19498 ms  0x6c80 privk:0x7f624b432820::7f624b432820  40 f7 4f 66                                      @.Of
 19498 ms  0x6c80 privk:0x7f624b432820::7f624b432820  e5 e5 e5 e5                                      ....
 19498 ms  0x6c80 PK11_Encrypt()
 19498 ms  0x6c80 symkey:0x7f626dfeef80
 19504 ms  0x6c80 SSL_AuthCertificateComplete()
 19504 ms  0x6c80 fd:0x7f624b5191c0
 19504 ms  0x6c80 err:0x0
 19505 ms  0x6c80 PK11_Encrypt()
 19505 ms  0x6c80 symkey:0x7f626dfeef80
 19506 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19506 ms  0x6c80 privk:0x7f624b429820::7f624b429820  b0 ca 2a 6d                                      ..*m
 19506 ms  0x6c80 privk:0x7f624b429820::7f624b429820  e5 e5 e5 e5                                      ....
 19506 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19506 ms  0x6c80 privk:0x7f624b427820::7f624b427820  70 e9 29 6d                                      p.)m
 19506 ms  0x6c80 privk:0x7f624b427820::7f624b427820  e5 e5 e5 e5                                      ....
 19506 ms  0x6c80 PK11_DeriveWithFlags()
 19506 ms  0x6c80 basekey:0x7f626eecd700
 19506 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19506 ms  0x6c80 ret:0x7f626ea08200
 19506 ms  0x6c80 PK11_DeriveWithFlags()
 19506 ms  0x6c80 basekey:0x7f626eecd700
 19506 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19506 ms  0x6c80 ret:0x7f626ea08200
 19506 ms  0x6c80 PR_Close()
 19506 ms  0x6c80 fd:0x7f626df57520
 19506 ms     | 0x6c80 PK11_Encrypt()
 19506 ms     | 0x6c80 symkey:0x7f626ead1a80
 19512 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19512 ms  0x6c80 cx:0x7f624b383fc8
 19513 ms     | 0x6c80 EC_ValidatePublicKey()
 19513 ms     | 0x6c80 ret:0x0
 19513 ms  0x6c80 ret:0x7f624b3c2020::7f624b3c2020  f0 71 1b 66                                      .q.f
 19513 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19513 ms  0x6c80 cx:0x7f624b383fc8
 19513 ms     | 0x6c80 EC_ValidatePublicKey()
 19515 ms     | 0x6c80 ret:0x0
 19515 ms  0x6c80 ret:0x7f624b427020::7f624b427020  60 7f 3a 66                                      `.:f
 19516 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19516 ms  0x6c80 cx:0x7f624b384168
 19517 ms     | 0x6c80 EC_ValidatePublicKey()
 19517 ms     | 0x6c80 ret:0x0
 19517 ms  0x6c80 ret:0x7f624b429820::7f624b429820  40 b2 c8 68                                      @..h
 19517 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19517 ms  0x6c80 cx:0x7f624b384168
 19517 ms     | 0x6c80 EC_ValidatePublicKey()
 19519 ms     | 0x6c80 ret:0x0
 19519 ms  0x6c80 ret:0x7f624b434820::7f624b434820  00 f1 de 68                                      ...h
 19520 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19520 ms  0x6c80 cx:0x7f624b383e28
 19520 ms     | 0x6c80 EC_ValidatePublicKey()
 19520 ms     | 0x6c80 ret:0x0
 19520 ms  0x6c80 ret:0x7f624b466820::7f624b466820  40 a7 9e 69                                      @..i
 19520 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19520 ms  0x6c80 cx:0x7f624b383e28
 19521 ms     | 0x6c80 EC_ValidatePublicKey()
 19523 ms     | 0x6c80 ret:0x0
 19523 ms  0x6c80 ret:0x7f624b46a020::7f624b46a020  d0 28 c8 68                                      .(.h
           /* TID 0x6c88 */
 19524 ms  0x6c88 PR_Close()
 19524 ms  0x6c88 fd:0x7f62403711c0
           /* TID 0x6c80 */
 19525 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19525 ms  0x6c80 cx:0x7f624b3837a8
 19526 ms     | 0x6c80 EC_ValidatePublicKey()
 19526 ms     | 0x6c80 ret:0x0
 19526 ms  0x6c80 ret:0x7f624b4d8020::7f624b4d8020  50 d6 08 6a                                      P..j
 19526 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19526 ms  0x6c80 cx:0x7f624b3837a8
 19527 ms     | 0x6c80 EC_ValidatePublicKey()
 19528 ms     | 0x6c80 ret:0x0
 19528 ms  0x6c80 ret:0x7f624b4e1820::7f624b4e1820  a0 61 91 6a                                      .a.j
 19528 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19528 ms  0x6c80 cx:0x7f624b384308
 19529 ms     | 0x6c80 EC_ValidatePublicKey()
 19529 ms     | 0x6c80 ret:0x0
 19529 ms  0x6c80 ret:0x7f624b4e8820::7f624b4e8820  70 e9 29 6d                                      p.)m
 19529 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19529 ms  0x6c80 cx:0x7f624b384308
 19530 ms     | 0x6c80 EC_ValidatePublicKey()
 19531 ms     | 0x6c80 ret:0x0
 19531 ms  0x6c80 ret:0x7f624b577820::7f624b577820  00 c1 2a 6d                                      ..*m
 19532 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19532 ms  0x6c80 privk:0x7f624b458020::7f624b458020  e0 9c cf 6c                                      ...l
 19532 ms  0x6c80 privk:0x7f624b458020::7f624b458020  e5 e5 e5 e5                                      ....
 19532 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19532 ms  0x6c80 privk:0x7f624b456020::7f624b456020  00 16 1b 66                                      ...f
 19532 ms  0x6c80 privk:0x7f624b456020::7f624b456020  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 19542 ms  0x6c88 PR_Close()
 19542 ms  0x6c88 fd:0x7f6240371100
           /* TID 0x6c80 */
 19549 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19549 ms  0x6c80 privk:0x7f624b45c020::7f624b45c020  80 e3 29 6d                                      ..)m
 19549 ms  0x6c80 privk:0x7f624b45c020::7f624b45c020  e5 e5 e5 e5                                      ....
 19549 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19549 ms  0x6c80 privk:0x7f624b45a020::7f624b45a020  d0 d3 90 6a                                      ...j
 19549 ms  0x6c80 privk:0x7f624b45a020::7f624b45a020  e5 e5 e5 e5                                      ....
 19551 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19551 ms  0x6c80 privk:0x7f624b5a2820::7f624b5a2820  f0 51 c0 6d                                      .Q.m
 19551 ms  0x6c80 privk:0x7f624b5a2820::7f624b5a2820  e5 e5 e5 e5                                      ....
 19551 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19551 ms  0x6c80 privk:0x7f624b5a0820::7f624b5a0820  b0 cf 2a 6d                                      ..*m
 19551 ms  0x6c80 privk:0x7f624b5a0820::7f624b5a0820  e5 e5 e5 e5                                      ....
 19551 ms  0x6c80 PK11_Encrypt()
 19551 ms  0x6c80 symkey:0x7f626ead0f00
 19557 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19557 ms  0x6c80 privk:0x7f624b462020::7f624b462020  30 58 c0 6d                                      0X.m
 19558 ms  0x6c80 privk:0x7f624b462020::7f624b462020  e5 e5 e5 e5                                      ....
 19558 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19558 ms  0x6c80 privk:0x7f624b460020::7f624b460020  f0 e6 29 6d                                      ..)m
 19558 ms  0x6c80 privk:0x7f624b460020::7f624b460020  e5 e5 e5 e5                                      ....
 19567 ms  0x6c80 PK11_Encrypt()
 19567 ms  0x6c80 symkey:0x7f626eecc780
 19575 ms  SECKEY_ECParamsToKeySize()
 19575 ms  0x6c80 ret:0x100
 19576 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19576 ms  0x6c80 cx:0x7f624d5a9608
 19576 ms     | 0x6c80 EC_ValidatePublicKey()
 19578 ms     | 0x6c80 ret:0x0
 19578 ms  0x6c80 ret:0x7f624b456820::7f624b456820  90 cc 96 6a                                      ...j
 19578 ms  0x6c80 PK11_PubDeriveWithKDF()
 19578 ms  0x6c80 seckey:0x7f624b456820
 19578 ms     | 0x6c80 EC_ValidatePublicKey()
 19579 ms     | 0x6c80 ret:0x0
 19581 ms  0x6c80 ret:0x7f626ead1100
 19581 ms  0x6c80 PK11_DeriveWithFlags()
 19581 ms  0x6c80 basekey:0x7f626ead1100
 19581 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19581 ms  0x6c80 ret:0x7f626ead1080
 19581 ms  0x6c80 PK11_Derive()
 19581 ms  0x6c80 basekey:0x7f626ead1080
 19581 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19581 ms  0x6c80 ret:0x7f626ea08200
 19581 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19581 ms  0x6c80 privk:0x7f624b456820::7f624b456820  90 cc 96 6a                                      ...j
 19581 ms  0x6c80 privk:0x7f624b456820::7f624b456820  e5 e5 e5 e5                                      ....
 19581 ms  0x6c80 PK11_Encrypt()
 19581 ms  0x6c80 symkey:0x7f626ead1180
 19581 ms  0x6c80 SSL_AuthCertificateComplete()
 19581 ms  0x6c80 fd:0x7f624b519100
 19581 ms  0x6c80 err:0x0
 19582 ms  0x6c80 PK11_Encrypt()
 19582 ms  0x6c80 symkey:0x7f626ead1180
 19622 ms  0x6c80 SSL_ImportFD()
 19622 ms  0x6c80 ret:0x7f6240371550
 19623 ms  0x6c80 SSL_AuthCertificateHook()
 19623 ms  0x6c80 fd:0x7f6240371550
 19623 ms  0x6c80 ret:0x0
 19623 ms  0x6c80 PR_Connect()
 19623 ms  0x6c80 fd:0x7f6240371550
 19624 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19624 ms  0x6c80 privk:0x7f624b4e7020::7f624b4e7020  10 c5 2a 6d                                      ..*m
 19624 ms  0x6c80 privk:0x7f624b4e7020::7f624b4e7020  e5 e5 e5 e5                                      ....
 19624 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19624 ms  0x6c80 privk:0x7f624b4e5020::7f624b4e5020  80 dd e5 62                                      ...b
 19624 ms  0x6c80 privk:0x7f624b4e5020::7f624b4e5020  e5 e5 e5 e5                                      ....
 19624 ms  0x6c80 PR_Close()
 19624 ms  0x6c80 fd:0x7f624b519070
 19624 ms     | 0x6c80 PK11_Encrypt()
 19624 ms     | 0x6c80 symkey:0x7f6265ff1d00
 19636 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19636 ms  0x6c80 privk:0x7f624b4f4020::7f624b4f4020  d0 13 d9 6d                                      ...m
 19636 ms  0x6c80 privk:0x7f624b4f4020::7f624b4f4020  e5 e5 e5 e5                                      ....
 19636 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19636 ms  0x6c80 privk:0x7f624b4f2020::7f624b4f2020  f0 11 d9 6d                                      ...m
 19636 ms  0x6c80 privk:0x7f624b4f2020::7f624b4f2020  e5 e5 e5 e5                                      ....
 19636 ms  0x6c80 PR_Close()
 19636 ms  0x6c80 fd:0x7f624b5190a0
 19636 ms     | 0x6c80 PK11_Encrypt()
 19636 ms     | 0x6c80 symkey:0x7f626d29c500
           /* TID 0x6c88 */
 19637 ms  0x6c88 PR_Close()
 19637 ms  0x6c88 fd:0x7f6240371070
 19648 ms  0x6c88 PR_Close()
 19648 ms  0x6c88 fd:0x7f6240371070
 19649 ms  0x6c88 PR_Close()
 19649 ms  0x6c88 fd:0x7f6240371070
 19663 ms  0x6c88 PR_Close()
 19663 ms  0x6c88 fd:0x7f6240371070
 19665 ms  0x6c88 PR_Close()
 19665 ms  0x6c88 fd:0x7f6240371070
           /* TID 0x6c80 */
 19666 ms  0x6c80 PK11_Encrypt()
 19666 ms  0x6c80 symkey:0x7f626d268b80
 19674 ms  0x6c80 PK11_Encrypt()
 19674 ms  0x6c80 symkey:0x7f62611c3880
 19677 ms  SECKEY_ECParamsToKeySize()
 19677 ms  0x6c80 ret:0x100
 19677 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19677 ms  0x6c80 cx:0x7f624b382f88
 19677 ms     | 0x6c80 EC_ValidatePublicKey()
 19679 ms     | 0x6c80 ret:0x0
 19679 ms  0x6c80 ret:0x7f624b46b020::7f624b46b020  50 f1 de 68                                      P..h
 19679 ms  0x6c80 PK11_PubDeriveWithKDF()
 19679 ms  0x6c80 seckey:0x7f624b46b020
 19679 ms     | 0x6c80 EC_ValidatePublicKey()
 19680 ms     | 0x6c80 ret:0x0
 19682 ms  0x6c80 ret:0x7f625fc9ac80
 19682 ms  0x6c80 PK11_DeriveWithFlags()
 19682 ms  0x6c80 basekey:0x7f625fc9ac80
 19682 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19682 ms  0x6c80 ret:0x7f626dd06d80
 19682 ms  0x6c80 PK11_Derive()
 19682 ms  0x6c80 basekey:0x7f626dd06d80
 19682 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19682 ms  0x6c80 ret:0x7f626df0c780
 19682 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19682 ms  0x6c80 privk:0x7f624b46b020::7f624b46b020  50 f1 de 68                                      P..h
 19682 ms  0x6c80 privk:0x7f624b46b020::7f624b46b020  e5 e5 e5 e5                                      ....
 19682 ms  0x6c80 PK11_Encrypt()
 19682 ms  0x6c80 symkey:0x7f626d29c580
 19688 ms  0x6c80 PK11_Encrypt()
 19688 ms  0x6c80 symkey:0x7f62661a7480
           /* TID 0x6c88 */
 19689 ms  0x6c88 PR_Close()
 19689 ms  0x6c88 fd:0x7f6240371910
 19693 ms  0x6c88 PR_Close()
 19693 ms  0x6c88 fd:0x7f6240371910
           /* TID 0x6c80 */
 19703 ms  0x6c80 PK11_Encrypt()
 19703 ms  0x6c80 symkey:0x7f626d29da00
           /* TID 0x6c88 */
 19715 ms  0x6c88 PR_Close()
 19715 ms  0x6c88 fd:0x7f6240371580
           /* TID 0x6c80 */
 19717 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19717 ms  0x6c80 cx:0x7f624b3844a8
 19717 ms     | 0x6c80 EC_ValidatePublicKey()
 19717 ms     | 0x6c80 ret:0x0
 19717 ms  0x6c80 ret:0x7f624b4f2020::7f624b4f2020  60 9a cf 6c                                      `..l
 19718 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19718 ms  0x6c80 cx:0x7f624b3844a8
 19718 ms     | 0x6c80 EC_ValidatePublicKey()
 19720 ms     | 0x6c80 ret:0x0
 19720 ms  0x6c80 ret:0x7f624b4f4020::7f624b4f4020  70 e4 29 6d                                      p.)m
           /* TID 0x6c88 */
 19720 ms  0x6c88 PR_Close()
 19720 ms  0x6c88 fd:0x7f6240371c10
           /* TID 0x6d27 */
 19720 ms  0x6d27 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19720 ms  0x6d27 ret:0x0
           /* TID 0x6c80 */
 19721 ms  0x6c80 SSL_AuthCertificateComplete()
 19721 ms  0x6c80 fd:0x7f624b40d400
 19721 ms  0x6c80 err:0x0
 19723 ms  0x6c80 PK11_Encrypt()
 19723 ms  0x6c80 symkey:0x7f626d29c580
           /* TID 0x6c88 */
 19723 ms  0x6c88 PR_Close()
 19723 ms  0x6c88 fd:0x7f6240371940
           /* TID 0x6c80 */
 19741 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19741 ms  0x6c80 cx:0x7f624d5a8908
 19742 ms     | 0x6c80 EC_ValidatePublicKey()
 19742 ms     | 0x6c80 ret:0x0
 19742 ms  0x6c80 ret:0x7f624b578820::7f624b578820  a0 e6 c5 68                                      ...h
 19742 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19742 ms  0x6c80 cx:0x7f624d5a8908
 19742 ms     | 0x6c80 EC_ValidatePublicKey()
 19744 ms     | 0x6c80 ret:0x0
 19744 ms  0x6c80 ret:0x7f624b581820::7f624b581820  f0 91 cf 6c                                      ...l
 19758 ms  0x6c80 SSL_AuthCertificateComplete()
 19758 ms  0x6c80 fd:0x7f624b519850
 19758 ms  0x6c80 err:0x0
 19758 ms  0x6c80 SSL_AuthCertificateComplete()
 19758 ms  0x6c80 fd:0x7f624b519e50
 19758 ms  0x6c80 err:0x0
 19758 ms  0x6c80 SSL_AuthCertificateComplete()
 19758 ms  0x6c80 fd:0x7f624b40d6a0
 19758 ms  0x6c80 err:0x0
 19759 ms  SECKEY_ECParamsToKeySize()
 19759 ms  0x6c80 ret:0x100
 19759 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19759 ms  0x6c80 cx:0x7f624b383fc8
 19760 ms     | 0x6c80 EC_ValidatePublicKey()
 19761 ms     | 0x6c80 ret:0x0
 19761 ms  0x6c80 ret:0x7f624b585820::7f624b585820  e0 cc 2a 6d                                      ..*m
 19761 ms  0x6c80 PK11_PubDeriveWithKDF()
 19761 ms  0x6c80 seckey:0x7f624b585820
 19761 ms     | 0x6c80 EC_ValidatePublicKey()
 19763 ms     | 0x6c80 ret:0x0
 19776 ms  0x6c80 ret:0x7f625fc9ac80
 19776 ms  0x6c80 PK11_DeriveWithFlags()
 19776 ms  0x6c80 basekey:0x7f625fc9ac80
 19776 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19776 ms  0x6c80 ret:0x7f6260ddb300
 19776 ms  0x6c80 PK11_Derive()
 19776 ms  0x6c80 basekey:0x7f6260ddb300
 19776 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19776 ms  0x6c80 ret:0x7f626ead1100
 19776 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19776 ms  0x6c80 privk:0x7f624b585820::7f624b585820  e0 cc 2a 6d                                      ..*m
 19776 ms  0x6c80 privk:0x7f624b585820::7f624b585820  e5 e5 e5 e5                                      ....
 19776 ms  0x6c80 PK11_Encrypt()
 19776 ms  0x6c80 symkey:0x7f6265fff400
 19777 ms  SECKEY_ECParamsToKeySize()
 19777 ms  0x6c80 ret:0x100
 19777 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19777 ms  0x6c80 cx:0x7f624b384168
 19777 ms     | 0x6c80 EC_ValidatePublicKey()
 19779 ms     | 0x6c80 ret:0x0
 19779 ms  0x6c80 ret:0x7f624b586020::7f624b586020  e0 cc 2a 6d                                      ..*m
 19779 ms  0x6c80 PK11_PubDeriveWithKDF()
 19779 ms  0x6c80 seckey:0x7f624b586020
 19779 ms     | 0x6c80 EC_ValidatePublicKey()
 19780 ms     | 0x6c80 ret:0x0
 19782 ms  0x6c80 ret:0x7f625fc9ac80
 19782 ms  0x6c80 PK11_DeriveWithFlags()
 19782 ms  0x6c80 basekey:0x7f625fc9ac80
 19782 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19782 ms  0x6c80 ret:0x7f626eecda80
 19782 ms  0x6c80 PK11_Derive()
 19782 ms  0x6c80 basekey:0x7f626eecda80
 19782 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19782 ms  0x6c80 ret:0x7f626eecde00
 19782 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19782 ms  0x6c80 privk:0x7f624b586020::7f624b586020  e0 cc 2a 6d                                      ..*m
 19782 ms  0x6c80 privk:0x7f624b586020::7f624b586020  e5 e5 e5 e5                                      ....
 19782 ms  0x6c80 PK11_Encrypt()
 19782 ms  0x6c80 symkey:0x7f626eecdf80
 19782 ms  SECKEY_ECParamsToKeySize()
 19782 ms  0x6c80 ret:0x100
 19783 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19783 ms  0x6c80 cx:0x7f624b383e28
 19783 ms     | 0x6c80 EC_ValidatePublicKey()
 19784 ms     | 0x6c80 ret:0x0
 19784 ms  0x6c80 ret:0x7f624b586820::7f624b586820  e0 cc 2a 6d                                      ..*m
 19785 ms  0x6c80 PK11_PubDeriveWithKDF()
 19785 ms  0x6c80 seckey:0x7f624b586820
 19785 ms     | 0x6c80 EC_ValidatePublicKey()
 19786 ms     | 0x6c80 ret:0x0
 19787 ms  0x6c80 ret:0x7f625fc9ac80
 19787 ms  0x6c80 PK11_DeriveWithFlags()
 19787 ms  0x6c80 basekey:0x7f625fc9ac80
 19787 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19787 ms  0x6c80 ret:0x7f626eee7100
 19787 ms  0x6c80 PK11_Derive()
 19787 ms  0x6c80 basekey:0x7f626eee7100
 19787 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19788 ms  0x6c80 ret:0x7f626eee7200
 19788 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19788 ms  0x6c80 privk:0x7f624b586820::7f624b586820  e0 cc 2a 6d                                      ..*m
 19788 ms  0x6c80 privk:0x7f624b586820::7f624b586820  e5 e5 e5 e5                                      ....
 19788 ms  0x6c80 PK11_Encrypt()
 19788 ms  0x6c80 symkey:0x7f626eee7380
 19796 ms  SECKEY_ECParamsToKeySize()
 19796 ms  0x6c80 ret:0x100
 19796 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19796 ms  0x6c80 cx:0x7f624b3837a8
 19797 ms     | 0x6c80 EC_ValidatePublicKey()
 19798 ms     | 0x6c80 ret:0x0
 19798 ms  0x6c80 ret:0x7f624b587020::7f624b587020  70 ce 2a 6d                                      p.*m
 19798 ms  0x6c80 PK11_PubDeriveWithKDF()
 19798 ms  0x6c80 seckey:0x7f624b587020
 19798 ms     | 0x6c80 EC_ValidatePublicKey()
 19800 ms     | 0x6c80 ret:0x0
 19801 ms  0x6c80 ret:0x7f625fc9ac80
 19801 ms  0x6c80 PK11_DeriveWithFlags()
 19801 ms  0x6c80 basekey:0x7f625fc9ac80
 19801 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19801 ms  0x6c80 ret:0x7f626eee7480
 19801 ms  0x6c80 PK11_Derive()
 19801 ms  0x6c80 basekey:0x7f626eee7480
 19801 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19801 ms  0x6c80 ret:0x7f626eee7500
 19801 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19801 ms  0x6c80 privk:0x7f624b587020::7f624b587020  70 ce 2a 6d                                      p.*m
 19801 ms  0x6c80 privk:0x7f624b587020::7f624b587020  e5 e5 e5 e5                                      ....
 19801 ms  0x6c80 PK11_Encrypt()
 19801 ms  0x6c80 symkey:0x7f626eee7a00
 19807 ms  SECKEY_ECParamsToKeySize()
 19807 ms  0x6c80 ret:0x100
 19807 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19807 ms  0x6c80 cx:0x7f624b384308
 19808 ms     | 0x6c80 EC_ValidatePublicKey()
 19809 ms     | 0x6c80 ret:0x0
 19809 ms  0x6c80 ret:0x7f624b588820::7f624b588820  60 50 c0 6d                                      `P.m
 19809 ms  0x6c80 PK11_PubDeriveWithKDF()
 19809 ms  0x6c80 seckey:0x7f624b588820
 19809 ms     | 0x6c80 EC_ValidatePublicKey()
 19811 ms     | 0x6c80 ret:0x0
 19812 ms  0x6c80 ret:0x7f625fc9ac80
 19812 ms  0x6c80 PK11_DeriveWithFlags()
 19812 ms  0x6c80 basekey:0x7f625fc9ac80
 19812 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19812 ms  0x6c80 ret:0x7f626eee7c80
 19812 ms  0x6c80 PK11_Derive()
 19812 ms  0x6c80 basekey:0x7f626eee7c80
 19812 ms     | 0x6c80 PK11_DeriveWithTemplate()
 19812 ms  0x6c80 ret:0x7f626eee7e80
 19812 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19812 ms  0x6c80 privk:0x7f624b588820::7f624b588820  60 50 c0 6d                                      `P.m
 19812 ms  0x6c80 privk:0x7f624b588820::7f624b588820  e5 e5 e5 e5                                      ....
 19813 ms  0x6c80 PK11_Encrypt()
 19813 ms  0x6c80 symkey:0x7f626eee8000
 19823 ms  0x6c80 PK11_Encrypt()
 19823 ms  0x6c80 symkey:0x7f6265fff400
 19825 ms  0x6c80 PK11_Encrypt()
 19825 ms  0x6c80 symkey:0x7f626eecdf80
 19825 ms  0x6c80 PR_Close()
 19825 ms  0x6c80 fd:0x7f627095b310
 19825 ms  0x6c80 SSL_AuthCertificateComplete()
 19825 ms  0x6c80 fd:0x7f624d73f4c0
 19825 ms  0x6c80 err:0x0
 19825 ms  0x6c80 SSL_AuthCertificateComplete()
 19825 ms  0x6c80 fd:0x7f624d583100
 19825 ms  0x6c80 err:0x0
 19825 ms  0x6c80 SSL_ImportFD()
 19825 ms  0x6c80 ret:0x7f624b519f70
 19825 ms  0x6c80 SSL_AuthCertificateHook()
 19825 ms  0x6c80 fd:0x7f624b519f70
 19825 ms  0x6c80 ret:0x0
 19825 ms  0x6c80 PR_Connect()
 19825 ms  0x6c80 fd:0x7f624b519f70
 19826 ms  0x6c80 PK11_Encrypt()
 19826 ms  0x6c80 symkey:0x7f626eee7380
 19827 ms  0x6c80 PK11_Encrypt()
 19827 ms  0x6c80 symkey:0x7f626eee7a00
 19827 ms  0x6c80 PK11_Encrypt()
 19827 ms  0x6c80 symkey:0x7f626eee8000
 19828 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19828 ms  0x6c80 privk:0x7f6240348820::7f6240348820  80 9d df 68                                      ...h
 19828 ms  0x6c80 privk:0x7f6240348820::7f6240348820  e5 e5 e5 e5                                      ....
 19828 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19828 ms  0x6c80 privk:0x7f6240346820::7f6240346820  80 2d 86 64                                      .-.d
 19828 ms  0x6c80 privk:0x7f6240346820::7f6240346820  e5 e5 e5 e5                                      ....
 19828 ms  0x6c80 PR_Close()
 19828 ms  0x6c80 fd:0x7f624b5191c0
 19828 ms     | 0x6c80 PK11_Encrypt()
 19828 ms     | 0x6c80 symkey:0x7f626dfeef80
           /* TID 0x6c88 */
 19862 ms  0x6c88 PR_Close()
 19862 ms  0x6c88 fd:0x7f6240371130
 19886 ms  0x6c88 PR_Close()
 19886 ms  0x6c88 fd:0x7f62403715b0
           /* TID 0x6c80 */
 19888 ms  0x6c80 PK11_Encrypt()
 19888 ms  0x6c80 symkey:0x7f626d268b80
 19891 ms  0x6c80 PK11_Encrypt()
 19891 ms  0x6c80 symkey:0x7f626d268880
 19893 ms  0x6c80 PK11_Encrypt()
 19893 ms  0x6c80 symkey:0x7f626d268880
 19900 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19900 ms  0x6c80 privk:0x7f624b466020::7f624b466020  10 bf ee 65                                      ...e
 19901 ms  0x6c80 privk:0x7f624b466020::7f624b466020  e5 e5 e5 e5                                      ....
 19901 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19901 ms  0x6c80 privk:0x7f624b45d020::7f624b45d020  a0 e6 e4 62                                      ...b
 19901 ms  0x6c80 privk:0x7f624b45d020::7f624b45d020  e5 e5 e5 e5                                      ....
 19901 ms  0x6c80 PK11_Encrypt()
 19901 ms  0x6c80 symkey:0x7f626d268880
 19902 ms  0x6c80 SSL_ImportFD()
 19902 ms  0x6c80 ret:0x7f624d73ff40
 19902 ms  0x6c80 SSL_AuthCertificateHook()
 19902 ms  0x6c80 fd:0x7f624d73ff40
 19902 ms  0x6c80 ret:0x0
 19902 ms  0x6c80 PK11_Encrypt()
 19902 ms  0x6c80 symkey:0x7f626d268880
 19903 ms  0x6c80 PR_Connect()
 19903 ms  0x6c80 fd:0x7f624d73ff40
 19903 ms  0x6c80 SSL_ImportFD()
 19903 ms  0x6c80 ret:0x7f6240371430
 19903 ms  0x6c80 SSL_AuthCertificateHook()
 19903 ms  0x6c80 fd:0x7f6240371430
 19903 ms  0x6c80 ret:0x0
 19903 ms  0x6c80 PR_Connect()
 19903 ms  0x6c80 fd:0x7f6240371430
 19903 ms  0x6c80 PK11_Encrypt()
 19903 ms  0x6c80 symkey:0x7f626d268880
 19909 ms  0x6c80 SSL_ImportFD()
 19909 ms  0x6c80 ret:0x7f62611e7e50
 19909 ms  0x6c80 SSL_AuthCertificateHook()
 19909 ms  0x6c80 fd:0x7f62611e7e50
 19909 ms  0x6c80 ret:0x0
 19909 ms  0x6c80 PR_Connect()
 19909 ms  0x6c80 fd:0x7f62611e7e50
 19909 ms  0x6c80 SSL_ImportFD()
 19909 ms  0x6c80 ret:0x7f624d583fa0
 19909 ms  0x6c80 SSL_AuthCertificateHook()
 19909 ms  0x6c80 fd:0x7f624d583fa0
 19909 ms  0x6c80 ret:0x0
 19909 ms  0x6c80 PR_Connect()
 19909 ms  0x6c80 fd:0x7f624d583fa0
 19909 ms  0x6c80 SSL_ImportFD()
 19909 ms  0x6c80 ret:0x7f624d73fca0
 19909 ms  0x6c80 SSL_AuthCertificateHook()
 19909 ms  0x6c80 fd:0x7f624d73fca0
 19909 ms  0x6c80 ret:0x0
 19909 ms  0x6c80 PR_Connect()
 19909 ms  0x6c80 fd:0x7f624d73fca0
 19909 ms  0x6c80 SSL_ImportFD()
 19909 ms  0x6c80 ret:0x7f624d73fd30
 19909 ms  0x6c80 SSL_AuthCertificateHook()
 19909 ms  0x6c80 fd:0x7f624d73fd30
 19910 ms  0x6c80 ret:0x0
 19910 ms  0x6c80 PR_Connect()
 19910 ms  0x6c80 fd:0x7f624d73fd30
 19957 ms  0x6c80 SSL_ImportFD()
 19957 ms  0x6c80 ret:0x7f6268d1ab20
 19957 ms  0x6c80 SSL_AuthCertificateHook()
 19957 ms  0x6c80 fd:0x7f6268d1ab20
 19957 ms  0x6c80 ret:0x0
 19957 ms  0x6c80 PR_Connect()
 19957 ms  0x6c80 fd:0x7f6268d1ab20
 19958 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19958 ms  0x6c80 privk:0x7f624035a020::7f624035a020  80 7d d9 6d                                      .}.m
 19958 ms  0x6c80 privk:0x7f624035a020::7f624035a020  e5 e5 e5 e5                                      ....
 19958 ms  0x6c80 SECKEY_DestroyPrivateKey()
 19958 ms  0x6c80 privk:0x7f6240358020::7f6240358020  a0 7b d9 6d                                      .{.m
 19958 ms  0x6c80 privk:0x7f6240358020::7f6240358020  e5 e5 e5 e5                                      ....
 19958 ms  0x6c80 PR_Close()
 19958 ms  0x6c80 fd:0x7f624b519100
 19958 ms     | 0x6c80 PK11_Encrypt()
 19958 ms     | 0x6c80 symkey:0x7f626ead1180
           /* TID 0x6c88 */
 19960 ms  0x6c88 PR_Close()
 19960 ms  0x6c88 fd:0x7f624d583760
 19961 ms  0x6c88 PR_Close()
 19961 ms  0x6c88 fd:0x7f6240371520
           /* TID 0x6c80 */
 19968 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19968 ms  0x6c80 cx:0x7f624b384648
 19969 ms     | 0x6c80 EC_ValidatePublicKey()
 19969 ms     | 0x6c80 ret:0x0
 19969 ms  0x6c80 ret:0x7f6240358020::7f6240358020  b0 1f e4 65                                      ...e
 19969 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19969 ms  0x6c80 cx:0x7f624b384648
 19970 ms     | 0x6c80 EC_ValidatePublicKey()
 19971 ms     | 0x6c80 ret:0x0
 19971 ms  0x6c80 ret:0x7f624035a020::7f624035a020  d0 43 9a 69                                      .C.i
 19976 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19976 ms  0x6c80 cx:0x7f624d5a8aa8
 19976 ms     | 0x6c80 EC_ValidatePublicKey()
 19976 ms     | 0x6c80 ret:0x0
 19976 ms  0x6c80 ret:0x7f624b455820::7f624b455820  90 57 c0 6d                                      .W.m
 19976 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19976 ms  0x6c80 cx:0x7f624d5a8aa8
 19977 ms     | 0x6c80 EC_ValidatePublicKey()
 19978 ms     | 0x6c80 ret:0x0
 19978 ms  0x6c80 ret:0x7f624b465820::7f624b465820  a0 5b c0 6d                                      .[.m
 19986 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19986 ms  0x6c80 cx:0x7f624d5a8288
 19987 ms     | 0x6c80 EC_ValidatePublicKey()
 19987 ms     | 0x6c80 ret:0x0
 19987 ms  0x6c80 ret:0x7f624b6d9820::7f624b6d9820  80 5d c0 6d                                      .].m
 19987 ms  0x6c80 SECKEY_CreateECPrivateKey()
 19987 ms  0x6c80 cx:0x7f624d5a8288
 19987 ms     | 0x6c80 EC_ValidatePublicKey()
 19989 ms     | 0x6c80 ret:0x0
 19989 ms  0x6c80 ret:0x7f624d529820::7f624d529820  60 20 c8 6d                                      ` .m
 20002 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20002 ms  0x6c80 privk:0x7f624b427020::7f624b427020  60 7f 3a 66                                      `.:f
 20002 ms  0x6c80 privk:0x7f624b427020::7f624b427020  e5 e5 e5 e5                                      ....
 20002 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20002 ms  0x6c80 privk:0x7f624b3c2020::7f624b3c2020  f0 71 1b 66                                      .q.f
 20003 ms  0x6c80 privk:0x7f624b3c2020::7f624b3c2020  e5 e5 e5 e5                                      ....
 20010 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20010 ms  0x6c80 privk:0x7f624b434820::7f624b434820  00 f1 de 68                                      ...h
 20010 ms  0x6c80 privk:0x7f624b434820::7f624b434820  e5 e5 e5 e5                                      ....
 20010 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20010 ms  0x6c80 privk:0x7f624b429820::7f624b429820  40 b2 c8 68                                      @..h
 20010 ms  0x6c80 privk:0x7f624b429820::7f624b429820  e5 e5 e5 e5                                      ....
 20010 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20010 ms  0x6c80 cx:0x7f624d5a9ae8
 20011 ms     | 0x6c80 EC_ValidatePublicKey()
 20011 ms     | 0x6c80 ret:0x0
 20011 ms  0x6c80 ret:0x7f624b3c2020::7f624b3c2020  f0 71 1b 66                                      .q.f
 20011 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20011 ms  0x6c80 cx:0x7f624d5a9ae8
 20012 ms     | 0x6c80 EC_ValidatePublicKey()
 20013 ms     | 0x6c80 ret:0x0
 20013 ms  0x6c80 ret:0x7f624b427020::7f624b427020  60 7f 3a 66                                      `.:f
 20021 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20021 ms  0x6c80 privk:0x7f624b46a020::7f624b46a020  d0 28 c8 68                                      .(.h
 20021 ms  0x6c80 privk:0x7f624b46a020::7f624b46a020  e5 e5 e5 e5                                      ....
 20021 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20021 ms  0x6c80 privk:0x7f624b466820::7f624b466820  40 a7 9e 69                                      @..i
 20021 ms  0x6c80 privk:0x7f624b466820::7f624b466820  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 20025 ms  0x6c88 PR_Close()
 20025 ms  0x6c88 fd:0x7f62403717f0
 20026 ms  0x6c88 PR_Close()
 20026 ms  0x6c88 fd:0x7f62403717f0
 20030 ms  0x6c88 PR_Close()
 20030 ms  0x6c88 fd:0x7f624b5197c0
 20030 ms  0x6c88 PR_Close()
 20030 ms  0x6c88 fd:0x7f6240371af0
 20030 ms  0x6c88 PR_Close()
 20030 ms  0x6c88 fd:0x7f6240371af0
 20031 ms  0x6c88 PR_Close()
 20031 ms  0x6c88 fd:0x7f62403717c0
 20033 ms  0x6c88 PR_Close()
 20033 ms  0x6c88 fd:0x7f62403717c0
           /* TID 0x6c80 */
 20038 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20038 ms  0x6c80 privk:0x7f624b4e1820::7f624b4e1820  a0 61 91 6a                                      .a.j
 20038 ms  0x6c80 privk:0x7f624b4e1820::7f624b4e1820  e5 e5 e5 e5                                      ....
 20038 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20038 ms  0x6c80 privk:0x7f624b4d8020::7f624b4d8020  50 d6 08 6a                                      P..j
 20038 ms  0x6c80 privk:0x7f624b4d8020::7f624b4d8020  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 20039 ms  0x6c88 PR_Close()
 20039 ms  0x6c88 fd:0x7f6240371a60
           /* TID 0x6c80 */
 20047 ms  0x6c80 PK11_Derive()
 20047 ms  0x6c80 basekey:0x7f626ea08200
 20047 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20047 ms  0x6c80 ret:0x7f626ead1080
 20047 ms  0x6c80 PK11_PubDeriveWithKDF()
 20047 ms  0x6c80 seckey:0x7f624b455820
 20047 ms     | 0x6c80 EC_ValidatePublicKey()
 20047 ms     | 0x6c80 ret:0x0
 20048 ms  0x6c80 ret:0x7f626ea08200
 20048 ms  SECKEY_ECParamsToKeySize()
 20048 ms  0x6c80 ret:0xff
 20048 ms  0x6c80 PK11_DeriveWithFlags()
 20048 ms  0x6c80 basekey:0x7f626ead1080
 20048 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20048 ms  0x6c80 ret:0x7f626eeccb00
 20048 ms  0x6c80 PK11_Derive()
 20048 ms  0x6c80 basekey:0x7f626ea08200
 20048 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20048 ms  0x6c80 ret:0x7f626ee48c80
 20048 ms  0x6c80 PK11_DeriveWithFlags()
 20048 ms  0x6c80 basekey:0x7f626ee48c80
 20048 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20048 ms  0x6c80 ret:0x7f626ead1080
 20048 ms  0x6c80 PK11_DeriveWithFlags()
 20048 ms  0x6c80 basekey:0x7f626ee48c80
 20048 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20048 ms  0x6c80 ret:0x7f626ea08200
 20048 ms  0x6c80 PK11_DeriveWithFlags()
 20048 ms  0x6c80 basekey:0x7f626ee48c80
 20048 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20048 ms  0x6c80 ret:0x7f626eeccb00
 20048 ms  0x6c80 PK11_Derive()
 20048 ms  0x6c80 basekey:0x7f625fc9ac80
 20048 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20048 ms  0x6c80 ret:0x7f626ead1c80
 20048 ms  0x6c80 PK11_DeriveWithFlags()
 20048 ms  0x6c80 basekey:0x7f626ea08200
 20048 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20048 ms  0x6c80 ret:0x7f626ee48c80
 20048 ms  0x6c80 PK11_DeriveWithFlags()
 20048 ms  0x6c80 basekey:0x7f626ea08200
 20048 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20048 ms  0x6c80 ret:0x7f626eeccb00
 20049 ms  0x6c80 PK11_DeriveWithFlags()
 20049 ms  0x6c80 basekey:0x7f626ea08200
 20049 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20049 ms  0x6c80 ret:0x7f626eeccb00
 20049 ms  0x6c80 SSL_AuthCertificateComplete()
 20049 ms  0x6c80 fd:0x7f6240371430
 20049 ms  0x6c80 err:0x0
 20049 ms     | 0x6c80 PK11_DeriveWithFlags()
 20049 ms     | 0x6c80 basekey:0x7f626ead1c80
 20049 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20049 ms     | 0x6c80 ret:0x7f626eeccb00
 20049 ms     | 0x6c80 PK11_DeriveWithFlags()
 20049 ms     | 0x6c80 basekey:0x7f626ead1c80
 20049 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20050 ms     | 0x6c80 ret:0x7f625fc9ac80
 20050 ms     | 0x6c80 PK11_DeriveWithFlags()
 20050 ms     | 0x6c80 basekey:0x7f626ead1c80
 20050 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20050 ms     | 0x6c80 ret:0x7f626ead1a80
 20050 ms     | 0x6c80 PK11_DeriveWithFlags()
 20050 ms     | 0x6c80 basekey:0x7f626ead1080
 20050 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20050 ms     | 0x6c80 ret:0x7f626ead1800
 20050 ms     | 0x6c80 PK11_DeriveWithFlags()
 20050 ms     | 0x6c80 basekey:0x7f626ead1080
 20050 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20050 ms     | 0x6c80 ret:0x7f626ead1180
 20050 ms     | 0x6c80 PK11_DeriveWithFlags()
 20050 ms     | 0x6c80 basekey:0x7f625fc9ac80
 20050 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20050 ms     | 0x6c80 ret:0x7f626ead1180
 20050 ms     | 0x6c80 PK11_DeriveWithFlags()
 20050 ms     | 0x6c80 basekey:0x7f625fc9ac80
 20050 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20050 ms     | 0x6c80 ret:0x7f626dfeef00
 20050 ms     | 0x6c80 PK11_DeriveWithFlags()
 20050 ms     | 0x6c80 basekey:0x7f626ead1080
 20050 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20050 ms     | 0x6c80 ret:0x7f626ee48c80
 20050 ms     | 0x6c80 PK11_Encrypt()
 20050 ms     | 0x6c80 symkey:0x7f626ead1800
 20052 ms     | 0x6c80 PK11_DeriveWithFlags()
 20052 ms     | 0x6c80 basekey:0x7f626eeccb00
 20052 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20052 ms     | 0x6c80 ret:0x7f626ee48c80
 20052 ms     | 0x6c80 PK11_DeriveWithFlags()
 20052 ms     | 0x6c80 basekey:0x7f626eeccb00
 20052 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20052 ms     | 0x6c80 ret:0x7f626dfeef00
 20052 ms     | 0x6c80 PK11_DeriveWithFlags()
 20052 ms     | 0x6c80 basekey:0x7f626ead1c80
 20052 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20052 ms     | 0x6c80 ret:0x7f626ead1800
 20052 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 20052 ms     | 0x6c80 privk:0x7f624b465820::7f624b465820  a0 5b c0 6d                                      .[.m
 20052 ms     | 0x6c80 privk:0x7f624b465820::7f624b465820  e5 e5 e5 e5                                      ....
 20052 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 20052 ms     | 0x6c80 privk:0x7f624b455820::7f624b455820  90 57 c0 6d                                      .W.m
 20052 ms     | 0x6c80 privk:0x7f624b455820::7f624b455820  e5 e5 e5 e5                                      ....
 20052 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20052 ms  0x6c80 privk:0x7f624b577820::7f624b577820  00 c1 2a 6d                                      ..*m
 20052 ms  0x6c80 privk:0x7f624b577820::7f624b577820  e5 e5 e5 e5                                      ....
 20053 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20053 ms  0x6c80 privk:0x7f624b4e8820::7f624b4e8820  70 e9 29 6d                                      p.)m
 20053 ms  0x6c80 privk:0x7f624b4e8820::7f624b4e8820  e5 e5 e5 e5                                      ....
 20054 ms  0x6c80 PK11_Encrypt()
 20054 ms  0x6c80 symkey:0x7f626ee48c80
 20055 ms  0x6c80 SSL_ImportFD()
 20055 ms  0x6c80 ret:0x7f6240371af0
 20055 ms  0x6c80 SSL_AuthCertificateHook()
 20055 ms  0x6c80 fd:0x7f6240371af0
 20055 ms  0x6c80 ret:0x0
 20055 ms  0x6c80 PR_Connect()
 20055 ms  0x6c80 fd:0x7f6240371af0
 20055 ms  0x6c80 PK11_Derive()
 20055 ms  0x6c80 basekey:0x7f626ead1080
 20055 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20055 ms  0x6c80 ret:0x7f626ea08200
 20055 ms  0x6c80 PK11_Encrypt()
 20055 ms  0x6c80 symkey:0x7f626dfeef80
 20056 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20056 ms  0x6c80 privk:0x7f624b581820::7f624b581820  f0 91 cf 6c                                      ...l
 20056 ms  0x6c80 privk:0x7f624b581820::7f624b581820  e5 e5 e5 e5                                      ....
 20056 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20056 ms  0x6c80 privk:0x7f624b578820::7f624b578820  a0 e6 c5 68                                      ...h
 20057 ms  0x6c80 privk:0x7f624b578820::7f624b578820  e5 e5 e5 e5                                      ....
 20059 ms  0x6c80 PK11_Encrypt()
 20059 ms  0x6c80 symkey:0x7f626dfeef80
 20060 ms  0x6c80 PK11_Derive()
 20060 ms  0x6c80 basekey:0x7f626ead1c80
 20060 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20060 ms  0x6c80 ret:0x7f626dfeef00
 20060 ms  0x6c80 PK11_PubDeriveWithKDF()
 20060 ms  0x6c80 seckey:0x7f624b6d9820
 20060 ms     | 0x6c80 EC_ValidatePublicKey()
 20060 ms     | 0x6c80 ret:0x0
 20060 ms  0x6c80 ret:0x7f626ead1c80
 20060 ms  SECKEY_ECParamsToKeySize()
 20060 ms  0x6c80 ret:0xff
 20060 ms  0x6c80 PK11_DeriveWithFlags()
 20060 ms  0x6c80 basekey:0x7f626dfeef00
 20060 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20060 ms  0x6c80 ret:0x7f626f8fcd80
 20060 ms  0x6c80 PK11_Derive()
 20060 ms  0x6c80 basekey:0x7f626ead1c80
 20060 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20060 ms  0x6c80 ret:0x7f626f8fce80
 20060 ms  0x6c80 PK11_DeriveWithFlags()
 20060 ms  0x6c80 basekey:0x7f626f8fce80
 20060 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20060 ms  0x6c80 ret:0x7f626dfeef00
 20060 ms  0x6c80 PK11_DeriveWithFlags()
 20060 ms  0x6c80 basekey:0x7f626f8fce80
 20060 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20060 ms  0x6c80 ret:0x7f626ead1c80
 20060 ms  0x6c80 PK11_DeriveWithFlags()
 20060 ms  0x6c80 basekey:0x7f626f8fce80
 20060 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20060 ms  0x6c80 ret:0x7f626f8fcd80
 20060 ms  0x6c80 PK11_Derive()
 20060 ms  0x6c80 basekey:0x7f626f8fcf00
 20060 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20060 ms  0x6c80 ret:0x7f626f8fcf80
 20060 ms  0x6c80 PK11_DeriveWithFlags()
 20060 ms  0x6c80 basekey:0x7f626ead1c80
 20060 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20060 ms  0x6c80 ret:0x7f626f8fce80
 20060 ms  0x6c80 PK11_DeriveWithFlags()
 20060 ms  0x6c80 basekey:0x7f626ead1c80
 20060 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20060 ms  0x6c80 ret:0x7f626f8fcd80
 20063 ms  0x6c80 PK11_DeriveWithFlags()
 20063 ms  0x6c80 basekey:0x7f626ead1c80
 20063 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20063 ms  0x6c80 ret:0x7f626f8fcd80
 20063 ms  0x6c80 SSL_AuthCertificateComplete()
 20063 ms  0x6c80 fd:0x7f624d73ff40
 20063 ms  0x6c80 err:0x0
 20063 ms     | 0x6c80 PK11_DeriveWithFlags()
 20063 ms     | 0x6c80 basekey:0x7f626f8fcf80
 20063 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20063 ms     | 0x6c80 ret:0x7f626f8fcd80
 20063 ms     | 0x6c80 PK11_DeriveWithFlags()
 20063 ms     | 0x6c80 basekey:0x7f626f8fcf80
 20063 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20063 ms     | 0x6c80 ret:0x7f626f8fcf00
 20063 ms     | 0x6c80 PK11_DeriveWithFlags()
 20063 ms     | 0x6c80 basekey:0x7f626f8fcf80
 20063 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20063 ms     | 0x6c80 ret:0x7f626f8fd080
 20063 ms     | 0x6c80 PK11_DeriveWithFlags()
 20063 ms     | 0x6c80 basekey:0x7f626dfeef00
 20063 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20063 ms     | 0x6c80 ret:0x7f626f8fd100
 20063 ms     | 0x6c80 PK11_DeriveWithFlags()
 20063 ms     | 0x6c80 basekey:0x7f626dfeef00
 20063 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20063 ms     | 0x6c80 ret:0x7f626f8fd180
 20063 ms     | 0x6c80 PK11_DeriveWithFlags()
 20063 ms     | 0x6c80 basekey:0x7f626f8fcf00
 20063 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20063 ms     | 0x6c80 ret:0x7f626f8fd180
 20063 ms     | 0x6c80 PK11_DeriveWithFlags()
 20063 ms     | 0x6c80 basekey:0x7f626f8fcf00
 20063 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20063 ms     | 0x6c80 ret:0x7f626f8fd200
 20063 ms     | 0x6c80 PK11_DeriveWithFlags()
 20063 ms     | 0x6c80 basekey:0x7f626dfeef00
 20063 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20063 ms     | 0x6c80 ret:0x7f626f8fce80
 20063 ms     | 0x6c80 PK11_Encrypt()
 20063 ms     | 0x6c80 symkey:0x7f626f8fd100
 20070 ms     | 0x6c80 PK11_DeriveWithFlags()
 20070 ms     | 0x6c80 basekey:0x7f626f8fcd80
 20070 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20070 ms     | 0x6c80 ret:0x7f626f8fce80
 20070 ms     | 0x6c80 PK11_DeriveWithFlags()
 20070 ms     | 0x6c80 basekey:0x7f626f8fcd80
 20070 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20070 ms     | 0x6c80 ret:0x7f626f8fd200
 20070 ms     | 0x6c80 PK11_DeriveWithFlags()
 20070 ms     | 0x6c80 basekey:0x7f626f8fcf80
 20070 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20070 ms     | 0x6c80 ret:0x7f626f8fd100
 20070 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 20070 ms     | 0x6c80 privk:0x7f624d529820::7f624d529820  60 20 c8 6d                                      ` .m
 20070 ms     | 0x6c80 privk:0x7f624d529820::7f624d529820  e5 e5 e5 e5                                      ....
 20070 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 20070 ms     | 0x6c80 privk:0x7f624b6d9820::7f624b6d9820  80 5d c0 6d                                      .].m
 20070 ms     | 0x6c80 privk:0x7f624b6d9820::7f624b6d9820  e5 e5 e5 e5                                      ....
 20073 ms  SECKEY_ECParamsToKeySize()
 20073 ms  0x6c80 ret:0x100
 20073 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20073 ms  0x6c80 cx:0x7f624b3844a8
 20073 ms     | 0x6c80 EC_ValidatePublicKey()
 20075 ms     | 0x6c80 ret:0x0
 20075 ms  0x6c80 ret:0x7f624b45e820::7f624b45e820  60 8f c8 68                                      `..h
 20075 ms  0x6c80 PK11_PubDeriveWithKDF()
 20075 ms  0x6c80 seckey:0x7f624b45e820
 20075 ms     | 0x6c80 EC_ValidatePublicKey()
 20081 ms     | 0x6c80 ret:0x0
 20082 ms  0x6c80 ret:0x7f626ead1c80
 20082 ms  0x6c80 PK11_DeriveWithFlags()
 20082 ms  0x6c80 basekey:0x7f626ead1c80
 20082 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20083 ms  0x6c80 ret:0x7f626dfeef00
 20083 ms  0x6c80 PK11_Derive()
 20083 ms  0x6c80 basekey:0x7f626dfeef00
 20083 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20083 ms  0x6c80 ret:0x7f626f8fcf80
 20083 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20083 ms  0x6c80 privk:0x7f624b45e820::7f624b45e820  60 8f c8 68                                      `..h
 20083 ms  0x6c80 privk:0x7f624b45e820::7f624b45e820  e5 e5 e5 e5                                      ....
 20083 ms  0x6c80 PK11_Encrypt()
 20083 ms  0x6c80 symkey:0x7f626f8fdc80
 20089 ms  SECKEY_ECParamsToKeySize()
 20089 ms  0x6c80 ret:0x100
 20089 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20089 ms  0x6c80 cx:0x7f624d5a9ae8
 20090 ms     | 0x6c80 EC_ValidatePublicKey()
 20091 ms     | 0x6c80 ret:0x0
 20091 ms  0x6c80 ret:0x7f624b466020::7f624b466020  20 de cf 68                                       ..h
 20091 ms  0x6c80 PK11_PubDeriveWithKDF()
 20091 ms  0x6c80 seckey:0x7f624b466020
 20091 ms     | 0x6c80 EC_ValidatePublicKey()
 20093 ms     | 0x6c80 ret:0x0
 20094 ms  0x6c80 ret:0x7f626ead1c80
 20094 ms  0x6c80 PK11_DeriveWithFlags()
 20094 ms  0x6c80 basekey:0x7f626ead1c80
 20094 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20094 ms  0x6c80 ret:0x7f626f8fd200
 20094 ms  0x6c80 PK11_Derive()
 20094 ms  0x6c80 basekey:0x7f626f8fd200
 20094 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20094 ms  0x6c80 ret:0x7f626df3f680
 20094 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20094 ms  0x6c80 privk:0x7f624b466020::7f624b466020  20 de cf 68                                       ..h
 20094 ms  0x6c80 privk:0x7f624b466020::7f624b466020  e5 e5 e5 e5                                      ....
 20094 ms  0x6c80 PK11_Encrypt()
 20094 ms  0x6c80 symkey:0x7f626f8fde80
 20096 ms  0x6c80 PK11_Encrypt()
 20096 ms  0x6c80 symkey:0x7f626f8fce80
 20096 ms  0x6c80 SSL_AuthCertificateComplete()
 20096 ms  0x6c80 fd:0x7f624b40d9a0
 20096 ms  0x6c80 err:0x0
 20096 ms  0x6c80 PK11_Encrypt()
 20096 ms  0x6c80 symkey:0x7f626ea07e80
 20097 ms  0x6c80 SSL_AuthCertificateComplete()
 20097 ms  0x6c80 fd:0x7f6268d1ab20
 20097 ms  0x6c80 err:0x0
 20097 ms  0x6c80 PK11_Encrypt()
 20097 ms  0x6c80 symkey:0x7f626f8fdc80
 20098 ms  0x6c80 PK11_Encrypt()
 20098 ms  0x6c80 symkey:0x7f626f8fde80
 20098 ms  0x6c80 SSL_ImportFD()
 20098 ms  0x6c80 ret:0x7f624b5195e0
 20098 ms  0x6c80 SSL_AuthCertificateHook()
 20098 ms  0x6c80 fd:0x7f624b5195e0
 20098 ms  0x6c80 ret:0x0
 20098 ms  0x6c80 PR_Connect()
 20098 ms  0x6c80 fd:0x7f624b5195e0
 20098 ms  0x6c80 SSL_ImportFD()
 20098 ms  0x6c80 ret:0x7f624d583b20
 20098 ms  0x6c80 SSL_AuthCertificateHook()
 20098 ms  0x6c80 fd:0x7f624d583b20
 20099 ms  0x6c80 ret:0x0
 20099 ms  0x6c80 PR_Connect()
 20099 ms  0x6c80 fd:0x7f624d583b20
 20099 ms  0x6c80 SSL_ImportFD()
 20099 ms  0x6c80 ret:0x7f624d73f310
 20099 ms  0x6c80 SSL_AuthCertificateHook()
 20099 ms  0x6c80 fd:0x7f624d73f310
 20099 ms  0x6c80 ret:0x0
 20099 ms  0x6c80 PR_Connect()
 20099 ms  0x6c80 fd:0x7f624d73f310
 20099 ms  0x6c80 SSL_ImportFD()
 20099 ms  0x6c80 ret:0x7f624d73f3a0
 20099 ms  0x6c80 SSL_AuthCertificateHook()
 20099 ms  0x6c80 fd:0x7f624d73f3a0
 20099 ms  0x6c80 ret:0x0
 20099 ms  0x6c80 PR_Connect()
 20099 ms  0x6c80 fd:0x7f624d73f3a0
 20103 ms  0x6c80 SSL_ImportFD()
 20103 ms  0x6c80 ret:0x7f6240371be0
 20103 ms  0x6c80 SSL_AuthCertificateHook()
 20103 ms  0x6c80 fd:0x7f6240371be0
 20104 ms  0x6c80 ret:0x0
 20104 ms  0x6c80 PR_Connect()
 20104 ms  0x6c80 fd:0x7f6240371be0
 20104 ms  0x6c80 SSL_ImportFD()
 20104 ms  0x6c80 ret:0x7f624d73f940
 20104 ms  0x6c80 SSL_AuthCertificateHook()
 20104 ms  0x6c80 fd:0x7f624d73f940
 20104 ms  0x6c80 ret:0x0
 20104 ms  0x6c80 PR_Connect()
 20104 ms  0x6c80 fd:0x7f624d73f940
 20118 ms  0x6c80 PK11_DeriveWithFlags()
 20118 ms  0x6c80 basekey:0x7f626ead1800
 20118 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20118 ms  0x6c80 ret:0x7f626ead1c80
 20118 ms  0x6c80 PK11_DeriveWithFlags()
 20118 ms  0x6c80 basekey:0x7f626ead1800
 20118 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20118 ms  0x6c80 ret:0x7f626ead1c80
 20118 ms  0x6c80 PR_Close()
 20118 ms  0x6c80 fd:0x7f6240371430
 20118 ms     | 0x6c80 PK11_Encrypt()
 20118 ms     | 0x6c80 symkey:0x7f626ee48c80
           /* TID 0x6c88 */
 20119 ms  0x6c88 PR_Close()
 20119 ms  0x6c88 fd:0x7f62403716a0
           /* TID 0x6c80 */
 20119 ms  0x6c80 PK11_Encrypt()
 20119 ms  0x6c80 symkey:0x7f626d29c580
 20125 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20125 ms  0x6c80 cx:0x7f624d5a7da8
 20126 ms     | 0x6c80 EC_ValidatePublicKey()
 20126 ms     | 0x6c80 ret:0x0
 20126 ms  0x6c80 ret:0x7f624b433020::7f624b433020  10 af 1b 66                                      ...f
 20126 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20126 ms  0x6c80 cx:0x7f624d5a7da8
 20126 ms     | 0x6c80 EC_ValidatePublicKey()
 20128 ms     | 0x6c80 ret:0x0
 20128 ms  0x6c80 ret:0x7f624b467020::7f624b467020  20 de cf 68                                       ..h
 20131 ms  0x6c80 PK11_DeriveWithFlags()
 20131 ms  0x6c80 basekey:0x7f626f8fd100
 20131 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20131 ms  0x6c80 ret:0x7f626ead1a80
 20131 ms  0x6c80 PK11_DeriveWithFlags()
 20131 ms  0x6c80 basekey:0x7f626f8fd100
 20131 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20131 ms  0x6c80 ret:0x7f626ead1a80
 20131 ms  0x6c80 PR_Close()
 20131 ms  0x6c80 fd:0x7f624d73ff40
 20131 ms     | 0x6c80 PK11_Encrypt()
 20131 ms     | 0x6c80 symkey:0x7f626f8fce80
 20136 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20136 ms  0x6c80 cx:0x7f624d5a9468
 20136 ms     | 0x6c80 EC_ValidatePublicKey()
 20136 ms     | 0x6c80 ret:0x0
 20136 ms  0x6c80 ret:0x7f624b45e020::7f624b45e020  b0 cf d7 68                                      ...h
 20137 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20137 ms  0x6c80 cx:0x7f624d5a9468
 20137 ms     | 0x6c80 EC_ValidatePublicKey()
 20139 ms     | 0x6c80 ret:0x0
 20139 ms  0x6c80 ret:0x7f624b46e820::7f624b46e820  90 9c df 68                                      ...h
 20139 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20139 ms  0x6c80 cx:0x7f624d5a8c48
 20139 ms     | 0x6c80 EC_ValidatePublicKey()
 20139 ms     | 0x6c80 ret:0x0
 20139 ms  0x6c80 ret:0x7f624b4dd820::7f624b4dd820  40 a7 9e 69                                      @..i
 20140 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20140 ms  0x6c80 cx:0x7f624d5a8c48
 20140 ms     | 0x6c80 EC_ValidatePublicKey()
 20147 ms     | 0x6c80 ret:0x0
 20147 ms  0x6c80 ret:0x7f624b4e3020::7f624b4e3020  d0 2d ec 69                                      .-.i
 20147 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20147 ms  0x6c80 privk:0x7f624b427020::7f624b427020  60 7f 3a 66                                      `.:f
 20147 ms  0x6c80 privk:0x7f624b427020::7f624b427020  e5 e5 e5 e5                                      ....
 20147 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20147 ms  0x6c80 privk:0x7f624b3c2020::7f624b3c2020  f0 71 1b 66                                      .q.f
 20148 ms  0x6c80 privk:0x7f624b3c2020::7f624b3c2020  e5 e5 e5 e5                                      ....
 20148 ms  0x6c80 SSL_ImportFD()
 20148 ms  0x6c80 ret:0x7f6240371ee0
 20148 ms  0x6c80 SSL_AuthCertificateHook()
 20148 ms  0x6c80 fd:0x7f6240371ee0
 20148 ms  0x6c80 ret:0x0
 20148 ms  0x6c80 PR_Connect()
 20148 ms  0x6c80 fd:0x7f6240371ee0
 20154 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20154 ms  0x6c80 cx:0x7f626d2b6948
 20155 ms     | 0x6c80 EC_ValidatePublicKey()
 20155 ms     | 0x6c80 ret:0x0
 20155 ms  0x6c80 ret:0x7f624b426820::7f624b426820  e0 ac 32 66                                      ..2f
 20155 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20155 ms  0x6c80 cx:0x7f626d2b6948
 20156 ms     | 0x6c80 EC_ValidatePublicKey()
 20157 ms     | 0x6c80 ret:0x0
 20157 ms  0x6c80 ret:0x7f624b4e8020::7f624b4e8020  40 dc 08 6a                                      @..j
 20160 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20160 ms  0x6c80 cx:0x7f626df5c908
 20160 ms     | 0x6c80 EC_ValidatePublicKey()
 20160 ms     | 0x6c80 ret:0x0
 20160 ms  0x6c80 ret:0x7f624b577820::7f624b577820  f0 db 90 6a                                      ...j
 20160 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20160 ms  0x6c80 cx:0x7f626df5c908
 20161 ms     | 0x6c80 EC_ValidatePublicKey()
 20162 ms     | 0x6c80 ret:0x0
 20162 ms  0x6c80 ret:0x7f624b580820::7f624b580820  b0 cf 96 6a                                      ...j
 20166 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20166 ms  0x6c80 cx:0x7f626df5d2c8
 20166 ms     | 0x6c80 EC_ValidatePublicKey()
 20167 ms     | 0x6c80 ret:0x0
 20167 ms  0x6c80 ret:0x7f624b5a6820::7f624b5a6820  50 e6 29 6d                                      P.)m
 20167 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20167 ms  0x6c80 cx:0x7f626df5d2c8
 20167 ms     | 0x6c80 EC_ValidatePublicKey()
 20169 ms     | 0x6c80 ret:0x0
 20169 ms  0x6c80 ret:0x7f624b6d7020::7f624b6d7020  b0 c0 2a 6d                                      ..*m
 20178 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20178 ms  0x6c80 cx:0x7f626df5cde8
 20178 ms     | 0x6c80 EC_ValidatePublicKey()
 20178 ms     | 0x6c80 ret:0x0
 20178 ms  0x6c80 ret:0x7f624b6ee020::7f624b6ee020  c0 54 c0 6d                                      .T.m
 20178 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20178 ms  0x6c80 cx:0x7f626df5cde8
 20179 ms     | 0x6c80 EC_ValidatePublicKey()
 20180 ms     | 0x6c80 ret:0x0
 20180 ms  0x6c80 ret:0x7f624d530820::7f624d530820  50 5b c0 6d                                      P[.m
 20181 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20181 ms  0x6c80 cx:0x7f626df5dae8
 20181 ms     | 0x6c80 EC_ValidatePublicKey()
 20181 ms     | 0x6c80 ret:0x0
 20182 ms  0x6c80 ret:0x7f624d5de020::7f624d5de020  80 5d c0 6d                                      .].m
 20182 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20182 ms  0x6c80 cx:0x7f626df5dae8
 20182 ms     | 0x6c80 EC_ValidatePublicKey()
 20184 ms     | 0x6c80 ret:0x0
 20184 ms  0x6c80 ret:0x7f624d5e0020::7f624d5e0020  60 20 c8 6d                                      ` .m
 20196 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20196 ms  0x6c80 cx:0x7f626df5d7a8
 20196 ms     | 0x6c80 EC_ValidatePublicKey()
 20196 ms     | 0x6c80 ret:0x0
 20196 ms  0x6c80 ret:0x7f624d719820::7f624d719820  80 23 c8 6d                                      .#.m
 20197 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20197 ms  0x6c80 cx:0x7f626df5d7a8
 20197 ms     | 0x6c80 EC_ValidatePublicKey()
 20199 ms     | 0x6c80 ret:0x0
 20199 ms  0x6c80 ret:0x7f624d7d0020::7f624d7d0020  60 25 c8 6d                                      `%.m
 20199 ms  0x6c80 PR_Connect()
 20199 ms  0x6c80 fd:0x7f624ec7bb20
           /* TID 0x6c88 */
 20201 ms  0x6c88 PR_Close()
 20201 ms  0x6c88 fd:0x7f62403719a0
           /* TID 0x6c80 */
 20201 ms  0x6c80 SSL_ImportFD()
 20201 ms  0x6c80 ret:0x7f6240371a90
 20201 ms  0x6c80 SSL_AuthCertificateHook()
 20201 ms  0x6c80 fd:0x7f6240371a90
 20201 ms  0x6c80 ret:0x0
 20201 ms  0x6c80 PR_Connect()
 20201 ms  0x6c80 fd:0x7f6240371a90
 20201 ms  0x6c80 SSL_ImportFD()
 20201 ms  0x6c80 ret:0x7f624b519460
 20201 ms  0x6c80 SSL_AuthCertificateHook()
 20201 ms  0x6c80 fd:0x7f624b519460
 20201 ms  0x6c80 ret:0x0
 20201 ms  0x6c80 PR_Connect()
 20201 ms  0x6c80 fd:0x7f624b519460
 20214 ms  0x6c80 PK11_Derive()
 20214 ms  0x6c80 basekey:0x7f626f8fd080
 20214 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20214 ms  0x6c80 ret:0x7f626f8fcf00
 20214 ms  0x6c80 PK11_PubDeriveWithKDF()
 20214 ms  0x6c80 seckey:0x7f624b426820
 20214 ms     | 0x6c80 EC_ValidatePublicKey()
 20214 ms     | 0x6c80 ret:0x0
 20214 ms  0x6c80 ret:0x7f626f8fd080
 20214 ms  SECKEY_ECParamsToKeySize()
 20214 ms  0x6c80 ret:0xff
 20214 ms  0x6c80 PK11_DeriveWithFlags()
 20214 ms  0x6c80 basekey:0x7f626f8fcf00
 20214 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20214 ms  0x6c80 ret:0x7f626f8fcd80
 20214 ms  0x6c80 PK11_Derive()
 20214 ms  0x6c80 basekey:0x7f626f8fd080
 20214 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20214 ms  0x6c80 ret:0x7f626f8fd100
 20214 ms  0x6c80 PK11_DeriveWithFlags()
 20214 ms  0x6c80 basekey:0x7f626f8fd100
 20214 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20215 ms  0x6c80 ret:0x7f626f8fcf00
 20215 ms  0x6c80 PK11_DeriveWithFlags()
 20215 ms  0x6c80 basekey:0x7f626f8fd100
 20215 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20215 ms  0x6c80 ret:0x7f626f8fd080
 20215 ms  0x6c80 PK11_DeriveWithFlags()
 20215 ms  0x6c80 basekey:0x7f626f8fd100
 20215 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20215 ms  0x6c80 ret:0x7f626f8fcd80
 20215 ms  0x6c80 PK11_Derive()
 20215 ms  0x6c80 basekey:0x7f626f8fd180
 20215 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20215 ms  0x6c80 ret:0x7f626f8fce80
 20215 ms  0x6c80 PK11_DeriveWithFlags()
 20215 ms  0x6c80 basekey:0x7f626f8fd080
 20215 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20215 ms  0x6c80 ret:0x7f626f8fd100
 20215 ms  0x6c80 PK11_DeriveWithFlags()
 20215 ms  0x6c80 basekey:0x7f626f8fd080
 20215 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20215 ms  0x6c80 ret:0x7f626f8fcd80
 20216 ms  0x6c80 PK11_DeriveWithFlags()
 20216 ms  0x6c80 basekey:0x7f626f8fd080
 20216 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20216 ms  0x6c80 ret:0x7f626f8fcd80
 20216 ms  0x6c80 SSL_AuthCertificateComplete()
 20216 ms  0x6c80 fd:0x7f624b5195e0
 20216 ms  0x6c80 err:0x0
 20216 ms     | 0x6c80 PK11_DeriveWithFlags()
 20216 ms     | 0x6c80 basekey:0x7f626f8fce80
 20216 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20216 ms     | 0x6c80 ret:0x7f626f8fcd80
 20216 ms     | 0x6c80 PK11_DeriveWithFlags()
 20216 ms     | 0x6c80 basekey:0x7f626f8fce80
 20216 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20216 ms     | 0x6c80 ret:0x7f626f8fd180
 20216 ms     | 0x6c80 PK11_DeriveWithFlags()
 20216 ms     | 0x6c80 basekey:0x7f626f8fce80
 20216 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20216 ms     | 0x6c80 ret:0x7f626ead1a80
 20216 ms     | 0x6c80 PK11_DeriveWithFlags()
 20216 ms     | 0x6c80 basekey:0x7f626f8fcf00
 20216 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20216 ms     | 0x6c80 ret:0x7f625fc9ac80
 20216 ms     | 0x6c80 PK11_DeriveWithFlags()
 20216 ms     | 0x6c80 basekey:0x7f626f8fcf00
 20216 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20216 ms     | 0x6c80 ret:0x7f626eeccb00
 20216 ms     | 0x6c80 PK11_DeriveWithFlags()
 20216 ms     | 0x6c80 basekey:0x7f626f8fd180
 20216 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20216 ms     | 0x6c80 ret:0x7f626eeccb00
 20216 ms     | 0x6c80 PK11_DeriveWithFlags()
 20216 ms     | 0x6c80 basekey:0x7f626f8fd180
 20216 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20216 ms     | 0x6c80 ret:0x7f626ead1800
 20216 ms     | 0x6c80 PK11_DeriveWithFlags()
 20216 ms     | 0x6c80 basekey:0x7f626f8fcf00
 20216 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20216 ms     | 0x6c80 ret:0x7f626f8fd100
 20216 ms     | 0x6c80 PK11_Encrypt()
 20216 ms     | 0x6c80 symkey:0x7f625fc9ac80
 20217 ms     | 0x6c80 PK11_DeriveWithFlags()
 20217 ms     | 0x6c80 basekey:0x7f626f8fcd80
 20217 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20217 ms     | 0x6c80 ret:0x7f626f8fd100
 20217 ms     | 0x6c80 PK11_DeriveWithFlags()
 20217 ms     | 0x6c80 basekey:0x7f626f8fcd80
 20217 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20217 ms     | 0x6c80 ret:0x7f626ead1800
 20217 ms     | 0x6c80 PK11_DeriveWithFlags()
 20217 ms     | 0x6c80 basekey:0x7f626f8fce80
 20217 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20217 ms     | 0x6c80 ret:0x7f625fc9ac80
 20217 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 20217 ms     | 0x6c80 privk:0x7f624b4e8020::7f624b4e8020  40 dc 08 6a                                      @..j
 20217 ms     | 0x6c80 privk:0x7f624b4e8020::7f624b4e8020  e5 e5 e5 e5                                      ....
 20217 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 20217 ms     | 0x6c80 privk:0x7f624b426820::7f624b426820  e0 ac 32 66                                      ..2f
 20217 ms     | 0x6c80 privk:0x7f624b426820::7f624b426820  e5 e5 e5 e5                                      ....
 20217 ms  0x6c80 PK11_Encrypt()
 20217 ms  0x6c80 symkey:0x7f626f8fd100
 20217 ms  0x6c80 PK11_Encrypt()
 20217 ms  0x6c80 symkey:0x7f626f8fd100
 20218 ms  0x6c80 PK11_Encrypt()
 20218 ms  0x6c80 symkey:0x7f626f8fd100
 20219 ms  0x6c80 PK11_Encrypt()
 20219 ms  0x6c80 symkey:0x7f626f8fd100
 20219 ms  0x6c80 PK11_Encrypt()
 20219 ms  0x6c80 symkey:0x7f626f8fd100
 20220 ms  0x6c80 PK11_Derive()
 20220 ms  0x6c80 basekey:0x7f626f8fd080
 20220 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20220 ms  0x6c80 ret:0x7f626f8fcf00
 20220 ms  0x6c80 PK11_PubDeriveWithKDF()
 20220 ms  0x6c80 seckey:0x7f624b577820
 20220 ms     | 0x6c80 EC_ValidatePublicKey()
 20220 ms     | 0x6c80 ret:0x0
 20221 ms  0x6c80 ret:0x7f626f8fd080
 20221 ms  SECKEY_ECParamsToKeySize()
 20221 ms  0x6c80 ret:0xff
 20221 ms  0x6c80 PK11_DeriveWithFlags()
 20221 ms  0x6c80 basekey:0x7f626f8fcf00
 20221 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20221 ms  0x6c80 ret:0x7f626f8fce80
 20221 ms  0x6c80 PK11_Derive()
 20221 ms  0x6c80 basekey:0x7f626f8fd080
 20221 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20221 ms  0x6c80 ret:0x7f626ead1800
 20221 ms  0x6c80 PK11_DeriveWithFlags()
 20221 ms  0x6c80 basekey:0x7f626ead1800
 20221 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20225 ms  0x6c80 ret:0x7f626f8fcf00
 20225 ms  0x6c80 PK11_DeriveWithFlags()
 20225 ms  0x6c80 basekey:0x7f626ead1800
 20225 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20225 ms  0x6c80 ret:0x7f626f8fd080
 20225 ms  0x6c80 PK11_DeriveWithFlags()
 20225 ms  0x6c80 basekey:0x7f626ead1800
 20225 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20225 ms  0x6c80 ret:0x7f626f8fce80
 20225 ms  0x6c80 PK11_Derive()
 20225 ms  0x6c80 basekey:0x7f626ead1180
 20225 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20225 ms  0x6c80 ret:0x7f626ee48c80
 20225 ms  0x6c80 PK11_DeriveWithFlags()
 20225 ms  0x6c80 basekey:0x7f626f8fd080
 20225 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20225 ms  0x6c80 ret:0x7f626ead1800
 20225 ms  0x6c80 PK11_DeriveWithFlags()
 20225 ms  0x6c80 basekey:0x7f626f8fd080
 20225 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20225 ms  0x6c80 ret:0x7f626f8fce80
 20235 ms  0x6c80 PK11_DeriveWithFlags()
 20235 ms  0x6c80 basekey:0x7f626f8fd080
 20235 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20235 ms  0x6c80 ret:0x7f626f8fce80
 20236 ms  0x6c80 PK11_Encrypt()
 20236 ms  0x6c80 symkey:0x7f626f8fd100
 20236 ms  0x6c80 PK11_Encrypt()
 20236 ms  0x6c80 symkey:0x7f626f8fd100
 20237 ms  0x6c80 PK11_Encrypt()
 20237 ms  0x6c80 symkey:0x7f626f8fd100
 20237 ms  0x6c80 PK11_Encrypt()
 20237 ms  0x6c80 symkey:0x7f626f8fd100
 20237 ms  0x6c80 PK11_Encrypt()
 20237 ms  0x6c80 symkey:0x7f626f8fd100
 20237 ms  0x6c80 SSL_AuthCertificateComplete()
 20237 ms  0x6c80 fd:0x7f624d583b20
 20237 ms  0x6c80 err:0x0
 20237 ms     | 0x6c80 PK11_DeriveWithFlags()
 20237 ms     | 0x6c80 basekey:0x7f626ee48c80
 20237 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20237 ms     | 0x6c80 ret:0x7f626f8fce80
 20238 ms     | 0x6c80 PK11_DeriveWithFlags()
 20238 ms     | 0x6c80 basekey:0x7f626ee48c80
 20238 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20238 ms     | 0x6c80 ret:0x7f626ead1180
 20238 ms     | 0x6c80 PK11_DeriveWithFlags()
 20238 ms     | 0x6c80 basekey:0x7f626ee48c80
 20238 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20238 ms     | 0x6c80 ret:0x7f626ead1c80
 20238 ms     | 0x6c80 PK11_DeriveWithFlags()
 20238 ms     | 0x6c80 basekey:0x7f626f8fcf00
 20238 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20238 ms     | 0x6c80 ret:0x7f624009a280
 20238 ms     | 0x6c80 PK11_DeriveWithFlags()
 20238 ms     | 0x6c80 basekey:0x7f626f8fcf00
 20238 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20238 ms     | 0x6c80 ret:0x7f6240223800
 20238 ms     | 0x6c80 PK11_DeriveWithFlags()
 20238 ms     | 0x6c80 basekey:0x7f626ead1180
 20238 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20238 ms     | 0x6c80 ret:0x7f6240223800
 20238 ms     | 0x6c80 PK11_DeriveWithFlags()
 20238 ms     | 0x6c80 basekey:0x7f626ead1180
 20238 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20238 ms     | 0x6c80 ret:0x7f6240223880
 20238 ms     | 0x6c80 PK11_DeriveWithFlags()
 20238 ms     | 0x6c80 basekey:0x7f626f8fcf00
 20238 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20238 ms     | 0x6c80 ret:0x7f626ead1800
 20238 ms     | 0x6c80 PK11_Encrypt()
 20238 ms     | 0x6c80 symkey:0x7f624009a280
 20238 ms     | 0x6c80 PK11_DeriveWithFlags()
 20238 ms     | 0x6c80 basekey:0x7f626f8fce80
 20238 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20238 ms     | 0x6c80 ret:0x7f626ead1800
 20238 ms     | 0x6c80 PK11_DeriveWithFlags()
 20238 ms     | 0x6c80 basekey:0x7f626f8fce80
 20238 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20238 ms     | 0x6c80 ret:0x7f6240223880
 20238 ms     | 0x6c80 PK11_DeriveWithFlags()
 20238 ms     | 0x6c80 basekey:0x7f626ee48c80
 20238 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20238 ms     | 0x6c80 ret:0x7f624009a280
 20238 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 20238 ms     | 0x6c80 privk:0x7f624b580820::7f624b580820  b0 cf 96 6a                                      ...j
 20238 ms     | 0x6c80 privk:0x7f624b580820::7f624b580820  e5 e5 e5 e5                                      ....
 20238 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 20238 ms     | 0x6c80 privk:0x7f624b577820::7f624b577820  f0 db 90 6a                                      ...j
 20238 ms     | 0x6c80 privk:0x7f624b577820::7f624b577820  e5 e5 e5 e5                                      ....
 20239 ms  0x6c80 PK11_Encrypt()
 20239 ms  0x6c80 symkey:0x7f626ead1800
           /* TID 0x6c88 */
 20240 ms  0x6c88 PR_Close()
 20240 ms  0x6c88 fd:0x7f624b519ca0
 20241 ms  0x6c88 PR_Close()
 20241 ms  0x6c88 fd:0x7f624b519ca0
           /* TID 0x6c80 */
 20241 ms  0x6c80 PK11_Encrypt()
 20241 ms  0x6c80 symkey:0x7f626f8fd100
 20241 ms  0x6c80 PK11_Derive()
 20241 ms  0x6c80 basekey:0x7f626f8fd080
 20241 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20241 ms  0x6c80 ret:0x7f626f8fcf00
 20241 ms  0x6c80 PK11_PubDeriveWithKDF()
 20241 ms  0x6c80 seckey:0x7f624b5a6820
 20241 ms     | 0x6c80 EC_ValidatePublicKey()
 20241 ms     | 0x6c80 ret:0x0
 20242 ms  0x6c80 ret:0x7f626f8fd080
 20242 ms  SECKEY_ECParamsToKeySize()
 20242 ms  0x6c80 ret:0xff
 20242 ms  0x6c80 PK11_DeriveWithFlags()
 20242 ms  0x6c80 basekey:0x7f626f8fcf00
 20242 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20242 ms  0x6c80 ret:0x7f626ee48c80
 20242 ms  0x6c80 PK11_Derive()
 20242 ms  0x6c80 basekey:0x7f626f8fd080
 20242 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20242 ms  0x6c80 ret:0x7f6240223880
 20242 ms  0x6c80 PK11_DeriveWithFlags()
 20242 ms  0x6c80 basekey:0x7f6240223880
 20242 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20242 ms  0x6c80 ret:0x7f626f8fcf00
 20242 ms  0x6c80 PK11_DeriveWithFlags()
 20242 ms  0x6c80 basekey:0x7f6240223880
 20242 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20242 ms  0x6c80 ret:0x7f626f8fd080
 20242 ms  0x6c80 PK11_DeriveWithFlags()
 20242 ms  0x6c80 basekey:0x7f6240223880
 20242 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20242 ms  0x6c80 ret:0x7f626ee48c80
 20242 ms  0x6c80 PK11_Derive()
 20242 ms  0x6c80 basekey:0x7f6240223b00
 20242 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20242 ms  0x6c80 ret:0x7f6240223b80
 20242 ms  0x6c80 PK11_DeriveWithFlags()
 20242 ms  0x6c80 basekey:0x7f626f8fd080
 20242 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20242 ms  0x6c80 ret:0x7f6240223880
 20242 ms  0x6c80 PK11_DeriveWithFlags()
 20242 ms  0x6c80 basekey:0x7f626f8fd080
 20242 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20242 ms  0x6c80 ret:0x7f626ee48c80
 20247 ms  0x6c80 PK11_DeriveWithFlags()
 20247 ms  0x6c80 basekey:0x7f626f8fd080
 20247 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20247 ms  0x6c80 ret:0x7f626ee48c80
 20247 ms  0x6c80 PK11_Derive()
 20247 ms  0x6c80 basekey:0x7f626ee48c80
 20247 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20247 ms  0x6c80 ret:0x7f6240223b00
 20247 ms  0x6c80 PK11_PubDeriveWithKDF()
 20247 ms  0x6c80 seckey:0x7f624b6ee020
 20247 ms     | 0x6c80 EC_ValidatePublicKey()
 20247 ms     | 0x6c80 ret:0x0
 20247 ms  0x6c80 ret:0x7f626ee48c80
 20247 ms  SECKEY_ECParamsToKeySize()
 20247 ms  0x6c80 ret:0xff
 20247 ms  0x6c80 PK11_DeriveWithFlags()
 20247 ms  0x6c80 basekey:0x7f6240223b00
 20247 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20247 ms  0x6c80 ret:0x7f6240223c00
 20247 ms  0x6c80 PK11_Derive()
 20247 ms  0x6c80 basekey:0x7f626ee48c80
 20247 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20247 ms  0x6c80 ret:0x7f6240223c80
 20247 ms  0x6c80 PK11_DeriveWithFlags()
 20247 ms  0x6c80 basekey:0x7f6240223c80
 20247 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20247 ms  0x6c80 ret:0x7f6240223b00
 20247 ms  0x6c80 PK11_DeriveWithFlags()
 20247 ms  0x6c80 basekey:0x7f6240223c80
 20247 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20247 ms  0x6c80 ret:0x7f626ee48c80
 20247 ms  0x6c80 PK11_DeriveWithFlags()
 20247 ms  0x6c80 basekey:0x7f6240223c80
 20247 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20247 ms  0x6c80 ret:0x7f6240223c00
 20247 ms  0x6c80 PK11_Derive()
 20247 ms  0x6c80 basekey:0x7f6240223d00
 20247 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20247 ms  0x6c80 ret:0x7f6240223d80
 20247 ms  0x6c80 PK11_DeriveWithFlags()
 20247 ms  0x6c80 basekey:0x7f626ee48c80
 20247 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20247 ms  0x6c80 ret:0x7f6240223c80
 20248 ms  0x6c80 PK11_DeriveWithFlags()
 20248 ms  0x6c80 basekey:0x7f626ee48c80
 20248 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20248 ms  0x6c80 ret:0x7f6240223c00
 20248 ms  0x6c80 PK11_DeriveWithFlags()
 20248 ms  0x6c80 basekey:0x7f626ee48c80
 20248 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20248 ms  0x6c80 ret:0x7f6240223c00
 20249 ms  0x6c80 PK11_Encrypt()
 20249 ms  0x6c80 symkey:0x7f626f8fd100
 20249 ms  0x6c80 SSL_AuthCertificateComplete()
 20249 ms  0x6c80 fd:0x7f624d73f3a0
 20249 ms  0x6c80 err:0x0
 20249 ms     | 0x6c80 PK11_DeriveWithFlags()
 20249 ms     | 0x6c80 basekey:0x7f6240223b80
 20249 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20249 ms     | 0x6c80 ret:0x7f6240223c00
 20249 ms     | 0x6c80 PK11_DeriveWithFlags()
 20249 ms     | 0x6c80 basekey:0x7f6240223b80
 20249 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20249 ms     | 0x6c80 ret:0x7f6240223d00
 20249 ms     | 0x6c80 PK11_DeriveWithFlags()
 20249 ms     | 0x6c80 basekey:0x7f6240223b80
 20249 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20249 ms     | 0x6c80 ret:0x7f6240223e00
 20249 ms     | 0x6c80 PK11_DeriveWithFlags()
 20249 ms     | 0x6c80 basekey:0x7f626f8fcf00
 20249 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20249 ms     | 0x6c80 ret:0x7f6240223e80
 20249 ms     | 0x6c80 PK11_DeriveWithFlags()
 20249 ms     | 0x6c80 basekey:0x7f626f8fcf00
 20249 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20249 ms     | 0x6c80 ret:0x7f6240223f00
 20249 ms     | 0x6c80 PK11_DeriveWithFlags()
 20249 ms     | 0x6c80 basekey:0x7f6240223d00
 20249 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20249 ms     | 0x6c80 ret:0x7f6240223f00
 20249 ms     | 0x6c80 PK11_DeriveWithFlags()
 20249 ms     | 0x6c80 basekey:0x7f6240223d00
 20249 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20249 ms     | 0x6c80 ret:0x7f6240223f80
 20249 ms     | 0x6c80 PK11_DeriveWithFlags()
 20249 ms     | 0x6c80 basekey:0x7f626f8fcf00
 20249 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20249 ms     | 0x6c80 ret:0x7f6240223880
 20249 ms     | 0x6c80 PK11_Encrypt()
 20249 ms     | 0x6c80 symkey:0x7f6240223e80
 20249 ms     | 0x6c80 PK11_DeriveWithFlags()
 20249 ms     | 0x6c80 basekey:0x7f6240223c00
 20249 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20250 ms     | 0x6c80 ret:0x7f6240223880
 20250 ms     | 0x6c80 PK11_DeriveWithFlags()
 20250 ms     | 0x6c80 basekey:0x7f6240223c00
 20250 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20250 ms     | 0x6c80 ret:0x7f6240223f80
 20250 ms     | 0x6c80 PK11_DeriveWithFlags()
 20250 ms     | 0x6c80 basekey:0x7f6240223b80
 20250 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20250 ms     | 0x6c80 ret:0x7f6240223e80
 20250 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 20250 ms     | 0x6c80 privk:0x7f624b6d7020::7f624b6d7020  b0 c0 2a 6d                                      ..*m
 20250 ms     | 0x6c80 privk:0x7f624b6d7020::7f624b6d7020  e5 e5 e5 e5                                      ....
 20250 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 20250 ms     | 0x6c80 privk:0x7f624b5a6820::7f624b5a6820  50 e6 29 6d                                      P.)m
 20250 ms     | 0x6c80 privk:0x7f624b5a6820::7f624b5a6820  e5 e5 e5 e5                                      ....
 20250 ms  0x6c80 SSL_AuthCertificateComplete()
 20250 ms  0x6c80 fd:0x7f624d73f310
 20250 ms  0x6c80 err:0x0
 20250 ms     | 0x6c80 PK11_DeriveWithFlags()
 20250 ms     | 0x6c80 basekey:0x7f6240223d80
 20250 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20250 ms     | 0x6c80 ret:0x7f626f8fd080
 20250 ms     | 0x6c80 PK11_DeriveWithFlags()
 20250 ms     | 0x6c80 basekey:0x7f6240223d80
 20250 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20256 ms     | 0x6c80 ret:0x7f626f8fcf00
 20256 ms     | 0x6c80 PK11_DeriveWithFlags()
 20256 ms     | 0x6c80 basekey:0x7f6240223d80
 20256 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20256 ms     | 0x6c80 ret:0x7f6240223b80
 20256 ms     | 0x6c80 PK11_DeriveWithFlags()
 20256 ms     | 0x6c80 basekey:0x7f6240223b00
 20256 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20256 ms     | 0x6c80 ret:0x7f6240223f80
 20256 ms     | 0x6c80 PK11_DeriveWithFlags()
 20256 ms     | 0x6c80 basekey:0x7f6240223b00
 20256 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20256 ms     | 0x6c80 ret:0x7f626acc2c80
 20256 ms     | 0x6c80 PK11_DeriveWithFlags()
 20256 ms     | 0x6c80 basekey:0x7f626f8fcf00
 20256 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20256 ms     | 0x6c80 ret:0x7f626acc2c80
 20256 ms     | 0x6c80 PK11_DeriveWithFlags()
 20256 ms     | 0x6c80 basekey:0x7f626f8fcf00
 20256 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20256 ms     | 0x6c80 ret:0x7f626e2e9a00
 20256 ms     | 0x6c80 PK11_DeriveWithFlags()
 20256 ms     | 0x6c80 basekey:0x7f6240223b00
 20256 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20256 ms     | 0x6c80 ret:0x7f6240223c80
 20256 ms     | 0x6c80 PK11_Encrypt()
 20256 ms     | 0x6c80 symkey:0x7f6240223f80
 20256 ms     | 0x6c80 PK11_DeriveWithFlags()
 20256 ms     | 0x6c80 basekey:0x7f626f8fd080
 20256 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20256 ms     | 0x6c80 ret:0x7f6240223c80
 20256 ms     | 0x6c80 PK11_DeriveWithFlags()
 20256 ms     | 0x6c80 basekey:0x7f626f8fd080
 20256 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20257 ms     | 0x6c80 ret:0x7f626e2e9a00
 20257 ms     | 0x6c80 PK11_DeriveWithFlags()
 20257 ms     | 0x6c80 basekey:0x7f6240223d80
 20257 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20257 ms     | 0x6c80 ret:0x7f6240223f80
 20257 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 20257 ms     | 0x6c80 privk:0x7f624d530820::7f624d530820  50 5b c0 6d                                      P[.m
 20257 ms     | 0x6c80 privk:0x7f624d530820::7f624d530820  e5 e5 e5 e5                                      ....
 20257 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 20257 ms     | 0x6c80 privk:0x7f624b6ee020::7f624b6ee020  c0 54 c0 6d                                      .T.m
 20257 ms     | 0x6c80 privk:0x7f624b6ee020::7f624b6ee020  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 20258 ms  0x6c88 PR_Close()
 20258 ms  0x6c88 fd:0x7f624b5191f0
           /* TID 0x6c80 */
 20258 ms  0x6c80 PK11_Derive()
 20258 ms  0x6c80 basekey:0x7f626ee48c80
 20258 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20258 ms  0x6c80 ret:0x7f6240223b00
 20258 ms  0x6c80 PK11_PubDeriveWithKDF()
 20258 ms  0x6c80 seckey:0x7f624d5de020
 20258 ms     | 0x6c80 EC_ValidatePublicKey()
 20258 ms     | 0x6c80 ret:0x0
 20259 ms  0x6c80 ret:0x7f626ee48c80
 20259 ms  SECKEY_ECParamsToKeySize()
 20259 ms  0x6c80 ret:0xff
 20259 ms  0x6c80 PK11_DeriveWithFlags()
 20259 ms  0x6c80 basekey:0x7f6240223b00
 20259 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20259 ms  0x6c80 ret:0x7f6240223d80
 20259 ms  0x6c80 PK11_Derive()
 20259 ms  0x6c80 basekey:0x7f626ee48c80
 20259 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20259 ms  0x6c80 ret:0x7f626e2e9a00
 20259 ms  0x6c80 PK11_DeriveWithFlags()
 20259 ms  0x6c80 basekey:0x7f626e2e9a00
 20259 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20259 ms  0x6c80 ret:0x7f6240223b00
 20259 ms  0x6c80 PK11_DeriveWithFlags()
 20259 ms  0x6c80 basekey:0x7f626e2e9a00
 20259 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20259 ms  0x6c80 ret:0x7f626ee48c80
 20259 ms  0x6c80 PK11_DeriveWithFlags()
 20259 ms  0x6c80 basekey:0x7f626e2e9a00
 20259 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20259 ms  0x6c80 ret:0x7f6240223d80
 20259 ms  0x6c80 PK11_Derive()
 20259 ms  0x6c80 basekey:0x7f626dfee280
 20259 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20259 ms  0x6c80 ret:0x7f626f8fde00
 20259 ms  0x6c80 PK11_DeriveWithFlags()
 20259 ms  0x6c80 basekey:0x7f626ee48c80
 20259 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20259 ms  0x6c80 ret:0x7f626e2e9a00
 20259 ms  0x6c80 PK11_DeriveWithFlags()
 20259 ms  0x6c80 basekey:0x7f626ee48c80
 20259 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20259 ms  0x6c80 ret:0x7f6240223d80
 20260 ms  0x6c80 PK11_DeriveWithFlags()
 20260 ms  0x6c80 basekey:0x7f626ee48c80
 20260 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20260 ms  0x6c80 ret:0x7f6240223d80
 20260 ms  0x6c80 PK11_Derive()
 20260 ms  0x6c80 basekey:0x7f6240223d80
 20260 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20260 ms  0x6c80 ret:0x7f626dfee280
 20260 ms  0x6c80 PK11_PubDeriveWithKDF()
 20260 ms  0x6c80 seckey:0x7f624d719820
 20260 ms     | 0x6c80 EC_ValidatePublicKey()
 20260 ms     | 0x6c80 ret:0x0
 20261 ms  0x6c80 ret:0x7f6240223d80
 20261 ms  SECKEY_ECParamsToKeySize()
 20261 ms  0x6c80 ret:0xff
 20261 ms  0x6c80 PK11_DeriveWithFlags()
 20261 ms  0x6c80 basekey:0x7f626dfee280
 20261 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20261 ms  0x6c80 ret:0x7f624b230080
 20261 ms  0x6c80 PK11_Derive()
 20261 ms  0x6c80 basekey:0x7f6240223d80
 20261 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20261 ms  0x6c80 ret:0x7f624b230100
 20261 ms  0x6c80 PK11_DeriveWithFlags()
 20261 ms  0x6c80 basekey:0x7f624b230100
 20261 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20261 ms  0x6c80 ret:0x7f626dfee280
 20261 ms  0x6c80 PK11_DeriveWithFlags()
 20261 ms  0x6c80 basekey:0x7f624b230100
 20261 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20261 ms  0x6c80 ret:0x7f6240223d80
 20261 ms  0x6c80 PK11_DeriveWithFlags()
 20261 ms  0x6c80 basekey:0x7f624b230100
 20261 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20261 ms  0x6c80 ret:0x7f624b230080
 20261 ms  0x6c80 PK11_Derive()
 20261 ms  0x6c80 basekey:0x7f624b230180
 20261 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20261 ms  0x6c80 ret:0x7f624b230200
 20261 ms  0x6c80 PK11_DeriveWithFlags()
 20261 ms  0x6c80 basekey:0x7f6240223d80
 20261 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20261 ms  0x6c80 ret:0x7f624b230100
 20261 ms  0x6c80 PK11_DeriveWithFlags()
 20261 ms  0x6c80 basekey:0x7f6240223d80
 20261 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20261 ms  0x6c80 ret:0x7f624b230080
 20262 ms  0x6c80 PK11_DeriveWithFlags()
 20262 ms  0x6c80 basekey:0x7f6240223d80
 20262 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20262 ms  0x6c80 ret:0x7f624b230080
 20262 ms  0x6c80 PK11_Encrypt()
 20262 ms  0x6c80 symkey:0x7f6240223880
 20262 ms  0x6c80 PK11_Encrypt()
 20262 ms  0x6c80 symkey:0x7f6240223c80
 20262 ms  0x6c80 SSL_AuthCertificateComplete()
 20262 ms  0x6c80 fd:0x7f624d73f940
 20262 ms  0x6c80 err:0x0
 20262 ms     | 0x6c80 PK11_DeriveWithFlags()
 20262 ms     | 0x6c80 basekey:0x7f626f8fde00
 20262 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20262 ms     | 0x6c80 ret:0x7f624b230080
 20262 ms     | 0x6c80 PK11_DeriveWithFlags()
 20262 ms     | 0x6c80 basekey:0x7f626f8fde00
 20262 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20262 ms     | 0x6c80 ret:0x7f624b230180
 20262 ms     | 0x6c80 PK11_DeriveWithFlags()
 20262 ms     | 0x6c80 basekey:0x7f626f8fde00
 20262 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20262 ms     | 0x6c80 ret:0x7f624b230280
 20262 ms     | 0x6c80 PK11_DeriveWithFlags()
 20262 ms     | 0x6c80 basekey:0x7f6240223b00
 20263 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20263 ms     | 0x6c80 ret:0x7f624b230300
 20263 ms     | 0x6c80 PK11_DeriveWithFlags()
 20263 ms     | 0x6c80 basekey:0x7f6240223b00
 20263 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20263 ms     | 0x6c80 ret:0x7f624b230380
 20263 ms     | 0x6c80 PK11_DeriveWithFlags()
 20263 ms     | 0x6c80 basekey:0x7f624b230180
 20263 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20263 ms     | 0x6c80 ret:0x7f624b230380
 20263 ms     | 0x6c80 PK11_DeriveWithFlags()
 20263 ms     | 0x6c80 basekey:0x7f624b230180
 20263 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20263 ms     | 0x6c80 ret:0x7f624b230400
 20263 ms     | 0x6c80 PK11_DeriveWithFlags()
 20263 ms     | 0x6c80 basekey:0x7f6240223b00
 20263 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20263 ms     | 0x6c80 ret:0x7f626e2e9a00
 20263 ms     | 0x6c80 PK11_Encrypt()
 20263 ms     | 0x6c80 symkey:0x7f624b230300
 20263 ms     | 0x6c80 PK11_DeriveWithFlags()
 20263 ms     | 0x6c80 basekey:0x7f624b230080
 20263 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20263 ms     | 0x6c80 ret:0x7f626e2e9a00
 20263 ms     | 0x6c80 PK11_DeriveWithFlags()
 20263 ms     | 0x6c80 basekey:0x7f624b230080
 20263 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20263 ms     | 0x6c80 ret:0x7f624b230400
 20263 ms     | 0x6c80 PK11_DeriveWithFlags()
 20263 ms     | 0x6c80 basekey:0x7f626f8fde00
 20263 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20263 ms     | 0x6c80 ret:0x7f624b230300
 20263 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 20263 ms     | 0x6c80 privk:0x7f624d5e0020::7f624d5e0020  60 20 c8 6d                                      ` .m
 20263 ms     | 0x6c80 privk:0x7f624d5e0020::7f624d5e0020  e5 e5 e5 e5                                      ....
 20263 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 20263 ms     | 0x6c80 privk:0x7f624d5de020::7f624d5de020  80 5d c0 6d                                      .].m
 20263 ms     | 0x6c80 privk:0x7f624d5de020::7f624d5de020  e5 e5 e5 e5                                      ....
 20263 ms  0x6c80 SSL_AuthCertificateComplete()
 20263 ms  0x6c80 fd:0x7f6240371be0
 20263 ms  0x6c80 err:0x0
 20263 ms     | 0x6c80 PK11_DeriveWithFlags()
 20263 ms     | 0x6c80 basekey:0x7f624b230200
 20263 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20263 ms     | 0x6c80 ret:0x7f626ee48c80
 20263 ms     | 0x6c80 PK11_DeriveWithFlags()
 20263 ms     | 0x6c80 basekey:0x7f624b230200
 20263 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20263 ms     | 0x6c80 ret:0x7f6240223b00
 20263 ms     | 0x6c80 PK11_DeriveWithFlags()
 20263 ms     | 0x6c80 basekey:0x7f624b230200
 20263 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20263 ms     | 0x6c80 ret:0x7f626f8fde00
 20263 ms     | 0x6c80 PK11_DeriveWithFlags()
 20263 ms     | 0x6c80 basekey:0x7f626dfee280
 20263 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20263 ms     | 0x6c80 ret:0x7f624b230400
 20263 ms     | 0x6c80 PK11_DeriveWithFlags()
 20263 ms     | 0x6c80 basekey:0x7f626dfee280
 20264 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20264 ms     | 0x6c80 ret:0x7f624b230480
 20264 ms     | 0x6c80 PK11_DeriveWithFlags()
 20264 ms     | 0x6c80 basekey:0x7f6240223b00
 20264 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20264 ms     | 0x6c80 ret:0x7f624b230480
 20264 ms     | 0x6c80 PK11_DeriveWithFlags()
 20264 ms     | 0x6c80 basekey:0x7f6240223b00
 20264 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20264 ms     | 0x6c80 ret:0x7f624b230500
 20264 ms     | 0x6c80 PK11_DeriveWithFlags()
 20264 ms     | 0x6c80 basekey:0x7f626dfee280
 20264 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20264 ms     | 0x6c80 ret:0x7f624b230100
 20264 ms     | 0x6c80 PK11_Encrypt()
 20264 ms     | 0x6c80 symkey:0x7f624b230400
 20264 ms     | 0x6c80 PK11_DeriveWithFlags()
 20264 ms     | 0x6c80 basekey:0x7f626ee48c80
 20264 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20264 ms     | 0x6c80 ret:0x7f624b230100
 20264 ms     | 0x6c80 PK11_DeriveWithFlags()
 20264 ms     | 0x6c80 basekey:0x7f626ee48c80
 20264 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20264 ms     | 0x6c80 ret:0x7f624b230500
 20264 ms     | 0x6c80 PK11_DeriveWithFlags()
 20264 ms     | 0x6c80 basekey:0x7f624b230200
 20264 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20264 ms     | 0x6c80 ret:0x7f624b230400
 20264 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 20264 ms     | 0x6c80 privk:0x7f624d7d0020::7f624d7d0020  60 25 c8 6d                                      `%.m
 20264 ms     | 0x6c80 privk:0x7f624d7d0020::7f624d7d0020  e5 e5 e5 e5                                      ....
 20264 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 20264 ms     | 0x6c80 privk:0x7f624d719820::7f624d719820  80 23 c8 6d                                      .#.m
 20264 ms     | 0x6c80 privk:0x7f624d719820::7f624d719820  e5 e5 e5 e5                                      ....
 20264 ms  0x6c80 PK11_Encrypt()
 20264 ms  0x6c80 symkey:0x7f626f8fd100
 20272 ms  0x6c80 PK11_DeriveWithFlags()
 20272 ms  0x6c80 basekey:0x7f625fc9ac80
 20272 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20273 ms  0x6c80 ret:0x7f6240223d80
 20273 ms  0x6c80 PK11_DeriveWithFlags()
 20273 ms  0x6c80 basekey:0x7f625fc9ac80
 20273 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20273 ms  0x6c80 ret:0x7f6240223d80
 20273 ms  0x6c80 PK11_Encrypt()
 20273 ms  0x6c80 symkey:0x7f626f8fd100
 20273 ms  0x6c80 PK11_Encrypt()
 20273 ms  0x6c80 symkey:0x7f626e2e9a00
 20274 ms  0x6c80 PK11_Encrypt()
 20274 ms  0x6c80 symkey:0x7f624b230100
 20274 ms  0x6c80 PK11_Encrypt()
 20274 ms  0x6c80 symkey:0x7f626f8fd100
 20274 ms  0x6c80 PK11_Encrypt()
 20274 ms  0x6c80 symkey:0x7f626f8fd100
 20275 ms  0x6c80 PK11_Encrypt()
 20275 ms  0x6c80 symkey:0x7f626f8fd100
 20275 ms  0x6c80 PK11_Encrypt()
 20275 ms  0x6c80 symkey:0x7f626f8fd100
 20275 ms  0x6c80 PK11_Encrypt()
 20275 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 20285 ms  0x6c88 PR_Close()
 20285 ms  0x6c88 fd:0x7f624d73f700
 20291 ms  0x6c88 PR_Close()
 20291 ms  0x6c88 fd:0x7f624d583f10
           /* TID 0x6c80 */
 20294 ms  0x6c80 PK11_DeriveWithFlags()
 20294 ms  0x6c80 basekey:0x7f624009a280
 20294 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20294 ms  0x6c80 ret:0x7f6240223d80
 20294 ms  0x6c80 PK11_DeriveWithFlags()
 20294 ms  0x6c80 basekey:0x7f624009a280
 20294 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20294 ms  0x6c80 ret:0x7f6240223d80
 20294 ms  0x6c80 PR_Close()
 20294 ms  0x6c80 fd:0x7f624d583b20
 20294 ms     | 0x6c80 PK11_Encrypt()
 20294 ms     | 0x6c80 symkey:0x7f626ead1800
 20297 ms  0x6c80 PK11_Encrypt()
 20297 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 20298 ms  0x6c88 PR_Close()
 20298 ms  0x6c88 fd:0x7f624b3abdf0
           /* TID 0x6c80 */
 20306 ms  0x6c80 PK11_DeriveWithFlags()
 20306 ms  0x6c80 basekey:0x7f6240223e80
 20306 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20306 ms  0x6c80 ret:0x7f626ead1c80
 20306 ms  0x6c80 PK11_DeriveWithFlags()
 20306 ms  0x6c80 basekey:0x7f6240223e80
 20306 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20306 ms  0x6c80 ret:0x7f626ead1c80
 20306 ms  0x6c80 PR_Close()
 20306 ms  0x6c80 fd:0x7f624d73f3a0
 20306 ms     | 0x6c80 PK11_Encrypt()
 20306 ms     | 0x6c80 symkey:0x7f6240223880
 20306 ms  0x6c80 SSL_ImportFD()
 20306 ms  0x6c80 ret:0x7f624b519190
 20306 ms  0x6c80 SSL_AuthCertificateHook()
 20306 ms  0x6c80 fd:0x7f624b519190
 20306 ms  0x6c80 ret:0x0
 20306 ms  0x6c80 PR_Connect()
 20306 ms  0x6c80 fd:0x7f624b519190
 20309 ms  0x6c80 PK11_Encrypt()
 20309 ms  0x6c80 symkey:0x7f626eee8000
 20312 ms  0x6c80 PK11_DeriveWithFlags()
 20312 ms  0x6c80 basekey:0x7f6240223f80
 20312 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20312 ms  0x6c80 ret:0x7f6240223e00
 20312 ms  0x6c80 PK11_DeriveWithFlags()
 20312 ms  0x6c80 basekey:0x7f6240223f80
 20312 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20312 ms  0x6c80 ret:0x7f6240223e00
 20312 ms  0x6c80 PR_Close()
 20312 ms  0x6c80 fd:0x7f624d73f310
 20312 ms     | 0x6c80 PK11_Encrypt()
 20312 ms     | 0x6c80 symkey:0x7f6240223c80
 20319 ms  0x6c80 PK11_DeriveWithFlags()
 20319 ms  0x6c80 basekey:0x7f624b230300
 20319 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20319 ms  0x6c80 ret:0x7f6240223b80
 20319 ms  0x6c80 PK11_DeriveWithFlags()
 20319 ms  0x6c80 basekey:0x7f624b230300
 20319 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20319 ms  0x6c80 ret:0x7f6240223b80
 20319 ms  0x6c80 PR_Close()
 20319 ms  0x6c80 fd:0x7f624d73f940
 20319 ms     | 0x6c80 PK11_Encrypt()
 20319 ms     | 0x6c80 symkey:0x7f626e2e9a00
 20320 ms  0x6c80 PK11_DeriveWithFlags()
 20320 ms  0x6c80 basekey:0x7f624b230400
 20320 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20320 ms  0x6c80 ret:0x7f624b230280
 20320 ms  0x6c80 PK11_DeriveWithFlags()
 20320 ms  0x6c80 basekey:0x7f624b230400
 20320 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20320 ms  0x6c80 ret:0x7f624b230280
 20320 ms  0x6c80 PR_Close()
 20320 ms  0x6c80 fd:0x7f6240371be0
 20320 ms     | 0x6c80 PK11_Encrypt()
 20320 ms     | 0x6c80 symkey:0x7f624b230100
 20321 ms  SECKEY_ECParamsToKeySize()
 20321 ms  0x6c80 ret:0x100
 20321 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20321 ms  0x6c80 cx:0x7f624b384648
 20321 ms     | 0x6c80 EC_ValidatePublicKey()
 20323 ms     | 0x6c80 ret:0x0
 20323 ms  0x6c80 ret:0x7f624b5b0020::7f624b5b0020  f0 91 cf 6c                                      ...l
 20323 ms  0x6c80 PK11_PubDeriveWithKDF()
 20323 ms  0x6c80 seckey:0x7f624b5b0020
 20323 ms     | 0x6c80 EC_ValidatePublicKey()
 20324 ms     | 0x6c80 ret:0x0
 20332 ms  0x6c80 ret:0x7f626f8fde00
 20332 ms  0x6c80 PK11_DeriveWithFlags()
 20332 ms  0x6c80 basekey:0x7f626f8fde00
 20332 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20332 ms  0x6c80 ret:0x7f6240223b00
 20332 ms  0x6c80 PK11_Derive()
 20332 ms  0x6c80 basekey:0x7f6240223b00
 20332 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20332 ms  0x6c80 ret:0x7f626ee48c80
 20332 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20332 ms  0x6c80 privk:0x7f624b5b0020::7f624b5b0020  f0 91 cf 6c                                      ...l
 20332 ms  0x6c80 privk:0x7f624b5b0020::7f624b5b0020  e5 e5 e5 e5                                      ....
 20333 ms  0x6c80 PK11_Encrypt()
 20333 ms  0x6c80 symkey:0x7f624b231300
 20333 ms  0x6c80 SSL_AuthCertificateComplete()
 20333 ms  0x6c80 fd:0x7f6240371550
 20333 ms  0x6c80 err:0x0
 20336 ms  0x6c80 PK11_Encrypt()
 20336 ms  0x6c80 symkey:0x7f626eecdf80
 20345 ms  SECKEY_ECParamsToKeySize()
 20345 ms  0x6c80 ret:0x100
 20345 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20345 ms  0x6c80 cx:0x7f626d2b4c08
 20346 ms     | 0x6c80 EC_ValidatePublicKey()
 20347 ms     | 0x6c80 ret:0x0
 20347 ms  0x6c80 ret:0x7f624b264820::7f624b264820  70 5e c0 6d                                      p^.m
 20348 ms  0x6c80 PK11_PubDeriveWithKDF()
 20348 ms  0x6c80 seckey:0x7f624b264820
 20348 ms     | 0x6c80 EC_ValidatePublicKey()
 20349 ms     | 0x6c80 ret:0x0
 20356 ms  0x6c80 ret:0x7f626f8fde00
 20356 ms  0x6c80 PK11_DeriveWithFlags()
 20356 ms  0x6c80 basekey:0x7f626f8fde00
 20356 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20356 ms  0x6c80 ret:0x7f624b230400
 20356 ms  0x6c80 PK11_Derive()
 20356 ms  0x6c80 basekey:0x7f624b230400
 20356 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20357 ms  0x6c80 ret:0x7f624b230480
 20357 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20357 ms  0x6c80 privk:0x7f624b264820::7f624b264820  70 5e c0 6d                                      p^.m
 20357 ms  0x6c80 privk:0x7f624b264820::7f624b264820  e5 e5 e5 e5                                      ....
 20357 ms  0x6c80 PK11_Encrypt()
 20357 ms  0x6c80 symkey:0x7f6240330e80
 20357 ms  0x6c80 SSL_AuthCertificateComplete()
 20357 ms  0x6c80 fd:0x7f6265fed310
 20357 ms  0x6c80 err:0x0
 20357 ms  0x6c80 PK11_Encrypt()
 20357 ms  0x6c80 symkey:0x7f626d29c580
 20360 ms  0x6c80 PK11_Encrypt()
 20360 ms  0x6c80 symkey:0x7f6240330e80
           /* TID 0x6c88 */
 20362 ms  0x6c88 PR_Close()
 20362 ms  0x6c88 fd:0x7f624b5191f0
           /* TID 0x6c80 */
 20362 ms  0x6c80 PK11_Encrypt()
 20362 ms  0x6c80 symkey:0x7f6265fff400
 20363 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20363 ms  0x6c80 cx:0x7f624d5aa168
 20364 ms     | 0x6c80 EC_ValidatePublicKey()
 20364 ms     | 0x6c80 ret:0x0
 20364 ms  0x6c80 ret:0x7f624b26d020::7f624b26d020  40 5c c0 6d                                      @\.m
 20364 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20364 ms  0x6c80 cx:0x7f624d5aa168
 20364 ms     | 0x6c80 EC_ValidatePublicKey()
 20366 ms     | 0x6c80 ret:0x0
 20366 ms  0x6c80 ret:0x7f624b26f020::7f624b26f020  80 23 c8 6d                                      .#.m
 20378 ms  0x6c80 PK11_Encrypt()
 20378 ms  0x6c80 symkey:0x7f626eee7380
 20381 ms  0x6c80 PR_Close()
 20381 ms  0x6c80 fd:0x7f624d944490
 20381 ms     | 0x6c80 PK11_Encrypt()
 20381 ms     | 0x6c80 symkey:0x7f626dfeef80
 20392 ms  0x6c80 PK11_Encrypt()
 20392 ms  0x6c80 symkey:0x7f626eee7a00
 20405 ms  0x6c80 SSL_ImportFD()
 20405 ms  0x6c80 ret:0x7f624b2590a0
 20405 ms  0x6c80 SSL_AuthCertificateHook()
 20405 ms  0x6c80 fd:0x7f624b2590a0
 20405 ms  0x6c80 ret:0x0
 20405 ms  0x6c80 PR_Connect()
 20405 ms  0x6c80 fd:0x7f624b2590a0
           /* TID 0x6c88 */
 20427 ms  0x6c88 PR_Close()
 20427 ms  0x6c88 fd:0x7f624b259070
           /* TID 0x6c80 */
 20429 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20429 ms  0x6c80 privk:0x7f624b4f4020::7f624b4f4020  70 e4 29 6d                                      p.)m
 20429 ms  0x6c80 privk:0x7f624b4f4020::7f624b4f4020  e5 e5 e5 e5                                      ....
 20429 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20429 ms  0x6c80 privk:0x7f624b4f2020::7f624b4f2020  60 9a cf 6c                                      `..l
 20429 ms  0x6c80 privk:0x7f624b4f2020::7f624b4f2020  e5 e5 e5 e5                                      ....
 20433 ms  0x6c80 SSL_ImportFD()
 20433 ms  0x6c80 ret:0x7f624b259220
 20433 ms  0x6c80 SSL_AuthCertificateHook()
 20433 ms  0x6c80 fd:0x7f624b259220
 20433 ms  0x6c80 ret:0x0
 20434 ms  0x6c80 PK11_Encrypt()
 20434 ms  0x6c80 symkey:0x7f626f8fd100
 20434 ms  0x6c80 PR_Connect()
 20434 ms  0x6c80 fd:0x7f624b259220
           /* TID 0x6c88 */
 20439 ms  0x6c88 PR_Close()
 20439 ms  0x6c88 fd:0x7f6240371d00
           /* TID 0x6c80 */
 20456 ms  0x6c80 PR_Connect()
 20456 ms  0x6c80 fd:0x7f624b2593a0
           /* TID 0x6c88 */
 20466 ms  0x6c88 PR_Close()
 20466 ms  0x6c88 fd:0x7f6240371d00
 20466 ms  0x6c88 PR_Close()
 20466 ms  0x6c88 fd:0x7f6240371d00
 20467 ms  0x6c88 PR_Close()
 20467 ms  0x6c88 fd:0x7f6240371d00
 20467 ms  0x6c88 PR_Close()
 20467 ms  0x6c88 fd:0x7f6240371d00
 20468 ms  0x6c88 PR_Close()
 20468 ms  0x6c88 fd:0x7f6240371d00
 20468 ms  0x6c88 PR_Close()
 20468 ms  0x6c88 fd:0x7f6240371d00
 20469 ms  0x6c88 PR_Close()
 20469 ms  0x6c88 fd:0x7f6240371d00
 20469 ms  0x6c88 PR_Close()
 20469 ms  0x6c88 fd:0x7f6240371d00
 20470 ms  0x6c88 PR_Close()
 20470 ms  0x6c88 fd:0x7f6240371d00
 20470 ms  0x6c88 PR_Close()
 20470 ms  0x6c88 fd:0x7f6240371d00
 20471 ms  0x6c88 PR_Close()
 20471 ms  0x6c88 fd:0x7f6240371d00
 20476 ms  0x6c88 PR_Close()
 20476 ms  0x6c88 fd:0x7f6240371d00
 20476 ms  0x6c88 PR_Close()
 20476 ms  0x6c88 fd:0x7f6240371d00
 20477 ms  0x6c88 PR_Close()
 20477 ms  0x6c88 fd:0x7f6240371d00
 20477 ms  0x6c88 PR_Close()
 20477 ms  0x6c88 fd:0x7f6240371d00
 20478 ms  0x6c88 PR_Close()
 20478 ms  0x6c88 fd:0x7f6240371d00
           /* TID 0x6c80 */
 20484 ms  0x6c80 PK11_Encrypt()
 20484 ms  0x6c80 symkey:0x7f626f8fd100
 20487 ms  0x6c80 PK11_Encrypt()
 20487 ms  0x6c80 symkey:0x7f626f8fd100
 20488 ms  0x6c80 PK11_Encrypt()
 20488 ms  0x6c80 symkey:0x7f626f8fd100
 20490 ms  0x6c80 PK11_Encrypt()
 20490 ms  0x6c80 symkey:0x7f626f8fd100
 20491 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20491 ms  0x6c80 cx:0x7f62400595c8
 20491 ms     | 0x6c80 EC_ValidatePublicKey()
 20491 ms     | 0x6c80 ret:0x0
 20491 ms  0x6c80 ret:0x7f624b292820::7f624b292820  40 dc 08 6a                                      @..j
 20491 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20491 ms  0x6c80 cx:0x7f62400595c8
 20492 ms     | 0x6c80 EC_ValidatePublicKey()
 20493 ms     | 0x6c80 ret:0x0
 20493 ms  0x6c80 ret:0x7f624b294820::7f624b294820  60 9a cf 6c                                      `..l
           /* TID 0x6c88 */
 20495 ms  0x6c88 PR_Close()
 20495 ms  0x6c88 fd:0x7f624b2597c0
           /* TID 0x6c80 */
 20500 ms  0x6c80 PK11_Encrypt()
 20500 ms  0x6c80 symkey:0x7f626f8fd100
 20501 ms  0x6c80 PK11_Encrypt()
 20501 ms  0x6c80 symkey:0x7f626f8fd100
 20502 ms  0x6c80 PK11_Encrypt()
 20502 ms  0x6c80 symkey:0x7f626f8fd100
 20502 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20502 ms  0x6c80 cx:0x7f624d5a8288
 20506 ms     | 0x6c80 EC_ValidatePublicKey()
 20506 ms     | 0x6c80 ret:0x0
 20506 ms  0x6c80 ret:0x7f624b29c020::7f624b29c020  20 ce 2a 6d                                       .*m
 20506 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20506 ms  0x6c80 cx:0x7f624d5a8288
 20507 ms     | 0x6c80 EC_ValidatePublicKey()
 20508 ms     | 0x6c80 ret:0x0
 20508 ms  0x6c80 ret:0x7f624b3c4820::7f624b3c4820  00 51 c0 6d                                      .Q.m
 20509 ms  0x6c80 SSL_ImportFD()
 20509 ms  0x6c80 ret:0x7f624b259af0
 20509 ms  0x6c80 SSL_AuthCertificateHook()
 20509 ms  0x6c80 fd:0x7f624b259af0
 20509 ms  0x6c80 ret:0x0
 20509 ms  0x6c80 PR_Connect()
 20509 ms  0x6c80 fd:0x7f624b259af0
 20510 ms  0x6c80 SSL_ImportFD()
 20510 ms  0x6c80 ret:0x7f624b259d30
 20510 ms  0x6c80 SSL_AuthCertificateHook()
 20510 ms  0x6c80 fd:0x7f624b259d30
 20510 ms  0x6c80 ret:0x0
 20510 ms  0x6c80 PR_Connect()
 20510 ms  0x6c80 fd:0x7f624b259d30
 20511 ms  0x6c80 SSL_ImportFD()
 20511 ms  0x6c80 ret:0x7f624b2598b0
 20511 ms  0x6c80 SSL_AuthCertificateHook()
 20511 ms  0x6c80 fd:0x7f624b2598b0
 20511 ms  0x6c80 ret:0x0
 20511 ms  0x6c80 PR_Connect()
 20511 ms  0x6c80 fd:0x7f624b2598b0
 20512 ms  0x6c80 SSL_ImportFD()
 20512 ms  0x6c80 ret:0x7f624b259a00
 20512 ms  0x6c80 SSL_AuthCertificateHook()
 20512 ms  0x6c80 fd:0x7f624b259a00
 20512 ms  0x6c80 ret:0x0
 20512 ms  0x6c80 PR_Connect()
 20512 ms  0x6c80 fd:0x7f624b259a00
 20512 ms  0x6c80 SSL_ImportFD()
 20512 ms  0x6c80 ret:0x7f624b259a90
 20512 ms  0x6c80 SSL_AuthCertificateHook()
 20512 ms  0x6c80 fd:0x7f624b259a90
 20512 ms  0x6c80 ret:0x0
 20512 ms  0x6c80 PR_Connect()
 20512 ms  0x6c80 fd:0x7f624b259a90
 20513 ms  0x6c80 PK11_Encrypt()
 20513 ms  0x6c80 symkey:0x7f626f8fd100
 20516 ms  0x6c80 PK11_Encrypt()
 20516 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c9c */
 20536 ms  0x6c9c PR_Close()
 20536 ms  0x6c9c fd:0x7f624b259ac0
           /* TID 0x6c88 */
 20550 ms  0x6c88 PR_Close()
 20550 ms  0x6c88 fd:0x7f624b259370
 20550 ms  0x6c88 PR_Close()
 20550 ms  0x6c88 fd:0x7f624b259550
 20550 ms  0x6c88 PR_Close()
 20550 ms  0x6c88 fd:0x7f624b259640
 20550 ms  0x6c88 PR_Close()
 20550 ms  0x6c88 fd:0x7f624b259d90
           /* TID 0x6c80 */
 20550 ms  0x6c80 PK11_Derive()
 20550 ms  0x6c80 basekey:0x7f626ea08200
 20550 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20551 ms  0x6c80 ret:0x7f626ead1080
 20551 ms  0x6c80 PK11_PubDeriveWithKDF()
 20551 ms  0x6c80 seckey:0x7f624b292820
 20551 ms     | 0x6c80 EC_ValidatePublicKey()
 20551 ms     | 0x6c80 ret:0x0
 20551 ms  0x6c80 ret:0x7f626ea08200
 20551 ms  SECKEY_ECParamsToKeySize()
 20551 ms  0x6c80 ret:0xff
 20551 ms  0x6c80 PK11_DeriveWithFlags()
 20551 ms  0x6c80 basekey:0x7f626ead1080
 20551 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20551 ms  0x6c80 ret:0x7f626f8fde00
 20551 ms  0x6c80 PK11_Derive()
 20551 ms  0x6c80 basekey:0x7f626ea08200
 20551 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20551 ms  0x6c80 ret:0x7f624b230100
 20551 ms  0x6c80 PK11_DeriveWithFlags()
 20551 ms  0x6c80 basekey:0x7f624b230100
 20551 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20551 ms  0x6c80 ret:0x7f626ead1080
 20551 ms  0x6c80 PK11_DeriveWithFlags()
 20551 ms  0x6c80 basekey:0x7f624b230100
 20551 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20551 ms  0x6c80 ret:0x7f626ea08200
 20551 ms  0x6c80 PK11_DeriveWithFlags()
 20551 ms  0x6c80 basekey:0x7f624b230100
 20551 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20551 ms  0x6c80 ret:0x7f626f8fde00
 20551 ms  0x6c80 PK11_Derive()
 20551 ms  0x6c80 basekey:0x7f624b230280
 20551 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20551 ms  0x6c80 ret:0x7f624b230180
 20551 ms  0x6c80 PK11_DeriveWithFlags()
 20551 ms  0x6c80 basekey:0x7f626ea08200
 20551 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20551 ms  0x6c80 ret:0x7f624b230100
 20551 ms  0x6c80 PK11_DeriveWithFlags()
 20551 ms  0x6c80 basekey:0x7f626ea08200
 20551 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20551 ms  0x6c80 ret:0x7f626f8fde00
           /* TID 0x6d25 */
 20552 ms  0x6d25 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 20553 ms  0x6d25 ret:0x0
 20553 ms  0x6d25 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 20553 ms  0x6d25 ret:0x0
           /* TID 0x6c80 */
 20553 ms  0x6c80 PK11_DeriveWithFlags()
 20553 ms  0x6c80 basekey:0x7f626ea08200
 20553 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20553 ms  0x6c80 ret:0x7f626f8fde00
 20553 ms  0x6c80 SSL_AuthCertificateComplete()
 20553 ms  0x6c80 fd:0x7f624b259220
 20553 ms  0x6c80 err:0x0
 20553 ms     | 0x6c80 PK11_DeriveWithFlags()
 20553 ms     | 0x6c80 basekey:0x7f624b230180
 20553 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20553 ms     | 0x6c80 ret:0x7f626f8fde00
 20553 ms     | 0x6c80 PK11_DeriveWithFlags()
 20553 ms     | 0x6c80 basekey:0x7f624b230180
 20553 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20553 ms     | 0x6c80 ret:0x7f624b230280
 20553 ms     | 0x6c80 PK11_DeriveWithFlags()
 20553 ms     | 0x6c80 basekey:0x7f624b230180
 20553 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20553 ms     | 0x6c80 ret:0x7f624b230080
 20553 ms     | 0x6c80 PK11_DeriveWithFlags()
 20553 ms     | 0x6c80 basekey:0x7f626ead1080
 20553 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20553 ms     | 0x6c80 ret:0x7f624b230300
 20553 ms     | 0x6c80 PK11_DeriveWithFlags()
 20553 ms     | 0x6c80 basekey:0x7f626ead1080
 20553 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20553 ms     | 0x6c80 ret:0x7f624b230380
 20553 ms     | 0x6c80 PK11_DeriveWithFlags()
 20553 ms     | 0x6c80 basekey:0x7f624b230280
 20553 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20553 ms     | 0x6c80 ret:0x7f624b230380
 20553 ms     | 0x6c80 PK11_DeriveWithFlags()
 20553 ms     | 0x6c80 basekey:0x7f624b230280
 20553 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20553 ms     | 0x6c80 ret:0x7f626e2e9a00
 20553 ms     | 0x6c80 PK11_DeriveWithFlags()
 20553 ms     | 0x6c80 basekey:0x7f626ead1080
 20553 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20553 ms     | 0x6c80 ret:0x7f624b230100
 20553 ms     | 0x6c80 PK11_Encrypt()
 20553 ms     | 0x6c80 symkey:0x7f624b230300
 20553 ms     | 0x6c80 PK11_DeriveWithFlags()
 20553 ms     | 0x6c80 basekey:0x7f626f8fde00
 20553 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20553 ms     | 0x6c80 ret:0x7f624b230100
 20553 ms     | 0x6c80 PK11_DeriveWithFlags()
 20553 ms     | 0x6c80 basekey:0x7f626f8fde00
 20553 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20553 ms     | 0x6c80 ret:0x7f626e2e9a00
 20553 ms     | 0x6c80 PK11_DeriveWithFlags()
 20553 ms     | 0x6c80 basekey:0x7f624b230180
 20553 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 20554 ms     | 0x6c80 ret:0x7f624b230300
 20554 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 20554 ms     | 0x6c80 privk:0x7f624b294820::7f624b294820  60 9a cf 6c                                      `..l
 20554 ms     | 0x6c80 privk:0x7f624b294820::7f624b294820  e5 e5 e5 e5                                      ....
 20554 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 20554 ms     | 0x6c80 privk:0x7f624b292820::7f624b292820  40 dc 08 6a                                      @..j
 20554 ms     | 0x6c80 privk:0x7f624b292820::7f624b292820  e5 e5 e5 e5                                      ....
 20554 ms  0x6c80 PK11_Encrypt()
 20554 ms  0x6c80 symkey:0x7f624b230100
 20573 ms  0x6c80 PK11_Encrypt()
 20573 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 20608 ms  0x6c88 PR_Close()
 20608 ms  0x6c88 fd:0x7f624b2597c0
 20608 ms  0x6c88 PR_Close()
 20608 ms  0x6c88 fd:0x7f624b259940
 20608 ms  0x6c88 PR_Close()
 20608 ms  0x6c88 fd:0x7f624b259d60
 20608 ms  0x6c88 PR_Close()
 20608 ms  0x6c88 fd:0x7f624b2ff0a0
 20608 ms  0x6c88 PR_Close()
 20608 ms  0x6c88 fd:0x7f624b2ff190
           /* TID 0x6c80 */
 20609 ms  0x6c80 PK11_DeriveWithFlags()
 20609 ms  0x6c80 basekey:0x7f624b230300
 20609 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20609 ms  0x6c80 ret:0x7f626ea08200
 20609 ms  0x6c80 PK11_DeriveWithFlags()
 20609 ms  0x6c80 basekey:0x7f624b230300
 20609 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20609 ms  0x6c80 ret:0x7f626ea08200
 20609 ms  0x6c80 PR_Close()
 20609 ms  0x6c80 fd:0x7f624b259220
 20609 ms     | 0x6c80 PK11_Encrypt()
 20609 ms     | 0x6c80 symkey:0x7f624b230100
           /* TID 0x6c88 */
 20616 ms  0x6c88 PR_Close()
 20616 ms  0x6c88 fd:0x7f6240371c70
           /* TID 0x6c80 */
 20617 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20617 ms  0x6c80 cx:0x7f6240058588
 20617 ms     | 0x6c80 EC_ValidatePublicKey()
 20617 ms     | 0x6c80 ret:0x0
 20617 ms  0x6c80 ret:0x7f624b294020::7f624b294020  f0 71 1b 66                                      .q.f
 20617 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20617 ms  0x6c80 cx:0x7f6240058588
 20618 ms     | 0x6c80 EC_ValidatePublicKey()
 20619 ms     | 0x6c80 ret:0x0
 20619 ms  0x6c80 ret:0x7f624b4f3020::7f624b4f3020  50 f1 de 68                                      P..h
 20622 ms  0x6c80 PK11_Encrypt()
 20622 ms  0x6c80 symkey:0x7f626d28ce80
 20622 ms  0x6c80 PK11_Encrypt()
 20622 ms  0x6c80 symkey:0x7f626d28ce80
 20626 ms  0x6c80 PK11_Encrypt()
 20626 ms  0x6c80 symkey:0x7f625fca8a80
 20627 ms  0x6c80 PK11_Encrypt()
 20627 ms  0x6c80 symkey:0x7f625fca8a80
 20629 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20629 ms  0x6c80 privk:0x7f6268db0020::7f6268db0020  70 2e ec 69                                      p..i
 20629 ms  0x6c80 privk:0x7f6268db0020::7f6268db0020  e5 e5 e5 e5                                      ....
 20629 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20629 ms  0x6c80 privk:0x7f624d950020::7f624d950020  40 f7 14 66                                      @..f
 20629 ms  0x6c80 privk:0x7f624d950020::7f624d950020  e5 e5 e5 e5                                      ....
 20629 ms  0x6c80 PR_Close()
 20629 ms  0x6c80 fd:0x7f6268dfae50
 20629 ms     | 0x6c80 PK11_Encrypt()
 20629 ms     | 0x6c80 symkey:0x7f626ee48800
 20661 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20661 ms  0x6c80 cx:0x7f626d2b6128
 20662 ms     | 0x6c80 EC_ValidatePublicKey()
 20662 ms     | 0x6c80 ret:0x0
 20662 ms  0x6c80 ret:0x7f624b164820::7f624b164820  30 a8 17 66                                      0..f
 20662 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20662 ms  0x6c80 cx:0x7f626d2b6128
 20663 ms     | 0x6c80 EC_ValidatePublicKey()
 20664 ms     | 0x6c80 ret:0x0
 20664 ms  0x6c80 ret:0x7f624b166820::7f624b166820  70 2e ec 69                                      p..i
           /* TID 0x6c88 */
 20666 ms  0x6c88 PR_Close()
 20666 ms  0x6c88 fd:0x7f624b2594c0
           /* TID 0x6c80 */
 20673 ms  SECKEY_ECParamsToKeySize()
 20673 ms  0x6c80 ret:0x100
 20673 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20673 ms  0x6c80 cx:0x7f624d5aa168
 20674 ms     | 0x6c80 EC_ValidatePublicKey()
 20675 ms     | 0x6c80 ret:0x0
 20675 ms  0x6c80 ret:0x7f624b16c020::7f624b16c020  90 27 c8 6d                                      .'.m
 20675 ms  0x6c80 PK11_PubDeriveWithKDF()
 20675 ms  0x6c80 seckey:0x7f624b16c020
 20675 ms     | 0x6c80 EC_ValidatePublicKey()
 20681 ms     | 0x6c80 ret:0x0
 20685 ms  0x6c80 ret:0x7f626ead1f80
 20685 ms  0x6c80 PK11_DeriveWithFlags()
 20685 ms  0x6c80 basekey:0x7f626ead1f80
 20685 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20685 ms  0x6c80 ret:0x7f6262eb4f00
 20685 ms  0x6c80 PK11_Derive()
 20685 ms  0x6c80 basekey:0x7f6262eb4f00
 20685 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20685 ms  0x6c80 ret:0x7f624b230080
           /* TID 0x6c88 */
 20687 ms  0x6c88 PR_Close()
 20687 ms  0x6c88 fd:0x7f624d73f940
           /* TID 0x6c80 */
 20687 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20687 ms  0x6c80 privk:0x7f624b16c020::7f624b16c020  90 27 c8 6d                                      .'.m
 20687 ms  0x6c80 privk:0x7f624b16c020::7f624b16c020  e5 e5 e5 e5                                      ....
 20687 ms  0x6c80 PK11_Encrypt()
 20687 ms  0x6c80 symkey:0x7f626ee48700
 20687 ms  0x6c80 SSL_AuthCertificateComplete()
 20687 ms  0x6c80 fd:0x7f6240371af0
 20687 ms  0x6c80 err:0x0
           /* TID 0x6c88 */
 20689 ms  0x6c88 PR_Close()
 20689 ms  0x6c88 fd:0x7f624b40d8b0
           /* TID 0x6c80 */
 20695 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20695 ms  0x6c80 privk:0x7f624035a020::7f624035a020  d0 43 9a 69                                      .C.i
 20695 ms  0x6c80 privk:0x7f624035a020::7f624035a020  e5 e5 e5 e5                                      ....
 20695 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20695 ms  0x6c80 privk:0x7f6240358020::7f6240358020  b0 1f e4 65                                      ...e
 20695 ms  0x6c80 privk:0x7f6240358020::7f6240358020  e5 e5 e5 e5                                      ....
 20695 ms  0x6c80 PK11_Encrypt()
 20695 ms  0x6c80 symkey:0x7f626ee48700
 20695 ms  0x6c80 PK11_Encrypt()
 20695 ms  0x6c80 symkey:0x7f626ee48700
           /* TID 0x6c88 */
 20730 ms  0x6c88 PR_Close()
 20730 ms  0x6c88 fd:0x7f624b259970
           /* TID 0x6c80 */
 20734 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20734 ms  0x6c80 cx:0x7f6240059288
 20735 ms     | 0x6c80 EC_ValidatePublicKey()
 20735 ms     | 0x6c80 ret:0x0
 20735 ms  0x6c80 ret:0x7f624b1ad820::7f624b1ad820  00 21 3d 66                                      .!=f
 20735 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20735 ms  0x6c80 cx:0x7f6240059288
 20735 ms     | 0x6c80 EC_ValidatePublicKey()
 20737 ms     | 0x6c80 ret:0x0
 20737 ms  0x6c80 ret:0x7f624b1af820::7f624b1af820  00 9b cf 6c                                      ...l
 20759 ms  0x6c80 SSL_ImportFD()
 20759 ms  0x6c80 ret:0x7f626ee5f070
 20759 ms  0x6c80 SSL_AuthCertificateHook()
 20759 ms  0x6c80 fd:0x7f626ee5f070
 20759 ms  0x6c80 ret:0x0
 20760 ms  0x6c80 PR_Connect()
 20760 ms  0x6c80 fd:0x7f626ee5f070
 20761 ms  0x6c80 SSL_ImportFD()
 20761 ms  0x6c80 ret:0x7f62709898e0
 20761 ms  0x6c80 SSL_AuthCertificateHook()
 20761 ms  0x6c80 fd:0x7f62709898e0
 20761 ms  0x6c80 ret:0x0
 20761 ms  0x6c80 PR_Connect()
 20761 ms  0x6c80 fd:0x7f62709898e0
 20761 ms  0x6c80 SSL_ImportFD()
 20761 ms  0x6c80 ret:0x7f624b1fa160
 20761 ms  0x6c80 SSL_AuthCertificateHook()
 20761 ms  0x6c80 fd:0x7f624b1fa160
 20762 ms  0x6c80 ret:0x0
 20762 ms  0x6c80 PR_Connect()
 20762 ms  0x6c80 fd:0x7f624b1fa160
 20763 ms  0x6c80 SSL_ImportFD()
 20763 ms  0x6c80 ret:0x7f624b1fa3a0
 20763 ms  0x6c80 SSL_AuthCertificateHook()
 20763 ms  0x6c80 fd:0x7f624b1fa3a0
 20763 ms  0x6c80 ret:0x0
 20763 ms  0x6c80 PR_Connect()
 20763 ms  0x6c80 fd:0x7f624b1fa3a0
 20763 ms  0x6c80 SSL_ImportFD()
 20763 ms  0x6c80 ret:0x7f624b1fa2e0
 20763 ms  0x6c80 SSL_AuthCertificateHook()
 20763 ms  0x6c80 fd:0x7f624b1fa2e0
 20763 ms  0x6c80 ret:0x0
 20763 ms  0x6c80 PR_Connect()
 20763 ms  0x6c80 fd:0x7f624b1fa2e0
 20791 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20791 ms  0x6c80 cx:0x7f624005a128
 20791 ms     | 0x6c80 EC_ValidatePublicKey()
 20791 ms     | 0x6c80 ret:0x0
 20792 ms  0x6c80 ret:0x7f624b1b4020::7f624b1b4020  20 29 c8 6d                                       ).m
 20792 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20792 ms  0x6c80 cx:0x7f624005a128
 20792 ms     | 0x6c80 EC_ValidatePublicKey()
 20794 ms     | 0x6c80 ret:0x0
 20794 ms  0x6c80 ret:0x7f624b1b6020::7f624b1b6020  d0 2d c8 6d                                      .-.m
           /* TID 0x6c88 */
 20795 ms  0x6c88 PR_Close()
 20795 ms  0x6c88 fd:0x7f624b1fa370
           /* TID 0x6c80 */
 20799 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20799 ms  0x6c80 cx:0x7f6240059768
 20799 ms     | 0x6c80 EC_ValidatePublicKey()
 20799 ms     | 0x6c80 ret:0x0
 20799 ms  0x6c80 ret:0x7f624b1b8820::7f624b1b8820  70 2e c8 6d                                      p..m
 20799 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20799 ms  0x6c80 cx:0x7f6240059768
 20800 ms     | 0x6c80 EC_ValidatePublicKey()
 20801 ms     | 0x6c80 ret:0x0
 20801 ms  0x6c80 ret:0x7f624b1ba820::7f624b1ba820  b0 d0 d7 6d                                      ...m
 20802 ms  0x6c80 PK11_Encrypt()
 20802 ms  0x6c80 symkey:0x7f626d28ce80
 20802 ms  0x6c80 PK11_Encrypt()
 20802 ms  0x6c80 symkey:0x7f626d28ce80
 20803 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20803 ms  0x6c80 cx:0x7f6240059de8
 20803 ms     | 0x6c80 EC_ValidatePublicKey()
 20803 ms     | 0x6c80 ret:0x0
 20803 ms  0x6c80 ret:0x7f624b1bf820::7f624b1bf820  30 d3 d7 6d                                      0..m
 20803 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20803 ms  0x6c80 cx:0x7f6240059de8
 20804 ms     | 0x6c80 EC_ValidatePublicKey()
 20805 ms     | 0x6c80 ret:0x0
 20805 ms  0x6c80 ret:0x7f624b1c1820::7f624b1c1820  60 d5 d7 6d                                      `..m
 20813 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20813 ms  0x6c80 cx:0x7f6240059c48
 20814 ms     | 0x6c80 EC_ValidatePublicKey()
 20814 ms     | 0x6c80 ret:0x0
 20814 ms  0x6c80 ret:0x7f624b1c4020::7f624b1c4020  a0 d6 d7 6d                                      ...m
 20814 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20814 ms  0x6c80 cx:0x7f6240059c48
 20816 ms     | 0x6c80 EC_ValidatePublicKey()
 20817 ms     | 0x6c80 ret:0x0
 20817 ms  0x6c80 ret:0x7f624b1c6020::7f624b1c6020  d0 d8 d7 6d                                      ...m
 20818 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20818 ms  0x6c80 cx:0x7f6240059f88
 20818 ms     | 0x6c80 EC_ValidatePublicKey()
 20818 ms     | 0x6c80 ret:0x0
 20818 ms  0x6c80 ret:0x7f624b27f020::7f624b27f020  60 da d7 6d                                      `..m
 20818 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20818 ms  0x6c80 cx:0x7f6240059f88
 20819 ms     | 0x6c80 EC_ValidatePublicKey()
 20820 ms     | 0x6c80 ret:0x0
 20821 ms  0x6c80 ret:0x7f626501e820::7f626501e820  20 de d7 6d                                       ..m
           /* TID 0x6c88 */
 20836 ms  0x6c88 PR_Close()
 20836 ms  0x6c88 fd:0x7f624b1faa30
           /* TID 0x6c80 */
 20844 ms  0x6c80 PK11_Encrypt()
 20844 ms  0x6c80 symkey:0x7f626d28ce80
 20845 ms  0x6c80 PK11_Encrypt()
 20845 ms  0x6c80 symkey:0x7f626d28ce80
 20848 ms  SECKEY_ECParamsToKeySize()
 20848 ms  0x6c80 ret:0x100
 20848 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20848 ms  0x6c80 cx:0x7f624d5a8288
 20848 ms     | 0x6c80 EC_ValidatePublicKey()
 20850 ms     | 0x6c80 ret:0x0
 20850 ms  0x6c80 ret:0x7f624b036020::7f624b036020  10 1a d9 6d                                      ...m
 20850 ms  0x6c80 PK11_PubDeriveWithKDF()
 20850 ms  0x6c80 seckey:0x7f624b036020
 20850 ms     | 0x6c80 EC_ValidatePublicKey()
 20851 ms     | 0x6c80 ret:0x0
 20853 ms  0x6c80 ret:0x7f626ead1f80
 20853 ms  0x6c80 PK11_DeriveWithFlags()
 20853 ms  0x6c80 basekey:0x7f626ead1f80
 20853 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20853 ms  0x6c80 ret:0x7f624b230280
 20853 ms  0x6c80 PK11_Derive()
 20853 ms  0x6c80 basekey:0x7f624b230280
 20853 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20853 ms  0x6c80 ret:0x7f626f8fde00
 20853 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20853 ms  0x6c80 privk:0x7f624b036020::7f624b036020  10 1a d9 6d                                      ...m
 20853 ms  0x6c80 privk:0x7f624b036020::7f624b036020  e5 e5 e5 e5                                      ....
 20853 ms  0x6c80 PK11_Encrypt()
 20853 ms  0x6c80 symkey:0x7f626dfef280
           /* TID 0x6c9c */
 20854 ms  0x6c9c PR_Close()
 20854 ms  0x6c9c fd:0x7f624b1fabb0
 20856 ms  0x6c9c PR_Close()
 20856 ms  0x6c9c fd:0x7f624b1fabb0
           /* TID 0x6c88 */
 20858 ms  0x6c88 PR_Close()
 20858 ms  0x6c88 fd:0x7f624b1facd0
 20859 ms  0x6c88 PR_Close()
 20859 ms  0x6c88 fd:0x7f624b1facd0
           /* TID 0x6c80 */
 20863 ms  0x6c80 PR_Close()
 20863 ms  0x6c80 fd:0x7f624b40d9a0
 20863 ms     | 0x6c80 PK11_Encrypt()
 20863 ms     | 0x6c80 symkey:0x7f626f8fdc80
 20869 ms  0x6c80 PK11_Encrypt()
 20869 ms  0x6c80 symkey:0x7f626d28ce80
 20870 ms  0x6c80 PK11_Encrypt()
 20870 ms  0x6c80 symkey:0x7f626d28ce80
 20874 ms  0x6c80 PK11_Encrypt()
 20874 ms  0x6c80 symkey:0x7f626d28ce80
 20875 ms  0x6c80 PK11_Encrypt()
 20875 ms  0x6c80 symkey:0x7f626d28ce80
           /* TID 0x6d27 */
 20880 ms  0x6d27 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 20880 ms  0x6d27 ret:0x0
 20880 ms  0x6d27 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 20880 ms  0x6d27 ret:0x0
           /* TID 0x6c88 */
 20881 ms  0x6c88 PR_Close()
 20881 ms  0x6c88 fd:0x7f624b1fad30
           /* TID 0x6c80 */
 20881 ms  0x6c80 SSL_AuthCertificateComplete()
 20881 ms  0x6c80 fd:0x7f6240371ee0
 20881 ms  0x6c80 err:0x0
 20881 ms  0x6c80 PK11_Encrypt()
 20881 ms  0x6c80 symkey:0x7f626dfef280
           /* TID 0x6c88 */
 20892 ms  0x6c88 PR_Close()
 20892 ms  0x6c88 fd:0x7f624b1fac40
           /* TID 0x6c80 */
 20917 ms  SECKEY_ECParamsToKeySize()
 20917 ms  0x6c80 ret:0x100
 20917 ms  0x6c80 SECKEY_CreateECPrivateKey()
 20917 ms  0x6c80 cx:0x7f6240058588
 20917 ms     | 0x6c80 EC_ValidatePublicKey()
 20919 ms     | 0x6c80 ret:0x0
 20919 ms  0x6c80 ret:0x7f624b045020::7f624b045020  00 1b d9 6d                                      ...m
 20919 ms  0x6c80 PK11_PubDeriveWithKDF()
 20919 ms  0x6c80 seckey:0x7f624b045020
 20919 ms     | 0x6c80 EC_ValidatePublicKey()
 20920 ms     | 0x6c80 ret:0x0
 20922 ms  0x6c80 ret:0x7f626f8fcf80
 20922 ms  0x6c80 PK11_DeriveWithFlags()
 20922 ms  0x6c80 basekey:0x7f626f8fcf80
 20922 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20922 ms  0x6c80 ret:0x7f626dfeef00
 20922 ms  0x6c80 PK11_Derive()
 20922 ms  0x6c80 basekey:0x7f626dfeef00
 20922 ms     | 0x6c80 PK11_DeriveWithTemplate()
 20922 ms  0x6c80 ret:0x7f626ead1f80
 20922 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20922 ms  0x6c80 privk:0x7f624b045020::7f624b045020  00 1b d9 6d                                      ...m
 20922 ms  0x6c80 privk:0x7f624b045020::7f624b045020  e5 e5 e5 e5                                      ....
 20922 ms  0x6c80 PK11_Encrypt()
 20922 ms  0x6c80 symkey:0x7f626f8fd600
 20923 ms  0x6c80 SSL_AuthCertificateComplete()
 20923 ms  0x6c80 fd:0x7f624b519190
 20923 ms  0x6c80 err:0x0
 20924 ms  0x6c80 PK11_Encrypt()
 20924 ms  0x6c80 symkey:0x7f626f8fd600
           /* TID 0x6c88 */
 20935 ms  0x6c88 PR_Close()
 20935 ms  0x6c88 fd:0x7f624b259580
           /* TID 0x6c80 */
 20936 ms  0x6c80 PK11_Encrypt()
 20936 ms  0x6c80 symkey:0x7f626d28ce80
 20936 ms  0x6c80 PK11_Encrypt()
 20936 ms  0x6c80 symkey:0x7f626d28ce80
 20936 ms  0x6c80 PK11_Encrypt()
 20936 ms  0x6c80 symkey:0x7f626d28ce80
 20936 ms  0x6c80 PK11_Encrypt()
 20936 ms  0x6c80 symkey:0x7f626d28ce80
           /* TID 0x6c88 */
 20939 ms  0x6c88 PR_Close()
 20939 ms  0x6c88 fd:0x7f624b1fa6a0
           /* TID 0x6c80 */
 20998 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20998 ms  0x6c80 privk:0x7f624b26f020::7f624b26f020  80 23 c8 6d                                      .#.m
 20998 ms  0x6c80 privk:0x7f624b26f020::7f624b26f020  e5 e5 e5 e5                                      ....
 20998 ms  0x6c80 SECKEY_DestroyPrivateKey()
 20998 ms  0x6c80 privk:0x7f624b26d020::7f624b26d020  40 5c c0 6d                                      @\.m
 20998 ms  0x6c80 privk:0x7f624b26d020::7f624b26d020  e5 e5 e5 e5                                      ....
 20999 ms  0x6c80 PK11_Encrypt()
 20999 ms  0x6c80 symkey:0x7f626ee48700
 21052 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21052 ms  0x6c80 cx:0x7f624005a948
 21054 ms     | 0x6c80 EC_ValidatePublicKey()
 21054 ms     | 0x6c80 ret:0x0
 21054 ms  0x6c80 ret:0x7f624b43b820::7f624b43b820  80 53 c0 6d                                      .S.m
 21054 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21054 ms  0x6c80 cx:0x7f624005a948
 21056 ms     | 0x6c80 EC_ValidatePublicKey()
 21061 ms     | 0x6c80 ret:0x0
 21061 ms  0x6c80 ret:0x7f624b458820::7f624b458820  70 5e c0 6d                                      p^.m
 21066 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21066 ms  0x6c80 cx:0x7f62400595c8
 21068 ms     | 0x6c80 EC_ValidatePublicKey()
 21068 ms     | 0x6c80 ret:0x0
 21068 ms  0x6c80 ret:0x7f624b5af020::7f624b5af020  80 23 c8 6d                                      .#.m
 21068 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21068 ms  0x6c80 cx:0x7f62400595c8
 21070 ms     | 0x6c80 EC_ValidatePublicKey()
 21074 ms     | 0x6c80 ret:0x0
 21074 ms  0x6c80 ret:0x7f624d707820::7f624d707820  d0 13 d9 6d                                      ...m
 21076 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21076 ms  0x6c80 cx:0x7f624005a608
 21077 ms     | 0x6c80 EC_ValidatePublicKey()
 21077 ms     | 0x6c80 ret:0x0
 21077 ms  0x6c80 ret:0x7f624d720020::7f624d720020  10 1a d9 6d                                      ...m
 21077 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21077 ms  0x6c80 cx:0x7f624005a608
 21078 ms     | 0x6c80 EC_ValidatePublicKey()
 21081 ms     | 0x6c80 ret:0x0
 21081 ms  0x6c80 ret:0x7f624d7e4820::7f624d7e4820  80 1d d9 6d                                      ...m
 21082 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21082 ms  0x6c80 cx:0x7f624005a7a8
 21083 ms     | 0x6c80 EC_ValidatePublicKey()
 21083 ms     | 0x6c80 ret:0x0
 21083 ms  0x6c80 ret:0x7f624d94f020::7f624d94f020  10 1f d9 6d                                      ...m
 21083 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21083 ms  0x6c80 cx:0x7f624005a7a8
 21084 ms     | 0x6c80 EC_ValidatePublicKey()
 21086 ms     | 0x6c80 ret:0x0
 21086 ms  0x6c80 ret:0x7f624d9ac020::7f624d9ac020  90 72 d9 6d                                      .r.m
 21088 ms  SECKEY_ECParamsToKeySize()
 21088 ms  0x6c80 ret:0x100
 21088 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21088 ms  0x6c80 cx:0x7f6240059288
 21089 ms     | 0x6c80 EC_ValidatePublicKey()
 21091 ms     | 0x6c80 ret:0x0
 21091 ms  0x6c80 ret:0x7f624d9bb820::7f624d9bb820  30 78 d9 6d                                      0x.m
 21091 ms  0x6c80 PK11_PubDeriveWithKDF()
 21091 ms  0x6c80 seckey:0x7f624d9bb820
 21091 ms     | 0x6c80 EC_ValidatePublicKey()
 21093 ms     | 0x6c80 ret:0x0
 21095 ms  0x6c80 ret:0x7f626f8fcf80
 21095 ms  0x6c80 PK11_DeriveWithFlags()
 21095 ms  0x6c80 basekey:0x7f626f8fcf80
 21095 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21095 ms  0x6c80 ret:0x7f624b230300
 21095 ms  0x6c80 PK11_Derive()
 21095 ms  0x6c80 basekey:0x7f624b230300
 21095 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21095 ms  0x6c80 ret:0x7f624b230380
 21095 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21095 ms  0x6c80 privk:0x7f624d9bb820::7f624d9bb820  30 78 d9 6d                                      0x.m
 21095 ms  0x6c80 privk:0x7f624d9bb820::7f624d9bb820  e5 e5 e5 e5                                      ....
 21096 ms  0x6c80 PK11_Encrypt()
 21096 ms  0x6c80 symkey:0x7f624b130b00
 21096 ms  0x6c80 SSL_ImportFD()
 21096 ms  0x6c80 ret:0x7f624b40d8b0
 21096 ms  0x6c80 SSL_AuthCertificateHook()
 21096 ms  0x6c80 fd:0x7f624b40d8b0
 21096 ms  0x6c80 ret:0x0
 21096 ms  0x6c80 PR_Connect()
 21096 ms  0x6c80 fd:0x7f624b40d8b0
 21097 ms  0x6c80 SSL_ImportFD()
 21097 ms  0x6c80 ret:0x7f624b1fa100
 21097 ms  0x6c80 SSL_AuthCertificateHook()
 21097 ms  0x6c80 fd:0x7f624b1fa100
 21097 ms  0x6c80 ret:0x0
 21097 ms  0x6c80 PR_Connect()
 21097 ms  0x6c80 fd:0x7f624b1fa100
 21097 ms  0x6c80 SSL_ImportFD()
 21097 ms  0x6c80 ret:0x7f624b1faac0
 21097 ms  0x6c80 SSL_AuthCertificateHook()
 21097 ms  0x6c80 fd:0x7f624b1faac0
 21097 ms  0x6c80 ret:0x0
 21097 ms  0x6c80 PR_Connect()
 21097 ms  0x6c80 fd:0x7f624b1faac0
 21097 ms  0x6c80 SSL_ImportFD()
 21097 ms  0x6c80 ret:0x7f624b1fadc0
 21097 ms  0x6c80 SSL_AuthCertificateHook()
 21097 ms  0x6c80 fd:0x7f624b1fadc0
 21097 ms  0x6c80 ret:0x0
 21097 ms  0x6c80 PR_Connect()
 21097 ms  0x6c80 fd:0x7f624b1fadc0
 21098 ms  0x6c80 SSL_ImportFD()
 21098 ms  0x6c80 ret:0x7f624b1fafa0
 21098 ms  0x6c80 SSL_AuthCertificateHook()
 21098 ms  0x6c80 fd:0x7f624b1fafa0
 21098 ms  0x6c80 ret:0x0
 21098 ms  0x6c80 PR_Connect()
 21098 ms  0x6c80 fd:0x7f624b1fafa0
 21098 ms  0x6c80 SSL_AuthCertificateComplete()
 21098 ms  0x6c80 fd:0x7f624b2590a0
 21098 ms  0x6c80 err:0x0
 21099 ms  SECKEY_ECParamsToKeySize()
 21099 ms  0x6c80 ret:0x100
 21099 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21099 ms  0x6c80 cx:0x7f6240059de8
 21100 ms     | 0x6c80 EC_ValidatePublicKey()
 21102 ms     | 0x6c80 ret:0x0
 21102 ms  0x6c80 ret:0x7f624d9c2820::7f624d9c2820  d0 78 d9 6d                                      .x.m
 21102 ms  0x6c80 PK11_PubDeriveWithKDF()
 21102 ms  0x6c80 seckey:0x7f624d9c2820
 21102 ms     | 0x6c80 EC_ValidatePublicKey()
 21103 ms     | 0x6c80 ret:0x0
 21105 ms  0x6c80 ret:0x7f626f8fcf80
 21105 ms  0x6c80 PK11_DeriveWithFlags()
 21105 ms  0x6c80 basekey:0x7f626f8fcf80
 21105 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21105 ms  0x6c80 ret:0x7f624b230100
 21105 ms  0x6c80 PK11_Derive()
 21105 ms  0x6c80 basekey:0x7f624b230100
 21105 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21105 ms  0x6c80 ret:0x7f626ea08200
 21105 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21105 ms  0x6c80 privk:0x7f624d9c2820::7f624d9c2820  d0 78 d9 6d                                      .x.m
 21105 ms  0x6c80 privk:0x7f624d9c2820::7f624d9c2820  e5 e5 e5 e5                                      ....
 21105 ms  0x6c80 PK11_Encrypt()
 21105 ms  0x6c80 symkey:0x7f624b131480
 21108 ms  0x6c80 SSL_AuthCertificateComplete()
 21108 ms  0x6c80 fd:0x7f624b2598b0
 21108 ms  0x6c80 err:0x0
 21109 ms  0x6c80 PK11_Encrypt()
 21109 ms  0x6c80 symkey:0x7f624b131480
 21119 ms  0x6c80 SSL_AuthCertificateComplete()
 21119 ms  0x6c80 fd:0x7f624b259a00
 21119 ms  0x6c80 err:0x0
 21120 ms  SECKEY_ECParamsToKeySize()
 21120 ms  0x6c80 ret:0x100
 21120 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21120 ms  0x6c80 cx:0x7f6240059f88
 21121 ms     | 0x6c80 EC_ValidatePublicKey()
 21122 ms     | 0x6c80 ret:0x0
 21122 ms  0x6c80 ret:0x7f624d9c5820::7f624d9c5820  50 7b d9 6d                                      P{.m
 21122 ms  0x6c80 PK11_PubDeriveWithKDF()
 21122 ms  0x6c80 seckey:0x7f624d9c5820
 21122 ms     | 0x6c80 EC_ValidatePublicKey()
 21124 ms     | 0x6c80 ret:0x0
 21125 ms  0x6c80 ret:0x7f626f8fcf80
 21125 ms  0x6c80 PK11_DeriveWithFlags()
 21125 ms  0x6c80 basekey:0x7f626f8fcf80
 21125 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21125 ms  0x6c80 ret:0x7f626ead1080
 21125 ms  0x6c80 PK11_Derive()
 21125 ms  0x6c80 basekey:0x7f626ead1080
 21125 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21126 ms  0x6c80 ret:0x7f624b230180
 21126 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21126 ms  0x6c80 privk:0x7f624d9c5820::7f624d9c5820  50 7b d9 6d                                      P{.m
 21126 ms  0x6c80 privk:0x7f624d9c5820::7f624d9c5820  e5 e5 e5 e5                                      ....
 21126 ms  0x6c80 PK11_Encrypt()
 21126 ms  0x6c80 symkey:0x7f626610f500
 21126 ms  0x6c80 PK11_Encrypt()
 21126 ms  0x6c80 symkey:0x7f626610f500
 21140 ms  0x6c80 SSL_AuthCertificateComplete()
 21140 ms  0x6c80 fd:0x7f624b259a90
 21140 ms  0x6c80 err:0x0
 21146 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21146 ms  0x6c80 cx:0x7f624d5a9948
 21147 ms     | 0x6c80 EC_ValidatePublicKey()
 21147 ms     | 0x6c80 ret:0x0
 21147 ms  0x6c80 ret:0x7f624d9c5820::7f624d9c5820  10 7a d9 6d                                      .z.m
 21147 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21147 ms  0x6c80 cx:0x7f624d5a9948
 21147 ms     | 0x6c80 EC_ValidatePublicKey()
 21149 ms     | 0x6c80 ret:0x0
 21149 ms  0x6c80 ret:0x7f624ec5d020::7f624ec5d020  90 7c d9 6d                                      .|.m
 21149 ms  SECKEY_ECParamsToKeySize()
 21149 ms  0x6c80 ret:0x100
 21149 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21149 ms  0x6c80 cx:0x7f624005a128
 21150 ms     | 0x6c80 EC_ValidatePublicKey()
 21151 ms     | 0x6c80 ret:0x0
 21151 ms  0x6c80 ret:0x7f624edb1820::7f624edb1820  10 7f d9 6d                                      ...m
 21151 ms  0x6c80 PK11_PubDeriveWithKDF()
 21151 ms  0x6c80 seckey:0x7f624edb1820
 21151 ms     | 0x6c80 EC_ValidatePublicKey()
 21153 ms     | 0x6c80 ret:0x0
 21154 ms  0x6c80 ret:0x7f626f8fcf80
 21154 ms  0x6c80 PK11_DeriveWithFlags()
 21154 ms  0x6c80 basekey:0x7f626f8fcf80
 21154 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21154 ms  0x6c80 ret:0x7f626e2e9a00
 21154 ms  0x6c80 PK11_Derive()
 21154 ms  0x6c80 basekey:0x7f626e2e9a00
 21154 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21154 ms  0x6c80 ret:0x7f6240223b80
 21154 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21154 ms  0x6c80 privk:0x7f624edb1820::7f624edb1820  10 7f d9 6d                                      ...m
 21154 ms  0x6c80 privk:0x7f624edb1820::7f624edb1820  e5 e5 e5 e5                                      ....
 21154 ms  0x6c80 PK11_Encrypt()
 21154 ms  0x6c80 symkey:0x7f62661a7e00
 21155 ms  0x6c80 PK11_Encrypt()
 21155 ms  0x6c80 symkey:0x7f62661a7e00
           /* TID 0x6c88 */
 21158 ms  0x6c88 PR_Close()
 21158 ms  0x6c88 fd:0x7f624b1faf40
 21167 ms  0x6c88 PR_Close()
 21167 ms  0x6c88 fd:0x7f62402630a0
           /* TID 0x6c80 */
 21172 ms  0x6c80 PK11_Encrypt()
 21172 ms  0x6c80 symkey:0x7f626d28ce80
 21172 ms  0x6c80 PK11_Encrypt()
 21172 ms  0x6c80 symkey:0x7f626d28ce80
 21173 ms  0x6c80 PK11_Encrypt()
 21173 ms  0x6c80 symkey:0x7f626d28ce80
 21173 ms  0x6c80 PK11_Encrypt()
 21173 ms  0x6c80 symkey:0x7f626d28ce80
 21173 ms  0x6c80 PK11_Encrypt()
 21173 ms  0x6c80 symkey:0x7f626d28ce80
 21175 ms  0x6c80 PR_Close()
 21175 ms  0x6c80 fd:0x7f624d944d90
 21175 ms     | 0x6c80 PK11_Encrypt()
 21175 ms     | 0x6c80 symkey:0x7f626d28ce80
 21187 ms  0x6c80 SSL_ImportFD()
 21187 ms  0x6c80 ret:0x7f627095b460
 21187 ms  0x6c80 SSL_AuthCertificateHook()
 21187 ms  0x6c80 fd:0x7f627095b460
 21187 ms  0x6c80 ret:0x0
 21187 ms  0x6c80 PR_Connect()
 21187 ms  0x6c80 fd:0x7f627095b460
 21205 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21205 ms  0x6c80 privk:0x7f624b3c4820::7f624b3c4820  00 51 c0 6d                                      .Q.m
 21206 ms  0x6c80 privk:0x7f624b3c4820::7f624b3c4820  e5 e5 e5 e5                                      ....
 21206 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21206 ms  0x6c80 privk:0x7f624b29c020::7f624b29c020  20 ce 2a 6d                                       .*m
 21206 ms  0x6c80 privk:0x7f624b29c020::7f624b29c020  e5 e5 e5 e5                                      ....
 21234 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21234 ms  0x6c80 privk:0x7f624b4f3020::7f624b4f3020  50 f1 de 68                                      P..h
 21234 ms  0x6c80 privk:0x7f624b4f3020::7f624b4f3020  e5 e5 e5 e5                                      ....
 21234 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21234 ms  0x6c80 privk:0x7f624b294020::7f624b294020  f0 71 1b 66                                      .q.f
 21234 ms  0x6c80 privk:0x7f624b294020::7f624b294020  e5 e5 e5 e5                                      ....
 21234 ms  0x6c80 PR_Close()
 21234 ms  0x6c80 fd:0x7f624b519190
 21234 ms     | 0x6c80 PK11_Encrypt()
 21234 ms     | 0x6c80 symkey:0x7f626f8fd600
           /* TID 0x6c88 */
 21274 ms  0x6c88 PR_Close()
 21274 ms  0x6c88 fd:0x7f62400ba4c0
           /* TID 0x6c80 */
 21299 ms  0x6c80 SSL_AuthCertificateComplete()
 21299 ms  0x6c80 fd:0x7f624b259d30
 21299 ms  0x6c80 err:0x0
 21310 ms  0x6c80 PR_Close()
 21310 ms  0x6c80 fd:0x7f624d944670
 21310 ms  0x6c80 PR_Close()
 21310 ms  0x6c80 fd:0x7f624d9448e0
 21325 ms  SECKEY_ECParamsToKeySize()
 21325 ms  0x6c80 ret:0x100
 21325 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21325 ms  0x6c80 cx:0x7f6240059c48
 21326 ms     | 0x6c80 EC_ValidatePublicKey()
 21327 ms     | 0x6c80 ret:0x0
 21327 ms  0x6c80 ret:0x7f624b0cc020::7f624b0cc020  80 e3 dd 6d                                      ...m
 21327 ms  0x6c80 PK11_PubDeriveWithKDF()
 21327 ms  0x6c80 seckey:0x7f624b0cc020
 21327 ms     | 0x6c80 EC_ValidatePublicKey()
 21329 ms     | 0x6c80 ret:0x0
 21330 ms  0x6c80 ret:0x7f626ead1f80
 21330 ms  0x6c80 PK11_DeriveWithFlags()
 21330 ms  0x6c80 basekey:0x7f626ead1f80
 21330 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21330 ms  0x6c80 ret:0x7f626dfeef00
 21330 ms  0x6c80 PK11_Derive()
 21330 ms  0x6c80 basekey:0x7f626dfeef00
 21330 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21330 ms  0x6c80 ret:0x7f62617c2980
 21330 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21330 ms  0x6c80 privk:0x7f624b0cc020::7f624b0cc020  80 e3 dd 6d                                      ...m
 21330 ms  0x6c80 privk:0x7f624b0cc020::7f624b0cc020  e5 e5 e5 e5                                      ....
 21330 ms  0x6c80 PK11_Encrypt()
 21330 ms  0x6c80 symkey:0x7f626f8fdc00
 21331 ms  0x6c80 PK11_Encrypt()
 21331 ms  0x6c80 symkey:0x7f626f8fdc00
 21347 ms  0x6c80 SSL_ImportFD()
 21347 ms  0x6c80 ret:0x7f62400ba970
 21347 ms  0x6c80 SSL_AuthCertificateHook()
 21347 ms  0x6c80 fd:0x7f62400ba970
 21347 ms  0x6c80 ret:0x0
 21347 ms  0x6c80 PR_Connect()
 21347 ms  0x6c80 fd:0x7f62400ba970
 21347 ms  0x6c80 SSL_ImportFD()
 21347 ms  0x6c80 ret:0x7f62400ba7f0
 21347 ms  0x6c80 SSL_AuthCertificateHook()
 21347 ms  0x6c80 fd:0x7f62400ba7f0
 21347 ms  0x6c80 ret:0x0
 21347 ms  0x6c80 PR_Connect()
 21347 ms  0x6c80 fd:0x7f62400ba7f0
 21348 ms  0x6c80 SSL_ImportFD()
 21348 ms  0x6c80 ret:0x7f62400bacd0
 21348 ms  0x6c80 SSL_AuthCertificateHook()
 21348 ms  0x6c80 fd:0x7f62400bacd0
 21348 ms  0x6c80 ret:0x0
 21348 ms  0x6c80 PR_Connect()
 21348 ms  0x6c80 fd:0x7f62400bacd0
 21348 ms  0x6c80 SSL_ImportFD()
 21348 ms  0x6c80 ret:0x7f62400bac10
 21348 ms  0x6c80 SSL_AuthCertificateHook()
 21348 ms  0x6c80 fd:0x7f62400bac10
 21348 ms  0x6c80 ret:0x0
 21348 ms  0x6c80 PR_Connect()
 21348 ms  0x6c80 fd:0x7f62400bac10
 21349 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21349 ms  0x6c80 cx:0x7f624005ac88
 21351 ms     | 0x6c80 EC_ValidatePublicKey()
 21351 ms     | 0x6c80 ret:0x0
 21351 ms  0x6c80 ret:0x7f624b0cc020::7f624b0cc020  e0 e2 dd 6d                                      ...m
 21351 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21351 ms  0x6c80 cx:0x7f624005ac88
 21352 ms     | 0x6c80 EC_ValidatePublicKey()
 21353 ms     | 0x6c80 ret:0x0
 21353 ms  0x6c80 ret:0x7f624b0ce020::7f624b0ce020  c0 e4 dd 6d                                      ...m
 21354 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21354 ms  0x6c80 cx:0x7f624005bcc8
 21354 ms     | 0x6c80 EC_ValidatePublicKey()
 21354 ms     | 0x6c80 ret:0x0
 21354 ms  0x6c80 ret:0x7f624b0d0820::7f624b0d0820  50 e6 dd 6d                                      P..m
 21354 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21354 ms  0x6c80 cx:0x7f624005bcc8
 21355 ms     | 0x6c80 EC_ValidatePublicKey()
 21356 ms     | 0x6c80 ret:0x0
 21356 ms  0x6c80 ret:0x7f624b0d2820::7f624b0d2820  80 e8 dd 6d                                      ...m
 21357 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21357 ms  0x6c80 cx:0x7f624d5a8768
 21357 ms     | 0x6c80 EC_ValidatePublicKey()
 21357 ms     | 0x6c80 ret:0x0
 21357 ms  0x6c80 ret:0x7f624b0d5020::7f624b0d5020  c0 e9 dd 6d                                      ...m
 21357 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21357 ms  0x6c80 cx:0x7f624d5a8768
 21358 ms     | 0x6c80 EC_ValidatePublicKey()
 21359 ms     | 0x6c80 ret:0x0
 21359 ms  0x6c80 ret:0x7f624b0d7020::7f624b0d7020  f0 eb dd 6d                                      ...m
 21359 ms  0x6c80 SSL_ImportFD()
 21359 ms  0x6c80 ret:0x7f624b1fae80
 21359 ms  0x6c80 SSL_AuthCertificateHook()
 21359 ms  0x6c80 fd:0x7f624b1fae80
 21360 ms  0x6c80 ret:0x0
 21360 ms  0x6c80 PR_Connect()
 21360 ms  0x6c80 fd:0x7f624b1fae80
 21381 ms  0x6c80 SSL_AuthCertificateComplete()
 21381 ms  0x6c80 fd:0x7f626ee5f070
 21381 ms  0x6c80 err:0x0
 21382 ms  SECKEY_ECParamsToKeySize()
 21382 ms  0x6c80 ret:0x100
 21382 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21382 ms  0x6c80 cx:0x7f62400595c8
 21383 ms     | 0x6c80 EC_ValidatePublicKey()
 21384 ms     | 0x6c80 ret:0x0
 21384 ms  0x6c80 ret:0x7f624b0da820::7f624b0da820  c0 ee dd 6d                                      ...m
 21384 ms  0x6c80 PK11_PubDeriveWithKDF()
 21384 ms  0x6c80 seckey:0x7f624b0da820
 21384 ms     | 0x6c80 EC_ValidatePublicKey()
 21386 ms     | 0x6c80 ret:0x0
 21388 ms  0x6c80 ret:0x7f626ead1f80
 21388 ms  0x6c80 PK11_DeriveWithFlags()
 21388 ms  0x6c80 basekey:0x7f626ead1f80
 21388 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21388 ms  0x6c80 ret:0x7f626d28cc80
 21388 ms  0x6c80 PK11_Derive()
 21388 ms  0x6c80 basekey:0x7f626d28cc80
 21388 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21388 ms  0x6c80 ret:0x7f626f8fcf80
 21388 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21388 ms  0x6c80 privk:0x7f624b0da820::7f624b0da820  c0 ee dd 6d                                      ...m
 21388 ms  0x6c80 privk:0x7f624b0da820::7f624b0da820  e5 e5 e5 e5                                      ....
 21388 ms  0x6c80 PK11_Encrypt()
 21388 ms  0x6c80 symkey:0x7f6261becc80
 21389 ms  SECKEY_ECParamsToKeySize()
 21389 ms  0x6c80 ret:0x100
 21389 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21389 ms  0x6c80 cx:0x7f624005a7a8
 21390 ms     | 0x6c80 EC_ValidatePublicKey()
 21391 ms     | 0x6c80 ret:0x0
 21391 ms  0x6c80 ret:0x7f624b1c7020::7f624b1c7020  60 ef dd 6d                                      `..m
 21391 ms  0x6c80 PK11_PubDeriveWithKDF()
 21391 ms  0x6c80 seckey:0x7f624b1c7020
 21391 ms     | 0x6c80 EC_ValidatePublicKey()
 21393 ms     | 0x6c80 ret:0x0
 21394 ms  0x6c80 ret:0x7f626ead1f80
 21394 ms  0x6c80 PK11_DeriveWithFlags()
 21394 ms  0x6c80 basekey:0x7f626ead1f80
 21394 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21394 ms  0x6c80 ret:0x7f626f8fcf00
 21394 ms  0x6c80 PK11_Derive()
 21394 ms  0x6c80 basekey:0x7f626f8fcf00
 21394 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21394 ms  0x6c80 ret:0x7f626f8fd080
 21394 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21394 ms  0x6c80 privk:0x7f624b1c7020::7f624b1c7020  60 ef dd 6d                                      `..m
 21394 ms  0x6c80 privk:0x7f624b1c7020::7f624b1c7020  e5 e5 e5 e5                                      ....
 21395 ms  0x6c80 PK11_Encrypt()
 21395 ms  0x6c80 symkey:0x7f626df30400
 21396 ms  0x6c80 SSL_AuthCertificateComplete()
 21396 ms  0x6c80 fd:0x7f624b1fa160
 21396 ms  0x6c80 err:0x0
 21396 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21396 ms  0x6c80 cx:0x7f624005be68
 21397 ms     | 0x6c80 EC_ValidatePublicKey()
 21397 ms     | 0x6c80 ret:0x0
 21397 ms  0x6c80 ret:0x7f624b1c7020::7f624b1c7020  70 ee dd 6d                                      p..m
 21397 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21397 ms  0x6c80 cx:0x7f624005be68
 21397 ms     | 0x6c80 EC_ValidatePublicKey()
 21399 ms     | 0x6c80 ret:0x0
 21399 ms  0x6c80 ret:0x7f624b4f2020::7f624b4f2020  b0 00 de 6d                                      ...m
 21400 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21400 ms  0x6c80 privk:0x7f624b1c1820::7f624b1c1820  60 d5 d7 6d                                      `..m
 21400 ms  0x6c80 privk:0x7f624b1c1820::7f624b1c1820  e5 e5 e5 e5                                      ....
 21400 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21400 ms  0x6c80 privk:0x7f624b1bf820::7f624b1bf820  30 d3 d7 6d                                      0..m
 21400 ms  0x6c80 privk:0x7f624b1bf820::7f624b1bf820  e5 e5 e5 e5                                      ....
 21400 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21400 ms  0x6c80 cx:0x7f624d5a8908
 21401 ms     | 0x6c80 EC_ValidatePublicKey()
 21401 ms     | 0x6c80 ret:0x0
 21401 ms  0x6c80 ret:0x7f624b1bf820::7f624b1bf820  30 d3 d7 6d                                      0..m
 21401 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21401 ms  0x6c80 cx:0x7f624d5a8908
 21401 ms     | 0x6c80 EC_ValidatePublicKey()
 21403 ms     | 0x6c80 ret:0x0
 21403 ms  0x6c80 ret:0x7f624b1c1820::7f624b1c1820  60 d5 d7 6d                                      `..m
 21414 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21414 ms  0x6c80 privk:0x7f624b1af820::7f624b1af820  00 9b cf 6c                                      ...l
 21414 ms  0x6c80 privk:0x7f624b1af820::7f624b1af820  e5 e5 e5 e5                                      ....
 21414 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21414 ms  0x6c80 privk:0x7f624b1ad820::7f624b1ad820  00 21 3d 66                                      .!=f
 21414 ms  0x6c80 privk:0x7f624b1ad820::7f624b1ad820  e5 e5 e5 e5                                      ....
 21431 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21431 ms  0x6c80 privk:0x7f626501e820::7f626501e820  20 de d7 6d                                       ..m
 21431 ms  0x6c80 privk:0x7f626501e820::7f626501e820  e5 e5 e5 e5                                      ....
 21432 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21432 ms  0x6c80 privk:0x7f624b27f020::7f624b27f020  60 da d7 6d                                      `..m
 21432 ms  0x6c80 privk:0x7f624b27f020::7f624b27f020  e5 e5 e5 e5                                      ....
 21435 ms  0x6c80 SSL_AuthCertificateComplete()
 21435 ms  0x6c80 fd:0x7f62709898e0
 21435 ms  0x6c80 err:0x0
 21437 ms  0x6c80 SSL_ImportFD()
 21437 ms  0x6c80 ret:0x7f624b5191c0
 21437 ms  0x6c80 SSL_AuthCertificateHook()
 21437 ms  0x6c80 fd:0x7f624b5191c0
 21437 ms  0x6c80 ret:0x0
 21437 ms  0x6c80 PR_Connect()
 21437 ms  0x6c80 fd:0x7f624b5191c0
 21447 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21447 ms  0x6c80 privk:0x7f624b1b6020::7f624b1b6020  d0 2d c8 6d                                      .-.m
 21447 ms  0x6c80 privk:0x7f624b1b6020::7f624b1b6020  e5 e5 e5 e5                                      ....
 21447 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21447 ms  0x6c80 privk:0x7f624b1b4020::7f624b1b4020  20 29 c8 6d                                       ).m
 21447 ms  0x6c80 privk:0x7f624b1b4020::7f624b1b4020  e5 e5 e5 e5                                      ....
 21447 ms  SECKEY_ECParamsToKeySize()
 21447 ms  0x6c80 ret:0x100
 21447 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21447 ms  0x6c80 cx:0x7f624005a608
 21449 ms     | 0x6c80 EC_ValidatePublicKey()
 21450 ms     | 0x6c80 ret:0x0
 21450 ms  0x6c80 ret:0x7f624b1ae820::7f624b1ae820  a0 26 c8 6d                                      .&.m
 21450 ms  0x6c80 PK11_PubDeriveWithKDF()
 21450 ms  0x6c80 seckey:0x7f624b1ae820
 21450 ms     | 0x6c80 EC_ValidatePublicKey()
 21452 ms     | 0x6c80 ret:0x0
 21453 ms  0x6c80 ret:0x7f626ead1f80
 21453 ms  0x6c80 PK11_DeriveWithFlags()
 21453 ms  0x6c80 basekey:0x7f626ead1f80
 21453 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21453 ms  0x6c80 ret:0x7f6240223f80
 21453 ms  0x6c80 PK11_Derive()
 21453 ms  0x6c80 basekey:0x7f6240223f80
 21453 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21453 ms  0x6c80 ret:0x7f626acc2c80
 21453 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21453 ms  0x6c80 privk:0x7f624b1ae820::7f624b1ae820  a0 26 c8 6d                                      .&.m
 21453 ms  0x6c80 privk:0x7f624b1ae820::7f624b1ae820  e5 e5 e5 e5                                      ....
 21453 ms  0x6c80 PK11_Encrypt()
 21453 ms  0x6c80 symkey:0x7f626df40680
 21498 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21498 ms  0x6c80 cx:0x7f624d5a9c88
 21499 ms     | 0x6c80 EC_ValidatePublicKey()
 21499 ms     | 0x6c80 ret:0x0
 21499 ms  0x6c80 ret:0x7f624b1ae820::7f624b1ae820  90 cc 96 6a                                      ...j
 21499 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21499 ms  0x6c80 cx:0x7f624d5a9c88
 21500 ms     | 0x6c80 EC_ValidatePublicKey()
 21506 ms     | 0x6c80 ret:0x0
 21506 ms  0x6c80 ret:0x7f624b1b3020::7f624b1b3020  a0 2b c8 6d                                      .+.m
 21507 ms  0x6c80 PR_Close()
 21507 ms  0x6c80 fd:0x7f626df06f70
           /* TID 0x6c88 */
 21557 ms  0x6c88 PR_Close()
 21557 ms  0x6c88 fd:0x7f624b259e50
           /* TID 0x6c80 */
 21561 ms  SECKEY_ECParamsToKeySize()
 21561 ms  0x6c80 ret:0x100
 21561 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21561 ms  0x6c80 cx:0x7f626d2b6128
 21563 ms     | 0x6c80 EC_ValidatePublicKey()
 21568 ms     | 0x6c80 ret:0x0
 21568 ms  0x6c80 ret:0x7f624b1c6820::7f624b1c6820  10 da d7 6d                                      ...m
 21569 ms  0x6c80 PK11_PubDeriveWithKDF()
 21569 ms  0x6c80 seckey:0x7f624b1c6820
 21569 ms     | 0x6c80 EC_ValidatePublicKey()
 21573 ms     | 0x6c80 ret:0x0
 21577 ms  0x6c80 ret:0x7f626ead1f80
 21577 ms  0x6c80 PK11_DeriveWithFlags()
 21577 ms  0x6c80 basekey:0x7f626ead1f80
 21577 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21577 ms  0x6c80 ret:0x7f6240223c80
 21577 ms  0x6c80 PK11_Derive()
 21577 ms  0x6c80 basekey:0x7f6240223c80
 21577 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21577 ms  0x6c80 ret:0x7f6240223e00
 21577 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21577 ms  0x6c80 privk:0x7f624b1c6820::7f624b1c6820  10 da d7 6d                                      ...m
 21577 ms  0x6c80 privk:0x7f624b1c6820::7f624b1c6820  e5 e5 e5 e5                                      ....
 21577 ms  0x6c80 PK11_Encrypt()
 21577 ms  0x6c80 symkey:0x7f626dfe1e00
 21578 ms  0x6c80 SSL_AuthCertificateComplete()
 21578 ms  0x6c80 fd:0x7f62617c4af0
 21578 ms  0x6c80 err:0x0
 21601 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21601 ms  0x6c80 cx:0x7f626df5c908
 21601 ms     | 0x6c80 EC_ValidatePublicKey()
 21601 ms     | 0x6c80 ret:0x0
 21602 ms  0x6c80 ret:0x7f624b1c6820::7f624b1c6820  c0 d9 d7 6d                                      ...m
 21602 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21602 ms  0x6c80 cx:0x7f626df5c908
 21603 ms     | 0x6c80 EC_ValidatePublicKey()
 21605 ms     | 0x6c80 ret:0x0
 21605 ms  0x6c80 ret:0x7f624b440020::7f624b440020  80 dd d7 6d                                      ...m
 21610 ms  SECKEY_ECParamsToKeySize()
 21610 ms  0x6c80 ret:0x100
 21610 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21610 ms  0x6c80 cx:0x7f624005ac88
 21611 ms     | 0x6c80 EC_ValidatePublicKey()
 21614 ms     | 0x6c80 ret:0x0
 21614 ms  0x6c80 ret:0x7f6269aed020::7f6269aed020  f0 01 de 6d                                      ...m
 21616 ms  0x6c80 PK11_PubDeriveWithKDF()
 21616 ms  0x6c80 seckey:0x7f6269aed020
 21616 ms     | 0x6c80 EC_ValidatePublicKey()
 21618 ms     | 0x6c80 ret:0x0
 21620 ms  0x6c80 ret:0x7f626ead1f80
 21620 ms  0x6c80 PK11_DeriveWithFlags()
 21620 ms  0x6c80 basekey:0x7f626ead1f80
 21620 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21620 ms  0x6c80 ret:0x7f6240223d00
 21620 ms  0x6c80 PK11_Derive()
 21620 ms  0x6c80 basekey:0x7f6240223d00
 21620 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21620 ms  0x6c80 ret:0x7f6240223c00
 21620 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21620 ms  0x6c80 privk:0x7f6269aed020::7f6269aed020  f0 01 de 6d                                      ...m
 21620 ms  0x6c80 privk:0x7f6269aed020::7f6269aed020  e5 e5 e5 e5                                      ....
 21621 ms  0x6c80 PK11_Encrypt()
 21621 ms  0x6c80 symkey:0x7f626dfe2580
 21621 ms  0x6c80 SSL_AuthCertificateComplete()
 21621 ms  0x6c80 fd:0x7f624b40d8b0
 21621 ms  0x6c80 err:0x0
 21621 ms  0x6c80 PK11_Encrypt()
 21621 ms  0x6c80 symkey:0x7f626dfe2580
 21623 ms  SECKEY_ECParamsToKeySize()
 21623 ms  0x6c80 ret:0x100
 21623 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21623 ms  0x6c80 cx:0x7f624d5a8768
 21624 ms     | 0x6c80 EC_ValidatePublicKey()
 21625 ms     | 0x6c80 ret:0x0
 21625 ms  0x6c80 ret:0x7f624b0db820::7f624b0db820  f0 01 de 6d                                      ...m
 21626 ms  0x6c80 PK11_PubDeriveWithKDF()
 21626 ms  0x6c80 seckey:0x7f624b0db820
 21626 ms     | 0x6c80 EC_ValidatePublicKey()
 21627 ms     | 0x6c80 ret:0x0
 21629 ms  0x6c80 ret:0x7f626ead1f80
 21629 ms  0x6c80 PK11_DeriveWithFlags()
 21629 ms  0x6c80 basekey:0x7f626ead1f80
 21629 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21629 ms  0x6c80 ret:0x7f6240223e80
 21629 ms  0x6c80 PK11_Derive()
 21629 ms  0x6c80 basekey:0x7f6240223e80
 21629 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21629 ms  0x6c80 ret:0x7f6240223f00
 21629 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21629 ms  0x6c80 privk:0x7f624b0db820::7f624b0db820  f0 01 de 6d                                      ...m
 21629 ms  0x6c80 privk:0x7f624b0db820::7f624b0db820  e5 e5 e5 e5                                      ....
 21629 ms  0x6c80 PK11_Encrypt()
 21629 ms  0x6c80 symkey:0x7f626dfe2980
 21630 ms  0x6c80 SSL_AuthCertificateComplete()
 21630 ms  0x6c80 fd:0x7f624b1fadc0
 21630 ms  0x6c80 err:0x0
 21630 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21630 ms  0x6c80 cx:0x7f624b32d248
 21630 ms     | 0x6c80 EC_ValidatePublicKey()
 21630 ms     | 0x6c80 ret:0x0
 21630 ms  0x6c80 ret:0x7f624b0db820::7f624b0db820  00 01 de 6d                                      ...m
 21630 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21630 ms  0x6c80 cx:0x7f624b32d248
 21631 ms     | 0x6c80 EC_ValidatePublicKey()
 21633 ms     | 0x6c80 ret:0x0
 21633 ms  0x6c80 ret:0x7f624b0dd820::7f624b0dd820  80 03 de 6d                                      ...m
 21633 ms  0x6c80 PK11_Encrypt()
 21633 ms  0x6c80 symkey:0x7f626dfe2980
 21646 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21646 ms  0x6c80 cx:0x7f624005b308
 21646 ms     | 0x6c80 EC_ValidatePublicKey()
 21646 ms     | 0x6c80 ret:0x0
 21646 ms  0x6c80 ret:0x7f624b0e0020::7f624b0e0020  c0 04 de 6d                                      ...m
 21646 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21646 ms  0x6c80 cx:0x7f624005b308
 21647 ms     | 0x6c80 EC_ValidatePublicKey()
 21648 ms     | 0x6c80 ret:0x0
 21648 ms  0x6c80 ret:0x7f624b0e2020::7f624b0e2020  a0 06 de 6d                                      ...m
 21649 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21649 ms  0x6c80 cx:0x7f626df5d2c8
 21650 ms     | 0x6c80 EC_ValidatePublicKey()
 21650 ms     | 0x6c80 ret:0x0
 21650 ms  0x6c80 ret:0x7f624b0e4820::7f624b0e4820  e0 07 de 6d                                      ...m
 21650 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21650 ms  0x6c80 cx:0x7f626df5d2c8
 21650 ms     | 0x6c80 EC_ValidatePublicKey()
 21652 ms     | 0x6c80 ret:0x0
 21652 ms  0x6c80 ret:0x7f624b0e6820::7f624b0e6820  c0 09 de 6d                                      ...m
 21652 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21652 ms  0x6c80 cx:0x7f626df5cde8
 21652 ms     | 0x6c80 EC_ValidatePublicKey()
 21652 ms     | 0x6c80 ret:0x0
 21652 ms  0x6c80 ret:0x7f624b0e9020::7f624b0e9020  50 0b de 6d                                      P..m
 21652 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21652 ms  0x6c80 cx:0x7f626df5cde8
 21653 ms     | 0x6c80 EC_ValidatePublicKey()
 21654 ms     | 0x6c80 ret:0x0
 21655 ms  0x6c80 ret:0x7f624b0eb020::7f624b0eb020  80 0d de 6d                                      ...m
 21678 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21678 ms  0x6c80 privk:0x7f624d9ac020::7f624d9ac020  90 72 d9 6d                                      .r.m
 21678 ms  0x6c80 privk:0x7f624d9ac020::7f624d9ac020  e5 e5 e5 e5                                      ....
 21679 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21679 ms  0x6c80 privk:0x7f624d94f020::7f624d94f020  10 1f d9 6d                                      ...m
 21679 ms  0x6c80 privk:0x7f624d94f020::7f624d94f020  e5 e5 e5 e5                                      ....
 21679 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21679 ms  0x6c80 privk:0x7f624d707820::7f624d707820  d0 13 d9 6d                                      ...m
 21679 ms  0x6c80 privk:0x7f624d707820::7f624d707820  e5 e5 e5 e5                                      ....
 21680 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21680 ms  0x6c80 privk:0x7f624b5af020::7f624b5af020  80 23 c8 6d                                      .#.m
 21680 ms  0x6c80 privk:0x7f624b5af020::7f624b5af020  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 21692 ms  0x6c88 PR_Close()
 21692 ms  0x6c88 fd:0x7f624b1fa250
           /* TID 0x6c80 */
 21696 ms  0x6c80 SSL_AuthCertificateComplete()
 21696 ms  0x6c80 fd:0x7f624b1fa100
 21696 ms  0x6c80 err:0x0
 21699 ms  SECKEY_ECParamsToKeySize()
 21699 ms  0x6c80 ret:0x100
 21699 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21699 ms  0x6c80 cx:0x7f624005bcc8
 21700 ms     | 0x6c80 EC_ValidatePublicKey()
 21704 ms     | 0x6c80 ret:0x0
 21704 ms  0x6c80 ret:0x7f624b0ee020::7f624b0ee020  80 28 c8 6d                                      .(.m
 21704 ms  0x6c80 PK11_PubDeriveWithKDF()
 21704 ms  0x6c80 seckey:0x7f624b0ee020
 21704 ms     | 0x6c80 EC_ValidatePublicKey()
 21707 ms     | 0x6c80 ret:0x0
 21710 ms  0x6c80 ret:0x7f626ead1f80
 21710 ms  0x6c80 PK11_DeriveWithFlags()
 21710 ms  0x6c80 basekey:0x7f626ead1f80
 21710 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21710 ms  0x6c80 ret:0x7f6240223880
 21710 ms  0x6c80 PK11_Derive()
 21710 ms  0x6c80 basekey:0x7f6240223880
 21710 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21710 ms  0x6c80 ret:0x7f626ead1c80
 21710 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21710 ms  0x6c80 privk:0x7f624b0ee020::7f624b0ee020  80 28 c8 6d                                      .(.m
 21710 ms  0x6c80 privk:0x7f624b0ee020::7f624b0ee020  e5 e5 e5 e5                                      ....
 21711 ms  0x6c80 PK11_Encrypt()
 21711 ms  0x6c80 symkey:0x7f626dfe2f00
 21712 ms  SECKEY_ECParamsToKeySize()
 21712 ms  0x6c80 ret:0x100
 21712 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21712 ms  0x6c80 cx:0x7f624005be68
 21713 ms     | 0x6c80 EC_ValidatePublicKey()
 21716 ms     | 0x6c80 ret:0x0
 21716 ms  0x6c80 ret:0x7f624b0ef020::7f624b0ef020  a0 d1 d7 6d                                      ...m
 21716 ms  0x6c80 PK11_PubDeriveWithKDF()
 21716 ms  0x6c80 seckey:0x7f624b0ef020
 21716 ms     | 0x6c80 EC_ValidatePublicKey()
 21718 ms     | 0x6c80 ret:0x0
 21720 ms  0x6c80 ret:0x7f626ead1f80
 21720 ms  0x6c80 PK11_DeriveWithFlags()
 21720 ms  0x6c80 basekey:0x7f626ead1f80
 21720 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21720 ms  0x6c80 ret:0x7f626ead1180
 21720 ms  0x6c80 PK11_Derive()
 21720 ms  0x6c80 basekey:0x7f626ead1180
 21721 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21721 ms  0x6c80 ret:0x7f626f8fce80
 21721 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21721 ms  0x6c80 privk:0x7f624b0ef020::7f624b0ef020  a0 d1 d7 6d                                      ...m
 21721 ms  0x6c80 privk:0x7f624b0ef020::7f624b0ef020  e5 e5 e5 e5                                      ....
 21721 ms  0x6c80 PK11_Encrypt()
 21721 ms  0x6c80 symkey:0x7f626e2baa00
 21722 ms  0x6c80 PK11_Encrypt()
 21722 ms  0x6c80 symkey:0x7f626dfe2f00
 21723 ms  SECKEY_ECParamsToKeySize()
 21723 ms  0x6c80 ret:0x100
 21723 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21723 ms  0x6c80 cx:0x7f624d5a8908
 21724 ms     | 0x6c80 EC_ValidatePublicKey()
 21726 ms     | 0x6c80 ret:0x0
 21726 ms  0x6c80 ret:0x7f624b0f0020::7f624b0f0020  d0 13 d9 6d                                      ...m
 21726 ms  0x6c80 PK11_PubDeriveWithKDF()
 21726 ms  0x6c80 seckey:0x7f624b0f0020
 21726 ms     | 0x6c80 EC_ValidatePublicKey()
 21727 ms     | 0x6c80 ret:0x0
 21729 ms  0x6c80 ret:0x7f626ead1f80
 21729 ms  0x6c80 PK11_DeriveWithFlags()
 21729 ms  0x6c80 basekey:0x7f626ead1f80
 21729 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21729 ms  0x6c80 ret:0x7f624009a280
 21729 ms  0x6c80 PK11_Derive()
 21729 ms  0x6c80 basekey:0x7f624009a280
 21729 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21729 ms  0x6c80 ret:0x7f6240223800
 21729 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21729 ms  0x6c80 privk:0x7f624b0f0020::7f624b0f0020  d0 13 d9 6d                                      ...m
 21729 ms  0x6c80 privk:0x7f624b0f0020::7f624b0f0020  e5 e5 e5 e5                                      ....
 21729 ms  0x6c80 PK11_Encrypt()
 21729 ms  0x6c80 symkey:0x7f626e2bb600
 21732 ms  0x6c80 SSL_AuthCertificateComplete()
 21732 ms  0x6c80 fd:0x7f624b1faac0
 21732 ms  0x6c80 err:0x0
 21732 ms  0x6c80 SSL_AuthCertificateComplete()
 21732 ms  0x6c80 fd:0x7f624b1fafa0
 21732 ms  0x6c80 err:0x0
 21733 ms  0x6c80 PK11_Encrypt()
 21733 ms  0x6c80 symkey:0x7f626e2baa00
           /* TID 0x6c88 */
 21735 ms  0x6c88 PR_Close()
 21735 ms  0x6c88 fd:0x7f624d944be0
           /* TID 0x6c80 */
 21736 ms  0x6c80 PK11_Encrypt()
 21736 ms  0x6c80 symkey:0x7f626e2bb600
 21736 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21736 ms  0x6c80 cx:0x7f624b32d588
 21737 ms     | 0x6c80 EC_ValidatePublicKey()
 21737 ms     | 0x6c80 ret:0x0
 21737 ms  0x6c80 ret:0x7f624b0f0020::7f624b0f0020  70 29 c8 6d                                      p).m
 21737 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21737 ms  0x6c80 cx:0x7f624b32d588
 21737 ms     | 0x6c80 EC_ValidatePublicKey()
 21739 ms     | 0x6c80 ret:0x0
 21739 ms  0x6c80 ret:0x7f624b0f2020::7f624b0f2020  70 1e d9 6d                                      p..m
 21758 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21758 ms  0x6c80 privk:0x7f624d7e4820::7f624d7e4820  80 1d d9 6d                                      ...m
 21758 ms  0x6c80 privk:0x7f624d7e4820::7f624d7e4820  e5 e5 e5 e5                                      ....
 21758 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21758 ms  0x6c80 privk:0x7f624d720020::7f624d720020  10 1a d9 6d                                      ...m
 21758 ms  0x6c80 privk:0x7f624d720020::7f624d720020  e5 e5 e5 e5                                      ....
 21765 ms  SECKEY_ECParamsToKeySize()
 21765 ms  0x6c80 ret:0x100
 21765 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21765 ms  0x6c80 cx:0x7f6240059768
 21766 ms     | 0x6c80 EC_ValidatePublicKey()
 21768 ms     | 0x6c80 ret:0x0
 21768 ms  0x6c80 ret:0x7f624b0f5820::7f624b0f5820  e0 1c d9 6d                                      ...m
 21768 ms  0x6c80 PK11_PubDeriveWithKDF()
 21768 ms  0x6c80 seckey:0x7f624b0f5820
 21768 ms     | 0x6c80 EC_ValidatePublicKey()
 21769 ms     | 0x6c80 ret:0x0
 21771 ms  0x6c80 ret:0x7f626ead1f80
 21771 ms  0x6c80 PK11_DeriveWithFlags()
 21771 ms  0x6c80 basekey:0x7f626ead1f80
 21771 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21771 ms  0x6c80 ret:0x7f626ead1800
 21771 ms  0x6c80 PK11_Derive()
 21771 ms  0x6c80 basekey:0x7f626ead1800
 21771 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21771 ms  0x6c80 ret:0x7f6240223d80
 21771 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21771 ms  0x6c80 privk:0x7f624b0f5820::7f624b0f5820  e0 1c d9 6d                                      ...m
 21771 ms  0x6c80 privk:0x7f624b0f5820::7f624b0f5820  e5 e5 e5 e5                                      ....
 21771 ms  0x6c80 PK11_Encrypt()
 21771 ms  0x6c80 symkey:0x7f626e2bbf80
 21775 ms  0x6c80 SSL_AuthCertificateComplete()
 21775 ms  0x6c80 fd:0x7f624b259af0
 21775 ms  0x6c80 err:0x0
 21775 ms  0x6c80 PK11_Encrypt()
 21775 ms  0x6c80 symkey:0x7f626d281c00
 21775 ms  0x6c80 PK11_Encrypt()
 21775 ms  0x6c80 symkey:0x7f626e2bbf80
           /* TID 0x6c88 */
 21801 ms  0x6c88 PR_Close()
 21801 ms  0x6c88 fd:0x7f6240371d60
           /* TID 0x6c80 */
 21804 ms  0x6c80 PK11_Derive()
 21804 ms  0x6c80 basekey:0x7f626dfee280
 21804 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21804 ms  0x6c80 ret:0x7f626ead1f80
 21804 ms  0x6c80 PK11_Encrypt()
 21804 ms  0x6c80 symkey:0x7f626ea08100
 21805 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21805 ms  0x6c80 privk:0x7f624b1b3020::7f624b1b3020  a0 2b c8 6d                                      .+.m
 21805 ms  0x6c80 privk:0x7f624b1b3020::7f624b1b3020  e5 e5 e5 e5                                      ....
 21805 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21805 ms  0x6c80 privk:0x7f624b1ae820::7f624b1ae820  90 cc 96 6a                                      ...j
 21805 ms  0x6c80 privk:0x7f624b1ae820::7f624b1ae820  e5 e5 e5 e5                                      ....
 21806 ms  0x6c80 PK11_Encrypt()
 21806 ms  0x6c80 symkey:0x7f626ea08100
 21806 ms  0x6c80 PK11_Encrypt()
 21806 ms  0x6c80 symkey:0x7f626ea08100
 21806 ms  0x6c80 PK11_Encrypt()
 21806 ms  0x6c80 symkey:0x7f626ea08100
 21860 ms  0x6c80 SSL_AuthCertificateComplete()
 21860 ms  0x6c80 fd:0x7f62400ba7f0
 21860 ms  0x6c80 err:0x0
 21862 ms  SECKEY_ECParamsToKeySize()
 21862 ms  0x6c80 ret:0x100
 21862 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21862 ms  0x6c80 cx:0x7f626df5c908
 21862 ms     | 0x6c80 EC_ValidatePublicKey()
 21864 ms     | 0x6c80 ret:0x0
 21864 ms  0x6c80 ret:0x7f624b1ad820::7f624b1ad820  60 1f d9 6d                                      `..m
 21864 ms  0x6c80 PK11_PubDeriveWithKDF()
 21864 ms  0x6c80 seckey:0x7f624b1ad820
 21864 ms     | 0x6c80 EC_ValidatePublicKey()
 21867 ms     | 0x6c80 ret:0x0
 21869 ms  0x6c80 ret:0x7f624b230200
 21869 ms  0x6c80 PK11_DeriveWithFlags()
 21869 ms  0x6c80 basekey:0x7f624b230200
 21869 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21869 ms  0x6c80 ret:0x7f624b230500
 21869 ms  0x6c80 PK11_Derive()
 21869 ms  0x6c80 basekey:0x7f624b230500
 21869 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21869 ms  0x6c80 ret:0x7f6240302280
 21869 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21869 ms  0x6c80 privk:0x7f624b1ad820::7f624b1ad820  60 1f d9 6d                                      `..m
 21869 ms  0x6c80 privk:0x7f624b1ad820::7f624b1ad820  e5 e5 e5 e5                                      ....
 21869 ms  0x6c80 PK11_Encrypt()
 21869 ms  0x6c80 symkey:0x7f626ead0680
 21873 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21873 ms  0x6c80 privk:0x7f624b0ce020::7f624b0ce020  c0 e4 dd 6d                                      ...m
 21873 ms  0x6c80 privk:0x7f624b0ce020::7f624b0ce020  e5 e5 e5 e5                                      ....
 21873 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21873 ms  0x6c80 privk:0x7f624b0cc020::7f624b0cc020  e0 e2 dd 6d                                      ...m
 21873 ms  0x6c80 privk:0x7f624b0cc020::7f624b0cc020  e5 e5 e5 e5                                      ....
 21881 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21881 ms  0x6c80 privk:0x7f624b166820::7f624b166820  70 2e ec 69                                      p..i
 21881 ms  0x6c80 privk:0x7f624b166820::7f624b166820  e5 e5 e5 e5                                      ....
 21881 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21881 ms  0x6c80 privk:0x7f624b164820::7f624b164820  30 a8 17 66                                      0..f
 21881 ms  0x6c80 privk:0x7f624b164820::7f624b164820  e5 e5 e5 e5                                      ....
 21886 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21886 ms  0x6c80 privk:0x7f624b0d7020::7f624b0d7020  f0 eb dd 6d                                      ...m
 21886 ms  0x6c80 privk:0x7f624b0d7020::7f624b0d7020  e5 e5 e5 e5                                      ....
 21886 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21886 ms  0x6c80 privk:0x7f624b0d5020::7f624b0d5020  c0 e9 dd 6d                                      ...m
 21886 ms  0x6c80 privk:0x7f624b0d5020::7f624b0d5020  e5 e5 e5 e5                                      ....
 21887 ms  0x6c80 SSL_AuthCertificateComplete()
 21887 ms  0x6c80 fd:0x7f624b1fae80
 21887 ms  0x6c80 err:0x0
 21888 ms  SECKEY_ECParamsToKeySize()
 21888 ms  0x6c80 ret:0x100
 21888 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21888 ms  0x6c80 cx:0x7f624b32d248
 21889 ms     | 0x6c80 EC_ValidatePublicKey()
 21891 ms     | 0x6c80 ret:0x0
 21891 ms  0x6c80 ret:0x7f624b0cd020::7f624b0cd020  10 1f d9 6d                                      ...m
 21891 ms  0x6c80 PK11_PubDeriveWithKDF()
 21891 ms  0x6c80 seckey:0x7f624b0cd020
 21891 ms     | 0x6c80 EC_ValidatePublicKey()
 21893 ms     | 0x6c80 ret:0x0
 21895 ms  0x6c80 ret:0x7f624b230200
 21895 ms  0x6c80 PK11_DeriveWithFlags()
 21895 ms  0x6c80 basekey:0x7f624b230200
 21895 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21895 ms  0x6c80 ret:0x7f626dfe2e00
 21895 ms  0x6c80 PK11_Derive()
 21895 ms  0x6c80 basekey:0x7f626dfe2e00
 21895 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21895 ms  0x6c80 ret:0x7f626e2bae80
 21895 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21895 ms  0x6c80 privk:0x7f624b0cd020::7f624b0cd020  10 1f d9 6d                                      ...m
 21895 ms  0x6c80 privk:0x7f624b0cd020::7f624b0cd020  e5 e5 e5 e5                                      ....
 21895 ms  0x6c80 PK11_Encrypt()
 21895 ms  0x6c80 symkey:0x7f626eee8180
 21897 ms  0x6c80 SSL_ImportFD()
 21897 ms  0x6c80 ret:0x7f624b1e55b0
 21897 ms  0x6c80 SSL_AuthCertificateHook()
 21897 ms  0x6c80 fd:0x7f624b1e55b0
 21897 ms  0x6c80 ret:0x0
 21897 ms  0x6c80 PR_Connect()
 21897 ms  0x6c80 fd:0x7f624b1e55b0
 21897 ms  0x6c80 SSL_ImportFD()
 21897 ms  0x6c80 ret:0x7f62400ba2b0
 21897 ms  0x6c80 SSL_AuthCertificateHook()
 21897 ms  0x6c80 fd:0x7f62400ba2b0
 21897 ms  0x6c80 ret:0x0
 21897 ms  0x6c80 PR_Connect()
 21897 ms  0x6c80 fd:0x7f62400ba2b0
 21897 ms  0x6c80 SSL_ImportFD()
 21897 ms  0x6c80 ret:0x7f62400ba460
 21897 ms  0x6c80 SSL_AuthCertificateHook()
 21897 ms  0x6c80 fd:0x7f62400ba460
 21897 ms  0x6c80 ret:0x0
 21897 ms  0x6c80 PR_Connect()
 21897 ms  0x6c80 fd:0x7f62400ba460
 21898 ms  0x6c80 SSL_ImportFD()
 21898 ms  0x6c80 ret:0x7f62400ba6d0
 21898 ms  0x6c80 SSL_AuthCertificateHook()
 21898 ms  0x6c80 fd:0x7f62400ba6d0
 21898 ms  0x6c80 ret:0x0
 21898 ms  0x6c80 PR_Connect()
 21898 ms  0x6c80 fd:0x7f62400ba6d0
 21898 ms  0x6c80 SSL_ImportFD()
 21898 ms  0x6c80 ret:0x7f62400ba7c0
 21898 ms  0x6c80 SSL_AuthCertificateHook()
 21898 ms  0x6c80 fd:0x7f62400ba7c0
 21898 ms  0x6c80 ret:0x0
 21898 ms  0x6c80 PR_Connect()
 21898 ms  0x6c80 fd:0x7f62400ba7c0
 21898 ms  0x6c80 SSL_ImportFD()
 21898 ms  0x6c80 ret:0x7f6240371730
 21898 ms  0x6c80 SSL_AuthCertificateHook()
 21898 ms  0x6c80 fd:0x7f6240371730
 21898 ms  0x6c80 ret:0x0
 21898 ms  0x6c80 PR_Connect()
 21898 ms  0x6c80 fd:0x7f6240371730
 21899 ms  0x6c80 SSL_ImportFD()
 21899 ms  0x6c80 ret:0x7f62400ba940
 21899 ms  0x6c80 SSL_AuthCertificateHook()
 21899 ms  0x6c80 fd:0x7f62400ba940
 21899 ms  0x6c80 ret:0x0
 21899 ms  0x6c80 PR_Connect()
 21899 ms  0x6c80 fd:0x7f62400ba940
 21899 ms  0x6c80 SSL_ImportFD()
 21899 ms  0x6c80 ret:0x7f624b1e52b0
 21899 ms  0x6c80 SSL_AuthCertificateHook()
 21899 ms  0x6c80 fd:0x7f624b1e52b0
 21900 ms  0x6c80 ret:0x0
 21900 ms  0x6c80 PR_Connect()
 21900 ms  0x6c80 fd:0x7f624b1e52b0
 21900 ms  0x6c80 SSL_ImportFD()
 21900 ms  0x6c80 ret:0x7f624b1e5310
 21900 ms  0x6c80 SSL_AuthCertificateHook()
 21900 ms  0x6c80 fd:0x7f624b1e5310
 21900 ms  0x6c80 ret:0x0
 21900 ms  0x6c80 PR_Connect()
 21900 ms  0x6c80 fd:0x7f624b1e5310
 21900 ms  0x6c80 SSL_ImportFD()
 21900 ms  0x6c80 ret:0x7f624b1e53d0
 21900 ms  0x6c80 SSL_AuthCertificateHook()
 21900 ms  0x6c80 fd:0x7f624b1e53d0
 21900 ms  0x6c80 ret:0x0
 21900 ms  0x6c80 PR_Connect()
 21900 ms  0x6c80 fd:0x7f624b1e53d0
 21901 ms  0x6c80 SSL_ImportFD()
 21901 ms  0x6c80 ret:0x7f624b1e5400
 21901 ms  0x6c80 SSL_AuthCertificateHook()
 21901 ms  0x6c80 fd:0x7f624b1e5400
 21901 ms  0x6c80 ret:0x0
 21901 ms  0x6c80 PR_Connect()
 21901 ms  0x6c80 fd:0x7f624b1e5400
 21901 ms  0x6c80 SSL_ImportFD()
 21901 ms  0x6c80 ret:0x7f624b1e5430
 21901 ms  0x6c80 SSL_AuthCertificateHook()
 21901 ms  0x6c80 fd:0x7f624b1e5430
 21901 ms  0x6c80 ret:0x0
 21901 ms  0x6c80 PR_Connect()
 21901 ms  0x6c80 fd:0x7f624b1e5430
 21901 ms  0x6c80 SSL_ImportFD()
 21901 ms  0x6c80 ret:0x7f624b1e5490
 21901 ms  0x6c80 SSL_AuthCertificateHook()
 21901 ms  0x6c80 fd:0x7f624b1e5490
 21901 ms  0x6c80 ret:0x0
 21902 ms  0x6c80 PR_Connect()
 21902 ms  0x6c80 fd:0x7f624b1e5490
 21902 ms  0x6c80 SSL_ImportFD()
 21902 ms  0x6c80 ret:0x7f624b1e54c0
 21902 ms  0x6c80 SSL_AuthCertificateHook()
 21902 ms  0x6c80 fd:0x7f624b1e54c0
 21902 ms  0x6c80 ret:0x0
 21902 ms  0x6c80 PR_Connect()
 21902 ms  0x6c80 fd:0x7f624b1e54c0
 21902 ms  0x6c80 SSL_ImportFD()
 21902 ms  0x6c80 ret:0x7f624b1e54f0
 21902 ms  0x6c80 SSL_AuthCertificateHook()
 21902 ms  0x6c80 fd:0x7f624b1e54f0
 21902 ms  0x6c80 ret:0x0
 21902 ms  0x6c80 PR_Connect()
 21902 ms  0x6c80 fd:0x7f624b1e54f0
 21903 ms  0x6c80 SSL_ImportFD()
 21903 ms  0x6c80 ret:0x7f624af810d0
 21903 ms  0x6c80 SSL_AuthCertificateHook()
 21903 ms  0x6c80 fd:0x7f624af810d0
 21903 ms  0x6c80 ret:0x0
 21903 ms  0x6c80 PR_Connect()
 21903 ms  0x6c80 fd:0x7f624af810d0
 21948 ms  0x6c80 SSL_AuthCertificateComplete()
 21948 ms  0x6c80 fd:0x7f62400ba970
 21948 ms  0x6c80 err:0x0
 21950 ms  SECKEY_ECParamsToKeySize()
 21950 ms  0x6c80 ret:0x100
 21950 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21950 ms  0x6c80 cx:0x7f624005b308
 21950 ms     | 0x6c80 EC_ValidatePublicKey()
 21952 ms     | 0x6c80 ret:0x0
 21952 ms  0x6c80 ret:0x7f624b0cc020::7f624b0cc020  40 e2 dd 6d                                      @..m
 21952 ms  0x6c80 PK11_PubDeriveWithKDF()
 21952 ms  0x6c80 seckey:0x7f624b0cc020
 21952 ms     | 0x6c80 EC_ValidatePublicKey()
 21954 ms     | 0x6c80 ret:0x0
 21955 ms  0x6c80 ret:0x7f624b230200
 21955 ms  0x6c80 PK11_DeriveWithFlags()
 21955 ms  0x6c80 basekey:0x7f624b230200
 21955 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21955 ms  0x6c80 ret:0x7f626f855c00
 21955 ms  0x6c80 PK11_Derive()
 21955 ms  0x6c80 basekey:0x7f626f855c00
 21955 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21956 ms  0x6c80 ret:0x7f626f8cf280
 21956 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21956 ms  0x6c80 privk:0x7f624b0cc020::7f624b0cc020  40 e2 dd 6d                                      @..m
 21956 ms  0x6c80 privk:0x7f624b0cc020::7f624b0cc020  e5 e5 e5 e5                                      ....
 21956 ms  0x6c80 PK11_Encrypt()
 21956 ms  0x6c80 symkey:0x7f626f8fd300
 21957 ms  SECKEY_ECParamsToKeySize()
 21957 ms  0x6c80 ret:0x100
 21957 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21957 ms  0x6c80 cx:0x7f626df5d2c8
 21958 ms     | 0x6c80 EC_ValidatePublicKey()
 21959 ms     | 0x6c80 ret:0x0
 21959 ms  0x6c80 ret:0x7f624b0cd020::7f624b0cd020  e0 e2 dd 6d                                      ...m
 21959 ms  0x6c80 PK11_PubDeriveWithKDF()
 21959 ms  0x6c80 seckey:0x7f624b0cd020
 21959 ms     | 0x6c80 EC_ValidatePublicKey()
 21961 ms     | 0x6c80 ret:0x0
 21962 ms  0x6c80 ret:0x7f624b230200
 21962 ms  0x6c80 PK11_DeriveWithFlags()
 21962 ms  0x6c80 basekey:0x7f624b230200
 21962 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21962 ms  0x6c80 ret:0x7f624af96100
 21962 ms  0x6c80 PK11_Derive()
 21962 ms  0x6c80 basekey:0x7f624af96100
 21962 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21962 ms  0x6c80 ret:0x7f624af96180
 21962 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21962 ms  0x6c80 privk:0x7f624b0cd020::7f624b0cd020  e0 e2 dd 6d                                      ...m
 21962 ms  0x6c80 privk:0x7f624b0cd020::7f624b0cd020  e5 e5 e5 e5                                      ....
 21962 ms  0x6c80 PK11_Encrypt()
 21962 ms  0x6c80 symkey:0x7f624af96300
 21963 ms  SECKEY_ECParamsToKeySize()
 21963 ms  0x6c80 ret:0x100
 21963 ms  0x6c80 SECKEY_CreateECPrivateKey()
 21963 ms  0x6c80 cx:0x7f626df5cde8
 21964 ms     | 0x6c80 EC_ValidatePublicKey()
 21967 ms     | 0x6c80 ret:0x0
 21967 ms  0x6c80 ret:0x7f624b0ce020::7f624b0ce020  80 e3 dd 6d                                      ...m
 21968 ms  0x6c80 PK11_PubDeriveWithKDF()
 21968 ms  0x6c80 seckey:0x7f624b0ce020
 21968 ms     | 0x6c80 EC_ValidatePublicKey()
 21969 ms     | 0x6c80 ret:0x0
 21970 ms  0x6c80 ret:0x7f624b230200
 21970 ms  0x6c80 PK11_DeriveWithFlags()
 21970 ms  0x6c80 basekey:0x7f624b230200
 21970 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21970 ms  0x6c80 ret:0x7f624af96500
 21971 ms  0x6c80 PK11_Derive()
 21971 ms  0x6c80 basekey:0x7f624af96500
 21971 ms     | 0x6c80 PK11_DeriveWithTemplate()
 21971 ms  0x6c80 ret:0x7f624af96600
 21971 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21971 ms  0x6c80 privk:0x7f624b0ce020::7f624b0ce020  80 e3 dd 6d                                      ...m
 21971 ms  0x6c80 privk:0x7f624b0ce020::7f624b0ce020  e5 e5 e5 e5                                      ....
 21971 ms  0x6c80 PK11_Encrypt()
 21971 ms  0x6c80 symkey:0x7f624af96780
 21971 ms  0x6c80 SSL_AuthCertificateComplete()
 21971 ms  0x6c80 fd:0x7f62400bac10
 21971 ms  0x6c80 err:0x0
 21971 ms  0x6c80 SSL_AuthCertificateComplete()
 21971 ms  0x6c80 fd:0x7f62400bacd0
 21971 ms  0x6c80 err:0x0
 21971 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21971 ms  0x6c80 privk:0x7f624b0d2820::7f624b0d2820  80 e8 dd 6d                                      ...m
 21971 ms  0x6c80 privk:0x7f624b0d2820::7f624b0d2820  e5 e5 e5 e5                                      ....
 21972 ms  0x6c80 SECKEY_DestroyPrivateKey()
 21972 ms  0x6c80 privk:0x7f624b0d0820::7f624b0d0820  50 e6 dd 6d                                      P..m
 21972 ms  0x6c80 privk:0x7f624b0d0820::7f624b0d0820  e5 e5 e5 e5                                      ....
 22018 ms  SECKEY_ECParamsToKeySize()
 22018 ms  0x6c80 ret:0x100
 22018 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22018 ms  0x6c80 cx:0x7f624005a948
 22019 ms     | 0x6c80 EC_ValidatePublicKey()
 22020 ms     | 0x6c80 ret:0x0
 22020 ms  0x6c80 ret:0x7f624b0cf820::7f624b0cf820  20 e4 dd 6d                                       ..m
 22020 ms  0x6c80 PK11_PubDeriveWithKDF()
 22020 ms  0x6c80 seckey:0x7f624b0cf820
 22020 ms     | 0x6c80 EC_ValidatePublicKey()
 22022 ms     | 0x6c80 ret:0x0
 22024 ms  0x6c80 ret:0x7f624b230200
 22024 ms  0x6c80 PK11_DeriveWithFlags()
 22024 ms  0x6c80 basekey:0x7f624b230200
 22024 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22024 ms  0x6c80 ret:0x7f624af96580
 22024 ms  0x6c80 PK11_Derive()
 22024 ms  0x6c80 basekey:0x7f624af96580
 22024 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22024 ms  0x6c80 ret:0x7f624af96a80
 22024 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22024 ms  0x6c80 privk:0x7f624b0cf820::7f624b0cf820  20 e4 dd 6d                                       ..m
 22024 ms  0x6c80 privk:0x7f624b0cf820::7f624b0cf820  e5 e5 e5 e5                                      ....
 22024 ms  0x6c80 PK11_Encrypt()
 22024 ms  0x6c80 symkey:0x7f624af96c80
 22024 ms  0x6c80 SSL_AuthCertificateComplete()
 22024 ms  0x6c80 fd:0x7f624b1fa3a0
 22024 ms  0x6c80 err:0x0
 22024 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22024 ms  0x6c80 privk:0x7f624b4f2020::7f624b4f2020  b0 00 de 6d                                      ...m
 22024 ms  0x6c80 privk:0x7f624b4f2020::7f624b4f2020  e5 e5 e5 e5                                      ....
 22025 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22025 ms  0x6c80 privk:0x7f624b1c7020::7f624b1c7020  70 ee dd 6d                                      p..m
 22025 ms  0x6c80 privk:0x7f624b1c7020::7f624b1c7020  e5 e5 e5 e5                                      ....
 22028 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22028 ms  0x6c80 privk:0x7f624b1c1820::7f624b1c1820  60 d5 d7 6d                                      `..m
 22028 ms  0x6c80 privk:0x7f624b1c1820::7f624b1c1820  e5 e5 e5 e5                                      ....
 22029 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22029 ms  0x6c80 privk:0x7f624b1bf820::7f624b1bf820  30 d3 d7 6d                                      0..m
 22029 ms  0x6c80 privk:0x7f624b1bf820::7f624b1bf820  e5 e5 e5 e5                                      ....
 22045 ms  0x6c80 PK11_Derive()
 22045 ms  0x6c80 basekey:0x7f624af97000
 22045 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22045 ms  0x6c80 ret:0x7f624b230200
 22045 ms  0x6c80 PK11_Encrypt()
 22045 ms  0x6c80 symkey:0x7f624af97180
 22046 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22046 ms  0x6c80 privk:0x7f624b0f2020::7f624b0f2020  70 1e d9 6d                                      p..m
 22046 ms  0x6c80 privk:0x7f624b0f2020::7f624b0f2020  e5 e5 e5 e5                                      ....
 22046 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22046 ms  0x6c80 privk:0x7f624b0f0020::7f624b0f0020  70 29 c8 6d                                      p).m
 22046 ms  0x6c80 privk:0x7f624b0f0020::7f624b0f0020  e5 e5 e5 e5                                      ....
 22047 ms  0x6c80 PK11_Encrypt()
 22047 ms  0x6c80 symkey:0x7f624af97180
 22048 ms  0x6c80 PK11_Encrypt()
 22048 ms  0x6c80 symkey:0x7f626ea08100
 22077 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22077 ms  0x6c80 privk:0x7f624b1ba820::7f624b1ba820  b0 d0 d7 6d                                      ...m
 22077 ms  0x6c80 privk:0x7f624b1ba820::7f624b1ba820  e5 e5 e5 e5                                      ....
 22077 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22077 ms  0x6c80 privk:0x7f624b1b8820::7f624b1b8820  70 2e c8 6d                                      p..m
 22078 ms  0x6c80 privk:0x7f624b1b8820::7f624b1b8820  e5 e5 e5 e5                                      ....
 22088 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22088 ms  0x6c80 cx:0x7f624005aae8
 22089 ms     | 0x6c80 EC_ValidatePublicKey()
 22089 ms     | 0x6c80 ret:0x0
 22089 ms  0x6c80 ret:0x7f624b0d1820::7f624b0d1820  20 99 cf 6c                                       ..l
 22089 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22089 ms  0x6c80 cx:0x7f624005aae8
 22090 ms     | 0x6c80 EC_ValidatePublicKey()
 22093 ms     | 0x6c80 ret:0x0
 22093 ms  0x6c80 ret:0x7f624b0d4020::7f624b0d4020  f0 2b c8 6d                                      .+.m
           /* TID 0x6c88 */
 22095 ms  0x6c88 PR_Close()
 22095 ms  0x6c88 fd:0x7f624af814c0
           /* TID 0x6c80 */
 22115 ms  0x6c80 PK11_Encrypt()
 22115 ms  0x6c80 symkey:0x7f626ea08100
 22122 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22122 ms  0x6c80 privk:0x7f624b440020::7f624b440020  80 dd d7 6d                                      ...m
 22122 ms  0x6c80 privk:0x7f624b440020::7f624b440020  e5 e5 e5 e5                                      ....
 22123 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22123 ms  0x6c80 privk:0x7f624b1c6820::7f624b1c6820  c0 d9 d7 6d                                      ...m
 22123 ms  0x6c80 privk:0x7f624b1c6820::7f624b1c6820  e5 e5 e5 e5                                      ....
 22148 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22148 ms  0x6c80 privk:0x7f624b0dd820::7f624b0dd820  80 03 de 6d                                      ...m
 22148 ms  0x6c80 privk:0x7f624b0dd820::7f624b0dd820  e5 e5 e5 e5                                      ....
 22148 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22148 ms  0x6c80 privk:0x7f624b0db820::7f624b0db820  00 01 de 6d                                      ...m
 22148 ms  0x6c80 privk:0x7f624b0db820::7f624b0db820  e5 e5 e5 e5                                      ....
 22148 ms  0x6c80 SSL_ImportFD()
 22148 ms  0x6c80 ret:0x7f624af815b0
 22149 ms  0x6c80 SSL_AuthCertificateHook()
 22149 ms  0x6c80 fd:0x7f624af815b0
 22149 ms  0x6c80 ret:0x0
 22149 ms  0x6c80 PR_Connect()
 22149 ms  0x6c80 fd:0x7f624af815b0
 22149 ms  0x6c80 SSL_ImportFD()
 22149 ms  0x6c80 ret:0x7f624af814f0
 22149 ms  0x6c80 SSL_AuthCertificateHook()
 22149 ms  0x6c80 fd:0x7f624af814f0
 22149 ms  0x6c80 ret:0x0
 22149 ms  0x6c80 PR_Connect()
 22149 ms  0x6c80 fd:0x7f624af814f0
 22149 ms  0x6c80 SSL_ImportFD()
 22149 ms  0x6c80 ret:0x7f624af81610
 22149 ms  0x6c80 SSL_AuthCertificateHook()
 22149 ms  0x6c80 fd:0x7f624af81610
 22149 ms  0x6c80 ret:0x0
 22149 ms  0x6c80 PR_Connect()
 22149 ms  0x6c80 fd:0x7f624af81610
 22149 ms  0x6c80 SSL_ImportFD()
 22149 ms  0x6c80 ret:0x7f624af81ac0
 22149 ms  0x6c80 SSL_AuthCertificateHook()
 22149 ms  0x6c80 fd:0x7f624af81ac0
 22149 ms  0x6c80 ret:0x0
 22149 ms  0x6c80 PR_Connect()
 22149 ms  0x6c80 fd:0x7f624af81ac0
 22149 ms  0x6c80 SSL_ImportFD()
 22149 ms  0x6c80 ret:0x7f624af81a00
 22149 ms  0x6c80 SSL_AuthCertificateHook()
 22149 ms  0x6c80 fd:0x7f624af81a00
 22149 ms  0x6c80 ret:0x0
 22149 ms  0x6c80 PR_Connect()
 22149 ms  0x6c80 fd:0x7f624af81a00
 22149 ms  0x6c80 SSL_ImportFD()
 22149 ms  0x6c80 ret:0x7f624af81b20
 22150 ms  0x6c80 SSL_AuthCertificateHook()
 22150 ms  0x6c80 fd:0x7f624af81b20
 22150 ms  0x6c80 ret:0x0
 22150 ms  0x6c80 PR_Connect()
 22150 ms  0x6c80 fd:0x7f624af81b20
 22150 ms  0x6c80 SSL_ImportFD()
 22150 ms  0x6c80 ret:0x7f624af81f40
 22150 ms  0x6c80 SSL_AuthCertificateHook()
 22150 ms  0x6c80 fd:0x7f624af81f40
 22150 ms  0x6c80 ret:0x0
 22150 ms  0x6c80 PR_Connect()
 22150 ms  0x6c80 fd:0x7f624af81f40
 22151 ms  0x6c80 SSL_ImportFD()
 22151 ms  0x6c80 ret:0x7f624b1fa580
 22151 ms  0x6c80 SSL_AuthCertificateHook()
 22151 ms  0x6c80 fd:0x7f624b1fa580
 22151 ms  0x6c80 ret:0x0
 22151 ms  0x6c80 PR_Connect()
 22151 ms  0x6c80 fd:0x7f624b1fa580
 22151 ms  0x6c80 SSL_ImportFD()
 22151 ms  0x6c80 ret:0x7f624b1e5370
 22151 ms  0x6c80 SSL_AuthCertificateHook()
 22151 ms  0x6c80 fd:0x7f624b1e5370
 22151 ms  0x6c80 ret:0x0
 22151 ms  0x6c80 PR_Connect()
 22151 ms  0x6c80 fd:0x7f624b1e5370
 22152 ms  0x6c80 SSL_ImportFD()
 22152 ms  0x6c80 ret:0x7f624affe100
 22152 ms  0x6c80 SSL_AuthCertificateHook()
 22152 ms  0x6c80 fd:0x7f624affe100
 22152 ms  0x6c80 ret:0x0
 22152 ms  0x6c80 PR_Connect()
 22152 ms  0x6c80 fd:0x7f624affe100
 22152 ms  0x6c80 SSL_ImportFD()
 22152 ms  0x6c80 ret:0x7f624affe040
 22152 ms  0x6c80 SSL_AuthCertificateHook()
 22152 ms  0x6c80 fd:0x7f624affe040
 22152 ms  0x6c80 ret:0x0
 22152 ms  0x6c80 PR_Connect()
 22152 ms  0x6c80 fd:0x7f624affe040
 22152 ms  0x6c80 SSL_ImportFD()
 22152 ms  0x6c80 ret:0x7f624affe070
 22152 ms  0x6c80 SSL_AuthCertificateHook()
 22152 ms  0x6c80 fd:0x7f624affe070
 22152 ms  0x6c80 ret:0x0
 22152 ms  0x6c80 PR_Connect()
 22152 ms  0x6c80 fd:0x7f624affe070
 22153 ms  0x6c80 SSL_ImportFD()
 22153 ms  0x6c80 ret:0x7f624affe5b0
 22153 ms  0x6c80 SSL_AuthCertificateHook()
 22153 ms  0x6c80 fd:0x7f624affe5b0
 22153 ms  0x6c80 ret:0x0
 22153 ms  0x6c80 PR_Connect()
 22153 ms  0x6c80 fd:0x7f624affe5b0
 22153 ms  0x6c80 SSL_ImportFD()
 22153 ms  0x6c80 ret:0x7f624affe4f0
 22153 ms  0x6c80 SSL_AuthCertificateHook()
 22153 ms  0x6c80 fd:0x7f624affe4f0
 22153 ms  0x6c80 ret:0x0
 22153 ms  0x6c80 PR_Connect()
 22153 ms  0x6c80 fd:0x7f624affe4f0
 22153 ms  0x6c80 SSL_ImportFD()
 22153 ms  0x6c80 ret:0x7f624affe610
 22153 ms  0x6c80 SSL_AuthCertificateHook()
 22153 ms  0x6c80 fd:0x7f624affe610
 22153 ms  0x6c80 ret:0x0
 22153 ms  0x6c80 PR_Connect()
 22153 ms  0x6c80 fd:0x7f624affe610
 22153 ms  0x6c80 SSL_ImportFD()
 22153 ms  0x6c80 ret:0x7f624affea30
 22153 ms  0x6c80 SSL_AuthCertificateHook()
 22153 ms  0x6c80 fd:0x7f624affea30
 22153 ms  0x6c80 ret:0x0
 22153 ms  0x6c80 PR_Connect()
 22153 ms  0x6c80 fd:0x7f624affea30
 22175 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22175 ms  0x6c80 cx:0x7f624b32ef88
 22176 ms     | 0x6c80 EC_ValidatePublicKey()
 22176 ms     | 0x6c80 ret:0x0
 22176 ms  0x6c80 ret:0x7f624b0da020::7f624b0da020  b0 2f c8 6d                                      ./.m
 22176 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22176 ms  0x6c80 cx:0x7f624b32ef88
 22177 ms     | 0x6c80 EC_ValidatePublicKey()
 22181 ms     | 0x6c80 ret:0x0
 22181 ms  0x6c80 ret:0x7f624b0dc820::7f624b0dc820  40 d2 d7 6d                                      @..m
 22182 ms  0x6c80 PK11_Encrypt()
 22182 ms  0x6c80 symkey:0x7f626f8fd100
 22182 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22182 ms  0x6c80 privk:0x7f626177f820::7f626177f820  10 1f 1b 66                                      ...f
 22182 ms  0x6c80 privk:0x7f626177f820::7f626177f820  e5 e5 e5 e5                                      ....
 22183 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22183 ms  0x6c80 privk:0x7f626177a020::7f626177a020  70 5e 3f 66                                      p^?f
 22183 ms  0x6c80 privk:0x7f626177a020::7f626177a020  e5 e5 e5 e5                                      ....
 22183 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22183 ms  0x6c80 cx:0x7f624b32fe28
 22184 ms     | 0x6c80 EC_ValidatePublicKey()
 22184 ms     | 0x6c80 ret:0x0
 22184 ms  0x6c80 ret:0x7f624b0ec020::7f624b0ec020  10 5a 3f 66                                      .Z?f
 22184 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22184 ms  0x6c80 cx:0x7f624b32fe28
 22185 ms     | 0x6c80 EC_ValidatePublicKey()
 22187 ms     | 0x6c80 ret:0x0
 22187 ms  0x6c80 ret:0x7f624b0f0020::7f624b0f0020  c0 8e c8 68                                      ...h
 22187 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22187 ms  0x6c80 cx:0x7f624b32f7a8
 22188 ms     | 0x6c80 EC_ValidatePublicKey()
 22188 ms     | 0x6c80 ret:0x0
 22188 ms  0x6c80 ret:0x7f624b0f9020::7f624b0f9020  c0 d4 d7 6d                                      ...m
 22188 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22188 ms  0x6c80 cx:0x7f624b32f7a8
 22189 ms     | 0x6c80 EC_ValidatePublicKey()
 22190 ms     | 0x6c80 ret:0x0
 22190 ms  0x6c80 ret:0x7f624b162020::7f624b162020  60 da d7 6d                                      `..m
 22191 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22191 ms  0x6c80 cx:0x7f624b32f608
 22191 ms     | 0x6c80 EC_ValidatePublicKey()
 22191 ms     | 0x6c80 ret:0x0
 22191 ms  0x6c80 ret:0x7f624b165020::7f624b165020  80 dd d7 6d                                      ...m
 22191 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22191 ms  0x6c80 cx:0x7f624b32f608
 22192 ms     | 0x6c80 EC_ValidatePublicKey()
 22194 ms     | 0x6c80 ret:0x0
 22194 ms  0x6c80 ret:0x7f624b179020::7f624b179020  20 1e d9 6d                                       ..m
 22195 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22195 ms  0x6c80 cx:0x7f624b32ec48
 22199 ms     | 0x6c80 EC_ValidatePublicKey()
 22199 ms     | 0x6c80 ret:0x0
 22199 ms  0x6c80 ret:0x7f624b1af020::7f624b1af020  80 e3 dd 6d                                      ...m
 22199 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22199 ms  0x6c80 cx:0x7f624b32ec48
 22200 ms     | 0x6c80 EC_ValidatePublicKey()
 22201 ms     | 0x6c80 ret:0x0
 22201 ms  0x6c80 ret:0x7f624b1b5020::7f624b1b5020  60 e5 dd 6d                                      `..m
           /* TID 0x6c88 */
 22206 ms  0x6c88 PR_Close()
 22206 ms  0x6c88 fd:0x7f624af813d0
           /* TID 0x6c80 */
 22214 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22214 ms  0x6c80 cx:0x7f624b32e768
 22215 ms     | 0x6c80 EC_ValidatePublicKey()
 22215 ms     | 0x6c80 ret:0x0
 22215 ms  0x6c80 ret:0x7f624b1b6820::7f624b1b6820  60 e5 29 6d                                      `.)m
 22215 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22215 ms  0x6c80 cx:0x7f624b32e768
 22216 ms     | 0x6c80 EC_ValidatePublicKey()
 22217 ms     | 0x6c80 ret:0x0
 22217 ms  0x6c80 ret:0x7f624b1b9020::7f624b1b9020  c0 ce 96 6a                                      ...j
 22223 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22223 ms  0x6c80 cx:0x7f624b32e908
 22223 ms     | 0x6c80 EC_ValidatePublicKey()
 22223 ms     | 0x6c80 ret:0x0
 22223 ms  0x6c80 ret:0x7f624b1be020::7f624b1be020  30 28 c8 6d                                      0(.m
 22223 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22223 ms  0x6c80 cx:0x7f624b32e908
 22224 ms     | 0x6c80 EC_ValidatePublicKey()
 22225 ms     | 0x6c80 ret:0x0
 22225 ms  0x6c80 ret:0x7f624b1c0020::7f624b1c0020  e0 e7 dd 6d                                      ...m
 22226 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22226 ms  0x6c80 cx:0x7f624b32ffc8
 22227 ms     | 0x6c80 EC_ValidatePublicKey()
 22227 ms     | 0x6c80 ret:0x0
 22227 ms  0x6c80 ret:0x7f624b1c7020::7f624b1c7020  70 e9 dd 6d                                      p..m
 22227 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22227 ms  0x6c80 cx:0x7f624b32ffc8
 22227 ms     | 0x6c80 EC_ValidatePublicKey()
 22229 ms     | 0x6c80 ret:0x0
 22229 ms  0x6c80 ret:0x7f624b27f020::7f624b27f020  a0 eb dd 6d                                      ...m
 22230 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22230 ms  0x6c80 cx:0x7f624b32fae8
 22231 ms     | 0x6c80 EC_ValidatePublicKey()
 22231 ms     | 0x6c80 ret:0x0
 22231 ms  0x6c80 ret:0x7f624b4e3820::7f624b4e3820  20 ee dd 6d                                       ..m
 22231 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22231 ms  0x6c80 cx:0x7f624b32fae8
 22231 ms     | 0x6c80 EC_ValidatePublicKey()
 22233 ms     | 0x6c80 ret:0x0
 22233 ms  0x6c80 ret:0x7f624b4f2020::7f624b4f2020  60 00 de 6d                                      `..m
 22236 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22236 ms  0x6c80 cx:0x7f624b32f948
 22236 ms     | 0x6c80 EC_ValidatePublicKey()
 22236 ms     | 0x6c80 ret:0x0
 22236 ms  0x6c80 ret:0x7f624d534020::7f624d534020  a0 01 de 6d                                      ...m
 22236 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22236 ms  0x6c80 cx:0x7f624b32f948
 22237 ms     | 0x6c80 EC_ValidatePublicKey()
 22238 ms     | 0x6c80 ret:0x0
 22238 ms  0x6c80 ret:0x7f624d718820::7f624d718820  80 03 de 6d                                      ...m
 22239 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22239 ms  0x6c80 cx:0x7f624b32f468
 22239 ms     | 0x6c80 EC_ValidatePublicKey()
 22239 ms     | 0x6c80 ret:0x0
 22239 ms  0x6c80 ret:0x7f624d7e1020::7f624d7e1020  60 0f de 6d                                      `..m
 22239 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22239 ms  0x6c80 cx:0x7f624b32f468
 22240 ms     | 0x6c80 EC_ValidatePublicKey()
 22241 ms     | 0x6c80 ret:0x0
 22241 ms  0x6c80 ret:0x7f624d948020::7f624d948020  a0 51 f1 6d                                      .Q.m
 22242 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22242 ms  0x6c80 cx:0x7f624b32f2c8
 22242 ms     | 0x6c80 EC_ValidatePublicKey()
 22242 ms     | 0x6c80 ret:0x0
 22242 ms  0x6c80 ret:0x7f624d9ac020::7f624d9ac020  80 53 f1 6d                                      .S.m
 22242 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22242 ms  0x6c80 cx:0x7f624b32f2c8
 22243 ms     | 0x6c80 EC_ValidatePublicKey()
 22244 ms     | 0x6c80 ret:0x0
 22244 ms  0x6c80 ret:0x7f6261779020::7f6261779020  60 55 f1 6d                                      `U.m
 22245 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22245 ms  0x6c80 cx:0x7f624b32f128
 22245 ms     | 0x6c80 EC_ValidatePublicKey()
 22245 ms     | 0x6c80 ret:0x0
 22246 ms  0x6c80 ret:0x7f626177b820::7f626177b820  a0 56 f1 6d                                      .V.m
 22246 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22246 ms  0x6c80 cx:0x7f624b32f128
 22246 ms     | 0x6c80 EC_ValidatePublicKey()
 22248 ms     | 0x6c80 ret:0x0
 22248 ms  0x6c80 ret:0x7f624ad8c820::7f624ad8c820  80 58 f1 6d                                      .X.m
 22248 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22248 ms  0x6c80 cx:0x7f624b32ede8
 22248 ms     | 0x6c80 EC_ValidatePublicKey()
 22248 ms     | 0x6c80 ret:0x0
 22248 ms  0x6c80 ret:0x7f624ad8f020::7f624ad8f020  c0 59 f1 6d                                      .Y.m
 22249 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22249 ms  0x6c80 cx:0x7f624b32ede8
 22249 ms     | 0x6c80 EC_ValidatePublicKey()
 22250 ms     | 0x6c80 ret:0x0
 22251 ms  0x6c80 ret:0x7f624ad91020::7f624ad91020  a0 5b f1 6d                                      .[.m
 22251 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22251 ms  0x6c80 cx:0x7f624b32eaa8
 22252 ms     | 0x6c80 EC_ValidatePublicKey()
 22252 ms     | 0x6c80 ret:0x0
 22252 ms  0x6c80 ret:0x7f624ad93820::7f624ad93820  90 5c f1 6d                                      .\.m
 22252 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22252 ms  0x6c80 cx:0x7f624b32eaa8
 22253 ms     | 0x6c80 EC_ValidatePublicKey()
 22254 ms     | 0x6c80 ret:0x0
 22254 ms  0x6c80 ret:0x7f624ad95820::7f624ad95820  70 5e f1 6d                                      p^.m
 22255 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22255 ms  0x6c80 privk:0x7f624b0e2020::7f624b0e2020  a0 06 de 6d                                      ...m
 22255 ms  0x6c80 privk:0x7f624b0e2020::7f624b0e2020  e5 e5 e5 e5                                      ....
 22255 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22255 ms  0x6c80 privk:0x7f624b0e0020::7f624b0e0020  c0 04 de 6d                                      ...m
 22256 ms  0x6c80 privk:0x7f624b0e0020::7f624b0e0020  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 22257 ms  0x6c88 PR_Close()
 22257 ms  0x6c88 fd:0x7f62400baa60
           /* TID 0x6c80 */
 22257 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22257 ms  0x6c80 cx:0x7f624b32fc88
 22258 ms     | 0x6c80 EC_ValidatePublicKey()
 22258 ms     | 0x6c80 ret:0x0
 22258 ms  0x6c80 ret:0x7f624ad98020::7f624ad98020  20 04 de 6d                                       ..m
 22258 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22258 ms  0x6c80 cx:0x7f624b32fc88
 22258 ms     | 0x6c80 EC_ValidatePublicKey()
 22260 ms     | 0x6c80 ret:0x0
 22260 ms  0x6c80 ret:0x7f624ad9a020::7f624ad9a020  00 06 de 6d                                      ...m
 22263 ms  0x6c80 PR_Close()
 22263 ms  0x6c80 fd:0x7f626a99d850
 22263 ms     | 0x6c80 PK11_Encrypt()
 22263 ms     | 0x6c80 symkey:0x7f626cbff980
 22264 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22264 ms  0x6c80 privk:0x7f624b0e6820::7f624b0e6820  c0 09 de 6d                                      ...m
 22264 ms  0x6c80 privk:0x7f624b0e6820::7f624b0e6820  e5 e5 e5 e5                                      ....
 22264 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22264 ms  0x6c80 privk:0x7f624b0e4820::7f624b0e4820  e0 07 de 6d                                      ...m
 22264 ms  0x6c80 privk:0x7f624b0e4820::7f624b0e4820  e5 e5 e5 e5                                      ....
 22265 ms  0x6c80 SSL_ImportFD()
 22265 ms  0x6c80 ret:0x7f624ec7e520
 22265 ms  0x6c80 SSL_AuthCertificateHook()
 22265 ms  0x6c80 fd:0x7f624ec7e520
 22265 ms  0x6c80 ret:0x0
 22265 ms  0x6c80 PR_Connect()
 22265 ms  0x6c80 fd:0x7f624ec7e520
 22265 ms  0x6c80 SSL_ImportFD()
 22265 ms  0x6c80 ret:0x7f62400ba820
 22265 ms  0x6c80 SSL_AuthCertificateHook()
 22265 ms  0x6c80 fd:0x7f62400ba820
 22265 ms  0x6c80 ret:0x0
 22265 ms  0x6c80 PR_Connect()
 22265 ms  0x6c80 fd:0x7f62400ba820
 22265 ms  0x6c80 SSL_ImportFD()
 22265 ms  0x6c80 ret:0x7f624ec7e6a0
 22265 ms  0x6c80 SSL_AuthCertificateHook()
 22265 ms  0x6c80 fd:0x7f624ec7e6a0
 22265 ms  0x6c80 ret:0x0
 22265 ms  0x6c80 PR_Connect()
 22265 ms  0x6c80 fd:0x7f624ec7e6a0
 22270 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22270 ms  0x6c80 privk:0x7f624b0eb020::7f624b0eb020  80 0d de 6d                                      ...m
 22270 ms  0x6c80 privk:0x7f624b0eb020::7f624b0eb020  e5 e5 e5 e5                                      ....
 22270 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22270 ms  0x6c80 privk:0x7f624b0e9020::7f624b0e9020  50 0b de 6d                                      P..m
 22270 ms  0x6c80 privk:0x7f624b0e9020::7f624b0e9020  e5 e5 e5 e5                                      ....
 22284 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22284 ms  0x6c80 privk:0x7f624d71d820::7f624d71d820  10 ca 2a 6d                                      ..*m
 22285 ms  0x6c80 privk:0x7f624d71d820::7f624d71d820  e5 e5 e5 e5                                      ....
 22285 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22285 ms  0x6c80 privk:0x7f624d71b820::7f624d71b820  80 9d cf 6c                                      ...l
 22285 ms  0x6c80 privk:0x7f624d71b820::7f624d71b820  e5 e5 e5 e5                                      ....
 22310 ms  0x6c80 PR_Close()
 22310 ms  0x6c80 fd:0x7f62661a6f40
 22311 ms  0x6c80 PR_Close()
 22311 ms  0x6c80 fd:0x7f626cbb2be0
 22311 ms     | 0x6c80 PK11_Encrypt()
 22311 ms     | 0x6c80 symkey:0x7f626d28cc00
 22327 ms  0x6c80 PR_Close()
 22327 ms  0x6c80 fd:0x7f6265fed310
 22327 ms     | 0x6c80 PK11_Encrypt()
 22327 ms     | 0x6c80 symkey:0x7f6240330e80
           /* TID 0x6c88 */
 22328 ms  0x6c88 PR_Close()
 22328 ms  0x6c88 fd:0x7f62400ba610
           /* TID 0x6c80 */
 22330 ms  0x6c80 PK11_Encrypt()
 22330 ms  0x6c80 symkey:0x7f626eac4980
 22332 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22332 ms  0x6c80 privk:0x7f624b458820::7f624b458820  70 5e c0 6d                                      p^.m
 22332 ms  0x6c80 privk:0x7f624b458820::7f624b458820  e5 e5 e5 e5                                      ....
 22333 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22333 ms  0x6c80 privk:0x7f624b43b820::7f624b43b820  80 53 c0 6d                                      .S.m
 22333 ms  0x6c80 privk:0x7f624b43b820::7f624b43b820  e5 e5 e5 e5                                      ....
 22339 ms  0x6c80 PR_Close()
 22339 ms  0x6c80 fd:0x7f624b5191c0
 22339 ms     | 0x6c80 PK11_Encrypt()
 22339 ms     | 0x6c80 symkey:0x7f624af97180
           /* TID 0x6c88 */
 22365 ms  0x6c88 PR_Close()
 22365 ms  0x6c88 fd:0x7f624af812e0
           /* TID 0x6c80 */
 22383 ms  0x6c80 PK11_Derive()
 22383 ms  0x6c80 basekey:0x7f624af97000
 22383 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22383 ms  0x6c80 ret:0x7f624b230200
 22383 ms  0x6c80 PK11_Encrypt()
 22383 ms  0x6c80 symkey:0x7f624af97080
 22384 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22384 ms  0x6c80 privk:0x7f624b0d4020::7f624b0d4020  f0 2b c8 6d                                      .+.m
 22384 ms  0x6c80 privk:0x7f624b0d4020::7f624b0d4020  e5 e5 e5 e5                                      ....
 22384 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22384 ms  0x6c80 privk:0x7f624b0d1820::7f624b0d1820  20 99 cf 6c                                       ..l
 22384 ms  0x6c80 privk:0x7f624b0d1820::7f624b0d1820  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 22388 ms  0x6c88 PR_Close()
 22388 ms  0x6c88 fd:0x7f624af813a0
 22392 ms  0x6c88 PR_Close()
 22392 ms  0x6c88 fd:0x7f624af813a0
 22397 ms  0x6c88 PR_Close()
 22397 ms  0x6c88 fd:0x7f6240371580
           /* TID 0x6c80 */
 22429 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22429 ms  0x6c80 cx:0x7f624afec0a8
 22429 ms     | 0x6c80 EC_ValidatePublicKey()
 22429 ms     | 0x6c80 ret:0x0
 22429 ms  0x6c80 ret:0x7f624ad9d020::7f624ad9d020  f0 db 90 6a                                      ...j
 22429 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22429 ms  0x6c80 cx:0x7f624afec0a8
 22430 ms     | 0x6c80 EC_ValidatePublicKey()
 22433 ms     | 0x6c80 ret:0x0
 22433 ms  0x6c80 ret:0x7f624ad9f020::7f624ad9f020  c0 c4 2a 6d                                      ..*m
 22438 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22438 ms  0x6c80 cx:0x7f626df5d7a8
 22439 ms     | 0x6c80 EC_ValidatePublicKey()
 22439 ms     | 0x6c80 ret:0x0
 22439 ms  0x6c80 ret:0x7f624ada1820::7f624ada1820  60 55 c0 6d                                      `U.m
 22439 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22439 ms  0x6c80 cx:0x7f626df5d7a8
 22440 ms     | 0x6c80 EC_ValidatePublicKey()
 22441 ms     | 0x6c80 ret:0x0
 22441 ms  0x6c80 ret:0x7f624ada3820::7f624ada3820  f0 21 c8 6d                                      .!.m
 22442 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22442 ms  0x6c80 cx:0x7f624b330308
 22443 ms     | 0x6c80 EC_ValidatePublicKey()
 22443 ms     | 0x6c80 ret:0x0
 22443 ms  0x6c80 ret:0x7f624ada6020::7f624ada6020  60 2a c8 6d                                      `*.m
 22443 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22443 ms  0x6c80 cx:0x7f624b330308
 22443 ms     | 0x6c80 EC_ValidatePublicKey()
 22445 ms     | 0x6c80 ret:0x0
 22445 ms  0x6c80 ret:0x7f624ada8020::7f624ada8020  30 e3 dd 6d                                      0..m
 22445 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22445 ms  0x6c80 cx:0x7f624b330168
 22446 ms     | 0x6c80 EC_ValidatePublicKey()
 22446 ms     | 0x6c80 ret:0x0
 22446 ms  0x6c80 ret:0x7f624adaa820::7f624adaa820  30 08 de 6d                                      0..m
 22446 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22446 ms  0x6c80 cx:0x7f624b330168
 22447 ms     | 0x6c80 EC_ValidatePublicKey()
 22452 ms     | 0x6c80 ret:0x0
 22452 ms  0x6c80 ret:0x7f624b036020::7f624b036020  10 0a de 6d                                      ...m
 22452 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22452 ms  0x6c80 cx:0x7f624b330b28
 22452 ms     | 0x6c80 EC_ValidatePublicKey()
 22452 ms     | 0x6c80 ret:0x0
 22453 ms  0x6c80 ret:0x7f624b0d0020::7f624b0d0020  a0 0b de 6d                                      ...m
 22453 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22453 ms  0x6c80 cx:0x7f624b330b28
 22453 ms     | 0x6c80 EC_ValidatePublicKey()
 22455 ms     | 0x6c80 ret:0x0
 22455 ms  0x6c80 ret:0x7f624b0d2020::7f624b0d2020  10 5f f1 6d                                      ._.m
           /* TID 0x6c88 */
 22457 ms  0x6c88 PR_Close()
 22457 ms  0x6c88 fd:0x7f62400ba520
           /* TID 0x6c80 */
 22458 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22458 ms  0x6c80 cx:0x7f624afec728
 22459 ms     | 0x6c80 EC_ValidatePublicKey()
 22459 ms     | 0x6c80 ret:0x0
 22459 ms  0x6c80 ret:0x7f624b0de020::7f624b0de020  60 10 f3 6d                                      `..m
 22459 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22459 ms  0x6c80 cx:0x7f624afec728
 22460 ms     | 0x6c80 EC_ValidatePublicKey()
 22461 ms     | 0x6c80 ret:0x0
 22461 ms  0x6c80 ret:0x7f624b0e0820::7f624b0e0820  40 12 f3 6d                                      @..m
 22461 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22461 ms  0x6c80 cx:0x7f624afec3e8
 22462 ms     | 0x6c80 EC_ValidatePublicKey()
 22462 ms     | 0x6c80 ret:0x0
 22462 ms  0x6c80 ret:0x7f624b0e3820::7f624b0e3820  20 14 f3 6d                                       ..m
 22462 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22462 ms  0x6c80 cx:0x7f624afec3e8
 22463 ms     | 0x6c80 EC_ValidatePublicKey()
 22464 ms     | 0x6c80 ret:0x0
 22464 ms  0x6c80 ret:0x7f624b0e5820::7f624b0e5820  e0 17 f3 6d                                      ...m
 22470 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22470 ms  0x6c80 cx:0x7f624afec248
 22470 ms     | 0x6c80 EC_ValidatePublicKey()
 22470 ms     | 0x6c80 ret:0x0
 22470 ms  0x6c80 ret:0x7f624b0e8820::7f624b0e8820  60 1a f3 6d                                      `..m
 22471 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22471 ms  0x6c80 cx:0x7f624afec248
 22472 ms     | 0x6c80 EC_ValidatePublicKey()
 22473 ms     | 0x6c80 ret:0x0
 22473 ms  0x6c80 ret:0x7f624b0ea820::7f624b0ea820  20 1e f3 6d                                       ..m
 22474 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22474 ms  0x6c80 cx:0x7f624afec588
 22474 ms     | 0x6c80 EC_ValidatePublicKey()
 22474 ms     | 0x6c80 ret:0x0
 22474 ms  0x6c80 ret:0x7f624b3c1020::7f624b3c1020  60 90 f3 6d                                      `..m
 22475 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22475 ms  0x6c80 cx:0x7f624afec588
 22475 ms     | 0x6c80 EC_ValidatePublicKey()
 22477 ms     | 0x6c80 ret:0x0
 22477 ms  0x6c80 ret:0x7f624b457020::7f624b457020  40 92 f3 6d                                      @..m
 22477 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22477 ms  0x6c80 cx:0x7f624b3304a8
 22477 ms     | 0x6c80 EC_ValidatePublicKey()
 22478 ms     | 0x6c80 ret:0x0
 22478 ms  0x6c80 ret:0x7f624d71b020::7f624d71b020  80 93 f3 6d                                      ...m
 22478 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22478 ms  0x6c80 cx:0x7f624b3304a8
 22478 ms     | 0x6c80 EC_ValidatePublicKey()
 22480 ms     | 0x6c80 ret:0x0
 22480 ms  0x6c80 ret:0x7f624d71d020::7f624d71d020  60 95 f3 6d                                      `..m
 22480 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22480 ms  0x6c80 cx:0x7f624b330988
 22484 ms     | 0x6c80 EC_ValidatePublicKey()
 22484 ms     | 0x6c80 ret:0x0
 22484 ms  0x6c80 ret:0x7f6266302820::7f6266302820  a0 96 f3 6d                                      ...m
 22484 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22484 ms  0x6c80 cx:0x7f624b330988
 22485 ms     | 0x6c80 EC_ValidatePublicKey()
 22486 ms     | 0x6c80 ret:0x0
 22486 ms  0x6c80 ret:0x7f624adcf020::7f624adcf020  80 98 f3 6d                                      ...m
 22487 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22487 ms  0x6c80 cx:0x7f624b3307e8
 22488 ms     | 0x6c80 EC_ValidatePublicKey()
 22488 ms     | 0x6c80 ret:0x0
 22488 ms  0x6c80 ret:0x7f624add1820::7f624add1820  c0 99 f3 6d                                      ...m
 22488 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22488 ms  0x6c80 cx:0x7f624b3307e8
 22488 ms     | 0x6c80 EC_ValidatePublicKey()
 22490 ms     | 0x6c80 ret:0x0
 22490 ms  0x6c80 ret:0x7f624add3820::7f624add3820  f0 9b f3 6d                                      ...m
 22493 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22493 ms  0x6c80 cx:0x7f624b330648
 22493 ms     | 0x6c80 EC_ValidatePublicKey()
 22493 ms     | 0x6c80 ret:0x0
 22493 ms  0x6c80 ret:0x7f624add6020::7f624add6020  80 9d f3 6d                                      ...m
 22493 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22493 ms  0x6c80 cx:0x7f624b330648
 22494 ms     | 0x6c80 EC_ValidatePublicKey()
 22495 ms     | 0x6c80 ret:0x0
 22495 ms  0x6c80 ret:0x7f624add8020::7f624add8020  60 9f f3 6d                                      `..m
 22496 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22496 ms  0x6c80 cx:0x7f624b330e68
 22496 ms     | 0x6c80 EC_ValidatePublicKey()
 22496 ms     | 0x6c80 ret:0x0
 22496 ms  0x6c80 ret:0x7f624adda820::7f624adda820  00 11 f4 6d                                      ...m
 22496 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22496 ms  0x6c80 cx:0x7f624b330e68
 22497 ms     | 0x6c80 EC_ValidatePublicKey()
 22502 ms     | 0x6c80 ret:0x0
 22502 ms  0x6c80 ret:0x7f624addd020::7f624addd020  e0 12 f4 6d                                      ...m
 22503 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22503 ms  0x6c80 cx:0x7f624b330cc8
 22504 ms     | 0x6c80 EC_ValidatePublicKey()
 22504 ms     | 0x6c80 ret:0x0
 22504 ms  0x6c80 ret:0x7f624addf820::7f624addf820  20 14 f4 6d                                       ..m
 22504 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22504 ms  0x6c80 cx:0x7f624b330cc8
 22505 ms     | 0x6c80 EC_ValidatePublicKey()
 22506 ms     | 0x6c80 ret:0x0
 22506 ms  0x6c80 ret:0x7f624ade1820::7f624ade1820  50 16 f4 6d                                      P..m
 22507 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22507 ms  0x6c80 cx:0x7f626df5dae8
 22507 ms     | 0x6c80 EC_ValidatePublicKey()
 22507 ms     | 0x6c80 ret:0x0
 22507 ms  0x6c80 ret:0x7f624ade4020::7f624ade4020  e0 17 f4 6d                                      ...m
 22507 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22507 ms  0x6c80 cx:0x7f626df5dae8
 22508 ms     | 0x6c80 EC_ValidatePublicKey()
 22509 ms     | 0x6c80 ret:0x0
 22509 ms  0x6c80 ret:0x7f624ade6020::7f624ade6020  c0 19 f4 6d                                      ...m
           /* TID 0x6c88 */
 22511 ms  0x6c88 PR_Close()
 22511 ms  0x6c88 fd:0x7f624d757130
           /* TID 0x6c80 */
 22512 ms  SECKEY_ECParamsToKeySize()
 22512 ms  0x6c80 ret:0xff
 22512 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22512 ms  0x6c80 cx:0x7f624b32fe28
 22513 ms     | 0x6c80 EC_ValidatePublicKey()
 22513 ms     | 0x6c80 ret:0x0
 22513 ms  0x6c80 ret:0x7f624ade9820::7f624ade9820  50 1b f4 6d                                      P..m
 22513 ms  0x6c80 PK11_PubDeriveWithKDF()
 22513 ms  0x6c80 seckey:0x7f624ade9820
 22513 ms     | 0x6c80 EC_ValidatePublicKey()
 22513 ms     | 0x6c80 ret:0x0
 22514 ms  0x6c80 ret:0x7f624b230480
 22514 ms  0x6c80 PK11_DeriveWithFlags()
 22514 ms  0x6c80 basekey:0x7f624b230480
 22514 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22514 ms  0x6c80 ret:0x7f624b230400
 22514 ms  0x6c80 PK11_Derive()
 22514 ms  0x6c80 basekey:0x7f624b230400
 22514 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22514 ms  0x6c80 ret:0x7f6265fead00
 22514 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22514 ms  0x6c80 privk:0x7f624ade9820::7f624ade9820  50 1b f4 6d                                      P..m
 22514 ms  0x6c80 privk:0x7f624ade9820::7f624ade9820  e5 e5 e5 e5                                      ....
 22514 ms  0x6c80 PK11_Encrypt()
 22514 ms  0x6c80 symkey:0x7f6240330d80
 22519 ms  SECKEY_ECParamsToKeySize()
 22519 ms  0x6c80 ret:0xff
 22519 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22519 ms  0x6c80 cx:0x7f624b32f7a8
 22520 ms     | 0x6c80 EC_ValidatePublicKey()
 22520 ms     | 0x6c80 ret:0x0
 22520 ms  0x6c80 ret:0x7f624adea820::7f624adea820  f0 1b f4 6d                                      ...m
 22520 ms  0x6c80 PK11_PubDeriveWithKDF()
 22520 ms  0x6c80 seckey:0x7f624adea820
 22520 ms     | 0x6c80 EC_ValidatePublicKey()
 22520 ms     | 0x6c80 ret:0x0
 22521 ms  0x6c80 ret:0x7f624b230480
 22521 ms  0x6c80 PK11_DeriveWithFlags()
 22521 ms  0x6c80 basekey:0x7f624b230480
 22521 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22521 ms  0x6c80 ret:0x7f6265feac80
 22521 ms  0x6c80 PK11_Derive()
 22521 ms  0x6c80 basekey:0x7f6265feac80
 22521 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22521 ms  0x6c80 ret:0x7f6268d61380
 22521 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22521 ms  0x6c80 privk:0x7f624adea820::7f624adea820  f0 1b f4 6d                                      ...m
 22521 ms  0x6c80 privk:0x7f624adea820::7f624adea820  e5 e5 e5 e5                                      ....
 22521 ms  0x6c80 PK11_Encrypt()
 22521 ms  0x6c80 symkey:0x7f6261beec80
 22523 ms  SECKEY_ECParamsToKeySize()
 22523 ms  0x6c80 ret:0xff
 22523 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22523 ms  0x6c80 cx:0x7f624b32f608
 22524 ms     | 0x6c80 EC_ValidatePublicKey()
 22524 ms     | 0x6c80 ret:0x0
 22524 ms  0x6c80 ret:0x7f624adeb820::7f624adeb820  90 1c f4 6d                                      ...m
 22524 ms  0x6c80 PK11_PubDeriveWithKDF()
 22524 ms  0x6c80 seckey:0x7f624adeb820
 22524 ms     | 0x6c80 EC_ValidatePublicKey()
 22524 ms     | 0x6c80 ret:0x0
 22524 ms  0x6c80 ret:0x7f624b230480
 22524 ms  0x6c80 PK11_DeriveWithFlags()
 22524 ms  0x6c80 basekey:0x7f624b230480
 22524 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22524 ms  0x6c80 ret:0x7f626cbff880
 22524 ms  0x6c80 PK11_Derive()
 22524 ms  0x6c80 basekey:0x7f626cbff880
 22524 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22524 ms  0x6c80 ret:0x7f624af97280
 22524 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22524 ms  0x6c80 privk:0x7f624adeb820::7f624adeb820  90 1c f4 6d                                      ...m
 22524 ms  0x6c80 privk:0x7f624adeb820::7f624adeb820  e5 e5 e5 e5                                      ....
 22525 ms  0x6c80 PK11_Encrypt()
 22525 ms  0x6c80 symkey:0x7f626cbffa00
 22527 ms  SECKEY_ECParamsToKeySize()
 22527 ms  0x6c80 ret:0xff
 22527 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22527 ms  0x6c80 cx:0x7f624b32ef88
 22528 ms     | 0x6c80 EC_ValidatePublicKey()
 22528 ms     | 0x6c80 ret:0x0
 22528 ms  0x6c80 ret:0x7f624adec820::7f624adec820  e0 1c f4 6d                                      ...m
 22528 ms  0x6c80 PK11_PubDeriveWithKDF()
 22528 ms  0x6c80 seckey:0x7f624adec820
 22528 ms     | 0x6c80 EC_ValidatePublicKey()
 22528 ms     | 0x6c80 ret:0x0
 22528 ms  0x6c80 ret:0x7f624b230480
 22528 ms  0x6c80 PK11_DeriveWithFlags()
 22528 ms  0x6c80 basekey:0x7f624b230480
 22528 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22528 ms  0x6c80 ret:0x7f624b2bcb80
 22528 ms  0x6c80 PK11_Derive()
 22528 ms  0x6c80 basekey:0x7f624b2bcb80
 22528 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22528 ms  0x6c80 ret:0x7f624b2bcc00
 22528 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22528 ms  0x6c80 privk:0x7f624adec820::7f624adec820  e0 1c f4 6d                                      ...m
 22528 ms  0x6c80 privk:0x7f624adec820::7f624adec820  e5 e5 e5 e5                                      ....
 22529 ms  0x6c80 PK11_Encrypt()
 22529 ms  0x6c80 symkey:0x7f624d7fb980
 22530 ms  SECKEY_ECParamsToKeySize()
 22530 ms  0x6c80 ret:0xff
 22530 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22530 ms  0x6c80 cx:0x7f624b32ec48
 22530 ms     | 0x6c80 EC_ValidatePublicKey()
 22530 ms     | 0x6c80 ret:0x0
 22530 ms  0x6c80 ret:0x7f624b03f820::7f624b03f820  80 1d f4 6d                                      ...m
 22530 ms  0x6c80 PK11_PubDeriveWithKDF()
 22530 ms  0x6c80 seckey:0x7f624b03f820
 22530 ms     | 0x6c80 EC_ValidatePublicKey()
 22530 ms     | 0x6c80 ret:0x0
 22531 ms  0x6c80 ret:0x7f624b230480
 22531 ms  0x6c80 PK11_DeriveWithFlags()
 22531 ms  0x6c80 basekey:0x7f624b230480
 22531 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22531 ms  0x6c80 ret:0x7f624d7fba80
 22531 ms  0x6c80 PK11_Derive()
 22531 ms  0x6c80 basekey:0x7f624d7fba80
 22531 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22531 ms  0x6c80 ret:0x7f624d7fbb00
 22531 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22531 ms  0x6c80 privk:0x7f624b03f820::7f624b03f820  80 1d f4 6d                                      ...m
 22531 ms  0x6c80 privk:0x7f624b03f820::7f624b03f820  e5 e5 e5 e5                                      ....
 22531 ms  0x6c80 PK11_Encrypt()
 22531 ms  0x6c80 symkey:0x7f624d7fbc80
 22535 ms  0x6c80 SSL_AuthCertificateComplete()
 22535 ms  0x6c80 fd:0x7f624b1e54f0
 22535 ms  0x6c80 err:0x0
 22535 ms  0x6c80 SSL_AuthCertificateComplete()
 22535 ms  0x6c80 fd:0x7f624b1e5400
 22535 ms  0x6c80 err:0x0
 22535 ms  0x6c80 SSL_AuthCertificateComplete()
 22535 ms  0x6c80 fd:0x7f624b1e53d0
 22535 ms  0x6c80 err:0x0
 22535 ms  0x6c80 SSL_AuthCertificateComplete()
 22535 ms  0x6c80 fd:0x7f6240371730
 22535 ms  0x6c80 err:0x0
 22535 ms  0x6c80 SSL_AuthCertificateComplete()
 22535 ms  0x6c80 fd:0x7f62400ba6d0
 22535 ms  0x6c80 err:0x0
 22537 ms  SECKEY_ECParamsToKeySize()
 22537 ms  0x6c80 ret:0xff
 22537 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22537 ms  0x6c80 cx:0x7f624b32e768
 22537 ms     | 0x6c80 EC_ValidatePublicKey()
 22537 ms     | 0x6c80 ret:0x0
 22537 ms  0x6c80 ret:0x7f624b0f1020::7f624b0f1020  10 1f f4 6d                                      ...m
 22537 ms  0x6c80 PK11_PubDeriveWithKDF()
 22537 ms  0x6c80 seckey:0x7f624b0f1020
 22537 ms     | 0x6c80 EC_ValidatePublicKey()
 22537 ms     | 0x6c80 ret:0x0
 22538 ms  0x6c80 ret:0x7f624b230480
 22538 ms  0x6c80 PK11_DeriveWithFlags()
 22538 ms  0x6c80 basekey:0x7f624b230480
 22538 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22538 ms  0x6c80 ret:0x7f624d7fb500
 22538 ms  0x6c80 PK11_Derive()
 22538 ms  0x6c80 basekey:0x7f624d7fb500
 22538 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22538 ms  0x6c80 ret:0x7f624d7fb880
 22538 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22538 ms  0x6c80 privk:0x7f624b0f1020::7f624b0f1020  10 1f f4 6d                                      ...m
 22538 ms  0x6c80 privk:0x7f624b0f1020::7f624b0f1020  e5 e5 e5 e5                                      ....
 22538 ms  0x6c80 PK11_Encrypt()
 22538 ms  0x6c80 symkey:0x7f624d7fbf80
 22539 ms  SECKEY_ECParamsToKeySize()
 22539 ms  0x6c80 ret:0xff
 22539 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22539 ms  0x6c80 cx:0x7f624b32e908
 22540 ms     | 0x6c80 EC_ValidatePublicKey()
 22540 ms     | 0x6c80 ret:0x0
 22540 ms  0x6c80 ret:0x7f624b1ad820::7f624b1ad820  b0 1f f4 6d                                      ...m
 22540 ms  0x6c80 PK11_PubDeriveWithKDF()
 22540 ms  0x6c80 seckey:0x7f624b1ad820
 22540 ms     | 0x6c80 EC_ValidatePublicKey()
 22540 ms     | 0x6c80 ret:0x0
 22540 ms  0x6c80 ret:0x7f624b230480
 22540 ms  0x6c80 PK11_DeriveWithFlags()
 22540 ms  0x6c80 basekey:0x7f624b230480
 22540 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22540 ms  0x6c80 ret:0x7f624d7fc080
 22541 ms  0x6c80 PK11_Derive()
 22541 ms  0x6c80 basekey:0x7f624d7fc080
 22541 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22541 ms  0x6c80 ret:0x7f624d7fc100
 22541 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22541 ms  0x6c80 privk:0x7f624b1ad820::7f624b1ad820  b0 1f f4 6d                                      ...m
 22541 ms  0x6c80 privk:0x7f624b1ad820::7f624b1ad820  e5 e5 e5 e5                                      ....
 22541 ms  0x6c80 PK11_Encrypt()
 22541 ms  0x6c80 symkey:0x7f624d7fc280
 22542 ms  SECKEY_ECParamsToKeySize()
 22542 ms  0x6c80 ret:0xff
 22542 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22542 ms  0x6c80 cx:0x7f624b32ffc8
 22542 ms     | 0x6c80 EC_ValidatePublicKey()
 22542 ms     | 0x6c80 ret:0x0
 22542 ms  0x6c80 ret:0x7f624b1ba020::7f624b1ba020  b0 80 f4 6d                                      ...m
 22542 ms  0x6c80 PK11_PubDeriveWithKDF()
 22542 ms  0x6c80 seckey:0x7f624b1ba020
 22543 ms     | 0x6c80 EC_ValidatePublicKey()
 22543 ms     | 0x6c80 ret:0x0
 22552 ms  0x6c80 ret:0x7f624b230480
 22552 ms  0x6c80 PK11_DeriveWithFlags()
 22552 ms  0x6c80 basekey:0x7f624b230480
 22552 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22552 ms  0x6c80 ret:0x7f624d7fb680
 22552 ms  0x6c80 PK11_Derive()
 22552 ms  0x6c80 basekey:0x7f624d7fb680
 22552 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22552 ms  0x6c80 ret:0x7f624d7fbf00
 22552 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22552 ms  0x6c80 privk:0x7f624b1ba020::7f624b1ba020  b0 80 f4 6d                                      ...m
 22552 ms  0x6c80 privk:0x7f624b1ba020::7f624b1ba020  e5 e5 e5 e5                                      ....
 22552 ms  0x6c80 PK11_Encrypt()
 22552 ms  0x6c80 symkey:0x7f624d7fc580
 22553 ms  0x6c80 PK11_Encrypt()
 22553 ms  0x6c80 symkey:0x7f6240330d80
 22553 ms  0x6c80 PK11_Encrypt()
 22553 ms  0x6c80 symkey:0x7f6240330d80
 22555 ms  SECKEY_ECParamsToKeySize()
 22555 ms  0x6c80 ret:0xff
 22555 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22555 ms  0x6c80 cx:0x7f624b32fae8
 22556 ms     | 0x6c80 EC_ValidatePublicKey()
 22556 ms     | 0x6c80 ret:0x0
 22556 ms  0x6c80 ret:0x7f624abc0820::7f624abc0820  50 81 f4 6d                                      P..m
 22556 ms  0x6c80 PK11_PubDeriveWithKDF()
 22556 ms  0x6c80 seckey:0x7f624abc0820
 22556 ms     | 0x6c80 EC_ValidatePublicKey()
 22556 ms     | 0x6c80 ret:0x0
 22556 ms  0x6c80 ret:0x7f624b230480
 22556 ms  0x6c80 PK11_DeriveWithFlags()
 22556 ms  0x6c80 basekey:0x7f624b230480
 22556 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22556 ms  0x6c80 ret:0x7f624d7fc700
 22556 ms  0x6c80 PK11_Derive()
 22556 ms  0x6c80 basekey:0x7f624d7fc700
 22556 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22556 ms  0x6c80 ret:0x7f624d7fc780
 22556 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22556 ms  0x6c80 privk:0x7f624abc0820::7f624abc0820  50 81 f4 6d                                      P..m
 22556 ms  0x6c80 privk:0x7f624abc0820::7f624abc0820  e5 e5 e5 e5                                      ....
 22557 ms  0x6c80 PK11_Encrypt()
 22557 ms  0x6c80 symkey:0x7f624d7fc900
 22557 ms  0x6c80 PK11_Encrypt()
 22557 ms  0x6c80 symkey:0x7f6261beec80
 22557 ms  0x6c80 PK11_Encrypt()
 22557 ms  0x6c80 symkey:0x7f6261beec80
 22558 ms  0x6c80 PK11_Encrypt()
 22558 ms  0x6c80 symkey:0x7f626cbffa00
 22558 ms  0x6c80 PK11_Encrypt()
 22558 ms  0x6c80 symkey:0x7f624d7fb980
 22558 ms  0x6c80 PK11_Encrypt()
 22558 ms  0x6c80 symkey:0x7f624d7fb980
 22559 ms  0x6c80 PK11_Encrypt()
 22559 ms  0x6c80 symkey:0x7f624d7fbc80
 22559 ms  0x6c80 PK11_Encrypt()
 22559 ms  0x6c80 symkey:0x7f624d7fbc80
 22559 ms  0x6c80 PR_Close()
 22559 ms  0x6c80 fd:0x7f624ec7e520
 22559 ms  0x6c80 PR_Close()
 22559 ms  0x6c80 fd:0x7f62400ba820
 22559 ms  0x6c80 PR_Close()
 22559 ms  0x6c80 fd:0x7f624ec7e6a0
 22559 ms  0x6c80 SSL_AuthCertificateComplete()
 22559 ms  0x6c80 fd:0x7f624b1e55b0
 22559 ms  0x6c80 err:0x0
 22559 ms  0x6c80 SSL_AuthCertificateComplete()
 22559 ms  0x6c80 fd:0x7f62400ba2b0
 22559 ms  0x6c80 err:0x0
 22559 ms  0x6c80 SSL_AuthCertificateComplete()
 22559 ms  0x6c80 fd:0x7f624af810d0
 22559 ms  0x6c80 err:0x0
 22560 ms  0x6c80 PK11_Encrypt()
 22560 ms  0x6c80 symkey:0x7f6240330d80
 22560 ms  0x6c80 SSL_AuthCertificateComplete()
 22560 ms  0x6c80 fd:0x7f624b1e5490
 22560 ms  0x6c80 err:0x0
 22560 ms  0x6c80 PK11_Encrypt()
 22560 ms  0x6c80 symkey:0x7f6261beec80
 22561 ms  0x6c80 PK11_Encrypt()
 22561 ms  0x6c80 symkey:0x7f624d7fbf80
 22561 ms  0x6c80 PK11_Encrypt()
 22561 ms  0x6c80 symkey:0x7f624d7fbf80
 22562 ms  0x6c80 PK11_Encrypt()
 22562 ms  0x6c80 symkey:0x7f624d7fc280
 22562 ms  0x6c80 PK11_Encrypt()
 22562 ms  0x6c80 symkey:0x7f624d7fc580
 22562 ms  0x6c80 PK11_Encrypt()
 22562 ms  0x6c80 symkey:0x7f624d7fc580
 22563 ms  0x6c80 PK11_Encrypt()
 22563 ms  0x6c80 symkey:0x7f624d7fc900
 22564 ms  SECKEY_ECParamsToKeySize()
 22564 ms  0x6c80 ret:0xff
 22564 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22564 ms  0x6c80 cx:0x7f624b32f948
 22564 ms     | 0x6c80 EC_ValidatePublicKey()
 22564 ms     | 0x6c80 ret:0x0
 22564 ms  0x6c80 ret:0x7f624abd0020::7f624abd0020  f0 81 f4 6d                                      ...m
 22568 ms  0x6c80 PK11_PubDeriveWithKDF()
 22568 ms  0x6c80 seckey:0x7f624abd0020
 22568 ms     | 0x6c80 EC_ValidatePublicKey()
 22568 ms     | 0x6c80 ret:0x0
 22569 ms  0x6c80 ret:0x7f624b230480
 22569 ms  0x6c80 PK11_DeriveWithFlags()
 22569 ms  0x6c80 basekey:0x7f624b230480
 22569 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22569 ms  0x6c80 ret:0x7f624d7fbd80
 22569 ms  0x6c80 PK11_Derive()
 22569 ms  0x6c80 basekey:0x7f624d7fbd80
 22569 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22569 ms  0x6c80 ret:0x7f624d7fc500
 22569 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22569 ms  0x6c80 privk:0x7f624abd0020::7f624abd0020  f0 81 f4 6d                                      ...m
 22569 ms  0x6c80 privk:0x7f624abd0020::7f624abd0020  e5 e5 e5 e5                                      ....
 22569 ms  0x6c80 PK11_Encrypt()
 22569 ms  0x6c80 symkey:0x7f624d7fce80
 22570 ms  SECKEY_ECParamsToKeySize()
 22570 ms  0x6c80 ret:0xff
 22570 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22570 ms  0x6c80 cx:0x7f624b32f468
 22571 ms     | 0x6c80 EC_ValidatePublicKey()
 22571 ms     | 0x6c80 ret:0x0
 22571 ms  0x6c80 ret:0x7f624abd1020::7f624abd1020  90 82 f4 6d                                      ...m
 22571 ms  0x6c80 PK11_PubDeriveWithKDF()
 22571 ms  0x6c80 seckey:0x7f624abd1020
 22571 ms     | 0x6c80 EC_ValidatePublicKey()
 22571 ms     | 0x6c80 ret:0x0
 22572 ms  0x6c80 ret:0x7f624b230480
 22572 ms  0x6c80 PK11_DeriveWithFlags()
 22572 ms  0x6c80 basekey:0x7f624b230480
 22572 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22572 ms  0x6c80 ret:0x7f624d7fcf80
 22572 ms  0x6c80 PK11_Derive()
 22572 ms  0x6c80 basekey:0x7f624d7fcf80
 22572 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22572 ms  0x6c80 ret:0x7f62617b3e00
 22572 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22572 ms  0x6c80 privk:0x7f624abd1020::7f624abd1020  90 82 f4 6d                                      ...m
 22572 ms  0x6c80 privk:0x7f624abd1020::7f624abd1020  e5 e5 e5 e5                                      ....
 22572 ms  0x6c80 PK11_Encrypt()
 22572 ms  0x6c80 symkey:0x7f626d268680
 22573 ms  SECKEY_ECParamsToKeySize()
 22573 ms  0x6c80 ret:0xff
 22573 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22573 ms  0x6c80 cx:0x7f624b32f2c8
 22573 ms     | 0x6c80 EC_ValidatePublicKey()
 22573 ms     | 0x6c80 ret:0x0
 22573 ms  0x6c80 ret:0x7f624abd2020::7f624abd2020  30 83 f4 6d                                      0..m
 22573 ms  0x6c80 PK11_PubDeriveWithKDF()
 22573 ms  0x6c80 seckey:0x7f624abd2020
 22573 ms     | 0x6c80 EC_ValidatePublicKey()
 22573 ms     | 0x6c80 ret:0x0
 22574 ms  0x6c80 ret:0x7f624b230480
 22574 ms  0x6c80 PK11_DeriveWithFlags()
 22574 ms  0x6c80 basekey:0x7f624b230480
 22574 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22574 ms  0x6c80 ret:0x7f626ea08000
 22574 ms  0x6c80 PK11_Derive()
 22574 ms  0x6c80 basekey:0x7f626ea08000
 22574 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22574 ms  0x6c80 ret:0x7f626eecdd80
 22574 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22574 ms  0x6c80 privk:0x7f624abd2020::7f624abd2020  30 83 f4 6d                                      0..m
 22574 ms  0x6c80 privk:0x7f624abd2020::7f624abd2020  e5 e5 e5 e5                                      ....
 22574 ms  0x6c80 PK11_Encrypt()
 22574 ms  0x6c80 symkey:0x7f624aa5d080
 22575 ms  SECKEY_ECParamsToKeySize()
 22575 ms  0x6c80 ret:0xff
 22575 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22575 ms  0x6c80 cx:0x7f624b32f128
 22576 ms     | 0x6c80 EC_ValidatePublicKey()
 22576 ms     | 0x6c80 ret:0x0
 22576 ms  0x6c80 ret:0x7f624abd3020::7f624abd3020  20 84 f4 6d                                       ..m
 22576 ms  0x6c80 PK11_PubDeriveWithKDF()
 22576 ms  0x6c80 seckey:0x7f624abd3020
 22576 ms     | 0x6c80 EC_ValidatePublicKey()
 22576 ms     | 0x6c80 ret:0x0
 22576 ms  0x6c80 ret:0x7f624b230480
 22576 ms  0x6c80 PK11_DeriveWithFlags()
 22576 ms  0x6c80 basekey:0x7f624b230480
 22576 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22576 ms  0x6c80 ret:0x7f624aa5d180
 22576 ms  0x6c80 PK11_Derive()
 22576 ms  0x6c80 basekey:0x7f624aa5d180
 22576 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22576 ms  0x6c80 ret:0x7f624aa5d200
 22576 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22576 ms  0x6c80 privk:0x7f624abd3020::7f624abd3020  20 84 f4 6d                                       ..m
 22576 ms  0x6c80 privk:0x7f624abd3020::7f624abd3020  e5 e5 e5 e5                                      ....
 22577 ms  0x6c80 PK11_Encrypt()
 22577 ms  0x6c80 symkey:0x7f624aa5d380
 22578 ms  SECKEY_ECParamsToKeySize()
 22578 ms  0x6c80 ret:0xff
 22578 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22578 ms  0x6c80 cx:0x7f624b32ede8
 22578 ms     | 0x6c80 EC_ValidatePublicKey()
 22578 ms     | 0x6c80 ret:0x0
 22578 ms  0x6c80 ret:0x7f624abd4020::7f624abd4020  c0 84 f4 6d                                      ...m
 22578 ms  0x6c80 PK11_PubDeriveWithKDF()
 22578 ms  0x6c80 seckey:0x7f624abd4020
 22578 ms     | 0x6c80 EC_ValidatePublicKey()
 22578 ms     | 0x6c80 ret:0x0
 22579 ms  0x6c80 ret:0x7f624b230480
 22579 ms  0x6c80 PK11_DeriveWithFlags()
 22579 ms  0x6c80 basekey:0x7f624b230480
 22579 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22579 ms  0x6c80 ret:0x7f624aa5d480
 22579 ms  0x6c80 PK11_Derive()
 22579 ms  0x6c80 basekey:0x7f624aa5d480
 22579 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22579 ms  0x6c80 ret:0x7f624aa5d500
 22579 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22579 ms  0x6c80 privk:0x7f624abd4020::7f624abd4020  c0 84 f4 6d                                      ...m
 22579 ms  0x6c80 privk:0x7f624abd4020::7f624abd4020  e5 e5 e5 e5                                      ....
 22579 ms  0x6c80 PK11_Encrypt()
 22579 ms  0x6c80 symkey:0x7f624aa5d680
 22580 ms  SECKEY_ECParamsToKeySize()
 22580 ms  0x6c80 ret:0xff
 22580 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22580 ms  0x6c80 cx:0x7f624b32eaa8
 22580 ms     | 0x6c80 EC_ValidatePublicKey()
 22580 ms     | 0x6c80 ret:0x0
 22580 ms  0x6c80 ret:0x7f624abd5020::7f624abd5020  60 85 f4 6d                                      `..m
 22580 ms  0x6c80 PK11_PubDeriveWithKDF()
 22580 ms  0x6c80 seckey:0x7f624abd5020
 22580 ms     | 0x6c80 EC_ValidatePublicKey()
 22580 ms     | 0x6c80 ret:0x0
 22581 ms  0x6c80 ret:0x7f624b230480
 22581 ms  0x6c80 PK11_DeriveWithFlags()
 22581 ms  0x6c80 basekey:0x7f624b230480
 22581 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22581 ms  0x6c80 ret:0x7f624aa5d780
 22581 ms  0x6c80 PK11_Derive()
 22581 ms  0x6c80 basekey:0x7f624aa5d780
 22581 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22581 ms  0x6c80 ret:0x7f624aa5d800
 22581 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22581 ms  0x6c80 privk:0x7f624abd5020::7f624abd5020  60 85 f4 6d                                      `..m
 22581 ms  0x6c80 privk:0x7f624abd5020::7f624abd5020  e5 e5 e5 e5                                      ....
 22581 ms  0x6c80 PK11_Encrypt()
 22581 ms  0x6c80 symkey:0x7f624aa5d980
 22586 ms  0x6c80 PK11_Encrypt()
 22586 ms  0x6c80 symkey:0x7f624d7fbf80
 22587 ms  0x6c80 PK11_Encrypt()
 22587 ms  0x6c80 symkey:0x7f6240330d80
 22588 ms  0x6c80 SSL_AuthCertificateComplete()
 22588 ms  0x6c80 fd:0x7f624b1e5430
 22588 ms  0x6c80 err:0x0
 22588 ms  0x6c80 SSL_AuthCertificateComplete()
 22588 ms  0x6c80 fd:0x7f624b1e5310
 22588 ms  0x6c80 err:0x0
 22588 ms  0x6c80 SSL_AuthCertificateComplete()
 22588 ms  0x6c80 fd:0x7f624b1e52b0
 22588 ms  0x6c80 err:0x0
 22588 ms  0x6c80 SSL_AuthCertificateComplete()
 22588 ms  0x6c80 fd:0x7f62400ba940
 22588 ms  0x6c80 err:0x0
 22588 ms  0x6c80 SSL_AuthCertificateComplete()
 22588 ms  0x6c80 fd:0x7f62400ba7c0
 22588 ms  0x6c80 err:0x0
 22588 ms  0x6c80 SSL_AuthCertificateComplete()
 22588 ms  0x6c80 fd:0x7f62400ba460
 22588 ms  0x6c80 err:0x0
 22588 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22588 ms  0x6c80 privk:0x7f624b1c6020::7f624b1c6020  d0 d8 d7 6d                                      ...m
 22588 ms  0x6c80 privk:0x7f624b1c6020::7f624b1c6020  e5 e5 e5 e5                                      ....
 22588 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22588 ms  0x6c80 privk:0x7f624b1c4020::7f624b1c4020  a0 d6 d7 6d                                      ...m
 22588 ms  0x6c80 privk:0x7f624b1c4020::7f624b1c4020  e5 e5 e5 e5                                      ....
 22589 ms  SECKEY_ECParamsToKeySize()
 22589 ms  0x6c80 ret:0xff
 22589 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22589 ms  0x6c80 cx:0x7f624b32fc88
 22590 ms     | 0x6c80 EC_ValidatePublicKey()
 22590 ms     | 0x6c80 ret:0x0
 22590 ms  0x6c80 ret:0x7f624abd7820::7f624abd7820  f0 d6 d7 6d                                      ...m
 22590 ms  0x6c80 PK11_PubDeriveWithKDF()
 22590 ms  0x6c80 seckey:0x7f624abd7820
 22590 ms     | 0x6c80 EC_ValidatePublicKey()
 22590 ms     | 0x6c80 ret:0x0
 22590 ms  0x6c80 ret:0x7f624b230480
 22590 ms  0x6c80 PK11_DeriveWithFlags()
 22590 ms  0x6c80 basekey:0x7f624b230480
 22590 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22591 ms  0x6c80 ret:0x7f624aa5db80
 22591 ms  0x6c80 PK11_Derive()
 22591 ms  0x6c80 basekey:0x7f624aa5db80
 22591 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22591 ms  0x6c80 ret:0x7f624aa5dd00
 22591 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22591 ms  0x6c80 privk:0x7f624abd7820::7f624abd7820  f0 d6 d7 6d                                      ...m
 22591 ms  0x6c80 privk:0x7f624abd7820::7f624abd7820  e5 e5 e5 e5                                      ....
 22591 ms  0x6c80 PK11_Encrypt()
 22591 ms  0x6c80 symkey:0x7f624aa5df00
 22591 ms  0x6c80 PK11_Encrypt()
 22591 ms  0x6c80 symkey:0x7f624d7fce80
 22591 ms  0x6c80 PK11_Encrypt()
 22591 ms  0x6c80 symkey:0x7f626d268680
 22592 ms  0x6c80 PK11_Encrypt()
 22592 ms  0x6c80 symkey:0x7f624aa5d080
 22592 ms  0x6c80 PK11_Encrypt()
 22592 ms  0x6c80 symkey:0x7f624aa5d380
 22592 ms  0x6c80 PK11_Encrypt()
 22592 ms  0x6c80 symkey:0x7f624aa5d680
 22593 ms  0x6c80 PK11_Encrypt()
 22593 ms  0x6c80 symkey:0x7f624aa5d980
 22593 ms  0x6c80 SSL_AuthCertificateComplete()
 22593 ms  0x6c80 fd:0x7f624b1e54c0
 22593 ms  0x6c80 err:0x0
 22593 ms  0x6c80 PK11_Encrypt()
 22593 ms  0x6c80 symkey:0x7f6261beec80
 22594 ms  0x6c80 PK11_Encrypt()
 22594 ms  0x6c80 symkey:0x7f624d7fb980
 22594 ms  0x6c80 PK11_Encrypt()
 22594 ms  0x6c80 symkey:0x7f624d7fb980
 22595 ms  0x6c80 PK11_Encrypt()
 22595 ms  0x6c80 symkey:0x7f624d7fbc80
 22595 ms  0x6c80 PK11_Encrypt()
 22595 ms  0x6c80 symkey:0x7f624d7fbf80
 22596 ms  0x6c80 PK11_Encrypt()
 22596 ms  0x6c80 symkey:0x7f624aa5df00
 22596 ms  0x6c80 PK11_Encrypt()
 22596 ms  0x6c80 symkey:0x7f624d7fb980
 22596 ms  0x6c80 PK11_Encrypt()
 22596 ms  0x6c80 symkey:0x7f6240330d80
 22601 ms  0x6c80 PR_Close()
 22601 ms  0x6c80 fd:0x7f626df57610
 22601 ms     | 0x6c80 PK11_Encrypt()
 22601 ms     | 0x6c80 symkey:0x7f626d280a00
 22712 ms  SECKEY_ECParamsToKeySize()
 22712 ms  0x6c80 ret:0xff
 22712 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22712 ms  0x6c80 cx:0x7f624afec0a8
 22712 ms     | 0x6c80 EC_ValidatePublicKey()
 22712 ms     | 0x6c80 ret:0x0
 22712 ms  0x6c80 ret:0x7f624d51e820::7f624d51e820  80 d8 d7 6d                                      ...m
 22712 ms  0x6c80 PK11_PubDeriveWithKDF()
 22712 ms  0x6c80 seckey:0x7f624d51e820
 22712 ms     | 0x6c80 EC_ValidatePublicKey()
 22712 ms     | 0x6c80 ret:0x0
 22713 ms  0x6c80 ret:0x7f6265e3c480
 22713 ms  0x6c80 PK11_DeriveWithFlags()
 22713 ms  0x6c80 basekey:0x7f6265e3c480
 22713 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22713 ms  0x6c80 ret:0x7f6265fe9b00
 22713 ms  0x6c80 PK11_Derive()
 22713 ms  0x6c80 basekey:0x7f6265fe9b00
 22713 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22713 ms  0x6c80 ret:0x7f624b230480
 22713 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22713 ms  0x6c80 privk:0x7f624d51e820::7f624d51e820  80 d8 d7 6d                                      ...m
 22713 ms  0x6c80 privk:0x7f624d51e820::7f624d51e820  e5 e5 e5 e5                                      ....
 22713 ms  0x6c80 PK11_Encrypt()
 22713 ms  0x6c80 symkey:0x7f626610f000
 22715 ms  0x6c80 SSL_AuthCertificateComplete()
 22715 ms  0x6c80 fd:0x7f624affe070
 22715 ms  0x6c80 err:0x0
 22715 ms  0x6c80 PK11_Encrypt()
 22715 ms  0x6c80 symkey:0x7f626610f000
 22722 ms  SECKEY_ECParamsToKeySize()
 22722 ms  0x6c80 ret:0xff
 22722 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22722 ms  0x6c80 cx:0x7f626df5d7a8
 22723 ms     | 0x6c80 EC_ValidatePublicKey()
 22723 ms     | 0x6c80 ret:0x0
 22723 ms  0x6c80 ret:0x7f626a76f820::7f626a76f820  c0 84 f4 6d                                      ...m
 22723 ms  0x6c80 PK11_PubDeriveWithKDF()
 22723 ms  0x6c80 seckey:0x7f626a76f820
 22723 ms     | 0x6c80 EC_ValidatePublicKey()
 22723 ms     | 0x6c80 ret:0x0
 22724 ms  0x6c80 ret:0x7f6265e3c480
 22724 ms  0x6c80 PK11_DeriveWithFlags()
 22724 ms  0x6c80 basekey:0x7f6265e3c480
 22724 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22724 ms  0x6c80 ret:0x7f624aa5dc00
 22724 ms  0x6c80 PK11_Derive()
 22724 ms  0x6c80 basekey:0x7f624aa5dc00
 22724 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22724 ms  0x6c80 ret:0x7f624aa5e080
 22724 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22724 ms  0x6c80 privk:0x7f626a76f820::7f626a76f820  c0 84 f4 6d                                      ...m
 22724 ms  0x6c80 privk:0x7f626a76f820::7f626a76f820  e5 e5 e5 e5                                      ....
 22724 ms  0x6c80 PK11_Encrypt()
 22724 ms  0x6c80 symkey:0x7f624aa5e280
 22725 ms  0x6c80 SSL_AuthCertificateComplete()
 22725 ms  0x6c80 fd:0x7f624affe100
 22725 ms  0x6c80 err:0x0
 22725 ms  0x6c80 PK11_Encrypt()
 22725 ms  0x6c80 symkey:0x7f624aa5e280
 22731 ms  SECKEY_ECParamsToKeySize()
 22731 ms  0x6c80 ret:0xff
 22731 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22731 ms  0x6c80 cx:0x7f624b330308
 22731 ms     | 0x6c80 EC_ValidatePublicKey()
 22731 ms     | 0x6c80 ret:0x0
 22731 ms  0x6c80 ret:0x7f624a91a020::7f624a91a020  10 85 f4 6d                                      ...m
 22731 ms  0x6c80 PK11_PubDeriveWithKDF()
 22731 ms  0x6c80 seckey:0x7f624a91a020
 22731 ms     | 0x6c80 EC_ValidatePublicKey()
 22731 ms     | 0x6c80 ret:0x0
 22732 ms  0x6c80 ret:0x7f6265e3c480
 22732 ms  0x6c80 PK11_DeriveWithFlags()
 22732 ms  0x6c80 basekey:0x7f6265e3c480
 22732 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22732 ms  0x6c80 ret:0x7f624aa5e100
 22732 ms  0x6c80 PK11_Derive()
 22732 ms  0x6c80 basekey:0x7f624aa5e100
 22732 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22732 ms  0x6c80 ret:0x7f624aa5e480
 22732 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22732 ms  0x6c80 privk:0x7f624a91a020::7f624a91a020  10 85 f4 6d                                      ...m
 22732 ms  0x6c80 privk:0x7f624a91a020::7f624a91a020  e5 e5 e5 e5                                      ....
 22732 ms  0x6c80 PK11_Encrypt()
 22732 ms  0x6c80 symkey:0x7f624aa5e700
 22734 ms  0x6c80 SSL_AuthCertificateComplete()
 22734 ms  0x6c80 fd:0x7f624af814f0
 22734 ms  0x6c80 err:0x0
 22734 ms  0x6c80 PK11_Encrypt()
 22734 ms  0x6c80 symkey:0x7f624aa5e700
 22738 ms  SECKEY_ECParamsToKeySize()
 22738 ms  0x6c80 ret:0xff
 22738 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22738 ms  0x6c80 cx:0x7f624b330168
 22739 ms     | 0x6c80 EC_ValidatePublicKey()
 22739 ms     | 0x6c80 ret:0x0
 22739 ms  0x6c80 ret:0x7f624a949020::7f624a949020  00 86 f4 6d                                      ...m
 22739 ms  0x6c80 PK11_PubDeriveWithKDF()
 22739 ms  0x6c80 seckey:0x7f624a949020
 22739 ms     | 0x6c80 EC_ValidatePublicKey()
 22739 ms     | 0x6c80 ret:0x0
 22739 ms  0x6c80 ret:0x7f6265e3c480
 22739 ms  0x6c80 PK11_DeriveWithFlags()
 22739 ms  0x6c80 basekey:0x7f6265e3c480
 22739 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22739 ms  0x6c80 ret:0x7f624aa5dc80
 22739 ms  0x6c80 PK11_Derive()
 22739 ms  0x6c80 basekey:0x7f624aa5dc80
 22739 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22740 ms  0x6c80 ret:0x7f624aa5e500
 22740 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22740 ms  0x6c80 privk:0x7f624a949020::7f624a949020  00 86 f4 6d                                      ...m
 22740 ms  0x6c80 privk:0x7f624a949020::7f624a949020  e5 e5 e5 e5                                      ....
 22740 ms  0x6c80 PK11_Encrypt()
 22740 ms  0x6c80 symkey:0x7f624aa5e980
 22741 ms  SECKEY_ECParamsToKeySize()
 22741 ms  0x6c80 ret:0xff
 22741 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22741 ms  0x6c80 cx:0x7f624b330b28
 22741 ms     | 0x6c80 EC_ValidatePublicKey()
 22741 ms     | 0x6c80 ret:0x0
 22741 ms  0x6c80 ret:0x7f624a949820::7f624a949820  a0 86 f4 6d                                      ...m
 22741 ms  0x6c80 PK11_PubDeriveWithKDF()
 22741 ms  0x6c80 seckey:0x7f624a949820
 22741 ms     | 0x6c80 EC_ValidatePublicKey()
 22741 ms     | 0x6c80 ret:0x0
 22742 ms  0x6c80 ret:0x7f6265e3c480
 22742 ms  0x6c80 PK11_DeriveWithFlags()
 22742 ms  0x6c80 basekey:0x7f6265e3c480
 22742 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22742 ms  0x6c80 ret:0x7f624aa5ea80
 22742 ms  0x6c80 PK11_Derive()
 22742 ms  0x6c80 basekey:0x7f624aa5ea80
 22742 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22742 ms  0x6c80 ret:0x7f624aa5eb00
 22742 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22742 ms  0x6c80 privk:0x7f624a949820::7f624a949820  a0 86 f4 6d                                      ...m
 22742 ms  0x6c80 privk:0x7f624a949820::7f624a949820  e5 e5 e5 e5                                      ....
 22742 ms  0x6c80 PK11_Encrypt()
 22742 ms  0x6c80 symkey:0x7f624aa5ec80
 22742 ms  0x6c80 SSL_AuthCertificateComplete()
 22742 ms  0x6c80 fd:0x7f624af815b0
 22742 ms  0x6c80 err:0x0
 22742 ms  0x6c80 SSL_AuthCertificateComplete()
 22742 ms  0x6c80 fd:0x7f624af81f40
 22742 ms  0x6c80 err:0x0
 22742 ms  0x6c80 PK11_Encrypt()
 22742 ms  0x6c80 symkey:0x7f624aa5e980
 22743 ms  0x6c80 PK11_Encrypt()
 22743 ms  0x6c80 symkey:0x7f624aa5ec80
 22747 ms  0x6c80 PK11_Encrypt()
 22747 ms  0x6c80 symkey:0x7f624d7fb980
 22767 ms  SECKEY_ECParamsToKeySize()
 22767 ms  0x6c80 ret:0xff
 22767 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22767 ms  0x6c80 cx:0x7f624afec728
 22767 ms     | 0x6c80 EC_ValidatePublicKey()
 22767 ms     | 0x6c80 ret:0x0
 22767 ms  0x6c80 ret:0x7f624a94d820::7f624a94d820  40 87 f4 6d                                      @..m
 22767 ms  0x6c80 PK11_PubDeriveWithKDF()
 22767 ms  0x6c80 seckey:0x7f624a94d820
 22767 ms     | 0x6c80 EC_ValidatePublicKey()
 22767 ms     | 0x6c80 ret:0x0
 22768 ms  0x6c80 ret:0x7f6265e3c480
 22768 ms  0x6c80 PK11_DeriveWithFlags()
 22768 ms  0x6c80 basekey:0x7f6265e3c480
 22768 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22768 ms  0x6c80 ret:0x7f624aa5e580
 22768 ms  0x6c80 PK11_Derive()
 22768 ms  0x6c80 basekey:0x7f624aa5e580
 22768 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22768 ms  0x6c80 ret:0x7f624af97680
 22768 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22768 ms  0x6c80 privk:0x7f624a94d820::7f624a94d820  40 87 f4 6d                                      @..m
 22768 ms  0x6c80 privk:0x7f624a94d820::7f624a94d820  e5 e5 e5 e5                                      ....
 22768 ms  0x6c80 PK11_Encrypt()
 22768 ms  0x6c80 symkey:0x7f624d7fc380
 22769 ms  0x6c80 SSL_AuthCertificateComplete()
 22769 ms  0x6c80 fd:0x7f624affea30
 22769 ms  0x6c80 err:0x0
 22770 ms  0x6c80 PK11_Encrypt()
 22770 ms  0x6c80 symkey:0x7f624d7fc380
 22772 ms  SECKEY_ECParamsToKeySize()
 22772 ms  0x6c80 ret:0xff
 22772 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22772 ms  0x6c80 cx:0x7f624afec3e8
 22772 ms     | 0x6c80 EC_ValidatePublicKey()
 22772 ms     | 0x6c80 ret:0x0
 22772 ms  0x6c80 ret:0x7f624a950020::7f624a950020  e0 87 f4 6d                                      ...m
 22772 ms  0x6c80 PK11_PubDeriveWithKDF()
 22772 ms  0x6c80 seckey:0x7f624a950020
 22772 ms     | 0x6c80 EC_ValidatePublicKey()
 22772 ms     | 0x6c80 ret:0x0
 22773 ms  0x6c80 ret:0x7f6265e3c480
 22773 ms  0x6c80 PK11_DeriveWithFlags()
 22773 ms  0x6c80 basekey:0x7f6265e3c480
 22773 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22773 ms  0x6c80 ret:0x7f624aa5ef00
 22773 ms  0x6c80 PK11_Derive()
 22773 ms  0x6c80 basekey:0x7f624aa5ef00
 22773 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22773 ms  0x6c80 ret:0x7f624d7fcb80
 22773 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22773 ms  0x6c80 privk:0x7f624a950020::7f624a950020  e0 87 f4 6d                                      ...m
 22773 ms  0x6c80 privk:0x7f624a950020::7f624a950020  e5 e5 e5 e5                                      ....
 22773 ms  0x6c80 PK11_Encrypt()
 22773 ms  0x6c80 symkey:0x7f624a9ba080
 22774 ms  SECKEY_ECParamsToKeySize()
 22774 ms  0x6c80 ret:0xff
 22774 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22774 ms  0x6c80 cx:0x7f624afec248
 22775 ms     | 0x6c80 EC_ValidatePublicKey()
 22775 ms     | 0x6c80 ret:0x0
 22775 ms  0x6c80 ret:0x7f624a951020::7f624a951020  80 88 f4 6d                                      ...m
 22775 ms  0x6c80 PK11_PubDeriveWithKDF()
 22775 ms  0x6c80 seckey:0x7f624a951020
 22775 ms     | 0x6c80 EC_ValidatePublicKey()
 22775 ms     | 0x6c80 ret:0x0
 22775 ms  0x6c80 ret:0x7f6265e3c480
 22775 ms  0x6c80 PK11_DeriveWithFlags()
 22775 ms  0x6c80 basekey:0x7f6265e3c480
 22775 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22775 ms  0x6c80 ret:0x7f624a9ba180
 22775 ms  0x6c80 PK11_Derive()
 22775 ms  0x6c80 basekey:0x7f624a9ba180
 22775 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22775 ms  0x6c80 ret:0x7f624a9ba200
 22775 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22775 ms  0x6c80 privk:0x7f624a951020::7f624a951020  80 88 f4 6d                                      ...m
 22776 ms  0x6c80 privk:0x7f624a951020::7f624a951020  e5 e5 e5 e5                                      ....
 22776 ms  0x6c80 PK11_Encrypt()
 22776 ms  0x6c80 symkey:0x7f624a9ba380
 22781 ms  SECKEY_ECParamsToKeySize()
 22781 ms  0x6c80 ret:0xff
 22781 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22781 ms  0x6c80 cx:0x7f624afec588
 22781 ms     | 0x6c80 EC_ValidatePublicKey()
 22781 ms     | 0x6c80 ret:0x0
 22781 ms  0x6c80 ret:0x7f624a952020::7f624a952020  70 89 f4 6d                                      p..m
 22781 ms  0x6c80 PK11_PubDeriveWithKDF()
 22781 ms  0x6c80 seckey:0x7f624a952020
 22781 ms     | 0x6c80 EC_ValidatePublicKey()
 22781 ms     | 0x6c80 ret:0x0
 22782 ms  0x6c80 ret:0x7f6265e3c480
 22782 ms  0x6c80 PK11_DeriveWithFlags()
 22782 ms  0x6c80 basekey:0x7f6265e3c480
 22782 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22782 ms  0x6c80 ret:0x7f624a9ba500
 22782 ms  0x6c80 PK11_Derive()
 22782 ms  0x6c80 basekey:0x7f624a9ba500
 22782 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22782 ms  0x6c80 ret:0x7f624a9ba700
 22782 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22782 ms  0x6c80 privk:0x7f624a952020::7f624a952020  70 89 f4 6d                                      p..m
 22782 ms  0x6c80 privk:0x7f624a952020::7f624a952020  e5 e5 e5 e5                                      ....
 22782 ms  0x6c80 PK11_Encrypt()
 22782 ms  0x6c80 symkey:0x7f624a9ba880
 22783 ms  0x6c80 SSL_AuthCertificateComplete()
 22783 ms  0x6c80 fd:0x7f624affe4f0
 22783 ms  0x6c80 err:0x0
 22783 ms  0x6c80 SSL_AuthCertificateComplete()
 22783 ms  0x6c80 fd:0x7f624affe5b0
 22783 ms  0x6c80 err:0x0
 22783 ms  0x6c80 SSL_AuthCertificateComplete()
 22783 ms  0x6c80 fd:0x7f624affe610
 22783 ms  0x6c80 err:0x0
 22783 ms  0x6c80 PK11_Encrypt()
 22783 ms  0x6c80 symkey:0x7f624a9ba080
 22783 ms  0x6c80 PK11_Encrypt()
 22783 ms  0x6c80 symkey:0x7f624a9ba380
 22784 ms  0x6c80 PK11_Encrypt()
 22784 ms  0x6c80 symkey:0x7f624a9ba880
 22785 ms  SECKEY_ECParamsToKeySize()
 22785 ms  0x6c80 ret:0xff
 22785 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22785 ms  0x6c80 cx:0x7f624b3304a8
 22785 ms     | 0x6c80 EC_ValidatePublicKey()
 22785 ms     | 0x6c80 ret:0x0
 22785 ms  0x6c80 ret:0x7f624a956020::7f624a956020  10 8a f4 6d                                      ...m
 22785 ms  0x6c80 PK11_PubDeriveWithKDF()
 22785 ms  0x6c80 seckey:0x7f624a956020
 22785 ms     | 0x6c80 EC_ValidatePublicKey()
 22785 ms     | 0x6c80 ret:0x0
 22786 ms  0x6c80 ret:0x7f6265e3c480
 22786 ms  0x6c80 PK11_DeriveWithFlags()
 22786 ms  0x6c80 basekey:0x7f6265e3c480
 22786 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22786 ms  0x6c80 ret:0x7f624a9baa80
 22786 ms  0x6c80 PK11_Derive()
 22786 ms  0x6c80 basekey:0x7f624a9baa80
 22786 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22786 ms  0x6c80 ret:0x7f624a9bab00
 22786 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22786 ms  0x6c80 privk:0x7f624a956020::7f624a956020  10 8a f4 6d                                      ...m
 22786 ms  0x6c80 privk:0x7f624a956020::7f624a956020  e5 e5 e5 e5                                      ....
 22786 ms  0x6c80 PK11_Encrypt()
 22786 ms  0x6c80 symkey:0x7f624a9bac80
 22787 ms  SECKEY_ECParamsToKeySize()
 22787 ms  0x6c80 ret:0xff
 22787 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22787 ms  0x6c80 cx:0x7f624b330988
 22788 ms     | 0x6c80 EC_ValidatePublicKey()
 22788 ms     | 0x6c80 ret:0x0
 22788 ms  0x6c80 ret:0x7f624a957020::7f624a957020  b0 8a f4 6d                                      ...m
 22788 ms  0x6c80 PK11_PubDeriveWithKDF()
 22788 ms  0x6c80 seckey:0x7f624a957020
 22788 ms     | 0x6c80 EC_ValidatePublicKey()
 22788 ms     | 0x6c80 ret:0x0
 22788 ms  0x6c80 ret:0x7f6265e3c480
 22788 ms  0x6c80 PK11_DeriveWithFlags()
 22788 ms  0x6c80 basekey:0x7f6265e3c480
 22788 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22788 ms  0x6c80 ret:0x7f624a9bad80
 22788 ms  0x6c80 PK11_Derive()
 22788 ms  0x6c80 basekey:0x7f624a9bad80
 22788 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22788 ms  0x6c80 ret:0x7f624a9bae00
 22788 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22788 ms  0x6c80 privk:0x7f624a957020::7f624a957020  b0 8a f4 6d                                      ...m
 22789 ms  0x6c80 privk:0x7f624a957020::7f624a957020  e5 e5 e5 e5                                      ....
 22789 ms  0x6c80 PK11_Encrypt()
 22789 ms  0x6c80 symkey:0x7f624a9baf80
 22790 ms  SECKEY_ECParamsToKeySize()
 22790 ms  0x6c80 ret:0xff
 22790 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22790 ms  0x6c80 cx:0x7f624b3307e8
 22790 ms     | 0x6c80 EC_ValidatePublicKey()
 22790 ms     | 0x6c80 ret:0x0
 22790 ms  0x6c80 ret:0x7f624a958020::7f624a958020  50 8b f4 6d                                      P..m
 22790 ms  0x6c80 PK11_PubDeriveWithKDF()
 22790 ms  0x6c80 seckey:0x7f624a958020
 22790 ms     | 0x6c80 EC_ValidatePublicKey()
 22790 ms     | 0x6c80 ret:0x0
 22791 ms  0x6c80 ret:0x7f6265e3c480
 22791 ms  0x6c80 PK11_DeriveWithFlags()
 22791 ms  0x6c80 basekey:0x7f6265e3c480
 22791 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22791 ms  0x6c80 ret:0x7f624a9bb080
 22791 ms  0x6c80 PK11_Derive()
 22791 ms  0x6c80 basekey:0x7f624a9bb080
 22791 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22791 ms  0x6c80 ret:0x7f624a9bb100
 22791 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22791 ms  0x6c80 privk:0x7f624a958020::7f624a958020  50 8b f4 6d                                      P..m
 22791 ms  0x6c80 privk:0x7f624a958020::7f624a958020  e5 e5 e5 e5                                      ....
 22791 ms  0x6c80 PK11_Encrypt()
 22791 ms  0x6c80 symkey:0x7f624a9bb280
 22792 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22792 ms  0x6c80 privk:0x7f624b0f0020::7f624b0f0020  c0 8e c8 68                                      ...h
 22792 ms  0x6c80 privk:0x7f624b0f0020::7f624b0f0020  e5 e5 e5 e5                                      ....
 22792 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22792 ms  0x6c80 privk:0x7f624b0ec020::7f624b0ec020  10 5a 3f 66                                      .Z?f
 22792 ms  0x6c80 privk:0x7f624b0ec020::7f624b0ec020  e5 e5 e5 e5                                      ....
 22792 ms  0x6c80 PK11_Encrypt()
 22792 ms  0x6c80 symkey:0x7f6240330d80
 22798 ms  0x6c80 SSL_AuthCertificateComplete()
 22798 ms  0x6c80 fd:0x7f624af81610
 22798 ms  0x6c80 err:0x0
 22798 ms  0x6c80 SSL_AuthCertificateComplete()
 22798 ms  0x6c80 fd:0x7f624af81b20
 22798 ms  0x6c80 err:0x0
 22799 ms  0x6c80 SSL_AuthCertificateComplete()
 22799 ms  0x6c80 fd:0x7f624af81a00
 22799 ms  0x6c80 err:0x0
 22799 ms  0x6c80 PK11_Encrypt()
 22799 ms  0x6c80 symkey:0x7f6240330d80
 22800 ms  SECKEY_ECParamsToKeySize()
 22800 ms  0x6c80 ret:0xff
 22800 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22800 ms  0x6c80 cx:0x7f624b330cc8
 22801 ms     | 0x6c80 EC_ValidatePublicKey()
 22801 ms     | 0x6c80 ret:0x0
 22801 ms  0x6c80 ret:0x7f624a959820::7f624a959820  c0 8e c8 68                                      ...h
 22801 ms  0x6c80 PK11_PubDeriveWithKDF()
 22801 ms  0x6c80 seckey:0x7f624a959820
 22801 ms     | 0x6c80 EC_ValidatePublicKey()
 22801 ms     | 0x6c80 ret:0x0
 22801 ms  0x6c80 ret:0x7f6265e3c480
 22801 ms  0x6c80 PK11_DeriveWithFlags()
 22801 ms  0x6c80 basekey:0x7f6265e3c480
 22801 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22801 ms  0x6c80 ret:0x7f624a9ba580
 22801 ms  0x6c80 PK11_Derive()
 22801 ms  0x6c80 basekey:0x7f624a9ba580
 22801 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22801 ms  0x6c80 ret:0x7f624a9bb500
 22801 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22801 ms  0x6c80 privk:0x7f624a959820::7f624a959820  c0 8e c8 68                                      ...h
 22802 ms  0x6c80 privk:0x7f624a959820::7f624a959820  e5 e5 e5 e5                                      ....
 22802 ms  0x6c80 PK11_Encrypt()
 22802 ms  0x6c80 symkey:0x7f624a9bb700
 22805 ms  SECKEY_ECParamsToKeySize()
 22805 ms  0x6c80 ret:0xff
 22805 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22805 ms  0x6c80 cx:0x7f624b330e68
 22806 ms     | 0x6c80 EC_ValidatePublicKey()
 22806 ms     | 0x6c80 ret:0x0
 22806 ms  0x6c80 ret:0x7f624a95a820::7f624a95a820  70 89 f4 6d                                      p..m
 22806 ms  0x6c80 PK11_PubDeriveWithKDF()
 22806 ms  0x6c80 seckey:0x7f624a95a820
 22806 ms     | 0x6c80 EC_ValidatePublicKey()
 22806 ms     | 0x6c80 ret:0x0
 22807 ms  0x6c80 ret:0x7f6265e3c480
 22807 ms  0x6c80 PK11_DeriveWithFlags()
 22807 ms  0x6c80 basekey:0x7f6265e3c480
 22807 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22807 ms  0x6c80 ret:0x7f624a9ba600
 22807 ms  0x6c80 PK11_Derive()
 22807 ms  0x6c80 basekey:0x7f624a9ba600
 22807 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22807 ms  0x6c80 ret:0x7f624a9bb400
 22807 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22807 ms  0x6c80 privk:0x7f624a95a820::7f624a95a820  70 89 f4 6d                                      p..m
 22807 ms  0x6c80 privk:0x7f624a95a820::7f624a95a820  e5 e5 e5 e5                                      ....
 22807 ms  0x6c80 PK11_Encrypt()
 22807 ms  0x6c80 symkey:0x7f624a9bb880
 22811 ms  0x6c80 PK11_Encrypt()
 22811 ms  0x6c80 symkey:0x7f624a9bac80
 22813 ms  0x6c80 PK11_Encrypt()
 22813 ms  0x6c80 symkey:0x7f624a9baf80
 22815 ms  0x6c80 PK11_Encrypt()
 22815 ms  0x6c80 symkey:0x7f624a9bb280
 22816 ms  SECKEY_ECParamsToKeySize()
 22816 ms  0x6c80 ret:0xff
 22816 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22816 ms  0x6c80 cx:0x7f624b330648
 22816 ms     | 0x6c80 EC_ValidatePublicKey()
 22816 ms     | 0x6c80 ret:0x0
 22816 ms  0x6c80 ret:0x7f624a95e820::7f624a95e820  40 d7 d7 6d                                      @..m
 22816 ms  0x6c80 PK11_PubDeriveWithKDF()
 22816 ms  0x6c80 seckey:0x7f624a95e820
 22816 ms     | 0x6c80 EC_ValidatePublicKey()
 22816 ms     | 0x6c80 ret:0x0
 22817 ms  0x6c80 ret:0x7f6265e3c480
 22817 ms  0x6c80 PK11_DeriveWithFlags()
 22817 ms  0x6c80 basekey:0x7f6265e3c480
 22817 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22817 ms  0x6c80 ret:0x7f624a9bbe00
 22817 ms  0x6c80 PK11_Derive()
 22817 ms  0x6c80 basekey:0x7f624a9bbe00
 22817 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22817 ms  0x6c80 ret:0x7f624a9bbe80
 22817 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22817 ms  0x6c80 privk:0x7f624a95e820::7f624a95e820  40 d7 d7 6d                                      @..m
 22817 ms  0x6c80 privk:0x7f624a95e820::7f624a95e820  e5 e5 e5 e5                                      ....
 22817 ms  0x6c80 PK11_Encrypt()
 22817 ms  0x6c80 symkey:0x7f624aa5db00
 22824 ms  0x6c80 SSL_AuthCertificateComplete()
 22824 ms  0x6c80 fd:0x7f624b1fa580
 22824 ms  0x6c80 err:0x0
 22824 ms  0x6c80 SSL_AuthCertificateComplete()
 22824 ms  0x6c80 fd:0x7f624b1e5370
 22824 ms  0x6c80 err:0x0
 22824 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22824 ms  0x6c80 privk:0x7f624b1b5020::7f624b1b5020  60 e5 dd 6d                                      `..m
 22824 ms  0x6c80 privk:0x7f624b1b5020::7f624b1b5020  e5 e5 e5 e5                                      ....
 22824 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22824 ms  0x6c80 privk:0x7f624b1af020::7f624b1af020  80 e3 dd 6d                                      ...m
 22824 ms  0x6c80 privk:0x7f624b1af020::7f624b1af020  e5 e5 e5 e5                                      ....
 22824 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22824 ms  0x6c80 privk:0x7f624b0dc820::7f624b0dc820  40 d2 d7 6d                                      @..m
 22824 ms  0x6c80 privk:0x7f624b0dc820::7f624b0dc820  e5 e5 e5 e5                                      ....
 22824 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22824 ms  0x6c80 privk:0x7f624b0da020::7f624b0da020  b0 2f c8 6d                                      ./.m
 22824 ms  0x6c80 privk:0x7f624b0da020::7f624b0da020  e5 e5 e5 e5                                      ....
 22825 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22825 ms  0x6c80 privk:0x7f624b162020::7f624b162020  60 da d7 6d                                      `..m
 22825 ms  0x6c80 privk:0x7f624b162020::7f624b162020  e5 e5 e5 e5                                      ....
 22825 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22825 ms  0x6c80 privk:0x7f624b0f9020::7f624b0f9020  c0 d4 d7 6d                                      ...m
 22825 ms  0x6c80 privk:0x7f624b0f9020::7f624b0f9020  e5 e5 e5 e5                                      ....
 22825 ms  0x6c80 SSL_AuthCertificateComplete()
 22825 ms  0x6c80 fd:0x7f624af81ac0
 22825 ms  0x6c80 err:0x0
 22826 ms  0x6c80 PK11_Encrypt()
 22826 ms  0x6c80 symkey:0x7f6261beec80
 22826 ms  0x6c80 PK11_Encrypt()
 22826 ms  0x6c80 symkey:0x7f624d7fb980
 22826 ms  0x6c80 PK11_Encrypt()
 22826 ms  0x6c80 symkey:0x7f624d7fbc80
 22826 ms  0x6c80 PK11_Encrypt()
 22826 ms  0x6c80 symkey:0x7f624a9bb700
 22826 ms  0x6c80 PK11_Encrypt()
 22826 ms  0x6c80 symkey:0x7f624a9bb880
 22828 ms  SECKEY_ECParamsToKeySize()
 22828 ms  0x6c80 ret:0xff
 22828 ms  0x6c80 SECKEY_CreateECPrivateKey()
 22828 ms  0x6c80 cx:0x7f626df5dae8
 22828 ms     | 0x6c80 EC_ValidatePublicKey()
 22828 ms     | 0x6c80 ret:0x0
 22828 ms  0x6c80 ret:0x7f624a961820::7f624a961820  60 2f c8 6d                                      `/.m
 22828 ms  0x6c80 PK11_PubDeriveWithKDF()
 22828 ms  0x6c80 seckey:0x7f624a961820
 22828 ms     | 0x6c80 EC_ValidatePublicKey()
 22828 ms     | 0x6c80 ret:0x0
 22829 ms  0x6c80 ret:0x7f6265e3c480
 22829 ms  0x6c80 PK11_DeriveWithFlags()
 22829 ms  0x6c80 basekey:0x7f6265e3c480
 22829 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22829 ms  0x6c80 ret:0x7f624b2bc180
 22829 ms  0x6c80 PK11_Derive()
 22829 ms  0x6c80 basekey:0x7f624b2bc180
 22829 ms     | 0x6c80 PK11_DeriveWithTemplate()
 22829 ms  0x6c80 ret:0x7f624ad3d080
 22829 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22829 ms  0x6c80 privk:0x7f624a961820::7f624a961820  60 2f c8 6d                                      `/.m
 22829 ms  0x6c80 privk:0x7f624a961820::7f624a961820  e5 e5 e5 e5                                      ....
 22829 ms  0x6c80 PK11_Encrypt()
 22829 ms  0x6c80 symkey:0x7f624ad3d200
 22833 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22833 ms  0x6c80 privk:0x7f624b179020::7f624b179020  20 1e d9 6d                                       ..m
 22833 ms  0x6c80 privk:0x7f624b179020::7f624b179020  e5 e5 e5 e5                                      ....
 22833 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22833 ms  0x6c80 privk:0x7f624b165020::7f624b165020  80 dd d7 6d                                      ...m
 22833 ms  0x6c80 privk:0x7f624b165020::7f624b165020  e5 e5 e5 e5                                      ....
 22833 ms  0x6c80 PK11_Encrypt()
 22833 ms  0x6c80 symkey:0x7f624aa5db00
 22834 ms  0x6c80 PR_Close()
 22834 ms  0x6c80 fd:0x7f624b1e53d0
 22834 ms     | 0x6c80 PK11_Encrypt()
 22834 ms     | 0x6c80 symkey:0x7f626cbffa00
 22834 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22834 ms  0x6c80 privk:0x7f624b1b9020::7f624b1b9020  c0 ce 96 6a                                      ...j
 22834 ms  0x6c80 privk:0x7f624b1b9020::7f624b1b9020  e5 e5 e5 e5                                      ....
 22834 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22834 ms  0x6c80 privk:0x7f624b1b6820::7f624b1b6820  60 e5 29 6d                                      `.)m
 22835 ms  0x6c80 privk:0x7f624b1b6820::7f624b1b6820  e5 e5 e5 e5                                      ....
 22835 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22835 ms  0x6c80 privk:0x7f624b27f020::7f624b27f020  a0 eb dd 6d                                      ...m
 22835 ms  0x6c80 privk:0x7f624b27f020::7f624b27f020  e5 e5 e5 e5                                      ....
 22835 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22835 ms  0x6c80 privk:0x7f624b1c7020::7f624b1c7020  70 e9 dd 6d                                      p..m
 22835 ms  0x6c80 privk:0x7f624b1c7020::7f624b1c7020  e5 e5 e5 e5                                      ....
 22835 ms  0x6c80 SSL_AuthCertificateComplete()
 22835 ms  0x6c80 fd:0x7f624affe040
 22835 ms  0x6c80 err:0x0
 22836 ms  0x6c80 PK11_Encrypt()
 22836 ms  0x6c80 symkey:0x7f624d7fbf80
 22836 ms  0x6c80 PK11_Encrypt()
 22836 ms  0x6c80 symkey:0x7f624d7fc580
           /* TID 0x6c88 */
 22838 ms  0x6c88 PR_Close()
 22838 ms  0x6c88 fd:0x7f624af81190
           /* TID 0x6c80 */
 22839 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22839 ms  0x6c80 privk:0x7f624b1c0020::7f624b1c0020  e0 e7 dd 6d                                      ...m
 22839 ms  0x6c80 privk:0x7f624b1c0020::7f624b1c0020  e5 e5 e5 e5                                      ....
 22839 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22839 ms  0x6c80 privk:0x7f624b1be020::7f624b1be020  30 28 c8 6d                                      0(.m
 22839 ms  0x6c80 privk:0x7f624b1be020::7f624b1be020  e5 e5 e5 e5                                      ....
 22840 ms  0x6c80 PK11_Encrypt()
 22840 ms  0x6c80 symkey:0x7f624ad3d200
 22841 ms  0x6c80 PR_Close()
 22841 ms  0x6c80 fd:0x7f62400ba2b0
 22841 ms     | 0x6c80 PK11_Encrypt()
 22841 ms     | 0x6c80 symkey:0x7f624d7fc280
 22842 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22842 ms  0x6c80 privk:0x7f624b4f2020::7f624b4f2020  60 00 de 6d                                      `..m
 22842 ms  0x6c80 privk:0x7f624b4f2020::7f624b4f2020  e5 e5 e5 e5                                      ....
 22842 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22842 ms  0x6c80 privk:0x7f624b4e3820::7f624b4e3820  20 ee dd 6d                                       ..m
 22842 ms  0x6c80 privk:0x7f624b4e3820::7f624b4e3820  e5 e5 e5 e5                                      ....
 22842 ms  0x6c80 PR_Close()
 22842 ms  0x6c80 fd:0x7f624b1e5490
 22842 ms     | 0x6c80 PK11_Encrypt()
 22842 ms     | 0x6c80 symkey:0x7f624d7fc900
           /* TID 0x6c88 */
 22860 ms  0x6c88 PR_Close()
 22860 ms  0x6c88 fd:0x7f62400ba130
           /* TID 0x6c80 */
 22866 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22866 ms  0x6c80 privk:0x7f624d718820::7f624d718820  80 03 de 6d                                      ...m
 22866 ms  0x6c80 privk:0x7f624d718820::7f624d718820  e5 e5 e5 e5                                      ....
 22866 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22866 ms  0x6c80 privk:0x7f624d534020::7f624d534020  a0 01 de 6d                                      ...m
 22866 ms  0x6c80 privk:0x7f624d534020::7f624d534020  e5 e5 e5 e5                                      ....
 22866 ms  0x6c80 PR_Close()
 22866 ms  0x6c80 fd:0x7f624b1e5430
 22866 ms     | 0x6c80 PK11_Encrypt()
 22866 ms     | 0x6c80 symkey:0x7f624d7fce80
 22870 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22870 ms  0x6c80 privk:0x7f624ad8c820::7f624ad8c820  80 58 f1 6d                                      .X.m
 22870 ms  0x6c80 privk:0x7f624ad8c820::7f624ad8c820  e5 e5 e5 e5                                      ....
 22870 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22870 ms  0x6c80 privk:0x7f626177b820::7f626177b820  a0 56 f1 6d                                      .V.m
 22871 ms  0x6c80 privk:0x7f626177b820::7f626177b820  e5 e5 e5 e5                                      ....
 22871 ms  0x6c80 PR_Close()
 22871 ms  0x6c80 fd:0x7f62400ba940
 22871 ms     | 0x6c80 PK11_Encrypt()
 22871 ms     | 0x6c80 symkey:0x7f624aa5d380
 22874 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22874 ms  0x6c80 privk:0x7f624ad95820::7f624ad95820  70 5e f1 6d                                      p^.m
 22874 ms  0x6c80 privk:0x7f624ad95820::7f624ad95820  e5 e5 e5 e5                                      ....
 22874 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22874 ms  0x6c80 privk:0x7f624ad93820::7f624ad93820  90 5c f1 6d                                      .\.m
 22874 ms  0x6c80 privk:0x7f624ad93820::7f624ad93820  e5 e5 e5 e5                                      ....
 22874 ms  0x6c80 PR_Close()
 22874 ms  0x6c80 fd:0x7f62400ba460
 22874 ms     | 0x6c80 PK11_Encrypt()
 22874 ms     | 0x6c80 symkey:0x7f624aa5d980
 22880 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22880 ms  0x6c80 privk:0x7f6261779020::7f6261779020  60 55 f1 6d                                      `U.m
 22880 ms  0x6c80 privk:0x7f6261779020::7f6261779020  e5 e5 e5 e5                                      ....
 22880 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22880 ms  0x6c80 privk:0x7f624d9ac020::7f624d9ac020  80 53 f1 6d                                      .S.m
 22880 ms  0x6c80 privk:0x7f624d9ac020::7f624d9ac020  e5 e5 e5 e5                                      ....
 22881 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22881 ms  0x6c80 privk:0x7f624ad91020::7f624ad91020  a0 5b f1 6d                                      .[.m
 22881 ms  0x6c80 privk:0x7f624ad91020::7f624ad91020  e5 e5 e5 e5                                      ....
 22881 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22881 ms  0x6c80 privk:0x7f624ad8f020::7f624ad8f020  c0 59 f1 6d                                      .Y.m
 22881 ms  0x6c80 privk:0x7f624ad8f020::7f624ad8f020  e5 e5 e5 e5                                      ....
 22881 ms  0x6c80 PR_Close()
 22881 ms  0x6c80 fd:0x7f62400ba7c0
 22881 ms     | 0x6c80 PK11_Encrypt()
 22881 ms     | 0x6c80 symkey:0x7f624aa5d680
 22881 ms  0x6c80 PR_Close()
 22881 ms  0x6c80 fd:0x7f624b1e52b0
 22881 ms     | 0x6c80 PK11_Encrypt()
 22881 ms     | 0x6c80 symkey:0x7f624aa5d080
 22893 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22893 ms  0x6c80 privk:0x7f624d948020::7f624d948020  a0 51 f1 6d                                      .Q.m
 22893 ms  0x6c80 privk:0x7f624d948020::7f624d948020  e5 e5 e5 e5                                      ....
 22893 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22893 ms  0x6c80 privk:0x7f624d7e1020::7f624d7e1020  60 0f de 6d                                      `..m
 22893 ms  0x6c80 privk:0x7f624d7e1020::7f624d7e1020  e5 e5 e5 e5                                      ....
 22893 ms  0x6c80 PR_Close()
 22893 ms  0x6c80 fd:0x7f624b1e5310
 22893 ms     | 0x6c80 PK11_Encrypt()
 22893 ms     | 0x6c80 symkey:0x7f626d268680
 22900 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22900 ms  0x6c80 privk:0x7f624ad9a020::7f624ad9a020  00 06 de 6d                                      ...m
 22900 ms  0x6c80 privk:0x7f624ad9a020::7f624ad9a020  e5 e5 e5 e5                                      ....
 22900 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22900 ms  0x6c80 privk:0x7f624ad98020::7f624ad98020  20 04 de 6d                                       ..m
 22900 ms  0x6c80 privk:0x7f624ad98020::7f624ad98020  e5 e5 e5 e5                                      ....
 22900 ms  0x6c80 PR_Close()
 22900 ms  0x6c80 fd:0x7f624b1e54c0
 22900 ms     | 0x6c80 PK11_Encrypt()
 22900 ms     | 0x6c80 symkey:0x7f624aa5df00
 22991 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22991 ms  0x6c80 privk:0x7f624ad9f020::7f624ad9f020  c0 c4 2a 6d                                      ..*m
 22993 ms  0x6c80 privk:0x7f624ad9f020::7f624ad9f020  e5 e5 e5 e5                                      ....
 22993 ms  0x6c80 SECKEY_DestroyPrivateKey()
 22993 ms  0x6c80 privk:0x7f624ad9d020::7f624ad9d020  f0 db 90 6a                                      ...j
 22993 ms  0x6c80 privk:0x7f624ad9d020::7f624ad9d020  e5 e5 e5 e5                                      ....
 22993 ms  0x6c80 PR_Close()
 22993 ms  0x6c80 fd:0x7f624affe070
 22994 ms     | 0x6c80 PK11_Encrypt()
 22994 ms     | 0x6c80 symkey:0x7f626610f000
 23009 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23009 ms  0x6c80 privk:0x7f624ada3820::7f624ada3820  f0 21 c8 6d                                      .!.m
 23010 ms  0x6c80 privk:0x7f624ada3820::7f624ada3820  e5 e5 e5 e5                                      ....
 23010 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23010 ms  0x6c80 privk:0x7f624ada1820::7f624ada1820  60 55 c0 6d                                      `U.m
 23010 ms  0x6c80 privk:0x7f624ada1820::7f624ada1820  e5 e5 e5 e5                                      ....
 23010 ms  0x6c80 PR_Close()
 23010 ms  0x6c80 fd:0x7f624affe100
 23010 ms     | 0x6c80 PK11_Encrypt()
 23010 ms     | 0x6c80 symkey:0x7f624aa5e280
 23017 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23017 ms  0x6c80 privk:0x7f624ada8020::7f624ada8020  30 e3 dd 6d                                      0..m
 23018 ms  0x6c80 privk:0x7f624ada8020::7f624ada8020  e5 e5 e5 e5                                      ....
 23018 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23018 ms  0x6c80 privk:0x7f624ada6020::7f624ada6020  60 2a c8 6d                                      `*.m
 23018 ms  0x6c80 privk:0x7f624ada6020::7f624ada6020  e5 e5 e5 e5                                      ....
 23019 ms  0x6c80 PR_Close()
 23019 ms  0x6c80 fd:0x7f624af814f0
 23019 ms     | 0x6c80 PK11_Encrypt()
 23019 ms     | 0x6c80 symkey:0x7f624aa5e700
 23024 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23024 ms  0x6c80 privk:0x7f624b0d2020::7f624b0d2020  10 5f f1 6d                                      ._.m
 23025 ms  0x6c80 privk:0x7f624b0d2020::7f624b0d2020  e5 e5 e5 e5                                      ....
 23025 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23025 ms  0x6c80 privk:0x7f624b0d0020::7f624b0d0020  a0 0b de 6d                                      ...m
 23026 ms  0x6c80 privk:0x7f624b0d0020::7f624b0d0020  e5 e5 e5 e5                                      ....
 23026 ms  0x6c80 PR_Close()
 23026 ms  0x6c80 fd:0x7f624af81f40
 23026 ms     | 0x6c80 PK11_Encrypt()
 23026 ms     | 0x6c80 symkey:0x7f624aa5ec80
 23029 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23029 ms  0x6c80 privk:0x7f624b036020::7f624b036020  10 0a de 6d                                      ...m
 23030 ms  0x6c80 privk:0x7f624b036020::7f624b036020  e5 e5 e5 e5                                      ....
 23030 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23030 ms  0x6c80 privk:0x7f624adaa820::7f624adaa820  30 08 de 6d                                      0..m
 23030 ms  0x6c80 privk:0x7f624adaa820::7f624adaa820  e5 e5 e5 e5                                      ....
 23030 ms  0x6c80 PR_Close()
 23030 ms  0x6c80 fd:0x7f624af815b0
 23031 ms     | 0x6c80 PK11_Encrypt()
 23031 ms     | 0x6c80 symkey:0x7f624aa5e980
 23064 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23064 ms  0x6c80 privk:0x7f624b0e0820::7f624b0e0820  40 12 f3 6d                                      @..m
 23064 ms  0x6c80 privk:0x7f624b0e0820::7f624b0e0820  e5 e5 e5 e5                                      ....
 23065 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23065 ms  0x6c80 privk:0x7f624b0de020::7f624b0de020  60 10 f3 6d                                      `..m
 23065 ms  0x6c80 privk:0x7f624b0de020::7f624b0de020  e5 e5 e5 e5                                      ....
 23066 ms  0x6c80 PR_Close()
 23066 ms  0x6c80 fd:0x7f624affea30
 23066 ms     | 0x6c80 PK11_Encrypt()
 23066 ms     | 0x6c80 symkey:0x7f624d7fc380
 23067 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23067 ms  0x6c80 privk:0x7f624b0ea820::7f624b0ea820  20 1e f3 6d                                       ..m
 23068 ms  0x6c80 privk:0x7f624b0ea820::7f624b0ea820  e5 e5 e5 e5                                      ....
 23068 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23068 ms  0x6c80 privk:0x7f624b0e8820::7f624b0e8820  60 1a f3 6d                                      `..m
 23068 ms  0x6c80 privk:0x7f624b0e8820::7f624b0e8820  e5 e5 e5 e5                                      ....
 23073 ms  0x6c80 PR_Close()
 23073 ms  0x6c80 fd:0x7f624affe5b0
 23073 ms     | 0x6c80 PK11_Encrypt()
 23073 ms     | 0x6c80 symkey:0x7f624a9ba380
 23081 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23081 ms  0x6c80 privk:0x7f624b0e5820::7f624b0e5820  e0 17 f3 6d                                      ...m
 23081 ms  0x6c80 privk:0x7f624b0e5820::7f624b0e5820  e5 e5 e5 e5                                      ....
 23081 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23081 ms  0x6c80 privk:0x7f624b0e3820::7f624b0e3820  20 14 f3 6d                                       ..m
 23081 ms  0x6c80 privk:0x7f624b0e3820::7f624b0e3820  e5 e5 e5 e5                                      ....
 23082 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23082 ms  0x6c80 privk:0x7f624adcf020::7f624adcf020  80 98 f3 6d                                      ...m
 23082 ms  0x6c80 privk:0x7f624adcf020::7f624adcf020  e5 e5 e5 e5                                      ....
 23082 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23082 ms  0x6c80 privk:0x7f6266302820::7f6266302820  a0 96 f3 6d                                      ...m
 23082 ms  0x6c80 privk:0x7f6266302820::7f6266302820  e5 e5 e5 e5                                      ....
 23083 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23083 ms  0x6c80 privk:0x7f624b457020::7f624b457020  40 92 f3 6d                                      @..m
 23083 ms  0x6c80 privk:0x7f624b457020::7f624b457020  e5 e5 e5 e5                                      ....
 23083 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23083 ms  0x6c80 privk:0x7f624b3c1020::7f624b3c1020  60 90 f3 6d                                      `..m
 23083 ms  0x6c80 privk:0x7f624b3c1020::7f624b3c1020  e5 e5 e5 e5                                      ....
 23083 ms  0x6c80 PR_Close()
 23083 ms  0x6c80 fd:0x7f624affe610
 23083 ms     | 0x6c80 PK11_Encrypt()
 23083 ms     | 0x6c80 symkey:0x7f624a9ba880
 23084 ms  0x6c80 PR_Close()
 23084 ms  0x6c80 fd:0x7f624af81b20
 23084 ms     | 0x6c80 PK11_Encrypt()
 23084 ms     | 0x6c80 symkey:0x7f624a9baf80
 23084 ms  0x6c80 PR_Close()
 23084 ms  0x6c80 fd:0x7f624affe4f0
 23084 ms     | 0x6c80 PK11_Encrypt()
 23084 ms     | 0x6c80 symkey:0x7f624a9ba080
 23085 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23085 ms  0x6c80 privk:0x7f624d71d020::7f624d71d020  60 95 f3 6d                                      `..m
 23085 ms  0x6c80 privk:0x7f624d71d020::7f624d71d020  e5 e5 e5 e5                                      ....
 23085 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23085 ms  0x6c80 privk:0x7f624d71b020::7f624d71b020  80 93 f3 6d                                      ...m
 23086 ms  0x6c80 privk:0x7f624d71b020::7f624d71b020  e5 e5 e5 e5                                      ....
 23086 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23086 ms  0x6c80 privk:0x7f624add3820::7f624add3820  f0 9b f3 6d                                      ...m
 23086 ms  0x6c80 privk:0x7f624add3820::7f624add3820  e5 e5 e5 e5                                      ....
 23086 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23086 ms  0x6c80 privk:0x7f624add1820::7f624add1820  c0 99 f3 6d                                      ...m
 23086 ms  0x6c80 privk:0x7f624add1820::7f624add1820  e5 e5 e5 e5                                      ....
 23086 ms  0x6c80 PR_Close()
 23086 ms  0x6c80 fd:0x7f624af81a00
 23086 ms     | 0x6c80 PK11_Encrypt()
 23086 ms     | 0x6c80 symkey:0x7f624a9bb280
 23087 ms  0x6c80 PR_Close()
 23087 ms  0x6c80 fd:0x7f624af81610
 23087 ms     | 0x6c80 PK11_Encrypt()
 23087 ms     | 0x6c80 symkey:0x7f624a9bac80
 23088 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23088 ms  0x6c80 privk:0x7f624ade1820::7f624ade1820  50 16 f4 6d                                      P..m
 23089 ms  0x6c80 privk:0x7f624ade1820::7f624ade1820  e5 e5 e5 e5                                      ....
 23089 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23089 ms  0x6c80 privk:0x7f624addf820::7f624addf820  20 14 f4 6d                                       ..m
 23089 ms  0x6c80 privk:0x7f624addf820::7f624addf820  e5 e5 e5 e5                                      ....
 23089 ms  0x6c80 PR_Close()
 23089 ms  0x6c80 fd:0x7f624b1fa580
 23089 ms     | 0x6c80 PK11_Encrypt()
 23089 ms     | 0x6c80 symkey:0x7f624a9bb700
 23096 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23096 ms  0x6c80 privk:0x7f624addd020::7f624addd020  e0 12 f4 6d                                      ...m
 23096 ms  0x6c80 privk:0x7f624addd020::7f624addd020  e5 e5 e5 e5                                      ....
 23096 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23096 ms  0x6c80 privk:0x7f624adda820::7f624adda820  00 11 f4 6d                                      ...m
 23096 ms  0x6c80 privk:0x7f624adda820::7f624adda820  e5 e5 e5 e5                                      ....
 23096 ms  0x6c80 PR_Close()
 23096 ms  0x6c80 fd:0x7f624b1e5370
 23096 ms     | 0x6c80 PK11_Encrypt()
 23096 ms     | 0x6c80 symkey:0x7f624a9bb880
           /* TID 0x6c88 */
 23115 ms  0x6c88 PR_Close()
 23115 ms  0x6c88 fd:0x7f62400ba0d0
           /* TID 0x6c80 */
 23118 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23118 ms  0x6c80 privk:0x7f624add8020::7f624add8020  60 9f f3 6d                                      `..m
 23119 ms  0x6c80 privk:0x7f624add8020::7f624add8020  e5 e5 e5 e5                                      ....
 23119 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23119 ms  0x6c80 privk:0x7f624add6020::7f624add6020  80 9d f3 6d                                      ...m
 23119 ms  0x6c80 privk:0x7f624add6020::7f624add6020  e5 e5 e5 e5                                      ....
 23119 ms  0x6c80 PR_Close()
 23119 ms  0x6c80 fd:0x7f624af81ac0
 23119 ms     | 0x6c80 PK11_Encrypt()
 23119 ms     | 0x6c80 symkey:0x7f624aa5db00
 23120 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23120 ms  0x6c80 privk:0x7f624ade6020::7f624ade6020  c0 19 f4 6d                                      ...m
 23120 ms  0x6c80 privk:0x7f624ade6020::7f624ade6020  e5 e5 e5 e5                                      ....
 23120 ms  0x6c80 SECKEY_DestroyPrivateKey()
 23120 ms  0x6c80 privk:0x7f624ade4020::7f624ade4020  e0 17 f4 6d                                      ...m
 23120 ms  0x6c80 privk:0x7f624ade4020::7f624ade4020  e5 e5 e5 e5                                      ....
 23121 ms  0x6c80 PR_Close()
 23121 ms  0x6c80 fd:0x7f624affe040
 23121 ms     | 0x6c80 PK11_Encrypt()
 23121 ms     | 0x6c80 symkey:0x7f624ad3d200
           /* TID 0x6c88 */
 23175 ms  0x6c88 PR_Close()
 23175 ms  0x6c88 fd:0x7f62400ba130
           /* TID 0x6c80 */
 23312 ms  0x6c80 PR_Close()
 23312 ms  0x6c80 fd:0x7f626cbb2a60
 23313 ms  0x6c80 PR_Close()
 23313 ms  0x6c80 fd:0x7f6268c86910
 23313 ms     | 0x6c80 PK11_Encrypt()
 23313 ms     | 0x6c80 symkey:0x7f626df0d980
 23314 ms  0x6c80 PR_Close()
 23314 ms  0x6c80 fd:0x7f626583ae20
 23314 ms     | 0x6c80 PK11_Encrypt()
 23314 ms     | 0x6c80 symkey:0x7f626ddd1d80
           /* TID 0x6c88 */
 23402 ms  0x6c88 PR_Close()
 23402 ms  0x6c88 fd:0x7f62400ba0d0
 23429 ms  0x6c88 PR_Close()
 23429 ms  0x6c88 fd:0x7f62400ba0d0
 23445 ms  0x6c88 PR_Close()
 23445 ms  0x6c88 fd:0x7f62400ba0d0
           /* TID 0x6c80 */
 23448 ms  0x6c80 SECKEY_CreateECPrivateKey()
 23448 ms  0x6c80 cx:0x7f6240058c08
 23449 ms     | 0x6c80 EC_ValidatePublicKey()
 23449 ms     | 0x6c80 ret:0x0
 23449 ms  0x6c80 ret:0x7f624a94a820::7f624a94a820  60 a5 17 66                                      `..f
 23449 ms  0x6c80 SECKEY_CreateECPrivateKey()
 23449 ms  0x6c80 cx:0x7f6240058c08
 23450 ms     | 0x6c80 EC_ValidatePublicKey()
 23451 ms     | 0x6c80 ret:0x0
 23451 ms  0x6c80 ret:0x7f624a94d820::7f624a94d820  70 5e 3f 66                                      p^?f
           /* TID 0x6c88 */
 23668 ms  0x6c88 PR_Close()
 23668 ms  0x6c88 fd:0x7f62400ba130
 23684 ms  0x6c88 PR_Close()
 23684 ms  0x6c88 fd:0x7f62400ba130
 23710 ms  0x6c88 PR_Close()
 23710 ms  0x6c88 fd:0x7f62400ba1f0
 23716 ms  0x6c88 PR_Close()
 23716 ms  0x6c88 fd:0x7f62400ba130
 23742 ms  0x6c88 PR_Close()
 23742 ms  0x6c88 fd:0x7f62400ba1f0
 23745 ms  0x6c88 PR_Close()
 23745 ms  0x6c88 fd:0x7f62400ba1f0
 23751 ms  0x6c88 PR_Close()
 23751 ms  0x6c88 fd:0x7f62400ba130
           /* TID 0x6c80 */
 23781 ms  0x6c80 PK11_Encrypt()
 23781 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 23842 ms  0x6c88 PR_Close()
 23842 ms  0x6c88 fd:0x7f62400ba400
 23899 ms  0x6c88 PR_Close()
 23899 ms  0x6c88 fd:0x7f62400ba190
 23978 ms  0x6c88 PR_Close()
 23978 ms  0x6c88 fd:0x7f62400ba190
           /* TID 0x6c80 */
 23996 ms  0x6c80 PK11_Encrypt()
 23996 ms  0x6c80 symkey:0x7f626eee7380
           /* TID 0x6c88 */
 24011 ms  0x6c88 PR_Close()
 24011 ms  0x6c88 fd:0x7f62400ba2b0
 24021 ms  0x6c88 PR_Close()
 24021 ms  0x6c88 fd:0x7f62400ba940
 24024 ms  0x6c88 PR_Close()
 24024 ms  0x6c88 fd:0x7f62400ba940
 24043 ms  0x6c88 PR_Close()
 24043 ms  0x6c88 fd:0x7f62400ba730
           /* TID 0x6c80 */
 24088 ms  SECKEY_ECParamsToKeySize()
 24088 ms  0x6c80 ret:0x100
 24088 ms  0x6c80 SECKEY_CreateECPrivateKey()
 24088 ms  0x6c80 cx:0x7f624d5a7da8
 24088 ms     | 0x6c80 EC_ValidatePublicKey()
 24090 ms     | 0x6c80 ret:0x0
 24090 ms  0x6c80 ret:0x7f624a95b820::7f624a95b820  80 ad 9e 69                                      ...i
 24090 ms  0x6c80 PK11_PubDeriveWithKDF()
 24090 ms  0x6c80 seckey:0x7f624a95b820
 24090 ms     | 0x6c80 EC_ValidatePublicKey()
 24092 ms     | 0x6c80 ret:0x0
 24093 ms  0x6c80 ret:0x7f626d268800
 24093 ms  0x6c80 PK11_DeriveWithFlags()
 24093 ms  0x6c80 basekey:0x7f626d268800
 24093 ms     | 0x6c80 PK11_DeriveWithTemplate()
 24093 ms  0x6c80 ret:0x7f626d29c400
 24093 ms  0x6c80 PK11_Derive()
 24093 ms  0x6c80 basekey:0x7f626d29c400
 24093 ms     | 0x6c80 PK11_DeriveWithTemplate()
 24093 ms  0x6c80 ret:0x7f626df0d000
 24093 ms  0x6c80 SECKEY_DestroyPrivateKey()
 24093 ms  0x6c80 privk:0x7f624a95b820::7f624a95b820  80 ad 9e 69                                      ...i
 24093 ms  0x6c80 privk:0x7f624a95b820::7f624a95b820  e5 e5 e5 e5                                      ....
 24093 ms  0x6c80 PK11_Encrypt()
 24093 ms  0x6c80 symkey:0x7f6261bef580
 24104 ms  0x6c80 SSL_AuthCertificateComplete()
 24104 ms  0x6c80 fd:0x7f624b519f70
 24104 ms  0x6c80 err:0x0
           /* TID 0x6c88 */
 24239 ms  0x6c88 PR_Close()
 24239 ms  0x6c88 fd:0x7f62400ba220
           /* TID 0x6c80 */
 24312 ms  0x6c80 PR_Close()
 24312 ms  0x6c80 fd:0x7f624b3e6a00
 24312 ms     | 0x6c80 PK11_Encrypt()
 24312 ms     | 0x6c80 symkey:0x7f626eee7800
 24313 ms  0x6c80 PR_Close()
 24313 ms  0x6c80 fd:0x7f624b3e6730
           /* TID 0x6c88 */
 24335 ms  0x6c88 PR_Close()
 24335 ms  0x6c88 fd:0x7f624af81520
 24343 ms  0x6c88 PR_Close()
 24343 ms  0x6c88 fd:0x7f624af815b0
 24354 ms  0x6c88 PR_Close()
 24354 ms  0x6c88 fd:0x7f624af81ac0
           /* TID 0x6c80 */
 24457 ms  0x6c80 SECKEY_DestroyPrivateKey()
 24457 ms  0x6c80 privk:0x7f624b467020::7f624b467020  20 de cf 68                                       ..h
 24457 ms  0x6c80 privk:0x7f624b467020::7f624b467020  e5 e5 e5 e5                                      ....
 24457 ms  0x6c80 SECKEY_DestroyPrivateKey()
 24457 ms  0x6c80 privk:0x7f624b433020::7f624b433020  10 af 1b 66                                      ...f
 24458 ms  0x6c80 privk:0x7f624b433020::7f624b433020  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 24469 ms  0x6c88 PR_Close()
 24469 ms  0x6c88 fd:0x7f62400ba460
 24469 ms  0x6c88 PR_Close()
 24469 ms  0x6c88 fd:0x7f624af81490
 24469 ms  0x6c88 PR_Close()
 24469 ms  0x6c88 fd:0x7f624af81ac0
 24469 ms  0x6c88 PR_Close()
 24469 ms  0x6c88 fd:0x7f624af81b80
 24469 ms  0x6c88 PR_Close()
 24469 ms  0x6c88 fd:0x7f624af81be0
 24469 ms  0x6c88 PR_Close()
 24469 ms  0x6c88 fd:0x7f624af81c40
 24469 ms  0x6c88 PR_Close()
 24469 ms  0x6c88 fd:0x7f624af81ca0
 24469 ms  0x6c88 PR_Close()
 24469 ms  0x6c88 fd:0x7f624af81d00
 24469 ms  0x6c88 PR_Close()
 24469 ms  0x6c88 fd:0x7f624af81d60
 24469 ms  0x6c88 PR_Close()
 24469 ms  0x6c88 fd:0x7f624af81dc0
 24470 ms  0x6c88 PR_Close()
 24470 ms  0x6c88 fd:0x7f624af81e20
 24470 ms  0x6c88 PR_Close()
 24470 ms  0x6c88 fd:0x7f624af81e80
 24470 ms  0x6c88 PR_Close()
 24470 ms  0x6c88 fd:0x7f624af81ee0
 24470 ms  0x6c88 PR_Close()
 24470 ms  0x6c88 fd:0x7f624af81f40
 24470 ms  0x6c88 PR_Close()
 24470 ms  0x6c88 fd:0x7f624af81fa0
 24470 ms  0x6c88 PR_Close()
 24470 ms  0x6c88 fd:0x7f624affe040
 24474 ms  0x6c88 PR_Close()
 24474 ms  0x6c88 fd:0x7f62400ba460
 24474 ms  0x6c88 PR_Close()
 24474 ms  0x6c88 fd:0x7f624af81490
 24474 ms  0x6c88 PR_Close()
 24474 ms  0x6c88 fd:0x7f624af81ac0
 24474 ms  0x6c88 PR_Close()
 24474 ms  0x6c88 fd:0x7f624af81b80
 24474 ms  0x6c88 PR_Close()
 24474 ms  0x6c88 fd:0x7f624af81be0
 24474 ms  0x6c88 PR_Close()
 24474 ms  0x6c88 fd:0x7f624af81c40
 24474 ms  0x6c88 PR_Close()
 24474 ms  0x6c88 fd:0x7f624af81ca0
 24474 ms  0x6c88 PR_Close()
 24474 ms  0x6c88 fd:0x7f624af81d00
 24474 ms  0x6c88 PR_Close()
 24474 ms  0x6c88 fd:0x7f624af81d60
 24474 ms  0x6c88 PR_Close()
 24474 ms  0x6c88 fd:0x7f624af81dc0
 24474 ms  0x6c88 PR_Close()
 24474 ms  0x6c88 fd:0x7f624af81e20
 24474 ms  0x6c88 PR_Close()
 24474 ms  0x6c88 fd:0x7f624af81e80
 24474 ms  0x6c88 PR_Close()
 24474 ms  0x6c88 fd:0x7f624af81ee0
 24474 ms  0x6c88 PR_Close()
 24474 ms  0x6c88 fd:0x7f624af81f40
 24474 ms  0x6c88 PR_Close()
 24474 ms  0x6c88 fd:0x7f624af81fa0
 24474 ms  0x6c88 PR_Close()
 24474 ms  0x6c88 fd:0x7f624affe040
 24474 ms  0x6c88 PR_Close()
 24474 ms  0x6c88 fd:0x7f624affe0a0
 24474 ms  0x6c88 PR_Close()
 24474 ms  0x6c88 fd:0x7f624affe100
 24475 ms  0x6c88 PR_Close()
 24475 ms  0x6c88 fd:0x7f624affe160
 24475 ms  0x6c88 PR_Close()
 24475 ms  0x6c88 fd:0x7f624affe1c0
 24475 ms  0x6c88 PR_Close()
 24475 ms  0x6c88 fd:0x7f624affe220
 24475 ms  0x6c88 PR_Close()
 24475 ms  0x6c88 fd:0x7f624affe280
 24475 ms  0x6c88 PR_Close()
 24475 ms  0x6c88 fd:0x7f624affe2e0
 24475 ms  0x6c88 PR_Close()
 24475 ms  0x6c88 fd:0x7f624affe340
 24475 ms  0x6c88 PR_Close()
 24475 ms  0x6c88 fd:0x7f624affe3a0
 24475 ms  0x6c88 PR_Close()
 24475 ms  0x6c88 fd:0x7f624affe400
 24475 ms  0x6c88 PR_Close()
 24475 ms  0x6c88 fd:0x7f624affe460
 24475 ms  0x6c88 PR_Close()
 24475 ms  0x6c88 fd:0x7f624affe4c0
 24475 ms  0x6c88 PR_Close()
 24475 ms  0x6c88 fd:0x7f624affe520
 24475 ms  0x6c88 PR_Close()
 24475 ms  0x6c88 fd:0x7f624affe580
 24475 ms  0x6c88 PR_Close()
 24475 ms  0x6c88 fd:0x7f624affe5e0
 24475 ms  0x6c88 PR_Close()
 24475 ms  0x6c88 fd:0x7f624affe640
 24475 ms  0x6c88 PR_Close()
 24475 ms  0x6c88 fd:0x7f624affe6a0
 24475 ms  0x6c88 PR_Close()
 24475 ms  0x6c88 fd:0x7f624affe730
 24475 ms  0x6c88 PR_Close()
 24475 ms  0x6c88 fd:0x7f626ee5d550
 24475 ms  0x6c88 PR_Close()
 24475 ms  0x6c88 fd:0x7f624affe790
 24480 ms  0x6c88 PR_Close()
 24480 ms  0x6c88 fd:0x7f624affe7f0
 24480 ms  0x6c88 PR_Close()
 24480 ms  0x6c88 fd:0x7f624affe850
 24480 ms  0x6c88 PR_Close()
 24480 ms  0x6c88 fd:0x7f624affe8b0
 24480 ms  0x6c88 PR_Close()
 24480 ms  0x6c88 fd:0x7f624affe910
 24480 ms  0x6c88 PR_Close()
 24480 ms  0x6c88 fd:0x7f624affe970
 24528 ms  0x6c88 PR_Close()
 24528 ms  0x6c88 fd:0x7f62400ba460
 24532 ms  0x6c88 PR_Close()
 24532 ms  0x6c88 fd:0x7f62400ba1c0
           /* TID 0x6c80 */
 24773 ms  0x6c80 SSL_ImportFD()
 24773 ms  0x6c80 ret:0x7f624af81d60
 24773 ms  0x6c80 SSL_AuthCertificateHook()
 24773 ms  0x6c80 fd:0x7f624af81d60
 24773 ms  0x6c80 ret:0x0
 24773 ms  0x6c80 PR_Connect()
 24773 ms  0x6c80 fd:0x7f624af81d60
 24773 ms  0x6c80 SSL_ImportFD()
 24773 ms  0x6c80 ret:0x7f624af81d90
 24773 ms  0x6c80 SSL_AuthCertificateHook()
 24773 ms  0x6c80 fd:0x7f624af81d90
 24773 ms  0x6c80 ret:0x0
 24773 ms  0x6c80 PR_Connect()
 24773 ms  0x6c80 fd:0x7f624af81d90
 24774 ms  0x6c80 SSL_ImportFD()
 24774 ms  0x6c80 ret:0x7f624af81bb0
 24774 ms  0x6c80 SSL_AuthCertificateHook()
 24774 ms  0x6c80 fd:0x7f624af81bb0
 24774 ms  0x6c80 ret:0x0
 24774 ms  0x6c80 PR_Connect()
 24774 ms  0x6c80 fd:0x7f624af81bb0
 24774 ms  0x6c80 SSL_ImportFD()
 24774 ms  0x6c80 ret:0x7f624af81c40
 24774 ms  0x6c80 SSL_AuthCertificateHook()
 24774 ms  0x6c80 fd:0x7f624af81c40
 24774 ms  0x6c80 ret:0x0
 24774 ms  0x6c80 PR_Connect()
 24774 ms  0x6c80 fd:0x7f624af81c40
 24787 ms  0x6c80 PK11_Encrypt()
 24787 ms  0x6c80 symkey:0x7f626d281c00
           /* TID 0x6c88 */
 24803 ms  0x6c88 PR_Close()
 24803 ms  0x6c88 fd:0x7f624af816d0
 24812 ms  0x6c88 PR_Close()
 24812 ms  0x6c88 fd:0x7f624af816d0
 24827 ms  0x6c88 PR_Close()
 24827 ms  0x6c88 fd:0x7f624af81d00
           /* TID 0x6c80 */
 24831 ms  0x6c80 PK11_Encrypt()
 24831 ms  0x6c80 symkey:0x7f626f8fd100
 24852 ms  0x6c80 SSL_ImportFD()
 24852 ms  0x6c80 ret:0x7f624affe310
 24852 ms  0x6c80 SSL_AuthCertificateHook()
 24852 ms  0x6c80 fd:0x7f624affe310
 24852 ms  0x6c80 ret:0x0
 24852 ms  0x6c80 PR_Connect()
 24852 ms  0x6c80 fd:0x7f624affe310
 24853 ms  0x6c80 SSL_ImportFD()
 24853 ms  0x6c80 ret:0x7f624affe520
 24853 ms  0x6c80 SSL_AuthCertificateHook()
 24853 ms  0x6c80 fd:0x7f624affe520
 24853 ms  0x6c80 ret:0x0
 24853 ms  0x6c80 PR_Connect()
 24853 ms  0x6c80 fd:0x7f624affe520
           /* TID 0x6c88 */
 24889 ms  0x6c88 PR_Close()
 24889 ms  0x6c88 fd:0x7f62400ba1c0
 24948 ms  0x6c88 PR_Close()
 24948 ms  0x6c88 fd:0x7f62400ba1c0
           /* TID 0x6c80 */
 25024 ms  0x6c80 SSL_ImportFD()
 25024 ms  0x6c80 ret:0x7f624affe6a0
 25024 ms  0x6c80 SSL_AuthCertificateHook()
 25024 ms  0x6c80 fd:0x7f624affe6a0
 25024 ms  0x6c80 ret:0x0
 25024 ms  0x6c80 PR_Connect()
 25024 ms  0x6c80 fd:0x7f624affe6a0
 25025 ms  0x6c80 SSL_ImportFD()
 25025 ms  0x6c80 ret:0x7f624af81a90
 25025 ms  0x6c80 SSL_AuthCertificateHook()
 25025 ms  0x6c80 fd:0x7f624af81a90
 25025 ms  0x6c80 ret:0x0
 25025 ms  0x6c80 PR_Connect()
 25025 ms  0x6c80 fd:0x7f624af81a90
 25026 ms  0x6c80 SSL_ImportFD()
 25026 ms  0x6c80 ret:0x7f624affea60
 25026 ms  0x6c80 SSL_AuthCertificateHook()
 25026 ms  0x6c80 fd:0x7f624affea60
 25026 ms  0x6c80 ret:0x0
 25026 ms  0x6c80 PR_Connect()
 25026 ms  0x6c80 fd:0x7f624affea60
 25027 ms  0x6c80 SSL_ImportFD()
 25027 ms  0x6c80 ret:0x7f624affe970
 25027 ms  0x6c80 SSL_AuthCertificateHook()
 25027 ms  0x6c80 fd:0x7f624affe970
 25027 ms  0x6c80 ret:0x0
 25027 ms  0x6c80 PR_Connect()
 25027 ms  0x6c80 fd:0x7f624affe970
 25061 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25061 ms  0x6c80 cx:0x7f624afec3e8
 25063 ms     | 0x6c80 EC_ValidatePublicKey()
 25063 ms     | 0x6c80 ret:0x0
 25063 ms  0x6c80 ret:0x7f624abc6820::7f624abc6820  f0 db 90 6a                                      ...j
 25063 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25063 ms  0x6c80 cx:0x7f624afec3e8
 25065 ms     | 0x6c80 EC_ValidatePublicKey()
 25070 ms     | 0x6c80 ret:0x0
 25070 ms  0x6c80 ret:0x7f624abcc020::7f624abcc020  10 cf 96 6a                                      ...j
 25085 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25085 ms  0x6c80 cx:0x7f624afefe68
 25087 ms     | 0x6c80 EC_ValidatePublicKey()
 25087 ms     | 0x6c80 ret:0x0
 25087 ms  0x6c80 ret:0x7f624abcf020::7f624abcf020  90 e2 29 6d                                      ..)m
 25087 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25087 ms  0x6c80 cx:0x7f624afefe68
 25092 ms     | 0x6c80 EC_ValidatePublicKey()
 25094 ms     | 0x6c80 ret:0x0
 25094 ms  0x6c80 ret:0x7f624abd1020::7f624abd1020  20 e9 29 6d                                       .)m
 25095 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25095 ms  0x6c80 cx:0x7f624afec588
 25096 ms     | 0x6c80 EC_ValidatePublicKey()
 25096 ms     | 0x6c80 ret:0x0
 25096 ms  0x6c80 ret:0x7f624abd3820::7f624abd3820  30 c8 2a 6d                                      0.*m
 25096 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25096 ms  0x6c80 cx:0x7f624afec588
 25097 ms     | 0x6c80 EC_ValidatePublicKey()
 25099 ms     | 0x6c80 ret:0x0
 25099 ms  0x6c80 ret:0x7f624abd6020::7f624abd6020  60 cf 2a 6d                                      `.*m
 25099 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25099 ms  0x6c80 cx:0x7f624afec728
 25100 ms     | 0x6c80 EC_ValidatePublicKey()
 25100 ms     | 0x6c80 ret:0x0
 25100 ms  0x6c80 ret:0x7f624abd8820::7f624abd8820  00 51 c0 6d                                      .Q.m
 25100 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25100 ms  0x6c80 cx:0x7f624afec728
 25101 ms     | 0x6c80 EC_ValidatePublicKey()
 25103 ms     | 0x6c80 ret:0x0
 25103 ms  0x6c80 ret:0x7f624abda820::7f624abda820  f0 5b c0 6d                                      .[.m
 25103 ms  0x6c80 SSL_ImportFD()
 25103 ms  0x6c80 ret:0x7f624b1e5370
 25103 ms  0x6c80 SSL_AuthCertificateHook()
 25103 ms  0x6c80 fd:0x7f624b1e5370
 25104 ms  0x6c80 ret:0x0
 25104 ms  0x6c80 PR_Connect()
 25104 ms  0x6c80 fd:0x7f624b1e5370
 25104 ms  0x6c80 SSL_ImportFD()
 25104 ms  0x6c80 ret:0x7f624b1e5790
 25104 ms  0x6c80 SSL_AuthCertificateHook()
 25104 ms  0x6c80 fd:0x7f624b1e5790
 25104 ms  0x6c80 ret:0x0
 25104 ms  0x6c80 PR_Connect()
 25104 ms  0x6c80 fd:0x7f624b1e5790
 25147 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25147 ms  0x6c80 cx:0x7f624b32d588
 25148 ms     | 0x6c80 EC_ValidatePublicKey()
 25148 ms     | 0x6c80 ret:0x0
 25148 ms  0x6c80 ret:0x7f624abdd820::7f624abdd820  f0 21 c8 6d                                      .!.m
 25149 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25149 ms  0x6c80 cx:0x7f624b32d588
 25150 ms     | 0x6c80 EC_ValidatePublicKey()
 25154 ms     | 0x6c80 ret:0x0
 25154 ms  0x6c80 ret:0x7f624ad8d820::7f624ad8d820  20 5e c0 6d                                       ^.m
           /* TID 0x6c88 */
 25177 ms  0x6c88 PR_Close()
 25177 ms  0x6c88 fd:0x7f624af81490
           /* TID 0x6c80 */
 25178 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25178 ms  0x6c80 cx:0x7f624b32e908
 25180 ms     | 0x6c80 EC_ValidatePublicKey()
 25180 ms     | 0x6c80 ret:0x0
 25180 ms  0x6c80 ret:0x7f624ad90020::7f624ad90020  40 b2 c8 68                                      @..h
 25180 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25180 ms  0x6c80 cx:0x7f624b32e908
 25181 ms     | 0x6c80 EC_ValidatePublicKey()
 25185 ms     | 0x6c80 ret:0x0
 25185 ms  0x6c80 ret:0x7f624ad92020::7f624ad92020  70 29 c8 6d                                      p).m
 25202 ms  0x6c80 PR_Close()
 25202 ms  0x6c80 fd:0x7f6240371a90
 25202 ms  0x6c80 SSL_ImportFD()
 25202 ms  0x6c80 ret:0x7f624affe2e0
 25202 ms  0x6c80 SSL_AuthCertificateHook()
 25202 ms  0x6c80 fd:0x7f624affe2e0
 25202 ms  0x6c80 ret:0x0
 25202 ms  0x6c80 PR_Connect()
 25202 ms  0x6c80 fd:0x7f624affe2e0
 25314 ms  0x6c80 PR_Close()
 25314 ms  0x6c80 fd:0x7f624b519f70
 25314 ms     | 0x6c80 PK11_Encrypt()
 25314 ms     | 0x6c80 symkey:0x7f6261bef580
 25315 ms  0x6c80 PR_Close()
 25315 ms  0x6c80 fd:0x7f6240371550
 25315 ms     | 0x6c80 PK11_Encrypt()
 25315 ms     | 0x6c80 symkey:0x7f624b231300
 25330 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25330 ms  0x6c80 cx:0x7f624b32f128
 25332 ms     | 0x6c80 EC_ValidatePublicKey()
 25332 ms     | 0x6c80 ret:0x0
 25332 ms  0x6c80 ret:0x7f624ad93820::7f624ad93820  70 2e c8 6d                                      p..m
 25332 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25332 ms  0x6c80 cx:0x7f624b32f128
 25334 ms     | 0x6c80 EC_ValidatePublicKey()
 25340 ms     | 0x6c80 ret:0x0
 25340 ms  0x6c80 ret:0x7f624ad95820::7f624ad95820  50 d1 d7 6d                                      P..m
 25347 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25347 ms  0x6c80 cx:0x7f624b32eaa8
 25348 ms     | 0x6c80 EC_ValidatePublicKey()
 25348 ms     | 0x6c80 ret:0x0
 25348 ms  0x6c80 ret:0x7f624ad98020::7f624ad98020  90 d2 d7 6d                                      ...m
 25348 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25348 ms  0x6c80 cx:0x7f624b32eaa8
 25350 ms     | 0x6c80 EC_ValidatePublicKey()
 25357 ms     | 0x6c80 ret:0x0
 25357 ms  0x6c80 ret:0x7f624ad9a020::7f624ad9a020  c0 d4 d7 6d                                      ...m
 25359 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25359 ms  0x6c80 cx:0x7f624b32f2c8
 25360 ms     | 0x6c80 EC_ValidatePublicKey()
 25360 ms     | 0x6c80 ret:0x0
 25360 ms  0x6c80 ret:0x7f624ad9d820::7f624ad9d820  00 d6 d7 6d                                      ...m
 25360 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25360 ms  0x6c80 cx:0x7f624b32f2c8
 25361 ms     | 0x6c80 EC_ValidatePublicKey()
 25364 ms     | 0x6c80 ret:0x0
 25364 ms  0x6c80 ret:0x7f624ad9f820::7f624ad9f820  e0 d7 d7 6d                                      ...m
 25377 ms  SECKEY_ECParamsToKeySize()
 25377 ms  0x6c80 ret:0xff
 25377 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25377 ms  0x6c80 cx:0x7f624afec3e8
 25377 ms     | 0x6c80 EC_ValidatePublicKey()
 25377 ms     | 0x6c80 ret:0x0
 25377 ms  0x6c80 ret:0x7f624ada3020::7f624ada3020  a0 db d7 6d                                      ...m
 25377 ms  0x6c80 PK11_PubDeriveWithKDF()
 25377 ms  0x6c80 seckey:0x7f624ada3020
 25377 ms     | 0x6c80 EC_ValidatePublicKey()
 25377 ms     | 0x6c80 ret:0x0
 25378 ms  0x6c80 ret:0x7f626ee48c80
 25378 ms  0x6c80 PK11_DeriveWithFlags()
 25378 ms  0x6c80 basekey:0x7f626ee48c80
 25378 ms     | 0x6c80 PK11_DeriveWithTemplate()
 25378 ms  0x6c80 ret:0x7f6240223b00
 25378 ms  0x6c80 PK11_Derive()
 25378 ms  0x6c80 basekey:0x7f6240223b00
 25378 ms     | 0x6c80 PK11_DeriveWithTemplate()
 25378 ms  0x6c80 ret:0x7f626df0d000
 25378 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25378 ms  0x6c80 privk:0x7f624ada3020::7f624ada3020  a0 db d7 6d                                      ...m
 25378 ms  0x6c80 privk:0x7f624ada3020::7f624ada3020  e5 e5 e5 e5                                      ....
 25378 ms  0x6c80 PK11_Encrypt()
 25378 ms  0x6c80 symkey:0x7f624b230700
 25378 ms  0x6c80 SSL_AuthCertificateComplete()
 25378 ms  0x6c80 fd:0x7f624af81d60
 25378 ms  0x6c80 err:0x0
 25379 ms  0x6c80 PK11_Encrypt()
 25379 ms  0x6c80 symkey:0x7f624b230700
 25379 ms  0x6c80 PK11_Encrypt()
 25379 ms  0x6c80 symkey:0x7f624b230700
 25379 ms  0x6c80 PR_Close()
 25379 ms  0x6c80 fd:0x7f624b1e5370
 25379 ms  0x6c80 PR_Close()
 25379 ms  0x6c80 fd:0x7f624af81a90
 25380 ms  0x6c80 PR_Close()
 25380 ms  0x6c80 fd:0x7f624b1e5790
 25380 ms  0x6c80 PK11_Encrypt()
 25380 ms  0x6c80 symkey:0x7f624b230700
 25380 ms  0x6c80 PK11_Encrypt()
 25380 ms  0x6c80 symkey:0x7f624b230700
 25385 ms  0x6c80 PK11_Encrypt()
 25385 ms  0x6c80 symkey:0x7f626f8fd100
 25413 ms  SECKEY_ECParamsToKeySize()
 25413 ms  0x6c80 ret:0xff
 25413 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25413 ms  0x6c80 cx:0x7f624afefe68
 25414 ms     | 0x6c80 EC_ValidatePublicKey()
 25414 ms     | 0x6c80 ret:0x0
 25414 ms  0x6c80 ret:0x7f624ada7820::7f624ada7820  60 10 d9 6d                                      `..m
 25414 ms  0x6c80 PK11_PubDeriveWithKDF()
 25414 ms  0x6c80 seckey:0x7f624ada7820
 25414 ms     | 0x6c80 EC_ValidatePublicKey()
 25414 ms     | 0x6c80 ret:0x0
 25414 ms  0x6c80 ret:0x7f626ee48c80
 25414 ms  0x6c80 PK11_DeriveWithFlags()
 25414 ms  0x6c80 basekey:0x7f626ee48c80
 25414 ms     | 0x6c80 PK11_DeriveWithTemplate()
 25414 ms  0x6c80 ret:0x7f626d29c400
 25414 ms  0x6c80 PK11_Derive()
 25414 ms  0x6c80 basekey:0x7f626d29c400
 25414 ms     | 0x6c80 PK11_DeriveWithTemplate()
 25414 ms  0x6c80 ret:0x7f6265fe9600
 25414 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25414 ms  0x6c80 privk:0x7f624ada7820::7f624ada7820  60 10 d9 6d                                      `..m
 25414 ms  0x6c80 privk:0x7f624ada7820::7f624ada7820  e5 e5 e5 e5                                      ....
 25415 ms  0x6c80 PK11_Encrypt()
 25415 ms  0x6c80 symkey:0x7f626a90a380
 25415 ms  0x6c80 SSL_AuthCertificateComplete()
 25415 ms  0x6c80 fd:0x7f624af81c40
 25415 ms  0x6c80 err:0x0
 25415 ms  0x6c80 PK11_Encrypt()
 25415 ms  0x6c80 symkey:0x7f626a90a380
 25416 ms  0x6c80 PK11_Encrypt()
 25416 ms  0x6c80 symkey:0x7f624b230700
 25417 ms  SECKEY_ECParamsToKeySize()
 25417 ms  0x6c80 ret:0xff
 25417 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25417 ms  0x6c80 cx:0x7f624afec728
 25418 ms     | 0x6c80 EC_ValidatePublicKey()
 25418 ms     | 0x6c80 ret:0x0
 25418 ms  0x6c80 ret:0x7f624ada9820::7f624ada9820  f0 11 d9 6d                                      ...m
 25418 ms  0x6c80 PK11_PubDeriveWithKDF()
 25418 ms  0x6c80 seckey:0x7f624ada9820
 25418 ms     | 0x6c80 EC_ValidatePublicKey()
 25418 ms     | 0x6c80 ret:0x0
 25418 ms  0x6c80 ret:0x7f626ee48c80
 25418 ms  0x6c80 PK11_DeriveWithFlags()
 25418 ms  0x6c80 basekey:0x7f626ee48c80
 25418 ms     | 0x6c80 PK11_DeriveWithTemplate()
 25418 ms  0x6c80 ret:0x7f626eee7680
 25418 ms  0x6c80 PK11_Derive()
 25418 ms  0x6c80 basekey:0x7f626eee7680
 25418 ms     | 0x6c80 PK11_DeriveWithTemplate()
 25418 ms  0x6c80 ret:0x7f626d268800
 25418 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25418 ms  0x6c80 privk:0x7f624ada9820::7f624ada9820  f0 11 d9 6d                                      ...m
 25418 ms  0x6c80 privk:0x7f624ada9820::7f624ada9820  e5 e5 e5 e5                                      ....
 25419 ms  0x6c80 PK11_Encrypt()
 25419 ms  0x6c80 symkey:0x7f626eee7700
 25419 ms  0x6c80 SSL_AuthCertificateComplete()
 25419 ms  0x6c80 fd:0x7f624af81bb0
 25419 ms  0x6c80 err:0x0
 25419 ms  0x6c80 PK11_Encrypt()
 25419 ms  0x6c80 symkey:0x7f626eee7700
 25419 ms  0x6c80 PK11_Encrypt()
 25419 ms  0x6c80 symkey:0x7f624b230700
           /* TID 0x6c88 */
 25444 ms  0x6c88 PR_Close()
 25444 ms  0x6c88 fd:0x7f6240371520
           /* TID 0x6c80 */
 25466 ms  SECKEY_ECParamsToKeySize()
 25466 ms  0x6c80 ret:0xff
 25466 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25466 ms  0x6c80 cx:0x7f624b32d588
 25467 ms     | 0x6c80 EC_ValidatePublicKey()
 25467 ms     | 0x6c80 ret:0x0
 25467 ms  0x6c80 ret:0x7f624adab020::7f624adab020  f0 11 d9 6d                                      ...m
 25467 ms  0x6c80 PK11_PubDeriveWithKDF()
 25467 ms  0x6c80 seckey:0x7f624adab020
 25467 ms     | 0x6c80 EC_ValidatePublicKey()
 25467 ms     | 0x6c80 ret:0x0
 25468 ms  0x6c80 ret:0x7f626ee48c80
 25468 ms  0x6c80 PK11_DeriveWithFlags()
 25468 ms  0x6c80 basekey:0x7f626ee48c80
 25469 ms     | 0x6c80 PK11_DeriveWithTemplate()
 25469 ms  0x6c80 ret:0x7f626a721500
 25469 ms  0x6c80 PK11_Derive()
 25469 ms  0x6c80 basekey:0x7f626a721500
 25469 ms     | 0x6c80 PK11_DeriveWithTemplate()
 25469 ms  0x6c80 ret:0x7f624ad3d080
 25469 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25469 ms  0x6c80 privk:0x7f624adab020::7f624adab020  f0 11 d9 6d                                      ...m
 25469 ms  0x6c80 privk:0x7f624adab020::7f624adab020  e5 e5 e5 e5                                      ....
 25469 ms  0x6c80 PK11_Encrypt()
 25469 ms  0x6c80 symkey:0x7f626df0d880
 25470 ms  0x6c80 SSL_AuthCertificateComplete()
 25470 ms  0x6c80 fd:0x7f624affe310
 25470 ms  0x6c80 err:0x0
 25470 ms  0x6c80 PK11_Encrypt()
 25470 ms  0x6c80 symkey:0x7f626df0d880
 25471 ms  0x6c80 PK11_Encrypt()
 25471 ms  0x6c80 symkey:0x7f624b230700
 25493 ms  SECKEY_ECParamsToKeySize()
 25493 ms  0x6c80 ret:0xff
 25493 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25493 ms  0x6c80 cx:0x7f624b32e908
 25495 ms     | 0x6c80 EC_ValidatePublicKey()
 25495 ms     | 0x6c80 ret:0x0
 25495 ms  0x6c80 ret:0x7f624adce820::7f624adce820  e0 12 d9 6d                                      ...m
 25495 ms  0x6c80 PK11_PubDeriveWithKDF()
 25495 ms  0x6c80 seckey:0x7f624adce820
 25495 ms     | 0x6c80 EC_ValidatePublicKey()
 25495 ms     | 0x6c80 ret:0x0
 25500 ms  0x6c80 ret:0x7f626ee48c80
 25500 ms  0x6c80 PK11_DeriveWithFlags()
 25500 ms  0x6c80 basekey:0x7f626ee48c80
 25500 ms     | 0x6c80 PK11_DeriveWithTemplate()
 25500 ms  0x6c80 ret:0x7f624b2bc180
 25500 ms  0x6c80 PK11_Derive()
 25500 ms  0x6c80 basekey:0x7f624b2bc180
 25500 ms     | 0x6c80 PK11_DeriveWithTemplate()
 25500 ms  0x6c80 ret:0x7f624a9bbe80
 25500 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25500 ms  0x6c80 privk:0x7f624adce820::7f624adce820  e0 12 d9 6d                                      ...m
 25501 ms  0x6c80 privk:0x7f624adce820::7f624adce820  e5 e5 e5 e5                                      ....
 25501 ms  0x6c80 PK11_Encrypt()
 25501 ms  0x6c80 symkey:0x7f624ad3d100
 25501 ms  0x6c80 SSL_AuthCertificateComplete()
 25501 ms  0x6c80 fd:0x7f624affe520
 25501 ms  0x6c80 err:0x0
 25502 ms  0x6c80 PK11_Encrypt()
 25502 ms  0x6c80 symkey:0x7f624ad3d100
 25503 ms  0x6c80 PK11_Encrypt()
 25503 ms  0x6c80 symkey:0x7f624b230700
 25521 ms  0x6c80 PK11_Encrypt()
 25521 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 25582 ms  0x6c88 PR_Close()
 25582 ms  0x6c88 fd:0x7f6240371a90
 25631 ms  0x6c88 PR_Close()
 25631 ms  0x6c88 fd:0x7f6240371a90
           /* TID 0x6c80 */
 25645 ms  SECKEY_ECParamsToKeySize()
 25645 ms  0x6c80 ret:0xff
 25645 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25645 ms  0x6c80 cx:0x7f624b32f128
 25646 ms     | 0x6c80 EC_ValidatePublicKey()
 25646 ms     | 0x6c80 ret:0x0
 25646 ms  0x6c80 ret:0x7f624add4820::7f624add4820  d0 18 d9 6d                                      ...m
 25647 ms  0x6c80 PK11_PubDeriveWithKDF()
 25647 ms  0x6c80 seckey:0x7f624add4820
 25647 ms     | 0x6c80 EC_ValidatePublicKey()
 25647 ms     | 0x6c80 ret:0x0
 25648 ms  0x6c80 ret:0x7f626ee48c80
 25648 ms  0x6c80 PK11_DeriveWithFlags()
 25648 ms  0x6c80 basekey:0x7f626ee48c80
 25648 ms     | 0x6c80 PK11_DeriveWithTemplate()
 25648 ms  0x6c80 ret:0x7f624a9bbe00
 25648 ms  0x6c80 PK11_Derive()
 25648 ms  0x6c80 basekey:0x7f624a9bbe00
 25648 ms     | 0x6c80 PK11_DeriveWithTemplate()
 25648 ms  0x6c80 ret:0x7f624a9bb400
 25648 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25648 ms  0x6c80 privk:0x7f624add4820::7f624add4820  d0 18 d9 6d                                      ...m
 25649 ms  0x6c80 privk:0x7f624add4820::7f624add4820  e5 e5 e5 e5                                      ....
 25649 ms  0x6c80 PK11_Encrypt()
 25649 ms  0x6c80 symkey:0x7f624a9bbf00
           /* TID 0x6c88 */
 25654 ms  0x6c88 PR_Close()
 25654 ms  0x6c88 fd:0x7f62400ba4f0
           /* TID 0x6c80 */
 25658 ms  0x6c80 SSL_AuthCertificateComplete()
 25658 ms  0x6c80 fd:0x7f624affea60
 25658 ms  0x6c80 err:0x0
 25659 ms  0x6c80 PK11_Encrypt()
 25659 ms  0x6c80 symkey:0x7f624a9bbf00
 25667 ms  SECKEY_ECParamsToKeySize()
 25667 ms  0x6c80 ret:0xff
 25667 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25667 ms  0x6c80 cx:0x7f624b32eaa8
 25668 ms     | 0x6c80 EC_ValidatePublicKey()
 25668 ms     | 0x6c80 ret:0x0
 25668 ms  0x6c80 ret:0x7f624addb020::7f624addb020  20 19 d9 6d                                       ..m
 25668 ms  0x6c80 PK11_PubDeriveWithKDF()
 25668 ms  0x6c80 seckey:0x7f624addb020
 25668 ms     | 0x6c80 EC_ValidatePublicKey()
 25668 ms     | 0x6c80 ret:0x0
 25669 ms  0x6c80 ret:0x7f626ee48c80
 25669 ms  0x6c80 PK11_DeriveWithFlags()
 25669 ms  0x6c80 basekey:0x7f626ee48c80
 25669 ms     | 0x6c80 PK11_DeriveWithTemplate()
 25669 ms  0x6c80 ret:0x7f624a9ba600
 25669 ms  0x6c80 PK11_Derive()
 25669 ms  0x6c80 basekey:0x7f624a9ba600
 25669 ms     | 0x6c80 PK11_DeriveWithTemplate()
 25669 ms  0x6c80 ret:0x7f624a9bb500
 25669 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25669 ms  0x6c80 privk:0x7f624addb020::7f624addb020  20 19 d9 6d                                       ..m
 25669 ms  0x6c80 privk:0x7f624addb020::7f624addb020  e5 e5 e5 e5                                      ....
 25669 ms  0x6c80 PK11_Encrypt()
 25669 ms  0x6c80 symkey:0x7f624a9bb480
 25671 ms  SECKEY_ECParamsToKeySize()
 25671 ms  0x6c80 ret:0xff
 25671 ms  0x6c80 SECKEY_CreateECPrivateKey()
 25671 ms  0x6c80 cx:0x7f624b32f2c8
 25672 ms     | 0x6c80 EC_ValidatePublicKey()
 25672 ms     | 0x6c80 ret:0x0
 25672 ms  0x6c80 ret:0x7f624addb020::7f624addb020  b0 1a d9 6d                                      ...m
 25672 ms  0x6c80 PK11_PubDeriveWithKDF()
 25672 ms  0x6c80 seckey:0x7f624addb020
 25672 ms     | 0x6c80 EC_ValidatePublicKey()
 25672 ms     | 0x6c80 ret:0x0
 25673 ms  0x6c80 ret:0x7f626ee48c80
 25673 ms  0x6c80 PK11_DeriveWithFlags()
 25673 ms  0x6c80 basekey:0x7f626ee48c80
 25673 ms     | 0x6c80 PK11_DeriveWithTemplate()
 25673 ms  0x6c80 ret:0x7f624a9ba580
 25673 ms  0x6c80 PK11_Derive()
 25673 ms  0x6c80 basekey:0x7f624a9ba580
 25673 ms     | 0x6c80 PK11_DeriveWithTemplate()
 25673 ms  0x6c80 ret:0x7f624a9bab00
 25673 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25673 ms  0x6c80 privk:0x7f624addb020::7f624addb020  b0 1a d9 6d                                      ...m
 25673 ms  0x6c80 privk:0x7f624addb020::7f624addb020  e5 e5 e5 e5                                      ....
 25673 ms  0x6c80 PK11_Encrypt()
 25673 ms  0x6c80 symkey:0x7f624a9bb600
 25675 ms  0x6c80 SSL_AuthCertificateComplete()
 25675 ms  0x6c80 fd:0x7f624affe6a0
 25675 ms  0x6c80 err:0x0
 25675 ms  0x6c80 SSL_AuthCertificateComplete()
 25675 ms  0x6c80 fd:0x7f624affe970
 25675 ms  0x6c80 err:0x0
 25675 ms  0x6c80 PK11_Encrypt()
 25675 ms  0x6c80 symkey:0x7f624a9bb480
 25675 ms  0x6c80 PK11_Encrypt()
 25675 ms  0x6c80 symkey:0x7f624a9bb600
           /* TID 0x6c88 */
 25677 ms  0x6c88 PR_Close()
 25677 ms  0x6c88 fd:0x7f624b1e5430
           /* TID 0x6c80 */
 25680 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25680 ms  0x6c80 privk:0x7f624abcc020::7f624abcc020  10 cf 96 6a                                      ...j
 25680 ms  0x6c80 privk:0x7f624abcc020::7f624abcc020  e5 e5 e5 e5                                      ....
 25680 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25680 ms  0x6c80 privk:0x7f624abc6820::7f624abc6820  f0 db 90 6a                                      ...j
 25680 ms  0x6c80 privk:0x7f624abc6820::7f624abc6820  e5 e5 e5 e5                                      ....
 25680 ms  0x6c80 PK11_Encrypt()
 25680 ms  0x6c80 symkey:0x7f624b230700
 25717 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25717 ms  0x6c80 privk:0x7f624abda820::7f624abda820  f0 5b c0 6d                                      .[.m
 25717 ms  0x6c80 privk:0x7f624abda820::7f624abda820  e5 e5 e5 e5                                      ....
 25717 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25717 ms  0x6c80 privk:0x7f624abd8820::7f624abd8820  00 51 c0 6d                                      .Q.m
 25718 ms  0x6c80 privk:0x7f624abd8820::7f624abd8820  e5 e5 e5 e5                                      ....
 25718 ms  0x6c80 PR_Close()
 25718 ms  0x6c80 fd:0x7f624af81bb0
 25718 ms     | 0x6c80 PK11_Encrypt()
 25718 ms     | 0x6c80 symkey:0x7f626eee7700
 25727 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25727 ms  0x6c80 privk:0x7f624abd1020::7f624abd1020  20 e9 29 6d                                       .)m
 25727 ms  0x6c80 privk:0x7f624abd1020::7f624abd1020  e5 e5 e5 e5                                      ....
 25727 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25727 ms  0x6c80 privk:0x7f624abcf020::7f624abcf020  90 e2 29 6d                                      ..)m
 25727 ms  0x6c80 privk:0x7f624abcf020::7f624abcf020  e5 e5 e5 e5                                      ....
 25727 ms  0x6c80 PR_Close()
 25727 ms  0x6c80 fd:0x7f624af81c40
 25727 ms     | 0x6c80 PK11_Encrypt()
 25727 ms     | 0x6c80 symkey:0x7f626a90a380
 25767 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25767 ms  0x6c80 privk:0x7f624ad8d820::7f624ad8d820  20 5e c0 6d                                       ^.m
 25767 ms  0x6c80 privk:0x7f624ad8d820::7f624ad8d820  e5 e5 e5 e5                                      ....
 25767 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25767 ms  0x6c80 privk:0x7f624abdd820::7f624abdd820  f0 21 c8 6d                                      .!.m
 25767 ms  0x6c80 privk:0x7f624abdd820::7f624abdd820  e5 e5 e5 e5                                      ....
 25770 ms  0x6c80 PR_Close()
 25770 ms  0x6c80 fd:0x7f624affe310
 25770 ms     | 0x6c80 PK11_Encrypt()
 25770 ms     | 0x6c80 symkey:0x7f626df0d880
 25823 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25823 ms  0x6c80 privk:0x7f624ad92020::7f624ad92020  70 29 c8 6d                                      p).m
 25823 ms  0x6c80 privk:0x7f624ad92020::7f624ad92020  e5 e5 e5 e5                                      ....
 25824 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25824 ms  0x6c80 privk:0x7f624ad90020::7f624ad90020  40 b2 c8 68                                      @..h
 25824 ms  0x6c80 privk:0x7f624ad90020::7f624ad90020  e5 e5 e5 e5                                      ....
 25824 ms  0x6c80 PR_Close()
 25824 ms  0x6c80 fd:0x7f624affe520
 25824 ms     | 0x6c80 PK11_Encrypt()
 25824 ms     | 0x6c80 symkey:0x7f624ad3d100
           /* TID 0x6c88 */
 25850 ms  0x6c88 PR_Close()
 25850 ms  0x6c88 fd:0x7f624af81970
           /* TID 0x6c80 */
 25898 ms  0x6c80 PK11_Encrypt()
 25898 ms  0x6c80 symkey:0x7f62663e0780
 25903 ms  0x6c80 PK11_Encrypt()
 25903 ms  0x6c80 symkey:0x7f6262ecbf80
           /* TID 0x6c88 */
 25906 ms  0x6c88 PR_Close()
 25906 ms  0x6c88 fd:0x7f624affe1c0
           /* TID 0x6c80 */
 25911 ms  0x6c80 PK11_Encrypt()
 25911 ms  0x6c80 symkey:0x7f6265878400
 25919 ms  0x6c80 PK11_Encrypt()
 25919 ms  0x6c80 symkey:0x7f62613c0a80
 25924 ms  0x6c80 PK11_Encrypt()
 25924 ms  0x6c80 symkey:0x7f62611c3880
 25927 ms  0x6c80 PK11_Encrypt()
 25927 ms  0x6c80 symkey:0x7f62661a7480
 25937 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25937 ms  0x6c80 privk:0x7f624ad95820::7f624ad95820  50 d1 d7 6d                                      P..m
 25938 ms  0x6c80 privk:0x7f624ad95820::7f624ad95820  e5 e5 e5 e5                                      ....
 25938 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25938 ms  0x6c80 privk:0x7f624ad93820::7f624ad93820  70 2e c8 6d                                      p..m
 25938 ms  0x6c80 privk:0x7f624ad93820::7f624ad93820  e5 e5 e5 e5                                      ....
 25938 ms  0x6c80 PR_Close()
 25938 ms  0x6c80 fd:0x7f624affea60
 25938 ms     | 0x6c80 PK11_Encrypt()
 25938 ms     | 0x6c80 symkey:0x7f624a9bbf00
 25968 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25968 ms  0x6c80 privk:0x7f624ad9f820::7f624ad9f820  e0 d7 d7 6d                                      ...m
 25968 ms  0x6c80 privk:0x7f624ad9f820::7f624ad9f820  e5 e5 e5 e5                                      ....
 25969 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25969 ms  0x6c80 privk:0x7f624ad9d820::7f624ad9d820  00 d6 d7 6d                                      ...m
 25969 ms  0x6c80 privk:0x7f624ad9d820::7f624ad9d820  e5 e5 e5 e5                                      ....
 25970 ms  0x6c80 PR_Close()
 25970 ms  0x6c80 fd:0x7f624affe970
 25970 ms     | 0x6c80 PK11_Encrypt()
 25970 ms     | 0x6c80 symkey:0x7f624a9bb600
 25971 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25971 ms  0x6c80 privk:0x7f624ad9a020::7f624ad9a020  c0 d4 d7 6d                                      ...m
 25971 ms  0x6c80 privk:0x7f624ad9a020::7f624ad9a020  e5 e5 e5 e5                                      ....
 25971 ms  0x6c80 SECKEY_DestroyPrivateKey()
 25971 ms  0x6c80 privk:0x7f624ad98020::7f624ad98020  90 d2 d7 6d                                      ...m
 25971 ms  0x6c80 privk:0x7f624ad98020::7f624ad98020  e5 e5 e5 e5                                      ....
 25971 ms  0x6c80 PR_Close()
 25971 ms  0x6c80 fd:0x7f624affe6a0
 25971 ms     | 0x6c80 PK11_Encrypt()
 25971 ms     | 0x6c80 symkey:0x7f624a9bb480
 26069 ms  SECKEY_ECParamsToKeySize()
 26069 ms  0x6c80 ret:0xff
 26069 ms  0x6c80 SECKEY_CreateECPrivateKey()
 26069 ms  0x6c80 cx:0x7f624afec588
 26070 ms     | 0x6c80 EC_ValidatePublicKey()
 26070 ms     | 0x6c80 ret:0x0
 26070 ms  0x6c80 ret:0x7f624abcf020::7f624abcf020  60 50 c0 6d                                      `P.m
 26070 ms  0x6c80 PK11_PubDeriveWithKDF()
 26070 ms  0x6c80 seckey:0x7f624abcf020
 26070 ms     | 0x6c80 EC_ValidatePublicKey()
 26071 ms     | 0x6c80 ret:0x0
 26072 ms  0x6c80 ret:0x7f624a9bb500
 26072 ms  0x6c80 PK11_DeriveWithFlags()
 26072 ms  0x6c80 basekey:0x7f624a9bb500
 26072 ms     | 0x6c80 PK11_DeriveWithTemplate()
 26072 ms  0x6c80 ret:0x7f624a9ba600
 26072 ms  0x6c80 PK11_Derive()
 26072 ms  0x6c80 basekey:0x7f624a9ba600
 26072 ms     | 0x6c80 PK11_DeriveWithTemplate()
 26072 ms  0x6c80 ret:0x7f624a9bab00
 26072 ms  0x6c80 SECKEY_DestroyPrivateKey()
 26072 ms  0x6c80 privk:0x7f624abcf020::7f624abcf020  60 50 c0 6d                                      `P.m
 26073 ms  0x6c80 privk:0x7f624abcf020::7f624abcf020  e5 e5 e5 e5                                      ....
 26073 ms  0x6c80 PK11_Encrypt()
 26073 ms  0x6c80 symkey:0x7f624a9bb800
 26073 ms  0x6c80 SSL_AuthCertificateComplete()
 26073 ms  0x6c80 fd:0x7f624af81d90
 26073 ms  0x6c80 err:0x0
 26075 ms  0x6c80 PK11_Encrypt()
 26075 ms  0x6c80 symkey:0x7f624a9bb800
 26084 ms  0x6c80 PK11_Encrypt()
 26084 ms  0x6c80 symkey:0x7f624b230700
 26099 ms  0x6c80 PK11_Encrypt()
 26099 ms  0x6c80 symkey:0x7f624b131480
 26099 ms  0x6c80 PR_Close()
 26099 ms  0x6c80 fd:0x7f62709898e0
 26100 ms     | 0x6c80 PK11_Encrypt()
 26100 ms     | 0x6c80 symkey:0x7f626df40680
 26100 ms  0x6c80 PR_Close()
 26100 ms  0x6c80 fd:0x7f626ee5f070
 26100 ms     | 0x6c80 PK11_Encrypt()
 26100 ms     | 0x6c80 symkey:0x7f6261becc80
 26100 ms  0x6c80 PR_Close()
 26100 ms  0x6c80 fd:0x7f624b1fa160
 26100 ms     | 0x6c80 PK11_Encrypt()
 26100 ms     | 0x6c80 symkey:0x7f626df30400
 26144 ms  0x6c80 PR_Close()
 26144 ms  0x6c80 fd:0x7f6261bd50d0
 26144 ms     | 0x6c80 PK11_Encrypt()
 26144 ms     | 0x6c80 symkey:0x7f625fca8d80
 26166 ms  0x6c80 PK11_Encrypt()
 26166 ms  0x6c80 symkey:0x7f624b230700
 26167 ms  0x6c80 PK11_Encrypt()
 26167 ms  0x6c80 symkey:0x7f624b230700
 26252 ms  0x6c80 PK11_Encrypt()
 26252 ms  0x6c80 symkey:0x7f6265878400
 26260 ms  0x6c80 PK11_Encrypt()
 26260 ms  0x6c80 symkey:0x7f62613c0a80
 26318 ms  0x6c80 PR_Close()
 26318 ms  0x6c80 fd:0x7f624b2593a0
 26320 ms  0x6c80 PR_Close()
 26320 ms  0x6c80 fd:0x7f62617c4af0
 26320 ms     | 0x6c80 PK11_Encrypt()
 26320 ms     | 0x6c80 symkey:0x7f626dfe1e00
 26321 ms  0x6c80 PR_Close()
 26321 ms  0x6c80 fd:0x7f624b2590a0
 26321 ms     | 0x6c80 PK11_Encrypt()
 26321 ms     | 0x6c80 symkey:0x7f624b130b00
 26321 ms  0x6c80 PR_Close()
 26321 ms  0x6c80 fd:0x7f624b1fa3a0
 26321 ms     | 0x6c80 PK11_Encrypt()
 26321 ms     | 0x6c80 symkey:0x7f624af96c80
           /* TID 0x6c88 */
 26359 ms  0x6c88 PR_Close()
 26359 ms  0x6c88 fd:0x7f6240371580
           /* TID 0x6c80 */
 26359 ms  0x6c80 PK11_Encrypt()
 26359 ms  0x6c80 symkey:0x7f624b230700
 26360 ms  0x6c80 PK11_Encrypt()
 26360 ms  0x6c80 symkey:0x7f624b230700
 26360 ms  0x6c80 PK11_Encrypt()
 26360 ms  0x6c80 symkey:0x7f624b230700
 26371 ms  0x6c80 PK11_Encrypt()
 26371 ms  0x6c80 symkey:0x7f62661a7e00
 26385 ms  0x6c80 PK11_Encrypt()
 26385 ms  0x6c80 symkey:0x7f626610f500
 26387 ms  0x6c80 SECKEY_DestroyPrivateKey()
 26387 ms  0x6c80 privk:0x7f624abd6020::7f624abd6020  60 cf 2a 6d                                      `.*m
 26387 ms  0x6c80 privk:0x7f624abd6020::7f624abd6020  e5 e5 e5 e5                                      ....
 26387 ms  0x6c80 SECKEY_DestroyPrivateKey()
 26387 ms  0x6c80 privk:0x7f624abd3820::7f624abd3820  30 c8 2a 6d                                      0.*m
 26387 ms  0x6c80 privk:0x7f624abd3820::7f624abd3820  e5 e5 e5 e5                                      ....
 26387 ms  0x6c80 PR_Close()
 26387 ms  0x6c80 fd:0x7f624af81d90
 26387 ms     | 0x6c80 PK11_Encrypt()
 26387 ms     | 0x6c80 symkey:0x7f624a9bb800
           /* TID 0x6c88 */
 26397 ms  0x6c88 PR_Close()
 26397 ms  0x6c88 fd:0x7f62403715e0
           /* TID 0x6c80 */
 26401 ms  0x6c80 PK11_Encrypt()
 26401 ms  0x6c80 symkey:0x7f624b131480
 26409 ms  0x6c80 PK11_Encrypt()
 26409 ms  0x6c80 symkey:0x7f626e2bbf80
 26553 ms  0x6c80 PR_Close()
 26553 ms  0x6c80 fd:0x7f6240371ee0
 26553 ms     | 0x6c80 PK11_Encrypt()
 26553 ms     | 0x6c80 symkey:0x7f626dfef280
 26556 ms  0x6c80 SECKEY_CreateECPrivateKey()
 26556 ms  0x6c80 cx:0x7f624b330308
 26558 ms     | 0x6c80 EC_ValidatePublicKey()
 26558 ms     | 0x6c80 ret:0x0
 26558 ms  0x6c80 ret:0x7f624abd3020::7f624abd3020  20 99 cf 6c                                       ..l
 26558 ms  0x6c80 SECKEY_CreateECPrivateKey()
 26558 ms  0x6c80 cx:0x7f624b330308
 26560 ms     | 0x6c80 EC_ValidatePublicKey()
 26565 ms     | 0x6c80 ret:0x0
 26565 ms  0x6c80 ret:0x7f624abd5820::7f624abd5820  b0 e5 29 6d                                      ..)m
           /* TID 0x6c88 */
 26637 ms  0x6c88 PR_Close()
 26637 ms  0x6c88 fd:0x7f6240371f70
 26651 ms  0x6c88 PR_Close()
 26651 ms  0x6c88 fd:0x7f62400ba520
 26684 ms  0x6c88 PR_Close()
 26684 ms  0x6c88 fd:0x7f62400ba940
 26692 ms  0x6c88 PR_Close()
 26692 ms  0x6c88 fd:0x7f624af81580
 26719 ms  0x6c88 PR_Close()
 26719 ms  0x6c88 fd:0x7f624af814c0
 26726 ms  0x6c88 PR_Close()
 26726 ms  0x6c88 fd:0x7f624af81f10
           /* TID 0x6c80 */
 26888 ms  SECKEY_ECParamsToKeySize()
 26888 ms  0x6c80 ret:0x100
 26888 ms  0x6c80 SECKEY_CreateECPrivateKey()
 26888 ms  0x6c80 cx:0x7f624b330308
 26890 ms     | 0x6c80 EC_ValidatePublicKey()
 26895 ms     | 0x6c80 ret:0x0
 26895 ms  0x6c80 ret:0x7f624abd9020::7f624abd9020  80 e3 29 6d                                      ..)m
 26895 ms  0x6c80 PK11_PubDeriveWithKDF()
 26895 ms  0x6c80 seckey:0x7f624abd9020
 26895 ms     | 0x6c80 EC_ValidatePublicKey()
 26908 ms     | 0x6c80 ret:0x0
 26912 ms  0x6c80 ret:0x7f626f8fde00
 26912 ms  0x6c80 PK11_DeriveWithFlags()
 26912 ms  0x6c80 basekey:0x7f626f8fde00
 26912 ms     | 0x6c80 PK11_DeriveWithTemplate()
 26912 ms  0x6c80 ret:0x7f624b230280
 26912 ms  0x6c80 PK11_Derive()
 26912 ms  0x6c80 basekey:0x7f624b230280
 26912 ms     | 0x6c80 PK11_DeriveWithTemplate()
 26912 ms  0x6c80 ret:0x7f624a9bab00
 26912 ms  0x6c80 SECKEY_DestroyPrivateKey()
 26912 ms  0x6c80 privk:0x7f624abd9020::7f624abd9020  80 e3 29 6d                                      ..)m
 26913 ms  0x6c80 privk:0x7f624abd9020::7f624abd9020  e5 e5 e5 e5                                      ....
 26913 ms  0x6c80 PK11_Encrypt()
 26913 ms  0x6c80 symkey:0x7f626207f080
 26913 ms  0x6c80 SSL_AuthCertificateComplete()
 26913 ms  0x6c80 fd:0x7f624affe2e0
 26913 ms  0x6c80 err:0x0
 26949 ms  0x6c80 SSL_ImportFD()
 26950 ms  0x6c80 ret:0x7f624af81a30
 26950 ms  0x6c80 SSL_AuthCertificateHook()
 26950 ms  0x6c80 fd:0x7f624af81a30
 26950 ms  0x6c80 ret:0x0
 26951 ms  0x6c80 PK11_Encrypt()
 26951 ms  0x6c80 symkey:0x7f626f8fd100
 26951 ms  0x6c80 PR_Connect()
 26951 ms  0x6c80 fd:0x7f624af81a30
 26994 ms  0x6c80 PK11_Encrypt()
 26994 ms  0x6c80 symkey:0x7f626f8fd100
 27009 ms  0x6c80 SECKEY_CreateECPrivateKey()
 27009 ms  0x6c80 cx:0x7f62400595c8
 27013 ms     | 0x6c80 EC_ValidatePublicKey()
 27013 ms     | 0x6c80 ret:0x0
 27013 ms  0x6c80 ret:0x7f624abd9820::7f624abd9820  20 de cf 68                                       ..h
 27013 ms  0x6c80 SECKEY_CreateECPrivateKey()
 27013 ms  0x6c80 cx:0x7f62400595c8
 27015 ms     | 0x6c80 EC_ValidatePublicKey()
           /* TID 0x6c88 */
 27016 ms  0x6c88 PR_Close()
 27016 ms  0x6c88 fd:0x7f624af81490
           /* TID 0x6c80 */
 27021 ms     | 0x6c80 ret:0x0
 27021 ms  0x6c80 ret:0x7f624abdc020::7f624abdc020  80 e3 29 6d                                      ..)m
           /* TID 0x6c88 */
 27068 ms  0x6c88 PR_Close()
 27068 ms  0x6c88 fd:0x7f624af814c0
           /* TID 0x6c80 */
 27080 ms  0x6c80 PK11_Derive()
 27080 ms  0x6c80 basekey:0x7f626f8fde00
 27080 ms     | 0x6c80 PK11_DeriveWithTemplate()
 27080 ms  0x6c80 ret:0x7f624a9ba600
 27080 ms  0x6c80 PK11_PubDeriveWithKDF()
 27080 ms  0x6c80 seckey:0x7f624abd9820
 27080 ms     | 0x6c80 EC_ValidatePublicKey()
 27080 ms     | 0x6c80 ret:0x0
 27085 ms  0x6c80 ret:0x7f626f8fde00
 27085 ms  SECKEY_ECParamsToKeySize()
 27085 ms  0x6c80 ret:0xff
 27085 ms  0x6c80 PK11_DeriveWithFlags()
 27085 ms  0x6c80 basekey:0x7f624a9ba600
 27085 ms     | 0x6c80 PK11_DeriveWithTemplate()
 27086 ms  0x6c80 ret:0x7f624af96a80
 27086 ms  0x6c80 PK11_Derive()
 27086 ms  0x6c80 basekey:0x7f626f8fde00
 27086 ms     | 0x6c80 PK11_DeriveWithTemplate()
 27086 ms  0x6c80 ret:0x7f624af96580
 27086 ms  0x6c80 PK11_DeriveWithFlags()
 27086 ms  0x6c80 basekey:0x7f624af96580
 27086 ms     | 0x6c80 PK11_DeriveWithTemplate()
 27086 ms  0x6c80 ret:0x7f624a9ba600
 27086 ms  0x6c80 PK11_DeriveWithFlags()
 27086 ms  0x6c80 basekey:0x7f624af96580
 27086 ms     | 0x6c80 PK11_DeriveWithTemplate()
 27086 ms  0x6c80 ret:0x7f626f8fde00
 27086 ms  0x6c80 PK11_DeriveWithFlags()
 27086 ms  0x6c80 basekey:0x7f624af96580
 27086 ms     | 0x6c80 PK11_DeriveWithTemplate()
 27086 ms  0x6c80 ret:0x7f624af96a80
 27086 ms  0x6c80 PK11_Derive()
 27086 ms  0x6c80 basekey:0x7f624b230380
 27086 ms     | 0x6c80 PK11_DeriveWithTemplate()
 27086 ms  0x6c80 ret:0x7f624b230300
 27086 ms  0x6c80 PK11_DeriveWithFlags()
 27086 ms  0x6c80 basekey:0x7f626f8fde00
 27086 ms     | 0x6c80 PK11_DeriveWithTemplate()
 27086 ms  0x6c80 ret:0x7f624af96580
 27086 ms  0x6c80 PK11_DeriveWithFlags()
 27086 ms  0x6c80 basekey:0x7f626f8fde00
 27086 ms     | 0x6c80 PK11_DeriveWithTemplate()
 27086 ms  0x6c80 ret:0x7f624af96a80
           /* TID 0x6d19 */
 27087 ms  0x6d19 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 27088 ms  0x6d19 ret:0x0
 27088 ms  0x6d19 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 27088 ms  0x6d19 ret:0x0
           /* TID 0x6c80 */
 27088 ms  0x6c80 PK11_DeriveWithFlags()
 27088 ms  0x6c80 basekey:0x7f626f8fde00
 27088 ms     | 0x6c80 PK11_DeriveWithTemplate()
 27088 ms  0x6c80 ret:0x7f624af96a80
 27088 ms  0x6c80 SSL_AuthCertificateComplete()
 27088 ms  0x6c80 fd:0x7f624af81a30
 27088 ms  0x6c80 err:0x0
 27088 ms     | 0x6c80 PK11_DeriveWithFlags()
 27088 ms     | 0x6c80 basekey:0x7f624b230300
 27088 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 27088 ms     | 0x6c80 ret:0x7f624af96a80
 27088 ms     | 0x6c80 PK11_DeriveWithFlags()
 27088 ms     | 0x6c80 basekey:0x7f624b230300
 27088 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 27088 ms     | 0x6c80 ret:0x7f624b230380
 27088 ms     | 0x6c80 PK11_DeriveWithFlags()
 27088 ms     | 0x6c80 basekey:0x7f624b230300
 27088 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 27088 ms     | 0x6c80 ret:0x7f6240223e00
 27088 ms     | 0x6c80 PK11_DeriveWithFlags()
 27088 ms     | 0x6c80 basekey:0x7f624a9ba600
 27088 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 27088 ms     | 0x6c80 ret:0x7f6240223c80
 27088 ms     | 0x6c80 PK11_DeriveWithFlags()
 27088 ms     | 0x6c80 basekey:0x7f624a9ba600
 27088 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 27088 ms     | 0x6c80 ret:0x7f6265877880
 27088 ms     | 0x6c80 PK11_DeriveWithFlags()
 27088 ms     | 0x6c80 basekey:0x7f624b230380
 27088 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 27088 ms     | 0x6c80 ret:0x7f6265877880
 27088 ms     | 0x6c80 PK11_DeriveWithFlags()
 27088 ms     | 0x6c80 basekey:0x7f624b230380
 27088 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 27089 ms     | 0x6c80 ret:0x7f624ecf4600
 27089 ms     | 0x6c80 PK11_DeriveWithFlags()
 27089 ms     | 0x6c80 basekey:0x7f624a9ba600
 27089 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 27089 ms     | 0x6c80 ret:0x7f624af96580
 27089 ms     | 0x6c80 PK11_Encrypt()
 27089 ms     | 0x6c80 symkey:0x7f6240223c80
 27089 ms     | 0x6c80 PK11_DeriveWithFlags()
 27089 ms     | 0x6c80 basekey:0x7f624af96a80
 27089 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 27089 ms     | 0x6c80 ret:0x7f624af96580
 27089 ms     | 0x6c80 PK11_DeriveWithFlags()
 27089 ms     | 0x6c80 basekey:0x7f624af96a80
 27089 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 27089 ms     | 0x6c80 ret:0x7f624ecf4600
 27089 ms     | 0x6c80 PK11_DeriveWithFlags()
 27089 ms     | 0x6c80 basekey:0x7f624b230300
 27089 ms     |    | 0x6c80 PK11_DeriveWithTemplate()
 27089 ms     | 0x6c80 ret:0x7f6240223c80
 27089 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 27089 ms     | 0x6c80 privk:0x7f624abdc020::7f624abdc020  80 e3 29 6d                                      ..)m
 27089 ms     | 0x6c80 privk:0x7f624abdc020::7f624abdc020  e5 e5 e5 e5                                      ....
 27089 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 27089 ms     | 0x6c80 privk:0x7f624abd9820::7f624abd9820  20 de cf 68                                       ..h
 27089 ms     | 0x6c80 privk:0x7f624abd9820::7f624abd9820  e5 e5 e5 e5                                      ....
 27090 ms  0x6c80 PK11_Encrypt()
 27090 ms  0x6c80 symkey:0x7f624af96580
 27145 ms  0x6c80 PK11_DeriveWithFlags()
 27145 ms  0x6c80 basekey:0x7f6240223c80
 27145 ms     | 0x6c80 PK11_DeriveWithTemplate()
 27145 ms  0x6c80 ret:0x7f626f8fde00
 27146 ms  0x6c80 PK11_DeriveWithFlags()
 27146 ms  0x6c80 basekey:0x7f6240223c80
 27146 ms     | 0x6c80 PK11_DeriveWithTemplate()
 27146 ms  0x6c80 ret:0x7f626f8fde00
 27146 ms  0x6c80 PR_Close()
 27146 ms  0x6c80 fd:0x7f624af81a30
 27146 ms     | 0x6c80 PK11_Encrypt()
 27146 ms     | 0x6c80 symkey:0x7f624af96580
 27319 ms  0x6c80 PR_Close()
 27319 ms  0x6c80 fd:0x7f624b1fa2e0
 27319 ms     | 0x6c80 PK11_Encrypt()
 27319 ms     | 0x6c80 symkey:0x7f624af97080
 27319 ms  0x6c80 PR_Close()
 27319 ms  0x6c80 fd:0x7f62400ba7f0
 27319 ms     | 0x6c80 PK11_Encrypt()
 27319 ms     | 0x6c80 symkey:0x7f626ead0680
 27320 ms  0x6c80 PR_Close()
 27320 ms  0x6c80 fd:0x7f62400ba970
 27320 ms     | 0x6c80 PK11_Encrypt()
 27320 ms     | 0x6c80 symkey:0x7f626f8fd300
 27320 ms  0x6c80 PR_Close()
 27320 ms  0x6c80 fd:0x7f624b1fae80
 27320 ms     | 0x6c80 PK11_Encrypt()
 27320 ms     | 0x6c80 symkey:0x7f626eee8180
 27320 ms  0x6c80 PR_Close()
 27320 ms  0x6c80 fd:0x7f62400bac10
 27320 ms     | 0x6c80 PK11_Encrypt()
 27320 ms     | 0x6c80 symkey:0x7f624af96300
 27321 ms  0x6c80 PR_Close()
 27321 ms  0x6c80 fd:0x7f62400bacd0
 27321 ms     | 0x6c80 PK11_Encrypt()
 27321 ms     | 0x6c80 symkey:0x7f624af96780
 27323 ms  0x6c80 SECKEY_CreateECPrivateKey()
 27323 ms  0x6c80 cx:0x7f624d5a92c8
 27324 ms     | 0x6c80 EC_ValidatePublicKey()
 27324 ms     | 0x6c80 ret:0x0
 27324 ms  0x6c80 ret:0x7f624abd8820::7f624abd8820  60 aa 17 66                                      `..f
 27324 ms  0x6c80 SECKEY_CreateECPrivateKey()
 27324 ms  0x6c80 cx:0x7f624d5a92c8
 27325 ms     | 0x6c80 EC_ValidatePublicKey()
 27332 ms     | 0x6c80 ret:0x0
 27332 ms  0x6c80 ret:0x7f624abda820::7f624abda820  c0 e9 29 6d                                      ..)m
           /* TID 0x6c88 */
 27366 ms  0x6c88 PR_Close()
 27366 ms  0x6c88 fd:0x7f62400ba970
 27380 ms  0x6c88 PR_Close()
 27380 ms  0x6c88 fd:0x7f62400baac0
           /* TID 0x6c80 */
 27779 ms  0x6c80 PK11_Encrypt()
 27779 ms  0x6c80 symkey:0x7f626d281c00
           /* TID 0x6c88 */
 27901 ms  0x6c88 PR_Close()
 27901 ms  0x6c88 fd:0x7f62400baa00
           /* TID 0x6c80 */
 27994 ms  0x6c80 PR_Close()
 27994 ms  0x6c80 fd:0x7f6260a4a1c0
           /* TID 0x6c9c */
 28609 ms  0x6c9c PR_Close()
 28609 ms  0x6c9c fd:0x7f62400baa90
           /* TID 0x6c80 */
 28611 ms  0x6c80 PK11_Encrypt()
 28611 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c9c */
 28615 ms  0x6c9c PR_Close()
 28615 ms  0x6c9c fd:0x7f62400baa90
           /* TID 0x6c88 */
 28671 ms  0x6c88 PR_Close()
 28671 ms  0x6c88 fd:0x7f62400baa90
           /* TID 0x6c80 */
 28897 ms  0x6c80 SECKEY_DestroyPrivateKey()
 28897 ms  0x6c80 privk:0x7f624abd5820::7f624abd5820  b0 e5 29 6d                                      ..)m
 28898 ms  0x6c80 privk:0x7f624abd5820::7f624abd5820  e5 e5 e5 e5                                      ....
 28898 ms  0x6c80 SECKEY_DestroyPrivateKey()
 28898 ms  0x6c80 privk:0x7f624abd3020::7f624abd3020  20 99 cf 6c                                       ..l
 28898 ms  0x6c80 privk:0x7f624abd3020::7f624abd3020  e5 e5 e5 e5                                      ....
 29110 ms  0x6c80 SECKEY_CreateECPrivateKey()
 29110 ms  0x6c80 cx:0x7f626d2b4a68
 29112 ms     | 0x6c80 EC_ValidatePublicKey()
 29112 ms     | 0x6c80 ret:0x0
 29112 ms  0x6c80 ret:0x7f624abd2820::7f624abd2820  20 de cf 68                                       ..h
 29112 ms  0x6c80 SECKEY_CreateECPrivateKey()
 29112 ms  0x6c80 cx:0x7f626d2b4a68
 29114 ms     | 0x6c80 EC_ValidatePublicKey()
 29118 ms     | 0x6c80 ret:0x0
 29118 ms  0x6c80 ret:0x7f624abd5020::7f624abd5020  20 99 cf 6c                                       ..l
           /* TID 0x6c9c */
 29380 ms  0x6c9c PR_Close()
 29380 ms  0x6c9c fd:0x7f62400babb0
 29382 ms  0x6c9c PR_Close()
 29382 ms  0x6c9c fd:0x7f62400babb0
           /* TID 0x6c88 */
 29531 ms  0x6c88 PR_Close()
 29531 ms  0x6c88 fd:0x7f62400babb0
 29531 ms  0x6c88 PR_Close()
 29531 ms  0x6c88 fd:0x7f62400bae80
 29531 ms  0x6c88 PR_Close()
 29531 ms  0x6c88 fd:0x7f6240371e50
 29531 ms  0x6c88 PR_Close()
 29531 ms  0x6c88 fd:0x7f624af812b0
 29532 ms  0x6c88 PR_Close()
 29532 ms  0x6c88 fd:0x7f62400babb0
 29532 ms  0x6c88 PR_Close()
 29532 ms  0x6c88 fd:0x7f62400bae80
 29532 ms  0x6c88 PR_Close()
 29532 ms  0x6c88 fd:0x7f6240371e50
 29532 ms  0x6c88 PR_Close()
 29532 ms  0x6c88 fd:0x7f624af812b0
 29533 ms  0x6c88 PR_Close()
 29533 ms  0x6c88 fd:0x7f624af81340
 29533 ms  0x6c88 PR_Close()
 29533 ms  0x6c88 fd:0x7f624af81460
 29533 ms  0x6c88 PR_Close()
 29533 ms  0x6c88 fd:0x7f624af814c0
 29533 ms  0x6c88 PR_Close()
 29533 ms  0x6c88 fd:0x7f624af816a0
 29533 ms  0x6c88 PR_Close()
 29533 ms  0x6c88 fd:0x7f624affe070
 29533 ms  0x6c88 PR_Close()
 29533 ms  0x6c88 fd:0x7f624af81820
 29533 ms  0x6c88 PR_Close()
 29533 ms  0x6c88 fd:0x7f624af81a30
 29533 ms  0x6c88 PR_Close()
 29533 ms  0x6c88 fd:0x7f624af81a90
 29533 ms  0x6c88 PR_Close()
 29533 ms  0x6c88 fd:0x7f624af81be0
 29533 ms  0x6c88 PR_Close()
 29533 ms  0x6c88 fd:0x7f624af81c70
           /* TID 0x6c80 */
 29779 ms  SECKEY_ECParamsToKeySize()
 29781 ms  0x6c80 ret:0x100
 29781 ms  0x6c80 SECKEY_CreateECPrivateKey()
 29781 ms  0x6c80 cx:0x7f626d2b4a68
 29783 ms     | 0x6c80 EC_ValidatePublicKey()
 29788 ms     | 0x6c80 ret:0x0
 29788 ms  0x6c80 ret:0x7f624ad8f820::7f624ad8f820  90 cc 2a 6d                                      ..*m
 29789 ms  0x6c80 PK11_PubDeriveWithKDF()
 29789 ms  0x6c80 seckey:0x7f624ad8f820
 29789 ms     | 0x6c80 EC_ValidatePublicKey()
 29792 ms     | 0x6c80 ret:0x0
 29796 ms  0x6c80 ret:0x7f624af96600
 29796 ms  0x6c80 PK11_DeriveWithFlags()
 29796 ms  0x6c80 basekey:0x7f624af96600
 29796 ms     | 0x6c80 PK11_DeriveWithTemplate()
 29796 ms  0x6c80 ret:0x7f624af96500
 29796 ms  0x6c80 PK11_Derive()
 29796 ms  0x6c80 basekey:0x7f624af96500
 29796 ms     | 0x6c80 PK11_DeriveWithTemplate()
 29797 ms  0x6c80 ret:0x7f624af96180
 29797 ms  0x6c80 SECKEY_DestroyPrivateKey()
 29797 ms  0x6c80 privk:0x7f624ad8f820::7f624ad8f820  90 cc 2a 6d                                      ..*m
 29797 ms  0x6c80 privk:0x7f624ad8f820::7f624ad8f820  e5 e5 e5 e5                                      ....
 29797 ms  0x6c80 PK11_Encrypt()
 29797 ms  0x6c80 symkey:0x7f624af96680
 29798 ms  0x6c80 SSL_AuthCertificateComplete()
 29798 ms  0x6c80 fd:0x7f626cbb2490
 29798 ms  0x6c80 err:0x0
 29846 ms  0x6c80 PK11_Encrypt()
 29846 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 29907 ms  0x6c88 PR_Close()
 29907 ms  0x6c88 fd:0x7f62400bab20
           /* TID 0x6c80 */
 30218 ms  0x6c80 PK11_Encrypt()
 30218 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 30279 ms  0x6c88 PR_Close()
 30279 ms  0x6c88 fd:0x7f62400bab20
           /* TID 0x6c80 */
 30539 ms  0x6c80 PK11_Encrypt()
 30539 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 30599 ms  0x6c88 PR_Close()
 30599 ms  0x6c88 fd:0x7f62400baa90
           /* TID 0x6c80 */
 30610 ms  0x6c80 PR_Close()
 30610 ms  0x6c80 fd:0x7f624b519e50
 30610 ms     | 0x6c80 PK11_Encrypt()
 30610 ms     | 0x6c80 symkey:0x7f626eecdf80
 30622 ms  0x6c80 PR_Close()
 30622 ms  0x6c80 fd:0x7f624d583100
 30622 ms     | 0x6c80 PK11_Encrypt()
 30622 ms     | 0x6c80 symkey:0x7f626eee8000
 30667 ms  0x6c80 PR_Close()
 30667 ms  0x6c80 fd:0x7f624b519850
 30667 ms     | 0x6c80 PK11_Encrypt()
 30667 ms     | 0x6c80 symkey:0x7f6265fff400
 30699 ms  0x6c80 PR_Close()
 30699 ms  0x6c80 fd:0x7f624d73f4c0
 30700 ms     | 0x6c80 PK11_Encrypt()
 30700 ms     | 0x6c80 symkey:0x7f626eee7a00
 30785 ms  0x6c80 PK11_Encrypt()
 30785 ms  0x6c80 symkey:0x7f626d281c00
           /* TID 0x6c88 */
 30914 ms  0x6c88 PR_Close()
 30914 ms  0x6c88 fd:0x7f62400bab20
           /* TID 0x6c80 */
 31830 ms  0x6c80 PK11_Encrypt()
 31830 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 31894 ms  0x6c88 PR_Close()
 31894 ms  0x6c88 fd:0x7f62400baf40
           /* TID 0x6c80 */
 32106 ms  0x6c80 PR_Close()
 32106 ms  0x6c80 fd:0x7f6261bd5e50
 32326 ms  0x6c80 PR_Close()
 32326 ms  0x6c80 fd:0x7f624affe2e0
 32326 ms     | 0x6c80 PK11_Encrypt()
 32326 ms     | 0x6c80 symkey:0x7f626207f080
 32916 ms  0x6c80 SECKEY_DestroyPrivateKey()
 32916 ms  0x6c80 privk:0x7f624abd5020::7f624abd5020  20 99 cf 6c                                       ..l
 32916 ms  0x6c80 privk:0x7f624abd5020::7f624abd5020  e5 e5 e5 e5                                      ....
 32917 ms  0x6c80 SECKEY_DestroyPrivateKey()
 32917 ms  0x6c80 privk:0x7f624abd2820::7f624abd2820  20 de cf 68                                       ..h
 32917 ms  0x6c80 privk:0x7f624abd2820::7f624abd2820  e5 e5 e5 e5                                      ....
 33432 ms  0x6c80 PK11_Encrypt()
 33432 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 33491 ms  0x6c88 PR_Close()
 33491 ms  0x6c88 fd:0x7f62400bab20
           /* TID 0x6c80 */
 33785 ms  0x6c80 PK11_Encrypt()
 33785 ms  0x6c80 symkey:0x7f626d281c00
 33927 ms  0x6c80 PR_Close()
 33927 ms  0x6c80 fd:0x7f62664177c0
 33927 ms     | 0x6c80 PK11_Encrypt()
 33927 ms     | 0x6c80 symkey:0x7f626dd07580
           /* TID 0x6c88 */
 34112 ms  0x6c88 PR_Close()
 34112 ms  0x6c88 fd:0x7f62400bab20
           /* TID 0x6c80 */
 34230 ms  0x6c80 PR_Close()
 34230 ms  0x6c80 fd:0x7f624b40d6a0
 34230 ms     | 0x6c80 PK11_Encrypt()
 34230 ms     | 0x6c80 symkey:0x7f626eee7380
 34329 ms  0x6c80 PR_Close()
 34329 ms  0x6c80 fd:0x7f626cbb2490
 34329 ms     | 0x6c80 PK11_Encrypt()
 34329 ms     | 0x6c80 symkey:0x7f624af96680
           /* TID 0x6c88 */
 34841 ms  0x6c88 PR_Close()
 34841 ms  0x6c88 fd:0x7f62400baac0
 34842 ms  0x6c88 PR_Close()
 34842 ms  0x6c88 fd:0x7f62400baac0
 34842 ms  0x6c88 PR_Close()
 34842 ms  0x6c88 fd:0x7f62400bab20
 34842 ms  0x6c88 PR_Close()
 34842 ms  0x6c88 fd:0x7f62400baca0
 34842 ms  0x6c88 PR_Close()
 34842 ms  0x6c88 fd:0x7f6240371040
 34842 ms  0x6c88 PR_Close()
 34842 ms  0x6c88 fd:0x7f6240371250
           /* TID 0x6c80 */
 34860 ms  0x6c80 PK11_Encrypt()
 34860 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 34929 ms  0x6c88 PR_Close()
 34929 ms  0x6c88 fd:0x7f62400bab50
           /* TID 0x6c80 */
 35044 ms  0x6c80 PK11_Encrypt()
 35044 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 35106 ms  0x6c88 PR_Close()
 35106 ms  0x6c88 fd:0x7f62400baca0
           /* TID 0x6c80 */
 35566 ms  0x6c80 PK11_Encrypt()
 35566 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 35629 ms  0x6c88 PR_Close()
 35629 ms  0x6c88 fd:0x7f62400baaf0
           /* TID 0x6c80 */
 36649 ms  0x6c80 PR_Close()
 36649 ms  0x6c80 fd:0x7f62611e7e50
 36650 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 36650 ms     | 0x6c80 privk:0x7f624b4e3020::7f624b4e3020  d0 2d ec 69                                      .-.i
 36650 ms     | 0x6c80 privk:0x7f624b4e3020::7f624b4e3020  e5 e5 e5 e5                                      ....
 36652 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 36652 ms     | 0x6c80 privk:0x7f624b4dd820::7f624b4dd820  40 a7 9e 69                                      @..i
 36652 ms     | 0x6c80 privk:0x7f624b4dd820::7f624b4dd820  e5 e5 e5 e5                                      ....
 36658 ms  0x6c80 PK11_Encrypt()
 36658 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 36716 ms  0x6c88 PR_Close()
 36716 ms  0x6c88 fd:0x7f62400bab50
           /* TID 0x6c80 */
 37608 ms  0x6c80 PR_Close()
 37608 ms  0x6c80 fd:0x7f624d73fd30
 37608 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 37608 ms     | 0x6c80 privk:0x7f624ec5d020::7f624ec5d020  90 7c d9 6d                                      .|.m
 37608 ms     | 0x6c80 privk:0x7f624ec5d020::7f624ec5d020  e5 e5 e5 e5                                      ....
 37608 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 37608 ms     | 0x6c80 privk:0x7f624d9c5820::7f624d9c5820  10 7a d9 6d                                      .z.m
 37608 ms     | 0x6c80 privk:0x7f624d9c5820::7f624d9c5820  e5 e5 e5 e5                                      ....
 39241 ms  0x6c80 PR_Close()
 39241 ms  0x6c80 fd:0x7f624b519460
 39241 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 39241 ms     | 0x6c80 privk:0x7f624a94d820::7f624a94d820  70 5e 3f 66                                      p^?f
 39242 ms     | 0x6c80 privk:0x7f624a94d820::7f624a94d820  e5 e5 e5 e5                                      ....
 39242 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 39242 ms     | 0x6c80 privk:0x7f624a94a820::7f624a94a820  60 a5 17 66                                      `..f
 39242 ms     | 0x6c80 privk:0x7f624a94a820::7f624a94a820  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 39861 ms  0x6c88 PR_Close()
 39861 ms  0x6c88 fd:0x7f62400ba2e0
 39861 ms  0x6c88 PR_Close()
 39861 ms  0x6c88 fd:0x7f6240371190
 39861 ms  0x6c88 PR_Close()
 39861 ms  0x6c88 fd:0x7f62403713d0
 39861 ms  0x6c88 PR_Close()
 39861 ms  0x6c88 fd:0x7f6240371d30
           /* TID 0x6c80 */
 39884 ms  0x6c80 PK11_Encrypt()
 39884 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 39943 ms  0x6c88 PR_Close()
 39943 ms  0x6c88 fd:0x7f62400bab50
           /* TID 0x6c80 */
 40585 ms  0x6c80 PK11_Encrypt()
 40585 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 40645 ms  0x6c88 PR_Close()
 40645 ms  0x6c88 fd:0x7f62400baca0
           /* TID 0x6c80 */
 40809 ms  0x6c80 PR_Close()
 40809 ms  0x6c80 fd:0x7f624d73fca0
 40809 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 40809 ms     | 0x6c80 privk:0x7f624b46e820::7f624b46e820  90 9c df 68                                      ...h
 40810 ms     | 0x6c80 privk:0x7f624b46e820::7f624b46e820  e5 e5 e5 e5                                      ....
 40810 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 40810 ms     | 0x6c80 privk:0x7f624b45e020::7f624b45e020  b0 cf d7 68                                      ...h
 40810 ms     | 0x6c80 privk:0x7f624b45e020::7f624b45e020  e5 e5 e5 e5                                      ....
 43079 ms  0x6c80 PK11_Encrypt()
 43079 ms  0x6c80 symkey:0x7f6261beec80
 43079 ms  0x6c80 PR_Close()
 43079 ms  0x6c80 fd:0x7f624b1e5400
 43079 ms     | 0x6c80 PK11_Encrypt()
 43079 ms     | 0x6c80 symkey:0x7f6261beec80
 43096 ms  0x6c80 PK11_Encrypt()
 43096 ms  0x6c80 symkey:0x7f624d7fbc80
 43097 ms  0x6c80 PR_Close()
 43097 ms  0x6c80 fd:0x7f62400ba6d0
 43097 ms     | 0x6c80 PK11_Encrypt()
 43097 ms     | 0x6c80 symkey:0x7f624d7fbc80
 43117 ms  0x6c80 PK11_Encrypt()
 43117 ms  0x6c80 symkey:0x7f624d7fc580
 43118 ms  0x6c80 PR_Close()
 43118 ms  0x6c80 fd:0x7f624af810d0
 43118 ms     | 0x6c80 PK11_Encrypt()
 43118 ms     | 0x6c80 symkey:0x7f624d7fc580
 43123 ms  0x6c80 PK11_Encrypt()
 43123 ms  0x6c80 symkey:0x7f624d7fbf80
 43124 ms  0x6c80 PR_Close()
 43124 ms  0x6c80 fd:0x7f624b1e55b0
 43124 ms     | 0x6c80 PK11_Encrypt()
 43124 ms     | 0x6c80 symkey:0x7f624d7fbf80
 43305 ms  0x6c80 PR_Close()
 43305 ms  0x6c80 fd:0x7f6266131b50
 43341 ms  0x6c80 PK11_Encrypt()
 43341 ms  0x6c80 symkey:0x7f6240330d80
 43341 ms  0x6c80 PR_Close()
 43341 ms  0x6c80 fd:0x7f624b1e54f0
 43342 ms     | 0x6c80 PK11_Encrypt()
 43342 ms     | 0x6c80 symkey:0x7f6240330d80
 43445 ms  0x6c80 PR_Close()
 43445 ms  0x6c80 fd:0x7f6261bd53d0
 43974 ms  0x6c80 PK11_Encrypt()
 43974 ms  0x6c80 symkey:0x7f624d7fb980
 43975 ms  0x6c80 PR_Close()
 43975 ms  0x6c80 fd:0x7f6240371730
 43975 ms     | 0x6c80 PK11_Encrypt()
 43975 ms     | 0x6c80 symkey:0x7f624d7fb980
 43985 ms  0x6c80 PR_Close()
 43985 ms  0x6c80 fd:0x7f6268dfa310
 43985 ms     | 0x6c80 PK11_Encrypt()
 43985 ms     | 0x6c80 symkey:0x7f6268d61500
 44005 ms  0x6c80 PK11_Encrypt()
 44005 ms  0x6c80 symkey:0x7f626ea08100
 44006 ms  0x6c80 PR_Close()
 44006 ms  0x6c80 fd:0x7f627095b460
 44006 ms     | 0x6c80 PK11_Encrypt()
 44006 ms     | 0x6c80 symkey:0x7f626ea08100
           /* TID 0x6c88 */
 44886 ms  0x6c88 PR_Close()
 44886 ms  0x6c88 fd:0x7f62400ba550
           /* TID 0x6c80 */
 44898 ms  0x6c80 PK11_Encrypt()
 44898 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 44957 ms  0x6c88 PR_Close()
 44957 ms  0x6c88 fd:0x7f62400ba0d0
           /* TID 0x6c80 */
 45470 ms  0x6c80 PK11_Encrypt()
 45470 ms  0x6c80 symkey:0x7f626f8fd100
 45476 ms  0x6c80 PK11_Encrypt()
 45476 ms  0x6c80 symkey:0x7f626f8fd100
 45480 ms  0x6c80 PK11_Encrypt()
 45480 ms  0x6c80 symkey:0x7f626f8fd100
 45483 ms  0x6c80 PK11_Encrypt()
 45483 ms  0x6c80 symkey:0x7f626f8fd100
 45486 ms  0x6c80 PK11_Encrypt()
 45486 ms  0x6c80 symkey:0x7f626f8fd100
 45490 ms  0x6c80 PK11_Encrypt()
 45490 ms  0x6c80 symkey:0x7f626f8fd100
 45492 ms  0x6c80 PK11_Encrypt()
 45492 ms  0x6c80 symkey:0x7f626f8fd100
 45496 ms  0x6c80 PK11_Encrypt()
 45496 ms  0x6c80 symkey:0x7f626f8fd100
 45496 ms  0x6c80 PK11_Encrypt()
 45496 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 45503 ms  0x6c88 PR_Close()
 45503 ms  0x6c88 fd:0x7f624af816a0
 45528 ms  0x6c88 PR_Close()
 45528 ms  0x6c88 fd:0x7f62400ba550
 45587 ms  0x6c88 PR_Close()
 45587 ms  0x6c88 fd:0x7f62400ba640
 45591 ms  0x6c88 PR_Close()
 45591 ms  0x6c88 fd:0x7f62400ba550
 45591 ms  0x6c88 PR_Close()
 45591 ms  0x6c88 fd:0x7f6240371190
 45592 ms  0x6c88 PR_Close()
 45592 ms  0x6c88 fd:0x7f6240371c40
 45592 ms  0x6c88 PR_Close()
 45592 ms  0x6c88 fd:0x7f62400ba550
 45593 ms  0x6c88 PR_Close()
 45593 ms  0x6c88 fd:0x7f62400ba550
 45594 ms  0x6c88 PR_Close()
 45594 ms  0x6c88 fd:0x7f62400ba550
 45596 ms  0x6c88 PR_Close()
 45596 ms  0x6c88 fd:0x7f62400ba550
           /* TID 0x6c80 */
 45616 ms  0x6c80 PK11_Encrypt()
 45616 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 45674 ms  0x6c88 PR_Close()
 45674 ms  0x6c88 fd:0x7f62400ba640
           /* TID 0x6c80 */
 46069 ms  0x6c80 PR_Close()
 46069 ms  0x6c80 fd:0x7f626eeb9910
 46070 ms  0x6c80 PR_Close()
 46070 ms  0x6c80 fd:0x7f626df57ac0
 46072 ms  0x6c80 PR_Close()
 46072 ms  0x6c80 fd:0x7f626df57070
 46143 ms  0x6c80 PR_Close()
 46143 ms  0x6c80 fd:0x7f626f875820
 46568 ms  0x6c80 PK11_Encrypt()
 46568 ms  0x6c80 symkey:0x7f624b230700
 46568 ms  0x6c80 PR_Close()
 46568 ms  0x6c80 fd:0x7f624af81d60
 46568 ms     | 0x6c80 PK11_Encrypt()
 46568 ms     | 0x6c80 symkey:0x7f624b230700
 49714 ms  0x6c80 PR_Close()
 49714 ms  0x6c80 fd:0x7f6261bd5fd0
 49714 ms     | 0x6c80 PK11_Encrypt()
 49714 ms     | 0x6c80 symkey:0x7f625fca9b80
           /* TID 0x6c88 */
 49900 ms  0x6c88 PR_Close()
 49900 ms  0x6c88 fd:0x7f62400ba7c0
 49900 ms  0x6c88 PR_Close()
 49900 ms  0x6c88 fd:0x7f62400baf40
 49900 ms  0x6c88 PR_Close()
 49900 ms  0x6c88 fd:0x7f6240371190
 49900 ms  0x6c88 PR_Close()
 49900 ms  0x6c88 fd:0x7f6240371e50
 49900 ms  0x6c88 PR_Close()
 49900 ms  0x6c88 fd:0x7f624af810a0
 49900 ms  0x6c88 PR_Close()
 49900 ms  0x6c88 fd:0x7f624af81130
           /* TID 0x6c80 */
 49918 ms  0x6c80 PK11_Encrypt()
 49918 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 49982 ms  0x6c88 PR_Close()
 49982 ms  0x6c88 fd:0x7f62400ba640
           /* TID 0x6c80 */
 50626 ms  0x6c80 PK11_Encrypt()
 50626 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 50689 ms  0x6c88 PR_Close()
 50689 ms  0x6c88 fd:0x7f62400ba7c0
           /* TID 0x6c80 */
 50792 ms  0x6c80 PR_Close()
 50792 ms  0x6c80 fd:0x7f624ec7bb20
 52196 ms  0x6c80 PR_Close()
 52196 ms  0x6c80 fd:0x7f624b40d8b0
 52196 ms     | 0x6c80 PK11_Encrypt()
 52196 ms     | 0x6c80 symkey:0x7f626dfe2580
 52214 ms  0x6c80 PR_Close()
 52214 ms  0x6c80 fd:0x7f624b1fadc0
 52214 ms     | 0x6c80 PK11_Encrypt()
 52214 ms     | 0x6c80 symkey:0x7f626dfe2980
 52391 ms  0x6c80 PR_Close()
 52391 ms  0x6c80 fd:0x7f624b1faac0
 52391 ms     | 0x6c80 PK11_Encrypt()
 52391 ms     | 0x6c80 symkey:0x7f626e2baa00
 52396 ms  0x6c80 PR_Close()
 52396 ms  0x6c80 fd:0x7f624b1fafa0
 52396 ms     | 0x6c80 PK11_Encrypt()
 52396 ms     | 0x6c80 symkey:0x7f626e2bb600
 52499 ms  0x6c80 PR_Close()
 52499 ms  0x6c80 fd:0x7f624b1fa100
 52500 ms     | 0x6c80 PK11_Encrypt()
 52500 ms     | 0x6c80 symkey:0x7f626dfe2f00
 52859 ms  0x6c80 PR_Close()
 52859 ms  0x6c80 fd:0x7f624b259d30
 52859 ms     | 0x6c80 PK11_Encrypt()
 52859 ms     | 0x6c80 symkey:0x7f626f8fdc00
 54815 ms  0x6c80 PR_Close()
 54815 ms  0x6c80 fd:0x7f626df06dc0
 54815 ms     | 0x6c80 PK11_Encrypt()
 54815 ms     | 0x6c80 symkey:0x7f626d269080
           /* TID 0x6c88 */
 54921 ms  0x6c88 PR_Close()
 54921 ms  0x6c88 fd:0x7f62400ba490
 54921 ms  0x6c88 PR_Close()
 54921 ms  0x6c88 fd:0x7f62400baf70
           /* TID 0x6c80 */
 54933 ms  0x6c80 PK11_Encrypt()
 54933 ms  0x6c80 symkey:0x7f626f8fd100
 54935 ms  0x6c80 PK11_Encrypt()
 54935 ms  0x6c80 symkey:0x7f626f8fd100
 54937 ms  0x6c80 PK11_Encrypt()
 54937 ms  0x6c80 symkey:0x7f626f8fd100
 54938 ms  0x6c80 PK11_Encrypt()
 54938 ms  0x6c80 symkey:0x7f626f8fd100
 54939 ms  0x6c80 PK11_Encrypt()
 54939 ms  0x6c80 symkey:0x7f626f8fd100
 54940 ms  0x6c80 PK11_Encrypt()
 54940 ms  0x6c80 symkey:0x7f626f8fd100
 54941 ms  0x6c80 PK11_Encrypt()
 54941 ms  0x6c80 symkey:0x7f626f8fd100
 54943 ms  0x6c80 PK11_Encrypt()
 54943 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 54992 ms  0x6c88 PR_Close()
 54992 ms  0x6c88 fd:0x7f62400baf40
 55051 ms  0x6c88 PR_Close()
 55051 ms  0x6c88 fd:0x7f62400ba640
 55051 ms  0x6c88 PR_Close()
 55051 ms  0x6c88 fd:0x7f62400baf70
 55052 ms  0x6c88 PR_Close()
 55052 ms  0x6c88 fd:0x7f62400ba640
 55053 ms  0x6c88 PR_Close()
 55053 ms  0x6c88 fd:0x7f62400ba640
 55053 ms  0x6c88 PR_Close()
 55053 ms  0x6c88 fd:0x7f62400ba640
 55054 ms  0x6c88 PR_Close()
 55054 ms  0x6c88 fd:0x7f62400ba640
 55055 ms  0x6c88 PR_Close()
 55055 ms  0x6c88 fd:0x7f62400ba640
           /* TID 0x6c80 */
 55643 ms  0x6c80 PK11_Encrypt()
 55643 ms  0x6c80 symkey:0x7f626f8fd100
 55651 ms  0x6c80 PK11_Encrypt()
 55651 ms  0x6c80 symkey:0x7f626f8fd100
 55657 ms  0x6c80 PK11_Encrypt()
 55657 ms  0x6c80 symkey:0x7f626f8fd100
 55663 ms  0x6c80 PK11_Encrypt()
 55663 ms  0x6c80 symkey:0x7f626f8fd100
 55672 ms  0x6c80 PK11_Encrypt()
 55672 ms  0x6c80 symkey:0x7f626f8fd100
 55674 ms  0x6c80 PK11_Encrypt()
 55674 ms  0x6c80 symkey:0x7f626f8fd100
 55675 ms  0x6c80 PK11_Encrypt()
 55675 ms  0x6c80 symkey:0x7f626f8fd100
 55678 ms  0x6c80 PK11_Encrypt()
 55678 ms  0x6c80 symkey:0x7f626f8fd100
           /* TID 0x6c88 */
 55702 ms  0x6c88 PR_Close()
 55702 ms  0x6c88 fd:0x7f62400bafd0
 55767 ms  0x6c88 PR_Close()
 55767 ms  0x6c88 fd:0x7f62400bafd0
 55769 ms  0x6c88 PR_Close()
 55769 ms  0x6c88 fd:0x7f624af81070
 55769 ms  0x6c88 PR_Close()
 55769 ms  0x6c88 fd:0x7f624af814c0
           /* TID 0x6c80 */
 55771 ms  0x6c80 PR_Close()
 55771 ms  0x6c80 fd:0x7f626a99d1c0
 55771 ms     | 0x6c80 PK11_Encrypt()
 55771 ms     | 0x6c80 symkey:0x7f626d268280
           /* TID 0x6c88 */
 55772 ms  0x6c88 PR_Close()
 55772 ms  0x6c88 fd:0x7f62400ba490
 55776 ms  0x6c88 PR_Close()
 55776 ms  0x6c88 fd:0x7f62400ba490
 55778 ms  0x6c88 PR_Close()
 55778 ms  0x6c88 fd:0x7f62400ba490
 55783 ms  0x6c88 PR_Close()
 55783 ms  0x6c88 fd:0x7f62400ba490
           /* TID 0x6c80 */
 56650 ms  0x6c80 PR_Close()
 56650 ms  0x6c80 fd:0x7f624b259a90
 56650 ms     | 0x6c80 PK11_Encrypt()
 56650 ms     | 0x6c80 symkey:0x7f62661a7e00
 56683 ms  0x6c80 PR_Close()
 56683 ms  0x6c80 fd:0x7f624b2598b0
 56683 ms     | 0x6c80 PK11_Encrypt()
 56683 ms     | 0x6c80 symkey:0x7f624b131480
 56718 ms  0x6c80 PR_Close()
 56718 ms  0x6c80 fd:0x7f624b259af0
 56718 ms     | 0x6c80 PK11_Encrypt()
 56718 ms     | 0x6c80 symkey:0x7f626e2bbf80
 57365 ms  0x6c80 PR_Close()
 57365 ms  0x6c80 fd:0x7f624b259a00
 57365 ms     | 0x6c80 PK11_Encrypt()
 57365 ms     | 0x6c80 symkey:0x7f626610f500
 57972 ms  0x6c80 PR_Close()
 57972 ms  0x6c80 fd:0x7f624d583fa0
 57972 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 57972 ms     | 0x6c80 privk:0x7f624abda820::7f624abda820  c0 e9 29 6d                                      ..)m
 57973 ms     | 0x6c80 privk:0x7f624abda820::7f624abda820  e5 e5 e5 e5                                      ....
 57973 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 57973 ms     | 0x6c80 privk:0x7f624abd8820::7f624abd8820  60 aa 17 66                                      `..f
 57973 ms     | 0x6c80 privk:0x7f624abd8820::7f624abd8820  e5 e5 e5 e5                                      ....
 57973 ms  0x6c80 SSL_ImportFD()
 57973 ms  0x6c80 ret:0x7f62400bac70
 57974 ms  0x6c80 SSL_AuthCertificateHook()
 57974 ms  0x6c80 fd:0x7f62400bac70
 57974 ms  0x6c80 ret:0x0
 57975 ms  0x6c80 PR_Connect()
 57975 ms  0x6c80 fd:0x7f62400bac70
           /* TID 0x6c9c */
 58094 ms  0x6c9c PR_Close()
 58094 ms  0x6c9c fd:0x7f624af81fa0
 58097 ms  0x6c9c PR_Close()
 58097 ms  0x6c9c fd:0x7f624affe160
 58112 ms  0x6c9c PR_Close()
 58112 ms  0x6c9c fd:0x7f624affe4f0
 58118 ms  0x6c9c PR_Close()
 58118 ms  0x6c9c fd:0x7f624affe7c0
           /* TID 0x6c80 */
 58225 ms  0x6c80 SSL_ImportFD()
 58225 ms  0x6c80 ret:0x7f624af81790
 58225 ms  0x6c80 SSL_AuthCertificateHook()
 58225 ms  0x6c80 fd:0x7f624af81790
 58225 ms  0x6c80 ret:0x0
 58225 ms  0x6c80 PR_Connect()
 58225 ms  0x6c80 fd:0x7f624af81790
 58531 ms  0x6c80 SECKEY_CreateECPrivateKey()
 58531 ms  0x6c80 cx:0x7f624005a608
 58533 ms     | 0x6c80 EC_ValidatePublicKey()
 58533 ms     | 0x6c80 ret:0x0
 58533 ms  0x6c80 ret:0x7f624abd8820::7f624abd8820  10 5a 3f 66                                      .Z?f
 58533 ms  0x6c80 SECKEY_CreateECPrivateKey()
 58533 ms  0x6c80 cx:0x7f624005a608
 58541 ms     | 0x6c80 EC_ValidatePublicKey()
 58547 ms     | 0x6c80 ret:0x0
 58547 ms  0x6c80 ret:0x7f624abda820::7f624abda820  00 f6 de 68                                      ...h
           /* TID 0x6c9c */
 58594 ms  0x6c9c PR_Close()
 58594 ms  0x6c9c fd:0x7f62400ba340
 58598 ms  0x6c9c PR_Close()
 58598 ms  0x6c9c fd:0x7f62400ba340
           /* TID 0x6c80 */
 58858 ms  0x6c80 PR_Connect()
 58858 ms  0x6c80 fd:0x7f624affed90
 58871 ms  SECKEY_ECParamsToKeySize()
 58871 ms  0x6c80 ret:0x100
 58871 ms  0x6c80 SECKEY_CreateECPrivateKey()
 58871 ms  0x6c80 cx:0x7f624005a608
 58874 ms     | 0x6c80 EC_ValidatePublicKey()
 58878 ms     | 0x6c80 ret:0x0
 58879 ms  0x6c80 ret:0x7f624ada9820::7f624ada9820  30 93 cf 6c                                      0..l
 58879 ms  0x6c80 PK11_PubDeriveWithKDF()
 58879 ms  0x6c80 seckey:0x7f624ada9820
 58879 ms     | 0x6c80 EC_ValidatePublicKey()
 58883 ms     | 0x6c80 ret:0x0
 58889 ms  0x6c80 ret:0x7f624b230180
 58889 ms  0x6c80 PK11_DeriveWithFlags()
 58889 ms  0x6c80 basekey:0x7f624b230180
 58889 ms     | 0x6c80 PK11_DeriveWithTemplate()
 58889 ms  0x6c80 ret:0x7f626ead1080
 58889 ms  0x6c80 PK11_Derive()
 58889 ms  0x6c80 basekey:0x7f626ead1080
 58889 ms     | 0x6c80 PK11_DeriveWithTemplate()
 58890 ms  0x6c80 ret:0x7f6240223d80
 58890 ms  0x6c80 SECKEY_DestroyPrivateKey()
 58890 ms  0x6c80 privk:0x7f624ada9820::7f624ada9820  30 93 cf 6c                                      0..l
 58890 ms  0x6c80 privk:0x7f624ada9820::7f624ada9820  e5 e5 e5 e5                                      ....
 58890 ms  0x6c80 PK11_Encrypt()
 58890 ms  0x6c80 symkey:0x7f624b131f80
 58891 ms  0x6c80 SSL_AuthCertificateComplete()
 58891 ms  0x6c80 fd:0x7f624af81790
 58891 ms  0x6c80 err:0x0
 58892 ms  0x6c80 PK11_Encrypt()
 58892 ms  0x6c80 symkey:0x7f624b131f80
 59203 ms  0x6c80 SECKEY_DestroyPrivateKey()
 59203 ms  0x6c80 privk:0x7f624abda820::7f624abda820  00 f6 de 68                                      ...h
 59203 ms  0x6c80 privk:0x7f624abda820::7f624abda820  e5 e5 e5 e5                                      ....
 59203 ms  0x6c80 SECKEY_DestroyPrivateKey()
 59203 ms  0x6c80 privk:0x7f624abd8820::7f624abd8820  10 5a 3f 66                                      .Z?f
 59203 ms  0x6c80 privk:0x7f624abd8820::7f624abd8820  e5 e5 e5 e5                                      ....
 59316 ms  0x6c80 SECKEY_CreateECPrivateKey()
 59316 ms  0x6c80 cx:0x7f6240058c08
 59318 ms     | 0x6c80 EC_ValidatePublicKey()
 59318 ms     | 0x6c80 ret:0x0
 59318 ms  0x6c80 ret:0x7f624abd8820::7f624abd8820  80 73 13 66                                      .s.f
 59319 ms  0x6c80 SECKEY_CreateECPrivateKey()
 59319 ms  0x6c80 cx:0x7f6240058c08
 59321 ms     | 0x6c80 EC_ValidatePublicKey()
 59327 ms     | 0x6c80 ret:0x0
 59327 ms  0x6c80 ret:0x7f624abda820::7f624abda820  30 38 0a 6a                                      08.j
           /* TID 0x6c88 */
 59560 ms  0x6c88 PR_Close()
 59560 ms  0x6c88 fd:0x7f624affebb0
 59561 ms  0x6c88 PR_Close()
 59561 ms  0x6c88 fd:0x7f624af81eb0
           /* TID 0x6c80 */
 59576 ms  0x6c80 PR_Close()
 59576 ms  0x6c80 fd:0x7f62611e73a0
           /* TID 0x6c75 */
 59595 ms  0x6c75 EC_ValidatePublicKey()
 59597 ms  0x6c75 ret:0x0
 59597 ms  0x6c75 EC_ValidatePublicKey()
 59600 ms  0x6c75 ret:0x0
 59600 ms  0x6c75 EC_ValidatePublicKey()
 59602 ms  0x6c75 ret:0x0
 59602 ms  0x6c75 EC_ValidatePublicKey()
 59604 ms  0x6c75 ret:0x0
 59604 ms  0x6c75 EC_ValidatePublicKey()
 59609 ms  0x6c75 ret:0x0
 59609 ms  0x6c75 EC_ValidatePublicKey()
 59611 ms  0x6c75 ret:0x0
 59611 ms  0x6c75 EC_ValidatePublicKey()
 59613 ms  0x6c75 ret:0x0
 59613 ms  0x6c75 EC_ValidatePublicKey()
 59614 ms  0x6c75 ret:0x0
 59614 ms  0x6c75 EC_ValidatePublicKey()
 59617 ms  0x6c75 ret:0x0
 59617 ms  0x6c75 EC_ValidatePublicKey()
 59618 ms  0x6c75 ret:0x0
           /* TID 0x6c80 */
 59619 ms  0x6c80 PK11_Encrypt()
 59619 ms  0x6c80 symkey:0x7f626ee48700
 59619 ms  0x6c80 PK11_Encrypt()
 59619 ms  0x6c80 symkey:0x7f625fca8a80
 59619 ms  0x6c80 PK11_Encrypt()
 59619 ms  0x6c80 symkey:0x7f626dd06f00
 59619 ms  0x6c80 PK11_Encrypt()
 59619 ms  0x6c80 symkey:0x7f626ead0f00
 59619 ms  0x6c80 PK11_Encrypt()
 59619 ms  0x6c80 symkey:0x7f625fc9a880
 59619 ms  0x6c80 PK11_Encrypt()
 59619 ms  0x6c80 symkey:0x7f6265baf900
 59619 ms  0x6c80 PK11_Encrypt()
 59619 ms  0x6c80 symkey:0x7f6265877400
 59620 ms  0x6c80 PK11_Encrypt()
 59620 ms  0x6c80 symkey:0x7f626f8fd100
 59620 ms  0x6c80 PK11_Encrypt()
 59620 ms  0x6c80 symkey:0x7f625fcc0c80
 59620 ms  0x6c80 PK11_Encrypt()
 59620 ms  0x6c80 symkey:0x7f625fcc0a80
 59620 ms  0x6c80 PK11_Encrypt()
 59620 ms  0x6c80 symkey:0x7f626eecc780
 59620 ms  0x6c80 PK11_Encrypt()
 59620 ms  0x6c80 symkey:0x7f626cbfff00
 59620 ms  0x6c80 PK11_Encrypt()
 59620 ms  0x6c80 symkey:0x7f6265ff1800
 59620 ms  0x6c80 PK11_Encrypt()
 59620 ms  0x6c80 symkey:0x7f626089d800
 59620 ms  0x6c80 PK11_Encrypt()
 59620 ms  0x6c80 symkey:0x7f626ea07e80
 59620 ms  0x6c80 PK11_Encrypt()
 59620 ms  0x6c80 symkey:0x7f626d268b80
 59621 ms  0x6c80 PK11_Encrypt()
 59621 ms  0x6c80 symkey:0x7f626cca1400
 59621 ms  0x6c80 PK11_Encrypt()
 59621 ms  0x6c80 symkey:0x7f626d268880
 59621 ms  0x6c80 PK11_Encrypt()
 59621 ms  0x6c80 symkey:0x7f624ecf3a00
 59621 ms  0x6c80 PR_Close()
 59621 ms  0x6c80 fd:0x7f624af81790
 59621 ms     | 0x6c80 PK11_Encrypt()
 59621 ms     | 0x6c80 symkey:0x7f624b131f80
 59621 ms  0x6c80 PR_Close()
 59621 ms  0x6c80 fd:0x7f6269a6bc10
 59621 ms     | 0x6c80 PK11_Encrypt()
 59621 ms     | 0x6c80 symkey:0x7f626a3cbd80
 59621 ms  0x6c80 PR_Close()
 59621 ms  0x6c80 fd:0x7f62617c4040
 59621 ms     | 0x6c80 PK11_Encrypt()
 59621 ms     | 0x6c80 symkey:0x7f6269ec3a00
 59621 ms  0x6c80 PR_Close()
 59621 ms  0x6c80 fd:0x7f6268d81d60
 59621 ms     | 0x6c80 PK11_Encrypt()
 59621 ms     | 0x6c80 symkey:0x7f626d29da00
 59622 ms  0x6c80 PR_Close()
 59622 ms  0x6c80 fd:0x7f6268d1a640
 59622 ms     | 0x6c80 PK11_Encrypt()
 59622 ms     | 0x6c80 symkey:0x7f626eac5d80
 59622 ms  0x6c80 PR_Close()
 59622 ms  0x6c80 fd:0x7f6268d1ab20
 59622 ms     | 0x6c80 PK11_Encrypt()
 59622 ms     | 0x6c80 symkey:0x7f626f8fde80
 59622 ms  0x6c80 PR_Close()
 59622 ms  0x6c80 fd:0x7f6269931b20
           /* TID 0x6ccf */
 59622 ms  0x6ccf PR_Close()
 59622 ms  0x6ccf fd:0x7f6240371100
 59622 ms  0x6ccf PR_Close()
 59622 ms  0x6ccf fd:0x7f6240371100
           /* TID 0x6c80 */
 59630 ms  0x6c80 PR_Close()
 59630 ms  0x6c80 fd:0x7f626a917070
 59630 ms     | 0x6c80 PK11_Encrypt()
 59630 ms     | 0x6c80 symkey:0x7f626a3cb180
 59630 ms  0x6c80 PR_Close()
 59630 ms  0x6c80 fd:0x7f627095b040
 59631 ms  0x6c80 PR_Close()
 59631 ms  0x6c80 fd:0x7f627095b2e0
 59631 ms  0x6c80 PR_Close()
 59631 ms  0x6c80 fd:0x7f626df57a00
 59631 ms  0x6c80 PR_Close()
 59631 ms  0x6c80 fd:0x7f626eab8430
 59631 ms  0x6c80 PR_Close()
 59631 ms  0x6c80 fd:0x7f626eab87f0
 59631 ms  0x6c80 PR_Close()
 59631 ms  0x6c80 fd:0x7f626e24f100
 59631 ms  0x6c80 PR_Close()
 59631 ms  0x6c80 fd:0x7f626eab8460
 59631 ms     | 0x6c80 PK11_Encrypt()
 59631 ms     | 0x6c80 symkey:0x7f625fc9b780
 59631 ms  0x6c80 PR_Close()
 59631 ms  0x6c80 fd:0x7f626ee5f6a0
 59631 ms     | 0x6c80 PK11_Encrypt()
 59631 ms     | 0x6c80 symkey:0x7f6265fe9780
 59631 ms  0x6c80 PR_Close()
 59631 ms  0x6c80 fd:0x7f624b3e6550
 59631 ms     | 0x6c80 PK11_Encrypt()
 59631 ms     | 0x6c80 symkey:0x7f626eac4500
 59632 ms  0x6c80 PR_Close()
 59632 ms  0x6c80 fd:0x7f626a798910
 59635 ms  0x6c80 PR_Close()
 59635 ms  0x6c80 fd:0x7f626eab8be0
 59635 ms  0x6c80 PR_Close()
 59635 ms  0x6c80 fd:0x7f626df57100
 59635 ms  0x6c80 PR_Close()
 59635 ms  0x6c80 fd:0x7f6268d1a100
 59635 ms     | 0x6c80 PK11_Encrypt()
 59635 ms     | 0x6c80 symkey:0x7f626df40300
 59635 ms  0x6c80 PR_Close()
 59635 ms  0x6c80 fd:0x7f624ec7b2b0
 59635 ms     | 0x6c80 PK11_Encrypt()
 59635 ms     | 0x6c80 symkey:0x7f62663dbd80
 59635 ms  0x6c80 PR_Close()
 59635 ms  0x6c80 fd:0x7f626cccbc10
 59635 ms     | 0x6c80 PK11_Encrypt()
 59635 ms     | 0x6c80 symkey:0x7f6265878400
 59636 ms  0x6c80 PR_Close()
 59636 ms  0x6c80 fd:0x7f62699b77c0
 59636 ms     | 0x6c80 PK11_Encrypt()
 59636 ms     | 0x6c80 symkey:0x7f6262ecbf80
 59636 ms  0x6c80 PR_Close()
 59636 ms  0x6c80 fd:0x7f62617c44c0
 59636 ms     | 0x6c80 PK11_Encrypt()
 59636 ms     | 0x6c80 symkey:0x7f625ff49f00
 59636 ms  0x6c80 PR_Close()
 59636 ms  0x6c80 fd:0x7f624b5199d0
 59636 ms     | 0x6c80 PK11_Encrypt()
 59636 ms     | 0x6c80 symkey:0x7f626d281c00
 59636 ms  0x6c80 PR_Close()
 59636 ms  0x6c80 fd:0x7f624d73f850
 59636 ms     | 0x6c80 PK11_Encrypt()
 59636 ms     | 0x6c80 symkey:0x7f626eac5080
 59636 ms  0x6c80 PR_Close()
 59636 ms  0x6c80 fd:0x7f624d73fbb0
 59636 ms     | 0x6c80 PK11_Encrypt()
 59636 ms     | 0x6c80 symkey:0x7f626eac4d80
 59637 ms  0x6c80 PR_Close()
 59637 ms  0x6c80 fd:0x7f624b519e80
 59637 ms     | 0x6c80 PK11_Encrypt()
 59637 ms     | 0x6c80 symkey:0x7f626eac4980
 59637 ms  0x6c80 PR_Close()
 59637 ms  0x6c80 fd:0x7f624d944c40
 59637 ms     | 0x6c80 PK11_Encrypt()
 59637 ms     | 0x6c80 symkey:0x7f626ead0400
 59637 ms  0x6c80 PR_Close()
 59637 ms  0x6c80 fd:0x7f626cbb2790
 59637 ms     | 0x6c80 PK11_Encrypt()
 59637 ms     | 0x6c80 symkey:0x7f6269ec4b00
 59637 ms  0x6c80 PR_Close()
 59637 ms  0x6c80 fd:0x7f6266131cd0
 59637 ms     | 0x6c80 PK11_Encrypt()
 59637 ms     | 0x6c80 symkey:0x7f625fea7300
 59637 ms  0x6c80 PR_Close()
 59637 ms  0x6c80 fd:0x7f6265c3a6a0
 59637 ms     | 0x6c80 PK11_Encrypt()
 59637 ms     | 0x6c80 symkey:0x7f625fcffd00
 59638 ms  0x6c80 PR_Close()
 59638 ms  0x6c80 fd:0x7f6265c3a820
 59638 ms     | 0x6c80 PK11_Encrypt()
 59638 ms     | 0x6c80 symkey:0x7f625fcc1b00
 59638 ms  0x6c80 PR_Close()
 59638 ms  0x6c80 fd:0x7f6266111520
 59638 ms     | 0x6c80 PK11_Encrypt()
 59638 ms     | 0x6c80 symkey:0x7f625fca9880
 59638 ms  0x6c80 PR_Close()
 59638 ms  0x6c80 fd:0x7f62661310a0
 59638 ms     | 0x6c80 PK11_Encrypt()
 59638 ms     | 0x6c80 symkey:0x7f625fc9b080
 59645 ms  0x6c80 PR_Close()
 59645 ms  0x6c80 fd:0x7f62661317c0
 59645 ms     | 0x6c80 PK11_Encrypt()
 59645 ms     | 0x6c80 symkey:0x7f6265cdf700
 59646 ms  0x6c80 PR_Close()
 59646 ms  0x6c80 fd:0x7f624ec7b700
 59646 ms     | 0x6c80 PK11_Encrypt()
 59646 ms     | 0x6c80 symkey:0x7f62661a7480
 59646 ms  0x6c80 PR_Close()
 59646 ms  0x6c80 fd:0x7f624d73f9d0
 59646 ms     | 0x6c80 PK11_Encrypt()
 59646 ms     | 0x6c80 symkey:0x7f625fca8600
 59646 ms  0x6c80 PR_Close()
 59646 ms  0x6c80 fd:0x7f624d944250
 59646 ms  0x6c80 PR_Close()
 59646 ms  0x6c80 fd:0x7f624b3e6190
 59646 ms     | 0x6c80 PK11_Encrypt()
 59646 ms     | 0x6c80 symkey:0x7f626ea08700
 59647 ms  0x6c80 PR_Close()
 59647 ms  0x6c80 fd:0x7f624b3e6130
 59647 ms     | 0x6c80 PK11_Encrypt()
 59647 ms     | 0x6c80 symkey:0x7f626ea08f00
 59647 ms  0x6c80 PR_Close()
 59647 ms  0x6c80 fd:0x7f6269eabf10
 59647 ms     | 0x6c80 PK11_Encrypt()
 59647 ms     | 0x6c80 symkey:0x7f625fc9bb80
 59647 ms  0x6c80 PR_Close()
 59647 ms  0x6c80 fd:0x7f626ccf2fa0
 59647 ms     | 0x6c80 PK11_Encrypt()
 59647 ms     | 0x6c80 symkey:0x7f62663e0780
 59647 ms  0x6c80 PR_Close()
 59647 ms  0x6c80 fd:0x7f62613a42e0
 59647 ms     | 0x6c80 PK11_Encrypt()
 59647 ms     | 0x6c80 symkey:0x7f62613c0a80
 59648 ms  0x6c80 PR_Close()
 59648 ms  0x6c80 fd:0x7f624d73f8e0
 59648 ms     | 0x6c80 PK11_Encrypt()
 59648 ms     | 0x6c80 symkey:0x7f626df3fc00
 59648 ms  0x6c80 PR_Close()
 59648 ms  0x6c80 fd:0x7f62617c4bb0
 59648 ms     | 0x6c80 PK11_Encrypt()
 59648 ms     | 0x6c80 symkey:0x7f62611c3880
 59651 ms  0x6c80 PR_Close()
 59651 ms  0x6c80 fd:0x7f626cbb2c70
 59651 ms     | 0x6c80 PK11_Encrypt()
 59651 ms     | 0x6c80 symkey:0x7f6269a6d900
 59652 ms  0x6c80 PR_Close()
 59652 ms  0x6c80 fd:0x7f6268d1a070
 59652 ms     | 0x6c80 PK11_Encrypt()
 59652 ms     | 0x6c80 symkey:0x7f625fc9ae00
 59652 ms  0x6c80 PR_Close()
 59652 ms  0x6c80 fd:0x7f625fc4f7c0
 59652 ms  0x6c80 PR_Close()
 59652 ms  0x6c80 fd:0x7f625fc750a0
 59652 ms  0x6c80 PR_Close()
 59652 ms  0x6c80 fd:0x7f625fc75220
 59652 ms  0x6c80 PR_Close()
 59652 ms  0x6c80 fd:0x7f625fc38eb0
 59652 ms  0x6c80 PR_Close()
 59652 ms  0x6c80 fd:0x7f6268d1a7f0
 59652 ms     | 0x6c80 PK11_Encrypt()
 59652 ms     | 0x6c80 symkey:0x7f626eac5580
 59652 ms  0x6c80 PR_Close()
 59652 ms  0x6c80 fd:0x7f625fcb7850
 59652 ms  0x6c80 PR_Close()
 59652 ms  0x6c80 fd:0x7f625fc4f0a0
 59653 ms  0x6c80 PR_Close()
 59653 ms  0x6c80 fd:0x7f6265bacd00
 59653 ms  0x6c80 PR_Close()
 59653 ms  0x6c80 fd:0x7f625fcb77c0
 59653 ms  0x6c80 PR_Close()
 59653 ms  0x6c80 fd:0x7f6261bd5d90
 59653 ms     | 0x6c80 PK11_Encrypt()
 59653 ms     | 0x6c80 symkey:0x7f625fcc0580
 59653 ms  0x6c80 PR_Close()
 59653 ms  0x6c80 fd:0x7f6261bd5dc0
 59653 ms     | 0x6c80 PK11_Encrypt()
 59653 ms     | 0x6c80 symkey:0x7f625fcc0280
 59653 ms  0x6c80 PR_Close()
 59653 ms  0x6c80 fd:0x7f6261bd5d30
 59653 ms     | 0x6c80 PK11_Encrypt()
 59653 ms     | 0x6c80 symkey:0x7f625fca9f00
 59653 ms  0x6c80 PR_Close()
 59653 ms  0x6c80 fd:0x7f6265cc7970
 59653 ms  0x6c80 PR_Close()
 59653 ms  0x6c80 fd:0x7f6265c3a6d0
 59653 ms  0x6c80 PR_Close()
 59653 ms  0x6c80 fd:0x7f6265c40340
 59653 ms  0x6c80 PR_Close()
 59653 ms  0x6c80 fd:0x7f6265cc7670
 59654 ms  0x6c80 PR_Close()
 59654 ms  0x6c80 fd:0x7f624d73f5e0
 59654 ms     | 0x6c80 PK11_Encrypt()
 59654 ms     | 0x6c80 symkey:0x7f626df2f080
 59654 ms  0x6c80 PR_Close()
 59654 ms  0x6c80 fd:0x7f6265cc7040
 59654 ms  0x6c80 PR_Close()
 59654 ms  0x6c80 fd:0x7f624ecf0b80
 59654 ms  0x6c80 PR_Close()
 59654 ms  0x6c80 fd:0x7f625fc75790
 59654 ms     | 0x6c80 PK11_Encrypt()
 59654 ms     | 0x6c80 symkey:0x7f625fcff000
 59654 ms  0x6c80 PR_Close()
 59654 ms  0x6c80 fd:0x7f6262ec11c0
 59658 ms  0x6c80 PR_Close()
 59658 ms  0x6c80 fd:0x7f62608cfb20
 59658 ms  0x6c80 PR_Close()
 59658 ms  0x6c80 fd:0x7f62608cfc70
 59658 ms     | 0x6c80 PK11_Encrypt()
 59658 ms     | 0x6c80 symkey:0x7f6260ddc600
 59658 ms  0x6c80 PR_Close()
 59658 ms  0x6c80 fd:0x7f6262ec1250
 59658 ms     | 0x6c80 PK11_Encrypt()
 59658 ms     | 0x6c80 symkey:0x7f625ff49600
 59659 ms  0x6c80 PR_Close()
 59659 ms  0x6c80 fd:0x7f624affed90
 59659 ms  0x6c80 PR_Close()
 59659 ms  0x6c80 fd:0x7f6260894c10
 59659 ms     | 0x6c80 PK11_Encrypt()
 59659 ms     | 0x6c80 symkey:0x7f62617c2100
 59660 ms  SECKEY_ECParamsToKeySize()
 59660 ms  0x6c80 ret:0x100
 59660 ms  0x6c80 SECKEY_CreateECPrivateKey()
 59660 ms  0x6c80 cx:0x7f6240058c08
 59661 ms     | 0x6c80 EC_ValidatePublicKey()
 59662 ms     | 0x6c80 ret:0x0
 59662 ms  0x6c80 ret:0x7f624ade1020::7f624ade1020  30 ed 8c 60                                      0..`
 59677 ms  0x6c80 PK11_PubDeriveWithKDF()
 59677 ms  0x6c80 seckey:0x7f624ade1020
 59677 ms     | 0x6c80 EC_ValidatePublicKey()
 59678 ms     | 0x6c80 ret:0x0
 59680 ms  0x6c80 ret:0x7f62617c2080
 59680 ms  0x6c80 PK11_DeriveWithFlags()
 59680 ms  0x6c80 basekey:0x7f62617c2080
 59680 ms     | 0x6c80 PK11_DeriveWithTemplate()
 59680 ms  0x6c80 ret:0x7f62617c1f00
 59680 ms  0x6c80 PK11_Derive()
 59680 ms  0x6c80 basekey:0x7f62617c1f00
 59680 ms     | 0x6c80 PK11_DeriveWithTemplate()
 59680 ms  0x6c80 ret:0x7f625ff49480
 59680 ms  0x6c80 SECKEY_DestroyPrivateKey()
 59680 ms  0x6c80 privk:0x7f624ade1020::7f624ade1020  30 ed 8c 60                                      0..`
 59680 ms  0x6c80 privk:0x7f624ade1020::7f624ade1020  e5 e5 e5 e5                                      ....
 59680 ms  0x6c80 PK11_Encrypt()
 59680 ms  0x6c80 symkey:0x7f62617c2280
 59680 ms  0x6c80 PR_Close()
 59680 ms  0x6c80 fd:0x7f624b519a60
 59680 ms     | 0x6c80 PK11_Encrypt()
 59680 ms     | 0x6c80 symkey:0x7f626dd06f00
 59684 ms  0x6c80 PR_Close()
 59684 ms  0x6c80 fd:0x7f626083a520
 59684 ms     | 0x6c80 PK11_Encrypt()
 59684 ms     | 0x6c80 symkey:0x7f6265baf900
 59685 ms  0x6c80 PR_Close()
 59685 ms  0x6c80 fd:0x7f6269eabbe0
 59685 ms     | 0x6c80 PK11_Encrypt()
 59685 ms     | 0x6c80 symkey:0x7f6265ff1800
 59685 ms  0x6c80 PR_Close()
 59685 ms  0x6c80 fd:0x7f6260a4a0d0
 59685 ms     | 0x6c80 PK11_Encrypt()
 59685 ms     | 0x6c80 symkey:0x7f625fcc0a80
 59685 ms  0x6c80 PR_Close()
 59685 ms  0x6c80 fd:0x7f62709498e0
 59686 ms     | 0x6c80 PK11_Encrypt()
 59686 ms     | 0x6c80 symkey:0x7f626d268b80
 59686 ms  0x6c80 PR_Close()
 59686 ms  0x6c80 fd:0x7f624b5195e0
 59686 ms     | 0x6c80 PK11_Encrypt()
 59686 ms     | 0x6c80 symkey:0x7f626f8fd100
 59690 ms  0x6c80 PR_Close()
 59690 ms  0x6c80 fd:0x7f625fc4f370
 59690 ms     | 0x6c80 PK11_Encrypt()
 59690 ms     | 0x6c80 symkey:0x7f625fca8a80
 59690 ms  0x6c80 PR_Close()
 59690 ms  0x6c80 fd:0x7f6261bd5d60
 59690 ms     | 0x6c80 PK11_Encrypt()
 59690 ms     | 0x6c80 symkey:0x7f6265877400
 59691 ms  0x6c80 PR_Close()
 59691 ms  0x6c80 fd:0x7f62699b7460
 59691 ms     | 0x6c80 PK11_Encrypt()
 59691 ms     | 0x6c80 symkey:0x7f625fcc0c80
 59691 ms  0x6c80 PR_Close()
 59691 ms  0x6c80 fd:0x7f625fc75160
 59691 ms     | 0x6c80 PK11_Encrypt()
 59691 ms     | 0x6c80 symkey:0x7f625fc9a880
 59691 ms  0x6c80 PR_Close()
 59691 ms  0x6c80 fd:0x7f624b40dd90
 59691 ms     | 0x6c80 PK11_Encrypt()
 59691 ms     | 0x6c80 symkey:0x7f626eecc780
 59691 ms  0x6c80 PR_Close()
 59691 ms  0x6c80 fd:0x7f6240371af0
 59692 ms     | 0x6c80 PK11_Encrypt()
 59692 ms     | 0x6c80 symkey:0x7f626ee48700
 59692 ms  0x6c80 PR_Close()
 59692 ms  0x6c80 fd:0x7f624ecf0850
 59692 ms     | 0x6c80 PK11_Encrypt()
 59692 ms     | 0x6c80 symkey:0x7f624ecf3a00
 59692 ms  0x6c80 PR_Close()
 59692 ms  0x6c80 fd:0x7f626eab8b20
 59692 ms     | 0x6c80 PK11_Encrypt()
 59692 ms     | 0x6c80 symkey:0x7f626d268880
 59692 ms  0x6c80 PR_Close()
 59692 ms  0x6c80 fd:0x7f624ec7beb0
 59692 ms     | 0x6c80 PK11_Encrypt()
 59692 ms     | 0x6c80 symkey:0x7f626cbfff00
 59693 ms  0x6c80 PR_Close()
 59693 ms  0x6c80 fd:0x7f624d73ffd0
 59693 ms     | 0x6c80 PK11_Encrypt()
 59693 ms     | 0x6c80 symkey:0x7f626ead0f00
 59693 ms  0x6c80 PR_Close()
 59693 ms  0x6c80 fd:0x7f62699a5d00
 59693 ms     | 0x6c80 PK11_Encrypt()
 59693 ms     | 0x6c80 symkey:0x7f626cca1400
 59693 ms  0x6c80 PR_Close()
 59693 ms  0x6c80 fd:0x7f6261bd5bb0
 59693 ms     | 0x6c80 PK11_Encrypt()
 59693 ms     | 0x6c80 symkey:0x7f626089d800
 59694 ms  0x6c80 PR_Close()
 59694 ms  0x6c80 fd:0x7f624d73fb50
 59694 ms     | 0x6c80 PK11_Encrypt()
 59694 ms     | 0x6c80 symkey:0x7f626ea07e80
 59696 ms  0x6c80 SSL_ImportFD()
 59696 ms  0x6c80 ret:0x7f6240371ee0
 59696 ms  0x6c80 SSL_AuthCertificateHook()
 59696 ms  0x6c80 fd:0x7f6240371ee0
 59696 ms  0x6c80 ret:0x0
 59696 ms  0x6c80 PR_Connect()
 59696 ms  0x6c80 fd:0x7f6240371ee0
 59696 ms  0x6c80 PR_Connect()
 59696 ms  0x6c80 fd:0x7f6240371160
 59696 ms  0x6c80 SSL_ImportFD()
 59696 ms  0x6c80 ret:0x7f6240371b20
 59696 ms  0x6c80 SSL_AuthCertificateHook()
 59696 ms  0x6c80 fd:0x7f6240371b20
 59696 ms  0x6c80 ret:0x0
 59696 ms  0x6c80 PR_Connect()
 59696 ms  0x6c80 fd:0x7f6240371b20
 59697 ms  0x6c80 SSL_ImportFD()
 59697 ms  0x6c80 ret:0x7f624b1e5610
 59697 ms  0x6c80 SSL_AuthCertificateHook()
 59697 ms  0x6c80 fd:0x7f624b1e5610
 59697 ms  0x6c80 ret:0x0
 59697 ms  0x6c80 PR_Connect()
 59697 ms  0x6c80 fd:0x7f624b1e5610
 59713 ms  0x6c80 SSL_ImportFD()
 59713 ms  0x6c80 ret:0x7f624b1e59a0
 59713 ms  0x6c80 SSL_AuthCertificateHook()
 59713 ms  0x6c80 fd:0x7f624b1e59a0
 59713 ms  0x6c80 ret:0x0
 59713 ms  0x6c80 PR_Connect()
 59713 ms  0x6c80 fd:0x7f624b1e59a0
 59729 ms  0x6c80 SSL_ImportFD()
 59729 ms  0x6c80 ret:0x7f624b1e5be0
 59729 ms  0x6c80 SSL_AuthCertificateHook()
 59729 ms  0x6c80 fd:0x7f624b1e5be0
 59729 ms  0x6c80 ret:0x0
 59730 ms  0x6c80 PR_Connect()
 59730 ms  0x6c80 fd:0x7f624b1e5be0
           /* TID 0x6c75 */
 59745 ms  0x6c75 PR_Close()
 59745 ms  0x6c75 fd:0x7f62617c4340
 59745 ms  0x6c75 PR_Close()
 59745 ms  0x6c75 fd:0x7f624b1e5e80
 59746 ms  0x6c75 PR_Close()
 59746 ms  0x6c75 fd:0x7f624b1e5ee0
 59746 ms  0x6c75 PR_Close()
 59746 ms  0x6c75 fd:0x7f624b1e5e80
 59747 ms  0x6c75 PR_Close()
 59747 ms  0x6c75 fd:0x7f624b1e5ee0
 59747 ms  0x6c75 PR_Close()
 59747 ms  0x6c75 fd:0x7f624b1e5e80
           /* TID 0x6c9c */
 59751 ms  0x6c9c PR_Close()
 59751 ms  0x6c9c fd:0x7f624b1e5f40
           /* TID 0x6c75 */
 59768 ms  0x6c75 PR_Close()
 59768 ms  0x6c75 fd:0x7f624b1e5ee0
 59768 ms  0x6c75 PR_Close()
 59768 ms  0x6c75 fd:0x7f624b1fae20
 59769 ms  0x6c75 PR_Close()
 59769 ms  0x6c75 fd:0x7f624b1e5ee0
 59769 ms  0x6c75 PR_Close()
 59769 ms  0x6c75 fd:0x7f624b1fae20
 59769 ms  0x6c75 PR_Close()
 59769 ms  0x6c75 fd:0x7f626acc89a0
 59769 ms  0x6c75 PR_Close()
 59769 ms  0x6c75 fd:0x7f626acc88b0
 59769 ms  0x6c75 PR_Close()
 59769 ms  0x6c75 fd:0x7f626acc8a60
 59772 ms  0x6c75 PR_Close()
 59772 ms  0x6c75 fd:0x7f624b1fae50
 59773 ms  0x6c75 PR_Close()
 59773 ms  0x6c75 fd:0x7f624b1fae50
 59775 ms  0x6c75 PR_Close()
 59775 ms  0x6c75 fd:0x7f624b1e5ee0
 59775 ms  0x6c75 PR_Close()
 59775 ms  0x6c75 fd:0x7f624b1faee0
 59776 ms  0x6c75 PR_Close()
 59776 ms  0x6c75 fd:0x7f624b1e5ee0
 59776 ms  0x6c75 PR_Close()
 59776 ms  0x6c75 fd:0x7f624b1faee0
 59778 ms  0x6c75 PR_Close()
 59778 ms  0x6c75 fd:0x7f624b1faf10
 59780 ms  0x6c75 PR_Close()
 59780 ms  0x6c75 fd:0x7f624b1faf10
 59782 ms  0x6c75 PR_Close()
 59782 ms  0x6c75 fd:0x7f624b1e5ee0
 59782 ms  0x6c75 PR_Close()
 59782 ms  0x6c75 fd:0x7f624b1faf70
 59782 ms  0x6c75 PR_Close()
 59782 ms  0x6c75 fd:0x7f624b1e5ee0
 59782 ms  0x6c75 PR_Close()
 59782 ms  0x6c75 fd:0x7f624b1faf70
 59785 ms  0x6c75 PR_Close()
 59785 ms  0x6c75 fd:0x7f624b1fafa0
 59786 ms  0x6c75 PR_Close()
 59786 ms  0x6c75 fd:0x7f624b1fafa0
 59792 ms  0x6c75 PR_Close()
 59792 ms  0x6c75 fd:0x7f624b259220
 59793 ms  0x6c75 PR_Close()
 59793 ms  0x6c75 fd:0x7f624b259220
 59795 ms  0x6c75 PR_Close()
 59795 ms  0x6c75 fd:0x7f624b259250
 59802 ms  0x6c75 PR_Close()
 59802 ms  0x6c75 fd:0x7f624b1e5ee0
 59802 ms  0x6c75 PR_Close()
 59802 ms  0x6c75 fd:0x7f624b259d00
           /* TID 0x6c80 */
 59804 ms  0x6c80 PK11_Encrypt()
 59804 ms  0x6c80 symkey:0x7f626d29c580
           /* TID 0x6c9c */
 59808 ms  0x6c9c PR_Close()
 59808 ms  0x6c9c fd:0x7f624b1e5f40
           /* TID 0x6c88 */
 59811 ms  0x6c88 PR_Close()
 59811 ms  0x6c88 fd:0x7f624b1faa60
           /* TID 0x6d25 */
 59811 ms  0x6d25 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 59811 ms  0x6d25 ret:0x0
           /* TID 0x6c80 */
 59811 ms  0x6c80 SSL_AuthCertificateComplete()
 59811 ms  0x6c80 fd:0x7f62400bac70
 59811 ms  0x6c80 err:0x0
 59811 ms  0x6c80 PR_Close()
 59811 ms  0x6c80 fd:0x7f62400bac70
 59811 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 59811 ms     | 0x6c80 privk:0x7f624abda820::7f624abda820  30 38 0a 6a                                      08.j
 59812 ms     | 0x6c80 privk:0x7f624abda820::7f624abda820  e5 e5 e5 e5                                      ....
 59812 ms     | 0x6c80 SECKEY_DestroyPrivateKey()
 59812 ms     | 0x6c80 privk:0x7f624abd8820::7f624abd8820  80 73 13 66                                      .s.f
 59812 ms     | 0x6c80 privk:0x7f624abd8820::7f624abd8820  e5 e5 e5 e5                                      ....
           /* TID 0x6c88 */
 59813 ms  0x6c88 PR_Close()
 59813 ms  0x6c88 fd:0x7f624b2593a0
 59813 ms  0x6c88 PR_Close()
 59813 ms  0x6c88 fd:0x7f624b259400
 59814 ms  0x6c88 PR_Close()
 59814 ms  0x6c88 fd:0x7f624b2598b0
 59814 ms  0x6c88 PR_Close()
 59814 ms  0x6c88 fd:0x7f624b259a60
 59814 ms  0x6c88 PR_Close()
 59814 ms  0x6c88 fd:0x7f624b259b80
           /* TID 0x6c9c */
 59837 ms  0x6c9c PR_Close()
 59837 ms  0x6c9c fd:0x7f62400ba850
           /* TID 0x6c7a */
 59844 ms  0x6c7a PR_Close()
 59844 ms  0x6c7a fd:0x7f626ee0cc70
           /* TID 0x6c80 */
 59845 ms  0x6c80 PR_Close()
 59845 ms  0x6c80 fd:0x7f624b1e59a0
 59845 ms  0x6c80 PR_Close()
 59845 ms  0x6c80 fd:0x7f624b1e5610
 59845 ms  0x6c80 PR_Close()
 59845 ms  0x6c80 fd:0x7f6240371ee0
 59845 ms  0x6c80 PR_Close()
 59845 ms  0x6c80 fd:0x7f6240371160
 59845 ms  0x6c80 PR_Close()
 59845 ms  0x6c80 fd:0x7f6240371b20
 59845 ms  0x6c80 PR_Close()
 59845 ms  0x6c80 fd:0x7f624b1e5be0
 59845 ms  0x6c80 PR_Close()
 59845 ms  0x6c80 fd:0x7f6260a4af70
           /* TID 0x6c9c */
 59849 ms  0x6c9c PR_Close()
 59849 ms  0x6c9c fd:0x7f62400ba820
           /* TID 0x6c80 */
 59861 ms  0x6c80 PR_Close()
 59861 ms  0x6c80 fd:0x7f624b40d400
 59861 ms     | 0x6c80 PK11_Encrypt()
 59861 ms     | 0x6c80 symkey:0x7f626d29c580
 59863 ms  0x6c80 PR_Close()
 59863 ms  0x6c80 fd:0x7f6260a4a7c0
           /* TID 0x6c75 */
 59864 ms  0x6c75 PR_Close()
 59864 ms  0x6c75 fd:0x7f624b1e5ee0
 59864 ms  0x6c75 PR_Close()
 59864 ms  0x6c75 fd:0x7f6240371eb0
           /* TID 0x6ccf */
 59864 ms  0x6ccf PR_Close()
 59864 ms  0x6ccf fd:0x7f624affe0a0
 59865 ms  0x6ccf PR_Close()
 59865 ms  0x6ccf fd:0x7f62400ba820
 59865 ms  0x6ccf PR_Close()
 59865 ms  0x6ccf fd:0x7f62400ba820
 59865 ms  0x6ccf PR_Close()
 59865 ms  0x6ccf fd:0x7f62400ba820
           /* TID 0x6c9c */
 59865 ms  0x6c9c PR_Close()
 59865 ms  0x6c9c fd:0x7f624af81550
           /* TID 0x6c88 */
 59871 ms  0x6c88 PR_Close()
 59871 ms  0x6c88 fd:0x7f624affeee0
 59872 ms  0x6c88 PR_Close()
 59872 ms  0x6c88 fd:0x7f624affeee0
           /* TID 0x6c7a */
 59883 ms  0x6c7a PR_Close()
 59883 ms  0x6c7a fd:0x7f62604440a0
           /* TID 0x6c75 */
 59908 ms  0x6c75 PR_Close()
 59908 ms  0x6c75 fd:0x7f624af811f0
 59908 ms  0x6c75 PR_Close()
 59908 ms  0x6c75 fd:0x7f624b1e5490
           /* TID 0x6c9c */
 59909 ms  0x6c9c PR_Close()
 59909 ms  0x6c9c fd:0x7f624b1e5520
           /* TID 0x6c7a */
 59912 ms  0x6c7a PR_Close()
 59912 ms  0x6c7a fd:0x7f6265e2f8b0
           /* TID 0x6c9c */
 59912 ms  0x6c9c PR_Close()
 59912 ms  0x6c9c fd:0x7f624affef10
           /* TID 0x6c88 */
 59935 ms  0x6c88 PR_Close()
 59935 ms  0x6c88 fd:0x7f624affef10
 59935 ms  0x6c88 PR_Close()
 59935 ms  0x6c88 fd:0x7f624b1e5220
 59935 ms  0x6c88 PR_Close()
 59935 ms  0x6c88 fd:0x7f624b1e5430
 59935 ms  0x6c88 PR_Close()
 59935 ms  0x6c88 fd:0x7f624b1e5520
 59935 ms  0x6c88 PR_Close()
 59935 ms  0x6c88 fd:0x7f624b1e5610
 59935 ms  0x6c88 PR_Close()
 59935 ms  0x6c88 fd:0x7f624b1e5ac0
 59935 ms  0x6c88 PR_Close()
 59935 ms  0x6c88 fd:0x7f624b1e5b20
 59935 ms  0x6c88 PR_Close()
 59935 ms  0x6c88 fd:0x7f624b1e5b80
 59935 ms  0x6c88 PR_Close()
 59935 ms  0x6c88 fd:0x7f624b1e5c40
 59935 ms  0x6c88 PR_Close()
 59935 ms  0x6c88 fd:0x7f624b2595b0
           /* TID 0x6c9c */
 59969 ms  0x6c9c PR_Close()
 59969 ms  0x6c9c fd:0x7f62400ba160
 59971 ms  0x6c9c PR_Close()
 59971 ms  0x6c9c fd:0x7f62400ba160
 59982 ms  0x6c9c PR_Close()
 59982 ms  0x6c9c fd:0x7f62400ba5b0
           /* TID 0x6c75 */
 60159 ms  0x6c75 PR_Close()
 60159 ms  0x6c75 fd:0x7f62400baf10
 60159 ms  0x6c75 PR_Close()
 60159 ms  0x6c75 fd:0x7f62400baf10
 60164 ms  0x6c75 PR_Close()
 60164 ms  0x6c75 fd:0x7f6287fda130
 60165 ms  0x6c75 PR_Close()
 60165 ms  0x6c75 fd:0x7f6287fda190
Process terminated
