<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2019-06-26
  Time: 08:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>全息生命</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.4.1/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/index.css" />
</head>
<body>
<div class="container box" id="netlife">
    <!-- 图片 -->
    <div class="row">
        <div class="col-xs-12" style="padding: 0;">
            <img class="head-img" src="img/bg.png" alt="">
        </div>
    </div>
    <!-- 表单 -->
    <div class="row marginTop-xs">
        <div class="col-md-12 form-box">
            <form action="" class="form-horizontal form input-box">
                <div class="form-group has-success input-item">
                    <label class=" col-xs-4 col-md-4 control-label text-right" for="name">您的姓名:</label>
                    <div class="col-xs-8 col-md-8">
                        <input type="text" name="name" v-model="name" id="name" class="form-control" placeholder="请输入姓名" />
                    </div>
                </div>
                <div class="form-group has-success input-item">
                    <label class=" col-xs-4 col-md-4 control-label text-right" for="sex">您的性别:</label>
                    <div class="col-xs-8 col-md-8">
                        <label class="radio-inline">
                            <input type="radio" name="sex" id="man" value="man"> 男
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="sex" id="female" value="female"> 女
                        </label>
                    </div>
                </div>
                <div class="form-group has-success input-item">
                    <label class=" col-xs-4 col-md-4 control-label text-right" for="name">身份证号:</label>
                    <div class="col-xs-8 col-md-8">
                        <input type="number" name="idcard" v-model="idcard" id="idcard" class="form-control" placeholder="请输入身份证号" />
                    </div>
                </div>


            </form>
        </div>
    </div>
    <!-- 提交按钮 -->
    <button type="button" @click="sendId(idcard)" class="btn btn-danger btn-block marginTop-xs">马上测算</button>

    <!-- 内容块 -->
    <div class="row marginTop-sm">
        <div class="col-md-12 ">
            <div class="content-box">
                <div class="title text-center marginTop-sm">
                    <img class="title-img" src="img/title-left-bg.png">测测你的先天优势<img class="title-img" src="img/title-right-bg.png">
                </div>
                <div class="desc">
                    <p v-if="level1 == ''" class="text-info">输入信息即可揭开运势哟～～</p>
                    <p v-if="level1 != ''" v-text="level1" class="text-info"></p>
                </div>
            </div>
        </div>
    </div>
    <!-- 内容块 -->
    <div v-if="level1 != ''" class="row marginTop-sm">
        <div class="col-md-12 ">
            <div class="content-box">
                <div class="title text-center marginTop-sm">
                    <img class="title-img" src="img/title-left-bg.png">看看你的后天潜能<img class="title-img" src="img/title-right-bg.png">
                </div>
                <div class="desc">
                    <p v-if="level2 == ''" class="text-info">
                        <button type="button" @click="getLevel2('获取level2')" class="btn btn-success btn-block">继续查看</button>
                    </p>
                    <p v-if="level2 != ''" v-text="level2" class="text-info"> </p>
                </div>
            </div>


        </div>
    </div>
    <!-- 内容块 -->
    <div v-if="level1 != '' && level2 != ''" class="row marginTop-sm">
        <div class="col-md-12 ">
            <div class="content-box">
                <div class="title text-center marginTop-sm">
                    <img class="title-img" src="img/title-left-bg.png">当令<img class="title-img" src="img/title-right-bg.png">
                </div>
                <div class="desc">
                    <p v-if="level3 == ''" class="text-info">
                        <button type="button" @click="getLevel3" class="btn btn-success btn-block">继续查看</button>
                    </p>
                    <p v-if="level3 != ''" class="text-info" v-text="level3"></p>
                </div>
            </div>
        </div>
    </div>
    <!-- 内容块 -->
    <div v-if="level1 != '' && level2 != '' && level3 != ''" class="row marginTop-sm">
        <div class="col-md-12 ">
            <div class="content-box">
                <div class="title text-center marginTop-sm">
                    <img class="title-img" src="img/title-left-bg.png">更多<img class="title-img" src="img/title-right-bg.png">
                </div>
                <div class="desc">
                    <p v-if="level4 == ''" class="text-info">
                        <button type="button" class="btn btn-success btn-block">付费查看更多</button>
                    </p>
                    <p v-if="level4 != ''" class="text-info" v-text="level4"></p>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://cdn.bootcss.com/axios/0.19.0/axios.js"></script>
<script src="js/index.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
