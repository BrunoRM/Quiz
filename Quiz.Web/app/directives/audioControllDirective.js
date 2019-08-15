angular.module('quiz').directive('audioControll', [function(){
    return {
        templateUrl: 'templates/audio.html',
        link: function(scope, element, attrs){
            scope.$watch('som', function(newValue, oldValue){

                var audioElement = document.getElementById('musica');

                if (newValue != null && newValue === false){
                    audioElement.pause();
                } else{
                    audioElement.play();
                }
                
            })
        }
    }
}]);