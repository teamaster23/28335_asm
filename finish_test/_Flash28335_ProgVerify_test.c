#include <stdint.h>
#include "_Flash28335_DisableNMI_test.h"
//#include "_Flash28335_OpenPulse_test.h"
//#include "_Flash28335_ClosePulse_test.h"
#include "_Flash28335_ProgVerify_test.h"

extern void Fl28x_ClosePulse_test(void);
extern unsigned int Fl28x_OpenPulse_test(unsigned int param);
extern void Fl28x_WatchDogDisable_test();
extern void Fl28x_Delay_test();

extern uint16_t DSP28x_DisableInt(void);
extern void DSP28x_RestoreInt(uint16_t Stat0);

uint16_t Fl28x_ProgVerify_test(uint16_t sector, uint32_t addr)
{
    uint16_t nmi_status;      // SP-7
    uint16_t int_status;      // SP-6
    uint16_t pulse_result;    // SP-4
    uint16_t read_data;       // SP-5
    volatile uint16_t *flash_data_base = (volatile uint16_t *)0x000a9c;
    
    // ========== 第1步：保护现场 ==========
    nmi_status = Fl28x_DisableNMI_test();
    int_status = DSP28x_DisableInt();
    
    // ========== 第2步：打开Flash泵 ==========
    pulse_result = Fl28x_OpenPulse_test(addr);
    
    // ========== 第3步：配置读取模式 ==========
    *(volatile uint16_t *)0x0a90 = sector | 0x0a0b;
    *(volatile uint16_t *)0x0a91 = 0x01;
    *(volatile uint16_t *)0x0a89 = 0x04;
    Fl28x_Delay_test(6553);
    
    // ========== 第4步：启动读取操作 ==========
    *(volatile uint16_t *)0x0a90 = sector | 0x020b;
    Fl28x_Delay_test(0x16666);  // 91750 cycles
    
    // ========== 第5步：读取数据 ==========
    read_data = flash_data_base[pulse_result];
    
    // ========== 第6步：恢复默认模式 ==========
    *(volatile uint16_t *)0x0a90 = sector | 0x0a0b;
    Fl28x_Delay_test(0x00010000);  // ⚠️ 修正：65536 cycles (AH=1, AL=0)
    
    // ========== 第7步：关闭Flash泵 ==========
    Fl28x_ClosePulse_test();
    
    // ========== 第8步：恢复现场 ==========
    DSP28x_RestoreInt(int_status);
    *(volatile uint16_t *)0x7077 = nmi_status;
    
    return read_data;
}
