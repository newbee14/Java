import java.util.Scanner;



public class ChefCoins {

	public static void main(String[] args) 
	{
		Scanner in=new Scanner(System.in);
		int test=in.nextInt();
		
		while((test--)!=0)
		{
			int coins=in.nextInt();
			System.out.println(((coins%6==0)? "chef":"misha"));
		}
		
		in.close();

	}

}
