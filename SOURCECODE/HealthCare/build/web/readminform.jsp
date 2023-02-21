
<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
    <%String a=request.getQueryString();
				int n=0,s=0;
 				Connection conq=null;
				Statement stq=null;
				ResultSet rsq=null;
				String sql="select rcount,email from readmission where pid='"+a+"'";
				
                             String pemail=null;   
                                
		//con=databasecon.getconnection();
conq = databasecon.getconnection();
		stq=conq.createStatement();
		rsq=stq.executeQuery(sql);
		if(rsq.next())
		{
		if(rsq.getInt(1)==0)
		n=1;
                  
		else
		n=rsq.getInt(1)+1;
                pemail=rsq.getString(2);
		session.setAttribute("id", n );
                System.out.println("valyiue"+n);
		}
				%>
<head>
    <% String docid = (String)session.getAttribute("did");
       String doctormail= (String)session.getAttribute("doctormail"); 
 String username = (String)session.getAttribute("sname");%>
<% 
Connection con=null;

ResultSet rs=null;
PreparedStatement ps=null;
    
	
	
       try
                {	  
	   Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
ps=con.prepareStatement("update readmission set status='readmission',rcount='"+n+"' where pid='"+a+"'");
int sX = ps.executeUpdate();

String message="Dear Doctor  !.. Patient(ID:"+a+"). was Requested For New Re-Admission. Please Verify it";
         
            

response.sendRedirect("Appointmentdetails.jsp?message=su");


con.close();
ps.close();


}catch(Exception ex){

out.println("Error in connection : "+ex);

}

%>
       
