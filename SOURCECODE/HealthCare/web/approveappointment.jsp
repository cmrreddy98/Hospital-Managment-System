
<%@ page language="java" %>
<%@ page session="true" %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%@ page import="java.sql.*,java.io.*,java.util.Random"%>

<HEAD>

	<LINK href="styles.css" type="text/css" rel="stylesheet">


	<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>

</HEAD>
<br><br>
<body>
<h2 align=center>AddNewEmployee</h2>

<%

	Connection con;
	ResultSet rs=null;
	Statement stmt=null;
String EmpName1 = request.getQueryString();
	try{
			
			con = databasecon.getconnection();
			stmt =  con.createStatement();
	
		
		        String Query = "update packages set status='YES' where id='"+EmpName1+"'"; 
			int result = stmt.executeUpdate(Query);
                        
                        
                        
                        if(result==1)	{
				  response.sendRedirect("AvailableAppointment.jsp?message=success");
			}
			else{
				 response.sendRedirect("AvailableAppointment.jsp?msgr=Register fails");
			}
		}catch(Exception e){%><%=e%><%}
	
%>
</BODY>


