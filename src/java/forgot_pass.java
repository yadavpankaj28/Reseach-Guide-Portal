
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class forgot_pass extends HttpServlet {
    
String mymail ="oopsinfo34@gmail.com";

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
    
        mypack.Conn db=new mypack.Conn();
String email=req.getParameter("email");
ResultSet rs;
String password="";
try
{

 rs = db.s.executeQuery("select * from login where username='"+email+"'");
if(rs.next())
    email = rs.getString("password");
    rs.close();
}catch(Exception e){e.printStackTrace(); }

        mymail = email;
            
            sendmail(email,password);
            
       
       //out.println("Record Inserted");
    //res.sendRedirect("login.jsp");
    }
    
    void sendmail(String email,String p)
    {
    
		final String username = "rgp.thapar@gmail.com";
		final String password = "pank9910";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });

		try {

			Message message = new MimeMessage(session);
		//	message.setFrom(new InternetAddress("rgp.thapar@gmail.com"));
                       message.setFrom(new InternetAddress("rgp.thapar@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(email));
			message.setSubject("you credential");
			message.setText("username="+email
				+ "\n\n Password="+p);

			Transport.send(message);

			System.out.println("Done");

		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
    }
    
    
