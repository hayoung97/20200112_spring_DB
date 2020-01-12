<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="article_manager.ArticleDao" %>
<%@ page import="article_manager.Article" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	ArticleDao dao = new ArticleDao();
	List<Article> articles = dao.getAllArticle();
%>

<h2>게시판</h2>
<hr>
<table border="1">  
    <tr>
    	<td>
            번호
        </td>
        <td>
            제목
        </td>
        <td>
            작성자
        </td>
        <td>
            작성일
        </td>
    </tr>
    <% for(int i = 0; i < articles.size(); i++) { %>
     <tr>
     	 <td><%= articles.get(i).getId() %></td>
         <td><a href="detail.jsp?id=<%= articles.get(i).getId() %>"><%= articles.get(i).getTitle() %></a></td>
         <td><%= articles.get(i).getNick() %></td>
         <td><%= articles.get(i).getRegDate() %></td>
    </tr>
    <%}%>
</table>
<a href="addForm.jsp">게시물 등록</a>
<a href="init.jsp">초기화 하기</a>

</body>
</html>
