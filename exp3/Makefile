OBJ = main main.o

all: main

main: main.ld main.o
	ld -o $@ -T $< main.o

main.o: main.s
	as $< -o $@

run: main
	@echo -n "The execution returned: "; /bin/bash test.sh

clean:
	rm -rf ${OBJ}
