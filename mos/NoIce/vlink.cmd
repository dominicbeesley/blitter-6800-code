
MEMORY
{
 zero : org = 0x00 , len = 0x80
 ram: org = 0x0A00, len = 0x0100
 rom: org = 0xC000, len = 0x4000
}

SECTIONS
{
  zpage (NOLOAD) : {
    *(zpage) *(zp1) *(zp2)    
    } >zero

  ram (NOLOAD) : {
    *(RAM)
  } >ram

  code : {
    *(CODE)

    . = 0xFFF8;

    *(HARD_VECS)
  } >rom
}
