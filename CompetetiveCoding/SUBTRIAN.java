import java.util.Scanner;


public class SUBTRIAN 
{
	public static void main (String args[])
	{
		Scanner in=new Scanner(System.in);
		int test=in.nextInt();
		
		while(test--!=0)
		{
			int num=in.nextInt();
			int[][] ar= new int [num][num];
			for(int i=0; i<num;i++)
			{
				for(int j=0;j<=i;j++)
				{
					ar[i][j]=in.nextInt();
				}
			}
			for(int j=num-2;j>=0;j--)
			{
				for(int i=0;i<=j;i++)
				{
					ar[j][i]+=Math.max(ar[j+1][i+1], ar[j+1][i]);
				}
			}
			System.out.println(ar[0][0]);
		}
		in.close();

	}
}
