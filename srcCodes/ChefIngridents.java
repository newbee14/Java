import java.util.Arrays;
import java.util.Scanner;


public class ChefIngridents 
{

	public static void main(String[] args)
	{
		Scanner in=new Scanner (System.in);
		int test=in.nextInt();
		while(test--!=0)
		{
			int numOfIngri=in.nextInt();
			int[] ar=new int[numOfIngri];
			for(int i=0;i<numOfIngri;i++)
				ar[i]=in.nextInt();
			
			Arrays.sort(ar);
			int lowest=ar[0];
			
			int hcf=gcd(lowest,ar);
			System.out.println(hcf);
		}
		
		in.close();
	}

	private static int gcd(int lowest, int[] ar) 
	{
		int hcf=0,count=0;
		if(ar[0]==1)
			return 1;
		else {
		for(int i=lowest;i>=1;i--)
		{
			for(int j=0;j<ar.length;j++)
			{
				if(ar[j]%i==0)
					count++;
			}
			if(count==ar.length)
			{
				hcf=i;
				break;
			}
		}
		return hcf;}
	}
}


