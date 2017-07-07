default: bfilter.c bfilter.h
	$(CC) -g -Wall -Wextra -std=gnu99 -Wpointer-arith -Wmissing-prototypes -lfnv -lm -L. -O3 ./bfilter.c -o test -Wl,-rpath,/home/wes/bfilter;

lib: bfilter.c bfilter.h
	$(CC) -g -DLIB -c -fpic -Wall -Wextra -pedantic -Wpointer-arith -Werror -std=c99 -lfnv -lm -L. -O3 ./bfilter.c -Wl,-rpath,/home/wes/bfilter;
	$(CC) -shared -o bfilter.so bfilter.o;
