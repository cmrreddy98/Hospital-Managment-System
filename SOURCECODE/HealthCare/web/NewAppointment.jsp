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
                  <li class="active"><a href="NewAppointment.jsp">New Admission</a></li>
                   <li class="active"><a href="profile.jsp">Profile</a></li>
                    
                    <li class="active"><a href="Appointmentdetails.jsp">Admission Details </a></li>
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
    <%
java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd-MM-yyyy";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);
String u=null;int u2=0,u1=0;
try
{

			Class.forName("com.mysql.jdbc.Driver");	
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
PreparedStatement ps=con.prepareStatement("select * from packages");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
u=rs.getString(1);
}
if(u==null)
{
 u2=u1+1;
}
else
{
u1=Integer.parseInt(u);
u2=u1+1;
}
String u3=Integer.toString(u2);
String u4=u3;
session.setAttribute("u3",u3);

%>
    <!--==============================row_7=================================-->
    <div class="row_7">
        <div class="container">
            <div class="row">
                <%
      String a=(String)session.getAttribute("userid");      
 String b=(String)session.getAttribute("cust_name");               

%>
  <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<script>alert('Admission is Accepted..!! Please wait for appoiuntment date')</script>");
                                                       }
                                                       
                                               %>
                <div >
                    
                    
                    
                    
                    
                    
                    
                   <form id="form1" name="form1" method="post" action="doCreateAppointmnt.jsp"> 
          <table height="329" width="711" cellspacing="2"   cellpadding="2" align="center" style="width: 800px;height:  400px;border-radius: 20px;margin-top: 10px;background: white"> 
            <tbody><tr style="background-color: rgb(255, 128, 0);"> 
              <th bgcolor="#000000" colspan="3" scope="col" style="background-color: rgb(255, 128, 0);"><font color="#ffffff">Admission Form For Consulting the Doctor/Clinic</font></th> 
              </tr> 
            <tr> 
              <td width="28%" rowspan="12"><div align="center"><img height="450" width="300" src="images/Online-appointment-KIMS-Suncity.png"/></div></td> 
              
              
            </tr> 
            <tr > 
              <td style="background-color: #01c3fe"><div align="center" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Patient ID:</div></td> 
              <td><div align="left" > 
                    <input type="text" value="<%=u4%>" name="lockerid" id="username" /> 
                  </div> 
              </td> 
            </tr> 
           <tr > 
              <td style="background-color: #01c3fe"><div align="center" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Patient Name:</div></td> 
              <td><div align="left" style="background-color: #FFF;"> 
                      <input type="text" name="lockerpassword" value="<%=b%>" id="password" readonly/> 
              </div></td> 
            </tr> 
            <tr > 
              <td style="background-color: #01c3fe"><div align="center"><b>&nbsp;&nbsp;&nbsp;&nbsp;Disease Type: </div></td> 
              <td><div align="left"> 
                <select name="lockertype"> 
                  <option value="General">General</option> 
                  <option value="Family">Family</option> 
                  <option value="Personal">Personal</option> 
                  <option value="Others">Others</option> 
                </select> 
              </div></td> 
            </tr> 
            <tr > 
              <td style="background-color: #01c3fe"><div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Person Age:</div></td> 
              <td><div align="left" style="background-color: #FFF;"> 
                <input type="number" name="lockerusage" id="answer" size="30" /> 
              </div></td> 
            </tr> 
           <tr > 
              <td style="background-color: #01c3fe"><div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Parents Name:</div></td> 
              <td><div align="left" style="background-color: #FFF;"> 
                <input type="text" name="dateofissue" id="answer"  size="30" /> 
              </div></td> 
            </tr> 
         <tr > 
              <td style="background-color: #01c3fe"><div align="center">&nbsp;&nbsp;&nbsp;&nbsp;<b>Personal Address:</div></td> 
              <td><div align="left"> 
                <textarea name="position" id="address" cols="50"></textarea> 
              </div></td> 
            </tr> 
            <tr > 
              <td style="background-color: #01c3fe;"><div align="center">&nbsp;<b>No.of Persons to Visit:</div></td> 
              <td style="font-size: 12px"><div align="left">&nbsp;&nbsp;<font color="red"> Adults: <select name="height" id="day">
			<option value="0">0</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			
			</select> &nbsp;&nbsp;
			 &nbsp;&nbsp;&nbsp; <font color="red"> Child:<select name="width" id="day">
			<option value="0">0</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			
			</select>
               
              </div></td> 
            </tr> 
           <tr > 
              <td style="background-color: #01c3fe;"><div align="center"><b>Preferred day for Attend:</div></td> 
              <td style="font-size: 10px"><div align="left">&nbsp;<b><font color="red"> From :</b>&nbsp; 
                <select name="day" id="day"> 
			<option value="">DD</option> 
			<option value="01">01</option> 
			<option value="02">02</option> 
			<option value="03">03</option> 
			<option value="04">04</option> 
			<option value="05">05</option> 
			<option value="06">06</option> 
			<option value="07">07</option> 
			<option value="08">08</option> 
			<option value="09">09</option> 
			<option value="10">10</option> 
			<option value="11">11</option> 
			<option value="12">12</option> 
			<option value="13">13</option> 
			<option value="14">14</option> 
			<option value="15">15</option> 
			<option value="16">16</option> 
			<option value="17">17</option> 
			<option value="18">18</option> 
			<option value="19">19</option> 
			<option value="20">20</option> 
			<option value="21">21</option> 
			<option value="22">22</option> 
			<option value="23">23</option> 
			<option value="24">24</option> 
			<option value="25">25</option> 
			<option value="26">26</option> 
			<option value="27">27</option> 
			<option value="28">28</option> 
			<option value="29">29</option> 
			<option value="30">30</option> 
			<option value="31">31</option> 
			</select> 
			 
		 
		 
		<select name="month" id="month"> 
			<option value="">MM</option> 
			<option value="01">01</option> 
			<option value="02">02</option> 
			<option value="03">03</option> 
			<option value="04">04</option> 
			<option value="05">05</option> 
			<option value="06">06</option> 
			<option value="07">07</option> 
			<option value="08">08</option> 
			<option value="09">09</option> 
			<option value="10">10</option> 
			<option value="11">11</option> 
			<option value="12">12</option> 
			</select> 
			<select name="year" id="year">
			<option value="">YYYY</option>
			
			
			
			<option value="1990">1990</option>
			<option value="1991">1991</option>
			<option value="1992">1992</option>
			<option value="1993">1993</option>
			<option value="1994">1994</option>
			<option value="1995">1995</option>
			<option value="1996">1996</option>
			<option value="1997">1997</option>
			<option value="1998">1998</option>
			<option value="1999">1999</option>
			
			<option value="2000">2000</option>
			<option value="2001">2001</option>
			<option value="2002">2002</option>
			<option value="2003">2003</option>
			<option value="2004">2004</option>
			<option value="2005">2005</option>
			<option value="2006">2006</option>
			<option value="2007">2007</option>
			<option value="2008">2008</option>
			<option value="2009">2009</option>
			<option value="2010">2010</option>
			
			<option value="2011">2011</option>
			<option value="2012">2012</option>
			<option value="2013">2013</option>
			<option value="2014">2014</option>
                        <option value="2015">2015</option>
                        <option value="2016">2016</option>
                        <option value="2017">2017</option>
			<option value="2018">2018</option>
                        <option value="2019">2019</option>
                        <option value="2020">2020</option>
                        <option value="2021">2021</option>
			<option value="2022">2022</option>
			</select>
              </div></td> 
            </tr> 
         <tr style="font-size: 10px"> 
              <td>&nbsp;</td> 
              <td>&nbsp;&nbsp; &nbsp; <b><font color="red">To</b>&nbsp;&nbsp; :&nbsp; <select name="exday" id="day"> 
			<option value="">DD</option> 
			<option value="01">01</option> 
			<option value="02">02</option> 
			<option value="03">03</option> 
			<option value="04">04</option> 
			<option value="05">05</option> 
			<option value="06">06</option> 
			<option value="07">07</option> 
			<option value="08">08</option> 
			<option value="09">09</option> 
			<option value="10">10</option> 
			<option value="11">11</option> 
			<option value="12">12</option> 
			<option value="13">13</option> 
			<option value="14">14</option> 
			<option value="15">15</option> 
			<option value="16">16</option> 
			<option value="17">17</option> 
			<option value="18">18</option> 
			<option value="19">19</option> 
			<option value="20">20</option> 
			<option value="21">21</option> 
			<option value="22">22</option> 
			<option value="23">23</option> 
			<option value="24">24</option> 
			<option value="25">25</option> 
			<option value="26">26</option> 
			<option value="27">27</option> 
			<option value="28">28</option> 
			<option value="29">29</option> 
			<option value="30">30</option> 
			<option value="31">31</option> 
			</select> 
			 
		 
		 
		<select name="exmonth" id="month"> 
			<option value="">MM</option> 
			<option value="01">01</option> 
			<option value="02">02</option> 
			<option value="03">03</option> 
			<option value="04">04</option> 
			<option value="05">05</option> 
			<option value="06">06</option> 
			<option value="07">07</option> 
			<option value="08">08</option> 
			<option value="09">09</option> 
			<option value="10">10</option> 
			<option value="11">11</option> 
			<option value="12">12</option> 
			</select> 
			<select name="exyear" id="year">
			<option value="">YYYY</option>
			
			<option value="1990">1990</option>
			<option value="1991">1991</option>
			<option value="1992">1992</option>
			<option value="1993">1993</option>
			<option value="1994">1994</option>
			<option value="1995">1995</option>
			<option value="1996">1996</option>
			<option value="1997">1997</option>
			<option value="1998">1998</option>
			<option value="1999">1999</option>
			
			<option value="2000">2000</option>
			<option value="2001">2001</option>
			<option value="2002">2002</option>
			<option value="2003">2003</option>
			<option value="2004">2004</option>
			<option value="2005">2005</option>
			<option value="2006">2006</option>
			<option value="2007">2007</option>
			<option value="2008">2008</option>
			<option value="2009">2009</option>
			<option value="2010">2010</option>
			
			<option value="2011">2011</option>
			<option value="2012">2012</option>
			<option value="2013">2013</option>
			<option value="2014">2014</option>
                        <option value="2015">2015</option>
                        <option value="2016">2016</option>
                        <option value="2017">2017</option>
			<option value="2018">2018</option>
                        <option value="2019">2019</option>
                        <option value="2020">2020</option>
                        <option value="2021">2021</option>
                        <option value="2022">2022</option>
                        
			</select></td> 
            </tr>
            <tr > 
              <td align="center" style="background-color: #01c3fe"><b>Profile Picture:<br /></td> 
              <td><div align="left" style="background-color: #FFF;"> 
                <input type="file" maxlength="20" size="20" name="image" /> 
              </div></td> 
            </tr> 
             <tr > 
              <td style="background-color: #01c3fe" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Disease/Problem:</b><br /></td> 
              <td><div align="left" style="background-color: #FFF;"> 
                <select name="bankname"> 
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
                </select>
              </div></td> 
            </tr>
           <tr > 
              <td style="background-color: #01c3fe">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>confirmed by&nbsp; :<br /></td> 
              <td><div align="left" style="background-color: #FFF;"> 
                <input type="text" maxlength="20" size="20" name="branchaddress" placeholder="Doctor/Nurse Name" /> 
              </div></td> 
              
              
            </tr>
              
              
             <tr > 
              <td style="background-color: #01c3fe">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Blood Group&nbsp; :</td> 
              <td><div align="left" style="background-color: #FFF;"> 
                <select name="transport" >
       <option value="">--------------Select Group-------------</option>
        <option value="A+">A+</option>
         <option value="A-">A-</option>
          <option value="B+">B+</option>
         <option value="B-">B-</option>
          <option value="O+">O+</option>
         <option value="O-">O-</option>
          <option value="AB+">AB+</option>
         <option value="AB-">AB-</option>
         
