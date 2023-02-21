
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
String u = request.getParameter("t21");

String v = request.getParameter("t22");
String w = request.getParameter("t23");
       try
                {	  
            Connection con1=databasecon.getconnection();
          Statement st1=con1.createStatement();
           int i1=st1.executeUpdate("update admit set status='YES'  where pid='"+c+"'");
        
           
	   Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
ps=con.prepareStatement("INSERT INTO readmission(pname,age,pid,email,mobile,sub,drugdetails,dunit,sideeffect,dosf,stdate,endate,dstatus,parents,address,treatement,diseasesp,conditions,labreports,ptype,blood,symptoms,status,rcount) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,'1') ");
			
ps.setString(1,a);
ps.setString(2,b);
ps.setString(3,c);
ps.setString(4,d);
ps.setString(5,e);
ps.setString(6,f);
ps.setString(7,g);
ps.setString(8,h);
ps.setString(9,i);
ps.setString(10,j);
ps.setString(11,k);
ps.setString(12,l);
ps.setString(13,x);
ps.setString(14,o);
ps.setString(15,p);
ps.setString(16,q);
ps.setString(17,r);
ps.setString(18,s);
ps.setString(19,t);
ps.setString(20,u);
ps.setString(21,v);
ps.setString(22,w);
ps.setString(23,"NO");
int sX = ps.executeUpdate();
  String pemail=(String)session.getAttribute("pemail");


              
            String message="Dear "+c+"! .. Your Health Requirement Analysis Forwarded to your Account.Please Verify it";
            
            
response.sendRedirect("sheduleparty.jsp?message=succ");


con.close();
ps.close();


}catch(Exception ex){

ex.printStackTrace();

}

%>
       
