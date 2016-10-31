import java.util.Scanner;

public class Max_subarray {
	public int maxSubArray(int[] A) {
		int max = A[0];
		int[] sum = new int[A.length];
		sum[0] = A[0];
 
		for (int i = 1; i < A.length; i++) {
			sum[i] = Math.max(A[i], sum[i - 1] + A[i]);
			max = Math.max(max, sum[i]);
		}
 
		return max;
	}
	public static void main(String args[])
	{
		Scanner in=new Scanner (System.in);
		int test=in.nextInt();
		while(test--!=0)
		{
			int size=in.nextInt();
			int[] a=new int[size];
			for(int i=0;i<size;i++)
				a[i]=in.nextInt();
			
			int answer=new Max_subarray().maxSubArray(a);
			System.out.println(answer);
		}
		in.close();
	}
}