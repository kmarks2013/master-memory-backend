Rails.application.routes.draw do
  resources :game_elements
  resources :elements
  resources :game_presidents
  resources :presidents
  resources :game_countries
  resources :countries
  resources :game_numbers
  resources :numbers
  resources :games
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
