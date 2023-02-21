<%@page import="databaseconnection.databasecon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Health Systems</title>
    <meta charset="utf-8">    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name = "format-detection" content = "telephone=no" />
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your keywords">
    <meta name="author" content="Your name">
    <link rel="stylesheet" href="css/bootstrap.css" >
    <link rel="stylesheet" href="css/style_1.css">
    <link rel="stylesheet" href="fonts/font-awesome.css">
    <link rel="stylesheet" href="css/camera.css">
    <link rel="stylesheet" href="css/touchTouch.css">
    
	<script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.2.1.js"></script>
    <script  src="js/touchTouch.jquery.js"></script>
    <script src="js/superfish.js"></script>
    <script src="js/jquery.mobilemenu.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.ui.totop.js"></script>
    <script src="js/jquery.touchSwipe.min.js"></script>
    <script src="js/jquery.equalheights.js"></script>
    
    
    <script>	
        $(window).load( function(){		
           
           //thumb        
            // Initialize the gallery
            $('.thumb').touchTouch();
           	 
           	 
        });
    </script>
    
     
      
</head>
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
	
		
		        String Query = "delete from specialists where id='"+EmpName1+"'"; 
			int result = stmt.executeUpdate(Query);
                        
                        
                        
                        if(result==1)	{
				  response.sendRedirect("viewspecialists.jsp?msg=Register success");
			}
			else{
				 response.sendRedirect("viewspecialists.jsp?msgr=Register fails");
			}
		}catch(Exception e){%><%=e%><%}
	
%>
</BODY>


