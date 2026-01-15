#ifndef _FLASH28335_PROGRAM_TEST_H_
#define _FLASH28335_PROGRAM_TEST_H_
#include <stdint.h>
#include "../Flash2833x_API_Library.h"
Uint16 Flash28335_Program(Uint16 *pBuffer, Uint32 Address, Uint32 Length, FLASH_ST *pStatus);
#endif