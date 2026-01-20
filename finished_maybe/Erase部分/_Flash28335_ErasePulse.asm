   
009192:              _Fl28x_ErasePulse:
00009192   fe08       ADDB         SP, #8
00009193   7d44       MOV          *-SP[4], AR5
00009194   7c43       MOV          *-SP[3], AR4
00009195   1e42       MOVL         *-SP[2], ACC
00009196   7640       LCR          0x009581 // 调用 _Fl28x_DisableNMI_test
00009197   9581
00009198   9647       MOV          *-SP[7], AL
00009199   7640       LCR          0x00959a // 调用DisableInt
0000919a   959a
0000919b   9646       MOV          *-SP[6], AL
0000919c   0642       MOVL         ACC, *-SP[2]
0000919d   7640       LCR          0x009235 // 调用_Fl28x_OpenPulse_test
0000919e   9235
0000919f   9a04       MOVB         AL, #0x4
000091a0   f4a9       MOV          *(0:0x0a91), AL
000091a1   0a91
000091a2   9a06       MOVB         AL, #0x6
000091a3   f4a9       MOV          *(0:0x0a8b), AL
000091a4   0a8b
000091a5   9a0b       MOVB         AL, #0xb
000091a6   f4a9       MOV          *(0:0x0a89), AL
000091a7   0a89
000091a8   9a03       MOVB         AL, #0x3
000091a9   f4a9       MOV          *(0:0x0a8c), AL
000091aa   0a8c
000091ab   f443       MOV          *(0:0x0a8a), *-SP[3]
000091ac   0a8a
000091ad   9a00       MOVB         AL, #0x0
000091ae   9b02       MOVB         AH, #0x2
000091af   7640       LCR          0x00958d // 调用_Fl28x_Delay_test
000091b0   958d
000091b1   9244       MOV          AL, *-SP[4]
000091b2   1aa9       OR           AL, #0x0a0b
000091b3   0a0b
000091b4   f4a9       MOV          *(0:0x0a90), AL
000091b5   0a90
000091b6   2b45       MOV          *-SP[5], #0
000091b7   9243       MOV          AL, *-SP[3]
000091b8   5445       CMP          AL, *-SP[5]
000091b9   6809       SB           9, LO
0091ba:              L1:
000091ba   9a00       MOVB         AL, #0x0
000091bb   9b02       MOVB         AH, #0x2
000091bc   7640       LCR          0x00958d // 调用_Fl28x_Delay_test
000091bd   958d
000091be   0a45       INC          *-SP[5]
000091bf   9243       MOV          AL, *-SP[3]
000091c0   5445       CMP          AL, *-SP[5]
000091c1   67f9       SB           -7, HIS
0091c2:              L2:
000091c2   9244       MOV          AL, *-SP[4]
000091c3   1aa9       OR           AL, #0x020b
000091c4   020b
000091c5   f4a9       MOV          *(0:0x0a90), AL
000091c6   0a90
000091c7   ff2f       MOV          ACC, #0x1518 << 15
000091c8   1518
000091c9   7640       LCR          0x00958d // 调用_Fl28x_Delay_test
000091ca   958d
000091cb   9244       MOV          AL, *-SP[4]
000091cc   1aa9       OR           AL, #0x0a0b
000091cd   0a0b
000091ce   f4a9       MOV          *(0:0x0a90), AL
000091cf   0a90
000091d0   9a00       MOVB         AL, #0x0
000091d1   9b28       MOVB         AH, #0x28
000091d2   7640       LCR          0x00958d // 调用_Fl28x_Delay_test
000091d3   958d
000091d4   28a9       MOV          AL, #0x0a0f
000091d5   0a0f
000091d6   f4a9       MOV          *(0:0x0a90), AL
000091d7   0a90
000091d8   ff20       MOV          ACC, #6553
000091d9   1999
000091da   7640       LCR          0x00958d
000091db   958d
000091dc   761a       EDIS         
000091dd   9246       MOV          AL, *-SP[6]
000091de   7640       LCR          0x00959e // 调用RestoreInt_test
000091df   959e
000091e0   f447       MOV          *(0:0x7077), *-SP[7]
000091e1   7077
000091e2   fe88       SUBB         SP, #8
000091e3   0006       LRETR      
