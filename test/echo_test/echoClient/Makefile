CC=g++
CFLAGS=-lmuduo_base -lmuduo_net -pthread -std=c++11
OBJS= main.cc
DEPS=

%.o : %.cc ${DEPS}
	${CC} -c $< {CFLAGS}

echoClient:${OBJS} 
	${CC} -o $@ $^ ${CFLAGS}
