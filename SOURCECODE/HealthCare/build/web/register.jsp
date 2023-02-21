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

<!--==============================content=================================-->
<div class="extraorange">
<div id="content">
    <!--==============================row_7=================================-->
    <div class="row_7">
        <div class="container">
            <div class="row" style="margin-left: 200px">
                
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    <h2 align="right"><FONT COLOR="#FFDDSS">Patient Registration Form</FONT></h2>
                    
                 

		<table  align="center" width="960" height="350" style="width: 800px;height:  400px;border-radius: 20px;margin-top: 10px;background: khaki">
		
		<tr><td><img src="images/register-online-icon.png"  height="300" width="300"></td><td></td><td>
		<form name="form" action="userinsert.jsp" method="post" ENCTYPE="multipart/form-data" onsubmit="return validation()">
		
              <table  height="450" width="550" algn="center">
                <tr> 
                  <td colspan="2" align="center"><font size="2"><b> 
                   
                           <%
                                                       String messages=request.getParameter("message");
                                                       if(messages!=null && messages.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<script>alert('Registration Done..!!')</script>");
                                                       }
                                                       if(messages!=null && messages.equalsIgnoreCase("same"))
                                                       {
                                                               out.println("<script>alert('Sorry!!You hava Aleady Booking the Party..!!')</script>");
                                                       
                                                                                                                     }
                                               %>
                          
                          <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<font color='green'><blink>Registered Successfully !</blink></font>");
                                                       }
                                               %>
                    </b></font></td>
                </tr>
                
				
				<tr> 
                  <td><font  color="brown"><strong>Name:</strong></font></td>
                  <td><input type="text" name="name"></td>
                </tr>
                <tr> 
                  <td><font  color="brown"><strong>Father:</strong></font></td>
                  <td><input type="text" name="fname"></td>
                </tr>
                <tr> 
                  <td><font color="brown"><strong>Age:</strong></font></td>
                  <td><input type="text" name="age"></td>
                </tr>
				<tr> 
                  <td><font color="brown"><strong>Gender:</strong></font></td>
                  <td><input type="radio"  name="gender" value="male"> <font color="red"><strong>Male</strong></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <input type="radio" name="gender" value="female"> <font color="red"><strong>Female</strong></font></td>
                </tr>
                <tr> 
                  <td><font color="brown"><strong>Email:</strong></font></td>
                  <td><input type="text" name="email"></td>
                </tr>
                <tr> 
                  <td><font color="brown"><strong>Password:</strong></font></td>
                  <td><input type="password" name="password"></td>
                </tr>
                <tr> 
                  <td><font color="brown"><strong>Mobile:</strong></font></td>
                  <td><input type="text" name="mobile"></td>
                </tr>
                 <tr> 
                  <td><font color="brown"><strong>Location:</strong></font></td>
                  <td><input type="text" name="location"></td>
                </tr>
                <tr> 
                  <td><font color="brown"><strong>Picture:</strong></font></td>
                  <td><input type="file" name="file"></td>
                </tr>
                
                <tr> 
                  <td><font color="brown"><strong>DOB:</strong></font></td>
                  <td><input type="date" name="dob"></td>
                </tr>
                
                
                <tr>
                  <td><input type="submit" value="Sign Up" class="sub"></td>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" value="Clear" class="sub1"> 
                      <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html"><img src="images/home-button.png" height="50" width="600"> </a>
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