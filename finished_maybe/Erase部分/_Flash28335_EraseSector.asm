    
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
00009389   7640       LCR          0x00914a //调用_Fl28x_EraseVerify_test
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
00009393   3e67       LCR          *XAR7 //无意义
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
0000939f   7640       LCR          0x009192 // 调用_Fl28x_ErasePulse_test
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
000093b3   7640       LCR          0x009246 // 调用_Fl28x_ClosePulse_test
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