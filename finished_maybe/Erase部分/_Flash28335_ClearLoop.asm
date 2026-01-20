00949d:              _Fl28x_ClearLoop:
0000949d   fe0c       ADDB         SP, #12
0000949e   a846       MOVL         *-SP[6], XAR4
0000949f   7d43       MOV          *-SP[3], AR5
000094a0   1e42       MOVL         *-SP[2], ACC
000094a1   284b       MOV          *-SP[11], #0x03e7
000094a2   03e7
000094a3   2849       MOV          *-SP[9], #0x0001
000094a4   0001
000094a5   9243       MOV          AL, *-SP[3]
000094a6   5449       CMP          AL, *-SP[9]
000094a7   682d       SB           45, LO
0094a8:              L1:
000094a8   2b4a       MOV          *-SP[10], #0
000094a9   924a       MOV          AL, *-SP[10]
000094aa   522d       CMPB         AL, #0x2d
000094ab   671b       SB           27, HIS
0094ac:              L2:
000094ac   5c4f       MOVZ         AR4, *-SP[15]
000094ad   0642       MOVL         ACC, *-SP[2]
000094ae   7640       LCR          0x009268 // 调用_Fl28x_ProgVerify_test
000094af   9268
000094b0   9647       MOV          *-SP[7], AL
000094b1   761f       MOVW         DP, #0x300
000094b2   0300
000094b3   0600       MOVL         ACC, @0x0
000094b4   be00       MOVB         XAR6, #0x00
000094b5   0fa6       CMPL         ACC, XAR6
000094b6   ec03       SBF          3, EQ
000094b7   c500       MOVL         XAR7, @0x0
000094b8   3e67       LCR          *XAR7 // 无意义
0094b9:              L3:
000094b9   9247       MOV          AL, *-SP[7]
000094ba   ec0c       SBF          12, EQ
000094bb   ff5e       NOT          AL
000094bc   9648       MOV          *-SP[8], AL
000094bd   5c48       MOVZ         AR4, *-SP[8]
000094be   5d4f       MOVZ         AR5, *-SP[15]
000094bf   0642       MOVL         ACC, *-SP[2]
000094c0   7640       LCR          0x0092a6 // 调用 _Fl28x_ProgPulse_test
000094c1   92a6
000094c2   0a4a       INC          *-SP[10]
000094c3   924a       MOV          AL, *-SP[10]
000094c4   522d       CMPB         AL, #0x2d
000094c5   68e7       SB           -25, LO
0094c6:              L4:
000094c6   9247       MOV          AL, *-SP[7]
000094c7   ec06       SBF          6, EQ
000094c8   924f       MOV          AL, *-SP[15]
000094c9   ed04       SBF          4, NEQ
000094ca   284b       MOV          *-SP[11], #0x0015
000094cb   0015
000094cc   6f08       SB           8, UNC
0094cd:              L5:
000094cd   0642       MOVL         ACC, *-SP[2]
000094ce   0901       ADDB         ACC, #1
000094cf   1e42       MOVL         *-SP[2], ACC
000094d0   0a49       INC          *-SP[9]
000094d1   9243       MOV          AL, *-SP[3]
000094d2   5449       CMP          AL, *-SP[9]
000094d3   67d5       SB           -43, HIS
0094d4:              L6:
000094d4   924b       MOV          AL, *-SP[11]
000094d5   5215       CMPB         AL, #0x15
000094d6   ec05       SBF          5, EQ
000094d7   1ba9       CMP          AL, #999
000094d8   03e7
000094d9   ed02       SBF          2, NEQ
000094da   2b4b       MOV          *-SP[11], #0
0094db:              L7:
000094db   924b       MOV          AL, *-SP[11]
000094dc   fe8c       SUBB         SP, #12
000094dd   0006       LRETR
