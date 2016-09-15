<%-- 
    Document   : transactions
    Created on : 23 Aug 2016, 9:18:02 AM
    Author     : Mpho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>

 <% 
            Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer",
            "root", "07834");
            Statement statement = con.createStatement();
            String ops= request.getParameter("operatorNum");
            String balance;
            String account = request.getParameter("account_no");
            String account2= request.getParameter("acc2");
            
            
            statement.executeUpdate("UPDATE transaction SET amount = (amount - '"+ops+"') WHERE account_no ='" + account + "'" ); 
            statement.executeUpdate("UPDATE transaction SET amount = (amount + '"+ops+"') WHERE account_no ='" + account2 + "'" ); 

           
            // statement.executeUpdate("UPDATE transaction SET amount = (amount - '"+ops+"') WHERE account ='" + account + "'");
           
        %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transaction</title>
    </head>
    <body>
        <form method="post" action="transactions.jsp" >
            
            <center>
                <table>
                <h3>Transfer funds</h3>
                <tr>   
                    <td>Sender  Account Number:</td>
                    <td><INPUT TYPE="TEXT" NAME="account_no"></td>
                </tr>
                <tr>
                    <td>Amount</td>
                    <td><INPUT TYPE="TEXT" NAME="operatorNum"></td>
                </tr>
                <tr>
                    <td>recipient account</td>
                    <td><INPUT TYPE="TEXT" NAME="acc2"></td>
                </tr>
                <tr>
                    <td><input type="submit"  value="update"></td>
                </tr>
            </center>
        
        </form>
 </table>
       
    </body>
</html>
