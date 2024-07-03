AS=as6800
ASOPT=-l -o -s -x -a -b -t
LD=aslink
LDOPT=-i -o -j

BUILD=build
TARG=test-1
OBJS=test-1
HOSTFS=~/hostfs/test6800

XXX:=$(shell if [[ ! -d $(BUILD) ]]; then mkdir $(BUILD); fi)

all:: $(BUILD)/$(TARG).bin
	cp $(BUILD)/$(TARG).bin $(HOSTFS)
	cp $(TARG).bin.inf $(HOSTFS)

$(BUILD)/%.rel $(BUILD)/%.lst $(BUILD)/%.sym: %.asm
	$(AS) $(ASOPT) $(basename $@) $<

$(BUILD)/$(TARG).ihx: $(addprefix $(BUILD)/, $(addsuffix .rel, $(OBJS)))
	$(LD) $(LDOPT) $@ $<

$(BUILD)/$(TARG).bin: $(BUILD)/$(TARG).ihx
	hex2bin 0xE00 $< $@

