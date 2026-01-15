#include <stdint.h>
#include "_Flash28335_DisableInt_test.h"
/* 等价于：
 * PUSH ST1
 * SETC INTM|DBGM
 * MOV  AL, *--SP
 * LRETR
 */
uint16_t Fl28x_DisableInt_test(void)
{
    
    uint16_t key;
    asm(" PUSH  ST1");
    asm(" SETC  INTM|DBGM");
    asm(" MOV   AL, *--SP");
    asm(" MOV   %0, AL" : "=r"(key));
    return key;
}