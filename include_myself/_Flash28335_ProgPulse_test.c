#include <stdint.h>
#include "../Flash2833x_API_Library.h"
#include "_Flash28335_ProgPulse_test.h"
#include "_Flash28335_ClosePulse_test.h"
#include "_Flash28335_DisableNMI_test.h"

//extern unsigned int Fl28x_DisableNMI_test(void);
extern unsigned int DSP28x_DisableInt(void);
extern unsigned int Fl28x_OpenPulse_test(unsigned long addr);
extern void Fl28x_MaskAll_test(void);
extern void Fl28x_Delay_test(unsigned long delay);
//extern void Fl28x_ClosePulse_test(void);
extern void DSP28x_RestoreInt(unsigned int intStatus);

// Hardware register addresses
#define FLASH_REG_0A98_BASE  (*(volatile unsigned int *)0x0A98)
#define FLASH_REG_0A90       (*(volatile unsigned int *)0x0A90)
#define FLASH_REG_0A91       (*(volatile unsigned int *)0x0A91)
#define FLASH_REG_0A89       (*(volatile unsigned int *)0x0A89)
#define FLASH_REG_0A8B       (*(volatile unsigned int *)0x0A8B)
#define FLASH_REG_7077       (*(volatile unsigned int *)0x7077)

void Fl28x_ProgPulse_test(unsigned long offset, unsigned int progData, unsigned int key)
{
    unsigned int nmiStatus;
    unsigned int intStatus;
    unsigned int pulseIndex;
    volatile unsigned int *pFlashData;

    // Disable NMI and save status
    nmiStatus = Fl28x_DisableNMI_test();

    // Disable interrupts and save status
    intStatus = DSP28x_DisableInt();

    // Open pulse with offset, get pulse index
    pulseIndex = Fl28x_OpenPulse_test(offset);

    // Mask all
    Fl28x_MaskAll_test();

    // Write programming data to flash buffer (0x0A98 + pulseIndex)
    pFlashData = (volatile unsigned int *)(0x0A98 + pulseIndex);
    *pFlashData = progData;

    // Configure flash registers - Phase 1
    FLASH_REG_0A90 = key | 0x0A0B;
    FLASH_REG_0A91 = 0x02;
    FLASH_REG_0A89 = 0x09;
    FLASH_REG_0A8B = 0x06;

    // Delay ~6553 cycles
    Fl28x_Delay_test(6553);

    // Configure flash registers - Phase 2
    FLASH_REG_0A90 = key | 0x020B;

    // Delay with AH=4, AL=0 (0x00040000)
    Fl28x_Delay_test(0x00040000UL);

    // Configure flash registers - Phase 3
    FLASH_REG_0A90 = key | 0x0A0B;

    // Delay with AH=1, AL=0 (0x00010000)
    Fl28x_Delay_test(0x00010000UL);

    // Close pulse
    Fl28x_ClosePulse_test();

    // Restore interrupts
    DSP28x_RestoreInt(intStatus);

    // Restore NMI status
    FLASH_REG_7077 = nmiStatus;
}

//===========================================================================
// End of file.
//===========================================================================
