angular.module('quiz').factory('authService', [function(){
    
    return {
        urlAPIBase: 'http://localhost:5000',
        logado: false,
        nome: ''
    }

}]);