<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">

    <div class="container">
        <div class="page-header">
            <h1>Detalles del Producto</h1>
            <p class="lead">Aquí puede detallar información del producto!</p>
        </div>

        <div class="container" ng-app="cartApp">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/resources/images/${product.productId}.png"/> " alt="image" style="width:100%"/>
                </div>
                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>
                    <p>
                        <strong>Manufactura:</strong> ${product.productManufacturer}
                    </p>
                    <p>
                        <strong>Categoria:</strong> ${product.productCategory}
                    </p>
                    <p>
                        <strong>Condicion:</strong> ${product.productCondition}
                    </p>
                    <p>${product.productPrice} USD</p>
                    <br>
                    <c:set var="role" scope="page" value="${param.role}"/>
                    <c:set var="url" scope="page" value="/productList"/>
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory"/>
                    </c:if>

                    <p ng-controller="cartCtrl">
                        <a href="<c:url value="${url}"/> " class="btn btn-default">Atrás</a>
                        <a href="#" class="btn btn-warning btn-large" ng-click="addToCart(${product.productId})"><span class="glyphicon glyphicon-shopping-cart"></span> Ordenar Ahora</a>
                        <a href="<spring:url value="/cart"/>" class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span> Ver Carro</a>

                    </p>
                </div>
            </div>
        </div>
        <script src="<c:url value="/resources/js/controller.js"/> "></script>
<%@include file="/WEB-INF/views/template/footer.jsp" %>