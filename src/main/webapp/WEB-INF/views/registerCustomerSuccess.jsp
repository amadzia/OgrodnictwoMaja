<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2016-11-13
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Zostałeś poprawnie zarejestrowany</h1>
                </div>
            </div>
        </section>

        <section class="container">
            <div>
                <p>
                    <a href="<spring:url value="/product/productList/all" />" class="btn btn-default">Produkty</a>
                </p>
            </div>
        </section>

    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js" /> "></script>
<%@include file="/WEB-INF/views/template/footer.jsp" %>
