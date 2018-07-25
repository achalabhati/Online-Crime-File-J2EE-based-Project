<html>

<head>
<style type="text/CSS">
        body{
        background-color:lightgrey;
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

</head>
<body bgcolor="#C0C0C0">
<img alt="header" src="HEADER.jpg" height="140" width="1250" hspace="10" vspace="10">
<table class="s2" bgcolor="black" height="73" >
          <tr bgcolor="black">
              <td height="69">
                  <a class="one" href="index.htm"><img alt="" src="INDIA.jpg" height="25" hspace="5">Home</a></td>
              <td height="69">
                  <a class="one" href="aboutus.htm"><img alt="" src="INDIA.jpg" height="25" hspace="5">About Us</a></td>
              <td height="69">
                  <a class="one" href="contactus.html" ><img alt="" src="INDIA.jpg" height="25" hspace="5">Contact Us</a>
              </td>
              
              <td height="69">
                   <a class="one" href="loginm.htm"><img alt="" src="INDIA.jpg" height="25" hspace="5">User Login</a>
              </td>
              <td height="69"> <a class="one" href="loginad.htm"><img alt="" src="INDIA.jpg" height="25" hspace="5">Admin Login</a></td>

          <td height="69"> <a class="one" href="officerlogin.htm"><img alt="" src="INDIA.jpg" height="25" hspace="5">OfficerLogin</a></td>
<td height="69"> <a class="one" href="newuser.htm"><img alt="" src="INDIA.jpg" height="25" hspace="5">New User</a></td>

<td height="69"> <a class="one" href="news.html"><img alt="" src="INDIA.jpg" height="25" hspace="5">News</a></td>
          </tr> </table>


<body>
<h1 align="center"><font color="#008000">MEMBER INFORMATION</font></h1>
</table>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1">
  <tr>
    <td width="10%"><font size="5">MID</font></td>
    <td width="10%"><font size="5">First Name</font></td>
    <td width="10%"><font size="5">Last Name</font></td>
    <td width="10%"><font size="5">Address</font></td>
    <td width="11%"><font size="5">Near Police Station</font></td>
    <td width="9%"><font size="5">Email</font></td>
    <td width="10%"><font size="5">Mob No</font></td>
    <td width="10%"><font size="5">Country</font></td>
    <td width="10%"><font size="5">Gender</font></td>
    <td width="10%"><font size="5">State</font></td>
  </tr>

<%@page import="java.sql.*" %>
<%!String s2,s3,s4,s5,s6,s8,s9,s10;
double d7;
int s1;%>
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
ResultSet rs=s.executeQuery("select * from member");
while(rs.next())
{
s1=rs.getInt(1);
s2=rs.getString(2);
s3=rs.getString(3);
s4=rs.getString(4);
s5=rs.getString(5);
s6=rs.getString(6);

d7=rs.getDouble(7);
s8=rs.getString(8);
s9=rs.getString(9);
s10=rs.getString(10);
%>
<tr>
<td><%=s1%>&nbsp;</td>
<td><%=s2%>&nbsp;</td>
<td><%=s3%>&nbsp;</td>
<td><%=s4%>&nbsp;</td>
<td><%=s5%>&nbsp;</td>
<td><%=s6%>&nbsp;</td>
<td><%=d7%>&nbsp;</td>
<td><%=s8%>&nbsp;</td>
<td><%=s9%>&nbsp;</td>
<td><%=s10%>&nbsp;</td>
</tr>
<%
}
rs.close();
s.close();
c.close();
}
catch(Exception e)
{
out.println("err");
}
%>

</table>
</body>

</html>