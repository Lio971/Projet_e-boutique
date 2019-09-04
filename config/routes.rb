Rails.application.routes.draw do
  get 'order/create'
  get 'order/destroy'
  get 'user/index'
  get 'user/show'
  get 'user/new'
  get 'user/edit'
  get 'user/create'
  get 'user/update'
  get 'user/destroy'
  devise_for :users
  resources :users
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
