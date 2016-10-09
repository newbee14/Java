import java.util.ArrayList;
import java.util.Scanner;


public class FactorialMultiply {
	
	public static void main(String[] args)
	{
		Scanner in=new Scanner(System.in);
		long fact=in.nextLong();
		FactorialMultiply fm=new FactorialMultiply();
		ArrayList<Integer> bigNumber=toArray(fact);
		fm. multiply(fact,bigNumber);
		
		in.close();
	}

	private static ArrayList<Integer> toArray(long fact) 
	{
		
		ArrayList<Integer> arr=new ArrayList<Integer>();
		while(fact!=0)
		{
			arr.add((int) (fact%10));
			//System.out.println(arr);
			fact/=10;
		}
		//arr.add(0);
		return arr;
	}

	private void multiply(long fact, ArrayList<Integer> bigNumber) 
	{
		//System.out.println("fact"+fact);
		long fact1=fact-1;
		ArrayList<Integer> bigNumber1=toArray(fact1);
		int arrayListSize=bigNumber.size()+bigNumber1.size();
		int rowsize=bigNumber1.size();
		int[][] ar=new int[rowsize][arrayListSize];
		int row=0;
		//System.out.println(arrayListSize);

		while(!bigNumber1.isEmpty())
		{
			for(int colControl=arrayListSize-1;colControl>=0&&row<rowsize;colControl--)
			{	
				int temp;
			if(bigNumber1.isEmpty())
				break;
			else
				temp=bigNumber1.get(0);
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
				System.out.println("multiply"+multiply);
				int number=multiply%10;
				System.out.println("number"+number);
				carry=carry+(multiply/10);
				System.out.println("carry"+carry);
				ar[row][col]=number;
				System.out.println("ar[row][col]"+row+col+" "+ar[row][col]);
				get++;
			}
			bigNumber1.remove(0);carry=0;row++;
		}}
		addUtility(ar,arrayListSize,fact,rowsize);
	}

	private void addUtility(int[][] ar,int arrayListSize, long fact, int rowsize) 
	{ 
		
		ArrayList<Integer> sum = new ArrayList<Integer> ();
		int	carry=0;
		for(int col=arrayListSize-1;col>=0;col--)
		{
			int temp=0+carry;
			for(int row=0;row<rowsize;row++)
			{
				temp+=ar[row][col];	
				System.out.println("ar"+row+col+ar[row][col]);
			}
			carry=0;
			System.out.println("temp"+temp);
			sum.add(temp%10);
			System.out.println("sum"+sum);
			carry=carry+(temp/10);
			System.out.println("carry"+carry);
			/*long f=fact-2;
			if(f==0)
				break;**/
		}
		//System.out.println("fact"+fact);
		
		if(fact-2>0)	//System.out.print(sum);
			multiply(fact-1, sum);
		else
			printUtility(sum);
	}

	private void printUtility(ArrayList<Integer> sum) 
	{
		System.out.println(sum);
		int index = 0;// String ans = "";
		for(int i=sum.size()-1;i>=1;i--)
		{
			if(sum.get(i)!=0)
			{
				index=i;break;
			}
		}
		for(int i=index;i>=0;i--)
		{
			//ans=ans+sum.get(i);
			System.out.print(sum.get(i));
		}
		//System.out.println(ans);
		
	}

}
