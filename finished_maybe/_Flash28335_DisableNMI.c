unsigned int Fl28x_DisableNMI(void)
{
    unsigned int temp;
    
    // 读取并保存原值
    temp = *(volatile unsigned int *)0x7077;
    
    // 清除bit 0以禁用NMI
    *(volatile unsigned int *)0x7077 = temp & 0xFFFE;
    
    // 返回原值供后续恢复使用
    return temp;
}