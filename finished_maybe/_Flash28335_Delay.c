void Fl28x_Delay(unsigned long delay_value)
{
    //起始地址：0000958d

    unsigned long acc;
    
    // MOVL XT, ACC 和 QMPYL ACC, XT, @0x2
    // 这相当于 ACC = delay_value * (*0x2)
    // 假设地址0x2处的值为某个系数,这里简化为乘以某个值
    // 根据QMPYL指令,这是一个乘法操作
    // 此处需在之后重新查看相关手册以得到@0x2的信息
    acc = delay_value * delay_value;  // XT存的是delay_value,然后与@0x2相乘

    // SUBB ACC, #52
    acc = acc - 52;
    
    // BF 6, LT - 如果小于0则跳过SFR指令
    if (acc >= 0) {
        // SFR ACC, 4 - 算术右移4位(相当于除以16)
        acc = acc >> 4;
    }
    
    // 延迟循环
    while (acc > 0) {
        acc--;
    }
    return;
}