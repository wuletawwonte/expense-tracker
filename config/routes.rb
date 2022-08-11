Rails.application.routes.draw do
  devise_for :users
  root "pages#index"

  resources :categories, only: [:index, :create, :show, :new]

end
