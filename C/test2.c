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
//}						//���� ť�� ũ��
//
//int setting(int N ,int K,int back) {
//	int output;
//	int ptr = -1;
//	int now = (K-1) % (back+1);			//������ �ε���
//	output = Q1[now];
//
//	for (int i = now + 1; i <= back; i++)
//		Q2[++ptr] = Q1[i];
//
//	for (int i = 0; i < now; i++)
//		Q2[++ptr] = Q1[i];				//�ӽ�ť�� �籸�� ť ����
//
//	for (int i = 0; i <= ptr; i++)
//		Q1[i] = Q2[i];					//�ӽ�ť���� ���� ť�� �̵�
//					
//
//	return output;
//}
//
//int main() {
//
//	scanf("%d%d", &N,&K);
//	back = N - 1;			//���� �� ����� �ε���
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