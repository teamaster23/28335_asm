#include <stdint.h>
#include "_Flash28335_DisableNMI_test.h"

uint16_t Fl28x_DisableNMI_test(void)
{
    uint16_t temp;
    
    // 读取并保存原值
    temp = *(volatile uint16_t *)0x7077;
    
    // 清除bit 0以禁用NMI
    *(volatile uint16_t *)0x7077 = temp & 0xFFFE;
    
    // 返回原值供后续恢复使用
    return temp;
}