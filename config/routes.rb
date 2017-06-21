Rails.application.routes.draw do
  resources :users
  resources :portfolios
  get 'pages/home'

  get 'contact', to: 'pages#contact'
  
  get 'about', to: 'pages#about'

  resources :blogs do
    member do
      get :toggle_status
    end
  end  
  
  resources :portfolios, except: [:show]
  
  get 'portfolio/:id', to: 'portfolios#show'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
