import java.util.ArrayList;


public class ReverseString {

	public static void main(String[] args)
	{
		String a="Java is a high level language";
		ArrayList<Integer> whitespace=new ArrayList<Integer>();
		for(int i=0;i<a.length();i++)
		{
			if(a.charAt(i)==32)
				whitespace.add(i);
			//whitespace.add(0, 1);
		}
		
		System.out.print(a.substring((whitespace.get(whitespace.size()-1)),a.length())+" ");
		for(int i=0;i<=whitespace.size()+1;i++)
		{	
			//System.out.print((whitespace.get(whitespace.size()-1))+" "+i+" ");
			System.out.print(a.substring((whitespace.get(whitespace.size()-2)), (whitespace.get(whitespace.size()-1)))+" ");
			whitespace.remove(whitespace.size()-1);
		}
		System.out.print(a.substring(0, whitespace.get(0))+" ");
	}

}
