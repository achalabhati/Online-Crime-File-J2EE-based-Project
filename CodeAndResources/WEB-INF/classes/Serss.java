import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Serss extends HttpServlet
{
public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
{
Cookie[] ck=req.getCookies();
int l=ck.length;
res.setContentType("text/html");
PrintWriter out=res.getWriter();
for(int i=0;i<l;i++)
{
String s1=ck[i].getName();
String s2=ck[i].getValue();
out.println(s2);
}
}
}