<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,com.onlinebank.BankCommons" errorPage="" %>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
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
            <div class="row" >
                <%
      String a=(String)session.getAttribute("userid");      
 String b=(String)session.getAttribute("cust_name");               

%>
                <div>
                    <h2 align="center"><FONT COLOR="YELLOW">Recent Appointment Details</FONT></h2>
                    
                  <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               %><script>alert('User Accepted Doctor Appointment!')</script><%
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("su"))
                                                       {
                                                               %><script>alert('Re-Admission Request is Sent!')</script><%
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("error"))
                                                       {
                                                               %><script>alert('Please Wait For Doctor Approvement!')</script><%
                                                       }
                                                        if(message!=null && message.equalsIgnoreCase("discharge"))
                                                       {
                                                               %><script>alert('Discharged Please look at Billing Process.')</script><%
                                                       }
                                                        if(message!=null && message.equalsIgnoreCase("bill"))
                                                       {
                                                               %><script>alert('Your Payment is Done.')</script><%
                                                       }
                                               %>
                    <form>
          <table bgcolor="#FFFFFF" align="center" cellpadding="5" height="200" cellspacing="5" width="1125" border="0">
            <tr  bgcolor="#33CCFF"> 
            <tr bgcolor="#E4E4F1"> 
              <td align="center"><font color="#110022"><strong>Admission ID</strong></font></td>
              <td align="center"> <font color="#110022"><strong>Doctor Name</strong></font></td>          
              <td align="center"><font color="#110022"><strong>Email</strong></font></td>
              <td align="center"><font color="#110022"><strong>Grant</strong></font></td>
              <td align="center"> <font color="#110022"><strong>Appointment Date</strong></font></td>
            
              
               <td align="center"> <font color="#110022"><strong>Contact</strong></font></td>
              <td align="center"><font color="#110022"><strong>Symptoms</strong></font></td>
              <td align="center"><font color="#110022"><strong>Approve</strong></font></td>
               <td align="center"><font color="#110022"><strong>Diagnosis Info</strong></font></td>
              
            </tr>
            <%
String uid=null,uname=null,date=null,fid=null,fname=null,fsize=null,sta=null;
ResultSet rs=null;ResultSet rsn=null;
try
{
	
    Class.forName("com.mysql.jdbc.Driver");	
		Connection	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
	Statement stn = conn.createStatement();	

    String qryn="select * from packages where name='"+b+"'";
		rsn =stn.executeQuery(qryn);
	while(rsn.next())
	{
    
    
            String kk=rsn.getString(1);
            
    System.out.println(""+kk);
    
    
    
    
			Class.forName("com.mysql.jdbc.Driver");	
		Connection	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
	Statement st = con.createStatement();	

    String qry="select * from packagerequests where packid='"+kk+"' and patientname='"+b+"'";
		rs =st.executeQuery(qry);
	while(rs.next())
	{
	fid=rs.getString(1);
	uid=rs.getString(2);
	
	uname=rs.getString(3);
	fname=rs.getString(4);
	fsize=rs.getString(5);
		date=rs.getString(6);
	sta=rs.getString(7);
	 
%>
            <tr bgcolor="#FFFFCC"> 
              <td align="center"> <strong><font color="#6300C6"> <%=kk%> </font></strong></td>
              <td align="center"><strong><font color="#6300C6"> <%=fid%> </font></strong></td>
              
           
              <td align="center"><strong><font color="#6300C6"> <%=uname%> </font></strong></td>
              <td align="center"><strong><font color="#6300c6"> <%=sta%> </font></strong></td>
               <td align="center"><strong><font color="#FF6600"> <%=rs.getString("appdate")%>   <%=rs.getString("apptime")%> </font></strong></td>
             
               
              <td align="center"> <strong><font color="#6300C6"> <%=rs.getString("contact")%>
                       <td align="center"> <strong><font color="#6300C6"> <%=rs.getString("venue")%>
                </font></strong> </td>
                
                <%
                if(rs.getString(8).equals("NO"))
                                       {
                session.setAttribute("doctor",fid);
                 session.setAttribute("doctormail",uname);
                  session.setAttribute("pid",kk);
                  session.setAttribute("pmail",rsn.getString("email"));
                String tdate=rs.getString("appdate")+"  "+rs.getString("apptime");
                session.setAttribute("timee",tdate);
%>
                
                
                <td align="center"><strong><font color="#6300C6">  <a href="adminpackactivation.jsp?<%=rs.getString(12)%>">Approve</a></font></strong> 
              
               <%}else{%> 
                
               
                <td align="center"><strong><font color="green">Success</font></strong> 
               
               <%}%>
                </td>
                <%if(rs.getString("status").equals("Discharge")){%>
                 <td align="center"><strong><font color="#6300C6">  <a href="BillInfo.jsp?<%=kk%>">View Bill Details</a></font></strong> 
                 <%}else{%>  <td align="center"><strong><font color="#6300C6">  <a href="viewdiagnosys.jsp?<%=kk%>">View Details</a></font></strong>  <%}%>
            </tr>
            <%
	   }
	   }}
	   catch(Exception e1)
	   {
	     out.println(e1.getMessage());
	   }
 %>
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