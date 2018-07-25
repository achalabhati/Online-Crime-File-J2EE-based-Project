
<%@page import="java.sql.*" %>
<%!int p_id;
String s1,s2,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10;
int i2,a1,a3,a4;
double a2;
ResultSet rs4;%>
<%

int count=0;

s1=request.getParameter("T1");
s2=request.getParameter("T2");

i2=Integer.parseInt(s1);
String tid=(String)session.getAttribute("pid");
int id=Integer.parseInt(tid);
session.invalidate();
try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

		} catch (ClassNotFoundException e1) {
			out.println(e1);
		}
		try {
			Connection c = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "system", "achala");
PreparedStatement ps2;

if(s2.equals("Civil"))
	{			
 ps2=c.prepareStatement("select vname,vaddress,vage,vphoneno,cname,caddress,cage,casetype,cdate,ctime,venue,aboutcase,status from cfir where caseid=? and OFFICER_ID=?");
ps2.setInt(1,i2);
ps2.setInt(2,id);
 rs4=ps2.executeQuery();


if(rs4.next())
{

x1=rs4.getString(1);

x2=rs4.getString(2);

a1=rs4.getInt(3);

a2=rs4.getDouble(4);

x3=rs4.getString(5);

x4=rs4.getString(6);

a3=rs4.getInt(7);

x5=rs4.getString(8);

x6=rs4.getString(9);

x7=rs4.getString(10);

x8=rs4.getString(11);

x9=rs4.getString(12);

x10=rs4.getString(13);

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
<div align="center" style="width: 1241; height: 225">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="1237" height="914" id="AutoNumber1">
    <tr>
      <td width="1237" height="113" bgcolor="#0000FF" colspan="2">
      <p align="center"><u><b>
      <font size="7" face="Comic Sans MS" color="#FFFFFF">OFFICER MODULE</font></b></u></td>
    </tr>
    <tr>
      <td width="1237" height="43" bgcolor="#808080" colspan="2">
      <p align="center"><b><font size="5">You have been authorized for the 
      following services</font></b></td>
    </tr>
    <tr>
      <td width="1237" height="71" bgcolor="#CCCCFF" colspan="2">
      <p align="center"><font size="5">View Case Details</font></td>
    </tr>
    <tr>
      <td width="619" height="43" bgcolor="#CCCCFF">
      <font size="5">Case Id</font></td>
      <td width="618" height="45" bgcolor="#CCCCFF">
      <%=i2%></td>
    </tr>
    <tr>
      <td width="619" height="45" bgcolor="#CCCCFF">
      <font size="5">Victim Name</font></td>
      <td width="618" height="45" bgcolor="#CCCCFF"><%=x1%>
      </td>
    </tr>
    <tr>
      <td width="619" height="47" bgcolor="#CCCCFF">
      <font size="5">Victim Address</font></td>
      <td width="618" height="47" bgcolor="#CCCCFF">
      <%=x2%></td>
    </tr>
    <tr>
      <td width="619" height="49" bgcolor="#CCCCFF">
      <font size="5">Victim Age</font></td>
      <td width="618" height="49" bgcolor="#CCCCFF">
      <%=a1%></td>
    </tr>
    <tr>
      <td width="619" height="38" bgcolor="#CCCCFF">
      <font size="5">Victim Phone no</font></td>
      <td width="618" height="38" bgcolor="#CCCCFF">
      <%=a2%></td>
    </tr>
    <tr>
      <td width="619" height="43" bgcolor="#CCCCFF">
      <font size="5">Criminal Name</font></td>
      <td width="618" height="43" bgcolor="#CCCCFF">
      <%=x3%></td>
    </tr>
    <tr>
      <td width="619" height="48" bgcolor="#CCCCFF">
      <font size="5">Criminal Address</font></td>
      <td width="618" height="48" bgcolor="#CCCCFF">
      <%=x4%></td>
    </tr>
    <tr>
      <td width="619" height="52" bgcolor="#CCCCFF">
      <font size="5">Criminal Age</font></td>
      <td width="618" height="52" bgcolor="#CCCCFF">
      <%=a3%></td>
    </tr>
    <tr>
      <td width="619" height="45" bgcolor="#CCCCFF">
      <font size="5">Case Type</font></td>
      <td width="618" height="45" bgcolor="#CCCCFF">
      <%=x5%></td>
    </tr>
    <tr>
      <td width="619" height="49" bgcolor="#CCCCFF">
      <font size="5">Crime Date</font></td>
      <td width="618" height="49" bgcolor="#CCCCFF">
      <%=x6%></td>
    </tr>
    <tr>
      <td width="619" height="46" bgcolor="#CCCCFF">
      <font size="5">Crime Time</font></td>
      <td width="618" height="46" bgcolor="#CCCCFF">
      <%=x7%></td>
    </tr>
    <tr>
      <td width="619" height="48" bgcolor="#CCCCFF">
      <font size="5">Venue</font></td>
      <td width="618" height="48" bgcolor="#CCCCFF">
      <%=x8%></td>
    </tr>
    <tr>
      <td width="619" height="46" bgcolor="#CCCCFF">
      <font size="5">About Case</font></td>
      <td width="618" height="46" bgcolor="#CCCCFF">
      <%=x9%></td>
    </tr>
    <tr>
      <td width="619" height="42" bgcolor="#CCCCFF">
      <font size="5">Status</font></td>
      <td width="618" height="42" bgcolor="#CCCCFF">
      <%=x10%></td>
    </tr>
    
    
    </table>
  
  </center>
</div>
</body>
</html>
<%

}
else{
out.println("Invalid Id or you are not elligible to see the details");
}

ps2.close();
rs4.close();
}
if(s2.equals("Criminal"))
{
ps2=c.prepareStatement("select vname,vaddress,vage,vphoneno,cname,caddress,cage,casetype,cdate,ctime,venue,aboutcase,status from cfir2 where caseid=?");
ps2.setInt(1,i2);
 rs4=ps2.executeQuery();


if(rs4.next())
{

x1=rs4.getString(1);

x2=rs4.getString(2);

a1=rs4.getInt(3);

a2=rs4.getDouble(4);

x3=rs4.getString(5);

x4=rs4.getString(6);

a3=rs4.getInt(7);

x5=rs4.getString(8);

x6=rs4.getString(9);

x7=rs4.getString(10);

x8=rs4.getString(11);



x9=rs4.getString(12);
x10=rs4.getString(13);

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
                  <a class="one" href="contactus.htm" ><img alt="" src="INDIA.jpg" height="25" hspace="5">Contact Us</a>
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
<div align="center" style="width: 1241; height: 225">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="1237" height="914" id="AutoNumber1">
    <tr>
      <td width="1237" height="113" bgcolor="#0000FF" colspan="2">
      <p align="center"><u><b>
      <font size="7" face="Comic Sans MS" color="#FFFFFF">OFFICER MODULE</font></b></u></td>
    </tr>
    <tr>
      <td width="1237" height="43" bgcolor="#808080" colspan="2">
      <p align="center"><b><font size="5">You have been authorized for the 
      following services</font></b></td>
    </tr>
    <tr>
      <td width="1237" height="71" bgcolor="#CCCCFF" colspan="2">
      <p align="center"><font size="5">View Case Details</font></td>
    </tr>
    <tr>
      <td width="619" height="43" bgcolor="#CCCCFF">
      <font size="5">Case Id</font></td>
      <td width="618" height="45" bgcolor="#CCCCFF">
      <%=i2%></td>
    </tr>
    <tr>
      <td width="619" height="45" bgcolor="#CCCCFF">
      <font size="5">Victim Name</font></td>
      <td width="618" height="45" bgcolor="#CCCCFF"><%=x1%>
      </td>
    </tr>
    <tr>
      <td width="619" height="47" bgcolor="#CCCCFF">
      <font size="5">Victim Address</font></td>
      <td width="618" height="47" bgcolor="#CCCCFF">
      <%=x2%></td>
    </tr>
    <tr>
      <td width="619" height="49" bgcolor="#CCCCFF">
      <font size="5">Victim Age</font></td>
      <td width="618" height="49" bgcolor="#CCCCFF">
      <%=a1%></td>
    </tr>
    <tr>
      <td width="619" height="38" bgcolor="#CCCCFF">
      <font size="5">Victim Phone no</font></td>
      <td width="618" height="38" bgcolor="#CCCCFF">
      <%=a2%></td>
    </tr>
    <tr>
      <td width="619" height="43" bgcolor="#CCCCFF">
      <font size="5">Criminal Name</font></td>
      <td width="618" height="43" bgcolor="#CCCCFF">
      <%=x3%></td>
    </tr>
    <tr>
      <td width="619" height="48" bgcolor="#CCCCFF">
      <font size="5">Criminal Address</font></td>
      <td width="618" height="48" bgcolor="#CCCCFF">
      <%=x4%></td>
    </tr>
    <tr>
      <td width="619" height="52" bgcolor="#CCCCFF">
      <font size="5">Criminal Age</font></td>
      <td width="618" height="52" bgcolor="#CCCCFF">
      <%=a3%></td>
    </tr>
    <tr>
      <td width="619" height="45" bgcolor="#CCCCFF">
      <font size="5">Case Type</font></td>
      <td width="618" height="45" bgcolor="#CCCCFF">
      <%=x5%></td>
    </tr>
    <tr>
      <td width="619" height="49" bgcolor="#CCCCFF">
      <font size="5">Crime Date</font></td>
      <td width="618" height="49" bgcolor="#CCCCFF">
      <%=x6%></td>
    </tr>
    <tr>
      <td width="619" height="46" bgcolor="#CCCCFF">
      <font size="5">Crime Time</font></td>
      <td width="618" height="46" bgcolor="#CCCCFF">
      <%=x7%></td>
    </tr>
    <tr>
      <td width="619" height="48" bgcolor="#CCCCFF">
      <font size="5">Venue</font></td>
      <td width="618" height="48" bgcolor="#CCCCFF">
      <%=x8%></td>
    </tr>
    <tr>
      <td width="619" height="46" bgcolor="#CCCCFF">
      <font size="5">About Case</font></td>
      <td width="618" height="46" bgcolor="#CCCCFF">
      <%=x9%></td>
    </tr>
    <tr>
      <td width="619" height="42" bgcolor="#CCCCFF">
      <font size="5">Status</font></td>
      <td width="618" height="42" bgcolor="#CCCCFF">
      <%=x10%></td>
    </tr>
    
    
    </table>
  
  </center>
</div>
</body>
</html>
<%

}
else{
out.println("Invalid Id");
}


ps2.close();
rs4.close();

}
c.close();
}

catch(Exception e)
{
out.println(e);
}
%>