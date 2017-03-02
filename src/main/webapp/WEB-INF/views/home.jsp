<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide home-image" src="<c:url value="/resources/images/background1.jpg"/> "
                 alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1> Ogrodnictwo Maja zaprasza do zakupu sadzonek oraz skorzystania z profesjonalnych usług</h1>
                    <p>Oferujemy Państwu wysokiej jakości sadzonki, dostosowane do uprawy w naszym klimacie. Zawsze
                        chętnie służymy Państwu radą i pomocą</p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide home-image" src="<c:url value="/resources/images/background2.jpg"/> "
                 alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Architektura krajobrazu</h1>
                    <p>Założenie ogrodu to duże wyzwanie. Dobór odpowiednich dla określonej strefy
                        klimatycznej roślin, o wystarczającej odporności na choroby, wraz z zapylaczami, przy
                        uwzględnieniu allelopatii znacznie zwiększa prawdopodobieństwo uzyskania wysokiej jakości
                        plonów</p>
                    <p>Umieszczenie w ogrodzie elementów dodatkowych, przykładowo piwniczki-ziemnianki, nadaje
                        przestrzeni zielonej dodatkowy wymiar użytkowy</p>
                    <p>Zapraszamy do kontaktu z nami. Z przyjemnością rozwiejemy Państwa wątpliwości lub
                        zaprojektujemy i pomożemy w założeniu wyjątkowego ogrodu</p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide home-image" src="<c:url value="/resources/images/background3.jpg"/> "
                 alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Oferta dla sadowników i rolników</h1>
                    <p>Dla zwiększenia plenności oferujemy Państwu możliwość zakupu rodzin trzmieli</p>
                    <p>W celu złożenia zamówienia prosimy o kontakt osobisty lub telefoniczny</p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Wstecz</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Dalej</span>
    </a>
</div>
<!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Drzewa owocowe" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/drzewaOwocowe.jpg" />"
                     alt="Zdjęcie: Drzewa owocowe" width="140" height="140"></a>

            <h2>Drzewa owocowe</h2>
            <p>Starannie wyselekcjonowane, minimum 3-letnie drzewa owocowe</p>
        </div><!-- /.col-lg-4 -->

        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Rośliny jagodowe" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/jagodowe.jpg" />"
                     alt="Zdjęcie: Rośliny jagodowe" width="140" height="140"></a>

            <h2>Rośliny jagodowe</h2>
            <p>Przysmaki pełne witamin i minerałów</p>
        </div><!-- /.col-lg-4 -->

        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Winorośle" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/winorośle.jpg" />" alt="Zdjęcie: Winorośle"
                     width="140" height="140"></a>

            <h2>Winorośle</h2>
            <p>Odmiany nadające się do uprawy w Polsce</p>
        </div><!-- /.col-lg-4 -->


    </div><!-- /.row -->


<%@include file="/WEB-INF/views/template/footer.jsp" %>