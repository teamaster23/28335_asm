#include <stdint.h>
#include "_Flash28335_DisableNMI_test.h"
#include "_Flash28335_DisableInt_test.h"
#include "_Flash28335_OpenPulse_test.h"
#include "_Flash28335_Delay_test.h"
#include "_Flash28335_RestoreInt_test.h"
#include "_Flash28335_ClosePulse_test.h"
#include "_Flash28335_ProgVerify_test.h"

/**
 * @brief Flash编程验证函数
 * @param sector 扇区选择 (AR4参数)
 * @param addr Flash地址 (ACC参数，32位)
 * @return 读取的验证数据
 */
uint16_t Fl28x_ProgVerify_test(uint16_t sector, uint32_t addr)
{
    uint16_t nmi_status;      // SP-7: 保存NMI状态
    uint16_t int_status;      // SP-6: 保存中断状态
    uint16_t pulse_result;    // SP-4: OpenPulse结果
    uint16_t read_data;       // SP-5: 读取的数据
    volatile uint16_t *flash_data_base = (volatile uint16_t *)0x0a9c;
    
    // ========== 第1步：保护现场 ==========
    nmi_status = Fl28x_DisableNMI_test();    // 禁用NMI
    int_status = Fl28x_DisableInt_test();    // 禁用中断
    
    // ========== 第2步：打开Flash泵 ==========
    pulse_result = Fl28x_OpenPulse_test(addr);
    
    // ========== 第3步：配置读取模式 ==========
    // 配置Flash控制寄存器 (读取模式)
    *(volatile uint16_t *)0x0a90 = sector | 0x0a0b;
    
    // 设置读取命令
    *(volatile uint16_t *)0x0a91 = 0x01;  // READ命令
    
    // 设置状态寄存器
    *(volatile uint16_t *)0x0a89 = 0x04;
    
    // 延时等待配置生效
    Fl28x_Delay_test(6553);
    
    // ========== 第4步：启动读取操作 ==========
    // 更新控制寄存器
    *(volatile uint16_t *)0x0a90 = sector | 0x020b;
    
    // 长延时等待读取完成
    Fl28x_Delay_test(0x16666);  // ACC = 0x00016666 = 91750
    
    // ========== 第5步：读取数据 ==========
    // 从Flash数据区读取 (基地址 + pulse_result偏移)
    read_data = flash_data_base[pulse_result];
    
    // ========== 第6步：恢复默认模式 ==========
    *(volatile uint16_t *)0x0a90 = sector | 0x0a0b;
    
    // 延时
    Fl28x_Delay_test(0x10000);  // ACC = 0x00010000 = 65536
    
    // ========== 第7步：关闭Flash泵 ==========
    Fl28x_ClosePulse_test();
    
    // ========== 第8步：恢复现场 ==========
    Fl28x_RestoreInt_test(int_status);           // 恢复中断状态
    *(volatile uint16_t *)0x7077 = nmi_status;  // 恢复NMI状态
    
    // ========== 第9步：返回读取的数据 ==========
    return read_data;
}