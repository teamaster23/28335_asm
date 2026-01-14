void Fl28x_ClosePulse(void)
{
    // 起始地址：00009246
    
    asm("EALLOW");  // 使能对受保护寄存器的写访问
    
    // 配置一系列寄存器
    *(volatile unsigned int *)0x0a91 = 0x0;
    *(volatile unsigned int *)0x0a90 = 0x0a0f;
    *(volatile unsigned int *)0x0a89 = 0x0;
    *(volatile unsigned int *)0x0a8a = 0x0;
    *(volatile unsigned int *)0x0a8b = 0x0;
    *(volatile unsigned int *)0x0a8c = 0x0;
    
    // 调用延迟函数
    Fl28x_Delay(6553);  // 0x1999 = 6553
    
    asm("EDIS");   // 禁止对受保护寄存器的写访问
    
    return;
}