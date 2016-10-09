import java.util.Scanner;


public class Anagram {
	public static void main(String[] args) {
	Scanner in=new Scanner(System.in);
	String a=in.next();
	String b=in.next();
	String c=a.concat(b);
	char c1[]=c.toCharArray();
	
	
	in.close();
	}
}
