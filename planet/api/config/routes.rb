Rails.application.routes.draw do
  resources :star2minerals
  resources :players
  resources :locs
  resources :stars
  resources :minerals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"

  get 'show', to: 'home#show'

end
