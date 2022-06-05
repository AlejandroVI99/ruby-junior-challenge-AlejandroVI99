require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :admin
  devise_for :client

  devise_scope :client do
    get 'sign_out', to: 'clients/sessions#destroy'
  end

  devise_scope :admin do
    get 'sign_out', to: 'admin/sessions#destroy'
  end


  resources :products
  
  get 'home', to:"pages#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "pages#index"
  # Defines the root path route ("/")
  # root "articles#index"

  
  mount Sidekiq::Web => '/sidekiq'

end
