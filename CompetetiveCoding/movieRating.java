import java.util.Scanner;


public class movieRating 
{
	public static void main(String args[])
	{
		Scanner in = new Scanner(System.in); 
		int test=in.nextInt();
		while(test--!=0)
		{
			int numberOfMovies=in.nextInt(),max=0,rate=0,index=0;
			int[] lengthMovie= new int[numberOfMovies];
			int[] ratingMovie= new int[numberOfMovies];
			//int[] multiply=new int[numberOfMovies];
			for(int i=0;i<numberOfMovies;i++)
			{
				lengthMovie[i]=in.nextInt();
				ratingMovie[i]=in.nextInt();
				//multiply[i]=lengthMovie[i]*ratingMovie[i];
			}
			for(int i=0;i<numberOfMovies;i++)
			{
				if((lengthMovie[i]*ratingMovie[i])>max)
				{
					max=lengthMovie[i]*ratingMovie[i];
					rate=ratingMovie[i];
					index=i;
				}
				else
				{
					if((lengthMovie[i]*ratingMovie[i])==max)
					{
						if(ratingMovie[i]>rate)
						{
							max=lengthMovie[i]*ratingMovie[i];
							index=i+1;
						}
						else if(ratingMovie[i]==rate)
						{
							if(index<i)
							{
								continue;
							}
							else
							{
								max=lengthMovie[i]*ratingMovie[i];
								rate=ratingMovie[i];
								index=i+1;	
							}
								
						}
						else
						{
							continue;
						}
					}
				}
			}
			System.out.println(index+1);
		}
		
		in.close();
	}
}
