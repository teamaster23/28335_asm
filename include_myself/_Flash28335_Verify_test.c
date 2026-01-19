#include <stdint.h>
#include "_Flash28335_Verify_test.h"
#include "_Flash28335_init_test.h"

#ifndef Flash_ST_test
#define Flash_ST_test
typedef struct {
    Uint32  FirstFailAddr;
    Uint16  ExpectedData;
    Uint16  ActualData;
} FLASH_ST;
#endif

Uint16 _Flash28335_Verify_test(Uint16* source, Uint16* flash, Uint32 length, FLASH_ST* error)
{
    Uint16 status_2;
    Uint32 i;
    
    // 调用初始化函数 (0x953b)
    status_2 = Fl28335_Init_test(error);
    
    // 如果初始化失败，返回错误状态
    if (status_2 != 0) {
        return status_2;
    }
    

    // 如果长度为0，返回错误
    if (length == 0) {
        return 0x28;  //
    }
    
    // // 检查是否有回调函数 (地址 0x300)
    // callback = *(void(**)(void))0x300;
    // if (callback != NULL) {
    //     callback();  // 执行回调
    // }
    
    // 逐字节比较
    for (i=1; i <= length; i++)
    {
        if (*source != *flash) {
            // 验证失败，记录错误信息
            error->FirstFailAddr = (Uint32)flash;
            error->ExpectedData = *source;
            error->ActualData = *flash;
            return 0x28;   // 验证失败错误码
        }
        
        source++;
        flash++;
    }
    
    // 验证成功
    return status_2;
}
