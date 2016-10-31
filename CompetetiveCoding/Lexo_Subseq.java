

import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;
 
class Lexo_Subseq
{
   public static void main(String args[])
   {
     
      Scanner in = new Scanner(System.in);
      
      int test=in.nextInt();
      while(test--!=0)
      {
    	  ArrayList<String> arr=new ArrayList<String>();
    	  String string  = in.nextLine();         
    	  int length = string.length();          
    	  for(int c = 0 ; c < length ; c++ )
    	  {
    		  for(int i = 1 ; i <= length - c ; i++ )
    		  {
    			 String sub = string.substring(c, c+i);
    			 arr.add(sub);	
    		  }
    	  }
    	  new Lexo_Subseq().printAnswer(arr);
      	}
      in.close();
   }

   private void printAnswer(ArrayList<String> arr)
   {
	   Collections.sort(arr);
	   for(int i=0;i<arr.size();i++)
	   {
		   System.out.println(arr.get(i));
	   }
	   
   }
}