package in.suwidha.model.mail.email;


import in.suwidha.model.buisnessdelegate.RandomString;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class SendMail
{
	
	static public String sendForgotPasswordQuery(String name,String email,long contact)
	{
		char[] c=RandomString.generatePswd(6, 10, 2, 2, 1);
		String s=new String(c);
		String k=null;
		try
	    {		        
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
						return new PasswordAuthentication("suwidhacenter@gmail.com","@ditideep@kh@rm@n");
					}
			});
			try 
			{
				Message message = new MimeMessage(session);
				message.setFrom(new InternetAddress("suwidhacenter@gmail.com"));
				message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
				message.setSubject("Your New Password");
				message.setText("Dear!"+name+"Your New Password is:"+s);

				Transport.send(message);
				
				System.out.println("Thanks! Your mail has been sent!");
				System.out.println("Done");
				k=s;

			}
			catch (MessagingException e) 
			{
				throw new RuntimeException(e);
			}
	    }
		catch (Exception e)
	    {
	    	e.printStackTrace();
		}
	    return k;
	}
   
    static public int sendEmail(String name,String receiver_id,String Subject,String query_text) 
    {
    	int k=0;
    	try
    	{
    		//PrintWriter out			=	response.getWriter();        
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
					return new PasswordAuthentication("suwidhacenter@gmail.com","@ditideep@kh@rm@n");
				}
    		});

    		try 
    		{
    			Message message = new MimeMessage(session);
    			message.setFrom(new InternetAddress("suwidhacenter@gmail.com"));
    			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse("suwidhacenter@gmail.com"));
    			message.setSubject("Verification Mail");
    			message.setText("Dear Admin!"+"\n\n\n User Query is ::  "+query_text+"\n\n\n\n No spam to my email, please!"+
    						"UserName is:"+name+"useremail is"+receiver_id);
    			Transport.send(message);
    			System.out.println("Thanks! Your mail has been sent!");
    			System.out.println("Done");
    			k=1;
    		}
    		catch (MessagingException e) 
    		{
    			throw new RuntimeException(e);
    		}
    	}
    	catch (Exception e) 
    	{
    		e.printStackTrace();
    	}
    	return k;
    }
    static public int passwordChanged(String name,String email,String password)
	{
    	int k=0;
    	try
    	{        
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
					return new PasswordAuthentication("suwidhacenter@gmail.com","@ditideep@kh@rm@n");
				}
    		});

    		try 
    		{
    			Message message = new MimeMessage(session);
    			message.setFrom(new InternetAddress("suwidhacenter@gmail.com"));
    			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
    			message.setSubject("Your Password Has Been Changed");
				message.setText("Dear!"+name+"Your New Changed Password is:"+password);
    			Transport.send(message);
    			System.out.println("Thanks! Your mail has been sent!");
    			System.out.println("Done");
    			k=1;
    		}
    		catch (MessagingException e) 
    		{
    			throw new RuntimeException(e);
    		}
    	}
    	catch (Exception e) 
    	{
    		e.printStackTrace();
    	}
    	return k;
	}
}
