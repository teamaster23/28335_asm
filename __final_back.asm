
	.sect ".text"

009000:              _Flash28335_Program:
00009000   fe12       ADDB         SP, #18
00009001   1e46       MOVL         *-SP[6], ACC
00009002   a044       MOVL         *-SP[4], XAR5
00009003   a842       MOVL         *-SP[2], XAR4
00009004   8a56       MOVL         XAR4, *-SP[22]
00009005   7640       LCR          0x00953b //执行flash_init操作

00009006   953b

00009007   964d       MOV          *-SP[13], AL
00009008   5200       CMPB         AL, #0x0
00009009   ec03       SBF          3, EQ
0000900a   ffef       B            158, UNC
0000900b   009e
00900c:              $C$L1:
0000900c   284d       MOV          *-SP[13], #0x03e7
0000900d   03e7
0000900e   0642       MOVL         ACC, *-SP[2]
0000900f   0746       ADDL         ACC, *-SP[6]
00009010   1901       SUBB         ACC, #1
00009011   1e48       MOVL         *-SP[8], ACC
00009012   c442       MOVL         XAR6, *-SP[2]
00009013   8f30       MOVL         XAR4, #0x300000
00009014   0000
00009015   a8a9       MOVL         ACC, XAR4
00009016   0fa6       CMPL         ACC, XAR6
00009017   660d       SB           13, HI
00009018   c448       MOVL         XAR6, *-SP[8]
00009019   8f33       MOVL         XAR4, #0x33ffff
0000901a   ffff
0000901b   a8a9       MOVL         ACC, XAR4
0000901c   0fa6       CMPL         ACC, XAR6
0000901d   6807       SB           7, LO
0000901e   0642       MOVL         ACC, *-SP[2]
0000901f   ff0f       SUB          ACC, #0x60 << 15
00009020   0060
00009021   1e4a       MOVL         *-SP[10], ACC
00009022   2b4e       MOV          *-SP[14], #0
00009023   6f16       SB           22, UNC
009024:              $C$L2:
00009024   c442       MOVL         XAR6, *-SP[2]
00009025   8f38       MOVL         XAR4, #0x380400
00009026   0400
00009027   a8a9       MOVL         ACC, XAR4
00009028   0fa6       CMPL         ACC, XAR6
00009029   660e       SB           14, HI
0000902a   c448       MOVL         XAR6, *-SP[8]
0000902b   8f38       MOVL         XAR4, #0x3807ff
0000902c   07ff
0000902d   a8a9       MOVL         ACC, XAR4
0000902e   0fa6       CMPL         ACC, XAR6
0000902f   6808       SB           8, LO
00009030   0642       MOVL         ACC, *-SP[2]
00009031   ff0a       SUB          ACC, #0xe01 << 10
00009032   0e01
00009033   1e4a       MOVL         *-SP[10], ACC
00009034   56bf       MOVB         *-SP[14], #0x10, UNC
00009035   104e
00009036   6f03       SB           3, UNC
009037:              $C$L3:
00009037   9a0c       MOVB         AL, #0xc
00009038   6f70       SB           112, UNC
009039:              $C$L4:
00009039   7640       LCR          0x0091f1
0000903a   91f1
0000903b   7622       EALLOW       
0000903c   9a03       MOVB         AL, #0x3
0000903d   f4a9       MOV          *(0:0x0a8d), AL
0000903e   0a8d
0000903f   761a       EDIS         
00009040   0201       MOVB         ACC, #1
00009041   1e50       MOVL         *-SP[16], ACC
00009042   0646       MOVL         ACC, *-SP[6]
00009043   0f50       CMPL         ACC, *-SP[16]
00009044   685c       SB           92, LO
009045:              $C$L5:
009045:              $C$DW$L$_Flash28335_Program$12$B:
00009045   5c4e       MOVZ         AR4, *-SP[14]
00009046   064a       MOVL         ACC, *-SP[10]
00009047   ff69       SPM          #0
00009048   7640       LCR          0x009268
00009049   9268
0000904a   964b       MOV          *-SP[11], AL
0000904b   2b51       MOV          *-SP[17], #0
0000904c   9251       MOV          AL, *-SP[17]
0000904d   522d       CMPB         AL, #0x2d
0000904e   6728       SB           40, HIS
00904f:              $C$DW$L$_Flash28335_Program$12$E:
00904f:              $C$L6:
00904f:              $C$DW$L$_Flash28335_Program$13$B:
0000904f   be00       MOVB         XAR6, #0x00
00009050   761f       MOVW         DP, #0x300
00009051   0300
00009052   0600       MOVL         ACC, @0x0
00009053   0fa6       CMPL         ACC, XAR6
00009054   ec03       SBF          3, EQ
009055:              $C$DW$L$_Flash28335_Program$13$E:
009055:              $C$DW$L$_Flash28335_Program$14$B:
00009055   c500       MOVL         XAR7, @0x0
00009056   3e67       LCR          *XAR7
009057:              $C$DW$L$_Flash28335_Program$14$E:
009057:              $C$L7:
009057:              $C$DW$L$_Flash28335_Program$15$B:
00009057   8a44       MOVL         XAR4, *-SP[4]
00009058   924b       MOV          AL, *-SP[11]
00009059   1ca9       XOR          AL, #0xffff
0000905a   ffff
0000905b   cec4       AND          AL, *+XAR4[0]
0000905c   56b0       MOVB         *-SP[13], #0x1f, NEQ
0000905d   1f4d
0000905e   ed18       SBF          24, NEQ
00905f:              $C$DW$L$_Flash28335_Program$15$E:
00905f:              $C$DW$L$_Flash28335_Program$16$B:
0000905f   8a44       MOVL         XAR4, *-SP[4]
00009060   92c4       MOV          AL, *+XAR4[0]
00009061   544b       CMP          AL, *-SP[11]
00009062   ec14       SBF          20, EQ
009063:              $C$DW$L$_Flash28335_Program$16$E:
009063:              $C$DW$L$_Flash28335_Program$17$B:
00009063   8a44       MOVL         XAR4, *-SP[4]
00009064   924b       MOV          AL, *-SP[11]
00009065   ff5e       NOT          AL
00009066   cac4       OR           AL, *+XAR4[0]
00009067   964c       MOV          *-SP[12], AL
00009068   5d4e       MOVZ         AR5, *-SP[14]
00009069   5c4c       MOVZ         AR4, *-SP[12]
0000906a   064a       MOVL         ACC, *-SP[10]
0000906b   7640       LCR          0x0092a6
0000906c   92a6
0000906d   5c4e       MOVZ         AR4, *-SP[14]
0000906e   064a       MOVL         ACC, *-SP[10]
0000906f   7640       LCR          0x009268
00009070   9268
00009071   964b       MOV          *-SP[11], AL
00009072   0a51       INC          *-SP[17]
00009073   9251       MOV          AL, *-SP[17]
00009074   522d       CMPB         AL, #0x2d
00009075   68da       SB           -38, LO
009076:              $C$DW$L$_Flash28335_Program$17$E:
009076:              $C$L8:
009076:              $C$DW$L$_Flash28335_Program$18$B:
00009076   8a44       MOVL         XAR4, *-SP[4]
00009077   92c4       MOV          AL, *+XAR4[0]
00009078   544b       CMP          AL, *-SP[11]
00009079   ec1c       SBF          28, EQ
00907a:              $C$DW$L$_Flash28335_Program$18$E:
0000907a   1b4d       CMP          *-SP[13], #999
0000907b   03e7
0000907c   56b1       MOVB         *-SP[13], #0x1e, EQ
0000907d   1e4d
0000907e   8a56       MOVL         XAR4, *-SP[22]
0000907f   924b       MOV          AL, *-SP[11]
00009080   96dc       MOV          *+XAR4[3], AL
00009081   c544       MOVL         XAR7, *-SP[4]
00009082   8a56       MOVL         XAR4, *-SP[22]
00009083   92c7       MOV          AL, *+XAR7[0]
00009084   96d4       MOV          *+XAR4[2], AL
00009085   924e       MOV          AL, *-SP[14]
00009086   ed08       SBF          8, NEQ
00009087   8356       MOVL         XAR5, *-SP[22]
00009088   8f30       MOVL         XAR4, #0x300000
00009089   0000
0000908a   a8a9       MOVL         ACC, XAR4
0000908b   074a       ADDL         ACC, *-SP[10]
0000908c   1ec5       MOVL         *+XAR5[0], ACC
0000908d   6f13       SB           19, UNC
00908e:              $C$L9:
0000908e   8356       MOVL         XAR5, *-SP[22]
0000908f   8f38       MOVL         XAR4, #0x380400
00009090   0400
00009091   a8a9       MOVL         ACC, XAR4
00009092   074a       ADDL         ACC, *-SP[10]
00009093   1ec5       MOVL         *+XAR5[0], ACC
00009094   6f0c       SB           12, UNC
009095:              $C$L10:
009095:              $C$DW$L$_Flash28335_Program$22$B:
00009095   0201       MOVB         ACC, #1
00009096   5601       ADDL         *-SP[4], ACC
00009097   0044
00009098   074a       ADDL         ACC, *-SP[10]
00009099   1e4a       MOVL         *-SP[10], ACC
0000909a   0201       MOVB         ACC, #1
0000909b   0750       ADDL         ACC, *-SP[16]
0000909c   1e50       MOVL         *-SP[16], ACC
0000909d   0646       MOVL         ACC, *-SP[6]
0000909e   0f50       CMPL         ACC, *-SP[16]
0000909f   67a6       SB           -90, HIS
0090a0:              $C$DW$L$_Flash28335_Program$22$E:
0090a0:              $C$L11:
000090a0   ff69       SPM          #0
000090a1   7640       LCR          0x0091e4
000090a2   91e4
000090a3   1b4d       CMP          *-SP[13], #999
000090a4   03e7
000090a5   ed02       SBF          2, NEQ
000090a6   2b4d       MOV          *-SP[13], #0
0090a7:              $C$L12:
000090a7   924d       MOV          AL, *-SP[13]
0090a8:              $C$L13:
000090a8   fe92       SUBB         SP, #18
000090a9   0006       LRETR        
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
00914a:              _Fl28x_EraseVerify:
0000914a   fe08       ADDB         SP, #8
0000914b   7c43       MOV          *-SP[3], AR4
0000914c   1e42       MOVL         *-SP[2], ACC
0000914d   7640       LCR          0x009581
0000914e   9581
0000914f   9647       MOV          *-SP[7], AL
00009150   7640       LCR          0x00959a
00009151   959a
00009152   9646       MOV          *-SP[6], AL
00009153   0642       MOVL         ACC, *-SP[2]
00009154   7640       LCR          0x009235
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
0000915f   7640       LCR          0x00958d
00009160   958d
00009161   9243       MOV          AL, *-SP[3]
00009162   1aa9       OR           AL, #0x0a0b
00009163   0a0b
00009164   f4a9       MOV          *(0:0x0a90), AL
00009165   0a90
00009166   ff20       MOV          ACC, #6553
00009167   1999
00009168   7640       LCR          0x00958d
00009169   958d
0000916a   9243       MOV          AL, *-SP[3]
0000916b   1aa9       OR           AL, #0x020b
0000916c   020b
0000916d   f4a9       MOV          *(0:0x0a90), AL
0000916e   0a90
0000916f   ff22       MOV          ACC, #0x3333 << 2
00009170   3333
00009171   7640       LCR          0x00958d
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
0000917f   7640       LCR          0x00958d
00009180   958d
00009181   28a9       MOV          AL, #0x0a0f
00009182   0a0f
00009183   f4a9       MOV          *(0:0x0a90), AL
00009184   0a90
00009185   ff20       MOV          ACC, #6553
00009186   1999
00009187   7640       LCR          0x00958d
00009188   958d
00009189   761a       EDIS         
0000918a   9246       MOV          AL, *-SP[6]
0000918b   7640       LCR          0x00959e
0000918c   959e
0000918d   f447       MOV          *(0:0x7077), *-SP[7]
0000918e   7077
0000918f   9244       MOV          AL, *-SP[4]
00009190   fe88       SUBB         SP, #8
00009191   0006       LRETR        
009192:              _Fl28x_ErasePulse:
00009192   fe08       ADDB         SP, #8
00009193   7d44       MOV          *-SP[4], AR5
00009194   7c43       MOV          *-SP[3], AR4
00009195   1e42       MOVL         *-SP[2], ACC
00009196   7640       LCR          0x009581
00009197   9581
00009198   9647       MOV          *-SP[7], AL
00009199   7640       LCR          0x00959a
0000919a   959a
0000919b   9646       MOV          *-SP[6], AL
0000919c   0642       MOVL         ACC, *-SP[2]
0000919d   7640       LCR          0x009235
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
000091af   7640       LCR          0x00958d
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
000091bc   7640       LCR          0x00958d
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
000091c9   7640       LCR          0x00958d
000091ca   958d
000091cb   9244       MOV          AL, *-SP[4]
000091cc   1aa9       OR           AL, #0x0a0b
000091cd   0a0b
000091ce   f4a9       MOV          *(0:0x0a90), AL
000091cf   0a90
000091d0   9a00       MOVB         AL, #0x0
000091d1   9b28       MOVB         AH, #0x28
000091d2   7640       LCR          0x00958d
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
000091de   7640       LCR          0x00959e
000091df   959e
000091e0   f447       MOV          *(0:0x7077), *-SP[7]
000091e1   7077
000091e2   fe88       SUBB         SP, #8
000091e3   0006       LRETR        
0091e4:              _Fl28x_LeaveCmdMode:
000091e4   7622       EALLOW       
000091e5   7640       LCR          0x009216
000091e6   9216
000091e7   9a00       MOVB         AL, #0x0
000091e8   f4a9       MOV          *(0:0x0a81), AL
000091e9   0a81
000091ea   f5a9       MOV          AL, *(0:0x0a90)
000091eb   0a90
000091ec   f004       XORB         AL, #0x4
000091ed   f4a9       MOV          *(0:0x0a90), AL
000091ee   0a90
000091ef   761a       EDIS         
000091f0   0006       LRETR        
0091f1:              _Fl28x_EnterCmdMode:
000091f1   7622       EALLOW       
000091f2   9a00       MOVB         AL, #0x0
000091f3   f4a9       MOV          *(0:0x0a82), AL
000091f4   0a82
000091f5   7640       LCR          0x009216
000091f6   9216
000091f7   28a9       MOV          AL, #0xaa55
000091f8   aa55
000091f9   f4a9       MOV          *(0:0x0a81), AL
000091fa   0a81
000091fb   28a9       MOV          AL, #0x0e0d
000091fc   0e0d
000091fd   f4a9       MOV          *(0:0x0a90), AL
000091fe   0a90
000091ff   9a00       MOVB         AL, #0x0
00009200   9b03       MOVB         AH, #0x3
00009201   7640       LCR          0x00958d
00009202   958d
00009203   761f       MOVW         DP, #0x300
00009204   0300
00009205   0600       MOVL         ACC, @0x0
00009206   be00       MOVB         XAR6, #0x00
00009207   0fa6       CMPL         ACC, XAR6
00009208   ec03       SBF          3, EQ
00009209   c500       MOVL         XAR7, @0x0
0000920a   3e67       LCR          *XAR7
00920b:              L1:
0000920b   28a9       MOV          AL, #0x0a0f
0000920c   0a0f
0000920d   f4a9       MOV          *(0:0x0a90), AL
0000920e   0a90
0000920f   28a9       MOV          AL, #0x4ccc
00009210   4ccc
00009211   9b03       MOVB         AH, #0x3
00009212   7640       LCR          0x00958d
00009213   958d
00009214   761a       EDIS         
00009215   0006       LRETR        
009216:              _Fl28x_FlashRegSleep:
00009216   9a00       MOVB         AL, #0x0
00009217   f4a9       MOV          *(0:0x0a91), AL
00009218   0a91
00009219   f4a9       MOV          *(0:0x0a94), AL
0000921a   0a94
0000921b   f4a9       MOV          *(0:0x0a98), AL
0000921c   0a98
0000921d   f4a9       MOV          *(0:0x0a99), AL
0000921e   0a99
0000921f   f4a9       MOV          *(0:0x0a9a), AL
00009220   0a9a
00009221   f4a9       MOV          *(0:0x0a9b), AL
00009222   0a9b
00009223   f4a9       MOV          *(0:0x0a92), AL
00009224   0a92
00009225   f4a9       MOV          *(0:0x0a89), AL
00009226   0a89
00009227   f4a9       MOV          *(0:0x0a8a), AL
00009228   0a8a
00009229   f4a9       MOV          *(0:0x0a8b), AL
0000922a   0a8b
0000922b   f4a9       MOV          *(0:0x0a8c), AL
0000922c   0a8c
0000922d   9a0a       MOVB         AL, #0xa
0000922e   f4a9       MOV          *(0:0x0a88), AL
0000922f   0a88
00009230   28a9       MOV          AL, #0x0c0c
00009231   0c0c
00009232   f4a9       MOV          *(0:0x0a90), AL
00009233   0a90
00009234   0006       LRETR        
009235:              _Fl28x_OpenPulse:
00009235   fe02       ADDB         SP, #2
00009236   1e42       MOVL         *-SP[2], ACC
00009237   7622       EALLOW       
00009238   28a9       MOV          AL, #0x0a0f
00009239   0a0f
0000923a   f4a9       MOV          *(0:0x0a90), AL
0000923b   0a90
0000923c   8f00       MOVL         XAR4, #0x000a94
0000923d   0a94
0000923e   2901       CLRC         SXM
0000923f   0642       MOVL         ACC, *-SP[2]
00009240   ff41       SFR          ACC, 2
00009241   96c4       MOV          *+XAR4[0], AL
00009242   0642       MOVL         ACC, *-SP[2]
00009243   9003       ANDB         AL, #0x3
00009244   fe82       SUBB         SP, #2
00009245   0006       LRETR        
009246:              _Fl28x_ClosePulse:
00009246   7622       EALLOW       
00009247   9a00       MOVB         AL, #0x0
00009248   f4a9       MOV          *(0:0x0a91), AL
00009249   0a91
0000924a   28a9       MOV          AL, #0x0a0f
0000924b   0a0f
0000924c   f4a9       MOV          *(0:0x0a90), AL
0000924d   0a90
0000924e   9a00       MOVB         AL, #0x0
0000924f   f4a9       MOV          *(0:0x0a89), AL
00009250   0a89
00009251   f4a9       MOV          *(0:0x0a8a), AL
00009252   0a8a
00009253   f4a9       MOV          *(0:0x0a8b), AL
00009254   0a8b
00009255   f4a9       MOV          *(0:0x0a8c), AL
00009256   0a8c
00009257   ff20       MOV          ACC, #6553
00009258   1999
00009259   7640       LCR          0x00958d
0000925a   958d
0000925b   761a       EDIS         
0000925c   0006       LRETR        
00925d:              _Fl28x_MaskAll:
0000925d   28a9       MOV          AL, #0xffff
0000925e   ffff
0000925f   f4a9       MOV          *(0:0x0a98), AL
00009260   0a98
00009261   f4a9       MOV          *(0:0x0a99), AL
00009262   0a99
00009263   f4a9       MOV          *(0:0x0a9a), AL
00009264   0a9a
00009265   f4a9       MOV          *(0:0x0a9b), AL
00009266   0a9b
00009267   0006       LRETR        
009268:              _Fl28x_ProgVerify:
00009268   fe08       ADDB         SP, #8
00009269   7c43       MOV          *-SP[3], AR4
0000926a   1e42       MOVL         *-SP[2], ACC
0000926b   7640       LCR          0x009581
0000926c   9581
0000926d   9647       MOV          *-SP[7], AL
0000926e   7640       LCR          0x00959a
0000926f   959a
00009270   9646       MOV          *-SP[6], AL
00009271   0642       MOVL         ACC, *-SP[2]
00009272   7640       LCR          0x009235
00009273   9235
00009274   9644       MOV          *-SP[4], AL
00009275   9243       MOV          AL, *-SP[3]
00009276   1aa9       OR           AL, #0x0a0b
00009277   0a0b
00009278   f4a9       MOV          *(0:0x0a90), AL
00009279   0a90
0000927a   9a01       MOVB         AL, #0x1
0000927b   f4a9       MOV          *(0:0x0a91), AL
0000927c   0a91
0000927d   9a04       MOVB         AL, #0x4
0000927e   f4a9       MOV          *(0:0x0a89), AL
0000927f   0a89
00009280   ff20       MOV          ACC, #6553
00009281   1999
00009282   7640       LCR          0x00958d
00009283   958d
00009284   9243       MOV          AL, *-SP[3]
00009285   1aa9       OR           AL, #0x020b
00009286   020b
00009287   f4a9       MOV          *(0:0x0a90), AL
00009288   0a90
00009289   28a9       MOV          AL, #0x6666
0000928a   6666
0000928b   9b01       MOVB         AH, #0x1
0000928c   7640       LCR          0x00958d
0000928d   958d
0000928e   5844       MOVZ         AR0, *-SP[4]
0000928f   8f00       MOVL         XAR4, #0x000a9c
00009290   0a9c
00009291   9294       MOV          AL, *+XAR4[AR0]
00009292   9645       MOV          *-SP[5], AL
00009293   9243       MOV          AL, *-SP[3]
00009294   1aa9       OR           AL, #0x0a0b
00009295   0a0b
00009296   f4a9       MOV          *(0:0x0a90), AL
00009297   0a90
00009298   9a00       MOVB         AL, #0x0
00009299   9b01       MOVB         AH, #0x1
0000929a   7640       LCR          0x00958d
0000929b   958d
0000929c   7640       LCR          0x009246
0000929d   9246
0000929e   9246       MOV          AL, *-SP[6]
0000929f   7640       LCR          0x00959e
000092a0   959e
000092a1   f447       MOV          *(0:0x7077), *-SP[7]
000092a2   7077
000092a3   9245       MOV          AL, *-SP[5]
000092a4   fe88       SUBB         SP, #8
000092a5   0006       LRETR        
0092a6:              _Fl28x_ProgPulse:
000092a6   fe08       ADDB         SP, #8
000092a7   7d44       MOV          *-SP[4], AR5
000092a8   7c43       MOV          *-SP[3], AR4
000092a9   1e42       MOVL         *-SP[2], ACC
000092aa   7640       LCR          0x009581
000092ab   9581
000092ac   9647       MOV          *-SP[7], AL
000092ad   7640       LCR          0x00959a
000092ae   959a
000092af   9646       MOV          *-SP[6], AL
000092b0   0642       MOVL         ACC, *-SP[2]
000092b1   7640       LCR          0x009235
000092b2   9235
000092b3   9645       MOV          *-SP[5], AL
000092b4   7640       LCR          0x00925d
000092b5   925d
000092b6   5845       MOVZ         AR0, *-SP[5]
000092b7   8f00       MOVL         XAR4, #0x000a98
000092b8   0a98
000092b9   9243       MOV          AL, *-SP[3]
000092ba   9694       MOV          *+XAR4[AR0], AL
000092bb   9244       MOV          AL, *-SP[4]
000092bc   1aa9       OR           AL, #0x0a0b
000092bd   0a0b
000092be   f4a9       MOV          *(0:0x0a90), AL
000092bf   0a90
000092c0   9a02       MOVB         AL, #0x2
000092c1   f4a9       MOV          *(0:0x0a91), AL
000092c2   0a91
000092c3   9a09       MOVB         AL, #0x9
000092c4   f4a9       MOV          *(0:0x0a89), AL
000092c5   0a89
000092c6   9a06       MOVB         AL, #0x6
000092c7   f4a9       MOV          *(0:0x0a8b), AL
000092c8   0a8b
000092c9   ff20       MOV          ACC, #6553
000092ca   1999
000092cb   7640       LCR          0x00958d
000092cc   958d
000092cd   9244       MOV          AL, *-SP[4]
000092ce   1aa9       OR           AL, #0x020b
000092cf   020b
000092d0   f4a9       MOV          *(0:0x0a90), AL
000092d1   0a90
000092d2   9a00       MOVB         AL, #0x0
000092d3   9b04       MOVB         AH, #0x4
000092d4   7640       LCR          0x00958d
000092d5   958d
000092d6   9244       MOV          AL, *-SP[4]
000092d7   1aa9       OR           AL, #0x0a0b
000092d8   0a0b
000092d9   f4a9       MOV          *(0:0x0a90), AL
000092da   0a90
000092db   9a00       MOVB         AL, #0x0
000092dc   9b01       MOVB         AH, #0x1
000092dd   7640       LCR          0x00958d
000092de   958d
000092df   7640       LCR          0x009246
000092e0   9246
000092e1   9246       MOV          AL, *-SP[6]
000092e2   7640       LCR          0x00959e
000092e3   959e
000092e4   f447       MOV          *(0:0x7077), *-SP[7]
000092e5   7077
000092e6   fe88       SUBB         SP, #8
000092e7   0006       LRETR        
0092e8:              _Fl28x_CompactVerify:
000092e8   fe08       ADDB         SP, #8
000092e9   7c43       MOV          *-SP[3], AR4
000092ea   1e42       MOVL         *-SP[2], ACC
000092eb   7640       LCR          0x009581
000092ec   9581
000092ed   9647       MOV          *-SP[7], AL
000092ee   7640       LCR          0x00959a
000092ef   959a
000092f0   9646       MOV          *-SP[6], AL
000092f1   0642       MOVL         ACC, *-SP[2]
000092f2   7640       LCR          0x009235
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
000092ff   7640       LCR          0x00958d
00009300   958d
00009301   9243       MOV          AL, *-SP[3]
00009302   1aa9       OR           AL, #0x020b
00009303   020b
00009304   f4a9       MOV          *(0:0x0a90), AL
00009305   0a90
00009306   9a00       MOVB         AL, #0x0
00009307   9b08       MOVB         AH, #0x8
00009308   7640       LCR          0x00958d
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
00009316   7640       LCR          0x00958d
00009317   958d
00009318   7640       LCR          0x009246
00009319   9246
0000931a   9246       MOV          AL, *-SP[6]
0000931b   7640       LCR          0x00959e
0000931c   959e
0000931d   f447       MOV          *(0:0x7077), *-SP[7]
0000931e   7077
0000931f   9244       MOV          AL, *-SP[4]
00009320   fe88       SUBB         SP, #8
00009321   0006       LRETR        
009322:              _Fl28x_CompactPulse:
00009322   fe08       ADDB         SP, #8
00009323   7d44       MOV          *-SP[4], AR5
00009324   7c43       MOV          *-SP[3], AR4
00009325   1e42       MOVL         *-SP[2], ACC
00009326   7640       LCR          0x009581
00009327   9581
00009328   9647       MOV          *-SP[7], AL
00009329   7640       LCR          0x00959a
0000932a   959a
0000932b   9646       MOV          *-SP[6], AL
0000932c   0642       MOVL         ACC, *-SP[2]
0000932d   7640       LCR          0x009235
0000932e   9235
0000932f   9645       MOV          *-SP[5], AL
00009330   7640       LCR          0x00925d
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
00009348   7640       LCR          0x00958d
00009349   958d
0000934a   9244       MOV          AL, *-SP[4]
0000934b   1aa9       OR           AL, #0x020b
0000934c   020b
0000934d   f4a9       MOV          *(0:0x0a90), AL
0000934e   0a90
0000934f   ff2f       MOV          ACC, #0x3e8 << 15
00009350   03e8
00009351   7640       LCR          0x00958d
00009352   958d
00009353   9244       MOV          AL, *-SP[4]
00009354   1aa9       OR           AL, #0x0a0b
00009355   0a0b
00009356   f4a9       MOV          *(0:0x0a90), AL
00009357   0a90
00009358   9a00       MOVB         AL, #0x0
00009359   9b01       MOVB         AH, #0x1
0000935a   7640       LCR          0x00958d
0000935b   958d
0000935c   7640       LCR          0x009246
0000935d   9246
0000935e   9246       MOV          AL, *-SP[6]
0000935f   7640       LCR          0x00959e
00009360   959e
00009361   f447       MOV          *(0:0x7077), *-SP[7]
00009362   7077
00009363   fe88       SUBB         SP, #8
00009364   0006       LRETR        
009365:              _Fl28335_EraseSector:
00009365   fe10       ADDB         SP, #16
00009366   a046       MOVL         *-SP[6], XAR5
00009367   9643       MOV          *-SP[3], AL
00009368   a842       MOVL         *-SP[2], XAR4
00009369   c442       MOVL         XAR6, *-SP[2]
0000936a   8f30       MOVL         XAR4, #0x300000
0000936b   0000
0000936c   a8a9       MOVL         ACC, XAR4
0000936d   0fa6       CMPL         ACC, XAR6
0000936e   6611       SB           17, HI
0000936f   8843       MOVZ         AR6, *-SP[3]
00009370   0642       MOVL         ACC, *-SP[2]
00009371   8f33       MOVL         XAR4, #0x33ffff
00009372   ffff
00009373   0da6       ADDU         ACC, AR6
00009374   1901       SUBB         ACC, #1
00009375   1ea6       MOVL         XAR6, ACC
00009376   a8a9       MOVL         ACC, XAR4
00009377   0fa6       CMPL         ACC, XAR6
00009378   6807       SB           7, LO
00009379   0642       MOVL         ACC, *-SP[2]
0000937a   ff0f       SUB          ACC, #0x60 << 15
0000937b   0060
0000937c   1e50       MOVL         *-SP[16], ACC
0000937d   2b4d       MOV          *-SP[13], #0
0000937e   6f03       SB           3, UNC
00937f:              $C$L1:
0000937f   9a0c       MOVB         AL, #0xc
00009380   6f3d       SB           61, UNC
009381:              $C$L2:
00009381   56bf       MOVB         *-SP[9], #0x16, UNC
00009382   1649
00009383   2b48       MOV          *-SP[8], #0
00009384   2b4b       MOV          *-SP[11], #0
00009385   2b4a       MOV          *-SP[10], #0
00009386   2b4c       MOV          *-SP[12], #0
009387:              $C$L3:
009387:              $C$DW$L$_Fl28335_EraseSector$6$B:
00009387   0650       MOVL         ACC, *-SP[16]
00009388   5c4d       MOVZ         AR4, *-SP[13]
00009389   7640       LCR          0x00914a
0000938a   914a
0000938b   9647       MOV          *-SP[7], AL
0000938c   be00       MOVB         XAR6, #0x00
0000938d   761f       MOVW         DP, #0x300
0000938e   0300
0000938f   0600       MOVL         ACC, @0x0
00009390   0fa6       CMPL         ACC, XAR6
00009391   ec03       SBF          3, EQ
009392:              $C$DW$L$_Fl28335_EraseSector$6$E:
009392:              $C$DW$L$_Fl28335_EraseSector$7$B:
00009392   c500       MOVL         XAR7, @0x0
00009393   3e67       LCR          *XAR7
009394:              $C$DW$L$_Fl28335_EraseSector$7$E:
009394:              $C$L4:
009394:              $C$DW$L$_Fl28335_EraseSector$8$B:
00009394   1b47       CMP          *-SP[7], #-1
00009395   ffff
00009396   ec16       SBF          22, EQ
009397:              $C$DW$L$_Fl28335_EraseSector$8$E:
009397:              $C$DW$L$_Fl28335_EraseSector$9$B:
00009397   1b4a       CMP          *-SP[10], #5000
00009398   1388
00009399   56b7       MOVB         *-SP[9], #0x16, HIS
0000939a   1649
0000939b   6718       SB           24, HIS
00939c:              $C$DW$L$_Fl28335_EraseSector$9$E:
00939c:              $C$DW$L$_Fl28335_EraseSector$10$B:
0000939c   0650       MOVL         ACC, *-SP[16]
0000939d   5c48       MOVZ         AR4, *-SP[8]
0000939e   5d4d       MOVZ         AR5, *-SP[13]
0000939f   7640       LCR          0x009192
000093a0   9192
000093a1   0a4b       INC          *-SP[11]
000093a2   0a4a       INC          *-SP[10]
000093a3   9248       MOV          AL, *-SP[8]
000093a4   520a       CMPB         AL, #0xa
000093a5   670b       SB           11, HIS
0093a6:              $C$DW$L$_Fl28335_EraseSector$10$E:
0093a6:              $C$DW$L$_Fl28335_EraseSector$11$B:
000093a6   924b       MOV          AL, *-SP[11]
000093a7   520f       CMPB         AL, #0xf
000093a8   6808       SB           8, LO
0093a9:              $C$DW$L$_Fl28335_EraseSector$11$E:
0093a9:              $C$DW$L$_Fl28335_EraseSector$12$B:
000093a9   2b4b       MOV          *-SP[11], #0
000093aa   0a48       INC          *-SP[8]
000093ab   6f05       SB           5, UNC
0093ac:              $C$DW$L$_Fl28335_EraseSector$12$E:
0093ac:              $C$L5:
0093ac:              $C$DW$L$_Fl28335_EraseSector$13$B:
000093ac   0a4c       INC          *-SP[12]
000093ad   0201       MOVB         ACC, #1
000093ae   0750       ADDL         ACC, *-SP[16]
000093af   1e50       MOVL         *-SP[16], ACC
0093b0:              $C$DW$L$_Fl28335_EraseSector$13$E:
0093b0:              $C$L6:
0093b0:              $C$DW$L$_Fl28335_EraseSector$14$B:
000093b0   9243       MOV          AL, *-SP[3]
000093b1   544c       CMP          AL, *-SP[12]
000093b2   66d5       SB           -43, HI
0093b3:              $C$DW$L$_Fl28335_EraseSector$14$E:
0093b3:              $C$L7:
000093b3   7640       LCR          0x009246
000093b4   9246
000093b5   9243       MOV          AL, *-SP[3]
000093b6   544c       CMP          AL, *-SP[12]
000093b7   ed05       SBF          5, NEQ
000093b8   1b47       CMP          *-SP[7], #-1
000093b9   ffff
000093ba   ed02       SBF          2, NEQ
000093bb   2b49       MOV          *-SP[9], #0
0093bc:              $C$L8:
000093bc   9249       MOV          AL, *-SP[9]
0093bd:              $C$L9:
000093bd   fe90       SUBB         SP, #16
000093be   0006       LRETR        
0093bf:              _Fl28335_CompactSector:
000093bf   fe10       ADDB         SP, #16
000093c0   a046       MOVL         *-SP[6], XAR5
000093c1   9643       MOV          *-SP[3], AL
000093c2   a842       MOVL         *-SP[2], XAR4
000093c3   284b       MOV          *-SP[11], #0x03e7
000093c4   03e7
000093c5   c442       MOVL         XAR6, *-SP[2]
000093c6   8f30       MOVL         XAR4, #0x300000
000093c7   0000
000093c8   a8a9       MOVL         ACC, XAR4
000093c9   0fa6       CMPL         ACC, XAR6
000093ca   660d       SB           13, HI
000093cb   c442       MOVL         XAR6, *-SP[2]
000093cc   8f33       MOVL         XAR4, #0x33ffff
000093cd   ffff
000093ce   a8a9       MOVL         ACC, XAR4
000093cf   0fa6       CMPL         ACC, XAR6
000093d0   6807       SB           7, LO
000093d1   0642       MOVL         ACC, *-SP[2]
000093d2   ff0f       SUB          ACC, #0x60 << 15
000093d3   0060
000093d4   1e4e       MOVL         *-SP[14], ACC
000093d5   2b4f       MOV          *-SP[15], #0
000093d6   6f03       SB           3, UNC
0093d7:              $C$L1:
000093d7   9a0c       MOVB         AL, #0xc
000093d8   6f38       SB           56, UNC
0093d9:              $C$L2:
000093d9   56bf       MOVB         *-SP[8], #0x01, UNC
000093da   0148
0093db:              $C$L3:
0093db:              $C$DW$L$_Fl28335_CompactSector$6$B:
000093db   56bf       MOVB         *-SP[10], #0x17, UNC
000093dc   174a
000093dd   2b49       MOV          *-SP[9], #0
000093de   1b49       CMP          *-SP[9], #2000
000093df   07d0
000093e0   6621       SB           33, HI
0093e1:              $C$DW$L$_Fl28335_CompactSector$6$E:
0093e1:              $C$L4:
0093e1:              $C$DW$L$_Fl28335_CompactSector$7$B:
000093e1   064e       MOVL         ACC, *-SP[14]
000093e2   5c4f       MOVZ         AR4, *-SP[15]
000093e3   7640       LCR          0x0092e8
000093e4   92e8
000093e5   9647       MOV          *-SP[7], AL
000093e6   be00       MOVB         XAR6, #0x00
000093e7   761f       MOVW         DP, #0x300
000093e8   0300
000093e9   0600       MOVL         ACC, @0x0
000093ea   0fa6       CMPL         ACC, XAR6
000093eb   ec03       SBF          3, EQ
0093ec:              $C$DW$L$_Fl28335_CompactSector$7$E:
0093ec:              $C$DW$L$_Fl28335_CompactSector$8$B:
000093ec   c500       MOVL         XAR7, @0x0
000093ed   3e67       LCR          *XAR7
0093ee:              $C$DW$L$_Fl28335_CompactSector$8$E:
0093ee:              $C$L5:
0093ee:              $C$DW$L$_Fl28335_CompactSector$9$B:
000093ee   9247       MOV          AL, *-SP[7]
000093ef   ec08       SBF          8, EQ
0093f0:              $C$DW$L$_Fl28335_CompactSector$9$E:
0093f0:              $C$DW$L$_Fl28335_CompactSector$10$B:
000093f0   ff5e       NOT          AL
000093f1   5d4f       MOVZ         AR5, *-SP[15]
000093f2   5ca9       MOVZ         AR4, AL
000093f3   064e       MOVL         ACC, *-SP[14]
000093f4   7640       LCR          0x009322
000093f5   9322
000093f6   6f07       SB           7, UNC
0093f7:              $C$DW$L$_Fl28335_CompactSector$10$E:
0093f7:              $C$L6:
0093f7:              $C$DW$L$_Fl28335_CompactSector$11$B:
000093f7   2b4a       MOV          *-SP[10], #0
000093f8   0201       MOVB         ACC, #1
000093f9   074e       ADDL         ACC, *-SP[14]
000093fa   1e4e       MOVL         *-SP[14], ACC
000093fb   0a48       INC          *-SP[8]
000093fc   6f05       SB           5, UNC
0093fd:              $C$DW$L$_Fl28335_CompactSector$11$E:
0093fd:              $C$L7:
0093fd:              $C$DW$L$_Fl28335_CompactSector$12$B:
000093fd   0a49       INC          *-SP[9]
000093fe   1b49       CMP          *-SP[9], #2000
000093ff   07d0
00009400   69e1       SB           -31, LOS
009401:              $C$DW$L$_Fl28335_CompactSector$12$E:
009401:              $C$L8:
009401:              $C$DW$L$_Fl28335_CompactSector$13$B:
00009401   924a       MOV          AL, *-SP[10]
00009402   ec06       SBF          6, EQ
009403:              $C$DW$L$_Fl28335_CompactSector$13$E:
009403:              $C$DW$L$_Fl28335_CompactSector$14$B:
00009403   1b49       CMP          *-SP[9], #2000
00009404   07d0
00009405   56b6       MOVB         *-SP[11], #0x17, HI
00009406   174b
00009407   6604       SB           4, HI
009408:              $C$DW$L$_Fl28335_CompactSector$14$E:
009408:              $C$L9:
009408:              $C$DW$L$_Fl28335_CompactSector$15$B:
00009408   9243       MOV          AL, *-SP[3]
00009409   5448       CMP          AL, *-SP[8]
0000940a   67d1       SB           -47, HIS
00940b:              $C$DW$L$_Fl28335_CompactSector$15$E:
00940b:              $C$L10:
0000940b   924b       MOV          AL, *-SP[11]
0000940c   5217       CMPB         AL, #0x17
0000940d   ec02       SBF          2, EQ
0000940e   2b4b       MOV          *-SP[11], #0
00940f:              $C$L11:
0000940f   924b       MOV          AL, *-SP[11]
009410:              $C$L12:
00009410   fe90       SUBB         SP, #16
00009411   0006       LRETR        
009412:              _Fl28x_DepRecoverCompactSector:
00009412   fe0a       ADDB         SP, #10
00009413   7d44       MOV          *-SP[4], AR5
00009414   7c43       MOV          *-SP[3], AR4
00009415   1e42       MOVL         *-SP[2], ACC
00009416   2849       MOV          *-SP[9], #0x03e7
00009417   03e7
00009418   7640       LCR          0x0091f1
00009419   91f1
0000941a   2846       MOV          *-SP[6], #0x0001
0000941b   0001
00941c:              L1:
0000941c   2848       MOV          *-SP[8], #0x0017
0000941d   0017
0000941e   2b47       MOV          *-SP[7], #0
0000941f   1b47       CMP          *-SP[7], #400
00009420   0190
00009421   6621       SB           33, HI
009422:              L2:
00009422   5c44       MOVZ         AR4, *-SP[4]
00009423   0642       MOVL         ACC, *-SP[2]
00009424   7640       LCR          0x0092e8
00009425   92e8
00009426   9645       MOV          *-SP[5], AL
00009427   761f       MOVW         DP, #0x300
00009428   0300
00009429   0600       MOVL         ACC, @0x0
0000942a   be00       MOVB         XAR6, #0x00
0000942b   0fa6       CMPL         ACC, XAR6
0000942c   ec03       SBF          3, EQ
0000942d   c500       MOVL         XAR7, @0x0
0000942e   3e67       LCR          *XAR7
00942f:              L3:
0000942f   9245       MOV          AL, *-SP[5]
00009430   ec09       SBF          9, EQ
00009431   ff5e       NOT          AL
00009432   5d44       MOVZ         AR5, *-SP[4]
00009433   5ca9       MOVZ         AR4, AL
00009434   0642       MOVL         ACC, *-SP[2]
00009435   7640       LCR          0x009322
00009436   9322
00009437   0a47       INC          *-SP[7]
00009438   6f07       SB           7, UNC
009439:              L4:
00009439   2b48       MOV          *-SP[8], #0
0000943a   0642       MOVL         ACC, *-SP[2]
0000943b   0901       ADDB         ACC, #1
0000943c   1e42       MOVL         *-SP[2], ACC
0000943d   0a46       INC          *-SP[6]
0000943e   6f04       SB           4, UNC
00943f:              L5:
0000943f   1b47       CMP          *-SP[7], #400
00009440   0190
00009441   69e1       SB           -31, LOS
009442:              L6:
00009442   9248       MOV          AL, *-SP[8]
00009443   ec0a       SBF          10, EQ
00009444   1b47       CMP          *-SP[7], #400
00009445   0190
00009446   6907       SB           7, LOS
00009447   2849       MOV          *-SP[9], #0x0017
00009448   0017
00009449   0642       MOVL         ACC, *-SP[2]
0000944a   0901       ADDB         ACC, #1
0000944b   1e42       MOVL         *-SP[2], ACC
0000944c   0a46       INC          *-SP[6]
00944d:              L7:
0000944d   9243       MOV          AL, *-SP[3]
0000944e   5446       CMP          AL, *-SP[6]
0000944f   67cd       SB           -51, HIS
00009450   7640       LCR          0x0091e4
00009451   91e4
00009452   9249       MOV          AL, *-SP[9]
00009453   5217       CMPB         AL, #0x17
00009454   ec02       SBF          2, EQ
00009455   2b49       MOV          *-SP[9], #0
009456:              L8:
00009456   9249       MOV          AL, *-SP[9]
00009457   fe8a       SUBB         SP, #10
00009458   0006       LRETR        
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
00009468   7640       LCR          0x00953b
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
000094ae   7640       LCR          0x009268
000094af   9268
000094b0   9647       MOV          *-SP[7], AL
000094b1   761f       MOVW         DP, #0x300
000094b2   0300
000094b3   0600       MOVL         ACC, @0x0
000094b4   be00       MOVB         XAR6, #0x00
000094b5   0fa6       CMPL         ACC, XAR6
000094b6   ec03       SBF          3, EQ
000094b7   c500       MOVL         XAR7, @0x0
000094b8   3e67       LCR          *XAR7
0094b9:              L3:
000094b9   9247       MOV          AL, *-SP[7]
000094ba   ec0c       SBF          12, EQ
000094bb   ff5e       NOT          AL
000094bc   9648       MOV          *-SP[8], AL
000094bd   5c48       MOVZ         AR4, *-SP[8]
000094be   5d4f       MOVZ         AR5, *-SP[15]
000094bf   0642       MOVL         ACC, *-SP[2]
000094c0   7640       LCR          0x0092a6
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
000094fe   7640       LCR          0x00949d
000094ff   949d
00009500   56bf       MOVB         *-SP[1], #0x80, UNC
00009501   8041
00009502   8f40       MOVL         XAR5, #0x000400
00009503   0400
00009504   8a48       MOVL         XAR4, *-SP[8]
00009505   064c       MOVL         ACC, *-SP[12]
00009506   7640       LCR          0x00949d
00009507   949d
00009508   2b41       MOV          *-SP[1], #0
00009509   5d45       MOVZ         AR5, *-SP[5]
0000950a   8a48       MOVL         XAR4, *-SP[8]
0000950b   064c       MOVL         ACC, *-SP[12]
0000950c   7640       LCR          0x00949d
0000950d   949d
0000950e   9649       MOV          *-SP[9], AL
00950f:              $C$L3:
0000950f   fe8c       SUBB         SP, #12
00009510   0006       LRETR        
009511:              _Flash28335_DepRecover:
00009511   fe06       ADDB         SP, #6
00009512   d400       MOVB         XAR4, #0x0
00009513   7640       LCR          0x00953b
00009514   953b
00009515   9642       MOV          *-SP[2], AL
00009516   5200       CMPB         AL, #0x0
00009517   ed22       SBF          34, NEQ
00009518   2b45       MOV          *-SP[5], #0
00009519   56bf       MOVB         *-SP[2], #0x32, UNC
0000951a   3242
0000951b   2b41       MOV          *-SP[1], #0
0000951c   9241       MOV          AL, *-SP[1]
0000951d   5208       CMPB         AL, #0x8
0000951e   6615       SB           21, HI
00951f:              $C$L1:
00951f:              $C$DW$L$_Flash28335_DepRecover$3$B:
0000951f   0e41       MOVU         ACC, *-SP[1]
00009520   8f00       MOVL         XAR4, #0x00d000
00009521   d000
00009522   ff31       LSL          ACC, 2
00009523   5601       ADDL         XAR4, ACC
00009524   00a4
00009525   06c4       MOVL         ACC, *+XAR4[0]
00009526   ff0f       SUB          ACC, #0x60 << 15
00009527   0060
00009528   1e44       MOVL         *-SP[4], ACC
00009529   5d45       MOVZ         AR5, *-SP[5]
0000952a   0644       MOVL         ACC, *-SP[4]
0000952b   d480       MOVB         XAR4, #0x80
0000952c   7640       LCR          0x009412
0000952d   9412
0000952e   7242       ADD          *-SP[2], AL
0000952f   0a41       INC          *-SP[1]
00009530   9241       MOV          AL, *-SP[1]
00009531   5208       CMPB         AL, #0x8
00009532   69ed       SB           -19, LOS
009533:              $C$DW$L$_Flash28335_DepRecover$3$E:
009533:              $C$L2:
00009533   9242       MOV          AL, *-SP[2]
00009534   5232       CMPB         AL, #0x32
00009535   ed03       SBF          3, NEQ
00009536   9a00       MOVB         AL, #0x0
00009537   6f02       SB           2, UNC
009538:              $C$L3:
00009538   9a17       MOVB         AL, #0x17
009539:              $C$L4:
00009539   fe86       SUBB         SP, #6
0000953a   0006       LRETR        


