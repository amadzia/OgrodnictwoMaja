<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2016-11-07
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="container-wrapper">
    <div class="container">
        <div id="login-box">

            <h2>Podaj login i hasło</h2>

            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>

            <form name="loginForm" action="<c:url value="/j_spring_security_check"/>" method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                <div class="form-group">
                    <label for="username">Login:</label>
                    <input type="text" id="username" name="username" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="password">Hasło:</label>
                    <input type="password" id="password" name="password" class="form-control"/>
                </div>

                <input type="submit" value="Wyślij" class="btn btn-default">

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>

        </div>


<%@include file="/WEB-INF/views/template/footer.jsp" %>