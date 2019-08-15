angular.module('quiz').config(['$routeProvider', function($routeProvider){

    $routeProvider.when('/', {
        controller: 'loginController',
        templateUrl: 'templates/login.html'
    })
    .when('/menu', {
        controller: 'menuController',
        templateUrl: 'templates/menu.html',
        secure: true
    })
    .when('/perguntas/:nivel', {
        controller: 'perguntaController',
        templateUrl: 'templates/pergunta.html',
        secure: true
    })
    .when('/cadastrar', {
        controller: 'cadastroController',
        templateUrl: 'templates/cadastrar.html'
    })
    .when('/placar', {
        controller: 'placarController',
        templateUrl: 'templates/placar.html'
    })
    .otherwise('/');

}]);

angular.module('quiz').run(['$rootScope', 'authService', '$location', 'sessionStorageService', function($rootScope, authService, $location, sessionStorageService){

    var usuarioLogado = sessionStorageService.getItem('userId');

    if (usuarioLogado != null){
        authService.userId = sessionStorageService.getItem('userId');
        authService.user = sessionStorageService.getItem('user');
        authService.userName = sessionStorageService.getItem('userName');
        authService.logado = true;
    }

    $rootScope.$on('$routeChangeSuccess', function(event, current, previous){

        if (current.$$route.secure === true){

            if (authService.logado === false){
                $location.path('/');
            }
        }

    });

}]);