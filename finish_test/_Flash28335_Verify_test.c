#include <stdint.h>
#include "_Flash28335_Verify.h"
#include "_Flash28335_init_test.h"

#ifndef Flash_ST_test
#define Flash_ST_test
typedef struct {
    Uint32  FirstFailAddr;
    Uint16  ExpectedData;
    Uint16  ActualData;
} FLASH_ST;
#endif

uint16_t _Flash28335_Verify(uint16_t* source, uint16_t* flash, uint32_t length, Flash_ST* error)
{
    uint16_t status;
    uint32_t i;
    void (*callback)(void);
    
    // 调用初始化函数 (0x953b)
    status = Fl28335_Init_test();
    
    // 如果初始化失败，返回错误状态
    if (status != 0) {
        return status;
    }
    
    // 如果长度为0，返回错误
    if (length == 0) {
        return 0x28;  // 错误码
    }
    
    // // 检查是否有回调函数 (地址 0x300)
    // callback = *(void(**)(void))0x300;
    // if (callback != NULL) {
    //     callback();  // 执行回调
    // }
    
    // 逐字节比较
    for (int i=1; i <= length; i++)
        if (*source != *flash) {
            // 验证失败，记录错误信息
            error->FirstFailAddr = (uint32_t)flash;
            error->ExpectedData = *source;
            error->ActualData = *flash;
            return 0x28;  // 验证失败错误码
        }
        
        source++;
        flash++;
    }
    
    // 验证成功
    return status;
}