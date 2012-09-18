Bendylunch::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :restaurants, only: :index do
    collection do
      match '/:tag' => 'restaurants#random', as: 'tagged'
    end
  end

  root to: "restaurants#random"
end
