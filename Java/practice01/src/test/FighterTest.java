package test;
abstract class Unit1 {
	int x,y;
	abstract void move(int x, int y);
	void stop() {System.out.println("����ϴ�.");}
}

interface Fightable {
	void move(int x, int y); //public abstract�� ������
	void attack(Fightable f);
}

class Fighter extends Unit1 implements Fightable{
	//�������̵� ��Ģ : ����(public)���� ������������ ������ ������ �ȵȴ�.
	public void move(int x, int y) {
		System.out.println("["+x+","+y+"]�� �̵�");
	}
	public void attack(Fightable f) {
		System.out.println(f+"�� ����");
	}
	
	Fightable getFightable() {
		Fighter f = new Fighter();
		return f;
	}
}

public class FighterTest {

	public static void main(String[] args) {
	Fighter f = new Fighter();
	Fightable f2 = f.getFightable(); 
	}
}
