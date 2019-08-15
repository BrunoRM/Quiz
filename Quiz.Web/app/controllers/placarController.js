angular.module('quiz').controller('placarController', ['$scope', '$http', 'authService', '$location', function($scope, $http, authService, $location){

    var carregarPlacaresJogador = function(){
        $http.get(authService.urlAPIBase + '/api/scoreboards/player/' + authService.userId).then(function(response){            
            $scope.placaresJogador = response.data;
        }, function(error){
            if (error.status === 404)
                $scope.msgPlacarJogadorNaoEncontrado = 'Nenhum placar encontrado';
            else{
                $scope.msgErroPlacarJogador = 'Problemas ao carregar Placares do jogador. Tente novamente';
            }
        });

    }

    var carregarPlacares = function(){

        $http.get(authService.urlAPIBase + '/api/scoreboards').then(function(response){
            $scope.placares = response.data;
        }, function(error){
            if (error.status === 404)
                $scope.msgPlacarNaoEncontrado = 'Nenhum placar encontrado';
            else{
                $scope.msgErroPlacar = 'Problemas ao carregar Placares. Tente novamente';
            }
        });

    }

    if (authService.logado === true)
        carregarPlacaresJogador();

    carregarPlacares();

    $scope.menu = function(){
        $location.path('/menu');
    }

}]);