<%@page import="java.util.Random"%>
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
                 <li><a href="Departmenthome.jsp">Home</a></li>
                  <li class="active"><a href="adminappointment.jsp">ADMIN Appointments</a></li>
                  
                       <li class="active"><a href="rooms.jsp">NEW ROOMS</a></li>
                        <li class="active"><a href="wards.jsp">NEW WARD</a></li>
                              <li class="active"><a href="bills.jsp">BILL INFORMATION</a></li>

                  <li class="active"><a href="DetLogin.jsp">Logout</a></li>
               
                 
                </ul>
            </nav>
          </div>
      </div>
    </div>
  </div>
</header>
<!--==============================content=================================-->
<div class="extragreen">
<div id="content">
    <!--==============================row_7=================================-->
    <div class="row_7">
        <div class="container">
            <div class="row" style="margin-left: 100px;">
               
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    <h2><FONT COLOR="#FFDDSS">Ward Registration Form</FONT></h2>
                    
                 

		<table  width="680" height="350" style="width: 800px;height:400px;border-radius: 20px;margin-top: 10px;background: navajowhite">
		
		<tr><td><img src="images/ward.png" height="200" width="350"></td><td>
		<form name="form" action="wardinsert.jsp" method="post"  onsubmit="return validation()">
		
              <table  align="right" height="250" width="500">
                <tr> 
                  <td colspan="2" align="center"><font size="2"><b> 
                     <%
                                                       String messages=request.getParameter("message");
                                                       if(messages!=null && messages.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<script>alert('Ward is Added..!!')</script>");
                                                       }
                                                       if(messages!=null && messages.equalsIgnoreCase("same"))
                                                       {
                                                               out.println("<script>alert('Sorry!! Ward is Already Existed..!!')</script>");
                                                       
                                                                                                                     }
                                               %>
                    </b></font></td>
                </tr>
               
				<tr> 
                  <td><font  color="blue"><strong>Ward Number:</strong></font></td>
                  <%Random rr=new Random();int rnumber=rr.nextInt(1000);%>
                  <td><input type="text" name="name" value="<%=rnumber%>" readonly></td>
                </tr>
                
                <tr> 
                  <td><font color="blue"><strong>Charges Per Bed:</strong></font></td>
                  <td><input type="text" name="age"></td>
                </tr>
				<tr> 
                  <td><font color="blue"><strong>Ward Type:</strong></font></td>
                  <td><input type="radio"  name="gender" value="General"> <font color="green"><strong>General</strong></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <input type="radio" name="gender" value="Special"> <font color="green"><strong>Special</strong></font></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Organized By:</strong></font></td>
                  <td><input type="text" name="email"></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Registration:</strong></font></td>
                  <td><input type="date" name="password"></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Ward Name:</strong></font></td>
                  <td><input type="text" name="pname"></td>
                </tr>
                
                <tr>
                  <td></td>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="Add Ward" class="sub">
                  </td>
                </tr>
              </table>
			  
            </form></td></tr>
		
		
		</table>
                    
                 
         
                    
                    
                    
                    
                    
                    
                    
                    
                    
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