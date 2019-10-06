Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :accounts
  resources :posts
  resources :users
  get 'sessions/new'

  #get 'users/new'
  get "/signup",to: "users#new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#home"

  #get 'static_pages/help'
  get 'help' ,to: "static_pages#help"

  #get 'static_pages/about'
  get 'about',to: 'static_pages#about'

  #get 'static_pages/contact'
  get 'contact',to: 'static_pages#contact'


  get '/login',to: 'sessions#new'
  post '/login',to: 'sessions#create'
  delete '/logout',to: 'sessions#destroy'

  get 'ajax/index'
  get 'ajax/data'
  resources :users

  resources :plans

  post "plans/:id/charge", to: "charges#create", as: "charge"
  get 'charges/complete'
end