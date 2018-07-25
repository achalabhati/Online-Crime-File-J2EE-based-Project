<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>
<%@page import="java.sql.*" %>
<%!int y;%>
<% String s1,si2,s3,s4,s5,s6,s7,s8,s9;
int x=0;
int i2;
s1=request.getParameter("T1");
out.println(s1);
si2=request.getParameter("T2");
i2=Integer.parseInt(si2);

s3=request.getParameter("R1");
s4=request.getParameter("T3");
s5=request.getParameter("T4");
s6=request.getParameter("R2");
s7=request.getParameter("D1");
s8=request.getParameter("S1");
s9=request.getParameter("R3");
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
ResultSet rs=s.executeQuery("select * from CRIMINAL_DET");
while(rs.next())
{
 x=rs.getInt(1);
}
y=x+1;
rs.close();
s.close();
PreparedStatement pst = c.prepareStatement("insert into CRIMINAL_DET values(?,?,?,?,?,?,?,?,?,?)");

			pst.setInt(1,y);

			pst.setString(2,s1);
			
pst.setInt(3,i2);
			

pst.setString(4,s3);
pst.setString(5,s4);
pst.setString(6,s5);
pst.setString(7,s6);
pst.setString(8,s7);
pst.setString(9,s8);
pst.setString(10,s9);

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


<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C0C0C0" width="100%" height="137" bgcolor="#C0C0C0">
  <tr>
    <td width="100%" height="44" colspan="2"><font color="#008000">Criminal 
    Details are added Successfully.....!!!!</font></td>
  </tr>
  <tr>
    <td width="50%" height="36"><font color="#008000">Criminal ID 
    No:</font></td>
    <td width="50%" height="36">&nbsp;<%=y%></td>
  </tr>
  <tr>
    <td width="50%" height="55">&nbsp;</td>
    <td width="50%" height="55">&nbsp;</td>
  </tr>
</table>


</body>

</html>