OBJ = main.o main1.o main2.o

all: main1.o main2.o

main1.o: main1.ld main.o
	ld -o $@ -T $< main.o

main2.o: main2.ld main.o
	ld -o $@ -T $< main.o

main.o: main.s
	as main.s -o main.o

run: all
	@echo -n "Deploying test...\n"; /bin/bash test.sh; exit 0

.PHONY: clean
clean:
	rm -rf ${OBJ}
