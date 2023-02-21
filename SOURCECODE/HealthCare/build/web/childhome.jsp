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
                    
                    <li class="active"><a href="Appointmentdetails.jsp">Appointment Details</a></li>
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
            <div class="row">
                <%
      String a=(String)session.getAttribute("userid");      
 String b=(String)session.getAttribute("cust_name");               

%>
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    <h2 align="right"><FONT COLOR="#ffSS">Welcome's Patient Page</FONT><br>
                    
                        <img src="images/portal-logo.png"></h2>
		
                    
                    
                    
                    
                    
                    
                    
                    
                    
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