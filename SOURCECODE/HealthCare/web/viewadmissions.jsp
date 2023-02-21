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
                    <h2 align="right"><FONT COLOR="yellow" SIZE="6">Display all Re-admission Forms</FONT></h2>
       
                <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<script>alert('Details Updated')</script>");
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("dis"))
                                                       {
                                                               out.println("<script>alert('Discharged Succesfully From the Hospital')</script>");
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("case"))
                                                       {
                                                               out.println("<script>alert('Failures')</script>");
                                                       }
                                                       
                                               %>    
                    
                        <form>
          <table bgcolor="#FFFFFF" align="center" cellpadding="5" height="200" cellspacing="5" width="1025" border="0">
            <tr  bgcolor="#33aaFF"> 
            <tr bgcolor="#33FFcc"> 
              <td align="center"><font color="#110022"><strong>Patient ID</strong></font></td>
               <td align="center"> <font color="#110022"><strong>Patient Name</strong></font></td>
                
              <td align="center"><font color="#110022"><strong>Age</strong></font></td>
              <td align="center"><font color="#110022"><strong>Subject</strong></font></td>      
              <td align="center"><font color="#110022"><strong>Status</strong></font></td>
               <td align="center"> <font color="#110022"><strong>Disease</strong></font></td>   
              
                            <td align="center"> <font color="#110022"><strong>Details</strong></font></td>
                             <td align="center"> <font color="#110022"><strong>Decharge</strong></font></td>
              
            </tr>      
                   
                    
                    
                    
       
	<%
 //String a=(String)session.getAttribute("userid");
       String unam=null,dob=null,dobb=null,gender=null,address=null,address1=null,mobile=null,email=null;String idd=null;
  
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
            
		con = com.onlinebank.ConnectionPool.getConnection();
                
		conn = com.onlinebank.ConnectionPool.getConnection();
		ps = con.prepareStatement("select * from readmission where status='readmission'");
		rs = ps.executeQuery();
                while(rs.next())
                {
                     
                      

                                 
                                 idd=rs.getString("pid");
                                 unam=rs.getString("pname");
                                 dob=rs.getString("address");
                                 dobb=rs.getString("age");
                                 gender=rs.getString("sub");
                                 email=rs.getString("dstatus");
                                 mobile=rs.getString("diseasesp");
                                
                                 String pemail=rs.getString("email");;
                                 session.setAttribute("pemail", pemail);
                    
                    
        
%>
 
<tr bgcolor="#FFFFCC"> 
              <td align="center"> <strong><font color="blue">  <%=idd%> </font></strong></td>
              <td align="center"><strong><font color="blue"> <%=unam%> </font></strong></td>
              
            
              
              
              <td align="center"><strong><font color="blue">   <%=dobb%> </font></strong></td>
               <td align="center"><strong><font color="blue"> <%=gender%> </font></strong></td>
              <td align="center"><strong><font color="blue"> <%=email%>  </font></strong> 
                  
              </td>

         <td align="center"><strong><font color="blue"> <%=mobile%> </font></strong></td>
              
         
         <td align="center"><strong><a href="previous.jsp?<%=idd%>"><font color="brown" size="4"> Admissions History </font></a></strong></td>
              
          <td align="center"><strong><a href="pdischarge.jsp?<%=idd%>"><font color="red" size="4"> Discharge </font></a></strong></td>
              
              
              
              
              
        </tr>
        
	
	   <%
      
String pid1=rs.getString(1);

%>
      
      	
    </tr>
<%
          }
          
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