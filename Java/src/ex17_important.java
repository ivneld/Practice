
public class ex17_important {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}

class TestClass {
	void instanceMethod() {	}		//��ü ȣ�� �� ����� �� �ִ� �޼ҵ�
	static void staticMethod() {}	//��ü ȣ�� ���� ������ ����� �� �ִ� �޼ҵ�
	
	void instanceMethod2() {		//�ν��Ͻ� �޼ҵ�
		instanceMethod();			//�ν��Ͻ� �޼ҵ� ȣ�� ����
		staticMethod();				//static�޼ҵ� ȣ�� ���� 
	}
	
	static void staticMethod2() {	//static�޼���
//		instanceMethod();			//������ ��� ������ �޼ҵ� �ȿ� ��ü�� ȣ���ؾ߸� ��밡���� �޼ҵ��̱� ������ ����
		staticMethod();				//static�޼��� ȣ�� ����
	}
}

class TestClass2 {
	int iv;						//�ν��Ͻ� ����
	static int cv;				//Ŭ���� ���� (������ ��밡���� ����)
	
	void instanceMethod() {		//�ν��Ͻ� �޼���
		System.out.println(iv);	//�ν��Ͻ� ������ ����� �� �ִ�.
		System.out.println(cv);	//Ŭ���� ������ ����� �� �ִ�.
	}//�� �޼���� ������ ��ü ȣ�� �� ����� �� �ִ� �޼��� �̱� ����.
	
	static void staticMethod() { //static �޼���
//	����	System.out.println(iv);	 //static�޼���� �ν��Ͻ� ������ ����� �� ����.
		System.out.println(cv);	 //Ŭ���� ������ ����� �� �ִ�.
	}	//static�޼���� ��ü �������� ȣ�� ���������� �ν��Ͻ� ������ ��ü ���� �� ��� ������ �����̱� ����.
}