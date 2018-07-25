import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class Procan extends HttpServlet
{
public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
{
res.setContentType("text/html");
PrintWriter out=res.getWriter();
String s1,s2,s3,s4,s5,s6,s7;
s1=req.getParameter("t1");
s2=req.getParameter("t2");
s3=req.getParameter("t3");
s4=req.getParameter("t4");
s5=req.getParameter("t5");
s6=req.getParameter("D1");
out.println(s1);
out.println(s6);
s7=req.getParameter("t6");
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection c=DriverManager.getConnection("jdbc:odbc:svdsn");
out.println("conn");
Statement s=c.createStatement();
out.println("st");
s.executeUpdate("insert into cancel values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')");
out.println("in");
s.close();
c.close();
}
catch(Exception e)
{
out.println("err");
}
}
}
