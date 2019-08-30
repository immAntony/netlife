<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2019-07-05
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>详情</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.4.1/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/descr.css" />
</head>
<body>
<div id="login" class="container">
    <!-- head -->
    <div class="row">
        <div class="col-xs-12">
            <div class="head-box">
                <p>${nowDate}</p>
                <p>弱土年已亥猪年六月初二</p>
                <div class="info">
                    <div class="info-left">
                        <p>今日当令</p>
                        <p><img width="36px" src="img/icon/${res}.png" alt=""> ${res}</p>
                    </div>
                    <div class="info-right">
                        <p>今日值班</p>
                        <p>风</p>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- content -->
    <div class="row">
        <div class="col-xs-12">
            <div class="body-box">
                <div class="tabbable" style="width: 100%;" id="tabs-686453">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a data-toggle="tab" href="#colse">衣</a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#food">食</a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#home">住</a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#run">行</a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#sleep">养</a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#luck">运</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="colse">
                            ${life.close}
<%--                            <h5>今日首选服饰颜色:增加个人魅力值</h5>--%>
<%--                            <p>--%>

<%--                            </p>--%>
<%--                            <h5>今日优选服饰颜色:</h5>--%>
<%--                            <p>--%>
<%--                            </p>--%>
<%--                            <h5>今日忌选服饰颜色:</h5>--%>
<%--                            <p>--%>
<%--                            </p>--%>
                        </div>
                        <div class="tab-pane" id="food">
                            ${life.food}
<%--                            <h5>今日建议喝水量：<span>xx升</span></h5>--%>
<%--                            <h5>今日首选：<span>入<span>*</span>经的食物。</span> </h5>--%>
<%--                            <h5>入<span>*</span>经的果蔬：</h5>--%>
<%--                            <p></p>--%>
<%--                            <h5>入<span>*</span>经的茶饮：</h5>--%>
<%--                            <p></p>--%>
<%--                            <h5>入<span>*</span>经的食材：</h5>--%>
<%--                            <p></p>--%>
<%--                            <h5>今日优选：</h5>--%>
<%--                            <p></p>--%>
                        </div>
                        <div class="tab-pane" id="home">
<%--                            <h5>今日首选：<span>东南位。</span></h5>--%>
<%--                            <h5>今日优选：<span>正中位；</span></h5>--%>
<%--                            <h5>今日忌选：<span>正西位。</span></h5>--%>
<%--                            大至开会、谈判小至棋牌，都适用--%>
    ${life.home}
                        </div>
                        <div class="tab-pane" id="run">
<%--                            <h5>出行：<span>今天宜去绿地、农田、看看根雕等。</span></h5>--%>
<%--                            <h5>言行：<span>变通灵活</span></h5>--%>
    ${life.walk}
                        </div>
                        <div class="tab-pane" id="sleep">
<%--                            <h5>今日建议步行量: 9000步<h5>--%>
    ${life.rest}

                        </div>
                        <div class="tab-pane" id="luck">
                            <p>
                                第六部分内容.
                            </p>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>
</div>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.js"></script>
<script src="https://cdn.bootcss.com/twitter-bootstrap/3.3.1/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://cdn.bootcss.com/axios/0.19.0/axios.js"></script>
<script src="js/descr.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
