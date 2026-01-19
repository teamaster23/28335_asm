;//###########################################################################
;//
;// FILE:  Fl28x_DisableNMI_test.asm
;//
;// TITLE: Disable NMI Function
;//
;// Function Prototype:
;//
;//      uint16_t Fl28x_DisableNMI_test(void);
;//
;//###########################################################################
   .def _Fl28x_DisableNMI_test
_Fl28x_DisableNMI_test:
    ADDB      SP, #2
    MOV       *-SP[1], *(0:0x7077)
    MOV       AL, *(0:0x7077)
    AND       AL, #0xfffe
    MOV       *(0:0x7077), AL
    MOV       AL, *-SP[1]
    SUBB      SP, #2
    LRETR
;//===========================================================================
;// End of file.
;//===========================================================================