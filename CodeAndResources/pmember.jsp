<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 3</title>
</head>
<%@page import="java.sql.*" %>
<%!int y;%>
<%
String s1,s2,s3,s4,s5,si6,s7,s8,s9;
int x=0;
double i6;
s1=request.getParameter("T1");
s2=request.getParameter("T2");

s3=request.getParameter("T3");
out.println("fhgf");
s4=request.getParameter("D1");

s5=request.getParameter("T4");

si6=request.getParameter("T6");
i6=Double.parseDouble(si6);


s7=request.getParameter("D2");
s8=request.getParameter("D3");
s9=request.getParameter("R1");


int count=0;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

		} catch (ClassNotFoundException e1) {
			System.out.println("not f");
		}
		try {
			Connection c = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "system", "achala");
					Statement s=c.createStatement();
ResultSet rs=s.executeQuery("select * from member");
while(rs.next())
{
 x=rs.getInt(1);
}
y=x+1;
rs.close();
s.close();
 
 
			PreparedStatement pst = c.prepareStatement("insert into member values(?,?,?,?,?,?,?,?,?,?)");

			pst.setInt(1,y);

			pst.setString(2, s1);
			pst.setString(3, s2);
			pst.setString(4, s3);
			pst.setString(5, s4);
			pst.setString(6, s5);
			pst.setDouble(7, i6);
pst.setString(8,s7);
pst.setString(9,s9);

pst.setString(10,s8);
int status = pst.executeUpdate();
			if (status > 0)
				System.out.println(status + "record affect");
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
      <font size="4" color="#800080">Congratulation!!!! You have been 
      successfully Registered</font></td>
    </tr>
    <tr>
      <td width="320" height="42">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <font size="4" color="#FF0000">Your Member id is:</font></td>
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
</div>

</html>