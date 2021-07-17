<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo"%>

<%
UserVo authUser = (UserVo) session.getAttribute("authUser");
%>

	<div id="header" class="clearfix">
		<h1>
			<a href="./main">MySite</a>
		</h1>
		<%
		//authUser =/ null = login있음
		if (authUser != null) {
		%>
		<ul>
			<li><%=authUser.getName()%> 님 안녕하세요^^</li>
			<li><a href="./user?action=logout" class="btn_s">로그아웃</a></li>
			<li><a href="./user?action=modifyForm" class="btn_s">회원정보수정</a></li>
		</ul>
		<%
		} else {
		%>
		<ul>
			<li><a href="./user?action=loginForm" class="btn_s">로그인</a></li>
			<li><a href="./user?action=joinForm" class="btn_s">회원가입</a></li>
		</ul>
		<%
		}
		%>

	</div>
	<!-- //header -->
	
	
	
	
	
	
	
	<div id="header" class="clearfix">
		<h1>
			<a href="./main">MySite</a>
		</h1>
		<%
		//authUser =/ null = login있음
		if (authUser != null) {
		%>
		<ul>
			<li>${sessionScope.authUser.name} 님 안녕하세요^^</li>
			<li><a href="./user?action=logout" class="btn_s">로그아웃</a></li>
			<li><a href="./user?action=modifyForm" class="btn_s">회원정보수정</a></li>
		</ul>
		<%
		} else {
		%>
		<ul>
			<li><a href="./user?action=loginForm" class="btn_s">로그인</a></li>
			<li><a href="./user?action=joinForm" class="btn_s">회원가입</a></li>
		</ul>
		<%
		}
		%>

	</div>