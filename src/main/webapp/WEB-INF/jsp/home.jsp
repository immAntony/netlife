<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2019-07-05
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>输入身份证</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.4.1/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/home.css" />
</head>
<body>

<div class="container" id="home">
    <div class="row">
        <div class="col-xs-12">
            <!-- 图片块 -->
            <div class="head-img">
                <img src="img/bagua.jpg" width="300px" height="300px" alt="">
            </div>
            <!-- 表单块 -->
            <form action="getBasic" class="form-box" method="get">
                <div class="form-group has-success ">
                    <input type="number" name="idCard" v-model="idCard" id="idCard" class="form-control" placeholder="请输入身份证号" />
                </div>
                <!-- 提交按钮 -->
                <button type="submit" class="btn btn-success btn-block marginTop-xs">马上测算</button>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.js"></script>
<script src="https://cdn.bootcss.com/twitter-bootstrap/3.3.1/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://cdn.bootcss.com/axios/0.19.0/axios.js"></script>
<script src="js/home.js" type="text/javascript" charset="utf-8"></script>

</body>
</html>
