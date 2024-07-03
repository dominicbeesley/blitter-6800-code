AS=vasm6800_std_win32.exe
ASFLAGS=-m6800 

BUILD=build
HOSTFS=~/hostfs/test6800
TARGETS=first_mos
TARGETS2=$(addsuffix .rom, $(addprefix $(BUILD)/, $(TARGETS)))

all:: $(TARGETS2)

MKDIR := $(shell if [[ ! -d $(BUILD) ]]; then mkdir $(BUILD); fi)

$(BUILD)/first_mos.rom: first_mos.asm
	$(AS) $(ASFLAGS) -Fbin -o $@ -L $(basename $@).lst $<
	cp $@ $(HOSTFS)
	cp first_mos.rom.inf $(HOSTFS)

clean::
	-rm $(TARGETS2) 
	-rm $(BUILD)/*.lst
