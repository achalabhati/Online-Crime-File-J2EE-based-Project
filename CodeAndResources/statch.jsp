<%@page import="java.sql.*" %>
<%!int p_id;
String s1,s2,s3,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10;
int i2,a1,a3,a4;
double a2;
ResultSet rs4;
PreparedStatement ps2;%>
<%

int count=0;

s1=request.getParameter("T1");
s2=request.getParameter("T2");
s3=request.getParameter("T3");
i2=Integer.parseInt(s1);
try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

		} catch (ClassNotFoundException e1) {
			out.println(e1);
		}
		try {
			Connection c = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "system", "achala");


if(s2.equals("Civil"))
	{			
 ps2=c.prepareStatement("update cfir set status=? where caseid=?");
ps2.setString(1,s3);
ps2.setInt(2,i2);
ps2.executeQuery();
out.println("Status Updated");
}


else if(s2.equals("Criminal"))
	{			
 ps2=c.prepareStatement("update cfir2 set status=? where caseid=?");
ps2.setString(1,s3);
ps2.setInt(2,i2);
ps2.executeQuery();
out.println("Status Updated");
}

ps2.close();
rs4.close();
c.close();
}
catch(Exception e)
{

}
%>