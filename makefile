SrcFiles=$(wildcard *.c)                                                                                                       
ObjFiles=$(patsubst %.c,%.o,$(SrcFiles))

server:$(ObjFiles)
	gcc -o server $(ObjFiles) -Wall -g 

%.o:%.c
	gcc -c $< -o $@

.PHONY:clean all
clean:
	-rm -rf $(ObjFiles)
