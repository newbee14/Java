package DP;

import java.util.Arrays;
import java.util.Scanner;

public class MaxSubarray {
	public static void main(String args[]){
		Scanner in=new Scanner(System.in);
		int test=in.nextInt();
		while(test--!=0){
			int n=in.nextInt();
			int[] ar=new int[n];
			int maxSumCont=0,maxSumNonCont=0,maxTillNow=0;
			for(int i=0;i<n;i++){
				ar[i]=in.nextInt();
				maxTillNow=maxTillNow+ar[i];
				if(maxTillNow<0){
					maxTillNow=0;
				}
				if(maxTillNow>maxSumCont){
					maxSumCont=maxTillNow;
				}
				if(ar[i]>0){
					maxSumNonCont+=ar[i];
				}
					
			}
			if(maxSumCont==0){
				Arrays.sort(ar);
				maxSumCont=ar[n-1];
				maxSumNonCont=ar[n-1];
			}
			System.out.println(maxSumCont+" "+maxSumNonCont);							
		}
		in.close();
	}
}
