Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  patch "capture" => "pokemon#capture", as: "capture"
  patch "damage" => "pokemon#damage", as: "damage"
  patch "heal" => "pokemon#heal", as: "heal"
  post '/pokemons' => "pokemons#create", as: "create_pokemon"
  get '/pokemons/new' => "pokemons#new", as: "new_pokemon" 
  
  resources :trainers
end
