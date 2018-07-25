<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>

<body>

<%@page import="java.sql.*" %>
<%!int y,p_id,cid,s2;
String s1,ct;
Connection c;%>

<%
s1=request.getParameter("R1");
s2=Integer.parseInt(request.getParameter("t1"));

%>

<%
ct=(String)session.getAttribute("p");


try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

		} catch (ClassNotFoundException e1) {
			System.out.println("not f");
		}
		try {
			Connection c = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "system", "achala");
PreparedStatement pst,pst1,pst2,pst3,pst4,pst5=null;
				if(ct.equals("robbery"))	
				{		
				
		 pst = c.prepareStatement("update cfir set ACT=? where CASEID=?");
			pst.setString(1, s1);
			pst.setInt(2,s2);
			pst.executeUpdate();
			pst.close();
						
			


}
if(ct.equals("dowry"))	
				{		
				
		 pst1 = c.prepareStatement("update cfir set ACT=? where CASEID=?");
			pst1.setString(1, s1);
			pst1.setInt(2,s2);
			pst1.executeUpdate();
pst1.close();
}
if(ct.equals("childabuse"))	
				{		
				
		 pst2 = c.prepareStatement("update cfir set ACT=? where CASEID=?");
			pst2.setString(1, s1);
			pst2.setInt(2,s2);
			pst2.executeUpdate();
			pst2.close();


}
if(ct.equals("murder"))	
				{		
				
		 pst3 = c.prepareStatement("update cfir2 set ACT=? where CASEID=?");
			pst3.setString(1, s1);
			pst3.setInt(2,s2);
			pst3.executeUpdate();
pst3.close();

}
if(ct.equals("molestation"))	
				{		
				
		 pst4 = c.prepareStatement("update cfir2 set ACT=? where CASEID=?");
			pst4.setString(1, s1);
			pst4.setInt(2,s2);
			pst4.executeUpdate();
pst4.close();
}
if(ct.equals("kidnapping"))	
				{		
				
		 pst5 = c.prepareStatement("update cfir2 set ACT=? where CASEID=?");
			pst5.setString(1, s1);
			pst5.setInt(2,s2);
			pst5.executeUpdate();
pst5.close();
}


c.close();
RequestDispatcher dispatch=request.getRequestDispatcher("/pending.jsp");
dispatch .forward(request,response);

}
catch(Exception e)

{System.out.println("exp");}

					
					


 %>
 </body>

</html>