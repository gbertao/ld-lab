OBJ = main empt.o main.o

all: main

main: main.o
	ld -o $@ $<

main.o: main.ld empt.o
	ld -T $< -o $@ empt.o

empt.o: empt.s
	as $< -o $@

run: main
	@echo -n "The execution returned: "; /bin/bash test.sh

clean:
	rm -rf ${OBJ}
