0091e4:              _Fl28x_LeaveCmdMode:
000091e4   7622       EALLOW       
000091e5   7640       LCR          0x009216 // 调用_Flash28335_FlashRegSleep
000091e6   9216
000091e7   9a00       MOVB         AL, #0x0
000091e8   f4a9       MOV          *(0:0x0a81), AL
000091e9   0a81
000091ea   f5a9       MOV          AL, *(0:0x0a90)
000091eb   0a90
000091ec   f004       XORB         AL, #0x4
000091ed   f4a9       MOV          *(0:0x0a90), AL
000091ee   0a90
000091ef   761a       EDIS         
000091f0   0006       LRETR        