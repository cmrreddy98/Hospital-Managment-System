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
                  <li><a href="adminhome.jsp">Home</a></li>
                    <li class="active"><a href="ViewDoctors.jsp">View Doctors</a></li>
               
                 
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
            <div class="row" >
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    
                        
                </div>
                <div style="margin-left: 250px;">
                    <h2><FONT COLOR="#FFDDSS">Doctor/Clinic Registration Form</FONT></h2>
                    <table  width="750" height="350"  style="width: 800px;height:  400px;border-radius: 20px;margin-top: 10px;background: darkcyan">
		
		<tr><td><img src="images/group_doctors4.png" ></td><td>
		<form name="form" action="guestinsert.jsp" method="post" ENCTYPE="multipart/form-data"  onsubmit="return validation()">
		
              <table   height="450">
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
                    </b></font></td>
                </tr>
                <tr> 
                  <td colspan="2"></td>
                </tr>
				
				<tr> 
                  <td><font  color="white"><strong>Doctor Name:</strong></font></td>
                  <td><input type="text" name="name"></td>
                </tr>
                
                <tr> 
                  <td><font color="white"><strong>Age:</strong></font></td>
                  <td><input type="text" name="age"></td>
                </tr>
				<tr> 
                  <td><font color="white"><strong>Gender:</strong></font></td>
                  <td><input type="radio"  name="gender" value="male"> <font color="#FFdd00"><strong>Male</strong></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <input type="radio" name="gender" value="female"> <font color="#FFdd00"><strong>Female</strong></font></td>
                </tr>
                <tr> 
                  <td><font color="white"><strong>Email:</strong></font></td>
                  <td><input type="text" name="email"></td>
                </tr>
                <tr> 
                  <td><font color="white"><strong>Password:</strong></font></td>
                  <td><input type="password" name="password"></td>
                </tr>
                <tr> 
                  <td><font color="white"><strong>Mobile:</strong></font></td>
                  <td><input type="text" name="mobile"></td>
                </tr>
                 <tr> 
                  <td><font color="white"><strong>Location:</strong></font></td>
                  <td><input type="text" name="location"></td>
                </tr>
                <tr> 
                  <td><font color="white"><strong>Experience:</strong></font></td>
                  <td><input type="text" name="experience"></td>
                </tr>
                <tr> 
                  <td><font color="white"><strong>Picture:</strong></font></td>
                  <td><input type="file" name="file"></td>
                </tr>
                <tr> 
                  <td><font color="white"><strong>Consultancy Fee:</strong></font></td>
                  <td><input type="text" name="fee"></td>
                </tr>
                <tr> 
                  <td><font color="white"><strong>Specialist For:</strong></font></td>
                  <td><select name="specialist" style="height: 2em; width: 15em; -moz-border-radius: 1em 1em 1em 1em; border-radius: 1em 1em 1em 1em; margin-left:center; font-size:15px; background-color:#ffdce1"  onkeypress="checkEnter(event)">
         <option value="">-----Select Specialists-----</option>
        <option value="Rheumatologist">Rheumatologist</option>
         <option value="Anesthesiologist">Anesthesiologist</option>   
          <option value="Cardiologist">Cardiologist</option>
         <option value="Dermatologist">Dermatologist</option>
          <option value="Gastroenterologist">Gastroenterologist</option>
         <option value="Hematologist">Hematologist</option>
          <option value="Nephrologist">Nephrologist</option>
         <option value="Urologist">Urologist</option>
          <option value="Neurologist">Neurologist</option>
         <option value="Ophthalmologist">Ophthalmologist</option>
          <option value="Gynecologist">Gynecologist</option>
         <option value="Obstetrician">Obstetrician</option>
         <option value="Psychiatrist">Psychiatrist</option>
         <option value="Pediatrician">Pediatrician</option>
         

         
    </select></td>
                </tr>
                 <tr> 
                  <td><font color="white"><strong>Date of Birth:</strong></font></td>
                  <td><input type="date" name="dob"></td>
                </tr>
                <tr>
                  <td><input type="submit" value="Sign Up" class="sub"></td>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" value="Clear" class="sub1"> 
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