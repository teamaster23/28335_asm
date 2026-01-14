#include <stdint.h>
#include "_Flash28335_Delay_test.h"

// 代表汇编里 @0x2 这个 loc32 位置存放的 32-bit 常量。
// 注意：真实值需要你从目标镜像/链接脚本/内存 0x0002 处读出来。
static volatile const int32_t * const FL28X_QMPYL_CONST_LOC32 = (const int32_t *)0x0002;

void Fl28x_Delay_test(int32_t acc_in)
{
    // 对应：MOVL XT,ACC
    int32_t xt = acc_in;

    // 对应：QMPYL ACC,XT,@0x2
    // ACC = ( (signed XT * signed [loc32]) >> 32 )
    int32_t acc = (int32_t)(((int64_t)xt * (int64_t)(*FL28X_QMPYL_CONST_LOC32)) >> 32);

    // 对应：SUBB ACC,#52
    acc -= 52;

    // 对应：BF ...,LT  (如果 acc < 0，直接返回)
    if (acc < 0)
        return;

    // 对应：SFR ACC,4
    acc >>= 4;

    // 对应：DelayLoop
    while (acc > 0)
    {
        acc -= 1;
    }

    // 对应：LRETR (void 返回)
    return;
}