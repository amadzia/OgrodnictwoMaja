<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2016-11-02
  Time: 13:23
  To change this template use File | Settings | File Templates.
--%>

<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Panel Administratora</h1>
            <p class="lead">Panel Administratora umożliwia zarządzanie katalogiem produktów</p>
        </div>

        <c:if test="${pageContext.request.userPrincipal.name !=null}">
        <h2>
            Witaj: ${pageContext.request.userPrincipal.name} | <a href="<c:url
            value="/j_spring_security_logout" /> ">Wyloguj się</a>
        </h2>
        </c:if>

        <h3>
            <a href="<c:url value="/admin/productInventory" />" >Katalog produktów</a>
        </h3>

        <p>Tu możesz przeglądać, sprawdzać i modyfikować katalog produktów</p>

        <br><br>

        <h3>
            <a href="<c:url value="/admin/customer" />" >Informacje o Klientach</a>
        </h3>

        <p>Tu możesz przeglądać informacje o Klientach</p>

        <br><br>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
