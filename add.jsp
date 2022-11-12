<%-- 
    Document   : add
    Created on : 14 Oct, 2022, 11:50:30 AM
    Author     : Abhinandan Shinde
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="s.css">
    </head>
    <center>
    <body>
        <div class="bgimage">
            <div class="text">
        <% 
            String sname=request.getParameter("n1");
            String cname=request.getParameter("n2");
            String degree=request.getParameter("n3");
            String py=request.getParameter("n4");
            int year=Integer.parseInt(py);
            String email=request.getParameter("n5");
            String mbn=request.getParameter("n6");
            long mobno=Long.parseLong(mbn);
            String date=request.getParameter("n7");
            String gender=request.getParameter("n8");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "vishu","vishu123");
            Statement stmt=con.createStatement();
            int i=stmt.executeUpdate("insert into classrg values('"+sname+"','"+cname+"','"+degree+"',"+year+","+mobno+",'"+date+"','"+gender+"','"+email+"')");
           
            if(i>0)
            {
                
                out.println("<h1>Registration Is Successfull</h1>");
            }
            else
            {
                out.println("no record inserted");
            }
            %>
            </div>
            </div>
    </body>
    </center>
</html>
