<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrador
  Date: 23/02/2017
  Time: 2:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Carro de Compras</h1>
                    <p>Todos los productos seleccionados en su carro de compras.</p>
                </div>
            </div>
        </section>
        <section class="container" ng-app="cartApp">
            <div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">
                <table class="table table-hover">
                    <tr>
                        <th>Producto</th>
                        <th>Precio unidad</th>
                        <th>Cantidad</th>
                        <th>Precio</th>
                        <th>Acción</th>
                    </tr>
                    <tr ng-repeat="item in cart.cartItems">
                        <td>{{item.product.productName}}</td>
                        <td>{{item.product.productPrice}}</td>
                        <td>{{item.quantity}}</td>
                        <td>{{item.totalPrice}}</td>
                        <td>
                            <a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)">
                                <span class="glyphicon glyphicon-remove"></span> Eliminar</a>
                        </td>
                    </tr>
                    <tr>
                        <th></th>
                        <th></th>
                        <th>GranTotal</th>
                        <th>{{cart.granTotal}}</th>
                        <th></th>
                    </tr>
                </table>
                <div class="row pull-right">
                    <a class="btn btn-danger pull-left" ng-click="clearCart()"><span
                            class="glyphicon glyphicon-remove-sign"></span> Limpiar carro</a>
                    &nbsp
                    <a href="<spring:url value="/productList"/>" class="btn btn-primary"><span class="glyphicon glyphicon-hand-right"></span> Continua comprando</a>
                </div>
                <!--
                <div>
                    <a class="btn btn-danger pull-left" ng-click="clearCart()"><span
                            class="glyphicon glyphicon-remove-sign"></span> Limpiar carro</a>
                </div>
                <div><input type="hidden" value="aa"/></div>
                <div>
                    <a href="<spring:url value="/productList"/>" class="btn btn-primary"><span class="glyphicon glyphicon-hand-right"></span> Continua comprando</a>
                </div>
                -->
            </div>
        </section>

        <!--   </div>
       </div> -->
        <script src="<c:url value="/resources/js/controller.js"/> "></script>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
