<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="header.html" %>
<form action="/addressbook/create" method="post">
    <table>
        <tr>
            <td>
                <label for="firstname">First Name:</label>
            </td>
            <td>
                <input type="text" id="firstname" name="firstname">
            </td>
        </tr>
        <tr>
            <td>
                <label for="lastname">Last Name:</label>
            </td>
            <td>
                <input type="text" id="lastname" name="lastname">
            </td>
        </tr>
        <tr>
            <td>
                <label for="address">Address:</label>
            </td>
            <td>
                <input type="text" id="address" name="address">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Create">
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
