<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>List Customers</title>
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>
	
	<div id="container">
		<div id="content">
			<input type="button" value="Add Customer" onclick="window.location.href='showFormForAdd; return false'" class="add-button">
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
				
				<c:forEach var = "tempCustomer" items = "${customers}">
					<!-- construct an update link with customer id -->
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${tempCustomer.id}"></c:param>
					</c:url>
					
					<!-- construct an update link with customer id -->
					<c:url var="deleteLink" value="/customer/delete">
						<c:param name="customerId" value="${tempCustomer.id}"></c:param>
					</c:url>
					
					<tr>
						<td> ${tempCustomer.firstName}</td>
						<td> ${tempCustomer.lastName}</td>
						<td> ${tempCustomer.email}</td>
						
						<td>
							<!-- Display the update link -->
							<a href="${updateLink}">Update</a>
							|
							<!-- Display the delete link -->
							<a href="${deleteLink}" onclick="if(!(confirm('Are you want to delete this customer'))) return false;">Delete</a>
						</td>
					</tr>
				</c:forEach> 				
			</table>
		</div>
	</div>
</body>
</html>