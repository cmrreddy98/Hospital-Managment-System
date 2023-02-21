package com.onlinebank;

import java.io.PrintStream;
import java.sql.*;
import java.util.StringTokenizer;


public class MyFunctions
{

    public MyFunctions()
    {
    }

    public static Connection openConnection()
        throws Exception
    {
        conn = ConnectionPool.getConnection();
        return conn;
    }

    public static void closeConnection()
        throws Exception
    {
        conn.close();
    }

    public static String genNextID(String s, String s1, String s2)
    {
        String s3;
        String s4;
        s3 = "";
        s4 = s2;
        boolean flag = false;
        int j = s2.length();
        ResultSet resultset;
        try{
        openConnection();
        Statement statement = conn.createStatement();
        resultset = null;
        String s5 = (new StringBuilder()).append("select max(`").append(s1).append("`) from `").append(s).append("`").toString();
        resultset = statement.executeQuery(s5);
        if(resultset == null)
            return (new StringBuilder()).append(s2).append("1").toString();
        int i;
        if(resultset.next())
            s3 = resultset.getString(1);
        i = Integer.parseInt(s3);
        i++;
        s4 = (new StringBuilder()).append(s4).append(i).toString();
        closeConnection();
        if(i != 0)
            return s4;
        return (new StringBuilder()).append(s2).append("1").toString();
        }
        catch(Exception exception)
        {
        System.out.println((new StringBuilder()).append("Exception in genNextID").append(exception).toString());
        exception.printStackTrace();
        return (new StringBuilder()).append(s2).append("1").toString();
        }
    }

    public static String[] MyTokenizer(String s, String s1)
    {
        StringTokenizer stringtokenizer = new StringTokenizer(s, s1);
        int i = stringtokenizer.countTokens();
        int j = 0;
        String as[] = new String[i];
        while(stringtokenizer.hasMoreTokens()) 
        {
            as[j] = stringtokenizer.nextToken();
            j++;
        }
        return as;
    }

    private static Connection conn;
    private static Statement stmt = null;
    private static Statement stmt1 = null;
    private static ResultSet rs = null;

}