import java.util.Scanner;


public class Permut2 
{
	public static void main (String args[])
	{
		Scanner in=new Scanner (System.in);
		int t=in.nextInt();
		while(t!=0)
		{
			
			int flag=0;
			int[] ar1= new int[t+1];
			int[] ar2= new int[t+1];
			if(t==1)
			{
				System.out.println("ambigious");
				break;
			}
			
			else
			{
				for(int i=1;i<=t;i++)
				{
					ar1[i]=in.nextInt();
					ar2[ar1[i]]=i;
				}
				for(int i=1;i<=t;i++)
				{
					if(ar1[i]!=ar2[i])
					{
						System.out.println("not ambiguous");
						flag=1;
						break;
					}
				}
				if(flag==0)
					System.out.println("ambiguous");
				}
		 t=in.nextInt();
		}
		
		in.close();
	}
	
}
