import java.util.Scanner;


public class Primilarity {

	public static void main(String[] args) 
	{
		Scanner in=new Scanner(System.in);
		int test=in.nextInt();
		while(test-->0)
		{
			int num=in.nextInt();
			num+=1;
			if(num%6==0||num%6==2)
				System.out.println("Prime");
			else
				System.out.println(" Not Prime");
		}
		
		in.close();
	}

}
