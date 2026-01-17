;//###########################################################################
;//
;// FILE:  Fl28x_ClosePulse_test.asm
;//
;// TITLE: Close Pulse Function
;//
;// Function Prototype:
;//
;//      void Fl28x_ClosePulse_test(void);
;//
;// Usage:
;//
;//      Fl28x_ClosePulse_test();
;//
;//      Closes the pulse by clearing control registers and applying a delay.
;//      Calls Fl28x_Delay_test() for timing control.
;//
;//###########################################################################

   .def _Fl28x_ClosePulse_test
   .ref _Fl28x_Delay_test

_Fl28x_ClosePulse_test:
    EALLOW
    MOVB      AL, #0x0
    MOV       *(0:0x0a91), AL
    MOV       AL, #0x0a0f
    MOV       *(0:0x0a90), AL
    MOVB      AL, #0x0
    MOV       *(0:0x0a89), AL
    MOV       *(0:0x0a8a), AL
    MOV       *(0:0x0a8b), AL
    MOV       *(0:0x0a8c), AL
    MOV       ACC, #6553
    LCR       _Fl28x_Delay_test
    EDIS
    LRETR

;//===========================================================================
;// End of file.
;//===========================================================================
