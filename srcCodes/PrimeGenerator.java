import java.util.Scanner;


public class PrimeGenerator {

	public static void main(String[] args) 
	{
		Scanner in=new Scanner (System.in);
		int n=in.nextInt();
		boolean[] primeCheck=new boolean[n+1];
		for(int i=2;i<=n;i++)
			primeCheck[i]=true;
		
		for(int factor=2;factor*factor<=n;factor++)
		{
			if(primeCheck[factor])
			{
				for(int j=factor;j*factor<=n;j++)
				{
					primeCheck[j*factor]=false;
				}
			}
		}
		for(int i=2;i<=n;i++)
		{
			if(primeCheck[i])
				System.out.println(i);
		}
		in.close();
	}

}
