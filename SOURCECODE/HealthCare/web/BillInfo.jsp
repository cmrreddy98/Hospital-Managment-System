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
                    <h2 align="center"><FONT COLOR="yellow">View Hospital Bill Information</FONT></h2>
                   
		<form name="form" action="BillPayment1.jsp" method="post" onsubmit="return validation()">
     
                    
                    
              <div class="CSSTableGenerator">      
   
					
					<%int amount=0;int acharges=0;String ptype=null;String nadmissions=null;
					String pid=request.getQueryString();
                                        session.setAttribute("pid",pid);
					Class.forName("com.mysql.jdbc.Driver");
	                                Connection  	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
					String query="select * from readmission where status='Discharge' and pid='"+pid+"'";
					PreparedStatement pstmt=con.prepareStatement(query);
					ResultSet rs=pstmt.executeQuery();
					while(rs.next())
					{
                                            amount=rs.getInt("rcount")*200;
                                            ptype=rs.getString("ptype");
                                            nadmissions=rs.getString("rcount");
                                        }
                                        String query1="select * from admit where status='YES' and pid='"+pid+"'";
					PreparedStatement pstmt1=con.prepareStatement(query1);
					ResultSet rs1=pstmt1.executeQuery();
					while(rs1.next())
					{
                                            acharges=rs1.getInt("totalcharges");
                                            
                                        }
					
					          
                  
					
					Class.forName("com.mysql.jdbc.Driver");
	  Connection  	conp = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
					String queryp="select * from packagerequests where status='Discharge' and packid='"+pid+"'";
					PreparedStatement pstmtp=conp.prepareStatement(queryp);
					ResultSet rsp=pstmtp.executeQuery();
					while(rsp.next())
					{  
						%>
                    <table  align="right" height="250" width="550" >
               
				
				<tr> 
                  <td><font  color="blue"><strong></strong></font></td>
                  <td></td>
                </tr>
                
                <tr> 
                    <td><font color="blue"><strong><font color="white" size="4">Patient Type:</strong></font></td>
                  <td><input type="text" name="age" value="<%=ptype%>"></td>
                </tr>
				
                 <tr> 
                  <td><font color="blue"><strong><font color="white" size="4">Assigned To:</strong></font></td>
                  <td><input type="text" name="doctor" value="<%=rsp.getString(1)%>"></td>
                </tr>
                
                 <tr> 
                  <td><font color="white" size="4"><strong>Appointment Date:</strong></font></td>
                  <td><input type="text" name="age" value="<%=rsp.getString("appdate")%> <%=rsp.getString("apptime")%>"></td>
                </tr>
                
                 <tr> 
                  <td><font color="white" size="4"><strong>Disease Type:</strong></font></td>
                  <td><input type="text" name="age" value="<%=rsp.getString("venue")%>"></td>
                </tr>
                 
                <tr> 
                  <td><font color="white" size="4"><strong>Drugs Information:</strong></font></td>
                  <td><input type="text" name="age" value="<%=rsp.getString("relationshp")%>"></td>
                </tr>
                <tr> 
                  <td><font color="white" size="4"><strong>Any Side Effects:</strong></font></td>
                  <td><input type="text" name="age" value="<%=rsp.getString("gaddress")%>"></td>
                </tr>
                
                 <tr> 
                  <td><font color="white" size="4"><strong>Number Of Bookings:</strong></font></td>
                  <td><input type="text" name="age" value="<%=rsp.getString("bookings")%>"></td>
                </tr>
                 <tr> 
                  <td><font color="white" size="4"><strong>LAB Reports:</strong></font></td>
                  <td><input type="text" name="age" value="<%=rsp.getString("fee")%>"></td>
                </tr>
                
                 <tr> 
                  <td><font color="white" size="4"><strong>Admission Fees:</strong></font></td>
                  <td><input type="text" name="age" value="Rs. 200" readonly></td>
                </tr>
                
                 <tr> 
                  <td><font color="white" size="4"><strong>No.of Re-Admissions:</strong></font></td>
                  <td><input type="text" name="age" value="<%=nadmissions%>" readonly></td>
                  
                  <tr> 
                  <td><font color="white" size="4"><strong>Re-Admissions Amount:</strong></font></td>
                  <td><input type="text" name="age" value="Rs. <%=amount%>" readonly></td>  
                  <tr> 
                  <td><font color="white" size="4"><strong>Room/Ward Charges:</strong></font></td>
                  <td><input type="text" name="age" value="Rs. <%=acharges%>" readonly></td>                 
                  
                   <tr> 
                  <td><font color="white" size="4"><strong>Total Amount:</strong></font></td>
                  <td><input type="text" name="total" value="<%=(amount+acharges)%>" readonly></td>
                   <tr> 
                  <td><font color="red"><strong><font color="red"><B>* One Time Payment Only</b></font></strong></font></td>
                  <td><input type="Submit" value="Bill Payment" style="background-color: #c9302c; border: 2px; height:50px;color:white;font-size: 20px;">
                  </td>                 
                   
                </tr>
                </tr>
                
              </table>
                    <%}%>
    
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