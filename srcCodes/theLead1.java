import java.util.Scanner;


public class theLead1 
{
	public static void main (String args[])
	{
		Scanner in= new Scanner (System.in);
		System.out.println("Enter No. Of Games");
		int round=in.nextInt();
		int lead=0,a=0,b=0,c,d,flag=0;
		for(int x=0;x<round;x++)
		{
			c=in.nextInt();
			d=in.nextInt();
			a+=c; b+=d;
			
			if(a>b&&(a-b)>lead)
			{
				flag=1; lead=a-b;
			}
			else if(b>a&&(b-a)>lead)
			{
				flag=2; lead=b-a;
			}
		}
		System.out.print(flag);
		System.out.print(lead);
		in.close();
	}
}
