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