0092a6:              _Fl28x_ProgPulse:
000092a6   fe08       ADDB         SP, #8
000092a7   7d44       MOV          *-SP[4], AR5
000092a8   7c43       MOV          *-SP[3], AR4
000092a9   1e42       MOVL         *-SP[2], ACC
000092aa   7640       LCR          0x009581 // 调用DisableNMI
000092ab   9581
000092ac   9647       MOV          *-SP[7], AL
000092ad   7640       LCR          0x00959a // 调用DisableInt
000092ae   959a
000092af   9646       MOV          *-SP[6], AL
000092b0   0642       MOVL         ACC, *-SP[2]
000092b1   7640       LCR          0x009235 // 调用OpenPulse
000092b2   9235
000092b3   9645       MOV          *-SP[5], AL
000092b4   7640       LCR          0x00925d // 调用MaskAll
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
000092cb   7640       LCR          0x00958d // 调用Delay
000092cc   958d
000092cd   9244       MOV          AL, *-SP[4]
000092ce   1aa9       OR           AL, #0x020b
000092cf   020b
000092d0   f4a9       MOV          *(0:0x0a90), AL
000092d1   0a90
000092d2   9a00       MOVB         AL, #0x0
000092d3   9b04       MOVB         AH, #0x4
000092d4   7640       LCR          0x00958d // 调用Delay
000092d5   958d
000092d6   9244       MOV          AL, *-SP[4]
000092d7   1aa9       OR           AL, #0x0a0b
000092d8   0a0b
000092d9   f4a9       MOV          *(0:0x0a90), AL
000092da   0a90
000092db   9a00       MOVB         AL, #0x0
000092dc   9b01       MOVB         AH, #0x1
000092dd   7640       LCR          0x00958d // 调用Delay
000092de   958d
000092df   7640       LCR          0x009246 // 调用ClosePulse
000092e0   9246
000092e1   9246       MOV          AL, *-SP[6]
000092e2   7640       LCR          0x00959e // 调用REstoreInt
000092e3   959e
000092e4   f447       MOV          *(0:0x7077), *-SP[7]
000092e5   7077
000092e6   fe88       SUBB         SP, #8
000092e7   0006       LRETR        

