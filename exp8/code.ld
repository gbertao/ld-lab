SECTIONS
{
  .code : {
    code_start = .;
    main.img.o
    code_end = .;
  }
}
