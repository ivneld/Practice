#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
//12345
int setting(int N,int cnt) {
	int ptr=-1;								
	int new_N = 0;

	int one = N % 10;
	new_N += one * cnt+N/10;		

	return new_N;
}

int main() {
	int N;
	scanf("%d", &N);
	int cnt;
	int sum = N;
	int new_N = N;

	for (cnt = 1; cnt <= N; cnt*=10);			//cnt는 N의 자리수
	cnt /= 10;

	while (1) {
		new_N = setting(new_N,cnt);
		if (N == new_N) break;

		sum += new_N;
	}

	printf("%d", sum);

	return 0;
}//12111 11211 11121 11112 21111  