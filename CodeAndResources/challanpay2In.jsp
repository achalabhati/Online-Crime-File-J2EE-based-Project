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

<head>
<%!int chamt=0;%>
<%
String amount=(String)session.getAttribute("amt");
 chamt=Integer.parseInt(amount);
session.invalidate();
 %>
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





<body>

<div align="left">
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="1071" height="322">
    <tr>
      <td width="1071" height="79" bgcolor="#483D8B" colspan="2">
      <p align="center"><font size="7" color="#111111">&nbsp;&nbsp;&nbsp; Payment Gateway</font><u><font size="5" color="#FF0000">invalid 
      card no or pin</font></u></td>
    </tr>
    <tr>
      <td width="525" height="52">Bank</td>
      <td width="540" height="52">
      <form method="POST" action="http://localhost:8081/ser/challanpaydb.jsp">
        
        <select size="1" name="D1" style="width: 89; height: 89">
        <option selected>PNB</option>
        <option>SBI</option>
        <option>AXIS</option>
        <option>ICICI</option>
        </select></p>
      
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td width="525" height="65">Card No</td>
      <td width="540" height="65">
    
        	<p>
        <input type="text" name="T1" size="20"></p>
     
      <p>&nbsp;</td>
    </tr>
    <tr>
      <td width="525" height="59">Pin</td>
      <td width="540" height="59"><input type="text" name="T2" size="20"></td>
    </tr>
    <tr>
      <td width="525" height="58">Amount</td>
      <td width="540" height="58">&nbsp;<%=chamt%></td>
    </tr>
    <tr>
      <td width="1065" height="58" colspan="2">
              <input type="submit" value="Submit" name="B1"></p>
      </form>
      <p>&nbsp;</td>
    </tr>
  </table>
</div>
<p align="center"><u><font size="5"><b>&nbsp;</b></font></u></p>

</body>


  
</body>
</html>