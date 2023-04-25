CFLAGS=-lmuduo_net -lmuduo_base -lpthread -std=c++11
# -lmuduo_net -lmuduo_base -lpthread -std=c++11
CC=g++
ODIR=obj

OBJS=finger_1.o finger_2.o finger_3.o finger_4.o finger_5.o finger_6.o 

files=finger_1 finger_2 finger_3 finger_4 finger_5 finger_6 

# .cc 到 .o的编译语句
%.o: %.c 
	$(CC) -c -o $@ $< $(CFLAGS)

finger_1: finger_1.o
	$(CC) -o $@ $^ $(CFLAGS)

finger_2: finger_2.o
	$(CC) -o $@ $^ $(CFLAGS)

finger_3: finger_3.o
	$(CC) -o $@ $^ $(CFLAGS)

finger_4: finger_4.o
	$(CC) -o $@ $^ $(CFLAGS)

finger_5: finger_5.o
	$(CC) -o $@ $^ $(CFLAGS)

finger_6: finger_6.o
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY : clean
clean :
	-rm $(OBJS) $(files)
	