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
                  <li><a href="AvailableAppointment.jsp">Home</a></li>
                
                 
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
                    <h2 align="right"><FONT COLOR="yellow">Availability of Admissions Information</FONT></h2>
                    
        <form id="form1" name="form1" method="post" action="doRegister.jsp">
	<table border=""  ALIGN="center" width="1070" cellpadding="6">
        <tr bgcolor="#66CC66"><td colspan="25" align="center">
	<font color="#FFFF00"><b>New Admission List</b></font></td></tr>
        <tr bgcolor="#00CCFF" > 
        <td align="center" ><font color="#000000"><B>Admission ID</B></font></td>
		  <td  align="center" ><font color="#000000"><B>Patient Name</B></font></td>
          
		   
		          <td  align="center" ><font color="#000000"><B>Address</B></font></td>
					 <td  align="center" ><font color="#000000"><B>Picture</B></font></td>
					  <td  align="center" ><font color="#000000"><B>Start Period</B></font></td>
					  <td  align="center" ><font color="#000000"><B>End Period</B></font></td>
					  <td  align="center" ><font color="#000000"><B>Problem on</B></font></td>
                                          <td  align="center" ><font color="#000000"><B>Symptoms</B></font></td>
                                           <td  align="center" ><font color="#000000"><B>Patient Type</B></font></td>
					   <td  align="center" ><font color="#000000"><B>STATUS</B></font></td>
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
int seats=Integer.parseInt(request.getParameter("height"))+Integer.parseInt(request.getParameter("width"));
session.setAttribute("seats",seats);
String staff= request.getParameter("staff");

String patient_status=null;
System.out.println(height);
String question = request.getParameter("question");

String start = request.getParameter("start");
System.out.println(question);
String dayy = request.getParameter("day");
int monday=Integer.parseInt(request.getParameter("width"));
String monthh = request.getParameter("month");
int monday2=Integer.parseInt(request.getParameter("height"));
int people=monday2+monday;
String yearr = request.getParameter("year");
String sexram = request.getParameter("chooseday");

System.out.println("sssssssssssssss"+sexram);
String finall=dayy+"-"+monthh+"-"+yearr;
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
              Class.forName("com.mysql.jdbc.Driver");	
	     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
		ps = con.prepareStatement("select * from packages where timing='"+start+"' and type='"+question+"' and exstart='"+sexram+"'");
		rs = ps.executeQuery();
                System.out.println("select * from packages where timing='"+start+"' and type='"+question+"' and exstart='"+sexram+"'");
                while(rs.next())
                {
                     System.out.println(rs.getInt(19));
                         System.out.println(rs.getInt(19));
                          int ooo=Integer.parseInt(rs.getString(7));
                          int oop=Integer.parseInt(rs.getString(8));  
int sum=ooo+oop;                          
                          
                                              
                             // adult=monday2*rs.getInt(15);
                                    // childd=monday*rs.getInt(24);
                              Random r=new Random(1000);
                              int xop=r.nextInt();
                              
                              int htotal=Integer.parseInt(height);
                              int hwidth=Integer.parseInt(width);
                              String ttum=htotal+""+hwidth;
                              session.setAttribute("t_name",xop);
                                         String totall=null;  String sam=null; 
String msg="wait";                                                                                                                                                         
                             //pss = conn.prepareStatement("insert into bookings values('"+monday2+"','"+monday+"','"+xop+"','"+totall+"','"+totall+"','"+totall+"','"+msg+"',"+sum+")");
                                      System.out.println(ooo); 
                              // bb=pss.executeUpdate();
                               
                             String por=rs.getString(3);
                             
                                 
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
                               patient_status=rs.getString("accom");
                    
                    
        
%>
 
        <tr bgcolor="#CCCCCC"> 
		<td align="center">
           <%=idd%>
          </td>
		  
		<td align="center">
           <%=child%>
          </td>
		  
          <td align="center">
           <%=dobb%>
          </td>
		  
		<td align="center">
           <img src="imagee.jsp?<%=idd%>" height="50" width="50" >
          </td>
		<td align="center">
           <%=email%>
          </td>
		  
		<td align="center">
           <%=mobile%>
          </td>
		  
          <td align="center">
              
          
              
              
           <%=rs.getString(3)%>
          </td>
		  
	<td align="center">
            <%=address1%>
            
          </td>	
          <td align="center">
           <%=patient_status%>
          </td>
          
          <%
          
               Class.forName("com.mysql.jdbc.Driver");	
		Connection	connp = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
	
		PreparedStatement psdd = connp.prepareStatement("select sum(bookings),totalpositions from packagerequests where  packid='"+rs.getInt(1)+"' and status='Processing'" );
		ResultSet rsd = psdd.executeQuery();
                while(rsd.next())
                {
                    System.out.println("ffffffffffffffff"+rsd.getInt(1));
                    if(rsd.getInt(1)==0 && rsd.getInt(2)==0)
                    {
                        
                        %>
                        <td align="center"> <a href="custpacksendreq.jsp?<%=idd%>"><b><font color="green">Verify Now</a></b></td>
                        <%}else{
                        
                        
                        
                   // System.out.println("ffffffffffffffff"+rsd.getInt(2));
                    if(rsd.getInt(1)==rsd.getInt(2))
                                               {



%>
          
		<td align="center"><b><font color="red">Discharge</b></td>
                
                
                <%}
                        
                           else{
                        
                        
                        %>
                
                 <td align="center"> <a href="custpacksendreq.jsp?<%=idd%>"><b><font color="green">Verify Now</a></b></td>
                <%
                        
                        
                           }
        
        
        }%>
   
        </tr>
 
      
	
	   <%
      
String pid1=rs.getString(1);

%>
      
      	
    </tr>
<%
           
          } }
                                               
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