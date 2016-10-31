import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;


public class Tsort 
{
	public static void main(String args[])
	{
		Scanner in = new Scanner (System.in);
		int input=in.nextInt();
		ArrayList<Integer> ar= new ArrayList<Integer>();
		for(int x=0;x<input;x++)
			ar.add(in.nextInt());

		Collections.sort(ar);
		
		for(int i:ar)
			System.out.println(i);
	
	in.close();
	}
}
