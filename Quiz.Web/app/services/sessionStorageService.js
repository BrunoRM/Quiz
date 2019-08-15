angular.module('quiz').factory('sessionStorageService', [function(){

    return {

        setItem: function(key, value){
            sessionStorage.setItem(key, value);
        },

        getItem: function(key){
            return sessionStorage.getItem(key);
        },

        removeItem: function(key){
            sessionStorage.removeItem(key);
        }

    }
}])