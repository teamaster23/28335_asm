#include <stdint.h>
#include "_Flash28335_WatchDogDisable_test.h"

void Fl28x_WatchDogDisable_test(void)
{
    // 起始地址：0x009579

    asm("EALLOW");
    
    // 读取看门狗控制寄存器
    uint16_t wdcr = *(volatile uint16_t *)0x7029;
    
    // 设置bit 6和bit 5和bit 3 (0x68 = 0b01101000)
    wdcr |= 0x68;
    
    // 写回看门狗控制寄存器
    *(volatile uint16_t *)0x7029 = wdcr;
    
    asm("EDIS");
    
    return;
}