<%--
  Created by IntelliJ IDEA.
  User: Administrador
  Date: 22/02/2017
  Time: 10:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div id="login-box">
            <h2>Ingresa con tu nombre de usuario y contraseña</h2>

            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>

            <form name="loginForm" action="<c:url value="/j_spring_security_check"/> " method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: red">${error}</div>
                </c:if>
                <div class="form-group">
                    <label for="username">Nombre de Usuario:</label>
                    <input type="text" id="username" name="username" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="password">Contrasena:</label>
                    <input type="password" id="password" name="password" class="form-control" />
                </div>

                <input type="submit" value="Iniciar Sesion" class="btn btn-primary">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">

            </form>

        </div>
    </div>

</div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>

