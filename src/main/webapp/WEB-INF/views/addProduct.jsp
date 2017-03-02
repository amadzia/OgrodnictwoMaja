<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Dodaj produkt</h1>

            <p class="lead">Aby dodać produkt uzupełnij poniższe informacje</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post"
                   commandName="product" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">Nazwa</label> <form:errors path="productName" cssStyle="color: #ff0000;" />
            <form:input path="productName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="category">Kategoria</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Drzewa owocowe" />Drzewa owocowe</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Winorośle" />Winorośle</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Rośliny jagodowe" />Rośliny jagodowe</label>
        </div>

        <div class="form-group">
            <label for="description">Opis</label>
            <form:textarea path="productDescription" id="description" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="price">Cena</label> <form:errors path="productPrice" cssStyle="color: #ff0000;" />
            <form:input path="productPrice" id="price" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="condition">Stan</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="Nagie korzenie" />Nagie korzenie</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="Doniczka P9" />Doniczka P9</label>
        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="Produkt dostępny" />Produkt dostępny</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="Produkt niedostępny" />Produkt niedostępny</label>
        </div>

        <div class="form-group">
            <label for="unitsInStock">Ilość produktów</label> <form:errors path="unitsInStock" cssStyle="color: #ff0000;" />
            <form:input path="unitsInStock" id="unitsInStock" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="manufacturer">Producent</label>
            <label class="checkbox-inline"><form:radiobutton path="productManufacturer" id="manufacturer"
                                                             value="Ogrodnictwo Maja" />Ogrodnictwo Maja</label>
            <label class="checkbox-inline"><form:radiobutton path="productManufacturer" id="manufacturer"
                                                             value="Ogrodnictwo Gucio" />Ogrodnictwo Gucio</label>
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Dodaj zdjęcie</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
        </div>

        <br><br>
        <input type="submit" value="Zapisz" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Zrezygnuj</a>
        </form:form>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
