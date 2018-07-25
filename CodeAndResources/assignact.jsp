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
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="1241" id="AutoNumber1">
  
</table>
<%
String g=(String)session.getAttribute("casetype");

%>
<div align="left">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="1274" height="324">
    <tr>
      <td width="1274" height="47"><%=g%></td>
    </tr>
    <tr>
      <td width="1274" height="66">&nbsp;</td>
    </tr>
    <tr>
      <td width="1274" height="68">&nbsp;</td>
    </tr>
    <tr>
      <td width="1274" height="73">&nbsp;</td>
    </tr>
    <tr>
      <td width="1274" height="62">&nbsp;</td>
    </tr>
  </table>
</div>


</body>

</html>