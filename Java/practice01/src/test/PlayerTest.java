package test;

abstract class Player{
	abstract void play(int pos);
	abstract void stop();
}

class AudioPlayer extends Player {
	void play(int pos) {System.out.println(pos + "��ġ���� ����˴ϴ�.");}
	void stop() {System.out.println("����� ����ϴ�.");}
}

public class PlayerTest {

	public static void main(String[] args) {
//		Player p = new Player();
		Player ap = new AudioPlayer();
		ap.play(100);
		ap.stop();
	}

}
