<%@ page import="java.sql.*"%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="UTF-8"%>

<%@ page import="java.io.*"%>

<% Blob image = null;

Connection con = null;

byte[ ] imgData = null ;

Statement stmt = null;

ResultSet rs = null;
String d=request.getQueryString();
try 
{
	
	Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare","root","root");
	System.out.println("connection created "+con);

	stmt = con.createStatement();

	rs = stmt.executeQuery("select picture from user_details where userid = '"+d+"'");
	System.out.println("first");

if (rs.next()) 
	{

		image = rs.getBlob(1);

//		imgData = image.getBinaryStream(0,image.length());
//InputStream ins=rs.getBinaryStream(1);

		imgData = image.getBytes(1,(int)image.length());
System.out.println("second");
	}
	else 
	{

		out.println("Display Blob Example");

		out.println("image not found for given product_name>");

		return;

	}

// display the image

	response.setContentType("image/gif");

	OutputStream o = response.getOutputStream();
//o.write(outImej);

	o.write(imgData);

	o.flush();

	o.close();

}
catch (Exception e) {

out.println("Unable To Display image");

out.println("Image Display Error=" + e.getMessage());

return;

} finally {

try {

rs.close();

stmt.close();

con.close();

} catch (SQLException e) {

e.printStackTrace();

}

}

%> 