<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script>
    $(document).ready(function () {
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[5, 10, -1], [5, 10, "Wszystkie"]],
            "oSearch": {"sSearch": searchCondition},
            "language": {
                "sProcessing": "Przetwarzanie...",
                "sLengthMenu": "Pokaż _MENU_ pozycji",
                "sZeroRecords": "Nie znaleziono pasujących pozycji",
                "sInfoThousands": " ",
                "sInfo": "Pozycje od _START_ do _END_ z _TOTAL_ łącznie",
                "sInfoEmpty": "Pozycji 0 z 0 dostępnych",
                "sInfoFiltered": "(filtrowanie spośród _MAX_ dostępnych pozycji)",
                "sInfoPostFix": "",
                "sSearch": "Szukaj:",
                "sUrl": "",
                "oPaginate": {
                    "sFirst": "Pierwsza",
                    "sPrevious": "Poprzednia",
                    "sNext": "Następna",
                    "sLast": "Ostatnia"
                }
            }
        });
    });
</script>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Wszystkie produkty</h1>
            <p class="lead">Przeglądnij wszystkie dostępne produkty</p>
        </div>


        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Zdjęcie</th>
                <th>Nazwa produktu</th>
                <th>Kategoria</th>
                <th>Stan</th>
                <th>Cena</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="zdjęcie"
                             style="width:70%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} PLN</td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"
                    ><span class="glyphicon glyphicon-info-sign"></span></a></td>
                </tr>
            </c:forEach>
        </table>

<%@include file="/WEB-INF/views/template/footer.jsp" %>