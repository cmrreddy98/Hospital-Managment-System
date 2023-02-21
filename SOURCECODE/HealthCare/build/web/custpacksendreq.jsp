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
alert("only one patient can be admit at a time");
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
                    <li><a href="Guesthome.jsp">Home</a></li>
                  <li class="active"><a href="AvailableAppointment.jsp">New Appointments</a></li>
                  
                       <li class="active"><a href="staffregister.jsp">New Doctor</a></li>
                        <li class="active"><a href="specialists.jsp">New Specialists</a></li>
                              <li class="active"><a href="ViewDoctors.jsp">View Doctors</a></li>

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
//String seats=(String)session.getAttribute("seats");           
 String b=(String)session.getAttribute("cust_name"); 
      
String pid=request.getQueryString();
//int omm=Integer.parseInt(demom);     


%>
                <div >
                   
                     <form id="form1" name="form1" method="post" action="doConfirm.jsp" onsubmit="return valid()"><br />
                 
              
	<table  width="901" border="0" align="center"  cellpadding="2" cellspacing="2" style=" padding: 5px;" height="413">
            <tr>
              <th colspan="3" bgcolor="#000000" scope="col" style="background-color: rgb(328, 128, 64);"><font color="#FFFFFF">CONFIRMATION FORM </font></th>
              </tr>
            
            <tr >
              <td style="background-color: lightcoral;" ><div align="center"><font color="white"><b>Doctor/Clinic Name:</div></td>
              <td><div align="left" style="background-color: #FFF;" >
               <select name="namee">
                   <option value=""><----------------------------Select Best Doctor-------------------------></option>
                    <%
Connection conna=null;
PreparedStatement psmt11a=null;
ResultSet rssa=null;
//String name = request.getParameter("title");
try{
Class.forName("com.mysql.jdbc.Driver");	
			conna = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
psmt11a=conna.prepareStatement("select * from doctors");
rssa=psmt11a.executeQuery();
while(rssa.next())
{
%>
<option value="<%=rssa.getString("name")%>"><%=rssa.getString("name")%>--<%=rssa.getString("specialist")%></option>
<%
}
}
catch(Exception ex)
{
out.println("Error in connection : "+ex);
}

%>           </select>
              </div></td>
            </tr>
           
            
            <tr>
               <td style="background-color: lightcoral"><div align="center"><font color="white"><b>Patient ID:</div></td>
              <td><div align="left" style="background-color: #FFF;color: #e58e11">
                <input type="text" maxlength="20" value="<%=pid%>" size="20" name="lockerid" readonly style="color:  #ff5656" />
              </div></td>
            </tr>
              <%
//java Code
String uu=null;int u22=0,u11=0,onee=0, twoo=0,sum=0;
int audlttotal=0,childtotal=0,totalsum=0;

