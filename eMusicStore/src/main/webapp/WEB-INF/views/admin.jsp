<%--
  Created by IntelliJ IDEA.
  User: Administrador
  Date: 20/02/2017
  Time: 1:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">

    <div class="container">
        <div class="page-header">
            <h1>Página del Administrador</h1>
            <p class="lead">Esta es la página de administración!</p>
        </div>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>
                Bienvenido: ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/j_spring_security_logout"/> ">Cerrar sesión</a>
            </h2>
        </c:if>

        <h3>
            <a href="<c:url value="/admin/productInventory"/> ">Inventario de Productos</a>
        </h3>

        <p>Aquí puede visualizar, verificar y modificar los productos en el inventario!</p>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
