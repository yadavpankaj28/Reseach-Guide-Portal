
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class changepassword extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        String oldpass = (String) req.getParameter("old");
        String newpass = (String) req.getParameter("newpass");
        String confpass = (String) req.getParameter("confpass");

        try {

            mypack.Conn c1 = new mypack.Conn();
            Integer userid = (Integer) req.getAttribute("userid");
            String qyer = "select * from login where password='"+oldpass+"' AND userid="+userid+"";

            ResultSet rs = c1.s.executeQuery(qyer);
            if (rs.next()) {
                if (newpass.trim().equals("") || confpass.trim().equals("")) {
                    out.println("New Password and Confirm Password Cannot be Empty");
                } else if (!newpass.equals(confpass)) {
                    out.println("New Password and Confirm Password Does Not Match");
                }

                System.out.println("update login set password='"+newpass+"' where id="+userid);

                c1.s.executeUpdate("update login set password='"+newpass+"' where id="+userid);
                out.print("Password changed successfully");

            } else {
                out.print("Invalid Old Password");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
