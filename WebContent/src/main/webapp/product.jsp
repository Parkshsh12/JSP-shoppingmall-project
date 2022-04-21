<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="dto.Product" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">��ǰ ����</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		Product product = productDAO.getProuctById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=product.getpName()%></h3>
				<p><%=product.getDescription() %>
				<p> <b>��ǰ �ڵ� : </b><span class="badge badge-danger">
					<%=product.getProductId() %>
				</span>
				<p> <b>������</b> : <%=product.getManufacturer() %>
				<p> <b>�з�</b> : <%=product.getCategory() %>
				<p> <b>��� ��</b> : <%=product.getUnitsInStock() %>
				<h4><%=product.getUnitPrice() %>��</h4>
				<p> <a href="#" class="btn btn-info">��ǰ �ֹ� &raquo;</a>
				<a href="./products.jsp" class="btn btn-secondary">��ǰ ��� &raquo;</a>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>