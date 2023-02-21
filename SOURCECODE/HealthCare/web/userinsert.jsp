<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" errorPage="" %>
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
Connection con=databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select userid from user_details");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
u=rs.getString(1);
}
if(u==null)
{
 u2=u1+1;
}
else
{
u1=Integer.parseInt(u);
u2=u1+1;
}
String u3=Integer.toString(u2);
session.setAttribute("u3",u3);
String password =null;
String question =null;
String answer =null;
String address =null;
String email = null;
String mobile =null;
String age =null;
String gender =null;
String dayy =null;
String monthh =null;
String yearr =null;
String pin =null;

String t11 = request.getParameter("file");
Thread.sleep(100);
ArrayList list = new ArrayList();
		ServletContext context = getServletContext();

		String dirName ="C:\\Gallery\\";
		String paramname=null;
	     
		String image=null;String unamee=null;
		
   		  File file1 = null;
			
		
		try {
			 
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				
				
				if(paramname.equalsIgnoreCase("file"))
				{
					image=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("name"))
				{
					unamee=multi.getParameter(paramname);
				}
                                if(paramname.equalsIgnoreCase("fname"))
				{
				       password=multi.getParameter(paramname);
				}
                                if(paramname.equalsIgnoreCase("age"))
				{
				       question=multi.getParameter(paramname);
				}
                                if(paramname.equalsIgnoreCase("gender"))
				{
				       answer=multi.getParameter(paramname);
				}
                                if(paramname.equalsIgnoreCase("email"))
				{
				       address=multi.getParameter(paramname);
				}
                                
                                if(paramname.equalsIgnoreCase("password"))
				{
				       mobile=multi.getParameter(paramname);
				}
                                if(paramname.equalsIgnoreCase("mobile"))
				{
				       age=multi.getParameter(paramname);
				}
                                if(paramname.equalsIgnoreCase("location"))
				{
				       gender=multi.getParameter(paramname);
				}
                                if(paramname.equalsIgnoreCase("dob"))
				{
				       email=multi.getParameter(paramname);
				}
                                
				}
				String sss=""+dayy+"-"+monthh+"-"+yearr;	
			int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname != null)
		{
			f = 1;
			image = multi.getFilesystemName(paramname);
			String fPath ="C:\\Gallery\\"+image;
                        file1 = new File(fPath);
			FileInputStream fs = new FileInputStream(file1);
			list.add(fs);
		}		
	}
	        FileInputStream fs1 = null;
                
                PreparedStatement sql =con.prepareStatement("INSERT INTO user_details VALUES ('"+unamee+"','"+password+"','"+question+"','"+answer+"','"+address+"','"+mobile+"','"+age+"','"+gender+"',?,'"+email+"','"+u3+"')");
//sql.setBinaryStream(1, (InputStream)fis, (int)(image.length())); 
sql.setString(1,image);
 if(f == 0)
			sql.setObject(2,null);
		else if(f == 1)
		{
			fs1 = (FileInputStream)list.get(0);
			sql.setBinaryStream(1,fs1,fs1.available());
		}	
			int x=sql.executeUpdate();
		
			

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Health Systems</title>
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
<table width="600" border="0" background="images/desktop.PNG" align="center" cellpadding="0" cellspacing="0" style="font-weight:normal; background-color:#FFF00F">
  
  <tr>
<td width="160" ><p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>	</td>
    <td colspan="2" style="padding:20px;">
	
	<% 
	if(x!=0)
        {
          response.sendRedirect("register.jsp?message=succ");
	
	}else {

	    response.sendRedirect("register.jsp?message=fail");
	
	}
	 %>
	</div>
	</td>
  </tr>
       </fieldset>
  <tr style="height:30px;">
   
  </tr>
</table>
</body>

</html>
<%
}
catch(Exception e1)
{
e1.printStackTrace();
}
%>
<%
}
catch(Exception e1)
{
e1.printStackTrace();
}
%>