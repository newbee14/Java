import java.util.Scanner;


public class kudratngo 
{
	static Scanner in = new Scanner(System.in);
	
	public static void main(String args[]) 
	{
		
		System.out.println("Enter size of the array");
		int a= in.nextInt();
		kudratngo obj = new kudratngo();
		int sum=obj.traversearray(a);
		System.out.println(sum);
		
	}

	public int traversearray(int s) 
	{
		int[][] ar=new int[s][s];
		for(int x=0;x<s;x++)
		{
			System.out.println("Enter values in array"+x+"row");
			for(int j=0;j<s;j++)
			{
				
				ar[x][j]=in.nextInt();
			}
			System.out.println();
		}
		int m=0,n=0,sum=0;
	for(int run=0; run<(s*2);run++)
	{
		int tempsum=0,tempsum1=0;
		for(int x=m;x<s;x++)
		{
			
			tempsum+=ar[0][x];
		}
		for(int j=n;j<=s;j++)
		{
			
			tempsum1+=ar[j][0];
		}
		for(int x=0;x<s;)
		{
			for(int i=1;i<s;)
			{
			
				if(tempsum<tempsum1)
				{
					sum+=ar[x][i];
					m++;
					break;
				}
				
				else
				{
					sum+=ar[x][i];
					n++;
					break;
				}
			}
			
			break;
		}
	}
		return sum;
	}

}
