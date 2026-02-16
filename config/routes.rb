
Rails.application.routes.draw do
  root 'welcome#index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'privacy', to: 'pages#privacy'

  resources :articles, only: [:index, :show, :new, :create]
end