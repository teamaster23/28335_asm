#ifndef _FL28335_INIT_TEST_H_
#define _FL28335_INIT_TEST_H_

/* 寮曞叆鏍囧噯鏁存暟绫诲瀷瀹氫箟锛岀‘淇漸int16_t/uint32_t鍙瘑鍒�*/
#include <stdint.h>

/* 绫诲瀷閲嶅畾涔夛紙涓嶤鏂囦欢淇濇寔涓�嚧锛屽澶栨毚闇插彲澶嶇敤绫诲瀷锛�*/
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

/* FLASH_ST 缁撴瀯浣撳畾涔夛紙瀵瑰鏆撮湶缁撴瀯浣擄紝鏀寔璋冪敤鑰呬紶閫�鎺ユ敹鏁版嵁锛�*/
#ifndef Flash_ST_test
#define Flash_ST_test
typedef struct {
    Uint32  FirstFailAddr;
    Uint16  ExpectedData;
    Uint16  ActualData;
} FLASH_ST;
#endif

/* 鍑芥暟澹版槑锛堝澶栨毚闇叉帴鍙ｏ紝璇存槑鍑芥暟鍔熻兘銆佸弬鏁板拰杩斿洖鍊硷級 */

Uint16 Fl28335_Init_test(FLASH_ST* pInitData);

#endif /* _FL28335_INIT_TEST_H_ */
