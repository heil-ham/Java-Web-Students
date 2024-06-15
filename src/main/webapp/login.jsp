<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 15/06/2024
  Time: 12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // Hardcoded Username and Password
    String USERNAME = "user";
    String PASSWORD = "password";

    // input username dan password dari form
    String inputUsername = request.getParameter("username");
    String inputPassword = request.getParameter("password");

    // Logic pencocokan username dan password
    if (inputUsername != null && inputPassword != null && inputUsername.equals(USERNAME) && inputPassword.equals(PASSWORD)) {
        // Set username di session dan redirect ke dashboard
        session.setAttribute("username", inputUsername);
        response.sendRedirect("dashboard.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>