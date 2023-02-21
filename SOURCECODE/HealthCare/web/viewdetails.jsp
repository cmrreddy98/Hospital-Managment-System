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
                       <li><a href="bookings.jsp">View Appointments</a></li>
                <li><a href="cliniclogin.jsp">Logout</a></li>
                 
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

<%
//java Code
String uu=null;int u22=0,u11=0,onee=0, twoo=0,sum=0;
int audlttotal=0,childtotal=0,totalsum=0;

try
               {
    
                  Connection conn = com.onlinebank.ConnectionPool.getConnection();
                   Connection connn = com.onlinebank.ConnectionPool.getConnection();
                   
                  PreparedStatement pss=conn.prepareStatement("select * from packagerequests where  id='"+pid+"'");  
                  
                  ResultSet rss1=pss.executeQuery();
                  while(rss1.next())
                  {       
                       Connection conup = com.onlinebank.ConnectionPool.getConnection();
                       PreparedStatement pss1=conup.prepareStatement("select * from packages where id='"+rss1.getString("packid")+"'");  
                  
                       ResultSet rss=pss1.executeQuery();
                       while(rss.next())
                      { 
                    
                          sum=onee+twoo;
                         //Connection conx = com.onlinebank.ConnectionPool.getConnection();
                       PreparedStatement psx=connn.prepareStatement("select * from admit where pid='"+rss1.getString("packid")+"'");  
                  
                       ResultSet rssx=psx.executeQuery();
                       if(rssx.next())
                      { 
                    
                        
                        
                          
%>
                <div >
                    <h2 align="right"><FONT COLOR="yellow" SIZE="5">List all the Details for that Appointment, including its Scheduled Date and Time.</FONT></h2>
                    
                 
               <form id="form1" name="form1" method="post" action="doConfirm.jsp" onsubmit="return valid()"><br />
	<table  width="701" border="0" align="center"  cellpadding="2" cellspacing="2" style=" padding: 5px;" height="413">
            <tr>
              <th colspan="3" bgcolor="#000000" scope="col" style="background-color: rgb(328, 128, 64);"><font color="#FFFFFF">SELECTED APPOINTMENT PROFILE </font></th>
              </tr>
            
            <tr >
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Patient Name:</div></td>
              <td><div align="left" style="background-color: #FFF;" >
                <input type="text" maxlength="20" value="<%=rss.getString(2)%>" size="20" name="lockerid" />
              </div></td>
            </tr>
            
            <tr >
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Age:</div></td>
              <td><div align="left" style="background-color: #FFF;" >
                <input type="text" maxlength="20" value="<%=rss.getString(4)%>" size="20" name="lockerid" />
              </div></td>
            </tr>
           
            
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Patient ID:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input type="text" maxlength="20" value="<%=pid%>" size="20" name="lockerid" />
              </div></td>
            </tr>
              
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>E-mail:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="email" type="text" value="<%=rss.getString("email")%>" id="email" />
              </div></td>
            </tr>
            
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Mobile (+91):</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="mobile" type="text" value="<%=rss.getString("contact")%>" id="mobile" />
              </div></td>
              
            </tr>
            
              
              <tr>
              <td style="background-color: darkmagenta"><div align="center"><font color="white" size="4"><b>Preferred date for Admission:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="period" type="text" value="<%= rss1.getString("appdate")%>" id="pin" size="30"/>
              </div></td>
            </tr>
              <tr>
              <td style="background-color:darkmagenta"><div align="center"><font color="white" size="4"><b>Preferred Time for Appointment:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="durration" type="text" value="<%= rss1.getString("apptime")%>" id="pin" />
              </div></td>
            </tr>
              <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Parent's Name:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="total" type="text" value="<%=rss.getString(5)%>"  id="pin" />
              </div></td>
            </tr>
              <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Address:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="accnumber" type="text" value="<%= rss.getString(6)%>" id="pin" />
              </div></td>
            </tr>
            <tr>
              <td style="background-color:darkmagenta;"><div align="center"><font color="white" size="4"><b>No.of Guests to Attend:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="lorfair" type="text" value="<%=rss.getInt(7)+rss.getInt(8)%>"  id="pin" />
              </div></td>
            </tr>
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Disease/Problem</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="locerf" type="text"  value="<%= rss.getString(12)%>"  id="pin" />
              </div></td>
            </tr>
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Lab Reports:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="locrf" type="text"  value="<%= rss1.getString("fee")%>" id="pin" readonly/>
              </div></td>
            </tr>
            
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Patient_Type:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="locrf" type="text"  value="<%= rss.getString(22)%>" id="pin" />
              </div></td>
            </tr>
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Blood Group:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="locrf" type="text"  value="<%= rss.getString(21)%>" id="pin" />
              </div></td>
            </tr>
           
             <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Symptoms:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="locrf" type="text"  value="<%= rss.getString("specialreq")%>" id="pin" />
              </div></td>
            </tr>
            
            
            <tr>
              <th colspan="3" bgcolor="#000000" scope="col" style="background-color: rgb(328, 128, 64);"><font color="#FFFFFF">ADMIT ROOM / WARD INFORMATION </font></th>
              </tr>
            
            
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Room Number:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="locrf" type="text"  value="<%= rssx.getString("rid")%>" id="pin"  readonly/>
              </div></td>
            </tr>
           
             <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Ward Number:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="locrf" type="text"  value="<%= rssx.getString("wid")%>" id="pin"  readonly/>
              </div></td>
            </tr>
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Total Charges:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="locrf" type="text"  value="Rs. <%= rssx.getString("totalcharges")%>" id="pin" readonly/>
              </div></td>
            </tr>
            
            <tr>
              <td style="background-color: #FFF;"><label>
                
              </label></td>
              <td colspan="2" style="background-color: #FFF;"><font color="#c0c0c0"><label> 
                 
                    <div align="left" style="background-color: rgb(128, 328, 64);"> 
                        <a href="sheduleparty.jsp">BACK</a>
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
<%}else{
                     response.sendRedirect("doSchedule.jsp?message=fail");        
                                   
}}
}
}catch(Exception e1)
{
e1.printStackTrace();
}


%>