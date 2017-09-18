<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Journey</title>
    <meta charset="utf-8">
    <link rel="icon" href="/images/favicon.ico">
    <link rel="shortcut icon" href="/images/favicon.ico">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/slider.css">
    <script src="/js/jquery.js"></script>
    <script src="/js/jquery-migrate-1.1.1.js"></script>
    <script src="/js/superfish.js"></script>
    <script src="/js/sForm.js"></script>
    <script src="/js/jquery.jqtransform.js"></script>
    <script src="/js/jquery.equalheights.js"></script>
    <script src="/js/jquery.easing.1.3.js"></script>
    <script src="/js/tms-0.4.1.js"></script>
    <script src="/js/jquery-ui-1.10.3.custom.min.js"></script>
    <script src="/js/jquery.ui.totop.js"></script>
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
    <script src="/js/html5shiv.js"></script>
    <link rel="stylesheet" media="screen" href="/css/ie.css">
    <![endif]-->
</head>
<body class="page1" >
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
                    <%--<li><a href="about.html">About</a>--%>
                    <%--<ul>--%>
                    <%--<li><a href="#">Agency</a></li>--%>
                    <%--<li><a href="#">News</a></li>--%>
                    <%--<li><a href="#">Team</a></li>--%>
                    <%--</ul>--%>
                    <%--</li>--%>
                    <li><a href="/gallery">Gallery</a></li>
                    <li><a href="/tours">Tours</a></li>
                    <%--<li><a href="blog.html">Blog</a></li>--%>
                    <li><a href="/contacts">Contacts</a></li>
                </ul>
            </nav>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</header>
<div class="main" style="padding-left: 50px; padding-top: 50px; padding-bottom: 50px">
    <label id="tourform"><h3>enter the data of the tours please</h3></label>
    <form:form id="tourform" action="/admin/tour/add" name="tour" enctype="multipart/form-data" method="post">
        <input type="text" name="name" placeholder="location name"><br>
        <input type="number" name="price" placeholder="price of tour by $"><br>
        <input type="text" name="operator" placeholder="operator"><br>
        <textarea name="description">description...</textarea><br>
        <input type="text" name="destination" placeholder="tour will starts from"><br>

        <input type="date" id="dep_date" name="departureDate"><br>

        <input type="date" id="arr_date" name="arriveDate"><br>
        <input type="number" name="duration" placeholder="tour duration by days"><br>
        <input type="file" name="img1"><br>
        <input type="file" name="img2"><br>
        <label for="levelBox">level index</label>
        <input type="number" name="index" id="levelBox" placeholder="level index" value="0"><br>

        <input type="submit" value="submit"><br><br><br>
    </form:form>


    <label id="homeSlider"><h3>enter the data of the slider please</h3></label>
    <form:form id="homeSlider" action="/admin/homeslider/add" name="slider" enctype="multipart/form-data" method="post">
        <label id="header1">header1</label>
        <input type="text" id="hesder1" name="header1"><br>
        <label id="header1">header2</label>
        <input type="text" id="header2" name="header2"><br>

        <label id="sliderSelect">fixed position is after the number below or the first</label>
        <select id="sliderSelect" name="sliderPosition" class="form-control">

            <option id="slider" class="slider" value="0">First</option>
            <c:forEach items="${sliders}" var="slider">
                <option value="${slider.position}" class="slider">${slider.position+1}
                </option>
            </c:forEach>
        </select><br>
        <label id="image">image</label>
        <input type="file" id="image" name="img"><br>
        <input type="submit"><br><br><br>
    </form:form>

<%--Կար ջան ես էդ սլայդեռի երկրորդ ձևնա --%>
    <label id="topTours"><h3>enter the data of the top tours list please</h3></label>
    <form:form id="topTours" action="/admin/topTour/add">

        <label id="topTourNumber1">fix the first toptour</label>
        <select id="topTourNumber1" name="toursId1">
            <c:forEach items="${tours}" var="topTour">
                <option value="${topTour.id}" class="slider">${topTour.name}
                </option>
            </c:forEach>
        </select><br>

        <label id="topTourNumber2">fix the second toptour</label>
        <select id="topTourNumber2" name="toursId2">
            <c:forEach items="${tours}" var="topTour">
                <option value="${topTour.id}" class="slider">${topTour.name}
                </option>
            </c:forEach>
        </select><br>

        <label id="topTourNumber3">fix the third toptour</label>
        <select id="topTourNumber3" name="toursId3">
            <c:forEach items="${tours}" var="topTour">
                <option value="${topTour.id}" class="slider">${topTour.name}
                </option>
            </c:forEach>
        </select><br>
        <input type="submit"><br><br><br>


    </form:form>

</div>
</body>
</html>
