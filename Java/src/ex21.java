class Tv1 {
	boolean power;
	int channel;
	
	void power() {power=!power;}
	void channelUp() {++channel;}
	void channelDown(){--channel;}
}

class smartTv1 extends Tv1{
	boolean caption;
	void displayCaption(String text) {
		if(caption) {
			System.out.println(text);
		}
	}
}

public class ex21 {

	public static void main(String[] args) {
		smartTv1 sTv1 = new smartTv1();
		sTv1.channel=10;
		sTv1.channelUp();
		System.out.println(sTv1.channel);
		sTv1.displayCaption("Hello World");
		sTv1.caption=true;
		sTv1.displayCaption("Hello World");
	}

}
