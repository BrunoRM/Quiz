angular.module('quiz').controller('loginController', ['$scope', 'sessionStorageService', 'authService', '$location', '$http', function($scope, sessionStorageService, authService, $location, $http){

    var usuarioLogado = sessionStorageService.getItem('userId');

    if (usuarioLogado != null){
        authService.userId = sessionStorageService.getItem('userId');
        authService.user = sessionStorageService.getItem('user');
        authService.userName = sessionStorageService.getItem('userName');
        authService.logado = true;
        $location.path('/menu');
    }

    $scope.logar = function(){

        if ($scope.login.$invalid){
            $scope.mostrarErros = true;
            return;
        }

        var data = {
            userName: $scope.usuario,
            password: $scope.senha
        };

        $http.post(authService.urlAPIBase + '/api/login', data).then(function(response){

            authService.logado = true;
            authService.userId = response.data.id;
            authService.user = response.data.name;
            authService.userName = response.data.userName;

            sessionStorageService.setItem('userId', response.data.id);
            sessionStorageService.setItem('user', response.data.name);
            sessionStorageService.setItem('userName', response.data.userName);

            $location.path('/menu');            
        }, function(error){
            if (error.status === 404){
                $scope.erroLogin = 'Usuário e/ou senha incorretos';
            } else {
                console.log(error);
            }
        });        
    }

    $scope.cadastrar = function(){
        $location.path('/cadastrar');
    }

    $scope.placares = function(){
        $location.path('/placar');
    }

}]);