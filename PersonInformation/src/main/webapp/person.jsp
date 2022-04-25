<%@page import="dto.Person"%>
<%@page import="dao.PersonRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">사람 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		PersonRepository dao = PersonRepository.getInstance();
		Person person = dao.getPersonbyId(id);
	%>
	
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="./resources/image/<%=person.getFilename() %>" style="width:100%">
			</div>
			<div class="col-md-6">
				<h3><%=person.getName() %></h3>
				<p> <b>주민 번호</b> : <%=person.getPersonId() %></p>
				<p> <b>전화 번호</b> : <%=person.getPhoneNumber1() %>-<%=person.getPhoneNumber2() %>-<%=person.getPhoneNumber3() %></p>
				<p> <b>주    소</b> : <%=person.getAddress() %></p>
				<p> <b>성    별</b> : <%=person.getSex() %></p>
				<p> <a href="./people.jsp" class="btn btn-secondary">사람 목록&raquo;</a>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>