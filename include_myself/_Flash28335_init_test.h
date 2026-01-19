#ifndef _FL28335_INIT_TEST_H_
#define _FL28335_INIT_TEST_H_

#include <stdint.h>

#ifndef DSP28_DATA_TYPES
#define DSP28_DATA_TYPES
typedef unsigned char 		uint8_t;
typedef int                 int16;
typedef long                int32;
typedef long long           int64;
typedef unsigned int        Uint16;
typedef unsigned long       Uint32;
typedef unsigned long long  Uint64;
typedef float               float32;
typedef long double         float64;
#endif

#ifndef Flash_ST_test
#define Flash_ST_test
typedef struct {
    Uint32  FirstFailAddr;
    Uint16  ExpectedData;
    Uint16  ActualData;
} FLASH_ST;
#endif

Uint16 Fl28335_Init_test(FLASH_ST* pInitData);

#endif /* _FL28335_INIT_TEST_H_ */
