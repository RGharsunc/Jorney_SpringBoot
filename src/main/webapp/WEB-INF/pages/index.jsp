<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Journey</title>
    <meta charset="utf-8">
    <link rel="icon" href="images/favicon.ico">
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/slider.css">
    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.1.1.js"></script>
    <script src="js/superfish.js"></script>
    <script src="js/sForm.js"></script>
    <script src="js/jquery.jqtransform.js"></script>
    <script src="js/jquery.equalheights.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/tms-0.4.1.js"></script>
    <script src="js/jquery-ui-1.10.3.custom.min.js"></script>
    <script src="js/jquery.ui.totop.js"></script>
    <script>
        $(window).load(function () {
            $('.slider')._TMS({
                show: 0,
                pauseOnHover: false,
                prevBu: '.prev',
                nextBu: '.next',
                playBu: false,
                duration: 800,
                preset: 'random',
                pagination: false, //'.pagination',true,'<ul></ul>'
                pagNums: false,
                slideshow: 8000,
                numStatus: false,
                banners: true,
                waitBannerAnimation: false,
                progressBar: false
            });
            $("#tabs").tabs();
            $().UItoTop({
                easingType: 'easeOutQuart'
            });
        });
    </script>
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <link rel="stylesheet" media="screen" href="css/ie.css">
    <![endif]-->
</head>
<body class="page1">
<header>
    <div class="container_12">
        <div class="grid_12">
            <h1><a href="index"><img src="images/logo.png" alt=""></a></h1>
            <div class="clear"></div>
        </div>
        <div class="menu_block">
            <nav>
                <ul class="sf-menu">
                    <li class="current"><a href="gallery.html">Gallery</a></li>
                    <li><a href="tours.html">Tours</a></li>
                    <li><a href="contacts.html">Contacts</a></li>
                </ul>
            </nav>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</header>
