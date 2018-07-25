
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

<head>
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



	
            <div align="center">
              <center>




	
            <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="1270" height="481" id="AutoNumber1" bgcolor="#0000FF">
              <tr>
                <td width="1237" height="42" colspan="3" bgcolor="#CCCCCC">
                &nbsp;</td>
              </tr>
              <tr>
                <td width="1237" height="42" colspan="3" bgcolor="#999999">
                <p align="center"><font size="7" color="#0000FF">ADMINISTRATOR</font><p>&nbsp;</td>
              </tr>
              <tr>
                <td width="567" height="393" rowspan="12">
                <img border="0" src="../POLICE/p7.jpg" width="355" height="391"></td>
                <form method="POST" action="http://localhost:8081/ser/meminfo.jsp">
                <td width="697" height="1" colspan="2">
                <p dir="ltr">&nbsp;<font color="#0000FF"><input type="submit" value="MEMBER INFORMATION" name="B1" style="font-family: Arial ;font-color: gray;  font-size: 18pt; font-style: italic; font-weight: bold; border: 0px ridge #800080; padding: 0; background-color:#0000FF; color:#C0C0C0"></font></p></td>
             </form>
 </tr>
              <tr>
                <td width="697" height="9" colspan="2">
                
                <p align="left"><i><b>
                <font size="5" color="#C0C0C0" face="Arial">FIR INFORMATION:</font><font size="6" color="#C0C0C0" face="Arial">-</font></b></i></p>
                </td>
             
 </tr>
              <tr>
                <td width="349" height="9">
                <form method="POST" action="http://localhost:8081/ser/civilfirinfo.jsp">
                <font color="#0000FF">
                <input type="submit" value="CIVIL FIR INFORMATION" name="B1" style="font-family: Arial ;font-color: gray;  font-size: 18pt; font-style: italic; font-weight: bold; border: 0px ridge #800080; padding: 0; background-color:#0000FF; color:#C0C0C0"></font></td>
               </form></td>
 <td width="348" height="9">
 <form method="POST" action="http://localhost:8081/ser/crimfirinfo.jsp">
                <font color="#0000FF">
  
              <input type="submit" value="CRIMINAL FIR INFORMATION" name="B1" style="font-family: Arial ;font-color: gray;  font-size: 18pt; font-style: italic; font-weight: bold; border: 0px ridge #800080; padding: 0; background-color:#0000FF; color:#C0C0C0"></font></td>
</form>
</td>
 </tr>
              <tr>
               <form method="POST" action="http://localhost:8081/ser/officerinfo.jsp">

                <td width="700" height="13" colspan="2">
                <font color="#0000FF">
                <input type="submit" value="OFFICER's INFORMATION" name="B1" style="font-family: Arial ;font-color: gray;  font-size: 18pt; font-style: italic; font-weight: bold; border: 0px ridge #800080; padding: 0; background-color:#0000FF; color:#C0C0C0"></font></td>
             
</form></td>
 </tr>
            
                
              <tr>
              

                <td width="700" height="19" colspan="2">
                <p align="left"><b><i>
                <font size="5" face="Arial" color="#C0C0C0">
                <a href="policereg.htm" style="text-decoration: none"><font color="#C0C0C0">Registration of New Officer</font></a></font></i></b></td>
              </tr>
            
                
              <tr>
                <td width="700" height="35" colspan="2">
                <b><i><font face="Arial" size="5" color="#C0C0C0"><a href="pending.jsp">"Assign Act</a></font></i></b></td>
              </tr>
            
                
              <tr>
                <td width="700" height="25" colspan="2">
                <i><b>
                <font size="5" color="#C0C0C0" face="Arial">
                <a href="assigncase.htm" style="text-decoration: none"><font color="#C0C0C0">Assign Case</font></a></font></b></i></td>
              </tr>
            
                
            </table>
              </center>
</div>
            </center>
          </div>
	      <p>&nbsp;</p>
		  
          <div class="content_container">
		    <!--close button_small-->		  
		  </div><!--close content_container-->			  
		</div><!--close content_item-->
      </div><!--close content-->   
	</div><!--close site_content--> 
    
  </div><!--close footer-->  
  
</body>
</html>