AS=vasm6800_std
ASFLAGS=-m6800 
LD=vlink
LDFLAGS=-m -nowarn=22 -Cvbcc -T./vlink.cmd -nostdlib 

BUILD=build
TARGETS=test-1
HOSTFS=~/hostfs/test6800

test1_OBJS=test-1.o

test1_OBJS_B=$(addprefix $(BUILD)/, $(test1_OBJS))

TARGETS2=$(addsuffix .bin, $(addprefix $(BUILD)/, $(TARGETS)))

X := $(shell mkdir $(BUILD))

all:: $(TARGETS2)

$(BUILD)/%.o: %.asm
	$(AS) $(ASFLAGS) -Fvobj -o $@ -L $(basename $@).lst $<


$(BUILD)/test-1.ihx: $(test1_OBJS_B)
	$(LD) $(LDFLAGS) -b ihex -M$@.map -o $@ -symfile $(basename $@).sym -symfmt "DEF %s 0x%08llx" $(filter %.o, $^) 
	
$(BUILD)/test-1.bin: $(BUILD)/test-1.ihx
	hex2bin 0xE00 $< $@
	cp $@ $(HOSTFS)
	cp test-1.bin.inf $(HOSTFS)

clean::
	-rm $(test1_OBJS_B)
	-rm $(TARGETS2) 
	-rm $(BUILD)/*.lst
	-rm $(BUILD)/*.sym
	-rm $(BUILD)/*.map
