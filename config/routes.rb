Rails.application.routes.draw do
  get 'home/index'

  resources :refuels

  root 'home#index'
end
