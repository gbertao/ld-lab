#include <stddef.h>
#include <stdlib.h>

void
__attribute__((section(".start")))
_start(void) {
    asm("mov   $0x01, %eax;"
        "mov   $0xa, %ebx;"
        "int   $0x80;"
    );
    return;
}
