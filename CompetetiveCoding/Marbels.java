import java.util.Scanner;


public class Marbels {

	public static void main(String[] args) 
	{
		Scanner in=new Scanner(System.in);
		int test=in.nextInt();
		while(test-->0)
		{
			int n=in.nextInt()-1;
			int r=in.nextInt()-1,numeratorFact=1,denominatorFact=1;
			int[] rFact=new int[r+1];
		if((n-r)==0)
			System.out.println("1");
		else
		{
			
			for(int i=n;i>(n-r);i--)
			{
				numeratorFact*=i;
				//System.out.println(n);
			}
			System.out.println(numeratorFact);
			for(int i=2;i<=r;i++)
			{
				if(numeratorFact%i==0)
					numeratorFact=numeratorFact/i;
				else
					rFact[i]=i;
			}
			System.out.println(numeratorFact);
			for(int i=0;i<=r;i++)
			{
				if(rFact[i]!=0)
					denominatorFact*=rFact[i];
			}
			System.out.println(numeratorFact/denominatorFact);
		}
		}
		in.close();
	}

}
