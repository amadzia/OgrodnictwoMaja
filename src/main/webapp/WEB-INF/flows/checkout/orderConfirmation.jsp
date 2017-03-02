<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2016-11-17
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="now" class="java.util.Date"/>


<div class="container-wrapper">
    <div class="container">
        <br><br>

        <div class="container">

            <div class="row">

                <form:form commandName="order" class="form-horizontal">

                <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 co-md-offset-3">

                <div class="text-center">
                    <h1>Podsumowanie zamówienia</h1>
                    <br>
                </div>
                <div class="row">
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <address>
                            <strong>Adres dostawy</strong><br>
                                ${order.cart.customer.shippingAddress.streetName} ${order.cart.customer.shippingAddress.homeNumber}
                            / ${order.cart.customer.shippingAddress.appartmentNumber}
                            <br>
                                ${order.cart.customer.shippingAddress.zipCode} ${order.cart.customer.shippingAddress.city}
                            <br>
                        </address>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                        <p>Data złożenia zamówienia <fmt:formatDate type="date" pattern="yyyy-MM-dd"
                                                                    value="${now}"/></p>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <address>
                            <strong>Adres do faktury</strong><br>
                                ${order.cart.customer.billingAddress.streetName} ${order.cart.customer.billingAddress.homeNumber}
                            / ${order.cart.customer.billingAddress.appartmentNumber}
                            <br>
                                ${order.cart.customer.billingAddress.zipCode} ${order.cart.customer.billingAddress.city}
                            <br>
                        </address>
                    </div>
                </div>

                    <div class="row">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>Produkt</th>
                                <th>LP</th>
                                <th class="text-center">Cena</th>
                                <th class="text-center">Wartość</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="cartItem" items="${order.cart.cartItems}" >
                                <tr>
                                    <td class="col-md-9"><em>${cartItem.product.productName}</em></td>
                                    <td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
                                    <td class="col-md-1" style="text-align: center">${cartItem.product.productPrice}</td>
                                    <td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>
                                </tr>
                            </c:forEach>

                            <tr>
                                <td></td>
                                <td></td>
                                <td class="text-right">
                                    <h4><strong>Do zapłaty: </strong></h4>
                                </td>
                                <td class="text-center text-danger">
                                    <h4><strong>${order.cart.grandTotal} PLN</strong></h4>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <input type="hidden" name="_flowExecutionKey"/>

                    <br><br>
                    <button class="btn btn-default" name="_eventId_backToCollectShippingDetail">Wstecz</button>
                    <input type="submit" value="Zrealizuj zamówienie" class="btn btn-default"
                           name="_eventId_orderConfirmed"/>
                    <button class="btn btn-default" name="_eventId_cancel">Zrezygnuj</button>

                    </form:form>

                </div>
            </div>


            <%@include file="/WEB-INF/views/template/footer.jsp" %>

