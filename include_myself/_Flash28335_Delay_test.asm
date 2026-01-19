;// TI File $Revision: /main/1 $
;// Checkin $Date: January 16, 2026 $
;//###########################################################################
;//
;// FILE:  Flash28335_Delay_test.asm
;//
;// TITLE: Delay Function on TMS320F28335
;//
;// Function Prototypes:
;//
;//      void Fl28x_Delay_test(void);
;//
;// Usage:
;//
;//      Fl28x_Delay_test();
;//
;//      Implements a simple delay using the ACC register and loops.
;//
;//###########################################################################
;// $TI Release: Custom $
;//###########################################################################

    .def _Fl28x_Delay_test

    .sect ".text"

_Fl28x_Delay_test:
    MOVW    DP, #0x300           ; ��������ҳ�Ĵ��� DP = 0x300
    MOVL    XT, ACC              ; �� XT �Ĵ���ֵ���ص� ACC
    QMPYL   ACC, XT, @0x2        ; �˷���ACC = ACC * [0x2]����ʱ������
    SUBB    ACC, #52             ; �� ACC �м�ȥ 52
    BF      6, LT ; ��� ACC < 0 ��ת�� DelayLoop
    SFR     ACC, 4               ; �� ACC ֵ�洢������Ĵ��� 4

_Fl28x_DelayLoop_test:
    SUBB    ACC, #1              ; ACC = ACC - 1
    BF      _Fl28x_DelayLoop_test, GT ; ��� ACC > 0������ѭ��

_Fl28x_DelayDone_test:
    LRETR                        ; ���ص� C ���ú���

;//===========================================================================
;// End of file.
;//===========================================================================
