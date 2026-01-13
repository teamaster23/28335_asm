0090aa:              _Flash28335_Erase:
000090aa   fe06       ADDB         SP, #6
000090ab   a844       MOVL         *-SP[4], XAR4
000090ac   9641       MOV          *-SP[1], AL
000090ad   8a44       MOVL         XAR4, *-SP[4]
000090ae   7640       LCR          0x00953b
000090af   953b
000090b0   9646       MOV          *-SP[6], AL
000090b1   5200       CMPB         AL, #0x0
000090b2   ec03       SBF          3, EQ
000090b3   ffef       B            149, UNC
000090b4   0095
0090b5:              $C$L1:
000090b5   2846       MOV          *-SP[6], #0x03e7
000090b6   03e7
000090b7   1841       AND          *-SP[1], #0x00ff
000090b8   00ff
000090b9   9241       MOV          AL, *-SP[1]
000090ba   ed04       SBF          4, NEQ
000090bb   9a14       MOVB         AL, #0x14
000090bc   ffef       B            140, UNC
000090bd   008c
0090be:              $C$L2:
000090be   7640       LCR          0x0091f1
000090bf   91f1
000090c0   7622       EALLOW       
000090c1   9a03       MOVB         AL, #0x3
000090c2   f4a9       MOV          *(0:0x0a8d), AL
000090c3   0a8d
000090c4   761a       EDIS         
000090c5   56bf       MOVB         *-SP[5], #0x07, UNC
000090c6   0745
0090c7:              $C$L3:
0090c7:              $C$DW$L$_Flash28335_Erase$7$B:
000090c7   0e45       MOVU         ACC, *-SP[5]
000090c8   8f00       MOVL         XAR4, #0x00d020
000090c9   d020
000090ca   ff31       LSL          ACC, 2
000090cb   5601       ADDL         XAR4, ACC
000090cc   00a4
000090cd   8344       MOVL         XAR5, *-SP[4]
000090ce   ff69       SPM          #0
000090cf   9a80       MOVB         AL, #0x80
000090d0   8ac4       MOVL         XAR4, *+XAR4[0]
000090d1   7640       LCR          0x0093bf
000090d2   93bf
000090d3   9646       MOV          *-SP[6], AL
000090d4   5200       CMPB         AL, #0x0
000090d5   56b0       MOVB         *-SP[6], #0x18, NEQ
000090d6   1846
000090d7   ed05       SBF          5, NEQ
0090d8:              $C$DW$L$_Flash28335_Erase$7$E:
0090d8:              $C$DW$L$_Flash28335_Erase$8$B:
000090d8   9345       MOV          AH, *-SP[5]
000090d9   0b45       DEC          *-SP[5]
000090da   5300       CMPB         AH, #0x0
000090db   edec       SBF          -20, NEQ
0090dc:              $C$DW$L$_Flash28335_Erase$8$E:
0090dc:              $C$L4:
000090dc   9246       MOV          AL, *-SP[6]
000090dd   ed5d       SBF          93, NEQ
000090de   2b45       MOV          *-SP[5], #0
000090df   9245       MOV          AL, *-SP[5]
000090e0   5207       CMPB         AL, #0x7
000090e1   6659       SB           89, HI
0090e2:              $C$L5:
0090e2:              $C$DW$L$_Flash28335_Erase$11$B:
000090e2   5845       MOVZ         AR0, *-SP[5]
000090e3   8f00       MOVL         XAR4, #0x00d040
000090e4   d040
000090e5   9294       MOV          AL, *+XAR4[AR0]
000090e6   ce41       AND          AL, *-SP[1]
000090e7   ec4d       SBF          77, EQ
0090e8:              $C$DW$L$_Flash28335_Erase$11$E:
0090e8:              $C$DW$L$_Flash28335_Erase$12$B:
000090e8   0e45       MOVU         ACC, *-SP[5]
000090e9   8f00       MOVL         XAR4, #0x00d020
000090ea   d020
000090eb   8f40       MOVL         XAR5, #0x00d022
000090ec   d022
000090ed   ff31       LSL          ACC, 2
000090ee   5601       ADDL         XAR4, ACC
000090ef   00a4
000090f0   0e45       MOVU         ACC, *-SP[5]
000090f1   ff31       LSL          ACC, 2
000090f2   5601       ADDL         XAR5, ACC
000090f3   00a5
000090f4   8ac4       MOVL         XAR4, *+XAR4[0]
000090f5   92c5       MOV          AL, *+XAR5[0]
000090f6   8344       MOVL         XAR5, *-SP[4]
000090f7   7640       LCR          0x0094de
000090f8   94de
000090f9   9646       MOV          *-SP[6], AL
000090fa   5200       CMPB         AL, #0x0
000090fb   ed13       SBF          19, NEQ
0090fc:              $C$DW$L$_Flash28335_Erase$12$E:
0090fc:              $C$DW$L$_Flash28335_Erase$13$B:
000090fc   0e45       MOVU         ACC, *-SP[5]
000090fd   8f00       MOVL         XAR4, #0x00d020
000090fe   d020
000090ff   8f40       MOVL         XAR5, #0x00d022
00009100   d022
00009101   ff31       LSL          ACC, 2
00009102   5601       ADDL         XAR4, ACC
00009103   00a4
00009104   0e45       MOVU         ACC, *-SP[5]
00009105   ff31       LSL          ACC, 2
00009106   5601       ADDL         XAR5, ACC
00009107   00a5
00009108   8ac4       MOVL         XAR4, *+XAR4[0]
00009109   92c5       MOV          AL, *+XAR5[0]
0000910a   8344       MOVL         XAR5, *-SP[4]
0000910b   7640       LCR          0x009365
0000910c   9365
0000910d   9646       MOV          *-SP[6], AL
00910e:              $C$DW$L$_Flash28335_Erase$13$E:
00910e:              $C$L6:
00910e:              $C$DW$L$_Flash28335_Erase$14$B:
0000910e   5200       CMPB         AL, #0x0
0000910f   ed14       SBF          20, NEQ
009110:              $C$DW$L$_Flash28335_Erase$14$E:
009110:              $C$DW$L$_Flash28335_Erase$15$B:
00009110   0e45       MOVU         ACC, *-SP[5]
00009111   8f00       MOVL         XAR4, #0x00d020
00009112   d020
00009113   8f40       MOVL         XAR5, #0x00d022
00009114   d022
00009115   ff31       LSL          ACC, 2
00009116   5601       ADDL         XAR4, ACC
00009117   00a4
00009118   0e45       MOVU         ACC, *-SP[5]
00009119   ff31       LSL          ACC, 2
0000911a   5601       ADDL         XAR5, ACC
0000911b   00a5
0000911c   8ac4       MOVL         XAR4, *+XAR4[0]
0000911d   92c5       MOV          AL, *+XAR5[0]
0000911e   8344       MOVL         XAR5, *-SP[4]
0000911f   7640       LCR          0x0093bf
00009120   93bf
00009121   9646       MOV          *-SP[6], AL
00009122   6f12       SB           18, UNC
009123:              $C$DW$L$_Flash28335_Erase$15$E:
009123:              $C$L7:
009123:              $C$DW$L$_Flash28335_Erase$16$B:
00009123   0e45       MOVU         ACC, *-SP[5]
00009124   8f00       MOVL         XAR4, #0x00d020
00009125   d020
00009126   8f40       MOVL         XAR5, #0x00d022
00009127   d022
00009128   ff31       LSL          ACC, 2
00009129   5601       ADDL         XAR4, ACC
0000912a   00a4
0000912b   0e45       MOVU         ACC, *-SP[5]
0000912c   ff31       LSL          ACC, 2
0000912d   5601       ADDL         XAR5, ACC
0000912e   00a5
0000912f   8ac4       MOVL         XAR4, *+XAR4[0]
00009130   92c5       MOV          AL, *+XAR5[0]
00009131   8344       MOVL         XAR5, *-SP[4]
00009132   7640       LCR          0x0093bf
00009133   93bf
009134:              $C$DW$L$_Flash28335_Erase$16$E:
009134:              $C$L8:
009134:              $C$DW$L$_Flash28335_Erase$17$B:
00009134   9246       MOV          AL, *-SP[6]
00009135   ed05       SBF          5, NEQ
009136:              $C$DW$L$_Flash28335_Erase$17$E:
009136:              $C$DW$L$_Flash28335_Erase$18$B:
00009136   0a45       INC          *-SP[5]
00009137   9245       MOV          AL, *-SP[5]
00009138   5207       CMPB         AL, #0x7
00009139   69a9       SB           -87, LOS
00913a:              $C$DW$L$_Flash28335_Erase$18$E:
00913a:              $C$L9:
0000913a   9246       MOV          AL, *-SP[6]
0000913b   ec0a       SBF          10, EQ
0000913c   0e45       MOVU         ACC, *-SP[5]
0000913d   8f00       MOVL         XAR4, #0x00d020
0000913e   d020
0000913f   ff31       LSL          ACC, 2
00009140   5601       ADDL         XAR4, ACC
00009141   00a4
00009142   06c4       MOVL         ACC, *+XAR4[0]
00009143   8a44       MOVL         XAR4, *-SP[4]
00009144   1ec4       MOVL         *+XAR4[0], ACC
009145:              $C$L10:
00009145   7640       LCR          0x0091e4
00009146   91e4
00009147   9246       MOV          AL, *-SP[6]
009148:              $C$L11:
00009148   fe86       SUBB         SP, #6
00009149   0006       LRETR        