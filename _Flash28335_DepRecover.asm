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


 