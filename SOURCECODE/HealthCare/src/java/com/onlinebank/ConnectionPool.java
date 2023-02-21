package com.onlinebank;

import java.io.PrintStream;
import java.sql.*;
import javax.servlet.Servlet;
import javax.servlet.http.HttpServlet;

public class ConnectionPool extends HttpServlet
    implements Servlet
{

    public ConnectionPool()
    {
    }

    public static Connection getConnection()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcare", "root", "root");
            if(con != null)
                System.out.println("Connection Pool Database Connection Success");
        }
        catch(ClassNotFoundException classnotfoundexception) { }
        catch(SQLException sqlexception) { }
        return con;
    }

    private static Connection con = null;

}