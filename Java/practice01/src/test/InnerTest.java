package test;

class AA {			//�ܺ� Ŭ����
	int i=100;
	BB b = new BB();
	
	class BB {			//BB�� AA�� ���� Ŭ����
		void method() {
			System.out.println(i);	//��ü �������� �ܺ� Ŭ������ �ɹ� ���ٰ���
		}
	}
}


class CC {
}

public class InnerTest {

	public static void main(String[] args) {
//		BB b= new BB();
//		b.method();
		AA a = new AA();
		
	}

}
