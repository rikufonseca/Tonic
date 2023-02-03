Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users

  scope '(:locale)', locale: /gr|en/ do
    root to: "pages#home"
    resources :jewelries
    resources :products, only: %i[index show new create edit update destroy]
    resources :services, only: %i[index show new create edit update destroy]
    resources :contacts, only: %i[create new]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
