<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path=request.getContextPath();
    /*String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";*/
%>
<html>
<head>
    <title>首页</title>
    <link href="<%=path%>/css/static/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path%>/css/index/homepage.css" rel="stylesheet">
    <!-- js开始-->
    <script src="<%=path%>/js/static/jquery.min.js" type="text/javascript"></script>
    <script src="<%=path%>/js/static/bootstrap.min.js" type="text/javascript"></script>
    <script src="<%=path%>/js/static/vue.js" type="text/javascript"></script>

</head>
<body>

    <div class="container">
        <nav class="navbar navbar-default navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand">数据机房智能巡检系统</a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-left pull-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">管理员 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-header" >个人中心</li>
                                <li><a href="#">修改密码</a></li>
                                <li><a href="#">设置</a></li>
                                <li><a href="#">帮助</a></li>
                            </ul>
                        </li>
                    </ul>

                </div><!-- /.navbar-collapse -->
            </div>
        </nav>
        <div class="row" style="margin-top: 100px">
            <div class="col-md-3">
                <ul class="nav nav-pills nav-stacked" id="homepageNav">
                    <li role="presentation" v-for="item in items" @click="selectNav()" :class='isSelect === item.title ? "active homeNav" : "homeNav"'><a :href=item.url>{{item.title}}</a></li>
                </ul>
            </div>
            <div class="col-md-9 homeContent">
                <h2>Hello World!</h2>
            </div>
        </div>
    </div>
</body>
<script src="<%=path%>/js/index/homepage.js" type="text/javascript"></script>
</html>
