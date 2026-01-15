#include <stdint.h>
#include "_Flash28335_RestoreInt.h"

/* 等价于：
 * _Fl28x_RestoreInt:
 *   MOV  *SP++, AL
 *   POP  ST1
 *   LRETR
 *
 * 说明：
 * - 形参 key 会按 ABI 传入（通常也会在 AL 或栈上，取决于优化/调用点）。
 * - 为了保证完全等价，我们显式把 key 放到 AL，再按原汇编序列执行。
 */
void Fl28x_RestoreInt_test(uint16_t key)
{
    /* 确保 AL = key（避免编译器没把参数放在 AL） */
    asm(" MOV AL, %0" : : "r"(key));

    asm(" MOV  *SP++, AL");
    asm(" POP  ST1");
}