<%--
  Created by IntelliJ IDEA.
  User: Administrador
  Date: 20/02/2017
  Time: 2:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">

    <div class="container">
        <div class="page-header">
            <h1>Agregar Producto</h1>
            <p class="lead">Rellene la siguiente información para agregar un producto:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" method="post" commandName="product" enctype="multipart/form-data">
        <div class="form-group">
            <label for="nombre">Nombre</label> <form:errors path="productName" cssStyle="color: red"/>
            <form:input path="productName" id="nombre" class="form-Control" placeholder="Ingrese nombre del producto" />
        </div>

        <form:errors path="productCategory" cssStyle="color: red"/>
        <div class="form-group">
            <label for="categoria">Categoria</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Instrumento"/>Instrumento</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Accesorio"/>Accesorio</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Hobbie"/>Hobbie</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Belleza"/>Belleza</label>
        </div>

        <div class="form-group">
            <label for="descripcion">Descripción</label>
            <form:textarea path="productDescription" id="descripcion" class="form-Control" placeholder="Ingrese descripción del producto" />
        </div>

        <div class="form-group">
            <label for="precio">Precio</label> <form:errors path="productPrice" cssStyle="color: red"/>
            <form:input path="productPrice" id="precio" class="form-Control" placeholder="Ingrese precio del producto" />
        </div>

        <form:errors path="productCondition" cssStyle="color: red"/>
        <div class="form-group">
            <label for="condicion">Condición</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condicion" value="Nuevo"/>Nuevo</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condicion" value="Usado"/>Usado</label>
        </div>

        <form:errors path="productStatus" cssStyle="color: red"/>
        <div class="form-group">
            <label for="estado">Estado</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="estado" value="Activo"/>Activo</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="estado" value="Inactivo"/>Inactivo</label>
        </div>

        <div class="form-group">
            <label for="unitInStock">Unidades en Stock</label> <form:errors path="unitInStock" cssStyle="color: red"/>
            <form:input path="unitInStock" id="unitInStock" class="form-Control" placeholder="Ingrese unidades en stock del producto" />
        </div>

        <div class="form-group">
            <label for="manufactura">Manufactura</label> <form:errors path="productManufacturer" cssStyle="color: red"/>
            <form:input path="productManufacturer" id="manufactura" class="form-Control" placeholder="Ingrese manufactura del producto" />
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Cargar Imagen</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large"/>
        </div>

        <br><br>

        <input type="submit" value="Registrar" class="btn btn-success">
        <a href="<c:url value="/admin/productInventory"/> " class="btn btn-danger">Cancelar</a>

        </form:form>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
