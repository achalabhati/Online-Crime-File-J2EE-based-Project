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

<script type="text/javascript">
function valid()
{
var s1=document.f1.T1.value;

if(s1==null||s1=="")
{
alert("Please enter the Name");
return false;
}
var s2=document.f1.T2.value;

if(s2==null||s2=="")
{
alert("Please enter the CaseId");
return false;
}
var s3=document.f1.T3.value;

if(s3==null||s3=="")
{
alert("Please enter the Crime Place");
return false;
}

var s4=document.f1.T4.value;

if(s4==null||s4=="")
{
alert("Please enter the City");
return false;
}
var s5=document.f1.S1.value;

if(s5==null||s5=="")
{
alert("Please enter the Identity");
return false;
}
}
</script>
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
          <form name="f1" method="POST" action="http://localhost:8081/ser/crimdet.jsp" onSubmit="return valid()"> 
          <table %20border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="525">
  <tr>
    <td width="100%" height="56" colspan="2" bgcolor="#000080">
    <p align="center"><u><font size="7" color="#C0C0C0">CRIMINAL DETAILS</font></u></td>
  </tr>
  <tr>
    <td width="100%" height="56" colspan="2" bgcolor="#800080">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="50%" height="56">
    <p align="center">Name</td>
    <td width="50%" height="56">
    <!--webbot bot="Validation" s-data-type="String" b-allow-letters="TRUE" b-allow-whitespace="TRUE" b-value-required="TRUE" i-minimum-length="2" i-maximum-length="20" --><input type="text" name="T1" size="20" maxlength="20"></td>
  </tr>
  <tr>
    <td width="50%" height="47">
    <p align="center">Case ID</td>
    <td width="50%" height="47">
    <!--webbot bot="Validation" s-data-type="String" b-allow-letters="TRUE" b-allow-whitespace="TRUE" b-value-required="TRUE" i-minimum-length="2" i-maximum-length="20" --><input type="text" name="T2" size="20" maxlength="20"></td>
  </tr>
  <tr>
    <td width="50%" height="44">
    <p align="center">Case Type</td>
    <td width="50%" height="44" align="left">
    <p align="left">
      Civil
    <input type="radio" value="Civil" checked name="R1">&nbsp;&nbsp;&nbsp;&nbsp; 
      Criminal
    <input type="radio" value="Criminal" name="R1"></p>
   
    <p>&nbsp;</td>
  </tr>
  <tr>
    <td width="50%" height="55">
    <p align="center">Crime Place</td>
    <td width="50%" height="55">
    <!--webbot bot="Validation" s-data-type="String" b-allow-letters="TRUE" b-allow-whitespace="TRUE" b-value-required="TRUE" i-minimum-length="2" i-maximum-length="20" --><input type="text" name="T3" size="20" maxlength="20"></td>
  </tr>
  <tr>
    <td width="50%" height="56">
    <p align="center">City</td>
    <td width="50%" height="56">
    <!--webbot bot="Validation" s-data-type="String" b-allow-letters="TRUE" b-allow-whitespace="TRUE" b-value-required="TRUE" i-minimum-length="2" i-maximum-length="20" --><input type="text" name="T4" size="20" maxlength="20"></td>
  </tr>
  <tr>
    <td width="50%" height="53">
    <p align="center">Gender</td>
    <td width="50%" height="53">Male
    <input type="radio" value="Male" checked name="R2">&nbsp;&nbsp;&nbsp; Female
    <input type="radio" value="Female" name="R2"></td>
  </tr>
  <tr>
    <td width="50%" height="62">
    <p align="center">Nearest Police Station</td>
    <td width="50%" height="62">
       <select size="1" name="D1" dir="ltr">
       <option>Babina</option>
       <option>Badagaon</option>
       <option>Barausagar</option>
       <option>BHEL</option>
       <option>Bundelkhand University</option>
       <option>Chirgaon</option>
       <option>Garotha</option>
       <option>Kakarwai</option>
       <option>Katra</option>
       <option>Manik Chok</option>
       <option>Math</option>
       <option>Sadar bazar</option>
       <option>Sipri</option>
       </select></td>
  </tr>
  <tr>
    <td width="50%" height="48">
    <p align="center">Identity</td>
    <td width="50%" height="48">
       <textarea rows="2" name="S1" cols="20"></textarea></td>
  </tr>
  <tr>
    <td width="50%" height="53">
    <p align="center">Status</td>
    <td width="50%" height="53">
    Caughted
    <input type="radio" value="Caughted" checked name="R3">&nbsp;&nbsp;&nbsp; 
    Not Caughted
    <input type="radio" value="Not Caughted" name="R3"></td>
  </tr>
  <tr>
    <td width="50%" height="42">
    <p align="center">
      <input type="submit" value="Submit" name="B1"></td>
    <td width="50%" height="42">
    <p align="left"><input type="reset" value="Reset" name="B2"></td>
  </tr>
</table>
 

</form>
</body>

</html>