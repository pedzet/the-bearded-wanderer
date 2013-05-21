TheBeardedWanderer::Application.routes.draw do
  resources :users, :except => [ :new, :edit ], defaults: {format: :json}
  
  # get 'home' => 'site#home'
  post '/login' => 'site#login'
  get '/logout' => 'site#logout'
  
  get 'events/meetup_api' => 'events#meetup_api', defaults: { format: :json }
  resources :events, defaults: { format: :json }


  root :to => 'site#index'
  

end
