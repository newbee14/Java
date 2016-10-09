import java.util.HashSet;
import java.util.Set;


public class StringPermute {

	public static void main(String[] args) 
	{
		String a="123";
		for(String s: allPermute(a))
			System.out.println(s);
		
	}
	public static Set<String> allPermute(String a)
	{
		Set<String> set=new HashSet<String>();
		int len=a.length();
		if(len==1)
			set.add(a);
		else
		{
			for(int i=0;i<len;i++)
			{
				set.addAll(concat(a.charAt(i),allPermute(a.substring(0,i)+
						a.substring(i+1, len))));
			}
		}
		return set;
		
	}
	public static Set<String> concat(char a,Set<String> last)
	{
		Set<String> set2=new HashSet<String>();
			for(String s: last)
				set2.add(a+s);
		return set2;
		
	}

}
