INCLUDES= -I ./include
FLAGS= -g

OBJECTS=./build/chip8memory.o ./build/chip8stack.o ./build/chip8keyboard.o ./build/chip8.o

all:	${OBJECTS}
	gcc ${FLAGS} ${INCLUDES} ./src/main.c ${OBJECTS} -L ./lib -lmingw32 -lSDL2main -lSDL2 -o ./bin/main

./build/%.o:	./src/%.c
	gcc ${FLAGS} ${INCLUDES} $< -c -o $@

clean:	
	rm -f build/*