import java.text.DecimalFormat;
import java.util.Scanner;
 
class income
{
   public static void main(String args[])
   {
     
      Scanner in = new Scanner(System.in);
      
      int size=in.nextInt();
      int[] arr=new int[size];
      DecimalFormat df = new DecimalFormat("0.00");
      System.out.println();
      for(int i=0;i<size;i++)
      {
    	  arr[i]=in.nextInt();
    	  if((i+1)%2!=0)
    	  {
    		  double ans=(double)Math.round(arr[(i+1)/2] * 100d) / 100d;
    		  System.out.print(df.format(ans)+" ");
    	  }
    	  else
    	  {
    		  double value=(arr[(i)/2]+arr[i/2+1])/2d;
    		  //double value=v/2d;
    		  //System.out.println(v+" "+value);
    		  double ans=(double)Math.round(value * 1000d) / 1000d;
    		  System.out.print(df.format(ans)+" ");
    	  }
    	  
      }
      in.close();
   }

}