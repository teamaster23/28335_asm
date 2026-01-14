#include <stdint.h>
#include "_Flash28335_FlashRegSleep_test.h"
#include "_Flash28335_Delay_test.h"
#include "_Flash28335_EnterCmdMode_test.h"


static inline void wr_enter8(uint16_t addr, uint8_t v)
{
    *(volatile uint8_t *)addr = v;
}

static inline void wr_enter16(uint16_t addr, uint16_t v)
{
    *(volatile uint16_t *)addr = v;
}

// static inline uint32_t rd32(uint32_t addr)
// {
//     return *(volatile uint32_t *)addr;
// }

void Fl28x_EnterCmdMode_test(void)
{
    /* 000091f1  EALLOW
       在 C 里通常是 EALLOW 宏/内联汇编；这里用注释表达语义。 */
    asm("EALLOW");

    /* 000091f2  MOVB AL,#0x0
       000091f3  MOV *(0:0x0a82),AL */
    wr_enter8(0x0A82, 0);

    /* 000091f5  LCR 0x009216 // FlashRegSleep */
    Fl28x_FlashRegSleep_test();

    /* 000091f7  MOV AL,#0xaa55
       000091f9  MOV *(0:0x0a81),AL */
    wr_enter16(0x0A81, 0xAA55);

    /* 000091fb  MOV AL,#0x0e0d
       000091fd  MOV *(0:0x0a90),AL */
    wr_enter16(0x0A90, 0x0E0D);

    /* 000091ff MOVB AL,#0x0
       00009200 MOVB AH,#0x3
       00009201 LCR 0x00958d // Delay
       这表示 ACC = 0x0300_0000? 不是：在 C28x 里 AH/AL 组成 ACC 低 16？
       但该反汇编显示设置 AL=0, AH=3，然后调用 Delay。
       按“把 ACC 设为 0x0003_0000”这一典型组合来表达： */
    Fl28x_Delay_test((int32_t)0x00030000);

    /* 00009203 MOVW DP,#0x300
       00009205 MOVL ACC,@0x0
       00009206 MOVB XAR6,#0x00
       00009207 CMPL ACC,XAR6
       00009208 SBF 3,EQ
       00009209 MOVL XAR7,@0x0
       0000920a LCR *XAR7
       
       语义：从 “DP=0x300 页”的偏移 0 处读一个 32-bit 值；
             如果该值 == 0 则跳过调用；否则把它当函数地址调用一次。
       
       DP=0x300 对应的基地址常见等价：0x300 * 0x100 = 0x30000
       （每页 256 words/bytes 的映射在 C28x 上有语义差异；这里按反汇编意图
       直接用一个线性地址 0x30000 表达“那块表的起点”。）
    */
    // uint32_t entry0 = rd32(0x30000u);
    // if (entry0 != 0u)
    // {
    //     void (*fp)(void) = (void (*)(void))(uintptr_t)entry0;
    //     fp();
    // }

    /* L1:
       0000920b MOV AL,#0x0a0f
       0000920d MOV *(0:0x0a90),AL */
    wr_enter16(0x0A90, 0x0A0F);

    /* 0000920f MOV AL,#0x4ccc
       00009211 MOVB AH,#0x3
       00009212 LCR 0x00958d // Delay
       同理：AL=0x4CCC, AH=0x03 => ACC = 0x0003_4CCC（按 32-bit 组合表���） */
    Fl28x_Delay_test((int32_t)0x00034CCC);

    /* 00009214 EDIS */
    /* EDIS; */

    /* 00009215 LRETR => return */
}