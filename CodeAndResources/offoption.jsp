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
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="1237" height="397" id="AutoNumber1">
    <tr>
      <td width="1237" height="113" bgcolor="#0000FF">
      <p align="center"><u><b>
      <font size="7" face="Comic Sans MS" color="#FFFFFF">OFFICER MODULE</font></b></u></td>
    </tr>
    <tr>
      <td width="1237" height="43" bgcolor="#808080">
      <p align="center"><b><font size="5">You have been authorized for the 
      following services</font></b></td>
    </tr>
    <tr>
      <td width="1237" height="47" bgcolor="#CCCCFF">
      <p align="center"><font size="5"><a href="t.jsp">View Case Assigned</a></font></td>
    </tr>
    <tr>
      <td width="1237" height="52" bgcolor="#CCCCFF">
      <p align="center"><font size="5"><a href="cased.jsp">View Case Details</a></font></td>
    </tr>
    <tr>
      <td width="1237" height="62" bgcolor="#CCCCFF">
     <a href="crimdetor.jsp"> <p align="center"><u><font size="5" color="#0000FF">Add Criminal Details</font></u></a></td>
    </tr>
    <tr>
      <td width="1237" height="62" bgcolor="#CCCCFF">
      <p align="center"><a href="challan.jsp"><u><font size="5" color="#0000FF">Challan Entry</font></u></a></td>
    </tr>
    <tr>
      <td width="1237" height="62" bgcolor="#CCCCFF">
      <p align="center"><font size="5"><a href="firstat.jsp">Update Case Status</a></font></td>
    </tr>
  </table>
  </center>
</div>
</body>
<% 
String g=(String)session.getAttribute("oid");
session.setAttribute("pid",g);
%></html>