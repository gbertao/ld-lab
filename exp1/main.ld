OUTPUT_FORMAT("elf64-x86-64", "elf64-x86-64", "elf64-x86-64")
OUTPUT_ARCH(i386:x86-64)
ENTRY(_start)

SECTIONS
{
  .text : {
    _start = .;
    /* mov $0x01, %eax */
    BYTE(0xb8);
    BYTE(0x01);
    BYTE(0x0);
    BYTE(0x0);
    BYTE(0x0);

    /* mov $0xa, %ebx */
    BYTE(0xbb);
    BYTE(0x0a);
    BYTE(0x0);
    BYTE(0x0);
    BYTE(0x0);

    /* halt */
    BYTE(0xcd);
    BYTE(0x80);
  }
}
