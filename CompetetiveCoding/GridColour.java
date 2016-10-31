import java.util.ArrayList;
import java.util.Scanner;


public class GridColour {

	public static void main(String[] args) 
	{
		Scanner in=new Scanner(System.in);
		ArrayList<String> input= new ArrayList<String>();
		int i = 0;
		do
		{ 	
			i++;
			input.add(in.next());
			//input.add(0, null);
		}while(input.get(i)!=null);
		System.out.println("end");
	}

}
