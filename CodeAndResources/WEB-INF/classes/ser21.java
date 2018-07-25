import java.io.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class ser21 extends HttpServlet {

    public void doPost(HttpServletRequest req, HttpServletResponse res)
    throws IOException, ServletException
    {
        res.setContentType("Parameter/html");
        PrintWriter out = res.getWriter();
        
		String s1 = req.getParameter("T1");
		int si1 = Integer.parseInt(s1);
		String s2 = req.getParameter("T2");
		String s3 = req.getParameter("T3");
		String s4 = req.getParameter("T4");
		

		String s5 = req.getParameter("T5");
		int si5 = Integer.parseInt(s5);

		String s6 = req.getParameter("T6");
		int si6 = Integer.parseInt(s6);
String s7=req.getParameter("R1");
String s8=req.getParameter("D1");

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

		} catch (ClassNotFoundException e1) {
			System.out.println("not f");
		}
		try {
			Connection c = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "system", "achala");
			System.out.println("con");
			PreparedStatement pst = c
					.prepareStatement("insert into reg values(?,?,?,?,?,?,?,?)");
			pst.setInt(1, si1);
			pst.setString(2, s2);
			pst.setString(3, s3);
			pst.setString(4, s4);
			pst.setInt(5, si5);
			pst.setString(6, s7);
pst.setString(7,s8);
pst.setInt(8,si6);

			int status = pst.executeUpdate();
			if (status > 0)
				System.out.println(status + "record affect");
			pst.close();
			c.close();
		} catch (Exception e) {
			System.out.println("exp");
		}
out.close();

    }
}