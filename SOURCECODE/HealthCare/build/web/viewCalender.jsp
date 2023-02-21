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
                  <li class="active"><a href="NewAppointment.jsp">New Admission</a></li>
                   <li class="active"><a href="profile.jsp">Profile</a></li>
                    
                    <li class="active"><a href="Appointmentdetails.jsp">Admission Details </a></li>
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
  <%
                                                     
                                                       
                                               %>
                <div >
                    
                    
                    
                    
                    
                    
                    
                   <form id="form1" name="form1" method="post" action="viewCalender.jsp"> 
          <table  width="711" cellspacing="2"   cellpadding="2" align="center" style="width: 800px;border-radius: 20px;margin-top: 10px;background: white"> 
            <tbody><tr style="background-color: rgb(255, 128, 0);"> 
              <th bgcolor="#000000" colspan="3" scope="col" style="background-color: rgb(255, 128, 0);"><font color="#ffffff">Check the Availability Doctors </font></th> 
              </tr> 
           
            <tr > 
              <td style="background-color: #01c3fe"><div align="center" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Choose The Date:</div></td> 
              <td><div align="left" > 
                    <input type="date" name="lockerid" id="username" /> 
                  </div> 
              </td> 
            </tr> 
             <tr > 
              <td style="background-color: #01c3fe"></td> 
              <td><div align="left" > 
                    <input type="submit" value="Search" id="username" style="background-color: #98aa1e;color: white"/> 
                  </div> 
              </td> 
            </tr>
          </tbody></table> 
                </form>
                    
                       
                 <%
                 String mydate=request.getParameter("lockerid");
                 
                 System.out.println(mydate);
                  Connection connnx = com.onlinebank.ConnectionPool.getConnection();
                  String startDate=mydate.substring(0,4)+"-"+mydate.substring(5,7)+"-01";
                  String endDate=mydate.substring(0,4)+"-"+mydate.substring(5,7)+"-31";
                  
                   
                  PreparedStatement pssax=connnx.prepareStatement("select * from packages where exstart BETWEEN '"+startDate+"' and '"+endDate+"'");  
                  
                  ResultSet rss1ax=pssax.executeQuery();
                   %>   <table  width="711" cellspacing="2"   cellpadding="2" align="center" style="width: 800px;border-radius: 20px;margin-top: 10px;background: white"> 
            <tbody><tr style="background-color: rgb(255, 128, 0);"> 
              <th bgcolor="#000000" colspan="3" scope="col" style="background-color: rgb(255, 128, 0);"><font color="#ffffff">Doctor Appointments </font></th> 
              </tr> 
<%  
                  while(rss1ax.next()) 
                  {   
                         
                    %><tr > 
              <td style="background-color: #01c3fe"><div align="center" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> 
                     <%=rss1ax.getString("exstart")%>
                  
                  </div></td> 
              <td><div align="left" > 
                    
                     <%=rss1ax.getString("timing")%>  
                      
                  </div> 
              </td>
               <td><div align="left" > 
                    
                       <fotn color="brown"><b>REGISTERED</b></font>
                      
                  </div> 
              </td>
            </tr> 
            <%
                  
                  }
                    
                    %>
                  </div> 
              </td> 
            </tr> 
            
              
                    
                     </tbody></table>
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