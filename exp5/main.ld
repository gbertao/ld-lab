/* Create memory region */
MEMORY
{
  ram(wx) : ORIGIN = 0x8000000, LENGTH = 256
  rom(r) : ORIGIN = 0x8000200, LENGTH = 256
}

/* Append section to memory region */
SECTIONS
{
  .text :
  {
    main_2.o(.text)
    main_1.o(.the_end)
  }>ram
  .data :
  {
    main_1.o(.data)
  }>rom
}
