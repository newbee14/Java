import java.util.Arrays;
import java.util.Scanner;

public class WallColor 
{
	public static void main(String args[])
	{
		Scanner in= new Scanner (System.in);
		int test=in.nextInt();
		while(test--!=0)
		{	
			int room=in.nextInt();
			String[] roomColour=new String[room];
			int red=0,blue=0,green=0;//change=0;
			int[] colourChange=new int[3];
			for(int i =0;i<room;i++)
			{
				roomColour[i]= in.next();
				//System.out.println(roomColour[i]);
				if(roomColour[i].equalsIgnoreCase("R"))
				{
					red++;
					
				}
				else if(roomColour[i].equalsIgnoreCase("B"))
				{
					blue++;
				}
				else if(roomColour[i].equalsIgnoreCase("G"))
				{
					green++;
					
				}
			}
			colourChange[0]=red;
			colourChange[1]=blue;
			colourChange[2]=green;
			Arrays.sort(colourChange);
			System.out.println(colourChange[0]+colourChange[1]);
			/*if((red>=blue)&&(red>=green))
			{
				change=blue+green;
				System.out.println(change);
			}
			else if((blue>=red)&&(blue>=green))
			{
				change=red+green;
				System.out.println(change);
			}
			else if((green>=red)&&(green>=blue))
			{
				change=red+blue;
				System.out.println(change);
			}
			else if(red==green&&green==blue)
			{
				change=red+blue;
				System.out.println(change);
			}
			else
			{
				System.out.println(change);
			}**/
			
		}
		in.close();
	}
}
