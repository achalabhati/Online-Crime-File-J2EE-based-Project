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
<%
String s1,s2,s3,s4,s5,s6,s7,si8,s9;
int x=0,cost=0;
double i8;
s1=request.getParameter("T1");
s2=request.getParameter("T2");

s3=request.getParameter("S1");

s4=request.getParameter("D1");

s5=request.getParameter("D2");
if(s4.equals("TWO WHEELER"))
{
if(s5.equals("NO HELMET"))
{
cost=500;
}
if(s5.equals("RED LIGHT CROSSED"))
{
cost=700;
}
if(s5.equals("SPEED LIMIT CROSSED"))
{
cost=1000;
}
if(s5.equals("NO LICENSE"))
{
cost=800;
}
}
if(s4.equals("THREE WHEELER"))
{
if(s5.equals("RED LIGHT CROSSED"))
{
cost=400;
}
if(s5.equals("SPEED LIMIT CROSSED"))
{
cost=600;
}
if(s5.equals("NO LICENSE"))
{
cost=500;
}
}
if(s4.equals("FOUR WHEELER"))
{
if(s5.equals("NO SEAT BELT"))
{
cost=1000;
}
if(s5.equals("RED LIGHT CROSSED"))
{
cost=1200;
}
if(s5.equals("SPEED LIMIT CROSSED"))
{
cost=1500;
}
if(s5.equals("NO LICENSE"))
{
cost=1700;
}
}





s6=request.getParameter("T3");


s7=request.getParameter("T4");
si8=request.getParameter("T5");
i8=Double.parseDouble(si8);


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
ResultSet rs=s.executeQuery("select * from CHALLAN");
while(rs.next())
{
 x=rs.getInt(1);
}
y=x+1;
rs.close();
s.close();

PreparedStatement pst = c.prepareStatement("insert into CHALLAN values(?,?,?,?,?,?,?,?,?,?)");

			pst.setInt(1,y);

			pst.setString(2, s1);
			pst.setString(3, s2);
			pst.setString(4, s3);
			pst.setString(5, s4);
			pst.setString(6, s5);
			pst.setString(7, s6);
pst.setString(8,s7);
pst.setDouble(9,i8);
pst.setInt(10,cost);
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

<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="219">
  <tr>
    <td width="50%" height="54">&nbsp;Challan No is:</td>
    <td width="50%" height="54">&nbsp;<%=y%></td>
  </tr>
  <tr>
    <td width="50%" height="43">&nbsp;&nbsp;&nbsp; Challan amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    :</td>
    <td width="50%" height="43">&nbsp;<%=cost%>Rs.</td>
  </tr>
  <tr>
    <td width="50%" height="51">&nbsp;</td>
    <td width="50%" height="51">&nbsp;</td>
  </tr>
  <tr>
    <td width="50%" height="68">&nbsp;</td>
    <td width="50%" height="68">
    <form method="POST" action="--WEBBOT-SELF--">
      <!--webbot bot="SaveResults" u-file="fpweb:///_private/form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" --><p>
      &nbsp;</p>
    </form>
&nbsp;</td>
  </tr>
</table>

</body>

</html>