public class ex08 {

	public static void main(String[] args) {
		int[][] score = {
				{100,100,100},
				{20,20,20},
				{30,30,30},
				{40,40,40},
				{50,50,50}
		};
	
		int korTot=0, engTot=0,mathTot=0;	
		
		System.out.println("¹øÈ£	±¹¾î	¿µ¾î	¼öÇÐ	ÃÑÁ¡	Æò±Õ");
		System.out.println("============================");
		for(int i=0; i<score.length; i++) {
			int Tot=0;
			float avg=0.0f;
			System.out.print(i+1 + "	");
			
			for(int j=0; j<score[i].length; j++) {
			System.out.print(score[i][j]+ "	  ");	
			
			if(j==0) korTot+=score[i][j];
			if(j==1) engTot+=score[i][j];
			if(j==2) mathTot+=score[i][j];
			
			Tot+=score[i][j];
			}
			avg=Tot/(float)score[i].length;
			
			System.out.printf("%d	%f\n",Tot,avg);
		}
		System.out.println("============================");
		System.out.printf("ÃÑÁ¡ : %d	%d	%d",korTot,engTot,mathTot);
	}

}
