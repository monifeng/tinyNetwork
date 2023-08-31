CC = g++
CFLAGS = -lmuduo_net -lmuduo_base -lpthread
DEPS = echo.h
OBJ = echo.o echoMain.o

%.o:%.cc $(DEPS)
	$(CC) -c $< $(CFLAGS)

echo : $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	rm *.o 

