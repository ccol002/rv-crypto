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
           /* TID 0xe8f */
   131 ms  0xe8f PR_Close()
   131 ms  0xe8f fd:0x7f2de2da06d0
           /* TID 0xe87 */
   312 ms  0xe87 SSL_ImportFD()
   312 ms  0xe87 ret:0x7f2de2ec36d0
   312 ms  0xe87 SSL_AuthCertificateHook()
   312 ms  0xe87 fd:0x7f2de2ec36d0
   312 ms  0xe87 ret:0x0
   312 ms  0xe87 PR_Connect()
   312 ms  0xe87 fd:0x7f2de2ec36d0
   519 ms  0xe87 SECKEY_CreateECPrivateKey()
   519 ms  0xe87 cx:0x7f2de2da47e8
   521 ms     | 0xe87 EC_ValidatePublicKey()
   521 ms     | 0xe87 ret:0x0
   521 ms  0xe87 ret:0x7f2de2e4a020::7f2de2e4a020  00 cb ec e2                                      ....
   521 ms  0xe87 SECKEY_CreateECPrivateKey()
   521 ms  0xe87 cx:0x7f2de2da47e8
   523 ms     | 0xe87 EC_ValidatePublicKey()
   526 ms     | 0xe87 ret:0x0
   527 ms  0xe87 ret:0x7f2de2e4c020::7f2de2e4c020  40 cc ec e2                                      @...
           /* TID 0xe94 */
   666 ms  0xe94 PR_Close()
   666 ms  0xe94 fd:0x7f2de2ec3b20
   668 ms  0xe94 PR_Close()
   668 ms  0xe94 fd:0x7f2de2ec3b20
           /* TID 0xe87 */
   740 ms  SECKEY_ECParamsToKeySize()
   740 ms  0xe87 ret:0x100
   740 ms  0xe87 SECKEY_CreateECPrivateKey()
   740 ms  0xe87 cx:0x7f2de2da47e8
   742 ms     | 0xe87 EC_ValidatePublicKey()
   745 ms     | 0xe87 ret:0x0
   745 ms  0xe87 ret:0x7f2de2e55020::7f2de2e55020  40 37 ef e2                                      @7..
   746 ms  0xe87 PK11_PubDeriveWithKDF()
   746 ms  0xe87 seckey:0x7f2de2e55020
   746 ms     | 0xe87 EC_ValidatePublicKey()
   749 ms     | 0xe87 ret:0x0
   753 ms  0xe87 ret:0x7f2de4afe900
   753 ms  0xe87 PK11_DeriveWithFlags()
   753 ms  0xe87 basekey:0x7f2de4afe900
   753 ms     | 0xe87 PK11_DeriveWithTemplate()
   753 ms  0xe87 ret:0x7f2de2eed580
   753 ms  0xe87 PK11_Derive()
   753 ms  0xe87 basekey:0x7f2de2eed580
   753 ms     | 0xe87 PK11_DeriveWithTemplate()
   754 ms  0xe87 ret:0x7f2de2eed680
   754 ms  0xe87 SECKEY_DestroyPrivateKey()
   754 ms  0xe87 privk:0x7f2de2e55020::7f2de2e55020  40 37 ef e2                                      @7..
   754 ms  0xe87 privk:0x7f2de2e55020::7f2de2e55020  e5 e5 e5 e5                                      ....
   754 ms  0xe87 PK11_Encrypt()
   754 ms  0xe87 symkey:0x7f2de2eed800
   755 ms  0xe87 PR_Connect()
   755 ms  0xe87 fd:0x7f2de2ec3ca0
           /* TID 0xe94 */
   795 ms  0xe94 PR_Close()
   795 ms  0xe94 fd:0x7f2de2ec3bb0
           /* TID 0xe8f */
   808 ms  0xe8f PR_Close()
   808 ms  0xe8f fd:0x7f2de2ec3bb0
           /* TID 0xee4 */
   808 ms  0xee4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   808 ms  0xee4 ret:0x0
           /* TID 0xe87 */
   809 ms  0xe87 SSL_AuthCertificateComplete()
   809 ms  0xe87 fd:0x7f2de2ec36d0
   809 ms  0xe87 err:0x0
   809 ms  0xe87 PK11_Encrypt()
   809 ms  0xe87 symkey:0x7f2de2eed800
   963 ms  0xe87 SECKEY_DestroyPrivateKey()
   963 ms  0xe87 privk:0x7f2de2e4c020::7f2de2e4c020  40 cc ec e2                                      @...
   963 ms  0xe87 privk:0x7f2de2e4c020::7f2de2e4c020  e5 e5 e5 e5                                      ....
   963 ms  0xe87 SECKEY_DestroyPrivateKey()
   963 ms  0xe87 privk:0x7f2de2e4a020::7f2de2e4a020  00 cb ec e2                                      ....
   964 ms  0xe87 privk:0x7f2de2e4a020::7f2de2e4a020  e5 e5 e5 e5                                      ....
  1177 ms  0xe87 SSL_ImportFD()
  1178 ms  0xe87 ret:0x7f2de2ec3f70
  1178 ms  0xe87 SSL_AuthCertificateHook()
  1178 ms  0xe87 fd:0x7f2de2ec3f70
  1178 ms  0xe87 ret:0x0
  1178 ms  0xe87 PR_Connect()
  1178 ms  0xe87 fd:0x7f2de2ec3f70
  1204 ms  0xe87 SECKEY_CreateECPrivateKey()
  1204 ms  0xe87 cx:0x7f2de2eef588
  1205 ms     | 0xe87 EC_ValidatePublicKey()
  1205 ms     | 0xe87 ret:0x0
  1205 ms  0xe87 ret:0x7f2de2e4b820::7f2de2e4b820  40 cc ec e2                                      @...
  1205 ms  0xe87 SECKEY_CreateECPrivateKey()
  1205 ms  0xe87 cx:0x7f2de2eef588
  1207 ms     | 0xe87 EC_ValidatePublicKey()
  1209 ms     | 0xe87 ret:0x0
  1209 ms  0xe87 ret:0x7f2de2e51820::7f2de2e51820  60 35 ef e2                                      `5..
           /* TID 0xee4 */
  1262 ms  0xee4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1262 ms  0xee4 ret:0x0
           /* TID 0xe87 */
  1263 ms  SECKEY_ECParamsToKeySize()
  1263 ms  0xe87 ret:0x100
  1263 ms  0xe87 SECKEY_CreateECPrivateKey()
  1263 ms  0xe87 cx:0x7f2de2eef588
  1265 ms     | 0xe87 EC_ValidatePublicKey()
  1269 ms     | 0xe87 ret:0x0
  1269 ms  0xe87 ret:0x7f2de2e55020::7f2de2e55020  e0 37 ef e2                                      .7..
  1269 ms  0xe87 PK11_PubDeriveWithKDF()
  1269 ms  0xe87 seckey:0x7f2de2e55020
  1269 ms     | 0xe87 EC_ValidatePublicKey()
  1273 ms     | 0xe87 ret:0x0
  1277 ms  0xe87 ret:0x7f2de4afe900
  1277 ms  0xe87 PK11_DeriveWithFlags()
  1277 ms  0xe87 basekey:0x7f2de4afe900
  1277 ms     | 0xe87 PK11_DeriveWithTemplate()
  1277 ms  0xe87 ret:0x7f2de2e79b00
  1277 ms  0xe87 PK11_Derive()
  1277 ms  0xe87 basekey:0x7f2de2e79b00
  1277 ms     | 0xe87 PK11_DeriveWithTemplate()
  1277 ms  0xe87 ret:0x7f2de2eee080
  1277 ms  0xe87 SECKEY_DestroyPrivateKey()
  1277 ms  0xe87 privk:0x7f2de2e55020::7f2de2e55020  e0 37 ef e2                                      .7..
  1277 ms  0xe87 privk:0x7f2de2e55020::7f2de2e55020  e5 e5 e5 e5                                      ....
  1278 ms  0xe87 PK11_Encrypt()
  1278 ms  0xe87 symkey:0x7f2de2eee580
  1278 ms  0xe87 SSL_AuthCertificateComplete()
  1278 ms  0xe87 fd:0x7f2de2ec3f70
  1278 ms  0xe87 err:0x0
  1278 ms  0xe87 PK11_Encrypt()
  1278 ms  0xe87 symkey:0x7f2de2eee580
  1330 ms  0xe87 SECKEY_DestroyPrivateKey()
  1330 ms  0xe87 privk:0x7f2de2e51820::7f2de2e51820  60 35 ef e2                                      `5..
  1331 ms  0xe87 privk:0x7f2de2e51820::7f2de2e51820  e5 e5 e5 e5                                      ....
  1331 ms  0xe87 SECKEY_DestroyPrivateKey()
  1331 ms  0xe87 privk:0x7f2de2e4b820::7f2de2e4b820  40 cc ec e2                                      @...
  1331 ms  0xe87 privk:0x7f2de2e4b820::7f2de2e4b820  e5 e5 e5 e5                                      ....
  1335 ms  0xe87 PK11_Encrypt()
  1335 ms  0xe87 symkey:0x7f2de2eee580
  1365 ms  0xe87 PK11_Encrypt()
  1365 ms  0xe87 symkey:0x7f2de2eee580
  1396 ms  0xe87 PK11_Encrypt()
  1396 ms  0xe87 symkey:0x7f2de2eee580
  1427 ms  0xe87 PK11_Encrypt()
  1427 ms  0xe87 symkey:0x7f2de2eee580
  1542 ms  0xe87 PK11_Encrypt()
  1542 ms  0xe87 symkey:0x7f2de2eee580
  1574 ms  0xe87 PK11_Encrypt()
  1574 ms  0xe87 symkey:0x7f2de2eee580
  1605 ms  0xe87 PK11_Encrypt()
  1605 ms  0xe87 symkey:0x7f2de2eee580
           /* TID 0xedd */
  1634 ms  0xedd PR_Close()
  1634 ms  0xedd fd:0x7f2de2ec3e50
  1634 ms  0xedd PR_Close()
  1634 ms  0xedd fd:0x7f2de2ec3ee0
  1634 ms  0xedd PR_Close()
  1634 ms  0xedd fd:0x7f2de2ec3e50
  1634 ms  0xedd PR_Close()
  1634 ms  0xedd fd:0x7f2de2ec3ee0
  1634 ms  0xedd PR_Close()
  1634 ms  0xedd fd:0x7f2de2ec3e50
  1634 ms  0xedd PR_Close()
  1634 ms  0xedd fd:0x7f2de2ec3ee0
  1634 ms  0xedd PR_Close()
  1634 ms  0xedd fd:0x7f2de2ec3e50
  1634 ms  0xedd PR_Close()
  1634 ms  0xedd fd:0x7f2de2ec3ee0
  1634 ms  0xedd PR_Close()
  1634 ms  0xedd fd:0x7f2de2ec3e50
  1634 ms  0xedd PR_Close()
  1634 ms  0xedd fd:0x7f2de2ec3ee0
  1634 ms  0xedd PR_Close()
  1634 ms  0xedd fd:0x7f2de2ec3e50
  1634 ms  0xedd PR_Close()
  1634 ms  0xedd fd:0x7f2de2ec3ee0
  1635 ms  0xedd PR_Close()
  1635 ms  0xedd fd:0x7f2de2ec3e50
  1635 ms  0xedd PR_Close()
  1635 ms  0xedd fd:0x7f2de2ec3ee0
  1635 ms  0xedd PR_Close()
  1635 ms  0xedd fd:0x7f2de2ec3e50
  1635 ms  0xedd PR_Close()
  1635 ms  0xedd fd:0x7f2de2ec3ee0
  1635 ms  0xedd PR_Close()
  1635 ms  0xedd fd:0x7f2de2ec3e50
  1635 ms  0xedd PR_Close()
  1635 ms  0xedd fd:0x7f2de2ec3ee0
  1635 ms  0xedd PR_Close()
  1635 ms  0xedd fd:0x7f2de2ec3e50
  1635 ms  0xedd PR_Close()
  1635 ms  0xedd fd:0x7f2de2ec3ee0
  1635 ms  0xedd PR_Close()
  1635 ms  0xedd fd:0x7f2de2ec3e50
  1635 ms  0xedd PR_Close()
  1635 ms  0xedd fd:0x7f2de2ec3ee0
  1635 ms  0xedd PR_Close()
  1635 ms  0xedd fd:0x7f2de2ec3e50
  1635 ms  0xedd PR_Close()
  1635 ms  0xedd fd:0x7f2de2ec3ee0
  1635 ms  0xedd PR_Close()
  1635 ms  0xedd fd:0x7f2de2ec3e50
  1635 ms  0xedd PR_Close()
  1635 ms  0xedd fd:0x7f2de2ec3ee0
  1636 ms  0xedd PR_Close()
  1636 ms  0xedd fd:0x7f2de2ec3e50
  1636 ms  0xedd PR_Close()
  1636 ms  0xedd fd:0x7f2de2ec3ee0
  1638 ms  0xedd PR_Close()
  1638 ms  0xedd fd:0x7f2de2ec3e50
  1638 ms  0xedd PR_Close()
  1638 ms  0xedd fd:0x7f2de2ec3dc0
  1641 ms  0xedd PR_Close()
  1641 ms  0xedd fd:0x7f2de2ec3dc0
  1641 ms  0xedd PR_Close()
  1641 ms  0xedd fd:0x7f2de2ec3e50
  1643 ms  0xedd PR_Close()
  1643 ms  0xedd fd:0x7f2de2ec3e50
  1643 ms  0xedd PR_Close()
  1643 ms  0xedd fd:0x7f2de2ec3e50
  1645 ms  0xedd PR_Close()
  1645 ms  0xedd fd:0x7f2de2ec3e50
  1645 ms  0xedd PR_Close()
  1645 ms  0xedd fd:0x7f2de2ec3e50
  1695 ms  0xedd PR_Close()
  1695 ms  0xedd fd:0x7f2de2ec3e50
  1696 ms  0xedd PR_Close()
  1696 ms  0xedd fd:0x7f2de2ec3e50
  1703 ms  0xedd PR_Close()
  1703 ms  0xedd fd:0x7f2de2ec3e50
  1704 ms  0xedd PR_Close()
  1704 ms  0xedd fd:0x7f2de2ec3e50
  1710 ms  0xedd PR_Close()
  1710 ms  0xedd fd:0x7f2de2ec3e50
  1710 ms  0xedd PR_Close()
  1710 ms  0xedd fd:0x7f2de2ec3e50
  1711 ms  0xedd PR_Close()
  1711 ms  0xedd fd:0x7f2de2ec3e50
  1712 ms  0xedd PR_Close()
  1712 ms  0xedd fd:0x7f2de2ec3e50
           /* TID 0xeda */
  1712 ms  0xeda PR_Close()
  1712 ms  0xeda fd:0x7f2de2ec3e50
  1712 ms  0xeda PR_Close()
  1712 ms  0xeda fd:0x7f2de2ec3e50
  1712 ms  0xeda PR_Close()
  1712 ms  0xeda fd:0x7f2de2ec3e50
  1712 ms  0xeda PR_Close()
  1712 ms  0xeda fd:0x7f2de2ec3e50
  1712 ms  0xeda PR_Close()
  1712 ms  0xeda fd:0x7f2de2ec3e50
  1712 ms  0xeda PR_Close()
  1712 ms  0xeda fd:0x7f2de2ec3e50
  1712 ms  0xeda PR_Close()
  1712 ms  0xeda fd:0x7f2de2ec3e50
  1712 ms  0xeda PR_Close()
  1712 ms  0xeda fd:0x7f2de2ec3e50
  1712 ms  0xeda PR_Close()
  1712 ms  0xeda fd:0x7f2de2ec3e50
  1712 ms  0xeda PR_Close()
  1712 ms  0xeda fd:0x7f2de2ec3e50
  1712 ms  0xeda PR_Close()
  1712 ms  0xeda fd:0x7f2de2ec3e50
  1712 ms  0xeda PR_Close()
  1712 ms  0xeda fd:0x7f2de2ec3e50
  1712 ms  0xeda PR_Close()
  1712 ms  0xeda fd:0x7f2de2ec3e50
  1712 ms  0xeda PR_Close()
  1712 ms  0xeda fd:0x7f2de2ec3e50
  1712 ms  0xeda PR_Close()
  1712 ms  0xeda fd:0x7f2de2ec3e50
           /* TID 0xe94 */
  2215 ms  0xe94 PR_Close()
  2215 ms  0xe94 fd:0x7f2de2edd2e0
  2217 ms  0xe94 PR_Close()
  2217 ms  0xe94 fd:0x7f2de2edd2e0
  2758 ms  0xe94 PR_Close()
  2758 ms  0xe94 fd:0x7f2de2edd2e0
           /* TID 0xe8f */
  4206 ms  0xe8f PR_Close()
  4206 ms  0xe8f fd:0x7f2de2edd2e0
  4206 ms  0xe8f PR_Close()
  4206 ms  0xe8f fd:0x7f2de2edd430
  4206 ms  0xe8f PR_Close()
  4206 ms  0xe8f fd:0x7f2de2edd490
           /* TID 0xe87 */
  4981 ms  0xe87 SSL_ImportFD()
  4981 ms  0xe87 ret:0x7f2de425f4f0
  4982 ms  0xe87 SSL_AuthCertificateHook()
  4982 ms  0xe87 fd:0x7f2de425f4f0
  4982 ms  0xe87 ret:0x0
  4982 ms  0xe87 PR_Connect()
  4982 ms  0xe87 fd:0x7f2de425f4f0
  5176 ms  0xe87 SECKEY_CreateECPrivateKey()
  5176 ms  0xe87 cx:0x7f2de2eef8c8
  5178 ms     | 0xe87 EC_ValidatePublicKey()
  5178 ms     | 0xe87 ret:0x0
  5178 ms  0xe87 ret:0x7f2de8c6b820::7f2de8c6b820  90 57 0c d2                                      .W..
  5178 ms  0xe87 SECKEY_CreateECPrivateKey()
  5178 ms  0xe87 cx:0x7f2de2eef8c8
  5179 ms     | 0xe87 EC_ValidatePublicKey()
  5185 ms     | 0xe87 ret:0x0
  5185 ms  0xe87 ret:0x7f2dd1f03820::7f2dd1f03820  60 5a 0c d2                                      `Z..
           /* TID 0xee4 */
  5384 ms  0xee4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5385 ms  0xee4 ret:0x0
           /* TID 0xe87 */
  5386 ms  SECKEY_ECParamsToKeySize()
  5386 ms  0xe87 ret:0x100
  5386 ms  0xe87 SECKEY_CreateECPrivateKey()
  5386 ms  0xe87 cx:0x7f2de2eef8c8
  5388 ms     | 0xe87 EC_ValidatePublicKey()
  5392 ms     | 0xe87 ret:0x0
  5394 ms  0xe87 ret:0x7f2dd1f0d020::7f2dd1f0d020  b0 20 f5 d1                                      . ..
  5395 ms  0xe87 PK11_PubDeriveWithKDF()
  5395 ms  0xe87 seckey:0x7f2dd1f0d020
  5395 ms     | 0xe87 EC_ValidatePublicKey()
  5403 ms     | 0xe87 ret:0x0
  5408 ms  0xe87 ret:0x7f2de4afe900
  5408 ms  0xe87 PK11_DeriveWithFlags()
  5408 ms  0xe87 basekey:0x7f2de4afe900
  5408 ms     | 0xe87 PK11_DeriveWithTemplate()
  5408 ms  0xe87 ret:0x7f2de425b300
  5408 ms  0xe87 PK11_Derive()
  5408 ms  0xe87 basekey:0x7f2de425b300
  5408 ms     | 0xe87 PK11_DeriveWithTemplate()
  5408 ms  0xe87 ret:0x7f2de425b600
  5408 ms  0xe87 SECKEY_DestroyPrivateKey()
  5408 ms  0xe87 privk:0x7f2dd1f0d020::7f2dd1f0d020  b0 20 f5 d1                                      . ..
  5408 ms  0xe87 privk:0x7f2dd1f0d020::7f2dd1f0d020  e5 e5 e5 e5                                      ....
  5409 ms  0xe87 PK11_Encrypt()
  5409 ms  0xe87 symkey:0x7f2de425ba00
  5409 ms  0xe87 SSL_AuthCertificateComplete()
  5409 ms  0xe87 fd:0x7f2de425f4f0
  5409 ms  0xe87 err:0x0
  5411 ms  0xe87 PK11_Encrypt()
  5411 ms  0xe87 symkey:0x7f2de425ba00
  5411 ms  0xe87 PK11_Encrypt()
  5411 ms  0xe87 symkey:0x7f2de425ba00
  5603 ms  0xe87 SECKEY_DestroyPrivateKey()
  5603 ms  0xe87 privk:0x7f2dd1f03820::7f2dd1f03820  60 5a 0c d2                                      `Z..
  5603 ms  0xe87 privk:0x7f2dd1f03820::7f2dd1f03820  e5 e5 e5 e5                                      ....
  5603 ms  0xe87 SECKEY_DestroyPrivateKey()
  5603 ms  0xe87 privk:0x7f2de8c6b820::7f2de8c6b820  90 57 0c d2                                      .W..
  5604 ms  0xe87 privk:0x7f2de8c6b820::7f2de8c6b820  e5 e5 e5 e5                                      ....
  5604 ms  0xe87 PK11_Encrypt()
  5604 ms  0xe87 symkey:0x7f2de425ba00
           /* TID 0xea0 */
  6091 ms  0xea0 PR_Close()
  6091 ms  0xea0 fd:0x7f2de425fd00
           /* TID 0xe8f */
  6275 ms  0xe8f PR_Close()
  6275 ms  0xe8f fd:0x7f2dd1d65d00
           /* TID 0xe87 */
  6285 ms  0xe87 SSL_ImportFD()
  6285 ms  0xe87 ret:0x7f2de2e2d610
  6285 ms  0xe87 SSL_AuthCertificateHook()
  6285 ms  0xe87 fd:0x7f2de2e2d610
  6285 ms  0xe87 ret:0x0
  6285 ms  0xe87 PR_Connect()
  6285 ms  0xe87 fd:0x7f2de2e2d610
  6322 ms  0xe87 SECKEY_CreateECPrivateKey()
  6322 ms  0xe87 cx:0x7f2de2ef05c8
  6324 ms     | 0xe87 EC_ValidatePublicKey()
  6324 ms     | 0xe87 ret:0x0
  6324 ms  0xe87 ret:0x7f2dd1fc4820::7f2dd1fc4820  90 2c f5 d1                                      .,..
  6324 ms  0xe87 SECKEY_CreateECPrivateKey()
  6324 ms  0xe87 cx:0x7f2de2ef05c8
  6326 ms     | 0xe87 EC_ValidatePublicKey()
  6329 ms     | 0xe87 ret:0x0
  6329 ms  0xe87 ret:0x7f2dd1fc6820::7f2dd1fc6820  f0 ab 02 d2                                      ....
  6344 ms  0xe87 SSL_ImportFD()
  6344 ms  0xe87 ret:0x7f2de2da0970
  6344 ms  0xe87 SSL_AuthCertificateHook()
  6344 ms  0xe87 fd:0x7f2de2da0970
  6344 ms  0xe87 ret:0x0
  6344 ms  0xe87 PR_Connect()
  6344 ms  0xe87 fd:0x7f2de2da0970
  6344 ms  0xe87 SSL_ImportFD()
  6344 ms  0xe87 ret:0x7f2de2da09a0
  6344 ms  0xe87 SSL_AuthCertificateHook()
  6344 ms  0xe87 fd:0x7f2de2da09a0
  6344 ms  0xe87 ret:0x0
  6344 ms  0xe87 PR_Connect()
  6344 ms  0xe87 fd:0x7f2de2da09a0
  6345 ms  0xe87 SSL_ImportFD()
  6345 ms  0xe87 ret:0x7f2dd21d9520
  6345 ms  0xe87 SSL_AuthCertificateHook()
  6345 ms  0xe87 fd:0x7f2dd21d9520
  6345 ms  0xe87 ret:0x0
  6345 ms  0xe87 PR_Connect()
  6345 ms  0xe87 fd:0x7f2dd21d9520
  6345 ms  0xe87 SSL_ImportFD()
  6345 ms  0xe87 ret:0x7f2dd21d96a0
  6345 ms  0xe87 SSL_AuthCertificateHook()
  6345 ms  0xe87 fd:0x7f2dd21d96a0
  6345 ms  0xe87 ret:0x0
  6345 ms  0xe87 PR_Connect()
  6345 ms  0xe87 fd:0x7f2dd21d96a0
  6345 ms  0xe87 SSL_ImportFD()
  6345 ms  0xe87 ret:0x7f2de2da07c0
  6345 ms  0xe87 SSL_AuthCertificateHook()
  6345 ms  0xe87 fd:0x7f2de2da07c0
  6345 ms  0xe87 ret:0x0
  6345 ms  0xe87 PR_Connect()
  6345 ms  0xe87 fd:0x7f2de2da07c0
  6345 ms  0xe87 SSL_ImportFD()
  6345 ms  0xe87 ret:0x7f2de2da07f0
  6345 ms  0xe87 SSL_AuthCertificateHook()
  6345 ms  0xe87 fd:0x7f2de2da07f0
  6345 ms  0xe87 ret:0x0
  6345 ms  0xe87 PR_Connect()
  6345 ms  0xe87 fd:0x7f2de2da07f0
  6384 ms  0xe87 PK11_Derive()
  6384 ms  0xe87 basekey:0x7f2de4afe900
  6384 ms     | 0xe87 PK11_DeriveWithTemplate()
  6384 ms  0xe87 ret:0x7f2dd2108100
  6384 ms  0xe87 PK11_PubDeriveWithKDF()
  6384 ms  0xe87 seckey:0x7f2dd1fc4820
  6384 ms     | 0xe87 EC_ValidatePublicKey()
  6384 ms     | 0xe87 ret:0x0
  6385 ms  0xe87 ret:0x7f2de4afe900
  6385 ms  SECKEY_ECParamsToKeySize()
  6385 ms  0xe87 ret:0xff
  6385 ms  0xe87 PK11_DeriveWithFlags()
  6385 ms  0xe87 basekey:0x7f2dd2108100
  6385 ms     | 0xe87 PK11_DeriveWithTemplate()
  6386 ms  0xe87 ret:0x7f2dd2108b00
  6386 ms  0xe87 PK11_Derive()
  6386 ms  0xe87 basekey:0x7f2de4afe900
  6386 ms     | 0xe87 PK11_DeriveWithTemplate()
  6386 ms  0xe87 ret:0x7f2dd2120180
  6386 ms  0xe87 PK11_DeriveWithFlags()
  6386 ms  0xe87 basekey:0x7f2dd2120180
  6386 ms     | 0xe87 PK11_DeriveWithTemplate()
  6386 ms  0xe87 ret:0x7f2dd2108100
  6386 ms  0xe87 PK11_DeriveWithFlags()
  6386 ms  0xe87 basekey:0x7f2dd2120180
  6386 ms     | 0xe87 PK11_DeriveWithTemplate()
  6386 ms  0xe87 ret:0x7f2de4afe900
  6386 ms  0xe87 PK11_DeriveWithFlags()
  6386 ms  0xe87 basekey:0x7f2dd2120180
  6386 ms     | 0xe87 PK11_DeriveWithTemplate()
  6386 ms  0xe87 ret:0x7f2dd2108b00
  6386 ms  0xe87 PK11_Derive()
  6386 ms  0xe87 basekey:0x7f2dd2120280
  6386 ms     | 0xe87 PK11_DeriveWithTemplate()
  6386 ms  0xe87 ret:0x7f2dd2120380
  6386 ms  0xe87 PK11_DeriveWithFlags()
  6386 ms  0xe87 basekey:0x7f2de4afe900
  6386 ms     | 0xe87 PK11_DeriveWithTemplate()
  6386 ms  0xe87 ret:0x7f2dd2120180
  6386 ms  0xe87 PK11_DeriveWithFlags()
  6386 ms  0xe87 basekey:0x7f2de4afe900
  6387 ms     | 0xe87 PK11_DeriveWithTemplate()
  6387 ms  0xe87 ret:0x7f2dd2108b00
  6390 ms  SECKEY_ECParamsToKeySize()
  6390 ms  0xe87 ret:0x100
  6390 ms  SECKEY_ECParamsToBasePointOrderLen()
  6390 ms  0xe87 ret:0x100
  6390 ms  SECKEY_ECParamsToBasePointOrderLen()
  6390 ms  0xe87 ret:0x100
  6390 ms  0xe87 EC_ValidatePublicKey()
  6394 ms  0xe87 ret:0x0
  6399 ms  0xe87 PK11_DeriveWithFlags()
  6399 ms  0xe87 basekey:0x7f2de4afe900
  6399 ms     | 0xe87 PK11_DeriveWithTemplate()
  6399 ms  0xe87 ret:0x7f2dd2108b00
  6399 ms  0xe87 PR_Connect()
  6399 ms  0xe87 fd:0x7f2de2da0760
  6539 ms  0xe87 SECKEY_CreateECPrivateKey()
  6539 ms  0xe87 cx:0x7f2de2ef0768
  6543 ms     | 0xe87 EC_ValidatePublicKey()
  6543 ms     | 0xe87 ret:0x0
  6543 ms  0xe87 ret:0x7f2dd1fd1020::7f2dd1fd1020  b0 35 15 d2                                      .5..
  6543 ms  0xe87 SECKEY_CreateECPrivateKey()
  6543 ms  0xe87 cx:0x7f2de2ef0768
  6546 ms     | 0xe87 EC_ValidatePublicKey()
  6550 ms     | 0xe87 ret:0x0
  6551 ms  0xe87 ret:0x7f2dd1fd3020::7f2dd1fd3020  90 37 15 d2                                      .7..
  6556 ms  0xe87 SECKEY_CreateECPrivateKey()
  6556 ms  0xe87 cx:0x7f2de2ef1128
  6557 ms     | 0xe87 EC_ValidatePublicKey()
  6557 ms     | 0xe87 ret:0x0
  6557 ms  0xe87 ret:0x7f2dd1fd5820::7f2dd1fd5820  80 38 15 d2                                      .8..
  6557 ms  0xe87 SECKEY_CreateECPrivateKey()
  6557 ms  0xe87 cx:0x7f2de2ef1128
  6559 ms     | 0xe87 EC_ValidatePublicKey()
  6564 ms     | 0xe87 ret:0x0
  6564 ms  0xe87 ret:0x7f2de2d1c020::7f2de2d1c020  10 d5 15 d2                                      ....
  6565 ms  0xe87 SECKEY_CreateECPrivateKey()
  6565 ms  0xe87 cx:0x7f2de2ef0f88
  6566 ms     | 0xe87 EC_ValidatePublicKey()
  6566 ms     | 0xe87 ret:0x0
  6566 ms  0xe87 ret:0x7f2de2d1f820::7f2de2d1f820  70 de 15 d2                                      p...
  6566 ms  0xe87 SECKEY_CreateECPrivateKey()
  6566 ms  0xe87 cx:0x7f2de2ef0f88
  6568 ms     | 0xe87 EC_ValidatePublicKey()
  6571 ms     | 0xe87 ret:0x0
  6571 ms  0xe87 ret:0x7f2de2d23020::7f2de2d23020  e0 82 da e2                                      ....
  6572 ms  0xe87 SECKEY_CreateECPrivateKey()
  6572 ms  0xe87 cx:0x7f2de2ef0de8
  6572 ms     | 0xe87 EC_ValidatePublicKey()
  6573 ms     | 0xe87 ret:0x0
  6573 ms  0xe87 ret:0x7f2de2e42020::7f2de2e42020  40 87 da e2                                      @...
  6573 ms  0xe87 SECKEY_CreateECPrivateKey()
  6573 ms  0xe87 cx:0x7f2de2ef0de8
  6574 ms     | 0xe87 EC_ValidatePublicKey()
  6576 ms     | 0xe87 ret:0x0
  6576 ms  0xe87 ret:0x7f2de2e47020::7f2de2e47020  70 89 da e2                                      p...
  6577 ms  0xe87 SECKEY_CreateECPrivateKey()
  6577 ms  0xe87 cx:0x7f2de2ef0c48
  6578 ms     | 0xe87 EC_ValidatePublicKey()
  6578 ms     | 0xe87 ret:0x0
  6578 ms  0xe87 ret:0x7f2de2e4b820::7f2de2e4b820  40 8c da e2                                      @...
  6578 ms  0xe87 SECKEY_CreateECPrivateKey()
  6578 ms  0xe87 cx:0x7f2de2ef0c48
  6579 ms     | 0xe87 EC_ValidatePublicKey()
  6581 ms     | 0xe87 ret:0x0
  6581 ms  0xe87 ret:0x7f2de2e53020::7f2de2e53020  00 21 e3 e2                                      .!..
  6581 ms  0xe87 SECKEY_CreateECPrivateKey()
  6581 ms  0xe87 cx:0x7f2de2ef0aa8
  6582 ms     | 0xe87 EC_ValidatePublicKey()
  6582 ms     | 0xe87 ret:0x0
  6582 ms  0xe87 ret:0x7f2de2e5a020::7f2de2e5a020  80 23 e3 e2                                      .#..
  6582 ms  0xe87 SECKEY_CreateECPrivateKey()
  6582 ms  0xe87 cx:0x7f2de2ef0aa8
  6583 ms     | 0xe87 EC_ValidatePublicKey()
  6585 ms     | 0xe87 ret:0x0
  6585 ms  0xe87 ret:0x7f2de4223020::7f2de4223020  f0 26 e3 e2                                      .&..
           /* TID 0xee4 */
  6586 ms  0xee4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6586 ms  0xee4 ret:0x0
           /* TID 0xe8f */
  6587 ms  0xe8f PR_Close()
  6587 ms  0xe8f fd:0x7f2dd21566d0
           /* TID 0xe87 */
  6594 ms  0xe87 SSL_AuthCertificateComplete()
  6594 ms  0xe87 fd:0x7f2de2e2d610
  6594 ms  0xe87 err:0x0
  6594 ms     | 0xe87 PK11_DeriveWithFlags()
  6594 ms     | 0xe87 basekey:0x7f2dd2120380
  6594 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  6594 ms     | 0xe87 ret:0x7f2dd2108b00
  6594 ms     | 0xe87 PK11_DeriveWithFlags()
  6594 ms     | 0xe87 basekey:0x7f2dd2120380
  6594 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  6594 ms     | 0xe87 ret:0x7f2dd2120280
  6594 ms     | 0xe87 PK11_DeriveWithFlags()
  6594 ms     | 0xe87 basekey:0x7f2dd2120380
  6594 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  6594 ms     | 0xe87 ret:0x7f2dd2120780
  6595 ms     | 0xe87 PK11_DeriveWithFlags()
  6595 ms     | 0xe87 basekey:0x7f2dd2108100
  6595 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  6595 ms     | 0xe87 ret:0x7f2dd2120980
  6595 ms     | 0xe87 PK11_DeriveWithFlags()
  6595 ms     | 0xe87 basekey:0x7f2dd2108100
  6595 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  6595 ms     | 0xe87 ret:0x7f2dd2121080
  6595 ms     | 0xe87 PK11_DeriveWithFlags()
  6595 ms     | 0xe87 basekey:0x7f2dd2120280
  6595 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  6595 ms     | 0xe87 ret:0x7f2dd2121080
  6595 ms     | 0xe87 PK11_DeriveWithFlags()
  6595 ms     | 0xe87 basekey:0x7f2dd2120280
  6595 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  6595 ms     | 0xe87 ret:0x7f2dd2121100
  6595 ms     | 0xe87 PK11_DeriveWithFlags()
  6595 ms     | 0xe87 basekey:0x7f2dd2108100
  6595 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  6595 ms     | 0xe87 ret:0x7f2dd2120180
  6595 ms     | 0xe87 PK11_Encrypt()
  6595 ms     | 0xe87 symkey:0x7f2dd2120980
  6595 ms     | 0xe87 PK11_DeriveWithFlags()
  6595 ms     | 0xe87 basekey:0x7f2dd2108b00
  6595 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  6595 ms     | 0xe87 ret:0x7f2dd2120180
  6595 ms     | 0xe87 PK11_DeriveWithFlags()
  6595 ms     | 0xe87 basekey:0x7f2dd2108b00
  6595 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  6595 ms     | 0xe87 ret:0x7f2dd2121100
  6595 ms     | 0xe87 PK11_DeriveWithFlags()
  6595 ms     | 0xe87 basekey:0x7f2dd2120380
  6595 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  6595 ms     | 0xe87 ret:0x7f2dd2120980
  6595 ms     | 0xe87 SECKEY_DestroyPrivateKey()
  6595 ms     | 0xe87 privk:0x7f2dd1fc6820::7f2dd1fc6820  f0 ab 02 d2                                      ....
  6595 ms     | 0xe87 privk:0x7f2dd1fc6820::7f2dd1fc6820  e5 e5 e5 e5                                      ....
  6595 ms     | 0xe87 SECKEY_DestroyPrivateKey()
  6595 ms     | 0xe87 privk:0x7f2dd1fc4820::7f2dd1fc4820  90 2c f5 d1                                      .,..
  6595 ms     | 0xe87 privk:0x7f2dd1fc4820::7f2dd1fc4820  e5 e5 e5 e5                                      ....
  6596 ms  0xe87 PK11_Encrypt()
  6596 ms  0xe87 symkey:0x7f2dd2120180
  6596 ms  0xe87 PK11_Encrypt()
  6596 ms  0xe87 symkey:0x7f2dd2120180
  6633 ms  0xe87 PK11_DeriveWithFlags()
  6633 ms  0xe87 basekey:0x7f2dd2120980
  6633 ms     | 0xe87 PK11_DeriveWithTemplate()
  6633 ms  0xe87 ret:0x7f2de4afe900
  6633 ms  0xe87 PK11_DeriveWithFlags()
  6633 ms  0xe87 basekey:0x7f2dd2120980
  6633 ms     | 0xe87 PK11_DeriveWithTemplate()
  6633 ms  0xe87 ret:0x7f2de4afe900
  6633 ms  0xe87 PK11_Encrypt()
  6633 ms  0xe87 symkey:0x7f2dd2120180
  6747 ms  SECKEY_ECParamsToKeySize()
  6747 ms  0xe87 ret:0x100
  6747 ms  0xe87 SECKEY_CreateECPrivateKey()
  6747 ms  0xe87 cx:0x7f2de2ef0768
  6748 ms     | 0xe87 EC_ValidatePublicKey()
  6750 ms     | 0xe87 ret:0x0
  6751 ms  0xe87 ret:0x7f2dd1fcd820::7f2dd1fcd820  70 84 da e2                                      p...
  6751 ms  0xe87 PK11_PubDeriveWithKDF()
  6751 ms  0xe87 seckey:0x7f2dd1fcd820
  6751 ms     | 0xe87 EC_ValidatePublicKey()
  6753 ms     | 0xe87 ret:0x0
  6755 ms  0xe87 ret:0x7f2de4afe900
  6755 ms  0xe87 PK11_DeriveWithFlags()
  6755 ms  0xe87 basekey:0x7f2de4afe900
  6755 ms     | 0xe87 PK11_DeriveWithTemplate()
  6755 ms  0xe87 ret:0x7f2dd2108100
  6755 ms  0xe87 PK11_Derive()
  6755 ms  0xe87 basekey:0x7f2dd2108100
  6755 ms     | 0xe87 PK11_DeriveWithTemplate()
  6755 ms  0xe87 ret:0x7f2dd2120380
  6755 ms  0xe87 SECKEY_DestroyPrivateKey()
  6755 ms  0xe87 privk:0x7f2dd1fcd820::7f2dd1fcd820  70 84 da e2                                      p...
  6755 ms  0xe87 privk:0x7f2dd1fcd820::7f2dd1fcd820  e5 e5 e5 e5                                      ....
  6755 ms  0xe87 PK11_Encrypt()
  6755 ms  0xe87 symkey:0x7f2dd21e9a80
  6756 ms  0xe87 SSL_AuthCertificateComplete()
  6756 ms  0xe87 fd:0x7f2de2da0970
  6756 ms  0xe87 err:0x0
  6757 ms  0xe87 PK11_Encrypt()
  6757 ms  0xe87 symkey:0x7f2dd21e9a80
  6757 ms  0xe87 PK11_Encrypt()
  6757 ms  0xe87 symkey:0x7f2dd21e9a80
  6758 ms  0xe87 PK11_Encrypt()
  6758 ms  0xe87 symkey:0x7f2dd21e9a80
  6758 ms  0xe87 PK11_Encrypt()
  6758 ms  0xe87 symkey:0x7f2dd21e9a80
  6759 ms  0xe87 PK11_Encrypt()
  6759 ms  0xe87 symkey:0x7f2dd21e9a80
  6760 ms  SECKEY_ECParamsToKeySize()
  6760 ms  0xe87 ret:0x100
  6760 ms  0xe87 SECKEY_CreateECPrivateKey()
  6760 ms  0xe87 cx:0x7f2de2ef1128
  6761 ms     | 0xe87 EC_ValidatePublicKey()
  6763 ms     | 0xe87 ret:0x0
  6763 ms  0xe87 ret:0x7f2de2e3e820::7f2de2e3e820  60 85 da e2                                      `...
  6763 ms  0xe87 PK11_PubDeriveWithKDF()
  6763 ms  0xe87 seckey:0x7f2de2e3e820
  6763 ms     | 0xe87 EC_ValidatePublicKey()
  6764 ms     | 0xe87 ret:0x0
  6765 ms  0xe87 ret:0x7f2de4afe900
  6766 ms  0xe87 PK11_DeriveWithFlags()
  6766 ms  0xe87 basekey:0x7f2de4afe900
  6766 ms     | 0xe87 PK11_DeriveWithTemplate()
  6766 ms  0xe87 ret:0x7f2dd2121100
  6766 ms  0xe87 PK11_Derive()
  6766 ms  0xe87 basekey:0x7f2dd2121100
  6766 ms     | 0xe87 PK11_DeriveWithTemplate()
  6766 ms  0xe87 ret:0x7f2de2daa080
  6766 ms  0xe87 SECKEY_DestroyPrivateKey()
  6766 ms  0xe87 privk:0x7f2de2e3e820::7f2de2e3e820  60 85 da e2                                      `...
  6766 ms  0xe87 privk:0x7f2de2e3e820::7f2de2e3e820  e5 e5 e5 e5                                      ....
  6766 ms  0xe87 PK11_Encrypt()
  6766 ms  0xe87 symkey:0x7f2de2daa200
  6766 ms  0xe87 SSL_AuthCertificateComplete()
  6766 ms  0xe87 fd:0x7f2de2da07f0
  6766 ms  0xe87 err:0x0
           /* TID 0xe8f */
  6767 ms  0xe8f PR_Close()
  6767 ms  0xe8f fd:0x7f2dd2156b50
           /* TID 0xe87 */
  6768 ms  0xe87 PK11_Encrypt()
  6768 ms  0xe87 symkey:0x7f2de2daa200
  6769 ms  SECKEY_ECParamsToKeySize()
  6769 ms  0xe87 ret:0x100
  6769 ms  0xe87 SECKEY_CreateECPrivateKey()
  6769 ms  0xe87 cx:0x7f2de2ef0f88
  6770 ms     | 0xe87 EC_ValidatePublicKey()
  6771 ms     | 0xe87 ret:0x0
  6771 ms  0xe87 ret:0x7f2de4223820::7f2de4223820  10 85 da e2                                      ....
  6771 ms  0xe87 PK11_PubDeriveWithKDF()
  6771 ms  0xe87 seckey:0x7f2de4223820
  6771 ms     | 0xe87 EC_ValidatePublicKey()
  6773 ms     | 0xe87 ret:0x0
  6774 ms  0xe87 ret:0x7f2de4afe900
  6774 ms  0xe87 PK11_DeriveWithFlags()
  6774 ms  0xe87 basekey:0x7f2de4afe900
  6774 ms     | 0xe87 PK11_DeriveWithTemplate()
  6774 ms  0xe87 ret:0x7f2dd21eab80
  6774 ms  0xe87 PK11_Derive()
  6774 ms  0xe87 basekey:0x7f2dd21eab80
  6774 ms     | 0xe87 PK11_DeriveWithTemplate()
  6774 ms  0xe87 ret:0x7f2de2daa300
  6774 ms  0xe87 SECKEY_DestroyPrivateKey()
  6774 ms  0xe87 privk:0x7f2de4223820::7f2de4223820  10 85 da e2                                      ....
  6775 ms  0xe87 privk:0x7f2de4223820::7f2de4223820  e5 e5 e5 e5                                      ....
  6775 ms  0xe87 PK11_Encrypt()
  6775 ms  0xe87 symkey:0x7f2de2daa480
  6775 ms  0xe87 PK11_Encrypt()
  6775 ms  0xe87 symkey:0x7f2dd21e9a80
  6775 ms  0xe87 SSL_AuthCertificateComplete()
  6775 ms  0xe87 fd:0x7f2de2da07c0
  6775 ms  0xe87 err:0x0
  6775 ms  0xe87 PK11_Encrypt()
  6775 ms  0xe87 symkey:0x7f2dd2120180
  6776 ms  0xe87 PK11_Encrypt()
  6776 ms  0xe87 symkey:0x7f2de2daa480
  6776 ms  SECKEY_ECParamsToKeySize()
  6776 ms  0xe87 ret:0x100
  6776 ms  0xe87 SECKEY_CreateECPrivateKey()
  6776 ms  0xe87 cx:0x7f2de2ef0de8
  6777 ms     | 0xe87 EC_ValidatePublicKey()
  6779 ms     | 0xe87 ret:0x0
  6779 ms  0xe87 ret:0x7f2de4237020::7f2de4237020  b0 85 da e2                                      ....
  6779 ms  0xe87 PK11_PubDeriveWithKDF()
  6779 ms  0xe87 seckey:0x7f2de4237020
  6779 ms     | 0xe87 EC_ValidatePublicKey()
  6780 ms     | 0xe87 ret:0x0
  6782 ms  0xe87 ret:0x7f2de4afe900
  6782 ms  0xe87 PK11_DeriveWithFlags()
  6782 ms  0xe87 basekey:0x7f2de4afe900
  6782 ms     | 0xe87 PK11_DeriveWithTemplate()
  6782 ms  0xe87 ret:0x7f2de2daa580
  6782 ms  0xe87 PK11_Derive()
  6782 ms  0xe87 basekey:0x7f2de2daa580
  6782 ms     | 0xe87 PK11_DeriveWithTemplate()
  6782 ms  0xe87 ret:0x7f2de2daa600
  6782 ms  0xe87 SECKEY_DestroyPrivateKey()
  6782 ms  0xe87 privk:0x7f2de4237020::7f2de4237020  b0 85 da e2                                      ....
  6782 ms  0xe87 privk:0x7f2de4237020::7f2de4237020  e5 e5 e5 e5                                      ....
  6782 ms  0xe87 PK11_Encrypt()
  6782 ms  0xe87 symkey:0x7f2de2daa780
  6782 ms  0xe87 PK11_Encrypt()
  6782 ms  0xe87 symkey:0x7f2dd21e9a80
  6783 ms  0xe87 SSL_AuthCertificateComplete()
  6783 ms  0xe87 fd:0x7f2dd21d96a0
  6783 ms  0xe87 err:0x0
  6783 ms  0xe87 PK11_Encrypt()
  6783 ms  0xe87 symkey:0x7f2de2daa780
  6784 ms  SECKEY_ECParamsToKeySize()
  6784 ms  0xe87 ret:0x100
  6784 ms  0xe87 SECKEY_CreateECPrivateKey()
  6784 ms  0xe87 cx:0x7f2de2ef0c48
  6784 ms     | 0xe87 EC_ValidatePublicKey()
  6786 ms     | 0xe87 ret:0x0
  6786 ms  0xe87 ret:0x7f2de4ee7020::7f2de4ee7020  50 86 da e2                                      P...
  6786 ms  0xe87 PK11_PubDeriveWithKDF()
  6786 ms  0xe87 seckey:0x7f2de4ee7020
  6786 ms     | 0xe87 EC_ValidatePublicKey()
  6787 ms     | 0xe87 ret:0x0
  6789 ms  0xe87 ret:0x7f2de4afe900
  6789 ms  0xe87 PK11_DeriveWithFlags()
  6789 ms  0xe87 basekey:0x7f2de4afe900
  6789 ms     | 0xe87 PK11_DeriveWithTemplate()
  6789 ms  0xe87 ret:0x7f2de2daaa00
  6789 ms  0xe87 PK11_Derive()
  6789 ms  0xe87 basekey:0x7f2de2daaa00
  6789 ms     | 0xe87 PK11_DeriveWithTemplate()
  6789 ms  0xe87 ret:0x7f2de2daaa80
  6789 ms  0xe87 SECKEY_DestroyPrivateKey()
  6789 ms  0xe87 privk:0x7f2de4ee7020::7f2de4ee7020  50 86 da e2                                      P...
  6789 ms  0xe87 privk:0x7f2de4ee7020::7f2de4ee7020  e5 e5 e5 e5                                      ....
  6789 ms  0xe87 PK11_Encrypt()
  6789 ms  0xe87 symkey:0x7f2de2daae00
  6790 ms  SECKEY_ECParamsToKeySize()
  6790 ms  0xe87 ret:0x100
  6790 ms  0xe87 SECKEY_CreateECPrivateKey()
  6790 ms  0xe87 cx:0x7f2de2ef0aa8
  6790 ms     | 0xe87 EC_ValidatePublicKey()
  6792 ms     | 0xe87 ret:0x0
  6792 ms  0xe87 ret:0x7f2de4ee7820::7f2de4ee7820  60 8a da e2                                      `...
  6792 ms  0xe87 PK11_PubDeriveWithKDF()
  6792 ms  0xe87 seckey:0x7f2de4ee7820
  6792 ms     | 0xe87 EC_ValidatePublicKey()
  6793 ms     | 0xe87 ret:0x0
  6795 ms  0xe87 ret:0x7f2de4afe900
  6795 ms  0xe87 PK11_DeriveWithFlags()
  6795 ms  0xe87 basekey:0x7f2de4afe900
  6795 ms     | 0xe87 PK11_DeriveWithTemplate()
  6795 ms  0xe87 ret:0x7f2de2daaf00
  6795 ms  0xe87 PK11_Derive()
  6795 ms  0xe87 basekey:0x7f2de2daaf00
  6795 ms     | 0xe87 PK11_DeriveWithTemplate()
  6795 ms  0xe87 ret:0x7f2de2daaf80
  6795 ms  0xe87 SECKEY_DestroyPrivateKey()
  6795 ms  0xe87 privk:0x7f2de4ee7820::7f2de4ee7820  60 8a da e2                                      `...
  6795 ms  0xe87 privk:0x7f2de4ee7820::7f2de4ee7820  e5 e5 e5 e5                                      ....
  6795 ms  0xe87 PK11_Encrypt()
  6795 ms  0xe87 symkey:0x7f2de2dab100
  6796 ms  0xe87 PK11_Encrypt()
  6796 ms  0xe87 symkey:0x7f2dd21e9a80
  6796 ms  0xe87 SSL_AuthCertificateComplete()
  6796 ms  0xe87 fd:0x7f2dd21d9520
  6796 ms  0xe87 err:0x0
  6796 ms  0xe87 SSL_AuthCertificateComplete()
  6796 ms  0xe87 fd:0x7f2de2da09a0
  6796 ms  0xe87 err:0x0
  6796 ms  0xe87 PK11_Encrypt()
  6796 ms  0xe87 symkey:0x7f2de2daae00
  6796 ms  0xe87 PK11_Encrypt()
  6796 ms  0xe87 symkey:0x7f2de2dab100
  6797 ms  0xe87 PK11_Encrypt()
  6797 ms  0xe87 symkey:0x7f2dd21e9a80
  6797 ms  0xe87 PK11_Encrypt()
  6797 ms  0xe87 symkey:0x7f2dd21e9a80
  6950 ms  0xe87 SECKEY_DestroyPrivateKey()
  6950 ms  0xe87 privk:0x7f2dd1fd3020::7f2dd1fd3020  90 37 15 d2                                      .7..
  6951 ms  0xe87 privk:0x7f2dd1fd3020::7f2dd1fd3020  e5 e5 e5 e5                                      ....
  6951 ms  0xe87 SECKEY_DestroyPrivateKey()
  6951 ms  0xe87 privk:0x7f2dd1fd1020::7f2dd1fd1020  b0 35 15 d2                                      .5..
  6951 ms  0xe87 privk:0x7f2dd1fd1020::7f2dd1fd1020  e5 e5 e5 e5                                      ....
  6952 ms  0xe87 PK11_Encrypt()
  6952 ms  0xe87 symkey:0x7f2dd21e9a80
  6961 ms  0xe87 SECKEY_DestroyPrivateKey()
  6961 ms  0xe87 privk:0x7f2de2d1c020::7f2de2d1c020  10 d5 15 d2                                      ....
  6961 ms  0xe87 privk:0x7f2de2d1c020::7f2de2d1c020  e5 e5 e5 e5                                      ....
  6961 ms  0xe87 SECKEY_DestroyPrivateKey()
  6961 ms  0xe87 privk:0x7f2dd1fd5820::7f2dd1fd5820  80 38 15 d2                                      .8..
  6962 ms  0xe87 privk:0x7f2dd1fd5820::7f2dd1fd5820  e5 e5 e5 e5                                      ....
  6962 ms  0xe87 PR_Close()
  6962 ms  0xe87 fd:0x7f2de2da07f0
  6962 ms     | 0xe87 PK11_Encrypt()
  6962 ms     | 0xe87 symkey:0x7f2de2daa200
  6969 ms  0xe87 SECKEY_DestroyPrivateKey()
  6969 ms  0xe87 privk:0x7f2de2d23020::7f2de2d23020  e0 82 da e2                                      ....
  6970 ms  0xe87 privk:0x7f2de2d23020::7f2de2d23020  e5 e5 e5 e5                                      ....
  6970 ms  0xe87 SECKEY_DestroyPrivateKey()
  6970 ms  0xe87 privk:0x7f2de2d1f820::7f2de2d1f820  70 de 15 d2                                      p...
  6970 ms  0xe87 privk:0x7f2de2d1f820::7f2de2d1f820  e5 e5 e5 e5                                      ....
  6971 ms  0xe87 PR_Close()
  6971 ms  0xe87 fd:0x7f2de2da07c0
  6971 ms     | 0xe87 PK11_Encrypt()
  6971 ms     | 0xe87 symkey:0x7f2de2daa480
  6977 ms  0xe87 SECKEY_DestroyPrivateKey()
  6977 ms  0xe87 privk:0x7f2de2e47020::7f2de2e47020  70 89 da e2                                      p...
  6978 ms  0xe87 privk:0x7f2de2e47020::7f2de2e47020  e5 e5 e5 e5                                      ....
  6978 ms  0xe87 SECKEY_DestroyPrivateKey()
  6978 ms  0xe87 privk:0x7f2de2e42020::7f2de2e42020  40 87 da e2                                      @...
  6978 ms  0xe87 privk:0x7f2de2e42020::7f2de2e42020  e5 e5 e5 e5                                      ....
  6979 ms  0xe87 PR_Close()
  6979 ms  0xe87 fd:0x7f2dd21d96a0
  6979 ms     | 0xe87 PK11_Encrypt()
  6979 ms     | 0xe87 symkey:0x7f2de2daa780
  6985 ms  0xe87 SECKEY_DestroyPrivateKey()
  6985 ms  0xe87 privk:0x7f2de2e53020::7f2de2e53020  00 21 e3 e2                                      .!..
  6985 ms  0xe87 privk:0x7f2de2e53020::7f2de2e53020  e5 e5 e5 e5                                      ....
  6986 ms  0xe87 SECKEY_DestroyPrivateKey()
  6986 ms  0xe87 privk:0x7f2de2e4b820::7f2de2e4b820  40 8c da e2                                      @...
  6986 ms  0xe87 privk:0x7f2de2e4b820::7f2de2e4b820  e5 e5 e5 e5                                      ....
  6987 ms  0xe87 PR_Close()
  6987 ms  0xe87 fd:0x7f2dd21d9520
  6987 ms     | 0xe87 PK11_Encrypt()
  6987 ms     | 0xe87 symkey:0x7f2de2daae00
  6989 ms  0xe87 SECKEY_DestroyPrivateKey()
  6989 ms  0xe87 privk:0x7f2de4223020::7f2de4223020  f0 26 e3 e2                                      .&..
  6990 ms  0xe87 privk:0x7f2de4223020::7f2de4223020  e5 e5 e5 e5                                      ....
  6990 ms  0xe87 SECKEY_DestroyPrivateKey()
  6990 ms  0xe87 privk:0x7f2de2e5a020::7f2de2e5a020  80 23 e3 e2                                      .#..
  6990 ms  0xe87 privk:0x7f2de2e5a020::7f2de2e5a020  e5 e5 e5 e5                                      ....
  6991 ms  0xe87 PR_Close()
  6991 ms  0xe87 fd:0x7f2de2da09a0
  6991 ms     | 0xe87 PK11_Encrypt()
  6991 ms     | 0xe87 symkey:0x7f2de2dab100
  7921 ms  0xe87 SSL_ImportFD()
  7921 ms  0xe87 ret:0x7f2dd21d9430
  7921 ms  0xe87 SSL_AuthCertificateHook()
  7921 ms  0xe87 fd:0x7f2dd21d9430
  7921 ms  0xe87 ret:0x0
  7922 ms  0xe87 PR_Connect()
  7922 ms  0xe87 fd:0x7f2dd21d9430
           /* TID 0xe8f */
  7924 ms  0xe8f PR_Close()
  7924 ms  0xe8f fd:0x7f2dd2156a90
  7933 ms  0xe8f PR_Close()
  7933 ms  0xe8f fd:0x7f2dd2156640
  7934 ms  0xe8f PR_Close()
  7934 ms  0xe8f fd:0x7f2dd1d65ca0
  7935 ms  0xe8f PR_Close()
  7935 ms  0xe8f fd:0x7f2dd1d65ca0
  7936 ms  0xe8f PR_Close()
  7936 ms  0xe8f fd:0x7f2dd1d65ca0
           /* TID 0xe87 */
  7964 ms  0xe87 SSL_ImportFD()
  7964 ms  0xe87 ret:0x7f2de2e2d1f0
  7964 ms  0xe87 SSL_AuthCertificateHook()
  7964 ms  0xe87 fd:0x7f2de2e2d1f0
  7964 ms  0xe87 ret:0x0
  7964 ms  0xe87 PR_Connect()
  7964 ms  0xe87 fd:0x7f2de2e2d1f0
  7974 ms  0xe87 PK11_Encrypt()
  7974 ms  0xe87 symkey:0x7f2dd21e9a80
  7975 ms  0xe87 PK11_Encrypt()
  7975 ms  0xe87 symkey:0x7f2dd21e9a80
  7976 ms  0xe87 PK11_Encrypt()
  7976 ms  0xe87 symkey:0x7f2dd21e9a80
  7977 ms  0xe87 PK11_Encrypt()
  7977 ms  0xe87 symkey:0x7f2dd21e9a80
  7978 ms  0xe87 PK11_Encrypt()
  7978 ms  0xe87 symkey:0x7f2dd21e9a80
  7979 ms  0xe87 PK11_Encrypt()
  7979 ms  0xe87 symkey:0x7f2dd21e9a80
  7980 ms  0xe87 PK11_Encrypt()
  7980 ms  0xe87 symkey:0x7f2dd21e9a80
  7981 ms  0xe87 PK11_Encrypt()
  7981 ms  0xe87 symkey:0x7f2dd21e9a80
  7982 ms  0xe87 PK11_Encrypt()
  7982 ms  0xe87 symkey:0x7f2dd21e9a80
  7984 ms  0xe87 SSL_ImportFD()
  7984 ms  0xe87 ret:0x7f2de2e76b20
  7984 ms  0xe87 SSL_AuthCertificateHook()
  7984 ms  0xe87 fd:0x7f2de2e76b20
  7985 ms  0xe87 ret:0x0
  7985 ms  0xe87 PR_Connect()
  7985 ms  0xe87 fd:0x7f2de2e76b20
  7990 ms  0xe87 PK11_Encrypt()
  7990 ms  0xe87 symkey:0x7f2de425ba00
  8001 ms  0xe87 SECKEY_CreateECPrivateKey()
  8001 ms  0xe87 cx:0x7f2de2ef0c48
  8002 ms     | 0xe87 EC_ValidatePublicKey()
  8002 ms     | 0xe87 ret:0x0
  8002 ms  0xe87 ret:0x7f2de2e5b020::7f2de2e5b020  20 89 da e2                                       ...
  8002 ms  0xe87 SECKEY_CreateECPrivateKey()
  8002 ms  0xe87 cx:0x7f2de2ef0c48
  8002 ms     | 0xe87 EC_ValidatePublicKey()
  8004 ms     | 0xe87 ret:0x0
  8004 ms  0xe87 ret:0x7f2de4223820::7f2de4223820  40 8c da e2                                      @...
  8005 ms  0xe87 PK11_Encrypt()
  8005 ms  0xe87 symkey:0x7f2dd21e9a80
  8006 ms  0xe87 PK11_Encrypt()
  8006 ms  0xe87 symkey:0x7f2dd21e9a80
  8006 ms  0xe87 PK11_Encrypt()
  8006 ms  0xe87 symkey:0x7f2dd21e9a80
  8007 ms  0xe87 PK11_Encrypt()
  8007 ms  0xe87 symkey:0x7f2dd21e9a80
  8007 ms  0xe87 PK11_Encrypt()
  8007 ms  0xe87 symkey:0x7f2dd21e9a80
  8007 ms  0xe87 SSL_ImportFD()
  8007 ms  0xe87 ret:0x7f2de425fc40
  8007 ms  0xe87 SSL_AuthCertificateHook()
  8007 ms  0xe87 fd:0x7f2de425fc40
  8007 ms  0xe87 ret:0x0
  8007 ms  0xe87 PR_Connect()
  8007 ms  0xe87 fd:0x7f2de425fc40
  8007 ms  0xe87 SSL_ImportFD()
  8007 ms  0xe87 ret:0x7f2de36c5b20
  8007 ms  0xe87 SSL_AuthCertificateHook()
  8007 ms  0xe87 fd:0x7f2de36c5b20
  8007 ms  0xe87 ret:0x0
  8007 ms  0xe87 PR_Connect()
  8007 ms  0xe87 fd:0x7f2de36c5b20
  8007 ms  0xe87 SSL_ImportFD()
  8007 ms  0xe87 ret:0x7f2de42b21c0
  8007 ms  0xe87 SSL_AuthCertificateHook()
  8007 ms  0xe87 fd:0x7f2de42b21c0
  8007 ms  0xe87 ret:0x0
  8007 ms  0xe87 PR_Connect()
  8007 ms  0xe87 fd:0x7f2de42b21c0
  8010 ms  0xe87 PK11_Encrypt()
  8010 ms  0xe87 symkey:0x7f2dd21e9a80
  8011 ms  0xe87 PK11_Encrypt()
  8011 ms  0xe87 symkey:0x7f2dd21e9a80
  8012 ms  0xe87 PK11_Encrypt()
  8012 ms  0xe87 symkey:0x7f2dd21e9a80
  8015 ms  0xe87 PK11_Encrypt()
  8015 ms  0xe87 symkey:0x7f2dd21e9a80
  8024 ms  0xe87 PK11_Encrypt()
  8024 ms  0xe87 symkey:0x7f2dd21e9a80
  8025 ms  0xe87 PK11_Encrypt()
  8025 ms  0xe87 symkey:0x7f2dd21e9a80
  8059 ms  0xe87 PK11_Derive()
  8059 ms  0xe87 basekey:0x7f2de2daaf80
  8059 ms     | 0xe87 PK11_DeriveWithTemplate()
  8059 ms  0xe87 ret:0x7f2de2daaf00
  8059 ms  0xe87 PK11_PubDeriveWithKDF()
  8059 ms  0xe87 seckey:0x7f2de2e5b020
  8059 ms     | 0xe87 EC_ValidatePublicKey()
  8059 ms     | 0xe87 ret:0x0
  8059 ms  0xe87 ret:0x7f2de2daaf80
  8059 ms  SECKEY_ECParamsToKeySize()
  8059 ms  0xe87 ret:0xff
  8059 ms  0xe87 PK11_DeriveWithFlags()
  8059 ms  0xe87 basekey:0x7f2de2daaf00
  8060 ms     | 0xe87 PK11_DeriveWithTemplate()
  8060 ms  0xe87 ret:0x7f2de2daaa80
  8060 ms  0xe87 PK11_Derive()
  8060 ms  0xe87 basekey:0x7f2de2daaf80
  8060 ms     | 0xe87 PK11_DeriveWithTemplate()
  8060 ms  0xe87 ret:0x7f2de2daaa00
  8060 ms  0xe87 PK11_DeriveWithFlags()
  8060 ms  0xe87 basekey:0x7f2de2daaa00
  8060 ms     | 0xe87 PK11_DeriveWithTemplate()
  8060 ms  0xe87 ret:0x7f2de2daaf00
  8060 ms  0xe87 PK11_DeriveWithFlags()
  8060 ms  0xe87 basekey:0x7f2de2daaa00
  8060 ms     | 0xe87 PK11_DeriveWithTemplate()
  8060 ms  0xe87 ret:0x7f2de2daaf80
  8060 ms  0xe87 PK11_DeriveWithFlags()
  8060 ms  0xe87 basekey:0x7f2de2daaa00
  8060 ms     | 0xe87 PK11_DeriveWithTemplate()
  8060 ms  0xe87 ret:0x7f2de2daaa80
  8060 ms  0xe87 PK11_Derive()
  8060 ms  0xe87 basekey:0x7f2de2daa600
  8060 ms     | 0xe87 PK11_DeriveWithTemplate()
  8060 ms  0xe87 ret:0x7f2de2daa580
  8060 ms  0xe87 PK11_DeriveWithFlags()
  8060 ms  0xe87 basekey:0x7f2de2daaf80
  8060 ms     | 0xe87 PK11_DeriveWithTemplate()
  8060 ms  0xe87 ret:0x7f2de2daaa00
  8060 ms  0xe87 PK11_DeriveWithFlags()
  8060 ms  0xe87 basekey:0x7f2de2daaf80
  8060 ms     | 0xe87 PK11_DeriveWithTemplate()
  8060 ms  0xe87 ret:0x7f2de2daaa80
  8061 ms  0xe87 PK11_DeriveWithFlags()
  8061 ms  0xe87 basekey:0x7f2de2daaf80
  8061 ms     | 0xe87 PK11_DeriveWithTemplate()
  8061 ms  0xe87 ret:0x7f2de2daaa80
  8116 ms  0xe87 SECKEY_CreateECPrivateKey()
  8116 ms  0xe87 cx:0x7f2de2ef0aa8
  8117 ms     | 0xe87 EC_ValidatePublicKey()
  8117 ms     | 0xe87 ret:0x0
  8117 ms  0xe87 ret:0x7f2de939d020::7f2de939d020  10 ff 4f e3                                      ..O.
  8118 ms  0xe87 SECKEY_CreateECPrivateKey()
  8118 ms  0xe87 cx:0x7f2de2ef0aa8
  8119 ms     | 0xe87 EC_ValidatePublicKey()
  8122 ms     | 0xe87 ret:0x0
  8122 ms  0xe87 ret:0x7f2de93a1020::7f2de93a1020  40 37 26 e4                                      @7&.
  8181 ms  0xe87 SECKEY_CreateECPrivateKey()
  8181 ms  0xe87 cx:0x7f2de2ef0de8
  8184 ms     | 0xe87 EC_ValidatePublicKey()
  8184 ms     | 0xe87 ret:0x0
  8184 ms  0xe87 ret:0x7f2de93a6820::7f2de93a6820  f0 61 28 e4                                      .a(.
  8185 ms  0xe87 SECKEY_CreateECPrivateKey()
  8185 ms  0xe87 cx:0x7f2de2ef0de8
  8187 ms     | 0xe87 EC_ValidatePublicKey()
  8193 ms     | 0xe87 ret:0x0
  8193 ms  0xe87 ret:0x7f2de93aa820::7f2de93aa820  c0 64 28 e4                                      .d(.
  8194 ms  0xe87 SSL_ImportFD()
  8194 ms  0xe87 ret:0x7f2de2ec15e0
  8194 ms  0xe87 SSL_AuthCertificateHook()
  8194 ms  0xe87 fd:0x7f2de2ec15e0
  8194 ms  0xe87 ret:0x0
  8196 ms  0xe87 PR_Connect()
  8196 ms  0xe87 fd:0x7f2de2ec15e0
  8197 ms  0xe87 SSL_ImportFD()
  8197 ms  0xe87 ret:0x7f2de2e76430
  8197 ms  0xe87 SSL_AuthCertificateHook()
  8197 ms  0xe87 fd:0x7f2de2e76430
  8197 ms  0xe87 ret:0x0
  8197 ms  0xe87 PR_Connect()
  8197 ms  0xe87 fd:0x7f2de2e76430
  8198 ms  0xe87 SSL_ImportFD()
  8198 ms  0xe87 ret:0x7f2de2e76a60
  8198 ms  0xe87 SSL_AuthCertificateHook()
  8198 ms  0xe87 fd:0x7f2de2e76a60
  8198 ms  0xe87 ret:0x0
  8198 ms  0xe87 PR_Connect()
  8198 ms  0xe87 fd:0x7f2de2e76a60
  8199 ms  0xe87 SSL_ImportFD()
  8199 ms  0xe87 ret:0x7f2de2e76f10
  8199 ms  0xe87 SSL_AuthCertificateHook()
  8199 ms  0xe87 fd:0x7f2de2e76f10
  8199 ms  0xe87 ret:0x0
  8200 ms  0xe87 PR_Connect()
  8200 ms  0xe87 fd:0x7f2de2e76f10
  8202 ms  0xe87 SSL_ImportFD()
  8202 ms  0xe87 ret:0x7f2de2e76f70
  8202 ms  0xe87 SSL_AuthCertificateHook()
  8202 ms  0xe87 fd:0x7f2de2e76f70
  8202 ms  0xe87 ret:0x0
  8202 ms  0xe87 PR_Connect()
  8202 ms  0xe87 fd:0x7f2de2e76f70
  8202 ms  0xe87 SSL_ImportFD()
  8202 ms  0xe87 ret:0x7f2de2e76af0
  8203 ms  0xe87 SSL_AuthCertificateHook()
  8203 ms  0xe87 fd:0x7f2de2e76af0
  8203 ms  0xe87 ret:0x0
  8203 ms  0xe87 PR_Connect()
  8203 ms  0xe87 fd:0x7f2de2e76af0
  8203 ms  0xe87 SSL_ImportFD()
  8203 ms  0xe87 ret:0x7f2de2edd1c0
  8203 ms  0xe87 SSL_AuthCertificateHook()
  8203 ms  0xe87 fd:0x7f2de2edd1c0
  8203 ms  0xe87 ret:0x0
  8205 ms  0xe87 PR_Connect()
  8205 ms  0xe87 fd:0x7f2de2edd1c0
  8206 ms  0xe87 SSL_ImportFD()
  8206 ms  0xe87 ret:0x7f2de36c51c0
  8206 ms  0xe87 SSL_AuthCertificateHook()
  8206 ms  0xe87 fd:0x7f2de36c51c0
  8206 ms  0xe87 ret:0x0
  8206 ms  0xe87 PR_Connect()
  8206 ms  0xe87 fd:0x7f2de36c51c0
           /* TID 0xe8f */
  8207 ms  0xe8f PR_Close()
  8207 ms  0xe8f fd:0x7f2dd2185ac0
           /* TID 0xee4 */
  8207 ms  0xee4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8207 ms  0xee4 ret:0x0
           /* TID 0xe87 */
  8208 ms  0xe87 SSL_AuthCertificateComplete()
  8208 ms  0xe87 fd:0x7f2de2e2d1f0
  8208 ms  0xe87 err:0x0
  8208 ms     | 0xe87 PK11_DeriveWithFlags()
  8208 ms     | 0xe87 basekey:0x7f2de2daa580
  8208 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  8208 ms     | 0xe87 ret:0x7f2de2daaa80
  8208 ms     | 0xe87 PK11_DeriveWithFlags()
  8208 ms     | 0xe87 basekey:0x7f2de2daa580
  8208 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  8208 ms     | 0xe87 ret:0x7f2de2daa600
  8208 ms     | 0xe87 PK11_DeriveWithFlags()
  8208 ms     | 0xe87 basekey:0x7f2de2daa580
  8209 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  8209 ms     | 0xe87 ret:0x7f2de2daa300
  8209 ms     | 0xe87 PK11_DeriveWithFlags()
  8209 ms     | 0xe87 basekey:0x7f2de2daaf00
  8209 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  8209 ms     | 0xe87 ret:0x7f2dd21eab80
  8209 ms     | 0xe87 PK11_DeriveWithFlags()
  8209 ms     | 0xe87 basekey:0x7f2de2daaf00
  8209 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  8209 ms     | 0xe87 ret:0x7f2de2daa080
  8209 ms     | 0xe87 PK11_DeriveWithFlags()
  8209 ms     | 0xe87 basekey:0x7f2de2daa600
  8209 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  8209 ms     | 0xe87 ret:0x7f2de2daa080
  8209 ms     | 0xe87 PK11_DeriveWithFlags()
  8209 ms     | 0xe87 basekey:0x7f2de2daa600
  8209 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  8209 ms     | 0xe87 ret:0x7f2dd2121100
  8209 ms     | 0xe87 PK11_DeriveWithFlags()
  8209 ms     | 0xe87 basekey:0x7f2de2daaf00
  8209 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  8209 ms     | 0xe87 ret:0x7f2de2daaa00
  8209 ms     | 0xe87 PK11_Encrypt()
  8209 ms     | 0xe87 symkey:0x7f2dd21eab80
  8209 ms     | 0xe87 PK11_DeriveWithFlags()
  8209 ms     | 0xe87 basekey:0x7f2de2daaa80
  8209 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  8209 ms     | 0xe87 ret:0x7f2de2daaa00
  8209 ms     | 0xe87 PK11_DeriveWithFlags()
  8209 ms     | 0xe87 basekey:0x7f2de2daaa80
  8209 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  8209 ms     | 0xe87 ret:0x7f2dd2121100
  8209 ms     | 0xe87 PK11_DeriveWithFlags()
  8209 ms     | 0xe87 basekey:0x7f2de2daa580
  8209 ms     |    | 0xe87 PK11_DeriveWithTemplate()
  8210 ms     | 0xe87 ret:0x7f2dd21eab80
  8210 ms     | 0xe87 SECKEY_DestroyPrivateKey()
  8210 ms     | 0xe87 privk:0x7f2de4223820::7f2de4223820  40 8c da e2                                      @...
  8210 ms     | 0xe87 privk:0x7f2de4223820::7f2de4223820  e5 e5 e5 e5                                      ....
  8210 ms     | 0xe87 SECKEY_DestroyPrivateKey()
  8210 ms     | 0xe87 privk:0x7f2de2e5b020::7f2de2e5b020  20 89 da e2                                       ...
  8211 ms     | 0xe87 privk:0x7f2de2e5b020::7f2de2e5b020  e5 e5 e5 e5                                      ....
  8211 ms  0xe87 PK11_Encrypt()
  8211 ms  0xe87 symkey:0x7f2de2daaa00
  8212 ms  0xe87 PK11_Encrypt()
  8212 ms  0xe87 symkey:0x7f2de2daaa00
  8212 ms  0xe87 SECKEY_CreateECPrivateKey()
  8212 ms  0xe87 cx:0x7f2de2ef1fc8
  8213 ms     | 0xe87 EC_ValidatePublicKey()
  8213 ms     | 0xe87 ret:0x0
  8213 ms  0xe87 ret:0x7f2de4223020::7f2de4223020  20 89 da e2                                       ...
  8213 ms  0xe87 SECKEY_CreateECPrivateKey()
  8213 ms  0xe87 cx:0x7f2de2ef1fc8
  8214 ms     | 0xe87 EC_ValidatePublicKey()
  8216 ms     | 0xe87 ret:0x0
  8216 ms  0xe87 ret:0x7f2de9394820::7f2de9394820  10 0f e7 e2                                      ....
  8217 ms  0xe87 SECKEY_CreateECPrivateKey()
  8217 ms  0xe87 cx:0x7f2de2ef1e28
  8217 ms     | 0xe87 EC_ValidatePublicKey()
  8218 ms     | 0xe87 ret:0x0
  8218 ms  0xe87 ret:0x7f2de93b0820::7f2de93b0820  b0 65 28 e4                                      .e(.
  8218 ms  0xe87 SECKEY_CreateECPrivateKey()
  8218 ms  0xe87 cx:0x7f2de2ef1e28
  8218 ms     | 0xe87 EC_ValidatePublicKey()
  8220 ms     | 0xe87 ret:0x0
  8220 ms  0xe87 ret:0x7f2de93c4820::7f2de93c4820  40 6c 28 e4                                      @l(.
  8221 ms  0xe87 SECKEY_CreateECPrivateKey()
  8221 ms  0xe87 cx:0x7f2de2ef0f88
  8223 ms     | 0xe87 EC_ValidatePublicKey()
  8223 ms     | 0xe87 ret:0x0
  8223 ms  0xe87 ret:0x7f2de93c7820::7f2de93c7820  30 6d 28 e4                                      0m(.
  8223 ms  0xe87 SECKEY_CreateECPrivateKey()
  8223 ms  0xe87 cx:0x7f2de2ef0f88
  8223 ms     | 0xe87 EC_ValidatePublicKey()
  8225 ms     | 0xe87 ret:0x0
  8225 ms  0xe87 ret:0x7f2de93cd020::7f2de93cd020  a0 d1 2c e4                                      ..,.
  8226 ms  0xe87 SSL_ImportFD()
  8226 ms  0xe87 ret:0x7f2de431a7f0
  8226 ms  0xe87 SSL_AuthCertificateHook()
  8226 ms  0xe87 fd:0x7f2de431a7f0
  8226 ms  0xe87 ret:0x0
  8226 ms  0xe87 PR_Connect()
  8226 ms  0xe87 fd:0x7f2de431a7f0
  8248 ms  0xe87 PK11_DeriveWithFlags()
  8248 ms  0xe87 basekey:0x7f2dd21eab80
  8248 ms     | 0xe87 PK11_DeriveWithTemplate()
  8248 ms  0xe87 ret:0x7f2de2daaf80
  8248 ms  0xe87 PK11_DeriveWithFlags()
  8248 ms  0xe87 basekey:0x7f2dd21eab80
  8248 ms     | 0xe87 PK11_DeriveWithTemplate()
  8248 ms  0xe87 ret:0x7f2de2daaf80
  8248 ms  0xe87 PK11_Encrypt()
  8248 ms  0xe87 symkey:0x7f2de2daaa00
           /* TID 0xe8f */
  8320 ms  0xe8f PR_Close()
  8320 ms  0xe8f fd:0x7f2de431a640
           /* TID 0xe87 */
  8326 ms  SECKEY_ECParamsToKeySize()
  8326 ms  0xe87 ret:0x100
  8326 ms  0xe87 SECKEY_CreateECPrivateKey()
  8326 ms  0xe87 cx:0x7f2de2ef0aa8
  8327 ms     | 0xe87 EC_ValidatePublicKey()
  8343 ms     | 0xe87 ret:0x0
  8343 ms  0xe87 ret:0x7f2de9796020::7f2de9796020  f0 db 2c e4                                      ..,.
  8343 ms  0xe87 PK11_PubDeriveWithKDF()
  8343 ms  0xe87 seckey:0x7f2de9796020
  8343 ms     | 0xe87 EC_ValidatePublicKey()
  8345 ms     | 0xe87 ret:0x0
  8354 ms  0xe87 ret:0x7f2de2daaf80
  8354 ms  0xe87 PK11_DeriveWithFlags()
  8354 ms  0xe87 basekey:0x7f2de2daaf80
  8354 ms     | 0xe87 PK11_DeriveWithTemplate()
  8354 ms  0xe87 ret:0x7f2de2daaf00
  8354 ms  0xe87 PK11_Derive()
  8354 ms  0xe87 basekey:0x7f2de2daaf00
  8354 ms     | 0xe87 PK11_DeriveWithTemplate()
  8354 ms  0xe87 ret:0x7f2de2daa580
  8354 ms  0xe87 SECKEY_DestroyPrivateKey()
  8354 ms  0xe87 privk:0x7f2de9796020::7f2de9796020  f0 db 2c e4                                      ..,.
  8354 ms  0xe87 privk:0x7f2de9796020::7f2de9796020  e5 e5 e5 e5                                      ....
  8354 ms  0xe87 PK11_Encrypt()
  8354 ms  0xe87 symkey:0x7f2de2dab000
  8354 ms  0xe87 PK11_Encrypt()
  8354 ms  0xe87 symkey:0x7f2de2daaa00
           /* TID 0xe8f */
  8358 ms  0xe8f PR_Close()
  8358 ms  0xe8f fd:0x7f2dd2156b20
  8359 ms  0xe8f PR_Close()
  8359 ms  0xe8f fd:0x7f2dd1d65cd0
           /* TID 0xe87 */
  8359 ms  0xe87 PR_Connect()
  8359 ms  0xe87 fd:0x7f2dd2156c70
           /* TID 0xe8f */
  8389 ms  0xe8f PR_Close()
  8389 ms  0xe8f fd:0x7f2de2edd6a0
           /* TID 0xe87 */
  8393 ms  SECKEY_ECParamsToKeySize()
  8393 ms  0xe87 ret:0x100
  8393 ms  0xe87 SECKEY_CreateECPrivateKey()
  8393 ms  0xe87 cx:0x7f2de2ef0de8
  8394 ms     | 0xe87 EC_ValidatePublicKey()
  8395 ms     | 0xe87 ret:0x0
  8395 ms  0xe87 ret:0x7f2de9796820::7f2de9796820  b0 2f e3 e2                                      ./..
  8396 ms  0xe87 PK11_PubDeriveWithKDF()
  8396 ms  0xe87 seckey:0x7f2de9796820
  8396 ms     | 0xe87 EC_ValidatePublicKey()
  8398 ms     | 0xe87 ret:0x0
  8400 ms  0xe87 ret:0x7f2de2daaf80
  8400 ms  0xe87 PK11_DeriveWithFlags()
  8400 ms  0xe87 basekey:0x7f2de2daaf80
  8400 ms     | 0xe87 PK11_DeriveWithTemplate()
  8400 ms  0xe87 ret:0x7f2dd2121100
  8400 ms  0xe87 PK11_Derive()
  8400 ms  0xe87 basekey:0x7f2dd2121100
  8400 ms     | 0xe87 PK11_DeriveWithTemplate()
  8400 ms  0xe87 ret:0x7f2de4afe900
  8400 ms  0xe87 SECKEY_DestroyPrivateKey()
  8400 ms  0xe87 privk:0x7f2de9796820::7f2de9796820  b0 2f e3 e2                                      ./..
  8400 ms  0xe87 privk:0x7f2de9796820::7f2de9796820  e5 e5 e5 e5                                      ....
  8400 ms  0xe87 PK11_Encrypt()
  8400 ms  0xe87 symkey:0x7f2de2daad00
  8403 ms  0xe87 SECKEY_CreateECPrivateKey()
  8403 ms  0xe87 cx:0x7f2ded1f12c8
  8404 ms     | 0xe87 EC_ValidatePublicKey()
  8404 ms     | 0xe87 ret:0x0
  8404 ms  0xe87 ret:0x7f2de9796820::7f2de9796820  c0 2e e3 e2                                      ....
  8404 ms  0xe87 SECKEY_CreateECPrivateKey()
  8404 ms  0xe87 cx:0x7f2ded1f12c8
  8404 ms     | 0xe87 EC_ValidatePublicKey()
  8406 ms     | 0xe87 ret:0x0
  8406 ms  0xe87 ret:0x7f2de979c020::7f2de979c020  60 05 e7 e2                                      `...
  8410 ms  0xe87 SECKEY_CreateECPrivateKey()
  8410 ms  0xe87 cx:0x7f2de2ef2e68
  8410 ms     | 0xe87 EC_ValidatePublicKey()
  8410 ms     | 0xe87 ret:0x0
  8410 ms  0xe87 ret:0x7f2de979f020::7f2de979f020  f0 06 e7 e2                                      ....
  8411 ms  0xe87 SECKEY_CreateECPrivateKey()
  8411 ms  0xe87 cx:0x7f2de2ef2e68
  8411 ms     | 0xe87 EC_ValidatePublicKey()
  8417 ms     | 0xe87 ret:0x0
  8418 ms  0xe87 ret:0x7f2de97a1020::7f2de97a1020  c0 09 e7 e2                                      ....
  8418 ms  0xe87 SECKEY_CreateECPrivateKey()
  8418 ms  0xe87 cx:0x7f2de2ef2cc8
  8418 ms     | 0xe87 EC_ValidatePublicKey()
  8418 ms     | 0xe87 ret:0x0
  8418 ms  0xe87 ret:0x7f2de97a3820::7f2de97a3820  a0 0b e7 e2                                      ....
  8419 ms  0xe87 SECKEY_CreateECPrivateKey()
  8419 ms  0xe87 cx:0x7f2de2ef2cc8
  8419 ms     | 0xe87 EC_ValidatePublicKey()
  8421 ms     | 0xe87 ret:0x0
  8421 ms  0xe87 ret:0x7f2de97a5820::7f2de97a5820  30 d3 2c e4                                      0.,.
  8433 ms  0xe87 SECKEY_CreateECPrivateKey()
  8433 ms  0xe87 cx:0x7f2de2ef2b28
  8433 ms     | 0xe87 EC_ValidatePublicKey()
  8433 ms     | 0xe87 ret:0x0
  8433 ms  0xe87 ret:0x7f2de97a8020::7f2de97a8020  a0 db 2c e4                                      ..,.
  8433 ms  0xe87 SECKEY_CreateECPrivateKey()
  8433 ms  0xe87 cx:0x7f2de2ef2b28
  8434 ms     | 0xe87 EC_ValidatePublicKey()
  8435 ms     | 0xe87 ret:0x0
  8435 ms  0xe87 ret:0x7f2de97aa020::7f2de97aa020  80 dd 2c e4                                      ..,.
  8436 ms  0xe87 SECKEY_CreateECPrivateKey()
  8436 ms  0xe87 cx:0x7f2de2ef2988
  8436 ms     | 0xe87 EC_ValidatePublicKey()
  8436 ms     | 0xe87 ret:0x0
  8436 ms  0xe87 ret:0x7f2de97bd820::7f2de97bd820  c0 de 2c e4                                      ..,.
  8436 ms  0xe87 SECKEY_CreateECPrivateKey()
  8436 ms  0xe87 cx:0x7f2de2ef2988
  8437 ms     | 0xe87 EC_ValidatePublicKey()
  8439 ms     | 0xe87 ret:0x0
  8439 ms  0xe87 ret:0x7f2de97c3020::7f2de97c3020  00 b1 31 e4                                      ..1.
  8439 ms  0xe87 SECKEY_CreateECPrivateKey()
  8439 ms  0xe87 cx:0x7f2de2ef27e8
  8440 ms     | 0xe87 EC_ValidatePublicKey()
  8440 ms     | 0xe87 ret:0x0
  8440 ms  0xe87 ret:0x7f2de97cd820::7f2de97cd820  70 b4 31 e4                                      p.1.
  8440 ms  0xe87 SECKEY_CreateECPrivateKey()
  8440 ms  0xe87 cx:0x7f2de2ef27e8
  8440 ms     | 0xe87 EC_ValidatePublicKey()
  8442 ms     | 0xe87 ret:0x0
  8442 ms  0xe87 ret:0x7f2de97d0020::7f2de97d0020  f0 b6 31 e4                                      ..1.
  8444 ms  0xe87 SECKEY_CreateECPrivateKey()
  8444 ms  0xe87 cx:0x7f2de2ef2648
  8445 ms     | 0xe87 EC_ValidatePublicKey()
  8445 ms     | 0xe87 ret:0x0
  8445 ms  0xe87 ret:0x7f2de97d5820::7f2de97d5820  d0 b8 31 e4                                      ..1.
  8445 ms  0xe87 SECKEY_CreateECPrivateKey()
  8445 ms  0xe87 cx:0x7f2de2ef2648
  8445 ms     | 0xe87 EC_ValidatePublicKey()
  8447 ms     | 0xe87 ret:0x0
  8447 ms  0xe87 ret:0x7f2de97d7820::7f2de97d7820  50 31 3b e4                                      P1;.
  8450 ms  0xe87 SECKEY_CreateECPrivateKey()
  8450 ms  0xe87 cx:0x7f2de2ef2168
  8451 ms     | 0xe87 EC_ValidatePublicKey()
  8451 ms     | 0xe87 ret:0x0
  8451 ms  0xe87 ret:0x7f2dec04e020::7f2dec04e020  20 39 3b e4                                       9;.
  8451 ms  0xe87 SECKEY_CreateECPrivateKey()
  8451 ms  0xe87 cx:0x7f2de2ef2168
  8451 ms     | 0xe87 EC_ValidatePublicKey()
  8461 ms     | 0xe87 ret:0x0
  8461 ms  0xe87 ret:0x7f2dec053020::7f2dec053020  f0 3b 3b e4                                      .;;.
  8465 ms  0xe87 PK11_Encrypt()
  8465 ms  0xe87 symkey:0x7f2dd21e9a80
  8473 ms  SECKEY_ECParamsToKeySize()
  8473 ms  0xe87 ret:0x100
  8473 ms  0xe87 SECKEY_CreateECPrivateKey()
  8473 ms  0xe87 cx:0x7f2de2ef1fc8
  8473 ms     | 0xe87 EC_ValidatePublicKey()
  8475 ms     | 0xe87 ret:0x0
  8475 ms  0xe87 ret:0x7f2dec05c820::7f2dec05c820  90 f7 72 e4                                      ..r.
  8475 ms  0xe87 PK11_PubDeriveWithKDF()
  8475 ms  0xe87 seckey:0x7f2dec05c820
  8475 ms     | 0xe87 EC_ValidatePublicKey()
  8476 ms     | 0xe87 ret:0x0
  8478 ms  0xe87 ret:0x7f2de2daaf80
  8478 ms  0xe87 PK11_DeriveWithFlags()
  8478 ms  0xe87 basekey:0x7f2de2daaf80
  8478 ms     | 0xe87 PK11_DeriveWithTemplate()
  8478 ms  0xe87 ret:0x7f2de2daa700
  8478 ms  0xe87 PK11_Derive()
  8478 ms  0xe87 basekey:0x7f2de2daa700
  8478 ms     | 0xe87 PK11_DeriveWithTemplate()
  8478 ms  0xe87 ret:0x7f2de2daa800
  8478 ms  0xe87 SECKEY_DestroyPrivateKey()
  8478 ms  0xe87 privk:0x7f2dec05c820::7f2dec05c820  90 f7 72 e4                                      ..r.
  8478 ms  0xe87 privk:0x7f2dec05c820::7f2dec05c820  e5 e5 e5 e5                                      ....
  8478 ms  0xe87 PK11_Encrypt()
  8478 ms  0xe87 symkey:0x7f2de2daa400
  8483 ms  SECKEY_ECParamsToKeySize()
  8483 ms  0xe87 ret:0x100
  8483 ms  0xe87 SECKEY_CreateECPrivateKey()
  8483 ms  0xe87 cx:0x7f2de2ef1e28
  8483 ms     | 0xe87 EC_ValidatePublicKey()
  8485 ms     | 0xe87 ret:0x0
  8485 ms  0xe87 ret:0x7f2dec061820::7f2dec061820  90 52 74 e4                                      .Rt.
  8485 ms  0xe87 PK11_PubDeriveWithKDF()
  8485 ms  0xe87 seckey:0x7f2dec061820
  8485 ms     | 0xe87 EC_ValidatePublicKey()
  8486 ms     | 0xe87 ret:0x0
  8488 ms  0xe87 ret:0x7f2de2daaf80
  8488 ms  0xe87 PK11_DeriveWithFlags()
  8488 ms  0xe87 basekey:0x7f2de2daaf80
  8488 ms     | 0xe87 PK11_DeriveWithTemplate()
  8488 ms  0xe87 ret:0x7f2de2daa380
  8488 ms  0xe87 PK11_Derive()
  8488 ms  0xe87 basekey:0x7f2de2daa380
  8488 ms     | 0xe87 PK11_DeriveWithTemplate()
  8488 ms  0xe87 ret:0x7f2de2daa480
  8488 ms  0xe87 SECKEY_DestroyPrivateKey()
  8488 ms  0xe87 privk:0x7f2dec061820::7f2dec061820  90 52 74 e4                                      .Rt.
  8488 ms  0xe87 privk:0x7f2dec061820::7f2dec061820  e5 e5 e5 e5                                      ....
  8488 ms  0xe87 PK11_Encrypt()
  8488 ms  0xe87 symkey:0x7f2de2daa100
  8493 ms  SECKEY_ECParamsToKeySize()
  8493 ms  0xe87 ret:0x100
  8493 ms  0xe87 SECKEY_CreateECPrivateKey()
  8493 ms  0xe87 cx:0x7f2de2ef0f88
  8493 ms     | 0xe87 EC_ValidatePublicKey()
  8495 ms     | 0xe87 ret:0x0
  8495 ms  0xe87 ret:0x7f2decd90820::7f2decd90820  f0 56 74 e4                                      .Vt.
  8495 ms  0xe87 PK11_PubDeriveWithKDF()
  8495 ms  0xe87 seckey:0x7f2decd90820
  8495 ms     | 0xe87 EC_ValidatePublicKey()
  8496 ms     | 0xe87 ret:0x0
  8498 ms  0xe87 ret:0x7f2de2daaf80
  8498 ms  0xe87 PK11_DeriveWithFlags()
  8498 ms  0xe87 basekey:0x7f2de2daaf80
  8498 ms     | 0xe87 PK11_DeriveWithTemplate()
  8498 ms  0xe87 ret:0x7f2de4734780
  8498 ms  0xe87 PK11_Derive()
  8498 ms  0xe87 basekey:0x7f2de4734780
  8498 ms     | 0xe87 PK11_DeriveWithTemplate()
  8498 ms  0xe87 ret:0x7f2de4734800
  8498 ms  0xe87 SECKEY_DestroyPrivateKey()
  8498 ms  0xe87 privk:0x7f2decd90820::7f2decd90820  f0 56 74 e4                                      .Vt.
  8498 ms  0xe87 privk:0x7f2decd90820::7f2decd90820  e5 e5 e5 e5                                      ....
  8498 ms  0xe87 PK11_Encrypt()
  8498 ms  0xe87 symkey:0x7f2de4735000
           /* TID 0xe8f */
  8514 ms  0xe8f PR_Close()
  8514 ms  0xe8f fd:0x7f2de4789040
           /* TID 0xee4 */
  8514 ms  0xee4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8514 ms  0xee4 ret:0x0
           /* TID 0xe87 */
  8514 ms  0xe87 PR_Connect()
  8514 ms  0xe87 fd:0x7f2de4ab72e0
  8516 ms  0xe87 SSL_AuthCertificateComplete()
  8516 ms  0xe87 fd:0x7f2dd21d9430
  8516 ms  0xe87 err:0x0
  8518 ms  0xe87 PK11_Encrypt()
  8518 ms  0xe87 symkey:0x7f2de2dab000
  8518 ms  0xe87 PK11_Encrypt()
  8518 ms  0xe87 symkey:0x7f2de2dab000
  8518 ms  0xe87 PR_Close()
  8518 ms  0xe87 fd:0x7f2de431a7f0
  8519 ms  0xe87 PK11_Encrypt()
  8519 ms  0xe87 symkey:0x7f2de2dab000
  8519 ms  0xe87 PK11_Encrypt()
  8519 ms  0xe87 symkey:0x7f2de2dab000
  8519 ms  0xe87 SSL_ImportFD()
  8519 ms  0xe87 ret:0x7f2de42b27c0
  8519 ms  0xe87 SSL_AuthCertificateHook()
  8519 ms  0xe87 fd:0x7f2de42b27c0
  8519 ms  0xe87 ret:0x0
  8519 ms  0xe87 PR_Connect()
  8519 ms  0xe87 fd:0x7f2de42b27c0
  8519 ms  0xe87 SSL_ImportFD()
  8519 ms  0xe87 ret:0x7f2de431a520
  8519 ms  0xe87 SSL_AuthCertificateHook()
  8519 ms  0xe87 fd:0x7f2de431a520
  8519 ms  0xe87 ret:0x0
  8519 ms  0xe87 PR_Connect()
  8519 ms  0xe87 fd:0x7f2de431a520
  8520 ms  0xe87 PR_Connect()
  8520 ms  0xe87 fd:0x7f2de43c05e0
  8520 ms  0xe87 PR_Connect()
  8520 ms  0xe87 fd:0x7f2de431a7f0
  8520 ms  0xe87 PR_Connect()
  8520 ms  0xe87 fd:0x7f2de43c0040
  8540 ms  0xe87 PK11_Encrypt()
  8540 ms  0xe87 symkey:0x7f2de425ba00
           /* TID 0xe8f */
  8541 ms  0xe8f PR_Close()
  8541 ms  0xe8f fd:0x7f2de36c5820
           /* TID 0xe87 */
  8544 ms  0xe87 PK11_Encrypt()
  8544 ms  0xe87 symkey:0x7f2de425ba00
  8547 ms  0xe87 PK11_Encrypt()
  8547 ms  0xe87 symkey:0x7f2de425ba00
  8548 ms  0xe87 SECKEY_DestroyPrivateKey()
  8548 ms  0xe87 privk:0x7f2de93a1020::7f2de93a1020  40 37 26 e4                                      @7&.
  8548 ms  0xe87 privk:0x7f2de93a1020::7f2de93a1020  e5 e5 e5 e5                                      ....
  8548 ms  0xe87 SECKEY_DestroyPrivateKey()
  8548 ms  0xe87 privk:0x7f2de939d020::7f2de939d020  10 ff 4f e3                                      ..O.
  8548 ms  0xe87 privk:0x7f2de939d020::7f2de939d020  e5 e5 e5 e5                                      ....
  8548 ms  0xe87 PK11_Encrypt()
  8548 ms  0xe87 symkey:0x7f2de2dab000
  8550 ms  0xe87 PK11_Encrypt()
  8550 ms  0xe87 symkey:0x7f2de425ba00
  8555 ms  0xe87 PK11_Encrypt()
  8555 ms  0xe87 symkey:0x7f2de425ba00
  8560 ms  0xe87 PK11_Encrypt()
  8560 ms  0xe87 symkey:0x7f2de425ba00
  8567 ms  0xe87 PK11_Encrypt()
  8567 ms  0xe87 symkey:0x7f2de2dab000
  8567 ms  0xe87 PK11_Encrypt()
  8567 ms  0xe87 symkey:0x7f2de2dab000
           /* TID 0xe8f */
  8568 ms  0xe8f PR_Close()
  8568 ms  0xe8f fd:0x7f2de2ec3b80
           /* TID 0xf22 */
  8568 ms  0xf22 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8568 ms  0xf22 ret:0x0
           /* TID 0xe87 */
  8570 ms  0xe87 SSL_AuthCertificateComplete()
  8570 ms  0xe87 fd:0x7f2de42b21c0
  8570 ms  0xe87 err:0x0
  8570 ms  0xe87 PK11_Encrypt()
  8570 ms  0xe87 symkey:0x7f2de2daa400
  8571 ms  0xe87 PK11_Encrypt()
  8571 ms  0xe87 symkey:0x7f2de2dab000
  8602 ms  SECKEY_ECParamsToKeySize()
  8602 ms  0xe87 ret:0x100
  8602 ms  0xe87 SECKEY_CreateECPrivateKey()
  8602 ms  0xe87 cx:0x7f2ded1f12c8
  8602 ms     | 0xe87 EC_ValidatePublicKey()
  8605 ms     | 0xe87 ret:0x0
  8605 ms  0xe87 ret:0x7f2decd97020::7f2decd97020  a0 f6 72 e4                                      ..r.
  8605 ms  0xe87 PK11_PubDeriveWithKDF()
  8605 ms  0xe87 seckey:0x7f2decd97020
  8605 ms     | 0xe87 EC_ValidatePublicKey()
  8607 ms     | 0xe87 ret:0x0
  8608 ms  0xe87 ret:0x7f2de2daaf80
  8608 ms  0xe87 PK11_DeriveWithFlags()
  8608 ms  0xe87 basekey:0x7f2de2daaf80
  8608 ms     | 0xe87 PK11_DeriveWithTemplate()
  8608 ms  0xe87 ret:0x7f2dd2120f80
  8608 ms  0xe87 PK11_Derive()
  8608 ms  0xe87 basekey:0x7f2dd2120f80
  8608 ms     | 0xe87 PK11_DeriveWithTemplate()
  8608 ms  0xe87 ret:0x7f2dd21ea400
  8608 ms  0xe87 SECKEY_DestroyPrivateKey()
  8608 ms  0xe87 privk:0x7f2decd97020::7f2decd97020  a0 f6 72 e4                                      ..r.
  8608 ms  0xe87 privk:0x7f2decd97020::7f2decd97020  e5 e5 e5 e5                                      ....
  8608 ms  0xe87 PK11_Encrypt()
  8608 ms  0xe87 symkey:0x7f2de2e6cc80
  8614 ms  0xe87 SSL_AuthCertificateComplete()
  8614 ms  0xe87 fd:0x7f2de36c51c0
  8614 ms  0xe87 err:0x0
  8614 ms  0xe87 PK11_Encrypt()
  8614 ms  0xe87 symkey:0x7f2de2e6cc80
  8615 ms  SECKEY_ECParamsToKeySize()
  8615 ms  0xe87 ret:0x100
  8615 ms  0xe87 SECKEY_CreateECPrivateKey()
  8615 ms  0xe87 cx:0x7f2de2ef2e68
  8616 ms     | 0xe87 EC_ValidatePublicKey()
  8622 ms     | 0xe87 ret:0x0
  8622 ms  0xe87 ret:0x7f2decd9a820::7f2decd9a820  10 fa 72 e4                                      ..r.
  8622 ms  0xe87 PK11_PubDeriveWithKDF()
  8622 ms  0xe87 seckey:0x7f2decd9a820
  8622 ms     | 0xe87 EC_ValidatePublicKey()
  8624 ms     | 0xe87 ret:0x0
  8625 ms  0xe87 ret:0x7f2de2daaf80
  8625 ms  0xe87 PK11_DeriveWithFlags()
  8625 ms  0xe87 basekey:0x7f2de2daaf80
  8625 ms     | 0xe87 PK11_DeriveWithTemplate()
  8625 ms  0xe87 ret:0x7f2de2e6ce00
  8625 ms  0xe87 PK11_Derive()
  8625 ms  0xe87 basekey:0x7f2de2e6ce00
  8625 ms     | 0xe87 PK11_DeriveWithTemplate()
  8625 ms  0xe87 ret:0x7f2de424ec00
  8625 ms  0xe87 SECKEY_DestroyPrivateKey()
  8625 ms  0xe87 privk:0x7f2decd9a820::7f2decd9a820  10 fa 72 e4                                      ..r.
  8625 ms  0xe87 privk:0x7f2decd9a820::7f2decd9a820  e5 e5 e5 e5                                      ....
  8625 ms  0xe87 PK11_Encrypt()
  8625 ms  0xe87 symkey:0x7f2de43b2580
           /* TID 0xf21 */
  8632 ms  0xf21 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8632 ms  0xf21 ret:0x0
           /* TID 0xe8f */
  8632 ms  0xe8f PR_Close()
  8632 ms  0xe8f fd:0x7f2de4ab75e0
           /* TID 0xf23 */
  8632 ms  0xf23 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8632 ms  0xf23 ret:0x0
           /* TID 0xe8f */
  8633 ms  0xe8f PR_Close()
  8633 ms  0xe8f fd:0x7f2de4777250
           /* TID 0xe87 */
  8633 ms  0xe87 PK11_Encrypt()
  8633 ms  0xe87 symkey:0x7f2de2dab000
  8633 ms  0xe87 SSL_AuthCertificateComplete()
  8633 ms  0xe87 fd:0x7f2de2edd1c0
  8633 ms  0xe87 err:0x0
  8633 ms  0xe87 SSL_AuthCertificateComplete()
  8633 ms  0xe87 fd:0x7f2de2e76b20
  8633 ms  0xe87 err:0x0
  8633 ms     | 0xe87 SECKEY_DestroyPrivateKey()
  8633 ms     | 0xe87 privk:0x7f2de93aa820::7f2de93aa820  c0 64 28 e4                                      .d(.
  8633 ms     | 0xe87 privk:0x7f2de93aa820::7f2de93aa820  e5 e5 e5 e5                                      ....
  8634 ms     | 0xe87 SECKEY_DestroyPrivateKey()
  8634 ms     | 0xe87 privk:0x7f2de93a6820::7f2de93a6820  f0 61 28 e4                                      .a(.
  8634 ms     | 0xe87 privk:0x7f2de93a6820::7f2de93a6820  e5 e5 e5 e5                                      ....
  8634 ms  0xe87 SSL_AuthCertificateComplete()
  8634 ms  0xe87 fd:0x7f2de36c5b20
  8634 ms  0xe87 err:0x0
  8634 ms  0xe87 PK11_Encrypt()
  8634 ms  0xe87 symkey:0x7f2de2daad00
  8634 ms  0xe87 PK11_Encrypt()
  8634 ms  0xe87 symkey:0x7f2de2daa100
  8635 ms  0xe87 PK11_Encrypt()
  8635 ms  0xe87 symkey:0x7f2de43b2580
  8636 ms  SECKEY_ECParamsToKeySize()
  8636 ms  0xe87 ret:0x100
  8636 ms  0xe87 SECKEY_CreateECPrivateKey()
  8636 ms  0xe87 cx:0x7f2de2ef2cc8
  8636 ms     | 0xe87 EC_ValidatePublicKey()
  8643 ms     | 0xe87 ret:0x0
  8643 ms  0xe87 ret:0x7f2de97a6820::7f2de97a6820  00 61 28 e4                                      .a(.
  8643 ms  0xe87 PK11_PubDeriveWithKDF()
  8643 ms  0xe87 seckey:0x7f2de97a6820
  8643 ms     | 0xe87 EC_ValidatePublicKey()
  8645 ms     | 0xe87 ret:0x0
  8646 ms  0xe87 ret:0x7f2de2daaf80
  8646 ms  0xe87 PK11_DeriveWithFlags()
  8646 ms  0xe87 basekey:0x7f2de2daaf80
  8646 ms     | 0xe87 PK11_DeriveWithTemplate()
  8646 ms  0xe87 ret:0x7f2de43b1980
  8646 ms  0xe87 PK11_Derive()
  8646 ms  0xe87 basekey:0x7f2de43b1980
  8646 ms     | 0xe87 PK11_DeriveWithTemplate()
  8646 ms  0xe87 ret:0x7f2de43b1a00
  8646 ms  0xe87 SECKEY_DestroyPrivateKey()
  8646 ms  0xe87 privk:0x7f2de97a6820::7f2de97a6820  00 61 28 e4                                      .a(.
  8646 ms  0xe87 privk:0x7f2de97a6820::7f2de97a6820  e5 e5 e5 e5                                      ....
  8646 ms  0xe87 PK11_Encrypt()
  8646 ms  0xe87 symkey:0x7f2de4734700
  8653 ms  SECKEY_ECParamsToKeySize()
  8654 ms  0xe87 ret:0x100
  8654 ms  0xe87 SECKEY_CreateECPrivateKey()
  8654 ms  0xe87 cx:0x7f2de2ef2b28
  8654 ms     | 0xe87 EC_ValidatePublicKey()
  8656 ms     | 0xe87 ret:0x0
  8656 ms  0xe87 ret:0x7f2dec05e820::7f2dec05e820  f0 61 28 e4                                      .a(.
  8656 ms  0xe87 PK11_PubDeriveWithKDF()
  8656 ms  0xe87 seckey:0x7f2dec05e820
  8656 ms     | 0xe87 EC_ValidatePublicKey()
  8657 ms     | 0xe87 ret:0x0
  8659 ms  0xe87 ret:0x7f2de2daaf80
  8659 ms  0xe87 PK11_DeriveWithFlags()
  8659 ms  0xe87 basekey:0x7f2de2daaf80
  8659 ms     | 0xe87 PK11_DeriveWithTemplate()
  8659 ms  0xe87 ret:0x7f2de4ac1180
  8659 ms  0xe87 PK11_Derive()
  8659 ms  0xe87 basekey:0x7f2de4ac1180
  8659 ms     | 0xe87 PK11_DeriveWithTemplate()
  8659 ms  0xe87 ret:0x7f2de4ac1200
  8659 ms  0xe87 SECKEY_DestroyPrivateKey()
  8659 ms  0xe87 privk:0x7f2dec05e820::7f2dec05e820  f0 61 28 e4                                      .a(.
  8659 ms  0xe87 privk:0x7f2dec05e820::7f2dec05e820  e5 e5 e5 e5                                      ....
  8659 ms  0xe87 PK11_Encrypt()
  8659 ms  0xe87 symkey:0x7f2de4afe680
           /* TID 0xe8f */
  8660 ms  0xe8f PR_Close()
  8660 ms  0xe8f fd:0x7f2de4777d30
           /* TID 0xf24 */
  8660 ms  0xf24 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8660 ms  0xf24 ret:0x0
           /* TID 0xe87 */
  8660 ms  0xe87 PK11_Encrypt()
  8660 ms  0xe87 symkey:0x7f2de2dab000
  8663 ms  0xe87 PK11_Encrypt()
  8663 ms  0xe87 symkey:0x7f2de2dab000
  8663 ms  0xe87 SSL_AuthCertificateComplete()
  8663 ms  0xe87 fd:0x7f2de2e76af0
  8663 ms  0xe87 err:0x0
  8663 ms  0xe87 SSL_AuthCertificateComplete()
  8663 ms  0xe87 fd:0x7f2de2e76f70
  8663 ms  0xe87 err:0x0
  8663 ms  0xe87 SSL_AuthCertificateComplete()
  8663 ms  0xe87 fd:0x7f2de425fc40
  8663 ms  0xe87 err:0x0
  8663 ms  0xe87 PK11_Encrypt()
  8663 ms  0xe87 symkey:0x7f2de2dab000
  8664 ms  0xe87 PK11_Encrypt()
  8664 ms  0xe87 symkey:0x7f2de4735000
  8664 ms  0xe87 PK11_Encrypt()
  8664 ms  0xe87 symkey:0x7f2de4734700
  8664 ms  0xe87 PK11_Encrypt()
  8664 ms  0xe87 symkey:0x7f2de4afe680
  8665 ms  SECKEY_ECParamsToKeySize()
  8665 ms  0xe87 ret:0x100
  8665 ms  0xe87 SECKEY_CreateECPrivateKey()
  8665 ms  0xe87 cx:0x7f2de2ef2988
  8666 ms     | 0xe87 EC_ValidatePublicKey()
  8669 ms     | 0xe87 ret:0x0
  8669 ms  0xe87 ret:0x7f2decd8e820::7f2decd8e820  90 62 28 e4                                      .b(.
  8669 ms  0xe87 PK11_PubDeriveWithKDF()
  8669 ms  0xe87 seckey:0x7f2decd8e820
  8669 ms     | 0xe87 EC_ValidatePublicKey()
  8671 ms     | 0xe87 ret:0x0
  8683 ms  0xe87 ret:0x7f2de2daaf80
  8683 ms  0xe87 PK11_DeriveWithFlags()
  8683 ms  0xe87 basekey:0x7f2de2daaf80
  8683 ms     | 0xe87 PK11_DeriveWithTemplate()
  8683 ms  0xe87 ret:0x7f2de4735400
  8683 ms  0xe87 PK11_Derive()
  8683 ms  0xe87 basekey:0x7f2de4735400
  8683 ms     | 0xe87 PK11_DeriveWithTemplate()
  8683 ms  0xe87 ret:0x7f2de4735e00
  8683 ms  0xe87 SECKEY_DestroyPrivateKey()
  8683 ms  0xe87 privk:0x7f2decd8e820::7f2decd8e820  90 62 28 e4                                      .b(.
  8683 ms  0xe87 privk:0x7f2decd8e820::7f2decd8e820  e5 e5 e5 e5                                      ....
  8684 ms  0xe87 PK11_Encrypt()
  8684 ms  0xe87 symkey:0x7f2de4e7e380
  8684 ms  SECKEY_ECParamsToKeySize()
  8684 ms  0xe87 ret:0x100
  8684 ms  0xe87 SECKEY_CreateECPrivateKey()
  8684 ms  0xe87 cx:0x7f2de2ef27e8
  8685 ms     | 0xe87 EC_ValidatePublicKey()
  8686 ms     | 0xe87 ret:0x0
  8686 ms  0xe87 ret:0x7f2decd97020::7f2decd97020  c0 64 28 e4                                      .d(.
  8687 ms  0xe87 PK11_PubDeriveWithKDF()
  8687 ms  0xe87 seckey:0x7f2decd97020
  8687 ms     | 0xe87 EC_ValidatePublicKey()
  8688 ms     | 0xe87 ret:0x0
  8689 ms  0xe87 ret:0x7f2de2daaf80
  8689 ms  0xe87 PK11_DeriveWithFlags()
  8689 ms  0xe87 basekey:0x7f2de2daaf80
  8689 ms     | 0xe87 PK11_DeriveWithTemplate()
  8689 ms  0xe87 ret:0x7f2de4e7ef00
  8689 ms  0xe87 PK11_Derive()
  8689 ms  0xe87 basekey:0x7f2de4e7ef00
  8689 ms     | 0xe87 PK11_DeriveWithTemplate()
  8690 ms  0xe87 ret:0x7f2de4e7ef80
  8690 ms  0xe87 SECKEY_DestroyPrivateKey()
  8690 ms  0xe87 privk:0x7f2decd97020::7f2decd97020  c0 64 28 e4                                      .d(.
  8690 ms  0xe87 privk:0x7f2decd97020::7f2decd97020  e5 e5 e5 e5                                      ....
  8690 ms  0xe87 PK11_Encrypt()
  8690 ms  0xe87 symkey:0x7f2de4e7fb00
  8695 ms  SECKEY_ECParamsToKeySize()
  8695 ms  0xe87 ret:0x100
  8695 ms  0xe87 SECKEY_CreateECPrivateKey()
  8695 ms  0xe87 cx:0x7f2de2ef2648
  8696 ms     | 0xe87 EC_ValidatePublicKey()
  8697 ms     | 0xe87 ret:0x0
  8697 ms  0xe87 ret:0x7f2decd97820::7f2decd97820  70 f4 72 e4                                      p.r.
  8697 ms  0xe87 PK11_PubDeriveWithKDF()
  8697 ms  0xe87 seckey:0x7f2decd97820
  8697 ms     | 0xe87 EC_ValidatePublicKey()
  8699 ms     | 0xe87 ret:0x0
  8700 ms  0xe87 ret:0x7f2de2daaf80
  8700 ms  0xe87 PK11_DeriveWithFlags()
  8700 ms  0xe87 basekey:0x7f2de2daaf80
  8700 ms     | 0xe87 PK11_DeriveWithTemplate()
  8700 ms  0xe87 ret:0x7f2de4735d80
  8700 ms  0xe87 PK11_Derive()
  8700 ms  0xe87 basekey:0x7f2de4735d80
  8700 ms     | 0xe87 PK11_DeriveWithTemplate()
  8700 ms  0xe87 ret:0x7f2de4e7fc80
  8700 ms  0xe87 SECKEY_DestroyPrivateKey()
  8700 ms  0xe87 privk:0x7f2decd97820::7f2decd97820  70 f4 72 e4                                      p.r.
  8700 ms  0xe87 privk:0x7f2decd97820::7f2decd97820  e5 e5 e5 e5                                      ....
  8700 ms  0xe87 PK11_Encrypt()
  8700 ms  0xe87 symkey:0x7f2de4ec0600
  8714 ms  SECKEY_ECParamsToKeySize()
  8714 ms  0xe87 ret:0x100
  8714 ms  0xe87 SECKEY_CreateECPrivateKey()
  8714 ms  0xe87 cx:0x7f2de2ef2168
  8714 ms     | 0xe87 EC_ValidatePublicKey()
  8716 ms     | 0xe87 ret:0x0
  8716 ms  0xe87 ret:0x7f2decd9a020::7f2decd9a020  10 fa 72 e4                                      ..r.
  8716 ms  0xe87 PK11_PubDeriveWithKDF()
  8716 ms  0xe87 seckey:0x7f2decd9a020
  8716 ms     | 0xe87 EC_ValidatePublicKey()
  8717 ms     | 0xe87 ret:0x0
  8719 ms  0xe87 ret:0x7f2de2daaf80
  8719 ms  0xe87 PK11_DeriveWithFlags()
  8719 ms  0xe87 basekey:0x7f2de2daaf80
  8719 ms     | 0xe87 PK11_DeriveWithTemplate()
  8719 ms  0xe87 ret:0x7f2de4e7fc00
  8719 ms  0xe87 PK11_Derive()
  8719 ms  0xe87 basekey:0x7f2de4e7fc00
  8719 ms     | 0xe87 PK11_DeriveWithTemplate()
  8719 ms  0xe87 ret:0x7f2de4ec1700
  8719 ms  0xe87 SECKEY_DestroyPrivateKey()
  8719 ms  0xe87 privk:0x7f2decd9a020::7f2decd9a020  10 fa 72 e4                                      ..r.
  8719 ms  0xe87 privk:0x7f2decd9a020::7f2decd9a020  e5 e5 e5 e5                                      ....
  8719 ms  0xe87 PK11_Encrypt()
  8719 ms  0xe87 symkey:0x7f2de4ec1900
  8719 ms  0xe87 PR_Close()
  8719 ms  0xe87 fd:0x7f2de2e76b20
  8719 ms     | 0xe87 PK11_Encrypt()
  8719 ms     | 0xe87 symkey:0x7f2de2daad00
  8720 ms  0xe87 PK11_Encrypt()
  8720 ms  0xe87 symkey:0x7f2de2dab000
  8720 ms  0xe87 PK11_Encrypt()
  8720 ms  0xe87 symkey:0x7f2de2dab000
  8720 ms  0xe87 SSL_AuthCertificateComplete()
  8720 ms  0xe87 fd:0x7f2de2e76f10
  8720 ms  0xe87 err:0x0
  8721 ms  0xe87 SSL_AuthCertificateComplete()
  8721 ms  0xe87 fd:0x7f2de2e76a60
  8721 ms  0xe87 err:0x0
  8721 ms  0xe87 SSL_AuthCertificateComplete()
  8721 ms  0xe87 fd:0x7f2de2e76430
  8721 ms  0xe87 err:0x0
  8721 ms  0xe87 SSL_AuthCertificateComplete()
  8721 ms  0xe87 fd:0x7f2de2ec15e0
  8721 ms  0xe87 err:0x0
           /* TID 0xe8f */
  8723 ms  0xe8f PR_Close()
  8723 ms  0xe8f fd:0x7f2dd2156d00
  8725 ms  0xe8f PR_Close()
  8725 ms  0xe8f fd:0x7f2dd2156b20
           /* TID 0xe87 */
  8725 ms  0xe87 SECKEY_DestroyPrivateKey()
  8725 ms  0xe87 privk:0x7f2de9394820::7f2de9394820  10 0f e7 e2                                      ....
  8725 ms  0xe87 privk:0x7f2de9394820::7f2de9394820  e5 e5 e5 e5                                      ....
  8725 ms  0xe87 SECKEY_DestroyPrivateKey()
  8725 ms  0xe87 privk:0x7f2de4223020::7f2de4223020  20 89 da e2                                       ...
  8726 ms  0xe87 privk:0x7f2de4223020::7f2de4223020  e5 e5 e5 e5                                      ....
  8726 ms  0xe87 SECKEY_DestroyPrivateKey()
  8726 ms  0xe87 privk:0x7f2de93c4820::7f2de93c4820  40 6c 28 e4                                      @l(.
  8726 ms  0xe87 privk:0x7f2de93c4820::7f2de93c4820  e5 e5 e5 e5                                      ....
  8726 ms  0xe87 SECKEY_DestroyPrivateKey()
  8726 ms  0xe87 privk:0x7f2de93b0820::7f2de93b0820  b0 65 28 e4                                      .e(.
  8726 ms  0xe87 privk:0x7f2de93b0820::7f2de93b0820  e5 e5 e5 e5                                      ....
  8726 ms  0xe87 SECKEY_DestroyPrivateKey()
  8726 ms  0xe87 privk:0x7f2de93cd020::7f2de93cd020  a0 d1 2c e4                                      ..,.
  8726 ms  0xe87 privk:0x7f2de93cd020::7f2de93cd020  e5 e5 e5 e5                                      ....
  8726 ms  0xe87 SECKEY_DestroyPrivateKey()
  8726 ms  0xe87 privk:0x7f2de93c7820::7f2de93c7820  30 6d 28 e4                                      0m(.
  8726 ms  0xe87 privk:0x7f2de93c7820::7f2de93c7820  e5 e5 e5 e5                                      ....
  8727 ms  0xe87 PK11_Encrypt()
  8727 ms  0xe87 symkey:0x7f2de4e7e380
  8733 ms  0xe87 PK11_Encrypt()
  8733 ms  0xe87 symkey:0x7f2de4e7fb00
  8737 ms  0xe87 PK11_Encrypt()
  8737 ms  0xe87 symkey:0x7f2de4ec0600
  8737 ms  0xe87 PK11_Encrypt()
  8737 ms  0xe87 symkey:0x7f2de4ec1900
  8738 ms  0xe87 PR_Close()
  8738 ms  0xe87 fd:0x7f2de425fc40
  8738 ms     | 0xe87 PK11_Encrypt()
  8738 ms     | 0xe87 symkey:0x7f2de4735000
  8738 ms  0xe87 PR_Close()
  8738 ms  0xe87 fd:0x7f2de36c5b20
  8738 ms     | 0xe87 PK11_Encrypt()
  8738 ms     | 0xe87 symkey:0x7f2de2daa100
  8738 ms  0xe87 PR_Close()
  8738 ms  0xe87 fd:0x7f2de42b21c0
  8738 ms     | 0xe87 PK11_Encrypt()
  8738 ms     | 0xe87 symkey:0x7f2de2daa400
  8739 ms  0xe87 PK11_Encrypt()
  8739 ms  0xe87 symkey:0x7f2de2dab000
  8739 ms  0xe87 PK11_Encrypt()
  8739 ms  0xe87 symkey:0x7f2de2dab000
           /* TID 0xe8f */
  8740 ms  0xe8f PR_Close()
  8740 ms  0xe8f fd:0x7f2dd2156b20
  8741 ms  0xe8f PR_Close()
  8741 ms  0xe8f fd:0x7f2dd2156b20
           /* TID 0xe87 */
  8742 ms  0xe87 PK11_Encrypt()
  8742 ms  0xe87 symkey:0x7f2de2dab000
  8742 ms  0xe87 PK11_Encrypt()
  8742 ms  0xe87 symkey:0x7f2de2dab000
  8742 ms  0xe87 SECKEY_CreateECPrivateKey()
  8742 ms  0xe87 cx:0x7f2df053d248
  8743 ms     | 0xe87 EC_ValidatePublicKey()
  8743 ms     | 0xe87 ret:0x0
  8743 ms  0xe87 ret:0x7f2de93a6020::7f2de93a6020  f0 36 15 d2                                      .6..
  8743 ms  0xe87 SECKEY_CreateECPrivateKey()
  8743 ms  0xe87 cx:0x7f2df053d248
  8744 ms     | 0xe87 EC_ValidatePublicKey()
  8745 ms     | 0xe87 ret:0x0
  8745 ms  0xe87 ret:0x7f2de93af820::7f2de93af820  00 8b da e2                                      ....
  8747 ms  0xe87 SECKEY_CreateECPrivateKey()
  8747 ms  0xe87 cx:0x7f2df053e428
  8748 ms     | 0xe87 EC_ValidatePublicKey()
  8748 ms     | 0xe87 ret:0x0
  8748 ms  0xe87 ret:0x7f2de93c4020::7f2de93c4020  e0 8c da e2                                      ....
  8748 ms  0xe87 SECKEY_CreateECPrivateKey()
  8748 ms  0xe87 cx:0x7f2df053e428
  8748 ms     | 0xe87 EC_ValidatePublicKey()
  8750 ms     | 0xe87 ret:0x0
  8750 ms  0xe87 ret:0x7f2de93c6820::7f2de93c6820  00 01 e7 e2                                      ....
  8753 ms  0xe87 PK11_Encrypt()
  8753 ms  0xe87 symkey:0x7f2de2dab000
  8803 ms  0xe87 SECKEY_DestroyPrivateKey()
  8803 ms  0xe87 privk:0x7f2de979c020::7f2de979c020  60 05 e7 e2                                      `...
  8803 ms  0xe87 privk:0x7f2de979c020::7f2de979c020  e5 e5 e5 e5                                      ....
  8803 ms  0xe87 SECKEY_DestroyPrivateKey()
  8803 ms  0xe87 privk:0x7f2de9796820::7f2de9796820  c0 2e e3 e2                                      ....
  8803 ms  0xe87 privk:0x7f2de9796820::7f2de9796820  e5 e5 e5 e5                                      ....
  8803 ms  0xe87 PR_Close()
  8803 ms  0xe87 fd:0x7f2de36c51c0
  8803 ms     | 0xe87 PK11_Encrypt()
  8803 ms     | 0xe87 symkey:0x7f2de2e6cc80
  8819 ms  0xe87 SECKEY_DestroyPrivateKey()
  8819 ms  0xe87 privk:0x7f2de97a1020::7f2de97a1020  c0 09 e7 e2                                      ....
  8820 ms  0xe87 privk:0x7f2de97a1020::7f2de97a1020  e5 e5 e5 e5                                      ....
  8820 ms  0xe87 SECKEY_DestroyPrivateKey()
  8820 ms  0xe87 privk:0x7f2de979f020::7f2de979f020  f0 06 e7 e2                                      ....
  8820 ms  0xe87 privk:0x7f2de979f020::7f2de979f020  e5 e5 e5 e5                                      ....
  8820 ms  0xe87 PR_Close()
  8820 ms  0xe87 fd:0x7f2de2edd1c0
  8820 ms     | 0xe87 PK11_Encrypt()
  8820 ms     | 0xe87 symkey:0x7f2de43b2580
  8841 ms  0xe87 SECKEY_DestroyPrivateKey()
  8841 ms  0xe87 privk:0x7f2de97a5820::7f2de97a5820  30 d3 2c e4                                      0.,.
  8841 ms  0xe87 privk:0x7f2de97a5820::7f2de97a5820  e5 e5 e5 e5                                      ....
  8841 ms  0xe87 SECKEY_DestroyPrivateKey()
  8841 ms  0xe87 privk:0x7f2de97a3820::7f2de97a3820  a0 0b e7 e2                                      ....
  8841 ms  0xe87 privk:0x7f2de97a3820::7f2de97a3820  e5 e5 e5 e5                                      ....
  8841 ms  0xe87 PR_Close()
  8841 ms  0xe87 fd:0x7f2de2e76af0
  8841 ms     | 0xe87 PK11_Encrypt()
  8841 ms     | 0xe87 symkey:0x7f2de4734700
  8854 ms  0xe87 SECKEY_DestroyPrivateKey()
  8854 ms  0xe87 privk:0x7f2de97aa020::7f2de97aa020  80 dd 2c e4                                      ..,.
  8854 ms  0xe87 privk:0x7f2de97aa020::7f2de97aa020  e5 e5 e5 e5                                      ....
  8854 ms  0xe87 SECKEY_DestroyPrivateKey()
  8854 ms  0xe87 privk:0x7f2de97a8020::7f2de97a8020  a0 db 2c e4                                      ..,.
  8854 ms  0xe87 privk:0x7f2de97a8020::7f2de97a8020  e5 e5 e5 e5                                      ....
  8854 ms  0xe87 PR_Close()
  8854 ms  0xe87 fd:0x7f2de2e76f70
  8854 ms     | 0xe87 PK11_Encrypt()
  8854 ms     | 0xe87 symkey:0x7f2de4afe680
           /* TID 0xe8f */
  8863 ms  0xe8f PR_Close()
  8863 ms  0xe8f fd:0x7f2de2e76ac0
           /* TID 0xe87 */
  8878 ms  0xe87 SECKEY_DestroyPrivateKey()
  8878 ms  0xe87 privk:0x7f2de97c3020::7f2de97c3020  00 b1 31 e4                                      ..1.
  8878 ms  0xe87 privk:0x7f2de97c3020::7f2de97c3020  e5 e5 e5 e5                                      ....
  8878 ms  0xe87 SECKEY_DestroyPrivateKey()
  8878 ms  0xe87 privk:0x7f2de97bd820::7f2de97bd820  c0 de 2c e4                                      ..,.
  8878 ms  0xe87 privk:0x7f2de97bd820::7f2de97bd820  e5 e5 e5 e5                                      ....
  8878 ms  0xe87 PR_Close()
  8878 ms  0xe87 fd:0x7f2de2e76f10
  8878 ms     | 0xe87 PK11_Encrypt()
  8878 ms     | 0xe87 symkey:0x7f2de4e7e380
  8884 ms  0xe87 SECKEY_DestroyPrivateKey()
  8884 ms  0xe87 privk:0x7f2de97d0020::7f2de97d0020  f0 b6 31 e4                                      ..1.
  8885 ms  0xe87 privk:0x7f2de97d0020::7f2de97d0020  e5 e5 e5 e5                                      ....
  8885 ms  0xe87 SECKEY_DestroyPrivateKey()
  8885 ms  0xe87 privk:0x7f2de97cd820::7f2de97cd820  70 b4 31 e4                                      p.1.
  8885 ms  0xe87 privk:0x7f2de97cd820::7f2de97cd820  e5 e5 e5 e5                                      ....
  8885 ms  0xe87 PR_Close()
  8885 ms  0xe87 fd:0x7f2de2e76a60
  8885 ms     | 0xe87 PK11_Encrypt()
  8885 ms     | 0xe87 symkey:0x7f2de4e7fb00
           /* TID 0xe8f */
  8888 ms  0xe8f PR_Close()
  8888 ms  0xe8f fd:0x7f2de2da07f0
           /* TID 0xe87 */
  8895 ms  0xe87 SECKEY_DestroyPrivateKey()
  8895 ms  0xe87 privk:0x7f2de97d7820::7f2de97d7820  50 31 3b e4                                      P1;.
  8895 ms  0xe87 privk:0x7f2de97d7820::7f2de97d7820  e5 e5 e5 e5                                      ....
  8895 ms  0xe87 SECKEY_DestroyPrivateKey()
  8895 ms  0xe87 privk:0x7f2de97d5820::7f2de97d5820  d0 b8 31 e4                                      ..1.
  8895 ms  0xe87 privk:0x7f2de97d5820::7f2de97d5820  e5 e5 e5 e5                                      ....
  8895 ms  0xe87 PR_Close()
  8895 ms  0xe87 fd:0x7f2de2e76430
  8895 ms     | 0xe87 PK11_Encrypt()
  8895 ms     | 0xe87 symkey:0x7f2de4ec0600
  8913 ms  0xe87 SECKEY_DestroyPrivateKey()
  8913 ms  0xe87 privk:0x7f2dec053020::7f2dec053020  f0 3b 3b e4                                      .;;.
  8914 ms  0xe87 privk:0x7f2dec053020::7f2dec053020  e5 e5 e5 e5                                      ....
  8914 ms  0xe87 SECKEY_DestroyPrivateKey()
  8914 ms  0xe87 privk:0x7f2dec04e020::7f2dec04e020  20 39 3b e4                                       9;.
  8914 ms  0xe87 privk:0x7f2dec04e020::7f2dec04e020  e5 e5 e5 e5                                      ....
  8914 ms  0xe87 PR_Close()
  8914 ms  0xe87 fd:0x7f2de2ec15e0
  8914 ms     | 0xe87 PK11_Encrypt()
  8914 ms     | 0xe87 symkey:0x7f2de4ec1900
           /* TID 0xe8f */
  8928 ms  0xe8f PR_Close()
  8928 ms  0xe8f fd:0x7f2dd21d97c0
  8928 ms  0xe8f PR_Close()
  8928 ms  0xe8f fd:0x7f2de2e763d0
  8932 ms  0xe8f PR_Close()
  8932 ms  0xe8f fd:0x7f2dd2156af0
  8932 ms  0xe8f PR_Close()
  8932 ms  0xe8f fd:0x7f2de2da0b80
  8932 ms  0xe8f PR_Close()
  8932 ms  0xe8f fd:0x7f2de2e2d9a0
  8932 ms  0xe8f PR_Close()
  8932 ms  0xe8f fd:0x7f2de2e2db20
  8932 ms  0xe8f PR_Close()
  8932 ms  0xe8f fd:0x7f2de2e2dbe0
  8932 ms  0xe8f PR_Close()
  8932 ms  0xe8f fd:0x7f2de2e2dd90
  8932 ms  0xe8f PR_Close()
  8932 ms  0xe8f fd:0x7f2de2e76af0
  8932 ms  0xe8f PR_Close()
  8932 ms  0xe8f fd:0x7f2de2e76d60
  8933 ms  0xe8f PR_Close()
  8933 ms  0xe8f fd:0x7f2dd2156af0
  8936 ms  0xe8f PR_Close()
  8936 ms  0xe8f fd:0x7f2dd2156af0
           /* TID 0xe87 */
  8940 ms  SECKEY_ECParamsToKeySize()
  8940 ms  0xe87 ret:0x100
  8940 ms  0xe87 SECKEY_CreateECPrivateKey()
  8940 ms  0xe87 cx:0x7f2df053d248
  8941 ms     | 0xe87 EC_ValidatePublicKey()
  8943 ms     | 0xe87 ret:0x0
  8943 ms  0xe87 ret:0x7f2de2d1b020::7f2de2d1b020  40 37 15 d2                                      @7..
  8943 ms  0xe87 PK11_PubDeriveWithKDF()
  8943 ms  0xe87 seckey:0x7f2de2d1b020
  8943 ms     | 0xe87 EC_ValidatePublicKey()
  8945 ms     | 0xe87 ret:0x0
  8946 ms  0xe87 ret:0x7f2de4ec1700
  8946 ms  0xe87 PK11_DeriveWithFlags()
  8946 ms  0xe87 basekey:0x7f2de4ec1700
  8946 ms     | 0xe87 PK11_DeriveWithTemplate()
  8947 ms  0xe87 ret:0x7f2de4e7fc00
  8947 ms  0xe87 PK11_Derive()
  8947 ms  0xe87 basekey:0x7f2de4e7fc00
  8947 ms     | 0xe87 PK11_DeriveWithTemplate()
  8947 ms  0xe87 ret:0x7f2de4e7fc80
  8947 ms  0xe87 SECKEY_DestroyPrivateKey()
  8947 ms  0xe87 privk:0x7f2de2d1b020::7f2de2d1b020  40 37 15 d2                                      @7..
  8947 ms  0xe87 privk:0x7f2de2d1b020::7f2de2d1b020  e5 e5 e5 e5                                      ....
  8947 ms  0xe87 PK11_Encrypt()
  8947 ms  0xe87 symkey:0x7f2de4ec1780
  8953 ms  0xe87 SSL_AuthCertificateComplete()
  8953 ms  0xe87 fd:0x7f2de42b27c0
  8953 ms  0xe87 err:0x0
           /* TID 0xe8f */
  8954 ms  0xe8f PR_Close()
  8954 ms  0xe8f fd:0x7f2dd21d97c0
  8955 ms  0xe8f PR_Close()
  8955 ms  0xe8f fd:0x7f2dd21d97c0
           /* TID 0xe87 */
  8955 ms  0xe87 PK11_Encrypt()
  8955 ms  0xe87 symkey:0x7f2de4ec1780
  8956 ms  SECKEY_ECParamsToKeySize()
  8956 ms  0xe87 ret:0x100
  8956 ms  0xe87 SECKEY_CreateECPrivateKey()
  8956 ms  0xe87 cx:0x7f2df053e428
  8956 ms     | 0xe87 EC_ValidatePublicKey()
  8958 ms     | 0xe87 ret:0x0
  8958 ms  0xe87 ret:0x7f2de2d1f820::7f2de2d1f820  40 37 15 d2                                      @7..
  8958 ms  0xe87 PK11_PubDeriveWithKDF()
  8958 ms  0xe87 seckey:0x7f2de2d1f820
  8958 ms     | 0xe87 EC_ValidatePublicKey()
  8959 ms     | 0xe87 ret:0x0
  8961 ms  0xe87 ret:0x7f2de4ec1700
  8961 ms  0xe87 PK11_DeriveWithFlags()
  8961 ms  0xe87 basekey:0x7f2de4ec1700
  8961 ms     | 0xe87 PK11_DeriveWithTemplate()
  8961 ms  0xe87 ret:0x7f2de4735d80
  8961 ms  0xe87 PK11_Derive()
  8961 ms  0xe87 basekey:0x7f2de4735d80
  8961 ms     | 0xe87 PK11_DeriveWithTemplate()
  8961 ms  0xe87 ret:0x7f2de4e7ef80
  8961 ms  0xe87 SECKEY_DestroyPrivateKey()
  8961 ms  0xe87 privk:0x7f2de2d1f820::7f2de2d1f820  40 37 15 d2                                      @7..
  8961 ms  0xe87 privk:0x7f2de2d1f820::7f2de2d1f820  e5 e5 e5 e5                                      ....
  8961 ms  0xe87 PK11_Encrypt()
  8961 ms  0xe87 symkey:0x7f2de4e7fd00
  8970 ms  0xe87 SSL_AuthCertificateComplete()
  8970 ms  0xe87 fd:0x7f2de431a520
  8970 ms  0xe87 err:0x0
  8970 ms  0xe87 PK11_Encrypt()
  8970 ms  0xe87 symkey:0x7f2de4e7fd00
           /* TID 0xe8f */
  9130 ms  0xe8f PR_Close()
  9130 ms  0xe8f fd:0x7f2de2da0b80
           /* TID 0xe87 */
  9141 ms  0xe87 SECKEY_DestroyPrivateKey()
  9141 ms  0xe87 privk:0x7f2de93af820::7f2de93af820  00 8b da e2                                      ....
  9141 ms  0xe87 privk:0x7f2de93af820::7f2de93af820  e5 e5 e5 e5                                      ....
  9141 ms  0xe87 SECKEY_DestroyPrivateKey()
  9141 ms  0xe87 privk:0x7f2de93a6020::7f2de93a6020  f0 36 15 d2                                      .6..
  9141 ms  0xe87 privk:0x7f2de93a6020::7f2de93a6020  e5 e5 e5 e5                                      ....
  9141 ms  0xe87 PR_Close()
  9141 ms  0xe87 fd:0x7f2de42b27c0
  9141 ms     | 0xe87 PK11_Encrypt()
  9141 ms     | 0xe87 symkey:0x7f2de4ec1780
           /* TID 0xe8f */
  9142 ms  0xe8f PR_Close()
  9142 ms  0xe8f fd:0x7f2de2da0b80
           /* TID 0xe87 */
  9155 ms  0xe87 SECKEY_DestroyPrivateKey()
  9155 ms  0xe87 privk:0x7f2de93c6820::7f2de93c6820  00 01 e7 e2                                      ....
  9155 ms  0xe87 privk:0x7f2de93c6820::7f2de93c6820  e5 e5 e5 e5                                      ....
  9155 ms  0xe87 SECKEY_DestroyPrivateKey()
  9155 ms  0xe87 privk:0x7f2de93c4020::7f2de93c4020  e0 8c da e2                                      ....
  9155 ms  0xe87 privk:0x7f2de93c4020::7f2de93c4020  e5 e5 e5 e5                                      ....
  9155 ms  0xe87 PR_Close()
  9155 ms  0xe87 fd:0x7f2de431a520
  9155 ms     | 0xe87 PK11_Encrypt()
  9155 ms     | 0xe87 symkey:0x7f2de4e7fd00
  9326 ms  0xe87 PK11_Encrypt()
  9326 ms  0xe87 symkey:0x7f2dd21e9a80
  9327 ms  0xe87 PK11_Encrypt()
  9327 ms  0xe87 symkey:0x7f2dd21e9a80
  9328 ms  0xe87 PK11_Encrypt()
  9328 ms  0xe87 symkey:0x7f2dd21e9a80
  9329 ms  0xe87 PK11_Encrypt()
  9329 ms  0xe87 symkey:0x7f2dd21e9a80
  9333 ms  0xe87 PK11_Encrypt()
  9333 ms  0xe87 symkey:0x7f2dd21e9a80
  9334 ms  0xe87 PK11_Encrypt()
  9334 ms  0xe87 symkey:0x7f2dd21e9a80
  9335 ms  0xe87 PK11_Encrypt()
  9335 ms  0xe87 symkey:0x7f2dd21e9a80
  9336 ms  0xe87 PK11_Encrypt()
  9336 ms  0xe87 symkey:0x7f2dd21e9a80
  9336 ms  0xe87 PK11_Encrypt()
  9336 ms  0xe87 symkey:0x7f2dd21e9a80
  9338 ms  0xe87 PK11_Encrypt()
  9338 ms  0xe87 symkey:0x7f2dd21e9a80
  9339 ms  0xe87 PK11_Encrypt()
  9339 ms  0xe87 symkey:0x7f2dd21e9a80
  9340 ms  0xe87 PK11_Encrypt()
  9340 ms  0xe87 symkey:0x7f2de2dab000
  9341 ms  0xe87 PK11_Encrypt()
  9341 ms  0xe87 symkey:0x7f2dd21e9a80
  9342 ms  0xe87 PK11_Encrypt()
  9342 ms  0xe87 symkey:0x7f2de2dab000
  9343 ms  0xe87 PK11_Encrypt()
  9343 ms  0xe87 symkey:0x7f2dd21e9a80
  9344 ms  0xe87 PK11_Encrypt()
  9344 ms  0xe87 symkey:0x7f2dd21e9a80
  9345 ms  0xe87 PK11_Encrypt()
  9345 ms  0xe87 symkey:0x7f2dd21e9a80
  9346 ms  0xe87 PK11_Encrypt()
  9346 ms  0xe87 symkey:0x7f2de2dab000
  9359 ms  0xe87 PK11_Encrypt()
  9359 ms  0xe87 symkey:0x7f2dd21e9a80
  9422 ms  0xe87 PK11_Encrypt()
  9422 ms  0xe87 symkey:0x7f2dd21e9a80
  9425 ms  0xe87 PK11_Encrypt()
  9425 ms  0xe87 symkey:0x7f2dd21e9a80
  9426 ms  0xe87 PK11_Encrypt()
  9426 ms  0xe87 symkey:0x7f2de2dab000
  9427 ms  0xe87 PK11_Encrypt()
  9427 ms  0xe87 symkey:0x7f2dd21e9a80
  9428 ms  0xe87 PK11_Encrypt()
  9428 ms  0xe87 symkey:0x7f2de2dab000
  9429 ms  0xe87 PK11_Encrypt()
  9429 ms  0xe87 symkey:0x7f2dd21e9a80
  9430 ms  0xe87 PK11_Encrypt()
  9430 ms  0xe87 symkey:0x7f2dd21e9a80
  9431 ms  0xe87 PK11_Encrypt()
  9431 ms  0xe87 symkey:0x7f2dd21e9a80
  9432 ms  0xe87 PK11_Encrypt()
  9432 ms  0xe87 symkey:0x7f2dd21e9a80
  9433 ms  0xe87 PK11_Encrypt()
  9433 ms  0xe87 symkey:0x7f2dd21e9a80
  9434 ms  0xe87 PK11_Encrypt()
  9434 ms  0xe87 symkey:0x7f2dd21e9a80
  9434 ms  0xe87 PK11_Encrypt()
  9434 ms  0xe87 symkey:0x7f2dd21e9a80
  9435 ms  0xe87 PK11_Encrypt()
  9435 ms  0xe87 symkey:0x7f2de2dab000
  9441 ms  0xe87 PK11_Encrypt()
  9441 ms  0xe87 symkey:0x7f2dd21e9a80
  9443 ms  0xe87 PK11_Encrypt()
  9443 ms  0xe87 symkey:0x7f2dd21e9a80
  9443 ms  0xe87 PK11_Encrypt()
  9443 ms  0xe87 symkey:0x7f2dd21e9a80
  9444 ms  0xe87 PK11_Encrypt()
  9444 ms  0xe87 symkey:0x7f2dd21e9a80
  9449 ms  0xe87 PK11_Encrypt()
  9449 ms  0xe87 symkey:0x7f2de2dab000
  9450 ms  0xe87 PK11_Encrypt()
  9450 ms  0xe87 symkey:0x7f2de2dab000
  9451 ms  0xe87 PK11_Encrypt()
  9451 ms  0xe87 symkey:0x7f2de2dab000
  9452 ms  0xe87 PK11_Encrypt()
  9452 ms  0xe87 symkey:0x7f2de2dab000
  9453 ms  0xe87 PK11_Encrypt()
  9453 ms  0xe87 symkey:0x7f2dd21e9a80
  9454 ms  0xe87 PK11_Encrypt()
  9454 ms  0xe87 symkey:0x7f2dd21e9a80
  9456 ms  0xe87 PK11_Encrypt()
  9456 ms  0xe87 symkey:0x7f2dd21e9a80
  9457 ms  0xe87 PK11_Encrypt()
  9457 ms  0xe87 symkey:0x7f2dd21e9a80
           /* TID 0xee1 */
  9460 ms  0xee1 PR_Close()
  9460 ms  0xee1 fd:0x7f2de43aca30
           /* TID 0xe87 */
  9462 ms  0xe87 PK11_Encrypt()
  9462 ms  0xe87 symkey:0x7f2dd21e9a80
  9477 ms  0xe87 PK11_Encrypt()
  9477 ms  0xe87 symkey:0x7f2de425ba00
  9478 ms  0xe87 PK11_Encrypt()
  9478 ms  0xe87 symkey:0x7f2de425ba00
  9480 ms  0xe87 PK11_Encrypt()
  9480 ms  0xe87 symkey:0x7f2de425ba00
  9481 ms  0xe87 PK11_Encrypt()
  9481 ms  0xe87 symkey:0x7f2de425ba00
  9482 ms  0xe87 PK11_Encrypt()
  9482 ms  0xe87 symkey:0x7f2de425ba00
  9484 ms  0xe87 PK11_Encrypt()
  9484 ms  0xe87 symkey:0x7f2de425ba00
  9488 ms  0xe87 PK11_Encrypt()
  9488 ms  0xe87 symkey:0x7f2dd21e9a80
           /* TID 0xee1 */
  9501 ms  0xee1 PR_Close()
  9501 ms  0xee1 fd:0x7f2de43aca30
           /* TID 0xf25 */
  9509 ms  0xf25 PR_Close()
  9509 ms  0xf25 fd:0x7f2de8cff130
  9509 ms  0xf25 PR_Close()
  9509 ms  0xf25 fd:0x7f2de8cff130
           /* TID 0xe94 */
  9517 ms  0xe94 PR_Close()
  9517 ms  0xe94 fd:0x7f2de8cff160
           /* TID 0xe87 */
  9525 ms  0xe87 SSL_ImportFD()
  9525 ms  0xe87 ret:0x7f2de8c5cb20
  9525 ms  0xe87 SSL_AuthCertificateHook()
  9525 ms  0xe87 fd:0x7f2de8c5cb20
  9525 ms  0xe87 ret:0x0
  9525 ms  0xe87 PR_Connect()
  9525 ms  0xe87 fd:0x7f2de8c5cb20
           /* TID 0xe8f */
  9543 ms  0xe8f PR_Close()
  9543 ms  0xe8f fd:0x7f2de36c5670
  9543 ms  0xe8f PR_Close()
  9543 ms  0xe8f fd:0x7f2de8cff910
           /* TID 0xe93 */
  9549 ms  0xe93 PR_Close()
  9549 ms  0xe93 fd:0x7f2de9336c40
           /* TID 0xe8f */
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de36c5670
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de8cff910
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de8f343a0
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de8f34400
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de8f34670
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de8f349a0
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de8f34a00
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de8f34d30
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de8f34d90
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de8ff92e0
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de90fe040
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de90fe0a0
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de90fe100
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de90fe160
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de90fe1c0
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de90fe220
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de90fe2b0
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de90fe340
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de90fe3a0
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de90fe430
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de90fe4c0
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de90fe520
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de90fe5b0
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de90fe640
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de90fe6a0
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de90fe7f0
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de9202040
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de92020a0
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de9202100
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de9202190
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de9202250
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de92022e0
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de9202370
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de92023d0
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de9202430
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de9202580
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de92027c0
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de9202b20
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de9202c40
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de9202d30
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de9202dc0
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de9202eb0
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de9202f10
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de9202f70
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de9213040
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de9213160
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de9213220
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de9213280
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de92132e0
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de9213370
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de9213430
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de92134f0
  9555 ms  0xe8f PR_Close()
  9555 ms  0xe8f fd:0x7f2de92135b0
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de92137f0
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de92139d0
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9213fd0
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de92430d0
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9243190
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de92431f0
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9243370
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9243700
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9243880
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de92439d0
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9243ca0
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9243f70
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9284940
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de92849a0
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9284a00
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9284a90
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9284b20
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9284bb0
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9284c40
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9284cd0
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9284eb0
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9284f10
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9284fa0
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9336190
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de4777ac0
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9336670
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9336c70
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9336d60
  9556 ms  0xe8f PR_Close()
  9556 ms  0xe8f fd:0x7f2de9385070
           /* TID 0xe87 */
  9587 ms  0xe87 PK11_Encrypt()
  9587 ms  0xe87 symkey:0x7f2dd2120180
  9626 ms  0xe87 PK11_Encrypt()
  9626 ms  0xe87 symkey:0x7f2dd2120180
           /* TID 0xe8f */
  9627 ms  0xe8f PR_Close()
  9627 ms  0xe8f fd:0x7f2de36c5670
           /* TID 0xe87 */
  9634 ms  0xe87 SSL_ImportFD()
  9634 ms  0xe87 ret:0x7f2de6175160
  9634 ms  0xe87 SSL_AuthCertificateHook()
  9634 ms  0xe87 fd:0x7f2de6175160
  9634 ms  0xe87 ret:0x0
  9635 ms  0xe87 PK11_Encrypt()
  9635 ms  0xe87 symkey:0x7f2de2dab000
  9635 ms  0xe87 PR_Connect()
  9635 ms  0xe87 fd:0x7f2de6175160
  9635 ms  0xe87 SSL_ImportFD()
  9635 ms  0xe87 ret:0x7f2de4777250
  9635 ms  0xe87 SSL_AuthCertificateHook()
  9635 ms  0xe87 fd:0x7f2de4777250
  9635 ms  0xe87 ret:0x0
  9635 ms  0xe87 PR_Connect()
  9635 ms  0xe87 fd:0x7f2de4777250
  9636 ms  0xe87 PK11_Encrypt()
  9636 ms  0xe87 symkey:0x7f2de2dab000
  9641 ms  0xe87 SSL_ImportFD()
  9641 ms  0xe87 ret:0x7f2de61755e0
  9641 ms  0xe87 SSL_AuthCertificateHook()
  9641 ms  0xe87 fd:0x7f2de61755e0
  9641 ms  0xe87 ret:0x0
  9642 ms  0xe87 PK11_Encrypt()
  9642 ms  0xe87 symkey:0x7f2de2dab000
  9642 ms  0xe87 PR_Connect()
  9642 ms  0xe87 fd:0x7f2de61755e0
           /* TID 0xe94 */
  9653 ms  0xe94 PR_Close()
  9653 ms  0xe94 fd:0x7f2de36d9160
           /* TID 0xe8f */
  9687 ms  0xe8f PR_Close()
  9687 ms  0xe8f fd:0x7f2de7d4eaf0
  9688 ms  0xe8f PR_Close()
  9688 ms  0xe8f fd:0x7f2de36c5670
           /* TID 0xe87 */
  9693 ms  0xe87 PK11_Encrypt()
  9693 ms  0xe87 symkey:0x7f2dd2120180
           /* TID 0xe8f */
  9708 ms  0xe8f PR_Close()
  9708 ms  0xe8f fd:0x7f2de2edddc0
           /* TID 0xe87 */
  9719 ms  0xe87 SECKEY_CreateECPrivateKey()
  9719 ms  0xe87 cx:0x7f2de2ef2b28
  9719 ms     | 0xe87 EC_ValidatePublicKey()
  9719 ms     | 0xe87 ret:0x0
  9719 ms  0xe87 ret:0x7f2dec05b020::7f2dec05b020  b0 ba 31 e4                                      ..1.
  9719 ms  0xe87 SECKEY_CreateECPrivateKey()
  9719 ms  0xe87 cx:0x7f2de2ef2b28
  9720 ms     | 0xe87 EC_ValidatePublicKey()
  9721 ms     | 0xe87 ret:0x0
  9721 ms  0xe87 ret:0x7f2dec05e820::7f2dec05e820  70 39 3b e4                                      p9;.
  9742 ms  0xe87 PK11_Encrypt()
  9742 ms  0xe87 symkey:0x7f2dd2120180
           /* TID 0xe8f */
  9743 ms  0xe8f PR_Close()
  9743 ms  0xe8f fd:0x7f2de36d9160
  9748 ms  0xe8f PR_Close()
  9748 ms  0xe8f fd:0x7f2de36d9160
           /* TID 0xe94 */
  9764 ms  0xe94 PR_Close()
  9764 ms  0xe94 fd:0x7f2de2e2dbe0
           /* TID 0xe87 */
  9830 ms  0xe87 SECKEY_CreateECPrivateKey()
  9830 ms  0xe87 cx:0x7f2de2ef2e68
  9830 ms     | 0xe87 EC_ValidatePublicKey()
  9830 ms     | 0xe87 ret:0x0
  9830 ms  0xe87 ret:0x7f2dec061020::7f2dec061020  20 64 28 e4                                       d(.
  9830 ms  0xe87 SECKEY_CreateECPrivateKey()
  9830 ms  0xe87 cx:0x7f2de2ef2e68
  9831 ms     | 0xe87 EC_ValidatePublicKey()
  9832 ms     | 0xe87 ret:0x0
  9832 ms  0xe87 ret:0x7f2decd8d020::7f2decd8d020  00 bb 31 e4                                      ..1.
  9833 ms  0xe87 SECKEY_CreateECPrivateKey()
  9833 ms  0xe87 cx:0x7f2de2ef2cc8
  9833 ms     | 0xe87 EC_ValidatePublicKey()
  9833 ms     | 0xe87 ret:0x0
  9833 ms  0xe87 ret:0x7f2decd96020::7f2decd96020  f0 3b 3b e4                                      .;;.
  9833 ms  0xe87 SECKEY_CreateECPrivateKey()
  9833 ms  0xe87 cx:0x7f2de2ef2cc8
  9834 ms     | 0xe87 EC_ValidatePublicKey()
  9835 ms     | 0xe87 ret:0x0
  9835 ms  0xe87 ret:0x7f2decd9a820::7f2decd9a820  10 f5 72 e4                                      ..r.
  9843 ms  0xe87 SECKEY_CreateECPrivateKey()
  9843 ms  0xe87 cx:0x7f2ded1f12c8
  9844 ms     | 0xe87 EC_ValidatePublicKey()
  9844 ms     | 0xe87 ret:0x0
  9844 ms  0xe87 ret:0x7f2decd9e020::7f2decd9e020  a0 f6 72 e4                                      ..r.
  9844 ms  0xe87 SECKEY_CreateECPrivateKey()
  9844 ms  0xe87 cx:0x7f2ded1f12c8
  9844 ms     | 0xe87 EC_ValidatePublicKey()
  9846 ms     | 0xe87 ret:0x0
  9846 ms  0xe87 ret:0x7f2decda1820::7f2decda1820  f0 51 74 e4                                      .Qt.
           /* TID 0xe8f */
  9854 ms  0xe8f PR_Close()
  9854 ms  0xe8f fd:0x7f2de42b25b0
  9895 ms  0xe8f PR_Close()
  9895 ms  0xe8f fd:0x7f2de2e2de20
  9895 ms  0xe8f PR_Close()
  9895 ms  0xe8f fd:0x7f2de618c040
  9896 ms  0xe8f PR_Close()
  9896 ms  0xe8f fd:0x7f2de2e2de20
  9897 ms  0xe8f PR_Close()
  9897 ms  0xe8f fd:0x7f2de2e2de20
  9899 ms  0xe8f PR_Close()
  9899 ms  0xe8f fd:0x7f2de2e2de20
  9899 ms  0xe8f PR_Close()
  9899 ms  0xe8f fd:0x7f2de431abe0
           /* TID 0xe94 */
  9908 ms  0xe94 PR_Close()
  9908 ms  0xe94 fd:0x7f2de7d7f070
           /* TID 0xe87 */
  9917 ms  SECKEY_ECParamsToKeySize()
  9917 ms  0xe87 ret:0x100
  9917 ms  0xe87 SECKEY_CreateECPrivateKey()
  9917 ms  0xe87 cx:0x7f2de2ef2b28
  9918 ms     | 0xe87 EC_ValidatePublicKey()
  9919 ms     | 0xe87 ret:0x0
  9919 ms  0xe87 ret:0x7f2ded1d9820::7f2ded1d9820  80 53 74 e4                                      .St.
  9919 ms  0xe87 PK11_PubDeriveWithKDF()
  9919 ms  0xe87 seckey:0x7f2ded1d9820
  9919 ms     | 0xe87 EC_ValidatePublicKey()
  9933 ms     | 0xe87 ret:0x0
  9936 ms  0xe87 ret:0x7f2de4e7ef80
  9936 ms  0xe87 PK11_DeriveWithFlags()
  9936 ms  0xe87 basekey:0x7f2de4e7ef80
  9936 ms     | 0xe87 PK11_DeriveWithTemplate()
  9936 ms  0xe87 ret:0x7f2de4735d80
  9936 ms  0xe87 PK11_Derive()
  9936 ms  0xe87 basekey:0x7f2de4735d80
  9936 ms     | 0xe87 PK11_DeriveWithTemplate()
  9936 ms  0xe87 ret:0x7f2de4e7fc80
  9936 ms  0xe87 SECKEY_DestroyPrivateKey()
  9936 ms  0xe87 privk:0x7f2ded1d9820::7f2ded1d9820  80 53 74 e4                                      .St.
  9936 ms  0xe87 privk:0x7f2ded1d9820::7f2ded1d9820  e5 e5 e5 e5                                      ....
  9936 ms  0xe87 PK11_Encrypt()
  9936 ms  0xe87 symkey:0x7f2de4ec0580
  9936 ms  0xe87 SSL_AuthCertificateComplete()
  9936 ms  0xe87 fd:0x7f2de8c5cb20
  9936 ms  0xe87 err:0x0
  9937 ms  0xe87 PK11_Encrypt()
  9937 ms  0xe87 symkey:0x7f2de4ec0580
  9937 ms  0xe87 PK11_Encrypt()
  9937 ms  0xe87 symkey:0x7f2de4ec0580
           /* TID 0xe8f */
  9941 ms  0xe8f PR_Close()
  9941 ms  0xe8f fd:0x7f2de2edddc0
           /* TID 0xe87 */
  9960 ms  0xe87 SSL_ImportFD()
  9960 ms  0xe87 ret:0x7f2de42b2400
  9960 ms  0xe87 SSL_AuthCertificateHook()
  9960 ms  0xe87 fd:0x7f2de42b2400
  9960 ms  0xe87 ret:0x0
  9960 ms  0xe87 PR_Connect()
  9960 ms  0xe87 fd:0x7f2de42b2400
 10028 ms  SECKEY_ECParamsToKeySize()
 10028 ms  0xe87 ret:0x100
 10028 ms  0xe87 SECKEY_CreateECPrivateKey()
 10028 ms  0xe87 cx:0x7f2de2ef2e68
 10029 ms     | 0xe87 EC_ValidatePublicKey()
 10030 ms     | 0xe87 ret:0x0
 10030 ms  0xe87 ret:0x7f2ded1db020::7f2ded1db020  c0 54 74 e4                                      .Tt.
 10030 ms  0xe87 PK11_PubDeriveWithKDF()
 10030 ms  0xe87 seckey:0x7f2ded1db020
 10030 ms     | 0xe87 EC_ValidatePublicKey()
 10038 ms     | 0xe87 ret:0x0
 10040 ms  0xe87 ret:0x7f2de4e7ef80
 10040 ms  0xe87 PK11_DeriveWithFlags()
 10040 ms  0xe87 basekey:0x7f2de4e7ef80
 10040 ms     | 0xe87 PK11_DeriveWithTemplate()
 10040 ms  0xe87 ret:0x7f2de4e7fc00
 10040 ms  0xe87 PK11_Derive()
 10040 ms  0xe87 basekey:0x7f2de4e7fc00
 10040 ms     | 0xe87 PK11_DeriveWithTemplate()
 10040 ms  0xe87 ret:0x7f2de4ec1700
 10040 ms  0xe87 SECKEY_DestroyPrivateKey()
 10040 ms  0xe87 privk:0x7f2ded1db020::7f2ded1db020  c0 54 74 e4                                      .Tt.
 10040 ms  0xe87 privk:0x7f2ded1db020::7f2ded1db020  e5 e5 e5 e5                                      ....
 10040 ms  0xe87 PK11_Encrypt()
 10040 ms  0xe87 symkey:0x7f2de4ec1880
 10042 ms  0xe87 SSL_AuthCertificateComplete()
 10042 ms  0xe87 fd:0x7f2de4777250
 10042 ms  0xe87 err:0x0
 10042 ms  0xe87 PK11_Encrypt()
 10042 ms  0xe87 symkey:0x7f2de4ec1880
 10043 ms  SECKEY_ECParamsToKeySize()
 10043 ms  0xe87 ret:0x100
 10044 ms  0xe87 SECKEY_CreateECPrivateKey()
 10044 ms  0xe87 cx:0x7f2de2ef2cc8
 10044 ms     | 0xe87 EC_ValidatePublicKey()
 10046 ms     | 0xe87 ret:0x0
 10046 ms  0xe87 ret:0x7f2ded1dc820::7f2ded1dc820  b0 55 74 e4                                      .Ut.
 10046 ms  0xe87 PK11_PubDeriveWithKDF()
 10046 ms  0xe87 seckey:0x7f2ded1dc820
 10046 ms     | 0xe87 EC_ValidatePublicKey()
 10052 ms     | 0xe87 ret:0x0
 10054 ms  0xe87 ret:0x7f2de4e7ef80
 10054 ms  0xe87 PK11_DeriveWithFlags()
 10054 ms  0xe87 basekey:0x7f2de4e7ef80
 10054 ms     | 0xe87 PK11_DeriveWithTemplate()
 10059 ms  0xe87 ret:0x7f2de4e7ef00
 10059 ms  0xe87 PK11_Derive()
 10059 ms  0xe87 basekey:0x7f2de4e7ef00
 10059 ms     | 0xe87 PK11_DeriveWithTemplate()
 10059 ms  0xe87 ret:0x7f2de4735e00
 10059 ms  0xe87 SECKEY_DestroyPrivateKey()
 10059 ms  0xe87 privk:0x7f2ded1dc820::7f2ded1dc820  b0 55 74 e4                                      .Ut.
 10059 ms  0xe87 privk:0x7f2ded1dc820::7f2ded1dc820  e5 e5 e5 e5                                      ....
 10059 ms  0xe87 PK11_Encrypt()
 10059 ms  0xe87 symkey:0x7f2de4e7f300
 10060 ms  SECKEY_ECParamsToKeySize()
 10060 ms  0xe87 ret:0x100
 10060 ms  0xe87 SECKEY_CreateECPrivateKey()
 10060 ms  0xe87 cx:0x7f2ded1f12c8
 10061 ms     | 0xe87 EC_ValidatePublicKey()
 10062 ms     | 0xe87 ret:0x0
 10062 ms  0xe87 ret:0x7f2ded1dd020::7f2ded1dd020  50 56 74 e4                                      PVt.
 10062 ms  0xe87 PK11_PubDeriveWithKDF()
 10062 ms  0xe87 seckey:0x7f2ded1dd020
 10062 ms     | 0xe87 EC_ValidatePublicKey()
 10068 ms     | 0xe87 ret:0x0
 10070 ms  0xe87 ret:0x7f2de4e7ef80
 10070 ms  0xe87 PK11_DeriveWithFlags()
 10070 ms  0xe87 basekey:0x7f2de4e7ef80
 10070 ms     | 0xe87 PK11_DeriveWithTemplate()
 10070 ms  0xe87 ret:0x7f2de4735400
 10070 ms  0xe87 PK11_Derive()
 10070 ms  0xe87 basekey:0x7f2de4735400
 10070 ms     | 0xe87 PK11_DeriveWithTemplate()
 10070 ms  0xe87 ret:0x7f2de4ac1200
 10070 ms  0xe87 SECKEY_DestroyPrivateKey()
 10070 ms  0xe87 privk:0x7f2ded1dd020::7f2ded1dd020  50 56 74 e4                                      PVt.
 10070 ms  0xe87 privk:0x7f2ded1dd020::7f2ded1dd020  e5 e5 e5 e5                                      ....
 10070 ms  0xe87 PK11_Encrypt()
 10070 ms  0xe87 symkey:0x7f2de4aff180
 10075 ms  0xe87 SSL_AuthCertificateComplete()
 10075 ms  0xe87 fd:0x7f2de6175160
 10075 ms  0xe87 err:0x0
 10075 ms  0xe87 SSL_AuthCertificateComplete()
 10075 ms  0xe87 fd:0x7f2de61755e0
 10075 ms  0xe87 err:0x0
           /* TID 0xe8f */
 10076 ms  0xe8f PR_Close()
 10076 ms  0xe8f fd:0x7f2de36c51f0
 10077 ms  0xe8f PR_Close()
 10077 ms  0xe8f fd:0x7f2de2edde80
 10078 ms  0xe8f PR_Close()
 10078 ms  0xe8f fd:0x7f2de2edde50
 10078 ms  0xe8f PR_Close()
 10078 ms  0xe8f fd:0x7f2de2edde50
 10079 ms  0xe8f PR_Close()
 10079 ms  0xe8f fd:0x7f2de2edde20
 10080 ms  0xe8f PR_Close()
 10080 ms  0xe8f fd:0x7f2de2edde20
 10084 ms  0xe8f PR_Close()
 10084 ms  0xe8f fd:0x7f2de2edde20
 10085 ms  0xe8f PR_Close()
 10085 ms  0xe8f fd:0x7f2de2edde20
 10086 ms  0xe8f PR_Close()
 10086 ms  0xe8f fd:0x7f2de2edde20
 10087 ms  0xe8f PR_Close()
 10087 ms  0xe8f fd:0x7f2de2edde20
 10088 ms  0xe8f PR_Close()
 10088 ms  0xe8f fd:0x7f2de2edde20
           /* TID 0xe87 */
 10088 ms  0xe87 PK11_Encrypt()
 10088 ms  0xe87 symkey:0x7f2de4e7f300
           /* TID 0xe8f */
 10089 ms  0xe8f PR_Close()
 10089 ms  0xe8f fd:0x7f2de2edde20
           /* TID 0xe87 */
 10090 ms  0xe87 PK11_Encrypt()
 10090 ms  0xe87 symkey:0x7f2de4aff180
           /* TID 0xe8f */
 10090 ms  0xe8f PR_Close()
 10090 ms  0xe8f fd:0x7f2de2edde20
 10091 ms  0xe8f PR_Close()
 10091 ms  0xe8f fd:0x7f2de2edde20
 10092 ms  0xe8f PR_Close()
 10092 ms  0xe8f fd:0x7f2de2edde20
 10093 ms  0xe8f PR_Close()
 10093 ms  0xe8f fd:0x7f2de2edde20
 10094 ms  0xe8f PR_Close()
 10094 ms  0xe8f fd:0x7f2de2edde20
 10095 ms  0xe8f PR_Close()
 10095 ms  0xe8f fd:0x7f2de2edde20
 10096 ms  0xe8f PR_Close()
 10096 ms  0xe8f fd:0x7f2de2edde20
 10099 ms  0xe8f PR_Close()
 10099 ms  0xe8f fd:0x7f2de2edde20
 10100 ms  0xe8f PR_Close()
 10100 ms  0xe8f fd:0x7f2de2edde20
 10101 ms  0xe8f PR_Close()
 10101 ms  0xe8f fd:0x7f2de2edde20
 10102 ms  0xe8f PR_Close()
 10102 ms  0xe8f fd:0x7f2de2edde20
 10103 ms  0xe8f PR_Close()
 10103 ms  0xe8f fd:0x7f2de2edde20
           /* TID 0xe87 */
 10104 ms  0xe87 SSL_ImportFD()
 10104 ms  0xe87 ret:0x7f2de42b2ac0
 10104 ms  0xe87 SSL_AuthCertificateHook()
 10104 ms  0xe87 fd:0x7f2de42b2ac0
 10104 ms  0xe87 ret:0x0
 10105 ms  0xe87 PK11_Encrypt()
 10105 ms  0xe87 symkey:0x7f2de425ba00
 10105 ms  0xe87 PR_Connect()
 10105 ms  0xe87 fd:0x7f2de42b2ac0
           /* TID 0xe8f */
 10105 ms  0xe8f PR_Close()
 10105 ms  0xe8f fd:0x7f2de2edde20
 10106 ms  0xe8f PR_Close()
 10106 ms  0xe8f fd:0x7f2de2edde20
 10109 ms  0xe8f PR_Close()
 10109 ms  0xe8f fd:0x7f2de2edde20
 10110 ms  0xe8f PR_Close()
 10110 ms  0xe8f fd:0x7f2de2edde20
 10111 ms  0xe8f PR_Close()
 10111 ms  0xe8f fd:0x7f2de2edde20
 10111 ms  0xe8f PR_Close()
 10111 ms  0xe8f fd:0x7f2de2edde20
 10112 ms  0xe8f PR_Close()
 10112 ms  0xe8f fd:0x7f2de2edde20
 10113 ms  0xe8f PR_Close()
 10113 ms  0xe8f fd:0x7f2de2edde20
 10115 ms  0xe8f PR_Close()
 10115 ms  0xe8f fd:0x7f2de2edde20
 10116 ms  0xe8f PR_Close()
 10116 ms  0xe8f fd:0x7f2de2edde20
 10117 ms  0xe8f PR_Close()
 10117 ms  0xe8f fd:0x7f2de2edde20
 10117 ms  0xe8f PR_Close()
 10117 ms  0xe8f fd:0x7f2de2edde20
 10119 ms  0xe8f PR_Close()
 10119 ms  0xe8f fd:0x7f2de2edde20
 10120 ms  0xe8f PR_Close()
 10120 ms  0xe8f fd:0x7f2de2edd490
           /* TID 0xe87 */
 10130 ms  0xe87 SECKEY_DestroyPrivateKey()
 10130 ms  0xe87 privk:0x7f2dec05e820::7f2dec05e820  70 39 3b e4                                      p9;.
 10130 ms  0xe87 privk:0x7f2dec05e820::7f2dec05e820  e5 e5 e5 e5                                      ....
 10130 ms  0xe87 SECKEY_DestroyPrivateKey()
 10130 ms  0xe87 privk:0x7f2dec05b020::7f2dec05b020  b0 ba 31 e4                                      ..1.
 10130 ms  0xe87 privk:0x7f2dec05b020::7f2dec05b020  e5 e5 e5 e5                                      ....
 10130 ms  0xe87 PK11_Encrypt()
 10130 ms  0xe87 symkey:0x7f2de4ec0580
           /* TID 0xe8f */
 10134 ms  0xe8f PR_Close()
 10134 ms  0xe8f fd:0x7f2dd21d98e0
           /* TID 0xe87 */
 10141 ms  0xe87 SECKEY_CreateECPrivateKey()
 10141 ms  0xe87 cx:0x7f2ded1f24a8
 10142 ms     | 0xe87 EC_ValidatePublicKey()
 10142 ms     | 0xe87 ret:0x0
 10142 ms  0xe87 ret:0x7f2de2e5d820::7f2de2e5d820  50 8b da e2                                      P...
 10142 ms  0xe87 SECKEY_CreateECPrivateKey()
 10142 ms  0xe87 cx:0x7f2ded1f24a8
 10143 ms     | 0xe87 EC_ValidatePublicKey()
 10144 ms     | 0xe87 ret:0x0
 10144 ms  0xe87 ret:0x7f2de4237020::7f2de4237020  d0 23 e3 e2                                      .#..
 10234 ms  0xe87 SECKEY_DestroyPrivateKey()
 10234 ms  0xe87 privk:0x7f2decd8d020::7f2decd8d020  00 bb 31 e4                                      ..1.
 10234 ms  0xe87 privk:0x7f2decd8d020::7f2decd8d020  e5 e5 e5 e5                                      ....
 10234 ms  0xe87 SECKEY_DestroyPrivateKey()
 10234 ms  0xe87 privk:0x7f2dec061020::7f2dec061020  20 64 28 e4                                       d(.
 10234 ms  0xe87 privk:0x7f2dec061020::7f2dec061020  e5 e5 e5 e5                                      ....
 10235 ms  0xe87 PR_Close()
 10235 ms  0xe87 fd:0x7f2de4777250
 10235 ms     | 0xe87 PK11_Encrypt()
 10235 ms     | 0xe87 symkey:0x7f2de4ec1880
           /* TID 0xe8f */
 10241 ms  0xe8f PR_Close()
 10241 ms  0xe8f fd:0x7f2dd21d98e0
 10241 ms  0xe8f PR_Close()
 10241 ms  0xe8f fd:0x7f2de2e76700
 10241 ms  0xe8f PR_Close()
 10241 ms  0xe8f fd:0x7f2de36d9ac0
 10242 ms  0xe8f PR_Close()
 10242 ms  0xe8f fd:0x7f2de425fc40
 10242 ms  0xe8f PR_Close()
 10242 ms  0xe8f fd:0x7f2de431a430
           /* TID 0xe87 */
 10254 ms  0xe87 SECKEY_DestroyPrivateKey()
 10254 ms  0xe87 privk:0x7f2decd9a820::7f2decd9a820  10 f5 72 e4                                      ..r.
 10254 ms  0xe87 privk:0x7f2decd9a820::7f2decd9a820  e5 e5 e5 e5                                      ....
 10254 ms  0xe87 SECKEY_DestroyPrivateKey()
 10254 ms  0xe87 privk:0x7f2decd96020::7f2decd96020  f0 3b 3b e4                                      .;;.
 10254 ms  0xe87 privk:0x7f2decd96020::7f2decd96020  e5 e5 e5 e5                                      ....
 10254 ms  0xe87 PR_Close()
 10254 ms  0xe87 fd:0x7f2de6175160
 10254 ms     | 0xe87 PK11_Encrypt()
 10254 ms     | 0xe87 symkey:0x7f2de4e7f300
 10264 ms  0xe87 SECKEY_DestroyPrivateKey()
 10264 ms  0xe87 privk:0x7f2decda1820::7f2decda1820  f0 51 74 e4                                      .Qt.
 10264 ms  0xe87 privk:0x7f2decda1820::7f2decda1820  e5 e5 e5 e5                                      ....
 10264 ms  0xe87 SECKEY_DestroyPrivateKey()
 10264 ms  0xe87 privk:0x7f2decd9e020::7f2decd9e020  a0 f6 72 e4                                      ..r.
 10265 ms  0xe87 privk:0x7f2decd9e020::7f2decd9e020  e5 e5 e5 e5                                      ....
 10265 ms  0xe87 PR_Close()
 10265 ms  0xe87 fd:0x7f2de61755e0
 10265 ms     | 0xe87 PK11_Encrypt()
 10265 ms     | 0xe87 symkey:0x7f2de4aff180
           /* TID 0xe8f */
 10290 ms  0xe8f PR_Close()
 10290 ms  0xe8f fd:0x7f2dd21d98e0
 10290 ms  0xe8f PR_Close()
 10290 ms  0xe8f fd:0x7f2de2e2dbe0
           /* TID 0xe87 */
 10299 ms  0xe87 SECKEY_CreateECPrivateKey()
 10299 ms  0xe87 cx:0x7f2df053e768
 10300 ms     | 0xe87 EC_ValidatePublicKey()
 10300 ms     | 0xe87 ret:0x0
 10300 ms  0xe87 ret:0x7f2de2d1b020::7f2de2d1b020  a0 86 da e2                                      ....
 10300 ms  0xe87 SECKEY_CreateECPrivateKey()
 10300 ms  0xe87 cx:0x7f2df053e768
 10300 ms     | 0xe87 EC_ValidatePublicKey()
 10302 ms     | 0xe87 ret:0x0
 10302 ms  0xe87 ret:0x7f2de939e820::7f2de939e820  c0 24 e3 e2                                      .$..
           /* TID 0xe8f */
 10312 ms  0xe8f PR_Close()
 10312 ms  0xe8f fd:0x7f2de2e2d970
           /* TID 0xe87 */
 10327 ms  SECKEY_ECParamsToKeySize()
 10327 ms  0xe87 ret:0x100
 10327 ms  0xe87 SECKEY_CreateECPrivateKey()
 10327 ms  0xe87 cx:0x7f2ded1f24a8
 10328 ms     | 0xe87 EC_ValidatePublicKey()
           /* TID 0xe8f */
 10330 ms  0xe8f PR_Close()
 10330 ms  0xe8f fd:0x7f2de2ec1250
           /* TID 0xe87 */
 10332 ms     | 0xe87 ret:0x0
 10333 ms  0xe87 ret:0x7f2de9799820::7f2de9799820  20 29 e3 e2                                       )..
 10333 ms  0xe87 PK11_PubDeriveWithKDF()
 10333 ms  0xe87 seckey:0x7f2de9799820
 10333 ms     | 0xe87 EC_ValidatePublicKey()
 10334 ms     | 0xe87 ret:0x0
 10336 ms  0xe87 ret:0x7f2de4ac1200
 10336 ms  0xe87 PK11_DeriveWithFlags()
 10336 ms  0xe87 basekey:0x7f2de4ac1200
 10336 ms     | 0xe87 PK11_DeriveWithTemplate()
 10336 ms  0xe87 ret:0x7f2de4735400
 10336 ms  0xe87 PK11_Derive()
 10336 ms  0xe87 basekey:0x7f2de4735400
 10336 ms     | 0xe87 PK11_DeriveWithTemplate()
 10336 ms  0xe87 ret:0x7f2de4735e00
 10336 ms  0xe87 SECKEY_DestroyPrivateKey()
 10336 ms  0xe87 privk:0x7f2de9799820::7f2de9799820  20 29 e3 e2                                       )..
 10336 ms  0xe87 privk:0x7f2de9799820::7f2de9799820  e5 e5 e5 e5                                      ....
 10336 ms  0xe87 PK11_Encrypt()
 10336 ms  0xe87 symkey:0x7f2de4aff300
 10348 ms  0xe87 PK11_Encrypt()
 10348 ms  0xe87 symkey:0x7f2dd21e9a80
 10349 ms  0xe87 PK11_Encrypt()
 10349 ms  0xe87 symkey:0x7f2dd21e9a80
           /* TID 0xe8f */
 10423 ms  0xe8f PR_Close()
 10423 ms  0xe8f fd:0x7f2de36c5ee0
           /* TID 0xee4 */
 10423 ms  0xee4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10423 ms  0xee4 ret:0x0
           /* TID 0xe87 */
 10423 ms  0xe87 SSL_AuthCertificateComplete()
 10423 ms  0xe87 fd:0x7f2de42b2400
 10423 ms  0xe87 err:0x0
 10424 ms  0xe87 PK11_Encrypt()
 10424 ms  0xe87 symkey:0x7f2de4aff300
 10424 ms  0xe87 PK11_Encrypt()
 10424 ms  0xe87 symkey:0x7f2de4aff300
 10497 ms  SECKEY_ECParamsToKeySize()
 10497 ms  0xe87 ret:0x100
 10497 ms  0xe87 SECKEY_CreateECPrivateKey()
 10497 ms  0xe87 cx:0x7f2df053e768
 10498 ms     | 0xe87 EC_ValidatePublicKey()
 10500 ms     | 0xe87 ret:0x0
 10500 ms  0xe87 ret:0x7f2de97ac820::7f2de97ac820  80 f3 4f e3                                      ..O.
 10500 ms  0xe87 PK11_PubDeriveWithKDF()
 10500 ms  0xe87 seckey:0x7f2de97ac820
 10501 ms     | 0xe87 EC_ValidatePublicKey()
 10502 ms     | 0xe87 ret:0x0
 10505 ms  0xe87 ret:0x7f2de4ac1200
 10505 ms  0xe87 PK11_DeriveWithFlags()
 10505 ms  0xe87 basekey:0x7f2de4ac1200
 10505 ms     | 0xe87 PK11_DeriveWithTemplate()
 10505 ms  0xe87 ret:0x7f2de4e7ef00
 10505 ms  0xe87 PK11_Derive()
 10505 ms  0xe87 basekey:0x7f2de4e7ef00
 10505 ms     | 0xe87 PK11_DeriveWithTemplate()
 10505 ms  0xe87 ret:0x7f2de4ec1700
 10505 ms  0xe87 SECKEY_DestroyPrivateKey()
 10505 ms  0xe87 privk:0x7f2de97ac820::7f2de97ac820  80 f3 4f e3                                      ..O.
 10506 ms  0xe87 privk:0x7f2de97ac820::7f2de97ac820  e5 e5 e5 e5                                      ....
 10506 ms  0xe87 PK11_Encrypt()
 10506 ms  0xe87 symkey:0x7f2de4e7f780
 10513 ms  0xe87 SSL_AuthCertificateComplete()
 10513 ms  0xe87 fd:0x7f2de42b2ac0
 10513 ms  0xe87 err:0x0
           /* TID 0xe8f */
 10513 ms  0xe8f PR_Close()
 10513 ms  0xe8f fd:0x7f2de2ec3f10
           /* TID 0xe87 */
 10514 ms  0xe87 PK11_Encrypt()
 10514 ms  0xe87 symkey:0x7f2de4e7f780
           /* TID 0xe8f */
 10517 ms  0xe8f PR_Close()
 10517 ms  0xe8f fd:0x7f2de2edddc0
           /* TID 0xe87 */
 10517 ms  0xe87 SECKEY_DestroyPrivateKey()
 10517 ms  0xe87 privk:0x7f2de4237020::7f2de4237020  d0 23 e3 e2                                      .#..
 10517 ms  0xe87 privk:0x7f2de4237020::7f2de4237020  e5 e5 e5 e5                                      ....
 10518 ms  0xe87 SECKEY_DestroyPrivateKey()
 10518 ms  0xe87 privk:0x7f2de2e5d820::7f2de2e5d820  50 8b da e2                                      P...
 10518 ms  0xe87 privk:0x7f2de2e5d820::7f2de2e5d820  e5 e5 e5 e5                                      ....
 10518 ms  0xe87 PK11_Encrypt()
 10518 ms  0xe87 symkey:0x7f2de4aff300
           /* TID 0xe8f */
 10543 ms  0xe8f PR_Close()
 10543 ms  0xe8f fd:0x7f2de2edd1f0
           /* TID 0xe87 */
 10592 ms  0xe87 PK11_Encrypt()
 10592 ms  0xe87 symkey:0x7f2dd21e9a80
 10604 ms  0xe87 PK11_Encrypt()
 10604 ms  0xe87 symkey:0x7f2dd21e9a80
 10605 ms  0xe87 PK11_Encrypt()
 10605 ms  0xe87 symkey:0x7f2dd21e9a80
           /* TID 0xe8f */
 10605 ms  0xe8f PR_Close()
 10605 ms  0xe8f fd:0x7f2de613e190
 10674 ms  0xe8f PR_Close()
 10674 ms  0xe8f fd:0x7f2de2edd700
           /* TID 0xe87 */
 10700 ms  0xe87 SECKEY_DestroyPrivateKey()
 10700 ms  0xe87 privk:0x7f2de939e820::7f2de939e820  c0 24 e3 e2                                      .$..
 10700 ms  0xe87 privk:0x7f2de939e820::7f2de939e820  e5 e5 e5 e5                                      ....
 10700 ms  0xe87 SECKEY_DestroyPrivateKey()
 10700 ms  0xe87 privk:0x7f2de2d1b020::7f2de2d1b020  a0 86 da e2                                      ....
 10700 ms  0xe87 privk:0x7f2de2d1b020::7f2de2d1b020  e5 e5 e5 e5                                      ....
 10700 ms  0xe87 PR_Close()
 10700 ms  0xe87 fd:0x7f2de42b2ac0
 10700 ms     | 0xe87 PK11_Encrypt()
 10700 ms     | 0xe87 symkey:0x7f2de4e7f780
           /* TID 0xe8f */
 10720 ms  0xe8f PR_Close()
 10720 ms  0xe8f fd:0x7f2de2e76e20
 10721 ms  0xe8f PR_Close()
 10721 ms  0xe8f fd:0x7f2de2e76d00
 10722 ms  0xe8f PR_Close()
 10722 ms  0xe8f fd:0x7f2de2e76ca0
           /* TID 0xe87 */
 10731 ms  0xe87 SSL_ImportFD()
 10731 ms  0xe87 ret:0x7f2de618ce50
 10731 ms  0xe87 SSL_AuthCertificateHook()
 10731 ms  0xe87 fd:0x7f2de618ce50
 10731 ms  0xe87 ret:0x0
 10731 ms  0xe87 PR_Connect()
 10731 ms  0xe87 fd:0x7f2de618ce50
 10732 ms  0xe87 PK11_Encrypt()
 10732 ms  0xe87 symkey:0x7f2de4aff300
 10739 ms  0xe87 SSL_ImportFD()
 10739 ms  0xe87 ret:0x7f2de6175a90
 10739 ms  0xe87 SSL_AuthCertificateHook()
 10739 ms  0xe87 fd:0x7f2de6175a90
 10739 ms  0xe87 ret:0x0
 10741 ms  0xe87 PR_Connect()
 10741 ms  0xe87 fd:0x7f2de6175a90
           /* TID 0xe8f */
 10743 ms  0xe8f PR_Close()
 10743 ms  0xe8f fd:0x7f2de2edddc0
           /* TID 0xe87 */
 10766 ms  0xe87 SECKEY_CreateECPrivateKey()
 10766 ms  0xe87 cx:0x7f2df053eaa8
 10767 ms     | 0xe87 EC_ValidatePublicKey()
 10767 ms     | 0xe87 ret:0x0
 10767 ms  0xe87 ret:0x7f2de93a6020::7f2de93a6020  60 8f da e2                                      `...
 10767 ms  0xe87 SECKEY_CreateECPrivateKey()
 10767 ms  0xe87 cx:0x7f2df053eaa8
 10767 ms     | 0xe87 EC_ValidatePublicKey()
 10769 ms     | 0xe87 ret:0x0
 10769 ms  0xe87 ret:0x7f2de97a2820::7f2de97a2820  10 25 e3 e2                                      .%..
 10773 ms  0xe87 SECKEY_CreateECPrivateKey()
 10773 ms  0xe87 cx:0x7f2df053e768
 10773 ms     | 0xe87 EC_ValidatePublicKey()
 10773 ms     | 0xe87 ret:0x0
 10773 ms  0xe87 ret:0x7f2de97aa020::7f2de97aa020  40 0c e7 e2                                      @...
 10773 ms  0xe87 SECKEY_CreateECPrivateKey()
 10773 ms  0xe87 cx:0x7f2df053e768
 10774 ms     | 0xe87 EC_ValidatePublicKey()
 10775 ms     | 0xe87 ret:0x0
 10775 ms  0xe87 ret:0x7f2de97bd820::7f2de97bd820  b0 f0 4f e3                                      ..O.
           /* TID 0xf21 */
 10810 ms  0xf21 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10810 ms  0xf21 ret:0x0
           /* TID 0xe87 */
 10812 ms  SECKEY_ECParamsToKeySize()
 10812 ms  0xe87 ret:0xff
 10812 ms  0xe87 SECKEY_CreateECPrivateKey()
 10812 ms  0xe87 cx:0x7f2df053eaa8
 10812 ms     | 0xe87 EC_ValidatePublicKey()
 10812 ms     | 0xe87 ret:0x0
 10812 ms  0xe87 ret:0x7f2decd8d020::7f2decd8d020  10 cf 2c e4                                      ..,.
 10812 ms  0xe87 PK11_PubDeriveWithKDF()
 10812 ms  0xe87 seckey:0x7f2decd8d020
 10812 ms     | 0xe87 EC_ValidatePublicKey()
 10812 ms     | 0xe87 ret:0x0
 10813 ms  0xe87 ret:0x7f2de4ec1700
 10813 ms  0xe87 PK11_DeriveWithFlags()
 10813 ms  0xe87 basekey:0x7f2de4ec1700
 10813 ms     | 0xe87 PK11_DeriveWithTemplate()
 10813 ms  0xe87 ret:0x7f2de4e7ef00
 10813 ms  0xe87 PK11_Derive()
 10813 ms  0xe87 basekey:0x7f2de4e7ef00
 10813 ms     | 0xe87 PK11_DeriveWithTemplate()
 10813 ms  0xe87 ret:0x7f2de4ac1200
 10813 ms  0xe87 SECKEY_DestroyPrivateKey()
 10813 ms  0xe87 privk:0x7f2decd8d020::7f2decd8d020  10 cf 2c e4                                      ..,.
 10813 ms  0xe87 privk:0x7f2decd8d020::7f2decd8d020  e5 e5 e5 e5                                      ....
 10813 ms  0xe87 PK11_Encrypt()
 10813 ms  0xe87 symkey:0x7f2de4e7fb80
 10817 ms  0xe87 SSL_AuthCertificateComplete()
 10817 ms  0xe87 fd:0x7f2de6175a90
 10817 ms  0xe87 err:0x0
 10817 ms  0xe87 PK11_Encrypt()
 10817 ms  0xe87 symkey:0x7f2de4e7fb80
 10817 ms  0xe87 PK11_Encrypt()
 10817 ms  0xe87 symkey:0x7f2de4e7fb80
 10829 ms  0xe87 PK11_Derive()
 10829 ms  0xe87 basekey:0x7f2de4ec1700
 10829 ms     | 0xe87 PK11_DeriveWithTemplate()
 10829 ms  0xe87 ret:0x7f2de4e7fc00
 10829 ms  0xe87 PK11_PubDeriveWithKDF()
 10829 ms  0xe87 seckey:0x7f2de97aa020
 10829 ms     | 0xe87 EC_ValidatePublicKey()
 10829 ms     | 0xe87 ret:0x0
 10829 ms  0xe87 ret:0x7f2de4ec1700
 10829 ms  SECKEY_ECParamsToKeySize()
 10829 ms  0xe87 ret:0xff
 10830 ms  0xe87 PK11_DeriveWithFlags()
 10830 ms  0xe87 basekey:0x7f2de4e7fc00
 10830 ms     | 0xe87 PK11_DeriveWithTemplate()
 10830 ms  0xe87 ret:0x7f2de4e7ef80
 10830 ms  0xe87 PK11_Derive()
 10830 ms  0xe87 basekey:0x7f2de4ec1700
 10830 ms     | 0xe87 PK11_DeriveWithTemplate()
 10830 ms  0xe87 ret:0x7f2de4ac1180
 10830 ms  0xe87 PK11_DeriveWithFlags()
 10830 ms  0xe87 basekey:0x7f2de4ac1180
 10830 ms     | 0xe87 PK11_DeriveWithTemplate()
 10830 ms  0xe87 ret:0x7f2de4e7fc00
 10830 ms  0xe87 PK11_DeriveWithFlags()
 10830 ms  0xe87 basekey:0x7f2de4ac1180
 10830 ms     | 0xe87 PK11_DeriveWithTemplate()
 10830 ms  0xe87 ret:0x7f2de4ec1700
 10830 ms  0xe87 PK11_DeriveWithFlags()
 10830 ms  0xe87 basekey:0x7f2de4ac1180
 10830 ms     | 0xe87 PK11_DeriveWithTemplate()
 10830 ms  0xe87 ret:0x7f2de4e7ef80
 10830 ms  0xe87 PK11_Derive()
 10830 ms  0xe87 basekey:0x7f2de43b1a00
 10830 ms     | 0xe87 PK11_DeriveWithTemplate()
 10830 ms  0xe87 ret:0x7f2de43b1980
 10830 ms  0xe87 PK11_DeriveWithFlags()
 10830 ms  0xe87 basekey:0x7f2de4ec1700
 10830 ms     | 0xe87 PK11_DeriveWithTemplate()
 10830 ms  0xe87 ret:0x7f2de4ac1180
 10830 ms  0xe87 PK11_DeriveWithFlags()
 10830 ms  0xe87 basekey:0x7f2de4ec1700
 10830 ms     | 0xe87 PK11_DeriveWithTemplate()
 10830 ms  0xe87 ret:0x7f2de4e7ef80
 10833 ms  SECKEY_ECParamsToKeySize()
 10833 ms  0xe87 ret:0x100
 10833 ms  SECKEY_ECParamsToBasePointOrderLen()
 10833 ms  0xe87 ret:0x100
 10833 ms  SECKEY_ECParamsToBasePointOrderLen()
 10833 ms  0xe87 ret:0x100
 10833 ms  0xe87 EC_ValidatePublicKey()
 10834 ms  0xe87 ret:0x0
 10836 ms  0xe87 PK11_DeriveWithFlags()
 10836 ms  0xe87 basekey:0x7f2de4ec1700
 10836 ms     | 0xe87 PK11_DeriveWithTemplate()
 10836 ms  0xe87 ret:0x7f2de4e7ef80
 10839 ms  0xe87 SECKEY_DestroyPrivateKey()
 10839 ms  0xe87 privk:0x7f2de97a2820::7f2de97a2820  10 25 e3 e2                                      .%..
 10839 ms  0xe87 privk:0x7f2de97a2820::7f2de97a2820  e5 e5 e5 e5                                      ....
 10839 ms  0xe87 SECKEY_DestroyPrivateKey()
 10839 ms  0xe87 privk:0x7f2de93a6020::7f2de93a6020  60 8f da e2                                      `...
 10839 ms  0xe87 privk:0x7f2de93a6020::7f2de93a6020  e5 e5 e5 e5                                      ....
 10839 ms  0xe87 PK11_Encrypt()
 10839 ms  0xe87 symkey:0x7f2de4e7fb80
           /* TID 0xe8f */
 10869 ms  0xe8f PR_Close()
 10869 ms  0xe8f fd:0x7f2de2e76340
 10873 ms  0xe8f PR_Close()
 10873 ms  0xe8f fd:0x7f2de2e76340
 10874 ms  0xe8f PR_Close()
 10874 ms  0xe8f fd:0x7f2de2e76340
 10879 ms  0xe8f PR_Close()
 10879 ms  0xe8f fd:0x7f2de2e76340
 10881 ms  0xe8f PR_Close()
 10881 ms  0xe8f fd:0x7f2de2e76340
 10882 ms  0xe8f PR_Close()
 10882 ms  0xe8f fd:0x7f2de2e76340
 10891 ms  0xe8f PR_Close()
 10891 ms  0xe8f fd:0x7f2de43ac0a0
 10921 ms  0xe8f PR_Close()
 10921 ms  0xe8f fd:0x7f2de431ab20
 10929 ms  0xe8f PR_Close()
 10929 ms  0xe8f fd:0x7f2de2e76340
 10933 ms  0xe8f PR_Close()
 10933 ms  0xe8f fd:0x7f2de2e2d4f0
 10980 ms  0xe8f PR_Close()
 10980 ms  0xe8f fd:0x7f2dd2185970
           /* TID 0xf23 */
 10980 ms  0xf23 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10980 ms  0xf23 ret:0x0
           /* TID 0xe87 */
 10981 ms  0xe87 SSL_AuthCertificateComplete()
 10981 ms  0xe87 fd:0x7f2de618ce50
 10981 ms  0xe87 err:0x0
 10981 ms     | 0xe87 PK11_DeriveWithFlags()
 10981 ms     | 0xe87 basekey:0x7f2de43b1980
 10981 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 10981 ms     | 0xe87 ret:0x7f2de4e7ef80
 10981 ms     | 0xe87 PK11_DeriveWithFlags()
 10981 ms     | 0xe87 basekey:0x7f2de43b1980
 10981 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 10981 ms     | 0xe87 ret:0x7f2de43b1a00
 10981 ms     | 0xe87 PK11_DeriveWithFlags()
 10981 ms     | 0xe87 basekey:0x7f2de43b1980
 10981 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 10981 ms     | 0xe87 ret:0x7f2de424ec00
 10981 ms     | 0xe87 PK11_DeriveWithFlags()
 10981 ms     | 0xe87 basekey:0x7f2de4e7fc00
 10981 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 10981 ms     | 0xe87 ret:0x7f2de2e6ce00
 10981 ms     | 0xe87 PK11_DeriveWithFlags()
 10981 ms     | 0xe87 basekey:0x7f2de4e7fc00
 10981 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 10981 ms     | 0xe87 ret:0x7f2dd21ea400
 10981 ms     | 0xe87 PK11_DeriveWithFlags()
 10981 ms     | 0xe87 basekey:0x7f2de43b1a00
 10981 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 10981 ms     | 0xe87 ret:0x7f2dd21ea400
 10981 ms     | 0xe87 PK11_DeriveWithFlags()
 10981 ms     | 0xe87 basekey:0x7f2de43b1a00
 10981 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 10981 ms     | 0xe87 ret:0x7f2dd2120f80
 10981 ms     | 0xe87 PK11_DeriveWithFlags()
 10981 ms     | 0xe87 basekey:0x7f2de4e7fc00
 10981 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 10981 ms     | 0xe87 ret:0x7f2de4ac1180
 10981 ms     | 0xe87 PK11_Encrypt()
 10981 ms     | 0xe87 symkey:0x7f2de2e6ce00
 10981 ms     | 0xe87 PK11_DeriveWithFlags()
 10981 ms     | 0xe87 basekey:0x7f2de4e7ef80
 10981 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 10981 ms     | 0xe87 ret:0x7f2de4ac1180
 10981 ms     | 0xe87 PK11_DeriveWithFlags()
 10981 ms     | 0xe87 basekey:0x7f2de4e7ef80
 10981 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 10981 ms     | 0xe87 ret:0x7f2dd2120f80
 10981 ms     | 0xe87 PK11_DeriveWithFlags()
 10981 ms     | 0xe87 basekey:0x7f2de43b1980
 10981 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 10981 ms     | 0xe87 ret:0x7f2de2e6ce00
 10981 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 10981 ms     | 0xe87 privk:0x7f2de97bd820::7f2de97bd820  b0 f0 4f e3                                      ..O.
 10981 ms     | 0xe87 privk:0x7f2de97bd820::7f2de97bd820  e5 e5 e5 e5                                      ....
 10982 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 10982 ms     | 0xe87 privk:0x7f2de97aa020::7f2de97aa020  40 0c e7 e2                                      @...
 10982 ms     | 0xe87 privk:0x7f2de97aa020::7f2de97aa020  e5 e5 e5 e5                                      ....
 10982 ms  0xe87 PK11_Encrypt()
 10982 ms  0xe87 symkey:0x7f2de4ac1180
 10982 ms  0xe87 PK11_Encrypt()
 10982 ms  0xe87 symkey:0x7f2de4ac1180
 11019 ms  0xe87 PK11_DeriveWithFlags()
 11019 ms  0xe87 basekey:0x7f2de2e6ce00
 11019 ms     | 0xe87 PK11_DeriveWithTemplate()
 11019 ms  0xe87 ret:0x7f2de4ec1700
 11019 ms  0xe87 PK11_DeriveWithFlags()
 11019 ms  0xe87 basekey:0x7f2de2e6ce00
 11019 ms     | 0xe87 PK11_DeriveWithTemplate()
 11019 ms  0xe87 ret:0x7f2de4ec1700
 11019 ms  0xe87 PK11_Encrypt()
 11019 ms  0xe87 symkey:0x7f2de4ac1180
           /* TID 0xe8f */
 11067 ms  0xe8f PR_Close()
 11067 ms  0xe8f fd:0x7f2dd2185a00
 11072 ms  0xe8f PR_Close()
 11072 ms  0xe8f fd:0x7f2dd2185a00
 11076 ms  0xe8f PR_Close()
 11076 ms  0xe8f fd:0x7f2dd2185a00
 11080 ms  0xe8f PR_Close()
 11080 ms  0xe8f fd:0x7f2dd2185a00
 11083 ms  0xe8f PR_Close()
 11083 ms  0xe8f fd:0x7f2dd2185a00
           /* TID 0xe87 */
 11097 ms  0xe87 PK11_Encrypt()
 11097 ms  0xe87 symkey:0x7f2de4ac1180
           /* TID 0xe8f */
 11098 ms  0xe8f PR_Close()
 11098 ms  0xe8f fd:0x7f2dd2185a00
 11100 ms  0xe8f PR_Close()
 11100 ms  0xe8f fd:0x7f2dd2185a00
 11101 ms  0xe8f PR_Close()
 11101 ms  0xe8f fd:0x7f2dd2185a00
           /* TID 0xe87 */
 11107 ms  0xe87 PK11_Encrypt()
 11107 ms  0xe87 symkey:0x7f2dd21e9a80
 11108 ms  0xe87 PK11_Encrypt()
 11108 ms  0xe87 symkey:0x7f2dd21e9a80
 11108 ms  0xe87 SSL_ImportFD()
 11108 ms  0xe87 ret:0x7f2de36c50a0
 11108 ms  0xe87 SSL_AuthCertificateHook()
 11108 ms  0xe87 fd:0x7f2de36c50a0
 11108 ms  0xe87 ret:0x0
 11108 ms  0xe87 PR_Connect()
 11108 ms  0xe87 fd:0x7f2de36c50a0
 11108 ms  0xe87 SSL_ImportFD()
 11108 ms  0xe87 ret:0x7f2de431a190
 11108 ms  0xe87 SSL_AuthCertificateHook()
 11108 ms  0xe87 fd:0x7f2de431a190
 11108 ms  0xe87 ret:0x0
 11108 ms  0xe87 PR_Connect()
 11108 ms  0xe87 fd:0x7f2de431a190
 11112 ms  0xe87 SSL_ImportFD()
 11112 ms  0xe87 ret:0x7f2de43aceb0
 11112 ms  0xe87 SSL_AuthCertificateHook()
 11112 ms  0xe87 fd:0x7f2de43aceb0
 11112 ms  0xe87 ret:0x0
 11112 ms  0xe87 PR_Connect()
 11112 ms  0xe87 fd:0x7f2de43aceb0
 11113 ms  0xe87 SSL_ImportFD()
 11113 ms  0xe87 ret:0x7f2de47894f0
 11113 ms  0xe87 SSL_AuthCertificateHook()
 11113 ms  0xe87 fd:0x7f2de47894f0
 11113 ms  0xe87 ret:0x0
 11113 ms  0xe87 PR_Connect()
 11113 ms  0xe87 fd:0x7f2de47894f0
 11113 ms  0xe87 SSL_ImportFD()
 11113 ms  0xe87 ret:0x7f2de61750a0
 11113 ms  0xe87 SSL_AuthCertificateHook()
 11113 ms  0xe87 fd:0x7f2de61750a0
 11113 ms  0xe87 ret:0x0
 11113 ms  0xe87 PR_Connect()
 11113 ms  0xe87 fd:0x7f2de61750a0
 11113 ms  0xe87 SSL_ImportFD()
 11113 ms  0xe87 ret:0x7f2de6175d30
 11113 ms  0xe87 SSL_AuthCertificateHook()
 11113 ms  0xe87 fd:0x7f2de6175d30
 11113 ms  0xe87 ret:0x0
 11113 ms  0xe87 PR_Connect()
 11113 ms  0xe87 fd:0x7f2de6175d30
 11138 ms  0xe87 SECKEY_CreateECPrivateKey()
 11138 ms  0xe87 cx:0x7f2df053f128
 11138 ms     | 0xe87 EC_ValidatePublicKey()
 11138 ms     | 0xe87 ret:0x0
 11138 ms  0xe87 ret:0x7f2dd1fbf820::7f2dd1fbf820  60 55 0c d2                                      `U..
 11139 ms  0xe87 SECKEY_CreateECPrivateKey()
 11139 ms  0xe87 cx:0x7f2df053f128
 11139 ms     | 0xe87 EC_ValidatePublicKey()
 11141 ms     | 0xe87 ret:0x0
 11141 ms  0xe87 ret:0x7f2dd1fd0020::7f2dd1fd0020  f0 86 da e2                                      ....
 11146 ms  0xe87 SECKEY_CreateECPrivateKey()
 11146 ms  0xe87 cx:0x7f2df053ede8
 11146 ms     | 0xe87 EC_ValidatePublicKey()
 11146 ms     | 0xe87 ret:0x0
 11146 ms  0xe87 ret:0x7f2dd1fd3820::7f2dd1fd3820  b0 8a da e2                                      ....
 11146 ms  0xe87 SECKEY_CreateECPrivateKey()
 11146 ms  0xe87 cx:0x7f2df053ede8
 11147 ms     | 0xe87 EC_ValidatePublicKey()
 11149 ms     | 0xe87 ret:0x0
 11149 ms  0xe87 ret:0x7f2de2d15020::7f2de2d15020  b0 20 e3 e2                                      . ..
 11150 ms  0xe87 SECKEY_CreateECPrivateKey()
 11150 ms  0xe87 cx:0x7f2df053ef88
 11151 ms     | 0xe87 EC_ValidatePublicKey()
 11151 ms     | 0xe87 ret:0x0
 11151 ms  0xe87 ret:0x7f2de2d1e820::7f2de2d1e820  f0 21 e3 e2                                      .!..
 11151 ms  0xe87 SECKEY_CreateECPrivateKey()
 11151 ms  0xe87 cx:0x7f2df053ef88
 11151 ms     | 0xe87 EC_ValidatePublicKey()
 11153 ms     | 0xe87 ret:0x0
 11153 ms  0xe87 ret:0x7f2de2d21820::7f2de2d21820  f0 26 e3 e2                                      .&..
 11163 ms  0xe87 SECKEY_CreateECPrivateKey()
 11163 ms  0xe87 cx:0x7f2df053f468
 11164 ms     | 0xe87 EC_ValidatePublicKey()
 11164 ms     | 0xe87 ret:0x0
 11164 ms  0xe87 ret:0x7f2de2e40820::7f2de2e40820  60 2a e3 e2                                      `*..
 11164 ms  0xe87 SECKEY_CreateECPrivateKey()
 11164 ms  0xe87 cx:0x7f2df053f468
 11165 ms     | 0xe87 EC_ValidatePublicKey()
 11173 ms     | 0xe87 ret:0x0
 11173 ms  0xe87 ret:0x7f2de2e42820::7f2de2e42820  40 02 e7 e2                                      @...
 11178 ms  0xe87 SECKEY_CreateECPrivateKey()
 11178 ms  0xe87 cx:0x7f2df053f608
 11178 ms     | 0xe87 EC_ValidatePublicKey()
 11178 ms     | 0xe87 ret:0x0
 11178 ms  0xe87 ret:0x7f2de2e49020::7f2de2e49020  70 0e e7 e2                                      p...
 11178 ms  0xe87 SECKEY_CreateECPrivateKey()
 11178 ms  0xe87 cx:0x7f2df053f608
 11179 ms     | 0xe87 EC_ValidatePublicKey()
 11180 ms     | 0xe87 ret:0x0
 11180 ms  0xe87 ret:0x7f2de2e4c020::7f2de2e4c020  a0 c1 ec e2                                      ....
 11183 ms  0xe87 SECKEY_CreateECPrivateKey()
 11183 ms  0xe87 cx:0x7f2df053f2c8
 11183 ms     | 0xe87 EC_ValidatePublicKey()
 11183 ms     | 0xe87 ret:0x0
 11183 ms  0xe87 ret:0x7f2de2e54020::7f2de2e54020  60 60 28 e4                                      ``(.
 11184 ms  0xe87 SECKEY_CreateECPrivateKey()
 11184 ms  0xe87 cx:0x7f2df053f2c8
 11184 ms     | 0xe87 EC_ValidatePublicKey()
 11186 ms     | 0xe87 ret:0x0
 11186 ms  0xe87 ret:0x7f2de4225020::7f2de4225020  50 66 28 e4                                      Pf(.
           /* TID 0xee4 */
 11194 ms  0xee4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11195 ms  0xee4 ret:0x0
           /* TID 0xe87 */
 11196 ms  SECKEY_ECParamsToKeySize()
 11196 ms  0xe87 ret:0x100
 11196 ms  0xe87 SECKEY_CreateECPrivateKey()
 11196 ms  0xe87 cx:0x7f2df053f128
 11196 ms     | 0xe87 EC_ValidatePublicKey()
 11200 ms     | 0xe87 ret:0x0
 11200 ms  0xe87 ret:0x7f2de4ee5820::7f2de4ee5820  c0 de 2c e4                                      ..,.
 11200 ms  0xe87 PK11_PubDeriveWithKDF()
 11200 ms  0xe87 seckey:0x7f2de4ee5820
 11200 ms     | 0xe87 EC_ValidatePublicKey()
 11203 ms     | 0xe87 ret:0x0
 11205 ms  0xe87 ret:0x7f2de4ec1700
 11205 ms  0xe87 PK11_DeriveWithFlags()
 11205 ms  0xe87 basekey:0x7f2de4ec1700
 11205 ms     | 0xe87 PK11_DeriveWithTemplate()
 11205 ms  0xe87 ret:0x7f2de4e7fc00
 11205 ms  0xe87 PK11_Derive()
 11205 ms  0xe87 basekey:0x7f2de4e7fc00
 11205 ms     | 0xe87 PK11_DeriveWithTemplate()
 11205 ms  0xe87 ret:0x7f2de43b1980
 11205 ms  0xe87 SECKEY_DestroyPrivateKey()
 11205 ms  0xe87 privk:0x7f2de4ee5820::7f2de4ee5820  c0 de 2c e4                                      ..,.
 11205 ms  0xe87 privk:0x7f2de4ee5820::7f2de4ee5820  e5 e5 e5 e5                                      ....
 11205 ms  0xe87 PK11_Encrypt()
 11205 ms  0xe87 symkey:0x7f2de4ec1980
 11209 ms  0xe87 SSL_ImportFD()
 11209 ms  0xe87 ret:0x7f2de47899d0
 11209 ms  0xe87 SSL_AuthCertificateHook()
 11209 ms  0xe87 fd:0x7f2de47899d0
 11209 ms  0xe87 ret:0x0
 11209 ms  0xe87 PR_Connect()
 11209 ms  0xe87 fd:0x7f2de47899d0
 11210 ms  0xe87 SSL_ImportFD()
 11210 ms  0xe87 ret:0x7f2de47777c0
 11210 ms  0xe87 SSL_AuthCertificateHook()
 11210 ms  0xe87 fd:0x7f2de47777c0
 11210 ms  0xe87 ret:0x0
 11210 ms  0xe87 PR_Connect()
 11210 ms  0xe87 fd:0x7f2de47777c0
 11210 ms  0xe87 SSL_ImportFD()
 11210 ms  0xe87 ret:0x7f2de4ab7040
 11210 ms  0xe87 SSL_AuthCertificateHook()
 11210 ms  0xe87 fd:0x7f2de4ab7040
 11210 ms  0xe87 ret:0x0
 11210 ms  0xe87 PR_Connect()
 11210 ms  0xe87 fd:0x7f2de4ab7040
 11211 ms  0xe87 SSL_AuthCertificateComplete()
 11211 ms  0xe87 fd:0x7f2de43aceb0
 11211 ms  0xe87 err:0x0
 11211 ms  0xe87 PK11_Derive()
 11211 ms  0xe87 basekey:0x7f2de4ec1700
 11211 ms     | 0xe87 PK11_DeriveWithTemplate()
 11211 ms  0xe87 ret:0x7f2dd2120f80
 11211 ms  0xe87 PK11_PubDeriveWithKDF()
 11211 ms  0xe87 seckey:0x7f2dd1fd3820
 11211 ms     | 0xe87 EC_ValidatePublicKey()
 11211 ms     | 0xe87 ret:0x0
 11211 ms  0xe87 ret:0x7f2de4ec1700
 11211 ms  SECKEY_ECParamsToKeySize()
 11211 ms  0xe87 ret:0xff
 11211 ms  0xe87 PK11_DeriveWithFlags()
 11211 ms  0xe87 basekey:0x7f2dd2120f80
 11211 ms     | 0xe87 PK11_DeriveWithTemplate()
 11211 ms  0xe87 ret:0x7f2de2daa800
 11211 ms  0xe87 PK11_Derive()
 11211 ms  0xe87 basekey:0x7f2de4ec1700
 11211 ms     | 0xe87 PK11_DeriveWithTemplate()
 11211 ms  0xe87 ret:0x7f2de2daa700
 11211 ms  0xe87 PK11_DeriveWithFlags()
 11211 ms  0xe87 basekey:0x7f2de2daa700
 11211 ms     | 0xe87 PK11_DeriveWithTemplate()
 11211 ms  0xe87 ret:0x7f2dd2120f80
 11211 ms  0xe87 PK11_DeriveWithFlags()
 11211 ms  0xe87 basekey:0x7f2de2daa700
 11211 ms     | 0xe87 PK11_DeriveWithTemplate()
 11211 ms  0xe87 ret:0x7f2de4ec1700
 11211 ms  0xe87 PK11_DeriveWithFlags()
 11211 ms  0xe87 basekey:0x7f2de2daa700
 11211 ms     | 0xe87 PK11_DeriveWithTemplate()
 11212 ms  0xe87 ret:0x7f2de2daa800
 11212 ms  0xe87 PK11_Derive()
 11212 ms  0xe87 basekey:0x7f2de2daa480
 11212 ms     | 0xe87 PK11_DeriveWithTemplate()
 11212 ms  0xe87 ret:0x7f2de2daa380
 11212 ms  0xe87 PK11_DeriveWithFlags()
 11212 ms  0xe87 basekey:0x7f2de4ec1700
 11212 ms     | 0xe87 PK11_DeriveWithTemplate()
 11212 ms  0xe87 ret:0x7f2de2daa700
 11212 ms  0xe87 PK11_DeriveWithFlags()
 11212 ms  0xe87 basekey:0x7f2de4ec1700
 11212 ms     | 0xe87 PK11_DeriveWithTemplate()
 11212 ms  0xe87 ret:0x7f2de2daa800
 11213 ms  SECKEY_ECParamsToKeySize()
 11213 ms  0xe87 ret:0x100
 11213 ms  SECKEY_ECParamsToBasePointOrderLen()
 11213 ms  0xe87 ret:0x100
 11213 ms  SECKEY_ECParamsToBasePointOrderLen()
 11213 ms  0xe87 ret:0x100
 11213 ms  0xe87 EC_ValidatePublicKey()
 11215 ms  0xe87 ret:0x0
 11217 ms  0xe87 PK11_DeriveWithFlags()
 11217 ms  0xe87 basekey:0x7f2de4ec1700
 11217 ms     | 0xe87 PK11_DeriveWithTemplate()
 11217 ms  0xe87 ret:0x7f2de2daa800
 11217 ms  0xe87 PK11_Derive()
 11217 ms  0xe87 basekey:0x7f2de2daa800
 11217 ms     | 0xe87 PK11_DeriveWithTemplate()
 11217 ms  0xe87 ret:0x7f2de2daa480
 11217 ms  0xe87 PK11_PubDeriveWithKDF()
 11217 ms  0xe87 seckey:0x7f2de2d1e820
 11217 ms     | 0xe87 EC_ValidatePublicKey()
 11217 ms     | 0xe87 ret:0x0
 11217 ms  0xe87 ret:0x7f2de2daa800
 11217 ms  SECKEY_ECParamsToKeySize()
 11217 ms  0xe87 ret:0xff
 11217 ms  0xe87 PK11_DeriveWithFlags()
 11217 ms  0xe87 basekey:0x7f2de2daa480
 11217 ms     | 0xe87 PK11_DeriveWithTemplate()
 11217 ms  0xe87 ret:0x7f2de4734800
 11217 ms  0xe87 PK11_Derive()
 11217 ms  0xe87 basekey:0x7f2de2daa800
 11217 ms     | 0xe87 PK11_DeriveWithTemplate()
 11218 ms  0xe87 ret:0x7f2de4734780
 11218 ms  0xe87 PK11_DeriveWithFlags()
 11218 ms  0xe87 basekey:0x7f2de4734780
 11218 ms     | 0xe87 PK11_DeriveWithTemplate()
 11218 ms  0xe87 ret:0x7f2de2daa480
 11218 ms  0xe87 PK11_DeriveWithFlags()
 11218 ms  0xe87 basekey:0x7f2de4734780
 11218 ms     | 0xe87 PK11_DeriveWithTemplate()
 11218 ms  0xe87 ret:0x7f2de2daa800
 11218 ms  0xe87 PK11_DeriveWithFlags()
 11218 ms  0xe87 basekey:0x7f2de4734780
 11218 ms     | 0xe87 PK11_DeriveWithTemplate()
 11218 ms  0xe87 ret:0x7f2de4734800
 11218 ms  0xe87 PK11_Derive()
 11218 ms  0xe87 basekey:0x7f2de4afe900
 11218 ms     | 0xe87 PK11_DeriveWithTemplate()
 11218 ms  0xe87 ret:0x7f2dd2121100
 11218 ms  0xe87 PK11_DeriveWithFlags()
 11218 ms  0xe87 basekey:0x7f2de2daa800
 11218 ms     | 0xe87 PK11_DeriveWithTemplate()
 11218 ms  0xe87 ret:0x7f2de4734780
 11218 ms  0xe87 PK11_DeriveWithFlags()
 11218 ms  0xe87 basekey:0x7f2de2daa800
 11218 ms     | 0xe87 PK11_DeriveWithTemplate()
 11218 ms  0xe87 ret:0x7f2de4734800
 11218 ms  0xe87 PK11_DeriveWithFlags()
 11218 ms  0xe87 basekey:0x7f2de2daa800
 11218 ms     | 0xe87 PK11_DeriveWithTemplate()
 11218 ms  0xe87 ret:0x7f2de4734800
 11219 ms  0xe87 PK11_Encrypt()
 11219 ms  0xe87 symkey:0x7f2de4ec1980
 11223 ms  0xe87 PK11_Derive()
 11223 ms  0xe87 basekey:0x7f2de4734800
 11223 ms     | 0xe87 PK11_DeriveWithTemplate()
 11223 ms  0xe87 ret:0x7f2de4afe900
 11223 ms  0xe87 PK11_PubDeriveWithKDF()
 11223 ms  0xe87 seckey:0x7f2de2e40820
 11223 ms     | 0xe87 EC_ValidatePublicKey()
 11223 ms     | 0xe87 ret:0x0
 11223 ms  0xe87 ret:0x7f2de4734800
 11223 ms  SECKEY_ECParamsToKeySize()
 11223 ms  0xe87 ret:0xff
 11223 ms  0xe87 PK11_DeriveWithFlags()
 11223 ms  0xe87 basekey:0x7f2de4afe900
 11223 ms     | 0xe87 PK11_DeriveWithTemplate()
 11223 ms  0xe87 ret:0x7f2de2daaf80
 11223 ms  0xe87 PK11_Derive()
 11223 ms  0xe87 basekey:0x7f2de4734800
 11223 ms     | 0xe87 PK11_DeriveWithTemplate()
 11223 ms  0xe87 ret:0x7f2de4afe600
 11223 ms  0xe87 PK11_DeriveWithFlags()
 11223 ms  0xe87 basekey:0x7f2de4afe600
 11223 ms     | 0xe87 PK11_DeriveWithTemplate()
 11223 ms  0xe87 ret:0x7f2de4afe900
 11223 ms  0xe87 PK11_DeriveWithFlags()
 11223 ms  0xe87 basekey:0x7f2de4afe600
 11223 ms     | 0xe87 PK11_DeriveWithTemplate()
 11223 ms  0xe87 ret:0x7f2de4734800
 11223 ms  0xe87 PK11_DeriveWithFlags()
 11223 ms  0xe87 basekey:0x7f2de4afe600
 11223 ms     | 0xe87 PK11_DeriveWithTemplate()
 11223 ms  0xe87 ret:0x7f2de2daaf80
 11223 ms  0xe87 PK11_Derive()
 11223 ms  0xe87 basekey:0x7f2de4aff080
 11223 ms     | 0xe87 PK11_DeriveWithTemplate()
 11223 ms  0xe87 ret:0x7f2de4afe580
 11223 ms  0xe87 PK11_DeriveWithFlags()
 11223 ms  0xe87 basekey:0x7f2de4734800
 11223 ms     | 0xe87 PK11_DeriveWithTemplate()
 11224 ms  0xe87 ret:0x7f2de4afe600
 11224 ms  0xe87 PK11_DeriveWithFlags()
 11224 ms  0xe87 basekey:0x7f2de4734800
 11224 ms     | 0xe87 PK11_DeriveWithTemplate()
 11224 ms  0xe87 ret:0x7f2de2daaf80
 11225 ms  SECKEY_ECParamsToKeySize()
 11225 ms  0xe87 ret:0x100
 11225 ms  SECKEY_ECParamsToBasePointOrderLen()
 11225 ms  0xe87 ret:0x100
 11225 ms  SECKEY_ECParamsToBasePointOrderLen()
 11225 ms  0xe87 ret:0x100
 11225 ms  0xe87 EC_ValidatePublicKey()
 11227 ms  0xe87 ret:0x0
 11228 ms  0xe87 PK11_DeriveWithFlags()
 11228 ms  0xe87 basekey:0x7f2de4734800
 11228 ms     | 0xe87 PK11_DeriveWithTemplate()
 11228 ms  0xe87 ret:0x7f2de2daaf80
 11233 ms  0xe87 SSL_AuthCertificateComplete()
 11233 ms  0xe87 fd:0x7f2de431a190
 11233 ms  0xe87 err:0x0
 11233 ms     | 0xe87 PK11_DeriveWithFlags()
 11233 ms     | 0xe87 basekey:0x7f2dd2121100
 11233 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11233 ms     | 0xe87 ret:0x7f2de2daaf80
 11233 ms     | 0xe87 PK11_DeriveWithFlags()
 11233 ms     | 0xe87 basekey:0x7f2dd2121100
 11233 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11233 ms     | 0xe87 ret:0x7f2de4aff080
 11233 ms     | 0xe87 PK11_DeriveWithFlags()
 11233 ms     | 0xe87 basekey:0x7f2dd2121100
 11233 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11233 ms     | 0xe87 ret:0x7f2de4afe680
 11233 ms     | 0xe87 PK11_DeriveWithFlags()
 11233 ms     | 0xe87 basekey:0x7f2de2daa480
 11233 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11233 ms     | 0xe87 ret:0x7f2de4734600
 11233 ms     | 0xe87 PK11_DeriveWithFlags()
 11233 ms     | 0xe87 basekey:0x7f2de2daa480
 11233 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11233 ms     | 0xe87 ret:0x7f2de47daa00
 11233 ms     | 0xe87 PK11_DeriveWithFlags()
 11233 ms     | 0xe87 basekey:0x7f2de4aff080
 11233 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11233 ms     | 0xe87 ret:0x7f2de47daa00
 11233 ms     | 0xe87 PK11_DeriveWithFlags()
 11233 ms     | 0xe87 basekey:0x7f2de4aff080
 11233 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11233 ms     | 0xe87 ret:0x7f2de43b2c00
 11233 ms     | 0xe87 PK11_DeriveWithFlags()
 11233 ms     | 0xe87 basekey:0x7f2de2daa480
 11233 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11233 ms     | 0xe87 ret:0x7f2de4734780
 11233 ms     | 0xe87 PK11_Encrypt()
 11233 ms     | 0xe87 symkey:0x7f2de4734600
 11234 ms     | 0xe87 PK11_DeriveWithFlags()
 11234 ms     | 0xe87 basekey:0x7f2de2daaf80
 11234 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11234 ms     | 0xe87 ret:0x7f2de4734780
 11234 ms     | 0xe87 PK11_DeriveWithFlags()
 11234 ms     | 0xe87 basekey:0x7f2de2daaf80
 11234 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11234 ms     | 0xe87 ret:0x7f2de43b2c00
 11234 ms     | 0xe87 PK11_DeriveWithFlags()
 11234 ms     | 0xe87 basekey:0x7f2dd2121100
 11234 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11234 ms     | 0xe87 ret:0x7f2de4734600
 11234 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11234 ms     | 0xe87 privk:0x7f2de2d21820::7f2de2d21820  f0 26 e3 e2                                      .&..
 11234 ms     | 0xe87 privk:0x7f2de2d21820::7f2de2d21820  e5 e5 e5 e5                                      ....
 11234 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11234 ms     | 0xe87 privk:0x7f2de2d1e820::7f2de2d1e820  f0 21 e3 e2                                      .!..
 11234 ms     | 0xe87 privk:0x7f2de2d1e820::7f2de2d1e820  e5 e5 e5 e5                                      ....
 11237 ms  0xe87 PK11_Encrypt()
 11237 ms  0xe87 symkey:0x7f2de4734780
 11237 ms  0xe87 PK11_Encrypt()
 11237 ms  0xe87 symkey:0x7f2de4734780
 11238 ms  0xe87 PK11_Derive()
 11238 ms  0xe87 basekey:0x7f2de2daa800
 11238 ms     | 0xe87 PK11_DeriveWithTemplate()
 11238 ms  0xe87 ret:0x7f2de2daa480
 11238 ms  0xe87 PK11_PubDeriveWithKDF()
 11238 ms  0xe87 seckey:0x7f2de2e49020
 11238 ms     | 0xe87 EC_ValidatePublicKey()
 11238 ms     | 0xe87 ret:0x0
 11238 ms  0xe87 ret:0x7f2de2daa800
 11238 ms  SECKEY_ECParamsToKeySize()
 11238 ms  0xe87 ret:0xff
 11238 ms  0xe87 PK11_DeriveWithFlags()
 11238 ms  0xe87 basekey:0x7f2de2daa480
 11238 ms     | 0xe87 PK11_DeriveWithTemplate()
 11238 ms  0xe87 ret:0x7f2dd2121100
 11238 ms  0xe87 PK11_Derive()
 11238 ms  0xe87 basekey:0x7f2de2daa800
 11238 ms     | 0xe87 PK11_DeriveWithTemplate()
 11238 ms  0xe87 ret:0x7f2de43b2c00
 11238 ms  0xe87 PK11_DeriveWithFlags()
 11238 ms  0xe87 basekey:0x7f2de43b2c00
 11238 ms     | 0xe87 PK11_DeriveWithTemplate()
 11238 ms  0xe87 ret:0x7f2de2daa480
 11238 ms  0xe87 PK11_DeriveWithFlags()
 11238 ms  0xe87 basekey:0x7f2de43b2c00
 11238 ms     | 0xe87 PK11_DeriveWithTemplate()
 11238 ms  0xe87 ret:0x7f2de2daa800
 11238 ms  0xe87 PK11_DeriveWithFlags()
 11238 ms  0xe87 basekey:0x7f2de43b2c00
 11238 ms     | 0xe87 PK11_DeriveWithTemplate()
 11238 ms  0xe87 ret:0x7f2dd2121100
 11238 ms  0xe87 PK11_Derive()
 11238 ms  0xe87 basekey:0x7f2de4734700
 11239 ms     | 0xe87 PK11_DeriveWithTemplate()
 11239 ms  0xe87 ret:0x7f2de43b2300
 11239 ms  0xe87 PK11_DeriveWithFlags()
 11239 ms  0xe87 basekey:0x7f2de2daa800
 11239 ms     | 0xe87 PK11_DeriveWithTemplate()
 11239 ms  0xe87 ret:0x7f2de43b2c00
 11239 ms  0xe87 PK11_DeriveWithFlags()
 11239 ms  0xe87 basekey:0x7f2de2daa800
 11239 ms     | 0xe87 PK11_DeriveWithTemplate()
 11239 ms  0xe87 ret:0x7f2dd2121100
 11239 ms  0xe87 PK11_DeriveWithFlags()
 11239 ms  0xe87 basekey:0x7f2de2daa800
 11239 ms     | 0xe87 PK11_DeriveWithTemplate()
 11239 ms  0xe87 ret:0x7f2dd2121100
 11239 ms  0xe87 PR_Close()
 11239 ms  0xe87 fd:0x7f2de47899d0
 11240 ms  0xe87 PK11_Encrypt()
 11240 ms  0xe87 symkey:0x7f2de4734780
 11243 ms  0xe87 SSL_AuthCertificateComplete()
 11243 ms  0xe87 fd:0x7f2de6175d30
 11243 ms  0xe87 err:0x0
 11243 ms     | 0xe87 PK11_DeriveWithFlags()
 11243 ms     | 0xe87 basekey:0x7f2de43b2300
 11243 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11243 ms     | 0xe87 ret:0x7f2dd2121100
 11243 ms     | 0xe87 PK11_DeriveWithFlags()
 11243 ms     | 0xe87 basekey:0x7f2de43b2300
 11243 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11243 ms     | 0xe87 ret:0x7f2de4734700
 11243 ms     | 0xe87 PK11_DeriveWithFlags()
 11243 ms     | 0xe87 basekey:0x7f2de43b2300
 11243 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11243 ms     | 0xe87 ret:0x7f2de43b2780
 11243 ms     | 0xe87 PK11_DeriveWithFlags()
 11243 ms     | 0xe87 basekey:0x7f2de2daa480
 11243 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11243 ms     | 0xe87 ret:0x7f2de43b2280
 11243 ms     | 0xe87 PK11_DeriveWithFlags()
 11243 ms     | 0xe87 basekey:0x7f2de2daa480
 11243 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11243 ms     | 0xe87 ret:0x7f2de43b2580
 11243 ms     | 0xe87 PK11_DeriveWithFlags()
 11243 ms     | 0xe87 basekey:0x7f2de4734700
 11243 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11243 ms     | 0xe87 ret:0x7f2de43b2580
 11243 ms     | 0xe87 PK11_DeriveWithFlags()
 11243 ms     | 0xe87 basekey:0x7f2de4734700
 11243 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11243 ms     | 0xe87 ret:0x7f2de2dabc00
 11243 ms     | 0xe87 PK11_DeriveWithFlags()
 11243 ms     | 0xe87 basekey:0x7f2de2daa480
 11243 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11243 ms     | 0xe87 ret:0x7f2de43b2c00
 11243 ms     | 0xe87 PK11_Encrypt()
 11243 ms     | 0xe87 symkey:0x7f2de43b2280
 11243 ms     | 0xe87 PK11_DeriveWithFlags()
 11243 ms     | 0xe87 basekey:0x7f2dd2121100
 11243 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11243 ms     | 0xe87 ret:0x7f2de43b2c00
 11243 ms     | 0xe87 PK11_DeriveWithFlags()
 11243 ms     | 0xe87 basekey:0x7f2dd2121100
 11243 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11243 ms     | 0xe87 ret:0x7f2de2dabc00
 11243 ms     | 0xe87 PK11_DeriveWithFlags()
 11243 ms     | 0xe87 basekey:0x7f2de43b2300
 11243 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11244 ms     | 0xe87 ret:0x7f2de43b2280
 11244 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11244 ms     | 0xe87 privk:0x7f2de2e4c020::7f2de2e4c020  a0 c1 ec e2                                      ....
 11244 ms     | 0xe87 privk:0x7f2de2e4c020::7f2de2e4c020  e5 e5 e5 e5                                      ....
 11244 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11244 ms     | 0xe87 privk:0x7f2de2e49020::7f2de2e49020  70 0e e7 e2                                      p...
 11244 ms     | 0xe87 privk:0x7f2de2e49020::7f2de2e49020  e5 e5 e5 e5                                      ....
 11244 ms  0xe87 PK11_Encrypt()
 11244 ms  0xe87 symkey:0x7f2de43b2c00
 11253 ms  0xe87 PK11_Encrypt()
 11253 ms  0xe87 symkey:0x7f2de4734780
           /* TID 0xf21 */
 11254 ms  0xf21 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11255 ms  0xf21 ret:0x0
           /* TID 0xe87 */
 11256 ms  0xe87 SECKEY_CreateECPrivateKey()
 11256 ms  0xe87 cx:0x7f2df0540308
 11257 ms     | 0xe87 EC_ValidatePublicKey()
 11257 ms     | 0xe87 ret:0x0
 11257 ms  0xe87 ret:0x7f2de97c1820::7f2de97c1820  20 39 3b e4                                       9;.
 11257 ms  0xe87 SECKEY_CreateECPrivateKey()
 11257 ms  0xe87 cx:0x7f2df0540308
 11259 ms     | 0xe87 EC_ValidatePublicKey()
 11264 ms     | 0xe87 ret:0x0
 11266 ms  0xe87 ret:0x7f2de97a5820::7f2de97a5820  a0 c1 ec e2                                      ....
 11267 ms  0xe87 SSL_AuthCertificateComplete()
 11267 ms  0xe87 fd:0x7f2de47894f0
 11267 ms  0xe87 err:0x0
           /* TID 0xe8f */
 11267 ms  0xe8f PR_Close()
 11267 ms  0xe8f fd:0x7f2de43acd60
           /* TID 0xf23 */
 11267 ms  0xf23 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11268 ms  0xf23 ret:0x0
           /* TID 0xe87 */
 11270 ms  0xe87 SECKEY_DestroyPrivateKey()
 11270 ms  0xe87 privk:0x7f2dd1fd0020::7f2dd1fd0020  f0 86 da e2                                      ....
 11270 ms  0xe87 privk:0x7f2dd1fd0020::7f2dd1fd0020  e5 e5 e5 e5                                      ....
 11270 ms  0xe87 SECKEY_DestroyPrivateKey()
 11270 ms  0xe87 privk:0x7f2dd1fbf820::7f2dd1fbf820  60 55 0c d2                                      `U..
 11271 ms  0xe87 privk:0x7f2dd1fbf820::7f2dd1fbf820  e5 e5 e5 e5                                      ....
           /* TID 0xe8f */
 11273 ms  0xe8f PR_Close()
 11273 ms  0xe8f fd:0x7f2de431ad60
           /* TID 0xe87 */
 11274 ms  0xe87 SSL_AuthCertificateComplete()
 11274 ms  0xe87 fd:0x7f2de61750a0
 11274 ms  0xe87 err:0x0
 11274 ms     | 0xe87 PK11_DeriveWithFlags()
 11274 ms     | 0xe87 basekey:0x7f2de4afe580
 11274 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11274 ms     | 0xe87 ret:0x7f2de2daa800
 11274 ms     | 0xe87 PK11_DeriveWithFlags()
 11274 ms     | 0xe87 basekey:0x7f2de4afe580
 11274 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11274 ms     | 0xe87 ret:0x7f2de2daa480
 11274 ms     | 0xe87 PK11_DeriveWithFlags()
 11274 ms     | 0xe87 basekey:0x7f2de4afe580
 11274 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11274 ms     | 0xe87 ret:0x7f2de43b2300
 11274 ms     | 0xe87 PK11_DeriveWithFlags()
 11274 ms     | 0xe87 basekey:0x7f2de4afe900
 11274 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11274 ms     | 0xe87 ret:0x7f2de2dabc00
 11274 ms     | 0xe87 PK11_DeriveWithFlags()
 11274 ms     | 0xe87 basekey:0x7f2de4afe900
 11274 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11274 ms     | 0xe87 ret:0x7f2de2e6cd00
 11274 ms     | 0xe87 PK11_DeriveWithFlags()
 11274 ms     | 0xe87 basekey:0x7f2de2daa480
 11274 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11274 ms     | 0xe87 ret:0x7f2de2e6cd00
 11274 ms     | 0xe87 PK11_DeriveWithFlags()
 11274 ms     | 0xe87 basekey:0x7f2de2daa480
 11274 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11274 ms     | 0xe87 ret:0x7f2dd21ea500
 11274 ms     | 0xe87 PK11_DeriveWithFlags()
 11274 ms     | 0xe87 basekey:0x7f2de4afe900
 11274 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11274 ms     | 0xe87 ret:0x7f2de4afe600
 11274 ms     | 0xe87 PK11_Encrypt()
 11274 ms     | 0xe87 symkey:0x7f2de2dabc00
 11274 ms     | 0xe87 PK11_DeriveWithFlags()
 11274 ms     | 0xe87 basekey:0x7f2de2daa800
 11274 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11274 ms     | 0xe87 ret:0x7f2de4afe600
 11274 ms     | 0xe87 PK11_DeriveWithFlags()
 11274 ms     | 0xe87 basekey:0x7f2de2daa800
 11274 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11274 ms     | 0xe87 ret:0x7f2dd21ea500
 11274 ms     | 0xe87 PK11_DeriveWithFlags()
 11274 ms     | 0xe87 basekey:0x7f2de4afe580
 11274 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11274 ms     | 0xe87 ret:0x7f2de2dabc00
 11274 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11274 ms     | 0xe87 privk:0x7f2de2e42820::7f2de2e42820  40 02 e7 e2                                      @...
 11274 ms     | 0xe87 privk:0x7f2de2e42820::7f2de2e42820  e5 e5 e5 e5                                      ....
 11275 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11275 ms     | 0xe87 privk:0x7f2de2e40820::7f2de2e40820  60 2a e3 e2                                      `*..
 11275 ms     | 0xe87 privk:0x7f2de2e40820::7f2de2e40820  e5 e5 e5 e5                                      ....
 11275 ms  0xe87 PR_Close()
 11275 ms  0xe87 fd:0x7f2de47777c0
 11275 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11275 ms     | 0xe87 privk:0x7f2de97a5820::7f2de97a5820  a0 c1 ec e2                                      ....
 11275 ms     | 0xe87 privk:0x7f2de97a5820::7f2de97a5820  e5 e5 e5 e5                                      ....
 11275 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11275 ms     | 0xe87 privk:0x7f2de97c1820::7f2de97c1820  20 39 3b e4                                       9;.
 11275 ms     | 0xe87 privk:0x7f2de97c1820::7f2de97c1820  e5 e5 e5 e5                                      ....
 11275 ms  0xe87 PK11_DeriveWithFlags()
 11275 ms  0xe87 basekey:0x7f2de4734600
 11275 ms     | 0xe87 PK11_DeriveWithTemplate()
 11275 ms  0xe87 ret:0x7f2de4734800
 11275 ms  0xe87 PK11_DeriveWithFlags()
 11275 ms  0xe87 basekey:0x7f2de4734600
 11275 ms     | 0xe87 PK11_DeriveWithTemplate()
 11275 ms  0xe87 ret:0x7f2de4734800
 11275 ms  0xe87 PK11_Encrypt()
 11275 ms  0xe87 symkey:0x7f2de4734780
 11279 ms  0xe87 PK11_Encrypt()
 11279 ms  0xe87 symkey:0x7f2de4afe600
 11279 ms  0xe87 PK11_Encrypt()
 11279 ms  0xe87 symkey:0x7f2de4afe600
 11282 ms  0xe87 PK11_DeriveWithFlags()
 11282 ms  0xe87 basekey:0x7f2de43b2280
 11282 ms     | 0xe87 PK11_DeriveWithTemplate()
 11282 ms  0xe87 ret:0x7f2de4734800
 11282 ms  0xe87 PK11_DeriveWithFlags()
 11282 ms  0xe87 basekey:0x7f2de43b2280
 11282 ms     | 0xe87 PK11_DeriveWithTemplate()
 11282 ms  0xe87 ret:0x7f2de4734800
 11282 ms  0xe87 PR_Close()
 11282 ms  0xe87 fd:0x7f2de6175d30
 11282 ms     | 0xe87 PK11_Encrypt()
 11282 ms     | 0xe87 symkey:0x7f2de43b2c00
 11283 ms  0xe87 SECKEY_CreateECPrivateKey()
 11283 ms  0xe87 cx:0x7f2df05404a8
 11283 ms     | 0xe87 EC_ValidatePublicKey()
 11283 ms     | 0xe87 ret:0x0
 11283 ms  0xe87 ret:0x7f2de2d21820::7f2de2d21820  a0 81 da e2                                      ....
 11283 ms  0xe87 SECKEY_CreateECPrivateKey()
 11283 ms  0xe87 cx:0x7f2df05404a8
 11284 ms     | 0xe87 EC_ValidatePublicKey()
 11288 ms     | 0xe87 ret:0x0
 11288 ms  0xe87 ret:0x7f2de2e40820::7f2de2e40820  e0 27 e3 e2                                      .'..
 11291 ms  0xe87 SSL_ImportFD()
 11291 ms  0xe87 ret:0x7f2de4789d90
 11291 ms  0xe87 SSL_AuthCertificateHook()
 11291 ms  0xe87 fd:0x7f2de4789d90
 11291 ms  0xe87 ret:0x0
 11291 ms  0xe87 PR_Connect()
 11291 ms  0xe87 fd:0x7f2de4789d90
 11293 ms  0xe87 SSL_ImportFD()
 11293 ms  0xe87 ret:0x7f2de4ecffd0
 11294 ms  0xe87 SSL_AuthCertificateHook()
 11294 ms  0xe87 fd:0x7f2de4ecffd0
 11294 ms  0xe87 ret:0x0
 11294 ms  0xe87 PR_Connect()
 11294 ms  0xe87 fd:0x7f2de4ecffd0
 11306 ms  SECKEY_ECParamsToKeySize()
 11306 ms  0xe87 ret:0x100
 11306 ms  0xe87 SECKEY_CreateECPrivateKey()
 11306 ms  0xe87 cx:0x7f2df053f2c8
 11307 ms     | 0xe87 EC_ValidatePublicKey()
 11308 ms     | 0xe87 ret:0x0
 11308 ms  0xe87 ret:0x7f2de93cc020::7f2de93cc020  70 0e e7 e2                                      p...
 11308 ms  0xe87 PK11_PubDeriveWithKDF()
 11308 ms  0xe87 seckey:0x7f2de93cc020
 11308 ms     | 0xe87 EC_ValidatePublicKey()
           /* TID 0xe8f */
 11309 ms  0xe8f PR_Close()
 11309 ms  0xe8f fd:0x7f2de2e2d0a0
           /* TID 0xe87 */
 11313 ms     | 0xe87 ret:0x0
 11318 ms  0xe87 ret:0x7f2de43b2780
 11318 ms  0xe87 PK11_DeriveWithFlags()
 11318 ms  0xe87 basekey:0x7f2de43b2780
 11318 ms     | 0xe87 PK11_DeriveWithTemplate()
 11318 ms  0xe87 ret:0x7f2de4734700
 11318 ms  0xe87 PK11_Derive()
 11318 ms  0xe87 basekey:0x7f2de4734700
 11318 ms     | 0xe87 PK11_DeriveWithTemplate()
 11319 ms  0xe87 ret:0x7f2dd2121100
 11319 ms  0xe87 SECKEY_DestroyPrivateKey()
 11319 ms  0xe87 privk:0x7f2de93cc020::7f2de93cc020  70 0e e7 e2                                      p...
 11319 ms  0xe87 privk:0x7f2de93cc020::7f2de93cc020  e5 e5 e5 e5                                      ....
 11319 ms  0xe87 PK11_Encrypt()
 11319 ms  0xe87 symkey:0x7f2de2daa500
 11320 ms  0xe87 PK11_Encrypt()
 11320 ms  0xe87 symkey:0x7f2de2daa500
 11320 ms  0xe87 PK11_DeriveWithFlags()
 11320 ms  0xe87 basekey:0x7f2de2dabc00
 11320 ms     | 0xe87 PK11_DeriveWithTemplate()
 11320 ms  0xe87 ret:0x7f2de43b2780
 11320 ms  0xe87 PK11_Encrypt()
 11320 ms  0xe87 symkey:0x7f2de4afe600
 11322 ms  0xe87 SECKEY_CreateECPrivateKey()
 11322 ms  0xe87 cx:0x7f2df053f608
 11322 ms     | 0xe87 EC_ValidatePublicKey()
 11322 ms     | 0xe87 ret:0x0
 11322 ms  0xe87 ret:0x7f2de4ee8820::7f2de4ee8820  60 25 e3 e2                                      `%..
 11322 ms  0xe87 SECKEY_CreateECPrivateKey()
 11322 ms  0xe87 cx:0x7f2df053f608
 11323 ms     | 0xe87 EC_ValidatePublicKey()
 11324 ms     | 0xe87 ret:0x0
 11324 ms  0xe87 ret:0x7f2de9793820::7f2de9793820  90 b7 31 e4                                      ..1.
 11328 ms  0xe87 SECKEY_CreateECPrivateKey()
 11328 ms  0xe87 cx:0x7f2df0540308
 11328 ms     | 0xe87 EC_ValidatePublicKey()
 11328 ms     | 0xe87 ret:0x0
 11328 ms  0xe87 ret:0x7f2de97a7020::7f2de97a7020  00 bb 31 e4                                      ..1.
 11328 ms  0xe87 SECKEY_CreateECPrivateKey()
 11328 ms  0xe87 cx:0x7f2df0540308
 11329 ms     | 0xe87 EC_ValidatePublicKey()
 11330 ms     | 0xe87 ret:0x0
 11330 ms  0xe87 ret:0x7f2de97c1820::7f2de97c1820  70 39 3b e4                                      p9;.
 11331 ms  0xe87 PK11_Encrypt()
 11331 ms  0xe87 symkey:0x7f2de4734780
 11339 ms  0xe87 PK11_Encrypt()
 11339 ms  0xe87 symkey:0x7f2de4734780
           /* TID 0xee4 */
 11362 ms  0xee4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11363 ms  0xee4 ret:0x0
           /* TID 0xe87 */
 11363 ms  0xe87 SSL_AuthCertificateComplete()
 11363 ms  0xe87 fd:0x7f2de4ab7040
 11363 ms  0xe87 err:0x0
           /* TID 0xe8f */
 11370 ms  0xe8f PR_Close()
 11370 ms  0xe8f fd:0x7f2de90fe1c0
 11373 ms  0xe8f PR_Close()
 11373 ms  0xe8f fd:0x7f2dd2156a90
           /* TID 0xf22 */
 11373 ms  0xf22 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11373 ms  0xf22 ret:0x0
           /* TID 0xe87 */
 11373 ms  0xe87 SSL_AuthCertificateComplete()
 11373 ms  0xe87 fd:0x7f2de36c50a0
 11373 ms  0xe87 err:0x0
 11373 ms     | 0xe87 PK11_DeriveWithFlags()
 11373 ms     | 0xe87 basekey:0x7f2de2daa380
 11373 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11373 ms     | 0xe87 ret:0x7f2de43b2780
 11373 ms     | 0xe87 PK11_DeriveWithFlags()
 11373 ms     | 0xe87 basekey:0x7f2de2daa380
 11373 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11373 ms     | 0xe87 ret:0x7f2de43b2280
 11373 ms     | 0xe87 PK11_DeriveWithFlags()
 11373 ms     | 0xe87 basekey:0x7f2de2daa380
 11373 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11373 ms     | 0xe87 ret:0x7f2de43b2580
 11373 ms     | 0xe87 PK11_DeriveWithFlags()
 11373 ms     | 0xe87 basekey:0x7f2dd2120f80
 11373 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11373 ms     | 0xe87 ret:0x7f2de43b2c00
 11373 ms     | 0xe87 PK11_DeriveWithFlags()
 11373 ms     | 0xe87 basekey:0x7f2dd2120f80
 11373 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11373 ms     | 0xe87 ret:0x7f2de4734800
 11373 ms     | 0xe87 PK11_DeriveWithFlags()
 11373 ms     | 0xe87 basekey:0x7f2de43b2280
 11373 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11373 ms     | 0xe87 ret:0x7f2de4734800
 11374 ms     | 0xe87 PK11_DeriveWithFlags()
 11374 ms     | 0xe87 basekey:0x7f2de43b2280
 11374 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11374 ms     | 0xe87 ret:0x7f2de4afe900
 11374 ms     | 0xe87 PK11_DeriveWithFlags()
 11374 ms     | 0xe87 basekey:0x7f2dd2120f80
 11374 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11374 ms     | 0xe87 ret:0x7f2de2daa700
 11374 ms     | 0xe87 PK11_Encrypt()
 11374 ms     | 0xe87 symkey:0x7f2de43b2c00
 11374 ms     | 0xe87 PK11_DeriveWithFlags()
 11374 ms     | 0xe87 basekey:0x7f2de43b2780
 11374 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11374 ms     | 0xe87 ret:0x7f2de2daa700
 11374 ms     | 0xe87 PK11_DeriveWithFlags()
 11374 ms     | 0xe87 basekey:0x7f2de43b2780
 11374 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11374 ms     | 0xe87 ret:0x7f2de4afe900
 11374 ms     | 0xe87 PK11_DeriveWithFlags()
 11374 ms     | 0xe87 basekey:0x7f2de2daa380
 11374 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11374 ms     | 0xe87 ret:0x7f2de43b2c00
 11374 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11374 ms     | 0xe87 privk:0x7f2de2d15020::7f2de2d15020  b0 20 e3 e2                                      . ..
 11374 ms     | 0xe87 privk:0x7f2de2d15020::7f2de2d15020  e5 e5 e5 e5                                      ....
 11374 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11374 ms     | 0xe87 privk:0x7f2dd1fd3820::7f2dd1fd3820  b0 8a da e2                                      ....
 11374 ms     | 0xe87 privk:0x7f2dd1fd3820::7f2dd1fd3820  e5 e5 e5 e5                                      ....
 11374 ms  0xe87 PK11_Encrypt()
 11374 ms  0xe87 symkey:0x7f2de2daa700
 11374 ms  0xe87 PK11_Encrypt()
 11374 ms  0xe87 symkey:0x7f2de2daa700
           /* TID 0xf21 */
 11376 ms  0xf21 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11376 ms  0xf21 ret:0x0
           /* TID 0xe87 */
 11376 ms  SECKEY_ECParamsToKeySize()
 11376 ms  0xe87 ret:0x100
 11376 ms  0xe87 SECKEY_CreateECPrivateKey()
 11376 ms  0xe87 cx:0x7f2df053f608
 11376 ms     | 0xe87 EC_ValidatePublicKey()
 11378 ms     | 0xe87 ret:0x0
 11378 ms  0xe87 ret:0x7f2de97ce820::7f2de97ce820  30 dd 2c e4                                      0.,.
 11378 ms  0xe87 PK11_PubDeriveWithKDF()
 11378 ms  0xe87 seckey:0x7f2de97ce820
 11378 ms     | 0xe87 EC_ValidatePublicKey()
 11383 ms     | 0xe87 ret:0x0
 11385 ms  0xe87 ret:0x7f2de4ec1700
 11385 ms  0xe87 PK11_DeriveWithFlags()
 11385 ms  0xe87 basekey:0x7f2de4ec1700
 11385 ms     | 0xe87 PK11_DeriveWithTemplate()
 11385 ms  0xe87 ret:0x7f2dd2120f80
 11385 ms  0xe87 PK11_Derive()
 11385 ms  0xe87 basekey:0x7f2dd2120f80
 11385 ms     | 0xe87 PK11_DeriveWithTemplate()
 11385 ms  0xe87 ret:0x7f2de2daa380
 11385 ms  0xe87 SECKEY_DestroyPrivateKey()
 11385 ms  0xe87 privk:0x7f2de97ce820::7f2de97ce820  30 dd 2c e4                                      0.,.
 11385 ms  0xe87 privk:0x7f2de97ce820::7f2de97ce820  e5 e5 e5 e5                                      ....
 11385 ms  0xe87 PK11_Encrypt()
 11385 ms  0xe87 symkey:0x7f2de2daa200
 11385 ms  0xe87 SSL_AuthCertificateComplete()
 11385 ms  0xe87 fd:0x7f2de4789d90
 11385 ms  0xe87 err:0x0
           /* TID 0xe8f */
 11392 ms  0xe8f PR_Close()
 11392 ms  0xe8f fd:0x7f2de90fe160
           /* TID 0xe87 */
 11393 ms  0xe87 SECKEY_DestroyPrivateKey()
 11393 ms  0xe87 privk:0x7f2de4225020::7f2de4225020  50 66 28 e4                                      Pf(.
 11393 ms  0xe87 privk:0x7f2de4225020::7f2de4225020  e5 e5 e5 e5                                      ....
 11393 ms  0xe87 SECKEY_DestroyPrivateKey()
 11393 ms  0xe87 privk:0x7f2de2e54020::7f2de2e54020  60 60 28 e4                                      ``(.
 11393 ms  0xe87 privk:0x7f2de2e54020::7f2de2e54020  e5 e5 e5 e5                                      ....
           /* TID 0xe8f */
 11394 ms  0xe8f PR_Close()
 11394 ms  0xe8f fd:0x7f2de2da0b20
           /* TID 0xe87 */
 11394 ms  0xe87 PK11_Encrypt()
 11394 ms  0xe87 symkey:0x7f2de2daa200
           /* TID 0xf23 */
 11394 ms  0xf23 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11395 ms  0xf23 ret:0x0
           /* TID 0xe87 */
 11395 ms  SECKEY_ECParamsToKeySize()
 11395 ms  0xe87 ret:0x100
 11395 ms  0xe87 SECKEY_CreateECPrivateKey()
 11395 ms  0xe87 cx:0x7f2df0540308
 11395 ms     | 0xe87 EC_ValidatePublicKey()
 11397 ms     | 0xe87 ret:0x0
 11397 ms  0xe87 ret:0x7f2de2e55020::7f2de2e55020  60 60 28 e4                                      ``(.
 11397 ms  0xe87 PK11_PubDeriveWithKDF()
 11397 ms  0xe87 seckey:0x7f2de2e55020
 11397 ms     | 0xe87 EC_ValidatePublicKey()
 11398 ms     | 0xe87 ret:0x0
 11400 ms  0xe87 ret:0x7f2de4ec1700
 11400 ms  0xe87 PK11_DeriveWithFlags()
 11400 ms  0xe87 basekey:0x7f2de4ec1700
 11400 ms     | 0xe87 PK11_DeriveWithTemplate()
 11400 ms  0xe87 ret:0x7f2de4afe900
 11400 ms  0xe87 PK11_Derive()
 11400 ms  0xe87 basekey:0x7f2de4afe900
 11400 ms     | 0xe87 PK11_DeriveWithTemplate()
 11400 ms  0xe87 ret:0x7f2de4afe580
 11400 ms  0xe87 SECKEY_DestroyPrivateKey()
 11400 ms  0xe87 privk:0x7f2de2e55020::7f2de2e55020  60 60 28 e4                                      ``(.
 11400 ms  0xe87 privk:0x7f2de2e55020::7f2de2e55020  e5 e5 e5 e5                                      ....
 11400 ms  0xe87 PK11_Encrypt()
 11400 ms  0xe87 symkey:0x7f2de4735280
 11409 ms  0xe87 PK11_Encrypt()
 11409 ms  0xe87 symkey:0x7f2de4734780
 11409 ms  0xe87 PK11_Encrypt()
 11409 ms  0xe87 symkey:0x7f2de4734780
 11409 ms  0xe87 SSL_AuthCertificateComplete()
 11409 ms  0xe87 fd:0x7f2de4ecffd0
 11409 ms  0xe87 err:0x0
 11409 ms  0xe87 PK11_Encrypt()
 11409 ms  0xe87 symkey:0x7f2de4734780
 11410 ms  0xe87 PK11_Encrypt()
 11410 ms  0xe87 symkey:0x7f2de4735280
 11411 ms  0xe87 PK11_DeriveWithFlags()
 11411 ms  0xe87 basekey:0x7f2de43b2c00
 11411 ms     | 0xe87 PK11_DeriveWithTemplate()
 11411 ms  0xe87 ret:0x7f2de4ec1700
 11411 ms  0xe87 PK11_DeriveWithFlags()
 11411 ms  0xe87 basekey:0x7f2de43b2c00
 11411 ms     | 0xe87 PK11_DeriveWithTemplate()
 11411 ms  0xe87 ret:0x7f2de4ec1700
 11411 ms  0xe87 PK11_Encrypt()
 11411 ms  0xe87 symkey:0x7f2de2daa700
 11427 ms  0xe87 PK11_Encrypt()
 11427 ms  0xe87 symkey:0x7f2de4734780
 11429 ms  0xe87 SSL_ImportFD()
 11429 ms  0xe87 ret:0x7f2de90fe2b0
 11429 ms  0xe87 SSL_AuthCertificateHook()
 11429 ms  0xe87 fd:0x7f2de90fe2b0
 11429 ms  0xe87 ret:0x0
 11429 ms  0xe87 PR_Connect()
 11429 ms  0xe87 fd:0x7f2de90fe2b0
 11432 ms  SECKEY_ECParamsToKeySize()
 11432 ms  0xe87 ret:0x100
 11432 ms  0xe87 SECKEY_CreateECPrivateKey()
 11432 ms  0xe87 cx:0x7f2df05404a8
 11433 ms     | 0xe87 EC_ValidatePublicKey()
 11434 ms     | 0xe87 ret:0x0
 11434 ms  0xe87 ret:0x7f2de939d820::7f2de939d820  b0 65 28 e4                                      .e(.
 11434 ms  0xe87 PK11_PubDeriveWithKDF()
 11434 ms  0xe87 seckey:0x7f2de939d820
 11434 ms     | 0xe87 EC_ValidatePublicKey()
 11436 ms     | 0xe87 ret:0x0
 11437 ms  0xe87 ret:0x7f2de4ec1700
 11437 ms  0xe87 PK11_DeriveWithFlags()
 11437 ms  0xe87 basekey:0x7f2de4ec1700
 11437 ms     | 0xe87 PK11_DeriveWithTemplate()
 11437 ms  0xe87 ret:0x7f2dd21ea500
 11437 ms  0xe87 PK11_Derive()
 11437 ms  0xe87 basekey:0x7f2dd21ea500
 11437 ms     | 0xe87 PK11_DeriveWithTemplate()
 11437 ms  0xe87 ret:0x7f2de4735000
 11437 ms  0xe87 SECKEY_DestroyPrivateKey()
 11437 ms  0xe87 privk:0x7f2de939d820::7f2de939d820  b0 65 28 e4                                      .e(.
 11438 ms  0xe87 privk:0x7f2de939d820::7f2de939d820  e5 e5 e5 e5                                      ....
 11438 ms  0xe87 PK11_Encrypt()
 11438 ms  0xe87 symkey:0x7f2de2daad80
 11443 ms  0xe87 PK11_Encrypt()
 11443 ms  0xe87 symkey:0x7f2de4734780
           /* TID 0xe8f */
 11445 ms  0xe8f PR_Close()
 11445 ms  0xe8f fd:0x7f2de2e76880
           /* TID 0xe87 */
 11445 ms  0xe87 PK11_Encrypt()
 11445 ms  0xe87 symkey:0x7f2de2daad80
 11445 ms  0xe87 SECKEY_DestroyPrivateKey()
 11445 ms  0xe87 privk:0x7f2de9793820::7f2de9793820  90 b7 31 e4                                      ..1.
 11445 ms  0xe87 privk:0x7f2de9793820::7f2de9793820  e5 e5 e5 e5                                      ....
 11445 ms  0xe87 SECKEY_DestroyPrivateKey()
 11445 ms  0xe87 privk:0x7f2de4ee8820::7f2de4ee8820  60 25 e3 e2                                      `%..
 11445 ms  0xe87 privk:0x7f2de4ee8820::7f2de4ee8820  e5 e5 e5 e5                                      ....
           /* TID 0xe8f */
 11447 ms  0xe8f PR_Close()
 11447 ms  0xe8f fd:0x7f2de2e76880
           /* TID 0xe87 */
 11447 ms  0xe87 PR_Close()
 11447 ms  0xe87 fd:0x7f2de4ab7040
 11447 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11447 ms     | 0xe87 privk:0x7f2de2e40820::7f2de2e40820  e0 27 e3 e2                                      .'..
 11448 ms     | 0xe87 privk:0x7f2de2e40820::7f2de2e40820  e5 e5 e5 e5                                      ....
 11448 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11448 ms     | 0xe87 privk:0x7f2de2d21820::7f2de2d21820  a0 81 da e2                                      ....
 11448 ms     | 0xe87 privk:0x7f2de2d21820::7f2de2d21820  e5 e5 e5 e5                                      ....
 11449 ms  0xe87 SSL_ImportFD()
 11449 ms  0xe87 ret:0x7f2de2eddeb0
 11449 ms  0xe87 SSL_AuthCertificateHook()
 11449 ms  0xe87 fd:0x7f2de2eddeb0
 11449 ms  0xe87 ret:0x0
 11449 ms  0xe87 PR_Connect()
 11449 ms  0xe87 fd:0x7f2de2eddeb0
 11451 ms  0xe87 SECKEY_DestroyPrivateKey()
 11451 ms  0xe87 privk:0x7f2de97c1820::7f2de97c1820  70 39 3b e4                                      p9;.
 11451 ms  0xe87 privk:0x7f2de97c1820::7f2de97c1820  e5 e5 e5 e5                                      ....
 11451 ms  0xe87 SECKEY_DestroyPrivateKey()
 11451 ms  0xe87 privk:0x7f2de97a7020::7f2de97a7020  00 bb 31 e4                                      ..1.
 11451 ms  0xe87 privk:0x7f2de97a7020::7f2de97a7020  e5 e5 e5 e5                                      ....
           /* TID 0xe8f */
 11453 ms  0xe8f PR_Close()
 11453 ms  0xe8f fd:0x7f2de43c0be0
           /* TID 0xe87 */
 11453 ms  0xe87 PK11_Encrypt()
 11453 ms  0xe87 symkey:0x7f2de4734780
 11460 ms  0xe87 PK11_Encrypt()
 11460 ms  0xe87 symkey:0x7f2de4734780
 11463 ms  0xe87 SSL_ImportFD()
 11463 ms  0xe87 ret:0x7f2de90fe670
 11463 ms  0xe87 SSL_AuthCertificateHook()
 11463 ms  0xe87 fd:0x7f2de90fe670
 11463 ms  0xe87 ret:0x0
 11463 ms  0xe87 PR_Connect()
 11463 ms  0xe87 fd:0x7f2de90fe670
 11471 ms  0xe87 PK11_Encrypt()
 11471 ms  0xe87 symkey:0x7f2de4afe600
 11476 ms  0xe87 PK11_Encrypt()
 11476 ms  0xe87 symkey:0x7f2de2daa500
 11476 ms  0xe87 SECKEY_CreateECPrivateKey()
 11476 ms  0xe87 cx:0x7f2df053fae8
 11477 ms     | 0xe87 EC_ValidatePublicKey()
 11477 ms     | 0xe87 ret:0x0
 11477 ms  0xe87 ret:0x7f2de4ee8820::7f2de4ee8820  70 2e e3 e2                                      p...
 11477 ms  0xe87 SECKEY_CreateECPrivateKey()
 11477 ms  0xe87 cx:0x7f2df053fae8
 11478 ms     | 0xe87 EC_ValidatePublicKey()
 11479 ms     | 0xe87 ret:0x0
 11479 ms  0xe87 ret:0x7f2de9792820::7f2de9792820  90 0c e7 e2                                      ....
 11485 ms  0xe87 PK11_Encrypt()
 11485 ms  0xe87 symkey:0x7f2de4734780
 11488 ms  0xe87 SSL_ImportFD()
 11488 ms  0xe87 ret:0x7f2de92022e0
 11488 ms  0xe87 SSL_AuthCertificateHook()
 11488 ms  0xe87 fd:0x7f2de92022e0
 11488 ms  0xe87 ret:0x0
 11488 ms  0xe87 PR_Connect()
 11488 ms  0xe87 fd:0x7f2de92022e0
           /* TID 0xe8f */
 11496 ms  0xe8f PR_Close()
 11496 ms  0xe8f fd:0x7f2de2e2d400
           /* TID 0xe87 */
 11497 ms  0xe87 SECKEY_CreateECPrivateKey()
 11497 ms  0xe87 cx:0x7f2df053ffc8
 11497 ms     | 0xe87 EC_ValidatePublicKey()
 11497 ms     | 0xe87 ret:0x0
 11497 ms  0xe87 ret:0x7f2de97a4020::7f2de97a4020  10 2a e3 e2                                      .*..
 11497 ms  0xe87 SECKEY_CreateECPrivateKey()
 11497 ms  0xe87 cx:0x7f2df053ffc8
 11498 ms     | 0xe87 EC_ValidatePublicKey()
 11500 ms     | 0xe87 ret:0x0
 11500 ms  0xe87 ret:0x7f2de97ad020::7f2de97ad020  b0 65 28 e4                                      .e(.
           /* TID 0xe8f */
 11502 ms  0xe8f PR_Close()
 11502 ms  0xe8f fd:0x7f2dd2156c40
           /* TID 0xe87 */
 11502 ms  0xe87 PK11_Encrypt()
 11502 ms  0xe87 symkey:0x7f2de2daa700
 11511 ms  0xe87 SECKEY_CreateECPrivateKey()
 11511 ms  0xe87 cx:0x7f2df05404a8
 11511 ms     | 0xe87 EC_ValidatePublicKey()
 11511 ms     | 0xe87 ret:0x0
 11511 ms  0xe87 ret:0x7f2de97c2820::7f2de97c2820  40 dc 2c e4                                      @.,.
 11511 ms  0xe87 SECKEY_CreateECPrivateKey()
 11511 ms  0xe87 cx:0x7f2df05404a8
 11512 ms     | 0xe87 EC_ValidatePublicKey()
 11514 ms     | 0xe87 ret:0x0
 11514 ms  0xe87 ret:0x7f2de97cf020::7f2de97cf020  c0 29 14 d2                                      .)..
 11519 ms  0xe87 SSL_ImportFD()
 11519 ms  0xe87 ret:0x7f2de9202d30
 11519 ms  0xe87 SSL_AuthCertificateHook()
 11519 ms  0xe87 fd:0x7f2de9202d30
 11519 ms  0xe87 ret:0x0
 11519 ms  0xe87 PR_Connect()
 11519 ms  0xe87 fd:0x7f2de9202d30
 11528 ms  0xe87 PK11_Derive()
 11528 ms  0xe87 basekey:0x7f2de4735000
 11528 ms     | 0xe87 PK11_DeriveWithTemplate()
 11528 ms  0xe87 ret:0x7f2dd21ea500
 11528 ms  0xe87 PK11_PubDeriveWithKDF()
 11528 ms  0xe87 seckey:0x7f2de4ee8820
 11528 ms     | 0xe87 EC_ValidatePublicKey()
 11528 ms     | 0xe87 ret:0x0
 11528 ms  0xe87 ret:0x7f2de4735000
 11528 ms  SECKEY_ECParamsToKeySize()
 11528 ms  0xe87 ret:0xff
 11528 ms  0xe87 PK11_DeriveWithFlags()
 11528 ms  0xe87 basekey:0x7f2dd21ea500
 11528 ms     | 0xe87 PK11_DeriveWithTemplate()
 11529 ms  0xe87 ret:0x7f2de4ec1700
 11529 ms  0xe87 PK11_Derive()
 11529 ms  0xe87 basekey:0x7f2de4735000
 11529 ms     | 0xe87 PK11_DeriveWithTemplate()
 11529 ms  0xe87 ret:0x7f2de2daae00
 11529 ms  0xe87 PK11_DeriveWithFlags()
 11529 ms  0xe87 basekey:0x7f2de2daae00
 11529 ms     | 0xe87 PK11_DeriveWithTemplate()
 11529 ms  0xe87 ret:0x7f2dd21ea500
 11529 ms  0xe87 PK11_DeriveWithFlags()
 11529 ms  0xe87 basekey:0x7f2de2daae00
 11529 ms     | 0xe87 PK11_DeriveWithTemplate()
 11529 ms  0xe87 ret:0x7f2de4735000
 11529 ms  0xe87 PK11_DeriveWithFlags()
 11529 ms  0xe87 basekey:0x7f2de2daae00
 11529 ms     | 0xe87 PK11_DeriveWithTemplate()
 11529 ms  0xe87 ret:0x7f2de4ec1700
 11529 ms  0xe87 PK11_Derive()
 11529 ms  0xe87 basekey:0x7f2de2daad00
 11529 ms     | 0xe87 PK11_DeriveWithTemplate()
 11529 ms  0xe87 ret:0x7f2de2daae80
 11529 ms  0xe87 PK11_DeriveWithFlags()
 11529 ms  0xe87 basekey:0x7f2de4735000
 11529 ms     | 0xe87 PK11_DeriveWithTemplate()
 11529 ms  0xe87 ret:0x7f2de2daae00
 11529 ms  0xe87 PK11_DeriveWithFlags()
 11529 ms  0xe87 basekey:0x7f2de4735000
 11529 ms     | 0xe87 PK11_DeriveWithTemplate()
 11529 ms  0xe87 ret:0x7f2de4ec1700
 11530 ms  SECKEY_ECParamsToKeySize()
 11530 ms  0xe87 ret:0x100
 11530 ms  SECKEY_ECParamsToBasePointOrderLen()
 11530 ms  0xe87 ret:0x100
 11530 ms  SECKEY_ECParamsToBasePointOrderLen()
 11530 ms  0xe87 ret:0x100
 11530 ms  0xe87 EC_ValidatePublicKey()
 11532 ms  0xe87 ret:0x0
 11534 ms  0xe87 PK11_DeriveWithFlags()
 11534 ms  0xe87 basekey:0x7f2de4735000
 11534 ms     | 0xe87 PK11_DeriveWithTemplate()
 11534 ms  0xe87 ret:0x7f2de4ec1700
 11534 ms  0xe87 SSL_AuthCertificateComplete()
 11534 ms  0xe87 fd:0x7f2de90fe2b0
 11534 ms  0xe87 err:0x0
 11534 ms     | 0xe87 PK11_DeriveWithFlags()
 11534 ms     | 0xe87 basekey:0x7f2de2daae80
 11534 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11534 ms     | 0xe87 ret:0x7f2de4ec1700
 11534 ms     | 0xe87 PK11_DeriveWithFlags()
 11534 ms     | 0xe87 basekey:0x7f2de2daae80
 11534 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11534 ms     | 0xe87 ret:0x7f2de2daad00
 11534 ms     | 0xe87 PK11_DeriveWithFlags()
 11534 ms     | 0xe87 basekey:0x7f2de2daae80
 11534 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11534 ms     | 0xe87 ret:0x7f2de2daad80
 11534 ms     | 0xe87 PK11_DeriveWithFlags()
 11534 ms     | 0xe87 basekey:0x7f2dd21ea500
 11534 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11534 ms     | 0xe87 ret:0x7f2de368ae00
 11534 ms     | 0xe87 PK11_DeriveWithFlags()
 11534 ms     | 0xe87 basekey:0x7f2dd21ea500
 11534 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11534 ms     | 0xe87 ret:0x7f2de368b580
 11534 ms     | 0xe87 PK11_DeriveWithFlags()
 11534 ms     | 0xe87 basekey:0x7f2de2daad00
 11534 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11534 ms     | 0xe87 ret:0x7f2de368b580
 11534 ms     | 0xe87 PK11_DeriveWithFlags()
 11534 ms     | 0xe87 basekey:0x7f2de2daad00
 11534 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11534 ms     | 0xe87 ret:0x7f2de368b600
 11534 ms     | 0xe87 PK11_DeriveWithFlags()
 11534 ms     | 0xe87 basekey:0x7f2dd21ea500
 11534 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11535 ms     | 0xe87 ret:0x7f2de2daae00
 11535 ms     | 0xe87 PK11_Encrypt()
 11535 ms     | 0xe87 symkey:0x7f2de368ae00
 11541 ms     | 0xe87 PK11_DeriveWithFlags()
 11541 ms     | 0xe87 basekey:0x7f2de4ec1700
 11541 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11541 ms     | 0xe87 ret:0x7f2de2daae00
 11541 ms     | 0xe87 PK11_DeriveWithFlags()
 11541 ms     | 0xe87 basekey:0x7f2de4ec1700
 11541 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11541 ms     | 0xe87 ret:0x7f2de368b600
 11541 ms     | 0xe87 PK11_DeriveWithFlags()
 11541 ms     | 0xe87 basekey:0x7f2de2daae80
 11541 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11541 ms     | 0xe87 ret:0x7f2de368ae00
 11541 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11541 ms     | 0xe87 privk:0x7f2de9792820::7f2de9792820  90 0c e7 e2                                      ....
 11542 ms     | 0xe87 privk:0x7f2de9792820::7f2de9792820  e5 e5 e5 e5                                      ....
 11542 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11542 ms     | 0xe87 privk:0x7f2de4ee8820::7f2de4ee8820  70 2e e3 e2                                      p...
 11542 ms     | 0xe87 privk:0x7f2de4ee8820::7f2de4ee8820  e5 e5 e5 e5                                      ....
 11544 ms  0xe87 PK11_Encrypt()
 11544 ms  0xe87 symkey:0x7f2de2daae00
 11545 ms  0xe87 PK11_Encrypt()
 11545 ms  0xe87 symkey:0x7f2de2daae00
 11545 ms  0xe87 PK11_Encrypt()
 11545 ms  0xe87 symkey:0x7f2de2daa500
 11547 ms  0xe87 PK11_Derive()
 11547 ms  0xe87 basekey:0x7f2de4735000
 11547 ms     | 0xe87 PK11_DeriveWithTemplate()
 11547 ms  0xe87 ret:0x7f2dd21ea500
 11547 ms  0xe87 PK11_PubDeriveWithKDF()
 11547 ms  0xe87 seckey:0x7f2de97a4020
 11547 ms     | 0xe87 EC_ValidatePublicKey()
 11547 ms     | 0xe87 ret:0x0
 11548 ms  0xe87 ret:0x7f2de4735000
 11548 ms  SECKEY_ECParamsToKeySize()
 11548 ms  0xe87 ret:0xff
 11548 ms  0xe87 PK11_DeriveWithFlags()
 11548 ms  0xe87 basekey:0x7f2dd21ea500
 11548 ms     | 0xe87 PK11_DeriveWithTemplate()
 11548 ms  0xe87 ret:0x7f2de2daae80
 11548 ms  0xe87 PK11_Derive()
 11548 ms  0xe87 basekey:0x7f2de4735000
 11548 ms     | 0xe87 PK11_DeriveWithTemplate()
 11548 ms  0xe87 ret:0x7f2de368b600
 11548 ms  0xe87 PK11_DeriveWithFlags()
 11548 ms  0xe87 basekey:0x7f2de368b600
 11548 ms     | 0xe87 PK11_DeriveWithTemplate()
 11548 ms  0xe87 ret:0x7f2dd21ea500
 11548 ms  0xe87 PK11_DeriveWithFlags()
 11548 ms  0xe87 basekey:0x7f2de368b600
 11548 ms     | 0xe87 PK11_DeriveWithTemplate()
 11548 ms  0xe87 ret:0x7f2de4735000
 11548 ms  0xe87 PK11_DeriveWithFlags()
 11548 ms  0xe87 basekey:0x7f2de368b600
 11548 ms     | 0xe87 PK11_DeriveWithTemplate()
 11548 ms  0xe87 ret:0x7f2de2daae80
 11548 ms  0xe87 PK11_Derive()
 11548 ms  0xe87 basekey:0x7f2de2e34e00
 11548 ms     | 0xe87 PK11_DeriveWithTemplate()
 11548 ms  0xe87 ret:0x7f2de316a700
 11548 ms  0xe87 PK11_DeriveWithFlags()
 11548 ms  0xe87 basekey:0x7f2de4735000
 11548 ms     | 0xe87 PK11_DeriveWithTemplate()
 11548 ms  0xe87 ret:0x7f2de368b600
 11548 ms  0xe87 PK11_DeriveWithFlags()
 11548 ms  0xe87 basekey:0x7f2de4735000
 11548 ms     | 0xe87 PK11_DeriveWithTemplate()
 11548 ms  0xe87 ret:0x7f2de2daae80
 11551 ms  SECKEY_ECParamsToKeySize()
 11551 ms  0xe87 ret:0x100
 11551 ms  SECKEY_ECParamsToBasePointOrderLen()
 11551 ms  0xe87 ret:0x100
 11551 ms  SECKEY_ECParamsToBasePointOrderLen()
 11551 ms  0xe87 ret:0x100
 11551 ms  0xe87 EC_ValidatePublicKey()
 11553 ms  0xe87 ret:0x0
 11554 ms  0xe87 PK11_DeriveWithFlags()
 11554 ms  0xe87 basekey:0x7f2de4735000
 11554 ms     | 0xe87 PK11_DeriveWithTemplate()
 11554 ms  0xe87 ret:0x7f2de2daae80
 11555 ms  0xe87 SSL_AuthCertificateComplete()
 11555 ms  0xe87 fd:0x7f2de2eddeb0
 11555 ms  0xe87 err:0x0
 11555 ms     | 0xe87 PK11_DeriveWithFlags()
 11555 ms     | 0xe87 basekey:0x7f2de316a700
 11555 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11555 ms     | 0xe87 ret:0x7f2de2daae80
 11555 ms     | 0xe87 PK11_DeriveWithFlags()
 11555 ms     | 0xe87 basekey:0x7f2de316a700
 11555 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11555 ms     | 0xe87 ret:0x7f2de2e34e00
 11555 ms     | 0xe87 PK11_DeriveWithFlags()
 11555 ms     | 0xe87 basekey:0x7f2de316a700
 11555 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11555 ms     | 0xe87 ret:0x7f2de2dab680
 11555 ms     | 0xe87 PK11_DeriveWithFlags()
 11555 ms     | 0xe87 basekey:0x7f2dd21ea500
 11555 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11555 ms     | 0xe87 ret:0x7f2de36eca00
 11555 ms     | 0xe87 PK11_DeriveWithFlags()
 11555 ms     | 0xe87 basekey:0x7f2dd21ea500
 11555 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11555 ms     | 0xe87 ret:0x7f2de36ecf00
 11555 ms     | 0xe87 PK11_DeriveWithFlags()
 11555 ms     | 0xe87 basekey:0x7f2de2e34e00
 11555 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11555 ms     | 0xe87 ret:0x7f2de36ecf00
 11555 ms     | 0xe87 PK11_DeriveWithFlags()
 11555 ms     | 0xe87 basekey:0x7f2de2e34e00
 11555 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11555 ms     | 0xe87 ret:0x7f2de36ecf80
 11555 ms     | 0xe87 PK11_DeriveWithFlags()
 11555 ms     | 0xe87 basekey:0x7f2dd21ea500
 11555 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11555 ms     | 0xe87 ret:0x7f2de368b600
 11555 ms     | 0xe87 PK11_Encrypt()
 11555 ms     | 0xe87 symkey:0x7f2de36eca00
 11555 ms     | 0xe87 PK11_DeriveWithFlags()
 11555 ms     | 0xe87 basekey:0x7f2de2daae80
 11555 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11555 ms     | 0xe87 ret:0x7f2de368b600
 11555 ms     | 0xe87 PK11_DeriveWithFlags()
 11555 ms     | 0xe87 basekey:0x7f2de2daae80
 11555 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11555 ms     | 0xe87 ret:0x7f2de36ecf80
 11555 ms     | 0xe87 PK11_DeriveWithFlags()
 11555 ms     | 0xe87 basekey:0x7f2de316a700
 11555 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11555 ms     | 0xe87 ret:0x7f2de36eca00
 11555 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11555 ms     | 0xe87 privk:0x7f2de97ad020::7f2de97ad020  b0 65 28 e4                                      .e(.
 11555 ms     | 0xe87 privk:0x7f2de97ad020::7f2de97ad020  e5 e5 e5 e5                                      ....
 11555 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11555 ms     | 0xe87 privk:0x7f2de97a4020::7f2de97a4020  10 2a e3 e2                                      .*..
 11555 ms     | 0xe87 privk:0x7f2de97a4020::7f2de97a4020  e5 e5 e5 e5                                      ....
 11556 ms  0xe87 PK11_Encrypt()
 11556 ms  0xe87 symkey:0x7f2de368b600
 11556 ms  0xe87 PK11_Encrypt()
 11556 ms  0xe87 symkey:0x7f2de2daae00
 11557 ms  0xe87 SECKEY_CreateECPrivateKey()
 11557 ms  0xe87 cx:0x7f2df3d270a8
 11557 ms     | 0xe87 EC_ValidatePublicKey()
 11557 ms     | 0xe87 ret:0x0
 11557 ms  0xe87 ret:0x7f2de97a5020::7f2de97a5020  e0 27 e3 e2                                      .'..
 11558 ms  0xe87 SECKEY_CreateECPrivateKey()
 11558 ms  0xe87 cx:0x7f2df3d270a8
 11558 ms     | 0xe87 EC_ValidatePublicKey()
 11559 ms     | 0xe87 ret:0x0
 11560 ms  0xe87 ret:0x7f2de97bd820::7f2de97bd820  b0 2f e3 e2                                      ./..
 11563 ms  0xe87 PK11_Derive()
 11563 ms  0xe87 basekey:0x7f2de4735000
 11563 ms     | 0xe87 PK11_DeriveWithTemplate()
 11563 ms  0xe87 ret:0x7f2dd21ea500
 11563 ms  0xe87 PK11_PubDeriveWithKDF()
 11563 ms  0xe87 seckey:0x7f2de97c2820
 11563 ms     | 0xe87 EC_ValidatePublicKey()
 11563 ms     | 0xe87 ret:0x0
 11563 ms  0xe87 ret:0x7f2de4735000
 11563 ms  SECKEY_ECParamsToKeySize()
 11563 ms  0xe87 ret:0xff
 11563 ms  0xe87 PK11_DeriveWithFlags()
 11563 ms  0xe87 basekey:0x7f2dd21ea500
 11563 ms     | 0xe87 PK11_DeriveWithTemplate()
 11563 ms  0xe87 ret:0x7f2de316a700
 11563 ms  0xe87 PK11_Derive()
 11563 ms  0xe87 basekey:0x7f2de4735000
 11563 ms     | 0xe87 PK11_DeriveWithTemplate()
 11564 ms  0xe87 ret:0x7f2de36ecf80
 11564 ms  0xe87 PK11_DeriveWithFlags()
 11564 ms  0xe87 basekey:0x7f2de36ecf80
 11564 ms     | 0xe87 PK11_DeriveWithTemplate()
 11564 ms  0xe87 ret:0x7f2dd21ea500
 11564 ms  0xe87 PK11_DeriveWithFlags()
 11564 ms  0xe87 basekey:0x7f2de36ecf80
 11564 ms     | 0xe87 PK11_DeriveWithTemplate()
 11564 ms  0xe87 ret:0x7f2de4735000
 11564 ms  0xe87 PK11_DeriveWithFlags()
 11564 ms  0xe87 basekey:0x7f2de36ecf80
 11564 ms     | 0xe87 PK11_DeriveWithTemplate()
 11564 ms  0xe87 ret:0x7f2de316a700
 11564 ms  0xe87 PK11_Derive()
 11564 ms  0xe87 basekey:0x7f2de36ed000
 11564 ms     | 0xe87 PK11_DeriveWithTemplate()
 11564 ms  0xe87 ret:0x7f2de36ed080
 11564 ms  0xe87 PK11_DeriveWithFlags()
 11564 ms  0xe87 basekey:0x7f2de4735000
 11564 ms     | 0xe87 PK11_DeriveWithTemplate()
 11564 ms  0xe87 ret:0x7f2de36ecf80
 11564 ms  0xe87 PK11_DeriveWithFlags()
 11564 ms  0xe87 basekey:0x7f2de4735000
 11564 ms     | 0xe87 PK11_DeriveWithTemplate()
 11564 ms  0xe87 ret:0x7f2de316a700
 11565 ms  SECKEY_ECParamsToKeySize()
 11565 ms  0xe87 ret:0x100
 11565 ms  SECKEY_ECParamsToBasePointOrderLen()
 11565 ms  0xe87 ret:0x100
 11565 ms  SECKEY_ECParamsToBasePointOrderLen()
 11565 ms  0xe87 ret:0x100
 11565 ms  0xe87 EC_ValidatePublicKey()
 11566 ms  0xe87 ret:0x0
 11568 ms  0xe87 PK11_DeriveWithFlags()
 11568 ms  0xe87 basekey:0x7f2de4735000
 11568 ms     | 0xe87 PK11_DeriveWithTemplate()
 11568 ms  0xe87 ret:0x7f2de316a700
 11568 ms  0xe87 SSL_AuthCertificateComplete()
 11568 ms  0xe87 fd:0x7f2de90fe670
 11568 ms  0xe87 err:0x0
 11568 ms     | 0xe87 PK11_DeriveWithFlags()
 11568 ms     | 0xe87 basekey:0x7f2de36ed080
 11568 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11568 ms     | 0xe87 ret:0x7f2de316a700
 11568 ms     | 0xe87 PK11_DeriveWithFlags()
 11568 ms     | 0xe87 basekey:0x7f2de36ed080
 11568 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11568 ms     | 0xe87 ret:0x7f2de36ed000
 11568 ms     | 0xe87 PK11_DeriveWithFlags()
 11568 ms     | 0xe87 basekey:0x7f2de36ed080
 11568 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11568 ms     | 0xe87 ret:0x7f2de36ed180
 11568 ms     | 0xe87 PK11_DeriveWithFlags()
 11568 ms     | 0xe87 basekey:0x7f2dd21ea500
 11568 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11569 ms     | 0xe87 ret:0x7f2de36ede80
 11569 ms     | 0xe87 PK11_DeriveWithFlags()
 11569 ms     | 0xe87 basekey:0x7f2dd21ea500
 11569 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11569 ms     | 0xe87 ret:0x7f2de424f200
 11569 ms     | 0xe87 PK11_DeriveWithFlags()
 11569 ms     | 0xe87 basekey:0x7f2de36ed000
 11569 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11569 ms     | 0xe87 ret:0x7f2de424f200
 11569 ms     | 0xe87 PK11_DeriveWithFlags()
 11569 ms     | 0xe87 basekey:0x7f2de36ed000
 11569 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11569 ms     | 0xe87 ret:0x7f2de425b900
 11569 ms     | 0xe87 PK11_DeriveWithFlags()
 11569 ms     | 0xe87 basekey:0x7f2dd21ea500
 11569 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11569 ms     | 0xe87 ret:0x7f2de36ecf80
 11569 ms     | 0xe87 PK11_Encrypt()
 11569 ms     | 0xe87 symkey:0x7f2de36ede80
 11569 ms     | 0xe87 PK11_DeriveWithFlags()
 11569 ms     | 0xe87 basekey:0x7f2de316a700
 11569 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11569 ms     | 0xe87 ret:0x7f2de36ecf80
 11569 ms     | 0xe87 PK11_DeriveWithFlags()
 11569 ms     | 0xe87 basekey:0x7f2de316a700
 11569 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11569 ms     | 0xe87 ret:0x7f2de425b900
 11569 ms     | 0xe87 PK11_DeriveWithFlags()
 11569 ms     | 0xe87 basekey:0x7f2de36ed080
 11569 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11569 ms     | 0xe87 ret:0x7f2de36ede80
 11569 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11569 ms     | 0xe87 privk:0x7f2de97cf020::7f2de97cf020  c0 29 14 d2                                      .)..
 11569 ms     | 0xe87 privk:0x7f2de97cf020::7f2de97cf020  e5 e5 e5 e5                                      ....
 11569 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11569 ms     | 0xe87 privk:0x7f2de97c2820::7f2de97c2820  40 dc 2c e4                                      @.,.
 11569 ms     | 0xe87 privk:0x7f2de97c2820::7f2de97c2820  e5 e5 e5 e5                                      ....
 11570 ms  0xe87 PK11_Encrypt()
 11570 ms  0xe87 symkey:0x7f2de36ecf80
 11570 ms  0xe87 PK11_Encrypt()
 11570 ms  0xe87 symkey:0x7f2de2daae00
 11571 ms  0xe87 SECKEY_CreateECPrivateKey()
 11571 ms  0xe87 cx:0x7f2e0b3a72c8
 11571 ms     | 0xe87 EC_ValidatePublicKey()
 11571 ms     | 0xe87 ret:0x0
 11571 ms  0xe87 ret:0x7f2de97ce820::7f2de97ce820  f0 06 e7 e2                                      ....
 11571 ms  0xe87 SECKEY_CreateECPrivateKey()
 11571 ms  0xe87 cx:0x7f2e0b3a72c8
 11572 ms     | 0xe87 EC_ValidatePublicKey()
 11573 ms     | 0xe87 ret:0x0
 11573 ms  0xe87 ret:0x7f2decd8e020::7f2decd8e020  c0 64 28 e4                                      .d(.
 11582 ms  0xe87 PK11_DeriveWithFlags()
 11582 ms  0xe87 basekey:0x7f2de368ae00
 11582 ms     | 0xe87 PK11_DeriveWithTemplate()
 11582 ms  0xe87 ret:0x7f2de4735000
 11583 ms  0xe87 PK11_DeriveWithFlags()
 11583 ms  0xe87 basekey:0x7f2de368ae00
 11583 ms     | 0xe87 PK11_DeriveWithTemplate()
 11583 ms  0xe87 ret:0x7f2de4735000
 11583 ms  0xe87 PK11_Encrypt()
 11583 ms  0xe87 symkey:0x7f2de2daae00
 11603 ms  0xe87 PK11_DeriveWithFlags()
 11603 ms  0xe87 basekey:0x7f2de36eca00
 11603 ms     | 0xe87 PK11_DeriveWithTemplate()
 11603 ms  0xe87 ret:0x7f2de4735000
 11603 ms  0xe87 PK11_DeriveWithFlags()
 11603 ms  0xe87 basekey:0x7f2de36eca00
 11603 ms     | 0xe87 PK11_DeriveWithTemplate()
 11603 ms  0xe87 ret:0x7f2de4735000
 11603 ms  0xe87 PR_Close()
 11603 ms  0xe87 fd:0x7f2de2eddeb0
 11603 ms     | 0xe87 PK11_Encrypt()
 11603 ms     | 0xe87 symkey:0x7f2de368b600
 11610 ms  0xe87 PK11_Encrypt()
 11610 ms  0xe87 symkey:0x7f2de2daa500
 11610 ms  0xe87 PR_Close()
 11610 ms  0xe87 fd:0x7f2de92022e0
 11611 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11611 ms     | 0xe87 privk:0x7f2decd8e020::7f2decd8e020  c0 64 28 e4                                      .d(.
 11611 ms     | 0xe87 privk:0x7f2decd8e020::7f2decd8e020  e5 e5 e5 e5                                      ....
 11611 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11611 ms     | 0xe87 privk:0x7f2de97ce820::7f2de97ce820  f0 06 e7 e2                                      ....
 11611 ms     | 0xe87 privk:0x7f2de97ce820::7f2de97ce820  e5 e5 e5 e5                                      ....
 11615 ms  0xe87 PK11_Derive()
 11615 ms  0xe87 basekey:0x7f2de2dab680
 11615 ms     | 0xe87 PK11_DeriveWithTemplate()
 11615 ms  0xe87 ret:0x7f2de2e34e00
 11615 ms  0xe87 PK11_PubDeriveWithKDF()
 11615 ms  0xe87 seckey:0x7f2de97a5020
 11615 ms     | 0xe87 EC_ValidatePublicKey()
 11615 ms     | 0xe87 ret:0x0
 11615 ms  0xe87 ret:0x7f2de2dab680
 11616 ms  SECKEY_ECParamsToKeySize()
 11616 ms  0xe87 ret:0xff
 11616 ms  0xe87 PK11_DeriveWithFlags()
 11616 ms  0xe87 basekey:0x7f2de2e34e00
 11616 ms     | 0xe87 PK11_DeriveWithTemplate()
 11616 ms  0xe87 ret:0x7f2de2daae80
 11616 ms  0xe87 PK11_Derive()
 11616 ms  0xe87 basekey:0x7f2de2dab680
 11616 ms     | 0xe87 PK11_DeriveWithTemplate()
 11616 ms  0xe87 ret:0x7f2de36eca00
 11616 ms  0xe87 PK11_DeriveWithFlags()
 11616 ms  0xe87 basekey:0x7f2de36eca00
 11616 ms     | 0xe87 PK11_DeriveWithTemplate()
 11616 ms  0xe87 ret:0x7f2de2e34e00
 11616 ms  0xe87 PK11_DeriveWithFlags()
 11616 ms  0xe87 basekey:0x7f2de36eca00
 11616 ms     | 0xe87 PK11_DeriveWithTemplate()
 11616 ms  0xe87 ret:0x7f2de2dab680
 11616 ms  0xe87 PK11_DeriveWithFlags()
 11616 ms  0xe87 basekey:0x7f2de36eca00
 11616 ms     | 0xe87 PK11_DeriveWithTemplate()
 11616 ms  0xe87 ret:0x7f2de2daae80
 11616 ms  0xe87 PK11_Derive()
 11616 ms  0xe87 basekey:0x7f2de36ecf00
 11616 ms     | 0xe87 PK11_DeriveWithTemplate()
 11616 ms  0xe87 ret:0x7f2de368b600
 11616 ms  0xe87 PK11_DeriveWithFlags()
 11616 ms  0xe87 basekey:0x7f2de2dab680
 11616 ms     | 0xe87 PK11_DeriveWithTemplate()
 11616 ms  0xe87 ret:0x7f2de36eca00
 11616 ms  0xe87 PK11_DeriveWithFlags()
 11616 ms  0xe87 basekey:0x7f2de2dab680
 11616 ms     | 0xe87 PK11_DeriveWithTemplate()
 11616 ms  0xe87 ret:0x7f2de2daae80
 11617 ms  0xe87 PK11_DeriveWithFlags()
 11617 ms  0xe87 basekey:0x7f2de2dab680
 11617 ms     | 0xe87 PK11_DeriveWithTemplate()
 11617 ms  0xe87 ret:0x7f2de2daae80
 11618 ms  0xe87 PK11_DeriveWithFlags()
 11618 ms  0xe87 basekey:0x7f2de36ede80
 11618 ms     | 0xe87 PK11_DeriveWithTemplate()
 11618 ms  0xe87 ret:0x7f2de2daae80
 11618 ms  0xe87 PK11_DeriveWithFlags()
 11618 ms  0xe87 basekey:0x7f2de36ede80
 11618 ms     | 0xe87 PK11_DeriveWithTemplate()
 11618 ms  0xe87 ret:0x7f2de2daae80
 11618 ms  0xe87 PR_Close()
 11618 ms  0xe87 fd:0x7f2de90fe670
 11618 ms     | 0xe87 PK11_Encrypt()
 11618 ms     | 0xe87 symkey:0x7f2de36ecf80
 11621 ms  0xe87 PK11_Encrypt()
 11621 ms  0xe87 symkey:0x7f2de2daae00
 11621 ms  0xe87 SSL_ImportFD()
 11621 ms  0xe87 ret:0x7f2de9202400
 11621 ms  0xe87 SSL_AuthCertificateHook()
 11621 ms  0xe87 fd:0x7f2de9202400
 11621 ms  0xe87 ret:0x0
 11622 ms  0xe87 PR_Connect()
 11622 ms  0xe87 fd:0x7f2de9202400
 11622 ms  0xe87 SSL_ImportFD()
 11622 ms  0xe87 ret:0x7f2de9202070
 11622 ms  0xe87 SSL_AuthCertificateHook()
 11622 ms  0xe87 fd:0x7f2de9202070
 11622 ms  0xe87 ret:0x0
 11622 ms  0xe87 PR_Connect()
 11622 ms  0xe87 fd:0x7f2de9202070
 11623 ms  0xe87 SSL_ImportFD()
 11623 ms  0xe87 ret:0x7f2de9202580
 11623 ms  0xe87 SSL_AuthCertificateHook()
 11623 ms  0xe87 fd:0x7f2de9202580
 11623 ms  0xe87 ret:0x0
 11623 ms  0xe87 PR_Connect()
 11623 ms  0xe87 fd:0x7f2de9202580
 11633 ms  0xe87 PK11_Encrypt()
 11633 ms  0xe87 symkey:0x7f2de2daae00
 11638 ms  0xe87 SSL_ImportFD()
 11638 ms  0xe87 ret:0x7f2de90fe070
 11638 ms  0xe87 SSL_AuthCertificateHook()
 11638 ms  0xe87 fd:0x7f2de90fe070
 11638 ms  0xe87 ret:0x0
 11638 ms  0xe87 PR_Connect()
 11638 ms  0xe87 fd:0x7f2de90fe070
 11661 ms  0xe87 SECKEY_CreateECPrivateKey()
 11661 ms  0xe87 cx:0x7f2df3d273e8
 11662 ms     | 0xe87 EC_ValidatePublicKey()
 11662 ms     | 0xe87 ret:0x0
 11662 ms  0xe87 ret:0x7f2de97d0820::7f2de97d0820  90 dc 2c e4                                      ..,.
 11662 ms  0xe87 SECKEY_CreateECPrivateKey()
 11662 ms  0xe87 cx:0x7f2df3d273e8
 11663 ms     | 0xe87 EC_ValidatePublicKey()
 11664 ms     | 0xe87 ret:0x0
 11664 ms  0xe87 ret:0x7f2decd8e820::7f2decd8e820  50 3b 3b e4                                      P;;.
 11665 ms  0xe87 SECKEY_CreateECPrivateKey()
 11665 ms  0xe87 cx:0x7f2df05404a8
 11666 ms     | 0xe87 EC_ValidatePublicKey()
 11666 ms     | 0xe87 ret:0x0
 11666 ms  0xe87 ret:0x7f2decd95820::7f2decd95820  40 f2 72 e4                                      @.r.
 11666 ms  0xe87 SECKEY_CreateECPrivateKey()
 11666 ms  0xe87 cx:0x7f2df05404a8
 11666 ms     | 0xe87 EC_ValidatePublicKey()
 11668 ms     | 0xe87 ret:0x0
 11668 ms  0xe87 ret:0x7f2decd9a020::7f2decd9a020  10 f5 72 e4                                      ..r.
 11672 ms  0xe87 PK11_Encrypt()
 11672 ms  0xe87 symkey:0x7f2de2daa500
 11676 ms  0xe87 SECKEY_CreateECPrivateKey()
 11676 ms  0xe87 cx:0x7f2df3d27a68
 11677 ms     | 0xe87 EC_ValidatePublicKey()
 11677 ms     | 0xe87 ret:0x0
 11677 ms  0xe87 ret:0x7f2decd9d820::7f2decd9d820  a0 f6 72 e4                                      ..r.
 11677 ms  0xe87 SECKEY_CreateECPrivateKey()
 11677 ms  0xe87 cx:0x7f2df3d27a68
 11678 ms     | 0xe87 EC_ValidatePublicKey()
 11679 ms     | 0xe87 ret:0x0
 11679 ms  0xe87 ret:0x7f2decda1020::7f2decda1020  60 fa 72 e4                                      `.r.
 11683 ms  0xe87 SSL_ImportFD()
 11683 ms  0xe87 ret:0x7f2de9284940
 11683 ms  0xe87 SSL_AuthCertificateHook()
 11683 ms  0xe87 fd:0x7f2de9284940
 11683 ms  0xe87 ret:0x0
 11683 ms  0xe87 PR_Connect()
 11683 ms  0xe87 fd:0x7f2de9284940
 11686 ms  0xe87 SECKEY_CreateECPrivateKey()
 11686 ms  0xe87 cx:0x7f2df3d278c8
 11686 ms     | 0xe87 EC_ValidatePublicKey()
 11686 ms     | 0xe87 ret:0x0
 11686 ms  0xe87 ret:0x7f2ded1d9820::7f2ded1d9820  90 fc 72 e4                                      ..r.
 11686 ms  0xe87 SECKEY_CreateECPrivateKey()
 11686 ms  0xe87 cx:0x7f2df3d278c8
 11687 ms     | 0xe87 EC_ValidatePublicKey()
 11689 ms     | 0xe87 ret:0x0
 11689 ms  0xe87 ret:0x7f2ded1dc820::7f2ded1dc820  70 fe 72 e4                                      p.r.
           /* TID 0xe8f */
 11691 ms  0xe8f PR_Close()
 11691 ms  0xe8f fd:0x7f2de90fe5e0
           /* TID 0xe87 */
 11718 ms  0xe87 PK11_Derive()
 11718 ms  0xe87 basekey:0x7f2de36ed180
 11718 ms     | 0xe87 PK11_DeriveWithTemplate()
 11718 ms  0xe87 ret:0x7f2de36ed000
 11718 ms  0xe87 PK11_PubDeriveWithKDF()
 11718 ms  0xe87 seckey:0x7f2de97d0820
 11718 ms     | 0xe87 EC_ValidatePublicKey()
 11718 ms     | 0xe87 ret:0x0
 11719 ms  0xe87 ret:0x7f2de36ed180
 11719 ms  SECKEY_ECParamsToKeySize()
 11719 ms  0xe87 ret:0xff
 11719 ms  0xe87 PK11_DeriveWithFlags()
 11719 ms  0xe87 basekey:0x7f2de36ed000
 11719 ms     | 0xe87 PK11_DeriveWithTemplate()
 11719 ms  0xe87 ret:0x7f2de316a700
 11719 ms  0xe87 PK11_Derive()
 11719 ms  0xe87 basekey:0x7f2de36ed180
 11719 ms     | 0xe87 PK11_DeriveWithTemplate()
 11719 ms  0xe87 ret:0x7f2de36ede80
 11719 ms  0xe87 PK11_DeriveWithFlags()
 11719 ms  0xe87 basekey:0x7f2de36ede80
 11719 ms     | 0xe87 PK11_DeriveWithTemplate()
 11719 ms  0xe87 ret:0x7f2de36ed000
 11719 ms  0xe87 PK11_DeriveWithFlags()
 11719 ms  0xe87 basekey:0x7f2de36ede80
 11719 ms     | 0xe87 PK11_DeriveWithTemplate()
 11719 ms  0xe87 ret:0x7f2de36ed180
 11719 ms  0xe87 PK11_DeriveWithFlags()
 11719 ms  0xe87 basekey:0x7f2de36ede80
 11719 ms     | 0xe87 PK11_DeriveWithTemplate()
 11719 ms  0xe87 ret:0x7f2de316a700
 11719 ms  0xe87 PK11_Derive()
 11719 ms  0xe87 basekey:0x7f2de424f200
 11719 ms     | 0xe87 PK11_DeriveWithTemplate()
 11719 ms  0xe87 ret:0x7f2de36ecf80
 11719 ms  0xe87 PK11_DeriveWithFlags()
 11719 ms  0xe87 basekey:0x7f2de36ed180
 11719 ms     | 0xe87 PK11_DeriveWithTemplate()
 11719 ms  0xe87 ret:0x7f2de36ede80
 11719 ms  0xe87 PK11_DeriveWithFlags()
 11719 ms  0xe87 basekey:0x7f2de36ed180
 11719 ms     | 0xe87 PK11_DeriveWithTemplate()
 11719 ms  0xe87 ret:0x7f2de316a700
 11720 ms  SECKEY_ECParamsToKeySize()
 11720 ms  0xe87 ret:0x100
 11720 ms  SECKEY_ECParamsToBasePointOrderLen()
 11720 ms  0xe87 ret:0x100
 11720 ms  SECKEY_ECParamsToBasePointOrderLen()
 11720 ms  0xe87 ret:0x100
 11720 ms  0xe87 EC_ValidatePublicKey()
 11722 ms  0xe87 ret:0x0
 11724 ms  0xe87 PK11_DeriveWithFlags()
 11724 ms  0xe87 basekey:0x7f2de36ed180
 11724 ms     | 0xe87 PK11_DeriveWithTemplate()
 11724 ms  0xe87 ret:0x7f2de316a700
 11724 ms  0xe87 SSL_AuthCertificateComplete()
 11724 ms  0xe87 fd:0x7f2de9202070
 11724 ms  0xe87 err:0x0
 11724 ms     | 0xe87 PK11_DeriveWithFlags()
 11724 ms     | 0xe87 basekey:0x7f2de36ecf80
 11724 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11724 ms     | 0xe87 ret:0x7f2de316a700
 11724 ms     | 0xe87 PK11_DeriveWithFlags()
 11724 ms     | 0xe87 basekey:0x7f2de36ecf80
 11724 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11724 ms     | 0xe87 ret:0x7f2de424f200
 11724 ms     | 0xe87 PK11_DeriveWithFlags()
 11724 ms     | 0xe87 basekey:0x7f2de36ecf80
 11724 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11724 ms     | 0xe87 ret:0x7f2de2daae80
 11724 ms     | 0xe87 PK11_DeriveWithFlags()
 11724 ms     | 0xe87 basekey:0x7f2de36ed000
 11724 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11724 ms     | 0xe87 ret:0x7f2de36ecf00
 11724 ms     | 0xe87 PK11_DeriveWithFlags()
 11724 ms     | 0xe87 basekey:0x7f2de36ed000
 11724 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11724 ms     | 0xe87 ret:0x7f2de4735000
 11724 ms     | 0xe87 PK11_DeriveWithFlags()
 11724 ms     | 0xe87 basekey:0x7f2de424f200
 11724 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11724 ms     | 0xe87 ret:0x7f2de4735000
 11724 ms     | 0xe87 PK11_DeriveWithFlags()
 11724 ms     | 0xe87 basekey:0x7f2de424f200
 11724 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11724 ms     | 0xe87 ret:0x7f2dd21ea500
 11724 ms     | 0xe87 PK11_DeriveWithFlags()
 11724 ms     | 0xe87 basekey:0x7f2de36ed000
 11724 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11724 ms     | 0xe87 ret:0x7f2de36ede80
 11724 ms     | 0xe87 PK11_Encrypt()
 11724 ms     | 0xe87 symkey:0x7f2de36ecf00
 11724 ms     | 0xe87 PK11_DeriveWithFlags()
 11724 ms     | 0xe87 basekey:0x7f2de316a700
 11724 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11724 ms     | 0xe87 ret:0x7f2de36ede80
 11724 ms     | 0xe87 PK11_DeriveWithFlags()
 11724 ms     | 0xe87 basekey:0x7f2de316a700
 11724 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11724 ms     | 0xe87 ret:0x7f2dd21ea500
 11724 ms     | 0xe87 PK11_DeriveWithFlags()
 11724 ms     | 0xe87 basekey:0x7f2de36ecf80
 11724 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11725 ms     | 0xe87 ret:0x7f2de36ecf00
 11725 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11725 ms     | 0xe87 privk:0x7f2decd8e820::7f2decd8e820  50 3b 3b e4                                      P;;.
 11725 ms     | 0xe87 privk:0x7f2decd8e820::7f2decd8e820  e5 e5 e5 e5                                      ....
 11725 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11725 ms     | 0xe87 privk:0x7f2de97d0820::7f2de97d0820  90 dc 2c e4                                      ..,.
 11725 ms     | 0xe87 privk:0x7f2de97d0820::7f2de97d0820  e5 e5 e5 e5                                      ....
 11726 ms  0xe87 PK11_Encrypt()
 11726 ms  0xe87 symkey:0x7f2de36ede80
 11726 ms  0xe87 PK11_Encrypt()
 11726 ms  0xe87 symkey:0x7f2de36ede80
 11726 ms  0xe87 PK11_Derive()
 11726 ms  0xe87 basekey:0x7f2de36ed180
 11726 ms     | 0xe87 PK11_DeriveWithTemplate()
 11726 ms  0xe87 ret:0x7f2de36ed000
 11726 ms  0xe87 PK11_PubDeriveWithKDF()
 11726 ms  0xe87 seckey:0x7f2decd95820
 11726 ms     | 0xe87 EC_ValidatePublicKey()
 11726 ms     | 0xe87 ret:0x0
 11729 ms  0xe87 ret:0x7f2de36ed180
 11729 ms  SECKEY_ECParamsToKeySize()
 11729 ms  0xe87 ret:0xff
 11729 ms  0xe87 PK11_DeriveWithFlags()
 11729 ms  0xe87 basekey:0x7f2de36ed000
 11729 ms     | 0xe87 PK11_DeriveWithTemplate()
 11729 ms  0xe87 ret:0x7f2de36ecf80
 11729 ms  0xe87 PK11_Derive()
 11729 ms  0xe87 basekey:0x7f2de36ed180
 11729 ms     | 0xe87 PK11_DeriveWithTemplate()
 11729 ms  0xe87 ret:0x7f2dd21ea500
 11729 ms  0xe87 PK11_DeriveWithFlags()
 11729 ms  0xe87 basekey:0x7f2dd21ea500
 11729 ms     | 0xe87 PK11_DeriveWithTemplate()
 11729 ms  0xe87 ret:0x7f2de36ed000
 11729 ms  0xe87 PK11_DeriveWithFlags()
 11729 ms  0xe87 basekey:0x7f2dd21ea500
 11729 ms     | 0xe87 PK11_DeriveWithTemplate()
 11729 ms  0xe87 ret:0x7f2de36ed180
 11729 ms  0xe87 PK11_DeriveWithFlags()
 11729 ms  0xe87 basekey:0x7f2dd21ea500
 11729 ms     | 0xe87 PK11_DeriveWithTemplate()
 11729 ms  0xe87 ret:0x7f2de36ecf80
 11729 ms  0xe87 PK11_Derive()
 11729 ms  0xe87 basekey:0x7f2de36ed080
 11729 ms     | 0xe87 PK11_DeriveWithTemplate()
 11729 ms  0xe87 ret:0x7f2de425b900
 11729 ms  0xe87 PK11_DeriveWithFlags()
 11729 ms  0xe87 basekey:0x7f2de36ed180
 11729 ms     | 0xe87 PK11_DeriveWithTemplate()
 11729 ms  0xe87 ret:0x7f2dd21ea500
 11729 ms  0xe87 PK11_DeriveWithFlags()
 11729 ms  0xe87 basekey:0x7f2de36ed180
 11729 ms     | 0xe87 PK11_DeriveWithTemplate()
 11729 ms  0xe87 ret:0x7f2de36ecf80
 11730 ms  SECKEY_ECParamsToKeySize()
 11730 ms  0xe87 ret:0x100
 11730 ms  SECKEY_ECParamsToBasePointOrderLen()
 11730 ms  0xe87 ret:0x100
 11730 ms  SECKEY_ECParamsToBasePointOrderLen()
 11730 ms  0xe87 ret:0x100
 11730 ms  0xe87 EC_ValidatePublicKey()
 11731 ms  0xe87 ret:0x0
 11734 ms  0xe87 PK11_DeriveWithFlags()
 11734 ms  0xe87 basekey:0x7f2de36ed180
 11734 ms     | 0xe87 PK11_DeriveWithTemplate()
 11734 ms  0xe87 ret:0x7f2de36ecf80
 11734 ms  0xe87 SSL_AuthCertificateComplete()
 11734 ms  0xe87 fd:0x7f2de9202400
 11734 ms  0xe87 err:0x0
 11734 ms     | 0xe87 PK11_DeriveWithFlags()
 11734 ms     | 0xe87 basekey:0x7f2de425b900
 11734 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11734 ms     | 0xe87 ret:0x7f2de36ecf80
 11734 ms     | 0xe87 PK11_DeriveWithFlags()
 11734 ms     | 0xe87 basekey:0x7f2de425b900
 11734 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11734 ms     | 0xe87 ret:0x7f2de36ed080
 11734 ms     | 0xe87 PK11_DeriveWithFlags()
 11734 ms     | 0xe87 basekey:0x7f2de425b900
 11734 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11734 ms     | 0xe87 ret:0x7f2de4320e80
 11734 ms     | 0xe87 PK11_DeriveWithFlags()
 11734 ms     | 0xe87 basekey:0x7f2de36ed000
 11734 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11734 ms     | 0xe87 ret:0x7f2de4320f00
 11734 ms     | 0xe87 PK11_DeriveWithFlags()
 11734 ms     | 0xe87 basekey:0x7f2de36ed000
 11734 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11734 ms     | 0xe87 ret:0x7f2de4320f80
 11734 ms     | 0xe87 PK11_DeriveWithFlags()
 11734 ms     | 0xe87 basekey:0x7f2de36ed080
 11734 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11734 ms     | 0xe87 ret:0x7f2de4320f80
 11734 ms     | 0xe87 PK11_DeriveWithFlags()
 11734 ms     | 0xe87 basekey:0x7f2de36ed080
 11734 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11734 ms     | 0xe87 ret:0x7f2de4321000
 11734 ms     | 0xe87 PK11_DeriveWithFlags()
 11734 ms     | 0xe87 basekey:0x7f2de36ed000
 11734 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11734 ms     | 0xe87 ret:0x7f2dd21ea500
 11734 ms     | 0xe87 PK11_Encrypt()
 11734 ms     | 0xe87 symkey:0x7f2de4320f00
 11734 ms     | 0xe87 PK11_DeriveWithFlags()
 11734 ms     | 0xe87 basekey:0x7f2de36ecf80
 11734 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11734 ms     | 0xe87 ret:0x7f2dd21ea500
 11734 ms     | 0xe87 PK11_DeriveWithFlags()
 11734 ms     | 0xe87 basekey:0x7f2de36ecf80
 11735 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11735 ms     | 0xe87 ret:0x7f2de4321000
 11735 ms     | 0xe87 PK11_DeriveWithFlags()
 11735 ms     | 0xe87 basekey:0x7f2de425b900
 11735 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11735 ms     | 0xe87 ret:0x7f2de4320f00
 11735 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11735 ms     | 0xe87 privk:0x7f2decd9a020::7f2decd9a020  10 f5 72 e4                                      ..r.
 11735 ms     | 0xe87 privk:0x7f2decd9a020::7f2decd9a020  e5 e5 e5 e5                                      ....
 11735 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11735 ms     | 0xe87 privk:0x7f2decd95820::7f2decd95820  40 f2 72 e4                                      @.r.
 11735 ms     | 0xe87 privk:0x7f2decd95820::7f2decd95820  e5 e5 e5 e5                                      ....
 11736 ms  0xe87 PK11_Encrypt()
 11736 ms  0xe87 symkey:0x7f2dd21ea500
 11736 ms  0xe87 PK11_Encrypt()
 11736 ms  0xe87 symkey:0x7f2dd21ea500
 11737 ms  0xe87 PK11_Derive()
 11737 ms  0xe87 basekey:0x7f2de36ed180
 11737 ms     | 0xe87 PK11_DeriveWithTemplate()
 11737 ms  0xe87 ret:0x7f2de36ed000
 11737 ms  0xe87 PK11_PubDeriveWithKDF()
 11737 ms  0xe87 seckey:0x7f2decd9d820
 11737 ms     | 0xe87 EC_ValidatePublicKey()
 11737 ms     | 0xe87 ret:0x0
 11737 ms  0xe87 ret:0x7f2de36ed180
 11737 ms  SECKEY_ECParamsToKeySize()
 11737 ms  0xe87 ret:0xff
 11737 ms  0xe87 PK11_DeriveWithFlags()
 11737 ms  0xe87 basekey:0x7f2de36ed000
 11737 ms     | 0xe87 PK11_DeriveWithTemplate()
 11737 ms  0xe87 ret:0x7f2de425b900
 11737 ms  0xe87 PK11_Derive()
 11737 ms  0xe87 basekey:0x7f2de36ed180
 11737 ms     | 0xe87 PK11_DeriveWithTemplate()
 11737 ms  0xe87 ret:0x7f2de4321000
 11737 ms  0xe87 PK11_DeriveWithFlags()
 11737 ms  0xe87 basekey:0x7f2de4321000
 11737 ms     | 0xe87 PK11_DeriveWithTemplate()
 11737 ms  0xe87 ret:0x7f2de36ed000
 11737 ms  0xe87 PK11_DeriveWithFlags()
 11737 ms  0xe87 basekey:0x7f2de4321000
 11737 ms     | 0xe87 PK11_DeriveWithTemplate()
 11737 ms  0xe87 ret:0x7f2de36ed180
 11737 ms  0xe87 PK11_DeriveWithFlags()
 11737 ms  0xe87 basekey:0x7f2de4321000
 11737 ms     | 0xe87 PK11_DeriveWithTemplate()
 11737 ms  0xe87 ret:0x7f2de425b900
 11738 ms  0xe87 PK11_Derive()
 11738 ms  0xe87 basekey:0x7f2de42c6200
 11738 ms     | 0xe87 PK11_DeriveWithTemplate()
 11738 ms  0xe87 ret:0x7f2de4321100
 11738 ms  0xe87 PK11_DeriveWithFlags()
 11738 ms  0xe87 basekey:0x7f2de36ed180
 11738 ms     | 0xe87 PK11_DeriveWithTemplate()
 11738 ms  0xe87 ret:0x7f2de4321000
 11738 ms  0xe87 PK11_DeriveWithFlags()
 11738 ms  0xe87 basekey:0x7f2de36ed180
 11738 ms     | 0xe87 PK11_DeriveWithTemplate()
 11738 ms  0xe87 ret:0x7f2de425b900
 11739 ms  SECKEY_ECParamsToKeySize()
 11739 ms  0xe87 ret:0x100
 11739 ms  SECKEY_ECParamsToBasePointOrderLen()
 11739 ms  0xe87 ret:0x100
 11739 ms  SECKEY_ECParamsToBasePointOrderLen()
 11739 ms  0xe87 ret:0x100
 11739 ms  0xe87 EC_ValidatePublicKey()
 11740 ms  0xe87 ret:0x0
 11742 ms  0xe87 PK11_DeriveWithFlags()
 11742 ms  0xe87 basekey:0x7f2de36ed180
 11742 ms     | 0xe87 PK11_DeriveWithTemplate()
 11742 ms  0xe87 ret:0x7f2de425b900
 11742 ms  0xe87 SECKEY_CreateECPrivateKey()
 11742 ms  0xe87 cx:0x7f2df3d27c08
 11744 ms     | 0xe87 EC_ValidatePublicKey()
 11744 ms     | 0xe87 ret:0x0
 11744 ms  0xe87 ret:0x7f2ded1e1020::7f2ded1e1020  40 f2 72 e4                                      @.r.
 11744 ms  0xe87 SECKEY_CreateECPrivateKey()
 11744 ms  0xe87 cx:0x7f2df3d27c08
 11744 ms     | 0xe87 EC_ValidatePublicKey()
 11746 ms     | 0xe87 ret:0x0
 11746 ms  0xe87 ret:0x7f2ded1eb820::7f2ded1eb820  10 f5 72 e4                                      ..r.
 11751 ms  0xe87 PR_Connect()
 11751 ms  0xe87 fd:0x7f2de9284c40
 11752 ms  0xe87 PK11_Derive()
 11752 ms  0xe87 basekey:0x7f2de42c6200
 11752 ms     | 0xe87 PK11_DeriveWithTemplate()
 11752 ms  0xe87 ret:0x7f2de425b900
 11752 ms  0xe87 PK11_Encrypt()
 11752 ms  0xe87 symkey:0x7f2de4321580
 11753 ms  0xe87 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11753 ms  0xe87 ret:0x0
 11753 ms  0xe87 SECKEY_DestroyPrivateKey()
 11753 ms  0xe87 privk:0x7f2ded1dc820::7f2ded1dc820  70 fe 72 e4                                      p.r.
 11753 ms  0xe87 privk:0x7f2ded1dc820::7f2ded1dc820  e5 e5 e5 e5                                      ....
 11753 ms  0xe87 SECKEY_DestroyPrivateKey()
 11753 ms  0xe87 privk:0x7f2ded1d9820::7f2ded1d9820  90 fc 72 e4                                      ..r.
 11753 ms  0xe87 privk:0x7f2ded1d9820::7f2ded1d9820  e5 e5 e5 e5                                      ....
           /* TID 0xe8f */
 11761 ms  0xe8f PR_Close()
 11761 ms  0xe8f fd:0x7f2de92023d0
           /* TID 0xf23 */
 11761 ms  0xf23 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11761 ms  0xf23 ret:0x0
           /* TID 0xe87 */
 11762 ms  0xe87 SSL_AuthCertificateComplete()
 11762 ms  0xe87 fd:0x7f2de9202d30
 11762 ms  0xe87 err:0x0
 11762 ms     | 0xe87 PK11_DeriveWithFlags()
 11762 ms     | 0xe87 basekey:0x7f2de368b600
 11762 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11762 ms     | 0xe87 ret:0x7f2de42c5300
 11762 ms     | 0xe87 PK11_DeriveWithFlags()
 11762 ms     | 0xe87 basekey:0x7f2de368b600
 11762 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11762 ms     | 0xe87 ret:0x7f2de42c5580
 11762 ms     | 0xe87 PK11_DeriveWithFlags()
 11762 ms     | 0xe87 basekey:0x7f2de368b600
 11762 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11762 ms     | 0xe87 ret:0x7f2de42c5600
 11762 ms     | 0xe87 PK11_DeriveWithFlags()
 11762 ms     | 0xe87 basekey:0x7f2de2e34e00
 11762 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11762 ms     | 0xe87 ret:0x7f2de4321b80
 11762 ms     | 0xe87 PK11_DeriveWithFlags()
 11762 ms     | 0xe87 basekey:0x7f2de2e34e00
 11762 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11762 ms     | 0xe87 ret:0x7f2de4321d00
 11762 ms     | 0xe87 PK11_DeriveWithFlags()
 11762 ms     | 0xe87 basekey:0x7f2de42c5580
 11762 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11763 ms     | 0xe87 ret:0x7f2de4321d00
 11763 ms     | 0xe87 PK11_DeriveWithFlags()
 11763 ms     | 0xe87 basekey:0x7f2de42c5580
 11763 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11763 ms     | 0xe87 ret:0x7f2de4321d80
 11763 ms     | 0xe87 PK11_DeriveWithFlags()
 11763 ms     | 0xe87 basekey:0x7f2de2e34e00
 11763 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11763 ms     | 0xe87 ret:0x7f2de36eca00
 11763 ms     | 0xe87 PK11_Encrypt()
 11763 ms     | 0xe87 symkey:0x7f2de4321b80
 11763 ms     | 0xe87 PK11_DeriveWithFlags()
 11763 ms     | 0xe87 basekey:0x7f2de42c5300
 11763 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11763 ms     | 0xe87 ret:0x7f2de36eca00
 11763 ms     | 0xe87 PK11_DeriveWithFlags()
 11763 ms     | 0xe87 basekey:0x7f2de42c5300
 11763 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11764 ms     | 0xe87 ret:0x7f2de4321d80
 11764 ms     | 0xe87 PK11_DeriveWithFlags()
 11764 ms     | 0xe87 basekey:0x7f2de368b600
 11764 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11764 ms     | 0xe87 ret:0x7f2de4321b80
 11764 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11764 ms     | 0xe87 privk:0x7f2de97bd820::7f2de97bd820  b0 2f e3 e2                                      ./..
 11764 ms     | 0xe87 privk:0x7f2de97bd820::7f2de97bd820  e5 e5 e5 e5                                      ....
 11764 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11764 ms     | 0xe87 privk:0x7f2de97a5020::7f2de97a5020  e0 27 e3 e2                                      .'..
 11764 ms     | 0xe87 privk:0x7f2de97a5020::7f2de97a5020  e5 e5 e5 e5                                      ....
 11765 ms  0xe87 PK11_Encrypt()
 11765 ms  0xe87 symkey:0x7f2de36eca00
 11770 ms  0xe87 PK11_Encrypt()
 11770 ms  0xe87 symkey:0x7f2de36eca00
 11779 ms  0xe87 PK11_DeriveWithFlags()
 11779 ms  0xe87 basekey:0x7f2de36ecf00
 11779 ms     | 0xe87 PK11_DeriveWithTemplate()
 11779 ms  0xe87 ret:0x7f2de2dab680
 11779 ms  0xe87 PK11_DeriveWithFlags()
 11779 ms  0xe87 basekey:0x7f2de36ecf00
 11779 ms     | 0xe87 PK11_DeriveWithTemplate()
 11779 ms  0xe87 ret:0x7f2de2dab680
 11779 ms  0xe87 PK11_Encrypt()
 11779 ms  0xe87 symkey:0x7f2de36ede80
 11779 ms  0xe87 PK11_DeriveWithFlags()
 11779 ms  0xe87 basekey:0x7f2de4320f00
 11780 ms     | 0xe87 PK11_DeriveWithTemplate()
 11780 ms  0xe87 ret:0x7f2de2dab680
 11780 ms  0xe87 PK11_DeriveWithFlags()
 11780 ms  0xe87 basekey:0x7f2de4320f00
 11780 ms     | 0xe87 PK11_DeriveWithTemplate()
 11780 ms  0xe87 ret:0x7f2de2dab680
 11780 ms  0xe87 PK11_Encrypt()
 11780 ms  0xe87 symkey:0x7f2dd21ea500
 11800 ms  0xe87 PK11_Derive()
 11800 ms  0xe87 basekey:0x7f2de2dab680
 11800 ms     | 0xe87 PK11_DeriveWithTemplate()
 11800 ms  0xe87 ret:0x7f2de2e34e00
 11800 ms  0xe87 PK11_PubDeriveWithKDF()
 11800 ms  0xe87 seckey:0x7f2ded1e1020
 11800 ms     | 0xe87 EC_ValidatePublicKey()
 11800 ms     | 0xe87 ret:0x0
 11800 ms  0xe87 ret:0x7f2de2dab680
 11800 ms  SECKEY_ECParamsToKeySize()
 11800 ms  0xe87 ret:0xff
 11800 ms  0xe87 PK11_DeriveWithFlags()
 11800 ms  0xe87 basekey:0x7f2de2e34e00
 11800 ms     | 0xe87 PK11_DeriveWithTemplate()
 11800 ms  0xe87 ret:0x7f2de368b600
 11800 ms  0xe87 PK11_Derive()
 11800 ms  0xe87 basekey:0x7f2de2dab680
 11800 ms     | 0xe87 PK11_DeriveWithTemplate()
 11800 ms  0xe87 ret:0x7f2de4321d80
 11800 ms  0xe87 PK11_DeriveWithFlags()
 11800 ms  0xe87 basekey:0x7f2de4321d80
 11800 ms     | 0xe87 PK11_DeriveWithTemplate()
 11800 ms  0xe87 ret:0x7f2de2e34e00
 11800 ms  0xe87 PK11_DeriveWithFlags()
 11800 ms  0xe87 basekey:0x7f2de4321d80
 11800 ms     | 0xe87 PK11_DeriveWithTemplate()
 11800 ms  0xe87 ret:0x7f2de2dab680
 11800 ms  0xe87 PK11_DeriveWithFlags()
 11800 ms  0xe87 basekey:0x7f2de4321d80
 11800 ms     | 0xe87 PK11_DeriveWithTemplate()
 11800 ms  0xe87 ret:0x7f2de368b600
 11800 ms  0xe87 PK11_Derive()
 11800 ms  0xe87 basekey:0x7f2de4321f00
 11800 ms     | 0xe87 PK11_DeriveWithTemplate()
 11801 ms  0xe87 ret:0x7f2de4321f80
 11801 ms  0xe87 PK11_DeriveWithFlags()
 11801 ms  0xe87 basekey:0x7f2de2dab680
 11801 ms     | 0xe87 PK11_DeriveWithTemplate()
 11801 ms  0xe87 ret:0x7f2de4321d80
 11801 ms  0xe87 PK11_DeriveWithFlags()
 11801 ms  0xe87 basekey:0x7f2de2dab680
 11801 ms     | 0xe87 PK11_DeriveWithTemplate()
 11801 ms  0xe87 ret:0x7f2de368b600
 11802 ms  SECKEY_ECParamsToKeySize()
 11802 ms  0xe87 ret:0x100
 11802 ms  SECKEY_ECParamsToBasePointOrderLen()
 11802 ms  0xe87 ret:0x100
 11802 ms  SECKEY_ECParamsToBasePointOrderLen()
 11802 ms  0xe87 ret:0x100
 11802 ms  0xe87 EC_ValidatePublicKey()
 11803 ms  0xe87 ret:0x0
 11805 ms  0xe87 PK11_DeriveWithFlags()
 11805 ms  0xe87 basekey:0x7f2de2dab680
 11805 ms     | 0xe87 PK11_DeriveWithTemplate()
 11805 ms  0xe87 ret:0x7f2de368b600
 11806 ms  0xe87 PK11_DeriveWithFlags()
 11806 ms  0xe87 basekey:0x7f2de4321b80
 11806 ms     | 0xe87 PK11_DeriveWithTemplate()
 11806 ms  0xe87 ret:0x7f2de368b600
 11806 ms  0xe87 PK11_DeriveWithFlags()
 11806 ms  0xe87 basekey:0x7f2de4321b80
 11806 ms     | 0xe87 PK11_DeriveWithTemplate()
 11806 ms  0xe87 ret:0x7f2de368b600
 11806 ms  0xe87 PK11_Encrypt()
 11806 ms  0xe87 symkey:0x7f2de36eca00
 11814 ms  0xe87 PK11_Encrypt()
 11814 ms  0xe87 symkey:0x7f2de4afe600
 11838 ms  0xe87 PK11_Encrypt()
 11838 ms  0xe87 symkey:0x7f2dd21ea500
           /* TID 0xe8f */
 11852 ms  0xe8f PR_Close()
 11852 ms  0xe8f fd:0x7f2de9213fd0
           /* TID 0xe87 */
 11858 ms  0xe87 PK11_Encrypt()
 11858 ms  0xe87 symkey:0x7f2de36eca00
 11864 ms  0xe87 SSL_ImportFD()
 11864 ms  0xe87 ret:0x7f2de9336190
 11864 ms  0xe87 SSL_AuthCertificateHook()
 11864 ms  0xe87 fd:0x7f2de9336190
 11864 ms  0xe87 ret:0x0
 11864 ms  0xe87 PR_Connect()
 11864 ms  0xe87 fd:0x7f2de9336190
 11899 ms  0xe87 PK11_Encrypt()
 11899 ms  0xe87 symkey:0x7f2de36ede80
           /* TID 0xe8f */
 11899 ms  0xe8f PR_Close()
 11899 ms  0xe8f fd:0x7f2de425fcd0
           /* TID 0xe87 */
 11901 ms  0xe87 SECKEY_CreateECPrivateKey()
 11901 ms  0xe87 cx:0x7f2df053ffc8
 11902 ms     | 0xe87 EC_ValidatePublicKey()
 11902 ms     | 0xe87 ret:0x0
 11902 ms  0xe87 ret:0x7f2decd8e820::7f2decd8e820  70 39 3b e4                                      p9;.
 11902 ms  0xe87 SECKEY_CreateECPrivateKey()
 11902 ms  0xe87 cx:0x7f2df053ffc8
 11902 ms     | 0xe87 EC_ValidatePublicKey()
 11904 ms     | 0xe87 ret:0x0
 11904 ms  0xe87 ret:0x7f2ded1da820::7f2ded1da820  80 fd 72 e4                                      ..r.
           /* TID 0xf21 */
 11910 ms  0xf21 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11910 ms  0xf21 ret:0x0
           /* TID 0xe8f */
 11911 ms  0xe8f PR_Close()
 11911 ms  0xe8f fd:0x7f2de4ecfb50
           /* TID 0xe87 */
 11911 ms  0xe87 SSL_AuthCertificateComplete()
 11911 ms  0xe87 fd:0x7f2de90fe070
 11911 ms  0xe87 err:0x0
 11911 ms     | 0xe87 PK11_DeriveWithFlags()
 11911 ms     | 0xe87 basekey:0x7f2de4321100
 11911 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11911 ms     | 0xe87 ret:0x7f2de368b600
 11911 ms     | 0xe87 PK11_DeriveWithFlags()
 11911 ms     | 0xe87 basekey:0x7f2de4321100
 11911 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11911 ms     | 0xe87 ret:0x7f2de4321f00
 11911 ms     | 0xe87 PK11_DeriveWithFlags()
 11911 ms     | 0xe87 basekey:0x7f2de4321100
 11911 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11911 ms     | 0xe87 ret:0x7f2de42c5f00
 11911 ms     | 0xe87 PK11_DeriveWithFlags()
 11911 ms     | 0xe87 basekey:0x7f2de36ed000
 11911 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11911 ms     | 0xe87 ret:0x7f2de4320e00
 11911 ms     | 0xe87 PK11_DeriveWithFlags()
 11911 ms     | 0xe87 basekey:0x7f2de36ed000
 11911 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11911 ms     | 0xe87 ret:0x7f2de4321280
 11911 ms     | 0xe87 PK11_DeriveWithFlags()
 11911 ms     | 0xe87 basekey:0x7f2de4321f00
 11911 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11911 ms     | 0xe87 ret:0x7f2de4321280
 11911 ms     | 0xe87 PK11_DeriveWithFlags()
 11911 ms     | 0xe87 basekey:0x7f2de4321f00
 11911 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11911 ms     | 0xe87 ret:0x7f2de4321380
 11911 ms     | 0xe87 PK11_DeriveWithFlags()
 11911 ms     | 0xe87 basekey:0x7f2de36ed000
 11911 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11911 ms     | 0xe87 ret:0x7f2de4321000
 11911 ms     | 0xe87 PK11_Encrypt()
 11911 ms     | 0xe87 symkey:0x7f2de4320e00
 11911 ms     | 0xe87 PK11_DeriveWithFlags()
 11911 ms     | 0xe87 basekey:0x7f2de368b600
 11911 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11911 ms     | 0xe87 ret:0x7f2de4321000
 11912 ms     | 0xe87 PK11_DeriveWithFlags()
 11912 ms     | 0xe87 basekey:0x7f2de368b600
 11912 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11912 ms     | 0xe87 ret:0x7f2de4321380
 11912 ms     | 0xe87 PK11_DeriveWithFlags()
 11912 ms     | 0xe87 basekey:0x7f2de4321100
 11912 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11912 ms     | 0xe87 ret:0x7f2de4320e00
 11912 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11912 ms     | 0xe87 privk:0x7f2decda1020::7f2decda1020  60 fa 72 e4                                      `.r.
 11912 ms     | 0xe87 privk:0x7f2decda1020::7f2decda1020  e5 e5 e5 e5                                      ....
 11912 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11912 ms     | 0xe87 privk:0x7f2decd9d820::7f2decd9d820  a0 f6 72 e4                                      ..r.
 11912 ms     | 0xe87 privk:0x7f2decd9d820::7f2decd9d820  e5 e5 e5 e5                                      ....
 11914 ms  0xe87 PK11_Encrypt()
 11914 ms  0xe87 symkey:0x7f2de4321000
 11914 ms  0xe87 PK11_Encrypt()
 11914 ms  0xe87 symkey:0x7f2de4321000
 11942 ms  0xe87 PK11_Derive()
 11942 ms  0xe87 basekey:0x7f2de36ed180
 11942 ms     | 0xe87 PK11_DeriveWithTemplate()
 11942 ms  0xe87 ret:0x7f2de36ed000
 11942 ms  0xe87 PK11_PubDeriveWithKDF()
 11942 ms  0xe87 seckey:0x7f2decd8e820
 11942 ms     | 0xe87 EC_ValidatePublicKey()
 11942 ms     | 0xe87 ret:0x0
 11943 ms  0xe87 ret:0x7f2de36ed180
 11943 ms  SECKEY_ECParamsToKeySize()
 11943 ms  0xe87 ret:0xff
 11943 ms  0xe87 PK11_DeriveWithFlags()
 11943 ms  0xe87 basekey:0x7f2de36ed000
 11943 ms     | 0xe87 PK11_DeriveWithTemplate()
 11943 ms  0xe87 ret:0x7f2de4321100
 11943 ms  0xe87 PK11_Derive()
 11943 ms  0xe87 basekey:0x7f2de36ed180
 11943 ms     | 0xe87 PK11_DeriveWithTemplate()
 11943 ms  0xe87 ret:0x7f2de4321380
 11943 ms  0xe87 PK11_DeriveWithFlags()
 11943 ms  0xe87 basekey:0x7f2de4321380
 11943 ms     | 0xe87 PK11_DeriveWithTemplate()
 11943 ms  0xe87 ret:0x7f2de36ed000
 11943 ms  0xe87 PK11_DeriveWithFlags()
 11943 ms  0xe87 basekey:0x7f2de4321380
 11943 ms     | 0xe87 PK11_DeriveWithTemplate()
 11943 ms  0xe87 ret:0x7f2de36ed180
 11943 ms  0xe87 PK11_DeriveWithFlags()
 11943 ms  0xe87 basekey:0x7f2de4321380
 11943 ms     | 0xe87 PK11_DeriveWithTemplate()
 11943 ms  0xe87 ret:0x7f2de4321100
 11943 ms  0xe87 PK11_Derive()
 11943 ms  0xe87 basekey:0x7f2de43b2d00
 11943 ms     | 0xe87 PK11_DeriveWithTemplate()
 11943 ms  0xe87 ret:0x7f2de43b2f00
 11943 ms  0xe87 PK11_DeriveWithFlags()
 11943 ms  0xe87 basekey:0x7f2de36ed180
 11943 ms     | 0xe87 PK11_DeriveWithTemplate()
 11943 ms  0xe87 ret:0x7f2de4321380
 11943 ms  0xe87 PK11_DeriveWithFlags()
 11943 ms  0xe87 basekey:0x7f2de36ed180
 11943 ms     | 0xe87 PK11_DeriveWithTemplate()
 11943 ms  0xe87 ret:0x7f2de4321100
 11944 ms  SECKEY_ECParamsToKeySize()
 11944 ms  0xe87 ret:0x100
 11944 ms  SECKEY_ECParamsToBasePointOrderLen()
 11944 ms  0xe87 ret:0x100
 11944 ms  SECKEY_ECParamsToBasePointOrderLen()
 11945 ms  0xe87 ret:0x100
 11945 ms  0xe87 EC_ValidatePublicKey()
 11946 ms  0xe87 ret:0x0
 11948 ms  0xe87 PK11_DeriveWithFlags()
 11948 ms  0xe87 basekey:0x7f2de36ed180
 11948 ms     | 0xe87 PK11_DeriveWithTemplate()
 11948 ms  0xe87 ret:0x7f2de4321100
 11948 ms  0xe87 SSL_AuthCertificateComplete()
 11948 ms  0xe87 fd:0x7f2de9336190
 11948 ms  0xe87 err:0x0
 11948 ms     | 0xe87 PK11_DeriveWithFlags()
 11948 ms     | 0xe87 basekey:0x7f2de43b2f00
 11948 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11948 ms     | 0xe87 ret:0x7f2de4321100
 11948 ms     | 0xe87 PK11_DeriveWithFlags()
 11948 ms     | 0xe87 basekey:0x7f2de43b2f00
 11948 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11948 ms     | 0xe87 ret:0x7f2de43b2d00
 11948 ms     | 0xe87 PK11_DeriveWithFlags()
 11948 ms     | 0xe87 basekey:0x7f2de43b2f00
 11948 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11948 ms     | 0xe87 ret:0x7f2de43b1c80
 11948 ms     | 0xe87 PK11_DeriveWithFlags()
 11948 ms     | 0xe87 basekey:0x7f2de36ed000
 11948 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11948 ms     | 0xe87 ret:0x7f2de43e6c80
 11948 ms     | 0xe87 PK11_DeriveWithFlags()
 11948 ms     | 0xe87 basekey:0x7f2de36ed000
 11948 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11948 ms     | 0xe87 ret:0x7f2de43e7400
 11948 ms     | 0xe87 PK11_DeriveWithFlags()
 11948 ms     | 0xe87 basekey:0x7f2de43b2d00
 11948 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11949 ms     | 0xe87 ret:0x7f2de43e7400
 11949 ms     | 0xe87 PK11_DeriveWithFlags()
 11949 ms     | 0xe87 basekey:0x7f2de43b2d00
 11949 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11949 ms     | 0xe87 ret:0x7f2de43e7480
 11949 ms     | 0xe87 PK11_DeriveWithFlags()
 11949 ms     | 0xe87 basekey:0x7f2de36ed000
 11949 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11949 ms     | 0xe87 ret:0x7f2de4321380
 11949 ms     | 0xe87 PK11_Encrypt()
 11949 ms     | 0xe87 symkey:0x7f2de43e6c80
 11949 ms     | 0xe87 PK11_DeriveWithFlags()
 11949 ms     | 0xe87 basekey:0x7f2de4321100
 11949 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11949 ms     | 0xe87 ret:0x7f2de4321380
 11949 ms     | 0xe87 PK11_DeriveWithFlags()
 11949 ms     | 0xe87 basekey:0x7f2de4321100
 11949 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11949 ms     | 0xe87 ret:0x7f2de43e7480
 11949 ms     | 0xe87 PK11_DeriveWithFlags()
 11949 ms     | 0xe87 basekey:0x7f2de43b2f00
 11949 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11949 ms     | 0xe87 ret:0x7f2de43e6c80
 11949 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11949 ms     | 0xe87 privk:0x7f2ded1da820::7f2ded1da820  80 fd 72 e4                                      ..r.
 11949 ms     | 0xe87 privk:0x7f2ded1da820::7f2ded1da820  e5 e5 e5 e5                                      ....
 11949 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11949 ms     | 0xe87 privk:0x7f2decd8e820::7f2decd8e820  70 39 3b e4                                      p9;.
 11949 ms     | 0xe87 privk:0x7f2decd8e820::7f2decd8e820  e5 e5 e5 e5                                      ....
           /* TID 0xe8f */
 11958 ms  0xe8f PR_Close()
 11958 ms  0xe8f fd:0x7f2de92439a0
           /* TID 0xee4 */
 11958 ms  0xee4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11958 ms  0xee4 ret:0x0
           /* TID 0xe87 */
 11958 ms  0xe87 PK11_Encrypt()
 11958 ms  0xe87 symkey:0x7f2de4321380
 11961 ms  0xe87 PK11_Encrypt()
 11961 ms  0xe87 symkey:0x7f2de4321380
 11962 ms  0xe87 SSL_AuthCertificateComplete()
 11962 ms  0xe87 fd:0x7f2de9284940
 11962 ms  0xe87 err:0x0
 11962 ms     | 0xe87 PK11_DeriveWithFlags()
 11962 ms     | 0xe87 basekey:0x7f2de4321f80
 11962 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11962 ms     | 0xe87 ret:0x7f2de36ed180
 11962 ms     | 0xe87 PK11_DeriveWithFlags()
 11962 ms     | 0xe87 basekey:0x7f2de4321f80
 11962 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11962 ms     | 0xe87 ret:0x7f2de36ed000
 11962 ms     | 0xe87 PK11_DeriveWithFlags()
 11962 ms     | 0xe87 basekey:0x7f2de4321f80
 11962 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11962 ms     | 0xe87 ret:0x7f2de43b2f00
 11962 ms     | 0xe87 PK11_DeriveWithFlags()
 11962 ms     | 0xe87 basekey:0x7f2de2e34e00
 11962 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11962 ms     | 0xe87 ret:0x7f2de43e7480
 11962 ms     | 0xe87 PK11_DeriveWithFlags()
 11962 ms     | 0xe87 basekey:0x7f2de2e34e00
 11962 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11962 ms     | 0xe87 ret:0x7f2de43b1180
 11962 ms     | 0xe87 PK11_DeriveWithFlags()
 11962 ms     | 0xe87 basekey:0x7f2de36ed000
 11962 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11962 ms     | 0xe87 ret:0x7f2de43b1180
 11962 ms     | 0xe87 PK11_DeriveWithFlags()
 11962 ms     | 0xe87 basekey:0x7f2de36ed000
 11962 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11962 ms     | 0xe87 ret:0x7f2de43b1280
 11962 ms     | 0xe87 PK11_DeriveWithFlags()
 11962 ms     | 0xe87 basekey:0x7f2de2e34e00
 11962 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11962 ms     | 0xe87 ret:0x7f2de4321d80
 11962 ms     | 0xe87 PK11_Encrypt()
 11962 ms     | 0xe87 symkey:0x7f2de43e7480
 11962 ms     | 0xe87 PK11_DeriveWithFlags()
 11962 ms     | 0xe87 basekey:0x7f2de36ed180
 11962 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11962 ms     | 0xe87 ret:0x7f2de4321d80
 11962 ms     | 0xe87 PK11_DeriveWithFlags()
 11962 ms     | 0xe87 basekey:0x7f2de36ed180
 11962 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11962 ms     | 0xe87 ret:0x7f2de43b1280
 11962 ms     | 0xe87 PK11_DeriveWithFlags()
 11962 ms     | 0xe87 basekey:0x7f2de4321f80
 11962 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 11963 ms     | 0xe87 ret:0x7f2de43e7480
 11963 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11963 ms     | 0xe87 privk:0x7f2ded1eb820::7f2ded1eb820  10 f5 72 e4                                      ..r.
 11963 ms     | 0xe87 privk:0x7f2ded1eb820::7f2ded1eb820  e5 e5 e5 e5                                      ....
 11963 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 11963 ms     | 0xe87 privk:0x7f2ded1e1020::7f2ded1e1020  40 f2 72 e4                                      @.r.
 11963 ms     | 0xe87 privk:0x7f2ded1e1020::7f2ded1e1020  e5 e5 e5 e5                                      ....
 11963 ms  0xe87 PK11_Encrypt()
 11963 ms  0xe87 symkey:0x7f2de4321d80
 11964 ms  0xe87 PK11_Encrypt()
 11964 ms  0xe87 symkey:0x7f2de4321000
 11985 ms  0xe87 PK11_DeriveWithFlags()
 11985 ms  0xe87 basekey:0x7f2de43e6c80
 11985 ms     | 0xe87 PK11_DeriveWithTemplate()
 11985 ms  0xe87 ret:0x7f2de2dab680
 11985 ms  0xe87 PK11_Encrypt()
 11985 ms  0xe87 symkey:0x7f2de4321380
           /* TID 0xe8f */
 12023 ms  0xe8f PR_Close()
 12023 ms  0xe8f fd:0x7f2de9284a30
           /* TID 0xe87 */
 12028 ms  0xe87 PK11_DeriveWithFlags()
 12028 ms  0xe87 basekey:0x7f2de4320e00
 12028 ms     | 0xe87 PK11_DeriveWithTemplate()
 12028 ms  0xe87 ret:0x7f2de2dab680
 12028 ms  0xe87 PK11_DeriveWithFlags()
 12028 ms  0xe87 basekey:0x7f2de4320e00
 12028 ms     | 0xe87 PK11_DeriveWithTemplate()
 12028 ms  0xe87 ret:0x7f2de2dab680
 12028 ms  0xe87 PK11_Encrypt()
 12028 ms  0xe87 symkey:0x7f2de4321000
 12049 ms  0xe87 PK11_Encrypt()
 12049 ms  0xe87 symkey:0x7f2de4321000
 12055 ms  0xe87 PK11_Encrypt()
 12055 ms  0xe87 symkey:0x7f2de36ede80
 12077 ms  0xe87 PK11_DeriveWithFlags()
 12077 ms  0xe87 basekey:0x7f2de43e7480
 12077 ms     | 0xe87 PK11_DeriveWithTemplate()
 12077 ms  0xe87 ret:0x7f2de2dab680
 12077 ms  0xe87 PK11_DeriveWithFlags()
 12077 ms  0xe87 basekey:0x7f2de43e7480
 12077 ms     | 0xe87 PK11_DeriveWithTemplate()
 12077 ms  0xe87 ret:0x7f2de2dab680
 12077 ms  0xe87 PR_Close()
 12077 ms  0xe87 fd:0x7f2de9284940
 12077 ms     | 0xe87 PK11_Encrypt()
 12077 ms     | 0xe87 symkey:0x7f2de4321d80
 12096 ms  0xe87 SSL_ImportFD()
 12096 ms  0xe87 ret:0x7f2de9284a00
 12096 ms  0xe87 SSL_AuthCertificateHook()
 12096 ms  0xe87 fd:0x7f2de9284a00
 12096 ms  0xe87 ret:0x0
 12097 ms  0xe87 PR_Connect()
 12097 ms  0xe87 fd:0x7f2de9284a00
 12134 ms  0xe87 SECKEY_CreateECPrivateKey()
 12134 ms  0xe87 cx:0x7f2df3d27c08
 12135 ms     | 0xe87 EC_ValidatePublicKey()
 12135 ms     | 0xe87 ret:0x0
 12135 ms  0xe87 ret:0x7f2de97ce820::7f2de97ce820  c0 de 2c e4                                      ..,.
 12135 ms  0xe87 SECKEY_CreateECPrivateKey()
 12135 ms  0xe87 cx:0x7f2df3d27c08
 12135 ms     | 0xe87 EC_ValidatePublicKey()
 12137 ms     | 0xe87 ret:0x0
 12137 ms  0xe87 ret:0x7f2decda8020::7f2decda8020  50 3b 3b e4                                      P;;.
 12158 ms  0xe87 PK11_Encrypt()
 12158 ms  0xe87 symkey:0x7f2de36ede80
 12159 ms  0xe87 SSL_ImportFD()
 12159 ms  0xe87 ret:0x7f2de9385b20
 12159 ms  0xe87 SSL_AuthCertificateHook()
 12159 ms  0xe87 fd:0x7f2de9385b20
 12159 ms  0xe87 ret:0x0
 12159 ms  0xe87 PR_Connect()
 12159 ms  0xe87 fd:0x7f2de9385b20
 12192 ms  0xe87 PK11_Derive()
 12192 ms  0xe87 basekey:0x7f2de43b2f00
 12192 ms     | 0xe87 PK11_DeriveWithTemplate()
 12192 ms  0xe87 ret:0x7f2de36ed000
 12192 ms  0xe87 PK11_PubDeriveWithKDF()
 12192 ms  0xe87 seckey:0x7f2de97ce820
 12193 ms     | 0xe87 EC_ValidatePublicKey()
 12193 ms     | 0xe87 ret:0x0
 12193 ms  0xe87 ret:0x7f2de43b2f00
 12193 ms  SECKEY_ECParamsToKeySize()
 12193 ms  0xe87 ret:0xff
 12193 ms  0xe87 PK11_DeriveWithFlags()
 12193 ms  0xe87 basekey:0x7f2de36ed000
 12193 ms     | 0xe87 PK11_DeriveWithTemplate()
 12193 ms  0xe87 ret:0x7f2de36ed180
 12193 ms  0xe87 PK11_Derive()
 12193 ms  0xe87 basekey:0x7f2de43b2f00
 12193 ms     | 0xe87 PK11_DeriveWithTemplate()
 12193 ms  0xe87 ret:0x7f2de43e7480
 12193 ms  0xe87 PK11_DeriveWithFlags()
 12193 ms  0xe87 basekey:0x7f2de43e7480
 12193 ms     | 0xe87 PK11_DeriveWithTemplate()
 12193 ms  0xe87 ret:0x7f2de36ed000
 12193 ms  0xe87 PK11_DeriveWithFlags()
 12193 ms  0xe87 basekey:0x7f2de43e7480
 12193 ms     | 0xe87 PK11_DeriveWithTemplate()
 12193 ms  0xe87 ret:0x7f2de43b2f00
 12193 ms  0xe87 PK11_DeriveWithFlags()
 12193 ms  0xe87 basekey:0x7f2de43e7480
 12193 ms     | 0xe87 PK11_DeriveWithTemplate()
 12193 ms  0xe87 ret:0x7f2de36ed180
 12193 ms  0xe87 PK11_Derive()
 12193 ms  0xe87 basekey:0x7f2de43b1180
 12193 ms     | 0xe87 PK11_DeriveWithTemplate()
 12193 ms  0xe87 ret:0x7f2de4321d80
 12193 ms  0xe87 PK11_DeriveWithFlags()
 12193 ms  0xe87 basekey:0x7f2de43b2f00
 12193 ms     | 0xe87 PK11_DeriveWithTemplate()
 12193 ms  0xe87 ret:0x7f2de43e7480
 12193 ms  0xe87 PK11_DeriveWithFlags()
 12193 ms  0xe87 basekey:0x7f2de43b2f00
 12194 ms     | 0xe87 PK11_DeriveWithTemplate()
 12194 ms  0xe87 ret:0x7f2de36ed180
 12194 ms  0xe87 PK11_DeriveWithFlags()
 12194 ms  0xe87 basekey:0x7f2de43b2f00
 12194 ms     | 0xe87 PK11_DeriveWithTemplate()
 12194 ms  0xe87 ret:0x7f2de36ed180
 12194 ms  0xe87 SSL_AuthCertificateComplete()
 12194 ms  0xe87 fd:0x7f2de9284a00
 12194 ms  0xe87 err:0x0
 12194 ms     | 0xe87 PK11_DeriveWithFlags()
 12194 ms     | 0xe87 basekey:0x7f2de4321d80
 12195 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12195 ms     | 0xe87 ret:0x7f2de36ed180
 12195 ms     | 0xe87 PK11_DeriveWithFlags()
 12195 ms     | 0xe87 basekey:0x7f2de4321d80
 12195 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12195 ms     | 0xe87 ret:0x7f2de43b1180
 12195 ms     | 0xe87 PK11_DeriveWithFlags()
 12195 ms     | 0xe87 basekey:0x7f2de4321d80
 12195 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12195 ms     | 0xe87 ret:0x7f2de2dab680
 12195 ms     | 0xe87 PK11_DeriveWithFlags()
 12195 ms     | 0xe87 basekey:0x7f2de36ed000
 12195 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12195 ms     | 0xe87 ret:0x7f2de2e34e00
 12195 ms     | 0xe87 PK11_DeriveWithFlags()
 12195 ms     | 0xe87 basekey:0x7f2de36ed000
 12195 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12195 ms     | 0xe87 ret:0x7f2de4321f80
 12195 ms     | 0xe87 PK11_DeriveWithFlags()
 12195 ms     | 0xe87 basekey:0x7f2de43b1180
 12195 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12195 ms     | 0xe87 ret:0x7f2de4321f80
 12195 ms     | 0xe87 PK11_DeriveWithFlags()
 12195 ms     | 0xe87 basekey:0x7f2de43b1180
 12195 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12195 ms     | 0xe87 ret:0x7f2de43b1280
 12195 ms     | 0xe87 PK11_DeriveWithFlags()
 12195 ms     | 0xe87 basekey:0x7f2de36ed000
 12195 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12195 ms     | 0xe87 ret:0x7f2de43e7480
 12195 ms     | 0xe87 PK11_Encrypt()
 12195 ms     | 0xe87 symkey:0x7f2de2e34e00
 12195 ms     | 0xe87 PK11_DeriveWithFlags()
 12195 ms     | 0xe87 basekey:0x7f2de36ed180
 12195 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12195 ms     | 0xe87 ret:0x7f2de43e7480
 12195 ms     | 0xe87 PK11_DeriveWithFlags()
 12195 ms     | 0xe87 basekey:0x7f2de36ed180
 12195 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12195 ms     | 0xe87 ret:0x7f2de43b1280
 12195 ms     | 0xe87 PK11_DeriveWithFlags()
 12195 ms     | 0xe87 basekey:0x7f2de4321d80
 12195 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12195 ms     | 0xe87 ret:0x7f2de2e34e00
 12195 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 12195 ms     | 0xe87 privk:0x7f2decda8020::7f2decda8020  50 3b 3b e4                                      P;;.
 12195 ms     | 0xe87 privk:0x7f2decda8020::7f2decda8020  e5 e5 e5 e5                                      ....
 12195 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 12195 ms     | 0xe87 privk:0x7f2de97ce820::7f2de97ce820  c0 de 2c e4                                      ..,.
 12196 ms     | 0xe87 privk:0x7f2de97ce820::7f2de97ce820  e5 e5 e5 e5                                      ....
 12196 ms  0xe87 PK11_Encrypt()
 12196 ms  0xe87 symkey:0x7f2de43e7480
 12196 ms  0xe87 PK11_Encrypt()
 12196 ms  0xe87 symkey:0x7f2de43e7480
 12196 ms  0xe87 PR_Close()
 12196 ms  0xe87 fd:0x7f2de9385b20
 12197 ms  0xe87 PK11_Encrypt()
 12197 ms  0xe87 symkey:0x7f2de43e7480
 12249 ms  0xe87 PK11_Encrypt()
 12249 ms  0xe87 symkey:0x7f2de36ede80
           /* TID 0xe8f */
 12250 ms  0xe8f PR_Close()
 12250 ms  0xe8f fd:0x7f2de36d99d0
           /* TID 0xe87 */
 12310 ms  0xe87 PK11_DeriveWithFlags()
 12310 ms  0xe87 basekey:0x7f2de2e34e00
 12310 ms     | 0xe87 PK11_DeriveWithTemplate()
 12310 ms  0xe87 ret:0x7f2de43b2f00
 12310 ms  0xe87 PK11_DeriveWithFlags()
 12310 ms  0xe87 basekey:0x7f2de2e34e00
 12310 ms     | 0xe87 PK11_DeriveWithTemplate()
 12310 ms  0xe87 ret:0x7f2de43b2f00
 12310 ms  0xe87 PK11_Encrypt()
 12310 ms  0xe87 symkey:0x7f2de43e7480
 12332 ms  0xe87 PK11_Encrypt()
 12332 ms  0xe87 symkey:0x7f2de43e7480
 12391 ms  0xe87 PK11_Encrypt()
 12391 ms  0xe87 symkey:0x7f2de4321380
 12391 ms  0xe87 PK11_Encrypt()
 12391 ms  0xe87 symkey:0x7f2de4321380
 12391 ms  0xe87 PK11_Encrypt()
 12391 ms  0xe87 symkey:0x7f2de4321380
 12411 ms  0xe87 PK11_Encrypt()
 12411 ms  0xe87 symkey:0x7f2de36ede80
           /* TID 0xe8f */
 12412 ms  0xe8f PR_Close()
 12412 ms  0xe8f fd:0x7f2de9336c40
           /* TID 0xe87 */
 12438 ms  0xe87 SSL_ImportFD()
 12438 ms  0xe87 ret:0x7f2de9559f10
 12438 ms  0xe87 SSL_AuthCertificateHook()
 12438 ms  0xe87 fd:0x7f2de9559f10
 12438 ms  0xe87 ret:0x0
 12438 ms  0xe87 PR_Connect()
 12438 ms  0xe87 fd:0x7f2de9559f10
 12439 ms  0xe87 PK11_Encrypt()
 12439 ms  0xe87 symkey:0x7f2de2daa700
           /* TID 0xe8f */
 12440 ms  0xe8f PR_Close()
 12440 ms  0xe8f fd:0x7f2de95847f0
           /* TID 0xe87 */
 12442 ms  0xe87 PK11_Encrypt()
 12442 ms  0xe87 symkey:0x7f2de2daa700
 12454 ms  0xe87 SSL_ImportFD()
 12454 ms  0xe87 ret:0x7f2de9593070
 12454 ms  0xe87 SSL_AuthCertificateHook()
 12454 ms  0xe87 fd:0x7f2de9593070
 12454 ms  0xe87 ret:0x0
 12454 ms  0xe87 PR_Connect()
 12454 ms  0xe87 fd:0x7f2de9593070
 12456 ms  0xe87 SSL_ImportFD()
 12456 ms  0xe87 ret:0x7f2de95cc670
 12456 ms  0xe87 SSL_AuthCertificateHook()
 12456 ms  0xe87 fd:0x7f2de95cc670
 12456 ms  0xe87 ret:0x0
 12456 ms  0xe87 PR_Connect()
 12456 ms  0xe87 fd:0x7f2de95cc670
 12457 ms  0xe87 SSL_ImportFD()
 12457 ms  0xe87 ret:0x7f2de9604130
 12457 ms  0xe87 SSL_AuthCertificateHook()
 12457 ms  0xe87 fd:0x7f2de9604130
 12457 ms  0xe87 ret:0x0
 12457 ms  0xe87 PR_Connect()
 12457 ms  0xe87 fd:0x7f2de9604130
           /* TID 0xe8f */
 12461 ms  0xe8f PR_Close()
 12461 ms  0xe8f fd:0x7f2de95cce80
 12464 ms  0xe8f PR_Close()
 12464 ms  0xe8f fd:0x7f2de93853a0
           /* TID 0xe87 */
 12491 ms  0xe87 SECKEY_CreateECPrivateKey()
 12491 ms  0xe87 cx:0x7f2df3d28aa8
 12491 ms     | 0xe87 EC_ValidatePublicKey()
 12491 ms     | 0xe87 ret:0x0
 12492 ms  0xe87 ret:0x7f2ded26a820::7f2ded26a820  50 86 ab e4                                      P...
 12492 ms  0xe87 SECKEY_CreateECPrivateKey()
 12492 ms  0xe87 cx:0x7f2df3d28aa8
 12492 ms     | 0xe87 EC_ValidatePublicKey()
 12494 ms     | 0xe87 ret:0x0
 12494 ms  0xe87 ret:0x7f2ded26d820::7f2ded26d820  40 f2 72 e4                                      @.r.
 12495 ms  0xe87 SECKEY_CreateECPrivateKey()
 12495 ms  0xe87 cx:0x7f2df3d28c48
 12495 ms     | 0xe87 EC_ValidatePublicKey()
 12495 ms     | 0xe87 ret:0x0
 12495 ms  0xe87 ret:0x7f2ded270020::7f2ded270020  d0 88 ab e4                                      ....
 12495 ms  0xe87 SECKEY_CreateECPrivateKey()
 12495 ms  0xe87 cx:0x7f2df3d28c48
 12496 ms     | 0xe87 EC_ValidatePublicKey()
 12498 ms     | 0xe87 ret:0x0
 12498 ms  0xe87 ret:0x7f2ded272020::7f2ded272020  b0 8a ab e4                                      ....
 12500 ms  0xe87 SECKEY_CreateECPrivateKey()
 12500 ms  0xe87 cx:0x7f2df3d28de8
 12500 ms     | 0xe87 EC_ValidatePublicKey()
 12500 ms     | 0xe87 ret:0x0
 12500 ms  0xe87 ret:0x7f2ded274820::7f2ded274820  f0 8b ab e4                                      ....
 12500 ms  0xe87 SECKEY_CreateECPrivateKey()
 12500 ms  0xe87 cx:0x7f2df3d28de8
 12501 ms     | 0xe87 EC_ValidatePublicKey()
 12502 ms     | 0xe87 ret:0x0
 12502 ms  0xe87 ret:0x7f2ded276820::7f2ded276820  b0 50 3e e5                                      .P>.
 12550 ms  0xe87 PK11_Derive()
 12550 ms  0xe87 basekey:0x7f2de43b2f00
 12550 ms     | 0xe87 PK11_DeriveWithTemplate()
 12550 ms  0xe87 ret:0x7f2de36ed000
 12550 ms  0xe87 PK11_PubDeriveWithKDF()
 12550 ms  0xe87 seckey:0x7f2ded26a820
 12550 ms     | 0xe87 EC_ValidatePublicKey()
 12550 ms     | 0xe87 ret:0x0
 12551 ms  0xe87 ret:0x7f2de43b2f00
 12551 ms  SECKEY_ECParamsToKeySize()
 12551 ms  0xe87 ret:0xff
 12551 ms  0xe87 PK11_DeriveWithFlags()
 12551 ms  0xe87 basekey:0x7f2de36ed000
 12551 ms     | 0xe87 PK11_DeriveWithTemplate()
 12551 ms  0xe87 ret:0x7f2de4321d80
 12551 ms  0xe87 PK11_Derive()
 12551 ms  0xe87 basekey:0x7f2de43b2f00
 12551 ms     | 0xe87 PK11_DeriveWithTemplate()
 12551 ms  0xe87 ret:0x7f2de43b1280
 12551 ms  0xe87 PK11_DeriveWithFlags()
 12551 ms  0xe87 basekey:0x7f2de43b1280
 12551 ms     | 0xe87 PK11_DeriveWithTemplate()
 12551 ms  0xe87 ret:0x7f2de36ed000
 12551 ms  0xe87 PK11_DeriveWithFlags()
 12551 ms  0xe87 basekey:0x7f2de43b1280
 12551 ms     | 0xe87 PK11_DeriveWithTemplate()
 12551 ms  0xe87 ret:0x7f2de43b2f00
 12551 ms  0xe87 PK11_DeriveWithFlags()
 12551 ms  0xe87 basekey:0x7f2de43b1280
 12551 ms     | 0xe87 PK11_DeriveWithTemplate()
 12551 ms  0xe87 ret:0x7f2de4321d80
 12551 ms  0xe87 PK11_Derive()
 12551 ms  0xe87 basekey:0x7f2de6148980
 12551 ms     | 0xe87 PK11_DeriveWithTemplate()
 12551 ms  0xe87 ret:0x7f2de6148a80
 12551 ms  0xe87 PK11_DeriveWithFlags()
 12551 ms  0xe87 basekey:0x7f2de43b2f00
 12551 ms     | 0xe87 PK11_DeriveWithTemplate()
 12551 ms  0xe87 ret:0x7f2de43b1280
 12551 ms  0xe87 PK11_DeriveWithFlags()
 12551 ms  0xe87 basekey:0x7f2de43b2f00
 12551 ms     | 0xe87 PK11_DeriveWithTemplate()
 12551 ms  0xe87 ret:0x7f2de4321d80
 12554 ms  0xe87 PK11_Derive()
 12554 ms  0xe87 basekey:0x7f2de4321d80
 12554 ms     | 0xe87 PK11_DeriveWithTemplate()
 12554 ms  0xe87 ret:0x7f2de6148980
 12554 ms  0xe87 PK11_PubDeriveWithKDF()
 12554 ms  0xe87 seckey:0x7f2ded270020
 12554 ms     | 0xe87 EC_ValidatePublicKey()
 12554 ms     | 0xe87 ret:0x0
 12555 ms  0xe87 ret:0x7f2de4321d80
 12555 ms  SECKEY_ECParamsToKeySize()
 12555 ms  0xe87 ret:0xff
 12555 ms  0xe87 PK11_DeriveWithFlags()
 12555 ms  0xe87 basekey:0x7f2de6148980
 12555 ms     | 0xe87 PK11_DeriveWithTemplate()
 12555 ms  0xe87 ret:0x7f2de6148d80
 12555 ms  0xe87 PK11_Derive()
 12555 ms  0xe87 basekey:0x7f2de4321d80
 12555 ms     | 0xe87 PK11_DeriveWithTemplate()
 12555 ms  0xe87 ret:0x7f2de6149480
 12555 ms  0xe87 PK11_DeriveWithFlags()
 12555 ms  0xe87 basekey:0x7f2de6149480
 12555 ms     | 0xe87 PK11_DeriveWithTemplate()
 12555 ms  0xe87 ret:0x7f2de6148980
 12555 ms  0xe87 PK11_DeriveWithFlags()
 12555 ms  0xe87 basekey:0x7f2de6149480
 12555 ms     | 0xe87 PK11_DeriveWithTemplate()
 12555 ms  0xe87 ret:0x7f2de4321d80
 12555 ms  0xe87 PK11_DeriveWithFlags()
 12555 ms  0xe87 basekey:0x7f2de6149480
 12555 ms     | 0xe87 PK11_DeriveWithTemplate()
 12555 ms  0xe87 ret:0x7f2de6148d80
 12555 ms  0xe87 PK11_Derive()
 12555 ms  0xe87 basekey:0x7f2de6149b00
 12555 ms     | 0xe87 PK11_DeriveWithTemplate()
 12555 ms  0xe87 ret:0x7f2de6149f80
 12555 ms  0xe87 PK11_DeriveWithFlags()
 12555 ms  0xe87 basekey:0x7f2de4321d80
 12555 ms     | 0xe87 PK11_DeriveWithTemplate()
 12555 ms  0xe87 ret:0x7f2de6149480
 12556 ms  0xe87 PK11_DeriveWithFlags()
 12556 ms  0xe87 basekey:0x7f2de4321d80
 12556 ms     | 0xe87 PK11_DeriveWithTemplate()
 12556 ms  0xe87 ret:0x7f2de6148d80
 12557 ms  0xe87 PK11_DeriveWithFlags()
 12557 ms  0xe87 basekey:0x7f2de43b2f00
 12558 ms     | 0xe87 PK11_DeriveWithTemplate()
 12558 ms  0xe87 ret:0x7f2de6148d80
 12559 ms  0xe87 PK11_Derive()
 12559 ms  0xe87 basekey:0x7f2de6148d80
 12559 ms     | 0xe87 PK11_DeriveWithTemplate()
 12559 ms  0xe87 ret:0x7f2de6149b00
 12559 ms  0xe87 PK11_PubDeriveWithKDF()
 12559 ms  0xe87 seckey:0x7f2ded274820
 12559 ms     | 0xe87 EC_ValidatePublicKey()
 12559 ms     | 0xe87 ret:0x0
 12559 ms  0xe87 ret:0x7f2de6148d80
 12559 ms  SECKEY_ECParamsToKeySize()
 12559 ms  0xe87 ret:0xff
 12559 ms  0xe87 PK11_DeriveWithFlags()
 12559 ms  0xe87 basekey:0x7f2de6149b00
 12559 ms     | 0xe87 PK11_DeriveWithTemplate()
 12559 ms  0xe87 ret:0x7f2de6174600
 12559 ms  0xe87 PK11_Derive()
 12559 ms  0xe87 basekey:0x7f2de6148d80
 12559 ms     | 0xe87 PK11_DeriveWithTemplate()
 12559 ms  0xe87 ret:0x7f2de6174700
 12560 ms  0xe87 PK11_DeriveWithFlags()
 12560 ms  0xe87 basekey:0x7f2de6174700
 12560 ms     | 0xe87 PK11_DeriveWithTemplate()
 12560 ms  0xe87 ret:0x7f2de6149b00
 12560 ms  0xe87 PK11_DeriveWithFlags()
 12560 ms  0xe87 basekey:0x7f2de6174700
 12560 ms     | 0xe87 PK11_DeriveWithTemplate()
 12560 ms  0xe87 ret:0x7f2de6148d80
 12560 ms  0xe87 PK11_DeriveWithFlags()
 12560 ms  0xe87 basekey:0x7f2de6174700
 12560 ms     | 0xe87 PK11_DeriveWithTemplate()
 12560 ms  0xe87 ret:0x7f2de6174600
 12560 ms  0xe87 PK11_Derive()
 12560 ms  0xe87 basekey:0x7f2de6174780
 12560 ms     | 0xe87 PK11_DeriveWithTemplate()
 12560 ms  0xe87 ret:0x7f2de6185080
 12560 ms  0xe87 PK11_DeriveWithFlags()
 12560 ms  0xe87 basekey:0x7f2de6148d80
 12560 ms     | 0xe87 PK11_DeriveWithTemplate()
 12560 ms  0xe87 ret:0x7f2de6174700
 12560 ms  0xe87 PK11_DeriveWithFlags()
 12560 ms  0xe87 basekey:0x7f2de6148d80
 12560 ms     | 0xe87 PK11_DeriveWithTemplate()
 12560 ms  0xe87 ret:0x7f2de6174600
 12561 ms  0xe87 PK11_DeriveWithFlags()
 12561 ms  0xe87 basekey:0x7f2de4321d80
 12561 ms     | 0xe87 PK11_DeriveWithTemplate()
 12561 ms  0xe87 ret:0x7f2de6174600
 12566 ms  0xe87 PK11_DeriveWithFlags()
 12566 ms  0xe87 basekey:0x7f2de6148d80
 12566 ms     | 0xe87 PK11_DeriveWithTemplate()
 12566 ms  0xe87 ret:0x7f2de6174600
           /* TID 0xe8f */
 12567 ms  0xe8f PR_Close()
 12567 ms  0xe8f fd:0x7f2de9559ee0
           /* TID 0xe87 */
 12567 ms  0xe87 PK11_Encrypt()
 12567 ms  0xe87 symkey:0x7f2de2daa700
 12568 ms  0xe87 PR_Connect()
 12568 ms  0xe87 fd:0x7f2de9625340
           /* TID 0xe8f */
 12596 ms  0xe8f PR_Close()
 12596 ms  0xe8f fd:0x7f2de9336d60
           /* TID 0xe87 */
 12673 ms  0xe87 PK11_Encrypt()
 12673 ms  0xe87 symkey:0x7f2de36ede80
 12674 ms  0xe87 SSL_ImportFD()
 12674 ms  0xe87 ret:0x7f2de96af8e0
 12674 ms  0xe87 SSL_AuthCertificateHook()
 12674 ms  0xe87 fd:0x7f2de96af8e0
 12674 ms  0xe87 ret:0x0
 12674 ms  0xe87 PR_Connect()
 12674 ms  0xe87 fd:0x7f2de96af8e0
 12688 ms  0xe87 SSL_ImportFD()
 12688 ms  0xe87 ret:0x7f2de96afa30
 12688 ms  0xe87 SSL_AuthCertificateHook()
 12688 ms  0xe87 fd:0x7f2de96afa30
 12688 ms  0xe87 ret:0x0
 12688 ms  0xe87 PR_Connect()
 12688 ms  0xe87 fd:0x7f2de96afa30
           /* TID 0xe8f */
 12701 ms  0xe8f PR_Close()
 12701 ms  0xe8f fd:0x7f2de96252e0
           /* TID 0xf21 */
 12701 ms  0xf21 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12701 ms  0xf21 ret:0x0
           /* TID 0xe87 */
 12702 ms  0xe87 SSL_AuthCertificateComplete()
 12702 ms  0xe87 fd:0x7f2de9593070
 12702 ms  0xe87 err:0x0
 12702 ms     | 0xe87 PK11_DeriveWithFlags()
 12702 ms     | 0xe87 basekey:0x7f2de6148a80
 12702 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12702 ms     | 0xe87 ret:0x7f2de6174600
 12702 ms     | 0xe87 PK11_DeriveWithFlags()
 12702 ms     | 0xe87 basekey:0x7f2de6148a80
 12702 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12702 ms     | 0xe87 ret:0x7f2de6174780
 12702 ms     | 0xe87 PK11_DeriveWithFlags()
 12702 ms     | 0xe87 basekey:0x7f2de6148a80
 12702 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12702 ms     | 0xe87 ret:0x7f2de61c9580
 12702 ms     | 0xe87 PK11_DeriveWithFlags()
 12702 ms     | 0xe87 basekey:0x7f2de36ed000
 12702 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12702 ms     | 0xe87 ret:0x7f2de61c9680
 12702 ms     | 0xe87 PK11_DeriveWithFlags()
 12702 ms     | 0xe87 basekey:0x7f2de36ed000
 12702 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12702 ms     | 0xe87 ret:0x7f2de61c9f80
 12702 ms     | 0xe87 PK11_DeriveWithFlags()
 12702 ms     | 0xe87 basekey:0x7f2de6174780
 12702 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12702 ms     | 0xe87 ret:0x7f2de61c9f80
 12702 ms     | 0xe87 PK11_DeriveWithFlags()
 12702 ms     | 0xe87 basekey:0x7f2de6174780
 12702 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12702 ms     | 0xe87 ret:0x7f2de7d86680
 12702 ms     | 0xe87 PK11_DeriveWithFlags()
 12702 ms     | 0xe87 basekey:0x7f2de36ed000
 12702 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12702 ms     | 0xe87 ret:0x7f2de43b1280
 12702 ms     | 0xe87 PK11_Encrypt()
 12702 ms     | 0xe87 symkey:0x7f2de61c9680
 12702 ms     | 0xe87 PK11_DeriveWithFlags()
 12702 ms     | 0xe87 basekey:0x7f2de6174600
 12702 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12702 ms     | 0xe87 ret:0x7f2de43b1280
 12702 ms     | 0xe87 PK11_DeriveWithFlags()
 12702 ms     | 0xe87 basekey:0x7f2de6174600
 12702 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12702 ms     | 0xe87 ret:0x7f2de7d86680
 12702 ms     | 0xe87 PK11_DeriveWithFlags()
 12702 ms     | 0xe87 basekey:0x7f2de6148a80
 12702 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12702 ms     | 0xe87 ret:0x7f2de61c9680
 12703 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 12703 ms     | 0xe87 privk:0x7f2ded26d820::7f2ded26d820  40 f2 72 e4                                      @.r.
 12703 ms     | 0xe87 privk:0x7f2ded26d820::7f2ded26d820  e5 e5 e5 e5                                      ....
 12703 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 12703 ms     | 0xe87 privk:0x7f2ded26a820::7f2ded26a820  50 86 ab e4                                      P...
 12703 ms     | 0xe87 privk:0x7f2ded26a820::7f2ded26a820  e5 e5 e5 e5                                      ....
 12703 ms  0xe87 PK11_Encrypt()
 12703 ms  0xe87 symkey:0x7f2de43b1280
 12703 ms  0xe87 PK11_Encrypt()
 12703 ms  0xe87 symkey:0x7f2de43b1280
 12711 ms  0xe87 SECKEY_CreateECPrivateKey()
 12711 ms  0xe87 cx:0x7f2df3d29468
 12712 ms     | 0xe87 EC_ValidatePublicKey()
 12712 ms     | 0xe87 ret:0x0
 12712 ms  0xe87 ret:0x7f2ded26d020::7f2ded26d020  b0 85 ab e4                                      ....
 12712 ms  0xe87 SECKEY_CreateECPrivateKey()
 12712 ms  0xe87 cx:0x7f2df3d29468
 12714 ms     | 0xe87 EC_ValidatePublicKey()
 12716 ms     | 0xe87 ret:0x0
 12716 ms  0xe87 ret:0x7f2ded27b020::7f2ded27b020  20 2e e3 e2                                       ...
 12740 ms  0xe87 PK11_DeriveWithFlags()
 12740 ms  0xe87 basekey:0x7f2de61c9680
 12740 ms     | 0xe87 PK11_DeriveWithTemplate()
 12741 ms  0xe87 ret:0x7f2de43b2f00
 12741 ms  0xe87 PK11_DeriveWithFlags()
 12741 ms  0xe87 basekey:0x7f2de61c9680
 12741 ms     | 0xe87 PK11_DeriveWithTemplate()
 12741 ms  0xe87 ret:0x7f2de43b2f00
 12741 ms  0xe87 PK11_Encrypt()
 12741 ms  0xe87 symkey:0x7f2de43b1280
 12744 ms  0xe87 SECKEY_CreateECPrivateKey()
 12744 ms  0xe87 cx:0x7f2df3d28908
 12745 ms     | 0xe87 EC_ValidatePublicKey()
 12745 ms     | 0xe87 ret:0x0
 12745 ms  0xe87 ret:0x7f2ded90e820::7f2ded90e820  90 f2 72 e4                                      ..r.
 12745 ms  0xe87 SECKEY_CreateECPrivateKey()
 12745 ms  0xe87 cx:0x7f2df3d28908
 12747 ms     | 0xe87 EC_ValidatePublicKey()
 12757 ms     | 0xe87 ret:0x0
 12757 ms  0xe87 ret:0x7f2ded912820::7f2ded912820  90 f7 72 e4                                      ..r.
           /* TID 0xe8f */
 12764 ms  0xe8f PR_Close()
 12764 ms  0xe8f fd:0x7f2de90fe0a0
           /* TID 0xee4 */
 12765 ms  0xee4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12765 ms  0xee4 ret:0x0
           /* TID 0xe8f */
 12765 ms  0xe8f PR_Close()
 12765 ms  0xe8f fd:0x7f2de36c5dc0
           /* TID 0xe87 */
 12766 ms  0xe87 SSL_AuthCertificateComplete()
 12766 ms  0xe87 fd:0x7f2de9604130
 12766 ms  0xe87 err:0x0
 12766 ms     | 0xe87 PK11_DeriveWithFlags()
 12766 ms     | 0xe87 basekey:0x7f2de6185080
 12766 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12766 ms     | 0xe87 ret:0x7f2de43b2f00
 12766 ms     | 0xe87 PK11_DeriveWithFlags()
 12766 ms     | 0xe87 basekey:0x7f2de6185080
 12766 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12766 ms     | 0xe87 ret:0x7f2de36ed000
 12766 ms     | 0xe87 PK11_DeriveWithFlags()
 12766 ms     | 0xe87 basekey:0x7f2de6185080
 12766 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12766 ms     | 0xe87 ret:0x7f2de6148a80
 12766 ms     | 0xe87 PK11_DeriveWithFlags()
 12766 ms     | 0xe87 basekey:0x7f2de6149b00
 12766 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12766 ms     | 0xe87 ret:0x7f2de7d86680
 12766 ms     | 0xe87 PK11_DeriveWithFlags()
 12766 ms     | 0xe87 basekey:0x7f2de6149b00
 12766 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12766 ms     | 0xe87 ret:0x7f2de2e6b980
 12766 ms     | 0xe87 PK11_DeriveWithFlags()
 12766 ms     | 0xe87 basekey:0x7f2de36ed000
 12766 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12766 ms     | 0xe87 ret:0x7f2de2e6b980
 12766 ms     | 0xe87 PK11_DeriveWithFlags()
 12766 ms     | 0xe87 basekey:0x7f2de36ed000
 12766 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12766 ms     | 0xe87 ret:0x7f2de6190080
 12766 ms     | 0xe87 PK11_DeriveWithFlags()
 12766 ms     | 0xe87 basekey:0x7f2de6149b00
 12766 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12766 ms     | 0xe87 ret:0x7f2de6174700
 12766 ms     | 0xe87 PK11_Encrypt()
 12766 ms     | 0xe87 symkey:0x7f2de7d86680
 12767 ms     | 0xe87 PK11_DeriveWithFlags()
 12767 ms     | 0xe87 basekey:0x7f2de43b2f00
 12767 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12767 ms     | 0xe87 ret:0x7f2de6174700
 12767 ms     | 0xe87 PK11_DeriveWithFlags()
 12767 ms     | 0xe87 basekey:0x7f2de43b2f00
 12767 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12767 ms     | 0xe87 ret:0x7f2de6190080
 12767 ms     | 0xe87 PK11_DeriveWithFlags()
 12767 ms     | 0xe87 basekey:0x7f2de6185080
 12767 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12767 ms     | 0xe87 ret:0x7f2de7d86680
 12767 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 12767 ms     | 0xe87 privk:0x7f2ded276820::7f2ded276820  b0 50 3e e5                                      .P>.
 12767 ms     | 0xe87 privk:0x7f2ded276820::7f2ded276820  e5 e5 e5 e5                                      ....
 12767 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 12767 ms     | 0xe87 privk:0x7f2ded274820::7f2ded274820  f0 8b ab e4                                      ....
 12768 ms     | 0xe87 privk:0x7f2ded274820::7f2ded274820  e5 e5 e5 e5                                      ....
 12768 ms  0xe87 PK11_Encrypt()
 12768 ms  0xe87 symkey:0x7f2de36ede80
 12768 ms  0xe87 PK11_Encrypt()
 12768 ms  0xe87 symkey:0x7f2de6174700
 12772 ms  0xe87 PK11_Encrypt()
 12772 ms  0xe87 symkey:0x7f2de43b1280
 12772 ms  0xe87 PK11_Derive()
 12772 ms  0xe87 basekey:0x7f2de6148d80
 12772 ms     | 0xe87 PK11_DeriveWithTemplate()
 12772 ms  0xe87 ret:0x7f2de6149b00
 12772 ms  0xe87 PK11_PubDeriveWithKDF()
 12772 ms  0xe87 seckey:0x7f2ded26d020
 12772 ms     | 0xe87 EC_ValidatePublicKey()
 12772 ms     | 0xe87 ret:0x0
 12773 ms  0xe87 ret:0x7f2de6148d80
 12773 ms  SECKEY_ECParamsToKeySize()
 12773 ms  0xe87 ret:0xff
 12773 ms  0xe87 PK11_DeriveWithFlags()
 12773 ms  0xe87 basekey:0x7f2de6149b00
 12773 ms     | 0xe87 PK11_DeriveWithTemplate()
 12773 ms  0xe87 ret:0x7f2de6185080
 12773 ms  0xe87 PK11_Derive()
 12773 ms  0xe87 basekey:0x7f2de6148d80
 12773 ms     | 0xe87 PK11_DeriveWithTemplate()
 12773 ms  0xe87 ret:0x7f2de6190080
 12773 ms  0xe87 PK11_DeriveWithFlags()
 12773 ms  0xe87 basekey:0x7f2de6190080
 12773 ms     | 0xe87 PK11_DeriveWithTemplate()
 12773 ms  0xe87 ret:0x7f2de6149b00
 12773 ms  0xe87 PK11_DeriveWithFlags()
 12773 ms  0xe87 basekey:0x7f2de6190080
 12773 ms     | 0xe87 PK11_DeriveWithTemplate()
 12773 ms  0xe87 ret:0x7f2de6148d80
 12773 ms  0xe87 PK11_DeriveWithFlags()
 12773 ms  0xe87 basekey:0x7f2de6190080
 12773 ms     | 0xe87 PK11_DeriveWithTemplate()
 12773 ms  0xe87 ret:0x7f2de6185080
 12773 ms  0xe87 PK11_Derive()
 12773 ms  0xe87 basekey:0x7f2de6190c00
 12773 ms     | 0xe87 PK11_DeriveWithTemplate()
 12773 ms  0xe87 ret:0x7f2de7df6e80
 12773 ms  0xe87 PK11_DeriveWithFlags()
 12773 ms  0xe87 basekey:0x7f2de6148d80
 12773 ms     | 0xe87 PK11_DeriveWithTemplate()
 12773 ms  0xe87 ret:0x7f2de6190080
 12773 ms  0xe87 PK11_DeriveWithFlags()
 12773 ms  0xe87 basekey:0x7f2de6148d80
 12773 ms     | 0xe87 PK11_DeriveWithTemplate()
 12773 ms  0xe87 ret:0x7f2de6185080
 12777 ms  0xe87 PK11_DeriveWithFlags()
 12777 ms  0xe87 basekey:0x7f2de6148d80
 12777 ms     | 0xe87 PK11_DeriveWithTemplate()
 12777 ms  0xe87 ret:0x7f2de6185080
 12783 ms  0xe87 PK11_Encrypt()
 12783 ms  0xe87 symkey:0x7f2de43b1280
           /* TID 0xe8f */
 12784 ms  0xe8f PR_Close()
 12784 ms  0xe8f fd:0x7f2de9284a30
           /* TID 0xe87 */
 12805 ms  0xe87 PK11_DeriveWithFlags()
 12805 ms  0xe87 basekey:0x7f2de7d86680
 12805 ms     | 0xe87 PK11_DeriveWithTemplate()
 12805 ms  0xe87 ret:0x7f2de6185080
 12805 ms  0xe87 PK11_DeriveWithFlags()
 12805 ms  0xe87 basekey:0x7f2de7d86680
 12805 ms     | 0xe87 PK11_DeriveWithTemplate()
 12805 ms  0xe87 ret:0x7f2de6185080
 12805 ms  0xe87 PR_Close()
 12805 ms  0xe87 fd:0x7f2de9604130
 12805 ms     | 0xe87 PK11_Encrypt()
 12805 ms     | 0xe87 symkey:0x7f2de6174700
           /* TID 0xe8f */
 12857 ms  0xe8f PR_Close()
 12857 ms  0xe8f fd:0x7f2de9559190
 12921 ms  0xe8f PR_Close()
 12921 ms  0xe8f fd:0x7f2de4789d30
           /* TID 0xf23 */
 12922 ms  0xf23 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12922 ms  0xf23 ret:0x0
           /* TID 0xe87 */
 12922 ms  0xe87 SSL_AuthCertificateComplete()
 12922 ms  0xe87 fd:0x7f2de96af8e0
 12922 ms  0xe87 err:0x0
 12922 ms     | 0xe87 PK11_DeriveWithFlags()
 12922 ms     | 0xe87 basekey:0x7f2de7df6e80
 12922 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12922 ms     | 0xe87 ret:0x7f2de6148a80
 12922 ms     | 0xe87 PK11_DeriveWithFlags()
 12922 ms     | 0xe87 basekey:0x7f2de7df6e80
 12922 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12922 ms     | 0xe87 ret:0x7f2de36ed000
 12922 ms     | 0xe87 PK11_DeriveWithFlags()
 12922 ms     | 0xe87 basekey:0x7f2de7df6e80
 12922 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12922 ms     | 0xe87 ret:0x7f2de43b2f00
 12922 ms     | 0xe87 PK11_DeriveWithFlags()
 12922 ms     | 0xe87 basekey:0x7f2de6149b00
 12922 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12922 ms     | 0xe87 ret:0x7f2de7d86680
 12922 ms     | 0xe87 PK11_DeriveWithFlags()
 12922 ms     | 0xe87 basekey:0x7f2de6149b00
 12922 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12922 ms     | 0xe87 ret:0x7f2de2e6b980
 12922 ms     | 0xe87 PK11_DeriveWithFlags()
 12922 ms     | 0xe87 basekey:0x7f2de36ed000
 12922 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12923 ms     | 0xe87 ret:0x7f2de2e6b980
 12923 ms     | 0xe87 PK11_DeriveWithFlags()
 12923 ms     | 0xe87 basekey:0x7f2de36ed000
 12923 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12923 ms     | 0xe87 ret:0x7f2de6174700
 12923 ms     | 0xe87 PK11_DeriveWithFlags()
 12923 ms     | 0xe87 basekey:0x7f2de6149b00
 12923 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12923 ms     | 0xe87 ret:0x7f2de6190080
 12923 ms     | 0xe87 PK11_Encrypt()
 12923 ms     | 0xe87 symkey:0x7f2de7d86680
 12923 ms     | 0xe87 PK11_DeriveWithFlags()
 12923 ms     | 0xe87 basekey:0x7f2de6148a80
 12923 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12923 ms     | 0xe87 ret:0x7f2de6190080
 12923 ms     | 0xe87 PK11_DeriveWithFlags()
 12923 ms     | 0xe87 basekey:0x7f2de6148a80
 12923 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12923 ms     | 0xe87 ret:0x7f2de6174700
 12923 ms     | 0xe87 PK11_DeriveWithFlags()
 12923 ms     | 0xe87 basekey:0x7f2de7df6e80
 12923 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12923 ms     | 0xe87 ret:0x7f2de7d86680
 12923 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 12923 ms     | 0xe87 privk:0x7f2ded27b020::7f2ded27b020  20 2e e3 e2                                       ...
 12923 ms     | 0xe87 privk:0x7f2ded27b020::7f2ded27b020  e5 e5 e5 e5                                      ....
 12923 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 12923 ms     | 0xe87 privk:0x7f2ded26d020::7f2ded26d020  b0 85 ab e4                                      ....
 12924 ms     | 0xe87 privk:0x7f2ded26d020::7f2ded26d020  e5 e5 e5 e5                                      ....
 12924 ms  0xe87 PK11_Encrypt()
 12924 ms  0xe87 symkey:0x7f2de6190080
 12924 ms  0xe87 PK11_Encrypt()
 12924 ms  0xe87 symkey:0x7f2de6190080
           /* TID 0xf22 */
 12944 ms  0xf22 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12944 ms  0xf22 ret:0x0
           /* TID 0xe87 */
 12945 ms  0xe87 SSL_AuthCertificateComplete()
 12945 ms  0xe87 fd:0x7f2de95cc670
 12945 ms  0xe87 err:0x0
 12945 ms     | 0xe87 PK11_DeriveWithFlags()
 12945 ms     | 0xe87 basekey:0x7f2de6149f80
 12945 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12945 ms     | 0xe87 ret:0x7f2de6148d80
 12945 ms     | 0xe87 PK11_DeriveWithFlags()
 12945 ms     | 0xe87 basekey:0x7f2de6149f80
 12945 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12945 ms     | 0xe87 ret:0x7f2de6149b00
 12945 ms     | 0xe87 PK11_DeriveWithFlags()
 12945 ms     | 0xe87 basekey:0x7f2de6149f80
 12945 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12945 ms     | 0xe87 ret:0x7f2de7df6e80
 12946 ms     | 0xe87 PK11_DeriveWithFlags()
 12946 ms     | 0xe87 basekey:0x7f2de6148980
 12946 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12946 ms     | 0xe87 ret:0x7f2de6174700
 12946 ms     | 0xe87 PK11_DeriveWithFlags()
 12946 ms     | 0xe87 basekey:0x7f2de6148980
 12946 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12946 ms     | 0xe87 ret:0x7f2de6185080
 12946 ms     | 0xe87 PK11_DeriveWithFlags()
 12946 ms     | 0xe87 basekey:0x7f2de6149b00
 12946 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12946 ms     | 0xe87 ret:0x7f2de6185080
 12946 ms     | 0xe87 PK11_DeriveWithFlags()
 12946 ms     | 0xe87 basekey:0x7f2de6149b00
 12946 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12946 ms     | 0xe87 ret:0x7f2de6190c00
 12946 ms     | 0xe87 PK11_DeriveWithFlags()
 12946 ms     | 0xe87 basekey:0x7f2de6148980
 12946 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12946 ms     | 0xe87 ret:0x7f2de6149480
 12946 ms     | 0xe87 PK11_Encrypt()
 12946 ms     | 0xe87 symkey:0x7f2de6174700
           /* TID 0xe8f */
 12947 ms  0xe8f PR_Close()
 12947 ms  0xe8f fd:0x7f2de9284a30
           /* TID 0xe87 */
 12947 ms     | 0xe87 PK11_DeriveWithFlags()
 12947 ms     | 0xe87 basekey:0x7f2de6148d80
 12947 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12947 ms     | 0xe87 ret:0x7f2de6149480
 12947 ms     | 0xe87 PK11_DeriveWithFlags()
 12947 ms     | 0xe87 basekey:0x7f2de6148d80
 12947 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12947 ms     | 0xe87 ret:0x7f2de6190c00
 12947 ms     | 0xe87 PK11_DeriveWithFlags()
 12947 ms     | 0xe87 basekey:0x7f2de6149f80
 12948 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 12948 ms     | 0xe87 ret:0x7f2de6174700
 12949 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 12949 ms     | 0xe87 privk:0x7f2ded272020::7f2ded272020  b0 8a ab e4                                      ....
 12949 ms     | 0xe87 privk:0x7f2ded272020::7f2ded272020  e5 e5 e5 e5                                      ....
 12949 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 12949 ms     | 0xe87 privk:0x7f2ded270020::7f2ded270020  d0 88 ab e4                                      ....
 12949 ms     | 0xe87 privk:0x7f2ded270020::7f2ded270020  e5 e5 e5 e5                                      ....
 12953 ms  0xe87 PK11_Encrypt()
 12953 ms  0xe87 symkey:0x7f2de6149480
 12953 ms  0xe87 PK11_Encrypt()
 12953 ms  0xe87 symkey:0x7f2de43b1280
 12961 ms  0xe87 PK11_DeriveWithFlags()
 12961 ms  0xe87 basekey:0x7f2de7d86680
 12961 ms     | 0xe87 PK11_DeriveWithTemplate()
 12961 ms  0xe87 ret:0x7f2de4321d80
 12961 ms  0xe87 PK11_DeriveWithFlags()
 12961 ms  0xe87 basekey:0x7f2de7d86680
 12961 ms     | 0xe87 PK11_DeriveWithTemplate()
 12961 ms  0xe87 ret:0x7f2de4321d80
 12961 ms  0xe87 PK11_Encrypt()
 12961 ms  0xe87 symkey:0x7f2de6190080
 12984 ms  0xe87 SECKEY_CreateECPrivateKey()
 12984 ms  0xe87 cx:0x7f2df3d29608
 12984 ms     | 0xe87 EC_ValidatePublicKey()
 12984 ms     | 0xe87 ret:0x0
 12984 ms  0xe87 ret:0x7f2ded270820::7f2ded270820  c0 29 e3 e2                                      .)..
 12984 ms  0xe87 SECKEY_CreateECPrivateKey()
 12984 ms  0xe87 cx:0x7f2df3d29608
 12985 ms     | 0xe87 EC_ValidatePublicKey()
 12987 ms     | 0xe87 ret:0x0
 12987 ms  0xe87 ret:0x7f2ded272820::7f2ded272820  e0 fc 72 e4                                      ..r.
 12987 ms  0xe87 PK11_DeriveWithFlags()
 12987 ms  0xe87 basekey:0x7f2de6174700
 12987 ms     | 0xe87 PK11_DeriveWithTemplate()
 12987 ms  0xe87 ret:0x7f2de4321d80
 12987 ms  0xe87 PK11_DeriveWithFlags()
 12987 ms  0xe87 basekey:0x7f2de6174700
 12987 ms     | 0xe87 PK11_DeriveWithTemplate()
 12987 ms  0xe87 ret:0x7f2de4321d80
 12987 ms  0xe87 PR_Close()
 12987 ms  0xe87 fd:0x7f2de95cc670
 12987 ms     | 0xe87 PK11_Encrypt()
 12987 ms     | 0xe87 symkey:0x7f2de6149480
 13028 ms  0xe87 PK11_Encrypt()
 13028 ms  0xe87 symkey:0x7f2de43b1280
           /* TID 0xe8f */
 13029 ms  0xe8f PR_Close()
 13029 ms  0xe8f fd:0x7f2de93853a0
           /* TID 0xe87 */
 13045 ms  0xe87 PK11_Encrypt()
 13045 ms  0xe87 symkey:0x7f2de6190080
           /* TID 0xe8f */
 13047 ms  0xe8f PR_Close()
 13047 ms  0xe8f fd:0x7f2de93853a0
           /* TID 0xe87 */
 13066 ms  SECKEY_ECParamsToKeySize()
 13066 ms  0xe87 ret:0x100
 13066 ms  0xe87 SECKEY_CreateECPrivateKey()
 13066 ms  0xe87 cx:0x7f2df3d28908
 13066 ms     | 0xe87 EC_ValidatePublicKey()
 13068 ms     | 0xe87 ret:0x0
 13068 ms  0xe87 ret:0x7f2ded27f020::7f2ded27f020  40 57 74 e4                                      @Wt.
 13068 ms  0xe87 PK11_PubDeriveWithKDF()
 13068 ms  0xe87 seckey:0x7f2ded27f020
 13068 ms     | 0xe87 EC_ValidatePublicKey()
 13069 ms     | 0xe87 ret:0x0
 13071 ms  0xe87 ret:0x7f2de7df6e80
 13071 ms  0xe87 PK11_DeriveWithFlags()
 13071 ms  0xe87 basekey:0x7f2de7df6e80
 13071 ms     | 0xe87 PK11_DeriveWithTemplate()
 13071 ms  0xe87 ret:0x7f2de6149b00
 13071 ms  0xe87 PK11_Derive()
 13071 ms  0xe87 basekey:0x7f2de6149b00
 13071 ms     | 0xe87 PK11_DeriveWithTemplate()
 13071 ms  0xe87 ret:0x7f2de6148d80
 13071 ms  0xe87 SECKEY_DestroyPrivateKey()
 13071 ms  0xe87 privk:0x7f2ded27f020::7f2ded27f020  40 57 74 e4                                      @Wt.
 13071 ms  0xe87 privk:0x7f2ded27f020::7f2ded27f020  e5 e5 e5 e5                                      ....
 13071 ms  0xe87 PK11_Encrypt()
 13071 ms  0xe87 symkey:0x7f2de6186000
           /* TID 0xe8f */
 13103 ms  0xe8f PR_Close()
 13103 ms  0xe8f fd:0x7f2de9559700
           /* TID 0xf21 */
 13103 ms  0xf21 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13103 ms  0xf21 ret:0x0
           /* TID 0xe87 */
 13104 ms  0xe87 SSL_AuthCertificateComplete()
 13104 ms  0xe87 fd:0x7f2de9559f10
 13104 ms  0xe87 err:0x0
 13104 ms  0xe87 PK11_Encrypt()
 13104 ms  0xe87 symkey:0x7f2de6186000
 13284 ms  SECKEY_ECParamsToKeySize()
 13284 ms  0xe87 ret:0x100
 13284 ms  0xe87 SECKEY_CreateECPrivateKey()
 13284 ms  0xe87 cx:0x7f2df3d29608
 13286 ms     | 0xe87 EC_ValidatePublicKey()
 13288 ms     | 0xe87 ret:0x0
 13290 ms  0xe87 ret:0x7f2ded27d020::7f2ded27d020  40 57 74 e4                                      @Wt.
 13290 ms  0xe87 PK11_PubDeriveWithKDF()
 13290 ms  0xe87 seckey:0x7f2ded27d020
 13290 ms     | 0xe87 EC_ValidatePublicKey()
 13294 ms     | 0xe87 ret:0x0
 13296 ms  0xe87 ret:0x7f2de7df6e80
 13296 ms  0xe87 PK11_DeriveWithFlags()
 13296 ms  0xe87 basekey:0x7f2de7df6e80
 13296 ms     | 0xe87 PK11_DeriveWithTemplate()
 13296 ms  0xe87 ret:0x7f2de6174700
 13296 ms  0xe87 PK11_Derive()
 13296 ms  0xe87 basekey:0x7f2de6174700
 13296 ms     | 0xe87 PK11_DeriveWithTemplate()
 13296 ms  0xe87 ret:0x7f2de6185080
 13296 ms  0xe87 SECKEY_DestroyPrivateKey()
 13296 ms  0xe87 privk:0x7f2ded27d020::7f2ded27d020  40 57 74 e4                                      @Wt.
 13296 ms  0xe87 privk:0x7f2ded27d020::7f2ded27d020  e5 e5 e5 e5                                      ....
 13297 ms  0xe87 PK11_Encrypt()
 13297 ms  0xe87 symkey:0x7f2de6185300
 13298 ms  0xe87 SSL_AuthCertificateComplete()
 13298 ms  0xe87 fd:0x7f2de96afa30
 13298 ms  0xe87 err:0x0
 13377 ms  0xe87 SECKEY_DestroyPrivateKey()
 13377 ms  0xe87 privk:0x7f2ded912820::7f2ded912820  90 f7 72 e4                                      ..r.
 13377 ms  0xe87 privk:0x7f2ded912820::7f2ded912820  e5 e5 e5 e5                                      ....
 13377 ms  0xe87 SECKEY_DestroyPrivateKey()
 13377 ms  0xe87 privk:0x7f2ded90e820::7f2ded90e820  90 f2 72 e4                                      ..r.
 13377 ms  0xe87 privk:0x7f2ded90e820::7f2ded90e820  e5 e5 e5 e5                                      ....
 13571 ms  0xe87 PR_Close()
 13571 ms  0xe87 fd:0x7f2de43c05e0
 13596 ms  0xe87 SECKEY_DestroyPrivateKey()
 13596 ms  0xe87 privk:0x7f2ded272820::7f2ded272820  e0 fc 72 e4                                      ..r.
 13596 ms  0xe87 privk:0x7f2ded272820::7f2ded272820  e5 e5 e5 e5                                      ....
 13597 ms  0xe87 SECKEY_DestroyPrivateKey()
 13597 ms  0xe87 privk:0x7f2ded270820::7f2ded270820  c0 29 e3 e2                                      .)..
 13597 ms  0xe87 privk:0x7f2ded270820::7f2ded270820  e5 e5 e5 e5                                      ....
           /* TID 0xe8f */
 13684 ms  0xe8f PR_Close()
 13684 ms  0xe8f fd:0x7f2de43ace50
           /* TID 0xe87 */
 13714 ms  0xe87 PK11_Encrypt()
 13714 ms  0xe87 symkey:0x7f2de36ede80
 13798 ms  0xe87 PK11_Encrypt()
 13798 ms  0xe87 symkey:0x7f2de36ede80
           /* TID 0xe8f */
 13799 ms  0xe8f PR_Close()
 13799 ms  0xe8f fd:0x7f2de4777a90
           /* TID 0xe87 */
 14294 ms  0xe87 SSL_ImportFD()
 14294 ms  0xe87 ret:0x7f2de43ace50
 14294 ms  0xe87 SSL_AuthCertificateHook()
 14294 ms  0xe87 fd:0x7f2de43ace50
 14294 ms  0xe87 ret:0x0
 14294 ms  0xe87 PR_Connect()
 14294 ms  0xe87 fd:0x7f2de43ace50
 14294 ms  0xe87 SSL_ImportFD()
 14294 ms  0xe87 ret:0x7f2de42b2af0
 14295 ms  0xe87 SSL_AuthCertificateHook()
 14295 ms  0xe87 fd:0x7f2de42b2af0
 14295 ms  0xe87 ret:0x0
 14295 ms  0xe87 PR_Connect()
 14295 ms  0xe87 fd:0x7f2de42b2af0
 14295 ms  0xe87 SSL_ImportFD()
 14295 ms  0xe87 ret:0x7f2de42b2e20
 14295 ms  0xe87 SSL_AuthCertificateHook()
 14295 ms  0xe87 fd:0x7f2de42b2e20
 14295 ms  0xe87 ret:0x0
 14295 ms  0xe87 PR_Connect()
 14295 ms  0xe87 fd:0x7f2de42b2e20
 14295 ms  0xe87 SSL_ImportFD()
 14295 ms  0xe87 ret:0x7f2de431a370
 14295 ms  0xe87 SSL_AuthCertificateHook()
 14295 ms  0xe87 fd:0x7f2de431a370
 14295 ms  0xe87 ret:0x0
 14295 ms  0xe87 PR_Connect()
 14295 ms  0xe87 fd:0x7f2de431a370
 14361 ms  0xe87 SECKEY_CreateECPrivateKey()
 14361 ms  0xe87 cx:0x7f2df3d29c88
 14362 ms     | 0xe87 EC_ValidatePublicKey()
 14362 ms     | 0xe87 ret:0x0
 14362 ms  0xe87 ret:0x7f2ded26f820::7f2ded26f820  10 f5 72 e4                                      ..r.
 14362 ms  0xe87 SECKEY_CreateECPrivateKey()
 14362 ms  0xe87 cx:0x7f2df3d29c88
 14363 ms     | 0xe87 EC_ValidatePublicKey()
 14364 ms     | 0xe87 ret:0x0
 14364 ms  0xe87 ret:0x7f2ded271820::7f2ded271820  e0 fc 72 e4                                      ..r.
 14364 ms  0xe87 SECKEY_CreateECPrivateKey()
 14364 ms  0xe87 cx:0x7f2df3d2a168
 14365 ms     | 0xe87 EC_ValidatePublicKey()
 14365 ms     | 0xe87 ret:0x0
 14365 ms  0xe87 ret:0x7f2ded27a820::7f2ded27a820  60 5f 74 e4                                      `_t.
 14365 ms  0xe87 SECKEY_CreateECPrivateKey()
 14365 ms  0xe87 cx:0x7f2df3d2a168
 14366 ms     | 0xe87 EC_ValidatePublicKey()
 14367 ms     | 0xe87 ret:0x0
 14367 ms  0xe87 ret:0x7f2ded27e020::7f2ded27e020  e0 82 ab e4                                      ....
 14368 ms  0xe87 SECKEY_CreateECPrivateKey()
 14368 ms  0xe87 cx:0x7f2df3d29fc8
 14368 ms     | 0xe87 EC_ValidatePublicKey()
 14368 ms     | 0xe87 ret:0x0
 14368 ms  0xe87 ret:0x7f2ded90d820::7f2ded90d820  90 52 74 e4                                      .Rt.
 14368 ms  0xe87 SECKEY_CreateECPrivateKey()
 14368 ms  0xe87 cx:0x7f2df3d29fc8
 14369 ms     | 0xe87 EC_ValidatePublicKey()
 14371 ms     | 0xe87 ret:0x0
 14371 ms  0xe87 ret:0x7f2ded911820::7f2ded911820  70 84 ab e4                                      p...
 14372 ms  0xe87 SECKEY_CreateECPrivateKey()
 14372 ms  0xe87 cx:0x7f2df3d29e28
 14373 ms     | 0xe87 EC_ValidatePublicKey()
 14373 ms     | 0xe87 ret:0x0
 14373 ms  0xe87 ret:0x7f2ded916820::7f2ded916820  00 86 ab e4                                      ....
 14373 ms  0xe87 SECKEY_CreateECPrivateKey()
 14373 ms  0xe87 cx:0x7f2df3d29e28
 14373 ms     | 0xe87 EC_ValidatePublicKey()
 14375 ms     | 0xe87 ret:0x0
 14375 ms  0xe87 ret:0x7f2ded91a820::7f2ded91a820  e0 87 ab e4                                      ....
 14438 ms  SECKEY_ECParamsToKeySize()
 14438 ms  0xe87 ret:0xff
 14438 ms  0xe87 SECKEY_CreateECPrivateKey()
 14438 ms  0xe87 cx:0x7f2df3d29c88
 14439 ms     | 0xe87 EC_ValidatePublicKey()
 14439 ms     | 0xe87 ret:0x0
 14439 ms  0xe87 ret:0x7f2deda6d020::7f2deda6d020  20 59 3e e5                                       Y>.
 14440 ms  0xe87 PK11_PubDeriveWithKDF()
 14440 ms  0xe87 seckey:0x7f2deda6d020
 14440 ms     | 0xe87 EC_ValidatePublicKey()
 14440 ms     | 0xe87 ret:0x0
 14446 ms  0xe87 ret:0x7f2de7df6e80
 14446 ms  0xe87 PK11_DeriveWithFlags()
 14446 ms  0xe87 basekey:0x7f2de7df6e80
 14446 ms     | 0xe87 PK11_DeriveWithTemplate()
 14446 ms  0xe87 ret:0x7f2de6149480
 14446 ms  0xe87 PK11_Derive()
 14446 ms  0xe87 basekey:0x7f2de6149480
 14446 ms     | 0xe87 PK11_DeriveWithTemplate()
 14446 ms  0xe87 ret:0x7f2de4321d80
 14446 ms  0xe87 SECKEY_DestroyPrivateKey()
 14446 ms  0xe87 privk:0x7f2deda6d020::7f2deda6d020  20 59 3e e5                                       Y>.
 14446 ms  0xe87 privk:0x7f2deda6d020::7f2deda6d020  e5 e5 e5 e5                                      ....
 14447 ms  0xe87 PK11_Encrypt()
 14447 ms  0xe87 symkey:0x7f2de2e6be80
 14451 ms  SECKEY_ECParamsToKeySize()
 14452 ms  0xe87 ret:0xff
 14452 ms  0xe87 SECKEY_CreateECPrivateKey()
 14452 ms  0xe87 cx:0x7f2df3d2a168
 14453 ms     | 0xe87 EC_ValidatePublicKey()
 14453 ms     | 0xe87 ret:0x0
 14453 ms  0xe87 ret:0x7f2deda6f020::7f2deda6f020  b0 5f 3e e5                                      ._>.
 14453 ms  0xe87 PK11_PubDeriveWithKDF()
 14453 ms  0xe87 seckey:0x7f2deda6f020
 14453 ms     | 0xe87 EC_ValidatePublicKey()
 14453 ms     | 0xe87 ret:0x0
 14454 ms  0xe87 ret:0x7f2de7df6e80
 14454 ms  0xe87 PK11_DeriveWithFlags()
 14454 ms  0xe87 basekey:0x7f2de7df6e80
 14454 ms     | 0xe87 PK11_DeriveWithTemplate()
 14455 ms  0xe87 ret:0x7f2de6148980
 14455 ms  0xe87 PK11_Derive()
 14455 ms  0xe87 basekey:0x7f2de6148980
 14455 ms     | 0xe87 PK11_DeriveWithTemplate()
 14455 ms  0xe87 ret:0x7f2de6149f80
 14455 ms  0xe87 SECKEY_DestroyPrivateKey()
 14455 ms  0xe87 privk:0x7f2deda6f020::7f2deda6f020  b0 5f 3e e5                                      ._>.
 14455 ms  0xe87 privk:0x7f2deda6f020::7f2deda6f020  e5 e5 e5 e5                                      ....
 14455 ms  0xe87 PK11_Encrypt()
 14455 ms  0xe87 symkey:0x7f2de2e78700
 14459 ms  SECKEY_ECParamsToKeySize()
 14459 ms  0xe87 ret:0xff
 14459 ms  0xe87 SECKEY_CreateECPrivateKey()
 14459 ms  0xe87 cx:0x7f2df3d29fc8
 14460 ms     | 0xe87 EC_ValidatePublicKey()
 14460 ms     | 0xe87 ret:0x0
 14460 ms  0xe87 ret:0x7f2deda72020::7f2deda72020  70 0e 15 e6                                      p...
 14460 ms  0xe87 PK11_PubDeriveWithKDF()
 14460 ms  0xe87 seckey:0x7f2deda72020
 14460 ms     | 0xe87 EC_ValidatePublicKey()
 14460 ms     | 0xe87 ret:0x0
 14461 ms  0xe87 ret:0x7f2de7df6e80
 14462 ms  0xe87 PK11_DeriveWithFlags()
 14462 ms  0xe87 basekey:0x7f2de7df6e80
 14462 ms     | 0xe87 PK11_DeriveWithTemplate()
 14462 ms  0xe87 ret:0x7f2de6190c00
 14462 ms  0xe87 PK11_Derive()
 14462 ms  0xe87 basekey:0x7f2de6190c00
 14462 ms     | 0xe87 PK11_DeriveWithTemplate()
 14462 ms  0xe87 ret:0x7f2de316a800
 14462 ms  0xe87 SECKEY_DestroyPrivateKey()
 14462 ms  0xe87 privk:0x7f2deda72020::7f2deda72020  70 0e 15 e6                                      p...
 14462 ms  0xe87 privk:0x7f2deda72020::7f2deda72020  e5 e5 e5 e5                                      ....
 14462 ms  0xe87 PK11_Encrypt()
 14462 ms  0xe87 symkey:0x7f2de316bc80
 14468 ms  SECKEY_ECParamsToKeySize()
 14468 ms  0xe87 ret:0xff
 14468 ms  0xe87 SECKEY_CreateECPrivateKey()
 14468 ms  0xe87 cx:0x7f2df3d29e28
 14469 ms     | 0xe87 EC_ValidatePublicKey()
 14469 ms     | 0xe87 ret:0x0
 14469 ms  0xe87 ret:0x7f2deda75820::7f2deda75820  b0 aa 15 e6                                      ....
 14469 ms  0xe87 PK11_PubDeriveWithKDF()
 14469 ms  0xe87 seckey:0x7f2deda75820
 14469 ms     | 0xe87 EC_ValidatePublicKey()
 14469 ms     | 0xe87 ret:0x0
 14470 ms  0xe87 ret:0x7f2de7df6e80
 14470 ms  0xe87 PK11_DeriveWithFlags()
 14470 ms  0xe87 basekey:0x7f2de7df6e80
 14470 ms     | 0xe87 PK11_DeriveWithTemplate()
 14470 ms  0xe87 ret:0x7f2de34e8e80
 14470 ms  0xe87 PK11_Derive()
 14470 ms  0xe87 basekey:0x7f2de34e8e80
 14470 ms     | 0xe87 PK11_DeriveWithTemplate()
 14470 ms  0xe87 ret:0x7f2de34e8f00
 14470 ms  0xe87 SECKEY_DestroyPrivateKey()
 14470 ms  0xe87 privk:0x7f2deda75820::7f2deda75820  b0 aa 15 e6                                      ....
 14470 ms  0xe87 privk:0x7f2deda75820::7f2deda75820  e5 e5 e5 e5                                      ....
 14470 ms  0xe87 PK11_Encrypt()
 14470 ms  0xe87 symkey:0x7f2de425cc00
 14472 ms  0xe87 PR_Connect()
 14472 ms  0xe87 fd:0x7f2de96ff8b0
 14472 ms  0xe87 PR_Connect()
 14472 ms  0xe87 fd:0x7f2de96ff850
 14472 ms  0xe87 PR_Connect()
 14472 ms  0xe87 fd:0x7f2de96ffac0
 14473 ms  0xe87 PR_Connect()
 14473 ms  0xe87 fd:0x7f2de96ffb50
           /* TID 0xe8f */
 14559 ms  0xe8f PR_Close()
 14559 ms  0xe8f fd:0x7f2de96afd30
           /* TID 0xf21 */
 14559 ms  0xf21 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14560 ms  0xf21 ret:0x0
           /* TID 0xe8f */
 14564 ms  0xe8f PR_Close()
 14564 ms  0xe8f fd:0x7f2de96afeb0
           /* TID 0xf23 */
 14564 ms  0xf23 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14564 ms  0xf23 ret:0x0
           /* TID 0xe8f */
 14566 ms  0xe8f PR_Close()
 14566 ms  0xe8f fd:0x7f2de96aff40
           /* TID 0xee4 */
 14566 ms  0xee4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14566 ms  0xee4 ret:0x0
           /* TID 0xe8f */
 14567 ms  0xe8f PR_Close()
 14567 ms  0xe8f fd:0x7f2de96ffa00
           /* TID 0xf22 */
 14567 ms  0xf22 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14567 ms  0xf22 ret:0x0
           /* TID 0xe87 */
 14821 ms  0xe87 SSL_ImportFD()
 14821 ms  0xe87 ret:0x7f2de972f070
 14821 ms  0xe87 SSL_AuthCertificateHook()
 14821 ms  0xe87 fd:0x7f2de972f070
 14822 ms  0xe87 ret:0x0
           /* TID 0xe8f */
 14895 ms  0xe8f PR_Close()
 14895 ms  0xe8f fd:0x7f2de972f040
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de972f040
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de9743b20
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de9743c70
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de9743cd0
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de9743e80
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de9743f70
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de9743fd0
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de974f0a0
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de974f100
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de974f370
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de974f4c0
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de974f520
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de974f580
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de974f610
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de974f670
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de974f6d0
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de974f790
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de974f880
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de974fd60
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de974fdf0
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de974fee0
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de97fb280
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de97fb2e0
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de97fb340
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de97fb3a0
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de97fb400
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de97fb460
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de97fb4c0
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de97fb520
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de97fb5b0
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de97fb610
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de97fb6a0
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de97fb760
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de97fb7c0
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de97fb940
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de97fbcd0
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de97fbd30
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de97fbd90
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de97fbdf0
 14897 ms  0xe8f PR_Close()
 14897 ms  0xe8f fd:0x7f2de97fbe50
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2de97fbeb0
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2de97fbf10
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2de97fbf70
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2de97fbfd0
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debf0aa90
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debf0aaf0
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debf0ab50
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debf0abe0
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debf0ac40
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debf0acd0
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debf0ad60
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debf0ae80
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debf0aee0
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debf0af40
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debf4b0d0
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debf4b250
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debf4bdf0
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debf4be80
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debf7da30
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debf7db80
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debf7dbe0
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debf7deb0
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debf7df70
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debfc00a0
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debfc0490
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debfc04f0
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debfc0550
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debfc05e0
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debfc0670
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debfc06d0
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debfc0760
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debfc0850
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debfc08e0
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debfc0940
 14898 ms  0xe8f PR_Close()
 14898 ms  0xe8f fd:0x7f2debfc09a0
           /* TID 0xee1 */
 16454 ms  0xee1 PR_Close()
 16454 ms  0xee1 fd:0x7f2de8c5c550
           /* TID 0xe87 */
 18584 ms  0xe87 PK11_Encrypt()
 18584 ms  0xe87 symkey:0x7f2de2daa700
 18587 ms  0xe87 PR_Connect()
 18587 ms  0xe87 fd:0x7f2de972f070
 18589 ms  0xe87 PR_Close()
 18589 ms  0xe87 fd:0x7f2de9559f10
 18589 ms     | 0xe87 PK11_Encrypt()
 18589 ms     | 0xe87 symkey:0x7f2de6186000
 18591 ms  0xe87 PK11_Encrypt()
 18591 ms  0xe87 symkey:0x7f2dd21e9a80
 18592 ms  0xe87 SSL_AuthCertificateComplete()
 18592 ms  0xe87 fd:0x7f2de43ace50
 18592 ms  0xe87 err:0x0
 18592 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 18592 ms     | 0xe87 privk:0x7f2ded271820::7f2ded271820  e0 fc 72 e4                                      ..r.
 18592 ms     | 0xe87 privk:0x7f2ded271820::7f2ded271820  e5 e5 e5 e5                                      ....
 18592 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 18592 ms     | 0xe87 privk:0x7f2ded26f820::7f2ded26f820  10 f5 72 e4                                      ..r.
 18593 ms     | 0xe87 privk:0x7f2ded26f820::7f2ded26f820  e5 e5 e5 e5                                      ....
 18593 ms  0xe87 SSL_AuthCertificateComplete()
 18593 ms  0xe87 fd:0x7f2de42b2e20
 18593 ms  0xe87 err:0x0
 18593 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 18593 ms     | 0xe87 privk:0x7f2ded911820::7f2ded911820  70 84 ab e4                                      p...
 18593 ms     | 0xe87 privk:0x7f2ded911820::7f2ded911820  e5 e5 e5 e5                                      ....
 18593 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 18593 ms     | 0xe87 privk:0x7f2ded90d820::7f2ded90d820  90 52 74 e4                                      .Rt.
 18594 ms     | 0xe87 privk:0x7f2ded90d820::7f2ded90d820  e5 e5 e5 e5                                      ....
 18594 ms  0xe87 SSL_AuthCertificateComplete()
 18594 ms  0xe87 fd:0x7f2de431a370
 18594 ms  0xe87 err:0x0
 18594 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 18594 ms     | 0xe87 privk:0x7f2ded27e020::7f2ded27e020  e0 82 ab e4                                      ....
 18594 ms     | 0xe87 privk:0x7f2ded27e020::7f2ded27e020  e5 e5 e5 e5                                      ....
 18594 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 18594 ms     | 0xe87 privk:0x7f2ded27a820::7f2ded27a820  60 5f 74 e4                                      `_t.
 18594 ms     | 0xe87 privk:0x7f2ded27a820::7f2ded27a820  e5 e5 e5 e5                                      ....
 18595 ms  0xe87 SSL_AuthCertificateComplete()
 18595 ms  0xe87 fd:0x7f2de42b2af0
 18595 ms  0xe87 err:0x0
 18595 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 18595 ms     | 0xe87 privk:0x7f2ded91a820::7f2ded91a820  e0 87 ab e4                                      ....
 18595 ms     | 0xe87 privk:0x7f2ded91a820::7f2ded91a820  e5 e5 e5 e5                                      ....
 18595 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 18595 ms     | 0xe87 privk:0x7f2ded916820::7f2ded916820  00 86 ab e4                                      ....
 18595 ms     | 0xe87 privk:0x7f2ded916820::7f2ded916820  e5 e5 e5 e5                                      ....
 18596 ms  0xe87 PK11_Encrypt()
 18596 ms  0xe87 symkey:0x7f2de2e78700
 18602 ms  0xe87 PK11_Encrypt()
 18602 ms  0xe87 symkey:0x7f2de2e78700
 18602 ms  0xe87 PK11_Encrypt()
 18602 ms  0xe87 symkey:0x7f2de316bc80
 18603 ms  0xe87 PK11_Encrypt()
 18603 ms  0xe87 symkey:0x7f2de425cc00
 18604 ms  0xe87 PK11_Encrypt()
 18604 ms  0xe87 symkey:0x7f2de2e6be80
 18606 ms  0xe87 PK11_Encrypt()
 18606 ms  0xe87 symkey:0x7f2de2e78700
 18607 ms  0xe87 PK11_Encrypt()
 18607 ms  0xe87 symkey:0x7f2de2e78700
 18608 ms  0xe87 PR_Close()
 18608 ms  0xe87 fd:0x7f2de9202580
 18608 ms     | 0xe87 PK11_Encrypt()
 18608 ms     | 0xe87 symkey:0x7f2de4321580
 18608 ms  0xe87 PR_Close()
 18608 ms  0xe87 fd:0x7f2de96afa30
 18608 ms     | 0xe87 PK11_Encrypt()
 18608 ms     | 0xe87 symkey:0x7f2de6185300
 18608 ms  0xe87 PK11_Encrypt()
 18608 ms  0xe87 symkey:0x7f2de2e78700
 18609 ms  0xe87 PK11_Encrypt()
 18609 ms  0xe87 symkey:0x7f2de2e78700
 18609 ms  0xe87 PR_Close()
 18609 ms  0xe87 fd:0x7f2de43ace50
 18609 ms     | 0xe87 PK11_Encrypt()
 18609 ms     | 0xe87 symkey:0x7f2de2e6be80
 18609 ms  0xe87 PR_Close()
 18609 ms  0xe87 fd:0x7f2de42b2af0
 18609 ms     | 0xe87 PK11_Encrypt()
 18609 ms     | 0xe87 symkey:0x7f2de425cc00
 18610 ms  0xe87 PR_Close()
 18610 ms  0xe87 fd:0x7f2de42b2e20
 18610 ms     | 0xe87 PK11_Encrypt()
 18610 ms     | 0xe87 symkey:0x7f2de316bc80
 18625 ms  0xe87 SECKEY_CreateECPrivateKey()
 18625 ms  0xe87 cx:0x7f2df3d2a988
 18626 ms     | 0xe87 EC_ValidatePublicKey()
 18626 ms     | 0xe87 ret:0x0
 18626 ms  0xe87 ret:0x7f2ded1ec020::7f2ded1ec020  00 b6 31 e4                                      ..1.
 18627 ms  0xe87 SECKEY_CreateECPrivateKey()
 18627 ms  0xe87 cx:0x7f2df3d2a988
 18627 ms     | 0xe87 EC_ValidatePublicKey()
 18630 ms     | 0xe87 ret:0x0
 18630 ms  0xe87 ret:0x7f2ded271020::7f2ded271020  f0 fb 72 e4                                      ..r.
 18684 ms  0xe87 PK11_Derive()
 18684 ms  0xe87 basekey:0x7f2de316a800
 18684 ms     | 0xe87 PK11_DeriveWithTemplate()
 18684 ms  0xe87 ret:0x7f2de6190c00
 18684 ms  0xe87 PK11_PubDeriveWithKDF()
 18684 ms  0xe87 seckey:0x7f2ded1ec020
 18684 ms     | 0xe87 EC_ValidatePublicKey()
 18684 ms     | 0xe87 ret:0x0
 18685 ms  0xe87 ret:0x7f2de316a800
 18685 ms  SECKEY_ECParamsToKeySize()
 18685 ms  0xe87 ret:0xff
 18685 ms  0xe87 PK11_DeriveWithFlags()
 18685 ms  0xe87 basekey:0x7f2de6190c00
 18685 ms     | 0xe87 PK11_DeriveWithTemplate()
 18685 ms  0xe87 ret:0x7f2de34e8f00
 18685 ms  0xe87 PK11_Derive()
 18685 ms  0xe87 basekey:0x7f2de316a800
 18685 ms     | 0xe87 PK11_DeriveWithTemplate()
 18685 ms  0xe87 ret:0x7f2de34e8e80
 18685 ms  0xe87 PK11_DeriveWithFlags()
 18685 ms  0xe87 basekey:0x7f2de34e8e80
 18685 ms     | 0xe87 PK11_DeriveWithTemplate()
 18685 ms  0xe87 ret:0x7f2de6190c00
 18685 ms  0xe87 PK11_DeriveWithFlags()
 18685 ms  0xe87 basekey:0x7f2de34e8e80
 18685 ms     | 0xe87 PK11_DeriveWithTemplate()
 18685 ms  0xe87 ret:0x7f2de316a800
 18685 ms  0xe87 PK11_DeriveWithFlags()
 18685 ms  0xe87 basekey:0x7f2de34e8e80
 18685 ms     | 0xe87 PK11_DeriveWithTemplate()
 18685 ms  0xe87 ret:0x7f2de34e8f00
 18685 ms  0xe87 PK11_Derive()
 18685 ms  0xe87 basekey:0x7f2de4321d80
 18685 ms     | 0xe87 PK11_DeriveWithTemplate()
 18685 ms  0xe87 ret:0x7f2de6149480
 18685 ms  0xe87 PK11_DeriveWithFlags()
 18685 ms  0xe87 basekey:0x7f2de316a800
 18685 ms     | 0xe87 PK11_DeriveWithTemplate()
 18685 ms  0xe87 ret:0x7f2de34e8e80
 18685 ms  0xe87 PK11_DeriveWithFlags()
 18685 ms  0xe87 basekey:0x7f2de316a800
 18685 ms     | 0xe87 PK11_DeriveWithTemplate()
 18685 ms  0xe87 ret:0x7f2de34e8f00
 18686 ms  SECKEY_ECParamsToKeySize()
 18686 ms  0xe87 ret:0x100
 18686 ms  SECKEY_ECParamsToBasePointOrderLen()
 18686 ms  0xe87 ret:0x100
 18686 ms  SECKEY_ECParamsToBasePointOrderLen()
 18686 ms  0xe87 ret:0x100
 18686 ms  0xe87 EC_ValidatePublicKey()
 18688 ms  0xe87 ret:0x0
 18690 ms  0xe87 PK11_DeriveWithFlags()
 18690 ms  0xe87 basekey:0x7f2de316a800
 18690 ms     | 0xe87 PK11_DeriveWithTemplate()
 18690 ms  0xe87 ret:0x7f2de34e8f00
 18690 ms  0xe87 SSL_AuthCertificateComplete()
 18690 ms  0xe87 fd:0x7f2de972f070
 18690 ms  0xe87 err:0x0
 18690 ms     | 0xe87 PK11_DeriveWithFlags()
 18690 ms     | 0xe87 basekey:0x7f2de6149480
 18690 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 18690 ms     | 0xe87 ret:0x7f2de34e8f00
 18690 ms     | 0xe87 PK11_DeriveWithFlags()
 18690 ms     | 0xe87 basekey:0x7f2de6149480
 18690 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 18690 ms     | 0xe87 ret:0x7f2de4321d80
 18690 ms     | 0xe87 PK11_DeriveWithFlags()
 18690 ms     | 0xe87 basekey:0x7f2de6149480
 18690 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 18690 ms     | 0xe87 ret:0x7f2de6185080
 18690 ms     | 0xe87 PK11_DeriveWithFlags()
 18690 ms     | 0xe87 basekey:0x7f2de6190c00
 18690 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 18690 ms     | 0xe87 ret:0x7f2de6174700
 18690 ms     | 0xe87 PK11_DeriveWithFlags()
 18690 ms     | 0xe87 basekey:0x7f2de6190c00
 18690 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 18690 ms     | 0xe87 ret:0x7f2de425b900
 18690 ms     | 0xe87 PK11_DeriveWithFlags()
 18690 ms     | 0xe87 basekey:0x7f2de4321d80
 18690 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 18690 ms     | 0xe87 ret:0x7f2de425b900
 18690 ms     | 0xe87 PK11_DeriveWithFlags()
 18690 ms     | 0xe87 basekey:0x7f2de4321d80
 18690 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 18690 ms     | 0xe87 ret:0x7f2de42c6200
 18690 ms     | 0xe87 PK11_DeriveWithFlags()
 18690 ms     | 0xe87 basekey:0x7f2de6190c00
 18690 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 18690 ms     | 0xe87 ret:0x7f2de34e8e80
 18690 ms     | 0xe87 PK11_Encrypt()
 18690 ms     | 0xe87 symkey:0x7f2de6174700
 18690 ms     | 0xe87 PK11_DeriveWithFlags()
 18690 ms     | 0xe87 basekey:0x7f2de34e8f00
 18691 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 18691 ms     | 0xe87 ret:0x7f2de34e8e80
 18691 ms     | 0xe87 PK11_DeriveWithFlags()
 18691 ms     | 0xe87 basekey:0x7f2de34e8f00
 18691 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 18691 ms     | 0xe87 ret:0x7f2de42c6200
 18691 ms     | 0xe87 PK11_DeriveWithFlags()
 18691 ms     | 0xe87 basekey:0x7f2de6149480
 18691 ms     |    | 0xe87 PK11_DeriveWithTemplate()
 18691 ms     | 0xe87 ret:0x7f2de6174700
 18691 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 18691 ms     | 0xe87 privk:0x7f2ded271020::7f2ded271020  f0 fb 72 e4                                      ..r.
 18691 ms     | 0xe87 privk:0x7f2ded271020::7f2ded271020  e5 e5 e5 e5                                      ....
 18691 ms     | 0xe87 SECKEY_DestroyPrivateKey()
 18691 ms     | 0xe87 privk:0x7f2ded1ec020::7f2ded1ec020  00 b6 31 e4                                      ..1.
 18691 ms     | 0xe87 privk:0x7f2ded1ec020::7f2ded1ec020  e5 e5 e5 e5                                      ....
 18691 ms  0xe87 PK11_Encrypt()
 18691 ms  0xe87 symkey:0x7f2de34e8e80
 18728 ms  0xe87 PK11_DeriveWithFlags()
 18728 ms  0xe87 basekey:0x7f2de6174700
 18729 ms     | 0xe87 PK11_DeriveWithTemplate()
 18729 ms  0xe87 ret:0x7f2de316a800
 18729 ms  0xe87 PK11_DeriveWithFlags()
 18729 ms  0xe87 basekey:0x7f2de6174700
 18729 ms     | 0xe87 PK11_DeriveWithTemplate()
 18729 ms  0xe87 ret:0x7f2de316a800
 18729 ms  0xe87 PR_Close()
 18729 ms  0xe87 fd:0x7f2de972f070
 18729 ms     | 0xe87 PK11_Encrypt()
 18729 ms     | 0xe87 symkey:0x7f2de34e8e80
 18737 ms  0xe87 PK11_Encrypt()
 18737 ms  0xe87 symkey:0x7f2de2daa700
           /* TID 0xe8f */
 18739 ms  0xe8f PR_Close()
 18739 ms  0xe8f fd:0x7f2de2e2d640
 18787 ms  0xe8f PR_Close()
 18787 ms  0xe8f fd:0x7f2de36d9ac0
 18788 ms  0xe8f PR_Close()
 18788 ms  0xe8f fd:0x7f2de36c5fd0
 18803 ms  0xe8f PR_Close()
 18803 ms  0xe8f fd:0x7f2de36c5eb0
 18870 ms  0xe8f PR_Close()
 18870 ms  0xe8f fd:0x7f2de36c5eb0
 18937 ms  0xe8f PR_Close()
 18937 ms  0xe8f fd:0x7f2de36c5f10
 18938 ms  0xe8f PR_Close()
 18938 ms  0xe8f fd:0x7f2de431a520
           /* TID 0xe87 */
 18944 ms  0xe87 PK11_Encrypt()
 18944 ms  0xe87 symkey:0x7f2de4aff300
 18945 ms  0xe87 PK11_Encrypt()
 18945 ms  0xe87 symkey:0x7f2de6190080
 18967 ms  0xe87 PR_Close()
 18967 ms  0xe87 fd:0x7f2de3f8abb0
           /* TID 0xe7c */
 18969 ms  0xe7c EC_ValidatePublicKey()
 18971 ms  0xe7c ret:0x0
 18971 ms  0xe7c EC_ValidatePublicKey()
 18978 ms  0xe7c ret:0x0
 18978 ms  0xe7c EC_ValidatePublicKey()
 18980 ms  0xe7c ret:0x0
 18980 ms  0xe7c EC_ValidatePublicKey()
 18981 ms  0xe7c ret:0x0
 18981 ms  0xe7c EC_ValidatePublicKey()
           /* TID 0xe87 */
 18985 ms  0xe87 PK11_Encrypt()
 18985 ms  0xe87 symkey:0x7f2de6190080
           /* TID 0xe7c */
 18988 ms  0xe7c ret:0x0
 18988 ms  0xe7c EC_ValidatePublicKey()
 18989 ms  0xe7c ret:0x0
 18989 ms  0xe7c EC_ValidatePublicKey()
 18991 ms  0xe7c ret:0x0
 18991 ms  0xe7c EC_ValidatePublicKey()
 18992 ms  0xe7c ret:0x0
 18992 ms  0xe7c EC_ValidatePublicKey()
 19001 ms  0xe7c ret:0x0
 19002 ms  0xe7c EC_ValidatePublicKey()
 19003 ms  0xe7c ret:0x0
           /* TID 0xe87 */
 19003 ms  0xe87 PK11_Encrypt()
 19003 ms  0xe87 symkey:0x7f2de4321380
 19004 ms  0xe87 PK11_Encrypt()
 19004 ms  0xe87 symkey:0x7f2de4ec0580
 19004 ms  0xe87 PK11_Encrypt()
 19004 ms  0xe87 symkey:0x7f2de4afe600
 19004 ms  0xe87 PK11_Encrypt()
 19004 ms  0xe87 symkey:0x7f2dd21ea500
 19004 ms  0xe87 PK11_Encrypt()
 19004 ms  0xe87 symkey:0x7f2de4734780
 19004 ms  0xe87 PK11_Encrypt()
 19004 ms  0xe87 symkey:0x7f2de36eca00
 19004 ms  0xe87 PK11_Encrypt()
 19004 ms  0xe87 symkey:0x7f2de2daa700
 19005 ms  0xe87 PK11_Encrypt()
 19005 ms  0xe87 symkey:0x7f2de4321000
 19005 ms  0xe87 PK11_Encrypt()
 19005 ms  0xe87 symkey:0x7f2de2dab000
 19005 ms  0xe87 PK11_Encrypt()
 19005 ms  0xe87 symkey:0x7f2de4e7fb80
 19005 ms  0xe87 PK11_Encrypt()
 19005 ms  0xe87 symkey:0x7f2de4ac1180
 19005 ms  0xe87 PK11_Encrypt()
 19005 ms  0xe87 symkey:0x7f2dd2120180
 19005 ms  0xe87 PK11_Encrypt()
 19005 ms  0xe87 symkey:0x7f2de2e78700
 19005 ms  0xe87 PK11_Encrypt()
 19005 ms  0xe87 symkey:0x7f2de43b1280
 19005 ms  0xe87 PK11_Encrypt()
 19005 ms  0xe87 symkey:0x7f2de43e7480
 19005 ms  0xe87 PK11_Encrypt()
 19005 ms  0xe87 symkey:0x7f2de6190080
 19005 ms  0xe87 PK11_Encrypt()
 19005 ms  0xe87 symkey:0x7f2de36ede80
 19005 ms  0xe87 PK11_Encrypt()
 19005 ms  0xe87 symkey:0x7f2dd21e9a80
 19005 ms  0xe87 PK11_Encrypt()
 19005 ms  0xe87 symkey:0x7f2de2daae00
 19005 ms  0xe87 PK11_Encrypt()
 19005 ms  0xe87 symkey:0x7f2de425ba00
 19006 ms  0xe87 PK11_Encrypt()
 19006 ms  0xe87 symkey:0x7f2de2daaa00
 19006 ms  0xe87 PR_Close()
 19006 ms  0xe87 fd:0x7f2de96ff8b0
 19006 ms  0xe87 PR_Close()
 19006 ms  0xe87 fd:0x7f2de96ffac0
 19006 ms  0xe87 PR_Close()
 19006 ms  0xe87 fd:0x7f2de9284c40
 19006 ms  0xe87 PR_Close()
 19006 ms  0xe87 fd:0x7f2de96ff850
 19006 ms  0xe87 PR_Close()
 19006 ms  0xe87 fd:0x7f2de4ecffd0
 19006 ms     | 0xe87 PK11_Encrypt()
 19006 ms     | 0xe87 symkey:0x7f2de4735280
 19006 ms  0xe87 PR_Close()
 19006 ms  0xe87 fd:0x7f2de4789d90
 19006 ms     | 0xe87 PK11_Encrypt()
 19006 ms     | 0xe87 symkey:0x7f2de2daa200
 19006 ms  0xe87 PR_Close()
 19006 ms  0xe87 fd:0x7f2de47894f0
 19006 ms     | 0xe87 PK11_Encrypt()
 19006 ms     | 0xe87 symkey:0x7f2de2daa500
 19007 ms  0xe87 PR_Close()
 19007 ms  0xe87 fd:0x7f2de43aceb0
 19007 ms     | 0xe87 PK11_Encrypt()
 19007 ms     | 0xe87 symkey:0x7f2de4ec1980
 19007 ms  0xe87 PR_Close()
 19007 ms  0xe87 fd:0x7f2dd2156c70
 19007 ms  0xe87 PR_Close()
 19007 ms  0xe87 fd:0x7f2de431a7f0
 19007 ms  0xe87 PR_Close()
 19007 ms  0xe87 fd:0x7f2de43c0040
 19007 ms  0xe87 PR_Close()
 19007 ms  0xe87 fd:0x7f2de4ab72e0
 19007 ms  0xe87 PR_Close()
 19007 ms  0xe87 fd:0x7f2de9625340
 19007 ms  0xe87 PR_Close()
 19007 ms  0xe87 fd:0x7f2de2da0760
 19007 ms  0xe87 PR_Close()
 19007 ms  0xe87 fd:0x7f2de2ec3f70
 19007 ms     | 0xe87 PK11_Encrypt()
 19007 ms     | 0xe87 symkey:0x7f2de2eee580
 19008 ms  0xe87 PR_Close()
 19008 ms  0xe87 fd:0x7f2de2ec3ca0
 19008 ms  0xe87 PR_Close()
 19008 ms  0xe87 fd:0x7f2de2ec36d0
 19008 ms     | 0xe87 PK11_Encrypt()
 19008 ms     | 0xe87 symkey:0x7f2de2eed800
 19008 ms  0xe87 PR_Close()
 19008 ms  0xe87 fd:0x7f2de3f8a2b0
 19008 ms  0xe87 PR_Close()
 19008 ms  0xe87 fd:0x7f2de96ffb50
 19008 ms  0xe87 PR_Close()
 19008 ms  0xe87 fd:0x7f2de43c0ee0
 19008 ms     | 0xe87 PK11_Encrypt()
 19008 ms     | 0xe87 symkey:0x7f2de4afe980
 19008 ms  0xe87 PR_Close()
 19008 ms  0xe87 fd:0x7f2de36c50a0
 19009 ms     | 0xe87 PK11_Encrypt()
 19009 ms     | 0xe87 symkey:0x7f2de2daa700
           /* TID 0xed8 */
 19011 ms  0xed8 PR_Close()
 19011 ms  0xed8 fd:0x7f2de2e2d250
 19011 ms  0xed8 PR_Close()
 19011 ms  0xed8 fd:0x7f2de2e2d250
           /* TID 0xe87 */
 19014 ms  0xe87 PR_Close()
 19014 ms  0xe87 fd:0x7f2de6175a90
 19014 ms     | 0xe87 PK11_Encrypt()
 19014 ms     | 0xe87 symkey:0x7f2de4e7fb80
 19014 ms  0xe87 PR_Close()
 19014 ms  0xe87 fd:0x7f2de618ce50
 19014 ms     | 0xe87 PK11_Encrypt()
 19014 ms     | 0xe87 symkey:0x7f2de4ac1180
 19014 ms  0xe87 PR_Close()
 19014 ms  0xe87 fd:0x7f2de8c5cb20
 19014 ms     | 0xe87 PK11_Encrypt()
 19014 ms     | 0xe87 symkey:0x7f2de4ec0580
 19014 ms  0xe87 PR_Close()
 19014 ms  0xe87 fd:0x7f2de90fe070
 19014 ms     | 0xe87 PK11_Encrypt()
 19014 ms     | 0xe87 symkey:0x7f2de4321000
 19015 ms  0xe87 PR_Close()
 19015 ms  0xe87 fd:0x7f2de9202400
 19015 ms     | 0xe87 PK11_Encrypt()
 19015 ms     | 0xe87 symkey:0x7f2dd21ea500
 19015 ms  0xe87 PR_Close()
 19015 ms  0xe87 fd:0x7f2de9202070
 19015 ms     | 0xe87 PK11_Encrypt()
 19015 ms     | 0xe87 symkey:0x7f2de36ede80
 19015 ms  0xe87 PR_Close()
 19015 ms  0xe87 fd:0x7f2de9593070
 19015 ms     | 0xe87 PK11_Encrypt()
 19015 ms     | 0xe87 symkey:0x7f2de43b1280
 19015 ms  0xe87 PR_Close()
 19015 ms  0xe87 fd:0x7f2de9202d30
 19015 ms     | 0xe87 PK11_Encrypt()
 19015 ms     | 0xe87 symkey:0x7f2de36eca00
 19016 ms  0xe87 PR_Close()
 19016 ms  0xe87 fd:0x7f2de2e2d1f0
 19016 ms     | 0xe87 PK11_Encrypt()
 19016 ms     | 0xe87 symkey:0x7f2de2daaa00
 19016 ms  0xe87 PR_Close()
 19016 ms  0xe87 fd:0x7f2dd21d9430
 19016 ms     | 0xe87 PK11_Encrypt()
 19016 ms     | 0xe87 symkey:0x7f2de2dab000
 19016 ms  0xe87 PR_Close()
 19016 ms  0xe87 fd:0x7f2de2da0970
 19016 ms     | 0xe87 PK11_Encrypt()
 19016 ms     | 0xe87 symkey:0x7f2dd21e9a80
 19017 ms  0xe87 PR_Close()
 19017 ms  0xe87 fd:0x7f2de431a370
 19017 ms     | 0xe87 PK11_Encrypt()
 19017 ms     | 0xe87 symkey:0x7f2de2e78700
           /* TID 0xe7c */
 19017 ms  0xe7c PR_Close()
 19017 ms  0xe7c fd:0x7f2de43c0d90
 19017 ms  0xe7c PR_Close()
 19017 ms  0xe7c fd:0x7f2dd21859a0
 19018 ms  0xe7c PR_Close()
 19018 ms  0xe7c fd:0x7f2dd2185ac0
 19018 ms  0xe7c PR_Close()
 19018 ms  0xe7c fd:0x7f2dd21859a0
 19019 ms  0xe7c PR_Close()
 19019 ms  0xe7c fd:0x7f2dd2185ac0
 19019 ms  0xe7c PR_Close()
 19019 ms  0xe7c fd:0x7f2dd21859a0
           /* TID 0xe87 */
 19020 ms  0xe87 PR_Close()
 19020 ms  0xe87 fd:0x7f2de2e2d610
 19020 ms     | 0xe87 PK11_Encrypt()
 19020 ms     | 0xe87 symkey:0x7f2dd2120180
 19021 ms  0xe87 PR_Close()
 19021 ms  0xe87 fd:0x7f2de425f4f0
 19021 ms     | 0xe87 PK11_Encrypt()
 19021 ms     | 0xe87 symkey:0x7f2de425ba00
 19021 ms  0xe87 PR_Close()
 19021 ms  0xe87 fd:0x7f2de9284a00
 19021 ms     | 0xe87 PK11_Encrypt()
 19021 ms     | 0xe87 symkey:0x7f2de43e7480
           /* TID 0xe94 */
 19023 ms  0xe94 PR_Close()
 19023 ms  0xe94 fd:0x7f2dd2156700
           /* TID 0xe87 */
 19026 ms  0xe87 PR_Close()
 19026 ms  0xe87 fd:0x7f2de90fe2b0
 19026 ms     | 0xe87 PK11_Encrypt()
 19026 ms     | 0xe87 symkey:0x7f2de2daae00
 19026 ms  0xe87 PR_Close()
 19026 ms  0xe87 fd:0x7f2de61750a0
 19026 ms     | 0xe87 PK11_Encrypt()
 19026 ms     | 0xe87 symkey:0x7f2de4afe600
 19026 ms  0xe87 PR_Close()
 19026 ms  0xe87 fd:0x7f2de96af8e0
 19026 ms     | 0xe87 PK11_Encrypt()
 19026 ms     | 0xe87 symkey:0x7f2de6190080
 19027 ms  0xe87 PR_Close()
 19027 ms  0xe87 fd:0x7f2de9336190
 19027 ms     | 0xe87 PK11_Encrypt()
 19027 ms     | 0xe87 symkey:0x7f2de4321380
 19027 ms  0xe87 PR_Close()
 19027 ms  0xe87 fd:0x7f2de431a190
 19027 ms     | 0xe87 PK11_Encrypt()
 19027 ms     | 0xe87 symkey:0x7f2de4734780
           /* TID 0xe7c */
 19051 ms  0xe7c PR_Close()
 19051 ms  0xe7c fd:0x7f2dd2185ac0
 19051 ms  0xe7c PR_Close()
 19051 ms  0xe7c fd:0x7f2de2ec3be0
 19057 ms  0xe7c PR_Close()
 19057 ms  0xe7c fd:0x7f2dd2185ac0
 19057 ms  0xe7c PR_Close()
 19057 ms  0xe7c fd:0x7f2de2ec3be0
 19059 ms  0xe7c PR_Close()
 19059 ms  0xe7c fd:0x7f2dedfc89a0
 19059 ms  0xe7c PR_Close()
 19059 ms  0xe7c fd:0x7f2dedfc88b0
 19059 ms  0xe7c PR_Close()
 19059 ms  0xe7c fd:0x7f2dedfc8a60
 19061 ms  0xe7c PR_Close()
 19061 ms  0xe7c fd:0x7f2de2ec3be0
 19063 ms  0xe7c PR_Close()
 19063 ms  0xe7c fd:0x7f2de2ec3be0
 19068 ms  0xe7c PR_Close()
 19068 ms  0xe7c fd:0x7f2dd2185ac0
 19068 ms  0xe7c PR_Close()
 19068 ms  0xe7c fd:0x7f2de2ec37f0
 19068 ms  0xe7c PR_Close()
 19068 ms  0xe7c fd:0x7f2dd2185ac0
 19068 ms  0xe7c PR_Close()
 19068 ms  0xe7c fd:0x7f2de2ec37f0
 19071 ms  0xe7c PR_Close()
 19071 ms  0xe7c fd:0x7f2de2ec3c70
 19072 ms  0xe7c PR_Close()
 19072 ms  0xe7c fd:0x7f2de2ec3c70
 19074 ms  0xe7c PR_Close()
 19074 ms  0xe7c fd:0x7f2dd2185ac0
 19075 ms  0xe7c PR_Close()
 19075 ms  0xe7c fd:0x7f2de2ec3d00
 19075 ms  0xe7c PR_Close()
 19075 ms  0xe7c fd:0x7f2dd2185ac0
 19075 ms  0xe7c PR_Close()
 19075 ms  0xe7c fd:0x7f2de2ec3d00
 19078 ms  0xe7c PR_Close()
 19078 ms  0xe7c fd:0x7f2de2ec3d30
 19079 ms  0xe7c PR_Close()
 19079 ms  0xe7c fd:0x7f2de2ec3d30
 19089 ms  0xe7c PR_Close()
 19089 ms  0xe7c fd:0x7f2de2edd730
 19090 ms  0xe7c PR_Close()
 19090 ms  0xe7c fd:0x7f2de2edd730
 19093 ms  0xe7c PR_Close()
 19093 ms  0xe7c fd:0x7f2de2edddc0
           /* TID 0xe8f */
 19097 ms  0xe8f PR_Close()
 19097 ms  0xe8f fd:0x7f2dd2156b50
           /* TID 0xe94 */
 19101 ms  0xe94 PR_Close()
 19101 ms  0xe94 fd:0x7f2dd2156580
 19104 ms  0xe94 PR_Close()
 19104 ms  0xe94 fd:0x7f2dd2156580
           /* TID 0xe7c */
 19104 ms  0xe7c PR_Close()
 19104 ms  0xe7c fd:0x7f2dd2185ac0
 19104 ms  0xe7c PR_Close()
 19104 ms  0xe7c fd:0x7f2dd2156580
           /* TID 0xe94 */
 19110 ms  0xe94 PR_Close()
 19110 ms  0xe94 fd:0x7f2dd2156700
           /* TID 0xe87 */
 19125 ms  0xe87 PK11_Encrypt()
 19125 ms  0xe87 symkey:0x7f2de4aff300
 19125 ms  0xe87 PR_Close()
 19125 ms  0xe87 fd:0x7f2de42b2400
 19126 ms     | 0xe87 PK11_Encrypt()
 19126 ms     | 0xe87 symkey:0x7f2de4aff300
           /* TID 0xe94 */
 19140 ms  0xe94 PR_Close()
 19140 ms  0xe94 fd:0x7f2dd1d65fd0
           /* TID 0xe87 */
 19144 ms  0xe87 SSL_ImportFD()
 19144 ms  0xe87 ret:0x7f2dd21d9130
 19144 ms  0xe87 SSL_AuthCertificateHook()
 19144 ms  0xe87 fd:0x7f2dd21d9130
 19144 ms  0xe87 ret:0x0
 19144 ms  0xe87 PR_Connect()
 19144 ms  0xe87 fd:0x7f2dd21d9130
           /* TID 0xe81 */
 19152 ms  0xe81 PR_Close()
 19152 ms  0xe81 fd:0x7f2decb99df0
           /* TID 0xe87 */
 19153 ms  0xe87 SSL_ImportFD()
 19153 ms  0xe87 ret:0x7f2de2e2dc10
 19153 ms  0xe87 SSL_AuthCertificateHook()
 19153 ms  0xe87 fd:0x7f2de2e2dc10
 19153 ms  0xe87 ret:0x0
 19153 ms  0xe87 PR_Connect()
 19153 ms  0xe87 fd:0x7f2de2e2dc10
 19154 ms  0xe87 PR_Close()
 19154 ms  0xe87 fd:0x7f2de2e2dc10
 19154 ms  0xe87 PR_Close()
 19154 ms  0xe87 fd:0x7f2dd21d9130
           /* TID 0xe94 */
 19163 ms  0xe94 PR_Close()
 19163 ms  0xe94 fd:0x7f2dd2156700
           /* TID 0xe87 */
 19173 ms  0xe87 PR_Close()
 19173 ms  0xe87 fd:0x7f2de36c5160
           /* TID 0xe7c */
 19174 ms  0xe7c PR_Close()
 19174 ms  0xe7c fd:0x7f2dd2185ac0
 19174 ms  0xe7c PR_Close()
 19174 ms  0xe7c fd:0x7f2dd21d96d0
           /* TID 0xed8 */
 19183 ms  0xed8 PR_Close()
 19183 ms  0xed8 fd:0x7f2de2e76820
 19183 ms  0xed8 PR_Close()
 19183 ms  0xed8 fd:0x7f2de2e76820
 19183 ms  0xed8 PR_Close()
 19183 ms  0xed8 fd:0x7f2de2e76820
 19183 ms  0xed8 PR_Close()
 19183 ms  0xed8 fd:0x7f2de2e76be0
           /* TID 0xe94 */
 19184 ms  0xe94 PR_Close()
 19184 ms  0xe94 fd:0x7f2de2e76be0
           /* TID 0xe8f */
 19189 ms  0xe8f PR_Close()
 19189 ms  0xe8f fd:0x7f2de2ec1730
 19189 ms  0xe8f PR_Close()
 19189 ms  0xe8f fd:0x7f2de2ec1760
           /* TID 0xe81 */
 19200 ms  0xe81 PR_Close()
 19200 ms  0xe81 fd:0x7f2de36d9940
           /* TID 0xe8f */
 19208 ms  0xe8f PR_Close()
 19208 ms  0xe8f fd:0x7f2dd2185820
           /* TID 0xe7c */
 19216 ms  0xe7c PR_Close()
 19216 ms  0xe7c fd:0x7f2dd2185ac0
 19216 ms  0xe7c PR_Close()
 19216 ms  0xe7c fd:0x7f2de2ec18b0
           /* TID 0xe94 */
 19218 ms  0xe94 PR_Close()
 19218 ms  0xe94 fd:0x7f2de2ec1940
           /* TID 0xe81 */
 19222 ms  0xe81 PR_Close()
 19222 ms  0xe81 fd:0x7f2de9243820
           /* TID 0xe94 */
 19222 ms  0xe94 PR_Close()
 19222 ms  0xe94 fd:0x7f2dd2156b20
 19224 ms  0xe94 PR_Close()
 19224 ms  0xe94 fd:0x7f2dd2156b20
 19242 ms  0xe94 PR_Close()
 19242 ms  0xe94 fd:0x7f2dd2156430
 19243 ms  0xe94 PR_Close()
 19243 ms  0xe94 fd:0x7f2dd2156430
 19246 ms  0xe94 PR_Close()
 19246 ms  0xe94 fd:0x7f2dd2156fd0
 19247 ms  0xe94 PR_Close()
 19247 ms  0xe94 fd:0x7f2dd2185160
 19256 ms  0xe94 PR_Close()
 19256 ms  0xe94 fd:0x7f2dd2185dc0
 19260 ms  0xe94 PR_Close()
 19260 ms  0xe94 fd:0x7f2dd21d96a0
 19266 ms  0xe94 PR_Close()
 19266 ms  0xe94 fd:0x7f2de2da07c0
 19275 ms  0xe94 PR_Close()
 19275 ms  0xe94 fd:0x7f2de2da0a00
 19277 ms  0xe94 PR_Close()
 19277 ms  0xe94 fd:0x7f2de2da0a00
           /* TID 0xe7c */
 19435 ms  0xe7c PR_Close()
 19435 ms  0xe7c fd:0x7f2dd2156e20
 19435 ms  0xe7c PR_Close()
 19435 ms  0xe7c fd:0x7f2dd2156e20
 19441 ms  0xe7c PR_Close()
 19441 ms  0xe7c fd:0x7f2e0b3da130
 19441 ms  0xe7c PR_Close()
 19441 ms  0xe7c fd:0x7f2e0b3da190
Process terminated
