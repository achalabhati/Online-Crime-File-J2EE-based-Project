<html>
<head>
<title></title>

<style type="text/CSS">
        body{
        background-color:light-grey;
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
                  <a class="one"href="index.htm"><img alt="" src="INDIA.jpg" height="25" hspace="5">Home</a></td>
              <td height="69">
                  <a class="one" href="about.html">
                  <span style="font-weight: 400"><img alt="" src="INDIA.jpg" height="25" hspace="5">About Us</span></a></td>
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



          </br>
          </br>
          
 <div align="center">
            <center>
            <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="1237" height="107" id="AutoNumber1">
              <tr>
                <td width="1237" height="1" bgcolor="#000080">
                <p align="center"><font size="7" color="#888888">Act for Murder</font></td>
              </tr>
              
             
              </table>
            </center>
          </div>

<%@page import="java.sql.*" %>
<%session.setAttribute("p","murder");
 %>

   
<form method="POST" action="http://localhost:8081/ser/act.jsp">
  
  <table border="1" width="1158" height="328">
   <tr>
      <td width="1221" height="61">
      
        <p align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Case Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <input type="text" name="t1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    </tr>
  <tr>
      <td width="1158" height="45">
      
        <p align="left">
        <input type="radio" value="V1" checked name="R1">Section 304-A Causing 
        Death by negligence</p>
      
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td width="1158" height="68">
        <input type="radio" value="V2" checked name="R1">Section 307 Attempt to 
        Murder</td>
    </tr>
    <tr>
      <td width="1158" height="68">
        <input type="radio" value="V3" checked name="R1">Section 305 Abetment of 
        sucide of child or insane person</td>
    </tr>
    <tr>
      <td width="1158" height="62">
        <input type="radio" value="V4" checked name="R1">Section 6-Punishment 
        for murder by life convict</td>
    </tr>
    <tr>
      <td width="1158" height="60">
      <p align="center">
      <input type="submit" value="submit"</td style="width: 150; height: 50">
    </tr>
  </table>
  </center>
</div>

  </form>
</body>
</html>