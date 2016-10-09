import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;


public class DevArray {

	/**
	 * @param args
	 */
	public static void main(String[] args) 
	{
		Scanner in=new Scanner(System.in);
		int sizeOfArray=in.nextInt();
		int noOfQuery=in.nextInt();
		ArrayList<Integer> num=new ArrayList<Integer>();
		//int[] num=new int[sizeOfArray];
		//int[] query=new int[noOfQuery];
		
		for(int i=0;i<sizeOfArray;i++)
			num.add(i,in.nextInt());
		
		
	if(num.size()>1)
	{
		
			for(int i=0;i<num.size();i++)
			{
				int min=Math.min(num.get(i), num.get(i+1));
				int max=Math.max(num.get(i), num.get(i+1));
				int x=(min==max)?min:(min+1);
				num.remove(i);
				num.remove(i);
				num.add(0,x);
			}
			Collections.sort(num);
			System.out.print(num);
		}
	
		
		while(noOfQuery!=0)
		{
			int query=in.nextInt();
			if(query>=num.get(0)&&query<=num.get(1))
				System.out.println("YES");
			else
				System.out.println("NO");
			noOfQuery--;
		}


		in.close();
	}

	
}
