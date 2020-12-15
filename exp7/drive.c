#include <sys/mman.h>   // Needed for mprotect
#include <unistd.h>     // Needed for sysconf
#include <errno.h>      // Needed for errno
#include <string.h>     // Needed for memcpy

extern unsigned char main_start[], main_end[];

extern int func();

int main(void) {
    unsigned char code[] = {0xb8, 0x0a, 0x00, 0x00, 0x00, 0xc3, 0x66, 0x90};

    // Align the start address with the page's size
    // It's a requirement for mprotect to correctly work. Although it could return errno(22)
    const long  page = sysconf(_SC_PAGESIZE);
    void       *start = (char *)main_start - ((long)main_start % page);
    size_t      bytes = (main_end - main_start) + (size_t)((long)main_start % page);

    // Disable write protection on the memory
    if(mprotect(start, bytes, PROT_READ | PROT_WRITE | PROT_EXEC))
        return errno;

    // Re-write the function copying the "return 10"
    memcpy(main_start, code, main_end - main_start);

    return func();
}
