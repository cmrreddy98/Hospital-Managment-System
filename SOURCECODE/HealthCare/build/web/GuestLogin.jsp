<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,com.onlinebank.BankCommons" errorPage="" %>
<%
//java Code
String uname = request.getParameter("name");
String password = request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
	  Connection  	c = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
          PreparedStatement stt=c.prepareStatement("SELECT username,password FROM admin WHERE username ='"+uname+"' AND password = '"+password+"'");
          ResultSet ck=stt.executeQuery();
if(ck.next()){
      
	session.setAttribute("cust_name",uname);
    
        response.sendRedirect("adminhome.jsp");
}
          else
                           {
              response.sendRedirect("Guesterror.jsp");
          }

%>
