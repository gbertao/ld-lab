/* Create a WX memory region */
MEMORY
{
  ram(wx) : ORIGIN = 0x00, LENGTH = 256
}

/* Append section to memory region */
SECTIONS
{
  .test 0 : {
    main_start = .;
    main.o(.text)
    main_end = .;
  } > ram
}
