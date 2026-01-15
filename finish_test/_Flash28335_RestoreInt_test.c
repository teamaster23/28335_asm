#include <stdint.h>
#include "_Flash28335_RestoreInt_test.h"

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
    asm(" MOVL  XAR4, #_key");     // 加载key的地址到XAR4
    asm(" MOV   AL, *XAR4");       // 从内存加载key到AL
    asm(" MOV   *SP++, AL");       // 将AL压入栈
    asm(" POP   ST1");             // 恢复ST1
}
