OBJ = main main_1.o main_2.o

all: main

main: main.ld main_1.o main_2.o
	ld -o $@ -T $< main_2.o main_1.o

main_1.o: main_1.s
	as $< -o $@

main_2.o: main_2.s
	as $< -o $@

run: main
	@echo -n "The execution returned: "; /bin/bash test.sh

clean:
	rm -rf ${OBJ}
