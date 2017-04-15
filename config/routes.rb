Rails.application.routes.draw do
  root "welcome#index"

    resources :users, only: [:new, :create, :show]
    resources :bookmarks, only: [:index, :create, :destroy, ]
    resources :products, only: [:index, :show] do
      resources :reviews
    end
    resources :sessions, only: [:new, :destroy]
    get '/products/search', to: 'products#search', as: 'search'
    get '/sessions/login', to: 'sessions#login', as: 'login'
    post '/sessions/login', to: 'sessions#create'
    get '/sessions/logout', to: 'sessions#destroy', as: "logout"

    get '/apis/bookmarks', to: 'apis#bookmarks'
    get '/apis/bookmarks/:id', to: 'apis#user_bookmarks'
    get '/apis/products', to: 'apis#products'
    get '/apis/products/:id', to: 'apis#user_products'
    get '/apis/users', to: 'apis#users'
    post '/apis/valid_login', to: 'apis#valid_login'


end
