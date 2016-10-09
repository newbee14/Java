import java.util.Scanner;


public class LeftRotation {

	public static void main(String[] args) {
		Scanner in=new Scanner(System.in);
		int n=in.nextInt();
		int d=in.nextInt();
		int[] ar=new int[n];
		for(int x=0;x<n;x++)
		{
			ar[x]=in.nextInt();
		}
		for(int i=d;i<n;i++)
		{
			System.out.print(ar[i]+" ");
		}
		for(int i=0;i<d;i++)
		{
			System.out.print(ar[i]+" ");
		}
		
		in.close();
	}

}
