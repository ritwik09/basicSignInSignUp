Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   # devise_for :users
    namespace :v1 , defaults: { format: :json} do
  	
  	resources :accounts, only: [:create,:update] do
  		resources :contacts
  	end

  	resources :sessions, only: [:create, :destroy]
  	resources :users, only: [:create,:index]

  	resources :pages
  end
end
