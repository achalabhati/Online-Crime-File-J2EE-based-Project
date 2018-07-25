<html>

<head>
<style type="text/CSS">
        body{
        background-color:grey;
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
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" height="361">
  <tr>
    <td width="100%" height="37" colspan="2">
    <p align="center"><u><font size="7" color="#800080">CRIMINAL PROFILE</font></u></td>
  </tr>
  <tr>
    <td width="100%" height="60" colspan="2" bgcolor="#800080">
    &nbsp;</td>
  </tr>
  
  
<%@page import="java.sql.*" %>
<%!int y;%>
<% String s1,si2,s3,s4,s5,s6,s7,s8,s9,rad;
int x=0;
int i2,cid=0,rid=0;
rad=request.getParameter("R1");
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

cid=rs.getInt(1);
s1=rs.getString(2);
i2=rs.getInt(3);
s3=rs.getString(4);
s4=rs.getString(5);
s5=rs.getString(6);
s6=rs.getString(7);
s7=rs.getString(8);
s8=rs.getString(9);
s9=rs.getString(10);

if(rad.equals(cid+""))
{

%>
  <tr>
    <td width="50%" height="1">
    <p align="center">Criminal No</td>
    <td width="50%" height="38">&nbsp;<%=cid%></td>
  </tr>

  
  <tr>
    <td width="50%" height="19">
    <p align="center">Name</td>
    <td width="50%" height="48">&nbsp;<%=s1%></td>
  </tr>
    
  <tr>
    <td width="50%" height="46" >
    <p align="center">Case Id</td></td>
    <td width="50%" height="46">&nbsp;<%=i2%></td>
  </tr>
  <tr>
    <td width="50%" height="19">
    <p align="center">Case Type</td>
    <td width="50%" height="46">&nbsp;<%=s3%></td>

  </tr>
  <tr>
    <td width="50%" height="42">
    <p align="center">Crime Place</td>
    <td width="50%" height="42">&nbsp;<%=s4%></td>
  </tr>
  <tr>
    <td width="50%" height="42">
    <p align="center">City</td></td>
    <td width="50%" height="42">&nbsp;<%=s5%></td>
  </tr>
  <tr>
    <td width="50%" height="42">
    <p align="center">Gender</td>
    <td width="50%" height="42">&nbsp;<%=s6%></td>
  </tr>
  <tr>
    <td width="50%" height="12">
    <p align="center">Nearest Police Station</td>
    <td width="50%" height="45">&nbsp;<%=s7%></td>
  </tr>
 
  <tr>
    <td width="50%" height="13">
    <p align="center">Identity</td>
    <td width="50%" height="39">&nbsp;<%=s8%></td>
  </tr>
 
  <tr>
    <td width="50%" height="41">
    <p align="center">Status</td></td>
    <td width="50%" height="46">&nbsp;<%=s9%></td>

  </tr>
  <%
  }
  
  }
  
   rs.close();
s.close();
c.close();
}
		 catch (Exception e) {
			System.out.println("exp");
		}
 
  %>

 
</table>
</body>

</html>