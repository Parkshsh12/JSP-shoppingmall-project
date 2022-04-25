<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="dto.Person"%>
<%@page import="dao.PersonRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String filename="";
		String realFolder = request.getRealPath("resources/image");
		int maxSize = 5 * 1024 * 1024;
		String encType = "utf-8";
		
		MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
		String personName = multi.getParameter("personName");
		String personId = multi.getParameter("personId");
		String phoneNumber1 = multi.getParameter("phoneNumber1");
		String phoneNumber2 = multi.getParameter("phoneNumber2");
		String phoneNumber3 = multi.getParameter("phoneNumber3");
		String sex = multi.getParameter("sex");
		String description = multi.getParameter("description");
		String address = multi.getParameter("address");
		
		Enumeration file = multi.getFileNames();
		String fname = (String)file.nextElement();
		String fileName = multi.getFilesystemName(fname);
		
		PersonRepository dao = PersonRepository.getInstance();
		
		Person newPerson = new Person();
		newPerson.setName(personName);
		newPerson.setPersonId(personId);
		newPerson.setPhoneNumber1(phoneNumber1);
		newPerson.setPhoneNumber2(phoneNumber2);
		newPerson.setPhoneNumber3(phoneNumber3);
		newPerson.setAddress(address);
		newPerson.setSex(sex);
		newPerson.setDescription(description);
		newPerson.setFilename(fileName);
		
		dao.addArrayList(newPerson);
		response.sendRedirect("people.jsp");
	%>
</body>
</html>