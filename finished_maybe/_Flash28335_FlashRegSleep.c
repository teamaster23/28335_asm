void Fl28x_FlashRegSleep(void)
{
    //起始地址：00009216

    // 将大部分Flash寄存器清零
    *(volatile unsigned int *)0x0a91 = 0x0;
    *(volatile unsigned int *)0x0a94 = 0x0;
    *(volatile unsigned int *)0x0a98 = 0x0;
    *(volatile unsigned int *)0x0a99 = 0x0;
    *(volatile unsigned int *)0x0a9a = 0x0;
    *(volatile unsigned int *)0x0a9b = 0x0;
    *(volatile unsigned int *)0x0a92 = 0x0;
    *(volatile unsigned int *)0x0a89 = 0x0;
    *(volatile unsigned int *)0x0a8a = 0x0;
    *(volatile unsigned int *)0x0a8b = 0x0;
    *(volatile unsigned int *)0x0a8c = 0x0;
    
    // 设置特定值到时序寄存器
    *(volatile unsigned int *)0x0a88 = 0x0a;
    
    // 设置Flash控制寄存器到睡眠模式
    *(volatile unsigned int *)0x0a90 = 0x0c0c;
    
    return;
}                               