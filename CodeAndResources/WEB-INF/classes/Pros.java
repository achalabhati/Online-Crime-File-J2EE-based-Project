
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class Pros extends HttpServlet
{
public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
{
res.setContentType("text/html");
PrintWriter out=res.getWriter();
String s13,s14,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,x="";
s13=req.getParameter("t1");
s14=req.getParameter("t2");
//s3=req.getParameter("t3");
//s4=req.getParameter("t4");
s5=req.getParameter("t5");
s6=req.getParameter("s1");
s7=req.getParameter("t6");
s8=req.getParameter("o1");
s9=req.getParameter("s2");
s10=req.getParameter("t7");
s11=req.getParameter("t8");
s12=req.getParameter("t9");
out.println(s12);
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection c=DriverManager.getConnection("jdbc:odbc:svdsn");
out.println("conn");
Statement s=c.createStatement();
ResultSet rs=s.executeQuery("select * from member");
while(rs.next())
{
 x=rs.getString(1);
}
int i=Integer.parseInt(x);
i=i+1;
String y=Integer.toString(i);
rs.close();
s.close();
Statement st=c.createStatement();
st.executeUpdate("insert into member values('"+y+"','"+s13+"','"+s14+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"','"+s12+"')");
st.close();
c.close();
}
catch(Exception e)
{
out.println("er");
}
RequestDispatcher d=req.getRequestDispatcher("/ret.htm");
d.forward(req,res);
}
}







