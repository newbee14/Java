import java.util.Arrays;
import java.util.Scanner;


public class IntToArray {

	public static void main(String[] args)
	{
		Scanner in=new Scanner(System.in);
		int n=in.nextInt();
		int[]ar=new int[n];	
		for(int i=0;i<n;i++)
			ar[i]=in.nextInt();
		Arrays.sort(ar);
		System.out.println(ar[0]+ar[1]);
		in.close();
	}

}
