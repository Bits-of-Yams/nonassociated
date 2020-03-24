#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

void printX(int *theX);
extern void printTheirY();

int y = 1;

int main(void)
{

	int x = 0;

	printX(&x);
	printTheirY();

	return 0;
}

void printX(int *theX)
{
	printf("x: %d\n", *theX);
	printf("y: %d\n", y);

	return;
}
