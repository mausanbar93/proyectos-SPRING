<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

        <div class="container">
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
                </div>
            </div>
        </div>
<%@include file="/WEB-INF/views/template/footer.jsp" %>