//#define _CRT_SECURE_NO_WARNINGS
//#include <stdio.h>
//#include <string.h>
//	
////()(((()())(())()))(())
////))(()())
//
//char Q[1000001];
//
//int main() {
//	int cnt = 0,cnt2=0,sum=0;
//
//	scanf("%s", &Q);
//	int i = 0,flag=0,flag2=0;
//
//	while (Q[i]=='('||Q[i]==')') {		//1 2 3 4 3 4 5 4 5 4 3 2 3 4 3 2 3 2 1 0 1 2 1 2 1 0
//
//		if (Q[i] == '(') {
//			++cnt;
//			flag = 1;
//			if (Q[i + 1] != ')')
//				++sum;
//		}
//		
//		if (Q[i] == ')') {
//			--cnt;
//			if (flag == 1)
//				sum += cnt;
//			flag = 0;
//		}
//		++i;
//		
//	}
//
//	printf("%d ", sum);
//	
//	return 0;
//}