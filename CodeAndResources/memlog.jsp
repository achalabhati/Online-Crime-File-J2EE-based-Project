<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>

<body>
<%@page import="java.sql.*" %>
<%String s1,s2,x1;
int i2,x2;
int count=0;
s1=request.getParameter("T1");
s2=request.getParameter("T2");
i2=Integer.parseInt(s2);
try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

		} catch (ClassNotFoundException e1) {
			out.println(e1);
		}
		try {
			Connection c = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "system", "achala");
					Statement s=c.createStatement();
ResultSet rs=s.executeQuery("select * from member");
while(rs.next())
{
x1=rs.getString(6);
x2=rs.getInt(1);
if(x1.equals(s1)&&(i2==x2))
{
count++;
RequestDispatcher dispatch=request.getRequestDispatcher("/afterlogin.jsp");
dispatch .forward(request,response);
}
}
if(count==0)
{
RequestDispatcher dispatch=request.getRequestDispatcher("/loginm1.jsp");
dispatch .forward(request,response);

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