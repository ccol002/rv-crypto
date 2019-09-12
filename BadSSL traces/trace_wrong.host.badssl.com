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
  1504 ms  0x2ab6 SSL_ImportFD()
  1504 ms  0x2ab6 ret:0x7efdc42e3400
  1504 ms  0x2ab6 SSL_AuthCertificateHook()
  1504 ms  0x2ab6 fd:0x7efdc42e3400
  1504 ms  0x2ab6 ret:0x0
  1504 ms  0x2ab6 PR_Connect()
  1504 ms  0x2ab6 fd:0x7efdc42e3400
  1659 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  1659 ms  0x2ab6 cx:0x7efdc6b2afc8
  1661 ms     | 0x2ab6 EC_ValidatePublicKey()
  1661 ms     | 0x2ab6 ret:0x0
  1661 ms  0x2ab6 ret:0x7efdc92c5820::7efdc92c5820  60 c5 20 c4                                      `. .
  1661 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  1661 ms  0x2ab6 cx:0x7efdc6b2afc8
  1663 ms     | 0x2ab6 EC_ValidatePublicKey()
  1667 ms     | 0x2ab6 ret:0x0
  1667 ms  0x2ab6 ret:0x7efdcc29a820::7efdcc29a820  40 c7 20 c4                                      @. .
  1827 ms  SECKEY_ECParamsToKeySize()
  1827 ms  0x2ab6 ret:0x100
  1827 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  1827 ms  0x2ab6 cx:0x7efdc6b2afc8
  1828 ms     | 0x2ab6 EC_ValidatePublicKey()
  1833 ms     | 0x2ab6 ret:0x0
  1834 ms  0x2ab6 ret:0x7efdcc2a1820::7efdcc2a1820  30 33 5b ba                                      03[.
  1834 ms  0x2ab6 PK11_PubDeriveWithKDF()
  1834 ms  0x2ab6 seckey:0x7efdcc2a1820
  1834 ms     | 0x2ab6 EC_ValidatePublicKey()
  1837 ms     | 0x2ab6 ret:0x0
  1841 ms  0x2ab6 ret:0x7efdbe1d0f00
  1841 ms  0x2ab6 PK11_DeriveWithFlags()
  1841 ms  0x2ab6 basekey:0x7efdbe1d0f00
  1841 ms     | 0x2ab6 PK11_DeriveWithTemplate()
  1841 ms  0x2ab6 ret:0x7efdbe1d0e00
  1841 ms  0x2ab6 PK11_Derive()
  1841 ms  0x2ab6 basekey:0x7efdbe1d0e00
  1841 ms     | 0x2ab6 PK11_DeriveWithTemplate()
  1841 ms  0x2ab6 ret:0x7efdbe15da00
  1841 ms  0x2ab6 SECKEY_DestroyPrivateKey()
  1841 ms  0x2ab6 privk:0x7efdcc2a1820::7efdcc2a1820  30 33 5b ba                                      03[.
  1841 ms  0x2ab6 privk:0x7efdcc2a1820::7efdcc2a1820  e5 e5 e5 e5                                      ....
  1841 ms  0x2ab6 PK11_Encrypt()
  1841 ms  0x2ab6 symkey:0x7efdba2fcc80
  1843 ms  0x2ab6 SSL_AuthCertificateComplete()
  1843 ms  0x2ab6 fd:0x7efdc42e3400
  1843 ms  0x2ab6 err:0xffffd00c
  1843 ms     | 0x2ab6 PK11_Encrypt()
  1843 ms     | 0x2ab6 symkey:0x7efdba2fcc80
  1852 ms  0x2ab6 PR_Close()
  1852 ms  0x2ab6 fd:0x7efdc42e3400
  1852 ms     | 0x2ab6 SECKEY_DestroyPrivateKey()
  1852 ms     | 0x2ab6 privk:0x7efdcc29a820::7efdcc29a820  40 c7 20 c4                                      @. .
  1852 ms     | 0x2ab6 privk:0x7efdcc29a820::7efdcc29a820  e5 e5 e5 e5                                      ....
  1852 ms     | 0x2ab6 SECKEY_DestroyPrivateKey()
  1852 ms     | 0x2ab6 privk:0x7efdc92c5820::7efdc92c5820  60 c5 20 c4                                      `. .
  1852 ms     | 0x2ab6 privk:0x7efdc92c5820::7efdc92c5820  e5 e5 e5 e5                                      ....
