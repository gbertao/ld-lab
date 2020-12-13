/* Change memory */

   .text
   .global _start

_start:
   /* a = 3 */
   mov   $a, %ecx
   mov   $0x03, %eax
   mov   %eax, (%ecx)

   /* return a */
   mov   $0x01, %eax
   mov   a, %ebx
   int   $0x80

   .data
a:
   .long 10
