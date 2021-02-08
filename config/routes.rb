Rails.application.routes.draw do
  #souvenirs 
  root 'souvenirs#index'
  get 'souvenirs/new', to:'souvenirs#new', as:'new'
  get 'souvenirs/:id', to:'souvenirs#show', as:'show'
  post 'souvenirs/create', to:'souvenirs#create', as:'create'
  get 'souvenirs/:id/edit', to:'souvenirs#edit', as: 'sou_edit'
  patch 'souvenirs/:id/update', to:'souvenirs#update', as:'sou_update'
  get 'souvenirs/:id/destroy', to:'souvenirs#destroy', as:'sou_destroy'

  get 'sessions/new'

  get 'users/index'

  get 'users/new'

  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
