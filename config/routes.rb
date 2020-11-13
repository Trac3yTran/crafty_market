Rails.application.routes.draw do
  resources :listings
  get 'pages/about'
  get 'pages/contact'

  root 'listings#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
