<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册</title>
</head>
<body>



<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en-US"> <![endif]-->
    <!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en-US"> <![endif]-->
    <!--[if IE 8]>    <html class="lt-ie9" lang="en-US"> <![endif]-->
    <!--[if gt IE 8]><!--> <html lang="en-US"> <!--<![endif]-->
    <head>
        <!-- META TAGS -->
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>注册</title>

        <link rel="shortcut icon" href="images/favicon.png" />

        <!-- Style Sheet-->
        <link rel="stylesheet" href="css/style.css"/>
        <link rel='stylesheet' id='bootstrap-css-css'  href='css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />
        <link rel='stylesheet' id='responsive-css-css'  href='css/responsive5152.css?ver=1.0' type='text/css' media='all' />
        <link rel='stylesheet' id='pretty-photo-css-css'  href='js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css' media='all' />
        <link rel='stylesheet' id='main-css-css'  href='css/main5152.css?ver=1.0' type='text/css' media='all' />
        <link rel='stylesheet' id='custom-css-css'  href='css/custom5152.html?ver=1.0' type='text/css' media='all' />
        <link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
        <!--//Style-CSS -->

        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" media="all">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
        <script src="js/html5.js"></script>
        <![endif]-->

    </head>

    <body>

    <!-- Start of Header -->
    <div class="header-wrapper">
        <header>
            <div class="container">


                <div class="logo-container">
                    <!-- Website Logo -->
                    <a   title="Knowledge Base Theme">
                        <img src="images/logo.png" alt="Knowledge Base Theme">
                    </a>
                    <span class="tag-line">畅所欲言</span>
                </div>


                <!-- Start of Main Navigation -->
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
                <!-- End of Main Navigation -->

            </div>
        </header>
    </div>

    <!-- form section start -->
    <section class="w3l-hotair-form">
        <h1>Welcome</h1>
        <div class="container">
            <!-- /form -->
            <div class="workinghny-form-grid">
                <div class="main-hotair">
                    <div class="alert-close">
                        <span class="fa fa-close"></span>
                    </div>

                    <div class="content-wthree">
                        <h2>注册</h2>
                        <p>New Come</p>
                        <form action="/register/process" method="post">
                            <input type="text" class="text" name="username" placeholder="User Name" required="">
                            <input type="password" class="password" name="password" placeholder="User Password" required="">
                            <button class="btn" type="submit">提交</button>
                        </form>
                        <p>Or Connect With Social Media</p>
                        <div class="social-icons w3layouts">
                            <ul>
                                <li>
                                    <a  class="facebook"><span class="fa fa-facebook"></span> </a>
                                </li>
                                <li>
                                    <a  class="twitter"><span class="fa fa-twitter"></span> </a>
                                </li>
                                <li>
                                    <a class="pinterest"><span class="fa fa-pinterest"></span> </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="w3l_form align-self">
                        <div class="left_grid_info">

                        </div>
                    </div>
                </div>
            </div>
            <!-- //form -->
        </div>
        <!-- copyright-->
        <div class="copyright text-center">
            <!--            <p class="copy-footer-29">Copyright &copy; 2021.Company dream <a target="_blank" >&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>-->
        </div>
        <!-- //copyright-->
    </section>
    <!-- //form section start -->

    <script src="js/jquery.min.js"></script>
    <script>
        $(document).ready(function (c) {
            $('.alert-close').on('click', function (c) {
                $('.main-hotair').fadeOut('slow', function (c) {
                    $('.main-hotair').remove();
                });
            });
        });
    </script>
    </body>

</html>
