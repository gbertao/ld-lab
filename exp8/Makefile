OBJ = code.o main.img main.img.o main.o drive.o drive

.PHONY: all
all: drive

drive: drive.o code.o
	$(CC) $^ -o $@

code.o: code.ld main.img.o
	$(LD) -T $< -o $@
 
main.img: main.o
	$(LD) -T main.ld $^ -o $@

%.img.o: %.img
	$(LD) -b binary -r $^ -o $@

run: drive
	@echo -n "The execution returned: "; /bin/bash test.sh

.PHONY: clean
clean:
	rm -rf $(OBJ)
