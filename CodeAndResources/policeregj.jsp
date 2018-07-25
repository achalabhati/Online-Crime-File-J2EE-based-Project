<html>

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

</head>
<body bgcolor="#CCCCCC" style="background-image: url('')">
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






<%@page import="java.sql.*" %>
<%!int y;%>
<%
String s1,s2,s3,s4,s5,s6,s7,s8;
int x=0;
double i7;
s1=request.getParameter("T1");
s2=request.getParameter("T2");

s3=request.getParameter("D1");

s4=request.getParameter("R1");

s5=request.getParameter("T3");
s6=request.getParameter("T4");

s7=request.getParameter("T5");
i7=Double.parseDouble(s7);


s8=request.getParameter("R2");

try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

		} catch (ClassNotFoundException e1) {
			System.out.println("not f");
		}
		try {
			Connection c = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "system", "achala");
					Statement s=c.createStatement();
ResultSet rs=s.executeQuery("select * from policeofficials");
while(rs.next())
{
 x=rs.getInt(1);
}
 y=x+1;
rs.close();
s.close();

			PreparedStatement pst = c.prepareStatement("insert into policeofficials values(?,?,?,?,?,?,?,?,?,?,?)");

			pst.setInt(1,y);
pst.setString(2,s1);
pst.setString(3,s2);
pst.setString(4,s3);
pst.setString(5,"");
pst.setInt(6,0);
pst.setString(7,s4);
pst.setString(8,s5);
pst.setString(9,s6);
pst.setDouble(10,i7);
pst.setString(11,s8);
int status = pst.executeUpdate();
			if (status > 0)
				
			pst.close();
			c.close();
		}
		 catch (Exception e) {
			System.out.println("exp");
		}
%>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="720" height="142" id="AutoNumber1" bgcolor="#66FFFF">
    <tr>
      <td width="720" height="36" colspan="2" bgcolor="#C0C0C0">
      &nbsp;</td>
    </tr>
    <tr>
      <td width="720" height="35" colspan="2">
      <p align="center"><font color="#FF6600">&nbsp;</font><font size="5" color="#FF6600">New Officer 
      has Successfully Registered!!!!!</font><p>&nbsp;</td>
    </tr>
    <tr>
      <td width="360" height="71">
      <p align="center"><font color="#800080">New Police Officer ID</font><font color="#008080">:</font></td>
      <td width="360" height="71">&nbsp;<%=y%></td>
    </tr>
  </table>
  </center>
</div>




</body>

</html>