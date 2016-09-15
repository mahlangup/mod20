

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%@ page import ="java.sql.*"
         import ="java.util.*"%>

<%
  
    String Name = request.getParameter("userid");    
    String ID = request.getParameter("account_no");
    String DOB = request.getParameter("amount");
   // String address = request.getParameter("address");
    //String email = request.getParameter("email");
    
    String user = request.getParameter("user");  
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer",
            "root", "07834");
    Statement st = con.createStatement();
        int i = st.executeUpdate("select userid, account_no from transaction where user ='"+user+"'");
    if (i > 0) {
        response.sendRedirect("FEEDBACK.jsp");
    } else {
        response.sendRedirect("LOGIN.jsp");
    }
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            <label>userid</label>
            <input type="text" name="user"value ="">
            
  
    </body>
</html>
