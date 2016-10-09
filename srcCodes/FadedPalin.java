import java.util.Scanner;

public class FadedPalin {

	public static void main(String[] args) throws ArrayIndexOutOfBoundsException, NullPointerException
	{
		Scanner in=new Scanner(System.in);
		int test=in.nextInt();
		FadedPalin fp=new FadedPalin();
		while(test--!=0)
		{
			String a=in.next();boolean ans = false;
			int index=-1,len=a.length();
			char[] token=new char[len];
			for(int i=0;i<len;i++)
			{
				token[i]=a.charAt(i);
				if(token[i]=='.')
					index=i;
			}
			
			if(len%2==0)
			{
				token[index]=token[(len-index)-1];
				String bla=new String(token);
				ans=fp.isPalindrome(bla);
			}
			else if(len%2!=0)
			{
				token[index]=token[(len-index)-1];
				String bla=new String(token);
				ans=fp.isPalindrome(bla);
				if(ans && (index==(len-index-1)))
				{
					token[index]='a';
				}
			}
			if(ans){
				String bla=new String(token);			
				System.out.println(bla);}
			else
				System.out.println("-1");
			
		}
		in.close();
	}
	private boolean isPalindrome(String s) {
		  int n = s.length();
		  for (int i=0;i<(n / 2);++i) 
		  {
		     if (s.charAt(i) != s.charAt(n - i - 1))
		     {
		    	
		         return false;
		     }
		  }

		 
		  return true;
		}

}
