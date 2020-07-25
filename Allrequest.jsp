<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.ArrayList,com.ts.dto.Receipient, java.util.List,com.ts.dto.Receipient_Bloodbank"%>
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
			<th>LOCATION</th>
			<th>PHONE</th>
			<th>ADDRESS</th>
			<th>REQUESTS</th>
		</tr>
		<% 
		ArrayList<Receipient> arrayList= (ArrayList<Receipient>)request.getAttribute("receipientData");
		for(Receipient r : arrayList) { %>		 
		<tr>			
			<td><%=r.getReceipientId()%></td>
			<td><%=r.getName() %>
			<td><%=r.getLocation() %>
			<td><%=r.getPhone() %>
			<td><%=r.getAddress() %>
			<td> <table class="table table-hover">
			<tr>
			<th>REQUESTID</th>
			<th>QUANTITY</th>
			<th>STATUS</th>
			<th>BLOODGROUP</th>
			<th>REQUESTDATE</th>
			<th>BLOODBANKID</th>
			<th>BLOODBANK NAME</th>
			<th>BLOODBANK LOCATION</th>
			<th>BLOODBANK ADDRESS</th>
			</tr>
		    <% List <Receipient_Bloodbank> rb=r.getBloodbankreceipient();
		       for(Receipient_Bloodbank r1:rb){ %>
		       <tr>
		    	   <td><%=r1.getRequestId() %></td>
		    	   <td><%=r1.getQuantity() %></td>
		    	   <td><%=r1.getStatus() %></td>
		    	   <td><%=r1.getBloodGroup() %></td>
		    	   <td><%=r1.getRequestDate() %></td>
		    	   <td><%=r1.getBloodbank().getBloodbankId() %></td>
		    	   <td><%=r1.getBloodbank().getName() %></td>
		    	   <td><%=r1.getBloodbank().getLocation() %></td>
		    	   <td><%=r1.getBloodbank().getAddress() %></td>
		    	   <br/>
		    </td>
             <% } %>
             </table>
             <br/><br/>
             <% } %>
			</table>	
			</center>			
</body>
</html>





