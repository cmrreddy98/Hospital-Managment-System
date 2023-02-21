<%@page import="java.text.SimpleDateFormat"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
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

<body>
<!--==============================header=================================-->
<header id="header">
  <div class="headertop">
    <div class="container">
       <div class="rightside">
          
          <div class="menuheader">
            <nav class="navbar navbar-default navbar-static-top tm_navbar" role="navigation">
                <ul class="nav sf-menu">
                <li><a href="childhome.jsp">Home</a></li>
                  <li class="active"><a href="NewAppointment.jsp">New Appointment</a></li>
                   <li class="active"><a href="profile.jsp">Profile</a></li>
                  
                    <li class="active"><a href="Appointmentdetails.jsp">Appointment Details </a></li>
                  <li class="active"><a href="peoplesregistration.jsp">Logout</a></li>
                 
                </ul>
            </nav>
          </div>
      </div>
    </div>
  </div>
</header>
<!--==============================content=================================-->
<div class="extracontent">
<div id="content">
    <!--==============================row_7=================================-->
    <div class="row_7">
        <div class="container">
            <div class="row" style="margin-left: 200px">
                <%
      String a=(String)session.getAttribute("userid");      
 String b=(String)session.getAttribute("cust_name");               

%>
 <%
                                            
 				Connection con=null;
				Statement st=null;
				ResultSet rs=null;
				String sql="select * from user_details where userid='"+a+"'";
				try
	{
		//con=databasecon.getconnection();
con = databasecon.getconnection();
		st=con.createStatement();
		rs=st.executeQuery(sql);
		while(rs.next())
		{
                   
                    %>
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    <h2 align="center"><FONT COLOR="#ffSS">Profile Page</FONT></h2>
                   
		<form name="form" action="" method="post" onsubmit="return validation()">
        <table  width="760" height="250" bgcolor="#2F1A1A" >
		
		<tr><td align="center"><img src="image.jsp?<%=rs.getString(11)%>" height="200" width="200"></td><td>
		
		
              <table  align="center" height="300">
                <tr> 
                  <td colspan="2" align="center"><font size="2"><b> 
                   
                                              
                    </b></font></td>
                </tr>
               				<tr> 
                  <td><font  color="green" size="4"><strong>User Id:</strong></font></td>
                  <td>:&nbsp;&nbsp;<font color="white" size="5"><%=rs.getString(11)%></font></td>
                </tr>
				<tr> 
                  <td><font  color="green" size="4"><strong>User Name:</strong></font></td>
                 <td>:&nbsp;&nbsp;<font color="white" size="5"><%=rs.getString(1)%></font></td>
                </tr>
                <tr> 
                  <td><font  color="green" size="4"><strong>Parent's Name:</strong></font></td>
                 <td>:&nbsp;&nbsp;<font color="white" size="5"><%=rs.getString(2)%></font></td>
                </tr>
                <tr> 
                  <td><font color="green" size="4"><strong>Age:</strong></font></td>
                  <td>:&nbsp;&nbsp;<font color="white"size="5"><%=rs.getString(3)%></font></td>
                </tr>
				<tr> 
                  <td><font color="green" size="4"><strong>Gender:</strong></font></td>
                  <td>:&nbsp;&nbsp;<font color="white" size="5"><%=rs.getString(4)%></font></td>
                </tr>
                <tr> 
                  <td><font color="green" size="4"><strong>Email:</strong></font></td>
                 <td>:&nbsp;&nbsp;<font color="white" size="5"><%=rs.getString(5)%></font></td>
                </tr>
                
                <tr> 
                  <td><font color="green" size="4"><strong>Mobile:</strong></font></td>
                 <td>:&nbsp;&nbsp;<font color="white" size="5"><%=rs.getString(7)%></font></td>
                </tr>
                <tr> 
                  <td><font color="green" size="4"><strong>Location:</strong></font></td>
               <td>:&nbsp;&nbsp;<font color="white" size="5"><%=rs.getString(8)%></font></td>
                </tr>
                 <tr> 
                  <td><font color="green" size="4"><strong>Date of Birth:</strong></font></td>
               <td>:&nbsp;&nbsp;<font color="white" size="5"><%=rs.getString(10)%></font></td>
                </tr>
                  
              </table>
			 
            </form></td></tr>
		
		
		</table>
    
      </form>
                    
                    
                    
       	<%
}}
catch(Exception e)
	{
		System.out.println(e);
	}
	  finally
	{
		con.close();
		st.close();
	}
 
%>	             
                    
      
                 
            
		
                    
                    
                    
                    
                    
                    
                    
                    
                    
                </div>
            </div>
        </div>
    </div>
  
</div>
<!--==============================footer=================================-->
<footer>
    <div class="container">            
            <ul class="social_icons">
               <li><a href="https://accounts.google.com/AddSession/identifier?hl=en&continue=https%3A%2F%2Fwww.google.co.in%2F&ec=GAlAmgQ&flowName=GlifWebSignIn&flowEntry=AddSession"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="https://twitter.com/i/flow/login"><i class="fa fa-twitter size1"></i></a></li>
                <li><a href="https://www.facebook.com/login.php"><i class="fa fa-facebook"></i></a></li>
                <li><a href="https://in.pinterest.com/login/"><i class="fa fa-pinterest"></i></a></li>
            </ul>
            <div><p class="footerpriv"><a href="index.html"></a>  <span id="copyright-year"></span> &copy; </p></div><br />
			<div class="myde"><p></a></p></div>
    </div> 
</footer>
</div>
<script src="js/bootstrap.min.js"></script>
<script src="js/scripts.js"></script>
</body>
</html>