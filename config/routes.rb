Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portvolios, except: [:show] do
    put 'sort', on: :collection
  end

  get 'angular-items', to: 'portvolios#angular'
  get 'portvolio/:id', to: 'portvolios#show', as: 'portfolio_show'

  root 'pages#home'

  get 'about-me', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
end
