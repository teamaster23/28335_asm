unsigned char Fl28335_Init(FLASH_ST *flash_status)
{
    unsigned char result;
    
    // 1. 禁用看门狗
    Fl28x_WatchDogDisable();
    
    // 2. 如果传入的指针不为NULL，初始化结构体
    if (flash_status != NULL) {
        flash_status->FirstFailAddr = 0;     // 偏移0
        flash_status->FailCount = 0;          // 偏移2
        flash_status->ErrorCode = 0;          // 偏移3
    }
    
    // 3. 检查芯片ID/版本
    if (*(volatile unsigned int *)0x3FFFB9 == 0xFFFE) {
        // 不支持的芯片版本
        return 0x0E;  // 错误码：不支持的设备
    }
    
    // 4. 检查CSM密码状态
    unsigned char csmscr = *(volatile unsigned char *)0x0882;
    
    if (csmscr == 0xFA) {
        // CSM已解锁，进行进一步检查
        unsigned int csmkey = *(volatile unsigned int *)0x380090;
        if (csmkey != 0xEF) {
            return 0x0D;  // 错误码：CSM密钥错误
        }
    } else if (csmscr != 0xEF) {
        // CSM状态异常
        return 0x0D;  // 错误码：CSM状态错误
    }
    
    // 5. 检查Flash选项寄存器
    unsigned int fopt = *(volatile unsigned int *)0x0A88;
    if (fopt == 0) {
        return 0x00;  // 错误：Flash选项未配置
    }
    
    // 6. 初始化成功
    return 0x0A;  // 成功码
}