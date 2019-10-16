Rails.application.routes.draw do
  # get "/home", to: "pages#home", as: "root"
  root 'toys#index'
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
