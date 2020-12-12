/* Return 10 when called */

   .global _start

_start:
   mov   $0x01, %eax
   mov   $0xa, %ebx
   int   $0x80
