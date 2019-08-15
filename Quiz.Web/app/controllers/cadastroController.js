angular.module('quiz').controller('cadastroController', ['$scope', '$http', 'authService', 'sessionStorageService', '$location', function($scope, $http, authService, sessionStorageService, $location){

    var usuarioLogado = sessionStorageService.getItem('userId');
    
    if (usuarioLogado != null){
        authService.usuarioLogado = usuarioLogado;
        authService.logado = true;
        $location.path('/menu');
    }

    $scope.cadastrar = function(e){
        if ($scope.cadastro.$invalid){
            $scope.mostrarErros = true;
            return;
        }

        var data = {
            name: $scope.usuario.nome,
            userName: $scope.usuario.usuario,
            password: $scope.usuario.senha
        };

        $http.post(authService.urlAPIBase + '/api/players', data).then(function(response){
            
            authService.logado = true;
            authService.userId = response.data.idJogador;
            authService.user = response.data.usuario;
            authService.userName = response.data.nome;

            sessionStorageService.setItem('userId', response.data.id);
            sessionStorageService.setItem('user', response.data.userName);
            sessionStorageService.setItem('userName', response.data.name);

            $location.path('/menu');            
        }, function(error){
            console.log(error);
            $scope.erroCadastro = error.data.message;            
        });
    }

}]);