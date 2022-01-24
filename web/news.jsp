<%@ page import="db.DBManager" %>
<%@ page import="model.News" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 24.01.2022
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<News> allNews = DBManager.getAllNews();
    for(News news : allNews) {
        out.println("<h2>" + news.getTitle() + "</h2>");
    }
%>
</body>
</html>
