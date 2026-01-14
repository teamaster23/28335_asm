#include <stdint.h>
#include "_Flash28335_OpenPulse_test.h"



uint16_t Fl28x_OpenPulse_test(uint32_t acc)
{
    asm(" EALLOW");
    
    *(volatile uint16_t *)0x0A90 = 0x0A0F;
    
    asm(" CLRC SXM");
    
    *(volatile uint16_t *)0x0A94 = (uint16_t)(acc >> 2);
    
    return (uint16_t)(acc & 0x3);
}