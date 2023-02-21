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
window.location="./rbill.jsp?"+c;


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
		<option value="--Select category--">-----Select Room ID-----</option>
                <%
					
					Class.forName("com.mysql.jdbc.Driver");
	  Connection  	conx = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
					String queryx="select * from rooms";
					PreparedStatement pstmtx=conx.prepareStatement(queryx);
					ResultSet rsx=pstmtx.executeQuery();
					while(rsx.next())
					{
                                            
						%>
		<option value="<%=rsx.getString(1)%>"><%=rsx.getString(1)%></option>
                                        <%}%>
    </select></td>
</tr> 


</form>

</table>
                    
                    
              <div class="CSSTableGenerator">      
      <table align="center">
					<tr>
						<td>Room ID</td>
						<td>Room Name</td>
						<td>Room Type</td>
						<td>Organizer</td>
						<td>Room Charges</td>
						<td>Registration Date</td>
						
						
					</tr>
					
					<%int amount=0;String ptype=null;String nadmissions=null;
					String pid=request.getQueryString();
					Class.forName("com.mysql.jdbc.Driver");
	  Connection  	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
					String query="select * from rooms where id='"+pid+"'";
					PreparedStatement pstmt=con.prepareStatement(query);
					ResultSet rs=pstmt.executeQuery();
					while(rs.next())
					{
						%>
						<tr align="center">
						
							<%-- <td><%=rs.getInt("sid")%></td> --%>
							<td align="center"><%=rs.getString(1)%></td>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
                                                        <td><%=rs.getString(4)%></td>
							<td><%=rs.getString(5)%></td>
							<td><%=rs.getString(6)%></td>
							 </tr>
					<%}
					
					%>
					
					
					</table>              
                    <%
					
					Class.forName("com.mysql.jdbc.Driver");
	  Connection  	conp = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
					String queryp="select count(pid),sum(totalcharges) from admit where status='YES' and rid='"+pid+"'";
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
                  <td><font color="blue"><strong>Number of Assigned Patients:</strong></font></td>
                  <td><input type="text" name="age" value="<%=rsp.getString(1)%>"></td>
                </tr>
				
                 <tr> 
                  <td><font color="blue"><strong>Room Total Amount:</strong></font></td>
                  <td><input type="text" name="age" value="Rs. <%=rsp.getString(2)%>"></td>
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