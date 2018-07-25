<html>
<head>
<title></title>

<script type="text/javascript">
function valid()
{
var s1=document.f1.T1.value;

if(s1==null||s1=="")
{
alert("Please enter the case ID");
return false;
}
var s2=document.f1.T2.value;

}
  </script>

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
<div align="center" style="width: 1237; height: 379">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="1237" height="349" id="AutoNumber1">
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
      <td width="1237" height="60" bgcolor="#CCCCFF" colspan="2">
      <p align="center"><font size="5">Change The FIR Status </font></td>
    </tr>
    <form  name="f1" method="POST" action="http://localhost:8081/ser/statch.jsp"  onSubmit="return valid()">
    <tr>
      <td width="583" height="30" bgcolor="#CCCCFF">
      <font size="5">Enter Case Id</font></td>
      <td width="648" height="30" bgcolor="#CCCCFF">
      <font size="5">
      <input type="text" size="20" name="T1" style="width: 150; height: 30; font-size: 12pt"></font></td>
    </tr>
    <tr>
      <td width="1231" height="44" bgcolor="#CCCCFF" colspan="2">
      <p align="left">
      <font size="5">&nbsp;Case Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      <select size="1" name="T2" dir="ltr">
       <option>Civil</option>
       <option>Criminal</option>
       </select></font></td>
    </tr>
    <tr>
      <td width="1231" height="30" bgcolor="#CCCCFF" colspan="2">
      &nbsp;
      <font size="5">Case Status</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <font size="5"> 
      <select size="1" name="T3" dir="ltr">
       <option>Solved</option>
       <option>File Closed but Pending</option>
       </select></font></td>
    </tr>
    <tr>
      <td width="1231" height="53" bgcolor="#CCCCFF" colspan="2">
      <p align="center">
      <input type="submit" value="submit" name="b1" style="width: 100; height: 30; font-size: 18pt; text-transform: capitalize; font-weight: bold; background-color: #808080"></td>
    </tr>
  </table>
  </form>
  </center>
</div>
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="5" height="43" id="AutoNumber2">
    <tr>
      <td width="5" height="43">&nbsp;</td>
    </tr>
  </table>
  </center>
</div>
</body>
</html>