angular.module 'futurebytrump'
  .controller 'MainQuoteController', ($state, $stateParams, sentence)->
    @sentence = sentence
    @url = $state.href 'main.quote', $stateParams, absolute: yes
    @medias = [
      "Skiing Magazine"
      "Canton Cherokee Tribune"
      "WJXT TV"
      "Cartoon Network"
      "Daily Beast"
      "Parade Magazine"
      "TV Guide Magazine"
      "Cookeville Herald-Citizen"
      "The Way to the Pot"
      "Badass Touch"
      "Think Pig and Kiss Ass"
      "Blink Like a Champion"
      "Time to get Dough"
      "How to get Itch"
      "Tripped America"
      "The Rat of the Deal"
      "Brushing magazine"
    ]
    # Shuffle the media list
    @media = @medias[ Math.floor(Math.random() * @medias.length) ]
    # Tomorrow date
    @tomorrow = new Date( new Date().getTime() + 24 * 60 * 60 * 1000 )
    # Function to add non-breaking spaces
    @nonBreaking = (val)-> val.replace(/\s(\?|!|:)/g , ' $1')
    null
