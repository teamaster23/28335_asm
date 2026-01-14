void Fl28x_MaskAll(void)
{
    // 起始地址：0000925d

    asm("EALLOW"); //原汇编代码中不存在，但可能有用


    // 将所有相关寄存器设置为0xFFFF（全1）
    *(volatile unsigned int *)0x0a98 = 0xFFFF;
    *(volatile unsigned int *)0x0a99 = 0xFFFF;
    *(volatile unsigned int *)0x0a9a = 0xFFFF;
    *(volatile unsigned int *)0x0a9b = 0xFFFF;

    asm("EDIS"); //原汇编代码中不存在，但可能有用
    
    return;
}   