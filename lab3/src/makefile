CC=gcc
CFLAGS=-I. 

# Добавим launch_sequential в цель all
all: sequential_min_max parallel_min_max launch_sequential

sequential_min_max : sequential_min_max.c utils.o find_min_max.o
	$(CC) -o $@ $^ $(CFLAGS)

parallel_min_max : parallel_min_max.c utils.o find_min_max.o
	$(CC) -o $@ $^ $(CFLAGS)

# Новая цель для launch_sequential
launch_sequential : launch_sequential.c
	$(CC) -o $@ $< $(CFLAGS)

utils.o : utils.c utils.h
	$(CC) -o $@ -c $< $(CFLAGS)

find_min_max.o : find_min_max.c find_min_max.h utils.h
	$(CC) -o $@ -c $< $(CFLAGS)

clean :
	rm -f *.o sequential_min_max parallel_min_max launch_sequential

