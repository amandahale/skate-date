Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do

  #LOCATIONS

    get '/locations' => "locations#index"
    post '/locations' => "locations#create"
    get '/locations/:id' => "locations#show"
    patch '/locations/:id' => "locations#update"
    delete '/locations/:id' => "locations#destroy"


  #USERS

    get '/users/:id' => "users#show"
    post '/users' => "users#create"
    patch '/users/:id' => "users#update"
    delete '/users/:id' => "users#destroy"

  #SESSIONS
    post "/sessions" => "sessions#create"

  #FAVORITES

    post '/favorites' => "favorites#create" 
    delete '/favorites/:id' => "favorites#destroy"

  end

  get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: 'public/index.html')]] } 

end
