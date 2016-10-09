import java.util.Scanner;


public class ByteLander {

	public static void main(String[] args) 
	{
		Scanner in=new Scanner(System.in);
		int test=10;
		while(test-->0)
		{
			int divide=2;
			long byteLandian=in.nextLong(),sum=0;
			long[] coins=new long[3];
			for(int i=0;i<3;i++)
			{
				long clone=byteLandian;
				coins[i]=clone/divide;
				sum+= coins[i];
				divide++;
			}
			if(sum>byteLandian)
				System.out.println(sum);
			else
				System.out.println(byteLandian);
		}
		in.close();
			
	}

}
