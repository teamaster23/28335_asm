;// TI File $Revision: /main/1 $
;// Checkin $Date: August 18, 2006   13:46:09 $
;//###########################################################################
;//
;// FILE:  Flash28335_WatchDogDisable_test.asm
;//
;// TITLE: Disable Watchdog on TMS320F28335
;//
;// Function Prototypes:
;//
;//      void Fl28x_WatchDogDisable_test(void);
;//
;// Usage:
;//
;//      Fl28x_WatchDogDisable_test();
;//
;//      Disables the watchdog by writing to WDCR.
;//      Uses EALLOW / EDIS protection.
;//
;//###########################################################################
;// $TI Release: Custom $
;//###########################################################################

    .def _Fl28x_WatchDogDisable_test

    .sect ".text"

_Fl28x_WatchDogDisable_test:
    EALLOW                          ; Enable protected register access
    MOV     AL, *(0:0x7029)         ; Read WDCR
    ORB     AL, #0x68               ; WDCR unlock + disable bits
    MOV     *(0:0x7029), AL         ; Write back
    EDIS                            ; Disable protected register access
    LRETR                           ; Return to C caller

;//===========================================================================
;// End of file.
;//===========================================================================
