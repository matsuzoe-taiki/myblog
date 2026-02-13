
Rails.application.routes.draw do
  root 'welcome#index'
  get 'pages/about'
  get 'pages/contact'
end