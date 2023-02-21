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

                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    <h2 align="center"><FONT COLOR="yellow">Online Bill Payment </FONT></h2>
                   
		 <form action="BillPayment.jsp" method="post" style="margin: 10px;">
                     <label style="font-size: 20px;color:yellow">Patient ID</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="pid" value="<%=(String)session.getAttribute("pid")%>" readonly class="textbox1"/><br /><br />
                     <label style="font-size: 20px;color:yellow">Doctor Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="dname" value="<%=request.getParameter("doctor")%>" readonly class="textbox1"/><br /><br />
                        
                        <label style="font-size: 20px;color:yellow">Card Holder Name</label>&nbsp;&nbsp;<input type="text" name="uname"   class="textbox1" style="margin-left: 20px"/><br /><br />
                        <label style="font-size: 20px;color:yellow">Bank Name</label>&nbsp;
                        <select style="width: 200px;height: 25px;font-size: 20px;margin-left: 84px" required="" name="bank">
                            <option selected="">Select</option>   
                            <option value="ICIC">ICIC</option>   
                            <option value="KOTAK">KOTAK</option>   
                            <option value="CITIBANK">CITIBANK</option>   
                            <option value="SBI">SBI</option>   
                            <option value="HDFC">HDFC</option>   
                            <option value="AXIS">AXIS</option>   
                        </select><br /><br />
                        <label style="font-size: 20px;color:yellow">Credit Card No</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cno" value="" required="" class="textbox1"/><br /><br />
                        <label style="font-size: 20px;color:yellow">CVV (3 Digits)</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="cvv" value="" required="" class="textbox1"/><br /><br />
                        <label style="font-size: 20px;color:yellow">Expiry Date</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select name='expireMM' class="textbox6">
    <option value=''>Month</option>
    <option value='1'>January</option>
    <option value='2'>February</option>
    <option value='3'>March</option>
    <option value='4'>April</option>
    <option value='5'>May</option>
    <option value='6'>June</option>
    <option value='7'>July</option>
    <option value='8'>August</option>
    <option value='9'>September</option>
    <option value='10'>October</option>
    <option value='11'>November</option>
    <option value='12'>December</option>
</select> 
<select name='expireYY' class="textbox6">
    <option value=''>Year</option>
     <option value='2023'>2023</option>
      <option value='2022'>2022</option>
       <option value='2021'>2021</option>
    <option value='2020'>2020</option>
    <option value='2019'>2019</option>
    <option value='2018'>2018</option>
     <option value='2017'>2017</option>
</select> <br /><br />
                        <label style="font-size: 20px;color:yellow">Card Type</label>&nbsp;&nbsp;
                        <input type="radio" id="radio1" name="radios" value="master" checked>
                        <label for="radio1"><img src="images/master.png" height="50" width="50"></label>
                        <input type="radio" id="radio2" name="radios" value="visa">
                        <label for="radio2"><img src="images/Visa-icon.png" height="50" width="50"></label>
                        <input type="radio" id="radio3" name="radios" value="rupay">
                        <label for="radio3"><img src="images/rupay.png" height="50" width="50"></label> 
                        <input type="radio" id="radio4" name="radios" value="maestro">
                        <label for="radio4"><img src="images/Maestro.png" height="50" width="50"></label> 
                        <BR><BR>
                        <label style="font-size: 20px;color:yellow">Total Amount</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="tamount" value="<%=request.getParameter("total")%>" readonly class="textbox1"/><br /><br />
                      
                        <input type="submit" value="Pay" class="button" style="background-color: #c7254e; border: 2px; height:50px;width: 200px;color:white;font-size: 20px;margin-left: 400px;"/>
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