//#define _CRT_SECURE_NO_WARNINGS
//#include <stdio.h>
//#include <string.h>
//
//int Q[1000000];
//int S_Q[1000000];
//int N, K, front, back;
//
//int now() {
//	return front + K - 1;
//}
//
//int fx_size() {
//	return back - front + 1;
//}
//
//void setting() {
//	int now = K-1 % fx_size(front, back);
//	int ptr = -1;
//
//	for (int i = now + 1; i <= back; i++) {
//		++ptr;
//		S_Q[ptr] = Q[i];
//	}
//
//	for (int i = 0; i < now; i++) {
//		++ptr;
//		S_Q[ptr] = Q[i];
//	}
//
//	for (int i = 0; i <= ptr; i++)
//		Q[i] = S_Q[i];
//
//	--back;
//
//}
//
//int main() {
//	scanf("%d%d", &N, &K);
//
//	front=0,back = N - 1;
//
//	for (int i = 0; i < N; i++)
//		Q[i] = i + 1;
//
//	while (back != 0) {
//		setting();
//
//		for (int i = 0; i <= back; i++)
//			printf("%d ", Q[i]);
//		printf("\n");
//	}
//	return 0;
//}