<%@page import="dto.Person"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.PersonRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>사람 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">사람 목록</h1>
			<p> <a class="btn btn-primary" href="./addPerson.jsp" role="button">
					사람 추가 &raquo;
				</a>
		</div>
	</div>
	<%
		PersonRepository dao = PersonRepository.getInstance();
		ArrayList<Person> arraylist = dao.getAllList();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
				for(int i = 0; i < arraylist.size(); i++){
					Person person = arraylist.get(i);
			%>
			<div class="col-md-4">
				<img src="./resources/image/<%=person.getFilename() %>" style="width:100%">
				<h3><%=person.getName() %></h3>
				<p> <a class="btn btn-secondary" href="./person.jsp?id=<%=person.getPersonId() %>" role="button">
					상세 정보 &raquo;
				</a>
			</div>
			<%
				}
			%>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>