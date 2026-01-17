;//###########################################################################
;//
;// FILE:  Fl28x_EnterCmdMode_test.asm
;//
;// TITLE: Enter Command Mode Function
;//
;// Function Prototype:
;//
;//      void Fl28x_EnterCmdMode_test(void);
;//
;// Usage:
;//
;//      Fl28x_EnterCmdMode_test();
;//
;//      Enters Flash command mode by initializing control registers,
;//      putting Flash registers to sleep, and applying appropriate delays.
;//      Calls Fl28x_FlashRegSleep_test() and Fl28x_Delay_test().
;//
;//###########################################################################

   .def _Fl28x_EnterCmdMode_test
   .ref _Fl28x_FlashRegSleep_test
   .ref _Fl28x_Delay_test

_Fl28x_EnterCmdMode_test:
    EALLOW
    MOVB      AL, #0x0
    MOV       *(0:0x0a82), AL
    LCR       _Fl28x_FlashRegSleep_test
    MOV       AL, #0xaa55
    MOV       *(0:0x0a81), AL
    MOV       AL, #0x0e0d
    MOV       *(0:0x0a90), AL
    MOVB      AL, #0x0
    MOVB      AH, #0x3
    LCR       _Fl28x_Delay_test
    MOVW      DP, #0x300
    MOVL      ACC, @0x0
    MOVB      XAR6, #0x00
    CMPL      ACC, XAR6
    SBF       L1, EQ
    MOVL      XAR7, @0x0
    LCR       *XAR7
L1:
    MOV       AL, #0x0a0f
    MOV       *(0:0x0a90), AL
    MOV       AL, #0x4ccc
    MOVB      AH, #0x3
    LCR       _Fl28x_Delay_test
    EDIS
    LRETR

;//===========================================================================
;// End of file.
;//===========================================================================
