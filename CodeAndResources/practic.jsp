<html>
<head></head>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="java.util.*" %>

<%
String s1;
s1=request.getParameter("img");
File f1=new File(s1);
FileInputStream fi=new FileInputStream(f1);

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

		} catch (ClassNotFoundException e1) {
			out.println(e1);
		}
		try
		{
			Connection c = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "system", "achala");
					Statement s=c.createStatement();

PreparedStatement pst = c.prepareStatement("insert into pract values(?)");

			pst.setBinaryStream(1,fi,(int)f1.length());
pst.executeUpdate();
}
catch (Exception e) {
		out.println(e);
		}
%>
<body></body>
