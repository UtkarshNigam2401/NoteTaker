<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes : Note Taker</title>
<%@include file="all_js_css.jsp"%>
</head>
<body style="background-color:darkturquoise;">
	<%@include file="navbar.jsp"%>
	<br>

	<div class="container">
		<h1>All Notes:</h1>
		<%
		Session s = FactoryProvider.getFactory().openSession();
		Query q = s.createQuery("from Note");
		List<Note> list = q.list();
		for (Note note : list) {
		%>

		<div class="card m-4 text-center">
			<img src="img/sticky-notes.png" style="max-width: 50px;"
				class="m-2 mx-auto" alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title"><%=note.getTitle()%></h5>
				<p class="card-text"><%=note.getContent()%></p>
				<p>
					<b class="text-primary"><%= note.getAddedDate() %></b>
				</p>
				<a href="DeleteServlet?note_id=<%=note.getId()%>"
					class="btn btn-danger">Delete</a> <a
					href="edit.jsp?note_id=<%=note.getId()%>" class="btn btn-primary">Update</a>
			</div>
		</div>

		<%
		}
		s.close();
		%>
	</div>
</body>
</html>