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
    MOVW    DP, #0x300           ; 设置数据页寄存器 DP = 0x300
    MOVL    XT, ACC              ; 将 XT 寄存器值加载到 ACC
    QMPYL   ACC, XT, @0x2        ; 乘法：ACC = ACC * [0x2]（延时基数）
    SUBB    ACC, #52             ; 从 ACC 中减去 52
    BF      _Fl28x_DelayLoop_test, LT ; 如果 ACC < 0 跳转到 DelayLoop
    SFR     ACC, 4               ; 将 ACC 值存储到特殊寄存器 4

_Fl28x_DelayLoop_test:
    SUBB    ACC, #1              ; ACC = ACC - 1
    BF      _Fl28x_DelayLoop_test, GT ; 如果 ACC > 0，继续循环

_Fl28x_DelayDone_test:
    LRETR                        ; 返回到 C 调用函数

;//===========================================================================
;// End of file.
;//===========================================================================
