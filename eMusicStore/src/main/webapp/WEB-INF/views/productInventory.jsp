<%--
  Created by IntelliJ IDEA.
  User: Administrador
  Date: 20/02/2017
  Time: 1:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="string" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">

    <div class="container">
        <div class="page-header">
            <h1>Página inventario de productos</h1>
            <p class="lead">Esta es la página de inventario de productos!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Foto</th>
                <th>Nombre Producto</th>
                <th>Categoría</th>
                <th>Condición</th>
                <th>Precio</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png"/> " alt="image" style="width: 100%"></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} USD</td>
                    <td>
                        <a href="<string:url value="/productList/viewProduct/${product.productId}"/>">
                            <span class="glyphicon glyphicon-info-sign"></span>
                        </a>
                        <a href="<string:url value="/admin/productInventory/deleteProduct/${product.productId}"/>">
                            <span class="glyphicon glyphicon-remove"></span>
                        </a>
                        <a href="<string:url value="/admin/productInventory/editProduct/${product.productId}"/>">
                            <span class="glyphicon glyphicon-pencil"></span>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <a href="<spring:url value="/admin/productInventory/addProduct"/> " class="btn btn-primary">Agregar Producto</a>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
