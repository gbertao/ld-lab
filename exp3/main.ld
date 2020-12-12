/* Create memory region */
MEMORY
{
  ram(rwx) : ORIGIN = 0x8000000, LENGTH = 256
  flash(rw) : ORIGIN = 0x8000200, LENGTH = 256
}

/* Append section to memory region */
SECTIONS
{
  .text : {*(.text)}>ram
  .data : {*(.Giovanni)}>flash AT >ram
}
