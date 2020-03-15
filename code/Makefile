CC = gcc
TMP =  $(patsubst %.c, %.s, $(wildcard ./c/*.c))
OBJECT_S = $(patsubst %c, %assembler, $(TMP))

.PONY: clean cleanall

cowflow: $(OBJECT_S)
	
%.elf: %.c
	-clang -O2  $^ -lm -o $@

%.s: %.elf
	-objdump -d $^ > ./assembler/$(notdir $@)

cleanall:
	rm -rf c/* assembler/* parse/*
clean:
	rm -rf  assembler/* parse/*
