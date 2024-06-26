Rails.application.routes.draw do
  devise_for :users

  scope '(:locale)', locale: /gr|en/ do
    root to: "pages#home"
    resources :jewelries, only: [:index]
    get "jewelries/:jewelry", to: "jewelries#show", as: 'jewelry'
    resources :products, only: :index
    resources :services, only: :index
    get "contacts", to: "messages#new"
    resources :messages, only: :create
  end
end
