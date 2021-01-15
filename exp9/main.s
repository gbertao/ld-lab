   .global _start
   .text
_start:
   mov $0x1, %eax
   mov $0xa, %ebx
   int $0x80
