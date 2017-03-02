<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2016-11-17
  Time: 13:28
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
        

        <h3>Adres dostawy</h3>

        <div class="form-group">
            <label for="shippingStreet">Nazwa ulicy</label>
            <form:input path="cart.customer.shippingAddress.streetName" id="shippingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingHomeNumber">Numer domu</label>
            <form:input path="cart.customer.shippingAddress.homeNumber" id="shippingHomeNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingAppartmentNumber">Numer mieszkania</label>
            <form:input path="cart.customer.shippingAddress.appartmentNumber" id="shippingAppartmentNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCity">Miejscowość</label>
            <form:input path="cart.customer.shippingAddress.city" id="shippingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingZip">Kod pocztowy</label>
            <form:input path="cart.customer.shippingAddress.zipCode" id="shippingZip" class="form-Control"/>
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br><br>
        <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Wstecz</button>
        <input type="submit" value="Dalej" class="btn btn-default" name="_eventId_shippingDetailCollected" />
        <button class="btn btn-default" name="_eventId_cancel">Zrezygnuj</button>
        </form:form>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
