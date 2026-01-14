// 外部初始化函数声明（地址 0x00953b）
extern unsigned int Fl28335_Init(void);

// 可能的回调函数指针（地址 0x0300）
typedef void (*CallbackFunc)(void);
extern CallbackFunc g_callback;  // 全局回调函数指针

/**
 * Flash 验证函数
 * @param flash_addr Flash 起始地址
 * @param data       要比对的数据缓冲区
 * @param length     验证长度
 * @param error      错误信息输出结构体指针
 * @return           0-成功，0x28-验证失败，其他-初始化失败
 */
unsigned int Flash28335_Verify(unsigned char *flash_addr, 
                                unsigned char *data, 
                                unsigned long length, 
                                Flash_ST *error)
{
    unsigned long i;
    unsigned int init_result;
    
    // 调用初始化函数
    init_result = Fl28335_Init(error);
    if (init_result != 0) {
        return init_result;  // 初始化失败，返回错误码
    }
    
    // 如果长度为0，直接返回成功
    if (length == 0) {
        return 0;
    }
    
    // 如果回调函数指针不为空，则调用
    if (g_callback != NULL) {
        g_callback();
    }
    
    // 逐字节验证 Flash 内容
    for (i = 0; i < length; i++) {
        if (data[i] != flash_addr[i]) {
            // 发现不匹配，记录错误信息
            error->address = (unsigned long)(&flash_addr[i]);
            error->expected = data[i];
            error->actual = flash_addr[i];
            return 0x28;  // 返回验证失败错误码
        }
    }
    
    return 0;  // 验证成功
}