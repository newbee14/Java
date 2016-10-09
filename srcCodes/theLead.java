
import java.util.Scanner;


public class theLead 
{
	public static void main (String args[])
	{
		Scanner in= new Scanner (System.in);
		System.out.println("Enter No. Of Games");
		int round=in.nextInt();
		int[][] player=new int[round][2];
		System.out.println("Enter the points of both the players");
		int[][] diff=new int[round][2];
		
		for(int i=0;i<round;i++)
		{
			for(int j=0;j<2;j++)
				player[i][j]=in.nextInt();
			if(player[i][0]>player[i][1])
			{
				diff[i][1]=player[i][0]-player[i][1];
				diff[i][0]=1;
			}
			else
			{
				diff[i][1]=player[i][1]-player[i][0];
				diff[i][0]=2;
			}
		}
		int c=diff[0][1],c1=diff[0][0];
		
		for (int k=1;k<round;k++)
		{
			if(c<diff[k][1])
			{
				c=diff[k][1];
				c1=diff[k][0];
			}
			
		}
		System.out.println("Player won"+c1+"with difference"+c);
		in.close();
	}

}
