/* Print things added on the buffer by ld */

   .text
   .global _start

_start:
   /* print msg */
   mov   $4, %eax
   mov   $1, %ebx
   mov   $msg, %ecx
   mov   $9, %edx    /* 9 is needed to print the bytes on ld */
   int   $0x80

   /* exit 0 */
   mov   $0x01, %eax
   mov   $0, %ebx
   int   $0x80

   .data
msg:
   .ascii "Hi Gio\n"
