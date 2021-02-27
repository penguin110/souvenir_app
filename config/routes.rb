Rails.application.routes.draw do
  #souvenirs 
  root 'souvenirs#top'
  get 'souvenirs/:prefecture_id/index', to:'souvenirs#index', as:'sou_index'
  get 'souvenirs/new', to:'souvenirs#new', as:'new'
  get 'souvenirs/:id', to:'souvenirs#show', as:'show'
  post 'souvenirs/create', to:'souvenirs#create', as:'create'
  get 'souvenirs/:id/edit', to:'souvenirs#edit', as: 'sou_edit'
  patch 'souvenirs/:id/update', to:'souvenirs#update', as:'sou_update'
  delete 'souvenirs/:id/destroy', to:'souvenirs#destroy', as:'sou_destroy'

  get '/login', to:'sessions#new', as:'sessions'
  post '/login', to:'sessions#create', as:'login'
  delete '/logout', to:'sessions#destroy', as:'logout'

  #user
  get 'users/index', to:'users#index', as:'users_index'
  get 'users/new', to:'users#new', as:'users_new'
  get 'users/:id', to:'users#show', as:'users_show'
  post 'users/create', to: 'users#create', as:'users_create'
  get 'users/:id/edit', to:'users#edit', as:'users_edit'
  patch 'users/:id/update', to:'users#update', as:'users_update'
  delete 'users/:id/destroy', to:'users#destroy', as:'users_destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
