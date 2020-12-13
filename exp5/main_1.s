/* Disordered assembly */
   .section .the_end
   mov   a, %ebx
   int   $0x80

   .data
a:
   .long 10
