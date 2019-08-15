angular.module('quiz').factory('loadingInterceptor', ['$rootScope', '$q' , function($rootScope, $q){
    return{
        request: function(request){

            $rootScope.loading = true;

            return request;
        },
        
        requestError: function(error){
            
            $rootScope.loading = false;            

            return $q.reject(error);
        },

        response: function(response){

            $rootScope.loading = false;

            return response;
        },

        responseError: function(error){

            $rootScope.loading = false;
            
            return $q.reject(error);
        }
    }
}]);