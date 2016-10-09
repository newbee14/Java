import java.util.Scanner;


public class factZeroes 
{
	public static void main (String args[])
	{
		Scanner in = new Scanner (System.in);
		System.out.println("Test cases");
		int test = in.nextInt();
		while (test--!=0)
		{
				System.out.println("enter number");
				long n=in.nextLong();int sum=0;
				while(n>0)
				{
					sum=(int) (sum+(n/5));
					n/=5;
					//System.out.println(sum);
				}
				System.out.println("no. of zeroes"+sum);
			
		}
		in.close();
	}
}
