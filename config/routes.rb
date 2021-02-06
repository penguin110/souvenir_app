Rails.application.routes.draw do
  #souvenirs 
  root 'souvenirs#index'
  get 'souvenirs/new', to:'souvenirs#new', as:'new'
  get 'souvenirs/show'
  post 'souvenirs/create', to:'souvenirs#create', as:'create'

  get 'sessions/new'

  get 'users/index'

  get 'users/new'

  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
