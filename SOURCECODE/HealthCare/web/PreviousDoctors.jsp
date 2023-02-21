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
                  <li class="active"><a href="AvailableAppointment.jsp">New Appointments</a></li>
                  
                       <li class="active"><a href="staffregister.jsp">New Doctor</a></li>
                        <li class="active"><a href="specialists.jsp">New Specialists</a></li>
                              <li class="active"><a href="ViewDoctors.jsp">View Doctors</a></li>
 <li class="active"><a href="PreviousDoctors.jsp">Resigned Doctors</a></li>
                            
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
            <div class="row">
                <%
      String a=(String)session.getAttribute("userid");      
 String b=(String)session.getAttribute("cust_name");               

%>
                <div >
                  
                    
                    
                   <font color="yellow"> <h4> View Previous Doctors History!!</h4></font><br>
             
                 
            <table bgcolor="" cellpadding="5" align="center" cellspacing="5" width="900" border="1">
            <tr  bgcolor="white"> 
           <tr bgcolor="#ff9900"> 
              <td align="center"><font color="#110022"><strong>Doctor ID</strong></font></td>
              
              
              <td align="center"><font color="#110022"><strong>Doctor Name</strong></font></td>
              
               
              <td align="center"> <font color="#110022"><strong>Email ID</strong></font></td>
              <td align="center"><font color="#110022"><strong>Address</strong></font></td>
              <td align="center"><font color="#110022"><strong>Experience</strong></font></td>
              <td align="center"> <font color="#110022"><strong>Phone</strong></font></td>
              <td align="center"> <font color="#110022"><strong>Specialist</strong></font></td>
               <td align="center"> <font color="#110022"><strong>Fee</strong></font></td>
              
              
              
            </tr>
            
<%               
    
    //name, userid, pass, mail, age, loc, sex, time_
        String  u=null,st=null,en=null,intr=null,dot=null,dy=null,nop=null,sta=null,toc=null,key=null;
        
Connection con = databasecon.getconnection();
Statement st1 = con.createStatement();

ResultSet rs1 = st1.executeQuery("select * from  relivedoctors");
while(rs1.next()){
       %>   
      <tr bgcolor="white"> 
<td align="center"> <strong><font color="blue"> <%=rs1.getString(1)%> </font></strong></td>
              <td align="center"> <strong><font  color="blue"> <%=rs1.getString(2)%> </font></strong></td>
             
              <td align="center"><strong><font  color="blue"> <%=rs1.getString(5)%> </font></strong></td>
              <td align="center"><strong><font  color="blue"><%=rs1.getString(7)%> </font></strong></td>
              <td align="center"><strong><font  color="blue"> <%=rs1.getString(10)%> </font></strong></td>
              
             <td align="center"><strong><font  color="blue"> <%=rs1.getString(6)%> </font></strong></td>
             <td align="center"><strong><font  color="blue"> <%=rs1.getString(11)%> </font></strong></td>
              <td align="center"><strong><font  color="blue">Rs. <%=rs1.getString(9)%> </font></strong></td>
            
             
             
           </form>
     <%

}                                     
%>
</tr>
                                          </table><BR></BR>

                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
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