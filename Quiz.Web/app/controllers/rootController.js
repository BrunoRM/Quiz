angular.module('quiz').controller('rootController', ['$scope', 'sessionStorageService', 'authService', '$location', '$rootScope', function($scope, sessionStorageService, authService, $location, $rootScope){

    $rootScope.som = true;
    $rootScope.loading = false;

    $scope.volume = function(){
        $rootScope.som = !$rootScope.som;
    }

    $scope.logout = function(){

        authService.logado = false;
        authService.usuario = '';
        sessionStorageService.removeItem('userId');
        sessionStorageService.removeItem('user');
        sessionStorageService.removeItem('userName');

        $location.path('/');

    }

}]);