AS=vasm6800_std
ASFLAGS=-m6800 

BUILD=build
HOSTFS=~/hostfs/test6800
TARGETS=first_mos
TARGETS2=$(addsuffix .rom, $(addprefix $(BUILD)/, $(TARGETS)))

all:: $(TARGETS2)

MKDIR := $(shell mkdir -p $(BUILD))

$(BUILD)/first_mos.rom: first_mos.asm splash.mo7
	$(AS) $(ASFLAGS) -Fbin -o $@ -L $(basename $@).lst $<
	cp $@ $(HOSTFS)
	cp first_mos.rom.inf $(HOSTFS)

clean::
	-rm $(TARGETS2) 
	-rm $(BUILD)/*.lst
