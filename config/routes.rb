Rails.application.routes.draw do
  resources :orders
  devise_for :users
  resources :listings do
  end

  get 'pages/about'
  get 'pages/contact'
  get 'seller' => "listings#seller"

  root to: "listings#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
