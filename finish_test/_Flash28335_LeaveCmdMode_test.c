#include <stdint.h>
#include "_Flash28335_FlashRegSleep_test.h"
#include "_Flash28335_LeaveCmdMode_test.h"

void Fl28x_LeaveCmdMode_test(void)
{
    // 起始地址：000091e4

    asm("EALLOW");
    
    // 1. 将Flash寄存器置于睡眠模式
    Fl28x_FlashRegSleep_test();
    
    // 2. 清零某个Flash控制寄存器
    *(volatile uint16_t *)0x0a81 = 0x0;
    
    // 3. 翻转Flash控制寄存器的bit 2
    uint16_t temp = *(volatile uint16_t *)0x0a90;
    temp ^= 0x4;  // XOR操作，翻转bit 2
    *(volatile uint16_t *)0x0a90 = temp;
    
    asm("EDIS");
    
    return;
}