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