#ifndef FL28X_WATCHDOG_TEST
#define FL28X_WATCHDOG_TEST

#include <stdint.h>

/**
 * @brief  禁用28x系列DSP的看门狗定时器
 * @note   操作地址0x7029（看门狗控制寄存器），设置bit6、bit5、bit3完成禁用
 * @param  无
 * @retval 无
 */
void Fl28x_WatchDogDisable_test(void);

#endif // FL28X_WATCHDOG_H
