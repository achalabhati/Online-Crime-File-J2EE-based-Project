import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class serda extends HttpServlet
{
public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
{
res.setContentType("text/html");
PrintWriter out=res.getWriter();
String s1,s2;
s1=req.getParameter("T1");
s2=req.getParameter("T2");
int count=0;
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection c=DriverManager.getConnection("jdbc:odbc:serdsn");
Statement s=c.createStatement();
ResultSet rs=s.executeQuery("select * from login");
while(rs.next())
{
String x=rs.getString(1);
String y=rs.getString(2);
if(x.equals(s1) && y.equals(s2))
{
out.println("HELLO"+s1);
count++;
}
}
if(count==0)
{
RequestDispatcher dis=req.getRequestDispatcher("/error.htm");
dis.forward(req,res);
}

rs.close();
s.close();
c.close();
}
catch(Exception e)
{
}
out.close();
}
}