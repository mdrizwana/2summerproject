<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.ArrayList,com.ts.dto.Donor, java.util.List,com.ts.dto.Donor_Bloodbank"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image: url('images1/admin.jpg');
}
</style>
</head>
<body>
<center>
 <table class="table table-hover">
		<tr>
		
			<th style="padding-right:15px">FIRSTNAME</th>
			<th style="padding-right:15px">LASTNAME</th>
			<th style="padding-right:15px">GENDER</th>
			<th style="padding-right:15px">AGE</th>
			<th style="padding-right:15px">PHONE NUMBER</th>
			<th style="padding-right:15px">BLOODGROUP</th>
			<th style="padding-right:15px">EMAIL</th>
			<th style="padding-right:15px">CITY</th>
			<th style="padding-right:15px">DATE OF DONATION</th>
		</tr>
		<% 
		ArrayList<Donor> arrayList= (ArrayList<Donor>)request.getAttribute("DonorData");
		for(Donor d: arrayList) { %>		 
		<tr>			
			<td><%=d.getFirstName() %></td>
			<td><%=d.getLastName() %></td>
			<td><%=d.getGender()%></td>
			<td><%=d.getAge() %></td>
			<td><%=d.getPhoneNumber() %></td>
			<td><%=d.getBloodGroup() %></td>
			<td><%=d.getEmail() %></td>
			<td><%=d.getCity() %></td>
			<td><%=d.getDateOfDonation() %></td>
			<%} %>
			</table>
</body>
</html>






