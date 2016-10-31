import java.util.Scanner;

public class ChefRecep 
{
	
	public static void main(String[] args) 
	{
		Scanner in=new Scanner(System.in);
		int test=in.nextInt();
		while(test--!=0)
		{
				int coins=in.nextInt(),count=0;
			
				one:while(coins>0)
				{
					two:for(int i=1;i<=12;i++)
					{
						if(coins==Math.pow(2, i))
						{
							count++;
							break one;
						}
						else if(coins<Math.pow(2, i))
						{
							coins=(int) (coins-Math.pow(2, i-1));
							count++;
							break two;
						}	
						else if(coins>Math.pow(2, 11))
						{
							coins-=Math.pow(2, 11);
							count++;
							break two;
						}
						
					}
				}

				System.out.println(count);
			}
		
		in.close();
	}

}
