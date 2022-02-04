#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define BUFFER_SIZE 100

int main(void) {
	char *word[100];
	int n = 0;
	char buffer[BUFFER_SIZE];

	while (n<4 && scanf("%s", buffer)!=EOF) {
		word[n] = strdup(buffer);
		n++;
	}

	for (int i = 0; i < 4; i++)
		printf("%s\n", word[i]);

}