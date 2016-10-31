<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>news</title>

</head>
<body >
<ul  style="padding-left:2px;">

	<c:forEach var="i" items="${NEWSatt }">
	
	
		<li style="font-weight:bold"><h6 style="background-color:#f8f8f8;font-color:#000;" >${i.title }</h6></li>
		<li><ul type="square" style="margin-bottom:15px;"><li>	On ${i.date}
		<li> ${i.description}</li>
		</ul></li>
	</c:forEach>
</ul>
</body>
</html>