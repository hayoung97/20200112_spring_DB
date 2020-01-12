<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="article_manager.ArticleDao" %>
<%@ page import="article_manager.Article" %>
<%

	// addForm.jsp 에서 넘긴 파라미터 데이터를 저장한다.
	String title = request.getParameter("title");
	String body = request.getParameter("body");
 	String nick = request.getParameter("nick");
	
 	// 새로운 게시물을 만들기 위해 Article 객체를 만든다.
	Article a = new Article();
	
 	// 위에서 파라미터로 받은 게시물 정보를 셋팅해준다.
	a.setTitle(title);
	a.setBody(body);
	a.setNick(nick);
	
	ArticleDao dao = new ArticleDao();
	dao.insertArticle(a); // 게시물 관리자의 게시물 추가 기능을 이용해 만든 게시물을 저장한다.
	
	
	 // 저장 후에는 list를 다시 뿌려줘야 하는데 이미 list.jsp에서 그 일을 하고 있으므로 여기서 새로 만들지 않고 list.jsp에게 나머지 리스팅 작업을 위임한다.
	 // 이를 위해선 요청 정보와 응답 정보가 사라져선 안되므로 기존의 정보를 모두 전달한다.(forward 메서드로 요청, 응답 객체를 전달하고 있다.)
	RequestDispatcher dispatcher = request.getRequestDispatcher("list.jsp");
	dispatcher.forward(request, response);
	


%>
