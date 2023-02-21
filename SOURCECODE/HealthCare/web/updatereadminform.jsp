
<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
    <% String docid = (String)session.getAttribute("did");
        
 String username = (String)session.getAttribute("sname");%>
<% 
Connection con=null;

ResultSet rs=null;
PreparedStatement ps=null;
   
    
     String a=request.getParameter("t1");
	String b = request.getParameter("t2");
	String c = request.getParameter("t3");
	String d = request.getParameter("t4");
	String e = request.getParameter("t5"); 
	String f = request.getParameter("t6");
	String g = request.getParameter("t7");
	String h = request.getParameter("t8");
	String i = request.getParameter("t9");
	String j = request.getParameter("t10");
	String k = request.getParameter("t11");
	String l = request.getParameter("t12");
	String m = request.getParameter("t13");
        
        
        String n = request.getParameter("t14");
        
        String x=m+""+n;
	String o = request.getParameter("t15");
	String p = request.getParameter("t16");
	String q = request.getParameter("t17");
	String r = request.getParameter("t18");
	String s = request.getParameter("t19");
	String t = request.getParameter("t20");

       try
                {	  
	   Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
ps=con.prepareStatement("update readmission set pname='"+a+"',age='"+b+"',pid='"+c+"',email='"+d+"',mobile='"+e+"',sub='"+f+"',drugdetails='"+g+"',dunit='"+h+"',sideeffect='"+i+"',dosf='"+j+"',stdate='"+k+"',endate='"+l+"',dstatus='"+m+"',treatement='"+n+"',diseasesp='"+o+"',conditions='"+p+"',labreports='"+q+"',ptype='"+r+"',blood='"+s+"',symptoms='"+t+"',status='readmission' where status='readmission' and pid='"+c+"'");
			
int sX = ps.executeUpdate();



String pemail="ksyamkumar905@gmail.com"; 

              
            String message="Dear "+a+"! .. Your Health Requirement Analysis Forwarded to your Account.Please Verify it";
           

response.sendRedirect("viewadmissions.jsp?message=succ");


con.close();
ps.close();


}catch(Exception ex){

out.println("Error in connection : "+ex);

}

%>
       
