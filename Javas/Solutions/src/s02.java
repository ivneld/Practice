class Student{
	String name;
	int ban;
	int no;
	int kor;
	int eng;
	int math;
	
	Student(String name, int ban, int no, int kor, int eng, int math) {
		this.name=name;
		this.ban=ban;
		this.no = no;
		this.kor=kor;
		this.eng=eng;
		this.math=math;
	}
	
	int getTotal() {
		return kor+eng+math;
	}
	
	float getAverage() {
		return (int)(getTotal() / 3f * 10 + 0.5f) /10f;
	}
	
	String info() {
		return name + "," + ban + "," + no + "," + kor + "," + eng + "," + math + "," + getTotal() + "," + getAverage(); 
	}
}
public class s02 {

	public static void main(String[] args) {
		Student s = new Student("ȫ?浿",1,1,100,60,76);
		System.out.println(s.info());
	}

}
