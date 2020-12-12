/* Return 10 when called */

   .text
   .global _start

_start:
   mov   $0x01, %eax
   mov   a, %ebx
   int   $0x80

   .data
a:
   .long 10
