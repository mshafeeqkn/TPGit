CC=gcc
OBJ=\
    fun.o \
    main.o
EXEC=exe

all: $(OBJ)
	$(CC) $(OBJ) -o $(EXEC)

%.o: %.c
	$(CC) -c -o $@ $^

clean:
	rm -rf *.o $(EXEC)
