Rails.application.routes.draw do
  root 'knowledges#index'
  
  get 'tags/search', to: 'tags#search'
  get 'tags/:id', to: 'tags#show' #borrar esto xq creo que ya no se usa
  
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  resources :knowledges
  resources :contacts, only: [:new, :create]
  resources :suggestions, only: [:new, :create]
  resources :policies, only: [:new]
  resources :terms, only: [:new]
  
end
