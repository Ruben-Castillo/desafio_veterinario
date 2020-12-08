Rails.application.routes.draw do
  resources :pet_histories
  resources :pets

  resources :pets, only: :show do
    resources :pet_histories, only: [:new, :create, :show, :edit, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pets#index"
end
