#include <stdint.h>
#include "_Flash28335_FlashRegSleep_test.h"
#include "../Flash2833x_API_Library.h"

static inline void wr8(uint16_t addr, uint8_t v)
{
    *(volatile uint8_t *)addr = v;
}

static inline void wr16(uint16_t addr, uint16_t v)
{
    *(volatile uint16_t *)addr = v;
}

void Fl28x_FlashRegSleep_test(void)
{
    wr8(0x0A91, 0);
    wr8(0x0A94, 0);
    wr8(0x0A98, 0);
    wr8(0x0A99, 0);
    wr8(0x0A9A, 0);
    wr8(0x0A9B, 0);
    wr8(0x0A92, 0);
    wr8(0x0A89, 0);
    wr8(0x0A8A, 0);
    wr8(0x0A8B, 0);
    wr8(0x0A8C, 0);
    wr8(0x0A88, 0x0A);
    wr16(0x0A90, 0x0C0C);
}
