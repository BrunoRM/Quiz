angular.module('quiz').controller('menuController', ['$scope', '$location', 'authService', function($scope, $location, authService){

    $scope.nomeJogador = authService.userName;

    $scope.mostrarTelaDificuldades = false;

    $scope.novoJogo = function(){
        $scope.mostrarTelaDificuldades = true;
    }

    $scope.comecarJogo = function(dificuldade){
        if (dificuldade === 'f'){

            $location.path('/perguntas/facil');

        } else if (dificuldade === 'm'){

            $location.path('/perguntas/medio');

        } else {
            $location.path('/perguntas/dificil');
        }
    }

    $scope.placares = function(){
        $location.path('/placar');
    }

}]);