package DP;

import java.util.Scanner;

public class MaxSubmatrix 
{
	public static void main(String args[])
	{
		Scanner in=new Scanner(System.in);
		int matSize=in.nextInt();
		int[][] ar=new int[matSize][matSize];
		for(int i=0;i<matSize;i++)
		{
			for(int j=0;j<matSize;j++)
			{
				ar[i][j]=in.nextInt();
			}
		}
		for(int i=0;i<matSize;i++)
		{
			for(int j=0;j<matSize;j++)
			{
				System.out.print(ar[i][j]+"\t");
			}
			System.out.println();
		}
		int[][] dupAr=new int[matSize][matSize];
		
		for(int i=0;i<matSize;i++)
		{
			dupAr[0][i]=ar[0][i];
			dupAr[i][0]=ar[i][0];
		}
		for(int i=1;i<matSize;i++)
		{
			for(int j=1;j<matSize;j++)
			{
				if(ar[i][j]==0)
					dupAr[i][j]=0;
				else
				{
					int temp=Math.min(ar[i][j-1],ar[i-1][j-1]);
					dupAr[i][j]=Math.min(ar[i-1][j], temp)+1;					
				}
			}
		}
		System.out.println("\n");
		for(int i=0;i<matSize;i++)
		{
			for(int j=0;j<matSize;j++)
			{
				System.out.print(dupAr[i][j]+"\t");
			}
			System.out.println();
		}
		
		in.close();
	}
}
