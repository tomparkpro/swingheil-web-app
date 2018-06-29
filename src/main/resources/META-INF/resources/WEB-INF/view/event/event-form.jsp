<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
	<title>Save Event</title>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/css/style.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/css/add-event-style.css">

	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
        $( function() {
            $( ".datepicker" ).datepicker();
        } );
	</script>
</head>

<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>Event Manager</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Event</h3>
		<form:form action="saveEvent" modelAttribute="event" method="POST">
			<form:hidden path="eventSn" />
			<table>
				<tbody>
					<tr>
						<td><label>Event Title:</label></td>
						<td><form:input path="title" /></td>
					</tr>

					<tr>
						<td><label>Event Type:</label></td>
						<td>
							<form:select path="eventType">
								<form:options items="${eventTypes}" itemValue="id" itemLabel="id" />
							</form:select>
						</td>
					</tr>

					<tr>
						<td><label>Event Start Date:</label></td>
						<td><form:input path="startDt" class="datepicker"/></td>
					</tr>

					<tr>
						<td><label>Event End Date:</label></td>
						<td><form:input path="endDt" class="datepicker"/></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>


				</tbody>
			</table>
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/event/list">Back to List</a>
		</p>
	
	</div>

</body>

</html>










