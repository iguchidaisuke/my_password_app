Rails.application.routes.draw do
  devise_for :users

  root "information#index"
  resources :users, only:[:edit,:update]
  resources :information, only: [:index,:new,:show, :create,:edit,:update,:destroy]
  resources :top, only:[:index,:show]
end