<div class="main">
    <div class="container_12">
        <div class="grid_12">
            <div class="slider-relative">
                <div class="slider-block">
                    <div class="slider"><a href="#" class="prev"></a><a href="#" class="next"></a>
                        <ul class="items">
                            <li><img src="/getImage?filename=${sliders.get(0).image}" alt="" >
                                <div class="banner">
                                    <div>${sliders.get(0).header1}</div>
                                    <br>
                                    <span>${sliders.get(0).header2}</span></div>
                            </li>
                            <c:set var="posIndex" value="${sliders.get(0).position}"/>
                            <c:forEach items="${sliders}" var="slide">
                                <c:if test="${slide.position!=posIndex}">
                                    <li>
                                        <img src="/getImage?filename=${slide.image}" alt="">
                                        <div class="banner">
                                            <div>${slide.header1}</div>
                                            <br>
                                            <span>${slide.header2}</span></div>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="container_12">
            <div class="grid_12">
                <h3>Kar jan sra het em <br>Top Destinations</h3>
            </div>
            <div class="boxes">
                <c:forEach items="${tours}" var="tour">
                    <c:if test="${tour.index==1}">
                        <div class="grid_4" >
                            <figure>
                                <div><img src="/getImage?filename=${tour.image1}" alt="" height="270"></div>
                                <figcaption>
                                    <h3>${tour.name}</h3>
                                        ${tour.description} <a href="#"
                                                               class="btn">Details</a>
                                </figcaption>
                            </figure>
                        </div>
                    </c:if>
                    <c:if test="${tour.index==2}">
                        <div class="grid_4">
                            <figure>
                                <div><img src="/getImage?filename=${tour.image1}" alt=""  height="270"></div>
                                <figcaption>
                                    <h3>${tour.name}</h3>
                                        ${tour.description} <a href="#"
                                                               class="btn">Details</a>
                                </figcaption>
                            </figure>
                        </div>
                    </c:if>
                    <c:if test="${tour.index==3}">
                        <div class="grid_4">
                            <figure>
                                <div><img src="/getImage?filename=${tour.image1}" alt=""  height="270"></div>
                                <figcaption>
                                    <h3>${tour.name}</h3>
                                        ${tour.description} <a href="#"
                                                               class="btn">Details</a>
                                </figcaption>
                            </figure>
                        </div>
                    </c:if>
                </c:forEach>

                <div class="clear"></div>
            </div>
            <div class="grid_8">
                <div id="tabs">
                    <ul>
                        <li><a href="#tabs-1">last Minute</a></li>
                        <li><a href="#tabs-2">hot Deals</a></li>
                        <li><a href="#tabs-3">All-Inclusive</a></li>
                    </ul>
                    <div class="clear"></div>
                    <div class="tab_cont" id="tabs-1">
                        <div class="extra_wrapper"><img src="/getImage?filename=${tours.get(0).image1}" alt="image" width="220">
                            <div class="text1"><br>${tours.get(0).name}</div>
                            <p class="style1" style="overflow: hidden;">${tours.get(0).duration} days per ${tours.get(0).price}$<p>
                            only for this weekend
                        </p> <a href="#" class="btn">Details</a>
                            <div class="clear "></div>
                        </div>
                        <div class="extra_wrapper"><img src="/getImage?filename=${tours.get(3).image1}" alt="image" width="220">
                            <div class="text1"><br>${tours.get(3).name}</div>
                            <p class="style1" style="overflow: hidden;">${tours.get(3).duration} days per ${tours.get(3).price}$<p>
                                only for this weekend
                            </p> <a href="#" class="btn">Details</a>
                            <div class="clear "></div>
                        </div>
                    </div>
                    <%--<div class="tab_cont" id="tabs-2"><img src="images/page1_img4.jpg" alt="">--%>
                        <%--<div class="extra_wrapper">--%>
                            <%--<div class="text1">Rem psum dr sit amet.</div>--%>
                            <%--<p class="style1">Nulla facilisi. Ut ut tincidunt lacus, ut auctor libero. Duis ommodo vel--%>
                                <%--ipsum sed volutpat. Phasellus a sagittis dui, eu adipiscinget nisiestibulum eutro.</p>--%>
                            <%--Nulla facilisi. Ut ut tincidunt lacus, ut auctor libero. Duis ommodo vel ipsum sed volutpat.--%>
                            <%--Phasellus a sagittis dui, eu adipiscinget nisiestibulum eutro. <a href="#" class="btn">Details</a>--%>
                            <%--<div class="clear "></div>--%>
                        <%--</div>--%>
                        <%--<div class="clear cl1"></div>--%>
                        <%--<img src="images/page1_img5.jpg" alt="">--%>
                        <%--<div class="extra_wrapper">--%>
                            <%--<div class="text1 tx1">Hem psuf abr sit dmety.</div>--%>
                            <%--Julla facilisi. Ut ut tincidunt lacus, ut auctor libero. Fuis ommodo vel ipsum sed volutpat.--%>
                            <%--Phasellus a sagittis dui, eu adipiscinget nisi. Vestibulum eu eleifend metus, ut ornare--%>
                            <%--nibh. Vestibulumul tincidunt interdum libero vitae faucibus. Gonec dapibus feugiate auctor.--%>
                            <%--In ac dapibus lacus. Maecenas in pharetra mim asellus a sagittis dui, eu adipiscinget nisi.--%>
                            <%--<div class="clear"></div>--%>
                            <%--<a href="#" class="btn bt1">Details</a>--%>
                            <%--<div class="clear "></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="tab_cont" id="tabs-3"><img src="images/page1_img4.jpg" alt="">--%>
                        <%--<div class="extra_wrapper">--%>
                            <%--<div class="text1">Rem psum dr sit amet.</div>--%>
                            <%--<p class="style1">Nulla facilisi. Ut ut tincidunt lacus, ut auctor libero. Duis ommodo vel--%>
                                <%--ipsum sed volutpat. Phasellus a sagittis dui, eu adipiscinget nisiestibulum eutro.</p>--%>
                            <%--Nulla facilisi. Ut ut tincidunt lacus, ut auctor libero. Duis ommodo vel ipsum sed volutpat.--%>
                            <%--Phasellus a sagittis dui, eu adipiscinget nisiestibulum eutro. <a href="#" class="btn">Details</a>--%>
                            <%--<div class="clear "></div>--%>
                        <%--</div>--%>
                        <%--<div class="clear cl1"></div>--%>
                        <%--<img src="images/page1_img5.jpg" alt="">--%>
                        <%--<div class="extra_wrapper">--%>
                            <%--<div class="text1 tx1">Hem psuf abr sit dmety.</div>--%>
                            <%--Julla facilisi. Ut ut tincidunt lacus, ut auctor libero. Fuis ommodo vel ipsum sed volutpat.--%>
                            <%--Phasellus a sagittis dui, eu adipiscinget nisi. Vestibulum eu eleifend metus, ut ornare--%>
                            <%--nibh. Vestibulumul tincidunt interdum libero vitae faucibus. Gonec dapibus feugiate auctor.--%>
                            <%--In ac dapibus lacus. Maecenas in pharetra mim asellus a sagittis dui, eu adipiscinget nisi.--%>
                            <%--<div class="clear"></div>--%>
                            <%--<a href="#" class="btn bt1">Details</a>--%>
                            <%--<div class="clear "></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                </div>
            </div>
            <div class="grid_4">
                <div class="newsletter_title">NewsLetter</div>
                <div class="n_container">
                    <form id="newsletter" action="/user/register">
                        <div class="success">Your subscribe request has been sent!</div>
                        <div class="text1">Sign up to receive our newsletters</div>
                        <label class="email">
                            <input type="email" value="email address" name="email">
                            <span class="error">*This is not a valid email address.</span> </label>
                        <div class="clear"></div>
                        <a href="#" class="" data-type="submit"></a>
                    </form>

                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="bottom_block">
        <div class="container_12">
            <div class="grid_2 prefix_2">
                <ul>
                    <li><a href="#">FAQS Page</a></li>
                    <li><a href="#">People Say</a></li>
                </ul>
            </div>
            <div class="grid_2">
                <ul>
                    <li><a href="#">Useful links</a></li>
                    <li><a href="#">Partners</a></li>
                </ul>
            </div>
            <div class="grid_2">
                <ul>
                    <li><a href="#">Insurance</a></li>
                    <li><a href="#">Family Travel</a></li>
                </ul>
            </div>
            <div class="grid_2">
                <h4>Contact Us:</h4>
                TEL: 1-800-234-5678<br>
                <a href="#">info@demolink.org</a></div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<footer>
    <div class="container_12">
        <div class="grid_12">
            <div class="socials"><a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a></div>
            <div class="copy"> Journey &copy; 2045 | <a href="#">Privacy Policy</a> | Design by: <a
                    href="http://www.templatemonster.com/">TemplateMonster.com</a></div>
        </div>
        <div class="clear"></div>
    </div>
</footer>
</body>
</html>