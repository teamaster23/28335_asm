void Fl28x_OpenPulse(unsigned int pulse_width)
{
    // 起始地址：00009235
    asm("EALLOW");
    
    // 配置Flash控制寄存器
    *(volatile unsigned int *)0x0a90 = 0x0a0f;
    
    // 将pulse_width右移2位后写入0x0a94寄存器
    *(volatile unsigned int *)0x0a94 = (pulse_width >> 2) & 0xFF;
    
    // 将pulse_width的低2位保存到AL寄存器（但没有使用）
    unsigned char low_bits = pulse_width & 0x3;
    
    
    // 注意：这里原汇编代码中缺少EDIS
    asm("EDIS");
    
}