00953b:              _Fl28335_Init:
0000953b   aabd       MOVL         *SP++, XAR2
0000953c   86a4       MOVL         XAR2, XAR4
0000953d   7640       LCR          0x009579
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
00009570   7640       LCR          0x009579
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

009579:              _Fl28x_WatchDogDisable:
009579:              $C$DW$L$_Flash28335_ToggleTest$2$E:
00009579   7622       EALLOW       
0000957a   f5a9       MOV          AL, *(0:0x7029)
0000957b   7029
0000957c   5068       ORB          AL, #0x68
0000957d   f4a9       MOV          *(0:0x7029), AL
0000957e   7029
0000957f   761a       EDIS         
00009580   0006       LRETR      
  
009581:              _Fl28x_DisableNMI:
00009581   fe02       ADDB         SP, #2
00009582   f541       MOV          *-SP[1], *(0:0x7077)
00009583   7077
00009584   f5a9       MOV          AL, *(0:0x7077)
00009585   7077
00009586   18a9       AND          AL, #0xfffe
00009587   fffe
00009588   f4a9       MOV          *(0:0x7077), AL
00009589   7077
0000958a   9241       MOV          AL, *-SP[1]
0000958b   fe82       SUBB         SP, #2
0000958c   0006       LRETR        
00958d:              _Fl28x_Delay:
0000958d   761f       MOVW         DP, #0x300
0000958e   0300
0000958f   87a9       MOVL         XT, ACC
00009590   5663       QMPYL        ACC, XT, @0x2
00009591   0002
00009592   1934       SUBB         ACC, #52
00009593   56c4       BF           6, LT
00009594   0006
00009595   ff43       SFR          ACC, 4
009596:              _Fl28x_DelayLoop:
00009596   1901       SUBB         ACC, #1
00009597   56c2       BF           -1, GT
00009598   ffff
009599:              _Fl28x_DelayDone:
00009599   0006       LRETR        
00959a:              _Fl28x_DisableInt:
0000959a   7608       PUSH         ST1
0000959b   3b30       SETC         INTM|DBGM
0000959c   92be       MOV          AL, *--SP
0000959d   0006       LRETR        
00959e:              _Fl28x_RestoreInt:
0000959e   96bd       MOV          *SP++, AL
0000959f   7600       POP          ST1
000095a0   0006       LRETR        
0095a1:              _Flash28335_APIVersion:
000095a1   e802       MOVIZ        R0, #0x4006
000095a2   0030
000095a3   e80b       MOVXI        R0H, #0x6666
000095a4   3330
000095a5   0006       LRETR        
0095a6:              _Flash28335_APIVersionHex:
000095a6   28a9       MOV          AL, #0x0210
000095a7   0210
000095a8   0006       LRETR        

	.sect ".cinit"
