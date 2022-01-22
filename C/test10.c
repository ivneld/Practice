#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int min_heap[100001] = { 0, };
int idx = 1;

void insert(int val) {
	int temp_idx = idx;
	int temp;
	min_heap[idx++] = val;

	while (temp_idx > 1) {
		if (min_heap[temp_idx / 2] > min_heap[temp_idx]) {
			temp = min_heap[temp_idx / 2];
			min_heap[temp_idx / 2] = min_heap[temp_idx];
			min_heap[temp_idx] = temp;
			temp_idx /= 2;
		}
		else
			break;
	}
}

void heapfify(int i) {
	int left = i * 2;
	int right = i * 2 + 1;
	int smallest = i;
	int temp;

	if (left < idx && min_heap[left] < min_heap[smallest])
		smallest = left;
	if (right < idx && min_heap[right] < min_heap[smallest])
		smallest = right;

	if (smallest != i) {
		temp = min_heap[i];
		min_heap[i] = min_heap[smallest];
		min_heap[smallest] = temp;
		heapfify(smallest);		//재귀를 이용한 반복
	}
}

int main() {
	int cnt,x;
	scanf("%d", &cnt);
	
	for (int i = 0; i < cnt; i++) {
		scanf("%d", &x);
		if (x == 0) {
			if (idx == 1) printf("0\n");

			else {
				printf("%d\n", min_heap[1]);
				min_heap[1] = min_heap[idx - 1];
				heapfify(1);
				idx -= 1;
			}
		}
		else
			insert(x);
	}
	return 0;
}