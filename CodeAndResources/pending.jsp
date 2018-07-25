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


</head>

<body>
</table>

<h1 align="center"><font color="#008000">Pending Cases</font></h1>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="1241" id="AutoNumber1">
  <tr>
    <td width="166"><font size="5">Case ID</font></td>
    <td width="155"><font size="5">Case Type</font></td>
    <td width="136"><font size="5">Date</font></td>
    
<td width="150"><font size="5">Officer ID</font></td>
    <td width="167"><font size="5">Officer Name</font></td>
    <td width="127"><font size="5">Status</font></td>
    
   <%@page import="java.sql.*" %>
<%!String s2,s3,s6,s7,s8,s10,s11,s12,s13,s14,s17,s18;

int i15,i16;%>
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
					System.out.println("hello");


ResultSet rs2=s.executeQuery("select * from cfir where act='none'");
while(rs2.next())
{
s10=rs2.getString(10);
s11=rs2.getString(11);
i15=rs2.getInt(15);
i16=rs2.getInt(16);
s17=rs2.getString(17);
s18=rs2.getString(18);

%>
    
    
    

</tr>
<tr>
<td width="166"><%=i15%>&nbsp;</td>
<td width="155"><%=s10%>&nbsp;</td>
<td width="136"><%=s11%>&nbsp;</td>
<td width="150"><%=i16%>&nbsp;</td>
<td width="167"><%=s17%>&nbsp;</td>
<td width="127"><%=s18%>&nbsp;</td>
<td width="329">
<%

if (s10.equals("Robbery"))
{
%>
<form method="POST" action="http://localhost:8081/ser/robbery.jsp" size="20">

    <input type="Submit" value="Assign Act" name="B1"></p>
</form>

<%
}
if (s10.equals("Dowry"))
{
%>
<form method="POST" action="http://localhost:8081/ser/dowry.jsp">

    <input type="Submit" value="Assign Act" name="B1"></p>
</form>
</td>
</tr>

<%
}
if (s10.equals("Kidnapping"))
{
%>
<form method="POST" action="http://localhost:8081/ser/kidnapping.jsp">

    <input type="Submit" value="Assign Act" name="B1"></p>
</form>
</td>
</tr>

<%
}
if (s10.equals("Child Abuse"))
{
%>
<form method="POST" action="http://localhost:8081/ser/childabuse.jsp">

    <input type="Submit" value="Assign Act" name="B1"></p>
</form>
</td>
</tr>

<%
}
if (s10.equals("Murder"))
{
%>
<form method="POST" action="http://localhost:8081/ser/murder.jsp">

    <input type="Submit" value="Assign Act" name="B1"></p>
</form>
</td>
</tr>

<%
}
if (s10.equals("Molestation"))
{
%>
<form method="POST" action="http://localhost:8081/ser/molestation.jsp">

    <input type="Submit" value="Assign Act" name="B1"></p>
</form>
</td>
</tr>
<% }
}
rs2.close();
ResultSet rs1=s.executeQuery("select * from cfir2 where act='none'");
while(rs1.next())
{
s10=rs1.getString(10);
s11=rs1.getString(11);
i15=rs1.getInt(15);
i16=rs1.getInt(16);
s17=rs1.getString(17);
s18=rs1.getString(18);


%>
    
    
    

</tr>
<tr>
<td width="166"><%=i15%>&nbsp;</td>
<td width="155"><%=s10%>&nbsp;</td>
<td width="136"><%=s11%>&nbsp;</td>
<td width="150"><%=i16%>&nbsp;</td>
<td width="167"><%=s17%>&nbsp;</td>
<td width="127"><%=s18%>&nbsp;</td>
<td width="329">

<%

if (s10.equals("Robbery"))
{
%>
<form method="POST" action="http://localhost:8081/ser/robbery.jsp">

    <input type="Submit" value="Assign Act" name="B1"></p>
</form>
</td>
</tr>

<%
}
if (s10.equals("Dowry"))
{
%>
<form method="POST" action="http://localhost:8081/ser/dowry.jsp">

    <input type="Submit" value="Assign Act" name="B1"></p>
</form>
</td>
</tr>

<%
}
if (s10.equals("Kidnapping"))
{
%>
<form method="POST" action="http://localhost:8081/ser/kidnapping.jsp">

    <input type="Submit" value="Assign Act" name="B1"></p>
</form>
</td>
</tr>

<%
}
if (s10.equals("Child Abuse"))
{
%>
<form method="POST" action="http://localhost:8081/ser/childabuse.jsp">

    <input type="Submit" value="Assign Act" name="B1"></p>
</form>
</td>
</tr>

<%
}
if (s10.equals("Murder"))
{
%>
<form method="POST" action="http://localhost:8081/ser/murder.jsp">

    <input type="Submit" value="Assign Act" name="B1"></p>
</form>
</td>
</tr>

<%
}
if (s10.equals("Molestation"))
{
%>
<form method="POST" action="http://localhost:8081/ser/molestation.jsp">

    <input type="Submit" value="Assign Act" name="B1"></p>
</form>
</td>
</tr>

<%
}

}
rs1.close();

s.close();
c.close();
}
catch(Exception e)
{
out.println(e);


}
%> &nbsp;</table>


</body>

</html>