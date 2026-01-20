0092e8:              _Fl28x_CompactVerify:
000092e8   fe08       ADDB         SP, #8
000092e9   7c43       MOV          *-SP[3], AR4
000092ea   1e42       MOVL         *-SP[2], ACC
000092eb   7640       LCR          0x009581 //调用_Fl28x_DisableNMI_test
000092ec   9581
000092ed   9647       MOV          *-SP[7], AL
000092ee   7640       LCR          0x00959a // 调用DisableInt
000092ef   959a
000092f0   9646       MOV          *-SP[6], AL
000092f1   0642       MOVL         ACC, *-SP[2]
000092f2   7640       LCR          0x009235 // 调用_Fl28x_OpenPulse_test
000092f3   9235
000092f4   9645       MOV          *-SP[5], AL
000092f5   9243       MOV          AL, *-SP[3]
000092f6   1aa9       OR           AL, #0x0a0b
000092f7   0a0b
000092f8   f4a9       MOV          *(0:0x0a90), AL
000092f9   0a90
000092fa   9a05       MOVB         AL, #0x5
000092fb   f4a9       MOV          *(0:0x0a91), AL
000092fc   0a91
000092fd   ff20       MOV          ACC, #6553
000092fe   1999
000092ff   7640       LCR          0x00958d // 调用Delay_test
00009300   958d
00009301   9243       MOV          AL, *-SP[3]
00009302   1aa9       OR           AL, #0x020b
00009303   020b
00009304   f4a9       MOV          *(0:0x0a90), AL
00009305   0a90
00009306   9a00       MOVB         AL, #0x0
00009307   9b08       MOVB         AH, #0x8
00009308   7640       LCR          0x00958d // 调用Delay_test
00009309   958d
0000930a   5845       MOVZ         AR0, *-SP[5]
0000930b   8f00       MOVL         XAR4, #0x000a9c
0000930c   0a9c
0000930d   9294       MOV          AL, *+XAR4[AR0]
0000930e   9644       MOV          *-SP[4], AL
0000930f   9243       MOV          AL, *-SP[3]
00009310   1aa9       OR           AL, #0x0a0b
00009311   0a0b
00009312   f4a9       MOV          *(0:0x0a90), AL
00009313   0a90
00009314   ff20       MOV          ACC, #6553
00009315   1999
00009316   7640       LCR          0x00958d // 调用Delay_test
00009317   958d
00009318   7640       LCR          0x009246
00009319   9246
0000931a   9246       MOV          AL, *-SP[6]
0000931b   7640       LCR          0x00959e // 调用RestoreInt_test
0000931c   959e
0000931d   f447       MOV          *(0:0x7077), *-SP[7]
0000931e   7077
0000931f   9244       MOV          AL, *-SP[4]
00009320   fe88       SUBB         SP, #8
00009321   0006       LRETR        