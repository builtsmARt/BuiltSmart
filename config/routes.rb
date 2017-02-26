Rails.application.routes.draw do
  get 'products/index'

  get 'products/search'

  get 'products/show'

  get 'reviews/_index'

  get 'reviews/_new'

  get 'reviews/_show'

  get 'reviews/edit'

  get 'boomarks/_delete'

  get 'boomarks/_new'

  get 'boomarks/index'

  get 'users/new'

  get 'users/show'

  get 'sessions/login'

  get 'user/new'

  get 'user/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
