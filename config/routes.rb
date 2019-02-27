Rails.application.routes.draw do
  resources :portvolios

  root 'pages#home'

  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  resources :blogs
end
