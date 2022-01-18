package test;

class MyTv2{
	private boolean isPowerOn;
	private int channel;
	private int volume;
	private int prevChannel;
	
	final int MAX_VOLUME=100;
	final int MIN_VOLUME=0;
	final int MAX_CHANNEL=100;
	final int MIN_CHANNEL=1;
	
	public void setVolume(int volume) {
		if(volume>MAX_VOLUME || volume<MIN_VOLUME)
			return;
		
		this.volume = volume;
	}
	
	public void setChannel(int channel) {
		if(channel>MAX_CHANNEL || channel<MIN_CHANNEL)
			return;
		
		prevChannel = this.channel;
		this.channel = channel;
	}
	
	public int getVolume() {
		return this.volume;
	}
	public int getChannel() {
		return this.channel;
	}
	
	void turnOnOff() {
		isPowerOn = !isPowerOn;	}
	void volumeUp() {
		if(volume<MAX_VOLUME) ++volume;
	}
	void volumeDown() {
		if(volume>MIN_VOLUME) --volume;
	}
	void channelUp() {
		if(channel==MAX_CHANNEL) channel=MIN_CHANNEL;
		
		else ++channel;
	}
	void channelDown() {
		if(channel==MIN_CHANNEL) channel=MAX_CHANNEL;
		
		else --channel;
	}
	
	public void gotoPreChannel() {
		setChannel(prevChannel);
	}
}	//class MyTv2
public class ex7_10 {

	public static void main(String[] args) {
		MyTv2 t= new MyTv2();
		
		t.setChannel(10);
		System.out.println("CH : " + t.getChannel());
		t.setVolume(20);
		System.out.println("CH : " + t.getVolume());
		t.gotoPreChannel();
		System.out.println("CH : " + t.getChannel());
		t.gotoPreChannel();
		System.out.println("CH : " + t.getChannel());
		
	}

}
