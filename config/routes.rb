Rails.application.routes.draw do
  resources :clients
  resources :pet_histories
  resources :pets

  resources :pets, only: :show do
    resources :pet_histories, only: [:new, :create, :show, :edit, :index]
  end

  resources :clients, only: :show do
    resources :pets, only: [:new, :create, :show, :edit, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "clients#index"
end
