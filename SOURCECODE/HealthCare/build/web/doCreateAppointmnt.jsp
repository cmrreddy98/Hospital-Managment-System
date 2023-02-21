
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,com.onlinebank.BankCommons" errorPage="" %>
<%@ page import="java.sql.*,java.text.ParseException.*"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*,java.text.ParseException,java.lang.*,java.sql.*, java.util.*,java.util.Date,java.text.*,java.text.SimpleDateFormat,java.util.concurrent.TimeUnit"%>
<%
//java Code
String u=null;int u2=0,u1=0;

try
               {
    
 
String t1= request.getParameter("lockerid");
String t2 = request.getParameter("lockerpassword");
String t3= request.getParameter("lockertype");
String t4= request.getParameter("lockerusage");
String t5 = request.getParameter("dateofissue");
String t6 = request.getParameter("position");
String t7 = request.getParameter("height");
String t8 = request.getParameter("width");
String aa = request.getParameter("day");
String bb = request.getParameter("month");
String cc = request.getParameter("year");

//special

String transport = request.getParameter("transport");
String acco= request.getParameter("acc");
String  childf =request.getParameter("child");
String tim = request.getParameter("time");

int mon=Integer.parseInt(request.getParameter("year"));
String t9 = cc+"-"+bb+"-"+aa; //aa day bb month cc year
String aa1 = request.getParameter("exday");
String bb1 = request.getParameter("exmonth");
String cc1 = request.getParameter("exyear");
int non=Integer.parseInt(request.getParameter("exyear"));
String t10 = aa1+"-"+bb1+"-"+cc1;
SimpleDateFormat myFormat = new SimpleDateFormat("dd MM yyyy");
String inputString1 = aa+" "+bb+" "+cc;
System.out.println(inputString1);
String inputString2 = aa1+" "+bb1+" "+cc1;
System.out.println(inputString2);
String t11 = request.getParameter("image");
String t12 = request.getParameter("bankname");
String t13 = request.getParameter("branchaddress");
String t14 = request.getParameter("ifsc");
String t15 = request.getParameter("rate");
String t16 = request.getParameter("pin");
String t17="NO";
String f="C:\\Gallery\\";
System.out.println(t11);
Date date1 = myFormat.parse(inputString1);
    Date date2 = myFormat.parse(inputString2);
    long diff = date2.getTime() - date1.getTime();
    System.out.println ("Days: " + TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS));
    long doo=TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);
    System.out.println(doo);
String g=f+t11;
System.out.println(g);
File image=new File(g);
System.out.println(image);
FileInputStream fis=new FileInputStream(image);
Class.forName("com.mysql.jdbc.Driver");	
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
PreparedStatement sql =con.prepareStatement("INSERT INTO packages VALUES ('"+t1+"','"+t2+"','"+t3+"','"+t4+"','"+t5+"','"+t6+"','"+t7+"','"+t8+"','"+t9+"','"+t10+"',?,'"+t12+"','"+t13+"','"+t15+"','"+t16+"','"+t17+"','"+g+"',"+doo+","+mon+","+non+",'"+transport+"','"+acco+"','"+childf+"','"+tim+"')");
//System.out.println(sql);
sql.setBinaryStream(1, (InputStream)fis, (int)(image.length()));
int update =sql.executeUpdate();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
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
<table background="images/desktop.PNG" width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="font-weight:normal; background-color:#FFFFFF">
  
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
            String email="ksyamkumar905@gmail.com";
            String message="Dear Admin! .. This is Remainder for new Appointment on "+t9+" @"+tim+".Reply YES to Confirm or NO to Cancel \n\n From \n\n  Patient Name: "+t2+"\n\n Patient ID: "+t1+"\n\n Email: "+t15+"\n\n Disease Type: "+t3+"\n\n Audlt Peoples: "+t7;
           
            response.sendRedirect("NewAppointment.jsp?message=success");
	
	}else {
	%>
        <br><font color="#FF0000">Sorry!.New Appointment is not created.<br/>Click Here to <a href="NewAppointment.jsp">Register Again</a></font><br>
	<%
	}
	 %>
	</div>
	</td>
  </tr>
  <tr style="height:30px;">
    <td colspan="3"><img src="images/creative3.jpg" width="932" height="19"/></td>
  </tr>
</table>
</body>

</html>
<%
}
catch(Exception e1)
{
out.println(e1.getMessage());
e1.printStackTrace();
}
%>