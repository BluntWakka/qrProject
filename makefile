CFLAGS=-g -Wall -Wextra -Wwrite-strings
LFLAGS=-g

qrGenerator: qrGenerator.o qrGeneratorFuncs.o
	g++ ${LFLAGS} -o qrGenerator qrGenerator.o qrGeneratorFuncs.o
qrGenerator.o: syscalls.h qrGenerator.cpp qrGeneratorFuncs.h
	g++ ${CFLAGS} -c qrGenerator.cpp
qrGeneratorFuncs.o: qrGeneratorFuncs.cpp syscalls.h qrGeneratorFuncs.h
	g++ ${CFLAGS} -c qrGeneratorFuncs.cpp
syscalls.o: syscalls.c
	g++ ${CFLAGS} -c syscalls.c
clean:
	rm -f *.o
	rm -f qrCodeFile.pbm
	rm -f qrGenerator