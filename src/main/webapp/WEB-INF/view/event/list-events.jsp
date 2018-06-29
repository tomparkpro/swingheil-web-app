<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Events</title>
	
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/css/style.css" />

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Event Manager</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
				<input type="button" value="Add Event"
					   onclick="window.location.href='showFormForAdd'; return false;"
					   class="add-button"/>

			<table>
				<tr>
					<th>Event Sn</th>
					<th>Event Title</th>
					<th>Event Type</th>
					<th>Action</th>
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="tempEvent" items="${events}">
				
					<!-- construct an "update" link with customer id -->
					<c:url var="updateLink" value="/event/showFormForUpdate">
						<c:param name="eventSn" value="${tempEvent.eventSn}" />
					</c:url>

					<!-- construct an "delete" link with customer id -->
					<c:url var="deleteLink" value="/event/delete">
						<c:param name="eventSn" value="${tempEvent.eventSn}" />
					</c:url>
					
					<tr>
						<td> ${tempEvent.eventSn} </td>
						<td> ${tempEvent.title} </td>
						<td> ${tempEvent.eventType} </td>

						<td>
							<!-- display the update link -->
							<a href="${updateLink}">Update</a>

							<a href="${deleteLink}"
							   onclick="if (!(confirm('Are you sure you want to delete this event?'))) return false">Delete</a>
						</td>
					</tr>
				
				</c:forEach>
						
			</table>
				
		</div>
	
	</div>
	
	<p></p>
		
</body>

</html>









