package test;

class Product1 {
	int price;
	int bonusPoint;
	
	Product1(int price){
		this.price=price;
		bonusPoint=(int)(price/10.0);
	}
}

class Tv1 extends Product1 {
	Tv1() {
		super(100);
	}
	
	public String toString() {return "Tv";}
}

class Computer extends Product1 {
	Computer() {
		super(200);
	}
	
	public String toString() {return "Computr";}
}

class Buyer {
	int money = 1000;
	int bonusPoint = 0;
	
	void buy(Product1 p) {
		if(money < p.price) {
			System.out.println("�ܾ��� �����Ͽ� ������ �� �� �����ϴ�.");
			return;
		}
		
		money-=p.price;
		bonusPoint +=p.bonusPoint;
		System.out.println(p + "��/�� �����ϼ̽��ϴ�.");
	}
}

public class ex7_8 {

	public static void main(String[] args) {
		Buyer b = new Buyer();
		
		b.buy(new Tv1());
		b.buy(new Computer());
		
		System.out.println("���� ���� ���� " + b.money + "�����Դϴ�.");
		System.out.println("���� ���ʽ������� " + b.bonusPoint + "�� �Դϴ�.");
	}

}
