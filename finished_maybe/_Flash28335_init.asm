00953b:              _Fl28335_Init:
0000953b   aabd       MOVL         *SP++, XAR2
0000953c   86a4       MOVL         XAR2, XAR4
0000953d   7640       LCR          0x009579  //调用WatchDogDisable
0000953e   9579
0000953f   aaa9       MOVL         ACC, XAR2
00009540   ec08       SBF          8, EQ
00009541   0200       MOVB         ACC, #0
00009542   8aa2       MOVL         XAR4, XAR2
00009543   1ec4       MOVL         *+XAR4[0], ACC
00009544   8aa2       MOVL         XAR4, XAR2
00009545   2bd4       MOV          *+XAR4[2], #0
00009546   8aa2       MOVL         XAR4, XAR2
00009547   2bdc       MOV          *+XAR4[3], #0
009548:              $C$L1:
00009548   8f3f       MOVL         XAR4, #0x3fffb9
00009549   ffb9
0000954a   1bc4       CMP          *+XAR4[0], #-2
0000954b   fffe
0000954c   ec03       SBF          3, EQ
0000954d   9a0e       MOVB         AL, #0xe
0000954e   6f14       SB           20, UNC
00954f:              $C$L2:
0000954f   f5a9       MOV          AL, *(0:0x0882)
00009550   0882
00009551   52fa       CMPB         AL, #0xfa
00009552   ec0a       SBF          10, EQ
00009553   52ef       CMPB         AL, #0xef
00009554   ed06       SBF          6, NEQ
00009555   8f38       MOVL         XAR4, #0x380090
00009556   0090
00009557   92c4       MOV          AL, *+XAR4[0]
00009558   52ef       CMPB         AL, #0xef
00009559   ec03       SBF          3, EQ
00955a:              $C$L3:
0000955a   9a0d       MOVB         AL, #0xd
0000955b   6f07       SB           7, UNC
00955c:              $C$L4:
0000955c   f5a9       MOV          AL, *(0:0x0a88)
0000955d   0a88
0000955e   ec03       SBF          3, EQ
0000955f   9a00       MOVB         AL, #0x0
00009560   6f02       SB           2, UNC
009561:              $C$L5:
00009561   9a0a       MOVB         AL, #0xa
009562:              $C$L6:
00009562   86be       MOVL         XAR2, *--SP
00009563   0006       LRETR      