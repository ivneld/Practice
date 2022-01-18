
public class ex17_important {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}

class TestClass {
	void instanceMethod() {	}		//객체 호출 후 사용할 수 있는 메소드
	static void staticMethod() {}	//객체 호출 없이 언제나 사용할 수 있는 메소드
	
	void instanceMethod2() {		//인스턴스 메소드
		instanceMethod();			//인스턴스 메소드 호출 가능
		staticMethod();				//static메소드 호출 가능 
	}
	
	static void staticMethod2() {	//static메서드
//		instanceMethod();			//언제나 사용 가능한 메소드 안에 객체를 호출해야만 사용가능한 메소드이기 때문에 에러
		staticMethod();				//static메서드 호출 가능
	}
}

class TestClass2 {
	int iv;						//인스턴스 변수
	static int cv;				//클래스 변수 (언제나 사용가능한 변수)
	
	void instanceMethod() {		//인스턴스 메서드
		System.out.println(iv);	//인스턴스 변수를 사용할 수 있다.
		System.out.println(cv);	//클래스 변수를 사용할 수 있다.
	}//이 메서드는 어차피 객체 호출 후 사용할 수 있는 메서드 이기 때문.
	
	static void staticMethod() { //static 메서드
//	에러	System.out.println(iv);	 //static메서드는 인스턴스 변수를 사용할 수 없다.
		System.out.println(cv);	 //클래스 변수는 사용할 수 있다.
	}	//static메서드는 객체 샹성없이 호출 가능하지만 인스턴스 변수는 객체 생성 후 사용 가능한 변수이기 때문.
}