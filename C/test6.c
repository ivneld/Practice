#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int Q[100000];

void quickSort(int Q[], int L, int R) {
	int left = L, right = R;
	int pivot = Q[(L + R) / 2];
	int temp;
	do {
		while (Q[left] < pivot)
			left++;
		while (Q[right] > pivot)
			right--;
		if (left <= right) {
			temp = Q[left];
			Q[left] = Q[right];
			Q[right] = temp;

			left++;
			right--;
		}
	} while (left <= right);

	if (L < right)
		quickSort(Q, L, right);

	if (left < R)
		quickSort(Q, left, R);
}

void pop(int size) {
	if (size == 0)
		printf("0\n");

	else {
		printf("%d\n", Q[0]);

		for (int i = 0; i < size; i++)
			Q[i] = Q[i + 1];

		--size;
	}
}
int main() {
	int N, x, left, right;
	int size = 0;

	scanf("%d", &N);

	for (int i = 0; i < N; i++) {
		scanf("%d", &x);

		if (x == 0)
			pop(size);

		else {
			Q[size++] = x;
			quickSort(Q, 0, size - 1);
		}
	}
	return 0;
}