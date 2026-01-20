0094de:              _Fl28335_ClearSector:
000094de   fe0c       ADDB         SP, #12
000094df   a048       MOVL         *-SP[8], XAR5
000094e0   9645       MOV          *-SP[5], AL
000094e1   a844       MOVL         *-SP[4], XAR4
000094e2   c444       MOVL         XAR6, *-SP[4]
000094e3   8f30       MOVL         XAR4, #0x300000
000094e4   0000
000094e5   a8a9       MOVL         ACC, XAR4
000094e6   0fa6       CMPL         ACC, XAR6
000094e7   6610       SB           16, HI
000094e8   8845       MOVZ         AR6, *-SP[5]
000094e9   0644       MOVL         ACC, *-SP[4]
000094ea   8f33       MOVL         XAR4, #0x33ffff
000094eb   ffff
000094ec   0da6       ADDU         ACC, AR6
000094ed   1901       SUBB         ACC, #1
000094ee   1ea6       MOVL         XAR6, ACC
000094ef   a8a9       MOVL         ACC, XAR4
000094f0   0fa6       CMPL         ACC, XAR6
000094f1   6806       SB           6, LO
000094f2   0644       MOVL         ACC, *-SP[4]
000094f3   ff0f       SUB          ACC, #0x60 << 15
000094f4   0060
000094f5   1e4c       MOVL         *-SP[12], ACC
000094f6   6f03       SB           3, UNC
0094f7:              $C$L1:
000094f7   9a0c       MOVB         AL, #0xc
000094f8   6f17       SB           23, UNC
0094f9:              $C$L2:
000094f9   56bf       MOVB         *-SP[1], #0x40, UNC
000094fa   4041
000094fb   064c       MOVL         ACC, *-SP[12]
000094fc   5d45       MOVZ         AR5, *-SP[5]
000094fd   8a48       MOVL         XAR4, *-SP[8]
000094fe   7640       LCR          0x00949d // 调用_Fl28x_ClearLoop_test
000094ff   949d
00009500   56bf       MOVB         *-SP[1], #0x80, UNC
00009501   8041
00009502   8f40       MOVL         XAR5, #0x000400
00009503   0400
00009504   8a48       MOVL         XAR4, *-SP[8]
00009505   064c       MOVL         ACC, *-SP[12]
00009506   7640       LCR          0x00949d // 调用_Fl28x_ClearLoop_test
00009507   949d
00009508   2b41       MOV          *-SP[1], #0
00009509   5d45       MOVZ         AR5, *-SP[5]
0000950a   8a48       MOVL         XAR4, *-SP[8]
0000950b   064c       MOVL         ACC, *-SP[12]
0000950c   7640       LCR          0x00949d // 调用_Fl28x_ClearLoop_test
0000950d   949d
0000950e   9649       MOV          *-SP[9], AL
00950f:              $C$L3:
0000950f   fe8c       SUBB         SP, #12
00009510   0006       LRETR 