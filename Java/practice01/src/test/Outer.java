package test;

public class Outer {
	private int outerIv=0;
	private static int outerCv=0;
	
	class InstanceInner {
		int iiv=outerIv;
		int iiv2=outerCv;
	}
	
	static class StaticInner {
		//static class는 외부 클래스의 인스턴스맴버에 접근할 수 없다.
		//int siv=outerIv;
		static int scv=outerCv;
	}
	
	void myMethod() {
		int lv=0;
		final int LV=0;
		
		class LocalInner {
			int liv=outerIv;
			int liv2=outerCv;
			int liv3=lv;
			int liv4=LV;
		}
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
