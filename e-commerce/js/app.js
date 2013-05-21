angular.module('ecommerce', []).
  config(['$routeProvider', function($routeProvider) {
  $routeProvider.
      when('/products', {templateUrl: 'product/list.html',   controller: ProductCtrl}).
      when('/products/:productId', {templateUrl: 'product/detail.html', controller: ProductCtrl}).
      otherwise({redirectTo: '/products'});
}]);