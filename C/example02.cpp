#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
	int * array = (int *)malloc(4 * sizeof(int));
	//int array[4];

	array[0] = 1;
	array[1] = 2;
	*(array + 2) = 3;

	int * tmp = (int *)malloc(8 * sizeof(int));
	for (int i = 0; i < 4; i++) {
		tmp[i] = array[i];
	}
	array = tmp;

	array[4] = 4;
	array[5] = 5;

	printf("%d", array[5]);
}