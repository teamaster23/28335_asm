#include <stdint.h>
#include "_Flash28335_DisableNMI_test.h"
//#include "_Flash28335_OpenPulse_test.h"
#include "_Flash28335_MaskAll_test.h"
//#include "_Flash28335_ClosePulse_test.h"
#include "_Flash28335_ProgPulse_test.h"


extern void Fl28x_ClosePulse_test(void);
extern unsigned int Fl28x_OpenPulse_test(unsigned int param);
extern void Fl28x_WatchDogDisable_test();
extern void Fl28x_Delay_test();
extern uint16_t DSP28x_DisableInt(void);
extern void DSP28x_RestoreInt(uint16_t Stat0);


/**
 * @brief F28335 Flash编程脉冲函数
 * @param acc 累加器值（32位），用于OpenPulse_test
 * @param ar4 AR4寄存器值（16位），用于控制寄存器配置
 * @param ar5 AR5寄存器值（16位），用于数据写入
 * @note 此函数执行Flash编程的关键时序控制
 */
void Fl28x_ProgPulse_test(uint32_t acc, uint16_t ar4, uint16_t ar5)
{
    uint16_t nmi_status;      // 保存NMI状态
    uint16_t int_status;      // 保存中断状态
    uint16_t pulse_status;    // 保存脉冲状态
    
    // 步骤1: 禁用NMI和中断，保存状态
    nmi_status = Fl28x_DisableNMI_test();
    int_status = DSP28x_DisableInt();
    
    // 步骤2: 打开编程脉冲
    Fl28x_OpenPulse_test(acc);
    
    // 步骤3: 屏蔽所有中断
    Fl28x_MaskAll_test();
    
    // 步骤4: 写入数据到Flash缓冲区（基地址0x0a98）
    *((volatile uint16_t *)(0x0a98 + pulse_status)) = ar5;
    
    // 步骤5: 配置Flash控制寄存器
    // 设置FCTL寄存器 (0x0a90): ar4 | 0x0a0b
    *((volatile uint16_t *)0x0a90) = ar4 | 0x0a0b;
    
    // 设置FSTAT寄存器 (0x0a91): 0x02
    *((volatile uint16_t *)0x0a91) = 0x02;
    
    // 步骤6: 发送Flash编程命令
    // 命令寄存器1 (0x0a89): 0x09 (编程命令)
    *((volatile uint16_t *)0x0a89) = 0x09;
    
    // 命令寄存器2 (0x0a8b): 0x06 (编程使能)
    *((volatile uint16_t *)0x0a8b) = 0x06;
    
    // 步骤7: 编程脉冲时序控制
    // 第一次延时: 6553个周期 (编程建立时间)
    Fl28x_Delay_test(6553);
    
    // 修改控制位: ar4 | 0x020b (改变编程模式)
    *((volatile uint16_t *)0x0a90) = ar4 | 0x020b;
    
    // 第二次延时: 0x40000 个周期 (编程保持时间)
    Fl28x_Delay_test(0x40000);
    
    // 恢复控制位: ar4 | 0x0a0b
    *((volatile uint16_t *)0x0a90) = ar4 | 0x0a0b;
    
    // 第三次延时: 0x10000 个周期 (编程恢复时间)
    Fl28x_Delay_test(0x10000);
    
    // 步骤8: 关闭编程脉冲
    Fl28x_ClosePulse_test();
    
    // 步骤9: 恢复中断状态
    DSP28x_RestoreInt(int_status);
    
    // 步骤10: 恢复NMI寄存器 (写入0x7077)
    *((volatile uint16_t *)0x7077) = nmi_status;
}