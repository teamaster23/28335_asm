;//###########################################################################
;//
;// FILE:  Fl28x_Flash28335_Program_test.asm
;//
;// TITLE: Flash Programming Function for TMS320F28335
;//
;// Function Prototype:
;//
;//      unsigned int Flash28335_Program_test(FLASH_ST *FlashStatus,
;//                                           unsigned int *Buffer,
;//                                           unsigned long StartAddr,
;//                                           unsigned long Length);
;//
;// Usage:
;//
;//      status = Flash28335_Program_test(&FlashStatus, Buffer, StartAddr, Length);
;//
;//      Programs flash memory with data from buffer:
;//      - Initializes flash
;//      - Determines sector type (Flash A/B or OTP)
;//      - Enters command mode
;//      - Performs program and verify cycles
;//      - Handles program failures with retries
;//      - Leaves command mode
;//      - Returns status code
;//
;//###########################################################################
   .def _Flash28335_Program_test
   .ref _Fl28335_Init_test
   .ref _Fl28x_EnterCmdMode_test
   .ref _Fl28x_ProgVerify_test
   .ref _Fl28x_ProgPulse_test
   .ref _Fl28x_LeaveCmdMode_test

_Flash28335_Program_test:
    ADDB      SP, #18
    MOVL      *-SP[6], ACC
    MOVL      *-SP[4], XAR5
    MOVL      *-SP[2], XAR4
    MOVL      XAR4, *-SP[22]
    LCR       _Fl28335_Init_test
    MOV       *-SP[13], AL
    CMPB      AL, #0x0
    SBF       3, EQ
    B         158, UNC
$C$L1:
    MOV       *-SP[13], #0x03e7
    MOVL      ACC, *-SP[2]
    ADDL      ACC, *-SP[6]
    SUBB      ACC, #1
    MOVL      *-SP[8], ACC
    MOVL      XAR6, *-SP[2]
    MOVL      XAR4, #0x300000
    MOVL      ACC, XAR4
    CMPL      ACC, XAR6
    SB        13, HI
    MOVL      XAR6, *-SP[8]
    MOVL      XAR4, #0x33ffff
    MOVL      ACC, XAR4
    CMPL      ACC, XAR6
    SB        7, LO
    MOVL      ACC, *-SP[2]
    SUB       ACC, #0x60 << 15
    MOVL      *-SP[10], ACC
    MOV       *-SP[14], #0
    SB        22, UNC
$C$L2:
    MOVL      XAR6, *-SP[2]
    MOVL      XAR4, #0x380400
    MOVL      ACC, XAR4
    CMPL      ACC, XAR6
    SB        14, HI
    MOVL      XAR6, *-SP[8]
    MOVL      XAR4, #0x3807ff
    MOVL      ACC, XAR4
    CMPL      ACC, XAR6
    SB        8, LO
    MOVL      ACC, *-SP[2]
    SUB       ACC, #0xe01 << 10
    MOVL      *-SP[10], ACC
    MOVB      *-SP[14], #0x10, UNC
    SB        3, UNC
$C$L3:
    MOVB      AL, #0xc
    SB        112, UNC
$C$L4:
    LCR       _Fl28x_EnterCmdMode_test
    EALLOW
    MOVB      AL, #0x3
    MOV       *(0:0x0a8d), AL
    EDIS
    MOVB      ACC, #1
    MOVL      *-SP[16], ACC
    MOVL      ACC, *-SP[6]
    CMPL      ACC, *-SP[16]
    SB        92, LO
$C$L5:
    MOVZ      AR4, *-SP[14]
    MOVL      ACC, *-SP[10]
    SPM       #0
    LCR       _Fl28x_ProgVerify_test
    MOV       *-SP[11], AL
    MOV       *-SP[17], #0
    MOV       AL, *-SP[17]
    CMPB      AL, #0x2d
    SB        40, HIS
$C$L6:
    MOVB      XAR6, #0x00
    MOVW      DP, #0x300
    MOVL      ACC, @0x0
    CMPL      ACC, XAR6
    SBF       3, EQ
    MOVL      XAR7, @0x0
    LCR       *XAR7
$C$L7:
    MOVL      XAR4, *-SP[4]
    MOV       AL, *-SP[11]
    XOR       AL, #0xffff
    AND       AL, *+XAR4[0]
    MOVB      *-SP[13], #0x1f, NEQ
    SBF       24, NEQ
    MOVL      XAR4, *-SP[4]
    MOV       AL, *+XAR4[0]
    CMP       AL, *-SP[11]
    SBF       20, EQ
    MOVL      XAR4, *-SP[4]
    MOV       AL, *-SP[11]
    NOT       AL
    OR        AL, *+XAR4[0]
    MOV       *-SP[12], AL
    MOVZ      AR5, *-SP[14]
    MOVZ      AR4, *-SP[12]
    MOVL      ACC, *-SP[10]
    LCR       _Fl28x_ProgPulse_test
    MOVZ      AR4, *-SP[14]
    MOVL      ACC, *-SP[10]
    LCR       _Fl28x_ProgVerify_test
    MOV       *-SP[11], AL
    INC       *-SP[17]
    MOV       AL, *-SP[17]
    CMPB      AL, #0x2d
    SB        -38, LO
$C$L8:
    MOVL      XAR4, *-SP[4]
    MOV       AL, *+XAR4[0]
    CMP       AL, *-SP[11]
    SBF       28, EQ
    CMP       *-SP[13], #999
    MOVB      *-SP[13], #0x1e, EQ
    MOVL      XAR4, *-SP[22]
    MOV       AL, *-SP[11]
    MOV       *+XAR4[3], AL
    MOVL      XAR7, *-SP[4]
    MOVL      XAR4, *-SP[22]
    MOV       AL, *+XAR7[0]
    MOV       *+XAR4[2], AL
    MOV       AL, *-SP[14]
    SBF       8, NEQ
    MOVL      XAR5, *-SP[22]
    MOVL      XAR4, #0x300000
    MOVL      ACC, XAR4
    ADDL      ACC, *-SP[10]
    MOVL      *+XAR5[0], ACC
    SB        19, UNC
$C$L9:
    MOVL      XAR5, *-SP[22]
    MOVL      XAR4, #0x380400
    MOVL      ACC, XAR4
    ADDL      ACC, *-SP[10]
    MOVL      *+XAR5[0], ACC
    SB        12, UNC
$C$L10:
    MOVB      ACC, #1
    ADDL      *-SP[4], ACC
    ADDL      ACC, *-SP[10]
    MOVL      *-SP[10], ACC
    MOVB      ACC, #1
    ADDL      ACC, *-SP[16]
    MOVL      *-SP[16], ACC
    MOVL      ACC, *-SP[6]
    CMPL      ACC, *-SP[16]
    SB        -90, HIS
$C$L11:
    SPM       #0
    LCR       _Fl28x_LeaveCmdMode_test
    CMP       *-SP[13], #999
    SBF       2, NEQ
    MOV       *-SP[13], #0
$C$L12:
    MOV       AL, *-SP[13]
$C$L13:
    SUBB      SP, #18
    LRETR
;//===========================================================================
;// End of file.
;//===========================================================================