CC = gcc
LDFLAGS = -lGLESv2 -lSDL2 -lSDL2main -lSDL2_image

output: main.o Cso/Cso.o
	$(CC) main.o Cso/Cso.o -o cso $(LDFLAGS)
	rm -rf *.o Cso/*.o

main.o: main.c Cso/Cso.h
	$(CC) -c main.c

Player.o: Cso/Cso.c Cso/Cso.h
	$(CC) -c Cso/Cso.c

clean:
	rm -rf cso

run:
	./cso
