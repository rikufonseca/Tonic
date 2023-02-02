Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

   resources :jewelries, only: %i(index new create edit update destroy)
   resources :products, only: %i(index new create edit update destroy)
   resources :services, only: %i(index new create edit update destroy)
   resources :contacts, only: %i(create)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
