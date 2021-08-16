<!doctype html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en-US"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en-US"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9" lang="en-US"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en-US"> <!--<![endif]-->

<head>
    <!-- META TAGS -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>论坛功能</title>

    <link rel="shortcut icon" href="images/favicon.png" />

    <!-- Style Sheet-->
<#--    <link rel="stylesheet" href="style.css"/>-->
    <link rel='stylesheet' id='bootstrap-css-css'  href='css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />
<#--    <link rel='stylesheet' id='responsive-css-css'  href='css/responsive5152.css?ver=1.0' type='text/css' media='all' />-->
<#--    <link rel='stylesheet' id='pretty-photo-css-css'  href='js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css' media='all' />-->
    <link rel='stylesheet' id='main-css-css'  href='css/main5152.css?ver=1.0' type='text/css' media='all' />
<#--    <link rel='stylesheet' id='custom-css-css'  href='css/custom5152.html?ver=1.0' type='text/css' media='all' />-->
    <link href="bootstrap.min.css" rel="stylesheet">
    <link href="clean-blog.min.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
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
<!-- 上面那层黑色标题栏结束 -->

<!-- 彩色框，hello那部分 -->

<!-- 彩色框，hello那部分结束 -->


<!-- Start of Page Container -->
<div class="container">

    <article>
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 blogbody">
                <div class="md-content bigsize"><h1>论坛功能</h1>
                    <p></p>
                    <h2>主要功能</h2>
                    <p></p>
                    <ul>
                        <li>提供了一个可以交流讨论的论坛。</li>
                        <li>用户可以在这里发表一个话题，其他人可以浏览这些话题，并且在话题上可以评论。</li>
                        <li>给用户一个可以自由聊天、交友的空间。</li>
                    </ul>
                    <h2>User</h2>
                    <p>已实现：</p>
                    <ul>
                        <li>数据用Mysql储存。</li>
                        <li>注册和登陆基本
                            <ul>
                                <li>注册和登陆页面。</li>
                                <li>字数等基础限制。</li>
                                <li>密码加密存储。</li>
                            </ul>
                        </li>
                        <li>session 保存登陆状态。</li>
                        <li>任意页面点击登陆/注册，登陆/注册后跳转回之前页面。
                            <ul>
                                <li>从登陆页面进入注册页面，也会跳转到登陆之前页面。</li>
                            </ul>
                        </li>
                        <li>导航栏根据是否登陆动态调整。</li>
                    </ul>
                    <h2>其他概述</h2>
                    <p>已实现：</p>
                    <ul>
                        <li>话题和评论保存到数据库中。</li>
                        <li>在主页可显示话题，并且显示话题的内容和评论数。</li>
                            <ul>
                                <li>可通过主页的话题，通过点击直接跳转到对应的话题。</li>
                            </ul>
                        <li>在话题页面，显示了这个话题的所有评论，并且可以评论。</li>
                            <ul>
                                <li>所有的页面由html、Javascript、css写成。</li>
                                <li>使用freemaker作为模板。
                                <li>对应的静态资源存储在服务器上。</li>
                            </ul>
                        <li>项目部署到腾讯云服务器中，使用了Tomcat作为服务器。</li>
                    </ul>
                    <p>
                    <p>

                </div>
            </div>
        </div>
    </article>

</div>
<!-- End of Page Container -->

<!-- Start of Footer -->
<footer id="footer-wrapper">
    <div id="footer" class="container">
        <div class="row">

            <div class="span3">
                <section class="widget">
                    <h3 class="title">How it works</h3>
                    <div class="textwidget">
                        <p>This website uses spring + mybatis as the framework and MySQL as the database. It communicates through network protocol, parses users' requests</p>
                        <p>then processes and responds. And save the user's operation and information to the database </p>

                    </div>
                </section>
            </div>

            <div class="span3">
                <section class="widget"><h3 class="title">Categories</h3>
                    <ul>
                        <li><a href="#" title="Lorem ipsum dolor sit amet,">Advanced Techniques</a> </li>
                        <li><a href="#" title="Lorem ipsum dolor sit amet,">Server &amp; Database</a></li>
                        <li><a href="#" title="Lorem ipsum dolor sit amet, ">Theme Development</a></li>
                        <li><a href="#" title="Lorem ipsum dolor sit amet,">Website Dev</a></li>
                    </ul>
                </section>
            </div>

            <div class="span3">
                <section class="widget">
                    <h3 class="title">Latest Tweets</h3>
                    <div id="twitter_update_list">
                        <ul>
                            <li>No Tweets loaded !</li>
                        </ul>
                    </div>

                </section>
            </div>

            <div class="span3">
                <section class="widget">
                    <h3 class="title">Flickr Photos</h3>
                    <div class="flickr-photos" id="basicuse">
                    </div>
                </section>
            </div>

        </div>
    </div>
    <!-- end of #footer -->

    <!-- Footer Bottom -->
    <div id="footer-bottom-wrapper">
        <div id="footer-bottom" class="container">
            <div class="row">
                <div class="span6">
                    <p class="copyright">

                    </p>
                </div>
                <div class="span6">
                    <!-- Social Navigation -->
                    <ul class="social-nav clearfix">
                        <li class="linkedin"><a target="_blank"></a></li>
                        <li class="stumble"><a target="_blank" ></a></li>
                        <li class="google"><a target="_blank" ></a></li>
                        <li class="deviantart"><a target="_blank" ></a></li>
                        <li class="flickr"><a target="_blank"></a></li>
                        <li class="skype"><a target="_blank" ></a></li>
                        <li class="rss"><a target="_blank" ></a></li>
                        <li class="twitter"><a target="_blank" ></a></li>
                        <li class="facebook"><a target="_blank"></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End of Footer Bottom -->

</footer>
<!-- End of Footer -->

<a href="#top" id="scroll-top"></a>



<style>
    .copyrights{text-indent:-9999px;height:0;line-height:0;font-size:0;overflow:hidden;}
</style>
<div class="copyrights" id="links20210126">
    Collect from <a href="http://www.cssmoban.com/"  title="网站模板">模板之家</a>
    <a href="https://www.chazidian.com/"  title="查字典">查字典</a>
</div>
</body>
</html>