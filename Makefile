INCLUDES= -I ./include
FLAGS= -g

OBJECTS=./build/chip8memory.o ./build/chip8stack.o

all:	${OBJECTS}
	gcc  ${FLAGS} ${INCLUDES} ./src/main.c ${OBJECTS} -L ./lib -lmingw32 -lSDL2main -lSDL2 -o ./bin/main

./build/chip8memory.o:	./src/chip8memory.c
	gcc ${FLAGS} ${INCLUDES} $^ -c -o $@

./build/chip8stack.o:	./src/chip8stack.c
	gcc ${FLAGS} ${INCLUDES} $^ -c -o $@

clean:	
	rm -f build/*