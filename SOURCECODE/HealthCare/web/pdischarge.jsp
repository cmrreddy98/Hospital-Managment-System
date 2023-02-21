

<%@page import="databaseconnection.databasecon"%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
            String name=request.getQueryString();
            
           try{
            
          Connection con=databasecon.getconnection();
          Statement st=con.createStatement();
           int i=st.executeUpdate("update readmission set status='Discharge' where status='readmission' and pid='"+name+"'");
         Connection con1=databasecon.getconnection();
          Statement st1=con1.createStatement();
           int i1=st1.executeUpdate("update packagerequests set status='Discharge' where status='Processing' and packid='"+name+"'");
         
           
           Connection con11=databasecon.getconnection();
          Statement st11=con11.createStatement();
           int i11=st11.executeUpdate("update packages set status='Discharge' where status='NO' and id='"+name+"'");
         
           
           con.close();
           if(i!=0){
              response.sendRedirect("viewadmissions.jsp?message=dis");
          }else{
                response.sendRedirect("viewadmissions.jsp?message=case");
          }}catch(Exception ex){
              response.sendRedirect("viewadmissions.jsp?message=case");
          }
%>
