import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;


public class Binop {

	@SuppressWarnings("unused")
	public static void main(String[] args) 
	{
		Scanner in=new Scanner(System.in);
		int test=in.nextInt();
		int[][] ar=new int[][] {{0,0,0},
				  				{1,0,1},
				  				{1,0,1},
				  				{1,1,0}};
		while(test--!=0)
		{
			String a=in.next();
			String b=in.next();
			int[] a1=new int[a.length()];
			int[] b1=new int[b.length()];
			
			for(int i=0;i<=a.length();i++)
			{
				a1[i]=Integer.parseInt(Arrays.toString(a1));
				b1[i]=Integer.parseInt(Arrays.toString(b1));
			}
			
			String result=operations(a1,b1);
			
		}
		in.close();
	}

	private static String operations(int[] a1, int[] b1) 
	{
		String result="";
		
		
		
		
		return result;
	}
	private int[] add(int ai, int aj)
	{
		int[] add=new int[2];
		int result=ai&aj;
		ai=result&ai;
		aj=result&aj;
		add[0]=ai;
		add[1]=aj;
		return add;
		
	}
	private int[] xor(int ai, int aj)
	{
		int[] xor=new int[2];
		int result=ai^aj;
		ai=result^ai;
		aj=result^aj;
		xor[0]=ai;
		xor[1]=aj;
		return xor;
		
	}
	private int[] or(int ai, int aj)
	{
		int[] or=new int[2];
		int result=ai|aj;
		ai=result|ai;
		aj=result|aj;
		or[0]=ai;
		or[1]=aj;
		return or;
		
	}

}
