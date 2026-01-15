009000:              _Flash28335_Program:
00009000   fe12       ADDB         SP, #18
00009001   1e46       MOVL         *-SP[6], ACC
00009002   a044       MOVL         *-SP[4], XAR5
00009003   a842       MOVL         *-SP[2], XAR4
00009004   8a56       MOVL         XAR4, *-SP[22]
00009005   7640       LCR          0x00953b //调用Flash_init_test
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
00009039   7640       LCR          0x0091f1 // 调用EnterCmdMode_test
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
00009048   7640       LCR          0x009268 // 调用ProgVerify_test
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
00009056   3e67       LCR          *XAR7  // 此步骤暂无意义
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
0000906b   7640       LCR          0x0092a6 // 调用ProgPulse_test
0000906c   92a6
0000906d   5c4e       MOVZ         AR4, *-SP[14]
0000906e   064a       MOVL         ACC, *-SP[10]
0000906f   7640       LCR          0x009268 // 调用ProgVerify_test
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
000090a1   7640       LCR          0x0091e4 // 调用LeaveCmdMode_test
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