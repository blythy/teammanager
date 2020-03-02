Rails.application.routes.draw do
  resources :positionings
  resources :positions
  resources :players
  resources :teams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
