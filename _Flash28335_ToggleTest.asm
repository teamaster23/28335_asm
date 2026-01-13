009564:              _Flash28335_ToggleTest:
00009564   b2bd       MOVL         *SP++, XAR1
00009565   aabd       MOVL         *SP++, XAR2
00009566   8ba4       MOVL         XAR1, XAR4
00009567   86a9       MOVL         XAR2, ACC
00009568   f5a9       MOV          AL, *(0:0x7077)
00009569   7077
0000956a   18a9       AND          AL, #0xfffe
0000956b   fffe
0000956c   f4a9       MOV          *(0:0x7077), AL
0000956d   7077
0000956e   7640       LCR          0x00959a
0000956f   959a
00009570   7640       LCR          0x009579  // 调用_Fl28x_WatchDogDisable
00009571   9579
009572:              $C$L1:
009572:              $C$DW$L$_Flash28335_ToggleTest$2$B:
00009572   aac1       MOVL         *+XAR1[0], XAR2
00009573   8f32       MOVL         XAR4, #0x320000
00009574   0000
00009575   a8a9       MOVL         ACC, XAR4
00009576   7640       LCR          0x00958d
00009577   958d
00009578   6ffa       SB           -6, UNC