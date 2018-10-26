Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  patch '/capture', to: 'pokemons#capture'
  resources :trainers
  patch '/damage', to: 'pokemons#damage'
  post '/create', to: 'pokemons#create', as: 'pokemons'
  get '/new', to: 'pokemons#new'

end
