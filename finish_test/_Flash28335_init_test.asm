;//###########################################################################
;//
;// FILE:  Fl28335_Init_test.asm
;//
;// TITLE: Flash 28335 Init_testialization Function
;//
;// Function Prototype:
;//
;//      uint16_t Fl28335_Init_test(FLASH_ST *status);
;//
;//###########################################################################
   .def _Fl28335_Init_test
   
   .ref _Fl28x_WatchDogDisable
   
_Fl28335_Init_test:
    MOVL      *SP++, XAR2
    MOVL      XAR2, XAR4
    LCR       _Fl28x_WatchDogDisable
    MOVL      ACC, XAR2
    SBF       $C$L1, EQ
    MOVB      ACC, #0
    MOVL      XAR4, XAR2
    MOVL      *+XAR4[0], ACC
    MOVL      XAR4, XAR2
    MOV       *+XAR4[2], #0
    MOVL      XAR4, XAR2
    MOV       *+XAR4[3], #0 
$C$L1:
    MOVL      XAR4, #0x3fffb9
    CMP       *+XAR4[0], #-2
    SBF       $C$L2, EQ    ;;;;
    MOVB      AL, #0xe
    SB        20, UNC
$C$L2:
    MOV       AL, *(0:0x0882) ;;;;
    CMPB      AL, #0xfa
    SBF       $C$L5, EQ
    CMPB      AL, #0xef
    SBF       6, NEQ
    MOVL      XAR4, #0x380090
    MOV       AL, *+XAR4[0]
    CMPB      AL, #0xef
    SBF       3, EQ    ;;;;
$C$L3:
    MOVB      AL, #0xd
    SB        7, UNC
$C$L4:
    MOV       AL, *(0:0x0a88)
    SBF       3, EQ
    MOVB      AL, #0x0
    SB        2, UNC
$C$L5:
    MOVB      AL, #0xa    ;;;;
$C$L6:
    MOVL      XAR2, *--SP
    LRETR
;//===========================================================================
;// End of file.
;//===========================================================================