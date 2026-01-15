#include <stdint.h>
#include "_Flash28335_init_test.h"
#include "_Flash28335_EnterCmdMode_test.h"
#include "_Flash28335_LeaveCmdMode_test.h"
#include "_Flash28335_ProgVerify_test.h"
#include "_Flash28335_ProgPulse_test.h"

Uint16 Flash28335_Program_test(Uint16 *pBuffer, Uint32 Address, Uint32 Length, FLASH_ST *pStatus)
{
    Uint16 status = 0x03e7;
    Uint32 endAddr;
    Uint32 adjustedAddr;
    Uint16 sector;
    Uint32 index;
    Uint16 verifyData;
    Uint16 retryCount;
    Uint16 progData;
    
    status = Fl28335_Init_test(pStatus);
    if (status != 0) {
        return status;
    }
    
    endAddr = Address + Length - 1;
    
    if (Address >= 0x300000 && endAddr <= 0x33ffff) {
        adjustedAddr = Address - 0x300000;
        sector = 0;
    }
    else if (Address >= 0x380400 && endAddr <= 0x3807ff) {
        adjustedAddr = Address - 0x380400;
        sector = 0x10;
    }
    else {
        return 0x0c;
    }
    
    Fl28x_EnterCmdMode_test();
    
    asm(" EALLOW");
    *(volatile Uint16 *)0x0a8d = 0x03;
    asm(" EDIS");
    
    for (index = 0; index < Length; index++) {
        verifyData = Fl28x_ProgVerify_test(sector, adjustedAddr);
        
        if ((verifyData ^ 0xFFFF) & pBuffer[index]) {
            status = 0x1f;
            
            for (retryCount = 0; retryCount < 0x2d; retryCount++) {
//                if (*(volatile Uint32 *)0x300 != 0) {
//                    void (*callback)(void) = (void (*)(void))(*(volatile Uint32 *)0x300);
//                    callback();
//                }
                
                if ((verifyData ^ 0xFFFF) & pBuffer[index]) {
                    if (verifyData != pBuffer[index]) {
                        progData = verifyData | (~pBuffer[index]);
                        Fl28x_ProgPulse_test(adjustedAddr, progData, sector);
                        verifyData = Fl28x_ProgVerify_test(sector, adjustedAddr);
                    } else {
                        break;
                    }
                } else {
                    break;
                }
            }
            
            if (verifyData != pBuffer[index]) {
                if (status == 999) {
                    status = 0x1e;
                }
                
                pStatus->ActualData = verifyData;
                pStatus->ExpectedData = pBuffer[index];
                
                if (sector != 0) {
                    pStatus->FirstFailAddr = 0x380400 + adjustedAddr;
                } else {
                    pStatus->FirstFailAddr = 0x300000 + adjustedAddr;
                }
                
                break;
            }
        }
        
        adjustedAddr++;
    }
    
    Fl28x_LeaveCmdMode_test();
    
    if (status == 999) {
        status = 0;
    }
    
    return status;
}
