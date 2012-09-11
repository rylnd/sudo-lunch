Bendylunch::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :restaurants, only: :index

  root to: "restaurants#random"
end
