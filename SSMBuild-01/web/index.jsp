<%--
  Created by IntelliJ IDEA.
  User: 陆镇涛
  Date: 2020/8/27
  Time: 18:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
     <style>
         body{
             background-image: url("images/1.jpg");
             background-size:cover;
             background-attachment:fixed;
             background-color: transparent;
         }
     </style>

  </head>
  <body >
  <div class="container">

    <div class="row">
      <div style="text-align:center">
        <a class="btn" href="${pageContext.request.contextPath}/book/directory">
          <h1 class="display-1">
          图书馆管理系统
          </h1>
        </a>
      </div>
    </div>

      <nav class="navbar navbar-default navbar-fixed-bottom">
       <div class="row">
          <div style="text-align: center">
              作者：陆镇涛、谢威、曹鹏霄、王云浩
          </div>
       </div>
      </nav>

  </div>
  </body>
</html>
