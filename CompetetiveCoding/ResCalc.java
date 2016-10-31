import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;


public class ResCalc {

	public static void main(String[] args) 
	{
		Scanner in=new Scanner(System.in);
		int test=in.nextInt();
		while(test--!=0)
		{
			int players=in.nextInt();
			int[] arPlayer=new int[players];
			int x=0;			
			while(players-->0)
			{
				Set<Integer> set = new HashSet<Integer>();
				arPlayer[x]=in.nextInt();
				for(int i=0;i<arPlayer[x];i++)
				{
					set.add(in.nextInt());
					
				}
				if(set.size()==4)		
					arPlayer[x]++;
				else if(set.size()==5)		
					arPlayer[x]+=2;
				else if(set.size()==6)		
					arPlayer[x]+=4;
								
				x++;
			}
			int temp=arPlayer[0],tempIndex=0;boolean allEquals=true;
			for(int i=1;i<arPlayer.length;i++)
			{				
				if(arPlayer[i]>temp)
				{
					temp=arPlayer[i];tempIndex=i;
				}
				if (arPlayer[i-1] != arPlayer[i])
			        allEquals = false;
			}
			if(allEquals)
				System.out.println("tie");
			else if(tempIndex==0)
				System.out.println("chef");
			else
				System.out.println(tempIndex+1);
		}
		
		in.close();
	}

}
