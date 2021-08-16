<!doctype html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en-US"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en-US"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9" lang="en-US"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en-US"> <!--<![endif]-->
<head>
    <!-- META TAGS -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>主页</title>

    <link rel="shortcut icon" href="./images/favicon.png" />

    <!-- Style Sheet-->
    <link rel="stylesheet" href="style.css"/>
    <link rel='stylesheet' id='bootstrap-css-css'  href='./css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />
    <link rel='stylesheet' id='responsive-css-css'  href='./css/responsive5152.css?ver=1.0' type='text/css' media='all' />
    <link rel='stylesheet' id='pretty-photo-css-css'  href='./js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css' media='all' />
    <link rel='stylesheet' id='main-css-css'  href='./css/main5152.css?ver=1.0' type='text/css' media='all' />
    <link rel='stylesheet' id='custom-css-css'  href='./css/custom5152.html?ver=1.0' type='text/css' media='all' />


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
                <a  title="Knowledge Base Theme">
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
<div class="search-area-wrapper">
    <div class="search-area container">
        <h3 class="search-header">Hello</h3>
        <p class="search-tag-line">你可以在Latest Articles浏览话题，或者发布一个新话题</p>


    </div>
</div>
<!-- 彩色框，hello那部分结束 -->
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" title="模板之家">模板之家</a></div>

<!-- Start of Page Container -->
<div class="page-container">
    <div class="container">
        <div class="row">

            <!-- start of page content -->
            <div class="span8 page-content">

                <!-- Basic Home Page Template -->
                <div class="row separator">


                    <!--这里写你的weibo内容-->
                    <section class="span4 articles-list">
                        <h3>Latest Articles</h3>
                        <ul class="articles">
                            <#--                            <li class="article-entry standard">-->
                            <#--                                <h4><a href="single.html">Integrating WordPress with Your Website</a></h4>-->
                            <#--                                <span class="article-meta">25 Feb, 2013 in <a href="#" title="View all posts in Server &amp; Database">Server &amp; Database</a></span>-->
                            <#--                                <span class="like-count">66</span>-->
                            <#--                            </li>-->
                            <#--                            <li class="article-entry standard">-->
                            <#--                                <h4><a href="single.html">Using Javascript</a></h4>-->
                            <#--                                <span class="article-meta">25 Feb, 2013 in <a href="#" title="View all posts in Advanced Techniques">Advanced Techniques</a></span>-->
                            <#--                                <span class="like-count">18</span>-->
                            <#--                            </li>-->
                            <#list weibos as weibo>

                            <article class="format-standard type-post hentry clearfix">

                                <header class="clearfix">

                                    <h3 class="post-title">
                                        <a href="/weibo?weiboId=#{weibo.id}">${weibo.content}</a>
                                    </h3>

                                    <div class="post-meta clearfix">
                                        <span class="date">${weibo.createTime}</span>
                                        <span class="comments"><a href="#" title="Comment on Using Javascript">${weibo.commentSize}</a></span>
                                        <span class="like-count">${weibo.likes}</span>
                                    </div><!-- end of post meta -->

                                </header>

                                </#list>
                        </ul>
                    </section>
                </div>
            </div>
            <!-- 微博列表结束 -->


            <!-- start of sidebar -->
            <aside class="span4 page-sidebar">

                <section class="widget">
                    <div class="support-widget">
                        <h3 class="title"><a href="/newTopic" >发布新主题</a></h3>
                        <p class="intro">Need more support? If you did not found an answer, contact us for further help.</p>
                    </div>
                </section>

                <section class="widget">
                    <div class="quick-links-widget">
                        <h3 class="title">Quick Links</h3>
                        <ul id="menu-quick-links" class="menu clearfix">
                            <li><a href="/">Home</a></li>
                            <li><a href="/login">login</a></li>
                            <li><a href="/register">register</a></li>

                        </ul>
                    </div>
                </section>

                <section class="widget">
                    <h3 class="title">友情链接</h3>
                    <div class="tagcloud">
                        <a href="http://news.sohu.com/" class="btn btn-mini">新闻</a>
                        <a href="https://email.163.com/" class="btn btn-mini">邮箱</a>
                        <a href="https://www.qq.com/" class="btn btn-mini">腾讯</a>
                        <a href="https://www.ximalaya.com/" class="btn btn-mini">喜马拉雅FM</a>
                        <a href="https://www.zhihu.com/" class="btn btn-mini">知乎</a>
                        <a href="https://www.eastmoney.com/" class="btn btn-mini">东方财富</a>
                        <a href="https://chifeng.58.com/" class="btn btn-mini">58同城</a>
                        <a href="https://www.douban.com/" class="btn btn-mini">豆瓣网</a>
                        <a href="https://www.youku.com/" class="btn btn-mini">优酷网</a>
                        <a href="https://www.csdn.net/" class="btn btn-mini">CSDN社区</a>
                        <a href="http://tianqi.hao123.com/" class="btn btn-mini">天气</a>
                        <a href="http://www.dangdang.com/" class="btn btn-mini">当当网</a>
                        <a href="https://www.hupu.com/" class="btn btn-mini">虎扑体育</a>
                        <a href="https://music.163.com/" class="btn btn-mini">网易云音乐</a>
                    </div>
                </section>

            </aside>
            <!-- end of sidebar -->
        </div>
    </div>
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
                        <li class="linkedin"><a target="_blank" ></a></li>
                        <li class="stumble"><a target="_blank" ></a></li>
                        <li class="google"><a target="_blank" ></a></li>
                        <li class="deviantart"><a target="_blank" ></a></li>
                        <li class="flickr"><a target="_blank" ></a></li>
                        <li class="skype"><a target="_blank" ></a></li>
                        <li class="rss"><a target="_blank" ></a></li>
                        <li class="twitter"><a target="_blank" ></a></li>
                        <li class="facebook"><a target="_blank" ></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End of Footer Bottom -->

</footer>
<!-- End of Footer -->

<a href="#top" id="scroll-top"></a>

<!-- script -->
<script type='text/javascript' src='js/jquery-1.8.3.min.js'></script>
<script type='text/javascript' src='js/jquery.easing.1.3.js'></script>
<script type='text/javascript' src='js/prettyphoto/jquery.prettyPhoto.js'></script>
<script type='text/javascript' src='js/jflickrfeed.js'></script>
<script type='text/javascript' src='js/jquery.liveSearch.js'></script>
<script type='text/javascript' src='js/jquery.form.js'></script>
<script type='text/javascript' src='js/jquery.validate.min.js'></script>
<script type='text/javascript' src='js/custom.js'></script>

<style>
    .copyrights{text-indent:-9999px;height:0;line-height:0;font-size:0;overflow:hidden;}
</style>
<div class="copyrights" id="links20210126">
    Collect from <a href="http://www.cssmoban.com/"  title="网站模板">模板之家</a>
    <a href="https://www.chazidian.com/"  title="查字典">查字典</a>
</div>
</body>
</html>