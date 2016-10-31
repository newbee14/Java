import java.util.Scanner;


public class HeadBob {

	@SuppressWarnings("unused")
	public static void main(String[] args)
	{
		Scanner in=new Scanner(System.in);
		int test=in.nextInt();
		while(test-->0)
		{
		
			int n=in.nextInt();//,countNotSure=0,countIndian=0;
		    String a=in.next();
		    /*
		    char[] ar=String.valueOf(a).toCharArray();
		    for(int i=0;i<ar.length;i++)
		    {
		    	//ar[i]=in.next();
		    	if(ar[i]=='N')
		    	
		    		countNotSure++;
		    	
		    	else if(ar[i]=='I')
		    		
		    		countIndian++;
		    	
		    }
		    System.out.println(countNotSure);
		    if(countNotSure==n)
		    	System.out.println("Not Sure");
		    else if(countIndian>0)
		    	System.out.println("Indian");
		    else
		    	System.out.println("Foriengner");**/
		    if(a.contains("I"))
		    	System.out.println("Indian");
		    else if(a.contains("Y"))
		    	System.out.println("Foriengner");
		    else
		    	System.out.println("Not Sure");
		}
		in.close();
		
	}

}
