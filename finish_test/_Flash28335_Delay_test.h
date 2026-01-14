#ifndef _FLASH28335_DELAY_TEST_H_
#define _FLASH28335_DELAY_TEST_H_

#include <stdint.h>

/**
 * @brief F28335 延时测试函数（C模拟汇编延时逻辑）
 * @param acc_in 输入累加器值（int32_t）
 * @retval 无（void）
 */
void Fl28x_Delay_test(int32_t acc_in);

#endif /* _FLASH28335_DELAY_TEST_H_ */