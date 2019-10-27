Rails.application.routes.draw do
  get '/', to: 'pages#index', as: "root"
  devise_for :users
  get 'manufacturers/index', to: 'manufacturers#index'
  get 'manufacturers/show', to: 'manufacturers#show'
  get 'manufacturers/edit', to: 'manufacturers#edit'
  get 'manufacturers/destroy', to: 'manufacturers#destroy'
  get '/users', to: 'users#index', as: 'user_index'
  # get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/destroy'
  # get "/home", to: "pages#home", as: "root"
  get 'toys/index'
 
  # get 'toys/index'
  # get 'toys/:id', to:'toys#show', as: "toy"
  # # get 'toys/show', to: 'toys#show', as: "toys"
  # patch 'toys/:id', to: 'toys#update'
  # get 'toys/:id/edit', to:"toys#edit", as: "toys_edit"
  # get 'toys/new', to: "toys#new"
  # post 'toys/new', to: "toys#create"
  
  
  resources :toys

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

#if want only certain ones for resources do resources:toys only[:show, :edit] etc.