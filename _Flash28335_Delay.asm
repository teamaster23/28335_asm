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
