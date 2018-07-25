<html>
<head>
</head>
<body>
<%@page import="java.sql.*" %>
<%String s1,s2,x1,x2;

s1=request.getParameter("T1");
s2=request.getParameter("T2");
try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

		} catch (ClassNotFoundException e1) {
			out.println(e1);
		}
		try {
			Connection c = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "system", "achala");
					Statement s=c.createStatement();
ResultSet rs=s.executeQuery("select * from adminlog");
while(rs.next())
{
x1=rs.getString(1);
x2=rs.getString(2);
if(x1.equals(s1)&&x2.equals(s2))
{
RequestDispatcher dispatch=request.getRequestDispatcher("/adminopt.jsp");
dispatch .forward(request,response);
}
else
{
RequestDispatcher dispatch=request.getRequestDispatcher("/loginad1.htm");
dispatch .forward(request,response);
}
}

rs.close();
s.close();
c.close();
}
catch(Exception ae)
{
out.println(ae);
}

%> 
</body>
</html>