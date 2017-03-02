<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2016-11-17
  Time: 13:14
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Klient</h1>

            <p class="lead">Dane Klienta</p>
        </div>

        <form:form commandName="order" class="form-horizontal">

        <h3>Informacje podstawowe</h3>


        <div class="form-group">
            <label for="name">Nazwisko i imię</label>
            <form:input path="cart.customer.customerName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="email">E-mail</label>
            <form:input path="cart.customer.customerEmail" id="email" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="phone">Numer telefonu</label>
            <form:input path="cart.customer.customerPhone" id="phone" class="form-Control"/>
        </div>

        <h3>Adres do wystawienia faktury</h3>

        <div class="form-group">
            <label for="billingStreet">Nazwa ulicy</label>
            <form:input path="cart.customer.billingAddress.streetName" id="billingStreet" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingHomeNumber">Numer domu</label>
            <form:input path="cart.customer.billingAddress.homeNumber" id="billingHomeNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingAppartmentNumber">Numer mieszkania</label>
            <form:input path="cart.customer.billingAddress.appartmentNumber" id="billingAppartmentNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingCity">Miejscowość</label>
            <form:input path="cart.customer.billingAddress.city" id="billingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingZip">Kod pocztowy</label>
            <form:input path="cart.customer.billingAddress.zipCode" id="billingZip" class="form-Control"/>
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br><br>
        <input type="submit" value="Dalej" class="btn btn-default" name="_eventId_customerInfoCollected" />
        <button class="btn btn-default" name="_eventId_cancel">Zrezygnuj</button>
        </form:form>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