try
               {
    
                  Connection conn = com.onlinebank.ConnectionPool.getConnection();
                   Connection connn = com.onlinebank.ConnectionPool.getConnection();
                   Connection conup = com.onlinebank.ConnectionPool.getConnection();
                  PreparedStatement pss=conn.prepareStatement("select * from packages where id='"+pid+"' ");  
                  
                  ResultSet rss=pss.executeQuery();
                  while(rss.next())
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
                          Class.forName("com.mysql.jdbc.Driver");	
		          Connection	connp = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
	
		PreparedStatement psdd = connp.prepareStatement("select sum(bookings),totalpositions from packagerequests where  packid='"+pid+"' and status='Processing'" );
		ResultSet rsd = psdd.executeQuery();
                while(rsd.next())
                {
                    System.out.println("ffffffffffffffff"+rsd.getInt(1));
      int balan=rsd.getInt(1);
      int over=rsd.getInt(2)-balan;
%>
            <tr>
               <td style="background-color: lightcoral"><div align="center"><font color="white"><b>E-mail:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                      <input name="email" type="text" required id="email" style="color:  #ff5656" value="<%=rss.getString("email")%>"/>
              </div></td>
            </tr>
            
            <tr>
               <td style="background-color: lightcoral"><div align="center"><font color="white"><b>Contact (+91):</div></td>
              <td><div align="left" style="background-color: #FFF;">
                      <input name="mobile" type="text"  id="mobile" style="color:  #ff5656" value="<%=rss.getString("contact")%>"/>
              </div></td>
              
            </tr>
            
              
              <tr>
              <td style="background-color: lightcoral"><div align="center"><font color="white"><b>Preferred date for Admission:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="period" style="color:  #ff5656"  type="text" value="<%= rss.getString(9)%> *TO* <%= rss.getString(10)%>" id="pin" size="30" readonly/>
              </div></td>
            </tr>
              <tr>
               <td style="background-color: lightcoral"><div align="center"><font color="white"><b>Preferred Time for Consult:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="durration" style="color:  #ff5656"  type="text" value="<%= rss.getString(24)%>" id="pin" readonly/>
              </div></td>
            </tr>
              <tr>
               <td style="background-color: lightcoral"><div align="center"><font color="white"><b>No. of Bookings:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="total" type="text" style="color:  #ff5656"  value="<%=over%>" id="pin" />
              </div></td>
            </tr>
              <tr>
               <td style="background-color: lightcoral"><div align="center"><font color="white"><b>Disease Symptoms:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="accnumber" type="text" style="color:  #ff5656"  value="<%= rss.getString("organizer")%>" id="pin" readonly/>
              </div></td>
            </tr>
            <tr>
               <td style="background-color: lightcoral"><div align="center"><font color="white"><b>Drug Mentions:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <select name="lorfair" style="color:  #ff5656"  id="pin">
                    <option>******************Choose Drug Name***************</option>
                    <option>Meloxicam</option>
                    <option>Acetaminophen</option>
                    <option>Entresto</option>
                    <option>Adderall</option>
                    <option>Metoprolol</option>
                    <option>Wellbutrin</option>
                    <option>Lyrica</option>
                    <option>Naltrexone</option>
                    <option>Dupixent</option>
                    <option>Lofexidine</option>
                    <option>Entyvio</option>
                    <option>Hydrochlorothiazide</option>
                    <option>Imbruvica</option>
                    <option>Paracetmol</option>
                    <option>Humira</option>
                    <option>Benzonatate</option>
                </select>
              </div></td>
            </tr>
            <tr>
               <td style="background-color: lightcoral"><div align="center"><font color="white"><b>Side Effects:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                      
                      <select name="locerf" style="color:  #ff5656"  id="pin">
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
                    <option>Loss of appetite and difficulty swallowing, especially if treatment is aimed at the head, neck, or chest</option>
                    <option>Drop in sex drive and infertility or early menopause, especially if treatment is for the pelvic area</option>
                     </select>
              </div></td>
            </tr>
            <tr>
               <td style="background-color: lightcoral"><div align="center"><font color="white"><b>Invitations From:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="locrf" type="text" style="color:  #ff5656"   value="<%= rss.getString(2)%>" id="pin" readonly/>
              </div></td>
            </tr>
            <tr>
              <td style="background-color: lightcoral"><div align="center"><font color="white"><b>Appointment Date:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="appdate" type="date" style="color:  #ff5656"   id="pin" />
              </div></td>
            </tr>
            
            <tr>
               <td style="background-color: lightcoral"><div align="center"><font color="white"><b>Appointment Time:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <input name="apptime" type="time" style="color:  #ff5656"  id="pin" />
              </div></td>
            </tr>
            
            
            <tr>
               <td style="background-color: lightcoral"><div align="center"><font color="white"><b>Lab Reports:</div></td>
              <td><div align="left" style="background-color: #FFF;">
                <textarea name="regfee"  cols="80" rows="3"></textarea>
              </div></td>
            </tr>
            
            <tr style="background-color: #a6e1ec;">
              <td>&nbsp;</td>
              <td>&nbsp;<input type="checkbox" name="button" value="check" /><font color="gray"> <font color="#ff0000">By Clicking on '<font color="blue">I Agree</font>' you are&nbsp;&nbsp;&nbsp; confirming that you have read,Understood,and accept Terms of Use and the Privacy Policy.  </td>
              
            </tr>
            <tr>
              <td style="background-color: rgb(328, 128, 64);"><div align="left"></div></td>
              <td align="center" style="background-color: rgb(328, 128, 64);">&nbsp;&nbsp;&nbsp; <font color="#ff0000"><br /> 
              </font></td>
            </tr>
            
            <tr>
              <td ><label>
                <div align="right" >
                  <input type="reset" name="Submit2" value="Reset" style="background-color: #01c3fe;color: #FFF"/>
                  </div>
              </label></td>
              <td colspan="2" ><font color="white"><label> 
                 
                      <div align="left" > 
                      <input type="submit" value="Forward to Doctor" name="Submit" style="background-color: #c7254e;color: #ffffff"/> 
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
<%}
}}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>