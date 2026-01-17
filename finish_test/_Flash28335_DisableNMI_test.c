#include <stdint.h>
#include "_Flash28335_DisableNMI_test.h"

uint16_t Fl28x_DisableNMI_test(void)
{
    uint16_t temp;
    
    // 璇诲彇骞朵繚瀛樺師鍊�
    temp = *(volatile uint16_t *)0x7077;
    
    // 娓呴櫎bit 0浠ョ鐢∟MI
    *(volatile uint16_t *)0x7077 = temp & 0xFFFE;
    
    // 杩斿洖鍘熷�渚涘悗缁仮澶嶄娇鐢�
    return temp;
}
