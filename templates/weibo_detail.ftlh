<!doctype html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en-US"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en-US"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9" lang="en-US"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en-US"> <!--<![endif]-->
<head>
    <!-- META TAGS -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>话题</title>

    <link rel="shortcut icon" href="images/favicon.png" />

    <link rel="shortcut icon" href="images/favicon.png" />
    <style type="text/css">
        /**
 * Oscuro: #283035
 * Azul: #03658c
 * Detalle: #c7cacb
 * Fondo: #dee1e3
 ----------------------------------*/
        * {
            margin: 0;
            padding: 0;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        a {
            color: #03658c;
            text-decoration: none;
        }

        ul {
            list-style-type: none;
        }

        body {
            font-family: 'Roboto', Arial, Helvetica, Sans-serif, Verdana;
            background: #dee1e3;
        }

        /** ====================
         * Lista de Comentarios
         =======================*/
        .comments-container {
            margin: 60px auto 15px;
            width: 768px;
        }

        .comments-container h1 {
            font-size: 36px;
            color: #283035;
            font-weight: 400;
        }

        .comments-container h1 a {
            font-size: 18px;
            font-weight: 700;
        }

        .comments-list {
            margin-top: 30px;
            position: relative;
        }

        /**
         * Lineas / Detalles
         -----------------------*/
        /* .comments-list:before {
            content: '';
            width: 2px;
            height: 100%;
            background: #c7cacb;
            position: absolute;
            left: 32px;
            top: 0;
        }

        .comments-list:after {
            content: '';
            position: absolute;
            background: #c7cacb;
            bottom: 0;
            left: 27px;
            width: 7px;
            height: 7px;
            border: 3px solid #dee1e3;
            -webkit-border-radius: 50%;
            -moz-border-radius: 50%;
            border-radius: 50%;
        }

        .reply-list:before, .reply-list:after {display: none;}
        .reply-list li:before {
            content: '';
            width: 60px;
            height: 2px;
            background: #c7cacb;
            position: absolute;
            top: 25px;
            left: -55px;
        }
         */

        .comments-list li {
            margin-bottom: 15px;
            display: block;
            position: relative;
        }

        .comments-list li:after {
            content: '';
            display: block;
            clear: both;
            height: 0;
            width: 0;
        }

        .reply-list {
            padding-left: 88px;
            clear: both;
            margin-top: 15px;
        }
        /**
         * Avatar
         ---------------------------*/
        .comments-list .comment-avatar {
            width: 65px;
            height: 65px;
            position: relative;
            z-index: 99;
            float: left;
            border: 3px solid #FFF;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
            -webkit-box-shadow: 0 1px 2px rgba(0,0,0,0.2);
            -moz-box-shadow: 0 1px 2px rgba(0,0,0,0.2);
            box-shadow: 0 1px 2px rgba(0,0,0,0.2);
            overflow: hidden;
        }

        .comments-list .comment-avatar img {
            width: 100%;
            height: 100%;
        }

        .reply-list .comment-avatar {
            width: 50px;
            height: 50px;
        }

        .comment-main-level:after {
            content: '';
            width: 0;
            height: 0;
            display: block;
            clear: both;
        }
        /**
         * Caja del Comentario
         ---------------------------*/
        .comments-list .comment-box {
            width: 680px;
            float: right;
            position: relative;
            -webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.15);
            -moz-box-shadow: 0 1px 1px rgba(0,0,0,0.15);
            box-shadow: 0 1px 1px rgba(0,0,0,0.15);
        }

        .comments-list .comment-box:before, .comments-list .comment-box:after {
            content: '';
            height: 0;
            width: 0;
            position: absolute;
            display: block;
            border-width: 10px 12px 10px 0;
            border-style: solid;
            border-color: transparent #FCFCFC;
            top: 8px;
            left: -11px;
        }

        .comments-list .comment-box:before {
            border-width: 11px 13px 11px 0;
            border-color: transparent rgba(0,0,0,0.05);
            left: -12px;
        }

        .reply-list .comment-box {
            width: 610px;
        }
        .comment-box .comment-head {
            background: #FCFCFC;
            padding: 10px 12px;
            border-bottom: 1px solid #E5E5E5;
            overflow: hidden;
            -webkit-border-radius: 4px 4px 0 0;
            -moz-border-radius: 4px 4px 0 0;
            border-radius: 4px 4px 0 0;
        }

        .comment-box .comment-head i {
            float: right;
            margin-left: 14px;
            position: relative;
            top: 2px;
            color: #A6A6A6;
            cursor: pointer;
            -webkit-transition: color 0.3s ease;
            -o-transition: color 0.3s ease;
            transition: color 0.3s ease;
        }

        .comment-box .comment-head i:hover {
            color: #03658c;
        }

        .comment-box .comment-name {
            color: #283035;
            font-size: 14px;
            font-weight: 700;
            float: left;
            margin-right: 10px;
        }

        .comment-box .comment-name a {
            color: #283035;
        }

        .comment-box .comment-head span {
            float: left;
            color: #999;
            font-size: 13px;
            position: relative;
            top: 1px;
        }

        .comment-box .comment-content {
            background: #FFF;
            padding: 12px;
            font-size: 15px;
            color: #595959;
            -webkit-border-radius: 0 0 4px 4px;
            -moz-border-radius: 0 0 4px 4px;
            border-radius: 0 0 4px 4px;
        }

        .comment-box .comment-name.by-author, .comment-box .comment-name.by-author a {color: #03658c;}
        .comment-box .comment-name.by-author:after {
            content: 'autor';
            background: #03658c;
            color: #FFF;
            font-size: 12px;
            padding: 3px 5px;
            font-weight: 700;
            margin-left: 10px;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            border-radius: 3px;
        }

        /** =====================
         * Responsive
         ========================*/
        @media only screen and (max-width: 766px) {
            .comments-container {
                width: 480px;
            }

            .comments-list .comment-box {
                width: 390px;
            }

            .reply-list .comment-box {
                width: 320px;
            }
        }

        /**
        评论的css
         */
        .comments-app{
            margin: 50px auto;
            max-width: 680px;
            padding: 0 50px;
            width: 100%;
        }

        .comments-app h1{
            color: #191919;
            margin-bottom: 1.5em;
            text-align: center;
            text-shadow: 0 0 2px rgba(152, 152, 152, 1);
        }

        .comment-form{  }
        .comment-form .comment-avatar{  }

        .comment-form .form{ margin-left: 100px; }

        .comment-form .form .form-row{ margin-bottom: 10px; }
        .comment-form .form .form-row:last-child{ margin-bottom: 0; }

        .comment-form .form .input{
            background-color: #fcfcfc;
            border: none;
            border-radius: 4px;
            box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
            color: #555f77;
            font-family: inherit;
            font-size: 14px;
            padding: 5px 10px;
            outline: none;
            width: 100%;

            -webkit-transition: 350ms box-shadow;
            -moz-transition: 350ms box-shadow;
            -ms-transition: 350ms box-shadow;
            -o-transition: 350ms box-shadow;
            transition: 350ms box-shadow;
        }

        .comment-form .form textarea.input{
            height: 100px;
            padding: 15px;
        }

        .comment-form .form label{
            color: #555f77;
            font-family: inherit;
            font-size: 14px;
        }

        .comment-form .form input[type=submit]{
            background-color: #555f77;
            border: none;
            border-radius: 4px;
            box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
            color: #fff;
            cursor: pointer;
            display: block;
            margin-left: auto;
            outline: none;
            padding: 6px 15px;

            -webkit-transition: 350ms box-shadow;
            -moz-transition: 350ms box-shadow;
            -ms-transition: 350ms box-shadow;
            -o-transition: 350ms box-shadow;
            transition: 350ms box-shadow;
        }

        .comment-form .form .input:focus,
        .comment-form .form input[type=submit]:focus,
        .comment-form .form input[type=submit]:hover{
            box-shadow: 0 2px 6px rgba(121, 137, 148, .55);
        }

        .comment-form .form.ng-submitted .input.ng-invalid,
        .comment-form .form .input.ng-dirty.ng-invalid{
            box-shadow: 0 2px 6px rgba(212, 47, 47, .55) !important;
        }

        .comment-form .form .input.disabled {
            background-color: #E8E8E8;
        }


        .comments{  }

        .comment-form,
        .comment{
            margin-bottom: 20px;
            position: relative;
            z-index: 0;
        }

        .comment-form .comment-avatar,
        .comment .comment-avatar{
            border: 2px solid #fff;
            border-radius: 50%;
            box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
            height: 80px;
            left: 0;
            overflow: hidden;
            position: absolute;
            top: 0;
            width: 80px;
        }

        .comment-form .comment-avatar img,
        .comment .comment-avatar img{
            display: block;
            height: auto;
            width: 100%;
        }

        .comment .comment-box{
            background-color: #fcfcfc;
            border-radius: 4px;
            box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
            margin-left: 100px;
            min-height: 60px;
            position: relative;
            padding: 15px;
        }

        .comment .comment-box:before,
        .comment .comment-box:after{
            border-width: 10px 10px 10px 0;
            border-style: solid;
            border-color: transparent #FCFCFC;
            content: "";
            left: -10px;
            position: absolute;
            top: 20px;
        }

        .comment .comment-box:before{
            border-color: transparent rgba(0, 0, 0, .05);
            top: 22px;
        }

        .comment .comment-text{
            color: #555f77;
            font-size: 15px;
            margin-bottom: 25px;
        }

        .comment .comment-footer{
            color: #acb4c2;
            font-size: 13px;
        }

        .comment .comment-footer:after{
            content: "";
            display: table;
            clear: both;
        }

        .comment .comment-footer a{
            color: #acb4c2;
            text-decoration: none;

            -webkit-transition: 350ms color;
            -moz-transition: 350ms color;
            -ms-transition: 350ms color;
            -o-transition: 350ms color;
            transition: 350ms color;
        }

        .comment .comment-footer a:hover{
            color: #555f77;
            text-decoration: underline;
        }

        .comment .comment-info{
            float: left;
            width: 85%;
        }

        .comment .comment-author{ }
        .comment .comment-date{ }

        .comment .comment-date:before{
            content: "|";
            margin: 0 10px;
        }

        .comment-actions{
            float: left;
            text-align: right;
            width: 15%;
        }
        .comments-app{
            margin: 50px auto;
            max-width: 680px;
            padding: 0 50px;
            width: 100%;
        }

        .comments-app h1{
            color: #191919;
            margin-bottom: 1.5em;
            text-align: center;
            text-shadow: 0 0 2px rgba(152, 152, 152, 1);
        }

        .comment-form{  }
        .comment-form .comment-avatar{  }

        .comment-form .form{ margin-left: 100px; }

        .comment-form .form .form-row{ margin-bottom: 10px; }
        .comment-form .form .form-row:last-child{ margin-bottom: 0; }

        .comment-form .form .input{
            background-color: #fcfcfc;
            border: none;
            border-radius: 4px;
            box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
            color: #555f77;
            font-family: inherit;
            font-size: 14px;
            padding: 5px 10px;
            outline: none;
            width: 100%;

            -webkit-transition: 350ms box-shadow;
            -moz-transition: 350ms box-shadow;
            -ms-transition: 350ms box-shadow;
            -o-transition: 350ms box-shadow;
            transition: 350ms box-shadow;
        }

        .comment-form .form textarea.input{
            height: 100px;
            padding: 15px;
        }

        .comment-form .form label{
            color: #555f77;
            font-family: inherit;
            font-size: 14px;
        }

        .comment-form .form input[type=submit]{
            background-color: #555f77;
            border: none;
            border-radius: 4px;
            box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
            color: #fff;
            cursor: pointer;
            display: block;
            margin-left: auto;
            outline: none;
            padding: 6px 15px;

            -webkit-transition: 350ms box-shadow;
            -moz-transition: 350ms box-shadow;
            -ms-transition: 350ms box-shadow;
            -o-transition: 350ms box-shadow;
            transition: 350ms box-shadow;
        }

        .comment-form .form .input:focus,
        .comment-form .form input[type=submit]:focus,
        .comment-form .form input[type=submit]:hover{
            box-shadow: 0 2px 6px rgba(121, 137, 148, .55);
        }

        .comment-form .form.ng-submitted .input.ng-invalid,
        .comment-form .form .input.ng-dirty.ng-invalid{
            box-shadow: 0 2px 6px rgba(212, 47, 47, .55) !important;
        }

        .comment-form .form .input.disabled {
            background-color: #E8E8E8;
        }


        .comments{  }

        .comment-form,
        .comment{
            margin-bottom: 20px;
            position: relative;
            z-index: 0;
        }

        .comment-form .comment-avatar,
        .comment .comment-avatar{
            border: 2px solid #fff;
            border-radius: 50%;
            box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
            height: 80px;
            left: 0;
            overflow: hidden;
            position: absolute;
            top: 0;
            width: 80px;
        }

        .comment-form .comment-avatar img,
        .comment .comment-avatar img{
            display: block;
            height: auto;
            width: 100%;
        }

        .comment .comment-box{
            background-color: #fcfcfc;
            border-radius: 4px;
            box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
            margin-left: 100px;
            min-height: 60px;
            position: relative;
            padding: 15px;
        }

        .comment .comment-box:before,
        .comment .comment-box:after{
            border-width: 10px 10px 10px 0;
            border-style: solid;
            border-color: transparent #FCFCFC;
            content: "";
            left: -10px;
            position: absolute;
            top: 20px;
        }

        .comment .comment-box:before{
            border-color: transparent rgba(0, 0, 0, .05);
            top: 22px;
        }

        .comment .comment-text{
            color: #555f77;
            font-size: 15px;
            margin-bottom: 25px;
        }

        .comment .comment-footer{
            color: #acb4c2;
            font-size: 13px;
        }

        .comment .comment-footer:after{
            content: "";
            display: table;
            clear: both;
        }

        .comment .comment-footer a{
            color: #acb4c2;
            text-decoration: none;

            -webkit-transition: 350ms color;
            -moz-transition: 350ms color;
            -ms-transition: 350ms color;
            -o-transition: 350ms color;
            transition: 350ms color;
        }

        .comment .comment-footer a:hover{
            color: #555f77;
            text-decoration: underline;
        }

        .comment .comment-info{
            float: left;
            width: 85%;
        }

        .comment .comment-author{ }
        .comment .comment-date{ }

        .comment .comment-date:before{
            content: "|";
            margin: 0 10px;
        }

        .comment-actions{
            float: left;
            text-align: right;
            width: 15%;
        }

    </style>

    <!-- Style Sheet-->
    <link rel="stylesheet" href="style.css"/>
    <link rel='stylesheet' id='bootstrap-css-css'  href='css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />
    <link rel='stylesheet' id='responsive-css-css'  href='css/responsive5152.css?ver=1.0' type='text/css' media='all' />
    <link rel='stylesheet' id='pretty-photo-css-css'  href='js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css' media='all' />
    <link rel='stylesheet' id='main-css-css'  href='css/main5152.css?ver=1.0' type='text/css' media='all' />
    <link rel='stylesheet' id='custom-css-css'  href='css/custom5152.html?ver=1.0' type='text/css' media='all' />

</head>
<!-- Start of Header -->
<body>
<div class="header-wrapper">
    <header>
        <div class="container">


            <div class="logo-container">
                <!-- Website Logo -->
                <a   title="Knowledge Base Theme">
                    <img src="/images/logo.png" alt="Knowledge Base Theme">
                </a>
                <span class="tag-line">畅所欲言</span>
            </div>


            <!--标题上的各种目录：登录、注册、论坛、按钮
-->
            <nav class="main-nav">
                <div class="menu-top-menu-container">
                    <ul id="menu-top-menu" class="clearfix">
                        <li class="current-menu-item"><a href="/">论坛</a></li>
                        <li><a href="/functions">论坛功能</a></li>
                        <li><a href="/login">登录</a></li>
                        <li><a href="/register">注册</a></li>

                    </ul>
                </div>
            </nav>
            <!-- 标题目录结束 -->

        </div>
    </header>
</div>
<div class="comments-container">


    <ul id="comments-list" class="comments-list">
        <li>
            <div class="comment-main-level">

                <div class="comment-avatar"><img src="images/2.jpg" alt=""></div>

                <div class="comment-box">
                    <div class="comment-head">
                        <h6 class="comment-name by-author"><a >用户${weibo.userId}</a></h6>
                        <span>${weibo.createTime}</span>
                        <i class="fa fa-reply"></i>
                        <i class="fa fa-heart"></i>
                    </div>
                    <div class="comment-content">
                        ${weibo.content}
                    </div>
                </div>
            </div>

        <li>
            <#list comments as comment>
                <div class="comment-main-level">

                    <div class="comment-avatar"><img src="images/3..jpg" alt=""></div>
                    <!-- Contenedor del Comentario -->
                    <div class="comment-box">
                        <div class="comment-head">
                            <h6 class="comment-name"><a >用户${comment.userId}</a></h6>

                            <i class="fa fa-reply"></i>
                            <i class="fa fa-heart"></i>
                        </div>
                        <div class="comment-content">
                            ${comment.content}
                        </div>
                    </div>
                </div>
            </#list>
        </li>
    </ul>

<!--添加评论-->
    <div class="comments-app" ng-app="commentsApp" ng-controller="CommentsController as cmntCtrl">


        <!-- From -->
        <div class="comment-form">
            <!-- Comment 头像-->
            <div class="comment-avatar">
                <img src="images/1.jpg">
            </div>

            <form class="form" name="form" method="post" action="/weibo1/commentAdd" ng-submit="form.$valid && cmntCtrl.addComment()" novalidate>
                <div class="form-row">
        <textarea
                class="input" name="comment"
                ng-model="cmntCtrl.comment.text"
                placeholder="Add comment..."
                required></textarea>
                </div>
                <input type="hidden" name="weiboId" value="${weibo.id}">


                <!--是否匿名--->
                <div class="form-row text-right">
                    <input name="isAnonymous"
                           id="comment-anonymous"
                           ng-change="cmntCtrl.anonymousChanged()"
                           ng-model="cmntCtrl.comment.anonymous"
                           type="checkbox">
                    <label for="comment-anonymous">Anonymous</label>
                </div>

                <div class="form-row">
                    <input type="submit" value="Add Comment">
                </div>
            </form>
        </div>

    </div>
</div>
</body>