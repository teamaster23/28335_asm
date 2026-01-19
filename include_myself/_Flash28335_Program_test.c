//===========================================================================
// Flash28335 Program Function
//===========================================================================
#include <stdint.h>
#include "../Flash2833x_API_Library.h"  // 假设包含类型定义和外部函数声明
#include "_Flash28335_init_test.h"
#include "_Flash28335_Program_test.h"
#include "_Flash28335_ProgVerify_test.h"
#include "_Flash28335_ProgPulse_test.h"

// 外部函数声明
//extern Uint16 Fl28335_Init_test(FLASH_ST *FlashStatus);
extern Uint16 Fl28x_EnterCmdMode_test(void);
//extern Uint16 Fl28x_ProgVerify_test(Uint32 offset, Uint16 key);
//extern void   Fl28x_ProgPulse_test(Uint32 offset, Uint16 data, Uint16 key);
extern void   Fl28x_LeaveCmdMode_test(void);

//// 回调函数指针 (位于地址 0xC0000)
//extern void (*Fl28x_Callback)(void);

#define FLASH_A_START    0x300000
#define FLASH_A_END      0x33FFFF
#define OTP_START        0x380400
#define OTP_END          0x3807FF

//#define STATUS_SUCCESS   0
#define STATUS_TIMEOUT   999
#define ERR_ADDR_RANGE   0x0C
#define ERR_VERIFY_FAIL  0x1E
#define ERR_PROG_FAIL    0x1F

#define MAX_PROG_PULSES  45  // 0x2D

Uint16 Flash28335_Program_test(Uint16* addr, Uint16 *data, Uint32 length, FLASH_ST *FlashStatus)
{
	Uint32 address = (Uint32)addr;
    Uint16 status;
    Uint16 verifyData;
    Uint16 progData;
    Uint16 pulseCount;
    Uint16 key;
    Uint32 offset;
    Uint32 endAddr;
    Uint32 count;
    Uint16 *pData;

    pData = data;
    endAddr = address + length - 1;

    // 初始化 Flash
    status = Fl28335_Init_test(FlashStatus);
    if (status != 0)
    {
        return status;
    }

    status = STATUS_TIMEOUT;  // 0x03E7 = 999

    // 检查地址范围并计算偏移量和密钥
    if (address >= FLASH_A_START && endAddr <= FLASH_A_END)
    {
        // Flash A 区域
        offset = address - FLASH_A_START;
        key = 0;
    }
    else if (address >= OTP_START && endAddr <= OTP_END)
    {
        // OTP 区域
        offset = address - OTP_START;
        key = 0x10;
    }
    else
    {
        // 地址超出范围
        return ERR_ADDR_RANGE;  // 0x0C
    }

    // 进入命令模式
    Fl28x_EnterCmdMode_test();

    // 设置 Flash 编程脉冲宽度 (FBANKWAIT = 3)
    asm(" EALLOW");
    *(volatile Uint16 *)0x0A8D = 3;
    asm(" EDIS");

    // 编程循环
    for (count = 1; count <= length; count++)
    {
        // 验证当前位置
        verifyData = Fl28x_ProgVerify_test(offset, key);

        for (pulseCount = 0; pulseCount < MAX_PROG_PULSES; pulseCount++)
        {
//            // 调用回调函数 (如果已设置)
//            if (Fl28x_Callback != 0)
//            {
//                Fl28x_Callback();
//            }

            // 检查是否有位需要从 1 变为 0 但无法改变
            if ((~verifyData & *pData) != 0)
            {
                status = ERR_PROG_FAIL;  // 0x1F
                break;
            }

            // 检查是否编程完成
            if (*pData == verifyData)
            {
                break;
            }

            // 计算需要编程的数据 (只能将 1 编程为 0)
            progData = ~verifyData | *pData;

            // 发送编程脉冲
            Fl28x_ProgPulse_test(offset, progData, key);

            // 重新验证
            verifyData = Fl28x_ProgVerify_test(offset, key);
        }

        // 最终验证
        if (*pData != verifyData)
        {
            // 编程失败
            if (status == STATUS_TIMEOUT)
            {
                status = ERR_VERIFY_FAIL;  // 0x1E
            }

            // 记录失败信息
            FlashStatus->ActualData = verifyData;
            FlashStatus->ExpectedData = *pData;

            if (key == 0)
            {
                FlashStatus->FirstFailAddr = FLASH_A_START + offset;
            }
            else
            {
                FlashStatus->FirstFailAddr = OTP_START + offset;
            }

            goto leave_cmd_mode;
        }

        // 移动到下一个字
        pData++;
        offset++;
    }

leave_cmd_mode:
    // 退出命令模式
    Fl28x_LeaveCmdMode_test();

    // 如果没有错误，返回成功
    if (status == STATUS_TIMEOUT)
    {
        status = STATUS_SUCCESS;
    }

    return status;
}

//===========================================================================
// End of file.
//===========================================================================
