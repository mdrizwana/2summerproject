<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.ArrayList,com.ts.dto.Donor, java.util.List,com.ts.dto.Donor_Bloodbank"%>
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
		
			<th>DONOR</th>
			<th>FIRSTNAME</th>
			<th>LASTNAME</th>
			<th>GENDER</th>
			<th>AGE</th>
			<th>HEALTH STATUS</th>
			<th>PHONE NUMBER</th>
			<th>BLOODGROUP</th>
			<th>EMAIL</th>
			<th>CITY</th>
			<th>USER NAME</th>
			<th>DATE OF DONATION</th>
			<th>DONATIONS</th>
		</tr>
		<% 
		ArrayList<Donor> arrayList= (ArrayList<Donor>)request.getAttribute("DonorData");
		for(Donor d: arrayList) { %>		 
		<tr>			
			<td><%=d.getDonorId()%></td>
			<td><%=d.getFirstName() %></td>
			<td><%=d.getLastName() %></td>
			<td><%=d.getGender()%></td>
			<td><%=d.getAge() %></td>
			<td><%=d.getHealthstatus() %></td>
			<td><%=d.getPhoneNumber() %></td>
			<td><%=d.getBloodGroup() %></td>
			<td><%=d.getEmail() %></td>
			<td><%=d.getCity() %></td>
			<td><%=d.getUserName() %>
			<td><%=d.getDateOfDonation() %></td>
			<td> <table class="table table-hover">
			<tr>
			<th>BLOODBANKID</th>
			<th>BLOODBANK NAME</th>
			<th>BLOODBANK LOCATION</th>
			<th>BLOODBANK ADDRESS</th>
			</tr>
		    <% List <Donor_Bloodbank> rb= d.getDonorbloodbank();
		       for(Donor_Bloodbank r1:rb){ %>
		       <tr>
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