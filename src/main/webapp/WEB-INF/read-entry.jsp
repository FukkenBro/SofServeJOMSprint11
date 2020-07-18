<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Entry Info</title>
</head>
<body>
<%@include file="header.html" %>
<%
    String info = (String) request.getAttribute("info");
%>
<p>
    First Name: <%=request.getAttribute("firstname")%>
</p>
<p>
    Last Name: <%=request.getAttribute("lastname")%>
</p>
<p>
    Address: <%=request.getAttribute("info")%>
</p>
</body>
</html>
