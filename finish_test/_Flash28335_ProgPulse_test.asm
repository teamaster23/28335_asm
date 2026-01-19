;//###########################################################################
;//
;// FILE:  Fl28x_ProgPulse_test.asm
;//
;// TITLE: Programming Pulse Function
;//
;// Function Prototype:
;//
;//      void Fl28x_ProgPulse_test(unsigned long addr, unsigned int data);
;//
;// Usage:
;//
;//      Fl28x_ProgPulse_test(address, data);
;//
;//      Executes a programming pulse sequence by:
;//      - Disabling NMI and interrupts
;//      - Opening the pulse
;//      - Masking all sectors
;//      - Writing data and applying timing sequences
;//      - Closing the pulse
;//      - Restoring interrupts and NMI
;//
;//###########################################################################
   .def _Fl28x_ProgPulse_test

   .ref _Fl28x_DisableNMI_test
   .ref _DSP28x_DisableInt
   .ref _Fl28x_OpenPulse_test
   .ref _Fl28x_MaskAll_test
   .ref _Fl28x_Delay_test
   .ref _Fl28x_ClosePulse_test
   .ref _DSP28x_RestoreInt

_Fl28x_ProgPulse_test:
    ADDB      SP, #8
    MOV       *-SP[4], AR5
    MOV       *-SP[3], AR4
    MOVL      *-SP[2], ACC
    LCR       _Fl28x_DisableNMI_test
    MOV       *-SP[7], AL
    LCR       _DSP28x_DisableInt
    MOV       *-SP[6], AL
    MOVL      ACC, *-SP[2]
    LCR       _Fl28x_OpenPulse_test
    MOV       *-SP[5], AL
    LCR       _Fl28x_MaskAll_test
    MOVZ      AR0, *-SP[5]
    MOVL      XAR4, #0x0a98
    MOV       AL, *-SP[3]
    MOV       *+XAR4[AR0], AL
    MOV       AL, *-SP[4]
    OR        AL, #0x0a0b
    MOV       *(0:0x0a90), AL
    MOVB      AL, #0x2
    MOV       *(0:0x0a91), AL
    MOVB      AL, #0x9
    MOV       *(0:0x0a89), AL
    MOVB      AL, #0x6
    MOV       *(0:0x0a8b), AL
    MOV       ACC, #6553
    LCR       _Fl28x_Delay_test
    MOV       AL, *-SP[4]
    OR        AL, #0x020b
    MOV       *(0:0x0a90), AL
    MOVB      AL, #0x0
    MOVB      AH, #0x4
    LCR       _Fl28x_Delay_test
    MOV       AL, *-SP[4]
    OR        AL, #0x0a0b
    MOV       *(0:0x0a90), AL
    MOVB      AL, #0x0
    MOVB      AH, #0x1
    LCR       _Fl28x_Delay_test
    LCR       _Fl28x_ClosePulse_test
    MOV       AL, *-SP[6]
    LCR       _DSP28x_RestoreInt
    MOV       *(0:0x7077), *-SP[7]
    SUBB      SP, #8
    LRETR
;//===========================================================================
;// End of file.
;//===========================================================================