import java.util.Scanner;
import java.util.StringTokenizer;

 
class StringToArray
{
   public static void main(String args[])throws ArithmeticException
   {
     
      Scanner in = new Scanner(System.in);
      
      int size=in.nextInt()+1,sum=0,len=size-2;
      while(size--!=0){
    	  String integers = in.nextLine();
    	  StringTokenizer strToken = new StringTokenizer(integers);
    	  int count = strToken.countTokens();
      //Reads in the numbers to the array
      System.out.println("Count: " + count);
    	  int[] arr = new int[count];
    	  int[] ar=new int[count/2];
    	  for(int x = 0;x < count;x++)
    	  {
    		 
    			  arr[x] = Integer.parseInt((String)strToken.nextElement());
         // System.out.println(arr[x]);}
    		  
    	  }
    	  //if(arrayLen>1){
    	  for(int i=0;i<count/2;i++)
    	  {
    		  ar[i]=arr[i+1];
    		  sum=sum+ar[i];
    	  }
    	    	 
      }
      int avg=sum-len;
      System.out.println(avg);
      if(len>0)
    	  System.out.println(avg/len);
      else
    	  System.out.println(avg);

   in.close();
   }

}
 
