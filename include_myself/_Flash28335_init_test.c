// Strictly equivalent C translation of the provided _Fl28335_Init ASM
#include <stdint.h>
#include "_Flash28335_init_test.h"

extern void Fl28x_WatchDogDisable_test(void);

/* If your project already defines these types elsewhere, remove these typedefs. */
#ifndef DSP28_DATA_TYPES
#define DSP28_DATA_TYPES
typedef unsigned char 		uint8_t;
typedef int                 int16;
typedef long                int32;
typedef long long           int64;
typedef unsigned int        Uint16;
typedef unsigned long       Uint32;
typedef unsigned long long  Uint64;
typedef float               float32;
typedef long double         float64;
#endif

#ifndef Flash_ST_test
#define Flash_ST_test
typedef struct {
    Uint32  FirstFailAddr;
    Uint16  ExpectedData;
    Uint16  ActualData;
} FLASH_ST;
#endif

/* Memory-mapped registers / addresses used by the ASM */
#define REG16_3FFFB9   (*(volatile Uint16*)0x3FFFB9u)  /* *+XAR4[0] compare with 0xFFFE */
#define REG8_0882      (*(volatile uint8_t*)0x0882u)   /* MOV AL, *(0:0x0882) */
#define REG8_380090    (*(volatile uint8_t*)0x380090u) /* MOV AL, *+XAR4[0] at 0x380090 */
#define REG16_0A88     (*(volatile Uint16*)0x0A88u)    /* MOV AL, *(0:0x0a88) (word read) */

/* Changed return type from unsigned char to Uint16 as requested */
Uint16 Fl28335_Init_test(FLASH_ST* pInitData)
{
    /* LCR 0x009579 */
    Fl28x_WatchDogDisable_test();

    /* if (pInitData != NULL) { clear fields } */
    if (pInitData != (FLASH_ST*)0)
    {
        pInitData->FirstFailAddr = 0u;
        pInitData->ExpectedData = 0u;
        pInitData->ActualData   = 0u;
    }

    /* if (*(uint16_t*)0x3FFFB9 != 0xFFFE) return 0x0E; */
    if (REG16_3FFFB9 != (Uint16)0xFFFEu)
    {
        return (Uint16)0x000Eu;
    }

    /* AL = *(0:0x0882) */
    uint8_t al = REG8_0882;

    /*
      CMPB AL, #0xFA
      SBF 10, EQ   -> if (al == 0xFA) jump forward to $C$L4 (check 0x0A88)
    */
    if (al != (uint8_t)0xFAu)
    {
        /*
          CMPB AL, #0xEF
          SBF 6, NEQ  -> if (al != 0xEF) jump to $C$L3 and return 0x0D
        */
        if (al != (uint8_t)0xEFu)
        {
            /* $C$L3 */
            return (Uint16)0x000Du;
        }

        /*
          Here: al == 0xEF
          XAR4 = 0x380090; AL = *XAR4
          CMPB AL, #0xEF
          SBF 3, EQ  -> if (*0x380090 == 0xEF) jump to $C$L4 else return 0x0D
        */
        if (REG8_380090 != (uint8_t)0xEFu)
        {
            /* fall into $C$L3 */
            return (Uint16)0x000Du;
        }
        /* else jump to $C$L4 */
    }
    /* else: al == 0xFA, jump to $C$L4 */

    /*
      $C$L4:
        MOV AL, *(0:0x0a88)
        SBF 3, EQ  -> if (0x0A88 == 0) jump to $C$L5 else return 0x00
      The code:
        if (REG16_0A88 == 0) return 0x0A; else return 0x00;
    */
    if (REG16_0A88 == (Uint16)0u)
    {
        /* $C$L5 */
        return (Uint16)0x000Au;
    }
    else
    {
        return (Uint16)0x0000u;
    }
}
