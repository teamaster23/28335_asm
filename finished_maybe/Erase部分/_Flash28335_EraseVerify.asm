00914a:              _Fl28x_EraseVerify:
0000914a   fe08       ADDB         SP, #8
0000914b   7c43       MOV          *-SP[3], AR4
0000914c   1e42       MOVL         *-SP[2], ACC
0000914d   7640       LCR          0x009581 // 调用_Fl28x_DisableNMI
0000914e   9581
0000914f   9647       MOV          *-SP[7], AL
00009150   7640       LCR          0x00959a // 调用DisableInt_test
00009151   959a
00009152   9646       MOV          *-SP[6], AL
00009153   0642       MOVL         ACC, *-SP[2]
00009154   7640       LCR          0x009235 // 调用_Fl28x_OpenPulse_test
00009155   9235
00009156   9645       MOV          *-SP[5], AL
00009157   9a03       MOVB         AL, #0x3
00009158   f4a9       MOV          *(0:0x0a91), AL
00009159   0a91
0000915a   9a0a       MOVB         AL, #0xa
0000915b   f4a9       MOV          *(0:0x0a8c), AL
0000915c   0a8c
0000915d   9a00       MOVB         AL, #0x0
0000915e   9b02       MOVB         AH, #0x2
0000915f   7640       LCR          0x00958d // 调用_Fl28x_Delay_test
00009160   958d
00009161   9243       MOV          AL, *-SP[3]
00009162   1aa9       OR           AL, #0x0a0b
00009163   0a0b
00009164   f4a9       MOV          *(0:0x0a90), AL
00009165   0a90
00009166   ff20       MOV          ACC, #6553
00009167   1999
00009168   7640       LCR          0x00958d // 调用_Fl28x_Delay_test
00009169   958d
0000916a   9243       MOV          AL, *-SP[3]
0000916b   1aa9       OR           AL, #0x020b
0000916c   020b
0000916d   f4a9       MOV          *(0:0x0a90), AL
0000916e   0a90
0000916f   ff22       MOV          ACC, #0x3333 << 2
00009170   3333
00009171   7640       LCR          0x00958d // 调用_Fl28x_Delay_test
00009172   958d
00009173   5845       MOVZ         AR0, *-SP[5]
00009174   8f00       MOVL         XAR4, #0x000a9c
00009175   0a9c
00009176   9294       MOV          AL, *+XAR4[AR0]
00009177   9644       MOV          *-SP[4], AL
00009178   9243       MOV          AL, *-SP[3]
00009179   1aa9       OR           AL, #0x0a0b
0000917a   0a0b
0000917b   f4a9       MOV          *(0:0x0a90), AL
0000917c   0a90
0000917d   9a00       MOVB         AL, #0x0
0000917e   9b01       MOVB         AH, #0x1
0000917f   7640       LCR          0x00958d // 调用_Fl28x_Delay_test
00009180   958d
00009181   28a9       MOV          AL, #0x0a0f
00009182   0a0f
00009183   f4a9       MOV          *(0:0x0a90), AL
00009184   0a90
00009185   ff20       MOV          ACC, #6553
00009186   1999
00009187   7640       LCR          0x00958d // 调用_Fl28x_Delay_test
00009188   958d
00009189   761a       EDIS         
0000918a   9246       MOV          AL, *-SP[6]
0000918b   7640       LCR          0x00959e // 调用RestoreInt_test
0000918c   959e
0000918d   f447       MOV          *(0:0x7077), *-SP[7]
0000918e   7077
0000918f   9244       MOV          AL, *-SP[4]
00009190   fe88       SUBB         SP, #8
00009191   0006       LRETR