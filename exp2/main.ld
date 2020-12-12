/* Create memory region */
MEMORY
{
  ram(rwx) : ORIGIN = 0x80000000, LENGTH = 1024K
}

/* Append section to memory region */
SECTIONS
{
  .text : {*(.text)}>ram
}
