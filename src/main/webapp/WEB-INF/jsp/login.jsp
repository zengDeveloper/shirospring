<%--
  Created by IntelliJ IDEA.
  User: xiang zeng
  Date: 2017/10/25
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理界面</title><meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/matrix-login.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/font-awesome/css/font-awesome.min.css"  />
</head>
<body onkeydown="keydown()">
<!-- particles.js container -->
<div id="particles-js"></div>
<div id="loginbox">
    <div class="normal_text">
        <h2>登录界面</h2>
        <span>登录</span>
    </div>

    <form id="loginform" class="form-vertical" action="/shirospring/login" method="post">
        <div class="control-group">
            <label class="control-label">输入账号</label>
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_lg"><i class="fa fa-user"></i></span><input type="text" name="username"/>
                </div>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">登陆密码</label>
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_ly"><i class="fa fa-key"></i></span><input type="password" name="password"/>
                </div>
            </div>
        </div>
        <div class="form-actions">
                <span class="pull-left">
                    <a id="to-recover" href="#"/>忘记密码？</a>
                </span>
            <span class="pull-right">
                    <input type="button" id="checkBtn" onclick="checkLogin()" class="btn btn-primary" value="登&nbsp;&nbsp;录"/>
                </span>
        </div>
        <div class="normal_text">
            推荐使用支持HTML5的浏览器，如chrome、IE9+等
        </div>
    </form>


    <form id="recoverform" action="#" class="form-vertical">
        <div class="controls-group">
            <label class="control-label">登陆账号</label>
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_lg"><i class="fa fa-user"></i></span><input type="text" name="fg_account" />
                </div>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">180字留言（电话、姓名、问题等）</label>
            <div class="controls">
                <div class="main_input_box">
                    <textarea name='fg_message' id="fg_message" placeholder="说点啥吧 ..."></textarea>
                </div>
            </div>
        </div>
        <div class="form-actions">
                <span class="pull-left">
                    <a id="to-login" href="#">&laquo; 返回登录</a>
                </span>
            <span class="pull-right">
                    <input type="button" id="leaveMsg" class="btn btn-info" value="给管理员留言"/>
                </span>
        </div>
        <div class="control-group normal_text">
            推荐使用支持HTML5的浏览器，如chrome、IE9+等
        </div>
    </form>
</div>

<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/matrix.login.js"></script>

<!-- scripts -->
<script src="${pageContext.request.contextPath}/static/js/particles.js"></script>
<script src="${pageContext.request.contextPath}/static/js/particlesapp.js"></script>

</body>
</html>