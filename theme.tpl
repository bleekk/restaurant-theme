<!DOCTYPE html>
<html class="no-js">
	<head>
        <{assign var=theme_name value=$xoTheme->folderName}>
        <meta charset="<{$xoops_charset}>">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title><{if $xoops_dirname == "system"}><{$xoops_sitename}><{if $xoops_pagetitle !=''}> - <{$xoops_pagetitle}><{/if}><{else}><{if $xoops_pagetitle !=''}><{$xoops_pagetitle}> - <{$xoops_sitename}><{/if}><{/if}></title>
		<meta name="description" content="<{$xoops_meta_description}>">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- CSS
        ================================================ -->
        <!-- Owl Carousel -->
		<link rel="stylesheet" href="<{xoImgUrl}>css/owl.carousel.css">
		<link rel="stylesheet" href="<{xoImgUrl}>css/owl.theme.default.min.css">
        <!-- bootstrap.min css -->
		<link rel="stylesheet" href="<{xoImgUrl}>css/bootstrap.min.css">
        <!-- Font-awesome.min css -->
		<link rel="stylesheet" href="<{xoImgUrl}>css/font-awesome.min.css">
        <!-- Main Stylesheet -->
        <link rel="stylesheet" href="<{xoImgUrl}>css/animate.min.css">

		<link rel="stylesheet" href="<{xoImgUrl}>css/main.css">
        <!-- Responsive Stylesheet -->
		<link rel="stylesheet" href="<{xoImgUrl}>css/responsive.css">
		<!-- Js -->
    <script src="<{xoImgUrl}>js/vendor/modernizr-2.6.2.min.js"></script>
    <script>window.jQuery || document.write('<script src="<{xoImgUrl}>js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
    <script src="<{xoImgUrl}>js/jquery.nav.js"></script>
    <script src="<{xoImgUrl}>js/jquery.sticky.js"></script>
    <script src="<{xoImgUrl}>js/bootstrap.min.js"></script>
    <script src="<{xoImgUrl}>js/plugins.js"></script>
    <script src="<{xoImgUrl}>js/wow.min.js"></script>
    <script src="<{xoImgUrl}>js/main.js"></script>
    
    <link href="<{$xoops_url}>/favicon.ico" rel="shortcut icon">
    <!-- XOOPS HEADER -->
    <{$xoops_module_header}>
	</head>
	<body>
	<!--
	header-img start 
	============================== -->
    <section id="<{if $xoops_dirname == "system"}>hero-area<{else}>hero-area-page<{/if}>">
      <img class="img-responsive" src="<{xoImgUrl}>images/header.jpg" alt="">
    </section>
	<!--
    Header start 
	============================== -->
	<nav id="navigation">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="block">
                        <nav class="navbar navbar-default">
                          <div class="container-fluid">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                              </button>
                                  <a class="navbar-brand" href="<{xoAppUrl}>">
                                    <{$xoops_sitename}>
                                    <!-- <img src="<{xoImgUrl}>images/logo.png" alt="Logo"> -->
                                  </a>

                            </div>

                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                              <ul class="nav navbar-nav navbar-right" id="top-nav">
                                <li><a href="<{xoAppUrl}>">Home</a></li>
                                <li><a href="<{xoAppUrl}>modules/publisher">Publisher</a></li>
                                <li><a href="<{xoAppUrl}>modules/lexikon">Lexikon</a></li>
                                <li><a href="<{xoAppUrl}>modules/xoopsfeeds">Feeds</a></li>
                                <li><a href="#subscribe">news</a></li>
                                <li><a href="#contact-us">contacts</a></li>
                              </ul>
                            </div><!-- /.navbar-collapse -->
                          </div><!-- /.container-fluid -->
                        </nav>
                    </div>
                </div><!-- .col-md-12 close -->
            </div><!-- .row close -->
        </div><!-- .container close -->
	</nav><!-- header close -->
    <!--
    Slider start
    ============================== -->
    <{if $xoBlocks.page_topcenter || $xoBlocks.page_topleft || $xoBlocks.page_topright}>
    <section id="slider">
        <{if $xoBlocks.page_topcenter}> <!-- top center blocks -->
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <{foreach item=block from=$xoBlocks.page_topcenter}>
                        <div class="block">
                        <div class="xoops-blocks">
                            <{if $block.title}>
                                <div class="title">
                                <h3><{$block.title}></h3>
                                </div>
                            <{/if}>
                            <{$block.content}>
                        </div>
                        </div>
                    <{/foreach}>
                    
                </div><!-- .col-md-12 close -->
            </div><!-- .row close -->
        </div> <!-- .container close -->
        <{/if}>
        <{if $xoBlocks.page_topleft || $xoBlocks.page_topright}> <!-- top left and right blocks -->
        <div class="container mtop20">
            <div class="row">
                <div class="col-md-6 col-sx-12">
                    <{foreach item=block from=$xoBlocks.page_topleft}>
                        <div class="block">
                        <div class="xoops-blocks">
                            <{if $block.title}>
                                <div class="title">
                                <h3><{$block.title}></h3>
                                </div>
                            <{/if}>
                            <{$block.content}>
                        </div>
                        </div>
                    <{/foreach}>
                </div>
                <div class="col-md-6 col-sx-12">
                    <{foreach item=block from=$xoBlocks.page_topright}>
                        <div class="block">
                        <div class="xoops-blocks">
                            <{if $block.title}>
                                <div class="title">
                                <h3><{$block.title}></h3>
                                </div>
                            <{/if}>
                            <{$block.content}>
                        </div>
                        </div>
                    <{/foreach}>
                </div>
            </div>
            
        </div><!-- .container close -->
        <{/if}>
    </section><!-- slider close -->
    <{/if}>
    <!--
    about-us start
    ============================== -->
    <{if $xoBlocks.page_bottomleft || $xoBlocks.page_bottomright}>
    <section id="about-us">
        <div class="container">
            <div class="row">
                <{foreach item=block from=$xoBlocks.page_bottomleft}>
                    <div class="col-md-6 col-sm-12">
                    <div class="block">
                            <{if $block.title}>
                                <h1 class="heading wow fadeInUp"><{$block.title}></h1>                                
                            <{/if}>
                            <p><{$block.content}></p>
                     </div>
                     </div>
                <{/foreach}>
                <{foreach item=block from=$xoBlocks.page_bottomright}>
                    <div class="col-md-6 col-sm-12">
                    <div class="block">
                            <{if $block.title}>
                                <h1 class="heading wow fadeInUp"><{$block.title}></h1>                                
                            <{/if}>
                            <p><{$block.content}></p>
                     </div>
                     </div>
                <{/foreach}>
            </div><!-- .row close -->
        </div><!-- .containe close -->
    </section><!-- #call-to-action close -->
    <{/if}>
    <!--
    blog start
    ============================ -->
    <{if $xoBlocks.page_bottomcenter}>
    <section id="blog">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="block">
                        <{foreach item=block from=$xoBlocks.page_bottomcenter}>
                            <{if $block.title}><h1 class="heading"><{$block.title}></h1><{/if}>
                                <{$block.content}>
                            <{/foreach}>
                    </div>
                </div><!-- .col-md-12 close -->
            </div><!-- .row close -->
        </div><!-- .containe close -->
    </section><!-- #blog close -->
    <{/if}>
    <!--
    xoops content start
    ============================ -->
    
    <{if $xoops_contents}>
    <section id="price">
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-sm-9 col-sx-12">
                    <{$xoops_contents}>
                </div><!-- .col-md-12 close -->
                <{if $xoBlocks.canvas_right}>
                    <div class="col-sm-3 col-md-3 col-sx-12">
                        <{foreach item=block from=$xoBlocks.canvas_right}>
                            <aside class="xoops-side-blocks">
                                <{if $block.title}><h4 class="block-title"><{$block.title}></h4><{/if}>
                                <{$block.content}>
                            </aside>
                        <{/foreach}>
                    </div>
                <{/if}>
            </div><!-- .row close -->
        </div><!-- .containe close -->
    </section><!-- #price close -->
    <{/if}>
    <!--
    CONTACT US  start
    ============================= -->
    <section id="contact-us">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="block">
                        <div class="row">
                        <{foreach item=block from=$xoBlocks.footer_left}>
                        <div class="col-md-6 col-sx-12">
                        <{if $block.title}><h3 class="title wow fadeInLeft" data-wow-duration="500ms" data-wow-delay="300ms"><{$block.title}></h3><{/if}>
                        <{$block.content}>
                        </div>
                        <{/foreach}>
                        <div class="row">
                    </div>
                </div><!-- .col-md-12 close -->
            </div><!-- .row close -->
        </div><!-- .container close -->
    </section><!-- #contact-us close -->
    <!--
    subscribe start
    ============================ -->
    <{if $xoBlocks.footer_right}>
    <section id="subscribe">
        <div class="container">
            <div class="row">
                <{foreach item=block from=$xoBlocks.footer_right}>
                <div class="col-md-12">
                    <div class="block">
                        <h1 class=" heading wow fadeInUp" data-wow-duration="300ms" data-wow-delay="300ms"><{$block.title}></h1>
                        <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="400ms">
                            <{$block.content}>
                        </p>
                    </div>
                </div><!-- .col-md-12 close -->
                <{/foreach}>
            </div><!-- .row close -->
        </div><!-- .containe close -->
    </section><!-- #subscribe close -->
    <{/if}>
    
    <!--
   
    footer  start
    ============================= -->
    <{if $xoBlocks.footer_center}>
    <section id="footer">
        <div class="container">
            <div class="row">
                <{foreach item=block from=$xoBlocks.footer_center}>
                <div class="col-md-4">
                    <div class="block wow fadeInLeft"  data-wow-delay="200ms">
                        <h3><{$block.title}></h3>
                        <div class="info">
                            <{$block.content}>
                        </div>
                    </div>
                </div>
                <{/foreach}>
            </div><!-- .row close -->
        </div><!-- .containe close -->
    </section><!-- #footer close -->
    <{/if}>
    <!--
    footer-bottom  start
    ============================= -->
    <footer id="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="block">
                        <p>Copyright &copy; 2014 - All Rights Reserved.Design and Developed By <a href="http://www.themefisher.com">Themefisher</a></p>
                        <p>Ported to Xoops by <a href="http://xoops.org/modules/profile/userinfo.php?uid=5513">Bleekk</a></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
	</body>
</html>