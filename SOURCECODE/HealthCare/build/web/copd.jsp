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
                   
                  PreparedStatement pss=conn.prepareStatement("select * from packagerequests where  packid='"+pid+"'");  
                  
                  ResultSet rss1=pss.executeQuery();
                  while(rss1.next())
                  {       
                       Connection conup = com.onlinebank.ConnectionPool.getConnection();
                       PreparedStatement pss1=conup.prepareStatement("select * from packages where id='"+rss1.getString("packid")+"'");  
                  
                       ResultSet rss=pss1.executeQuery();
                       while(rss.next())
                      { 
                  
                          sum=onee+twoo;
                       
                          
%>
                <div >
                    <h2 align="right"><FONT COLOR="brown" SIZE="5">REQUIREMENT ANALYSIS</FONT></h2>
                    
                 
               <form id="form1" name="form1" method="post" action="doReadmission.jsp" onsubmit="return valid()"><br />
	<table  width="701" border="0" align="center"  cellpadding="2" cellspacing="2" style=" padding: 5px;" height="413">
            <tr>
              <th colspan="3" bgcolor="#000000" scope="col" style="background-color: rgb(328, 128, 64);"><font color="#FFFFFF">PATIENT MEDICINE INFORMATION</font></th>
              </tr>
            
            <tr >
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Patient Name:</div></td>
              <td><div align="left" style="background-color: #FFF;" >
                <input type="text" maxlength="20" value="<%=rss.getString(2)%>" size="20" name="t1" />
              </div></td>
            </tr>
            
            <tr >
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Age:</div></td>
              <td><div align="left" style="background-color: #FFF;" >
                <input type="text" maxlength="20" value="<%=rss.getString(4)%>" size="20" name="t2" />
              </div></td>
            </tr>
           
            
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Patient ID:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input type="text" maxlength="20" value="<%=pid%>" size="20" name="t3" />
              </div></td>
            </tr>
              
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>E-mail:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t4" type="text" value="<%=rss.getString("email")%>" id="email" />
              </div></td>
            </tr>
            
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Mobile (+91):</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t5" type="text" value="<%=rss.getString("contact")%>" id="mobile" />
              </div></td>
              
            </tr>
            <tr>
              <td style="background-color:orange;"><div align="center"><font color="white" size="4"><b>Subject:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                  <select name="t6" style="height: 2em; width: 15em; -moz-border-radius: 1em 1em 1em 1em; border-radius: 1em 1em 1em 1em; margin-left:center; font-size:15px; background-color:#ffdce1"  onkeypress="checkEnter(event)">
         <option value="">-----Subject Type-----</option>
        <option value="Patient">Patient</option>
         <option value="Family_Member">Family_Member</option>   
         
        
    </select>
              </div></td>
            </tr>
              
              <tr>
              <td style="background-color:orange;"><div align="center"><font color="white" size="4"><b>Drug Details:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t7" type="text" value="<%= rss1.getString("relationshp")%>" id="pin" size="30"/>
              </div></td>
            </tr>
            
            
             <tr>
              <td style="background-color:orange;"><div align="center"><font color="white" size="4"><b>Drug Unit:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <select name="t8" id="pin">
                    <option>******Choose Drug Quantity</option>
                    <option>1</option>
                    <option>2</option>
                    <option>5</option>
                    <option>10</option>
                    <option>100</option>
                    <option>150</option>
                    <option>200</option>
                    <option>250</option>
                    <option>300</option>
                    <option>500</option>
                    <option>700</option>
                    <option>600</option>
                    <option>750</option>
                </select>
              </div></td>
            </tr>
              <tr>
              <td style="background-color:orange;"><div align="center"><font color="white" size="4"><b>Side Effects:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t9" type="text" value="<%= rss1.getString("gaddress")%>" id="pin" />
              </div></td>
            </tr>
            <tr>
              <td style="background-color:orange;"><div align="center"><font color="white" size="4"><b>Dosage Frequency:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <select name="t10" id="pin">
                    <option>******Choose Dosage Frequency</option>
                    <option>Grams</option>
                    <option>MilliLitre</option>
                    <option>Litre</option>
                    <option>microgram</option>
                    <option>kilogram</option>
                    <option>milligram</option>
                    </select>

              </div></td>
            </tr>
            
            <tr>
              <td style="background-color:orange;"><div align="center"><font color="white" size="4"><b>Start Date:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t11" type="date" size="30" id="pin" />
              </div></td>
            </tr>
            
            <tr>
              <td style="background-color:orange;"><div align="center"><font color="white" size="4"><b>End Date:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t12" type="date" size="30" id="pin" />
              </div></td>
            </tr>
            <tr>
              <td style="background-color:orange;"><div align="center"><font color="white" size="4"><b>Disease Status:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                 <select name="t13" style="height: 2em; width: 15em; -moz-border-radius: 1em 1em 1em 1em; border-radius: 1em 1em 1em 1em; margin-left:center; font-size:15px; background-color:#ffdce1"  onkeypress="checkEnter(event)">
         <option value="">-----Choose Status-----</option>
        <option value="P">P</option>
         <option value="C">C</option>   
         <option value="S">S</option> 
        <option value="N">N</option>
         <option value="U">U</option> 
    </select>  <input name="t14" type="text" size="10" id="pin" />
              </div></td>
            </tr>
            
            <tr>
              <td style="background-color:orange;"><div align="center"><font color="#aass00"><b></div></td>
              <td><div align="left" style="background-color: #FFF;">
                      <b>past smoker (P), current smoker (C), smoker (S), non-smoker (N),unknown (U)</B>
              </div></td>
            </tr>
            
              <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Parent's Name:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t15" type="text" value="<%=rss.getString(5)%>"  id="pin" />
              </div></td>
            </tr>
              <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Address:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t16" type="text" value="<%= rss.getString(6)%>" id="pin" />
              </div></td>
            </tr>
            <tr>
              <td style="background-color: #e03227"><div align="center"><font color="white" size="4"><b>Medicine Prescription:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                      <textarea name="t17" cols="60" rows="3"></textarea>
              </div></td>
            </tr>
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Disease Specific</div></td>
              <td><div align="left" style="background-color: #FFF;">
               <select name="t18" style="height: 2em; width: 15em; -moz-border-radius: 1em 1em 1em 1em; border-radius: 1em 1em 1em 1em; margin-left:center; font-size:15px; background-color:#ffdce1"  onkeypress="checkEnter(event)">
           <option>Cardiovascular Diseases</option>
                <option>Stroke</option>
                <option>Respiratory Disease</option>
                <option>Diabetes</option>
                <option>Alzheimer?s Disease</option>
                <option>Tuberculosis</option>
                <option>Malaria</option>
                <option>Diarrheal</option>
                <option>COVID-19</option>
                <option>Anaemia</option>
                <option>Asthma</option>
                <option>Arthritis</option>
                <option>Dengue</option>
                <option>Jaundice</option>
                <option>Obesity</option>
          <option value="others">Others</option>
    </select>
              </div></td>
            </tr>
            
            
            
            
             <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Condition</div></td>
              <td><div align="left" style="background-color: #FFF;">
               <select name="t19" style="height: 2em; width: 15em; -moz-border-radius: 1em 1em 1em 1em; border-radius: 1em 1em 1em 1em; margin-left:center; font-size:15px; background-color:#ffdce1"  onkeypress="checkEnter(event)">
         <option value="">-----Select Condition-----</option>
        <option value="Lung">Lung</option>
         <option value="Right lung">Right lung</option>   
          <option value="Left lung">Left lung</option>
         <option value="Difficult">Difficult</option>
          <option value="Rapid">Rapid</option>
         <option value="Extreme">Extreme</option>
          <option value="Pulmonary">Pulmonary</option>
         <option value="Increased">Increased</option>
          <option value="Severe">Severe</option>
         <option value="Mild">Mild</option>
          <option value="others">Others</option>
    </select>
              </div></td>
            </tr>
            
            
            
            
            
            
            
            
            
            
            
            
            
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Lab Reports:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t20" type="text"  value="<%= rss1.getString("fee")%>" id="pin" readonly/>
              </div></td>
            </tr>
            
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Patient_Type:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t21" type="text"  value="<%= rss.getString(22)%>" id="pin" readonly/>
              </div></td>
            </tr>
            <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Blood Group:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t22" type="text"  value="<%= rss.getString(21)%>" id="pin" readonly/>
              </div></td>
            </tr>
           
             <tr>
              <td style="background-color: #01c3fe;"><div align="center"><font color="white" size="4"><b>Symptoms:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="t23" type="text"  value="<%= rss.getString("specialreq")%>" id="pin" readonly/>
              </div></td>
            </tr>
            
            
            
            <tr>
              <td style="background-color: #FFF;"><label>
                
              </label></td>
              <td colspan="2" style="background-color: #FFF;"><font color="white"><label> 
                 
                    <div align="left" style="background-color: rgb(128, 328, 64);"> 
                         <input type="submit" name="Submit"  value="Forward Report to Patient" style="background-color: #e03227; border: 2px;color: #FFF"/>
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
<%}}
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>