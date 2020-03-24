.PHONY: all clean
CC = gcc -Wall
debug += -g
noOpt += -O0
common_CC = $(CC) $(debug) $(noOpt)
ALL:

%.o: %.c
	$(common_CC) -c $<

externExample: externExample_driver.o externExample_otherFile.o
	$(common_CC) -o $@ externExample_driver.o externExample_otherFile.o

clean:
	rm *.o
	$(RM) externExample
