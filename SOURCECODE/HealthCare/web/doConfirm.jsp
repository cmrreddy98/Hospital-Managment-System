
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,com.onlinebank.BankCommons" errorPage="" %>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%

%>






<%
//java Code
String u=null;int u2=0,u1=0;
try
               {
    
    
    Connection conn=databasecon.getconnection();
PreparedStatement pss=conn.prepareStatement("select id from PackageRequests");
ResultSet rss=pss.executeQuery();
while(rss.next())
{
u=rss.getString(1);
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
session.setAttribute("u3",u3);

int totall=Integer.parseInt(request.getParameter("total"));
int address=Integer.parseInt(request.getParameter("lockerid"));
Class.forName("com.mysql.jdbc.Driver");	
		Connection cone = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
PreparedStatement psmt11a=cone.prepareStatement("select * from packages where id='"+address+"'");
ResultSet rssa=psmt11a.executeQuery();
while(rssa.next())
{
  int one=rssa.getInt(7);int two=rssa.getInt(8);int total=rssa.getInt(7)+two;
  int balance=total-totall;

Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
                
                
                
                
                
                
String uname = request.getParameter("namee");

//String address = request.getParameter("lockerid");

//int totall=Integer.parseInt(request.getParameter("total"));
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String age = request.getParameter("period");
String gender=request.getParameter("durration");

String dayy = request.getParameter("accnumber");
String month=request.getParameter("lorfair");
String sss="NO";
String rel= request.getParameter("locerf");
String gaddr= request.getParameter("locrf");



String x = request.getParameter("appdate");
String xx=request.getParameter("apptime");

String xxx= request.getParameter("regfee");





String memo=request.getParameter("namee");
Connection connp=databasecon.getconnection();
PreparedStatement pssp=connp.prepareStatement("select * from PackageRequests where accname='"+memo+"' and status='Processing' and packid='"+address+"'");
ResultSet rssp=pssp.executeQuery();
if(rssp.next())
{
   response.sendRedirect("bookingparty.jsp?message=same");
 }else
         {









PreparedStatement ps=con.prepareStatement("INSERT INTO PackageRequests values ('"+uname+"','"+address+"','"+email+"','"+mobile+"','"+age+"','"+gender+"','"+totall+"','"+sss+"','"+dayy+"','"+month+"','"+rel+"','"+u3+"','"+total+"','"+balance+"','"+x+"','"+xx+"','"+xxx+"','"+gaddr+"')");
//System.out.println(sql);
int update = ps.executeUpdate();

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Genie Tourism @ Travels Service System</title>
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="css/main.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
html,body{
    background-image: url(images/);
}
</style>
</head>

<body>
<table background="images/desktop.PNG" width="700" border="0" align="center" cellpadding="0" cellspacing="0" style="font-weight:normal; background-color:#FFFFFF">
  
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
<td width="160" ><p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>	</td>
    <td colspan="2" style="padding:20px;">
	
	<% 
	if(update == 1){
            
            
             String e1=rssa.getString(14);
            String message="Dear "+address+"! .. Thanqs For Booking Your Appointment with Health Care Systems.Here all the Details you Need\n\n\n Consult Doctor Name: "+uname+"\n\n Admission Date: "+x+"\n\n Admission Time: "+xx;
           
            
            response.sendRedirect("AvailableAppointment.jsp?message=succ");
	
	}else {
	%>
	<font color="#FF0000">Sorry!. The Appointment Request is not Submitted to Doctors.<br/>Click Here to <a href="AvailableAppointment.jsp">Request Again</a></font>
	<%
	}}
	 %>
	</div>
	</td>
  </tr>
  <tr style="height:30px;">
        <td colspan="3"><img src="images/creative3.jpg" width="700" height="19"/></td>
  </tr>
</table>
</body>

</html>
<%
}}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>