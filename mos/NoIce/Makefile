AS=vasm6800_std
ASFLAGS=-m6800 
LD=vlink
LDFLAGS=-m -Mmapfile -b rawbin1 -nowarn=22 -Cvbcc -T./vlink.cmd -nostdlib 

BUILD=build
TARGETS=mon6800
HOSTFS=~/hostfs/test6800

mon6800_OBJS=mon6800.o

mon6800_OBJS_B=$(addprefix $(BUILD)/, $(mon6800_OBJS))

TARGETS2=$(addsuffix .rom, $(addprefix $(BUILD)/, $(TARGETS)))

X := $(shell mkdir $(BUILD))

all:: $(TARGETS2)

$(BUILD)/%.o: %.asm
	$(AS) $(ASFLAGS) -Fvobj -o $@ -L $(basename $@).lst $<


$(BUILD)/mon6800.rom: $(mon6800_OBJS_B)
	$(LD) $(LDFLAGS) -M$@.map -o $@ -symfile $(basename $@).sym -symfmt "DEF %s 0x%08llx" $(filter %.o, $^) 
	cp $@ $(HOSTFS)
	cp mon6800.rom.inf $(HOSTFS)

clean::
	-rm $(mon6800_OBJS_B)
	-rm $(TARGETS2) 
	-rm $(BUILD)/*.lst
