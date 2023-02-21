<%@page import="java.sql.DriverManager"%>
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
                    <li><a href="doctorhome.jsp">Home</a></li>
                     <li><a href="sheduleparty.jsp">Appointments</a></li>
                    <li><a href="viewadmissions.jsp">Re-Admissions</a></li>
                  <li class="active"><a href="stafflogin.jsp">Logout</a></li>
                 
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
            <div class="row" style="margin-left: 100px">
                <%
      String a=(String)session.getAttribute("userid");      
      String b=(String)session.getAttribute("cust_name");               

%>
  <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<script>alert('Diagnoses Are Forwarded to Patient..!!')</script>");
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("same"))
                                                       {
                                                               out.println("<script>alert('Sorry!!You hava Aleady Booking the Party..!!')</script>");
                                                       
                                                                                                                     }
                                               %>
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    <h2 align="right"><FONT COLOR="yellow">Display Appointment Schedules</FONT></h2>
                    
                 
                 <form id="form1" name="form1" method="post" action="doSchedule.jsp">
	<table width="950" border="0" cellpadding="2" cellspacing="2" style="padding: 5px;background-color: white" height="360" >
            <tr>
              <th colspan="3" bgcolor="#000000" scope="col" style="background-color: rgb(0, 128, 255);"s><font color="#FFFFFF"><font color="#FFFFFF">Display Lists all Appointments.</font><br /></font></th>
              </tr>
            <tr>
              <td width="28%" rowspan="12"><div align="center"><img src="images/inquicker_icon_updated.png" width="278" height="248" /></div></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><div align="left"><br /></div></td>
              <td><div align="left">
                &nbsp; &nbsp; &nbsp;
              </div></td>
            </tr>
            
              <br>
             
            
            
            
               <tr>
              <td><div align="left"><font color="brown">Preferred Day for Appointment:</div></td>
              
              <td><div align="left"><font color="red">Select Date:
                      <input type="date" name="check">	
              </div></td>
            </tr>
           
              
            
           <tr>
              <td><div align="left"><br /> </div><br /></td>
              <td><div align="left"> 
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
              <input type="submit" value="Check Appointment Information" name="button3" style="background-color: #ff5656;color: white"/></div></td>
            </tr>
            <tr>
              <td><br /></td>
              <td><div align="left">
                &nbsp; &nbsp; &nbsp;
              </div></td>
            </tr>
            <tr>
              <th colspan="3" bgcolor="#000000" scope="col" style="background-color: rgb(0, 128, 255);"><font color="#FFFFFF">Identify which Appointment is Scheduled at which Time.......<br /></font></th> 
            </tr>
            </table><br/><p align="left" style="line-height:18px; padding:10px; font-weight:normal"><br /></p>
	</td>
  </tr>
  
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