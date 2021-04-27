<%--
  Created by IntelliJ IDEA.
  User: 陆镇涛
  Date: 2020/9/5
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍添加</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>
    </div>


    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <input type="hidden" name="bookID" value="${QBooks.bookID}">
        <div class="form-group">
            <lable >书籍名称</lable>
            <input type="text" name="bookName" class="form-control" value="${QBooks.bookName}" required>
        </div>
        <div class="form-group">
            <lable >书籍数量</lable>
            <input type="text" name="bookCounts" class="form-control" value="${QBooks.bookCounts}" required>
        </div>
        <div class="form-group">
            <lable >书籍描述</lable>
            <input type="text" name="detail" class="form-control" value="${QBooks.detail}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="修改">
        </div>


    </form>
</div>
</body>
</html>
