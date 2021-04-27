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
    <title>自助目录</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
        div{
            line-height: 40px;
        }
        body{
            background-image: url("../../images/2.jpg");
            background-size:cover;
            background-attachment:fixed;
            background-color: transparent;
        }
    </style>
</head>
<body >
<div class="container">
    <br/>
    <div class="row">
        <div style="text-align:center">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">
                <h4 class="display-1">
                    书库书籍操作
                </h4>
            </a>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-md-12 column" style="text-align:center">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/reader">
                <h4 class="display-1">
                    查询借书消息
                </h4>
            </a>
        </div>
    </div>

</div>
</body>
</html>
