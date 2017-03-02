<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2016-11-12
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Rejestracja Klienta</h1>

            <p class="lead">Aby utworzyć konto uzupełnij poniższe informacje</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register" method="post"
                   commandName="customer">

        <h3>Informacje podstawowe</h3>


        <div class="form-group">
            <label for="name">Nazwisko i imię</label><form:errors path="customerName" cssStyle="color: #ff0000"/>
            <form:input path="customerName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="email">E-mail</label><span style="color:#ff0000">${emailMsg}</span>
            <form:errors path="customerEmail" cssStyle="color: #ff0000"/>
            <form:input path="customerEmail" id="email" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="phone">Numer telefonu</label>
            <form:input path="customerPhone" id="phone" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="username">Login</label><span style="color:#ff0000">${usernameMsg}</span>
            <form:errors path="username" cssStyle="color: #ff0000"/>
            <form:input path="Username" id="username" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="password">Hasło</label>
            <form:errors path="password" cssStyle="color: #ff0000"/>
            <form:password path="password" id="password" class="form-Control"/>
        </div>

        <h3>Adres do wystawienia faktury</h3>

        <div class="form-group">
            <label for="billingStreet">Nazwa ulicy</label>
            <form:input path="billingAddress.streetName" id="billingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingHomeNumber">Numer domu</label>
            <form:input path="billingAddress.homeNumber" id="billingHomeNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingAppartmentNumber">Numer mieszkania</label>
            <form:input path="billingAddress.appartmentNumber" id="billingAppartmentNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingCity">Miejscowość</label>
            <form:input path="billingAddress.city" id="billingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingZip">Kod pocztowy</label>
            <form:input path="billingAddress.zipCode" id="billingZip" class="form-Control"/>
        </div>

        <h3>Adres wysyłki</h3>

        <div class="form-group">
            <label for="shippingStreet">Nazwa ulicy</label>
            <form:input path="shippingAddress.streetName" id="shippingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingHomeNumber">Numer domu</label>
            <form:input path="shippingAddress.homeNumber" id="shippingHomeNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingAppartmentNumber">Numer mieszkania</label>
            <form:input path="shippingAddress.appartmentNumber" id="shippingAppartmentNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCity">Miejscowość</label>
            <form:input path="shippingAddress.city" id="shippingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingZip">Kod pocztowy</label>
            <form:input path="shippingAddress.zipCode" id="shippingZip" class="form-Control"/>
        </div>


        <br><br>
        <input type="submit" value="Wyślij" class="btn btn-default">
        <a href="<c:url value="/" />" class="btn btn-default">Wstecz</a>
        </form:form>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
