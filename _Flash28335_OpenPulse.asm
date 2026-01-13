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
