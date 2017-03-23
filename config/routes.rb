Rails.application.routes.draw do

  get '/user/:user_id/playlists' => 'playlists#index'
  get '/user/:user_id/playlists/:playlist_id' => 'playlists#show'

  get 'tracks/' => 'tracks#index'
  post 'tracks/:track_id' => 'tracks#create'

  get 'home/index'
  root 'home#index'



  get '/auth/:provider/callback' => 'sessions#create'
  get '/auth/failure' => 'sessions#failure'
  get '/signout' => 'sessions#destroy', :as => :signout
  # root to: redirect('/auth/spotify') # for convenience

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
