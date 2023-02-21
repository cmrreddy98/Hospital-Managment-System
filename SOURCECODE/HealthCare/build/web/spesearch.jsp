<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
                  <li><a href="childhome.jsp">Home</a></li>
                  <li class="active"><a href="NewAppointment.jsp">New Appointment</a></li>
                   <li class="active"><a href="profile.jsp">Profile</a></li>
                     <li class="active"><a href="finddoctor.jsp">Find Best Doctor</a></li>
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
            <div class="row">
                <%
      String a=(String)session.getAttribute("userid");      
 String b=(String)session.getAttribute("cust_name");               

%>
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    <h2 align="right"><FONT COLOR="#ffSS">Welcome's Specialist Search</FONT></h2>
                    
                 
                  
                  <form id="form1" name="form1" method="post" action="doSpecialists.jsp" onsubmit="return valid()"><br />
	<table  width="501" border="0" align="right" style="background-color: greenyellow;" cellpadding="2" cellspacing="2" style=" padding: 5px;" height="183">
            <tr>
              <th colspan="3" bgcolor="#000000" scope="col" style="background-color: rgb(328, 128, 64);"><font color="#FFFFFF"> Locality Search Form </font></th>
              </tr>
            
            <tr >
              <td style="background-color:greenyellow;"><div align="center"><font color="#ff0000"><b>Select Specialist:</div></td>
              <td><div align="left" style="background-color: #FFF;" >
               <select name="namee">
                   <option value=""><------------Select Specialist Name---------></option>
                    <%
Connection conna=null;
PreparedStatement psmt11a=null;
ResultSet rssa=null;
//String name = request.getParameter("title");
try{
Class.forName("com.mysql.jdbc.Driver");	
			conna = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
psmt11a=conna.prepareStatement("select * from specialists");
rssa=psmt11a.executeQuery();
while(rssa.next())
{
    
%>
<option value="<%=rssa.getString(2)%>"><%=rssa.getString(2)%></option>
<%
}
}
catch(Exception ex)
{
out.println("Error in connection : "+ex);
}

%>           </select>
              </div></td>
            </tr>
             <tr>
              <td style="background-color: #FFF;"><label>
                <div align="right" style="background-color: rgb(222, 192, 192);">
                  <input type="reset" name="Submit2" value="Reset" />
                  </div>
              </label></td>
              <td colspan="2" style="background-color: #FFF;"><font color="#c0c0c0"><label> 
                 
                    <div align="left" style="background-color: rgb(128, 328, 64);"> 
                      <input type="submit" value="Check Doctors" name="Submit" /> 
                    </div> 
                  </label></font></td>
              </tr>
               
             </table>
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