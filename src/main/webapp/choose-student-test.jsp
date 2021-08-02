<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="java.util.*, com.infosys.tagdemo.Student" %>


<%
    // just create some sample students, normally MVC
    List<Student> students = new ArrayList<>();
    students.add(new Student("John", "Doe", false));
    students.add(new Student("Bravo", "Johnny", true));
    students.add(new Student("Mary", "Poppins", true));

    pageContext.setAttribute("students", students);
%>

<html>
<head>
    <title>Choose Student</title>
</head>
<body>

<c:forEach var="student" items="${students}">
    <p>${student.firstName} ${student.lastName}</p>
    <c:choose>
        <c:when test="${student.goldCustomer}">
            <p><strong>Elite</strong> Customer</p>
        </c:when>
        <c:otherwise>
            <p style="color: red;">---------</p>
        </c:otherwise>
    </c:choose>
    <hr>
</c:forEach>

</body>
</html>
