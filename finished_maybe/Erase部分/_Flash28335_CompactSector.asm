
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
000093e3   7640       LCR          0x0092e8 // 调用_Fl28x_CompactVerify_test
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
000093ed   3e67       LCR          *XAR7 // 无意义
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
000093f4   7640       LCR          0x009322 //调用_Fl28x_CompactPulse_test
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

