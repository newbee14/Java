import java.util.Arrays;
import java.util.Scanner;


public class TweetClose {

	public static void main(String[] args) 
	{
		Scanner in=new Scanner(System.in);
		
			int n=in.nextInt();
			int k=in.nextInt();
			int[] click=new int[n];
			String clickX;
			while(k-->0)
			{
				clickX=in.next();
				char[] ar=clickX.toCharArray();
				
				char last=(ar[ar.length-1]);
				int a=Character.getNumericValue(last),count=0;
				//System.out.println(a);
				if(clickX.equalsIgnoreCase("CLOSEALL"))
					Arrays.fill(click, 0);
				else
				{
					if(a<=n)
					{						
						click[a-1]^=1;
					}
				}
				for(int i=0;i<n;i++)
				{
					if(click[i]==1)
						count++;
				}
				System.out.println(count);
			}
		
		in.close();
	}

}
