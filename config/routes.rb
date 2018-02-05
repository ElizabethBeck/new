Rails.application.routes.draw do
  resources :users
  root 'users#index'
  get '/help', to: 'markets#help'
  get '/home', to: 'markets#index'
  get '/new',  to: 'markets#new'
  get '/show', to: 'markets#show'
  get '/edit', to: 'markets#edit'

  
  resources :markets, except: [:update, :edit, :destroy]

  resources :distances, only: [:new, :create]
end
