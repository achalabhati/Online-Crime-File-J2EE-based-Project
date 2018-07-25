
<%@page import="java.sql.*" %>
<%!int p_id;
String s1,s2,s3,x2,x3,x7;
int i1,i10;
ResultSet rs4;%>
<%

int count=0;

s1=request.getParameter("T1");
s2=request.getParameter("D1");

s3=request.getParameter("D2");
out.println(s1);
out.println(s2);
out.println(s3);
try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

		} catch (ClassNotFoundException e1) {
			out.println(e1);
		}
		try {
			Connection c = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "system", "achala");
PreparedStatement ps2;

 ps2=c.prepareStatement("select * from CHALLAN where VEHICAL_NO=? and VEHICAL_TYPE=? and LAW_BROKEN=?");
ps2.setString(1,s1);
ps2.setString(2,s2);
ps2.setString(3,s3);
 rs4=ps2.executeQuery();


if(rs4.next())
{
i1=rs4.getInt(1);
out.println(i1);
x2=rs4.getString(2);
out.println(x2);
x3=rs4.getString(3);

x7=rs4.getString(7);
 i10=rs4.getInt(10);
}

session.setAttribute("amt",i10+"");
session.setAttribute("cno",i1+"");
ps2.close();
c.close();
}
catch(Exception e)
{
out.println(e);
session.invalidate();
}
%>

<html>
<head>
<title></title>
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
          </br>
          </br>
 <form name="f1" method="POST" action="http://localhost:8081/ser/challanpay2.jsp">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="253">
  <tr>
    <td width="100%" height="70" colspan="2">
    <p align="center"><font size="6" color="#000080">CHALLAN DETAILS&nbsp;&nbsp; </font>
    <p align="center">
      &nbsp;</p>
    
    </td>
  </tr>
  <tr>
    <td width="50%" height="65">
    <p align="center">Challan No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    :</td>
    <td width="50%" height="65">&nbsp;<%=i1%></td>
  </tr>
  <tr>
    <td width="50%" height="65">
    <p align="center">First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    :</td>
    <td width="50%" height="65">&nbsp;<%=x2%></td>
  </tr>
  <tr>
    <td width="50%" height="61">
    <p align="center">Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    :</td>
    <td width="50%" height="61">&nbsp;<%=x3%></td>
  </tr>
  <tr>
    <td width="50%" height="54">
    <p align="center">Vehical No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    :</td>
    <td width="50%" height="54">&nbsp;<%=x7%></td>
  </tr>
  <tr>
    <td width="50%" height="54">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Challan Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    :</td>
    <td width="50%" height="54">Rs.<%=i10%></td>
  </tr>
  <tr>
    <td width="100%" height="54" colspan="2">
    <p align="center">
      <input type="submit" value="Pay Now" name="B3" style="color: #0000FF; font-weight: bold; border: 1px solid #000080; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; font-size:14pt"></td>
  </tr>
</table>
</form>
</body>
</html>