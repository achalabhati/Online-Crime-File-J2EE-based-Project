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
<body bgcolor="#CCCCCC">
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



<%@page import="java.sql.*" %>
<%!int y,cid,offid;
String name,pcase;
Connection c;%>
<%
String s1,s2,s3,s4,s5,s6,x1;
int i1,i2;
s1=request.getParameter("T1");
i1=Integer.parseInt(s1);
s2=request.getParameter("T2");
i2=Integer.parseInt(s2);
s3=request.getParameter("T3");
s4=request.getParameter("D1");
s5=request.getParameter("R1");

try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

		} catch (ClassNotFoundException e1) {
			System.out.println("not f");
		}
		try {
			Connection c = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "system", "achala");
					out.println(s5);
           
					Statement s=c.createStatement();


					if(s5.equals("civil"))
					{
					 

PreparedStatement ps=c.prepareStatement("update cfir set OFFICER_ID=? where caseid=? and status!='Solved'");
ps.setInt(1,i1);
ps.setInt(2,i2);
ps.executeUpdate();	
ps.close();

cid=i2;
offid=i1;
PreparedStatement ps1=c.prepareStatement("update cfir set OFFICER_NAME=? where caseid=? and status!='Solved'");
ps1.setString(1,s3);
ps1.setInt(2,i2);
ps1.executeUpdate();	
ps1.close();
}
else
{
PreparedStatement ps=c.prepareStatement("update cfir2 set OFFICER_ID=? where caseid=?");
ps.setInt(1,i1);
ps.setInt(2,i2);
ps.executeUpdate();	
ps.close();

cid=i2;
offid=i1;
PreparedStatement ps1=c.prepareStatement("update cfir2 set OFFICER_NAME=? where caseid=?");
ps1.setString(1,s3);
ps1.setInt(2,i2);
ps1.executeUpdate();	
ps1.close();
}
name=s3;



c.close();
}

catch(Exception e)

{System.out.println("exp");}



%>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="624" height="107" id="AutoNumber1" bgcolor="#FFFF99">
    <tr>
      <td width="624" height="12" colspan="2" bgcolor="#CCCCCC">
      <p align="center">&nbsp;<tr>
      <td width="624" height="12" colspan="2">
      <p align="center"><font size="5" color="#008000">Case No <%=cid%>is 
      assigning&nbsp; to..............</font><tr>
      <td width="312" height="12"><font size="4" color="#008000">Officer id:</font><td width="312" height="12">
<%=offid%></td>
    <tr>
      <td width="312" height="12"><font size="4" color="#008000">Officer name:</font><td width="312" height="12">
      <%=name%></td>
    </tr>
    <tr>
      <td width="312" height="55">&nbsp;</td>
      <td width="312" height="55">&nbsp;</td>
    </tr>
  </table>
  </center>
</div>

</body>

</html>