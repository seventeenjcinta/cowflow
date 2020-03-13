CC = gcc
TMP =  $(patsubst %.c, %.s, $(wildcard ./input/*.c))
OBJECT_S = $(patsubst %input, %output, $(TMP))

.PONY: clean cleanall

cowflow: $(OBJECT_S)
	
%.elf: %.c
	-clang -O2  $^ -lm -o $@

%.s: %.elf
	-objdump -d $^ > ./output/$(notdir $@)

cleanall:
	rm -rf input/* output/*
clean:
	rm -rf  output/*
