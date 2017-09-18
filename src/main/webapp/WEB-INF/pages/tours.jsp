<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Journey | Tours</title>
    <meta charset="utf-8">
    <link rel="icon" href="/images/favicon.ico">
    <link rel="shortcut icon" href="/images/favicon.ico">
    <link rel="stylesheet" href="/css/style.css">

    <script src="/js/jquery.js"></script>
    <script src="/js/jquery-migrate-1.1.1.js"></script>
    <script src="/js/superfish.js"></script>
    <script src="/js/jquery.jqtransform.js"></script>
    <script src="/js/jquery.equalheights.js"></script>
    <script src="/js/jquery.easing.1.3.js"></script>
    <script src="/js/jquery.ui.totop.js"></script>
    <script>
        $(window).load(function () {
            $().UItoTop({
                easingType: 'easeOutQuart'
            });
        });
        $(function () {
            $(".form1").jqTransform();
        });
    </script>
    <!--[if lt IE 9]>
    <script src="/js/html5shiv.js"></script>
    <link rel="stylesheet" media="screen" href="/css/ie.css">
    <![endif]-->
</head>
<body>
<header>
    <div class="container_12">
        <div class="grid_12">
            <h1><a href="/home"><img src="/images/BlueBirdLogo1.png" alt="" width="250"></a></h1>
            <div class="clear"></div>
        </div>
        <div class="menu_block">
            <nav>
                <ul class="sf-menu">
                    <li><a href="/home">Home</a></li>
                    <li><a href="/gallery">Gallery</a></li>
                    <li class="current"><a href="/tours">Tours</a></li>
                    <%--<li><a href="/contacts">Contacts</a></li>--%>
                </ul>
            </nav>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</header>
<div class="main">
    <div class="content">
        <div class="container_12">
            <div class="grid_9">
                <h3>Our Tours</h3>
                <div class="tours">
                    <%--<div class="grid_4 alpha">--%>
                    <%--<div class="tour"> <img src="images/page4_img1.jpg" alt="" class="img_inner fleft">--%>
                    <%--<div class="extra_wrapper">--%>
                    <%--<p class="text1">Gellentesque imperdiet </p>--%>
                    <%--<p class="price">Lorem ipsum dolor sit amet <span>From $ 399</span></p>--%>
                    <%--<p class="price">Suspendisse jew wligulawe <span>From $ 299</span></p>--%>
                    <%--<a href="#" class="btn">Details</a> </div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <c:forEach items="${tours}" var="tour">
                        <a href="/tour/${tour.id}">
                            <div class="grid_4 omega">
                                <div class="tour"><img src="/getImage?filename=${tour.image1}" alt=""
                                                       class="img_inner fleft" width="200">
                                    <div class="extra_wrapper">
                                        <p class="text1">${tour.name} </p>
                                        <p class="price">${tour.destination}<span>From $ ${tour.price}</span></p>
                                        <p class="price">Tour duration ${tour.duration} day<span></span></p>
                                        <a href="/tour" class="btn">Details</a></div>
                                    <br><br>
                                </div>
                            </div>
                        </a>
                        <%--<div class="clear"></div>--%>
                    </c:forEach>
                    <%--<div class="grid_4 alpha">--%>
                    <%--<div class="tour"> <img src="images/page4_img3.jpg" alt="" class="img_inner fleft">--%>
                    <%--<div class="extra_wrapper">--%>
                    <%--<p class="text1">Holellentesq imperdiet</p>--%>
                    <%--<p class="price">Sorem ipsum olor sit amety <span>From $ 499</span></p>--%>
                    <%--<p class="price">Apendisse jow wligulawet <span>From $ 599</span></p>--%>
                    <%--<a href="#" class="btn">Details</a> </div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="grid_4 omega">--%>
                    <%--<div class="tour"> <img src="images/page4_img4.jpg" alt="" class="img_inner fleft">--%>
                    <%--<div class="extra_wrapper">--%>
                    <%--<p class="text1">Gellentesque imperdiet </p>--%>
                    <%--<p class="price">Lorem ipsum dolor sit amet <span>From $ 399</span></p>--%>
                    <%--<p class="price">Suspendisse jew wligulawe <span>From $ 299</span></p>--%>
                    <%--<a href="#" class="btn">Details</a> </div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="clear"></div>--%>
                    <%--<div class="grid_4 alpha">--%>
                    <%--<div class="tour"> <img src="images/page4_img5.jpg" alt="" class="img_inner fleft">--%>
                    <%--<div class="extra_wrapper">--%>
                    <%--<p class="text1">Fdaellensque perdiet </p>--%>
                    <%--<p class="price">Gorem sum dolor sit met <span>From $ 399</span></p>--%>
                    <%--<p class="price">Xuspendisse wew ligulawe <span>From $ 299</span></p>--%>
                    <%--<a href="#" class="btn">Details</a> </div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="grid_4 omega ">--%>
                    <%--<div class="tour"> <img src="images/page4_img6.jpg" alt="" class="img_inner fleft">--%>
                    <%--<div class="extra_wrapper">--%>
                    <%--<p class="text1">Mellentesquj mperdiete</p>--%>
                    <%--<p class="price">Sorem ipsum olor sit amety<span> From $ 399</span></p>--%>
                    <%--<p class="price">Suspendisse jew wligulawe <span>From $ 299</span></p>--%>
                    <%--<a href="#" class="btn">Details</a> </div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                </div>
            </div>
            <%--<div class="grid_3">--%>
                <%--&lt;%&ndash;<h3>Browse Tours</h3>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<form method="post" id="form1" class="form1" action="#">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<label class="mb0"> <span>Browse by Tour Operator</span>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<select name="select">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<option value="">Browse by Tour Operator</option>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<option value="">...</option>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</select>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</label>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="clear"></div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<a onClick="document.getElementById('form1').submit()" href="#" class="btn"> Search</a>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</form>&ndash;%&gt;--%>
                <%--<h3>Search Tours</h3>--%>
                <%--<form:form  method="post" id="form2" class="form1" action="/tours/from/search/" name="efs">--%>
                    <%--<label> <span><span class="col1">--%>
                        <%--Tour name</span></span>--%>
                        <%--<select name="select">--%>
                            <%--<c:forEach items="${toursForSearch}" var="tour">--%>
                                <%--<option value="${tour.name}">${tour.name}</option>--%>
                            <%--</c:forEach>--%>
                        <%--</select>--%>
                    <%--</label>--%>

                    <%--<label> <span>Departing</span>--%>
                        <%--<input type="date" name="departingDate">--%>
                    <%--</label>--%>
                    <%--<label> <span>Arrive</span>--%>
                        <%--<input type="date" name="arrivingDate">--%>
                    <%--</label>--%>
                    <%--<label> <span>Price in $</span>--%>
                        <%--<input type="number" name="price">--%>

                    <%--</label>--%>
                    <%--<label class="mb0"> <span>Duration by days</span>--%>
                        <%--<input type="number" name="duration">--%>

                    <%--</label>--%>
                    <%--<div class="clear"></div>--%>
                    <%--<input type="submit" value="search">--%>
                <%--</form:form>--%>
            <%--</div>--%>
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