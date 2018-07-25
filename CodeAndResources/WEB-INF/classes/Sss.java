import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Sss extends HttpServlet
{
public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
{
String x;
HttpSession hs=req.getSession();
res.setContentType("text/html");
PrintWriter out=res.getWriter();
Integer c=(Integer)hs.getAttribute("c");
if(c==null)
{
c=new Integer(0);
x="newly";
}
else
{
c=new Integer(c.intValue()+1);
x="old";
}
hs.setAttribute("c",c);
out.println("user is"+x+"no of time"+c);
}
}