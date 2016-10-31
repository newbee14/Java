import java.math.BigInteger;
import java.util.Scanner;
public class factorial
{
	public static void main (String args[])
	{
		Scanner in= new Scanner(System.in);
		int n,test;
		//long[] ar=new long[230000000000];
		System.out.println("Test cases");
		test=in.nextInt();
		while(test--!=0)
		{
			System.out.println("number");
			n=in.nextInt();
			BigInteger fact=BigInteger.valueOf(1);
			for(int i=2;i<=n;i++)
				fact=fact.multiply(BigInteger.valueOf(i));
		System.out.println("factorial"+fact);	
		}
	in.close();
	}
	
}
