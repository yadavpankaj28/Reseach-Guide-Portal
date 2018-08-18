
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
import javax.swing.JOptionPane;


public class assign2 extends HttpServlet {
String mymail ="rgp.thapar@gmail.com";


    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
    
        mypack.Conn db=new mypack.Conn();
String password = req.getParameter("password");
String tid = req.getParameter("t_id");
String email="";
ResultSet rs;
try
{

 rs = db.s.executeQuery("select * from teacher where t_id="+tid);
if(rs.next())
    email = rs.getString("email");
    rs.close();
}catch(Exception e){e.printStackTrace(); }

try {
 rs = db.s.executeQuery("select * from login where username='"+email+"'");
 boolean flag = false;
if(rs.next())
    flag=true;

String q;
if(flag)
q="update login set password='"+password+"' where username='"+email+"'";
else
q = "insert into login values(null,'"+email+"','"+password+"','teacher')" ;
int n=db.s.executeUpdate(q  );



if(n>0){
    res.sendRedirect("assign.jsp");
     JOptionPane.showMessageDialog(null,"Congratulatoins,Successfully Registered!","NULL", JOptionPane.PLAIN_MESSAGE);
    //out.println("Credential Assigned check your email "+email);
}
else
{
    
    out.println("Error!Action not performed");
}    
}catch(Exception ee) { ee.printStackTrace();}

        mymail = email;
            
            sendmail(password);
            
       
       //out.println("Record Inserted");
    //res.sendRedirect("login.jsp");
    }
    
    void sendmail(String p)
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
				InternetAddress.parse(mymail));
			message.setSubject("Your Credentials");
			message.setText("username="+mymail
				+ "\n\n Password="+p);

			Transport.send(message);

			System.out.println("Done");

		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
    }
    
    
