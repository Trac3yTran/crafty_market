Rails.application.routes.draw do
  devise_for :users
  resources :listings do
    resources :orders
  end
  


  get "pages/about"
  get "pages/contact"
  get 'seller' => "listings#seller"
  get 'sales' => "orders#sales"
  get 'purchases' => "orders#purchases"
  get '/search' => 'listings#index'
  root 'listings#index'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end