#ifndef _FL28335_INIT_TEST_H_
#define _FL28335_INIT_TEST_H_

/* 引入标准整数类型定义，确保uint16_t/uint32_t可识别 */
#include <stdint.h>

/* 类型重定义（与C文件保持一致，对外暴露可复用类型） */
typedef uint16_t Uint16;
typedef uint32_t Uint32;

/* FLASH_ST 结构体定义（对外暴露结构体，支持调用者传递/接收数据） */
#ifndef Flash_ST_test
#define Flash_ST_test
typedef struct {
    Uint32  FirstFailAddr;
    Uint16  ExpectedData;
    Uint16  ActualData;
} FLASH_ST;
#endif

/* 函数声明（对外暴露接口，说明函数功能、参数和返回值） */

Uint16 Fl28335_Init_test(FLASH_ST* pInitData);

#endif /* _FL28335_INIT_TEST_H_ */
