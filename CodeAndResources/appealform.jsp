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

 <script type="text/javascript">
function valid()
{
var s1=document.f1.t1.value;

if(s1==null||s1=="")
{
alert("Please enter the Union Ministry");
return false;
}

var s2=document.f1.t2.value;

if(s2==null||s2=="")
{
alert("Please enter the Title");
return false;
}

var s3=document.f1.t3.value;

if(s3==null||s3=="")
{
alert("Please enter the Name");
return false;
}
var s4=document.f1.t5.value;

if(s4==null||s4=="")
{
alert("Please enter the Phone No");
return false;

}
if(s4.length!=10)
{
alert("invalid mobile number");
return false;
}

var s5=document.f1.t4.value;
if(s5==null||s5=="")
{
alert("Please enter the Email");
return false;
}
var a=s5.indexOf('@');
var b=s5.lastIndexOf('.');
if(a<1||b-a<3)
{
alert("Please enter valid email");
return false;
}

var s6=document.f1.s1.value;

if(s6==null||s6=="")
{
alert("Please enter the Complaint Details");
return false;

}

}
</script>
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
          <form  name="f1" method="POST" action="http://localhost:8081/ser/appealjsp.jsp" onSubmit="return valid()">
 <div align="center">
            <center>
            <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="1237" height="107" id="AutoNumber1">
              <tr>
                <td width="1237" height="1" bgcolor="#000080">
                <p align="center"><font size="7" color="#888888">RTI APPEAL FORM</font></td>
              </tr>
              
             
              </table>
            </center>
          </div>


  
  
<div align="center">
  <center>
  <table border="0" width="1144" height="653">
    <tr>
      <td width="1144" height="36" bordercolordark="#CCCCCC" colspan="2">
      <p align="center"><b><font size="5">Ministry Details</font></b></td>
    </tr>
    <tr>
      <td width="462" height="38">Union Ministry</td>
      <td width="672" height="38"><input type="text" name="t1" size="70"></td>
    </tr>
    <tr>
      <td width="1144" height="39" colspan="2">
      <p align="center"><font size="5"><b>Appeal</b></font><b><font size="5"> 
      Particulars</font></b></td>
    </tr>
    <tr>
      <td width="460" height="33">Title</td>
      <td width="674" height="33"><input type="text" name="t2" size="70"></td>
    </tr>
    <tr>
      <td width="460" height="34">Name</td>
      <td width="674" height="34"><input type="text" name="t3" size="70"></td>
    </tr>
    <tr>
      <td width="460" height="33">Citizenship </td>
      <td width="674" height="33">
             <input type="radio" value="V1" checked name="R1">Indian&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="radio" name="R1" value="V2">NRI/Person of Indian Origin</p>
      
&nbsp;</td>
    </tr>
    <tr>
      <td width="1144" height="37" colspan="2">
      <p align="center"><b><font size="5">Contact details</font></b></td>
    </tr>
    <tr>
      <td width="459" height="38">Email Id</td>
      <td width="675" height="38"><input type="text" name="t4" size="70"></td>
    </tr>
    <tr>
      <td width="459" height="38">Mobile No</td>
      <td width="675" height="38"><input type="text" name="t5" size="70"></td>
    </tr>
    <tr>
      <td width="1144" height="39" colspan="2">
      <p align="center"><font size="5"><b>Appeal</b></font><b><font size="5"> 
      Details</font></b></td>
    </tr>
    <tr>
      <td width="459" height="39">Are you a senior citizen</td>
      <td width="675" height="39">
             <input type="radio" value="V1" checked name="R2">Yes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <input type="radio" value="V1" checked name="R2">No</td>
    </tr>
    <tr>
      <td width="459" height="37">Are you a physically Handicapped</td>
      <td width="675" height="37">
             <input type="radio" value="V1" checked name="R3">Yes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <input type="radio" value="V1" checked name="R3">No</td>
    </tr>
    <tr>
      <td width="459" height="164">Complaint Statement</td>
      <td width="675" height="164">
              <textarea rows="10" name="S1" cols="75"></textarea></p>
      
&nbsp;</td>
    </tr>
    <tr>
      <td width="459" height="52">
      <input type="submit" value="submit" name="B1" style="float: right"></td>
      <td width="675" height="52">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="reset" value="Reset" name="B2"></td>
    </tr>







  </table>
  </center>
</div>

</form>

  
</body>
</html>