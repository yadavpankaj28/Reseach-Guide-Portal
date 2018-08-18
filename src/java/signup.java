
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

public class signup extends HttpServlet {
String mymail ="rgp.thapar@gmail.com";
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        String rollno = (String) req.getParameter("a1");
        String name = (String) req.getParameter("a2");
        String gender = (String) req.getParameter("t1");
        String email = (String) req.getParameter("a3");
        mymail = email;
        String stream = (String) req.getParameter("a4");
        String qualification = (String) req.getParameter("a5");
        String interests = (String) req.getParameter("a6");
        String mobile = (String) req.getParameter("a7");
        String exp = (String) req.getParameter("t2");
        String gate = (String) req.getParameter("t3");
        String research_details = (String) req.getParameter("a8");
        String password = (String) req.getParameter("a9");
    
        try
        {
            mypack.Conn c1 = new mypack.Conn();
            PreparedStatement ps = c1.c.prepareStatement("insert into student values (?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, rollno);
            ps.setString(2, name);
            ps.setString(3, gender);
            ps.setString(4, email);
            ps.setString(5, password);
            ps.setString(6, stream);
            ps.setString(7, qualification);
            ps.setString(8, interests);
            ps.setString(9, mobile);
            ps.setString(10, exp);
            ps.setString(11, gate);
            ps.setString(12, research_details);
            ps.executeUpdate();
            
            
            ResultSet rs = c1.s.executeQuery("select email,password from student");
            
            if(rs.next())
            {
                
                PreparedStatement ps1=c1.c.prepareStatement("insert into login values(null,?,?,?)");
            
                ps1.setString(1,email);
                ps1.setString(2,password);
                ps1.setString(3,"student");
            
                ps1.executeUpdate();
                mymail = email;
            }
            
            sendmail(mymail,password);
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
      //  out.println("Record Inserted");
      
    
      res.sendRedirect("login.jsp");
     JOptionPane.showMessageDialog(null,"Congratulatoins,Successfully Registered!","NULL", JOptionPane.PLAIN_MESSAGE);
    }
    
    void sendmail(String m,String p)
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
			message.setSubject("Your Credentials:");
			message.setText("username = "+m
				+ "\n\n Password = "+p);

			Transport.send(message);

			System.out.println("Done");

		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
    }
    
    
