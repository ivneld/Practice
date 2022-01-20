//#define _CRT_SECURE_NO_WARNINGS
//#include <stdio.h>
//#include <stdlib.h>
//
//int Q[500001];
//
//int compare(const void *a, const void *b) {
//	int num1 = *(int *)a;
//	int num2 = *(int *)b;
//
//	if (num1 < num2) return -1;
//
//	//if (num1 > num2) return 1;
//
//	return 0;
//}
//
//int main() {
//	int N, M;
//	scanf("%d", &N);
//
//	for (int i = 0; i < N; i++)
//		scanf("%d", &Q[i]);
//
//	qsort(Q, sizeof(Q) / sizeof(int), sizeof(int), compare);
//
//	for (int i = 0; i < N; i++)
//		printf("%d ", Q[i]);
//
//	return 0;
//}