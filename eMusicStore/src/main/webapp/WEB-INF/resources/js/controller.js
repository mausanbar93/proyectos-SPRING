/**
 * Created by Administrador on 23/02/2017.
 */

var cartApp = angular.module ("cartApp",[]);

cartApp.controller("cartCtrl", function($scope, $http){

    $scope.refreshCart = function (cartId) {
        $http.get('/eMusicStore/rest/cart/'+$scope.cartId).success(function (data) {
            $scope.cart = data;
        });
    };

    $scope.clearCart = function () {
        $http.delete('/eMusicStore/rest/cart/'+$scope.cartId).success($scope.refreshCart($scope.cartId));
    };

    $scope.initCartId = function (cardId) {
        $scope.cartId = cardId;
        $scope.refreshCart(cardId);
    };

    $scope.addToCart = function (productId) {
        $http.put('/eMusicStore/rest/cart/add/'+productId).success(function (data) {
            $scope.refreshCart($http.get('/eMusicStore/rest/cart/cartId'));
            alert("Producto agregado correctamente al carro de compras!");
        });
    };

    $scope.removeFromCart = function (productId) {
        $http.put('/eMusicStore/rest/cart/remove/'+productId).success(function (data) {
            $scope.refreshCart($http.get('/eMusicStore/rest/cart/cartId'));
        });
    };
});