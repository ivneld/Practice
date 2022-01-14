import java.util.Arrays;

class Data_1{
	int value;
}

class Data_2{
	int value;
	
	Data_2(){} //기본 생성자
	
	Data_2(int x){	//매개변수가 있는 생성자
		value=x;
	}
}

public class ex20 {
	public static void main(String[] args) {
		String[] args1 = {"mislav", "stanko", "mislav", "ana"};
		String[] args2= {"stanko", "ana", "mislav"};
		String[] args3= {"marina", "josipa", "nikola", "vinko", "filipa"};
		String[] args4= {"josipa", "filipa", "marina", "nikola"};
		
		Arrays.sort(args1);
		Arrays.sort(args2);
		Arrays.sort(args3);
		Arrays.sort(args4);
		
		System.out.println(Arrays.toString(args1));
		System.out.println(Arrays.toString(args2));
		System.out.println(Arrays.toString(args3));
		System.out.println(Arrays.toString(args4));
					}

}
