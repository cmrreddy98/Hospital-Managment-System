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
    
    
<script type="text/javascript">

function valid()
{

var k = document.form1.total.value;
if(k=="")
{
alert("Enter No.of Bookings");
document.form1.total.focus();
return false;
}
if(isNaN(k))
{
alert("Enter only in numbers");
document.form1.total.focus();
return false;
}
if(k.charAt(0)!=1)
{
alert("only one party can be booked at any one time");
document.form1.total.focus();
return false;
}

if(document.form1.button.checked==false)
             {
                   alert('You must agree to the terms first.');
                   document.form1.button.focus();
                   return false;
             }


}

</script>

     
      
</head>
<%
                                                       String messages=request.getParameter("message");
                                                       if(messages!=null && messages.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<script>alert('Report Transfered to Doctor..!!')</script>");
                                                       }
                                                       if(messages!=null && messages.equalsIgnoreCase("same"))
                                                       {
                                                               out.println("<script>alert('Sorry.!!')</script>");
                                                       
                                                                                                                     }
                                               %>
<body>
<!--==============================header=================================-->
<header id="header">
  <div class="headertop">
    <div class="container">
       <div class="rightside">
          
          <div class="menuheader">
            <nav class="navbar navbar-default navbar-static-top tm_navbar" role="navigation">
                 <ul class="nav sf-menu">
                  <li class="active"><a href="adminappointment.jsp">Doctor Appointments</a></li>
                  <li class="active"><a href="bills.jsp">BILL INFORMATION</a></li>
                  <li class="active"><a href="departlogin.jsp">Logout</a></li>
                 
                 
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
//String seats=(String)session.getAttribute("seats");           
 String b=(String)session.getAttribute("cust_name"); 
      
String pid=request.getQueryString();
//int omm=Integer.parseInt(demom);     


%>


                <div >
                    <h2 align="right"><FONT COLOR="yellow" SIZE="5">Admit Patient</FONT></h2>
                    
                 
               <form id="form1" name="form1" method="post" action="viewform.jsp" onsubmit="return valid()"><br />
	<table  width="401" border="0" align="center"  cellpadding="2" cellspacing="2" style=" padding: 5px;" height="300">
            <tr>
              <th colspan="3" bgcolor="#000000" scope="col" style="background-color: rgb(328, 128, 64);"><font color="#FFFFFF">Patient Room/Ward Admission </font></th>
              </tr>
            
            <tr >
                <td style="background-color: white;"><div align="center"><font color="#ff0000"><b>Patient ID:</div></td>
              <td><div align="left" style="background-color: #FFF;" >
                      <select name="t1"><option>------Choose Patient ID------</option>
                      
                      <%
//java Code
String uu=null;int u22=0,u11=0,onee=0, twoo=0,sum=0;
int audlttotal=0,childtotal=0,totalsum=0;


    
                  Connection conn = com.onlinebank.ConnectionPool.getConnection();
                   Connection connn = com.onlinebank.ConnectionPool.getConnection();
                   Connection connn1 = com.onlinebank.ConnectionPool.getConnection();
                   
                  PreparedStatement pss=conn.prepareStatement("select * from packagerequests where  status='PAYMENT'");  
                  
                  ResultSet rss1=pss.executeQuery();
                  while(rss1.next())
                  {       
                      String dname=rss1.getString("accname");
                      session.setAttribute("dname", dname);
                          
%>
<option value="<%=rss1.getString(2)%>"><%=rss1.getString(2)%></option>
                      
                      
                    <%}%>  
                      
                      
                      </select>
                
              </div></td>
            </tr>
            
            <tr>
              <td style="background-color: white;"><div align="center"><font color="#ff0000"><b>Room Number:</div></td>
              <td><div align="left" style="background-color: #FFF;">
               <select name="t2"><option>---Choose Room Number---</option>
                   
                <%



    
                  
                   
                  PreparedStatement pssa=connn.prepareStatement("select * from rooms");  
                  
                  ResultSet rss1a=pssa.executeQuery();
                  while(rss1a.next())
                  {       
                          
%>
<option value="<%=rss1a.getString(1)%>"><%=rss1a.getString(1)%></option>
                      
                      
                    <%}%>  
                      
                      
                      </select>   
                   
                   
              </div></td>
            </tr>
            
            
            <tr>
              <td style="background-color: white;"><div align="center"><font color="#ff0000"><b>Ward Number:</div></td>
              <td><div align="left" style="background-color: #FFF;">
               <select name="t3"><option>---Choose Ward Number---</option>
                   
                <%



    
                  
                   
                  PreparedStatement pssa1=connn1.prepareStatement("select * from wards");  
                  
                  ResultSet rss1a1=pssa1.executeQuery();
                  while(rss1a1.next())
                  {       
                          
%>
<option value="<%=rss1a1.getString(1)%>"><%=rss1a1.getString(1)%></option>
                      
                      
                    <%}%>  
                      
                      
                      </select>   
                   
                   
              </div></td>
            </tr>
            
           
            
            <tr>
              
              <td colspan="2" ><font color="#c0c0c0"><label> 
                 
                    <div align="left" style="background-color: #ffaaaa"> 
                     <input type="submit" name="Submit"  value="View Details" style="background-color: #f0ad4e;color: white; font-size: 20px;border: 2px; height:50px"/></a>
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
