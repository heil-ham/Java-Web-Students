<%@ page import="com.example.javaweb.Students" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 15/06/2024
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
    <div>
        <h1>Dashboard</h1>
        <%-- Validasi apakah user telah log in --%>
        <%

            String username = (String) session.getAttribute("username");
            if (username != null) {
                Students stud1 = new Students("S1", "Dep 1", "Liu Kang", 35);
                Students stud2 = new Students("S2", "Dep 1", "Kitana", 70);
                Students stud3 = new Students("S3", "Dep 1", "Milena", 60);
                Students stud4 = new Students("S4", "Dep 1", "Kahn", 90);
                Students stud5 = new Students("S5", "Dep 2", "Raiden", 30);
                Students stud6 = new Students("S6", "Dep 3", "Cage", 32);
                Students stud7 = new Students("S7", "Dep 3", "Baraka", 70);
                Students stud8 = new Students("S8", "Dep 3", "Kotaro", 20);
                List<Students> studentsList = List.of(stud1,stud2,stud3,stud4,stud5,stud6,stud7,stud8);
                List<Students> Dep1Students = studentsList.stream().filter(student -> student.getDepartement().equals("Dep 1")).toList();
                List<Students> Dep2Students = studentsList.stream().filter(student -> student.getDepartement().equals("Dep 2")).toList();
                List<Students> Dep3Students = studentsList.stream().filter(student -> student.getDepartement().equals("Dep 3")).toList();

                Integer sizedep1 = Dep1Students.stream().filter(student -> student.getMark() >= 60).toList().size();

                Float Dep1Pass = (float) Dep1Students.stream().filter(student -> student.getMark() >= 60).toList().size()/Dep1Students.size()*100;
                Float Dep2Pass = (float) Dep2Students.stream().filter(student -> student.getMark() >= 60).toList().size()/Dep2Students.size()*100;
                Float Dep3Pass = (float) Dep3Students.stream().filter(student -> student.getMark() >= 60).toList().size()/Dep3Students.size()*100;
        %>
        <p>Hallo <%= username %>!</p>
        <table>
            <thead>
            <td>Departement</td>
            <td>ID</td>
            <td>Mark</td>
            <td>Pass %</td>
            </thead>
            <% for (Students student: studentsList) { %>
            <tr>
                <td>
                    <%= student.getDepartement()%>
                </td>
                <td><%= student.getStudentId()%></td>
                <td><%= student.getMark()%></td>
                <% if (student.getStudentId().equals("S1")) { %>
                    <td rowspan="4"><%= Dep1Pass%></td>
                <% } else if (student.getStudentId().equals("S5")) { %>
                    <td><%= Dep2Pass%></td>
                <% } else if (student.getStudentId().equals("S6")) { %>
                    <td rowspan="3"><%= Dep3Pass%></td>
                <% } %>
            </tr>
            <% } %>
        </table>
        <p><a href="logout.jsp">Keluar</a></p>
        <% } else { %>
        <p>Silahkan log in terlebih dahulu. <a href="login.jsp">Login</a></p>
        <% } %>
    </div>
</body>
</html>
