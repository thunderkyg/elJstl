<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="vo.UserVo"%>
<%@ page import="java.util.List"%>


<%
List<UserVo> userList = (List<UserVo>) request.getAttribute("userList");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border="1">
		<thead>
			<tr>
				<td>no</td>
				<td>name</td>
				<td>email</td>
				<td>gender</td>
				<td>password</td>
			</tr>
		</thead>

		<tbody>
			<%
			for (int i = 0; i < userList.size(); i++) {
			%>
			<tr>
				<td><%=userList.get(i).getNo()%></td>
				<td><%=userList.get(i).getName()%></td>
				<td><%=userList.get(i).getEmail()%></td>
				<td><%=userList.get(i).getPassword()%></td>
				<td><%=userList.get(i).getGender()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>

	<br>

	<table border="1">
		<thead>
			<tr>
				<td>no</td>
				<td>name</td>
				<td>email</td>
				<td>gender</td>
				<td>password</td>
				<td>index</td>
				<td>count</td>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${userList}" var="userVo" varStatus="status" begin="5" end="15" step="3">
				<tr>
					<td>${userVo.no}</td>
					<td>${userVo.name}</td>
					<td>${userVo.email}</td>
					<td>${userVo.password}</td>
					<td>${userVo.gender}</td>
					<td>${status.index}</td>
					<td>${status.count}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>