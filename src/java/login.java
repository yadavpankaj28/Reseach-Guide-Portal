
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class login extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        
        HttpSession hs=req.getSession(true);
        
        String username = (String) req.getParameter("t1");
        String password = (String) req.getParameter("t2");

        try {
            mypack.Conn c1 = new mypack.Conn();
            ResultSet rs = c1.s.executeQuery("select * from login where username='"+username+"' and password='"+password+"'");
            if (rs.next()) {
                
                String t = rs.getString("type");
                    String i = rs.getString("userid");
        String u=rs.getString("username");
        
        hs.setAttribute("userid", i);
        hs.setAttribute("username",u);
             
                
                if (t.equals("admin")) {
                    res.sendRedirect("admin.jsp");
                } else if (t.equals("teacher")) {
                    res.sendRedirect("teacher.jsp");
                } else{
                    res.sendRedirect("student.jsp");
                }
            }
           
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        out.print("Invalid Login Credentials");

    }
}
