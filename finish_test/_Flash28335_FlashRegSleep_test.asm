;//###########################################################################
;//
;// FILE:  Fl28x_FlashRegSleep_test.asm
;//
;// TITLE: Flash Register Sleep Function
;//
;// Function Prototype:
;//
;//      void Fl28x_FlashRegSleep_test(void);
;//
;//###########################################################################
   .def _Fl28x_FlashRegSleep_test
_Fl28x_FlashRegSleep_test:
    MOVB      AL, #0x0
    MOV       *(0:0x0a91), AL
    MOV       *(0:0x0a94), AL
    MOV       *(0:0x0a98), AL
    MOV       *(0:0x0a99), AL
    MOV       *(0:0x0a9a), AL
    MOV       *(0:0x0a9b), AL
    MOV       *(0:0x0a92), AL
    MOV       *(0:0x0a89), AL
    MOV       *(0:0x0a8a), AL
    MOV       *(0:0x0a8b), AL
    MOV       *(0:0x0a8c), AL
    MOVB      AL, #0xa
    MOV       *(0:0x0a88), AL
    MOV       AL, #0x0c0c
    MOV       *(0:0x0a90), AL
    LRETR
;//===========================================================================
;// End of file.
;//===========================================================================