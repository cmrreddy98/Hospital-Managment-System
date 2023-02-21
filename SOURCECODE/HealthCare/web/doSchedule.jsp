<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page import="java.io.*,java.util.*,java.util.Date"%>
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
            <div class="row">
                <%
      String a=(String)session.getAttribute("userid");      
 String b=(String)session.getAttribute("cust_name");               

%>
                <div >
                    <h2 align="right"><FONT COLOR="yellow" SIZE="6">Display all the party Details for a selected day.</FONT></h2>
       
                    <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font color='yellow'><blink><B>Please Wait For Detartment Confirmation!.</blink></font>");
                                                       }
                                                       
                                               %>
                    
                        <form>
          <table bgcolor="#FFFFFF" align="center" cellpadding="5" border="1" height="200" cellspacing="5" width="1125" border="0">
            <tr  bgcolor="#33aaFF"> 
            <tr bgcolor="#33FFcc"> 
              <td align="center"><font color="#110022"><strong>Admission ID</strong></font></td>
               <td align="center"> <font color="#110022"><strong>Patient Name</strong></font></td>
                <td align="center"> <font color="#110022"><strong>Address</strong></font></td>         
              <td align="center"><font color="#110022"><strong>Picture</strong></font></td>
              <td align="center"><font color="#110022"><strong>No.of Bookings</strong></font></td>      
              <td align="center"><font color="#110022"><strong>Appointment Date</strong></font></td>
               <td align="center"> <font color="#110022"><strong>Time</strong></font></td>   
               <td align="center"> <font color="#110022"><strong>Status</strong></font></td>  
              <td align="center"> <font color="#110022"><strong>View</strong></font></td>
                            <td align="center"> <font color="#110022"><strong>Response</strong></font></td>
                            
              
            </tr>      
                   
                    
                    
                    
       
	<%
 //String a=(String)session.getAttribute("userid");
       String unam=null,dob=null,dobb=null,gender=null,address=null,address1=null,mobile=null,email=null;int idd=0;
  
PreparedStatement ps = null;PreparedStatement pss = null;
	ResultSet rs = null;ResultSet rss = null;
	Connection con=null;Connection conn=null;
String width = request.getParameter("width");
String loc = request.getParameter("ques");
System.out.println(width);
String height = request.getParameter("height");
//int seats=Integer.parseInt(request.getParameter("height"))+Integer.parseInt(request.getParameter("width"));
//session.setAttribute("seats",seats);
String staff= request.getParameter("staff");


System.out.println(height);
String question = request.getParameter("question");

String start = request.getParameter("start");
System.out.println(question);
String dayy = request.getParameter("day");
//int monday=Integer.parseInt(request.getParameter("width"));
String monthh = request.getParameter("month");
//int monday2=Integer.parseInt(request.getParameter("height"));
//int people=monday2+monday;
String yearr = request.getParameter("year");

String appdate = request.getParameter("check");
System.out.println("xxxxxxxx"+appdate);
System.out.println("vbbbbbbbb"+b);
//int mon=Integer.parseInt(request.getParameter("year"));
//System.out.println(mon);
String exdayy = request.getParameter("exday");
//int monday1=Integer.parseInt(request.getParameter("exday"));
String exmonthh = request.getParameter("exmonth");
//int monday3=Integer.parseInt(request.getParameter("exmonth"));
String  exyearr = request.getParameter("exyear");
//int non=Integer.parseInt(request.getParameter("exyear"));
//System.out.println(non);
String sss=dayy+" "+monthh+" "+yearr;
String child=null;int total=0;int bb=0;
String ppp=exdayy+" "+exmonthh+" "+exyearr;
int adult=0;int childd=0;
SimpleDateFormat myFormat = new SimpleDateFormat("dd MM yyyy");
String inputString1 =dayy+" "+monthh+" "+yearr;
System.out.println(inputString1);
String inputString2 =exdayy+" "+exmonthh+" "+exyearr;
System.out.println(inputString2);
//Date date1 = myFormat.parse(inputString1);
//Date date2 = myFormat.parse(inputString2);
//long diff = date2.getTime() - date1.getTime();
//System.out.println ("Days: " + TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS));
//double dd=TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);

//System.out.println(u3);
	try
	{
            
              Connection conq = com.onlinebank.ConnectionPool.getConnection();
              PreparedStatement pss1 = conq.prepareStatement("select * from packagerequests where accname='"+b+"' and appdate='"+appdate+"'");
	      ResultSet rsq = pss1.executeQuery();
                while(rsq.next())
                {
		con = com.onlinebank.ConnectionPool.getConnection();
                
		conn = com.onlinebank.ConnectionPool.getConnection();
		ps = con.prepareStatement("select * from packages where id='"+rsq.getString(2)+"'");
		rs = ps.executeQuery();
                while(rs.next())
                {
                     System.out.println(rs.getInt(19));
                      

                                 
                                 idd=rs.getInt(1);
                                 unam=rs.getString(12);
                                 dob=rs.getString(4);
                                 dobb=rs.getString(6);
                                 gender=rs.getString(11);
                                 email=rs.getString(9);
                                 mobile=rs.getString(10);
                                 address=rs.getString(19);
                                 address1=rs.getString(15);
                                 child=rs.getString(2);
                               String pemail=rs.getString("email");
                     session.setAttribute("pemail",pemail);
                    
        
%>
 
<tr bgcolor="#FFFFCC"> 
              <td align="center"> <strong><font color="#FF6600">  <%=idd%> </font></strong></td>
              <td align="center"><strong><font color="#FF6600"> <%=child%> </font></strong></td>
              
              <td align="center"><strong><font color="#FF6600">   <%=dobb%> </font></strong></td>
              
              
              <td align="center"><strong><font color="#FF6600">  <img src="imagee.jsp?<%=idd%>" height="50" width="50" > </font></strong></td>
               <td align="center"><strong><font color="#FF6600"> <%=rsq.getString("bookings")%> </font></strong></td>
              <td align="center"><strong><font color="#FF6600"> <%=rsq.getString("appdate")%>  </font></strong> 
                  
              </td>

         <td align="center"><strong><font color="#FF6600"> <%=rsq.getString("apptime")%> </font></strong></td>
              
             <td align="center"><strong><font color="red"> <%=rs.getString("accom")%> </font></strong></td>
          
         
         
         
              <td align="center"> <a href="viewdetails.jsp?<%=rsq.getString("id")%>"><b><font color="green">View Details</a></b></td>

              
                <%
                if(rsq.getString("status").equals("NO"))
                                       {


%>
                
                
                <td align="center"><strong><font color="#630rr6">Waiting for Patient Acceptance</a></font></strong> 
              
               <%}else{
                                     
                                             
                           if(rsq.getString("status").equals("PAYMENT"))
                                       {%> 
                
               <td align="center"><a href="copd.jsp?<%=idd%>"><strong><font color="#630rr6">Waiting for Department Acceptance</font></strong></a>
             
               
                <%}else{                  
                                             
                                             
                                             
                                             if(rsq.getString("status").equals("Processing"))
                                       {%> 
                
               <td align="center"><a href="copd.jsp?<%=idd%>"><strong><font color="blue">Upload Medicines</font></strong></a>
             
               
                <%}else{%>
                    
                   <td align="center"><strong><font color="orange">DISCHARGED</font></strong>     
                    
                    <%}}}%>
                </td>
              
              
              
              
              
              
              
              
              
              
              
              
        </tr>
        
	
	   <%
      
String pid1=rs.getString(1);

%>
      
      	
    </tr>
<%
           }}
          
                                        }                      
	 
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
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