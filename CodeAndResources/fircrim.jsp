<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>

<body>

<%@page import="java.sql.*" %>
<%!int y,p_id,ncase;
String name,pcase;
Connection c;%>
<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14;

int i3,x=0,i6,i9,min;
double i4;
s1=request.getParameter("T1");
s2=request.getParameter("S1");
s3=request.getParameter("T2");
i3=Integer.parseInt(s3);
s4=request.getParameter("T3");
i4=Double.parseDouble(s4);

s5=request.getParameter("D1");
s6=request.getParameter("T4");
i6=Integer.parseInt(s6);

s7=request.getParameter("T5");
s8=request.getParameter("S2");
s9=request.getParameter("T6");
i9=Integer.parseInt(s9);

s10=request.getParameter("D2");
s11=request.getParameter("T7");
s12=request.getParameter("T8");
s13=request.getParameter("T9");
s14=request.getParameter("D3");
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

		} catch (ClassNotFoundException e1) {
			System.out.println("not f");
		}
		try {
			Connection c = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "system", "achala");
					Statement s=c.createStatement();
ResultSet rs=s.executeQuery("select * from cfir");
while(rs.next())
{
 x=rs.getInt(15);
}
 y=x+1;
rs.close();
s.close();
					
			PreparedStatement pst = c.prepareStatement("insert into cfir values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, s1);

			pst.setString(2, s2);
			pst.setInt(3, i3);
			pst.setDouble(4,i4);
			pst.setString(5, s5);
			pst.setInt(6, i6);
			pst.setString(7, s7);
pst.setString(8, s8);
pst.setInt(9, i9);

pst.setString(10, s10);
pst.setString(11, s11);
pst.setString(12, s12);
pst.setString(13, s13);
pst.setString(14, s14);
pst.setInt(15, y);
pst.setInt(16,0);
pst.setString(17,"");
pst.setString(18,"Pending");
pst.setString(19,"none");
int status = pst.executeUpdate();
			if (status > 0)
				System.out.println(status + "record affect");
			pst.close();
		
PreparedStatement ps2=c.prepareStatement("select id,name,num_case from policeofficials where area=? and post=?");
ps2.setString(1,s8);
ps2.setString(2,"Inspector");
ResultSet rs4=ps2.executeQuery();

while(rs4.next())
{

p_id=rs4.getInt(1);
name=rs4.getString(2);
ncase=rs4.getInt(3);
}

ps2.close();
rs4.close();

PreparedStatement ps3=c.prepareStatement("select case_assigned from policeofficials where id=?");
ps3.setInt(1,p_id);
ResultSet rs5=ps3.executeQuery();
while(rs5.next())
{
pcase=rs5.getString(1);
}	
pcase=pcase+","+y;
ps3.close();
rs5.close();

PreparedStatement ps4=c.prepareStatement("update policeofficials set case_assigned=? where id=?");
ps4.setString(1,pcase);
ps4.setInt(2,p_id);
ps4.executeUpdate();	
ps4.close();	



PreparedStatement ps8=c.prepareStatement("update CFIR set OFFICER_ID=? where caseid=?");
ps8.setInt(1,p_id);
ps8.setInt(2,y);
ps8.executeUpdate();	
ps8.close();


PreparedStatement ps6=c.prepareStatement("update cfir set officer_name=? where caseid=?");
ps6.setString(1,name);
ps6.setInt(2,y);
ps6.executeUpdate();	
ps6.close();		

c.close();
}
catch(Exception e)

{System.out.println("exp");}





%>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1" height="186">
  <tr>
    <td width="50%" height="63">Case ID:</td>
    <td width="50%" height="63">&nbsp;<%=y%></td>
  </tr>
  <tr>
    <td width="50%" height="53">Officer Assign ID:</td>
    <td width="50%" height="53">&nbsp;<%=p_id%></td>
  </tr>
  <tr>
    <td width="50%" height="68">Officer Assigned Name:</td>
    <td width="50%" height="68">&nbsp;<%=name%></td>
  </tr>
</table>


</body>

</html>