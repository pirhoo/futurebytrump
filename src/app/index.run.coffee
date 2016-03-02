angular.module 'futurebytrump'
  .run  ($rootScope, $location, $window)->
    $rootScope.$on "$stateChangeSuccess", ->
      # Send 'pageview' to Google Analytics
      $window.ga('send', 'pageview', page: $location.url()) if $window.ga?