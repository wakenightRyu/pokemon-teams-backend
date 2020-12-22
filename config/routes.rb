Rails.application.routes.draw do

  get '/trainers' => 'trainers#index'
  resources :pokemons
  resources :trainers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
