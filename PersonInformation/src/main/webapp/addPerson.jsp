<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">사람 등록</h1>
		</div>
	</div>
	<div class="container">
		<form class="form-horizontal" action="./addPerson_process.jsp" name="newPerson" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">사람 이름</label>
				<div class="col-sm-3">
					<input type="text" name="personName" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주민번호</label>
				<div class="col-sm-3">
					<input type="text" name="personId" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">전화번호</label>
				<div class="col-sm-3">
					<select name="phoneNumber1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="019">019</option>
					</select>-<input type="text" name="phoneNumber2" maxlength="4" size="4">-<input type="text" name="phoneNumber3" maxlength="4" size="4">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-3">
					<input type="text" name="address" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">이메일</label>
				<div class="col-sm-3">
					<input type="email" name="email" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">성별</label>
				<div class="col-sm-3">
					<input type="radio" name="sex" value="남성" checked>남성
					<input type="radio" name="sex" value="여성"">여성
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">자기소개</label>
				<div class="col-sm-3">
					<textarea name="description" rows="2" cols="50" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">이미지</label>
				<div class="col-sm-5">
					<input type="file" name="productImage" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>