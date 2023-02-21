<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,com.onlinebank.BankCommons" errorPage="" %>
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
    <link href="css/table.css" rel="stylesheet" type="text/css">
<link href="css/tabzoom.css" rel="stylesheet" type="text/css">

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
	
function fu()
{
 

var c=document.form.domain.options[document.form.domain.selectedIndex].value;
window.location="./pbill.jsp?"+c;


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
                 <li class="active"><a href="adminappointment.jsp">Doctor Appointments</a></li>
                  <li class="active"><a href="bills.jsp">BILL INFORMATION</a></li>
                  <li class="active"><a href="DetLogin.jsp">Logout</a></li>
                 
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
                 <table width="366" >
<form method="post" name="form">

<tr>
<td width="163" height="46" class="paragraping"></td>
<td width="191" class="fielditem"><select name="domain" onChange="fu()">
		<option value="--Select category--">-----Select Patient ID-----</option>
                <%
					
					Class.forName("com.mysql.jdbc.Driver");
	  Connection  	conx = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
					String queryx="select * from readmission where status='Discharge'";
					PreparedStatement pstmtx=conx.prepareStatement(queryx);
					ResultSet rsx=pstmtx.executeQuery();
					while(rsx.next())
					{
						%>
		<option value="<%=rsx.getString(4)%>"><%=rsx.getString(4)%></option>
                                        <%}%>
    </select></td>
</tr> 


</form>

</table>
                    
                    
              <div class="CSSTableGenerator">      
      <table align="center">
					<tr>
						<td>Patient ID</td>
						<td>Name</td>
						<td>Email</td>
						<td>Mobile</td>
						<td>Address</td>
						<td>Blood Group</td>
						
						
					</tr>
					
					<%int amount=0;String ptype=null;String nadmissions=null;
					String pid=request.getQueryString();
					Class.forName("com.mysql.jdbc.Driver");
	  Connection  	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
					String query="select * from readmission where status='Discharge' and pid='"+pid+"'";
					PreparedStatement pstmt=con.prepareStatement(query);
					ResultSet rs=pstmt.executeQuery();
					while(rs.next())
					{
                                            amount=rs.getInt("rcount")*200;
                                            ptype=rs.getString("ptype");
                                            nadmissions=rs.getString("rcount");
						%>
						<tr align="center">
						
							<%-- <td><%=rs.getInt("sid")%></td> --%>
							<td align="center"><%=rs.getString(4)%></td>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(5)%></td>
                                                        <td><%=rs.getString(6)%></td>
							<td><%=rs.getString(16)%></td>
							<td><%=rs.getString(22)%></td>
							 </tr>
					<%}
					
					%>
					
					
					</table>              
                    <%
					
					Class.forName("com.mysql.jdbc.Driver");
	  Connection  	conp = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
					String queryp="select * from packagerequests where status='Discharge' and packid='"+pid+"'";
					PreparedStatement pstmtp=conp.prepareStatement(queryp);
					ResultSet rsp=pstmtp.executeQuery();
					while(rsp.next())
					{
						%>
                    <table  align="right" height="250" width="550" >
               
				
				<tr> 
                  <td><font  color="blue"><strong></strong></font></td>
                  <td></td>
                </tr>
                
                <tr> 
                  <td><font color="blue"><strong>Patient Type:</strong></font></td>
                  <td><input type="text" name="age" value="<%=ptype%>"></td>
                </tr>
				
                 <tr> 
                  <td><font color="blue"><strong>Assigned To:</strong></font></td>
                  <td><input type="text" name="age" value="<%=rsp.getString(1)%>"></td>
                </tr>
                
                 <tr> 
                  <td><font color="blue"><strong>Appointment Date:</strong></font></td>
                  <td><input type="text" name="age" value="<%=rsp.getString("appdate")%> <%=rsp.getString("apptime")%>"></td>
                </tr>
                
                 <tr> 
                  <td><font color="blue"><strong>Disease Type:</strong></font></td>
                  <td><input type="text" name="age" value="<%=rsp.getString("venue")%>"></td>
                </tr>
                 
                <tr> 
                  <td><font color="blue"><strong>Drugs Information:</strong></font></td>
                  <td><input type="text" name="age" value="<%=rsp.getString("relationshp")%>"></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Any Side Effects:</strong></font></td>
                  <td><input type="text" name="age" value="<%=rsp.getString("gaddress")%>"></td>
                </tr>
                
                 <tr> 
                  <td><font color="blue"><strong>Number Of Bookings:</strong></font></td>
                  <td><input type="text" name="age" value="<%=rsp.getString("bookings")%>"></td>
                </tr>
                 <tr> 
                  <td><font color="blue"><strong>LAB Reports:</strong></font></td>
                  <td><input type="text" name="age" value="<%=rsp.getString("fee")%>"></td>
                </tr>
                
                 <tr> 
                  <td><font color="blue"><strong>Admission Fees:</strong></font></td>
                  <td><input type="text" name="age" value="Rs. 200" readonly></td>
                </tr>
                
                 <tr> 
                  <td><font color="blue"><strong>No.of Re-Admissions:</strong></font></td>
                  <td><input type="text" name="age" value="<%=nadmissions%>" readonly></td>
                  
                  <tr> 
                  <td><font color="blue"><strong>Re-Admissions Amount:</strong></font></td>
                  <td><input type="text" name="age" value="Rs. <%=amount%>" readonly></td>                 
                   <tr> 
                  <td><font color="blue"><strong>Total Amount:</strong></font></td>
                  <td><input type="text" name="age" value="Rs. <%=(amount+200)%>" readonly></td>
                   <tr> 
                  <td><font color="blue"><strong>Due Amount:</strong></font></td>
                  <td><input type="text" name="age" value="0"></td>
                  <tr> 
                  <td><font color="red"><strong><font color="red"><B>* One Time Payment Only</b></font></strong></font></td>
                  <td></td>                 
                   
                </tr>
                </tr>
                
                </tr>
                
              </table>
                    <%}%>
              </div>
                    
                    
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