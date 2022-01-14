class Point {
	int x;
	int y;
}

//class Circle extends Point {
//	int r;
//}
class Circle {
	Point p = new Point();
	int r;
}

public class ex23 {

	public static void main(String[] args) {
		Circle c = new Circle();
//		c.p.x=1;
//		c.p.y=2;
//		c.r=3;
//		System.out.println("c.x="+c.p.x);
//		System.out.println("c.y="+c.p.y);
//		System.out.println("c.r="+c.r);
		System.out.println(c.toString());
		Circle c2 = new Circle();
		System.out.println(c2.toString());
	}
}
