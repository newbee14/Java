import java.util.Scanner;


public class SqInTri {

	public static void main(String[] args) {
		Scanner in=new Scanner (System.in);
		int test=in.nextInt();
		while(test-->0)
		{
			int base=in.nextInt(),count=0;
			if(base<4)
				count=0;
			else{
			for(int i=base;i>3;i-=2,base-=2)
			{
				int act=0;
				if(base%2==0)
					act=base-1;
				else
					act=base-2;
				int sq=act/2;
				count=count+sq;
				System.out.println(base);
			}
			}
			System.out.println(count);				
		}
		in.close();
	}

}
