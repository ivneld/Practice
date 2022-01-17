import java.util.Arrays;

class Solution {
	public String solution(String[] participant,String[] completion) {
		String answer="";
		int chk=0;
		Arrays.sort(participant);
		Arrays.sort(completion);
		
		for(int i=0; i<completion.length; i++) {
			if(!(completion[i].equals(participant[i]))) {
				chk=i;
				break;
			}		
		}
		if(chk==0)
			answer=participant[participant.length-1];
		else
			answer=participant[chk];
		
		return answer;
	}
}

