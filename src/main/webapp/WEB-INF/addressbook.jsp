<%@ page import="com.pchen.model.AddressBook" %>
<%@ page import="java.util.Iterator" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Address Book</title>
</head>
<body>
<%@include file="header.html" %>
<form action="/addressbook">
    <input type="radio" id="ascending" name="order" value="ASC"><label for="ascending">Ascending</label>
    <input type="radio" id="descending" name="order" value="DESC"><label for="descending">Descending</label><br>
    <input type="submit" value="Sort">
</form>
<table border="1">
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Address</th>
        <th colspan="3">Operations</th>
    </tr>

    <%
        AddressBook addressBook = (AddressBook) request.getAttribute("addressbook");
        Iterator it = addressBook.iterator();
        while (it.hasNext()) {
            String entry = (String) it.next();
            String[] credentials = entry.split("First name: |\\, Last name: |\\, Address:");

    %>
    <tr>
        <td><%=credentials[1]%>
        </td>
        <td><%=credentials[2]%>
        </td>
        <td><%=credentials[3]%>
        </td>
        <td>
            <a href="/addressbook/readEntry?firstname=<%=credentials[1]%>&lastname=<%=credentials[2]%>">View Info</a>
        </td>
        <td>
            <a href="/addressbook/updateEntry?firstname=<%=credentials[1]%>&lastname=<%=credentials[2]%>&address=<%=credentials[3]%>">Edit</a>
        </td>
        <td>
            <a href="/addressbook/deleteEntry?firstname=<%=credentials[1]%>&lastname=<%=credentials[2]%>">Delete</a>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
