Rails.application.routes.draw do

  resources :reviews
  resources :markets

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/reviews', to: "reviews#index"
  # get '/reviews/:id', to: "reviews#show"
  # post '/reviews', to: "reviews#create"
  # patch '/reviews/:id', to: "reviews#update"
  # delete '/reviews/:id', to: "reviews#destroy"

  # get '/fruits', to: "fruits#index"
  # get '/fruits/:id', to: "fruits#show"
  # post '/fruits', to: "fruits#create"

end
