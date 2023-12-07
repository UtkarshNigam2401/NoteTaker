<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.helper.*,com.entities.*,org.hibernate.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<br>

	<%
	int noteId = Integer.parseInt(request.getParameter("note_id").trim());

	Session s = FactoryProvider.getFactory().openSession();
	Note note = (Note) s.get(Note.class, noteId);
	%>
	<div class="container">

		<h1>Edit Note here</h1>

		<form action="UpdateServlet" method="post">

			<input value="<%=note.getId()%>" name="noteId" type="hidden" />
			<div class="mb-3">
				<label for="title" class="form-label">Note Title</label> <input
					required type="text" name="title" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Here"
					value="<%=note.getTitle()%>" />
			</div>
			<div class="mb-3">
				<label for="Content" class="form-label">Note Content</label>
				<textarea required id="content" name="content"
					placeholder="Enter your content here" class="form-control"
					style="height: 200px;"><%=note.getContent()%></textarea>
			</div>

			<button type="submit" class="btn btn-success">Save Updated
				Note</button>
		</form>
	</div>
</body>
</html>