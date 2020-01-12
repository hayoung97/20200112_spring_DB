<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="article_manager.ArticleDao" %>
<%@ page import="article_manager.Article" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// ArticleDao를 이용해 detail을 완성시켜주세요.
%>
	<form action="doUpdate.jsp">
	<table border="1">
		<tr>
			<td>
				게시물 번호
			</td>
			<td>
				1
			</td>
			<input type="hidden" name="id" value="<%= a.getId() %>">
		</tr>
		<tr>
			<td>
				제목
			</td>
			<td>
				<input type="text" name="title" value="<%=a.getTitle() %>" />
			</td>
		</tr>
		<tr>
			<td>
				내용
			</td>
			<td>
				<textarea name="body" rows="20" cols="21">
					<%= a.getBody() %>
				</textarea>
			</td>
		</tr>
		<tr>
			<td>
				작성자
			</td>
			<td>
				<input type="text" name="title" value="<%=a.getNick() %>" />
			</td>
		</tr>	
	</table>
	<input type="submit" value="수정" />
	</form>
	<a href="doDelete.jsp?id=<%= a.getId()%>">삭제</a>
</body>
</html>