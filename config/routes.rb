Rails.application.routes.draw do
  #root 페이지 설정.. root 페이지란.. home 같은 느낌?
  root 'home#index'
  get 'hi/index'

  # /lotto로 들어오면 HomeController에 lotto로 이동하라
  get '/lotto' => 'home#lotto'

  get '/index' => 'home#index'

  get '/welcome/:name' => 'home#welcome'

  get '/google' => 'home#google'

  get '/game' => 'home#game'

  get '/gameresult' => 'home#gameresult'

  get '/randomgame' => 'home#randomgame'

  get '/randomgameresult' => 'home#randomgameresult'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
