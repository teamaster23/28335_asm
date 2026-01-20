009322:              _Fl28x_CompactPulse:
00009322   fe08       ADDB         SP, #8
00009323   7d44       MOV          *-SP[4], AR5
00009324   7c43       MOV          *-SP[3], AR4
00009325   1e42       MOVL         *-SP[2], ACC
00009326   7640       LCR          0x009581 // 调用_Fl28x_DisableNMI_test
00009327   9581
00009328   9647       MOV          *-SP[7], AL
00009329   7640       LCR          0x00959a // 调用DisableInt_test
0000932a   959a
0000932b   9646       MOV          *-SP[6], AL
0000932c   0642       MOVL         ACC, *-SP[2]
0000932d   7640       LCR          0x009235 // 调用_Fl28x_OpenPulse_test
0000932e   9235
0000932f   9645       MOV          *-SP[5], AL
00009330   7640       LCR          0x00925d // 调用_Fl28x_MaskAll_test
00009331   925d
00009332   5845       MOVZ         AR0, *-SP[5]
00009333   8f00       MOVL         XAR4, #0x000a98
00009334   0a98
00009335   9243       MOV          AL, *-SP[3]
00009336   9694       MOV          *+XAR4[AR0], AL
00009337   9244       MOV          AL, *-SP[4]
00009338   1aa9       OR           AL, #0x0a0b
00009339   0a0b
0000933a   f4a9       MOV          *(0:0x0a90), AL
0000933b   0a90
0000933c   9a06       MOVB         AL, #0x6
0000933d   f4a9       MOV          *(0:0x0a91), AL
0000933e   0a91
0000933f   f4a9       MOV          *(0:0x0a8b), AL
00009340   0a8b
00009341   f4a9       MOV          *(0:0x0a89), AL
00009342   0a89
00009343   9a00       MOVB         AL, #0x0
00009344   f4a9       MOV          *(0:0x0a8c), AL
00009345   0a8c
00009346   9a00       MOVB         AL, #0x0
00009347   9b0a       MOVB         AH, #0xa
00009348   7640       LCR          0x00958d // 调用Delay_test
00009349   958d
0000934a   9244       MOV          AL, *-SP[4]
0000934b   1aa9       OR           AL, #0x020b
0000934c   020b
0000934d   f4a9       MOV          *(0:0x0a90), AL
0000934e   0a90
0000934f   ff2f       MOV          ACC, #0x3e8 << 15
00009350   03e8
00009351   7640       LCR          0x00958d // 调用Delay_test
00009352   958d
00009353   9244       MOV          AL, *-SP[4]
00009354   1aa9       OR           AL, #0x0a0b
00009355   0a0b
00009356   f4a9       MOV          *(0:0x0a90), AL
00009357   0a90
00009358   9a00       MOVB         AL, #0x0
00009359   9b01       MOVB         AH, #0x1
0000935a   7640       LCR          0x00958d // 调用Delay_test
0000935b   958d
0000935c   7640       LCR          0x009246 // 调用_Fl28x_ClosePulse_test
0000935d   9246
0000935e   9246       MOV          AL, *-SP[6]
0000935f   7640       LCR          0x00959e // 调用RestoreInt_test
00009360   959e
00009361   f447       MOV          *(0:0x7077), *-SP[7]
00009362   7077
00009363   fe88       SUBB         SP, #8
00009364   0006       LRETR    