package in.suwidha.model.buisnessdelegate;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Utility 
{
	public static String getEncryptPassword(String pass)
	{
		MessageDigest m=null;
		try
		{
			m=MessageDigest.getInstance("MD5");
		}
		catch(NoSuchAlgorithmException e)
		{
			System.out.println("Md5 exception"+e);
		}
		m.update(pass.getBytes(),0,pass.length());
		BigInteger bigInt=new BigInteger(1,m.digest());
		String ep=bigInt.toString(16);
		return ep;
	}
}
