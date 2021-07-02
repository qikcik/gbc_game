#include <gb/gb.h>

inline void bank_init(void)
{
    ENABLE_RAM_MBC1;
    SWITCH_4_32_MODE_MBC1;
}