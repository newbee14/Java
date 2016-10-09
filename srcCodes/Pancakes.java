import java.util.Scanner;


public class Pancakes 
{
	public static void main (String args[])
	{
		Scanner in=new Scanner(System.in);
		
		int test=in.nextInt();
		while(test--!=0)
		{
			int a=in.nextInt();
			a=(a/2)+1;
			
			System.out.println(a);
		}
		
		in.close();
		
	}
}
