import java.util.Scanner;

public class TestClass
{
	public static void main(String args[])
	{
		Scanner in=new Scanner(System.in);
		String input1=in.nextLine();
		String input2=in.nextLine();
		String input3=in.nextLine();
		int input4=in.nextInt();
		
		if(input4==2)
		{
			
			int one=Character.getNumericValue(input1.charAt(input4));
			int two=Character.getNumericValue(input2.charAt(input4));
			int three=Character.getNumericValue(input3.charAt(input4));
			System.out.println(one+two+three);
		}
		else if(input4==1)
		{

			int one=Character.getNumericValue(input1.charAt(input4));
			int two=Character.getNumericValue(input2.charAt(input4));
			int three=Character.getNumericValue(input3.charAt(input4));
			System.out.println(one+two+three);
		}
		else{

			int one=Character.getNumericValue(input1.charAt(input4));
			int two=Character.getNumericValue(input2.charAt(input4));
			int three=Character.getNumericValue(input3.charAt(input4));
			System.out.println(one+two+three);
		}
			in.close();
	}
	
}
