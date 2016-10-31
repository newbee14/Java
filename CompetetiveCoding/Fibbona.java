package DP;

import java.math.BigInteger;
import java.util.Scanner;

public class Fibbona {

	public static void main(String[] args) {
		Scanner in=new Scanner(System.in);
		
		int t1=in.nextInt();
		int t2=in.nextInt();
		int n=in.nextInt();
		BigInteger[] t=new BigInteger[n];
		t[0]=BigInteger.valueOf(t1); t[1]=BigInteger.valueOf(t2);
		for(int x=2;x<n;x++)
		{
			t[x]=t[x-2].add(t[x-1].pow(2));
		}
		System.out.println(t[n-1]);
		
		in.close();
	}

}
