<%-- 
    Document   : application
    Created on : 19 Jul 2016, 1:54:36 PM
    Author     : Mpho
--%>

<%@ page import ="java.sql.*"
         import ="java.util.*"%>

<%
  
    String Name = request.getParameter("Name");    
    String ID = request.getParameter("ID");
    String DOB = request.getParameter("DOB");
    String address = request.getParameter("address");
      String g = request.getParameter("g");
    String email = request.getParameter("email");
     
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebanking",
            "root", "joy110710");
    Statement st = con.createStatement();
        int i = st.executeUpdate("insert into register_info(Last_Name, ID, Date_Of_Birth, address, email_id) values ('" + Name + "','" + ID + "','"+ DOB +"','"+address+"','"+email+"')");
    if (i > 0) {
        response.sendRedirect("FEEDBACK.jsp");
    } else {
        response.sendRedirect("LOGIN.jsp");
    }
%>

