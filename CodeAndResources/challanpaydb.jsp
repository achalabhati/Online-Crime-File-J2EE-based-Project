<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" height="361">
  <tr>
    <td width="100%" height="37" colspan="2">
    <p align="center"><u><font size="7" color="#800080">CHALLAN RECEIPT</font></u></td>
  </tr>
  <tr>
    <td width="100%" height="60" colspan="2" bgcolor="#800080">
    &nbsp;</td>
  </tr>

<%@page import="java.sql.*" %>
<%!String y,cno,amt;
int chano;
ResultSet rs1,rs2,rs3,rs4;%>
<%
String s1,s2,s3;
 cno=(String)session.getAttribute("ch");
 amt=(String)session.getAttribute("am");
 chano=Integer.parseInt(cno);
 
s1=request.getParameter("D1");
s2=request.getParameter("T1");
s3=request.getParameter("T2");


int count=0;

try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

		} catch (ClassNotFoundException e1) {
			out.println(e1);
		}
		try {
			Connection c = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "system", "achala");
Statement st=c.createStatement();


if(s1.equals("PNB"))
   {
    rs1=st.executeQuery("select * from PNB");
   while(rs1.next())
     {
 String x=rs1.getString(1);
 String y=rs1.getString(2);

if(x.equals(s2) && y.equals(s3))
       {
out.println("You have Payed the Challan Successfully");

count++;

PreparedStatement ps1= c.prepareStatement("delete from CHALLAN where challan_no=?");
ps1.setInt(1,chano);
ps1.executeUpdate();
ps1.close();
%>
 <tr>
    <td width="50%" height="1">
    <p align="center">Challan No</td>
    <td width="50%" height="38">&nbsp;<%=cno%></td>
  </tr>

  
  <tr>
    <td width="50%" height="19">
    <p align="center">Amount Payed</td>
    <td width="50%" height="48">&nbsp;<%=amt%></td>
  </tr>
    
  <tr>
    <td width="50%" height="46" >
    <p align="center"><a href="http://localhost:8081/ser/index.htm">ok</a></td></td>
      </tr>
      <%
        }

     }
rs1.close();
    } 
    if(s1.equals("SBI"))
   {
    rs2=st.executeQuery("select * from SBI");
   while(rs2.next())
     {
 String x=rs2.getString(1);
 String y=rs2.getString(2);

if(x.equals(s2) && y.equals(s3))
       {
out.println("You have Payed the Challan Successfully");

count++;
PreparedStatement ps1= c.prepareStatement("delete from CHALLAN where challan_no=?");
ps1.setInt(1,chano);
ps1.executeUpdate();
ps1.close();

%><tr>
    <td width="50%" height="1">
    <p align="center">Challan No</td>
    <td width="50%" height="38">&nbsp;<%=cno%></td>
  </tr>

  
  <tr>
    <td width="50%" height="19">
    <p align="center">Amount Payed</td>
    <td width="50%" height="48">&nbsp;<%=amt%></td>
  </tr>
    
  <tr>
    <td width="50%" height="46" >
    <p align="center"><a href="http://localhost:8081/ser/index.htm">ok</a></td></td>
      </tr>
<%
       }

     }
rs2.close();
    } 
if(s1.equals("AXIS"))
   {
    rs3=st.executeQuery("select * from AXIS");
   while(rs3.next())
     {
 String x=rs3.getString(1);
 String y=rs3.getString(2);

if(x.equals(s2) && y.equals(s3))
       {
out.println("You have Payed the Challan Successfully");

count++;
PreparedStatement ps1= c.prepareStatement("delete from CHALLAN where challan_no=?");
ps1.setInt(1,chano);
ps1.executeUpdate();
ps1.close();

%><tr>
    <td width="50%" height="1">
    <p align="center">Challan No</td>
    <td width="50%" height="38">&nbsp;<%=cno%></td>
  </tr>

  
  <tr>
    <td width="50%" height="19">
    <p align="center">Amount Payed</td>
    <td width="50%" height="48">&nbsp;<%=amt%></td>
  </tr>
    
  <tr>
    <td width="50%" height="46" >
    <p align="center"><a href="http://localhost:8081/ser/index.htm">ok</a></td></td>
      </tr>
<%
       }

     }
rs3.close();
    } 
if(s1.equals("ICICI"))
   {
    rs4=st.executeQuery("select * from ICICI");
   while(rs4.next())
     {
 String x=rs4.getString(1);
 String y=rs4.getString(2);

if(x.equals(s2) && y.equals(s3))
       {
out.println("You have Payed the Challan Successfully");

count++;
PreparedStatement ps1= c.prepareStatement("delete from CHALLAN where challan_no=?");
ps1.setInt(1,chano);
ps1.executeUpdate();
ps1.close();

%><tr>
    <td width="50%" height="1">
    <p align="center">Challan No</td>
    <td width="50%" height="38">&nbsp;<%=cno%></td>
  </tr>

  
  <tr>
    <td width="50%" height="19">
    <p align="center">Amount Payed</td>
    <td width="50%" height="48">&nbsp;<%=amt%></td>
  </tr>
    
  <tr>
    <td width="50%" height="46" >
    <p align="center"><a href="http://localhost:8081/ser/index.htm">ok</a></td></td>
      </tr>
<%
       }

     }
rs4.close();
    } 
    
if(count==0)
{
RequestDispatcher dispatch=request.getRequestDispatcher("challanpay2In.jsp");
dispatch .forward(request,response);
}
st.close();
c.close();


}


catch(Exception e)
{out.println(e);
}


%>

<body>

</body>

</html>