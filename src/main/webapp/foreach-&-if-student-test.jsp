<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, com.infosys.tagdemo.Student" %>

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
    <title>Student Form</title>
</head>
<body>

<c:forEach var="student" items="${students}">
    <p>${student.firstName} ${student.lastName}</p>
    <c:if test="${student.goldCustomer}">
        <p><strong>Elite</strong> Customer</p>
    </c:if>
    <c:if test="${not student.goldCustomer}">
        <p>Customer</p>
    </c:if>
        <hr>
</c:forEach>

</body>
</html>
