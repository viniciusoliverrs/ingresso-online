var app = angular.module('IngressoOnlineApp', []);
app.config(function($interpolateProvider) {
      $interpolateProvider.startSymbol('}');
      $interpolateProvider.endSymbol('{');
});

app.controller('', function($scope, $http) {

});