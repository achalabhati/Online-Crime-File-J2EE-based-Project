<html>

<head>
<head>
<style type="text/CSS">
        body{
        background-image:url('b2.jpg');
        }
.s1
{
    font-family:Arial;
    font-weight: bold;
    font-size: 18px;
    text-decoration: blink;
    background-color: #D2691E;
text-align: center;
}

.s3
{
   margin-left: 12px;
background-color: #dc143c;
width: 300px;
font-size: 25px;
position: absolute;
top: 40%;
}
.s6
{
   margin-left: 12px;
background-color: #ff1493;
width: 300px;
font-size: 20px;
position: absolute;
top:47%;
}


a.one:link, a.one:visited
{
    display: block;
    font-weight: bold;
    color: white;
    background-color:black;
    width: 155px;
    text-align: center;
    text-decoration:none;
    padding: 5px;
    font-size: 20px;
    }
    a.one:hover
    {
    display: block;
    font-weight: bold;
    font-size: 20px;
    color: black;
    background-color:grey;
    width: 173px;
    text-align: center;
    text-decoration:none;


}
a.two:link, a.two:visited
{
    display: block;
    font-weight: bold;
    color: fuchsia;
    background-color:black;
    width: 270px;
    text-align: center;
    text-decoration:none;
    padding: 5px;
    font-size: 20px;
    }
 a.two:hover
{
display: block;
    font-weight: bold;
    color: fuchsia;
    background-color:#483d8b;
    width: 270px;
    text-align: center;
    text-decoration:underline;
    padding: 5px;
    font-size: 20px;
}

</style>


<body bgcolor="#C0C0C0" style="background-image: url('')">
<img alt="header" src="HEADER.jpg" height="140" width="1250" hspace="10" vspace="10">
<table class="s2" bgcolor="black" height="73" >
          <tr bgcolor="black">
              <td height="69">
                  <a class="one"href="index.htm"><img alt="" src="INDIA.jpg" height="25" hspace="5">Home</a></td>
              <td height="69">
                  <a class="one" href="about.html"><img alt="" src="INDIA.jpg" height="25" hspace="5">About Us</a></td>
              <td height="69">
                  <a class="one"href="contact.html" ><img alt="" src="INDIA.jpg" height="25" hspace="5">Contact Us</a>
              </td>
              
              <td height="69">
                   <a class="one"href="loginpage.html"><img alt="" src="INDIA.jpg" height="25" hspace="5">User Login</a>
              </td>
              <td height="69"> <a class="one"href="register.html"><img alt="" src="INDIA.jpg" height="25" hspace="5">Admin Login</a></td>

          <td height="69"> <a class="one"href="adminhtml.html"><img alt="" src="INDIA.jpg" height="25" hspace="5">OfficerLogin</a></td>
<td height="69"> <a class="one" href="register.html"><img alt="" src="INDIA.jpg" height="25" hspace="5">New User</a></td>

<td height="69"> <a class="one" href="register.html"><img alt="" src="INDIA.jpg" height="25" hspace="5">News</a></td>
          </tr> </table>


</head>

<body>
<h1 align="center"><font color="#008000">VICTIM INFORMATION</font></h1>
</table>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1">
  <tr>
    <td width="10%"><font size="5">VID</font></td>
    <td width="10%"><font size="5">Victim Name</font></td>
    <td width="10%"><font size="5">Victim Address</font></td>
    <td width="10%"><font size="5">Victim Age</font></td>
    <td width="11%"><font size="5">Victim Ph no</font></td>
    <td width="9%"><font size="5">Vid Type</font></td>
    

  </tr>
<%@page import="java.sql.*" %>
<%!String s2,s3,s6,s7,s8,s10,s11,s12,s13,s14,s17,s18;
double d5;
int i1,i4,i9,i15,i16;%>
<%
try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

		} catch (ClassNotFoundException e1) {
			System.out.println("not f");
		}
		try {
			 Connection c = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "system", "achala");
					Statement s=c.createStatement();
ResultSet rs1=s.executeQuery("select * from cfir");
while(rs1.next())
{

i1=rs1.getInt(6);

s2=rs1.getString(1);
s3=rs1.getString(2);
i4=rs1.getInt(3);
d5=rs1.getDouble(4);
s6=rs1.getString(5);
%>
<tr>
<td><%=i1%>&nbsp;</td>
<td><%=s2%>&nbsp;</td>
<td><%=s3%>&nbsp;</td>
<td><%=i4%>&nbsp;</td>
<td><%=d5%>&nbsp;</td>
<td><%=s6%>&nbsp;</td>
</tr>
<%
}
rs1.close();
%>
</table>

<h1 align="center"><font color="#008000">CASE INFORMATION</font></h1>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="1241" id="AutoNumber1">
  <tr>
 <td width="10%"><font size="5">Criminal Name</font></td>
    <td width="10%"><font size="5">Criminal Address</font></td>
    <td width="10%"><font size="5">Criminal Age</font></td>
    <td width="10%"><font size="5">Case Type</font></td>
    <td width="11%"><font size="5">Date</font></td>
    <td width="9%"><font size="5">Time</font></td>
    
<td width="10%"><font size="5">Venue</font></td>
    <td width="11%"><font size="5">About Case</font></td>
    <td width="9%"><font size="5">Case ID</font></td>
    
<td width="10%"><font size="5">Officer ID</font></td>
    <td width="11%"><font size="5">Officer Name</font></td>
    <td width="9%"><font size="5">Status</font></td>
    

<%
ResultSet rs2=s.executeQuery("select * from cfir");
while(rs2.next())
{
s7=rs2.getString(7);
s8=rs2.getString(8);
i9=rs2.getInt(9);
s10=rs2.getString(10);
s11=rs2.getString(11);
s12=rs2.getString(12);
s13=rs2.getString(13);
s14=rs2.getString(14);
i15=rs2.getInt(15);
i16=rs2.getInt(16);
s17=rs2.getString(17);
s18=rs2.getString(18);
%>

</tr>
<tr>
<td><%=s7%>&nbsp;</td>
<td><%=s8%>&nbsp;</td>
<td><%=i9%>&nbsp;</td>
<td><%=s10%>&nbsp;</td>
<td><%=s11%>&nbsp;</td>
<td><%=s12%>&nbsp;</td>
<td><%=s13%>&nbsp;</td>
<td><%=s14%>&nbsp;</td>
<td><%=i15%>&nbsp;</td>
<td><%=i16%>&nbsp;</td>
<td><%=s17%>&nbsp;</td>
<td><%=s18%>&nbsp;</td>
</tr>

<%
}
rs2.close();
s.close();
c.close();
}
catch(Exception e)
{
out.println(e);
}
%>
</table>


</body>

</html>