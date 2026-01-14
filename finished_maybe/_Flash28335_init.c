
// 硬件寄存器地址定义
#define REG_ADDR_3FFFB9 (*(volatile unsigned short*)0x3FFFB9)
#define REG_ADDR_0882   (*(volatile unsigned char*)0x0882)
#define REG_ADDR_380090 (*(volatile unsigned char*)0x380090)
#define REG_ADDR_0A88   (*(volatile unsigned short*)0x0A88)

// 假设的看门狗禁用函数
void Fl28x_WatchDogDisable(void);

// _Fl28335_Init函数的C语言实现
unsigned char Fl28335_Init(Flash_ST* pInitData)
{
    // 起始地址：0000953b



    // 保存寄存器到栈
    // aabd: MOVL *SP++, XAR2
    // 86a4: MOVL XAR2, XAR4 (将参数保存到XAR2)
    
    // 调用WatchDogDisable函数
    // 7640 9579: LCR 0x009579
    Fl28x_WatchDogDisable();
    
    // 检查传入的指针是否为空
    // aaa9: MOVL ACC, XAR2
    // ec08: SBF 8, EQ (如果为NULL则跳转8条指令)
    if (pInitData != NULL)
    {
        // 初始化结构体字段
        // 0200: MOVB ACC, #0
        // 1ec4: MOVL *+XAR4[0], ACC (field0 = 0)
        // 2bd4: MOV *+XAR4[2], #0 (field2 = 0)
        // 2bdc: MOV *+XAR4[3], #0 (field3 = 0)
        pInitData->field0 = 0;
        pInitData->field2 = 0;
        pInitData->field3 = 0;
    }
    
    // 检查0x3fffb9地址的值是否为0xFFFE
    // 8f3f ffb9: MOVL XAR4, #0x3fffb9
    // 1bc4: CMP *+XAR4[0], #-2 (0xFFFE)
    // ec03: SBF 3, EQ (如果相等则跳转3条指令)
    if (REG_ADDR_3FFFB9 != 0xFFFE)
    {
        // 9a0e: MOVB AL, #0xe
        // 6f14: SB 20, UNC (跳转到返回处)
        return 0x0E;
    }
    
    // 检查0x0882地址的值
    // f5a9: MOV AL, *(0:0x0882)
    unsigned char al_value = REG_ADDR_0882;
    
    // 52fa: CMPB AL, #0xfa
    // ec0a: SBF 10, EQ (如果等于0xFA则跳转10条指令)
    if (al_value == 0xFA)
    {
        return 0x0E;
    }
    
    // 52ef: CMPB AL, #0xef
    // ed06: SBF 6, NEQ (如果不等于0xEF则跳转6条指令)
    if (al_value != 0xEF)
    {
        // 检查0x0a88地址的值
        // f5a9: MOV AL, *(0:0x0a88)
        // ec03: SBF 3, EQ (如果为0则跳转3条指令)
        if (REG_ADDR_0A88 == 0)
        {
            // 9a00: MOVB AL, #0x0
            return 0x00;
        }
        else
        {
            // 9a0a: MOVB AL, #0xa
            return 0x0A;
        }
    }
    
    // 检查0x380090地址的值
    // 8f38 0090: MOVL XAR4, #0x380090
    // 92c4: MOV AL, *+XAR4[0]
    // 52ef: CMPB AL, #0xef
    // ec03: SBF 3, EQ (如果等于0xEF则跳转3条指令)
    if (REG_ADDR_380090 == 0xEF)
    {
        // 跳转到检查0x0a88
        if (REG_ADDR_0A88 == 0)
        {
            return 0x00;
        }
        else
        {
            return 0x0A;
        }
    }
    else
    {
        // 9a0d: MOVB AL, #0xd
        return 0x0D;
    }
    
    // 函数返回
    // 86be: MOVL XAR2, *--SP (恢复寄存器)
    // 0006: LRETR
}