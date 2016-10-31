import java.util.Arrays;
import java.util.Comparator;
import java.util.Scanner;


public class LargestNumber
{

	//private static Comparator compare;

	public static void main(String[] args) 
	{
		Scanner in= new Scanner(System.in);
		String[] ar=new String[5];
		for(int i=0;i<5;i++)
			ar[i]=in.next();
		
		Arrays.sort(ar, new Comparator<String>() 
		{
			public int compare(String s1, String s2) 
			{
				
				return (s2+s1).compareTo(s1+s2);
			}
		} );
		for(int i=0;i<ar.length;i++)
			System.out.println(ar[i]);
		
	in.close();
	}
	
}
