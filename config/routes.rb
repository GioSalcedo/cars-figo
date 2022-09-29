Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :vehicles, only: [:index, :show] do
    resources :bookings, only: [:index, :show, :create, :update, :edit, :destroy]
  end
end
