import java.util.Arrays;

public class ex04 {

	public static void main(String[] args) {
		int[] ball=new int[45];
		
		for(int i=1; i<=ball.length; i++)
			ball[i-1]=i;
		
		int tmp=0,j=0;
		
		for(int i=0; i<6; i++) {
			j=(int)(Math.random()*45);
			tmp=ball[i];
			ball[i]=ball[j];
			ball[j]=tmp;
			
			System.out.println("ball["+i+"]="+ball[i]);
		}
	
	}
}
