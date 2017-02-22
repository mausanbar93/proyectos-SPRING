<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="string" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">

    <div class="container">
        <div class="page-header">
            <h1>Todos los Productos</h1>
            <p class="lead">Visualiza todos los productos disponibles!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Foto</th>
                <th>Nombre Producto</th>
                <th>Categoria</th>
                <th>Condicion</th>
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
                    </td>
                </tr>
            </c:forEach>
        </table>

<%@include file="/WEB-INF/views/template/footer.jsp" %>