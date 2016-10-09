
import java.util.Map;
import java.util.Scanner;
import java.util.TreeMap;


public class SuffixArray {

	public static void main(String[] args)
	{
		Scanner in=new Scanner(System.in);
		String abc=in.nextLine()+"$";
		Map<Integer, String> suffix=new TreeMap<Integer, String>();
		for(int i=0;i<abc.length();i++)
		{
			String newABC=abc.substring(i, abc.length());
			suffix.put(newABC.length(),newABC );
			
		}
		System.out.println(suffix);
		//suffix.
		
		in.close();
	}

}
