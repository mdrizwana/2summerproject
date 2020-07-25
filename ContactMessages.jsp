<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.ArrayList,com.ts.dto.Donor"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="Display.jsp" />
<center>	
	 <table class="table table-hover">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>MAIL</th>
			<th>PHONE</th>
			<th>QUERY</th>
		</tr>
		<c:forEach var="bank" items="${cData}">
			<tr>
				<td>${bank. contactId}</td>
				<td>${bank.name}</td>
				<td>${bank.email}</td>
				<td>${bank.mobileno}</td>
		        <td>${bank.query }
			    </tr>
		</c:forEach>
	</table>
<br>
<br>
</center>
</body>
</html>
		