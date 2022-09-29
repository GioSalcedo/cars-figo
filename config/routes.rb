Rails.application.routes.draw do
  get 'users/new'
  get 'users/edit'
  get 'users/login'
  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/create'
  get 'bookings/update'
  get 'bookings/edit'
  get 'bookings/destroy'
  get 'vehicles/index'
  get 'vehicles/show'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
