#ifndef _FLASH28335_VERIFY_TEST_H_
#define _FLASH28335_VERIFY_TEST_H_
#include <stdint.h>
#include "_Flash28335_init_test.h"

#ifndef Flash_ST_test
#define Flash_ST_test
typedef struct {
    Uint32  FirstFailAddr;
    Uint16  ExpectedData;
    Uint16  ActualData;
}FLASH_ST;
#endif

Uint16 _Flash28335_Verify_test(Uint16* source, Uint16* flash, Uint32 length, FLASH_ST* error);
#endif
