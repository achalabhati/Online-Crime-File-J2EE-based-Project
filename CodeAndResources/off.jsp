<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>

<body>
<%@page import="java.sql.*" %>
<%String s1,s2,x2;
int i2,x1;
int count=0;
s1=request.getParameter("T1");
s2=request.getParameter("T2");
i2=Integer.parseInt(s1);
try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

		} catch (ClassNotFoundException e1) {
			out.println(e1);
		}
		try {
			Connection c = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "system", "achala");
					Statement s=c.createStatement();
ResultSet rs=s.executeQuery("select id,password from policeofficials");
while(rs.next())
{
x1=rs.getInt(1);
x2=rs.getString(2);
if(x2.equals(s2)&&(i2==x1))
{
count++;
session.setAttribute("oid",s1);
RequestDispatcher dispatch=request.getRequestDispatcher("/offoption.jsp");
dispatch .forward(request,response);
count++;
}
}
if(count==0)
{
RequestDispatcher dispatch=request.getRequestDispatcher("/errorofficer.htm");
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