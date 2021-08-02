<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@page import="java.util.*, com.infosys.tagdemo.Student" %>


<html>
<head>
    <title>JSTL Functions</title>
</head>
<body>

<c:set var="data" value="steadfast" />
<p>Length of the string "${data}": ${fn:length(data)} </p>
<p>Uppercase version of the string ${data}: ${fn:toUpperCase(data)}</p>
<p>Lowercase version of the string ${data}: ${fn:toLowerCase(data)}</p>
<p>Does the string start with luv? ${fn:startsWith(data, "luv")}</p>
<p>Does the string start with stead? ${fn:startsWith(data, "stead")}</p>

</body>
</html>
