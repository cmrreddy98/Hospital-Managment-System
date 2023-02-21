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
String pemail=(String)session.getAttribute("pemail");           
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
                   
                  PreparedStatement pss=conn.prepareStatement("select * from readmission where  pid='"+pid+"' and status='readmission'");  
                  
                  ResultSet rss1=pss.executeQuery();
                  while(rss1.next())
                  {       
                      
                     //int small=rss.getInt(15);
                     //int large=rss.getInt(24);                    
                      
                          //PreparedStatement psup=conup.prepareStatement("update passengers set status='done',guestname='"++"' where  username='"+(String)session.getAttribute("cust_name")+"' and  packid='"+pid+"' and status='wait'");  
                          //int bb=psup.executeUpdate();
                          //onee=rsss.getInt(1);
                         // audlttotal=onee*small;
                         // twoo=rsss.getInt(2);
                         // childtotal=twoo*large;
                          sum=onee+twoo;
                          //totalsum=audlttotal+childtotal; 
                          
%>
                <div >
                    <h2 align="right"><FONT COLOR="#ffSS" SIZE="5">RE ADMISSION ANALYSIS</FONT></h2>
                    
                 
               <form id="form1" name="form1"  action="updatereadminform.jsp" onsubmit="return valid()"><br />
	<table  width="701" border="0" align="center"  cellpadding="2" cellspacing="2" style=" padding: 5px;" height="400">
            <tr>
              <th colspan="3" bgcolor="#000000" scope="col" style="background-color: rgb(328, 128, 64);"><font color="#FFFFFF">PREVIOUS ADMISSION DETAILS</font></th>
              </tr>
            
            <tr >
                <td style="background-color:lightblue;"><div align="center"><font color="white" size="4"><b>Patient Name:</div></td>
              <td><div align="left" style="background-color: #FFF;" >
                <input type="text" maxlength="20" value="<%=rss1.getString(2)%>" size="20" name="t1" />
              </div></td>
            </tr>
            
            <tr >
               <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Age:</div></td>
              <td><div align="left" style="background-color: #FFF;" >
                <input type="text" maxlength="20" value="<%=rss1.getString(3)%>" size="20" name="t2" />
              </div></td>
            </tr>
           
            
            <tr>
                <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Patient ID:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input type="text" maxlength="20" value="<%=rss1.getString(4)%>" size="20" name="t3" />
              </div></td>
            </tr>
              
            <tr>
                <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>E-mail:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t4" type="text" value="<%=rss1.getString(5)%>" id="email" />
              </div></td>
            </tr>
            
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Mobile (+91):</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t5" type="text" value="<%=rss1.getString(6)%>" id="mobile" />
              </div></td>
              
            </tr>
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Subject:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                   <input name="t6" type="text" value="<%=rss1.getString(7)%>" id="mobile" />
              </div></td>
            </tr>
              
              <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Drug Details:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t7" type="text" value="<%= rss1.getString(8)%>" id="pin" size="30"/>
              </div></td>
            </tr>
            
            
             <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Drug Unit:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t8" type="text" value="<%= rss1.getString(9)%>" id="pin" size="30"/>
              </div></td>
            </tr>
              <tr>
             <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Side Effects:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t9" type="text" value="<%= rss1.getString(10)%>" id="pin" />
              </div></td>
            </tr>
            <tr>
             <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Dosage Frequency:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t10" type="text" value="<%= rss1.getString(11)%>" size="30" id="pin" />
              </div></td>
            </tr>
            
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Start Date:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t11" type="text" size="30" value="<%= rss1.getString(12)%>" id="pin" />
              </div></td>
            </tr>
            
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>End Date:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t12" type="text" size="30" value="<%=rss1.getString(13)%>" id="pin" />
              </div></td>
            </tr>
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Disease Status:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                   <input name="t13" type="text" size="30" value="<%= rss1.getString(14)%>" id="pin" />
              </div></td>
            </tr>
            
            
            
            <tr>
             <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Treatment:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                      <textarea name="t14" cols="40" rows="4"><%= rss1.getString(17)%></textarea>
              </div></td>
            </tr>
            <tr>
             <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Disease Specific</div></td>
              <td><div align="left" style="background-color: #FFF;">
              <input name="t15" type="text" value="<%= rss1.getString(18)%>" id="pin" />
              </div></td>
            </tr>
            
            
            
            
             <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Condition</div></td>
              <td><div align="left" style="background-color: #FFF;">
              <input name="t16" type="text" value="<%= rss1.getString(19)%>" id="pin" />
              </div></td>
            </tr>
            
            
            
            
            
            
            
            
            
            
            
            
            
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Lab Reports:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t17" type="text"  value="<%= rss1.getString(20)%>" id="pin" readonly/>
              </div></td>
            </tr>
            
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Patient_Type:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t18" type="text"  value="<%= rss1.getString(21)%>" id="pin" />
              </div></td>
            </tr>
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Blood Group:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t19" type="text"  value="<%= rss1.getString(22)%>" id="pin" />
              </div></td>
            </tr>
           
             <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Symptoms:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t20" type="text"  value="<%= rss1.getString(23)%>" id="pin" />
              </div></td>
            </tr>
            
            
            
            <tr>
              <td style="background-color: #FFF;"><label>
                
              </label></td>
              <td colspan="2" style="background-color: #FFF;"><font color="#c0c0c0"><label> 
                 
                    <div align="left" style="background-color: rgb(128, 328, 64);"> 
                     <input type="submit" name="Submit"  value="Update Medical Prescription" style="background-color: #F00; border: 2px; height:50px;color:white;font-size: 20px;"/></a>
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
                https://accounts.google.com/AddSession/signinchooser?hl=en&continue=https%3A%2F%2Fwww.google.co.in%2F&ec=GAlAmgQ&flowName=GlifWebSignIn&flowEntry=AddSession
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
<%
}}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>