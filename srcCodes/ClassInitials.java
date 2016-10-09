
import java.util.ArrayList;
import java.util.Scanner;


public class ClassInitials {

	public static void main(String[] args) 
	{
		Scanner in=new Scanner(System.in);
		String a="Sachin Ramesh Tendulkar Ashish Pandey";
		ArrayList<Integer> whitespace=new ArrayList<Integer>();
		for(int i=0;i<a.length();i++)
		{
			if(a.charAt(i)==32)
			{
				whitespace.add(i);
			}
		}
		int l=whitespace.size();
		int last=whitespace.get(l-1);
		whitespace.remove(l-1);
		System.out.print(a.charAt(0)+" ");
		for(int i: whitespace)
		{
				
					System.out.print(a.charAt(i+1)+" ");
		}

		System.out.print(a.substring(last+1 , a.length())+" ");
		
		
		in.close();
	}

}
