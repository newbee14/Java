import java.io.IOException;
import java.util.Scanner;


public class NextPalin {

	public static void main(String[] args) throws IOException
	{
		Scanner in=new Scanner(System.in);
		int test=in.nextInt();
		while(test-->0)
		{
			String number=in.next();
			char[] x=number.toCharArray();
			int[] ar=new int[x.length+1];
			for(int i=0;i<=ar.length-2;i++)
				ar[i]=Character.getNumericValue(x[i]);
			plaindrome(ar);
			
		}
		in.close();
	}

	private static void plaindrome(int[] ar) 
	{
		int mid=(ar.length/2)-1;
		int dec=mid;
		int[] arCopy=new int[ar.length];
		System.arraycopy(ar, 0, arCopy, 0, ar.length);
		boolean all9;
		for(int i=mid+1;i<ar.length-1;i++)
		{
			arCopy[i]=ar[dec];	
			dec--;	
		}
		int a=ar[0];
		int b=arCopy[0];
		for(int i=1;i<ar.length-1;i++)
		{
			a=(a*10)+ar[i];
			b=(b*10)+arCopy[i];
		}
		while(b<=a)
		{
		
		}
				
	}

}
