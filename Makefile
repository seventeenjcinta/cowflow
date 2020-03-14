# cowflow makefile

include config.ini

LLC = llc-6.0
CLANG = clang++
OBJECT = assembler.o launch.o function.o config.o km.o log.o cal.o netflow.o 

.PHONY: cowflow clean

cowflow: $(OBJECT) 
	g++ -g $(OBJECT) -o cowflow

file: 
	gcc -O2 $^ -o $@

assembler.o: assembler.cpp
	g++ -g -c assembler.cpp

assembler.cpp: assembler.l
	lex assembler.l

cal.o: cal.h cal.cpp netflow.o function.o lcs.o
	g++ -g -c cal.cpp

launch.o: launch.cpp log.o
	g++ -g -c launch.cpp

function.o: function.h function.cpp
	g++ -g -c function.cpp

config.o: config.h config.cpp
	g++ -g -c config.cpp

netflow.o: netflow.h netflow.cpp
	g++ -g -c netflow.cpp

km.o: km.h km.cpp
	g++ -g -c km.cpp

log.o: log.h log.cpp
	g++ -g -c log.cpp
	
lcs.o: lcs.cpp
	g++ -g -c lcs.cpp

buildChrome.o: buildChrome.cpp
	g++ -g -c buildChrome.cpp

# test1.s: test1.bc
#	$(LLC) $^ -o $@

# test1.bc: test1.c
#	$(CLANG) -O2 -emit-llvm $^ -c -o $@

clean: 
	rm -rf cowflow *.o