angular.module('quiz').config(['$httpProvider', function($httpProvider){
    
    $httpProvider.interceptors.push('loadingInterceptor');
    
}]);