import java.util.ArrayList;
import java.util.Scanner;


public class LatticeMultiplication {
	
	public static void main(String[] args)
	{
		Scanner in=new Scanner(System.in);
		int a=in.nextInt();
		int b=in.nextInt();
		LatticeMultiplication lm=new LatticeMultiplication();
		ArrayList<Integer> bigNumber=toArray(a);
		ArrayList<Integer> bigNumber1=toArray(b);
		int arrayListSize=bigNumber.size()+bigNumber1.size();
		lm. multiply(bigNumber,b,arrayListSize);
		
		in.close();
	}

	private static ArrayList<Integer> toArray(int a) 
	{
		ArrayList<Integer> arr=new ArrayList<Integer>();
		while(a!=0)
		{
			arr.add(a%10);
			//System.out.println(arr);
			a/=10;
		}
		//arr.add(0);
		return arr;
	}

	private void multiply(ArrayList<Integer> bigNumber, int b,int arrayListSize) 
	{
		int rowsize=arrayListSize-bigNumber.size();
		int[][] ar=new int[rowsize][arrayListSize];
		int row=0;
		while(b!=0)
		{
			for(int colControl=arrayListSize-1;colControl>=0&&row<rowsize;colControl--)
			{			
			int temp=b%10;
			int get=0;
			int carry=0,multiply;
			
			for(int col=colControl;col>=0;col--)
			{ 
				if(get<bigNumber.size())
				{
					 multiply=(bigNumber.get(get)*temp)+carry;
				}
				else
				{
					 multiply=carry;
				}
				//int multiply=(num*temp)+carry;
				carry=0;
				//System.out.println("multiply"+multiply);
				int number=multiply%10;
				//System.out.println("number"+number);
				carry=carry+(multiply/10);
				//System.out.println("carry"+carry);
				ar[row][col]=number;
				//System.out.println("ar[row][col]"+row+col+" "+ar[row][col]);
				get++;
			}
			b/=10;carry=0;row++;
		}}
		addUtility(ar,arrayListSize,rowsize);
	}

	private void addUtility(int[][] ar,int arrayListSize, int rowsize) 
	{ 
		for(int row=0;row<rowsize;row++)
		{
			for(int col=0;col<=arrayListSize-1;col++)
			{
				System.out.print(ar[row][col]);
			}
			System.out.println();
		}
		String sum="";
		int	carry=0;
		for(int col=arrayListSize-1;col>=0;col--)
		{
			int temp=0+carry;
			for(int row=0;row<rowsize;row++)
			{
				temp+=ar[row][col];	
				//System.out.println("ar"+row+col+ar[row][col]);
			}
			carry=0;
			//System.out.println("temp"+temp);
			sum=temp%10+sum;
			//System.out.println("sum"+sum);
			carry=carry+(temp/10);
			//System.out.println("carry"+carry);
		}
			//System.out.print(sum);
		printUtility(sum);
	}

	private void printUtility(String sum) 
	{
		System.out.print(sum);
		
	}

}
