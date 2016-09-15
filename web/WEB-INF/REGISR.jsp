<%-- 
   : reg
    Created on : 19 Jul 2016, 1:52:16 PM
    Author     : Mpho
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <form method="post" action="APPLICATION.jsp">
            <center>
            <table>
                <thead>
                    <tr>
                        <th colspan="2">Enter Information Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="Name" value="" /></td>
                    </tr>
                    <tr>
                        <td>ID</td>
                        <td><input type="text" name="ID" value="" /></td>
                    </tr>
                    <tr>
                        <td>Date Of Birt</td>
                        <td><input type="text" name="DOB" value="" /></td>
                    </tr>
                    <tr>
                        <td>address</td>
                        <td><input type="text" name="address" value="" /></td>
                    </tr>
                    <tr>
                        <td>email</td>
                        <td><input type ="text" name = "email"  /></td>
                    </tr>
                    <tr>
                        <td>password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
  
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="NEW.jsp">Login Here</a></td>
                    </tr>
               <tbody>
            </table>
            </center>
        </form>
    </body>
</html>

