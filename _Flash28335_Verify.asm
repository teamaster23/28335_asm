009459:              _Flash28335_Verify:
00009459   b2bd       MOVL         *SP++, XAR1
0000945a   aabd       MOVL         *SP++, XAR2
0000945b   a2bd       MOVL         *SP++, XAR3
0000945c   e203       MOV32        *SP++, R4H
0000945d   04bd
0000945e   e203       MOV32        *SP++, R5H
0000945f   05bd
00009460   fe02       ADDB         SP, #2
00009461   8250       MOVL         XAR3, *-SP[16]
00009462   8ba5       MOVL         XAR1, XAR5
00009463   bda9       MOV32        R5H, ACC
00009464   0f26
00009465   bda4       MOV32        R4H, XAR4
00009466   0f22
00009467   8aa3       MOVL         XAR4, XAR3
00009468   7640       LCR          0x00953b //调用init
00009469   953b
0000946a   5200       CMPB         AL, #0x0
0000946b   9641       MOV          *-SP[1], AL
0000946c   ed27       SBF          39, NEQ
0000946d   bfa9       MOV32        ACC, R5H
0000946e   0f26
0000946f   ec24       SBF          36, EQ
00009470   d201       MOVB         XAR2, #0x1
009471:              $C$L1:
009471:              $C$DW$L$_Flash28335_Verify$4$B:
00009471   be00       MOVB         XAR6, #0x00
00009472   761f       MOVW         DP, #0x300
00009473   0300
00009474   0600       MOVL         ACC, @0x0
00009475   0fa6       CMPL         ACC, XAR6
00009476   ec03       SBF          3, EQ
009477:              $C$DW$L$_Flash28335_Verify$4$E:
009477:              $C$DW$L$_Flash28335_Verify$5$B:
00009477   1ea7       MOVL         XAR7, ACC
00009478   3e67       LCR          *XAR7
009479:              $C$DW$L$_Flash28335_Verify$5$E:
009479:              $C$L2:
009479:              $C$DW$L$_Flash28335_Verify$6$B:
00009479   bfa4       MOV32        XAR4, R4H
0000947a   0f22
0000947b   92c1       MOV          AL, *+XAR1[0]
0000947c   54c4       CMP          AL, *+XAR4[0]
0000947d   ed0d       SBF          13, NEQ
00947e:              $C$DW$L$_Flash28335_Verify$6$E:
00947e:              $C$DW$L$_Flash28335_Verify$7$B:
0000947e   bfa9       MOV32        ACC, R4H
0000947f   0f22
00009480   d901       ADDB         XAR1, #1
00009481   0901       ADDB         ACC, #1
00009482   bda9       MOV32        R4H, ACC
00009483   0f22
00009484   da01       ADDB         XAR2, #1
00009485   bfa9       MOV32        ACC, R5H
00009486   0f26
00009487   0fa2       CMPL         ACC, XAR2
00009488   67e9       SB           -23, HIS
009489:              $C$DW$L$_Flash28335_Verify$7$E:
00009489   6f0a       SB           10, UNC
00948a:              $C$L3:
0000948a   e203       MOV32        *+XAR3[0], R4H
0000948b   04c3
0000948c   96d3       MOV          *+XAR3[2], AL
0000948d   bfa7       MOV32        XAR7, R4H
0000948e   0f22
0000948f   92c7       MOV          AL, *+XAR7[0]
00009490   96db       MOV          *+XAR3[3], AL
00009491   2841       MOV          *-SP[1], #0x0028
00009492   0028
009493:              $C$L4:
00009493   9241       MOV          AL, *-SP[1]
00009494   fe82       SUBB         SP, #2
00009495   e2af       MOV32        R5H, *--SP, UNCF
00009496   05be
00009497   e2af       MOV32        R4H, *--SP, UNCF
00009498   04be
00009499   82be       MOVL         XAR3, *--SP
0000949a   86be       MOVL         XAR2, *--SP
0000949b   8bbe       MOVL         XAR1, *--SP
0000949c   0006       LRETR        