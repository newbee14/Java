package edu.campus.BusinessDelegate;


import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class BusinessDelegateUtility 
{
	public static String fetchID(String id)
	{
		
		//System.out.println("id : "+id);
		String token[]=id.split("/");
		int generateID=Integer.parseInt(token[1]);
		generateID=generateID+1;
		String staffId="ECamp/"+generateID;
		return staffId;
	}
	
	public static String randomAlphaNumericPassword(int size)
	{
			
		    String chars = "abcdefghijklmnopqrstuvwxyz0123456789";
		    String ret = "";
		    int length = chars.length();
		    for (int i = 0; i < size; i ++){
		        ret += chars.split("")[ (int) (Math.random() * (length - 1)) ];
		    }
		    System.out.println("myrandompass"+ ret);
		    
		    return ret;
	}
	
	public static void mailSentForForgetPassword(String emailid,String password,String username)
	{

		 try
	     {	    	
	    
	        String receiver_id		=	emailid;
		        
	        Properties props = new Properties();
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.socketFactory.port", "465");
			props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "465");

			Session session = Session.getDefaultInstance(props,new javax.mail.Authenticator() 
			{
				protected PasswordAuthentication getPasswordAuthentication() 
					{
						return new PasswordAuthentication("virtualcampus6@gmail.com","campus@123");
					}
			});

			try 
			{
				Message message = new MimeMessage(session);
				message.setFrom(new InternetAddress("virtualcampus6@gmail.com"));
				message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(receiver_id));
				message.setSubject("Verification Mail");
				message.setText("Dear User!"+"\n\n\n Your username is ::  "+username+"\n\n\n Your new password is ::  "+password+"\n\n\n\n No spam to my email, please!");

				Transport.send(message);
				
				System.out.println("Thanks! Your mail has been sent!");
				System.out.println("Done");
				

			} catch (MessagingException e) {
				throw new RuntimeException(e);
			}
	    }catch (Exception e) {
	    	e.printStackTrace();
		}
	}
	
	public static String getEncryptedPassword(String pass)
	{
		MessageDigest md=null;
		try
		{
			md=MessageDigest.getInstance("MD5");
		}
		catch(NoSuchAlgorithmException e)
		{}
		md.update(pass.getBytes(),0,pass.length());
		BigInteger bi=new BigInteger(1,md.digest());
		
		String encrypass=bi.toString(16);
		return encrypass;
	}
	
	public static Date getSystemDate()
	{
		Calendar c= Calendar.getInstance();
		String cdate=c.get(Calendar.DATE)+"/"+((c.get(Calendar.MONTH))+1)+"/"+(c.get(Calendar.YEAR));
		DateFormat df=new SimpleDateFormat("dd/MM/yyyy");
		Date sysdate=new Date();
		try
		{
			sysdate=(Date)df.parseObject(cdate);
		}
		catch(Exception e)
		{
			System.out.println("Error in getting System Date :"+e);
		}
		return sysdate;
				
	}
}
	

