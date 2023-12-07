<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Note</title>

<%@include file="all_js_css.jsp"%>

</head>
<body style="background-color:darkcyan;">
	<%@include file="navbar.jsp"%>
	<br>


	<div class="container">

		<h1>Enter Note Details here</h1>
		<form action="SaveNoteServlet" method="post">
			<div class="mb-3">
				<label for="title" class="form-label">Note Title</label> <input
					required type="text" name="title" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Here">
			</div>
			<div class="mb-3">
				<label for="Content" class="form-label">Note Content</label>
				<textarea required id="content" name="content"
					placeholder="Enter your content here" class="form-control"
					style="height: 200px;"></textarea>
			</div>

			<button type="submit" class="btn btn-primary" style="border: 2px solid yellow;">Add</button>
		</form>
	</div>
</body>
</html>