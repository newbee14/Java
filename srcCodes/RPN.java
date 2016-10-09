import java.util.Scanner;
import java.util.Stack;


public class RPN 
{
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public static void main(String args[])
	{
		Scanner in=new Scanner(System.in);
		System.out.println("Test cases");
		int test=in.nextInt();
		
		while(test--!=0)
		{
			Stack st=new Stack();
			String exp=in.next();
			String[] arr=exp.split("");
			
			for(int i=0;i<exp.length();i++)
			{
				if(arr[i].equals('('))
					st.push(arr[i]);
				
				
					while(!(arr[i].equals(')'))&&!(arr[i].equals('(')))
					{
						if(arr[i].equals('*')||arr[i].equals('/')||arr[i].equals('+')||arr[i].equals('-')||arr[i].equals('^'))
							st.push(arr[i]);
						else
							System.out.print(arr[i]);
					}
				
				if(arr[i].equals(')')&&!exp.isEmpty())
				{
					String pop=(String) st.pop();
					while(!(pop.equals('('))&&!(exp.isEmpty()))
					{
						System.out.print(pop);
						 pop=(String) st.pop();
					}
				}
			
		}
		}
		in.close();
	}
}
