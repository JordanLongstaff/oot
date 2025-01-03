#include "ultra64/asm.h"

.text

#ifdef __sgi
#define IPL_SYMBOL(name, address, size) \
    ABS(name, address)
#else
#define IPL_SYMBOL(name, address, sz) \
    ABS(name, address)               ;\
    .type name, @object              ;\
    .size name, sz
#endif


IPL_SYMBOL(leoBootID,      0x800001A0, 4)
IPL_SYMBOL(osTvType,       0x80000300, 4)
IPL_SYMBOL(osRomType,      0x80000304, 4)
IPL_SYMBOL(osRomBase,      0x80000308, 4)
IPL_SYMBOL(osResetType,    0x8000030C, 4)
IPL_SYMBOL(osCicId,        0x80000310, 4)
IPL_SYMBOL(osVersion,      0x80000314, 4)
IPL_SYMBOL(osMemSize,      0x80000318, 4)
IPL_SYMBOL(osAppNMIBuffer, 0x8000031C, 0x40)


.repeat 0x60/4
    NOP
.endr
