;//###########################################################################
;//
;// FILE:  Fl28x_OpenPulse_test.asm
;//
;// TITLE: Open Pulse Function
;//
;// Function Prototype:
;//
;//      uint16_t Fl28x_OpenPulse_test(Uint16 param);
;//
;//###########################################################################

   .def _Fl28x_OpenPulse_test

_Fl28x_OpenPulse_test:
    ADDB      SP, #2
    MOVL      *-SP[2], ACC
    EALLOW
    MOV       AL, #0x0a0f
    MOV       *(0:0x0a90), AL
    MOVL      XAR4, #0x000a94
    CLRC      SXM
    MOVL      ACC, *-SP[2]
    SFR       ACC, 2
    MOV       *+XAR4[0], AL
    MOVL      ACC, *-SP[2]
    ANDB      AL, #0x3
    SUBB      SP, #2
    LRETR

;//===========================================================================
;// End of file.
;//===========================================================================
