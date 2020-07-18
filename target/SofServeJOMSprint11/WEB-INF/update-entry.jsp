<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Credentials</title>
</head>
<body>
<%
    String firstName = (String) request.getAttribute("firstname");
    String lastName = (String) request.getAttribute("lastname");
    String address = (String) request.getAttribute("address");
%>
<%@include file="header.html" %>
<form action="/addressbook/updateEntry" method="post">
    <table>
        <tr>
            <td>
                <label for="firstname">First Name:</label>
            </td>
            <td>
                <input type="text" id="firstname" name="firstname" value="<%=firstName%>" disabled>
            </td>
        </tr>
        <tr>
            <td>
                <label for="lastname">Last Name:</label>
            </td>
            <td>
                <input type="text" id="lastname" name="lastname" value="<%=lastName%>" disabled>
            </td>
        </tr>
        <tr>
            <td>
                <label for="address">Address:</label>
            </td>
            <td>
                <input type="text" id="address" name="address" value="<%=address%>">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Update">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </table>
</form>

</body>
</html>