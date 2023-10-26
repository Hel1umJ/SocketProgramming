######################################################################
# Global variables.
######################################################################
CC=gcc
LD=ld
WARNS=-Wall -pedantic -Wextra
CFLAGS=-g3 -std=gnu11 ${WARNS}
LIBS= -lpthread -lrt


# hello is an executable I want to build, the rest are handy things
#all: tags headers main lab2.zip
all: 

# This builds visual symbol (.vs) files and the header files.
headers: *.c tags
	./headers.sh

# Tags (for C code) are too handy not to keep up to date.
# This lets us use Control-] with vim (ctags command).
# Alternatively, we can use etags with emacs (etags command).
# Comment out the command that you're NOT using.
tags: *.c
#	ctags -R
#etags -R


# This is a link rule, we have a universal compile rule down below
# Output is the target of the rule : -o $@
# I want to link all of the dependencies: $^
#main: main.o buffer.o producer.o consumer.o
#	${CC} -g -o $@ $^ ${LIBS}

# main.o: main.c
# 	${CC} ${CFLAGS} -c -o $a $^

# buffer.o: buffer.c
# 	${CC} ${CFLAGS} -c -o $a $^

# producer.o: producer.c
# 	${CC} ${CFLAGS} -c -o $a $^

# consumer.o: consumer.c
# 	${CC} ${CFLAGS} -c -o $a $^

# This is our master compiler rule to generate .o files.
# It needs all 4 warnings (see WARNS variable defined above)
#%.o:%.c #*.h
#	${CC} ${CFLAGS} -c $< -o $@

#Include a *.h in the requirements for any programs with header files
lab2.zip: headers.awk headers.sh headers_timestamp Makefile README.txt tags *.c *.h
	zip lab2.zip headers.awk headers.sh Makefile README.txt *.c



# removes all .o's, the generated zip, and all exe's. 
clean: 
	rm -rf *.o lab2.zip *.exe headers_timestamp tags *.vs *.h








