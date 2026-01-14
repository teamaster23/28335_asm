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
00009259   7640       LCR          0x00958d // 调用_Flash28335_Delay
0000925a   958d
0000925b   761a       EDIS         
0000925c   0006       LRETR