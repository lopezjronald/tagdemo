<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@page import="java.util.*, com.infosys.tagdemo.Student" %>


<html>
<head>
    <title>JSTL Functions</title>
</head>
<body>

<c:set var="data" value="Singapore,Tokyo,Mumbai,London" />
<c:set var="cities" value="${fn:split(data, ',')}" />

<c:set var="fun" value="${fn:join(cities, '*')}" />
Result of joining: ${fun}

<p>Cities:</p>
<c:forEach var="city" items="${cities}">
    <p>* ${city}</p>
</c:forEach>

</body>
</html>