</select>
              </div></td> 
             <td style="background-color: #FFF;"> <select name="acc">
     <option value="">--------------Select Type-------------</option>
        <option value="New_Patient">New_Patient</option>
         <option value="Old_Patient">Old_Patient</option>
         
         
</select></td> 
              <td><div align="left" > 
                <br /> 
              </div></td> 
            </tr>
              
              
             <tr > 
              <td style="background-color: #01c3fe">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Reach with Me&nbsp; :<br /></td> 
              <td><div align="left" style="background-color: #FFF;"> 
                      <b><font color="red">Email:&nbsp; :&nbsp;<input type="text" maxlength="30" size="30" name="rate" /> 
              </div></td> 
              <td><b><font color="red">Signs/Symptoms&nbsp; :&nbsp; <select name="pin" style="color:  #ff5656"  id="pin">
                    <option>******************Choose Side Effects***************</option>
                    <option>Constipation,Diarrhea</option>
                    <option>Diarrhea,Dry mouth,Nausea</option>
                    <option>Skin rash or dermatitis,Diarrhea</option>
                    <option>Dizziness,Headache,Abnormal heart rhythms</option>
                    <option>Drowsiness,Dry mouth,Internal bleeding</option>
                    <option>Skin rash or dermatitis,Constipation,</option>
                    <option>Nausea,Abnormal heart rhythms,</option>
                    <option>Internal bleeding,Fever,Sore skin and skin burns</option>
                    <option>Fever,Skin reactions or pain at the vaccination site</option>
                    <option>Muscle and joint stiffness,Sore skin and skin burns</option>
                    <option>Dry mouth, with treatments aimed at the head, neck or mouth</option>
                    <option>Alopecia, or hair fall, which is normally temporary</option>
                    <option>Loss of appetite and difficulty swallowing</option>
                    <option>Drop in sex drive and infertility or early menopause</option>
                     </select></td> 
              <td><div align="left" style="background-color: #FFF;"> 
                <br /> 
              </div></td> 
            </tr>
              
              
             <tr > 
              <td style="background-color: #01c3fe">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br /></td> 
              <td ><div align="left" style="background-color: #FFF;" > 
               <b ><font color="red">Mobile:&nbsp; :&nbsp;<input type="text" maxlength="20" size="5" name="child" /> 
              </div></td> 
              <td style="background-color: #FFF;"><b><font color="red">Preferred time for Appointment:&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <select maxlength="20" name="time" >
                      
                          <option>****Choose Timings****</option>
                          <option value="9AM-12PM">9 AM-12 PM</option>
                          <option value="2PM-6PM">2 PM-6 PM</option>
                      
                      </select><br>
                       <div align="center"> 
<!--                      <a href="viewCalender.jsp">View Doctors Availability</a>-->
              </div>
             
                          </td> 
            
            </tr>
              
              
              
              
            
            <tr style="background-color: rgb(227,233,231);"> 
                <td><div align="center"> 
                      <b> I agree to all the rules and policies of the hospital
                  </div> 
              </td> 
              <td colspan="2"><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                      <input type="submit" name="Submit" onclick="MM_validateForm('username','','R','answer','','R','email','','RisEmail','mobile','','R','address','','R','password','','R');return document.MM_returnValue" value="Register New Admission" style="background-color: #81d645;color:white"/>&nbsp;&nbsp;<input type="reset" name="Submit2" value="Cancel" style="background-color: rgb(128, 128, 0);color:white"/> 
                   
                    </div> 
                  </td> 
              </tr> 
            
          </tbody></table> 
                </form>
                    
                    
                    
                    
                    
                    
           <%
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>         
                    
                    
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