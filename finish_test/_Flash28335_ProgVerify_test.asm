;//###########################################################################
;//
;// FILE:  Fl28x_ProgVerify_test.asm
;//
;// TITLE: Program Verify Function
;//
;// Function Prototype:
;//
;//      unsigned int Fl28x_ProgVerify_test(unsigned long addr, unsigned int data);
;//
;// Usage:
;//
;//      result = Fl28x_ProgVerify_test(address, data);
;//
;//      Verifies programming by:
;//      - Disabling NMI and interrupts
;//      - Opening the pulse
;//      - Entering verify mode
;//      - Reading back data
;//      - Closing the pulse
;//      - Restoring interrupts and NMI
;//      - Returning the read value
;//
;//###########################################################################
   .def _Fl28x_ProgVerify_test
   .ref _Fl28x_DisableNMI_test
   .ref _DSP28x_DisableInt
   .ref _Fl28x_OpenPulse_test
   .ref _Fl28x_Delay_test
   .ref _Fl28x_ClosePulse_test
   .ref _DSP28x_RestoreInt

_Fl28x_ProgVerify_test:
    ADDB      SP, #8
    MOV       *-SP[3], AR4
    MOVL      *-SP[2], ACC
    LCR       _Fl28x_DisableNMI_test
    MOV       *-SP[7], AL
    LCR       _DSP28x_DisableInt
    MOV       *-SP[6], AL
    MOVL      ACC, *-SP[2]
    LCR       _Fl28x_OpenPulse_test
    MOV       *-SP[4], AL
    MOV       AL, *-SP[3]
    OR        AL, #0x0a0b
    MOV       *(0:0x0a90), AL
    MOVB      AL, #0x1
    MOV       *(0:0x0a91), AL
    MOVB      AL, #0x4
    MOV       *(0:0x0a89), AL
    MOV       ACC, #6553
    LCR       _Fl28x_Delay_test
    MOV       AL, *-SP[3]
    OR        AL, #0x020b
    MOV       *(0:0x0a90), AL
    MOV       AL, #0x6666
    MOVB      AH, #0x1
    LCR       _Fl28x_Delay_test
    MOVZ      AR0, *-SP[4]
    MOVL      XAR4, #0x0a9c
    MOV       AL, *+XAR4[AR0]
    MOV       *-SP[5], AL
    MOV       AL, *-SP[3]
    OR        AL, #0x0a0b
    MOV       *(0:0x0a90), AL
    MOVB      AL, #0x0
    MOVB      AH, #0x1
    LCR       _Fl28x_Delay_test
    LCR       _Fl28x_ClosePulse_test
    MOV       AL, *-SP[6]
    LCR       _DSP28x_RestoreInt
    MOV       *(0:0x7077), *-SP[7]
    MOV       AL, *-SP[5]
    SUBB      SP, #8
    LRETR
;//===========================================================================
;// End of file.
;//===========================================================================