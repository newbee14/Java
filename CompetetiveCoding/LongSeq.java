import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;


public class LongSeq {

	public static void main(String[] args) {
		Scanner in=new Scanner(System.in);
		int test=in.nextInt();
		while(test--!=0)
		{
                   
			String num=in.next();
			if(num.length()==1){
				System.out.println("Yes");
				continue;}
			char[] character = num.toCharArray();
			Map<Character, Integer> charMap = new HashMap<Character, Integer>();
						for (Character ch : character) 
                        {
                            if (charMap.containsKey(ch)) 
                            {
                                charMap.put(ch, charMap.get(ch) + 1);
                            } else {
                            charMap.put(ch, 1);
                            }
                        }
						if(charMap.size()>1)
						{
							int[] ar=new int[2];int x=0;
							for(Character n: charMap.keySet())
							{
								ar[x]=charMap.get(n);
								x++;
							}
							if(ar[0]==1||ar[1]==1)
								System.out.println("Yes");
							else
								System.out.println("No");
							
						}
						else
						 System.out.println("No");
                    }
                
                        
		in.close();
	}
}

