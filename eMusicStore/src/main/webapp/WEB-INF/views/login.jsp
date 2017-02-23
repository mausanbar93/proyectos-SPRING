<%--
  Created by IntelliJ IDEA.
  User: Administrador
  Date: 22/02/2017
  Time: 10:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container-wrapper">
    <div class="container">
        <div id="login-box">
            <div class="page-header">
                <h2>Ingresa con tu nombre de usuario y contraseña.</h2>
            </div>
            <!--
            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>
            -->
            <form name="loginForm" action="<c:url value="/j_spring_security_check"/> " method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: red">${error}</div>
                </c:if>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <!-- <label for="username">Nombre de Usuario:</label> -->
                            <input type="text" id="username" name="username" class="form-control" placeholder="Ingrese nombre de usuario"/>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <!-- <label for="password">Contraseña:</label> -->
                            <input type="password" id="password" name="password" class="form-control" placeholder="Ingrese contraseña"/>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <input type="submit" value="Iniciar sesión" class="btn btn-primary">
                    </div>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
            </form>
        </div>


<%@include file="/WEB-INF/views/template/footer.jsp" %>

