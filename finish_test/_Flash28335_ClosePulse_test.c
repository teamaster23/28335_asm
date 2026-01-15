#include <stdint.h>
#include "_Flash28335_ClosePulse_test.h"
#include "../Flash2833x_API_Library.h"


void Fl28x_ClosePulse_test(void)
{
    // 起始地址：00009246
    
    asm("EALLOW");  // 使能对受保护寄存器的写访问
    
    // 配置一系列寄存器
    *(volatile uint8_t *)0x0a91 = 0x0;
    *(volatile uint16_t *)0x0a90 = 0x0a0f;
    *(volatile uint16_t *)0x0a89 = 0x0;
    *(volatile uint16_t *)0x0a8a = 0x0;
    *(volatile uint16_t *)0x0a8b = 0x0;
    *(volatile uint16_t *)0x0a8c = 0x0;
    
    // 调用延迟函数
    Fl28x_Delay_test(6553);  // 0x1999 = 6553
    
    asm("EDIS");   // 禁止对受保护寄存器的写访问
    
    return;
}
