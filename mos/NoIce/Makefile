AS=as6800
ASOPT=-l -o -s
LD=aslink
LDOPT=-i -o

BUILD=build
TARG=mon6800
OBJS=mon6800
HOSTFS=~/hostfs/test6800

all:: $(BUILD)/$(TARG).rom
	cp $(BUILD)/$(TARG).rom $(HOSTFS)
	cp $(TARG).rom.inf $(HOSTFS)

$(BUILD)/%.rel $(BUILD)/%.lst $(BUILD)/%.sym: %.asm
	$(AS) $(ASOPT) $(basename $@) $<

$(BUILD)/$(TARG).ihx: $(addprefix $(BUILD)/, $(addsuffix .rel, $(OBJS)))
	$(LD) $(LDOPT) $@ $<

$(BUILD)/$(TARG).rom: $(BUILD)/$(TARG).ihx
	hex2bin 0xC000 $< $@

