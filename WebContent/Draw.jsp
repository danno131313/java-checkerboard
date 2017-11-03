<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Checkerboard!</title>
	<link href="./style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<% int width = 2; %>
	<% int height = 2; %>
	<% try { %>
		<% width = Integer.parseInt(request.getParameter("width")); %>
		<% height = Integer.parseInt(request.getParameter("height")); %>
	<% } catch (NumberFormatException e) {} %>
	<h1>Checkerboard: <%= width %>w X <%= height %>h</h1>
	<div id="checkerboard">
		<% int count = 0; %>
		<% for (int i = 0; i < height; i++) { %>
			<div class="row">
				<% for (int j = 0; j < width; j++) { %>
					<% if (count % 2 == 0) { %>
						<div class="pink"></div>
					<% } else { %>
						<div class="blue"></div>
					<% } %>
						<% count++; %>
				<% } %>
				<% if (width % 2 == 0) { %>
					<% count++; %>
				<% } %>
			</div>
		<% } %>
	</div>
</body>
</html>