import java.util.Scanner;


public class PrimeGen2 {

	public static void main(String[] args) 
	{
		Scanner in=new Scanner(System.in);
		int n=in.nextInt();
		int m=in.nextInt();
		boolean[] primeCheck=new boolean[m+1];
		for(int i=2;i<=m;i++)
			primeCheck[i]=true;
		
		for(int factor=2;factor*factor<=m;factor++)
		{
			if(primeCheck[factor])
			{
				for(int j=factor;j*factor<=m;j++)
				{
					primeCheck[j*factor]=false;
				}
			}
		}
		int countPrime=0;
		for(int i=n;i<=m;i++)
		{
			if(primeCheck[i])
				countPrime++;
		}
		System.out.println(countPrime);
		in.close();
	}

}
