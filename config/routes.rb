Rails.application.routes.draw do
  #souvenirs 
  root 'souvenirs#index'
  get 'souvenirs/new', to:'souvenirs#new', as:'new'
  get 'souvenirs/:id', to:'souvenirs#show', as:'show'
  post 'souvenirs/create', to:'souvenirs#create', as:'create'
  get 'souvenirs/:id/edit', to:'souvenirs#edit', as: 'sou_edit'
  patch 'souvenirs/:id/update', to:'souvenirs#update', as:'sou_update'
  delete 'souvenirs/:id/destroy', to:'souvenirs#destroy', as:'sou_destroy'

  get 'sessions/new'

  #user
  get 'users/index', to:'users#index', as:'users_index'
  get 'users/new', to:'users#new', as:'users_new'
  get 'users/:id', to:'users#show', as:'users_show'
  post 'users/create', to: 'users#create', as:'users_create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