00008000   fffe	.word 0xfffe
00008001   c000	.word 0xc000
00008002   0000	.word 0
00008003   0000	.word 0
00008004   0000	.word 0
00008005   fffe	.word 0xfffe
00008006   c002	.word 0xc002
00008007   0000	.word 0
00008008   0000	.word 0
00008009   0000	.word 0

	.sect ".econst"
0000d000   0000	.word 0
0000d001   0030	.word 0x30
0000d002   8000	.word 0x8000
0000d003   0000	.word 0
0000d004   8000	.word 0x8000
0000d005   0030	.word 0x30
0000d006   8000	.word 0x8000
0000d007   0000	.word 0
0000d008   0000	.word 0
0000d009   0031	.word 0x31
0000d00a   8000	.word 0x8000
0000d00b   0000	.word 0
0000d00c   8000	.word 0x8000
0000d00d   0031	.word 0x31
0000d00e   8000	.word 0x8000
0000d00f   0000	.word 0
0000d010   0000	.word 0
0000d011   0032	.word 0x32
0000d012   8000	.word 0x8000
0000d013   0000	.word 0
0000d014   8000	.word 0x8000
0000d015   0032	.word 0x32
0000d016   8000	.word 0x8000
0000d017   0000	.word 0
0000d018   0000	.word 0
0000d019   0033	.word 0x33
0000d01a   8000	.word 0x8000
0000d01b   0000	.word 0
0000d01c   8000	.word 0x8000
0000d01d   0033	.word 0x33
0000d01e   8000	.word 0x8000
0000d01f   0000	.word 0
0000d020   0000	.word 0
0000d021   0030	.word 0x30
0000d022   8000	.word 0x8000
0000d023   0000	.word 0
0000d024   8000	.word 0x8000
0000d025   0030	.word 0x30
0000d026   8000	.word 0x8000
0000d027   0000	.word 0
0000d028   0000	.word 0
0000d029   0031	.word 0x31
0000d02a   8000	.word 0x8000
0000d02b   0000	.word 0
0000d02c   8000	.word 0x8000
0000d02d   0031	.word 0x31
0000d02e   8000	.word 0x8000
0000d02f   0000	.word 0
0000d030   0000	.word 0
0000d031   0032	.word 0x32
0000d032   8000	.word 0x8000
0000d033   0000	.word 0
0000d034   8000	.word 0x8000
0000d035   0032	.word 0x32
0000d036   8000	.word 0x8000
0000d037   0000	.word 0
0000d038   0000	.word 0
0000d039   0033	.word 0x33
0000d03a   8000	.word 0x8000
0000d03b   0000	.word 0
0000d03c   8000	.word 0x8000
0000d03d   0033	.word 0x33
0000d03e   8000	.word 0x8000
0000d03f   0000	.word 0
0000d040   0080	.word 0x80
0000d041   0040	.word 0x40
0000d042   0020	.word 0x20
0000d043   0010	.word 0x10
0000d044   0008	.word 0x8
0000d045   0004	.word 0x4
0000d046   0002	.word 0x2
0000d047   0001	.word 0x1
