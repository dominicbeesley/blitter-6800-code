
MEMORY
{
 zero : org = 0x00 , len = 0x80
 ram: org = 0x0E00, len = 0x2200
}

SECTIONS
{
  zpage (NOLOAD) : {
    *(ZERO)    
    } >zero

  ram : {
    *(.text)
  } >ram

}
