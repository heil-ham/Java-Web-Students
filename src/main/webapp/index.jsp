<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
<%--  Cek apakah user telah login  --%>
    <%
        String username = (String) session.getAttribute("username");
        if (username == null ) {
    %>
<%--    Form Login --%>
    <form class="form-login" method="post" action="login.jsp">
        <h1>Login</h1>
        <div>
            <label for="username" class="form-label">Username</label>
            <input type="text" id="username" name="username" class="form-control" required>
        </div>
        <div>
            <label for="password" class="form-label">Password</label>
            <input type="password" id="password" name="password" class="form-control" required>
        </div>
        <button class="btn btn-primary" type="submit">Sign in</button>
    </form>
    <% } else { %>
<%--    Form Logout--%>
    <form class="form-login" method="post" action="logout.jsp">
        <h2 class="mb-3">Welcome, <%= username %>!</h2>
        <button class="btn btn-primary" type="submit">Logout</button>
    </form>
    <% } %>
</div>
</body>
</html>