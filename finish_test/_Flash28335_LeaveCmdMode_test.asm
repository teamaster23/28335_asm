;//###########################################################################
;//
;// FILE:  Fl28x_LeaveCmdMode_test.asm
;//
;// TITLE: Leave Command Mode Function
;//
;// Function Prototype:
;//
;//      void Fl28x_LeaveCmdMode_test(void);
;//
;//###########################################################################
   .def _Fl28x_LeaveCmdMode_test

   .ref _Fl28x_FlashRegSleep_test
   
_Fl28x_LeaveCmdMode_test:
    EALLOW
    LCR       _Fl28x_FlashRegSleep_test
    MOVB      AL, #0x0
    MOV       *(0:0x0a81), AL
    MOV       AL, *(0:0x0a90)
    XORB      AL, #0x4
    MOV       *(0:0x0a90), AL
    EDIS
    LRETR
;//===========================================================================
;// End of file.
;//===========================================================================