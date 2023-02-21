
<%@page import="databaseconnection.databasecon"%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
            String name=request.getParameter("pid");
            String uname=request.getParameter("rid");
            String pass=request.getParameter("wid");
            int mail=Integer.parseInt(request.getParameter("rc"));
            int mail1=Integer.parseInt(request.getParameter("wc"));
             int totla=mail+mail1;
           try{
             Connection conx=databasecon.getconnection();
          Statement stx=conx.createStatement();
           int ix=stx.executeUpdate("delete from admit where pid='"+name+"' and status='YES'");
        
               
        Connection con=databasecon.getconnection();
          Statement st=con.createStatement();
           int i=st.executeUpdate("insert into admit(pid,rid,wid,totalcharges,status)values('"+name+"','"+uname+"','"+pass+"','"+totla+"','Wait')");
        
           if(i!=0){
                String dname=(String)session.getAttribute("dname");
               String pmail=(String)session.getAttribute("pemail");
              String email="ksyamkumar905@gmail.com";
            String message="Dear "+name+"! .. Your Appointment with Doctor (Dr."+dname+") / Department  has been confirmed for Health care Systems..Your Registered in Room Number: "+uname+" and Ward Number: "+pass;
           
            
               
               
               
                 Connection con1=databasecon.getconnection();
          Statement st1=con1.createStatement();
           int i1=st1.executeUpdate("update packagerequests set status='Processing'  where packid='"+name+"'");
        
           
              response.sendRedirect("adminappointment.jsp?message=succ");
          }else{
                response.sendRedirect("adminappointment.jsp?message=same");
          }}catch(Exception ex){
              response.sendRedirect("adminappointment.jsp?message=same");
          }
%>
