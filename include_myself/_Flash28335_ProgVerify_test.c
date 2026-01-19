//###########################################################################
//
// FILE:  Fl28x_ProgVerify. c
//
// TITLE: Program Verify Function
//
// Function Prototype:
//
//      unsigned int Fl28x_ProgVerify_test(unsigned long addr, unsigned int data);
//
// Usage:
//
//      result = Fl28x_ProgVerify_test(address, data);
//
//      Verifies programming by:
//      - Disabling NMI and interrupts
//      - Opening the pulse
//      - Entering verify mode
//      - Reading back data
//      - Closing the pulse
//      - Restoring interrupts and NMI
//      - Returning the read value
//
//###########################################################################

#include <stdint.h>
#include "../Flash2833x_API_Library.h"
#include "_Flash28335_ProgVerify_test.h"
#include "_Flash28335_ClosePulse_test.h"
#include "_Flash28335_DisableNMI_test.h"

// External function declarations
//extern unsigned int Fl28x_DisableNMI_test(void);
extern unsigned int DSP28x_DisableInt(void);
extern unsigned int Fl28x_OpenPulse_test(unsigned long addr);
extern void Fl28x_Delay_test(unsigned long delay);
//extern void Fl28x_ClosePulse_test(void);
extern void DSP28x_RestoreInt(unsigned int intStatus);

// Register address definitions
#define REG_0A90    (*(volatile unsigned int *)0x0A90)
#define REG_0A91    (*(volatile unsigned int *)0x0A91)
#define REG_0A89    (*(volatile unsigned int *)0x0A89)
#define REG_0A9C    ((volatile unsigned int *)0x0A9C)
#define REG_7077    (*(volatile unsigned int *)0x7077)

unsigned int Fl28x_ProgVerify_test(unsigned long addr, unsigned int data)
{
    unsigned int nmiStatus;
    unsigned int intStatus;
    unsigned int pulseIndex;
    unsigned int readValue;

    // Disable NMI and save status
    nmiStatus = Fl28x_DisableNMI_test();

    // Disable interrupts and save status
    intStatus = DSP28x_DisableInt();

    // Open pulse and get index
    pulseIndex = Fl28x_OpenPulse_test(addr);

    // Configure registers - enter verify mode setup
    REG_0A90 = data | 0x0A0B;
    REG_0A91 = 0x01;
    REG_0A89 = 0x04;

    // Delay for 6553 cycles
    Fl28x_Delay_test(6553);

    // Configure for read operation
    REG_0A90 = data | 0x020B;

    // Delay for 0x16666 (91750) cycles
    Fl28x_Delay_test(0x00016666UL);

    // Read back data from indexed location
    readValue = REG_0A9C[pulseIndex];

    // Restore register state
    REG_0A90 = data | 0x0A0B;

    // Delay for 0x10000 (65536) cycles
    Fl28x_Delay_test(0x00010000UL);

    // Close pulse
    Fl28x_ClosePulse_test();

    // Restore interrupts
    DSP28x_RestoreInt(intStatus);

    // Restore NMI status
    REG_7077 = nmiStatus;

    // Return the read value
    return readValue;
}

//===========================================================================
// End of file.
//===========================================================================
