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
      String a=(String)session.getAttribute("pid");      
 String b=(String)session.getAttribute("cust_name");               

%>

                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                   <%
                   
                   
                   Class.forName("com.mysql.jdbc.Driver");
	  Connection  	conp = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
          
          java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);

          PreparedStatement ps=conp.prepareStatement("insert into bills(patient_ID,Doctor_name,CardNumber,cvvnumber,expiry,Bill_Date,TotalAmount,bankname) values(?,?,?,?,?,?,?,?)");
          ps.setString(1,request.getParameter("pid"));
          ps.setString(2,request.getParameter("dname"));
          ps.setString(3,request.getParameter("cno"));
          ps.setString(4,request.getParameter("cvv"));
          ps.setString(5,request.getParameter("expireMM")+"/"+request.getParameter("expireYY"));
          ps.setString(6,strDateNew1);
          ps.setString(7,request.getParameter("tamount"));
          ps.setString(8,request.getParameter("bank"));
          ps.executeUpdate();
          String queryp="update admit set status='complete' where pid='"+a+"'";
					PreparedStatement pstmtp=conp.prepareStatement(queryp);
					pstmtp.executeUpdate();
                   
					
					response.sendRedirect("Appointmentdetails.jsp?message=bill");
                   
                   
                   
                   
                   %>
                    
             
    
      </form>
                    
                    
             
                    
      
                 
            
		
                    
                    
                    
                    
                    
                    
                    
                    
                    
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