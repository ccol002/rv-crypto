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
           /* TID 0x6ea2 */
    63 ms  0x6ea2 PR_Close()
    63 ms  0x6ea2 fd:0x7fc9296c10d0
    63 ms     | 0x6ea2 PK11_Encrypt()
    63 ms     | 0x6ea2 symkey:0x7fc94e717900
           /* TID 0x6eaa */
    68 ms  0x6eaa PR_Close()
    68 ms  0x6eaa fd:0x7fc9262daca0
           /* TID 0x6ea2 */
   462 ms  0x6ea2 SSL_ImportFD()
   463 ms  0x6ea2 ret:0x7fc9354ada60
   463 ms  0x6ea2 SSL_AuthCertificateHook()
   463 ms  0x6ea2 fd:0x7fc9354ada60
   463 ms  0x6ea2 ret:0x0
   463 ms  0x6ea2 PR_Connect()
   463 ms  0x6ea2 fd:0x7fc9354ada60
           /* TID 0x6f06 */
   599 ms  0x6f06 PR_Close()
   599 ms  0x6f06 fd:0x7fc9354ad910
   601 ms  0x6f06 PR_Close()
   601 ms  0x6f06 fd:0x7fc9354ad910
           /* TID 0x6ea2 */
   670 ms  0x6ea2 SECKEY_CreateECPrivateKey()
   670 ms  0x6ea2 cx:0x7fc9264d1588
   672 ms     | 0x6ea2 EC_ValidatePublicKey()
   672 ms     | 0x6ea2 ret:0x0
   672 ms  0x6ea2 ret:0x7fc926456020::7fc926456020  b0 9f e3 27                                      ...'
   672 ms  0x6ea2 SECKEY_CreateECPrivateKey()
   672 ms  0x6ea2 cx:0x7fc9264d1588
   675 ms     | 0x6ea2 EC_ValidatePublicKey()
   679 ms     | 0x6ea2 ret:0x0
   679 ms  0x6ea2 ret:0x7fc926458020::7fc926458020  f0 51 4f 26                                      .QO&
   893 ms  SECKEY_ECParamsToKeySize()
   893 ms  0x6ea2 ret:0x100
   894 ms  0x6ea2 SECKEY_CreateECPrivateKey()
   894 ms  0x6ea2 cx:0x7fc9264d1588
   896 ms     | 0x6ea2 EC_ValidatePublicKey()
   900 ms     | 0x6ea2 ret:0x0
   900 ms  0x6ea2 ret:0x7fc926461020::7fc926461020  30 58 4f 26                                      0XO&
   900 ms  0x6ea2 PK11_PubDeriveWithKDF()
   900 ms  0x6ea2 seckey:0x7fc926461020
   900 ms     | 0x6ea2 EC_ValidatePublicKey()
   904 ms     | 0x6ea2 ret:0x0
   908 ms  0x6ea2 ret:0x7fc9354b5080
   908 ms  0x6ea2 PK11_DeriveWithFlags()
   908 ms  0x6ea2 basekey:0x7fc9354b5080
   908 ms     | 0x6ea2 PK11_DeriveWithTemplate()
   908 ms  0x6ea2 ret:0x7fc93542cf80
   908 ms  0x6ea2 PK11_Derive()
   908 ms  0x6ea2 basekey:0x7fc93542cf80
   908 ms     | 0x6ea2 PK11_DeriveWithTemplate()
   908 ms  0x6ea2 ret:0x7fc927e3cc00
   908 ms  0x6ea2 SECKEY_DestroyPrivateKey()
   908 ms  0x6ea2 privk:0x7fc926461020::7fc926461020  30 58 4f 26                                      0XO&
   908 ms  0x6ea2 privk:0x7fc926461020::7fc926461020  e5 e5 e5 e5                                      ....
   909 ms  0x6ea2 PK11_Encrypt()
   909 ms  0x6ea2 symkey:0x7fc9361fec80
   909 ms  0x6ea2 PR_Connect()
   909 ms  0x6ea2 fd:0x7fc9354adca0
           /* TID 0x6f06 */
   914 ms  0x6f06 PR_Close()
   914 ms  0x6f06 fd:0x7fc9354adc10
           /* TID 0x6eaa */
   963 ms  0x6eaa PR_Close()
   963 ms  0x6eaa fd:0x7fc9354ad9d0
           /* TID 0x6eff */
   963 ms  0x6eff _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   963 ms  0x6eff ret:0x0
           /* TID 0x6ea2 */
   964 ms  0x6ea2 SSL_AuthCertificateComplete()
   964 ms  0x6ea2 fd:0x7fc9354ada60
   964 ms  0x6ea2 err:0x0
   964 ms  0x6ea2 PK11_Encrypt()
   964 ms  0x6ea2 symkey:0x7fc9361fec80
  1116 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  1116 ms  0x6ea2 privk:0x7fc926458020::7fc926458020  f0 51 4f 26                                      .QO&
  1117 ms  0x6ea2 privk:0x7fc926458020::7fc926458020  e5 e5 e5 e5                                      ....
  1117 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  1117 ms  0x6ea2 privk:0x7fc926456020::7fc926456020  b0 9f e3 27                                      ...'
  1117 ms  0x6ea2 privk:0x7fc926456020::7fc926456020  e5 e5 e5 e5                                      ....
  1330 ms  0x6ea2 SSL_ImportFD()
  1330 ms  0x6ea2 ret:0x7fc9354addf0
  1330 ms  0x6ea2 SSL_AuthCertificateHook()
  1330 ms  0x6ea2 fd:0x7fc9354addf0
  1330 ms  0x6ea2 ret:0x0
  1330 ms  0x6ea2 PR_Connect()
  1330 ms  0x6ea2 fd:0x7fc9354addf0
  1356 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  1356 ms  0x6ea2 cx:0x7fc9264d18c8
  1357 ms     | 0x6ea2 EC_ValidatePublicKey()
  1357 ms     | 0x6ea2 ret:0x0
  1357 ms  0x6ea2 ret:0x7fc926457820::7fc926457820  50 56 4f 26                                      PVO&
  1357 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  1357 ms  0x6ea2 cx:0x7fc9264d18c8
  1358 ms     | 0x6ea2 EC_ValidatePublicKey()
  1361 ms     | 0x6ea2 ret:0x0
  1361 ms  0x6ea2 ret:0x7fc92645d820::7fc92645d820  30 58 4f 26                                      0XO&
  1412 ms  SECKEY_ECParamsToKeySize()
  1414 ms  0x6ea2 ret:0x100
  1414 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  1414 ms  0x6ea2 cx:0x7fc9264d18c8
  1416 ms     | 0x6ea2 EC_ValidatePublicKey()
           /* TID 0x6eff */
  1417 ms  0x6eff _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x6ea2 */
  1420 ms     | 0x6ea2 ret:0x0
           /* TID 0x6eff */
  1420 ms  0x6eff ret:0x0
           /* TID 0x6ea2 */
  1421 ms  0x6ea2 ret:0x7fc926461020::7fc926461020  00 5b 4f 26                                      .[O&
  1421 ms  0x6ea2 PK11_PubDeriveWithKDF()
  1421 ms  0x6ea2 seckey:0x7fc926461020
  1421 ms     | 0x6ea2 EC_ValidatePublicKey()
  1425 ms     | 0x6ea2 ret:0x0
  1428 ms  0x6ea2 ret:0x7fc9354b5080
  1428 ms  0x6ea2 PK11_DeriveWithFlags()
  1428 ms  0x6ea2 basekey:0x7fc9354b5080
  1428 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  1428 ms  0x6ea2 ret:0x7fc9264d6e80
  1429 ms  0x6ea2 PK11_Derive()
  1429 ms  0x6ea2 basekey:0x7fc9264d6e80
  1429 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  1429 ms  0x6ea2 ret:0x7fc9264d6f80
  1429 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  1429 ms  0x6ea2 privk:0x7fc926461020::7fc926461020  00 5b 4f 26                                      .[O&
  1429 ms  0x6ea2 privk:0x7fc926461020::7fc926461020  e5 e5 e5 e5                                      ....
  1429 ms  0x6ea2 PK11_Encrypt()
  1429 ms  0x6ea2 symkey:0x7fc91552c100
  1429 ms  0x6ea2 SSL_AuthCertificateComplete()
  1429 ms  0x6ea2 fd:0x7fc9354addf0
  1429 ms  0x6ea2 err:0x0
  1430 ms  0x6ea2 PK11_Encrypt()
  1430 ms  0x6ea2 symkey:0x7fc91552c100
  1482 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  1482 ms  0x6ea2 privk:0x7fc92645d820::7fc92645d820  30 58 4f 26                                      0XO&
  1483 ms  0x6ea2 privk:0x7fc92645d820::7fc92645d820  e5 e5 e5 e5                                      ....
  1483 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  1483 ms  0x6ea2 privk:0x7fc926457820::7fc926457820  50 56 4f 26                                      PVO&
  1483 ms  0x6ea2 privk:0x7fc926457820::7fc926457820  e5 e5 e5 e5                                      ....
  1487 ms  0x6ea2 PK11_Encrypt()
  1487 ms  0x6ea2 symkey:0x7fc91552c100
  1516 ms  0x6ea2 PK11_Encrypt()
  1516 ms  0x6ea2 symkey:0x7fc91552c100
  1547 ms  0x6ea2 PK11_Encrypt()
  1547 ms  0x6ea2 symkey:0x7fc91552c100
  1577 ms  0x6ea2 PK11_Encrypt()
  1577 ms  0x6ea2 symkey:0x7fc91552c100
  1691 ms  0x6ea2 PK11_Encrypt()
  1691 ms  0x6ea2 symkey:0x7fc91552c100
  1724 ms  0x6ea2 PK11_Encrypt()
  1724 ms  0x6ea2 symkey:0x7fc91552c100
  1756 ms  0x6ea2 PK11_Encrypt()
  1756 ms  0x6ea2 symkey:0x7fc91552c100
           /* TID 0x6ef9 */
  1788 ms  0x6ef9 PR_Close()
  1788 ms  0x6ef9 fd:0x7fc9155034c0
  1788 ms  0x6ef9 PR_Close()
  1788 ms  0x6ef9 fd:0x7fc915503520
  1788 ms  0x6ef9 PR_Close()
  1788 ms  0x6ef9 fd:0x7fc9155034c0
  1788 ms  0x6ef9 PR_Close()
  1788 ms  0x6ef9 fd:0x7fc915503520
  1788 ms  0x6ef9 PR_Close()
  1788 ms  0x6ef9 fd:0x7fc9155034c0
  1788 ms  0x6ef9 PR_Close()
  1788 ms  0x6ef9 fd:0x7fc915503520
  1788 ms  0x6ef9 PR_Close()
  1788 ms  0x6ef9 fd:0x7fc9155034c0
  1788 ms  0x6ef9 PR_Close()
  1788 ms  0x6ef9 fd:0x7fc915503520
  1789 ms  0x6ef9 PR_Close()
  1789 ms  0x6ef9 fd:0x7fc9155034c0
  1789 ms  0x6ef9 PR_Close()
  1789 ms  0x6ef9 fd:0x7fc915503520
  1789 ms  0x6ef9 PR_Close()
  1789 ms  0x6ef9 fd:0x7fc9155034c0
  1789 ms  0x6ef9 PR_Close()
  1789 ms  0x6ef9 fd:0x7fc915503520
  1789 ms  0x6ef9 PR_Close()
  1789 ms  0x6ef9 fd:0x7fc9155034c0
  1789 ms  0x6ef9 PR_Close()
  1789 ms  0x6ef9 fd:0x7fc915503520
  1789 ms  0x6ef9 PR_Close()
  1789 ms  0x6ef9 fd:0x7fc9155034c0
  1790 ms  0x6ef9 PR_Close()
  1790 ms  0x6ef9 fd:0x7fc915503520
  1790 ms  0x6ef9 PR_Close()
  1790 ms  0x6ef9 fd:0x7fc9155034c0
  1790 ms  0x6ef9 PR_Close()
  1790 ms  0x6ef9 fd:0x7fc915503520
  1790 ms  0x6ef9 PR_Close()
  1790 ms  0x6ef9 fd:0x7fc9155034c0
  1790 ms  0x6ef9 PR_Close()
  1790 ms  0x6ef9 fd:0x7fc915503520
  1790 ms  0x6ef9 PR_Close()
  1790 ms  0x6ef9 fd:0x7fc9155034c0
  1790 ms  0x6ef9 PR_Close()
  1790 ms  0x6ef9 fd:0x7fc915503520
  1790 ms  0x6ef9 PR_Close()
  1790 ms  0x6ef9 fd:0x7fc9155034c0
  1790 ms  0x6ef9 PR_Close()
  1790 ms  0x6ef9 fd:0x7fc915503520
  1790 ms  0x6ef9 PR_Close()
  1790 ms  0x6ef9 fd:0x7fc9155034c0
  1791 ms  0x6ef9 PR_Close()
  1791 ms  0x6ef9 fd:0x7fc915503520
  1791 ms  0x6ef9 PR_Close()
  1791 ms  0x6ef9 fd:0x7fc9155034c0
  1791 ms  0x6ef9 PR_Close()
  1791 ms  0x6ef9 fd:0x7fc915503520
  1794 ms  0x6ef9 PR_Close()
  1794 ms  0x6ef9 fd:0x7fc9155034c0
  1794 ms  0x6ef9 PR_Close()
  1794 ms  0x6ef9 fd:0x7fc915503490
  1797 ms  0x6ef9 PR_Close()
  1797 ms  0x6ef9 fd:0x7fc915503490
  1797 ms  0x6ef9 PR_Close()
  1797 ms  0x6ef9 fd:0x7fc9155034c0
  1800 ms  0x6ef9 PR_Close()
  1800 ms  0x6ef9 fd:0x7fc9155034c0
  1800 ms  0x6ef9 PR_Close()
  1800 ms  0x6ef9 fd:0x7fc9155034c0
  1802 ms  0x6ef9 PR_Close()
  1802 ms  0x6ef9 fd:0x7fc9155034c0
  1803 ms  0x6ef9 PR_Close()
  1803 ms  0x6ef9 fd:0x7fc9155034c0
  1862 ms  0x6ef9 PR_Close()
  1862 ms  0x6ef9 fd:0x7fc9155034c0
  1863 ms  0x6ef9 PR_Close()
  1863 ms  0x6ef9 fd:0x7fc9155034c0
  1871 ms  0x6ef9 PR_Close()
  1871 ms  0x6ef9 fd:0x7fc9155034c0
  1871 ms  0x6ef9 PR_Close()
  1871 ms  0x6ef9 fd:0x7fc9155034c0
  1878 ms  0x6ef9 PR_Close()
  1878 ms  0x6ef9 fd:0x7fc9155034c0
  1878 ms  0x6ef9 PR_Close()
  1878 ms  0x6ef9 fd:0x7fc9155034c0
  1880 ms  0x6ef9 PR_Close()
  1880 ms  0x6ef9 fd:0x7fc9155034c0
  1880 ms  0x6ef9 PR_Close()
  1880 ms  0x6ef9 fd:0x7fc9155034c0
           /* TID 0x6ef6 */
  1880 ms  0x6ef6 PR_Close()
  1880 ms  0x6ef6 fd:0x7fc9155034c0
  1880 ms  0x6ef6 PR_Close()
  1880 ms  0x6ef6 fd:0x7fc9155034c0
  1880 ms  0x6ef6 PR_Close()
  1880 ms  0x6ef6 fd:0x7fc9155034c0
  1880 ms  0x6ef6 PR_Close()
  1880 ms  0x6ef6 fd:0x7fc9155034c0
  1880 ms  0x6ef6 PR_Close()
  1880 ms  0x6ef6 fd:0x7fc9155034c0
  1880 ms  0x6ef6 PR_Close()
  1880 ms  0x6ef6 fd:0x7fc9155034c0
  1880 ms  0x6ef6 PR_Close()
  1880 ms  0x6ef6 fd:0x7fc9155034c0
  1880 ms  0x6ef6 PR_Close()
  1880 ms  0x6ef6 fd:0x7fc9155034c0
  1880 ms  0x6ef6 PR_Close()
  1880 ms  0x6ef6 fd:0x7fc9155034c0
  1880 ms  0x6ef6 PR_Close()
  1880 ms  0x6ef6 fd:0x7fc9155034c0
  1880 ms  0x6ef6 PR_Close()
  1880 ms  0x6ef6 fd:0x7fc9155034c0
  1880 ms  0x6ef6 PR_Close()
  1880 ms  0x6ef6 fd:0x7fc9155034c0
  1880 ms  0x6ef6 PR_Close()
  1880 ms  0x6ef6 fd:0x7fc9155034c0
  1880 ms  0x6ef6 PR_Close()
  1880 ms  0x6ef6 fd:0x7fc9155034c0
  1881 ms  0x6ef6 PR_Close()
  1881 ms  0x6ef6 fd:0x7fc9155034c0
           /* TID 0x6f06 */
  2353 ms  0x6f06 PR_Close()
  2353 ms  0x6f06 fd:0x7fc915503460
  2383 ms  0x6f06 PR_Close()
  2383 ms  0x6f06 fd:0x7fc915503460
  2385 ms  0x6f06 PR_Close()
  2385 ms  0x6f06 fd:0x7fc915503460
           /* TID 0x6eaa */
  4172 ms  0x6eaa PR_Close()
  4172 ms  0x6eaa fd:0x7fc915503460
  4172 ms  0x6eaa PR_Close()
  4172 ms  0x6eaa fd:0x7fc9155034f0
           /* TID 0x6ea2 */
  4865 ms  0x6ea2 SSL_ImportFD()
  4865 ms  0x6ea2 ret:0x7fc92797d550
  4865 ms  0x6ea2 SSL_AuthCertificateHook()
  4865 ms  0x6ea2 fd:0x7fc92797d550
  4865 ms  0x6ea2 ret:0x0
  4866 ms  0x6ea2 PR_Connect()
  4866 ms  0x6ea2 fd:0x7fc92797d550
  4949 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  4949 ms  0x6ea2 cx:0x7fc9264d1c08
  4950 ms     | 0x6ea2 EC_ValidatePublicKey()
  4950 ms     | 0x6ea2 ret:0x0
  4950 ms  0x6ea2 ret:0x7fc91549d820::7fc91549d820  40 77 4e 15                                      @wN.
  4950 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  4950 ms  0x6ea2 cx:0x7fc9264d1c08
  4952 ms     | 0x6ea2 EC_ValidatePublicKey()
  4957 ms     | 0x6ea2 ret:0x0
  4958 ms  0x6ea2 ret:0x7fc91549f820::7fc91549f820  10 75 4e 15                                      .uN.
           /* TID 0x6eff */
  5043 ms  0x6eff _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5044 ms  0x6eff ret:0x0
           /* TID 0x6ea2 */
  5047 ms  0x6ea2 SSL_AuthCertificateComplete()
  5047 ms  0x6ea2 fd:0x7fc92797d550
  5047 ms  0x6ea2 err:0x0
  5123 ms  SECKEY_ECParamsToKeySize()
  5123 ms  0x6ea2 ret:0x100
  5123 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  5123 ms  0x6ea2 cx:0x7fc9264d1c08
  5126 ms     | 0x6ea2 EC_ValidatePublicKey()
  5131 ms     | 0x6ea2 ret:0x0
  5131 ms  0x6ea2 ret:0x7fc9154a5020::7fc9154a5020  30 7d 4e 15                                      0}N.
  5132 ms  0x6ea2 PK11_PubDeriveWithKDF()
  5132 ms  0x6ea2 seckey:0x7fc9154a5020
  5132 ms     | 0x6ea2 EC_ValidatePublicKey()
  5137 ms     | 0x6ea2 ret:0x0
  5141 ms  0x6ea2 ret:0x7fc9354b5080
  5141 ms  0x6ea2 PK11_DeriveWithFlags()
  5141 ms  0x6ea2 basekey:0x7fc9354b5080
  5141 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  5141 ms  0x6ea2 ret:0x7fc927962480
  5141 ms  0x6ea2 PK11_Derive()
  5141 ms  0x6ea2 basekey:0x7fc927962480
  5141 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  5141 ms  0x6ea2 ret:0x7fc927962500
  5142 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  5142 ms  0x6ea2 privk:0x7fc9154a5020::7fc9154a5020  30 7d 4e 15                                      0}N.
  5142 ms  0x6ea2 privk:0x7fc9154a5020::7fc9154a5020  e5 e5 e5 e5                                      ....
  5142 ms  0x6ea2 PK11_Encrypt()
  5142 ms  0x6ea2 symkey:0x7fc927962a80
  5145 ms  0x6ea2 PK11_Encrypt()
  5145 ms  0x6ea2 symkey:0x7fc927962a80
  5148 ms  0x6ea2 PK11_Encrypt()
  5148 ms  0x6ea2 symkey:0x7fc927962a80
  5226 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  5226 ms  0x6ea2 privk:0x7fc91549f820::7fc91549f820  10 75 4e 15                                      .uN.
  5227 ms  0x6ea2 privk:0x7fc91549f820::7fc91549f820  e5 e5 e5 e5                                      ....
  5227 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  5227 ms  0x6ea2 privk:0x7fc91549d820::7fc91549d820  40 77 4e 15                                      @wN.
  5227 ms  0x6ea2 privk:0x7fc91549d820::7fc91549d820  e5 e5 e5 e5                                      ....
  5307 ms  0x6ea2 PK11_Encrypt()
  5307 ms  0x6ea2 symkey:0x7fc927962a80
           /* TID 0x6eb9 */
  5730 ms  0x6eb9 PR_Close()
  5730 ms  0x6eb9 fd:0x7fc92797dac0
           /* TID 0x6ea2 */
  6028 ms  0x6ea2 PR_Connect()
  6028 ms  0x6ea2 fd:0x7fc9153ff490
           /* TID 0x6eb9 */
  6527 ms  0x6eb9 PR_Close()
  6527 ms  0x6eb9 fd:0x7fc9153ffca0
           /* TID 0x6ea2 */
  6530 ms  0x6ea2 PK11_Encrypt()
  6530 ms  0x6ea2 symkey:0x7fc927962a80
           /* TID 0x6eb9 */
  7089 ms  0x6eb9 PR_Close()
  7089 ms  0x6eb9 fd:0x7fc9155037f0
           /* TID 0x6ea2 */
  8423 ms  0x6ea2 SSL_ImportFD()
  8423 ms  0x6ea2 ret:0x7fc92b9fea90
  8423 ms  0x6ea2 SSL_AuthCertificateHook()
  8423 ms  0x6ea2 fd:0x7fc92b9fea90
  8423 ms  0x6ea2 ret:0x0
  8424 ms  0x6ea2 PK11_Encrypt()
  8424 ms  0x6ea2 symkey:0x7fc927962a80
  8428 ms  0x6ea2 PK11_Encrypt()
  8428 ms  0x6ea2 symkey:0x7fc927962a80
  8428 ms  0x6ea2 PK11_Encrypt()
  8428 ms  0x6ea2 symkey:0x7fc927962a80
  8428 ms  0x6ea2 PR_Connect()
  8428 ms  0x6ea2 fd:0x7fc92b9fea90
  8429 ms  0x6ea2 SSL_ImportFD()
  8429 ms  0x6ea2 ret:0x7fc92676c3d0
  8429 ms  0x6ea2 SSL_AuthCertificateHook()
  8429 ms  0x6ea2 fd:0x7fc92676c3d0
  8429 ms  0x6ea2 ret:0x0
  8429 ms  0x6ea2 PR_Connect()
  8429 ms  0x6ea2 fd:0x7fc92676c3d0
  8429 ms  0x6ea2 SSL_ImportFD()
  8429 ms  0x6ea2 ret:0x7fc927b7aee0
  8429 ms  0x6ea2 SSL_AuthCertificateHook()
  8429 ms  0x6ea2 fd:0x7fc927b7aee0
  8429 ms  0x6ea2 ret:0x0
  8429 ms  0x6ea2 PR_Connect()
  8429 ms  0x6ea2 fd:0x7fc927b7aee0
  8429 ms  0x6ea2 SSL_ImportFD()
  8429 ms  0x6ea2 ret:0x7fc92967ef70
  8429 ms  0x6ea2 SSL_AuthCertificateHook()
  8429 ms  0x6ea2 fd:0x7fc92967ef70
  8429 ms  0x6ea2 ret:0x0
  8431 ms  0x6ea2 PK11_Encrypt()
  8431 ms  0x6ea2 symkey:0x7fc927962a80
  8431 ms  0x6ea2 PR_Connect()
  8431 ms  0x6ea2 fd:0x7fc92967ef70
  8433 ms  0x6ea2 SSL_ImportFD()
  8433 ms  0x6ea2 ret:0x7fc92967ec70
  8433 ms  0x6ea2 SSL_AuthCertificateHook()
  8433 ms  0x6ea2 fd:0x7fc92967ec70
  8433 ms  0x6ea2 ret:0x0
  8434 ms  0x6ea2 PR_Connect()
  8434 ms  0x6ea2 fd:0x7fc92967ec70
  8436 ms  0x6ea2 PK11_Encrypt()
  8436 ms  0x6ea2 symkey:0x7fc927962a80
  8437 ms  0x6ea2 PK11_Encrypt()
  8437 ms  0x6ea2 symkey:0x7fc927962a80
  8514 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  8514 ms  0x6ea2 cx:0x7fc9264d32c8
  8516 ms     | 0x6ea2 EC_ValidatePublicKey()
  8516 ms     | 0x6ea2 ret:0x0
  8516 ms  0x6ea2 ret:0x7fc9282d2020::7fc9282d2020  50 eb 3f 2c                                      P.?,
  8517 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  8517 ms  0x6ea2 cx:0x7fc9264d32c8
  8519 ms     | 0x6ea2 EC_ValidatePublicKey()
  8523 ms     | 0x6ea2 ret:0x0
  8523 ms  0x6ea2 ret:0x7fc9282de820::7fc9282de820  e0 e7 40 2c                                      ..@,
  8524 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  8524 ms  0x6ea2 cx:0x7fc9264d3128
  8526 ms     | 0x6ea2 EC_ValidatePublicKey()
  8526 ms     | 0x6ea2 ret:0x0
  8526 ms  0x6ea2 ret:0x7fc92b0a6820::7fc92b0a6820  00 76 41 2c                                      .vA,
  8526 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  8526 ms  0x6ea2 cx:0x7fc9264d3128
  8528 ms     | 0x6ea2 EC_ValidatePublicKey()
  8532 ms     | 0x6ea2 ret:0x0
  8532 ms  0x6ea2 ret:0x7fc92b0ad020::7fc92b0ad020  60 7a 41 2c                                      `zA,
  8534 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  8534 ms  0x6ea2 cx:0x7fc9264d3468
  8536 ms     | 0x6ea2 EC_ValidatePublicKey()
  8536 ms     | 0x6ea2 ret:0x0
  8536 ms  0x6ea2 ret:0x7fc92c4b7820::7fc92c4b7820  d0 a3 41 2c                                      ..A,
  8536 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  8536 ms  0x6ea2 cx:0x7fc9264d3468
  8540 ms     | 0x6ea2 EC_ValidatePublicKey()
  8543 ms     | 0x6ea2 ret:0x0
  8543 ms  0x6ea2 ret:0x7fc92c703820::7fc92c703820  00 81 43 2c                                      ..C,
  8544 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  8544 ms  0x6ea2 cx:0x7fc9264d37a8
  8545 ms     | 0x6ea2 EC_ValidatePublicKey()
  8545 ms     | 0x6ea2 ret:0x0
  8545 ms  0x6ea2 ret:0x7fc92c706820::7fc92c706820  40 8c 43 2c                                      @.C,
  8545 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  8545 ms  0x6ea2 cx:0x7fc9264d37a8
  8546 ms     | 0x6ea2 EC_ValidatePublicKey()
  8549 ms     | 0x6ea2 ret:0x0
  8549 ms  0x6ea2 ret:0x7fc92c70c020::7fc92c70c020  40 0c 44 2c                                      @.D,
  8550 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  8550 ms  0x6ea2 cx:0x7fc9264d3608
  8551 ms     | 0x6ea2 EC_ValidatePublicKey()
  8551 ms     | 0x6ea2 ret:0x0
  8551 ms  0x6ea2 ret:0x7fc92c710820::7fc92c710820  e0 ec 45 2c                                      ..E,
  8551 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  8551 ms  0x6ea2 cx:0x7fc9264d3608
  8552 ms     | 0x6ea2 EC_ValidatePublicKey()
  8554 ms     | 0x6ea2 ret:0x0
  8554 ms  0x6ea2 ret:0x7fc92c7a8020::7fc92c7a8020  c0 c9 4e 2c                                      ..N,
           /* TID 0x6eff */
  8610 ms  0x6eff _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8610 ms  0x6eff ret:0x0
           /* TID 0x6ea2 */
  8611 ms  0x6ea2 SSL_AuthCertificateComplete()
  8611 ms  0x6ea2 fd:0x7fc92676c3d0
  8611 ms  0x6ea2 err:0x0
           /* TID 0x6eff */
  8617 ms  0x6eff _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8617 ms  0x6eff ret:0x0
           /* TID 0x6ea2 */
  8618 ms  0x6ea2 SSL_AuthCertificateComplete()
  8618 ms  0x6ea2 fd:0x7fc92b9fea90
  8618 ms  0x6ea2 err:0x0
           /* TID 0x6eff */
  8628 ms  0x6eff _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8628 ms  0x6eff ret:0x0
           /* TID 0x6ea2 */
  8629 ms  0x6ea2 SSL_AuthCertificateComplete()
  8629 ms  0x6ea2 fd:0x7fc927b7aee0
  8629 ms  0x6ea2 err:0x0
           /* TID 0x6eff */
  8634 ms  0x6eff _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8634 ms  0x6eff ret:0x0
           /* TID 0x6ea2 */
  8634 ms  0x6ea2 SSL_AuthCertificateComplete()
  8634 ms  0x6ea2 fd:0x7fc92967ec70
  8634 ms  0x6ea2 err:0x0
           /* TID 0x6eff */
  8639 ms  0x6eff _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8640 ms  0x6eff ret:0x0
           /* TID 0x6ea2 */
  8640 ms  0x6ea2 SSL_AuthCertificateComplete()
  8640 ms  0x6ea2 fd:0x7fc92967ef70
  8640 ms  0x6ea2 err:0x0
  8689 ms  SECKEY_ECParamsToKeySize()
  8689 ms  0x6ea2 ret:0x100
  8689 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  8689 ms  0x6ea2 cx:0x7fc9264d32c8
  8691 ms     | 0x6ea2 EC_ValidatePublicKey()
  8695 ms     | 0x6ea2 ret:0x0
  8695 ms  0x6ea2 ret:0x7fc92c7b1820::7fc92c7b1820  d0 2d 64 2c                                      .-d,
  8695 ms  0x6ea2 PK11_PubDeriveWithKDF()
  8695 ms  0x6ea2 seckey:0x7fc92c7b1820
  8695 ms     | 0x6ea2 EC_ValidatePublicKey()
  8700 ms     | 0x6ea2 ret:0x0
  8704 ms  0x6ea2 ret:0x7fc9354b5080
  8704 ms  0x6ea2 PK11_DeriveWithFlags()
  8704 ms  0x6ea2 basekey:0x7fc9354b5080
  8704 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  8704 ms  0x6ea2 ret:0x7fc92870d200
  8704 ms  0x6ea2 PK11_Derive()
  8704 ms  0x6ea2 basekey:0x7fc92870d200
  8704 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  8704 ms  0x6ea2 ret:0x7fc92870d280
  8704 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  8704 ms  0x6ea2 privk:0x7fc92c7b1820::7fc92c7b1820  d0 2d 64 2c                                      .-d,
  8704 ms  0x6ea2 privk:0x7fc92c7b1820::7fc92c7b1820  e5 e5 e5 e5                                      ....
  8705 ms  0x6ea2 PK11_Encrypt()
  8705 ms  0x6ea2 symkey:0x7fc92870d400
           /* TID 0x6eaa */
  8710 ms  0x6eaa PR_Close()
  8710 ms  0x6eaa fd:0x7fc92798cee0
           /* TID 0x6ea2 */
  8712 ms  0x6ea2 PK11_Encrypt()
  8712 ms  0x6ea2 symkey:0x7fc92870d400
  8712 ms  SECKEY_ECParamsToKeySize()
  8712 ms  0x6ea2 ret:0x100
  8713 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  8713 ms  0x6ea2 cx:0x7fc9264d3128
  8714 ms     | 0x6ea2 EC_ValidatePublicKey()
  8717 ms     | 0x6ea2 ret:0x0
  8717 ms  0x6ea2 ret:0x7fc92c7b4820::7fc92c7b4820  e0 2c 64 2c                                      .,d,
  8717 ms  0x6ea2 PK11_PubDeriveWithKDF()
  8717 ms  0x6ea2 seckey:0x7fc92c7b4820
  8717 ms     | 0x6ea2 EC_ValidatePublicKey()
  8720 ms     | 0x6ea2 ret:0x0
  8722 ms  0x6ea2 ret:0x7fc9354b5080
  8722 ms  0x6ea2 PK11_DeriveWithFlags()
  8722 ms  0x6ea2 basekey:0x7fc9354b5080
  8722 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  8722 ms  0x6ea2 ret:0x7fc9282ed880
  8722 ms  0x6ea2 PK11_Derive()
  8722 ms  0x6ea2 basekey:0x7fc9282ed880
  8722 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  8722 ms  0x6ea2 ret:0x7fc92870d500
  8722 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  8722 ms  0x6ea2 privk:0x7fc92c7b4820::7fc92c7b4820  e0 2c 64 2c                                      .,d,
  8722 ms  0x6ea2 privk:0x7fc92c7b4820::7fc92c7b4820  e5 e5 e5 e5                                      ....
  8722 ms  0x6ea2 PK11_Encrypt()
  8722 ms  0x6ea2 symkey:0x7fc92870d680
  8726 ms  SECKEY_ECParamsToKeySize()
  8726 ms  0x6ea2 ret:0x100
  8726 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  8726 ms  0x6ea2 cx:0x7fc9264d37a8
  8726 ms     | 0x6ea2 EC_ValidatePublicKey()
  8728 ms     | 0x6ea2 ret:0x0
  8728 ms  0x6ea2 ret:0x7fc92c7b5020::7fc92c7b5020  e0 2c 64 2c                                      .,d,
  8728 ms  0x6ea2 PK11_PubDeriveWithKDF()
  8728 ms  0x6ea2 seckey:0x7fc92c7b5020
  8728 ms     | 0x6ea2 EC_ValidatePublicKey()
  8730 ms     | 0x6ea2 ret:0x0
  8732 ms  0x6ea2 ret:0x7fc9354b5080
  8732 ms  0x6ea2 PK11_DeriveWithFlags()
  8732 ms  0x6ea2 basekey:0x7fc9354b5080
  8732 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  8732 ms  0x6ea2 ret:0x7fc92870d780
  8732 ms  0x6ea2 PK11_Derive()
  8732 ms  0x6ea2 basekey:0x7fc92870d780
  8732 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  8732 ms  0x6ea2 ret:0x7fc92870d880
  8732 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  8732 ms  0x6ea2 privk:0x7fc92c7b5020::7fc92c7b5020  e0 2c 64 2c                                      .,d,
  8732 ms  0x6ea2 privk:0x7fc92c7b5020::7fc92c7b5020  e5 e5 e5 e5                                      ....
  8732 ms  0x6ea2 PK11_Encrypt()
  8732 ms  0x6ea2 symkey:0x7fc92870da00
  8733 ms  SECKEY_ECParamsToKeySize()
  8733 ms  0x6ea2 ret:0x100
  8733 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  8733 ms  0x6ea2 cx:0x7fc9264d3608
  8733 ms     | 0x6ea2 EC_ValidatePublicKey()
  8735 ms     | 0x6ea2 ret:0x0
  8735 ms  0x6ea2 ret:0x7fc92c7b7820::7fc92c7b7820  e0 2c 64 2c                                      .,d,
  8735 ms  0x6ea2 PK11_PubDeriveWithKDF()
  8735 ms  0x6ea2 seckey:0x7fc92c7b7820
  8735 ms     | 0x6ea2 EC_ValidatePublicKey()
  8737 ms     | 0x6ea2 ret:0x0
  8738 ms  0x6ea2 ret:0x7fc9354b5080
  8738 ms  0x6ea2 PK11_DeriveWithFlags()
  8738 ms  0x6ea2 basekey:0x7fc9354b5080
  8738 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  8738 ms  0x6ea2 ret:0x7fc92870de00
  8738 ms  0x6ea2 PK11_Derive()
  8738 ms  0x6ea2 basekey:0x7fc92870de00
  8738 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  8738 ms  0x6ea2 ret:0x7fc92870e100
  8738 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  8738 ms  0x6ea2 privk:0x7fc92c7b7820::7fc92c7b7820  e0 2c 64 2c                                      .,d,
  8738 ms  0x6ea2 privk:0x7fc92c7b7820::7fc92c7b7820  e5 e5 e5 e5                                      ....
  8739 ms  0x6ea2 PK11_Encrypt()
  8739 ms  0x6ea2 symkey:0x7fc92870e880
  8739 ms  SECKEY_ECParamsToKeySize()
  8739 ms  0x6ea2 ret:0x100
  8739 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  8739 ms  0x6ea2 cx:0x7fc9264d3468
  8742 ms     | 0x6ea2 EC_ValidatePublicKey()
  8743 ms     | 0x6ea2 ret:0x0
  8743 ms  0x6ea2 ret:0x7fc92c7b8020::7fc92c7b8020  e0 2c 64 2c                                      .,d,
  8743 ms  0x6ea2 PK11_PubDeriveWithKDF()
  8743 ms  0x6ea2 seckey:0x7fc92c7b8020
  8744 ms     | 0x6ea2 EC_ValidatePublicKey()
  8745 ms     | 0x6ea2 ret:0x0
  8746 ms  0x6ea2 ret:0x7fc9354b5080
  8746 ms  0x6ea2 PK11_DeriveWithFlags()
  8746 ms  0x6ea2 basekey:0x7fc9354b5080
  8746 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  8746 ms  0x6ea2 ret:0x7fc92877b500
  8746 ms  0x6ea2 PK11_Derive()
  8746 ms  0x6ea2 basekey:0x7fc92877b500
  8746 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  8747 ms  0x6ea2 ret:0x7fc92877b700
  8747 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  8747 ms  0x6ea2 privk:0x7fc92c7b8020::7fc92c7b8020  e0 2c 64 2c                                      .,d,
  8747 ms  0x6ea2 privk:0x7fc92c7b8020::7fc92c7b8020  e5 e5 e5 e5                                      ....
  8747 ms  0x6ea2 PK11_Encrypt()
  8747 ms  0x6ea2 symkey:0x7fc92877c100
  8747 ms  0x6ea2 PK11_Encrypt()
  8747 ms  0x6ea2 symkey:0x7fc92870d680
  8747 ms  0x6ea2 PK11_Encrypt()
  8747 ms  0x6ea2 symkey:0x7fc92870da00
  8748 ms  0x6ea2 PK11_Encrypt()
  8748 ms  0x6ea2 symkey:0x7fc92870e880
  8748 ms  0x6ea2 PK11_Encrypt()
  8748 ms  0x6ea2 symkey:0x7fc92877c100
           /* TID 0x6eaa */
  8772 ms  0x6eaa PR_Close()
  8772 ms  0x6eaa fd:0x7fc927b7a6a0
           /* TID 0x6ea2 */
  8788 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  8788 ms  0x6ea2 privk:0x7fc9282de820::7fc9282de820  e0 e7 40 2c                                      ..@,
  8788 ms  0x6ea2 privk:0x7fc9282de820::7fc9282de820  e5 e5 e5 e5                                      ....
  8788 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  8788 ms  0x6ea2 privk:0x7fc9282d2020::7fc9282d2020  50 eb 3f 2c                                      P.?,
  8788 ms  0x6ea2 privk:0x7fc9282d2020::7fc9282d2020  e5 e5 e5 e5                                      ....
  8788 ms  0x6ea2 PR_Close()
  8788 ms  0x6ea2 fd:0x7fc92676c3d0
  8788 ms     | 0x6ea2 PK11_Encrypt()
  8788 ms     | 0x6ea2 symkey:0x7fc92870d400
  8810 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  8810 ms  0x6ea2 privk:0x7fc92b0ad020::7fc92b0ad020  60 7a 41 2c                                      `zA,
  8810 ms  0x6ea2 privk:0x7fc92b0ad020::7fc92b0ad020  e5 e5 e5 e5                                      ....
  8810 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  8810 ms  0x6ea2 privk:0x7fc92b0a6820::7fc92b0a6820  00 76 41 2c                                      .vA,
  8810 ms  0x6ea2 privk:0x7fc92b0a6820::7fc92b0a6820  e5 e5 e5 e5                                      ....
  8810 ms  0x6ea2 PR_Close()
  8810 ms  0x6ea2 fd:0x7fc92b9fea90
  8810 ms     | 0x6ea2 PK11_Encrypt()
  8810 ms     | 0x6ea2 symkey:0x7fc92870d680
  8815 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  8815 ms  0x6ea2 privk:0x7fc92c70c020::7fc92c70c020  40 0c 44 2c                                      @.D,
  8816 ms  0x6ea2 privk:0x7fc92c70c020::7fc92c70c020  e5 e5 e5 e5                                      ....
  8816 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  8816 ms  0x6ea2 privk:0x7fc92c706820::7fc92c706820  40 8c 43 2c                                      @.C,
  8816 ms  0x6ea2 privk:0x7fc92c706820::7fc92c706820  e5 e5 e5 e5                                      ....
  8816 ms  0x6ea2 PR_Close()
  8816 ms  0x6ea2 fd:0x7fc92967ec70
  8816 ms     | 0x6ea2 PK11_Encrypt()
  8816 ms     | 0x6ea2 symkey:0x7fc92870da00
  8822 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  8822 ms  0x6ea2 privk:0x7fc92c7a8020::7fc92c7a8020  c0 c9 4e 2c                                      ..N,
  8822 ms  0x6ea2 privk:0x7fc92c7a8020::7fc92c7a8020  e5 e5 e5 e5                                      ....
  8822 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  8822 ms  0x6ea2 privk:0x7fc92c710820::7fc92c710820  e0 ec 45 2c                                      ..E,
  8822 ms  0x6ea2 privk:0x7fc92c710820::7fc92c710820  e5 e5 e5 e5                                      ....
  8822 ms  0x6ea2 PR_Close()
  8822 ms  0x6ea2 fd:0x7fc92967ef70
  8822 ms     | 0x6ea2 PK11_Encrypt()
  8822 ms     | 0x6ea2 symkey:0x7fc92870e880
  8830 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  8830 ms  0x6ea2 privk:0x7fc92c703820::7fc92c703820  00 81 43 2c                                      ..C,
  8830 ms  0x6ea2 privk:0x7fc92c703820::7fc92c703820  e5 e5 e5 e5                                      ....
  8830 ms  0x6ea2 SECKEY_DestroyPrivateKey()
  8830 ms  0x6ea2 privk:0x7fc92c4b7820::7fc92c4b7820  d0 a3 41 2c                                      ..A,
  8831 ms  0x6ea2 privk:0x7fc92c4b7820::7fc92c4b7820  e5 e5 e5 e5                                      ....
  8831 ms  0x6ea2 PR_Close()
  8831 ms  0x6ea2 fd:0x7fc927b7aee0
  8831 ms     | 0x6ea2 PK11_Encrypt()
  8831 ms     | 0x6ea2 symkey:0x7fc92877c100
           /* TID 0x6eaa */
  8888 ms  0x6eaa PR_Close()
  8888 ms  0x6eaa fd:0x7fc915503af0
  8912 ms  0x6eaa PR_Close()
  8912 ms  0x6eaa fd:0x7fc915503af0
  9016 ms  0x6eaa PR_Close()
  9016 ms  0x6eaa fd:0x7fc926468130
  9020 ms  0x6eaa PR_Close()
  9020 ms  0x6eaa fd:0x7fc926468130
           /* TID 0x6ea2 */
  9070 ms  0x6ea2 SSL_ImportFD()
  9070 ms  0x6ea2 ret:0x7fc9296c1070
  9070 ms  0x6ea2 SSL_AuthCertificateHook()
  9070 ms  0x6ea2 fd:0x7fc9296c1070
  9070 ms  0x6ea2 ret:0x0
  9070 ms  0x6ea2 PR_Connect()
  9070 ms  0x6ea2 fd:0x7fc9296c1070
  9087 ms  0x6ea2 PK11_Encrypt()
  9087 ms  0x6ea2 symkey:0x7fc927962a80
  9098 ms  0x6ea2 PK11_Encrypt()
  9098 ms  0x6ea2 symkey:0x7fc927962a80
  9115 ms  0x6ea2 PK11_Encrypt()
  9115 ms  0x6ea2 symkey:0x7fc927962a80
  9158 ms  0x6ea2 PK11_Encrypt()
  9158 ms  0x6ea2 symkey:0x7fc927962a80
  9186 ms  0x6ea2 PK11_Encrypt()
  9186 ms  0x6ea2 symkey:0x7fc927962a80
  9188 ms  0x6ea2 PK11_Encrypt()
  9188 ms  0x6ea2 symkey:0x7fc927962a80
  9189 ms  0x6ea2 PK11_Encrypt()
  9189 ms  0x6ea2 symkey:0x7fc927962a80
  9189 ms  0x6ea2 PK11_Encrypt()
  9189 ms  0x6ea2 symkey:0x7fc927962a80
  9190 ms  0x6ea2 PK11_Encrypt()
  9190 ms  0x6ea2 symkey:0x7fc927962a80
  9191 ms  0x6ea2 PK11_Encrypt()
  9191 ms  0x6ea2 symkey:0x7fc927962a80
  9192 ms  0x6ea2 PK11_Encrypt()
  9192 ms  0x6ea2 symkey:0x7fc927962a80
  9194 ms  0x6ea2 PK11_Encrypt()
  9194 ms  0x6ea2 symkey:0x7fc927962a80
  9195 ms  0x6ea2 PK11_Encrypt()
  9195 ms  0x6ea2 symkey:0x7fc927962a80
  9197 ms  0x6ea2 PK11_Encrypt()
  9197 ms  0x6ea2 symkey:0x7fc927962a80
  9201 ms  0x6ea2 PK11_Encrypt()
  9201 ms  0x6ea2 symkey:0x7fc927962a80
  9201 ms  0x6ea2 PK11_Encrypt()
  9201 ms  0x6ea2 symkey:0x7fc927962a80
  9206 ms  0x6ea2 PK11_Encrypt()
  9206 ms  0x6ea2 symkey:0x7fc927962a80
  9207 ms  0x6ea2 PK11_Encrypt()
  9207 ms  0x6ea2 symkey:0x7fc927962a80
  9208 ms  0x6ea2 PK11_Encrypt()
  9208 ms  0x6ea2 symkey:0x7fc927962a80
  9218 ms  0x6ea2 PK11_Encrypt()
  9218 ms  0x6ea2 symkey:0x7fc927962a80
  9218 ms  0x6ea2 PK11_Encrypt()
  9218 ms  0x6ea2 symkey:0x7fc927962a80
  9220 ms  0x6ea2 PK11_Encrypt()
  9220 ms  0x6ea2 symkey:0x7fc927962a80
  9220 ms  0x6ea2 PK11_Encrypt()
  9220 ms  0x6ea2 symkey:0x7fc927962a80
  9221 ms  0x6ea2 PK11_Encrypt()
  9221 ms  0x6ea2 symkey:0x7fc927962a80
  9221 ms  0x6ea2 PK11_Encrypt()
  9221 ms  0x6ea2 symkey:0x7fc927962a80
  9222 ms  0x6ea2 PK11_Encrypt()
  9222 ms  0x6ea2 symkey:0x7fc927962a80
  9223 ms  0x6ea2 PK11_Encrypt()
  9223 ms  0x6ea2 symkey:0x7fc927962a80
  9224 ms  0x6ea2 PK11_Encrypt()
  9224 ms  0x6ea2 symkey:0x7fc927962a80
  9225 ms  0x6ea2 PK11_Encrypt()
  9225 ms  0x6ea2 symkey:0x7fc927962a80
  9226 ms  0x6ea2 PK11_Encrypt()
  9226 ms  0x6ea2 symkey:0x7fc927962a80
  9228 ms  0x6ea2 PK11_Encrypt()
  9228 ms  0x6ea2 symkey:0x7fc927962a80
  9228 ms  0x6ea2 PK11_Encrypt()
  9228 ms  0x6ea2 symkey:0x7fc927962a80
  9229 ms  0x6ea2 PK11_Encrypt()
  9229 ms  0x6ea2 symkey:0x7fc927962a80
  9229 ms  0x6ea2 SSL_ImportFD()
  9229 ms  0x6ea2 ret:0x7fc92cbff160
  9229 ms  0x6ea2 SSL_AuthCertificateHook()
  9229 ms  0x6ea2 fd:0x7fc92cbff160
  9229 ms  0x6ea2 ret:0x0
  9229 ms  0x6ea2 PR_Connect()
  9229 ms  0x6ea2 fd:0x7fc92cbff160
  9229 ms  0x6ea2 SSL_ImportFD()
  9229 ms  0x6ea2 ret:0x7fc92cbcdcd0
  9229 ms  0x6ea2 SSL_AuthCertificateHook()
  9229 ms  0x6ea2 fd:0x7fc92cbcdcd0
  9229 ms  0x6ea2 ret:0x0
  9229 ms  0x6ea2 PR_Connect()
  9229 ms  0x6ea2 fd:0x7fc92cbcdcd0
  9232 ms  0x6ea2 PK11_Encrypt()
  9232 ms  0x6ea2 symkey:0x7fc927962a80
  9232 ms  0x6ea2 PK11_Encrypt()
  9232 ms  0x6ea2 symkey:0x7fc927962a80
  9233 ms  0x6ea2 PK11_Encrypt()
  9233 ms  0x6ea2 symkey:0x7fc927962a80
  9233 ms  0x6ea2 PK11_Encrypt()
  9233 ms  0x6ea2 symkey:0x7fc927962a80
  9234 ms  0x6ea2 PK11_Encrypt()
  9234 ms  0x6ea2 symkey:0x7fc927962a80
  9234 ms  0x6ea2 PK11_Encrypt()
  9234 ms  0x6ea2 symkey:0x7fc927962a80
  9234 ms  0x6ea2 PK11_Encrypt()
  9234 ms  0x6ea2 symkey:0x7fc927962a80
  9235 ms  0x6ea2 PK11_Encrypt()
  9235 ms  0x6ea2 symkey:0x7fc927962a80
  9235 ms  0x6ea2 PK11_Encrypt()
  9235 ms  0x6ea2 symkey:0x7fc927962a80
  9237 ms  0x6ea2 PK11_Encrypt()
  9237 ms  0x6ea2 symkey:0x7fc927962a80
  9238 ms  0x6ea2 PK11_Encrypt()
  9238 ms  0x6ea2 symkey:0x7fc927962a80
  9239 ms  0x6ea2 PK11_Encrypt()
  9239 ms  0x6ea2 symkey:0x7fc927962a80
  9239 ms  0x6ea2 PK11_Encrypt()
  9239 ms  0x6ea2 symkey:0x7fc927962a80
  9240 ms  0x6ea2 PK11_Encrypt()
  9240 ms  0x6ea2 symkey:0x7fc927962a80
  9258 ms  0x6ea2 SSL_ImportFD()
  9258 ms  0x6ea2 ret:0x7fc92cbffd90
  9258 ms  0x6ea2 SSL_AuthCertificateHook()
  9258 ms  0x6ea2 fd:0x7fc92cbffd90
  9258 ms  0x6ea2 ret:0x0
  9258 ms  0x6ea2 PR_Connect()
  9258 ms  0x6ea2 fd:0x7fc92cbffd90
  9270 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  9270 ms  0x6ea2 cx:0x7fc9264d32c8
  9270 ms     | 0x6ea2 EC_ValidatePublicKey()
  9270 ms     | 0x6ea2 ret:0x0
  9270 ms  0x6ea2 ret:0x7fc92f440820::7fc92f440820  70 ae b2 2c                                      p..,
  9271 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  9271 ms  0x6ea2 cx:0x7fc9264d32c8
  9271 ms     | 0x6ea2 EC_ValidatePublicKey()
  9273 ms     | 0x6ea2 ret:0x0
  9273 ms  0x6ea2 ret:0x7fc92f443820::7fc92f443820  90 e2 bf 2c                                      ...,
  9275 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  9275 ms  0x6ea2 cx:0x7fc9264d3468
  9276 ms     | 0x6ea2 EC_ValidatePublicKey()
  9276 ms     | 0x6ea2 ret:0x0
  9276 ms  0x6ea2 ret:0x7fc92ff0b020::7fc92ff0b020  f0 f1 3c 2f                                      ..</
  9276 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  9276 ms  0x6ea2 cx:0x7fc9264d3468
  9281 ms     | 0x6ea2 EC_ValidatePublicKey()
  9283 ms     | 0x6ea2 ret:0x0
  9283 ms  0x6ea2 ret:0x7fc92ff0f020::7fc92ff0f020  b0 65 3d 2f                                      .e=/
           /* TID 0x6eaa */
  9289 ms  0x6eaa PR_Close()
  9289 ms  0x6eaa fd:0x7fc92c3205e0
  9296 ms  0x6eaa PR_Close()
  9296 ms  0x6eaa fd:0x7fc92c96f190
           /* TID 0x6ea2 */
  9299 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  9299 ms  0x6ea2 cx:0x7fc9264d3608
  9300 ms     | 0x6ea2 EC_ValidatePublicKey()
  9300 ms     | 0x6ea2 ret:0x0
  9300 ms  0x6ea2 ret:0x7fc92ff12820::7fc92ff12820  40 22 91 2c                                      @".,
  9300 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  9300 ms  0x6ea2 cx:0x7fc9264d3608
  9300 ms     | 0x6ea2 EC_ValidatePublicKey()
  9302 ms     | 0x6ea2 ret:0x0
  9302 ms  0x6ea2 ret:0x7fc92ff15820::7fc92ff15820  b0 e5 95 2c                                      ...,
  9316 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  9316 ms  0x6ea2 cx:0x7fc9264d3128
  9316 ms     | 0x6ea2 EC_ValidatePublicKey()
  9316 ms     | 0x6ea2 ret:0x0
  9316 ms  0x6ea2 ret:0x7fc92ff1c020::7fc92ff1c020  50 f6 3f 2f                                      P.?/
  9316 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  9316 ms  0x6ea2 cx:0x7fc9264d3128
  9317 ms     | 0x6ea2 EC_ValidatePublicKey()
  9318 ms     | 0x6ea2 ret:0x0
  9318 ms  0x6ea2 ret:0x7fc92ff20020::7fc92ff20020  a0 b1 41 2f                                      ..A/
  9327 ms  0x6ea2 PK11_Derive()
  9327 ms  0x6ea2 basekey:0x7fc92877b700
  9327 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9327 ms  0x6ea2 ret:0x7fc92877b500
  9327 ms  0x6ea2 PK11_PubDeriveWithKDF()
  9327 ms  0x6ea2 seckey:0x7fc92f440820
  9327 ms     | 0x6ea2 EC_ValidatePublicKey()
  9327 ms     | 0x6ea2 ret:0x0
  9328 ms  0x6ea2 ret:0x7fc92877b700
  9328 ms  SECKEY_ECParamsToKeySize()
  9328 ms  0x6ea2 ret:0xff
  9328 ms  0x6ea2 PK11_DeriveWithFlags()
  9328 ms  0x6ea2 basekey:0x7fc92877b500
  9328 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9328 ms  0x6ea2 ret:0x7fc92870e100
  9328 ms  0x6ea2 PK11_Derive()
  9328 ms  0x6ea2 basekey:0x7fc92877b700
  9328 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9328 ms  0x6ea2 ret:0x7fc92870de00
  9328 ms  0x6ea2 PK11_DeriveWithFlags()
  9328 ms  0x6ea2 basekey:0x7fc92870de00
  9328 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9328 ms  0x6ea2 ret:0x7fc92877b500
  9328 ms  0x6ea2 PK11_DeriveWithFlags()
  9328 ms  0x6ea2 basekey:0x7fc92870de00
  9328 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9328 ms  0x6ea2 ret:0x7fc92877b700
  9328 ms  0x6ea2 PK11_DeriveWithFlags()
  9328 ms  0x6ea2 basekey:0x7fc92870de00
  9328 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9328 ms  0x6ea2 ret:0x7fc92870e100
  9328 ms  0x6ea2 PK11_Derive()
  9328 ms  0x6ea2 basekey:0x7fc92870d880
  9328 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9328 ms  0x6ea2 ret:0x7fc92870d780
  9328 ms  0x6ea2 PK11_DeriveWithFlags()
  9328 ms  0x6ea2 basekey:0x7fc92877b700
  9328 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9328 ms  0x6ea2 ret:0x7fc92870de00
  9328 ms  0x6ea2 PK11_DeriveWithFlags()
  9328 ms  0x6ea2 basekey:0x7fc92877b700
  9328 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9328 ms  0x6ea2 ret:0x7fc92870e100
           /* TID 0x6eff */
  9329 ms  SECKEY_ECParamsToBasePointOrderLen()
  9329 ms  0x6eff ret:0x180
  9329 ms  SECKEY_ECParamsToBasePointOrderLen()
  9329 ms  0x6eff ret:0x180
  9329 ms  0x6eff EC_ValidatePublicKey()
  9331 ms  0x6eff ret:0x0
           /* TID 0x6ea2 */
  9332 ms  SECKEY_ECParamsToKeySize()
  9332 ms  0x6ea2 ret:0x100
  9332 ms  SECKEY_ECParamsToBasePointOrderLen()
  9332 ms  0x6ea2 ret:0x100
  9332 ms  SECKEY_ECParamsToBasePointOrderLen()
  9332 ms  0x6ea2 ret:0x100
  9332 ms  0x6ea2 EC_ValidatePublicKey()
  9338 ms  0x6ea2 ret:0x0
           /* TID 0x6eff */
  9345 ms  SECKEY_ECParamsToBasePointOrderLen()
  9345 ms  0x6eff ret:0x100
  9345 ms  SECKEY_ECParamsToBasePointOrderLen()
  9345 ms  0x6eff ret:0x100
  9345 ms  0x6eff EC_ValidatePublicKey()
  9347 ms  0x6eff ret:0x0
  9349 ms  0x6eff _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9349 ms     | SECKEY_ECParamsToBasePointOrderLen()
  9349 ms     | 0x6eff ret:0x100
  9349 ms     | SECKEY_ECParamsToBasePointOrderLen()
  9349 ms     | 0x6eff ret:0x100
  9349 ms     | 0x6eff EC_ValidatePublicKey()
  9351 ms     | 0x6eff ret:0x0
  9353 ms  0x6eff ret:0x0
           /* TID 0x6ea2 */
  9355 ms  0x6ea2 PK11_DeriveWithFlags()
  9355 ms  0x6ea2 basekey:0x7fc92877b700
  9355 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9355 ms  0x6ea2 ret:0x7fc92870e100
           /* TID 0x6eaa */
  9363 ms  0x6eaa PR_Close()
  9363 ms  0x6eaa fd:0x7fc92c3205e0
           /* TID 0x6ea2 */
  9363 ms  0x6ea2 PK11_Derive()
  9363 ms  0x6ea2 basekey:0x7fc92870e100
  9363 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9363 ms  0x6ea2 ret:0x7fc92870d880
  9363 ms  0x6ea2 PK11_PubDeriveWithKDF()
  9363 ms  0x6ea2 seckey:0x7fc92ff0b020
  9363 ms     | 0x6ea2 EC_ValidatePublicKey()
  9363 ms     | 0x6ea2 ret:0x0
  9364 ms  0x6ea2 ret:0x7fc92870e100
  9364 ms  SECKEY_ECParamsToKeySize()
  9364 ms  0x6ea2 ret:0xff
  9364 ms  0x6ea2 PK11_DeriveWithFlags()
  9364 ms  0x6ea2 basekey:0x7fc92870d880
  9364 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9364 ms  0x6ea2 ret:0x7fc92870d500
  9364 ms  0x6ea2 PK11_Derive()
  9364 ms  0x6ea2 basekey:0x7fc92870e100
  9364 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9364 ms  0x6ea2 ret:0x7fc9282ed880
  9364 ms  0x6ea2 PK11_DeriveWithFlags()
  9364 ms  0x6ea2 basekey:0x7fc9282ed880
  9364 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9364 ms  0x6ea2 ret:0x7fc92870d880
  9364 ms  0x6ea2 PK11_DeriveWithFlags()
  9364 ms  0x6ea2 basekey:0x7fc9282ed880
  9364 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9364 ms  0x6ea2 ret:0x7fc92870e100
  9364 ms  0x6ea2 PK11_DeriveWithFlags()
  9364 ms  0x6ea2 basekey:0x7fc9282ed880
  9364 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9364 ms  0x6ea2 ret:0x7fc92870d500
  9364 ms  0x6ea2 PK11_Derive()
  9364 ms  0x6ea2 basekey:0x7fc92870d280
  9364 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9364 ms  0x6ea2 ret:0x7fc92870d200
  9364 ms  0x6ea2 PK11_DeriveWithFlags()
  9364 ms  0x6ea2 basekey:0x7fc92870e100
  9364 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9364 ms  0x6ea2 ret:0x7fc9282ed880
  9364 ms  0x6ea2 PK11_DeriveWithFlags()
  9364 ms  0x6ea2 basekey:0x7fc92870e100
  9364 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9364 ms  0x6ea2 ret:0x7fc92870d500
  9369 ms  SECKEY_ECParamsToKeySize()
  9369 ms  0x6ea2 ret:0x100
  9369 ms  SECKEY_ECParamsToBasePointOrderLen()
  9369 ms  0x6ea2 ret:0x100
  9369 ms  SECKEY_ECParamsToBasePointOrderLen()
  9369 ms  0x6ea2 ret:0x100
  9369 ms  0x6ea2 EC_ValidatePublicKey()
  9371 ms  0x6ea2 ret:0x0
  9373 ms  0x6ea2 PK11_DeriveWithFlags()
  9373 ms  0x6ea2 basekey:0x7fc92870e100
  9373 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9373 ms  0x6ea2 ret:0x7fc92870d500
  9373 ms  0x6ea2 PK11_Derive()
  9373 ms  0x6ea2 basekey:0x7fc92870d500
  9373 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9373 ms  0x6ea2 ret:0x7fc92870d280
  9373 ms  0x6ea2 PK11_PubDeriveWithKDF()
  9373 ms  0x6ea2 seckey:0x7fc92ff12820
  9373 ms     | 0x6ea2 EC_ValidatePublicKey()
  9373 ms     | 0x6ea2 ret:0x0
  9373 ms  0x6ea2 ret:0x7fc92870d500
  9373 ms  SECKEY_ECParamsToKeySize()
  9373 ms  0x6ea2 ret:0xff
  9373 ms  0x6ea2 PK11_DeriveWithFlags()
  9373 ms  0x6ea2 basekey:0x7fc92870d280
  9373 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9373 ms  0x6ea2 ret:0x7fc9354b5080
  9373 ms  0x6ea2 PK11_Derive()
  9373 ms  0x6ea2 basekey:0x7fc92870d500
  9373 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9373 ms  0x6ea2 ret:0x7fc92877c080
  9373 ms  0x6ea2 PK11_DeriveWithFlags()
  9373 ms  0x6ea2 basekey:0x7fc92877c080
  9373 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9373 ms  0x6ea2 ret:0x7fc92870d280
  9374 ms  0x6ea2 PK11_DeriveWithFlags()
  9374 ms  0x6ea2 basekey:0x7fc92877c080
  9374 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9374 ms  0x6ea2 ret:0x7fc92870d500
  9374 ms  0x6ea2 PK11_DeriveWithFlags()
  9374 ms  0x6ea2 basekey:0x7fc92877c080
  9374 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9374 ms  0x6ea2 ret:0x7fc9354b5080
  9374 ms  0x6ea2 PK11_Derive()
  9374 ms  0x6ea2 basekey:0x7fc92877cb00
  9374 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9374 ms  0x6ea2 ret:0x7fc92877bc00
  9374 ms  0x6ea2 PK11_DeriveWithFlags()
  9374 ms  0x6ea2 basekey:0x7fc92870d500
  9374 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9374 ms  0x6ea2 ret:0x7fc92877c080
  9374 ms  0x6ea2 PK11_DeriveWithFlags()
  9374 ms  0x6ea2 basekey:0x7fc92870d500
  9374 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9374 ms  0x6ea2 ret:0x7fc9354b5080
  9383 ms  SECKEY_ECParamsToKeySize()
  9383 ms  0x6ea2 ret:0x100
  9383 ms  SECKEY_ECParamsToBasePointOrderLen()
  9383 ms  0x6ea2 ret:0x100
  9383 ms  SECKEY_ECParamsToBasePointOrderLen()
  9383 ms  0x6ea2 ret:0x100
  9383 ms  0x6ea2 EC_ValidatePublicKey()
  9388 ms  0x6ea2 ret:0x0
  9390 ms  0x6ea2 PK11_DeriveWithFlags()
  9390 ms  0x6ea2 basekey:0x7fc92870d500
  9390 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9390 ms  0x6ea2 ret:0x7fc9354b5080
  9400 ms  0x6ea2 PK11_Encrypt()
  9400 ms  0x6ea2 symkey:0x7fc927962a80
  9427 ms  0x6ea2 SSL_ImportFD()
  9427 ms  0x6ea2 ret:0x7fc92f4bcd90
  9427 ms  0x6ea2 SSL_AuthCertificateHook()
  9427 ms  0x6ea2 fd:0x7fc92f4bcd90
  9427 ms  0x6ea2 ret:0x0
  9427 ms  0x6ea2 PR_Connect()
  9427 ms  0x6ea2 fd:0x7fc92f4bcd90
  9445 ms  0x6ea2 SSL_ImportFD()
  9445 ms  0x6ea2 ret:0x7fc92f4bc1f0
  9445 ms  0x6ea2 SSL_AuthCertificateHook()
  9445 ms  0x6ea2 fd:0x7fc92f4bc1f0
  9445 ms  0x6ea2 ret:0x0
  9445 ms  0x6ea2 PR_Connect()
  9445 ms  0x6ea2 fd:0x7fc92f4bc1f0
  9446 ms  0x6ea2 SSL_ImportFD()
  9446 ms  0x6ea2 ret:0x7fc92c406910
  9446 ms  0x6ea2 SSL_AuthCertificateHook()
  9446 ms  0x6ea2 fd:0x7fc92c406910
  9446 ms  0x6ea2 ret:0x0
  9446 ms  0x6ea2 PR_Connect()
  9446 ms  0x6ea2 fd:0x7fc92c406910
  9446 ms  0x6ea2 SSL_ImportFD()
  9446 ms  0x6ea2 ret:0x7fc92c4de760
  9446 ms  0x6ea2 SSL_AuthCertificateHook()
  9446 ms  0x6ea2 fd:0x7fc92c4de760
  9446 ms  0x6ea2 ret:0x0
  9446 ms  0x6ea2 PR_Connect()
  9446 ms  0x6ea2 fd:0x7fc92c4de760
  9468 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  9468 ms  0x6ea2 cx:0x7fc9264d44a8
  9468 ms     | 0x6ea2 EC_ValidatePublicKey()
  9468 ms     | 0x6ea2 ret:0x0
  9468 ms  0x6ea2 ret:0x7fc93058b820::7fc93058b820  c0 ae 06 31                                      ...1
  9468 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  9468 ms  0x6ea2 cx:0x7fc9264d44a8
  9469 ms     | 0x6ea2 EC_ValidatePublicKey()
  9471 ms     | 0x6ea2 ret:0x0
  9471 ms  0x6ea2 ret:0x7fc93058d820::7fc93058d820  00 91 4f 31                                      ..O1
  9471 ms  0x6ea2 SSL_ImportFD()
  9471 ms  0x6ea2 ret:0x7fc92f4dbbe0
  9471 ms  0x6ea2 SSL_AuthCertificateHook()
  9471 ms  0x6ea2 fd:0x7fc92f4dbbe0
  9471 ms  0x6ea2 ret:0x0
  9471 ms  0x6ea2 PR_Connect()
  9471 ms  0x6ea2 fd:0x7fc92f4dbbe0
  9513 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  9513 ms  0x6ea2 cx:0x7fc9264d4cc8
  9514 ms     | 0x6ea2 EC_ValidatePublicKey()
  9514 ms     | 0x6ea2 ret:0x0
  9514 ms  0x6ea2 ret:0x7fc930590020::7fc930590020  90 97 4f 31                                      ..O1
  9515 ms  0x6ea2 SECKEY_CreateECPrivateKey()
  9515 ms  0x6ea2 cx:0x7fc9264d4cc8
  9516 ms     | 0x6ea2 EC_ValidatePublicKey()
           /* TID 0x6eaa */
  9518 ms  0x6eaa PR_Close()
  9518 ms  0x6eaa fd:0x7fc92cbff790
  9518 ms  0x6eaa PR_Close()
  9518 ms  0x6eaa fd:0x7fc92f4dbfd0
  9518 ms  0x6eaa PR_Close()
  9518 ms  0x6eaa fd:0x7fc92f4fe0a0
  9518 ms  0x6eaa PR_Close()
  9518 ms  0x6eaa fd:0x7fc92f4fe310
  9518 ms  0x6eaa PR_Close()
  9518 ms  0x6eaa fd:0x7fc92f4fe400
  9518 ms  0x6eaa PR_Close()
  9518 ms  0x6eaa fd:0x7fc92f4fe610
           /* TID 0x6ea2 */
  9530 ms     | 0x6ea2 ret:0x0
  9530 ms  0x6ea2 ret:0x7fc930592020::7fc930592020  b0 70 a8 33                                      .p.3
  9534 ms  0x6ea2 PK11_Derive()
  9534 ms  0x6ea2 basekey:0x7fc9354b5080
  9534 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9534 ms  0x6ea2 ret:0x7fc92877cb00
  9534 ms  0x6ea2 PK11_PubDeriveWithKDF()
  9534 ms  0x6ea2 seckey:0x7fc93058b820
  9534 ms     | 0x6ea2 EC_ValidatePublicKey()
  9534 ms     | 0x6ea2 ret:0x0
  9536 ms  0x6ea2 ret:0x7fc9354b5080
  9536 ms  SECKEY_ECParamsToKeySize()
  9536 ms  0x6ea2 ret:0xff
  9536 ms  0x6ea2 PK11_DeriveWithFlags()
  9536 ms  0x6ea2 basekey:0x7fc92877cb00
  9536 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9536 ms  0x6ea2 ret:0x7fc92877c100
  9536 ms  0x6ea2 PK11_Derive()
  9536 ms  0x6ea2 basekey:0x7fc9354b5080
  9536 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9536 ms  0x6ea2 ret:0x7fc92870e700
  9536 ms  0x6ea2 PK11_DeriveWithFlags()
  9536 ms  0x6ea2 basekey:0x7fc92870e700
  9536 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9536 ms  0x6ea2 ret:0x7fc92877cb00
  9536 ms  0x6ea2 PK11_DeriveWithFlags()
  9536 ms  0x6ea2 basekey:0x7fc92870e700
  9536 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9536 ms  0x6ea2 ret:0x7fc9354b5080
  9536 ms  0x6ea2 PK11_DeriveWithFlags()
  9536 ms  0x6ea2 basekey:0x7fc92870e700
  9536 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9536 ms  0x6ea2 ret:0x7fc92877c100
  9536 ms  0x6ea2 PK11_Derive()
  9536 ms  0x6ea2 basekey:0x7fc92870ee80
  9536 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9536 ms  0x6ea2 ret:0x7fc92870e580
  9536 ms  0x6ea2 PK11_DeriveWithFlags()
  9536 ms  0x6ea2 basekey:0x7fc9354b5080
  9536 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9537 ms  0x6ea2 ret:0x7fc92870e700
  9537 ms  0x6ea2 PK11_DeriveWithFlags()
  9537 ms  0x6ea2 basekey:0x7fc9354b5080
  9537 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9537 ms  0x6ea2 ret:0x7fc92877c100
           /* TID 0x6eaa */
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92cbff790
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92f4dbfd0
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92f4fe0a0
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92f4fe310
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92f4fe400
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92f4fe610
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92f4fe6a0
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92f4fef40
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92ff03160
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92ff03a60
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92ffb2070
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92ffb2130
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92ffb21c0
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92ffb2220
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92ffb22e0
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92ffb2400
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92ffb24f0
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92ffb27c0
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92ffb2850
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92ffe7850
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92ffe7a30
  9541 ms  0x6eaa PR_Close()
  9541 ms  0x6eaa fd:0x7fc92ffe7b50
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc92ffe7bb0
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc92ffff400
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc92ffff670
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc92ffffa30
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc92ffffac0
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc92ffffc10
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc92ffffeb0
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc930027370
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc930027400
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc9300274f0
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc9300277c0
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc930027970
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc930027a60
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc930027ca0
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc930027f40
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc93006e400
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc93006e460
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc93006e760
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc93006e7f0
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc93006e940
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc93006ea30
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc93006ebe0
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc9300af0a0
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc9300af8e0
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc9300c41f0
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc9300c47f0
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc9300c48b0
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc9300c4910
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc9300c49a0
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc9300c4a00
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc9300c4a60
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc9300c4af0
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc9300c4bb0
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc9300c4eb0
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc9300effd0
  9542 ms  0x6eaa PR_Close()
  9542 ms  0x6eaa fd:0x7fc930482e80
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930482ee0
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930482f70
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc9304a80a0
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc9304a8c40
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc9304a8d90
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc9304a8e80
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930781400
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930a96400
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930a96610
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930a966a0
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930a96700
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930a96760
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930a967c0
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930a96820
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930a96880
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930a969a0
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930d3aaf0
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930d3acd0
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930d48be0
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930d4e3d0
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930d54430
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930d549a0
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930d54c70
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930d54d90
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc930d5bb80
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc931004970
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc9310a8700
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc9310ab670
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc9310ab8b0
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc9310abd00
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc9310abe50
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc9310db0d0
  9543 ms  0x6eaa PR_Close()
  9543 ms  0x6eaa fd:0x7fc9310db160
           /* TID 0x6ea2 */
  9543 ms  SECKEY_ECParamsToKeySize()
  9543 ms  0x6ea2 ret:0x100
  9543 ms  SECKEY_ECParamsToBasePointOrderLen()
  9543 ms  0x6ea2 ret:0x100
  9543 ms  SECKEY_ECParamsToBasePointOrderLen()
  9543 ms  0x6ea2 ret:0x100
  9543 ms  0x6ea2 EC_ValidatePublicKey()
  9545 ms  0x6ea2 ret:0x0
  9548 ms  0x6ea2 PK11_DeriveWithFlags()
  9548 ms  0x6ea2 basekey:0x7fc9354b5080
  9548 ms     | 0x6ea2 PK11_DeriveWithTemplate()
  9548 ms  0x6ea2 ret:0x7fc92877c100
  9549 ms  0x6ea2 SSL_ImportFD()
  9549 ms  0x6ea2 ret:0x7fc92f4fe370
  9549 ms  0x6ea2 SSL_AuthCertificateHook()
  9549 ms  0x6ea2 fd:0x7fc92f4fe370
  9549 ms  0x6ea2 ret:0x0
  9549 ms  0x6ea2 PR_Connect()
  9549 ms  0x6ea2 fd:0x7fc92f4fe370
           /* TID 0x6f40 */
 10376 ms  SECKEY_ECParamsToBasePointOrderLen()
 10382 ms  0x6f40 ret:0x180
 10382 ms  SECKEY_ECParamsToBasePointOrderLen()
 10383 ms  0x6f40 ret:0x180
 10383 ms  0x6f40 EC_ValidatePublicKey()
           /* TID 0x6f42 */
 10387 ms  SECKEY_ECParamsToBasePointOrderLen()
 10387 ms  0x6f42 ret:0x180
 10387 ms  SECKEY_ECParamsToBasePointOrderLen()
 10387 ms  0x6f42 ret:0x180
           /* TID 0x6ea2 */
 10387 ms  0x6ea2 PK11_DeriveWithFlags()
 10387 ms  0x6ea2 basekey:0x7fc92877c100
 10387 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10387 ms  0x6ea2 ret:0x7fc92870ee80
 10387 ms  0x6ea2 PK11_Derive()
 10387 ms  0x6ea2 basekey:0x7fc92870ee80
 10387 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10387 ms  0x6ea2 ret:0x7fc92870e880
           /* TID 0x6f41 */
 10387 ms  SECKEY_ECParamsToBasePointOrderLen()
 10387 ms  0x6f41 ret:0x180
 10387 ms  SECKEY_ECParamsToBasePointOrderLen()
 10387 ms  0x6f41 ret:0x180
           /* TID 0x6f40 */
 10391 ms  0x6f40 ret:0x0
           /* TID 0x6f42 */
 10392 ms  0x6f42 EC_ValidatePublicKey()
 10396 ms  0x6f42 ret:0x0
           /* TID 0x6f41 */
 10396 ms  0x6f41 EC_ValidatePublicKey()
 10399 ms  0x6f41 ret:0x0
           /* TID 0x6ea2 */
 10400 ms  0x6ea2 PK11_Encrypt()
 10400 ms  0x6ea2 symkey:0x7fc927962a80
 10401 ms  0x6ea2 PK11_Encrypt()
 10401 ms  0x6ea2 symkey:0x7fc927962a80
 10401 ms  0x6ea2 SSL_AuthCertificateComplete()
 10401 ms  0x6ea2 fd:0x7fc92cbff160
 10401 ms  0x6ea2 err:0x0
 10401 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10401 ms     | 0x6ea2 basekey:0x7fc92870d780
 10401 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10401 ms     | 0x6ea2 ret:0x7fc92877c100
 10401 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10401 ms     | 0x6ea2 basekey:0x7fc92870d780
 10401 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10401 ms     | 0x6ea2 ret:0x7fc92870d600
 10401 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10401 ms     | 0x6ea2 basekey:0x7fc92870d780
 10401 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10401 ms     | 0x6ea2 ret:0x7fc92870d700
 10401 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10401 ms     | 0x6ea2 basekey:0x7fc92877b500
 10401 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10401 ms     | 0x6ea2 ret:0x7fc92870d580
 10401 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10401 ms     | 0x6ea2 basekey:0x7fc92877b500
 10401 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10402 ms     | 0x6ea2 ret:0x7fc92870d680
 10402 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10402 ms     | 0x6ea2 basekey:0x7fc92870d600
 10402 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10402 ms     | 0x6ea2 ret:0x7fc92870d680
 10402 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10402 ms     | 0x6ea2 basekey:0x7fc92870d600
 10402 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10402 ms     | 0x6ea2 ret:0x7fc92870d380
 10402 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10402 ms     | 0x6ea2 basekey:0x7fc92877b500
 10402 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10402 ms     | 0x6ea2 ret:0x7fc92870de00
 10402 ms     | 0x6ea2 PK11_Encrypt()
 10402 ms     | 0x6ea2 symkey:0x7fc92870d580
 10403 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10403 ms     | 0x6ea2 basekey:0x7fc92877c100
 10403 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10403 ms     | 0x6ea2 ret:0x7fc92870de00
 10403 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10403 ms     | 0x6ea2 basekey:0x7fc92877c100
 10403 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10403 ms     | 0x6ea2 ret:0x7fc92870d380
 10403 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10403 ms     | 0x6ea2 basekey:0x7fc92870d780
 10403 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10403 ms     | 0x6ea2 ret:0x7fc92870d580
 10403 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 10403 ms     | 0x6ea2 privk:0x7fc92f443820::7fc92f443820  90 e2 bf 2c                                      ...,
 10403 ms     | 0x6ea2 privk:0x7fc92f443820::7fc92f443820  e5 e5 e5 e5                                      ....
 10403 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 10403 ms     | 0x6ea2 privk:0x7fc92f440820::7fc92f440820  70 ae b2 2c                                      p..,
 10403 ms     | 0x6ea2 privk:0x7fc92f440820::7fc92f440820  e5 e5 e5 e5                                      ....
           /* TID 0x6eaa */
 10410 ms  0x6eaa PR_Close()
 10410 ms  0x6eaa fd:0x7fc92f3dba00
           /* TID 0x6ea2 */
 10411 ms  0x6ea2 SSL_ImportFD()
 10411 ms  0x6ea2 ret:0x7fc92f3dba00
 10411 ms  0x6ea2 SSL_AuthCertificateHook()
 10411 ms  0x6ea2 fd:0x7fc92f3dba00
 10411 ms  0x6ea2 ret:0x0
 10411 ms  0x6ea2 PR_Connect()
 10411 ms  0x6ea2 fd:0x7fc92f3dba00
 10412 ms  0x6ea2 SSL_ImportFD()
 10412 ms  0x6ea2 ret:0x7fc92c96f310
 10412 ms  0x6ea2 SSL_AuthCertificateHook()
 10412 ms  0x6ea2 fd:0x7fc92c96f310
 10412 ms  0x6ea2 ret:0x0
           /* TID 0x6f41 */
 10415 ms  SECKEY_ECParamsToBasePointOrderLen()
 10415 ms  0x6f41 ret:0x100
 10415 ms  SECKEY_ECParamsToBasePointOrderLen()
 10415 ms  0x6f41 ret:0x100
 10415 ms  0x6f41 EC_ValidatePublicKey()
           /* TID 0x6ea2 */
 10417 ms  0x6ea2 PR_Connect()
 10417 ms  0x6ea2 fd:0x7fc92c96f310
 10417 ms  0x6ea2 SSL_ImportFD()
 10417 ms  0x6ea2 ret:0x7fc92ffb2070
 10417 ms  0x6ea2 SSL_AuthCertificateHook()
 10417 ms  0x6ea2 fd:0x7fc92ffb2070
 10417 ms  0x6ea2 ret:0x0
 10417 ms  0x6ea2 PR_Connect()
 10417 ms  0x6ea2 fd:0x7fc92ffb2070
 10417 ms  0x6ea2 SSL_ImportFD()
 10417 ms  0x6ea2 ret:0x7fc92ffb2100
 10417 ms  0x6ea2 SSL_AuthCertificateHook()
 10417 ms  0x6ea2 fd:0x7fc92ffb2100
 10417 ms  0x6ea2 ret:0x0
 10421 ms  0x6ea2 PR_Connect()
 10421 ms  0x6ea2 fd:0x7fc92ffb2100
 10421 ms  0x6ea2 SSL_ImportFD()
 10421 ms  0x6ea2 ret:0x7fc92ffb2130
 10421 ms  0x6ea2 SSL_AuthCertificateHook()
 10421 ms  0x6ea2 fd:0x7fc92ffb2130
 10421 ms  0x6ea2 ret:0x0
 10421 ms  0x6ea2 PR_Connect()
 10421 ms  0x6ea2 fd:0x7fc92ffb2130
 10421 ms  0x6ea2 SSL_ImportFD()
 10421 ms  0x6ea2 ret:0x7fc92ffb21c0
 10421 ms  0x6ea2 SSL_AuthCertificateHook()
 10421 ms  0x6ea2 fd:0x7fc92ffb21c0
 10421 ms  0x6ea2 ret:0x0
 10421 ms  0x6ea2 PR_Connect()
 10421 ms  0x6ea2 fd:0x7fc92ffb21c0
 10422 ms  0x6ea2 SSL_ImportFD()
 10422 ms  0x6ea2 ret:0x7fc92ffb22e0
 10422 ms  0x6ea2 SSL_AuthCertificateHook()
 10422 ms  0x6ea2 fd:0x7fc92ffb22e0
 10422 ms  0x6ea2 ret:0x0
 10422 ms  0x6ea2 PR_Connect()
 10422 ms  0x6ea2 fd:0x7fc92ffb22e0
 10422 ms  0x6ea2 SSL_ImportFD()
 10422 ms  0x6ea2 ret:0x7fc92ffb2340
 10422 ms  0x6ea2 SSL_AuthCertificateHook()
 10422 ms  0x6ea2 fd:0x7fc92ffb2340
 10422 ms  0x6ea2 ret:0x0
 10422 ms  0x6ea2 PR_Connect()
 10422 ms  0x6ea2 fd:0x7fc92ffb2340
 10422 ms  0x6ea2 SSL_ImportFD()
 10422 ms  0x6ea2 ret:0x7fc92ffb2400
 10422 ms  0x6ea2 SSL_AuthCertificateHook()
 10422 ms  0x6ea2 fd:0x7fc92ffb2400
 10422 ms  0x6ea2 ret:0x0
 10423 ms  0x6ea2 PR_Connect()
 10423 ms  0x6ea2 fd:0x7fc92ffb2400
 10426 ms  0x6ea2 SSL_ImportFD()
 10426 ms  0x6ea2 ret:0x7fc92c648670
 10426 ms  0x6ea2 SSL_AuthCertificateHook()
 10426 ms  0x6ea2 fd:0x7fc92c648670
 10426 ms  0x6ea2 ret:0x0
 10426 ms  0x6ea2 PR_Connect()
 10426 ms  0x6ea2 fd:0x7fc92c648670
 10430 ms  0x6ea2 SSL_ImportFD()
 10430 ms  0x6ea2 ret:0x7fc93006e400
 10431 ms  0x6ea2 SSL_AuthCertificateHook()
 10431 ms  0x6ea2 fd:0x7fc93006e400
 10431 ms  0x6ea2 ret:0x0
 10431 ms  0x6ea2 PR_Connect()
 10431 ms  0x6ea2 fd:0x7fc93006e400
 10431 ms  0x6ea2 SSL_ImportFD()
 10431 ms  0x6ea2 ret:0x7fc92c918250
 10431 ms  0x6ea2 SSL_AuthCertificateHook()
 10431 ms  0x6ea2 fd:0x7fc92c918250
 10431 ms  0x6ea2 ret:0x0
 10432 ms  0x6ea2 PR_Connect()
 10432 ms  0x6ea2 fd:0x7fc92c918250
 10432 ms  0x6ea2 SSL_ImportFD()
 10432 ms  0x6ea2 ret:0x7fc92cb17820
 10432 ms  0x6ea2 SSL_AuthCertificateHook()
 10432 ms  0x6ea2 fd:0x7fc92cb17820
 10433 ms  0x6ea2 ret:0x0
 10433 ms  0x6ea2 PR_Connect()
 10433 ms  0x6ea2 fd:0x7fc92cb17820
 10433 ms  0x6ea2 SSL_ImportFD()
 10433 ms  0x6ea2 ret:0x7fc92f4bc190
 10433 ms  0x6ea2 SSL_AuthCertificateHook()
 10433 ms  0x6ea2 fd:0x7fc92f4bc190
 10433 ms  0x6ea2 ret:0x0
 10433 ms  0x6ea2 PR_Connect()
 10433 ms  0x6ea2 fd:0x7fc92f4bc190
 10433 ms  0x6ea2 SSL_ImportFD()
 10433 ms  0x6ea2 ret:0x7fc92ffff670
 10433 ms  0x6ea2 SSL_AuthCertificateHook()
 10433 ms  0x6ea2 fd:0x7fc92ffff670
 10433 ms  0x6ea2 ret:0x0
 10433 ms  0x6ea2 PR_Connect()
 10433 ms  0x6ea2 fd:0x7fc92ffff670
 10434 ms  0x6ea2 SSL_ImportFD()
 10434 ms  0x6ea2 ret:0x7fc92ffff970
 10434 ms  0x6ea2 SSL_AuthCertificateHook()
 10434 ms  0x6ea2 fd:0x7fc92ffff970
 10434 ms  0x6ea2 ret:0x0
 10434 ms  0x6ea2 PR_Connect()
 10434 ms  0x6ea2 fd:0x7fc92ffff970
 10434 ms  0x6ea2 SSL_ImportFD()
 10434 ms  0x6ea2 ret:0x7fc92ffffa30
 10434 ms  0x6ea2 SSL_AuthCertificateHook()
 10434 ms  0x6ea2 fd:0x7fc92ffffa30
 10434 ms  0x6ea2 ret:0x0
 10434 ms  0x6ea2 PR_Connect()
 10434 ms  0x6ea2 fd:0x7fc92ffffa30
 10434 ms  0x6ea2 SSL_ImportFD()
 10434 ms  0x6ea2 ret:0x7fc930d54d00
 10434 ms  0x6ea2 SSL_AuthCertificateHook()
 10434 ms  0x6ea2 fd:0x7fc930d54d00
 10435 ms  0x6ea2 ret:0x0
           /* TID 0x6f41 */
 10435 ms  0x6f41 ret:0x0
           /* TID 0x6f42 */
 10435 ms  SECKEY_ECParamsToBasePointOrderLen()
 10435 ms  0x6f42 ret:0x100
 10435 ms  SECKEY_ECParamsToBasePointOrderLen()
 10435 ms  0x6f42 ret:0x100
 10435 ms  0x6f42 EC_ValidatePublicKey()
 10437 ms  0x6f42 ret:0x0
           /* TID 0x6ea2 */
 10437 ms  0x6ea2 PK11_Encrypt()
 10437 ms  0x6ea2 symkey:0x7fc927962a80
           /* TID 0x6f40 */
 10438 ms  SECKEY_ECParamsToBasePointOrderLen()
 10438 ms  0x6f40 ret:0x100
 10438 ms  SECKEY_ECParamsToBasePointOrderLen()
 10438 ms  0x6f40 ret:0x100
 10438 ms  0x6f40 EC_ValidatePublicKey()
 10439 ms  0x6f40 ret:0x0
 10441 ms  0x6f40 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10441 ms     | SECKEY_ECParamsToBasePointOrderLen()
 10441 ms     | 0x6f40 ret:0x100
 10441 ms     | SECKEY_ECParamsToBasePointOrderLen()
 10441 ms     | 0x6f40 ret:0x100
 10441 ms     | 0x6f40 EC_ValidatePublicKey()
 10443 ms     | 0x6f40 ret:0x0
 10444 ms  0x6f40 ret:0x0
           /* TID 0x6ea2 */
 10444 ms  0x6ea2 PK11_Encrypt()
 10444 ms  0x6ea2 symkey:0x7fc927962a80
 10447 ms  0x6ea2 PR_Connect()
 10447 ms  0x6ea2 fd:0x7fc930d54d00
 10447 ms  0x6ea2 SSL_ImportFD()
 10447 ms  0x6ea2 ret:0x7fc92c3203d0
 10447 ms  0x6ea2 SSL_AuthCertificateHook()
 10447 ms  0x6ea2 fd:0x7fc92c3203d0
 10447 ms  0x6ea2 ret:0x0
 10448 ms  0x6ea2 PK11_Encrypt()
 10448 ms  0x6ea2 symkey:0x7fc927962a80
           /* TID 0x6f42 */
 10450 ms  0x6f42 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10450 ms     | SECKEY_ECParamsToBasePointOrderLen()
 10450 ms     | 0x6f42 ret:0x100
 10450 ms     | SECKEY_ECParamsToBasePointOrderLen()
 10450 ms     | 0x6f42 ret:0x100
 10450 ms     | 0x6f42 EC_ValidatePublicKey()
 10452 ms     | 0x6f42 ret:0x0
 10453 ms  0x6f42 ret:0x0
           /* TID 0x6f41 */
 10455 ms  0x6f41 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10455 ms     | SECKEY_ECParamsToBasePointOrderLen()
 10455 ms     | 0x6f41 ret:0x100
 10455 ms     | SECKEY_ECParamsToBasePointOrderLen()
 10455 ms     | 0x6f41 ret:0x100
 10455 ms     | 0x6f41 EC_ValidatePublicKey()
           /* TID 0x6ea2 */
 10456 ms  0x6ea2 PR_Connect()
 10456 ms  0x6ea2 fd:0x7fc92c3203d0
 10457 ms  0x6ea2 SSL_ImportFD()
 10457 ms  0x6ea2 ret:0x7fc92c406a00
 10457 ms  0x6ea2 SSL_AuthCertificateHook()
 10457 ms  0x6ea2 fd:0x7fc92c406a00
 10457 ms  0x6ea2 ret:0x0
 10457 ms  0x6ea2 PR_Connect()
 10457 ms  0x6ea2 fd:0x7fc92c406a00
 10457 ms  0x6ea2 SSL_ImportFD()
 10457 ms  0x6ea2 ret:0x7fc92c406790
 10457 ms  0x6ea2 SSL_AuthCertificateHook()
 10457 ms  0x6ea2 fd:0x7fc92c406790
 10457 ms  0x6ea2 ret:0x0
 10457 ms  0x6ea2 PR_Connect()
 10457 ms  0x6ea2 fd:0x7fc92c406790
 10457 ms  0x6ea2 SSL_ImportFD()
 10457 ms  0x6ea2 ret:0x7fc92ffff400
 10457 ms  0x6ea2 SSL_AuthCertificateHook()
 10457 ms  0x6ea2 fd:0x7fc92ffff400
 10457 ms  0x6ea2 ret:0x0
 10457 ms  0x6ea2 PR_Connect()
 10457 ms  0x6ea2 fd:0x7fc92ffff400
 10458 ms  0x6ea2 SSL_ImportFD()
 10458 ms  0x6ea2 ret:0x7fc92c795d60
 10458 ms  0x6ea2 SSL_AuthCertificateHook()
 10458 ms  0x6ea2 fd:0x7fc92c795d60
 10458 ms  0x6ea2 ret:0x0
 10458 ms  0x6ea2 PR_Connect()
 10458 ms  0x6ea2 fd:0x7fc92c795d60
 10458 ms  0x6ea2 SSL_ImportFD()
 10458 ms  0x6ea2 ret:0x7fc92f3d01c0
 10458 ms  0x6ea2 SSL_AuthCertificateHook()
 10458 ms  0x6ea2 fd:0x7fc92f3d01c0
 10458 ms  0x6ea2 ret:0x0
           /* TID 0x6f41 */
 10459 ms     | 0x6f41 ret:0x0
           /* TID 0x6ea2 */
 10460 ms  0x6ea2 PR_Connect()
 10460 ms  0x6ea2 fd:0x7fc92f3d01c0
 10460 ms  0x6ea2 SSL_ImportFD()
 10460 ms  0x6ea2 ret:0x7fc92c97f250
 10460 ms  0x6ea2 SSL_AuthCertificateHook()
 10460 ms  0x6ea2 fd:0x7fc92c97f250
 10460 ms  0x6ea2 ret:0x0
 10460 ms  0x6ea2 PR_Connect()
 10460 ms  0x6ea2 fd:0x7fc92c97f250
 10460 ms  0x6ea2 SSL_ImportFD()
 10460 ms  0x6ea2 ret:0x7fc92c4dee20
 10460 ms  0x6ea2 SSL_AuthCertificateHook()
 10460 ms  0x6ea2 fd:0x7fc92c4dee20
 10460 ms  0x6ea2 ret:0x0
 10460 ms  0x6ea2 PR_Connect()
 10460 ms  0x6ea2 fd:0x7fc92c4dee20
 10461 ms  0x6ea2 SSL_ImportFD()
 10461 ms  0x6ea2 ret:0x7fc92f3b2880
 10461 ms  0x6ea2 SSL_AuthCertificateHook()
 10461 ms  0x6ea2 fd:0x7fc92f3b2880
 10461 ms  0x6ea2 ret:0x0
 10461 ms  0x6ea2 PR_Connect()
 10461 ms  0x6ea2 fd:0x7fc92f3b2880
           /* TID 0x6eaa */
 10463 ms  0x6eaa PR_Close()
 10463 ms  0x6eaa fd:0x7fc92c96f1c0
           /* TID 0x6ea2 */
 10464 ms  0x6ea2 SSL_AuthCertificateComplete()
 10464 ms  0x6ea2 fd:0x7fc92cbcdcd0
 10464 ms  0x6ea2 err:0x0
 10464 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10464 ms     | 0x6ea2 basekey:0x7fc92870d200
 10464 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10464 ms     | 0x6ea2 ret:0x7fc92877b700
 10464 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10464 ms     | 0x6ea2 basekey:0x7fc92870d200
 10464 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10464 ms     | 0x6ea2 ret:0x7fc92877b500
 10464 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10464 ms     | 0x6ea2 basekey:0x7fc92870d200
 10464 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10464 ms     | 0x6ea2 ret:0x7fc92870d780
 10464 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10464 ms     | 0x6ea2 basekey:0x7fc92870d880
 10464 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10464 ms     | 0x6ea2 ret:0x7fc92870d380
 10464 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10464 ms     | 0x6ea2 basekey:0x7fc92870d880
 10464 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10464 ms     | 0x6ea2 ret:0x7fc92870d480
 10464 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10464 ms     | 0x6ea2 basekey:0x7fc92877b500
 10464 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10464 ms     | 0x6ea2 ret:0x7fc92870d480
 10464 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10464 ms     | 0x6ea2 basekey:0x7fc92877b500
 10464 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10464 ms     | 0x6ea2 ret:0x7fc92870d300
 10464 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10464 ms     | 0x6ea2 basekey:0x7fc92870d880
 10464 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10464 ms     | 0x6ea2 ret:0x7fc9282ed880
 10464 ms     | 0x6ea2 PK11_Encrypt()
 10464 ms     | 0x6ea2 symkey:0x7fc92870d380
 10464 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10464 ms     | 0x6ea2 basekey:0x7fc92877b700
 10464 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10464 ms     | 0x6ea2 ret:0x7fc9282ed880
 10464 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10464 ms     | 0x6ea2 basekey:0x7fc92877b700
 10464 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10464 ms     | 0x6ea2 ret:0x7fc92870d300
 10464 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10464 ms     | 0x6ea2 basekey:0x7fc92870d200
 10464 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10464 ms     | 0x6ea2 ret:0x7fc92870d380
 10464 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 10464 ms     | 0x6ea2 privk:0x7fc92ff0f020::7fc92ff0f020  b0 65 3d 2f                                      .e=/
 10464 ms     | 0x6ea2 privk:0x7fc92ff0f020::7fc92ff0f020  e5 e5 e5 e5                                      ....
 10465 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 10465 ms     | 0x6ea2 privk:0x7fc92ff0b020::7fc92ff0b020  f0 f1 3c 2f                                      ..</
 10465 ms     | 0x6ea2 privk:0x7fc92ff0b020::7fc92ff0b020  e5 e5 e5 e5                                      ....
 10465 ms  0x6ea2 SSL_AuthCertificateComplete()
 10465 ms  0x6ea2 fd:0x7fc92f4bcd90
 10465 ms  0x6ea2 err:0x0
 10465 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10465 ms     | 0x6ea2 basekey:0x7fc92870e580
 10465 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10465 ms     | 0x6ea2 ret:0x7fc92870e100
 10465 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10465 ms     | 0x6ea2 basekey:0x7fc92870e580
 10465 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10465 ms     | 0x6ea2 ret:0x7fc92870d880
 10465 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10465 ms     | 0x6ea2 basekey:0x7fc92870e580
 10465 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10465 ms     | 0x6ea2 ret:0x7fc92870d200
 10465 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10465 ms     | 0x6ea2 basekey:0x7fc92877cb00
 10465 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10465 ms     | 0x6ea2 ret:0x7fc92870d300
 10465 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10465 ms     | 0x6ea2 basekey:0x7fc92877cb00
 10465 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10465 ms     | 0x6ea2 ret:0x7fc92870d400
 10465 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10465 ms     | 0x6ea2 basekey:0x7fc92870d880
 10465 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10465 ms     | 0x6ea2 ret:0x7fc92870d400
 10465 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10465 ms     | 0x6ea2 basekey:0x7fc92870d880
 10465 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10465 ms     | 0x6ea2 ret:0x7fc92c79ae00
 10465 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10465 ms     | 0x6ea2 basekey:0x7fc92877cb00
 10465 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10465 ms     | 0x6ea2 ret:0x7fc92870e700
 10465 ms     | 0x6ea2 PK11_Encrypt()
 10465 ms     | 0x6ea2 symkey:0x7fc92870d300
 10465 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10465 ms     | 0x6ea2 basekey:0x7fc92870e100
 10465 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10465 ms     | 0x6ea2 ret:0x7fc92870e700
 10465 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10465 ms     | 0x6ea2 basekey:0x7fc92870e100
 10465 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10465 ms     | 0x6ea2 ret:0x7fc92c79ae00
 10465 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10465 ms     | 0x6ea2 basekey:0x7fc92870e580
 10465 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10465 ms     | 0x6ea2 ret:0x7fc92870d300
 10465 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 10465 ms     | 0x6ea2 privk:0x7fc93058d820::7fc93058d820  00 91 4f 31                                      ..O1
 10465 ms     | 0x6ea2 privk:0x7fc93058d820::7fc93058d820  e5 e5 e5 e5                                      ....
 10465 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 10465 ms     | 0x6ea2 privk:0x7fc93058b820::7fc93058b820  c0 ae 06 31                                      ...1
 10466 ms     | 0x6ea2 privk:0x7fc93058b820::7fc93058b820  e5 e5 e5 e5                                      ....
 10466 ms  0x6ea2 PK11_Encrypt()
 10466 ms  0x6ea2 symkey:0x7fc927962a80
           /* TID 0x6f41 */
 10468 ms  0x6f41 ret:0x0
           /* TID 0x6ea2 */
 10468 ms  0x6ea2 PK11_Encrypt()
 10468 ms  0x6ea2 symkey:0x7fc927962a80
           /* TID 0x6eaa */
 10470 ms  0x6eaa PR_Close()
 10470 ms  0x6eaa fd:0x7fc92c9b7610
           /* TID 0x6ea2 */
 10471 ms  0x6ea2 PK11_Encrypt()
 10471 ms  0x6ea2 symkey:0x7fc9282ed880
 10471 ms  0x6ea2 PK11_Encrypt()
 10471 ms  0x6ea2 symkey:0x7fc9282ed880
 10471 ms  0x6ea2 PK11_Encrypt()
 10471 ms  0x6ea2 symkey:0x7fc92870de00
 10471 ms  0x6ea2 PK11_Encrypt()
 10471 ms  0x6ea2 symkey:0x7fc92870e700
 10472 ms  0x6ea2 PK11_Derive()
 10472 ms  0x6ea2 basekey:0x7fc9354b5080
 10472 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10472 ms  0x6ea2 ret:0x7fc92877cb00
 10472 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10472 ms  0x6ea2 seckey:0x7fc930590020
 10472 ms     | 0x6ea2 EC_ValidatePublicKey()
 10472 ms     | 0x6ea2 ret:0x0
 10472 ms  0x6ea2 ret:0x7fc9354b5080
 10472 ms  SECKEY_ECParamsToKeySize()
 10472 ms  0x6ea2 ret:0xff
 10472 ms  0x6ea2 PK11_DeriveWithFlags()
 10472 ms  0x6ea2 basekey:0x7fc92877cb00
 10472 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10472 ms  0x6ea2 ret:0x7fc92870e580
 10472 ms  0x6ea2 PK11_Derive()
 10472 ms  0x6ea2 basekey:0x7fc9354b5080
 10472 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10472 ms  0x6ea2 ret:0x7fc92c79ae00
 10472 ms  0x6ea2 PK11_DeriveWithFlags()
 10472 ms  0x6ea2 basekey:0x7fc92c79ae00
 10472 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10472 ms  0x6ea2 ret:0x7fc92877cb00
 10472 ms  0x6ea2 PK11_DeriveWithFlags()
 10472 ms  0x6ea2 basekey:0x7fc92c79ae00
 10472 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10473 ms  0x6ea2 ret:0x7fc9354b5080
 10473 ms  0x6ea2 PK11_DeriveWithFlags()
 10473 ms  0x6ea2 basekey:0x7fc92c79ae00
 10473 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10473 ms  0x6ea2 ret:0x7fc92870e580
 10473 ms  0x6ea2 PK11_Derive()
 10473 ms  0x6ea2 basekey:0x7fc933a8d700
 10473 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10473 ms  0x6ea2 ret:0x7fc933a8d880
 10473 ms  0x6ea2 PK11_DeriveWithFlags()
 10473 ms  0x6ea2 basekey:0x7fc9354b5080
 10473 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10473 ms  0x6ea2 ret:0x7fc92c79ae00
 10473 ms  0x6ea2 PK11_DeriveWithFlags()
 10473 ms  0x6ea2 basekey:0x7fc9354b5080
 10473 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10473 ms  0x6ea2 ret:0x7fc92870e580
           /* TID 0x6f40 */
 10473 ms  SECKEY_ECParamsToBasePointOrderLen()
 10473 ms  0x6f40 ret:0x180
 10473 ms  SECKEY_ECParamsToBasePointOrderLen()
 10473 ms  0x6f40 ret:0x180
 10473 ms  0x6f40 EC_ValidatePublicKey()
 10475 ms  0x6f40 ret:0x0
           /* TID 0x6ea2 */
 10476 ms  SECKEY_ECParamsToKeySize()
 10476 ms  0x6ea2 ret:0x100
 10476 ms  SECKEY_ECParamsToBasePointOrderLen()
 10476 ms  0x6ea2 ret:0x100
 10476 ms  SECKEY_ECParamsToBasePointOrderLen()
 10477 ms  0x6ea2 ret:0x100
 10477 ms  0x6ea2 EC_ValidatePublicKey()
 10478 ms  0x6ea2 ret:0x0
           /* TID 0x6f40 */
 10482 ms  SECKEY_ECParamsToBasePointOrderLen()
 10482 ms  0x6f40 ret:0x100
 10482 ms  SECKEY_ECParamsToBasePointOrderLen()
 10482 ms  0x6f40 ret:0x100
 10482 ms  0x6f40 EC_ValidatePublicKey()
 10494 ms  0x6f40 ret:0x0
           /* TID 0x6ea2 */
 10494 ms  0x6ea2 PK11_DeriveWithFlags()
 10494 ms  0x6ea2 basekey:0x7fc9354b5080
 10494 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10494 ms  0x6ea2 ret:0x7fc92870e580
 10494 ms  0x6ea2 PR_Close()
 10494 ms  0x6ea2 fd:0x7fc92f4fe370
 10494 ms  0x6ea2 SSL_ImportFD()
 10494 ms  0x6ea2 ret:0x7fc92f4bce80
 10494 ms  0x6ea2 SSL_AuthCertificateHook()
 10494 ms  0x6ea2 fd:0x7fc92f4bce80
 10494 ms  0x6ea2 ret:0x0
 10494 ms  0x6ea2 PR_Connect()
 10494 ms  0x6ea2 fd:0x7fc92f4bce80
 10494 ms  0x6ea2 SSL_ImportFD()
 10494 ms  0x6ea2 ret:0x7fc92c96f1c0
 10494 ms  0x6ea2 SSL_AuthCertificateHook()
 10494 ms  0x6ea2 fd:0x7fc92c96f1c0
 10494 ms  0x6ea2 ret:0x0
 10494 ms  0x6ea2 PR_Connect()
 10494 ms  0x6ea2 fd:0x7fc92c96f1c0
 10494 ms  0x6ea2 SSL_ImportFD()
 10494 ms  0x6ea2 ret:0x7fc92c96fa00
 10494 ms  0x6ea2 SSL_AuthCertificateHook()
 10494 ms  0x6ea2 fd:0x7fc92c96fa00
 10494 ms  0x6ea2 ret:0x0
 10494 ms  0x6ea2 PR_Connect()
 10494 ms  0x6ea2 fd:0x7fc92c96fa00
 10494 ms  0x6ea2 SSL_AuthCertificateComplete()
 10494 ms  0x6ea2 fd:0x7fc92cbffd90
 10494 ms  0x6ea2 err:0x0
 10494 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10494 ms     | 0x6ea2 basekey:0x7fc92877bc00
 10494 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10494 ms     | 0x6ea2 ret:0x7fc92870e580
 10494 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10494 ms     | 0x6ea2 basekey:0x7fc92877bc00
 10494 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10494 ms     | 0x6ea2 ret:0x7fc933a8d700
 10494 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10494 ms     | 0x6ea2 basekey:0x7fc92877bc00
 10494 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10495 ms     | 0x6ea2 ret:0x7fc933a8d300
 10495 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10495 ms     | 0x6ea2 basekey:0x7fc92870d280
 10495 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10495 ms     | 0x6ea2 ret:0x7fc933a8d900
 10495 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10495 ms     | 0x6ea2 basekey:0x7fc92870d280
 10495 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10495 ms     | 0x6ea2 ret:0x7fc933a8d980
 10495 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10495 ms     | 0x6ea2 basekey:0x7fc933a8d700
 10495 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10495 ms     | 0x6ea2 ret:0x7fc933a8d980
 10495 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10495 ms     | 0x6ea2 basekey:0x7fc933a8d700
 10495 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10495 ms     | 0x6ea2 ret:0x7fc933a8df80
 10495 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10495 ms     | 0x6ea2 basekey:0x7fc92870d280
 10495 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10495 ms     | 0x6ea2 ret:0x7fc92877c080
 10495 ms     | 0x6ea2 PK11_Encrypt()
 10495 ms     | 0x6ea2 symkey:0x7fc933a8d900
           /* TID 0x6f40 */
 10499 ms  0x6f40 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10499 ms     | SECKEY_ECParamsToBasePointOrderLen()
 10499 ms     | 0x6f40 ret:0x100
 10499 ms     | SECKEY_ECParamsToBasePointOrderLen()
 10499 ms     | 0x6f40 ret:0x100
 10499 ms     | 0x6f40 EC_ValidatePublicKey()
           /* TID 0x6ea2 */
 10500 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10500 ms     | 0x6ea2 basekey:0x7fc92870e580
 10500 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10500 ms     | 0x6ea2 ret:0x7fc92877c080
 10500 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10500 ms     | 0x6ea2 basekey:0x7fc92870e580
 10500 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10500 ms     | 0x6ea2 ret:0x7fc933a8df80
           /* TID 0x6f40 */
 10501 ms     | 0x6f40 ret:0x0
           /* TID 0x6ea2 */
 10501 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10501 ms     | 0x6ea2 basekey:0x7fc92877bc00
 10501 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10501 ms     | 0x6ea2 ret:0x7fc933a8d900
 10501 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 10501 ms     | 0x6ea2 privk:0x7fc92ff15820::7fc92ff15820  b0 e5 95 2c                                      ...,
 10501 ms     | 0x6ea2 privk:0x7fc92ff15820::7fc92ff15820  e5 e5 e5 e5                                      ....
 10501 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 10501 ms     | 0x6ea2 privk:0x7fc92ff12820::7fc92ff12820  40 22 91 2c                                      @".,
 10501 ms     | 0x6ea2 privk:0x7fc92ff12820::7fc92ff12820  e5 e5 e5 e5                                      ....
 10501 ms  0x6ea2 PK11_Encrypt()
 10501 ms  0x6ea2 symkey:0x7fc9282ed880
 10502 ms  0x6ea2 PK11_Encrypt()
 10502 ms  0x6ea2 symkey:0x7fc9282ed880
 10502 ms  0x6ea2 PK11_Encrypt()
 10502 ms  0x6ea2 symkey:0x7fc9282ed880
 10502 ms  0x6ea2 PR_Connect()
 10502 ms  0x6ea2 fd:0x7fc92cbff3a0
           /* TID 0x6eaa */
 10503 ms  0x6eaa PR_Close()
 10503 ms  0x6eaa fd:0x7fc92c96f910
           /* TID 0x6ea2 */
 10505 ms  0x6ea2 PK11_Encrypt()
 10505 ms  0x6ea2 symkey:0x7fc927962a80
 10505 ms  0x6ea2 PK11_DeriveWithFlags()
 10505 ms  0x6ea2 basekey:0x7fc92870d380
 10505 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10505 ms  0x6ea2 ret:0x7fc92870d500
 10505 ms  0x6ea2 PK11_DeriveWithFlags()
 10505 ms  0x6ea2 basekey:0x7fc92870d380
 10505 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10505 ms  0x6ea2 ret:0x7fc92870d500
 10505 ms  0x6ea2 PK11_Encrypt()
 10505 ms  0x6ea2 symkey:0x7fc9282ed880
 10505 ms  0x6ea2 PK11_DeriveWithFlags()
 10505 ms  0x6ea2 basekey:0x7fc92870d580
 10505 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10506 ms  0x6ea2 ret:0x7fc92870d500
 10506 ms  0x6ea2 PK11_DeriveWithFlags()
 10506 ms  0x6ea2 basekey:0x7fc92870d580
 10506 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10506 ms  0x6ea2 ret:0x7fc92870d500
           /* TID 0x6eaa */
 10511 ms  0x6eaa PR_Close()
 10511 ms  0x6eaa fd:0x7fc92c96f910
 10515 ms  0x6eaa PR_Close()
 10515 ms  0x6eaa fd:0x7fc92c96f910
           /* TID 0x6ea2 */
 10516 ms  0x6ea2 PK11_Encrypt()
 10516 ms  0x6ea2 symkey:0x7fc92877c080
 10516 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10516 ms  0x6ea2 cx:0x7fc9264d4b28
 10516 ms     | 0x6ea2 EC_ValidatePublicKey()
 10516 ms     | 0x6ea2 ret:0x0
 10516 ms  0x6ea2 ret:0x7fc92f43f820::7fc92f43f820  40 72 94 2c                                      @r.,
 10516 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10516 ms  0x6ea2 cx:0x7fc9264d4b28
 10517 ms     | 0x6ea2 EC_ValidatePublicKey()
 10519 ms     | 0x6ea2 ret:0x0
 10519 ms  0x6ea2 ret:0x7fc9304df020::7fc9304df020  60 65 9c 2c                                      `e.,
 10519 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10519 ms  0x6ea2 cx:0x7fc9264d47e8
 10519 ms     | 0x6ea2 EC_ValidatePublicKey()
 10519 ms     | 0x6ea2 ret:0x0
 10519 ms  0x6ea2 ret:0x7fc93058a020::7fc93058a020  30 ed bf 2c                                      0..,
           /* TID 0x6f40 */
 10523 ms  0x6f40 ret:0x0
           /* TID 0x6ea2 */
 10523 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10523 ms  0x6ea2 cx:0x7fc9264d47e8
 10524 ms     | 0x6ea2 EC_ValidatePublicKey()
 10526 ms     | 0x6ea2 ret:0x0
 10526 ms  0x6ea2 ret:0x7fc92ff0c020::7fc92ff0c020  60 9f ab 2c                                      `..,
 10526 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10526 ms  0x6ea2 cx:0x7fc9264d4648
 10526 ms     | 0x6ea2 EC_ValidatePublicKey()
 10526 ms     | 0x6ea2 ret:0x0
 10527 ms  0x6ea2 ret:0x7fc93058b020::7fc93058b020  c0 54 bc 2c                                      .T.,
 10527 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10527 ms  0x6ea2 cx:0x7fc9264d4648
 10527 ms     | 0x6ea2 EC_ValidatePublicKey()
 10532 ms     | 0x6ea2 ret:0x0
 10533 ms  0x6ea2 ret:0x7fc93058d020::7fc93058d020  e0 f2 3c 2f                                      ..</
 10534 ms  0x6ea2 PR_Close()
 10534 ms  0x6ea2 fd:0x7fc92cbff160
 10534 ms     | 0x6ea2 PK11_Encrypt()
 10534 ms     | 0x6ea2 symkey:0x7fc92870de00
 10535 ms  0x6ea2 PK11_Encrypt()
 10535 ms  0x6ea2 symkey:0x7fc9282ed880
 10535 ms  0x6ea2 SSL_AuthCertificateComplete()
 10535 ms  0x6ea2 fd:0x7fc92f4dbbe0
 10535 ms  0x6ea2 err:0x0
 10535 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10535 ms     | 0x6ea2 basekey:0x7fc933a8d880
 10535 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10535 ms     | 0x6ea2 ret:0x7fc92870d700
 10535 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10535 ms     | 0x6ea2 basekey:0x7fc933a8d880
 10535 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10535 ms     | 0x6ea2 ret:0x7fc92870d600
 10535 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10535 ms     | 0x6ea2 basekey:0x7fc933a8d880
 10535 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10535 ms     | 0x6ea2 ret:0x7fc92877c100
 10535 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10535 ms     | 0x6ea2 basekey:0x7fc92877cb00
 10535 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10535 ms     | 0x6ea2 ret:0x7fc92870d580
 10535 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10535 ms     | 0x6ea2 basekey:0x7fc92877cb00
 10535 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10535 ms     | 0x6ea2 ret:0x7fc92870d680
 10535 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10535 ms     | 0x6ea2 basekey:0x7fc92870d600
 10535 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10535 ms     | 0x6ea2 ret:0x7fc92870d680
 10535 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10535 ms     | 0x6ea2 basekey:0x7fc92870d600
 10535 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10535 ms     | 0x6ea2 ret:0x7fc92870de00
 10535 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10535 ms     | 0x6ea2 basekey:0x7fc92877cb00
 10535 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10535 ms     | 0x6ea2 ret:0x7fc92c79ae00
 10535 ms     | 0x6ea2 PK11_Encrypt()
 10535 ms     | 0x6ea2 symkey:0x7fc92870d580
 10535 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10535 ms     | 0x6ea2 basekey:0x7fc92870d700
 10535 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10535 ms     | 0x6ea2 ret:0x7fc92c79ae00
 10535 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10535 ms     | 0x6ea2 basekey:0x7fc92870d700
 10535 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10536 ms     | 0x6ea2 ret:0x7fc92870de00
 10536 ms     | 0x6ea2 PK11_DeriveWithFlags()
 10536 ms     | 0x6ea2 basekey:0x7fc933a8d880
 10536 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 10536 ms     | 0x6ea2 ret:0x7fc92870d580
 10536 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 10536 ms     | 0x6ea2 privk:0x7fc930592020::7fc930592020  b0 70 a8 33                                      .p.3
 10536 ms     | 0x6ea2 privk:0x7fc930592020::7fc930592020  e5 e5 e5 e5                                      ....
 10536 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 10536 ms     | 0x6ea2 privk:0x7fc930590020::7fc930590020  90 97 4f 31                                      ..O1
 10536 ms     | 0x6ea2 privk:0x7fc930590020::7fc930590020  e5 e5 e5 e5                                      ....
           /* TID 0x6eaa */
 10541 ms  0x6eaa PR_Close()
 10541 ms  0x6eaa fd:0x7fc92967ef40
 10543 ms  0x6eaa PR_Close()
 10543 ms  0x6eaa fd:0x7fc92967ef40
 10552 ms  0x6eaa PR_Close()
 10552 ms  0x6eaa fd:0x7fc92967ef40
           /* TID 0x6ea2 */
 10554 ms  0x6ea2 PK11_DeriveWithFlags()
 10554 ms  0x6ea2 basekey:0x7fc933a8d900
 10554 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10554 ms  0x6ea2 ret:0x7fc9354b5080
 10554 ms  0x6ea2 PK11_DeriveWithFlags()
 10554 ms  0x6ea2 basekey:0x7fc933a8d900
 10554 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10554 ms  0x6ea2 ret:0x7fc9354b5080
 10554 ms  0x6ea2 PK11_DeriveWithFlags()
 10554 ms  0x6ea2 basekey:0x7fc92870d300
 10555 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10555 ms  0x6ea2 ret:0x7fc9354b5080
 10555 ms  0x6ea2 PK11_DeriveWithFlags()
 10555 ms  0x6ea2 basekey:0x7fc92870d300
 10555 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10555 ms  0x6ea2 ret:0x7fc9354b5080
 10555 ms  0x6ea2 PK11_Encrypt()
 10555 ms  0x6ea2 symkey:0x7fc92c79ae00
 10555 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10555 ms  0x6ea2 cx:0x7fc92c9060a8
 10556 ms     | 0x6ea2 EC_ValidatePublicKey()
 10556 ms     | 0x6ea2 ret:0x0
 10556 ms  0x6ea2 ret:0x7fc92f443820::7fc92f443820  60 25 64 2c                                      `%d,
 10556 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10556 ms  0x6ea2 cx:0x7fc92c9060a8
 10557 ms     | 0x6ea2 EC_ValidatePublicKey()
 10558 ms     | 0x6ea2 ret:0x0
 10558 ms  0x6ea2 ret:0x7fc930590020::7fc930590020  b0 65 3d 2f                                      .e=/
 10560 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10560 ms  0x6ea2 cx:0x7fc92c907aa8
 10560 ms     | 0x6ea2 EC_ValidatePublicKey()
 10560 ms     | 0x6ea2 ret:0x0
 10560 ms  0x6ea2 ret:0x7fc930593020::7fc930593020  d0 8d f7 2f                                      .../
 10560 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10560 ms  0x6ea2 cx:0x7fc92c907aa8
 10561 ms     | 0x6ea2 EC_ValidatePublicKey()
 10562 ms     | 0x6ea2 ret:0x0
 10562 ms  0x6ea2 ret:0x7fc930596020::7fc930596020  c0 ae 06 31                                      ...1
 10567 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10567 ms  0x6ea2 cx:0x7fc92c907908
 10567 ms     | 0x6ea2 EC_ValidatePublicKey()
 10567 ms     | 0x6ea2 ret:0x0
 10567 ms  0x6ea2 ret:0x7fc9310b7820::7fc9310b7820  60 90 4f 31                                      `.O1
 10567 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10567 ms  0x6ea2 cx:0x7fc92c907908
 10568 ms     | 0x6ea2 EC_ValidatePublicKey()
 10570 ms     | 0x6ea2 ret:0x0
 10570 ms  0x6ea2 ret:0x7fc9310bb820::7fc9310bb820  d0 9d 4f 31                                      ..O1
 10570 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10570 ms  0x6ea2 cx:0x7fc92c907768
 10571 ms     | 0x6ea2 EC_ValidatePublicKey()
 10571 ms     | 0x6ea2 ret:0x0
 10571 ms  0x6ea2 ret:0x7fc9310c7820::7fc9310c7820  50 71 a8 33                                      Pq.3
 10571 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10571 ms  0x6ea2 cx:0x7fc92c907768
 10571 ms     | 0x6ea2 EC_ValidatePublicKey()
 10573 ms     | 0x6ea2 ret:0x0
 10573 ms  0x6ea2 ret:0x7fc931121020::7fc931121020  f0 f1 a9 33                                      ...3
 10573 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10573 ms  0x6ea2 cx:0x7fc92c9075c8
 10574 ms     | 0x6ea2 EC_ValidatePublicKey()
 10574 ms     | 0x6ea2 ret:0x0
 10574 ms  0x6ea2 ret:0x7fc931126020::7fc931126020  80 f3 a9 33                                      ...3
 10574 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10574 ms  0x6ea2 cx:0x7fc92c9075c8
 10574 ms     | 0x6ea2 EC_ValidatePublicKey()
 10576 ms     | 0x6ea2 ret:0x0
 10576 ms  0x6ea2 ret:0x7fc93112f020::7fc93112f020  d0 f8 a9 33                                      ...3
 10576 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10576 ms  0x6ea2 cx:0x7fc92c907428
 10577 ms     | 0x6ea2 EC_ValidatePublicKey()
 10577 ms     | 0x6ea2 ret:0x0
 10577 ms  0x6ea2 ret:0x7fc931133820::7fc931133820  f0 fb a9 33                                      ...3
 10577 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10577 ms  0x6ea2 cx:0x7fc92c907428
 10577 ms     | 0x6ea2 EC_ValidatePublicKey()
 10579 ms     | 0x6ea2 ret:0x0
 10580 ms  0x6ea2 ret:0x7fc931136820::7fc931136820  b0 60 30 34                                      .`04
 10580 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10580 ms  0x6ea2 cx:0x7fc92c906da8
 10580 ms     | 0x6ea2 EC_ValidatePublicKey()
 10580 ms     | 0x6ea2 ret:0x0
 10580 ms  0x6ea2 ret:0x7fc931139020::7fc931139020  f0 61 30 34                                      .a04
 10580 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10580 ms  0x6ea2 cx:0x7fc92c906da8
 10581 ms     | 0x6ea2 EC_ValidatePublicKey()
 10582 ms     | 0x6ea2 ret:0x0
 10582 ms  0x6ea2 ret:0x7fc93113b020::7fc93113b020  d0 63 30 34                                      .c04
 10583 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10583 ms  0x6ea2 cx:0x7fc92c906c08
 10583 ms     | 0x6ea2 EC_ValidatePublicKey()
 10583 ms     | 0x6ea2 ret:0x0
 10583 ms  0x6ea2 ret:0x7fc93113d820::7fc93113d820  10 65 30 34                                      .e04
 10583 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10583 ms  0x6ea2 cx:0x7fc92c906c08
 10584 ms     | 0x6ea2 EC_ValidatePublicKey()
 10585 ms     | 0x6ea2 ret:0x0
 10585 ms  0x6ea2 ret:0x7fc93147e020::7fc93147e020  f0 66 30 34                                      .f04
 10586 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10586 ms  0x6ea2 cx:0x7fc92c906a68
 10586 ms     | 0x6ea2 EC_ValidatePublicKey()
 10586 ms     | 0x6ea2 ret:0x0
 10586 ms  0x6ea2 ret:0x7fc931489820::7fc931489820  30 68 30 34                                      0h04
 10586 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10586 ms  0x6ea2 cx:0x7fc92c906a68
 10587 ms     | 0x6ea2 EC_ValidatePublicKey()
 10588 ms     | 0x6ea2 ret:0x0
 10588 ms  0x6ea2 ret:0x7fc93148d020::7fc93148d020  10 6a 30 34                                      .j04
 10589 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10589 ms  0x6ea2 cx:0x7fc92c9068c8
 10589 ms     | 0x6ea2 EC_ValidatePublicKey()
 10589 ms     | 0x6ea2 ret:0x0
 10589 ms  0x6ea2 ret:0x7fc931495020::7fc931495020  50 6b 30 34                                      Pk04
 10589 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10589 ms  0x6ea2 cx:0x7fc92c9068c8
 10590 ms     | 0x6ea2 EC_ValidatePublicKey()
 10591 ms     | 0x6ea2 ret:0x0
 10591 ms  0x6ea2 ret:0x7fc931499020::7fc931499020  30 6d 30 34                                      0m04
 10592 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10592 ms  0x6ea2 cx:0x7fc92c906728
 10592 ms     | 0x6ea2 EC_ValidatePublicKey()
 10592 ms     | 0x6ea2 ret:0x0
 10592 ms  0x6ea2 ret:0x7fc934364820::7fc934364820  c0 6e 30 34                                      .n04
 10592 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10592 ms  0x6ea2 cx:0x7fc92c906728
 10593 ms     | 0x6ea2 EC_ValidatePublicKey()
 10594 ms     | 0x6ea2 ret:0x0
 10594 ms  0x6ea2 ret:0x7fc93437a820::7fc93437a820  00 31 38 34                                      .184
 10595 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10595 ms  0x6ea2 cx:0x7fc92c906588
 10596 ms     | 0x6ea2 EC_ValidatePublicKey()
 10596 ms     | 0x6ea2 ret:0x0
 10596 ms  0x6ea2 ret:0x7fc93610d820::7fc93610d820  40 32 38 34                                      @284
 10596 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10596 ms  0x6ea2 cx:0x7fc92c906588
 10596 ms     | 0x6ea2 EC_ValidatePublicKey()
 10598 ms     | 0x6ea2 ret:0x0
 10598 ms  0x6ea2 ret:0x7fc94e774820::7fc94e774820  20 34 38 34                                       484
 10598 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10598 ms  0x6ea2 cx:0x7fc92c9063e8
 10599 ms     | 0x6ea2 EC_ValidatePublicKey()
 10599 ms     | 0x6ea2 ret:0x0
 10599 ms  0x6ea2 ret:0x7fc92cbd5820::7fc92cbd5820  60 35 38 34                                      `584
 10599 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10599 ms  0x6ea2 cx:0x7fc92c9063e8
 10599 ms     | 0x6ea2 EC_ValidatePublicKey()
 10601 ms     | 0x6ea2 ret:0x0
 10601 ms  0x6ea2 ret:0x7fc92cbd7820::7fc92cbd7820  40 37 38 34                                      @784
 10601 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10601 ms  0x6ea2 cx:0x7fc92c906248
 10602 ms     | 0x6ea2 EC_ValidatePublicKey()
 10602 ms     | 0x6ea2 ret:0x0
 10602 ms  0x6ea2 ret:0x7fc92cbda020::7fc92cbda020  80 38 38 34                                      .884
 10602 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10602 ms  0x6ea2 cx:0x7fc92c906248
 10602 ms     | 0x6ea2 EC_ValidatePublicKey()
 10608 ms     | 0x6ea2 ret:0x0
 10608 ms  0x6ea2 ret:0x7fc92cbdc020::7fc92cbdc020  b0 3a 38 34                                      .:84
 10608 ms  0x6ea2 PR_Close()
 10608 ms  0x6ea2 fd:0x7fc92f4bcd90
 10608 ms     | 0x6ea2 PK11_Encrypt()
 10608 ms     | 0x6ea2 symkey:0x7fc92870e700
 10608 ms  0x6ea2 PR_Close()
 10608 ms  0x6ea2 fd:0x7fc92cbffd90
 10608 ms     | 0x6ea2 PK11_Encrypt()
 10608 ms     | 0x6ea2 symkey:0x7fc92877c080
 10609 ms  0x6ea2 PK11_Encrypt()
 10609 ms  0x6ea2 symkey:0x7fc9282ed880
           /* TID 0x6eaa */
 10610 ms  0x6eaa PR_Close()
 10610 ms  0x6eaa fd:0x7fc92c4c9f10
           /* TID 0x6ea2 */
 10615 ms  0x6ea2 PK11_DeriveWithFlags()
 10615 ms  0x6ea2 basekey:0x7fc92870d580
 10615 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10615 ms  0x6ea2 ret:0x7fc933a8d300
 10615 ms  0x6ea2 PK11_DeriveWithFlags()
 10615 ms  0x6ea2 basekey:0x7fc92870d580
 10615 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10615 ms  0x6ea2 ret:0x7fc933a8d300
 10615 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10615 ms  0x6ea2 cx:0x7fc92c908ae8
 10616 ms     | 0x6ea2 EC_ValidatePublicKey()
 10616 ms     | 0x6ea2 ret:0x0
 10616 ms  0x6ea2 ret:0x7fc92cbdf020::7fc92cbdf020  40 f2 43 34                                      @.C4
 10616 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10616 ms  0x6ea2 cx:0x7fc92c908ae8
           /* TID 0x6eaa */
 10619 ms  0x6eaa PR_Close()
 10619 ms  0x6eaa fd:0x7fc92caaba90
 10619 ms  0x6eaa PR_Close()
 10619 ms  0x6eaa fd:0x7fc92cbffee0
           /* TID 0x6ea2 */
 10621 ms     | 0x6ea2 EC_ValidatePublicKey()
 10623 ms     | 0x6ea2 ret:0x0
 10623 ms  0x6ea2 ret:0x7fc92cbe1820::7fc92cbe1820  a0 3b 38 34                                      .;84
 10623 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10623 ms  0x6ea2 cx:0x7fc92c908948
 10624 ms     | 0x6ea2 EC_ValidatePublicKey()
 10624 ms     | 0x6ea2 ret:0x0
 10624 ms  0x6ea2 ret:0x7fc92cbe4020::7fc92cbe4020  e0 3c 38 34                                      .<84
 10624 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10624 ms  0x6ea2 cx:0x7fc92c908948
 10625 ms     | 0x6ea2 EC_ValidatePublicKey()
 10626 ms     | 0x6ea2 ret:0x0
 10626 ms  0x6ea2 ret:0x7fc92cbe6020::7fc92cbe6020  c0 3e 38 34                                      .>84
 10626 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10626 ms  0x6ea2 cx:0x7fc92c9087a8
 10627 ms     | 0x6ea2 EC_ValidatePublicKey()
 10627 ms     | 0x6ea2 ret:0x0
 10627 ms  0x6ea2 ret:0x7fc92cbe8820::7fc92cbe8820  60 a0 42 34                                      `.B4
 10627 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10627 ms  0x6ea2 cx:0x7fc92c9087a8
 10633 ms     | 0x6ea2 EC_ValidatePublicKey()
 10634 ms     | 0x6ea2 ret:0x0
 10634 ms  0x6ea2 ret:0x7fc92cbea820::7fc92cbea820  f0 a1 42 34                                      ..B4
 10635 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10635 ms  0x6ea2 cx:0x7fc92c908608
 10636 ms     | 0x6ea2 EC_ValidatePublicKey()
 10636 ms     | 0x6ea2 ret:0x0
 10636 ms  0x6ea2 ret:0x7fc92cbed020::7fc92cbed020  80 a3 42 34                                      ..B4
 10636 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10636 ms  0x6ea2 cx:0x7fc92c908608
 10636 ms     | 0x6ea2 EC_ValidatePublicKey()
 10638 ms     | 0x6ea2 ret:0x0
 10638 ms  0x6ea2 ret:0x7fc92cbef020::7fc92cbef020  60 a5 42 34                                      `.B4
 10638 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10638 ms  0x6ea2 cx:0x7fc92c908468
 10639 ms     | 0x6ea2 EC_ValidatePublicKey()
 10639 ms     | 0x6ea2 ret:0x0
 10639 ms  0x6ea2 ret:0x7fc92cbf1820::7fc92cbf1820  a0 a6 42 34                                      ..B4
 10639 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10639 ms  0x6ea2 cx:0x7fc92c908468
 10640 ms     | 0x6ea2 EC_ValidatePublicKey()
 10641 ms     | 0x6ea2 ret:0x0
 10641 ms  0x6ea2 ret:0x7fc92f443020::7fc92f443020  d0 a8 42 34                                      ..B4
 10641 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10641 ms  0x6ea2 cx:0x7fc92c9082c8
 10642 ms     | 0x6ea2 EC_ValidatePublicKey()
 10642 ms     | 0x6ea2 ret:0x0
 10642 ms  0x6ea2 ret:0x7fc9343a8820::7fc9343a8820  60 aa 42 34                                      `.B4
 10642 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10642 ms  0x6ea2 cx:0x7fc92c9082c8
 10643 ms     | 0x6ea2 EC_ValidatePublicKey()
 10647 ms     | 0x6ea2 ret:0x0
 10647 ms  0x6ea2 ret:0x7fc9343aa820::7fc9343aa820  90 ac 42 34                                      ..B4
 10647 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10647 ms  0x6ea2 cx:0x7fc92c908128
 10648 ms     | 0x6ea2 EC_ValidatePublicKey()
 10648 ms     | 0x6ea2 ret:0x0
 10648 ms  0x6ea2 ret:0x7fc9343ad020::7fc9343ad020  d0 ad 42 34                                      ..B4
 10648 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10648 ms  0x6ea2 cx:0x7fc92c908128
 10648 ms     | 0x6ea2 EC_ValidatePublicKey()
 10650 ms     | 0x6ea2 ret:0x0
 10650 ms  0x6ea2 ret:0x7fc9343af020::7fc9343af020  b0 af 42 34                                      ..B4
 10650 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10650 ms  0x6ea2 cx:0x7fc92c907f88
 10651 ms     | 0x6ea2 EC_ValidatePublicKey()
 10651 ms     | 0x6ea2 ret:0x0
 10651 ms  0x6ea2 ret:0x7fc9343b1820::7fc9343b1820  90 f2 43 34                                      ..C4
 10651 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10651 ms  0x6ea2 cx:0x7fc92c907f88
 10652 ms     | 0x6ea2 EC_ValidatePublicKey()
 10653 ms     | 0x6ea2 ret:0x0
 10653 ms  0x6ea2 ret:0x7fc9343b3820::7fc9343b3820  10 f5 43 34                                      ..C4
 10653 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10653 ms  0x6ea2 cx:0x7fc92c907de8
 10654 ms     | 0x6ea2 EC_ValidatePublicKey()
 10654 ms     | 0x6ea2 ret:0x0
 10654 ms  0x6ea2 ret:0x7fc9343b6020::7fc9343b6020  a0 f6 43 34                                      ..C4
 10654 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10654 ms  0x6ea2 cx:0x7fc92c907de8
 10655 ms     | 0x6ea2 EC_ValidatePublicKey()
 10656 ms     | 0x6ea2 ret:0x0
 10656 ms  0x6ea2 ret:0x7fc9343b8020::7fc9343b8020  80 f8 43 34                                      ..C4
 10656 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10656 ms  0x6ea2 cx:0x7fc92c907c48
 10657 ms     | 0x6ea2 EC_ValidatePublicKey()
 10657 ms     | 0x6ea2 ret:0x0
 10657 ms  0x6ea2 ret:0x7fc9343ba820::7fc9343ba820  c0 f9 43 34                                      ..C4
 10657 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10657 ms  0x6ea2 cx:0x7fc92c907c48
 10658 ms     | 0x6ea2 EC_ValidatePublicKey()
 10663 ms     | 0x6ea2 ret:0x0
 10663 ms  0x6ea2 ret:0x7fc9343bc820::7fc9343bc820  a0 fb 43 34                                      ..C4
 10663 ms  0x6ea2 PR_Close()
 10663 ms  0x6ea2 fd:0x7fc92f4dbbe0
 10663 ms     | 0x6ea2 PK11_Encrypt()
 10663 ms     | 0x6ea2 symkey:0x7fc92c79ae00
 10664 ms  0x6ea2 SSL_ImportFD()
 10664 ms  0x6ea2 ret:0x7fc92cbffd30
 10664 ms  0x6ea2 SSL_AuthCertificateHook()
 10664 ms  0x6ea2 fd:0x7fc92cbffd30
 10664 ms  0x6ea2 ret:0x0
 10664 ms  0x6ea2 PR_Connect()
 10664 ms  0x6ea2 fd:0x7fc92cbffd30
           /* TID 0x6eaa */
 10666 ms  0x6eaa PR_Close()
 10666 ms  0x6eaa fd:0x7fc92967efa0
           /* TID 0x6ea2 */
 10667 ms  0x6ea2 PK11_Encrypt()
 10667 ms  0x6ea2 symkey:0x7fc9282ed880
           /* TID 0x6eaa */
 10670 ms  0x6eaa PR_Close()
 10670 ms  0x6eaa fd:0x7fc92967efa0
           /* TID 0x6ea2 */
 10674 ms  SECKEY_ECParamsToKeySize()
 10674 ms  0x6ea2 ret:0xff
 10674 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10674 ms  0x6ea2 cx:0x7fc92c907aa8
 10674 ms     | 0x6ea2 EC_ValidatePublicKey()
 10674 ms     | 0x6ea2 ret:0x0
 10674 ms  0x6ea2 ret:0x7fc9343c1020::7fc9343c1020  c0 fe 43 34                                      ..C4
 10674 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10674 ms  0x6ea2 seckey:0x7fc9343c1020
 10675 ms     | 0x6ea2 EC_ValidatePublicKey()
 10675 ms     | 0x6ea2 ret:0x0
 10675 ms  0x6ea2 ret:0x7fc92877c100
 10675 ms  0x6ea2 PK11_DeriveWithFlags()
 10675 ms  0x6ea2 basekey:0x7fc92877c100
 10675 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10675 ms  0x6ea2 ret:0x7fc92870d600
 10675 ms  0x6ea2 PK11_Derive()
 10675 ms  0x6ea2 basekey:0x7fc92870d600
 10675 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10676 ms  0x6ea2 ret:0x7fc92870d700
 10676 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10676 ms  0x6ea2 privk:0x7fc9343c1020::7fc9343c1020  c0 fe 43 34                                      ..C4
 10676 ms  0x6ea2 privk:0x7fc9343c1020::7fc9343c1020  e5 e5 e5 e5                                      ....
 10676 ms  0x6ea2 PK11_Encrypt()
 10676 ms  0x6ea2 symkey:0x7fc933a9e000
 10677 ms  SECKEY_ECParamsToKeySize()
 10677 ms  0x6ea2 ret:0xff
 10677 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10677 ms  0x6ea2 cx:0x7fc92c907908
 10678 ms     | 0x6ea2 EC_ValidatePublicKey()
 10678 ms     | 0x6ea2 ret:0x0
 10678 ms  0x6ea2 ret:0x7fc9343c4020::7fc9343c4020  90 52 44 34                                      .RD4
 10678 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10678 ms  0x6ea2 seckey:0x7fc9343c4020
 10678 ms     | 0x6ea2 EC_ValidatePublicKey()
 10678 ms     | 0x6ea2 ret:0x0
 10686 ms  0x6ea2 ret:0x7fc92877c100
 10687 ms  0x6ea2 PK11_DeriveWithFlags()
 10687 ms  0x6ea2 basekey:0x7fc92877c100
 10687 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10687 ms  0x6ea2 ret:0x7fc92870d580
 10687 ms  0x6ea2 PK11_Derive()
 10687 ms  0x6ea2 basekey:0x7fc92870d580
 10687 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10687 ms  0x6ea2 ret:0x7fc92870d680
 10687 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10687 ms  0x6ea2 privk:0x7fc9343c4020::7fc9343c4020  90 52 44 34                                      .RD4
 10687 ms  0x6ea2 privk:0x7fc9343c4020::7fc9343c4020  e5 e5 e5 e5                                      ....
 10687 ms  0x6ea2 PK11_Encrypt()
 10687 ms  0x6ea2 symkey:0x7fc933a78780
 10688 ms  SECKEY_ECParamsToKeySize()
 10688 ms  0x6ea2 ret:0xff
 10688 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10688 ms  0x6ea2 cx:0x7fc92c907768
 10689 ms     | 0x6ea2 EC_ValidatePublicKey()
 10689 ms     | 0x6ea2 ret:0x0
 10689 ms  0x6ea2 ret:0x7fc9343c7020::7fc9343c7020  10 55 44 34                                      .UD4
 10689 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10689 ms  0x6ea2 seckey:0x7fc9343c7020
 10689 ms     | 0x6ea2 EC_ValidatePublicKey()
 10689 ms     | 0x6ea2 ret:0x0
 10689 ms  0x6ea2 ret:0x7fc92877c100
 10689 ms  0x6ea2 PK11_DeriveWithFlags()
 10689 ms  0x6ea2 basekey:0x7fc92877c100
 10689 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10690 ms  0x6ea2 ret:0x7fc92c79ae00
 10690 ms  0x6ea2 PK11_Derive()
 10690 ms  0x6ea2 basekey:0x7fc92c79ae00
 10690 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10690 ms  0x6ea2 ret:0x7fc933a8d300
 10690 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10690 ms  0x6ea2 privk:0x7fc9343c7020::7fc9343c7020  10 55 44 34                                      .UD4
 10690 ms  0x6ea2 privk:0x7fc9343c7020::7fc9343c7020  e5 e5 e5 e5                                      ....
 10690 ms  0x6ea2 PK11_Encrypt()
 10690 ms  0x6ea2 symkey:0x7fc933a9e800
 10690 ms  SECKEY_ECParamsToKeySize()
 10690 ms  0x6ea2 ret:0xff
 10690 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10690 ms  0x6ea2 cx:0x7fc92c9075c8
 10691 ms     | 0x6ea2 EC_ValidatePublicKey()
 10691 ms     | 0x6ea2 ret:0x0
 10691 ms  0x6ea2 ret:0x7fc915538820::7fc915538820  50 56 44 34                                      PVD4
 10691 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10691 ms  0x6ea2 seckey:0x7fc915538820
 10691 ms     | 0x6ea2 EC_ValidatePublicKey()
 10691 ms     | 0x6ea2 ret:0x0
 10691 ms  0x6ea2 ret:0x7fc92877c100
 10691 ms  0x6ea2 PK11_DeriveWithFlags()
 10691 ms  0x6ea2 basekey:0x7fc92877c100
 10691 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10691 ms  0x6ea2 ret:0x7fc933a8d700
 10691 ms  0x6ea2 PK11_Derive()
 10691 ms  0x6ea2 basekey:0x7fc933a8d700
 10691 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10691 ms  0x6ea2 ret:0x7fc92870e580
 10691 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10691 ms  0x6ea2 privk:0x7fc915538820::7fc915538820  50 56 44 34                                      PVD4
 10692 ms  0x6ea2 privk:0x7fc915538820::7fc915538820  e5 e5 e5 e5                                      ....
 10692 ms  0x6ea2 PK11_Encrypt()
 10692 ms  0x6ea2 symkey:0x7fc933a9eb80
 10692 ms  SECKEY_ECParamsToKeySize()
 10692 ms  0x6ea2 ret:0xff
 10692 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10692 ms  0x6ea2 cx:0x7fc92c907428
 10693 ms     | 0x6ea2 EC_ValidatePublicKey()
 10693 ms     | 0x6ea2 ret:0x0
 10693 ms  0x6ea2 ret:0x7fc91553f020::7fc91553f020  f0 56 44 34                                      .VD4
 10693 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10693 ms  0x6ea2 seckey:0x7fc91553f020
 10693 ms     | 0x6ea2 EC_ValidatePublicKey()
 10693 ms     | 0x6ea2 ret:0x0
 10693 ms  0x6ea2 ret:0x7fc92877c100
 10693 ms  0x6ea2 PK11_DeriveWithFlags()
 10693 ms  0x6ea2 basekey:0x7fc92877c100
 10693 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10693 ms  0x6ea2 ret:0x7fc933a8d900
 10693 ms  0x6ea2 PK11_Derive()
 10693 ms  0x6ea2 basekey:0x7fc933a8d900
 10693 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10693 ms  0x6ea2 ret:0x7fc933a8d980
 10693 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10693 ms  0x6ea2 privk:0x7fc91553f020::7fc91553f020  f0 56 44 34                                      .VD4
 10693 ms  0x6ea2 privk:0x7fc91553f020::7fc91553f020  e5 e5 e5 e5                                      ....
 10694 ms  0x6ea2 PK11_Encrypt()
 10694 ms  0x6ea2 symkey:0x7fc933aac600
 10694 ms  SECKEY_ECParamsToKeySize()
 10694 ms  0x6ea2 ret:0xff
 10694 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10694 ms  0x6ea2 cx:0x7fc92c906da8
 10705 ms     | 0x6ea2 EC_ValidatePublicKey()
 10705 ms     | 0x6ea2 ret:0x0
 10705 ms  0x6ea2 ret:0x7fc915542020::7fc915542020  10 5a 44 34                                      .ZD4
 10705 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10705 ms  0x6ea2 seckey:0x7fc915542020
 10705 ms     | 0x6ea2 EC_ValidatePublicKey()
 10705 ms     | 0x6ea2 ret:0x0
 10706 ms  0x6ea2 ret:0x7fc92877c100
 10706 ms  0x6ea2 PK11_DeriveWithFlags()
 10706 ms  0x6ea2 basekey:0x7fc92877c100
 10706 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10706 ms  0x6ea2 ret:0x7fc92877c080
 10706 ms  0x6ea2 PK11_Derive()
 10706 ms  0x6ea2 basekey:0x7fc92877c080
 10706 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10706 ms  0x6ea2 ret:0x7fc92870d200
 10706 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10706 ms  0x6ea2 privk:0x7fc915542020::7fc915542020  10 5a 44 34                                      .ZD4
 10706 ms  0x6ea2 privk:0x7fc915542020::7fc915542020  e5 e5 e5 e5                                      ....
 10706 ms  0x6ea2 PK11_Encrypt()
 10706 ms  0x6ea2 symkey:0x7fc933a9db80
 10706 ms  SECKEY_ECParamsToKeySize()
 10707 ms  0x6ea2 ret:0xff
 10707 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10707 ms  0x6ea2 cx:0x7fc92c906a68
 10707 ms     | 0x6ea2 EC_ValidatePublicKey()
 10707 ms     | 0x6ea2 ret:0x0
 10707 ms  0x6ea2 ret:0x7fc915543820::7fc915543820  b0 5a 44 34                                      .ZD4
 10707 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10707 ms  0x6ea2 seckey:0x7fc915543820
 10707 ms     | 0x6ea2 EC_ValidatePublicKey()
 10707 ms     | 0x6ea2 ret:0x0
 10708 ms  0x6ea2 ret:0x7fc92877c100
 10708 ms  0x6ea2 PK11_DeriveWithFlags()
 10708 ms  0x6ea2 basekey:0x7fc92877c100
 10708 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10708 ms  0x6ea2 ret:0x7fc92870d880
 10708 ms  0x6ea2 PK11_Derive()
 10708 ms  0x6ea2 basekey:0x7fc92870d880
 10708 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10708 ms  0x6ea2 ret:0x7fc92870e100
 10708 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10708 ms  0x6ea2 privk:0x7fc915543820::7fc915543820  b0 5a 44 34                                      .ZD4
 10708 ms  0x6ea2 privk:0x7fc915543820::7fc915543820  e5 e5 e5 e5                                      ....
 10708 ms  0x6ea2 PK11_Encrypt()
 10708 ms  0x6ea2 symkey:0x7fc933a9ee80
 10710 ms  SECKEY_ECParamsToKeySize()
 10710 ms  0x6ea2 ret:0xff
 10710 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10710 ms  0x6ea2 cx:0x7fc92c9068c8
 10710 ms     | 0x6ea2 EC_ValidatePublicKey()
 10710 ms     | 0x6ea2 ret:0x0
 10710 ms  0x6ea2 ret:0x7fc915545020::7fc915545020  50 5b 44 34                                      P[D4
 10710 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10710 ms  0x6ea2 seckey:0x7fc915545020
 10710 ms     | 0x6ea2 EC_ValidatePublicKey()
 10710 ms     | 0x6ea2 ret:0x0
 10712 ms  0x6ea2 ret:0x7fc92877c100
 10712 ms  0x6ea2 PK11_DeriveWithFlags()
 10712 ms  0x6ea2 basekey:0x7fc92877c100
 10712 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10712 ms  0x6ea2 ret:0x7fc92870d300
 10712 ms  0x6ea2 PK11_Derive()
 10712 ms  0x6ea2 basekey:0x7fc92870d300
 10712 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10712 ms  0x6ea2 ret:0x7fc92870d400
 10712 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10712 ms  0x6ea2 privk:0x7fc915545020::7fc915545020  50 5b 44 34                                      P[D4
 10712 ms  0x6ea2 privk:0x7fc915545020::7fc915545020  e5 e5 e5 e5                                      ....
 10712 ms  0x6ea2 PK11_Encrypt()
 10712 ms  0x6ea2 symkey:0x7fc933aad680
 10713 ms  SECKEY_ECParamsToKeySize()
 10713 ms  0x6ea2 ret:0xff
 10713 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10713 ms  0x6ea2 cx:0x7fc92c906728
 10713 ms     | 0x6ea2 EC_ValidatePublicKey()
 10713 ms     | 0x6ea2 ret:0x0
 10713 ms  0x6ea2 ret:0x7fc915547020::7fc915547020  60 d0 44 34                                      `.D4
 10714 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10714 ms  0x6ea2 seckey:0x7fc915547020
 10714 ms     | 0x6ea2 EC_ValidatePublicKey()
 10714 ms     | 0x6ea2 ret:0x0
 10714 ms  0x6ea2 ret:0x7fc92877c100
 10714 ms  0x6ea2 PK11_DeriveWithFlags()
 10714 ms  0x6ea2 basekey:0x7fc92877c100
 10714 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10714 ms  0x6ea2 ret:0x7fc92870e700
 10714 ms  0x6ea2 PK11_Derive()
 10714 ms  0x6ea2 basekey:0x7fc92870e700
 10714 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10714 ms  0x6ea2 ret:0x7fc9354b5080
 10714 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10714 ms  0x6ea2 privk:0x7fc915547020::7fc915547020  60 d0 44 34                                      `.D4
 10714 ms  0x6ea2 privk:0x7fc915547020::7fc915547020  e5 e5 e5 e5                                      ....
 10714 ms  0x6ea2 PK11_Encrypt()
 10714 ms  0x6ea2 symkey:0x7fc933aadc80
           /* TID 0x6eaa */
 10728 ms  0x6eaa PR_Close()
 10728 ms  0x6eaa fd:0x7fc9262daf70
           /* TID 0x6ea2 */
 10733 ms  SECKEY_ECParamsToKeySize()
 10733 ms  0x6ea2 ret:0xff
 10733 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10733 ms  0x6ea2 cx:0x7fc92c908ae8
 10733 ms     | 0x6ea2 EC_ValidatePublicKey()
 10733 ms     | 0x6ea2 ret:0x0
 10733 ms  0x6ea2 ret:0x7fc915549820::7fc915549820  80 5d 45 34                                      .]E4
 10733 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10733 ms  0x6ea2 seckey:0x7fc915549820
 10733 ms     | 0x6ea2 EC_ValidatePublicKey()
 10733 ms     | 0x6ea2 ret:0x0
 10734 ms  0x6ea2 ret:0x7fc92877c100
 10734 ms  0x6ea2 PK11_DeriveWithFlags()
 10734 ms  0x6ea2 basekey:0x7fc92877c100
 10734 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10734 ms  0x6ea2 ret:0x7fc92877cb00
 10734 ms  0x6ea2 PK11_Derive()
 10734 ms  0x6ea2 basekey:0x7fc92877cb00
 10734 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10734 ms  0x6ea2 ret:0x7fc933a8d880
 10734 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10734 ms  0x6ea2 privk:0x7fc915549820::7fc915549820  80 5d 45 34                                      .]E4
 10734 ms  0x6ea2 privk:0x7fc915549820::7fc915549820  e5 e5 e5 e5                                      ....
 10734 ms  0x6ea2 PK11_Encrypt()
 10734 ms  0x6ea2 symkey:0x7fc933aad280
 10735 ms  SECKEY_ECParamsToKeySize()
 10735 ms  0x6ea2 ret:0xff
 10735 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10735 ms  0x6ea2 cx:0x7fc92c908948
 10735 ms     | 0x6ea2 EC_ValidatePublicKey()
 10735 ms     | 0x6ea2 ret:0x0
 10735 ms  0x6ea2 ret:0x7fc91554b020::7fc91554b020  20 5e 45 34                                       ^E4
 10735 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10735 ms  0x6ea2 seckey:0x7fc91554b020
 10735 ms     | 0x6ea2 EC_ValidatePublicKey()
 10735 ms     | 0x6ea2 ret:0x0
 10740 ms  0x6ea2 ret:0x7fc92877c100
 10740 ms  0x6ea2 PK11_DeriveWithFlags()
 10740 ms  0x6ea2 basekey:0x7fc92877c100
 10740 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10740 ms  0x6ea2 ret:0x7fc92870de00
 10740 ms  0x6ea2 PK11_Derive()
 10740 ms  0x6ea2 basekey:0x7fc92870de00
 10740 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10740 ms  0x6ea2 ret:0x7fc92870d500
 10740 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10740 ms  0x6ea2 privk:0x7fc91554b020::7fc91554b020  20 5e 45 34                                       ^E4
 10740 ms  0x6ea2 privk:0x7fc91554b020::7fc91554b020  e5 e5 e5 e5                                      ....
 10740 ms  0x6ea2 PK11_Encrypt()
 10740 ms  0x6ea2 symkey:0x7fc933aae400
 10741 ms  SECKEY_ECParamsToKeySize()
 10741 ms  0x6ea2 ret:0xff
 10741 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10741 ms  0x6ea2 cx:0x7fc92c9087a8
 10741 ms     | 0x6ea2 EC_ValidatePublicKey()
 10741 ms     | 0x6ea2 ret:0x0
 10741 ms  0x6ea2 ret:0x7fc91554c820::7fc91554c820  10 5f 45 34                                      ._E4
 10741 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10741 ms  0x6ea2 seckey:0x7fc91554c820
 10741 ms     | 0x6ea2 EC_ValidatePublicKey()
 10741 ms     | 0x6ea2 ret:0x0
 10742 ms  0x6ea2 ret:0x7fc92877c100
 10742 ms  0x6ea2 PK11_DeriveWithFlags()
 10742 ms  0x6ea2 basekey:0x7fc92877c100
 10742 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10742 ms  0x6ea2 ret:0x7fc92870d280
 10742 ms  0x6ea2 PK11_Derive()
 10742 ms  0x6ea2 basekey:0x7fc92870d280
 10742 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10742 ms  0x6ea2 ret:0x7fc92877bc00
 10742 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10742 ms  0x6ea2 privk:0x7fc91554c820::7fc91554c820  10 5f 45 34                                      ._E4
 10742 ms  0x6ea2 privk:0x7fc91554c820::7fc91554c820  e5 e5 e5 e5                                      ....
 10742 ms  0x6ea2 PK11_Encrypt()
 10742 ms  0x6ea2 symkey:0x7fc933aae680
 10742 ms  SECKEY_ECParamsToKeySize()
 10742 ms  0x6ea2 ret:0xff
 10742 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10742 ms  0x6ea2 cx:0x7fc92c908468
           /* TID 0x6eaa */
 10753 ms  0x6eaa PR_Close()
 10753 ms  0x6eaa fd:0x7fc92f3f5eb0
 10754 ms  0x6eaa PR_Close()
 10754 ms  0x6eaa fd:0x7fc92c4fa6d0
           /* TID 0x6ea2 */
 10764 ms     | 0x6ea2 EC_ValidatePublicKey()
 10764 ms     | 0x6ea2 ret:0x0
 10764 ms  0x6ea2 ret:0x7fc91554f020::7fc91554f020  90 e2 bf 2c                                      ...,
 10764 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10764 ms  0x6ea2 seckey:0x7fc91554f020
 10764 ms     | 0x6ea2 EC_ValidatePublicKey()
 10764 ms     | 0x6ea2 ret:0x0
 10765 ms  0x6ea2 ret:0x7fc92877c100
 10765 ms  0x6ea2 PK11_DeriveWithFlags()
 10765 ms  0x6ea2 basekey:0x7fc92877c100
 10765 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10765 ms  0x6ea2 ret:0x7fc933a8df80
 10765 ms  0x6ea2 PK11_Derive()
 10765 ms  0x6ea2 basekey:0x7fc933a8df80
 10765 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10765 ms  0x6ea2 ret:0x7fc933aae900
 10765 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10765 ms  0x6ea2 privk:0x7fc91554f020::7fc91554f020  90 e2 bf 2c                                      ...,
 10765 ms  0x6ea2 privk:0x7fc91554f020::7fc91554f020  e5 e5 e5 e5                                      ....
 10765 ms  0x6ea2 PK11_Encrypt()
 10765 ms  0x6ea2 symkey:0x7fc933aaee80
 10774 ms  SECKEY_ECParamsToKeySize()
 10774 ms  0x6ea2 ret:0xff
 10774 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10774 ms  0x6ea2 cx:0x7fc92c9082c8
 10775 ms     | 0x6ea2 EC_ValidatePublicKey()
 10779 ms     | 0x6ea2 ret:0x0
 10779 ms  0x6ea2 ret:0x7fc915550820::7fc915550820  b0 5f 44 34                                      ._D4
 10779 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10779 ms  0x6ea2 seckey:0x7fc915550820
 10779 ms     | 0x6ea2 EC_ValidatePublicKey()
 10779 ms     | 0x6ea2 ret:0x0
 10785 ms  0x6ea2 ret:0x7fc92877c100
 10785 ms  0x6ea2 PK11_DeriveWithFlags()
 10785 ms  0x6ea2 basekey:0x7fc92877c100
 10785 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10785 ms  0x6ea2 ret:0x7fc929670b00
 10785 ms  0x6ea2 PK11_Derive()
 10785 ms  0x6ea2 basekey:0x7fc929670b00
 10785 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10785 ms  0x6ea2 ret:0x7fc929681100
 10785 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10785 ms  0x6ea2 privk:0x7fc915550820::7fc915550820  b0 5f 44 34                                      ._D4
 10785 ms  0x6ea2 privk:0x7fc915550820::7fc915550820  e5 e5 e5 e5                                      ....
 10785 ms  0x6ea2 PK11_Encrypt()
 10785 ms  0x6ea2 symkey:0x7fc930ad8c80
 10786 ms  SECKEY_ECParamsToKeySize()
 10786 ms  0x6ea2 ret:0xff
 10786 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10786 ms  0x6ea2 cx:0x7fc92c908128
 10786 ms     | 0x6ea2 EC_ValidatePublicKey()
 10786 ms     | 0x6ea2 ret:0x0
 10786 ms  0x6ea2 ret:0x7fc915552820::7fc915552820  b0 d0 44 34                                      ..D4
 10786 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10786 ms  0x6ea2 seckey:0x7fc915552820
 10786 ms     | 0x6ea2 EC_ValidatePublicKey()
 10786 ms     | 0x6ea2 ret:0x0
 10787 ms  0x6ea2 ret:0x7fc92877c100
 10787 ms  0x6ea2 PK11_DeriveWithFlags()
 10787 ms  0x6ea2 basekey:0x7fc92877c100
 10787 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10787 ms  0x6ea2 ret:0x7fc933a69680
 10787 ms  0x6ea2 PK11_Derive()
 10787 ms  0x6ea2 basekey:0x7fc933a69680
 10787 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10787 ms  0x6ea2 ret:0x7fc933a78c00
 10787 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10787 ms  0x6ea2 privk:0x7fc915552820::7fc915552820  b0 d0 44 34                                      ..D4
 10788 ms  0x6ea2 privk:0x7fc915552820::7fc915552820  e5 e5 e5 e5                                      ....
 10789 ms  0x6ea2 PK11_Encrypt()
 10789 ms  0x6ea2 symkey:0x7fc933aadf00
 10789 ms  SECKEY_ECParamsToKeySize()
 10789 ms  0x6ea2 ret:0xff
 10789 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10789 ms  0x6ea2 cx:0x7fc92c906588
 10789 ms     | 0x6ea2 EC_ValidatePublicKey()
 10789 ms     | 0x6ea2 ret:0x0
 10789 ms  0x6ea2 ret:0x7fc915554020::7fc915554020  60 d0 44 34                                      `.D4
 10790 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10790 ms  0x6ea2 seckey:0x7fc915554020
 10790 ms     | 0x6ea2 EC_ValidatePublicKey()
 10790 ms     | 0x6ea2 ret:0x0
 10790 ms  0x6ea2 ret:0x7fc92877c100
 10790 ms  0x6ea2 PK11_DeriveWithFlags()
 10790 ms  0x6ea2 basekey:0x7fc92877c100
 10790 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10790 ms  0x6ea2 ret:0x7fc929681180
 10790 ms  0x6ea2 PK11_Derive()
 10790 ms  0x6ea2 basekey:0x7fc929681180
 10790 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10790 ms  0x6ea2 ret:0x7fc9334fd980
 10790 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10790 ms  0x6ea2 privk:0x7fc915554020::7fc915554020  60 d0 44 34                                      `.D4
 10790 ms  0x6ea2 privk:0x7fc915554020::7fc915554020  e5 e5 e5 e5                                      ....
 10790 ms  0x6ea2 PK11_Encrypt()
 10790 ms  0x6ea2 symkey:0x7fc933aae280
 10791 ms  SECKEY_ECParamsToKeySize()
 10791 ms  0x6ea2 ret:0xff
 10791 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10791 ms  0x6ea2 cx:0x7fc92c9063e8
 10792 ms     | 0x6ea2 EC_ValidatePublicKey()
 10792 ms     | 0x6ea2 ret:0x0
 10792 ms  0x6ea2 ret:0x7fc915555820::7fc915555820  f0 d1 44 34                                      ..D4
 10792 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10792 ms  0x6ea2 seckey:0x7fc915555820
 10792 ms     | 0x6ea2 EC_ValidatePublicKey()
 10792 ms     | 0x6ea2 ret:0x0
 10793 ms  0x6ea2 ret:0x7fc92877c100
 10793 ms  0x6ea2 PK11_DeriveWithFlags()
 10793 ms  0x6ea2 basekey:0x7fc92877c100
 10793 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10793 ms  0x6ea2 ret:0x7fc930070e80
 10793 ms  0x6ea2 PK11_Derive()
 10793 ms  0x6ea2 basekey:0x7fc930070e80
 10793 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10793 ms  0x6ea2 ret:0x7fc9334fd900
 10793 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10793 ms  0x6ea2 privk:0x7fc915555820::7fc915555820  f0 d1 44 34                                      ..D4
 10793 ms  0x6ea2 privk:0x7fc915555820::7fc915555820  e5 e5 e5 e5                                      ....
 10793 ms  0x6ea2 PK11_Encrypt()
 10793 ms  0x6ea2 symkey:0x7fc933a9ef80
 10793 ms  SECKEY_ECParamsToKeySize()
 10793 ms  0x6ea2 ret:0xff
 10793 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10793 ms  0x6ea2 cx:0x7fc92c906248
 10801 ms     | 0x6ea2 EC_ValidatePublicKey()
 10801 ms     | 0x6ea2 ret:0x0
 10801 ms  0x6ea2 ret:0x7fc915557820::7fc915557820  90 d2 44 34                                      ..D4
 10801 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10801 ms  0x6ea2 seckey:0x7fc915557820
 10801 ms     | 0x6ea2 EC_ValidatePublicKey()
 10801 ms     | 0x6ea2 ret:0x0
 10802 ms  0x6ea2 ret:0x7fc92877c100
 10802 ms  0x6ea2 PK11_DeriveWithFlags()
 10802 ms  0x6ea2 basekey:0x7fc92877c100
 10802 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10802 ms  0x6ea2 ret:0x7fc933aac200
 10802 ms  0x6ea2 PK11_Derive()
 10802 ms  0x6ea2 basekey:0x7fc933aac200
 10802 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10802 ms  0x6ea2 ret:0x7fc933aac280
 10802 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10802 ms  0x6ea2 privk:0x7fc915557820::7fc915557820  90 d2 44 34                                      ..D4
 10803 ms  0x6ea2 privk:0x7fc915557820::7fc915557820  e5 e5 e5 e5                                      ....
 10803 ms  0x6ea2 PK11_Encrypt()
 10803 ms  0x6ea2 symkey:0x7fc9344c2180
 10804 ms  SECKEY_ECParamsToKeySize()
 10804 ms  0x6ea2 ret:0xff
 10804 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10804 ms  0x6ea2 cx:0x7fc92c9060a8
 10804 ms     | 0x6ea2 EC_ValidatePublicKey()
 10805 ms     | 0x6ea2 ret:0x0
 10805 ms  0x6ea2 ret:0x7fc915559020::7fc915559020  f0 51 45 34                                      .QE4
 10805 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10805 ms  0x6ea2 seckey:0x7fc915559020
 10805 ms     | 0x6ea2 EC_ValidatePublicKey()
 10805 ms     | 0x6ea2 ret:0x0
 10805 ms  0x6ea2 ret:0x7fc92877c100
 10805 ms  0x6ea2 PK11_DeriveWithFlags()
 10805 ms  0x6ea2 basekey:0x7fc92877c100
 10805 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10805 ms  0x6ea2 ret:0x7fc933a78b00
 10805 ms  0x6ea2 PK11_Derive()
 10805 ms  0x6ea2 basekey:0x7fc933a78b00
 10805 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10805 ms  0x6ea2 ret:0x7fc9344c2900
 10805 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10805 ms  0x6ea2 privk:0x7fc915559020::7fc915559020  f0 51 45 34                                      .QE4
 10805 ms  0x6ea2 privk:0x7fc915559020::7fc915559020  e5 e5 e5 e5                                      ....
 10806 ms  0x6ea2 PK11_Encrypt()
 10806 ms  0x6ea2 symkey:0x7fc9344c2b00
           /* TID 0x6eaa */
 10819 ms  0x6eaa PR_Close()
 10819 ms  0x6eaa fd:0x7fc9153ffdf0
 10821 ms  0x6eaa PR_Close()
 10821 ms  0x6eaa fd:0x7fc9153ffdf0
 10822 ms  0x6eaa PR_Close()
 10822 ms  0x6eaa fd:0x7fc9153ffdf0
 10823 ms  0x6eaa PR_Close()
 10823 ms  0x6eaa fd:0x7fc9153ffdf0
 10824 ms  0x6eaa PR_Close()
 10824 ms  0x6eaa fd:0x7fc9153ffdf0
 10825 ms  0x6eaa PR_Close()
 10825 ms  0x6eaa fd:0x7fc9153ffdf0
           /* TID 0x6eff */
 10825 ms  0x6eff _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10825 ms  0x6eff ret:0x0
           /* TID 0x6ea2 */
 10833 ms  SECKEY_ECParamsToKeySize()
 10833 ms  0x6ea2 ret:0x100
 10833 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10833 ms  0x6ea2 cx:0x7fc92c908608
 10833 ms     | 0x6ea2 EC_ValidatePublicKey()
 10835 ms     | 0x6ea2 ret:0x0
 10835 ms  0x6ea2 ret:0x7fc91555b820::7fc91555b820  70 fe 0e 31                                      p..1
 10835 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10835 ms  0x6ea2 seckey:0x7fc91555b820
 10835 ms     | 0x6ea2 EC_ValidatePublicKey()
 10859 ms     | 0x6ea2 ret:0x0
 10861 ms  0x6ea2 ret:0x7fc92877c100
 10861 ms  0x6ea2 PK11_DeriveWithFlags()
 10861 ms  0x6ea2 basekey:0x7fc92877c100
 10861 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10861 ms  0x6ea2 ret:0x7fc9154fee00
 10861 ms  0x6ea2 PK11_Derive()
 10861 ms  0x6ea2 basekey:0x7fc9154fee00
 10861 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10861 ms  0x6ea2 ret:0x7fc9154ff700
 10861 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10861 ms  0x6ea2 privk:0x7fc91555b820::7fc91555b820  70 fe 0e 31                                      p..1
 10861 ms  0x6ea2 privk:0x7fc91555b820::7fc91555b820  e5 e5 e5 e5                                      ....
 10861 ms  0x6ea2 PK11_Encrypt()
 10861 ms  0x6ea2 symkey:0x7fc91552ce00
 10862 ms  SECKEY_ECParamsToKeySize()
 10862 ms  0x6ea2 ret:0x100
 10862 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10862 ms  0x6ea2 cx:0x7fc92c907f88
 10862 ms     | 0x6ea2 EC_ValidatePublicKey()
 10864 ms     | 0x6ea2 ret:0x0
 10864 ms  0x6ea2 ret:0x7fc9154ab820::7fc9154ab820  e0 f7 2f 26                                      ../&
 10864 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10864 ms  0x6ea2 seckey:0x7fc9154ab820
 10864 ms     | 0x6ea2 EC_ValidatePublicKey()
 10865 ms     | 0x6ea2 ret:0x0
 10877 ms  0x6ea2 ret:0x7fc92877c100
 10877 ms  0x6ea2 PK11_DeriveWithFlags()
 10877 ms  0x6ea2 basekey:0x7fc92877c100
 10877 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10877 ms  0x6ea2 ret:0x7fc91552d480
 10877 ms  0x6ea2 PK11_Derive()
 10877 ms  0x6ea2 basekey:0x7fc91552d480
 10877 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10877 ms  0x6ea2 ret:0x7fc91552d600
 10877 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10877 ms  0x6ea2 privk:0x7fc9154ab820::7fc9154ab820  e0 f7 2f 26                                      ../&
 10877 ms  0x6ea2 privk:0x7fc9154ab820::7fc9154ab820  e5 e5 e5 e5                                      ....
 10877 ms  0x6ea2 PK11_Encrypt()
 10877 ms  0x6ea2 symkey:0x7fc91552db00
 10878 ms  SECKEY_ECParamsToKeySize()
 10878 ms  0x6ea2 ret:0x100
 10878 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10878 ms  0x6ea2 cx:0x7fc92c907de8
 10878 ms     | 0x6ea2 EC_ValidatePublicKey()
 10880 ms     | 0x6ea2 ret:0x0
 10880 ms  0x6ea2 ret:0x7fc9154b2020::7fc9154b2020  40 fc 2f 26                                      @./&
 10880 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10880 ms  0x6ea2 seckey:0x7fc9154b2020
 10880 ms     | 0x6ea2 EC_ValidatePublicKey()
 10881 ms     | 0x6ea2 ret:0x0
 10883 ms  0x6ea2 ret:0x7fc92877c100
 10883 ms  0x6ea2 PK11_DeriveWithFlags()
 10883 ms  0x6ea2 basekey:0x7fc92877c100
 10883 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10883 ms  0x6ea2 ret:0x7fc91552df80
 10883 ms  0x6ea2 PK11_Derive()
 10883 ms  0x6ea2 basekey:0x7fc91552df80
 10883 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10883 ms  0x6ea2 ret:0x7fc9262df400
 10883 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10883 ms  0x6ea2 privk:0x7fc9154b2020::7fc9154b2020  40 fc 2f 26                                      @./&
 10883 ms  0x6ea2 privk:0x7fc9154b2020::7fc9154b2020  e5 e5 e5 e5                                      ....
 10883 ms  0x6ea2 PK11_Encrypt()
 10883 ms  0x6ea2 symkey:0x7fc9262e7900
 10895 ms  SECKEY_ECParamsToKeySize()
 10895 ms  0x6ea2 ret:0x100
 10895 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10895 ms  0x6ea2 cx:0x7fc92c907c48
 10895 ms     | 0x6ea2 EC_ValidatePublicKey()
 10897 ms     | 0x6ea2 ret:0x0
 10897 ms  0x6ea2 ret:0x7fc915559820::7fc915559820  d0 fd 2f 26                                      ../&
 10897 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10897 ms  0x6ea2 seckey:0x7fc915559820
 10897 ms     | 0x6ea2 EC_ValidatePublicKey()
 10899 ms     | 0x6ea2 ret:0x0
 10900 ms  0x6ea2 ret:0x7fc92877c100
 10900 ms  0x6ea2 PK11_DeriveWithFlags()
 10900 ms  0x6ea2 basekey:0x7fc92877c100
 10900 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10900 ms  0x6ea2 ret:0x7fc91552d400
 10900 ms  0x6ea2 PK11_Derive()
 10900 ms  0x6ea2 basekey:0x7fc91552d400
 10900 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10900 ms  0x6ea2 ret:0x7fc9262e8e00
 10900 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 10900 ms  0x6ea2 privk:0x7fc915559820::7fc915559820  d0 fd 2f 26                                      ../&
 10900 ms  0x6ea2 privk:0x7fc915559820::7fc915559820  e5 e5 e5 e5                                      ....
 10900 ms  0x6ea2 PK11_Encrypt()
 10900 ms  0x6ea2 symkey:0x7fc926466180
 10908 ms  0x6ea2 PK11_Derive()
 10908 ms  0x6ea2 basekey:0x7fc92877c100
 10908 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10908 ms  0x6ea2 ret:0x7fc9262e8d00
 10908 ms  0x6ea2 PK11_PubDeriveWithKDF()
 10908 ms  0x6ea2 seckey:0x7fc93113d820
 10908 ms     | 0x6ea2 EC_ValidatePublicKey()
 10908 ms     | 0x6ea2 ret:0x0
 10908 ms  0x6ea2 ret:0x7fc92877c100
 10908 ms  SECKEY_ECParamsToKeySize()
 10908 ms  0x6ea2 ret:0xff
 10908 ms  0x6ea2 PK11_DeriveWithFlags()
 10908 ms  0x6ea2 basekey:0x7fc9262e8d00
 10908 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10908 ms  0x6ea2 ret:0x7fc926466980
 10908 ms  0x6ea2 PK11_Derive()
 10908 ms  0x6ea2 basekey:0x7fc92877c100
 10908 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10908 ms  0x6ea2 ret:0x7fc926466e00
 10908 ms  0x6ea2 PK11_DeriveWithFlags()
 10908 ms  0x6ea2 basekey:0x7fc926466e00
 10908 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10908 ms  0x6ea2 ret:0x7fc9262e8d00
 10908 ms  0x6ea2 PK11_DeriveWithFlags()
 10908 ms  0x6ea2 basekey:0x7fc926466e00
 10908 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10908 ms  0x6ea2 ret:0x7fc92877c100
 10908 ms  0x6ea2 PK11_DeriveWithFlags()
 10908 ms  0x6ea2 basekey:0x7fc926466e00
 10909 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10909 ms  0x6ea2 ret:0x7fc926466980
 10909 ms  0x6ea2 PK11_Derive()
 10909 ms  0x6ea2 basekey:0x7fc926466e80
 10909 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10909 ms  0x6ea2 ret:0x7fc926466f00
 10909 ms  0x6ea2 PK11_DeriveWithFlags()
 10909 ms  0x6ea2 basekey:0x7fc92877c100
 10909 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10909 ms  0x6ea2 ret:0x7fc926466e00
 10909 ms  0x6ea2 PK11_DeriveWithFlags()
 10909 ms  0x6ea2 basekey:0x7fc92877c100
 10909 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10909 ms  0x6ea2 ret:0x7fc926466980
 10909 ms  0x6ea2 PK11_DeriveWithFlags()
 10909 ms  0x6ea2 basekey:0x7fc92877c100
 10909 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10909 ms  0x6ea2 ret:0x7fc926466980
 10917 ms  0x6ea2 SSL_ImportFD()
 10917 ms  0x6ea2 ret:0x7fc926468160
 10917 ms  0x6ea2 SSL_AuthCertificateHook()
 10917 ms  0x6ea2 fd:0x7fc926468160
 10917 ms  0x6ea2 ret:0x0
 10917 ms  0x6ea2 PR_Connect()
 10917 ms  0x6ea2 fd:0x7fc926468160
 10921 ms  0x6ea2 SSL_ImportFD()
 10921 ms  0x6ea2 ret:0x7fc926468700
 10921 ms  0x6ea2 SSL_AuthCertificateHook()
 10921 ms  0x6ea2 fd:0x7fc926468700
 10921 ms  0x6ea2 ret:0x0
 10921 ms  0x6ea2 PR_Connect()
 10921 ms  0x6ea2 fd:0x7fc926468700
 10922 ms  0x6ea2 SSL_AuthCertificateComplete()
 10922 ms  0x6ea2 fd:0x7fc9296c1070
 10922 ms  0x6ea2 err:0x0
 10922 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 10922 ms     | 0x6ea2 privk:0x7fc92ff20020::7fc92ff20020  a0 b1 41 2f                                      ..A/
 10922 ms     | 0x6ea2 privk:0x7fc92ff20020::7fc92ff20020  e5 e5 e5 e5                                      ....
 10922 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 10922 ms     | 0x6ea2 privk:0x7fc92ff1c020::7fc92ff1c020  50 f6 3f 2f                                      P.?/
 10922 ms     | 0x6ea2 privk:0x7fc92ff1c020::7fc92ff1c020  e5 e5 e5 e5                                      ....
           /* TID 0x6eaa */
 10924 ms  0x6eaa PR_Close()
 10924 ms  0x6eaa fd:0x7fc9262daeb0
           /* TID 0x6ea2 */
 10927 ms  0x6ea2 PK11_DeriveWithFlags()
 10927 ms  0x6ea2 basekey:0x7fc926466980
 10927 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10927 ms  0x6ea2 ret:0x7fc926466e80
 10927 ms  0x6ea2 PK11_Derive()
 10927 ms  0x6ea2 basekey:0x7fc926466e80
 10927 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10927 ms  0x6ea2 ret:0x7fc926471000
 10927 ms  0x6ea2 PK11_DeriveWithFlags()
 10927 ms  0x6ea2 basekey:0x7fc926466980
 10927 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10927 ms  0x6ea2 ret:0x7fc926471480
 10927 ms  0x6ea2 PK11_Derive()
 10927 ms  0x6ea2 basekey:0x7fc926471480
 10927 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10927 ms  0x6ea2 ret:0x7fc926471500
 10933 ms  0x6ea2 PK11_DeriveWithFlags()
 10933 ms  0x6ea2 basekey:0x7fc926466980
 10933 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10933 ms  0x6ea2 ret:0x7fc926471880
 10933 ms  0x6ea2 PK11_Derive()
 10933 ms  0x6ea2 basekey:0x7fc926471880
 10933 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 10933 ms  0x6ea2 ret:0x7fc926471e80
 10939 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10939 ms  0x6ea2 cx:0x7fc92c907288
 10940 ms     | 0x6ea2 EC_ValidatePublicKey()
 10940 ms     | 0x6ea2 ret:0x0
 10940 ms  0x6ea2 ret:0x7fc92c7ad020::7fc92c7ad020  b0 6a b2 2b                                      .j.+
 10940 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10940 ms  0x6ea2 cx:0x7fc92c907288
 10941 ms     | 0x6ea2 EC_ValidatePublicKey()
 10942 ms     | 0x6ea2 ret:0x0
 10942 ms  0x6ea2 ret:0x7fc92c7bc020::7fc92c7bc020  60 e0 3f 2c                                      `.?,
 10943 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10943 ms  0x6ea2 cx:0x7fc92c9070e8
 10943 ms     | 0x6ea2 EC_ValidatePublicKey()
 10944 ms     | 0x6ea2 ret:0x0
 10944 ms  0x6ea2 ret:0x7fc92cb78020::7fc92cb78020  b0 ef 3f 2c                                      ..?,
 10944 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10944 ms  0x6ea2 cx:0x7fc92c9070e8
 10944 ms     | 0x6ea2 EC_ValidatePublicKey()
 10946 ms     | 0x6ea2 ret:0x0
 10946 ms  0x6ea2 ret:0x7fc92cb80020::7fc92cb80020  c0 e9 96 2c                                      ...,
 10950 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10950 ms  0x6ea2 cx:0x7fc92c906f48
 10950 ms     | 0x6ea2 EC_ValidatePublicKey()
 10950 ms     | 0x6ea2 ret:0x0
 10950 ms  0x6ea2 ret:0x7fc92cb8d020::7fc92cb8d020  20 6e 9c 2c                                       n.,
 10951 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10951 ms  0x6ea2 cx:0x7fc92c906f48
 10951 ms     | 0x6ea2 EC_ValidatePublicKey()
 10953 ms     | 0x6ea2 ret:0x0
 10953 ms  0x6ea2 ret:0x7fc92cbc2820::7fc92cbc2820  60 35 a4 2c                                      `5.,
 10957 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10957 ms  0x6ea2 cx:0x7fc9264d4308
 10957 ms     | 0x6ea2 EC_ValidatePublicKey()
 10957 ms     | 0x6ea2 ret:0x0
 10957 ms  0x6ea2 ret:0x7fc92cbde020::7fc92cbde020  70 f4 3f 2f                                      p.?/
 10957 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10957 ms  0x6ea2 cx:0x7fc9264d4308
 10958 ms     | 0x6ea2 EC_ValidatePublicKey()
 10960 ms     | 0x6ea2 ret:0x0
 10960 ms  0x6ea2 ret:0x7fc92cbeb820::7fc92cbeb820  70 f9 3f 2f                                      p.?/
 10960 ms  0x6ea2 PR_Connect()
 10960 ms  0x6ea2 fd:0x7fc92967eb50
 10960 ms  0x6ea2 SSL_ImportFD()
 10960 ms  0x6ea2 ret:0x7fc92676c9a0
 10960 ms  0x6ea2 SSL_AuthCertificateHook()
 10960 ms  0x6ea2 fd:0x7fc92676c9a0
 10960 ms  0x6ea2 ret:0x0
 10960 ms  0x6ea2 PR_Connect()
 10960 ms  0x6ea2 fd:0x7fc92676c9a0
 10960 ms  0x6ea2 PR_Connect()
 10960 ms  0x6ea2 fd:0x7fc92676caf0
 10960 ms  0x6ea2 SSL_ImportFD()
 10960 ms  0x6ea2 ret:0x7fc92676cb20
 10960 ms  0x6ea2 SSL_AuthCertificateHook()
 10960 ms  0x6ea2 fd:0x7fc92676cb20
 10960 ms  0x6ea2 ret:0x0
 10960 ms  0x6ea2 PR_Connect()
 10960 ms  0x6ea2 fd:0x7fc92676cb20
 10960 ms  0x6ea2 SSL_ImportFD()
 10960 ms  0x6ea2 ret:0x7fc92676cb80
 10960 ms  0x6ea2 SSL_AuthCertificateHook()
 10960 ms  0x6ea2 fd:0x7fc92676cb80
 10960 ms  0x6ea2 ret:0x0
 10960 ms  0x6ea2 PR_Connect()
 10960 ms  0x6ea2 fd:0x7fc92676cb80
 10961 ms  0x6ea2 PR_Connect()
 10961 ms  0x6ea2 fd:0x7fc927910a00
 10961 ms  0x6ea2 PR_Connect()
 10961 ms  0x6ea2 fd:0x7fc927910a60
           /* TID 0x6eaa */
 10962 ms  0x6eaa PR_Close()
 10962 ms  0x6eaa fd:0x7fc92967e1c0
           /* TID 0x6ea2 */
 10963 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10963 ms  0x6ea2 cx:0x7fc92c908fc8
 10964 ms     | 0x6ea2 EC_ValidatePublicKey()
 10964 ms     | 0x6ea2 ret:0x0
 10964 ms  0x6ea2 ret:0x7fc92f442020::7fc92f442020  a0 b1 41 2f                                      ..A/
 10964 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10964 ms  0x6ea2 cx:0x7fc92c908fc8
 10964 ms     | 0x6ea2 EC_ValidatePublicKey()
 10966 ms     | 0x6ea2 ret:0x0
 10966 ms  0x6ea2 ret:0x7fc92ff13020::7fc92ff13020  90 3c 7a 30                                      .<z0
 10966 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10966 ms  0x6ea2 cx:0x7fc92c908e28
 10967 ms     | 0x6ea2 EC_ValidatePublicKey()
 10967 ms     | 0x6ea2 ret:0x0
 10967 ms  0x6ea2 ret:0x7fc92ff1c020::7fc92ff1c020  50 8b 7b 30                                      P.{0
 10967 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10967 ms  0x6ea2 cx:0x7fc92c908e28
 10967 ms     | 0x6ea2 EC_ValidatePublicKey()
 10969 ms     | 0x6ea2 ret:0x0
 10969 ms  0x6ea2 ret:0x7fc92ff20020::7fc92ff20020  70 7e a8 33                                      p~.3
 10973 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10973 ms  0x6ea2 cx:0x7fc92c909168
 10973 ms     | 0x6ea2 EC_ValidatePublicKey()
 10973 ms     | 0x6ea2 ret:0x0
 10973 ms  0x6ea2 ret:0x7fc930592820::7fc930592820  50 f6 a9 33                                      P..3
 10973 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10973 ms  0x6ea2 cx:0x7fc92c909168
 10974 ms     | 0x6ea2 EC_ValidatePublicKey()
 10975 ms     | 0x6ea2 ret:0x0
 10975 ms  0x6ea2 ret:0x7fc9310ba020::7fc9310ba020  f0 d1 44 34                                      ..D4
           /* TID 0x6eaa */
 10980 ms  0x6eaa PR_Close()
 10980 ms  0x6eaa fd:0x7fc9279435b0
           /* TID 0x6ea2 */
 10981 ms  0x6ea2 PR_Connect()
 10981 ms  0x6ea2 fd:0x7fc92797da00
           /* TID 0x6eaa */
 10984 ms  0x6eaa PR_Close()
 10984 ms  0x6eaa fd:0x7fc9279435b0
           /* TID 0x6ea2 */
 10986 ms  0x6ea2 SSL_ImportFD()
 10986 ms  0x6ea2 ret:0x7fc92b9fea90
 10986 ms  0x6ea2 SSL_AuthCertificateHook()
 10986 ms  0x6ea2 fd:0x7fc92b9fea90
 10986 ms  0x6ea2 ret:0x0
 10987 ms  0x6ea2 PR_Connect()
 10987 ms  0x6ea2 fd:0x7fc92b9fea90
           /* TID 0x6eaa */
 10988 ms  0x6eaa PR_Close()
 10988 ms  0x6eaa fd:0x7fc9279435b0
 10991 ms  0x6eaa PR_Close()
 10991 ms  0x6eaa fd:0x7fc9279435b0
           /* TID 0x6ea2 */
 10992 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10992 ms  0x6ea2 cx:0x7fc934460768
 10992 ms     | 0x6ea2 EC_ValidatePublicKey()
 10992 ms     | 0x6ea2 ret:0x0
 10992 ms  0x6ea2 ret:0x7fc93435f820::7fc93435f820  f0 61 9c 2c                                      .a.,
 10992 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 10992 ms  0x6ea2 cx:0x7fc934460768
 10993 ms     | 0x6ea2 EC_ValidatePublicKey()
 10994 ms     | 0x6ea2 ret:0x0
 10994 ms  0x6ea2 ret:0x7fc9343b9020::7fc9343b9020  30 d3 44 34                                      0.D4
           /* TID 0x6eaa */
 11004 ms  0x6eaa PR_Close()
 11004 ms  0x6eaa fd:0x7fc92798ccd0
           /* TID 0x6ea2 */
 11004 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 11004 ms  0x6ea2 cx:0x7fc934460c48
 11005 ms     | 0x6ea2 EC_ValidatePublicKey()
 11005 ms     | 0x6ea2 ret:0x0
 11005 ms  0x6ea2 ret:0x7fc926423820::7fc926423820  e0 67 9c 2c                                      .g.,
 11005 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 11005 ms  0x6ea2 cx:0x7fc934460c48
 11006 ms     | 0x6ea2 EC_ValidatePublicKey()
 11007 ms     | 0x6ea2 ret:0x0
 11007 ms  0x6ea2 ret:0x7fc926425820::7fc926425820  60 d5 44 34                                      `.D4
           /* TID 0x6eaa */
 11013 ms  0x6eaa PR_Close()
 11013 ms  0x6eaa fd:0x7fc9296c1c40
 11015 ms  0x6eaa PR_Close()
 11015 ms  0x6eaa fd:0x7fc9296c1c40
 11016 ms  0x6eaa PR_Close()
 11016 ms  0x6eaa fd:0x7fc9296c1c40
           /* TID 0x6ea2 */
 11016 ms  0x6ea2 SSL_ImportFD()
 11016 ms  0x6ea2 ret:0x7fc92c96f970
 11016 ms  0x6ea2 SSL_AuthCertificateHook()
 11016 ms  0x6ea2 fd:0x7fc92c96f970
 11018 ms  0x6ea2 ret:0x0
 11018 ms  0x6ea2 PR_Connect()
 11018 ms  0x6ea2 fd:0x7fc92c96f970
           /* TID 0x6eaa */
 11022 ms  0x6eaa PR_Close()
 11022 ms  0x6eaa fd:0x7fc915503700
 11023 ms  0x6eaa PR_Close()
 11023 ms  0x6eaa fd:0x7fc915503700
 11025 ms  0x6eaa PR_Close()
 11025 ms  0x6eaa fd:0x7fc915503700
 11026 ms  0x6eaa PR_Close()
 11026 ms  0x6eaa fd:0x7fc915503700
 11031 ms  0x6eaa PR_Close()
 11031 ms  0x6eaa fd:0x7fc915503700
 11032 ms  0x6eaa PR_Close()
 11032 ms  0x6eaa fd:0x7fc92c97f670
           /* TID 0x6ea2 */
 11033 ms  SECKEY_ECParamsToKeySize()
 11033 ms  0x6ea2 ret:0xff
 11033 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 11033 ms  0x6ea2 cx:0x7fc9264d4308
 11034 ms     | 0x6ea2 EC_ValidatePublicKey()
 11034 ms     | 0x6ea2 ret:0x0
 11034 ms  0x6ea2 ret:0x7fc926438020::7fc926438020  a0 6b 9c 2c                                      .k.,
 11034 ms  0x6ea2 PK11_PubDeriveWithKDF()
 11034 ms  0x6ea2 seckey:0x7fc926438020
 11034 ms     | 0x6ea2 EC_ValidatePublicKey()
 11034 ms     | 0x6ea2 ret:0x0
 11034 ms  0x6ea2 ret:0x7fc926466980
 11034 ms  0x6ea2 PK11_DeriveWithFlags()
 11034 ms  0x6ea2 basekey:0x7fc926466980
 11034 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11034 ms  0x6ea2 ret:0x7fc929681980
 11034 ms  0x6ea2 PK11_Derive()
 11034 ms  0x6ea2 basekey:0x7fc929681980
 11034 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11034 ms  0x6ea2 ret:0x7fc929682680
 11034 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11034 ms  0x6ea2 privk:0x7fc926438020::7fc926438020  a0 6b 9c 2c                                      .k.,
 11034 ms  0x6ea2 privk:0x7fc926438020::7fc926438020  e5 e5 e5 e5                                      ....
 11035 ms  0x6ea2 PK11_Encrypt()
 11035 ms  0x6ea2 symkey:0x7fc92b07a200
           /* TID 0x6eaa */
 11036 ms  0x6eaa PR_Close()
 11036 ms  0x6eaa fd:0x7fc92c97f670
 11038 ms  0x6eaa PR_Close()
 11038 ms  0x6eaa fd:0x7fc92c97f670
 11040 ms  0x6eaa PR_Close()
 11040 ms  0x6eaa fd:0x7fc92c97f670
 11041 ms  0x6eaa PR_Close()
 11041 ms  0x6eaa fd:0x7fc92c97f670
 11043 ms  0x6eaa PR_Close()
 11043 ms  0x6eaa fd:0x7fc92c97f670
 11045 ms  0x6eaa PR_Close()
 11045 ms  0x6eaa fd:0x7fc92c96f7c0
 11047 ms  0x6eaa PR_Close()
 11047 ms  0x6eaa fd:0x7fc92c96f730
 11048 ms  0x6eaa PR_Close()
 11048 ms  0x6eaa fd:0x7fc92c96f730
 11050 ms  0x6eaa PR_Close()
 11050 ms  0x6eaa fd:0x7fc92c96f0a0
 11052 ms  0x6eaa PR_Close()
 11052 ms  0x6eaa fd:0x7fc92c96f0a0
 11055 ms  0x6eaa PR_Close()
 11055 ms  0x6eaa fd:0x7fc92c722eb0
 11057 ms  0x6eaa PR_Close()
 11057 ms  0x6eaa fd:0x7fc92c722eb0
 11059 ms  0x6eaa PR_Close()
 11059 ms  0x6eaa fd:0x7fc92c648df0
 11060 ms  0x6eaa PR_Close()
 11060 ms  0x6eaa fd:0x7fc92c648df0
 11064 ms  0x6eaa PR_Close()
 11064 ms  0x6eaa fd:0x7fc92c648df0
           /* TID 0x6ea2 */
 11065 ms  SECKEY_ECParamsToKeySize()
 11065 ms  0x6ea2 ret:0xff
 11065 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 11065 ms  0x6ea2 cx:0x7fc934460768
 11065 ms     | 0x6ea2 EC_ValidatePublicKey()
 11065 ms     | 0x6ea2 ret:0x0
 11065 ms  0x6ea2 ret:0x7fc92c7b4820::7fc92c7b4820  80 68 9c 2c                                      .h.,
 11065 ms  0x6ea2 PK11_PubDeriveWithKDF()
 11065 ms  0x6ea2 seckey:0x7fc92c7b4820
 11065 ms     | 0x6ea2 EC_ValidatePublicKey()
 11065 ms     | 0x6ea2 ret:0x0
 11066 ms  0x6ea2 ret:0x7fc926466980
 11066 ms  0x6ea2 PK11_DeriveWithFlags()
 11066 ms  0x6ea2 basekey:0x7fc926466980
 11066 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11066 ms  0x6ea2 ret:0x7fc92c3bde80
 11066 ms  0x6ea2 PK11_Derive()
 11066 ms  0x6ea2 basekey:0x7fc92c3bde80
 11066 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11066 ms  0x6ea2 ret:0x7fc92c3cbf00
 11066 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11066 ms  0x6ea2 privk:0x7fc92c7b4820::7fc92c7b4820  80 68 9c 2c                                      .h.,
 11066 ms  0x6ea2 privk:0x7fc92c7b4820::7fc92c7b4820  e5 e5 e5 e5                                      ....
 11066 ms  0x6ea2 PK11_Encrypt()
 11066 ms  0x6ea2 symkey:0x7fc92c4e1880
           /* TID 0x6eaa */
 11067 ms  0x6eaa PR_Close()
 11067 ms  0x6eaa fd:0x7fc92b9fec10
 11068 ms  0x6eaa PR_Close()
 11068 ms  0x6eaa fd:0x7fc92b9fec10
 11071 ms  0x6eaa PR_Close()
 11071 ms  0x6eaa fd:0x7fc92b9fec10
 11073 ms  0x6eaa PR_Close()
 11073 ms  0x6eaa fd:0x7fc92b9fec10
           /* TID 0x6ea2 */
 11077 ms  SECKEY_ECParamsToKeySize()
 11077 ms  0x6ea2 ret:0xff
 11077 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 11077 ms  0x6ea2 cx:0x7fc934460c48
 11078 ms     | 0x6ea2 EC_ValidatePublicKey()
 11078 ms     | 0x6ea2 ret:0x0
 11078 ms  0x6ea2 ret:0x7fc926438020::7fc926438020  30 4d 9b 2c                                      0M.,
 11078 ms  0x6ea2 PK11_PubDeriveWithKDF()
 11078 ms  0x6ea2 seckey:0x7fc926438020
 11078 ms     | 0x6ea2 EC_ValidatePublicKey()
 11078 ms     | 0x6ea2 ret:0x0
 11079 ms  0x6ea2 ret:0x7fc926466980
 11079 ms  0x6ea2 PK11_DeriveWithFlags()
 11079 ms  0x6ea2 basekey:0x7fc926466980
 11079 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11079 ms  0x6ea2 ret:0x7fc929681500
 11079 ms  0x6ea2 PK11_Derive()
 11079 ms  0x6ea2 basekey:0x7fc929681500
 11079 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11079 ms  0x6ea2 ret:0x7fc929681600
 11079 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11079 ms  0x6ea2 privk:0x7fc926438020::7fc926438020  30 4d 9b 2c                                      0M.,
 11079 ms  0x6ea2 privk:0x7fc926438020::7fc926438020  e5 e5 e5 e5                                      ....
 11079 ms  0x6ea2 PK11_Encrypt()
 11079 ms  0x6ea2 symkey:0x7fc92b98c880
           /* TID 0x6eaa */
 11079 ms  0x6eaa PR_Close()
 11079 ms  0x6eaa fd:0x7fc9262dadc0
           /* TID 0x6f44 */
 11080 ms  0x6f44 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11080 ms  0x6f44 ret:0x0
 11084 ms  0x6f44 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11084 ms  0x6f44 ret:0x0
           /* TID 0x6ea2 */
 11089 ms  0x6ea2 SSL_AuthCertificateComplete()
 11089 ms  0x6ea2 fd:0x7fc92f4bc190
 11089 ms  0x6ea2 err:0x0
 11089 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11089 ms     | 0x6ea2 privk:0x7fc93112f020::7fc93112f020  d0 f8 a9 33                                      ...3
 11089 ms     | 0x6ea2 privk:0x7fc93112f020::7fc93112f020  e5 e5 e5 e5                                      ....
 11089 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11089 ms     | 0x6ea2 privk:0x7fc931126020::7fc931126020  80 f3 a9 33                                      ...3
 11089 ms     | 0x6ea2 privk:0x7fc931126020::7fc931126020  e5 e5 e5 e5                                      ....
 11089 ms  0x6ea2 SSL_AuthCertificateComplete()
 11089 ms  0x6ea2 fd:0x7fc92ffb2400
 11089 ms  0x6ea2 err:0x0
 11089 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11089 ms     | 0x6ea2 privk:0x7fc93113b020::7fc93113b020  d0 63 30 34                                      .c04
 11089 ms     | 0x6ea2 privk:0x7fc93113b020::7fc93113b020  e5 e5 e5 e5                                      ....
 11090 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11090 ms     | 0x6ea2 privk:0x7fc931139020::7fc931139020  f0 61 30 34                                      .a04
 11090 ms     | 0x6ea2 privk:0x7fc931139020::7fc931139020  e5 e5 e5 e5                                      ....
 11090 ms  0x6ea2 SSL_AuthCertificateComplete()
 11090 ms  0x6ea2 fd:0x7fc92ffb22e0
 11090 ms  0x6ea2 err:0x0
 11090 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11090 ms     | 0x6ea2 privk:0x7fc93148d020::7fc93148d020  10 6a 30 34                                      .j04
 11090 ms     | 0x6ea2 privk:0x7fc93148d020::7fc93148d020  e5 e5 e5 e5                                      ....
 11090 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11090 ms     | 0x6ea2 privk:0x7fc931489820::7fc931489820  30 68 30 34                                      0h04
 11090 ms     | 0x6ea2 privk:0x7fc931489820::7fc931489820  e5 e5 e5 e5                                      ....
 11090 ms  0x6ea2 SSL_AuthCertificateComplete()
 11090 ms  0x6ea2 fd:0x7fc92ffb21c0
 11090 ms  0x6ea2 err:0x0
 11090 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11090 ms     | 0x6ea2 privk:0x7fc931499020::7fc931499020  30 6d 30 34                                      0m04
 11090 ms     | 0x6ea2 privk:0x7fc931499020::7fc931499020  e5 e5 e5 e5                                      ....
 11090 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11090 ms     | 0x6ea2 privk:0x7fc931495020::7fc931495020  50 6b 30 34                                      Pk04
 11090 ms     | 0x6ea2 privk:0x7fc931495020::7fc931495020  e5 e5 e5 e5                                      ....
 11090 ms  0x6ea2 SSL_AuthCertificateComplete()
 11090 ms  0x6ea2 fd:0x7fc92ffb2130
 11090 ms  0x6ea2 err:0x0
 11090 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11090 ms     | 0x6ea2 privk:0x7fc93437a820::7fc93437a820  00 31 38 34                                      .184
 11090 ms     | 0x6ea2 privk:0x7fc93437a820::7fc93437a820  e5 e5 e5 e5                                      ....
 11091 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11091 ms     | 0x6ea2 privk:0x7fc934364820::7fc934364820  c0 6e 30 34                                      .n04
 11091 ms     | 0x6ea2 privk:0x7fc934364820::7fc934364820  e5 e5 e5 e5                                      ....
 11091 ms  0x6ea2 SSL_AuthCertificateComplete()
 11091 ms  0x6ea2 fd:0x7fc92f3b2880
 11091 ms  0x6ea2 err:0x0
 11091 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11091 ms     | 0x6ea2 privk:0x7fc92cbe1820::7fc92cbe1820  a0 3b 38 34                                      .;84
 11091 ms     | 0x6ea2 privk:0x7fc92cbe1820::7fc92cbe1820  e5 e5 e5 e5                                      ....
 11091 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11091 ms     | 0x6ea2 privk:0x7fc92cbdf020::7fc92cbdf020  40 f2 43 34                                      @.C4
 11091 ms     | 0x6ea2 privk:0x7fc92cbdf020::7fc92cbdf020  e5 e5 e5 e5                                      ....
 11091 ms  0x6ea2 SSL_AuthCertificateComplete()
 11091 ms  0x6ea2 fd:0x7fc92c4dee20
 11091 ms  0x6ea2 err:0x0
 11091 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11091 ms     | 0x6ea2 privk:0x7fc92cbe6020::7fc92cbe6020  c0 3e 38 34                                      .>84
 11091 ms     | 0x6ea2 privk:0x7fc92cbe6020::7fc92cbe6020  e5 e5 e5 e5                                      ....
 11091 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11091 ms     | 0x6ea2 privk:0x7fc92cbe4020::7fc92cbe4020  e0 3c 38 34                                      .<84
 11091 ms     | 0x6ea2 privk:0x7fc92cbe4020::7fc92cbe4020  e5 e5 e5 e5                                      ....
 11091 ms  0x6ea2 SSL_AuthCertificateComplete()
 11091 ms  0x6ea2 fd:0x7fc92c97f250
 11091 ms  0x6ea2 err:0x0
 11091 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11091 ms     | 0x6ea2 privk:0x7fc92cbea820::7fc92cbea820  f0 a1 42 34                                      ..B4
 11091 ms     | 0x6ea2 privk:0x7fc92cbea820::7fc92cbea820  e5 e5 e5 e5                                      ....
 11091 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11091 ms     | 0x6ea2 privk:0x7fc92cbe8820::7fc92cbe8820  60 a0 42 34                                      `.B4
 11092 ms     | 0x6ea2 privk:0x7fc92cbe8820::7fc92cbe8820  e5 e5 e5 e5                                      ....
           /* TID 0x6eaa */
 11098 ms  0x6eaa PR_Close()
 11098 ms  0x6eaa fd:0x7fc927b7a460
 11098 ms  0x6eaa PR_Close()
 11098 ms  0x6eaa fd:0x7fc927b7a910
           /* TID 0x6f40 */
 11098 ms  0x6f40 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11098 ms  0x6f40 ret:0x0
 11100 ms  0x6f40 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11100 ms  0x6f40 ret:0x0
 11100 ms  0x6f40 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11101 ms  0x6f40 ret:0x0
 11101 ms  0x6f40 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11101 ms  0x6f40 ret:0x0
           /* TID 0x6f41 */
 11102 ms  0x6f41 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11102 ms  0x6f41 ret:0x0
           /* TID 0x6eaa */
 11104 ms  0x6eaa PR_Close()
 11104 ms  0x6eaa fd:0x7fc927ed2970
           /* TID 0x6f42 */
 11104 ms  0x6f42 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11104 ms  0x6f42 ret:0x0
           /* TID 0x6eaa */
 11106 ms  0x6eaa PR_Close()
 11106 ms  0x6eaa fd:0x7fc927ed2a00
           /* TID 0x6eff */
 11107 ms  0x6eff _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11107 ms  0x6eff ret:0x0
           /* TID 0x6ea2 */
 11109 ms  0x6ea2 PK11_Encrypt()
 11109 ms  0x6ea2 symkey:0x7fc933aad280
 11110 ms  0x6ea2 PK11_Encrypt()
 11110 ms  0x6ea2 symkey:0x7fc933aad280
 11111 ms  0x6ea2 PK11_Encrypt()
 11111 ms  0x6ea2 symkey:0x7fc933aae400
 11112 ms  0x6ea2 PK11_Encrypt()
 11112 ms  0x6ea2 symkey:0x7fc933aae680
 11113 ms  0x6ea2 PK11_Encrypt()
 11113 ms  0x6ea2 symkey:0x7fc933a9eb80
           /* TID 0x6eaa */
 11113 ms  0x6eaa PR_Close()
 11113 ms  0x6eaa fd:0x7fc9279107c0
           /* TID 0x6ea2 */
 11115 ms  0x6ea2 PK11_Encrypt()
 11115 ms  0x6ea2 symkey:0x7fc933a9eb80
 11116 ms  0x6ea2 PK11_Encrypt()
 11116 ms  0x6ea2 symkey:0x7fc933a9db80
 11116 ms  0x6ea2 PK11_Encrypt()
 11116 ms  0x6ea2 symkey:0x7fc933a9db80
 11119 ms  0x6ea2 PK11_Encrypt()
 11119 ms  0x6ea2 symkey:0x7fc933a9ee80
 11120 ms  0x6ea2 PK11_Encrypt()
 11120 ms  0x6ea2 symkey:0x7fc933a9ee80
 11122 ms  0x6ea2 PK11_Encrypt()
 11122 ms  0x6ea2 symkey:0x7fc933aad680
 11124 ms  0x6ea2 PK11_Encrypt()
 11124 ms  0x6ea2 symkey:0x7fc933aadc80
 11124 ms  0x6ea2 PR_Close()
 11124 ms  0x6ea2 fd:0x7fc92c96f970
 11124 ms  0x6ea2 SSL_AuthCertificateComplete()
 11124 ms  0x6ea2 fd:0x7fc92f3d01c0
 11124 ms  0x6ea2 err:0x0
 11124 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11124 ms     | 0x6ea2 privk:0x7fc92cbef020::7fc92cbef020  60 a5 42 34                                      `.B4
 11124 ms     | 0x6ea2 privk:0x7fc92cbef020::7fc92cbef020  e5 e5 e5 e5                                      ....
 11124 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11124 ms     | 0x6ea2 privk:0x7fc92cbed020::7fc92cbed020  80 a3 42 34                                      ..B4
 11124 ms     | 0x6ea2 privk:0x7fc92cbed020::7fc92cbed020  e5 e5 e5 e5                                      ....
 11124 ms  0x6ea2 SSL_AuthCertificateComplete()
 11124 ms  0x6ea2 fd:0x7fc92c795d60
 11124 ms  0x6ea2 err:0x0
 11124 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11124 ms     | 0x6ea2 privk:0x7fc92f443020::7fc92f443020  d0 a8 42 34                                      ..B4
 11125 ms     | 0x6ea2 privk:0x7fc92f443020::7fc92f443020  e5 e5 e5 e5                                      ....
 11125 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11125 ms     | 0x6ea2 privk:0x7fc92cbf1820::7fc92cbf1820  a0 a6 42 34                                      ..B4
 11125 ms     | 0x6ea2 privk:0x7fc92cbf1820::7fc92cbf1820  e5 e5 e5 e5                                      ....
 11125 ms  0x6ea2 SSL_AuthCertificateComplete()
 11125 ms  0x6ea2 fd:0x7fc92ffff400
 11125 ms  0x6ea2 err:0x0
 11125 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11125 ms     | 0x6ea2 privk:0x7fc9343aa820::7fc9343aa820  90 ac 42 34                                      ..B4
 11125 ms     | 0x6ea2 privk:0x7fc9343aa820::7fc9343aa820  e5 e5 e5 e5                                      ....
 11125 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11125 ms     | 0x6ea2 privk:0x7fc9343a8820::7fc9343a8820  60 aa 42 34                                      `.B4
 11125 ms     | 0x6ea2 privk:0x7fc9343a8820::7fc9343a8820  e5 e5 e5 e5                                      ....
 11125 ms  0x6ea2 SSL_AuthCertificateComplete()
 11125 ms  0x6ea2 fd:0x7fc92c406790
 11125 ms  0x6ea2 err:0x0
 11125 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11125 ms     | 0x6ea2 privk:0x7fc9343af020::7fc9343af020  b0 af 42 34                                      ..B4
 11125 ms     | 0x6ea2 privk:0x7fc9343af020::7fc9343af020  e5 e5 e5 e5                                      ....
 11125 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11125 ms     | 0x6ea2 privk:0x7fc9343ad020::7fc9343ad020  d0 ad 42 34                                      ..B4
 11125 ms     | 0x6ea2 privk:0x7fc9343ad020::7fc9343ad020  e5 e5 e5 e5                                      ....
 11125 ms  0x6ea2 SSL_AuthCertificateComplete()
 11125 ms  0x6ea2 fd:0x7fc92ffff670
 11125 ms  0x6ea2 err:0x0
 11125 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11125 ms     | 0x6ea2 privk:0x7fc931121020::7fc931121020  f0 f1 a9 33                                      ...3
 11125 ms     | 0x6ea2 privk:0x7fc931121020::7fc931121020  e5 e5 e5 e5                                      ....
 11126 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11126 ms     | 0x6ea2 privk:0x7fc9310c7820::7fc9310c7820  50 71 a8 33                                      Pq.3
 11126 ms     | 0x6ea2 privk:0x7fc9310c7820::7fc9310c7820  e5 e5 e5 e5                                      ....
 11126 ms  0x6ea2 SSL_AuthCertificateComplete()
 11126 ms  0x6ea2 fd:0x7fc92ffb2070
 11126 ms  0x6ea2 err:0x0
 11126 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11126 ms     | 0x6ea2 privk:0x7fc92cbd7820::7fc92cbd7820  40 37 38 34                                      @784
 11126 ms     | 0x6ea2 privk:0x7fc92cbd7820::7fc92cbd7820  e5 e5 e5 e5                                      ....
 11126 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11126 ms     | 0x6ea2 privk:0x7fc92cbd5820::7fc92cbd5820  60 35 38 34                                      `584
 11126 ms     | 0x6ea2 privk:0x7fc92cbd5820::7fc92cbd5820  e5 e5 e5 e5                                      ....
 11126 ms  0x6ea2 SSL_AuthCertificateComplete()
 11126 ms  0x6ea2 fd:0x7fc92c96f310
 11126 ms  0x6ea2 err:0x0
 11126 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11126 ms     | 0x6ea2 privk:0x7fc92cbdc020::7fc92cbdc020  b0 3a 38 34                                      .:84
 11126 ms     | 0x6ea2 privk:0x7fc92cbdc020::7fc92cbdc020  e5 e5 e5 e5                                      ....
 11126 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11126 ms     | 0x6ea2 privk:0x7fc92cbda020::7fc92cbda020  80 38 38 34                                      .884
 11126 ms     | 0x6ea2 privk:0x7fc92cbda020::7fc92cbda020  e5 e5 e5 e5                                      ....
 11126 ms  0x6ea2 SSL_AuthCertificateComplete()
 11126 ms  0x6ea2 fd:0x7fc92f3dba00
 11126 ms  0x6ea2 err:0x0
 11126 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11126 ms     | 0x6ea2 privk:0x7fc930590020::7fc930590020  b0 65 3d 2f                                      .e=/
 11127 ms     | 0x6ea2 privk:0x7fc930590020::7fc930590020  e5 e5 e5 e5                                      ....
 11127 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11127 ms     | 0x6ea2 privk:0x7fc92f443820::7fc92f443820  60 25 64 2c                                      `%d,
 11127 ms     | 0x6ea2 privk:0x7fc92f443820::7fc92f443820  e5 e5 e5 e5                                      ....
 11127 ms  0x6ea2 SSL_AuthCertificateComplete()
 11127 ms  0x6ea2 fd:0x7fc92c406a00
 11127 ms  0x6ea2 err:0x0
 11138 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11138 ms     | 0x6ea2 privk:0x7fc9343b3820::7fc9343b3820  10 f5 43 34                                      ..C4
 11138 ms     | 0x6ea2 privk:0x7fc9343b3820::7fc9343b3820  e5 e5 e5 e5                                      ....
 11138 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11138 ms     | 0x6ea2 privk:0x7fc9343b1820::7fc9343b1820  90 f2 43 34                                      ..C4
 11138 ms     | 0x6ea2 privk:0x7fc9343b1820::7fc9343b1820  e5 e5 e5 e5                                      ....
 11138 ms  0x6ea2 SSL_AuthCertificateComplete()
 11138 ms  0x6ea2 fd:0x7fc92c3203d0
 11138 ms  0x6ea2 err:0x0
 11138 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11138 ms     | 0x6ea2 privk:0x7fc9343b8020::7fc9343b8020  80 f8 43 34                                      ..C4
 11138 ms     | 0x6ea2 privk:0x7fc9343b8020::7fc9343b8020  e5 e5 e5 e5                                      ....
 11138 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11138 ms     | 0x6ea2 privk:0x7fc9343b6020::7fc9343b6020  a0 f6 43 34                                      ..C4
 11138 ms     | 0x6ea2 privk:0x7fc9343b6020::7fc9343b6020  e5 e5 e5 e5                                      ....
 11138 ms  0x6ea2 SSL_AuthCertificateComplete()
 11138 ms  0x6ea2 fd:0x7fc930d54d00
 11138 ms  0x6ea2 err:0x0
 11139 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11139 ms     | 0x6ea2 privk:0x7fc9343bc820::7fc9343bc820  a0 fb 43 34                                      ..C4
 11139 ms     | 0x6ea2 privk:0x7fc9343bc820::7fc9343bc820  e5 e5 e5 e5                                      ....
 11139 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11139 ms     | 0x6ea2 privk:0x7fc9343ba820::7fc9343ba820  c0 f9 43 34                                      ..C4
 11139 ms     | 0x6ea2 privk:0x7fc9343ba820::7fc9343ba820  e5 e5 e5 e5                                      ....
 11139 ms  0x6ea2 SSL_AuthCertificateComplete()
 11139 ms  0x6ea2 fd:0x7fc92ffff970
 11139 ms  0x6ea2 err:0x0
 11139 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11139 ms     | 0x6ea2 privk:0x7fc9310bb820::7fc9310bb820  d0 9d 4f 31                                      ..O1
 11139 ms     | 0x6ea2 privk:0x7fc9310bb820::7fc9310bb820  e5 e5 e5 e5                                      ....
 11139 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11139 ms     | 0x6ea2 privk:0x7fc9310b7820::7fc9310b7820  60 90 4f 31                                      `.O1
 11139 ms     | 0x6ea2 privk:0x7fc9310b7820::7fc9310b7820  e5 e5 e5 e5                                      ....
 11139 ms  0x6ea2 SSL_AuthCertificateComplete()
 11139 ms  0x6ea2 fd:0x7fc92ffffa30
 11139 ms  0x6ea2 err:0x0
 11140 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11140 ms     | 0x6ea2 privk:0x7fc930596020::7fc930596020  c0 ae 06 31                                      ...1
 11140 ms     | 0x6ea2 privk:0x7fc930596020::7fc930596020  e5 e5 e5 e5                                      ....
 11140 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11140 ms     | 0x6ea2 privk:0x7fc930593020::7fc930593020  d0 8d f7 2f                                      .../
 11140 ms     | 0x6ea2 privk:0x7fc930593020::7fc930593020  e5 e5 e5 e5                                      ....
 11140 ms  0x6ea2 SSL_AuthCertificateComplete()
 11140 ms  0x6ea2 fd:0x7fc92cb17820
 11140 ms  0x6ea2 err:0x0
 11140 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11140 ms     | 0x6ea2 privk:0x7fc931136820::7fc931136820  b0 60 30 34                                      .`04
 11140 ms     | 0x6ea2 privk:0x7fc931136820::7fc931136820  e5 e5 e5 e5                                      ....
 11140 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11140 ms     | 0x6ea2 privk:0x7fc931133820::7fc931133820  f0 fb a9 33                                      ...3
 11140 ms     | 0x6ea2 privk:0x7fc931133820::7fc931133820  e5 e5 e5 e5                                      ....
 11140 ms  0x6ea2 PK11_Encrypt()
 11140 ms  0x6ea2 symkey:0x7fc933aad280
 11152 ms  0x6ea2 PK11_Encrypt()
 11152 ms  0x6ea2 symkey:0x7fc933aad280
 11155 ms  0x6ea2 PK11_Encrypt()
 11155 ms  0x6ea2 symkey:0x7fc933aad280
 11158 ms  0x6ea2 PK11_Encrypt()
 11158 ms  0x6ea2 symkey:0x7fc933aad280
 11159 ms  0x6ea2 SSL_AuthCertificateComplete()
 11159 ms  0x6ea2 fd:0x7fc92ffb2340
 11159 ms  0x6ea2 err:0x0
 11159 ms     | 0x6ea2 PK11_DeriveWithFlags()
 11159 ms     | 0x6ea2 basekey:0x7fc926466f00
 11159 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 11159 ms     | 0x6ea2 ret:0x7fc926466980
 11159 ms     | 0x6ea2 PK11_DeriveWithFlags()
 11159 ms     | 0x6ea2 basekey:0x7fc926466f00
 11159 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 11159 ms     | 0x6ea2 ret:0x7fc927ee7d80
 11159 ms     | 0x6ea2 PK11_DeriveWithFlags()
 11159 ms     | 0x6ea2 basekey:0x7fc926466f00
 11159 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 11159 ms     | 0x6ea2 ret:0x7fc927ee8c00
 11159 ms     | 0x6ea2 PK11_DeriveWithFlags()
 11159 ms     | 0x6ea2 basekey:0x7fc9262e8d00
 11159 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 11159 ms     | 0x6ea2 ret:0x7fc927ee8c80
 11159 ms     | 0x6ea2 PK11_DeriveWithFlags()
 11159 ms     | 0x6ea2 basekey:0x7fc9262e8d00
 11159 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 11159 ms     | 0x6ea2 ret:0x7fc927ee8d00
 11159 ms     | 0x6ea2 PK11_DeriveWithFlags()
 11159 ms     | 0x6ea2 basekey:0x7fc927ee7d80
 11159 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 11159 ms     | 0x6ea2 ret:0x7fc927ee8d00
 11159 ms     | 0x6ea2 PK11_DeriveWithFlags()
 11159 ms     | 0x6ea2 basekey:0x7fc927ee7d80
 11159 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 11159 ms     | 0x6ea2 ret:0x7fc927ee8d80
 11159 ms     | 0x6ea2 PK11_DeriveWithFlags()
 11159 ms     | 0x6ea2 basekey:0x7fc9262e8d00
 11159 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 11159 ms     | 0x6ea2 ret:0x7fc926466e00
 11159 ms     | 0x6ea2 PK11_Encrypt()
 11159 ms     | 0x6ea2 symkey:0x7fc927ee8c80
 11159 ms     | 0x6ea2 PK11_DeriveWithFlags()
 11159 ms     | 0x6ea2 basekey:0x7fc926466980
 11160 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 11160 ms     | 0x6ea2 ret:0x7fc926466e00
 11160 ms     | 0x6ea2 PK11_DeriveWithFlags()
 11160 ms     | 0x6ea2 basekey:0x7fc926466980
 11160 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 11160 ms     | 0x6ea2 ret:0x7fc927ee8d80
 11160 ms     | 0x6ea2 PK11_DeriveWithFlags()
 11160 ms     | 0x6ea2 basekey:0x7fc926466f00
 11160 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 11160 ms     | 0x6ea2 ret:0x7fc927ee8c80
 11160 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11160 ms     | 0x6ea2 privk:0x7fc93147e020::7fc93147e020  f0 66 30 34                                      .f04
 11160 ms     | 0x6ea2 privk:0x7fc93147e020::7fc93147e020  e5 e5 e5 e5                                      ....
 11160 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11160 ms     | 0x6ea2 privk:0x7fc93113d820::7fc93113d820  10 65 30 34                                      .e04
 11160 ms     | 0x6ea2 privk:0x7fc93113d820::7fc93113d820  e5 e5 e5 e5                                      ....
 11160 ms  0x6ea2 SSL_AuthCertificateComplete()
 11160 ms  0x6ea2 fd:0x7fc92cbffd30
 11160 ms  0x6ea2 err:0x0
 11160 ms  0x6ea2 SSL_AuthCertificateComplete()
 11160 ms  0x6ea2 fd:0x7fc926468160
 11160 ms  0x6ea2 err:0x0
 11160 ms  0x6ea2 SSL_AuthCertificateComplete()
 11160 ms  0x6ea2 fd:0x7fc926468700
 11160 ms  0x6ea2 err:0x0
 11160 ms  0x6ea2 SSL_AuthCertificateComplete()
 11160 ms  0x6ea2 fd:0x7fc92ffb2100
 11160 ms  0x6ea2 err:0x0
 11160 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11160 ms     | 0x6ea2 privk:0x7fc94e774820::7fc94e774820  20 34 38 34                                       484
 11160 ms     | 0x6ea2 privk:0x7fc94e774820::7fc94e774820  e5 e5 e5 e5                                      ....
 11160 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11160 ms     | 0x6ea2 privk:0x7fc93610d820::7fc93610d820  40 32 38 34                                      @284
 11160 ms     | 0x6ea2 privk:0x7fc93610d820::7fc93610d820  e5 e5 e5 e5                                      ....
 11161 ms  0x6ea2 PK11_Encrypt()
 11161 ms  0x6ea2 symkey:0x7fc933a9ee80
 11164 ms  0x6ea2 PK11_Encrypt()
 11164 ms  0x6ea2 symkey:0x7fc933aad280
 11164 ms  0x6ea2 PK11_Encrypt()
 11164 ms  0x6ea2 symkey:0x7fc933a9eb80
 11165 ms  0x6ea2 PK11_Encrypt()
 11165 ms  0x6ea2 symkey:0x7fc933a9db80
 11165 ms  0x6ea2 PK11_Encrypt()
 11165 ms  0x6ea2 symkey:0x7fc933a9ee80
 11166 ms  0x6ea2 PK11_Encrypt()
 11166 ms  0x6ea2 symkey:0x7fc9344c2b00
 11166 ms  0x6ea2 PK11_Encrypt()
 11166 ms  0x6ea2 symkey:0x7fc91552ce00
 11174 ms  0x6ea2 PK11_Encrypt()
 11174 ms  0x6ea2 symkey:0x7fc933aaee80
 11174 ms  0x6ea2 PK11_Encrypt()
 11174 ms  0x6ea2 symkey:0x7fc930ad8c80
 11175 ms  0x6ea2 PK11_Encrypt()
 11175 ms  0x6ea2 symkey:0x7fc933aadf00
 11175 ms  0x6ea2 PK11_Encrypt()
 11175 ms  0x6ea2 symkey:0x7fc91552db00
 11175 ms  0x6ea2 PK11_Encrypt()
 11175 ms  0x6ea2 symkey:0x7fc9262e7900
 11175 ms  0x6ea2 PK11_Encrypt()
 11175 ms  0x6ea2 symkey:0x7fc926466180
 11176 ms  0x6ea2 PK11_Encrypt()
 11176 ms  0x6ea2 symkey:0x7fc933a9e000
 11177 ms  0x6ea2 PK11_Encrypt()
 11177 ms  0x6ea2 symkey:0x7fc933a78780
 11178 ms  0x6ea2 PK11_Encrypt()
 11178 ms  0x6ea2 symkey:0x7fc933a9e800
 11178 ms  0x6ea2 PK11_Encrypt()
 11178 ms  0x6ea2 symkey:0x7fc933aac600
 11179 ms  0x6ea2 PK11_Encrypt()
 11179 ms  0x6ea2 symkey:0x7fc926466e00
 11179 ms  0x6ea2 PK11_Encrypt()
 11179 ms  0x6ea2 symkey:0x7fc933a9ee80
 11183 ms  0x6ea2 PK11_Encrypt()
 11183 ms  0x6ea2 symkey:0x7fc933aae280
 11183 ms  0x6ea2 PK11_Encrypt()
 11183 ms  0x6ea2 symkey:0x7fc933a9ef80
 11183 ms  0x6ea2 PK11_Encrypt()
 11183 ms  0x6ea2 symkey:0x7fc9344c2180
 11184 ms  0x6ea2 PK11_Encrypt()
 11184 ms  0x6ea2 symkey:0x7fc92b07a200
 11184 ms  0x6ea2 PK11_Encrypt()
 11184 ms  0x6ea2 symkey:0x7fc92b98c880
 11184 ms  0x6ea2 PK11_Encrypt()
 11184 ms  0x6ea2 symkey:0x7fc92c4e1880
 11184 ms  0x6ea2 PR_Close()
 11184 ms  0x6ea2 fd:0x7fc92ffb2130
 11184 ms     | 0x6ea2 PK11_Encrypt()
 11184 ms     | 0x6ea2 symkey:0x7fc933aadc80
 11184 ms  0x6ea2 PR_Close()
 11184 ms  0x6ea2 fd:0x7fc92ffb21c0
 11184 ms     | 0x6ea2 PK11_Encrypt()
 11184 ms     | 0x6ea2 symkey:0x7fc933aad680
 11185 ms  0x6ea2 PR_Close()
 11185 ms  0x6ea2 fd:0x7fc92c97f250
 11185 ms     | 0x6ea2 PK11_Encrypt()
 11185 ms     | 0x6ea2 symkey:0x7fc933aae680
 11185 ms  0x6ea2 PR_Close()
 11185 ms  0x6ea2 fd:0x7fc92c4dee20
 11185 ms     | 0x6ea2 PK11_Encrypt()
 11185 ms     | 0x6ea2 symkey:0x7fc933aae400
 11198 ms  0x6ea2 PK11_Encrypt()
 11198 ms  0x6ea2 symkey:0x7fc933aad280
 11199 ms  0x6ea2 PK11_Encrypt()
 11199 ms  0x6ea2 symkey:0x7fc933aad280
 11199 ms  0x6ea2 PK11_Encrypt()
 11199 ms  0x6ea2 symkey:0x7fc933aad280
 11200 ms  0x6ea2 PK11_Encrypt()
 11200 ms  0x6ea2 symkey:0x7fc933aad280
 11200 ms  0x6ea2 PK11_Encrypt()
 11200 ms  0x6ea2 symkey:0x7fc933a9eb80
 11201 ms  0x6ea2 PK11_Encrypt()
 11201 ms  0x6ea2 symkey:0x7fc933aad280
 11201 ms  0x6ea2 PK11_Encrypt()
 11201 ms  0x6ea2 symkey:0x7fc933aad280
 11201 ms  0x6ea2 PK11_Encrypt()
 11201 ms  0x6ea2 symkey:0x7fc933aad280
 11211 ms  0x6ea2 PK11_Encrypt()
 11211 ms  0x6ea2 symkey:0x7fc933aad280
 11213 ms  0x6ea2 PK11_Encrypt()
 11213 ms  0x6ea2 symkey:0x7fc933aad280
 11213 ms  0x6ea2 PK11_Encrypt()
 11213 ms  0x6ea2 symkey:0x7fc933aad280
 11214 ms  0x6ea2 PK11_Encrypt()
 11214 ms  0x6ea2 symkey:0x7fc933a9eb80
 11214 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11214 ms  0x6ea2 privk:0x7fc92cbeb820::7fc92cbeb820  70 f9 3f 2f                                      p.?/
 11214 ms  0x6ea2 privk:0x7fc92cbeb820::7fc92cbeb820  e5 e5 e5 e5                                      ....
 11214 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11214 ms  0x6ea2 privk:0x7fc92cbde020::7fc92cbde020  70 f4 3f 2f                                      p.?/
 11214 ms  0x6ea2 privk:0x7fc92cbde020::7fc92cbde020  e5 e5 e5 e5                                      ....
 11214 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11214 ms  0x6ea2 privk:0x7fc926425820::7fc926425820  60 d5 44 34                                      `.D4
 11215 ms  0x6ea2 privk:0x7fc926425820::7fc926425820  e5 e5 e5 e5                                      ....
 11215 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11215 ms  0x6ea2 privk:0x7fc926423820::7fc926423820  e0 67 9c 2c                                      .g.,
 11215 ms  0x6ea2 privk:0x7fc926423820::7fc926423820  e5 e5 e5 e5                                      ....
 11215 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11215 ms  0x6ea2 privk:0x7fc9343b9020::7fc9343b9020  30 d3 44 34                                      0.D4
 11215 ms  0x6ea2 privk:0x7fc9343b9020::7fc9343b9020  e5 e5 e5 e5                                      ....
 11215 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11215 ms  0x6ea2 privk:0x7fc93435f820::7fc93435f820  f0 61 9c 2c                                      .a.,
 11215 ms  0x6ea2 privk:0x7fc93435f820::7fc93435f820  e5 e5 e5 e5                                      ....
 11215 ms  0x6ea2 PR_Close()
 11215 ms  0x6ea2 fd:0x7fc926468160
 11215 ms     | 0x6ea2 PK11_Encrypt()
 11215 ms     | 0x6ea2 symkey:0x7fc92c4e1880
 11216 ms  0x6ea2 PR_Close()
 11216 ms  0x6ea2 fd:0x7fc926468700
 11216 ms     | 0x6ea2 PK11_Encrypt()
 11216 ms     | 0x6ea2 symkey:0x7fc92b98c880
 11216 ms  0x6ea2 PR_Close()
 11216 ms  0x6ea2 fd:0x7fc92cbffd30
 11216 ms     | 0x6ea2 PK11_Encrypt()
 11216 ms     | 0x6ea2 symkey:0x7fc92b07a200
 11216 ms  0x6ea2 PR_Close()
 11216 ms  0x6ea2 fd:0x7fc92c96f310
 11216 ms     | 0x6ea2 PK11_Encrypt()
 11216 ms     | 0x6ea2 symkey:0x7fc9344c2180
 11216 ms  0x6ea2 PR_Close()
 11216 ms  0x6ea2 fd:0x7fc92ffb2070
 11216 ms     | 0x6ea2 PK11_Encrypt()
 11216 ms     | 0x6ea2 symkey:0x7fc933a9ef80
 11216 ms  0x6ea2 PR_Close()
 11216 ms  0x6ea2 fd:0x7fc92ffb2100
 11216 ms     | 0x6ea2 PK11_Encrypt()
 11216 ms     | 0x6ea2 symkey:0x7fc933aae280
 11217 ms  0x6ea2 PR_Close()
 11217 ms  0x6ea2 fd:0x7fc92cb17820
 11217 ms     | 0x6ea2 PK11_Encrypt()
 11217 ms     | 0x6ea2 symkey:0x7fc933aac600
 11217 ms  0x6ea2 PR_Close()
 11217 ms  0x6ea2 fd:0x7fc92ffff670
 11217 ms     | 0x6ea2 PK11_Encrypt()
 11217 ms     | 0x6ea2 symkey:0x7fc933a9e800
 11217 ms  0x6ea2 PR_Close()
 11217 ms  0x6ea2 fd:0x7fc92ffff970
 11217 ms     | 0x6ea2 PK11_Encrypt()
 11217 ms     | 0x6ea2 symkey:0x7fc933a78780
 11217 ms  0x6ea2 PR_Close()
 11217 ms  0x6ea2 fd:0x7fc92ffffa30
 11217 ms     | 0x6ea2 PK11_Encrypt()
 11217 ms     | 0x6ea2 symkey:0x7fc933a9e000
 11218 ms  0x6ea2 PR_Close()
 11218 ms  0x6ea2 fd:0x7fc92c406790
 11218 ms     | 0x6ea2 PK11_Encrypt()
 11218 ms     | 0x6ea2 symkey:0x7fc933aadf00
 11218 ms  0x6ea2 PR_Close()
 11218 ms  0x6ea2 fd:0x7fc92ffff400
 11218 ms     | 0x6ea2 PK11_Encrypt()
 11218 ms     | 0x6ea2 symkey:0x7fc930ad8c80
 11218 ms  0x6ea2 PR_Close()
 11218 ms  0x6ea2 fd:0x7fc92c795d60
 11218 ms     | 0x6ea2 PK11_Encrypt()
 11218 ms     | 0x6ea2 symkey:0x7fc933aaee80
 11218 ms  0x6ea2 PR_Close()
 11218 ms  0x6ea2 fd:0x7fc92f3dba00
 11218 ms     | 0x6ea2 PK11_Encrypt()
 11218 ms     | 0x6ea2 symkey:0x7fc9344c2b00
 11221 ms  0x6ea2 PR_Connect()
 11221 ms  0x6ea2 fd:0x7fc9264681c0
 11221 ms  0x6ea2 PR_Connect()
 11221 ms  0x6ea2 fd:0x7fc9264682e0
 11221 ms  0x6ea2 PR_Connect()
 11221 ms  0x6ea2 fd:0x7fc9264683a0
 11222 ms  0x6ea2 PK11_Encrypt()
 11222 ms  0x6ea2 symkey:0x7fc933aad280
 11222 ms  0x6ea2 PK11_Encrypt()
 11222 ms  0x6ea2 symkey:0x7fc933aad280
 11223 ms  0x6ea2 PK11_Encrypt()
 11223 ms  0x6ea2 symkey:0x7fc933aad280
 11224 ms  0x6ea2 PK11_Encrypt()
 11224 ms  0x6ea2 symkey:0x7fc933aad280
 11224 ms  0x6ea2 PK11_Encrypt()
 11224 ms  0x6ea2 symkey:0x7fc933aad280
 11227 ms  0x6ea2 PK11_DeriveWithFlags()
 11227 ms  0x6ea2 basekey:0x7fc927ee8c80
 11227 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11227 ms  0x6ea2 ret:0x7fc9344c2900
 11227 ms  0x6ea2 PK11_DeriveWithFlags()
 11227 ms  0x6ea2 basekey:0x7fc927ee8c80
 11227 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11227 ms  0x6ea2 ret:0x7fc9344c2900
 11227 ms  0x6ea2 PR_Close()
 11227 ms  0x6ea2 fd:0x7fc92ffb2340
 11227 ms     | 0x6ea2 PK11_Encrypt()
 11227 ms     | 0x6ea2 symkey:0x7fc926466e00
 11238 ms  0x6ea2 SSL_ImportFD()
 11238 ms  0x6ea2 ret:0x7fc927b7a460
 11238 ms  0x6ea2 SSL_AuthCertificateHook()
 11238 ms  0x6ea2 fd:0x7fc927b7a460
 11238 ms  0x6ea2 ret:0x0
 11238 ms  0x6ea2 PR_Connect()
 11238 ms  0x6ea2 fd:0x7fc927b7a460
 11240 ms  0x6ea2 PK11_Encrypt()
 11240 ms  0x6ea2 symkey:0x7fc927962a80
 11248 ms  0x6ea2 PR_Close()
 11248 ms  0x6ea2 fd:0x7fc92f3d01c0
 11249 ms     | 0x6ea2 PK11_Encrypt()
 11249 ms     | 0x6ea2 symkey:0x7fc91552ce00
           /* TID 0x6eaa */
 11249 ms  0x6eaa PR_Close()
 11249 ms  0x6eaa fd:0x7fc927910f40
           /* TID 0x6ea2 */
 11258 ms  0x6ea2 PR_Close()
 11258 ms  0x6ea2 fd:0x7fc930d54d00
 11258 ms     | 0x6ea2 PK11_Encrypt()
 11258 ms     | 0x6ea2 symkey:0x7fc926466180
           /* TID 0x6eaa */
 11275 ms  0x6eaa PR_Close()
 11275 ms  0x6eaa fd:0x7fc927910c70
 11275 ms  0x6eaa PR_Close()
 11275 ms  0x6eaa fd:0x7fc927b7a970
           /* TID 0x6eff */
 11275 ms  0x6eff _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11275 ms  0x6eff ret:0x0
           /* TID 0x6f42 */
 11275 ms  0x6f42 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11275 ms  0x6f42 ret:0x0
           /* TID 0x6ea2 */
 11275 ms  0x6ea2 PR_Close()
 11275 ms  0x6ea2 fd:0x7fc92c3203d0
 11275 ms     | 0x6ea2 PK11_Encrypt()
 11275 ms     | 0x6ea2 symkey:0x7fc9262e7900
 11276 ms  0x6ea2 PR_Close()
 11276 ms  0x6ea2 fd:0x7fc92c406a00
 11276 ms     | 0x6ea2 PK11_Encrypt()
 11276 ms     | 0x6ea2 symkey:0x7fc91552db00
 11276 ms  0x6ea2 SSL_AuthCertificateComplete()
 11276 ms  0x6ea2 fd:0x7fc92f4bc1f0
 11276 ms  0x6ea2 err:0x0
 11276 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11276 ms     | 0x6ea2 privk:0x7fc93058d020::7fc93058d020  e0 f2 3c 2f                                      ..</
 11276 ms     | 0x6ea2 privk:0x7fc93058d020::7fc93058d020  e5 e5 e5 e5                                      ....
 11276 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11276 ms     | 0x6ea2 privk:0x7fc93058b020::7fc93058b020  c0 54 bc 2c                                      .T.,
 11276 ms     | 0x6ea2 privk:0x7fc93058b020::7fc93058b020  e5 e5 e5 e5                                      ....
 11276 ms  0x6ea2 SSL_AuthCertificateComplete()
 11276 ms  0x6ea2 fd:0x7fc92c406910
 11276 ms  0x6ea2 err:0x0
 11282 ms  0x6ea2 PK11_DeriveWithFlags()
 11282 ms  0x6ea2 basekey:0x7fc91552d600
 11282 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11282 ms  0x6ea2 ret:0x7fc91552d480
 11282 ms  0x6ea2 PK11_Derive()
 11282 ms  0x6ea2 basekey:0x7fc91552d480
 11282 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11282 ms  0x6ea2 ret:0x7fc9262df400
 11283 ms  0x6ea2 SSL_AuthCertificateComplete()
 11283 ms  0x6ea2 fd:0x7fc93006e400
 11283 ms  0x6ea2 err:0x0
 11283 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 11283 ms  0x6ea2 cx:0x7fc934461fc8
 11283 ms     | 0x6ea2 EC_ValidatePublicKey()
 11283 ms     | 0x6ea2 ret:0x0
 11283 ms  0x6ea2 ret:0x7fc91553c820::7fc91553c820  a0 7b 92 27                                      .{.'
 11283 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 11283 ms  0x6ea2 cx:0x7fc934461fc8
 11284 ms     | 0x6ea2 EC_ValidatePublicKey()
 11285 ms     | 0x6ea2 ret:0x0
 11285 ms  0x6ea2 ret:0x7fc91554d820::7fc91554d820  10 0f 9d 27                                      ...'
 11286 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11286 ms  0x6ea2 privk:0x7fc92ff0c020::7fc92ff0c020  60 9f ab 2c                                      `..,
 11286 ms  0x6ea2 privk:0x7fc92ff0c020::7fc92ff0c020  e5 e5 e5 e5                                      ....
 11286 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11286 ms  0x6ea2 privk:0x7fc93058a020::7fc93058a020  30 ed bf 2c                                      0..,
 11286 ms  0x6ea2 privk:0x7fc93058a020::7fc93058a020  e5 e5 e5 e5                                      ....
 11287 ms  0x6ea2 PK11_DeriveWithFlags()
 11287 ms  0x6ea2 basekey:0x7fc91552d600
 11287 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11287 ms  0x6ea2 ret:0x7fc91552df80
 11287 ms  0x6ea2 PK11_Derive()
 11287 ms  0x6ea2 basekey:0x7fc91552df80
 11287 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11287 ms  0x6ea2 ret:0x7fc9262e8e00
 11288 ms  0x6ea2 SSL_AuthCertificateComplete()
 11288 ms  0x6ea2 fd:0x7fc92c918250
 11288 ms  0x6ea2 err:0x0
 11290 ms  0x6ea2 PK11_DeriveWithFlags()
 11290 ms  0x6ea2 basekey:0x7fc91552d600
 11290 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11290 ms  0x6ea2 ret:0x7fc91552d400
 11290 ms  0x6ea2 PK11_Derive()
 11290 ms  0x6ea2 basekey:0x7fc91552d400
 11290 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11290 ms  0x6ea2 ret:0x7fc9154ff700
 11290 ms  0x6ea2 SSL_AuthCertificateComplete()
 11290 ms  0x6ea2 fd:0x7fc92c648670
 11290 ms  0x6ea2 err:0x0
 11296 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 11296 ms  0x6ea2 cx:0x7fc9344617a8
 11296 ms     | 0x6ea2 EC_ValidatePublicKey()
 11296 ms     | 0x6ea2 ret:0x0
 11296 ms  0x6ea2 ret:0x7fc915553020::7fc915553020  90 47 b2 27                                      .G.'
 11296 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 11296 ms  0x6ea2 cx:0x7fc9344617a8
 11297 ms     | 0x6ea2 EC_ValidatePublicKey()
 11298 ms     | 0x6ea2 ret:0x0
 11299 ms  0x6ea2 ret:0x7fc915555020::7fc915555020  a0 56 e3 27                                      .V.'
 11299 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 11299 ms  0x6ea2 cx:0x7fc934462168
 11299 ms     | 0x6ea2 EC_ValidatePublicKey()
 11299 ms     | 0x6ea2 ret:0x0
 11299 ms  0x6ea2 ret:0x7fc915558820::7fc915558820  30 58 e3 27                                      0X.'
 11299 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 11299 ms  0x6ea2 cx:0x7fc934462168
 11300 ms     | 0x6ea2 EC_ValidatePublicKey()
 11302 ms     | 0x6ea2 ret:0x0
 11302 ms  0x6ea2 ret:0x7fc926424820::7fc926424820  40 5c e3 27                                      @\.'
 11303 ms  0x6ea2 PK11_DeriveWithFlags()
 11303 ms  0x6ea2 basekey:0x7fc91552d600
 11303 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11303 ms  0x6ea2 ret:0x7fc9154fee00
 11303 ms  0x6ea2 PK11_Derive()
 11303 ms  0x6ea2 basekey:0x7fc9154fee00
 11303 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11303 ms  0x6ea2 ret:0x7fc927ee8c00
           /* TID 0x6eaa */
 11305 ms  0x6eaa PR_Close()
 11305 ms  0x6eaa fd:0x7fc9282fe9a0
 11313 ms  0x6eaa PR_Close()
 11313 ms  0x6eaa fd:0x7fc927910f10
           /* TID 0x6ea2 */
 11313 ms  0x6ea2 SSL_AuthCertificateComplete()
 11313 ms  0x6ea2 fd:0x7fc92c96f1c0
 11313 ms  0x6ea2 err:0x0
 11314 ms  0x6ea2 PK11_DeriveWithFlags()
 11314 ms  0x6ea2 basekey:0x7fc91552d600
 11314 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11314 ms  0x6ea2 ret:0x7fc927ee7d80
 11314 ms  0x6ea2 PK11_Derive()
 11314 ms  0x6ea2 basekey:0x7fc927ee7d80
 11314 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11314 ms  0x6ea2 ret:0x7fc926466980
           /* TID 0x6eaa */
 11316 ms  0x6eaa PR_Close()
 11316 ms  0x6eaa fd:0x7fc9282fea30
           /* TID 0x6ea2 */
 11317 ms  0x6ea2 SSL_AuthCertificateComplete()
 11317 ms  0x6ea2 fd:0x7fc92f4bce80
 11317 ms  0x6ea2 err:0x0
 11318 ms  0x6ea2 PK11_DeriveWithFlags()
 11318 ms  0x6ea2 basekey:0x7fc91552d600
 11318 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11318 ms  0x6ea2 ret:0x7fc927ee8c80
 11318 ms  0x6ea2 PK11_Derive()
 11318 ms  0x6ea2 basekey:0x7fc927ee8c80
 11318 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11318 ms  0x6ea2 ret:0x7fc927ee8d00
           /* TID 0x6eaa */
 11320 ms  0x6eaa PR_Close()
 11320 ms  0x6eaa fd:0x7fc9282feac0
 11321 ms  0x6eaa PR_Close()
 11321 ms  0x6eaa fd:0x7fc9282feac0
           /* TID 0x6ea2 */
 11321 ms  0x6ea2 SSL_AuthCertificateComplete()
 11321 ms  0x6ea2 fd:0x7fc92c96fa00
 11321 ms  0x6ea2 err:0x0
           /* TID 0x6eaa */
 11323 ms  0x6eaa PR_Close()
 11323 ms  0x6eaa fd:0x7fc9282fea90
           /* TID 0x6ea2 */
 11334 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 11334 ms  0x6ea2 cx:0x7fc934462308
 11334 ms     | 0x6ea2 EC_ValidatePublicKey()
 11334 ms     | 0x6ea2 ret:0x0
 11334 ms  0x6ea2 ret:0x7fc92643d020::7fc92643d020  b0 e0 40 2c                                      ..@,
 11335 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 11335 ms  0x6ea2 cx:0x7fc934462308
 11335 ms     | 0x6ea2 EC_ValidatePublicKey()
           /* TID 0x6eaa */
 11337 ms  0x6eaa PR_Close()
 11337 ms  0x6eaa fd:0x7fc926468940
           /* TID 0x6f41 */
 11337 ms  0x6f41 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x6ea2 */
 11337 ms     | 0x6ea2 ret:0x0
           /* TID 0x6f41 */
 11337 ms  0x6f41 ret:0x0
           /* TID 0x6ea2 */
 11338 ms  0x6ea2 ret:0x7fc91554d020::7fc91554d020  10 45 b2 27                                      .E.'
 11338 ms  0x6ea2 SSL_AuthCertificateComplete()
 11338 ms  0x6ea2 fd:0x7fc92c4de760
 11338 ms  0x6ea2 err:0x0
 11338 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11338 ms     | 0x6ea2 privk:0x7fc9304df020::7fc9304df020  60 65 9c 2c                                      `e.,
 11338 ms     | 0x6ea2 privk:0x7fc9304df020::7fc9304df020  e5 e5 e5 e5                                      ....
 11339 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 11339 ms     | 0x6ea2 privk:0x7fc92f43f820::7fc92f43f820  40 72 94 2c                                      @r.,
 11339 ms     | 0x6ea2 privk:0x7fc92f43f820::7fc92f43f820  e5 e5 e5 e5                                      ....
           /* TID 0x6eaa */
 11344 ms  0x6eaa PR_Close()
 11344 ms  0x6eaa fd:0x7fc927910940
 11345 ms  0x6eaa PR_Close()
 11345 ms  0x6eaa fd:0x7fc927910940
 11406 ms  0x6eaa PR_Close()
 11406 ms  0x6eaa fd:0x7fc927910940
 11409 ms  0x6eaa PR_Close()
 11409 ms  0x6eaa fd:0x7fc927910940
 11415 ms  0x6eaa PR_Close()
 11415 ms  0x6eaa fd:0x7fc927ed2970
 11418 ms  0x6eaa PR_Close()
 11418 ms  0x6eaa fd:0x7fc927ed2970
 11420 ms  0x6eaa PR_Close()
 11420 ms  0x6eaa fd:0x7fc927ed2970
 11422 ms  0x6eaa PR_Close()
 11422 ms  0x6eaa fd:0x7fc927ed2970
 11424 ms  0x6eaa PR_Close()
 11424 ms  0x6eaa fd:0x7fc927ed2970
 11426 ms  0x6eaa PR_Close()
 11426 ms  0x6eaa fd:0x7fc927ed2970
 11429 ms  0x6eaa PR_Close()
 11429 ms  0x6eaa fd:0x7fc927ed2970
 11435 ms  0x6eaa PR_Close()
 11435 ms  0x6eaa fd:0x7fc927ed2970
           /* TID 0x6ea2 */
 11467 ms  0x6ea2 SSL_ImportFD()
 11467 ms  0x6ea2 ret:0x7fc92967ef70
 11467 ms  0x6ea2 SSL_AuthCertificateHook()
 11467 ms  0x6ea2 fd:0x7fc92967ef70
 11467 ms  0x6ea2 ret:0x0
 11467 ms  0x6ea2 PR_Connect()
 11467 ms  0x6ea2 fd:0x7fc92967ef70
           /* TID 0x6eaa */
 11469 ms  0x6eaa PR_Close()
 11469 ms  0x6eaa fd:0x7fc926468700
 11470 ms  0x6eaa PR_Close()
 11470 ms  0x6eaa fd:0x7fc926468700
 11471 ms  0x6eaa PR_Close()
 11471 ms  0x6eaa fd:0x7fc926468700
 11471 ms  0x6eaa PR_Close()
 11471 ms  0x6eaa fd:0x7fc926468700
 11472 ms  0x6eaa PR_Close()
 11472 ms  0x6eaa fd:0x7fc926468700
 11472 ms  0x6eaa PR_Close()
 11472 ms  0x6eaa fd:0x7fc926468700
 11472 ms  0x6eaa PR_Close()
 11472 ms  0x6eaa fd:0x7fc926468700
 11473 ms  0x6eaa PR_Close()
 11473 ms  0x6eaa fd:0x7fc926468700
           /* TID 0x6ea2 */
 11529 ms  0x6ea2 SSL_ImportFD()
 11529 ms  0x6ea2 ret:0x7fc92c320370
 11529 ms  0x6ea2 SSL_AuthCertificateHook()
 11529 ms  0x6ea2 fd:0x7fc92c320370
 11529 ms  0x6ea2 ret:0x0
 11529 ms  0x6ea2 PR_Connect()
 11529 ms  0x6ea2 fd:0x7fc92c320370
 11570 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 11570 ms  0x6ea2 cx:0x7fc92c9060a8
 11571 ms     | 0x6ea2 EC_ValidatePublicKey()
 11571 ms     | 0x6ea2 ret:0x0
 11571 ms  0x6ea2 ret:0x7fc915557820::7fc915557820  f0 b1 7f 2c                                      ...,
 11571 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 11571 ms  0x6ea2 cx:0x7fc92c9060a8
 11573 ms     | 0x6ea2 EC_ValidatePublicKey()
 11575 ms     | 0x6ea2 ret:0x0
 11575 ms  0x6ea2 ret:0x7fc926441820::7fc926441820  f0 46 92 2c                                      .F.,
 11619 ms  0x6ea2 PK11_DeriveWithFlags()
 11619 ms  0x6ea2 basekey:0x7fc91552d600
 11619 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11619 ms  0x6ea2 ret:0x7fc926466e00
 11619 ms  0x6ea2 PK11_Derive()
 11619 ms  0x6ea2 basekey:0x7fc926466e00
 11619 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11619 ms  0x6ea2 ret:0x7fc9344c2900
 11620 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11620 ms  0x6ea2 privk:0x7fc92cb80020::7fc92cb80020  c0 e9 96 2c                                      ...,
 11621 ms  0x6ea2 privk:0x7fc92cb80020::7fc92cb80020  e5 e5 e5 e5                                      ....
 11621 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11621 ms  0x6ea2 privk:0x7fc92cb78020::7fc92cb78020  b0 ef 3f 2c                                      ..?,
 11621 ms  0x6ea2 privk:0x7fc92cb78020::7fc92cb78020  e5 e5 e5 e5                                      ....
 11622 ms  0x6ea2 SSL_AuthCertificateComplete()
 11622 ms  0x6ea2 fd:0x7fc92676cb20
 11622 ms  0x6ea2 err:0x0
 11623 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11623 ms  0x6ea2 privk:0x7fc92c7bc020::7fc92c7bc020  60 e0 3f 2c                                      `.?,
 11624 ms  0x6ea2 privk:0x7fc92c7bc020::7fc92c7bc020  e5 e5 e5 e5                                      ....
 11624 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11624 ms  0x6ea2 privk:0x7fc92c7ad020::7fc92c7ad020  b0 6a b2 2b                                      .j.+
 11624 ms  0x6ea2 privk:0x7fc92c7ad020::7fc92c7ad020  e5 e5 e5 e5                                      ....
 11637 ms  0x6ea2 PK11_DeriveWithFlags()
 11637 ms  0x6ea2 basekey:0x7fc91552d600
 11637 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11637 ms  0x6ea2 ret:0x7fc933a78b00
 11637 ms  0x6ea2 PK11_Derive()
 11637 ms  0x6ea2 basekey:0x7fc933a78b00
 11637 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11638 ms  0x6ea2 ret:0x7fc933aae900
 11639 ms  0x6ea2 SSL_AuthCertificateComplete()
 11639 ms  0x6ea2 fd:0x7fc92676c9a0
 11639 ms  0x6ea2 err:0x0
 11644 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11644 ms  0x6ea2 privk:0x7fc92cbc2820::7fc92cbc2820  60 35 a4 2c                                      `5.,
 11645 ms  0x6ea2 privk:0x7fc92cbc2820::7fc92cbc2820  e5 e5 e5 e5                                      ....
 11645 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11645 ms  0x6ea2 privk:0x7fc92cb8d020::7fc92cb8d020  20 6e 9c 2c                                       n.,
 11645 ms  0x6ea2 privk:0x7fc92cb8d020::7fc92cb8d020  e5 e5 e5 e5                                      ....
 11649 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11649 ms  0x6ea2 privk:0x7fc92ff13020::7fc92ff13020  90 3c 7a 30                                      .<z0
 11649 ms  0x6ea2 privk:0x7fc92ff13020::7fc92ff13020  e5 e5 e5 e5                                      ....
 11649 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11649 ms  0x6ea2 privk:0x7fc92f442020::7fc92f442020  a0 b1 41 2f                                      ..A/
 11650 ms  0x6ea2 privk:0x7fc92f442020::7fc92f442020  e5 e5 e5 e5                                      ....
 11652 ms  0x6ea2 PK11_DeriveWithFlags()
 11652 ms  0x6ea2 basekey:0x7fc91552d600
 11652 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11652 ms  0x6ea2 ret:0x7fc933a8df80
 11652 ms  0x6ea2 PK11_Derive()
 11652 ms  0x6ea2 basekey:0x7fc933a8df80
 11652 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11652 ms  0x6ea2 ret:0x7fc929681100
 11652 ms  0x6ea2 SSL_AuthCertificateComplete()
 11652 ms  0x6ea2 fd:0x7fc92676cb80
 11652 ms  0x6ea2 err:0x0
 11662 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11662 ms  0x6ea2 privk:0x7fc92ff20020::7fc92ff20020  70 7e a8 33                                      p~.3
 11662 ms  0x6ea2 privk:0x7fc92ff20020::7fc92ff20020  e5 e5 e5 e5                                      ....
 11663 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11663 ms  0x6ea2 privk:0x7fc92ff1c020::7fc92ff1c020  50 8b 7b 30                                      P.{0
 11663 ms  0x6ea2 privk:0x7fc92ff1c020::7fc92ff1c020  e5 e5 e5 e5                                      ....
 11673 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11673 ms  0x6ea2 privk:0x7fc9310ba020::7fc9310ba020  f0 d1 44 34                                      ..D4
 11673 ms  0x6ea2 privk:0x7fc9310ba020::7fc9310ba020  e5 e5 e5 e5                                      ....
 11673 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11673 ms  0x6ea2 privk:0x7fc930592820::7fc930592820  50 f6 a9 33                                      P..3
 11673 ms  0x6ea2 privk:0x7fc930592820::7fc930592820  e5 e5 e5 e5                                      ....
 11696 ms  0x6ea2 PK11_DeriveWithFlags()
 11696 ms  0x6ea2 basekey:0x7fc91552d600
 11696 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11696 ms  0x6ea2 ret:0x7fc929670b00
 11696 ms  0x6ea2 PK11_Derive()
 11696 ms  0x6ea2 basekey:0x7fc929670b00
 11696 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11696 ms  0x6ea2 ret:0x7fc933a78c00
 11696 ms  0x6ea2 SSL_AuthCertificateComplete()
 11696 ms  0x6ea2 fd:0x7fc92b9fea90
 11696 ms  0x6ea2 err:0x0
 11717 ms  0x6ea2 SSL_ImportFD()
 11717 ms  0x6ea2 ret:0x7fc92c4fa1c0
 11717 ms  0x6ea2 SSL_AuthCertificateHook()
 11717 ms  0x6ea2 fd:0x7fc92c4fa1c0
 11717 ms  0x6ea2 ret:0x0
 11717 ms  0x6ea2 PR_Connect()
 11717 ms  0x6ea2 fd:0x7fc92c4fa1c0
 11773 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 11773 ms  0x6ea2 cx:0x7fc934460c48
 11774 ms     | 0x6ea2 EC_ValidatePublicKey()
 11774 ms     | 0x6ea2 ret:0x0
 11774 ms  0x6ea2 ret:0x7fc9282da020::7fc9282da020  60 ef 95 2c                                      `..,
 11774 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 11774 ms  0x6ea2 cx:0x7fc934460c48
 11775 ms     | 0x6ea2 EC_ValidatePublicKey()
 11777 ms     | 0x6ea2 ret:0x0
 11777 ms  0x6ea2 ret:0x7fc92b0b2020::7fc92b0b2020  d0 a8 98 2c                                      ...,
 11779 ms  0x6ea2 SSL_ImportFD()
 11779 ms  0x6ea2 ret:0x7fc92c4fa520
 11779 ms  0x6ea2 SSL_AuthCertificateHook()
 11779 ms  0x6ea2 fd:0x7fc92c4fa520
 11779 ms  0x6ea2 ret:0x0
 11779 ms  0x6ea2 PR_Connect()
 11779 ms  0x6ea2 fd:0x7fc92c4fa520
 11828 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 11828 ms  0x6ea2 cx:0x7fc93078c168
 11829 ms     | 0x6ea2 EC_ValidatePublicKey()
 11829 ms     | 0x6ea2 ret:0x0
 11829 ms  0x6ea2 ret:0x7fc92c7b5020::7fc92c7b5020  d0 4d 9b 2c                                      .M.,
 11829 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 11829 ms  0x6ea2 cx:0x7fc93078c168
 11830 ms     | 0x6ea2 EC_ValidatePublicKey()
 11832 ms     | 0x6ea2 ret:0x0
 11832 ms  0x6ea2 ret:0x7fc92c7bc820::7fc92c7bc820  60 60 9c 2c                                      ``.,
 11911 ms  0x6ea2 PK11_DeriveWithFlags()
 11911 ms  0x6ea2 basekey:0x7fc91552d600
 11911 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11911 ms  0x6ea2 ret:0x7fc933a69680
 11911 ms  0x6ea2 PK11_Derive()
 11911 ms  0x6ea2 basekey:0x7fc933a69680
 11911 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 11911 ms  0x6ea2 ret:0x7fc92870d700
 11912 ms  0x6ea2 SSL_AuthCertificateComplete()
 11912 ms  0x6ea2 fd:0x7fc927b7a460
 11912 ms  0x6ea2 err:0x0
 11947 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11947 ms  0x6ea2 privk:0x7fc91554d820::7fc91554d820  10 0f 9d 27                                      ...'
 11948 ms  0x6ea2 privk:0x7fc91554d820::7fc91554d820  e5 e5 e5 e5                                      ....
 11948 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11948 ms  0x6ea2 privk:0x7fc91553c820::7fc91553c820  a0 7b 92 27                                      .{.'
 11948 ms  0x6ea2 privk:0x7fc91553c820::7fc91553c820  e5 e5 e5 e5                                      ....
 11992 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11992 ms  0x6ea2 privk:0x7fc915555020::7fc915555020  a0 56 e3 27                                      .V.'
 11993 ms  0x6ea2 privk:0x7fc915555020::7fc915555020  e5 e5 e5 e5                                      ....
 11993 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 11993 ms  0x6ea2 privk:0x7fc915553020::7fc915553020  90 47 b2 27                                      .G.'
 11993 ms  0x6ea2 privk:0x7fc915553020::7fc915553020  e5 e5 e5 e5                                      ....
 12006 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 12006 ms  0x6ea2 privk:0x7fc926424820::7fc926424820  40 5c e3 27                                      @\.'
 12006 ms  0x6ea2 privk:0x7fc926424820::7fc926424820  e5 e5 e5 e5                                      ....
 12007 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 12007 ms  0x6ea2 privk:0x7fc915558820::7fc915558820  30 58 e3 27                                      0X.'
 12007 ms  0x6ea2 privk:0x7fc915558820::7fc915558820  e5 e5 e5 e5                                      ....
           /* TID 0x6eaa */
 12011 ms  0x6eaa PR_Close()
 12011 ms  0x6eaa fd:0x7fc92c6486a0
 12024 ms  0x6eaa PR_Close()
 12024 ms  0x6eaa fd:0x7fc92c4fa070
           /* TID 0x6ea2 */
 12025 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12025 ms  0x6ea2 cx:0x7fc92b8110a8
 12025 ms     | 0x6ea2 EC_ValidatePublicKey()
 12025 ms     | 0x6ea2 ret:0x0
 12025 ms  0x6ea2 ret:0x7fc91554c820::7fc91554c820  90 47 b2 27                                      .G.'
 12025 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12025 ms  0x6ea2 cx:0x7fc92b8110a8
 12026 ms     | 0x6ea2 EC_ValidatePublicKey()
 12034 ms     | 0x6ea2 ret:0x0
 12034 ms  0x6ea2 ret:0x7fc915553820::7fc915553820  a0 56 e3 27                                      .V.'
 12051 ms  0x6ea2 SSL_ImportFD()
 12051 ms  0x6ea2 ret:0x7fc92c795d60
 12051 ms  0x6ea2 SSL_AuthCertificateHook()
 12051 ms  0x6ea2 fd:0x7fc92c795d60
 12051 ms  0x6ea2 ret:0x0
 12051 ms  0x6ea2 PR_Connect()
 12051 ms  0x6ea2 fd:0x7fc92c795d60
 12054 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 12054 ms  0x6ea2 privk:0x7fc91554d020::7fc91554d020  10 45 b2 27                                      .E.'
 12054 ms  0x6ea2 privk:0x7fc91554d020::7fc91554d020  e5 e5 e5 e5                                      ....
 12054 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 12054 ms  0x6ea2 privk:0x7fc92643d020::7fc92643d020  b0 e0 40 2c                                      ..@,
 12054 ms  0x6ea2 privk:0x7fc92643d020::7fc92643d020  e5 e5 e5 e5                                      ....
 12060 ms  0x6ea2 SSL_ImportFD()
 12060 ms  0x6ea2 ret:0x7fc92c917910
 12060 ms  0x6ea2 SSL_AuthCertificateHook()
 12060 ms  0x6ea2 fd:0x7fc92c917910
 12060 ms  0x6ea2 ret:0x0
 12060 ms  0x6ea2 PR_Connect()
 12060 ms  0x6ea2 fd:0x7fc92c917910
 12061 ms  0x6ea2 SSL_ImportFD()
 12061 ms  0x6ea2 ret:0x7fc92c9430a0
 12061 ms  0x6ea2 SSL_AuthCertificateHook()
 12061 ms  0x6ea2 fd:0x7fc92c9430a0
 12061 ms  0x6ea2 ret:0x0
 12061 ms  0x6ea2 PR_Connect()
 12061 ms  0x6ea2 fd:0x7fc92c9430a0
 12078 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12078 ms  0x6ea2 cx:0x7fc92b811248
 12078 ms     | 0x6ea2 EC_ValidatePublicKey()
 12078 ms     | 0x6ea2 ret:0x0
 12078 ms  0x6ea2 ret:0x7fc915558820::7fc915558820  b0 e0 40 2c                                      ..@,
 12078 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12078 ms  0x6ea2 cx:0x7fc92b811248
 12079 ms     | 0x6ea2 EC_ValidatePublicKey()
 12080 ms     | 0x6ea2 ret:0x0
 12081 ms  0x6ea2 ret:0x7fc926424820::7fc926424820  e0 cc 4e 2c                                      ..N,
 12089 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12089 ms  0x6ea2 cx:0x7fc92b8120e8
 12089 ms     | 0x6ea2 EC_ValidatePublicKey()
 12089 ms     | 0x6ea2 ret:0x0
 12089 ms  0x6ea2 ret:0x7fc92643f020::7fc92643f020  70 74 94 2c                                      pt.,
 12089 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12089 ms  0x6ea2 cx:0x7fc92b8120e8
 12090 ms     | 0x6ea2 EC_ValidatePublicKey()
 12091 ms     | 0x6ea2 ret:0x0
 12091 ms  0x6ea2 ret:0x7fc92cb76020::7fc92cb76020  80 63 9c 2c                                      .c.,
 12097 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12097 ms  0x6ea2 cx:0x7fc92b812428
 12098 ms     | 0x6ea2 EC_ValidatePublicKey()
 12098 ms     | 0x6ea2 ret:0x0
 12098 ms  0x6ea2 ret:0x7fc92cb7d020::7fc92cb7d020  b0 65 9c 2c                                      .e.,
 12098 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12098 ms  0x6ea2 cx:0x7fc92b812428
 12098 ms     | 0x6ea2 EC_ValidatePublicKey()
 12100 ms     | 0x6ea2 ret:0x0
 12100 ms  0x6ea2 ret:0x7fc92cb86020::7fc92cb86020  90 67 9c 2c                                      .g.,
 12101 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12101 ms  0x6ea2 cx:0x7fc92b8125c8
 12103 ms     | 0x6ea2 EC_ValidatePublicKey()
 12103 ms     | 0x6ea2 ret:0x0
 12103 ms  0x6ea2 ret:0x7fc92cb8c020::7fc92cb8c020  80 68 9c 2c                                      .h.,
 12103 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12103 ms  0x6ea2 cx:0x7fc92b8125c8
 12104 ms     | 0x6ea2 EC_ValidatePublicKey()
 12105 ms     | 0x6ea2 ret:0x0
 12105 ms  0x6ea2 ret:0x7fc92cb93820::7fc92cb93820  00 6b 9c 2c                                      .k.,
           /* TID 0x6eaa */
 12126 ms  0x6eaa PR_Close()
 12126 ms  0x6eaa fd:0x7fc92676ca90
           /* TID 0x6ea2 */
 12141 ms  0x6ea2 PK11_DeriveWithFlags()
 12141 ms  0x6ea2 basekey:0x7fc91552d600
 12141 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12141 ms  0x6ea2 ret:0x7fc92870d600
 12141 ms  0x6ea2 PK11_Derive()
 12141 ms  0x6ea2 basekey:0x7fc92870d600
 12141 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12141 ms  0x6ea2 ret:0x7fc92870d680
 12141 ms  0x6ea2 SSL_AuthCertificateComplete()
 12141 ms  0x6ea2 fd:0x7fc92c320370
 12141 ms  0x6ea2 err:0x0
 12145 ms  0x6ea2 PK11_Derive()
 12145 ms  0x6ea2 basekey:0x7fc91552d600
 12145 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12145 ms  0x6ea2 ret:0x7fc92870d580
 12145 ms  0x6ea2 PK11_PubDeriveWithKDF()
 12145 ms  0x6ea2 seckey:0x7fc92643f020
 12145 ms     | 0x6ea2 EC_ValidatePublicKey()
 12145 ms     | 0x6ea2 ret:0x0
 12145 ms  0x6ea2 ret:0x7fc91552d600
 12146 ms  SECKEY_ECParamsToKeySize()
 12146 ms  0x6ea2 ret:0xff
 12146 ms  0x6ea2 PK11_DeriveWithFlags()
 12146 ms  0x6ea2 basekey:0x7fc92870d580
 12146 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12146 ms  0x6ea2 ret:0x7fc933a8d300
 12146 ms  0x6ea2 PK11_Derive()
 12146 ms  0x6ea2 basekey:0x7fc91552d600
 12146 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12146 ms  0x6ea2 ret:0x7fc92c79ae00
 12146 ms  0x6ea2 PK11_DeriveWithFlags()
 12146 ms  0x6ea2 basekey:0x7fc92c79ae00
 12146 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12146 ms  0x6ea2 ret:0x7fc92870d580
 12146 ms  0x6ea2 PK11_DeriveWithFlags()
 12146 ms  0x6ea2 basekey:0x7fc92c79ae00
 12146 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12146 ms  0x6ea2 ret:0x7fc91552d600
 12146 ms  0x6ea2 PK11_DeriveWithFlags()
 12146 ms  0x6ea2 basekey:0x7fc92c79ae00
 12146 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12146 ms  0x6ea2 ret:0x7fc933a8d300
 12146 ms  0x6ea2 PK11_Derive()
 12146 ms  0x6ea2 basekey:0x7fc933a8d980
 12146 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12146 ms  0x6ea2 ret:0x7fc933a8d900
 12146 ms  0x6ea2 PK11_DeriveWithFlags()
 12146 ms  0x6ea2 basekey:0x7fc91552d600
 12146 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12146 ms  0x6ea2 ret:0x7fc92c79ae00
 12146 ms  0x6ea2 PK11_DeriveWithFlags()
 12146 ms  0x6ea2 basekey:0x7fc91552d600
 12146 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12146 ms  0x6ea2 ret:0x7fc933a8d300
 12148 ms  SECKEY_ECParamsToKeySize()
 12148 ms  0x6ea2 ret:0x100
 12148 ms  SECKEY_ECParamsToBasePointOrderLen()
 12148 ms  0x6ea2 ret:0x100
 12148 ms  SECKEY_ECParamsToBasePointOrderLen()
 12148 ms  0x6ea2 ret:0x100
 12148 ms  0x6ea2 EC_ValidatePublicKey()
 12150 ms  0x6ea2 ret:0x0
 12152 ms  0x6ea2 PK11_DeriveWithFlags()
 12152 ms  0x6ea2 basekey:0x7fc91552d600
 12152 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12152 ms  0x6ea2 ret:0x7fc933a8d300
 12152 ms  0x6ea2 PR_Connect()
 12152 ms  0x6ea2 fd:0x7fc9282fec70
 12155 ms  0x6ea2 PK11_Derive()
 12155 ms  0x6ea2 basekey:0x7fc933a8d300
 12155 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12155 ms  0x6ea2 ret:0x7fc933a8d980
 12155 ms  0x6ea2 PK11_PubDeriveWithKDF()
 12155 ms  0x6ea2 seckey:0x7fc92cb7d020
 12155 ms     | 0x6ea2 EC_ValidatePublicKey()
 12155 ms     | 0x6ea2 ret:0x0
 12156 ms  0x6ea2 ret:0x7fc933a8d300
 12156 ms  SECKEY_ECParamsToKeySize()
 12156 ms  0x6ea2 ret:0xff
 12156 ms  0x6ea2 PK11_DeriveWithFlags()
 12156 ms  0x6ea2 basekey:0x7fc933a8d980
 12156 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12156 ms  0x6ea2 ret:0x7fc9334fd980
 12156 ms  0x6ea2 PK11_Derive()
 12156 ms  0x6ea2 basekey:0x7fc933a8d300
 12156 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12156 ms  0x6ea2 ret:0x7fc929681180
 12156 ms  0x6ea2 PK11_DeriveWithFlags()
 12156 ms  0x6ea2 basekey:0x7fc929681180
 12156 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12156 ms  0x6ea2 ret:0x7fc933a8d980
 12156 ms  0x6ea2 PK11_DeriveWithFlags()
 12156 ms  0x6ea2 basekey:0x7fc929681180
 12156 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12156 ms  0x6ea2 ret:0x7fc933a8d300
 12156 ms  0x6ea2 PK11_DeriveWithFlags()
 12156 ms  0x6ea2 basekey:0x7fc929681180
 12156 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12156 ms  0x6ea2 ret:0x7fc9334fd980
 12156 ms  0x6ea2 PK11_Derive()
 12156 ms  0x6ea2 basekey:0x7fc9334fd900
 12156 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12156 ms  0x6ea2 ret:0x7fc930070e80
 12156 ms  0x6ea2 PK11_DeriveWithFlags()
 12156 ms  0x6ea2 basekey:0x7fc933a8d300
 12156 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12156 ms  0x6ea2 ret:0x7fc929681180
 12156 ms  0x6ea2 PK11_DeriveWithFlags()
 12156 ms  0x6ea2 basekey:0x7fc933a8d300
 12156 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12156 ms  0x6ea2 ret:0x7fc9334fd980
 12157 ms  SECKEY_ECParamsToKeySize()
 12157 ms  0x6ea2 ret:0x100
 12157 ms  SECKEY_ECParamsToBasePointOrderLen()
 12157 ms  0x6ea2 ret:0x100
 12157 ms  SECKEY_ECParamsToBasePointOrderLen()
 12157 ms  0x6ea2 ret:0x100
 12157 ms  0x6ea2 EC_ValidatePublicKey()
 12159 ms  0x6ea2 ret:0x0
 12161 ms  0x6ea2 PK11_DeriveWithFlags()
 12161 ms  0x6ea2 basekey:0x7fc933a8d300
 12161 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12161 ms  0x6ea2 ret:0x7fc9334fd980
 12161 ms  0x6ea2 PK11_Derive()
 12161 ms  0x6ea2 basekey:0x7fc9334fd980
 12161 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12161 ms  0x6ea2 ret:0x7fc9334fd900
 12161 ms  0x6ea2 PK11_PubDeriveWithKDF()
 12161 ms  0x6ea2 seckey:0x7fc92cb8c020
 12161 ms     | 0x6ea2 EC_ValidatePublicKey()
 12161 ms     | 0x6ea2 ret:0x0
 12161 ms  0x6ea2 ret:0x7fc9334fd980
 12161 ms  SECKEY_ECParamsToKeySize()
 12161 ms  0x6ea2 ret:0xff
 12161 ms  0x6ea2 PK11_DeriveWithFlags()
 12161 ms  0x6ea2 basekey:0x7fc9334fd900
 12161 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12162 ms  0x6ea2 ret:0x7fc933aac280
 12162 ms  0x6ea2 PK11_Derive()
 12162 ms  0x6ea2 basekey:0x7fc9334fd980
 12162 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12162 ms  0x6ea2 ret:0x7fc933aac200
 12162 ms  0x6ea2 PK11_DeriveWithFlags()
 12162 ms  0x6ea2 basekey:0x7fc933aac200
 12162 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12162 ms  0x6ea2 ret:0x7fc9334fd900
 12162 ms  0x6ea2 PK11_DeriveWithFlags()
 12162 ms  0x6ea2 basekey:0x7fc933aac200
 12162 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12162 ms  0x6ea2 ret:0x7fc9334fd980
 12162 ms  0x6ea2 PK11_DeriveWithFlags()
 12162 ms  0x6ea2 basekey:0x7fc933aac200
 12162 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12162 ms  0x6ea2 ret:0x7fc933aac280
 12162 ms  0x6ea2 PK11_Derive()
 12162 ms  0x6ea2 basekey:0x7fc929682680
 12162 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12162 ms  0x6ea2 ret:0x7fc929681980
 12162 ms  0x6ea2 PK11_DeriveWithFlags()
 12162 ms  0x6ea2 basekey:0x7fc9334fd980
 12162 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12162 ms  0x6ea2 ret:0x7fc933aac200
 12162 ms  0x6ea2 PK11_DeriveWithFlags()
 12162 ms  0x6ea2 basekey:0x7fc9334fd980
 12162 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12162 ms  0x6ea2 ret:0x7fc933aac280
 12163 ms  SECKEY_ECParamsToKeySize()
 12163 ms  0x6ea2 ret:0x100
 12163 ms  SECKEY_ECParamsToBasePointOrderLen()
 12163 ms  0x6ea2 ret:0x100
 12163 ms  SECKEY_ECParamsToBasePointOrderLen()
 12163 ms  0x6ea2 ret:0x100
 12163 ms  0x6ea2 EC_ValidatePublicKey()
 12164 ms  0x6ea2 ret:0x0
 12166 ms  0x6ea2 PK11_DeriveWithFlags()
 12166 ms  0x6ea2 basekey:0x7fc9334fd980
 12166 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12166 ms  0x6ea2 ret:0x7fc933aac280
 12166 ms  0x6ea2 PR_Connect()
 12166 ms  0x6ea2 fd:0x7fc92c9182b0
 12167 ms  0x6ea2 PR_Connect()
 12167 ms  0x6ea2 fd:0x7fc92c943b80
           /* TID 0x6eaa */
 12232 ms  0x6eaa PR_Close()
 12232 ms  0x6eaa fd:0x7fc9282febe0
           /* TID 0x6ea2 */
 12253 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 12253 ms  0x6ea2 privk:0x7fc926441820::7fc926441820  f0 46 92 2c                                      .F.,
 12254 ms  0x6ea2 privk:0x7fc926441820::7fc926441820  e5 e5 e5 e5                                      ....
 12254 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 12254 ms  0x6ea2 privk:0x7fc915557820::7fc915557820  f0 b1 7f 2c                                      ...,
 12254 ms  0x6ea2 privk:0x7fc915557820::7fc915557820  e5 e5 e5 e5                                      ....
           /* TID 0x6eaa */
 12282 ms  0x6eaa PR_Close()
 12282 ms  0x6eaa fd:0x7fc9282febe0
           /* TID 0x6ea2 */
 12298 ms  0x6ea2 SSL_ImportFD()
 12298 ms  0x6ea2 ret:0x7fc92c943e50
 12298 ms  0x6ea2 SSL_AuthCertificateHook()
 12298 ms  0x6ea2 fd:0x7fc92c943e50
 12298 ms  0x6ea2 ret:0x0
 12298 ms  0x6ea2 PR_Connect()
 12298 ms  0x6ea2 fd:0x7fc92c943e50
 12321 ms  0x6ea2 SSL_ImportFD()
 12321 ms  0x6ea2 ret:0x7fc92c4c9ee0
 12322 ms  0x6ea2 SSL_AuthCertificateHook()
 12322 ms  0x6ea2 fd:0x7fc92c4c9ee0
 12322 ms  0x6ea2 ret:0x0
 12322 ms  0x6ea2 PR_Connect()
 12322 ms  0x6ea2 fd:0x7fc92c4c9ee0
           /* TID 0x6eaa */
 12325 ms  0x6eaa PR_Close()
 12325 ms  0x6eaa fd:0x7fc92676cc10
           /* TID 0x6f40 */
 12334 ms  0x6f40 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12334 ms  0x6f40 ret:0x0
           /* TID 0x6eaa */
 12336 ms  0x6eaa PR_Close()
 12336 ms  0x6eaa fd:0x7fc92676cc10
           /* TID 0x6ea2 */
 12337 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12337 ms  0x6ea2 cx:0x7fc92b812de8
 12338 ms     | 0x6ea2 EC_ValidatePublicKey()
 12338 ms     | 0x6ea2 ret:0x0
 12338 ms  0x6ea2 ret:0x7fc92642f820::7fc92642f820  90 bc 7f 2c                                      ...,
 12338 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12338 ms  0x6ea2 cx:0x7fc92b812de8
 12341 ms     | 0x6ea2 EC_ValidatePublicKey()
 12345 ms     | 0x6ea2 ret:0x0
 12347 ms  0x6ea2 ret:0x7fc92645f020::7fc92645f020  c0 69 9c 2c                                      .i.,
 12348 ms  0x6ea2 SSL_AuthCertificateComplete()
 12348 ms  0x6ea2 fd:0x7fc92c795d60
 12348 ms  0x6ea2 err:0x0
 12348 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12348 ms     | 0x6ea2 basekey:0x7fc933a8d900
 12348 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12348 ms     | 0x6ea2 ret:0x7fc933aac280
 12348 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12348 ms     | 0x6ea2 basekey:0x7fc933a8d900
 12348 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12348 ms     | 0x6ea2 ret:0x7fc929682680
 12348 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12348 ms     | 0x6ea2 basekey:0x7fc933a8d900
 12348 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12348 ms     | 0x6ea2 ret:0x7fc929681600
 12348 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12348 ms     | 0x6ea2 basekey:0x7fc92870d580
 12348 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12348 ms     | 0x6ea2 ret:0x7fc929681500
 12348 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12348 ms     | 0x6ea2 basekey:0x7fc92870d580
 12348 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12348 ms     | 0x6ea2 ret:0x7fc92c3cbf00
 12348 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12348 ms     | 0x6ea2 basekey:0x7fc929682680
 12348 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12348 ms     | 0x6ea2 ret:0x7fc92c3cbf00
 12348 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12348 ms     | 0x6ea2 basekey:0x7fc929682680
 12348 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12348 ms     | 0x6ea2 ret:0x7fc92c3bde80
 12348 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12348 ms     | 0x6ea2 basekey:0x7fc92870d580
 12348 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12348 ms     | 0x6ea2 ret:0x7fc92c79ae00
 12348 ms     | 0x6ea2 PK11_Encrypt()
 12348 ms     | 0x6ea2 symkey:0x7fc929681500
 12348 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12348 ms     | 0x6ea2 basekey:0x7fc933aac280
 12348 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12349 ms     | 0x6ea2 ret:0x7fc92c79ae00
 12349 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12349 ms     | 0x6ea2 basekey:0x7fc933aac280
 12349 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12349 ms     | 0x6ea2 ret:0x7fc92c3bde80
 12349 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12349 ms     | 0x6ea2 basekey:0x7fc933a8d900
 12349 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12349 ms     | 0x6ea2 ret:0x7fc929681500
 12349 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12349 ms     | 0x6ea2 privk:0x7fc92cb76020::7fc92cb76020  80 63 9c 2c                                      .c.,
 12349 ms     | 0x6ea2 privk:0x7fc92cb76020::7fc92cb76020  e5 e5 e5 e5                                      ....
 12349 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12349 ms     | 0x6ea2 privk:0x7fc92643f020::7fc92643f020  70 74 94 2c                                      pt.,
 12353 ms     | 0x6ea2 privk:0x7fc92643f020::7fc92643f020  e5 e5 e5 e5                                      ....
 12354 ms  0x6ea2 PK11_Encrypt()
 12354 ms  0x6ea2 symkey:0x7fc92c79ae00
 12355 ms  0x6ea2 PK11_Encrypt()
 12355 ms  0x6ea2 symkey:0x7fc92c79ae00
           /* TID 0x6f44 */
 12355 ms  0x6f44 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x6eaa */
 12356 ms  0x6eaa PR_Close()
 12356 ms  0x6eaa fd:0x7fc92c406970
           /* TID 0x6f44 */
 12356 ms  0x6f44 ret:0x0
           /* TID 0x6ea2 */
 12356 ms  0x6ea2 SSL_AuthCertificateComplete()
 12356 ms  0x6ea2 fd:0x7fc92c917910
 12356 ms  0x6ea2 err:0x0
 12356 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12356 ms     | 0x6ea2 basekey:0x7fc930070e80
 12356 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12356 ms     | 0x6ea2 ret:0x7fc91552d600
 12356 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12356 ms     | 0x6ea2 basekey:0x7fc930070e80
 12356 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12356 ms     | 0x6ea2 ret:0x7fc92870d580
 12356 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12356 ms     | 0x6ea2 basekey:0x7fc930070e80
 12356 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12356 ms     | 0x6ea2 ret:0x7fc933a8d900
 12356 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12356 ms     | 0x6ea2 basekey:0x7fc933a8d980
 12356 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12356 ms     | 0x6ea2 ret:0x7fc92c3bde80
 12356 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12356 ms     | 0x6ea2 basekey:0x7fc933a8d980
 12356 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12357 ms     | 0x6ea2 ret:0x7fc92870d500
 12357 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12357 ms     | 0x6ea2 basekey:0x7fc92870d580
 12357 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12357 ms     | 0x6ea2 ret:0x7fc92870d500
 12357 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12357 ms     | 0x6ea2 basekey:0x7fc92870d580
 12357 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12357 ms     | 0x6ea2 ret:0x7fc92870de00
 12357 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12357 ms     | 0x6ea2 basekey:0x7fc933a8d980
 12357 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12357 ms     | 0x6ea2 ret:0x7fc929681180
 12357 ms     | 0x6ea2 PK11_Encrypt()
 12357 ms     | 0x6ea2 symkey:0x7fc92c3bde80
 12357 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12357 ms     | 0x6ea2 basekey:0x7fc91552d600
 12357 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12357 ms     | 0x6ea2 ret:0x7fc929681180
 12357 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12357 ms     | 0x6ea2 basekey:0x7fc91552d600
 12357 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12357 ms     | 0x6ea2 ret:0x7fc92870de00
 12357 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12357 ms     | 0x6ea2 basekey:0x7fc930070e80
 12357 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12357 ms     | 0x6ea2 ret:0x7fc92c3bde80
 12357 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12357 ms     | 0x6ea2 privk:0x7fc92cb86020::7fc92cb86020  90 67 9c 2c                                      .g.,
 12357 ms     | 0x6ea2 privk:0x7fc92cb86020::7fc92cb86020  e5 e5 e5 e5                                      ....
 12357 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12357 ms     | 0x6ea2 privk:0x7fc92cb7d020::7fc92cb7d020  b0 65 9c 2c                                      .e.,
 12357 ms     | 0x6ea2 privk:0x7fc92cb7d020::7fc92cb7d020  e5 e5 e5 e5                                      ....
 12358 ms  0x6ea2 PK11_Encrypt()
 12358 ms  0x6ea2 symkey:0x7fc929681180
 12358 ms  0x6ea2 PK11_Encrypt()
 12358 ms  0x6ea2 symkey:0x7fc929681180
           /* TID 0x6eaa */
 12358 ms  0x6eaa PR_Close()
 12358 ms  0x6eaa fd:0x7fc92c4c9eb0
           /* TID 0x6eff */
 12358 ms  0x6eff _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12358 ms  0x6eff ret:0x0
           /* TID 0x6ea2 */
 12359 ms  0x6ea2 SSL_AuthCertificateComplete()
 12359 ms  0x6ea2 fd:0x7fc92c9430a0
 12359 ms  0x6ea2 err:0x0
 12359 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12359 ms     | 0x6ea2 basekey:0x7fc929681980
 12359 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12359 ms     | 0x6ea2 ret:0x7fc933a8d300
 12359 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12359 ms     | 0x6ea2 basekey:0x7fc929681980
 12359 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12359 ms     | 0x6ea2 ret:0x7fc933a8d980
 12359 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12359 ms     | 0x6ea2 basekey:0x7fc929681980
 12359 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12359 ms     | 0x6ea2 ret:0x7fc930070e80
 12359 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12359 ms     | 0x6ea2 basekey:0x7fc9334fd900
 12359 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12359 ms     | 0x6ea2 ret:0x7fc92870de00
 12359 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12359 ms     | 0x6ea2 basekey:0x7fc9334fd900
 12359 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12359 ms     | 0x6ea2 ret:0x7fc92877bc00
 12359 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12359 ms     | 0x6ea2 basekey:0x7fc933a8d980
 12359 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12359 ms     | 0x6ea2 ret:0x7fc92877bc00
 12359 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12359 ms     | 0x6ea2 basekey:0x7fc933a8d980
 12359 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12359 ms     | 0x6ea2 ret:0x7fc92870d280
 12359 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12359 ms     | 0x6ea2 basekey:0x7fc9334fd900
 12359 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12359 ms     | 0x6ea2 ret:0x7fc933aac200
 12359 ms     | 0x6ea2 PK11_Encrypt()
 12359 ms     | 0x6ea2 symkey:0x7fc92870de00
 12359 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12359 ms     | 0x6ea2 basekey:0x7fc933a8d300
 12359 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12359 ms     | 0x6ea2 ret:0x7fc933aac200
 12359 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12359 ms     | 0x6ea2 basekey:0x7fc933a8d300
 12359 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12359 ms     | 0x6ea2 ret:0x7fc92870d280
 12359 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12359 ms     | 0x6ea2 basekey:0x7fc929681980
 12359 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12359 ms     | 0x6ea2 ret:0x7fc92870de00
 12359 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12359 ms     | 0x6ea2 privk:0x7fc92cb93820::7fc92cb93820  00 6b 9c 2c                                      .k.,
 12359 ms     | 0x6ea2 privk:0x7fc92cb93820::7fc92cb93820  e5 e5 e5 e5                                      ....
 12360 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12360 ms     | 0x6ea2 privk:0x7fc92cb8c020::7fc92cb8c020  80 68 9c 2c                                      .h.,
 12360 ms     | 0x6ea2 privk:0x7fc92cb8c020::7fc92cb8c020  e5 e5 e5 e5                                      ....
 12360 ms  0x6ea2 PK11_Encrypt()
 12360 ms  0x6ea2 symkey:0x7fc933aac200
 12360 ms  0x6ea2 PK11_Encrypt()
 12360 ms  0x6ea2 symkey:0x7fc92c79ae00
 12388 ms  0x6ea2 PK11_DeriveWithFlags()
 12388 ms  0x6ea2 basekey:0x7fc929681500
 12388 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12388 ms  0x6ea2 ret:0x7fc9334fd980
 12388 ms  0x6ea2 PK11_DeriveWithFlags()
 12388 ms  0x6ea2 basekey:0x7fc929681500
 12388 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12388 ms  0x6ea2 ret:0x7fc9334fd980
 12388 ms  0x6ea2 PK11_Encrypt()
 12388 ms  0x6ea2 symkey:0x7fc92c79ae00
 12398 ms  0x6ea2 PK11_DeriveWithFlags()
 12398 ms  0x6ea2 basekey:0x7fc9334fd980
 12398 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12398 ms  0x6ea2 ret:0x7fc9334fd900
 12398 ms  0x6ea2 PK11_Derive()
 12398 ms  0x6ea2 basekey:0x7fc9334fd900
 12398 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12398 ms  0x6ea2 ret:0x7fc929681980
 12399 ms  0x6ea2 PK11_DeriveWithFlags()
 12399 ms  0x6ea2 basekey:0x7fc92c3bde80
 12399 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12399 ms  0x6ea2 ret:0x7fc9334fd980
 12399 ms  0x6ea2 PK11_DeriveWithFlags()
 12399 ms  0x6ea2 basekey:0x7fc92c3bde80
 12399 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12399 ms  0x6ea2 ret:0x7fc9334fd980
 12399 ms  0x6ea2 PK11_Encrypt()
 12399 ms  0x6ea2 symkey:0x7fc929681180
 12399 ms  0x6ea2 PK11_DeriveWithFlags()
 12399 ms  0x6ea2 basekey:0x7fc92870de00
 12399 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12399 ms  0x6ea2 ret:0x7fc9334fd980
 12399 ms  0x6ea2 PK11_DeriveWithFlags()
 12399 ms  0x6ea2 basekey:0x7fc92870de00
 12399 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12399 ms  0x6ea2 ret:0x7fc9334fd980
 12399 ms  0x6ea2 PR_Close()
 12399 ms  0x6ea2 fd:0x7fc92c9430a0
 12399 ms     | 0x6ea2 PK11_Encrypt()
 12399 ms     | 0x6ea2 symkey:0x7fc933aac200
 12399 ms  0x6ea2 SSL_AuthCertificateComplete()
 12399 ms  0x6ea2 fd:0x7fc92c4fa520
 12399 ms  0x6ea2 err:0x0
 12400 ms  0x6ea2 PK11_DeriveWithFlags()
 12400 ms  0x6ea2 basekey:0x7fc930070e80
 12400 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12400 ms  0x6ea2 ret:0x7fc933a8d980
 12400 ms  0x6ea2 PK11_Derive()
 12400 ms  0x6ea2 basekey:0x7fc933a8d980
 12400 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12400 ms  0x6ea2 ret:0x7fc933a8d300
 12401 ms  0x6ea2 SSL_AuthCertificateComplete()
 12401 ms  0x6ea2 fd:0x7fc92967ef70
 12401 ms  0x6ea2 err:0x0
 12401 ms  0x6ea2 PK11_Derive()
 12401 ms  0x6ea2 basekey:0x7fc930070e80
 12401 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12401 ms  0x6ea2 ret:0x7fc92870de00
 12401 ms  0x6ea2 PK11_PubDeriveWithKDF()
 12401 ms  0x6ea2 seckey:0x7fc92642f820
 12401 ms     | 0x6ea2 EC_ValidatePublicKey()
 12401 ms     | 0x6ea2 ret:0x0
 12401 ms  0x6ea2 ret:0x7fc930070e80
 12401 ms  SECKEY_ECParamsToKeySize()
 12401 ms  0x6ea2 ret:0xff
 12401 ms  0x6ea2 PK11_DeriveWithFlags()
 12401 ms  0x6ea2 basekey:0x7fc92870de00
 12401 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12401 ms  0x6ea2 ret:0x7fc92877bc00
 12401 ms  0x6ea2 PK11_Derive()
 12401 ms  0x6ea2 basekey:0x7fc930070e80
 12401 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12402 ms  0x6ea2 ret:0x7fc933aac200
 12402 ms  0x6ea2 PK11_DeriveWithFlags()
 12402 ms  0x6ea2 basekey:0x7fc933aac200
 12402 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12402 ms  0x6ea2 ret:0x7fc92870de00
 12402 ms  0x6ea2 PK11_DeriveWithFlags()
 12402 ms  0x6ea2 basekey:0x7fc933aac200
 12402 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12402 ms  0x6ea2 ret:0x7fc930070e80
 12402 ms  0x6ea2 PK11_DeriveWithFlags()
 12402 ms  0x6ea2 basekey:0x7fc933aac200
 12402 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12402 ms  0x6ea2 ret:0x7fc92877bc00
 12402 ms  0x6ea2 PK11_Derive()
 12402 ms  0x6ea2 basekey:0x7fc9334fd980
 12402 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12402 ms  0x6ea2 ret:0x7fc92870d280
 12402 ms  0x6ea2 PK11_DeriveWithFlags()
 12402 ms  0x6ea2 basekey:0x7fc930070e80
 12402 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12402 ms  0x6ea2 ret:0x7fc933aac200
 12402 ms  0x6ea2 PK11_DeriveWithFlags()
 12402 ms  0x6ea2 basekey:0x7fc930070e80
 12402 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12402 ms  0x6ea2 ret:0x7fc92877bc00
 12404 ms  SECKEY_ECParamsToKeySize()
 12404 ms  0x6ea2 ret:0x100
 12405 ms  SECKEY_ECParamsToBasePointOrderLen()
 12405 ms  0x6ea2 ret:0x100
 12405 ms  SECKEY_ECParamsToBasePointOrderLen()
 12405 ms  0x6ea2 ret:0x100
 12405 ms  0x6ea2 EC_ValidatePublicKey()
 12406 ms  0x6ea2 ret:0x0
 12413 ms  0x6ea2 PK11_DeriveWithFlags()
 12413 ms  0x6ea2 basekey:0x7fc930070e80
 12413 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12413 ms  0x6ea2 ret:0x7fc92877bc00
 12413 ms  0x6ea2 SSL_AuthCertificateComplete()
 12413 ms  0x6ea2 fd:0x7fc92c943e50
 12413 ms  0x6ea2 err:0x0
 12413 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12413 ms     | 0x6ea2 basekey:0x7fc92870d280
 12413 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12413 ms     | 0x6ea2 ret:0x7fc92877bc00
 12413 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12413 ms     | 0x6ea2 basekey:0x7fc92870d280
 12413 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12413 ms     | 0x6ea2 ret:0x7fc9334fd980
 12413 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12413 ms     | 0x6ea2 basekey:0x7fc92870d280
 12413 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12413 ms     | 0x6ea2 ret:0x7fc92870d400
 12413 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12413 ms     | 0x6ea2 basekey:0x7fc92870de00
 12413 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12413 ms     | 0x6ea2 ret:0x7fc92870d300
 12413 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12413 ms     | 0x6ea2 basekey:0x7fc92870de00
 12413 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12413 ms     | 0x6ea2 ret:0x7fc9354b5080
 12413 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12413 ms     | 0x6ea2 basekey:0x7fc9334fd980
 12413 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12414 ms     | 0x6ea2 ret:0x7fc9354b5080
 12414 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12414 ms     | 0x6ea2 basekey:0x7fc9334fd980
 12414 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12414 ms     | 0x6ea2 ret:0x7fc92870e700
 12414 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12414 ms     | 0x6ea2 basekey:0x7fc92870de00
 12414 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12414 ms     | 0x6ea2 ret:0x7fc933aac200
 12414 ms     | 0x6ea2 PK11_Encrypt()
 12414 ms     | 0x6ea2 symkey:0x7fc92870d300
 12414 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12414 ms     | 0x6ea2 basekey:0x7fc92877bc00
 12414 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12414 ms     | 0x6ea2 ret:0x7fc933aac200
 12414 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12414 ms     | 0x6ea2 basekey:0x7fc92877bc00
 12414 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12414 ms     | 0x6ea2 ret:0x7fc92870e700
 12414 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12414 ms     | 0x6ea2 basekey:0x7fc92870d280
 12414 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12414 ms     | 0x6ea2 ret:0x7fc92870d300
 12414 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12414 ms     | 0x6ea2 privk:0x7fc92645f020::7fc92645f020  c0 69 9c 2c                                      .i.,
 12414 ms     | 0x6ea2 privk:0x7fc92645f020::7fc92645f020  e5 e5 e5 e5                                      ....
 12414 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12414 ms     | 0x6ea2 privk:0x7fc92642f820::7fc92642f820  90 bc 7f 2c                                      ...,
 12414 ms     | 0x6ea2 privk:0x7fc92642f820::7fc92642f820  e5 e5 e5 e5                                      ....
 12415 ms  0x6ea2 PK11_Encrypt()
 12415 ms  0x6ea2 symkey:0x7fc933aac200
 12415 ms  0x6ea2 PK11_Encrypt()
 12415 ms  0x6ea2 symkey:0x7fc929681180
 12454 ms  0x6ea2 PK11_DeriveWithFlags()
 12454 ms  0x6ea2 basekey:0x7fc92870d300
 12454 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12454 ms  0x6ea2 ret:0x7fc930070e80
 12454 ms  0x6ea2 PK11_DeriveWithFlags()
 12454 ms  0x6ea2 basekey:0x7fc92870d300
 12454 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12454 ms  0x6ea2 ret:0x7fc930070e80
 12454 ms  0x6ea2 PR_Close()
 12454 ms  0x6ea2 fd:0x7fc92c943e50
 12454 ms     | 0x6ea2 PK11_Encrypt()
 12454 ms     | 0x6ea2 symkey:0x7fc933aac200
 12460 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 12460 ms  0x6ea2 privk:0x7fc92c7bc820::7fc92c7bc820  60 60 9c 2c                                      ``.,
 12460 ms  0x6ea2 privk:0x7fc92c7bc820::7fc92c7bc820  e5 e5 e5 e5                                      ....
 12460 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 12460 ms  0x6ea2 privk:0x7fc92c7b5020::7fc92c7b5020  d0 4d 9b 2c                                      .M.,
 12460 ms  0x6ea2 privk:0x7fc92c7b5020::7fc92c7b5020  e5 e5 e5 e5                                      ....
 12479 ms  0x6ea2 PK11_Encrypt()
 12479 ms  0x6ea2 symkey:0x7fc929681180
 12488 ms  0x6ea2 PK11_Encrypt()
 12488 ms  0x6ea2 symkey:0x7fc92c79ae00
 12497 ms  0x6ea2 PK11_Encrypt()
 12497 ms  0x6ea2 symkey:0x7fc929681180
           /* TID 0x6eaa */
 12499 ms  0x6eaa PR_Close()
 12499 ms  0x6eaa fd:0x7fc92c4de790
 12507 ms  0x6eaa PR_Close()
 12507 ms  0x6eaa fd:0x7fc92676cc10
           /* TID 0x6ea2 */
 12512 ms  0x6ea2 SSL_ImportFD()
 12512 ms  0x6ea2 ret:0x7fc92c943190
 12512 ms  0x6ea2 SSL_AuthCertificateHook()
 12512 ms  0x6ea2 fd:0x7fc92c943190
 12512 ms  0x6ea2 ret:0x0
 12514 ms  0x6ea2 PR_Connect()
 12514 ms  0x6ea2 fd:0x7fc92c943190
 12539 ms  0x6ea2 SSL_ImportFD()
 12539 ms  0x6ea2 ret:0x7fc92caaba60
 12539 ms  0x6ea2 SSL_AuthCertificateHook()
 12539 ms  0x6ea2 fd:0x7fc92caaba60
 12539 ms  0x6ea2 ret:0x0
 12539 ms  0x6ea2 PR_Connect()
 12539 ms  0x6ea2 fd:0x7fc92caaba60
 12551 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12551 ms  0x6ea2 cx:0x7fc92b8132c8
 12552 ms     | 0x6ea2 EC_ValidatePublicKey()
 12552 ms     | 0x6ea2 ret:0x0
 12552 ms  0x6ea2 ret:0x7fc92645f020::7fc92645f020  80 bd 7f 2c                                      ...,
 12552 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12552 ms  0x6ea2 cx:0x7fc92b8132c8
 12552 ms     | 0x6ea2 EC_ValidatePublicKey()
 12554 ms     | 0x6ea2 ret:0x0
 12554 ms  0x6ea2 ret:0x7fc92c7bc020::7fc92c7bc020  70 4e 9b 2c                                      pN.,
 12558 ms  0x6ea2 SSL_ImportFD()
 12559 ms  0x6ea2 ret:0x7fc92cb04d90
 12559 ms  0x6ea2 SSL_AuthCertificateHook()
 12559 ms  0x6ea2 fd:0x7fc92cb04d90
 12559 ms  0x6ea2 ret:0x0
 12559 ms  0x6ea2 PK11_Encrypt()
 12559 ms  0x6ea2 symkey:0x7fc92c79ae00
 12560 ms  0x6ea2 PR_Connect()
 12560 ms  0x6ea2 fd:0x7fc92cb04d90
 12573 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12573 ms  0x6ea2 cx:0x7fc92b812f88
 12574 ms     | 0x6ea2 EC_ValidatePublicKey()
 12574 ms     | 0x6ea2 ret:0x0
 12574 ms  0x6ea2 ret:0x7fc92cb89820::7fc92cb89820  50 66 9c 2c                                      Pf.,
 12574 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12574 ms  0x6ea2 cx:0x7fc92b812f88
 12574 ms     | 0x6ea2 EC_ValidatePublicKey()
 12576 ms     | 0x6ea2 ret:0x0
 12576 ms  0x6ea2 ret:0x7fc92cb8e820::7fc92cb8e820  d0 68 9c 2c                                      .h.,
 12587 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12587 ms  0x6ea2 cx:0x7fc92b813468
 12587 ms     | 0x6ea2 EC_ValidatePublicKey()
 12587 ms     | 0x6ea2 ret:0x0
 12587 ms  0x6ea2 ret:0x7fc92cbbf820::7fc92cbbf820  20 69 9c 2c                                       i.,
 12587 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12587 ms  0x6ea2 cx:0x7fc92b813468
 12588 ms     | 0x6ea2 EC_ValidatePublicKey()
 12589 ms     | 0x6ea2 ret:0x0
 12589 ms  0x6ea2 ret:0x7fc92cbd5020::7fc92cbd5020  50 6b 9c 2c                                      Pk.,
 12593 ms  0x6ea2 SSL_ImportFD()
 12593 ms  0x6ea2 ret:0x7fc92cb23220
 12593 ms  0x6ea2 SSL_AuthCertificateHook()
 12593 ms  0x6ea2 fd:0x7fc92cb23220
 12593 ms  0x6ea2 ret:0x0
 12593 ms  0x6ea2 PR_Connect()
 12593 ms  0x6ea2 fd:0x7fc92cb23220
 12597 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12597 ms  0x6ea2 cx:0x7fc92b813608
 12598 ms     | 0x6ea2 EC_ValidatePublicKey()
 12598 ms     | 0x6ea2 ret:0x0
 12598 ms  0x6ea2 ret:0x7fc92cbdc020::7fc92cbdc020  40 fc 9c 2c                                      @..,
 12598 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12598 ms  0x6ea2 cx:0x7fc92b813608
 12599 ms     | 0x6ea2 EC_ValidatePublicKey()
 12601 ms     | 0x6ea2 ret:0x0
 12601 ms  0x6ea2 ret:0x7fc92cbde020::7fc92cbde020  20 6e 9c 2c                                       n.,
           /* TID 0x6eaa */
 12605 ms  0x6eaa PR_Close()
 12605 ms  0x6eaa fd:0x7fc92c918310
           /* TID 0x6ea2 */
 12605 ms  0x6ea2 PK11_Encrypt()
 12605 ms  0x6ea2 symkey:0x7fc92c79ae00
 12609 ms  0x6ea2 PK11_Derive()
 12609 ms  0x6ea2 basekey:0x7fc92870d400
 12609 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12609 ms  0x6ea2 ret:0x7fc9334fd980
 12609 ms  0x6ea2 PK11_PubDeriveWithKDF()
 12609 ms  0x6ea2 seckey:0x7fc92645f020
 12609 ms     | 0x6ea2 EC_ValidatePublicKey()
 12609 ms     | 0x6ea2 ret:0x0
 12610 ms  0x6ea2 ret:0x7fc92870d400
 12610 ms  SECKEY_ECParamsToKeySize()
 12610 ms  0x6ea2 ret:0xff
 12610 ms  0x6ea2 PK11_DeriveWithFlags()
 12610 ms  0x6ea2 basekey:0x7fc9334fd980
 12610 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12610 ms  0x6ea2 ret:0x7fc92877bc00
 12610 ms  0x6ea2 PK11_Derive()
 12610 ms  0x6ea2 basekey:0x7fc92870d400
 12610 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12610 ms  0x6ea2 ret:0x7fc92870d300
 12610 ms  0x6ea2 PK11_DeriveWithFlags()
 12610 ms  0x6ea2 basekey:0x7fc92870d300
 12610 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12610 ms  0x6ea2 ret:0x7fc9334fd980
 12610 ms  0x6ea2 PK11_DeriveWithFlags()
 12610 ms  0x6ea2 basekey:0x7fc92870d300
 12610 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12610 ms  0x6ea2 ret:0x7fc92870d400
 12610 ms  0x6ea2 PK11_DeriveWithFlags()
 12610 ms  0x6ea2 basekey:0x7fc92870d300
 12610 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12610 ms  0x6ea2 ret:0x7fc92877bc00
 12610 ms  0x6ea2 PK11_Derive()
 12610 ms  0x6ea2 basekey:0x7fc9354b5080
 12610 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12610 ms  0x6ea2 ret:0x7fc933aac200
 12610 ms  0x6ea2 PK11_DeriveWithFlags()
 12610 ms  0x6ea2 basekey:0x7fc92870d400
 12610 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12610 ms  0x6ea2 ret:0x7fc92870d300
 12610 ms  0x6ea2 PK11_DeriveWithFlags()
 12610 ms  0x6ea2 basekey:0x7fc92870d400
 12610 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12610 ms  0x6ea2 ret:0x7fc92877bc00
 12611 ms  0x6ea2 PK11_DeriveWithFlags()
 12611 ms  0x6ea2 basekey:0x7fc92870d400
 12611 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12611 ms  0x6ea2 ret:0x7fc92877bc00
 12617 ms  0x6ea2 SSL_ImportFD()
 12617 ms  0x6ea2 ret:0x7fc92f3b25e0
 12617 ms  0x6ea2 SSL_AuthCertificateHook()
 12617 ms  0x6ea2 fd:0x7fc92f3b25e0
 12617 ms  0x6ea2 ret:0x0
 12618 ms  0x6ea2 PR_Connect()
 12618 ms  0x6ea2 fd:0x7fc92f3b25e0
 12618 ms  0x6ea2 SSL_ImportFD()
 12618 ms  0x6ea2 ret:0x7fc92f3b2460
 12618 ms  0x6ea2 SSL_AuthCertificateHook()
 12618 ms  0x6ea2 fd:0x7fc92f3b2460
 12618 ms  0x6ea2 ret:0x0
 12618 ms  0x6ea2 PR_Connect()
 12618 ms  0x6ea2 fd:0x7fc92f3b2460
 12628 ms  0x6ea2 PK11_Encrypt()
 12628 ms  0x6ea2 symkey:0x7fc927962a80
 12628 ms  0x6ea2 SSL_ImportFD()
 12628 ms  0x6ea2 ret:0x7fc92f3dba00
 12628 ms  0x6ea2 SSL_AuthCertificateHook()
 12628 ms  0x6ea2 fd:0x7fc92f3dba00
 12628 ms  0x6ea2 ret:0x0
 12628 ms  0x6ea2 PR_Connect()
 12628 ms  0x6ea2 fd:0x7fc92f3dba00
 12630 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12630 ms  0x6ea2 cx:0x7fc92b813948
 12631 ms     | 0x6ea2 EC_ValidatePublicKey()
 12631 ms     | 0x6ea2 ret:0x0
 12631 ms  0x6ea2 ret:0x7fc92cbe7820::7fc92cbe7820  c0 c4 ac 2c                                      ...,
 12631 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12631 ms  0x6ea2 cx:0x7fc92b813948
 12632 ms     | 0x6ea2 EC_ValidatePublicKey()
 12633 ms     | 0x6ea2 ret:0x0
 12633 ms  0x6ea2 ret:0x7fc92cbe9820::7fc92cbe9820  60 05 b2 2c                                      `..,
 12645 ms  0x6ea2 PK11_Derive()
 12645 ms  0x6ea2 basekey:0x7fc92877bc00
 12645 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12645 ms  0x6ea2 ret:0x7fc9354b5080
 12645 ms  0x6ea2 PK11_PubDeriveWithKDF()
 12645 ms  0x6ea2 seckey:0x7fc92cbbf820
 12645 ms     | 0x6ea2 EC_ValidatePublicKey()
 12645 ms     | 0x6ea2 ret:0x0
 12645 ms  0x6ea2 ret:0x7fc92877bc00
 12645 ms  SECKEY_ECParamsToKeySize()
 12645 ms  0x6ea2 ret:0xff
 12645 ms  0x6ea2 PK11_DeriveWithFlags()
 12645 ms  0x6ea2 basekey:0x7fc9354b5080
 12645 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12645 ms  0x6ea2 ret:0x7fc930070e80
 12645 ms  0x6ea2 PK11_Derive()
 12645 ms  0x6ea2 basekey:0x7fc92877bc00
 12645 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12645 ms  0x6ea2 ret:0x7fc92870de00
 12645 ms  0x6ea2 PK11_DeriveWithFlags()
 12645 ms  0x6ea2 basekey:0x7fc92870de00
 12645 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12645 ms  0x6ea2 ret:0x7fc9354b5080
 12646 ms  0x6ea2 PK11_DeriveWithFlags()
 12646 ms  0x6ea2 basekey:0x7fc92870de00
 12646 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12646 ms  0x6ea2 ret:0x7fc92877bc00
 12646 ms  0x6ea2 PK11_DeriveWithFlags()
 12646 ms  0x6ea2 basekey:0x7fc92870de00
 12646 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12646 ms  0x6ea2 ret:0x7fc930070e80
 12646 ms  0x6ea2 PK11_Derive()
 12646 ms  0x6ea2 basekey:0x7fc92870d280
 12646 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12646 ms  0x6ea2 ret:0x7fc92870e700
 12646 ms  0x6ea2 PK11_DeriveWithFlags()
 12646 ms  0x6ea2 basekey:0x7fc92877bc00
 12646 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12646 ms  0x6ea2 ret:0x7fc92870de00
 12646 ms  0x6ea2 PK11_DeriveWithFlags()
 12646 ms  0x6ea2 basekey:0x7fc92877bc00
 12646 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12646 ms  0x6ea2 ret:0x7fc930070e80
 12650 ms  0x6ea2 PK11_DeriveWithFlags()
 12650 ms  0x6ea2 basekey:0x7fc92877bc00
 12650 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12650 ms  0x6ea2 ret:0x7fc930070e80
 12650 ms  0x6ea2 PK11_Encrypt()
 12650 ms  0x6ea2 symkey:0x7fc92c79ae00
 12651 ms  0x6ea2 PK11_Encrypt()
 12651 ms  0x6ea2 symkey:0x7fc92c79ae00
 12651 ms  0x6ea2 SSL_ImportFD()
 12651 ms  0x6ea2 ret:0x7fc92f4bc280
 12651 ms  0x6ea2 SSL_AuthCertificateHook()
 12651 ms  0x6ea2 fd:0x7fc92f4bc280
 12651 ms  0x6ea2 ret:0x0
 12651 ms  0x6ea2 PR_Connect()
 12651 ms  0x6ea2 fd:0x7fc92f4bc280
 12654 ms  0x6ea2 PK11_Derive()
 12654 ms  0x6ea2 basekey:0x7fc930070e80
 12654 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12654 ms  0x6ea2 ret:0x7fc92870d280
 12654 ms  0x6ea2 PK11_PubDeriveWithKDF()
 12654 ms  0x6ea2 seckey:0x7fc92cbdc020
 12654 ms     | 0x6ea2 EC_ValidatePublicKey()
 12654 ms     | 0x6ea2 ret:0x0
 12655 ms  0x6ea2 ret:0x7fc930070e80
 12655 ms  SECKEY_ECParamsToKeySize()
 12655 ms  0x6ea2 ret:0xff
 12655 ms  0x6ea2 PK11_DeriveWithFlags()
 12655 ms  0x6ea2 basekey:0x7fc92870d280
 12655 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12655 ms  0x6ea2 ret:0x7fc92877c100
 12655 ms  0x6ea2 PK11_Derive()
 12655 ms  0x6ea2 basekey:0x7fc930070e80
 12655 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12655 ms  0x6ea2 ret:0x7fc9262e8d00
 12655 ms  0x6ea2 PK11_DeriveWithFlags()
 12655 ms  0x6ea2 basekey:0x7fc9262e8d00
 12655 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12655 ms  0x6ea2 ret:0x7fc92870d280
 12655 ms  0x6ea2 PK11_DeriveWithFlags()
 12655 ms  0x6ea2 basekey:0x7fc9262e8d00
 12655 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12655 ms  0x6ea2 ret:0x7fc930070e80
 12655 ms  0x6ea2 PK11_DeriveWithFlags()
 12655 ms  0x6ea2 basekey:0x7fc9262e8d00
 12655 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12655 ms  0x6ea2 ret:0x7fc92877c100
 12655 ms  0x6ea2 PK11_Derive()
 12655 ms  0x6ea2 basekey:0x7fc926466f00
 12655 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12655 ms  0x6ea2 ret:0x7fc927ee8d80
 12656 ms  0x6ea2 PK11_DeriveWithFlags()
 12656 ms  0x6ea2 basekey:0x7fc930070e80
 12656 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12656 ms  0x6ea2 ret:0x7fc9262e8d00
 12656 ms  0x6ea2 PK11_DeriveWithFlags()
 12656 ms  0x6ea2 basekey:0x7fc930070e80
 12656 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12656 ms  0x6ea2 ret:0x7fc92877c100
 12656 ms  SECKEY_ECParamsToKeySize()
 12656 ms  0x6ea2 ret:0x100
 12656 ms  SECKEY_ECParamsToBasePointOrderLen()
 12656 ms  0x6ea2 ret:0x100
 12656 ms  SECKEY_ECParamsToBasePointOrderLen()
 12656 ms  0x6ea2 ret:0x100
 12656 ms  0x6ea2 EC_ValidatePublicKey()
 12658 ms  0x6ea2 ret:0x0
 12661 ms  0x6ea2 PK11_DeriveWithFlags()
 12661 ms  0x6ea2 basekey:0x7fc930070e80
 12661 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12661 ms  0x6ea2 ret:0x7fc92877c100
 12661 ms  0x6ea2 SSL_AuthCertificateComplete()
 12661 ms  0x6ea2 fd:0x7fc92cb04d90
 12661 ms  0x6ea2 err:0x0
 12661 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12661 ms     | 0x6ea2 basekey:0x7fc927ee8d80
 12661 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12661 ms     | 0x6ea2 ret:0x7fc92877c100
 12661 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12661 ms     | 0x6ea2 basekey:0x7fc927ee8d80
 12661 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12661 ms     | 0x6ea2 ret:0x7fc926466f00
 12662 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12662 ms     | 0x6ea2 basekey:0x7fc927ee8d80
 12662 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12662 ms     | 0x6ea2 ret:0x7fc9344c2100
 12662 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12662 ms     | 0x6ea2 basekey:0x7fc92870d280
 12662 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12662 ms     | 0x6ea2 ret:0x7fc9344c2780
 12662 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12662 ms     | 0x6ea2 basekey:0x7fc92870d280
 12662 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12662 ms     | 0x6ea2 ret:0x7fc933aaef80
 12662 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12662 ms     | 0x6ea2 basekey:0x7fc926466f00
 12662 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12662 ms     | 0x6ea2 ret:0x7fc933aaef80
 12662 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12662 ms     | 0x6ea2 basekey:0x7fc926466f00
 12662 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12662 ms     | 0x6ea2 ret:0x7fc9344c2180
 12662 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12662 ms     | 0x6ea2 basekey:0x7fc92870d280
 12662 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12662 ms     | 0x6ea2 ret:0x7fc9262e8d00
 12662 ms     | 0x6ea2 PK11_Encrypt()
 12662 ms     | 0x6ea2 symkey:0x7fc9344c2780
 12665 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12665 ms     | 0x6ea2 basekey:0x7fc92877c100
 12665 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12665 ms     | 0x6ea2 ret:0x7fc9262e8d00
 12665 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12665 ms     | 0x6ea2 basekey:0x7fc92877c100
 12665 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12665 ms     | 0x6ea2 ret:0x7fc9344c2180
 12665 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12665 ms     | 0x6ea2 basekey:0x7fc927ee8d80
 12665 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12665 ms     | 0x6ea2 ret:0x7fc9344c2780
 12667 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12667 ms     | 0x6ea2 privk:0x7fc92cbde020::7fc92cbde020  20 6e 9c 2c                                       n.,
 12667 ms     | 0x6ea2 privk:0x7fc92cbde020::7fc92cbde020  e5 e5 e5 e5                                      ....
 12667 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12667 ms     | 0x6ea2 privk:0x7fc92cbdc020::7fc92cbdc020  40 fc 9c 2c                                      @..,
 12667 ms     | 0x6ea2 privk:0x7fc92cbdc020::7fc92cbdc020  e5 e5 e5 e5                                      ....
 12668 ms  0x6ea2 PK11_DeriveWithFlags()
 12668 ms  0x6ea2 basekey:0x7fc930070e80
 12668 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12668 ms  0x6ea2 ret:0x7fc92870d280
 12668 ms  0x6ea2 PK11_Derive()
 12668 ms  0x6ea2 basekey:0x7fc92870d280
 12668 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12669 ms  0x6ea2 ret:0x7fc927ee8d80
 12669 ms  0x6ea2 PK11_Encrypt()
 12669 ms  0x6ea2 symkey:0x7fc9262e8d00
 12669 ms  0x6ea2 SSL_AuthCertificateComplete()
 12669 ms  0x6ea2 fd:0x7fc92c4fa1c0
 12669 ms  0x6ea2 err:0x0
 12670 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12670 ms  0x6ea2 cx:0x7fc92b814168
 12670 ms     | 0x6ea2 EC_ValidatePublicKey()
 12670 ms     | 0x6ea2 ret:0x0
 12670 ms  0x6ea2 ret:0x7fc92cbde020::7fc92cbde020  a0 71 9c 2c                                      .q.,
 12670 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12670 ms  0x6ea2 cx:0x7fc92b814168
 12671 ms     | 0x6ea2 EC_ValidatePublicKey()
 12672 ms     | 0x6ea2 ret:0x0
 12672 ms  0x6ea2 ret:0x7fc92cbf0020::7fc92cbf0020  b0 65 3d 2f                                      .e=/
 12673 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12673 ms  0x6ea2 cx:0x7fc92b813e28
 12673 ms     | 0x6ea2 EC_ValidatePublicKey()
 12673 ms     | 0x6ea2 ret:0x0
 12673 ms  0x6ea2 ret:0x7fc92f36e820::7fc92f36e820  10 fa 3e 2f                                      ..>/
 12673 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12673 ms  0x6ea2 cx:0x7fc92b813e28
 12674 ms     | 0x6ea2 EC_ValidatePublicKey()
 12675 ms     | 0x6ea2 ret:0x0
 12675 ms  0x6ea2 ret:0x7fc92f375820::7fc92f375820  40 f2 3f 2f                                      @.?/
 12676 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12676 ms  0x6ea2 cx:0x7fc92b814308
 12676 ms     | 0x6ea2 EC_ValidatePublicKey()
 12676 ms     | 0x6ea2 ret:0x0
 12676 ms  0x6ea2 ret:0x7fc92f440820::7fc92f440820  f0 f6 3f 2f                                      ..?/
 12676 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12676 ms  0x6ea2 cx:0x7fc92b814308
 12677 ms     | 0x6ea2 EC_ValidatePublicKey()
 12678 ms     | 0x6ea2 ret:0x0
 12678 ms  0x6ea2 ret:0x7fc92f443820::7fc92f443820  f0 b1 41 2f                                      ..A/
 12688 ms  0x6ea2 PK11_Derive()
 12688 ms  0x6ea2 basekey:0x7fc930070e80
 12688 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12688 ms  0x6ea2 ret:0x7fc9344c2180
 12688 ms  0x6ea2 PK11_PubDeriveWithKDF()
 12688 ms  0x6ea2 seckey:0x7fc92cbe7820
 12688 ms     | 0x6ea2 EC_ValidatePublicKey()
 12688 ms     | 0x6ea2 ret:0x0
 12689 ms  0x6ea2 ret:0x7fc930070e80
 12689 ms  SECKEY_ECParamsToKeySize()
 12689 ms  0x6ea2 ret:0xff
 12689 ms  0x6ea2 PK11_DeriveWithFlags()
 12689 ms  0x6ea2 basekey:0x7fc9344c2180
 12689 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12689 ms  0x6ea2 ret:0x7fc92b98c800
 12689 ms  0x6ea2 PK11_Derive()
 12689 ms  0x6ea2 basekey:0x7fc930070e80
 12689 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12689 ms  0x6ea2 ret:0x7fc92b98c900
 12689 ms  0x6ea2 PK11_DeriveWithFlags()
 12689 ms  0x6ea2 basekey:0x7fc92b98c900
 12689 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12689 ms  0x6ea2 ret:0x7fc9344c2180
 12689 ms  0x6ea2 PK11_DeriveWithFlags()
 12689 ms  0x6ea2 basekey:0x7fc92b98c900
 12689 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12689 ms  0x6ea2 ret:0x7fc930070e80
 12689 ms  0x6ea2 PK11_DeriveWithFlags()
 12689 ms  0x6ea2 basekey:0x7fc92b98c900
 12689 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12689 ms  0x6ea2 ret:0x7fc92b98c800
 12689 ms  0x6ea2 PK11_Derive()
 12689 ms  0x6ea2 basekey:0x7fc929681680
 12689 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12689 ms  0x6ea2 ret:0x7fc92b98c880
 12689 ms  0x6ea2 PK11_DeriveWithFlags()
 12689 ms  0x6ea2 basekey:0x7fc930070e80
 12689 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12689 ms  0x6ea2 ret:0x7fc92b98c900
 12689 ms  0x6ea2 PK11_DeriveWithFlags()
 12689 ms  0x6ea2 basekey:0x7fc930070e80
 12689 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12689 ms  0x6ea2 ret:0x7fc92b98c800
 12690 ms  0x6ea2 PK11_DeriveWithFlags()
 12690 ms  0x6ea2 basekey:0x7fc930070e80
 12690 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12690 ms  0x6ea2 ret:0x7fc92b98c800
 12691 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12691 ms  0x6ea2 cx:0x7fc92b8144a8
 12692 ms     | 0x6ea2 EC_ValidatePublicKey()
 12692 ms     | 0x6ea2 ret:0x0
 12692 ms  0x6ea2 ret:0x7fc92ff12020::7fc92ff12020  d0 7d 4d 2f                                      .}M/
 12692 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 12692 ms  0x6ea2 cx:0x7fc92b8144a8
 12692 ms     | 0x6ea2 EC_ValidatePublicKey()
 12694 ms     | 0x6ea2 ret:0x0
 12694 ms  0x6ea2 ret:0x7fc92ff15020::7fc92ff15020  b0 8f f7 2f                                      .../
 12701 ms  0x6ea2 PK11_DeriveWithFlags()
 12701 ms  0x6ea2 basekey:0x7fc9344c2780
 12702 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12702 ms  0x6ea2 ret:0x7fc92b98c800
 12702 ms  0x6ea2 PK11_DeriveWithFlags()
 12702 ms  0x6ea2 basekey:0x7fc9344c2780
 12702 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12702 ms  0x6ea2 ret:0x7fc92b98c800
 12702 ms  0x6ea2 PR_Close()
 12702 ms  0x6ea2 fd:0x7fc92cb04d90
 12702 ms     | 0x6ea2 PK11_Encrypt()
 12702 ms     | 0x6ea2 symkey:0x7fc9262e8d00
 12714 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 12714 ms  0x6ea2 privk:0x7fc926424820::7fc926424820  e0 cc 4e 2c                                      ..N,
 12714 ms  0x6ea2 privk:0x7fc926424820::7fc926424820  e5 e5 e5 e5                                      ....
 12714 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 12714 ms  0x6ea2 privk:0x7fc915558820::7fc915558820  b0 e0 40 2c                                      ..@,
 12714 ms  0x6ea2 privk:0x7fc915558820::7fc915558820  e5 e5 e5 e5                                      ....
 12723 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 12723 ms  0x6ea2 privk:0x7fc92b0b2020::7fc92b0b2020  d0 a8 98 2c                                      ...,
 12724 ms  0x6ea2 privk:0x7fc92b0b2020::7fc92b0b2020  e5 e5 e5 e5                                      ....
 12724 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 12724 ms  0x6ea2 privk:0x7fc9282da020::7fc9282da020  60 ef 95 2c                                      `..,
 12724 ms  0x6ea2 privk:0x7fc9282da020::7fc9282da020  e5 e5 e5 e5                                      ....
           /* TID 0x6eaa */
 12727 ms  0x6eaa PR_Close()
 12727 ms  0x6eaa fd:0x7fc92c4fae50
           /* TID 0x6ea2 */
 12730 ms  0x6ea2 PK11_Encrypt()
 12730 ms  0x6ea2 symkey:0x7fc92c79ae00
 12730 ms  0x6ea2 PK11_Derive()
 12730 ms  0x6ea2 basekey:0x7fc9344c2100
 12730 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12730 ms  0x6ea2 ret:0x7fc926466f00
 12730 ms  0x6ea2 PK11_PubDeriveWithKDF()
 12730 ms  0x6ea2 seckey:0x7fc92cbde020
 12730 ms     | 0x6ea2 EC_ValidatePublicKey()
 12730 ms     | 0x6ea2 ret:0x0
 12731 ms  0x6ea2 ret:0x7fc9344c2100
 12731 ms  SECKEY_ECParamsToKeySize()
 12731 ms  0x6ea2 ret:0xff
 12731 ms  0x6ea2 PK11_DeriveWithFlags()
 12731 ms  0x6ea2 basekey:0x7fc926466f00
 12731 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12731 ms  0x6ea2 ret:0x7fc92877c100
 12731 ms  0x6ea2 PK11_Derive()
 12731 ms  0x6ea2 basekey:0x7fc9344c2100
 12731 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12731 ms  0x6ea2 ret:0x7fc9344c2780
 12731 ms  0x6ea2 PK11_DeriveWithFlags()
 12731 ms  0x6ea2 basekey:0x7fc9344c2780
 12731 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12731 ms  0x6ea2 ret:0x7fc926466f00
 12731 ms  0x6ea2 PK11_DeriveWithFlags()
 12731 ms  0x6ea2 basekey:0x7fc9344c2780
 12731 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12731 ms  0x6ea2 ret:0x7fc9344c2100
 12731 ms  0x6ea2 PK11_DeriveWithFlags()
 12731 ms  0x6ea2 basekey:0x7fc9344c2780
 12731 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12731 ms  0x6ea2 ret:0x7fc92877c100
 12731 ms  0x6ea2 PK11_Derive()
 12731 ms  0x6ea2 basekey:0x7fc933aaef80
 12731 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12731 ms  0x6ea2 ret:0x7fc9262e8d00
 12731 ms  0x6ea2 PK11_DeriveWithFlags()
 12731 ms  0x6ea2 basekey:0x7fc9344c2100
 12731 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12731 ms  0x6ea2 ret:0x7fc9344c2780
 12731 ms  0x6ea2 PK11_DeriveWithFlags()
 12731 ms  0x6ea2 basekey:0x7fc9344c2100
 12731 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12731 ms  0x6ea2 ret:0x7fc92877c100
 12732 ms  SECKEY_ECParamsToKeySize()
 12732 ms  0x6ea2 ret:0x100
 12732 ms  SECKEY_ECParamsToBasePointOrderLen()
 12732 ms  0x6ea2 ret:0x100
 12732 ms  SECKEY_ECParamsToBasePointOrderLen()
 12732 ms  0x6ea2 ret:0x100
 12732 ms  0x6ea2 EC_ValidatePublicKey()
 12733 ms  0x6ea2 ret:0x0
 12736 ms  0x6ea2 PK11_DeriveWithFlags()
 12736 ms  0x6ea2 basekey:0x7fc9344c2100
 12736 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12736 ms  0x6ea2 ret:0x7fc92877c100
 12736 ms  0x6ea2 PK11_Derive()
 12736 ms  0x6ea2 basekey:0x7fc92877c100
 12736 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12736 ms  0x6ea2 ret:0x7fc933aaef80
 12736 ms  0x6ea2 PK11_PubDeriveWithKDF()
 12736 ms  0x6ea2 seckey:0x7fc92f36e820
 12736 ms     | 0x6ea2 EC_ValidatePublicKey()
 12736 ms     | 0x6ea2 ret:0x0
 12736 ms  0x6ea2 ret:0x7fc92877c100
 12736 ms  SECKEY_ECParamsToKeySize()
 12736 ms  0x6ea2 ret:0xff
 12736 ms  0x6ea2 PK11_DeriveWithFlags()
 12736 ms  0x6ea2 basekey:0x7fc933aaef80
 12736 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12736 ms  0x6ea2 ret:0x7fc92b98c800
 12736 ms  0x6ea2 PK11_Derive()
 12736 ms  0x6ea2 basekey:0x7fc92877c100
 12736 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12736 ms  0x6ea2 ret:0x7fc929681680
 12736 ms  0x6ea2 PK11_DeriveWithFlags()
 12736 ms  0x6ea2 basekey:0x7fc929681680
 12736 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12736 ms  0x6ea2 ret:0x7fc933aaef80
 12736 ms  0x6ea2 PK11_DeriveWithFlags()
 12736 ms  0x6ea2 basekey:0x7fc929681680
 12736 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12736 ms  0x6ea2 ret:0x7fc92877c100
 12736 ms  0x6ea2 PK11_DeriveWithFlags()
 12736 ms  0x6ea2 basekey:0x7fc929681680
 12737 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12737 ms  0x6ea2 ret:0x7fc92b98c800
 12737 ms  0x6ea2 PK11_Derive()
 12737 ms  0x6ea2 basekey:0x7fc92c4e1800
 12737 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12737 ms  0x6ea2 ret:0x7fc92c4e1900
 12737 ms  0x6ea2 PK11_DeriveWithFlags()
 12737 ms  0x6ea2 basekey:0x7fc92877c100
 12737 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12737 ms  0x6ea2 ret:0x7fc929681680
 12737 ms  0x6ea2 PK11_DeriveWithFlags()
 12737 ms  0x6ea2 basekey:0x7fc92877c100
 12737 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12737 ms  0x6ea2 ret:0x7fc92b98c800
 12738 ms  SECKEY_ECParamsToKeySize()
 12738 ms  0x6ea2 ret:0x100
 12738 ms  SECKEY_ECParamsToBasePointOrderLen()
 12738 ms  0x6ea2 ret:0x100
 12738 ms  SECKEY_ECParamsToBasePointOrderLen()
 12738 ms  0x6ea2 ret:0x100
 12738 ms  0x6ea2 EC_ValidatePublicKey()
 12739 ms  0x6ea2 ret:0x0
 12742 ms  0x6ea2 PK11_DeriveWithFlags()
 12742 ms  0x6ea2 basekey:0x7fc92877c100
 12742 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12742 ms  0x6ea2 ret:0x7fc92b98c800
 12742 ms  0x6ea2 SSL_AuthCertificateComplete()
 12742 ms  0x6ea2 fd:0x7fc92f3b2460
 12742 ms  0x6ea2 err:0x0
 12742 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12742 ms     | 0x6ea2 basekey:0x7fc9262e8d00
 12742 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12742 ms     | 0x6ea2 ret:0x7fc92b98c800
 12742 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12742 ms     | 0x6ea2 basekey:0x7fc9262e8d00
 12742 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12742 ms     | 0x6ea2 ret:0x7fc92c4e1800
 12742 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12742 ms     | 0x6ea2 basekey:0x7fc9262e8d00
 12742 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12742 ms     | 0x6ea2 ret:0x7fc92c4e1600
 12742 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12742 ms     | 0x6ea2 basekey:0x7fc926466f00
 12742 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12742 ms     | 0x6ea2 ret:0x7fc92c4e1880
 12742 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12742 ms     | 0x6ea2 basekey:0x7fc926466f00
 12742 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12742 ms     | 0x6ea2 ret:0x7fc933aae300
 12742 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12742 ms     | 0x6ea2 basekey:0x7fc92c4e1800
 12742 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12742 ms     | 0x6ea2 ret:0x7fc933aae300
 12742 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12742 ms     | 0x6ea2 basekey:0x7fc92c4e1800
 12742 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12742 ms     | 0x6ea2 ret:0x7fc933aae500
 12742 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12742 ms     | 0x6ea2 basekey:0x7fc926466f00
 12742 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12742 ms     | 0x6ea2 ret:0x7fc9344c2780
 12742 ms     | 0x6ea2 PK11_Encrypt()
 12742 ms     | 0x6ea2 symkey:0x7fc92c4e1880
 12742 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12742 ms     | 0x6ea2 basekey:0x7fc92b98c800
 12742 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12742 ms     | 0x6ea2 ret:0x7fc9344c2780
 12742 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12742 ms     | 0x6ea2 basekey:0x7fc92b98c800
 12742 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12742 ms     | 0x6ea2 ret:0x7fc933aae500
 12742 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12742 ms     | 0x6ea2 basekey:0x7fc9262e8d00
 12742 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12742 ms     | 0x6ea2 ret:0x7fc92c4e1880
 12742 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12742 ms     | 0x6ea2 privk:0x7fc92cbf0020::7fc92cbf0020  b0 65 3d 2f                                      .e=/
 12743 ms     | 0x6ea2 privk:0x7fc92cbf0020::7fc92cbf0020  e5 e5 e5 e5                                      ....
 12743 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12743 ms     | 0x6ea2 privk:0x7fc92cbde020::7fc92cbde020  a0 71 9c 2c                                      .q.,
 12743 ms     | 0x6ea2 privk:0x7fc92cbde020::7fc92cbde020  e5 e5 e5 e5                                      ....
 12745 ms  0x6ea2 PK11_Encrypt()
 12745 ms  0x6ea2 symkey:0x7fc9344c2780
 12745 ms  0x6ea2 PK11_Encrypt()
 12745 ms  0x6ea2 symkey:0x7fc9344c2780
 12745 ms  0x6ea2 PK11_Derive()
 12745 ms  0x6ea2 basekey:0x7fc9344c2100
 12745 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12745 ms  0x6ea2 ret:0x7fc926466f00
 12745 ms  0x6ea2 PK11_PubDeriveWithKDF()
 12745 ms  0x6ea2 seckey:0x7fc92f440820
 12745 ms     | 0x6ea2 EC_ValidatePublicKey()
 12745 ms     | 0x6ea2 ret:0x0
 12746 ms  0x6ea2 ret:0x7fc9344c2100
 12746 ms  SECKEY_ECParamsToKeySize()
 12746 ms  0x6ea2 ret:0xff
 12746 ms  0x6ea2 PK11_DeriveWithFlags()
 12746 ms  0x6ea2 basekey:0x7fc926466f00
 12746 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12746 ms  0x6ea2 ret:0x7fc9262e8d00
 12746 ms  0x6ea2 PK11_Derive()
 12746 ms  0x6ea2 basekey:0x7fc9344c2100
 12746 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12746 ms  0x6ea2 ret:0x7fc933aae500
 12746 ms  0x6ea2 PK11_DeriveWithFlags()
 12746 ms  0x6ea2 basekey:0x7fc933aae500
 12746 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12746 ms  0x6ea2 ret:0x7fc926466f00
 12746 ms  0x6ea2 PK11_DeriveWithFlags()
 12746 ms  0x6ea2 basekey:0x7fc933aae500
 12746 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12746 ms  0x6ea2 ret:0x7fc9344c2100
 12746 ms  0x6ea2 PK11_DeriveWithFlags()
 12746 ms  0x6ea2 basekey:0x7fc933aae500
 12746 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12746 ms  0x6ea2 ret:0x7fc9262e8d00
 12746 ms  0x6ea2 PK11_Derive()
 12746 ms  0x6ea2 basekey:0x7fc933aadb00
 12746 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12746 ms  0x6ea2 ret:0x7fc933aae400
 12746 ms  0x6ea2 PK11_DeriveWithFlags()
 12746 ms  0x6ea2 basekey:0x7fc9344c2100
 12746 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12746 ms  0x6ea2 ret:0x7fc933aae500
 12746 ms  0x6ea2 PK11_DeriveWithFlags()
 12746 ms  0x6ea2 basekey:0x7fc9344c2100
 12746 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12746 ms  0x6ea2 ret:0x7fc9262e8d00
 12747 ms  0x6ea2 PK11_DeriveWithFlags()
 12747 ms  0x6ea2 basekey:0x7fc9344c2100
 12747 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12747 ms  0x6ea2 ret:0x7fc9262e8d00
 12747 ms  0x6ea2 PK11_Derive()
 12747 ms  0x6ea2 basekey:0x7fc9262e8d00
 12747 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12747 ms  0x6ea2 ret:0x7fc933aadb00
 12747 ms  0x6ea2 PK11_PubDeriveWithKDF()
 12747 ms  0x6ea2 seckey:0x7fc92ff12020
 12747 ms     | 0x6ea2 EC_ValidatePublicKey()
 12747 ms     | 0x6ea2 ret:0x0
 12748 ms  0x6ea2 ret:0x7fc9262e8d00
 12748 ms  SECKEY_ECParamsToKeySize()
 12748 ms  0x6ea2 ret:0xff
 12748 ms  0x6ea2 PK11_DeriveWithFlags()
 12748 ms  0x6ea2 basekey:0x7fc933aadb00
 12748 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12748 ms  0x6ea2 ret:0x7fc933aae600
 12748 ms  0x6ea2 PK11_Derive()
 12748 ms  0x6ea2 basekey:0x7fc9262e8d00
 12748 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12748 ms  0x6ea2 ret:0x7fc933aae780
 12748 ms  0x6ea2 PK11_DeriveWithFlags()
 12748 ms  0x6ea2 basekey:0x7fc933aae780
 12748 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12748 ms  0x6ea2 ret:0x7fc933aadb00
 12748 ms  0x6ea2 PK11_DeriveWithFlags()
 12748 ms  0x6ea2 basekey:0x7fc933aae780
 12748 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12748 ms  0x6ea2 ret:0x7fc9262e8d00
 12748 ms  0x6ea2 PK11_DeriveWithFlags()
 12748 ms  0x6ea2 basekey:0x7fc933aae780
 12748 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12748 ms  0x6ea2 ret:0x7fc933aae600
 12748 ms  0x6ea2 PK11_Derive()
 12748 ms  0x6ea2 basekey:0x7fc933aae580
 12748 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12748 ms  0x6ea2 ret:0x7fc933aae680
 12748 ms  0x6ea2 PK11_DeriveWithFlags()
 12748 ms  0x6ea2 basekey:0x7fc9262e8d00
 12748 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12748 ms  0x6ea2 ret:0x7fc933aae780
 12748 ms  0x6ea2 PK11_DeriveWithFlags()
 12748 ms  0x6ea2 basekey:0x7fc9262e8d00
 12748 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12748 ms  0x6ea2 ret:0x7fc933aae600
 12748 ms  SECKEY_ECParamsToKeySize()
 12748 ms  0x6ea2 ret:0x100
 12748 ms  SECKEY_ECParamsToBasePointOrderLen()
 12748 ms  0x6ea2 ret:0x100
 12748 ms  SECKEY_ECParamsToBasePointOrderLen()
 12748 ms  0x6ea2 ret:0x100
 12748 ms  0x6ea2 EC_ValidatePublicKey()
 12750 ms  0x6ea2 ret:0x0
 12760 ms  0x6ea2 PK11_DeriveWithFlags()
 12760 ms  0x6ea2 basekey:0x7fc9262e8d00
 12760 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12760 ms  0x6ea2 ret:0x7fc933aae600
           /* TID 0x6eaa */
 12762 ms  0x6eaa PR_Close()
 12762 ms  0x6eaa fd:0x7fc92cbff160
           /* TID 0x6eff */
 12768 ms  0x6eff _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12768 ms  0x6eff ret:0x0
           /* TID 0x6eaa */
 12769 ms  0x6eaa PR_Close()
 12769 ms  0x6eaa fd:0x7fc92caea970
           /* TID 0x6ea2 */
 12769 ms  0x6ea2 PR_Connect()
 12769 ms  0x6ea2 fd:0x7fc92ffff040
 12774 ms  0x6ea2 SSL_AuthCertificateComplete()
 12774 ms  0x6ea2 fd:0x7fc92c943190
 12774 ms  0x6ea2 err:0x0
 12774 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12774 ms     | 0x6ea2 basekey:0x7fc933aac200
 12774 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12774 ms     | 0x6ea2 ret:0x7fc933aae600
 12774 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12774 ms     | 0x6ea2 basekey:0x7fc933aac200
 12774 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12774 ms     | 0x6ea2 ret:0x7fc933aae580
 12775 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12775 ms     | 0x6ea2 basekey:0x7fc933aac200
 12775 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12775 ms     | 0x6ea2 ret:0x7fc933aad600
 12775 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12775 ms     | 0x6ea2 basekey:0x7fc9334fd980
 12775 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12775 ms     | 0x6ea2 ret:0x7fc933aad780
 12775 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12775 ms     | 0x6ea2 basekey:0x7fc9334fd980
 12775 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12775 ms     | 0x6ea2 ret:0x7fc933aad500
 12775 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12775 ms     | 0x6ea2 basekey:0x7fc933aae580
 12775 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12775 ms     | 0x6ea2 ret:0x7fc933aad500
 12775 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12775 ms     | 0x6ea2 basekey:0x7fc933aae580
 12775 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12775 ms     | 0x6ea2 ret:0x7fc933aad680
 12775 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12775 ms     | 0x6ea2 basekey:0x7fc9334fd980
 12775 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12775 ms     | 0x6ea2 ret:0x7fc92870d300
 12775 ms     | 0x6ea2 PK11_Encrypt()
 12775 ms     | 0x6ea2 symkey:0x7fc933aad780
 12775 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12775 ms     | 0x6ea2 basekey:0x7fc933aae600
 12775 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12775 ms     | 0x6ea2 ret:0x7fc92870d300
 12775 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12775 ms     | 0x6ea2 basekey:0x7fc933aae600
 12775 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12775 ms     | 0x6ea2 ret:0x7fc933aad680
 12775 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12775 ms     | 0x6ea2 basekey:0x7fc933aac200
 12775 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12775 ms     | 0x6ea2 ret:0x7fc933aad780
 12775 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12775 ms     | 0x6ea2 privk:0x7fc92c7bc020::7fc92c7bc020  70 4e 9b 2c                                      pN.,
 12775 ms     | 0x6ea2 privk:0x7fc92c7bc020::7fc92c7bc020  e5 e5 e5 e5                                      ....
 12775 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12775 ms     | 0x6ea2 privk:0x7fc92645f020::7fc92645f020  80 bd 7f 2c                                      ...,
 12775 ms     | 0x6ea2 privk:0x7fc92645f020::7fc92645f020  e5 e5 e5 e5                                      ....
 12776 ms  0x6ea2 PK11_Encrypt()
 12776 ms  0x6ea2 symkey:0x7fc92870d300
 12776 ms  0x6ea2 PK11_Encrypt()
 12776 ms  0x6ea2 symkey:0x7fc92870d300
 12776 ms  0x6ea2 PR_Connect()
 12776 ms  0x6ea2 fd:0x7fc92cbff160
 12780 ms  0x6ea2 PK11_DeriveWithFlags()
 12780 ms  0x6ea2 basekey:0x7fc92c4e1880
 12780 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12780 ms  0x6ea2 ret:0x7fc92870d400
 12780 ms  0x6ea2 PK11_DeriveWithFlags()
 12780 ms  0x6ea2 basekey:0x7fc92c4e1880
 12780 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12780 ms  0x6ea2 ret:0x7fc92870d400
 12780 ms  0x6ea2 PK11_Encrypt()
 12780 ms  0x6ea2 symkey:0x7fc9344c2780
           /* TID 0x6eaa */
 12795 ms  0x6eaa PR_Close()
 12795 ms  0x6eaa fd:0x7fc92676cbb0
           /* TID 0x6f42 */
 12795 ms  0x6f42 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12795 ms  0x6f42 ret:0x0
           /* TID 0x6ea2 */
 12795 ms  0x6ea2 SSL_AuthCertificateComplete()
 12795 ms  0x6ea2 fd:0x7fc92caaba60
 12795 ms  0x6ea2 err:0x0
 12795 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12795 ms     | 0x6ea2 basekey:0x7fc92870e700
 12795 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12795 ms     | 0x6ea2 ret:0x7fc92870d400
 12795 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12795 ms     | 0x6ea2 basekey:0x7fc92870e700
 12795 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12795 ms     | 0x6ea2 ret:0x7fc9334fd980
 12795 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12795 ms     | 0x6ea2 basekey:0x7fc92870e700
 12795 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12795 ms     | 0x6ea2 ret:0x7fc933aac200
 12795 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12795 ms     | 0x6ea2 basekey:0x7fc9354b5080
 12795 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12795 ms     | 0x6ea2 ret:0x7fc933aad680
 12795 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12795 ms     | 0x6ea2 basekey:0x7fc9354b5080
 12795 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12795 ms     | 0x6ea2 ret:0x7fc933aadc00
 12795 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12795 ms     | 0x6ea2 basekey:0x7fc9334fd980
 12795 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12795 ms     | 0x6ea2 ret:0x7fc933aadc00
 12795 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12795 ms     | 0x6ea2 basekey:0x7fc9334fd980
 12795 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12795 ms     | 0x6ea2 ret:0x7fc933aadd80
 12795 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12795 ms     | 0x6ea2 basekey:0x7fc9354b5080
 12795 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12795 ms     | 0x6ea2 ret:0x7fc92870de00
 12795 ms     | 0x6ea2 PK11_Encrypt()
 12795 ms     | 0x6ea2 symkey:0x7fc933aad680
 12795 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12795 ms     | 0x6ea2 basekey:0x7fc92870d400
 12795 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12796 ms     | 0x6ea2 ret:0x7fc92870de00
 12796 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12796 ms     | 0x6ea2 basekey:0x7fc92870d400
 12796 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12796 ms     | 0x6ea2 ret:0x7fc933aadd80
 12796 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12796 ms     | 0x6ea2 basekey:0x7fc92870e700
 12796 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12796 ms     | 0x6ea2 ret:0x7fc933aad680
 12796 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12796 ms     | 0x6ea2 privk:0x7fc92cbd5020::7fc92cbd5020  50 6b 9c 2c                                      Pk.,
 12796 ms     | 0x6ea2 privk:0x7fc92cbd5020::7fc92cbd5020  e5 e5 e5 e5                                      ....
 12796 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12796 ms     | 0x6ea2 privk:0x7fc92cbbf820::7fc92cbbf820  20 69 9c 2c                                       i.,
 12796 ms     | 0x6ea2 privk:0x7fc92cbbf820::7fc92cbbf820  e5 e5 e5 e5                                      ....
 12796 ms  0x6ea2 PK11_Encrypt()
 12796 ms  0x6ea2 symkey:0x7fc92870de00
 12797 ms  0x6ea2 PK11_Encrypt()
 12797 ms  0x6ea2 symkey:0x7fc92870d300
 12813 ms  0x6ea2 PK11_DeriveWithFlags()
 12813 ms  0x6ea2 basekey:0x7fc933aad780
 12813 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12813 ms  0x6ea2 ret:0x7fc92877bc00
 12813 ms  0x6ea2 PK11_DeriveWithFlags()
 12813 ms  0x6ea2 basekey:0x7fc933aad780
 12813 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12813 ms  0x6ea2 ret:0x7fc92877bc00
 12813 ms  0x6ea2 PK11_Encrypt()
 12813 ms  0x6ea2 symkey:0x7fc92870d300
 12824 ms  0x6ea2 PK11_Encrypt()
 12824 ms  0x6ea2 symkey:0x7fc92c79ae00
 12829 ms  0x6ea2 PK11_DeriveWithFlags()
 12829 ms  0x6ea2 basekey:0x7fc92877bc00
 12829 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12829 ms  0x6ea2 ret:0x7fc9354b5080
 12829 ms  0x6ea2 PK11_Derive()
 12829 ms  0x6ea2 basekey:0x7fc9354b5080
 12829 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12829 ms  0x6ea2 ret:0x7fc92870e700
 12830 ms  0x6ea2 SSL_AuthCertificateComplete()
 12830 ms  0x6ea2 fd:0x7fc92c4c9ee0
 12830 ms  0x6ea2 err:0x0
 12834 ms  0x6ea2 PK11_DeriveWithFlags()
 12834 ms  0x6ea2 basekey:0x7fc933aad680
 12834 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12834 ms  0x6ea2 ret:0x7fc92877bc00
 12834 ms  0x6ea2 PK11_DeriveWithFlags()
 12834 ms  0x6ea2 basekey:0x7fc933aad680
 12834 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12834 ms  0x6ea2 ret:0x7fc92877bc00
 12834 ms  0x6ea2 PR_Close()
 12834 ms  0x6ea2 fd:0x7fc92caaba60
 12834 ms     | 0x6ea2 PK11_Encrypt()
 12834 ms     | 0x6ea2 symkey:0x7fc92870de00
           /* TID 0x6eaa */
 12835 ms  0x6eaa PR_Close()
 12835 ms  0x6eaa fd:0x7fc92676cbb0
           /* TID 0x6f40 */
 12835 ms  0x6f40 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12836 ms  0x6f40 ret:0x0
           /* TID 0x6ea2 */
 12836 ms  0x6ea2 SSL_AuthCertificateComplete()
 12836 ms  0x6ea2 fd:0x7fc92cb23220
 12836 ms  0x6ea2 err:0x0
 12836 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12836 ms     | 0x6ea2 basekey:0x7fc92b98c880
 12836 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12836 ms     | 0x6ea2 ret:0x7fc933aac200
 12836 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12836 ms     | 0x6ea2 basekey:0x7fc92b98c880
 12836 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12836 ms     | 0x6ea2 ret:0x7fc9334fd980
 12836 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12836 ms     | 0x6ea2 basekey:0x7fc92b98c880
 12836 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12836 ms     | 0x6ea2 ret:0x7fc92870d400
 12836 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12836 ms     | 0x6ea2 basekey:0x7fc9344c2180
 12836 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12836 ms     | 0x6ea2 ret:0x7fc933aad680
 12836 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12836 ms     | 0x6ea2 basekey:0x7fc9344c2180
 12836 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12836 ms     | 0x6ea2 ret:0x7fc933aadc00
 12836 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12836 ms     | 0x6ea2 basekey:0x7fc9334fd980
 12836 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12836 ms     | 0x6ea2 ret:0x7fc933aadc00
 12836 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12836 ms     | 0x6ea2 basekey:0x7fc9334fd980
 12836 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12836 ms     | 0x6ea2 ret:0x7fc92870de00
 12836 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12836 ms     | 0x6ea2 basekey:0x7fc9344c2180
 12836 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12836 ms     | 0x6ea2 ret:0x7fc92b98c900
 12836 ms     | 0x6ea2 PK11_Encrypt()
 12836 ms     | 0x6ea2 symkey:0x7fc933aad680
 12836 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12836 ms     | 0x6ea2 basekey:0x7fc933aac200
 12836 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12836 ms     | 0x6ea2 ret:0x7fc92b98c900
 12836 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12836 ms     | 0x6ea2 basekey:0x7fc933aac200
 12836 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12836 ms     | 0x6ea2 ret:0x7fc92870de00
 12836 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12836 ms     | 0x6ea2 basekey:0x7fc92b98c880
 12836 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12836 ms     | 0x6ea2 ret:0x7fc933aad680
 12836 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12836 ms     | 0x6ea2 privk:0x7fc92cbe9820::7fc92cbe9820  60 05 b2 2c                                      `..,
 12836 ms     | 0x6ea2 privk:0x7fc92cbe9820::7fc92cbe9820  e5 e5 e5 e5                                      ....
 12837 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12837 ms     | 0x6ea2 privk:0x7fc92cbe7820::7fc92cbe7820  c0 c4 ac 2c                                      ...,
 12837 ms     | 0x6ea2 privk:0x7fc92cbe7820::7fc92cbe7820  e5 e5 e5 e5                                      ....
 12837 ms  0x6ea2 PK11_Encrypt()
 12837 ms  0x6ea2 symkey:0x7fc92b98c900
 12838 ms  0x6ea2 PK11_Encrypt()
 12838 ms  0x6ea2 symkey:0x7fc92870d300
 12870 ms  0x6ea2 PK11_Encrypt()
 12870 ms  0x6ea2 symkey:0x7fc92870d300
 12871 ms  0x6ea2 PK11_Encrypt()
 12871 ms  0x6ea2 symkey:0x7fc92870d300
 12871 ms  0x6ea2 PK11_Encrypt()
 12871 ms  0x6ea2 symkey:0x7fc929681180
 12874 ms  0x6ea2 PK11_DeriveWithFlags()
 12874 ms  0x6ea2 basekey:0x7fc933aad680
 12874 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12874 ms  0x6ea2 ret:0x7fc930070e80
 12874 ms  0x6ea2 PK11_DeriveWithFlags()
 12874 ms  0x6ea2 basekey:0x7fc933aad680
 12874 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12874 ms  0x6ea2 ret:0x7fc930070e80
 12874 ms  0x6ea2 PR_Close()
 12874 ms  0x6ea2 fd:0x7fc92cb23220
 12874 ms     | 0x6ea2 PK11_Encrypt()
 12874 ms     | 0x6ea2 symkey:0x7fc92b98c900
 12877 ms  0x6ea2 PK11_Encrypt()
 12877 ms  0x6ea2 symkey:0x7fc92c79ae00
           /* TID 0x6eaa */
 12887 ms  0x6eaa PR_Close()
 12887 ms  0x6eaa fd:0x7fc92cb23310
 12890 ms  0x6eaa PR_Close()
 12890 ms  0x6eaa fd:0x7fc92c96f310
           /* TID 0x6ea2 */
 12916 ms  0x6ea2 PK11_Encrypt()
 12916 ms  0x6ea2 symkey:0x7fc9344c2780
           /* TID 0x6eaa */
 12917 ms  0x6eaa PR_Close()
 12917 ms  0x6eaa fd:0x7fc92c648a60
           /* TID 0x6f44 */
 12918 ms  0x6f44 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12918 ms  0x6f44 ret:0x0
           /* TID 0x6eaa */
 12918 ms  0x6eaa PR_Close()
 12918 ms  0x6eaa fd:0x7fc92676cbb0
           /* TID 0x6ea2 */
 12918 ms  0x6ea2 SSL_AuthCertificateComplete()
 12918 ms  0x6ea2 fd:0x7fc92f3b25e0
 12918 ms  0x6ea2 err:0x0
 12918 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12918 ms     | 0x6ea2 basekey:0x7fc92c4e1900
 12918 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12918 ms     | 0x6ea2 ret:0x7fc92870d400
 12918 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12918 ms     | 0x6ea2 basekey:0x7fc92c4e1900
 12918 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12918 ms     | 0x6ea2 ret:0x7fc9334fd980
 12918 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12918 ms     | 0x6ea2 basekey:0x7fc92c4e1900
 12918 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12918 ms     | 0x6ea2 ret:0x7fc933aac200
 12918 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12918 ms     | 0x6ea2 basekey:0x7fc933aaef80
 12918 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12918 ms     | 0x6ea2 ret:0x7fc933aad680
 12918 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12918 ms     | 0x6ea2 basekey:0x7fc933aaef80
 12918 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12918 ms     | 0x6ea2 ret:0x7fc933aadc00
 12918 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12918 ms     | 0x6ea2 basekey:0x7fc9334fd980
 12918 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12918 ms     | 0x6ea2 ret:0x7fc933aadc00
 12918 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12918 ms     | 0x6ea2 basekey:0x7fc9334fd980
 12918 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12918 ms     | 0x6ea2 ret:0x7fc92b98c900
 12918 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12918 ms     | 0x6ea2 basekey:0x7fc933aaef80
 12918 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12919 ms     | 0x6ea2 ret:0x7fc929681680
 12919 ms     | 0x6ea2 PK11_Encrypt()
 12919 ms     | 0x6ea2 symkey:0x7fc933aad680
 12919 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12919 ms     | 0x6ea2 basekey:0x7fc92870d400
 12919 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12919 ms     | 0x6ea2 ret:0x7fc929681680
 12919 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12919 ms     | 0x6ea2 basekey:0x7fc92870d400
 12919 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12919 ms     | 0x6ea2 ret:0x7fc92b98c900
 12919 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12919 ms     | 0x6ea2 basekey:0x7fc92c4e1900
 12919 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12919 ms     | 0x6ea2 ret:0x7fc933aad680
 12920 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12920 ms     | 0x6ea2 privk:0x7fc92f375820::7fc92f375820  40 f2 3f 2f                                      @.?/
 12920 ms     | 0x6ea2 privk:0x7fc92f375820::7fc92f375820  e5 e5 e5 e5                                      ....
 12920 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12920 ms     | 0x6ea2 privk:0x7fc92f36e820::7fc92f36e820  10 fa 3e 2f                                      ..>/
 12920 ms     | 0x6ea2 privk:0x7fc92f36e820::7fc92f36e820  e5 e5 e5 e5                                      ....
 12920 ms  0x6ea2 PK11_Encrypt()
 12920 ms  0x6ea2 symkey:0x7fc929681680
 12922 ms  0x6ea2 PK11_Encrypt()
 12922 ms  0x6ea2 symkey:0x7fc929681680
           /* TID 0x6eaa */
 12938 ms  0x6eaa PR_Close()
 12938 ms  0x6eaa fd:0x7fc92676cbb0
           /* TID 0x6f45 */
 12938 ms  0x6f45 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12939 ms  0x6f45 ret:0x0
           /* TID 0x6ea2 */
 12939 ms  0x6ea2 SSL_AuthCertificateComplete()
 12939 ms  0x6ea2 fd:0x7fc92f3dba00
 12939 ms  0x6ea2 err:0x0
 12939 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12939 ms     | 0x6ea2 basekey:0x7fc933aae400
 12939 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12939 ms     | 0x6ea2 ret:0x7fc92877c100
 12939 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12939 ms     | 0x6ea2 basekey:0x7fc933aae400
 12939 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12939 ms     | 0x6ea2 ret:0x7fc933aaef80
 12939 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12939 ms     | 0x6ea2 basekey:0x7fc933aae400
 12939 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12939 ms     | 0x6ea2 ret:0x7fc92c4e1900
 12939 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12939 ms     | 0x6ea2 basekey:0x7fc926466f00
 12939 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12939 ms     | 0x6ea2 ret:0x7fc92b98c900
 12939 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12939 ms     | 0x6ea2 basekey:0x7fc926466f00
 12939 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12939 ms     | 0x6ea2 ret:0x7fc930070e80
 12939 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12939 ms     | 0x6ea2 basekey:0x7fc933aaef80
 12939 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12939 ms     | 0x6ea2 ret:0x7fc930070e80
 12939 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12939 ms     | 0x6ea2 basekey:0x7fc933aaef80
 12939 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12939 ms     | 0x6ea2 ret:0x7fc9344c2180
 12939 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12939 ms     | 0x6ea2 basekey:0x7fc926466f00
 12939 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12939 ms     | 0x6ea2 ret:0x7fc933aae500
 12939 ms     | 0x6ea2 PK11_Encrypt()
 12939 ms     | 0x6ea2 symkey:0x7fc92b98c900
 12939 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12939 ms     | 0x6ea2 basekey:0x7fc92877c100
 12939 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12939 ms     | 0x6ea2 ret:0x7fc933aae500
 12939 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12939 ms     | 0x6ea2 basekey:0x7fc92877c100
 12939 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12939 ms     | 0x6ea2 ret:0x7fc9344c2180
 12939 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12939 ms     | 0x6ea2 basekey:0x7fc933aae400
 12939 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12939 ms     | 0x6ea2 ret:0x7fc92b98c900
 12940 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12940 ms     | 0x6ea2 privk:0x7fc92f443820::7fc92f443820  f0 b1 41 2f                                      ..A/
 12940 ms     | 0x6ea2 privk:0x7fc92f443820::7fc92f443820  e5 e5 e5 e5                                      ....
 12940 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12940 ms     | 0x6ea2 privk:0x7fc92f440820::7fc92f440820  f0 f6 3f 2f                                      ..?/
 12940 ms     | 0x6ea2 privk:0x7fc92f440820::7fc92f440820  e5 e5 e5 e5                                      ....
 12940 ms  0x6ea2 PK11_Encrypt()
 12940 ms  0x6ea2 symkey:0x7fc933aae500
 12940 ms  0x6ea2 PK11_Encrypt()
 12940 ms  0x6ea2 symkey:0x7fc933aae500
 12948 ms  0x6ea2 PK11_Encrypt()
 12948 ms  0x6ea2 symkey:0x7fc92870d300
           /* TID 0x6eaa */
 12951 ms  0x6eaa PR_Close()
 12951 ms  0x6eaa fd:0x7fc9282feee0
           /* TID 0x6eff */
 12951 ms  0x6eff _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12951 ms  0x6eff ret:0x0
           /* TID 0x6ea2 */
 12952 ms  0x6ea2 SSL_AuthCertificateComplete()
 12952 ms  0x6ea2 fd:0x7fc92f4bc280
 12952 ms  0x6ea2 err:0x0
 12952 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12952 ms     | 0x6ea2 basekey:0x7fc933aae680
 12952 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12952 ms     | 0x6ea2 ret:0x7fc9344c2100
 12952 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12952 ms     | 0x6ea2 basekey:0x7fc933aae680
 12952 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12952 ms     | 0x6ea2 ret:0x7fc926466f00
 12952 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12952 ms     | 0x6ea2 basekey:0x7fc933aae680
 12952 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12952 ms     | 0x6ea2 ret:0x7fc933aae400
 12952 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12952 ms     | 0x6ea2 basekey:0x7fc933aadb00
 12952 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12952 ms     | 0x6ea2 ret:0x7fc9344c2180
 12952 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12952 ms     | 0x6ea2 basekey:0x7fc933aadb00
 12952 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12952 ms     | 0x6ea2 ret:0x7fc92b98c880
 12952 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12952 ms     | 0x6ea2 basekey:0x7fc926466f00
 12952 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12952 ms     | 0x6ea2 ret:0x7fc92b98c880
 12952 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12952 ms     | 0x6ea2 basekey:0x7fc926466f00
 12952 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12952 ms     | 0x6ea2 ret:0x7fc92870de00
 12952 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12952 ms     | 0x6ea2 basekey:0x7fc933aadb00
 12952 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12952 ms     | 0x6ea2 ret:0x7fc933aae780
 12952 ms     | 0x6ea2 PK11_Encrypt()
 12952 ms     | 0x6ea2 symkey:0x7fc9344c2180
 12952 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12952 ms     | 0x6ea2 basekey:0x7fc9344c2100
 12952 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12952 ms     | 0x6ea2 ret:0x7fc933aae780
 12952 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12952 ms     | 0x6ea2 basekey:0x7fc9344c2100
 12952 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12952 ms     | 0x6ea2 ret:0x7fc92870de00
 12952 ms     | 0x6ea2 PK11_DeriveWithFlags()
 12952 ms     | 0x6ea2 basekey:0x7fc933aae680
 12952 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 12952 ms     | 0x6ea2 ret:0x7fc9344c2180
 12952 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12952 ms     | 0x6ea2 privk:0x7fc92ff15020::7fc92ff15020  b0 8f f7 2f                                      .../
 12952 ms     | 0x6ea2 privk:0x7fc92ff15020::7fc92ff15020  e5 e5 e5 e5                                      ....
 12953 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 12953 ms     | 0x6ea2 privk:0x7fc92ff12020::7fc92ff12020  d0 7d 4d 2f                                      .}M/
 12953 ms     | 0x6ea2 privk:0x7fc92ff12020::7fc92ff12020  e5 e5 e5 e5                                      ....
 12954 ms  0x6ea2 PK11_Encrypt()
 12954 ms  0x6ea2 symkey:0x7fc933aae780
 12954 ms  0x6ea2 PK11_Encrypt()
 12954 ms  0x6ea2 symkey:0x7fc929681680
 12957 ms  0x6ea2 PK11_DeriveWithFlags()
 12957 ms  0x6ea2 basekey:0x7fc933aad680
 12957 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12957 ms  0x6ea2 ret:0x7fc9262e8d00
 12957 ms  0x6ea2 PK11_DeriveWithFlags()
 12957 ms  0x6ea2 basekey:0x7fc933aad680
 12957 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12957 ms  0x6ea2 ret:0x7fc9262e8d00
 12957 ms  0x6ea2 PK11_Encrypt()
 12957 ms  0x6ea2 symkey:0x7fc929681680
 12968 ms  0x6ea2 PK11_Encrypt()
 12968 ms  0x6ea2 symkey:0x7fc929681180
           /* TID 0x6eaa */
 12969 ms  0x6eaa PR_Close()
 12969 ms  0x6eaa fd:0x7fc9282fe6a0
           /* TID 0x6ea2 */
 12977 ms  0x6ea2 PK11_DeriveWithFlags()
 12977 ms  0x6ea2 basekey:0x7fc92b98c900
 12978 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12978 ms  0x6ea2 ret:0x7fc9262e8d00
 12978 ms  0x6ea2 PK11_DeriveWithFlags()
 12978 ms  0x6ea2 basekey:0x7fc92b98c900
 12978 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12978 ms  0x6ea2 ret:0x7fc9262e8d00
 12978 ms  0x6ea2 PK11_Encrypt()
 12978 ms  0x6ea2 symkey:0x7fc933aae500
 12989 ms  0x6ea2 PK11_Encrypt()
 12989 ms  0x6ea2 symkey:0x7fc9344c2780
 12990 ms  0x6ea2 PK11_DeriveWithFlags()
 12990 ms  0x6ea2 basekey:0x7fc9344c2180
 12990 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12990 ms  0x6ea2 ret:0x7fc9262e8d00
 12990 ms  0x6ea2 PK11_DeriveWithFlags()
 12990 ms  0x6ea2 basekey:0x7fc9344c2180
 12990 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 12990 ms  0x6ea2 ret:0x7fc9262e8d00
 12990 ms  0x6ea2 PR_Close()
 12990 ms  0x6ea2 fd:0x7fc92f4bc280
 12990 ms     | 0x6ea2 PK11_Encrypt()
 12990 ms     | 0x6ea2 symkey:0x7fc933aae780
 12999 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 12999 ms  0x6ea2 privk:0x7fc915553820::7fc915553820  a0 56 e3 27                                      .V.'
 12999 ms  0x6ea2 privk:0x7fc915553820::7fc915553820  e5 e5 e5 e5                                      ....
 12999 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 12999 ms  0x6ea2 privk:0x7fc91554c820::7fc91554c820  90 47 b2 27                                      .G.'
 12999 ms  0x6ea2 privk:0x7fc91554c820::7fc91554c820  e5 e5 e5 e5                                      ....
 13014 ms  0x6ea2 PK11_Encrypt()
 13014 ms  0x6ea2 symkey:0x7fc929681680
 13014 ms  0x6ea2 PK11_Encrypt()
 13014 ms  0x6ea2 symkey:0x7fc92c79ae00
           /* TID 0x6eaa */
 13016 ms  0x6eaa PR_Close()
 13016 ms  0x6eaa fd:0x7fc92c4fa370
           /* TID 0x6ea2 */
 13016 ms  0x6ea2 PK11_Encrypt()
 13016 ms  0x6ea2 symkey:0x7fc929681680
 13017 ms  0x6ea2 PK11_Encrypt()
 13017 ms  0x6ea2 symkey:0x7fc929681680
 13026 ms  0x6ea2 PK11_Encrypt()
 13026 ms  0x6ea2 symkey:0x7fc933aae500
           /* TID 0x6eaa */
 13027 ms  0x6eaa PR_Close()
 13027 ms  0x6eaa fd:0x7fc9282feee0
           /* TID 0x6ea2 */
 13033 ms  0x6ea2 PK11_Encrypt()
 13033 ms  0x6ea2 symkey:0x7fc9344c2780
           /* TID 0x6eaa */
 13053 ms  0x6eaa PR_Close()
 13053 ms  0x6eaa fd:0x7fc92c406a00
           /* TID 0x6ea2 */
 13081 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 13081 ms  0x6ea2 privk:0x7fc92cb8e820::7fc92cb8e820  d0 68 9c 2c                                      .h.,
 13082 ms  0x6ea2 privk:0x7fc92cb8e820::7fc92cb8e820  e5 e5 e5 e5                                      ....
 13082 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 13082 ms  0x6ea2 privk:0x7fc92cb89820::7fc92cb89820  50 66 9c 2c                                      Pf.,
 13082 ms  0x6ea2 privk:0x7fc92cb89820::7fc92cb89820  e5 e5 e5 e5                                      ....
 13091 ms  0x6ea2 PK11_Encrypt()
 13091 ms  0x6ea2 symkey:0x7fc929681680
 13092 ms  0x6ea2 PK11_Encrypt()
 13092 ms  0x6ea2 symkey:0x7fc9344c2780
 13146 ms  0x6ea2 PK11_Encrypt()
 13146 ms  0x6ea2 symkey:0x7fc9344c2780
 13183 ms  0x6ea2 PK11_Encrypt()
 13183 ms  0x6ea2 symkey:0x7fc9344c2780
           /* TID 0x6eaa */
 13184 ms  0x6eaa PR_Close()
 13184 ms  0x6eaa fd:0x7fc92caabee0
           /* TID 0x6ea2 */
 13184 ms  0x6ea2 PK11_Encrypt()
 13184 ms  0x6ea2 symkey:0x7fc9344c2780
 13201 ms  0x6ea2 SSL_ImportFD()
 13201 ms  0x6ea2 ret:0x7fc92f3db370
 13201 ms  0x6ea2 SSL_AuthCertificateHook()
 13201 ms  0x6ea2 fd:0x7fc92f3db370
 13201 ms  0x6ea2 ret:0x0
 13201 ms  0x6ea2 PR_Connect()
 13201 ms  0x6ea2 fd:0x7fc92f3db370
 13237 ms  0x6ea2 PK11_Encrypt()
 13237 ms  0x6ea2 symkey:0x7fc9344c2780
 13238 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13238 ms  0x6ea2 cx:0x7fc92b8144a8
 13239 ms     | 0x6ea2 EC_ValidatePublicKey()
 13239 ms     | 0x6ea2 ret:0x0
 13239 ms  0x6ea2 ret:0x7fc92cb88820::7fc92cb88820  80 58 e3 27                                      .X.'
 13239 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13239 ms  0x6ea2 cx:0x7fc92b8144a8
 13240 ms     | 0x6ea2 EC_ValidatePublicKey()
 13241 ms     | 0x6ea2 ret:0x0
 13241 ms  0x6ea2 ret:0x7fc92cb8d820::7fc92cb8d820  30 bd 7f 2c                                      0..,
           /* TID 0x6eaa */
 13248 ms  0x6eaa PR_Close()
 13248 ms  0x6eaa fd:0x7fc92c648a60
           /* TID 0x6ea2 */
 13264 ms  0x6ea2 PR_Close()
 13264 ms  0x6ea2 fd:0x7fc92f3db370
 13265 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13265 ms     | 0x6ea2 privk:0x7fc92cb8d820::7fc92cb8d820  30 bd 7f 2c                                      0..,
 13265 ms     | 0x6ea2 privk:0x7fc92cb8d820::7fc92cb8d820  e5 e5 e5 e5                                      ....
 13265 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13265 ms     | 0x6ea2 privk:0x7fc92cb88820::7fc92cb88820  80 58 e3 27                                      .X.'
 13265 ms     | 0x6ea2 privk:0x7fc92cb88820::7fc92cb88820  e5 e5 e5 e5                                      ....
           /* TID 0x6eaa */
 13281 ms  0x6eaa PR_Close()
 13281 ms  0x6eaa fd:0x7fc92caaba30
           /* TID 0x6ea2 */
 13284 ms  0x6ea2 SSL_ImportFD()
 13284 ms  0x6ea2 ret:0x7fc9300af8e0
 13284 ms  0x6ea2 SSL_AuthCertificateHook()
 13284 ms  0x6ea2 fd:0x7fc9300af8e0
 13284 ms  0x6ea2 ret:0x0
 13284 ms  0x6ea2 PR_Connect()
 13284 ms  0x6ea2 fd:0x7fc9300af8e0
           /* TID 0x6eaa */
 13294 ms  0x6eaa PR_Close()
 13294 ms  0x6eaa fd:0x7fc9300c4940
           /* TID 0x6ea2 */
 13314 ms  0x6ea2 SSL_ImportFD()
 13314 ms  0x6ea2 ret:0x7fc9300effd0
 13314 ms  0x6ea2 SSL_AuthCertificateHook()
 13314 ms  0x6ea2 fd:0x7fc9300effd0
 13314 ms  0x6ea2 ret:0x0
 13314 ms  0x6ea2 PR_Connect()
 13314 ms  0x6ea2 fd:0x7fc9300effd0
           /* TID 0x6eaa */
 13319 ms  0x6eaa PR_Close()
 13319 ms  0x6eaa fd:0x7fc9304a8fd0
           /* TID 0x6ea2 */
 13319 ms  0x6ea2 PK11_Encrypt()
 13319 ms  0x6ea2 symkey:0x7fc933aae500
 13320 ms  0x6ea2 SSL_ImportFD()
 13320 ms  0x6ea2 ret:0x7fc930a96820
 13320 ms  0x6ea2 SSL_AuthCertificateHook()
 13320 ms  0x6ea2 fd:0x7fc930a96820
 13320 ms  0x6ea2 ret:0x0
 13320 ms  0x6ea2 PR_Connect()
 13320 ms  0x6ea2 fd:0x7fc930a96820
 13320 ms  0x6ea2 SSL_ImportFD()
 13320 ms  0x6ea2 ret:0x7fc930482ee0
 13320 ms  0x6ea2 SSL_AuthCertificateHook()
 13320 ms  0x6ea2 fd:0x7fc930482ee0
 13320 ms  0x6ea2 ret:0x0
 13320 ms  0x6ea2 PR_Connect()
 13320 ms  0x6ea2 fd:0x7fc930482ee0
 13320 ms  0x6ea2 SSL_ImportFD()
 13320 ms  0x6ea2 ret:0x7fc9300eff10
 13320 ms  0x6ea2 SSL_AuthCertificateHook()
 13320 ms  0x6ea2 fd:0x7fc9300eff10
 13321 ms  0x6ea2 ret:0x0
 13321 ms  0x6ea2 PR_Connect()
 13321 ms  0x6ea2 fd:0x7fc9300eff10
 13321 ms  0x6ea2 SSL_ImportFD()
 13321 ms  0x6ea2 ret:0x7fc9304a8fd0
 13321 ms  0x6ea2 SSL_AuthCertificateHook()
 13321 ms  0x6ea2 fd:0x7fc9304a8fd0
 13321 ms  0x6ea2 ret:0x0
 13321 ms  0x6ea2 PR_Connect()
 13321 ms  0x6ea2 fd:0x7fc9304a8fd0
 13321 ms  0x6ea2 SSL_ImportFD()
 13321 ms  0x6ea2 ret:0x7fc930a96400
 13321 ms  0x6ea2 SSL_AuthCertificateHook()
 13321 ms  0x6ea2 fd:0x7fc930a96400
 13321 ms  0x6ea2 ret:0x0
 13321 ms  0x6ea2 PR_Connect()
 13321 ms  0x6ea2 fd:0x7fc930a96400
 13321 ms  0x6ea2 SSL_ImportFD()
 13321 ms  0x6ea2 ret:0x7fc930a96670
 13321 ms  0x6ea2 SSL_AuthCertificateHook()
 13321 ms  0x6ea2 fd:0x7fc930a96670
 13321 ms  0x6ea2 ret:0x0
 13321 ms  0x6ea2 PR_Connect()
 13321 ms  0x6ea2 fd:0x7fc930a96670
 13322 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13322 ms  0x6ea2 cx:0x7fc92b8144a8
 13322 ms     | 0x6ea2 EC_ValidatePublicKey()
 13322 ms     | 0x6ea2 ret:0x0
 13322 ms  0x6ea2 ret:0x7fc92cbeb020::7fc92cbeb020  00 66 9c 2c                                      .f.,
 13322 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13322 ms  0x6ea2 cx:0x7fc92b8144a8
 13323 ms     | 0x6ea2 EC_ValidatePublicKey()
 13324 ms     | 0x6ea2 ret:0x0
 13324 ms  0x6ea2 ret:0x7fc92cbed820::7fc92cbed820  30 68 9c 2c                                      0h.,
 13352 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13352 ms  0x6ea2 cx:0x7fc92b814b28
 13353 ms     | 0x6ea2 EC_ValidatePublicKey()
 13353 ms     | 0x6ea2 ret:0x0
 13353 ms  0x6ea2 ret:0x7fc92cbf1820::7fc92cbf1820  10 6a 9c 2c                                      .j.,
 13353 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13353 ms  0x6ea2 cx:0x7fc92b814b28
 13353 ms     | 0x6ea2 EC_ValidatePublicKey()
 13355 ms     | 0x6ea2 ret:0x0
 13355 ms  0x6ea2 ret:0x7fc92f36f020::7fc92f36f020  d0 6d 9c 2c                                      .m.,
 13358 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13358 ms  0x6ea2 cx:0x7fc92c7e7248
 13359 ms     | 0x6ea2 EC_ValidatePublicKey()
 13359 ms     | 0x6ea2 ret:0x0
 13359 ms  0x6ea2 ret:0x7fc92f43f020::7fc92f43f020  60 fa 9c 2c                                      `..,
 13359 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13359 ms  0x6ea2 cx:0x7fc92c7e7248
 13359 ms     | 0x6ea2 EC_ValidatePublicKey()
 13361 ms     | 0x6ea2 ret:0x0
 13361 ms  0x6ea2 ret:0x7fc92f442020::7fc92f442020  a0 8b a1 2c                                      ...,
 13364 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13364 ms  0x6ea2 cx:0x7fc92b814e68
 13365 ms     | 0x6ea2 EC_ValidatePublicKey()
 13365 ms     | 0x6ea2 ret:0x0
 13365 ms  0x6ea2 ret:0x7fc92ff0a820::7fc92ff0a820  70 be a1 2c                                      p..,
 13365 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13365 ms  0x6ea2 cx:0x7fc92b814e68
 13366 ms     | 0x6ea2 EC_ValidatePublicKey()
 13367 ms     | 0x6ea2 ret:0x0
 13367 ms  0x6ea2 ret:0x7fc92ff0c820::7fc92ff0c820  c0 99 ab 2c                                      ...,
 13367 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13367 ms  0x6ea2 cx:0x7fc92b814cc8
 13368 ms     | 0x6ea2 EC_ValidatePublicKey()
 13368 ms     | 0x6ea2 ret:0x0
 13368 ms  0x6ea2 ret:0x7fc92ff13020::7fc92ff13020  c0 c4 ac 2c                                      ...,
 13368 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13368 ms  0x6ea2 cx:0x7fc92b814cc8
 13369 ms     | 0x6ea2 EC_ValidatePublicKey()
 13370 ms     | 0x6ea2 ret:0x0
 13370 ms  0x6ea2 ret:0x7fc92ff1b020::7fc92ff1b020  60 05 b2 2c                                      `..,
 13379 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13379 ms  0x6ea2 cx:0x7fc92c7e7728
 13380 ms     | 0x6ea2 EC_ValidatePublicKey()
 13380 ms     | 0x6ea2 ret:0x0
 13380 ms  0x6ea2 ret:0x7fc92ff1f020::7fc92ff1f020  30 5d bc 2c                                      0].,
 13380 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13380 ms  0x6ea2 cx:0x7fc92c7e7728
 13381 ms     | 0x6ea2 EC_ValidatePublicKey()
 13382 ms     | 0x6ea2 ret:0x0
 13382 ms  0x6ea2 ret:0x7fc9304df020::7fc9304df020  10 ca 3d 2f                                      ..=/
 13383 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13383 ms  0x6ea2 cx:0x7fc92c7e7588
 13383 ms     | 0x6ea2 EC_ValidatePublicKey()
 13383 ms     | 0x6ea2 ret:0x0
 13383 ms  0x6ea2 ret:0x7fc930585020::7fc930585020  10 fa 3e 2f                                      ..>/
 13383 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13383 ms  0x6ea2 cx:0x7fc92c7e7588
 13384 ms     | 0x6ea2 EC_ValidatePublicKey()
 13385 ms     | 0x6ea2 ret:0x0
 13385 ms  0x6ea2 ret:0x7fc93058a820::7fc93058a820  40 f2 3f 2f                                      @.?/
 13386 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13386 ms  0x6ea2 cx:0x7fc92c7e73e8
 13386 ms     | 0x6ea2 EC_ValidatePublicKey()
 13386 ms     | 0x6ea2 ret:0x0
 13386 ms  0x6ea2 ret:0x7fc93058d020::7fc93058d020  f0 f6 3f 2f                                      ..?/
 13386 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13386 ms  0x6ea2 cx:0x7fc92c7e73e8
 13387 ms     | 0x6ea2 EC_ValidatePublicKey()
 13388 ms     | 0x6ea2 ret:0x0
 13388 ms  0x6ea2 ret:0x7fc93058f020::7fc93058f020  f0 b1 41 2f                                      ..A/
 13390 ms  0x6ea2 PK11_Encrypt()
 13390 ms  0x6ea2 symkey:0x7fc933aae500
 13390 ms  0x6ea2 PK11_Derive()
 13390 ms  0x6ea2 basekey:0x7fc933aae400
 13390 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13390 ms  0x6ea2 ret:0x7fc926466f00
 13390 ms  0x6ea2 PK11_PubDeriveWithKDF()
 13390 ms  0x6ea2 seckey:0x7fc92cbeb020
 13390 ms     | 0x6ea2 EC_ValidatePublicKey()
 13390 ms     | 0x6ea2 ret:0x0
 13390 ms  0x6ea2 ret:0x7fc933aae400
 13390 ms  SECKEY_ECParamsToKeySize()
 13390 ms  0x6ea2 ret:0xff
 13390 ms  0x6ea2 PK11_DeriveWithFlags()
 13390 ms  0x6ea2 basekey:0x7fc926466f00
 13390 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13390 ms  0x6ea2 ret:0x7fc9344c2100
 13390 ms  0x6ea2 PK11_Derive()
 13390 ms  0x6ea2 basekey:0x7fc933aae400
 13390 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13390 ms  0x6ea2 ret:0x7fc9344c2180
 13390 ms  0x6ea2 PK11_DeriveWithFlags()
 13390 ms  0x6ea2 basekey:0x7fc9344c2180
 13390 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13390 ms  0x6ea2 ret:0x7fc926466f00
 13390 ms  0x6ea2 PK11_DeriveWithFlags()
 13390 ms  0x6ea2 basekey:0x7fc9344c2180
 13390 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13390 ms  0x6ea2 ret:0x7fc933aae400
 13390 ms  0x6ea2 PK11_DeriveWithFlags()
 13390 ms  0x6ea2 basekey:0x7fc9344c2180
 13390 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13390 ms  0x6ea2 ret:0x7fc9344c2100
 13391 ms  0x6ea2 PK11_Derive()
 13391 ms  0x6ea2 basekey:0x7fc92b98c880
 13391 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13391 ms  0x6ea2 ret:0x7fc933aae780
 13391 ms  0x6ea2 PK11_DeriveWithFlags()
 13391 ms  0x6ea2 basekey:0x7fc933aae400
 13391 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13391 ms  0x6ea2 ret:0x7fc9344c2180
 13391 ms  0x6ea2 PK11_DeriveWithFlags()
 13391 ms  0x6ea2 basekey:0x7fc933aae400
 13391 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13391 ms  0x6ea2 ret:0x7fc9344c2100
 13392 ms  SECKEY_ECParamsToKeySize()
 13392 ms  0x6ea2 ret:0x100
 13392 ms  SECKEY_ECParamsToBasePointOrderLen()
 13392 ms  0x6ea2 ret:0x100
 13392 ms  SECKEY_ECParamsToBasePointOrderLen()
 13392 ms  0x6ea2 ret:0x100
 13392 ms  0x6ea2 EC_ValidatePublicKey()
 13393 ms  0x6ea2 ret:0x0
 13395 ms  0x6ea2 PK11_DeriveWithFlags()
 13395 ms  0x6ea2 basekey:0x7fc933aae400
 13395 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13395 ms  0x6ea2 ret:0x7fc9344c2100
 13396 ms  0x6ea2 SSL_ImportFD()
 13396 ms  0x6ea2 ret:0x7fc930d3aaf0
 13396 ms  0x6ea2 SSL_AuthCertificateHook()
 13396 ms  0x6ea2 fd:0x7fc930d3aaf0
 13396 ms  0x6ea2 ret:0x0
 13396 ms  0x6ea2 PR_Connect()
 13396 ms  0x6ea2 fd:0x7fc930d3aaf0
 13410 ms  0x6ea2 PK11_Derive()
 13410 ms  0x6ea2 basekey:0x7fc9344c2100
 13410 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13410 ms  0x6ea2 ret:0x7fc92b98c880
 13410 ms  0x6ea2 PK11_PubDeriveWithKDF()
 13410 ms  0x6ea2 seckey:0x7fc92cbf1820
 13410 ms     | 0x6ea2 EC_ValidatePublicKey()
 13410 ms     | 0x6ea2 ret:0x0
 13411 ms  0x6ea2 ret:0x7fc9344c2100
 13411 ms  SECKEY_ECParamsToKeySize()
 13411 ms  0x6ea2 ret:0xff
 13411 ms  0x6ea2 PK11_DeriveWithFlags()
 13411 ms  0x6ea2 basekey:0x7fc92b98c880
 13411 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13411 ms  0x6ea2 ret:0x7fc9262e8d00
 13411 ms  0x6ea2 PK11_Derive()
 13411 ms  0x6ea2 basekey:0x7fc9344c2100
 13411 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13411 ms  0x6ea2 ret:0x7fc933aadb00
 13411 ms  0x6ea2 PK11_DeriveWithFlags()
 13411 ms  0x6ea2 basekey:0x7fc933aadb00
 13411 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13411 ms  0x6ea2 ret:0x7fc92b98c880
 13411 ms  0x6ea2 PK11_DeriveWithFlags()
 13411 ms  0x6ea2 basekey:0x7fc933aadb00
 13411 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13411 ms  0x6ea2 ret:0x7fc9344c2100
 13411 ms  0x6ea2 PK11_DeriveWithFlags()
 13411 ms  0x6ea2 basekey:0x7fc933aadb00
 13411 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13411 ms  0x6ea2 ret:0x7fc9262e8d00
 13411 ms  0x6ea2 PK11_Derive()
 13411 ms  0x6ea2 basekey:0x7fc933aae680
 13411 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13411 ms  0x6ea2 ret:0x7fc92870de00
 13411 ms  0x6ea2 PK11_DeriveWithFlags()
 13411 ms  0x6ea2 basekey:0x7fc9344c2100
 13411 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13411 ms  0x6ea2 ret:0x7fc933aadb00
 13411 ms  0x6ea2 PK11_DeriveWithFlags()
 13411 ms  0x6ea2 basekey:0x7fc9344c2100
 13411 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13411 ms  0x6ea2 ret:0x7fc9262e8d00
 13412 ms  0x6ea2 PK11_DeriveWithFlags()
 13412 ms  0x6ea2 basekey:0x7fc9344c2100
 13412 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13412 ms  0x6ea2 ret:0x7fc9262e8d00
 13415 ms  0x6ea2 PK11_Derive()
 13415 ms  0x6ea2 basekey:0x7fc9262e8d00
 13415 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13416 ms  0x6ea2 ret:0x7fc933aae680
 13416 ms  0x6ea2 PK11_PubDeriveWithKDF()
 13416 ms  0x6ea2 seckey:0x7fc92f43f020
 13416 ms     | 0x6ea2 EC_ValidatePublicKey()
 13416 ms     | 0x6ea2 ret:0x0
 13416 ms  0x6ea2 ret:0x7fc9262e8d00
 13416 ms  SECKEY_ECParamsToKeySize()
 13416 ms  0x6ea2 ret:0xff
 13416 ms  0x6ea2 PK11_DeriveWithFlags()
 13416 ms  0x6ea2 basekey:0x7fc933aae680
 13416 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13416 ms  0x6ea2 ret:0x7fc92877bc00
 13416 ms  0x6ea2 PK11_Derive()
 13416 ms  0x6ea2 basekey:0x7fc9262e8d00
 13416 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13416 ms  0x6ea2 ret:0x7fc933aadd80
 13416 ms  0x6ea2 PK11_DeriveWithFlags()
 13416 ms  0x6ea2 basekey:0x7fc933aadd80
 13416 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13416 ms  0x6ea2 ret:0x7fc933aae680
 13416 ms  0x6ea2 PK11_DeriveWithFlags()
 13416 ms  0x6ea2 basekey:0x7fc933aadd80
 13416 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13416 ms  0x6ea2 ret:0x7fc9262e8d00
 13416 ms  0x6ea2 PK11_DeriveWithFlags()
 13416 ms  0x6ea2 basekey:0x7fc933aadd80
 13416 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13416 ms  0x6ea2 ret:0x7fc92877bc00
 13416 ms  0x6ea2 PK11_Derive()
 13416 ms  0x6ea2 basekey:0x7fc934668080
 13416 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13416 ms  0x6ea2 ret:0x7fc934668100
 13416 ms  0x6ea2 PK11_DeriveWithFlags()
 13416 ms  0x6ea2 basekey:0x7fc9262e8d00
 13416 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13416 ms  0x6ea2 ret:0x7fc933aadd80
 13416 ms  0x6ea2 PK11_DeriveWithFlags()
 13416 ms  0x6ea2 basekey:0x7fc9262e8d00
 13416 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13416 ms  0x6ea2 ret:0x7fc92877bc00
 13422 ms  0x6ea2 PK11_DeriveWithFlags()
 13422 ms  0x6ea2 basekey:0x7fc9262e8d00
 13422 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13422 ms  0x6ea2 ret:0x7fc92877bc00
 13423 ms  0x6ea2 PK11_Derive()
 13423 ms  0x6ea2 basekey:0x7fc92877bc00
 13423 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13423 ms  0x6ea2 ret:0x7fc934668080
 13423 ms  0x6ea2 PK11_PubDeriveWithKDF()
 13423 ms  0x6ea2 seckey:0x7fc92ff0a820
 13423 ms     | 0x6ea2 EC_ValidatePublicKey()
 13423 ms     | 0x6ea2 ret:0x0
 13424 ms  0x6ea2 ret:0x7fc92877bc00
 13424 ms  SECKEY_ECParamsToKeySize()
 13424 ms  0x6ea2 ret:0xff
 13424 ms  0x6ea2 PK11_DeriveWithFlags()
 13424 ms  0x6ea2 basekey:0x7fc934668080
 13424 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13424 ms  0x6ea2 ret:0x7fc934668400
 13424 ms  0x6ea2 PK11_Derive()
 13424 ms  0x6ea2 basekey:0x7fc92877bc00
 13424 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13424 ms  0x6ea2 ret:0x7fc934668480
 13424 ms  0x6ea2 PK11_DeriveWithFlags()
 13424 ms  0x6ea2 basekey:0x7fc934668480
 13424 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13424 ms  0x6ea2 ret:0x7fc934668080
 13424 ms  0x6ea2 PK11_DeriveWithFlags()
 13424 ms  0x6ea2 basekey:0x7fc934668480
 13424 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13424 ms  0x6ea2 ret:0x7fc92877bc00
 13424 ms  0x6ea2 PK11_DeriveWithFlags()
 13424 ms  0x6ea2 basekey:0x7fc934668480
 13424 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13424 ms  0x6ea2 ret:0x7fc934668400
 13424 ms  0x6ea2 PK11_Derive()
 13424 ms  0x6ea2 basekey:0x7fc934668500
 13424 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13424 ms  0x6ea2 ret:0x7fc934668580
 13424 ms  0x6ea2 PK11_DeriveWithFlags()
 13424 ms  0x6ea2 basekey:0x7fc92877bc00
 13424 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13424 ms  0x6ea2 ret:0x7fc934668480
 13424 ms  0x6ea2 PK11_DeriveWithFlags()
 13424 ms  0x6ea2 basekey:0x7fc92877bc00
 13424 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13424 ms  0x6ea2 ret:0x7fc934668400
 13425 ms  0x6ea2 PK11_Derive()
 13425 ms  0x6ea2 basekey:0x7fc934668400
 13425 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13425 ms  0x6ea2 ret:0x7fc934668500
 13425 ms  0x6ea2 PK11_PubDeriveWithKDF()
 13425 ms  0x6ea2 seckey:0x7fc92ff13020
 13425 ms     | 0x6ea2 EC_ValidatePublicKey()
 13425 ms     | 0x6ea2 ret:0x0
 13426 ms  0x6ea2 ret:0x7fc934668400
 13426 ms  SECKEY_ECParamsToKeySize()
 13426 ms  0x6ea2 ret:0xff
 13426 ms  0x6ea2 PK11_DeriveWithFlags()
 13426 ms  0x6ea2 basekey:0x7fc934668500
 13426 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13426 ms  0x6ea2 ret:0x7fc934668600
 13426 ms  0x6ea2 PK11_Derive()
 13426 ms  0x6ea2 basekey:0x7fc934668400
 13426 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13426 ms  0x6ea2 ret:0x7fc934668680
 13426 ms  0x6ea2 PK11_DeriveWithFlags()
 13426 ms  0x6ea2 basekey:0x7fc934668680
 13426 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13426 ms  0x6ea2 ret:0x7fc934668500
 13426 ms  0x6ea2 PK11_DeriveWithFlags()
 13426 ms  0x6ea2 basekey:0x7fc934668680
 13426 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13426 ms  0x6ea2 ret:0x7fc934668400
 13426 ms  0x6ea2 PK11_DeriveWithFlags()
 13426 ms  0x6ea2 basekey:0x7fc934668680
 13426 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13426 ms  0x6ea2 ret:0x7fc934668600
 13426 ms  0x6ea2 PK11_Derive()
 13426 ms  0x6ea2 basekey:0x7fc934668700
 13426 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13426 ms  0x6ea2 ret:0x7fc934668780
 13426 ms  0x6ea2 PK11_DeriveWithFlags()
 13426 ms  0x6ea2 basekey:0x7fc934668400
 13426 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13426 ms  0x6ea2 ret:0x7fc934668680
 13426 ms  0x6ea2 PK11_DeriveWithFlags()
 13426 ms  0x6ea2 basekey:0x7fc934668400
 13426 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13426 ms  0x6ea2 ret:0x7fc934668600
 13429 ms  0x6ea2 PK11_DeriveWithFlags()
 13429 ms  0x6ea2 basekey:0x7fc92877bc00
 13429 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13429 ms  0x6ea2 ret:0x7fc934668600
 13438 ms  0x6ea2 PK11_DeriveWithFlags()
 13438 ms  0x6ea2 basekey:0x7fc934668400
 13438 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13438 ms  0x6ea2 ret:0x7fc934668600
 13438 ms  0x6ea2 PK11_Derive()
 13438 ms  0x6ea2 basekey:0x7fc934668600
 13438 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13438 ms  0x6ea2 ret:0x7fc934668700
 13438 ms  0x6ea2 PK11_PubDeriveWithKDF()
 13438 ms  0x6ea2 seckey:0x7fc92ff1f020
 13438 ms     | 0x6ea2 EC_ValidatePublicKey()
 13438 ms     | 0x6ea2 ret:0x0
 13443 ms  0x6ea2 ret:0x7fc934668600
 13443 ms  SECKEY_ECParamsToKeySize()
 13443 ms  0x6ea2 ret:0xff
 13443 ms  0x6ea2 PK11_DeriveWithFlags()
 13443 ms  0x6ea2 basekey:0x7fc934668700
 13443 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13443 ms  0x6ea2 ret:0x7fc934668980
 13443 ms  0x6ea2 PK11_Derive()
 13443 ms  0x6ea2 basekey:0x7fc934668600
 13443 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13443 ms  0x6ea2 ret:0x7fc934668a00
 13443 ms  0x6ea2 PK11_DeriveWithFlags()
 13443 ms  0x6ea2 basekey:0x7fc934668a00
 13443 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13443 ms  0x6ea2 ret:0x7fc934668700
 13443 ms  0x6ea2 PK11_DeriveWithFlags()
 13443 ms  0x6ea2 basekey:0x7fc934668a00
 13443 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13443 ms  0x6ea2 ret:0x7fc934668600
 13443 ms  0x6ea2 PK11_DeriveWithFlags()
 13443 ms  0x6ea2 basekey:0x7fc934668a00
 13443 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13443 ms  0x6ea2 ret:0x7fc934668980
 13443 ms  0x6ea2 PK11_Derive()
 13443 ms  0x6ea2 basekey:0x7fc934668a80
 13443 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13443 ms  0x6ea2 ret:0x7fc934668b00
 13443 ms  0x6ea2 PK11_DeriveWithFlags()
 13443 ms  0x6ea2 basekey:0x7fc934668600
 13443 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13443 ms  0x6ea2 ret:0x7fc934668a00
 13443 ms  0x6ea2 PK11_DeriveWithFlags()
 13443 ms  0x6ea2 basekey:0x7fc934668600
 13443 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13443 ms  0x6ea2 ret:0x7fc934668980
 13444 ms  0x6ea2 PK11_DeriveWithFlags()
 13444 ms  0x6ea2 basekey:0x7fc934668600
 13444 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13444 ms  0x6ea2 ret:0x7fc934668980
           /* TID 0x6eaa */
 13445 ms  0x6eaa PR_Close()
 13445 ms  0x6eaa fd:0x7fc930781790
           /* TID 0x6ea2 */
 13446 ms  0x6ea2 PK11_Derive()
 13446 ms  0x6ea2 basekey:0x7fc934668980
 13446 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13446 ms  0x6ea2 ret:0x7fc934668a80
 13446 ms  0x6ea2 PK11_PubDeriveWithKDF()
 13446 ms  0x6ea2 seckey:0x7fc930585020
 13446 ms     | 0x6ea2 EC_ValidatePublicKey()
 13446 ms     | 0x6ea2 ret:0x0
 13447 ms  0x6ea2 ret:0x7fc934668980
 13447 ms  SECKEY_ECParamsToKeySize()
 13447 ms  0x6ea2 ret:0xff
 13447 ms  0x6ea2 PK11_DeriveWithFlags()
 13447 ms  0x6ea2 basekey:0x7fc934668a80
 13447 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13447 ms  0x6ea2 ret:0x7fc929670d80
 13447 ms  0x6ea2 PK11_Derive()
 13447 ms  0x6ea2 basekey:0x7fc934668980
 13447 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13448 ms  0x6ea2 ret:0x7fc934668c00
 13448 ms  0x6ea2 PK11_DeriveWithFlags()
 13448 ms  0x6ea2 basekey:0x7fc934668c00
 13448 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13448 ms  0x6ea2 ret:0x7fc934668a80
 13448 ms  0x6ea2 PK11_DeriveWithFlags()
 13448 ms  0x6ea2 basekey:0x7fc934668c00
 13448 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13448 ms  0x6ea2 ret:0x7fc934668980
 13448 ms  0x6ea2 PK11_DeriveWithFlags()
 13448 ms  0x6ea2 basekey:0x7fc934668c00
 13448 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13448 ms  0x6ea2 ret:0x7fc929670d80
 13448 ms  0x6ea2 PK11_Derive()
 13448 ms  0x6ea2 basekey:0x7fc934668e00
 13448 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13448 ms  0x6ea2 ret:0x7fc934668e80
 13448 ms  0x6ea2 PK11_DeriveWithFlags()
 13448 ms  0x6ea2 basekey:0x7fc934668980
 13448 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13448 ms  0x6ea2 ret:0x7fc934668c00
 13448 ms  0x6ea2 PK11_DeriveWithFlags()
 13448 ms  0x6ea2 basekey:0x7fc934668980
 13448 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13448 ms  0x6ea2 ret:0x7fc929670d80
 13449 ms  0x6ea2 PK11_DeriveWithFlags()
 13449 ms  0x6ea2 basekey:0x7fc934668980
 13449 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13449 ms  0x6ea2 ret:0x7fc929670d80
 13449 ms  0x6ea2 PK11_Derive()
 13449 ms  0x6ea2 basekey:0x7fc929670d80
 13449 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13449 ms  0x6ea2 ret:0x7fc934668e00
 13449 ms  0x6ea2 PK11_PubDeriveWithKDF()
 13449 ms  0x6ea2 seckey:0x7fc93058d020
 13449 ms     | 0x6ea2 EC_ValidatePublicKey()
 13449 ms     | 0x6ea2 ret:0x0
 13449 ms  0x6ea2 ret:0x7fc929670d80
 13452 ms  SECKEY_ECParamsToKeySize()
 13452 ms  0x6ea2 ret:0xff
 13452 ms  0x6ea2 PK11_DeriveWithFlags()
 13452 ms  0x6ea2 basekey:0x7fc934668e00
 13452 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13452 ms  0x6ea2 ret:0x7fc934674100
 13452 ms  0x6ea2 PK11_Derive()
 13452 ms  0x6ea2 basekey:0x7fc929670d80
 13452 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13452 ms  0x6ea2 ret:0x7fc934674180
 13452 ms  0x6ea2 PK11_DeriveWithFlags()
 13452 ms  0x6ea2 basekey:0x7fc934674180
 13452 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13452 ms  0x6ea2 ret:0x7fc934668e00
 13452 ms  0x6ea2 PK11_DeriveWithFlags()
 13452 ms  0x6ea2 basekey:0x7fc934674180
 13452 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13452 ms  0x6ea2 ret:0x7fc929670d80
 13452 ms  0x6ea2 PK11_DeriveWithFlags()
 13452 ms  0x6ea2 basekey:0x7fc934674180
 13452 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13452 ms  0x6ea2 ret:0x7fc934674100
 13452 ms  0x6ea2 PK11_Derive()
 13452 ms  0x6ea2 basekey:0x7fc934674200
 13452 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13452 ms  0x6ea2 ret:0x7fc934674280
 13452 ms  0x6ea2 PK11_DeriveWithFlags()
 13452 ms  0x6ea2 basekey:0x7fc929670d80
 13452 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13452 ms  0x6ea2 ret:0x7fc934674180
 13452 ms  0x6ea2 PK11_DeriveWithFlags()
 13452 ms  0x6ea2 basekey:0x7fc929670d80
 13452 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13452 ms  0x6ea2 ret:0x7fc934674100
 13452 ms  0x6ea2 PK11_DeriveWithFlags()
 13452 ms  0x6ea2 basekey:0x7fc929670d80
 13452 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13452 ms  0x6ea2 ret:0x7fc934674100
 13453 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13453 ms  0x6ea2 cx:0x7fc92c7e7a68
 13453 ms     | 0x6ea2 EC_ValidatePublicKey()
 13453 ms     | 0x6ea2 ret:0x0
 13453 ms  0x6ea2 ret:0x7fc931130820::7fc931130820  40 9c 4f 31                                      @.O1
 13454 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13454 ms  0x6ea2 cx:0x7fc92c7e7a68
 13454 ms     | 0x6ea2 EC_ValidatePublicKey()
 13456 ms     | 0x6ea2 ret:0x0
 13456 ms  0x6ea2 ret:0x7fc931135020::7fc931135020  50 71 a8 33                                      Pq.3
 13506 ms  0x6ea2 PK11_Derive()
 13506 ms  0x6ea2 basekey:0x7fc934674100
 13506 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13506 ms  0x6ea2 ret:0x7fc934674200
 13506 ms  0x6ea2 PK11_PubDeriveWithKDF()
 13506 ms  0x6ea2 seckey:0x7fc931130820
 13506 ms     | 0x6ea2 EC_ValidatePublicKey()
 13506 ms     | 0x6ea2 ret:0x0
 13506 ms  0x6ea2 ret:0x7fc934674100
 13506 ms  SECKEY_ECParamsToKeySize()
 13506 ms  0x6ea2 ret:0xff
 13506 ms  0x6ea2 PK11_DeriveWithFlags()
 13506 ms  0x6ea2 basekey:0x7fc934674200
 13506 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13506 ms  0x6ea2 ret:0x7fc929644b80
 13506 ms  0x6ea2 PK11_Derive()
 13506 ms  0x6ea2 basekey:0x7fc934674100
 13506 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13507 ms  0x6ea2 ret:0x7fc934674300
 13507 ms  0x6ea2 PK11_DeriveWithFlags()
 13507 ms  0x6ea2 basekey:0x7fc934674300
 13507 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13507 ms  0x6ea2 ret:0x7fc934674200
 13507 ms  0x6ea2 PK11_DeriveWithFlags()
 13507 ms  0x6ea2 basekey:0x7fc934674300
 13507 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13507 ms  0x6ea2 ret:0x7fc934674100
 13507 ms  0x6ea2 PK11_DeriveWithFlags()
 13507 ms  0x6ea2 basekey:0x7fc934674300
 13507 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13507 ms  0x6ea2 ret:0x7fc929644b80
 13507 ms  0x6ea2 PK11_Derive()
 13507 ms  0x6ea2 basekey:0x7fc934674380
 13507 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13507 ms  0x6ea2 ret:0x7fc934674400
 13507 ms  0x6ea2 PK11_DeriveWithFlags()
 13507 ms  0x6ea2 basekey:0x7fc934674100
 13507 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13507 ms  0x6ea2 ret:0x7fc934674300
 13507 ms  0x6ea2 PK11_DeriveWithFlags()
 13507 ms  0x6ea2 basekey:0x7fc934674100
 13507 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13507 ms  0x6ea2 ret:0x7fc929644b80
 13507 ms  SECKEY_ECParamsToKeySize()
 13507 ms  0x6ea2 ret:0x100
 13507 ms  SECKEY_ECParamsToBasePointOrderLen()
 13507 ms  0x6ea2 ret:0x100
 13507 ms  SECKEY_ECParamsToBasePointOrderLen()
 13507 ms  0x6ea2 ret:0x100
 13507 ms  0x6ea2 EC_ValidatePublicKey()
 13508 ms  0x6ea2 ret:0x0
 13510 ms  0x6ea2 PK11_DeriveWithFlags()
 13510 ms  0x6ea2 basekey:0x7fc934674100
 13510 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13510 ms  0x6ea2 ret:0x7fc929644b80
           /* TID 0x6eaa */
 13539 ms  0x6eaa PR_Close()
 13539 ms  0x6eaa fd:0x7fc930027580
           /* TID 0x6f42 */
 13540 ms  0x6f42 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13540 ms  0x6f42 ret:0x0
           /* TID 0x6ea2 */
 13541 ms  0x6ea2 SSL_AuthCertificateComplete()
 13541 ms  0x6ea2 fd:0x7fc9300af8e0
 13541 ms  0x6ea2 err:0x0
 13541 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13541 ms     | 0x6ea2 basekey:0x7fc933aae780
 13541 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13541 ms     | 0x6ea2 ret:0x7fc929644b80
 13541 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13541 ms     | 0x6ea2 basekey:0x7fc933aae780
 13541 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13541 ms     | 0x6ea2 ret:0x7fc934674380
 13541 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13541 ms     | 0x6ea2 basekey:0x7fc933aae780
 13541 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13541 ms     | 0x6ea2 ret:0x7fc934667400
 13541 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13541 ms     | 0x6ea2 basekey:0x7fc926466f00
 13541 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13541 ms     | 0x6ea2 ret:0x7fc934667980
 13541 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13541 ms     | 0x6ea2 basekey:0x7fc926466f00
 13541 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13541 ms     | 0x6ea2 ret:0x7fc934667a00
 13541 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13541 ms     | 0x6ea2 basekey:0x7fc934674380
 13541 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13541 ms     | 0x6ea2 ret:0x7fc934667a00
 13541 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13541 ms     | 0x6ea2 basekey:0x7fc934674380
 13541 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13541 ms     | 0x6ea2 ret:0x7fc934674600
 13541 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13541 ms     | 0x6ea2 basekey:0x7fc926466f00
 13541 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13541 ms     | 0x6ea2 ret:0x7fc9344c2180
 13541 ms     | 0x6ea2 PK11_Encrypt()
 13541 ms     | 0x6ea2 symkey:0x7fc934667980
 13542 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13542 ms     | 0x6ea2 basekey:0x7fc929644b80
 13542 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13542 ms     | 0x6ea2 ret:0x7fc9344c2180
 13542 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13542 ms     | 0x6ea2 basekey:0x7fc929644b80
 13542 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13542 ms     | 0x6ea2 ret:0x7fc934674600
 13542 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13542 ms     | 0x6ea2 basekey:0x7fc933aae780
 13542 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13542 ms     | 0x6ea2 ret:0x7fc934667980
 13542 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13542 ms     | 0x6ea2 privk:0x7fc92cbed820::7fc92cbed820  30 68 9c 2c                                      0h.,
 13542 ms     | 0x6ea2 privk:0x7fc92cbed820::7fc92cbed820  e5 e5 e5 e5                                      ....
 13542 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13542 ms     | 0x6ea2 privk:0x7fc92cbeb020::7fc92cbeb020  00 66 9c 2c                                      .f.,
 13542 ms     | 0x6ea2 privk:0x7fc92cbeb020::7fc92cbeb020  e5 e5 e5 e5                                      ....
 13543 ms  0x6ea2 PK11_Encrypt()
 13543 ms  0x6ea2 symkey:0x7fc9344c2180
 13543 ms  0x6ea2 PK11_Encrypt()
 13543 ms  0x6ea2 symkey:0x7fc9344c2180
           /* TID 0x6eaa */
 13558 ms  0x6eaa PR_Close()
 13558 ms  0x6eaa fd:0x7fc9300c4eb0
           /* TID 0x6f40 */
 13558 ms  0x6f40 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13559 ms  0x6f40 ret:0x0
           /* TID 0x6ea2 */
 13566 ms  0x6ea2 SSL_AuthCertificateComplete()
 13566 ms  0x6ea2 fd:0x7fc9300effd0
 13566 ms  0x6ea2 err:0x0
 13566 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13566 ms     | 0x6ea2 basekey:0x7fc92870de00
 13566 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13566 ms     | 0x6ea2 ret:0x7fc933aae400
 13566 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13566 ms     | 0x6ea2 basekey:0x7fc92870de00
 13567 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13567 ms     | 0x6ea2 ret:0x7fc926466f00
 13567 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13567 ms     | 0x6ea2 basekey:0x7fc92870de00
 13567 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13567 ms     | 0x6ea2 ret:0x7fc933aae780
 13567 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13567 ms     | 0x6ea2 basekey:0x7fc92b98c880
 13567 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13567 ms     | 0x6ea2 ret:0x7fc934674600
 13567 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13567 ms     | 0x6ea2 basekey:0x7fc92b98c880
 13567 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13567 ms     | 0x6ea2 ret:0x7fc9344c6080
 13567 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13567 ms     | 0x6ea2 basekey:0x7fc926466f00
 13567 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13567 ms     | 0x6ea2 ret:0x7fc9344c6080
 13567 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13567 ms     | 0x6ea2 basekey:0x7fc926466f00
 13567 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13567 ms     | 0x6ea2 ret:0x7fc9344c6100
 13567 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13567 ms     | 0x6ea2 basekey:0x7fc92b98c880
 13567 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13567 ms     | 0x6ea2 ret:0x7fc933aadb00
 13567 ms     | 0x6ea2 PK11_Encrypt()
 13567 ms     | 0x6ea2 symkey:0x7fc934674600
           /* TID 0x6eaa */
 13569 ms  0x6eaa PR_Close()
 13569 ms  0x6eaa fd:0x7fc931141880
           /* TID 0x6f44 */
 13569 ms  0x6f44 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13569 ms  0x6f44 ret:0x0
           /* TID 0x6ea2 */
 13572 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13572 ms     | 0x6ea2 basekey:0x7fc933aae400
 13572 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13572 ms     | 0x6ea2 ret:0x7fc933aadb00
 13572 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13572 ms     | 0x6ea2 basekey:0x7fc933aae400
 13572 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13572 ms     | 0x6ea2 ret:0x7fc9344c6100
 13572 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13572 ms     | 0x6ea2 basekey:0x7fc92870de00
 13572 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13572 ms     | 0x6ea2 ret:0x7fc934674600
 13572 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13572 ms     | 0x6ea2 privk:0x7fc92f36f020::7fc92f36f020  d0 6d 9c 2c                                      .m.,
 13572 ms     | 0x6ea2 privk:0x7fc92f36f020::7fc92f36f020  e5 e5 e5 e5                                      ....
 13573 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13573 ms     | 0x6ea2 privk:0x7fc92cbf1820::7fc92cbf1820  10 6a 9c 2c                                      .j.,
 13573 ms     | 0x6ea2 privk:0x7fc92cbf1820::7fc92cbf1820  e5 e5 e5 e5                                      ....
           /* TID 0x6eaa */
 13574 ms  0x6eaa PR_Close()
 13574 ms  0x6eaa fd:0x7fc9310f1490
           /* TID 0x6f45 */
 13574 ms  0x6f45 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13574 ms  0x6f45 ret:0x0
           /* TID 0x6ea2 */
 13575 ms  0x6ea2 PK11_Encrypt()
 13575 ms  0x6ea2 symkey:0x7fc933aadb00
 13579 ms  0x6ea2 PK11_Encrypt()
 13579 ms  0x6ea2 symkey:0x7fc933aadb00
 13580 ms  0x6ea2 SSL_AuthCertificateComplete()
 13580 ms  0x6ea2 fd:0x7fc9300eff10
 13580 ms  0x6ea2 err:0x0
 13580 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13580 ms     | 0x6ea2 basekey:0x7fc934668100
 13580 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13580 ms     | 0x6ea2 ret:0x7fc9344c2100
 13580 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13580 ms     | 0x6ea2 basekey:0x7fc934668100
 13580 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13580 ms     | 0x6ea2 ret:0x7fc92b98c880
 13580 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13580 ms     | 0x6ea2 basekey:0x7fc934668100
 13580 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13580 ms     | 0x6ea2 ret:0x7fc92870de00
 13580 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13580 ms     | 0x6ea2 basekey:0x7fc933aae680
 13580 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13581 ms     | 0x6ea2 ret:0x7fc9344c6100
 13581 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13581 ms     | 0x6ea2 basekey:0x7fc933aae680
 13581 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13581 ms     | 0x6ea2 ret:0x7fc934674f00
 13581 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13581 ms     | 0x6ea2 basekey:0x7fc92b98c880
 13581 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13581 ms     | 0x6ea2 ret:0x7fc934674f00
 13581 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13581 ms     | 0x6ea2 basekey:0x7fc92b98c880
 13581 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13581 ms     | 0x6ea2 ret:0x7fc934674f80
 13581 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13581 ms     | 0x6ea2 basekey:0x7fc933aae680
 13581 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13581 ms     | 0x6ea2 ret:0x7fc933aadd80
 13581 ms     | 0x6ea2 PK11_Encrypt()
 13581 ms     | 0x6ea2 symkey:0x7fc9344c6100
 13581 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13581 ms     | 0x6ea2 basekey:0x7fc9344c2100
 13581 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13581 ms     | 0x6ea2 ret:0x7fc933aadd80
 13581 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13581 ms     | 0x6ea2 basekey:0x7fc9344c2100
 13581 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13581 ms     | 0x6ea2 ret:0x7fc934674f80
 13581 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13581 ms     | 0x6ea2 basekey:0x7fc934668100
 13581 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13581 ms     | 0x6ea2 ret:0x7fc9344c6100
 13581 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13581 ms     | 0x6ea2 privk:0x7fc92f442020::7fc92f442020  a0 8b a1 2c                                      ...,
 13581 ms     | 0x6ea2 privk:0x7fc92f442020::7fc92f442020  e5 e5 e5 e5                                      ....
 13581 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13581 ms     | 0x6ea2 privk:0x7fc92f43f020::7fc92f43f020  60 fa 9c 2c                                      `..,
 13582 ms     | 0x6ea2 privk:0x7fc92f43f020::7fc92f43f020  e5 e5 e5 e5                                      ....
 13582 ms  0x6ea2 SSL_AuthCertificateComplete()
 13582 ms  0x6ea2 fd:0x7fc9304a8fd0
 13582 ms  0x6ea2 err:0x0
 13582 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13582 ms     | 0x6ea2 basekey:0x7fc934674280
 13582 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13582 ms     | 0x6ea2 ret:0x7fc9262e8d00
 13582 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13582 ms     | 0x6ea2 basekey:0x7fc934674280
 13582 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13582 ms     | 0x6ea2 ret:0x7fc933aae680
 13582 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13582 ms     | 0x6ea2 basekey:0x7fc934674280
 13582 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13582 ms     | 0x6ea2 ret:0x7fc934668100
 13582 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13582 ms     | 0x6ea2 basekey:0x7fc934668e00
 13582 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13582 ms     | 0x6ea2 ret:0x7fc934674f80
 13582 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13582 ms     | 0x6ea2 basekey:0x7fc934668e00
 13582 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13582 ms     | 0x6ea2 ret:0x7fc934675000
 13582 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13582 ms     | 0x6ea2 basekey:0x7fc933aae680
 13582 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13582 ms     | 0x6ea2 ret:0x7fc934675000
 13582 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13582 ms     | 0x6ea2 basekey:0x7fc933aae680
 13582 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13582 ms     | 0x6ea2 ret:0x7fc934675080
 13582 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13582 ms     | 0x6ea2 basekey:0x7fc934668e00
 13582 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13582 ms     | 0x6ea2 ret:0x7fc934674180
 13582 ms     | 0x6ea2 PK11_Encrypt()
 13582 ms     | 0x6ea2 symkey:0x7fc934674f80
 13582 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13582 ms     | 0x6ea2 basekey:0x7fc9262e8d00
 13582 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13582 ms     | 0x6ea2 ret:0x7fc934674180
 13582 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13582 ms     | 0x6ea2 basekey:0x7fc9262e8d00
 13582 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13582 ms     | 0x6ea2 ret:0x7fc934675080
 13582 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13582 ms     | 0x6ea2 basekey:0x7fc934674280
 13583 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13583 ms     | 0x6ea2 ret:0x7fc934674f80
 13583 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13583 ms     | 0x6ea2 privk:0x7fc93058f020::7fc93058f020  f0 b1 41 2f                                      ..A/
 13583 ms     | 0x6ea2 privk:0x7fc93058f020::7fc93058f020  e5 e5 e5 e5                                      ....
 13583 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13583 ms     | 0x6ea2 privk:0x7fc93058d020::7fc93058d020  f0 f6 3f 2f                                      ..?/
 13583 ms     | 0x6ea2 privk:0x7fc93058d020::7fc93058d020  e5 e5 e5 e5                                      ....
 13584 ms  0x6ea2 SSL_AuthCertificateComplete()
 13584 ms  0x6ea2 fd:0x7fc930d3aaf0
 13584 ms  0x6ea2 err:0x0
 13584 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13584 ms     | 0x6ea2 basekey:0x7fc934674400
 13584 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13584 ms     | 0x6ea2 ret:0x7fc929670d80
 13585 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13585 ms     | 0x6ea2 basekey:0x7fc934674400
 13585 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13585 ms     | 0x6ea2 ret:0x7fc934668e00
 13585 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13585 ms     | 0x6ea2 basekey:0x7fc934674400
 13585 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13585 ms     | 0x6ea2 ret:0x7fc934674280
 13585 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13585 ms     | 0x6ea2 basekey:0x7fc934674200
 13585 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13585 ms     | 0x6ea2 ret:0x7fc934675080
 13585 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13585 ms     | 0x6ea2 basekey:0x7fc934674200
 13585 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13585 ms     | 0x6ea2 ret:0x7fc934675100
 13585 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13585 ms     | 0x6ea2 basekey:0x7fc934668e00
 13585 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13585 ms     | 0x6ea2 ret:0x7fc934675100
 13585 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13585 ms     | 0x6ea2 basekey:0x7fc934668e00
 13585 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13585 ms     | 0x6ea2 ret:0x7fc934675180
 13585 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13585 ms     | 0x6ea2 basekey:0x7fc934674200
 13585 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13585 ms     | 0x6ea2 ret:0x7fc934674300
 13585 ms     | 0x6ea2 PK11_Encrypt()
 13585 ms     | 0x6ea2 symkey:0x7fc934675080
 13585 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13585 ms     | 0x6ea2 basekey:0x7fc929670d80
 13585 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13585 ms     | 0x6ea2 ret:0x7fc934674300
 13585 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13585 ms     | 0x6ea2 basekey:0x7fc929670d80
 13585 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13585 ms     | 0x6ea2 ret:0x7fc934675180
 13585 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13585 ms     | 0x6ea2 basekey:0x7fc934674400
 13585 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13585 ms     | 0x6ea2 ret:0x7fc934675080
 13585 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13585 ms     | 0x6ea2 privk:0x7fc931135020::7fc931135020  50 71 a8 33                                      Pq.3
 13585 ms     | 0x6ea2 privk:0x7fc931135020::7fc931135020  e5 e5 e5 e5                                      ....
 13585 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13585 ms     | 0x6ea2 privk:0x7fc931130820::7fc931130820  40 9c 4f 31                                      @.O1
 13586 ms     | 0x6ea2 privk:0x7fc931130820::7fc931130820  e5 e5 e5 e5                                      ....
 13586 ms  0x6ea2 SSL_AuthCertificateComplete()
 13586 ms  0x6ea2 fd:0x7fc930482ee0
 13586 ms  0x6ea2 err:0x0
 13586 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13586 ms     | 0x6ea2 basekey:0x7fc934668580
 13586 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13586 ms     | 0x6ea2 ret:0x7fc934674100
 13586 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13586 ms     | 0x6ea2 basekey:0x7fc934668580
 13586 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13586 ms     | 0x6ea2 ret:0x7fc934674200
 13586 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13586 ms     | 0x6ea2 basekey:0x7fc934668580
 13586 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13586 ms     | 0x6ea2 ret:0x7fc934674400
 13586 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13586 ms     | 0x6ea2 basekey:0x7fc934668080
 13586 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13586 ms     | 0x6ea2 ret:0x7fc934675180
 13586 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13586 ms     | 0x6ea2 basekey:0x7fc934668080
 13586 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13586 ms     | 0x6ea2 ret:0x7fc934675200
 13586 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13586 ms     | 0x6ea2 basekey:0x7fc934674200
 13586 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13586 ms     | 0x6ea2 ret:0x7fc934675200
 13586 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13586 ms     | 0x6ea2 basekey:0x7fc934674200
 13586 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13586 ms     | 0x6ea2 ret:0x7fc934675280
 13586 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13586 ms     | 0x6ea2 basekey:0x7fc934668080
 13586 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13586 ms     | 0x6ea2 ret:0x7fc934668480
 13586 ms     | 0x6ea2 PK11_Encrypt()
 13586 ms     | 0x6ea2 symkey:0x7fc934675180
 13586 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13586 ms     | 0x6ea2 basekey:0x7fc934674100
 13586 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13587 ms     | 0x6ea2 ret:0x7fc934668480
 13587 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13587 ms     | 0x6ea2 basekey:0x7fc934674100
 13587 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13587 ms     | 0x6ea2 ret:0x7fc934675280
 13587 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13587 ms     | 0x6ea2 basekey:0x7fc934668580
 13587 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13587 ms     | 0x6ea2 ret:0x7fc934675180
 13587 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13587 ms     | 0x6ea2 privk:0x7fc92ff0c820::7fc92ff0c820  c0 99 ab 2c                                      ...,
 13588 ms     | 0x6ea2 privk:0x7fc92ff0c820::7fc92ff0c820  e5 e5 e5 e5                                      ....
 13588 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13588 ms     | 0x6ea2 privk:0x7fc92ff0a820::7fc92ff0a820  70 be a1 2c                                      p..,
 13588 ms     | 0x6ea2 privk:0x7fc92ff0a820::7fc92ff0a820  e5 e5 e5 e5                                      ....
 13588 ms  0x6ea2 PK11_DeriveWithFlags()
 13588 ms  0x6ea2 basekey:0x7fc934667980
 13588 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13588 ms  0x6ea2 ret:0x7fc92877bc00
 13588 ms  0x6ea2 PK11_DeriveWithFlags()
 13588 ms  0x6ea2 basekey:0x7fc934667980
 13588 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13588 ms  0x6ea2 ret:0x7fc92877bc00
 13588 ms  0x6ea2 PK11_Encrypt()
 13588 ms  0x6ea2 symkey:0x7fc9344c2180
 13589 ms  0x6ea2 PK11_Encrypt()
 13589 ms  0x6ea2 symkey:0x7fc934674180
 13589 ms  0x6ea2 PK11_Encrypt()
 13589 ms  0x6ea2 symkey:0x7fc934674180
 13589 ms  0x6ea2 PK11_Encrypt()
 13589 ms  0x6ea2 symkey:0x7fc933aadd80
 13589 ms  0x6ea2 PK11_Encrypt()
 13589 ms  0x6ea2 symkey:0x7fc934668480
 13590 ms  0x6ea2 PK11_Encrypt()
 13590 ms  0x6ea2 symkey:0x7fc934674300
 13590 ms  0x6ea2 PK11_Encrypt()
 13590 ms  0x6ea2 symkey:0x7fc934674300
 13590 ms  0x6ea2 PK11_Encrypt()
 13590 ms  0x6ea2 symkey:0x7fc934674180
 13591 ms  0x6ea2 PK11_Encrypt()
 13591 ms  0x6ea2 symkey:0x7fc934674180
 13591 ms  0x6ea2 PK11_Encrypt()
 13591 ms  0x6ea2 symkey:0x7fc934674180
           /* TID 0x6eaa */
 13596 ms  0x6eaa PR_Close()
 13596 ms  0x6eaa fd:0x7fc92f4bc940
           /* TID 0x6f46 */
 13597 ms  0x6f46 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13597 ms  0x6f46 ret:0x0
           /* TID 0x6ea2 */
 13597 ms  0x6ea2 SSL_AuthCertificateComplete()
 13597 ms  0x6ea2 fd:0x7fc930a96820
 13597 ms  0x6ea2 err:0x0
 13597 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13597 ms     | 0x6ea2 basekey:0x7fc934668780
 13597 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13597 ms     | 0x6ea2 ret:0x7fc92877bc00
 13597 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13597 ms     | 0x6ea2 basekey:0x7fc934668780
 13597 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13597 ms     | 0x6ea2 ret:0x7fc934668080
 13597 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13597 ms     | 0x6ea2 basekey:0x7fc934668780
 13597 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13597 ms     | 0x6ea2 ret:0x7fc934668580
 13597 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13597 ms     | 0x6ea2 basekey:0x7fc934668500
 13597 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13597 ms     | 0x6ea2 ret:0x7fc934675280
 13597 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13597 ms     | 0x6ea2 basekey:0x7fc934668500
 13597 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13597 ms     | 0x6ea2 ret:0x7fc934674080
 13597 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13597 ms     | 0x6ea2 basekey:0x7fc934668080
 13597 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13597 ms     | 0x6ea2 ret:0x7fc934674080
 13597 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13597 ms     | 0x6ea2 basekey:0x7fc934668080
 13597 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13597 ms     | 0x6ea2 ret:0x7fc934675600
 13597 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13597 ms     | 0x6ea2 basekey:0x7fc934668500
 13597 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13597 ms     | 0x6ea2 ret:0x7fc934668680
 13597 ms     | 0x6ea2 PK11_Encrypt()
 13597 ms     | 0x6ea2 symkey:0x7fc934675280
 13597 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13597 ms     | 0x6ea2 basekey:0x7fc92877bc00
 13597 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13597 ms     | 0x6ea2 ret:0x7fc934668680
 13598 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13598 ms     | 0x6ea2 basekey:0x7fc92877bc00
 13598 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13598 ms     | 0x6ea2 ret:0x7fc934675600
 13598 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13598 ms     | 0x6ea2 basekey:0x7fc934668780
 13598 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13598 ms     | 0x6ea2 ret:0x7fc934675280
 13598 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13598 ms     | 0x6ea2 privk:0x7fc92ff1b020::7fc92ff1b020  60 05 b2 2c                                      `..,
 13598 ms     | 0x6ea2 privk:0x7fc92ff1b020::7fc92ff1b020  e5 e5 e5 e5                                      ....
 13598 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13598 ms     | 0x6ea2 privk:0x7fc92ff13020::7fc92ff13020  c0 c4 ac 2c                                      ...,
 13598 ms     | 0x6ea2 privk:0x7fc92ff13020::7fc92ff13020  e5 e5 e5 e5                                      ....
 13598 ms  0x6ea2 PK11_Encrypt()
 13598 ms  0x6ea2 symkey:0x7fc934668680
 13599 ms  0x6ea2 PK11_Encrypt()
 13599 ms  0x6ea2 symkey:0x7fc934674180
 13605 ms  0x6ea2 PK11_DeriveWithFlags()
 13605 ms  0x6ea2 basekey:0x7fc934674600
 13605 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13605 ms  0x6ea2 ret:0x7fc934668400
 13605 ms  0x6ea2 PK11_DeriveWithFlags()
 13605 ms  0x6ea2 basekey:0x7fc934674600
 13606 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13606 ms  0x6ea2 ret:0x7fc934668400
 13606 ms  0x6ea2 PK11_Encrypt()
 13606 ms  0x6ea2 symkey:0x7fc933aadb00
 13619 ms  0x6ea2 PK11_DeriveWithFlags()
 13619 ms  0x6ea2 basekey:0x7fc9344c6100
 13619 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13619 ms  0x6ea2 ret:0x7fc934668400
 13619 ms  0x6ea2 PK11_DeriveWithFlags()
 13619 ms  0x6ea2 basekey:0x7fc9344c6100
 13619 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13619 ms  0x6ea2 ret:0x7fc934668400
 13619 ms  0x6ea2 PR_Close()
 13619 ms  0x6ea2 fd:0x7fc9300eff10
 13619 ms     | 0x6ea2 PK11_Encrypt()
 13619 ms     | 0x6ea2 symkey:0x7fc933aadd80
 13620 ms  0x6ea2 PK11_DeriveWithFlags()
 13620 ms  0x6ea2 basekey:0x7fc934674f80
 13620 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13620 ms  0x6ea2 ret:0x7fc92870de00
 13620 ms  0x6ea2 PK11_DeriveWithFlags()
 13620 ms  0x6ea2 basekey:0x7fc934674f80
 13620 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13620 ms  0x6ea2 ret:0x7fc92870de00
 13621 ms  0x6ea2 PK11_Encrypt()
 13621 ms  0x6ea2 symkey:0x7fc934674180
 13624 ms  0x6ea2 PK11_DeriveWithFlags()
 13624 ms  0x6ea2 basekey:0x7fc934675180
 13624 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13624 ms  0x6ea2 ret:0x7fc92870de00
 13624 ms  0x6ea2 PK11_DeriveWithFlags()
 13624 ms  0x6ea2 basekey:0x7fc934675180
 13624 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13624 ms  0x6ea2 ret:0x7fc92870de00
 13624 ms  0x6ea2 PR_Close()
 13624 ms  0x6ea2 fd:0x7fc930482ee0
 13624 ms     | 0x6ea2 PK11_Encrypt()
 13624 ms     | 0x6ea2 symkey:0x7fc934668480
 13634 ms  0x6ea2 PK11_DeriveWithFlags()
 13634 ms  0x6ea2 basekey:0x7fc934675080
 13634 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13634 ms  0x6ea2 ret:0x7fc934674400
 13634 ms  0x6ea2 PK11_DeriveWithFlags()
 13634 ms  0x6ea2 basekey:0x7fc934675080
 13634 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13634 ms  0x6ea2 ret:0x7fc934674400
 13634 ms  0x6ea2 PK11_Encrypt()
 13634 ms  0x6ea2 symkey:0x7fc934674300
 13635 ms  0x6ea2 PK11_DeriveWithFlags()
 13635 ms  0x6ea2 basekey:0x7fc934675280
 13635 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13635 ms  0x6ea2 ret:0x7fc934674400
 13635 ms  0x6ea2 PK11_DeriveWithFlags()
 13635 ms  0x6ea2 basekey:0x7fc934675280
 13635 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13635 ms  0x6ea2 ret:0x7fc934674400
 13635 ms  0x6ea2 PR_Close()
 13635 ms  0x6ea2 fd:0x7fc930a96820
 13635 ms     | 0x6ea2 PK11_Encrypt()
 13635 ms     | 0x6ea2 symkey:0x7fc934668680
           /* TID 0x6eaa */
 13637 ms  0x6eaa PR_Close()
 13637 ms  0x6eaa fd:0x7fc92f3db280
           /* TID 0x6ea2 */
 13637 ms  0x6ea2 PK11_Encrypt()
 13637 ms  0x6ea2 symkey:0x7fc9344c2180
 13645 ms  0x6ea2 PK11_Encrypt()
 13645 ms  0x6ea2 symkey:0x7fc933aadb00
           /* TID 0x6eaa */
 13645 ms  0x6eaa PR_Close()
 13645 ms  0x6eaa fd:0x7fc92f3db280
           /* TID 0x6ea2 */
 13650 ms  0x6ea2 PK11_Encrypt()
 13650 ms  0x6ea2 symkey:0x7fc933aadb00
 13653 ms  0x6ea2 PK11_Encrypt()
 13653 ms  0x6ea2 symkey:0x7fc929681180
 13657 ms  0x6ea2 SSL_ImportFD()
 13657 ms  0x6ea2 ret:0x7fc930d3acd0
 13657 ms  0x6ea2 SSL_AuthCertificateHook()
 13657 ms  0x6ea2 fd:0x7fc930d3acd0
 13657 ms  0x6ea2 ret:0x0
 13657 ms  0x6ea2 PR_Connect()
 13657 ms  0x6ea2 fd:0x7fc930d3acd0
 13657 ms  0x6ea2 SSL_ImportFD()
 13657 ms  0x6ea2 ret:0x7fc931004970
 13657 ms  0x6ea2 SSL_AuthCertificateHook()
 13657 ms  0x6ea2 fd:0x7fc931004970
 13657 ms  0x6ea2 ret:0x0
 13657 ms  0x6ea2 PR_Connect()
 13657 ms  0x6ea2 fd:0x7fc931004970
 13665 ms  0x6ea2 PK11_Encrypt()
 13665 ms  0x6ea2 symkey:0x7fc934674180
           /* TID 0x6eaa */
 13666 ms  0x6eaa PR_Close()
 13666 ms  0x6eaa fd:0x7fc92f3b28e0
           /* TID 0x6ea2 */
 13683 ms  0x6ea2 PK11_Encrypt()
 13683 ms  0x6ea2 symkey:0x7fc934674300
           /* TID 0x6eaa */
 13686 ms  0x6eaa PR_Close()
 13686 ms  0x6eaa fd:0x7fc92f3b28e0
           /* TID 0x6f42 */
 13686 ms  0x6f42 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13686 ms  0x6f42 ret:0x0
           /* TID 0x6ea2 */
 13686 ms  0x6ea2 SSL_AuthCertificateComplete()
 13686 ms  0x6ea2 fd:0x7fc930a96670
 13686 ms  0x6ea2 err:0x0
 13686 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13686 ms     | 0x6ea2 basekey:0x7fc934668b00
 13686 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13686 ms     | 0x6ea2 ret:0x7fc934668580
 13686 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13686 ms     | 0x6ea2 basekey:0x7fc934668b00
 13686 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13686 ms     | 0x6ea2 ret:0x7fc934668080
 13686 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13686 ms     | 0x6ea2 basekey:0x7fc934668b00
 13686 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13686 ms     | 0x6ea2 ret:0x7fc92877bc00
 13686 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13686 ms     | 0x6ea2 basekey:0x7fc934668700
 13686 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13686 ms     | 0x6ea2 ret:0x7fc934675280
 13686 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13686 ms     | 0x6ea2 basekey:0x7fc934668700
 13686 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13686 ms     | 0x6ea2 ret:0x7fc934674080
 13686 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13686 ms     | 0x6ea2 basekey:0x7fc934668080
 13686 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13687 ms     | 0x6ea2 ret:0x7fc934674080
 13687 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13687 ms     | 0x6ea2 basekey:0x7fc934668080
 13687 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13687 ms     | 0x6ea2 ret:0x7fc934668680
 13687 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13687 ms     | 0x6ea2 basekey:0x7fc934668700
 13687 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13687 ms     | 0x6ea2 ret:0x7fc934668a00
 13687 ms     | 0x6ea2 PK11_Encrypt()
 13687 ms     | 0x6ea2 symkey:0x7fc934675280
 13687 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13687 ms     | 0x6ea2 basekey:0x7fc934668580
 13687 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13687 ms     | 0x6ea2 ret:0x7fc934668a00
 13687 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13687 ms     | 0x6ea2 basekey:0x7fc934668580
 13687 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13687 ms     | 0x6ea2 ret:0x7fc934668680
 13687 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13687 ms     | 0x6ea2 basekey:0x7fc934668b00
 13687 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13687 ms     | 0x6ea2 ret:0x7fc934675280
 13687 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13687 ms     | 0x6ea2 privk:0x7fc9304df020::7fc9304df020  10 ca 3d 2f                                      ..=/
 13687 ms     | 0x6ea2 privk:0x7fc9304df020::7fc9304df020  e5 e5 e5 e5                                      ....
 13687 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13687 ms     | 0x6ea2 privk:0x7fc92ff1f020::7fc92ff1f020  30 5d bc 2c                                      0].,
 13687 ms     | 0x6ea2 privk:0x7fc92ff1f020::7fc92ff1f020  e5 e5 e5 e5                                      ....
 13688 ms  0x6ea2 PK11_Encrypt()
 13688 ms  0x6ea2 symkey:0x7fc934668a00
 13688 ms  0x6ea2 PK11_Encrypt()
 13688 ms  0x6ea2 symkey:0x7fc934674180
 13694 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13694 ms  0x6ea2 cx:0x7fc92b814cc8
 13695 ms     | 0x6ea2 EC_ValidatePublicKey()
 13695 ms     | 0x6ea2 ret:0x0
 13695 ms  0x6ea2 ret:0x7fc92ff12820::7fc92ff12820  d0 6d 9c 2c                                      .m.,
 13695 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13695 ms  0x6ea2 cx:0x7fc92b814cc8
 13695 ms     | 0x6ea2 EC_ValidatePublicKey()
 13697 ms     | 0x6ea2 ret:0x0
 13697 ms  0x6ea2 ret:0x7fc92ff1a820::7fc92ff1a820  90 67 9c 2c                                      .g.,
 13698 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13698 ms  0x6ea2 cx:0x7fc92c7e80e8
 13698 ms     | 0x6ea2 EC_ValidatePublicKey()
 13698 ms     | 0x6ea2 ret:0x0
 13698 ms  0x6ea2 ret:0x7fc92ff1f020::7fc92ff1f020  60 b0 a1 2c                                      `..,
 13698 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13698 ms  0x6ea2 cx:0x7fc92c7e80e8
 13699 ms     | 0x6ea2 EC_ValidatePublicKey()
 13701 ms     | 0x6ea2 ret:0x0
 13701 ms  0x6ea2 ret:0x7fc9304df020::7fc9304df020  90 37 a4 2c                                      .7.,
 13724 ms  0x6ea2 PK11_DeriveWithFlags()
 13724 ms  0x6ea2 basekey:0x7fc934675280
 13725 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13725 ms  0x6ea2 ret:0x7fc934668600
 13725 ms  0x6ea2 PK11_DeriveWithFlags()
 13725 ms  0x6ea2 basekey:0x7fc934675280
 13725 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13725 ms  0x6ea2 ret:0x7fc934668600
 13725 ms  0x6ea2 PR_Close()
 13725 ms  0x6ea2 fd:0x7fc930a96670
 13725 ms     | 0x6ea2 PK11_Encrypt()
 13725 ms     | 0x6ea2 symkey:0x7fc934668a00
           /* TID 0x6eaa */
 13728 ms  0x6eaa PR_Close()
 13728 ms  0x6eaa fd:0x7fc92f3b28e0
           /* TID 0x6f40 */
 13728 ms  0x6f40 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13728 ms  0x6f40 ret:0x0
           /* TID 0x6ea2 */
 13728 ms  0x6ea2 SSL_AuthCertificateComplete()
 13728 ms  0x6ea2 fd:0x7fc930a96400
 13728 ms  0x6ea2 err:0x0
 13728 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13728 ms     | 0x6ea2 basekey:0x7fc934668e80
 13728 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13728 ms     | 0x6ea2 ret:0x7fc92877bc00
 13729 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13729 ms     | 0x6ea2 basekey:0x7fc934668e80
 13729 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13729 ms     | 0x6ea2 ret:0x7fc934668080
 13729 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13729 ms     | 0x6ea2 basekey:0x7fc934668e80
 13729 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13729 ms     | 0x6ea2 ret:0x7fc934668580
 13729 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13729 ms     | 0x6ea2 basekey:0x7fc934668a80
 13729 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13729 ms     | 0x6ea2 ret:0x7fc934675280
 13729 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13729 ms     | 0x6ea2 basekey:0x7fc934668a80
 13729 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13729 ms     | 0x6ea2 ret:0x7fc934674080
 13729 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13729 ms     | 0x6ea2 basekey:0x7fc934668080
 13729 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13729 ms     | 0x6ea2 ret:0x7fc934674080
 13729 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13729 ms     | 0x6ea2 basekey:0x7fc934668080
 13729 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13729 ms     | 0x6ea2 ret:0x7fc934668a00
 13729 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13729 ms     | 0x6ea2 basekey:0x7fc934668a80
 13729 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13729 ms     | 0x6ea2 ret:0x7fc934668c00
 13729 ms     | 0x6ea2 PK11_Encrypt()
 13729 ms     | 0x6ea2 symkey:0x7fc934675280
 13729 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13729 ms     | 0x6ea2 basekey:0x7fc92877bc00
 13729 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13729 ms     | 0x6ea2 ret:0x7fc934668c00
 13729 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13729 ms     | 0x6ea2 basekey:0x7fc92877bc00
 13729 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13729 ms     | 0x6ea2 ret:0x7fc934668a00
 13729 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13729 ms     | 0x6ea2 basekey:0x7fc934668e80
 13729 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13729 ms     | 0x6ea2 ret:0x7fc934675280
 13729 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13729 ms     | 0x6ea2 privk:0x7fc93058a820::7fc93058a820  40 f2 3f 2f                                      @.?/
 13730 ms     | 0x6ea2 privk:0x7fc93058a820::7fc93058a820  e5 e5 e5 e5                                      ....
 13730 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13730 ms     | 0x6ea2 privk:0x7fc930585020::7fc930585020  10 fa 3e 2f                                      ..>/
 13730 ms     | 0x6ea2 privk:0x7fc930585020::7fc930585020  e5 e5 e5 e5                                      ....
 13730 ms  0x6ea2 PK11_Encrypt()
 13730 ms  0x6ea2 symkey:0x7fc934668c00
 13731 ms  0x6ea2 PK11_Encrypt()
 13731 ms  0x6ea2 symkey:0x7fc934674180
           /* TID 0x6eaa */
 13738 ms  0x6eaa PR_Close()
 13738 ms  0x6eaa fd:0x7fc927910f70
 13741 ms  0x6eaa PR_Close()
 13741 ms  0x6eaa fd:0x7fc927910f70
 13748 ms  0x6eaa PR_Close()
 13748 ms  0x6eaa fd:0x7fc927910f70
           /* TID 0x6ea2 */
 13751 ms  0x6ea2 PK11_Derive()
 13751 ms  0x6ea2 basekey:0x7fc934668980
 13751 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13752 ms  0x6ea2 ret:0x7fc934668a80
 13752 ms  0x6ea2 PK11_PubDeriveWithKDF()
 13752 ms  0x6ea2 seckey:0x7fc92ff12820
 13752 ms     | 0x6ea2 EC_ValidatePublicKey()
 13752 ms     | 0x6ea2 ret:0x0
 13752 ms  0x6ea2 ret:0x7fc934668980
 13752 ms  SECKEY_ECParamsToKeySize()
 13752 ms  0x6ea2 ret:0xff
 13752 ms  0x6ea2 PK11_DeriveWithFlags()
 13752 ms  0x6ea2 basekey:0x7fc934668a80
 13752 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13752 ms  0x6ea2 ret:0x7fc934668e80
 13752 ms  0x6ea2 PK11_Derive()
 13752 ms  0x6ea2 basekey:0x7fc934668980
 13752 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13752 ms  0x6ea2 ret:0x7fc934668a00
 13752 ms  0x6ea2 PK11_DeriveWithFlags()
 13752 ms  0x6ea2 basekey:0x7fc934668a00
 13752 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13752 ms  0x6ea2 ret:0x7fc934668a80
 13753 ms  0x6ea2 PK11_DeriveWithFlags()
 13753 ms  0x6ea2 basekey:0x7fc934668a00
 13753 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13753 ms  0x6ea2 ret:0x7fc934668980
 13753 ms  0x6ea2 PK11_DeriveWithFlags()
 13753 ms  0x6ea2 basekey:0x7fc934668a00
 13753 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13753 ms  0x6ea2 ret:0x7fc934668e80
 13753 ms  0x6ea2 PK11_Derive()
 13753 ms  0x6ea2 basekey:0x7fc934668600
 13753 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13753 ms  0x6ea2 ret:0x7fc934668700
 13753 ms  0x6ea2 PK11_DeriveWithFlags()
 13753 ms  0x6ea2 basekey:0x7fc934668980
 13753 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13753 ms  0x6ea2 ret:0x7fc934668a00
 13753 ms  0x6ea2 PK11_DeriveWithFlags()
 13753 ms  0x6ea2 basekey:0x7fc934668980
 13753 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13753 ms  0x6ea2 ret:0x7fc934668e80
 13754 ms  SECKEY_ECParamsToKeySize()
 13754 ms  0x6ea2 ret:0x100
 13754 ms  SECKEY_ECParamsToBasePointOrderLen()
 13754 ms  0x6ea2 ret:0x100
 13754 ms  SECKEY_ECParamsToBasePointOrderLen()
 13754 ms  0x6ea2 ret:0x100
 13754 ms  0x6ea2 EC_ValidatePublicKey()
 13756 ms  0x6ea2 ret:0x0
 13759 ms  0x6ea2 PK11_DeriveWithFlags()
 13759 ms  0x6ea2 basekey:0x7fc934668980
 13759 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13759 ms  0x6ea2 ret:0x7fc934668e80
 13759 ms  0x6ea2 SSL_AuthCertificateComplete()
 13759 ms  0x6ea2 fd:0x7fc930d3acd0
 13759 ms  0x6ea2 err:0x0
 13759 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13759 ms     | 0x6ea2 basekey:0x7fc934668700
 13759 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13759 ms     | 0x6ea2 ret:0x7fc934668e80
 13759 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13759 ms     | 0x6ea2 basekey:0x7fc934668700
 13759 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13759 ms     | 0x6ea2 ret:0x7fc934668600
 13759 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13759 ms     | 0x6ea2 basekey:0x7fc934668700
 13759 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13759 ms     | 0x6ea2 ret:0x7fc934668b00
 13759 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13759 ms     | 0x6ea2 basekey:0x7fc934668a80
 13759 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13759 ms     | 0x6ea2 ret:0x7fc934668680
 13759 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13759 ms     | 0x6ea2 basekey:0x7fc934668a80
 13759 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13759 ms     | 0x6ea2 ret:0x7fc934674400
 13759 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13759 ms     | 0x6ea2 basekey:0x7fc934668600
 13759 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13759 ms     | 0x6ea2 ret:0x7fc934674400
 13759 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13759 ms     | 0x6ea2 basekey:0x7fc934668600
 13759 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13759 ms     | 0x6ea2 ret:0x7fc934674200
 13759 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13759 ms     | 0x6ea2 basekey:0x7fc934668a80
 13759 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13759 ms     | 0x6ea2 ret:0x7fc934668a00
 13759 ms     | 0x6ea2 PK11_Encrypt()
 13759 ms     | 0x6ea2 symkey:0x7fc934668680
 13772 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13772 ms     | 0x6ea2 basekey:0x7fc934668e80
 13772 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13772 ms     | 0x6ea2 ret:0x7fc934668a00
 13772 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13772 ms     | 0x6ea2 basekey:0x7fc934668e80
 13772 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13772 ms     | 0x6ea2 ret:0x7fc934674200
 13772 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13772 ms     | 0x6ea2 basekey:0x7fc934668700
 13772 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13772 ms     | 0x6ea2 ret:0x7fc934668680
 13772 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13772 ms     | 0x6ea2 privk:0x7fc92ff1a820::7fc92ff1a820  90 67 9c 2c                                      .g.,
 13772 ms     | 0x6ea2 privk:0x7fc92ff1a820::7fc92ff1a820  e5 e5 e5 e5                                      ....
 13772 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13772 ms     | 0x6ea2 privk:0x7fc92ff12820::7fc92ff12820  d0 6d 9c 2c                                      .m.,
 13772 ms     | 0x6ea2 privk:0x7fc92ff12820::7fc92ff12820  e5 e5 e5 e5                                      ....
           /* TID 0x6eaa */
 13773 ms  0x6eaa PR_Close()
 13773 ms  0x6eaa fd:0x7fc92f4bc2e0
           /* TID 0x6ea2 */
 13773 ms  0x6ea2 PK11_Encrypt()
 13773 ms  0x6ea2 symkey:0x7fc929681180
           /* TID 0x6eaa */
 13774 ms  0x6eaa PR_Close()
 13774 ms  0x6eaa fd:0x7fc92f4bc2e0
           /* TID 0x6ea2 */
 13774 ms  0x6ea2 PK11_Derive()
 13774 ms  0x6ea2 basekey:0x7fc934668980
 13775 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13775 ms  0x6ea2 ret:0x7fc934668a80
 13775 ms  0x6ea2 PK11_PubDeriveWithKDF()
 13775 ms  0x6ea2 seckey:0x7fc92ff1f020
 13775 ms     | 0x6ea2 EC_ValidatePublicKey()
 13775 ms     | 0x6ea2 ret:0x0
 13775 ms  0x6ea2 ret:0x7fc934668980
 13775 ms  SECKEY_ECParamsToKeySize()
 13775 ms  0x6ea2 ret:0xff
 13775 ms  0x6ea2 PK11_DeriveWithFlags()
 13775 ms  0x6ea2 basekey:0x7fc934668a80
 13775 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13775 ms  0x6ea2 ret:0x7fc934668700
 13775 ms  0x6ea2 PK11_Derive()
 13775 ms  0x6ea2 basekey:0x7fc934668980
 13775 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13775 ms  0x6ea2 ret:0x7fc934674200
 13775 ms  0x6ea2 PK11_DeriveWithFlags()
 13775 ms  0x6ea2 basekey:0x7fc934674200
 13775 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13775 ms  0x6ea2 ret:0x7fc934668a80
 13775 ms  0x6ea2 PK11_DeriveWithFlags()
 13775 ms  0x6ea2 basekey:0x7fc934674200
 13775 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13775 ms  0x6ea2 ret:0x7fc934668980
 13775 ms  0x6ea2 PK11_DeriveWithFlags()
 13775 ms  0x6ea2 basekey:0x7fc934674200
 13775 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13775 ms  0x6ea2 ret:0x7fc934668700
 13775 ms  0x6ea2 PK11_Derive()
 13775 ms  0x6ea2 basekey:0x7fc934674100
 13775 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13775 ms  0x6ea2 ret:0x7fc934675180
 13775 ms  0x6ea2 PK11_DeriveWithFlags()
 13775 ms  0x6ea2 basekey:0x7fc934668980
 13775 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13775 ms  0x6ea2 ret:0x7fc934674200
 13775 ms  0x6ea2 PK11_DeriveWithFlags()
 13775 ms  0x6ea2 basekey:0x7fc934668980
 13776 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13776 ms  0x6ea2 ret:0x7fc934668700
 13776 ms  SECKEY_ECParamsToKeySize()
 13776 ms  0x6ea2 ret:0x100
 13776 ms  SECKEY_ECParamsToBasePointOrderLen()
 13776 ms  0x6ea2 ret:0x100
 13776 ms  SECKEY_ECParamsToBasePointOrderLen()
 13776 ms  0x6ea2 ret:0x100
 13776 ms  0x6ea2 EC_ValidatePublicKey()
 13779 ms  0x6ea2 ret:0x0
 13781 ms  0x6ea2 PK11_DeriveWithFlags()
 13781 ms  0x6ea2 basekey:0x7fc934668980
 13781 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13781 ms  0x6ea2 ret:0x7fc934668700
 13784 ms  0x6ea2 PK11_DeriveWithFlags()
 13784 ms  0x6ea2 basekey:0x7fc934675280
 13784 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13784 ms  0x6ea2 ret:0x7fc934668700
 13784 ms  0x6ea2 PK11_DeriveWithFlags()
 13784 ms  0x6ea2 basekey:0x7fc934675280
 13784 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13784 ms  0x6ea2 ret:0x7fc934668700
           /* TID 0x6eaa */
 13785 ms  0x6eaa PR_Close()
 13785 ms  0x6eaa fd:0x7fc92c7ffeb0
           /* TID 0x6ea2 */
 13785 ms  0x6ea2 PK11_Encrypt()
 13785 ms  0x6ea2 symkey:0x7fc934668a00
 13786 ms  0x6ea2 PK11_Encrypt()
 13786 ms  0x6ea2 symkey:0x7fc934668a00
 13786 ms  0x6ea2 PR_Close()
 13786 ms  0x6ea2 fd:0x7fc930a96400
 13786 ms     | 0x6ea2 PK11_Encrypt()
 13786 ms     | 0x6ea2 symkey:0x7fc934668c00
 13787 ms  0x6ea2 SSL_AuthCertificateComplete()
 13787 ms  0x6ea2 fd:0x7fc931004970
 13787 ms  0x6ea2 err:0x0
 13787 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13787 ms     | 0x6ea2 basekey:0x7fc934675180
 13787 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13787 ms     | 0x6ea2 ret:0x7fc934668580
 13787 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13787 ms     | 0x6ea2 basekey:0x7fc934675180
 13787 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13787 ms     | 0x6ea2 ret:0x7fc934668080
 13787 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13787 ms     | 0x6ea2 basekey:0x7fc934675180
 13787 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13787 ms     | 0x6ea2 ret:0x7fc92877bc00
 13787 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13787 ms     | 0x6ea2 basekey:0x7fc934668a80
 13787 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13787 ms     | 0x6ea2 ret:0x7fc934675280
 13787 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13787 ms     | 0x6ea2 basekey:0x7fc934668a80
 13787 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13787 ms     | 0x6ea2 ret:0x7fc934674080
 13787 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13787 ms     | 0x6ea2 basekey:0x7fc934668080
 13787 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13787 ms     | 0x6ea2 ret:0x7fc934674080
 13787 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13787 ms     | 0x6ea2 basekey:0x7fc934668080
 13787 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13787 ms     | 0x6ea2 ret:0x7fc934668c00
 13787 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13787 ms     | 0x6ea2 basekey:0x7fc934668a80
 13787 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13787 ms     | 0x6ea2 ret:0x7fc934674200
 13788 ms     | 0x6ea2 PK11_Encrypt()
 13788 ms     | 0x6ea2 symkey:0x7fc934675280
 13792 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13792 ms     | 0x6ea2 basekey:0x7fc934668580
 13792 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13792 ms     | 0x6ea2 ret:0x7fc934674200
 13792 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13792 ms     | 0x6ea2 basekey:0x7fc934668580
 13792 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13792 ms     | 0x6ea2 ret:0x7fc934668c00
 13793 ms     | 0x6ea2 PK11_DeriveWithFlags()
 13793 ms     | 0x6ea2 basekey:0x7fc934675180
 13793 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 13793 ms     | 0x6ea2 ret:0x7fc934675280
 13793 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13793 ms     | 0x6ea2 privk:0x7fc9304df020::7fc9304df020  90 37 a4 2c                                      .7.,
 13793 ms     | 0x6ea2 privk:0x7fc9304df020::7fc9304df020  e5 e5 e5 e5                                      ....
 13793 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 13793 ms     | 0x6ea2 privk:0x7fc92ff1f020::7fc92ff1f020  60 b0 a1 2c                                      `..,
 13793 ms     | 0x6ea2 privk:0x7fc92ff1f020::7fc92ff1f020  e5 e5 e5 e5                                      ....
 13793 ms  0x6ea2 PK11_Encrypt()
 13793 ms  0x6ea2 symkey:0x7fc933aadb00
           /* TID 0x6eaa */
 13801 ms  0x6eaa PR_Close()
 13801 ms  0x6eaa fd:0x7fc92c7ffeb0
           /* TID 0x6ea2 */
 13802 ms  0x6ea2 PK11_DeriveWithFlags()
 13802 ms  0x6ea2 basekey:0x7fc934668680
 13802 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13802 ms  0x6ea2 ret:0x7fc934668980
 13802 ms  0x6ea2 PK11_DeriveWithFlags()
 13802 ms  0x6ea2 basekey:0x7fc934668680
 13802 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13802 ms  0x6ea2 ret:0x7fc934668980
 13802 ms  0x6ea2 PK11_Encrypt()
 13802 ms  0x6ea2 symkey:0x7fc934674200
 13803 ms  0x6ea2 PK11_Encrypt()
 13803 ms  0x6ea2 symkey:0x7fc934668a00
 13803 ms  0x6ea2 PK11_Encrypt()
 13803 ms  0x6ea2 symkey:0x7fc934674180
           /* TID 0x6eaa */
 13804 ms  0x6eaa PR_Close()
 13804 ms  0x6eaa fd:0x7fc927910f70
           /* TID 0x6ea2 */
 13805 ms  0x6ea2 PK11_Encrypt()
 13805 ms  0x6ea2 symkey:0x7fc934668a00
 13805 ms  0x6ea2 SSL_ImportFD()
 13805 ms  0x6ea2 ret:0x7fc92f4db910
 13805 ms  0x6ea2 SSL_AuthCertificateHook()
 13805 ms  0x6ea2 fd:0x7fc92f4db910
 13805 ms  0x6ea2 ret:0x0
 13805 ms  0x6ea2 PR_Connect()
 13805 ms  0x6ea2 fd:0x7fc92f4db910
 13825 ms  0x6ea2 PK11_DeriveWithFlags()
 13825 ms  0x6ea2 basekey:0x7fc934675280
 13826 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13826 ms  0x6ea2 ret:0x7fc934668980
 13826 ms  0x6ea2 PK11_DeriveWithFlags()
 13826 ms  0x6ea2 basekey:0x7fc934675280
 13826 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13826 ms  0x6ea2 ret:0x7fc934668980
 13826 ms  0x6ea2 PR_Close()
 13826 ms  0x6ea2 fd:0x7fc931004970
 13826 ms     | 0x6ea2 PK11_Encrypt()
 13826 ms     | 0x6ea2 symkey:0x7fc934674200
 13843 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13843 ms  0x6ea2 cx:0x7fc92c7e7728
 13844 ms     | 0x6ea2 EC_ValidatePublicKey()
 13844 ms     | 0x6ea2 ret:0x0
 13844 ms  0x6ea2 ret:0x7fc92f440020::7fc92f440020  70 b4 7f 2c                                      p..,
 13844 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 13844 ms  0x6ea2 cx:0x7fc92c7e7728
 13844 ms     | 0x6ea2 EC_ValidatePublicKey()
 13846 ms     | 0x6ea2 ret:0x0
 13846 ms  0x6ea2 ret:0x7fc92ff0c820::7fc92ff0c820  00 66 9c 2c                                      .f.,
           /* TID 0x6eaa */
 13849 ms  0x6eaa PR_Close()
 13849 ms  0x6eaa fd:0x7fc92caaba30
           /* TID 0x6ea2 */
 13849 ms  0x6ea2 PK11_Encrypt()
 13849 ms  0x6ea2 symkey:0x7fc934668a00
           /* TID 0x6eaa */
 13887 ms  0x6eaa PR_Close()
 13887 ms  0x6eaa fd:0x7fc92caaba30
           /* TID 0x6ea2 */
 13888 ms  0x6ea2 PK11_Encrypt()
 13888 ms  0x6ea2 symkey:0x7fc9344c2780
 13888 ms  0x6ea2 PK11_Encrypt()
 13888 ms  0x6ea2 symkey:0x7fc933aadb00
 13888 ms  0x6ea2 PK11_Encrypt()
 13888 ms  0x6ea2 symkey:0x7fc933aadb00
 13888 ms  0x6ea2 PK11_Encrypt()
 13888 ms  0x6ea2 symkey:0x7fc933aadb00
 13889 ms  0x6ea2 PK11_Encrypt()
 13889 ms  0x6ea2 symkey:0x7fc933aadb00
 13900 ms  0x6ea2 PK11_Derive()
 13900 ms  0x6ea2 basekey:0x7fc92877bc00
 13900 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13900 ms  0x6ea2 ret:0x7fc934668080
 13900 ms  0x6ea2 PK11_PubDeriveWithKDF()
 13900 ms  0x6ea2 seckey:0x7fc92f440020
 13900 ms     | 0x6ea2 EC_ValidatePublicKey()
 13900 ms     | 0x6ea2 ret:0x0
 13900 ms  0x6ea2 ret:0x7fc92877bc00
 13900 ms  SECKEY_ECParamsToKeySize()
 13900 ms  0x6ea2 ret:0xff
 13900 ms  0x6ea2 PK11_DeriveWithFlags()
 13900 ms  0x6ea2 basekey:0x7fc934668080
 13900 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13900 ms  0x6ea2 ret:0x7fc934668580
 13900 ms  0x6ea2 PK11_Derive()
 13900 ms  0x6ea2 basekey:0x7fc92877bc00
 13900 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13900 ms  0x6ea2 ret:0x7fc934675280
 13900 ms  0x6ea2 PK11_DeriveWithFlags()
 13900 ms  0x6ea2 basekey:0x7fc934675280
 13900 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13900 ms  0x6ea2 ret:0x7fc934668080
 13900 ms  0x6ea2 PK11_DeriveWithFlags()
 13900 ms  0x6ea2 basekey:0x7fc934675280
 13900 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13900 ms  0x6ea2 ret:0x7fc92877bc00
 13900 ms  0x6ea2 PK11_DeriveWithFlags()
 13900 ms  0x6ea2 basekey:0x7fc934675280
 13900 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13900 ms  0x6ea2 ret:0x7fc934668580
 13900 ms  0x6ea2 PK11_Derive()
 13900 ms  0x6ea2 basekey:0x7fc934674080
 13900 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13900 ms  0x6ea2 ret:0x7fc934674200
 13900 ms  0x6ea2 PK11_DeriveWithFlags()
 13900 ms  0x6ea2 basekey:0x7fc92877bc00
 13900 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13900 ms  0x6ea2 ret:0x7fc934675280
 13900 ms  0x6ea2 PK11_DeriveWithFlags()
 13900 ms  0x6ea2 basekey:0x7fc92877bc00
 13900 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13901 ms  0x6ea2 ret:0x7fc934668580
 13902 ms  SECKEY_ECParamsToKeySize()
 13902 ms  0x6ea2 ret:0x100
 13902 ms  SECKEY_ECParamsToBasePointOrderLen()
 13902 ms  0x6ea2 ret:0x100
 13902 ms  SECKEY_ECParamsToBasePointOrderLen()
 13902 ms  0x6ea2 ret:0x100
 13902 ms  0x6ea2 EC_ValidatePublicKey()
 13904 ms  0x6ea2 ret:0x0
 13906 ms  0x6ea2 PK11_DeriveWithFlags()
 13906 ms  0x6ea2 basekey:0x7fc92877bc00
 13906 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 13906 ms  0x6ea2 ret:0x7fc934668580
 13954 ms  0x6ea2 PK11_Encrypt()
 13954 ms  0x6ea2 symkey:0x7fc933aadb00
           /* TID 0x6eaa */
 13954 ms  0x6eaa PR_Close()
 13954 ms  0x6eaa fd:0x7fc92f4bcfa0
 13964 ms  0x6eaa PR_Close()
 13964 ms  0x6eaa fd:0x7fc92f3b28e0
 13968 ms  0x6eaa PR_Close()
 13968 ms  0x6eaa fd:0x7fc92f3b28e0
 13970 ms  0x6eaa PR_Close()
 13970 ms  0x6eaa fd:0x7fc92f3b28e0
 13982 ms  0x6eaa PR_Close()
 13982 ms  0x6eaa fd:0x7fc9346072e0
           /* TID 0x6ea2 */
 13982 ms  0x6ea2 PK11_Encrypt()
 13982 ms  0x6ea2 symkey:0x7fc9344c2780
 14044 ms  0x6ea2 PK11_Encrypt()
 14044 ms  0x6ea2 symkey:0x7fc9344c2780
           /* TID 0x6eaa */
 14045 ms  0x6eaa PR_Close()
 14045 ms  0x6eaa fd:0x7fc930027d00
 14054 ms  0x6eaa PR_Close()
 14054 ms  0x6eaa fd:0x7fc930027d00
           /* TID 0x6f46 */
 14054 ms  0x6f46 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14055 ms  0x6f46 ret:0x0
           /* TID 0x6ea2 */
 14055 ms  0x6ea2 SSL_AuthCertificateComplete()
 14055 ms  0x6ea2 fd:0x7fc92f4db910
 14055 ms  0x6ea2 err:0x0
 14055 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14055 ms     | 0x6ea2 basekey:0x7fc934674200
 14055 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14055 ms     | 0x6ea2 ret:0x7fc934668580
 14055 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14055 ms     | 0x6ea2 basekey:0x7fc934674200
 14055 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14055 ms     | 0x6ea2 ret:0x7fc934674080
 14055 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14055 ms     | 0x6ea2 basekey:0x7fc934674200
 14055 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14055 ms     | 0x6ea2 ret:0x7fc934668980
 14055 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14055 ms     | 0x6ea2 basekey:0x7fc934668080
 14055 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14055 ms     | 0x6ea2 ret:0x7fc934668a80
 14055 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14055 ms     | 0x6ea2 basekey:0x7fc934668080
 14055 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14055 ms     | 0x6ea2 ret:0x7fc934675180
 14055 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14055 ms     | 0x6ea2 basekey:0x7fc934674080
 14055 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14055 ms     | 0x6ea2 ret:0x7fc934675180
 14055 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14055 ms     | 0x6ea2 basekey:0x7fc934674080
 14055 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14055 ms     | 0x6ea2 ret:0x7fc934668c00
 14055 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14055 ms     | 0x6ea2 basekey:0x7fc934668080
 14055 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14055 ms     | 0x6ea2 ret:0x7fc934675280
 14055 ms     | 0x6ea2 PK11_Encrypt()
 14055 ms     | 0x6ea2 symkey:0x7fc934668a80
 14056 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14056 ms     | 0x6ea2 basekey:0x7fc934668580
 14056 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14056 ms     | 0x6ea2 ret:0x7fc934675280
 14056 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14056 ms     | 0x6ea2 basekey:0x7fc934668580
 14056 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14056 ms     | 0x6ea2 ret:0x7fc934668c00
 14056 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14056 ms     | 0x6ea2 basekey:0x7fc934674200
 14056 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14056 ms     | 0x6ea2 ret:0x7fc934668a80
 14056 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 14056 ms     | 0x6ea2 privk:0x7fc92ff0c820::7fc92ff0c820  00 66 9c 2c                                      .f.,
 14056 ms     | 0x6ea2 privk:0x7fc92ff0c820::7fc92ff0c820  e5 e5 e5 e5                                      ....
 14056 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 14056 ms     | 0x6ea2 privk:0x7fc92f440020::7fc92f440020  70 b4 7f 2c                                      p..,
 14056 ms     | 0x6ea2 privk:0x7fc92f440020::7fc92f440020  e5 e5 e5 e5                                      ....
 14056 ms  0x6ea2 PK11_Encrypt()
 14056 ms  0x6ea2 symkey:0x7fc934675280
 14056 ms  0x6ea2 PK11_Encrypt()
 14056 ms  0x6ea2 symkey:0x7fc934675280
 14059 ms  0x6ea2 PK11_Encrypt()
 14059 ms  0x6ea2 symkey:0x7fc92870d300
           /* TID 0x6eaa */
 14072 ms  0x6eaa PR_Close()
 14072 ms  0x6eaa fd:0x7fc93006ea30
           /* TID 0x6ea2 */
 14121 ms  0x6ea2 PK11_Encrypt()
 14121 ms  0x6ea2 symkey:0x7fc92870d300
           /* TID 0x6eaa */
 14123 ms  0x6eaa PR_Close()
 14123 ms  0x6eaa fd:0x7fc934607280
 14123 ms  0x6eaa PR_Close()
 14123 ms  0x6eaa fd:0x7fc934607bb0
           /* TID 0x6ea2 */
 14123 ms  0x6ea2 PK11_Encrypt()
 14123 ms  0x6ea2 symkey:0x7fc929681680
 14169 ms  0x6ea2 PK11_Encrypt()
 14169 ms  0x6ea2 symkey:0x7fc92c79ae00
 14170 ms  0x6ea2 PK11_DeriveWithFlags()
 14170 ms  0x6ea2 basekey:0x7fc934668a80
 14170 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 14170 ms  0x6ea2 ret:0x7fc92877bc00
 14170 ms  0x6ea2 PK11_DeriveWithFlags()
 14170 ms  0x6ea2 basekey:0x7fc934668a80
 14170 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 14170 ms  0x6ea2 ret:0x7fc92877bc00
 14170 ms  0x6ea2 PK11_Encrypt()
 14170 ms  0x6ea2 symkey:0x7fc934675280
           /* TID 0x6eaa */
 14172 ms  0x6eaa PR_Close()
 14172 ms  0x6eaa fd:0x7fc934607640
           /* TID 0x6ea2 */
 14178 ms  0x6ea2 PK11_Encrypt()
 14178 ms  0x6ea2 symkey:0x7fc929681680
 14192 ms  0x6ea2 PK11_Encrypt()
 14192 ms  0x6ea2 symkey:0x7fc934675280
           /* TID 0x6eaa */
 14195 ms  0x6eaa PR_Close()
 14195 ms  0x6eaa fd:0x7fc934607190
           /* TID 0x6ea2 */
 14352 ms  0x6ea2 PK11_Encrypt()
 14352 ms  0x6ea2 symkey:0x7fc92c79ae00
           /* TID 0x6eaa */
 14353 ms  0x6eaa PR_Close()
 14353 ms  0x6eaa fd:0x7fc934607190
 14372 ms  0x6eaa PR_Close()
 14372 ms  0x6eaa fd:0x7fc934607460
           /* TID 0x6ea2 */
 14439 ms  0x6ea2 SSL_ImportFD()
 14439 ms  0x6ea2 ret:0x7fc934607f70
 14439 ms  0x6ea2 SSL_AuthCertificateHook()
 14439 ms  0x6ea2 fd:0x7fc934607f70
 14439 ms  0x6ea2 ret:0x0
 14439 ms  0x6ea2 PR_Connect()
 14439 ms  0x6ea2 fd:0x7fc934607f70
 14477 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 14477 ms  0x6ea2 cx:0x7fc92c7e80e8
 14477 ms     | 0x6ea2 EC_ValidatePublicKey()
 14477 ms     | 0x6ea2 ret:0x0
 14477 ms  0x6ea2 ret:0x7fc93058c020::7fc93058c020  00 fb 3e 2f                                      ..>/
 14477 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 14477 ms  0x6ea2 cx:0x7fc92c7e80e8
 14478 ms     | 0x6ea2 EC_ValidatePublicKey()
 14480 ms     | 0x6ea2 ret:0x0
 14480 ms  0x6ea2 ret:0x7fc93058e820::7fc93058e820  70 c9 3d 2f                                      p.=/
 14521 ms  0x6ea2 SSL_ImportFD()
 14522 ms  0x6ea2 ret:0x7fc934607b80
 14522 ms  0x6ea2 SSL_AuthCertificateHook()
 14522 ms  0x6ea2 fd:0x7fc934607b80
 14522 ms  0x6ea2 ret:0x0
 14522 ms  0x6ea2 PR_Connect()
 14522 ms  0x6ea2 fd:0x7fc934607b80
 14535 ms  0x6ea2 PK11_Derive()
 14535 ms  0x6ea2 basekey:0x7fc92877bc00
 14535 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 14535 ms  0x6ea2 ret:0x7fc934668080
 14535 ms  0x6ea2 PK11_PubDeriveWithKDF()
 14535 ms  0x6ea2 seckey:0x7fc93058c020
 14536 ms     | 0x6ea2 EC_ValidatePublicKey()
 14536 ms     | 0x6ea2 ret:0x0
 14536 ms  0x6ea2 ret:0x7fc92877bc00
 14536 ms  SECKEY_ECParamsToKeySize()
 14536 ms  0x6ea2 ret:0xff
 14536 ms  0x6ea2 PK11_DeriveWithFlags()
 14536 ms  0x6ea2 basekey:0x7fc934668080
 14536 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 14536 ms  0x6ea2 ret:0x7fc934674200
 14536 ms  0x6ea2 PK11_Derive()
 14536 ms  0x6ea2 basekey:0x7fc92877bc00
 14536 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 14536 ms  0x6ea2 ret:0x7fc934668c00
 14536 ms  0x6ea2 PK11_DeriveWithFlags()
 14536 ms  0x6ea2 basekey:0x7fc934668c00
 14536 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 14536 ms  0x6ea2 ret:0x7fc934668080
 14536 ms  0x6ea2 PK11_DeriveWithFlags()
 14536 ms  0x6ea2 basekey:0x7fc934668c00
 14536 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 14536 ms  0x6ea2 ret:0x7fc92877bc00
 14536 ms  0x6ea2 PK11_DeriveWithFlags()
 14536 ms  0x6ea2 basekey:0x7fc934668c00
 14536 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 14536 ms  0x6ea2 ret:0x7fc934674200
 14536 ms  0x6ea2 PK11_Derive()
 14536 ms  0x6ea2 basekey:0x7fc934668700
 14536 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 14536 ms  0x6ea2 ret:0x7fc934674100
 14536 ms  0x6ea2 PK11_DeriveWithFlags()
 14536 ms  0x6ea2 basekey:0x7fc92877bc00
 14536 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 14536 ms  0x6ea2 ret:0x7fc934668c00
 14536 ms  0x6ea2 PK11_DeriveWithFlags()
 14536 ms  0x6ea2 basekey:0x7fc92877bc00
 14536 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 14536 ms  0x6ea2 ret:0x7fc934674200
 14537 ms  0x6ea2 PK11_DeriveWithFlags()
 14537 ms  0x6ea2 basekey:0x7fc92877bc00
 14537 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 14537 ms  0x6ea2 ret:0x7fc934674200
 14537 ms  0x6ea2 SSL_AuthCertificateComplete()
 14537 ms  0x6ea2 fd:0x7fc934607f70
 14537 ms  0x6ea2 err:0x0
 14537 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14537 ms     | 0x6ea2 basekey:0x7fc934674100
 14537 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14537 ms     | 0x6ea2 ret:0x7fc934674200
 14537 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14537 ms     | 0x6ea2 basekey:0x7fc934674100
 14537 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14537 ms     | 0x6ea2 ret:0x7fc934668700
 14537 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14537 ms     | 0x6ea2 basekey:0x7fc934674100
 14537 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14538 ms     | 0x6ea2 ret:0x7fc934675200
 14538 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14538 ms     | 0x6ea2 basekey:0x7fc934668080
 14538 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14538 ms     | 0x6ea2 ret:0x7fc934668480
 14538 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14538 ms     | 0x6ea2 basekey:0x7fc934668080
 14538 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14538 ms     | 0x6ea2 ret:0x7fc92870de00
 14538 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14538 ms     | 0x6ea2 basekey:0x7fc934668700
 14538 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14538 ms     | 0x6ea2 ret:0x7fc92870de00
 14538 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14538 ms     | 0x6ea2 basekey:0x7fc934668700
 14538 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14538 ms     | 0x6ea2 ret:0x7fc92b98c880
 14538 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14538 ms     | 0x6ea2 basekey:0x7fc934668080
 14538 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14538 ms     | 0x6ea2 ret:0x7fc934668c00
 14538 ms     | 0x6ea2 PK11_Encrypt()
 14538 ms     | 0x6ea2 symkey:0x7fc934668480
 14538 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14538 ms     | 0x6ea2 basekey:0x7fc934674200
 14538 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14538 ms     | 0x6ea2 ret:0x7fc934668c00
 14538 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14538 ms     | 0x6ea2 basekey:0x7fc934674200
 14538 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14538 ms     | 0x6ea2 ret:0x7fc92b98c880
 14538 ms     | 0x6ea2 PK11_DeriveWithFlags()
 14538 ms     | 0x6ea2 basekey:0x7fc934674100
 14538 ms     |    | 0x6ea2 PK11_DeriveWithTemplate()
 14538 ms     | 0x6ea2 ret:0x7fc934668480
 14538 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 14538 ms     | 0x6ea2 privk:0x7fc93058e820::7fc93058e820  70 c9 3d 2f                                      p.=/
 14538 ms     | 0x6ea2 privk:0x7fc93058e820::7fc93058e820  e5 e5 e5 e5                                      ....
 14538 ms     | 0x6ea2 SECKEY_DestroyPrivateKey()
 14538 ms     | 0x6ea2 privk:0x7fc93058c020::7fc93058c020  00 fb 3e 2f                                      ..>/
 14538 ms     | 0x6ea2 privk:0x7fc93058c020::7fc93058c020  e5 e5 e5 e5                                      ....
 14539 ms  0x6ea2 PK11_Encrypt()
 14539 ms  0x6ea2 symkey:0x7fc934668c00
 14539 ms  0x6ea2 PK11_Encrypt()
 14539 ms  0x6ea2 symkey:0x7fc934668c00
 14615 ms  0x6ea2 PK11_DeriveWithFlags()
 14615 ms  0x6ea2 basekey:0x7fc934668480
 14615 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 14616 ms  0x6ea2 ret:0x7fc92877bc00
 14616 ms  0x6ea2 PK11_DeriveWithFlags()
 14616 ms  0x6ea2 basekey:0x7fc934668480
 14616 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 14616 ms  0x6ea2 ret:0x7fc92877bc00
 14616 ms  0x6ea2 PK11_Encrypt()
 14616 ms  0x6ea2 symkey:0x7fc934668c00
 14639 ms  0x6ea2 PK11_Encrypt()
 14639 ms  0x6ea2 symkey:0x7fc934668c00
 14760 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 14760 ms  0x6ea2 cx:0x7fc92c7e8aa8
 14761 ms     | 0x6ea2 EC_ValidatePublicKey()
 14761 ms     | 0x6ea2 ret:0x0
 14761 ms  0x6ea2 ret:0x7fc93058d820::7fc93058d820  10 fa 3e 2f                                      ..>/
 14761 ms  0x6ea2 SECKEY_CreateECPrivateKey()
 14761 ms  0x6ea2 cx:0x7fc92c7e8aa8
 14762 ms     | 0x6ea2 EC_ValidatePublicKey()
 14763 ms     | 0x6ea2 ret:0x0
 14763 ms  0x6ea2 ret:0x7fc930593820::7fc930593820  30 f8 3f 2f                                      0.?/
           /* TID 0x6eaa */
 14850 ms  0x6eaa PR_Close()
 14850 ms  0x6eaa fd:0x7fc92f4bc2e0
           /* TID 0x6ea2 */
 14904 ms  0x6ea2 PK11_Encrypt()
 14904 ms  0x6ea2 symkey:0x7fc927962a80
 15004 ms  0x6ea2 PK11_DeriveWithFlags()
 15004 ms  0x6ea2 basekey:0x7fc92877bc00
 15004 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 15004 ms  0x6ea2 ret:0x7fc934668080
 15004 ms  0x6ea2 PK11_Derive()
 15004 ms  0x6ea2 basekey:0x7fc934668080
 15004 ms     | 0x6ea2 PK11_DeriveWithTemplate()
 15004 ms  0x6ea2 ret:0x7fc934674100
 15005 ms  0x6ea2 SSL_AuthCertificateComplete()
 15005 ms  0x6ea2 fd:0x7fc934607b80
 15005 ms  0x6ea2 err:0x0
 15096 ms  0x6ea2 PK11_Encrypt()
 15096 ms  0x6ea2 symkey:0x7fc92c79ae00
           /* TID 0x6eaa */
 15129 ms  0x6eaa PR_Close()
 15129 ms  0x6eaa fd:0x7fc934607670
 15129 ms  0x6eaa PR_Close()
 15129 ms  0x6eaa fd:0x7fc9346d98e0
 15129 ms  0x6eaa PR_Close()
 15129 ms  0x6eaa fd:0x7fc934a09580
 15129 ms  0x6eaa PR_Close()
 15129 ms  0x6eaa fd:0x7fc934a09d90
 15130 ms  0x6eaa PR_Close()
 15130 ms  0x6eaa fd:0x7fc934607670
 15130 ms  0x6eaa PR_Close()
 15130 ms  0x6eaa fd:0x7fc9346d98e0
 15130 ms  0x6eaa PR_Close()
 15130 ms  0x6eaa fd:0x7fc934a09580
 15130 ms  0x6eaa PR_Close()
 15130 ms  0x6eaa fd:0x7fc934a09d90
 15130 ms  0x6eaa PR_Close()
 15130 ms  0x6eaa fd:0x7fc9354ad4c0
 15130 ms  0x6eaa PR_Close()
 15130 ms  0x6eaa fd:0x7fc9354ad550
 15130 ms  0x6eaa PR_Close()
 15130 ms  0x6eaa fd:0x7fc9354adbe0
 15130 ms  0x6eaa PR_Close()
 15130 ms  0x6eaa fd:0x7fc9354adfa0
 15130 ms  0x6eaa PR_Close()
 15130 ms  0x6eaa fd:0x7fc9354b10d0
 15130 ms  0x6eaa PR_Close()
 15130 ms  0x6eaa fd:0x7fc9354b1220
 15130 ms  0x6eaa PR_Close()
 15130 ms  0x6eaa fd:0x7fc9354b12e0
 15130 ms  0x6eaa PR_Close()
 15130 ms  0x6eaa fd:0x7fc9354b16a0
 15130 ms  0x6eaa PR_Close()
 15130 ms  0x6eaa fd:0x7fc9354b1700
 15130 ms  0x6eaa PR_Close()
 15130 ms  0x6eaa fd:0x7fc9354b1760
 15130 ms  0x6eaa PR_Close()
 15130 ms  0x6eaa fd:0x7fc9354b17f0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354b1850
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354b18b0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354b1910
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354b1970
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354b19d0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354b1a30
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354b1af0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354b1b50
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354b1be0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354b1c40
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354b1ca0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354b1d00
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354b1d60
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354b1dc0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354b1e20
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354b1e80
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354b1ee0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354b1f40
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354b1fa0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354c5160
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354c55b0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354c57f0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354c5b80
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354c5c10
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354c5d60
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354c8040
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354c83d0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354c8460
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354c8760
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354c87c0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354c8940
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354c89a0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354c8c70
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354c8cd0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354c8d30
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354c8d90
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354c8e50
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354c8eb0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc9354c8f10
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc93572e100
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc93572e160
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc93572e2e0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc93572e490
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc93572e640
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc93572eb80
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc93572ee50
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc93572eeb0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc93575d160
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc93575d6a0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc93575d700
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc93575d850
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc93575d8b0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc92c722ca0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc93579f160
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc93579f1f0
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc93579f340
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc93579f550
 15131 ms  0x6eaa PR_Close()
 15131 ms  0x6eaa fd:0x7fc93579fc40
 15132 ms  0x6eaa PR_Close()
 15132 ms  0x6eaa fd:0x7fc93579fd90
 15132 ms  0x6eaa PR_Close()
 15132 ms  0x6eaa fd:0x7fc93579ff40
 15132 ms  0x6eaa PR_Close()
 15132 ms  0x6eaa fd:0x7fc93579ffa0
 15132 ms  0x6eaa PR_Close()
 15132 ms  0x6eaa fd:0x7fc9357a11f0
 15132 ms  0x6eaa PR_Close()
 15132 ms  0x6eaa fd:0x7fc9357a1880
 15132 ms  0x6eaa PR_Close()
 15132 ms  0x6eaa fd:0x7fc9357cf100
 15132 ms  0x6eaa PR_Close()
 15132 ms  0x6eaa fd:0x7fc936125580
           /* TID 0x6ea2 */
 15243 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 15243 ms  0x6ea2 privk:0x7fc930593820::7fc930593820  30 f8 3f 2f                                      0.?/
 15244 ms  0x6ea2 privk:0x7fc930593820::7fc930593820  e5 e5 e5 e5                                      ....
 15245 ms  0x6ea2 SECKEY_DestroyPrivateKey()
 15245 ms  0x6ea2 privk:0x7fc93058d820::7fc93058d820  10 fa 3e 2f                                      ..>/
 15245 ms  0x6ea2 privk:0x7fc93058d820::7fc93058d820  e5 e5 e5 e5                                      ....
           /* TID 0x6eaa */
 15251 ms  0x6eaa PR_Close()
 15251 ms  0x6eaa fd:0x7fc9153ff130
           /* TID 0x6ea2 */
 15253 ms  0x6ea2 PK11_Encrypt()
 15253 ms  0x6ea2 symkey:0x7fc92c79ae00
           /* TID 0x6eaa */
 15304 ms  0x6eaa PR_Close()
 15304 ms  0x6eaa fd:0x7fc934658b20
 15304 ms  0x6eaa PR_Close()
 15304 ms  0x6eaa fd:0x7fc92c722e80
 15488 ms  0x6eaa PR_Close()
 15488 ms  0x6eaa fd:0x7fc934607280
           /* TID 0x6ea2 */
 15496 ms  0x6ea2 PR_Close()
 15496 ms  0x6ea2 fd:0x7fc927080f10
           /* TID 0x6e97 */
 15497 ms  0x6e97 EC_ValidatePublicKey()
 15499 ms  0x6e97 ret:0x0
 15499 ms  0x6e97 EC_ValidatePublicKey()
 15500 ms  0x6e97 ret:0x0
 15500 ms  0x6e97 EC_ValidatePublicKey()
 15502 ms  0x6e97 ret:0x0
 15502 ms  0x6e97 EC_ValidatePublicKey()
 15504 ms  0x6e97 ret:0x0
 15504 ms  0x6e97 EC_ValidatePublicKey()
 15506 ms  0x6e97 ret:0x0
 15506 ms  0x6e97 EC_ValidatePublicKey()
 15524 ms  0x6e97 ret:0x0
 15524 ms  0x6e97 EC_ValidatePublicKey()
 15526 ms  0x6e97 ret:0x0
 15526 ms  0x6e97 EC_ValidatePublicKey()
 15537 ms  0x6e97 ret:0x0
 15537 ms  0x6e97 EC_ValidatePublicKey()
 15539 ms  0x6e97 ret:0x0
 15539 ms  0x6e97 EC_ValidatePublicKey()
 15541 ms  0x6e97 ret:0x0
           /* TID 0x6ea2 */
 15546 ms  0x6ea2 PK11_Encrypt()
 15546 ms  0x6ea2 symkey:0x7fc934668c00
 15552 ms  0x6ea2 PK11_Encrypt()
 15552 ms  0x6ea2 symkey:0x7fc934668a00
 15553 ms  0x6ea2 PK11_Encrypt()
 15553 ms  0x6ea2 symkey:0x7fc9344c2180
 15553 ms  0x6ea2 PK11_Encrypt()
 15553 ms  0x6ea2 symkey:0x7fc933a9eb80
 15553 ms  0x6ea2 PK11_Encrypt()
 15553 ms  0x6ea2 symkey:0x7fc929681680
 15553 ms  0x6ea2 PK11_Encrypt()
 15553 ms  0x6ea2 symkey:0x7fc92870d300
 15553 ms  0x6ea2 PK11_Encrypt()
 15553 ms  0x6ea2 symkey:0x7fc9282ed880
 15553 ms  0x6ea2 PK11_Encrypt()
 15553 ms  0x6ea2 symkey:0x7fc933aadb00
 15554 ms  0x6ea2 PK11_Encrypt()
 15554 ms  0x6ea2 symkey:0x7fc933a9db80
 15554 ms  0x6ea2 PK11_Encrypt()
 15554 ms  0x6ea2 symkey:0x7fc934675280
 15554 ms  0x6ea2 PK11_Encrypt()
 15554 ms  0x6ea2 symkey:0x7fc933aae500
 15554 ms  0x6ea2 PK11_Encrypt()
 15554 ms  0x6ea2 symkey:0x7fc934674300
 15554 ms  0x6ea2 PK11_Encrypt()
 15554 ms  0x6ea2 symkey:0x7fc934674180
 15555 ms  0x6ea2 PK11_Encrypt()
 15555 ms  0x6ea2 symkey:0x7fc933a9ee80
 15555 ms  0x6ea2 PK11_Encrypt()
 15555 ms  0x6ea2 symkey:0x7fc933aad280
 15555 ms  0x6ea2 PK11_Encrypt()
 15555 ms  0x6ea2 symkey:0x7fc9344c2780
 15555 ms  0x6ea2 PK11_Encrypt()
 15555 ms  0x6ea2 symkey:0x7fc929681180
 15555 ms  0x6ea2 PK11_Encrypt()
 15555 ms  0x6ea2 symkey:0x7fc92c79ae00
 15555 ms  0x6ea2 PR_Close()
 15555 ms  0x6ea2 fd:0x7fc92ffff040
 15555 ms  0x6ea2 PR_Close()
 15555 ms  0x6ea2 fd:0x7fc92cbff160
 15555 ms  0x6ea2 PR_Close()
 15555 ms  0x6ea2 fd:0x7fc92c943b80
 15555 ms  0x6ea2 PR_Close()
 15555 ms  0x6ea2 fd:0x7fc92c9182b0
 15556 ms  0x6ea2 PR_Close()
 15556 ms  0x6ea2 fd:0x7fc9282fec70
 15556 ms  0x6ea2 PR_Close()
 15556 ms  0x6ea2 fd:0x7fc92c4c9ee0
 15556 ms  0x6ea2 PR_Close()
 15556 ms  0x6ea2 fd:0x7fc92c4fa520
 15556 ms  0x6ea2 PR_Close()
 15556 ms  0x6ea2 fd:0x7fc92c4fa1c0
 15556 ms  0x6ea2 PR_Close()
 15556 ms  0x6ea2 fd:0x7fc92c320370
 15557 ms  0x6ea2 PR_Close()
 15557 ms  0x6ea2 fd:0x7fc92967ef70
 15557 ms  0x6ea2 PR_Close()
 15557 ms  0x6ea2 fd:0x7fc92c648670
 15557 ms  0x6ea2 PR_Close()
 15557 ms  0x6ea2 fd:0x7fc93006e400
 15557 ms  0x6ea2 PR_Close()
 15557 ms  0x6ea2 fd:0x7fc92c918250
 15557 ms  0x6ea2 PR_Close()
 15557 ms  0x6ea2 fd:0x7fc92676cb20
 15558 ms  0x6ea2 PR_Close()
 15558 ms  0x6ea2 fd:0x7fc92676cb80
 15558 ms  0x6ea2 PR_Close()
 15558 ms  0x6ea2 fd:0x7fc927910a00
 15558 ms  0x6ea2 PR_Close()
 15558 ms  0x6ea2 fd:0x7fc927910a60
 15558 ms  0x6ea2 PR_Close()
 15558 ms  0x6ea2 fd:0x7fc9264682e0
 15558 ms  0x6ea2 PR_Close()
 15558 ms  0x6ea2 fd:0x7fc9264683a0
 15558 ms  0x6ea2 PR_Close()
 15558 ms  0x6ea2 fd:0x7fc9264681c0
 15558 ms  0x6ea2 PR_Close()
 15558 ms  0x6ea2 fd:0x7fc92676caf0
 15558 ms  0x6ea2 PR_Close()
 15558 ms  0x6ea2 fd:0x7fc92b9fea90
 15559 ms  0x6ea2 PR_Close()
 15559 ms  0x6ea2 fd:0x7fc92797da00
 15559 ms  0x6ea2 PR_Close()
 15559 ms  0x6ea2 fd:0x7fc927b7a460
 15559 ms  0x6ea2 PR_Close()
 15559 ms  0x6ea2 fd:0x7fc92967eb50
 15559 ms  0x6ea2 PR_Close()
 15559 ms  0x6ea2 fd:0x7fc92676c9a0
           /* TID 0x6ef4 */
 15559 ms  0x6ef4 PR_Close()
 15559 ms  0x6ef4 fd:0x7fc915503760
 15559 ms  0x6ef4 PR_Close()
 15559 ms  0x6ef4 fd:0x7fc915503760
           /* TID 0x6ea2 */
 15568 ms  0x6ea2 PR_Close()
 15568 ms  0x6ea2 fd:0x7fc92c96fa00
 15569 ms  0x6ea2 PR_Close()
 15569 ms  0x6ea2 fd:0x7fc92f4bc1f0
 15570 ms  0x6ea2 PR_Close()
 15570 ms  0x6ea2 fd:0x7fc92c406910
 15570 ms  0x6ea2 PR_Close()
 15570 ms  0x6ea2 fd:0x7fc92c4de760
 15570 ms  0x6ea2 PR_Close()
 15570 ms  0x6ea2 fd:0x7fc92f4bce80
 15570 ms  0x6ea2 PR_Close()
 15570 ms  0x6ea2 fd:0x7fc92c96f1c0
 15571 ms  0x6ea2 PR_Close()
 15571 ms  0x6ea2 fd:0x7fc92cbff3a0
 15571 ms  0x6ea2 PR_Close()
 15571 ms  0x6ea2 fd:0x7fc9296c1070
 15571 ms  0x6ea2 PR_Close()
 15571 ms  0x6ea2 fd:0x7fc9153ff490
 15576 ms  0x6ea2 PR_Close()
 15576 ms  0x6ea2 fd:0x7fc9354addf0
 15576 ms     | 0x6ea2 PK11_Encrypt()
 15576 ms     | 0x6ea2 symkey:0x7fc91552c100
 15576 ms  0x6ea2 PR_Close()
 15576 ms  0x6ea2 fd:0x7fc9354adca0
 15576 ms  0x6ea2 PR_Close()
 15576 ms  0x6ea2 fd:0x7fc9354ada60
 15576 ms     | 0x6ea2 PK11_Encrypt()
 15576 ms     | 0x6ea2 symkey:0x7fc9361fec80
 15576 ms  0x6ea2 PR_Close()
 15576 ms  0x6ea2 fd:0x7fc92690dee0
 15576 ms     | 0x6ea2 PK11_Encrypt()
 15576 ms     | 0x6ea2 symkey:0x7fc927e3cd00
 15577 ms  0x6ea2 PR_Close()
 15577 ms  0x6ea2 fd:0x7fc92676c520
 15577 ms  0x6ea2 PR_Close()
 15577 ms  0x6ea2 fd:0x7fc934607b80
           /* TID 0x6e97 */
 15581 ms  0x6e97 PR_Close()
 15581 ms  0x6e97 fd:0x7fc92961c190
 15581 ms  0x6e97 PR_Close()
 15581 ms  0x6e97 fd:0x7fc915503fa0
           /* TID 0x6ea2 */
 15582 ms  0x6ea2 PR_Close()
 15582 ms  0x6ea2 fd:0x7fc92f3b2880
 15582 ms     | 0x6ea2 PK11_Encrypt()
 15582 ms     | 0x6ea2 symkey:0x7fc933aad280
 15582 ms  0x6ea2 PR_Close()
 15582 ms  0x6ea2 fd:0x7fc92ffb22e0
 15582 ms     | 0x6ea2 PK11_Encrypt()
 15582 ms     | 0x6ea2 symkey:0x7fc933a9ee80
 15582 ms  0x6ea2 PR_Close()
 15582 ms  0x6ea2 fd:0x7fc92c943190
 15582 ms     | 0x6ea2 PK11_Encrypt()
 15582 ms     | 0x6ea2 symkey:0x7fc92870d300
           /* TID 0x6e97 */
 15584 ms  0x6e97 PR_Close()
 15584 ms  0x6e97 fd:0x7fc9262daeb0
 15584 ms  0x6e97 PR_Close()
 15584 ms  0x6e97 fd:0x7fc9262dae20
           /* TID 0x6ea2 */
 15585 ms  0x6ea2 PR_Close()
 15585 ms  0x6ea2 fd:0x7fc9304a8fd0
 15585 ms     | 0x6ea2 PK11_Encrypt()
 15585 ms     | 0x6ea2 symkey:0x7fc934674180
 15585 ms  0x6ea2 PR_Close()
 15585 ms  0x6ea2 fd:0x7fc92f4bc190
 15585 ms     | 0x6ea2 PK11_Encrypt()
 15585 ms     | 0x6ea2 symkey:0x7fc933a9eb80
 15585 ms  0x6ea2 PR_Close()
 15585 ms  0x6ea2 fd:0x7fc930d3acd0
 15585 ms     | 0x6ea2 PK11_Encrypt()
 15585 ms     | 0x6ea2 symkey:0x7fc934668a00
 15586 ms  0x6ea2 PR_Close()
 15586 ms  0x6ea2 fd:0x7fc92f4db910
 15586 ms     | 0x6ea2 PK11_Encrypt()
 15586 ms     | 0x6ea2 symkey:0x7fc934675280
 15586 ms  0x6ea2 PR_Close()
 15586 ms  0x6ea2 fd:0x7fc9300effd0
 15586 ms     | 0x6ea2 PK11_Encrypt()
 15586 ms     | 0x6ea2 symkey:0x7fc933aadb00
 15586 ms  0x6ea2 PR_Close()
 15586 ms  0x6ea2 fd:0x7fc92c917910
 15586 ms     | 0x6ea2 PK11_Encrypt()
 15586 ms     | 0x6ea2 symkey:0x7fc929681180
 15586 ms  0x6ea2 PR_Close()
 15586 ms  0x6ea2 fd:0x7fc92cbcdcd0
 15586 ms     | 0x6ea2 PK11_Encrypt()
 15586 ms     | 0x6ea2 symkey:0x7fc9282ed880
 15587 ms  0x6ea2 PR_Close()
 15587 ms  0x6ea2 fd:0x7fc92c795d60
 15587 ms     | 0x6ea2 PK11_Encrypt()
 15587 ms     | 0x6ea2 symkey:0x7fc92c79ae00
 15587 ms  0x6ea2 PR_Close()
 15587 ms  0x6ea2 fd:0x7fc9300af8e0
 15587 ms     | 0x6ea2 PK11_Encrypt()
 15587 ms     | 0x6ea2 symkey:0x7fc9344c2180
 15587 ms  0x6ea2 PR_Close()
 15587 ms  0x6ea2 fd:0x7fc92f3b25e0
 15587 ms     | 0x6ea2 PK11_Encrypt()
 15587 ms     | 0x6ea2 symkey:0x7fc929681680
           /* TID 0x6e97 */
 15588 ms  0x6e97 PR_Close()
 15588 ms  0x6e97 fd:0x7fc9262daeb0
 15588 ms  0x6e97 PR_Close()
 15588 ms  0x6e97 fd:0x7fc9262dae20
           /* TID 0x6f06 */
 15593 ms  0x6f06 PR_Close()
 15593 ms  0x6f06 fd:0x7fc915503e80
           /* TID 0x6ea2 */
 15595 ms  0x6ea2 PR_Close()
 15595 ms  0x6ea2 fd:0x7fc92f3b2460
 15595 ms     | 0x6ea2 PK11_Encrypt()
 15595 ms     | 0x6ea2 symkey:0x7fc9344c2780
 15596 ms  0x6ea2 PR_Close()
 15596 ms  0x6ea2 fd:0x7fc934607f70
 15596 ms     | 0x6ea2 PK11_Encrypt()
 15596 ms     | 0x6ea2 symkey:0x7fc934668c00
 15596 ms  0x6ea2 PR_Close()
 15596 ms  0x6ea2 fd:0x7fc92ffb2400
 15596 ms     | 0x6ea2 PK11_Encrypt()
 15596 ms     | 0x6ea2 symkey:0x7fc933a9db80
 15596 ms  0x6ea2 PR_Close()
 15596 ms  0x6ea2 fd:0x7fc92f3dba00
 15596 ms     | 0x6ea2 PK11_Encrypt()
 15596 ms     | 0x6ea2 symkey:0x7fc933aae500
 15596 ms  0x6ea2 PR_Close()
 15596 ms  0x6ea2 fd:0x7fc930d3aaf0
 15596 ms     | 0x6ea2 PK11_Encrypt()
 15596 ms     | 0x6ea2 symkey:0x7fc934674300
           /* TID 0x6e97 */
 15627 ms  0x6e97 PR_Close()
 15627 ms  0x6e97 fd:0x7fc9262daeb0
 15630 ms  0x6e97 PR_Close()
 15630 ms  0x6e97 fd:0x7fc92690df70
 15631 ms  0x6e97 PR_Close()
 15631 ms  0x6e97 fd:0x7fc9262daeb0
 15631 ms  0x6e97 PR_Close()
 15631 ms  0x6e97 fd:0x7fc92690df70
 15632 ms  0x6e97 PR_Close()
 15632 ms  0x6e97 fd:0x7fc9314c89a0
 15632 ms  0x6e97 PR_Close()
 15632 ms  0x6e97 fd:0x7fc9314c88b0
 15632 ms  0x6e97 PR_Close()
 15632 ms  0x6e97 fd:0x7fc9314c8a60
 15634 ms  0x6e97 PR_Close()
 15634 ms  0x6e97 fd:0x7fc92690dd90
 15637 ms  0x6e97 PR_Close()
 15637 ms  0x6e97 fd:0x7fc927b7ad90
 15640 ms  0x6e97 PR_Close()
 15640 ms  0x6e97 fd:0x7fc9262daeb0
 15640 ms  0x6e97 PR_Close()
 15640 ms  0x6e97 fd:0x7fc927ed2850
 15641 ms  0x6e97 PR_Close()
 15641 ms  0x6e97 fd:0x7fc9262daeb0
 15641 ms  0x6e97 PR_Close()
 15641 ms  0x6e97 fd:0x7fc927ed2850
 15644 ms  0x6e97 PR_Close()
 15644 ms  0x6e97 fd:0x7fc927ed2880
 15646 ms  0x6e97 PR_Close()
 15646 ms  0x6e97 fd:0x7fc927ed2880
 15648 ms  0x6e97 PR_Close()
 15648 ms  0x6e97 fd:0x7fc9262daeb0
 15648 ms  0x6e97 PR_Close()
 15648 ms  0x6e97 fd:0x7fc927ed2910
 15648 ms  0x6e97 PR_Close()
 15648 ms  0x6e97 fd:0x7fc9262daeb0
 15648 ms  0x6e97 PR_Close()
 15648 ms  0x6e97 fd:0x7fc927ed2910
 15651 ms  0x6e97 PR_Close()
 15651 ms  0x6e97 fd:0x7fc927ed2970
 15653 ms  0x6e97 PR_Close()
 15653 ms  0x6e97 fd:0x7fc927ed2970
 15664 ms  0x6e97 PR_Close()
 15664 ms  0x6e97 fd:0x7fc92690df70
 15665 ms  0x6e97 PR_Close()
 15665 ms  0x6e97 fd:0x7fc92690df70
 15668 ms  0x6e97 PR_Close()
 15668 ms  0x6e97 fd:0x7fc92690dfa0
           /* TID 0x6f06 */
 15673 ms  0x6f06 PR_Close()
 15673 ms  0x6f06 fd:0x7fc915503e80
 15678 ms  0x6f06 PR_Close()
 15678 ms  0x6f06 fd:0x7fc915503e80
           /* TID 0x6e97 */
 15681 ms  0x6e97 PR_Close()
 15681 ms  0x6e97 fd:0x7fc9262daeb0
 15681 ms  0x6e97 PR_Close()
 15681 ms  0x6e97 fd:0x7fc92798c310
           /* TID 0x6f06 */
 15685 ms  0x6f06 PR_Close()
 15685 ms  0x6f06 fd:0x7fc92798c340
 15718 ms  0x6f06 PR_Close()
 15718 ms  0x6f06 fd:0x7fc92676c1f0
           /* TID 0x6ea2 */
 15730 ms  0x6ea2 PK11_Encrypt()
 15730 ms  0x6ea2 symkey:0x7fc927962a80
 15731 ms  0x6ea2 PK11_Encrypt()
 15731 ms  0x6ea2 symkey:0x7fc927962a80
 15731 ms  0x6ea2 PR_Close()
 15731 ms  0x6ea2 fd:0x7fc92797d550
 15731 ms     | 0x6ea2 PK11_Encrypt()
 15731 ms     | 0x6ea2 symkey:0x7fc927962a80
           /* TID 0x6e9c */
 15735 ms  0x6e9c PR_Close()
 15735 ms  0x6e9c fd:0x7fc92ffe7e20
           /* TID 0x6f06 */
 15747 ms  0x6f06 PR_Close()
 15747 ms  0x6f06 fd:0x7fc92676c1f0
           /* TID 0x6ea2 */
 15757 ms  0x6ea2 PR_Close()
 15757 ms  0x6ea2 fd:0x7fc9296c1700
           /* TID 0x6e97 */
 15757 ms  0x6e97 PR_Close()
 15757 ms  0x6e97 fd:0x7fc9262daeb0
 15758 ms  0x6e97 PR_Close()
 15758 ms  0x6e97 fd:0x7fc92690d3a0
           /* TID 0x6ef4 */
 15758 ms  0x6ef4 PR_Close()
 15758 ms  0x6ef4 fd:0x7fc92690d5e0
 15758 ms  0x6ef4 PR_Close()
 15758 ms  0x6ef4 fd:0x7fc915503e50
 15758 ms  0x6ef4 PR_Close()
 15758 ms  0x6ef4 fd:0x7fc915503e50
 15758 ms  0x6ef4 PR_Close()
 15758 ms  0x6ef4 fd:0x7fc915503e50
           /* TID 0x6f06 */
 15759 ms  0x6f06 PR_Close()
 15759 ms  0x6f06 fd:0x7fc92690d3d0
           /* TID 0x6eaa */
 15761 ms  0x6eaa PR_Close()
 15761 ms  0x6eaa fd:0x7fc927910580
 15762 ms  0x6eaa PR_Close()
 15762 ms  0x6eaa fd:0x7fc9279105b0
           /* TID 0x6e9c */
 15769 ms  0x6e9c PR_Close()
 15769 ms  0x6e9c fd:0x7fc927080220
           /* TID 0x6e97 */
 15808 ms  0x6e97 PR_Close()
 15808 ms  0x6e97 fd:0x7fc9262daeb0
 15808 ms  0x6e97 PR_Close()
 15808 ms  0x6e97 fd:0x7fc915503dc0
           /* TID 0x6f06 */
 15810 ms  0x6f06 PR_Close()
 15810 ms  0x6f06 fd:0x7fc915503df0
           /* TID 0x6e9c */
 15812 ms  0x6e9c PR_Close()
 15812 ms  0x6e9c fd:0x7fc92c648790
           /* TID 0x6f06 */
 15814 ms  0x6f06 PR_Close()
 15814 ms  0x6f06 fd:0x7fc915503bb0
 15850 ms  0x6f06 PR_Close()
 15850 ms  0x6f06 fd:0x7fc915503730
 15851 ms  0x6f06 PR_Close()
 15851 ms  0x6f06 fd:0x7fc915503730
 15877 ms  0x6f06 PR_Close()
 15877 ms  0x6f06 fd:0x7fc915503d30
 15879 ms  0x6f06 PR_Close()
 15879 ms  0x6f06 fd:0x7fc915503dc0
 15900 ms  0x6f06 PR_Close()
 15900 ms  0x6f06 fd:0x7fc926468dc0
 15907 ms  0x6f06 PR_Close()
 15907 ms  0x6f06 fd:0x7fc92676cc70
 15914 ms  0x6f06 PR_Close()
 15914 ms  0x6f06 fd:0x7fc927080220
 15924 ms  0x6f06 PR_Close()
 15924 ms  0x6f06 fd:0x7fc927080f10
 15926 ms  0x6f06 PR_Close()
 15926 ms  0x6f06 fd:0x7fc927080f10
           /* TID 0x6e97 */
 16085 ms  0x6e97 PR_Close()
 16085 ms  0x6e97 fd:0x7fc9155031f0
 16085 ms  0x6e97 PR_Close()
 16085 ms  0x6e97 fd:0x7fc9155031f0
 16091 ms  0x6e97 PR_Close()
 16091 ms  0x6e97 fd:0x7fc94e7da130
 16091 ms  0x6e97 PR_Close()
 16091 ms  0x6e97 fd:0x7fc94e7da190
Process terminated
