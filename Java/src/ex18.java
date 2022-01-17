
public class ex18 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}

class MyMath3 {
	int add(int a, int b) {
		System.out.println("int add(int a, int b) - ");
		return a+b;
	}
	
	long add(long a, long b) {
		System.out.println("long add(long a, long b) - ");
		return a+b;
	}
	
	int add(int[] a) {
		System.out.println("int add(int[] a) - ");
		int result =0;
		for(int i=0; i<a.length; i++)
			result+=a[i];
		
		return result;
	}
}