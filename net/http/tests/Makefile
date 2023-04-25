CC=g++
CFLAGS= -lmuduo_net -lmuduo_base -lpthread -lmuduo_http -std=c++11
FILE=server

%.o: %.cc
	$(CC) -c -o $@ $< $(CFLAGS)
# $(CC) $(CFLAGS) -c $^ -o $@

server: HttpServer_test.o
	$(CC) -o $@ $^ $(CFLAGS)
# $(CC) $(CFLAGS) $^ -o $@ 

.PHONY: clean

clean: 
	rm -rf *.o
	
