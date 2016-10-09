import java.util.Scanner;


public class ChefRemiss 
{

	public static void main(String[] args) 
	{
		Scanner in=new Scanner(System.in);
		int test=in.nextInt();
		while(test--!=0)
		{
			int guardA=in.nextInt();
			int guardB=in.nextInt();
			int min=Math.max(guardA, guardB);
			int max=guardA+guardB;
			System.out.println(min+" "+max);
			
		}		
		in.close();
	}

}
