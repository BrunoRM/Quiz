angular.module('quiz').controller('perguntaController', ['$scope', '$timeout', '$location', '$route', '$interval', 'authService', '$http', '$routeParams', '$rootScope', function($scope, $timeout, $location, $route, $interval, authService, $http, $routeParams, $rootScope){

    var tempoParaResponder = 15;
    var nivelPergunta = 1;
    var quantidadePerguntas = 13;

    var salvarPontuacao = function(){

        var data = {
            playerId: authService.userId,
            points: $scope.totalPontos
        }

        $http.post(authService.urlAPIBase + '/api/scoreboards', data).then(function(response){
            console.log(response);
        }, function(error){
            console.log(error);
        });

    }

    if ($routeParams.nivel != null){
        switch ($routeParams.nivel){
            case 'facil':
                nivelPergunta = 1;
                quantidadePerguntas = 10;
                break;
            case 'medio':
                nivelPergunta = 2;
                quantidadePerguntas = 20;
                break;
            case 'dificil':
                nivelPergunta = 3;
                quantidadePerguntas = 30;
                break;
            default:
                nivelPergunta = 2;
                quantidadePerguntas = 20;
                break;
        }
    }

    let perguntas = [];
    $http.get(authService.urlAPIBase + '/api/questions/level/' + nivelPergunta).then(function(response){
        
        perguntas = [];

        // Pega somente o número de perguntas para cada nível
        for (var i = 0; i < quantidadePerguntas; i++){
            var index = Math.trunc(Math.random() * (quantidadePerguntas));
            perguntas.push(response.data[index]);
            response.data.splice(index, 1);
        }

        $scope.numeroPergunta = 0;
        $scope.totalPontos = 0;
        $scope.erros = 3;
    
        var intervalId = 0;
        $scope.tempoPergunta = 0;
        $scope.sortearPergunta = function(perguntaPulada){
            
            $scope.bloquearSelecao = true;
            
            $scope.tempoPergunta = 0;
            if (quantidadePerguntas != 0){
                var index = Math.trunc(Math.random() * (perguntas.length));
                $scope.perguntaSelecionada = perguntas[index];
                perguntas.splice(index, 1);
    
                if (perguntaPulada == false)
                    $scope.numeroPergunta++;
                    
                if (intervalId != 0){
                    clearInterval(intervalId);
                    intervalId = 0;
                }
    
                if ($scope.erros != 0){
    
                    intervalId = setInterval(function(){
                        $scope.$apply(function(){
                            if ($scope.tempoPergunta === tempoParaResponder){
                                $scope.pularPergunta();
                                $scope.tempoPergunta = 0;
                            } else {
                                $scope.tempoPergunta++;
                            }
                        });
                    }, 1000);
                } else{
    
                    salvarPontuacao();
                }
    
            }  else{
                clearInterval(intervalId);
                $scope.perguntaSelecionada = null;

                salvarPontuacao();
            }
            $scope.bloquearSelecao = false;
        }
    
        $scope.proximaPergunta = function(){
            
            clearInterval(intervalId);
            
            var respostaCerta = {};
            for (var i = 0; i < $scope.perguntaSelecionada.respostas.length; i++){
                if ($scope.perguntaSelecionada.respostas[i].respostaCerta === true){
                    respostaCerta = $scope.perguntaSelecionada.respostas[i];
                }
            }
                
            if ($scope.resposta == respostaCerta.resposta){
                $scope.resposta = '';            
                $scope.resultadoPergunta = 'EXATA';
                $scope.totalPontos += $scope.numeroPergunta * 100;
                quantidadePerguntas--;
                
                $scope.bloquearSelecao = true;
                $timeout(function(){
                    $scope.resultadoPergunta = '';
                    $scope.sortearPergunta(false);
                    $scope.bloquearSelecao = false;
                }, 2000);
            } else {
    
                $scope.resultadoPergunta = 'ERRADA';
                $scope.resposta = '';
    
                $scope.bloquearSelecao = true;
                $timeout(function(){
                    $scope.erros--;
                    $scope.resultadoPergunta = '';
                    $scope.tempoPergunta = 0;
                    perguntas.push($scope.perguntaSelecionada);
                    $scope.sortearPergunta();
                    $scope.bloquearSelecao = false;
                }, 2000);                        
            }
    
        }
        
        $scope.pularPergunta = function(){
            
            $scope.bloquearSelecao = true;
            $scope.erros--;
            perguntas.push($scope.perguntaSelecionada);
            $scope.sortearPergunta(true);
            $scope.bloquearSelecao = false;
        }
    
        $scope.desistir = function(){
            clearInterval(intervalId);
            $scope.erros = 0;

            if ($scope.totalPontos != 0)
                salvarPontuacao();
        }
    
        $scope.menu = function(){
            $location.path('/menu');
        }
    
        $scope.novoJogo = function(){
            $route.reload();
        }
    
        $scope.jogoPausado = false;
        var tempo = 0;
        $scope.pausar = function(){
            $scope.jogoPausado = true;
            tempo = $scope.tempoPergunta;
            clearInterval(intervalId);
        }
    
        $scope.voltarJogo = function(){
            $scope.jogoPausado = false;
            $scope.tempoPergunta = tempo;
            intervalId = setInterval(function(){
                $scope.$apply(function(){
                    if ($scope.tempoPergunta === tempoParaResponder){
                        $scope.pularPergunta();
                        $scope.tempoPergunta = 0;
                    } else {
                        $scope.tempoPergunta++;
                    }
                });
            }, 1000);
        }        

        $scope.sortearPergunta(false);

    }, function(error){
        console.log(error);
    });    

}]);