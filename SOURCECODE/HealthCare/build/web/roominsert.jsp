

<%@page import="databaseconnection.databasecon"%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
            String name=request.getParameter("name");
            String uname=request.getParameter("age");
            String pass=request.getParameter("gender");
            String mail=request.getParameter("email");
            String mailp=request.getParameter("password");
             String rname=request.getParameter("pname");
           try{
            
        Connection con=databasecon.getconnection();
          Statement st=con.createStatement();
           int i=st.executeUpdate("insert into rooms(id,charges,rtype,organizer,regdate,rname)values('"+name+"','"+uname+"','"+pass+"','"+mail+"','"+mailp+"','"+rname+"')");
          con.close();
           if(i!=0){
              response.sendRedirect("rooms.jsp?message=succ");
          }else{
                response.sendRedirect("rooms.jsp?message=same");
          }}catch(Exception ex){
              response.sendRedirect("rooms.jsp?message=same");
          }
%>
