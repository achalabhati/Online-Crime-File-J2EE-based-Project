<html>
<body>
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
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="1237" height="347" id="AutoNumber1">
    <tr>
      <td width="1237" height="1" bgcolor="#0000FF" colspan="3">
      <p align="center"><u><b>
      <font size="7" face="Comic Sans MS" color="#FFFFFF">OFFICER MODULE</font></b></u></td>
    </tr>
    <tr>
      <td width="1237" height="43" bgcolor="#808080" colspan="3">
      <p align="center"><b><font size="5">You have been authorized for the 
      following services</font></b></td>
    </tr>
    <tr>
      <td width="1237" height="67" bgcolor="#CCCCFF" colspan="3">
      <p align="center"><font size="5">Case Assigned</font></td>
    </tr>
    <tr>
      <td width="329" height="56" bgcolor="#CCCCFF">
      <p align="center"><font size="5">Case Id</font></td>
      <td width="422" height="56" bgcolor="#CCCCFF">
      <p align="center"><font size="5">Case Type</font></td>
      <td width="486" height="67" bgcolor="#CCCCFF">
      <p align="center"><font size="5">Status</font></td>
    </tr>
   


<%@page import="java.sql.*" %>
<%!int aid;
String stat,ctype;
%>
<% 

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
PreparedStatement ps=c.prepareStatement("select caseid,casetype,status from cfir where officer_id=?");
ps.setInt(1,id);
ResultSet rs=ps.executeQuery();

while(rs.next())
{
out.println("hello");
aid=rs.getInt(1);
out.println(aid);
ctype=rs.getString(2);
stat=rs.getString(3);


%>
<tr>
      <td width="329" height="53" bgcolor="#CCCCFF">
      <center><%=aid%></center></td>
      <td width="422" height="53" bgcolor="#CCCCFF">
      <center><%=ctype%></center></td>
      <td width="486" height="53" bgcolor="#CCCCFF">
      <center><%=stat%></center></td>
    </tr>

<%

}
rs.close();
ps.close();
PreparedStatement ps1=c.prepareStatement("select caseid,casetype,status from cfir2 where officer_id=?");
ps1.setInt(1,id);
ResultSet rs1=ps1.executeQuery();

while(rs1.next())
{
out.println("hello");
aid=rs1.getInt(1);

ctype=rs1.getString(2);
stat=rs1.getString(3);


%>
<tr>
      <td width="329" height="53" bgcolor="#CCCCFF">
      <center><%=aid%></center></td>
      <td width="422" height="53" bgcolor="#CCCCFF">
      <center><%=ctype%></center></td>
      <td width="486" height="53" bgcolor="#CCCCFF">
      <center><%=stat%></center></td>
    </tr>

<%

}
rs1.close();
ps1.close();
c.close();
}
catch(Exception e)
{
out.println(e);
}


%>
</table>
</div>

</body>
</html>