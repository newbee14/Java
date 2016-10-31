import java.util.Scanner;


public class SnapeLadder {

	public static void main(String[] args) 
	{
		Scanner in=new Scanner(System.in);
		int test=in.nextInt();
		while(test--!=0)
		{
			double base=in.nextInt();
			double leftSide=in.nextInt();
			double rightSideMin=Math.sqrt((Math.pow(leftSide, 2)-(Math.pow(base, 2))));
			double rightSideMax=Math.sqrt((Math.pow(leftSide, 2)+(Math.pow(base, 2))));
			System.out.println(rightSideMin+" "+rightSideMax);
					
		}
		
		in.close();
	}

}
