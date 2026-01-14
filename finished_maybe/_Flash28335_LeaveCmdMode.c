void Fl28x_LeaveCmdMode(void)
{
    // 起始地址：000091e4

    asm("EALLOW");
    
    // 1. 将Flash寄存器置于睡眠模式
    Fl28x_FlashRegSleep();
    
    // 2. 清零某个Flash控制寄存器
    *(volatile unsigned int *)0x0a81 = 0x0;
    
    // 3. 翻转Flash控制寄存器的bit 2
    unsigned int temp = *(volatile unsigned int *)0x0a90;
    temp ^= 0x4;  // XOR操作，翻转bit 2
    *(volatile unsigned int *)0x0a90 = temp;
    
    asm("EDIS");
    
    return;
}