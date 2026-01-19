//===========================================================================
// Flash28335 Program Function
//===========================================================================
#ifndef _FLASH28335_PROGRAM_TEST_H_
#define _FLASH28335_PROGRAM_TEST_H_
#include <stdint.h>
#include "../Flash2833x_API_Library.h"  // 假设包含类型定义和外部函数声明

Uint16 Flash28335_Program_test(Uint16* addr, Uint16 *data, Uint32 length, FLASH_ST *FlashStatus);
#endif
