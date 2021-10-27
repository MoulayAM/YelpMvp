Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'restaurants/show'
  get 'restaurants/index'
  get 'restaurants/create'
  get 'restaurants/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:show, :create, :new, :index] do
  resources :reviews, only: [:new, :create]
 end
end
