<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>
<%@page import="java.sql.*" %>
<%!int x,y;%>
<%
String s1,s2,s3,s4,s5,si6;

double i6;
s1=request.getParameter("t1");
s2=request.getParameter("t3");



s3=request.getParameter("t5");

s5=request.getParameter("S1");

si6=request.getParameter("t4");
i6=Double.parseDouble(s3);






		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

		} catch (ClassNotFoundException e1) {
			System.out.println("not f");
		}
		try {
			Connection c = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "system", "achala");
					Statement s=c.createStatement();



ResultSet rs=s.executeQuery("select * from RTI");
while(rs.next())
{
 x=rs.getInt(6);
}
y=x+1;
rs.close();

 
			PreparedStatement pst = c.prepareStatement("insert into RTI values(?,?,?,?,?,?)");

			pst.setDouble(4,i6);

			pst.setString(1, s2);
			pst.setString(2, s1);
			pst.setString(3, s5);
			pst.setString(5, si6);
			pst.setDouble(6,y);
			pst.executeUpdate();
			pst.close();
			c.close();
		}
		 catch (Exception e) {
			System.out.println("exp");
		}
%>
<body>

</body>
<table background="../../../../Tomcat%205.5/webapps/ser/%3E%3Ctr%3E%3Ch3%20style="color:blue">&nbsp;</h3></tr>
<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
</table>
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="640" height="75" bgcolor="#FFFFCC">
    <tr>
      <td width="640" height="29" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <font size="4" color="#800080">Your complaint has been registered</font></td>
    </tr>
    <tr>
      <td width="320" height="42">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <font size="4" color="#FF0000">Your Complaint id is:</font></td>
      <td width="320" height="42">&nbsp;<%=y%></td>
    </tr>
  </table>
  </center>
</div>
<div align="left">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="20" height="36">
    <tr>
      
    </tr>
  </table>

</html>