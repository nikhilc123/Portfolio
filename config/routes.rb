Rails.application.routes.draw do
  resources :portvolios
  get 'portvolio/:id', to: 'portvolios#show', as: 'portfolio_show'

  root 'pages#home'

  get 'about-me', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  resources :blogs
end
