OBJ = main main.o func.o drive.o

all: main

drive.o: drive.c
	gcc -c -o $@ $^ -g

main: drive.o func.o
	gcc -o $@ $^ -g

func.o: main.ld main.o
	ld -o $@ -T $<

main.o: main.s
	as $< -o $@

run: main
	@echo -n "The execution returned: "; /bin/bash test.sh

clean:
	rm -rf ${OBJ}
