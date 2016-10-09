interface MathOp
{
	public int opertion(int a,int b);
}

public class LambdaOne 
{
	

	public static void main(String[] args) 
	{
		//LambdaOne.main(5);
		LambdaOne lambdaOne=new LambdaOne();
		MathOp additoin=(a,b)-> a+b;
		MathOp subtraction=(a,b)->a-b;
		
		System.out.println(lambdaOne.operate(10,5, additoin));
		System.out.println(lambdaOne.operate(10,5,subtraction));
		
	}
	private int operate(int a,int b,MathOp mathOp)
	{
		return mathOp.opertion(a, b);
	}
	
	
}

	



