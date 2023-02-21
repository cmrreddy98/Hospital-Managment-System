
<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
    <head>
	<title></title>
    </head>
    <body>

<hr>
	<form name="del"><font size="4">
			
		
	<% 
                	String pid=request.getQueryString();
	
			
	Connection con=null;
	Statement st=null;
        Statement stt=null;
	ResultSet rs=null;
			
         try      
	{
	   
	      con = databasecon.getconnection();
	    st=con.createStatement();
            
	   String sql=" update  packagerequests set status='PAYMENT' where status='NO' AND id='"+pid+"'";
 	   st.executeUpdate(sql);
		
			if(pid!=null)
                        {
                            String dname=(String)session.getAttribute("doctor");
                            String piid=(String)session.getAttribute("pid");
                            String tname=(String)session.getAttribute("timee");
                             String dmail=(String)session.getAttribute("doctormail");
                             String pmail=(String)session.getAttribute("pmail");
                             
            String message="Dr "+dname+"! ..Your Appointment With Patient(ID): "+piid+" Has been Confirmend at Health Care Systems on "+tname;
           
            
		              response.sendRedirect("Appointmentdetails.jsp?message=success");
                            
                        }
                        else
                        {
			response.sendRedirect("Appointmentdetails.jsp?message=fail");
                            }
		
		
	}
	catch(SQLException e1)	{ System.out.println("Database error"+e1.getMessage()); }

	
            %>
			
             </form>
       </body> 	
</html>