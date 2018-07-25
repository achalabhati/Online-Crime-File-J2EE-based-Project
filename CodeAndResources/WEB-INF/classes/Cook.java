import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Cook extends HttpServlet
{
public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
{
String s=req.getParameter("T1");
Cookie c= new Cookie("cmy",s);
res.setContentType("text/html");
PrintWriter out=res.getWriter();
res.addCookie(c);
}
}
