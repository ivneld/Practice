#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define BUFFER_SIZE 100

int read_line(char str[], int limit);

int main(void) {
	int word_size=0;
	char word[BUFFER_SIZE];

	while (1) {
		printf("$ ");
		read_line(word, BUFFER_SIZE);
		printf("%s:%d\n", word, strlen(word));
	}
}

int read_line(char str[], int limit) {
	int ch, i = 0;

	while ((ch = getchar()) != '\n')
		if (i < limit) str[i++] = ch;

	str[i] = '\0';
	return i;
}