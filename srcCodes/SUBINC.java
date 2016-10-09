import java.util.Arrays;
import java.util.Scanner;


public class SUBINC 
{
	public static  void main (String args[])
	{
		Scanner in=new Scanner(System.in);
		short test=in.nextShort();
		int length=in.nextInt();
		long [] ar= new long[length];
		while(test--!=0)
		{
			for(int i=0;i<length;i++)
			{
				ar[i]=in.nextLong();
			}
			Arrays.sort(ar);
			int count=0;
			long m=ar[0];
			for(int i=0;i<length;i++)
			{
				for(int j=i;j<length;j++)
				{
					if((ar[i]>=m)&&(ar[i]<=ar[j]))
					{						
							m=ar[j];
							count++;
					}
				}
			}
			System.out.println(count);
		}
		in.close();
	}
}
