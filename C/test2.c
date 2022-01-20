//#define _CRT_SECURE_NO_WARNINGS
//#include <stdio.h>
//#include <string.h>
//
//int Q1[100000];
//int Q2[100000];
//int N, K, back;
//
//int size(int back) {
//	return back + 1;
//}						//현재 큐의 크기
//
//int setting(int N ,int K,int back) {
//	int output;
//	int ptr = -1;
//	int now = (K-1) % (back+1);			//추출할 인덱스
//	output = Q1[now];
//
//	for (int i = now + 1; i <= back; i++)
//		Q2[++ptr] = Q1[i];
//
//	for (int i = 0; i < now; i++)
//		Q2[++ptr] = Q1[i];				//임시큐에 재구성 큐 저장
//
//	for (int i = 0; i <= ptr; i++)
//		Q1[i] = Q2[i];					//임시큐에서 원래 큐로 이동
//					
//
//	return output;
//}
//
//int main() {
//
//	scanf("%d%d", &N,&K);
//	back = N - 1;			//가장 뒷 사람의 인덱스
//
//	for (int i = 1; i <= N; i++) Q1[i-1] = i;
//
//	printf("<");
//
//	while (back != 0) {
//
//		printf("%d, ",setting(N, K, back));
//
//		--back;
//	}
//
//	printf("%d>", setting(N, K, back));
//
//	return 0;
//}