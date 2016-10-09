import java.util.Scanner;


public class GDOG {

	public static void main(String[] args) 
	{
		Scanner in=new Scanner(System.in);
		int test=in.nextInt();
		while(test-->0)
		{
			int n=in.nextInt();
			int k=in.nextInt();
			System.out.println(n%k);
		}
		in.close();
	}

}
